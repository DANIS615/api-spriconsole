VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmConsignados
  Caption = "Alta de Consignado"
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
  ClientWidth = 6390
  ClientHeight = 2970
  StartUpPosition = 1 'CenterOwner
  Begin VB.Frame Frame1
    Left = 240
    Top = 480
    Width = 5895
    Height = 1695
    TabIndex = 8
    Begin VB.ComboBox Combo1
      Style = 2
      Left = 1800
      Top = 240
      Width = 3855
      Height = 420
      TabIndex = 0
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
    Begin VB.TextBox Text1
      Index = 0
      Left = 1800
      Top = 720
      Width = 1695
      Height = 375
      TabIndex = 1
      Locked = -1  'True
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
    Begin VB.CommandButton Command1
      Caption = "Seleccionar Fecha"
      Index = 0
      Left = 3600
      Top = 720
      Width = 2055
      Height = 375
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Text1
      Index = 1
      Left = 1800
      Top = 1200
      Width = 1695
      Height = 375
      TabIndex = 3
      Locked = -1  'True
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
    Begin VB.CommandButton Command1
      Caption = "Seleccionar Fecha"
      Index = 1
      Left = 3600
      Top = 1200
      Width = 2055
      Height = 375
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Producto"
      Left = 120
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 11
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
    Begin VB.Label Label2
      Caption = "Fecha de Alta"
      Left = 120
      Top = 720
      Width = 1695
      Height = 255
      TabIndex = 10
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
    Begin VB.Label Label3
      Caption = "Fecha de Baja"
      Left = 120
      Top = 1200
      Width = 1695
      Height = 375
      TabIndex = 9
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
  Begin Threed.SSCommand SSCommand3
    Left = 4440
    Top = 2280
    Width = 1635
    Height = 555
    TabIndex = 6
    OleObjectBlob = "frmConsignados.frx":0000
  End
  Begin Threed.SSCommand SSCommand2
    Left = 2640
    Top = 2280
    Width = 1635
    Height = 555
    TabIndex = 5
    OleObjectBlob = "frmConsignados.frx":006C
  End
  Begin VB.Label Label1
    Caption = "Productos no Consignados:"
    Left = 1200
    Top = 0
    Width = 4095
    Height = 375
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmConsignados"

Public newprod As String
Public FlagConsig As Boolean
Public FechaConsig As String


Private Sub Form_Load() '61AEF4
  'Data Table: 41DC38
  loc_61ADBC: FLdPrThis
  loc_61ADBD: VCallAd Control_ID_Combo1
  loc_61ADC0: FStAdFunc var_90
  loc_61ADC3: FLdPr var_90
  loc_61ADC6: Me.Clear
  loc_61ADCB: FFree1Ad var_90
  loc_61ADCE: FLdRfVar var_92
  loc_61ADD1: ImpAdLdRf MemVar_74E114
  loc_61ADD4: NewIfNullPr ConsignadosPendientes
  loc_61ADD7: from_stack_1v = ConsignadosPendientes.GetAltaConsig()
  loc_61ADDC: FLdI2 var_92
  loc_61ADDF: BranchF loc_61ADFF
  loc_61ADE2: LitStr "0"
  loc_61ADE5: FStStrCopy var_8C
  loc_61ADE8: LitStr "no"
  loc_61ADEB: FLdPr Me
  loc_61ADEE: MemStStrCopy
  loc_61ADF2: LitStr "Alta"
  loc_61ADF5: FLdPr Me
  loc_61ADF8: MemStStrCopy
  loc_61ADFC: Branch loc_61AE19
  loc_61ADFF: LitStr "2"
  loc_61AE02: FStStrCopy var_8C
  loc_61AE05: LitStr vbNullString
  loc_61AE08: FLdPr Me
  loc_61AE0B: MemStStrCopy
  loc_61AE0F: LitStr "Baja"
  loc_61AE12: FLdPr Me
  loc_61AE15: MemStStrCopy
  loc_61AE19: LitI2_Byte 1
  loc_61AE1B: FLdRfVar var_86
  loc_61AE1E: FLdRfVar var_92
  loc_61AE21: ImpAdLdRf MemVar_74A220
  loc_61AE24: NewIfNullPr clsProducts
  loc_61AE27: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61AE2C: FLdI2 var_92
  loc_61AE2F: ForI2 var_96
  loc_61AE35: FLdI2 var_86
  loc_61AE38: CI4UI1
  loc_61AE39: ImpAdLdRf MemVar_74BF94
  loc_61AE3C: Ary1LdI4
  loc_61AE3D: ILdRf var_8C
  loc_61AE40: EqStr
  loc_61AE42: BranchF loc_61AE72
  loc_61AE45: LitVar_Missing var_AC
  loc_61AE48: PopAdLdVar
  loc_61AE49: FLdRfVar var_9C
  loc_61AE4C: FLdI2 var_86
  loc_61AE4F: ImpAdLdRf MemVar_74A220
  loc_61AE52: NewIfNullPr clsProducts
  loc_61AE5A: ILdRf var_9C
  loc_61AE5D: FLdPrThis
  loc_61AE5E: VCallAd Control_ID_Combo1
  loc_61AE61: FStAdFunc var_90
  loc_61AE64: FLdPr var_90
  loc_61AE67: Me.AddItem from_stack_1, from_stack_2
  loc_61AE6C: FFree1Str var_9C
  loc_61AE6F: FFree1Ad var_90
  loc_61AE72: FLdRfVar var_86
  loc_61AE75: NextI2 var_96, loc_61AE35
  loc_61AE7A: FLdPr Me
  loc_61AE7D: MemLdStr global_68
  loc_61AE80: LitStr " de Consiganción"
  loc_61AE83: ConcatStr
  loc_61AE84: FStStrNoPop var_9C
  loc_61AE87: FLdPr Me
  loc_61AE8A: Me.Caption = from_stack_1
  loc_61AE8F: FFree1Str var_9C
  loc_61AE92: LitStr "Productos "
  loc_61AE95: FLdPr Me
  loc_61AE98: MemLdStr global_64
  loc_61AE9B: ConcatStr
  loc_61AE9C: FStStrNoPop var_9C
  loc_61AE9F: LitStr " Consignados"
  loc_61AEA2: ConcatStr
  loc_61AEA3: FStStrNoPop var_B0
  loc_61AEA6: FLdPrThis
  loc_61AEA7: VCallAd Control_ID_Label1
  loc_61AEAA: FStAdFunc var_90
  loc_61AEAD: FLdPr var_90
  loc_61AEB0: Me.Caption = from_stack_1
  loc_61AEB5: FFreeStr var_9C = ""
  loc_61AEBC: FFree1Ad var_90
  loc_61AEBF: FLdRfVar var_92
  loc_61AEC2: FLdPrThis
  loc_61AEC3: VCallAd Control_ID_Combo1
  loc_61AEC6: FStAdFunc var_90
  loc_61AEC9: FLdPr var_90
  loc_61AECC:  = Me.ListCount
  loc_61AED1: FLdI2 var_92
  loc_61AED4: LitI2_Byte 1
  loc_61AED6: GeI2
  loc_61AED7: FFree1Ad var_90
  loc_61AEDA: BranchF loc_61AEF1
  loc_61AEDD: LitI2_Byte 0
  loc_61AEDF: FLdPrThis
  loc_61AEE0: VCallAd Control_ID_Combo1
  loc_61AEE3: FStAdFunc var_90
  loc_61AEE6: FLdPr var_90
  loc_61AEE9: Me.ListIndex = from_stack_1
  loc_61AEEE: FFree1Ad var_90
  loc_61AEF1: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E9E40
  'Data Table: 41DC38
  loc_5E9DCC: FLdRfVar var_8A
  loc_5E9DCF: FLdPrThis
  loc_5E9DD0: VCallAd Control_ID_Combo1
  loc_5E9DD3: FStAdFunc var_88
  loc_5E9DD6: FLdPr var_88
  loc_5E9DD9:  = Me.ListCount
  loc_5E9DDE: FLdI2 var_8A
  loc_5E9DE1: LitI2_Byte 0
  loc_5E9DE3: EqI2
  loc_5E9DE4: FFree1Ad var_88
  loc_5E9DE7: BranchF loc_5E9E3C
  loc_5E9DEA: LitVar_Missing var_100
  loc_5E9DED: LitVar_Missing var_E0
  loc_5E9DF0: LitVarStr var_B0, "Consignados"
  loc_5E9DF5: FStVarCopyObj var_C0
  loc_5E9DF8: FLdRfVar var_C0
  loc_5E9DFB: LitI4 &H40
  loc_5E9E00: LitStr "No hay productos "
  loc_5E9E03: FLdPr Me
  loc_5E9E06: MemLdStr global_64
  loc_5E9E09: ConcatStr
  loc_5E9E0A: FStStrNoPop var_90
  loc_5E9E0D: LitStr " consignados para mostrar"
  loc_5E9E10: ConcatStr
  loc_5E9E11: CVarStr var_A0
  loc_5E9E14: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5E9E19: FFree1Str var_90
  loc_5E9E1C: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_5E9E27: ILdRf Me
  loc_5E9E2A: FStAdNoPop
  loc_5E9E2E: ImpAdLdRf MemVar_7520D4
  loc_5E9E31: NewIfNullPr Global
  loc_5E9E34: Global.Unload from_stack_1
  loc_5E9E39: FFree1Ad var_88
  loc_5E9E3C: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D1638
  'Data Table: 41DC38
  loc_5D1620: ILdRf Me
  loc_5D1623: FStAdNoPop
  loc_5D1627: ImpAdLdRf MemVar_7520D4
  loc_5D162A: NewIfNullPr Global
  loc_5D162D: Global.Unload from_stack_1
  loc_5D1632: FFree1Ad var_88
  loc_5D1635: ExitProcHresult
  loc_5D1636: ExitProcR8
End Sub

Private Sub SSCommand3_UnknownEvent_8 '65FFCC
  'Data Table: 41DC38
  loc_65FCC0: LitStr vbNullString
  loc_65FCC3: FStStrCopy var_88
  loc_65FCC6: FLdRfVar var_96
  loc_65FCC9: FLdRfVar var_94
  loc_65FCCC: FLdPrThis
  loc_65FCCD: VCallAd Control_ID_Combo1
  loc_65FCD0: FStAdFunc var_90
  loc_65FCD3: FLdPr var_90
  loc_65FCD6:  = Me.Text
  loc_65FCDB: ILdRf var_94
  loc_65FCDE: ImpAdLdRf MemVar_74A220
  loc_65FCE1: NewIfNullPr clsProducts
  loc_65FCE9: FLdI2 var_96
  loc_65FCEC: FStI2 var_8A
  loc_65FCEF: FFree1Str var_94
  loc_65FCF2: FFree1Ad var_90
  loc_65FCF5: FLdRfVar var_94
  loc_65FCF8: FLdRfVar var_9C
  loc_65FCFB: LitI2_Byte 0
  loc_65FCFD: FLdPrThis
  loc_65FCFE: VCallAd Control_ID_Text1
  loc_65FD01: FStAdFunc var_90
  loc_65FD04: FLdPr var_90
  loc_65FD07: Set from_stack_2 = Me(from_stack_1)
  loc_65FD0C: FLdPr var_9C
  loc_65FD0F:  = Me.Text
  loc_65FD14: FLdRfVar var_A8
  loc_65FD17: FLdRfVar var_A4
  loc_65FD1A: LitI2_Byte 1
  loc_65FD1C: FLdPrThis
  loc_65FD1D: VCallAd Control_ID_Text1
  loc_65FD20: FStAdFunc var_A0
  loc_65FD23: FLdPr var_A0
  loc_65FD26: Set from_stack_2 = Me(from_stack_1)
  loc_65FD2B: FLdPr var_A4
  loc_65FD2E:  = Me.Text
  loc_65FD33: FLdRfVar var_96
  loc_65FD36: FLdZeroAd var_A8
  loc_65FD39: PopTmpLdAdStr
  loc_65FD3D: FLdZeroAd var_94
  loc_65FD40: PopTmpLdAdStr
  loc_65FD44: from_stack_3v = ControlarFechas(from_stack_1v, from_stack_2v)
  loc_65FD49: FLdI2 var_96
  loc_65FD4C: NotI4
  loc_65FD4D: FFreeStr var_AC = ""
  loc_65FD54: FFreeAd var_90 = "": var_9C = "": var_A0 = ""
  loc_65FD5F: BranchF loc_65FD63
  loc_65FD62: ExitProcHresult
  loc_65FD63: ILdRf var_88
  loc_65FD66: CVarStr var_D0
  loc_65FD69: FLdI2 var_8A
  loc_65FD6C: CI4UI1
  loc_65FD6D: FLdRfVar var_C0
  loc_65FD70: ImpAdCallFPR4  = Chr()
  loc_65FD75: FLdRfVar var_C0
  loc_65FD78: ConcatVar var_E0
  loc_65FD7C: CStrVarTmp
  loc_65FD7D: FStStr var_88
  loc_65FD80: FFreeVar var_C0 = ""
  loc_65FD87: FLdRfVar var_94
  loc_65FD8A: FLdRfVar var_9C
  loc_65FD8D: LitI2_Byte 0
  loc_65FD8F: FLdPrThis
  loc_65FD90: VCallAd Control_ID_Text1
  loc_65FD93: FStAdFunc var_90
  loc_65FD96: FLdPr var_90
  loc_65FD99: Set from_stack_2 = Me(from_stack_1)
  loc_65FD9E: FLdPr var_9C
  loc_65FDA1:  = Me.Text
  loc_65FDA6: FLdRfVar var_A8
  loc_65FDA9: FLdRfVar var_A4
  loc_65FDAC: LitI2_Byte 0
  loc_65FDAE: FLdPrThis
  loc_65FDAF: VCallAd Control_ID_Text1
  loc_65FDB2: FStAdFunc var_A0
  loc_65FDB5: FLdPr var_A0
  loc_65FDB8: Set from_stack_2 = Me(from_stack_1)
  loc_65FDBD: FLdPr var_A4
  loc_65FDC0:  = Me.Text
  loc_65FDC5: FLdRfVar var_AC
  loc_65FDC8: FLdRfVar var_168
  loc_65FDCB: LitI2_Byte 0
  loc_65FDCD: FLdPrThis
  loc_65FDCE: VCallAd Control_ID_Text1
  loc_65FDD1: FStAdFunc var_164
  loc_65FDD4: FLdPr var_164
  loc_65FDD7: Set from_stack_2 = Me(from_stack_1)
  loc_65FDDC: FLdPr var_168
  loc_65FDDF:  = Me.Text
  loc_65FDE4: ILdRf var_88
  loc_65FDE7: CVarStr var_100
  loc_65FDEA: LitVarI2 var_E0, 4
  loc_65FDEF: LitI4 7
  loc_65FDF4: FLdZeroAd var_94
  loc_65FDF7: CVarStr var_C0
  loc_65FDFA: FLdRfVar var_F0
  loc_65FDFD: ImpAdCallFPR4  = Mid(, , )
  loc_65FE02: FLdRfVar var_F0
  loc_65FE05: ConcatVar var_110
  loc_65FE09: LitVarI2 var_140, 2
  loc_65FE0E: LitI4 4
  loc_65FE13: FLdZeroAd var_A8
  loc_65FE16: CVarStr var_120
  loc_65FE19: FLdRfVar var_150
  loc_65FE1C: ImpAdCallFPR4  = Mid(, , )
  loc_65FE21: FLdRfVar var_150
  loc_65FE24: ConcatVar var_160
  loc_65FE28: LitVarI2 var_198, 2
  loc_65FE2D: LitI4 1
  loc_65FE32: FLdZeroAd var_AC
  loc_65FE35: CVarStr var_178
  loc_65FE38: FLdRfVar var_1A8
  loc_65FE3B: ImpAdCallFPR4  = Mid(, , )
  loc_65FE40: FLdRfVar var_1A8
  loc_65FE43: ConcatVar var_1B8
  loc_65FE47: CStrVarTmp
  loc_65FE48: FStStr var_88
  loc_65FE4B: FFreeAd var_90 = "": var_9C = "": var_A0 = "": var_A4 = "": var_164 = ""
  loc_65FE5A: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_120 = "": var_140 = "": var_110 = "": var_150 = "": var_178 = "": var_198 = "": var_160 = "": var_1A8 = ""
  loc_65FE75: FLdRfVar var_94
  loc_65FE78: FLdRfVar var_9C
  loc_65FE7B: LitI2_Byte 1
  loc_65FE7D: FLdPrThis
  loc_65FE7E: VCallAd Control_ID_Text1
  loc_65FE81: FStAdFunc var_90
  loc_65FE84: FLdPr var_90
  loc_65FE87: Set from_stack_2 = Me(from_stack_1)
  loc_65FE8C: FLdPr var_9C
  loc_65FE8F:  = Me.Text
  loc_65FE94: FLdRfVar var_A8
  loc_65FE97: FLdRfVar var_A4
  loc_65FE9A: LitI2_Byte 1
  loc_65FE9C: FLdPrThis
  loc_65FE9D: VCallAd Control_ID_Text1
  loc_65FEA0: FStAdFunc var_A0
  loc_65FEA3: FLdPr var_A0
  loc_65FEA6: Set from_stack_2 = Me(from_stack_1)
  loc_65FEAB: FLdPr var_A4
  loc_65FEAE:  = Me.Text
  loc_65FEB3: FLdRfVar var_AC
  loc_65FEB6: FLdRfVar var_168
  loc_65FEB9: LitI2_Byte 1
  loc_65FEBB: FLdPrThis
  loc_65FEBC: VCallAd Control_ID_Text1
  loc_65FEBF: FStAdFunc var_164
  loc_65FEC2: FLdPr var_164
  loc_65FEC5: Set from_stack_2 = Me(from_stack_1)
  loc_65FECA: FLdPr var_168
  loc_65FECD:  = Me.Text
  loc_65FED2: ILdRf var_88
  loc_65FED5: CVarStr var_100
  loc_65FED8: LitVarI2 var_E0, 4
  loc_65FEDD: LitI4 7
  loc_65FEE2: FLdZeroAd var_94
  loc_65FEE5: CVarStr var_C0
  loc_65FEE8: FLdRfVar var_F0
  loc_65FEEB: ImpAdCallFPR4  = Mid(, , )
  loc_65FEF0: FLdRfVar var_F0
  loc_65FEF3: ConcatVar var_110
  loc_65FEF7: LitVarI2 var_140, 2
  loc_65FEFC: LitI4 4
  loc_65FF01: FLdZeroAd var_A8
  loc_65FF04: CVarStr var_120
  loc_65FF07: FLdRfVar var_150
  loc_65FF0A: ImpAdCallFPR4  = Mid(, , )
  loc_65FF0F: FLdRfVar var_150
  loc_65FF12: ConcatVar var_160
  loc_65FF16: LitVarI2 var_198, 2
  loc_65FF1B: LitI4 1
  loc_65FF20: FLdZeroAd var_AC
  loc_65FF23: CVarStr var_178
  loc_65FF26: FLdRfVar var_1A8
  loc_65FF29: ImpAdCallFPR4  = Mid(, , )
  loc_65FF2E: FLdRfVar var_1A8
  loc_65FF31: ConcatVar var_1B8
  loc_65FF35: CStrVarTmp
  loc_65FF36: FStStr var_88
  loc_65FF39: FFreeAd var_90 = "": var_9C = "": var_A0 = "": var_A4 = "": var_164 = ""
  loc_65FF48: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_120 = "": var_140 = "": var_110 = "": var_150 = "": var_178 = "": var_198 = "": var_160 = "": var_1A8 = ""
  loc_65FF63: FLdRfVar var_96
  loc_65FF66: FLdRfVar var_88
  loc_65FF69: FLdRfVar var_90
  loc_65FF6C: ImpAdLdRf MemVar_74C760
  loc_65FF6F: NewIfNullPr Formx
  loc_65FF72: from_stack_1v = Formx.global_4589716Get()
  loc_65FF77: FLdPr var_90
  loc_65FF7A: Formx.TextHeight from_stack_1
  loc_65FF7F: FLdI2 var_96
  loc_65FF82: NotI4
  loc_65FF83: FFree1Ad var_90
  loc_65FF86: BranchF loc_65FFB5
  loc_65FF89: FLdRfVar var_C0
  loc_65FF8C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65FF91: FLdRfVar var_C0
  loc_65FF94: CBoolVarNull
  loc_65FF96: FFree1Var var_C0 = ""
  loc_65FF99: BranchF loc_65FFB2
  loc_65FF9C: ILdRf Me
  loc_65FF9F: FStAdNoPop
  loc_65FFA3: ImpAdLdRf MemVar_7520D4
  loc_65FFA6: NewIfNullPr Global
  loc_65FFA9: Global.Unload from_stack_1
  loc_65FFAE: FFree1Ad var_90
  loc_65FFB1: ExitProcHresult
  loc_65FFB2: Branch loc_65FF63
  loc_65FFB5: ILdRf Me
  loc_65FFB8: FStAdNoPop
  loc_65FFBC: ImpAdLdRf MemVar_7520D4
  loc_65FFBF: NewIfNullPr Global
  loc_65FFC2: Global.Unload from_stack_1
  loc_65FFC7: FFree1Ad var_90
  loc_65FFCA: ExitProcHresult
End Sub

Private Sub Command1_Click(Index As Integer) '5DE738
  'Data Table: 41DC38
  loc_5DE6EC: LitI2_Byte &HFF
  loc_5DE6EE: FLdPr Me
  loc_5DE6F1: MemStI2 FlagConsig
  loc_5DE6F4: LitVar_Missing var_A4
  loc_5DE6F7: PopAdLdVar
  loc_5DE6F8: LitVarI4
  loc_5DE700: PopAdLdVar
  loc_5DE701: ImpAdLdRf MemVar_74DE30
  loc_5DE704: NewIfNullPr PreciosTemporizado
  loc_5DE707: PreciosTemporizado.Show from_stack_1, from_stack_2
  loc_5DE70C: FLdPr Me
  loc_5DE70F: MemLdStr FechaConsig
  loc_5DE712: FLdRfVar var_AC
  loc_5DE715: ILdI2 Index
  loc_5DE718: FLdPrThis
  loc_5DE719: VCallAd Control_ID_Text1
  loc_5DE71C: FStAdFunc var_A8
  loc_5DE71F: FLdPr var_A8
  loc_5DE722: Set from_stack_2 = Me(from_stack_1)
  loc_5DE727: FLdPr var_AC
  loc_5DE72A: Me.Text = from_stack_1
  loc_5DE72F: FFreeAd var_A8 = ""
  loc_5DE736: ExitProcHresult
End Sub

Public Function newprodGet() '41E310
  newprodGet = newprod
End Function

Public Sub newprodPut(Value) '41E31F
  newprod = Value
End Sub

Public Function FlagConsigGet() '41E32E
  FlagConsigGet = FlagConsig
End Function

Public Sub FlagConsigPut(Value) '41E33D
  FlagConsig = Value
End Sub

Public Function FechaConsigGet() '41E34C
  FechaConsigGet = FechaConsig
End Function

Public Sub FechaConsigPut(Value) '41E35B
  FechaConsig = Value
End Sub

Public Function ControlarFechas(sValor1, sValor2) '614BC0
  'Data Table: 41DC38
  loc_614AA0: LitI2_Byte &HFF
  loc_614AA2: FStI2 var_86
  loc_614AA5: ILdI4 sValor1
  loc_614AA8: LitStr vbNullString
  loc_614AAB: EqStr
  loc_614AAD: ILdI4 sValor2
  loc_614AB0: LitStr vbNullString
  loc_614AB3: EqStr
  loc_614AB5: OrI4
  loc_614AB6: BranchF loc_614AF5
  loc_614AB9: LitVar_Missing var_118
  loc_614ABC: LitVar_Missing var_F8
  loc_614ABF: LitVarStr var_C8, "Error"
  loc_614AC4: FStVarCopyObj var_D8
  loc_614AC7: FLdRfVar var_D8
  loc_614ACA: LitI4 &H10
  loc_614ACF: LitVarStr var_A8, "Debe ingresar las fechas de alta y de baja. Verifique y reintente."
  loc_614AD4: FStVarCopyObj var_B8
  loc_614AD7: FLdRfVar var_B8
  loc_614ADA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_614ADF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_614AEA: LitI2_Byte 0
  loc_614AEC: FStI2 var_86
  loc_614AEF: ExitProcCbHresult
  loc_614AF5: ILdI4 sValor1
  loc_614AF8: CDateStr
  loc_614AFA: FStFPR8 var_90
  loc_614AFD: ILdI4 sValor2
  loc_614B00: CDateStr
  loc_614B02: FStFPR8 var_98
  loc_614B05: FLdFPR8 var_98
  loc_614B08: FLdFPR8 var_90
  loc_614B0B: LeR8
  loc_614B0C: BranchF loc_614B4B
  loc_614B0F: LitVar_Missing var_118
  loc_614B12: LitVar_Missing var_F8
  loc_614B15: LitVarStr var_C8, "Error"
  loc_614B1A: FStVarCopyObj var_D8
  loc_614B1D: FLdRfVar var_D8
  loc_614B20: LitI4 &H10
  loc_614B25: LitVarStr var_A8, "La fecha de alta no puede ser mayor o igual a la fecha de baja. Verifique y reintente."
  loc_614B2A: FStVarCopyObj var_B8
  loc_614B2D: FLdRfVar var_B8
  loc_614B30: ImpAdCallFPR4 MsgBox(, , , , )
  loc_614B35: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_614B40: LitI2_Byte 0
  loc_614B42: FStI2 var_86
  loc_614B45: ExitProcCbHresult
  loc_614B4B: FLdRfVar var_11A
  loc_614B4E: ImpAdLdRf MemVar_74E114
  loc_614B51: NewIfNullPr ConsignadosPendientes
  loc_614B54: from_stack_1v = ConsignadosPendientes.GetAltaConsig()
  loc_614B59: FLdI2 var_11A
  loc_614B5C: BranchF loc_614B62
  loc_614B5F: Branch loc_614BB9
  loc_614B62: FLdRfVar var_B8
  loc_614B65: ImpAdCallFPR4  = Date
  loc_614B6A: FLdRfVar var_B8
  loc_614B6D: FLdFPR8 var_90
  loc_614B70: CVarDate var_A8
  loc_614B74: HardType
  loc_614B75: LtVarBool
  loc_614B77: FFree1Var var_B8 = ""
  loc_614B7A: BranchF loc_614BB9
  loc_614B7D: LitVar_Missing var_118
  loc_614B80: LitVar_Missing var_F8
  loc_614B83: LitVarStr var_C8, "Error"
  loc_614B88: FStVarCopyObj var_D8
  loc_614B8B: FLdRfVar var_D8
  loc_614B8E: LitI4 &H10
  loc_614B93: LitVarStr var_A8, "La fecha de alta no puede ser mayor a la fecha actual. Verifique y reintente."
  loc_614B98: FStVarCopyObj var_B8
  loc_614B9B: FLdRfVar var_B8
  loc_614B9E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_614BA3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_614BAE: LitI2_Byte 0
  loc_614BB0: FStI2 var_86
  loc_614BB3: ExitProcCbHresult
  loc_614BB9: ExitProcCbHresult
End Function
