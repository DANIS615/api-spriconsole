VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmCierresEssoConectividad
  Caption = "Motivos de cierre"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 8430
  ClientHeight = 1740
  StartUpPosition = 3 'Windows Default
  Begin VB.ComboBox Combo1
    Style = 2
    Left = 150
    Top = 480
    Width = 8055
    Height = 420
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand SSCommand3
    Left = 4770
    Top = 1200
    Width = 1455
    Height = 495
    TabIndex = 2
    OleObjectBlob = "frmCierresEssoConectividad.frx":0000
  End
  Begin Threed.SSCommand SSCommand2
    Left = 1890
    Top = 1200
    Width = 1455
    Height = 495
    TabIndex = 1
    OleObjectBlob = "frmCierresEssoConectividad.frx":006C
  End
  Begin VB.Label Label2
    Caption = "Descripción"
    Left = 3240
    Top = 120
    Width = 1455
    Height = 375
    TabIndex = 3
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmCierresEssoConectividad"


Private Sub SSCommand3_UnknownEvent_8 '60DF8C
  'Data Table: 408DBC
  loc_60DE94: LitVar_Missing var_108
  loc_60DE97: LitVar_Missing var_E8
  loc_60DE9A: LitVarStr var_B8, "Forzar Cierre Esso Conectividad"
  loc_60DE9F: FStVarCopyObj var_C8
  loc_60DEA2: FLdRfVar var_C8
  loc_60DEA5: LitI4 &H24
  loc_60DEAA: LitVarStr var_98, "Esta seguro de forzar Cierre Esso Conectividad?"
  loc_60DEAF: FStVarCopyObj var_A8
  loc_60DEB2: FLdRfVar var_A8
  loc_60DEB5: ImpAdCallI2 MsgBox(, , , , )
  loc_60DEBA: LitI4 7
  loc_60DEBF: EqI4
  loc_60DEC0: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_60DECB: BranchF loc_60DECF
  loc_60DECE: ExitProcHresult
  loc_60DECF: FLdRfVar var_10E
  loc_60DED2: FLdPrThis
  loc_60DED3: VCallAd Control_ID_Combo1
  loc_60DED6: FStAdFunc var_10C
  loc_60DED9: FLdPr var_10C
  loc_60DEDC:  = Me.ListIndex
  loc_60DEE1: LitI4 1
  loc_60DEE6: LitI4 1
  loc_60DEEB: LitVarStr var_B8, "000"
  loc_60DEF0: FStVarCopyObj var_A8
  loc_60DEF3: FLdRfVar var_A8
  loc_60DEF6: FLdI2 var_10E
  loc_60DEF9: LitI2_Byte 1
  loc_60DEFB: AddI2
  loc_60DEFC: CI4UI1
  loc_60DEFD: FLdPr Me
  loc_60DF00: MemLdRfVar from_stack_1.global_52
  loc_60DF03: Ary1LdRf
  loc_60DF04: CVarRef
  loc_60DF09: FLdRfVar var_C8
  loc_60DF0C: ImpAdCallFPR4  = Format(, )
  loc_60DF11: FLdRfVar var_C8
  loc_60DF14: CStrVarTmp
  loc_60DF15: FStStr var_88
  loc_60DF18: FFree1Ad var_10C
  loc_60DF1B: FFreeVar var_A8 = ""
  loc_60DF22: FLdRfVar var_10E
  loc_60DF25: FLdRfVar var_88
  loc_60DF28: FLdRfVar var_10C
  loc_60DF2B: ImpAdLdRf MemVar_74C760
  loc_60DF2E: NewIfNullPr Formx
  loc_60DF31: from_stack_1v = Formx.global_4589716Get()
  loc_60DF36: FLdPr var_10C
  loc_60DF39: Call 0.Method_arg_314 ()
  loc_60DF3E: FLdI2 var_10E
  loc_60DF41: NotI4
  loc_60DF42: FFree1Ad var_10C
  loc_60DF45: BranchF loc_60DF74
  loc_60DF48: FLdRfVar var_A8
  loc_60DF4B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_60DF50: FLdRfVar var_A8
  loc_60DF53: CBoolVarNull
  loc_60DF55: FFree1Var var_A8 = ""
  loc_60DF58: BranchF loc_60DF71
  loc_60DF5B: ILdRf Me
  loc_60DF5E: FStAdNoPop
  loc_60DF62: ImpAdLdRf MemVar_7520D4
  loc_60DF65: NewIfNullPr Global
  loc_60DF68: Global.Unload from_stack_1
  loc_60DF6D: FFree1Ad var_10C
  loc_60DF70: ExitProcHresult
  loc_60DF71: Branch loc_60DF22
  loc_60DF74: ILdRf Me
  loc_60DF77: FStAdNoPop
  loc_60DF7B: ImpAdLdRf MemVar_7520D4
  loc_60DF7E: NewIfNullPr Global
  loc_60DF81: Global.Unload from_stack_1
  loc_60DF86: FFree1Ad var_10C
  loc_60DF89: ExitProcHresult
  loc_60DF8A: FLdI2 SSCommand3_UnknownEvent_8400
End Sub

Private Sub Form_Load() '63BCBC
  'Data Table: 408DBC
  loc_63BAB4: ILdRf Me
  loc_63BAB7: CastAd
  loc_63BABA: FStAdFunc var_A0
  loc_63BABD: FLdRfVar var_A0
  loc_63BAC0: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_63BAC5: FFree1Ad var_A0
  loc_63BAC8: OnErrorGoto loc_63BC5D
  loc_63BACB: FLdPrThis
  loc_63BACC: VCallAd Control_ID_Combo1
  loc_63BACF: FStAdFunc var_A0
  loc_63BAD2: FLdPr var_A0
  loc_63BAD5: Me.Clear
  loc_63BADA: FFree1Ad var_A0
  loc_63BADD: FLdRfVar var_A2
  loc_63BAE0: FLdRfVar var_9C
  loc_63BAE3: LitStr "M"
  loc_63BAE6: FLdRfVar var_A0
  loc_63BAE9: ImpAdLdRf MemVar_74C760
  loc_63BAEC: NewIfNullPr Formx
  loc_63BAEF: from_stack_1v = Formx.global_4589716Get()
  loc_63BAF4: FLdPr var_A0
  loc_63BAF7: Call 0.Method_arg_310 ()
  loc_63BAFC: FLdI2 var_A2
  loc_63BAFF: NotI4
  loc_63BB00: FFree1Ad var_A0
  loc_63BB03: BranchF loc_63BB32
  loc_63BB06: FLdRfVar var_B4
  loc_63BB09: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63BB0E: FLdRfVar var_B4
  loc_63BB11: CBoolVarNull
  loc_63BB13: FFree1Var var_B4 = ""
  loc_63BB16: BranchF loc_63BB2F
  loc_63BB19: ILdRf Me
  loc_63BB1C: FStAdNoPop
  loc_63BB20: ImpAdLdRf MemVar_7520D4
  loc_63BB23: NewIfNullPr Global
  loc_63BB26: Global.Unload from_stack_1
  loc_63BB2B: FFree1Ad var_A0
  loc_63BB2E: ExitProcHresult
  loc_63BB2F: Branch loc_63BADD
  loc_63BB32: LitVarI2 var_C4, 1
  loc_63BB37: FStVar var_94
  loc_63BB3B: LitI2_Byte 1
  loc_63BB3D: FStI2 var_96
  loc_63BB40: LitVarI2 var_B4, 1
  loc_63BB45: FLdRfVar var_94
  loc_63BB48: CI4Var
  loc_63BB4A: FLdRfVar var_9C
  loc_63BB4D: CVarRef
  loc_63BB52: FLdRfVar var_E4
  loc_63BB55: ImpAdCallFPR4  = Mid(, , )
  loc_63BB5A: FLdRfVar var_E4
  loc_63BB5D: LitVarStr var_F4, "|"
  loc_63BB62: HardType
  loc_63BB63: NeVarBool
  loc_63BB65: FFreeVar var_B4 = ""
  loc_63BB6C: BranchF loc_63BC5C
  loc_63BB6F: LitVarI2 var_104, 2
  loc_63BB74: FLdRfVar var_94
  loc_63BB77: LitVarI2 var_C4, 3
  loc_63BB7C: AddVar var_B4
  loc_63BB80: LitVarI2 var_D4, 50
  loc_63BB85: AddVar var_E4
  loc_63BB89: CI4Var
  loc_63BB8B: FLdRfVar var_9C
  loc_63BB8E: CVarRef
  loc_63BB93: FLdRfVar var_124
  loc_63BB96: ImpAdCallFPR4  = Mid(, , )
  loc_63BB9B: FLdRfVar var_124
  loc_63BB9E: ImpAdLdPr unk_408DCD
  loc_63BBA1: MemLdI2 global_4
  loc_63BBA4: CVarI2 var_134
  loc_63BBA7: HardType
  loc_63BBA8: EqVarBool
  loc_63BBAA: FFreeVar var_B4 = "": var_E4 = "": var_104 = ""
  loc_63BBB5: BranchF loc_63BC3D
  loc_63BBB8: LitVarI2 var_B4, 3
  loc_63BBBD: FLdRfVar var_94
  loc_63BBC0: CI4Var
  loc_63BBC2: FLdRfVar var_9C
  loc_63BBC5: CVarRef
  loc_63BBCA: FLdRfVar var_E4
  loc_63BBCD: ImpAdCallFPR4  = Mid(, , )
  loc_63BBD2: FLdRfVar var_E4
  loc_63BBD5: CI2Var
  loc_63BBD6: FLdI2 var_96
  loc_63BBD9: CI4UI1
  loc_63BBDA: FLdPr Me
  loc_63BBDD: MemLdRfVar from_stack_1.global_52
  loc_63BBE0: Ary1StI2
  loc_63BBE1: FFreeVar var_B4 = ""
  loc_63BBE8: LitVarI2 var_E4, 50
  loc_63BBED: FLdRfVar var_94
  loc_63BBF0: LitVarI2 var_C4, 3
  loc_63BBF5: AddVar var_B4
  loc_63BBF9: CI4Var
  loc_63BBFB: FLdRfVar var_9C
  loc_63BBFE: CVarRef
  loc_63BC03: FLdRfVar var_104
  loc_63BC06: ImpAdCallFPR4  = Mid(, , )
  loc_63BC0B: LitVar_Missing var_114
  loc_63BC0E: PopAdLdVar
  loc_63BC0F: FLdRfVar var_104
  loc_63BC12: CStrVarVal var_148
  loc_63BC16: FLdPrThis
  loc_63BC17: VCallAd Control_ID_Combo1
  loc_63BC1A: FStAdFunc var_A0
  loc_63BC1D: FLdPr var_A0
  loc_63BC20: Me.AddItem from_stack_1, from_stack_2
  loc_63BC25: FFree1Str var_148
  loc_63BC28: FFree1Ad var_A0
  loc_63BC2B: FFreeVar var_B4 = "": var_E4 = ""
  loc_63BC34: FLdI2 var_96
  loc_63BC37: LitI2_Byte 1
  loc_63BC39: AddI2
  loc_63BC3A: FStI2 var_96
  loc_63BC3D: FLdRfVar var_94
  loc_63BC40: LitVarI2 var_C4, 5
  loc_63BC45: AddVar var_B4
  loc_63BC49: LitVarI2 var_D4, 50
  loc_63BC4E: AddVar var_E4
  loc_63BC52: FStVar var_94
  loc_63BC56: FFree1Var var_B4 = ""
  loc_63BC59: Branch loc_63BB40
  loc_63BC5C: ExitProcHresult
  loc_63BC5D: LitI4 &HD
  loc_63BC62: FLdRfVar var_B4
  loc_63BC65: ImpAdCallFPR4  = Chr()
  loc_63BC6A: FLdRfVar var_148
  loc_63BC6D: ImpAdCallI2 Err 'rtcErrObj
  loc_63BC72: FStAdFunc var_A0
  loc_63BC75: FLdPr var_A0
  loc_63BC78:  = Err.Description
  loc_63BC7D: LitVar_Missing var_168
  loc_63BC80: LitVar_Missing var_158
  loc_63BC83: LitVar_Missing var_144
  loc_63BC86: LitI4 &H40
  loc_63BC8B: LitVarStr var_C4, "No se encontraron los motivos de cierre. "
  loc_63BC90: FLdRfVar var_B4
  loc_63BC93: ConcatVar var_E4
  loc_63BC97: FLdZeroAd var_148
  loc_63BC9A: CVarStr var_104
  loc_63BC9D: ConcatVar var_124
  loc_63BCA1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63BCA6: FFree1Ad var_A0
  loc_63BCA9: FFreeVar var_B4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_158 = ""
  loc_63BCBA: ExitProcHresult
End Sub

Private Sub Form_Activate() '5EED5C
  'Data Table: 408DBC
  loc_5EECD0: FLdRfVar var_8A
  loc_5EECD3: FLdPrThis
  loc_5EECD4: VCallAd Control_ID_Combo1
  loc_5EECD7: FStAdFunc var_88
  loc_5EECDA: FLdPr var_88
  loc_5EECDD:  = Me.ListCount
  loc_5EECE2: FLdI2 var_8A
  loc_5EECE5: LitI2_Byte 1
  loc_5EECE7: GeI2
  loc_5EECE8: FFree1Ad var_88
  loc_5EECEB: BranchF loc_5EED1A
  loc_5EECEE: LitI2_Byte 0
  loc_5EECF0: FLdPrThis
  loc_5EECF1: VCallAd Control_ID_Combo1
  loc_5EECF4: FStAdFunc var_88
  loc_5EECF7: FLdPr var_88
  loc_5EECFA: Me.ListIndex = from_stack_1
  loc_5EECFF: FFree1Ad var_88
  loc_5EED02: FLdPrThis
  loc_5EED03: VCallAd Control_ID_SSCommand2
  loc_5EED06: FStAdFunc var_88
  loc_5EED09: FLdPr var_88
  loc_5EED0C: LateIdCall
  loc_5EED14: FFree1Ad var_88
  loc_5EED17: Branch loc_5EED58
  loc_5EED1A: LitVar_Missing var_10C
  loc_5EED1D: LitVar_Missing var_EC
  loc_5EED20: LitVar_Missing var_CC
  loc_5EED23: LitI4 0
  loc_5EED28: LitVarStr var_9C, "No hay motivos de cierres que puedan ser mostrados."
  loc_5EED2D: FStVarCopyObj var_AC
  loc_5EED30: FLdRfVar var_AC
  loc_5EED33: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5EED38: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_5EED43: ILdRf Me
  loc_5EED46: FStAdNoPop
  loc_5EED4A: ImpAdLdRf MemVar_7520D4
  loc_5EED4D: NewIfNullPr Global
  loc_5EED50: Global.Unload from_stack_1
  loc_5EED55: FFree1Ad var_88
  loc_5EED58: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D1FB8
  'Data Table: 408DBC
  loc_5D1FA0: ILdRf Me
  loc_5D1FA3: FStAdNoPop
  loc_5D1FA7: ImpAdLdRf MemVar_7520D4
  loc_5D1FAA: NewIfNullPr Global
  loc_5D1FAD: Global.Unload from_stack_1
  loc_5D1FB2: FFree1Ad var_88
  loc_5D1FB5: ExitProcHresult
End Sub
