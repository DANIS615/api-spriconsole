VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form NotaLiquidoProducto
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
  ClientWidth = 11910
  ClientHeight = 8775
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 10800
    Top = 2760
  End
  Begin VB.CommandButton cmdPrevious
    Caption = "Ver periodo &Anterior"
    Left = 600
    Top = 7440
    Width = 3135
    Height = 855
    TabIndex = 1
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
  Begin VB.CommandButton cmdNext
    Caption = "Ver periodo &Siguiente"
    Left = 8160
    Top = 7440
    Width = 3135
    Height = 855
    TabIndex = 3
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
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 4800
    Top = 7440
    Width = 2535
    Height = 855
    TabIndex = 2
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
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 5
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 240
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 4
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSFlexGridLib.MSFlexGrid Grid1
    Left = 3990
    Top = 2040
    Width = 3975
    Height = 4695
    TabIndex = 0
    OleObjectBlob = "NotaLiquidoProducto.frx":0000
  End
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 240
    Top = 1200
    Width = 1815
    Height = 375
    TabIndex = 10
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10560
    Top = 1080
    Width = 1095
    Height = 375
    TabIndex = 9
    Alignment = 1 'Right Justify
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
  Begin VB.Label Label1
    Caption = "Nota de Liquidación de Combustible"
    Left = 2520
    Top = 240
    Width = 7095
    Height = 615
    TabIndex = 8
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
  Begin VB.Label lRazonSocial
    Caption = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    Left = 5040
    Top = 1200
    Width = 3855
    Height = 255
    TabIndex = 7
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
  Begin VB.Label Label3
    Caption = "Razon Social:"
    Left = 3240
    Top = 1200
    Width = 1695
    Height = 255
    TabIndex = 6
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

Attribute VB_Name = "NotaLiquidoProducto"


Private Sub Form_Load() '5E5758
  'Data Table: 427C00
  loc_5E56E4: LitI2_Byte 0
  loc_5E56E6: CR8I2
  loc_5E56E7: PopFPR4
  loc_5E56E8: FLdPr Me
  loc_5E56EB: Me.Left = from_stack_1s
  loc_5E56F0: LitI2_Byte 0
  loc_5E56F2: CR8I2
  loc_5E56F3: PopFPR4
  loc_5E56F4: FLdPr Me
  loc_5E56F7: Me.Top = from_stack_1s
  loc_5E56FC: FLdRfVar var_8C
  loc_5E56FF: FLdRfVar var_88
  loc_5E5702: ImpAdLdRf MemVar_7520D4
  loc_5E5705: NewIfNullPr Global
  loc_5E5708:  = Global.Screen
  loc_5E570D: FLdPr var_88
  loc_5E5710:  = Screen.TwipsPerPixelY
  loc_5E5715: FLdFPR4 var_8C
  loc_5E5718: LitI2 600
  loc_5E571B: CR8I2
  loc_5E571C: MulR8
  loc_5E571D: PopFPR4
  loc_5E571E: FLdPr Me
  loc_5E5721: Me.Height = from_stack_1s
  loc_5E5726: FFree1Ad var_88
  loc_5E5729: FLdRfVar var_8C
  loc_5E572C: FLdRfVar var_88
  loc_5E572F: ImpAdLdRf MemVar_7520D4
  loc_5E5732: NewIfNullPr Global
  loc_5E5735:  = Global.Screen
  loc_5E573A: FLdPr var_88
  loc_5E573D:  = Screen.TwipsPerPixelX
  loc_5E5742: FLdFPR4 var_8C
  loc_5E5745: LitI2 800
  loc_5E5748: CR8I2
  loc_5E5749: MulR8
  loc_5E574A: PopFPR4
  loc_5E574B: FLdPr Me
  loc_5E574E: Me.Width = from_stack_1s
  loc_5E5753: FFree1Ad var_88
  loc_5E5756: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D0CB8
  'Data Table: 427C00
  loc_5D0CA0: LitI2_Byte 0
  loc_5D0CA2: FLdPrThis
  loc_5D0CA3: VCallAd Control_ID_Reloj
  loc_5D0CA6: FStAdFunc var_88
  loc_5D0CA9: FLdPr var_88
  loc_5D0CAC: Me.Enabled = from_stack_1b
  loc_5D0CB1: FFree1Ad var_88
  loc_5D0CB4: ExitProcHresult
  loc_5D0CB5: CI2Cy
  loc_5D0CB6: FStAdFunc var_7800
End Sub

Private Sub Form_Activate() '655C0C
  'Data Table: 427C00
  loc_655924: LitI2_Byte &HFF
  loc_655926: FLdPrThis
  loc_655927: VCallAd Control_ID_Reloj
  loc_65592A: FStAdFunc var_8C
  loc_65592D: FLdPr var_8C
  loc_655930: Me.Enabled = from_stack_1b
  loc_655935: FFree1Ad var_8C
  loc_655938: FLdPrThis
  loc_655939: VCallAd Control_ID_Picture1
  loc_65593C: FStAdFunc var_9C
  loc_65593F: FLdRfVar var_90
  loc_655942: FLdRfVar var_8C
  loc_655945: ImpAdLdRf MemVar_7520D4
  loc_655948: NewIfNullPr Global
  loc_65594B:  = Global.App
  loc_655950: FLdPr var_8C
  loc_655953:  = App.Path
  loc_655958: ILdRf var_90
  loc_65595B: LitStr "\Logo_Compania.bmp"
  loc_65595E: ConcatStr
  loc_65595F: FStStrNoPop var_98
  loc_655962: FLdZeroAd var_9C
  loc_655965: FStAdFunc var_94
  loc_655968: FLdRfVar var_94
  loc_65596B: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_655970: FFreeStr var_90 = ""
  loc_655977: FFreeAd var_8C = "": var_94 = ""
  loc_655980: FLdPrThis
  loc_655981: VCallAd Control_ID_Picture2
  loc_655984: FStAdFunc var_9C
  loc_655987: FLdRfVar var_90
  loc_65598A: FLdRfVar var_8C
  loc_65598D: ImpAdLdRf MemVar_7520D4
  loc_655990: NewIfNullPr Global
  loc_655993:  = Global.App
  loc_655998: FLdPr var_8C
  loc_65599B:  = App.Path
  loc_6559A0: ILdRf var_90
  loc_6559A3: LitStr "\Logo_Proyecto.bmp"
  loc_6559A6: ConcatStr
  loc_6559A7: FStStrNoPop var_98
  loc_6559AA: FLdZeroAd var_9C
  loc_6559AD: FStAdFunc var_94
  loc_6559B0: FLdRfVar var_94
  loc_6559B3: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6559B8: FFreeStr var_90 = ""
  loc_6559BF: FFreeAd var_8C = "": var_94 = ""
  loc_6559C8: FLdRfVar var_AC
  loc_6559CB: ImpAdCallFPR4  = Date
  loc_6559D0: LitI4 1
  loc_6559D5: LitI4 1
  loc_6559DA: LitVarStr var_BC, "dd/mm/yyyy"
  loc_6559DF: FStVarCopyObj var_CC
  loc_6559E2: FLdRfVar var_CC
  loc_6559E5: FLdRfVar var_AC
  loc_6559E8: ImpAdCallI2 Format$(, )
  loc_6559ED: FStStrNoPop var_90
  loc_6559F0: FLdPrThis
  loc_6559F1: VCallAd Control_ID_lFecha
  loc_6559F4: FStAdFunc var_8C
  loc_6559F7: FLdPr var_8C
  loc_6559FA: Me.Caption = from_stack_1
  loc_6559FF: FFree1Str var_90
  loc_655A02: FFree1Ad var_8C
  loc_655A05: FFreeVar var_AC = ""
  loc_655A0C: FLdRfVar var_AC
  loc_655A0F: ImpAdCallFPR4  = Time
  loc_655A14: LitI4 1
  loc_655A19: LitI4 1
  loc_655A1E: LitVarStr var_BC, "hh:mm"
  loc_655A23: FStVarCopyObj var_CC
  loc_655A26: FLdRfVar var_CC
  loc_655A29: FLdRfVar var_AC
  loc_655A2C: ImpAdCallI2 Format$(, )
  loc_655A31: FStStrNoPop var_90
  loc_655A34: FLdPrThis
  loc_655A35: VCallAd Control_ID_lHora
  loc_655A38: FStAdFunc var_8C
  loc_655A3B: FLdPr var_8C
  loc_655A3E: Me.Caption = from_stack_1
  loc_655A43: FFree1Str var_90
  loc_655A46: FFree1Ad var_8C
  loc_655A49: FFreeVar var_AC = ""
  loc_655A50: FLdRfVar var_CE
  loc_655A53: FLdRfVar var_88
  loc_655A56: FLdRfVar var_8C
  loc_655A59: ImpAdLdRf MemVar_74C760
  loc_655A5C: NewIfNullPr Formx
  loc_655A5F: from_stack_1v = Formx.global_4589716Get()
  loc_655A64: FLdPr var_8C
  loc_655A67:  = Formx.Picture
  loc_655A6C: FLdI2 var_CE
  loc_655A6F: NotI4
  loc_655A70: FFree1Ad var_8C
  loc_655A73: BranchF loc_655AA2
  loc_655A76: FLdRfVar var_AC
  loc_655A79: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_655A7E: FLdRfVar var_AC
  loc_655A81: CBoolVarNull
  loc_655A83: FFree1Var var_AC = ""
  loc_655A86: BranchF loc_655A9F
  loc_655A89: ILdRf Me
  loc_655A8C: FStAdNoPop
  loc_655A90: ImpAdLdRf MemVar_7520D4
  loc_655A93: NewIfNullPr Global
  loc_655A96: Global.Unload from_stack_1
  loc_655A9B: FFree1Ad var_8C
  loc_655A9E: ExitProcHresult
  loc_655A9F: Branch loc_655A50
  loc_655AA2: LitVarI2 var_AC, 30
  loc_655AA7: LitI4 7
  loc_655AAC: FLdRfVar var_88
  loc_655AAF: CVarRef
  loc_655AB4: FLdRfVar var_CC
  loc_655AB7: ImpAdCallFPR4  = Mid(, , )
  loc_655ABC: FLdRfVar var_CC
  loc_655ABF: FLdRfVar var_F0
  loc_655AC2: ImpAdCallFPR4  = Trim()
  loc_655AC7: FLdRfVar var_F0
  loc_655ACA: CStrVarVal var_90
  loc_655ACE: FLdPrThis
  loc_655ACF: VCallAd Control_ID_lRazonSocial
  loc_655AD2: FStAdFunc var_8C
  loc_655AD5: FLdPr var_8C
  loc_655AD8: Me.Caption = from_stack_1
  loc_655ADD: FFree1Str var_90
  loc_655AE0: FFree1Ad var_8C
  loc_655AE3: FFreeVar var_AC = "": var_CC = ""
  loc_655AEC: FLdRfVar var_AC
  loc_655AEF: ImpAdCallFPR4  = Date
  loc_655AF4: FLdRfVar var_AC
  loc_655AF7: FnCDateVar
  loc_655AF9: FLdPr Me
  loc_655AFC: MemStFPR8 global_60
  loc_655AFF: FFree1Var var_AC = ""
  loc_655B02: FLdRfVar var_AC
  loc_655B05: ImpAdCallFPR4  = Date
  loc_655B0A: FLdRfVar var_AC
  loc_655B0D: LitVarI2 var_BC, 365
  loc_655B12: SubVar var_CC
  loc_655B16: FnCDateVar
  loc_655B18: FLdPr Me
  loc_655B1B: MemStFPR8 global_68
  loc_655B1E: FFree1Var var_AC = ""
  loc_655B21: LitI2_Byte 0
  loc_655B23: FLdPrThis
  loc_655B24: VCallAd Control_ID_cmdNext
  loc_655B27: FStAdFunc var_8C
  loc_655B2A: FLdPr var_8C
  loc_655B2D: Me.Visible = from_stack_1b
  loc_655B32: FFree1Ad var_8C
  loc_655B35: FLdRfVar var_CE
  loc_655B38: from_stack_1v = HayDatosAnteriores()
  loc_655B3D: FLdI2 var_CE
  loc_655B40: BranchF loc_655B5A
  loc_655B43: LitI2_Byte &HFF
  loc_655B45: FLdPrThis
  loc_655B46: VCallAd Control_ID_cmdPrevious
  loc_655B49: FStAdFunc var_8C
  loc_655B4C: FLdPr var_8C
  loc_655B4F: Me.Visible = from_stack_1b
  loc_655B54: FFree1Ad var_8C
  loc_655B57: Branch loc_655B6E
  loc_655B5A: LitI2_Byte 0
  loc_655B5C: FLdPrThis
  loc_655B5D: VCallAd Control_ID_cmdPrevious
  loc_655B60: FStAdFunc var_8C
  loc_655B63: FLdPr var_8C
  loc_655B66: Me.Visible = from_stack_1b
  loc_655B6B: FFree1Ad var_8C
  loc_655B6E: LitI2_Byte 0
  loc_655B70: PopTmpLdAd2 var_CE
  loc_655B73: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_655B78: from_stack_1v = Proc_123_11_676228()
  loc_655B7D: Call InicioGrilla()
  loc_655B82: Call CargaGrilla()
  loc_655B87: LitI4 1
  loc_655B8C: FLdPr Me
  loc_655B8F: MemLdStr global_52
  loc_655B92: Ary1LdPr
  loc_655B93: MemLdStr global_0
  loc_655B96: LitStr vbNullString
  loc_655B99: EqStr
  loc_655B9B: BranchF loc_655C0A
  loc_655B9E: FLdRfVar var_CE
  loc_655BA1: FLdPrThis
  loc_655BA2: VCallAd Control_ID_cmdPrevious
  loc_655BA5: FStAdFunc var_8C
  loc_655BA8: FLdPr var_8C
  loc_655BAB:  = Me.Visible
  loc_655BB0: FLdI2 var_CE
  loc_655BB3: LitI2_Byte &HFF
  loc_655BB5: EqI2
  loc_655BB6: FFree1Ad var_8C
  loc_655BB9: BranchF loc_655BC4
  loc_655BBC: Call cmdPrevious_Click()
  loc_655BC1: Branch loc_655C0A
  loc_655BC4: LitVar_Missing var_120
  loc_655BC7: LitVar_Missing var_F0
  loc_655BCA: LitVarStr var_E0, "Notificacion Liquido Producto"
  loc_655BCF: FStVarCopyObj var_CC
  loc_655BD2: FLdRfVar var_CC
  loc_655BD5: LitI4 &H40
  loc_655BDA: LitVarStr var_BC, "No hay datos disponibles."
  loc_655BDF: FStVarCopyObj var_AC
  loc_655BE2: FLdRfVar var_AC
  loc_655BE5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_655BEA: FFreeVar var_AC = "": var_CC = "": var_F0 = ""
  loc_655BF5: ILdRf Me
  loc_655BF8: FStAdNoPop
  loc_655BFC: ImpAdLdRf MemVar_7520D4
  loc_655BFF: NewIfNullPr Global
  loc_655C02: Global.Unload from_stack_1
  loc_655C07: FFree1Ad var_8C
  loc_655C0A: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5EEAF4
  'Data Table: 427C00
  loc_5EEA68: FLdRfVar var_94
  loc_5EEA6B: ImpAdCallFPR4  = Date
  loc_5EEA70: LitI4 1
  loc_5EEA75: LitI4 1
  loc_5EEA7A: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EEA7F: FStVarCopyObj var_B4
  loc_5EEA82: FLdRfVar var_B4
  loc_5EEA85: FLdRfVar var_94
  loc_5EEA88: ImpAdCallI2 Format$(, )
  loc_5EEA8D: FStStrNoPop var_B8
  loc_5EEA90: FLdPrThis
  loc_5EEA91: VCallAd Control_ID_lFecha
  loc_5EEA94: FStAdFunc var_BC
  loc_5EEA97: FLdPr var_BC
  loc_5EEA9A: Me.Caption = from_stack_1
  loc_5EEA9F: FFree1Str var_B8
  loc_5EEAA2: FFree1Ad var_BC
  loc_5EEAA5: FFreeVar var_94 = ""
  loc_5EEAAC: FLdRfVar var_94
  loc_5EEAAF: ImpAdCallFPR4  = Time
  loc_5EEAB4: LitI4 1
  loc_5EEAB9: LitI4 1
  loc_5EEABE: LitVarStr var_A4, "hh:mm"
  loc_5EEAC3: FStVarCopyObj var_B4
  loc_5EEAC6: FLdRfVar var_B4
  loc_5EEAC9: FLdRfVar var_94
  loc_5EEACC: ImpAdCallI2 Format$(, )
  loc_5EEAD1: FStStrNoPop var_B8
  loc_5EEAD4: FLdPrThis
  loc_5EEAD5: VCallAd Control_ID_lHora
  loc_5EEAD8: FStAdFunc var_BC
  loc_5EEADB: FLdPr var_BC
  loc_5EEADE: Me.Caption = from_stack_1
  loc_5EEAE3: FFree1Str var_B8
  loc_5EEAE6: FFree1Ad var_BC
  loc_5EEAE9: FFreeVar var_94 = ""
  loc_5EEAF0: ExitProcHresult
End Sub

Private Sub Grid1_UnknownEvent_8 '60C454
  'Data Table: 427C00
  loc_60C37C: FLdPrThis
  loc_60C37D: VCallAd Control_ID_Grid1
  loc_60C380: FStAdFunc var_88
  loc_60C383: FLdPr var_88
  loc_60C386: LateIdLdVar var_98 DispID_12 0
  loc_60C38D: CI4Var
  loc_60C38F: FLdPr Me
  loc_60C392: MemLdStr global_56
  loc_60C395: Ary1LdPr
  loc_60C396: MemLdStr global_0
  loc_60C399: FLdPrThis
  loc_60C39A: VCallAd Control_ID_Grid1
  loc_60C39D: FStAdFunc var_9C
  loc_60C3A0: FLdPr var_9C
  loc_60C3A3: LateIdLdVar var_AC DispID_12 0
  loc_60C3AA: CI4Var
  loc_60C3AC: FLdPr Me
  loc_60C3AF: MemLdStr global_56
  loc_60C3B2: Ary1LdPr
  loc_60C3B3: MemLdStr global_8
  loc_60C3B6: ConcatStr
  loc_60C3B7: FStStrNoPop var_C4
  loc_60C3BA: FLdPrThis
  loc_60C3BB: VCallAd Control_ID_Grid1
  loc_60C3BE: FStAdFunc var_B0
  loc_60C3C1: FLdPr var_B0
  loc_60C3C4: LateIdLdVar var_C0 DispID_12 0
  loc_60C3CB: CI4Var
  loc_60C3CD: FLdPr Me
  loc_60C3D0: MemLdStr global_56
  loc_60C3D3: Ary1LdPr
  loc_60C3D4: MemLdStr global_4
  loc_60C3D7: ConcatStr
  loc_60C3D8: FStStrNoPop var_DC
  loc_60C3DB: FLdPrThis
  loc_60C3DC: VCallAd Control_ID_Grid1
  loc_60C3DF: FStAdFunc var_C8
  loc_60C3E2: FLdPr var_C8
  loc_60C3E5: LateIdLdVar var_D8 DispID_12 0
  loc_60C3EC: CI4Var
  loc_60C3EE: FLdPr Me
  loc_60C3F1: MemLdStr global_56
  loc_60C3F4: Ary1LdPr
  loc_60C3F5: MemLdStr global_12
  loc_60C3F8: ConcatStr
  loc_60C3F9: FStStrNoPop var_E0
  loc_60C3FC: ImpAdLdRf MemVar_74C9A0
  loc_60C3FF: NewIfNullPr NotaLiqComb
  loc_60C402: Call NotaLiqComb.PeriodoElegidoPut(from_stack_1v)
  loc_60C407: FFreeStr var_C4 = "": var_DC = ""
  loc_60C410: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_60C41B: FFreeVar var_98 = "": var_AC = "": var_C0 = ""
  loc_60C426: LitVar_Missing var_100
  loc_60C429: PopAdLdVar
  loc_60C42A: LitVarI4
  loc_60C432: PopAdLdVar
  loc_60C433: ImpAdLdRf MemVar_74C9A0
  loc_60C436: NewIfNullPr NotaLiqComb
  loc_60C439: NotaLiqComb.Show from_stack_1, from_stack_2
  loc_60C43E: ILdRf Me
  loc_60C441: FStAdNoPop
  loc_60C445: ImpAdLdRf MemVar_7520D4
  loc_60C448: NewIfNullPr Global
  loc_60C44B: Global.Unload from_stack_1
  loc_60C450: FFree1Ad var_88
  loc_60C453: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D112C
  'Data Table: 427C00
  loc_5D1114: ILdRf Me
  loc_5D1117: FStAdNoPop
  loc_5D111B: ImpAdLdRf MemVar_7520D4
  loc_5D111E: NewIfNullPr Global
  loc_5D1121: Global.Unload from_stack_1
  loc_5D1126: FFree1Ad var_88
  loc_5D1129: ExitProcHresult
  loc_5D112A: ExitProcR8
End Sub

Private Sub cmdNext_Click() '5E8CD4
  'Data Table: 427C00
  loc_5E8C58: FLdPr Me
  loc_5E8C5B: MemLdFPR8 global_68
  loc_5E8C5E: LitI2 365
  loc_5E8C61: CR8I2
  loc_5E8C62: AddR8
  loc_5E8C63: CDateR8
  loc_5E8C64: FLdPr Me
  loc_5E8C67: MemStFPR8 global_68
  loc_5E8C6A: FLdPr Me
  loc_5E8C6D: MemLdFPR8 global_60
  loc_5E8C70: LitI2 365
  loc_5E8C73: CR8I2
  loc_5E8C74: AddR8
  loc_5E8C75: CDateR8
  loc_5E8C76: FLdPr Me
  loc_5E8C79: MemStFPR8 global_60
  loc_5E8C7C: FLdPr Me
  loc_5E8C7F: MemLdFPR8 global_60
  loc_5E8C82: CVarDate var_A4
  loc_5E8C86: HardType
  loc_5E8C87: FLdRfVar var_94
  loc_5E8C8A: ImpAdCallFPR4  = Date
  loc_5E8C8F: FLdRfVar var_94
  loc_5E8C92: GeVarBool
  loc_5E8C94: FFree1Var var_94 = ""
  loc_5E8C97: BranchF loc_5E8CAE
  loc_5E8C9A: LitI2_Byte 0
  loc_5E8C9C: FLdPrThis
  loc_5E8C9D: VCallAd Control_ID_cmdNext
  loc_5E8CA0: FStAdFunc var_B8
  loc_5E8CA3: FLdPr var_B8
  loc_5E8CA6: Me.Visible = from_stack_1b
  loc_5E8CAB: FFree1Ad var_B8
  loc_5E8CAE: Call InicioGrilla()
  loc_5E8CB3: from_stack_1v = Proc_123_11_676228()
  loc_5E8CB8: Call CargaGrilla()
  loc_5E8CBD: LitI2_Byte &HFF
  loc_5E8CBF: FLdPrThis
  loc_5E8CC0: VCallAd Control_ID_cmdPrevious
  loc_5E8CC3: FStAdFunc var_B8
  loc_5E8CC6: FLdPr var_B8
  loc_5E8CC9: Me.Visible = from_stack_1b
  loc_5E8CCE: FFree1Ad var_B8
  loc_5E8CD1: ExitProcHresult
  loc_5E8CD2: CRec2Uni var_7800
End Sub

Private Sub cmdPrevious_Click() '5F36A8
  'Data Table: 427C00
  loc_5F35F8: LitI4 1
  loc_5F35FD: FLdPr Me
  loc_5F3600: MemLdStr global_52
  loc_5F3603: Ary1LdPr
  loc_5F3604: MemLdStr global_0
  loc_5F3607: LitStr vbNullString
  loc_5F360A: EqStr
  loc_5F360C: BranchF loc_5F3626
  loc_5F360F: LitI2_Byte 0
  loc_5F3611: FLdPrThis
  loc_5F3612: VCallAd Control_ID_cmdNext
  loc_5F3615: FStAdFunc var_88
  loc_5F3618: FLdPr var_88
  loc_5F361B: Me.Visible = from_stack_1b
  loc_5F3620: FFree1Ad var_88
  loc_5F3623: Branch loc_5F363A
  loc_5F3626: LitI2_Byte &HFF
  loc_5F3628: FLdPrThis
  loc_5F3629: VCallAd Control_ID_cmdNext
  loc_5F362C: FStAdFunc var_88
  loc_5F362F: FLdPr var_88
  loc_5F3632: Me.Visible = from_stack_1b
  loc_5F3637: FFree1Ad var_88
  loc_5F363A: FLdPr Me
  loc_5F363D: MemLdFPR8 global_68
  loc_5F3640: LitI2 365
  loc_5F3643: CR8I2
  loc_5F3644: SubR4
  loc_5F3645: CDateR8
  loc_5F3646: FLdPr Me
  loc_5F3649: MemStFPR8 global_68
  loc_5F364C: FLdPr Me
  loc_5F364F: MemLdFPR8 global_60
  loc_5F3652: LitI2 365
  loc_5F3655: CR8I2
  loc_5F3656: SubR4
  loc_5F3657: CDateR8
  loc_5F3658: FLdPr Me
  loc_5F365B: MemStFPR8 global_60
  loc_5F365E: from_stack_1v = Proc_123_11_676228()
  loc_5F3663: Call InicioGrilla()
  loc_5F3668: Call CargaGrilla()
  loc_5F366D: FLdRfVar var_8A
  loc_5F3670: from_stack_1v = HayDatosAnteriores()
  loc_5F3675: FLdI2 var_8A
  loc_5F3678: BranchF loc_5F3692
  loc_5F367B: LitI2_Byte &HFF
  loc_5F367D: FLdPrThis
  loc_5F367E: VCallAd Control_ID_cmdPrevious
  loc_5F3681: FStAdFunc var_88
  loc_5F3684: FLdPr var_88
  loc_5F3687: Me.Visible = from_stack_1b
  loc_5F368C: FFree1Ad var_88
  loc_5F368F: Branch loc_5F36A6
  loc_5F3692: LitI2_Byte 0
  loc_5F3694: FLdPrThis
  loc_5F3695: VCallAd Control_ID_cmdPrevious
  loc_5F3698: FStAdFunc var_88
  loc_5F369B: FLdPr var_88
  loc_5F369E: Me.Visible = from_stack_1b
  loc_5F36A3: FFree1Ad var_88
  loc_5F36A6: ExitProcHresult
End Sub

Public Sub InicioGrilla() '5F8BE4
  'Data Table: 427C00
  loc_5F8B24: LitVarI4
  loc_5F8B2C: PopAdLdVar
  loc_5F8B2D: FLdPrThis
  loc_5F8B2E: VCallAd Control_ID_Grid1
  loc_5F8B31: FStAdFunc var_98
  loc_5F8B34: FLdPr var_98
  loc_5F8B37: LateIdSt
  loc_5F8B3C: FFree1Ad var_98
  loc_5F8B3F: LitVarI4
  loc_5F8B47: PopAdLdVar
  loc_5F8B48: FLdPrThis
  loc_5F8B49: VCallAd Control_ID_Grid1
  loc_5F8B4C: FStAdFunc var_98
  loc_5F8B4F: FLdPr var_98
  loc_5F8B52: LateIdSt
  loc_5F8B57: FFree1Ad var_98
  loc_5F8B5A: LitVarI4
  loc_5F8B62: PopAdLdVar
  loc_5F8B63: FLdPrThis
  loc_5F8B64: VCallAd Control_ID_Grid1
  loc_5F8B67: FStAdFunc var_98
  loc_5F8B6A: FLdPr var_98
  loc_5F8B6D: LateIdSt
  loc_5F8B72: FFree1Ad var_98
  loc_5F8B75: LitVarI4
  loc_5F8B7D: PopAdLdVar
  loc_5F8B7E: LitVar_FALSE
  loc_5F8B82: PopAdLdVar
  loc_5F8B83: FLdPrThis
  loc_5F8B84: VCallAd Control_ID_Grid1
  loc_5F8B87: FStAdFunc var_98
  loc_5F8B8A: FLdPr var_98
  loc_5F8B8D: LateIdCallSt
  loc_5F8B95: FFree1Ad var_98
  loc_5F8B98: LitVarStr var_94, "Arial"
  loc_5F8B9D: PopAdLdVar
  loc_5F8B9E: FLdPrThis
  loc_5F8B9F: VCallAd Control_ID_Grid1
  loc_5F8BA2: FStAdFunc var_98
  loc_5F8BA5: FLdPr var_98
  loc_5F8BA8: LateIdLdVar var_B8 DispID_-512 -1
  loc_5F8BAF: CastAdVar Me
  loc_5F8BB3: FStAdFunc var_BC
  loc_5F8BB6: FLdPr var_BC
  loc_5F8BB9: LateIdSt
  loc_5F8BBE: FFreeAd var_98 = ""
  loc_5F8BC5: FFree1Var var_B8 = ""
  loc_5F8BC8: LitI2_Byte &HE
  loc_5F8BCA: CR8I2
  loc_5F8BCB: CVarR4
  loc_5F8BCF: PopAdLdVar
  loc_5F8BD0: FLdPrThis
  loc_5F8BD1: VCallAd Control_ID_Grid1
  loc_5F8BD4: FStAdFunc var_98
  loc_5F8BD7: FLdPr var_98
  loc_5F8BDA: LateIdSt
  loc_5F8BDF: FFree1Ad var_98
  loc_5F8BE2: ExitProcHresult
End Sub

Public Sub CargaGrilla() '6493C0
  'Data Table: 427C00
  loc_649168: FLdPrThis
  loc_649169: VCallAd Control_ID_Grid1
  loc_64916C: FStAdFunc var_8C
  loc_64916F: FLdPr var_8C
  loc_649172: LateIdCall
  loc_64917A: FFree1Ad var_8C
  loc_64917D: LitVarStr var_9C, "Periodo"
  loc_649182: PopAdLdVar
  loc_649183: FLdPrThis
  loc_649184: VCallAd Control_ID_Grid1
  loc_649187: FStAdFunc var_8C
  loc_64918A: FLdPr var_8C
  loc_64918D: LateIdSt
  loc_649192: FFree1Ad var_8C
  loc_649195: LitVarI4
  loc_64919D: PopAdLdVar
  loc_64919E: LitI4 4
  loc_6491A3: CI2I4
  loc_6491A4: CVarI2 var_AC
  loc_6491A7: PopAdLdVar
  loc_6491A8: FLdPrThis
  loc_6491A9: VCallAd Control_ID_Grid1
  loc_6491AC: FStAdFunc var_8C
  loc_6491AF: FLdPr var_8C
  loc_6491B2: LateIdCallSt
  loc_6491BA: FFree1Ad var_8C
  loc_6491BD: LitVarI4
  loc_6491C5: PopAdLdVar
  loc_6491C6: FLdPrThis
  loc_6491C7: VCallAd Control_ID_Grid1
  loc_6491CA: FStAdFunc var_8C
  loc_6491CD: FLdPr var_8C
  loc_6491D0: LateIdLdVar var_BC DispID_5 -32767
  loc_6491D7: CR8Var
  loc_6491D9: CI4R8
  loc_6491DA: CVarI4
  loc_6491DE: PopAdLdVar
  loc_6491DF: FLdPrThis
  loc_6491E0: VCallAd Control_ID_Grid1
  loc_6491E3: FStAdFunc var_C0
  loc_6491E6: FLdPr var_C0
  loc_6491E9: LateIdCallSt
  loc_6491F1: FFreeAd var_8C = ""
  loc_6491F8: FFree1Var var_BC = ""
  loc_6491FB: LitI4 0
  loc_649200: FLdPr Me
  loc_649203: MemLdStr global_52
  loc_649206: LitI2_Byte 1
  loc_649208: FnUBound
  loc_64920A: FLdPr Me
  loc_64920D: MemLdRfVar from_stack_1.global_56
  loc_649210: Redim
  loc_64921A: LitI2_Byte 1
  loc_64921C: CUI1I2
  loc_64921E: FLdRfVar var_86
  loc_649221: FLdPr Me
  loc_649224: MemLdStr global_52
  loc_649227: LitI2_Byte 1
  loc_649229: FnUBound
  loc_64922B: CUI1I4
  loc_64922D: ForUI1 var_C4
  loc_649233: LitVarI2 var_BC, 2
  loc_649238: LitI4 6
  loc_64923D: FLdUI1
  loc_649241: CI4UI1
  loc_649242: FLdPr Me
  loc_649245: MemLdStr global_52
  loc_649248: Ary1LdPr
  loc_649249: MemLdStr global_0
  loc_64924C: ImpAdCallI2 Mid$(, , )
  loc_649251: FStStrNoPop var_C8
  loc_649254: ImpAdCallFPR4 push Val()
  loc_649259: FStFPR8 var_204
  loc_64925C: LitI4 0
  loc_649261: LitI4 &HB
  loc_649266: FLdRfVar var_CC
  loc_649269: Redim
  loc_649273: LitVarStr var_AC, "Enero"
  loc_649278: LitI4 0
  loc_64927D: ILdRf var_CC
  loc_649280: Ary1StVarCopy
  loc_649282: LitVarStr var_DC, "Febrero"
  loc_649287: LitI4 1
  loc_64928C: ILdRf var_CC
  loc_64928F: Ary1StVarCopy
  loc_649291: LitVarStr var_EC, "Marzo"
  loc_649296: LitI4 2
  loc_64929B: ILdRf var_CC
  loc_64929E: Ary1StVarCopy
  loc_6492A0: LitVarStr var_FC, "Abril"
  loc_6492A5: LitI4 3
  loc_6492AA: ILdRf var_CC
  loc_6492AD: Ary1StVarCopy
  loc_6492AF: LitVarStr var_10C, "Mayo"
  loc_6492B4: LitI4 4
  loc_6492B9: ILdRf var_CC
  loc_6492BC: Ary1StVarCopy
  loc_6492BE: LitVarStr var_11C, "Junio"
  loc_6492C3: LitI4 5
  loc_6492C8: ILdRf var_CC
  loc_6492CB: Ary1StVarCopy
  loc_6492CD: LitVarStr var_12C, "Julio"
  loc_6492D2: LitI4 6
  loc_6492D7: ILdRf var_CC
  loc_6492DA: Ary1StVarCopy
  loc_6492DC: LitVarStr var_13C, "Agosto"
  loc_6492E1: LitI4 7
  loc_6492E6: ILdRf var_CC
  loc_6492E9: Ary1StVarCopy
  loc_6492EB: LitVarStr var_14C, "Septiembre"
  loc_6492F0: LitI4 8
  loc_6492F5: ILdRf var_CC
  loc_6492F8: Ary1StVarCopy
  loc_6492FA: LitVarStr var_15C, "Octubre"
  loc_6492FF: LitI4 9
  loc_649304: ILdRf var_CC
  loc_649307: Ary1StVarCopy
  loc_649309: LitVarStr var_16C, "Noviembre"
  loc_64930E: LitI4 &HA
  loc_649313: ILdRf var_CC
  loc_649316: Ary1StVarCopy
  loc_649318: LitVarStr var_17C, "Diciembre"
  loc_64931D: LitI4 &HB
  loc_649322: ILdRf var_CC
  loc_649325: Ary1StVarCopy
  loc_649327: FLdRfVar var_CC
  loc_64932A: FLdFPR8 var_204
  loc_64932D: PopFPR4
  loc_64932E: FLdRfVar var_18C
  loc_649331: ImpAdCallFPR4  = Choose(, )
  loc_649336: FLdRfVar var_CC
  loc_649339: Erase
  loc_64933A: FLdRfVar var_18C
  loc_64933D: LitVarStr var_19C, " / "
  loc_649342: ConcatVar var_1AC
  loc_649346: LitVarI2 var_1CC, 4
  loc_64934B: LitI4 1
  loc_649350: FLdUI1
  loc_649354: CI4UI1
  loc_649355: FLdPr Me
  loc_649358: MemLdStr global_52
  loc_64935B: Ary1LdPr
  loc_64935C: MemLdStr global_0
  loc_64935F: ImpAdCallI2 Mid$(, , )
  loc_649364: CVarStr var_1DC
  loc_649367: ConcatVar var_1EC
  loc_64936B: CStrVarTmp
  loc_64936C: CVarStr var_1FC
  loc_64936F: PopAdLdVar
  loc_649370: FLdPrThis
  loc_649371: VCallAd Control_ID_Grid1
  loc_649374: FStAdFunc var_8C
  loc_649377: FLdPr var_8C
  loc_64937A: LateIdCall
  loc_649382: FFree1Str var_C8
  loc_649385: FFree1Ad var_8C
  loc_649388: FFreeVar var_BC = "": var_18C = "": var_1CC = "": var_1AC = "": var_1DC = "": var_1EC = ""
  loc_649399: FLdUI1
  loc_64939D: CI4UI1
  loc_64939E: FLdPr Me
  loc_6493A1: MemLdStr global_52
  loc_6493A4: Ary1LdRf
  loc_6493A5: FLdUI1
  loc_6493A9: CI4UI1
  loc_6493AA: FLdPr Me
  loc_6493AD: MemLdStr global_56
  loc_6493B0: Ary1LdRf
  loc_6493B1: AssignRecord
  loc_6493B5: FLdRfVar var_86
  loc_6493B8: NextUI1
  loc_6493BE: ExitProcHresult
End Sub

Public Function HayDatosAnteriores() '5E4918
  'Data Table: 427C00
  loc_5E48A4: LitI2_Byte &HFF
  loc_5E48A6: FStI2 var_86
  loc_5E48A9: FLdPr Me
  loc_5E48AC: MemLdFPR8 global_68
  loc_5E48AF: LitI2 365
  loc_5E48B2: CR8I2
  loc_5E48B3: SubR4
  loc_5E48B4: CDateR8
  loc_5E48B5: FLdPr Me
  loc_5E48B8: MemStFPR8 global_68
  loc_5E48BB: FLdPr Me
  loc_5E48BE: MemLdFPR8 global_60
  loc_5E48C1: LitI2 365
  loc_5E48C4: CR8I2
  loc_5E48C5: SubR4
  loc_5E48C6: CDateR8
  loc_5E48C7: FLdPr Me
  loc_5E48CA: MemStFPR8 global_60
  loc_5E48CD: from_stack_1v = Proc_123_11_676228()
  loc_5E48D2: LitI4 1
  loc_5E48D7: FLdPr Me
  loc_5E48DA: MemLdStr global_52
  loc_5E48DD: Ary1LdPr
  loc_5E48DE: MemLdStr global_0
  loc_5E48E1: LitStr vbNullString
  loc_5E48E4: EqStr
  loc_5E48E6: BranchF loc_5E48EE
  loc_5E48E9: LitI2_Byte 0
  loc_5E48EB: FStI2 var_86
  loc_5E48EE: FLdPr Me
  loc_5E48F1: MemLdFPR8 global_68
  loc_5E48F4: LitI2 365
  loc_5E48F7: CR8I2
  loc_5E48F8: AddR8
  loc_5E48F9: CDateR8
  loc_5E48FA: FLdPr Me
  loc_5E48FD: MemStFPR8 global_68
  loc_5E4900: FLdPr Me
  loc_5E4903: MemLdFPR8 global_60
  loc_5E4906: LitI2 365
  loc_5E4909: CR8I2
  loc_5E490A: AddR8
  loc_5E490B: CDateR8
  loc_5E490C: FLdPr Me
  loc_5E490F: MemStFPR8 global_60
  loc_5E4912: ExitProcCbHresult
End Function

Private Function Proc_123_11_676228() '676228
  'Data Table: 427C00
  loc_675E04: LitI4 1
  loc_675E09: LitI4 1
  loc_675E0E: LitVarStr var_C4, "dd/mm/yyyy"
  loc_675E13: FStVarCopyObj var_D4
  loc_675E16: FLdRfVar var_D4
  loc_675E19: FLdPr Me
  loc_675E1C: MemLdRfVar from_stack_1.global_68
  loc_675E1F: CVarRef
  loc_675E24: FLdRfVar var_E4
  loc_675E27: ImpAdCallFPR4  = Format(, )
  loc_675E2C: LitI4 1
  loc_675E31: LitI4 1
  loc_675E36: LitVarStr var_128, "dd/mm/yyyy"
  loc_675E3B: FStVarCopyObj var_138
  loc_675E3E: FLdRfVar var_138
  loc_675E41: FLdPr Me
  loc_675E44: MemLdRfVar from_stack_1.global_68
  loc_675E47: CVarRef
  loc_675E4C: FLdRfVar var_148
  loc_675E4F: ImpAdCallFPR4  = Format(, )
  loc_675E54: LitI4 1
  loc_675E59: LitI4 1
  loc_675E5E: LitVarStr var_194, "dd/mm/yyyy"
  loc_675E63: FStVarCopyObj var_1A4
  loc_675E66: FLdRfVar var_1A4
  loc_675E69: FLdPr Me
  loc_675E6C: MemLdRfVar from_stack_1.global_68
  loc_675E6F: CVarRef
  loc_675E74: FLdRfVar var_1B4
  loc_675E77: ImpAdCallFPR4  = Format(, )
  loc_675E7C: LitVarI2 var_108, 4
  loc_675E81: LitI4 7
  loc_675E86: FLdRfVar var_E4
  loc_675E89: CStrVarVal var_E8
  loc_675E8D: ImpAdCallI2 Mid$(, , )
  loc_675E92: FStStrNoPop var_170
  loc_675E95: LitVarI2 var_16C, 2
  loc_675E9A: LitI4 4
  loc_675E9F: FLdRfVar var_148
  loc_675EA2: CStrVarVal var_14C
  loc_675EA6: ImpAdCallI2 Mid$(, , )
  loc_675EAB: FStStrNoPop var_174
  loc_675EAE: ConcatStr
  loc_675EAF: FStStrNoPop var_1DC
  loc_675EB2: LitVarI2 var_1D8, 2
  loc_675EB7: LitI4 1
  loc_675EBC: FLdRfVar var_1B4
  loc_675EBF: CStrVarVal var_1B8
  loc_675EC3: ImpAdCallI2 Mid$(, , )
  loc_675EC8: FStStrNoPop var_1E0
  loc_675ECB: ConcatStr
  loc_675ECC: FStStrNoPop var_1E4
  loc_675ECF: LitStr "000000"
  loc_675ED2: ConcatStr
  loc_675ED3: FStStr var_8C
  loc_675ED6: FFreeStr var_E8 = "": var_14C = "": var_170 = "": var_174 = "": var_1B8 = "": var_1DC = "": var_1E0 = ""
  loc_675EE9: FFreeVar var_D4 = "": var_E4 = "": var_108 = "": var_138 = "": var_148 = "": var_16C = "": var_1A4 = "": var_1B4 = ""
  loc_675EFE: LitI4 1
  loc_675F03: LitI4 1
  loc_675F08: LitVarStr var_C4, "dd/mm/yyyy"
  loc_675F0D: FStVarCopyObj var_D4
  loc_675F10: FLdRfVar var_D4
  loc_675F13: FLdPr Me
  loc_675F16: MemLdRfVar from_stack_1.global_60
  loc_675F19: CVarRef
  loc_675F1E: FLdRfVar var_E4
  loc_675F21: ImpAdCallFPR4  = Format(, )
  loc_675F26: LitI4 1
  loc_675F2B: LitI4 1
  loc_675F30: LitVarStr var_128, "dd/mm/yyyy"
  loc_675F35: FStVarCopyObj var_138
  loc_675F38: FLdRfVar var_138
  loc_675F3B: FLdPr Me
  loc_675F3E: MemLdRfVar from_stack_1.global_60
  loc_675F41: CVarRef
  loc_675F46: FLdRfVar var_148
  loc_675F49: ImpAdCallFPR4  = Format(, )
  loc_675F4E: LitI4 1
  loc_675F53: LitI4 1
  loc_675F58: LitVarStr var_194, "dd/mm/yyyy"
  loc_675F5D: FStVarCopyObj var_1A4
  loc_675F60: FLdRfVar var_1A4
  loc_675F63: FLdPr Me
  loc_675F66: MemLdRfVar from_stack_1.global_60
  loc_675F69: CVarRef
  loc_675F6E: FLdRfVar var_1B4
  loc_675F71: ImpAdCallFPR4  = Format(, )
  loc_675F76: ILdRf var_8C
  loc_675F79: LitVarI2 var_108, 4
  loc_675F7E: LitI4 7
  loc_675F83: FLdRfVar var_E4
  loc_675F86: CStrVarVal var_E8
  loc_675F8A: ImpAdCallI2 Mid$(, , )
  loc_675F8F: FStStrNoPop var_14C
  loc_675F92: ConcatStr
  loc_675F93: FStStrNoPop var_174
  loc_675F96: LitVarI2 var_16C, 2
  loc_675F9B: LitI4 4
  loc_675FA0: FLdRfVar var_148
  loc_675FA3: CStrVarVal var_170
  loc_675FA7: ImpAdCallI2 Mid$(, , )
  loc_675FAC: FStStrNoPop var_1B8
  loc_675FAF: ConcatStr
  loc_675FB0: FStStrNoPop var_1E0
  loc_675FB3: LitVarI2 var_1D8, 2
  loc_675FB8: LitI4 1
  loc_675FBD: FLdRfVar var_1B4
  loc_675FC0: CStrVarVal var_1DC
  loc_675FC4: ImpAdCallI2 Mid$(, , )
  loc_675FC9: FStStrNoPop var_1E4
  loc_675FCC: ConcatStr
  loc_675FCD: FStStrNoPop var_1E8
  loc_675FD0: LitStr "235959"
  loc_675FD3: ConcatStr
  loc_675FD4: FStStr var_8C
  loc_675FD7: FFreeStr var_E8 = "": var_14C = "": var_170 = "": var_174 = "": var_1B8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_675FEC: FFreeVar var_D4 = "": var_E4 = "": var_108 = "": var_138 = "": var_148 = "": var_16C = "": var_1A4 = "": var_1B4 = ""
  loc_676001: FLdRfVar var_1EE
  loc_676004: FLdRfVar var_88
  loc_676007: FLdRfVar var_8C
  loc_67600A: LitStr "N"
  loc_67600D: FStStrCopy var_E8
  loc_676010: FLdRfVar var_E8
  loc_676013: FLdRfVar var_1EC
  loc_676016: ImpAdLdRf MemVar_74C760
  loc_676019: NewIfNullPr Formx
  loc_67601C: from_stack_1v = Formx.global_4589716Get()
  loc_676021: FLdPr var_1EC
  loc_676024: Formx.FontSize = from_stack_1s
  loc_676029: FLdI2 var_1EE
  loc_67602C: NotI4
  loc_67602D: FFree1Str var_E8
  loc_676030: FFree1Ad var_1EC
  loc_676033: BranchF loc_676062
  loc_676036: FLdRfVar var_D4
  loc_676039: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67603E: FLdRfVar var_D4
  loc_676041: CBoolVarNull
  loc_676043: FFree1Var var_D4 = ""
  loc_676046: BranchF loc_67605F
  loc_676049: ILdRf Me
  loc_67604C: FStAdNoPop
  loc_676050: ImpAdLdRf MemVar_7520D4
  loc_676053: NewIfNullPr Global
  loc_676056: Global.Unload from_stack_1
  loc_67605B: FFree1Ad var_1EC
  loc_67605E: ExitProcHresult
  loc_67605F: Branch loc_676001
  loc_676062: LitI4 1
  loc_676067: FStR4 var_A4
  loc_67606A: LitVarI2 var_B4, 1
  loc_67606F: FStVar var_9C
  loc_676073: LitI4 0
  loc_676078: FLdRfVar var_9C
  loc_67607B: CI4Var
  loc_67607D: FLdPr Me
  loc_676080: MemLdRfVar from_stack_1.global_52
  loc_676083: RedimPreserve
  loc_67608D: ILdRf var_88
  loc_676090: ImpAdCallFPR4 push Val()
  loc_676095: CR8R8
  loc_676096: LitI2_Byte 0
  loc_676098: CR8I2
  loc_676099: EqR4
  loc_67609A: BranchF loc_6760B1
  loc_67609D: LitStr vbNullString
  loc_6760A0: LitI4 1
  loc_6760A5: FLdPr Me
  loc_6760A8: MemLdStr global_52
  loc_6760AB: Ary1LdPr
  loc_6760AC: MemStStrCopy
  loc_6760B0: ExitProcHresult
  loc_6760B1: LitVarI2 var_D4, 10
  loc_6760B6: ILdRf var_A4
  loc_6760B9: FLdRfVar var_88
  loc_6760BC: CVarRef
  loc_6760C1: FLdRfVar var_E4
  loc_6760C4: ImpAdCallFPR4  = Mid(, , )
  loc_6760C9: FLdRfVar var_E4
  loc_6760CC: CStrVarTmp
  loc_6760CD: FStStrNoPop var_E8
  loc_6760D0: FLdRfVar var_9C
  loc_6760D3: CI4Var
  loc_6760D5: FLdPr Me
  loc_6760D8: MemLdStr global_52
  loc_6760DB: Ary1LdPr
  loc_6760DC: MemStStrCopy
  loc_6760E0: FFree1Str var_E8
  loc_6760E3: FFreeVar var_D4 = ""
  loc_6760EA: ILdRf var_A4
  loc_6760ED: LitI4 &HA
  loc_6760F2: AddI4
  loc_6760F3: FStR4 var_A4
  loc_6760F6: LitVarI2 var_D4, 8
  loc_6760FB: ILdRf var_A4
  loc_6760FE: FLdRfVar var_88
  loc_676101: CVarRef
  loc_676106: FLdRfVar var_E4
  loc_676109: ImpAdCallFPR4  = Mid(, , )
  loc_67610E: FLdRfVar var_E4
  loc_676111: CStrVarTmp
  loc_676112: FStStrNoPop var_E8
  loc_676115: FLdRfVar var_9C
  loc_676118: CI4Var
  loc_67611A: FLdPr Me
  loc_67611D: MemLdStr global_52
  loc_676120: Ary1LdPr
  loc_676121: MemStStrCopy
  loc_676125: FFree1Str var_E8
  loc_676128: FFreeVar var_D4 = ""
  loc_67612F: ILdRf var_A4
  loc_676132: LitI4 8
  loc_676137: AddI4
  loc_676138: FStR4 var_A4
  loc_67613B: LitVarI2 var_D4, 10
  loc_676140: ILdRf var_A4
  loc_676143: FLdRfVar var_88
  loc_676146: CVarRef
  loc_67614B: FLdRfVar var_E4
  loc_67614E: ImpAdCallFPR4  = Mid(, , )
  loc_676153: FLdRfVar var_E4
  loc_676156: CStrVarTmp
  loc_676157: FStStrNoPop var_E8
  loc_67615A: FLdRfVar var_9C
  loc_67615D: CI4Var
  loc_67615F: FLdPr Me
  loc_676162: MemLdStr global_52
  loc_676165: Ary1LdPr
  loc_676166: MemStStrCopy
  loc_67616A: FFree1Str var_E8
  loc_67616D: FFreeVar var_D4 = ""
  loc_676174: ILdRf var_A4
  loc_676177: LitI4 &HA
  loc_67617C: AddI4
  loc_67617D: FStR4 var_A4
  loc_676180: LitVarI2 var_D4, 8
  loc_676185: ILdRf var_A4
  loc_676188: FLdRfVar var_88
  loc_67618B: CVarRef
  loc_676190: FLdRfVar var_E4
  loc_676193: ImpAdCallFPR4  = Mid(, , )
  loc_676198: FLdRfVar var_E4
  loc_67619B: CStrVarTmp
  loc_67619C: FStStrNoPop var_E8
  loc_67619F: FLdRfVar var_9C
  loc_6761A2: CI4Var
  loc_6761A4: FLdPr Me
  loc_6761A7: MemLdStr global_52
  loc_6761AA: Ary1LdPr
  loc_6761AB: MemStStrCopy
  loc_6761AF: FFree1Str var_E8
  loc_6761B2: FFreeVar var_D4 = ""
  loc_6761B9: ILdRf var_A4
  loc_6761BC: LitI4 9
  loc_6761C1: AddI4
  loc_6761C2: FStR4 var_A4
  loc_6761C5: FLdRfVar var_9C
  loc_6761C8: LitVarI2 var_B4, 1
  loc_6761CD: AddVar var_D4
  loc_6761D1: FStVar var_9C
  loc_6761D5: ILdRf var_A4
  loc_6761D8: CVarI4
  loc_6761DC: HardType
  loc_6761DD: FLdRfVar var_88
  loc_6761E0: CVarRef
  loc_6761E5: FLdRfVar var_D4
  loc_6761E8: ImpAdCallFPR4  = Trim()
  loc_6761ED: FLdRfVar var_D4
  loc_6761F0: FnLenVar var_E4
  loc_6761F4: GtVarBool
  loc_6761F6: FFree1Var var_D4 = ""
  loc_6761F9: BranchF loc_6761FF
  loc_6761FC: Branch loc_67621C
  loc_6761FF: LitI4 0
  loc_676204: FLdRfVar var_9C
  loc_676207: CI4Var
  loc_676209: FLdPr Me
  loc_67620C: MemLdRfVar from_stack_1.global_52
  loc_67620F: RedimPreserve
  loc_676219: Branch loc_6760B1
  loc_67621C: FLdPr Me
  loc_67621F: MemLdRfVar from_stack_1.global_52
  loc_676222: from_stack_2v = Proc_123_12_5F84E8(from_stack_1v)
  loc_676227: ExitProcHresult
End Function

Private Function Proc_123_12_5F84E8(arg_C) '5F84E8
  'Data Table: 427C00
  loc_5F8440: LitI2_Byte 1
  loc_5F8442: FLdRfVar var_86
  loc_5F8445: ILdI4 arg_C
  loc_5F8448: LitI2_Byte 1
  loc_5F844A: FnUBound
  loc_5F844C: CI2I4
  loc_5F844D: ForI2 var_A0
  loc_5F8453: LitI2_Byte 1
  loc_5F8455: FLdRfVar var_88
  loc_5F8458: ILdI4 arg_C
  loc_5F845B: LitI2_Byte 1
  loc_5F845D: FnUBound
  loc_5F845F: LitI4 1
  loc_5F8464: SubI4
  loc_5F8465: CI2I4
  loc_5F8466: ForI2 var_A4
  loc_5F846C: FLdRfVar var_AE
  loc_5F846F: FLdI2 var_88
  loc_5F8472: LitI2_Byte 1
  loc_5F8474: AddI2
  loc_5F8475: CI4UI1
  loc_5F8476: ILdI4 arg_C
  loc_5F8479: AryLock
  loc_5F847C: Ary1LdRf
  loc_5F847D: FLdI2 var_88
  loc_5F8480: CI4UI1
  loc_5F8481: ILdI4 arg_C
  loc_5F8484: AryLock
  loc_5F8487: Ary1LdRf
  loc_5F8488: from_stack_3v = Proc_123_13_62EF4C(from_stack_1v, from_stack_2v)
  loc_5F848D: AryUnlock
  loc_5F8490: AryUnlock
  loc_5F8493: FLdI2 var_AE
  loc_5F8496: LitI2_Byte 0
  loc_5F8498: GtI2
  loc_5F8499: BranchF loc_5F84D4
  loc_5F849C: FLdI2 var_88
  loc_5F849F: CI4UI1
  loc_5F84A0: ILdI4 arg_C
  loc_5F84A3: Ary1LdRf
  loc_5F84A4: FLdRfVar var_9C
  loc_5F84A7: AssignRecord
  loc_5F84AB: FLdI2 var_88
  loc_5F84AE: LitI2_Byte 1
  loc_5F84B0: AddI2
  loc_5F84B1: CI4UI1
  loc_5F84B2: ILdI4 arg_C
  loc_5F84B5: Ary1LdRf
  loc_5F84B6: FLdI2 var_88
  loc_5F84B9: CI4UI1
  loc_5F84BA: ILdI4 arg_C
  loc_5F84BD: Ary1LdRf
  loc_5F84BE: AssignRecord
  loc_5F84C2: FLdRfVar var_9C
  loc_5F84C5: FLdI2 var_88
  loc_5F84C8: LitI2_Byte 1
  loc_5F84CA: AddI2
  loc_5F84CB: CI4UI1
  loc_5F84CC: ILdI4 arg_C
  loc_5F84CF: Ary1LdRf
  loc_5F84D0: AssignRecord
  loc_5F84D4: FLdRfVar var_88
  loc_5F84D7: NextI2 var_A4, loc_5F846C
  loc_5F84DC: FLdRfVar var_86
  loc_5F84DF: NextI2 var_A0, loc_5F8453
  loc_5F84E4: ExitProcHresult
  loc_5F84E5: FStFPR4 arg_3F
End Function

Private Function Proc_123_13_62EF4C(arg_C, arg_10) '62EF4C
  'Data Table: 427C00
  loc_62EDC8: LitVarI2 var_A8, 2
  loc_62EDCD: LitI4 9
  loc_62EDD2: FMemLdR4 arg_C(0)
  loc_62EDD7: ImpAdCallI2 Mid$(, , )
  loc_62EDDC: FStStr var_168
  loc_62EDDF: LitVarI2 var_CC, 2
  loc_62EDE4: LitI4 6
  loc_62EDE9: FMemLdR4 arg_C(0)
  loc_62EDEE: ImpAdCallI2 Mid$(, , )
  loc_62EDF3: FStStr var_16C
  loc_62EDF6: LitVarI2 var_F0, 4
  loc_62EDFB: LitI4 1
  loc_62EE00: FMemLdR4 arg_C(0)
  loc_62EE05: ImpAdCallI2 Mid$(, , )
  loc_62EE0A: FStStr var_170
  loc_62EE0D: LitVarI2 var_114, 2
  loc_62EE12: LitI4 9
  loc_62EE17: FMemLdR4 arg_10(0)
  loc_62EE1C: ImpAdCallI2 Mid$(, , )
  loc_62EE21: FStStr var_174
  loc_62EE24: LitVarI2 var_138, 2
  loc_62EE29: LitI4 6
  loc_62EE2E: FMemLdR4 arg_10(0)
  loc_62EE33: ImpAdCallI2 Mid$(, , )
  loc_62EE38: FStStr var_178
  loc_62EE3B: LitVarI2 var_15C, 4
  loc_62EE40: LitI4 1
  loc_62EE45: FMemLdR4 arg_10(0)
  loc_62EE4A: ImpAdCallI2 Mid$(, , )
  loc_62EE4F: FStStrNoPop var_160
  loc_62EE52: CI2Str
  loc_62EE54: FLdZeroAd var_178
  loc_62EE57: FStStrNoPop var_13C
  loc_62EE5A: CI2Str
  loc_62EE5C: FLdZeroAd var_174
  loc_62EE5F: FStStrNoPop var_118
  loc_62EE62: CI2Str
  loc_62EE64: FLdZeroAd var_170
  loc_62EE67: FStStrNoPop var_F4
  loc_62EE6A: CI2Str
  loc_62EE6C: FLdZeroAd var_16C
  loc_62EE6F: FStStrNoPop var_D0
  loc_62EE72: CI2Str
  loc_62EE74: FLdZeroAd var_168
  loc_62EE77: FStStrNoPop var_AC
  loc_62EE7A: CI2Str
  loc_62EE7C: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_62EE81: FStI2 var_162
  loc_62EE84: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_62EE9D: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = ""
  loc_62EEAC: FLdI2 var_162
  loc_62EEAF: LitI2_Byte &HFF
  loc_62EEB1: EqI2
  loc_62EEB2: BranchF loc_62EEBD
  loc_62EEB5: LitI2_Byte &HFF
  loc_62EEB7: FStI2 var_86
  loc_62EEBA: Branch loc_62EF44
  loc_62EEBD: FLdI2 var_162
  loc_62EEC0: LitI2_Byte 0
  loc_62EEC2: EqI2
  loc_62EEC3: BranchF loc_62EF36
  loc_62EEC6: LitStr vbNullString
  loc_62EEC9: LitStr ":"
  loc_62EECC: FMemLdR4 arg_C(8)
  loc_62EED1: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_62EED6: FStStr var_F4
  loc_62EED9: LitStr vbNullString
  loc_62EEDC: LitStr ":"
  loc_62EEDF: FMemLdR4 arg_10(8)
  loc_62EEE4: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_62EEE9: FStStrNoPop var_D0
  loc_62EEEC: FLdZeroAd var_F4
  loc_62EEEF: FStStrNoPop var_AC
  loc_62EEF2: ImpAdCallI2 Proc_65_3_641944(, )
  loc_62EEF7: FStI2 var_17A
  loc_62EEFA: FFreeStr var_AC = "": var_D0 = ""
  loc_62EF03: FLdI2 var_17A
  loc_62EF06: LitI2_Byte &HFF
  loc_62EF08: EqI2
  loc_62EF09: BranchF loc_62EF14
  loc_62EF0C: LitI2_Byte &HFF
  loc_62EF0E: FStI2 var_86
  loc_62EF11: Branch loc_62EF33
  loc_62EF14: FLdI2 var_17A
  loc_62EF17: LitI2_Byte 0
  loc_62EF19: EqI2
  loc_62EF1A: BranchF loc_62EF25
  loc_62EF1D: LitI2_Byte 0
  loc_62EF1F: FStI2 var_86
  loc_62EF22: Branch loc_62EF33
  loc_62EF25: FLdI2 var_17A
  loc_62EF28: LitI2_Byte 1
  loc_62EF2A: EqI2
  loc_62EF2B: BranchF loc_62EF33
  loc_62EF2E: LitI2_Byte 1
  loc_62EF30: FStI2 var_86
  loc_62EF33: Branch loc_62EF44
  loc_62EF36: FLdI2 var_162
  loc_62EF39: LitI2_Byte 1
  loc_62EF3B: EqI2
  loc_62EF3C: BranchF loc_62EF44
  loc_62EF3F: LitI2_Byte 1
  loc_62EF41: FStI2 var_86
  loc_62EF44: ExitProcCbHresult
  loc_62EF4A: ImpAdLdI4 MemVar_0
End Function
