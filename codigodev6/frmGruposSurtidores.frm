VERSION 5.00
Begin VB.Form frmGruposSurtidores
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
  ClientWidth = 10440
  ClientHeight = 5610
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.CommandButton cmdAceptaGrupo
    Caption = "Ac&epta Grupo"
    Left = 120
    Top = 4800
    Width = 1575
    Height = 375
    TabIndex = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancelaGrupo
    Caption = "Ca&ncela Grupo"
    Left = 2160
    Top = 4800
    Width = 1575
    Height = 375
    TabIndex = 14
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtGrupo
    Left = 120
    Top = 4320
    Width = 3615
    Height = 405
    TabIndex = 13
    MaxLength = 20
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
  Begin VB.CommandButton cmdBorrarGrupo
    Caption = "&Borrar"
    Left = 2160
    Top = 3720
    Width = 1575
    Height = 375
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdAgregarGrupo
    Caption = "A&gregar"
    Left = 120
    Top = 3720
    Width = 1575
    Height = 375
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ListBox lstGrupo
    Left = 120
    Top = 960
    Width = 3615
    Height = 2625
    TabIndex = 10
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7080
    Top = 4920
    Width = 1455
    Height = 495
    TabIndex = 7
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 8760
    Top = 4920
    Width = 1455
    Height = 495
    TabIndex = 6
    Default = -1  'True
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
  Begin VB.Frame fraSeleccion
    Left = 3960
    Top = 840
    Width = 6255
    Height = 3855
    TabIndex = 1
    Begin VB.CommandButton cmdBorrarSurtidor
      Caption = "<--"
      Left = 2760
      Top = 2280
      Width = 735
      Height = 375
      TabIndex = 9
      BeginProperty Font
        Name = "Courier New"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.CommandButton cmdAgregarSurtidor
      Caption = "-->"
      Left = 2760
      Top = 1440
      Width = 735
      Height = 375
      TabIndex = 8
      BeginProperty Font
        Name = "Courier New"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin VB.ListBox lstMiembros
      Left = 3600
      Top = 480
      Width = 2415
      Height = 3180
      TabIndex = 4
      MultiSelect = 2 'Extendeded
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
    Begin VB.ListBox lstSurtidores
      Left = 240
      Top = 480
      Width = 2415
      Height = 3180
      TabIndex = 2
      MultiSelect = 2 'Extendeded
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
    Begin VB.Label lblSurtMiembro
      Caption = "xxx Miembro"
      Left = 3480
      Top = 240
      Width = 2655
      Height = 255
      TabIndex = 5
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblSurtNoMiembro
      Caption = "xxx No Miembro"
      Left = 120
      Top = 240
      Width = 2655
      Height = 255
      TabIndex = 3
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Label Label1
    Caption = "Grupos"
    Left = 120
    Top = 720
    Width = 3615
    Height = 255
    TabIndex = 16
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblTitulo
    Caption = "Grupos de xxx"
    Left = 0
    Top = 120
    Width = 10455
    Height = 495
    TabIndex = 0
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 21.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmGruposSurtidores"


Private Sub cmdCancelar_Click() '5D11C4
  'Data Table: 434F68
  loc_5D11AC: ILdRf Me
  loc_5D11AF: FStAdNoPop
  loc_5D11B3: ImpAdLdRf MemVar_7520D4
  loc_5D11B6: NewIfNullPr Global
  loc_5D11B9: Global.Unload from_stack_1
  loc_5D11BE: FFree1Ad var_88
  loc_5D11C1: ExitProcHresult
  loc_5D11C2: FLdI2 var_1000
End Sub

Private Sub cmdAceptar_Click() '62F95C
  'Data Table: 434F68
  loc_62F7B0: LitStr vbNullString
  loc_62F7B3: FStStrCopy var_8C
  loc_62F7B6: LitI2_Byte 1
  loc_62F7B8: FLdRfVar var_86
  loc_62F7BB: FLdPr Me
  loc_62F7BE: MemLdStr global_52
  loc_62F7C1: LitI2_Byte 1
  loc_62F7C3: FnUBound
  loc_62F7C5: CI2I4
  loc_62F7C6: ForI2 var_90
  loc_62F7CC: FLdI2 var_86
  loc_62F7CF: CI4UI1
  loc_62F7D0: FLdPr Me
  loc_62F7D3: MemLdStr global_52
  loc_62F7D6: Ary1LdPr
  loc_62F7D7: MemLdRfVar from_stack_1.global_64
  loc_62F7DA: LdFixedStr
  loc_62F7DD: FStStrNoPop var_94
  loc_62F7E0: ImpAdCallI2 Trim$()
  loc_62F7E5: FStStr var_98
  loc_62F7E8: ILdRf var_94
  loc_62F7EB: FLdI2 var_86
  loc_62F7EE: CI4UI1
  loc_62F7EF: FLdPr Me
  loc_62F7F2: MemLdStr global_52
  loc_62F7F5: Ary1LdPr
  loc_62F7F6: MemLdRfVar from_stack_1.global_64
  loc_62F7F9: StFixedStr
  loc_62F7FC: ILdRf var_98
  loc_62F7FF: LitStr vbNullString
  loc_62F802: NeStr
  loc_62F804: FLdI2 var_86
  loc_62F807: CI4UI1
  loc_62F808: FLdPr Me
  loc_62F80B: MemLdStr global_52
  loc_62F80E: Ary1LdPr
  loc_62F80F: MemLdRfVar from_stack_1.global_0
  loc_62F812: LdFixedStr
  loc_62F815: FStStrNoPop var_9C
  loc_62F818: ImpAdCallI2 Trim$()
  loc_62F81D: FStStr var_A0
  loc_62F820: ILdRf var_9C
  loc_62F823: FLdI2 var_86
  loc_62F826: CI4UI1
  loc_62F827: FLdPr Me
  loc_62F82A: MemLdStr global_52
  loc_62F82D: Ary1LdPr
  loc_62F82E: MemLdRfVar from_stack_1.global_0
  loc_62F831: StFixedStr
  loc_62F834: ILdRf var_A0
  loc_62F837: LitStr vbNullString
  loc_62F83A: NeStr
  loc_62F83C: AndI4
  loc_62F83D: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_62F848: BranchF loc_62F8DA
  loc_62F84B: LitVarStr var_B0, "@"
  loc_62F850: FStVarCopyObj var_C0
  loc_62F853: FLdRfVar var_C0
  loc_62F856: LitI4 &H14
  loc_62F85B: FLdRfVar var_D0
  loc_62F85E: ImpAdCallFPR4  = String(, )
  loc_62F863: ILdRf var_8C
  loc_62F866: LitI4 1
  loc_62F86B: LitI4 1
  loc_62F870: FLdRfVar var_D0
  loc_62F873: FLdI2 var_86
  loc_62F876: CI4UI1
  loc_62F877: FLdPr Me
  loc_62F87A: MemLdStr global_52
  loc_62F87D: Ary1LdPr
  loc_62F87E: MemLdRfVar from_stack_1.global_64
  loc_62F881: LdFixedStr
  loc_62F884: PopTmpLdAdStr
  loc_62F888: CVarRef
  loc_62F88D: ImpAdCallI2 Format$(, )
  loc_62F892: FStStr var_98
  loc_62F895: ILdRf var_94
  loc_62F898: FLdI2 var_86
  loc_62F89B: CI4UI1
  loc_62F89C: FLdPr Me
  loc_62F89F: MemLdStr global_52
  loc_62F8A2: Ary1LdPr
  loc_62F8A3: MemLdRfVar from_stack_1.global_64
  loc_62F8A6: StFixedStr
  loc_62F8A9: ILdRf var_98
  loc_62F8AC: ConcatStr
  loc_62F8AD: FStStrNoPop var_9C
  loc_62F8B0: FLdI2 var_86
  loc_62F8B3: CI4UI1
  loc_62F8B4: FLdPr Me
  loc_62F8B7: MemLdStr global_52
  loc_62F8BA: Ary1LdPr
  loc_62F8BB: MemLdRfVar from_stack_1.global_0
  loc_62F8BE: LdFixedStr
  loc_62F8C1: FStStrNoPop var_A0
  loc_62F8C4: ConcatStr
  loc_62F8C5: FStStr var_8C
  loc_62F8C8: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_62F8D3: FFreeVar var_C0 = ""
  loc_62F8DA: FLdRfVar var_86
  loc_62F8DD: NextI2 var_90, loc_62F7CC
  loc_62F8E2: ILdRf var_8C
  loc_62F8E5: LitStr vbNullString
  loc_62F8E8: EqStr
  loc_62F8EA: BranchF loc_62F8F3
  loc_62F8ED: LitStr "0"
  loc_62F8F0: FStStrCopy var_8C
  loc_62F8F3: FLdRfVar var_E6
  loc_62F8F6: FLdRfVar var_8C
  loc_62F8F9: FLdRfVar var_E4
  loc_62F8FC: ImpAdLdRf MemVar_74C760
  loc_62F8FF: NewIfNullPr Formx
  loc_62F902: from_stack_1v = Formx.global_4589716Get()
  loc_62F907: FLdPr var_E4
  loc_62F90A: Formx.Refresh
  loc_62F90F: FLdI2 var_E6
  loc_62F912: NotI4
  loc_62F913: FFree1Ad var_E4
  loc_62F916: BranchF loc_62F945
  loc_62F919: FLdRfVar var_C0
  loc_62F91C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62F921: FLdRfVar var_C0
  loc_62F924: CBoolVarNull
  loc_62F926: FFree1Var var_C0 = ""
  loc_62F929: BranchF loc_62F942
  loc_62F92C: ILdRf Me
  loc_62F92F: FStAdNoPop
  loc_62F933: ImpAdLdRf MemVar_7520D4
  loc_62F936: NewIfNullPr Global
  loc_62F939: Global.Unload from_stack_1
  loc_62F93E: FFree1Ad var_E4
  loc_62F941: ExitProcHresult
  loc_62F942: Branch loc_62F8F3
  loc_62F945: ILdRf Me
  loc_62F948: FStAdNoPop
  loc_62F94C: ImpAdLdRf MemVar_7520D4
  loc_62F94F: NewIfNullPr Global
  loc_62F952: Global.Unload from_stack_1
  loc_62F957: FFree1Ad var_E4
  loc_62F95A: ExitProcHresult
End Sub

Private Sub cmdAgregarSurtidor_Click() '5F4074
  'Data Table: 434F68
  loc_5F3FC4: LitI2_Byte 1
  loc_5F3FC6: FLdRfVar var_86
  loc_5F3FC9: FLdRfVar var_8E
  loc_5F3FCC: FLdPrThis
  loc_5F3FCD: VCallAd Control_ID_lstSurtidores
  loc_5F3FD0: FStAdFunc var_8C
  loc_5F3FD3: FLdPr var_8C
  loc_5F3FD6:  = Me.ListCount
  loc_5F3FDB: FLdI2 var_8E
  loc_5F3FDE: FFree1Ad var_8C
  loc_5F3FE1: ForI2 var_92
  loc_5F3FE7: FLdRfVar var_8E
  loc_5F3FEA: FLdI2 var_86
  loc_5F3FED: LitI2_Byte 1
  loc_5F3FEF: SubI2
  loc_5F3FF0: FLdPrThis
  loc_5F3FF1: VCallAd Control_ID_lstSurtidores
  loc_5F3FF4: FStAdFunc var_8C
  loc_5F3FF7: FLdPr var_8C
  loc_5F3FFA:  = Me.Selected
  loc_5F3FFF: FLdI2 var_8E
  loc_5F4002: FFree1Ad var_8C
  loc_5F4005: BranchF loc_5F4048
  loc_5F4008: FLdRfVar var_8E
  loc_5F400B: FLdPrThis
  loc_5F400C: VCallAd Control_ID_lstGrupo
  loc_5F400F: FStAdFunc var_8C
  loc_5F4012: FLdPr var_8C
  loc_5F4015:  = Me.ListIndex
  loc_5F401A: FLdRfVar var_9C
  loc_5F401D: FLdI2 var_86
  loc_5F4020: LitI2_Byte 1
  loc_5F4022: SubI2
  loc_5F4023: FLdPrThis
  loc_5F4024: VCallAd Control_ID_lstSurtidores
  loc_5F4027: FStAdFunc var_98
  loc_5F402A: FLdPr var_98
  loc_5F402D:  = Me.ItemData
  loc_5F4032: ILdRf var_9C
  loc_5F4035: CI2I4
  loc_5F4036: FLdI2 var_8E
  loc_5F4039: LitI2_Byte 1
  loc_5F403B: AddI2
  loc_5F403C: from_stack_3v = Proc_33_11_5DFF88(from_stack_1v, from_stack_2v)
  loc_5F4041: FFreeAd var_8C = ""
  loc_5F4048: FLdRfVar var_86
  loc_5F404B: NextI2 var_92, loc_5F3FE7
  loc_5F4050: FLdRfVar var_8E
  loc_5F4053: FLdPrThis
  loc_5F4054: VCallAd Control_ID_lstGrupo
  loc_5F4057: FStAdFunc var_8C
  loc_5F405A: FLdPr var_8C
  loc_5F405D:  = Me.ListIndex
  loc_5F4062: FLdI2 var_8E
  loc_5F4065: LitI2_Byte 1
  loc_5F4067: AddI2
  loc_5F4068: from_stack_2v = Proc_33_13_638890(from_stack_1v)
  loc_5F406D: FFree1Ad var_8C
  loc_5F4070: ExitProcHresult
End Sub

Private Sub cmdBorrarSurtidor_Click() '5F432C
  'Data Table: 434F68
  loc_5F427C: LitI2_Byte 1
  loc_5F427E: FLdRfVar var_86
  loc_5F4281: FLdRfVar var_8E
  loc_5F4284: FLdPrThis
  loc_5F4285: VCallAd Control_ID_lstMiembros
  loc_5F4288: FStAdFunc var_8C
  loc_5F428B: FLdPr var_8C
  loc_5F428E:  = Me.ListCount
  loc_5F4293: FLdI2 var_8E
  loc_5F4296: FFree1Ad var_8C
  loc_5F4299: ForI2 var_92
  loc_5F429F: FLdRfVar var_8E
  loc_5F42A2: FLdI2 var_86
  loc_5F42A5: LitI2_Byte 1
  loc_5F42A7: SubI2
  loc_5F42A8: FLdPrThis
  loc_5F42A9: VCallAd Control_ID_lstMiembros
  loc_5F42AC: FStAdFunc var_8C
  loc_5F42AF: FLdPr var_8C
  loc_5F42B2:  = Me.Selected
  loc_5F42B7: FLdI2 var_8E
  loc_5F42BA: FFree1Ad var_8C
  loc_5F42BD: BranchF loc_5F4300
  loc_5F42C0: FLdRfVar var_8E
  loc_5F42C3: FLdPrThis
  loc_5F42C4: VCallAd Control_ID_lstGrupo
  loc_5F42C7: FStAdFunc var_8C
  loc_5F42CA: FLdPr var_8C
  loc_5F42CD:  = Me.ListIndex
  loc_5F42D2: FLdRfVar var_9C
  loc_5F42D5: FLdI2 var_86
  loc_5F42D8: LitI2_Byte 1
  loc_5F42DA: SubI2
  loc_5F42DB: FLdPrThis
  loc_5F42DC: VCallAd Control_ID_lstMiembros
  loc_5F42DF: FStAdFunc var_98
  loc_5F42E2: FLdPr var_98
  loc_5F42E5:  = Me.ItemData
  loc_5F42EA: ILdRf var_9C
  loc_5F42ED: CI2I4
  loc_5F42EE: FLdI2 var_8E
  loc_5F42F1: LitI2_Byte 1
  loc_5F42F3: AddI2
  loc_5F42F4: from_stack_3v = Proc_33_12_5D3A14(from_stack_1v, from_stack_2v)
  loc_5F42F9: FFreeAd var_8C = ""
  loc_5F4300: FLdRfVar var_86
  loc_5F4303: NextI2 var_92, loc_5F429F
  loc_5F4308: FLdRfVar var_8E
  loc_5F430B: FLdPrThis
  loc_5F430C: VCallAd Control_ID_lstGrupo
  loc_5F430F: FStAdFunc var_8C
  loc_5F4312: FLdPr var_8C
  loc_5F4315:  = Me.ListIndex
  loc_5F431A: FLdI2 var_8E
  loc_5F431D: LitI2_Byte 1
  loc_5F431F: AddI2
  loc_5F4320: from_stack_2v = Proc_33_13_638890(from_stack_1v)
  loc_5F4325: FFree1Ad var_8C
  loc_5F4328: ExitProcHresult
End Sub

Private Sub lstGrupo_Click() '5D5140
  'Data Table: 434F68
  loc_5D511C: FLdRfVar var_8A
  loc_5D511F: FLdPrThis
  loc_5D5120: VCallAd Control_ID_lstGrupo
  loc_5D5123: FStAdFunc var_88
  loc_5D5126: FLdPr var_88
  loc_5D5129:  = Me.ListIndex
  loc_5D512E: FLdI2 var_8A
  loc_5D5131: LitI2_Byte 1
  loc_5D5133: AddI2
  loc_5D5134: from_stack_2v = Proc_33_13_638890(from_stack_1v)
  loc_5D5139: FFree1Ad var_88
  loc_5D513C: ExitProcHresult
End Sub

Private Sub cmdAgregarGrupo_Click() '606184
  'Data Table: 434F68
  loc_606098: LitStr vbNullString
  loc_60609B: FLdPrThis
  loc_60609C: VCallAd Control_ID_txtGrupo
  loc_60609F: FStAdFunc var_88
  loc_6060A2: FLdPr var_88
  loc_6060A5: Me.Text = from_stack_1
  loc_6060AA: FFree1Ad var_88
  loc_6060AD: FLdPrThis
  loc_6060AE: VCallAd Control_ID_lstMiembros
  loc_6060B1: FStAdFunc var_88
  loc_6060B4: FLdPr var_88
  loc_6060B7: Me.Clear
  loc_6060BC: FFree1Ad var_88
  loc_6060BF: FLdPrThis
  loc_6060C0: VCallAd Control_ID_lstSurtidores
  loc_6060C3: FStAdFunc var_88
  loc_6060C6: FLdPr var_88
  loc_6060C9: Me.Clear
  loc_6060CE: FFree1Ad var_88
  loc_6060D1: LitI2_Byte 0
  loc_6060D3: FLdPrThis
  loc_6060D4: VCallAd Control_ID_fraSeleccion
  loc_6060D7: FStAdFunc var_88
  loc_6060DA: FLdPr var_88
  loc_6060DD: Me.Enabled = from_stack_1b
  loc_6060E2: FFree1Ad var_88
  loc_6060E5: LitI2_Byte 0
  loc_6060E7: FLdPrThis
  loc_6060E8: VCallAd Control_ID_lstGrupo
  loc_6060EB: FStAdFunc var_88
  loc_6060EE: FLdPr var_88
  loc_6060F1: Me.Enabled = from_stack_1b
  loc_6060F6: FFree1Ad var_88
  loc_6060F9: LitI2_Byte 0
  loc_6060FB: FLdPrThis
  loc_6060FC: VCallAd Control_ID_cmdAceptar
  loc_6060FF: FStAdFunc var_88
  loc_606102: FLdPr var_88
  loc_606105: Me.Enabled = from_stack_1b
  loc_60610A: FFree1Ad var_88
  loc_60610D: LitI2_Byte 0
  loc_60610F: FLdPrThis
  loc_606110: VCallAd Control_ID_cmdAgregarGrupo
  loc_606113: FStAdFunc var_88
  loc_606116: FLdPr var_88
  loc_606119: Me.Enabled = from_stack_1b
  loc_60611E: FFree1Ad var_88
  loc_606121: LitI2_Byte 0
  loc_606123: FLdPrThis
  loc_606124: VCallAd Control_ID_cmdBorrarGrupo
  loc_606127: FStAdFunc var_88
  loc_60612A: FLdPr var_88
  loc_60612D: Me.Enabled = from_stack_1b
  loc_606132: FFree1Ad var_88
  loc_606135: LitI2_Byte &HFF
  loc_606137: FLdPrThis
  loc_606138: VCallAd Control_ID_txtGrupo
  loc_60613B: FStAdFunc var_88
  loc_60613E: FLdPr var_88
  loc_606141: Me.Visible = from_stack_1b
  loc_606146: FFree1Ad var_88
  loc_606149: LitI2_Byte &HFF
  loc_60614B: FLdPrThis
  loc_60614C: VCallAd Control_ID_cmdAceptaGrupo
  loc_60614F: FStAdFunc var_88
  loc_606152: FLdPr var_88
  loc_606155: Me.Visible = from_stack_1b
  loc_60615A: FFree1Ad var_88
  loc_60615D: LitI2_Byte &HFF
  loc_60615F: FLdPrThis
  loc_606160: VCallAd Control_ID_cmdCancelaGrupo
  loc_606163: FStAdFunc var_88
  loc_606166: FLdPr var_88
  loc_606169: Me.Visible = from_stack_1b
  loc_60616E: FFree1Ad var_88
  loc_606171: FLdPrThis
  loc_606172: VCallAd Control_ID_txtGrupo
  loc_606175: FStAdFunc var_88
  loc_606178: FLdPr var_88
  loc_60617B: Me.SetFocus
  loc_606180: FFree1Ad var_88
  loc_606183: ExitProcHresult
End Sub

Private Sub cmdBorrarGrupo_Click() '6339A8
  'Data Table: 434F68
  loc_6337C4: LitI2_Byte 1
  loc_6337C6: FLdRfVar var_86
  loc_6337C9: FLdRfVar var_8E
  loc_6337CC: FLdPrThis
  loc_6337CD: VCallAd Control_ID_lstGrupo
  loc_6337D0: FStAdFunc var_8C
  loc_6337D3: FLdPr var_8C
  loc_6337D6:  = Me.ListCount
  loc_6337DB: FLdI2 var_8E
  loc_6337DE: FFree1Ad var_8C
  loc_6337E1: ForI2 var_92
  loc_6337E7: FLdRfVar var_8E
  loc_6337EA: FLdI2 var_86
  loc_6337ED: LitI2_Byte 1
  loc_6337EF: SubI2
  loc_6337F0: FLdPrThis
  loc_6337F1: VCallAd Control_ID_lstGrupo
  loc_6337F4: FStAdFunc var_8C
  loc_6337F7: FLdPr var_8C
  loc_6337FA:  = Me.Selected
  loc_6337FF: FLdI2 var_8E
  loc_633802: FFree1Ad var_8C
  loc_633805: BranchF loc_63382B
  loc_633808: FLdI2 var_86
  loc_63380B: LitI2_Byte 1
  loc_63380D: SubI2
  loc_63380E: FLdPrThis
  loc_63380F: VCallAd Control_ID_lstGrupo
  loc_633812: FStAdFunc var_8C
  loc_633815: FLdPr var_8C
  loc_633818: Me.RemoveItem from_stack_1
  loc_63381D: FFree1Ad var_8C
  loc_633820: FLdI2 var_86
  loc_633823: from_stack_2v = Proc_33_14_5F10DC(from_stack_1v)
  loc_633828: Branch loc_633833
  loc_63382B: FLdRfVar var_86
  loc_63382E: NextI2 var_92, loc_6337E7
  loc_633833: LitI4 1
  loc_633838: FLdPr Me
  loc_63383B: MemLdStr global_52
  loc_63383E: Ary1LdPr
  loc_63383F: MemLdRfVar from_stack_1.global_64
  loc_633842: LdFixedStr
  loc_633845: FStStrNoPop var_98
  loc_633848: ImpAdCallI2 Trim$()
  loc_63384D: FStStr var_9C
  loc_633850: ILdRf var_98
  loc_633853: LitI4 1
  loc_633858: FLdPr Me
  loc_63385B: MemLdStr global_52
  loc_63385E: Ary1LdPr
  loc_63385F: MemLdRfVar from_stack_1.global_64
  loc_633862: StFixedStr
  loc_633865: ILdRf var_9C
  loc_633868: LitStr vbNullString
  loc_63386B: EqStr
  loc_63386D: LitI4 1
  loc_633872: FLdPr Me
  loc_633875: MemLdStr global_52
  loc_633878: Ary1LdPr
  loc_633879: MemLdRfVar from_stack_1.global_0
  loc_63387C: LdFixedStr
  loc_63387F: FStStrNoPop var_A0
  loc_633882: ImpAdCallI2 Trim$()
  loc_633887: FStStr var_A4
  loc_63388A: ILdRf var_A0
  loc_63388D: LitI4 1
  loc_633892: FLdPr Me
  loc_633895: MemLdStr global_52
  loc_633898: Ary1LdPr
  loc_633899: MemLdRfVar from_stack_1.global_0
  loc_63389C: StFixedStr
  loc_63389F: ILdRf var_A4
  loc_6338A2: LitStr vbNullString
  loc_6338A5: EqStr
  loc_6338A7: AndI4
  loc_6338A8: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_6338B3: BranchF loc_633990
  loc_6338B6: LitI2_Byte 0
  loc_6338B8: FLdPrThis
  loc_6338B9: VCallAd Control_ID_fraSeleccion
  loc_6338BC: FStAdFunc var_8C
  loc_6338BF: FLdPr var_8C
  loc_6338C2: Me.Enabled = from_stack_1b
  loc_6338C7: FFree1Ad var_8C
  loc_6338CA: LitI2_Byte 0
  loc_6338CC: FLdPrThis
  loc_6338CD: VCallAd Control_ID_lstGrupo
  loc_6338D0: FStAdFunc var_8C
  loc_6338D3: FLdPr var_8C
  loc_6338D6: Me.Enabled = from_stack_1b
  loc_6338DB: FFree1Ad var_8C
  loc_6338DE: LitI2_Byte &HFF
  loc_6338E0: FLdPrThis
  loc_6338E1: VCallAd Control_ID_cmdAceptar
  loc_6338E4: FStAdFunc var_8C
  loc_6338E7: FLdPr var_8C
  loc_6338EA: Me.Enabled = from_stack_1b
  loc_6338EF: FFree1Ad var_8C
  loc_6338F2: LitI2_Byte 0
  loc_6338F4: FLdPrThis
  loc_6338F5: VCallAd Control_ID_cmdAgregarGrupo
  loc_6338F8: FStAdFunc var_8C
  loc_6338FB: FLdPr var_8C
  loc_6338FE: Me.Enabled = from_stack_1b
  loc_633903: FFree1Ad var_8C
  loc_633906: LitI2_Byte 0
  loc_633908: FLdPrThis
  loc_633909: VCallAd Control_ID_cmdBorrarGrupo
  loc_63390C: FStAdFunc var_8C
  loc_63390F: FLdPr var_8C
  loc_633912: Me.Enabled = from_stack_1b
  loc_633917: FFree1Ad var_8C
  loc_63391A: LitI2_Byte &HFF
  loc_63391C: FLdPrThis
  loc_63391D: VCallAd Control_ID_txtGrupo
  loc_633920: FStAdFunc var_8C
  loc_633923: FLdPr var_8C
  loc_633926: Me.Visible = from_stack_1b
  loc_63392B: FFree1Ad var_8C
  loc_63392E: LitI2_Byte &HFF
  loc_633930: FLdPrThis
  loc_633931: VCallAd Control_ID_cmdAceptaGrupo
  loc_633934: FStAdFunc var_8C
  loc_633937: FLdPr var_8C
  loc_63393A: Me.Visible = from_stack_1b
  loc_63393F: FFree1Ad var_8C
  loc_633942: FLdPrThis
  loc_633943: VCallAd Control_ID_lstMiembros
  loc_633946: FStAdFunc var_8C
  loc_633949: FLdPr var_8C
  loc_63394C: Me.Clear
  loc_633951: FFree1Ad var_8C
  loc_633954: FLdPrThis
  loc_633955: VCallAd Control_ID_lstSurtidores
  loc_633958: FStAdFunc var_8C
  loc_63395B: FLdPr var_8C
  loc_63395E: Me.Clear
  loc_633963: FFree1Ad var_8C
  loc_633966: LitStr vbNullString
  loc_633969: FLdPrThis
  loc_63396A: VCallAd Control_ID_txtGrupo
  loc_63396D: FStAdFunc var_8C
  loc_633970: FLdPr var_8C
  loc_633973: Me.Text = from_stack_1
  loc_633978: FFree1Ad var_8C
  loc_63397B: FLdPrThis
  loc_63397C: VCallAd Control_ID_txtGrupo
  loc_63397F: FStAdFunc var_8C
  loc_633982: FLdPr var_8C
  loc_633985: Me.SetFocus
  loc_63398A: FFree1Ad var_8C
  loc_63398D: Branch loc_6339A4
  loc_633990: LitI2_Byte 0
  loc_633992: FLdPrThis
  loc_633993: VCallAd Control_ID_lstGrupo
  loc_633996: FStAdFunc var_8C
  loc_633999: FLdPr var_8C
  loc_63399C: Me.ListIndex = from_stack_1
  loc_6339A1: FFree1Ad var_8C
  loc_6339A4: ExitProcHresult
End Sub

Private Sub cmdAceptaGrupo_Click() '6615A8
  'Data Table: 434F68
  loc_661260: FLdRfVar var_8C
  loc_661263: FLdPrThis
  loc_661264: VCallAd Control_ID_txtGrupo
  loc_661267: FStAdFunc var_88
  loc_66126A: FLdPr var_88
  loc_66126D:  = Me.Text
  loc_661272: ILdRf var_8C
  loc_661275: ImpAdCallI2 Trim$()
  loc_66127A: FStStrNoPop var_90
  loc_66127D: LitStr vbNullString
  loc_661280: NeStr
  loc_661282: FFreeStr var_8C = ""
  loc_661289: FFree1Ad var_88
  loc_66128C: BranchF loc_66156A
  loc_66128F: LitI4 1
  loc_661294: FLdPr Me
  loc_661297: MemLdStr global_52
  loc_66129A: Ary1LdPr
  loc_66129B: MemLdRfVar from_stack_1.global_64
  loc_66129E: LdFixedStr
  loc_6612A1: FStStrNoPop var_8C
  loc_6612A4: ImpAdCallI2 Trim$()
  loc_6612A9: FStStr var_90
  loc_6612AC: ILdRf var_8C
  loc_6612AF: LitI4 1
  loc_6612B4: FLdPr Me
  loc_6612B7: MemLdStr global_52
  loc_6612BA: Ary1LdPr
  loc_6612BB: MemLdRfVar from_stack_1.global_64
  loc_6612BE: StFixedStr
  loc_6612C1: ILdRf var_90
  loc_6612C4: LitStr vbNullString
  loc_6612C7: EqStr
  loc_6612C9: LitI4 1
  loc_6612CE: FLdPr Me
  loc_6612D1: MemLdStr global_52
  loc_6612D4: Ary1LdPr
  loc_6612D5: MemLdRfVar from_stack_1.global_0
  loc_6612D8: LdFixedStr
  loc_6612DB: FStStrNoPop var_94
  loc_6612DE: ImpAdCallI2 Trim$()
  loc_6612E3: FStStr var_98
  loc_6612E6: ILdRf var_94
  loc_6612E9: LitI4 1
  loc_6612EE: FLdPr Me
  loc_6612F1: MemLdStr global_52
  loc_6612F4: Ary1LdPr
  loc_6612F5: MemLdRfVar from_stack_1.global_0
  loc_6612F8: StFixedStr
  loc_6612FB: ILdRf var_98
  loc_6612FE: LitStr vbNullString
  loc_661301: EqStr
  loc_661303: AndI4
  loc_661304: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_66130F: BranchF loc_6613C0
  loc_661312: FLdRfVar var_8C
  loc_661315: FLdPrThis
  loc_661316: VCallAd Control_ID_txtGrupo
  loc_661319: FStAdFunc var_88
  loc_66131C: FLdPr var_88
  loc_66131F:  = Me.Text
  loc_661324: ILdRf var_8C
  loc_661327: LitI4 1
  loc_66132C: FLdPr Me
  loc_66132F: MemLdStr global_52
  loc_661332: Ary1LdPr
  loc_661333: MemLdRfVar from_stack_1.global_64
  loc_661336: StFixedStr
  loc_661339: FFree1Str var_8C
  loc_66133C: FFree1Ad var_88
  loc_66133F: LitVarStr var_A8, "0"
  loc_661344: FStVarCopyObj var_B8
  loc_661347: FLdRfVar var_B8
  loc_66134A: LitI4 &H20
  loc_66134F: FLdRfVar var_C8
  loc_661352: ImpAdCallFPR4  = String(, )
  loc_661357: FLdRfVar var_C8
  loc_66135A: CStrVarTmp
  loc_66135B: FStStrNoPop var_8C
  loc_66135E: LitI4 1
  loc_661363: FLdPr Me
  loc_661366: MemLdStr global_52
  loc_661369: Ary1LdPr
  loc_66136A: MemLdRfVar from_stack_1.global_0
  loc_66136D: StFixedStr
  loc_661370: FFree1Str var_8C
  loc_661373: FFreeVar var_B8 = ""
  loc_66137A: LitVar_Missing var_A8
  loc_66137D: PopAdLdVar
  loc_66137E: LitI4 1
  loc_661383: FLdPr Me
  loc_661386: MemLdStr global_52
  loc_661389: Ary1LdPr
  loc_66138A: MemLdRfVar from_stack_1.global_64
  loc_66138D: LdFixedStr
  loc_661390: FStStrNoPop var_8C
  loc_661393: FLdPrThis
  loc_661394: VCallAd Control_ID_lstGrupo
  loc_661397: FStAdFunc var_88
  loc_66139A: FLdPr var_88
  loc_66139D: Me.AddItem from_stack_1, from_stack_2
  loc_6613A2: ILdRf var_8C
  loc_6613A5: LitI4 1
  loc_6613AA: FLdPr Me
  loc_6613AD: MemLdStr global_52
  loc_6613B0: Ary1LdPr
  loc_6613B1: MemLdRfVar from_stack_1.global_64
  loc_6613B4: StFixedStr
  loc_6613B7: FFree1Str var_8C
  loc_6613BA: FFree1Ad var_88
  loc_6613BD: Branch loc_6614A4
  loc_6613C0: LitI4 1
  loc_6613C5: FLdPr Me
  loc_6613C8: MemLdStr global_52
  loc_6613CB: LitI2_Byte 1
  loc_6613CD: FnUBound
  loc_6613CF: LitI4 1
  loc_6613D4: AddI4
  loc_6613D5: FLdPr Me
  loc_6613D8: MemLdRfVar from_stack_1.global_52
  loc_6613DB: RedimPreserve
  loc_6613E5: FLdRfVar var_8C
  loc_6613E8: FLdPrThis
  loc_6613E9: VCallAd Control_ID_txtGrupo
  loc_6613EC: FStAdFunc var_88
  loc_6613EF: FLdPr var_88
  loc_6613F2:  = Me.Text
  loc_6613F7: ILdRf var_8C
  loc_6613FA: FLdPr Me
  loc_6613FD: MemLdStr global_52
  loc_661400: LitI2_Byte 1
  loc_661402: FnUBound
  loc_661404: FLdPr Me
  loc_661407: MemLdStr global_52
  loc_66140A: Ary1LdPr
  loc_66140B: MemLdRfVar from_stack_1.global_64
  loc_66140E: StFixedStr
  loc_661411: FFree1Str var_8C
  loc_661414: FFree1Ad var_88
  loc_661417: LitVarStr var_A8, "0"
  loc_66141C: FStVarCopyObj var_B8
  loc_66141F: FLdRfVar var_B8
  loc_661422: LitI4 &H20
  loc_661427: FLdRfVar var_C8
  loc_66142A: ImpAdCallFPR4  = String(, )
  loc_66142F: FLdRfVar var_C8
  loc_661432: CStrVarTmp
  loc_661433: FStStrNoPop var_8C
  loc_661436: FLdPr Me
  loc_661439: MemLdStr global_52
  loc_66143C: LitI2_Byte 1
  loc_66143E: FnUBound
  loc_661440: FLdPr Me
  loc_661443: MemLdStr global_52
  loc_661446: Ary1LdPr
  loc_661447: MemLdRfVar from_stack_1.global_0
  loc_66144A: StFixedStr
  loc_66144D: FFree1Str var_8C
  loc_661450: FFreeVar var_B8 = ""
  loc_661457: LitVar_Missing var_A8
  loc_66145A: PopAdLdVar
  loc_66145B: FLdPr Me
  loc_66145E: MemLdStr global_52
  loc_661461: LitI2_Byte 1
  loc_661463: FnUBound
  loc_661465: FLdPr Me
  loc_661468: MemLdStr global_52
  loc_66146B: Ary1LdPr
  loc_66146C: MemLdRfVar from_stack_1.global_64
  loc_66146F: LdFixedStr
  loc_661472: FStStrNoPop var_8C
  loc_661475: FLdPrThis
  loc_661476: VCallAd Control_ID_lstGrupo
  loc_661479: FStAdFunc var_88
  loc_66147C: FLdPr var_88
  loc_66147F: Me.AddItem from_stack_1, from_stack_2
  loc_661484: ILdRf var_8C
  loc_661487: FLdPr Me
  loc_66148A: MemLdStr global_52
  loc_66148D: LitI2_Byte 1
  loc_66148F: FnUBound
  loc_661491: FLdPr Me
  loc_661494: MemLdStr global_52
  loc_661497: Ary1LdPr
  loc_661498: MemLdRfVar from_stack_1.global_64
  loc_66149B: StFixedStr
  loc_66149E: FFree1Str var_8C
  loc_6614A1: FFree1Ad var_88
  loc_6614A4: LitI2_Byte &HFF
  loc_6614A6: FLdPrThis
  loc_6614A7: VCallAd Control_ID_fraSeleccion
  loc_6614AA: FStAdFunc var_88
  loc_6614AD: FLdPr var_88
  loc_6614B0: Me.Enabled = from_stack_1b
  loc_6614B5: FFree1Ad var_88
  loc_6614B8: LitI2_Byte &HFF
  loc_6614BA: FLdPrThis
  loc_6614BB: VCallAd Control_ID_lstGrupo
  loc_6614BE: FStAdFunc var_88
  loc_6614C1: FLdPr var_88
  loc_6614C4: Me.Enabled = from_stack_1b
  loc_6614C9: FFree1Ad var_88
  loc_6614CC: LitI2_Byte &HFF
  loc_6614CE: FLdPrThis
  loc_6614CF: VCallAd Control_ID_cmdAceptar
  loc_6614D2: FStAdFunc var_88
  loc_6614D5: FLdPr var_88
  loc_6614D8: Me.Enabled = from_stack_1b
  loc_6614DD: FFree1Ad var_88
  loc_6614E0: LitI2_Byte &HFF
  loc_6614E2: FLdPrThis
  loc_6614E3: VCallAd Control_ID_cmdAgregarGrupo
  loc_6614E6: FStAdFunc var_88
  loc_6614E9: FLdPr var_88
  loc_6614EC: Me.Enabled = from_stack_1b
  loc_6614F1: FFree1Ad var_88
  loc_6614F4: LitI2_Byte &HFF
  loc_6614F6: FLdPrThis
  loc_6614F7: VCallAd Control_ID_cmdBorrarGrupo
  loc_6614FA: FStAdFunc var_88
  loc_6614FD: FLdPr var_88
  loc_661500: Me.Enabled = from_stack_1b
  loc_661505: FFree1Ad var_88
  loc_661508: LitI2_Byte 0
  loc_66150A: FLdPrThis
  loc_66150B: VCallAd Control_ID_txtGrupo
  loc_66150E: FStAdFunc var_88
  loc_661511: FLdPr var_88
  loc_661514: Me.Visible = from_stack_1b
  loc_661519: FFree1Ad var_88
  loc_66151C: LitI2_Byte 0
  loc_66151E: FLdPrThis
  loc_66151F: VCallAd Control_ID_cmdAceptaGrupo
  loc_661522: FStAdFunc var_88
  loc_661525: FLdPr var_88
  loc_661528: Me.Visible = from_stack_1b
  loc_66152D: FFree1Ad var_88
  loc_661530: LitI2_Byte 0
  loc_661532: FLdPrThis
  loc_661533: VCallAd Control_ID_cmdCancelaGrupo
  loc_661536: FStAdFunc var_88
  loc_661539: FLdPr var_88
  loc_66153C: Me.Visible = from_stack_1b
  loc_661541: FFree1Ad var_88
  loc_661544: FLdPr Me
  loc_661547: MemLdStr global_52
  loc_66154A: LitI2_Byte 1
  loc_66154C: FnUBound
  loc_66154E: LitI4 1
  loc_661553: SubI4
  loc_661554: CI2I4
  loc_661555: FLdPrThis
  loc_661556: VCallAd Control_ID_lstGrupo
  loc_661559: FStAdFunc var_88
  loc_66155C: FLdPr var_88
  loc_66155F: Me.ListIndex = from_stack_1
  loc_661564: FFree1Ad var_88
  loc_661567: Branch loc_6615A5
  loc_66156A: LitVar_Missing var_118
  loc_66156D: LitVar_Missing var_F8
  loc_661570: LitVar_Missing var_C8
  loc_661573: LitI4 &H40
  loc_661578: LitVarStr var_A8, "Debe ingresar un nombre de Grupo. Verifique por favor."
  loc_66157D: FStVarCopyObj var_B8
  loc_661580: FLdRfVar var_B8
  loc_661583: ImpAdCallFPR4 MsgBox(, , , , )
  loc_661588: FFreeVar var_B8 = "": var_C8 = "": var_F8 = ""
  loc_661593: FLdPrThis
  loc_661594: VCallAd Control_ID_txtGrupo
  loc_661597: FStAdFunc var_88
  loc_66159A: FLdPr var_88
  loc_66159D: Me.SetFocus
  loc_6615A2: FFree1Ad var_88
  loc_6615A5: ExitProcHresult
End Sub

Private Sub cmdCancelaGrupo_Click() '5F6B94
  'Data Table: 434F68
  loc_5F6AD0: LitI2_Byte &HFF
  loc_5F6AD2: FLdPrThis
  loc_5F6AD3: VCallAd Control_ID_fraSeleccion
  loc_5F6AD6: FStAdFunc var_88
  loc_5F6AD9: FLdPr var_88
  loc_5F6ADC: Me.Enabled = from_stack_1b
  loc_5F6AE1: FFree1Ad var_88
  loc_5F6AE4: LitI2_Byte &HFF
  loc_5F6AE6: FLdPrThis
  loc_5F6AE7: VCallAd Control_ID_lstGrupo
  loc_5F6AEA: FStAdFunc var_88
  loc_5F6AED: FLdPr var_88
  loc_5F6AF0: Me.Enabled = from_stack_1b
  loc_5F6AF5: FFree1Ad var_88
  loc_5F6AF8: LitI2_Byte &HFF
  loc_5F6AFA: FLdPrThis
  loc_5F6AFB: VCallAd Control_ID_cmdAceptar
  loc_5F6AFE: FStAdFunc var_88
  loc_5F6B01: FLdPr var_88
  loc_5F6B04: Me.Enabled = from_stack_1b
  loc_5F6B09: FFree1Ad var_88
  loc_5F6B0C: LitI2_Byte &HFF
  loc_5F6B0E: FLdPrThis
  loc_5F6B0F: VCallAd Control_ID_cmdAgregarGrupo
  loc_5F6B12: FStAdFunc var_88
  loc_5F6B15: FLdPr var_88
  loc_5F6B18: Me.Enabled = from_stack_1b
  loc_5F6B1D: FFree1Ad var_88
  loc_5F6B20: LitI2_Byte &HFF
  loc_5F6B22: FLdPrThis
  loc_5F6B23: VCallAd Control_ID_cmdBorrarGrupo
  loc_5F6B26: FStAdFunc var_88
  loc_5F6B29: FLdPr var_88
  loc_5F6B2C: Me.Enabled = from_stack_1b
  loc_5F6B31: FFree1Ad var_88
  loc_5F6B34: LitI2_Byte 0
  loc_5F6B36: FLdPrThis
  loc_5F6B37: VCallAd Control_ID_txtGrupo
  loc_5F6B3A: FStAdFunc var_88
  loc_5F6B3D: FLdPr var_88
  loc_5F6B40: Me.Visible = from_stack_1b
  loc_5F6B45: FFree1Ad var_88
  loc_5F6B48: LitI2_Byte 0
  loc_5F6B4A: FLdPrThis
  loc_5F6B4B: VCallAd Control_ID_cmdAceptaGrupo
  loc_5F6B4E: FStAdFunc var_88
  loc_5F6B51: FLdPr var_88
  loc_5F6B54: Me.Visible = from_stack_1b
  loc_5F6B59: FFree1Ad var_88
  loc_5F6B5C: LitI2_Byte 0
  loc_5F6B5E: FLdPrThis
  loc_5F6B5F: VCallAd Control_ID_cmdCancelaGrupo
  loc_5F6B62: FStAdFunc var_88
  loc_5F6B65: FLdPr var_88
  loc_5F6B68: Me.Visible = from_stack_1b
  loc_5F6B6D: FFree1Ad var_88
  loc_5F6B70: FLdRfVar var_8A
  loc_5F6B73: FLdPrThis
  loc_5F6B74: VCallAd Control_ID_lstGrupo
  loc_5F6B77: FStAdFunc var_88
  loc_5F6B7A: FLdPr var_88
  loc_5F6B7D:  = Me.ListIndex
  loc_5F6B82: FLdI2 var_8A
  loc_5F6B85: LitI2_Byte 1
  loc_5F6B87: AddI2
  loc_5F6B88: from_stack_2v = Proc_33_13_638890(from_stack_1v)
  loc_5F6B8D: FFree1Ad var_88
  loc_5F6B90: ExitProcHresult
End Sub

Private Sub Form_Load() '6A3F80
  'Data Table: 434F68
  loc_6A38BC: ILdRf Me
  loc_6A38BF: CastAd
  loc_6A38C2: FStAdFunc var_88
  loc_6A38C5: FLdRfVar var_88
  loc_6A38C8: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6A38CD: FFree1Ad var_88
  loc_6A38D0: FLdRfVar var_1D8
  loc_6A38D3: LitVar_Missing var_1D4
  loc_6A38D6: LitVar_Missing var_1B4
  loc_6A38D9: LitVar_Missing var_194
  loc_6A38DC: LitVar_Missing var_174
  loc_6A38DF: LitVar_Missing var_154
  loc_6A38E2: LitVar_Missing var_134
  loc_6A38E5: LitVar_Missing var_114
  loc_6A38E8: LitVar_Missing var_F4
  loc_6A38EB: LitVar_Missing var_D4
  loc_6A38EE: LitVar_Missing var_B4
  loc_6A38F1: LitStr "Grupos de"
  loc_6A38F4: FStStrCopy var_94
  loc_6A38F7: FLdRfVar var_94
  loc_6A38FA: LitI4 1
  loc_6A38FF: PopTmpLdAdStr var_90
  loc_6A3902: LitI2_Byte &H19
  loc_6A3904: PopTmpLdAd2 var_8A
  loc_6A3907: ImpAdLdRf MemVar_74C7D0
  loc_6A390A: NewIfNullPr clsMsg
  loc_6A390D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3912: ILdRf var_1D8
  loc_6A3915: LitStr " "
  loc_6A3918: ConcatStr
  loc_6A3919: FStStrNoPop var_1DC
  loc_6A391C: ImpAdLdI4 MemVar_74BEE4
  loc_6A391F: ConcatStr
  loc_6A3920: FStStrNoPop var_1E0
  loc_6A3923: FLdPrThis
  loc_6A3924: VCallAd Control_ID_lblTitulo
  loc_6A3927: FStAdFunc var_88
  loc_6A392A: FLdPr var_88
  loc_6A392D: Me.Caption = from_stack_1
  loc_6A3932: FFreeStr var_94 = "": var_1D8 = "": var_1DC = ""
  loc_6A393D: FFree1Ad var_88
  loc_6A3940: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3957: ImpAdLdI4 MemVar_74BEE4
  loc_6A395A: LitStr " "
  loc_6A395D: ConcatStr
  loc_6A395E: FStStrNoPop var_1DC
  loc_6A3961: FLdRfVar var_1D8
  loc_6A3964: LitVar_Missing var_1D4
  loc_6A3967: LitVar_Missing var_1B4
  loc_6A396A: LitVar_Missing var_194
  loc_6A396D: LitVar_Missing var_174
  loc_6A3970: LitVar_Missing var_154
  loc_6A3973: LitVar_Missing var_134
  loc_6A3976: LitVar_Missing var_114
  loc_6A3979: LitVar_Missing var_F4
  loc_6A397C: LitVar_Missing var_D4
  loc_6A397F: LitVar_Missing var_B4
  loc_6A3982: LitStr "No Miembros"
  loc_6A3985: FStStrCopy var_94
  loc_6A3988: FLdRfVar var_94
  loc_6A398B: LitI4 2
  loc_6A3990: PopTmpLdAdStr var_90
  loc_6A3993: LitI2_Byte &H19
  loc_6A3995: PopTmpLdAd2 var_8A
  loc_6A3998: ImpAdLdRf MemVar_74C7D0
  loc_6A399B: NewIfNullPr clsMsg
  loc_6A399E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A39A3: ILdRf var_1D8
  loc_6A39A6: ConcatStr
  loc_6A39A7: FStStrNoPop var_1E0
  loc_6A39AA: FLdPrThis
  loc_6A39AB: VCallAd Control_ID_lblSurtNoMiembro
  loc_6A39AE: FStAdFunc var_88
  loc_6A39B1: FLdPr var_88
  loc_6A39B4: Me.Caption = from_stack_1
  loc_6A39B9: FFreeStr var_94 = "": var_1DC = "": var_1D8 = ""
  loc_6A39C4: FFree1Ad var_88
  loc_6A39C7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A39DE: ImpAdLdI4 MemVar_74BEE4
  loc_6A39E1: LitStr " "
  loc_6A39E4: ConcatStr
  loc_6A39E5: FStStrNoPop var_1DC
  loc_6A39E8: FLdRfVar var_1D8
  loc_6A39EB: LitVar_Missing var_1D4
  loc_6A39EE: LitVar_Missing var_1B4
  loc_6A39F1: LitVar_Missing var_194
  loc_6A39F4: LitVar_Missing var_174
  loc_6A39F7: LitVar_Missing var_154
  loc_6A39FA: LitVar_Missing var_134
  loc_6A39FD: LitVar_Missing var_114
  loc_6A3A00: LitVar_Missing var_F4
  loc_6A3A03: LitVar_Missing var_D4
  loc_6A3A06: LitVar_Missing var_B4
  loc_6A3A09: LitStr "Miembros"
  loc_6A3A0C: FStStrCopy var_94
  loc_6A3A0F: FLdRfVar var_94
  loc_6A3A12: LitI4 3
  loc_6A3A17: PopTmpLdAdStr var_90
  loc_6A3A1A: LitI2_Byte &H19
  loc_6A3A1C: PopTmpLdAd2 var_8A
  loc_6A3A1F: ImpAdLdRf MemVar_74C7D0
  loc_6A3A22: NewIfNullPr clsMsg
  loc_6A3A25: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3A2A: ILdRf var_1D8
  loc_6A3A2D: ConcatStr
  loc_6A3A2E: FStStrNoPop var_1E0
  loc_6A3A31: FLdPrThis
  loc_6A3A32: VCallAd Control_ID_lblSurtMiembro
  loc_6A3A35: FStAdFunc var_88
  loc_6A3A38: FLdPr var_88
  loc_6A3A3B: Me.Caption = from_stack_1
  loc_6A3A40: FFreeStr var_94 = "": var_1DC = "": var_1D8 = ""
  loc_6A3A4B: FFree1Ad var_88
  loc_6A3A4E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3A65: FLdRfVar var_1D8
  loc_6A3A68: LitVar_Missing var_1D4
  loc_6A3A6B: LitVar_Missing var_1B4
  loc_6A3A6E: LitVar_Missing var_194
  loc_6A3A71: LitVar_Missing var_174
  loc_6A3A74: LitVar_Missing var_154
  loc_6A3A77: LitVar_Missing var_134
  loc_6A3A7A: LitVar_Missing var_114
  loc_6A3A7D: LitVar_Missing var_F4
  loc_6A3A80: LitVar_Missing var_D4
  loc_6A3A83: LitVar_Missing var_B4
  loc_6A3A86: LitStr "Agrega"
  loc_6A3A89: FStStrCopy var_94
  loc_6A3A8C: FLdRfVar var_94
  loc_6A3A8F: LitI4 4
  loc_6A3A94: PopTmpLdAdStr var_90
  loc_6A3A97: LitI2_Byte &H19
  loc_6A3A99: PopTmpLdAd2 var_8A
  loc_6A3A9C: ImpAdLdRf MemVar_74C7D0
  loc_6A3A9F: NewIfNullPr clsMsg
  loc_6A3AA2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3AA7: ILdRf var_1D8
  loc_6A3AAA: LitStr " "
  loc_6A3AAD: ConcatStr
  loc_6A3AAE: FStStrNoPop var_1DC
  loc_6A3AB1: ImpAdLdI4 MemVar_74BEE4
  loc_6A3AB4: ConcatStr
  loc_6A3AB5: FStStrNoPop var_1E0
  loc_6A3AB8: LitStr " "
  loc_6A3ABB: ConcatStr
  loc_6A3ABC: FStStrNoPop var_334
  loc_6A3ABF: FLdRfVar var_330
  loc_6A3AC2: LitVar_Missing var_32C
  loc_6A3AC5: LitVar_Missing var_30C
  loc_6A3AC8: LitVar_Missing var_2EC
  loc_6A3ACB: LitVar_Missing var_2CC
  loc_6A3ACE: LitVar_Missing var_2AC
  loc_6A3AD1: LitVar_Missing var_28C
  loc_6A3AD4: LitVar_Missing var_26C
  loc_6A3AD7: LitVar_Missing var_24C
  loc_6A3ADA: LitVar_Missing var_22C
  loc_6A3ADD: LitVar_Missing var_20C
  loc_6A3AE0: LitStr "al Grupo"
  loc_6A3AE3: FStStrCopy var_1EC
  loc_6A3AE6: FLdRfVar var_1EC
  loc_6A3AE9: LitI4 5
  loc_6A3AEE: PopTmpLdAdStr var_1E8
  loc_6A3AF1: LitI2_Byte &H19
  loc_6A3AF3: PopTmpLdAd2 var_1E2
  loc_6A3AF6: ImpAdLdRf MemVar_74C7D0
  loc_6A3AF9: NewIfNullPr clsMsg
  loc_6A3AFC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3B01: ILdRf var_330
  loc_6A3B04: ConcatStr
  loc_6A3B05: FStStrNoPop var_338
  loc_6A3B08: FLdPrThis
  loc_6A3B09: VCallAd Control_ID_cmdAgregarSurtidor
  loc_6A3B0C: FStAdFunc var_88
  loc_6A3B0F: FLdPr var_88
  loc_6A3B12: Me.ToolTipText = from_stack_1
  loc_6A3B17: FFreeStr var_94 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1EC = "": var_334 = "": var_330 = ""
  loc_6A3B2A: FFree1Ad var_88
  loc_6A3B2D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = ""
  loc_6A3B58: FLdRfVar var_1D8
  loc_6A3B5B: LitVar_Missing var_1D4
  loc_6A3B5E: LitVar_Missing var_1B4
  loc_6A3B61: LitVar_Missing var_194
  loc_6A3B64: LitVar_Missing var_174
  loc_6A3B67: LitVar_Missing var_154
  loc_6A3B6A: LitVar_Missing var_134
  loc_6A3B6D: LitVar_Missing var_114
  loc_6A3B70: LitVar_Missing var_F4
  loc_6A3B73: LitVar_Missing var_D4
  loc_6A3B76: LitVar_Missing var_B4
  loc_6A3B79: LitStr "Quita"
  loc_6A3B7C: FStStrCopy var_94
  loc_6A3B7F: FLdRfVar var_94
  loc_6A3B82: LitI4 6
  loc_6A3B87: PopTmpLdAdStr var_90
  loc_6A3B8A: LitI2_Byte &H19
  loc_6A3B8C: PopTmpLdAd2 var_8A
  loc_6A3B8F: ImpAdLdRf MemVar_74C7D0
  loc_6A3B92: NewIfNullPr clsMsg
  loc_6A3B95: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3B9A: ILdRf var_1D8
  loc_6A3B9D: LitStr " "
  loc_6A3BA0: ConcatStr
  loc_6A3BA1: FStStrNoPop var_1DC
  loc_6A3BA4: ImpAdLdI4 MemVar_74BEE4
  loc_6A3BA7: ConcatStr
  loc_6A3BA8: FStStrNoPop var_1E0
  loc_6A3BAB: LitStr " "
  loc_6A3BAE: ConcatStr
  loc_6A3BAF: FStStrNoPop var_334
  loc_6A3BB2: FLdRfVar var_330
  loc_6A3BB5: LitVar_Missing var_32C
  loc_6A3BB8: LitVar_Missing var_30C
  loc_6A3BBB: LitVar_Missing var_2EC
  loc_6A3BBE: LitVar_Missing var_2CC
  loc_6A3BC1: LitVar_Missing var_2AC
  loc_6A3BC4: LitVar_Missing var_28C
  loc_6A3BC7: LitVar_Missing var_26C
  loc_6A3BCA: LitVar_Missing var_24C
  loc_6A3BCD: LitVar_Missing var_22C
  loc_6A3BD0: LitVar_Missing var_20C
  loc_6A3BD3: LitStr "del Grupo"
  loc_6A3BD6: FStStrCopy var_1EC
  loc_6A3BD9: FLdRfVar var_1EC
  loc_6A3BDC: LitI4 7
  loc_6A3BE1: PopTmpLdAdStr var_1E8
  loc_6A3BE4: LitI2_Byte &H19
  loc_6A3BE6: PopTmpLdAd2 var_1E2
  loc_6A3BE9: ImpAdLdRf MemVar_74C7D0
  loc_6A3BEC: NewIfNullPr clsMsg
  loc_6A3BEF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3BF4: ILdRf var_330
  loc_6A3BF7: ConcatStr
  loc_6A3BF8: FStStrNoPop var_338
  loc_6A3BFB: FLdPrThis
  loc_6A3BFC: VCallAd Control_ID_cmdBorrarSurtidor
  loc_6A3BFF: FStAdFunc var_88
  loc_6A3C02: FLdPr var_88
  loc_6A3C05: Me.ToolTipText = from_stack_1
  loc_6A3C0A: FFreeStr var_94 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1EC = "": var_334 = "": var_330 = ""
  loc_6A3C1D: FFree1Ad var_88
  loc_6A3C20: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = ""
  loc_6A3C4B: FLdRfVar var_1D8
  loc_6A3C4E: LitVar_Missing var_1D4
  loc_6A3C51: LitVar_Missing var_1B4
  loc_6A3C54: LitVar_Missing var_194
  loc_6A3C57: LitVar_Missing var_174
  loc_6A3C5A: LitVar_Missing var_154
  loc_6A3C5D: LitVar_Missing var_134
  loc_6A3C60: LitVar_Missing var_114
  loc_6A3C63: LitVar_Missing var_F4
  loc_6A3C66: LitVar_Missing var_D4
  loc_6A3C69: LitVar_Missing var_B4
  loc_6A3C6C: LitStr "Grupos"
  loc_6A3C6F: FStStrCopy var_94
  loc_6A3C72: FLdRfVar var_94
  loc_6A3C75: LitI4 8
  loc_6A3C7A: PopTmpLdAdStr var_90
  loc_6A3C7D: LitI2_Byte &H19
  loc_6A3C7F: PopTmpLdAd2 var_8A
  loc_6A3C82: ImpAdLdRf MemVar_74C7D0
  loc_6A3C85: NewIfNullPr clsMsg
  loc_6A3C88: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3C8D: ILdRf var_1D8
  loc_6A3C90: FLdPrThis
  loc_6A3C91: VCallAd Control_ID_Label1
  loc_6A3C94: FStAdFunc var_88
  loc_6A3C97: FLdPr var_88
  loc_6A3C9A: Me.Caption = from_stack_1
  loc_6A3C9F: FFreeStr var_94 = ""
  loc_6A3CA6: FFree1Ad var_88
  loc_6A3CA9: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3CC0: FLdRfVar var_1D8
  loc_6A3CC3: LitVar_Missing var_1D4
  loc_6A3CC6: LitVar_Missing var_1B4
  loc_6A3CC9: LitVar_Missing var_194
  loc_6A3CCC: LitVar_Missing var_174
  loc_6A3CCF: LitVar_Missing var_154
  loc_6A3CD2: LitVar_Missing var_134
  loc_6A3CD5: LitVar_Missing var_114
  loc_6A3CD8: LitVar_Missing var_F4
  loc_6A3CDB: LitVar_Missing var_D4
  loc_6A3CDE: LitVar_Missing var_B4
  loc_6A3CE1: LitStr "A&gregar"
  loc_6A3CE4: FStStrCopy var_94
  loc_6A3CE7: FLdRfVar var_94
  loc_6A3CEA: LitI4 9
  loc_6A3CEF: PopTmpLdAdStr var_90
  loc_6A3CF2: LitI2_Byte &H19
  loc_6A3CF4: PopTmpLdAd2 var_8A
  loc_6A3CF7: ImpAdLdRf MemVar_74C7D0
  loc_6A3CFA: NewIfNullPr clsMsg
  loc_6A3CFD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3D02: ILdRf var_1D8
  loc_6A3D05: FLdPrThis
  loc_6A3D06: VCallAd Control_ID_cmdAgregarGrupo
  loc_6A3D09: FStAdFunc var_88
  loc_6A3D0C: FLdPr var_88
  loc_6A3D0F: Me.Caption = from_stack_1
  loc_6A3D14: FFreeStr var_94 = ""
  loc_6A3D1B: FFree1Ad var_88
  loc_6A3D1E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3D35: FLdRfVar var_1D8
  loc_6A3D38: LitVar_Missing var_1D4
  loc_6A3D3B: LitVar_Missing var_1B4
  loc_6A3D3E: LitVar_Missing var_194
  loc_6A3D41: LitVar_Missing var_174
  loc_6A3D44: LitVar_Missing var_154
  loc_6A3D47: LitVar_Missing var_134
  loc_6A3D4A: LitVar_Missing var_114
  loc_6A3D4D: LitVar_Missing var_F4
  loc_6A3D50: LitVar_Missing var_D4
  loc_6A3D53: LitVar_Missing var_B4
  loc_6A3D56: LitStr "&Borrar"
  loc_6A3D59: FStStrCopy var_94
  loc_6A3D5C: FLdRfVar var_94
  loc_6A3D5F: LitI4 &HA
  loc_6A3D64: PopTmpLdAdStr var_90
  loc_6A3D67: LitI2_Byte &H19
  loc_6A3D69: PopTmpLdAd2 var_8A
  loc_6A3D6C: ImpAdLdRf MemVar_74C7D0
  loc_6A3D6F: NewIfNullPr clsMsg
  loc_6A3D72: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3D77: ILdRf var_1D8
  loc_6A3D7A: FLdPrThis
  loc_6A3D7B: VCallAd Control_ID_cmdBorrarGrupo
  loc_6A3D7E: FStAdFunc var_88
  loc_6A3D81: FLdPr var_88
  loc_6A3D84: Me.Caption = from_stack_1
  loc_6A3D89: FFreeStr var_94 = ""
  loc_6A3D90: FFree1Ad var_88
  loc_6A3D93: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3DAA: FLdRfVar var_1D8
  loc_6A3DAD: LitVar_Missing var_1D4
  loc_6A3DB0: LitVar_Missing var_1B4
  loc_6A3DB3: LitVar_Missing var_194
  loc_6A3DB6: LitVar_Missing var_174
  loc_6A3DB9: LitVar_Missing var_154
  loc_6A3DBC: LitVar_Missing var_134
  loc_6A3DBF: LitVar_Missing var_114
  loc_6A3DC2: LitVar_Missing var_F4
  loc_6A3DC5: LitVar_Missing var_D4
  loc_6A3DC8: LitVar_Missing var_B4
  loc_6A3DCB: LitStr "&Aceptar"
  loc_6A3DCE: FStStrCopy var_94
  loc_6A3DD1: FLdRfVar var_94
  loc_6A3DD4: LitI4 &HB
  loc_6A3DD9: PopTmpLdAdStr var_90
  loc_6A3DDC: LitI2_Byte &H19
  loc_6A3DDE: PopTmpLdAd2 var_8A
  loc_6A3DE1: ImpAdLdRf MemVar_74C7D0
  loc_6A3DE4: NewIfNullPr clsMsg
  loc_6A3DE7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3DEC: ILdRf var_1D8
  loc_6A3DEF: FLdPrThis
  loc_6A3DF0: VCallAd Control_ID_cmdAceptar
  loc_6A3DF3: FStAdFunc var_88
  loc_6A3DF6: FLdPr var_88
  loc_6A3DF9: Me.Caption = from_stack_1
  loc_6A3DFE: FFreeStr var_94 = ""
  loc_6A3E05: FFree1Ad var_88
  loc_6A3E08: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3E1F: FLdRfVar var_1D8
  loc_6A3E22: LitVar_Missing var_1D4
  loc_6A3E25: LitVar_Missing var_1B4
  loc_6A3E28: LitVar_Missing var_194
  loc_6A3E2B: LitVar_Missing var_174
  loc_6A3E2E: LitVar_Missing var_154
  loc_6A3E31: LitVar_Missing var_134
  loc_6A3E34: LitVar_Missing var_114
  loc_6A3E37: LitVar_Missing var_F4
  loc_6A3E3A: LitVar_Missing var_D4
  loc_6A3E3D: LitVar_Missing var_B4
  loc_6A3E40: LitStr "&Cancelar"
  loc_6A3E43: FStStrCopy var_94
  loc_6A3E46: FLdRfVar var_94
  loc_6A3E49: LitI4 &HC
  loc_6A3E4E: PopTmpLdAdStr var_90
  loc_6A3E51: LitI2_Byte &H19
  loc_6A3E53: PopTmpLdAd2 var_8A
  loc_6A3E56: ImpAdLdRf MemVar_74C7D0
  loc_6A3E59: NewIfNullPr clsMsg
  loc_6A3E5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3E61: ILdRf var_1D8
  loc_6A3E64: FLdPrThis
  loc_6A3E65: VCallAd Control_ID_cmdCancelar
  loc_6A3E68: FStAdFunc var_88
  loc_6A3E6B: FLdPr var_88
  loc_6A3E6E: Me.Caption = from_stack_1
  loc_6A3E73: FFreeStr var_94 = ""
  loc_6A3E7A: FFree1Ad var_88
  loc_6A3E7D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3E94: FLdRfVar var_1D8
  loc_6A3E97: LitVar_Missing var_1D4
  loc_6A3E9A: LitVar_Missing var_1B4
  loc_6A3E9D: LitVar_Missing var_194
  loc_6A3EA0: LitVar_Missing var_174
  loc_6A3EA3: LitVar_Missing var_154
  loc_6A3EA6: LitVar_Missing var_134
  loc_6A3EA9: LitVar_Missing var_114
  loc_6A3EAC: LitVar_Missing var_F4
  loc_6A3EAF: LitVar_Missing var_D4
  loc_6A3EB2: LitVar_Missing var_B4
  loc_6A3EB5: LitStr "Ac&epta Grupo"
  loc_6A3EB8: FStStrCopy var_94
  loc_6A3EBB: FLdRfVar var_94
  loc_6A3EBE: LitI4 &HD
  loc_6A3EC3: PopTmpLdAdStr var_90
  loc_6A3EC6: LitI2_Byte &H19
  loc_6A3EC8: PopTmpLdAd2 var_8A
  loc_6A3ECB: ImpAdLdRf MemVar_74C7D0
  loc_6A3ECE: NewIfNullPr clsMsg
  loc_6A3ED1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3ED6: ILdRf var_1D8
  loc_6A3ED9: FLdPrThis
  loc_6A3EDA: VCallAd Control_ID_cmdAceptaGrupo
  loc_6A3EDD: FStAdFunc var_88
  loc_6A3EE0: FLdPr var_88
  loc_6A3EE3: Me.Caption = from_stack_1
  loc_6A3EE8: FFreeStr var_94 = ""
  loc_6A3EEF: FFree1Ad var_88
  loc_6A3EF2: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3F09: FLdRfVar var_1D8
  loc_6A3F0C: LitVar_Missing var_1D4
  loc_6A3F0F: LitVar_Missing var_1B4
  loc_6A3F12: LitVar_Missing var_194
  loc_6A3F15: LitVar_Missing var_174
  loc_6A3F18: LitVar_Missing var_154
  loc_6A3F1B: LitVar_Missing var_134
  loc_6A3F1E: LitVar_Missing var_114
  loc_6A3F21: LitVar_Missing var_F4
  loc_6A3F24: LitVar_Missing var_D4
  loc_6A3F27: LitVar_Missing var_B4
  loc_6A3F2A: LitStr "Ca&ncela Grupo"
  loc_6A3F2D: FStStrCopy var_94
  loc_6A3F30: FLdRfVar var_94
  loc_6A3F33: LitI4 &HE
  loc_6A3F38: PopTmpLdAdStr var_90
  loc_6A3F3B: LitI2_Byte &H19
  loc_6A3F3D: PopTmpLdAd2 var_8A
  loc_6A3F40: ImpAdLdRf MemVar_74C7D0
  loc_6A3F43: NewIfNullPr clsMsg
  loc_6A3F46: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3F4B: ILdRf var_1D8
  loc_6A3F4E: FLdPrThis
  loc_6A3F4F: VCallAd Control_ID_cmdCancelaGrupo
  loc_6A3F52: FStAdFunc var_88
  loc_6A3F55: FLdPr var_88
  loc_6A3F58: Me.Caption = from_stack_1
  loc_6A3F5D: FFreeStr var_94 = ""
  loc_6A3F64: FFree1Ad var_88
  loc_6A3F67: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A3F7E: ExitProcHresult
End Sub

Private Sub Form_Activate() '6416B0
  'Data Table: 434F68
  loc_64145C: FLdRfVar var_92
  loc_64145F: FLdRfVar var_8C
  loc_641462: FLdRfVar var_90
  loc_641465: ImpAdLdRf MemVar_74C760
  loc_641468: NewIfNullPr Formx
  loc_64146B: from_stack_1v = Formx.global_4589716Get()
  loc_641470: FLdPr var_90
  loc_641473: Call 0.Method_arg_29C ()
  loc_641478: FLdI2 var_92
  loc_64147B: NotI4
  loc_64147C: FFree1Ad var_90
  loc_64147F: BranchF loc_6414AE
  loc_641482: FLdRfVar var_A4
  loc_641485: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64148A: FLdRfVar var_A4
  loc_64148D: CBoolVarNull
  loc_64148F: FFree1Var var_A4 = ""
  loc_641492: BranchF loc_6414AB
  loc_641495: ILdRf Me
  loc_641498: FStAdNoPop
  loc_64149C: ImpAdLdRf MemVar_7520D4
  loc_64149F: NewIfNullPr Global
  loc_6414A2: Global.Unload from_stack_1
  loc_6414A7: FFree1Ad var_90
  loc_6414AA: ExitProcHresult
  loc_6414AB: Branch loc_64145C
  loc_6414AE: ILdRf var_8C
  loc_6414B1: FnLenStr
  loc_6414B2: LitI4 &H34
  loc_6414B7: LtI4
  loc_6414B8: BranchF loc_64158E
  loc_6414BB: LitI4 1
  loc_6414C0: LitI4 1
  loc_6414C5: FLdPr Me
  loc_6414C8: MemLdRfVar from_stack_1.global_52
  loc_6414CB: Redim
  loc_6414D5: LitStr vbNullString
  loc_6414D8: LitI4 1
  loc_6414DD: FLdPr Me
  loc_6414E0: MemLdStr global_52
  loc_6414E3: Ary1LdPr
  loc_6414E4: MemLdRfVar from_stack_1.global_64
  loc_6414E7: StFixedStr
  loc_6414EA: LitStr vbNullString
  loc_6414ED: LitI4 1
  loc_6414F2: FLdPr Me
  loc_6414F5: MemLdStr global_52
  loc_6414F8: Ary1LdPr
  loc_6414F9: MemLdRfVar from_stack_1.global_0
  loc_6414FC: StFixedStr
  loc_6414FF: LitI2_Byte 0
  loc_641501: FLdPrThis
  loc_641502: VCallAd Control_ID_fraSeleccion
  loc_641505: FStAdFunc var_90
  loc_641508: FLdPr var_90
  loc_64150B: Me.Enabled = from_stack_1b
  loc_641510: FFree1Ad var_90
  loc_641513: LitI2_Byte 0
  loc_641515: FLdPrThis
  loc_641516: VCallAd Control_ID_lstGrupo
  loc_641519: FStAdFunc var_90
  loc_64151C: FLdPr var_90
  loc_64151F: Me.Enabled = from_stack_1b
  loc_641524: FFree1Ad var_90
  loc_641527: LitI2_Byte 0
  loc_641529: FLdPrThis
  loc_64152A: VCallAd Control_ID_cmdAceptar
  loc_64152D: FStAdFunc var_90
  loc_641530: FLdPr var_90
  loc_641533: Me.Enabled = from_stack_1b
  loc_641538: FFree1Ad var_90
  loc_64153B: LitI2_Byte 0
  loc_64153D: FLdPrThis
  loc_64153E: VCallAd Control_ID_cmdAgregarGrupo
  loc_641541: FStAdFunc var_90
  loc_641544: FLdPr var_90
  loc_641547: Me.Enabled = from_stack_1b
  loc_64154C: FFree1Ad var_90
  loc_64154F: LitI2_Byte 0
  loc_641551: FLdPrThis
  loc_641552: VCallAd Control_ID_cmdBorrarGrupo
  loc_641555: FStAdFunc var_90
  loc_641558: FLdPr var_90
  loc_64155B: Me.Enabled = from_stack_1b
  loc_641560: FFree1Ad var_90
  loc_641563: LitI2_Byte &HFF
  loc_641565: FLdPrThis
  loc_641566: VCallAd Control_ID_txtGrupo
  loc_641569: FStAdFunc var_90
  loc_64156C: FLdPr var_90
  loc_64156F: Me.Visible = from_stack_1b
  loc_641574: FFree1Ad var_90
  loc_641577: LitI2_Byte &HFF
  loc_641579: FLdPrThis
  loc_64157A: VCallAd Control_ID_cmdAceptaGrupo
  loc_64157D: FStAdFunc var_90
  loc_641580: FLdPr var_90
  loc_641583: Me.Visible = from_stack_1b
  loc_641588: FFree1Ad var_90
  loc_64158B: Branch loc_6416AE
  loc_64158E: LitI4 1
  loc_641593: ILdRf var_8C
  loc_641596: FnLenStr
  loc_641597: CR8I4
  loc_641598: LitI2_Byte &H34
  loc_64159A: CR8I2
  loc_64159B: DivR8
  loc_64159C: CI4R8
  loc_64159D: FLdPr Me
  loc_6415A0: MemLdRfVar from_stack_1.global_52
  loc_6415A3: Redim
  loc_6415AD: FLdPrThis
  loc_6415AE: VCallAd Control_ID_lstGrupo
  loc_6415B1: FStAdFunc var_90
  loc_6415B4: FLdPr var_90
  loc_6415B7: Me.Clear
  loc_6415BC: FFree1Ad var_90
  loc_6415BF: LitI2_Byte 1
  loc_6415C1: FStI2 var_86
  loc_6415C4: FLdI2 var_86
  loc_6415C7: CI4UI1
  loc_6415C8: ILdRf var_8C
  loc_6415CB: FnLenStr
  loc_6415CC: LtI4
  loc_6415CD: BranchF loc_64169A
  loc_6415D0: LitVarI2 var_A4, 20
  loc_6415D5: FLdI2 var_86
  loc_6415D8: CI4UI1
  loc_6415D9: ILdRf var_8C
  loc_6415DC: ImpAdCallI2 Mid$(, , )
  loc_6415E1: FStStrNoPop var_B8
  loc_6415E4: FLdI2 var_86
  loc_6415E7: CR8I2
  loc_6415E8: LitI2_Byte &H34
  loc_6415EA: CR8I2
  loc_6415EB: DivR8
  loc_6415EC: LitI2_Byte 1
  loc_6415EE: CR8I2
  loc_6415EF: AddR8
  loc_6415F0: CI4R8
  loc_6415F1: FLdPr Me
  loc_6415F4: MemLdStr global_52
  loc_6415F7: Ary1LdPr
  loc_6415F8: MemLdRfVar from_stack_1.global_64
  loc_6415FB: StFixedStr
  loc_6415FE: FFree1Str var_B8
  loc_641601: FFree1Var var_A4 = ""
  loc_641604: LitVarI2 var_A4, 32
  loc_641609: FLdI2 var_86
  loc_64160C: LitI2_Byte &H14
  loc_64160E: AddI2
  loc_64160F: CI4UI1
  loc_641610: ILdRf var_8C
  loc_641613: ImpAdCallI2 Mid$(, , )
  loc_641618: FStStrNoPop var_B8
  loc_64161B: FLdI2 var_86
  loc_64161E: CR8I2
  loc_64161F: LitI2_Byte &H34
  loc_641621: CR8I2
  loc_641622: DivR8
  loc_641623: LitI2_Byte 1
  loc_641625: CR8I2
  loc_641626: AddR8
  loc_641627: CI4R8
  loc_641628: FLdPr Me
  loc_64162B: MemLdStr global_52
  loc_64162E: Ary1LdPr
  loc_64162F: MemLdRfVar from_stack_1.global_0
  loc_641632: StFixedStr
  loc_641635: FFree1Str var_B8
  loc_641638: FFree1Var var_A4 = ""
  loc_64163B: LitVar_Missing var_B4
  loc_64163E: PopAdLdVar
  loc_64163F: FLdI2 var_86
  loc_641642: CR8I2
  loc_641643: LitI2_Byte &H34
  loc_641645: CR8I2
  loc_641646: DivR8
  loc_641647: LitI2_Byte 1
  loc_641649: CR8I2
  loc_64164A: AddR8
  loc_64164B: CI4R8
  loc_64164C: FLdPr Me
  loc_64164F: MemLdStr global_52
  loc_641652: Ary1LdPr
  loc_641653: MemLdRfVar from_stack_1.global_64
  loc_641656: LdFixedStr
  loc_641659: FStStrNoPop var_B8
  loc_64165C: FLdPrThis
  loc_64165D: VCallAd Control_ID_lstGrupo
  loc_641660: FStAdFunc var_90
  loc_641663: FLdPr var_90
  loc_641666: Me.AddItem from_stack_1, from_stack_2
  loc_64166B: ILdRf var_B8
  loc_64166E: FLdI2 var_86
  loc_641671: CR8I2
  loc_641672: LitI2_Byte &H34
  loc_641674: CR8I2
  loc_641675: DivR8
  loc_641676: LitI2_Byte 1
  loc_641678: CR8I2
  loc_641679: AddR8
  loc_64167A: CI4R8
  loc_64167B: FLdPr Me
  loc_64167E: MemLdStr global_52
  loc_641681: Ary1LdPr
  loc_641682: MemLdRfVar from_stack_1.global_64
  loc_641685: StFixedStr
  loc_641688: FFree1Str var_B8
  loc_64168B: FFree1Ad var_90
  loc_64168E: FLdI2 var_86
  loc_641691: LitI2_Byte &H34
  loc_641693: AddI2
  loc_641694: FStI2 var_86
  loc_641697: Branch loc_6415C4
  loc_64169A: LitI2_Byte 0
  loc_64169C: FLdPrThis
  loc_64169D: VCallAd Control_ID_lstGrupo
  loc_6416A0: FStAdFunc var_90
  loc_6416A3: FLdPr var_90
  loc_6416A6: Me.ListIndex = from_stack_1
  loc_6416AB: FFree1Ad var_90
  loc_6416AE: ExitProcHresult
End Sub

Private Function Proc_33_11_5DFF88(arg_C, arg_10) '5DFF88
  'Data Table: 434F68
  loc_5DFF2C: LitI2_Byte 1
  loc_5DFF2E: FLdRfVar var_86
  loc_5DFF31: FLdPr Me
  loc_5DFF34: MemLdStr global_52
  loc_5DFF37: LitI2_Byte 1
  loc_5DFF39: FnUBound
  loc_5DFF3B: CI2I4
  loc_5DFF3C: ForI2 var_8A
  loc_5DFF42: FLdI2 var_86
  loc_5DFF45: CI4UI1
  loc_5DFF46: FLdPr Me
  loc_5DFF49: MemLdStr global_52
  loc_5DFF4C: Ary1LdPr
  loc_5DFF4D: MemLdRfVar from_stack_1.global_0
  loc_5DFF50: FLdI2 arg_10
  loc_5DFF53: CI4UI1
  loc_5DFF54: LitI4 1
  loc_5DFF59: LitStr "0"
  loc_5DFF5C: MidStr arg_20
  loc_5DFF5F: FLdRfVar var_86
  loc_5DFF62: NextI2 var_8A, loc_5DFF42
  loc_5DFF67: FLdI2 arg_C
  loc_5DFF6A: CI4UI1
  loc_5DFF6B: FLdPr Me
  loc_5DFF6E: MemLdStr global_52
  loc_5DFF71: Ary1LdPr
  loc_5DFF72: MemLdRfVar from_stack_1.global_0
  loc_5DFF75: FLdI2 arg_10
  loc_5DFF78: CI4UI1
  loc_5DFF79: LitI4 1
  loc_5DFF7E: LitStr "1"
  loc_5DFF81: MidStr arg_20
  loc_5DFF84: ExitProcHresult
End Function

Private Function Proc_33_12_5D3A14(arg_C, arg_10) '5D3A14
  'Data Table: 434F68
  loc_5D39F4: FLdI2 arg_C
  loc_5D39F7: CI4UI1
  loc_5D39F8: FLdPr Me
  loc_5D39FB: MemLdStr global_52
  loc_5D39FE: Ary1LdPr
  loc_5D39FF: MemLdRfVar from_stack_1.global_0
  loc_5D3A02: FLdI2 arg_10
  loc_5D3A05: CI4UI1
  loc_5D3A06: LitI4 1
  loc_5D3A0B: LitStr "0"
  loc_5D3A0E: MidStr arg_20
  loc_5D3A11: ExitProcHresult
End Function

Private Function Proc_33_13_638890(arg_C) '638890
  'Data Table: 434F68
  loc_638688: FLdPrThis
  loc_638689: VCallAd Control_ID_lstMiembros
  loc_63868C: FStAdFunc var_8C
  loc_63868F: FLdPr var_8C
  loc_638692: Me.Clear
  loc_638697: FFree1Ad var_8C
  loc_63869A: FLdPrThis
  loc_63869B: VCallAd Control_ID_lstSurtidores
  loc_63869E: FStAdFunc var_8C
  loc_6386A1: FLdPr var_8C
  loc_6386A4: Me.Clear
  loc_6386A9: FFree1Ad var_8C
  loc_6386AC: FLdPr Me
  loc_6386AF: MemLdStr global_52
  loc_6386B2: LitI2_Byte 1
  loc_6386B4: FnUBound
  loc_6386B6: LitI4 1
  loc_6386BB: EqI4
  loc_6386BC: LitI4 1
  loc_6386C1: FLdPr Me
  loc_6386C4: MemLdStr global_52
  loc_6386C7: Ary1LdPr
  loc_6386C8: MemLdRfVar from_stack_1.global_64
  loc_6386CB: LdFixedStr
  loc_6386CE: FStStrNoPop var_90
  loc_6386D1: ImpAdCallI2 Trim$()
  loc_6386D6: FStStr var_94
  loc_6386D9: ILdRf var_90
  loc_6386DC: LitI4 1
  loc_6386E1: FLdPr Me
  loc_6386E4: MemLdStr global_52
  loc_6386E7: Ary1LdPr
  loc_6386E8: MemLdRfVar from_stack_1.global_64
  loc_6386EB: StFixedStr
  loc_6386EE: ILdRf var_94
  loc_6386F1: LitStr vbNullString
  loc_6386F4: EqStr
  loc_6386F6: AndI4
  loc_6386F7: LitI4 1
  loc_6386FC: FLdPr Me
  loc_6386FF: MemLdStr global_52
  loc_638702: Ary1LdPr
  loc_638703: MemLdRfVar from_stack_1.global_0
  loc_638706: LdFixedStr
  loc_638709: FStStrNoPop var_98
  loc_63870C: ImpAdCallI2 Trim$()
  loc_638711: FStStr var_9C
  loc_638714: ILdRf var_98
  loc_638717: LitI4 1
  loc_63871C: FLdPr Me
  loc_63871F: MemLdStr global_52
  loc_638722: Ary1LdPr
  loc_638723: MemLdRfVar from_stack_1.global_0
  loc_638726: StFixedStr
  loc_638729: ILdRf var_9C
  loc_63872C: LitStr vbNullString
  loc_63872F: EqStr
  loc_638731: AndI4
  loc_638732: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_63873D: BranchF loc_638755
  loc_638740: LitI2_Byte 0
  loc_638742: FLdPrThis
  loc_638743: VCallAd Control_ID_fraSeleccion
  loc_638746: FStAdFunc var_8C
  loc_638749: FLdPr var_8C
  loc_63874C: Me.Enabled = from_stack_1b
  loc_638751: FFree1Ad var_8C
  loc_638754: ExitProcHresult
  loc_638755: LitI2_Byte 1
  loc_638757: FLdRfVar var_86
  loc_63875A: ImpAdLdUI1
  loc_63875E: CI2UI1
  loc_638760: ForI2 var_A0
  loc_638766: LitVarI2 var_C0, 1
  loc_63876B: FLdI2 var_86
  loc_63876E: CI4UI1
  loc_63876F: FLdI2 arg_C
  loc_638772: CI4UI1
  loc_638773: FLdPr Me
  loc_638776: MemLdStr global_52
  loc_638779: Ary1LdPr
  loc_63877A: MemLdRfVar from_stack_1.global_0
  loc_63877D: LdFixedStr
  loc_638780: FStStrNoPop var_90
  loc_638783: ImpAdCallI2 Mid$(, , )
  loc_638788: FStStr var_94
  loc_63878B: ILdRf var_90
  loc_63878E: FLdI2 arg_C
  loc_638791: CI4UI1
  loc_638792: FLdPr Me
  loc_638795: MemLdStr global_52
  loc_638798: Ary1LdPr
  loc_638799: MemLdRfVar from_stack_1.global_0
  loc_63879C: StFixedStr
  loc_63879F: ILdRf var_94
  loc_6387A2: LitStr "0"
  loc_6387A5: EqStr
  loc_6387A7: FFreeStr var_90 = ""
  loc_6387AE: FFree1Var var_C0 = ""
  loc_6387B1: BranchF loc_63881E
  loc_6387B4: LitVar_Missing var_B0
  loc_6387B7: PopAdLdVar
  loc_6387B8: ImpAdLdI4 MemVar_74BED4
  loc_6387BB: LitStr " "
  loc_6387BE: ConcatStr
  loc_6387BF: FStStrNoPop var_90
  loc_6387C2: FLdI2 var_86
  loc_6387C5: CStrUI1
  loc_6387C7: FStStrNoPop var_94
  loc_6387CA: ConcatStr
  loc_6387CB: FStStrNoPop var_98
  loc_6387CE: FLdPrThis
  loc_6387CF: VCallAd Control_ID_lstSurtidores
  loc_6387D2: FStAdFunc var_8C
  loc_6387D5: FLdPr var_8C
  loc_6387D8: Me.AddItem from_stack_1, from_stack_2
  loc_6387DD: FFreeStr var_90 = "": var_94 = ""
  loc_6387E6: FFree1Ad var_8C
  loc_6387E9: FLdI2 var_86
  loc_6387EC: CI4UI1
  loc_6387ED: FLdRfVar var_C2
  loc_6387F0: FLdPrThis
  loc_6387F1: VCallAd Control_ID_lstSurtidores
  loc_6387F4: FStAdFunc var_8C
  loc_6387F7: FLdPr var_8C
  loc_6387FA:  = Me.ListCount
  loc_6387FF: FLdI2 var_C2
  loc_638802: LitI2_Byte 1
  loc_638804: SubI2
  loc_638805: FLdPrThis
  loc_638806: VCallAd Control_ID_lstSurtidores
  loc_638809: FStAdFunc var_C8
  loc_63880C: FLdPr var_C8
  loc_63880F: Me.ItemData = from_stack_1
  loc_638814: FFreeAd var_8C = ""
  loc_63881B: Branch loc_638885
  loc_63881E: LitVar_Missing var_B0
  loc_638821: PopAdLdVar
  loc_638822: ImpAdLdI4 MemVar_74BED4
  loc_638825: LitStr " "
  loc_638828: ConcatStr
  loc_638829: FStStrNoPop var_90
  loc_63882C: FLdI2 var_86
  loc_63882F: CStrUI1
  loc_638831: FStStrNoPop var_94
  loc_638834: ConcatStr
  loc_638835: FStStrNoPop var_98
  loc_638838: FLdPrThis
  loc_638839: VCallAd Control_ID_lstMiembros
  loc_63883C: FStAdFunc var_8C
  loc_63883F: FLdPr var_8C
  loc_638842: Me.AddItem from_stack_1, from_stack_2
  loc_638847: FFreeStr var_90 = "": var_94 = ""
  loc_638850: FFree1Ad var_8C
  loc_638853: FLdI2 var_86
  loc_638856: CI4UI1
  loc_638857: FLdRfVar var_C2
  loc_63885A: FLdPrThis
  loc_63885B: VCallAd Control_ID_lstMiembros
  loc_63885E: FStAdFunc var_8C
  loc_638861: FLdPr var_8C
  loc_638864:  = Me.ListCount
  loc_638869: FLdI2 var_C2
  loc_63886C: LitI2_Byte 1
  loc_63886E: SubI2
  loc_63886F: FLdPrThis
  loc_638870: VCallAd Control_ID_lstMiembros
  loc_638873: FStAdFunc var_C8
  loc_638876: FLdPr var_C8
  loc_638879: Me.ItemData = from_stack_1
  loc_63887E: FFreeAd var_8C = ""
  loc_638885: FLdRfVar var_86
  loc_638888: NextI2 var_A0, loc_638766
  loc_63888D: ExitProcHresult
End Function

Private Function Proc_33_14_5F10DC(arg_C) '5F10DC
  'Data Table: 434F68
  loc_5F1034: FLdPr Me
  loc_5F1037: MemLdStr global_52
  loc_5F103A: LitI2_Byte 1
  loc_5F103C: FnUBound
  loc_5F103E: LitI4 1
  loc_5F1043: EqI4
  loc_5F1044: BranchF loc_5F1074
  loc_5F1047: LitStr vbNullString
  loc_5F104A: LitI4 1
  loc_5F104F: FLdPr Me
  loc_5F1052: MemLdStr global_52
  loc_5F1055: Ary1LdPr
  loc_5F1056: MemLdRfVar from_stack_1.global_64
  loc_5F1059: StFixedStr
  loc_5F105C: LitStr vbNullString
  loc_5F105F: LitI4 1
  loc_5F1064: FLdPr Me
  loc_5F1067: MemLdStr global_52
  loc_5F106A: Ary1LdPr
  loc_5F106B: MemLdRfVar from_stack_1.global_0
  loc_5F106E: StFixedStr
  loc_5F1071: Branch loc_5F10DA
  loc_5F1074: FLdI2 arg_C
  loc_5F1077: FLdRfVar var_86
  loc_5F107A: FLdPr Me
  loc_5F107D: MemLdStr global_52
  loc_5F1080: LitI2_Byte 1
  loc_5F1082: FnUBound
  loc_5F1084: LitI4 1
  loc_5F1089: SubI4
  loc_5F108A: CI2I4
  loc_5F108B: ForI2 var_8A
  loc_5F1091: FLdI2 var_86
  loc_5F1094: LitI2_Byte 1
  loc_5F1096: AddI2
  loc_5F1097: CI4UI1
  loc_5F1098: FLdPr Me
  loc_5F109B: MemLdStr global_52
  loc_5F109E: Ary1LdRf
  loc_5F109F: FLdI2 var_86
  loc_5F10A2: CI4UI1
  loc_5F10A3: FLdPr Me
  loc_5F10A6: MemLdStr global_52
  loc_5F10A9: Ary1LdRf
  loc_5F10AA: CopyBytes
  loc_5F10AD: FLdRfVar var_86
  loc_5F10B0: NextI2 var_8A, loc_5F1091
  loc_5F10B5: LitI4 1
  loc_5F10BA: FLdPr Me
  loc_5F10BD: MemLdStr global_52
  loc_5F10C0: LitI2_Byte 1
  loc_5F10C2: FnUBound
  loc_5F10C4: LitI4 1
  loc_5F10C9: SubI4
  loc_5F10CA: FLdPr Me
  loc_5F10CD: MemLdRfVar from_stack_1.global_52
  loc_5F10D0: RedimPreserve
  loc_5F10DA: ExitProcHresult
End Function
