VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form IngresoRecibos
  Caption = "Ingreso de Recibos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 390
  ClientWidth = 8835
  ClientHeight = 3750
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin MSMask.MaskEdBox CentroEmisor
    Left = 2460
    Top = 1200
    Width = 1155
    Height = 435
    TabIndex = 2
    OleObjectBlob = "IngresoRecibos.frx":0000
  End
  Begin VB.TextBox NroCliente
    BackColor = &HFF0000&
    ForeColor = &HFF00&
    Left = 2460
    Top = 420
    Width = 1455
    Height = 435
    TabIndex = 1
    MultiLine = -1  'True
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
  Begin MSMask.MaskEdBox NComprobante
    Left = 4140
    Top = 1200
    Width = 1575
    Height = 435
    TabIndex = 3
    OleObjectBlob = "IngresoRecibos.frx":0090
  End
  Begin MSMask.MaskEdBox Importe
    Left = 2460
    Top = 1920
    Width = 2295
    Height = 435
    TabIndex = 4
    OleObjectBlob = "IngresoRecibos.frx":0130
  End
  Begin Threed.SSCommand SSCommand1
    Left = 6780
    Top = 2880
    Width = 1695
    Height = 735
    TabIndex = 5
    OleObjectBlob = "IngresoRecibos.frx":01D6
  End
  Begin Threed.SSCommand SSCommand2
    Left = 4920
    Top = 2880
    Width = 1695
    Height = 735
    TabIndex = 9
    OleObjectBlob = "IngresoRecibos.frx":023A
  End
  Begin VB.Label Label5
    Caption = "Importe :"
    Left = 240
    Top = 1980
    Width = 1995
    Height = 375
    TabIndex = 8
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
  Begin VB.Label Label4
    Caption = "-"
    Left = 3780
    Top = 1200
    Width = 195
    Height = 375
    TabIndex = 7
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
    Caption = "Comprob. Nº :"
    Left = 240
    Top = 1260
    Width = 1995
    Height = 375
    TabIndex = 6
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
  Begin VB.Label Label1
    Caption = "Cliente Nº :"
    Left = 300
    Top = 480
    Width = 1695
    Height = 315
    TabIndex = 0
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

Attribute VB_Name = "IngresoRecibos"

Private Type UDT_1_0046FB84
  bStruc(116) As Byte ' String fields: 8
End Type


Private Sub CentroEmisor_UnknownEvent_0 '5DA0E8
  'Data Table: 41EC98
  loc_5DA0B0: LitVarI4
  loc_5DA0B8: PopAdLdVar
  loc_5DA0B9: FLdPrThis
  loc_5DA0BA: VCallAd Control_ID_CentroEmisor
  loc_5DA0BD: FStAdFunc var_98
  loc_5DA0C0: FLdPr var_98
  loc_5DA0C3: LateIdSt
  loc_5DA0C8: FFree1Ad var_98
  loc_5DA0CB: LitVarI4
  loc_5DA0D3: PopAdLdVar
  loc_5DA0D4: FLdPrThis
  loc_5DA0D5: VCallAd Control_ID_CentroEmisor
  loc_5DA0D8: FStAdFunc var_98
  loc_5DA0DB: FLdPr var_98
  loc_5DA0DE: LateIdSt
  loc_5DA0E3: FFree1Ad var_98
  loc_5DA0E6: ExitProcHresult
End Sub

Private Sub NComprobante_UnknownEvent_0 '5D9D88
  'Data Table: 41EC98
  loc_5D9D50: LitVarI4
  loc_5D9D58: PopAdLdVar
  loc_5D9D59: FLdPrThis
  loc_5D9D5A: VCallAd Control_ID_NComprobante
  loc_5D9D5D: FStAdFunc var_98
  loc_5D9D60: FLdPr var_98
  loc_5D9D63: LateIdSt
  loc_5D9D68: FFree1Ad var_98
  loc_5D9D6B: LitVarI4
  loc_5D9D73: PopAdLdVar
  loc_5D9D74: FLdPrThis
  loc_5D9D75: VCallAd Control_ID_NComprobante
  loc_5D9D78: FStAdFunc var_98
  loc_5D9D7B: FLdPr var_98
  loc_5D9D7E: LateIdSt
  loc_5D9D83: FFree1Ad var_98
  loc_5D9D86: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '667B18
  'Data Table: 41EC98
  loc_667774: FLdRfVar var_94
  loc_667777: FLdPrThis
  loc_667778: VCallAd Control_ID_NroCliente
  loc_66777B: FStAdFunc var_90
  loc_66777E: FLdPr var_90
  loc_667781:  = Me.Text
  loc_667786: ILdRf var_94
  loc_667789: ImpAdCallFPR4 push Val()
  loc_66778E: CI2R8
  loc_66778F: FLdPr Me
  loc_667792: MemStI2 global_52
  loc_667795: FFree1Str var_94
  loc_667798: FFree1Ad var_90
  loc_66779B: FLdRfVar var_A4
  loc_66779E: FLdPr Me
  loc_6677A1: MemLdRfVar from_stack_1.global_52
  loc_6677A4: from_stack_2v = Proc_49_10_65425C(from_stack_1v)
  loc_6677A9: FLdRfVar var_A4
  loc_6677AC: NotVar var_B4
  loc_6677B0: CBoolVarNull
  loc_6677B2: FFree1Var var_A4 = ""
  loc_6677B5: BranchF loc_6677FC
  loc_6677B8: LitVar_Missing var_114
  loc_6677BB: LitVar_Missing var_F4
  loc_6677BE: LitVarStr var_D4, "Cliente no encontrado"
  loc_6677C3: FStVarCopyObj var_B4
  loc_6677C6: FLdRfVar var_B4
  loc_6677C9: LitI4 &H40
  loc_6677CE: LitVarStr var_C4, "No se ha podido encontrar los datos de ese cliente."
  loc_6677D3: FStVarCopyObj var_A4
  loc_6677D6: FLdRfVar var_A4
  loc_6677D9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6677DE: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_6677E9: FLdPrThis
  loc_6677EA: VCallAd Control_ID_NroCliente
  loc_6677ED: FStAdFunc var_90
  loc_6677F0: FLdPr var_90
  loc_6677F3: Me.SetFocus
  loc_6677F8: FFree1Ad var_90
  loc_6677FB: ExitProcHresult
  loc_6677FC: FLdPr Me
  loc_6677FF: MemLdI2 global_140
  loc_667802: LitI2_Byte 0
  loc_667804: EqI2
  loc_667805: BranchF loc_66784C
  loc_667808: LitVar_Missing var_114
  loc_66780B: LitVar_Missing var_F4
  loc_66780E: LitVarStr var_D4, "Cliente sin cuenta corriente"
  loc_667813: FStVarCopyObj var_B4
  loc_667816: FLdRfVar var_B4
  loc_667819: LitI4 &H40
  loc_66781E: LitVarStr var_C4, "Este cliente no posee una cuenta corriente."
  loc_667823: FStVarCopyObj var_A4
  loc_667826: FLdRfVar var_A4
  loc_667829: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66782E: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_667839: FLdPrThis
  loc_66783A: VCallAd Control_ID_NroCliente
  loc_66783D: FStAdFunc var_90
  loc_667840: FLdPr var_90
  loc_667843: Me.SetFocus
  loc_667848: FFree1Ad var_90
  loc_66784B: ExitProcHresult
  loc_66784C: FLdPrThis
  loc_66784D: VCallAd Control_ID_CentroEmisor
  loc_667850: FStAdFunc var_90
  loc_667853: FLdPr var_90
  loc_667856: LateIdLdVar var_A4 DispID_22 0
  loc_66785D: PopAd
  loc_66785F: LitI4 1
  loc_667864: LitI4 1
  loc_667869: LitVarStr var_C4, "0000"
  loc_66786E: FStVarCopyObj var_F4
  loc_667871: FLdRfVar var_F4
  loc_667874: FLdRfVar var_A4
  loc_667877: CStrVarTmp
  loc_667878: CVarStr var_B4
  loc_66787B: FLdRfVar var_114
  loc_66787E: ImpAdCallFPR4  = Format(, )
  loc_667883: FLdRfVar var_114
  loc_667886: CStrVarTmp
  loc_667887: FStStr var_88
  loc_66788A: FFree1Ad var_90
  loc_66788D: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_667898: ILdRf var_88
  loc_66789B: LitStr "R"
  loc_66789E: ConcatStr
  loc_66789F: FStStr var_88
  loc_6678A2: FLdPrThis
  loc_6678A3: VCallAd Control_ID_NComprobante
  loc_6678A6: FStAdFunc var_90
  loc_6678A9: FLdPr var_90
  loc_6678AC: LateIdLdVar var_A4 DispID_22 0
  loc_6678B3: PopAd
  loc_6678B5: ILdRf var_88
  loc_6678B8: CVarStr var_D4
  loc_6678BB: LitI4 1
  loc_6678C0: LitI4 1
  loc_6678C5: LitVarStr var_C4, "00000000"
  loc_6678CA: FStVarCopyObj var_F4
  loc_6678CD: FLdRfVar var_F4
  loc_6678D0: FLdRfVar var_A4
  loc_6678D3: CStrVarTmp
  loc_6678D4: CVarStr var_B4
  loc_6678D7: FLdRfVar var_114
  loc_6678DA: ImpAdCallFPR4  = Format(, )
  loc_6678DF: FLdRfVar var_114
  loc_6678E2: ConcatVar var_124
  loc_6678E6: CStrVarTmp
  loc_6678E7: FStStr var_88
  loc_6678EA: FFree1Ad var_90
  loc_6678ED: FFreeVar var_A4 = "": var_B4 = "": var_F4 = "": var_114 = ""
  loc_6678FA: FLdRfVar var_94
  loc_6678FD: FLdPrThis
  loc_6678FE: VCallAd Control_ID_NroCliente
  loc_667901: FStAdFunc var_90
  loc_667904: FLdPr var_90
  loc_667907:  = Me.Text
  loc_66790C: ILdRf var_88
  loc_66790F: CVarStr var_D4
  loc_667912: LitI4 1
  loc_667917: LitI4 1
  loc_66791C: LitVarStr var_C4, "0000"
  loc_667921: FStVarCopyObj var_B4
  loc_667924: FLdRfVar var_B4
  loc_667927: FLdZeroAd var_94
  loc_66792A: CVarStr var_A4
  loc_66792D: FLdRfVar var_F4
  loc_667930: ImpAdCallFPR4  = Format(, )
  loc_667935: FLdRfVar var_F4
  loc_667938: ConcatVar var_114
  loc_66793C: CStrVarTmp
  loc_66793D: FStStr var_88
  loc_667940: FFree1Ad var_90
  loc_667943: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_66794E: ILdRf var_88
  loc_667951: CVarStr var_E4
  loc_667954: LitI4 1
  loc_667959: LitI4 1
  loc_66795E: LitVarStr var_D4, "00000000"
  loc_667963: FStVarCopyObj var_B4
  loc_667966: FLdRfVar var_B4
  loc_667969: LitVarI2 var_A4, 0
  loc_66796E: FLdRfVar var_F4
  loc_667971: ImpAdCallFPR4  = Format(, )
  loc_667976: FLdRfVar var_F4
  loc_667979: ConcatVar var_114
  loc_66797D: CStrVarTmp
  loc_66797E: FStStr var_88
  loc_667981: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_66798C: ILdRf var_88
  loc_66798F: CVarStr var_E4
  loc_667992: LitI4 1
  loc_667997: LitI4 1
  loc_66799C: LitVarStr var_D4, "00000000"
  loc_6679A1: FStVarCopyObj var_B4
  loc_6679A4: FLdRfVar var_B4
  loc_6679A7: LitVarI2 var_A4, 0
  loc_6679AC: FLdRfVar var_F4
  loc_6679AF: ImpAdCallFPR4  = Format(, )
  loc_6679B4: FLdRfVar var_F4
  loc_6679B7: ConcatVar var_114
  loc_6679BB: CStrVarTmp
  loc_6679BC: FStStr var_88
  loc_6679BF: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_6679CA: ILdRf var_88
  loc_6679CD: CVarStr var_E4
  loc_6679D0: LitI4 1
  loc_6679D5: LitI4 1
  loc_6679DA: LitVarStr var_D4, "00000000"
  loc_6679DF: FStVarCopyObj var_B4
  loc_6679E2: FLdRfVar var_B4
  loc_6679E5: LitVarI2 var_A4, 0
  loc_6679EA: FLdRfVar var_F4
  loc_6679ED: ImpAdCallFPR4  = Format(, )
  loc_6679F2: FLdRfVar var_F4
  loc_6679F5: ConcatVar var_114
  loc_6679F9: CStrVarTmp
  loc_6679FA: FStStr var_88
  loc_6679FD: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_667A08: ILdRf var_88
  loc_667A0B: CVarStr var_E4
  loc_667A0E: LitI4 1
  loc_667A13: LitI4 1
  loc_667A18: LitVarStr var_D4, "00000000"
  loc_667A1D: FStVarCopyObj var_B4
  loc_667A20: FLdRfVar var_B4
  loc_667A23: LitI2_Byte 0
  loc_667A25: CR8I2
  loc_667A26: ImpAdLdFPR4 MemVar_74C2E0
  loc_667A29: MulR8
  loc_667A2A: CVarR4
  loc_667A2E: FLdRfVar var_F4
  loc_667A31: ImpAdCallFPR4  = Format(, )
  loc_667A36: FLdRfVar var_F4
  loc_667A39: ConcatVar var_114
  loc_667A3D: CStrVarTmp
  loc_667A3E: FStStr var_88
  loc_667A41: FFreeVar var_A4 = "": var_B4 = "": var_F4 = ""
  loc_667A4C: FLdPrThis
  loc_667A4D: VCallAd Control_ID_Importe
  loc_667A50: FStAdFunc var_90
  loc_667A53: FLdPr var_90
  loc_667A56: LateIdLdVar var_A4 DispID_22 0
  loc_667A5D: PopAd
  loc_667A5F: ILdRf var_88
  loc_667A62: CVarStr var_E4
  loc_667A65: LitI4 1
  loc_667A6A: LitI4 1
  loc_667A6F: LitVarStr var_D4, "00000000"
  loc_667A74: FStVarCopyObj var_F4
  loc_667A77: FLdRfVar var_F4
  loc_667A7A: FLdRfVar var_A4
  loc_667A7D: CStrVarTmp
  loc_667A7E: FStStrNoPop var_94
  loc_667A81: CCyStr
  loc_667A83: CR8Cy
  loc_667A84: ImpAdLdFPR4 MemVar_74C2E0
  loc_667A87: MulR8
  loc_667A88: CVarR8
  loc_667A8C: FLdRfVar var_114
  loc_667A8F: ImpAdCallFPR4  = Format(, )
  loc_667A94: FLdRfVar var_114
  loc_667A97: ConcatVar var_124
  loc_667A9B: CStrVarTmp
  loc_667A9C: FStStr var_88
  loc_667A9F: FFree1Str var_94
  loc_667AA2: FFree1Ad var_90
  loc_667AA5: FFreeVar var_A4 = "": var_B4 = "": var_F4 = "": var_114 = ""
  loc_667AB2: ILdRf var_88
  loc_667AB5: LitStr "00"
  loc_667AB8: ConcatStr
  loc_667AB9: FStStr var_88
  loc_667ABC: FLdRfVar var_126
  loc_667ABF: FLdRfVar var_8A
  loc_667AC2: ILdRf var_88
  loc_667AC5: FLdRfVar var_90
  loc_667AC8: ImpAdLdRf MemVar_74C760
  loc_667ACB: NewIfNullPr Formx
  loc_667ACE: from_stack_1v = Formx.global_4589716Get()
  loc_667AD3: FLdPr var_90
  loc_667AD6:  = Formx.CurrentY
  loc_667ADB: FLdI2 var_126
  loc_667ADE: NotI4
  loc_667ADF: FFree1Ad var_90
  loc_667AE2: BranchF loc_667B11
  loc_667AE5: FLdRfVar var_A4
  loc_667AE8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_667AED: FLdRfVar var_A4
  loc_667AF0: CBoolVarNull
  loc_667AF2: FFree1Var var_A4 = ""
  loc_667AF5: BranchF loc_667B0E
  loc_667AF8: ILdRf Me
  loc_667AFB: FStAdNoPop
  loc_667AFF: ImpAdLdRf MemVar_7520D4
  loc_667B02: NewIfNullPr Global
  loc_667B05: Global.Unload from_stack_1
  loc_667B0A: FFree1Ad var_90
  loc_667B0D: ExitProcHresult
  loc_667B0E: Branch loc_667ABC
  loc_667B11: Call Form_Load()
  loc_667B16: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D23E0
  'Data Table: 41EC98
  loc_5D23C8: ILdRf Me
  loc_5D23CB: FStAdNoPop
  loc_5D23CF: ImpAdLdRf MemVar_7520D4
  loc_5D23D2: NewIfNullPr Global
  loc_5D23D5: Global.Unload from_stack_1
  loc_5D23DA: FFree1Ad var_88
  loc_5D23DD: ExitProcHresult
End Sub

Private Sub Importe_UnknownEvent_0 '5D9DF4
  'Data Table: 41EC98
  loc_5D9DBC: LitVarI4
  loc_5D9DC4: PopAdLdVar
  loc_5D9DC5: FLdPrThis
  loc_5D9DC6: VCallAd Control_ID_Importe
  loc_5D9DC9: FStAdFunc var_98
  loc_5D9DCC: FLdPr var_98
  loc_5D9DCF: LateIdSt
  loc_5D9DD4: FFree1Ad var_98
  loc_5D9DD7: LitVarI4
  loc_5D9DDF: PopAdLdVar
  loc_5D9DE0: FLdPrThis
  loc_5D9DE1: VCallAd Control_ID_Importe
  loc_5D9DE4: FStAdFunc var_98
  loc_5D9DE7: FLdPr var_98
  loc_5D9DEA: LateIdSt
  loc_5D9DEF: FFree1Ad var_98
  loc_5D9DF2: ExitProcHresult
End Sub

Private Sub Form_Load() '5E1E7C
  'Data Table: 41EC98
  loc_5E1E1C: LitVarStr var_94, "0000"
  loc_5E1E21: PopAdLdVar
  loc_5E1E22: FLdPrThis
  loc_5E1E23: VCallAd Control_ID_CentroEmisor
  loc_5E1E26: FStAdFunc var_98
  loc_5E1E29: FLdPr var_98
  loc_5E1E2C: LateIdSt
  loc_5E1E31: FFree1Ad var_98
  loc_5E1E34: LitVarStr var_94, "00000000"
  loc_5E1E39: PopAdLdVar
  loc_5E1E3A: FLdPrThis
  loc_5E1E3B: VCallAd Control_ID_NComprobante
  loc_5E1E3E: FStAdFunc var_98
  loc_5E1E41: FLdPr var_98
  loc_5E1E44: LateIdSt
  loc_5E1E49: FFree1Ad var_98
  loc_5E1E4C: LitStr "0000"
  loc_5E1E4F: FLdPrThis
  loc_5E1E50: VCallAd Control_ID_NroCliente
  loc_5E1E53: FStAdFunc var_98
  loc_5E1E56: FLdPr var_98
  loc_5E1E59: Me.Text = from_stack_1
  loc_5E1E5E: FFree1Ad var_98
  loc_5E1E61: LitVarStr var_94, "0.00"
  loc_5E1E66: PopAdLdVar
  loc_5E1E67: FLdPrThis
  loc_5E1E68: VCallAd Control_ID_Importe
  loc_5E1E6B: FStAdFunc var_98
  loc_5E1E6E: FLdPr var_98
  loc_5E1E71: LateIdSt
  loc_5E1E76: FFree1Ad var_98
  loc_5E1E79: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D0620
  'Data Table: 41EC98
  loc_5D060C: FLdPrThis
  loc_5D060D: VCallAd Control_ID_NroCliente
  loc_5D0610: FStAdFunc var_88
  loc_5D0613: FLdPr var_88
  loc_5D0616: Me.SetFocus
  loc_5D061B: FFree1Ad var_88
  loc_5D061E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5EB1C8
  'Data Table: 41EC98
  loc_5EB13C: ILdI2 KeyAscii
  loc_5EB13F: FStI2 var_86
  loc_5EB142: FLdI2 var_86
  loc_5EB145: LitI4 &HD
  loc_5EB14A: CI2I4
  loc_5EB14B: EqI2
  loc_5EB14C: BranchF loc_5EB171
  loc_5EB14F: FLdPrThis
  loc_5EB150: VCallAd Control_ID_SSCommand1
  loc_5EB153: FStAdFunc var_8C
  loc_5EB156: FLdPr var_8C
  loc_5EB159: LateIdCall
  loc_5EB161: FFree1Ad var_8C
  loc_5EB164: Call SSCommand1_UnknownEvent_8()
  loc_5EB169: LitI2_Byte 0
  loc_5EB16B: IStI2 KeyAscii
  loc_5EB16E: Branch loc_5EB1C7
  loc_5EB171: FLdI2 var_86
  loc_5EB174: LitI4 &H41
  loc_5EB179: CI2I4
  loc_5EB17A: LitI4 &H5A
  loc_5EB17F: CI2I4
  loc_5EB180: BetweenI2
  loc_5EB182: BranchT loc_5EB199
  loc_5EB185: FLdI2 var_86
  loc_5EB188: LitI4 &H61
  loc_5EB18D: CI2I4
  loc_5EB18E: LitI4 &H7A
  loc_5EB193: CI2I4
  loc_5EB194: BetweenI2
  loc_5EB196: BranchF loc_5EB1B4
  loc_5EB199: ILdI2 KeyAscii
  loc_5EB19C: ImpAdLdRf MemVar_74D874
  loc_5EB19F: NewIfNullPr BrowseCli
  loc_5EB1A2: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5EB1A7: from_stack_1v = Proc_49_9_5DDD04()
  loc_5EB1AC: LitI2_Byte 0
  loc_5EB1AE: IStI2 KeyAscii
  loc_5EB1B1: Branch loc_5EB1C7
  loc_5EB1B4: FLdI2 var_86
  loc_5EB1B7: LitI2_Byte &H1B
  loc_5EB1B9: EqI2
  loc_5EB1BA: BranchF loc_5EB1C7
  loc_5EB1BD: Call SSCommand2_UnknownEvent_8()
  loc_5EB1C2: LitI2_Byte 0
  loc_5EB1C4: IStI2 KeyAscii
  loc_5EB1C7: ExitProcHresult
End Sub

Private Sub NroCliente_GotFocus() '5D8C24
  'Data Table: 41EC98
  loc_5D8BF4: LitI4 0
  loc_5D8BF9: FLdPrThis
  loc_5D8BFA: VCallAd Control_ID_NroCliente
  loc_5D8BFD: FStAdFunc var_88
  loc_5D8C00: FLdPr var_88
  loc_5D8C03: Me.SelStart = from_stack_1
  loc_5D8C08: FFree1Ad var_88
  loc_5D8C0B: LitI4 &H63
  loc_5D8C10: FLdPrThis
  loc_5D8C11: VCallAd Control_ID_NroCliente
  loc_5D8C14: FStAdFunc var_88
  loc_5D8C17: FLdPr var_88
  loc_5D8C1A: Me.SelLength = from_stack_1
  loc_5D8C1F: FFree1Ad var_88
  loc_5D8C22: ExitProcHresult
End Sub

Private Function Proc_49_9_5DDD04() '5DDD04
  'Data Table: 41EC98
  loc_5DDCBC: LitVar_Missing var_A4
  loc_5DDCBF: PopAdLdVar
  loc_5DDCC0: LitVarI2 var_94, 1
  loc_5DDCC5: PopAdLdVar
  loc_5DDCC6: ImpAdLdRf MemVar_74D874
  loc_5DDCC9: NewIfNullPr BrowseCli
  loc_5DDCCC: BrowseCli.Show from_stack_1, from_stack_2
  loc_5DDCD1: LitI2_Byte 0
  loc_5DDCD3: ImpAdLdRf MemVar_74D874
  loc_5DDCD6: NewIfNullPr BrowseCli
  loc_5DDCD9: Call BrowseCli.LastKeyPut(from_stack_1v)
  loc_5DDCDE: ImpAdLdI2 MemVar_74C37E
  loc_5DDCE1: NotI4
  loc_5DDCE2: BranchF loc_5DDD02
  loc_5DDCE5: ImpAdLdI2 MemVar_74C384
  loc_5DDCE8: CStrUI1
  loc_5DDCEA: FStStrNoPop var_A8
  loc_5DDCED: FLdPrThis
  loc_5DDCEE: VCallAd Control_ID_Cancelar
  loc_5DDCF1: FStAdFunc var_AC
  loc_5DDCF4: FLdPr var_AC
  loc_5DDCF7: BrowseCli.TextBox.Text = from_stack_1
  loc_5DDCFC: FFree1Str var_A8
  loc_5DDCFF: FFree1Ad var_AC
  loc_5DDD02: ExitProcHresult
End Function

Private Function Proc_49_10_65425C(arg_C) '65425C
  'Data Table: 41EC98
  loc_653F88: ZeroRetValVar
  loc_653F8A: OnErrorGoto loc_654170
  loc_653F8D: FMemLdI2 arg_C(0)
  loc_653F92: LitI2_Byte 0
  loc_653F94: EqI2
  loc_653F95: BranchF loc_653FC7
  loc_653F98: LitStr "Consumidor Final"
  loc_653F9B: FMemStStrCopy
  loc_653FA0: LitI2_Byte 1
  loc_653FA2: FMemStI2 arg_C(108)
  loc_653FA7: LitVarStr var_B4, vbNullString
  loc_653FAC: FMemStVarCopy arg_C(92)
  loc_653FB2: LitVarStr var_B4, vbNullString
  loc_653FB7: FMemStVarCopy arg_C(8)
  loc_653FBD: LitI2_Byte 0
  loc_653FBF: FMemStI2 arg_C(88)
  loc_653FC4: Branch loc_654145
  loc_653FC7: LitI4 1
  loc_653FCC: LitI4 1
  loc_653FD1: LitVarStr var_C4, "0000"
  loc_653FD6: FStVarCopyObj var_D4
  loc_653FD9: FLdRfVar var_D4
  loc_653FDC: FMemLdRf unk_41ECA5
  loc_653FE1: CVarRef
  loc_653FE6: FLdRfVar var_E4
  loc_653FE9: ImpAdCallFPR4  = Format(, )
  loc_653FEE: FLdRfVar var_EA
  loc_653FF1: FLdRfVar var_A2
  loc_653FF4: FLdRfVar var_9C
  loc_653FF7: FLdVar var_E4
  loc_653FFB: FLdRfVar var_E8
  loc_653FFE: ImpAdLdRf MemVar_74C760
  loc_654001: NewIfNullPr Formx
  loc_654004: from_stack_1v = Formx.global_4589716Get()
  loc_654009: FLdPr var_E8
  loc_65400C: Call 0.Method_arg_DC ()
  loc_654011: FLdI2 var_EA
  loc_654014: NotI4
  loc_654015: FFree1Ad var_E8
  loc_654018: FFreeVar var_D4 = ""
  loc_65401F: BranchF loc_65405B
  loc_654022: FLdRfVar var_D4
  loc_654025: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_65402A: FLdRfVar var_D4
  loc_65402D: CBoolVarNull
  loc_65402F: FFree1Var var_D4 = ""
  loc_654032: BranchF loc_654058
  loc_654035: ILdRf Me
  loc_654038: FStAdNoPop
  loc_65403C: ImpAdLdRf MemVar_7520D4
  loc_65403F: NewIfNullPr Global
  loc_654042: Global.Unload from_stack_1
  loc_654047: FFree1Ad var_E8
  loc_65404A: LitVar_FALSE
  loc_65404E: FStVar var_94
  loc_654052: ExitProcCbHresult
  loc_654058: Branch loc_653FC7
  loc_65405B: FLdI2 var_A2
  loc_65405E: BranchF loc_654067
  loc_654061: ExitProcCbHresult
  loc_654067: LitVarI2 var_D4, 25
  loc_65406C: LitI4 5
  loc_654071: FLdRfVar var_9C
  loc_654074: CVarRef
  loc_654079: FLdRfVar var_E4
  loc_65407C: ImpAdCallFPR4  = Mid(, , )
  loc_654081: FLdRfVar var_E4
  loc_654084: CStrVarTmp
  loc_654085: FStStrNoPop var_F0
  loc_654088: FMemStStrCopy
  loc_65408D: FFree1Str var_F0
  loc_654090: FFreeVar var_D4 = ""
  loc_654097: LitVarI2 var_D4, 13
  loc_65409C: LitI4 &H55
  loc_6540A1: FLdRfVar var_9C
  loc_6540A4: CVarRef
  loc_6540A9: FLdRfVar var_E4
  loc_6540AC: ImpAdCallFPR4  = Mid(, , )
  loc_6540B1: FLdRfVar var_E4
  loc_6540B4: FMemStVar arg_C(92)
  loc_6540BA: FFreeVar var_D4 = ""
  loc_6540C1: LitVarI2 var_D4, 40
  loc_6540C6: LitI4 &H1E
  loc_6540CB: FLdRfVar var_9C
  loc_6540CE: CVarRef
  loc_6540D3: FLdRfVar var_E4
  loc_6540D6: ImpAdCallFPR4  = Mid(, , )
  loc_6540DB: FLdRfVar var_E4
  loc_6540DE: FMemStVar arg_C(8)
  loc_6540E4: FFreeVar var_D4 = ""
  loc_6540EB: LitVarI2 var_D4, 1
  loc_6540F0: LitI4 &H63
  loc_6540F5: FLdRfVar var_9C
  loc_6540F8: CVarRef
  loc_6540FD: FLdRfVar var_E4
  loc_654100: ImpAdCallFPR4  = Mid(, , )
  loc_654105: FLdRfVar var_E4
  loc_654108: FnCBoolVar
  loc_65410A: FMemStI2 arg_C(88)
  loc_65410F: FFreeVar var_D4 = "": var_E4 = ""
  loc_654118: LitVarI2 var_D4, 1
  loc_65411D: LitI4 &H62
  loc_654122: FLdRfVar var_9C
  loc_654125: CVarRef
  loc_65412A: FLdRfVar var_E4
  loc_65412D: ImpAdCallFPR4  = Mid(, , )
  loc_654132: FLdRfVar var_E4
  loc_654135: FnCIntVar
  loc_654137: FMemStI2 arg_C(108)
  loc_65413C: FFreeVar var_D4 = "": var_E4 = ""
  loc_654145: FMemLdI2 arg_C(108)
  loc_65414A: LitI2_Byte 4
  loc_65414C: GeI2
  loc_65414D: BranchF loc_65415B
  loc_654150: LitStr "FA"
  loc_654153: FMemStStrCopy
  loc_654158: Branch loc_654163
  loc_65415B: LitStr "FB"
  loc_65415E: FMemStStrCopy
  loc_654163: LitVar_TRUE var_B4
  loc_654166: FStVar var_94
  loc_65416A: ExitProcCbHresult
  loc_654170: LitVarStr var_B4, "Ha ocurrido un error inesperado al intentar buscar un cliente."
  loc_654175: LitI4 &HD
  loc_65417A: FLdRfVar var_D4
  loc_65417D: ImpAdCallFPR4  = Chr()
  loc_654182: FLdRfVar var_D4
  loc_654185: ConcatVar var_E4
  loc_654189: LitI4 &HD
  loc_65418E: FLdRfVar var_100
  loc_654191: ImpAdCallFPR4  = Chr()
  loc_654196: FLdRfVar var_100
  loc_654199: ConcatVar var_110
  loc_65419D: CStrVarTmp
  loc_65419E: FStStr var_A0
  loc_6541A1: FFreeVar var_D4 = "": var_E4 = "": var_100 = ""
  loc_6541AC: ILdRf var_A0
  loc_6541AF: LitStr "             Código: "
  loc_6541B2: ConcatStr
  loc_6541B3: FStStrNoPop var_F0
  loc_6541B6: FLdRfVar var_114
  loc_6541B9: ImpAdCallI2 Err 'rtcErrObj
  loc_6541BE: FStAdFunc var_E8
  loc_6541C1: FLdPr var_E8
  loc_6541C4:  = Err.Number
  loc_6541C9: ILdRf var_114
  loc_6541CC: CStrI4
  loc_6541CE: FStStrNoPop var_118
  loc_6541D1: ConcatStr
  loc_6541D2: CVarStr var_E4
  loc_6541D5: LitI4 &HD
  loc_6541DA: FLdRfVar var_D4
  loc_6541DD: ImpAdCallFPR4  = Chr()
  loc_6541E2: FLdRfVar var_D4
  loc_6541E5: ConcatVar var_100
  loc_6541E9: CStrVarTmp
  loc_6541EA: FStStr var_A0
  loc_6541ED: FFreeStr var_F0 = ""
  loc_6541F4: FFree1Ad var_E8
  loc_6541F7: FFreeVar var_E4 = "": var_D4 = ""
  loc_654200: ILdRf var_A0
  loc_654203: LitStr "             Descripción: "
  loc_654206: ConcatStr
  loc_654207: CVarStr var_D4
  loc_65420A: FLdI2 var_A2
  loc_65420D: CVarBoolI2 var_B4
  loc_654211: ConcatVar var_E4
  loc_654215: CStrVarTmp
  loc_654216: FStStr var_A0
  loc_654219: FFreeVar var_D4 = "": var_B4 = ""
  loc_654222: LitVar_Missing var_100
  loc_654225: LitVar_Missing var_E4
  loc_654228: LitVarStr var_C4, "Error inesperado"
  loc_65422D: FStVarCopyObj var_D4
  loc_654230: FLdRfVar var_D4
  loc_654233: LitI4 &H10
  loc_654238: FLdRfVar var_A0
  loc_65423B: CVarRef
  loc_654240: ImpAdCallFPR4 MsgBox(, , , , )
  loc_654245: FFreeVar var_D4 = "": var_E4 = ""
  loc_65424E: ExitProcCbHresult
  loc_654254: ExitProcCbHresult
End Function
