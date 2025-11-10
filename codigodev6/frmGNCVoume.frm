VERSION 5.00
Begin VB.Form frmGNCVoume
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 7530
  ClientHeight = 3900
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Frame framMeditions
    Left = 120
    Top = 120
    Width = 7215
    Height = 3615
    TabIndex = 0
    Begin VB.CommandButton cmdOk
      Caption = "&Aceptar"
      Left = 1800
      Top = 2400
      Width = 2175
      Height = 855
      TabIndex = 5
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdCancel
      Caption = "&Cancelar"
      Left = 4080
      Top = 2400
      Width = 2175
      Height = 855
      TabIndex = 4
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox txProduct
      Left = 4080
      Top = 1560
      Width = 2175
      Height = 615
      Text = "frmGNCVoume.frx":0000
      TabIndex = 3
      MultiLine = -1  'True
      Alignment = 1 'Right Justify
      MaxLength = 8
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lbM3
      Caption = "M3"
      BackColor = &H989080&
      Left = 6480
      Top = 1560
      Width = 540
      Height = 480
      TabIndex = 6
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lbProduct
      Caption = "Producto GNC"
      Index = 0
      BackColor = &H989080&
      Left = 840
      Top = 1560
      Width = 3255
      Height = 615
      TabIndex = 2
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Carga de Mediciones"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 120
      Top = 360
      Width = 6915
      Height = 495
      TabIndex = 1
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

Attribute VB_Name = "frmGNCVoume"


Private Sub cmdCancel_Click() '5C9420
  'Data Table: 40F29C
  loc_5C9418: from_stack_1v = Proc_151_5_5D3CE0()
  loc_5C941D: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '5C93B0
  'Data Table: 40F29C
  loc_5C93A8: from_stack_1v = Proc_151_4_605410()
  loc_5C93AD: ExitProcHresult
End Sub

Private Sub txProduct_KeyPress(KeyAscii As Integer) '619634
  'Data Table: 40F29C
  loc_619518: ILdI2 KeyAscii
  loc_61951B: LitI2_Byte 8
  loc_61951D: EqI2
  loc_61951E: BranchF loc_619548
  loc_619521: LitI2_Byte 0
  loc_619523: CStrUI1
  loc_619525: FStStrNoPop var_88
  loc_619528: FLdPrThis
  loc_619529: VCallAd Control_ID_txProduct
  loc_61952C: FStAdFunc var_8C
  loc_61952F: FLdPr var_8C
  loc_619532: Me.Text = from_stack_1
  loc_619537: FFree1Str var_88
  loc_61953A: FFree1Ad var_8C
  loc_61953D: LitVar_FALSE
  loc_619541: FStVar var_9C
  loc_619545: Branch loc_619567
  loc_619548: ILdI2 KeyAscii
  loc_61954B: LitI2_Byte &HD
  loc_61954D: EqI2
  loc_61954E: BranchF loc_619559
  loc_619551: from_stack_1v = Proc_151_4_605410()
  loc_619556: Branch loc_619567
  loc_619559: ILdI2 KeyAscii
  loc_61955C: LitI2_Byte &H1B
  loc_61955E: EqI2
  loc_61955F: BranchF loc_619567
  loc_619562: from_stack_1v = Proc_151_5_5D3CE0()
  loc_619567: ILdI2 KeyAscii
  loc_61956A: LitI2_Byte &H30
  loc_61956C: LtI2
  loc_61956D: ILdI2 KeyAscii
  loc_619570: LitI2_Byte &H39
  loc_619572: GtI2
  loc_619573: OrI4
  loc_619574: BranchF loc_61957A
  loc_619577: Branch loc_61962B
  loc_61957A: FLdRfVar var_88
  loc_61957D: FLdPrThis
  loc_61957E: VCallAd Control_ID_txProduct
  loc_619581: FStAdFunc var_8C
  loc_619584: FLdPr var_8C
  loc_619587:  = Me.Text
  loc_61958C: ILdRf var_88
  loc_61958F: LitStr vbNullString
  loc_619592: EqStr
  loc_619594: FFree1Str var_88
  loc_619597: FFree1Ad var_8C
  loc_61959A: BranchF loc_6195A0
  loc_61959D: Branch loc_6195DA
  loc_6195A0: FLdRfVar var_88
  loc_6195A3: FLdPrThis
  loc_6195A4: VCallAd Control_ID_txProduct
  loc_6195A7: FStAdFunc var_8C
  loc_6195AA: FLdPr var_8C
  loc_6195AD:  = Me.Text
  loc_6195B2: ILdRf var_88
  loc_6195B5: CI4Str
  loc_6195B6: LitI4 0
  loc_6195BB: EqI4
  loc_6195BC: FFree1Str var_88
  loc_6195BF: FFree1Ad var_8C
  loc_6195C2: BranchF loc_6195DA
  loc_6195C5: LitStr vbNullString
  loc_6195C8: FLdPrThis
  loc_6195C9: VCallAd Control_ID_txProduct
  loc_6195CC: FStAdFunc var_8C
  loc_6195CF: FLdPr var_8C
  loc_6195D2: Me.Text = from_stack_1
  loc_6195D7: FFree1Ad var_8C
  loc_6195DA: FLdRfVar var_88
  loc_6195DD: FLdPrThis
  loc_6195DE: VCallAd Control_ID_txProduct
  loc_6195E1: FStAdFunc var_8C
  loc_6195E4: FLdPr var_8C
  loc_6195E7:  = Me.Text
  loc_6195EC: FLdZeroAd var_88
  loc_6195EF: CVarStr var_DC
  loc_6195F2: ILdI2 KeyAscii
  loc_6195F5: CI4UI1
  loc_6195F6: FLdRfVar var_CC
  loc_6195F9: ImpAdCallFPR4  = Chr()
  loc_6195FE: FLdRfVar var_CC
  loc_619601: ConcatVar var_EC
  loc_619605: CStrVarVal var_F0
  loc_619609: FLdPrThis
  loc_61960A: VCallAd Control_ID_txProduct
  loc_61960D: FStAdFunc var_F4
  loc_619610: FLdPr var_F4
  loc_619613: Me.Text = from_stack_1
  loc_619618: FFree1Str var_F0
  loc_61961B: FFreeAd var_8C = ""
  loc_619622: FFreeVar var_DC = "": var_CC = ""
  loc_61962B: LitI2_Byte 0
  loc_61962D: IStI2 KeyAscii
  loc_619630: ExitProcHresult
End Sub

Private Sub Form_Load() '5D58CC
  'Data Table: 40F29C
  loc_5D58AC: LitI2_Byte 0
  loc_5D58AE: CStrUI1
  loc_5D58B0: FStStrNoPop var_88
  loc_5D58B3: FLdPrThis
  loc_5D58B4: VCallAd Control_ID_txProduct
  loc_5D58B7: FStAdFunc var_8C
  loc_5D58BA: FLdPr var_8C
  loc_5D58BD: Me.Text = from_stack_1
  loc_5D58C2: FFree1Str var_88
  loc_5D58C5: FFree1Ad var_8C
  loc_5D58C8: ExitProcHresult
End Sub

Private Function Proc_151_4_605410() '605410
  'Data Table: 40F29C
  loc_60532C: FLdRfVar var_8C
  loc_60532F: FLdPrThis
  loc_605330: VCallAd Control_ID_txProduct
  loc_605333: FStAdFunc var_88
  loc_605336: FLdPr var_88
  loc_605339:  = Me.Text
  loc_60533E: ILdRf var_8C
  loc_605341: LitStr vbNullString
  loc_605344: EqStr
  loc_605346: FFree1Str var_8C
  loc_605349: FFree1Ad var_88
  loc_60534C: BranchF loc_60537E
  loc_60534F: LitI2_Byte 0
  loc_605351: CStrUI1
  loc_605353: FStStrNoPop var_8C
  loc_605356: FLdPrThis
  loc_605357: VCallAd Control_ID_txProduct
  loc_60535A: FStAdFunc var_88
  loc_60535D: FLdPr var_88
  loc_605360: Me.Text = from_stack_1
  loc_605365: FFree1Str var_8C
  loc_605368: FFree1Ad var_88
  loc_60536B: FLdPrThis
  loc_60536C: VCallAd Control_ID_txProduct
  loc_60536F: FStAdFunc var_88
  loc_605372: FLdPr var_88
  loc_605375: Me.SetFocus
  loc_60537A: FFree1Ad var_88
  loc_60537D: ExitProcHresult
  loc_60537E: FLdRfVar var_8C
  loc_605381: FLdPrThis
  loc_605382: VCallAd Control_ID_txProduct
  loc_605385: FStAdFunc var_88
  loc_605388: FLdPr var_88
  loc_60538B:  = Me.Text
  loc_605390: ILdRf var_8C
  loc_605393: CI4Str
  loc_605394: LitI4 0
  loc_605399: EqI4
  loc_60539A: FFree1Str var_8C
  loc_60539D: FFree1Ad var_88
  loc_6053A0: BranchF loc_6053D2
  loc_6053A3: LitI2_Byte 0
  loc_6053A5: CStrUI1
  loc_6053A7: FStStrNoPop var_8C
  loc_6053AA: FLdPrThis
  loc_6053AB: VCallAd Control_ID_txProduct
  loc_6053AE: FStAdFunc var_88
  loc_6053B1: FLdPr var_88
  loc_6053B4: Me.Text = from_stack_1
  loc_6053B9: FFree1Str var_8C
  loc_6053BC: FFree1Ad var_88
  loc_6053BF: FLdPrThis
  loc_6053C0: VCallAd Control_ID_txProduct
  loc_6053C3: FStAdFunc var_88
  loc_6053C6: FLdPr var_88
  loc_6053C9: Me.SetFocus
  loc_6053CE: FFree1Ad var_88
  loc_6053D1: ExitProcHresult
  loc_6053D2: FLdRfVar var_8C
  loc_6053D5: FLdPrThis
  loc_6053D6: VCallAd Control_ID_txProduct
  loc_6053D9: FStAdFunc var_88
  loc_6053DC: FLdPr var_88
  loc_6053DF:  = Me.Text
  loc_6053E4: ILdRf var_8C
  loc_6053E7: CI4Str
  loc_6053E8: ImpAdStR4 MemVar_74C374
  loc_6053EB: FFree1Str var_8C
  loc_6053EE: FFree1Ad var_88
  loc_6053F1: LitI4 0
  loc_6053F6: ImpAdStR4 MemVar_74C378
  loc_6053F9: ILdRf Me
  loc_6053FC: FStAdNoPop
  loc_605400: ImpAdLdRf MemVar_7520D4
  loc_605403: NewIfNullPr Global
  loc_605406: Global.Unload from_stack_1
  loc_60540B: FFree1Ad var_88
  loc_60540E: ExitProcHresult
End Function

Private Function Proc_151_5_5D3CE0() '5D3CE0
  'Data Table: 40F29C
  loc_5D3CC4: LitI2_Byte &HFF
  loc_5D3CC6: ImpAdStI2 MemVar_74C37E
  loc_5D3CC9: ILdRf Me
  loc_5D3CCC: FStAdNoPop
  loc_5D3CD0: ImpAdLdRf MemVar_7520D4
  loc_5D3CD3: NewIfNullPr Global
  loc_5D3CD6: Global.Unload from_stack_1
  loc_5D3CDB: FFree1Ad var_88
  loc_5D3CDE: ExitProcHresult
End Function
