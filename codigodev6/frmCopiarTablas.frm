VERSION 5.00
Begin VB.Form frmCopiarTablas
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 6750
  ClientHeight = 3870
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 2520
    Top = 3120
    Width = 1935
    Height = 615
    TabIndex = 3
    Cancel = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 4680
    Top = 3120
    Width = 1935
    Height = 615
    TabIndex = 4
    Default = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox cmbATanque
    Style = 2
    Left = 4440
    Top = 2040
    Width = 855
    Height = 450
    TabIndex = 2
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
  Begin VB.ComboBox cmbDeTanque
    Style = 2
    Left = 4440
    Top = 1440
    Width = 855
    Height = 450
    TabIndex = 1
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
  Begin VB.Label Label3
    Caption = "A  tabla del Tanque :"
    Left = 960
    Top = 2040
    Width = 3375
    Height = 375
    TabIndex = 6
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
  Begin VB.Label Label2
    Caption = "Copiar Tabla del Tanque :"
    Left = 720
    Top = 1440
    Width = 3615
    Height = 375
    TabIndex = 5
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
  Begin VB.Line Line1
    X1 = 120
    Y1 = 1200
    X2 = 6600
    Y2 = 1200
    BorderWidth = 3
  End
  Begin VB.Label Label1
    Caption = "Copiar Tablas de Tanques"
    Left = 960
    Top = 240
    Width = 4815
    Height = 615
    TabIndex = 0
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmCopiarTablas"


Private Sub cmdCancelar_Click() '5D2B98
  'Data Table: 41216C
  loc_5D2B80: ILdRf Me
  loc_5D2B83: FStAdNoPop
  loc_5D2B87: ImpAdLdRf MemVar_7520D4
  loc_5D2B8A: NewIfNullPr Global
  loc_5D2B8D: Global.Unload from_stack_1
  loc_5D2B92: FFree1Ad var_88
  loc_5D2B95: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '684D40
  'Data Table: 41216C
  loc_6848A8: FLdRfVar var_92
  loc_6848AB: FLdPrThis
  loc_6848AC: VCallAd Control_ID_cmbATanque
  loc_6848AF: FStAdFunc var_90
  loc_6848B2: FLdPr var_90
  loc_6848B5:  = Me.ListIndex
  loc_6848BA: FLdI2 var_92
  loc_6848BD: LitI2_Byte 1
  loc_6848BF: AddI2
  loc_6848C0: ImpAdLdRf MemVar_74D8EC
  loc_6848C3: NewIfNullPr frmControlTanques
  loc_6848C6: Call frmControlTanques.CopiaTanqueDestinoPut(from_stack_1v)
  loc_6848CB: FFree1Ad var_90
  loc_6848CE: FLdRfVar var_92
  loc_6848D1: FLdPrThis
  loc_6848D2: VCallAd Control_ID_txtLeyenda
  loc_6848D5: FStAdFunc var_90
  loc_6848D8: FLdPr var_90
  loc_6848DB:  = frmControlTanques.ComboBox.ListIndex
  loc_6848E0: FLdI2 var_92
  loc_6848E3: FLdRfVar var_9A
  loc_6848E6: FLdPrThis
  loc_6848E7: VCallAd Control_ID_cmbATanque
  loc_6848EA: FStAdFunc var_98
  loc_6848ED: FLdPr var_98
  loc_6848F0:  = Me.ListIndex
  loc_6848F5: FLdI2 var_9A
  loc_6848F8: NeI2
  loc_6848F9: FFreeAd var_90 = ""
  loc_684900: BranchF loc_684D27
  loc_684903: FLdRfVar var_92
  loc_684906: FLdPrThis
  loc_684907: VCallAd Control_ID_cmbDeTanque
  loc_68490A: FStAdFunc var_90
  loc_68490D: FLdPr var_90
  loc_684910:  = Me.ListIndex
  loc_684915: FLdRfVar var_B0
  loc_684918: FLdRfVar var_88
  loc_68491B: LitStr "0"
  loc_68491E: FStStrCopy var_A0
  loc_684921: FLdRfVar var_A0
  loc_684924: FLdI2 var_92
  loc_684927: LitI2_Byte 1
  loc_684929: AddI2
  loc_68492A: PopTmpLdAd2 var_9A
  loc_68492D: FLdRfVar var_98
  loc_684930: ImpAdLdRf MemVar_74C760
  loc_684933: NewIfNullPr Formx
  loc_684936: from_stack_1v = Formx.global_4589716Get()
  loc_68493B: FLdPr var_98
  loc_68493E:  = Formx.MaxButton
  loc_684943: FLdRfVar var_B0
  loc_684946: NotVar var_C0
  loc_68494A: CBoolVarNull
  loc_68494C: FFree1Str var_A0
  loc_68494F: FFreeAd var_90 = ""
  loc_684956: FFree1Var var_B0 = ""
  loc_684959: BranchF loc_684988
  loc_68495C: FLdRfVar var_B0
  loc_68495F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_684964: FLdRfVar var_B0
  loc_684967: CBoolVarNull
  loc_684969: FFree1Var var_B0 = ""
  loc_68496C: BranchF loc_684985
  loc_68496F: ILdRf Me
  loc_684972: FStAdNoPop
  loc_684976: ImpAdLdRf MemVar_7520D4
  loc_684979: NewIfNullPr Global
  loc_68497C: Global.Unload from_stack_1
  loc_684981: FFree1Ad var_90
  loc_684984: ExitProcHresult
  loc_684985: Branch loc_684903
  loc_684988: FLdRfVar var_88
  loc_68498B: CVarRef
  loc_684990: FLdRfVar var_B0
  loc_684993: ImpAdCallFPR4  = Trim()
  loc_684998: FLdRfVar var_B0
  loc_68499B: CStrVarTmp
  loc_68499C: FStStr var_88
  loc_68499F: FFree1Var var_B0 = ""
  loc_6849A2: ILdRf var_88
  loc_6849A5: FnLenStr
  loc_6849A6: LitI4 &H10
  loc_6849AB: GtI4
  loc_6849AC: BranchF loc_684A30
  loc_6849AF: FLdRfVar var_1E8
  loc_6849B2: LitVar_Missing var_1E4
  loc_6849B5: LitVar_Missing var_1C4
  loc_6849B8: LitVar_Missing var_1A4
  loc_6849BB: LitVar_Missing var_184
  loc_6849BE: LitVar_Missing var_164
  loc_6849C1: LitVar_Missing var_144
  loc_6849C4: LitVar_Missing var_124
  loc_6849C7: LitVar_Missing var_104
  loc_6849CA: LitVar_Missing var_C0
  loc_6849CD: LitVar_Missing var_B0
  loc_6849D0: LitStr "No se puede copiar tablas en pulgadas"
  loc_6849D3: FStStrCopy var_A0
  loc_6849D6: FLdRfVar var_A0
  loc_6849D9: LitI4 9
  loc_6849DE: PopTmpLdAdStr var_D4
  loc_6849E1: LitI2_Byte &H3D
  loc_6849E3: PopTmpLdAd2 var_92
  loc_6849E6: ImpAdLdRf MemVar_74C7D0
  loc_6849E9: NewIfNullPr clsMsg
  loc_6849EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6849F1: LitVar_Missing var_258
  loc_6849F4: LitVar_Missing var_238
  loc_6849F7: LitVar_Missing var_218
  loc_6849FA: LitI4 0
  loc_6849FF: FLdZeroAd var_1E8
  loc_684A02: CVarStr var_1F8
  loc_684A05: ImpAdCallFPR4 MsgBox(, , , , )
  loc_684A0A: FFree1Str var_A0
  loc_684A0D: FFreeVar var_B0 = "": var_C0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F8 = "": var_218 = "": var_238 = ""
  loc_684A2C: ExitProcHresult
  loc_684A2D: Branch loc_684D27
  loc_684A30: FLdRfVar var_92
  loc_684A33: FLdPrThis
  loc_684A34: VCallAd Control_ID_cmbDeTanque
  loc_684A37: FStAdFunc var_90
  loc_684A3A: FLdPr var_90
  loc_684A3D:  = Me.ListIndex
  loc_684A42: FLdRfVar var_B0
  loc_684A45: FLdRfVar var_88
  loc_684A48: LitStr "1"
  loc_684A4B: FStStrCopy var_A0
  loc_684A4E: FLdRfVar var_A0
  loc_684A51: FLdI2 var_92
  loc_684A54: LitI2_Byte 1
  loc_684A56: AddI2
  loc_684A57: PopTmpLdAd2 var_9A
  loc_684A5A: FLdRfVar var_98
  loc_684A5D: ImpAdLdRf MemVar_74C760
  loc_684A60: NewIfNullPr Formx
  loc_684A63: from_stack_1v = Formx.global_4589716Get()
  loc_684A68: FLdPr var_98
  loc_684A6B:  = Formx.MaxButton
  loc_684A70: FLdRfVar var_B0
  loc_684A73: NotVar var_C0
  loc_684A77: CBoolVarNull
  loc_684A79: FFree1Str var_A0
  loc_684A7C: FFreeAd var_90 = ""
  loc_684A83: FFree1Var var_B0 = ""
  loc_684A86: BranchF loc_684AB5
  loc_684A89: FLdRfVar var_B0
  loc_684A8C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_684A91: FLdRfVar var_B0
  loc_684A94: CBoolVarNull
  loc_684A96: FFree1Var var_B0 = ""
  loc_684A99: BranchF loc_684AB2
  loc_684A9C: ILdRf Me
  loc_684A9F: FStAdNoPop
  loc_684AA3: ImpAdLdRf MemVar_7520D4
  loc_684AA6: NewIfNullPr Global
  loc_684AA9: Global.Unload from_stack_1
  loc_684AAE: FFree1Ad var_90
  loc_684AB1: ExitProcHresult
  loc_684AB2: Branch loc_684A30
  loc_684AB5: FLdRfVar var_88
  loc_684AB8: CVarRef
  loc_684ABD: FLdRfVar var_B0
  loc_684AC0: ImpAdCallFPR4  = Trim()
  loc_684AC5: FLdRfVar var_B0
  loc_684AC8: CStrVarTmp
  loc_684AC9: FStStr var_88
  loc_684ACC: FFree1Var var_B0 = ""
  loc_684ACF: ILdRf var_88
  loc_684AD2: FnLenStr
  loc_684AD3: LitI4 1
  loc_684AD8: GtI4
  loc_684AD9: BranchF loc_684B7C
  loc_684ADC: LitI2_Byte 0
  loc_684ADE: FLdRfVar var_8A
  loc_684AE1: LitI2 6000
  loc_684AE4: ForI2 var_25C
  loc_684AEA: LitI2_Byte 0
  loc_684AEC: CR8I2
  loc_684AED: FLdI2 var_8A
  loc_684AF0: CI4UI1
  loc_684AF1: FLdPr Me
  loc_684AF4: MemLdRfVar from_stack_1.global_52
  loc_684AF7: Ary1StFPR4
  loc_684AF8: ImpAdCallFPR4 DoEvents()
  loc_684AFD: FLdRfVar var_8A
  loc_684B00: NextI2 var_25C, loc_684AEA
  loc_684B05: LitI2_Byte 1
  loc_684B07: FStI2 var_8A
  loc_684B0A: FLdI2 var_8A
  loc_684B0D: CI4UI1
  loc_684B0E: ILdRf var_88
  loc_684B11: FnLenStr
  loc_684B12: LtI4
  loc_684B13: BranchF loc_684B7C
  loc_684B16: LitVarI2 var_C0, 8
  loc_684B1B: FLdI2 var_8A
  loc_684B1E: CI4UI1
  loc_684B1F: ILdRf var_88
  loc_684B22: ImpAdCallI2 Mid$(, , )
  loc_684B27: FStStrNoPop var_1E8
  loc_684B2A: ImpAdCallFPR4 push Val()
  loc_684B2F: FStFPR8 var_264
  loc_684B32: LitVarI2 var_B0, 8
  loc_684B37: FLdI2 var_8A
  loc_684B3A: LitI2_Byte 8
  loc_684B3C: AddI2
  loc_684B3D: CI4UI1
  loc_684B3E: ILdRf var_88
  loc_684B41: ImpAdCallI2 Mid$(, , )
  loc_684B46: FStStrNoPop var_A0
  loc_684B49: ImpAdCallFPR4 push Val()
  loc_684B4E: LitI2_Byte &H64
  loc_684B50: CR8I2
  loc_684B51: DivR8
  loc_684B52: FLdFPR8 var_264
  loc_684B55: CI4R8
  loc_684B56: FLdPr Me
  loc_684B59: MemLdRfVar from_stack_1.global_52
  loc_684B5C: Ary1StFPR4
  loc_684B5D: FFreeStr var_A0 = ""
  loc_684B64: FFreeVar var_B0 = ""
  loc_684B6B: FLdI2 var_8A
  loc_684B6E: LitI2_Byte &H10
  loc_684B70: AddI2
  loc_684B71: FStI2 var_8A
  loc_684B74: ImpAdCallFPR4 DoEvents()
  loc_684B79: Branch loc_684B0A
  loc_684B7C: ILdRf var_88
  loc_684B7F: FnLenStr
  loc_684B80: LitI4 &H10
  loc_684B85: GtI4
  loc_684B86: BranchF loc_684BBB
  loc_684B89: FLdRfVar var_92
  loc_684B8C: FLdPrThis
  loc_684B8D: VCallAd Control_ID_cmbATanque
  loc_684B90: FStAdFunc var_90
  loc_684B93: FLdPr var_90
  loc_684B96:  = Me.ListIndex
  loc_684B9B: LitStr "1"
  loc_684B9E: FStStrCopy var_A0
  loc_684BA1: FLdRfVar var_A0
  loc_684BA4: FLdI2 var_92
  loc_684BA7: LitI2_Byte 1
  loc_684BA9: AddI2
  loc_684BAA: PopTmpLdAd2 var_9A
  loc_684BAD: from_stack_3v = Proc_31_4_65940C(from_stack_1v, from_stack_2v)
  loc_684BB2: FFree1Str var_A0
  loc_684BB5: FFree1Ad var_90
  loc_684BB8: Branch loc_684D27
  loc_684BBB: FLdRfVar var_1E8
  loc_684BBE: LitVar_Missing var_1E4
  loc_684BC1: LitVar_Missing var_1C4
  loc_684BC4: LitVar_Missing var_1A4
  loc_684BC7: LitVar_Missing var_184
  loc_684BCA: LitVar_Missing var_164
  loc_684BCD: LitVar_Missing var_144
  loc_684BD0: LitVar_Missing var_124
  loc_684BD3: LitVar_Missing var_104
  loc_684BD6: LitVar_Missing var_C0
  loc_684BD9: LitVar_Missing var_B0
  loc_684BDC: LitStr "No existe la Tabla de Pares de Pulgadas del Tanque N:"
  loc_684BDF: FStStrCopy var_A0
  loc_684BE2: FLdRfVar var_A0
  loc_684BE5: LitI4 &HA
  loc_684BEA: PopTmpLdAdStr var_D4
  loc_684BED: LitI2_Byte &H3D
  loc_684BEF: PopTmpLdAd2 var_92
  loc_684BF2: ImpAdLdRf MemVar_74C7D0
  loc_684BF5: NewIfNullPr clsMsg
  loc_684BF8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_684BFD: FLdRfVar var_9A
  loc_684C00: FLdPrThis
  loc_684C01: VCallAd Control_ID_cmbDeTanque
  loc_684C04: FStAdFunc var_90
  loc_684C07: FLdPr var_90
  loc_684C0A:  = Me.ListIndex
  loc_684C0F: FLdRfVar var_34C
  loc_684C12: LitVar_Missing var_348
  loc_684C15: LitVar_Missing var_328
  loc_684C18: LitVar_Missing var_308
  loc_684C1B: LitVar_Missing var_2E8
  loc_684C1E: LitVar_Missing var_2C8
  loc_684C21: LitVar_Missing var_2A8
  loc_684C24: LitVar_Missing var_258
  loc_684C27: LitVar_Missing var_238
  loc_684C2A: LitVar_Missing var_218
  loc_684C2D: LitVar_Missing var_1F8
  loc_684C30: LitStr ", con lo cual no se puede realizar la copia."
  loc_684C33: FStStrCopy var_278
  loc_684C36: FLdRfVar var_278
  loc_684C39: LitI4 &HB
  loc_684C3E: PopTmpLdAdStr var_274
  loc_684C41: LitI2_Byte &H3D
  loc_684C43: PopTmpLdAd2 var_26E
  loc_684C46: ImpAdLdRf MemVar_74C7D0
  loc_684C49: NewIfNullPr clsMsg
  loc_684C4C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_684C51: FLdRfVar var_4A0
  loc_684C54: LitVar_Missing var_49C
  loc_684C57: LitVar_Missing var_47C
  loc_684C5A: LitVar_Missing var_45C
  loc_684C5D: LitVar_Missing var_43C
  loc_684C60: LitVar_Missing var_41C
  loc_684C63: LitVar_Missing var_3FC
  loc_684C66: LitVar_Missing var_3DC
  loc_684C69: LitVar_Missing var_3BC
  loc_684C6C: LitVar_Missing var_39C
  loc_684C6F: LitVar_Missing var_37C
  loc_684C72: LitStr "Tabla Inexistente"
  loc_684C75: FStStrCopy var_35C
  loc_684C78: FLdRfVar var_35C
  loc_684C7B: LitI4 &HC
  loc_684C80: PopTmpLdAdStr var_358
  loc_684C83: LitI2_Byte &H3D
  loc_684C85: PopTmpLdAd2 var_352
  loc_684C88: ImpAdLdRf MemVar_74C7D0
  loc_684C8B: NewIfNullPr clsMsg
  loc_684C8E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_684C93: LitVar_Missing var_500
  loc_684C96: LitVar_Missing var_4E0
  loc_684C99: FLdZeroAd var_4A0
  loc_684C9C: CVarStr var_4C0
  loc_684C9F: LitI4 &H70
  loc_684CA4: ILdRf var_1E8
  loc_684CA7: LitStr " "
  loc_684CAA: ConcatStr
  loc_684CAB: FStStrNoPop var_268
  loc_684CAE: FLdI2 var_9A
  loc_684CB1: LitI2_Byte 1
  loc_684CB3: AddI2
  loc_684CB4: CStrUI1
  loc_684CB6: FStStrNoPop var_26C
  loc_684CB9: ConcatStr
  loc_684CBA: FStStrNoPop var_350
  loc_684CBD: ILdRf var_34C
  loc_684CC0: ConcatStr
  loc_684CC1: CVarStr var_4B0
  loc_684CC4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_684CC9: FFreeStr var_A0 = "": var_1E8 = "": var_268 = "": var_26C = "": var_278 = "": var_350 = "": var_34C = ""
  loc_684CDC: FFree1Ad var_90
  loc_684CDF: FFreeVar var_4B0 = "": var_4C0 = "": var_4E0 = "": var_500 = "": var_B0 = "": var_C0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = ""
  loc_684D26: ExitProcHresult
  loc_684D27: ILdRf Me
  loc_684D2A: FStAdNoPop
  loc_684D2E: ImpAdLdRf MemVar_7520D4
  loc_684D31: NewIfNullPr Global
  loc_684D34: Global.Unload from_stack_1
  loc_684D39: FFree1Ad var_90
  loc_684D3C: ExitProcHresult
End Sub

Private Sub Form_Load() '6632F8
  'Data Table: 41216C
  loc_662FAC: FLdRfVar var_1D4
  loc_662FAF: LitVar_Missing var_1D0
  loc_662FB2: LitVar_Missing var_1B0
  loc_662FB5: LitVar_Missing var_190
  loc_662FB8: LitVar_Missing var_170
  loc_662FBB: LitVar_Missing var_150
  loc_662FBE: LitVar_Missing var_130
  loc_662FC1: LitVar_Missing var_110
  loc_662FC4: LitVar_Missing var_F0
  loc_662FC7: LitVar_Missing var_D0
  loc_662FCA: LitVar_Missing var_B0
  loc_662FCD: LitStr "Copiar Tablas de Tanques"
  loc_662FD0: FStStrCopy var_90
  loc_662FD3: FLdRfVar var_90
  loc_662FD6: LitI4 1
  loc_662FDB: PopTmpLdAdStr var_8C
  loc_662FDE: LitI2_Byte &H3D
  loc_662FE0: PopTmpLdAd2 var_88
  loc_662FE3: ImpAdLdRf MemVar_74C7D0
  loc_662FE6: NewIfNullPr clsMsg
  loc_662FE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_662FEE: ILdRf var_1D4
  loc_662FF1: FLdPrThis
  loc_662FF2: VCallAd Control_ID_Label1
  loc_662FF5: FStAdFunc var_1D8
  loc_662FF8: FLdPr var_1D8
  loc_662FFB: Me.Caption = from_stack_1
  loc_663000: FFreeStr var_90 = ""
  loc_663007: FFree1Ad var_1D8
  loc_66300A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_663021: FLdRfVar var_1D4
  loc_663024: LitVar_Missing var_1D0
  loc_663027: LitVar_Missing var_1B0
  loc_66302A: LitVar_Missing var_190
  loc_66302D: LitVar_Missing var_170
  loc_663030: LitVar_Missing var_150
  loc_663033: LitVar_Missing var_130
  loc_663036: LitVar_Missing var_110
  loc_663039: LitVar_Missing var_F0
  loc_66303C: LitVar_Missing var_D0
  loc_66303F: LitVar_Missing var_B0
  loc_663042: LitStr "Copiar Tabla del Tanque:"
  loc_663045: FStStrCopy var_90
  loc_663048: FLdRfVar var_90
  loc_66304B: LitI4 2
  loc_663050: PopTmpLdAdStr var_8C
  loc_663053: LitI2_Byte &H3D
  loc_663055: PopTmpLdAd2 var_88
  loc_663058: ImpAdLdRf MemVar_74C7D0
  loc_66305B: NewIfNullPr clsMsg
  loc_66305E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_663063: ILdRf var_1D4
  loc_663066: FLdPrThis
  loc_663067: VCallAd Control_ID_Label2
  loc_66306A: FStAdFunc var_1D8
  loc_66306D: FLdPr var_1D8
  loc_663070: Me.Caption = from_stack_1
  loc_663075: FFreeStr var_90 = ""
  loc_66307C: FFree1Ad var_1D8
  loc_66307F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_663096: FLdRfVar var_1D4
  loc_663099: LitVar_Missing var_1D0
  loc_66309C: LitVar_Missing var_1B0
  loc_66309F: LitVar_Missing var_190
  loc_6630A2: LitVar_Missing var_170
  loc_6630A5: LitVar_Missing var_150
  loc_6630A8: LitVar_Missing var_130
  loc_6630AB: LitVar_Missing var_110
  loc_6630AE: LitVar_Missing var_F0
  loc_6630B1: LitVar_Missing var_D0
  loc_6630B4: LitVar_Missing var_B0
  loc_6630B7: LitStr "A Tabla del Tanque:"
  loc_6630BA: FStStrCopy var_90
  loc_6630BD: FLdRfVar var_90
  loc_6630C0: LitI4 3
  loc_6630C5: PopTmpLdAdStr var_8C
  loc_6630C8: LitI2_Byte &H3D
  loc_6630CA: PopTmpLdAd2 var_88
  loc_6630CD: ImpAdLdRf MemVar_74C7D0
  loc_6630D0: NewIfNullPr clsMsg
  loc_6630D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6630D8: ILdRf var_1D4
  loc_6630DB: FLdPrThis
  loc_6630DC: VCallAd Control_ID_Label3
  loc_6630DF: FStAdFunc var_1D8
  loc_6630E2: FLdPr var_1D8
  loc_6630E5: Me.Caption = from_stack_1
  loc_6630EA: FFreeStr var_90 = ""
  loc_6630F1: FFree1Ad var_1D8
  loc_6630F4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_66310B: FLdRfVar var_1D4
  loc_66310E: LitVar_Missing var_1D0
  loc_663111: LitVar_Missing var_1B0
  loc_663114: LitVar_Missing var_190
  loc_663117: LitVar_Missing var_170
  loc_66311A: LitVar_Missing var_150
  loc_66311D: LitVar_Missing var_130
  loc_663120: LitVar_Missing var_110
  loc_663123: LitVar_Missing var_F0
  loc_663126: LitVar_Missing var_D0
  loc_663129: LitVar_Missing var_B0
  loc_66312C: LitStr "&Aceptar"
  loc_66312F: FStStrCopy var_90
  loc_663132: FLdRfVar var_90
  loc_663135: LitI4 4
  loc_66313A: PopTmpLdAdStr var_8C
  loc_66313D: LitI2_Byte &H3D
  loc_66313F: PopTmpLdAd2 var_88
  loc_663142: ImpAdLdRf MemVar_74C7D0
  loc_663145: NewIfNullPr clsMsg
  loc_663148: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66314D: ILdRf var_1D4
  loc_663150: FLdPrThis
  loc_663151: VCallAd Control_ID_cmdAceptar
  loc_663154: FStAdFunc var_1D8
  loc_663157: FLdPr var_1D8
  loc_66315A: Me.Caption = from_stack_1
  loc_66315F: FFreeStr var_90 = ""
  loc_663166: FFree1Ad var_1D8
  loc_663169: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_663180: FLdRfVar var_1D4
  loc_663183: LitVar_Missing var_1D0
  loc_663186: LitVar_Missing var_1B0
  loc_663189: LitVar_Missing var_190
  loc_66318C: LitVar_Missing var_170
  loc_66318F: LitVar_Missing var_150
  loc_663192: LitVar_Missing var_130
  loc_663195: LitVar_Missing var_110
  loc_663198: LitVar_Missing var_F0
  loc_66319B: LitVar_Missing var_D0
  loc_66319E: LitVar_Missing var_B0
  loc_6631A1: LitStr "&Cancelar"
  loc_6631A4: FStStrCopy var_90
  loc_6631A7: FLdRfVar var_90
  loc_6631AA: LitI4 5
  loc_6631AF: PopTmpLdAdStr var_8C
  loc_6631B2: LitI2_Byte &H3D
  loc_6631B4: PopTmpLdAd2 var_88
  loc_6631B7: ImpAdLdRf MemVar_74C7D0
  loc_6631BA: NewIfNullPr clsMsg
  loc_6631BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6631C2: ILdRf var_1D4
  loc_6631C5: FLdPrThis
  loc_6631C6: VCallAd Control_ID_cmdCancelar
  loc_6631C9: FStAdFunc var_1D8
  loc_6631CC: FLdPr var_1D8
  loc_6631CF: Me.Caption = from_stack_1
  loc_6631D4: FFreeStr var_90 = ""
  loc_6631DB: FFree1Ad var_1D8
  loc_6631DE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6631F5: FLdRfVar var_1DC
  loc_6631F8: FLdPr Me
  loc_6631FB:  = Me.Width
  loc_663200: FLdRfVar var_8C
  loc_663203: FLdRfVar var_1D8
  loc_663206: ImpAdLdRf MemVar_7520D4
  loc_663209: NewIfNullPr Global
  loc_66320C:  = Global.Screen
  loc_663211: FLdPr var_1D8
  loc_663214:  = Screen.Width
  loc_663219: FLdFPR4 var_8C
  loc_66321C: FLdFPR4 var_1DC
  loc_66321F: SubR4
  loc_663220: CI4R8
  loc_663221: LitI4 2
  loc_663226: IDvI4
  loc_663227: CR8I4
  loc_663228: PopFPR4
  loc_663229: FLdPr Me
  loc_66322C: Me.Left = from_stack_1s
  loc_663231: FFree1Ad var_1D8
  loc_663234: FLdRfVar var_1DC
  loc_663237: FLdPr Me
  loc_66323A:  = Me.Height
  loc_66323F: FLdRfVar var_8C
  loc_663242: FLdRfVar var_1D8
  loc_663245: ImpAdLdRf MemVar_7520D4
  loc_663248: NewIfNullPr Global
  loc_66324B:  = Global.Screen
  loc_663250: FLdPr var_1D8
  loc_663253:  = Screen.Height
  loc_663258: FLdFPR4 var_8C
  loc_66325B: FLdFPR4 var_1DC
  loc_66325E: SubR4
  loc_66325F: CI4R8
  loc_663260: LitI4 2
  loc_663265: IDvI4
  loc_663266: CR8I4
  loc_663267: PopFPR4
  loc_663268: FLdPr Me
  loc_66326B: Me.Top = from_stack_1s
  loc_663270: FFree1Ad var_1D8
  loc_663273: LitI2_Byte 1
  loc_663275: FLdRfVar var_86
  loc_663278: ImpAdLdUI1
  loc_66327C: CI2UI1
  loc_66327E: ForI2 var_1E0
  loc_663284: LitVar_Missing var_A0
  loc_663287: PopAdLdVar
  loc_663288: FLdI2 var_86
  loc_66328B: CStrUI1
  loc_66328D: FStStrNoPop var_90
  loc_663290: FLdPrThis
  loc_663291: VCallAd Control_ID_cmbDeTanque
  loc_663294: FStAdFunc var_1D8
  loc_663297: FLdPr var_1D8
  loc_66329A: Me.AddItem from_stack_1, from_stack_2
  loc_66329F: FFree1Str var_90
  loc_6632A2: FFree1Ad var_1D8
  loc_6632A5: LitVar_Missing var_A0
  loc_6632A8: PopAdLdVar
  loc_6632A9: FLdI2 var_86
  loc_6632AC: CStrUI1
  loc_6632AE: FStStrNoPop var_90
  loc_6632B1: FLdPrThis
  loc_6632B2: VCallAd Control_ID_cmbATanque
  loc_6632B5: FStAdFunc var_1D8
  loc_6632B8: FLdPr var_1D8
  loc_6632BB: Me.AddItem from_stack_1, from_stack_2
  loc_6632C0: FFree1Str var_90
  loc_6632C3: FFree1Ad var_1D8
  loc_6632C6: FLdRfVar var_86
  loc_6632C9: NextI2 var_1E0, loc_663284
  loc_6632CE: LitI2_Byte 0
  loc_6632D0: FLdPrThis
  loc_6632D1: VCallAd Control_ID_cmbDeTanque
  loc_6632D4: FStAdFunc var_1D8
  loc_6632D7: FLdPr var_1D8
  loc_6632DA: Me.ListIndex = from_stack_1
  loc_6632DF: FFree1Ad var_1D8
  loc_6632E2: LitI2_Byte 0
  loc_6632E4: FLdPrThis
  loc_6632E5: VCallAd Control_ID_cmbATanque
  loc_6632E8: FStAdFunc var_1D8
  loc_6632EB: FLdPr var_1D8
  loc_6632EE: Me.ListIndex = from_stack_1
  loc_6632F3: FFree1Ad var_1D8
  loc_6632F6: ExitProcHresult
End Sub

Private Function Proc_31_3_630B70(arg_C, arg_10) '630B70
  'Data Table: 41216C
  loc_6309C8: LitI2_Byte 1
  loc_6309CA: FStI2 var_8E
  loc_6309CD: LitI2_Byte 0
  loc_6309CF: FStI2 var_90
  loc_6309D2: LitStr vbNullString
  loc_6309D5: FStStrCopy var_8C
  loc_6309D8: FLdI2 var_8E
  loc_6309DB: CI4UI1
  loc_6309DC: ILdI4 arg_C
  loc_6309DF: FnLenStr
  loc_6309E0: LtI4
  loc_6309E1: BranchF loc_630B67
  loc_6309E4: ILdRf var_8C
  loc_6309E7: LitVarI2 var_B0, 16
  loc_6309EC: FLdI2 var_8E
  loc_6309EF: CI4UI1
  loc_6309F0: ILdI4 arg_C
  loc_6309F3: ImpAdCallI2 Mid$(, , )
  loc_6309F8: FStStrNoPop var_B4
  loc_6309FB: ConcatStr
  loc_6309FC: FStStr var_8C
  loc_6309FF: FFree1Str var_B4
  loc_630A02: FFree1Var var_B0 = ""
  loc_630A05: FLdI2 var_8E
  loc_630A08: LitI2_Byte &H10
  loc_630A0A: AddI2
  loc_630A0B: FStI2 var_8E
  loc_630A0E: FLdI2 var_8E
  loc_630A11: LitI2_Byte 1
  loc_630A13: SubI2
  loc_630A14: LitI2 6560
  loc_630A17: ModI2
  loc_630A18: LitI2_Byte 0
  loc_630A1A: EqI2
  loc_630A1B: BranchF loc_630B5F
  loc_630A1E: LitVarStr var_A0, "0"
  loc_630A23: FStVarCopyObj var_B0
  loc_630A26: FLdRfVar var_B0
  loc_630A29: LitI4 8
  loc_630A2E: FLdRfVar var_C4
  loc_630A31: ImpAdCallFPR4  = String(, )
  loc_630A36: LitI4 1
  loc_630A3B: LitI4 1
  loc_630A40: FLdRfVar var_C4
  loc_630A43: FLdRfVar var_90
  loc_630A46: CVarRef
  loc_630A4B: ImpAdCallI2 Format$(, )
  loc_630A50: FStStrNoPop var_B4
  loc_630A53: LitStr "00000410"
  loc_630A56: ConcatStr
  loc_630A57: CVarStr var_144
  loc_630A5A: LitVarStr var_114, "0"
  loc_630A5F: FStVarCopyObj var_124
  loc_630A62: FLdRfVar var_124
  loc_630A65: LitVarStr var_F4, "1"
  loc_630A6A: FStVarCopyObj var_104
  loc_630A6D: FLdRfVar var_104
  loc_630A70: FLdI2 var_8E
  loc_630A73: LitI2_Byte 1
  loc_630A75: SubI2
  loc_630A76: LitI2 26240
  loc_630A79: ModI2
  loc_630A7A: LitI2_Byte 0
  loc_630A7C: EqI2
  loc_630A7D: CVarBoolI2 var_E4
  loc_630A81: FLdRfVar var_134
  loc_630A84: ImpAdCallFPR4  = IIf(, , )
  loc_630A89: FLdRfVar var_134
  loc_630A8C: ConcatVar var_154
  loc_630A90: ILdRf var_8C
  loc_630A93: CVarStr var_164
  loc_630A96: ConcatVar var_174
  loc_630A9A: CStrVarTmp
  loc_630A9B: FStStr var_8C
  loc_630A9E: FFree1Str var_B4
  loc_630AA1: FFreeVar var_B0 = "": var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_134 = "": var_154 = ""
  loc_630AB6: FLdRfVar var_17A
  loc_630AB9: FLdPrThis
  loc_630ABA: VCallAd Control_ID_cmbATanque
  loc_630ABD: FStAdFunc var_178
  loc_630AC0: FLdPr var_178
  loc_630AC3:  = Me.ListIndex
  loc_630AC8: FLdRfVar var_B0
  loc_630ACB: FLdRfVar var_8C
  loc_630ACE: ILdRf arg_10
  loc_630AD1: FLdI2 var_17A
  loc_630AD4: LitI2_Byte 1
  loc_630AD6: AddI2
  loc_630AD7: PopTmpLdAd2 var_182
  loc_630ADA: FLdRfVar var_180
  loc_630ADD: ImpAdLdRf MemVar_74C760
  loc_630AE0: NewIfNullPr Formx
  loc_630AE3: from_stack_1v = Formx.global_4589716Get()
  loc_630AE8: FLdPr var_180
  loc_630AEB: Call 0.Method_arg_17C ()
  loc_630AF0: FLdRfVar var_B0
  loc_630AF3: NotVar var_C4
  loc_630AF7: CBoolVarNull
  loc_630AF9: FFreeAd var_178 = ""
  loc_630B00: FFree1Var var_B0 = ""
  loc_630B03: BranchF loc_630B37
  loc_630B06: FLdRfVar var_B0
  loc_630B09: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_630B0E: FLdRfVar var_B0
  loc_630B11: CBoolVarNull
  loc_630B13: FFree1Var var_B0 = ""
  loc_630B16: BranchF loc_630B34
  loc_630B19: ILdRf Me
  loc_630B1C: FStAdNoPop
  loc_630B20: ImpAdLdRf MemVar_7520D4
  loc_630B23: NewIfNullPr Global
  loc_630B26: Global.Unload from_stack_1
  loc_630B2B: FFree1Ad var_178
  loc_630B2E: ExitProcCbHresult
  loc_630B34: Branch loc_630AB6
  loc_630B37: LitStr vbNullString
  loc_630B3A: FStStrCopy var_8C
  loc_630B3D: FLdI2 var_8E
  loc_630B40: LitI2_Byte 1
  loc_630B42: SubI2
  loc_630B43: LitI2 26240
  loc_630B46: ModI2
  loc_630B47: LitI2_Byte 0
  loc_630B49: EqI2
  loc_630B4A: BranchF loc_630B55
  loc_630B4D: LitI2_Byte 0
  loc_630B4F: FStI2 var_90
  loc_630B52: Branch loc_630B5F
  loc_630B55: FLdI2 var_90
  loc_630B58: LitI2 400
  loc_630B5B: AddI2
  loc_630B5C: FStI2 var_90
  loc_630B5F: ImpAdCallFPR4 DoEvents()
  loc_630B64: Branch loc_6309D8
  loc_630B67: ExitProcCbHresult
End Function

Private Function Proc_31_4_65940C(arg_C, arg_10) '65940C
  'Data Table: 41216C
  loc_659108: LitI2_Byte 0
  loc_65910A: FStI2 var_8A
  loc_65910D: LitI2_Byte 1
  loc_65910F: FStI2 var_8C
  loc_659112: LitStr "0000000000000000"
  loc_659115: FStStrCopy var_88
  loc_659118: LitI2_Byte 1
  loc_65911A: FLdRfVar var_8E
  loc_65911D: LitI2 6000
  loc_659120: ForI2 var_92
  loc_659126: FLdI2 var_8E
  loc_659129: CI4UI1
  loc_65912A: FLdPr Me
  loc_65912D: MemLdRfVar from_stack_1.global_52
  loc_659130: Ary1LdFPR4
  loc_659131: LitI2_Byte 0
  loc_659133: CR8I2
  loc_659134: GtR4
  loc_659135: BranchF loc_65932B
  loc_659138: ILdRf var_88
  loc_65913B: LitI4 1
  loc_659140: LitI4 1
  loc_659145: LitVarStr var_B4, "00000000"
  loc_65914A: FStVarCopyObj var_C4
  loc_65914D: FLdRfVar var_C4
  loc_659150: FLdRfVar var_8E
  loc_659153: CVarRef
  loc_659158: ImpAdCallI2 Format$(, )
  loc_65915D: FStStrNoPop var_C8
  loc_659160: ConcatStr
  loc_659161: FStStrNoPop var_10C
  loc_659164: LitI4 1
  loc_659169: LitI4 1
  loc_65916E: LitVarStr var_F8, "00000000"
  loc_659173: FStVarCopyObj var_108
  loc_659176: FLdRfVar var_108
  loc_659179: FLdI2 var_8E
  loc_65917C: CI4UI1
  loc_65917D: FLdPr Me
  loc_659180: MemLdRfVar from_stack_1.global_52
  loc_659183: Ary1LdFPR4
  loc_659184: LitI2_Byte &H64
  loc_659186: CR8I2
  loc_659187: MulR8
  loc_659188: CVarR4
  loc_65918C: ImpAdCallI2 Format$(, )
  loc_659191: FStStrNoPop var_110
  loc_659194: ConcatStr
  loc_659195: FStStr var_88
  loc_659198: FFreeStr var_C8 = "": var_10C = ""
  loc_6591A1: FFreeVar var_C4 = "": var_E8 = ""
  loc_6591AA: FLdI2 var_8C
  loc_6591AD: LitI2_Byte 1
  loc_6591AF: AddI2
  loc_6591B0: FStI2 var_8C
  loc_6591B3: FLdI2 var_8C
  loc_6591B6: LitI2 400
  loc_6591B9: EqI2
  loc_6591BA: BranchF loc_65932B
  loc_6591BD: FLdRfVar var_116
  loc_6591C0: FLdRfVar var_8E
  loc_6591C3: FLdPr Me
  loc_6591C6: MemLdRfVar from_stack_1.global_52
  loc_6591C9: PopTmpLdAdStr var_114
  loc_6591CC: from_stack_3v = Proc_31_5_5DBD08(from_stack_1v, from_stack_2v)
  loc_6591D1: FLdI2 var_116
  loc_6591D4: BranchF loc_659248
  loc_6591D7: LitI4 1
  loc_6591DC: LitI4 1
  loc_6591E1: LitVarStr var_B4, "00000000"
  loc_6591E6: FStVarCopyObj var_C4
  loc_6591E9: FLdRfVar var_C4
  loc_6591EC: FLdRfVar var_8A
  loc_6591EF: CVarRef
  loc_6591F4: ImpAdCallI2 Format$(, )
  loc_6591F9: FStStrNoPop var_C8
  loc_6591FC: LitI4 1
  loc_659201: LitI4 1
  loc_659206: LitVarStr var_F8, "00000000"
  loc_65920B: FStVarCopyObj var_E8
  loc_65920E: FLdRfVar var_E8
  loc_659211: FLdRfVar var_8C
  loc_659214: CVarRef
  loc_659219: ImpAdCallI2 Format$(, )
  loc_65921E: FStStrNoPop var_10C
  loc_659221: ConcatStr
  loc_659222: FStStrNoPop var_110
  loc_659225: LitStr "1"
  loc_659228: ConcatStr
  loc_659229: FStStrNoPop var_11C
  loc_65922C: ILdRf var_88
  loc_65922F: ConcatStr
  loc_659230: FStStr var_88
  loc_659233: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_65923E: FFreeVar var_C4 = ""
  loc_659245: Branch loc_6592B6
  loc_659248: LitI4 1
  loc_65924D: LitI4 1
  loc_659252: LitVarStr var_B4, "00000000"
  loc_659257: FStVarCopyObj var_C4
  loc_65925A: FLdRfVar var_C4
  loc_65925D: FLdRfVar var_8A
  loc_659260: CVarRef
  loc_659265: ImpAdCallI2 Format$(, )
  loc_65926A: FStStrNoPop var_C8
  loc_65926D: LitI4 1
  loc_659272: LitI4 1
  loc_659277: LitVarStr var_F8, "00000000"
  loc_65927C: FStVarCopyObj var_E8
  loc_65927F: FLdRfVar var_E8
  loc_659282: FLdRfVar var_8C
  loc_659285: CVarRef
  loc_65928A: ImpAdCallI2 Format$(, )
  loc_65928F: FStStrNoPop var_10C
  loc_659292: ConcatStr
  loc_659293: FStStrNoPop var_110
  loc_659296: LitStr "0"
  loc_659299: ConcatStr
  loc_65929A: FStStrNoPop var_11C
  loc_65929D: ILdRf var_88
  loc_6592A0: ConcatStr
  loc_6592A1: FStStr var_88
  loc_6592A4: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_6592AF: FFreeVar var_C4 = ""
  loc_6592B6: FLdRfVar var_C4
  loc_6592B9: FLdRfVar var_88
  loc_6592BC: ILdRf arg_10
  loc_6592BF: ILdRf arg_C
  loc_6592C2: FLdRfVar var_120
  loc_6592C5: ImpAdLdRf MemVar_74C760
  loc_6592C8: NewIfNullPr Formx
  loc_6592CB: from_stack_1v = Formx.global_4589716Get()
  loc_6592D0: FLdPr var_120
  loc_6592D3: Call 0.Method_arg_17C ()
  loc_6592D8: FLdRfVar var_C4
  loc_6592DB: NotVar var_E8
  loc_6592DF: CBoolVarNull
  loc_6592E1: FFree1Ad var_120
  loc_6592E4: FFree1Var var_C4 = ""
  loc_6592E7: BranchF loc_659316
  loc_6592EA: FLdRfVar var_C4
  loc_6592ED: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6592F2: FLdRfVar var_C4
  loc_6592F5: CBoolVarNull
  loc_6592F7: FFree1Var var_C4 = ""
  loc_6592FA: BranchF loc_659313
  loc_6592FD: ILdRf Me
  loc_659300: FStAdNoPop
  loc_659304: ImpAdLdRf MemVar_7520D4
  loc_659307: NewIfNullPr Global
  loc_65930A: Global.Unload from_stack_1
  loc_65930F: FFree1Ad var_120
  loc_659312: ExitProcHresult
  loc_659313: Branch loc_6592B6
  loc_659316: LitI2_Byte 1
  loc_659318: FStI2 var_8C
  loc_65931B: LitStr "0000000000000000"
  loc_65931E: FStStrCopy var_88
  loc_659321: FLdI2 var_8A
  loc_659324: LitI2 400
  loc_659327: AddI2
  loc_659328: FStI2 var_8A
  loc_65932B: FLdRfVar var_8E
  loc_65932E: NextI2 var_92, loc_659126
  loc_659333: FLdI2 var_8C
  loc_659336: LitI2_Byte 0
  loc_659338: GtI2
  loc_659339: BranchF loc_65940A
  loc_65933C: LitI4 1
  loc_659341: LitI4 1
  loc_659346: LitVarStr var_B4, "00000000"
  loc_65934B: FStVarCopyObj var_C4
  loc_65934E: FLdRfVar var_C4
  loc_659351: FLdRfVar var_8A
  loc_659354: CVarRef
  loc_659359: ImpAdCallI2 Format$(, )
  loc_65935E: FStStrNoPop var_C8
  loc_659361: LitI4 1
  loc_659366: LitI4 1
  loc_65936B: LitVarStr var_F8, "00000000"
  loc_659370: FStVarCopyObj var_E8
  loc_659373: FLdRfVar var_E8
  loc_659376: FLdRfVar var_8C
  loc_659379: CVarRef
  loc_65937E: ImpAdCallI2 Format$(, )
  loc_659383: FStStrNoPop var_10C
  loc_659386: ConcatStr
  loc_659387: FStStrNoPop var_110
  loc_65938A: LitStr "1"
  loc_65938D: ConcatStr
  loc_65938E: FStStrNoPop var_11C
  loc_659391: ILdRf var_88
  loc_659394: ConcatStr
  loc_659395: FStStr var_88
  loc_659398: FFreeStr var_C8 = "": var_10C = "": var_110 = ""
  loc_6593A3: FFreeVar var_C4 = ""
  loc_6593AA: FLdRfVar var_C4
  loc_6593AD: FLdRfVar var_88
  loc_6593B0: ILdRf arg_10
  loc_6593B3: ILdRf arg_C
  loc_6593B6: FLdRfVar var_120
  loc_6593B9: ImpAdLdRf MemVar_74C760
  loc_6593BC: NewIfNullPr Formx
  loc_6593BF: from_stack_1v = Formx.global_4589716Get()
  loc_6593C4: FLdPr var_120
  loc_6593C7: Call 0.Method_arg_17C ()
  loc_6593CC: FLdRfVar var_C4
  loc_6593CF: NotVar var_E8
  loc_6593D3: CBoolVarNull
  loc_6593D5: FFree1Ad var_120
  loc_6593D8: FFree1Var var_C4 = ""
  loc_6593DB: BranchF loc_65940A
  loc_6593DE: FLdRfVar var_C4
  loc_6593E1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6593E6: FLdRfVar var_C4
  loc_6593E9: CBoolVarNull
  loc_6593EB: FFree1Var var_C4 = ""
  loc_6593EE: BranchF loc_659407
  loc_6593F1: ILdRf Me
  loc_6593F4: FStAdNoPop
  loc_6593F8: ImpAdLdRf MemVar_7520D4
  loc_6593FB: NewIfNullPr Global
  loc_6593FE: Global.Unload from_stack_1
  loc_659403: FFree1Ad var_120
  loc_659406: ExitProcHresult
  loc_659407: Branch loc_6593AA
  loc_65940A: ExitProcHresult
End Function

Private Function Proc_31_5_5DBD08(arg_C, arg_10) '5DBD08
  'Data Table: 41216C
  loc_5DBCC4: ILdI2 arg_10
  loc_5DBCC7: LitI2_Byte 1
  loc_5DBCC9: AddI2
  loc_5DBCCA: FStI2 var_88
  loc_5DBCCD: FLdI2 var_88
  loc_5DBCD0: LitI2 6000
  loc_5DBCD3: LtI2
  loc_5DBCD4: BranchF loc_5DBCF5
  loc_5DBCD7: FLdI2 var_88
  loc_5DBCDA: CI4UI1
  loc_5DBCDB: ILdI4 arg_C
  loc_5DBCDE: Ary1LdFPR4
  loc_5DBCDF: LitI2_Byte 0
  loc_5DBCE1: CR8I2
  loc_5DBCE2: GtR4
  loc_5DBCE3: BranchF loc_5DBCE9
  loc_5DBCE6: Branch loc_5DBCF5
  loc_5DBCE9: FLdI2 var_88
  loc_5DBCEC: LitI2_Byte 1
  loc_5DBCEE: AddI2
  loc_5DBCEF: FStI2 var_88
  loc_5DBCF2: Branch loc_5DBCCD
  loc_5DBCF5: FLdI2 var_88
  loc_5DBCF8: LitI2 6000
  loc_5DBCFB: EqI2
  loc_5DBCFC: FStI2 var_86
  loc_5DBCFF: ExitProcCbHresult
  loc_5DBD05: FLdRfVar var_2
End Function
