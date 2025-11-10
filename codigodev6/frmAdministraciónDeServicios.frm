VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmAdministraciónDeServicios
  Caption = "Administración de servicios."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5310
  ClientHeight = 6630
  StartUpPosition = 3 'Windows Default
  Begin VB.ComboBox cboListaDeServicios
    Left = 1920
    Top = 4740
    Width = 2895
    Height = 315
    TabIndex = 2
  End
  Begin VB.CommandButton Command1
    Caption = "Salir"
    Left = 2640
    Top = 6000
    Width = 1275
    Height = 495
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSPanel sspListaDeServicios
    Left = 2340
    Top = 4020
    Width = 2115
    Height = 495
    TabIndex = 4
    OleObjectBlob = "frmAdministraciónDeServicios.frx":0000
  End
  Begin VB.CommandButton cmdActivarDesactivar
    Caption = "Activar"
    Left = 2460
    Top = 3120
    Width = 1815
    Height = 435
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSPanel sspNombredelServicio
    Left = 1920
    Top = 720
    Width = 2835
    Height = 615
    TabIndex = 0
    OleObjectBlob = "frmAdministraciónDeServicios.frx":0084
    ToolTipText = "Seleccione un servicio de la lista y presione OK"
  End
  Begin VB.Image imgSemaforoRojo
    Left = 2940
    Top = 1740
    Width = 780
    Height = 1020
    Stretch = -1  'True
  End
  Begin VB.Image ImgSemaforoVerde
    Left = 3000
    Top = 1800
    Width = 735
    Height = 975
    Stretch = -1  'True
  End
  Begin VB.Image imgSemaforoAmarillo
    Left = 2940
    Top = 1800
    Width = 780
    Height = 1005
    Stretch = -1  'True
  End
  Begin VB.Image Image1
    Left = 60
    Top = 300
    Width = 1380
    Height = 5235
    Stretch = -1  'True
  End
End

Attribute VB_Name = "frmAdministraciónDeServicios"


Private Sub cboListaDeServicios_Click() '617408
  'Data Table: 419614
  loc_6172E8: FLdRfVar var_94
  loc_6172EB: FLdRfVar var_8A
  loc_6172EE: FLdPrThis
  loc_6172EF: VCallAd Control_ID_cboListaDeServicios
  loc_6172F2: FStAdFunc var_88
  loc_6172F5: FLdPr var_88
  loc_6172F8:  = Me.ListIndex
  loc_6172FD: FLdI2 var_8A
  loc_617300: FLdPrThis
  loc_617301: VCallAd Control_ID_cboListaDeServicios
  loc_617304: FStAdFunc var_90
  loc_617307: FLdPr var_90
  loc_61730A: from_stack_2 = Me.List(from_stack_1)
  loc_61730F: FLdZeroAd var_94
  loc_617312: CVarStr var_A4
  loc_617315: PopAdLdVar
  loc_617316: FLdPrThis
  loc_617317: VCallAd Control_ID_sspNombredelServicio
  loc_61731A: FStAdFunc var_A8
  loc_61731D: FLdPr var_A8
  loc_617320: LateIdSt
  loc_617325: FFreeAd var_88 = "": var_90 = ""
  loc_61732E: FFree1Var var_A4 = ""
  loc_617331: FLdRfVar var_94
  loc_617334: FLdRfVar var_8A
  loc_617337: FLdPrThis
  loc_617338: VCallAd Control_ID_cboListaDeServicios
  loc_61733B: FStAdFunc var_88
  loc_61733E: FLdPr var_88
  loc_617341:  = Me.ListIndex
  loc_617346: FLdI2 var_8A
  loc_617349: FLdPrThis
  loc_61734A: VCallAd Control_ID_cboListaDeServicios
  loc_61734D: FStAdFunc var_90
  loc_617350: FLdPr var_90
  loc_617353: from_stack_2 = Me.List(from_stack_1)
  loc_617358: ILdRf var_94
  loc_61735B: FLdRfVar var_AC
  loc_61735E: CStr2Ansi
  loc_61735F: ILdRf var_AC
  loc_617362: ImpAdCallUI1 QueryService()
  loc_617368: FStUI1 var_AE
  loc_61736C: SetLastSystemError
  loc_61736D: FLdUI1
  loc_617371: CI2UI1
  loc_617373: LitI2_Byte 4
  loc_617375: EqI2
  loc_617376: FFreeStr var_94 = ""
  loc_61737D: FFreeAd var_88 = ""
  loc_617384: BranchF loc_6173C7
  loc_617387: LitStr "Desactivar"
  loc_61738A: FLdPrThis
  loc_61738B: VCallAd Control_ID_cmdActivarDesactivar
  loc_61738E: FStAdFunc var_88
  loc_617391: FLdPr var_88
  loc_617394: Me.Caption = from_stack_1
  loc_617399: FFree1Ad var_88
  loc_61739C: LitI2_Byte &HFF
  loc_61739E: FLdPrThis
  loc_61739F: VCallAd Control_ID_ImgSemaforoVerde
  loc_6173A2: FStAdFunc var_88
  loc_6173A5: FLdPr var_88
  loc_6173A8: Me.Visible = from_stack_1b
  loc_6173AD: FFree1Ad var_88
  loc_6173B0: LitI2_Byte 0
  loc_6173B2: FLdPrThis
  loc_6173B3: VCallAd Control_ID_imgSemaforoRojo
  loc_6173B6: FStAdFunc var_88
  loc_6173B9: FLdPr var_88
  loc_6173BC: Me.Visible = from_stack_1b
  loc_6173C1: FFree1Ad var_88
  loc_6173C4: Branch loc_617404
  loc_6173C7: LitStr "Activar"
  loc_6173CA: FLdPrThis
  loc_6173CB: VCallAd Control_ID_cmdActivarDesactivar
  loc_6173CE: FStAdFunc var_88
  loc_6173D1: FLdPr var_88
  loc_6173D4: Me.Caption = from_stack_1
  loc_6173D9: FFree1Ad var_88
  loc_6173DC: LitI2_Byte &HFF
  loc_6173DE: FLdPrThis
  loc_6173DF: VCallAd Control_ID_imgSemaforoRojo
  loc_6173E2: FStAdFunc var_88
  loc_6173E5: FLdPr var_88
  loc_6173E8: Me.Visible = from_stack_1b
  loc_6173ED: FFree1Ad var_88
  loc_6173F0: LitI2_Byte 0
  loc_6173F2: FLdPrThis
  loc_6173F3: VCallAd Control_ID_ImgSemaforoVerde
  loc_6173F6: FStAdFunc var_88
  loc_6173F9: FLdPr var_88
  loc_6173FC: Me.Visible = from_stack_1b
  loc_617401: FFree1Ad var_88
  loc_617404: ExitProcHresult
End Sub

Private Sub cmdActivarDesactivar_Click() '645064
  'Data Table: 419614
  loc_644E08: from_stack_1v = Proc_64_13_5DBDEC()
  loc_644E0D: FLdRfVar var_94
  loc_644E10: FLdPrThis
  loc_644E11: VCallAd Control_ID_cmdActivarDesactivar
  loc_644E14: FStAdFunc var_90
  loc_644E17: FLdPr var_90
  loc_644E1A:  = Me.Caption
  loc_644E1F: ILdRf var_94
  loc_644E22: LitStr "Activar"
  loc_644E25: EqStr
  loc_644E27: FFree1Str var_94
  loc_644E2A: FFree1Ad var_90
  loc_644E2D: BranchF loc_644F4A
  loc_644E30: FLdRfVar var_96
  loc_644E33: FLdPrThis
  loc_644E34: VCallAd Control_ID_cboListaDeServicios
  loc_644E37: FStAdFunc var_90
  loc_644E3A: FLdPr var_90
  loc_644E3D:  = Me.ListIndex
  loc_644E42: FLdRfVar var_94
  loc_644E45: FLdI2 var_96
  loc_644E48: FLdPrThis
  loc_644E49: VCallAd Control_ID_cboListaDeServicios
  loc_644E4C: FStAdFunc var_9C
  loc_644E4F: FLdPr var_9C
  loc_644E52: from_stack_2 = Me.List(from_stack_1)
  loc_644E57: LitI4 1
  loc_644E5C: ILdRf var_94
  loc_644E5F: FLdRfVar var_A0
  loc_644E62: CStr2Ansi
  loc_644E63: ILdRf var_A0
  loc_644E66: ImpAdCallI2 ProcessService()
  loc_644E6B: FStI2 var_A2
  loc_644E6E: SetLastSystemError
  loc_644E6F: FLdI2 var_A2
  loc_644E72: FStI2 var_86
  loc_644E75: FFreeStr var_94 = ""
  loc_644E7C: FFreeAd var_90 = ""
  loc_644E83: ImpAdCallFPR4 push Timer
  loc_644E88: CVarR4
  loc_644E8C: FStVar var_B4
  loc_644E90: ImpAdCallFPR4 push Timer
  loc_644E95: CVarR4
  loc_644E99: HardType
  loc_644E9A: FLdRfVar var_B4
  loc_644E9D: LitVarI2 var_C4, 2
  loc_644EA2: AddVar var_D4
  loc_644EA6: LtVarBool
  loc_644EA8: FFree1Var var_D4 = ""
  loc_644EAB: BranchF loc_644EB1
  loc_644EAE: Branch loc_644E90
  loc_644EB1: FLdRfVar var_94
  loc_644EB4: FLdRfVar var_96
  loc_644EB7: FLdPrThis
  loc_644EB8: VCallAd Control_ID_cboListaDeServicios
  loc_644EBB: FStAdFunc var_90
  loc_644EBE: FLdPr var_90
  loc_644EC1:  = Me.ListIndex
  loc_644EC6: FLdI2 var_96
  loc_644EC9: FLdPrThis
  loc_644ECA: VCallAd Control_ID_cboListaDeServicios
  loc_644ECD: FStAdFunc var_9C
  loc_644ED0: FLdPr var_9C
  loc_644ED3: from_stack_2 = Me.List(from_stack_1)
  loc_644ED8: ILdRf var_94
  loc_644EDB: FLdRfVar var_A0
  loc_644EDE: CStr2Ansi
  loc_644EDF: ILdRf var_A0
  loc_644EE2: ImpAdCallUI1 QueryService()
  loc_644EE8: FStUI1 var_A2
  loc_644EEC: SetLastSystemError
  loc_644EED: FLdUI1
  loc_644EF1: CI2UI1
  loc_644EF3: LitI2_Byte 4
  loc_644EF5: EqI2
  loc_644EF6: FFreeStr var_94 = ""
  loc_644EFD: FFreeAd var_90 = ""
  loc_644F04: BranchF loc_644F33
  loc_644F07: LitStr "Desactivar"
  loc_644F0A: FLdPrThis
  loc_644F0B: VCallAd Control_ID_cmdActivarDesactivar
  loc_644F0E: FStAdFunc var_90
  loc_644F11: FLdPr var_90
  loc_644F14: Me.Caption = from_stack_1
  loc_644F19: FFree1Ad var_90
  loc_644F1C: LitI2_Byte &HFF
  loc_644F1E: FLdPrThis
  loc_644F1F: VCallAd Control_ID_ImgSemaforoVerde
  loc_644F22: FStAdFunc var_90
  loc_644F25: FLdPr var_90
  loc_644F28: Me.Visible = from_stack_1b
  loc_644F2D: FFree1Ad var_90
  loc_644F30: Branch loc_644F47
  loc_644F33: LitI2_Byte &HFF
  loc_644F35: FLdPrThis
  loc_644F36: VCallAd Control_ID_imgSemaforoRojo
  loc_644F39: FStAdFunc var_90
  loc_644F3C: FLdPr var_90
  loc_644F3F: Me.Visible = from_stack_1b
  loc_644F44: FFree1Ad var_90
  loc_644F47: Branch loc_645061
  loc_644F4A: FLdRfVar var_96
  loc_644F4D: FLdPrThis
  loc_644F4E: VCallAd Control_ID_cboListaDeServicios
  loc_644F51: FStAdFunc var_90
  loc_644F54: FLdPr var_90
  loc_644F57:  = Me.ListIndex
  loc_644F5C: FLdRfVar var_94
  loc_644F5F: FLdI2 var_96
  loc_644F62: FLdPrThis
  loc_644F63: VCallAd Control_ID_cboListaDeServicios
  loc_644F66: FStAdFunc var_9C
  loc_644F69: FLdPr var_9C
  loc_644F6C: from_stack_2 = Me.List(from_stack_1)
  loc_644F71: LitI4 0
  loc_644F76: ILdRf var_94
  loc_644F79: FLdRfVar var_A0
  loc_644F7C: CStr2Ansi
  loc_644F7D: ILdRf var_A0
  loc_644F80: ImpAdCallI2 ProcessService()
  loc_644F85: FStI2 var_A2
  loc_644F88: SetLastSystemError
  loc_644F89: FLdI2 var_A2
  loc_644F8C: FStI2 var_86
  loc_644F8F: FFreeStr var_94 = ""
  loc_644F96: FFreeAd var_90 = ""
  loc_644F9D: ImpAdCallFPR4 push Timer
  loc_644FA2: CVarR4
  loc_644FA6: FStVar var_B4
  loc_644FAA: ImpAdCallFPR4 push Timer
  loc_644FAF: CVarR4
  loc_644FB3: HardType
  loc_644FB4: FLdRfVar var_B4
  loc_644FB7: LitVarI2 var_C4, 2
  loc_644FBC: AddVar var_D4
  loc_644FC0: LtVarBool
  loc_644FC2: FFree1Var var_D4 = ""
  loc_644FC5: BranchF loc_644FCB
  loc_644FC8: Branch loc_644FAA
  loc_644FCB: FLdRfVar var_94
  loc_644FCE: FLdRfVar var_96
  loc_644FD1: FLdPrThis
  loc_644FD2: VCallAd Control_ID_cboListaDeServicios
  loc_644FD5: FStAdFunc var_90
  loc_644FD8: FLdPr var_90
  loc_644FDB:  = Me.ListIndex
  loc_644FE0: FLdI2 var_96
  loc_644FE3: FLdPrThis
  loc_644FE4: VCallAd Control_ID_cboListaDeServicios
  loc_644FE7: FStAdFunc var_9C
  loc_644FEA: FLdPr var_9C
  loc_644FED: from_stack_2 = Me.List(from_stack_1)
  loc_644FF2: ILdRf var_94
  loc_644FF5: FLdRfVar var_A0
  loc_644FF8: CStr2Ansi
  loc_644FF9: ILdRf var_A0
  loc_644FFC: ImpAdCallUI1 QueryService()
  loc_645002: FStUI1 var_A2
  loc_645006: SetLastSystemError
  loc_645007: FLdUI1
  loc_64500B: CI2UI1
  loc_64500D: LitI2_Byte 4
  loc_64500F: NeI2
  loc_645010: FFreeStr var_94 = ""
  loc_645017: FFreeAd var_90 = ""
  loc_64501E: BranchF loc_64504D
  loc_645021: LitStr "Activar"
  loc_645024: FLdPrThis
  loc_645025: VCallAd Control_ID_cmdActivarDesactivar
  loc_645028: FStAdFunc var_90
  loc_64502B: FLdPr var_90
  loc_64502E: Me.Caption = from_stack_1
  loc_645033: FFree1Ad var_90
  loc_645036: LitI2_Byte &HFF
  loc_645038: FLdPrThis
  loc_645039: VCallAd Control_ID_imgSemaforoRojo
  loc_64503C: FStAdFunc var_90
  loc_64503F: FLdPr var_90
  loc_645042: Me.Visible = from_stack_1b
  loc_645047: FFree1Ad var_90
  loc_64504A: Branch loc_645061
  loc_64504D: LitI2_Byte &HFF
  loc_64504F: FLdPrThis
  loc_645050: VCallAd Control_ID_ImgSemaforoVerde
  loc_645053: FStAdFunc var_90
  loc_645056: FLdPr var_90
  loc_645059: Me.Visible = from_stack_1b
  loc_64505E: FFree1Ad var_90
  loc_645061: ExitProcHresult
End Sub

Private Sub Command1_Click() '5D2348
  'Data Table: 419614
  loc_5D2330: ILdRf Me
  loc_5D2333: FStAdNoPop
  loc_5D2337: ImpAdLdRf MemVar_7520D4
  loc_5D233A: NewIfNullPr Global
  loc_5D233D: Global.Unload from_stack_1
  loc_5D2342: FFree1Ad var_88
  loc_5D2345: ExitProcHresult
End Sub

Private Sub Form_Activate() '5F0104
  'Data Table: 419614
  loc_5F0068: FLdRfVar var_90
  loc_5F006B: ImpAdLdRf MemVar_74DBE0
  loc_5F006E: NewIfNullPr frmAdministraciónDeServicios
  loc_5F0071:  = frmAdministraciónDeServicios.Height
  loc_5F0076: FLdRfVar var_8C
  loc_5F0079: FLdRfVar var_88
  loc_5F007C: ImpAdLdRf MemVar_7520D4
  loc_5F007F: NewIfNullPr Global
  loc_5F0082:  = Global.Screen
  loc_5F0087: FLdPr var_88
  loc_5F008A:  = Screen.Height
  loc_5F008F: FLdFPR4 var_8C
  loc_5F0092: FLdFPR4 var_90
  loc_5F0095: SubR4
  loc_5F0096: CI4R8
  loc_5F0097: LitI4 2
  loc_5F009C: IDvI4
  loc_5F009D: CR8I4
  loc_5F009E: PopFPR4
  loc_5F009F: ImpAdLdRf MemVar_74DBE0
  loc_5F00A2: NewIfNullPr frmAdministraciónDeServicios
  loc_5F00A5: frmAdministraciónDeServicios.Top = from_stack_1s
  loc_5F00AA: FFree1Ad var_88
  loc_5F00AD: FLdRfVar var_90
  loc_5F00B0: ImpAdLdRf MemVar_74DBE0
  loc_5F00B3: NewIfNullPr frmAdministraciónDeServicios
  loc_5F00B6:  = frmAdministraciónDeServicios.Width
  loc_5F00BB: FLdRfVar var_8C
  loc_5F00BE: FLdRfVar var_88
  loc_5F00C1: ImpAdLdRf MemVar_7520D4
  loc_5F00C4: NewIfNullPr Global
  loc_5F00C7:  = Global.Screen
  loc_5F00CC: FLdPr var_88
  loc_5F00CF:  = Screen.Width
  loc_5F00D4: FLdFPR4 var_8C
  loc_5F00D7: FLdFPR4 var_90
  loc_5F00DA: SubR4
  loc_5F00DB: CI4R8
  loc_5F00DC: LitI4 2
  loc_5F00E1: IDvI4
  loc_5F00E2: CR8I4
  loc_5F00E3: PopFPR4
  loc_5F00E4: ImpAdLdRf MemVar_74DBE0
  loc_5F00E7: NewIfNullPr frmAdministraciónDeServicios
  loc_5F00EA: frmAdministraciónDeServicios.Left = from_stack_1s
  loc_5F00EF: FFree1Ad var_88
  loc_5F00F2: FLdRfVar var_A0
  loc_5F00F5: from_stack_1v = Proc_64_11_644AE0()
  loc_5F00FA: FFree1Var var_A0 = ""
  loc_5F00FD: Call ActualizarServicios()
  loc_5F0102: ExitProcHresult
End Sub

Public Sub ActualizarServicios() '5D7758
  'Data Table: 419614
  loc_5D7754: ExitProcHresult
End Sub

Private Function Proc_64_5_61E9D0() '61E9D0
  'Data Table: 419614
  loc_61E890: FLdRfVar var_A8
  loc_61E893: LitStr "CRINDSERVICE"
  loc_61E896: FStStrCopy var_98
  loc_61E899: FLdRfVar var_98
  loc_61E89C: from_stack_2v = Proc_64_10_5DE7C0(from_stack_1v)
  loc_61E8A1: FLdRfVar var_A8
  loc_61E8A4: NotVar var_B8
  loc_61E8A8: CBoolVarNull
  loc_61E8AA: FFree1Str var_98
  loc_61E8AD: FFree1Var var_A8 = ""
  loc_61E8B0: BranchF loc_61E8ED
  loc_61E8B3: LitVar_Missing var_118
  loc_61E8B6: LitVar_Missing var_F8
  loc_61E8B9: LitVarStr var_D8, "Información para el usuario."
  loc_61E8BE: FStVarCopyObj var_B8
  loc_61E8C1: FLdRfVar var_B8
  loc_61E8C4: LitI4 &H30
  loc_61E8C9: LitVarStr var_C8, "Este servicio no está configurado para utilizarlo."
  loc_61E8CE: FStVarCopyObj var_A8
  loc_61E8D1: FLdRfVar var_A8
  loc_61E8D4: ImpAdCallI2 MsgBox(, , , , )
  loc_61E8D9: CVarI4
  loc_61E8DD: FStVar var_94
  loc_61E8E1: FFreeVar var_A8 = "": var_B8 = "": var_F8 = ""
  loc_61E8EC: ExitProcHresult
  loc_61E8ED: FLdRfVar var_138
  loc_61E8F0: LdPrVar
  loc_61E8F2: LateMemLdVar
  loc_61E8F7: LitVarStr var_C8, "Activar"
  loc_61E8FC: HardType
  loc_61E8FD: EqVarBool
  loc_61E8FF: FFree1Var var_A8 = ""
  loc_61E902: BranchF loc_61E968
  loc_61E905: LitI4 1
  loc_61E90A: LitVarStr var_C8, "Net Start CrindService"
  loc_61E90F: FStVarCopyObj var_A8
  loc_61E912: FLdRfVar var_A8
  loc_61E915: ImpAdCallFPR4 push Shell(, )
  loc_61E91A: CVarR8
  loc_61E91E: FStVar var_94
  loc_61E922: FFree1Var var_A8 = ""
  loc_61E925: LitI2_Byte 2
  loc_61E927: CUI1I2
  loc_61E929: PopTmpLdAd1
  loc_61E92D: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_61E932: LitStr "CRINDSERVICE"
  loc_61E935: FLdRfVar var_98
  loc_61E938: CStr2Ansi
  loc_61E939: ILdRf var_98
  loc_61E93C: ImpAdCallUI1 QueryService()
  loc_61E942: FStUI1 var_13A
  loc_61E946: SetLastSystemError
  loc_61E947: FLdUI1
  loc_61E94B: CI2UI1
  loc_61E94D: LitI2_Byte 4
  loc_61E94F: EqI2
  loc_61E950: FFree1Str var_98
  loc_61E953: BranchF loc_61E965
  loc_61E956: LitVarStr var_C8, "Desactivar"
  loc_61E95B: PopAdLdVar
  loc_61E95C: FLdRfVar var_138
  loc_61E95F: LdPrVar
  loc_61E961: LateMemSt
  loc_61E965: Branch loc_61E9C8
  loc_61E968: LitI4 1
  loc_61E96D: LitVarStr var_C8, "Net Stop CrindService"
  loc_61E972: FStVarCopyObj var_A8
  loc_61E975: FLdRfVar var_A8
  loc_61E978: ImpAdCallFPR4 push Shell(, )
  loc_61E97D: CVarR8
  loc_61E981: FStVar var_94
  loc_61E985: FFree1Var var_A8 = ""
  loc_61E988: LitI2_Byte 2
  loc_61E98A: CUI1I2
  loc_61E98C: PopTmpLdAd1
  loc_61E990: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_61E995: LitStr "CRINDSERVICE"
  loc_61E998: FLdRfVar var_98
  loc_61E99B: CStr2Ansi
  loc_61E99C: ILdRf var_98
  loc_61E99F: ImpAdCallUI1 QueryService()
  loc_61E9A5: FStUI1 var_13A
  loc_61E9A9: SetLastSystemError
  loc_61E9AA: FLdUI1
  loc_61E9AE: CI2UI1
  loc_61E9B0: LitI2_Byte 4
  loc_61E9B2: NeI2
  loc_61E9B3: FFree1Str var_98
  loc_61E9B6: BranchF loc_61E9C8
  loc_61E9B9: LitVarStr var_C8, "Activar"
  loc_61E9BE: PopAdLdVar
  loc_61E9BF: FLdRfVar var_138
  loc_61E9C2: LdPrVar
  loc_61E9C4: LateMemSt
  loc_61E9C8: Call ActualizarServicios()
  loc_61E9CD: ExitProcHresult
  loc_61E9CE: FFreeStr  = ""
End Function

Private Function Proc_64_6_61E6B8() '61E6B8
  'Data Table: 419614
  loc_61E578: FLdRfVar var_A8
  loc_61E57B: LitStr "POSSERVICE"
  loc_61E57E: FStStrCopy var_98
  loc_61E581: FLdRfVar var_98
  loc_61E584: from_stack_2v = Proc_64_10_5DE7C0(from_stack_1v)
  loc_61E589: FLdRfVar var_A8
  loc_61E58C: LitVar_FALSE
  loc_61E590: HardType
  loc_61E591: EqVarBool
  loc_61E593: FFree1Str var_98
  loc_61E596: FFree1Var var_A8 = ""
  loc_61E599: BranchF loc_61E5D6
  loc_61E59C: LitVar_Missing var_118
  loc_61E59F: LitVar_Missing var_F8
  loc_61E5A2: LitVarStr var_D8, "Información para el usuario."
  loc_61E5A7: FStVarCopyObj var_C8
  loc_61E5AA: FLdRfVar var_C8
  loc_61E5AD: LitI4 &H30
  loc_61E5B2: LitVarStr var_B8, "Este servicio no está configurado para utilizarlo."
  loc_61E5B7: FStVarCopyObj var_A8
  loc_61E5BA: FLdRfVar var_A8
  loc_61E5BD: ImpAdCallI2 MsgBox(, , , , )
  loc_61E5C2: CVarI4
  loc_61E5C6: FStVar var_94
  loc_61E5CA: FFreeVar var_A8 = "": var_C8 = "": var_F8 = ""
  loc_61E5D5: ExitProcHresult
  loc_61E5D6: FLdRfVar var_138
  loc_61E5D9: LdPrVar
  loc_61E5DB: LateMemLdVar
  loc_61E5E0: LitVarStr var_B8, "Activar"
  loc_61E5E5: HardType
  loc_61E5E6: EqVarBool
  loc_61E5E8: FFree1Var var_A8 = ""
  loc_61E5EB: BranchF loc_61E651
  loc_61E5EE: LitI4 1
  loc_61E5F3: LitVarStr var_B8, "Net Start PosService"
  loc_61E5F8: FStVarCopyObj var_A8
  loc_61E5FB: FLdRfVar var_A8
  loc_61E5FE: ImpAdCallFPR4 push Shell(, )
  loc_61E603: CVarR8
  loc_61E607: FStVar var_94
  loc_61E60B: FFree1Var var_A8 = ""
  loc_61E60E: LitI2_Byte 2
  loc_61E610: CUI1I2
  loc_61E612: PopTmpLdAd1
  loc_61E616: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_61E61B: LitStr "POSSERVICE"
  loc_61E61E: FLdRfVar var_98
  loc_61E621: CStr2Ansi
  loc_61E622: ILdRf var_98
  loc_61E625: ImpAdCallUI1 QueryService()
  loc_61E62B: FStUI1 var_13A
  loc_61E62F: SetLastSystemError
  loc_61E630: FLdUI1
  loc_61E634: CI2UI1
  loc_61E636: LitI2_Byte 4
  loc_61E638: EqI2
  loc_61E639: FFree1Str var_98
  loc_61E63C: BranchF loc_61E64E
  loc_61E63F: LitVarStr var_B8, "Desactivar"
  loc_61E644: PopAdLdVar
  loc_61E645: FLdRfVar var_138
  loc_61E648: LdPrVar
  loc_61E64A: LateMemSt
  loc_61E64E: Branch loc_61E6B1
  loc_61E651: LitI4 1
  loc_61E656: LitVarStr var_B8, "Net Stop PosService"
  loc_61E65B: FStVarCopyObj var_A8
  loc_61E65E: FLdRfVar var_A8
  loc_61E661: ImpAdCallFPR4 push Shell(, )
  loc_61E666: CVarR8
  loc_61E66A: FStVar var_94
  loc_61E66E: FFree1Var var_A8 = ""
  loc_61E671: LitI2_Byte 2
  loc_61E673: CUI1I2
  loc_61E675: PopTmpLdAd1
  loc_61E679: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_61E67E: LitStr "POSSERVICE"
  loc_61E681: FLdRfVar var_98
  loc_61E684: CStr2Ansi
  loc_61E685: ILdRf var_98
  loc_61E688: ImpAdCallUI1 QueryService()
  loc_61E68E: FStUI1 var_13A
  loc_61E692: SetLastSystemError
  loc_61E693: FLdUI1
  loc_61E697: CI2UI1
  loc_61E699: LitI2_Byte 4
  loc_61E69B: NeI2
  loc_61E69C: FFree1Str var_98
  loc_61E69F: BranchF loc_61E6B1
  loc_61E6A2: LitVarStr var_B8, "Activar"
  loc_61E6A7: PopAdLdVar
  loc_61E6A8: FLdRfVar var_138
  loc_61E6AB: LdPrVar
  loc_61E6AD: LateMemSt
  loc_61E6B1: Call ActualizarServicios()
  loc_61E6B6: ExitProcHresult
End Function

Private Function Proc_64_7_6083A4() '6083A4
  'Data Table: 419614
  loc_6082C0: FLdRfVar var_A4
  loc_6082C3: LdPrVar
  loc_6082C5: LateMemLdVar
  loc_6082CA: LitVarStr var_B4, "Activar"
  loc_6082CF: HardType
  loc_6082D0: EqVarBool
  loc_6082D2: FFree1Var var_C4 = ""
  loc_6082D5: BranchF loc_60833B
  loc_6082D8: LitI4 1
  loc_6082DD: LitVarStr var_B4, "Net Start Pumpservice"
  loc_6082E2: FStVarCopyObj var_C4
  loc_6082E5: FLdRfVar var_C4
  loc_6082E8: ImpAdCallFPR4 push Shell(, )
  loc_6082ED: CVarR8
  loc_6082F1: FStVar var_94
  loc_6082F5: FFree1Var var_C4 = ""
  loc_6082F8: LitI2_Byte 2
  loc_6082FA: CUI1I2
  loc_6082FC: PopTmpLdAd1
  loc_608300: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_608305: LitStr "PUMPSERVICE"
  loc_608308: FLdRfVar var_EC
  loc_60830B: CStr2Ansi
  loc_60830C: ILdRf var_EC
  loc_60830F: ImpAdCallUI1 QueryService()
  loc_608315: FStUI1 var_E6
  loc_608319: SetLastSystemError
  loc_60831A: FLdUI1
  loc_60831E: CI2UI1
  loc_608320: LitI2_Byte 4
  loc_608322: EqI2
  loc_608323: FFree1Str var_EC
  loc_608326: BranchF loc_608338
  loc_608329: LitVarStr var_B4, "Desactivar"
  loc_60832E: PopAdLdVar
  loc_60832F: FLdRfVar var_A4
  loc_608332: LdPrVar
  loc_608334: LateMemSt
  loc_608338: Branch loc_60839B
  loc_60833B: LitI4 1
  loc_608340: LitVarStr var_B4, "Net Stop Pumpservice"
  loc_608345: FStVarCopyObj var_C4
  loc_608348: FLdRfVar var_C4
  loc_60834B: ImpAdCallFPR4 push Shell(, )
  loc_608350: CVarR8
  loc_608354: FStVar var_94
  loc_608358: FFree1Var var_C4 = ""
  loc_60835B: LitI2_Byte 2
  loc_60835D: CUI1I2
  loc_60835F: PopTmpLdAd1
  loc_608363: from_stack_2v = Proc_64_9_5DAFE8(from_stack_1v)
  loc_608368: LitStr "PUMPSERVICE"
  loc_60836B: FLdRfVar var_EC
  loc_60836E: CStr2Ansi
  loc_60836F: ILdRf var_EC
  loc_608372: ImpAdCallUI1 QueryService()
  loc_608378: FStUI1 var_E6
  loc_60837C: SetLastSystemError
  loc_60837D: FLdUI1
  loc_608381: CI2UI1
  loc_608383: LitI2_Byte 4
  loc_608385: NeI2
  loc_608386: FFree1Str var_EC
  loc_608389: BranchF loc_60839B
  loc_60838C: LitVarStr var_B4, "Activar"
  loc_608391: PopAdLdVar
  loc_608392: FLdRfVar var_A4
  loc_608395: LdPrVar
  loc_608397: LateMemSt
  loc_60839B: Call ActualizarServicios()
  loc_6083A0: ExitProcHresult
End Function

Private Function Proc_64_8_5C8218() '5C8218
  'Data Table: 419614
  loc_5C8214: ExitProcHresult
End Function

Private Function Proc_64_9_5DAFE8(arg_C) '5DAFE8
  'Data Table: 419614
  loc_5DAFB4: ImpAdCallFPR4 push Timer
  loc_5DAFB9: CVarR4
  loc_5DAFBD: FStVar var_94
  loc_5DAFC1: ImpAdCallFPR4 push Timer
  loc_5DAFC6: CVarR4
  loc_5DAFCA: HardType
  loc_5DAFCB: FLdRfVar var_94
  loc_5DAFCE: ILdUI1 arg_C
  loc_5DAFD2: CVarUI1
  loc_5DAFD6: AddVar var_B4
  loc_5DAFDA: LtVarBool
  loc_5DAFDC: FFree1Var var_B4 = ""
  loc_5DAFDF: BranchF loc_5DAFE5
  loc_5DAFE2: Branch loc_5DAFC1
  loc_5DAFE5: ExitProcHresult
End Function

Private Function Proc_64_10_5DE7C0(arg_C) '5DE7C0
  'Data Table: 419614
  loc_5DE770: ZeroRetValVar
  loc_5DE772: LitVarI2 var_A8, 0
  loc_5DE777: FStVar var_94
  loc_5DE77B: LitI2_Byte 1
  loc_5DE77D: CUI1I2
  loc_5DE77F: FLdRfVar var_96
  loc_5DE782: LitI2_Byte 4
  loc_5DE784: CUI1I2
  loc_5DE786: ForUI1 var_AC
  loc_5DE78C: FLdUI1
  loc_5DE790: CI4UI1
  loc_5DE791: FLdPr Me
  loc_5DE794: MemLdRfVar from_stack_1.global_76
  loc_5DE797: Ary1LdI4
  loc_5DE798: ILdI4 arg_C
  loc_5DE79B: EqStr
  loc_5DE79D: BranchF loc_5DE7AF
  loc_5DE7A0: LitVarI2 var_A8, 1
  loc_5DE7A5: FStVar var_94
  loc_5DE7A9: ExitProcCbHresult
  loc_5DE7AF: FLdRfVar var_96
  loc_5DE7B2: NextUI1
  loc_5DE7B8: ExitProcCbHresult
End Function

Private Function Proc_64_11_644AE0() '644AE0
  'Data Table: 419614
  loc_6448B0: ZeroRetValVar
  loc_6448B2: LitI2_Byte 0
  loc_6448B4: CUI1I2
  loc_6448B6: FStUI1 var_98
  loc_6448BA: LitI4 1
  loc_6448BF: FLdRfVar var_9C
  loc_6448C2: LitI4 &H10
  loc_6448C7: ForI4 var_BC
  loc_6448CD: LitStr "Servicio"
  loc_6448D0: ILdRf var_9C
  loc_6448D3: CStrI4
  loc_6448D5: FStStrNoPop var_C0
  loc_6448D8: ConcatStr
  loc_6448D9: FStStrNoPop var_C4
  loc_6448DC: ILdRf var_9C
  loc_6448DF: FLdRfVar var_B4
  loc_6448E2: Ary1StStrCopy
  loc_6448E3: FFreeStr var_C0 = ""
  loc_6448EA: FLdRfVar var_9C
  loc_6448ED: NextI4 var_BC, loc_6448CD
  loc_6448F2: LitI2_Byte 1
  loc_6448F4: FLdRfVar var_96
  loc_6448F7: LitI2_Byte &H10
  loc_6448F9: ForI2 var_C8
  loc_6448FF: LitI4 &HC8
  loc_644904: ImpAdCallI2 Space$()
  loc_644909: FStStrNoPop var_C0
  loc_64490C: FLdI2 var_96
  loc_64490F: CI4UI1
  loc_644910: FLdPr Me
  loc_644913: MemLdRfVar from_stack_1.global_76
  loc_644916: Ary1StStrCopy
  loc_644917: FFree1Str var_C0
  loc_64491A: LitStr "CEM44.INI"
  loc_64491D: FLdRfVar var_D4
  loc_644920: CStr2Ansi
  loc_644921: ILdRf var_D4
  loc_644924: LitI4 &HC8
  loc_644929: FLdI2 var_96
  loc_64492C: CI4UI1
  loc_64492D: FLdPr Me
  loc_644930: MemLdRfVar from_stack_1.global_76
  loc_644933: Ary1LdI4
  loc_644934: FLdRfVar var_D0
  loc_644937: CStr2Ansi
  loc_644938: ILdRf var_D0
  loc_64493B: LitStr vbNullString
  loc_64493E: FLdRfVar var_CC
  loc_644941: CStr2Ansi
  loc_644942: ILdRf var_CC
  loc_644945: FLdI2 var_96
  loc_644948: CI4UI1
  loc_644949: FLdRfVar var_B4
  loc_64494C: Ary1LdI4
  loc_64494D: FLdRfVar var_C4
  loc_644950: CStr2Ansi
  loc_644951: ILdRf var_C4
  loc_644954: LitStr "SERVICIOS"
  loc_644957: FLdRfVar var_C0
  loc_64495A: CStr2Ansi
  loc_64495B: ILdRf var_C0
  loc_64495E: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_644963: FStR4 var_D8
  loc_644966: SetLastSystemError
  loc_644967: ILdRf var_C4
  loc_64496A: FLdI2 var_96
  loc_64496D: CI4UI1
  loc_64496E: FLdRfVar var_B4
  loc_644971: Ary1LdRf
  loc_644972: CStr2Uni
  loc_644974: ILdRf var_D0
  loc_644977: FLdI2 var_96
  loc_64497A: CI4UI1
  loc_64497B: FLdPr Me
  loc_64497E: MemLdRfVar from_stack_1.global_76
  loc_644981: Ary1LdRf
  loc_644982: CStr2Uni
  loc_644984: ILdRf var_D8
  loc_644987: CVarI4
  loc_64498B: FStVar var_E8
  loc_64498F: FFreeStr var_C0 = "": var_C4 = "": var_CC = "": var_D0 = ""
  loc_64499C: FLdI2 var_96
  loc_64499F: CI4UI1
  loc_6449A0: FLdPr Me
  loc_6449A3: MemLdRfVar from_stack_1.global_76
  loc_6449A6: Ary1LdRf
  loc_6449A7: CVarRef
  loc_6449AC: FLdRfVar var_108
  loc_6449AF: ImpAdCallFPR4  = Trim()
  loc_6449B4: FLdRfVar var_108
  loc_6449B7: CStrVarTmp
  loc_6449B8: FStStrNoPop var_C0
  loc_6449BB: FLdI2 var_96
  loc_6449BE: CI4UI1
  loc_6449BF: FLdPr Me
  loc_6449C2: MemLdRfVar from_stack_1.global_76
  loc_6449C5: Ary1StStrCopy
  loc_6449C6: FFree1Str var_C0
  loc_6449C9: FFree1Var var_108 = ""
  loc_6449CC: FLdI2 var_96
  loc_6449CF: CI4UI1
  loc_6449D0: FLdPr Me
  loc_6449D3: MemLdRfVar from_stack_1.global_76
  loc_6449D6: Ary1LdI4
  loc_6449D7: FnLenStr
  loc_6449D8: LitI4 1
  loc_6449DD: SubI4
  loc_6449DE: FLdI2 var_96
  loc_6449E1: CI4UI1
  loc_6449E2: FLdPr Me
  loc_6449E5: MemLdRfVar from_stack_1.global_76
  loc_6449E8: Ary1LdRf
  loc_6449E9: CVarRef
  loc_6449EE: FLdRfVar var_108
  loc_6449F1: ImpAdCallFPR4  = Left(, )
  loc_6449F6: FLdRfVar var_108
  loc_6449F9: CStrVarVal var_C0
  loc_6449FD: ImpAdCallI2 UCase$()
  loc_644A02: FStStrNoPop var_C4
  loc_644A05: FLdI2 var_96
  loc_644A08: CI4UI1
  loc_644A09: FLdPr Me
  loc_644A0C: MemLdRfVar from_stack_1.global_76
  loc_644A0F: Ary1StStrCopy
  loc_644A10: FFreeStr var_C0 = ""
  loc_644A17: FFree1Var var_108 = ""
  loc_644A1A: FLdI2 var_96
  loc_644A1D: CI4UI1
  loc_644A1E: FLdPr Me
  loc_644A21: MemLdRfVar from_stack_1.global_76
  loc_644A24: Ary1LdI4
  loc_644A25: LitStr vbNullString
  loc_644A28: EqStr
  loc_644A2A: BranchF loc_644A3F
  loc_644A2D: FLdUI1
  loc_644A31: CI2UI1
  loc_644A33: LitI2_Byte 1
  loc_644A35: AddI2
  loc_644A36: CUI1I2
  loc_644A38: FStUI1 var_98
  loc_644A3C: Branch loc_644A60
  loc_644A3F: LitVar_Missing var_F8
  loc_644A42: PopAdLdVar
  loc_644A43: FLdI2 var_96
  loc_644A46: CI4UI1
  loc_644A47: FLdPr Me
  loc_644A4A: MemLdRfVar from_stack_1.global_76
  loc_644A4D: Ary1LdI4
  loc_644A4E: FLdPrThis
  loc_644A4F: VCallAd Control_ID_cboListaDeServicios
  loc_644A52: FStAdFunc var_10C
  loc_644A55: FLdPr var_10C
  loc_644A58: Me.AddItem from_stack_1, from_stack_2
  loc_644A5D: FFree1Ad var_10C
  loc_644A60: FLdRfVar var_96
  loc_644A63: NextI2 var_C8, loc_6448FF
  loc_644A68: FLdUI1
  loc_644A6C: CI2UI1
  loc_644A6E: LitI2_Byte &H10
  loc_644A70: EqI2
  loc_644A71: BranchF loc_644AD8
  loc_644A74: LitVar_Missing var_F8
  loc_644A77: PopAdLdVar
  loc_644A78: LitStr "PUMPSERVICE"
  loc_644A7B: FLdPrThis
  loc_644A7C: VCallAd Control_ID_cboListaDeServicios
  loc_644A7F: FStAdFunc var_10C
  loc_644A82: FLdPr var_10C
  loc_644A85: Me.AddItem from_stack_1, from_stack_2
  loc_644A8A: FFree1Ad var_10C
  loc_644A8D: LitVar_Missing var_F8
  loc_644A90: PopAdLdVar
  loc_644A91: LitStr "TANKSERVICE"
  loc_644A94: FLdPrThis
  loc_644A95: VCallAd Control_ID_cboListaDeServicios
  loc_644A98: FStAdFunc var_10C
  loc_644A9B: FLdPr var_10C
  loc_644A9E: Me.AddItem from_stack_1, from_stack_2
  loc_644AA3: FFree1Ad var_10C
  loc_644AA6: LitVar_Missing var_F8
  loc_644AA9: PopAdLdVar
  loc_644AAA: LitStr "POSSERVICE"
  loc_644AAD: FLdPrThis
  loc_644AAE: VCallAd Control_ID_cboListaDeServicios
  loc_644AB1: FStAdFunc var_10C
  loc_644AB4: FLdPr var_10C
  loc_644AB7: Me.AddItem from_stack_1, from_stack_2
  loc_644ABC: FFree1Ad var_10C
  loc_644ABF: LitVar_Missing var_F8
  loc_644AC2: PopAdLdVar
  loc_644AC3: LitStr "CRINDSERVICE"
  loc_644AC6: FLdPrThis
  loc_644AC7: VCallAd Control_ID_cboListaDeServicios
  loc_644ACA: FStAdFunc var_10C
  loc_644ACD: FLdPr var_10C
  loc_644AD0: Me.AddItem from_stack_1, from_stack_2
  loc_644AD5: FFree1Ad var_10C
  loc_644AD8: ExitProcCbHresult
End Function

Private Function Proc_64_12_5C8148() '5C8148
  'Data Table: 419614
  loc_5C8144: ExitProcHresult
End Function

Private Function Proc_64_13_5DBDEC() '5DBDEC
  'Data Table: 419614
  loc_5DBDAC: LitI2_Byte 0
  loc_5DBDAE: FLdPrThis
  loc_5DBDAF: VCallAd Control_ID_ImgSemaforoVerde
  loc_5DBDB2: FStAdFunc var_88
  loc_5DBDB5: FLdPr var_88
  loc_5DBDB8: Me.Visible = from_stack_1b
  loc_5DBDBD: FFree1Ad var_88
  loc_5DBDC0: LitI2_Byte 0
  loc_5DBDC2: FLdPrThis
  loc_5DBDC3: VCallAd Control_ID_imgSemaforoAmarillo
  loc_5DBDC6: FStAdFunc var_88
  loc_5DBDC9: FLdPr var_88
  loc_5DBDCC: Me.Visible = from_stack_1b
  loc_5DBDD1: FFree1Ad var_88
  loc_5DBDD4: LitI2_Byte 0
  loc_5DBDD6: FLdPrThis
  loc_5DBDD7: VCallAd Control_ID_imgSemaforoRojo
  loc_5DBDDA: FStAdFunc var_88
  loc_5DBDDD: FLdPr var_88
  loc_5DBDE0: Me.Visible = from_stack_1b
  loc_5DBDE5: FFree1Ad var_88
  loc_5DBDE8: ExitProcHresult
End Function
