VERSION 5.00
Begin VB.Form frmTiradaBuzon
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 3030
  ClientTop = 2370
  ClientWidth = 6720
  ClientHeight = 3165
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 60
    Width = 6495
    Height = 3015
    TabIndex = 0
    Begin VB.CommandButton cmdCancelar
      Caption = "&Cancelar"
      Left = 2340
      Top = 2220
      Width = 1935
      Height = 615
      TabIndex = 3
      Cancel = -1  'True
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
    Begin VB.TextBox txtBuzon
      Left = 1500
      Top = 1200
      Width = 3495
      Height = 495
      Text = "0.00"
      TabIndex = 2
      Alignment = 2 'Center
      MaxLength = 10
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
      Left = 4440
      Top = 2220
      Width = 1935
      Height = 615
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
    Begin VB.Label Label2
      Caption = "Tirada a Buzón"
      Left = 60
      Top = 300
      Width = 6255
      Height = 615
      TabIndex = 4
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
End

Attribute VB_Name = "frmTiradaBuzon"

Public sngTotalBilletera As Single


Private Sub txtBuzon_GotFocus() '5DE83C
  'Data Table: 40D730
  loc_5DE7F4: LitI4 0
  loc_5DE7F9: FLdPrThis
  loc_5DE7FA: VCallAd Control_ID_txtBuzon
  loc_5DE7FD: FStAdFunc var_88
  loc_5DE800: FLdPr var_88
  loc_5DE803: Me.SelStart = from_stack_1
  loc_5DE808: FFree1Ad var_88
  loc_5DE80B: FLdRfVar var_8C
  loc_5DE80E: FLdPrThis
  loc_5DE80F: VCallAd Control_ID_txtBuzon
  loc_5DE812: FStAdFunc var_88
  loc_5DE815: FLdPr var_88
  loc_5DE818:  = Me.Text
  loc_5DE81D: ILdRf var_8C
  loc_5DE820: FnLenStr
  loc_5DE821: FLdPrThis
  loc_5DE822: VCallAd Control_ID_txtBuzon
  loc_5DE825: FStAdFunc var_90
  loc_5DE828: FLdPr var_90
  loc_5DE82B: Me.SelLength = from_stack_1
  loc_5DE830: FFree1Str var_8C
  loc_5DE833: FFreeAd var_88 = ""
  loc_5DE83A: ExitProcHresult
End Sub

Private Sub txtBuzon_KeyDown(KeyCode As Integer, Shift As Integer) '5CEE00
  'Data Table: 40D730
  loc_5CEDEC: ILdI2 KeyCode
  loc_5CEDEF: CI4UI1
  loc_5CEDF0: LitI4 &H2E
  loc_5CEDF5: NeI4
  loc_5CEDF6: BranchF loc_5CEDFE
  loc_5CEDF9: LitI2_Byte 0
  loc_5CEDFB: IStI2 KeyCode
  loc_5CEDFE: ExitProcHresult
End Sub

Private Sub txtBuzon_KeyPress(KeyAscii As Integer) '5E0C44
  'Data Table: 40D730
  loc_5E0BE4: ILdI2 KeyAscii
  loc_5E0BE7: FStI2 var_86
  loc_5E0BEA: FLdI2 var_86
  loc_5E0BED: LitI4 &HD
  loc_5E0BF2: CI2I4
  loc_5E0BF3: EqI2
  loc_5E0BF4: BranchF loc_5E0C0C
  loc_5E0BF7: LitI2_Byte 0
  loc_5E0BF9: IStI2 KeyAscii
  loc_5E0BFC: LitI2_Byte &HFF
  loc_5E0BFE: PopTmpLdAd2 var_88
  loc_5E0C01: LitStr "{TAB}"
  loc_5E0C04: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E0C09: Branch loc_5E0C42
  loc_5E0C0C: FLdI2 var_86
  loc_5E0C0F: LitI4 &H30
  loc_5E0C14: CI2I4
  loc_5E0C15: LitI4 &H39
  loc_5E0C1A: CI2I4
  loc_5E0C1B: BetweenI2
  loc_5E0C1D: BranchT loc_5E0C3A
  loc_5E0C20: FLdI2 var_86
  loc_5E0C23: LitI4 &H2E
  loc_5E0C28: CI2I4
  loc_5E0C29: EqI2
  loc_5E0C2A: BranchT loc_5E0C3A
  loc_5E0C2D: FLdI2 var_86
  loc_5E0C30: LitI4 8
  loc_5E0C35: CI2I4
  loc_5E0C36: EqI2
  loc_5E0C37: BranchF loc_5E0C3D
  loc_5E0C3A: Branch loc_5E0C42
  loc_5E0C3D: LitI2_Byte 0
  loc_5E0C3F: IStI2 KeyAscii
  loc_5E0C42: ExitProcHresult
End Sub

Private Sub txtBuzon_KeyUp(KeyCode As Integer, Shift As Integer) '5C9308
  'Data Table: 40D730
  loc_5C9300: LitI2_Byte 0
  loc_5C9302: IStI2 KeyCode
  loc_5C9305: ExitProcHresult
End Sub

Private Sub txtBuzon_LostFocus() '5E7234
  'Data Table: 40D730
  loc_5E71CC: FLdRfVar var_8C
  loc_5E71CF: FLdPrThis
  loc_5E71D0: VCallAd Control_ID_txtBuzon
  loc_5E71D3: FStAdFunc var_88
  loc_5E71D6: FLdPr var_88
  loc_5E71D9:  = Me.Text
  loc_5E71DE: ILdRf var_8C
  loc_5E71E1: ImpAdCallFPR4 push Val()
  loc_5E71E6: FStFPR8 var_DC
  loc_5E71E9: LitI4 1
  loc_5E71EE: LitI4 1
  loc_5E71F3: LitVarStr var_BC, "#####0.00"
  loc_5E71F8: FStVarCopyObj var_CC
  loc_5E71FB: FLdRfVar var_CC
  loc_5E71FE: FLdFPR8 var_DC
  loc_5E7201: CVarR8
  loc_5E7205: ImpAdCallI2 Format$(, )
  loc_5E720A: FStStrNoPop var_D0
  loc_5E720D: FLdPrThis
  loc_5E720E: VCallAd Control_ID_txtBuzon
  loc_5E7211: FStAdFunc var_D4
  loc_5E7214: FLdPr var_D4
  loc_5E7217: Me.Text = from_stack_1
  loc_5E721C: FFreeStr var_8C = ""
  loc_5E7223: FFreeAd var_88 = ""
  loc_5E722A: FFreeVar var_AC = ""
  loc_5E7231: ExitProcHresult
End Sub

Private Sub Form_Load() '636F04
  'Data Table: 40D730
  loc_636D24: FLdRfVar var_90
  loc_636D27: FLdPr Me
  loc_636D2A:  = Me.Width
  loc_636D2F: FLdRfVar var_8C
  loc_636D32: FLdRfVar var_88
  loc_636D35: ImpAdLdRf MemVar_7520D4
  loc_636D38: NewIfNullPr Global
  loc_636D3B:  = Global.Screen
  loc_636D40: FLdPr var_88
  loc_636D43:  = Screen.Width
  loc_636D48: FLdFPR4 var_8C
  loc_636D4B: FLdFPR4 var_90
  loc_636D4E: SubR4
  loc_636D4F: CI4R8
  loc_636D50: LitI4 2
  loc_636D55: IDvI4
  loc_636D56: CR8I4
  loc_636D57: PopFPR4
  loc_636D58: FLdPr Me
  loc_636D5B: Me.Left = from_stack_1s
  loc_636D60: FFree1Ad var_88
  loc_636D63: FLdRfVar var_90
  loc_636D66: FLdPr Me
  loc_636D69:  = Me.Height
  loc_636D6E: FLdRfVar var_8C
  loc_636D71: FLdRfVar var_88
  loc_636D74: ImpAdLdRf MemVar_7520D4
  loc_636D77: NewIfNullPr Global
  loc_636D7A:  = Global.Screen
  loc_636D7F: FLdPr var_88
  loc_636D82:  = Screen.Height
  loc_636D87: FLdFPR4 var_8C
  loc_636D8A: FLdFPR4 var_90
  loc_636D8D: SubR4
  loc_636D8E: CI4R8
  loc_636D8F: LitI4 2
  loc_636D94: IDvI4
  loc_636D95: CR8I4
  loc_636D96: PopFPR4
  loc_636D97: FLdPr Me
  loc_636D9A: Me.Top = from_stack_1s
  loc_636D9F: FFree1Ad var_88
  loc_636DA2: FLdRfVar var_1DC
  loc_636DA5: LitVar_Missing var_1D8
  loc_636DA8: LitVar_Missing var_1B8
  loc_636DAB: LitVar_Missing var_198
  loc_636DAE: LitVar_Missing var_178
  loc_636DB1: LitVar_Missing var_158
  loc_636DB4: LitVar_Missing var_138
  loc_636DB7: LitVar_Missing var_118
  loc_636DBA: LitVar_Missing var_F8
  loc_636DBD: LitVar_Missing var_D8
  loc_636DC0: LitVar_Missing var_B8
  loc_636DC3: LitStr "Tirada a Buzón"
  loc_636DC6: FStStrCopy var_98
  loc_636DC9: FLdRfVar var_98
  loc_636DCC: LitI4 1
  loc_636DD1: PopTmpLdAdStr var_8C
  loc_636DD4: LitI2_Byte &H3B
  loc_636DD6: PopTmpLdAd2 var_92
  loc_636DD9: ImpAdLdRf MemVar_74C7D0
  loc_636DDC: NewIfNullPr clsMsg
  loc_636DDF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_636DE4: ILdRf var_1DC
  loc_636DE7: FLdPrThis
  loc_636DE8: VCallAd Control_ID_Label2
  loc_636DEB: FStAdFunc var_88
  loc_636DEE: FLdPr var_88
  loc_636DF1: Me.Caption = from_stack_1
  loc_636DF6: FFreeStr var_98 = ""
  loc_636DFD: FFree1Ad var_88
  loc_636E00: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_636E17: FLdRfVar var_1DC
  loc_636E1A: LitVar_Missing var_1D8
  loc_636E1D: LitVar_Missing var_1B8
  loc_636E20: LitVar_Missing var_198
  loc_636E23: LitVar_Missing var_178
  loc_636E26: LitVar_Missing var_158
  loc_636E29: LitVar_Missing var_138
  loc_636E2C: LitVar_Missing var_118
  loc_636E2F: LitVar_Missing var_F8
  loc_636E32: LitVar_Missing var_D8
  loc_636E35: LitVar_Missing var_B8
  loc_636E38: LitStr "&Cancelar"
  loc_636E3B: FStStrCopy var_98
  loc_636E3E: FLdRfVar var_98
  loc_636E41: LitI4 2
  loc_636E46: PopTmpLdAdStr var_8C
  loc_636E49: LitI2_Byte &H3B
  loc_636E4B: PopTmpLdAd2 var_92
  loc_636E4E: ImpAdLdRf MemVar_74C7D0
  loc_636E51: NewIfNullPr clsMsg
  loc_636E54: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_636E59: ILdRf var_1DC
  loc_636E5C: FLdPrThis
  loc_636E5D: VCallAd Control_ID_cmdCancelar
  loc_636E60: FStAdFunc var_88
  loc_636E63: FLdPr var_88
  loc_636E66: Me.Caption = from_stack_1
  loc_636E6B: FFreeStr var_98 = ""
  loc_636E72: FFree1Ad var_88
  loc_636E75: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_636E8C: FLdRfVar var_1DC
  loc_636E8F: LitVar_Missing var_1D8
  loc_636E92: LitVar_Missing var_1B8
  loc_636E95: LitVar_Missing var_198
  loc_636E98: LitVar_Missing var_178
  loc_636E9B: LitVar_Missing var_158
  loc_636E9E: LitVar_Missing var_138
  loc_636EA1: LitVar_Missing var_118
  loc_636EA4: LitVar_Missing var_F8
  loc_636EA7: LitVar_Missing var_D8
  loc_636EAA: LitVar_Missing var_B8
  loc_636EAD: LitStr "&Aceptar"
  loc_636EB0: FStStrCopy var_98
  loc_636EB3: FLdRfVar var_98
  loc_636EB6: LitI4 3
  loc_636EBB: PopTmpLdAdStr var_8C
  loc_636EBE: LitI2_Byte &H3B
  loc_636EC0: PopTmpLdAd2 var_92
  loc_636EC3: ImpAdLdRf MemVar_74C7D0
  loc_636EC6: NewIfNullPr clsMsg
  loc_636EC9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_636ECE: ILdRf var_1DC
  loc_636ED1: FLdPrThis
  loc_636ED2: VCallAd Control_ID_cmdAceptar
  loc_636ED5: FStAdFunc var_88
  loc_636ED8: FLdPr var_88
  loc_636EDB: Me.Caption = from_stack_1
  loc_636EE0: FFreeStr var_98 = ""
  loc_636EE7: FFree1Ad var_88
  loc_636EEA: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_636F01: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D0A10
  'Data Table: 40D730
  loc_5D09FC: FLdPrThis
  loc_5D09FD: VCallAd Control_ID_txtBuzon
  loc_5D0A00: FStAdFunc var_88
  loc_5D0A03: FLdPr var_88
  loc_5D0A06: Me.SetFocus
  loc_5D0A0B: FFree1Ad var_88
  loc_5D0A0E: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '648348
  'Data Table: 40D730
  loc_648108: FLdRfVar var_90
  loc_64810B: FLdPrThis
  loc_64810C: VCallAd Control_ID_txtBuzon
  loc_64810F: FStAdFunc var_8C
  loc_648112: FLdPr var_8C
  loc_648115:  = Me.Text
  loc_64811A: FLdZeroAd var_90
  loc_64811D: CVarStr var_A0
  loc_648120: ImpAdCallI2 IsNumeric()
  loc_648125: FFree1Ad var_8C
  loc_648128: FFree1Var var_A0 = ""
  loc_64812B: BranchF loc_6482B8
  loc_64812E: FLdRfVar var_90
  loc_648131: FLdPrThis
  loc_648132: VCallAd Control_ID_txtBuzon
  loc_648135: FStAdFunc var_8C
  loc_648138: FLdPr var_8C
  loc_64813B:  = Me.Text
  loc_648140: ILdRf var_90
  loc_648143: ImpAdCallFPR4 push Val()
  loc_648148: CR4R4
  loc_648149: FLdPr Me
  loc_64814C: MemLdFPR4 sngTotalBilletera
  loc_64814F: LeR8
  loc_648150: FFree1Str var_90
  loc_648153: FFree1Ad var_8C
  loc_648156: BranchF loc_648226
  loc_648159: FLdRfVar var_90
  loc_64815C: FLdPrThis
  loc_64815D: VCallAd Control_ID_txtBuzon
  loc_648160: FStAdFunc var_8C
  loc_648163: FLdPr var_8C
  loc_648166:  = Me.Text
  loc_64816B: ILdRf var_90
  loc_64816E: ImpAdCallFPR4 push Val()
  loc_648173: FStFPR8 var_E8
  loc_648176: LitI4 1
  loc_64817B: LitI4 1
  loc_648180: LitVarStr var_C0, "000000000"
  loc_648185: FStVarCopyObj var_D0
  loc_648188: FLdRfVar var_D0
  loc_64818B: FLdFPR8 var_E8
  loc_64818E: ImpAdLdFPR4 MemVar_74C2E0
  loc_648191: MulR8
  loc_648192: CVarR8
  loc_648196: FLdRfVar var_E0
  loc_648199: ImpAdCallFPR4  = Format(, )
  loc_64819E: FLdRfVar var_E0
  loc_6481A1: CStrVarTmp
  loc_6481A2: FStStr var_88
  loc_6481A5: FFree1Str var_90
  loc_6481A8: FFree1Ad var_8C
  loc_6481AB: FFreeVar var_A0 = "": var_D0 = ""
  loc_6481B4: FLdRfVar var_A0
  loc_6481B7: ILdRf var_88
  loc_6481BA: FLdRfVar var_8C
  loc_6481BD: ImpAdLdRf MemVar_74C760
  loc_6481C0: NewIfNullPr Formx
  loc_6481C3: from_stack_1v = Formx.global_4589716Get()
  loc_6481C8: FLdPr var_8C
  loc_6481CB: Call 0.Method_arg_1FC ()
  loc_6481D0: FLdRfVar var_A0
  loc_6481D3: NotVar var_D0
  loc_6481D7: CBoolVarNull
  loc_6481D9: FFree1Ad var_8C
  loc_6481DC: FFree1Var var_A0 = ""
  loc_6481DF: BranchF loc_64820E
  loc_6481E2: FLdRfVar var_A0
  loc_6481E5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6481EA: FLdRfVar var_A0
  loc_6481ED: CBoolVarNull
  loc_6481EF: FFree1Var var_A0 = ""
  loc_6481F2: BranchF loc_64820B
  loc_6481F5: ILdRf Me
  loc_6481F8: FStAdNoPop
  loc_6481FC: ImpAdLdRf MemVar_7520D4
  loc_6481FF: NewIfNullPr Global
  loc_648202: Global.Unload from_stack_1
  loc_648207: FFree1Ad var_8C
  loc_64820A: ExitProcHresult
  loc_64820B: Branch loc_6481B4
  loc_64820E: ILdRf Me
  loc_648211: FStAdNoPop
  loc_648215: ImpAdLdRf MemVar_7520D4
  loc_648218: NewIfNullPr Global
  loc_64821B: Global.Unload from_stack_1
  loc_648220: FFree1Ad var_8C
  loc_648223: Branch loc_6482B5
  loc_648226: FLdRfVar var_1E4
  loc_648229: LitVar_Missing var_1E0
  loc_64822C: LitVar_Missing var_1C0
  loc_64822F: LitVar_Missing var_1A0
  loc_648232: LitVar_Missing var_180
  loc_648235: LitVar_Missing var_160
  loc_648238: LitVar_Missing var_140
  loc_64823B: LitVar_Missing var_120
  loc_64823E: LitVar_Missing var_E0
  loc_648241: LitVar_Missing var_D0
  loc_648244: LitVar_Missing var_A0
  loc_648247: LitStr "Debe ingresar un monto no mayor al Total en Billetera. Verifique por favor."
  loc_64824A: FStStrCopy var_90
  loc_64824D: FLdRfVar var_90
  loc_648250: LitI4 4
  loc_648255: PopTmpLdAdStr var_F0
  loc_648258: LitI2_Byte &H3B
  loc_64825A: PopTmpLdAd2 var_EA
  loc_64825D: ImpAdLdRf MemVar_74C7D0
  loc_648260: NewIfNullPr clsMsg
  loc_648263: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_648268: LitVar_Missing var_254
  loc_64826B: LitVar_Missing var_234
  loc_64826E: LitVar_Missing var_214
  loc_648271: LitI4 &H40
  loc_648276: FLdZeroAd var_1E4
  loc_648279: CVarStr var_1F4
  loc_64827C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_648281: FFree1Str var_90
  loc_648284: FFreeVar var_A0 = "": var_D0 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6482A3: FLdPrThis
  loc_6482A4: VCallAd Control_ID_txtBuzon
  loc_6482A7: FStAdFunc var_8C
  loc_6482AA: FLdPr var_8C
  loc_6482AD: Me.SetFocus
  loc_6482B2: FFree1Ad var_8C
  loc_6482B5: Branch loc_648347
  loc_6482B8: FLdRfVar var_1E4
  loc_6482BB: LitVar_Missing var_1E0
  loc_6482BE: LitVar_Missing var_1C0
  loc_6482C1: LitVar_Missing var_1A0
  loc_6482C4: LitVar_Missing var_180
  loc_6482C7: LitVar_Missing var_160
  loc_6482CA: LitVar_Missing var_140
  loc_6482CD: LitVar_Missing var_120
  loc_6482D0: LitVar_Missing var_E0
  loc_6482D3: LitVar_Missing var_D0
  loc_6482D6: LitVar_Missing var_A0
  loc_6482D9: LitStr "Debe ingresar un monto correcto. Verifique por favor."
  loc_6482DC: FStStrCopy var_90
  loc_6482DF: FLdRfVar var_90
  loc_6482E2: LitI4 5
  loc_6482E7: PopTmpLdAdStr var_F0
  loc_6482EA: LitI2_Byte &H3B
  loc_6482EC: PopTmpLdAd2 var_EA
  loc_6482EF: ImpAdLdRf MemVar_74C7D0
  loc_6482F2: NewIfNullPr clsMsg
  loc_6482F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6482FA: LitVar_Missing var_254
  loc_6482FD: LitVar_Missing var_234
  loc_648300: LitVar_Missing var_214
  loc_648303: LitI4 &H40
  loc_648308: FLdZeroAd var_1E4
  loc_64830B: CVarStr var_1F4
  loc_64830E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_648313: FFree1Str var_90
  loc_648316: FFreeVar var_A0 = "": var_D0 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_648335: FLdPrThis
  loc_648336: VCallAd Control_ID_txtBuzon
  loc_648339: FStAdFunc var_8C
  loc_64833C: FLdPr var_8C
  loc_64833F: Me.SetFocus
  loc_648344: FFree1Ad var_8C
  loc_648347: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D1AF8
  'Data Table: 40D730
  loc_5D1AE0: ILdRf Me
  loc_5D1AE3: FStAdNoPop
  loc_5D1AE7: ImpAdLdRf MemVar_7520D4
  loc_5D1AEA: NewIfNullPr Global
  loc_5D1AED: Global.Unload from_stack_1
  loc_5D1AF2: FFree1Ad var_88
  loc_5D1AF5: ExitProcHresult
End Sub

Public Function sngTotalBilleteraGet() '40DB3C
  sngTotalBilleteraGet = sngTotalBilletera
End Function

Public Sub sngTotalBilleteraPut(Value) '40DB4B
  sngTotalBilletera = Value
End Sub
