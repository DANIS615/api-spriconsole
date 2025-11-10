VERSION 5.00
Begin VB.Form frmNotificacion
  Caption = "Notificación"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 1185
  ClientTop = 750
  ClientWidth = 9855
  ClientHeight = 4950
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer timerCerrar
    Enabled = 0   'False
    Interval = 60000
    Left = 360
    Top = 3960
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 9615
    Height = 4665
    TabIndex = 0
    Begin VB.CommandButton cmdAceptar
      Caption = "&Aceptar"
      Left = 4080
      Top = 3720
      Width = 1695
      Height = 555
      TabIndex = 1
      BeginProperty Font
        Name = "Arial"
        Size = 15
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblTitle
      Caption = "Label2"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 60
      Top = 240
      Width = 9495
      Height = 495
      TabIndex = 3
      Alignment = 2 'Center
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
    Begin VB.Label lblMsg
      Caption = "Sr. Operador: El cambio de precios ha finalizado exitósamente."
      Left = 660
      Top = 1500
      Width = 8055
      Height = 1965
      TabIndex = 2
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
End

Attribute VB_Name = "frmNotificacion"

Public sTitle As String
Public sMessage As String


Private Sub Form_Load() '621914
  'Data Table: 40B09C
  loc_6217D8: FLdPr Me
  loc_6217DB: MemLdStr sTitle
  loc_6217DE: FLdPrThis
  loc_6217DF: VCallAd Control_ID_lblTitle
  loc_6217E2: FStAdFunc var_88
  loc_6217E5: FLdPr var_88
  loc_6217E8: Me.Caption = from_stack_1
  loc_6217ED: FFree1Ad var_88
  loc_6217F0: FLdPr Me
  loc_6217F3: MemLdStr sMessage
  loc_6217F6: FLdPrThis
  loc_6217F7: VCallAd Control_ID_lblMsg
  loc_6217FA: FStAdFunc var_88
  loc_6217FD: FLdPr var_88
  loc_621800: Me.Caption = from_stack_1
  loc_621805: FFree1Ad var_88
  loc_621808: FLdRfVar var_98
  loc_62180B: ImpAdCallFPR4  = Time
  loc_621810: FLdRfVar var_98
  loc_621813: FLdPr Me
  loc_621816: MemStVar
  loc_62181A: FFree1Var var_98 = ""
  loc_62181D: LitI2_Byte &HFF
  loc_62181F: FLdPrThis
  loc_621820: VCallAd Control_ID_timerCerrar
  loc_621823: FStAdFunc var_88
  loc_621826: FLdPr var_88
  loc_621829: Me.Enabled = from_stack_1b
  loc_62182E: FFree1Ad var_88
  loc_621831: FLdRfVar var_1D8
  loc_621834: LitVar_Missing var_1D4
  loc_621837: LitVar_Missing var_1B4
  loc_62183A: LitVar_Missing var_194
  loc_62183D: LitVar_Missing var_174
  loc_621840: LitVar_Missing var_154
  loc_621843: LitVar_Missing var_134
  loc_621846: LitVar_Missing var_114
  loc_621849: LitVar_Missing var_F4
  loc_62184C: LitVar_Missing var_D4
  loc_62184F: LitVar_Missing var_98
  loc_621852: LitStr "Notificación"
  loc_621855: FStStrCopy var_A4
  loc_621858: FLdRfVar var_A4
  loc_62185B: LitI4 1
  loc_621860: PopTmpLdAdStr var_A0
  loc_621863: LitI2_Byte &H55
  loc_621865: PopTmpLdAd2 var_9A
  loc_621868: ImpAdLdRf MemVar_74C7D0
  loc_62186B: NewIfNullPr clsMsg
  loc_62186E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_621873: ILdRf var_1D8
  loc_621876: FLdPr Me
  loc_621879: Me.Caption = from_stack_1
  loc_62187E: FFreeStr var_A4 = ""
  loc_621885: FFreeVar var_98 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_62189C: FLdRfVar var_1D8
  loc_62189F: LitVar_Missing var_1D4
  loc_6218A2: LitVar_Missing var_1B4
  loc_6218A5: LitVar_Missing var_194
  loc_6218A8: LitVar_Missing var_174
  loc_6218AB: LitVar_Missing var_154
  loc_6218AE: LitVar_Missing var_134
  loc_6218B1: LitVar_Missing var_114
  loc_6218B4: LitVar_Missing var_F4
  loc_6218B7: LitVar_Missing var_D4
  loc_6218BA: LitVar_Missing var_98
  loc_6218BD: LitStr "&Aceptar"
  loc_6218C0: FStStrCopy var_A4
  loc_6218C3: FLdRfVar var_A4
  loc_6218C6: LitI4 2
  loc_6218CB: PopTmpLdAdStr var_A0
  loc_6218CE: LitI2_Byte &H55
  loc_6218D0: PopTmpLdAd2 var_9A
  loc_6218D3: ImpAdLdRf MemVar_74C7D0
  loc_6218D6: NewIfNullPr clsMsg
  loc_6218D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6218DE: ILdRf var_1D8
  loc_6218E1: FLdPrThis
  loc_6218E2: VCallAd Control_ID_cmdAceptar
  loc_6218E5: FStAdFunc var_88
  loc_6218E8: FLdPr var_88
  loc_6218EB: Me.Caption = from_stack_1
  loc_6218F0: FFreeStr var_A4 = ""
  loc_6218F7: FFree1Ad var_88
  loc_6218FA: FFreeVar var_98 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_621911: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D2AB4
  'Data Table: 40B09C
  loc_5D2A9C: LitI2_Byte &HFF
  loc_5D2A9E: FLdPrThis
  loc_5D2A9F: VCallAd Control_ID_timerCerrar
  loc_5D2AA2: FStAdFunc var_88
  loc_5D2AA5: FLdPr var_88
  loc_5D2AA8: Me.Enabled = from_stack_1b
  loc_5D2AAD: FFree1Ad var_88
  loc_5D2AB0: ExitProcHresult
  loc_5D2AB1: LitStr "StrFormMemory_7520D4"
End Sub

Private Sub Form_Deactivate() '5D2E44
  'Data Table: 40B09C
  loc_5D2E2C: LitI2_Byte 0
  loc_5D2E2E: FLdPrThis
  loc_5D2E2F: VCallAd Control_ID_timerCerrar
  loc_5D2E32: FStAdFunc var_88
  loc_5D2E35: FLdPr var_88
  loc_5D2E38: Me.Enabled = from_stack_1b
  loc_5D2E3D: FFree1Ad var_88
  loc_5D2E40: ExitProcHresult
  loc_5D2E41: LitStr "StrFormMemory_7520D4"
End Sub

Private Sub cmdAceptar_Click() '5D2B4C
  'Data Table: 40B09C
  loc_5D2B34: ILdRf Me
  loc_5D2B37: FStAdNoPop
  loc_5D2B3B: ImpAdLdRf MemVar_7520D4
  loc_5D2B3E: NewIfNullPr Global
  loc_5D2B41: Global.Unload from_stack_1
  loc_5D2B46: FFree1Ad var_88
  loc_5D2B49: ExitProcHresult
End Sub

Private Sub timerCerrar_Timer() '603EE8
  'Data Table: 40B09C
  loc_603E18: LitStr "00"
  loc_603E1B: FStStrCopy var_9C
  loc_603E1E: FLdRfVar var_9C
  loc_603E21: LitStr "TIEMPO_CIERRE_VENTANA"
  loc_603E24: FStStrCopy var_98
  loc_603E27: FLdRfVar var_98
  loc_603E2A: ImpAdCallI2 Proc_53_9_613F58(, )
  loc_603E2F: CVarStr var_AC
  loc_603E32: FStVar var_94
  loc_603E36: FFreeStr var_98 = ""
  loc_603E3D: FLdRfVar var_AC
  loc_603E40: ImpAdCallFPR4  = Time
  loc_603E45: FLdRfVar var_AC
  loc_603E48: FLdPr Me
  loc_603E4B: MemLdRfVar from_stack_1.global_60
  loc_603E4E: SubVar var_BC
  loc_603E52: FLdPr Me
  loc_603E55: MemStVar
  loc_603E59: FFree1Var var_AC = ""
  loc_603E5C: LitI4 1
  loc_603E61: LitI4 1
  loc_603E66: LitVarStr var_CC, "hh:mm"
  loc_603E6B: FStVarCopyObj var_AC
  loc_603E6E: FLdRfVar var_AC
  loc_603E71: FLdPr Me
  loc_603E74: MemLdRfVar from_stack_1.global_76
  loc_603E77: ImpAdCallI2 Format$(, )
  loc_603E7C: FStStrNoPop var_98
  loc_603E7F: FLdPr Me
  loc_603E82: MemStStrCopy
  loc_603E86: FFree1Str var_98
  loc_603E89: FFree1Var var_AC = ""
  loc_603E8C: FLdRfVar var_94
  loc_603E8F: LitVarStr var_CC, "00"
  loc_603E94: HardType
  loc_603E95: NeVarBool
  loc_603E97: BranchF loc_603ED1
  loc_603E9A: LitVarI2 var_AC, 2
  loc_603E9F: LitI4 4
  loc_603EA4: FLdPr Me
  loc_603EA7: MemLdRfVar from_stack_1.global_92
  loc_603EAA: CVarRef
  loc_603EAF: FLdRfVar var_BC
  loc_603EB2: ImpAdCallFPR4  = Mid(, , )
  loc_603EB7: FLdRfVar var_BC
  loc_603EBA: FLdRfVar var_94
  loc_603EBD: GeVarBool
  loc_603EBF: FFreeVar var_AC = ""
  loc_603EC6: BranchF loc_603ECE
  loc_603EC9: Call cmdAceptar_Click()
  loc_603ECE: Branch loc_603EE5
  loc_603ED1: LitI2_Byte 0
  loc_603ED3: FLdPrThis
  loc_603ED4: VCallAd Control_ID_timerCerrar
  loc_603ED7: FStAdFunc var_F0
  loc_603EDA: FLdPr var_F0
  loc_603EDD: Me.Enabled = from_stack_1b
  loc_603EE2: FFree1Ad var_F0
  loc_603EE5: ExitProcHresult
End Sub

Public Function sTitleGet() '40B420
  sTitleGet = sTitle
End Function

Public Sub sTitlePut(Value) '40B42F
  sTitle = Value
End Sub

Public Function sMessageGet() '40B43E
  sMessageGet = sMessage
End Function

Public Sub sMessagePut(Value) '40B44D
  sMessage = Value
End Sub
