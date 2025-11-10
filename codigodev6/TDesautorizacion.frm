VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form TDesautorizacion
  Caption = "Login"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2790
  ClientTop = 3090
  ClientWidth = 4290
  ClientHeight = 2445
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 4028.078
  ScaleHeight = 1444.587
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.CommandButton cmdCancel
    Caption = "Cancel"
    Left = 600
    Top = 1680
    Width = 1740
    Height = 615
    TabIndex = 3
    Cancel = -1  'True
    TabStop = 0   'False
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
  Begin VB.CommandButton cmdOK
    Caption = "&Aceptar"
    Left = 2400
    Top = 1680
    Width = 1740
    Height = 630
    TabIndex = 2
    Default = -1  'True
    TabStop = 0   'False
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
  Begin VB.TextBox Tiempo
    Left = 1380
    Top = 840
    Width = 1245
    Height = 345
    TabIndex = 0
    Alignment = 2 'Center
    MaxLength = 3
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
  Begin Threed.SSPanel SSPanel1
    Left = 0
    Top = 0
    Width = 4275
    Height = 2415
    TabIndex = 4
    OleObjectBlob = "TDesautorizacion.frx":0000
    Begin VB.Label lblLabels
      Caption = "Tiempo Desautorización"
      Index = 0
      Left = 120
      Top = 120
      Width = 3960
      Height = 390
      TabIndex = 5
      Alignment = 2 'Center
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
  End
  Begin VB.Label lblLabels
    Caption = "Segundos"
    Index = 1
    Left = 2760
    Top = 840
    Width = 1200
    Height = 270
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
End

Attribute VB_Name = "TDesautorizacion"


Private Sub Tiempo_KeyPress(KeyAscii As Integer) '5D74E4
  'Data Table: 40B9D8
  loc_5D74B4: ILdI2 KeyAscii
  loc_5D74B7: FStI2 var_86
  loc_5D74BA: FLdI2 var_86
  loc_5D74BD: LitI4 &H30
  loc_5D74C2: CI2I4
  loc_5D74C3: LitI4 &H39
  loc_5D74C8: CI2I4
  loc_5D74C9: BetweenI2
  loc_5D74CB: BranchT loc_5D74DB
  loc_5D74CE: FLdI2 var_86
  loc_5D74D1: LitI4 8
  loc_5D74D6: CI2I4
  loc_5D74D7: EqI2
  loc_5D74D8: BranchF loc_5D74DE
  loc_5D74DB: Branch loc_5D74E3
  loc_5D74DE: LitI2_Byte 0
  loc_5D74E0: IStI2 KeyAscii
  loc_5D74E3: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '5D2640
  'Data Table: 40B9D8
  loc_5D2628: ILdRf Me
  loc_5D262B: FStAdNoPop
  loc_5D262F: ImpAdLdRf MemVar_7520D4
  loc_5D2632: NewIfNullPr Global
  loc_5D2635: Global.Unload from_stack_1
  loc_5D263A: FFree1Ad var_88
  loc_5D263D: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '60CA7C
  'Data Table: 40B9D8
  loc_60C988: FLdRfVar var_90
  loc_60C98B: FLdPrThis
  loc_60C98C: VCallAd Control_ID_Tiempo
  loc_60C98F: FStAdFunc var_8C
  loc_60C992: FLdPr var_8C
  loc_60C995:  = Me.Text
  loc_60C99A: ILdRf var_90
  loc_60C99D: ImpAdCallFPR4 push Val()
  loc_60C9A2: CR8R8
  loc_60C9A3: LitI2 999
  loc_60C9A6: CR8I2
  loc_60C9A7: LeR8
  loc_60C9A8: FFree1Str var_90
  loc_60C9AB: FFree1Ad var_8C
  loc_60C9AE: BranchF loc_60CA42
  loc_60C9B1: FLdRfVar var_90
  loc_60C9B4: FLdPrThis
  loc_60C9B5: VCallAd Control_ID_Tiempo
  loc_60C9B8: FStAdFunc var_8C
  loc_60C9BB: FLdPr var_8C
  loc_60C9BE:  = Me.Text
  loc_60C9C3: LitI4 1
  loc_60C9C8: LitI4 1
  loc_60C9CD: LitVarStr var_B0, "000"
  loc_60C9D2: FStVarCopyObj var_C0
  loc_60C9D5: FLdRfVar var_C0
  loc_60C9D8: FLdZeroAd var_90
  loc_60C9DB: CVarStr var_A0
  loc_60C9DE: ImpAdCallI2 Format$(, )
  loc_60C9E3: FStStr var_88
  loc_60C9E6: FFree1Ad var_8C
  loc_60C9E9: FFreeVar var_A0 = ""
  loc_60C9F0: FLdRfVar var_C2
  loc_60C9F3: FLdRfVar var_88
  loc_60C9F6: FLdRfVar var_8C
  loc_60C9F9: ImpAdLdRf MemVar_74C760
  loc_60C9FC: NewIfNullPr Formx
  loc_60C9FF: from_stack_1v = Formx.global_4589716Get()
  loc_60CA04: FLdPr var_8C
  loc_60CA07:  = Formx.FontItalic
  loc_60CA0C: FLdI2 var_C2
  loc_60CA0F: NotI4
  loc_60CA10: FFree1Ad var_8C
  loc_60CA13: BranchF loc_60CA42
  loc_60CA16: FLdRfVar var_A0
  loc_60CA19: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_60CA1E: FLdRfVar var_A0
  loc_60CA21: CBoolVarNull
  loc_60CA23: FFree1Var var_A0 = ""
  loc_60CA26: BranchF loc_60CA3F
  loc_60CA29: ILdRf Me
  loc_60CA2C: FStAdNoPop
  loc_60CA30: ImpAdLdRf MemVar_7520D4
  loc_60CA33: NewIfNullPr Global
  loc_60CA36: Global.Unload from_stack_1
  loc_60CA3B: FFree1Ad var_8C
  loc_60CA3E: ExitProcHresult
  loc_60CA3F: Branch loc_60C9F0
  loc_60CA42: FLdRfVar var_90
  loc_60CA45: FLdPrThis
  loc_60CA46: VCallAd Control_ID_Tiempo
  loc_60CA49: FStAdFunc var_8C
  loc_60CA4C: FLdPr var_8C
  loc_60CA4F:  = Me.Text
  loc_60CA54: ILdRf var_90
  loc_60CA57: ImpAdCallFPR4 push Val()
  loc_60CA5C: CI4R8
  loc_60CA5D: ImpAdStR4 MemVar_74C2E4
  loc_60CA60: FFree1Str var_90
  loc_60CA63: FFree1Ad var_8C
  loc_60CA66: ILdRf Me
  loc_60CA69: FStAdNoPop
  loc_60CA6D: ImpAdLdRf MemVar_7520D4
  loc_60CA70: NewIfNullPr Global
  loc_60CA73: Global.Unload from_stack_1
  loc_60CA78: FFree1Ad var_8C
  loc_60CA7B: ExitProcHresult
End Sub

Private Sub Form_Load() '62B23C
  'Data Table: 40B9D8
  loc_62B0C8: FLdRfVar var_1D4
  loc_62B0CB: LitVar_Missing var_1D0
  loc_62B0CE: LitVar_Missing var_1B0
  loc_62B0D1: LitVar_Missing var_190
  loc_62B0D4: LitVar_Missing var_170
  loc_62B0D7: LitVar_Missing var_150
  loc_62B0DA: LitVar_Missing var_130
  loc_62B0DD: LitVar_Missing var_110
  loc_62B0E0: LitVar_Missing var_F0
  loc_62B0E3: LitVar_Missing var_D0
  loc_62B0E6: LitVar_Missing var_B0
  loc_62B0E9: LitStr "Tiempo Desautorización"
  loc_62B0EC: FStStrCopy var_90
  loc_62B0EF: FLdRfVar var_90
  loc_62B0F2: LitI4 1
  loc_62B0F7: PopTmpLdAdStr var_8C
  loc_62B0FA: LitI2_Byte 2
  loc_62B0FC: PopTmpLdAd2 var_86
  loc_62B0FF: ImpAdLdRf MemVar_74C7D0
  loc_62B102: NewIfNullPr clsMsg
  loc_62B105: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62B10A: ILdRf var_1D4
  loc_62B10D: FLdRfVar var_1DC
  loc_62B110: LitI2_Byte 0
  loc_62B112: FLdPrThis
  loc_62B113: VCallAd Control_ID_lblLabels
  loc_62B116: FStAdFunc var_1D8
  loc_62B119: FLdPr var_1D8
  loc_62B11C: Set from_stack_2 = Me(from_stack_1)
  loc_62B121: FLdPr var_1DC
  loc_62B124: Me.Caption = from_stack_1
  loc_62B129: FFreeStr var_90 = ""
  loc_62B130: FFreeAd var_1D8 = ""
  loc_62B137: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_62B14E: FLdRfVar var_1D4
  loc_62B151: LitVar_Missing var_1D0
  loc_62B154: LitVar_Missing var_1B0
  loc_62B157: LitVar_Missing var_190
  loc_62B15A: LitVar_Missing var_170
  loc_62B15D: LitVar_Missing var_150
  loc_62B160: LitVar_Missing var_130
  loc_62B163: LitVar_Missing var_110
  loc_62B166: LitVar_Missing var_F0
  loc_62B169: LitVar_Missing var_D0
  loc_62B16C: LitVar_Missing var_B0
  loc_62B16F: LitStr "OK"
  loc_62B172: FStStrCopy var_90
  loc_62B175: FLdRfVar var_90
  loc_62B178: LitI4 2
  loc_62B17D: PopTmpLdAdStr var_8C
  loc_62B180: LitI2_Byte 2
  loc_62B182: PopTmpLdAd2 var_86
  loc_62B185: ImpAdLdRf MemVar_74C7D0
  loc_62B188: NewIfNullPr clsMsg
  loc_62B18B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62B190: ILdRf var_1D4
  loc_62B193: FLdPrThis
  loc_62B194: VCallAd Control_ID_cmdOK
  loc_62B197: FStAdFunc var_1D8
  loc_62B19A: FLdPr var_1D8
  loc_62B19D: Me.Caption = from_stack_1
  loc_62B1A2: FFreeStr var_90 = ""
  loc_62B1A9: FFree1Ad var_1D8
  loc_62B1AC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_62B1C3: FLdRfVar var_1D4
  loc_62B1C6: LitVar_Missing var_1D0
  loc_62B1C9: LitVar_Missing var_1B0
  loc_62B1CC: LitVar_Missing var_190
  loc_62B1CF: LitVar_Missing var_170
  loc_62B1D2: LitVar_Missing var_150
  loc_62B1D5: LitVar_Missing var_130
  loc_62B1D8: LitVar_Missing var_110
  loc_62B1DB: LitVar_Missing var_F0
  loc_62B1DE: LitVar_Missing var_D0
  loc_62B1E1: LitVar_Missing var_B0
  loc_62B1E4: LitStr "Cancel"
  loc_62B1E7: FStStrCopy var_90
  loc_62B1EA: FLdRfVar var_90
  loc_62B1ED: LitI4 3
  loc_62B1F2: PopTmpLdAdStr var_8C
  loc_62B1F5: LitI2_Byte 2
  loc_62B1F7: PopTmpLdAd2 var_86
  loc_62B1FA: ImpAdLdRf MemVar_74C7D0
  loc_62B1FD: NewIfNullPr clsMsg
  loc_62B200: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62B205: ILdRf var_1D4
  loc_62B208: FLdPrThis
  loc_62B209: VCallAd Control_ID_cmdCancel
  loc_62B20C: FStAdFunc var_1D8
  loc_62B20F: FLdPr var_1D8
  loc_62B212: Me.Caption = from_stack_1
  loc_62B217: FFreeStr var_90 = ""
  loc_62B21E: FFree1Ad var_1D8
  loc_62B221: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_62B238: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E9D8C
  'Data Table: 40B9D8
  loc_5E9D10: LitStr vbNullString
  loc_5E9D13: FStStrCopy var_88
  loc_5E9D16: FLdRfVar var_8E
  loc_5E9D19: FLdRfVar var_88
  loc_5E9D1C: FLdRfVar var_8C
  loc_5E9D1F: ImpAdLdRf MemVar_74C760
  loc_5E9D22: NewIfNullPr Formx
  loc_5E9D25: from_stack_1v = Formx.global_4589716Get()
  loc_5E9D2A: FLdPr var_8C
  loc_5E9D2D:  = Formx.FontItalic
  loc_5E9D32: FLdI2 var_8E
  loc_5E9D35: NotI4
  loc_5E9D36: FFree1Ad var_8C
  loc_5E9D39: BranchF loc_5E9D68
  loc_5E9D3C: FLdRfVar var_A0
  loc_5E9D3F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E9D44: FLdRfVar var_A0
  loc_5E9D47: CBoolVarNull
  loc_5E9D49: FFree1Var var_A0 = ""
  loc_5E9D4C: BranchF loc_5E9D65
  loc_5E9D4F: ILdRf Me
  loc_5E9D52: FStAdNoPop
  loc_5E9D56: ImpAdLdRf MemVar_7520D4
  loc_5E9D59: NewIfNullPr Global
  loc_5E9D5C: Global.Unload from_stack_1
  loc_5E9D61: FFree1Ad var_8C
  loc_5E9D64: ExitProcHresult
  loc_5E9D65: Branch loc_5E9D16
  loc_5E9D68: ILdRf var_88
  loc_5E9D6B: ImpAdCallFPR4 push Val()
  loc_5E9D70: CStrR8
  loc_5E9D72: FStStrNoPop var_A4
  loc_5E9D75: FLdPrThis
  loc_5E9D76: VCallAd Control_ID_Tiempo
  loc_5E9D79: FStAdFunc var_8C
  loc_5E9D7C: FLdPr var_8C
  loc_5E9D7F: Me.Text = from_stack_1
  loc_5E9D84: FFree1Str var_A4
  loc_5E9D87: FFree1Ad var_8C
  loc_5E9D8A: ExitProcHresult
End Sub
