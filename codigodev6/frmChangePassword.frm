VERSION 5.00
Begin VB.Form frmChangePassword
  Caption = "Cambio de Password"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 3060
  ClientTop = 2925
  ClientWidth = 7395
  ClientHeight = 4215
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 6943.504
  ScaleHeight = 2490.362
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 180
    Top = 120
    Width = 7035
    Height = 3195
    TabIndex = 6
    Begin VB.TextBox txtLastPassword
      ForeColor = &HFF0000&
      Left = 3195
      Top = 1080
      Width = 3585
      Height = 450
      TabIndex = 2
      PasswordChar = "*"
      MaxLength = 10
    End
    Begin VB.ComboBox Usuario
      Style = 2
      Left = 3195
      Top = 420
      Width = 3615
      Height = 450
      TabIndex = 1
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox txtNewPassword
      ForeColor = &HFF0000&
      Left = 3195
      Top = 1740
      Width = 3585
      Height = 450
      TabIndex = 3
      PasswordChar = "*"
      MaxLength = 10
    End
    Begin VB.TextBox txtRetypePassword
      ForeColor = &HFF0000&
      Left = 3195
      Top = 2400
      Width = 3585
      Height = 450
      TabIndex = 4
      PasswordChar = "*"
      MaxLength = 10
    End
    Begin VB.Label lblLabels
      Caption = "&Password Anterior:"
      Index = 1
      ForeColor = &H0&
      Left = 180
      Top = 1140
      Width = 2880
      Height = 510
      TabIndex = 10
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblLabels
      Caption = "Usuario:"
      Index = 0
      ForeColor = &H0&
      Left = 195
      Top = 480
      Width = 2160
      Height = 495
      TabIndex = 9
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblLabels
      Caption = "&Nueva Password:"
      Index = 2
      ForeColor = &H0&
      Left = 195
      Top = 1800
      Width = 2700
      Height = 510
      TabIndex = 8
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblLabels
      Caption = "&Confirma Password:"
      Index = 3
      ForeColor = &H0&
      Left = 195
      Top = 2460
      Width = 3000
      Height = 510
      TabIndex = 7
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CommandButton cmdOK
    Caption = "&Aceptar"
    Left = 5520
    Top = 3480
    Width = 1740
    Height = 630
    TabIndex = 0
    Default = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancel
    Caption = "&Cancelar"
    Left = 3600
    Top = 3480
    Width = 1740
    Height = 630
    TabIndex = 5
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmChangePassword"

Public LoginSucceeded As Boolean
Public Nivel As Byte
Public Password As String
Public strChangePassword As String


Private Sub cmdCancel_Click() '5D4734
  'Data Table: 4178C0
  loc_5D4714: LitI2_Byte 0
  loc_5D4716: FLdPr Me
  loc_5D4719: MemStI2 LoginSucceeded
  loc_5D471C: ILdRf Me
  loc_5D471F: FStAdNoPop
  loc_5D4723: ImpAdLdRf MemVar_7520D4
  loc_5D4726: NewIfNullPr Global
  loc_5D4729: Global.Unload from_stack_1
  loc_5D472E: FFree1Ad var_88
  loc_5D4731: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '6837DC
  'Data Table: 4178C0
  loc_6832FC: FLdRfVar var_94
  loc_6832FF: FLdPrThis
  loc_683300: VCallAd Control_ID_txtNewPassword
  loc_683303: FStAdFunc var_90
  loc_683306: FLdPr var_90
  loc_683309:  = Me.Text
  loc_68330E: FLdRfVar var_A4
  loc_683311: FLdPrThis
  loc_683312: VCallAd Control_ID_txtRetypePassword
  loc_683315: FStAdFunc var_A0
  loc_683318: FLdPr var_A0
  loc_68331B:  = Me.Text
  loc_683320: FLdRfVar var_9A
  loc_683323: FLdRfVar var_88
  loc_683326: FLdZeroAd var_94
  loc_683329: PopTmpLdAdStr
  loc_68332D: from_stack_3v = Proc_3_11_606A58(from_stack_1v, from_stack_2v)
  loc_683332: FLdI2 var_9A
  loc_683335: FLdRfVar var_AA
  loc_683338: FLdRfVar var_88
  loc_68333B: FLdZeroAd var_A4
  loc_68333E: PopTmpLdAdStr
  loc_683342: from_stack_3v = Proc_3_11_606A58(from_stack_1v, from_stack_2v)
  loc_683347: FLdI2 var_AA
  loc_68334A: AndI4
  loc_68334B: FFreeStr var_98 = ""
  loc_683352: FFreeAd var_90 = ""
  loc_683359: BranchF loc_683701
  loc_68335C: FLdRfVar var_94
  loc_68335F: FLdRfVar var_9A
  loc_683362: FLdPrThis
  loc_683363: VCallAd Control_ID_Usuario
  loc_683366: FStAdFunc var_90
  loc_683369: FLdPr var_90
  loc_68336C:  = Me.ListIndex
  loc_683371: FLdI2 var_9A
  loc_683374: LitI2_Byte 2
  loc_683376: AddI2
  loc_683377: PopTmpLdAd2 var_AA
  loc_68337A: ImpAdLdRf MemVar_74A218
  loc_68337D: NewIfNullPr clsUsers
  loc_683385: FLdZeroAd var_94
  loc_683388: CVarStr var_BC
  loc_68338B: FLdRfVar var_CC
  loc_68338E: ImpAdCallFPR4  = Ucase()
  loc_683393: FLdRfVar var_CC
  loc_683396: LitI4 &HA
  loc_68339B: FLdRfVar var_DC
  loc_68339E: ImpAdCallFPR4  = Space()
  loc_6833A3: FLdRfVar var_DC
  loc_6833A6: EqVarBool
  loc_6833A8: FFree1Ad var_90
  loc_6833AB: FFreeVar var_BC = "": var_CC = ""
  loc_6833B4: BranchF loc_6833EC
  loc_6833B7: LitStr "PASSWORD"
  loc_6833BA: FStStrCopy var_94
  loc_6833BD: FLdRfVar var_94
  loc_6833C0: FLdRfVar var_9A
  loc_6833C3: FLdPrThis
  loc_6833C4: VCallAd Control_ID_Usuario
  loc_6833C7: FStAdFunc var_90
  loc_6833CA: FLdPr var_90
  loc_6833CD:  = Me.ListIndex
  loc_6833D2: FLdI2 var_9A
  loc_6833D5: LitI2_Byte 2
  loc_6833D7: AddI2
  loc_6833D8: PopTmpLdAd2 var_AA
  loc_6833DB: ImpAdLdRf MemVar_74A218
  loc_6833DE: NewIfNullPr clsUsers
  loc_6833E1:  = Forms
  loc_6833E6: FFree1Str var_94
  loc_6833E9: FFree1Ad var_90
  loc_6833EC: FLdPrThis
  loc_6833ED: VCallAd Control_ID_txtLastPassword
  loc_6833F0: CVarAd
  loc_6833F4: FLdRfVar var_CC
  loc_6833F7: ImpAdCallFPR4  = Ucase()
  loc_6833FC: FLdRfVar var_CC
  loc_6833FF: FLdRfVar var_94
  loc_683402: FLdRfVar var_9A
  loc_683405: FLdPrThis
  loc_683406: VCallAd Control_ID_Usuario
  loc_683409: FStAdFunc var_90
  loc_68340C: FLdPr var_90
  loc_68340F:  = Me.ListIndex
  loc_683414: FLdI2 var_9A
  loc_683417: LitI2_Byte 2
  loc_683419: AddI2
  loc_68341A: PopTmpLdAd2 var_AA
  loc_68341D: ImpAdLdRf MemVar_74A218
  loc_683420: NewIfNullPr clsUsers
  loc_683428: FLdZeroAd var_94
  loc_68342B: CVarStr var_DC
  loc_68342E: FLdRfVar var_EC
  loc_683431: ImpAdCallFPR4  = Ucase()
  loc_683436: FLdRfVar var_EC
  loc_683439: FLdRfVar var_FC
  loc_68343C: ImpAdCallFPR4  = Trim()
  loc_683441: FLdRfVar var_FC
  loc_683444: EqVarBool
  loc_683446: FFree1Ad var_90
  loc_683449: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_CC = ""
  loc_683456: BranchF loc_68363F
  loc_683459: FLdPrThis
  loc_68345A: VCallAd Control_ID_txtNewPassword
  loc_68345D: CVarAd
  loc_683461: FLdRfVar var_CC
  loc_683464: ImpAdCallFPR4  = Ucase()
  loc_683469: FLdRfVar var_CC
  loc_68346C: FLdRfVar var_DC
  loc_68346F: ImpAdCallFPR4  = Trim()
  loc_683474: FLdRfVar var_DC
  loc_683477: FLdPrThis
  loc_683478: VCallAd Control_ID_txtRetypePassword
  loc_68347B: CVarAd
  loc_68347F: FLdRfVar var_FC
  loc_683482: ImpAdCallFPR4  = Ucase()
  loc_683487: FLdRfVar var_FC
  loc_68348A: FLdRfVar var_10C
  loc_68348D: ImpAdCallFPR4  = Trim()
  loc_683492: FLdRfVar var_10C
  loc_683495: EqVarBool
  loc_683497: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_DC = ""
  loc_6834A6: BranchF loc_683558
  loc_6834A9: FLdPrThis
  loc_6834AA: VCallAd Control_ID_txtNewPassword
  loc_6834AD: CVarAd
  loc_6834B1: FLdRfVar var_CC
  loc_6834B4: ImpAdCallFPR4  = Ucase()
  loc_6834B9: FLdRfVar var_CC
  loc_6834BC: CStrVarTmp
  loc_6834BD: PopTmpLdAdStr
  loc_6834C1: FLdRfVar var_9A
  loc_6834C4: FLdPrThis
  loc_6834C5: VCallAd Control_ID_Usuario
  loc_6834C8: FStAdFunc var_90
  loc_6834CB: FLdPr var_90
  loc_6834CE:  = Me.ListIndex
  loc_6834D3: FLdI2 var_9A
  loc_6834D6: LitI2_Byte 2
  loc_6834D8: AddI2
  loc_6834D9: PopTmpLdAd2 var_AA
  loc_6834DC: ImpAdLdRf MemVar_74A218
  loc_6834DF: NewIfNullPr clsUsers
  loc_6834E2:  = Forms
  loc_6834E7: FFree1Str var_94
  loc_6834EA: FFree1Ad var_90
  loc_6834ED: FFreeVar var_BC = ""
  loc_6834F4: FLdRfVar var_9A
  loc_6834F7: FLdRfVar var_8C
  loc_6834FA: FLdRfVar var_90
  loc_6834FD: ImpAdLdRf MemVar_74C760
  loc_683500: NewIfNullPr Formx
  loc_683503: from_stack_1v = Formx.global_4589716Get()
  loc_683508: FLdPr var_90
  loc_68350B: Call 0.Method_arg_32C ()
  loc_683510: FFree1Ad var_90
  loc_683513: ILdRf var_8C
  loc_683516: ImpAdStStrCopy MemVar_74BF50
  loc_68351A: FLdRfVar var_9A
  loc_68351D: FLdRfVar var_8C
  loc_683520: FLdRfVar var_90
  loc_683523: ImpAdLdRf MemVar_74C760
  loc_683526: NewIfNullPr Formx
  loc_683529: from_stack_1v = Formx.global_4589716Get()
  loc_68352E: FLdPr var_90
  loc_683531: Call 0.Method_arg_330 ()
  loc_683536: FFree1Ad var_90
  loc_683539: ILdRf var_8C
  loc_68353C: ImpAdStStrCopy MemVar_74BF54
  loc_683540: ILdRf Me
  loc_683543: FStAdNoPop
  loc_683547: ImpAdLdRf MemVar_7520D4
  loc_68354A: NewIfNullPr Global
  loc_68354D: Global.Unload from_stack_1
  loc_683552: FFree1Ad var_90
  loc_683555: Branch loc_683634
  loc_683558: FLdRfVar var_98
  loc_68355B: LitVar_Missing var_1F0
  loc_68355E: LitVar_Missing var_1D0
  loc_683561: LitVar_Missing var_1B0
  loc_683564: LitVar_Missing var_11C
  loc_683567: LitVar_Missing var_10C
  loc_68356A: LitVar_Missing var_FC
  loc_68356D: LitVar_Missing var_EC
  loc_683570: LitVar_Missing var_DC
  loc_683573: LitVar_Missing var_CC
  loc_683576: LitVar_Missing var_BC
  loc_683579: LitStr "Password nuevo mal ingresado, intente nuevamente"
  loc_68357C: FStStrCopy var_94
  loc_68357F: FLdRfVar var_94
  loc_683582: LitI4 2
  loc_683587: PopTmpLdAdStr var_120
  loc_68358A: LitI2_Byte &H16
  loc_68358C: PopTmpLdAd2 var_9A
  loc_68358F: ImpAdLdRf MemVar_74C7D0
  loc_683592: NewIfNullPr clsMsg
  loc_683595: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68359A: LitVar_Missing var_250
  loc_68359D: LitVar_Missing var_230
  loc_6835A0: FLdPr Me
  loc_6835A3: MemLdRfVar from_stack_1.strChangePassword
  loc_6835A6: CVarRef
  loc_6835AB: LitI4 0
  loc_6835B0: FLdZeroAd var_98
  loc_6835B3: CVarStr var_200
  loc_6835B6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6835BB: FFree1Str var_94
  loc_6835BE: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_230 = ""
  loc_6835DB: LitVar_Empty
  loc_6835DF: CStrVarVal var_94
  loc_6835E3: FLdPrThis
  loc_6835E4: VCallAd Control_ID_txtNewPassword
  loc_6835E7: FStAdFunc var_90
  loc_6835EA: FLdPr var_90
  loc_6835ED: Me.Text = from_stack_1
  loc_6835F2: FFree1Str var_94
  loc_6835F5: FFree1Ad var_90
  loc_6835F8: LitVar_Empty
  loc_6835FC: CStrVarVal var_94
  loc_683600: FLdPrThis
  loc_683601: VCallAd Control_ID_txtRetypePassword
  loc_683604: FStAdFunc var_90
  loc_683607: FLdPr var_90
  loc_68360A: Me.Text = from_stack_1
  loc_68360F: FFree1Str var_94
  loc_683612: FFree1Ad var_90
  loc_683615: FLdPrThis
  loc_683616: VCallAd Control_ID_txtNewPassword
  loc_683619: FStAdFunc var_90
  loc_68361C: FLdPr var_90
  loc_68361F: Me.SetFocus
  loc_683624: FFree1Ad var_90
  loc_683627: LitI2_Byte 0
  loc_683629: PopTmpLdAd2 var_9A
  loc_68362C: LitStr "{Home}+{End}"
  loc_68362F: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_683634: LitI2_Byte &HFF
  loc_683636: FLdPr Me
  loc_683639: MemStI2 LoginSucceeded
  loc_68363C: Branch loc_6836FE
  loc_68363F: FLdRfVar var_98
  loc_683642: LitVar_Missing var_1F0
  loc_683645: LitVar_Missing var_1D0
  loc_683648: LitVar_Missing var_1B0
  loc_68364B: LitVar_Missing var_11C
  loc_68364E: LitVar_Missing var_10C
  loc_683651: LitVar_Missing var_FC
  loc_683654: LitVar_Missing var_EC
  loc_683657: LitVar_Missing var_DC
  loc_68365A: LitVar_Missing var_CC
  loc_68365D: LitVar_Missing var_BC
  loc_683660: LitStr "Password Anterior Invalido, intente nuevamente"
  loc_683663: FStStrCopy var_94
  loc_683666: FLdRfVar var_94
  loc_683669: LitI4 3
  loc_68366E: PopTmpLdAdStr var_120
  loc_683671: LitI2_Byte &H16
  loc_683673: PopTmpLdAd2 var_9A
  loc_683676: ImpAdLdRf MemVar_74C7D0
  loc_683679: NewIfNullPr clsMsg
  loc_68367C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_683681: LitVar_Missing var_250
  loc_683684: LitVar_Missing var_230
  loc_683687: FLdPr Me
  loc_68368A: MemLdRfVar from_stack_1.strChangePassword
  loc_68368D: CVarRef
  loc_683692: LitI4 0
  loc_683697: FLdZeroAd var_98
  loc_68369A: CVarStr var_200
  loc_68369D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6836A2: FFree1Str var_94
  loc_6836A5: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_230 = ""
  loc_6836C2: LitVar_Empty
  loc_6836C6: CStrVarVal var_94
  loc_6836CA: FLdPrThis
  loc_6836CB: VCallAd Control_ID_txtLastPassword
  loc_6836CE: FStAdFunc var_90
  loc_6836D1: FLdPr var_90
  loc_6836D4: Me.Text = from_stack_1
  loc_6836D9: FFree1Str var_94
  loc_6836DC: FFree1Ad var_90
  loc_6836DF: FLdPrThis
  loc_6836E0: VCallAd Control_ID_txtLastPassword
  loc_6836E3: FStAdFunc var_90
  loc_6836E6: FLdPr var_90
  loc_6836E9: Me.SetFocus
  loc_6836EE: FFree1Ad var_90
  loc_6836F1: LitI2_Byte 0
  loc_6836F3: PopTmpLdAd2 var_9A
  loc_6836F6: LitStr "{Home}+{End}"
  loc_6836F9: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6836FE: Branch loc_6837D8
  loc_683701: FLdRfVar var_98
  loc_683704: LitVar_Missing var_1F0
  loc_683707: LitVar_Missing var_1D0
  loc_68370A: LitVar_Missing var_1B0
  loc_68370D: LitVar_Missing var_11C
  loc_683710: LitVar_Missing var_10C
  loc_683713: LitVar_Missing var_FC
  loc_683716: LitVar_Missing var_EC
  loc_683719: LitVar_Missing var_DC
  loc_68371C: LitVar_Missing var_CC
  loc_68371F: LitVar_Missing var_BC
  loc_683722: LitStr ", intente nuevamente"
  loc_683725: FStStrCopy var_94
  loc_683728: FLdRfVar var_94
  loc_68372B: LitI4 &HB
  loc_683730: PopTmpLdAdStr var_120
  loc_683733: LitI2_Byte &H16
  loc_683735: PopTmpLdAd2 var_9A
  loc_683738: ImpAdLdRf MemVar_74C7D0
  loc_68373B: NewIfNullPr clsMsg
  loc_68373E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_683743: LitVar_Missing var_250
  loc_683746: LitVar_Missing var_230
  loc_683749: FLdPr Me
  loc_68374C: MemLdRfVar from_stack_1.strChangePassword
  loc_68374F: CVarRef
  loc_683754: LitI4 0
  loc_683759: ILdRf var_88
  loc_68375C: ILdRf var_98
  loc_68375F: ConcatStr
  loc_683760: CVarStr var_200
  loc_683763: ImpAdCallFPR4 MsgBox(, , , , )
  loc_683768: FFreeStr var_94 = ""
  loc_68376F: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_230 = ""
  loc_68378C: LitVar_Empty
  loc_683790: CStrVarVal var_94
  loc_683794: FLdPrThis
  loc_683795: VCallAd Control_ID_txtNewPassword
  loc_683798: FStAdFunc var_90
  loc_68379B: FLdPr var_90
  loc_68379E: Me.Text = from_stack_1
  loc_6837A3: FFree1Str var_94
  loc_6837A6: FFree1Ad var_90
  loc_6837A9: LitVar_Empty
  loc_6837AD: CStrVarVal var_94
  loc_6837B1: FLdPrThis
  loc_6837B2: VCallAd Control_ID_txtRetypePassword
  loc_6837B5: FStAdFunc var_90
  loc_6837B8: FLdPr var_90
  loc_6837BB: Me.Text = from_stack_1
  loc_6837C0: FFree1Str var_94
  loc_6837C3: FFree1Ad var_90
  loc_6837C6: FLdPrThis
  loc_6837C7: VCallAd Control_ID_txtNewPassword
  loc_6837CA: FStAdFunc var_90
  loc_6837CD: FLdPr var_90
  loc_6837D0: Me.SetFocus
  loc_6837D5: FFree1Ad var_90
  loc_6837D8: ExitProcHresult
End Sub

Private Sub Form_Activate() '67E820
  'Data Table: 4178C0
  loc_67E348: FLdRfVar var_1D8
  loc_67E34B: LitVar_Missing var_1D4
  loc_67E34E: LitVar_Missing var_1B4
  loc_67E351: LitVar_Missing var_194
  loc_67E354: LitVar_Missing var_174
  loc_67E357: LitVar_Missing var_154
  loc_67E35A: LitVar_Missing var_134
  loc_67E35D: LitVar_Missing var_114
  loc_67E360: LitVar_Missing var_F4
  loc_67E363: LitVar_Missing var_D4
  loc_67E366: LitVar_Missing var_B4
  loc_67E369: LitStr "Cambio de Password"
  loc_67E36C: FStStrCopy var_94
  loc_67E36F: FLdRfVar var_94
  loc_67E372: LitI4 4
  loc_67E377: PopTmpLdAdStr var_90
  loc_67E37A: LitI2_Byte &H16
  loc_67E37C: PopTmpLdAd2 var_8A
  loc_67E37F: ImpAdLdRf MemVar_74C7D0
  loc_67E382: NewIfNullPr clsMsg
  loc_67E385: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E38A: ILdRf var_1D8
  loc_67E38D: FLdPr Me
  loc_67E390: Me.Caption = from_stack_1
  loc_67E395: FFreeStr var_94 = ""
  loc_67E39C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E3B3: FLdRfVar var_1D8
  loc_67E3B6: LitVar_Missing var_1D4
  loc_67E3B9: LitVar_Missing var_1B4
  loc_67E3BC: LitVar_Missing var_194
  loc_67E3BF: LitVar_Missing var_174
  loc_67E3C2: LitVar_Missing var_154
  loc_67E3C5: LitVar_Missing var_134
  loc_67E3C8: LitVar_Missing var_114
  loc_67E3CB: LitVar_Missing var_F4
  loc_67E3CE: LitVar_Missing var_D4
  loc_67E3D1: LitVar_Missing var_B4
  loc_67E3D4: LitStr "Usuario:"
  loc_67E3D7: FStStrCopy var_94
  loc_67E3DA: FLdRfVar var_94
  loc_67E3DD: LitI4 5
  loc_67E3E2: PopTmpLdAdStr var_90
  loc_67E3E5: LitI2_Byte &H16
  loc_67E3E7: PopTmpLdAd2 var_8A
  loc_67E3EA: ImpAdLdRf MemVar_74C7D0
  loc_67E3ED: NewIfNullPr clsMsg
  loc_67E3F0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E3F5: ILdRf var_1D8
  loc_67E3F8: FLdRfVar var_1E0
  loc_67E3FB: LitI2_Byte 0
  loc_67E3FD: FLdPrThis
  loc_67E3FE: VCallAd Control_ID_lblLabels
  loc_67E401: FStAdFunc var_1DC
  loc_67E404: FLdPr var_1DC
  loc_67E407: Set from_stack_2 = Me(from_stack_1)
  loc_67E40C: FLdPr var_1E0
  loc_67E40F: Me.Caption = from_stack_1
  loc_67E414: FFreeStr var_94 = ""
  loc_67E41B: FFreeAd var_1DC = ""
  loc_67E422: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E439: FLdRfVar var_1D8
  loc_67E43C: LitVar_Missing var_1D4
  loc_67E43F: LitVar_Missing var_1B4
  loc_67E442: LitVar_Missing var_194
  loc_67E445: LitVar_Missing var_174
  loc_67E448: LitVar_Missing var_154
  loc_67E44B: LitVar_Missing var_134
  loc_67E44E: LitVar_Missing var_114
  loc_67E451: LitVar_Missing var_F4
  loc_67E454: LitVar_Missing var_D4
  loc_67E457: LitVar_Missing var_B4
  loc_67E45A: LitStr "&Password Anterior:"
  loc_67E45D: FStStrCopy var_94
  loc_67E460: FLdRfVar var_94
  loc_67E463: LitI4 6
  loc_67E468: PopTmpLdAdStr var_90
  loc_67E46B: LitI2_Byte &H16
  loc_67E46D: PopTmpLdAd2 var_8A
  loc_67E470: ImpAdLdRf MemVar_74C7D0
  loc_67E473: NewIfNullPr clsMsg
  loc_67E476: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E47B: ILdRf var_1D8
  loc_67E47E: FLdRfVar var_1E0
  loc_67E481: LitI2_Byte 1
  loc_67E483: FLdPrThis
  loc_67E484: VCallAd Control_ID_lblLabels
  loc_67E487: FStAdFunc var_1DC
  loc_67E48A: FLdPr var_1DC
  loc_67E48D: Set from_stack_2 = Me(from_stack_1)
  loc_67E492: FLdPr var_1E0
  loc_67E495: Me.Caption = from_stack_1
  loc_67E49A: FFreeStr var_94 = ""
  loc_67E4A1: FFreeAd var_1DC = ""
  loc_67E4A8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E4BF: FLdRfVar var_1D8
  loc_67E4C2: LitVar_Missing var_1D4
  loc_67E4C5: LitVar_Missing var_1B4
  loc_67E4C8: LitVar_Missing var_194
  loc_67E4CB: LitVar_Missing var_174
  loc_67E4CE: LitVar_Missing var_154
  loc_67E4D1: LitVar_Missing var_134
  loc_67E4D4: LitVar_Missing var_114
  loc_67E4D7: LitVar_Missing var_F4
  loc_67E4DA: LitVar_Missing var_D4
  loc_67E4DD: LitVar_Missing var_B4
  loc_67E4E0: LitStr "&Nueva Password:"
  loc_67E4E3: FStStrCopy var_94
  loc_67E4E6: FLdRfVar var_94
  loc_67E4E9: LitI4 7
  loc_67E4EE: PopTmpLdAdStr var_90
  loc_67E4F1: LitI2_Byte &H16
  loc_67E4F3: PopTmpLdAd2 var_8A
  loc_67E4F6: ImpAdLdRf MemVar_74C7D0
  loc_67E4F9: NewIfNullPr clsMsg
  loc_67E4FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E501: ILdRf var_1D8
  loc_67E504: FLdRfVar var_1E0
  loc_67E507: LitI2_Byte 2
  loc_67E509: FLdPrThis
  loc_67E50A: VCallAd Control_ID_lblLabels
  loc_67E50D: FStAdFunc var_1DC
  loc_67E510: FLdPr var_1DC
  loc_67E513: Set from_stack_2 = Me(from_stack_1)
  loc_67E518: FLdPr var_1E0
  loc_67E51B: Me.Caption = from_stack_1
  loc_67E520: FFreeStr var_94 = ""
  loc_67E527: FFreeAd var_1DC = ""
  loc_67E52E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E545: FLdRfVar var_1D8
  loc_67E548: LitVar_Missing var_1D4
  loc_67E54B: LitVar_Missing var_1B4
  loc_67E54E: LitVar_Missing var_194
  loc_67E551: LitVar_Missing var_174
  loc_67E554: LitVar_Missing var_154
  loc_67E557: LitVar_Missing var_134
  loc_67E55A: LitVar_Missing var_114
  loc_67E55D: LitVar_Missing var_F4
  loc_67E560: LitVar_Missing var_D4
  loc_67E563: LitVar_Missing var_B4
  loc_67E566: LitStr "Confirma Password:"
  loc_67E569: FStStrCopy var_94
  loc_67E56C: FLdRfVar var_94
  loc_67E56F: LitI4 8
  loc_67E574: PopTmpLdAdStr var_90
  loc_67E577: LitI2_Byte &H16
  loc_67E579: PopTmpLdAd2 var_8A
  loc_67E57C: ImpAdLdRf MemVar_74C7D0
  loc_67E57F: NewIfNullPr clsMsg
  loc_67E582: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E587: ILdRf var_1D8
  loc_67E58A: FLdRfVar var_1E0
  loc_67E58D: LitI2_Byte 3
  loc_67E58F: FLdPrThis
  loc_67E590: VCallAd Control_ID_lblLabels
  loc_67E593: FStAdFunc var_1DC
  loc_67E596: FLdPr var_1DC
  loc_67E599: Set from_stack_2 = Me(from_stack_1)
  loc_67E59E: FLdPr var_1E0
  loc_67E5A1: Me.Caption = from_stack_1
  loc_67E5A6: FFreeStr var_94 = ""
  loc_67E5AD: FFreeAd var_1DC = ""
  loc_67E5B4: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E5CB: FLdRfVar var_1D8
  loc_67E5CE: LitVar_Missing var_1D4
  loc_67E5D1: LitVar_Missing var_1B4
  loc_67E5D4: LitVar_Missing var_194
  loc_67E5D7: LitVar_Missing var_174
  loc_67E5DA: LitVar_Missing var_154
  loc_67E5DD: LitVar_Missing var_134
  loc_67E5E0: LitVar_Missing var_114
  loc_67E5E3: LitVar_Missing var_F4
  loc_67E5E6: LitVar_Missing var_D4
  loc_67E5E9: LitVar_Missing var_B4
  loc_67E5EC: LitStr "&Cancelar"
  loc_67E5EF: FStStrCopy var_94
  loc_67E5F2: FLdRfVar var_94
  loc_67E5F5: LitI4 9
  loc_67E5FA: PopTmpLdAdStr var_90
  loc_67E5FD: LitI2_Byte &H16
  loc_67E5FF: PopTmpLdAd2 var_8A
  loc_67E602: ImpAdLdRf MemVar_74C7D0
  loc_67E605: NewIfNullPr clsMsg
  loc_67E608: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E60D: ILdRf var_1D8
  loc_67E610: FLdPrThis
  loc_67E611: VCallAd Control_ID_cmdCancel
  loc_67E614: FStAdFunc var_1DC
  loc_67E617: FLdPr var_1DC
  loc_67E61A: Me.Caption = from_stack_1
  loc_67E61F: FFreeStr var_94 = ""
  loc_67E626: FFree1Ad var_1DC
  loc_67E629: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E640: FLdRfVar var_1D8
  loc_67E643: LitVar_Missing var_1D4
  loc_67E646: LitVar_Missing var_1B4
  loc_67E649: LitVar_Missing var_194
  loc_67E64C: LitVar_Missing var_174
  loc_67E64F: LitVar_Missing var_154
  loc_67E652: LitVar_Missing var_134
  loc_67E655: LitVar_Missing var_114
  loc_67E658: LitVar_Missing var_F4
  loc_67E65B: LitVar_Missing var_D4
  loc_67E65E: LitVar_Missing var_B4
  loc_67E661: LitStr "&Aceptar"
  loc_67E664: FStStrCopy var_94
  loc_67E667: FLdRfVar var_94
  loc_67E66A: LitI4 &HA
  loc_67E66F: PopTmpLdAdStr var_90
  loc_67E672: LitI2_Byte &H16
  loc_67E674: PopTmpLdAd2 var_8A
  loc_67E677: ImpAdLdRf MemVar_74C7D0
  loc_67E67A: NewIfNullPr clsMsg
  loc_67E67D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E682: ILdRf var_1D8
  loc_67E685: FLdPrThis
  loc_67E686: VCallAd Control_ID_cmdOK
  loc_67E689: FStAdFunc var_1DC
  loc_67E68C: FLdPr var_1DC
  loc_67E68F: Me.Caption = from_stack_1
  loc_67E694: FFreeStr var_94 = ""
  loc_67E69B: FFree1Ad var_1DC
  loc_67E69E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E6B5: FLdRfVar var_1D8
  loc_67E6B8: LitVar_Missing var_1D4
  loc_67E6BB: LitVar_Missing var_1B4
  loc_67E6BE: LitVar_Missing var_194
  loc_67E6C1: LitVar_Missing var_174
  loc_67E6C4: LitVar_Missing var_154
  loc_67E6C7: LitVar_Missing var_134
  loc_67E6CA: LitVar_Missing var_114
  loc_67E6CD: LitVar_Missing var_F4
  loc_67E6D0: LitVar_Missing var_D4
  loc_67E6D3: LitVar_Missing var_B4
  loc_67E6D6: LitStr "Cambio de Password"
  loc_67E6D9: FStStrCopy var_94
  loc_67E6DC: FLdRfVar var_94
  loc_67E6DF: LitI4 1
  loc_67E6E4: PopTmpLdAdStr var_90
  loc_67E6E7: LitI2_Byte &H16
  loc_67E6E9: PopTmpLdAd2 var_8A
  loc_67E6EC: ImpAdLdRf MemVar_74C7D0
  loc_67E6EF: NewIfNullPr clsMsg
  loc_67E6F2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67E6F7: ILdRf var_1D8
  loc_67E6FA: FLdPr Me
  loc_67E6FD: MemStStrCopy
  loc_67E701: FFreeStr var_94 = ""
  loc_67E708: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_67E71F: FLdPrThis
  loc_67E720: VCallAd Control_ID_Usuario
  loc_67E723: FStAdFunc var_1DC
  loc_67E726: FLdPr var_1DC
  loc_67E729: Me.Clear
  loc_67E72E: FFree1Ad var_1DC
  loc_67E731: FLdRfVar var_8A
  loc_67E734: ImpAdLdRf MemVar_74A218
  loc_67E737: NewIfNullPr clsUsers
  loc_67E73F: FLdI2 var_8A
  loc_67E742: LitI2_Byte 6
  loc_67E744: EqI2
  loc_67E745: BranchF loc_67E750
  loc_67E748: LitI2_Byte 6
  loc_67E74A: FStI2 var_88
  loc_67E74D: Branch loc_67E755
  loc_67E750: LitI2_Byte &HA
  loc_67E752: FStI2 var_88
  loc_67E755: LitI2_Byte 2
  loc_67E757: FLdRfVar var_86
  loc_67E75A: FLdRfVar var_88
  loc_67E75D: CVarRef
  loc_67E762: LitVarI2 var_B4, 5
  loc_67E767: FLdI2 var_88
  loc_67E76A: LitI2_Byte 6
  loc_67E76C: EqI2
  loc_67E76D: CVarBoolI2 var_A4
  loc_67E771: FLdRfVar var_D4
  loc_67E774: ImpAdCallFPR4  = IIf(, , )
  loc_67E779: FLdRfVar var_D4
  loc_67E77C: CI2Var
  loc_67E77D: FFreeVar var_A4 = "": var_B4 = ""
  loc_67E786: ForI2 var_1E4
  loc_67E78C: LitVar_Missing var_A4
  loc_67E78F: PopAdLdVar
  loc_67E790: FLdRfVar var_94
  loc_67E793: FLdRfVar var_86
  loc_67E796: ImpAdLdRf MemVar_74A218
  loc_67E799: NewIfNullPr clsUsers
  loc_67E79C: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67E7A1: ILdRf var_94
  loc_67E7A4: FLdPrThis
  loc_67E7A5: VCallAd Control_ID_Usuario
  loc_67E7A8: FStAdFunc var_1DC
  loc_67E7AB: FLdPr var_1DC
  loc_67E7AE: Me.AddItem from_stack_1, from_stack_2
  loc_67E7B3: FFree1Str var_94
  loc_67E7B6: FFree1Ad var_1DC
  loc_67E7B9: FLdRfVar var_86
  loc_67E7BC: NextI2 var_1E4, loc_67E78C
  loc_67E7C1: LitI2_Byte 0
  loc_67E7C3: FLdPrThis
  loc_67E7C4: VCallAd Control_ID_Usuario
  loc_67E7C7: FStAdFunc var_1DC
  loc_67E7CA: FLdPr var_1DC
  loc_67E7CD: Me.ListIndex = from_stack_1
  loc_67E7D2: FFree1Ad var_1DC
  loc_67E7D5: LitStr vbNullString
  loc_67E7D8: FLdPrThis
  loc_67E7D9: VCallAd Control_ID_txtLastPassword
  loc_67E7DC: FStAdFunc var_1DC
  loc_67E7DF: FLdPr var_1DC
  loc_67E7E2: Me.Text = from_stack_1
  loc_67E7E7: FFree1Ad var_1DC
  loc_67E7EA: LitStr vbNullString
  loc_67E7ED: FLdPrThis
  loc_67E7EE: VCallAd Control_ID_txtNewPassword
  loc_67E7F1: FStAdFunc var_1DC
  loc_67E7F4: FLdPr var_1DC
  loc_67E7F7: Me.Text = from_stack_1
  loc_67E7FC: FFree1Ad var_1DC
  loc_67E7FF: LitStr vbNullString
  loc_67E802: FLdPrThis
  loc_67E803: VCallAd Control_ID_txtRetypePassword
  loc_67E806: FStAdFunc var_1DC
  loc_67E809: FLdPr var_1DC
  loc_67E80C: Me.Text = from_stack_1
  loc_67E811: FFree1Ad var_1DC
  loc_67E814: LitI2_Byte 0
  loc_67E816: FLdPr Me
  loc_67E819: MemStI2 LoginSucceeded
  loc_67E81C: ExitProcHresult
End Sub

Public Function LoginSucceededGet() '417EC0
  LoginSucceededGet = LoginSucceeded
End Function

Public Sub LoginSucceededPut(Value) '417ECF
  LoginSucceeded = Value
End Sub

Public Function NivelGet() '417EDE
  NivelGet = Nivel
End Function

Public Sub NivelPut(Value) '417EED
  Nivel = Value
End Sub

Public Function PasswordGet() '417EFC
  PasswordGet = Password
End Function

Public Sub PasswordPut(Value) '417F0B
  Password = Value
End Sub

Public Function strChangePasswordGet() '417F1A
  strChangePasswordGet = strChangePassword
End Function

Public Sub strChangePasswordPut(Value) '417F29
  strChangePassword = Value
End Sub

Private Function Proc_3_11_606A58(arg_C, arg_10) '606A58
  'Data Table: 4178C0
  loc_606998: LitI2_Byte 0
  loc_60699A: FStI2 var_88
  loc_60699D: ILdI4 arg_C
  loc_6069A0: FnLenStr
  loc_6069A1: CVarI4
  loc_6069A5: HardType
  loc_6069A6: ILdRf arg_C
  loc_6069A9: CVarRef
  loc_6069AE: FLdRfVar var_A8
  loc_6069B1: ImpAdCallFPR4  = Trim()
  loc_6069B6: FLdRfVar var_A8
  loc_6069B9: FnLenVar var_B8
  loc_6069BD: EqVarBool
  loc_6069BF: FFree1Var var_A8 = ""
  loc_6069C2: BranchF loc_6069E7
  loc_6069C5: ILdI4 arg_C
  loc_6069C8: CVarStr var_C8
  loc_6069CB: HardType
  loc_6069CC: LitVar_Empty
  loc_6069D0: EqVarBool
  loc_6069D2: BranchF loc_6069DF
  loc_6069D5: LitStr "La Password no debe ser vacia"
  loc_6069D8: IStStrCopy arg_10
  loc_6069DC: Branch loc_6069E4
  loc_6069DF: LitI2_Byte &HFF
  loc_6069E1: FStI2 var_88
  loc_6069E4: Branch loc_606A4A
  loc_6069E7: FLdRfVar var_1D8
  loc_6069EA: LitVar_Missing var_1D4
  loc_6069ED: LitVar_Missing var_1B4
  loc_6069F0: LitVar_Missing var_194
  loc_6069F3: LitVar_Missing var_174
  loc_6069F6: LitVar_Missing var_154
  loc_6069F9: LitVar_Missing var_134
  loc_6069FC: LitVar_Missing var_114
  loc_6069FF: LitVar_Missing var_D8
  loc_606A02: LitVar_Missing var_B8
  loc_606A05: LitVar_Missing var_A8
  loc_606A08: LitStr "La Password no debe iniciar ni terminar con espacios"
  loc_606A0B: FStStrCopy var_E4
  loc_606A0E: FLdRfVar var_E4
  loc_606A11: LitI4 &HC
  loc_606A16: PopTmpLdAdStr var_E0
  loc_606A19: LitI2_Byte &H16
  loc_606A1B: PopTmpLdAd2 var_DA
  loc_606A1E: ImpAdLdRf MemVar_74C7D0
  loc_606A21: NewIfNullPr clsMsg
  loc_606A24: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_606A29: FLdZeroAd var_1D8
  loc_606A2C: IStStr
  loc_606A30: FFree1Str var_E4
  loc_606A33: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_606A4A: FLdI2 var_88
  loc_606A4D: FStI2 var_86
  loc_606A50: ExitProcCbHresult
End Function
