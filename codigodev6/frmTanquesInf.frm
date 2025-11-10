VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form frmTanquesInf
  Caption = "Informe de volúmenes de tanques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5205
  ClientHeight = 3990
  StartUpPosition = 1 'CenterOwner
  Begin VB.TextBox txAno
    Left = 2190
    Top = 480
    Width = 1335
    Height = 375
    TabIndex = 1
    Alignment = 1 'Right Justify
    MaxLength = 4
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command2
    Caption = "&Cancelar"
    Left = 3555
    Top = 3285
    Width = 1634
    Height = 690
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command3
    Caption = "&Reset"
    Left = 1800
    Top = 3285
    Width = 1634
    Height = 690
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command1
    Caption = "&Aceptar"
    Left = 45
    Top = 3285
    Width = 1634
    Height = 690
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox Combo2
    Style = 2
    Left = 2190
    Top = 480
    Width = 1335
    Height = 345
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Left = 30
    Top = 480
    Width = 1815
    Height = 345
    TabIndex = 0
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSFlexGridLib.MSFlexGrid TablaTank
    Left = 15
    Top = 960
    Width = 5175
    Height = 2295
    TabIndex = 2
    OleObjectBlob = "frmTanquesInf.frx":0000
  End
  Begin VB.Label lbanio
    Caption = "Año"
    Left = 2190
    Top = 120
    Width = 1095
    Height = 375
    TabIndex = 8
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lbMes
    Caption = "Mes"
    Left = 30
    Top = 120
    Width = 975
    Height = 375
    TabIndex = 7
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmTanquesInf"

Private Type UDT_1_004714CC
  bStruc(20) As Byte ' String fields: 4
End Type


Private Sub Form_Load() '5E341C
  'Data Table: 425F9C
  loc_5E33BC: LitI2_Byte 0
  loc_5E33BE: CUI1I2
  loc_5E33C0: FLdPr Me
  loc_5E33C3: MemStUI1
  loc_5E33C7: from_stack_1v = Proc_1_11_6DCD04()
  loc_5E33CC: LitI2_Byte 0
  loc_5E33CE: FLdPr Me
  loc_5E33D1: MemStI2 global_64
  loc_5E33D4: FLdRfVar var_8C
  loc_5E33D7: FLdPrThis
  loc_5E33D8: VCallAd Control_ID_Combo1
  loc_5E33DB: FStAdFunc var_88
  loc_5E33DE: FLdPr var_88
  loc_5E33E1:  = Me.Text
  loc_5E33E6: ILdRf var_8C
  loc_5E33E9: FLdPr Me
  loc_5E33EC: MemStStrCopy
  loc_5E33F0: FFree1Str var_8C
  loc_5E33F3: FFree1Ad var_88
  loc_5E33F6: FLdRfVar var_8C
  loc_5E33F9: FLdPrThis
  loc_5E33FA: VCallAd Control_ID_txAno
  loc_5E33FD: FStAdFunc var_88
  loc_5E3400: FLdPr var_88
  loc_5E3403:  = Me.Text
  loc_5E3408: ILdRf var_8C
  loc_5E340B: FLdPr Me
  loc_5E340E: MemStStrCopy
  loc_5E3412: FFree1Str var_8C
  loc_5E3415: FFree1Ad var_88
  loc_5E3418: ExitProcHresult
End Sub

Private Sub Form_Activate() '5EDA40
  'Data Table: 425F9C
  loc_5ED9BC: LitI2_Byte &HFF
  loc_5ED9BE: PopTmpLdAd2 var_86
  loc_5ED9C1: ImpAdCallI2 Proc_6_5_623BB4()
  loc_5ED9C6: BranchF loc_5ED9DF
  loc_5ED9C9: ILdRf Me
  loc_5ED9CC: FStAdNoPop
  loc_5ED9D0: ImpAdLdRf MemVar_7520D4
  loc_5ED9D3: NewIfNullPr Global
  loc_5ED9D6: Global.Unload from_stack_1
  loc_5ED9DB: FFree1Ad var_8C
  loc_5ED9DE: ExitProcHresult
  loc_5ED9DF: FLdPr Me
  loc_5ED9E2: MemLdUI1 global_62
  loc_5ED9E6: CI2UI1
  loc_5ED9E8: LitI2_Byte 1
  loc_5ED9EA: EqI2
  loc_5ED9EB: BranchF loc_5EDA3E
  loc_5ED9EE: LitI2_Byte 0
  loc_5ED9F0: FLdPr Me
  loc_5ED9F3: Me.Visible = from_stack_1b
  loc_5ED9F8: LitVar_Missing var_10C
  loc_5ED9FB: LitVar_Missing var_EC
  loc_5ED9FE: LitVarStr var_BC, "Aviso"
  loc_5EDA03: FStVarCopyObj var_CC
  loc_5EDA06: FLdRfVar var_CC
  loc_5EDA09: LitI4 &H40
  loc_5EDA0E: LitVarStr var_9C, "No hay tanques con productos consignados"
  loc_5EDA13: FStVarCopyObj var_AC
  loc_5EDA16: FLdRfVar var_AC
  loc_5EDA19: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5EDA1E: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_5EDA29: ILdRf Me
  loc_5EDA2C: FStAdNoPop
  loc_5EDA30: ImpAdLdRf MemVar_7520D4
  loc_5EDA33: NewIfNullPr Global
  loc_5EDA36: Global.Unload from_stack_1
  loc_5EDA3B: FFree1Ad var_8C
  loc_5EDA3E: ExitProcHresult
End Sub

Private Sub TablaTank_DblClick(arg_C) '673D5C
  'Data Table: 425F9C
  loc_673968: FLdPrThis
  loc_673969: VCallAd Control_ID_TablaTank
  loc_67396C: FStAdFunc var_B8
  loc_67396F: FLdPr var_B8
  loc_673972: LateIdLdVar var_C8 DispID_10 0
  loc_673979: PopAd
  loc_67397B: FLdPrThis
  loc_67397C: VCallAd Control_ID_TablaTank
  loc_67397F: FStAdFunc var_CC
  loc_673982: FLdPr var_CC
  loc_673985: LateIdLdVar var_DC DispID_11 0
  loc_67398C: PopAd
  loc_67398E: FLdPrThis
  loc_67398F: VCallAd Control_ID_TablaTank
  loc_673992: FStAdFunc var_158
  loc_673995: FLdPr var_158
  loc_673998: LateIdLdVar var_168 DispID_10 0
  loc_67399F: PopAd
  loc_6739A1: FLdPrThis
  loc_6739A2: VCallAd Control_ID_TablaTank
  loc_6739A5: FStAdFunc var_16C
  loc_6739A8: FLdPr var_16C
  loc_6739AB: LateIdLdVar var_17C DispID_11 0
  loc_6739B2: PopAd
  loc_6739B4: FLdPrThis
  loc_6739B5: VCallAd Control_ID_TablaTank
  loc_6739B8: FStAdFunc var_90
  loc_6739BB: FLdPr var_90
  loc_6739BE: LateIdLdVar var_A0 DispID_11 0
  loc_6739C5: CI4Var
  loc_6739C7: LitI4 1
  loc_6739CC: EqI4
  loc_6739CD: CVarBoolI2 var_130
  loc_6739D1: FLdPrThis
  loc_6739D2: VCallAd Control_ID_TablaTank
  loc_6739D5: FStAdFunc var_A4
  loc_6739D8: FLdPr var_A4
  loc_6739DB: LateIdLdVar var_B4 DispID_11 0
  loc_6739E2: CI4Var
  loc_6739E4: LitI4 3
  loc_6739E9: EqI4
  loc_6739EA: CVarBoolI2 var_110
  loc_6739EE: FLdRfVar var_F0
  loc_6739F1: FLdRfVar var_DC
  loc_6739F4: CI4Var
  loc_6739F6: CI2I4
  loc_6739F7: PopTmpLdAd2 var_E0
  loc_6739FA: FLdRfVar var_C8
  loc_6739FD: CI4Var
  loc_6739FF: CI2I4
  loc_673A00: PopTmpLdAd2 var_DE
  loc_673A03: from_stack_3v = Proc_1_16_6023A0(from_stack_1v, from_stack_2v)
  loc_673A08: FLdRfVar var_F0
  loc_673A0B: NotVar var_100
  loc_673A0F: AndVar var_120
  loc_673A13: OrVar var_140
  loc_673A17: FLdPrThis
  loc_673A18: VCallAd Control_ID_TablaTank
  loc_673A1B: FStAdFunc var_144
  loc_673A1E: FLdPr var_144
  loc_673A21: LateIdLdVar var_154 DispID_11 0
  loc_673A28: CI4Var
  loc_673A2A: LitI4 4
  loc_673A2F: EqI4
  loc_673A30: CVarBoolI2 var_1B0
  loc_673A34: FLdRfVar var_190
  loc_673A37: FLdRfVar var_17C
  loc_673A3A: CI4Var
  loc_673A3C: CI2I4
  loc_673A3D: PopTmpLdAd2 var_180
  loc_673A40: FLdRfVar var_168
  loc_673A43: CI4Var
  loc_673A45: CI2I4
  loc_673A46: PopTmpLdAd2 var_17E
  loc_673A49: from_stack_3v = Proc_1_16_6023A0(from_stack_1v, from_stack_2v)
  loc_673A4E: FLdRfVar var_190
  loc_673A51: NotVar var_1A0
  loc_673A55: AndVar var_1C0
  loc_673A59: OrVar var_1D0
  loc_673A5D: CBoolVarNull
  loc_673A5F: FFreeAd var_90 = "": var_A4 = "": var_B8 = "": var_CC = "": var_144 = "": var_158 = ""
  loc_673A70: FFreeVar var_A0 = "": var_B4 = "": var_C8 = "": var_DC = "": var_F0 = "": var_110 = "": var_130 = "": var_154 = "": var_168 = "": var_17C = "": var_190 = ""
  loc_673A8B: BranchF loc_673A8F
  loc_673A8E: ExitProcHresult
  loc_673A8F: FLdPrThis
  loc_673A90: VCallAd Control_ID_TablaTank
  loc_673A93: FStAdFunc var_90
  loc_673A96: FLdPr var_90
  loc_673A99: LateIdLdVar var_A0 DispID_10 0
  loc_673AA0: CI4Var
  loc_673AA2: CVarI4
  loc_673AA6: PopAdLdVar
  loc_673AA7: FLdPrThis
  loc_673AA8: VCallAd Control_ID_TablaTank
  loc_673AAB: FStAdFunc var_A4
  loc_673AAE: FLdPr var_A4
  loc_673AB1: LateIdLdVar var_B4 DispID_11 0
  loc_673AB8: CI4Var
  loc_673ABA: CVarI4
  loc_673ABE: PopAdLdVar
  loc_673ABF: FLdPrThis
  loc_673AC0: VCallAd Control_ID_TablaTank
  loc_673AC3: FStAdFunc var_B8
  loc_673AC6: FLdPr var_B8
  loc_673AC9: LateIdCallLdVar
  loc_673AD3: CStrVarTmp
  loc_673AD4: FStStr var_88
  loc_673AD7: FFreeAd var_90 = "": var_A4 = ""
  loc_673AE0: FFreeVar var_A0 = "": var_B4 = ""
  loc_673AE9: ILdI2 arg_C
  loc_673AEC: FStI2 var_1D2
  loc_673AEF: FLdI2 var_1D2
  loc_673AF2: LitI2_Byte 8
  loc_673AF4: EqI2
  loc_673AF5: BranchF loc_673B27
  loc_673AF8: LitVarStr var_130, "0"
  loc_673AFD: LitI4 5
  loc_673B02: FLdRfVar var_88
  loc_673B05: CVarRef
  loc_673B0A: FLdRfVar var_A0
  loc_673B0D: ImpAdCallFPR4  = Left(, )
  loc_673B12: FLdRfVar var_A0
  loc_673B15: AddVar var_B4
  loc_673B19: CStrVarTmp
  loc_673B1A: FStStr var_88
  loc_673B1D: FFreeVar var_A0 = ""
  loc_673B24: Branch loc_673BE4
  loc_673B27: FLdI2 var_1D2
  loc_673B2A: LitI2_Byte &H30
  loc_673B2C: LitI2_Byte &H39
  loc_673B2E: BetweenI2
  loc_673B30: BranchF loc_673BE3
  loc_673B33: LitVarI2 var_A0, 1
  loc_673B38: LitI4 1
  loc_673B3D: FLdRfVar var_88
  loc_673B40: CVarRef
  loc_673B45: FLdRfVar var_B4
  loc_673B48: ImpAdCallFPR4  = Mid(, , )
  loc_673B4D: FLdRfVar var_B4
  loc_673B50: LitVarStr var_1B0, "0"
  loc_673B55: HardType
  loc_673B56: NeVarBool
  loc_673B58: FFreeVar var_A0 = ""
  loc_673B5F: BranchF loc_673B63
  loc_673B62: ExitProcHresult
  loc_673B63: ILdRf var_88
  loc_673B66: FnLenStr
  loc_673B67: CVarI4
  loc_673B6B: LitI4 2
  loc_673B70: FLdRfVar var_88
  loc_673B73: CVarRef
  loc_673B78: FLdRfVar var_B4
  loc_673B7B: ImpAdCallFPR4  = Mid(, , )
  loc_673B80: FLdRfVar var_B4
  loc_673B83: ILdI2 arg_C
  loc_673B86: CI4UI1
  loc_673B87: FLdRfVar var_C8
  loc_673B8A: ImpAdCallFPR4  = Chr()
  loc_673B8F: FLdRfVar var_C8
  loc_673B92: AddVar var_DC
  loc_673B96: CStrVarTmp
  loc_673B97: FStStr var_88
  loc_673B9A: FFreeVar var_A0 = "": var_B4 = "": var_C8 = ""
  loc_673BA5: LitI4 1
  loc_673BAA: LitI4 1
  loc_673BAF: LitVarStr var_130, "000000"
  loc_673BB4: FStVarCopyObj var_A0
  loc_673BB7: FLdRfVar var_A0
  loc_673BBA: FLdRfVar var_88
  loc_673BBD: CVarRef
  loc_673BC2: FLdRfVar var_B4
  loc_673BC5: ImpAdCallFPR4  = Format(, )
  loc_673BCA: FLdRfVar var_B4
  loc_673BCD: CStrVarTmp
  loc_673BCE: FStStr var_88
  loc_673BD1: FFreeVar var_A0 = ""
  loc_673BD8: LitI2_Byte &HFF
  loc_673BDA: FLdPr Me
  loc_673BDD: MemStI2 global_64
  loc_673BE0: Branch loc_673BE4
  loc_673BE3: ExitProcHresult
  loc_673BE4: FLdPrThis
  loc_673BE5: VCallAd Control_ID_TablaTank
  loc_673BE8: FStAdFunc var_90
  loc_673BEB: FLdPr var_90
  loc_673BEE: LateIdLdVar var_A0 DispID_10 0
  loc_673BF5: CI4Var
  loc_673BF7: CVarI4
  loc_673BFB: PopAdLdVar
  loc_673BFC: FLdPrThis
  loc_673BFD: VCallAd Control_ID_TablaTank
  loc_673C00: FStAdFunc var_A4
  loc_673C03: FLdPr var_A4
  loc_673C06: LateIdLdVar var_B4 DispID_11 0
  loc_673C0D: CI4Var
  loc_673C0F: CVarI4
  loc_673C13: PopAdLdVar
  loc_673C14: FLdRfVar var_88
  loc_673C17: CDargRef
  loc_673C1B: FLdPrThis
  loc_673C1C: VCallAd Control_ID_TablaTank
  loc_673C1F: FStAdFunc var_B8
  loc_673C22: FLdPr var_B8
  loc_673C25: LateIdCallSt
  loc_673C2D: FFreeAd var_90 = "": var_A4 = ""
  loc_673C36: FFreeVar var_A0 = ""
  loc_673C3D: FLdPrThis
  loc_673C3E: VCallAd Control_ID_TablaTank
  loc_673C41: FStAdFunc var_90
  loc_673C44: FLdPr var_90
  loc_673C47: LateIdLdVar var_A0 DispID_11 0
  loc_673C4E: CI4Var
  loc_673C50: LitI4 3
  loc_673C55: EqI4
  loc_673C56: FFree1Ad var_90
  loc_673C59: FFree1Var var_A0 = ""
  loc_673C5C: BranchF loc_673CCD
  loc_673C5F: ILdRf var_88
  loc_673C62: ImpAdCallFPR4 push Val()
  loc_673C67: CR8R8
  loc_673C68: LitI2_Byte 0
  loc_673C6A: CR8I2
  loc_673C6B: NeR8
  loc_673C6C: BranchF loc_673C9E
  loc_673C6F: FLdPrThis
  loc_673C70: VCallAd Control_ID_TablaTank
  loc_673C73: FStAdFunc var_90
  loc_673C76: FLdPr var_90
  loc_673C79: LateIdLdVar var_A0 DispID_10 0
  loc_673C80: PopAd
  loc_673C82: LitI2_Byte 4
  loc_673C84: PopTmpLdAd2 var_E0
  loc_673C87: FLdRfVar var_A0
  loc_673C8A: CI4Var
  loc_673C8C: CI2I4
  loc_673C8D: PopTmpLdAd2 var_DE
  loc_673C90: from_stack_3v = Proc_1_14_5F7544(from_stack_1v, from_stack_2v)
  loc_673C95: FFree1Ad var_90
  loc_673C98: FFree1Var var_A0 = ""
  loc_673C9B: Branch loc_673CCA
  loc_673C9E: FLdPrThis
  loc_673C9F: VCallAd Control_ID_TablaTank
  loc_673CA2: FStAdFunc var_90
  loc_673CA5: FLdPr var_90
  loc_673CA8: LateIdLdVar var_A0 DispID_10 0
  loc_673CAF: PopAd
  loc_673CB1: LitI2_Byte 4
  loc_673CB3: PopTmpLdAd2 var_E0
  loc_673CB6: FLdRfVar var_A0
  loc_673CB9: CI4Var
  loc_673CBB: CI2I4
  loc_673CBC: PopTmpLdAd2 var_DE
  loc_673CBF: from_stack_3v = Proc_1_15_5F8EDC(from_stack_1v, from_stack_2v)
  loc_673CC4: FFree1Ad var_90
  loc_673CC7: FFree1Var var_A0 = ""
  loc_673CCA: Branch loc_673D5A
  loc_673CCD: FLdPrThis
  loc_673CCE: VCallAd Control_ID_TablaTank
  loc_673CD1: FStAdFunc var_90
  loc_673CD4: FLdPr var_90
  loc_673CD7: LateIdLdVar var_A0 DispID_11 0
  loc_673CDE: CI4Var
  loc_673CE0: LitI4 4
  loc_673CE5: EqI4
  loc_673CE6: FFree1Ad var_90
  loc_673CE9: FFree1Var var_A0 = ""
  loc_673CEC: BranchF loc_673D5A
  loc_673CEF: ILdRf var_88
  loc_673CF2: ImpAdCallFPR4 push Val()
  loc_673CF7: CR8R8
  loc_673CF8: LitI2_Byte 0
  loc_673CFA: CR8I2
  loc_673CFB: NeR8
  loc_673CFC: BranchF loc_673D2E
  loc_673CFF: FLdPrThis
  loc_673D00: VCallAd Control_ID_TablaTank
  loc_673D03: FStAdFunc var_90
  loc_673D06: FLdPr var_90
  loc_673D09: LateIdLdVar var_A0 DispID_10 0
  loc_673D10: PopAd
  loc_673D12: LitI2_Byte 3
  loc_673D14: PopTmpLdAd2 var_E0
  loc_673D17: FLdRfVar var_A0
  loc_673D1A: CI4Var
  loc_673D1C: CI2I4
  loc_673D1D: PopTmpLdAd2 var_DE
  loc_673D20: from_stack_3v = Proc_1_14_5F7544(from_stack_1v, from_stack_2v)
  loc_673D25: FFree1Ad var_90
  loc_673D28: FFree1Var var_A0 = ""
  loc_673D2B: Branch loc_673D5A
  loc_673D2E: FLdPrThis
  loc_673D2F: VCallAd Control_ID_TablaTank
  loc_673D32: FStAdFunc var_90
  loc_673D35: FLdPr var_90
  loc_673D38: LateIdLdVar var_A0 DispID_10 0
  loc_673D3F: PopAd
  loc_673D41: LitI2_Byte 3
  loc_673D43: PopTmpLdAd2 var_E0
  loc_673D46: FLdRfVar var_A0
  loc_673D49: CI4Var
  loc_673D4B: CI2I4
  loc_673D4C: PopTmpLdAd2 var_DE
  loc_673D4F: from_stack_3v = Proc_1_15_5F8EDC(from_stack_1v, from_stack_2v)
  loc_673D54: FFree1Ad var_90
  loc_673D57: FFree1Var var_A0 = ""
  loc_673D5A: ExitProcHresult
End Sub

Private Sub TablaTank_KeyPress(KeyAscii As Integer) '616FD4
  'Data Table: 425F9C
  loc_616EB0: ILdI2 KeyAscii
  loc_616EB3: LitI2_Byte &H2E
  loc_616EB5: EqI2
  loc_616EB6: FLdPrThis
  loc_616EB7: VCallAd Control_ID_TablaTank
  loc_616EBA: FStAdFunc var_88
  loc_616EBD: FLdPr var_88
  loc_616EC0: LateIdLdVar var_98 DispID_11 0
  loc_616EC7: CI4Var
  loc_616EC9: LitI4 1
  loc_616ECE: EqI4
  loc_616ECF: NotI4
  loc_616ED0: AndI4
  loc_616ED1: FFree1Ad var_88
  loc_616ED4: FFree1Var var_98 = ""
  loc_616ED7: BranchF loc_616FD1
  loc_616EDA: FLdPrThis
  loc_616EDB: VCallAd Control_ID_TablaTank
  loc_616EDE: FStAdFunc var_88
  loc_616EE1: FLdPr var_88
  loc_616EE4: LateIdLdVar var_98 DispID_10 0
  loc_616EEB: CI4Var
  loc_616EED: CVarI4
  loc_616EF1: PopAdLdVar
  loc_616EF2: FLdPrThis
  loc_616EF3: VCallAd Control_ID_TablaTank
  loc_616EF6: FStAdFunc var_9C
  loc_616EF9: FLdPr var_9C
  loc_616EFC: LateIdLdVar var_AC DispID_11 0
  loc_616F03: CI4Var
  loc_616F05: CVarI4
  loc_616F09: PopAdLdVar
  loc_616F0A: LitVarStr var_DC, "000000"
  loc_616F0F: PopAdLdVar
  loc_616F10: FLdPrThis
  loc_616F11: VCallAd Control_ID_TablaTank
  loc_616F14: FStAdFunc var_E0
  loc_616F17: FLdPr var_E0
  loc_616F1A: LateIdCallSt
  loc_616F22: FFreeAd var_88 = "": var_9C = ""
  loc_616F2B: FFreeVar var_98 = ""
  loc_616F32: FLdPrThis
  loc_616F33: VCallAd Control_ID_TablaTank
  loc_616F36: FStAdFunc var_88
  loc_616F39: FLdPr var_88
  loc_616F3C: LateIdLdVar var_98 DispID_11 0
  loc_616F43: CI4Var
  loc_616F45: LitI4 3
  loc_616F4A: EqI4
  loc_616F4B: FFree1Ad var_88
  loc_616F4E: FFree1Var var_98 = ""
  loc_616F51: BranchF loc_616F83
  loc_616F54: FLdPrThis
  loc_616F55: VCallAd Control_ID_TablaTank
  loc_616F58: FStAdFunc var_88
  loc_616F5B: FLdPr var_88
  loc_616F5E: LateIdLdVar var_98 DispID_10 0
  loc_616F65: PopAd
  loc_616F67: LitI2_Byte 4
  loc_616F69: PopTmpLdAd2 var_E4
  loc_616F6C: FLdRfVar var_98
  loc_616F6F: CI4Var
  loc_616F71: CI2I4
  loc_616F72: PopTmpLdAd2 var_E2
  loc_616F75: from_stack_3v = Proc_1_15_5F8EDC(from_stack_1v, from_stack_2v)
  loc_616F7A: FFree1Ad var_88
  loc_616F7D: FFree1Var var_98 = ""
  loc_616F80: Branch loc_616FD1
  loc_616F83: FLdPrThis
  loc_616F84: VCallAd Control_ID_TablaTank
  loc_616F87: FStAdFunc var_88
  loc_616F8A: FLdPr var_88
  loc_616F8D: LateIdLdVar var_98 DispID_11 0
  loc_616F94: CI4Var
  loc_616F96: LitI4 4
  loc_616F9B: EqI4
  loc_616F9C: FFree1Ad var_88
  loc_616F9F: FFree1Var var_98 = ""
  loc_616FA2: BranchF loc_616FD1
  loc_616FA5: FLdPrThis
  loc_616FA6: VCallAd Control_ID_TablaTank
  loc_616FA9: FStAdFunc var_88
  loc_616FAC: FLdPr var_88
  loc_616FAF: LateIdLdVar var_98 DispID_10 0
  loc_616FB6: PopAd
  loc_616FB8: LitI2_Byte 3
  loc_616FBA: PopTmpLdAd2 var_E4
  loc_616FBD: FLdRfVar var_98
  loc_616FC0: CI4Var
  loc_616FC2: CI2I4
  loc_616FC3: PopTmpLdAd2 var_E2
  loc_616FC6: from_stack_3v = Proc_1_15_5F8EDC(from_stack_1v, from_stack_2v)
  loc_616FCB: FFree1Ad var_88
  loc_616FCE: FFree1Var var_98 = ""
  loc_616FD1: ExitProcHresult
End Sub

Private Sub Command2_Click() '6202AC
  'Data Table: 425F9C
  loc_620180: FLdPr Me
  loc_620183: MemLdI2 global_64
  loc_620186: CVarBoolI2 var_EC
  loc_62018A: FLdPr Me
  loc_62018D: MemLdRfVar from_stack_1.global_68
  loc_620190: CVarRef
  loc_620195: FLdRfVar var_A4
  loc_620198: ImpAdCallFPR4  = Trim()
  loc_62019D: FLdRfVar var_A4
  loc_6201A0: FLdRfVar var_AC
  loc_6201A3: FLdPrThis
  loc_6201A4: VCallAd Control_ID_Combo1
  loc_6201A7: FStAdFunc var_A8
  loc_6201AA: FLdPr var_A8
  loc_6201AD:  = Me.Text
  loc_6201B2: FLdZeroAd var_AC
  loc_6201B5: CVarStr var_BC
  loc_6201B8: FLdRfVar var_CC
  loc_6201BB: ImpAdCallFPR4  = Trim()
  loc_6201C0: FLdRfVar var_CC
  loc_6201C3: NeVar var_DC
  loc_6201C7: OrVar var_FC
  loc_6201CB: FLdPr Me
  loc_6201CE: MemLdRfVar from_stack_1.global_72
  loc_6201D1: CVarRef
  loc_6201D6: FLdRfVar var_11C
  loc_6201D9: ImpAdCallFPR4  = Trim()
  loc_6201DE: FLdRfVar var_11C
  loc_6201E1: FLdRfVar var_124
  loc_6201E4: FLdPrThis
  loc_6201E5: VCallAd Control_ID_txAno
  loc_6201E8: FStAdFunc var_120
  loc_6201EB: FLdPr var_120
  loc_6201EE:  = Me.Text
  loc_6201F3: FLdZeroAd var_124
  loc_6201F6: CVarStr var_134
  loc_6201F9: FLdRfVar var_144
  loc_6201FC: ImpAdCallFPR4  = Trim()
  loc_620201: FLdRfVar var_144
  loc_620204: NeVar var_154
  loc_620208: OrVar var_164
  loc_62020C: CBoolVarNull
  loc_62020E: FFreeAd var_A8 = ""
  loc_620215: FFreeVar var_BC = "": var_A4 = "": var_CC = "": var_EC = "": var_134 = "": var_11C = ""
  loc_620226: BranchF loc_620296
  loc_620229: LitI4 &HD
  loc_62022E: FLdRfVar var_A4
  loc_620231: ImpAdCallFPR4  = Chr()
  loc_620236: LitVar_Missing var_11C
  loc_620239: LitVar_Missing var_FC
  loc_62023C: LitVarStr var_10C, "Informe de tanques"
  loc_620241: FStVarCopyObj var_DC
  loc_620244: FLdRfVar var_DC
  loc_620247: LitI4 &H41
  loc_62024C: LitVarStr var_94, "Se perderan los valores ingresados"
  loc_620251: FLdRfVar var_A4
  loc_620254: ConcatVar var_BC
  loc_620258: LitVarStr var_EC, "¿Esta de acuerdo?"
  loc_62025D: ConcatVar var_CC
  loc_620261: ImpAdCallI2 MsgBox(, , , , )
  loc_620266: LitI4 1
  loc_62026B: EqI4
  loc_62026C: FFreeVar var_A4 = "": var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_62027B: BranchF loc_620293
  loc_62027E: ILdRf Me
  loc_620281: FStAdNoPop
  loc_620285: ImpAdLdRf MemVar_7520D4
  loc_620288: NewIfNullPr Global
  loc_62028B: Global.Unload from_stack_1
  loc_620290: FFree1Ad var_A8
  loc_620293: Branch loc_6202AB
  loc_620296: ILdRf Me
  loc_620299: FStAdNoPop
  loc_62029D: ImpAdLdRf MemVar_7520D4
  loc_6202A0: NewIfNullPr Global
  loc_6202A3: Global.Unload from_stack_1
  loc_6202A8: FFree1Ad var_A8
  loc_6202AB: ExitProcHresult
End Sub

Private Sub Command1_Click() '6C0D0C
  'Data Table: 425F9C
  loc_6C04BC: FLdRfVar var_96
  loc_6C04BF: FLdPrThis
  loc_6C04C0: VCallAd Control_ID_Combo1
  loc_6C04C3: FStAdFunc var_94
  loc_6C04C6: FLdPr var_94
  loc_6C04C9:  = Me.ListIndex
  loc_6C04CE: FLdI2 var_96
  loc_6C04D1: LitI2_Byte &HFF
  loc_6C04D3: EqI2
  loc_6C04D4: FFree1Ad var_94
  loc_6C04D7: BranchF loc_6C0519
  loc_6C04DA: LitVar_Missing var_118
  loc_6C04DD: LitVar_Missing var_F8
  loc_6C04E0: LitVar_Missing var_D8
  loc_6C04E3: LitI4 &H10
  loc_6C04E8: LitVarStr var_A8, "Debe elegir un mes de la lista."
  loc_6C04ED: FStVarCopyObj var_B8
  loc_6C04F0: FLdRfVar var_B8
  loc_6C04F3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C04F8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6C0503: FLdPrThis
  loc_6C0504: VCallAd Control_ID_Combo1
  loc_6C0507: FStAdFunc var_94
  loc_6C050A: FLdPr var_94
  loc_6C050D: Me.SetFocus
  loc_6C0512: FFree1Ad var_94
  loc_6C0515: ExitProcHresult
  loc_6C0516: Branch loc_6C0634
  loc_6C0519: FLdRfVar var_11C
  loc_6C051C: FLdPrThis
  loc_6C051D: VCallAd Control_ID_txAno
  loc_6C0520: FStAdFunc var_94
  loc_6C0523: FLdPr var_94
  loc_6C0526:  = Me.Text
  loc_6C052B: FLdZeroAd var_11C
  loc_6C052E: CVarStr var_B8
  loc_6C0531: ImpAdCallI2 IsNumeric()
  loc_6C0536: NotI4
  loc_6C0537: FLdRfVar var_124
  loc_6C053A: FLdPrThis
  loc_6C053B: VCallAd Control_ID_txAno
  loc_6C053E: FStAdFunc var_120
  loc_6C0541: FLdPr var_120
  loc_6C0544:  = Me.Text
  loc_6C0549: ILdRf var_124
  loc_6C054C: ImpAdCallFPR4 push Val()
  loc_6C0551: CR8R8
  loc_6C0552: LitI2 2000
  loc_6C0555: CR8I2
  loc_6C0556: LtR8
  loc_6C0557: OrI4
  loc_6C0558: FLdRfVar var_12C
  loc_6C055B: FLdPrThis
  loc_6C055C: VCallAd Control_ID_txAno
  loc_6C055F: FStAdFunc var_128
  loc_6C0562: FLdPr var_128
  loc_6C0565:  = Me.Text
  loc_6C056A: ILdRf var_12C
  loc_6C056D: ImpAdCallFPR4 push Val()
  loc_6C0572: CR8R8
  loc_6C0573: LitI2 2075
  loc_6C0576: CR8I2
  loc_6C0577: GtR4
  loc_6C0578: OrI4
  loc_6C0579: FFreeStr var_124 = ""
  loc_6C0580: FFreeAd var_94 = "": var_120 = ""
  loc_6C0589: FFree1Var var_B8 = ""
  loc_6C058C: BranchF loc_6C0634
  loc_6C058F: LitI4 &HD
  loc_6C0594: FLdRfVar var_B8
  loc_6C0597: ImpAdCallFPR4  = Chr()
  loc_6C059C: LitVar_Missing var_15C
  loc_6C059F: LitVar_Missing var_13C
  loc_6C05A2: LitVarStr var_E8, "Aviso"
  loc_6C05A7: FStVarCopyObj var_118
  loc_6C05AA: FLdRfVar var_118
  loc_6C05AD: LitI4 &H10
  loc_6C05B2: LitVarStr var_A8, "Debe ingresarse un año valido."
  loc_6C05B7: FLdRfVar var_B8
  loc_6C05BA: AddVar var_D8
  loc_6C05BE: LitVarStr var_C8, "Rango: 2000 a 2075"
  loc_6C05C3: AddVar var_F8
  loc_6C05C7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C05CC: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_13C = ""
  loc_6C05DB: FLdPrThis
  loc_6C05DC: VCallAd Control_ID_txAno
  loc_6C05DF: FStAdFunc var_94
  loc_6C05E2: FLdPr var_94
  loc_6C05E5: Me.SetFocus
  loc_6C05EA: FFree1Ad var_94
  loc_6C05ED: LitI4 0
  loc_6C05F2: FLdPrThis
  loc_6C05F3: VCallAd Control_ID_txAno
  loc_6C05F6: FStAdFunc var_94
  loc_6C05F9: FLdPr var_94
  loc_6C05FC: Me.SelStart = from_stack_1
  loc_6C0601: FFree1Ad var_94
  loc_6C0604: FLdRfVar var_11C
  loc_6C0607: FLdPrThis
  loc_6C0608: VCallAd Control_ID_txAno
  loc_6C060B: FStAdFunc var_94
  loc_6C060E: FLdPr var_94
  loc_6C0611:  = Me.Text
  loc_6C0616: ILdRf var_11C
  loc_6C0619: FnLenStr
  loc_6C061A: FLdPrThis
  loc_6C061B: VCallAd Control_ID_txAno
  loc_6C061E: FStAdFunc var_120
  loc_6C0621: FLdPr var_120
  loc_6C0624: Me.SelLength = from_stack_1
  loc_6C0629: FFree1Str var_11C
  loc_6C062C: FFreeAd var_94 = ""
  loc_6C0633: ExitProcHresult
  loc_6C0634: LitI2_Byte 1
  loc_6C0636: FLdRfVar var_86
  loc_6C0639: FLdPrThis
  loc_6C063A: VCallAd Control_ID_TablaTank
  loc_6C063D: FStAdFunc var_94
  loc_6C0640: FLdPr var_94
  loc_6C0643: LateIdLdVar var_B8 DispID_4 0
  loc_6C064A: CI4Var
  loc_6C064C: LitI4 1
  loc_6C0651: SubI4
  loc_6C0652: CI2I4
  loc_6C0653: FFree1Ad var_94
  loc_6C0656: FFree1Var var_B8 = ""
  loc_6C0659: ForI2 var_160
  loc_6C065F: FLdI2 var_86
  loc_6C0662: CI4UI1
  loc_6C0663: CVarI4
  loc_6C0667: PopAdLdVar
  loc_6C0668: LitVarI4
  loc_6C0670: PopAdLdVar
  loc_6C0671: FLdPrThis
  loc_6C0672: VCallAd Control_ID_TablaTank
  loc_6C0675: FStAdFunc var_94
  loc_6C0678: FLdPr var_94
  loc_6C067B: LateIdCallLdVar
  loc_6C0685: CStrVarTmp
  loc_6C0686: FStStrNoPop var_11C
  loc_6C0689: ImpAdCallFPR4 push Val()
  loc_6C068E: CR8R8
  loc_6C068F: LitI2_Byte 0
  loc_6C0691: CR8I2
  loc_6C0692: NeR8
  loc_6C0693: FLdI2 var_86
  loc_6C0696: CI4UI1
  loc_6C0697: CVarI4
  loc_6C069B: PopAdLdVar
  loc_6C069C: LitVarI4
  loc_6C06A4: PopAdLdVar
  loc_6C06A5: FLdPrThis
  loc_6C06A6: VCallAd Control_ID_TablaTank
  loc_6C06A9: FStAdFunc var_120
  loc_6C06AC: FLdPr var_120
  loc_6C06AF: LateIdCallLdVar
  loc_6C06B9: CStrVarTmp
  loc_6C06BA: FStStrNoPop var_124
  loc_6C06BD: ImpAdCallFPR4 push Val()
  loc_6C06C2: CR8R8
  loc_6C06C3: LitI2_Byte 0
  loc_6C06C5: CR8I2
  loc_6C06C6: NeR8
  loc_6C06C7: OrI4
  loc_6C06C8: FLdI2 var_86
  loc_6C06CB: CI4UI1
  loc_6C06CC: CVarI4
  loc_6C06D0: PopAdLdVar
  loc_6C06D1: LitVarI4
  loc_6C06D9: PopAdLdVar
  loc_6C06DA: FLdPrThis
  loc_6C06DB: VCallAd Control_ID_TablaTank
  loc_6C06DE: FStAdFunc var_128
  loc_6C06E1: FLdPr var_128
  loc_6C06E4: LateIdCallLdVar
  loc_6C06EE: CStrVarTmp
  loc_6C06EF: FStStrNoPop var_12C
  loc_6C06F2: ImpAdCallFPR4 push Val()
  loc_6C06F7: CR8R8
  loc_6C06F8: LitI2_Byte 0
  loc_6C06FA: CR8I2
  loc_6C06FB: NeR8
  loc_6C06FC: OrI4
  loc_6C06FD: FFreeStr var_11C = "": var_124 = ""
  loc_6C0706: FFreeAd var_94 = "": var_120 = ""
  loc_6C070F: FFreeVar var_B8 = "": var_D8 = ""
  loc_6C0718: BranchF loc_6C071E
  loc_6C071B: Branch loc_6C0726
  loc_6C071E: FLdRfVar var_86
  loc_6C0721: NextI2 var_160, loc_6C065F
  loc_6C0726: FLdPrThis
  loc_6C0727: VCallAd Control_ID_TablaTank
  loc_6C072A: FStAdFunc var_94
  loc_6C072D: FLdPr var_94
  loc_6C0730: LateIdLdVar var_B8 DispID_4 0
  loc_6C0737: CI4Var
  loc_6C0739: FLdI2 var_86
  loc_6C073C: CI4UI1
  loc_6C073D: LeI4
  loc_6C073E: FFree1Ad var_94
  loc_6C0741: FFree1Var var_B8 = ""
  loc_6C0744: BranchF loc_6C0779
  loc_6C0747: LitVar_Missing var_118
  loc_6C074A: LitVar_Missing var_F8
  loc_6C074D: LitVarStr var_C8, "Aviso"
  loc_6C0752: FStVarCopyObj var_D8
  loc_6C0755: FLdRfVar var_D8
  loc_6C0758: LitI4 &H10
  loc_6C075D: LitVarStr var_A8, "Debe ingresarse al menos un volumen distinto de cero para que la informacion sea grabada."
  loc_6C0762: FStVarCopyObj var_B8
  loc_6C0765: FLdRfVar var_B8
  loc_6C0768: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C076D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6C0778: ExitProcHresult
  loc_6C0779: FLdRfVar var_96
  loc_6C077C: from_stack_1v = Proc_1_8_61C3A0()
  loc_6C0781: FLdI2 var_96
  loc_6C0784: NotI4
  loc_6C0785: BranchF loc_6C0802
  loc_6C0788: FLdPrThis
  loc_6C0789: VCallAd Control_ID_TablaTank
  loc_6C078C: FStAdFunc var_94
  loc_6C078F: FLdPr var_94
  loc_6C0792: LateIdLdVar var_B8 DispID_10 0
  loc_6C0799: CI4Var
  loc_6C079B: CVarI4
  loc_6C079F: PopAdLdVar
  loc_6C07A0: LitVarI4
  loc_6C07A8: PopAdLdVar
  loc_6C07A9: FLdPrThis
  loc_6C07AA: VCallAd Control_ID_TablaTank
  loc_6C07AD: FStAdFunc var_120
  loc_6C07B0: FLdPr var_120
  loc_6C07B3: LateIdCallLdVar
  loc_6C07BD: PopAd
  loc_6C07BF: LitVar_Missing var_15C
  loc_6C07C2: LitVar_Missing var_13C
  loc_6C07C5: LitVarStr var_E8, "Aviso"
  loc_6C07CA: FStVarCopyObj var_118
  loc_6C07CD: FLdRfVar var_118
  loc_6C07D0: LitI4 &H10
  loc_6C07D5: LitStr "Debe ingresarse al menos un volumen distinto de cero para el tanque "
  loc_6C07D8: FLdRfVar var_D8
  loc_6C07DB: CStrVarTmp
  loc_6C07DC: FStStrNoPop var_11C
  loc_6C07DF: ConcatStr
  loc_6C07E0: CVarStr var_F8
  loc_6C07E3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C07E8: FFree1Str var_11C
  loc_6C07EB: FFreeAd var_94 = ""
  loc_6C07F2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_13C = ""
  loc_6C0801: ExitProcHresult
  loc_6C0802: FLdRfVar var_11C
  loc_6C0805: FLdPrThis
  loc_6C0806: VCallAd Control_ID_txAno
  loc_6C0809: FStAdFunc var_94
  loc_6C080C: FLdPr var_94
  loc_6C080F:  = Me.Text
  loc_6C0814: ILdRf var_11C
  loc_6C0817: ImpAdCallFPR4 push Val()
  loc_6C081C: CVarR8
  loc_6C0820: HardType
  loc_6C0821: FLdRfVar var_B8
  loc_6C0824: ImpAdCallFPR4  = Now
  loc_6C0829: FLdRfVar var_B8
  loc_6C082C: FLdRfVar var_D8
  loc_6C082F: ImpAdCallFPR4  = Year()
  loc_6C0834: FLdRfVar var_D8
  loc_6C0837: GtVarBool
  loc_6C0839: FFree1Str var_11C
  loc_6C083C: FFree1Ad var_94
  loc_6C083F: FFreeVar var_B8 = ""
  loc_6C0846: BranchF loc_6C087E
  loc_6C0849: LitVar_Missing var_118
  loc_6C084C: LitVar_Missing var_F8
  loc_6C084F: LitVarStr var_C8, "Aviso"
  loc_6C0854: FStVarCopyObj var_D8
  loc_6C0857: FLdRfVar var_D8
  loc_6C085A: LitI4 &H40
  loc_6C085F: LitVarStr var_A8, "No se puede ingresar un año mayor al actual"
  loc_6C0864: FStVarCopyObj var_B8
  loc_6C0867: FLdRfVar var_B8
  loc_6C086A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C086F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6C087A: ExitProcHresult
  loc_6C087B: Branch loc_6C0906
  loc_6C087E: FLdRfVar var_11C
  loc_6C0881: FLdPrThis
  loc_6C0882: VCallAd Control_ID_txAno
  loc_6C0885: FStAdFunc var_94
  loc_6C0888: FLdPr var_94
  loc_6C088B:  = Me.Text
  loc_6C0890: ILdRf var_11C
  loc_6C0893: ImpAdCallFPR4 push Val()
  loc_6C0898: CVarR8
  loc_6C089C: HardType
  loc_6C089D: FLdRfVar var_B8
  loc_6C08A0: ImpAdCallFPR4  = Now
  loc_6C08A5: FLdRfVar var_B8
  loc_6C08A8: FLdRfVar var_D8
  loc_6C08AB: ImpAdCallFPR4  = Year()
  loc_6C08B0: FLdRfVar var_D8
  loc_6C08B3: EqVarBool
  loc_6C08B5: FFree1Str var_11C
  loc_6C08B8: FFree1Ad var_94
  loc_6C08BB: FFreeVar var_B8 = ""
  loc_6C08C2: BranchF loc_6C0906
  loc_6C08C5: FLdRfVar var_96
  loc_6C08C8: from_stack_1v = Proc_1_9_5E2A94()
  loc_6C08CD: FLdI2 var_96
  loc_6C08D0: NotI4
  loc_6C08D1: BranchF loc_6C0906
  loc_6C08D4: LitVar_Missing var_118
  loc_6C08D7: LitVar_Missing var_F8
  loc_6C08DA: LitVarStr var_C8, "Aviso"
  loc_6C08DF: FStVarCopyObj var_D8
  loc_6C08E2: FLdRfVar var_D8
  loc_6C08E5: LitI4 &H40
  loc_6C08EA: LitVarStr var_A8, "No se puede ingresar un mes mayor al actual"
  loc_6C08EF: FStVarCopyObj var_B8
  loc_6C08F2: FLdRfVar var_B8
  loc_6C08F5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C08FA: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6C0905: ExitProcHresult
  loc_6C0906: LitI2_Byte 1
  loc_6C0908: FLdRfVar var_86
  loc_6C090B: FLdPrThis
  loc_6C090C: VCallAd Control_ID_TablaTank
  loc_6C090F: FStAdFunc var_94
  loc_6C0912: FLdPr var_94
  loc_6C0915: LateIdLdVar var_B8 DispID_4 0
  loc_6C091C: CI4Var
  loc_6C091E: LitI4 1
  loc_6C0923: SubI4
  loc_6C0924: CI2I4
  loc_6C0925: FFree1Ad var_94
  loc_6C0928: FFree1Var var_B8 = ""
  loc_6C092B: ForI2 var_174
  loc_6C0931: FLdI2 var_86
  loc_6C0934: CI4UI1
  loc_6C0935: CVarI4
  loc_6C0939: PopAdLdVar
  loc_6C093A: LitVarI4
  loc_6C0942: PopAdLdVar
  loc_6C0943: FLdPrThis
  loc_6C0944: VCallAd Control_ID_TablaTank
  loc_6C0947: FStAdFunc var_94
  loc_6C094A: FLdPr var_94
  loc_6C094D: LateIdCallLdVar
  loc_6C0957: PopAd
  loc_6C0959: FLdI2 var_86
  loc_6C095C: CI4UI1
  loc_6C095D: CVarI4
  loc_6C0961: PopAdLdVar
  loc_6C0962: LitVarI4
  loc_6C096A: PopAdLdVar
  loc_6C096B: FLdPrThis
  loc_6C096C: VCallAd Control_ID_TablaTank
  loc_6C096F: FStAdFunc var_120
  loc_6C0972: FLdPr var_120
  loc_6C0975: LateIdCallLdVar
  loc_6C097F: PopAd
  loc_6C0981: FLdRfVar var_17A
  loc_6C0984: FLdRfVar var_D8
  loc_6C0987: CStrVarTmp
  loc_6C0988: FStStrNoPop var_124
  loc_6C098B: CI4Str
  loc_6C098C: PopTmpLdAdStr var_178
  loc_6C098F: FLdRfVar var_B8
  loc_6C0992: CStrVarTmp
  loc_6C0993: FStStrNoPop var_11C
  loc_6C0996: CUI1Str
  loc_6C0998: PopTmpLdAd1
  loc_6C099C: from_stack_3v = Proc_1_18_5FB4D4(from_stack_1v, from_stack_2v)
  loc_6C09A1: FLdI2 var_17A
  loc_6C09A4: FFreeStr var_11C = ""
  loc_6C09AB: FFreeAd var_94 = ""
  loc_6C09B2: FFreeVar var_B8 = ""
  loc_6C09B9: BranchF loc_6C09C0
  loc_6C09BC: ExitProcHresult
  loc_6C09BD: Branch loc_6C0ADB
  loc_6C09C0: FLdI2 var_86
  loc_6C09C3: CI4UI1
  loc_6C09C4: CVarI4
  loc_6C09C8: PopAdLdVar
  loc_6C09C9: LitVarI4
  loc_6C09D1: PopAdLdVar
  loc_6C09D2: FLdPrThis
  loc_6C09D3: VCallAd Control_ID_TablaTank
  loc_6C09D6: FStAdFunc var_94
  loc_6C09D9: FLdPr var_94
  loc_6C09DC: LateIdCallLdVar
  loc_6C09E6: PopAd
  loc_6C09E8: FLdI2 var_86
  loc_6C09EB: CI4UI1
  loc_6C09EC: CVarI4
  loc_6C09F0: PopAdLdVar
  loc_6C09F1: LitVarI4
  loc_6C09F9: PopAdLdVar
  loc_6C09FA: FLdPrThis
  loc_6C09FB: VCallAd Control_ID_TablaTank
  loc_6C09FE: FStAdFunc var_120
  loc_6C0A01: FLdPr var_120
  loc_6C0A04: LateIdCallLdVar
  loc_6C0A0E: PopAd
  loc_6C0A10: FLdRfVar var_17A
  loc_6C0A13: FLdRfVar var_D8
  loc_6C0A16: CStrVarTmp
  loc_6C0A17: FStStrNoPop var_124
  loc_6C0A1A: CI4Str
  loc_6C0A1B: PopTmpLdAdStr var_178
  loc_6C0A1E: FLdRfVar var_B8
  loc_6C0A21: CStrVarTmp
  loc_6C0A22: FStStrNoPop var_11C
  loc_6C0A25: CUI1Str
  loc_6C0A27: PopTmpLdAd1
  loc_6C0A2B: from_stack_3v = Proc_1_18_5FB4D4(from_stack_1v, from_stack_2v)
  loc_6C0A30: FLdI2 var_17A
  loc_6C0A33: FFreeStr var_11C = ""
  loc_6C0A3A: FFreeAd var_94 = ""
  loc_6C0A41: FFreeVar var_B8 = ""
  loc_6C0A48: BranchF loc_6C0A4F
  loc_6C0A4B: ExitProcHresult
  loc_6C0A4C: Branch loc_6C0ADB
  loc_6C0A4F: FLdI2 var_86
  loc_6C0A52: CI4UI1
  loc_6C0A53: CVarI4
  loc_6C0A57: PopAdLdVar
  loc_6C0A58: LitVarI4
  loc_6C0A60: PopAdLdVar
  loc_6C0A61: FLdPrThis
  loc_6C0A62: VCallAd Control_ID_TablaTank
  loc_6C0A65: FStAdFunc var_94
  loc_6C0A68: FLdPr var_94
  loc_6C0A6B: LateIdCallLdVar
  loc_6C0A75: PopAd
  loc_6C0A77: FLdI2 var_86
  loc_6C0A7A: CI4UI1
  loc_6C0A7B: CVarI4
  loc_6C0A7F: PopAdLdVar
  loc_6C0A80: LitVarI4
  loc_6C0A88: PopAdLdVar
  loc_6C0A89: FLdPrThis
  loc_6C0A8A: VCallAd Control_ID_TablaTank
  loc_6C0A8D: FStAdFunc var_120
  loc_6C0A90: FLdPr var_120
  loc_6C0A93: LateIdCallLdVar
  loc_6C0A9D: PopAd
  loc_6C0A9F: FLdRfVar var_17A
  loc_6C0AA2: FLdRfVar var_D8
  loc_6C0AA5: CStrVarTmp
  loc_6C0AA6: FStStrNoPop var_124
  loc_6C0AA9: CI4Str
  loc_6C0AAA: PopTmpLdAdStr var_178
  loc_6C0AAD: FLdRfVar var_B8
  loc_6C0AB0: CStrVarTmp
  loc_6C0AB1: FStStrNoPop var_11C
  loc_6C0AB4: CUI1Str
  loc_6C0AB6: PopTmpLdAd1
  loc_6C0ABA: from_stack_3v = Proc_1_18_5FB4D4(from_stack_1v, from_stack_2v)
  loc_6C0ABF: FLdI2 var_17A
  loc_6C0AC2: FFreeStr var_11C = ""
  loc_6C0AC9: FFreeAd var_94 = ""
  loc_6C0AD0: FFreeVar var_B8 = ""
  loc_6C0AD7: BranchF loc_6C0ADB
  loc_6C0ADA: ExitProcHresult
  loc_6C0ADB: FLdRfVar var_86
  loc_6C0ADE: NextI2 var_174, loc_6C0931
  loc_6C0AE3: FLdRfVar var_B8
  loc_6C0AE6: FLdRfVar var_90
  loc_6C0AE9: FLdRfVar var_94
  loc_6C0AEC: ImpAdLdRf MemVar_74C760
  loc_6C0AEF: NewIfNullPr Formx
  loc_6C0AF2: from_stack_1v = Formx.global_4589716Get()
  loc_6C0AF7: FLdPr var_94
  loc_6C0AFA: Formx.WhatsThisMode
  loc_6C0AFF: FFree1Ad var_94
  loc_6C0B02: FFree1Var var_B8 = ""
  loc_6C0B05: FLdRfVar var_96
  loc_6C0B08: FLdPrThis
  loc_6C0B09: VCallAd Control_ID_Combo1
  loc_6C0B0C: FStAdFunc var_120
  loc_6C0B0F: FLdPr var_120
  loc_6C0B12:  = Me.ListIndex
  loc_6C0B17: FLdRfVar var_11C
  loc_6C0B1A: FLdPrThis
  loc_6C0B1B: VCallAd Control_ID_txAno
  loc_6C0B1E: FStAdFunc var_94
  loc_6C0B21: FLdPr var_94
  loc_6C0B24:  = Me.Text
  loc_6C0B29: FLdZeroAd var_11C
  loc_6C0B2C: CVarStr var_B8
  loc_6C0B2F: FLdRfVar var_D8
  loc_6C0B32: ImpAdCallFPR4  = Trim()
  loc_6C0B37: FLdRfVar var_D8
  loc_6C0B3A: LitI4 1
  loc_6C0B3F: LitI4 1
  loc_6C0B44: LitVarStr var_C8, "00"
  loc_6C0B49: FStVarCopyObj var_118
  loc_6C0B4C: FLdRfVar var_118
  loc_6C0B4F: FLdI2 var_96
  loc_6C0B52: LitI2_Byte 1
  loc_6C0B54: AddI2
  loc_6C0B55: CVarI2 var_F8
  loc_6C0B58: FLdRfVar var_13C
  loc_6C0B5B: ImpAdCallFPR4  = Format(, )
  loc_6C0B60: FLdRfVar var_13C
  loc_6C0B63: ConcatVar var_15C
  loc_6C0B67: CStrVarTmp
  loc_6C0B68: FStStr var_8C
  loc_6C0B6B: FFreeAd var_94 = ""
  loc_6C0B72: FFreeVar var_B8 = "": var_F8 = "": var_118 = "": var_D8 = "": var_13C = ""
  loc_6C0B81: LitI2_Byte 2
  loc_6C0B83: PopTmpLdAd2 var_96
  loc_6C0B86: FLdRfVar var_90
  loc_6C0B89: FLdRfVar var_8C
  loc_6C0B8C: from_stack_4v = Proc_1_10_61CC9C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C0B91: LitI2_Byte 3
  loc_6C0B93: PopTmpLdAd2 var_96
  loc_6C0B96: FLdRfVar var_90
  loc_6C0B99: FLdRfVar var_8C
  loc_6C0B9C: from_stack_4v = Proc_1_10_61CC9C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C0BA1: LitI2_Byte 4
  loc_6C0BA3: PopTmpLdAd2 var_96
  loc_6C0BA6: FLdRfVar var_90
  loc_6C0BA9: FLdRfVar var_8C
  loc_6C0BAC: from_stack_4v = Proc_1_10_61CC9C(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6C0BB1: FLdRfVar var_96
  loc_6C0BB4: FLdRfVar var_8C
  loc_6C0BB7: FLdRfVar var_94
  loc_6C0BBA: ImpAdLdRf MemVar_74C760
  loc_6C0BBD: NewIfNullPr Formx
  loc_6C0BC0: from_stack_1v = Formx.global_4589716Get()
  loc_6C0BC5: FLdPr var_94
  loc_6C0BC8: Formx.FontName = from_stack_1
  loc_6C0BCD: FLdI2 var_96
  loc_6C0BD0: NotI4
  loc_6C0BD1: FFree1Ad var_94
  loc_6C0BD4: BranchF loc_6C0C03
  loc_6C0BD7: FLdRfVar var_B8
  loc_6C0BDA: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C0BDF: FLdRfVar var_B8
  loc_6C0BE2: CBoolVarNull
  loc_6C0BE4: FFree1Var var_B8 = ""
  loc_6C0BE7: BranchF loc_6C0C00
  loc_6C0BEA: ILdRf Me
  loc_6C0BED: FStAdNoPop
  loc_6C0BF1: ImpAdLdRf MemVar_7520D4
  loc_6C0BF4: NewIfNullPr Global
  loc_6C0BF7: Global.Unload from_stack_1
  loc_6C0BFC: FFree1Ad var_94
  loc_6C0BFF: ExitProcHresult
  loc_6C0C00: Branch loc_6C0BB1
  loc_6C0C03: LitI4 &HD
  loc_6C0C08: FLdRfVar var_B8
  loc_6C0C0B: ImpAdCallFPR4  = Chr()
  loc_6C0C10: LitI4 &HD
  loc_6C0C15: FLdRfVar var_F8
  loc_6C0C18: ImpAdCallFPR4  = Chr()
  loc_6C0C1D: FLdRfVar var_11C
  loc_6C0C20: FLdPrThis
  loc_6C0C21: VCallAd Control_ID_Combo1
  loc_6C0C24: FStAdFunc var_94
  loc_6C0C27: FLdPr var_94
  loc_6C0C2A:  = Me.Text
  loc_6C0C2F: FLdRfVar var_124
  loc_6C0C32: FLdPrThis
  loc_6C0C33: VCallAd Control_ID_txAno
  loc_6C0C36: FStAdFunc var_120
  loc_6C0C39: FLdPr var_120
  loc_6C0C3C:  = Me.Text
  loc_6C0C41: LitI4 &HD
  loc_6C0C46: FLdRfVar var_1CC
  loc_6C0C49: ImpAdCallFPR4  = Chr()
  loc_6C0C4E: LitI4 &HD
  loc_6C0C53: FLdRfVar var_1EC
  loc_6C0C56: ImpAdCallFPR4  = Chr()
  loc_6C0C5B: LitVar_Missing var_24C
  loc_6C0C5E: LitVar_Missing var_22C
  loc_6C0C61: LitVarStr var_14C, "Informe de tanques"
  loc_6C0C66: FStVarCopyObj var_21C
  loc_6C0C69: FLdRfVar var_21C
  loc_6C0C6C: LitI4 &H40
  loc_6C0C71: LitVarStr var_A8, "La información de tanques para el mes de:"
  loc_6C0C76: FLdRfVar var_B8
  loc_6C0C79: ConcatVar var_D8
  loc_6C0C7D: FLdRfVar var_F8
  loc_6C0C80: ConcatVar var_118
  loc_6C0C84: FLdZeroAd var_11C
  loc_6C0C87: CVarStr var_13C
  loc_6C0C8A: ConcatVar var_15C
  loc_6C0C8E: LitVarStr var_C8, " de "
  loc_6C0C93: ConcatVar var_18C
  loc_6C0C97: FLdZeroAd var_124
  loc_6C0C9A: CVarStr var_19C
  loc_6C0C9D: ConcatVar var_1AC
  loc_6C0CA1: LitVarStr var_E8, " ha sido grabada."
  loc_6C0CA6: ConcatVar var_1BC
  loc_6C0CAA: FLdRfVar var_1CC
  loc_6C0CAD: ConcatVar var_1DC
  loc_6C0CB1: FLdRfVar var_1EC
  loc_6C0CB4: ConcatVar var_1FC
  loc_6C0CB8: LitVarStr var_108, " Se enviara en el próximo cierre de Consignado"
  loc_6C0CBD: ConcatVar var_20C
  loc_6C0CC1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C0CC6: FFreeAd var_94 = ""
  loc_6C0CCD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_13C = "": var_15C = "": var_18C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = ""
  loc_6C0CF4: ILdRf Me
  loc_6C0CF7: FStAdNoPop
  loc_6C0CFB: ImpAdLdRf MemVar_7520D4
  loc_6C0CFE: NewIfNullPr Global
  loc_6C0D01: Global.Unload from_stack_1
  loc_6C0D06: FFree1Ad var_94
  loc_6C0D09: ExitProcHresult
End Sub

Private Sub Command3_Click() '5DF540
  'Data Table: 425F9C
  loc_5DF4F8: LitVar_Missing var_104
  loc_5DF4FB: LitVar_Missing var_E4
  loc_5DF4FE: LitVarStr var_B4, "Informe de tanques"
  loc_5DF503: FStVarCopyObj var_C4
  loc_5DF506: FLdRfVar var_C4
  loc_5DF509: LitI4 &H41
  loc_5DF50E: LitVarStr var_94, "¿Desea volver a los valores anteriores?"
  loc_5DF513: FStVarCopyObj var_A4
  loc_5DF516: FLdRfVar var_A4
  loc_5DF519: ImpAdCallI2 MsgBox(, , , , )
  loc_5DF51E: LitI4 1
  loc_5DF523: EqI4
  loc_5DF524: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_5DF52F: BranchF loc_5DF53C
  loc_5DF532: from_stack_1v = Proc_1_17_5F5964()
  loc_5DF537: from_stack_1v = Proc_1_11_6DCD04()
  loc_5DF53C: ExitProcHresult
End Sub

Private Sub txAno_KeyPress(KeyAscii As Integer) '5D3EC4
  'Data Table: 425F9C
  loc_5D3EA4: ILdI2 KeyAscii
  loc_5D3EA7: LitI2_Byte 8
  loc_5D3EA9: NeI2
  loc_5D3EAA: ILdI2 KeyAscii
  loc_5D3EAD: LitI2_Byte &H30
  loc_5D3EAF: LtI2
  loc_5D3EB0: LitI2_Byte &H39
  loc_5D3EB2: ILdI2 KeyAscii
  loc_5D3EB5: LtI2
  loc_5D3EB6: OrI4
  loc_5D3EB7: AndI4
  loc_5D3EB8: BranchF loc_5D3EC0
  loc_5D3EBB: LitI2_Byte 0
  loc_5D3EBD: IStI2 KeyAscii
  loc_5D3EC0: ExitProcHresult
End Sub

Private Function Proc_1_8_61C3A0() '61C3A0
  'Data Table: 425F9C
  loc_61C268: LitI2_Byte 0
  loc_61C26A: FStI2 var_86
  loc_61C26D: LitI2_Byte 1
  loc_61C26F: FLdRfVar var_88
  loc_61C272: FLdPrThis
  loc_61C273: VCallAd Control_ID_TablaTank
  loc_61C276: FStAdFunc var_90
  loc_61C279: FLdPr var_90
  loc_61C27C: LateIdLdVar var_A0 DispID_4 0
  loc_61C283: CI4Var
  loc_61C285: LitI4 1
  loc_61C28A: SubI4
  loc_61C28B: CI2I4
  loc_61C28C: FFree1Ad var_90
  loc_61C28F: FFree1Var var_A0 = ""
  loc_61C292: ForI2 var_A4
  loc_61C298: LitI2_Byte 0
  loc_61C29A: FStI2 var_8C
  loc_61C29D: FLdI2 var_88
  loc_61C2A0: CI4UI1
  loc_61C2A1: CVarI4
  loc_61C2A5: PopAdLdVar
  loc_61C2A6: LitVarI4
  loc_61C2AE: PopAdLdVar
  loc_61C2AF: FLdPrThis
  loc_61C2B0: VCallAd Control_ID_TablaTank
  loc_61C2B3: FStAdFunc var_90
  loc_61C2B6: FLdPr var_90
  loc_61C2B9: LateIdCallLdVar
  loc_61C2C3: CStrVarTmp
  loc_61C2C4: FStStrNoPop var_C8
  loc_61C2C7: ImpAdCallFPR4 push Val()
  loc_61C2CC: CR8R8
  loc_61C2CD: LitI2_Byte 0
  loc_61C2CF: CR8I2
  loc_61C2D0: EqR4
  loc_61C2D1: FFree1Str var_C8
  loc_61C2D4: FFree1Ad var_90
  loc_61C2D7: FFree1Var var_A0 = ""
  loc_61C2DA: BranchF loc_61C37E
  loc_61C2DD: FLdI2 var_88
  loc_61C2E0: CI4UI1
  loc_61C2E1: CVarI4
  loc_61C2E5: PopAdLdVar
  loc_61C2E6: LitVarI4
  loc_61C2EE: PopAdLdVar
  loc_61C2EF: FLdPrThis
  loc_61C2F0: VCallAd Control_ID_TablaTank
  loc_61C2F3: FStAdFunc var_90
  loc_61C2F6: FLdPr var_90
  loc_61C2F9: LateIdCallLdVar
  loc_61C303: CStrVarTmp
  loc_61C304: FStStrNoPop var_C8
  loc_61C307: ImpAdCallFPR4 push Val()
  loc_61C30C: CR8R8
  loc_61C30D: LitI2_Byte 0
  loc_61C30F: CR8I2
  loc_61C310: GtR4
  loc_61C311: FLdI2 var_88
  loc_61C314: CI4UI1
  loc_61C315: CVarI4
  loc_61C319: PopAdLdVar
  loc_61C31A: LitVarI4
  loc_61C322: PopAdLdVar
  loc_61C323: FLdPrThis
  loc_61C324: VCallAd Control_ID_TablaTank
  loc_61C327: FStAdFunc var_EC
  loc_61C32A: FLdPr var_EC
  loc_61C32D: LateIdCallLdVar
  loc_61C337: CStrVarTmp
  loc_61C338: FStStrNoPop var_100
  loc_61C33B: ImpAdCallFPR4 push Val()
  loc_61C340: CR8R8
  loc_61C341: LitI2_Byte 0
  loc_61C343: CR8I2
  loc_61C344: GtR4
  loc_61C345: OrI4
  loc_61C346: FFreeStr var_C8 = ""
  loc_61C34D: FFreeAd var_90 = ""
  loc_61C354: FFreeVar var_A0 = ""
  loc_61C35B: BranchF loc_61C37E
  loc_61C35E: FLdI2 var_88
  loc_61C361: CI4UI1
  loc_61C362: CVarI4
  loc_61C366: PopAdLdVar
  loc_61C367: FLdPrThis
  loc_61C368: VCallAd Control_ID_TablaTank
  loc_61C36B: FStAdFunc var_90
  loc_61C36E: FLdPr var_90
  loc_61C371: LateIdSt
  loc_61C376: FFree1Ad var_90
  loc_61C379: LitI2_Byte &HFF
  loc_61C37B: FStI2 var_8C
  loc_61C37E: FLdI2 var_8C
  loc_61C381: BranchF loc_61C38A
  loc_61C384: ExitProcCbHresult
  loc_61C38A: FLdRfVar var_88
  loc_61C38D: NextI2 var_A4, loc_61C298
  loc_61C392: LitI2_Byte &HFF
  loc_61C394: FStI2 var_86
  loc_61C397: ExitProcCbHresult
End Function

Private Function Proc_1_9_5E2A94() '5E2A94
  'Data Table: 425F9C
  loc_5E2A40: FLdRfVar var_98
  loc_5E2A43: ImpAdCallFPR4  = Now
  loc_5E2A48: FLdRfVar var_98
  loc_5E2A4B: FLdRfVar var_A8
  loc_5E2A4E: ImpAdCallFPR4  = Month()
  loc_5E2A53: FLdRfVar var_A8
  loc_5E2A56: FLdRfVar var_AE
  loc_5E2A59: FLdPrThis
  loc_5E2A5A: VCallAd Control_ID_Combo1
  loc_5E2A5D: FStAdFunc var_AC
  loc_5E2A60: FLdPr var_AC
  loc_5E2A63:  = Me.ListIndex
  loc_5E2A68: FLdI2 var_AE
  loc_5E2A6B: LitI2_Byte 1
  loc_5E2A6D: AddI2
  loc_5E2A6E: CVarI2 var_C0
  loc_5E2A71: HardType
  loc_5E2A72: LtVarBool
  loc_5E2A74: FFree1Ad var_AC
  loc_5E2A77: FFreeVar var_98 = ""
  loc_5E2A7E: BranchF loc_5E2A89
  loc_5E2A81: LitI2_Byte 0
  loc_5E2A83: FStI2 var_86
  loc_5E2A86: Branch loc_5E2A8E
  loc_5E2A89: LitI2_Byte &HFF
  loc_5E2A8B: FStI2 var_86
  loc_5E2A8E: ExitProcCbHresult
End Function

Private Function Proc_1_10_61CC9C(arg_C, arg_10, arg_14) '61CC9C
  'Data Table: 425F9C
  loc_61CB74: LitI2_Byte 1
  loc_61CB76: FStI2 var_88
  loc_61CB79: LitI2_Byte 1
  loc_61CB7B: FLdRfVar var_86
  loc_61CB7E: ImpAdLdUI1
  loc_61CB82: CI2UI1
  loc_61CB84: ForI2 var_8C
  loc_61CB8A: LitVarI2 var_BC, 1
  loc_61CB8F: FLdI2 var_86
  loc_61CB92: CI4UI1
  loc_61CB93: ImpAdLdRf MemVar_74C1D8
  loc_61CB96: Ary1LdUI1
  loc_61CB98: CI4UI1
  loc_61CB99: ILdRf arg_10
  loc_61CB9C: CVarRef
  loc_61CBA1: FLdRfVar var_CC
  loc_61CBA4: ImpAdCallFPR4  = Mid(, , )
  loc_61CBA9: FLdRfVar var_CC
  loc_61CBAC: LitVarStr var_DC, "2"
  loc_61CBB1: HardType
  loc_61CBB2: EqVar var_EC
  loc_61CBB6: LitVarI2 var_11C, 1
  loc_61CBBB: FLdI2 var_86
  loc_61CBBE: CI4UI1
  loc_61CBBF: ImpAdLdRf MemVar_74C1D8
  loc_61CBC2: Ary1LdUI1
  loc_61CBC4: CI4UI1
  loc_61CBC5: ILdRf arg_10
  loc_61CBC8: CVarRef
  loc_61CBCD: FLdRfVar var_12C
  loc_61CBD0: ImpAdCallFPR4  = Mid(, , )
  loc_61CBD5: FLdRfVar var_12C
  loc_61CBD8: LitVarStr var_13C, "3"
  loc_61CBDD: HardType
  loc_61CBDE: EqVar var_14C
  loc_61CBE2: OrVar var_15C
  loc_61CBE6: CBoolVarNull
  loc_61CBE8: FFreeVar var_BC = "": var_CC = "": var_11C = ""
  loc_61CBF3: BranchF loc_61CC64
  loc_61CBF6: FLdI2 var_88
  loc_61CBF9: CI4UI1
  loc_61CBFA: CVarI4
  loc_61CBFE: PopAdLdVar
  loc_61CBFF: ILdI2 arg_14
  loc_61CC02: CI4UI1
  loc_61CC03: CVarI4
  loc_61CC07: PopAdLdVar
  loc_61CC08: FLdPrThis
  loc_61CC09: VCallAd Control_ID_TablaTank
  loc_61CC0C: FStAdFunc var_160
  loc_61CC0F: FLdPr var_160
  loc_61CC12: LateIdCallLdVar
  loc_61CC1C: PopAd
  loc_61CC1E: ILdI4 arg_C
  loc_61CC21: LitI2_Byte 0
  loc_61CC23: PopTmpLdAd2 var_16C
  loc_61CC26: LitI2_Byte 6
  loc_61CC28: PopTmpLdAd2 var_16A
  loc_61CC2B: LitStr "0"
  loc_61CC2E: FStStrCopy var_168
  loc_61CC31: FLdRfVar var_168
  loc_61CC34: FLdRfVar var_BC
  loc_61CC37: CStrVarTmp
  loc_61CC38: PopTmpLdAdStr
  loc_61CC3C: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_61CC41: FStStrNoPop var_170
  loc_61CC44: ConcatStr
  loc_61CC45: IStStr
  loc_61CC49: FFreeStr var_164 = "": var_168 = ""
  loc_61CC52: FFree1Ad var_160
  loc_61CC55: FFree1Var var_BC = ""
  loc_61CC58: FLdI2 var_88
  loc_61CC5B: LitI2_Byte 1
  loc_61CC5D: AddI2
  loc_61CC5E: FStI2 var_88
  loc_61CC61: Branch loc_61CC6F
  loc_61CC64: ILdI4 arg_C
  loc_61CC67: LitStr "000000"
  loc_61CC6A: ConcatStr
  loc_61CC6B: IStStr
  loc_61CC6F: FLdRfVar var_86
  loc_61CC72: NextI2 var_8C, loc_61CB8A
  loc_61CC77: FLdI2 var_86
  loc_61CC7A: FLdRfVar var_86
  loc_61CC7D: LitI2_Byte &H10
  loc_61CC7F: ForI2 var_174
  loc_61CC85: ILdI4 arg_C
  loc_61CC88: LitStr "000000"
  loc_61CC8B: ConcatStr
  loc_61CC8C: IStStr
  loc_61CC90: FLdRfVar var_86
  loc_61CC93: NextI2 var_174, loc_61CC85
  loc_61CC98: ExitProcHresult
End Function

Private Function Proc_1_11_6DCD04() '6DCD04
  'Data Table: 425F9C
  loc_6DC188: OnErrorGoto loc_6DCC53
  loc_6DC18B: LitI2_Byte 1
  loc_6DC18D: FStI2 var_98
  loc_6DC190: LitStr "1"
  loc_6DC193: FStStrCopy var_88
  loc_6DC196: ILdRf var_88
  loc_6DC199: LitStr "1"
  loc_6DC19C: EqStr
  loc_6DC19E: FLdI2 var_98
  loc_6DC1A1: LitI2_Byte &HA
  loc_6DC1A3: LeI2
  loc_6DC1A4: AndI4
  loc_6DC1A5: BranchF loc_6DC206
  loc_6DC1A8: FLdRfVar var_B2
  loc_6DC1AB: FLdRfVar var_88
  loc_6DC1AE: FLdRfVar var_B0
  loc_6DC1B1: ImpAdLdRf MemVar_74C760
  loc_6DC1B4: NewIfNullPr Formx
  loc_6DC1B7: from_stack_1v = Formx.global_4589716Get()
  loc_6DC1BC: FLdPr var_B0
  loc_6DC1BF:  = Formx.FontSize
  loc_6DC1C4: FLdI2 var_B2
  loc_6DC1C7: NotI4
  loc_6DC1C8: FFree1Ad var_B0
  loc_6DC1CB: BranchF loc_6DC203
  loc_6DC1CE: FLdRfVar var_C4
  loc_6DC1D1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6DC1D6: FLdRfVar var_C4
  loc_6DC1D9: CBoolVarNull
  loc_6DC1DB: FFree1Var var_C4 = ""
  loc_6DC1DE: BranchF loc_6DC1F7
  loc_6DC1E1: ILdRf Me
  loc_6DC1E4: FStAdNoPop
  loc_6DC1E8: ImpAdLdRf MemVar_7520D4
  loc_6DC1EB: NewIfNullPr Global
  loc_6DC1EE: Global.Unload from_stack_1
  loc_6DC1F3: FFree1Ad var_B0
  loc_6DC1F6: ExitProcHresult
  loc_6DC1F7: FLdI2 var_98
  loc_6DC1FA: LitI2_Byte 1
  loc_6DC1FC: AddI2
  loc_6DC1FD: FStI2 var_98
  loc_6DC200: Branch loc_6DC1A8
  loc_6DC203: Branch loc_6DC196
  loc_6DC206: LitI2_Byte &HA
  loc_6DC208: FLdI2 var_98
  loc_6DC20B: LtI2
  loc_6DC20C: BranchF loc_6DC24C
  loc_6DC20F: LitVar_Missing var_124
  loc_6DC212: LitVar_Missing var_104
  loc_6DC215: LitVar_Missing var_E4
  loc_6DC218: LitI4 &H40
  loc_6DC21D: LitStr "Error en la respuesta del Pipe: "
  loc_6DC220: ILdRf var_88
  loc_6DC223: ConcatStr
  loc_6DC224: CVarStr var_C4
  loc_6DC227: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DC22C: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_6DC237: ILdRf Me
  loc_6DC23A: FStAdNoPop
  loc_6DC23E: ImpAdLdRf MemVar_7520D4
  loc_6DC241: NewIfNullPr Global
  loc_6DC244: Global.Unload from_stack_1
  loc_6DC249: FFree1Ad var_B0
  loc_6DC24C: FLdPrThis
  loc_6DC24D: VCallAd Control_ID_Combo1
  loc_6DC250: FStAdFunc var_B0
  loc_6DC253: FLdPr var_B0
  loc_6DC256: Me.Clear
  loc_6DC25B: FFree1Ad var_B0
  loc_6DC25E: FLdPrThis
  loc_6DC25F: VCallAd Control_ID_Combo2
  loc_6DC262: FStAdFunc var_B0
  loc_6DC265: FLdPr var_B0
  loc_6DC268: Me.Clear
  loc_6DC26D: FFree1Ad var_B0
  loc_6DC270: ImpAdCallI2 Proc_6_6_5D404C()
  loc_6DC275: FStStr var_A4
  loc_6DC278: LitI4 1
  loc_6DC27D: ILdRf var_A4
  loc_6DC280: LitStr "/"
  loc_6DC283: LitI4 0
  loc_6DC288: FnInStr4
  loc_6DC28A: CI2I4
  loc_6DC28B: FStI2 var_92
  loc_6DC28E: FLdI2 var_92
  loc_6DC291: LitI2_Byte 0
  loc_6DC293: EqI2
  loc_6DC294: NotI4
  loc_6DC295: BranchF loc_6DC31B
  loc_6DC298: FLdI2 var_92
  loc_6DC29B: LitI2_Byte 1
  loc_6DC29D: SubI2
  loc_6DC29E: CVarI2 var_C4
  loc_6DC2A1: LitI4 1
  loc_6DC2A6: FLdRfVar var_A4
  loc_6DC2A9: CVarRef
  loc_6DC2AE: FLdRfVar var_E4
  loc_6DC2B1: ImpAdCallFPR4  = Mid(, , )
  loc_6DC2B6: FLdRfVar var_E4
  loc_6DC2B9: ILdRf var_A4
  loc_6DC2BC: FnLenStr
  loc_6DC2BD: FLdI2 var_92
  loc_6DC2C0: CI4UI1
  loc_6DC2C1: SubI4
  loc_6DC2C2: CVarI4
  loc_6DC2C6: FLdI2 var_92
  loc_6DC2C9: LitI2_Byte 1
  loc_6DC2CB: AddI2
  loc_6DC2CC: CI4UI1
  loc_6DC2CD: FLdRfVar var_A4
  loc_6DC2D0: CVarRef
  loc_6DC2D5: FLdRfVar var_124
  loc_6DC2D8: ImpAdCallFPR4  = Mid(, , )
  loc_6DC2DD: FLdRfVar var_124
  loc_6DC2E0: AddVar var_144
  loc_6DC2E4: FLdRfVar var_154
  loc_6DC2E7: ImpAdCallFPR4  = Trim()
  loc_6DC2EC: FLdRfVar var_154
  loc_6DC2EF: CStrVarTmp
  loc_6DC2F0: FStStr var_A4
  loc_6DC2F3: FFreeVar var_C4 = "": var_104 = "": var_E4 = "": var_124 = "": var_144 = ""
  loc_6DC302: LitI4 1
  loc_6DC307: ILdRf var_A4
  loc_6DC30A: LitStr "/"
  loc_6DC30D: LitI4 0
  loc_6DC312: FnInStr4
  loc_6DC314: CI2I4
  loc_6DC315: FStI2 var_92
  loc_6DC318: Branch loc_6DC28E
  loc_6DC31B: LitI4 1
  loc_6DC320: ILdRf var_A4
  loc_6DC323: LitStr "-"
  loc_6DC326: LitI4 0
  loc_6DC32B: FnInStr4
  loc_6DC32D: CI2I4
  loc_6DC32E: FStI2 var_92
  loc_6DC331: FLdI2 var_92
  loc_6DC334: LitI2_Byte 0
  loc_6DC336: EqI2
  loc_6DC337: NotI4
  loc_6DC338: BranchF loc_6DC3BE
  loc_6DC33B: FLdI2 var_92
  loc_6DC33E: LitI2_Byte 1
  loc_6DC340: SubI2
  loc_6DC341: CVarI2 var_C4
  loc_6DC344: LitI4 1
  loc_6DC349: FLdRfVar var_A4
  loc_6DC34C: CVarRef
  loc_6DC351: FLdRfVar var_E4
  loc_6DC354: ImpAdCallFPR4  = Mid(, , )
  loc_6DC359: FLdRfVar var_E4
  loc_6DC35C: ILdRf var_A4
  loc_6DC35F: FnLenStr
  loc_6DC360: FLdI2 var_92
  loc_6DC363: CI4UI1
  loc_6DC364: SubI4
  loc_6DC365: CVarI4
  loc_6DC369: FLdI2 var_92
  loc_6DC36C: LitI2_Byte 1
  loc_6DC36E: AddI2
  loc_6DC36F: CI4UI1
  loc_6DC370: FLdRfVar var_A4
  loc_6DC373: CVarRef
  loc_6DC378: FLdRfVar var_124
  loc_6DC37B: ImpAdCallFPR4  = Mid(, , )
  loc_6DC380: FLdRfVar var_124
  loc_6DC383: AddVar var_144
  loc_6DC387: FLdRfVar var_154
  loc_6DC38A: ImpAdCallFPR4  = Trim()
  loc_6DC38F: FLdRfVar var_154
  loc_6DC392: CStrVarTmp
  loc_6DC393: FStStr var_A4
  loc_6DC396: FFreeVar var_C4 = "": var_104 = "": var_E4 = "": var_124 = "": var_144 = ""
  loc_6DC3A5: LitI4 1
  loc_6DC3AA: ILdRf var_A4
  loc_6DC3AD: LitStr "-"
  loc_6DC3B0: LitI4 0
  loc_6DC3B5: FnInStr4
  loc_6DC3B7: CI2I4
  loc_6DC3B8: FStI2 var_92
  loc_6DC3BB: Branch loc_6DC331
  loc_6DC3BE: from_stack_1v = Proc_1_13_615C60()
  loc_6DC3C3: LitVarI2 var_C4, 4
  loc_6DC3C8: LitI4 1
  loc_6DC3CD: FLdRfVar var_88
  loc_6DC3D0: CVarRef
  loc_6DC3D5: FLdRfVar var_E4
  loc_6DC3D8: ImpAdCallFPR4  = Mid(, , )
  loc_6DC3DD: FLdRfVar var_E4
  loc_6DC3E0: CStrVarTmp
  loc_6DC3E1: FStStr var_8C
  loc_6DC3E4: FFreeVar var_C4 = ""
  loc_6DC3EB: ILdRf var_8C
  loc_6DC3EE: ImpAdCallFPR4 push Val()
  loc_6DC3F3: CR8R8
  loc_6DC3F4: LitI2_Byte 0
  loc_6DC3F6: CR8I2
  loc_6DC3F7: EqR4
  loc_6DC3F8: BranchF loc_6DC413
  loc_6DC3FB: LitStr vbNullString
  loc_6DC3FE: FLdPrThis
  loc_6DC3FF: VCallAd Control_ID_txAno
  loc_6DC402: FStAdFunc var_B0
  loc_6DC405: FLdPr var_B0
  loc_6DC408: Me.Text = from_stack_1
  loc_6DC40D: FFree1Ad var_B0
  loc_6DC410: Branch loc_6DC428
  loc_6DC413: ILdRf var_8C
  loc_6DC416: FLdPrThis
  loc_6DC417: VCallAd Control_ID_txAno
  loc_6DC41A: FStAdFunc var_B0
  loc_6DC41D: FLdPr var_B0
  loc_6DC420: Me.Text = from_stack_1
  loc_6DC425: FFree1Ad var_B0
  loc_6DC428: LitVarI2 var_C4, 2
  loc_6DC42D: LitI4 5
  loc_6DC432: FLdRfVar var_88
  loc_6DC435: CVarRef
  loc_6DC43A: FLdRfVar var_E4
  loc_6DC43D: ImpAdCallFPR4  = Mid(, , )
  loc_6DC442: FLdRfVar var_E4
  loc_6DC445: CStrVarTmp
  loc_6DC446: FStStr var_90
  loc_6DC449: FFreeVar var_C4 = ""
  loc_6DC450: ILdRf var_90
  loc_6DC453: LitStr "00"
  loc_6DC456: EqStr
  loc_6DC458: BranchF loc_6DC472
  loc_6DC45B: LitI2_Byte &HFF
  loc_6DC45D: FLdPrThis
  loc_6DC45E: VCallAd Control_ID_Combo1
  loc_6DC461: FStAdFunc var_B0
  loc_6DC464: FLdPr var_B0
  loc_6DC467: Me.ListIndex = from_stack_1
  loc_6DC46C: FFree1Ad var_B0
  loc_6DC46F: Branch loc_6DC48E
  loc_6DC472: ILdRf var_90
  loc_6DC475: CR8Str
  loc_6DC477: LitI2_Byte 1
  loc_6DC479: CR8I2
  loc_6DC47A: SubR4
  loc_6DC47B: CI2R8
  loc_6DC47C: FLdPrThis
  loc_6DC47D: VCallAd Control_ID_Combo1
  loc_6DC480: FStAdFunc var_B0
  loc_6DC483: FLdPr var_B0
  loc_6DC486: Me.ListIndex = from_stack_1
  loc_6DC48B: FFree1Ad var_B0
  loc_6DC48E: LitI4 0
  loc_6DC493: ImpAdLdUI1
  loc_6DC497: CI2UI1
  loc_6DC499: LitI2_Byte 1
  loc_6DC49B: AddI2
  loc_6DC49C: CI4UI1
  loc_6DC49D: FLdRfVar var_A8
  loc_6DC4A0: Redim
  loc_6DC4AA: LitVarI4
  loc_6DC4B2: PopAdLdVar
  loc_6DC4B3: FLdPrThis
  loc_6DC4B4: VCallAd Control_ID_TablaTank
  loc_6DC4B7: FStAdFunc var_B0
  loc_6DC4BA: FLdPr var_B0
  loc_6DC4BD: LateIdSt
  loc_6DC4C2: FFree1Ad var_B0
  loc_6DC4C5: LitVarI2 var_D4, 12
  loc_6DC4CA: PopAdLdVar
  loc_6DC4CB: FLdPrThis
  loc_6DC4CC: VCallAd Control_ID_TablaTank
  loc_6DC4CF: FStAdFunc var_B0
  loc_6DC4D2: FLdPr var_B0
  loc_6DC4D5: LateIdLdVar var_C4 DispID_-512 -1
  loc_6DC4DC: CastAdVar Me
  loc_6DC4E0: FStAdFunc var_158
  loc_6DC4E3: FLdPr var_158
  loc_6DC4E6: LateIdSt
  loc_6DC4EB: FFreeAd var_B0 = ""
  loc_6DC4F2: FFree1Var var_C4 = ""
  loc_6DC4F5: LitVarI4
  loc_6DC4FD: PopAdLdVar
  loc_6DC4FE: LitVarI2 var_F4, 4
  loc_6DC503: PopAdLdVar
  loc_6DC504: FLdPrThis
  loc_6DC505: VCallAd Control_ID_TablaTank
  loc_6DC508: FStAdFunc var_B0
  loc_6DC50B: FLdPr var_B0
  loc_6DC50E: LateIdCallSt
  loc_6DC516: FFree1Ad var_B0
  loc_6DC519: LitVarI4
  loc_6DC521: PopAdLdVar
  loc_6DC522: LitVarI2 var_F4, 4
  loc_6DC527: PopAdLdVar
  loc_6DC528: FLdPrThis
  loc_6DC529: VCallAd Control_ID_TablaTank
  loc_6DC52C: FStAdFunc var_B0
  loc_6DC52F: FLdPr var_B0
  loc_6DC532: LateIdCallSt
  loc_6DC53A: FFree1Ad var_B0
  loc_6DC53D: LitVarI4
  loc_6DC545: PopAdLdVar
  loc_6DC546: LitVarI2 var_F4, 4
  loc_6DC54B: PopAdLdVar
  loc_6DC54C: FLdPrThis
  loc_6DC54D: VCallAd Control_ID_TablaTank
  loc_6DC550: FStAdFunc var_B0
  loc_6DC553: FLdPr var_B0
  loc_6DC556: LateIdCallSt
  loc_6DC55E: FFree1Ad var_B0
  loc_6DC561: LitVarI4
  loc_6DC569: PopAdLdVar
  loc_6DC56A: LitVarI2 var_F4, 4
  loc_6DC56F: PopAdLdVar
  loc_6DC570: FLdPrThis
  loc_6DC571: VCallAd Control_ID_TablaTank
  loc_6DC574: FStAdFunc var_B0
  loc_6DC577: FLdPr var_B0
  loc_6DC57A: LateIdCallSt
  loc_6DC582: FFree1Ad var_B0
  loc_6DC585: LitVarI4
  loc_6DC58D: PopAdLdVar
  loc_6DC58E: LitVarI2 var_F4, 4
  loc_6DC593: PopAdLdVar
  loc_6DC594: FLdPrThis
  loc_6DC595: VCallAd Control_ID_TablaTank
  loc_6DC598: FStAdFunc var_B0
  loc_6DC59B: FLdPr var_B0
  loc_6DC59E: LateIdCallSt
  loc_6DC5A6: FFree1Ad var_B0
  loc_6DC5A9: LitVarI4
  loc_6DC5B1: PopAdLdVar
  loc_6DC5B2: LitVarI4
  loc_6DC5BA: PopAdLdVar
  loc_6DC5BB: LitVarStr var_114, "Nº"
  loc_6DC5C0: PopAdLdVar
  loc_6DC5C1: FLdPrThis
  loc_6DC5C2: VCallAd Control_ID_TablaTank
  loc_6DC5C5: FStAdFunc var_B0
  loc_6DC5C8: FLdPr var_B0
  loc_6DC5CB: LateIdCallSt
  loc_6DC5D3: FFree1Ad var_B0
  loc_6DC5D6: LitVarI4
  loc_6DC5DE: PopAdLdVar
  loc_6DC5DF: LitVarI4
  loc_6DC5E7: PopAdLdVar
  loc_6DC5E8: LitVarStr var_114, "PRODUCTO"
  loc_6DC5ED: PopAdLdVar
  loc_6DC5EE: FLdPrThis
  loc_6DC5EF: VCallAd Control_ID_TablaTank
  loc_6DC5F2: FStAdFunc var_B0
  loc_6DC5F5: FLdPr var_B0
  loc_6DC5F8: LateIdCallSt
  loc_6DC600: FFree1Ad var_B0
  loc_6DC603: LitVarI4
  loc_6DC60B: PopAdLdVar
  loc_6DC60C: LitVarI4
  loc_6DC614: PopAdLdVar
  loc_6DC615: LitVarStr var_114, "VOLUMEN"
  loc_6DC61A: PopAdLdVar
  loc_6DC61B: FLdPrThis
  loc_6DC61C: VCallAd Control_ID_TablaTank
  loc_6DC61F: FStAdFunc var_B0
  loc_6DC622: FLdPr var_B0
  loc_6DC625: LateIdCallSt
  loc_6DC62D: FFree1Ad var_B0
  loc_6DC630: LitVarI4
  loc_6DC638: PopAdLdVar
  loc_6DC639: LitVarI4
  loc_6DC641: PopAdLdVar
  loc_6DC642: LitVarStr var_114, "SOBRANTE"
  loc_6DC647: PopAdLdVar
  loc_6DC648: FLdPrThis
  loc_6DC649: VCallAd Control_ID_TablaTank
  loc_6DC64C: FStAdFunc var_B0
  loc_6DC64F: FLdPr var_B0
  loc_6DC652: LateIdCallSt
  loc_6DC65A: FFree1Ad var_B0
  loc_6DC65D: LitVarI4
  loc_6DC665: PopAdLdVar
  loc_6DC666: LitVarI4
  loc_6DC66E: PopAdLdVar
  loc_6DC66F: LitVarStr var_114, "FALTANTE"
  loc_6DC674: PopAdLdVar
  loc_6DC675: FLdPrThis
  loc_6DC676: VCallAd Control_ID_TablaTank
  loc_6DC679: FStAdFunc var_B0
  loc_6DC67C: FLdPr var_B0
  loc_6DC67F: LateIdCallSt
  loc_6DC687: FFree1Ad var_B0
  loc_6DC68A: FLdRfVar var_C4
  loc_6DC68D: FLdRfVar var_A0
  loc_6DC690: FLdRfVar var_B0
  loc_6DC693: ImpAdLdRf MemVar_74C760
  loc_6DC696: NewIfNullPr Formx
  loc_6DC699: from_stack_1v = Formx.global_4589716Get()
  loc_6DC69E: FLdPr var_B0
  loc_6DC6A1: Formx.WhatsThisMode
  loc_6DC6A6: FFree1Ad var_B0
  loc_6DC6A9: FFree1Var var_C4 = ""
  loc_6DC6AC: LitI2_Byte 7
  loc_6DC6AE: FStI2 var_96
  loc_6DC6B1: LitI2_Byte 0
  loc_6DC6B3: FStI2 var_94
  loc_6DC6B6: LitI2_Byte 1
  loc_6DC6B8: CUI1I2
  loc_6DC6BA: FLdPr Me
  loc_6DC6BD: MemStUI1
  loc_6DC6C1: LitI2_Byte 1
  loc_6DC6C3: FLdRfVar var_92
  loc_6DC6C6: ImpAdLdUI1
  loc_6DC6CA: CI2UI1
  loc_6DC6CC: ForI2 var_15C
  loc_6DC6D2: LitVarI2 var_C4, 1
  loc_6DC6D7: FLdI2 var_92
  loc_6DC6DA: CI4UI1
  loc_6DC6DB: ImpAdLdRf MemVar_74C1D8
  loc_6DC6DE: Ary1LdUI1
  loc_6DC6E0: CI4UI1
  loc_6DC6E1: FLdRfVar var_A0
  loc_6DC6E4: CVarRef
  loc_6DC6E9: FLdRfVar var_E4
  loc_6DC6EC: ImpAdCallFPR4  = Mid(, , )
  loc_6DC6F1: FLdRfVar var_E4
  loc_6DC6F4: LitVarStr var_114, "2"
  loc_6DC6F9: HardType
  loc_6DC6FA: EqVar var_104
  loc_6DC6FE: LitVarI2 var_124, 1
  loc_6DC703: FLdI2 var_92
  loc_6DC706: CI4UI1
  loc_6DC707: ImpAdLdRf MemVar_74C1D8
  loc_6DC70A: Ary1LdUI1
  loc_6DC70C: CI4UI1
  loc_6DC70D: FLdRfVar var_A0
  loc_6DC710: CVarRef
  loc_6DC715: FLdRfVar var_144
  loc_6DC718: ImpAdCallFPR4  = Mid(, , )
  loc_6DC71D: FLdRfVar var_144
  loc_6DC720: LitVarStr var_17C, "3"
  loc_6DC725: HardType
  loc_6DC726: EqVar var_154
  loc_6DC72A: OrVar var_18C
  loc_6DC72E: CBoolVarNull
  loc_6DC730: FFreeVar var_C4 = "": var_E4 = "": var_124 = ""
  loc_6DC73B: BranchF loc_6DC81F
  loc_6DC73E: FLdRfVar var_190
  loc_6DC741: FLdI2 var_92
  loc_6DC744: CI4UI1
  loc_6DC745: ImpAdLdRf MemVar_74C1D8
  loc_6DC748: Ary1LdUI1
  loc_6DC74A: CI2UI1
  loc_6DC74C: ImpAdLdRf MemVar_74A220
  loc_6DC74F: NewIfNullPr clsProducts
  loc_6DC757: LitI4 1
  loc_6DC75C: LitI4 1
  loc_6DC761: LitVarStr var_D4, ">"
  loc_6DC766: FStVarCopyObj var_E4
  loc_6DC769: FLdRfVar var_E4
  loc_6DC76C: FLdZeroAd var_190
  loc_6DC76F: CVarStr var_C4
  loc_6DC772: FLdRfVar var_104
  loc_6DC775: ImpAdCallFPR4  = Format(, )
  loc_6DC77A: FLdRfVar var_104
  loc_6DC77D: CStrVarTmp
  loc_6DC77E: FStStrNoPop var_194
  loc_6DC781: FLdI2 var_94
  loc_6DC784: CI4UI1
  loc_6DC785: ILdRf var_A8
  loc_6DC788: Ary1LdPr
  loc_6DC789: MemStStrCopy
  loc_6DC78D: FFree1Str var_194
  loc_6DC790: FFreeVar var_C4 = "": var_E4 = ""
  loc_6DC799: FLdI2 var_92
  loc_6DC79C: FLdI2 var_94
  loc_6DC79F: CI4UI1
  loc_6DC7A0: ILdRf var_A8
  loc_6DC7A3: Ary1LdPr
  loc_6DC7A4: MemStI2 global_4
  loc_6DC7A7: LitVarI2 var_C4, 6
  loc_6DC7AC: FLdI2 var_96
  loc_6DC7AF: CI4UI1
  loc_6DC7B0: FLdRfVar var_88
  loc_6DC7B3: CVarRef
  loc_6DC7B8: FLdRfVar var_E4
  loc_6DC7BB: ImpAdCallFPR4  = Mid(, , )
  loc_6DC7C0: FLdRfVar var_E4
  loc_6DC7C3: CStrVarTmp
  loc_6DC7C4: FStStrNoPop var_190
  loc_6DC7C7: FLdI2 var_94
  loc_6DC7CA: CI4UI1
  loc_6DC7CB: ILdRf var_A8
  loc_6DC7CE: Ary1LdPr
  loc_6DC7CF: MemStStrCopy
  loc_6DC7D3: FFree1Str var_190
  loc_6DC7D6: FFreeVar var_C4 = ""
  loc_6DC7DD: FLdI2 var_94
  loc_6DC7E0: CI4UI1
  loc_6DC7E1: ILdRf var_A8
  loc_6DC7E4: Ary1LdPr
  loc_6DC7E5: MemLdStr global_0
  loc_6DC7E8: FnLenStr
  loc_6DC7E9: ILdRf var_AC
  loc_6DC7EC: GtI4
  loc_6DC7ED: BranchF loc_6DC7FF
  loc_6DC7F0: FLdI2 var_94
  loc_6DC7F3: CI4UI1
  loc_6DC7F4: ILdRf var_A8
  loc_6DC7F7: Ary1LdPr
  loc_6DC7F8: MemLdStr global_0
  loc_6DC7FB: FnLenStr
  loc_6DC7FC: FStR4 var_AC
  loc_6DC7FF: FLdI2 var_96
  loc_6DC802: LitI2_Byte 6
  loc_6DC804: AddI2
  loc_6DC805: FStI2 var_96
  loc_6DC808: FLdI2 var_94
  loc_6DC80B: LitI2_Byte 1
  loc_6DC80D: AddI2
  loc_6DC80E: FStI2 var_94
  loc_6DC811: LitI2_Byte 0
  loc_6DC813: CUI1I2
  loc_6DC815: FLdPr Me
  loc_6DC818: MemStUI1
  loc_6DC81C: Branch loc_6DC828
  loc_6DC81F: FLdI2 var_96
  loc_6DC822: LitI2_Byte 6
  loc_6DC824: AddI2
  loc_6DC825: FStI2 var_96
  loc_6DC828: FLdRfVar var_92
  loc_6DC82B: NextI2 var_15C, loc_6DC6D2
  loc_6DC830: FLdI2 var_92
  loc_6DC833: FLdRfVar var_92
  loc_6DC836: LitI2_Byte &H10
  loc_6DC838: ForI2 var_198
  loc_6DC83E: FLdI2 var_96
  loc_6DC841: LitI2_Byte 6
  loc_6DC843: AddI2
  loc_6DC844: FStI2 var_96
  loc_6DC847: FLdRfVar var_92
  loc_6DC84A: NextI2 var_198, loc_6DC83E
  loc_6DC84F: FLdPr Me
  loc_6DC852: MemLdUI1 global_62
  loc_6DC856: CI2UI1
  loc_6DC858: LitI2_Byte 1
  loc_6DC85A: EqI2
  loc_6DC85B: BranchF loc_6DC85F
  loc_6DC85E: ExitProcHresult
  loc_6DC85F: LitI2_Byte 0
  loc_6DC861: FStI2 var_94
  loc_6DC864: LitI2_Byte 1
  loc_6DC866: FLdRfVar var_92
  loc_6DC869: ImpAdLdUI1
  loc_6DC86D: CI2UI1
  loc_6DC86F: ForI2 var_19C
  loc_6DC875: LitVarI2 var_C4, 1
  loc_6DC87A: FLdI2 var_92
  loc_6DC87D: CI4UI1
  loc_6DC87E: ImpAdLdRf MemVar_74C1D8
  loc_6DC881: Ary1LdUI1
  loc_6DC883: CI4UI1
  loc_6DC884: FLdRfVar var_A0
  loc_6DC887: CVarRef
  loc_6DC88C: FLdRfVar var_E4
  loc_6DC88F: ImpAdCallFPR4  = Mid(, , )
  loc_6DC894: FLdRfVar var_E4
  loc_6DC897: LitVarStr var_114, "2"
  loc_6DC89C: HardType
  loc_6DC89D: EqVar var_104
  loc_6DC8A1: LitVarI2 var_124, 1
  loc_6DC8A6: FLdI2 var_92
  loc_6DC8A9: CI4UI1
  loc_6DC8AA: ImpAdLdRf MemVar_74C1D8
  loc_6DC8AD: Ary1LdUI1
  loc_6DC8AF: CI4UI1
  loc_6DC8B0: FLdRfVar var_A0
  loc_6DC8B3: CVarRef
  loc_6DC8B8: FLdRfVar var_144
  loc_6DC8BB: ImpAdCallFPR4  = Mid(, , )
  loc_6DC8C0: FLdRfVar var_144
  loc_6DC8C3: LitVarStr var_17C, "3"
  loc_6DC8C8: HardType
  loc_6DC8C9: EqVar var_154
  loc_6DC8CD: OrVar var_18C
  loc_6DC8D1: CBoolVarNull
  loc_6DC8D3: FFreeVar var_C4 = "": var_E4 = "": var_124 = ""
  loc_6DC8DE: BranchF loc_6DC92C
  loc_6DC8E1: LitVarI2 var_C4, 6
  loc_6DC8E6: FLdI2 var_96
  loc_6DC8E9: CI4UI1
  loc_6DC8EA: FLdRfVar var_88
  loc_6DC8ED: CVarRef
  loc_6DC8F2: FLdRfVar var_E4
  loc_6DC8F5: ImpAdCallFPR4  = Mid(, , )
  loc_6DC8FA: FLdRfVar var_E4
  loc_6DC8FD: CStrVarTmp
  loc_6DC8FE: FStStrNoPop var_190
  loc_6DC901: FLdI2 var_94
  loc_6DC904: CI4UI1
  loc_6DC905: ILdRf var_A8
  loc_6DC908: Ary1LdPr
  loc_6DC909: MemStStrCopy
  loc_6DC90D: FFree1Str var_190
  loc_6DC910: FFreeVar var_C4 = ""
  loc_6DC917: FLdI2 var_96
  loc_6DC91A: LitI2_Byte 6
  loc_6DC91C: AddI2
  loc_6DC91D: FStI2 var_96
  loc_6DC920: FLdI2 var_94
  loc_6DC923: LitI2_Byte 1
  loc_6DC925: AddI2
  loc_6DC926: FStI2 var_94
  loc_6DC929: Branch loc_6DC935
  loc_6DC92C: FLdI2 var_96
  loc_6DC92F: LitI2_Byte 6
  loc_6DC931: AddI2
  loc_6DC932: FStI2 var_96
  loc_6DC935: FLdRfVar var_92
  loc_6DC938: NextI2 var_19C, loc_6DC875
  loc_6DC93D: FLdI2 var_92
  loc_6DC940: FLdRfVar var_92
  loc_6DC943: LitI2_Byte &H10
  loc_6DC945: ForI2 var_1A0
  loc_6DC94B: FLdI2 var_96
  loc_6DC94E: LitI2_Byte 6
  loc_6DC950: AddI2
  loc_6DC951: FStI2 var_96
  loc_6DC954: FLdRfVar var_92
  loc_6DC957: NextI2 var_1A0, loc_6DC94B
  loc_6DC95C: LitI2_Byte 0
  loc_6DC95E: FStI2 var_94
  loc_6DC961: LitI2_Byte 1
  loc_6DC963: FLdRfVar var_92
  loc_6DC966: ImpAdLdUI1
  loc_6DC96A: CI2UI1
  loc_6DC96C: ForI2 var_1A4
  loc_6DC972: LitVarI2 var_C4, 1
  loc_6DC977: FLdI2 var_92
  loc_6DC97A: CI4UI1
  loc_6DC97B: ImpAdLdRf MemVar_74C1D8
  loc_6DC97E: Ary1LdUI1
  loc_6DC980: CI4UI1
  loc_6DC981: FLdRfVar var_A0
  loc_6DC984: CVarRef
  loc_6DC989: FLdRfVar var_E4
  loc_6DC98C: ImpAdCallFPR4  = Mid(, , )
  loc_6DC991: FLdRfVar var_E4
  loc_6DC994: LitVarStr var_114, "2"
  loc_6DC999: HardType
  loc_6DC99A: EqVar var_104
  loc_6DC99E: LitVarI2 var_124, 1
  loc_6DC9A3: FLdI2 var_92
  loc_6DC9A6: CI4UI1
  loc_6DC9A7: ImpAdLdRf MemVar_74C1D8
  loc_6DC9AA: Ary1LdUI1
  loc_6DC9AC: CI4UI1
  loc_6DC9AD: FLdRfVar var_A0
  loc_6DC9B0: CVarRef
  loc_6DC9B5: FLdRfVar var_144
  loc_6DC9B8: ImpAdCallFPR4  = Mid(, , )
  loc_6DC9BD: FLdRfVar var_144
  loc_6DC9C0: LitVarStr var_17C, "3"
  loc_6DC9C5: HardType
  loc_6DC9C6: EqVar var_154
  loc_6DC9CA: OrVar var_18C
  loc_6DC9CE: CBoolVarNull
  loc_6DC9D0: FFreeVar var_C4 = "": var_E4 = "": var_124 = ""
  loc_6DC9DB: BranchF loc_6DCA29
  loc_6DC9DE: LitVarI2 var_C4, 6
  loc_6DC9E3: FLdI2 var_96
  loc_6DC9E6: CI4UI1
  loc_6DC9E7: FLdRfVar var_88
  loc_6DC9EA: CVarRef
  loc_6DC9EF: FLdRfVar var_E4
  loc_6DC9F2: ImpAdCallFPR4  = Mid(, , )
  loc_6DC9F7: FLdRfVar var_E4
  loc_6DC9FA: CStrVarTmp
  loc_6DC9FB: FStStrNoPop var_190
  loc_6DC9FE: FLdI2 var_94
  loc_6DCA01: CI4UI1
  loc_6DCA02: ILdRf var_A8
  loc_6DCA05: Ary1LdPr
  loc_6DCA06: MemStStrCopy
  loc_6DCA0A: FFree1Str var_190
  loc_6DCA0D: FFreeVar var_C4 = ""
  loc_6DCA14: FLdI2 var_96
  loc_6DCA17: LitI2_Byte 6
  loc_6DCA19: AddI2
  loc_6DCA1A: FStI2 var_96
  loc_6DCA1D: FLdI2 var_94
  loc_6DCA20: LitI2_Byte 1
  loc_6DCA22: AddI2
  loc_6DCA23: FStI2 var_94
  loc_6DCA26: Branch loc_6DCA32
  loc_6DCA29: FLdI2 var_96
  loc_6DCA2C: LitI2_Byte 6
  loc_6DCA2E: AddI2
  loc_6DCA2F: FStI2 var_96
  loc_6DCA32: FLdRfVar var_92
  loc_6DCA35: NextI2 var_1A4, loc_6DC972
  loc_6DCA3A: FLdI2 var_92
  loc_6DCA3D: FLdRfVar var_92
  loc_6DCA40: LitI2_Byte &H10
  loc_6DCA42: ForI2 var_1A8
  loc_6DCA48: FLdI2 var_96
  loc_6DCA4B: LitI2_Byte 6
  loc_6DCA4D: AddI2
  loc_6DCA4E: FStI2 var_96
  loc_6DCA51: FLdRfVar var_92
  loc_6DCA54: NextI2 var_1A8, loc_6DCA48
  loc_6DCA59: FLdI2 var_94
  loc_6DCA5C: LitI2_Byte 1
  loc_6DCA5E: AddI2
  loc_6DCA5F: CI4UI1
  loc_6DCA60: CVarI4
  loc_6DCA64: PopAdLdVar
  loc_6DCA65: FLdPrThis
  loc_6DCA66: VCallAd Control_ID_TablaTank
  loc_6DCA69: FStAdFunc var_B0
  loc_6DCA6C: FLdPr var_B0
  loc_6DCA6F: LateIdSt
  loc_6DCA74: FFree1Ad var_B0
  loc_6DCA77: ILdRf var_AC
  loc_6DCA7A: PopTmpLdAdStr var_1AC
  loc_6DCA7D: from_stack_2v = Proc_1_12_650A80(from_stack_1v)
  loc_6DCA82: LitVar_FALSE
  loc_6DCA86: PopAdLdVar
  loc_6DCA87: FLdPrThis
  loc_6DCA88: VCallAd Control_ID_TablaTank
  loc_6DCA8B: FStAdFunc var_B0
  loc_6DCA8E: FLdPr var_B0
  loc_6DCA91: LateIdSt
  loc_6DCA96: FFree1Ad var_B0
  loc_6DCA99: LitI2_Byte 1
  loc_6DCA9B: FLdRfVar var_92
  loc_6DCA9E: FLdI2 var_94
  loc_6DCAA1: ForI2 var_1B0
  loc_6DCAA7: FLdI2 var_92
  loc_6DCAAA: CI4UI1
  loc_6DCAAB: CVarI4
  loc_6DCAAF: PopAdLdVar
  loc_6DCAB0: LitVarI4
  loc_6DCAB8: PopAdLdVar
  loc_6DCAB9: FLdI2 var_92
  loc_6DCABC: LitI2_Byte 1
  loc_6DCABE: SubI2
  loc_6DCABF: CI4UI1
  loc_6DCAC0: ILdRf var_A8
  loc_6DCAC3: Ary1LdPr
  loc_6DCAC4: MemLdI2 global_4
  loc_6DCAC7: CStrUI1
  loc_6DCAC9: CVarStr var_C4
  loc_6DCACC: PopAdLdVar
  loc_6DCACD: FLdPrThis
  loc_6DCACE: VCallAd Control_ID_TablaTank
  loc_6DCAD1: FStAdFunc var_B0
  loc_6DCAD4: FLdPr var_B0
  loc_6DCAD7: LateIdCallSt
  loc_6DCADF: FFree1Ad var_B0
  loc_6DCAE2: FFree1Var var_C4 = ""
  loc_6DCAE5: FLdI2 var_92
  loc_6DCAE8: CI4UI1
  loc_6DCAE9: CVarI4
  loc_6DCAED: PopAdLdVar
  loc_6DCAEE: LitVarI4
  loc_6DCAF6: PopAdLdVar
  loc_6DCAF7: FLdI2 var_92
  loc_6DCAFA: LitI2_Byte 1
  loc_6DCAFC: SubI2
  loc_6DCAFD: CI4UI1
  loc_6DCAFE: ILdRf var_A8
  loc_6DCB01: AryLock
  loc_6DCB04: Ary1LdPr
  loc_6DCB05: MemLdRfVar from_stack_1.global_0
  loc_6DCB08: CDargRef
  loc_6DCB0C: FLdPrThis
  loc_6DCB0D: VCallAd Control_ID_TablaTank
  loc_6DCB10: FStAdFunc var_B0
  loc_6DCB13: FLdPr var_B0
  loc_6DCB16: LateIdCallSt
  loc_6DCB1E: AryUnlock
  loc_6DCB21: FFree1Ad var_B0
  loc_6DCB24: FLdI2 var_92
  loc_6DCB27: CI4UI1
  loc_6DCB28: CVarI4
  loc_6DCB2C: PopAdLdVar
  loc_6DCB2D: LitVarI4
  loc_6DCB35: PopAdLdVar
  loc_6DCB36: FLdI2 var_92
  loc_6DCB39: LitI2_Byte 1
  loc_6DCB3B: SubI2
  loc_6DCB3C: CI4UI1
  loc_6DCB3D: ILdRf var_A8
  loc_6DCB40: AryLock
  loc_6DCB43: Ary1LdPr
  loc_6DCB44: MemLdRfVar from_stack_1.global_8
  loc_6DCB47: CDargRef
  loc_6DCB4B: FLdPrThis
  loc_6DCB4C: VCallAd Control_ID_TablaTank
  loc_6DCB4F: FStAdFunc var_B0
  loc_6DCB52: FLdPr var_B0
  loc_6DCB55: LateIdCallSt
  loc_6DCB5D: AryUnlock
  loc_6DCB60: FFree1Ad var_B0
  loc_6DCB63: FLdI2 var_92
  loc_6DCB66: CI4UI1
  loc_6DCB67: CVarI4
  loc_6DCB6B: PopAdLdVar
  loc_6DCB6C: LitVarI4
  loc_6DCB74: PopAdLdVar
  loc_6DCB75: FLdI2 var_92
  loc_6DCB78: LitI2_Byte 1
  loc_6DCB7A: SubI2
  loc_6DCB7B: CI4UI1
  loc_6DCB7C: ILdRf var_A8
  loc_6DCB7F: AryLock
  loc_6DCB82: Ary1LdPr
  loc_6DCB83: MemLdRfVar from_stack_1.global_12
  loc_6DCB86: CDargRef
  loc_6DCB8A: FLdPrThis
  loc_6DCB8B: VCallAd Control_ID_TablaTank
  loc_6DCB8E: FStAdFunc var_B0
  loc_6DCB91: FLdPr var_B0
  loc_6DCB94: LateIdCallSt
  loc_6DCB9C: AryUnlock
  loc_6DCB9F: FFree1Ad var_B0
  loc_6DCBA2: FLdI2 var_92
  loc_6DCBA5: CI4UI1
  loc_6DCBA6: CVarI4
  loc_6DCBAA: PopAdLdVar
  loc_6DCBAB: LitVarI4
  loc_6DCBB3: PopAdLdVar
  loc_6DCBB4: FLdI2 var_92
  loc_6DCBB7: LitI2_Byte 1
  loc_6DCBB9: SubI2
  loc_6DCBBA: CI4UI1
  loc_6DCBBB: ILdRf var_A8
  loc_6DCBBE: AryLock
  loc_6DCBC1: Ary1LdPr
  loc_6DCBC2: MemLdRfVar from_stack_1.global_16
  loc_6DCBC5: CDargRef
  loc_6DCBC9: FLdPrThis
  loc_6DCBCA: VCallAd Control_ID_TablaTank
  loc_6DCBCD: FStAdFunc var_B0
  loc_6DCBD0: FLdPr var_B0
  loc_6DCBD3: LateIdCallSt
  loc_6DCBDB: AryUnlock
  loc_6DCBDE: FFree1Ad var_B0
  loc_6DCBE1: FLdI2 var_92
  loc_6DCBE4: LitI2_Byte 1
  loc_6DCBE6: SubI2
  loc_6DCBE7: CI4UI1
  loc_6DCBE8: ILdRf var_A8
  loc_6DCBEB: Ary1LdPr
  loc_6DCBEC: MemLdStr global_12
  loc_6DCBEF: ImpAdCallFPR4 push Val()
  loc_6DCBF4: CR8R8
  loc_6DCBF5: LitI2_Byte 0
  loc_6DCBF7: CR8I2
  loc_6DCBF8: NeR8
  loc_6DCBF9: BranchF loc_6DCC0C
  loc_6DCBFC: LitI2_Byte 4
  loc_6DCBFE: PopTmpLdAd2 var_B2
  loc_6DCC01: FLdRfVar var_92
  loc_6DCC04: from_stack_3v = Proc_1_14_5F7544(from_stack_1v, from_stack_2v)
  loc_6DCC09: Branch loc_6DCC34
  loc_6DCC0C: FLdI2 var_92
  loc_6DCC0F: LitI2_Byte 1
  loc_6DCC11: SubI2
  loc_6DCC12: CI4UI1
  loc_6DCC13: ILdRf var_A8
  loc_6DCC16: Ary1LdPr
  loc_6DCC17: MemLdStr global_16
  loc_6DCC1A: ImpAdCallFPR4 push Val()
  loc_6DCC1F: CR8R8
  loc_6DCC20: LitI2_Byte 0
  loc_6DCC22: CR8I2
  loc_6DCC23: NeR8
  loc_6DCC24: BranchF loc_6DCC34
  loc_6DCC27: LitI2_Byte 3
  loc_6DCC29: PopTmpLdAd2 var_B2
  loc_6DCC2C: FLdRfVar var_92
  loc_6DCC2F: from_stack_3v = Proc_1_14_5F7544(from_stack_1v, from_stack_2v)
  loc_6DCC34: FLdRfVar var_92
  loc_6DCC37: NextI2 var_1B0, loc_6DCAA7
  loc_6DCC3C: LitVar_TRUE var_D4
  loc_6DCC3F: PopAdLdVar
  loc_6DCC40: FLdPrThis
  loc_6DCC41: VCallAd Control_ID_TablaTank
  loc_6DCC44: FStAdFunc var_B0
  loc_6DCC47: FLdPr var_B0
  loc_6DCC4A: LateIdSt
  loc_6DCC4F: FFree1Ad var_B0
  loc_6DCC52: ExitProcHresult
  loc_6DCC53: LitI4 &HD
  loc_6DCC58: FLdRfVar var_C4
  loc_6DCC5B: ImpAdCallFPR4  = Chr()
  loc_6DCC60: FLdRfVar var_1AC
  loc_6DCC63: ImpAdCallI2 Err 'rtcErrObj
  loc_6DCC68: FStAdFunc var_B0
  loc_6DCC6B: FLdPr var_B0
  loc_6DCC6E:  = Err.Number
  loc_6DCC73: LitI4 &HD
  loc_6DCC78: FLdRfVar var_124
  loc_6DCC7B: ImpAdCallFPR4  = Chr()
  loc_6DCC80: FLdRfVar var_190
  loc_6DCC83: ImpAdCallI2 Err 'rtcErrObj
  loc_6DCC88: FStAdFunc var_158
  loc_6DCC8B: FLdPr var_158
  loc_6DCC8E:  = Err.Description
  loc_6DCC93: LitVar_Missing var_1E4
  loc_6DCC96: LitVar_Missing var_1D4
  loc_6DCC99: LitVar_Missing var_1C4
  loc_6DCC9C: LitI4 &H40
  loc_6DCCA1: LitVarStr var_D4, "Error al cargar las mediciones"
  loc_6DCCA6: FLdRfVar var_C4
  loc_6DCCA9: ConcatVar var_E4
  loc_6DCCAD: ILdRf var_1AC
  loc_6DCCB0: CVarI4
  loc_6DCCB4: ConcatVar var_104
  loc_6DCCB8: FLdRfVar var_124
  loc_6DCCBB: ConcatVar var_144
  loc_6DCCBF: FLdZeroAd var_190
  loc_6DCCC2: CVarStr var_154
  loc_6DCCC5: ConcatVar var_18C
  loc_6DCCC9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6DCCCE: FFreeAd var_B0 = ""
  loc_6DCCD5: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = "": var_18C = "": var_1C4 = "": var_1D4 = ""
  loc_6DCCEC: ILdRf Me
  loc_6DCCEF: FStAdNoPop
  loc_6DCCF3: ImpAdLdRf MemVar_7520D4
  loc_6DCCF6: NewIfNullPr Global
  loc_6DCCF9: Global.Unload from_stack_1
  loc_6DCCFE: FFree1Ad var_B0
  loc_6DCD01: ExitProcHresult
End Function

Private Function Proc_1_12_650A80(arg_C) '650A80
  'Data Table: 425F9C
  loc_6507C0: LitVarI4
  loc_6507C8: PopAdLdVar
  loc_6507C9: LitVarI4
  loc_6507D1: PopAdLdVar
  loc_6507D2: FLdPrThis
  loc_6507D3: VCallAd Control_ID_TablaTank
  loc_6507D6: FStAdFunc var_AC
  loc_6507D9: FLdPr var_AC
  loc_6507DC: LateIdCallSt
  loc_6507E4: FFree1Ad var_AC
  loc_6507E7: LitVarI4
  loc_6507EF: PopAdLdVar
  loc_6507F0: LitI4 &HB4
  loc_6507F5: ILdI4 arg_C
  loc_6507F8: MulI4
  loc_6507F9: CVarI4
  loc_6507FD: PopAdLdVar
  loc_6507FE: FLdPrThis
  loc_6507FF: VCallAd Control_ID_TablaTank
  loc_650802: FStAdFunc var_AC
  loc_650805: FLdPr var_AC
  loc_650808: LateIdCallSt
  loc_650810: FFree1Ad var_AC
  loc_650813: LitVarI4
  loc_65081B: PopAdLdVar
  loc_65081C: LitVarI4
  loc_650824: PopAdLdVar
  loc_650825: FLdPrThis
  loc_650826: VCallAd Control_ID_TablaTank
  loc_650829: FStAdFunc var_AC
  loc_65082C: FLdPr var_AC
  loc_65082F: LateIdCallSt
  loc_650837: FFree1Ad var_AC
  loc_65083A: LitVarI4
  loc_650842: PopAdLdVar
  loc_650843: LitVarI4
  loc_65084B: PopAdLdVar
  loc_65084C: FLdPrThis
  loc_65084D: VCallAd Control_ID_TablaTank
  loc_650850: FStAdFunc var_AC
  loc_650853: FLdPr var_AC
  loc_650856: LateIdCallSt
  loc_65085E: FFree1Ad var_AC
  loc_650861: LitVarI4
  loc_650869: PopAdLdVar
  loc_65086A: LitVarI4
  loc_650872: PopAdLdVar
  loc_650873: FLdPrThis
  loc_650874: VCallAd Control_ID_TablaTank
  loc_650877: FStAdFunc var_AC
  loc_65087A: FLdPr var_AC
  loc_65087D: LateIdCallSt
  loc_650885: FFree1Ad var_AC
  loc_650888: LitI4 0
  loc_65088D: IStI4 arg_C
  loc_650890: LitI2_Byte 0
  loc_650892: FLdRfVar var_86
  loc_650895: FLdPrThis
  loc_650896: VCallAd Control_ID_TablaTank
  loc_650899: FStAdFunc var_AC
  loc_65089C: FLdPr var_AC
  loc_65089F: LateIdLdVar var_BC DispID_5 0
  loc_6508A6: CI4Var
  loc_6508A8: LitI4 1
  loc_6508AD: SubI4
  loc_6508AE: CI2I4
  loc_6508AF: FFree1Ad var_AC
  loc_6508B2: FFree1Var var_BC = ""
  loc_6508B5: ForI2 var_C0
  loc_6508BB: ILdI4 arg_C
  loc_6508BE: FLdI2 var_86
  loc_6508C1: CI4UI1
  loc_6508C2: CVarI4
  loc_6508C6: PopAdLdVar
  loc_6508C7: FLdPrThis
  loc_6508C8: VCallAd Control_ID_TablaTank
  loc_6508CB: FStAdFunc var_AC
  loc_6508CE: FLdPr var_AC
  loc_6508D1: LateIdCallLdVar
  loc_6508DB: CI4Var
  loc_6508DD: AddI4
  loc_6508DE: IStI4 arg_C
  loc_6508E1: FFree1Ad var_AC
  loc_6508E4: FFree1Var var_BC = ""
  loc_6508E7: FLdRfVar var_86
  loc_6508EA: NextI2 var_C0, loc_6508BB
  loc_6508EF: ILdI4 arg_C
  loc_6508F2: LitI4 &H1388
  loc_6508F7: LtI4
  loc_6508F8: BranchF loc_650976
  loc_6508FB: LitI4 &H1388
  loc_650900: IStI4 arg_C
  loc_650903: LitVarI4
  loc_65090B: PopAdLdVar
  loc_65090C: ILdI4 arg_C
  loc_65090F: LitVarI4
  loc_650917: PopAdLdVar
  loc_650918: FLdPrThis
  loc_650919: VCallAd Control_ID_TablaTank
  loc_65091C: FStAdFunc var_AC
  loc_65091F: FLdPr var_AC
  loc_650922: LateIdCallLdVar
  loc_65092C: CI4Var
  loc_65092E: SubI4
  loc_65092F: LitVarI4
  loc_650937: PopAdLdVar
  loc_650938: FLdPrThis
  loc_650939: VCallAd Control_ID_TablaTank
  loc_65093C: FStAdFunc var_C4
  loc_65093F: FLdPr var_C4
  loc_650942: LateIdCallLdVar
  loc_65094C: CI4Var
  loc_65094E: SubI4
  loc_65094F: CVarI4
  loc_650953: PopAdLdVar
  loc_650954: FLdPrThis
  loc_650955: VCallAd Control_ID_TablaTank
  loc_650958: FStAdFunc var_F8
  loc_65095B: FLdPr var_F8
  loc_65095E: LateIdCallSt
  loc_650966: FFreeAd var_AC = "": var_C4 = ""
  loc_65096F: FFreeVar var_BC = ""
  loc_650976: ILdI4 arg_C
  loc_650979: LitI4 &H15E
  loc_65097E: AddI4
  loc_65097F: CR8I4
  loc_650980: CVarR4
  loc_650984: PopAdLdVar
  loc_650985: FLdPrThis
  loc_650986: VCallAd Control_ID_TablaTank
  loc_650989: FStAdFunc var_AC
  loc_65098C: FLdPr var_AC
  loc_65098F: LateIdSt
  loc_650994: FFree1Ad var_AC
  loc_650997: FLdPrThis
  loc_650998: VCallAd Control_ID_TablaTank
  loc_65099B: FStAdFunc var_AC
  loc_65099E: FLdPr var_AC
  loc_6509A1: LateIdLdVar var_BC DispID_5 -32767
  loc_6509A8: CR8Var
  loc_6509AA: LitI2_Byte &H78
  loc_6509AC: CR8I2
  loc_6509AD: AddR8
  loc_6509AE: PopFPR4
  loc_6509AF: FLdPr Me
  loc_6509B2: Me.Width = from_stack_1s
  loc_6509B7: FFree1Ad var_AC
  loc_6509BA: FFree1Var var_BC = ""
  loc_6509BD: FLdPrThis
  loc_6509BE: VCallAd Control_ID_TablaTank
  loc_6509C1: FStAdFunc var_C4
  loc_6509C4: FLdPr var_C4
  loc_6509C7: LateIdLdVar var_D4 DispID_5 -32767
  loc_6509CE: PopAd
  loc_6509D0: FLdRfVar var_FC
  loc_6509D3: FLdPrThis
  loc_6509D4: VCallAd Control_ID_Command2
  loc_6509D7: FStAdFunc var_F8
  loc_6509DA: FLdPr var_F8
  loc_6509DD:  = Me.Width
  loc_6509E2: FLdPrThis
  loc_6509E3: VCallAd Control_ID_TablaTank
  loc_6509E6: FStAdFunc var_AC
  loc_6509E9: FLdPr var_AC
  loc_6509EC: LateIdLdVar var_BC DispID_3 -32767
  loc_6509F3: CR8Var
  loc_6509F5: FLdRfVar var_D4
  loc_6509F8: CR8Var
  loc_6509FA: AddR8
  loc_6509FB: FLdFPR4 var_FC
  loc_6509FE: SubR4
  loc_6509FF: PopFPR4
  loc_650A00: FLdPrThis
  loc_650A01: VCallAd Control_ID_Command2
  loc_650A04: FStAdFunc var_100
  loc_650A07: FLdPr var_100
  loc_650A0A: Me.Left = from_stack_1s
  loc_650A0F: FFreeAd var_AC = "": var_C4 = "": var_F8 = ""
  loc_650A1A: FFreeVar var_BC = ""
  loc_650A21: FLdRfVar var_104
  loc_650A24: FLdPrThis
  loc_650A25: VCallAd Control_ID_Command3
  loc_650A28: FStAdFunc var_AC
  loc_650A2B: FLdPr var_AC
  loc_650A2E:  = Me.Width
  loc_650A33: FLdRfVar var_FC
  loc_650A36: FLdPr Me
  loc_650A39:  = Me.Width
  loc_650A3E: FLdFPR4 var_FC
  loc_650A41: LitI2_Byte 2
  loc_650A43: CR8I2
  loc_650A44: DivR8
  loc_650A45: FLdFPR4 var_104
  loc_650A48: LitI2_Byte 2
  loc_650A4A: CR8I2
  loc_650A4B: DivR8
  loc_650A4C: SubR4
  loc_650A4D: LitI2_Byte &H14
  loc_650A4F: CR8I2
  loc_650A50: SubR4
  loc_650A51: PopFPR4
  loc_650A52: FLdPrThis
  loc_650A53: VCallAd Control_ID_Command3
  loc_650A56: FStAdFunc var_C4
  loc_650A59: FLdPr var_C4
  loc_650A5C: Me.Left = from_stack_1s
  loc_650A61: FFreeAd var_AC = ""
  loc_650A68: ILdRf Me
  loc_650A6B: CastAd
  loc_650A6E: FStAdFunc var_AC
  loc_650A71: FLdRfVar var_AC
  loc_650A74: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_650A79: FFree1Ad var_AC
  loc_650A7C: ExitProcHresult
  loc_650A7D: CStrVarTmp
  loc_650A7E: FStStr arg_2470
End Function

Private Function Proc_1_13_615C60() '615C60
  'Data Table: 425F9C
  loc_615B30: LitVar_Missing var_94
  loc_615B33: PopAdLdVar
  loc_615B34: LitStr "ENERO"
  loc_615B37: FLdPrThis
  loc_615B38: VCallAd Control_ID_Combo1
  loc_615B3B: FStAdFunc var_98
  loc_615B3E: FLdPr var_98
  loc_615B41: Me.AddItem from_stack_1, from_stack_2
  loc_615B46: FFree1Ad var_98
  loc_615B49: LitVar_Missing var_94
  loc_615B4C: PopAdLdVar
  loc_615B4D: LitStr "FEBRERO"
  loc_615B50: FLdPrThis
  loc_615B51: VCallAd Control_ID_Combo1
  loc_615B54: FStAdFunc var_98
  loc_615B57: FLdPr var_98
  loc_615B5A: Me.AddItem from_stack_1, from_stack_2
  loc_615B5F: FFree1Ad var_98
  loc_615B62: LitVar_Missing var_94
  loc_615B65: PopAdLdVar
  loc_615B66: LitStr "MARZO"
  loc_615B69: FLdPrThis
  loc_615B6A: VCallAd Control_ID_Combo1
  loc_615B6D: FStAdFunc var_98
  loc_615B70: FLdPr var_98
  loc_615B73: Me.AddItem from_stack_1, from_stack_2
  loc_615B78: FFree1Ad var_98
  loc_615B7B: LitVar_Missing var_94
  loc_615B7E: PopAdLdVar
  loc_615B7F: LitStr "ABRIL"
  loc_615B82: FLdPrThis
  loc_615B83: VCallAd Control_ID_Combo1
  loc_615B86: FStAdFunc var_98
  loc_615B89: FLdPr var_98
  loc_615B8C: Me.AddItem from_stack_1, from_stack_2
  loc_615B91: FFree1Ad var_98
  loc_615B94: LitVar_Missing var_94
  loc_615B97: PopAdLdVar
  loc_615B98: LitStr "MAYO"
  loc_615B9B: FLdPrThis
  loc_615B9C: VCallAd Control_ID_Combo1
  loc_615B9F: FStAdFunc var_98
  loc_615BA2: FLdPr var_98
  loc_615BA5: Me.AddItem from_stack_1, from_stack_2
  loc_615BAA: FFree1Ad var_98
  loc_615BAD: LitVar_Missing var_94
  loc_615BB0: PopAdLdVar
  loc_615BB1: LitStr "JUNIO"
  loc_615BB4: FLdPrThis
  loc_615BB5: VCallAd Control_ID_Combo1
  loc_615BB8: FStAdFunc var_98
  loc_615BBB: FLdPr var_98
  loc_615BBE: Me.AddItem from_stack_1, from_stack_2
  loc_615BC3: FFree1Ad var_98
  loc_615BC6: LitVar_Missing var_94
  loc_615BC9: PopAdLdVar
  loc_615BCA: LitStr "JULIO"
  loc_615BCD: FLdPrThis
  loc_615BCE: VCallAd Control_ID_Combo1
  loc_615BD1: FStAdFunc var_98
  loc_615BD4: FLdPr var_98
  loc_615BD7: Me.AddItem from_stack_1, from_stack_2
  loc_615BDC: FFree1Ad var_98
  loc_615BDF: LitVar_Missing var_94
  loc_615BE2: PopAdLdVar
  loc_615BE3: LitStr "AGOSTO"
  loc_615BE6: FLdPrThis
  loc_615BE7: VCallAd Control_ID_Combo1
  loc_615BEA: FStAdFunc var_98
  loc_615BED: FLdPr var_98
  loc_615BF0: Me.AddItem from_stack_1, from_stack_2
  loc_615BF5: FFree1Ad var_98
  loc_615BF8: LitVar_Missing var_94
  loc_615BFB: PopAdLdVar
  loc_615BFC: LitStr "SEPTIEMBRE"
  loc_615BFF: FLdPrThis
  loc_615C00: VCallAd Control_ID_Combo1
  loc_615C03: FStAdFunc var_98
  loc_615C06: FLdPr var_98
  loc_615C09: Me.AddItem from_stack_1, from_stack_2
  loc_615C0E: FFree1Ad var_98
  loc_615C11: LitVar_Missing var_94
  loc_615C14: PopAdLdVar
  loc_615C15: LitStr "OCTUBRE"
  loc_615C18: FLdPrThis
  loc_615C19: VCallAd Control_ID_Combo1
  loc_615C1C: FStAdFunc var_98
  loc_615C1F: FLdPr var_98
  loc_615C22: Me.AddItem from_stack_1, from_stack_2
  loc_615C27: FFree1Ad var_98
  loc_615C2A: LitVar_Missing var_94
  loc_615C2D: PopAdLdVar
  loc_615C2E: LitStr "NOVIEMBRE"
  loc_615C31: FLdPrThis
  loc_615C32: VCallAd Control_ID_Combo1
  loc_615C35: FStAdFunc var_98
  loc_615C38: FLdPr var_98
  loc_615C3B: Me.AddItem from_stack_1, from_stack_2
  loc_615C40: FFree1Ad var_98
  loc_615C43: LitVar_Missing var_94
  loc_615C46: PopAdLdVar
  loc_615C47: LitStr "DICIEMBRE"
  loc_615C4A: FLdPrThis
  loc_615C4B: VCallAd Control_ID_Combo1
  loc_615C4E: FStAdFunc var_98
  loc_615C51: FLdPr var_98
  loc_615C54: Me.AddItem from_stack_1, from_stack_2
  loc_615C59: FFree1Ad var_98
  loc_615C5C: ExitProcHresult
End Function

Private Function Proc_1_14_5F7544(arg_C, arg_10) '5F7544
  'Data Table: 425F9C
  loc_5F7480: FLdPrThis
  loc_5F7481: VCallAd Control_ID_TablaTank
  loc_5F7484: FStAdFunc var_8C
  loc_5F7487: FLdPr var_8C
  loc_5F748A: LateIdLdVar var_9C DispID_10 0
  loc_5F7491: CI4Var
  loc_5F7493: CI2I4
  loc_5F7494: FStI2 var_86
  loc_5F7497: FFree1Ad var_8C
  loc_5F749A: FFree1Var var_9C = ""
  loc_5F749D: FLdPrThis
  loc_5F749E: VCallAd Control_ID_TablaTank
  loc_5F74A1: FStAdFunc var_8C
  loc_5F74A4: FLdPr var_8C
  loc_5F74A7: LateIdLdVar var_9C DispID_11 0
  loc_5F74AE: CI4Var
  loc_5F74B0: CI2I4
  loc_5F74B1: FStI2 var_88
  loc_5F74B4: FFree1Ad var_8C
  loc_5F74B7: FFree1Var var_9C = ""
  loc_5F74BA: ILdI2 arg_C
  loc_5F74BD: CI4UI1
  loc_5F74BE: CVarI4
  loc_5F74C2: PopAdLdVar
  loc_5F74C3: FLdPrThis
  loc_5F74C4: VCallAd Control_ID_TablaTank
  loc_5F74C7: FStAdFunc var_8C
  loc_5F74CA: FLdPr var_8C
  loc_5F74CD: LateIdSt
  loc_5F74D2: FFree1Ad var_8C
  loc_5F74D5: ILdI2 arg_10
  loc_5F74D8: CI4UI1
  loc_5F74D9: CVarI4
  loc_5F74DD: PopAdLdVar
  loc_5F74DE: FLdPrThis
  loc_5F74DF: VCallAd Control_ID_TablaTank
  loc_5F74E2: FStAdFunc var_8C
  loc_5F74E5: FLdPr var_8C
  loc_5F74E8: LateIdSt
  loc_5F74ED: FFree1Ad var_8C
  loc_5F74F0: LitVarI4
  loc_5F74F8: PopAdLdVar
  loc_5F74F9: FLdPrThis
  loc_5F74FA: VCallAd Control_ID_TablaTank
  loc_5F74FD: FStAdFunc var_8C
  loc_5F7500: FLdPr var_8C
  loc_5F7503: LateIdSt
  loc_5F7508: FFree1Ad var_8C
  loc_5F750B: FLdI2 var_86
  loc_5F750E: CI4UI1
  loc_5F750F: CVarI4
  loc_5F7513: PopAdLdVar
  loc_5F7514: FLdPrThis
  loc_5F7515: VCallAd Control_ID_TablaTank
  loc_5F7518: FStAdFunc var_8C
  loc_5F751B: FLdPr var_8C
  loc_5F751E: LateIdSt
  loc_5F7523: FFree1Ad var_8C
  loc_5F7526: FLdI2 var_88
  loc_5F7529: CI4UI1
  loc_5F752A: CVarI4
  loc_5F752E: PopAdLdVar
  loc_5F752F: FLdPrThis
  loc_5F7530: VCallAd Control_ID_TablaTank
  loc_5F7533: FStAdFunc var_8C
  loc_5F7536: FLdPr var_8C
  loc_5F7539: LateIdSt
  loc_5F753E: FFree1Ad var_8C
  loc_5F7541: ExitProcHresult
End Function

Private Function Proc_1_15_5F8EDC(arg_C, arg_10) '5F8EDC
  'Data Table: 425F9C
  loc_5F8E18: FLdPrThis
  loc_5F8E19: VCallAd Control_ID_TablaTank
  loc_5F8E1C: FStAdFunc var_8C
  loc_5F8E1F: FLdPr var_8C
  loc_5F8E22: LateIdLdVar var_9C DispID_10 0
  loc_5F8E29: CI4Var
  loc_5F8E2B: CI2I4
  loc_5F8E2C: FStI2 var_86
  loc_5F8E2F: FFree1Ad var_8C
  loc_5F8E32: FFree1Var var_9C = ""
  loc_5F8E35: FLdPrThis
  loc_5F8E36: VCallAd Control_ID_TablaTank
  loc_5F8E39: FStAdFunc var_8C
  loc_5F8E3C: FLdPr var_8C
  loc_5F8E3F: LateIdLdVar var_9C DispID_11 0
  loc_5F8E46: CI4Var
  loc_5F8E48: CI2I4
  loc_5F8E49: FStI2 var_88
  loc_5F8E4C: FFree1Ad var_8C
  loc_5F8E4F: FFree1Var var_9C = ""
  loc_5F8E52: ILdI2 arg_C
  loc_5F8E55: CI4UI1
  loc_5F8E56: CVarI4
  loc_5F8E5A: PopAdLdVar
  loc_5F8E5B: FLdPrThis
  loc_5F8E5C: VCallAd Control_ID_TablaTank
  loc_5F8E5F: FStAdFunc var_8C
  loc_5F8E62: FLdPr var_8C
  loc_5F8E65: LateIdSt
  loc_5F8E6A: FFree1Ad var_8C
  loc_5F8E6D: ILdI2 arg_10
  loc_5F8E70: CI4UI1
  loc_5F8E71: CVarI4
  loc_5F8E75: PopAdLdVar
  loc_5F8E76: FLdPrThis
  loc_5F8E77: VCallAd Control_ID_TablaTank
  loc_5F8E7A: FStAdFunc var_8C
  loc_5F8E7D: FLdPr var_8C
  loc_5F8E80: LateIdSt
  loc_5F8E85: FFree1Ad var_8C
  loc_5F8E88: LitVarI4
  loc_5F8E90: PopAdLdVar
  loc_5F8E91: FLdPrThis
  loc_5F8E92: VCallAd Control_ID_TablaTank
  loc_5F8E95: FStAdFunc var_8C
  loc_5F8E98: FLdPr var_8C
  loc_5F8E9B: LateIdSt
  loc_5F8EA0: FFree1Ad var_8C
  loc_5F8EA3: FLdI2 var_86
  loc_5F8EA6: CI4UI1
  loc_5F8EA7: CVarI4
  loc_5F8EAB: PopAdLdVar
  loc_5F8EAC: FLdPrThis
  loc_5F8EAD: VCallAd Control_ID_TablaTank
  loc_5F8EB0: FStAdFunc var_8C
  loc_5F8EB3: FLdPr var_8C
  loc_5F8EB6: LateIdSt
  loc_5F8EBB: FFree1Ad var_8C
  loc_5F8EBE: FLdI2 var_88
  loc_5F8EC1: CI4UI1
  loc_5F8EC2: CVarI4
  loc_5F8EC6: PopAdLdVar
  loc_5F8EC7: FLdPrThis
  loc_5F8EC8: VCallAd Control_ID_TablaTank
  loc_5F8ECB: FStAdFunc var_8C
  loc_5F8ECE: FLdPr var_8C
  loc_5F8ED1: LateIdSt
  loc_5F8ED6: FFree1Ad var_8C
  loc_5F8ED9: ExitProcHresult
End Function

Private Function Proc_1_16_6023A0(arg_C, arg_10) '6023A0
  'Data Table: 425F9C
  loc_6022C8: ZeroRetValVar
  loc_6022CA: FLdPrThis
  loc_6022CB: VCallAd Control_ID_TablaTank
  loc_6022CE: FStAdFunc var_9C
  loc_6022D1: FLdPr var_9C
  loc_6022D4: LateIdLdVar var_AC DispID_10 0
  loc_6022DB: CI4Var
  loc_6022DD: CI2I4
  loc_6022DE: FStI2 var_96
  loc_6022E1: FFree1Ad var_9C
  loc_6022E4: FFree1Var var_AC = ""
  loc_6022E7: FLdPrThis
  loc_6022E8: VCallAd Control_ID_TablaTank
  loc_6022EB: FStAdFunc var_9C
  loc_6022EE: FLdPr var_9C
  loc_6022F1: LateIdLdVar var_AC DispID_11 0
  loc_6022F8: CI4Var
  loc_6022FA: CI2I4
  loc_6022FB: FStI2 var_98
  loc_6022FE: FFree1Ad var_9C
  loc_602301: FFree1Var var_AC = ""
  loc_602304: ILdI2 arg_C
  loc_602307: CI4UI1
  loc_602308: CVarI4
  loc_60230C: PopAdLdVar
  loc_60230D: FLdPrThis
  loc_60230E: VCallAd Control_ID_TablaTank
  loc_602311: FStAdFunc var_9C
  loc_602314: FLdPr var_9C
  loc_602317: LateIdSt
  loc_60231C: FFree1Ad var_9C
  loc_60231F: ILdI2 arg_10
  loc_602322: CI4UI1
  loc_602323: CVarI4
  loc_602327: PopAdLdVar
  loc_602328: FLdPrThis
  loc_602329: VCallAd Control_ID_TablaTank
  loc_60232C: FStAdFunc var_9C
  loc_60232F: FLdPr var_9C
  loc_602332: LateIdSt
  loc_602337: FFree1Ad var_9C
  loc_60233A: FLdPrThis
  loc_60233B: VCallAd Control_ID_TablaTank
  loc_60233E: FStAdFunc var_9C
  loc_602341: FLdPr var_9C
  loc_602344: LateIdLdVar var_AC DispID_38 0
  loc_60234B: CI4Var
  loc_60234D: LitI4 0
  loc_602352: EqI4
  loc_602353: CVarBoolI2 var_BC
  loc_602357: FStVar var_94
  loc_60235B: FFree1Ad var_9C
  loc_60235E: FFree1Var var_AC = ""
  loc_602361: FLdI2 var_96
  loc_602364: CI4UI1
  loc_602365: CVarI4
  loc_602369: PopAdLdVar
  loc_60236A: FLdPrThis
  loc_60236B: VCallAd Control_ID_TablaTank
  loc_60236E: FStAdFunc var_9C
  loc_602371: FLdPr var_9C
  loc_602374: LateIdSt
  loc_602379: FFree1Ad var_9C
  loc_60237C: FLdI2 var_98
  loc_60237F: CI4UI1
  loc_602380: CVarI4
  loc_602384: PopAdLdVar
  loc_602385: FLdPrThis
  loc_602386: VCallAd Control_ID_TablaTank
  loc_602389: FStAdFunc var_9C
  loc_60238C: FLdPr var_9C
  loc_60238F: LateIdSt
  loc_602394: FFree1Ad var_9C
  loc_602397: ExitProcCbHresult
End Function

Private Function Proc_1_17_5F5964() '5F5964
  'Data Table: 425F9C
  loc_5F58AC: LitI2_Byte 1
  loc_5F58AE: FLdRfVar var_86
  loc_5F58B1: FLdPrThis
  loc_5F58B2: VCallAd Control_ID_TablaTank
  loc_5F58B5: FStAdFunc var_8C
  loc_5F58B8: FLdPr var_8C
  loc_5F58BB: LateIdLdVar var_9C DispID_4 0
  loc_5F58C2: CI4Var
  loc_5F58C4: LitI4 1
  loc_5F58C9: SubI4
  loc_5F58CA: CI2I4
  loc_5F58CB: FFree1Ad var_8C
  loc_5F58CE: FFree1Var var_9C = ""
  loc_5F58D1: ForI2 var_A0
  loc_5F58D7: LitI2_Byte 1
  loc_5F58D9: FLdRfVar var_88
  loc_5F58DC: FLdPrThis
  loc_5F58DD: VCallAd Control_ID_TablaTank
  loc_5F58E0: FStAdFunc var_8C
  loc_5F58E3: FLdPr var_8C
  loc_5F58E6: LateIdLdVar var_9C DispID_5 0
  loc_5F58ED: CI4Var
  loc_5F58EF: LitI4 1
  loc_5F58F4: SubI4
  loc_5F58F5: CI2I4
  loc_5F58F6: FFree1Ad var_8C
  loc_5F58F9: FFree1Var var_9C = ""
  loc_5F58FC: ForI2 var_A4
  loc_5F5902: FLdI2 var_86
  loc_5F5905: CI4UI1
  loc_5F5906: CVarI4
  loc_5F590A: PopAdLdVar
  loc_5F590B: FLdPrThis
  loc_5F590C: VCallAd Control_ID_TablaTank
  loc_5F590F: FStAdFunc var_8C
  loc_5F5912: FLdPr var_8C
  loc_5F5915: LateIdSt
  loc_5F591A: FFree1Ad var_8C
  loc_5F591D: FLdI2 var_88
  loc_5F5920: CI4UI1
  loc_5F5921: CVarI4
  loc_5F5925: PopAdLdVar
  loc_5F5926: FLdPrThis
  loc_5F5927: VCallAd Control_ID_TablaTank
  loc_5F592A: FStAdFunc var_8C
  loc_5F592D: FLdPr var_8C
  loc_5F5930: LateIdSt
  loc_5F5935: FFree1Ad var_8C
  loc_5F5938: LitVarI4
  loc_5F5940: PopAdLdVar
  loc_5F5941: FLdPrThis
  loc_5F5942: VCallAd Control_ID_TablaTank
  loc_5F5945: FStAdFunc var_8C
  loc_5F5948: FLdPr var_8C
  loc_5F594B: LateIdSt
  loc_5F5950: FFree1Ad var_8C
  loc_5F5953: FLdRfVar var_88
  loc_5F5956: NextI2 var_A4, loc_5F5902
  loc_5F595B: FLdRfVar var_86
  loc_5F595E: NextI2 var_A0, loc_5F58D7
  loc_5F5963: ExitProcHresult
End Function

Private Function Proc_1_18_5FB4D4(arg_C, arg_10) '5FB4D4
  'Data Table: 425F9C
  loc_5FB430: LitI2_Byte 0
  loc_5FB432: FStI2 var_86
  loc_5FB435: ILdUI1 arg_C
  loc_5FB439: CI4UI1
  loc_5FB43A: ImpAdLdRf MemVar_74C2EC
  loc_5FB43D: Ary1LdCy
  loc_5FB43E: FnFixCy
  loc_5FB440: ILdI4 arg_10
  loc_5FB443: CR8I4
  loc_5FB444: LtCyR8
  loc_5FB445: BranchF loc_5FB4CB
  loc_5FB448: LitVar_Missing var_118
  loc_5FB44B: LitVar_Missing var_F8
  loc_5FB44E: LitVarStr var_C8, "Aviso"
  loc_5FB453: FStVarCopyObj var_D8
  loc_5FB456: FLdRfVar var_D8
  loc_5FB459: LitI4 &H40
  loc_5FB45E: LitStr "El tanque "
  loc_5FB461: ILdUI1 arg_C
  loc_5FB465: CStrI2
  loc_5FB467: FStStrNoPop var_8C
  loc_5FB46A: ConcatStr
  loc_5FB46B: FStStrNoPop var_90
  loc_5FB46E: LitStr " tiene una capacidad de "
  loc_5FB471: ConcatStr
  loc_5FB472: FStStrNoPop var_94
  loc_5FB475: ILdUI1 arg_C
  loc_5FB479: CI4UI1
  loc_5FB47A: ImpAdLdRf MemVar_74C2EC
  loc_5FB47D: Ary1LdCy
  loc_5FB47E: CStrCy
  loc_5FB480: FStStrNoPop var_98
  loc_5FB483: ConcatStr
  loc_5FB484: FStStrNoPop var_9C
  loc_5FB487: LitStr " "
  loc_5FB48A: ConcatStr
  loc_5FB48B: FStStrNoPop var_A0
  loc_5FB48E: ImpAdLdI4 MemVar_74BEC0
  loc_5FB491: ConcatStr
  loc_5FB492: FStStrNoPop var_A4
  loc_5FB495: LitStr ", verifique que los valores ingresados no "
  loc_5FB498: ConcatStr
  loc_5FB499: FStStrNoPop var_A8
  loc_5FB49C: LitStr "superen a la capacidad del tanque."
  loc_5FB49F: ConcatStr
  loc_5FB4A0: CVarStr var_B8
  loc_5FB4A3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5FB4A8: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_5FB4BB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_5FB4C6: LitI2_Byte &HFF
  loc_5FB4C8: FStI2 var_86
  loc_5FB4CB: ExitProcCbHresult
End Function
