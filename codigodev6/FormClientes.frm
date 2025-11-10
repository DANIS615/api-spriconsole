VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form FormClientes
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 15
  ClientTop = 15
  ClientWidth = 11970
  ClientHeight = 6465
  BeginProperty Font
    Name = "Arial"
    Size = 11.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin MSMask.MaskEdBox txtRazonSocial
    Left = 2520
    Top = 2040
    Width = 4455
    Height = 375
    TabIndex = 1
    OleObjectBlob = "FormClientes.frx":0000
  End
  Begin VB.CommandButton cmdAlta
    Caption = "&Alta Cliente"
    Left = 4920
    Top = 5520
    Width = 2295
    Height = 735
    TabIndex = 13
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
  Begin VB.CommandButton cmdConsulta
    Caption = "C&onsulta"
    Left = 7920
    Top = 5520
    Width = 1815
    Height = 735
    TabIndex = 14
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Consulta por Razon Social"
  End
  Begin VB.CommandButton cmdGrabarCliente
    Caption = "&Grabar Cliente"
    Left = 120
    Top = 5520
    Width = 2295
    Height = 735
    TabIndex = 11
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
  Begin VB.CommandButton cmdBorrarCliente
    Caption = "&Borrar Cliente"
    Left = 2520
    Top = 5520
    Width = 2295
    Height = 735
    TabIndex = 12
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 9960
    Top = 5520
    Width = 1815
    Height = 735
    TabIndex = 15
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
  Begin MSMask.MaskEdBox meCUIT
    Left = 2520
    Top = 3600
    Width = 2295
    Height = 375
    TabIndex = 4
    OleObjectBlob = "FormClientes.frx":0060
  End
  Begin MSMask.MaskEdBox meNumeroCliente
    Left = 2520
    Top = 1440
    Width = 735
    Height = 375
    TabIndex = 0
    OleObjectBlob = "FormClientes.frx":00C0
  End
  Begin VB.CheckBox chkCuentaCorriente
    Caption = "Cuenta Corriente"
    Left = 2520
    Top = 4080
    Width = 2535
    Height = 375
    TabIndex = 5
  End
  Begin VB.Frame frmIVA
    Caption = "IVA"
    Left = 8040
    Top = 1440
    Width = 3375
    Height = 2895
    TabIndex = 23
    Begin VB.OptionButton optIVA
      Caption = "Responsable No Inscripto"
      Index = 4
      Left = 120
      Top = 2280
      Width = 3135
      Height = 495
      TabIndex = 10
    End
    Begin VB.OptionButton optIVA
      Caption = "Responsable Inscripto"
      Index = 3
      Left = 120
      Top = 1800
      Width = 3135
      Height = 375
      TabIndex = 9
    End
    Begin VB.OptionButton optIVA
      Caption = "No Responsable"
      Index = 2
      Left = 120
      Top = 1320
      Width = 3135
      Height = 375
      TabIndex = 8
    End
    Begin VB.OptionButton optIVA
      Caption = "Exento"
      Index = 1
      Left = 120
      Top = 840
      Width = 3135
      Height = 375
      TabIndex = 7
    End
    Begin VB.OptionButton optIVA
      Caption = "Consumidor Final"
      Index = 0
      Left = 120
      Top = 360
      Width = 3135
      Height = 375
      TabIndex = 6
    End
  End
  Begin VB.TextBox txtTelefono
    Left = 2520
    Top = 3000
    Width = 2055
    Height = 375
    Enabled = 0   'False
    TabIndex = 3
    MaxLength = 15
  End
  Begin VB.TextBox txtDomicilio
    Left = 2520
    Top = 2520
    Width = 5055
    Height = 375
    Enabled = 0   'False
    TabIndex = 2
    MaxLength = 40
  End
  Begin VB.Label Label8
    Caption = "Control de Clientes"
    Left = 120
    Top = 120
    Width = 11655
    Height = 855
    TabIndex = 22
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 27.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CUITDesc
    Caption = "CUIT :"
    Left = 360
    Top = 3600
    Width = 2055
    Height = 375
    TabIndex = 21
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label6
    Caption = "Cuenta Corriente :"
    Left = 360
    Top = 4080
    Width = 2055
    Height = 375
    TabIndex = 20
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label4
    Caption = "Teléfono :"
    Left = 360
    Top = 3000
    Width = 2055
    Height = 375
    TabIndex = 19
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label3
    Caption = "Domicilio :"
    Left = 360
    Top = 2520
    Width = 2055
    Height = 375
    TabIndex = 18
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label2
    Caption = "Razon Social :"
    Left = 360
    Top = 2040
    Width = 2055
    Height = 375
    TabIndex = 17
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label1
    Caption = "Nº Cliente :"
    Left = 360
    Top = 1440
    Width = 2055
    Height = 375
    TabIndex = 16
    Alignment = 1 'Right Justify
  End
  Begin VB.Shape Shape1
    Left = 240
    Top = 1200
    Width = 11415
    Height = 3495
    BorderWidth = 3
  End
End

Attribute VB_Name = "FormClientes"


Private Sub cmdGrabarCliente_Click() '64ACBC
  'Data Table: 43E094
  loc_64AA5C: FLdPrThis
  loc_64AA5D: VCallAd Control_ID_meNumeroCliente
  loc_64AA60: FStAdFunc var_154
  loc_64AA63: FLdPr var_154
  loc_64AA66: LateIdLdVar var_164 DispID_22 0
  loc_64AA6D: PopAd
  loc_64AA6F: FLdPrThis
  loc_64AA70: VCallAd Control_ID_meNumeroCliente
  loc_64AA73: FStAdFunc var_16C
  loc_64AA76: FLdPr var_16C
  loc_64AA79: LateIdLdVar var_17C DispID_22 0
  loc_64AA80: CStrVarTmp
  loc_64AA81: FStStrNoPop var_180
  loc_64AA84: ImpAdCallFPR4 push Val()
  loc_64AA89: FStFPR8 var_1E8
  loc_64AA8C: LitVarI2 var_1D0, 0
  loc_64AA91: FLdFPR8 var_1E8
  loc_64AA94: CI2R8
  loc_64AA95: CVarI2 var_1B0
  loc_64AA98: FLdRfVar var_164
  loc_64AA9B: CStrVarTmp
  loc_64AA9C: FStStrNoPop var_168
  loc_64AA9F: LitStr vbNullString
  loc_64AAA2: NeStr
  loc_64AAA4: CVarBoolI2 var_190
  loc_64AAA8: FLdRfVar var_1E0
  loc_64AAAB: ImpAdCallFPR4  = IIf(, , )
  loc_64AAB0: FLdRfVar var_1E0
  loc_64AAB3: CI2Var
  loc_64AAB4: FStI2 var_14C
  loc_64AAB7: FFreeStr var_168 = ""
  loc_64AABE: FFreeAd var_154 = ""
  loc_64AAC5: FFreeVar var_164 = "": var_17C = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_64AAD4: FLdPrThis
  loc_64AAD5: VCallAd Control_ID_txtRazonSocial
  loc_64AAD8: FStAdFunc var_154
  loc_64AADB: FLdPr var_154
  loc_64AADE: LateIdLdVar var_164 DispID_22 0
  loc_64AAE5: CStrVarTmp
  loc_64AAE6: FStStrNoPop var_168
  loc_64AAE9: FLdRfVar var_14A
  loc_64AAEC: StFixedStr
  loc_64AAEF: FFree1Str var_168
  loc_64AAF2: FFree1Ad var_154
  loc_64AAF5: FFree1Var var_164 = ""
  loc_64AAF8: FLdRfVar var_168
  loc_64AAFB: FLdPrThis
  loc_64AAFC: VCallAd Control_ID_txtDomicilio
  loc_64AAFF: FStAdFunc var_154
  loc_64AB02: FLdPr var_154
  loc_64AB05:  = Me.Text
  loc_64AB0A: ILdRf var_168
  loc_64AB0D: FLdRfVar var_118
  loc_64AB10: StFixedStr
  loc_64AB13: FFree1Str var_168
  loc_64AB16: FFree1Ad var_154
  loc_64AB19: FLdRfVar var_168
  loc_64AB1C: FLdPrThis
  loc_64AB1D: VCallAd Control_ID_txtTelefono
  loc_64AB20: FStAdFunc var_154
  loc_64AB23: FLdPr var_154
  loc_64AB26:  = Me.Text
  loc_64AB2B: ILdRf var_168
  loc_64AB2E: FLdRfVar var_C8
  loc_64AB31: StFixedStr
  loc_64AB34: FFree1Str var_168
  loc_64AB37: FFree1Ad var_154
  loc_64AB3A: FLdPrThis
  loc_64AB3B: VCallAd Control_ID_meCUIT
  loc_64AB3E: FStAdFunc var_154
  loc_64AB41: FLdPr var_154
  loc_64AB44: LateIdLdVar var_164 DispID_22 0
  loc_64AB4B: CStrVarTmp
  loc_64AB4C: FStStrNoPop var_168
  loc_64AB4F: FLdRfVar var_AA
  loc_64AB52: StFixedStr
  loc_64AB55: FFree1Str var_168
  loc_64AB58: FFree1Ad var_154
  loc_64AB5B: FFree1Var var_164 = ""
  loc_64AB5E: FLdRfVar var_1EA
  loc_64AB61: from_stack_1v = Proc_37_19_5E1FA0()
  loc_64AB66: FLdI2 var_1EA
  loc_64AB69: CUI1I2
  loc_64AB6B: FStUI1 var_8C
  loc_64AB6F: FLdRfVar var_1EA
  loc_64AB72: FLdPrThis
  loc_64AB73: VCallAd Control_ID_chkCuentaCorriente
  loc_64AB76: FStAdFunc var_154
  loc_64AB79: FLdPr var_154
  loc_64AB7C:  = Me.Value
  loc_64AB81: FLdI2 var_1EA
  loc_64AB84: CBoolUI1
  loc_64AB86: FStI2 var_8A
  loc_64AB89: FFree1Ad var_154
  loc_64AB8C: FLdRfVar var_1EA
  loc_64AB8F: FLdRfVar var_14E
  loc_64AB92: FLdRfVar var_14C
  loc_64AB95: FLdRfVar var_154
  loc_64AB98: ImpAdLdRf MemVar_74C760
  loc_64AB9B: NewIfNullPr Formx
  loc_64AB9E: from_stack_1v = Formx.global_4589716Get()
  loc_64ABA3: ILdRf var_154
  loc_64ABA6: ImpAdCallNonVirt
  loc_64ABAC: FLdI2 var_1EA
  loc_64ABAF: NotI4
  loc_64ABB0: FFree1Ad var_154
  loc_64ABB3: BranchF loc_64ABE2
  loc_64ABB6: FLdRfVar var_164
  loc_64ABB9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64ABBE: FLdRfVar var_164
  loc_64ABC1: CBoolVarNull
  loc_64ABC3: FFree1Var var_164 = ""
  loc_64ABC6: BranchF loc_64ABDF
  loc_64ABC9: ILdRf Me
  loc_64ABCC: FStAdNoPop
  loc_64ABD0: ImpAdLdRf MemVar_7520D4
  loc_64ABD3: NewIfNullPr Global
  loc_64ABD6: Global.Unload from_stack_1
  loc_64ABDB: FFree1Ad var_154
  loc_64ABDE: ExitProcHresult
  loc_64ABDF: Branch loc_64AB8C
  loc_64ABE2: FLdI2 var_14E
  loc_64ABE5: LitI2_Byte 0
  loc_64ABE7: EqI2
  loc_64ABE8: BranchF loc_64AC17
  loc_64ABEB: LitVar_Missing var_1D0
  loc_64ABEE: LitVar_Missing var_1B0
  loc_64ABF1: LitVar_Missing var_17C
  loc_64ABF4: LitI4 0
  loc_64ABF9: LitVarStr var_190, "No se ha podido dar de alta el cliente"
  loc_64ABFE: FStVarCopyObj var_164
  loc_64AC01: FLdRfVar var_164
  loc_64AC04: ImpAdCallFPR4 MsgBox(, , , , )
  loc_64AC09: FFreeVar var_164 = "": var_17C = "": var_1B0 = ""
  loc_64AC14: Branch loc_64AC3A
  loc_64AC17: FLdI2 var_14E
  loc_64AC1A: CStrUI1
  loc_64AC1C: CVarStr var_164
  loc_64AC1F: PopAdLdVar
  loc_64AC20: FLdPrThis
  loc_64AC21: VCallAd Control_ID_meNumeroCliente
  loc_64AC24: FStAdFunc var_154
  loc_64AC27: FLdPr var_154
  loc_64AC2A: LateIdSt
  loc_64AC2F: FFree1Ad var_154
  loc_64AC32: FFree1Var var_164 = ""
  loc_64AC35: from_stack_1v = Proc_37_17_5F3078()
  loc_64AC3A: LitI2_Byte &HFF
  loc_64AC3C: FLdPrThis
  loc_64AC3D: VCallAd Control_ID_cmdAlta
  loc_64AC40: FStAdFunc var_154
  loc_64AC43: FLdPr var_154
  loc_64AC46: Me.Visible = from_stack_1b
  loc_64AC4B: FFree1Ad var_154
  loc_64AC4E: LitI2_Byte &HFF
  loc_64AC50: FLdPrThis
  loc_64AC51: VCallAd Control_ID_cmdConsulta
  loc_64AC54: FStAdFunc var_154
  loc_64AC57: FLdPr var_154
  loc_64AC5A: Me.Visible = from_stack_1b
  loc_64AC5F: FFree1Ad var_154
  loc_64AC62: LitI2_Byte 0
  loc_64AC64: FLdPrThis
  loc_64AC65: VCallAd Control_ID_cmdGrabarCliente
  loc_64AC68: FStAdFunc var_154
  loc_64AC6B: FLdPr var_154
  loc_64AC6E: Me.Visible = from_stack_1b
  loc_64AC73: FFree1Ad var_154
  loc_64AC76: LitI2_Byte 0
  loc_64AC78: FLdPrThis
  loc_64AC79: VCallAd Control_ID_cmdBorrarCliente
  loc_64AC7C: FStAdFunc var_154
  loc_64AC7F: FLdPr var_154
  loc_64AC82: Me.Visible = from_stack_1b
  loc_64AC87: FFree1Ad var_154
  loc_64AC8A: Call meNumeroCliente_UnknownEvent_8()
  loc_64AC8F: LitVar_TRUE var_190
  loc_64AC92: PopAdLdVar
  loc_64AC93: FLdPrThis
  loc_64AC94: VCallAd Control_ID_meNumeroCliente
  loc_64AC97: FStAdFunc var_154
  loc_64AC9A: FLdPr var_154
  loc_64AC9D: LateIdSt
  loc_64ACA2: FFree1Ad var_154
  loc_64ACA5: FLdPrThis
  loc_64ACA6: VCallAd Control_ID_meNumeroCliente
  loc_64ACA9: FStAdFunc var_154
  loc_64ACAC: FLdPr var_154
  loc_64ACAF: LateIdCall
  loc_64ACB7: FFree1Ad var_154
  loc_64ACBA: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5E6CBC
  'Data Table: 43E094
  loc_5E6C4C: FLdRfVar var_8C
  loc_5E6C4F: FLdPrThis
  loc_5E6C50: VCallAd Control_ID_cmdCancelar
  loc_5E6C53: FStAdFunc var_88
  loc_5E6C56: FLdPr var_88
  loc_5E6C59:  = Me.Caption
  loc_5E6C5E: ILdRf var_8C
  loc_5E6C61: LitStr "&Aceptar"
  loc_5E6C64: EqStr
  loc_5E6C66: FFree1Str var_8C
  loc_5E6C69: FFree1Ad var_88
  loc_5E6C6C: BranchF loc_5E6CA5
  loc_5E6C6F: FLdPrThis
  loc_5E6C70: VCallAd Control_ID_meNumeroCliente
  loc_5E6C73: FStAdFunc var_88
  loc_5E6C76: FLdPr var_88
  loc_5E6C79: LateIdLdVar var_9C DispID_22 0
  loc_5E6C80: CStrVarTmp
  loc_5E6C81: FStStrNoPop var_8C
  loc_5E6C84: ImpAdLdRf MemVar_74D98C
  loc_5E6C87: NewIfNullPr EmisionFacturas
  loc_5E6C8A: VCallAd Control_ID_NroCliente
  loc_5E6C8D: FStAdFunc var_A0
  loc_5E6C90: FLdPr var_A0
  loc_5E6C93: EmisionFacturas.TextBox.Text = from_stack_1
  loc_5E6C98: FFree1Str var_8C
  loc_5E6C9B: FFreeAd var_88 = ""
  loc_5E6CA2: FFree1Var var_9C = ""
  loc_5E6CA5: ILdRf Me
  loc_5E6CA8: FStAdNoPop
  loc_5E6CAC: ImpAdLdRf MemVar_7520D4
  loc_5E6CAF: NewIfNullPr Global
  loc_5E6CB2: Global.Unload from_stack_1
  loc_5E6CB7: FFree1Ad var_88
  loc_5E6CBA: ExitProcHresult
End Sub

Private Sub meCUIT_UnknownEvent_0 '5E1C20
  'Data Table: 43E094
  loc_5E1BCC: LitVarI4
  loc_5E1BD4: PopAdLdVar
  loc_5E1BD5: FLdPrThis
  loc_5E1BD6: VCallAd Control_ID_meCUIT
  loc_5E1BD9: FStAdFunc var_98
  loc_5E1BDC: FLdPr var_98
  loc_5E1BDF: LateIdSt
  loc_5E1BE4: FFree1Ad var_98
  loc_5E1BE7: FLdPrThis
  loc_5E1BE8: VCallAd Control_ID_meCUIT
  loc_5E1BEB: FStAdFunc var_98
  loc_5E1BEE: FLdPr var_98
  loc_5E1BF1: LateIdLdVar var_A8 DispID_22 0
  loc_5E1BF8: CStrVarTmp
  loc_5E1BF9: FStStrNoPop var_AC
  loc_5E1BFC: FnLenStr
  loc_5E1BFD: CVarI4
  loc_5E1C01: PopAdLdVar
  loc_5E1C02: FLdPrThis
  loc_5E1C03: VCallAd Control_ID_meCUIT
  loc_5E1C06: FStAdFunc var_B0
  loc_5E1C09: FLdPr var_B0
  loc_5E1C0C: LateIdSt
  loc_5E1C11: FFree1Str var_AC
  loc_5E1C14: FFreeAd var_98 = ""
  loc_5E1C1B: FFree1Var var_A8 = ""
  loc_5E1C1E: ExitProcHresult
End Sub

Private Sub meNumeroCliente_UnknownEvent_8 '5E49B0
  'Data Table: 43E094
  loc_5E4948: FLdPrThis
  loc_5E4949: VCallAd Control_ID_meNumeroCliente
  loc_5E494C: FStAdFunc var_88
  loc_5E494F: FLdPr var_88
  loc_5E4952: LateIdLdVar var_98 DispID_22 0
  loc_5E4959: CStrVarTmp
  loc_5E495A: FStStrNoPop var_9C
  loc_5E495D: FnLenStr
  loc_5E495E: LitI4 0
  loc_5E4963: NeI4
  loc_5E4964: FFree1Str var_9C
  loc_5E4967: FFree1Ad var_88
  loc_5E496A: FFree1Var var_98 = ""
  loc_5E496D: BranchF loc_5E4996
  loc_5E4970: FLdPrThis
  loc_5E4971: VCallAd Control_ID_meNumeroCliente
  loc_5E4974: FStAdFunc var_88
  loc_5E4977: FLdPr var_88
  loc_5E497A: LateIdLdVar var_98 DispID_22 0
  loc_5E4981: CStrVarTmp
  loc_5E4982: FStStrNoPop var_9C
  loc_5E4985: Call ConsultaCliente(from_stack_1v)
  loc_5E498A: FFree1Str var_9C
  loc_5E498D: FFree1Ad var_88
  loc_5E4990: FFree1Var var_98 = ""
  loc_5E4993: Branch loc_5E49AF
  loc_5E4996: LitI2_Byte 0
  loc_5E4998: FLdPrThis
  loc_5E4999: VCallAd Control_ID_cmdBorrarCliente
  loc_5E499C: FStAdFunc var_88
  loc_5E499F: FLdPr var_88
  loc_5E49A2: Me.Visible = from_stack_1b
  loc_5E49A7: FFree1Ad var_88
  loc_5E49AA: Call LimpiaIngresos()
  loc_5E49AF: ExitProcHresult
End Sub

Private Sub meNumeroCliente_KeyPress(KeyAscii As Integer) '646DDC
  'Data Table: 43E094
  loc_646B7C: ILdI2 KeyAscii
  loc_646B7F: FStI2 var_86
  loc_646B82: FLdI2 var_86
  loc_646B85: LitI4 &H22
  loc_646B8A: CI2I4
  loc_646B8B: EqI2
  loc_646B8C: BranchF loc_646C48
  loc_646B8F: LitI2_Byte 0
  loc_646B91: IStI2 KeyAscii
  loc_646B94: FLdRfVar var_90
  loc_646B97: FLdRfVar var_8C
  loc_646B9A: ImpAdLdRf MemVar_7520D4
  loc_646B9D: NewIfNullPr Global
  loc_646BA0:  = Global.Screen
  loc_646BA5: FLdPr var_8C
  loc_646BA8:  = Screen.ActiveControl
  loc_646BAD: FLdPr var_90
  loc_646BB0: LateMemLdVar
  loc_646BB5: LitVarStr var_A0, "meNumeroCliente"
  loc_646BBA: HardType
  loc_646BBB: EqVar var_C0
  loc_646BBF: FLdPrThis
  loc_646BC0: VCallAd Control_ID_meNumeroCliente
  loc_646BC3: FStAdFunc var_C4
  loc_646BC6: FLdPr var_C4
  loc_646BC9: LateIdLdVar var_D4 DispID_22 0
  loc_646BD0: CStrVarTmp
  loc_646BD1: FStStrNoPop var_D8
  loc_646BD4: ImpAdCallFPR4 push Val()
  loc_646BD9: CR8R8
  loc_646BDA: LitI2 9999
  loc_646BDD: CR8I2
  loc_646BDE: LtR8
  loc_646BDF: CVarBoolI2 var_E8
  loc_646BE3: AndVar var_F8
  loc_646BE7: CBoolVarNull
  loc_646BE9: FFree1Str var_D8
  loc_646BEC: FFreeAd var_8C = "": var_90 = ""
  loc_646BF5: FFreeVar var_B0 = "": var_D4 = ""
  loc_646BFE: BranchF loc_646C45
  loc_646C01: FLdPrThis
  loc_646C02: VCallAd Control_ID_meNumeroCliente
  loc_646C05: FStAdFunc var_8C
  loc_646C08: FLdPr var_8C
  loc_646C0B: LateIdLdVar var_B0 DispID_22 0
  loc_646C12: CStrVarTmp
  loc_646C13: FStStrNoPop var_D8
  loc_646C16: ImpAdCallFPR4 push Val()
  loc_646C1B: LitI2_Byte 1
  loc_646C1D: CR8I2
  loc_646C1E: AddR8
  loc_646C1F: CStrR8
  loc_646C21: CVarStr var_C0
  loc_646C24: PopAdLdVar
  loc_646C25: FLdPrThis
  loc_646C26: VCallAd Control_ID_meNumeroCliente
  loc_646C29: FStAdFunc var_90
  loc_646C2C: FLdPr var_90
  loc_646C2F: LateIdSt
  loc_646C34: FFree1Str var_D8
  loc_646C37: FFreeAd var_8C = ""
  loc_646C3E: FFreeVar var_B0 = ""
  loc_646C45: Branch loc_646DDB
  loc_646C48: FLdI2 var_86
  loc_646C4B: LitI4 &H21
  loc_646C50: CI2I4
  loc_646C51: EqI2
  loc_646C52: BranchF loc_646D0D
  loc_646C55: LitI2_Byte 0
  loc_646C57: IStI2 KeyAscii
  loc_646C5A: FLdRfVar var_90
  loc_646C5D: FLdRfVar var_8C
  loc_646C60: ImpAdLdRf MemVar_7520D4
  loc_646C63: NewIfNullPr Global
  loc_646C66:  = Global.Screen
  loc_646C6B: FLdPr var_8C
  loc_646C6E:  = Screen.ActiveControl
  loc_646C73: FLdPr var_90
  loc_646C76: LateMemLdVar
  loc_646C7B: LitVarStr var_A0, "meNumeroCliente"
  loc_646C80: HardType
  loc_646C81: EqVar var_C0
  loc_646C85: FLdPrThis
  loc_646C86: VCallAd Control_ID_meNumeroCliente
  loc_646C89: FStAdFunc var_C4
  loc_646C8C: FLdPr var_C4
  loc_646C8F: LateIdLdVar var_D4 DispID_22 0
  loc_646C96: CStrVarTmp
  loc_646C97: FStStrNoPop var_D8
  loc_646C9A: ImpAdCallFPR4 push Val()
  loc_646C9F: CR8R8
  loc_646CA0: LitI2_Byte 1
  loc_646CA2: CR8I2
  loc_646CA3: GtR4
  loc_646CA4: CVarBoolI2 var_E8
  loc_646CA8: AndVar var_F8
  loc_646CAC: CBoolVarNull
  loc_646CAE: FFree1Str var_D8
  loc_646CB1: FFreeAd var_8C = "": var_90 = ""
  loc_646CBA: FFreeVar var_B0 = "": var_D4 = ""
  loc_646CC3: BranchF loc_646D0A
  loc_646CC6: FLdPrThis
  loc_646CC7: VCallAd Control_ID_meNumeroCliente
  loc_646CCA: FStAdFunc var_8C
  loc_646CCD: FLdPr var_8C
  loc_646CD0: LateIdLdVar var_B0 DispID_22 0
  loc_646CD7: CStrVarTmp
  loc_646CD8: FStStrNoPop var_D8
  loc_646CDB: ImpAdCallFPR4 push Val()
  loc_646CE0: LitI2_Byte 1
  loc_646CE2: CR8I2
  loc_646CE3: SubR4
  loc_646CE4: CStrR8
  loc_646CE6: CVarStr var_C0
  loc_646CE9: PopAdLdVar
  loc_646CEA: FLdPrThis
  loc_646CEB: VCallAd Control_ID_meNumeroCliente
  loc_646CEE: FStAdFunc var_90
  loc_646CF1: FLdPr var_90
  loc_646CF4: LateIdSt
  loc_646CF9: FFree1Str var_D8
  loc_646CFC: FFreeAd var_8C = ""
  loc_646D03: FFreeVar var_B0 = ""
  loc_646D0A: Branch loc_646DDB
  loc_646D0D: FLdI2 var_86
  loc_646D10: LitI4 &H24
  loc_646D15: CI2I4
  loc_646D16: EqI2
  loc_646D17: BranchF loc_646D75
  loc_646D1A: LitI2_Byte 0
  loc_646D1C: IStI2 KeyAscii
  loc_646D1F: FLdRfVar var_90
  loc_646D22: FLdRfVar var_8C
  loc_646D25: ImpAdLdRf MemVar_7520D4
  loc_646D28: NewIfNullPr Global
  loc_646D2B:  = Global.Screen
  loc_646D30: FLdPr var_8C
  loc_646D33:  = Screen.ActiveControl
  loc_646D38: FLdPr var_90
  loc_646D3B: LateMemLdVar
  loc_646D40: LitVarStr var_A0, "meNumeroCliente"
  loc_646D45: HardType
  loc_646D46: EqVarBool
  loc_646D48: FFreeAd var_8C = ""
  loc_646D4F: FFree1Var var_B0 = ""
  loc_646D52: BranchF loc_646D72
  loc_646D55: LitI2_Byte 1
  loc_646D57: CStrUI1
  loc_646D59: CVarStr var_B0
  loc_646D5C: PopAdLdVar
  loc_646D5D: FLdPrThis
  loc_646D5E: VCallAd Control_ID_meNumeroCliente
  loc_646D61: FStAdFunc var_8C
  loc_646D64: FLdPr var_8C
  loc_646D67: LateIdSt
  loc_646D6C: FFree1Ad var_8C
  loc_646D6F: FFree1Var var_B0 = ""
  loc_646D72: Branch loc_646DDB
  loc_646D75: FLdI2 var_86
  loc_646D78: LitI4 &H23
  loc_646D7D: CI2I4
  loc_646D7E: EqI2
  loc_646D7F: BranchF loc_646DDB
  loc_646D82: LitI2_Byte 0
  loc_646D84: IStI2 KeyAscii
  loc_646D87: FLdRfVar var_90
  loc_646D8A: FLdRfVar var_8C
  loc_646D8D: ImpAdLdRf MemVar_7520D4
  loc_646D90: NewIfNullPr Global
  loc_646D93:  = Global.Screen
  loc_646D98: FLdPr var_8C
  loc_646D9B:  = Screen.ActiveControl
  loc_646DA0: FLdPr var_90
  loc_646DA3: LateMemLdVar
  loc_646DA8: LitVarStr var_A0, "meNumeroCliente"
  loc_646DAD: HardType
  loc_646DAE: EqVarBool
  loc_646DB0: FFreeAd var_8C = ""
  loc_646DB7: FFree1Var var_B0 = ""
  loc_646DBA: BranchF loc_646DDB
  loc_646DBD: LitI2 9999
  loc_646DC0: CStrUI1
  loc_646DC2: CVarStr var_B0
  loc_646DC5: PopAdLdVar
  loc_646DC6: FLdPrThis
  loc_646DC7: VCallAd Control_ID_meNumeroCliente
  loc_646DCA: FStAdFunc var_8C
  loc_646DCD: FLdPr var_8C
  loc_646DD0: LateIdSt
  loc_646DD5: FFree1Ad var_8C
  loc_646DD8: FFree1Var var_B0 = ""
  loc_646DDB: ExitProcHresult
End Sub

Private Sub txtRazonSocial_UnknownEvent_0 '5E271C
  'Data Table: 43E094
  loc_5E26C8: LitVarI4
  loc_5E26D0: PopAdLdVar
  loc_5E26D1: FLdPrThis
  loc_5E26D2: VCallAd Control_ID_txtRazonSocial
  loc_5E26D5: FStAdFunc var_98
  loc_5E26D8: FLdPr var_98
  loc_5E26DB: LateIdSt
  loc_5E26E0: FFree1Ad var_98
  loc_5E26E3: FLdPrThis
  loc_5E26E4: VCallAd Control_ID_txtRazonSocial
  loc_5E26E7: FStAdFunc var_98
  loc_5E26EA: FLdPr var_98
  loc_5E26ED: LateIdLdVar var_A8 DispID_22 0
  loc_5E26F4: CStrVarTmp
  loc_5E26F5: FStStrNoPop var_AC
  loc_5E26F8: FnLenStr
  loc_5E26F9: CVarI4
  loc_5E26FD: PopAdLdVar
  loc_5E26FE: FLdPrThis
  loc_5E26FF: VCallAd Control_ID_txtRazonSocial
  loc_5E2702: FStAdFunc var_B0
  loc_5E2705: FLdPr var_B0
  loc_5E2708: LateIdSt
  loc_5E270D: FFree1Str var_AC
  loc_5E2710: FFreeAd var_98 = ""
  loc_5E2717: FFree1Var var_A8 = ""
  loc_5E271A: ExitProcHresult
End Sub

Private Sub txtRazonSocial_KeyDown(KeyCode As Integer, Shift As Integer) '5DA958
  'Data Table: 43E094
  loc_5DA924: ILdI2 KeyCode
  loc_5DA927: CI4UI1
  loc_5DA928: FLdRfVar var_94
  loc_5DA92B: ImpAdCallFPR4  = Chr()
  loc_5DA930: FLdRfVar var_94
  loc_5DA933: FLdRfVar var_A4
  loc_5DA936: ImpAdCallFPR4  = Ucase()
  loc_5DA93B: FLdRfVar var_A4
  loc_5DA93E: CStrVarVal var_A8
  loc_5DA942: ImpAdCallI2 Asc()
  loc_5DA947: IStI2 KeyCode
  loc_5DA94A: FFree1Str var_A8
  loc_5DA94D: FFreeVar var_94 = ""
  loc_5DA954: ExitProcHresult
End Sub

Private Sub txtDomicilio_GotFocus() '5DED64
  'Data Table: 43E094
  loc_5DED1C: LitI4 0
  loc_5DED21: FLdPrThis
  loc_5DED22: VCallAd Control_ID_txtDomicilio
  loc_5DED25: FStAdFunc var_88
  loc_5DED28: FLdPr var_88
  loc_5DED2B: Me.SelStart = from_stack_1
  loc_5DED30: FFree1Ad var_88
  loc_5DED33: FLdRfVar var_8C
  loc_5DED36: FLdPrThis
  loc_5DED37: VCallAd Control_ID_txtDomicilio
  loc_5DED3A: FStAdFunc var_88
  loc_5DED3D: FLdPr var_88
  loc_5DED40:  = Me.Text
  loc_5DED45: ILdRf var_8C
  loc_5DED48: FnLenStr
  loc_5DED49: FLdPrThis
  loc_5DED4A: VCallAd Control_ID_txtDomicilio
  loc_5DED4D: FStAdFunc var_90
  loc_5DED50: FLdPr var_90
  loc_5DED53: Me.SelLength = from_stack_1
  loc_5DED58: FFree1Str var_8C
  loc_5DED5B: FFreeAd var_88 = ""
  loc_5DED62: ExitProcHresult
End Sub

Private Sub txtTelefono_GotFocus() '5DE20C
  'Data Table: 43E094
  loc_5DE1C4: LitI4 0
  loc_5DE1C9: FLdPrThis
  loc_5DE1CA: VCallAd Control_ID_txtTelefono
  loc_5DE1CD: FStAdFunc var_88
  loc_5DE1D0: FLdPr var_88
  loc_5DE1D3: Me.SelStart = from_stack_1
  loc_5DE1D8: FFree1Ad var_88
  loc_5DE1DB: FLdRfVar var_8C
  loc_5DE1DE: FLdPrThis
  loc_5DE1DF: VCallAd Control_ID_txtTelefono
  loc_5DE1E2: FStAdFunc var_88
  loc_5DE1E5: FLdPr var_88
  loc_5DE1E8:  = Me.Text
  loc_5DE1ED: ILdRf var_8C
  loc_5DE1F0: FnLenStr
  loc_5DE1F1: FLdPrThis
  loc_5DE1F2: VCallAd Control_ID_txtTelefono
  loc_5DE1F5: FStAdFunc var_90
  loc_5DE1F8: FLdPr var_90
  loc_5DE1FB: Me.SelLength = from_stack_1
  loc_5DE200: FFree1Str var_8C
  loc_5DE203: FFreeAd var_88 = ""
  loc_5DE20A: ExitProcHresult
End Sub

Private Sub Form_Load() '5E8E48
  'Data Table: 43E094
  loc_5E8DC8: LitI2_Byte 0
  loc_5E8DCA: CR8I2
  loc_5E8DCB: PopFPR4
  loc_5E8DCC: FLdPr Me
  loc_5E8DCF: Me.Left = from_stack_1s
  loc_5E8DD4: LitI2_Byte 0
  loc_5E8DD6: CR8I2
  loc_5E8DD7: PopFPR4
  loc_5E8DD8: FLdPr Me
  loc_5E8DDB: Me.Top = from_stack_1s
  loc_5E8DE0: LitI2 12000
  loc_5E8DE3: CR8I2
  loc_5E8DE4: PopFPR4
  loc_5E8DE5: FLdPr Me
  loc_5E8DE8: Me.Width = from_stack_1s
  loc_5E8DED: LitI2 6500
  loc_5E8DF0: CR8I2
  loc_5E8DF1: PopFPR4
  loc_5E8DF2: FLdPr Me
  loc_5E8DF5: Me.Height = from_stack_1s
  loc_5E8DFA: from_stack_1v = Proc_37_17_5F3078()
  loc_5E8DFF: LitI2_Byte 0
  loc_5E8E01: FLdPrThis
  loc_5E8E02: VCallAd Control_ID_cmdBorrarCliente
  loc_5E8E05: FStAdFunc var_88
  loc_5E8E08: FLdPr var_88
  loc_5E8E0B: Me.Visible = from_stack_1b
  loc_5E8E10: FFree1Ad var_88
  loc_5E8E13: LitI2_Byte 0
  loc_5E8E15: FLdPrThis
  loc_5E8E16: VCallAd Control_ID_cmdGrabarCliente
  loc_5E8E19: FStAdFunc var_88
  loc_5E8E1C: FLdPr var_88
  loc_5E8E1F: Me.Visible = from_stack_1b
  loc_5E8E24: FFree1Ad var_88
  loc_5E8E27: ImpAdLdI4 MemVar_74BEF4
  loc_5E8E2A: LitStr " :"
  loc_5E8E2D: ConcatStr
  loc_5E8E2E: FStStrNoPop var_8C
  loc_5E8E31: FLdPrThis
  loc_5E8E32: VCallAd Control_ID_CUITDesc
  loc_5E8E35: FStAdFunc var_88
  loc_5E8E38: FLdPr var_88
  loc_5E8E3B: Me.Caption = from_stack_1
  loc_5E8E40: FFree1Str var_8C
  loc_5E8E43: FFree1Ad var_88
  loc_5E8E46: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '667F1C
  'Data Table: 43E094
  loc_667B68: ILdI2 KeyAscii
  loc_667B6B: FStI2 var_86
  loc_667B6E: FLdI2 var_86
  loc_667B71: LitI4 &HD
  loc_667B76: CI2I4
  loc_667B77: EqI2
  loc_667B78: BranchF loc_667DB2
  loc_667B7B: LitI2_Byte 0
  loc_667B7D: IStI2 KeyAscii
  loc_667B80: FLdRfVar var_90
  loc_667B83: FLdRfVar var_8C
  loc_667B86: ImpAdLdRf MemVar_7520D4
  loc_667B89: NewIfNullPr Global
  loc_667B8C:  = Global.Screen
  loc_667B91: FLdPr var_8C
  loc_667B94:  = Screen.ActiveControl
  loc_667B99: FLdPr var_90
  loc_667B9C: LateMemLdVar
  loc_667BA1: LitVarStr var_A0, "meNumeroCliente"
  loc_667BA6: HardType
  loc_667BA7: EqVarBool
  loc_667BA9: FFreeAd var_8C = ""
  loc_667BB0: FFree1Var var_B0 = ""
  loc_667BB3: BranchF loc_667CAA
  loc_667BB6: LitI2_Byte 0
  loc_667BB8: FLdPrThis
  loc_667BB9: VCallAd Control_ID_cmdAlta
  loc_667BBC: FStAdFunc var_8C
  loc_667BBF: FLdPr var_8C
  loc_667BC2: Me.Visible = from_stack_1b
  loc_667BC7: FFree1Ad var_8C
  loc_667BCA: LitI2_Byte 0
  loc_667BCC: FLdPrThis
  loc_667BCD: VCallAd Control_ID_cmdConsulta
  loc_667BD0: FStAdFunc var_8C
  loc_667BD3: FLdPr var_8C
  loc_667BD6: Me.Visible = from_stack_1b
  loc_667BDB: FFree1Ad var_8C
  loc_667BDE: FLdPrThis
  loc_667BDF: VCallAd Control_ID_meNumeroCliente
  loc_667BE2: FStAdFunc var_8C
  loc_667BE5: FLdPr var_8C
  loc_667BE8: LateIdLdVar var_B0 DispID_22 0
  loc_667BEF: CStrVarTmp
  loc_667BF0: FStStrNoPop var_C4
  loc_667BF3: ImpAdCallFPR4 push Val()
  loc_667BF8: CR8R8
  loc_667BF9: LitI2_Byte 0
  loc_667BFB: CR8I2
  loc_667BFC: EqR4
  loc_667BFD: FFree1Str var_C4
  loc_667C00: FFree1Ad var_8C
  loc_667C03: FFree1Var var_B0 = ""
  loc_667C06: BranchF loc_667C21
  loc_667C09: LitVarStr var_A0, vbNullString
  loc_667C0E: PopAdLdVar
  loc_667C0F: FLdPrThis
  loc_667C10: VCallAd Control_ID_meNumeroCliente
  loc_667C13: FStAdFunc var_8C
  loc_667C16: FLdPr var_8C
  loc_667C19: LateIdSt
  loc_667C1E: FFree1Ad var_8C
  loc_667C21: FLdRfVar var_C6
  loc_667C24: FLdPrThis
  loc_667C25: VCallAd Control_ID_cmdBorrarCliente
  loc_667C28: FStAdFunc var_8C
  loc_667C2B: FLdPr var_8C
  loc_667C2E:  = Me.Visible
  loc_667C33: FLdI2 var_C6
  loc_667C36: NotI4
  loc_667C37: FFree1Ad var_8C
  loc_667C3A: BranchF loc_667C62
  loc_667C3D: LitI2_Byte &HFF
  loc_667C3F: FLdRfVar var_90
  loc_667C42: LitI2_Byte 0
  loc_667C44: FLdPrThis
  loc_667C45: VCallAd Control_ID_optIVA
  loc_667C48: FStAdFunc var_8C
  loc_667C4B: FLdPr var_8C
  loc_667C4E: Set from_stack_2 = Me(from_stack_1)
  loc_667C53: FLdPr var_90
  loc_667C56: Me.Value = from_stack_1b
  loc_667C5B: FFreeAd var_8C = ""
  loc_667C62: from_stack_1v = Proc_37_18_5F26F8()
  loc_667C67: LitVar_FALSE
  loc_667C6B: PopAdLdVar
  loc_667C6C: FLdPrThis
  loc_667C6D: VCallAd Control_ID_meNumeroCliente
  loc_667C70: FStAdFunc var_8C
  loc_667C73: FLdPr var_8C
  loc_667C76: LateIdSt
  loc_667C7B: FFree1Ad var_8C
  loc_667C7E: FLdPrThis
  loc_667C7F: VCallAd Control_ID_txtRazonSocial
  loc_667C82: FStAdFunc var_8C
  loc_667C85: FLdPr var_8C
  loc_667C88: LateIdCall
  loc_667C90: FFree1Ad var_8C
  loc_667C93: LitI2_Byte &HFF
  loc_667C95: FLdPrThis
  loc_667C96: VCallAd Control_ID_cmdGrabarCliente
  loc_667C99: FStAdFunc var_8C
  loc_667C9C: FLdPr var_8C
  loc_667C9F: Me.Visible = from_stack_1b
  loc_667CA4: FFree1Ad var_8C
  loc_667CA7: Branch loc_667DAF
  loc_667CAA: FLdRfVar var_90
  loc_667CAD: FLdRfVar var_8C
  loc_667CB0: ImpAdLdRf MemVar_7520D4
  loc_667CB3: NewIfNullPr Global
  loc_667CB6:  = Global.Screen
  loc_667CBB: FLdPr var_8C
  loc_667CBE:  = Screen.ActiveControl
  loc_667CC3: FLdPr var_90
  loc_667CC6: LateMemLdVar
  loc_667CCB: LitVarStr var_A0, "cmdCancelar"
  loc_667CD0: HardType
  loc_667CD1: EqVarBool
  loc_667CD3: FFreeAd var_8C = ""
  loc_667CDA: FFree1Var var_B0 = ""
  loc_667CDD: BranchF loc_667CE8
  loc_667CE0: Call cmdCancelar_Click()
  loc_667CE5: Branch loc_667DAF
  loc_667CE8: FLdRfVar var_90
  loc_667CEB: FLdRfVar var_8C
  loc_667CEE: ImpAdLdRf MemVar_7520D4
  loc_667CF1: NewIfNullPr Global
  loc_667CF4:  = Global.Screen
  loc_667CF9: FLdPr var_8C
  loc_667CFC:  = Screen.ActiveControl
  loc_667D01: FLdPr var_90
  loc_667D04: LateMemLdVar
  loc_667D09: LitVarStr var_A0, "cmdBorrarCliente"
  loc_667D0E: HardType
  loc_667D0F: EqVarBool
  loc_667D11: FFreeAd var_8C = ""
  loc_667D18: FFree1Var var_B0 = ""
  loc_667D1B: BranchF loc_667D26
  loc_667D1E: Call cmdBorrarCliente_Click()
  loc_667D23: Branch loc_667DAF
  loc_667D26: FLdRfVar var_90
  loc_667D29: FLdRfVar var_8C
  loc_667D2C: ImpAdLdRf MemVar_7520D4
  loc_667D2F: NewIfNullPr Global
  loc_667D32:  = Global.Screen
  loc_667D37: FLdPr var_8C
  loc_667D3A:  = Screen.ActiveControl
  loc_667D3F: FLdPr var_90
  loc_667D42: LateMemLdVar
  loc_667D47: LitVarStr var_A0, "cmdGrabarCliente"
  loc_667D4C: HardType
  loc_667D4D: EqVarBool
  loc_667D4F: FFreeAd var_8C = ""
  loc_667D56: FFree1Var var_B0 = ""
  loc_667D59: BranchF loc_667D64
  loc_667D5C: Call cmdGrabarCliente_Click()
  loc_667D61: Branch loc_667DAF
  loc_667D64: FLdRfVar var_90
  loc_667D67: FLdRfVar var_8C
  loc_667D6A: ImpAdLdRf MemVar_7520D4
  loc_667D6D: NewIfNullPr Global
  loc_667D70:  = Global.Screen
  loc_667D75: FLdPr var_8C
  loc_667D78:  = Screen.ActiveControl
  loc_667D7D: FLdPr var_90
  loc_667D80: LateMemLdVar
  loc_667D85: LitVarStr var_A0, "cmdConsulta"
  loc_667D8A: HardType
  loc_667D8B: EqVarBool
  loc_667D8D: FFreeAd var_8C = ""
  loc_667D94: FFree1Var var_B0 = ""
  loc_667D97: BranchF loc_667DA2
  loc_667D9A: Call cmdConsulta_Click()
  loc_667D9F: Branch loc_667DAF
  loc_667DA2: LitI2_Byte &HFF
  loc_667DA4: PopTmpLdAd2 var_C6
  loc_667DA7: LitStr "{TAB}"
  loc_667DAA: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_667DAF: Branch loc_667F18
  loc_667DB2: FLdI2 var_86
  loc_667DB5: LitI4 &H1B
  loc_667DBA: CI2I4
  loc_667DBB: EqI2
  loc_667DBC: BranchF loc_667EBD
  loc_667DBF: LitI2_Byte 0
  loc_667DC1: IStI2 KeyAscii
  loc_667DC4: FLdRfVar var_90
  loc_667DC7: FLdRfVar var_8C
  loc_667DCA: ImpAdLdRf MemVar_7520D4
  loc_667DCD: NewIfNullPr Global
  loc_667DD0:  = Global.Screen
  loc_667DD5: FLdPr var_8C
  loc_667DD8:  = Screen.ActiveControl
  loc_667DDD: FLdPr var_90
  loc_667DE0: LateMemLdVar
  loc_667DE5: LitVarStr var_A0, "meNumeroCliente"
  loc_667DEA: HardType
  loc_667DEB: EqVarBool
  loc_667DED: FFreeAd var_8C = ""
  loc_667DF4: FFree1Var var_B0 = ""
  loc_667DF7: BranchF loc_667E12
  loc_667DFA: ILdRf Me
  loc_667DFD: FStAdNoPop
  loc_667E01: ImpAdLdRf MemVar_7520D4
  loc_667E04: NewIfNullPr Global
  loc_667E07: Global.Unload from_stack_1
  loc_667E0C: FFree1Ad var_8C
  loc_667E0F: Branch loc_667EBA
  loc_667E12: LitI2_Byte &HFF
  loc_667E14: FLdPrThis
  loc_667E15: VCallAd Control_ID_cmdAlta
  loc_667E18: FStAdFunc var_8C
  loc_667E1B: FLdPr var_8C
  loc_667E1E: Me.Visible = from_stack_1b
  loc_667E23: FFree1Ad var_8C
  loc_667E26: LitI2_Byte &HFF
  loc_667E28: FLdPrThis
  loc_667E29: VCallAd Control_ID_cmdConsulta
  loc_667E2C: FStAdFunc var_8C
  loc_667E2F: FLdPr var_8C
  loc_667E32: Me.Visible = from_stack_1b
  loc_667E37: FFree1Ad var_8C
  loc_667E3A: LitI2_Byte 0
  loc_667E3C: FLdPrThis
  loc_667E3D: VCallAd Control_ID_cmdBorrarCliente
  loc_667E40: FStAdFunc var_8C
  loc_667E43: FLdPr var_8C
  loc_667E46: Me.Visible = from_stack_1b
  loc_667E4B: FFree1Ad var_8C
  loc_667E4E: LitI2_Byte 0
  loc_667E50: FLdPrThis
  loc_667E51: VCallAd Control_ID_cmdGrabarCliente
  loc_667E54: FStAdFunc var_8C
  loc_667E57: FLdPr var_8C
  loc_667E5A: Me.Visible = from_stack_1b
  loc_667E5F: FFree1Ad var_8C
  loc_667E62: Call LimpiaIngresos()
  loc_667E67: from_stack_1v = Proc_37_17_5F3078()
  loc_667E6C: FLdPrThis
  loc_667E6D: VCallAd Control_ID_meNumeroCliente
  loc_667E70: FStAdFunc var_8C
  loc_667E73: FLdPr var_8C
  loc_667E76: LateIdLdVar var_B0 DispID_22 0
  loc_667E7D: CStrVarTmp
  loc_667E7E: FStStrNoPop var_C4
  loc_667E81: Call ConsultaCliente(from_stack_1v)
  loc_667E86: FFree1Str var_C4
  loc_667E89: FFree1Ad var_8C
  loc_667E8C: FFree1Var var_B0 = ""
  loc_667E8F: LitVar_TRUE var_A0
  loc_667E92: PopAdLdVar
  loc_667E93: FLdPrThis
  loc_667E94: VCallAd Control_ID_meNumeroCliente
  loc_667E97: FStAdFunc var_8C
  loc_667E9A: FLdPr var_8C
  loc_667E9D: LateIdSt
  loc_667EA2: FFree1Ad var_8C
  loc_667EA5: FLdPrThis
  loc_667EA6: VCallAd Control_ID_meNumeroCliente
  loc_667EA9: FStAdFunc var_8C
  loc_667EAC: FLdPr var_8C
  loc_667EAF: LateIdCall
  loc_667EB7: FFree1Ad var_8C
  loc_667EBA: Branch loc_667F18
  loc_667EBD: FLdRfVar var_90
  loc_667EC0: FLdRfVar var_8C
  loc_667EC3: ImpAdLdRf MemVar_7520D4
  loc_667EC6: NewIfNullPr Global
  loc_667EC9:  = Global.Screen
  loc_667ECE: FLdPr var_8C
  loc_667ED1:  = Screen.ActiveControl
  loc_667ED6: FLdPr var_90
  loc_667ED9: LateMemLdVar
  loc_667EDE: LitVarStr var_A0, "meNumeroCliente"
  loc_667EE3: HardType
  loc_667EE4: EqVarBool
  loc_667EE6: FFreeAd var_8C = ""
  loc_667EED: FFree1Var var_B0 = ""
  loc_667EF0: BranchF loc_667F18
  loc_667EF3: LitI4 &H30
  loc_667EF8: ILdI2 KeyAscii
  loc_667EFB: CI4UI1
  loc_667EFC: LeI4
  loc_667EFD: ILdI2 KeyAscii
  loc_667F00: CI4UI1
  loc_667F01: LitI4 &H39
  loc_667F06: LeI4
  loc_667F07: AndI4
  loc_667F08: ILdI2 KeyAscii
  loc_667F0B: LitI2_Byte 8
  loc_667F0D: EqI2
  loc_667F0E: OrI4
  loc_667F0F: NotI4
  loc_667F10: BranchF loc_667F18
  loc_667F13: LitI2_Byte 0
  loc_667F15: IStI2 KeyAscii
  loc_667F18: ExitProcHresult
End Sub

Private Sub cmdBorrarCliente_Click() '62DFC8
  'Data Table: 43E094
  loc_62DE24: LitVar_Missing var_108
  loc_62DE27: LitVar_Missing var_E8
  loc_62DE2A: LitVar_Missing var_C8
  loc_62DE2D: LitI4 &H24
  loc_62DE32: LitVarStr var_98, "Esta seguro de BORRAR este cliente?"
  loc_62DE37: FStVarCopyObj var_A8
  loc_62DE3A: FLdRfVar var_A8
  loc_62DE3D: ImpAdCallI2 MsgBox(, , , , )
  loc_62DE42: LitI4 7
  loc_62DE47: EqI4
  loc_62DE48: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_62DE53: BranchF loc_62DE57
  loc_62DE56: ExitProcHresult
  loc_62DE57: FLdPrThis
  loc_62DE58: VCallAd Control_ID_meNumeroCliente
  loc_62DE5B: FStAdFunc var_10C
  loc_62DE5E: FLdPr var_10C
  loc_62DE61: LateIdLdVar var_A8 DispID_22 0
  loc_62DE68: PopAd
  loc_62DE6A: LitI4 1
  loc_62DE6F: LitI4 1
  loc_62DE74: LitVarStr var_98, "0000"
  loc_62DE79: FStVarCopyObj var_E8
  loc_62DE7C: FLdRfVar var_E8
  loc_62DE7F: FLdRfVar var_A8
  loc_62DE82: CStrVarTmp
  loc_62DE83: CVarStr var_C8
  loc_62DE86: FLdRfVar var_108
  loc_62DE89: ImpAdCallFPR4  = Format(, )
  loc_62DE8E: FLdRfVar var_116
  loc_62DE91: FLdI2 var_86
  loc_62DE94: FLdRfVar var_108
  loc_62DE97: CStrVarTmp
  loc_62DE98: PopTmpLdAdStr
  loc_62DE9C: FLdRfVar var_110
  loc_62DE9F: ImpAdLdRf MemVar_74C760
  loc_62DEA2: NewIfNullPr Formx
  loc_62DEA5: from_stack_1v = Formx.global_4589716Get()
  loc_62DEAA: FLdPr var_110
  loc_62DEAD:  = Formx.CurrentX
  loc_62DEB2: FLdI2 var_116
  loc_62DEB5: NotI4
  loc_62DEB6: FFree1Str var_114
  loc_62DEB9: FFreeAd var_10C = ""
  loc_62DEC0: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_62DECB: BranchF loc_62DEFA
  loc_62DECE: FLdRfVar var_A8
  loc_62DED1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62DED6: FLdRfVar var_A8
  loc_62DED9: CBoolVarNull
  loc_62DEDB: FFree1Var var_A8 = ""
  loc_62DEDE: BranchF loc_62DEF7
  loc_62DEE1: ILdRf Me
  loc_62DEE4: FStAdNoPop
  loc_62DEE8: ImpAdLdRf MemVar_7520D4
  loc_62DEEB: NewIfNullPr Global
  loc_62DEEE: Global.Unload from_stack_1
  loc_62DEF3: FFree1Ad var_10C
  loc_62DEF6: ExitProcHresult
  loc_62DEF7: Branch loc_62DE57
  loc_62DEFA: FLdI2 var_86
  loc_62DEFD: BranchF loc_62DF2C
  loc_62DF00: LitVar_Missing var_108
  loc_62DF03: LitVar_Missing var_E8
  loc_62DF06: LitVar_Missing var_C8
  loc_62DF09: LitI4 0
  loc_62DF0E: LitVarStr var_98, "No se ha podido dar de baja el cliente"
  loc_62DF13: FStVarCopyObj var_A8
  loc_62DF16: FLdRfVar var_A8
  loc_62DF19: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62DF1E: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_62DF29: Branch loc_62DF44
  loc_62DF2C: LitVarStr var_98, vbNullString
  loc_62DF31: PopAdLdVar
  loc_62DF32: FLdPrThis
  loc_62DF33: VCallAd Control_ID_meNumeroCliente
  loc_62DF36: FStAdFunc var_10C
  loc_62DF39: FLdPr var_10C
  loc_62DF3C: LateIdSt
  loc_62DF41: FFree1Ad var_10C
  loc_62DF44: from_stack_1v = Proc_37_17_5F3078()
  loc_62DF49: LitI2_Byte &HFF
  loc_62DF4B: FLdPrThis
  loc_62DF4C: VCallAd Control_ID_cmdAlta
  loc_62DF4F: FStAdFunc var_10C
  loc_62DF52: FLdPr var_10C
  loc_62DF55: Me.Visible = from_stack_1b
  loc_62DF5A: FFree1Ad var_10C
  loc_62DF5D: LitI2_Byte &HFF
  loc_62DF5F: FLdPrThis
  loc_62DF60: VCallAd Control_ID_cmdConsulta
  loc_62DF63: FStAdFunc var_10C
  loc_62DF66: FLdPr var_10C
  loc_62DF69: Me.Visible = from_stack_1b
  loc_62DF6E: FFree1Ad var_10C
  loc_62DF71: LitI2_Byte 0
  loc_62DF73: FLdPrThis
  loc_62DF74: VCallAd Control_ID_cmdGrabarCliente
  loc_62DF77: FStAdFunc var_10C
  loc_62DF7A: FLdPr var_10C
  loc_62DF7D: Me.Visible = from_stack_1b
  loc_62DF82: FFree1Ad var_10C
  loc_62DF85: LitI2_Byte 0
  loc_62DF87: FLdPrThis
  loc_62DF88: VCallAd Control_ID_cmdBorrarCliente
  loc_62DF8B: FStAdFunc var_10C
  loc_62DF8E: FLdPr var_10C
  loc_62DF91: Me.Visible = from_stack_1b
  loc_62DF96: FFree1Ad var_10C
  loc_62DF99: LitVar_TRUE var_98
  loc_62DF9C: PopAdLdVar
  loc_62DF9D: FLdPrThis
  loc_62DF9E: VCallAd Control_ID_meNumeroCliente
  loc_62DFA1: FStAdFunc var_10C
  loc_62DFA4: FLdPr var_10C
  loc_62DFA7: LateIdSt
  loc_62DFAC: FFree1Ad var_10C
  loc_62DFAF: FLdPrThis
  loc_62DFB0: VCallAd Control_ID_meNumeroCliente
  loc_62DFB3: FStAdFunc var_10C
  loc_62DFB6: FLdPr var_10C
  loc_62DFB9: LateIdCall
  loc_62DFC1: FFree1Ad var_10C
  loc_62DFC4: ExitProcHresult
  loc_62DFC5: LitI2_Byte &H1A
End Sub

Private Sub cmdAlta_Click() '5E0010
  'Data Table: 43E094
  loc_5DFFB8: FLdRfVar var_8A
  loc_5DFFBB: FLdPrThis
  loc_5DFFBC: VCallAd Control_ID_cmdBorrarCliente
  loc_5DFFBF: FStAdFunc var_88
  loc_5DFFC2: FLdPr var_88
  loc_5DFFC5:  = Me.Visible
  loc_5DFFCA: FLdI2 var_8A
  loc_5DFFCD: FFree1Ad var_88
  loc_5DFFD0: BranchF loc_5DFFEB
  loc_5DFFD3: LitVarStr var_9C, vbNullString
  loc_5DFFD8: PopAdLdVar
  loc_5DFFD9: FLdPrThis
  loc_5DFFDA: VCallAd Control_ID_meNumeroCliente
  loc_5DFFDD: FStAdFunc var_88
  loc_5DFFE0: FLdPr var_88
  loc_5DFFE3: LateIdSt
  loc_5DFFE8: FFree1Ad var_88
  loc_5DFFEB: FLdPrThis
  loc_5DFFEC: VCallAd Control_ID_meNumeroCliente
  loc_5DFFEF: FStAdFunc var_88
  loc_5DFFF2: FLdPr var_88
  loc_5DFFF5: LateIdCall
  loc_5DFFFD: FFree1Ad var_88
  loc_5E0000: LitI2_Byte &HFF
  loc_5E0002: PopTmpLdAd2 var_8A
  loc_5E0005: LitStr "{ENTER}"
  loc_5E0008: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E000D: ExitProcHresult
End Sub

Private Sub cmdConsulta_Click() '5E2FF4
  'Data Table: 43E094
  loc_5E2F94: LitVar_Missing var_A4
  loc_5E2F97: PopAdLdVar
  loc_5E2F98: LitVarI4
  loc_5E2FA0: PopAdLdVar
  loc_5E2FA1: ImpAdLdRf MemVar_74D874
  loc_5E2FA4: NewIfNullPr BrowseCli
  loc_5E2FA7: BrowseCli.Show from_stack_1, from_stack_2
  loc_5E2FAC: LitI2_Byte 0
  loc_5E2FAE: ImpAdLdRf MemVar_74D874
  loc_5E2FB1: NewIfNullPr BrowseCli
  loc_5E2FB4: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5E2FB9: ImpAdLdI2 MemVar_74C37E
  loc_5E2FBC: NotI4
  loc_5E2FBD: BranchF loc_5E2FF3
  loc_5E2FC0: ImpAdLdI2 MemVar_74C384
  loc_5E2FC3: CStrUI1
  loc_5E2FC5: CVarStr var_B4
  loc_5E2FC8: PopAdLdVar
  loc_5E2FC9: FLdPrThis
  loc_5E2FCA: VCallAd Control_ID_
  loc_5E2FCD: FStAdFunc var_B8
  loc_5E2FD0: FLdPr var_B8
  loc_5E2FD3: LateIdSt
  loc_5E2FD8: FFree1Ad var_B8
  loc_5E2FDB: FFree1Var var_B4 = ""
  loc_5E2FDE: FLdPrThis
  loc_5E2FDF: VCallAd Control_ID_
  loc_5E2FE2: FStAdFunc var_B8
  loc_5E2FE5: FLdPr var_B8
  loc_5E2FE8: LateIdCall
  loc_5E2FF0: FFree1Ad var_B8
  loc_5E2FF3: ExitProcHresult
End Sub

Public Function ExisteCliente() '5CC734
  'Data Table: 43E094
  loc_5CC724: FLdPr Me
  loc_5CC727: MemLdI2 global_52
  loc_5CC72A: FStI2 var_86
  loc_5CC72D: ExitProcCbHresult
End Function

Public Sub ConsultaCliente(NumeroCliente) '648624
  'Data Table: 43E094
  loc_6483C0: ILdRf NumeroCliente
  loc_6483C3: FStStrCopy var_88
  loc_6483C6: ILdRf var_88
  loc_6483C9: ImpAdCallFPR4 push Val()
  loc_6483CE: FStFPR8 var_AC
  loc_6483D1: FLdRfVar var_A2
  loc_6483D4: FLdPr Me
  loc_6483D7: MemLdRfVar from_stack_1.global_52
  loc_6483DA: FLdRfVar var_8C
  loc_6483DD: FLdFPR8 var_AC
  loc_6483E0: CVarR8
  loc_6483E4: PopAdLdVar
  loc_6483E5: FLdRfVar var_90
  loc_6483E8: ImpAdLdRf MemVar_74C760
  loc_6483EB: NewIfNullPr Formx
  loc_6483EE: from_stack_1v = Formx.global_4589716Get()
  loc_6483F3: FLdPr var_90
  loc_6483F6: Call 0.Method_arg_DC ()
  loc_6483FB: FLdI2 var_A2
  loc_6483FE: NotI4
  loc_6483FF: FFree1Ad var_90
  loc_648402: BranchF loc_648431
  loc_648405: FLdRfVar var_BC
  loc_648408: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64840D: FLdRfVar var_BC
  loc_648410: CBoolVarNull
  loc_648412: FFree1Var var_BC = ""
  loc_648415: BranchF loc_64842E
  loc_648418: ILdRf Me
  loc_64841B: FStAdNoPop
  loc_64841F: ImpAdLdRf MemVar_7520D4
  loc_648422: NewIfNullPr Global
  loc_648425: Global.Unload from_stack_1
  loc_64842A: FFree1Ad var_90
  loc_64842D: ExitProcHresult
  loc_64842E: Branch loc_6483C6
  loc_648431: FLdPr Me
  loc_648434: MemLdI2 global_52
  loc_648437: BranchF loc_648456
  loc_64843A: Call LimpiaIngresos()
  loc_64843F: LitI2_Byte 0
  loc_648441: FLdPrThis
  loc_648442: VCallAd Control_ID_cmdBorrarCliente
  loc_648445: FStAdFunc var_90
  loc_648448: FLdPr var_90
  loc_64844B: Me.Visible = from_stack_1b
  loc_648450: FFree1Ad var_90
  loc_648453: Branch loc_648623
  loc_648456: LitVarI2 var_BC, 25
  loc_64845B: LitI4 5
  loc_648460: FLdRfVar var_8C
  loc_648463: CVarRef
  loc_648468: FLdRfVar var_DC
  loc_64846B: ImpAdCallFPR4  = Mid(, , )
  loc_648470: FLdRfVar var_DC
  loc_648473: FLdRfVar var_EC
  loc_648476: ImpAdCallFPR4  = Trim()
  loc_64847B: FLdRfVar var_EC
  loc_64847E: CStrVarTmp
  loc_64847F: CVarStr var_FC
  loc_648482: PopAdLdVar
  loc_648483: FLdPrThis
  loc_648484: VCallAd Control_ID_txtRazonSocial
  loc_648487: FStAdFunc var_90
  loc_64848A: FLdPr var_90
  loc_64848D: LateIdSt
  loc_648492: FFree1Ad var_90
  loc_648495: FFreeVar var_BC = "": var_DC = "": var_EC = ""
  loc_6484A0: LitVarI2 var_BC, 13
  loc_6484A5: LitI4 &H55
  loc_6484AA: FLdRfVar var_8C
  loc_6484AD: CVarRef
  loc_6484B2: FLdRfVar var_DC
  loc_6484B5: ImpAdCallFPR4  = Mid(, , )
  loc_6484BA: FLdRfVar var_DC
  loc_6484BD: FLdRfVar var_EC
  loc_6484C0: ImpAdCallFPR4  = Trim()
  loc_6484C5: FLdRfVar var_EC
  loc_6484C8: CStrVarTmp
  loc_6484C9: CVarStr var_FC
  loc_6484CC: PopAdLdVar
  loc_6484CD: FLdPrThis
  loc_6484CE: VCallAd Control_ID_meCUIT
  loc_6484D1: FStAdFunc var_90
  loc_6484D4: FLdPr var_90
  loc_6484D7: LateIdSt
  loc_6484DC: FFree1Ad var_90
  loc_6484DF: FFreeVar var_BC = "": var_DC = "": var_EC = ""
  loc_6484EA: LitVarI2 var_BC, 40
  loc_6484EF: LitI4 &H1E
  loc_6484F4: FLdRfVar var_8C
  loc_6484F7: CVarRef
  loc_6484FC: FLdRfVar var_DC
  loc_6484FF: ImpAdCallFPR4  = Mid(, , )
  loc_648504: FLdRfVar var_DC
  loc_648507: FLdRfVar var_EC
  loc_64850A: ImpAdCallFPR4  = Trim()
  loc_64850F: FLdRfVar var_EC
  loc_648512: CStrVarVal var_100
  loc_648516: FLdPrThis
  loc_648517: VCallAd Control_ID_txtDomicilio
  loc_64851A: FStAdFunc var_90
  loc_64851D: FLdPr var_90
  loc_648520: Me.Text = from_stack_1
  loc_648525: FFree1Str var_100
  loc_648528: FFree1Ad var_90
  loc_64852B: FFreeVar var_BC = "": var_DC = ""
  loc_648534: LitVarI2 var_BC, 15
  loc_648539: LitI4 &H46
  loc_64853E: FLdRfVar var_8C
  loc_648541: CVarRef
  loc_648546: FLdRfVar var_DC
  loc_648549: ImpAdCallFPR4  = Mid(, , )
  loc_64854E: FLdRfVar var_DC
  loc_648551: FLdRfVar var_EC
  loc_648554: ImpAdCallFPR4  = Trim()
  loc_648559: FLdRfVar var_EC
  loc_64855C: CStrVarVal var_100
  loc_648560: FLdPrThis
  loc_648561: VCallAd Control_ID_txtTelefono
  loc_648564: FStAdFunc var_90
  loc_648567: FLdPr var_90
  loc_64856A: Me.Text = from_stack_1
  loc_64856F: FFree1Str var_100
  loc_648572: FFree1Ad var_90
  loc_648575: FFreeVar var_BC = "": var_DC = ""
  loc_64857E: LitVarI2 var_BC, 1
  loc_648583: LitI4 &H63
  loc_648588: FLdRfVar var_8C
  loc_64858B: CVarRef
  loc_648590: FLdRfVar var_DC
  loc_648593: ImpAdCallFPR4  = Mid(, , )
  loc_648598: FLdRfVar var_DC
  loc_64859B: CStrVarVal var_100
  loc_64859F: ImpAdCallFPR4 push Val()
  loc_6485A4: CI2R8
  loc_6485A5: FLdPrThis
  loc_6485A6: VCallAd Control_ID_chkCuentaCorriente
  loc_6485A9: FStAdFunc var_90
  loc_6485AC: FLdPr var_90
  loc_6485AF: Me.Value = from_stack_1
  loc_6485B4: FFree1Str var_100
  loc_6485B7: FFree1Ad var_90
  loc_6485BA: FFreeVar var_BC = ""
  loc_6485C1: LitVarI2 var_BC, 1
  loc_6485C6: LitI4 &H62
  loc_6485CB: FLdRfVar var_8C
  loc_6485CE: CVarRef
  loc_6485D3: FLdRfVar var_DC
  loc_6485D6: ImpAdCallFPR4  = Mid(, , )
  loc_6485DB: LitI2_Byte &HFF
  loc_6485DD: FLdRfVar var_104
  loc_6485E0: FLdRfVar var_DC
  loc_6485E3: FnCIntVar
  loc_6485E5: LitI2_Byte 1
  loc_6485E7: SubI2
  loc_6485E8: FLdPrThis
  loc_6485E9: VCallAd Control_ID_optIVA
  loc_6485EC: FStAdFunc var_90
  loc_6485EF: FLdPr var_90
  loc_6485F2: Set from_stack_2 = Me(from_stack_1)
  loc_6485F7: FLdPr var_104
  loc_6485FA: Me.Value = from_stack_1b
  loc_6485FF: FFreeAd var_90 = ""
  loc_648606: FFreeVar var_BC = "": var_DC = ""
  loc_64860F: LitI2_Byte &HFF
  loc_648611: FLdPrThis
  loc_648612: VCallAd Control_ID_cmdBorrarCliente
  loc_648615: FStAdFunc var_90
  loc_648618: FLdPr var_90
  loc_64861B: Me.Visible = from_stack_1b
  loc_648620: FFree1Ad var_90
  loc_648623: ExitProcHresult
End Sub

Public Sub LimpiaIngresos() '5F34DC
  'Data Table: 43E094
  loc_5F3430: LitVarStr var_98, vbNullString
  loc_5F3435: PopAdLdVar
  loc_5F3436: FLdPrThis
  loc_5F3437: VCallAd Control_ID_txtRazonSocial
  loc_5F343A: FStAdFunc var_9C
  loc_5F343D: FLdPr var_9C
  loc_5F3440: LateIdSt
  loc_5F3445: FFree1Ad var_9C
  loc_5F3448: LitStr vbNullString
  loc_5F344B: FLdPrThis
  loc_5F344C: VCallAd Control_ID_txtDomicilio
  loc_5F344F: FStAdFunc var_9C
  loc_5F3452: FLdPr var_9C
  loc_5F3455: Me.Text = from_stack_1
  loc_5F345A: FFree1Ad var_9C
  loc_5F345D: LitStr vbNullString
  loc_5F3460: FLdPrThis
  loc_5F3461: VCallAd Control_ID_txtTelefono
  loc_5F3464: FStAdFunc var_9C
  loc_5F3467: FLdPr var_9C
  loc_5F346A: Me.Text = from_stack_1
  loc_5F346F: FFree1Ad var_9C
  loc_5F3472: LitVarStr var_98, vbNullString
  loc_5F3477: PopAdLdVar
  loc_5F3478: FLdPrThis
  loc_5F3479: VCallAd Control_ID_meCUIT
  loc_5F347C: FStAdFunc var_9C
  loc_5F347F: FLdPr var_9C
  loc_5F3482: LateIdSt
  loc_5F3487: FFree1Ad var_9C
  loc_5F348A: LitI2_Byte 0
  loc_5F348C: FLdPrThis
  loc_5F348D: VCallAd Control_ID_chkCuentaCorriente
  loc_5F3490: FStAdFunc var_9C
  loc_5F3493: FLdPr var_9C
  loc_5F3496: Me.Value = from_stack_1
  loc_5F349B: FFree1Ad var_9C
  loc_5F349E: LitI2_Byte 0
  loc_5F34A0: FLdRfVar var_86
  loc_5F34A3: LitI2_Byte 4
  loc_5F34A5: ForI2 var_A0
  loc_5F34AB: LitI2_Byte 0
  loc_5F34AD: FLdRfVar var_A4
  loc_5F34B0: FLdI2 var_86
  loc_5F34B3: FLdPrThis
  loc_5F34B4: VCallAd Control_ID_optIVA
  loc_5F34B7: FStAdFunc var_9C
  loc_5F34BA: FLdPr var_9C
  loc_5F34BD: Set from_stack_2 = Me(from_stack_1)
  loc_5F34C2: FLdPr var_A4
  loc_5F34C5: Me.Value = from_stack_1b
  loc_5F34CA: FFreeAd var_9C = ""
  loc_5F34D1: FLdRfVar var_86
  loc_5F34D4: NextI2 var_A0, loc_5F34AB
  loc_5F34D9: ExitProcHresult
End Sub

Private Function Proc_37_17_5F3078() '5F3078
  'Data Table: 43E094
  loc_5F2FD0: LitVar_FALSE
  loc_5F2FD4: PopAdLdVar
  loc_5F2FD5: FLdPrThis
  loc_5F2FD6: VCallAd Control_ID_txtRazonSocial
  loc_5F2FD9: FStAdFunc var_9C
  loc_5F2FDC: FLdPr var_9C
  loc_5F2FDF: LateIdSt
  loc_5F2FE4: FFree1Ad var_9C
  loc_5F2FE7: LitI2_Byte 0
  loc_5F2FE9: FLdPrThis
  loc_5F2FEA: VCallAd Control_ID_txtDomicilio
  loc_5F2FED: FStAdFunc var_9C
  loc_5F2FF0: FLdPr var_9C
  loc_5F2FF3: Me.Enabled = from_stack_1b
  loc_5F2FF8: FFree1Ad var_9C
  loc_5F2FFB: LitI2_Byte 0
  loc_5F2FFD: FLdPrThis
  loc_5F2FFE: VCallAd Control_ID_txtTelefono
  loc_5F3001: FStAdFunc var_9C
  loc_5F3004: FLdPr var_9C
  loc_5F3007: Me.Enabled = from_stack_1b
  loc_5F300C: FFree1Ad var_9C
  loc_5F300F: LitVar_FALSE
  loc_5F3013: PopAdLdVar
  loc_5F3014: FLdPrThis
  loc_5F3015: VCallAd Control_ID_meCUIT
  loc_5F3018: FStAdFunc var_9C
  loc_5F301B: FLdPr var_9C
  loc_5F301E: LateIdSt
  loc_5F3023: FFree1Ad var_9C
  loc_5F3026: LitI2_Byte 0
  loc_5F3028: FLdPrThis
  loc_5F3029: VCallAd Control_ID_chkCuentaCorriente
  loc_5F302C: FStAdFunc var_9C
  loc_5F302F: FLdPr var_9C
  loc_5F3032: Me.Enabled = from_stack_1b
  loc_5F3037: FFree1Ad var_9C
  loc_5F303A: LitI2_Byte 0
  loc_5F303C: FLdRfVar var_86
  loc_5F303F: LitI2_Byte 4
  loc_5F3041: ForI2 var_A0
  loc_5F3047: LitI2_Byte 0
  loc_5F3049: FLdRfVar var_A4
  loc_5F304C: FLdI2 var_86
  loc_5F304F: FLdPrThis
  loc_5F3050: VCallAd Control_ID_optIVA
  loc_5F3053: FStAdFunc var_9C
  loc_5F3056: FLdPr var_9C
  loc_5F3059: Set from_stack_2 = Me(from_stack_1)
  loc_5F305E: FLdPr var_A4
  loc_5F3061: Me.Enabled = from_stack_1b
  loc_5F3066: FFreeAd var_9C = ""
  loc_5F306D: FLdRfVar var_86
  loc_5F3070: NextI2 var_A0, loc_5F3047
  loc_5F3075: ExitProcHresult
End Function

Private Function Proc_37_18_5F26F8() '5F26F8
  'Data Table: 43E094
  loc_5F2654: LitVar_TRUE var_98
  loc_5F2657: PopAdLdVar
  loc_5F2658: FLdPrThis
  loc_5F2659: VCallAd Control_ID_txtRazonSocial
  loc_5F265C: FStAdFunc var_9C
  loc_5F265F: FLdPr var_9C
  loc_5F2662: LateIdSt
  loc_5F2667: FFree1Ad var_9C
  loc_5F266A: LitI2_Byte &HFF
  loc_5F266C: FLdPrThis
  loc_5F266D: VCallAd Control_ID_txtDomicilio
  loc_5F2670: FStAdFunc var_9C
  loc_5F2673: FLdPr var_9C
  loc_5F2676: Me.Enabled = from_stack_1b
  loc_5F267B: FFree1Ad var_9C
  loc_5F267E: LitI2_Byte &HFF
  loc_5F2680: FLdPrThis
  loc_5F2681: VCallAd Control_ID_txtTelefono
  loc_5F2684: FStAdFunc var_9C
  loc_5F2687: FLdPr var_9C
  loc_5F268A: Me.Enabled = from_stack_1b
  loc_5F268F: FFree1Ad var_9C
  loc_5F2692: LitVar_TRUE var_98
  loc_5F2695: PopAdLdVar
  loc_5F2696: FLdPrThis
  loc_5F2697: VCallAd Control_ID_meCUIT
  loc_5F269A: FStAdFunc var_9C
  loc_5F269D: FLdPr var_9C
  loc_5F26A0: LateIdSt
  loc_5F26A5: FFree1Ad var_9C
  loc_5F26A8: LitI2_Byte &HFF
  loc_5F26AA: FLdPrThis
  loc_5F26AB: VCallAd Control_ID_chkCuentaCorriente
  loc_5F26AE: FStAdFunc var_9C
  loc_5F26B1: FLdPr var_9C
  loc_5F26B4: Me.Enabled = from_stack_1b
  loc_5F26B9: FFree1Ad var_9C
  loc_5F26BC: LitI2_Byte 0
  loc_5F26BE: FLdRfVar var_86
  loc_5F26C1: LitI2_Byte 4
  loc_5F26C3: ForI2 var_A0
  loc_5F26C9: LitI2_Byte &HFF
  loc_5F26CB: FLdRfVar var_A4
  loc_5F26CE: FLdI2 var_86
  loc_5F26D1: FLdPrThis
  loc_5F26D2: VCallAd Control_ID_optIVA
  loc_5F26D5: FStAdFunc var_9C
  loc_5F26D8: FLdPr var_9C
  loc_5F26DB: Set from_stack_2 = Me(from_stack_1)
  loc_5F26E0: FLdPr var_A4
  loc_5F26E3: Me.Enabled = from_stack_1b
  loc_5F26E8: FFreeAd var_9C = ""
  loc_5F26EF: FLdRfVar var_86
  loc_5F26F2: NextI2 var_A0, loc_5F26C9
  loc_5F26F7: ExitProcHresult
End Function

Private Function Proc_37_19_5E1FA0() '5E1FA0
  'Data Table: 43E094
  loc_5E1F44: LitI2_Byte 0
  loc_5E1F46: FStI2 var_88
  loc_5E1F49: FLdI2 var_88
  loc_5E1F4C: LitI2_Byte 4
  loc_5E1F4E: LeI2
  loc_5E1F4F: BranchF loc_5E1F8E
  loc_5E1F52: FLdRfVar var_92
  loc_5E1F55: FLdRfVar var_90
  loc_5E1F58: FLdI2 var_88
  loc_5E1F5B: FLdPrThis
  loc_5E1F5C: VCallAd Control_ID_optIVA
  loc_5E1F5F: FStAdFunc var_8C
  loc_5E1F62: FLdPr var_8C
  loc_5E1F65: Set from_stack_2 = Me(from_stack_1)
  loc_5E1F6A: FLdPr var_90
  loc_5E1F6D:  = Me.Value
  loc_5E1F72: FLdI2 var_92
  loc_5E1F75: FFreeAd var_8C = ""
  loc_5E1F7C: BranchF loc_5E1F82
  loc_5E1F7F: Branch loc_5E1F8E
  loc_5E1F82: FLdI2 var_88
  loc_5E1F85: LitI2_Byte 1
  loc_5E1F87: AddI2
  loc_5E1F88: FStI2 var_88
  loc_5E1F8B: Branch loc_5E1F49
  loc_5E1F8E: FLdI2 var_88
  loc_5E1F91: LitI2_Byte 1
  loc_5E1F93: AddI2
  loc_5E1F94: FStI2 var_86
  loc_5E1F97: ExitProcCbHresult
End Function
