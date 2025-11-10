VERSION 5.00
Begin VB.Form frmLogin
  Caption = "Validación de usuario"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2835
  ClientTop = 3540
  ClientWidth = 6855
  ClientHeight = 2760
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 6436.475
  ScaleHeight = 1630.7
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 180
    Top = 120
    Width = 6495
    Height = 1695
    TabIndex = 2
    Begin VB.TextBox txtPassword
      ForeColor = &HFF0000&
      Left = 2655
      Top = 1020
      Width = 3585
      Height = 450
      TabIndex = 4
      PasswordChar = "*"
    End
    Begin VB.ComboBox Usuario
      Style = 2
      Left = 2655
      Top = 360
      Width = 3615
      Height = 450
      TabIndex = 3
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
    Begin VB.Label lblLabels
      Caption = "&Password:"
      Index = 1
      ForeColor = &H40&
      Left = 360
      Top = 1080
      Width = 2040
      Height = 510
      TabIndex = 6
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
      ForeColor = &H40&
      Left = 360
      Top = 360
      Width = 2160
      Height = 495
      TabIndex = 5
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
    Left = 4920
    Top = 1980
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
    Left = 3000
    Top = 1980
    Width = 1740
    Height = 615
    TabIndex = 1
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

Attribute VB_Name = "frmLogin"

Public LoginSucceeded As Boolean
Public Nivel As Byte
Public Modulo As Integer
Public bNotCompany As Boolean


Private Sub cmdCancel_Click() '5D67AC
  'Data Table: 413454
  loc_5D6784: LitI2_Byte 0
  loc_5D6786: FLdPr Me
  loc_5D6789: MemStI2 LoginSucceeded
  loc_5D678C: LitI2_Byte 1
  loc_5D678E: CUI1I2
  loc_5D6790: ImpAdStUI1 MemVar_74BEA5
  loc_5D6794: ILdRf Me
  loc_5D6797: FStAdNoPop
  loc_5D679B: ImpAdLdRf MemVar_7520D4
  loc_5D679E: NewIfNullPr Global
  loc_5D67A1: Global.Unload from_stack_1
  loc_5D67A6: FFree1Ad var_88
  loc_5D67A9: ExitProcHresult
  loc_5D67AA: LitStr "StrFormMemory_4244481"
End Sub

Private Sub Form_Activate() '68EF68
  'Data Table: 413454
  loc_68E9C8: LitI2_Byte 0
  loc_68E9CA: FLdPr Me
  loc_68E9CD: MemStI2 LoginSucceeded
  loc_68E9D0: FLdPrThis
  loc_68E9D1: VCallAd Control_ID_Usuario
  loc_68E9D4: FStAdFunc var_90
  loc_68E9D7: FLdPr var_90
  loc_68E9DA: Me.Clear
  loc_68E9DF: FFree1Ad var_90
  loc_68E9E2: FLdRfVar var_1E0
  loc_68E9E5: LitVar_Missing var_1DC
  loc_68E9E8: LitVar_Missing var_1BC
  loc_68E9EB: LitVar_Missing var_19C
  loc_68E9EE: LitVar_Missing var_17C
  loc_68E9F1: LitVar_Missing var_15C
  loc_68E9F4: LitVar_Missing var_13C
  loc_68E9F7: LitVar_Missing var_11C
  loc_68E9FA: LitVar_Missing var_FC
  loc_68E9FD: LitVar_Missing var_DC
  loc_68EA00: LitVar_Missing var_BC
  loc_68EA03: LitStr "Password Inválido, intente nuevamente"
  loc_68EA06: FStStrCopy var_9C
  loc_68EA09: FLdRfVar var_9C
  loc_68EA0C: LitI4 1
  loc_68EA11: PopTmpLdAdStr var_98
  loc_68EA14: LitI2_Byte &H12
  loc_68EA16: PopTmpLdAd2 var_92
  loc_68EA19: ImpAdLdRf MemVar_74C7D0
  loc_68EA1C: NewIfNullPr clsMsg
  loc_68EA1F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EA24: ILdRf var_1E0
  loc_68EA27: FLdPr Me
  loc_68EA2A: MemStStrCopy
  loc_68EA2E: FFreeStr var_9C = ""
  loc_68EA35: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EA4C: FLdRfVar var_1E0
  loc_68EA4F: LitVar_Missing var_1DC
  loc_68EA52: LitVar_Missing var_1BC
  loc_68EA55: LitVar_Missing var_19C
  loc_68EA58: LitVar_Missing var_17C
  loc_68EA5B: LitVar_Missing var_15C
  loc_68EA5E: LitVar_Missing var_13C
  loc_68EA61: LitVar_Missing var_11C
  loc_68EA64: LitVar_Missing var_FC
  loc_68EA67: LitVar_Missing var_DC
  loc_68EA6A: LitVar_Missing var_BC
  loc_68EA6D: LitStr "Login"
  loc_68EA70: FStStrCopy var_9C
  loc_68EA73: FLdRfVar var_9C
  loc_68EA76: LitI4 2
  loc_68EA7B: PopTmpLdAdStr var_98
  loc_68EA7E: LitI2_Byte &H12
  loc_68EA80: PopTmpLdAd2 var_92
  loc_68EA83: ImpAdLdRf MemVar_74C7D0
  loc_68EA86: NewIfNullPr clsMsg
  loc_68EA89: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EA8E: ILdRf var_1E0
  loc_68EA91: FLdPr Me
  loc_68EA94: MemStStrCopy
  loc_68EA98: FFreeStr var_9C = ""
  loc_68EA9F: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EAB6: FLdRfVar var_1E0
  loc_68EAB9: LitVar_Missing var_1DC
  loc_68EABC: LitVar_Missing var_1BC
  loc_68EABF: LitVar_Missing var_19C
  loc_68EAC2: LitVar_Missing var_17C
  loc_68EAC5: LitVar_Missing var_15C
  loc_68EAC8: LitVar_Missing var_13C
  loc_68EACB: LitVar_Missing var_11C
  loc_68EACE: LitVar_Missing var_FC
  loc_68EAD1: LitVar_Missing var_DC
  loc_68EAD4: LitVar_Missing var_BC
  loc_68EAD7: LitStr "Codigo:"
  loc_68EADA: FStStrCopy var_9C
  loc_68EADD: FLdRfVar var_9C
  loc_68EAE0: LitI4 3
  loc_68EAE5: PopTmpLdAdStr var_98
  loc_68EAE8: LitI2_Byte &H12
  loc_68EAEA: PopTmpLdAd2 var_92
  loc_68EAED: ImpAdLdRf MemVar_74C7D0
  loc_68EAF0: NewIfNullPr clsMsg
  loc_68EAF3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EAF8: ILdRf var_1E0
  loc_68EAFB: FLdPr Me
  loc_68EAFE: MemStStrCopy
  loc_68EB02: FFreeStr var_9C = ""
  loc_68EB09: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EB20: FLdRfVar var_1E0
  loc_68EB23: LitVar_Missing var_1DC
  loc_68EB26: LitVar_Missing var_1BC
  loc_68EB29: LitVar_Missing var_19C
  loc_68EB2C: LitVar_Missing var_17C
  loc_68EB2F: LitVar_Missing var_15C
  loc_68EB32: LitVar_Missing var_13C
  loc_68EB35: LitVar_Missing var_11C
  loc_68EB38: LitVar_Missing var_FC
  loc_68EB3B: LitVar_Missing var_DC
  loc_68EB3E: LitVar_Missing var_BC
  loc_68EB41: LitStr "Usuario:"
  loc_68EB44: FStStrCopy var_9C
  loc_68EB47: FLdRfVar var_9C
  loc_68EB4A: LitI4 4
  loc_68EB4F: PopTmpLdAdStr var_98
  loc_68EB52: LitI2_Byte &H12
  loc_68EB54: PopTmpLdAd2 var_92
  loc_68EB57: ImpAdLdRf MemVar_74C7D0
  loc_68EB5A: NewIfNullPr clsMsg
  loc_68EB5D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EB62: ILdRf var_1E0
  loc_68EB65: FLdPr Me
  loc_68EB68: MemStStrCopy
  loc_68EB6C: FFreeStr var_9C = ""
  loc_68EB73: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EB8A: FLdRfVar var_1E0
  loc_68EB8D: LitVar_Missing var_1DC
  loc_68EB90: LitVar_Missing var_1BC
  loc_68EB93: LitVar_Missing var_19C
  loc_68EB96: LitVar_Missing var_17C
  loc_68EB99: LitVar_Missing var_15C
  loc_68EB9C: LitVar_Missing var_13C
  loc_68EB9F: LitVar_Missing var_11C
  loc_68EBA2: LitVar_Missing var_FC
  loc_68EBA5: LitVar_Missing var_DC
  loc_68EBA8: LitVar_Missing var_BC
  loc_68EBAB: LitStr "&Cancelar"
  loc_68EBAE: FStStrCopy var_9C
  loc_68EBB1: FLdRfVar var_9C
  loc_68EBB4: LitI4 5
  loc_68EBB9: PopTmpLdAdStr var_98
  loc_68EBBC: LitI2_Byte &H12
  loc_68EBBE: PopTmpLdAd2 var_92
  loc_68EBC1: ImpAdLdRf MemVar_74C7D0
  loc_68EBC4: NewIfNullPr clsMsg
  loc_68EBC7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EBCC: ILdRf var_1E0
  loc_68EBCF: FLdPrThis
  loc_68EBD0: VCallAd Control_ID_cmdCancel
  loc_68EBD3: FStAdFunc var_90
  loc_68EBD6: FLdPr var_90
  loc_68EBD9: Me.Caption = from_stack_1
  loc_68EBDE: FFreeStr var_9C = ""
  loc_68EBE5: FFree1Ad var_90
  loc_68EBE8: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EBFF: FLdRfVar var_1E0
  loc_68EC02: LitVar_Missing var_1DC
  loc_68EC05: LitVar_Missing var_1BC
  loc_68EC08: LitVar_Missing var_19C
  loc_68EC0B: LitVar_Missing var_17C
  loc_68EC0E: LitVar_Missing var_15C
  loc_68EC11: LitVar_Missing var_13C
  loc_68EC14: LitVar_Missing var_11C
  loc_68EC17: LitVar_Missing var_FC
  loc_68EC1A: LitVar_Missing var_DC
  loc_68EC1D: LitVar_Missing var_BC
  loc_68EC20: LitStr "&Aceptar"
  loc_68EC23: FStStrCopy var_9C
  loc_68EC26: FLdRfVar var_9C
  loc_68EC29: LitI4 6
  loc_68EC2E: PopTmpLdAdStr var_98
  loc_68EC31: LitI2_Byte &H12
  loc_68EC33: PopTmpLdAd2 var_92
  loc_68EC36: ImpAdLdRf MemVar_74C7D0
  loc_68EC39: NewIfNullPr clsMsg
  loc_68EC3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68EC41: ILdRf var_1E0
  loc_68EC44: FLdPrThis
  loc_68EC45: VCallAd Control_ID_cmdOK
  loc_68EC48: FStAdFunc var_90
  loc_68EC4B: FLdPr var_90
  loc_68EC4E: Me.Caption = from_stack_1
  loc_68EC53: FFreeStr var_9C = ""
  loc_68EC5A: FFree1Ad var_90
  loc_68EC5D: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68EC74: FLdRfVar var_1E0
  loc_68EC77: LitVar_Missing var_1DC
  loc_68EC7A: LitVar_Missing var_1BC
  loc_68EC7D: LitVar_Missing var_19C
  loc_68EC80: LitVar_Missing var_17C
  loc_68EC83: LitVar_Missing var_15C
  loc_68EC86: LitVar_Missing var_13C
  loc_68EC89: LitVar_Missing var_11C
  loc_68EC8C: LitVar_Missing var_FC
  loc_68EC8F: LitVar_Missing var_DC
  loc_68EC92: LitVar_Missing var_BC
  loc_68EC95: LitStr "Validación de usuario"
  loc_68EC98: FStStrCopy var_9C
  loc_68EC9B: FLdRfVar var_9C
  loc_68EC9E: LitI4 7
  loc_68ECA3: PopTmpLdAdStr var_98
  loc_68ECA6: LitI2_Byte &H12
  loc_68ECA8: PopTmpLdAd2 var_92
  loc_68ECAB: ImpAdLdRf MemVar_74C7D0
  loc_68ECAE: NewIfNullPr clsMsg
  loc_68ECB1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68ECB6: ILdRf var_1E0
  loc_68ECB9: FLdPr Me
  loc_68ECBC: Me.Caption = from_stack_1
  loc_68ECC1: FFreeStr var_9C = ""
  loc_68ECC8: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68ECDF: FLdRfVar var_1E0
  loc_68ECE2: LitVar_Missing var_1DC
  loc_68ECE5: LitVar_Missing var_1BC
  loc_68ECE8: LitVar_Missing var_19C
  loc_68ECEB: LitVar_Missing var_17C
  loc_68ECEE: LitVar_Missing var_15C
  loc_68ECF1: LitVar_Missing var_13C
  loc_68ECF4: LitVar_Missing var_11C
  loc_68ECF7: LitVar_Missing var_FC
  loc_68ECFA: LitVar_Missing var_DC
  loc_68ECFD: LitVar_Missing var_BC
  loc_68ED00: LitStr "&Password:"
  loc_68ED03: FStStrCopy var_9C
  loc_68ED06: FLdRfVar var_9C
  loc_68ED09: LitI4 8
  loc_68ED0E: PopTmpLdAdStr var_98
  loc_68ED11: LitI2_Byte &H12
  loc_68ED13: PopTmpLdAd2 var_92
  loc_68ED16: ImpAdLdRf MemVar_74C7D0
  loc_68ED19: NewIfNullPr clsMsg
  loc_68ED1C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68ED21: ILdRf var_1E0
  loc_68ED24: FLdRfVar var_1E4
  loc_68ED27: LitI2_Byte 1
  loc_68ED29: FLdPrThis
  loc_68ED2A: VCallAd Control_ID_lblLabels
  loc_68ED2D: FStAdFunc var_90
  loc_68ED30: FLdPr var_90
  loc_68ED33: Set from_stack_2 = Me(from_stack_1)
  loc_68ED38: FLdPr var_1E4
  loc_68ED3B: Me.Caption = from_stack_1
  loc_68ED40: FFreeStr var_9C = ""
  loc_68ED47: FFreeAd var_90 = ""
  loc_68ED4E: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_68ED65: FLdPr Me
  loc_68ED68: MemLdUI1 Nivel
  loc_68ED6C: CI2UI1
  loc_68ED6E: LitI2_Byte &HA
  loc_68ED70: EqI2
  loc_68ED71: BranchF loc_68EE6B
  loc_68ED74: FLdRfVar var_BC
  loc_68ED77: FLdRfVar var_8C
  loc_68ED7A: FLdRfVar var_90
  loc_68ED7D: ImpAdLdRf MemVar_74C760
  loc_68ED80: NewIfNullPr Formx
  loc_68ED83: from_stack_1v = Formx.global_4589716Get()
  loc_68ED88: FLdPr var_90
  loc_68ED8B: Call 0.Method_arg_1B0 ()
  loc_68ED90: FLdRfVar var_BC
  loc_68ED93: NotVar var_DC
  loc_68ED97: CBoolVarNull
  loc_68ED99: FFree1Ad var_90
  loc_68ED9C: FFree1Var var_BC = ""
  loc_68ED9F: BranchF loc_68EDCE
  loc_68EDA2: FLdRfVar var_BC
  loc_68EDA5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68EDAA: FLdRfVar var_BC
  loc_68EDAD: CBoolVarNull
  loc_68EDAF: FFree1Var var_BC = ""
  loc_68EDB2: BranchF loc_68EDCB
  loc_68EDB5: ILdRf Me
  loc_68EDB8: FStAdNoPop
  loc_68EDBC: ImpAdLdRf MemVar_7520D4
  loc_68EDBF: NewIfNullPr Global
  loc_68EDC2: Global.Unload from_stack_1
  loc_68EDC7: FFree1Ad var_90
  loc_68EDCA: ExitProcHresult
  loc_68EDCB: Branch loc_68ED74
  loc_68EDCE: FLdPr Me
  loc_68EDD1: MemLdStr global_72
  loc_68EDD4: FLdRfVar var_1E4
  loc_68EDD7: LitI2_Byte 0
  loc_68EDD9: FLdPrThis
  loc_68EDDA: VCallAd Control_ID_lblLabels
  loc_68EDDD: FStAdFunc var_90
  loc_68EDE0: FLdPr var_90
  loc_68EDE3: Set from_stack_2 = Me(from_stack_1)
  loc_68EDE8: FLdPr var_1E4
  loc_68EDEB: Me.Caption = from_stack_1
  loc_68EDF0: FFreeAd var_90 = ""
  loc_68EDF7: LitVarI2 var_BC, 19
  loc_68EDFC: LitI4 1
  loc_68EE01: ILdRf var_8C
  loc_68EE04: ImpAdCallI2 Mid$(, , )
  loc_68EE09: FStStr var_1E0
  loc_68EE0C: LitVar_Missing var_CC
  loc_68EE0F: PopAdLdVar
  loc_68EE10: FLdZeroAd var_1E0
  loc_68EE13: FStStrNoPop var_9C
  loc_68EE16: FLdPrThis
  loc_68EE17: VCallAd Control_ID_Usuario
  loc_68EE1A: FStAdFunc var_90
  loc_68EE1D: FLdPr var_90
  loc_68EE20: Me.AddItem from_stack_1, from_stack_2
  loc_68EE25: FFreeStr var_9C = ""
  loc_68EE2C: FFree1Ad var_90
  loc_68EE2F: FFree1Var var_BC = ""
  loc_68EE32: LitVarI2 var_BC, 8
  loc_68EE37: LitI4 &H14
  loc_68EE3C: ILdRf var_8C
  loc_68EE3F: ImpAdCallI2 Mid$(, , )
  loc_68EE44: FStStrNoPop var_9C
  loc_68EE47: FLdPr Me
  loc_68EE4A: MemStStrCopy
  loc_68EE4E: FFree1Str var_9C
  loc_68EE51: FFree1Var var_BC = ""
  loc_68EE54: LitI2_Byte &HFF
  loc_68EE56: FLdPrThis
  loc_68EE57: VCallAd Control_ID_Usuario
  loc_68EE5A: FStAdFunc var_90
  loc_68EE5D: FLdPr var_90
  loc_68EE60: Me.Locked = from_stack_1b
  loc_68EE65: FFree1Ad var_90
  loc_68EE68: Branch loc_68EF2C
  loc_68EE6B: FLdPr Me
  loc_68EE6E: MemLdStr global_76
  loc_68EE71: FLdRfVar var_1E4
  loc_68EE74: LitI2_Byte 0
  loc_68EE76: FLdPrThis
  loc_68EE77: VCallAd Control_ID_lblLabels
  loc_68EE7A: FStAdFunc var_90
  loc_68EE7D: FLdPr var_90
  loc_68EE80: Set from_stack_2 = Me(from_stack_1)
  loc_68EE85: FLdPr var_1E4
  loc_68EE88: Me.Caption = from_stack_1
  loc_68EE8D: FFreeAd var_90 = ""
  loc_68EE94: FLdRfVar var_92
  loc_68EE97: ImpAdLdRf MemVar_74A218
  loc_68EE9A: NewIfNullPr clsUsers
  loc_68EEA2: FLdI2 var_92
  loc_68EEA5: LitI2_Byte 6
  loc_68EEA7: EqI2
  loc_68EEA8: BranchF loc_68EEB3
  loc_68EEAB: LitI2_Byte 6
  loc_68EEAD: FStI2 var_88
  loc_68EEB0: Branch loc_68EEB8
  loc_68EEB3: LitI2_Byte &HA
  loc_68EEB5: FStI2 var_88
  loc_68EEB8: FLdPr Me
  loc_68EEBB: MemLdUI1 Nivel
  loc_68EEBF: CI2UI1
  loc_68EEC1: LitI2_Byte 1
  loc_68EEC3: AddI2
  loc_68EEC4: FLdRfVar var_86
  loc_68EEC7: FLdI2 var_88
  loc_68EECA: ForI2 var_1E8
  loc_68EED0: FLdPr Me
  loc_68EED3: MemLdI2 bNotCompany
  loc_68EED6: NotI4
  loc_68EED7: FLdRfVar var_9C
  loc_68EEDA: FLdRfVar var_86
  loc_68EEDD: ImpAdLdRf MemVar_74A218
  loc_68EEE0: NewIfNullPr clsUsers
  loc_68EEE3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_68EEE8: ILdRf var_9C
  loc_68EEEB: LitStr "Compañia"
  loc_68EEEE: NeStr
  loc_68EEF0: OrI4
  loc_68EEF1: FFree1Str var_9C
  loc_68EEF4: BranchF loc_68EF24
  loc_68EEF7: LitVar_Missing var_AC
  loc_68EEFA: PopAdLdVar
  loc_68EEFB: FLdRfVar var_9C
  loc_68EEFE: FLdRfVar var_86
  loc_68EF01: ImpAdLdRf MemVar_74A218
  loc_68EF04: NewIfNullPr clsUsers
  loc_68EF07: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_68EF0C: ILdRf var_9C
  loc_68EF0F: FLdPrThis
  loc_68EF10: VCallAd Control_ID_Usuario
  loc_68EF13: FStAdFunc var_90
  loc_68EF16: FLdPr var_90
  loc_68EF19: Me.AddItem from_stack_1, from_stack_2
  loc_68EF1E: FFree1Str var_9C
  loc_68EF21: FFree1Ad var_90
  loc_68EF24: FLdRfVar var_86
  loc_68EF27: NextI2 var_1E8, loc_68EED0
  loc_68EF2C: LitI2_Byte 0
  loc_68EF2E: FLdPrThis
  loc_68EF2F: VCallAd Control_ID_Usuario
  loc_68EF32: FStAdFunc var_90
  loc_68EF35: FLdPr var_90
  loc_68EF38: Me.ListIndex = from_stack_1
  loc_68EF3D: FFree1Ad var_90
  loc_68EF40: LitStr vbNullString
  loc_68EF43: FLdPrThis
  loc_68EF44: VCallAd Control_ID_txtPassword
  loc_68EF47: FStAdFunc var_90
  loc_68EF4A: FLdPr var_90
  loc_68EF4D: Me.Text = from_stack_1
  loc_68EF52: FFree1Ad var_90
  loc_68EF55: FLdPrThis
  loc_68EF56: VCallAd Control_ID_txtPassword
  loc_68EF59: FStAdFunc var_90
  loc_68EF5C: FLdPr var_90
  loc_68EF5F: Me.SetFocus
  loc_68EF64: FFree1Ad var_90
  loc_68EF67: ExitProcHresult
End Sub

Private Sub cmdOk_Click() '6D91B4
  'Data Table: 413454
  loc_6D8668: FLdRfVar var_96
  loc_6D866B: FLdRfVar var_90
  loc_6D866E: FLdPrThis
  loc_6D866F: VCallAd Control_ID_Usuario
  loc_6D8672: FStAdFunc var_8C
  loc_6D8675: FLdPr var_8C
  loc_6D8678:  = Me.Text
  loc_6D867D: FLdZeroAd var_90
  loc_6D8680: PopTmpLdAdStr
  loc_6D8684: ImpAdLdRf MemVar_74A218
  loc_6D8687: NewIfNullPr clsUsers
  loc_6D868F: FLdI2 var_96
  loc_6D8692: ImpAdLdPr unk_41345D
  loc_6D8695: MemStI2 global_4
  loc_6D8698: FFree1Str var_94
  loc_6D869B: FFree1Ad var_8C
  loc_6D869E: FLdRfVar var_90
  loc_6D86A1: FLdPrThis
  loc_6D86A2: VCallAd Control_ID_Usuario
  loc_6D86A5: FStAdFunc var_8C
  loc_6D86A8: FLdPr var_8C
  loc_6D86AB:  = Me.Text
  loc_6D86B0: ILdRf var_90
  loc_6D86B3: ImpAdLdPr unk_41345D
  loc_6D86B6: MemStStrCopy
  loc_6D86BA: FFree1Str var_90
  loc_6D86BD: FFree1Ad var_8C
  loc_6D86C0: FLdRfVar var_96
  loc_6D86C3: ImpAdLdRf MemVar_74C760
  loc_6D86C6: NewIfNullPr Formx
  loc_6D86C9: from_stack_1v = Formx.global_88Get()
  loc_6D86CE: FLdI2 var_96
  loc_6D86D1: LitStr "CEM44.INI"
  loc_6D86D4: FLdRfVar var_9C
  loc_6D86D7: CStr2Ansi
  loc_6D86D8: ILdRf var_9C
  loc_6D86DB: LitI4 0
  loc_6D86E0: LitStr "PICAFLOR"
  loc_6D86E3: FLdRfVar var_94
  loc_6D86E6: CStr2Ansi
  loc_6D86E7: ILdRf var_94
  loc_6D86EA: LitStr "GENERAL"
  loc_6D86ED: FLdRfVar var_90
  loc_6D86F0: CStr2Ansi
  loc_6D86F1: ILdRf var_90
  loc_6D86F4: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6D86F9: FStR4 var_A0
  loc_6D86FC: SetLastSystemError
  loc_6D86FD: ILdRf var_A0
  loc_6D8700: LitI4 1
  loc_6D8705: EqI4
  loc_6D8706: OrI4
  loc_6D8707: FFreeStr var_90 = "": var_94 = ""
  loc_6D8710: BranchF loc_6D876E
  loc_6D8713: LitI2_Byte &HFF
  loc_6D8715: FLdPr Me
  loc_6D8718: MemStI2 LoginSucceeded
  loc_6D871B: LitI2_Byte &HB
  loc_6D871D: CUI1I2
  loc_6D871F: ImpAdStUI1 MemVar_74BEA5
  loc_6D8723: FLdRfVar var_90
  loc_6D8726: FLdPrThis
  loc_6D8727: VCallAd Control_ID_Text3
  loc_6D872A: FStAdFunc var_8C
  loc_6D872D: FLdPr var_8C
  loc_6D8730:  = Formx.ComboBox.Text
  loc_6D8735: FLdRfVar var_B0
  loc_6D8738: LitI2_Byte 1
  loc_6D873A: PopTmpLdAd2 var_96
  loc_6D873D: FLdPr Me
  loc_6D8740: MemLdRfVar from_stack_1.Modulo
  loc_6D8743: FLdZeroAd var_90
  loc_6D8746: PopTmpLdAdStr
  loc_6D874A: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D874F: FFree1Str var_94
  loc_6D8752: FFree1Ad var_8C
  loc_6D8755: FFree1Var var_B0 = ""
  loc_6D8758: ILdRf Me
  loc_6D875B: FStAdNoPop
  loc_6D875F: ImpAdLdRf MemVar_7520D4
  loc_6D8762: NewIfNullPr Global
  loc_6D8765: Global.Unload from_stack_1
  loc_6D876A: FFree1Ad var_8C
  loc_6D876D: ExitProcHresult
  loc_6D876E: FLdPr Me
  loc_6D8771: MemLdUI1 Nivel
  loc_6D8775: CI2UI1
  loc_6D8777: LitI2_Byte &HA
  loc_6D8779: EqI2
  loc_6D877A: BranchF loc_6D8884
  loc_6D877D: FLdPr Me
  loc_6D8780: MemLdStr global_60
  loc_6D8783: FLdRfVar var_90
  loc_6D8786: FLdPrThis
  loc_6D8787: VCallAd Control_ID_txtPassword
  loc_6D878A: FStAdFunc var_8C
  loc_6D878D: FLdPr var_8C
  loc_6D8790:  = Me.Text
  loc_6D8795: ILdRf var_90
  loc_6D8798: EqStr
  loc_6D879A: FFree1Str var_90
  loc_6D879D: FFree1Ad var_8C
  loc_6D87A0: BranchF loc_6D8800
  loc_6D87A3: LitI2_Byte &HFF
  loc_6D87A5: FLdPr Me
  loc_6D87A8: MemStI2 LoginSucceeded
  loc_6D87AB: LitI2_Byte &HB
  loc_6D87AD: CUI1I2
  loc_6D87AF: ImpAdStUI1 MemVar_74BEA5
  loc_6D87B3: FLdRfVar var_90
  loc_6D87B6: FLdPrThis
  loc_6D87B7: VCallAd Control_ID_Usuario
  loc_6D87BA: FStAdFunc var_8C
  loc_6D87BD: FLdPr var_8C
  loc_6D87C0:  = Me.Text
  loc_6D87C5: FLdRfVar var_B0
  loc_6D87C8: LitI2_Byte 1
  loc_6D87CA: PopTmpLdAd2 var_96
  loc_6D87CD: FLdPr Me
  loc_6D87D0: MemLdRfVar from_stack_1.Modulo
  loc_6D87D3: FLdZeroAd var_90
  loc_6D87D6: PopTmpLdAdStr
  loc_6D87DA: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D87DF: FFree1Str var_94
  loc_6D87E2: FFree1Ad var_8C
  loc_6D87E5: FFree1Var var_B0 = ""
  loc_6D87E8: ILdRf Me
  loc_6D87EB: FStAdNoPop
  loc_6D87EF: ImpAdLdRf MemVar_7520D4
  loc_6D87F2: NewIfNullPr Global
  loc_6D87F5: Global.Unload from_stack_1
  loc_6D87FA: FFree1Ad var_8C
  loc_6D87FD: Branch loc_6D8881
  loc_6D8800: LitVar_Missing var_100
  loc_6D8803: LitVar_Missing var_B0
  loc_6D8806: FLdPr Me
  loc_6D8809: MemLdRfVar from_stack_1.global_68
  loc_6D880C: CVarRef
  loc_6D8811: LitI4 0
  loc_6D8816: FLdPr Me
  loc_6D8819: MemLdRfVar from_stack_1.global_64
  loc_6D881C: CVarRef
  loc_6D8821: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D8826: FFreeVar var_B0 = ""
  loc_6D882D: FLdPrThis
  loc_6D882E: VCallAd Control_ID_txtPassword
  loc_6D8831: FStAdFunc var_8C
  loc_6D8834: FLdPr var_8C
  loc_6D8837: Me.SetFocus
  loc_6D883C: FFree1Ad var_8C
  loc_6D883F: LitI2_Byte 0
  loc_6D8841: PopTmpLdAd2 var_96
  loc_6D8844: LitStr "{Home}+{End}"
  loc_6D8847: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D884C: FLdRfVar var_90
  loc_6D884F: FLdPrThis
  loc_6D8850: VCallAd Control_ID_Usuario
  loc_6D8853: FStAdFunc var_8C
  loc_6D8856: FLdPr var_8C
  loc_6D8859:  = Me.Text
  loc_6D885E: FLdRfVar var_B0
  loc_6D8861: LitI2_Byte 0
  loc_6D8863: PopTmpLdAd2 var_96
  loc_6D8866: FLdPr Me
  loc_6D8869: MemLdRfVar from_stack_1.Modulo
  loc_6D886C: FLdZeroAd var_90
  loc_6D886F: PopTmpLdAdStr
  loc_6D8873: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8878: FFree1Str var_94
  loc_6D887B: FFree1Ad var_8C
  loc_6D887E: FFree1Var var_B0 = ""
  loc_6D8881: Branch loc_6D91B3
  loc_6D8884: FLdRfVar var_96
  loc_6D8887: FLdPrThis
  loc_6D8888: VCallAd Control_ID_Usuario
  loc_6D888B: FStAdFunc var_8C
  loc_6D888E: FLdPr var_8C
  loc_6D8891:  = Me.ListIndex
  loc_6D8896: FLdI2 var_96
  loc_6D8899: FLdPr Me
  loc_6D889C: MemLdUI1 Nivel
  loc_6D88A0: CI2UI1
  loc_6D88A2: AddI2
  loc_6D88A3: LitI2_Byte 0
  loc_6D88A5: EqI2
  loc_6D88A6: FFree1Ad var_8C
  loc_6D88A9: BranchF loc_6D8907
  loc_6D88AC: LitI2_Byte &HFF
  loc_6D88AE: FLdPr Me
  loc_6D88B1: MemStI2 LoginSucceeded
  loc_6D88B4: LitI2_Byte 1
  loc_6D88B6: CUI1I2
  loc_6D88B8: ImpAdStUI1 MemVar_74BEA5
  loc_6D88BC: FLdRfVar var_90
  loc_6D88BF: FLdPrThis
  loc_6D88C0: VCallAd Control_ID_Usuario
  loc_6D88C3: FStAdFunc var_8C
  loc_6D88C6: FLdPr var_8C
  loc_6D88C9:  = Me.Text
  loc_6D88CE: FLdRfVar var_B0
  loc_6D88D1: LitI2_Byte 1
  loc_6D88D3: PopTmpLdAd2 var_96
  loc_6D88D6: FLdPr Me
  loc_6D88D9: MemLdRfVar from_stack_1.Modulo
  loc_6D88DC: FLdZeroAd var_90
  loc_6D88DF: PopTmpLdAdStr
  loc_6D88E3: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D88E8: FFree1Str var_94
  loc_6D88EB: FFree1Ad var_8C
  loc_6D88EE: FFree1Var var_B0 = ""
  loc_6D88F1: ILdRf Me
  loc_6D88F4: FStAdNoPop
  loc_6D88F8: ImpAdLdRf MemVar_7520D4
  loc_6D88FB: NewIfNullPr Global
  loc_6D88FE: Global.Unload from_stack_1
  loc_6D8903: FFree1Ad var_8C
  loc_6D8906: ExitProcHresult
  loc_6D8907: LitVarI2 var_B0, 1
  loc_6D890C: LitI4 4
  loc_6D8911: ImpAdLdI4 MemVar_74BEAC
  loc_6D8914: ImpAdCallI2 Mid$(, , )
  loc_6D8919: FStStrNoPop var_90
  loc_6D891C: LitStr "1"
  loc_6D891F: EqStr
  loc_6D8921: FFree1Str var_90
  loc_6D8924: FFree1Var var_B0 = ""
  loc_6D8927: BranchF loc_6D8E0D
  loc_6D892A: FLdRfVar var_96
  loc_6D892D: FLdPrThis
  loc_6D892E: VCallAd Control_ID_Usuario
  loc_6D8931: FStAdFunc var_8C
  loc_6D8934: FLdPr var_8C
  loc_6D8937:  = Me.ListIndex
  loc_6D893C: FLdI2 var_96
  loc_6D893F: FLdPr Me
  loc_6D8942: MemLdUI1 Nivel
  loc_6D8946: CI2UI1
  loc_6D8948: AddI2
  loc_6D8949: LitI2_Byte 1
  loc_6D894B: AddI2
  loc_6D894C: FStI2 var_102
  loc_6D894F: FFree1Ad var_8C
  loc_6D8952: FLdI2 var_102
  loc_6D8955: LitI2_Byte 6
  loc_6D8957: EqI2
  loc_6D8958: BranchF loc_6D8A8E
  loc_6D895B: FLdRfVar var_90
  loc_6D895E: FLdPrThis
  loc_6D895F: VCallAd Control_ID_txtPassword
  loc_6D8962: FStAdFunc var_8C
  loc_6D8965: FLdPr var_8C
  loc_6D8968:  = Me.Text
  loc_6D896D: FLdRfVar var_96
  loc_6D8970: FLdPr Me
  loc_6D8973: MemLdI2 Modulo
  loc_6D8976: ILdRf var_90
  loc_6D8979: from_stack_3v = Proc_71_12_5E56A4(from_stack_1v, from_stack_2v)
  loc_6D897E: FLdI2 var_96
  loc_6D8981: FFree1Str var_90
  loc_6D8984: FFree1Ad var_8C
  loc_6D8987: BranchF loc_6D8A0A
  loc_6D898A: LitI2_Byte &HFF
  loc_6D898C: FLdPr Me
  loc_6D898F: MemStI2 LoginSucceeded
  loc_6D8992: FLdPr Me
  loc_6D8995: MemLdUI1 Nivel
  loc_6D8999: CI2UI1
  loc_6D899B: FLdRfVar var_96
  loc_6D899E: FLdPrThis
  loc_6D899F: VCallAd Control_ID_Usuario
  loc_6D89A2: FStAdFunc var_8C
  loc_6D89A5: FLdPr var_8C
  loc_6D89A8:  = Me.ListIndex
  loc_6D89AD: FLdI2 var_96
  loc_6D89B0: AddI2
  loc_6D89B1: LitI2_Byte 1
  loc_6D89B3: AddI2
  loc_6D89B4: CUI1I2
  loc_6D89B6: ImpAdStUI1 MemVar_74BEA5
  loc_6D89BA: FFree1Ad var_8C
  loc_6D89BD: FLdRfVar var_90
  loc_6D89C0: FLdPrThis
  loc_6D89C1: VCallAd Control_ID_Usuario
  loc_6D89C4: FStAdFunc var_8C
  loc_6D89C7: FLdPr var_8C
  loc_6D89CA:  = Me.Text
  loc_6D89CF: FLdRfVar var_B0
  loc_6D89D2: LitI2_Byte 1
  loc_6D89D4: PopTmpLdAd2 var_96
  loc_6D89D7: FLdPr Me
  loc_6D89DA: MemLdRfVar from_stack_1.Modulo
  loc_6D89DD: FLdZeroAd var_90
  loc_6D89E0: PopTmpLdAdStr
  loc_6D89E4: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D89E9: FFree1Str var_94
  loc_6D89EC: FFree1Ad var_8C
  loc_6D89EF: FFree1Var var_B0 = ""
  loc_6D89F2: ILdRf Me
  loc_6D89F5: FStAdNoPop
  loc_6D89F9: ImpAdLdRf MemVar_7520D4
  loc_6D89FC: NewIfNullPr Global
  loc_6D89FF: Global.Unload from_stack_1
  loc_6D8A04: FFree1Ad var_8C
  loc_6D8A07: Branch loc_6D8A8B
  loc_6D8A0A: LitVar_Missing var_100
  loc_6D8A0D: LitVar_Missing var_B0
  loc_6D8A10: FLdPr Me
  loc_6D8A13: MemLdRfVar from_stack_1.global_68
  loc_6D8A16: CVarRef
  loc_6D8A1B: LitI4 0
  loc_6D8A20: FLdPr Me
  loc_6D8A23: MemLdRfVar from_stack_1.global_64
  loc_6D8A26: CVarRef
  loc_6D8A2B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D8A30: FFreeVar var_B0 = ""
  loc_6D8A37: FLdPrThis
  loc_6D8A38: VCallAd Control_ID_txtPassword
  loc_6D8A3B: FStAdFunc var_8C
  loc_6D8A3E: FLdPr var_8C
  loc_6D8A41: Me.SetFocus
  loc_6D8A46: FFree1Ad var_8C
  loc_6D8A49: LitI2_Byte 0
  loc_6D8A4B: PopTmpLdAd2 var_96
  loc_6D8A4E: LitStr "{Home}+{End}"
  loc_6D8A51: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D8A56: FLdRfVar var_90
  loc_6D8A59: FLdPrThis
  loc_6D8A5A: VCallAd Control_ID_Usuario
  loc_6D8A5D: FStAdFunc var_8C
  loc_6D8A60: FLdPr var_8C
  loc_6D8A63:  = Me.Text
  loc_6D8A68: FLdRfVar var_B0
  loc_6D8A6B: LitI2_Byte 0
  loc_6D8A6D: PopTmpLdAd2 var_96
  loc_6D8A70: FLdPr Me
  loc_6D8A73: MemLdRfVar from_stack_1.Modulo
  loc_6D8A76: FLdZeroAd var_90
  loc_6D8A79: PopTmpLdAdStr
  loc_6D8A7D: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8A82: FFree1Str var_94
  loc_6D8A85: FFree1Ad var_8C
  loc_6D8A88: FFree1Var var_B0 = ""
  loc_6D8A8B: Branch loc_6D8E0A
  loc_6D8A8E: FLdI2 var_102
  loc_6D8A91: LitI2_Byte 5
  loc_6D8A93: EqI2
  loc_6D8A94: BranchF loc_6D8BCA
  loc_6D8A97: FLdRfVar var_90
  loc_6D8A9A: FLdPrThis
  loc_6D8A9B: VCallAd Control_ID_txtPassword
  loc_6D8A9E: FStAdFunc var_8C
  loc_6D8AA1: FLdPr var_8C
  loc_6D8AA4:  = Me.Text
  loc_6D8AA9: FLdRfVar var_96
  loc_6D8AAC: FLdPr Me
  loc_6D8AAF: MemLdI2 Modulo
  loc_6D8AB2: ILdRf var_90
  loc_6D8AB5: from_stack_2v = Proc_71_13_5E5944(from_stack_1v)
  loc_6D8ABA: FLdI2 var_96
  loc_6D8ABD: FFree1Str var_90
  loc_6D8AC0: FFree1Ad var_8C
  loc_6D8AC3: BranchF loc_6D8B46
  loc_6D8AC6: LitI2_Byte &HFF
  loc_6D8AC8: FLdPr Me
  loc_6D8ACB: MemStI2 LoginSucceeded
  loc_6D8ACE: FLdPr Me
  loc_6D8AD1: MemLdUI1 Nivel
  loc_6D8AD5: CI2UI1
  loc_6D8AD7: FLdRfVar var_96
  loc_6D8ADA: FLdPrThis
  loc_6D8ADB: VCallAd Control_ID_Usuario
  loc_6D8ADE: FStAdFunc var_8C
  loc_6D8AE1: FLdPr var_8C
  loc_6D8AE4:  = Me.ListIndex
  loc_6D8AE9: FLdI2 var_96
  loc_6D8AEC: AddI2
  loc_6D8AED: LitI2_Byte 1
  loc_6D8AEF: AddI2
  loc_6D8AF0: CUI1I2
  loc_6D8AF2: ImpAdStUI1 MemVar_74BEA5
  loc_6D8AF6: FFree1Ad var_8C
  loc_6D8AF9: FLdRfVar var_90
  loc_6D8AFC: FLdPrThis
  loc_6D8AFD: VCallAd Control_ID_Usuario
  loc_6D8B00: FStAdFunc var_8C
  loc_6D8B03: FLdPr var_8C
  loc_6D8B06:  = Me.Text
  loc_6D8B0B: FLdRfVar var_B0
  loc_6D8B0E: LitI2_Byte 1
  loc_6D8B10: PopTmpLdAd2 var_96
  loc_6D8B13: FLdPr Me
  loc_6D8B16: MemLdRfVar from_stack_1.Modulo
  loc_6D8B19: FLdZeroAd var_90
  loc_6D8B1C: PopTmpLdAdStr
  loc_6D8B20: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8B25: FFree1Str var_94
  loc_6D8B28: FFree1Ad var_8C
  loc_6D8B2B: FFree1Var var_B0 = ""
  loc_6D8B2E: ILdRf Me
  loc_6D8B31: FStAdNoPop
  loc_6D8B35: ImpAdLdRf MemVar_7520D4
  loc_6D8B38: NewIfNullPr Global
  loc_6D8B3B: Global.Unload from_stack_1
  loc_6D8B40: FFree1Ad var_8C
  loc_6D8B43: Branch loc_6D8BC7
  loc_6D8B46: LitVar_Missing var_100
  loc_6D8B49: LitVar_Missing var_B0
  loc_6D8B4C: FLdPr Me
  loc_6D8B4F: MemLdRfVar from_stack_1.global_68
  loc_6D8B52: CVarRef
  loc_6D8B57: LitI4 0
  loc_6D8B5C: FLdPr Me
  loc_6D8B5F: MemLdRfVar from_stack_1.global_64
  loc_6D8B62: CVarRef
  loc_6D8B67: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D8B6C: FFreeVar var_B0 = ""
  loc_6D8B73: FLdPrThis
  loc_6D8B74: VCallAd Control_ID_txtPassword
  loc_6D8B77: FStAdFunc var_8C
  loc_6D8B7A: FLdPr var_8C
  loc_6D8B7D: Me.SetFocus
  loc_6D8B82: FFree1Ad var_8C
  loc_6D8B85: LitI2_Byte 0
  loc_6D8B87: PopTmpLdAd2 var_96
  loc_6D8B8A: LitStr "{Home}+{End}"
  loc_6D8B8D: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D8B92: FLdRfVar var_90
  loc_6D8B95: FLdPrThis
  loc_6D8B96: VCallAd Control_ID_Usuario
  loc_6D8B99: FStAdFunc var_8C
  loc_6D8B9C: FLdPr var_8C
  loc_6D8B9F:  = Me.Text
  loc_6D8BA4: FLdRfVar var_B0
  loc_6D8BA7: LitI2_Byte 0
  loc_6D8BA9: PopTmpLdAd2 var_96
  loc_6D8BAC: FLdPr Me
  loc_6D8BAF: MemLdRfVar from_stack_1.Modulo
  loc_6D8BB2: FLdZeroAd var_90
  loc_6D8BB5: PopTmpLdAdStr
  loc_6D8BB9: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8BBE: FFree1Str var_94
  loc_6D8BC1: FFree1Ad var_8C
  loc_6D8BC4: FFree1Var var_B0 = ""
  loc_6D8BC7: Branch loc_6D8E0A
  loc_6D8BCA: FLdRfVar var_90
  loc_6D8BCD: FLdRfVar var_96
  loc_6D8BD0: FLdPrThis
  loc_6D8BD1: VCallAd Control_ID_Usuario
  loc_6D8BD4: FStAdFunc var_8C
  loc_6D8BD7: FLdPr var_8C
  loc_6D8BDA:  = Me.ListIndex
  loc_6D8BDF: FLdI2 var_96
  loc_6D8BE2: FLdPr Me
  loc_6D8BE5: MemLdUI1 Nivel
  loc_6D8BE9: CI2UI1
  loc_6D8BEB: AddI2
  loc_6D8BEC: LitI2_Byte 1
  loc_6D8BEE: AddI2
  loc_6D8BEF: PopTmpLdAd2 var_104
  loc_6D8BF2: ImpAdLdRf MemVar_74A218
  loc_6D8BF5: NewIfNullPr clsUsers
  loc_6D8BFD: FLdZeroAd var_90
  loc_6D8C00: CVarStr var_100
  loc_6D8C03: HardType
  loc_6D8C04: LitI4 &HA
  loc_6D8C09: FLdRfVar var_B0
  loc_6D8C0C: ImpAdCallFPR4  = Space()
  loc_6D8C11: FLdRfVar var_B0
  loc_6D8C14: EqVarBool
  loc_6D8C16: FFree1Ad var_8C
  loc_6D8C19: FFreeVar var_100 = ""
  loc_6D8C20: BranchF loc_6D8C2C
  loc_6D8C23: LitStr "PASSWORD"
  loc_6D8C26: FStStrCopy var_88
  loc_6D8C29: Branch loc_6D8C68
  loc_6D8C2C: FLdRfVar var_90
  loc_6D8C2F: FLdRfVar var_96
  loc_6D8C32: FLdPrThis
  loc_6D8C33: VCallAd Control_ID_Usuario
  loc_6D8C36: FStAdFunc var_8C
  loc_6D8C39: FLdPr var_8C
  loc_6D8C3C:  = Me.ListIndex
  loc_6D8C41: FLdI2 var_96
  loc_6D8C44: FLdPr Me
  loc_6D8C47: MemLdUI1 Nivel
  loc_6D8C4B: CI2UI1
  loc_6D8C4D: AddI2
  loc_6D8C4E: LitI2_Byte 1
  loc_6D8C50: AddI2
  loc_6D8C51: PopTmpLdAd2 var_104
  loc_6D8C54: ImpAdLdRf MemVar_74A218
  loc_6D8C57: NewIfNullPr clsUsers
  loc_6D8C5F: FLdZeroAd var_90
  loc_6D8C62: FStStr var_88
  loc_6D8C65: FFree1Ad var_8C
  loc_6D8C68: FLdRfVar var_90
  loc_6D8C6B: FLdPrThis
  loc_6D8C6C: VCallAd Control_ID_txtPassword
  loc_6D8C6F: FStAdFunc var_8C
  loc_6D8C72: FLdPr var_8C
  loc_6D8C75:  = Me.Text
  loc_6D8C7A: FLdZeroAd var_90
  loc_6D8C7D: CVarStr var_100
  loc_6D8C80: HardType
  loc_6D8C81: LitI4 &HA
  loc_6D8C86: FLdRfVar var_B0
  loc_6D8C89: ImpAdCallFPR4  = Space()
  loc_6D8C8E: FLdRfVar var_B0
  loc_6D8C91: EqVarBool
  loc_6D8C93: FFree1Ad var_8C
  loc_6D8C96: FFreeVar var_100 = ""
  loc_6D8C9D: BranchF loc_6D8CB5
  loc_6D8CA0: LitStr "PASSWORD"
  loc_6D8CA3: FLdPrThis
  loc_6D8CA4: VCallAd Control_ID_txtPassword
  loc_6D8CA7: FStAdFunc var_8C
  loc_6D8CAA: FLdPr var_8C
  loc_6D8CAD: Me.Text = from_stack_1
  loc_6D8CB2: FFree1Ad var_8C
  loc_6D8CB5: FLdRfVar var_90
  loc_6D8CB8: FLdPrThis
  loc_6D8CB9: VCallAd Control_ID_txtPassword
  loc_6D8CBC: FStAdFunc var_8C
  loc_6D8CBF: FLdPr var_8C
  loc_6D8CC2:  = Me.Text
  loc_6D8CC7: FLdZeroAd var_90
  loc_6D8CCA: CVarStr var_B0
  loc_6D8CCD: FLdRfVar var_100
  loc_6D8CD0: ImpAdCallFPR4  = Ucase()
  loc_6D8CD5: FLdRfVar var_100
  loc_6D8CD8: FLdRfVar var_88
  loc_6D8CDB: CVarRef
  loc_6D8CE0: FLdRfVar var_114
  loc_6D8CE3: ImpAdCallFPR4  = Ucase()
  loc_6D8CE8: FLdRfVar var_114
  loc_6D8CEB: FLdRfVar var_124
  loc_6D8CEE: ImpAdCallFPR4  = Trim()
  loc_6D8CF3: FLdRfVar var_124
  loc_6D8CF6: EqVarBool
  loc_6D8CF8: FFree1Ad var_8C
  loc_6D8CFB: FFreeVar var_B0 = "": var_114 = "": var_100 = ""
  loc_6D8D06: BranchF loc_6D8D89
  loc_6D8D09: LitI2_Byte &HFF
  loc_6D8D0B: FLdPr Me
  loc_6D8D0E: MemStI2 LoginSucceeded
  loc_6D8D11: FLdPr Me
  loc_6D8D14: MemLdUI1 Nivel
  loc_6D8D18: CI2UI1
  loc_6D8D1A: FLdRfVar var_96
  loc_6D8D1D: FLdPrThis
  loc_6D8D1E: VCallAd Control_ID_Usuario
  loc_6D8D21: FStAdFunc var_8C
  loc_6D8D24: FLdPr var_8C
  loc_6D8D27:  = Me.ListIndex
  loc_6D8D2C: FLdI2 var_96
  loc_6D8D2F: AddI2
  loc_6D8D30: LitI2_Byte 1
  loc_6D8D32: AddI2
  loc_6D8D33: CUI1I2
  loc_6D8D35: ImpAdStUI1 MemVar_74BEA5
  loc_6D8D39: FFree1Ad var_8C
  loc_6D8D3C: FLdRfVar var_90
  loc_6D8D3F: FLdPrThis
  loc_6D8D40: VCallAd Control_ID_Usuario
  loc_6D8D43: FStAdFunc var_8C
  loc_6D8D46: FLdPr var_8C
  loc_6D8D49:  = Me.Text
  loc_6D8D4E: FLdRfVar var_B0
  loc_6D8D51: LitI2_Byte 1
  loc_6D8D53: PopTmpLdAd2 var_96
  loc_6D8D56: FLdPr Me
  loc_6D8D59: MemLdRfVar from_stack_1.Modulo
  loc_6D8D5C: FLdZeroAd var_90
  loc_6D8D5F: PopTmpLdAdStr
  loc_6D8D63: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8D68: FFree1Str var_94
  loc_6D8D6B: FFree1Ad var_8C
  loc_6D8D6E: FFree1Var var_B0 = ""
  loc_6D8D71: ILdRf Me
  loc_6D8D74: FStAdNoPop
  loc_6D8D78: ImpAdLdRf MemVar_7520D4
  loc_6D8D7B: NewIfNullPr Global
  loc_6D8D7E: Global.Unload from_stack_1
  loc_6D8D83: FFree1Ad var_8C
  loc_6D8D86: Branch loc_6D8E0A
  loc_6D8D89: LitVar_Missing var_100
  loc_6D8D8C: LitVar_Missing var_B0
  loc_6D8D8F: FLdPr Me
  loc_6D8D92: MemLdRfVar from_stack_1.global_68
  loc_6D8D95: CVarRef
  loc_6D8D9A: LitI4 0
  loc_6D8D9F: FLdPr Me
  loc_6D8DA2: MemLdRfVar from_stack_1.global_64
  loc_6D8DA5: CVarRef
  loc_6D8DAA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D8DAF: FFreeVar var_B0 = ""
  loc_6D8DB6: FLdPrThis
  loc_6D8DB7: VCallAd Control_ID_txtPassword
  loc_6D8DBA: FStAdFunc var_8C
  loc_6D8DBD: FLdPr var_8C
  loc_6D8DC0: Me.SetFocus
  loc_6D8DC5: FFree1Ad var_8C
  loc_6D8DC8: LitI2_Byte 0
  loc_6D8DCA: PopTmpLdAd2 var_96
  loc_6D8DCD: LitStr "{Home}+{End}"
  loc_6D8DD0: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D8DD5: FLdRfVar var_90
  loc_6D8DD8: FLdPrThis
  loc_6D8DD9: VCallAd Control_ID_Usuario
  loc_6D8DDC: FStAdFunc var_8C
  loc_6D8DDF: FLdPr var_8C
  loc_6D8DE2:  = Me.Text
  loc_6D8DE7: FLdRfVar var_B0
  loc_6D8DEA: LitI2_Byte 0
  loc_6D8DEC: PopTmpLdAd2 var_96
  loc_6D8DEF: FLdPr Me
  loc_6D8DF2: MemLdRfVar from_stack_1.Modulo
  loc_6D8DF5: FLdZeroAd var_90
  loc_6D8DF8: PopTmpLdAdStr
  loc_6D8DFC: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8E01: FFree1Str var_94
  loc_6D8E04: FFree1Ad var_8C
  loc_6D8E07: FFree1Var var_B0 = ""
  loc_6D8E0A: Branch loc_6D91B3
  loc_6D8E0D: ImpAdLdPr unk_41345D
  loc_6D8E10: MemLdI2 global_4
  loc_6D8E13: LitI2_Byte 9
  loc_6D8E15: EqI2
  loc_6D8E16: BranchF loc_6D8F4B
  loc_6D8E19: FLdRfVar var_90
  loc_6D8E1C: FLdPrThis
  loc_6D8E1D: VCallAd Control_ID_txtPassword
  loc_6D8E20: FStAdFunc var_8C
  loc_6D8E23: FLdPr var_8C
  loc_6D8E26:  = Me.Text
  loc_6D8E2B: FLdRfVar var_96
  loc_6D8E2E: FLdPr Me
  loc_6D8E31: MemLdI2 Modulo
  loc_6D8E34: ILdRf var_90
  loc_6D8E37: from_stack_3v = Proc_71_12_5E56A4(from_stack_1v, from_stack_2v)
  loc_6D8E3C: FLdI2 var_96
  loc_6D8E3F: FFree1Str var_90
  loc_6D8E42: FFree1Ad var_8C
  loc_6D8E45: BranchF loc_6D8EC9
  loc_6D8E48: LitI2_Byte &HFF
  loc_6D8E4A: FLdPr Me
  loc_6D8E4D: MemStI2 LoginSucceeded
  loc_6D8E50: FLdPr Me
  loc_6D8E53: MemLdUI1 Nivel
  loc_6D8E57: CI2UI1
  loc_6D8E59: FLdRfVar var_96
  loc_6D8E5C: FLdPrThis
  loc_6D8E5D: VCallAd Control_ID_Usuario
  loc_6D8E60: FStAdFunc var_8C
  loc_6D8E63: FLdPr var_8C
  loc_6D8E66:  = Me.ListIndex
  loc_6D8E6B: FLdI2 var_96
  loc_6D8E6E: AddI2
  loc_6D8E6F: LitI2_Byte 1
  loc_6D8E71: AddI2
  loc_6D8E72: CUI1I2
  loc_6D8E74: ImpAdStUI1 MemVar_74BEA5
  loc_6D8E78: FFree1Ad var_8C
  loc_6D8E7B: FLdRfVar var_90
  loc_6D8E7E: FLdPrThis
  loc_6D8E7F: VCallAd Control_ID_Usuario
  loc_6D8E82: FStAdFunc var_8C
  loc_6D8E85: FLdPr var_8C
  loc_6D8E88:  = Me.Text
  loc_6D8E8D: FLdRfVar var_B0
  loc_6D8E90: LitI2_Byte 1
  loc_6D8E92: PopTmpLdAd2 var_96
  loc_6D8E95: FLdPr Me
  loc_6D8E98: MemLdRfVar from_stack_1.Modulo
  loc_6D8E9B: FLdZeroAd var_90
  loc_6D8E9E: PopTmpLdAdStr
  loc_6D8EA2: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8EA7: FFree1Str var_94
  loc_6D8EAA: FFree1Ad var_8C
  loc_6D8EAD: FFree1Var var_B0 = ""
  loc_6D8EB0: ILdRf Me
  loc_6D8EB3: FStAdNoPop
  loc_6D8EB7: ImpAdLdRf MemVar_7520D4
  loc_6D8EBA: NewIfNullPr Global
  loc_6D8EBD: Global.Unload from_stack_1
  loc_6D8EC2: FFree1Ad var_8C
  loc_6D8EC5: ExitProcHresult
  loc_6D8EC6: Branch loc_6D8F4B
  loc_6D8EC9: LitVar_Missing var_100
  loc_6D8ECC: LitVar_Missing var_B0
  loc_6D8ECF: FLdPr Me
  loc_6D8ED2: MemLdRfVar from_stack_1.global_68
  loc_6D8ED5: CVarRef
  loc_6D8EDA: LitI4 0
  loc_6D8EDF: FLdPr Me
  loc_6D8EE2: MemLdRfVar from_stack_1.global_64
  loc_6D8EE5: CVarRef
  loc_6D8EEA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D8EEF: FFreeVar var_B0 = ""
  loc_6D8EF6: FLdPrThis
  loc_6D8EF7: VCallAd Control_ID_txtPassword
  loc_6D8EFA: FStAdFunc var_8C
  loc_6D8EFD: FLdPr var_8C
  loc_6D8F00: Me.SetFocus
  loc_6D8F05: FFree1Ad var_8C
  loc_6D8F08: LitI2_Byte 0
  loc_6D8F0A: PopTmpLdAd2 var_96
  loc_6D8F0D: LitStr "{Home}+{End}"
  loc_6D8F10: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D8F15: FLdRfVar var_90
  loc_6D8F18: FLdPrThis
  loc_6D8F19: VCallAd Control_ID_Usuario
  loc_6D8F1C: FStAdFunc var_8C
  loc_6D8F1F: FLdPr var_8C
  loc_6D8F22:  = Me.Text
  loc_6D8F27: FLdRfVar var_B0
  loc_6D8F2A: LitI2_Byte 0
  loc_6D8F2C: PopTmpLdAd2 var_96
  loc_6D8F2F: FLdPr Me
  loc_6D8F32: MemLdRfVar from_stack_1.Modulo
  loc_6D8F35: FLdZeroAd var_90
  loc_6D8F38: PopTmpLdAdStr
  loc_6D8F3C: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D8F41: FFree1Str var_94
  loc_6D8F44: FFree1Ad var_8C
  loc_6D8F47: FFree1Var var_B0 = ""
  loc_6D8F4A: ExitProcHresult
  loc_6D8F4B: FLdRfVar var_90
  loc_6D8F4E: FLdRfVar var_96
  loc_6D8F51: FLdPrThis
  loc_6D8F52: VCallAd Control_ID_Usuario
  loc_6D8F55: FStAdFunc var_8C
  loc_6D8F58: FLdPr var_8C
  loc_6D8F5B:  = Me.ListIndex
  loc_6D8F60: FLdI2 var_96
  loc_6D8F63: FLdPr Me
  loc_6D8F66: MemLdUI1 Nivel
  loc_6D8F6A: CI2UI1
  loc_6D8F6C: AddI2
  loc_6D8F6D: LitI2_Byte 1
  loc_6D8F6F: AddI2
  loc_6D8F70: PopTmpLdAd2 var_104
  loc_6D8F73: ImpAdLdRf MemVar_74A218
  loc_6D8F76: NewIfNullPr clsUsers
  loc_6D8F7E: FLdZeroAd var_90
  loc_6D8F81: CVarStr var_100
  loc_6D8F84: HardType
  loc_6D8F85: LitI4 &HA
  loc_6D8F8A: FLdRfVar var_B0
  loc_6D8F8D: ImpAdCallFPR4  = Space()
  loc_6D8F92: FLdRfVar var_B0
  loc_6D8F95: EqVarBool
  loc_6D8F97: FFree1Ad var_8C
  loc_6D8F9A: FFreeVar var_100 = ""
  loc_6D8FA1: BranchF loc_6D8FD5
  loc_6D8FA4: ImpAdLdPr unk_41345D
  loc_6D8FA7: MemLdI2 global_4
  loc_6D8FAA: LitI2_Byte &HA
  loc_6D8FAC: NeI2
  loc_6D8FAD: BranchF loc_6D8FB9
  loc_6D8FB0: LitStr "PASSWORD"
  loc_6D8FB3: FStStrCopy var_88
  loc_6D8FB6: Branch loc_6D8FD2
  loc_6D8FB9: FLdRfVar var_90
  loc_6D8FBC: LitI2_Byte &HA
  loc_6D8FBE: PopTmpLdAd2 var_96
  loc_6D8FC1: ImpAdLdRf MemVar_74A218
  loc_6D8FC4: NewIfNullPr clsUsers
  loc_6D8FCC: FLdZeroAd var_90
  loc_6D8FCF: FStStr var_88
  loc_6D8FD2: Branch loc_6D9011
  loc_6D8FD5: FLdRfVar var_90
  loc_6D8FD8: FLdRfVar var_96
  loc_6D8FDB: FLdPrThis
  loc_6D8FDC: VCallAd Control_ID_Usuario
  loc_6D8FDF: FStAdFunc var_8C
  loc_6D8FE2: FLdPr var_8C
  loc_6D8FE5:  = Me.ListIndex
  loc_6D8FEA: FLdI2 var_96
  loc_6D8FED: FLdPr Me
  loc_6D8FF0: MemLdUI1 Nivel
  loc_6D8FF4: CI2UI1
  loc_6D8FF6: AddI2
  loc_6D8FF7: LitI2_Byte 1
  loc_6D8FF9: AddI2
  loc_6D8FFA: PopTmpLdAd2 var_104
  loc_6D8FFD: ImpAdLdRf MemVar_74A218
  loc_6D9000: NewIfNullPr clsUsers
  loc_6D9008: FLdZeroAd var_90
  loc_6D900B: FStStr var_88
  loc_6D900E: FFree1Ad var_8C
  loc_6D9011: FLdRfVar var_90
  loc_6D9014: FLdPrThis
  loc_6D9015: VCallAd Control_ID_txtPassword
  loc_6D9018: FStAdFunc var_8C
  loc_6D901B: FLdPr var_8C
  loc_6D901E:  = Me.Text
  loc_6D9023: FLdZeroAd var_90
  loc_6D9026: CVarStr var_100
  loc_6D9029: HardType
  loc_6D902A: LitI4 &HA
  loc_6D902F: FLdRfVar var_B0
  loc_6D9032: ImpAdCallFPR4  = Space()
  loc_6D9037: FLdRfVar var_B0
  loc_6D903A: EqVarBool
  loc_6D903C: FFree1Ad var_8C
  loc_6D903F: FFreeVar var_100 = ""
  loc_6D9046: BranchF loc_6D905E
  loc_6D9049: LitStr "PASSWORD"
  loc_6D904C: FLdPrThis
  loc_6D904D: VCallAd Control_ID_txtPassword
  loc_6D9050: FStAdFunc var_8C
  loc_6D9053: FLdPr var_8C
  loc_6D9056: Me.Text = from_stack_1
  loc_6D905B: FFree1Ad var_8C
  loc_6D905E: FLdRfVar var_90
  loc_6D9061: FLdPrThis
  loc_6D9062: VCallAd Control_ID_txtPassword
  loc_6D9065: FStAdFunc var_8C
  loc_6D9068: FLdPr var_8C
  loc_6D906B:  = Me.Text
  loc_6D9070: FLdZeroAd var_90
  loc_6D9073: CVarStr var_B0
  loc_6D9076: FLdRfVar var_100
  loc_6D9079: ImpAdCallFPR4  = Ucase()
  loc_6D907E: FLdRfVar var_100
  loc_6D9081: FLdRfVar var_88
  loc_6D9084: CVarRef
  loc_6D9089: FLdRfVar var_114
  loc_6D908C: ImpAdCallFPR4  = Ucase()
  loc_6D9091: FLdRfVar var_114
  loc_6D9094: FLdRfVar var_124
  loc_6D9097: ImpAdCallFPR4  = Trim()
  loc_6D909C: FLdRfVar var_124
  loc_6D909F: EqVarBool
  loc_6D90A1: FFree1Ad var_8C
  loc_6D90A4: FFreeVar var_B0 = "": var_114 = "": var_100 = ""
  loc_6D90AF: BranchF loc_6D9132
  loc_6D90B2: LitI2_Byte &HFF
  loc_6D90B4: FLdPr Me
  loc_6D90B7: MemStI2 LoginSucceeded
  loc_6D90BA: FLdPr Me
  loc_6D90BD: MemLdUI1 Nivel
  loc_6D90C1: CI2UI1
  loc_6D90C3: FLdRfVar var_96
  loc_6D90C6: FLdPrThis
  loc_6D90C7: VCallAd Control_ID_Usuario
  loc_6D90CA: FStAdFunc var_8C
  loc_6D90CD: FLdPr var_8C
  loc_6D90D0:  = Me.ListIndex
  loc_6D90D5: FLdI2 var_96
  loc_6D90D8: AddI2
  loc_6D90D9: LitI2_Byte 1
  loc_6D90DB: AddI2
  loc_6D90DC: CUI1I2
  loc_6D90DE: ImpAdStUI1 MemVar_74BEA5
  loc_6D90E2: FFree1Ad var_8C
  loc_6D90E5: FLdRfVar var_90
  loc_6D90E8: FLdPrThis
  loc_6D90E9: VCallAd Control_ID_Usuario
  loc_6D90EC: FStAdFunc var_8C
  loc_6D90EF: FLdPr var_8C
  loc_6D90F2:  = Me.Text
  loc_6D90F7: FLdRfVar var_B0
  loc_6D90FA: LitI2_Byte 1
  loc_6D90FC: PopTmpLdAd2 var_96
  loc_6D90FF: FLdPr Me
  loc_6D9102: MemLdRfVar from_stack_1.Modulo
  loc_6D9105: FLdZeroAd var_90
  loc_6D9108: PopTmpLdAdStr
  loc_6D910C: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D9111: FFree1Str var_94
  loc_6D9114: FFree1Ad var_8C
  loc_6D9117: FFree1Var var_B0 = ""
  loc_6D911A: ILdRf Me
  loc_6D911D: FStAdNoPop
  loc_6D9121: ImpAdLdRf MemVar_7520D4
  loc_6D9124: NewIfNullPr Global
  loc_6D9127: Global.Unload from_stack_1
  loc_6D912C: FFree1Ad var_8C
  loc_6D912F: Branch loc_6D91B3
  loc_6D9132: LitVar_Missing var_100
  loc_6D9135: LitVar_Missing var_B0
  loc_6D9138: FLdPr Me
  loc_6D913B: MemLdRfVar from_stack_1.global_68
  loc_6D913E: CVarRef
  loc_6D9143: LitI4 0
  loc_6D9148: FLdPr Me
  loc_6D914B: MemLdRfVar from_stack_1.global_64
  loc_6D914E: CVarRef
  loc_6D9153: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D9158: FFreeVar var_B0 = ""
  loc_6D915F: FLdPrThis
  loc_6D9160: VCallAd Control_ID_txtPassword
  loc_6D9163: FStAdFunc var_8C
  loc_6D9166: FLdPr var_8C
  loc_6D9169: Me.SetFocus
  loc_6D916E: FFree1Ad var_8C
  loc_6D9171: LitI2_Byte 0
  loc_6D9173: PopTmpLdAd2 var_96
  loc_6D9176: LitStr "{Home}+{End}"
  loc_6D9179: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_6D917E: FLdRfVar var_90
  loc_6D9181: FLdPrThis
  loc_6D9182: VCallAd Control_ID_Usuario
  loc_6D9185: FStAdFunc var_8C
  loc_6D9188: FLdPr var_8C
  loc_6D918B:  = Me.Text
  loc_6D9190: FLdRfVar var_B0
  loc_6D9193: LitI2_Byte 0
  loc_6D9195: PopTmpLdAd2 var_96
  loc_6D9198: FLdPr Me
  loc_6D919B: MemLdRfVar from_stack_1.Modulo
  loc_6D919E: FLdZeroAd var_90
  loc_6D91A1: PopTmpLdAdStr
  loc_6D91A5: from_stack_4v = Proc_71_11_62A918(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6D91AA: FFree1Str var_94
  loc_6D91AD: FFree1Ad var_8C
  loc_6D91B0: FFree1Var var_B0 = ""
  loc_6D91B3: ExitProcHresult
End Sub

Public Function LoginSucceededGet() '413970
  LoginSucceededGet = LoginSucceeded
End Function

Public Sub LoginSucceededPut(Value) '41397F
  LoginSucceeded = Value
End Sub

Public Function NivelGet() '41398E
  NivelGet = Nivel
End Function

Public Sub NivelPut(Value) '41399D
  Nivel = Value
End Sub

Public Function ModuloGet() '4139AC
  ModuloGet = Modulo
End Function

Public Sub ModuloPut(Value) '4139BB
  Modulo = Value
End Sub

Public Function bNotCompanyGet() '4139CA
  bNotCompanyGet = bNotCompany
End Function

Public Sub bNotCompanyPut(Value) '4139D9
  bNotCompany = Value
End Sub

Private Function Proc_71_11_62A918(arg_C, arg_10, arg_14) '62A918
  'Data Table: 413454
  loc_62A790: ZeroRetValVar
  loc_62A792: OnErrorGoto loc_62A90A
  loc_62A795: FLdRfVar var_A2
  loc_62A798: LitStr "/reporte.mdb"
  loc_62A79B: FStStrCopy var_A0
  loc_62A79E: FLdRfVar var_A0
  loc_62A7A1: ImpAdLdRf MemVar_74DC6C
  loc_62A7A4: NewIfNullPr Reportes_Anteriores
  loc_62A7A7: from_stack_2v = Reportes_Anteriores.AbrirBD(from_stack_1v)
  loc_62A7AC: FFree1Str var_A0
  loc_62A7AF: FLdRfVar var_E0
  loc_62A7B2: LitVar_Missing var_DC
  loc_62A7B5: PopAdLdVar
  loc_62A7B6: LitVar_Missing var_CC
  loc_62A7B9: PopAdLdVar
  loc_62A7BA: LitVar_Missing var_BC
  loc_62A7BD: PopAdLdVar
  loc_62A7BE: LitStr "SELECT * FROM  Modulos where id = "
  loc_62A7C1: ILdI2 arg_10
  loc_62A7C4: CStrUI1
  loc_62A7C6: FStStrNoPop var_A0
  loc_62A7C9: ConcatStr
  loc_62A7CA: FStStrNoPop var_AC
  loc_62A7CD: FLdRfVar var_A8
  loc_62A7D0: ImpAdLdRf MemVar_74DC6C
  loc_62A7D3: NewIfNullPr Reportes_Anteriores
  loc_62A7D6: from_stack_1v = Reportes_Anteriores.DBaseGet()
  loc_62A7DB: FLdPr var_A8
  loc_62A7DE: Reportes_Anteriores.Database.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_62A7E3: FLdZeroAd var_E0
  loc_62A7E6: FStAdFunc var_9C
  loc_62A7E9: FFreeStr var_A0 = ""
  loc_62A7F0: FFree1Ad var_A8
  loc_62A7F3: FLdRfVar var_F0
  loc_62A7F6: FLdRfVar var_E0
  loc_62A7F9: LitVarI2 var_BC, 3
  loc_62A7FE: PopAdLdVar
  loc_62A7FF: FLdRfVar var_A8
  loc_62A802: FLdPr var_9C
  loc_62A805:  = Me.Fields
  loc_62A80A: FLdPr var_A8
  loc_62A80D: from_stack_2 = Me.Item(from_stack_1)
  loc_62A812: FLdPr var_E0
  loc_62A815:  = Me.Value
  loc_62A81A: FLdRfVar var_F0
  loc_62A81D: CBoolVarNull
  loc_62A81F: FFreeAd var_A8 = ""
  loc_62A826: FFree1Var var_F0 = ""
  loc_62A829: BranchF loc_62A8F6
  loc_62A82C: ILdI2 arg_14
  loc_62A82F: CStrUI1
  loc_62A831: FStStrNoPop var_A0
  loc_62A834: ILdI4 arg_C
  loc_62A837: ConcatStr
  loc_62A838: FStStr var_98
  loc_62A83B: FFree1Str var_A0
  loc_62A83E: LitI2_Byte &HFF
  loc_62A840: PopTmpLdAd2 var_F2
  loc_62A843: LitI2_Byte &H1F
  loc_62A845: PopTmpLdAd2 var_A2
  loc_62A848: LitStr " "
  loc_62A84B: FStStrCopy var_A0
  loc_62A84E: FLdRfVar var_A0
  loc_62A851: FLdRfVar var_98
  loc_62A854: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_62A859: FStStr var_98
  loc_62A85C: FFree1Str var_A0
  loc_62A85F: ILdRf var_98
  loc_62A862: FLdRfVar var_A0
  loc_62A865: ILdRf arg_10
  loc_62A868: ImpAdLdRf MemVar_74A21C
  loc_62A86B: NewIfNullPr clsSecurity
  loc_62A86E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62A873: ILdRf var_A0
  loc_62A876: ConcatStr
  loc_62A877: FStStr var_98
  loc_62A87A: FFree1Str var_A0
  loc_62A87D: LitI2_Byte &HFF
  loc_62A87F: PopTmpLdAd2 var_F2
  loc_62A882: LitI2 131
  loc_62A885: PopTmpLdAd2 var_A2
  loc_62A888: LitStr " "
  loc_62A88B: FStStrCopy var_A0
  loc_62A88E: FLdRfVar var_A0
  loc_62A891: FLdRfVar var_98
  loc_62A894: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_62A899: FStStr var_98
  loc_62A89C: FFree1Str var_A0
  loc_62A89F: FLdRfVar var_A2
  loc_62A8A2: FLdRfVar var_98
  loc_62A8A5: FLdRfVar var_A8
  loc_62A8A8: ImpAdLdRf MemVar_74C760
  loc_62A8AB: NewIfNullPr Formx
  loc_62A8AE: from_stack_1v = Formx.global_4589716Get()
  loc_62A8B3: FLdPr var_A8
  loc_62A8B6: Call 0.Method_arg_324 ()
  loc_62A8BB: FLdI2 var_A2
  loc_62A8BE: NotI4
  loc_62A8BF: FFree1Ad var_A8
  loc_62A8C2: BranchF loc_62A8F6
  loc_62A8C5: FLdRfVar var_F0
  loc_62A8C8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62A8CD: FLdRfVar var_F0
  loc_62A8D0: CBoolVarNull
  loc_62A8D2: FFree1Var var_F0 = ""
  loc_62A8D5: BranchF loc_62A8F3
  loc_62A8D8: ILdRf Me
  loc_62A8DB: FStAdNoPop
  loc_62A8DF: ImpAdLdRf MemVar_7520D4
  loc_62A8E2: NewIfNullPr Global
  loc_62A8E5: Global.Unload from_stack_1
  loc_62A8EA: FFree1Ad var_A8
  loc_62A8ED: ExitProcCbHresult
  loc_62A8F3: Branch loc_62A89F
  loc_62A8F6: FLdRfVar var_A2
  loc_62A8F9: ImpAdLdRf MemVar_74DC6C
  loc_62A8FC: NewIfNullPr Reportes_Anteriores
  loc_62A8FF: from_stack_1v = Reportes_Anteriores.CerrarBD()
  loc_62A904: ExitProcCbHresult
  loc_62A90A: ImpAdCallFPR4 Proc_87_15_5C8864()
  loc_62A90F: ExitProcCbHresult
End Function

Private Function Proc_71_12_5E56A4(arg_C, arg_10) '5E56A4
  'Data Table: 413454
  loc_5E563C: ILdRf arg_C
  loc_5E563F: FStStrCopy var_8C
  loc_5E5642: LitI2_Byte 0
  loc_5E5644: FStI2 var_86
  loc_5E5647: FLdRfVar var_A4
  loc_5E564A: FLdI2 arg_10
  loc_5E564D: ILdRf var_8C
  loc_5E5650: FLdRfVar var_8E
  loc_5E5653: FLdRfVar var_94
  loc_5E5656: ImpAdLdRf MemVar_74C760
  loc_5E5659: NewIfNullPr Formx
  loc_5E565C: from_stack_1v = Formx.global_4589716Get()
  loc_5E5661: FLdPr var_94
  loc_5E5664: Formx.HelpContextID = from_stack_1
  loc_5E5669: FLdRfVar var_A4
  loc_5E566C: NotVar var_B4
  loc_5E5670: CBoolVarNull
  loc_5E5672: FFree1Ad var_94
  loc_5E5675: FFree1Var var_A4 = ""
  loc_5E5678: BranchF loc_5E5697
  loc_5E567B: FLdRfVar var_A4
  loc_5E567E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E5683: FLdRfVar var_A4
  loc_5E5686: CBoolVarNull
  loc_5E5688: FFree1Var var_A4 = ""
  loc_5E568B: BranchF loc_5E5694
  loc_5E568E: ExitProcCbHresult
  loc_5E5694: Branch loc_5E5647
  loc_5E5697: FLdI2 var_8E
  loc_5E569A: FStI2 var_86
  loc_5E569D: ExitProcCbHresult
  loc_5E56A3: Ary1LdRf
End Function

Private Function Proc_71_13_5E5944(arg_C) '5E5944
  'Data Table: 413454
  loc_5E58DC: ILdRf arg_C
  loc_5E58DF: FStStrCopy var_8C
  loc_5E58E2: LitI2_Byte 0
  loc_5E58E4: FStI2 var_86
  loc_5E58E7: FLdRfVar var_A4
  loc_5E58EA: LitI2_Byte 0
  loc_5E58EC: ILdRf var_8C
  loc_5E58EF: FLdRfVar var_8E
  loc_5E58F2: FLdRfVar var_94
  loc_5E58F5: ImpAdLdRf MemVar_74C760
  loc_5E58F8: NewIfNullPr Formx
  loc_5E58FB: from_stack_1v = Formx.global_4589716Get()
  loc_5E5900: FLdPr var_94
  loc_5E5903:  = Formx.ActiveControl
  loc_5E5908: FLdRfVar var_A4
  loc_5E590B: NotVar var_B4
  loc_5E590F: CBoolVarNull
  loc_5E5911: FFree1Ad var_94
  loc_5E5914: FFree1Var var_A4 = ""
  loc_5E5917: BranchF loc_5E5936
  loc_5E591A: FLdRfVar var_A4
  loc_5E591D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5E5922: FLdRfVar var_A4
  loc_5E5925: CBoolVarNull
  loc_5E5927: FFree1Var var_A4 = ""
  loc_5E592A: BranchF loc_5E5933
  loc_5E592D: ExitProcCbHresult
  loc_5E5933: Branch loc_5E58E7
  loc_5E5936: FLdI2 var_8E
  loc_5E5939: FStI2 var_86
  loc_5E593C: ExitProcCbHresult
End Function
