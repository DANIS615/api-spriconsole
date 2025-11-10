VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWow64\COMCTL32.OCX"
Begin VB.Form frmConection
  Caption = "Configuración de Productos"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 11835
  ClientHeight = 8700
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 789
  ScaleHeight = 1.206
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.CommandButton ComQuitar
    Caption = "Eliminar"
    Left = 8880
    Top = 3240
    Width = 1815
    Height = 495
    TabIndex = 19
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
  Begin VB.CommandButton ComAgregar
    Caption = "Agregar"
    Left = 6720
    Top = 3240
    Width = 1815
    Height = 495
    TabIndex = 18
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
  Begin MSFlexGridLib.MSFlexGrid gridActualConfiguration
    Left = 5940
    Top = 4963
    Width = 5775
    Height = 2535
    TabIndex = 5
    OleObjectBlob = "frmConection.frx":0000
  End
  Begin ComctlLib.TabStrip tabConfiguration
    Left = 5880
    Top = 4560
    Width = 5895
    Height = 3015
    TabIndex = 4
    OleObjectBlob = "frmConection.frx":00EC
  End
  Begin VB.Frame framProductos
    Left = 5880
    Top = 240
    Width = 5775
    Height = 3615
    TabIndex = 9
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox cmbMarca
      Left = 240
      Top = 840
      Width = 5175
      Height = 405
      TabIndex = 17
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
    Begin VB.ComboBox cmbModelo
      Left = 240
      Top = 1680
      Width = 2895
      Height = 405
      TabIndex = 16
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
    Begin VB.ComboBox cmbSideProduct
      Left = 240
      Top = 2520
      Width = 2535
      Height = 405
      TabIndex = 3
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
    Begin VB.ComboBox cmbLowProduct
      Left = 240
      Top = 1680
      Width = 1095
      Height = 405
      Visible = 0   'False
      TabIndex = 2
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
    Begin VB.ComboBox cmbProduct
      Left = 240
      Top = 840
      Width = 5175
      Height = 405
      Visible = 0   'False
      TabIndex = 1
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
    Begin VB.Label lbModelo
      Caption = "Modelo"
      Left = 240
      Top = 1320
      Width = 840
      Height = 285
      TabIndex = 15
      AutoSize = -1  'True
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
    Begin VB.Label lbMarca
      Caption = "Marca"
      Left = 240
      Top = 480
      Width = 5175
      Height = 375
      TabIndex = 14
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
    Begin VB.Label lbSideProduct
      Caption = "Lado A"
      Left = 240
      Top = 2160
      Width = 5175
      Height = 375
      TabIndex = 12
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
    Begin VB.Label lbLowProduct
      Caption = "Tanque Producto Bajo"
      Left = 240
      Top = 1320
      Width = 5175
      Height = 375
      Visible = 0   'False
      TabIndex = 11
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
    Begin VB.Label lbProduct
      Caption = "Producto"
      Left = 240
      Top = 480
      Width = 5175
      Height = 375
      Visible = 0   'False
      TabIndex = 10
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
  Begin VB.CommandButton cmdPrev
    Caption = "Página &Anterior"
    Left = 120
    Top = 7800
    Width = 2745
    Height = 735
    TabIndex = 7
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
  Begin VB.CommandButton cmdNext
    Caption = "&Finalizar"
    Left = 8880
    Top = 7800
    Width = 2745
    Height = 735
    TabIndex = 6
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
  Begin VB.CommandButton cmdCancel
    Caption = "&Cancelar"
    Left = 6000
    Top = 7800
    Width = 2745
    Height = 735
    TabIndex = 8
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
  Begin ComctlLib.TreeView treePump
    Left = 120
    Top = 240
    Width = 5640
    Height = 7335
    TabIndex = 0
    OleObjectBlob = "frmConection.frx":01E2
  End
  Begin VB.Label lbActualConfiguration
    Caption = "Configuración Actual"
    Left = 5880
    Top = 4680
    Width = 5175
    Height = 375
    TabIndex = 13
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
  Begin ComctlLib.ImageList imgPictures
    OleObjectBlob = "frmConection.frx":028A
    Left = 2880
    Top = 7800
  End
End

Attribute VB_Name = "frmConection"


Private Sub ComQuitar_Click() '5CF174
  'Data Table: 44BCD0
  loc_5CF160: from_stack_1v = Proc_115_59_630590()
  loc_5CF165: LitI4 2
  loc_5CF16A: PopTmpLdAdStr var_88
  loc_5CF16D: from_stack_2v = Proc_115_40_64B7F8(from_stack_1v)
  loc_5CF172: ExitProcHresult
End Sub

Private Sub cmbMarca_Click() '5D9B70
  'Data Table: 44BCD0
  loc_5D9B3C: FLdRfVar var_8A
  loc_5D9B3F: FLdPrThis
  loc_5D9B40: VCallAd Control_ID_cmbMarca
  loc_5D9B43: FStAdFunc var_88
  loc_5D9B46: FLdPr var_88
  loc_5D9B49:  = Me.ListIndex
  loc_5D9B4E: FLdI2 var_8A
  loc_5D9B51: LitI2_Byte 1
  loc_5D9B53: AddI2
  loc_5D9B54: CUI1I2
  loc_5D9B56: FLdPr Me
  loc_5D9B59: MemLdUI1 global_192
  loc_5D9B5D: CI4UI1
  loc_5D9B5E: FLdPr Me
  loc_5D9B61: MemLdRfVar from_stack_1.global_196
  loc_5D9B64: Ary1StUI1
  loc_5D9B66: FFree1Ad var_88
  loc_5D9B69: from_stack_1v = Proc_115_61_62C13C()
  loc_5D9B6E: ExitProcHresult
End Sub

Private Sub cmbLowProduct_Click() '5DD804
  'Data Table: 44BCD0
  loc_5DD7BC: FLdRfVar var_8C
  loc_5DD7BF: FLdPrThis
  loc_5DD7C0: VCallAd Control_ID_cmbLowProduct
  loc_5DD7C3: FStAdFunc var_88
  loc_5DD7C6: FLdPr var_88
  loc_5DD7C9:  = Me.Text
  loc_5DD7CE: ILdRf var_8C
  loc_5DD7D1: ImpAdCallFPR4 push Val()
  loc_5DD7D6: CUI1R4
  loc_5DD7D8: FLdPr Me
  loc_5DD7DB: MemLdI2 global_52
  loc_5DD7DE: CI4UI1
  loc_5DD7DF: FLdPr Me
  loc_5DD7E2: MemLdI2 global_54
  loc_5DD7E5: CI4UI1
  loc_5DD7E6: LitI4 0
  loc_5DD7EB: FLdPr Me
  loc_5DD7EE: MemLdRfVar from_stack_1.global_88
  loc_5DD7F1: AryLdPr
  loc_5DD7F4: MemStUI1
  loc_5DD7F8: FFree1Str var_8C
  loc_5DD7FB: FFree1Ad var_88
  loc_5DD7FE: from_stack_1v = Proc_115_37_5ED728()
  loc_5DD803: ExitProcHresult
End Sub

Private Sub cmbLowProduct_DropDown() '5C8CE8
  'Data Table: 44BCD0
  loc_5C8CE0: from_stack_1v = Proc_115_43_63BF24()
  loc_5C8CE5: ExitProcHresult
End Sub

Private Sub cmbLowProduct_KeyDown(KeyCode As Integer, Shift As Integer) '5D02C4
  'Data Table: 44BCD0
  loc_5D02AC: ILdI2 KeyCode
  loc_5D02AF: LitI2_Byte &H28
  loc_5D02B1: EqI2
  loc_5D02B2: NotI4
  loc_5D02B3: ILdI2 KeyCode
  loc_5D02B6: LitI2_Byte &H26
  loc_5D02B8: EqI2
  loc_5D02B9: NotI4
  loc_5D02BA: AndI4
  loc_5D02BB: BranchF loc_5D02C3
  loc_5D02BE: LitI2_Byte 0
  loc_5D02C0: IStI2 KeyCode
  loc_5D02C3: ExitProcHresult
End Sub

Private Sub cmbLowProduct_KeyPress(KeyAscii As Integer) '5C8AB8
  'Data Table: 44BCD0
  loc_5C8AB0: LitI2_Byte 0
  loc_5C8AB2: IStI2 KeyAscii
  loc_5C8AB5: ExitProcHresult
End Sub

Private Sub ComAgregar_Click() '615988
  'Data Table: 44BCD0
  loc_615868: LitI2_Byte 1
  loc_61586A: CUI1I2
  loc_61586C: FStUI1 var_86
  loc_615870: FLdUI1
  loc_615874: CI4UI1
  loc_615875: ImpAdLdRf MemVar_74C1F4
  loc_615878: Ary1LdUI1
  loc_61587A: CI2UI1
  loc_61587C: LitI2_Byte 0
  loc_61587E: NeI2
  loc_61587F: BranchF loc_6158A3
  loc_615882: FLdUI1
  loc_615886: CI2UI1
  loc_615888: LitI2_Byte 1
  loc_61588A: AddI2
  loc_61588B: CUI1I2
  loc_61588D: FStUI1 var_86
  loc_615891: FLdUI1
  loc_615895: CI2UI1
  loc_615897: LitI2_Byte &H20
  loc_615899: GeI2
  loc_61589A: BranchF loc_6158A0
  loc_61589D: Branch loc_6158A3
  loc_6158A0: Branch loc_615870
  loc_6158A3: FLdUI1
  loc_6158A7: CI2UI1
  loc_6158A9: LitI2_Byte &H20
  loc_6158AB: GtI2
  loc_6158AC: BranchF loc_6158D9
  loc_6158AF: LitVar_Missing var_108
  loc_6158B2: LitVar_Missing var_E8
  loc_6158B5: LitVar_Missing var_C8
  loc_6158B8: LitI4 &H10
  loc_6158BD: LitVarStr var_98, "No se pueden agregar mas surtidores."
  loc_6158C2: FStVarCopyObj var_A8
  loc_6158C5: FLdRfVar var_A8
  loc_6158C8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6158CD: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_6158D8: ExitProcHresult
  loc_6158D9: LitI2_Byte &HFF
  loc_6158DB: FLdPrThis
  loc_6158DC: VCallAd Control_ID_ComQuitar
  loc_6158DF: FStAdFunc var_10C
  loc_6158E2: FLdPr var_10C
  loc_6158E5: Me.Enabled = from_stack_1b
  loc_6158EA: FFree1Ad var_10C
  loc_6158ED: LitI2_Byte &HFF
  loc_6158EF: FLdPrThis
  loc_6158F0: VCallAd Control_ID_framProductos
  loc_6158F3: FStAdFunc var_10C
  loc_6158F6: FLdPr var_10C
  loc_6158F9: Me.Enabled = from_stack_1b
  loc_6158FE: FFree1Ad var_10C
  loc_615901: LitI2_Byte 0
  loc_615903: CUI1I2
  loc_615905: FLdUI1
  loc_615909: CI4UI1
  loc_61590A: ImpAdLdRf MemVar_74C0FC
  loc_61590D: Ary1StUI1
  loc_61590F: LitI2_Byte 1
  loc_615911: CUI1I2
  loc_615913: FLdUI1
  loc_615917: CI4UI1
  loc_615918: FLdPr Me
  loc_61591B: MemLdRfVar from_stack_1.global_220
  loc_61591E: Ary1StUI1
  loc_615920: LitI2_Byte 1
  loc_615922: CUI1I2
  loc_615924: FLdUI1
  loc_615928: CI4UI1
  loc_615929: FLdPr Me
  loc_61592C: MemLdRfVar from_stack_1.global_196
  loc_61592F: Ary1StUI1
  loc_615931: LitI2_Byte 1
  loc_615933: CUI1I2
  loc_615935: FLdUI1
  loc_615939: CI4UI1
  loc_61593A: ImpAdLdRf MemVar_74C1F4
  loc_61593D: Ary1StUI1
  loc_61593F: LitI2_Byte 1
  loc_615941: CUI1I2
  loc_615943: FLdUI1
  loc_615947: CI4UI1
  loc_615948: LitI4 0
  loc_61594D: FLdPr Me
  loc_615950: MemLdRfVar from_stack_1.global_56
  loc_615953: AryLdPr
  loc_615956: MemStUI1
  loc_61595A: LitI2_Byte 1
  loc_61595C: CUI1I2
  loc_61595E: FLdUI1
  loc_615962: CI4UI1
  loc_615963: LitI4 0
  loc_615968: LitI4 0
  loc_61596D: FLdPr Me
  loc_615970: MemLdRfVar from_stack_1.global_88
  loc_615973: AryLdPr
  loc_615976: MemStUI1
  loc_61597A: from_stack_1v = Proc_115_34_620900()
  loc_61597F: from_stack_1v = Proc_115_58_637CFC()
  loc_615984: ExitProcHresult
End Sub

Private Sub cmdNext_Click() '606CB0
  'Data Table: 44BCD0
  loc_606BD8: FLdRfVar var_9E
  loc_606BDB: FLdPrThis
  loc_606BDC: VCallAd Control_ID_treePump
  loc_606BDF: FStAdFunc var_88
  loc_606BE2: FLdPr var_88
  loc_606BE5: LateIdLdVar var_98 DispID_9 0
  loc_606BEC: CastAdVar Me
  loc_606BF0: FStAdFunc var_9C
  loc_606BF3: FLdPr var_9C
  loc_606BF6:  = Me.Nodes.Count
  loc_606BFB: FLdI2 var_9E
  loc_606BFE: LitI2_Byte 0
  loc_606C00: EqI2
  loc_606C01: FFreeAd var_88 = ""
  loc_606C08: FFree1Var var_98 = ""
  loc_606C0B: BranchF loc_606C38
  loc_606C0E: LitVar_Missing var_110
  loc_606C11: LitVar_Missing var_F0
  loc_606C14: LitVar_Missing var_D0
  loc_606C17: LitI4 &H10
  loc_606C1C: LitVarStr var_B0, "Debe existir un surtidor como minimo."
  loc_606C21: FStVarCopyObj var_98
  loc_606C24: FLdRfVar var_98
  loc_606C27: ImpAdCallFPR4 MsgBox(, , , , )
  loc_606C2C: FFreeVar var_98 = "": var_D0 = "": var_F0 = ""
  loc_606C37: ExitProcHresult
  loc_606C38: FLdRfVar var_9E
  loc_606C3B: from_stack_1v = ConfiguredTank()
  loc_606C40: FLdI2 var_9E
  loc_606C43: NotI4
  loc_606C44: BranchF loc_606C48
  loc_606C47: ExitProcHresult
  loc_606C48: LitI4 2
  loc_606C4D: PopTmpLdAdStr var_114
  loc_606C50: from_stack_2v = Proc_115_30_5D2C34(from_stack_1v)
  loc_606C55: from_stack_1v = Proc_115_55_60B610()
  loc_606C5A: ILdRf Me
  loc_606C5D: FStAdNoPop
  loc_606C61: ImpAdLdRf MemVar_7520D4
  loc_606C64: NewIfNullPr Global
  loc_606C67: Global.Unload from_stack_1
  loc_606C6C: FFree1Ad var_88
  loc_606C6F: ImpAdLdUI1
  loc_606C73: CBoolUI1
  loc_606C75: BranchF loc_606C90
  loc_606C78: LitVar_Missing var_C0
  loc_606C7B: PopAdLdVar
  loc_606C7C: LitVarI2 var_B0, 1
  loc_606C81: PopAdLdVar
  loc_606C82: ImpAdLdRf MemVar_74DB90
  loc_606C85: NewIfNullPr fOffsetSensores
  loc_606C88: fOffsetSensores.Show from_stack_1, from_stack_2
  loc_606C8D: Branch loc_606CAC
  loc_606C90: LitVar_FALSE
  loc_606C94: PopAdLdVar
  loc_606C95: ImpAdLdRf MemVar_74C760
  loc_606C98: NewIfNullPr Formx
  loc_606C9B: VCallAd Control_ID_PanelCierres
  loc_606C9E: FStAdFunc var_88
  loc_606CA1: FLdPr var_88
  loc_606CA4: LateIdSt
  loc_606CA9: FFree1Ad var_88
  loc_606CAC: ExitProcHresult
  loc_606CAD: CR4Var
  loc_606CAE: CVarStr arg_5802
End Sub

Private Sub Form_Load() '5DADC4
  'Data Table: 44BCD0
  loc_5DAD84: from_stack_1v = Proc_115_50_6404AC()
  loc_5DAD89: LitI4 1
  loc_5DAD8E: PopTmpLdAdStr var_88
  loc_5DAD91: from_stack_2v = Proc_115_30_5D2C34(from_stack_1v)
  loc_5DAD96: from_stack_1v = Proc_115_34_620900()
  loc_5DAD9B: LitI4 1
  loc_5DADA0: PopTmpLdAdStr var_88
  loc_5DADA3: from_stack_2v = Proc_115_40_64B7F8(from_stack_1v)
  loc_5DADA8: from_stack_1v = Proc_115_29_5D7E14()
  loc_5DADAD: from_stack_1v = Proc_115_54_6284B4()
  loc_5DADB2: from_stack_1v = Proc_115_56_62D614()
  loc_5DADB7: from_stack_1v = Proc_115_49_5E6400()
  loc_5DADBC: from_stack_1v = Proc_115_58_637CFC()
  loc_5DADC1: ExitProcHresult
End Sub

Private Sub cmbProduct_Click() '5E4170
  'Data Table: 44BCD0
  loc_5E4108: FLdRfVar var_86
  loc_5E410B: from_stack_1v = Proc_115_48_5F85EC()
  loc_5E4110: FLdI2 var_86
  loc_5E4113: BranchF loc_5E4169
  loc_5E4116: FLdRfVar var_86
  loc_5E4119: FLdRfVar var_90
  loc_5E411C: FLdPrThis
  loc_5E411D: VCallAd Control_ID_cmbProduct
  loc_5E4120: FStAdFunc var_8C
  loc_5E4123: FLdPr var_8C
  loc_5E4126:  = Me.Text
  loc_5E412B: ILdRf var_90
  loc_5E412E: ImpAdLdRf MemVar_74A220
  loc_5E4131: NewIfNullPr clsProducts
  loc_5E4139: FLdI2 var_86
  loc_5E413C: CUI1I2
  loc_5E413E: FLdPr Me
  loc_5E4141: MemLdI2 global_52
  loc_5E4144: CI4UI1
  loc_5E4145: FLdPr Me
  loc_5E4148: MemLdI2 global_54
  loc_5E414B: CI4UI1
  loc_5E414C: FLdPr Me
  loc_5E414F: MemLdRfVar from_stack_1.global_56
  loc_5E4152: AryLdPr
  loc_5E4155: MemStUI1
  loc_5E4159: FFree1Str var_90
  loc_5E415C: FFree1Ad var_8C
  loc_5E415F: from_stack_1v = Proc_115_37_5ED728()
  loc_5E4164: from_stack_1v = Proc_115_43_63BF24()
  loc_5E4169: from_stack_1v = Proc_115_62_63D9F0()
  loc_5E416E: ExitProcHresult
End Sub

Private Sub cmbProduct_KeyDown(KeyCode As Integer, Shift As Integer) '5D0354
  'Data Table: 44BCD0
  loc_5D033C: ILdI2 KeyCode
  loc_5D033F: LitI2_Byte &H28
  loc_5D0341: EqI2
  loc_5D0342: NotI4
  loc_5D0343: ILdI2 KeyCode
  loc_5D0346: LitI2_Byte &H26
  loc_5D0348: EqI2
  loc_5D0349: NotI4
  loc_5D034A: AndI4
  loc_5D034B: BranchF loc_5D0353
  loc_5D034E: LitI2_Byte 0
  loc_5D0350: IStI2 KeyCode
  loc_5D0353: ExitProcHresult
End Sub

Private Sub cmbProduct_KeyPress(KeyAscii As Integer) '5C8BD0
  'Data Table: 44BCD0
  loc_5C8BC8: LitI2_Byte 0
  loc_5C8BCA: IStI2 KeyAscii
  loc_5C8BCD: ExitProcHresult
End Sub

Private Sub tabConfiguration_UnknownEvent_8 '5C8C40
  'Data Table: 44BCD0
  loc_5C8C38: from_stack_1v = Proc_115_37_5ED728()
  loc_5C8C3D: ExitProcHresult
  loc_5C8C3E: FLdRfVar arg_5800
End Sub

Private Sub cmdCancel_Click() '5DA880
  'Data Table: 44BCD0
  loc_5DA848: ImpAdLdRf MemVar_74A220
  loc_5DA84B: NewIfNullPr clsProducts
  loc_5DA84E: clsProducts.Height = from_stack_1s
  loc_5DA853: LitI2_Byte &HFF
  loc_5DA855: PopTmpLdAd2 var_86
  loc_5DA858: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5DA85D: LitI2_Byte &HFF
  loc_5DA85F: ImpAdLdRf MemVar_74C760
  loc_5DA862: NewIfNullPr Formx
  loc_5DA865: Call Formx.CanceladoPut(from_stack_1v)
  loc_5DA86A: ILdRf Me
  loc_5DA86D: FStAdNoPop
  loc_5DA871: ImpAdLdRf MemVar_7520D4
  loc_5DA874: NewIfNullPr Global
  loc_5DA877: Global.Unload from_stack_1
  loc_5DA87C: FFree1Ad var_8C
  loc_5DA87F: ExitProcHresult
End Sub

Private Sub cmdPrev_Click() '5DF194
  'Data Table: 44BCD0
  loc_5DF140: ILdRf Me
  loc_5DF143: FStAdNoPop
  loc_5DF147: ImpAdLdRf MemVar_7520D4
  loc_5DF14A: NewIfNullPr Global
  loc_5DF14D: Global.Unload from_stack_1
  loc_5DF152: FFree1Ad var_88
  loc_5DF155: ImpAdCallFPR4 DoEvents()
  loc_5DF15A: ImpAdLdUI1
  loc_5DF15E: CI2UI1
  loc_5DF160: LitI2_Byte 4
  loc_5DF162: EqI2
  loc_5DF163: BranchF loc_5DF17E
  loc_5DF166: LitVar_Missing var_A8
  loc_5DF169: PopAdLdVar
  loc_5DF16A: LitVarI2 var_98, 1
  loc_5DF16F: PopAdLdVar
  loc_5DF170: ImpAdLdRf MemVar_74C900
  loc_5DF173: NewIfNullPr fCapacidadTanque
  loc_5DF176: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5DF17B: Branch loc_5DF193
  loc_5DF17E: LitVar_Missing var_A8
  loc_5DF181: PopAdLdVar
  loc_5DF182: LitVarI2 var_98, 1
  loc_5DF187: PopAdLdVar
  loc_5DF188: ImpAdLdRf MemVar_74C900
  loc_5DF18B: NewIfNullPr fCapacidadTanque
  loc_5DF18E: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_5DF193: ExitProcHresult
End Sub

Private Sub cmbSideProduct_Click() '5DDC08
  'Data Table: 44BCD0
  loc_5DDBBC: FLdPr Me
  loc_5DDBBF: MemLdUI1 global_192
  loc_5DDBC3: CI2UI1
  loc_5DDBC5: FStI2 var_86
  loc_5DDBC8: FLdRfVar var_86
  loc_5DDBCB: from_stack_2v = Proc_115_45_5E4AFC(from_stack_1v)
  loc_5DDBD0: from_stack_1v = Proc_115_37_5ED728()
  loc_5DDBD5: FLdRfVar var_8E
  loc_5DDBD8: FLdPrThis
  loc_5DDBD9: VCallAd Control_ID_cmbSideProduct
  loc_5DDBDC: FStAdFunc var_8C
  loc_5DDBDF: FLdPr var_8C
  loc_5DDBE2:  = Me.ListIndex
  loc_5DDBE7: FLdI2 var_8E
  loc_5DDBEA: LitI2_Byte 1
  loc_5DDBEC: AddI2
  loc_5DDBED: CUI1I2
  loc_5DDBEF: FLdPr Me
  loc_5DDBF2: MemLdUI1 global_192
  loc_5DDBF6: CI4UI1
  loc_5DDBF7: FLdPr Me
  loc_5DDBFA: MemLdRfVar from_stack_1.global_220
  loc_5DDBFD: Ary1StUI1
  loc_5DDBFF: FFree1Ad var_8C
  loc_5DDC02: from_stack_1v = Proc_115_61_62C13C()
  loc_5DDC07: ExitProcHresult
End Sub

Private Sub cmbSideProduct_KeyDown(KeyCode As Integer, Shift As Integer) '5D030C
  'Data Table: 44BCD0
  loc_5D02F4: ILdI2 KeyCode
  loc_5D02F7: LitI2_Byte &H28
  loc_5D02F9: EqI2
  loc_5D02FA: NotI4
  loc_5D02FB: ILdI2 KeyCode
  loc_5D02FE: LitI2_Byte &H26
  loc_5D0300: EqI2
  loc_5D0301: NotI4
  loc_5D0302: AndI4
  loc_5D0303: BranchF loc_5D030B
  loc_5D0306: LitI2_Byte 0
  loc_5D0308: IStI2 KeyCode
  loc_5D030B: ExitProcHresult
End Sub

Private Sub cmbSideProduct_KeyPress(KeyAscii As Integer) '5C89D8
  'Data Table: 44BCD0
  loc_5C89D0: LitI2_Byte 0
  loc_5C89D2: IStI2 KeyAscii
  loc_5C89D5: ExitProcHresult
End Sub

Private Sub treePump_Click(arg_C) '69751C
  'Data Table: 44BCD0
  loc_696EE2: ILdRf arg_C
  loc_696EE5: FStAd var_88 
  loc_696EEB: LitI4 1
  loc_696EF0: FLdRfVar var_90
  loc_696EF3: FLdPr var_88
  loc_696EF6:  = Me.Key
  loc_696EFB: ILdRf var_90
  loc_696EFE: LitStr "|"
  loc_696F01: LitI4 0
  loc_696F06: FnInStr4
  loc_696F08: CI2I4
  loc_696F09: FStI2 var_8A
  loc_696F0C: FFree1Str var_90
  loc_696F11: FLdI2 var_8A
  loc_696F14: BranchF loc_6972CB
  loc_696F19: FLdRfVar var_90
  loc_696F1C: FLdPr var_88
  loc_696F1F:  = Me.Key
  loc_696F24: LitVarI2 var_C0, 1
  loc_696F29: LitI4 6
  loc_696F2E: FLdZeroAd var_90
  loc_696F31: CVarStr var_A0
  loc_696F34: FLdRfVar var_D0
  loc_696F37: ImpAdCallFPR4  = Mid(, , )
  loc_696F3C: FLdRfVar var_D0
  loc_696F3F: LitVarStr var_E0, "|"
  loc_696F44: HardType
  loc_696F45: EqVarBool
  loc_696F47: FFreeVar var_A0 = "": var_C0 = ""
  loc_696F50: BranchF loc_696FD1
  loc_696F55: FLdRfVar var_90
  loc_696F58: FLdPr var_88
  loc_696F5B:  = Me.Key
  loc_696F60: LitVarI2 var_C0, 1
  loc_696F65: LitI4 5
  loc_696F6A: FLdZeroAd var_90
  loc_696F6D: CVarStr var_A0
  loc_696F70: FLdRfVar var_D0
  loc_696F73: ImpAdCallFPR4  = Mid(, , )
  loc_696F78: FLdRfVar var_D0
  loc_696F7B: CUI1Var
  loc_696F7D: FLdPr Me
  loc_696F80: MemStUI1
  loc_696F84: FFreeVar var_A0 = "": var_C0 = ""
  loc_696F8F: FLdRfVar var_90
  loc_696F92: FLdPr var_88
  loc_696F95:  = Me.Key
  loc_696F9A: LitVarI2 var_C0, 1
  loc_696F9F: LitI4 7
  loc_696FA4: FLdZeroAd var_90
  loc_696FA7: CVarStr var_A0
  loc_696FAA: FLdRfVar var_D0
  loc_696FAD: ImpAdCallFPR4  = Mid(, , )
  loc_696FB2: FLdRfVar var_D0
  loc_696FB5: CStrVarTmp
  loc_696FB6: FStStrNoPop var_F4
  loc_696FB9: FLdPr Me
  loc_696FBC: MemLdRfVar from_stack_1.global_193
  loc_696FBF: StFixedStr
  loc_696FC2: FFree1Str var_F4
  loc_696FC5: FFreeVar var_A0 = "": var_C0 = ""
  loc_696FCE: Branch loc_69704E
  loc_696FD5: FLdRfVar var_90
  loc_696FD8: FLdPr var_88
  loc_696FDB:  = Me.Key
  loc_696FE0: LitVarI2 var_C0, 2
  loc_696FE5: LitI4 5
  loc_696FEA: FLdZeroAd var_90
  loc_696FED: CVarStr var_A0
  loc_696FF0: FLdRfVar var_D0
  loc_696FF3: ImpAdCallFPR4  = Mid(, , )
  loc_696FF8: FLdRfVar var_D0
  loc_696FFB: CUI1Var
  loc_696FFD: FLdPr Me
  loc_697000: MemStUI1
  loc_697004: FFreeVar var_A0 = "": var_C0 = ""
  loc_69700F: FLdRfVar var_90
  loc_697012: FLdPr var_88
  loc_697015:  = Me.Key
  loc_69701A: LitVarI2 var_C0, 1
  loc_69701F: LitI4 8
  loc_697024: FLdZeroAd var_90
  loc_697027: CVarStr var_A0
  loc_69702A: FLdRfVar var_D0
  loc_69702D: ImpAdCallFPR4  = Mid(, , )
  loc_697032: FLdRfVar var_D0
  loc_697035: CStrVarTmp
  loc_697036: FStStrNoPop var_F4
  loc_697039: FLdPr Me
  loc_69703C: MemLdRfVar from_stack_1.global_193
  loc_69703F: StFixedStr
  loc_697042: FFree1Str var_F4
  loc_697045: FFreeVar var_A0 = "": var_C0 = ""
  loc_697052: LitI2_Byte 0
  loc_697054: FLdPrThis
  loc_697055: VCallAd Control_ID_ComQuitar
  loc_697058: FStAdFunc var_F8
  loc_69705B: FLdPr var_F8
  loc_69705E: Me.Visible = from_stack_1b
  loc_697063: FFree1Ad var_F8
  loc_697068: LitI2_Byte 0
  loc_69706A: FLdPrThis
  loc_69706B: VCallAd Control_ID_ComAgregar
  loc_69706E: FStAdFunc var_F8
  loc_697071: FLdPr var_F8
  loc_697074: Me.Visible = from_stack_1b
  loc_697079: FFree1Ad var_F8
  loc_69707E: from_stack_1v = Proc_115_38_5DF43C()
  loc_697085: FLdRfVar var_90
  loc_697088: FLdPr var_88
  loc_69708B:  = Me.Key
  loc_697090: FLdI2 var_8A
  loc_697093: LitI2_Byte 5
  loc_697095: SubI2
  loc_697096: CVarI2 var_C0
  loc_697099: LitI4 5
  loc_69709E: FLdZeroAd var_90
  loc_6970A1: CVarStr var_A0
  loc_6970A4: FLdRfVar var_D0
  loc_6970A7: ImpAdCallFPR4  = Mid(, , )
  loc_6970AC: FLdRfVar var_D0
  loc_6970AF: FnCIntVar
  loc_6970B1: FLdPr Me
  loc_6970B4: MemStI2 global_52
  loc_6970B7: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_6970C4: FLdRfVar var_90
  loc_6970C7: FLdPr var_88
  loc_6970CA:  = Me.Key
  loc_6970CF: LitVar_Missing var_C0
  loc_6970D2: FLdI2 var_8A
  loc_6970D5: LitI2_Byte 1
  loc_6970D7: AddI2
  loc_6970D8: CI4UI1
  loc_6970D9: FLdZeroAd var_90
  loc_6970DC: CVarStr var_A0
  loc_6970DF: FLdRfVar var_D0
  loc_6970E2: ImpAdCallFPR4  = Mid(, , )
  loc_6970E7: FLdRfVar var_D0
  loc_6970EA: CStrVarVal var_F4
  loc_6970EE: ImpAdCallI2 Asc()
  loc_6970F3: LitI2_Byte &H41
  loc_6970F5: SubI2
  loc_6970F6: FLdPr Me
  loc_6970F9: MemStI2 global_54
  loc_6970FC: FFree1Str var_F4
  loc_6970FF: FFreeVar var_A0 = "": var_C0 = ""
  loc_69710A: from_stack_1v = Proc_115_36_62C708()
  loc_697111: FLdRfVar var_90
  loc_697114: FLdPr var_88
  loc_697117:  = Me.Key
  loc_69711C: FLdI2 var_8A
  loc_69711F: LitI2_Byte 5
  loc_697121: SubI2
  loc_697122: CVarI2 var_C0
  loc_697125: LitI4 5
  loc_69712A: FLdZeroAd var_90
  loc_69712D: CVarStr var_A0
  loc_697130: FLdRfVar var_D0
  loc_697133: ImpAdCallFPR4  = Mid(, , )
  loc_697138: FLdRfVar var_F4
  loc_69713B: FLdPr var_88
  loc_69713E:  = Me.Key
  loc_697143: LitVar_Missing var_108
  loc_697146: FLdI2 var_8A
  loc_697149: LitI2_Byte 1
  loc_69714B: AddI2
  loc_69714C: CI4UI1
  loc_69714D: FLdZeroAd var_F4
  loc_697150: CVarStr var_F0
  loc_697153: FLdRfVar var_118
  loc_697156: ImpAdCallFPR4  = Mid(, , )
  loc_69715B: FLdRfVar var_118
  loc_69715E: CStrVarVal var_11C
  loc_697162: ImpAdCallI2 Asc()
  loc_697167: LitI2_Byte &H41
  loc_697169: SubI2
  loc_69716A: PopTmpLdAd2 var_120
  loc_69716D: FLdRfVar var_D0
  loc_697170: FnCIntVar
  loc_697172: PopTmpLdAd2 var_11E
  loc_697175: from_stack_3v = Proc_115_39_62A000(from_stack_1v, from_stack_2v)
  loc_69717A: FFree1Str var_11C
  loc_69717D: FFreeVar var_A0 = "": var_C0 = "": var_D0 = "": var_D0 = "": var_F0 = "": var_108 = ""
  loc_697190: FLdRfVar var_90
  loc_697193: FLdPr var_88
  loc_697196:  = Me.Key
  loc_69719B: FLdI2 var_8A
  loc_69719E: LitI2_Byte 5
  loc_6971A0: SubI2
  loc_6971A1: CVarI2 var_C0
  loc_6971A4: LitI4 5
  loc_6971A9: FLdZeroAd var_90
  loc_6971AC: CVarStr var_A0
  loc_6971AF: FLdRfVar var_D0
  loc_6971B2: ImpAdCallFPR4  = Mid(, , )
  loc_6971B7: FLdRfVar var_D0
  loc_6971BA: FnCIntVar
  loc_6971BC: PopTmpLdAd2 var_11E
  loc_6971BF: from_stack_2v = Proc_115_44_5D5928(from_stack_1v)
  loc_6971C4: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_6971D1: from_stack_1v = Proc_115_27_5E31BC()
  loc_6971D8: LitI2_Byte &HFF
  loc_6971DA: FLdPrThis
  loc_6971DB: VCallAd Control_ID_framProductos
  loc_6971DE: FStAdFunc var_F8
  loc_6971E1: FLdPr var_F8
  loc_6971E4: Me.Enabled = from_stack_1b
  loc_6971E9: FFree1Ad var_F8
  loc_6971EE: LitI2_Byte 0
  loc_6971F0: FLdPrThis
  loc_6971F1: VCallAd Control_ID_lbMarca
  loc_6971F4: FStAdFunc var_F8
  loc_6971F7: FLdPr var_F8
  loc_6971FA: Me.Visible = from_stack_1b
  loc_6971FF: FFree1Ad var_F8
  loc_697204: LitI2_Byte 0
  loc_697206: FLdPrThis
  loc_697207: VCallAd Control_ID_lbModelo
  loc_69720A: FStAdFunc var_F8
  loc_69720D: FLdPr var_F8
  loc_697210: Me.Visible = from_stack_1b
  loc_697215: FFree1Ad var_F8
  loc_69721A: LitI2_Byte 0
  loc_69721C: FLdPrThis
  loc_69721D: VCallAd Control_ID_lbSideProduct
  loc_697220: FStAdFunc var_F8
  loc_697223: FLdPr var_F8
  loc_697226: Me.Visible = from_stack_1b
  loc_69722B: FFree1Ad var_F8
  loc_697230: LitI2_Byte 0
  loc_697232: FLdPrThis
  loc_697233: VCallAd Control_ID_cmbSideProduct
  loc_697236: FStAdFunc var_F8
  loc_697239: FLdPr var_F8
  loc_69723C: Me.Visible = from_stack_1b
  loc_697241: FFree1Ad var_F8
  loc_697246: LitI2_Byte &HFF
  loc_697248: FLdPrThis
  loc_697249: VCallAd Control_ID_lbProduct
  loc_69724C: FStAdFunc var_F8
  loc_69724F: FLdPr var_F8
  loc_697252: Me.Visible = from_stack_1b
  loc_697257: FFree1Ad var_F8
  loc_69725C: LitI2_Byte &HFF
  loc_69725E: FLdPrThis
  loc_69725F: VCallAd Control_ID_lbLowProduct
  loc_697262: FStAdFunc var_F8
  loc_697265: FLdPr var_F8
  loc_697268: Me.Visible = from_stack_1b
  loc_69726D: FFree1Ad var_F8
  loc_697272: LitI2_Byte &HFF
  loc_697274: FLdPrThis
  loc_697275: VCallAd Control_ID_cmbLowProduct
  loc_697278: FStAdFunc var_F8
  loc_69727B: FLdPr var_F8
  loc_69727E: Me.Visible = from_stack_1b
  loc_697283: FFree1Ad var_F8
  loc_697288: LitI2_Byte &HFF
  loc_69728A: FLdPrThis
  loc_69728B: VCallAd Control_ID_cmbProduct
  loc_69728E: FStAdFunc var_F8
  loc_697291: FLdPr var_F8
  loc_697294: Me.Visible = from_stack_1b
  loc_697299: FFree1Ad var_F8
  loc_69729E: LitI2_Byte 0
  loc_6972A0: FLdPrThis
  loc_6972A1: VCallAd Control_ID_cmbModelo
  loc_6972A4: FStAdFunc var_F8
  loc_6972A7: FLdPr var_F8
  loc_6972AA: Me.Visible = from_stack_1b
  loc_6972AF: FFree1Ad var_F8
  loc_6972B4: LitI2_Byte 0
  loc_6972B6: FLdPrThis
  loc_6972B7: VCallAd Control_ID_cmbMarca
  loc_6972BA: FStAdFunc var_F8
  loc_6972BD: FLdPr var_F8
  loc_6972C0: Me.Visible = from_stack_1b
  loc_6972C5: FFree1Ad var_F8
  loc_6972C8: Branch loc_6974B5
  loc_6972CF: LitI2_Byte &HFF
  loc_6972D1: FLdPrThis
  loc_6972D2: VCallAd Control_ID_ComQuitar
  loc_6972D5: FStAdFunc var_F8
  loc_6972D8: FLdPr var_F8
  loc_6972DB: Me.Visible = from_stack_1b
  loc_6972E0: FFree1Ad var_F8
  loc_6972E5: LitI2_Byte &HFF
  loc_6972E7: FLdPrThis
  loc_6972E8: VCallAd Control_ID_ComAgregar
  loc_6972EB: FStAdFunc var_F8
  loc_6972EE: FLdPr var_F8
  loc_6972F1: Me.Visible = from_stack_1b
  loc_6972F6: FFree1Ad var_F8
  loc_6972FB: FLdRfVar var_90
  loc_6972FE: FLdPr var_88
  loc_697301:  = Me.Key
  loc_697306: LitVarI2 var_C0, 2
  loc_69730B: LitI4 5
  loc_697310: FLdZeroAd var_90
  loc_697313: CVarStr var_A0
  loc_697316: FLdRfVar var_D0
  loc_697319: ImpAdCallFPR4  = Mid(, , )
  loc_69731E: FLdRfVar var_D0
  loc_697321: FLdRfVar var_F0
  loc_697324: ImpAdCallFPR4  = Trim()
  loc_697329: FLdRfVar var_F0
  loc_69732C: CUI1Var
  loc_69732E: FLdPr Me
  loc_697331: MemStUI1
  loc_697335: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_697342: LitI2_Byte &HFF
  loc_697344: FLdPrThis
  loc_697345: VCallAd Control_ID_lbMarca
  loc_697348: FStAdFunc var_F8
  loc_69734B: FLdPr var_F8
  loc_69734E: Me.Visible = from_stack_1b
  loc_697353: FFree1Ad var_F8
  loc_697358: LitI2_Byte &HFF
  loc_69735A: FLdPrThis
  loc_69735B: VCallAd Control_ID_lbModelo
  loc_69735E: FStAdFunc var_F8
  loc_697361: FLdPr var_F8
  loc_697364: Me.Visible = from_stack_1b
  loc_697369: FFree1Ad var_F8
  loc_69736E: LitI2_Byte &HFF
  loc_697370: FLdPrThis
  loc_697371: VCallAd Control_ID_cmbModelo
  loc_697374: FStAdFunc var_F8
  loc_697377: FLdPr var_F8
  loc_69737A: Me.Visible = from_stack_1b
  loc_69737F: FFree1Ad var_F8
  loc_697384: LitI2_Byte &HFF
  loc_697386: FLdPrThis
  loc_697387: VCallAd Control_ID_cmbMarca
  loc_69738A: FStAdFunc var_F8
  loc_69738D: FLdPr var_F8
  loc_697390: Me.Visible = from_stack_1b
  loc_697395: FFree1Ad var_F8
  loc_69739A: LitI2_Byte &HFF
  loc_69739C: FLdPrThis
  loc_69739D: VCallAd Control_ID_lbSideProduct
  loc_6973A0: FStAdFunc var_F8
  loc_6973A3: FLdPr var_F8
  loc_6973A6: Me.Visible = from_stack_1b
  loc_6973AB: FFree1Ad var_F8
  loc_6973B0: LitI2_Byte &HFF
  loc_6973B2: FLdPrThis
  loc_6973B3: VCallAd Control_ID_cmbSideProduct
  loc_6973B6: FStAdFunc var_F8
  loc_6973B9: FLdPr var_F8
  loc_6973BC: Me.Visible = from_stack_1b
  loc_6973C1: FFree1Ad var_F8
  loc_6973C6: LitI2_Byte 0
  loc_6973C8: FLdPrThis
  loc_6973C9: VCallAd Control_ID_lbProduct
  loc_6973CC: FStAdFunc var_F8
  loc_6973CF: FLdPr var_F8
  loc_6973D2: Me.Visible = from_stack_1b
  loc_6973D7: FFree1Ad var_F8
  loc_6973DC: LitI2_Byte 0
  loc_6973DE: FLdPrThis
  loc_6973DF: VCallAd Control_ID_lbLowProduct
  loc_6973E2: FStAdFunc var_F8
  loc_6973E5: FLdPr var_F8
  loc_6973E8: Me.Visible = from_stack_1b
  loc_6973ED: FFree1Ad var_F8
  loc_6973F2: LitI2_Byte 0
  loc_6973F4: FLdPrThis
  loc_6973F5: VCallAd Control_ID_cmbLowProduct
  loc_6973F8: FStAdFunc var_F8
  loc_6973FB: FLdPr var_F8
  loc_6973FE: Me.Visible = from_stack_1b
  loc_697403: FFree1Ad var_F8
  loc_697408: LitI2_Byte 0
  loc_69740A: FLdPrThis
  loc_69740B: VCallAd Control_ID_cmbProduct
  loc_69740E: FStAdFunc var_F8
  loc_697411: FLdPr var_F8
  loc_697414: Me.Visible = from_stack_1b
  loc_697419: FFree1Ad var_F8
  loc_69741E: LitI2_Byte &HFF
  loc_697420: FLdPr Me
  loc_697423: MemStI2 global_276
  loc_697428: OnErrorGoto loc_6974B7
  loc_69742D: FLdRfVar var_11E
  loc_697430: FLdPr Me
  loc_697433: MemLdUI1 global_192
  loc_697437: CI4UI1
  loc_697438: ImpAdLdRf MemVar_74C0FC
  loc_69743B: Ary1LdRf
  loc_69743C: from_stack_2v = Proc_115_53_5E325C(from_stack_1v)
  loc_697441: FLdUI1
  loc_697445: CI2UI1
  loc_697447: FLdPrThis
  loc_697448: VCallAd Control_ID_cmbModelo
  loc_69744B: FStAdFunc var_F8
  loc_69744E: FLdPr var_F8
  loc_697451: Me.ListIndex = from_stack_1
  loc_697456: FFree1Ad var_F8
  loc_69745B: FLdPr Me
  loc_69745E: MemLdUI1 global_192
  loc_697462: CI4UI1
  loc_697463: FLdPr Me
  loc_697466: MemLdRfVar from_stack_1.global_196
  loc_697469: Ary1LdUI1
  loc_69746B: CI2UI1
  loc_69746D: LitI2_Byte 1
  loc_69746F: SubI2
  loc_697470: FLdPrThis
  loc_697471: VCallAd Control_ID_cmbMarca
  loc_697474: FStAdFunc var_F8
  loc_697477: FLdPr var_F8
  loc_69747A: Me.ListIndex = from_stack_1
  loc_69747F: FFree1Ad var_F8
  loc_697484: FLdPr Me
  loc_697487: MemLdUI1 global_192
  loc_69748B: CI4UI1
  loc_69748C: FLdPr Me
  loc_69748F: MemLdRfVar from_stack_1.global_220
  loc_697492: Ary1LdUI1
  loc_697494: CI2UI1
  loc_697496: LitI2_Byte 1
  loc_697498: SubI2
  loc_697499: FLdPrThis
  loc_69749A: VCallAd Control_ID_cmbSideProduct
  loc_69749D: FStAdFunc var_F8
  loc_6974A0: FLdPr var_F8
  loc_6974A3: Me.ListIndex = from_stack_1
  loc_6974A8: FFree1Ad var_F8
  loc_6974AD: LitI2_Byte 0
  loc_6974AF: FLdPr Me
  loc_6974B2: MemStI2 global_276
  loc_6974B9: FLdRfVar var_134
  loc_6974BC: ImpAdCallI2 Err 'rtcErrObj
  loc_6974C1: FStAdFunc var_F8
  loc_6974C4: FLdPr var_F8
  loc_6974C7:  = Err.Number
  loc_6974CC: ILdRf var_134
  loc_6974CF: LitI4 &H17C
  loc_6974D4: EqI4
  loc_6974D5: FFree1Ad var_F8
  loc_6974D8: BranchF loc_697517
  loc_6974DD: FLdRfVar var_11E
  loc_6974E0: FLdPrThis
  loc_6974E1: VCallAd Control_ID_cmbModelo
  loc_6974E4: FStAdFunc var_F8
  loc_6974E7: FLdPr var_F8
  loc_6974EA:  = Me.ListCount
  loc_6974EF: FLdI2 var_11E
  loc_6974F2: LitI2_Byte 0
  loc_6974F4: GtI2
  loc_6974F5: FFree1Ad var_F8
  loc_6974F8: BranchF loc_697511
  loc_6974FD: LitI2_Byte 0
  loc_6974FF: FLdPrThis
  loc_697500: VCallAd Control_ID_cmbModelo
  loc_697503: FStAdFunc var_F8
  loc_697506: FLdPr var_F8
  loc_697509: Me.ListIndex = from_stack_1
  loc_69750E: FFree1Ad var_F8
  loc_697513: Resume
  loc_69751B: ExitProcHresult
End Sub

Private Sub treePump_OLESetData(Data As DataObject, DataFormat As Integer) '60F3A4
  'Data Table: 44BCD0
  loc_60F2AC: ILdI2 Data
  loc_60F2AF: LitI2_Byte &H2F
  loc_60F2B1: GtI2
  loc_60F2B2: ILdI2 Data
  loc_60F2B5: LitI2_Byte &H3A
  loc_60F2B7: LtI2
  loc_60F2B8: AndI4
  loc_60F2B9: BranchF loc_60F3A2
  loc_60F2BC: FLdPr Me
  loc_60F2BF: MemLdStr global_244
  loc_60F2C2: CVarStr var_A4
  loc_60F2C5: ILdI2 Data
  loc_60F2C8: CI4UI1
  loc_60F2C9: FLdRfVar var_94
  loc_60F2CC: ImpAdCallFPR4  = Chr()
  loc_60F2D1: FLdRfVar var_94
  loc_60F2D4: ConcatVar var_B4
  loc_60F2D8: CStrVarTmp
  loc_60F2D9: FStStrNoPop var_B8
  loc_60F2DC: FLdPr Me
  loc_60F2DF: MemStStrCopy
  loc_60F2E3: FFree1Str var_B8
  loc_60F2E6: FFreeVar var_94 = ""
  loc_60F2ED: FLdPr Me
  loc_60F2F0: MemLdStr global_244
  loc_60F2F3: FnLenStr
  loc_60F2F4: LitI4 1
  loc_60F2F9: GtI4
  loc_60F2FA: BranchF loc_60F3A2
  loc_60F2FD: FLdRfVar var_BA
  loc_60F300: from_stack_1v = Proc_115_26_5DA3E0()
  loc_60F305: FLdI2 var_BA
  loc_60F308: BranchF loc_60F398
  loc_60F30B: FLdPr Me
  loc_60F30E: MemLdStr global_244
  loc_60F311: ImpAdCallFPR4 push Val()
  loc_60F316: FStFPR8 var_C4
  loc_60F319: LitI2_Byte 0
  loc_60F31B: PopTmpLdAd2 var_BA
  loc_60F31E: FLdFPR8 var_C4
  loc_60F321: CStrR8
  loc_60F323: PopTmpLdAdStr
  loc_60F327: from_stack_3v = Proc_115_25_5E9CC0(from_stack_1v, from_stack_2v)
  loc_60F32C: FFree1Str var_B8
  loc_60F32F: LitStr "Surt"
  loc_60F332: FLdPr Me
  loc_60F335: MemLdStr global_244
  loc_60F338: ImpAdCallFPR4 push Val()
  loc_60F33D: CStrR8
  loc_60F33F: FStStrNoPop var_B8
  loc_60F342: ConcatStr
  loc_60F343: FStStrNoPop var_C8
  loc_60F346: FLdPr Me
  loc_60F349: MemStStrCopy
  loc_60F34D: FFreeStr var_B8 = ""
  loc_60F354: LitI2_Byte &HFF
  loc_60F356: FLdRfVar var_D4
  loc_60F359: FLdPr Me
  loc_60F35C: MemLdRfVar from_stack_1.global_244
  loc_60F35F: CVarRef
  loc_60F364: FLdPrThis
  loc_60F365: VCallAd Control_ID_treePump
  loc_60F368: FStAdFunc var_CC
  loc_60F36B: FLdPr var_CC
  loc_60F36E: LateIdLdVar var_94 DispID_9 0
  loc_60F375: CastAdVar Me
  loc_60F379: FStAdFunc var_D0
  loc_60F37C: FLdPr var_D0
  loc_60F37F: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_60F384: FLdPr var_D4
  loc_60F387: Me.Selected = from_stack_1b
  loc_60F38C: FFreeAd var_CC = "": var_D0 = ""
  loc_60F395: FFree1Var var_94 = ""
  loc_60F398: LitStr vbNullString
  loc_60F39B: FLdPr Me
  loc_60F39E: MemStStrCopy
  loc_60F3A2: ExitProcHresult
End Sub

Private Sub cmbModelo_Click() '5CA0D0
  'Data Table: 44BCD0
  loc_5CA0C4: from_stack_1v = Proc_115_51_61F1AC()
  loc_5CA0C9: from_stack_1v = Proc_115_61_62C13C()
  loc_5CA0CE: ExitProcHresult
End Sub

Public Function CargarCombo(desc) '633330
  'Data Table: 44BCD0
  loc_633158: FLdRfVar CargarCombo
  loc_63315B: ILdI4 desc
  loc_63315E: ImpAdLdRf MemVar_74A220
  loc_633161: NewIfNullPr clsProducts
  loc_633169: FLdI2 CargarCombo
  loc_63316C: FStI2 var_88
  loc_63316F: LitI2_Byte 0
  loc_633171: FStI2 var_86
  loc_633174: LitI2_Byte 1
  loc_633176: FLdRfVar var_8E
  loc_633179: ImpAdLdUI1
  loc_63317D: CI2UI1
  loc_63317F: ForI2 var_98
  loc_633185: FLdI2 var_88
  loc_633188: FLdI2 var_8E
  loc_63318B: CI4UI1
  loc_63318C: ImpAdLdRf MemVar_74C1D8
  loc_63318F: Ary1LdUI1
  loc_633191: CI2UI1
  loc_633193: EqI2
  loc_633194: BranchF loc_63331C
  loc_633197: FLdI2 var_8E
  loc_63319A: FStI2 var_92
  loc_63319D: LitI2_Byte 0
  loc_63319F: FStI2 var_86
  loc_6331A2: LitI2_Byte 0
  loc_6331A4: FLdRfVar var_90
  loc_6331A7: LitI2_Byte &H1F
  loc_6331A9: ForI2 var_9C
  loc_6331AF: FLdI2 var_92
  loc_6331B2: FLdI2 var_90
  loc_6331B5: CI4UI1
  loc_6331B6: LitI4 0
  loc_6331BB: ImpAdLdRf MemVar_74C23C
  loc_6331BE: AryLdPr
  loc_6331C1: MemLdUI1 global_0
  loc_6331C5: CI2UI1
  loc_6331C7: EqI2
  loc_6331C8: FLdI2 var_92
  loc_6331CB: FLdI2 var_90
  loc_6331CE: CI4UI1
  loc_6331CF: LitI4 1
  loc_6331D4: ImpAdLdRf MemVar_74C23C
  loc_6331D7: AryLdPr
  loc_6331DA: MemLdUI1 global_0
  loc_6331DE: CI2UI1
  loc_6331E0: EqI2
  loc_6331E1: OrI4
  loc_6331E2: FLdI2 var_92
  loc_6331E5: FLdI2 var_90
  loc_6331E8: CI4UI1
  loc_6331E9: LitI4 2
  loc_6331EE: ImpAdLdRf MemVar_74C23C
  loc_6331F1: AryLdPr
  loc_6331F4: MemLdUI1 global_0
  loc_6331F8: CI2UI1
  loc_6331FA: EqI2
  loc_6331FB: OrI4
  loc_6331FC: BranchF loc_633314
  loc_6331FF: FLdI2 var_90
  loc_633202: CI4UI1
  loc_633203: LitI4 1
  loc_633208: ImpAdLdRf MemVar_74C23C
  loc_63320B: AryLdPr
  loc_63320E: MemLdUI1 global_0
  loc_633212: CI2UI1
  loc_633214: LitI2_Byte 0
  loc_633216: EqI2
  loc_633217: BranchF loc_633235
  loc_63321A: FLdI2 var_90
  loc_63321D: CI4UI1
  loc_63321E: LitI4 0
  loc_633223: ImpAdLdRf MemVar_74C23C
  loc_633226: AryLdPr
  loc_633229: MemLdUI1 global_0
  loc_63322D: CStrI2
  loc_63322F: FStStr var_8C
  loc_633232: Branch loc_633304
  loc_633235: FLdI2 var_90
  loc_633238: CI4UI1
  loc_633239: LitI4 2
  loc_63323E: ImpAdLdRf MemVar_74C23C
  loc_633241: AryLdPr
  loc_633244: MemLdUI1 global_0
  loc_633248: CI2UI1
  loc_63324A: LitI2_Byte 0
  loc_63324C: EqI2
  loc_63324D: BranchF loc_633297
  loc_633250: FLdI2 var_90
  loc_633253: CI4UI1
  loc_633254: LitI4 0
  loc_633259: ImpAdLdRf MemVar_74C23C
  loc_63325C: AryLdPr
  loc_63325F: MemLdUI1 global_0
  loc_633263: CStrI2
  loc_633265: FStStrNoPop var_A0
  loc_633268: LitStr "-"
  loc_63326B: ConcatStr
  loc_63326C: FStStrNoPop var_A4
  loc_63326F: FLdI2 var_90
  loc_633272: CI4UI1
  loc_633273: LitI4 1
  loc_633278: ImpAdLdRf MemVar_74C23C
  loc_63327B: AryLdPr
  loc_63327E: MemLdUI1 global_0
  loc_633282: CStrI2
  loc_633284: FStStrNoPop var_A8
  loc_633287: ConcatStr
  loc_633288: FStStr var_8C
  loc_63328B: FFreeStr var_A0 = "": var_A4 = ""
  loc_633294: Branch loc_633304
  loc_633297: FLdI2 var_90
  loc_63329A: CI4UI1
  loc_63329B: LitI4 0
  loc_6332A0: ImpAdLdRf MemVar_74C23C
  loc_6332A3: AryLdPr
  loc_6332A6: MemLdUI1 global_0
  loc_6332AA: CStrI2
  loc_6332AC: FStStrNoPop var_A0
  loc_6332AF: LitStr "-"
  loc_6332B2: ConcatStr
  loc_6332B3: FStStrNoPop var_A4
  loc_6332B6: FLdI2 var_90
  loc_6332B9: CI4UI1
  loc_6332BA: LitI4 1
  loc_6332BF: ImpAdLdRf MemVar_74C23C
  loc_6332C2: AryLdPr
  loc_6332C5: MemLdUI1 global_0
  loc_6332C9: CStrI2
  loc_6332CB: FStStrNoPop var_A8
  loc_6332CE: ConcatStr
  loc_6332CF: FStStrNoPop var_AC
  loc_6332D2: LitStr "-"
  loc_6332D5: ConcatStr
  loc_6332D6: FStStrNoPop var_B0
  loc_6332D9: FLdI2 var_90
  loc_6332DC: CI4UI1
  loc_6332DD: LitI4 2
  loc_6332E2: ImpAdLdRf MemVar_74C23C
  loc_6332E5: AryLdPr
  loc_6332E8: MemLdUI1 global_0
  loc_6332EC: CStrI2
  loc_6332EE: FStStrNoPop var_B4
  loc_6332F1: ConcatStr
  loc_6332F2: FStStr var_8C
  loc_6332F5: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_633304: FLdRfVar CargarCombo
  loc_633307: FLdRfVar var_8C
  loc_63330A: from_stack_2v = ValidarCombo(from_stack_1v)
  loc_63330F: LitI2_Byte &HFF
  loc_633311: FStI2 var_86
  loc_633314: FLdRfVar var_90
  loc_633317: NextI2 var_9C, loc_6331AF
  loc_63331C: FLdRfVar var_8E
  loc_63331F: NextI2 var_98, loc_633185
  loc_633324: LitI2_Byte 0
  loc_633326: ImpAdStI2 MemVar_74C3AA
  loc_633329: ExitProcCbHresult
End Function

Public Function ValidarCombo(sValor) '5FA5C4
  'Data Table: 44BCD0
  loc_5FA4FC: LitI2_Byte &HFF
  loc_5FA4FE: FStI2 var_86
  loc_5FA501: ImpAdLdI2 MemVar_74C3AA
  loc_5FA504: BranchF loc_5FA50A
  loc_5FA507: Branch loc_5FA593
  loc_5FA50A: LitI2_Byte 0
  loc_5FA50C: FLdRfVar var_88
  loc_5FA50F: FLdRfVar var_8E
  loc_5FA512: FLdPrThis
  loc_5FA513: VCallAd Control_ID_cmbLowProduct
  loc_5FA516: FStAdFunc var_8C
  loc_5FA519: FLdPr var_8C
  loc_5FA51C:  = Me.ListCount
  loc_5FA521: FLdI2 var_8E
  loc_5FA524: LitI2_Byte 1
  loc_5FA526: SubI2
  loc_5FA527: FFree1Ad var_8C
  loc_5FA52A: ForI2 var_92
  loc_5FA530: FLdI2 var_88
  loc_5FA533: FLdPrThis
  loc_5FA534: VCallAd Control_ID_cmbLowProduct
  loc_5FA537: FStAdFunc var_8C
  loc_5FA53A: FLdPr var_8C
  loc_5FA53D: Me.ListIndex = from_stack_1
  loc_5FA542: FFree1Ad var_8C
  loc_5FA545: FLdRfVar var_8E
  loc_5FA548: FLdPrThis
  loc_5FA549: VCallAd Control_ID_cmbLowProduct
  loc_5FA54C: FStAdFunc var_8C
  loc_5FA54F: FLdPr var_8C
  loc_5FA552:  = Me.ListIndex
  loc_5FA557: FLdI2 var_8E
  loc_5FA55A: LitI2_Byte &HFF
  loc_5FA55C: GtI2
  loc_5FA55D: FFree1Ad var_8C
  loc_5FA560: BranchF loc_5FA58B
  loc_5FA563: FLdRfVar var_98
  loc_5FA566: FLdPrThis
  loc_5FA567: VCallAd Control_ID_cmbLowProduct
  loc_5FA56A: FStAdFunc var_8C
  loc_5FA56D: FLdPr var_8C
  loc_5FA570:  = Me.Text
  loc_5FA575: ILdRf var_98
  loc_5FA578: ILdI4 sValor
  loc_5FA57B: EqStr
  loc_5FA57D: FFree1Str var_98
  loc_5FA580: FFree1Ad var_8C
  loc_5FA583: BranchF loc_5FA58B
  loc_5FA586: LitI2_Byte 0
  loc_5FA588: FStI2 var_86
  loc_5FA58B: FLdRfVar var_88
  loc_5FA58E: NextI2 var_92, loc_5FA530
  loc_5FA593: FLdI2 var_86
  loc_5FA596: BranchF loc_5FA5BB
  loc_5FA599: ImpAdLdI2 MemVar_74C3AA
  loc_5FA59C: BranchF loc_5FA5A2
  loc_5FA59F: Branch loc_5FA5BB
  loc_5FA5A2: LitVar_Missing var_A8
  loc_5FA5A5: PopAdLdVar
  loc_5FA5A6: ILdI4 sValor
  loc_5FA5A9: FLdPrThis
  loc_5FA5AA: VCallAd Control_ID_cmbLowProduct
  loc_5FA5AD: FStAdFunc var_8C
  loc_5FA5B0: FLdPr var_8C
  loc_5FA5B3: Me.AddItem from_stack_1, from_stack_2
  loc_5FA5B8: FFree1Ad var_8C
  loc_5FA5BB: ExitProcCbHresult
End Function

Public Function TieneTanque(sValor) '5F63C8
  'Data Table: 44BCD0
  loc_5F6318: LitI2_Byte 0
  loc_5F631A: FStI2 var_86
  loc_5F631D: LitI2_Byte 1
  loc_5F631F: FLdRfVar var_88
  loc_5F6322: LitI2_Byte &H10
  loc_5F6324: ForI2 var_8C
  loc_5F632A: FLdI2 var_88
  loc_5F632D: CI4UI1
  loc_5F632E: ImpAdLdRf MemVar_74C1D8
  loc_5F6331: Ary1LdUI1
  loc_5F6333: CR8I2
  loc_5F6334: LitStr "0"
  loc_5F6337: CR8Str
  loc_5F6339: NeR8
  loc_5F633A: BranchF loc_5F63BA
  loc_5F633D: ILdRf sValor
  loc_5F6340: CVarRef
  loc_5F6345: FLdRfVar var_AC
  loc_5F6348: ImpAdCallFPR4  = Trim()
  loc_5F634D: FLdRfVar var_AC
  loc_5F6350: FLdRfVar var_B0
  loc_5F6353: FLdI2 var_88
  loc_5F6356: CI4UI1
  loc_5F6357: ImpAdLdRf MemVar_74C1D8
  loc_5F635A: Ary1LdUI1
  loc_5F635C: CI2UI1
  loc_5F635E: ImpAdLdRf MemVar_74A220
  loc_5F6361: NewIfNullPr clsProducts
  loc_5F6369: FLdZeroAd var_B0
  loc_5F636C: CVarStr var_C0
  loc_5F636F: HardType
  loc_5F6370: EqVar var_D0
  loc_5F6374: FLdRfVar var_D4
  loc_5F6377: FLdRfVar var_D2
  loc_5F637A: ILdI4 sValor
  loc_5F637D: ImpAdLdRf MemVar_74A220
  loc_5F6380: NewIfNullPr clsProducts
  loc_5F6388: FLdI2 var_D2
  loc_5F638B: ImpAdLdRf MemVar_74A220
  loc_5F638E: NewIfNullPr clsProducts
  loc_5F6391: clsProducts.Caption = from_stack_1
  loc_5F6396: FLdI2 var_D4
  loc_5F6399: CVarBoolI2 var_E4
  loc_5F639D: OrVar var_F4
  loc_5F63A1: CBoolVarNull
  loc_5F63A3: FFreeVar var_AC = "": var_C0 = ""
  loc_5F63AC: BranchF loc_5F63BA
  loc_5F63AF: LitI2_Byte &HFF
  loc_5F63B1: FStI2 var_86
  loc_5F63B4: ExitProcCbHresult
  loc_5F63BA: FLdRfVar var_88
  loc_5F63BD: NextI2 var_8C, loc_5F632A
  loc_5F63C2: ExitProcCbHresult
End Function

Public Function ConfiguredTank() '63138C
  'Data Table: 44BCD0
  loc_6311EC: LitI2_Byte 1
  loc_6311EE: FLdRfVar var_88
  loc_6311F1: LitI2_Byte &H20
  loc_6311F3: ForI2 var_8E
  loc_6311F9: FLdI2 var_88
  loc_6311FC: CI4UI1
  loc_6311FD: ImpAdLdRf MemVar_74C1F4
  loc_631200: Ary1LdUI1
  loc_631202: CBoolUI1
  loc_631204: BranchF loc_631377
  loc_631207: LitI2_Byte 0
  loc_631209: FLdRfVar var_8A
  loc_63120C: FLdI2 var_88
  loc_63120F: CI4UI1
  loc_631210: ImpAdLdRf MemVar_74C0FC
  loc_631213: Ary1LdUI1
  loc_631215: CI2UI1
  loc_631217: ForI2 var_92
  loc_63121D: FLdRfVar ConfiguredTank
  loc_631220: FLdRfVar var_8A
  loc_631223: FLdRfVar var_88
  loc_631226: from_stack_3v = Proc_115_28_5D43F0(from_stack_1v, from_stack_2v)
  loc_63122B: FLdUI1
  loc_63122F: CI2UI1
  loc_631231: LitI2_Byte 0
  loc_631233: EqI2
  loc_631234: BranchF loc_63136F
  loc_631237: LitI2_Byte 0
  loc_631239: FStI2 var_86
  loc_63123C: LitI2_Byte &H41
  loc_63123E: FLdI2 var_8A
  loc_631241: AddI2
  loc_631242: CI4UI1
  loc_631243: FLdRfVar var_B8
  loc_631246: ImpAdCallFPR4  = Chr()
  loc_63124B: LitVar_Missing var_178
  loc_63124E: LitVar_Missing var_158
  loc_631251: LitVarStr var_128, "Error en la configuración"
  loc_631256: FStVarCopyObj var_138
  loc_631259: FLdRfVar var_138
  loc_63125C: LitI4 &H40
  loc_631261: ImpAdLdI4 MemVar_74BEE4
  loc_631264: LitStr " "
  loc_631267: ConcatStr
  loc_631268: FStStrNoPop var_98
  loc_63126B: FLdI2 var_88
  loc_63126E: CStrUI1
  loc_631270: FStStrNoPop var_9C
  loc_631273: ConcatStr
  loc_631274: FStStrNoPop var_A0
  loc_631277: LitStr " - "
  loc_63127A: ConcatStr
  loc_63127B: FStStrNoPop var_A4
  loc_63127E: ImpAdLdI4 MemVar_74BEDC
  loc_631281: ConcatStr
  loc_631282: FStStrNoPop var_A8
  loc_631285: LitStr " "
  loc_631288: ConcatStr
  loc_631289: CVarStr var_C8
  loc_63128C: FLdRfVar var_B8
  loc_63128F: ConcatVar var_D8
  loc_631293: LitVarStr var_E8, ", "
  loc_631298: ConcatVar var_F8
  loc_63129C: LitVarStr var_108, " no está correctamente configurado."
  loc_6312A1: ConcatVar var_118
  loc_6312A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6312AA: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_6312B7: FFreeVar var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = ""
  loc_6312CA: LitI2_Byte &HFF
  loc_6312CC: FLdRfVar var_184
  loc_6312CF: LitStr "Surt"
  loc_6312D2: FLdI2 var_88
  loc_6312D5: CStrUI1
  loc_6312D7: FStStrNoPop var_98
  loc_6312DA: ConcatStr
  loc_6312DB: FStStrNoPop var_9C
  loc_6312DE: LitStr "|"
  loc_6312E1: ConcatStr
  loc_6312E2: CVarStr var_C8
  loc_6312E5: LitI2_Byte &H41
  loc_6312E7: FLdI2 var_8A
  loc_6312EA: AddI2
  loc_6312EB: CI4UI1
  loc_6312EC: FLdRfVar var_B8
  loc_6312EF: ImpAdCallFPR4  = Chr()
  loc_6312F4: FLdRfVar var_B8
  loc_6312F7: ConcatVar var_D8
  loc_6312FB: FLdPrThis
  loc_6312FC: VCallAd Control_ID_treePump
  loc_6312FF: FStAdFunc var_17C
  loc_631302: FLdPr var_17C
  loc_631305: LateIdLdVar var_F8 DispID_9 0
  loc_63130C: CastAdVar Me
  loc_631310: FStAdFunc var_180
  loc_631313: FLdPr var_180
  loc_631316: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_63131B: FLdPr var_184
  loc_63131E: Me.Selected = from_stack_1b
  loc_631323: FFreeStr var_98 = ""
  loc_63132A: FFreeAd var_17C = "": var_180 = ""
  loc_631333: FFreeVar var_C8 = "": var_B8 = "": var_F8 = ""
  loc_63133E: LitI2_Byte 0
  loc_631340: PopTmpLdAd2 ConfiguredTank
  loc_631343: FLdI2 var_88
  loc_631346: CStrUI1
  loc_631348: PopTmpLdAdStr
  loc_63134C: from_stack_3v = Proc_115_25_5E9CC0(from_stack_1v, from_stack_2v)
  loc_631351: FFree1Str var_98
  loc_631354: FLdPrThis
  loc_631355: VCallAd Control_ID_treePump
  loc_631358: FStAdFunc var_17C
  loc_63135B: FLdPr var_17C
  loc_63135E: LateIdCall
  loc_631366: FFree1Ad var_17C
  loc_631369: ExitProcCbHresult
  loc_63136F: FLdRfVar var_8A
  loc_631372: NextI2 var_92, loc_63121D
  loc_631377: FLdRfVar var_88
  loc_63137A: NextI2 var_8E, loc_6311F9
  loc_63137F: LitI2_Byte &HFF
  loc_631381: FStI2 var_86
  loc_631384: ExitProcCbHresult
End Function

Private Function Proc_115_25_5E9CC0(arg_C, arg_10) '5E9CC0
  'Data Table: 44BCD0
  loc_5E9C54: LitVar_TRUE var_D4
  loc_5E9C57: LitVar_FALSE
  loc_5E9C5B: ILdRf arg_10
  loc_5E9C5E: CVarRef
  loc_5E9C63: FLdRfVar var_E4
  loc_5E9C66: ImpAdCallFPR4  = IIf(, , )
  loc_5E9C6B: FLdRfVar var_E4
  loc_5E9C6E: CBoolVar
  loc_5E9C70: FLdRfVar var_110
  loc_5E9C73: LitStr "Surt"
  loc_5E9C76: ILdI4 arg_C
  loc_5E9C79: ConcatStr
  loc_5E9C7A: CVarStr var_108
  loc_5E9C7D: FLdPr Me
  loc_5E9C80: VCallAd Control_ID_treePump
  loc_5E9C83: FStAdFunc var_E8
  loc_5E9C86: FLdPr var_E8
  loc_5E9C89: LateIdLdVar var_F8 DispID_9 0
  loc_5E9C90: CastAdVar Me
  loc_5E9C94: FStAdFunc var_10C
  loc_5E9C97: FLdPr var_10C
  loc_5E9C9A:  = Me.Nodes.ControlDefault
  loc_5E9C9F: FLdPr var_110
  loc_5E9CA2: Me.Expanded = from_stack_1b
  loc_5E9CA7: FFreeAd var_E8 = "": var_10C = ""
  loc_5E9CB0: FFreeVar var_B4 = "": var_D4 = "": var_F8 = "": var_108 = ""
  loc_5E9CBD: ExitProcHresult
  loc_5E9CBE: VCallFPR8 unk_4514EF
End Function

Private Function Proc_115_26_5DA3E0() '5DA3E0
  'Data Table: 44BCD0
  loc_5DA3A4: FLdPr Me
  loc_5DA3A7: MemLdStr global_244
  loc_5DA3AA: ImpAdCallFPR4 push Val()
  loc_5DA3AF: CR8R8
  loc_5DA3B0: ImpAdLdUI1
  loc_5DA3B4: CR8I2
  loc_5DA3B5: GtR4
  loc_5DA3B6: FLdPr Me
  loc_5DA3B9: MemLdStr global_244
  loc_5DA3BC: ImpAdCallFPR4 push Val()
  loc_5DA3C1: CR8R8
  loc_5DA3C2: LitI2_Byte 0
  loc_5DA3C4: CR8I2
  loc_5DA3C5: EqR4
  loc_5DA3C6: OrI4
  loc_5DA3C7: BranchF loc_5DA3D2
  loc_5DA3CA: LitI2_Byte 0
  loc_5DA3CC: FStI2 var_86
  loc_5DA3CF: Branch loc_5DA3D7
  loc_5DA3D2: LitI2_Byte &HFF
  loc_5DA3D4: FStI2 var_86
  loc_5DA3D7: ExitProcCbHresult
  loc_5DA3DD: IStI2 arg_3EC
End Function

Private Function Proc_115_27_5E31BC() '5E31BC
  'Data Table: 44BCD0
  loc_5E315C: FLdRfVar var_88
  loc_5E315F: FLdPr Me
  loc_5E3162: MemLdRfVar from_stack_1.global_54
  loc_5E3165: FLdPr Me
  loc_5E3168: MemLdRfVar from_stack_1.global_52
  loc_5E316B: from_stack_3v = Proc_115_28_5D43F0(from_stack_1v, from_stack_2v)
  loc_5E3170: FLdUI1
  loc_5E3174: FStUI1 var_86
  loc_5E3178: FLdUI1
  loc_5E317C: CI2UI1
  loc_5E317E: LitI2_Byte 0
  loc_5E3180: EqI2
  loc_5E3181: BranchF loc_5E319C
  loc_5E3184: LitStr vbNullString
  loc_5E3187: FLdPrThis
  loc_5E3188: VCallAd Control_ID_cmbLowProduct
  loc_5E318B: FStAdFunc var_8C
  loc_5E318E: FLdPr var_8C
  loc_5E3191: Me.Text = from_stack_1
  loc_5E3196: FFree1Ad var_8C
  loc_5E3199: Branch loc_5E31BA
  loc_5E319C: FLdUI1
  loc_5E31A0: CStrI2
  loc_5E31A2: FStStrNoPop var_90
  loc_5E31A5: FLdPrThis
  loc_5E31A6: VCallAd Control_ID_cmbLowProduct
  loc_5E31A9: FStAdFunc var_8C
  loc_5E31AC: FLdPr var_8C
  loc_5E31AF: Me.Text = from_stack_1
  loc_5E31B4: FFree1Str var_90
  loc_5E31B7: FFree1Ad var_8C
  loc_5E31BA: ExitProcHresult
End Function

Private Function Proc_115_28_5D43F0(arg_C, arg_10) '5D43F0
  'Data Table: 44BCD0
  loc_5D43CC: ILdI2 arg_C
  loc_5D43CF: CI4UI1
  loc_5D43D0: ILdI2 arg_10
  loc_5D43D3: CI4UI1
  loc_5D43D4: LitI4 0
  loc_5D43D9: FLdPr Me
  loc_5D43DC: MemLdRfVar from_stack_1.global_88
  loc_5D43DF: AryLdPr
  loc_5D43E2: MemLdUI1 global_0
  loc_5D43E6: FStUI1 var_86
  loc_5D43EA: ExitProcCbHresult
End Function

Private Function Proc_115_29_5D7E14() '5D7E14
  'Data Table: 44BCD0
  loc_5D7DE4: LitStr "Izquierda"
  loc_5D7DE7: LitI2_Byte 0
  loc_5D7DE9: FLdPrThis
  loc_5D7DEA: VCallAd Control_ID_cmbSideProduct
  loc_5D7DED: FStAdFunc var_88
  loc_5D7DF0: FLdPr var_88
  loc_5D7DF3: Me.List(from_stack_1) = from_stack_2
  loc_5D7DF8: FFree1Ad var_88
  loc_5D7DFB: LitStr "Derecha"
  loc_5D7DFE: LitI2_Byte 1
  loc_5D7E00: FLdPrThis
  loc_5D7E01: VCallAd Control_ID_cmbSideProduct
  loc_5D7E04: FStAdFunc var_88
  loc_5D7E07: FLdPr var_88
  loc_5D7E0A: Me.List(from_stack_1) = from_stack_2
  loc_5D7E0F: FFree1Ad var_88
  loc_5D7E12: ExitProcHresult
End Function

Private Function Proc_115_30_5D2C34(arg_C) '5D2C34
  'Data Table: 44BCD0
  loc_5D2C18: ILdI4 arg_C
  loc_5D2C1B: from_stack_2v = Proc_115_31_5F3958(from_stack_1v)
  loc_5D2C20: ILdI4 arg_C
  loc_5D2C23: from_stack_2v = Proc_115_32_603CCC(from_stack_1v)
  loc_5D2C28: ILdI4 arg_C
  loc_5D2C2B: from_stack_2v = Proc_115_33_5E228C(from_stack_1v)
  loc_5D2C30: ExitProcHresult
End Function

Private Function Proc_115_31_5F3958(arg_C) '5F3958
  'Data Table: 44BCD0
  loc_5F38A4: ILdRf arg_C
  loc_5F38A7: LitI4 1
  loc_5F38AC: EqI4
  loc_5F38AD: BranchF loc_5F3904
  loc_5F38B0: LitI2_Byte 1
  loc_5F38B2: FLdRfVar var_86
  loc_5F38B5: LitI2_Byte &H20
  loc_5F38B7: ForI2 var_8C
  loc_5F38BD: LitI2_Byte 0
  loc_5F38BF: FLdRfVar var_88
  loc_5F38C2: LitI2_Byte 3
  loc_5F38C4: ForI2 var_90
  loc_5F38CA: FLdI2 var_86
  loc_5F38CD: CI4UI1
  loc_5F38CE: FLdI2 var_88
  loc_5F38D1: CI4UI1
  loc_5F38D2: ImpAdLdRf MemVar_74C12C
  loc_5F38D5: AryLdPr
  loc_5F38D8: MemLdUI1 global_0
  loc_5F38DC: FLdI2 var_86
  loc_5F38DF: CI4UI1
  loc_5F38E0: FLdI2 var_88
  loc_5F38E3: CI4UI1
  loc_5F38E4: FLdPr Me
  loc_5F38E7: MemLdRfVar from_stack_1.global_56
  loc_5F38EA: AryLdPr
  loc_5F38ED: MemStUI1
  loc_5F38F1: FLdRfVar var_88
  loc_5F38F4: NextI2 var_90, loc_5F38CA
  loc_5F38F9: FLdRfVar var_86
  loc_5F38FC: NextI2 var_8C, loc_5F38BD
  loc_5F3901: Branch loc_5F3955
  loc_5F3904: LitI2_Byte 1
  loc_5F3906: FLdRfVar var_86
  loc_5F3909: LitI2_Byte &H20
  loc_5F390B: ForI2 var_94
  loc_5F3911: LitI2_Byte 0
  loc_5F3913: FLdRfVar var_88
  loc_5F3916: LitI2_Byte 3
  loc_5F3918: ForI2 var_98
  loc_5F391E: FLdI2 var_86
  loc_5F3921: CI4UI1
  loc_5F3922: FLdI2 var_88
  loc_5F3925: CI4UI1
  loc_5F3926: FLdPr Me
  loc_5F3929: MemLdRfVar from_stack_1.global_56
  loc_5F392C: AryLdPr
  loc_5F392F: MemLdUI1 global_0
  loc_5F3933: FLdI2 var_86
  loc_5F3936: CI4UI1
  loc_5F3937: FLdI2 var_88
  loc_5F393A: CI4UI1
  loc_5F393B: ImpAdLdRf MemVar_74C12C
  loc_5F393E: AryLdPr
  loc_5F3941: MemStUI1
  loc_5F3945: FLdRfVar var_88
  loc_5F3948: NextI2 var_98, loc_5F391E
  loc_5F394D: FLdRfVar var_86
  loc_5F3950: NextI2 var_94, loc_5F3911
  loc_5F3955: ExitProcHresult
End Function

Private Function Proc_115_32_603CCC(arg_C) '603CCC
  'Data Table: 44BCD0
  loc_603BE0: ILdRf arg_C
  loc_603BE3: LitI4 1
  loc_603BE8: EqI4
  loc_603BE9: BranchF loc_603C5D
  loc_603BEC: LitI2_Byte 1
  loc_603BEE: FLdRfVar var_86
  loc_603BF1: LitI2_Byte &H20
  loc_603BF3: ForI2 var_8E
  loc_603BF9: LitI2_Byte 0
  loc_603BFB: FLdRfVar var_88
  loc_603BFE: LitI2_Byte 3
  loc_603C00: ForI2 var_92
  loc_603C06: LitI2_Byte 0
  loc_603C08: FLdRfVar var_8A
  loc_603C0B: LitI2_Byte 2
  loc_603C0D: ForI2 var_96
  loc_603C13: FLdI2 var_86
  loc_603C16: CI4UI1
  loc_603C17: FLdI2 var_88
  loc_603C1A: CI4UI1
  loc_603C1B: FLdI2 var_8A
  loc_603C1E: CI4UI1
  loc_603C1F: ImpAdLdRf MemVar_74C14C
  loc_603C22: AryLdPr
  loc_603C25: MemLdUI1 global_0
  loc_603C29: FLdI2 var_86
  loc_603C2C: CI4UI1
  loc_603C2D: FLdI2 var_88
  loc_603C30: CI4UI1
  loc_603C31: FLdI2 var_8A
  loc_603C34: CI4UI1
  loc_603C35: FLdPr Me
  loc_603C38: MemLdRfVar from_stack_1.global_88
  loc_603C3B: AryLdPr
  loc_603C3E: MemStUI1
  loc_603C42: FLdRfVar var_8A
  loc_603C45: NextI2 var_96, loc_603C13
  loc_603C4A: FLdRfVar var_88
  loc_603C4D: NextI2 var_92, loc_603C06
  loc_603C52: FLdRfVar var_86
  loc_603C55: NextI2 var_8E, loc_603BF9
  loc_603C5A: Branch loc_603CCB
  loc_603C5D: LitI2_Byte 1
  loc_603C5F: FLdRfVar var_86
  loc_603C62: LitI2_Byte &H20
  loc_603C64: ForI2 var_9A
  loc_603C6A: LitI2_Byte 0
  loc_603C6C: FLdRfVar var_88
  loc_603C6F: LitI2_Byte 3
  loc_603C71: ForI2 var_9E
  loc_603C77: LitI2_Byte 0
  loc_603C79: FLdRfVar var_8A
  loc_603C7C: LitI2_Byte 2
  loc_603C7E: ForI2 var_A2
  loc_603C84: FLdI2 var_86
  loc_603C87: CI4UI1
  loc_603C88: FLdI2 var_88
  loc_603C8B: CI4UI1
  loc_603C8C: FLdI2 var_8A
  loc_603C8F: CI4UI1
  loc_603C90: FLdPr Me
  loc_603C93: MemLdRfVar from_stack_1.global_88
  loc_603C96: AryLdPr
  loc_603C99: MemLdUI1 global_0
  loc_603C9D: FLdI2 var_86
  loc_603CA0: CI4UI1
  loc_603CA1: FLdI2 var_88
  loc_603CA4: CI4UI1
  loc_603CA5: FLdI2 var_8A
  loc_603CA8: CI4UI1
  loc_603CA9: ImpAdLdRf MemVar_74C14C
  loc_603CAC: AryLdPr
  loc_603CAF: MemStUI1
  loc_603CB3: FLdRfVar var_8A
  loc_603CB6: NextI2 var_A2, loc_603C84
  loc_603CBB: FLdRfVar var_88
  loc_603CBE: NextI2 var_9E, loc_603C77
  loc_603CC3: FLdRfVar var_86
  loc_603CC6: NextI2 var_9A, loc_603C6A
  loc_603CCB: ExitProcHresult
End Function

Private Function Proc_115_33_5E228C(arg_C) '5E228C
  'Data Table: 44BCD0
  loc_5E2228: ILdRf arg_C
  loc_5E222B: LitI4 1
  loc_5E2230: EqI4
  loc_5E2231: BranchF loc_5E2261
  loc_5E2234: LitI2_Byte 1
  loc_5E2236: FLdRfVar var_86
  loc_5E2239: LitI2_Byte &H20
  loc_5E223B: ForI2 var_8A
  loc_5E2241: FLdI2 var_86
  loc_5E2244: CI4UI1
  loc_5E2245: ImpAdLdRf MemVar_74C19C
  loc_5E2248: Ary1LdUI1
  loc_5E224A: FLdI2 var_86
  loc_5E224D: CI4UI1
  loc_5E224E: FLdPr Me
  loc_5E2251: MemLdRfVar from_stack_1.global_168
  loc_5E2254: Ary1StUI1
  loc_5E2256: FLdRfVar var_86
  loc_5E2259: NextI2 var_8A, loc_5E2241
  loc_5E225E: Branch loc_5E228B
  loc_5E2261: LitI2_Byte 1
  loc_5E2263: FLdRfVar var_86
  loc_5E2266: LitI2_Byte &H20
  loc_5E2268: ForI2 var_8E
  loc_5E226E: FLdI2 var_86
  loc_5E2271: CI4UI1
  loc_5E2272: FLdPr Me
  loc_5E2275: MemLdRfVar from_stack_1.global_168
  loc_5E2278: Ary1LdUI1
  loc_5E227A: FLdI2 var_86
  loc_5E227D: CI4UI1
  loc_5E227E: ImpAdLdRf MemVar_74C19C
  loc_5E2281: Ary1StUI1
  loc_5E2283: FLdRfVar var_86
  loc_5E2286: NextI2 var_8E, loc_5E226E
  loc_5E228B: ExitProcHresult
End Function

Private Function Proc_115_34_620900() '620900
  'Data Table: 44BCD0
  loc_6207D0: FLdPrThis
  loc_6207D1: VCallAd Control_ID_treePump
  loc_6207D4: FStAdFunc var_90
  loc_6207D7: FLdPr var_90
  loc_6207DA: LateIdLdVar var_A0 DispID_9 0
  loc_6207E1: CastAdVar Me
  loc_6207E5: FStAdFunc var_A4
  loc_6207E8: FLdPr var_A4
  loc_6207EB: Me.Nodes.Clear
  loc_6207F0: FFreeAd var_90 = ""
  loc_6207F7: FFree1Var var_A0 = ""
  loc_6207FA: LitI2_Byte 1
  loc_6207FC: FLdRfVar var_86
  loc_6207FF: LitI2_Byte &H20
  loc_620801: ForI2 var_A8
  loc_620807: FLdI2 var_86
  loc_62080A: CI4UI1
  loc_62080B: ImpAdLdRf MemVar_74C1F4
  loc_62080E: Ary1LdUI1
  loc_620810: CBoolUI1
  loc_620812: BranchF loc_6208E7
  loc_620815: FLdRfVar var_158
  loc_620818: LitVar_Missing var_154
  loc_62081B: LitVarI2 var_134, 1
  loc_620820: ImpAdLdI4 MemVar_74BED4
  loc_620823: LitStr " "
  loc_620826: ConcatStr
  loc_620827: FStStrNoPop var_B0
  loc_62082A: FLdI2 var_86
  loc_62082D: CStrUI1
  loc_62082F: FStStrNoPop var_B4
  loc_620832: ConcatStr
  loc_620833: CVarStr var_114
  loc_620836: LitStr "Surt"
  loc_620839: FLdI2 var_86
  loc_62083C: CStrUI1
  loc_62083E: FStStrNoPop var_AC
  loc_620841: ConcatStr
  loc_620842: CVarStr var_104
  loc_620845: LitVar_Missing var_F4
  loc_620848: LitVar_Missing var_D4
  loc_62084B: FLdPrThis
  loc_62084C: VCallAd Control_ID_treePump
  loc_62084F: FStAdFunc var_90
  loc_620852: FLdPr var_90
  loc_620855: LateIdLdVar var_A0 DispID_9 0
  loc_62085C: CastAdVar Me
  loc_620860: FStAdFunc var_A4
  loc_620863: FLdPr var_A4
  loc_620866: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_62086B: FFreeStr var_AC = "": var_B0 = ""
  loc_620874: FFreeAd var_90 = "": var_A4 = ""
  loc_62087D: FFreeVar var_A0 = "": var_D4 = "": var_F4 = "": var_104 = "": var_114 = "": var_134 = ""
  loc_62088E: LitI2_Byte 0
  loc_620890: FLdRfVar var_88
  loc_620893: FLdI2 var_86
  loc_620896: CI4UI1
  loc_620897: ImpAdLdRf MemVar_74C0FC
  loc_62089A: Ary1LdUI1
  loc_62089C: CI2UI1
  loc_62089E: ForI2 var_15C
  loc_6208A4: LitI2_Byte &H41
  loc_6208A6: FLdI2 var_88
  loc_6208A9: AddI2
  loc_6208AA: CI4UI1
  loc_6208AB: FLdRfVar var_A0
  loc_6208AE: ImpAdCallFPR4  = Chr()
  loc_6208B3: FLdRfVar var_A0
  loc_6208B6: CStrVarTmp
  loc_6208B7: PopTmpLdAdStr
  loc_6208BB: LitStr "Surt"
  loc_6208BE: FLdI2 var_86
  loc_6208C1: CStrUI1
  loc_6208C3: FStStrNoPop var_AC
  loc_6208C6: ConcatStr
  loc_6208C7: PopTmpLdAdStr
  loc_6208CB: from_stack_3v = Proc_115_35_5F15C0(from_stack_1v, from_stack_2v)
  loc_6208D0: FFreeStr var_AC = "": var_B0 = ""
  loc_6208D9: FFree1Var var_A0 = ""
  loc_6208DC: FLdRfVar var_88
  loc_6208DF: NextI2 var_15C, loc_6208A4
  loc_6208E4: Branch loc_6208F6
  loc_6208E7: FLdI2 var_86
  loc_6208EA: LitI2_Byte 1
  loc_6208EC: SubI2
  loc_6208ED: CUI1I2
  loc_6208EF: ImpAdStUI1 MemVar_74C068
  loc_6208F3: Branch loc_6208FE
  loc_6208F6: FLdRfVar var_86
  loc_6208F9: NextI2 var_A8, loc_620807
  loc_6208FE: ExitProcHresult
End Function

Private Function Proc_115_35_5F15C0(arg_C, arg_10) '5F15C0
  'Data Table: 44BCD0
  loc_5F1544: FLdRfVar var_138
  loc_5F1547: LitVar_Missing var_130
  loc_5F154A: LitVarI2 var_110, 2
  loc_5F154F: ImpAdLdI4 MemVar_74BEDC
  loc_5F1552: LitStr " "
  loc_5F1555: ConcatStr
  loc_5F1556: FStStrNoPop var_8C
  loc_5F1559: ILdI4 arg_10
  loc_5F155C: ConcatStr
  loc_5F155D: CVarStr var_F0
  loc_5F1560: ILdI4 arg_C
  loc_5F1563: LitStr "|"
  loc_5F1566: ConcatStr
  loc_5F1567: FStStrNoPop var_88
  loc_5F156A: ILdI4 arg_10
  loc_5F156D: ConcatStr
  loc_5F156E: CVarStr var_E0
  loc_5F1571: LitVarI2 var_D0, 4
  loc_5F1576: ILdRf arg_C
  loc_5F1579: CVarRef
  loc_5F157E: FLdPrThis
  loc_5F157F: VCallAd Control_ID_treePump
  loc_5F1582: FStAdFunc var_90
  loc_5F1585: FLdPr var_90
  loc_5F1588: LateIdLdVar var_A0 DispID_9 0
  loc_5F158F: CastAdVar Me
  loc_5F1593: FStAdFunc var_134
  loc_5F1596: FLdPr var_134
  loc_5F1599: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_5F159E: FFreeStr var_88 = ""
  loc_5F15A5: FFreeAd var_90 = "": var_134 = ""
  loc_5F15AE: FFreeVar var_A0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_110 = ""
  loc_5F15BD: ExitProcHresult
End Function

Private Function Proc_115_36_62C708() '62C708
  'Data Table: 44BCD0
  loc_62C55C: FLdPrThis
  loc_62C55D: VCallAd Control_ID_cmbProduct
  loc_62C560: FStAdFunc var_8C
  loc_62C563: FLdPr var_8C
  loc_62C566: Me.Clear
  loc_62C56B: FFree1Ad var_8C
  loc_62C56E: FLdPr Me
  loc_62C571: MemLdI2 global_52
  loc_62C574: CI4UI1
  loc_62C575: ImpAdLdRf MemVar_74C1F4
  loc_62C578: Ary1LdUI1
  loc_62C57A: CI2UI1
  loc_62C57C: FStI2 var_88
  loc_62C57F: FLdPr Me
  loc_62C582: MemLdI2 global_52
  loc_62C585: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_62C58A: BranchF loc_62C625
  loc_62C58D: LitI2_Byte 1
  loc_62C58F: FLdRfVar var_86
  loc_62C592: FLdRfVar var_8E
  loc_62C595: ImpAdLdRf MemVar_74A220
  loc_62C598: NewIfNullPr clsProducts
  loc_62C59B: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62C5A0: FLdI2 var_8E
  loc_62C5A3: ForI2 var_92
  loc_62C5A9: FLdRfVar var_8E
  loc_62C5AC: FLdI2 var_86
  loc_62C5AF: ImpAdLdRf MemVar_74A220
  loc_62C5B2: NewIfNullPr clsProducts
  loc_62C5B5:  = clsProducts.hWnd
  loc_62C5BA: FLdI2 var_8E
  loc_62C5BD: BranchF loc_62C5ED
  loc_62C5C0: LitVar_Missing var_A8
  loc_62C5C3: PopAdLdVar
  loc_62C5C4: FLdRfVar var_98
  loc_62C5C7: FLdI2 var_86
  loc_62C5CA: ImpAdLdRf MemVar_74A220
  loc_62C5CD: NewIfNullPr clsProducts
  loc_62C5D5: ILdRf var_98
  loc_62C5D8: FLdPrThis
  loc_62C5D9: VCallAd Control_ID_cmbProduct
  loc_62C5DC: FStAdFunc var_8C
  loc_62C5DF: FLdPr var_8C
  loc_62C5E2: Me.AddItem from_stack_1, from_stack_2
  loc_62C5E7: FFree1Str var_98
  loc_62C5EA: FFree1Ad var_8C
  loc_62C5ED: FLdRfVar var_86
  loc_62C5F0: NextI2 var_92, loc_62C5A9
  loc_62C5F5: LitVar_Missing var_A8
  loc_62C5F8: PopAdLdVar
  loc_62C5F9: FLdRfVar var_98
  loc_62C5FC: FLdI2 var_86
  loc_62C5FF: ImpAdLdRf MemVar_74A220
  loc_62C602: NewIfNullPr clsProducts
  loc_62C60A: ILdRf var_98
  loc_62C60D: FLdPrThis
  loc_62C60E: VCallAd Control_ID_cmbProduct
  loc_62C611: FStAdFunc var_8C
  loc_62C614: FLdPr var_8C
  loc_62C617: Me.AddItem from_stack_1, from_stack_2
  loc_62C61C: FFree1Str var_98
  loc_62C61F: FFree1Ad var_8C
  loc_62C622: Branch loc_62C705
  loc_62C625: FLdI2 var_88
  loc_62C628: LitI2_Byte 7
  loc_62C62A: LtI2
  loc_62C62B: BranchF loc_62C69C
  loc_62C62E: LitI2_Byte 1
  loc_62C630: FLdRfVar var_86
  loc_62C633: FLdRfVar var_8E
  loc_62C636: ImpAdLdRf MemVar_74A220
  loc_62C639: NewIfNullPr clsProducts
  loc_62C63C: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62C641: FLdI2 var_8E
  loc_62C644: ForI2 var_AC
  loc_62C64A: FLdRfVar var_8E
  loc_62C64D: FLdI2 var_86
  loc_62C650: ImpAdLdRf MemVar_74A220
  loc_62C653: NewIfNullPr clsProducts
  loc_62C656:  = clsProducts.Name
  loc_62C65B: FLdI2 var_8E
  loc_62C65E: LitI2_Byte 7
  loc_62C660: LtI2
  loc_62C661: BranchF loc_62C691
  loc_62C664: LitVar_Missing var_A8
  loc_62C667: PopAdLdVar
  loc_62C668: FLdRfVar var_98
  loc_62C66B: FLdI2 var_86
  loc_62C66E: ImpAdLdRf MemVar_74A220
  loc_62C671: NewIfNullPr clsProducts
  loc_62C679: ILdRf var_98
  loc_62C67C: FLdPrThis
  loc_62C67D: VCallAd Control_ID_cmbProduct
  loc_62C680: FStAdFunc var_8C
  loc_62C683: FLdPr var_8C
  loc_62C686: Me.AddItem from_stack_1, from_stack_2
  loc_62C68B: FFree1Str var_98
  loc_62C68E: FFree1Ad var_8C
  loc_62C691: FLdRfVar var_86
  loc_62C694: NextI2 var_AC, loc_62C64A
  loc_62C699: Branch loc_62C705
  loc_62C69C: LitI2_Byte 1
  loc_62C69E: FLdRfVar var_86
  loc_62C6A1: FLdRfVar var_8E
  loc_62C6A4: ImpAdLdRf MemVar_74A220
  loc_62C6A7: NewIfNullPr clsProducts
  loc_62C6AA: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62C6AF: FLdI2 var_8E
  loc_62C6B2: ForI2 var_B0
  loc_62C6B8: FLdRfVar var_8E
  loc_62C6BB: FLdI2 var_86
  loc_62C6BE: ImpAdLdRf MemVar_74A220
  loc_62C6C1: NewIfNullPr clsProducts
  loc_62C6C4:  = clsProducts.hWnd
  loc_62C6C9: FLdI2 var_8E
  loc_62C6CC: NotI4
  loc_62C6CD: BranchF loc_62C6FD
  loc_62C6D0: LitVar_Missing var_A8
  loc_62C6D3: PopAdLdVar
  loc_62C6D4: FLdRfVar var_98
  loc_62C6D7: FLdI2 var_86
  loc_62C6DA: ImpAdLdRf MemVar_74A220
  loc_62C6DD: NewIfNullPr clsProducts
  loc_62C6E5: ILdRf var_98
  loc_62C6E8: FLdPrThis
  loc_62C6E9: VCallAd Control_ID_cmbProduct
  loc_62C6EC: FStAdFunc var_8C
  loc_62C6EF: FLdPr var_8C
  loc_62C6F2: Me.AddItem from_stack_1, from_stack_2
  loc_62C6F7: FFree1Str var_98
  loc_62C6FA: FFree1Ad var_8C
  loc_62C6FD: FLdRfVar var_86
  loc_62C700: NextI2 var_B0, loc_62C6B8
  loc_62C705: ExitProcHresult
End Function

Private Function Proc_115_37_5ED728() '5ED728
  'Data Table: 44BCD0
  loc_5ED69C: FLdRfVar var_9E
  loc_5ED69F: FLdPrThis
  loc_5ED6A0: VCallAd Control_ID_tabConfiguration
  loc_5ED6A3: FStAdFunc var_88
  loc_5ED6A6: FLdPr var_88
  loc_5ED6A9: LateIdLdVar var_98 DispID_15 0
  loc_5ED6B0: CastAdVar Me
  loc_5ED6B4: FStAdFunc var_9C
  loc_5ED6B7: FLdPr var_9C
  loc_5ED6BA:  = Me.Tab.Index
  loc_5ED6BF: FLdI2 var_9E
  loc_5ED6C2: LitI2_Byte 1
  loc_5ED6C4: EqI2
  loc_5ED6C5: FFreeAd var_88 = ""
  loc_5ED6CC: FFree1Var var_98 = ""
  loc_5ED6CF: BranchF loc_5ED6E2
  loc_5ED6D2: LitI4 1
  loc_5ED6D7: PopTmpLdAdStr var_A4
  loc_5ED6DA: from_stack_2v = Proc_115_40_64B7F8(from_stack_1v)
  loc_5ED6DF: Branch loc_5ED725
  loc_5ED6E2: FLdRfVar var_9E
  loc_5ED6E5: FLdPrThis
  loc_5ED6E6: VCallAd Control_ID_tabConfiguration
  loc_5ED6E9: FStAdFunc var_88
  loc_5ED6EC: FLdPr var_88
  loc_5ED6EF: LateIdLdVar var_98 DispID_15 0
  loc_5ED6F6: CastAdVar Me
  loc_5ED6FA: FStAdFunc var_9C
  loc_5ED6FD: FLdPr var_9C
  loc_5ED700:  = Me.Tab.Index
  loc_5ED705: FLdI2 var_9E
  loc_5ED708: LitI2_Byte 2
  loc_5ED70A: EqI2
  loc_5ED70B: FFreeAd var_88 = ""
  loc_5ED712: FFree1Var var_98 = ""
  loc_5ED715: BranchF loc_5ED725
  loc_5ED718: LitI4 2
  loc_5ED71D: PopTmpLdAdStr var_A4
  loc_5ED720: from_stack_2v = Proc_115_40_64B7F8(from_stack_1v)
  loc_5ED725: ExitProcHresult
End Function

Private Function Proc_115_38_5DF43C() '5DF43C
  'Data Table: 44BCD0
  loc_5DF3E8: LitStr vbNullString
  loc_5DF3EB: FLdPrThis
  loc_5DF3EC: VCallAd Control_ID_cmbProduct
  loc_5DF3EF: FStAdFunc var_88
  loc_5DF3F2: FLdPr var_88
  loc_5DF3F5: Me.Text = from_stack_1
  loc_5DF3FA: FFree1Ad var_88
  loc_5DF3FD: LitStr vbNullString
  loc_5DF400: FLdPrThis
  loc_5DF401: VCallAd Control_ID_cmbLowProduct
  loc_5DF404: FStAdFunc var_88
  loc_5DF407: FLdPr var_88
  loc_5DF40A: Me.Text = from_stack_1
  loc_5DF40F: FFree1Ad var_88
  loc_5DF412: LitStr vbNullString
  loc_5DF415: FLdPrThis
  loc_5DF416: VCallAd Control_ID_cmbSideProduct
  loc_5DF419: FStAdFunc var_88
  loc_5DF41C: FLdPr var_88
  loc_5DF41F: Me.Text = from_stack_1
  loc_5DF424: FFree1Ad var_88
  loc_5DF427: FLdPrThis
  loc_5DF428: VCallAd Control_ID_cmbLowProduct
  loc_5DF42B: FStAdFunc var_88
  loc_5DF42E: FLdPr var_88
  loc_5DF431: Me.Clear
  loc_5DF436: FFree1Ad var_88
  loc_5DF439: ExitProcHresult
  loc_5DF43A: ExitProcR8
End Function

Private Function Proc_115_39_62A000(arg_C, arg_10) '62A000
  'Data Table: 44BCD0
  loc_629E64: FLdPr Me
  loc_629E67: MemLdI2 global_52
  loc_629E6A: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_629E6F: BranchF loc_629F3B
  loc_629E72: FLdRfVar var_86
  loc_629E75: ILdI2 arg_C
  loc_629E78: CI4UI1
  loc_629E79: ILdI2 arg_10
  loc_629E7C: CI4UI1
  loc_629E7D: FLdPr Me
  loc_629E80: MemLdRfVar from_stack_1.global_56
  loc_629E83: AryLdPr
  loc_629E86: MemLdUI1 global_0
  loc_629E8A: CI2UI1
  loc_629E8C: ImpAdLdRf MemVar_74A220
  loc_629E8F: NewIfNullPr clsProducts
  loc_629E92:  = clsProducts.Name
  loc_629E97: FLdI2 var_86
  loc_629E9A: LitI2_Byte 9
  loc_629E9C: EqI2
  loc_629E9D: BranchF loc_629EE0
  loc_629EA0: FLdRfVar var_8C
  loc_629EA3: ILdI2 arg_C
  loc_629EA6: CI4UI1
  loc_629EA7: ILdI2 arg_10
  loc_629EAA: CI4UI1
  loc_629EAB: FLdPr Me
  loc_629EAE: MemLdRfVar from_stack_1.global_56
  loc_629EB1: AryLdPr
  loc_629EB4: MemLdUI1 global_0
  loc_629EB8: CI2UI1
  loc_629EBA: ImpAdLdRf MemVar_74A220
  loc_629EBD: NewIfNullPr clsProducts
  loc_629EC5: ILdRf var_8C
  loc_629EC8: FLdPrThis
  loc_629EC9: VCallAd Control_ID_cmbProduct
  loc_629ECC: FStAdFunc var_90
  loc_629ECF: FLdPr var_90
  loc_629ED2: Me.Text = from_stack_1
  loc_629ED7: FFree1Str var_8C
  loc_629EDA: FFree1Ad var_90
  loc_629EDD: Branch loc_629F38
  loc_629EE0: LitStr vbNullString
  loc_629EE3: FLdPrThis
  loc_629EE4: VCallAd Control_ID_cmbProduct
  loc_629EE7: FStAdFunc var_90
  loc_629EEA: FLdPr var_90
  loc_629EED: Me.Text = from_stack_1
  loc_629EF2: FFree1Ad var_90
  loc_629EF5: LitI2_Byte 0
  loc_629EF7: CUI1I2
  loc_629EF9: FLdPr Me
  loc_629EFC: MemLdI2 global_52
  loc_629EFF: CI4UI1
  loc_629F00: FLdPr Me
  loc_629F03: MemLdI2 global_54
  loc_629F06: CI4UI1
  loc_629F07: FLdPr Me
  loc_629F0A: MemLdRfVar from_stack_1.global_56
  loc_629F0D: AryLdPr
  loc_629F10: MemStUI1
  loc_629F14: LitI2_Byte 0
  loc_629F16: CUI1I2
  loc_629F18: FLdPr Me
  loc_629F1B: MemLdI2 global_52
  loc_629F1E: CI4UI1
  loc_629F1F: FLdPr Me
  loc_629F22: MemLdI2 global_54
  loc_629F25: CI4UI1
  loc_629F26: LitI4 0
  loc_629F2B: FLdPr Me
  loc_629F2E: MemLdRfVar from_stack_1.global_88
  loc_629F31: AryLdPr
  loc_629F34: MemStUI1
  loc_629F38: Branch loc_629FFF
  loc_629F3B: FLdRfVar var_86
  loc_629F3E: ILdI2 arg_C
  loc_629F41: CI4UI1
  loc_629F42: ILdI2 arg_10
  loc_629F45: CI4UI1
  loc_629F46: FLdPr Me
  loc_629F49: MemLdRfVar from_stack_1.global_56
  loc_629F4C: AryLdPr
  loc_629F4F: MemLdUI1 global_0
  loc_629F53: CI2UI1
  loc_629F55: ImpAdLdRf MemVar_74A220
  loc_629F58: NewIfNullPr clsProducts
  loc_629F5B:  = clsProducts.hWnd
  loc_629F60: FLdI2 var_86
  loc_629F63: NotI4
  loc_629F64: BranchF loc_629FA7
  loc_629F67: FLdRfVar var_8C
  loc_629F6A: ILdI2 arg_C
  loc_629F6D: CI4UI1
  loc_629F6E: ILdI2 arg_10
  loc_629F71: CI4UI1
  loc_629F72: FLdPr Me
  loc_629F75: MemLdRfVar from_stack_1.global_56
  loc_629F78: AryLdPr
  loc_629F7B: MemLdUI1 global_0
  loc_629F7F: CI2UI1
  loc_629F81: ImpAdLdRf MemVar_74A220
  loc_629F84: NewIfNullPr clsProducts
  loc_629F8C: ILdRf var_8C
  loc_629F8F: FLdPrThis
  loc_629F90: VCallAd Control_ID_cmbProduct
  loc_629F93: FStAdFunc var_90
  loc_629F96: FLdPr var_90
  loc_629F99: Me.Text = from_stack_1
  loc_629F9E: FFree1Str var_8C
  loc_629FA1: FFree1Ad var_90
  loc_629FA4: Branch loc_629FFF
  loc_629FA7: LitStr vbNullString
  loc_629FAA: FLdPrThis
  loc_629FAB: VCallAd Control_ID_cmbProduct
  loc_629FAE: FStAdFunc var_90
  loc_629FB1: FLdPr var_90
  loc_629FB4: Me.Text = from_stack_1
  loc_629FB9: FFree1Ad var_90
  loc_629FBC: LitI2_Byte 0
  loc_629FBE: CUI1I2
  loc_629FC0: FLdPr Me
  loc_629FC3: MemLdI2 global_52
  loc_629FC6: CI4UI1
  loc_629FC7: FLdPr Me
  loc_629FCA: MemLdI2 global_54
  loc_629FCD: CI4UI1
  loc_629FCE: FLdPr Me
  loc_629FD1: MemLdRfVar from_stack_1.global_56
  loc_629FD4: AryLdPr
  loc_629FD7: MemStUI1
  loc_629FDB: LitI2_Byte 0
  loc_629FDD: CUI1I2
  loc_629FDF: FLdPr Me
  loc_629FE2: MemLdI2 global_52
  loc_629FE5: CI4UI1
  loc_629FE6: FLdPr Me
  loc_629FE9: MemLdI2 global_54
  loc_629FEC: CI4UI1
  loc_629FED: LitI4 0
  loc_629FF2: FLdPr Me
  loc_629FF5: MemLdRfVar from_stack_1.global_88
  loc_629FF8: AryLdPr
  loc_629FFB: MemStUI1
  loc_629FFF: ExitProcHresult
End Function

Private Function Proc_115_40_64B7F8(arg_C) '64B7F8
  'Data Table: 44BCD0
  loc_64B5A0: from_stack_1v = Proc_115_42_634ADC()
  loc_64B5A5: LitI2_Byte 1
  loc_64B5A7: FLdRfVar var_86
  loc_64B5AA: ImpAdLdRf MemVar_74C12C
  loc_64B5AD: LitI2_Byte 1
  loc_64B5AF: FnUBound
  loc_64B5B1: CI2I4
  loc_64B5B2: ForI2 var_8C
  loc_64B5B8: FLdI2 var_86
  loc_64B5BB: CI4UI1
  loc_64B5BC: ImpAdLdRf MemVar_74C1F4
  loc_64B5BF: Ary1LdUI1
  loc_64B5C1: CBoolUI1
  loc_64B5C3: BranchF loc_64B7EC
  loc_64B5C6: LitI2_Byte 0
  loc_64B5C8: FLdRfVar var_88
  loc_64B5CB: FLdI2 var_86
  loc_64B5CE: CI4UI1
  loc_64B5CF: ImpAdLdRf MemVar_74C0FC
  loc_64B5D2: Ary1LdUI1
  loc_64B5D4: CI2UI1
  loc_64B5D6: ForI2 var_90
  loc_64B5DC: FLdPrThis
  loc_64B5DD: VCallAd Control_ID_gridActualConfiguration
  loc_64B5E0: FStAdFunc var_94
  loc_64B5E3: FLdPr var_94
  loc_64B5E6: LateIdLdVar var_A4 DispID_4 0
  loc_64B5ED: CI4Var
  loc_64B5EF: LitI4 1
  loc_64B5F4: AddI4
  loc_64B5F5: CVarI4
  loc_64B5F9: PopAdLdVar
  loc_64B5FA: FLdPrThis
  loc_64B5FB: VCallAd Control_ID_gridActualConfiguration
  loc_64B5FE: FStAdFunc var_B8
  loc_64B601: FLdPr var_B8
  loc_64B604: LateIdSt
  loc_64B609: FFreeAd var_94 = ""
  loc_64B610: FFree1Var var_A4 = ""
  loc_64B613: FLdI2 var_88
  loc_64B616: LitI2_Byte &H41
  loc_64B618: AddI2
  loc_64B619: CI4UI1
  loc_64B61A: FLdRfVar var_A4
  loc_64B61D: ImpAdCallFPR4  = Chr()
  loc_64B622: FLdI2 var_86
  loc_64B625: CI4UI1
  loc_64B626: FLdI2 var_88
  loc_64B629: CI4UI1
  loc_64B62A: FLdPr Me
  loc_64B62D: MemLdRfVar from_stack_1.global_56
  loc_64B630: AryLdRf
  loc_64B633: CVarRef
  loc_64B638: FLdI2 var_86
  loc_64B63B: CI4UI1
  loc_64B63C: FLdI2 var_88
  loc_64B63F: CI4UI1
  loc_64B640: ImpAdLdRf MemVar_74C12C
  loc_64B643: AryLdRf
  loc_64B646: CVarRef
  loc_64B64B: ILdI4 arg_C
  loc_64B64E: LitI4 1
  loc_64B653: EqI4
  loc_64B654: CVarBoolI2 var_B4
  loc_64B658: FLdRfVar var_E8
  loc_64B65B: ImpAdCallFPR4  = IIf(, , )
  loc_64B660: FLdRfVar var_EC
  loc_64B663: FLdRfVar var_E8
  loc_64B666: CI2Var
  loc_64B667: ImpAdLdRf MemVar_74A220
  loc_64B66A: NewIfNullPr clsProducts
  loc_64B672: FLdI2 var_86
  loc_64B675: CI4UI1
  loc_64B676: FLdI2 var_88
  loc_64B679: CI4UI1
  loc_64B67A: LitI4 0
  loc_64B67F: FLdPr Me
  loc_64B682: MemLdRfVar from_stack_1.global_88
  loc_64B685: AryLdRf
  loc_64B688: CVarRef
  loc_64B68D: FLdI2 var_86
  loc_64B690: CI4UI1
  loc_64B691: FLdI2 var_88
  loc_64B694: CI4UI1
  loc_64B695: LitI4 0
  loc_64B69A: ImpAdLdRf MemVar_74C14C
  loc_64B69D: AryLdRf
  loc_64B6A0: CVarRef
  loc_64B6A5: ILdI4 arg_C
  loc_64B6A8: LitI4 1
  loc_64B6AD: EqI4
  loc_64B6AE: CVarBoolI2 var_FC
  loc_64B6B2: FLdRfVar var_12C
  loc_64B6B5: ImpAdCallFPR4  = IIf(, , )
  loc_64B6BA: FLdI2 var_86
  loc_64B6BD: CI4UI1
  loc_64B6BE: FLdI2 var_88
  loc_64B6C1: CI4UI1
  loc_64B6C2: LitI4 0
  loc_64B6C7: FLdPr Me
  loc_64B6CA: MemLdRfVar from_stack_1.global_128
  loc_64B6CD: AryLdRf
  loc_64B6D0: CVarRef
  loc_64B6D5: FLdI2 var_86
  loc_64B6D8: CI4UI1
  loc_64B6D9: FLdI2 var_88
  loc_64B6DC: CI4UI1
  loc_64B6DD: LitI4 0
  loc_64B6E2: ImpAdLdRf MemVar_74C174
  loc_64B6E5: AryLdRf
  loc_64B6E8: CVarRef
  loc_64B6ED: ILdI4 arg_C
  loc_64B6F0: LitI4 1
  loc_64B6F5: EqI4
  loc_64B6F6: CVarBoolI2 var_13C
  loc_64B6FA: FLdRfVar var_16C
  loc_64B6FD: ImpAdCallFPR4  = IIf(, , )
  loc_64B702: LitVarStr var_1AC, "Derecha"
  loc_64B707: FStVarCopyObj var_1BC
  loc_64B70A: FLdRfVar var_1BC
  loc_64B70D: LitVarStr var_18C, "Izquierda"
  loc_64B712: FStVarCopyObj var_19C
  loc_64B715: FLdRfVar var_19C
  loc_64B718: FLdI2 var_86
  loc_64B71B: CI4UI1
  loc_64B71C: ImpAdLdRf MemVar_74C19C
  loc_64B71F: Ary1LdUI1
  loc_64B721: CI2UI1
  loc_64B723: LitI2_Byte 0
  loc_64B725: EqI2
  loc_64B726: CVarBoolI2 var_17C
  loc_64B72A: FLdRfVar var_1CC
  loc_64B72D: ImpAdCallFPR4  = IIf(, , )
  loc_64B732: LitVarStr var_20C, "Derecha"
  loc_64B737: FStVarCopyObj var_21C
  loc_64B73A: FLdRfVar var_21C
  loc_64B73D: LitVarStr var_1EC, "Izquierda"
  loc_64B742: FStVarCopyObj var_1FC
  loc_64B745: FLdRfVar var_1FC
  loc_64B748: FLdI2 var_86
  loc_64B74B: CI4UI1
  loc_64B74C: FLdPr Me
  loc_64B74F: MemLdRfVar from_stack_1.global_168
  loc_64B752: Ary1LdUI1
  loc_64B754: CI2UI1
  loc_64B756: LitI2_Byte 0
  loc_64B758: EqI2
  loc_64B759: CVarBoolI2 var_1DC
  loc_64B75D: FLdRfVar var_22C
  loc_64B760: ImpAdCallFPR4  = IIf(, , )
  loc_64B765: FLdRfVar var_22C
  loc_64B768: FLdRfVar var_1CC
  loc_64B76B: ILdI4 arg_C
  loc_64B76E: LitI4 1
  loc_64B773: EqI4
  loc_64B774: CVarBoolI2 var_23C
  loc_64B778: FLdRfVar var_24C
  loc_64B77B: ImpAdCallFPR4  = IIf(, , )
  loc_64B780: FLdRfVar var_24C
  loc_64B783: CStrVarTmp
  loc_64B784: PopTmpLdAdStr
  loc_64B788: FLdRfVar var_16C
  loc_64B78B: CStrVarTmp
  loc_64B78C: PopTmpLdAdStr
  loc_64B790: FLdRfVar var_12C
  loc_64B793: CStrVarTmp
  loc_64B794: PopTmpLdAdStr
  loc_64B798: FLdZeroAd var_EC
  loc_64B79B: PopTmpLdAdStr
  loc_64B79F: FLdRfVar var_A4
  loc_64B7A2: CStrVarTmp
  loc_64B7A3: PopTmpLdAdStr
  loc_64B7A7: FLdRfVar var_86
  loc_64B7AA: from_stack_5v = Proc_115_41_625738(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_64B7AF: FFreeStr var_250 = "": var_254 = "": var_258 = "": var_25C = ""
  loc_64B7BC: FFreeVar var_B4 = "": var_E8 = "": var_FC = "": var_13C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_1CC = "": var_22C = "": var_A4 = "": var_12C = "": var_16C = ""
  loc_64B7E1: FLdRfVar var_88
  loc_64B7E4: NextI2 var_90, loc_64B5DC
  loc_64B7E9: Branch loc_64B7EF
  loc_64B7EC: Branch loc_64B7F7
  loc_64B7EF: FLdRfVar var_86
  loc_64B7F2: NextI2 var_8C, loc_64B5B8
  loc_64B7F7: ExitProcHresult
End Function

Private Function Proc_115_41_625738(arg_C, arg_10, arg_14, arg_18) '625738
  'Data Table: 44BCD0
  loc_6255BC: FLdPrThis
  loc_6255BD: VCallAd Control_ID_gridActualConfiguration
  loc_6255C0: FStAdFunc var_88
  loc_6255C3: FLdPr var_88
  loc_6255C6: LateIdLdVar var_98 DispID_4 0
  loc_6255CD: CI4Var
  loc_6255CF: LitI4 1
  loc_6255D4: SubI4
  loc_6255D5: CVarI4
  loc_6255D9: PopAdLdVar
  loc_6255DA: LitVarI4
  loc_6255E2: PopAdLdVar
  loc_6255E3: ILdI2 arg_C
  loc_6255E6: CStrUI1
  loc_6255E8: CVarStr var_C8
  loc_6255EB: PopAdLdVar
  loc_6255EC: FLdPrThis
  loc_6255ED: VCallAd Control_ID_gridActualConfiguration
  loc_6255F0: FStAdFunc var_CC
  loc_6255F3: FLdPr var_CC
  loc_6255F6: LateIdCallSt
  loc_6255FE: FFreeAd var_88 = ""
  loc_625605: FFreeVar var_98 = ""
  loc_62560C: FLdPrThis
  loc_62560D: VCallAd Control_ID_gridActualConfiguration
  loc_625610: FStAdFunc var_88
  loc_625613: FLdPr var_88
  loc_625616: LateIdLdVar var_98 DispID_4 0
  loc_62561D: CI4Var
  loc_62561F: LitI4 1
  loc_625624: SubI4
  loc_625625: CVarI4
  loc_625629: PopAdLdVar
  loc_62562A: LitVarI4
  loc_625632: PopAdLdVar
  loc_625633: ILdRf arg_10
  loc_625636: CDargRef
  loc_62563A: FLdPrThis
  loc_62563B: VCallAd Control_ID_gridActualConfiguration
  loc_62563E: FStAdFunc var_CC
  loc_625641: FLdPr var_CC
  loc_625644: LateIdCallSt
  loc_62564C: FFreeAd var_88 = ""
  loc_625653: FFree1Var var_98 = ""
  loc_625656: FLdPrThis
  loc_625657: VCallAd Control_ID_gridActualConfiguration
  loc_62565A: FStAdFunc var_88
  loc_62565D: FLdPr var_88
  loc_625660: LateIdLdVar var_98 DispID_4 0
  loc_625667: CI4Var
  loc_625669: LitI4 1
  loc_62566E: SubI4
  loc_62566F: CVarI4
  loc_625673: PopAdLdVar
  loc_625674: LitVarI4
  loc_62567C: PopAdLdVar
  loc_62567D: ILdRf arg_14
  loc_625680: CDargRef
  loc_625684: FLdPrThis
  loc_625685: VCallAd Control_ID_gridActualConfiguration
  loc_625688: FStAdFunc var_CC
  loc_62568B: FLdPr var_CC
  loc_62568E: LateIdCallSt
  loc_625696: FFreeAd var_88 = ""
  loc_62569D: FFree1Var var_98 = ""
  loc_6256A0: FLdPrThis
  loc_6256A1: VCallAd Control_ID_gridActualConfiguration
  loc_6256A4: FStAdFunc var_88
  loc_6256A7: FLdPr var_88
  loc_6256AA: LateIdLdVar var_98 DispID_4 0
  loc_6256B1: CI4Var
  loc_6256B3: LitI4 1
  loc_6256B8: SubI4
  loc_6256B9: CVarI4
  loc_6256BD: PopAdLdVar
  loc_6256BE: LitVarI4
  loc_6256C6: PopAdLdVar
  loc_6256C7: ILdRf arg_18
  loc_6256CA: CDargRef
  loc_6256CE: FLdPrThis
  loc_6256CF: VCallAd Control_ID_gridActualConfiguration
  loc_6256D2: FStAdFunc var_CC
  loc_6256D5: FLdPr var_CC
  loc_6256D8: LateIdCallSt
  loc_6256E0: FFreeAd var_88 = ""
  loc_6256E7: FFree1Var var_98 = ""
  loc_6256EA: FLdPrThis
  loc_6256EB: VCallAd Control_ID_gridActualConfiguration
  loc_6256EE: FStAdFunc var_88
  loc_6256F1: FLdPr var_88
  loc_6256F4: LateIdLdVar var_98 DispID_4 0
  loc_6256FB: CI4Var
  loc_6256FD: LitI4 1
  loc_625702: SubI4
  loc_625703: CVarI4
  loc_625707: PopAdLdVar
  loc_625708: LitVarI4
  loc_625710: PopAdLdVar
  loc_625711: ILdRf arg_20
  loc_625714: CDargRef
  loc_625718: FLdPrThis
  loc_625719: VCallAd Control_ID_gridActualConfiguration
  loc_62571C: FStAdFunc var_CC
  loc_62571F: FLdPr var_CC
  loc_625722: LateIdCallSt
  loc_62572A: FFreeAd var_88 = ""
  loc_625731: FFree1Var var_98 = ""
  loc_625734: ExitProcHresult
  loc_625735: ILdFPR4 arg_16
End Function

Private Function Proc_115_42_634ADC() '634ADC
  'Data Table: 44BCD0
  loc_634934: LitVarI4
  loc_63493C: PopAdLdVar
  loc_63493D: FLdPrThis
  loc_63493E: VCallAd Control_ID_gridActualConfiguration
  loc_634941: FStAdFunc var_98
  loc_634944: FLdPr var_98
  loc_634947: LateIdSt
  loc_63494C: FFree1Ad var_98
  loc_63494F: LitVarI4
  loc_634957: PopAdLdVar
  loc_634958: FLdPrThis
  loc_634959: VCallAd Control_ID_gridActualConfiguration
  loc_63495C: FStAdFunc var_98
  loc_63495F: FLdPr var_98
  loc_634962: LateIdSt
  loc_634967: FFree1Ad var_98
  loc_63496A: LitVarStr var_D8, "<"
  loc_63496F: LitI4 1
  loc_634974: LitI4 1
  loc_634979: LitVarStr var_A8, "@@@@@@@@@@@@@@@@@"
  loc_63497E: FStVarCopyObj var_B8
  loc_634981: FLdRfVar var_B8
  loc_634984: ImpAdLdRf MemVar_74BED4
  loc_634987: CVarRef
  loc_63498C: FLdRfVar var_C8
  loc_63498F: ImpAdCallFPR4  = Format(, )
  loc_634994: FLdRfVar var_C8
  loc_634997: ConcatVar var_E8
  loc_63499B: LitVarStr var_F8, "|<"
  loc_6349A0: ConcatVar var_108
  loc_6349A4: LitI4 1
  loc_6349A9: LitI4 1
  loc_6349AE: LitVarStr var_128, "@@@@@@@@@@@@@@@@@"
  loc_6349B3: FStVarCopyObj var_138
  loc_6349B6: FLdRfVar var_138
  loc_6349B9: ImpAdLdRf MemVar_74BEDC
  loc_6349BC: CVarRef
  loc_6349C1: FLdRfVar var_148
  loc_6349C4: ImpAdCallFPR4  = Format(, )
  loc_6349C9: FLdRfVar var_148
  loc_6349CC: ConcatVar var_158
  loc_6349D0: LitVarStr var_168, "|<"
  loc_6349D5: ConcatVar var_178
  loc_6349D9: LitI4 1
  loc_6349DE: LitI4 1
  loc_6349E3: LitVarStr var_1A8, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  loc_6349E8: FStVarCopyObj var_1B8
  loc_6349EB: FLdRfVar var_1B8
  loc_6349EE: LitVarStr var_188, "Producto"
  loc_6349F3: FStVarCopyObj var_198
  loc_6349F6: FLdRfVar var_198
  loc_6349F9: FLdRfVar var_1C8
  loc_6349FC: ImpAdCallFPR4  = Format(, )
  loc_634A01: FLdRfVar var_1C8
  loc_634A04: ConcatVar var_1D8
  loc_634A08: LitVarStr var_1E8, "|<"
  loc_634A0D: ConcatVar var_1F8
  loc_634A11: LitI4 1
  loc_634A16: LitI4 1
  loc_634A1B: LitVarStr var_228, "@@@@@@@@@@@@@@@@@@@@@@"
  loc_634A20: FStVarCopyObj var_238
  loc_634A23: FLdRfVar var_238
  loc_634A26: LitVarStr var_208, "Tanque Prod. Bajo"
  loc_634A2B: FStVarCopyObj var_218
  loc_634A2E: FLdRfVar var_218
  loc_634A31: FLdRfVar var_248
  loc_634A34: ImpAdCallFPR4  = Format(, )
  loc_634A39: FLdRfVar var_248
  loc_634A3C: ConcatVar var_258
  loc_634A40: LitVarStr var_268, "|<"
  loc_634A45: ConcatVar var_278
  loc_634A49: LitI4 1
  loc_634A4E: LitI4 1
  loc_634A53: LitVarStr var_2A8, "@@@@@@@@@@@@@@@@@@@"
  loc_634A58: FStVarCopyObj var_2B8
  loc_634A5B: FLdRfVar var_2B8
  loc_634A5E: LitVarStr var_288, "Lado A"
  loc_634A63: FStVarCopyObj var_298
  loc_634A66: FLdRfVar var_298
  loc_634A69: FLdRfVar var_2C8
  loc_634A6C: ImpAdCallFPR4  = Format(, )
  loc_634A71: FLdRfVar var_2C8
  loc_634A74: ConcatVar var_2D8
  loc_634A78: CStrVarTmp
  loc_634A79: CVarStr var_2E8
  loc_634A7C: PopAdLdVar
  loc_634A7D: FLdPrThis
  loc_634A7E: VCallAd Control_ID_gridActualConfiguration
  loc_634A81: FStAdFunc var_98
  loc_634A84: FLdPr var_98
  loc_634A87: LateIdSt
  loc_634A8C: FFree1Ad var_98
  loc_634A8F: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_138 = "": var_108 = "": var_148 = "": var_158 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1D8 = "": var_218 = "": var_238 = "": var_1F8 = "": var_248 = "": var_258 = "": var_298 = "": var_2B8 = "": var_278 = "": var_2C8 = "": var_2D8 = ""
  loc_634AC0: LitVarI4
  loc_634AC8: PopAdLdVar
  loc_634AC9: FLdPrThis
  loc_634ACA: VCallAd Control_ID_gridActualConfiguration
  loc_634ACD: FStAdFunc var_98
  loc_634AD0: FLdPr var_98
  loc_634AD3: LateIdSt
  loc_634AD8: FFree1Ad var_98
  loc_634ADB: ExitProcHresult
End Function

Private Function Proc_115_43_63BF24() '63BF24
  'Data Table: 44BCD0
  loc_63BD18: FLdRfVar var_9C
  loc_63BD1B: FLdPrThis
  loc_63BD1C: VCallAd Control_ID_cmbProduct
  loc_63BD1F: FStAdFunc var_98
  loc_63BD22: FLdPr var_98
  loc_63BD25:  = Me.Text
  loc_63BD2A: ILdRf var_9C
  loc_63BD2D: LitStr vbNullString
  loc_63BD30: NeStr
  loc_63BD32: FFree1Str var_9C
  loc_63BD35: FFree1Ad var_98
  loc_63BD38: BranchF loc_63BEE4
  loc_63BD3B: LitI2_Byte 1
  loc_63BD3D: FLdRfVar var_86
  loc_63BD40: FLdRfVar var_9E
  loc_63BD43: ImpAdLdRf MemVar_74A220
  loc_63BD46: NewIfNullPr clsProducts
  loc_63BD49: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_63BD4E: FLdI2 var_9E
  loc_63BD51: ForI2 var_A2
  loc_63BD57: FLdRfVar var_9C
  loc_63BD5A: FLdPrThis
  loc_63BD5B: VCallAd Control_ID_cmbProduct
  loc_63BD5E: FStAdFunc var_98
  loc_63BD61: FLdPr var_98
  loc_63BD64:  = Me.Text
  loc_63BD69: FLdZeroAd var_9C
  loc_63BD6C: CVarStr var_B4
  loc_63BD6F: FLdRfVar var_C4
  loc_63BD72: ImpAdCallFPR4  = Trim()
  loc_63BD77: FLdRfVar var_C4
  loc_63BD7A: FLdRfVar var_C8
  loc_63BD7D: FLdI2 var_86
  loc_63BD80: ImpAdLdRf MemVar_74A220
  loc_63BD83: NewIfNullPr clsProducts
  loc_63BD8B: FLdZeroAd var_C8
  loc_63BD8E: CVarStr var_D8
  loc_63BD91: HardType
  loc_63BD92: EqVarBool
  loc_63BD94: FFree1Ad var_98
  loc_63BD97: FFreeVar var_B4 = "": var_C4 = ""
  loc_63BDA0: BranchF loc_63BDD3
  loc_63BDA3: FLdRfVar var_9E
  loc_63BDA6: FLdI2 var_86
  loc_63BDA9: ImpAdLdRf MemVar_74A220
  loc_63BDAC: NewIfNullPr clsProducts
  loc_63BDAF:  = clsProducts.Name
  loc_63BDB4: FLdI2 var_9E
  loc_63BDB7: LitI2_Byte 6
  loc_63BDB9: GtI2
  loc_63BDBA: FLdRfVar var_EA
  loc_63BDBD: FLdI2 var_86
  loc_63BDC0: ImpAdLdRf MemVar_74A220
  loc_63BDC3: NewIfNullPr clsProducts
  loc_63BDC6:  = clsProducts.hWnd
  loc_63BDCB: FLdI2 var_EA
  loc_63BDCE: NotI4
  loc_63BDCF: AndI4
  loc_63BDD0: BranchF loc_63BDD3
  loc_63BDD3: FLdRfVar var_86
  loc_63BDD6: NextI2 var_A2, loc_63BD57
  loc_63BDDB: FLdRfVar var_9C
  loc_63BDDE: FLdPrThis
  loc_63BDDF: VCallAd Control_ID_cmbLowProduct
  loc_63BDE2: FStAdFunc var_98
  loc_63BDE5: FLdPr var_98
  loc_63BDE8:  = Me.Text
  loc_63BDED: FLdZeroAd var_9C
  loc_63BDF0: FStStr var_94
  loc_63BDF3: FFree1Ad var_98
  loc_63BDF6: FLdPrThis
  loc_63BDF7: VCallAd Control_ID_cmbLowProduct
  loc_63BDFA: FStAdFunc var_98
  loc_63BDFD: FLdPr var_98
  loc_63BE00: Me.Clear
  loc_63BE05: FFree1Ad var_98
  loc_63BE08: FLdRfVar var_9C
  loc_63BE0B: FLdPrThis
  loc_63BE0C: VCallAd Control_ID_cmbProduct
  loc_63BE0F: FStAdFunc var_98
  loc_63BE12: FLdPr var_98
  loc_63BE15:  = Me.Text
  loc_63BE1A: FLdZeroAd var_9C
  loc_63BE1D: FStStr var_8C
  loc_63BE20: FFree1Ad var_98
  loc_63BE23: LitI2_Byte 0
  loc_63BE25: ImpAdStI2 MemVar_74C3AA
  loc_63BE28: FLdRfVar var_9E
  loc_63BE2B: FLdRfVar var_8C
  loc_63BE2E: from_stack_2v = CargarCombo(from_stack_1v)
  loc_63BE33: FLdI2 var_9E
  loc_63BE36: NotI4
  loc_63BE37: BranchF loc_63BE84
  loc_63BE3A: FLdRfVar var_EC
  loc_63BE3D: FLdRfVar var_9C
  loc_63BE40: FLdRfVar var_EA
  loc_63BE43: FLdRfVar var_9E
  loc_63BE46: ILdRf var_8C
  loc_63BE49: ImpAdLdRf MemVar_74A220
  loc_63BE4C: NewIfNullPr clsProducts
  loc_63BE54: FLdI2 var_9E
  loc_63BE57: ImpAdLdRf MemVar_74A220
  loc_63BE5A: NewIfNullPr clsProducts
  loc_63BE5D:  = clsProducts.BackColor
  loc_63BE62: FLdI2 var_EA
  loc_63BE65: ImpAdLdRf MemVar_74A220
  loc_63BE68: NewIfNullPr clsProducts
  loc_63BE70: FLdZeroAd var_9C
  loc_63BE73: PopTmpLdAdStr
  loc_63BE77: from_stack_2v = CargarCombo(from_stack_1v)
  loc_63BE7C: FFree1Str var_C8
  loc_63BE7F: LitI2_Byte &HFF
  loc_63BE81: ImpAdStI2 MemVar_74C3AA
  loc_63BE84: FLdRfVar var_9E
  loc_63BE87: FLdPrThis
  loc_63BE88: VCallAd Control_ID_cmbLowProduct
  loc_63BE8B: FStAdFunc var_98
  loc_63BE8E: FLdPr var_98
  loc_63BE91:  = Me.ListIndex
  loc_63BE96: FLdI2 var_9E
  loc_63BE99: LitI2_Byte 0
  loc_63BE9B: GtI2
  loc_63BE9C: FFree1Ad var_98
  loc_63BE9F: BranchF loc_63BECD
  loc_63BEA2: FLdPrThis
  loc_63BEA3: VCallAd Control_ID_cmbLowProduct
  loc_63BEA6: FStAdFunc var_98
  loc_63BEA9: FLdRfVar var_98
  loc_63BEAC: FLdRfVar var_94
  loc_63BEAF: ImpAdCallI2  = Proc_158_4_5E0CD0()
  loc_63BEB4: FLdPrThis
  loc_63BEB5: VCallAd Control_ID_cmbLowProduct
  loc_63BEB8: FStAdFunc var_F0
  loc_63BEBB: FLdPr var_F0
  loc_63BEBE: Me.ListIndex = from_stack_1
  loc_63BEC3: FFreeAd var_98 = ""
  loc_63BECA: Branch loc_63BEE1
  loc_63BECD: LitI2_Byte 0
  loc_63BECF: FLdPrThis
  loc_63BED0: VCallAd Control_ID_cmbLowProduct
  loc_63BED3: FStAdFunc var_98
  loc_63BED6: FLdPr var_98
  loc_63BED9: Me.ListIndex = from_stack_1
  loc_63BEDE: FFree1Ad var_98
  loc_63BEE1: Branch loc_63BF21
  loc_63BEE4: LitVar_Missing var_E8
  loc_63BEE7: LitVar_Missing var_D8
  loc_63BEEA: LitVar_Missing var_C4
  loc_63BEED: LitI4 0
  loc_63BEF2: LitVarStr var_100, "Primero debe seleciconar un producto."
  loc_63BEF7: FStVarCopyObj var_B4
  loc_63BEFA: FLdRfVar var_B4
  loc_63BEFD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63BF02: FFreeVar var_B4 = "": var_C4 = "": var_D8 = ""
  loc_63BF0D: LitI2_Byte 0
  loc_63BF0F: FLdPrThis
  loc_63BF10: VCallAd Control_ID_cmbProduct
  loc_63BF13: FStAdFunc var_98
  loc_63BF16: FLdPr var_98
  loc_63BF19: Me.ListIndex = from_stack_1
  loc_63BF1E: FFree1Ad var_98
  loc_63BF21: ExitProcHresult
  loc_63BF22: FLdPrThis
End Function

Private Function Proc_115_44_5D5928(arg_C) '5D5928
  'Data Table: 44BCD0
  loc_5D5904: ILdI2 arg_C
  loc_5D5907: CI4UI1
  loc_5D5908: FLdPr Me
  loc_5D590B: MemLdRfVar from_stack_1.global_168
  loc_5D590E: Ary1LdUI1
  loc_5D5910: CI2UI1
  loc_5D5912: FLdPrThis
  loc_5D5913: VCallAd Control_ID_cmbSideProduct
  loc_5D5916: FStAdFunc var_88
  loc_5D5919: FLdPr var_88
  loc_5D591C: Me.ListIndex = from_stack_1
  loc_5D5921: FFree1Ad var_88
  loc_5D5924: ExitProcHresult
  loc_5D5925: ConcatStr
End Function

Private Function Proc_115_45_5E4AFC(arg_C) '5E4AFC
  'Data Table: 44BCD0
  loc_5E4A94: OnErrorGoto loc_5E4ABF
  loc_5E4A99: FLdRfVar var_9A
  loc_5E4A9C: FLdPrThis
  loc_5E4A9D: VCallAd Control_ID_cmbSideProduct
  loc_5E4AA0: FStAdFunc var_98
  loc_5E4AA3: FLdPr var_98
  loc_5E4AA6:  = Me.ListIndex
  loc_5E4AAB: FLdI2 var_9A
  loc_5E4AAE: CUI1I2
  loc_5E4AB0: ILdI2 arg_C
  loc_5E4AB3: CI4UI1
  loc_5E4AB4: FLdPr Me
  loc_5E4AB7: MemLdRfVar from_stack_1.global_168
  loc_5E4ABA: Ary1StUI1
  loc_5E4ABC: FFree1Ad var_98
  loc_5E4AC1: FLdRfVar var_A0
  loc_5E4AC4: ImpAdCallI2 Err 'rtcErrObj
  loc_5E4AC9: FStAdFunc var_98
  loc_5E4ACC: FLdPr var_98
  loc_5E4ACF:  = Err.Number
  loc_5E4AD4: ILdRf var_A0
  loc_5E4AD7: LitI4 9
  loc_5E4ADC: EqI4
  loc_5E4ADD: FFree1Ad var_98
  loc_5E4AE0: BranchF loc_5E4AF7
  loc_5E4AE5: FLdPr Me
  loc_5E4AE8: MemLdUI1 global_192
  loc_5E4AEC: CI2UI1
  loc_5E4AEE: IStI2 arg_C
  loc_5E4AF3: Resume
  loc_5E4AFB: ExitProcHresult
End Function

Private Function Proc_115_46_5F60EC() '5F60EC
  'Data Table: 44BCD0
  loc_5F603C: LitI2_Byte 1
  loc_5F603E: FLdRfVar var_88
  loc_5F6041: ImpAdLdRf MemVar_74C12C
  loc_5F6044: LitI2_Byte 1
  loc_5F6046: FnUBound
  loc_5F6048: CI2I4
  loc_5F6049: ForI2 var_8E
  loc_5F604F: FLdI2 var_88
  loc_5F6052: CI4UI1
  loc_5F6053: ImpAdLdRf MemVar_74C1F4
  loc_5F6056: Ary1LdUI1
  loc_5F6058: CI2UI1
  loc_5F605A: LitI2_Byte 7
  loc_5F605C: LtI2
  loc_5F605D: BranchF loc_5F60DB
  loc_5F6060: LitI2_Byte 0
  loc_5F6062: FLdRfVar var_8A
  loc_5F6065: FLdI2 var_88
  loc_5F6068: CI4UI1
  loc_5F6069: ImpAdLdRf MemVar_74C0FC
  loc_5F606C: Ary1LdUI1
  loc_5F606E: CI2UI1
  loc_5F6070: ForI2 var_92
  loc_5F6076: FLdI2 var_88
  loc_5F6079: CI4UI1
  loc_5F607A: FLdI2 var_8A
  loc_5F607D: CI4UI1
  loc_5F607E: LitI4 0
  loc_5F6083: FLdPr Me
  loc_5F6086: MemLdRfVar from_stack_1.global_88
  loc_5F6089: AryLdPr
  loc_5F608C: MemLdUI1 global_0
  loc_5F6090: CI2UI1
  loc_5F6092: LitI2_Byte 0
  loc_5F6094: EqI2
  loc_5F6095: BranchF loc_5F60D0
  loc_5F6098: LitVar_Missing var_108
  loc_5F609B: LitVar_Missing var_E8
  loc_5F609E: LitVarStr var_B8, "Aviso"
  loc_5F60A3: FStVarCopyObj var_C8
  loc_5F60A6: FLdRfVar var_C8
  loc_5F60A9: LitI4 0
  loc_5F60AE: LitStr "Se necesita configurar el surtidor "
  loc_5F60B1: FLdI2 var_88
  loc_5F60B4: CStrUI1
  loc_5F60B6: FStStrNoPop var_98
  loc_5F60B9: ConcatStr
  loc_5F60BA: CVarStr var_A8
  loc_5F60BD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F60C2: FFree1Str var_98
  loc_5F60C5: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5F60D0: FLdRfVar var_8A
  loc_5F60D3: NextI2 var_92, loc_5F6076
  loc_5F60D8: Branch loc_5F60DE
  loc_5F60DB: Branch loc_5F60E6
  loc_5F60DE: FLdRfVar var_88
  loc_5F60E1: NextI2 var_8E, loc_5F604F
  loc_5F60E6: ExitProcCbHresult
End Function

Private Function Proc_115_47_5EEFE0(arg_10) '5EEFE0
  'Data Table: 44BCD0
  loc_5EEF40: FLdPr Me
  loc_5EEF43: MemLdI2 global_52
  loc_5EEF46: CI4UI1
  loc_5EEF47: ImpAdLdRf MemVar_74C1F4
  loc_5EEF4A: Ary1LdUI1
  loc_5EEF4C: FStUI1 var_8C
  loc_5EEF50: FLdUI1
  loc_5EEF54: CI2UI1
  loc_5EEF56: LitI2_Byte 7
  loc_5EEF58: LtI2
  loc_5EEF59: BranchF loc_5EEFCF
  loc_5EEF5C: LitI2_Byte 1
  loc_5EEF5E: CUI1I2
  loc_5EEF60: FLdRfVar var_88
  loc_5EEF63: FLdRfVar var_8E
  loc_5EEF66: ImpAdLdRf MemVar_74A220
  loc_5EEF69: NewIfNullPr clsProducts
  loc_5EEF6C: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5EEF71: FLdI2 var_8E
  loc_5EEF74: CUI1I2
  loc_5EEF76: ForUI1 var_92
  loc_5EEF7C: FLdRfVar var_8E
  loc_5EEF7F: FLdUI1
  loc_5EEF83: CI2UI1
  loc_5EEF85: ImpAdLdRf MemVar_74A220
  loc_5EEF88: NewIfNullPr clsProducts
  loc_5EEF8B:  = clsProducts.Name
  loc_5EEF90: FLdI2 var_8E
  loc_5EEF93: LitI2_Byte 7
  loc_5EEF95: LtI2
  loc_5EEF96: NotI4
  loc_5EEF97: BranchF loc_5EEFB5
  loc_5EEF9A: ILdUI1 arg_10
  loc_5EEF9E: CBoolUI1
  loc_5EEFA0: BranchF loc_5EEFA6
  loc_5EEFA3: Branch loc_5EEFA6
  loc_5EEFA6: FLdUI1
  loc_5EEFAA: CI2UI1
  loc_5EEFAC: LitI2_Byte 1
  loc_5EEFAE: AddI2
  loc_5EEFAF: CUI1I2
  loc_5EEFB1: FStUI1 var_8A
  loc_5EEFB5: FLdRfVar var_88
  loc_5EEFB8: NextUI1
  loc_5EEFBE: ILdUI1 arg_10
  loc_5EEFC2: FLdUI1
  loc_5EEFC6: SubUI1
  loc_5EEFC8: FStUI1 var_86
  loc_5EEFCC: Branch loc_5EEFD7
  loc_5EEFCF: ILdUI1 arg_10
  loc_5EEFD3: FStUI1 var_86
  loc_5EEFD7: ExitProcCbHresult
End Function

Private Function Proc_115_48_5F85EC() '5F85EC
  'Data Table: 44BCD0
  loc_5F853C: FLdRfVar var_8E
  loc_5F853F: FLdPrThis
  loc_5F8540: VCallAd Control_ID_cmbProduct
  loc_5F8543: FStAdFunc var_8C
  loc_5F8546: FLdPr var_8C
  loc_5F8549:  = Me.ListIndex
  loc_5F854E: FLdI2 var_8E
  loc_5F8551: LitI2_Byte 0
  loc_5F8553: GeI2
  loc_5F8554: FFree1Ad var_8C
  loc_5F8557: BranchF loc_5F85E1
  loc_5F855A: FLdRfVar var_8E
  loc_5F855D: FLdRfVar var_94
  loc_5F8560: FLdPrThis
  loc_5F8561: VCallAd Control_ID_cmbProduct
  loc_5F8564: FStAdFunc var_8C
  loc_5F8567: FLdPr var_8C
  loc_5F856A:  = Me.Text
  loc_5F856F: FLdZeroAd var_94
  loc_5F8572: PopTmpLdAdStr
  loc_5F8576: from_stack_2v = TieneTanque(from_stack_1v)
  loc_5F857B: FLdI2 var_8E
  loc_5F857E: NotI4
  loc_5F857F: FFree1Str var_98
  loc_5F8582: FFree1Ad var_8C
  loc_5F8585: BranchF loc_5F85E1
  loc_5F8588: LitVar_Missing var_108
  loc_5F858B: LitVar_Missing var_E8
  loc_5F858E: LitVarStr var_B8, "Configuración"
  loc_5F8593: FStVarCopyObj var_C8
  loc_5F8596: FLdRfVar var_C8
  loc_5F8599: LitI4 &H40
  loc_5F859E: LitStr "Este producto no tiene tanque, no se puede asignar a ningun"
  loc_5F85A1: LitStr " "
  loc_5F85A4: ConcatStr
  loc_5F85A5: FStStrNoPop var_94
  loc_5F85A8: ImpAdLdI4 MemVar_74BEDC
  loc_5F85AB: ConcatStr
  loc_5F85AC: CVarStr var_A8
  loc_5F85AF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F85B4: FFree1Str var_94
  loc_5F85B7: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5F85C2: LitI2_Byte &HFF
  loc_5F85C4: FLdPrThis
  loc_5F85C5: VCallAd Control_ID_cmbProduct
  loc_5F85C8: FStAdFunc var_8C
  loc_5F85CB: FLdPr var_8C
  loc_5F85CE: Me.ListIndex = from_stack_1
  loc_5F85D3: FFree1Ad var_8C
  loc_5F85D6: LitI2_Byte 0
  loc_5F85D8: FStI2 var_86
  loc_5F85DB: ExitProcCbHresult
  loc_5F85E1: LitI2_Byte &HFF
  loc_5F85E3: FStI2 var_86
  loc_5F85E6: ExitProcCbHresult
End Function

Private Function Proc_115_49_5E6400() '5E6400
  'Data Table: 44BCD0
  loc_5E6388: FLdPrThis
  loc_5E6389: VCallAd Control_ID_cmbModelo
  loc_5E638C: FStAdFunc var_88
  loc_5E638F: FLdPr var_88
  loc_5E6392: Me.Clear
  loc_5E6397: FFree1Ad var_88
  loc_5E639A: LitVar_Missing var_98
  loc_5E639D: PopAdLdVar
  loc_5E639E: LitStr "1 Manguera"
  loc_5E63A1: FLdPrThis
  loc_5E63A2: VCallAd Control_ID_cmbModelo
  loc_5E63A5: FStAdFunc var_88
  loc_5E63A8: FLdPr var_88
  loc_5E63AB: Me.AddItem from_stack_1, from_stack_2
  loc_5E63B0: FFree1Ad var_88
  loc_5E63B3: LitVar_Missing var_98
  loc_5E63B6: PopAdLdVar
  loc_5E63B7: LitStr "2 Mangueras"
  loc_5E63BA: FLdPrThis
  loc_5E63BB: VCallAd Control_ID_cmbModelo
  loc_5E63BE: FStAdFunc var_88
  loc_5E63C1: FLdPr var_88
  loc_5E63C4: Me.AddItem from_stack_1, from_stack_2
  loc_5E63C9: FFree1Ad var_88
  loc_5E63CC: LitVar_Missing var_98
  loc_5E63CF: PopAdLdVar
  loc_5E63D0: LitStr "3 Mangueras"
  loc_5E63D3: FLdPrThis
  loc_5E63D4: VCallAd Control_ID_cmbModelo
  loc_5E63D7: FStAdFunc var_88
  loc_5E63DA: FLdPr var_88
  loc_5E63DD: Me.AddItem from_stack_1, from_stack_2
  loc_5E63E2: FFree1Ad var_88
  loc_5E63E5: LitVar_Missing var_98
  loc_5E63E8: PopAdLdVar
  loc_5E63E9: LitStr "4 Mangueras"
  loc_5E63EC: FLdPrThis
  loc_5E63ED: VCallAd Control_ID_cmbModelo
  loc_5E63F0: FStAdFunc var_88
  loc_5E63F3: FLdPr var_88
  loc_5E63F6: Me.AddItem from_stack_1, from_stack_2
  loc_5E63FB: FFree1Ad var_88
  loc_5E63FE: ExitProcHresult
End Function

Private Function Proc_115_50_6404AC() '6404AC
  'Data Table: 44BCD0
  loc_64027C: OnErrorGoto loc_640431
  loc_64027F: FLdRfVar var_9C
  loc_640282: FLdRfVar var_98
  loc_640285: ImpAdLdRf MemVar_7520D4
  loc_640288: NewIfNullPr Global
  loc_64028B:  = Global.App
  loc_640290: FLdPr var_98
  loc_640293:  = App.Path
  loc_640298: ILdRf var_9C
  loc_64029B: LitStr "\marcas.cfg"
  loc_64029E: ConcatStr
  loc_64029F: FStStrNoPop var_A0
  loc_6402A2: ImpAdCallI2 push FileLen()
  loc_6402A7: LitI4 0
  loc_6402AC: EqI4
  loc_6402AD: FFreeStr var_9C = ""
  loc_6402B4: FFree1Ad var_98
  loc_6402B7: BranchF loc_6402E8
  loc_6402BA: LitVar_Missing var_120
  loc_6402BD: LitVar_Missing var_100
  loc_6402C0: LitVar_Missing var_E0
  loc_6402C3: LitI4 &H40
  loc_6402C8: LitVarStr var_B0, "El archivo de configuración de marcas se encuentra vacío."
  loc_6402CD: FStVarCopyObj var_C0
  loc_6402D0: FLdRfVar var_C0
  loc_6402D3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6402D8: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_6402E3: Call cmdCancel_Click()
  loc_6402E8: FLdRfVar var_9C
  loc_6402EB: FLdRfVar var_98
  loc_6402EE: ImpAdLdRf MemVar_7520D4
  loc_6402F1: NewIfNullPr Global
  loc_6402F4:  = Global.App
  loc_6402F9: FLdPr var_98
  loc_6402FC:  = App.Path
  loc_640301: ILdRf var_9C
  loc_640304: LitStr "\Marcas.cfg"
  loc_640307: ConcatStr
  loc_640308: FStStrNoPop var_A0
  loc_64030B: LitI2_Byte 1
  loc_64030D: LitI2_Byte &HFF
  loc_64030F: OpenFile
  loc_640313: FFreeStr var_9C = ""
  loc_64031A: FFree1Ad var_98
  loc_64031D: LitI2_Byte 1
  loc_64031F: ImpAdCallI2 push EOF()
  loc_640324: NotI4
  loc_640325: BranchF loc_6403D2
  loc_640328: LitI2_Byte 1
  loc_64032A: FLdRfVar var_124
  loc_64032D: LineInputStr
  loc_64032F: FLdRfVar var_124
  loc_640332: CVarRef
  loc_640337: FLdRfVar var_C0
  loc_64033A: ImpAdCallFPR4  = Trim()
  loc_64033F: FLdRfVar var_C0
  loc_640342: LitVarStr var_D0, vbNullString
  loc_640347: HardType
  loc_640348: EqVar var_E0
  loc_64034C: LitVarI2 var_100, 1
  loc_640351: LitI4 1
  loc_640356: FLdRfVar var_124
  loc_640359: CVarRef
  loc_64035E: FLdRfVar var_120
  loc_640361: ImpAdCallFPR4  = Mid(, , )
  loc_640366: FLdRfVar var_120
  loc_640369: LitVarStr var_138, ";"
  loc_64036E: HardType
  loc_64036F: EqVar var_148
  loc_640373: OrVar var_158
  loc_640377: CBoolVarNull
  loc_640379: FFreeVar var_C0 = "": var_100 = ""
  loc_640382: BranchF loc_640388
  loc_640385: Branch loc_6403CF
  loc_640388: FLdUI1
  loc_64038C: CI2UI1
  loc_64038E: LitI2_Byte &H63
  loc_640390: GeI2
  loc_640391: BranchF loc_640397
  loc_640394: Branch loc_6403D2
  loc_640397: FLdRfVar var_124
  loc_64039A: CVarRef
  loc_64039F: FLdRfVar var_C0
  loc_6403A2: ImpAdCallFPR4  = Trim()
  loc_6403A7: FLdRfVar var_C0
  loc_6403AA: CStrVarTmp
  loc_6403AB: FStStrNoPop var_9C
  loc_6403AE: FLdUI1
  loc_6403B2: CI4UI1
  loc_6403B3: FLdPr Me
  loc_6403B6: MemLdRfVar from_stack_1.global_252
  loc_6403B9: Ary1StStrCopy
  loc_6403BA: FFree1Str var_9C
  loc_6403BD: FFree1Var var_C0 = ""
  loc_6403C0: FLdUI1
  loc_6403C4: CI2UI1
  loc_6403C6: LitI2_Byte 1
  loc_6403C8: AddI2
  loc_6403C9: CUI1I2
  loc_6403CB: FStUI1 var_126
  loc_6403CF: Branch loc_64031D
  loc_6403D2: LitI2_Byte 1
  loc_6403D4: Close
  loc_6403D6: LitI2_Byte 0
  loc_6403D8: CUI1I2
  loc_6403DA: FLdRfVar var_126
  loc_6403DD: FLdPr Me
  loc_6403E0: MemLdRfVar from_stack_1.global_252
  loc_6403E3: LitI2_Byte 1
  loc_6403E5: FnUBound
  loc_6403E7: CUI1I4
  loc_6403E9: ForUI1 var_15C
  loc_6403EF: FLdUI1
  loc_6403F3: CI4UI1
  loc_6403F4: FLdPr Me
  loc_6403F7: MemLdRfVar from_stack_1.global_252
  loc_6403FA: Ary1LdI4
  loc_6403FB: LitStr vbNullString
  loc_6403FE: EqStr
  loc_640400: BranchF loc_640406
  loc_640403: Branch loc_640431
  loc_640406: LitVar_Missing var_B0
  loc_640409: PopAdLdVar
  loc_64040A: FLdUI1
  loc_64040E: CI4UI1
  loc_64040F: FLdPr Me
  loc_640412: MemLdRfVar from_stack_1.global_252
  loc_640415: Ary1LdI4
  loc_640416: FLdPrThis
  loc_640417: VCallAd Control_ID_cmbMarca
  loc_64041A: FStAdFunc var_98
  loc_64041D: FLdPr var_98
  loc_640420: Me.AddItem from_stack_1, from_stack_2
  loc_640425: FFree1Ad var_98
  loc_640428: FLdRfVar var_126
  loc_64042B: NextUI1
  loc_640431: FLdRfVar var_160
  loc_640434: ImpAdCallI2 Err 'rtcErrObj
  loc_640439: FStAdFunc var_98
  loc_64043C: FLdPr var_98
  loc_64043F:  = Err.Number
  loc_640444: ILdRf var_160
  loc_640447: LitI4 &H35
  loc_64044C: EqI4
  loc_64044D: FFree1Ad var_98
  loc_640450: BranchF loc_6404AA
  loc_640453: FLdRfVar var_9C
  loc_640456: FLdRfVar var_98
  loc_640459: ImpAdLdRf MemVar_7520D4
  loc_64045C: NewIfNullPr Global
  loc_64045F:  = Global.App
  loc_640464: FLdPr var_98
  loc_640467:  = App.Path
  loc_64046C: LitVar_Missing var_120
  loc_64046F: LitVar_Missing var_100
  loc_640472: LitVar_Missing var_E0
  loc_640475: LitI4 &H10
  loc_64047A: LitStr "No se puede encontrar el archivo Marcas.cfg en la ruta "
  loc_64047D: ILdRf var_9C
  loc_640480: ConcatStr
  loc_640481: FStStrNoPop var_A0
  loc_640484: LitStr "\"
  loc_640487: ConcatStr
  loc_640488: CVarStr var_C0
  loc_64048B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_640490: FFreeStr var_9C = ""
  loc_640497: FFree1Ad var_98
  loc_64049A: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_6404A5: Call cmdCancel_Click()
  loc_6404AA: ExitProcHresult
End Function

Private Function Proc_115_51_61F1AC() '61F1AC
  'Data Table: 44BCD0
  loc_61F050: FLdPr Me
  loc_61F053: MemLdI2 global_276
  loc_61F056: LitI2_Byte &HFF
  loc_61F058: EqI2
  loc_61F059: BranchF loc_61F05D
  loc_61F05C: ExitProcHresult
  loc_61F05D: FLdPr Me
  loc_61F060: MemLdUI1 global_192
  loc_61F064: CI2UI1
  loc_61F066: LitI2_Byte 0
  loc_61F068: EqI2
  loc_61F069: BranchF loc_61F06D
  loc_61F06C: ExitProcHresult
  loc_61F06D: FLdRfVar var_8A
  loc_61F070: FLdPrThis
  loc_61F071: VCallAd Control_ID_cmbModelo
  loc_61F074: FStAdFunc var_88
  loc_61F077: FLdPr var_88
  loc_61F07A:  = Me.ListIndex
  loc_61F07F: FLdI2 var_8A
  loc_61F082: FStI2 var_8C
  loc_61F085: FFree1Ad var_88
  loc_61F088: FLdI2 var_8C
  loc_61F08B: LitI2_Byte 0
  loc_61F08D: EqI2
  loc_61F08E: BranchF loc_61F0A5
  loc_61F091: LitI2_Byte 0
  loc_61F093: CUI1I2
  loc_61F095: FLdPr Me
  loc_61F098: MemLdUI1 global_192
  loc_61F09C: CI4UI1
  loc_61F09D: ImpAdLdRf MemVar_74C0FC
  loc_61F0A0: Ary1StUI1
  loc_61F0A2: Branch loc_61F0F9
  loc_61F0A5: FLdI2 var_8C
  loc_61F0A8: LitI2_Byte 1
  loc_61F0AA: EqI2
  loc_61F0AB: BranchF loc_61F0C2
  loc_61F0AE: LitI2_Byte 1
  loc_61F0B0: CUI1I2
  loc_61F0B2: FLdPr Me
  loc_61F0B5: MemLdUI1 global_192
  loc_61F0B9: CI4UI1
  loc_61F0BA: ImpAdLdRf MemVar_74C0FC
  loc_61F0BD: Ary1StUI1
  loc_61F0BF: Branch loc_61F0F9
  loc_61F0C2: FLdI2 var_8C
  loc_61F0C5: LitI2_Byte 2
  loc_61F0C7: EqI2
  loc_61F0C8: BranchF loc_61F0DF
  loc_61F0CB: LitI2_Byte 2
  loc_61F0CD: CUI1I2
  loc_61F0CF: FLdPr Me
  loc_61F0D2: MemLdUI1 global_192
  loc_61F0D6: CI4UI1
  loc_61F0D7: ImpAdLdRf MemVar_74C0FC
  loc_61F0DA: Ary1StUI1
  loc_61F0DC: Branch loc_61F0F9
  loc_61F0DF: FLdI2 var_8C
  loc_61F0E2: LitI2_Byte 3
  loc_61F0E4: EqI2
  loc_61F0E5: BranchF loc_61F0F9
  loc_61F0E8: LitI2_Byte 3
  loc_61F0EA: CUI1I2
  loc_61F0EC: FLdPr Me
  loc_61F0EF: MemLdUI1 global_192
  loc_61F0F3: CI4UI1
  loc_61F0F4: ImpAdLdRf MemVar_74C0FC
  loc_61F0F7: Ary1StUI1
  loc_61F0F9: LitI2_Byte 1
  loc_61F0FB: CUI1I2
  loc_61F0FD: FLdPr Me
  loc_61F100: MemLdUI1 global_192
  loc_61F104: CI4UI1
  loc_61F105: FLdRfVar var_8A
  loc_61F108: FLdPrThis
  loc_61F109: VCallAd Control_ID_cmbModelo
  loc_61F10C: FStAdFunc var_88
  loc_61F10F: FLdPr var_88
  loc_61F112:  = Me.ListIndex
  loc_61F117: FLdI2 var_8A
  loc_61F11A: CI4UI1
  loc_61F11B: FLdPr Me
  loc_61F11E: MemLdRfVar from_stack_1.global_56
  loc_61F121: AryLdPr
  loc_61F124: MemStUI1
  loc_61F128: FFree1Ad var_88
  loc_61F12B: FLdPr Me
  loc_61F12E: MemLdUI1 global_192
  loc_61F132: CI2UI1
  loc_61F134: LitI2_Byte &H11
  loc_61F136: LtI2
  loc_61F137: BranchF loc_61F164
  loc_61F13A: FLdRfVar var_8A
  loc_61F13D: FLdPrThis
  loc_61F13E: VCallAd Control_ID_cmbModelo
  loc_61F141: FStAdFunc var_88
  loc_61F144: FLdPr var_88
  loc_61F147:  = Me.ListIndex
  loc_61F14C: FLdI2 var_8A
  loc_61F14F: CUI1I2
  loc_61F151: FLdPr Me
  loc_61F154: MemLdUI1 global_192
  loc_61F158: CI4UI1
  loc_61F159: ImpAdLdRf MemVar_74C20C
  loc_61F15C: Ary1StUI1
  loc_61F15E: FFree1Ad var_88
  loc_61F161: Branch loc_61F19F
  loc_61F164: FLdPr Me
  loc_61F167: MemLdUI1 global_192
  loc_61F16B: CI2UI1
  loc_61F16D: LitI2_Byte &H10
  loc_61F16F: GtI2
  loc_61F170: BranchF loc_61F19F
  loc_61F173: FLdRfVar var_8A
  loc_61F176: FLdPrThis
  loc_61F177: VCallAd Control_ID_cmbModelo
  loc_61F17A: FStAdFunc var_88
  loc_61F17D: FLdPr var_88
  loc_61F180:  = Me.ListIndex
  loc_61F185: FLdI2 var_8A
  loc_61F188: CUI1I2
  loc_61F18A: FLdPr Me
  loc_61F18D: MemLdUI1 global_192
  loc_61F191: CI2UI1
  loc_61F193: LitI2_Byte &H10
  loc_61F195: SubI2
  loc_61F196: CI4UI1
  loc_61F197: ImpAdLdRf MemVar_74C224
  loc_61F19A: Ary1StUI1
  loc_61F19C: FFree1Ad var_88
  loc_61F19F: from_stack_1v = Proc_115_34_620900()
  loc_61F1A4: from_stack_1v = Proc_115_61_62C13C()
  loc_61F1A9: ExitProcHresult
End Function

Private Function Proc_115_52_5F1004() '5F1004
  'Data Table: 44BCD0
  loc_5F0F5C: LitI2_Byte 1
  loc_5F0F5E: CUI1I2
  loc_5F0F60: FLdRfVar var_86
  loc_5F0F63: LitI2_Byte &H20
  loc_5F0F65: CUI1I2
  loc_5F0F67: ForUI1 var_8A
  loc_5F0F6D: FLdUI1
  loc_5F0F71: ImpAdLdUI1
  loc_5F0F75: LeUI1
  loc_5F0F77: BranchF loc_5F0FF9
  loc_5F0F7A: FLdUI1
  loc_5F0F7E: CI4UI1
  loc_5F0F7F: ImpAdLdRf MemVar_74C0FC
  loc_5F0F82: Ary1LdUI1
  loc_5F0F84: FStUI1 var_8C
  loc_5F0F88: FLdUI1
  loc_5F0F8C: LitI2_Byte 0
  loc_5F0F8E: CUI1I2
  loc_5F0F90: EqI2
  loc_5F0F91: BranchF loc_5F0FA5
  loc_5F0F94: LitI2_Byte 1
  loc_5F0F96: CUI1I2
  loc_5F0F98: FLdUI1
  loc_5F0F9C: CI4UI1
  loc_5F0F9D: ImpAdLdRf MemVar_74C1F4
  loc_5F0FA0: Ary1StUI1
  loc_5F0FA2: Branch loc_5F0FF9
  loc_5F0FA5: FLdUI1
  loc_5F0FA9: LitI2_Byte 1
  loc_5F0FAB: CUI1I2
  loc_5F0FAD: EqI2
  loc_5F0FAE: BranchF loc_5F0FC2
  loc_5F0FB1: LitI2_Byte 4
  loc_5F0FB3: CUI1I2
  loc_5F0FB5: FLdUI1
  loc_5F0FB9: CI4UI1
  loc_5F0FBA: ImpAdLdRf MemVar_74C1F4
  loc_5F0FBD: Ary1StUI1
  loc_5F0FBF: Branch loc_5F0FF9
  loc_5F0FC2: FLdUI1
  loc_5F0FC6: LitI2_Byte 2
  loc_5F0FC8: CUI1I2
  loc_5F0FCA: EqI2
  loc_5F0FCB: BranchF loc_5F0FDF
  loc_5F0FCE: LitI2_Byte 5
  loc_5F0FD0: CUI1I2
  loc_5F0FD2: FLdUI1
  loc_5F0FD6: CI4UI1
  loc_5F0FD7: ImpAdLdRf MemVar_74C1F4
  loc_5F0FDA: Ary1StUI1
  loc_5F0FDC: Branch loc_5F0FF9
  loc_5F0FDF: FLdUI1
  loc_5F0FE3: LitI2_Byte 3
  loc_5F0FE5: CUI1I2
  loc_5F0FE7: EqI2
  loc_5F0FE8: BranchF loc_5F0FF9
  loc_5F0FEB: LitI2_Byte 6
  loc_5F0FED: CUI1I2
  loc_5F0FEF: FLdUI1
  loc_5F0FF3: CI4UI1
  loc_5F0FF4: ImpAdLdRf MemVar_74C1F4
  loc_5F0FF7: Ary1StUI1
  loc_5F0FF9: FLdRfVar var_86
  loc_5F0FFC: NextUI1
  loc_5F1002: ExitProcHresult
End Function

Private Function Proc_115_53_5E325C(arg_C) '5E325C
  'Data Table: 44BCD0
  loc_5E31F4: ILdUI1 arg_C
  loc_5E31F8: FStUI1 var_88
  loc_5E31FC: FLdUI1
  loc_5E3200: LitI2_Byte 0
  loc_5E3202: CUI1I2
  loc_5E3204: EqI2
  loc_5E3205: BranchF loc_5E3213
  loc_5E3208: LitI2_Byte 0
  loc_5E320A: CUI1I2
  loc_5E320C: FStUI1 var_86
  loc_5E3210: Branch loc_5E3255
  loc_5E3213: FLdUI1
  loc_5E3217: LitI2_Byte 1
  loc_5E3219: CUI1I2
  loc_5E321B: EqI2
  loc_5E321C: BranchF loc_5E322A
  loc_5E321F: LitI2_Byte 1
  loc_5E3221: CUI1I2
  loc_5E3223: FStUI1 var_86
  loc_5E3227: Branch loc_5E3255
  loc_5E322A: FLdUI1
  loc_5E322E: LitI2_Byte 2
  loc_5E3230: CUI1I2
  loc_5E3232: EqI2
  loc_5E3233: BranchF loc_5E3241
  loc_5E3236: LitI2_Byte 2
  loc_5E3238: CUI1I2
  loc_5E323A: FStUI1 var_86
  loc_5E323E: Branch loc_5E3255
  loc_5E3241: FLdUI1
  loc_5E3245: LitI2_Byte 3
  loc_5E3247: CUI1I2
  loc_5E3249: EqI2
  loc_5E324A: BranchF loc_5E3255
  loc_5E324D: LitI2_Byte 3
  loc_5E324F: CUI1I2
  loc_5E3251: FStUI1 var_86
  loc_5E3255: ExitProcCbHresult
End Function

Private Function Proc_115_54_6284B4() '6284B4
  'Data Table: 44BCD0
  loc_62834C: from_stack_1v = Proc_115_34_620900()
  loc_628351: FLdRfVar var_9E
  loc_628354: FLdPrThis
  loc_628355: VCallAd Control_ID_treePump
  loc_628358: FStAdFunc var_88
  loc_62835B: FLdPr var_88
  loc_62835E: LateIdLdVar var_98 DispID_9 0
  loc_628365: CastAdVar Me
  loc_628369: FStAdFunc var_9C
  loc_62836C: FLdPr var_9C
  loc_62836F:  = Me.Nodes.Count
  loc_628374: FLdI2 var_9E
  loc_628377: LitI2_Byte 0
  loc_628379: EqI2
  loc_62837A: FFreeAd var_88 = ""
  loc_628381: FFree1Var var_98 = ""
  loc_628384: BranchF loc_628388
  loc_628387: ExitProcHresult
  loc_628388: LitVarI2 var_E4, 0
  loc_62838D: FLdRfVar var_B0
  loc_628390: LitVarI2 var_D4, 100
  loc_628395: ForVar var_104
  loc_62839B: LitI2_Byte 0
  loc_62839D: CUI1I2
  loc_62839F: FLdRfVar var_B0
  loc_6283A2: CI4Var
  loc_6283A4: FLdPr Me
  loc_6283A7: MemLdRfVar from_stack_1.global_280
  loc_6283AA: Ary1StUI1
  loc_6283AC: FLdRfVar var_B0
  loc_6283AF: NextStepVar var_104
  loc_6283B5: LitVarI2 var_C4, 1
  loc_6283BA: FStVar var_B0
  loc_6283BE: LitVarI2 var_E4, 1
  loc_6283C3: FLdRfVar var_B0
  loc_6283C6: FLdRfVar var_9E
  loc_6283C9: FLdPrThis
  loc_6283CA: VCallAd Control_ID_treePump
  loc_6283CD: FStAdFunc var_88
  loc_6283D0: FLdPr var_88
  loc_6283D3: LateIdLdVar var_98 DispID_9 0
  loc_6283DA: CastAdVar Me
  loc_6283DE: FStAdFunc var_9C
  loc_6283E1: FLdPr var_9C
  loc_6283E4:  = Me.Nodes.Count
  loc_6283E9: FLdI2 var_9E
  loc_6283EC: CVarI2 var_D4
  loc_6283EF: FFreeAd var_88 = ""
  loc_6283F6: FFree1Var var_98 = ""
  loc_6283F9: ForVar var_124
  loc_6283FF: FLdRfVar var_128
  loc_628402: FLdRfVar var_B0
  loc_628405: FLdPrThis
  loc_628406: VCallAd Control_ID_treePump
  loc_628409: FStAdFunc var_88
  loc_62840C: FLdPr var_88
  loc_62840F: LateIdLdVar var_98 DispID_9 0
  loc_628416: CastAdVar Me
  loc_62841A: FStAdFunc var_9C
  loc_62841D: FLdPr var_9C
  loc_628420: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_628425: LitVarI2 var_148, 2
  loc_62842A: LitI4 1
  loc_62842F: FLdZeroAd var_128
  loc_628432: CVarAd
  loc_628436: FLdRfVar var_158
  loc_628439: ImpAdCallFPR4  = Mid(, , )
  loc_62843E: FLdRfVar var_158
  loc_628441: LitVarStr var_D4, "Su"
  loc_628446: HardType
  loc_628447: EqVarBool
  loc_628449: FFreeAd var_88 = ""
  loc_628450: FFreeVar var_98 = "": var_138 = "": var_148 = ""
  loc_62845B: BranchF loc_628470
  loc_62845E: FLdUI1
  loc_628462: CI2UI1
  loc_628464: LitI2_Byte 1
  loc_628466: AddI2
  loc_628467: CUI1I2
  loc_628469: FStUI1 var_B2
  loc_62846D: Branch loc_6284A8
  loc_628470: FLdUI1
  loc_628474: CI4UI1
  loc_628475: FLdPr Me
  loc_628478: MemLdRfVar from_stack_1.global_280
  loc_62847B: Ary1LdUI1
  loc_62847D: CI2UI1
  loc_62847F: LitI2_Byte 1
  loc_628481: AddI2
  loc_628482: CUI1I2
  loc_628484: FLdUI1
  loc_628488: CI4UI1
  loc_628489: FLdPr Me
  loc_62848C: MemLdRfVar from_stack_1.global_280
  loc_62848F: Ary1StUI1
  loc_628491: FLdUI1
  loc_628495: CI4UI1
  loc_628496: FLdPr Me
  loc_628499: MemLdRfVar from_stack_1.global_280
  loc_62849C: Ary1LdUI1
  loc_62849E: FLdUI1
  loc_6284A2: CI4UI1
  loc_6284A3: ImpAdLdRf MemVar_74C1F4
  loc_6284A6: Ary1StUI1
  loc_6284A8: FLdRfVar var_B0
  loc_6284AB: NextStepVar var_124
  loc_6284B1: ExitProcHresult
End Function

Private Function Proc_115_55_60B610() '60B610
  'Data Table: 44BCD0
  loc_60B510: ImpAdLdI2 MemVar_74C6B4
  loc_60B513: LitI2_Byte 0
  loc_60B515: EqI2
  loc_60B516: BranchF loc_60B60A
  loc_60B519: from_stack_1v = Proc_115_54_6284B4()
  loc_60B51E: from_stack_1v = Proc_115_57_63B59C()
  loc_60B523: LitI2_Byte 1
  loc_60B525: CUI1I2
  loc_60B527: FLdRfVar var_86
  loc_60B52A: LitI2_Byte 5
  loc_60B52C: CUI1I2
  loc_60B52E: ForUI1 var_8A
  loc_60B534: LitI2_Byte 0
  loc_60B536: CUI1I2
  loc_60B538: FLdUI1
  loc_60B53C: CI4UI1
  loc_60B53D: ImpAdLdRf MemVar_74C050
  loc_60B540: Ary1StUI1
  loc_60B542: FLdRfVar var_86
  loc_60B545: NextUI1
  loc_60B54B: LitI2_Byte 0
  loc_60B54D: CUI1I2
  loc_60B54F: ImpAdStUI1 MemVar_74C0F8
  loc_60B553: ImpAdLdUI1
  loc_60B557: CI2UI1
  loc_60B559: LitI2_Byte &H11
  loc_60B55B: LtI2
  loc_60B55C: BranchF loc_60B572
  loc_60B55F: ImpAdLdUI1
  loc_60B563: ImpAdStUI1 MemVar_74C069
  loc_60B567: LitI2_Byte 0
  loc_60B569: CUI1I2
  loc_60B56B: ImpAdStUI1 MemVar_74C0F9
  loc_60B56F: Branch loc_60B58E
  loc_60B572: ImpAdLdUI1
  loc_60B576: CI2UI1
  loc_60B578: LitI2_Byte &H10
  loc_60B57A: GtI2
  loc_60B57B: BranchF loc_60B58E
  loc_60B57E: LitI2_Byte &H10
  loc_60B580: CUI1I2
  loc_60B582: ImpAdStUI1 MemVar_74C069
  loc_60B586: LitI2_Byte 1
  loc_60B588: CUI1I2
  loc_60B58A: ImpAdStUI1 MemVar_74C0F9
  loc_60B58E: LitI2_Byte 1
  loc_60B590: CUI1I2
  loc_60B592: FLdRfVar var_86
  loc_60B595: LitI2_Byte &H20
  loc_60B597: CUI1I2
  loc_60B599: ForUI1 var_8E
  loc_60B59F: FLdUI1
  loc_60B5A3: CI4UI1
  loc_60B5A4: FLdPr Me
  loc_60B5A7: MemLdRfVar from_stack_1.global_220
  loc_60B5AA: Ary1LdUI1
  loc_60B5AC: CI2UI1
  loc_60B5AE: LitI2_Byte 0
  loc_60B5B0: GtI2
  loc_60B5B1: BranchF loc_60B5D2
  loc_60B5B4: FLdUI1
  loc_60B5B8: CI4UI1
  loc_60B5B9: FLdPr Me
  loc_60B5BC: MemLdRfVar from_stack_1.global_220
  loc_60B5BF: Ary1LdUI1
  loc_60B5C1: CI2UI1
  loc_60B5C3: LitI2_Byte 1
  loc_60B5C5: SubI2
  loc_60B5C6: CUI1I2
  loc_60B5C8: FLdUI1
  loc_60B5CC: CI4UI1
  loc_60B5CD: ImpAdLdRf MemVar_74C19C
  loc_60B5D0: Ary1StUI1
  loc_60B5D2: FLdRfVar var_86
  loc_60B5D5: NextUI1
  loc_60B5DB: from_stack_1v = Proc_115_52_5F1004()
  loc_60B5E0: ImpAdLdUI1
  loc_60B5E4: LitI4 1
  loc_60B5E9: ImpAdLdRf MemVar_74C050
  loc_60B5EC: Ary1StUI1
  loc_60B5EE: FLdRfVar var_90
  loc_60B5F1: ImpAdLdRf MemVar_74C6B0
  loc_60B5F4: NewIfNullPr CPumpsConfig
  loc_60B5F7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_60B5FC: FLdRfVar var_90
  loc_60B5FF: ImpAdLdRf MemVar_74C6B0
  loc_60B602: NewIfNullPr CPumpsConfig
  loc_60B605: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_60B60A: ImpAdCallFPR4 Proc_87_17_729AA4()
  loc_60B60F: ExitProcHresult
End Function

Private Function Proc_115_56_62D614() '62D614
  'Data Table: 44BCD0
  loc_62D484: OnErrorGoto loc_62D5EA
  loc_62D487: FLdRfVar var_9C
  loc_62D48A: FLdRfVar var_98
  loc_62D48D: ImpAdLdRf MemVar_7520D4
  loc_62D490: NewIfNullPr Global
  loc_62D493:  = Global.App
  loc_62D498: FLdPr var_98
  loc_62D49B:  = App.Path
  loc_62D4A0: ILdRf var_9C
  loc_62D4A3: LitStr "\SaveCfg.cfg"
  loc_62D4A6: ConcatStr
  loc_62D4A7: FStStrNoPop var_B0
  loc_62D4AA: LitI2_Byte 1
  loc_62D4AC: LitI2_Byte &HFF
  loc_62D4AE: OpenFile
  loc_62D4B2: FFreeStr var_9C = ""
  loc_62D4B9: FFree1Ad var_98
  loc_62D4BC: LitI2_Byte 1
  loc_62D4BE: CUI1I2
  loc_62D4C0: FStUI1 var_BA
  loc_62D4C4: LitI2_Byte 1
  loc_62D4C6: ImpAdCallI2 push EOF()
  loc_62D4CB: NotI4
  loc_62D4CC: BranchF loc_62D5EA
  loc_62D4CF: LitI2_Byte 1
  loc_62D4D1: FLdRfVar var_B4
  loc_62D4D4: LineInputStr
  loc_62D4D6: FLdRfVar var_B4
  loc_62D4D9: CVarRef
  loc_62D4DE: FLdRfVar var_CC
  loc_62D4E1: ImpAdCallFPR4  = Trim()
  loc_62D4E6: FLdRfVar var_CC
  loc_62D4E9: LitVarStr var_DC, vbNullString
  loc_62D4EE: HardType
  loc_62D4EF: EqVarBool
  loc_62D4F1: FFree1Var var_CC = ""
  loc_62D4F4: BranchF loc_62D4FA
  loc_62D4F7: Branch loc_62D5E7
  loc_62D4FA: FLdUI1
  loc_62D4FE: CI2UI1
  loc_62D500: LitI2_Byte &H63
  loc_62D502: GeI2
  loc_62D503: BranchF loc_62D509
  loc_62D506: Branch loc_62D5EA
  loc_62D509: LitVarI2 var_CC, 2
  loc_62D50E: LitI4 1
  loc_62D513: FLdRfVar var_B4
  loc_62D516: CVarRef
  loc_62D51B: FLdRfVar var_EC
  loc_62D51E: ImpAdCallFPR4  = Mid(, , )
  loc_62D523: FLdRfVar var_EC
  loc_62D526: FLdRfVar var_FC
  loc_62D529: ImpAdCallFPR4  = Trim()
  loc_62D52E: FLdRfVar var_FC
  loc_62D531: CUI1Var
  loc_62D533: FLdUI1
  loc_62D537: CI4UI1
  loc_62D538: FLdPr Me
  loc_62D53B: MemLdRfVar from_stack_1.global_196
  loc_62D53E: Ary1StUI1
  loc_62D540: FFreeVar var_CC = "": var_EC = ""
  loc_62D549: LitVarI2 var_CC, 2
  loc_62D54E: LitI4 1
  loc_62D553: FLdRfVar var_B4
  loc_62D556: CVarRef
  loc_62D55B: FLdRfVar var_EC
  loc_62D55E: ImpAdCallFPR4  = Mid(, , )
  loc_62D563: FLdRfVar var_EC
  loc_62D566: FLdRfVar var_FC
  loc_62D569: ImpAdCallFPR4  = Trim()
  loc_62D56E: FLdRfVar var_FC
  loc_62D571: LitVarI2 var_10C, 1
  loc_62D576: SubVar var_11C
  loc_62D57A: CI4Var
  loc_62D57C: FLdPr Me
  loc_62D57F: MemLdRfVar from_stack_1.global_252
  loc_62D582: Ary1LdI4
  loc_62D583: LitStr vbNullString
  loc_62D586: EqStr
  loc_62D588: FFreeVar var_CC = "": var_EC = ""
  loc_62D591: BranchF loc_62D5A5
  loc_62D594: LitI2_Byte 1
  loc_62D596: CUI1I2
  loc_62D598: FLdUI1
  loc_62D59C: CI4UI1
  loc_62D59D: FLdPr Me
  loc_62D5A0: MemLdRfVar from_stack_1.global_196
  loc_62D5A3: Ary1StUI1
  loc_62D5A5: LitVarI2 var_CC, 1
  loc_62D5AA: LitI4 4
  loc_62D5AF: FLdRfVar var_B4
  loc_62D5B2: CVarRef
  loc_62D5B7: FLdRfVar var_EC
  loc_62D5BA: ImpAdCallFPR4  = Mid(, , )
  loc_62D5BF: FLdRfVar var_EC
  loc_62D5C2: CUI1Var
  loc_62D5C4: FLdUI1
  loc_62D5C8: CI4UI1
  loc_62D5C9: FLdPr Me
  loc_62D5CC: MemLdRfVar from_stack_1.global_220
  loc_62D5CF: Ary1StUI1
  loc_62D5D1: FFreeVar var_CC = ""
  loc_62D5D8: FLdUI1
  loc_62D5DC: CI2UI1
  loc_62D5DE: LitI2_Byte 1
  loc_62D5E0: AddI2
  loc_62D5E1: CUI1I2
  loc_62D5E3: FStUI1 var_BA
  loc_62D5E7: Branch loc_62D4C4
  loc_62D5EA: FLdRfVar var_120
  loc_62D5ED: ImpAdCallI2 Err 'rtcErrObj
  loc_62D5F2: FStAdFunc var_98
  loc_62D5F5: FLdPr var_98
  loc_62D5F8:  = Err.Number
  loc_62D5FD: ILdRf var_120
  loc_62D600: LitI4 &H35
  loc_62D605: EqI4
  loc_62D606: FFree1Ad var_98
  loc_62D609: BranchF loc_62D60C
  loc_62D60C: LitI2_Byte 1
  loc_62D60E: Close
  loc_62D610: ExitProcHresult
End Function

Private Function Proc_115_57_63B59C() '63B59C
  'Data Table: 44BCD0
  loc_63B388: OnErrorGoto loc_63B575
  loc_63B38B: FLdRfVar var_9C
  loc_63B38E: FLdRfVar var_98
  loc_63B391: ImpAdLdRf MemVar_7520D4
  loc_63B394: NewIfNullPr Global
  loc_63B397:  = Global.App
  loc_63B39C: FLdPr var_98
  loc_63B39F:  = App.Path
  loc_63B3A4: ILdRf var_9C
  loc_63B3A7: LitStr "\SaveCfg.cfg"
  loc_63B3AA: ConcatStr
  loc_63B3AB: CVarStr var_AC
  loc_63B3AE: ImpAdCallFPR4 Kill 
  loc_63B3B3: FFree1Str var_9C
  loc_63B3B6: FFree1Ad var_98
  loc_63B3B9: FFree1Var var_AC = ""
  loc_63B3BC: FLdRfVar var_9C
  loc_63B3BF: FLdRfVar var_98
  loc_63B3C2: ImpAdLdRf MemVar_7520D4
  loc_63B3C5: NewIfNullPr Global
  loc_63B3C8:  = Global.App
  loc_63B3CD: FLdPr var_98
  loc_63B3D0:  = App.Path
  loc_63B3D5: ILdRf var_9C
  loc_63B3D8: LitStr "\SaveCfg.cfg"
  loc_63B3DB: ConcatStr
  loc_63B3DC: FStStrNoPop var_C0
  loc_63B3DF: LitI2_Byte 1
  loc_63B3E1: LitI2_Byte &HFF
  loc_63B3E3: OpenFile
  loc_63B3E7: FFreeStr var_9C = ""
  loc_63B3EE: FFree1Ad var_98
  loc_63B3F1: LitI2_Byte 1
  loc_63B3F3: CUI1I2
  loc_63B3F5: FStUI1 var_C6
  loc_63B3F9: ImpAdLdUI1
  loc_63B3FD: CI2UI1
  loc_63B3FF: LitI2_Byte &H20
  loc_63B401: LtI2
  loc_63B402: BranchF loc_63B448
  loc_63B405: ImpAdLdUI1
  loc_63B409: CI2UI1
  loc_63B40B: LitI2_Byte 1
  loc_63B40D: AddI2
  loc_63B40E: CUI1I2
  loc_63B410: FLdRfVar var_C8
  loc_63B413: LitI2_Byte &H20
  loc_63B415: CUI1I2
  loc_63B417: ForUI1 var_CC
  loc_63B41D: LitI2_Byte 0
  loc_63B41F: CUI1I2
  loc_63B421: FLdUI1
  loc_63B425: CI4UI1
  loc_63B426: FLdPr Me
  loc_63B429: MemLdRfVar from_stack_1.global_220
  loc_63B42C: Ary1StUI1
  loc_63B42E: LitI2_Byte 0
  loc_63B430: CUI1I2
  loc_63B432: FLdUI1
  loc_63B436: CI4UI1
  loc_63B437: FLdPr Me
  loc_63B43A: MemLdRfVar from_stack_1.global_196
  loc_63B43D: Ary1StUI1
  loc_63B43F: FLdRfVar var_C8
  loc_63B442: NextUI1
  loc_63B448: FLdUI1
  loc_63B44C: CI2UI1
  loc_63B44E: LitI2_Byte &H63
  loc_63B450: LtI2
  loc_63B451: BranchF loc_63B575
  loc_63B454: FLdUI1
  loc_63B458: CI4UI1
  loc_63B459: FLdPr Me
  loc_63B45C: MemLdRfVar from_stack_1.global_196
  loc_63B45F: Ary1LdUI1
  loc_63B461: CI2UI1
  loc_63B463: LitI2_Byte 0
  loc_63B465: EqI2
  loc_63B466: BranchF loc_63B46C
  loc_63B469: Branch loc_63B563
  loc_63B46C: FLdUI1
  loc_63B470: CI2UI1
  loc_63B472: LitI2_Byte &H63
  loc_63B474: GeI2
  loc_63B475: BranchF loc_63B47B
  loc_63B478: Branch loc_63B575
  loc_63B47B: FLdUI1
  loc_63B47F: CI4UI1
  loc_63B480: FLdPr Me
  loc_63B483: MemLdRfVar from_stack_1.global_220
  loc_63B486: Ary1LdUI1
  loc_63B488: CI2UI1
  loc_63B48A: LitI2_Byte 0
  loc_63B48C: EqI2
  loc_63B48D: BranchF loc_63B4A1
  loc_63B490: LitI2_Byte 1
  loc_63B492: CUI1I2
  loc_63B494: FLdUI1
  loc_63B498: CI4UI1
  loc_63B499: FLdPr Me
  loc_63B49C: MemLdRfVar from_stack_1.global_220
  loc_63B49F: Ary1StUI1
  loc_63B4A1: FLdUI1
  loc_63B4A5: CI4UI1
  loc_63B4A6: FLdPr Me
  loc_63B4A9: MemLdRfVar from_stack_1.global_196
  loc_63B4AC: Ary1LdUI1
  loc_63B4AE: CStrI2
  loc_63B4B0: FStStrNoPop var_9C
  loc_63B4B3: FnLenStr
  loc_63B4B4: LitI4 1
  loc_63B4B9: EqI4
  loc_63B4BA: FFree1Str var_9C
  loc_63B4BD: BranchF loc_63B501
  loc_63B4C0: FLdUI1
  loc_63B4C4: CI4UI1
  loc_63B4C5: FLdPr Me
  loc_63B4C8: MemLdRfVar from_stack_1.global_196
  loc_63B4CB: Ary1LdUI1
  loc_63B4CD: CStrI2
  loc_63B4CF: FStStrNoPop var_9C
  loc_63B4D2: LitStr " "
  loc_63B4D5: ConcatStr
  loc_63B4D6: FStStrNoPop var_C0
  loc_63B4D9: LitStr "|"
  loc_63B4DC: ConcatStr
  loc_63B4DD: FStStrNoPop var_D0
  loc_63B4E0: FLdUI1
  loc_63B4E4: CI4UI1
  loc_63B4E5: FLdPr Me
  loc_63B4E8: MemLdRfVar from_stack_1.global_220
  loc_63B4EB: Ary1LdUI1
  loc_63B4ED: CStrI2
  loc_63B4EF: FStStrNoPop var_D4
  loc_63B4F2: ConcatStr
  loc_63B4F3: FStStr var_C4
  loc_63B4F6: FFreeStr var_9C = "": var_C0 = "": var_D0 = ""
  loc_63B501: FLdUI1
  loc_63B505: CI4UI1
  loc_63B506: FLdPr Me
  loc_63B509: MemLdRfVar from_stack_1.global_196
  loc_63B50C: Ary1LdUI1
  loc_63B50E: CStrI2
  loc_63B510: FStStrNoPop var_9C
  loc_63B513: FnLenStr
  loc_63B514: LitI4 2
  loc_63B519: EqI4
  loc_63B51A: FFree1Str var_9C
  loc_63B51D: BranchF loc_63B558
  loc_63B520: FLdUI1
  loc_63B524: CI4UI1
  loc_63B525: FLdPr Me
  loc_63B528: MemLdRfVar from_stack_1.global_196
  loc_63B52B: Ary1LdUI1
  loc_63B52D: CStrI2
  loc_63B52F: FStStrNoPop var_9C
  loc_63B532: LitStr "|"
  loc_63B535: ConcatStr
  loc_63B536: FStStrNoPop var_C0
  loc_63B539: FLdUI1
  loc_63B53D: CI4UI1
  loc_63B53E: FLdPr Me
  loc_63B541: MemLdRfVar from_stack_1.global_220
  loc_63B544: Ary1LdUI1
  loc_63B546: CStrI2
  loc_63B548: FStStrNoPop var_D0
  loc_63B54B: ConcatStr
  loc_63B54C: FStStr var_C4
  loc_63B54F: FFreeStr var_9C = "": var_C0 = ""
  loc_63B558: ILdRf var_C4
  loc_63B55B: LitI2_Byte 1
  loc_63B55D: PrintFile
  loc_63B563: FLdUI1
  loc_63B567: CI2UI1
  loc_63B569: LitI2_Byte 1
  loc_63B56B: AddI2
  loc_63B56C: CUI1I2
  loc_63B56E: FStUI1 var_C6
  loc_63B572: Branch loc_63B448
  loc_63B575: FLdRfVar var_D8
  loc_63B578: ImpAdCallI2 Err 'rtcErrObj
  loc_63B57D: FStAdFunc var_98
  loc_63B580: FLdPr var_98
  loc_63B583:  = Err.Number
  loc_63B588: ILdRf var_D8
  loc_63B58B: LitI4 &H35
  loc_63B590: EqI4
  loc_63B591: FFree1Ad var_98
  loc_63B594: BranchF loc_63B597
  loc_63B597: LitI2_Byte 1
  loc_63B599: Close
  loc_63B59B: ExitProcHresult
End Function

Private Function Proc_115_58_637CFC() '637CFC
  'Data Table: 44BCD0
  loc_637AF0: FLdRfVar var_AE
  loc_637AF3: FLdPrThis
  loc_637AF4: VCallAd Control_ID_treePump
  loc_637AF7: FStAdFunc var_98
  loc_637AFA: FLdPr var_98
  loc_637AFD: LateIdLdVar var_A8 DispID_9 0
  loc_637B04: CastAdVar Me
  loc_637B08: FStAdFunc var_AC
  loc_637B0B: FLdPr var_AC
  loc_637B0E:  = Me.Nodes.Count
  loc_637B13: FLdI2 var_AE
  loc_637B16: LitI2_Byte 0
  loc_637B18: GtI2
  loc_637B19: FFreeAd var_98 = ""
  loc_637B20: FFree1Var var_A8 = ""
  loc_637B23: BranchF loc_637CCD
  loc_637B28: LitI2_Byte 1
  loc_637B2A: CUI1I2
  loc_637B2C: FLdPr Me
  loc_637B2F: MemStUI1
  loc_637B35: LitStr vbNullString
  loc_637B38: FLdPr Me
  loc_637B3B: MemLdRfVar from_stack_1.global_193
  loc_637B3E: StFixedStr
  loc_637B43: LitI2_Byte &HFF
  loc_637B45: FLdPrThis
  loc_637B46: VCallAd Control_ID_lbMarca
  loc_637B49: FStAdFunc var_98
  loc_637B4C: FLdPr var_98
  loc_637B4F: Me.Visible = from_stack_1b
  loc_637B54: FFree1Ad var_98
  loc_637B59: LitI2_Byte &HFF
  loc_637B5B: FLdPrThis
  loc_637B5C: VCallAd Control_ID_lbModelo
  loc_637B5F: FStAdFunc var_98
  loc_637B62: FLdPr var_98
  loc_637B65: Me.Visible = from_stack_1b
  loc_637B6A: FFree1Ad var_98
  loc_637B6F: LitI2_Byte &HFF
  loc_637B71: FLdPrThis
  loc_637B72: VCallAd Control_ID_cmbModelo
  loc_637B75: FStAdFunc var_98
  loc_637B78: FLdPr var_98
  loc_637B7B: Me.Visible = from_stack_1b
  loc_637B80: FFree1Ad var_98
  loc_637B85: LitI2_Byte &HFF
  loc_637B87: FLdPrThis
  loc_637B88: VCallAd Control_ID_cmbMarca
  loc_637B8B: FStAdFunc var_98
  loc_637B8E: FLdPr var_98
  loc_637B91: Me.Visible = from_stack_1b
  loc_637B96: FFree1Ad var_98
  loc_637B9B: LitI2_Byte &HFF
  loc_637B9D: FLdPrThis
  loc_637B9E: VCallAd Control_ID_lbSideProduct
  loc_637BA1: FStAdFunc var_98
  loc_637BA4: FLdPr var_98
  loc_637BA7: Me.Visible = from_stack_1b
  loc_637BAC: FFree1Ad var_98
  loc_637BB1: LitI2_Byte &HFF
  loc_637BB3: FLdPrThis
  loc_637BB4: VCallAd Control_ID_cmbSideProduct
  loc_637BB7: FStAdFunc var_98
  loc_637BBA: FLdPr var_98
  loc_637BBD: Me.Visible = from_stack_1b
  loc_637BC2: FFree1Ad var_98
  loc_637BC7: LitI2_Byte 0
  loc_637BC9: FLdPrThis
  loc_637BCA: VCallAd Control_ID_lbProduct
  loc_637BCD: FStAdFunc var_98
  loc_637BD0: FLdPr var_98
  loc_637BD3: Me.Visible = from_stack_1b
  loc_637BD8: FFree1Ad var_98
  loc_637BDD: LitI2_Byte 0
  loc_637BDF: FLdPrThis
  loc_637BE0: VCallAd Control_ID_lbLowProduct
  loc_637BE3: FStAdFunc var_98
  loc_637BE6: FLdPr var_98
  loc_637BE9: Me.Visible = from_stack_1b
  loc_637BEE: FFree1Ad var_98
  loc_637BF3: LitI2_Byte 0
  loc_637BF5: FLdPrThis
  loc_637BF6: VCallAd Control_ID_cmbLowProduct
  loc_637BF9: FStAdFunc var_98
  loc_637BFC: FLdPr var_98
  loc_637BFF: Me.Visible = from_stack_1b
  loc_637C04: FFree1Ad var_98
  loc_637C09: LitI2_Byte 0
  loc_637C0B: FLdPrThis
  loc_637C0C: VCallAd Control_ID_cmbProduct
  loc_637C0F: FStAdFunc var_98
  loc_637C12: FLdPr var_98
  loc_637C15: Me.Visible = from_stack_1b
  loc_637C1A: FFree1Ad var_98
  loc_637C1F: LitI2_Byte &HFF
  loc_637C21: FLdPr Me
  loc_637C24: MemStI2 global_276
  loc_637C29: FLdRfVar var_AE
  loc_637C2C: FLdPr Me
  loc_637C2F: MemLdUI1 global_192
  loc_637C33: CI4UI1
  loc_637C34: ImpAdLdRf MemVar_74C0FC
  loc_637C37: Ary1LdRf
  loc_637C38: from_stack_2v = Proc_115_53_5E325C(from_stack_1v)
  loc_637C3D: FLdUI1
  loc_637C41: CI2UI1
  loc_637C43: FLdPrThis
  loc_637C44: VCallAd Control_ID_cmbModelo
  loc_637C47: FStAdFunc var_98
  loc_637C4A: FLdPr var_98
  loc_637C4D: Me.ListIndex = from_stack_1
  loc_637C52: FFree1Ad var_98
  loc_637C57: OnErrorGoto loc_637CCF
  loc_637C5C: FLdPr Me
  loc_637C5F: MemLdUI1 global_192
  loc_637C63: CI4UI1
  loc_637C64: FLdPr Me
  loc_637C67: MemLdRfVar from_stack_1.global_196
  loc_637C6A: Ary1LdUI1
  loc_637C6C: CI2UI1
  loc_637C6E: LitI2_Byte 1
  loc_637C70: SubI2
  loc_637C71: FLdPrThis
  loc_637C72: VCallAd Control_ID_cmbMarca
  loc_637C75: FStAdFunc var_98
  loc_637C78: FLdPr var_98
  loc_637C7B: Me.ListIndex = from_stack_1
  loc_637C80: FFree1Ad var_98
  loc_637C85: FLdPr Me
  loc_637C88: MemLdUI1 global_192
  loc_637C8C: CI4UI1
  loc_637C8D: FLdPr Me
  loc_637C90: MemLdRfVar from_stack_1.global_220
  loc_637C93: Ary1LdUI1
  loc_637C95: CI2UI1
  loc_637C97: LitI2_Byte 1
  loc_637C99: SubI2
  loc_637C9A: FLdPrThis
  loc_637C9B: VCallAd Control_ID_cmbSideProduct
  loc_637C9E: FStAdFunc var_98
  loc_637CA1: FLdPr var_98
  loc_637CA4: Me.ListIndex = from_stack_1
  loc_637CA9: FFree1Ad var_98
  loc_637CAE: LitI2_Byte 0
  loc_637CB0: FLdPr Me
  loc_637CB3: MemStI2 global_276
  loc_637CB8: FLdPrThis
  loc_637CB9: VCallAd Control_ID_treePump
  loc_637CBC: FStAdFunc var_98
  loc_637CBF: FLdPr var_98
  loc_637CC2: LateIdCall
  loc_637CCA: FFree1Ad var_98
  loc_637CD1: FLdRfVar var_B4
  loc_637CD4: ImpAdCallI2 Err 'rtcErrObj
  loc_637CD9: FStAdFunc var_98
  loc_637CDC: FLdPr var_98
  loc_637CDF:  = Err.Number
  loc_637CE4: ILdRf var_B4
  loc_637CE7: LitI4 5
  loc_637CEC: EqI4
  loc_637CED: FFree1Ad var_98
  loc_637CF0: BranchF loc_637CF9
  loc_637CF5: Resume
  loc_637CFB: ExitProcHresult
End Function

Private Function Proc_115_59_630590() '630590
  'Data Table: 44BCD0
  loc_6303BC: FLdPr Me
  loc_6303BF: MemLdUI1 global_192
  loc_6303C3: FStUI1 var_86
  loc_6303C7: FLdPr Me
  loc_6303CA: MemLdUI1 global_192
  loc_6303CE: FLdRfVar var_86
  loc_6303D1: LitI2_Byte &H1F
  loc_6303D3: CUI1I2
  loc_6303D5: ForUI1 var_8E
  loc_6303DB: FLdUI1
  loc_6303DF: CI2UI1
  loc_6303E1: LitI2_Byte 1
  loc_6303E3: AddI2
  loc_6303E4: CI4UI1
  loc_6303E5: ImpAdLdRf MemVar_74C1F4
  loc_6303E8: Ary1LdUI1
  loc_6303EA: FLdUI1
  loc_6303EE: CI4UI1
  loc_6303EF: ImpAdLdRf MemVar_74C1F4
  loc_6303F2: Ary1StUI1
  loc_6303F4: FLdUI1
  loc_6303F8: CI2UI1
  loc_6303FA: LitI2_Byte 1
  loc_6303FC: AddI2
  loc_6303FD: CI4UI1
  loc_6303FE: ImpAdLdRf MemVar_74C0FC
  loc_630401: Ary1LdUI1
  loc_630403: FLdUI1
  loc_630407: CI4UI1
  loc_630408: ImpAdLdRf MemVar_74C0FC
  loc_63040B: Ary1StUI1
  loc_63040D: FLdUI1
  loc_630411: CI2UI1
  loc_630413: LitI2_Byte 1
  loc_630415: AddI2
  loc_630416: CI4UI1
  loc_630417: FLdPr Me
  loc_63041A: MemLdRfVar from_stack_1.global_220
  loc_63041D: Ary1LdUI1
  loc_63041F: FLdUI1
  loc_630423: CI4UI1
  loc_630424: FLdPr Me
  loc_630427: MemLdRfVar from_stack_1.global_220
  loc_63042A: Ary1StUI1
  loc_63042C: FLdUI1
  loc_630430: CI2UI1
  loc_630432: LitI2_Byte 1
  loc_630434: AddI2
  loc_630435: CI4UI1
  loc_630436: FLdPr Me
  loc_630439: MemLdRfVar from_stack_1.global_196
  loc_63043C: Ary1LdUI1
  loc_63043E: FLdUI1
  loc_630442: CI4UI1
  loc_630443: FLdPr Me
  loc_630446: MemLdRfVar from_stack_1.global_196
  loc_630449: Ary1StUI1
  loc_63044B: LitI2_Byte 0
  loc_63044D: CUI1I2
  loc_63044F: FLdRfVar var_8A
  loc_630452: FLdUI1
  loc_630456: CI4UI1
  loc_630457: ImpAdLdRf MemVar_74C0FC
  loc_63045A: Ary1LdUI1
  loc_63045C: ForUI1 var_92
  loc_630462: FLdUI1
  loc_630466: CI2UI1
  loc_630468: LitI2_Byte 1
  loc_63046A: AddI2
  loc_63046B: CI4UI1
  loc_63046C: FLdUI1
  loc_630470: CI4UI1
  loc_630471: FLdPr Me
  loc_630474: MemLdRfVar from_stack_1.global_56
  loc_630477: AryLdPr
  loc_63047A: MemLdUI1 global_0
  loc_63047E: FLdUI1
  loc_630482: CI4UI1
  loc_630483: FLdUI1
  loc_630487: CI4UI1
  loc_630488: FLdPr Me
  loc_63048B: MemLdRfVar from_stack_1.global_56
  loc_63048E: AryLdPr
  loc_630491: MemStUI1
  loc_630495: FLdUI1
  loc_630499: CI2UI1
  loc_63049B: LitI2_Byte 1
  loc_63049D: AddI2
  loc_63049E: CI4UI1
  loc_63049F: FLdUI1
  loc_6304A3: CI4UI1
  loc_6304A4: LitI4 0
  loc_6304A9: FLdPr Me
  loc_6304AC: MemLdRfVar from_stack_1.global_88
  loc_6304AF: AryLdPr
  loc_6304B2: MemLdUI1 global_0
  loc_6304B6: FLdUI1
  loc_6304BA: CI4UI1
  loc_6304BB: FLdUI1
  loc_6304BF: CI4UI1
  loc_6304C0: LitI4 0
  loc_6304C5: FLdPr Me
  loc_6304C8: MemLdRfVar from_stack_1.global_88
  loc_6304CB: AryLdPr
  loc_6304CE: MemStUI1
  loc_6304D2: FLdRfVar var_8A
  loc_6304D5: NextUI1
  loc_6304DB: FLdRfVar var_86
  loc_6304DE: NextUI1
  loc_6304E4: FLdPr Me
  loc_6304E7: MemLdUI1 global_192
  loc_6304EB: CI2UI1
  loc_6304ED: LitI2_Byte &H20
  loc_6304EF: EqI2
  loc_6304F0: BranchF loc_630587
  loc_6304F3: LitI2_Byte 0
  loc_6304F5: CUI1I2
  loc_6304F7: LitI4 &H20
  loc_6304FC: ImpAdLdRf MemVar_74C1F4
  loc_6304FF: Ary1StUI1
  loc_630501: LitI2_Byte 0
  loc_630503: CUI1I2
  loc_630505: LitI4 &H20
  loc_63050A: ImpAdLdRf MemVar_74C0FC
  loc_63050D: Ary1StUI1
  loc_63050F: LitI2_Byte 0
  loc_630511: CUI1I2
  loc_630513: LitI4 &H20
  loc_630518: FLdPr Me
  loc_63051B: MemLdRfVar from_stack_1.global_220
  loc_63051E: Ary1StUI1
  loc_630520: LitStr vbNullString
  loc_630523: CUI1Str
  loc_630525: LitI4 &H20
  loc_63052A: FLdPr Me
  loc_63052D: MemLdRfVar from_stack_1.global_196
  loc_630530: Ary1StUI1
  loc_630532: LitI2_Byte 0
  loc_630534: CUI1I2
  loc_630536: FLdRfVar var_8A
  loc_630539: LitI2_Byte 3
  loc_63053B: CUI1I2
  loc_63053D: ForUI1 var_96
  loc_630543: LitI2_Byte 0
  loc_630545: CUI1I2
  loc_630547: LitI4 &H20
  loc_63054C: FLdUI1
  loc_630550: CI4UI1
  loc_630551: FLdPr Me
  loc_630554: MemLdRfVar from_stack_1.global_56
  loc_630557: AryLdPr
  loc_63055A: MemStUI1
  loc_63055E: LitI2_Byte 0
  loc_630560: CUI1I2
  loc_630562: LitI4 &H20
  loc_630567: FLdUI1
  loc_63056B: CI4UI1
  loc_63056C: LitI4 0
  loc_630571: FLdPr Me
  loc_630574: MemLdRfVar from_stack_1.global_88
  loc_630577: AryLdPr
  loc_63057A: MemStUI1
  loc_63057E: FLdRfVar var_8A
  loc_630581: NextUI1
  loc_630587: from_stack_1v = Proc_115_34_620900()
  loc_63058C: ExitProcHresult
End Function

Private Function Proc_115_60_5F86E4(arg_C) '5F86E4
  'Data Table: 44BCD0
  loc_5F8638: LitI2_Byte 0
  loc_5F863A: CUI1I2
  loc_5F863C: FLdRfVar var_88
  loc_5F863F: FLdRfVar var_8E
  loc_5F8642: FLdPrThis
  loc_5F8643: VCallAd Control_ID_cmbLowProduct
  loc_5F8646: FStAdFunc var_8C
  loc_5F8649: FLdPr var_8C
  loc_5F864C:  = Me.ListCount
  loc_5F8651: FLdI2 var_8E
  loc_5F8654: LitI2_Byte 1
  loc_5F8656: SubI2
  loc_5F8657: CUI1I2
  loc_5F8659: FFree1Ad var_8C
  loc_5F865C: ForUI1 var_92
  loc_5F8662: ILdRf arg_C
  loc_5F8665: CVarRef
  loc_5F866A: FLdRfVar var_B4
  loc_5F866D: ImpAdCallFPR4  = Trim()
  loc_5F8672: FLdRfVar var_B4
  loc_5F8675: FLdRfVar var_C4
  loc_5F8678: ImpAdCallFPR4  = Ucase()
  loc_5F867D: FLdRfVar var_C4
  loc_5F8680: FLdRfVar var_C8
  loc_5F8683: FLdUI1
  loc_5F8687: CI2UI1
  loc_5F8689: FLdPrThis
  loc_5F868A: VCallAd Control_ID_cmbLowProduct
  loc_5F868D: FStAdFunc var_8C
  loc_5F8690: FLdPr var_8C
  loc_5F8693: from_stack_2 = Me.List(from_stack_1)
  loc_5F8698: FLdZeroAd var_C8
  loc_5F869B: CVarStr var_D8
  loc_5F869E: FLdRfVar var_E8
  loc_5F86A1: ImpAdCallFPR4  = Trim()
  loc_5F86A6: FLdRfVar var_E8
  loc_5F86A9: FLdRfVar var_F8
  loc_5F86AC: ImpAdCallFPR4  = Ucase()
  loc_5F86B1: FLdRfVar var_F8
  loc_5F86B4: EqVarBool
  loc_5F86B6: FFree1Ad var_8C
  loc_5F86B9: FFreeVar var_B4 = "": var_D8 = "": var_E8 = "": var_C4 = ""
  loc_5F86C6: BranchF loc_5F86D4
  loc_5F86C9: FLdUI1
  loc_5F86CD: FStUI1 var_86
  loc_5F86D1: Branch loc_5F86DD
  loc_5F86D4: FLdRfVar var_88
  loc_5F86D7: NextUI1
  loc_5F86DD: ExitProcCbHresult
End Function

Private Function Proc_115_61_62C13C() '62C13C
  'Data Table: 44BCD0
  loc_62BFC0: OnErrorGoto loc_62C10D
  loc_62BFC5: LitI2_Byte 1
  loc_62BFC7: CUI1I2
  loc_62BFC9: FLdRfVar var_96
  loc_62BFCC: LitI2_Byte &H20
  loc_62BFCE: CUI1I2
  loc_62BFD0: ForUI1 var_9A
  loc_62BFD8: FLdRfVar var_CC
  loc_62BFDB: FLdRfVar var_C8
  loc_62BFDE: FLdRfVar var_96
  loc_62BFE1: CVarRef
  loc_62BFE6: FLdPrThis
  loc_62BFE7: VCallAd Control_ID_treePump
  loc_62BFEA: FStAdFunc var_A0
  loc_62BFED: FLdPr var_A0
  loc_62BFF0: LateIdLdVar var_B0 DispID_9 0
  loc_62BFF7: CastAdVar Me
  loc_62BFFB: FStAdFunc var_C4
  loc_62BFFE: FLdPr var_C4
  loc_62C001: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_62C006: FLdPr var_C8
  loc_62C009:  = Me.Key
  loc_62C00E: LitVarI2 var_FC, 2
  loc_62C013: LitI4 5
  loc_62C018: FLdZeroAd var_CC
  loc_62C01B: CVarStr var_DC
  loc_62C01E: FLdRfVar var_10C
  loc_62C021: ImpAdCallFPR4  = Mid(, , )
  loc_62C026: FLdRfVar var_10C
  loc_62C029: FLdRfVar var_11C
  loc_62C02C: ImpAdCallFPR4  = Trim()
  loc_62C031: FLdRfVar var_11C
  loc_62C034: FLdPr Me
  loc_62C037: MemLdUI1 global_192
  loc_62C03B: CStrI2
  loc_62C03D: CVarStr var_12C
  loc_62C040: HardType
  loc_62C041: EqVarBool
  loc_62C043: FFreeAd var_A0 = "": var_C4 = ""
  loc_62C04C: FFreeVar var_B0 = "": var_DC = "": var_FC = "": var_10C = "": var_11C = ""
  loc_62C05B: BranchF loc_62C100
  loc_62C060: LitI2_Byte &HFF
  loc_62C062: FLdRfVar var_C8
  loc_62C065: FLdRfVar var_96
  loc_62C068: CVarRef
  loc_62C06D: FLdPrThis
  loc_62C06E: VCallAd Control_ID_treePump
  loc_62C071: FStAdFunc var_A0
  loc_62C074: FLdPr var_A0
  loc_62C077: LateIdLdVar var_B0 DispID_9 0
  loc_62C07E: CastAdVar Me
  loc_62C082: FStAdFunc var_C4
  loc_62C085: FLdPr var_C4
  loc_62C088: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_62C08D: FLdPr var_C8
  loc_62C090: Me.Expanded = from_stack_1b
  loc_62C095: FFreeAd var_A0 = "": var_C4 = ""
  loc_62C09E: FFree1Var var_B0 = ""
  loc_62C0A3: LitI2_Byte &HFF
  loc_62C0A5: FLdRfVar var_C8
  loc_62C0A8: FLdRfVar var_96
  loc_62C0AB: CVarRef
  loc_62C0B0: FLdPrThis
  loc_62C0B1: VCallAd Control_ID_treePump
  loc_62C0B4: FStAdFunc var_A0
  loc_62C0B7: FLdPr var_A0
  loc_62C0BA: LateIdLdVar var_B0 DispID_9 0
  loc_62C0C1: CastAdVar Me
  loc_62C0C5: FStAdFunc var_C4
  loc_62C0C8: FLdPr var_C4
  loc_62C0CB: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_62C0D0: FLdPr var_C8
  loc_62C0D3: Me.Selected = from_stack_1b
  loc_62C0D8: FFreeAd var_A0 = "": var_C4 = ""
  loc_62C0E1: FFree1Var var_B0 = ""
  loc_62C0E6: FLdPrThis
  loc_62C0E7: VCallAd Control_ID_treePump
  loc_62C0EA: FStAdFunc var_A0
  loc_62C0ED: FLdPr var_A0
  loc_62C0F0: LateIdCall
  loc_62C0F8: FFree1Ad var_A0
  loc_62C0FD: Branch loc_62C10D
  loc_62C104: FLdRfVar var_96
  loc_62C107: NextUI1
  loc_62C10F: FLdRfVar var_140
  loc_62C112: ImpAdCallI2 Err 'rtcErrObj
  loc_62C117: FStAdFunc var_A0
  loc_62C11A: FLdPr var_A0
  loc_62C11D:  = Err.Number
  loc_62C122: ILdRf var_140
  loc_62C125: LitI4 5
  loc_62C12A: EqI4
  loc_62C12B: FFree1Ad var_A0
  loc_62C12E: BranchF loc_62C137
  loc_62C133: Resume
  loc_62C13B: ExitProcHresult
End Function

Private Function Proc_115_62_63D9F0() '63D9F0
  'Data Table: 44BCD0
  loc_63D7E0: OnErrorGoto loc_63D9C0
  loc_63D7E5: LitI2_Byte 1
  loc_63D7E7: CUI1I2
  loc_63D7E9: FLdRfVar var_96
  loc_63D7EC: LitI2_Byte &H20
  loc_63D7EE: CUI1I2
  loc_63D7F0: ForUI1 var_9C
  loc_63D7F8: FLdRfVar var_CC
  loc_63D7FB: FLdRfVar var_C8
  loc_63D7FE: FLdRfVar var_96
  loc_63D801: CVarRef
  loc_63D806: FLdPrThis
  loc_63D807: VCallAd Control_ID_treePump
  loc_63D80A: FStAdFunc var_A0
  loc_63D80D: FLdPr var_A0
  loc_63D810: LateIdLdVar var_B0 DispID_9 0
  loc_63D817: CastAdVar Me
  loc_63D81B: FStAdFunc var_C4
  loc_63D81E: FLdPr var_C4
  loc_63D821: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_63D826: FLdPr var_C8
  loc_63D829:  = Me.Key
  loc_63D82E: LitVarI2 var_FC, 2
  loc_63D833: LitI4 5
  loc_63D838: FLdZeroAd var_CC
  loc_63D83B: CVarStr var_DC
  loc_63D83E: FLdRfVar var_10C
  loc_63D841: ImpAdCallFPR4  = Mid(, , )
  loc_63D846: FLdRfVar var_10C
  loc_63D849: FLdRfVar var_11C
  loc_63D84C: ImpAdCallFPR4  = Trim()
  loc_63D851: FLdRfVar var_11C
  loc_63D854: FLdPr Me
  loc_63D857: MemLdUI1 global_192
  loc_63D85B: CStrI2
  loc_63D85D: CVarStr var_12C
  loc_63D860: HardType
  loc_63D861: EqVarBool
  loc_63D863: FFreeAd var_A0 = "": var_C4 = ""
  loc_63D86C: FFreeVar var_B0 = "": var_DC = "": var_FC = "": var_10C = "": var_11C = ""
  loc_63D87B: BranchF loc_63D9B3
  loc_63D880: LitI2_Byte 1
  loc_63D882: CUI1I2
  loc_63D884: FLdRfVar var_98
  loc_63D887: LitI2_Byte 4
  loc_63D889: CUI1I2
  loc_63D88B: ForUI1 var_140
  loc_63D893: FLdPr Me
  loc_63D896: MemLdRfVar from_stack_1.global_193
  loc_63D899: LdFixedStr
  loc_63D89C: FStStrNoPop var_CC
  loc_63D89F: LitStr " "
  loc_63D8A2: EqStr
  loc_63D8A4: FFree1Str var_CC
  loc_63D8A7: BranchF loc_63D8AF
  loc_63D8AC: Branch loc_63D9AE
  loc_63D8B1: FLdRfVar var_CC
  loc_63D8B4: FLdRfVar var_C8
  loc_63D8B7: FLdUI1
  loc_63D8BB: FLdUI1
  loc_63D8BF: AddUI1
  loc_63D8C1: CVarUI1
  loc_63D8C5: FLdPrThis
  loc_63D8C6: VCallAd Control_ID_treePump
  loc_63D8C9: FStAdFunc var_A0
  loc_63D8CC: FLdPr var_A0
  loc_63D8CF: LateIdLdVar var_B0 DispID_9 0
  loc_63D8D6: CastAdVar Me
  loc_63D8DA: FStAdFunc var_C4
  loc_63D8DD: FLdPr var_C4
  loc_63D8E0: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_63D8E5: FLdPr var_C8
  loc_63D8E8:  = Me.Key
  loc_63D8ED: LitI4 1
  loc_63D8F2: FLdZeroAd var_CC
  loc_63D8F5: CVarStr var_FC
  loc_63D8F8: FLdRfVar var_10C
  loc_63D8FB: ImpAdCallFPR4  = Right(, )
  loc_63D900: FLdRfVar var_10C
  loc_63D903: FLdRfVar var_11C
  loc_63D906: ImpAdCallFPR4  = Trim()
  loc_63D90B: FLdRfVar var_11C
  loc_63D90E: FLdPr Me
  loc_63D911: MemLdRfVar from_stack_1.global_193
  loc_63D914: LdFixedStr
  loc_63D917: CVarStr var_12C
  loc_63D91A: HardType
  loc_63D91B: EqVarBool
  loc_63D91D: FFreeAd var_A0 = "": var_C4 = ""
  loc_63D926: FFreeVar var_B0 = "": var_DC = "": var_FC = "": var_10C = "": var_11C = ""
  loc_63D935: BranchF loc_63D9A1
  loc_63D93A: FLdPrThis
  loc_63D93B: VCallAd Control_ID_treePump
  loc_63D93E: FStAdFunc var_A0
  loc_63D941: FLdPr var_A0
  loc_63D944: LateIdCall
  loc_63D94C: FFree1Ad var_A0
  loc_63D951: LitI2_Byte &HFF
  loc_63D953: FLdRfVar var_C8
  loc_63D956: FLdUI1
  loc_63D95A: FLdUI1
  loc_63D95E: AddUI1
  loc_63D960: CVarUI1
  loc_63D964: FLdPrThis
  loc_63D965: VCallAd Control_ID_treePump
  loc_63D968: FStAdFunc var_A0
  loc_63D96B: FLdPr var_A0
  loc_63D96E: LateIdLdVar var_B0 DispID_9 0
  loc_63D975: CastAdVar Me
  loc_63D979: FStAdFunc var_C4
  loc_63D97C: FLdPr var_C4
  loc_63D97F: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_63D984: FLdPr var_C8
  loc_63D987: Me.Selected = from_stack_1b
  loc_63D98C: FFreeAd var_A0 = "": var_C4 = ""
  loc_63D995: FFreeVar var_B0 = ""
  loc_63D99E: Branch loc_63D9AE
  loc_63D9A5: FLdRfVar var_98
  loc_63D9A8: NextUI1
  loc_63D9B0: Branch loc_63D9C0
  loc_63D9B7: FLdRfVar var_96
  loc_63D9BA: NextUI1
  loc_63D9C2: FLdRfVar var_144
  loc_63D9C5: ImpAdCallI2 Err 'rtcErrObj
  loc_63D9CA: FStAdFunc var_A0
  loc_63D9CD: FLdPr var_A0
  loc_63D9D0:  = Err.Number
  loc_63D9D5: ILdRf var_144
  loc_63D9D8: LitI4 5
  loc_63D9DD: EqI4
  loc_63D9DE: FFree1Ad var_A0
  loc_63D9E1: BranchF loc_63D9EA
  loc_63D9E6: Resume
  loc_63D9EE: ExitProcHresult
End Function
