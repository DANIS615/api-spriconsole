VERSION 5.00
Begin VB.Form frmReporteTickets
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
  ClientWidth = 10410
  ClientHeight = 5940
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CheckBox chkDetalles
    Caption = "Detalles"
    Left = 8280
    Top = 960
    Width = 1815
    Height = 255
    TabIndex = 5
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
  Begin VB.TextBox txtReporte
    Left = 240
    Top = 1440
    Width = 9975
    Height = 3495
    TabIndex = 4
    MultiLine = -1  'True
    ScrollBars = 2
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 6600
    Top = 5160
    Width = 1695
    Height = 495
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
    Style = 1
  End
  Begin VB.CommandButton cmdSalir
    Caption = "&Aceptar"
    Left = 8520
    Top = 5160
    Width = 1695
    Height = 495
    TabIndex = 2
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
    Style = 1
  End
  Begin VB.ComboBox cboCierre
    Style = 2
    Left = 360
    Top = 840
    Width = 6015
    Height = 360
    TabIndex = 0
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
  Begin VB.Label Label1
    Caption = "Reporte de Tickets"
    Left = 120
    Top = 120
    Width = 10215
    Height = 495
    TabIndex = 3
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

Attribute VB_Name = "frmReporteTickets"

Private Type UDT_1_00496118
  bStruc(54) As Byte ' String fields: 3
End Type

Private Type UDT_2_0049613C
  bStruc(74) As Byte ' String fields: 9
End Type


Private Sub cmdSalir_Click() '5D0AA4
  'Data Table: 4155C4
  loc_5D0A8C: ILdRf Me
  loc_5D0A8F: FStAdNoPop
  loc_5D0A93: ImpAdLdRf MemVar_7520D4
  loc_5D0A96: NewIfNullPr Global
  loc_5D0A99: Global.Unload from_stack_1
  loc_5D0A9E: FFree1Ad var_88
  loc_5D0AA1: ExitProcHresult
  loc_5D0AA2: BranchF loc_5D568C
End Sub

Private Sub Form_Load() '5D41F4
  'Data Table: 4155C4
  loc_5D41D4: ILdRf Me
  loc_5D41D7: CastAd
  loc_5D41DA: FStAdFunc var_88
  loc_5D41DD: FLdRfVar var_88
  loc_5D41E0: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5D41E5: FFree1Ad var_88
  loc_5D41E8: LitI2_Byte 0
  loc_5D41EA: FLdPr Me
  loc_5D41ED: MemStI2 global_64
  loc_5D41F0: ExitProcHresult
End Sub

Private Sub Form_Activate() '60BE64
  'Data Table: 4155C4
  loc_60BD78: OnErrorGoto loc_60BE21
  loc_60BD7B: FLdPr Me
  loc_60BD7E: MemLdI2 global_64
  loc_60BD81: BranchF loc_60BD85
  loc_60BD84: ExitProcHresult
  loc_60BD85: LitI2_Byte &HFF
  loc_60BD87: FLdPr Me
  loc_60BD8A: MemStI2 global_64
  loc_60BD8D: FLdRfVar var_8A
  loc_60BD90: FLdRfVar var_88
  loc_60BD93: from_stack_2v = Proc_128_6_612B38(from_stack_1v)
  loc_60BD98: FLdI2 var_8A
  loc_60BD9B: NotI4
  loc_60BD9C: BranchF loc_60BDDE
  loc_60BD9F: LitVar_Missing var_10C
  loc_60BDA2: LitVar_Missing var_EC
  loc_60BDA5: LitVar_Missing var_CC
  loc_60BDA8: LitI4 &H40
  loc_60BDAD: LitVarStr var_9C, "No hay Reporte de tickets para visualizar."
  loc_60BDB2: FStVarCopyObj var_AC
  loc_60BDB5: FLdRfVar var_AC
  loc_60BDB8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60BDBD: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_60BDC8: ILdRf Me
  loc_60BDCB: FStAdNoPop
  loc_60BDCF: ImpAdLdRf MemVar_7520D4
  loc_60BDD2: NewIfNullPr Global
  loc_60BDD5: Global.Unload from_stack_1
  loc_60BDDA: FFree1Ad var_110
  loc_60BDDD: ExitProcHresult
  loc_60BDDE: FLdRfVar var_88
  loc_60BDE1: from_stack_2v = Proc_128_7_63CB24(from_stack_1v)
  loc_60BDE6: LitI2_Byte 0
  loc_60BDE8: FLdPr Me
  loc_60BDEB: MemStI2 global_66
  loc_60BDEE: LitI2_Byte 0
  loc_60BDF0: FLdPrThis
  loc_60BDF1: VCallAd Control_ID_cboCierre
  loc_60BDF4: FStAdFunc var_110
  loc_60BDF7: FLdPr var_110
  loc_60BDFA: Me.ListIndex = from_stack_1
  loc_60BDFF: FFree1Ad var_110
  loc_60BE02: FLdPr Me
  loc_60BE05: MemLdI2 global_66
  loc_60BE08: BranchF loc_60BE20
  loc_60BE0B: ILdRf Me
  loc_60BE0E: FStAdNoPop
  loc_60BE12: ImpAdLdRf MemVar_7520D4
  loc_60BE15: NewIfNullPr Global
  loc_60BE18: Global.Unload from_stack_1
  loc_60BE1D: FFree1Ad var_110
  loc_60BE20: ExitProcHresult
  loc_60BE21: LitVar_Missing var_10C
  loc_60BE24: LitVar_Missing var_EC
  loc_60BE27: LitVar_Missing var_CC
  loc_60BE2A: LitI4 &H10
  loc_60BE2F: LitVarStr var_9C, "Hubo un error en la lectura del reporte. Imposible visualizarlo."
  loc_60BE34: FStVarCopyObj var_AC
  loc_60BE37: FLdRfVar var_AC
  loc_60BE3A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60BE3F: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_60BE4A: On Error GoTo 0
  loc_60BE4D: ILdRf Me
  loc_60BE50: FStAdNoPop
  loc_60BE54: ImpAdLdRf MemVar_7520D4
  loc_60BE57: NewIfNullPr Global
  loc_60BE5A: Global.Unload from_stack_1
  loc_60BE5F: FFree1Ad var_110
  loc_60BE62: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '6231B8
  'Data Table: 4155C4
  loc_623064: FLdRfVar var_8C
  loc_623067: ImpAdLdRf MemVar_7520D4
  loc_62306A: NewIfNullPr Global
  loc_62306D:  = Global.Printer
  loc_623072: FLdZeroAd var_8C
  loc_623075: FStAdFunc var_88
  loc_623078: LitVarStr var_9C, "Courier New"
  loc_62307D: PopAdLdVar
  loc_62307E: FLdPr var_88
  loc_623081: LateIdSt
  loc_623086: LitI2_Byte &H10
  loc_623088: CR8I2
  loc_623089: CVarR4
  loc_62308D: PopAdLdVar
  loc_62308E: FLdPr var_88
  loc_623091: LateIdSt
  loc_623096: LitStr "Reporte de Tickets"
  loc_623099: ILdRf var_88
  loc_62309C: PrintObject
  loc_6230A2: LitStr " "
  loc_6230A5: ILdRf var_88
  loc_6230A8: PrintObject
  loc_6230AE: LitI2_Byte 8
  loc_6230B0: CR8I2
  loc_6230B1: CVarR4
  loc_6230B5: PopAdLdVar
  loc_6230B6: FLdPr var_88
  loc_6230B9: LateIdSt
  loc_6230BE: FLdRfVar var_A0
  loc_6230C1: FLdPrThis
  loc_6230C2: VCallAd Control_ID_cboCierre
  loc_6230C5: FStAdFunc var_8C
  loc_6230C8: FLdPr var_8C
  loc_6230CB:  = Me.Text
  loc_6230D0: LitStr "Fecha de cierre: "
  loc_6230D3: ILdRf var_A0
  loc_6230D6: ConcatStr
  loc_6230D7: FStStrNoPop var_A4
  loc_6230DA: ILdRf var_88
  loc_6230DD: PrintObject
  loc_6230E3: FFreeStr var_A0 = ""
  loc_6230EA: FFree1Ad var_8C
  loc_6230ED: FLdRfVar var_B4
  loc_6230F0: ImpAdCallFPR4  = Now
  loc_6230F5: LitI4 1
  loc_6230FA: LitI4 1
  loc_6230FF: LitVarStr var_9C, "dd/mm/yyyy  hh:mm:ss"
  loc_623104: FStVarCopyObj var_C4
  loc_623107: FLdRfVar var_C4
  loc_62310A: FLdRfVar var_B4
  loc_62310D: ImpAdCallI2 Format$(, )
  loc_623112: FStStr var_C8
  loc_623115: LitStr "Fecha de emisión: "
  loc_623118: FLdZeroAd var_C8
  loc_62311B: FStStrNoPop var_A0
  loc_62311E: ConcatStr
  loc_62311F: FStStrNoPop var_A4
  loc_623122: ILdRf var_88
  loc_623125: PrintObject
  loc_62312B: FFreeStr var_A0 = "": var_A4 = ""
  loc_623134: FFreeVar var_B4 = ""
  loc_62313B: LitStr " "
  loc_62313E: ILdRf var_88
  loc_623141: PrintObject
  loc_623147: LitI2_Byte &HA
  loc_623149: CR8I2
  loc_62314A: CVarR4
  loc_62314E: PopAdLdVar
  loc_62314F: FLdPr var_88
  loc_623152: LateIdSt
  loc_623157: FLdRfVar var_A0
  loc_62315A: FLdPrThis
  loc_62315B: VCallAd Control_ID_txtReporte
  loc_62315E: FStAdFunc var_8C
  loc_623161: FLdPr var_8C
  loc_623164:  = Me.Text
  loc_623169: ILdRf var_A0
  loc_62316C: ILdRf var_88
  loc_62316F: PrintObject
  loc_623175: FFree1Str var_A0
  loc_623178: FFree1Ad var_8C
  loc_62317B: FLdPr var_88
  loc_62317E: LateIdCall
  loc_623186: LitNothing
  loc_623188: CastAd
  loc_62318B: FStAdFunc var_88
  loc_62318E: LitVar_Missing var_118
  loc_623191: LitVar_Missing var_F8
  loc_623194: LitVar_Missing var_C4
  loc_623197: LitI4 &H40
  loc_62319C: LitVarStr var_9C, "Se ha terminado de imprimr el reporte."
  loc_6231A1: FStVarCopyObj var_B4
  loc_6231A4: FLdRfVar var_B4
  loc_6231A7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6231AC: FFreeVar var_B4 = "": var_C4 = "": var_F8 = ""
  loc_6231B7: ExitProcHresult
End Sub

Private Sub cboCierre_Click() '607DD8
  'Data Table: 4155C4
  loc_607CFC: OnErrorGoto loc_607D7D
  loc_607D01: FLdRfVar var_8A
  loc_607D04: FLdPrThis
  loc_607D05: VCallAd Control_ID_cboCierre
  loc_607D08: FStAdFunc var_88
  loc_607D0B: FLdPr var_88
  loc_607D0E:  = Me.ListIndex
  loc_607D13: FLdRfVar var_92
  loc_607D16: FLdI2 var_8A
  loc_607D19: LitI2_Byte 1
  loc_607D1B: AddI2
  loc_607D1C: CI4UI1
  loc_607D1D: FLdPr Me
  loc_607D20: MemLdStr global_52
  loc_607D23: AryLock
  loc_607D26: Ary1LdRf
  loc_607D27: from_stack_2v = Proc_128_8_675450(from_stack_1v)
  loc_607D2C: AryUnlock
  loc_607D2F: FLdI2 var_92
  loc_607D32: NotI4
  loc_607D33: FFree1Ad var_88
  loc_607D36: BranchF loc_607D67
  loc_607D3B: LitI2_Byte &HFF
  loc_607D3D: FLdPr Me
  loc_607D40: MemStI2 global_66
  loc_607D45: On Error Resume Next
  loc_607D4A: ILdRf Me
  loc_607D4D: FStAdNoPop
  loc_607D51: ImpAdLdRf MemVar_7520D4
  loc_607D54: NewIfNullPr Global
  loc_607D57: Global.Unload from_stack_1
  loc_607D5C: FFree1Ad var_88
  loc_607D61: On Error GoTo 0
  loc_607D66: ExitProcHresult
  loc_607D6B: from_stack_1v = Proc_128_11_6DF210()
  loc_607D72: LitI2_Byte 0
  loc_607D74: FLdPr Me
  loc_607D77: MemStI2 global_66
  loc_607D7C: ExitProcHresult
  loc_607D7F: LitVar_Missing var_114
  loc_607D82: LitVar_Missing var_F4
  loc_607D85: LitVar_Missing var_D4
  loc_607D88: LitI4 &H10
  loc_607D8D: LitVarStr var_A4, "Hubo un error en la lectura del reporte. Imposible visualizarlo."
  loc_607D92: FStVarCopyObj var_B4
  loc_607D95: FLdRfVar var_B4
  loc_607D98: ImpAdCallFPR4 MsgBox(, , , , )
  loc_607D9D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_607DAA: LitI2_Byte &HFF
  loc_607DAC: FLdPr Me
  loc_607DAF: MemStI2 global_66
  loc_607DB4: On Error Resume Next
  loc_607DB9: ILdRf Me
  loc_607DBC: FStAdNoPop
  loc_607DC0: ImpAdLdRf MemVar_7520D4
  loc_607DC3: NewIfNullPr Global
  loc_607DC6: Global.Unload from_stack_1
  loc_607DCB: FFree1Ad var_88
  loc_607DD0: On Error GoTo 0
  loc_607DD5: ExitProcHresult
End Sub

Private Sub chkDetalles_Click() '5C96F8
  'Data Table: 4155C4
  loc_5C96F0: Call cboCierre_Click()
  loc_5C96F5: ExitProcHresult
  loc_5C96F6: ExitProcR4
End Sub

Private Function Proc_128_6_612B38(arg_C) '612B38
  'Data Table: 4155C4
  loc_612A3C: FLdRfVar var_9C
  loc_612A3F: ImpAdCallFPR4  = Now
  loc_612A44: FLdRfVar var_FC
  loc_612A47: ImpAdCallFPR4  = Now
  loc_612A4C: LitI4 1
  loc_612A51: LitI4 1
  loc_612A56: LitVarStr var_DC, "yyyymmddhhmmss"
  loc_612A5B: FStVarCopyObj var_EC
  loc_612A5E: FLdRfVar var_EC
  loc_612A61: FLdRfVar var_9C
  loc_612A64: LitVarI2 var_AC, 730
  loc_612A69: SubVar var_BC
  loc_612A6D: FStVar var_CC
  loc_612A71: FLdRfVar var_CC
  loc_612A74: ImpAdCallI2 Format$(, )
  loc_612A79: FStStrNoPop var_120
  loc_612A7C: LitI4 1
  loc_612A81: LitI4 1
  loc_612A86: LitVarStr var_10C, "yyyymmddhhmmss"
  loc_612A8B: FStVarCopyObj var_11C
  loc_612A8E: FLdRfVar var_11C
  loc_612A91: FLdRfVar var_FC
  loc_612A94: ImpAdCallI2 Format$(, )
  loc_612A99: FStStrNoPop var_124
  loc_612A9C: ConcatStr
  loc_612A9D: FStStr var_8C
  loc_612AA0: FFreeStr var_120 = ""
  loc_612AA7: FFreeVar var_9C = "": var_CC = "": var_EC = "": var_FC = ""
  loc_612AB4: FLdRfVar var_12A
  loc_612AB7: ILdRf arg_C
  loc_612ABA: FLdRfVar var_8C
  loc_612ABD: LitStr "K"
  loc_612AC0: FStStrCopy var_120
  loc_612AC3: FLdRfVar var_120
  loc_612AC6: FLdRfVar var_128
  loc_612AC9: ImpAdLdRf MemVar_74C760
  loc_612ACC: NewIfNullPr Formx
  loc_612ACF: from_stack_1v = Formx.global_4589716Get()
  loc_612AD4: FLdPr var_128
  loc_612AD7: Formx.FontSize = from_stack_1s
  loc_612ADC: FLdI2 var_12A
  loc_612ADF: NotI4
  loc_612AE0: FFree1Str var_120
  loc_612AE3: FFree1Ad var_128
  loc_612AE6: BranchF loc_612B0A
  loc_612AE9: FLdRfVar var_9C
  loc_612AEC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_612AF1: FLdRfVar var_9C
  loc_612AF4: CBoolVarNull
  loc_612AF6: FFree1Var var_9C = ""
  loc_612AF9: BranchF loc_612B07
  loc_612AFC: LitI2_Byte 0
  loc_612AFE: FStI2 var_86
  loc_612B01: ExitProcCbHresult
  loc_612B07: Branch loc_612AB4
  loc_612B0A: ILdRf arg_C
  loc_612B0D: CVarRef
  loc_612B12: FLdRfVar var_9C
  loc_612B15: ImpAdCallFPR4  = Trim()
  loc_612B1A: FLdRfVar var_9C
  loc_612B1D: CStrVarTmp
  loc_612B1E: IStStr
  loc_612B22: FFree1Var var_9C = ""
  loc_612B25: ILdI4 arg_C
  loc_612B28: FnLenStr
  loc_612B29: LitI4 &HA
  loc_612B2E: GtI4
  loc_612B2F: FStI2 var_86
  loc_612B32: ExitProcCbHresult
End Function

Private Function Proc_128_7_63CB24(arg_C) '63CB24
  'Data Table: 4155C4
  loc_63C928: LitI4 1
  loc_63C92D: ILdI4 arg_C
  loc_63C930: FnLenStr
  loc_63C931: LitI4 1
  loc_63C936: AddI4
  loc_63C937: LitI4 &H25
  loc_63C93C: IDvI4
  loc_63C93D: FLdPr Me
  loc_63C940: MemLdRfVar from_stack_1.global_52
  loc_63C943: Redim
  loc_63C94D: LitI2_Byte 1
  loc_63C94F: FStI2 var_88
  loc_63C952: LitI2_Byte 1
  loc_63C954: FStI2 var_86
  loc_63C957: FLdI2 var_86
  loc_63C95A: CI4UI1
  loc_63C95B: ILdI4 arg_C
  loc_63C95E: FnLenStr
  loc_63C95F: LtI4
  loc_63C960: BranchF loc_63CB21
  loc_63C963: LitVarI2 var_AC, 37
  loc_63C968: FLdI2 var_86
  loc_63C96B: CI4UI1
  loc_63C96C: ILdI4 arg_C
  loc_63C96F: ImpAdCallI2 Mid$(, , )
  loc_63C974: FStStrNoPop var_B0
  loc_63C977: FLdPr Me
  loc_63C97A: MemLdStr global_52
  loc_63C97D: LitI2_Byte 1
  loc_63C97F: FnUBound
  loc_63C981: FLdI2 var_88
  loc_63C984: CI4UI1
  loc_63C985: SubI4
  loc_63C986: LitI4 1
  loc_63C98B: AddI4
  loc_63C98C: FLdPr Me
  loc_63C98F: MemLdStr global_52
  loc_63C992: Ary1StStrCopy
  loc_63C993: FFree1Str var_B0
  loc_63C996: FFree1Var var_AC = ""
  loc_63C999: FLdI2 var_88
  loc_63C99C: LitI2_Byte 1
  loc_63C99E: AddI2
  loc_63C99F: FStI2 var_88
  loc_63C9A2: LitVarI2 var_AC, 2
  loc_63C9A7: FLdI2 var_86
  loc_63C9AA: LitI2_Byte 8
  loc_63C9AC: AddI2
  loc_63C9AD: CI4UI1
  loc_63C9AE: ILdI4 arg_C
  loc_63C9B1: ImpAdCallI2 Mid$(, , )
  loc_63C9B6: FStStrNoPop var_B0
  loc_63C9B9: LitStr "/"
  loc_63C9BC: ConcatStr
  loc_63C9BD: FStStrNoPop var_D4
  loc_63C9C0: LitVarI2 var_D0, 2
  loc_63C9C5: FLdI2 var_86
  loc_63C9C8: LitI2_Byte 5
  loc_63C9CA: AddI2
  loc_63C9CB: CI4UI1
  loc_63C9CC: ILdI4 arg_C
  loc_63C9CF: ImpAdCallI2 Mid$(, , )
  loc_63C9D4: FStStrNoPop var_D8
  loc_63C9D7: ConcatStr
  loc_63C9D8: FStStrNoPop var_DC
  loc_63C9DB: LitStr "/"
  loc_63C9DE: ConcatStr
  loc_63C9DF: FStStrNoPop var_100
  loc_63C9E2: LitVarI2 var_FC, 4
  loc_63C9E7: FLdI2 var_86
  loc_63C9EA: CI4UI1
  loc_63C9EB: ILdI4 arg_C
  loc_63C9EE: ImpAdCallI2 Mid$(, , )
  loc_63C9F3: FStStrNoPop var_104
  loc_63C9F6: ConcatStr
  loc_63C9F7: FStStrNoPop var_108
  loc_63C9FA: LitStr " "
  loc_63C9FD: ConcatStr
  loc_63C9FE: FStStrNoPop var_12C
  loc_63CA01: LitVarI2 var_128, 8
  loc_63CA06: FLdI2 var_86
  loc_63CA09: LitI2_Byte &HA
  loc_63CA0B: AddI2
  loc_63CA0C: CI4UI1
  loc_63CA0D: ILdI4 arg_C
  loc_63CA10: ImpAdCallI2 Mid$(, , )
  loc_63CA15: FStStrNoPop var_130
  loc_63CA18: ConcatStr
  loc_63CA19: FStStr var_8C
  loc_63CA1C: FFreeStr var_B0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_100 = "": var_104 = "": var_108 = "": var_12C = ""
  loc_63CA31: FFreeVar var_AC = "": var_D0 = "": var_FC = ""
  loc_63CA3C: FLdI2 var_86
  loc_63CA3F: LitI2_Byte &H12
  loc_63CA41: AddI2
  loc_63CA42: FStI2 var_86
  loc_63CA45: ILdRf var_8C
  loc_63CA48: LitStr " - "
  loc_63CA4B: ConcatStr
  loc_63CA4C: FStStrNoPop var_B0
  loc_63CA4F: LitVarI2 var_AC, 2
  loc_63CA54: FLdI2 var_86
  loc_63CA57: LitI2_Byte 8
  loc_63CA59: AddI2
  loc_63CA5A: CI4UI1
  loc_63CA5B: ILdI4 arg_C
  loc_63CA5E: ImpAdCallI2 Mid$(, , )
  loc_63CA63: FStStrNoPop var_D4
  loc_63CA66: ConcatStr
  loc_63CA67: FStStrNoPop var_D8
  loc_63CA6A: LitStr "/"
  loc_63CA6D: ConcatStr
  loc_63CA6E: FStStrNoPop var_DC
  loc_63CA71: LitVarI2 var_D0, 2
  loc_63CA76: FLdI2 var_86
  loc_63CA79: LitI2_Byte 5
  loc_63CA7B: AddI2
  loc_63CA7C: CI4UI1
  loc_63CA7D: ILdI4 arg_C
  loc_63CA80: ImpAdCallI2 Mid$(, , )
  loc_63CA85: FStStrNoPop var_100
  loc_63CA88: ConcatStr
  loc_63CA89: FStStrNoPop var_104
  loc_63CA8C: LitStr "/"
  loc_63CA8F: ConcatStr
  loc_63CA90: FStStrNoPop var_108
  loc_63CA93: LitVarI2 var_FC, 4
  loc_63CA98: FLdI2 var_86
  loc_63CA9B: CI4UI1
  loc_63CA9C: ILdI4 arg_C
  loc_63CA9F: ImpAdCallI2 Mid$(, , )
  loc_63CAA4: FStStrNoPop var_12C
  loc_63CAA7: ConcatStr
  loc_63CAA8: FStStrNoPop var_130
  loc_63CAAB: LitStr " "
  loc_63CAAE: ConcatStr
  loc_63CAAF: FStStrNoPop var_134
  loc_63CAB2: LitVarI2 var_128, 8
  loc_63CAB7: FLdI2 var_86
  loc_63CABA: LitI2_Byte &HA
  loc_63CABC: AddI2
  loc_63CABD: CI4UI1
  loc_63CABE: ILdI4 arg_C
  loc_63CAC1: ImpAdCallI2 Mid$(, , )
  loc_63CAC6: FStStrNoPop var_138
  loc_63CAC9: ConcatStr
  loc_63CACA: FStStr var_8C
  loc_63CACD: FFreeStr var_B0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_100 = "": var_104 = "": var_108 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_63CAE6: FFreeVar var_AC = "": var_D0 = "": var_FC = ""
  loc_63CAF1: FLdI2 var_86
  loc_63CAF4: LitI2_Byte &H12
  loc_63CAF6: AddI2
  loc_63CAF7: FStI2 var_86
  loc_63CAFA: FLdI2 var_86
  loc_63CAFD: LitI2_Byte 1
  loc_63CAFF: AddI2
  loc_63CB00: FStI2 var_86
  loc_63CB03: LitVarI2 var_9C, 0
  loc_63CB08: PopAdLdVar
  loc_63CB09: ILdRf var_8C
  loc_63CB0C: FLdPrThis
  loc_63CB0D: VCallAd Control_ID_cboCierre
  loc_63CB10: FStAdFunc var_13C
  loc_63CB13: FLdPr var_13C
  loc_63CB16: Me.AddItem from_stack_1, from_stack_2
  loc_63CB1B: FFree1Ad var_13C
  loc_63CB1E: Branch loc_63C957
  loc_63CB21: ExitProcHresult
End Function

Private Function Proc_128_8_675450(arg_C) '675450
  'Data Table: 4155C4
  loc_675020: LitStr "0"
  loc_675023: FStStrCopy var_A0
  loc_675026: LitI2_Byte 0
  loc_675028: FStI2 var_96
  loc_67502B: ILdI4 arg_C
  loc_67502E: LitStr "|"
  loc_675031: ConcatStr
  loc_675032: FStStrNoPop var_A8
  loc_675035: ILdRf var_A0
  loc_675038: ConcatStr
  loc_675039: FStStr var_A4
  loc_67503C: FFree1Str var_A8
  loc_67503F: FLdRfVar var_AE
  loc_675042: FLdRfVar var_8C
  loc_675045: FLdRfVar var_A4
  loc_675048: FLdRfVar var_AC
  loc_67504B: ImpAdLdRf MemVar_74C760
  loc_67504E: NewIfNullPr Formx
  loc_675051: from_stack_1v = Formx.global_4589716Get()
  loc_675056: FLdPr var_AC
  loc_675059: Formx.Show from_stack_1, from_stack_2
  loc_67505E: FLdI2 var_AE
  loc_675061: NotI4
  loc_675062: FFree1Ad var_AC
  loc_675065: BranchF loc_675089
  loc_675068: FLdRfVar var_C0
  loc_67506B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_675070: FLdRfVar var_C0
  loc_675073: CBoolVarNull
  loc_675075: FFree1Var var_C0 = ""
  loc_675078: BranchF loc_675086
  loc_67507B: LitI2_Byte 0
  loc_67507D: FStI2 var_86
  loc_675080: ExitProcCbHresult
  loc_675086: Branch loc_67503F
  loc_675089: FLdRfVar var_8C
  loc_67508C: CVarRef
  loc_675091: FLdRfVar var_C0
  loc_675094: ImpAdCallFPR4  = Trim()
  loc_675099: FLdRfVar var_C0
  loc_67509C: CStrVarTmp
  loc_67509D: FStStr var_8C
  loc_6750A0: FFree1Var var_C0 = ""
  loc_6750A3: FLdI2 var_96
  loc_6750A6: LitI2_Byte 0
  loc_6750A8: EqI2
  loc_6750A9: ILdRf var_8C
  loc_6750AC: FnLenStr
  loc_6750AD: LitI4 &HA
  loc_6750B2: LtI4
  loc_6750B3: AndI4
  loc_6750B4: BranchF loc_6750EB
  loc_6750B7: LitVar_Missing var_130
  loc_6750BA: LitVar_Missing var_110
  loc_6750BD: LitVar_Missing var_F0
  loc_6750C0: LitI4 &H10
  loc_6750C5: LitVarStr var_D0, "Hubo un error en la lectura del reporte. Imposible visualizarlo."
  loc_6750CA: FStVarCopyObj var_C0
  loc_6750CD: FLdRfVar var_C0
  loc_6750D0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6750D5: FFreeVar var_C0 = "": var_F0 = "": var_110 = ""
  loc_6750E0: LitI2_Byte 0
  loc_6750E2: FStI2 var_86
  loc_6750E5: ExitProcCbHresult
  loc_6750EB: OnErrorGoto loc_6753C6
  loc_6750EE: LitI4 1
  loc_6750F3: ILdRf var_8C
  loc_6750F6: LitStr "|"
  loc_6750F9: LitI4 0
  loc_6750FE: FnInStr4
  loc_675100: FStR4 var_9C
  loc_675103: LitVar_Missing var_C0
  loc_675106: ILdRf var_9C
  loc_675109: LitI4 1
  loc_67510E: AddI4
  loc_67510F: FLdRfVar var_8C
  loc_675112: CVarRef
  loc_675117: FLdRfVar var_F0
  loc_67511A: ImpAdCallFPR4  = Mid(, , )
  loc_67511F: FLdRfVar var_F0
  loc_675122: CStrVarTmp
  loc_675123: FStStr var_A0
  loc_675126: FFreeVar var_C0 = ""
  loc_67512D: ILdRf var_9C
  loc_675130: LitI4 1
  loc_675135: SubI4
  loc_675136: CVarI4
  loc_67513A: LitI4 1
  loc_67513F: FLdRfVar var_8C
  loc_675142: CVarRef
  loc_675147: FLdRfVar var_F0
  loc_67514A: ImpAdCallFPR4  = Mid(, , )
  loc_67514F: FLdRfVar var_F0
  loc_675152: CStrVarTmp
  loc_675153: FStStr var_8C
  loc_675156: FFreeVar var_C0 = ""
  loc_67515D: FLdI2 var_96
  loc_675160: LitI2_Byte 1
  loc_675162: AddI2
  loc_675163: CI4UI1
  loc_675164: FStR4 var_94
  loc_675167: FLdI2 var_96
  loc_67516A: CI4UI1
  loc_67516B: ILdRf var_8C
  loc_67516E: FnLenStr
  loc_67516F: LitI4 &H4E
  loc_675174: IDvI4
  loc_675175: AddI4
  loc_675176: CI2I4
  loc_675177: FStI2 var_96
  loc_67517A: LitI4 1
  loc_67517F: FLdI2 var_96
  loc_675182: CI4UI1
  loc_675183: FLdPr Me
  loc_675186: MemLdRfVar from_stack_1.global_56
  loc_675189: RedimPreserve
  loc_675193: LitI4 1
  loc_675198: FStR4 var_90
  loc_67519B: ILdRf var_90
  loc_67519E: ILdRf var_8C
  loc_6751A1: FnLenStr
  loc_6751A2: LtI4
  loc_6751A3: BranchF loc_6753A6
  loc_6751A6: ILdRf var_94
  loc_6751A9: FLdPr Me
  loc_6751AC: MemLdStr global_56
  loc_6751AF: AryLock
  loc_6751B2: Ary1LdRf
  loc_6751B3: FStR4 var_138
  loc_6751B6: LitVarI2 var_C0, 2
  loc_6751BB: ILdRf var_90
  loc_6751BE: ILdRf var_8C
  loc_6751C1: ImpAdCallI2 Mid$(, , )
  loc_6751C6: FStStrNoPop var_A8
  loc_6751C9: CI2Str
  loc_6751CB: FMemStI2 var_138(0)
  loc_6751D0: FFree1Str var_A8
  loc_6751D3: FFree1Var var_C0 = ""
  loc_6751D6: ILdRf var_90
  loc_6751D9: LitI4 2
  loc_6751DE: AddI4
  loc_6751DF: FStR4 var_90
  loc_6751E2: LitVarI2 var_C0, 1
  loc_6751E7: ILdRf var_90
  loc_6751EA: ILdRf var_8C
  loc_6751ED: ImpAdCallI2 Mid$(, , )
  loc_6751F2: FStStrNoPop var_A8
  loc_6751F5: FMemLdRf unk_41548D
  loc_6751FA: StFixedStr
  loc_6751FD: FFree1Str var_A8
  loc_675200: FFree1Var var_C0 = ""
  loc_675203: ILdRf var_90
  loc_675206: LitI4 1
  loc_67520B: AddI4
  loc_67520C: FStR4 var_90
  loc_67520F: LitVarI2 var_C0, 9
  loc_675214: ILdRf var_90
  loc_675217: ILdRf var_8C
  loc_67521A: ImpAdCallI2 Mid$(, , )
  loc_67521F: FStStrNoPop var_A8
  loc_675222: CR8Str
  loc_675224: ImpAdLdFPR4 MemVar_74C2DC
  loc_675227: DivR8
  loc_675228: FMemStFPR8 var_138(4)
  loc_67522D: FFree1Str var_A8
  loc_675230: FFree1Var var_C0 = ""
  loc_675233: ILdRf var_90
  loc_675236: LitI4 9
  loc_67523B: AddI4
  loc_67523C: FStR4 var_90
  loc_67523F: LitVarI2 var_C0, 9
  loc_675244: ILdRf var_90
  loc_675247: ILdRf var_8C
  loc_67524A: ImpAdCallI2 Mid$(, , )
  loc_67524F: FStStrNoPop var_A8
  loc_675252: CR8Str
  loc_675254: LitI2_Byte &H64
  loc_675256: CR8I2
  loc_675257: DivR8
  loc_675258: FMemStFPR8 var_138(12)
  loc_67525D: FFree1Str var_A8
  loc_675260: FFree1Var var_C0 = ""
  loc_675263: ILdRf var_90
  loc_675266: LitI4 9
  loc_67526B: AddI4
  loc_67526C: FStR4 var_90
  loc_67526F: LitVarI2 var_C0, 9
  loc_675274: ILdRf var_90
  loc_675277: ILdRf var_8C
  loc_67527A: ImpAdCallI2 Mid$(, , )
  loc_67527F: FStStrNoPop var_A8
  loc_675282: CR8Str
  loc_675284: ImpAdLdFPR4 MemVar_74C2E0
  loc_675287: DivR8
  loc_675288: FMemStFPR8 var_138(20)
  loc_67528D: FFree1Str var_A8
  loc_675290: FFree1Var var_C0 = ""
  loc_675293: ILdRf var_90
  loc_675296: LitI4 9
  loc_67529B: AddI4
  loc_67529C: FStR4 var_90
  loc_67529F: ImpAdLdI2 MemVar_74BF72
  loc_6752A2: BranchF loc_6752B5
  loc_6752A5: FMemLdFPR8 var_138(20)
  loc_6752AA: FMemLdFPR8 var_138(4)
  loc_6752AF: DivR8
  loc_6752B0: FMemStFPR8 var_138(12)
  loc_6752B5: LitVarI2 var_C0, 10
  loc_6752BA: ILdRf var_90
  loc_6752BD: ILdRf var_8C
  loc_6752C0: ImpAdCallI2 Mid$(, , )
  loc_6752C5: FStStrNoPop var_A8
  loc_6752C8: FMemStStrCopy
  loc_6752CD: FFree1Str var_A8
  loc_6752D0: FFree1Var var_C0 = ""
  loc_6752D3: ILdRf var_90
  loc_6752D6: LitI4 &HA
  loc_6752DB: AddI4
  loc_6752DC: FStR4 var_90
  loc_6752DF: LitVarI2 var_C0, 8
  loc_6752E4: ILdRf var_90
  loc_6752E7: ILdRf var_8C
  loc_6752EA: ImpAdCallI2 Mid$(, , )
  loc_6752EF: FStStrNoPop var_A8
  loc_6752F2: FMemStStrCopy
  loc_6752F7: FFree1Str var_A8
  loc_6752FA: FFree1Var var_C0 = ""
  loc_6752FD: ILdRf var_90
  loc_675300: LitI4 8
  loc_675305: AddI4
  loc_675306: FStR4 var_90
  loc_675309: LitVarI2 var_C0, 2
  loc_67530E: ILdRf var_90
  loc_675311: ILdRf var_8C
  loc_675314: ImpAdCallI2 Mid$(, , )
  loc_675319: FStStrNoPop var_A8
  loc_67531C: CI2Str
  loc_67531E: FMemStI2 var_138(36)
  loc_675323: FFree1Str var_A8
  loc_675326: FFree1Var var_C0 = ""
  loc_675329: ILdRf var_90
  loc_67532C: LitI4 2
  loc_675331: AddI4
  loc_675332: FStR4 var_90
  loc_675335: LitVarI2 var_C0, 13
  loc_67533A: ILdRf var_90
  loc_67533D: ILdRf var_8C
  loc_675340: ImpAdCallI2 Mid$(, , )
  loc_675345: FStStrNoPop var_A8
  loc_675348: FMemStStrCopy
  loc_67534D: FFree1Str var_A8
  loc_675350: FFree1Var var_C0 = ""
  loc_675353: ILdRf var_90
  loc_675356: LitI4 &HD
  loc_67535B: AddI4
  loc_67535C: FStR4 var_90
  loc_67535F: LitVarI2 var_C0, 15
  loc_675364: ILdRf var_90
  loc_675367: ILdRf var_8C
  loc_67536A: ImpAdCallI2 Mid$(, , )
  loc_67536F: FStStrNoPop var_A8
  loc_675372: FMemLdRf unk_41548D
  loc_675377: StFixedStr
  loc_67537A: FFree1Str var_A8
  loc_67537D: FFree1Var var_C0 = ""
  loc_675380: ILdRf var_90
  loc_675383: LitI4 &HF
  loc_675388: AddI4
  loc_675389: FStR4 var_90
  loc_67538C: LitI4 0
  loc_675391: FStR4 var_138
  loc_675394: AryUnlock
  loc_675397: ILdRf var_94
  loc_67539A: LitI4 1
  loc_67539F: AddI4
  loc_6753A0: FStR4 var_94
  loc_6753A3: Branch loc_67519B
  loc_6753A6: ILdRf var_A0
  loc_6753A9: ImpAdCallFPR4 push Val()
  loc_6753AE: CR8R8
  loc_6753AF: LitI2_Byte 0
  loc_6753B1: CR8I2
  loc_6753B2: NeR8
  loc_6753B3: BranchT loc_67502B
  loc_6753B6: from_stack_1v = Proc_128_10_603FFC()
  loc_6753BB: LitI2_Byte &HFF
  loc_6753BD: FStI2 var_86
  loc_6753C0: ExitProcCbHresult
  loc_6753C6: On Error GoTo 0
  loc_6753C9: FLdRfVar var_13C
  loc_6753CC: ImpAdCallI2 Err 'rtcErrObj
  loc_6753D1: FStAdFunc var_AC
  loc_6753D4: FLdPr var_AC
  loc_6753D7:  = Err.Number
  loc_6753DC: FLdRfVar var_148
  loc_6753DF: ImpAdCallI2 Err 'rtcErrObj
  loc_6753E4: FStAdFunc var_144
  loc_6753E7: FLdPr var_144
  loc_6753EA:  = Err.Description
  loc_6753EF: LitVar_Missing var_130
  loc_6753F2: LitVar_Missing var_110
  loc_6753F5: LitVar_Missing var_F0
  loc_6753F8: LitI4 &H10
  loc_6753FD: LitStr "Hubo un error en la lectura del reporte. Imposible visualizarlo, err["
  loc_675400: ILdRf var_13C
  loc_675403: CStrI4
  loc_675405: FStStrNoPop var_A8
  loc_675408: ConcatStr
  loc_675409: FStStrNoPop var_140
  loc_67540C: LitStr "] ["
  loc_67540F: ConcatStr
  loc_675410: FStStrNoPop var_14C
  loc_675413: ILdRf var_148
  loc_675416: ConcatStr
  loc_675417: FStStrNoPop var_150
  loc_67541A: LitStr "]."
  loc_67541D: ConcatStr
  loc_67541E: CVarStr var_C0
  loc_675421: ImpAdCallFPR4 MsgBox(, , , , )
  loc_675426: FFreeStr var_A8 = "": var_140 = "": var_14C = "": var_148 = ""
  loc_675433: FFreeAd var_AC = ""
  loc_67543A: FFreeVar var_C0 = "": var_F0 = "": var_110 = ""
  loc_675445: LitI2_Byte 0
  loc_675447: FStI2 var_86
  loc_67544A: ExitProcCbHresult
End Function

Private Function Proc_128_9_63C67C(arg_C, arg_10) '63C67C
  'Data Table: 4155C4
  loc_63C44C: FMemLdRf  = Now
  loc_63C451: LdFixedStr
  loc_63C454: FStStrNoPop var_98
  loc_63C457: FMemLdRf unk_4155D5
  loc_63C45C: LdFixedStr
  loc_63C45F: FStStrNoPop var_9C
  loc_63C462: LtStr
  loc_63C464: FFreeStr var_98 = ""
  loc_63C46B: BranchF loc_63C476
  loc_63C46E: LitI2_Byte &HFF
  loc_63C470: FStI2 var_86
  loc_63C473: Branch loc_63C673
  loc_63C476: FMemLdRf  = Now
  loc_63C47B: LdFixedStr
  loc_63C47E: FStStrNoPop var_98
  loc_63C481: FMemLdRf unk_4155D5
  loc_63C486: LdFixedStr
  loc_63C489: FStStrNoPop var_9C
  loc_63C48C: GtStr
  loc_63C48E: FFreeStr var_98 = ""
  loc_63C495: BranchF loc_63C4A0
  loc_63C498: LitI2_Byte 1
  loc_63C49A: FStI2 var_86
  loc_63C49D: Branch loc_63C673
  loc_63C4A0: LitStr "0"
  loc_63C4A3: LitI4 1
  loc_63C4A8: FMemLdR4 arg_C(40)
  loc_63C4AD: LitStr "-"
  loc_63C4B0: LitI4 0
  loc_63C4B5: FnInStr4
  loc_63C4B7: CStrI4
  loc_63C4B9: FStStrNoPop var_98
  loc_63C4BC: ConcatStr
  loc_63C4BD: FStStrNoPop var_9C
  loc_63C4C0: CI2Str
  loc_63C4C2: LitI2_Byte 0
  loc_63C4C4: GtI2
  loc_63C4C5: FStI2 var_88
  loc_63C4C8: FFreeStr var_98 = ""
  loc_63C4CF: LitStr "0"
  loc_63C4D2: LitI4 1
  loc_63C4D7: FMemLdR4 arg_10(40)
  loc_63C4DC: LitStr "-"
  loc_63C4DF: LitI4 0
  loc_63C4E4: FnInStr4
  loc_63C4E6: CStrI4
  loc_63C4E8: FStStrNoPop var_98
  loc_63C4EB: ConcatStr
  loc_63C4EC: FStStrNoPop var_9C
  loc_63C4EF: CI2Str
  loc_63C4F1: LitI2_Byte 0
  loc_63C4F3: GtI2
  loc_63C4F4: FStI2 var_8A
  loc_63C4F7: FFreeStr var_98 = ""
  loc_63C4FE: FLdI2 var_88
  loc_63C501: FLdI2 var_8A
  loc_63C504: NotI4
  loc_63C505: AndI4
  loc_63C506: BranchF loc_63C511
  loc_63C509: LitI2_Byte 1
  loc_63C50B: FStI2 var_86
  loc_63C50E: Branch loc_63C673
  loc_63C511: FLdI2 var_88
  loc_63C514: NotI4
  loc_63C515: FLdI2 var_8A
  loc_63C518: AndI4
  loc_63C519: BranchF loc_63C524
  loc_63C51C: LitI2_Byte &HFF
  loc_63C51E: FStI2 var_86
  loc_63C521: Branch loc_63C673
  loc_63C524: FLdI2 var_88
  loc_63C527: NotI4
  loc_63C528: FLdI2 var_8A
  loc_63C52B: NotI4
  loc_63C52C: AndI4
  loc_63C52D: BranchF loc_63C5A1
  loc_63C530: FMemLdRf  = Now
  loc_63C535: CVarRef
  loc_63C53A: FLdRfVar var_BC
  loc_63C53D: ImpAdCallFPR4  = Trim()
  loc_63C542: FLdRfVar var_BC
  loc_63C545: FnCLngVar
  loc_63C547: CI2I4
  loc_63C548: FStI2 var_90
  loc_63C54B: FFreeVar var_BC = ""
  loc_63C552: FMemLdRf unk_4155D5
  loc_63C557: CVarRef
  loc_63C55C: FLdRfVar var_BC
  loc_63C55F: ImpAdCallFPR4  = Trim()
  loc_63C564: FLdRfVar var_BC
  loc_63C567: FnCLngVar
  loc_63C569: FStR4 var_94
  loc_63C56C: FFreeVar var_BC = ""
  loc_63C573: FLdI2 var_90
  loc_63C576: CI4UI1
  loc_63C577: ILdRf var_94
  loc_63C57A: LtI4
  loc_63C57B: BranchF loc_63C586
  loc_63C57E: LitI2_Byte &HFF
  loc_63C580: FStI2 var_86
  loc_63C583: Branch loc_63C59E
  loc_63C586: FLdI2 var_90
  loc_63C589: CI4UI1
  loc_63C58A: ILdRf var_94
  loc_63C58D: GtI4
  loc_63C58E: BranchF loc_63C599
  loc_63C591: LitI2_Byte 1
  loc_63C593: FStI2 var_86
  loc_63C596: Branch loc_63C59E
  loc_63C599: LitI2_Byte 0
  loc_63C59B: FStI2 var_86
  loc_63C59E: Branch loc_63C673
  loc_63C5A1: LitVarI2 var_BC, 4
  loc_63C5A6: LitI4 1
  loc_63C5AB: FMemLdR4 arg_C(40)
  loc_63C5B0: ImpAdCallI2 Mid$(, , )
  loc_63C5B5: FStStrNoPop var_98
  loc_63C5B8: CI2Str
  loc_63C5BA: FStI2 var_8C
  loc_63C5BD: FFree1Str var_98
  loc_63C5C0: FFree1Var var_BC = ""
  loc_63C5C3: LitVarI2 var_BC, 4
  loc_63C5C8: LitI4 1
  loc_63C5CD: FMemLdR4 arg_10(40)
  loc_63C5D2: ImpAdCallI2 Mid$(, , )
  loc_63C5D7: FStStrNoPop var_98
  loc_63C5DA: CI2Str
  loc_63C5DC: FStI2 var_8E
  loc_63C5DF: FFree1Str var_98
  loc_63C5E2: FFree1Var var_BC = ""
  loc_63C5E5: FLdI2 var_8C
  loc_63C5E8: FLdI2 var_8E
  loc_63C5EB: LtI2
  loc_63C5EC: BranchF loc_63C5F7
  loc_63C5EF: LitI2_Byte &HFF
  loc_63C5F1: FStI2 var_86
  loc_63C5F4: Branch loc_63C673
  loc_63C5F7: FLdI2 var_8C
  loc_63C5FA: FLdI2 var_8E
  loc_63C5FD: GtI2
  loc_63C5FE: BranchF loc_63C609
  loc_63C601: LitI2_Byte 1
  loc_63C603: FStI2 var_86
  loc_63C606: Branch loc_63C673
  loc_63C609: LitVar_Missing var_BC
  loc_63C60C: LitI4 6
  loc_63C611: FMemLdR4 arg_C(40)
  loc_63C616: ImpAdCallI2 Mid$(, , )
  loc_63C61B: FStStrNoPop var_98
  loc_63C61E: CI4Str
  loc_63C61F: CI2I4
  loc_63C620: FStI2 var_90
  loc_63C623: FFree1Str var_98
  loc_63C626: FFree1Var var_BC = ""
  loc_63C629: LitVar_Missing var_BC
  loc_63C62C: LitI4 6
  loc_63C631: FMemLdR4 arg_10(40)
  loc_63C636: ImpAdCallI2 Mid$(, , )
  loc_63C63B: FStStrNoPop var_98
  loc_63C63E: CI4Str
  loc_63C63F: FStR4 var_94
  loc_63C642: FFree1Str var_98
  loc_63C645: FFree1Var var_BC = ""
  loc_63C648: FLdI2 var_90
  loc_63C64B: CI4UI1
  loc_63C64C: ILdRf var_94
  loc_63C64F: LtI4
  loc_63C650: BranchF loc_63C65B
  loc_63C653: LitI2_Byte &HFF
  loc_63C655: FStI2 var_86
  loc_63C658: Branch loc_63C673
  loc_63C65B: FLdI2 var_90
  loc_63C65E: CI4UI1
  loc_63C65F: ILdRf var_94
  loc_63C662: GtI4
  loc_63C663: BranchF loc_63C66E
  loc_63C666: LitI2_Byte 1
  loc_63C668: FStI2 var_86
  loc_63C66B: Branch loc_63C673
  loc_63C66E: LitI2_Byte 0
  loc_63C670: FStI2 var_86
  loc_63C673: ExitProcCbHresult
End Function

Private Function Proc_128_10_603FFC() '603FFC
  'Data Table: 4155C4
  loc_603F34: LitI2_Byte 1
  loc_603F36: FLdRfVar var_86
  loc_603F39: FLdPr Me
  loc_603F3C: MemLdStr global_56
  loc_603F3F: LitI2_Byte 1
  loc_603F41: FnUBound
  loc_603F43: LitI4 1
  loc_603F48: SubI4
  loc_603F49: CI2I4
  loc_603F4A: ForI2 var_D8
  loc_603F50: FLdPr Me
  loc_603F53: MemLdStr global_56
  loc_603F56: LitI2_Byte 1
  loc_603F58: FnUBound
  loc_603F5A: LitI4 1
  loc_603F5F: SubI4
  loc_603F60: CI2I4
  loc_603F61: FLdRfVar var_88
  loc_603F64: FLdI2 var_86
  loc_603F67: LitI2_Byte &HFF
  loc_603F69: ForStepI2 var_DC
  loc_603F6F: LitI2_Byte 0
  loc_603F71: FLdRfVar var_E6
  loc_603F74: FLdI2 var_88
  loc_603F77: LitI2_Byte 1
  loc_603F79: AddI2
  loc_603F7A: CI4UI1
  loc_603F7B: FLdPr Me
  loc_603F7E: MemLdStr global_56
  loc_603F81: AryLock
  loc_603F84: Ary1LdRf
  loc_603F85: FLdI2 var_88
  loc_603F88: CI4UI1
  loc_603F89: FLdPr Me
  loc_603F8C: MemLdStr global_56
  loc_603F8F: AryLock
  loc_603F92: Ary1LdRf
  loc_603F93: from_stack_3v = Proc_128_9_63C67C(from_stack_1v, from_stack_2v)
  loc_603F98: AryUnlock
  loc_603F9B: AryUnlock
  loc_603F9E: FLdI2 var_E6
  loc_603FA1: LtI2
  loc_603FA2: BranchF loc_603FE9
  loc_603FA5: FLdI2 var_88
  loc_603FA8: LitI2_Byte 1
  loc_603FAA: AddI2
  loc_603FAB: CI4UI1
  loc_603FAC: FLdPr Me
  loc_603FAF: MemLdStr global_56
  loc_603FB2: Ary1LdRf
  loc_603FB3: FLdRfVar var_D4
  loc_603FB6: AssignRecord
  loc_603FBA: FLdI2 var_88
  loc_603FBD: CI4UI1
  loc_603FBE: FLdPr Me
  loc_603FC1: MemLdStr global_56
  loc_603FC4: Ary1LdRf
  loc_603FC5: FLdI2 var_88
  loc_603FC8: LitI2_Byte 1
  loc_603FCA: AddI2
  loc_603FCB: CI4UI1
  loc_603FCC: FLdPr Me
  loc_603FCF: MemLdStr global_56
  loc_603FD2: Ary1LdRf
  loc_603FD3: AssignRecord
  loc_603FD7: FLdRfVar var_D4
  loc_603FDA: FLdI2 var_88
  loc_603FDD: CI4UI1
  loc_603FDE: FLdPr Me
  loc_603FE1: MemLdStr global_56
  loc_603FE4: Ary1LdRf
  loc_603FE5: AssignRecord
  loc_603FE9: FLdRfVar var_88
  loc_603FEC: NextStepI2 var_DC, loc_603F6F
  loc_603FF1: FLdRfVar var_86
  loc_603FF4: NextI2 var_D8, loc_603F50
  loc_603FF9: ExitProcHresult
  loc_603FFA: ExitProcCy
End Function

Private Function Proc_128_11_6DF210() '6DF210
  'Data Table: 4155C4
  loc_6DE6A0: LitI4 1
  loc_6DE6A5: LitI4 1
  loc_6DE6AA: FLdPr Me
  loc_6DE6AD: MemLdRfVar from_stack_1.global_60
  loc_6DE6B0: Redim
  loc_6DE6BA: LitStr "~~"
  loc_6DE6BD: LitI4 1
  loc_6DE6C2: FLdPr Me
  loc_6DE6C5: MemLdStr global_60
  loc_6DE6C8: Ary1LdPr
  loc_6DE6C9: MemLdRfVar from_stack_1.global_24
  loc_6DE6CC: StFixedStr
  loc_6DE6CF: LitI2_Byte 1
  loc_6DE6D1: FLdRfVar var_86
  loc_6DE6D4: FLdPr Me
  loc_6DE6D7: MemLdStr global_56
  loc_6DE6DA: LitI2_Byte 1
  loc_6DE6DC: FnUBound
  loc_6DE6DE: CI2I4
  loc_6DE6DF: ForI2 var_9E
  loc_6DE6E5: LitI4 1
  loc_6DE6EA: FLdPr Me
  loc_6DE6ED: MemLdStr global_60
  loc_6DE6F0: Ary1LdPr
  loc_6DE6F1: MemLdRfVar from_stack_1.global_24
  loc_6DE6F4: LdFixedStr
  loc_6DE6F7: PopTmpLdAdStr
  loc_6DE6FB: CVarRef
  loc_6DE700: FLdRfVar var_C4
  loc_6DE703: ImpAdCallFPR4  = Trim()
  loc_6DE708: ILdRf var_A4
  loc_6DE70B: LitI4 1
  loc_6DE710: FLdPr Me
  loc_6DE713: MemLdStr global_60
  loc_6DE716: Ary1LdPr
  loc_6DE717: MemLdRfVar from_stack_1.global_24
  loc_6DE71A: StFixedStr
  loc_6DE71D: FLdRfVar var_C4
  loc_6DE720: LitVarStr var_D4, "~~"
  loc_6DE725: HardType
  loc_6DE726: EqVarBool
  loc_6DE728: FFree1Str var_A4
  loc_6DE72B: FFree1Var var_C4 = ""
  loc_6DE72E: BranchF loc_6DE7D3
  loc_6DE731: FLdI2 var_86
  loc_6DE734: CI4UI1
  loc_6DE735: FLdPr Me
  loc_6DE738: MemLdStr global_56
  loc_6DE73B: Ary1LdPr
  loc_6DE73C: MemLdFPR8 global_20
  loc_6DE73F: LitI4 1
  loc_6DE744: FLdPr Me
  loc_6DE747: MemLdStr global_60
  loc_6DE74A: Ary1LdPr
  loc_6DE74B: MemStFPR8 global_8
  loc_6DE74E: FLdI2 var_86
  loc_6DE751: CI4UI1
  loc_6DE752: FLdPr Me
  loc_6DE755: MemLdStr global_56
  loc_6DE758: Ary1LdPr
  loc_6DE759: MemLdFPR8 global_12
  loc_6DE75C: LitI4 1
  loc_6DE761: FLdPr Me
  loc_6DE764: MemLdStr global_60
  loc_6DE767: Ary1LdPr
  loc_6DE768: MemStFPR8 global_0
  loc_6DE76B: FLdI2 var_86
  loc_6DE76E: CI4UI1
  loc_6DE76F: FLdPr Me
  loc_6DE772: MemLdStr global_56
  loc_6DE775: Ary1LdPr
  loc_6DE776: MemLdRfVar from_stack_1.global_44
  loc_6DE779: LdFixedStr
  loc_6DE77C: FStStrNoPop var_A4
  loc_6DE77F: LitI4 1
  loc_6DE784: FLdPr Me
  loc_6DE787: MemLdStr global_60
  loc_6DE78A: Ary1LdPr
  loc_6DE78B: MemLdRfVar from_stack_1.global_24
  loc_6DE78E: StFixedStr
  loc_6DE791: FFree1Str var_A4
  loc_6DE794: FLdI2 var_86
  loc_6DE797: CI4UI1
  loc_6DE798: FLdPr Me
  loc_6DE79B: MemLdStr global_56
  loc_6DE79E: Ary1LdPr
  loc_6DE79F: MemLdStr global_40
  loc_6DE7A2: LitI4 1
  loc_6DE7A7: FLdPr Me
  loc_6DE7AA: MemLdStr global_60
  loc_6DE7AD: Ary1LdPr
  loc_6DE7AE: MemStStrCopy
  loc_6DE7B2: FLdI2 var_86
  loc_6DE7B5: CI4UI1
  loc_6DE7B6: FLdPr Me
  loc_6DE7B9: MemLdStr global_56
  loc_6DE7BC: Ary1LdPr
  loc_6DE7BD: MemLdStr global_40
  loc_6DE7C0: LitI4 1
  loc_6DE7C5: FLdPr Me
  loc_6DE7C8: MemLdStr global_60
  loc_6DE7CB: Ary1LdPr
  loc_6DE7CC: MemStStrCopy
  loc_6DE7D0: Branch loc_6DE9B8
  loc_6DE7D3: LitI2_Byte 1
  loc_6DE7D5: FLdRfVar var_88
  loc_6DE7D8: FLdPr Me
  loc_6DE7DB: MemLdStr global_60
  loc_6DE7DE: LitI2_Byte 1
  loc_6DE7E0: FnUBound
  loc_6DE7E2: CI2I4
  loc_6DE7E3: ForI2 var_E8
  loc_6DE7E9: FLdI2 var_88
  loc_6DE7EC: CI4UI1
  loc_6DE7ED: FLdPr Me
  loc_6DE7F0: MemLdStr global_60
  loc_6DE7F3: Ary1LdPr
  loc_6DE7F4: MemLdRfVar from_stack_1.global_24
  loc_6DE7F7: LdFixedStr
  loc_6DE7FA: FStStrNoPop var_A4
  loc_6DE7FD: FLdI2 var_86
  loc_6DE800: CI4UI1
  loc_6DE801: FLdPr Me
  loc_6DE804: MemLdStr global_56
  loc_6DE807: Ary1LdPr
  loc_6DE808: MemLdRfVar from_stack_1.global_44
  loc_6DE80B: LdFixedStr
  loc_6DE80E: FStStrNoPop var_EC
  loc_6DE811: EqStr
  loc_6DE813: FLdRfVar var_F6
  loc_6DE816: FLdI2 var_86
  loc_6DE819: CI4UI1
  loc_6DE81A: FLdPr Me
  loc_6DE81D: MemLdStr global_56
  loc_6DE820: AryLock
  loc_6DE823: Ary1LdRf
  loc_6DE824: FLdI2 var_88
  loc_6DE827: CI4UI1
  loc_6DE828: FLdPr Me
  loc_6DE82B: MemLdStr global_60
  loc_6DE82E: AryLock
  loc_6DE831: Ary1LdRf
  loc_6DE832: from_stack_3v = Proc_128_13_60FF18(from_stack_1v, from_stack_2v)
  loc_6DE837: AryUnlock
  loc_6DE83A: AryUnlock
  loc_6DE83D: FLdI2 var_F6
  loc_6DE840: AndI4
  loc_6DE841: FFreeStr var_A4 = ""
  loc_6DE848: BranchF loc_6DE8C1
  loc_6DE84B: FLdI2 var_88
  loc_6DE84E: CI4UI1
  loc_6DE84F: FLdPr Me
  loc_6DE852: MemLdStr global_60
  loc_6DE855: Ary1LdPr
  loc_6DE856: MemLdFPR8 global_8
  loc_6DE859: FLdI2 var_86
  loc_6DE85C: CI4UI1
  loc_6DE85D: FLdPr Me
  loc_6DE860: MemLdStr global_56
  loc_6DE863: Ary1LdPr
  loc_6DE864: MemLdFPR8 global_20
  loc_6DE867: AddR8
  loc_6DE868: FLdI2 var_88
  loc_6DE86B: CI4UI1
  loc_6DE86C: FLdPr Me
  loc_6DE86F: MemLdStr global_60
  loc_6DE872: Ary1LdPr
  loc_6DE873: MemStFPR8 global_8
  loc_6DE876: FLdI2 var_88
  loc_6DE879: CI4UI1
  loc_6DE87A: FLdPr Me
  loc_6DE87D: MemLdStr global_60
  loc_6DE880: Ary1LdPr
  loc_6DE881: MemLdFPR8 global_0
  loc_6DE884: FLdI2 var_86
  loc_6DE887: CI4UI1
  loc_6DE888: FLdPr Me
  loc_6DE88B: MemLdStr global_56
  loc_6DE88E: Ary1LdPr
  loc_6DE88F: MemLdFPR8 global_12
  loc_6DE892: AddR8
  loc_6DE893: FLdI2 var_88
  loc_6DE896: CI4UI1
  loc_6DE897: FLdPr Me
  loc_6DE89A: MemLdStr global_60
  loc_6DE89D: Ary1LdPr
  loc_6DE89E: MemStFPR8 global_0
  loc_6DE8A1: FLdI2 var_86
  loc_6DE8A4: CI4UI1
  loc_6DE8A5: FLdPr Me
  loc_6DE8A8: MemLdStr global_56
  loc_6DE8AB: Ary1LdPr
  loc_6DE8AC: MemLdStr global_40
  loc_6DE8AF: FLdI2 var_88
  loc_6DE8B2: CI4UI1
  loc_6DE8B3: FLdPr Me
  loc_6DE8B6: MemLdStr global_60
  loc_6DE8B9: Ary1LdPr
  loc_6DE8BA: MemStStrCopy
  loc_6DE8BE: Branch loc_6DE8C9
  loc_6DE8C1: FLdRfVar var_88
  loc_6DE8C4: NextI2 var_E8, loc_6DE7E9
  loc_6DE8C9: FLdI2 var_88
  loc_6DE8CC: CI4UI1
  loc_6DE8CD: FLdPr Me
  loc_6DE8D0: MemLdStr global_60
  loc_6DE8D3: LitI2_Byte 1
  loc_6DE8D5: FnUBound
  loc_6DE8D7: GtI4
  loc_6DE8D8: BranchF loc_6DE9B8
  loc_6DE8DB: LitI4 1
  loc_6DE8E0: FLdPr Me
  loc_6DE8E3: MemLdStr global_60
  loc_6DE8E6: LitI2_Byte 1
  loc_6DE8E8: FnUBound
  loc_6DE8EA: LitI4 1
  loc_6DE8EF: AddI4
  loc_6DE8F0: FLdPr Me
  loc_6DE8F3: MemLdRfVar from_stack_1.global_60
  loc_6DE8F6: RedimPreserve
  loc_6DE900: FLdI2 var_86
  loc_6DE903: CI4UI1
  loc_6DE904: FLdPr Me
  loc_6DE907: MemLdStr global_56
  loc_6DE90A: Ary1LdPr
  loc_6DE90B: MemLdFPR8 global_20
  loc_6DE90E: FLdPr Me
  loc_6DE911: MemLdStr global_60
  loc_6DE914: LitI2_Byte 1
  loc_6DE916: FnUBound
  loc_6DE918: FLdPr Me
  loc_6DE91B: MemLdStr global_60
  loc_6DE91E: Ary1LdPr
  loc_6DE91F: MemStFPR8 global_8
  loc_6DE922: FLdI2 var_86
  loc_6DE925: CI4UI1
  loc_6DE926: FLdPr Me
  loc_6DE929: MemLdStr global_56
  loc_6DE92C: Ary1LdPr
  loc_6DE92D: MemLdFPR8 global_12
  loc_6DE930: FLdPr Me
  loc_6DE933: MemLdStr global_60
  loc_6DE936: LitI2_Byte 1
  loc_6DE938: FnUBound
  loc_6DE93A: FLdPr Me
  loc_6DE93D: MemLdStr global_60
  loc_6DE940: Ary1LdPr
  loc_6DE941: MemStFPR8 global_0
  loc_6DE944: FLdI2 var_86
  loc_6DE947: CI4UI1
  loc_6DE948: FLdPr Me
  loc_6DE94B: MemLdStr global_56
  loc_6DE94E: Ary1LdPr
  loc_6DE94F: MemLdRfVar from_stack_1.global_44
  loc_6DE952: LdFixedStr
  loc_6DE955: FStStrNoPop var_A4
  loc_6DE958: FLdPr Me
  loc_6DE95B: MemLdStr global_60
  loc_6DE95E: LitI2_Byte 1
  loc_6DE960: FnUBound
  loc_6DE962: FLdPr Me
  loc_6DE965: MemLdStr global_60
  loc_6DE968: Ary1LdPr
  loc_6DE969: MemLdRfVar from_stack_1.global_24
  loc_6DE96C: StFixedStr
  loc_6DE96F: FFree1Str var_A4
  loc_6DE972: FLdI2 var_86
  loc_6DE975: CI4UI1
  loc_6DE976: FLdPr Me
  loc_6DE979: MemLdStr global_56
  loc_6DE97C: Ary1LdPr
  loc_6DE97D: MemLdStr global_40
  loc_6DE980: FLdPr Me
  loc_6DE983: MemLdStr global_60
  loc_6DE986: LitI2_Byte 1
  loc_6DE988: FnUBound
  loc_6DE98A: FLdPr Me
  loc_6DE98D: MemLdStr global_60
  loc_6DE990: Ary1LdPr
  loc_6DE991: MemStStrCopy
  loc_6DE995: FLdI2 var_86
  loc_6DE998: CI4UI1
  loc_6DE999: FLdPr Me
  loc_6DE99C: MemLdStr global_56
  loc_6DE99F: Ary1LdPr
  loc_6DE9A0: MemLdStr global_40
  loc_6DE9A3: FLdPr Me
  loc_6DE9A6: MemLdStr global_60
  loc_6DE9A9: LitI2_Byte 1
  loc_6DE9AB: FnUBound
  loc_6DE9AD: FLdPr Me
  loc_6DE9B0: MemLdStr global_60
  loc_6DE9B3: Ary1LdPr
  loc_6DE9B4: MemStStrCopy
  loc_6DE9B8: FLdRfVar var_86
  loc_6DE9BB: NextI2 var_9E, loc_6DE6E5
  loc_6DE9C0: LitStr vbNullString
  loc_6DE9C3: FLdPrThis
  loc_6DE9C4: VCallAd Control_ID_txtReporte
  loc_6DE9C7: FStAdFunc var_FC
  loc_6DE9CA: FLdPr var_FC
  loc_6DE9CD: Me.Text = from_stack_1
  loc_6DE9D2: FFree1Ad var_FC
  loc_6DE9D5: LitDate 0
  loc_6DE9DE: FStFPR8 var_90
  loc_6DE9E1: LitDate 0
  loc_6DE9EA: FStFPR8 var_98
  loc_6DE9ED: LitI2_Byte 0
  loc_6DE9EF: FStI2 var_9A
  loc_6DE9F2: LitI2_Byte 1
  loc_6DE9F4: FLdRfVar var_86
  loc_6DE9F7: FLdPr Me
  loc_6DE9FA: MemLdStr global_60
  loc_6DE9FD: LitI2_Byte 1
  loc_6DE9FF: FnUBound
  loc_6DEA01: CI2I4
  loc_6DEA02: ForI2 var_100
  loc_6DEA08: FLdI2 var_9A
  loc_6DEA0B: NotI4
  loc_6DEA0C: BranchF loc_6DECD4
  loc_6DEA0F: LitI4 &HA
  loc_6DEA14: ImpAdLdI4 MemVar_74BEBC
  loc_6DEA17: ImpAdCallI2 Left$(, )
  loc_6DEA1C: FStStr var_438
  loc_6DEA1F: LitI4 &HA
  loc_6DEA24: ImpAdLdI4 MemVar_74BECC
  loc_6DEA27: ImpAdCallI2 Left$(, )
  loc_6DEA2C: FStStr var_43C
  loc_6DEA2F: LitVarStr var_2B4, "#0.00"
  loc_6DEA34: FStVarCopyObj var_2C4
  loc_6DEA37: FLdRfVar var_2C4
  loc_6DEA3A: LitVarStr var_294, "#0.000"
  loc_6DEA3F: FStVarCopyObj var_2A4
  loc_6DEA42: FLdRfVar var_2A4
  loc_6DEA45: ImpAdLdRf MemVar_74BF72
  loc_6DEA48: CVarRef
  loc_6DEA4D: FLdRfVar var_2D4
  loc_6DEA50: ImpAdCallFPR4  = IIf(, , )
  loc_6DEA55: LitI4 1
  loc_6DEA5A: LitI4 1
  loc_6DEA5F: FLdRfVar var_2D4
  loc_6DEA62: FLdI2 var_86
  loc_6DEA65: CI4UI1
  loc_6DEA66: FLdPr Me
  loc_6DEA69: MemLdStr global_60
  loc_6DEA6C: AryLock
  loc_6DEA6F: Ary1LdPr
  loc_6DEA70: MemLdRfVar from_stack_1.global_0
  loc_6DEA73: CVarRef
  loc_6DEA78: ImpAdCallI2 Format$(, )
  loc_6DEA7D: FStStr var_2E8
  loc_6DEA80: AryUnlock
  loc_6DEA83: LitI4 1
  loc_6DEA88: LitI4 1
  loc_6DEA8D: ImpAdLdRf MemVar_74C364
  loc_6DEA90: CVarRef
  loc_6DEA95: FLdI2 var_86
  loc_6DEA98: CI4UI1
  loc_6DEA99: FLdPr Me
  loc_6DEA9C: MemLdStr global_60
  loc_6DEA9F: AryLock
  loc_6DEAA2: Ary1LdPr
  loc_6DEAA3: MemLdRfVar from_stack_1.global_8
  loc_6DEAA6: CVarRef
  loc_6DEAAB: ImpAdCallI2 Format$(, )
  loc_6DEAB0: FStStr var_35C
  loc_6DEAB3: AryUnlock
  loc_6DEAB6: FLdRfVar var_A4
  loc_6DEAB9: FLdPrThis
  loc_6DEABA: VCallAd Control_ID_txtReporte
  loc_6DEABD: FStAdFunc var_FC
  loc_6DEAC0: FLdPr var_FC
  loc_6DEAC3:  = Me.Text
  loc_6DEAC8: ILdRf var_A4
  loc_6DEACB: LitStr "Total "
  loc_6DEACE: ConcatStr
  loc_6DEACF: FStStrNoPop var_EC
  loc_6DEAD2: FLdI2 var_86
  loc_6DEAD5: CI4UI1
  loc_6DEAD6: FLdPr Me
  loc_6DEAD9: MemLdStr global_60
  loc_6DEADC: Ary1LdPr
  loc_6DEADD: MemLdRfVar from_stack_1.global_24
  loc_6DEAE0: LdFixedStr
  loc_6DEAE3: FStStrNoPop var_104
  loc_6DEAE6: ConcatStr
  loc_6DEAE7: CVarStr var_E4
  loc_6DEAEA: LitI4 &H1A
  loc_6DEAEF: FLdRfVar var_C4
  loc_6DEAF2: ImpAdCallFPR4  = Space()
  loc_6DEAF7: FLdRfVar var_C4
  loc_6DEAFA: ConcatVar var_114
  loc_6DEAFE: LitI4 1
  loc_6DEB03: LitI4 1
  loc_6DEB08: LitVarStr var_B4, "!@@@@@@@@@@"
  loc_6DEB0D: FStVarCopyObj var_134
  loc_6DEB10: FLdRfVar var_134
  loc_6DEB13: FLdZeroAd var_438
  loc_6DEB16: CVarStr var_124
  loc_6DEB19: ImpAdCallI2 Format$(, )
  loc_6DEB1E: CVarStr var_144
  loc_6DEB21: ConcatVar var_154
  loc_6DEB25: LitI4 1
  loc_6DEB2A: LitI4 1
  loc_6DEB2F: LitVarStr var_D4, "!@@@@@@@@@@"
  loc_6DEB34: FStVarCopyObj var_174
  loc_6DEB37: FLdRfVar var_174
  loc_6DEB3A: FLdZeroAd var_43C
  loc_6DEB3D: CVarStr var_164
  loc_6DEB40: ImpAdCallI2 Format$(, )
  loc_6DEB45: CVarStr var_184
  loc_6DEB48: ConcatVar var_194
  loc_6DEB4C: LitI4 &HD
  loc_6DEB51: ImpAdCallI2 Chr$()
  loc_6DEB56: CVarStr var_1A4
  loc_6DEB59: ConcatVar var_1B4
  loc_6DEB5D: LitI4 &HA
  loc_6DEB62: ImpAdCallI2 Chr$()
  loc_6DEB67: CVarStr var_1C4
  loc_6DEB6A: ConcatVar var_1D4
  loc_6DEB6E: LitVarStr var_1E4, "de "
  loc_6DEB73: ConcatVar var_1F4
  loc_6DEB77: FLdI2 var_86
  loc_6DEB7A: CI4UI1
  loc_6DEB7B: FLdPr Me
  loc_6DEB7E: MemLdStr global_60
  loc_6DEB81: Ary1LdPr
  loc_6DEB82: MemLdStr global_16
  loc_6DEB85: CVarStr var_204
  loc_6DEB88: ConcatVar var_214
  loc_6DEB8C: LitVarStr var_224, " a "
  loc_6DEB91: ConcatVar var_234
  loc_6DEB95: FLdI2 var_86
  loc_6DEB98: CI4UI1
  loc_6DEB99: FLdPr Me
  loc_6DEB9C: MemLdStr global_60
  loc_6DEB9F: Ary1LdPr
  loc_6DEBA0: MemLdStr global_20
  loc_6DEBA3: CVarStr var_244
  loc_6DEBA6: ConcatVar var_254
  loc_6DEBAA: LitI4 &HC
  loc_6DEBAF: FLdRfVar var_264
  loc_6DEBB2: ImpAdCallFPR4  = Space()
  loc_6DEBB7: FLdRfVar var_264
  loc_6DEBBA: ConcatVar var_274
  loc_6DEBBE: LitI4 1
  loc_6DEBC3: LitI4 1
  loc_6DEBC8: LitVarStr var_308, "@@@@@@@@@@"
  loc_6DEBCD: FStVarCopyObj var_318
  loc_6DEBD0: FLdRfVar var_318
  loc_6DEBD3: FLdZeroAd var_2E8
  loc_6DEBD6: CVarStr var_2F8
  loc_6DEBD9: ImpAdCallI2 Format$(, )
  loc_6DEBDE: CVarStr var_328
  loc_6DEBE1: ConcatVar var_338
  loc_6DEBE5: LitI4 1
  loc_6DEBEA: LitI4 1
  loc_6DEBEF: LitVarStr var_37C, "@@@@@@@@@@"
  loc_6DEBF4: FStVarCopyObj var_38C
  loc_6DEBF7: FLdRfVar var_38C
  loc_6DEBFA: FLdZeroAd var_35C
  loc_6DEBFD: CVarStr var_36C
  loc_6DEC00: ImpAdCallI2 Format$(, )
  loc_6DEC05: CVarStr var_39C
  loc_6DEC08: ConcatVar var_3AC
  loc_6DEC0C: LitI4 &HD
  loc_6DEC11: ImpAdCallI2 Chr$()
  loc_6DEC16: CVarStr var_3BC
  loc_6DEC19: ConcatVar var_3CC
  loc_6DEC1D: LitI4 &HA
  loc_6DEC22: ImpAdCallI2 Chr$()
  loc_6DEC27: CVarStr var_3DC
  loc_6DEC2A: ConcatVar var_3EC
  loc_6DEC2E: LitI4 &HD
  loc_6DEC33: ImpAdCallI2 Chr$()
  loc_6DEC38: CVarStr var_3FC
  loc_6DEC3B: ConcatVar var_40C
  loc_6DEC3F: LitI4 &HA
  loc_6DEC44: ImpAdCallI2 Chr$()
  loc_6DEC49: CVarStr var_41C
  loc_6DEC4C: ConcatVar var_42C
  loc_6DEC50: CStrVarVal var_430
  loc_6DEC54: FLdPrThis
  loc_6DEC55: VCallAd Control_ID_txtReporte
  loc_6DEC58: FStAdFunc var_434
  loc_6DEC5B: FLdPr var_434
  loc_6DEC5E: Me.Text = from_stack_1
  loc_6DEC63: FFreeStr var_A4 = "": var_EC = "": var_104 = "": var_430 = "": var_438 = ""
  loc_6DEC72: FFreeAd var_FC = ""
  loc_6DEC79: FFreeVar var_39C = "": var_3AC = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3FC = "": var_40C = "": var_41C = "": var_42C = "": var_E4 = "": var_C4 = "": var_124 = "": var_134 = "": var_114 = "": var_144 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_2A4 = "": var_2C4 = "": var_2D4 = "": var_2F8 = "": var_318 = "": var_274 = "": var_328 = "": var_36C = "": var_38C = ""
  loc_6DECCC: LitI2_Byte &HFF
  loc_6DECCE: FStI2 var_9A
  loc_6DECD1: Branch loc_6DEEED
  loc_6DECD4: LitVarStr var_1E4, "#0.00"
  loc_6DECD9: FStVarCopyObj var_134
  loc_6DECDC: FLdRfVar var_134
  loc_6DECDF: LitVarStr var_D4, "#0.000"
  loc_6DECE4: FStVarCopyObj var_124
  loc_6DECE7: FLdRfVar var_124
  loc_6DECEA: ImpAdLdRf MemVar_74BF72
  loc_6DECED: CVarRef
  loc_6DECF2: FLdRfVar var_144
  loc_6DECF5: ImpAdCallFPR4  = IIf(, , )
  loc_6DECFA: LitI4 1
  loc_6DECFF: LitI4 1
  loc_6DED04: FLdRfVar var_144
  loc_6DED07: FLdI2 var_86
  loc_6DED0A: CI4UI1
  loc_6DED0B: FLdPr Me
  loc_6DED0E: MemLdStr global_60
  loc_6DED11: AryLock
  loc_6DED14: Ary1LdPr
  loc_6DED15: MemLdRfVar from_stack_1.global_0
  loc_6DED18: CVarRef
  loc_6DED1D: ImpAdCallI2 Format$(, )
  loc_6DED22: FStStr var_44C
  loc_6DED25: AryUnlock
  loc_6DED28: LitI4 1
  loc_6DED2D: LitI4 1
  loc_6DED32: ImpAdLdRf MemVar_74C364
  loc_6DED35: CVarRef
  loc_6DED3A: FLdI2 var_86
  loc_6DED3D: CI4UI1
  loc_6DED3E: FLdPr Me
  loc_6DED41: MemLdStr global_60
  loc_6DED44: AryLock
  loc_6DED47: Ary1LdPr
  loc_6DED48: MemLdRfVar from_stack_1.global_8
  loc_6DED4B: CVarRef
  loc_6DED50: ImpAdCallI2 Format$(, )
  loc_6DED55: FStStr var_450
  loc_6DED58: AryUnlock
  loc_6DED5B: FLdRfVar var_A4
  loc_6DED5E: FLdPrThis
  loc_6DED5F: VCallAd Control_ID_txtReporte
  loc_6DED62: FStAdFunc var_FC
  loc_6DED65: FLdPr var_FC
  loc_6DED68:  = Me.Text
  loc_6DED6D: ILdRf var_A4
  loc_6DED70: LitStr "Total "
  loc_6DED73: ConcatStr
  loc_6DED74: FStStrNoPop var_EC
  loc_6DED77: FLdI2 var_86
  loc_6DED7A: CI4UI1
  loc_6DED7B: FLdPr Me
  loc_6DED7E: MemLdStr global_60
  loc_6DED81: Ary1LdPr
  loc_6DED82: MemLdRfVar from_stack_1.global_24
  loc_6DED85: LdFixedStr
  loc_6DED88: FStStrNoPop var_104
  loc_6DED8B: ConcatStr
  loc_6DED8C: FStStrNoPop var_2E8
  loc_6DED8F: LitI4 &HD
  loc_6DED94: ImpAdCallI2 Chr$()
  loc_6DED99: FStStrNoPop var_35C
  loc_6DED9C: ConcatStr
  loc_6DED9D: FStStrNoPop var_430
  loc_6DEDA0: LitI4 &HA
  loc_6DEDA5: ImpAdCallI2 Chr$()
  loc_6DEDAA: FStStrNoPop var_438
  loc_6DEDAD: ConcatStr
  loc_6DEDAE: FStStrNoPop var_43C
  loc_6DEDB1: LitStr "de "
  loc_6DEDB4: ConcatStr
  loc_6DEDB5: FStStrNoPop var_440
  loc_6DEDB8: FLdI2 var_86
  loc_6DEDBB: CI4UI1
  loc_6DEDBC: FLdPr Me
  loc_6DEDBF: MemLdStr global_60
  loc_6DEDC2: Ary1LdPr
  loc_6DEDC3: MemLdStr global_16
  loc_6DEDC6: ConcatStr
  loc_6DEDC7: FStStrNoPop var_444
  loc_6DEDCA: LitStr " a "
  loc_6DEDCD: ConcatStr
  loc_6DEDCE: FStStrNoPop var_448
  loc_6DEDD1: FLdI2 var_86
  loc_6DEDD4: CI4UI1
  loc_6DEDD5: FLdPr Me
  loc_6DEDD8: MemLdStr global_60
  loc_6DEDDB: Ary1LdPr
  loc_6DEDDC: MemLdStr global_20
  loc_6DEDDF: ConcatStr
  loc_6DEDE0: CVarStr var_E4
  loc_6DEDE3: LitI4 &HC
  loc_6DEDE8: FLdRfVar var_C4
  loc_6DEDEB: ImpAdCallFPR4  = Space()
  loc_6DEDF0: FLdRfVar var_C4
  loc_6DEDF3: ConcatVar var_114
  loc_6DEDF7: LitI4 1
  loc_6DEDFC: LitI4 1
  loc_6DEE01: LitVarStr var_224, "@@@@@@@@@@"
  loc_6DEE06: FStVarCopyObj var_164
  loc_6DEE09: FLdRfVar var_164
  loc_6DEE0C: FLdZeroAd var_44C
  loc_6DEE0F: CVarStr var_154
  loc_6DEE12: ImpAdCallI2 Format$(, )
  loc_6DEE17: CVarStr var_174
  loc_6DEE1A: ConcatVar var_184
  loc_6DEE1E: LitI4 1
  loc_6DEE23: LitI4 1
  loc_6DEE28: LitVarStr var_294, "@@@@@@@@@@"
  loc_6DEE2D: FStVarCopyObj var_1A4
  loc_6DEE30: FLdRfVar var_1A4
  loc_6DEE33: FLdZeroAd var_450
  loc_6DEE36: CVarStr var_194
  loc_6DEE39: ImpAdCallI2 Format$(, )
  loc_6DEE3E: CVarStr var_1B4
  loc_6DEE41: ConcatVar var_1C4
  loc_6DEE45: LitI4 &HD
  loc_6DEE4A: ImpAdCallI2 Chr$()
  loc_6DEE4F: CVarStr var_1D4
  loc_6DEE52: ConcatVar var_1F4
  loc_6DEE56: LitI4 &HA
  loc_6DEE5B: ImpAdCallI2 Chr$()
  loc_6DEE60: CVarStr var_214
  loc_6DEE63: ConcatVar var_234
  loc_6DEE67: LitI4 &HD
  loc_6DEE6C: ImpAdCallI2 Chr$()
  loc_6DEE71: CVarStr var_254
  loc_6DEE74: ConcatVar var_264
  loc_6DEE78: LitI4 &HA
  loc_6DEE7D: ImpAdCallI2 Chr$()
  loc_6DEE82: CVarStr var_274
  loc_6DEE85: ConcatVar var_2A4
  loc_6DEE89: CStrVarVal var_454
  loc_6DEE8D: FLdPrThis
  loc_6DEE8E: VCallAd Control_ID_txtReporte
  loc_6DEE91: FStAdFunc var_434
  loc_6DEE94: FLdPr var_434
  loc_6DEE97: Me.Text = from_stack_1
  loc_6DEE9C: FFreeStr var_A4 = "": var_EC = "": var_104 = "": var_2E8 = "": var_35C = "": var_430 = "": var_438 = "": var_43C = "": var_440 = "": var_444 = "": var_448 = ""
  loc_6DEEB7: FFreeAd var_FC = ""
  loc_6DEEBE: FFreeVar var_E4 = "": var_C4 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_164 = "": var_114 = "": var_174 = "": var_194 = "": var_1A4 = "": var_184 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_274 = ""
  loc_6DEEED: FLdRfVar var_F6
  loc_6DEEF0: FLdPrThis
  loc_6DEEF1: VCallAd Control_ID_chkDetalles
  loc_6DEEF4: FStAdFunc var_FC
  loc_6DEEF7: FLdPr var_FC
  loc_6DEEFA:  = Me.Value
  loc_6DEEFF: FLdI2 var_F6
  loc_6DEF02: CI4UI1
  loc_6DEF03: LitI4 1
  loc_6DEF08: EqI4
  loc_6DEF09: FFree1Ad var_FC
  loc_6DEF0C: BranchF loc_6DF05D
  loc_6DEF0F: LitStr "0"
  loc_6DEF12: LitI4 1
  loc_6DEF17: FLdI2 var_86
  loc_6DEF1A: CI4UI1
  loc_6DEF1B: FLdPr Me
  loc_6DEF1E: MemLdStr global_60
  loc_6DEF21: Ary1LdPr
  loc_6DEF22: MemLdStr global_16
  loc_6DEF25: LitStr "-"
  loc_6DEF28: LitI4 0
  loc_6DEF2D: FnInStr4
  loc_6DEF2F: CStrI4
  loc_6DEF31: FStStrNoPop var_A4
  loc_6DEF34: ConcatStr
  loc_6DEF35: FStStrNoPop var_EC
  loc_6DEF38: CI2Str
  loc_6DEF3A: LitI2_Byte 0
  loc_6DEF3C: GtI2
  loc_6DEF3D: FFreeStr var_A4 = ""
  loc_6DEF44: BranchF loc_6DEFEA
  loc_6DEF47: LitVarI2 var_C4, 4
  loc_6DEF4C: LitI4 1
  loc_6DEF51: FLdI2 var_86
  loc_6DEF54: CI4UI1
  loc_6DEF55: FLdPr Me
  loc_6DEF58: MemLdStr global_60
  loc_6DEF5B: Ary1LdPr
  loc_6DEF5C: MemLdStr global_16
  loc_6DEF5F: ImpAdCallI2 Mid$(, , )
  loc_6DEF64: FStStr var_430
  loc_6DEF67: FLdRfVar var_A4
  loc_6DEF6A: FLdPrThis
  loc_6DEF6B: VCallAd Control_ID_txtReporte
  loc_6DEF6E: FStAdFunc var_FC
  loc_6DEF71: FLdPr var_FC
  loc_6DEF74:  = Me.Text
  loc_6DEF79: ILdRf var_A4
  loc_6DEF7C: FLdRfVar var_2E8
  loc_6DEF7F: FLdZeroAd var_430
  loc_6DEF82: FStStrNoPop var_EC
  loc_6DEF85: CI2Str
  loc_6DEF87: PopTmpLdAd2 var_F6
  loc_6DEF8A: FLdI2 var_86
  loc_6DEF8D: CI4UI1
  loc_6DEF8E: FLdPr Me
  loc_6DEF91: MemLdStr global_60
  loc_6DEF94: Ary1LdPr
  loc_6DEF95: MemLdRfVar from_stack_1.global_24
  loc_6DEF98: LdFixedStr
  loc_6DEF9B: PopTmpLdAdStr
  loc_6DEF9F: from_stack_3v = Proc_128_12_6B2DF8(from_stack_1v, from_stack_2v)
  loc_6DEFA4: ILdRf var_104
  loc_6DEFA7: FLdI2 var_86
  loc_6DEFAA: CI4UI1
  loc_6DEFAB: FLdPr Me
  loc_6DEFAE: MemLdStr global_60
  loc_6DEFB1: Ary1LdPr
  loc_6DEFB2: MemLdRfVar from_stack_1.global_24
  loc_6DEFB5: StFixedStr
  loc_6DEFB8: ILdRf var_2E8
  loc_6DEFBB: ConcatStr
  loc_6DEFBC: FStStrNoPop var_35C
  loc_6DEFBF: FLdPrThis
  loc_6DEFC0: VCallAd Control_ID_txtReporte
  loc_6DEFC3: FStAdFunc var_434
  loc_6DEFC6: FLdPr var_434
  loc_6DEFC9: Me.Text = from_stack_1
  loc_6DEFCE: FFreeStr var_EC = "": var_104 = "": var_A4 = "": var_2E8 = "": var_35C = ""
  loc_6DEFDD: FFreeAd var_FC = ""
  loc_6DEFE4: FFree1Var var_C4 = ""
  loc_6DEFE7: Branch loc_6DF05D
  loc_6DEFEA: FLdRfVar var_A4
  loc_6DEFED: FLdPrThis
  loc_6DEFEE: VCallAd Control_ID_txtReporte
  loc_6DEFF1: FStAdFunc var_FC
  loc_6DEFF4: FLdPr var_FC
  loc_6DEFF7:  = Me.Text
  loc_6DEFFC: ILdRf var_A4
  loc_6DEFFF: FLdRfVar var_104
  loc_6DF002: LitI2_Byte &HFF
  loc_6DF004: PopTmpLdAd2 var_F6
  loc_6DF007: FLdI2 var_86
  loc_6DF00A: CI4UI1
  loc_6DF00B: FLdPr Me
  loc_6DF00E: MemLdStr global_60
  loc_6DF011: Ary1LdPr
  loc_6DF012: MemLdRfVar from_stack_1.global_24
  loc_6DF015: LdFixedStr
  loc_6DF018: PopTmpLdAdStr
  loc_6DF01C: from_stack_3v = Proc_128_12_6B2DF8(from_stack_1v, from_stack_2v)
  loc_6DF021: ILdRf var_EC
  loc_6DF024: FLdI2 var_86
  loc_6DF027: CI4UI1
  loc_6DF028: FLdPr Me
  loc_6DF02B: MemLdStr global_60
  loc_6DF02E: Ary1LdPr
  loc_6DF02F: MemLdRfVar from_stack_1.global_24
  loc_6DF032: StFixedStr
  loc_6DF035: ILdRf var_104
  loc_6DF038: ConcatStr
  loc_6DF039: FStStrNoPop var_2E8
  loc_6DF03C: FLdPrThis
  loc_6DF03D: VCallAd Control_ID_txtReporte
  loc_6DF040: FStAdFunc var_434
  loc_6DF043: FLdPr var_434
  loc_6DF046: Me.Text = from_stack_1
  loc_6DF04B: FFreeStr var_EC = "": var_A4 = "": var_104 = ""
  loc_6DF056: FFreeAd var_FC = ""
  loc_6DF05D: FLdFPR8 var_90
  loc_6DF060: FLdI2 var_86
  loc_6DF063: CI4UI1
  loc_6DF064: FLdPr Me
  loc_6DF067: MemLdStr global_60
  loc_6DF06A: Ary1LdPr
  loc_6DF06B: MemLdFPR8 global_0
  loc_6DF06E: AddR8
  loc_6DF06F: FStFPR8 var_90
  loc_6DF072: FLdFPR8 var_98
  loc_6DF075: FLdI2 var_86
  loc_6DF078: CI4UI1
  loc_6DF079: FLdPr Me
  loc_6DF07C: MemLdStr global_60
  loc_6DF07F: Ary1LdPr
  loc_6DF080: MemLdFPR8 global_8
  loc_6DF083: AddR8
  loc_6DF084: FStFPR8 var_98
  loc_6DF087: FLdRfVar var_86
  loc_6DF08A: NextI2 var_100, loc_6DEA08
  loc_6DF08F: LitVarStr var_1E4, "#0.00"
  loc_6DF094: FStVarCopyObj var_134
  loc_6DF097: FLdRfVar var_134
  loc_6DF09A: LitVarStr var_D4, "#0.000"
  loc_6DF09F: FStVarCopyObj var_124
  loc_6DF0A2: FLdRfVar var_124
  loc_6DF0A5: ImpAdLdRf MemVar_74BF72
  loc_6DF0A8: CVarRef
  loc_6DF0AD: FLdRfVar var_144
  loc_6DF0B0: ImpAdCallFPR4  = IIf(, , )
  loc_6DF0B5: LitI4 1
  loc_6DF0BA: LitI4 1
  loc_6DF0BF: FLdRfVar var_144
  loc_6DF0C2: FLdRfVar var_90
  loc_6DF0C5: CVarRef
  loc_6DF0CA: ImpAdCallI2 Format$(, )
  loc_6DF0CF: FStStr var_104
  loc_6DF0D2: LitI4 1
  loc_6DF0D7: LitI4 1
  loc_6DF0DC: LitVarStr var_284, "#0.00"
  loc_6DF0E1: FStVarCopyObj var_194
  loc_6DF0E4: FLdRfVar var_194
  loc_6DF0E7: FLdRfVar var_98
  loc_6DF0EA: CVarRef
  loc_6DF0EF: ImpAdCallI2 Format$(, )
  loc_6DF0F4: FStStr var_2E8
  loc_6DF0F7: FLdRfVar var_A4
  loc_6DF0FA: FLdPrThis
  loc_6DF0FB: VCallAd Control_ID_txtReporte
  loc_6DF0FE: FStAdFunc var_FC
  loc_6DF101: FLdPr var_FC
  loc_6DF104:  = Me.Text
  loc_6DF109: ILdRf var_A4
  loc_6DF10C: LitStr "Total General"
  loc_6DF10F: ConcatStr
  loc_6DF110: CVarStr var_E4
  loc_6DF113: LitI4 &H1F
  loc_6DF118: FLdRfVar var_C4
  loc_6DF11B: ImpAdCallFPR4  = Space()
  loc_6DF120: FLdRfVar var_C4
  loc_6DF123: ConcatVar var_114
  loc_6DF127: LitI4 1
  loc_6DF12C: LitI4 1
  loc_6DF131: LitVarStr var_224, "@@@@@@@@@@"
  loc_6DF136: FStVarCopyObj var_164
  loc_6DF139: FLdRfVar var_164
  loc_6DF13C: FLdZeroAd var_104
  loc_6DF13F: CVarStr var_154
  loc_6DF142: ImpAdCallI2 Format$(, )
  loc_6DF147: CVarStr var_174
  loc_6DF14A: ConcatVar var_184
  loc_6DF14E: LitI4 1
  loc_6DF153: LitI4 1
  loc_6DF158: LitVarStr var_294, "@@@@@@@@@@"
  loc_6DF15D: FStVarCopyObj var_1B4
  loc_6DF160: FLdRfVar var_1B4
  loc_6DF163: FLdZeroAd var_2E8
  loc_6DF166: CVarStr var_1A4
  loc_6DF169: ImpAdCallI2 Format$(, )
  loc_6DF16E: CVarStr var_1C4
  loc_6DF171: ConcatVar var_1D4
  loc_6DF175: LitI4 &HD
  loc_6DF17A: ImpAdCallI2 Chr$()
  loc_6DF17F: CVarStr var_1F4
  loc_6DF182: ConcatVar var_214
  loc_6DF186: LitI4 &HA
  loc_6DF18B: ImpAdCallI2 Chr$()
  loc_6DF190: CVarStr var_234
  loc_6DF193: ConcatVar var_254
  loc_6DF197: LitI4 &HD
  loc_6DF19C: ImpAdCallI2 Chr$()
  loc_6DF1A1: CVarStr var_264
  loc_6DF1A4: ConcatVar var_274
  loc_6DF1A8: LitI4 &HA
  loc_6DF1AD: ImpAdCallI2 Chr$()
  loc_6DF1B2: CVarStr var_2A4
  loc_6DF1B5: ConcatVar var_2C4
  loc_6DF1B9: CStrVarVal var_EC
  loc_6DF1BD: FLdPrThis
  loc_6DF1BE: VCallAd Control_ID_txtReporte
  loc_6DF1C1: FStAdFunc var_434
  loc_6DF1C4: FLdPr var_434
  loc_6DF1C7: Me.Text = from_stack_1
  loc_6DF1CC: FFreeStr var_A4 = "": var_EC = "": var_104 = ""
  loc_6DF1D7: FFreeAd var_FC = ""
  loc_6DF1DE: FFreeVar var_E4 = "": var_C4 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_164 = "": var_114 = "": var_174 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_184 = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_274 = "": var_2A4 = ""
  loc_6DF20F: ExitProcHresult
End Function

Private Function Proc_128_12_6B2DF8(arg_C, arg_10) '6B2DF8
  'Data Table: 4155C4
  loc_6B26BC: ZeroRetVal
  loc_6B26BE: LitDate 0
  loc_6B26C7: FStFPR8 var_94
  loc_6B26CA: LitDate 0
  loc_6B26D3: FStFPR8 var_9C
  loc_6B26D6: LitI2_Byte 1
  loc_6B26D8: FLdRfVar var_8A
  loc_6B26DB: FLdPr Me
  loc_6B26DE: MemLdStr global_56
  loc_6B26E1: LitI2_Byte 1
  loc_6B26E3: FnUBound
  loc_6B26E5: CI2I4
  loc_6B26E6: ForI2 var_A0
  loc_6B26EC: FLdI2 var_8A
  loc_6B26EF: CI4UI1
  loc_6B26F0: FLdPr Me
  loc_6B26F3: MemLdStr global_56
  loc_6B26F6: Ary1LdPr
  loc_6B26F7: MemLdRfVar from_stack_1.global_44
  loc_6B26FA: LdFixedStr
  loc_6B26FD: FStStrNoPop var_A4
  loc_6B2700: ILdI4 arg_C
  loc_6B2703: EqStr
  loc_6B2705: FFree1Str var_A4
  loc_6B2708: BranchF loc_6B2C95
  loc_6B270B: ILdI2 arg_10
  loc_6B270E: LitI2_Byte &HFF
  loc_6B2710: EqI2
  loc_6B2711: BranchF loc_6B29C0
  loc_6B2714: LitStr "0"
  loc_6B2717: LitI4 1
  loc_6B271C: FLdI2 var_8A
  loc_6B271F: CI4UI1
  loc_6B2720: FLdPr Me
  loc_6B2723: MemLdStr global_56
  loc_6B2726: Ary1LdPr
  loc_6B2727: MemLdStr global_40
  loc_6B272A: LitStr "-"
  loc_6B272D: LitI4 0
  loc_6B2732: FnInStr4
  loc_6B2734: CStrI4
  loc_6B2736: FStStrNoPop var_A4
  loc_6B2739: ConcatStr
  loc_6B273A: FStStrNoPop var_A8
  loc_6B273D: CI2Str
  loc_6B273F: LitI2_Byte 0
  loc_6B2741: EqI2
  loc_6B2742: FFreeStr var_A4 = ""
  loc_6B2749: BranchF loc_6B29BD
  loc_6B274C: FLdRfVar var_A8
  loc_6B274F: FLdI2 var_8A
  loc_6B2752: CI4UI1
  loc_6B2753: FLdPr Me
  loc_6B2756: MemLdStr global_56
  loc_6B2759: Ary1LdPr
  loc_6B275A: MemLdI2 global_36
  loc_6B275D: ImpAdLdRf MemVar_74A220
  loc_6B2760: NewIfNullPr clsProducts
  loc_6B2768: LitI4 &H14
  loc_6B276D: FLdZeroAd var_A8
  loc_6B2770: CVarStr var_17C
  loc_6B2773: FLdRfVar var_18C
  loc_6B2776: ImpAdCallFPR4  = Left(, )
  loc_6B277B: LitVarStr var_218, "#0.00"
  loc_6B2780: FStVarCopyObj var_228
  loc_6B2783: FLdRfVar var_228
  loc_6B2786: LitVarStr var_1F8, "#0.000"
  loc_6B278B: FStVarCopyObj var_208
  loc_6B278E: FLdRfVar var_208
  loc_6B2791: ImpAdLdRf MemVar_74BF72
  loc_6B2794: CVarRef
  loc_6B2799: FLdRfVar var_238
  loc_6B279C: ImpAdCallFPR4  = IIf(, , )
  loc_6B27A1: LitI4 1
  loc_6B27A6: LitI4 1
  loc_6B27AB: FLdRfVar var_238
  loc_6B27AE: FLdI2 var_8A
  loc_6B27B1: CI4UI1
  loc_6B27B2: FLdPr Me
  loc_6B27B5: MemLdStr global_56
  loc_6B27B8: AryLock
  loc_6B27BB: Ary1LdPr
  loc_6B27BC: MemLdRfVar from_stack_1.global_12
  loc_6B27BF: CVarRef
  loc_6B27C4: ImpAdCallI2 Format$(, )
  loc_6B27C9: FStStr var_250
  loc_6B27CC: AryUnlock
  loc_6B27CF: LitI4 1
  loc_6B27D4: LitI4 1
  loc_6B27D9: LitVarStr var_2C4, "#0.00"
  loc_6B27DE: FStVarCopyObj var_2D4
  loc_6B27E1: FLdRfVar var_2D4
  loc_6B27E4: FLdI2 var_8A
  loc_6B27E7: CI4UI1
  loc_6B27E8: FLdPr Me
  loc_6B27EB: MemLdStr global_56
  loc_6B27EE: AryLock
  loc_6B27F1: Ary1LdPr
  loc_6B27F2: MemLdRfVar from_stack_1.global_20
  loc_6B27F5: CVarRef
  loc_6B27FA: ImpAdCallI2 Format$(, )
  loc_6B27FF: FStStr var_2D8
  loc_6B2802: AryUnlock
  loc_6B2805: ILdRf var_88
  loc_6B2808: FLdI2 var_8A
  loc_6B280B: CI4UI1
  loc_6B280C: FLdPr Me
  loc_6B280F: MemLdStr global_56
  loc_6B2812: Ary1LdPr
  loc_6B2813: MemLdStr global_40
  loc_6B2816: ConcatStr
  loc_6B2817: CVarStr var_C8
  loc_6B281A: LitI4 2
  loc_6B281F: FLdRfVar var_B8
  loc_6B2822: ImpAdCallFPR4  = Space()
  loc_6B2827: FLdRfVar var_B8
  loc_6B282A: ConcatVar var_D8
  loc_6B282E: LitI4 1
  loc_6B2833: LitI4 1
  loc_6B2838: LitVarStr var_FC, "@@"
  loc_6B283D: FStVarCopyObj var_10C
  loc_6B2840: FLdRfVar var_10C
  loc_6B2843: FLdI2 var_8A
  loc_6B2846: CI4UI1
  loc_6B2847: FLdPr Me
  loc_6B284A: MemLdStr global_56
  loc_6B284D: AryLock
  loc_6B2850: Ary1LdPr
  loc_6B2851: MemLdRfVar from_stack_1.global_0
  loc_6B2854: CVarRef
  loc_6B2859: ImpAdCallI2 Format$(, )
  loc_6B285E: FStStr var_A4
  loc_6B2861: AryUnlock
  loc_6B2864: FLdZeroAd var_A4
  loc_6B2867: CVarStr var_11C
  loc_6B286A: ConcatVar var_12C
  loc_6B286E: FLdI2 var_8A
  loc_6B2871: CI4UI1
  loc_6B2872: FLdPr Me
  loc_6B2875: MemLdStr global_56
  loc_6B2878: Ary1LdPr
  loc_6B2879: MemLdRfVar from_stack_1.global_2
  loc_6B287C: LdFixedStr
  loc_6B287F: CVarStr var_13C
  loc_6B2882: ConcatVar var_14C
  loc_6B2886: LitI4 3
  loc_6B288B: FLdRfVar var_15C
  loc_6B288E: ImpAdCallFPR4  = Space()
  loc_6B2893: FLdRfVar var_15C
  loc_6B2896: ConcatVar var_16C
  loc_6B289A: LitI2_Byte &HFF
  loc_6B289C: PopTmpLdAd2 var_198
  loc_6B289F: LitI2_Byte &H14
  loc_6B28A1: PopTmpLdAd2 var_196
  loc_6B28A4: LitStr " "
  loc_6B28A7: FStStrCopy var_194
  loc_6B28AA: FLdRfVar var_194
  loc_6B28AD: FLdRfVar var_18C
  loc_6B28B0: CStrVarTmp
  loc_6B28B1: PopTmpLdAdStr
  loc_6B28B5: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_6B28BA: CVarStr var_1A8
  loc_6B28BD: ConcatVar var_1B8
  loc_6B28C1: LitI4 3
  loc_6B28C6: FLdRfVar var_1C8
  loc_6B28C9: ImpAdCallFPR4  = Space()
  loc_6B28CE: FLdRfVar var_1C8
  loc_6B28D1: ConcatVar var_1D8
  loc_6B28D5: LitI4 1
  loc_6B28DA: LitI4 1
  loc_6B28DF: LitVarStr var_270, "@@@@@@@@@@"
  loc_6B28E4: FStVarCopyObj var_280
  loc_6B28E7: FLdRfVar var_280
  loc_6B28EA: FLdZeroAd var_250
  loc_6B28ED: CVarStr var_260
  loc_6B28F0: ImpAdCallI2 Format$(, )
  loc_6B28F5: CVarStr var_290
  loc_6B28F8: ConcatVar var_2A0
  loc_6B28FC: LitI4 1
  loc_6B2901: LitI4 1
  loc_6B2906: LitVarStr var_2F8, "@@@@@@@@@@"
  loc_6B290B: FStVarCopyObj var_308
  loc_6B290E: FLdRfVar var_308
  loc_6B2911: FLdZeroAd var_2D8
  loc_6B2914: CVarStr var_2E8
  loc_6B2917: ImpAdCallI2 Format$(, )
  loc_6B291C: CVarStr var_318
  loc_6B291F: ConcatVar var_328
  loc_6B2923: LitI4 &HD
  loc_6B2928: ImpAdCallI2 Chr$()
  loc_6B292D: CVarStr var_338
  loc_6B2930: ConcatVar var_348
  loc_6B2934: LitI4 &HA
  loc_6B2939: ImpAdCallI2 Chr$()
  loc_6B293E: CVarStr var_358
  loc_6B2941: ConcatVar var_368
  loc_6B2945: CStrVarTmp
  loc_6B2946: FStStr var_88
  loc_6B2949: FFreeStr var_190 = ""
  loc_6B2950: FFreeVar var_358 = "": var_368 = "": var_C8 = "": var_B8 = "": var_10C = "": var_D8 = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_18C = "": var_16C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_208 = "": var_228 = "": var_238 = "": var_260 = "": var_280 = "": var_1D8 = "": var_290 = "": var_2D4 = "": var_2E8 = "": var_308 = "": var_2A0 = "": var_318 = "": var_328 = "": var_338 = ""
  loc_6B2993: FLdFPR8 var_94
  loc_6B2996: FLdI2 var_8A
  loc_6B2999: CI4UI1
  loc_6B299A: FLdPr Me
  loc_6B299D: MemLdStr global_56
  loc_6B29A0: Ary1LdPr
  loc_6B29A1: MemLdFPR8 global_12
  loc_6B29A4: AddR8
  loc_6B29A5: FStFPR8 var_94
  loc_6B29A8: FLdFPR8 var_9C
  loc_6B29AB: FLdI2 var_8A
  loc_6B29AE: CI4UI1
  loc_6B29AF: FLdPr Me
  loc_6B29B2: MemLdStr global_56
  loc_6B29B5: Ary1LdPr
  loc_6B29B6: MemLdFPR8 global_20
  loc_6B29B9: AddR8
  loc_6B29BA: FStFPR8 var_9C
  loc_6B29BD: Branch loc_6B2C95
  loc_6B29C0: LitStr "0"
  loc_6B29C3: LitI4 1
  loc_6B29C8: FLdI2 var_8A
  loc_6B29CB: CI4UI1
  loc_6B29CC: FLdPr Me
  loc_6B29CF: MemLdStr global_56
  loc_6B29D2: Ary1LdPr
  loc_6B29D3: MemLdStr global_40
  loc_6B29D6: LitStr "-"
  loc_6B29D9: LitI4 0
  loc_6B29DE: FnInStr4
  loc_6B29E0: CStrI4
  loc_6B29E2: FStStrNoPop var_A4
  loc_6B29E5: ConcatStr
  loc_6B29E6: FStStrNoPop var_A8
  loc_6B29E9: CI2Str
  loc_6B29EB: LitI2_Byte 0
  loc_6B29ED: GtI2
  loc_6B29EE: ILdI2 arg_10
  loc_6B29F1: LitVarI2 var_B8, 4
  loc_6B29F6: LitI4 1
  loc_6B29FB: FLdI2 var_8A
  loc_6B29FE: CI4UI1
  loc_6B29FF: FLdPr Me
  loc_6B2A02: MemLdStr global_56
  loc_6B2A05: Ary1LdPr
  loc_6B2A06: MemLdStr global_40
  loc_6B2A09: ImpAdCallI2 Mid$(, , )
  loc_6B2A0E: FStStrNoPop var_190
  loc_6B2A11: CI2Str
  loc_6B2A13: EqI2
  loc_6B2A14: AndI4
  loc_6B2A15: FFreeStr var_A4 = "": var_A8 = ""
  loc_6B2A1E: FFree1Var var_B8 = ""
  loc_6B2A21: BranchF loc_6B2C95
  loc_6B2A24: FLdRfVar var_A8
  loc_6B2A27: FLdI2 var_8A
  loc_6B2A2A: CI4UI1
  loc_6B2A2B: FLdPr Me
  loc_6B2A2E: MemLdStr global_56
  loc_6B2A31: Ary1LdPr
  loc_6B2A32: MemLdI2 global_36
  loc_6B2A35: ImpAdLdRf MemVar_74A220
  loc_6B2A38: NewIfNullPr clsProducts
  loc_6B2A40: LitI4 &H14
  loc_6B2A45: FLdZeroAd var_A8
  loc_6B2A48: CVarStr var_17C
  loc_6B2A4B: FLdRfVar var_18C
  loc_6B2A4E: ImpAdCallFPR4  = Left(, )
  loc_6B2A53: LitVarStr var_218, "#0.00"
  loc_6B2A58: FStVarCopyObj var_228
  loc_6B2A5B: FLdRfVar var_228
  loc_6B2A5E: LitVarStr var_1F8, "#0.000"
  loc_6B2A63: FStVarCopyObj var_208
  loc_6B2A66: FLdRfVar var_208
  loc_6B2A69: ImpAdLdRf MemVar_74BF72
  loc_6B2A6C: CVarRef
  loc_6B2A71: FLdRfVar var_238
  loc_6B2A74: ImpAdCallFPR4  = IIf(, , )
  loc_6B2A79: LitI4 1
  loc_6B2A7E: LitI4 1
  loc_6B2A83: FLdRfVar var_238
  loc_6B2A86: FLdI2 var_8A
  loc_6B2A89: CI4UI1
  loc_6B2A8A: FLdPr Me
  loc_6B2A8D: MemLdStr global_56
  loc_6B2A90: AryLock
  loc_6B2A93: Ary1LdPr
  loc_6B2A94: MemLdRfVar from_stack_1.global_12
  loc_6B2A97: CVarRef
  loc_6B2A9C: ImpAdCallI2 Format$(, )
  loc_6B2AA1: FStStr var_250
  loc_6B2AA4: AryUnlock
  loc_6B2AA7: LitI4 1
  loc_6B2AAC: LitI4 1
  loc_6B2AB1: LitVarStr var_2C4, "#0.00"
  loc_6B2AB6: FStVarCopyObj var_2D4
  loc_6B2AB9: FLdRfVar var_2D4
  loc_6B2ABC: FLdI2 var_8A
  loc_6B2ABF: CI4UI1
  loc_6B2AC0: FLdPr Me
  loc_6B2AC3: MemLdStr global_56
  loc_6B2AC6: AryLock
  loc_6B2AC9: Ary1LdPr
  loc_6B2ACA: MemLdRfVar from_stack_1.global_20
  loc_6B2ACD: CVarRef
  loc_6B2AD2: ImpAdCallI2 Format$(, )
  loc_6B2AD7: FStStr var_2D8
  loc_6B2ADA: AryUnlock
  loc_6B2ADD: ILdRf var_88
  loc_6B2AE0: FLdI2 var_8A
  loc_6B2AE3: CI4UI1
  loc_6B2AE4: FLdPr Me
  loc_6B2AE7: MemLdStr global_56
  loc_6B2AEA: Ary1LdPr
  loc_6B2AEB: MemLdStr global_40
  loc_6B2AEE: ConcatStr
  loc_6B2AEF: CVarStr var_C8
  loc_6B2AF2: LitI4 2
  loc_6B2AF7: FLdRfVar var_B8
  loc_6B2AFA: ImpAdCallFPR4  = Space()
  loc_6B2AFF: FLdRfVar var_B8
  loc_6B2B02: ConcatVar var_D8
  loc_6B2B06: LitI4 1
  loc_6B2B0B: LitI4 1
  loc_6B2B10: LitVarStr var_FC, "@@"
  loc_6B2B15: FStVarCopyObj var_10C
  loc_6B2B18: FLdRfVar var_10C
  loc_6B2B1B: FLdI2 var_8A
  loc_6B2B1E: CI4UI1
  loc_6B2B1F: FLdPr Me
  loc_6B2B22: MemLdStr global_56
  loc_6B2B25: AryLock
  loc_6B2B28: Ary1LdPr
  loc_6B2B29: MemLdRfVar from_stack_1.global_0
  loc_6B2B2C: CVarRef
  loc_6B2B31: ImpAdCallI2 Format$(, )
  loc_6B2B36: FStStr var_A4
  loc_6B2B39: AryUnlock
  loc_6B2B3C: FLdZeroAd var_A4
  loc_6B2B3F: CVarStr var_11C
  loc_6B2B42: ConcatVar var_12C
  loc_6B2B46: FLdI2 var_8A
  loc_6B2B49: CI4UI1
  loc_6B2B4A: FLdPr Me
  loc_6B2B4D: MemLdStr global_56
  loc_6B2B50: Ary1LdPr
  loc_6B2B51: MemLdRfVar from_stack_1.global_2
  loc_6B2B54: LdFixedStr
  loc_6B2B57: CVarStr var_13C
  loc_6B2B5A: ConcatVar var_14C
  loc_6B2B5E: LitI4 3
  loc_6B2B63: FLdRfVar var_15C
  loc_6B2B66: ImpAdCallFPR4  = Space()
  loc_6B2B6B: FLdRfVar var_15C
  loc_6B2B6E: ConcatVar var_16C
  loc_6B2B72: LitI2_Byte &HFF
  loc_6B2B74: PopTmpLdAd2 var_198
  loc_6B2B77: LitI2_Byte &H14
  loc_6B2B79: PopTmpLdAd2 var_196
  loc_6B2B7C: LitStr " "
  loc_6B2B7F: FStStrCopy var_194
  loc_6B2B82: FLdRfVar var_194
  loc_6B2B85: FLdRfVar var_18C
  loc_6B2B88: CStrVarTmp
  loc_6B2B89: PopTmpLdAdStr
  loc_6B2B8D: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_6B2B92: CVarStr var_1A8
  loc_6B2B95: ConcatVar var_1B8
  loc_6B2B99: LitI4 3
  loc_6B2B9E: FLdRfVar var_1C8
  loc_6B2BA1: ImpAdCallFPR4  = Space()
  loc_6B2BA6: FLdRfVar var_1C8
  loc_6B2BA9: ConcatVar var_1D8
  loc_6B2BAD: LitI4 1
  loc_6B2BB2: LitI4 1
  loc_6B2BB7: LitVarStr var_270, "@@@@@@@@@@"
  loc_6B2BBC: FStVarCopyObj var_280
  loc_6B2BBF: FLdRfVar var_280
  loc_6B2BC2: FLdZeroAd var_250
  loc_6B2BC5: CVarStr var_260
  loc_6B2BC8: ImpAdCallI2 Format$(, )
  loc_6B2BCD: CVarStr var_290
  loc_6B2BD0: ConcatVar var_2A0
  loc_6B2BD4: LitI4 1
  loc_6B2BD9: LitI4 1
  loc_6B2BDE: LitVarStr var_2F8, "@@@@@@@@@@"
  loc_6B2BE3: FStVarCopyObj var_308
  loc_6B2BE6: FLdRfVar var_308
  loc_6B2BE9: FLdZeroAd var_2D8
  loc_6B2BEC: CVarStr var_2E8
  loc_6B2BEF: ImpAdCallI2 Format$(, )
  loc_6B2BF4: CVarStr var_318
  loc_6B2BF7: ConcatVar var_328
  loc_6B2BFB: LitI4 &HD
  loc_6B2C00: ImpAdCallI2 Chr$()
  loc_6B2C05: CVarStr var_338
  loc_6B2C08: ConcatVar var_348
  loc_6B2C0C: LitI4 &HA
  loc_6B2C11: ImpAdCallI2 Chr$()
  loc_6B2C16: CVarStr var_358
  loc_6B2C19: ConcatVar var_368
  loc_6B2C1D: CStrVarTmp
  loc_6B2C1E: FStStr var_88
  loc_6B2C21: FFreeStr var_190 = ""
  loc_6B2C28: FFreeVar var_358 = "": var_368 = "": var_C8 = "": var_B8 = "": var_10C = "": var_D8 = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_18C = "": var_16C = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_208 = "": var_228 = "": var_238 = "": var_260 = "": var_280 = "": var_1D8 = "": var_290 = "": var_2D4 = "": var_2E8 = "": var_308 = "": var_2A0 = "": var_318 = "": var_328 = "": var_338 = ""
  loc_6B2C6B: FLdFPR8 var_94
  loc_6B2C6E: FLdI2 var_8A
  loc_6B2C71: CI4UI1
  loc_6B2C72: FLdPr Me
  loc_6B2C75: MemLdStr global_56
  loc_6B2C78: Ary1LdPr
  loc_6B2C79: MemLdFPR8 global_12
  loc_6B2C7C: AddR8
  loc_6B2C7D: FStFPR8 var_94
  loc_6B2C80: FLdFPR8 var_9C
  loc_6B2C83: FLdI2 var_8A
  loc_6B2C86: CI4UI1
  loc_6B2C87: FLdPr Me
  loc_6B2C8A: MemLdStr global_56
  loc_6B2C8D: Ary1LdPr
  loc_6B2C8E: MemLdFPR8 global_20
  loc_6B2C91: AddR8
  loc_6B2C92: FStFPR8 var_9C
  loc_6B2C95: FLdRfVar var_8A
  loc_6B2C98: NextI2 var_A0, loc_6B26EC
  loc_6B2C9D: LitVarStr var_1E8, "#0.00"
  loc_6B2CA2: FStVarCopyObj var_11C
  loc_6B2CA5: FLdRfVar var_11C
  loc_6B2CA8: LitVarStr var_FC, "#0.000"
  loc_6B2CAD: FStVarCopyObj var_10C
  loc_6B2CB0: FLdRfVar var_10C
  loc_6B2CB3: ImpAdLdRf MemVar_74BF72
  loc_6B2CB6: CVarRef
  loc_6B2CBB: FLdRfVar var_12C
  loc_6B2CBE: ImpAdCallFPR4  = IIf(, , )
  loc_6B2CC3: LitI4 1
  loc_6B2CC8: LitI4 1
  loc_6B2CCD: FLdRfVar var_12C
  loc_6B2CD0: FLdRfVar var_94
  loc_6B2CD3: CVarRef
  loc_6B2CD8: ImpAdCallI2 Format$(, )
  loc_6B2CDD: FStStr var_A4
  loc_6B2CE0: LitI4 1
  loc_6B2CE5: LitI4 1
  loc_6B2CEA: LitVarStr var_270, "#0.00"
  loc_6B2CEF: FStVarCopyObj var_17C
  loc_6B2CF2: FLdRfVar var_17C
  loc_6B2CF5: FLdRfVar var_9C
  loc_6B2CF8: CVarRef
  loc_6B2CFD: ImpAdCallI2 Format$(, )
  loc_6B2D02: FStStr var_A8
  loc_6B2D05: ILdRf var_88
  loc_6B2D08: LitStr "Total Parcial"
  loc_6B2D0B: ConcatStr
  loc_6B2D0C: CVarStr var_C8
  loc_6B2D0F: LitI4 &H1F
  loc_6B2D14: FLdRfVar var_B8
  loc_6B2D17: ImpAdCallFPR4  = Space()
  loc_6B2D1C: FLdRfVar var_B8
  loc_6B2D1F: ConcatVar var_D8
  loc_6B2D23: LitI4 1
  loc_6B2D28: LitI4 1
  loc_6B2D2D: LitVarStr var_218, "@@@@@@@@@@"
  loc_6B2D32: FStVarCopyObj var_14C
  loc_6B2D35: FLdRfVar var_14C
  loc_6B2D38: FLdZeroAd var_A4
  loc_6B2D3B: CVarStr var_13C
  loc_6B2D3E: ImpAdCallI2 Format$(, )
  loc_6B2D43: CVarStr var_15C
  loc_6B2D46: ConcatVar var_16C
  loc_6B2D4A: LitI4 1
  loc_6B2D4F: LitI4 1
  loc_6B2D54: LitVarStr var_2B0, "@@@@@@@@@@"
  loc_6B2D59: FStVarCopyObj var_1A8
  loc_6B2D5C: FLdRfVar var_1A8
  loc_6B2D5F: FLdZeroAd var_A8
  loc_6B2D62: CVarStr var_18C
  loc_6B2D65: ImpAdCallI2 Format$(, )
  loc_6B2D6A: CVarStr var_1B8
  loc_6B2D6D: ConcatVar var_1C8
  loc_6B2D71: LitI4 &HD
  loc_6B2D76: ImpAdCallI2 Chr$()
  loc_6B2D7B: CVarStr var_1D8
  loc_6B2D7E: ConcatVar var_208
  loc_6B2D82: LitI4 &HA
  loc_6B2D87: ImpAdCallI2 Chr$()
  loc_6B2D8C: CVarStr var_228
  loc_6B2D8F: ConcatVar var_238
  loc_6B2D93: LitI4 &HD
  loc_6B2D98: ImpAdCallI2 Chr$()
  loc_6B2D9D: CVarStr var_260
  loc_6B2DA0: ConcatVar var_280
  loc_6B2DA4: LitI4 &HA
  loc_6B2DA9: ImpAdCallI2 Chr$()
  loc_6B2DAE: CVarStr var_290
  loc_6B2DB1: ConcatVar var_2A0
  loc_6B2DB5: CStrVarTmp
  loc_6B2DB6: FStStr var_88
  loc_6B2DB9: FFreeStr var_A4 = ""
  loc_6B2DC0: FFreeVar var_C8 = "": var_B8 = "": var_10C = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_D8 = "": var_15C = "": var_17C = "": var_18C = "": var_1A8 = "": var_16C = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_208 = "": var_228 = "": var_238 = "": var_260 = "": var_280 = "": var_290 = ""
  loc_6B2DF1: ExitProcCbHresult
  loc_6B2DF7: Ary1LdPr
End Function

Private Function Proc_128_13_60FF18(arg_C, arg_10) '60FF18
  'Data Table: 4155C4
  loc_60FE18: LitStr "0"
  loc_60FE1B: LitI4 1
  loc_60FE20: FMemLdR4 arg_C(16)
  loc_60FE25: LitStr "-"
  loc_60FE28: LitI4 0
  loc_60FE2D: FnInStr4
  loc_60FE2F: CStrI4
  loc_60FE31: FStStrNoPop var_8C
  loc_60FE34: ConcatStr
  loc_60FE35: FStStrNoPop var_90
  loc_60FE38: CI2Str
  loc_60FE3A: LitI2_Byte 0
  loc_60FE3C: GtI2
  loc_60FE3D: LitStr "0"
  loc_60FE40: LitI4 1
  loc_60FE45: FMemLdR4 arg_10(40)
  loc_60FE4A: LitStr "-"
  loc_60FE4D: LitI4 0
  loc_60FE52: FnInStr4
  loc_60FE54: CStrI4
  loc_60FE56: FStStrNoPop var_94
  loc_60FE59: ConcatStr
  loc_60FE5A: FStStrNoPop var_98
  loc_60FE5D: CI2Str
  loc_60FE5F: LitI2_Byte 0
  loc_60FE61: GtI2
  loc_60FE62: AndI4
  loc_60FE63: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_60FE6E: BranchF loc_60FEB8
  loc_60FE71: LitVarI2 var_B8, 4
  loc_60FE76: LitI4 1
  loc_60FE7B: FMemLdR4 arg_C(16)
  loc_60FE80: ImpAdCallI2 Mid$(, , )
  loc_60FE85: FStStrNoPop var_8C
  loc_60FE88: CI2Str
  loc_60FE8A: LitVarI2 var_D8, 4
  loc_60FE8F: LitI4 1
  loc_60FE94: FMemLdR4 arg_10(40)
  loc_60FE99: ImpAdCallI2 Mid$(, , )
  loc_60FE9E: FStStrNoPop var_90
  loc_60FEA1: CI2Str
  loc_60FEA3: EqI2
  loc_60FEA4: FStI2 var_86
  loc_60FEA7: FFreeStr var_8C = ""
  loc_60FEAE: FFreeVar var_B8 = ""
  loc_60FEB5: Branch loc_60FF11
  loc_60FEB8: LitStr "0"
  loc_60FEBB: LitI4 1
  loc_60FEC0: FMemLdR4 arg_C(16)
  loc_60FEC5: LitStr "-"
  loc_60FEC8: LitI4 0
  loc_60FECD: FnInStr4
  loc_60FECF: CStrI4
  loc_60FED1: FStStrNoPop var_8C
  loc_60FED4: ConcatStr
  loc_60FED5: FStStrNoPop var_90
  loc_60FED8: CI2Str
  loc_60FEDA: LitI2_Byte 0
  loc_60FEDC: EqI2
  loc_60FEDD: LitStr "0"
  loc_60FEE0: LitI4 1
  loc_60FEE5: FMemLdR4 arg_10(40)
  loc_60FEEA: LitStr "-"
  loc_60FEED: LitI4 0
  loc_60FEF2: FnInStr4
  loc_60FEF4: CStrI4
  loc_60FEF6: FStStrNoPop var_94
  loc_60FEF9: ConcatStr
  loc_60FEFA: FStStrNoPop var_98
  loc_60FEFD: CI2Str
  loc_60FEFF: LitI2_Byte 0
  loc_60FF01: EqI2
  loc_60FF02: AndI4
  loc_60FF03: FStI2 var_86
  loc_60FF06: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_60FF11: ExitProcCbHresult
End Function
