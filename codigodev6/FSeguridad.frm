VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form FSeguridad
  Caption = "Seguridad"
  BackColor = &H80000004&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 8535
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 11655
    Height = 8235
    TabIndex = 0
    Begin VB.ListBox ListModulos
      Left = 240
      Top = 1020
      Width = 5415
      Height = 5670
      TabIndex = 2
      Sorted = -1  'True
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
    Begin VB.ListBox ListUsuarios
      Left = 6360
      Top = 1020
      Width = 5055
      Height = 5670
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
    Begin Threed.SSCommand sscCancel
      Left = 1560
      Top = 7140
      Width = 2655
      Height = 735
      TabIndex = 3
      OleObjectBlob = "FSeguridad.frx":0000
    End
    Begin Threed.SSCommand sscContinuar
      Left = 7320
      Top = 7140
      Width = 2655
      Height = 735
      TabIndex = 4
      OleObjectBlob = "FSeguridad.frx":0065
    End
    Begin VB.Label lblModulos
      Caption = "Modulos"
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 240
      Top = 540
      Width = 5415
      Height = 495
      TabIndex = 6
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
    Begin VB.Label lblUsuarios
      Caption = "Usuarios"
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 6360
      Top = 540
      Width = 5055
      Height = 615
      TabIndex = 5
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
  Begin VB.ListBox List1
    Left = 4440
    Top = 6840
    Width = 615
    Height = 645
    Visible = 0   'False
    TabIndex = 7
    Sorted = -1  'True
  End
End

Attribute VB_Name = "FSeguridad"


Private Sub sscContinuar_UnknownEvent_8 '617B28
  'Data Table: 415CAC
  loc_617A00: LitI4 1
  loc_617A05: FLdRfVar var_92
  loc_617A08: ImpAdLdRf MemVar_74A21C
  loc_617A0B: NewIfNullPr clsSecurity
  loc_617A0E:  = Forms
  loc_617A13: FLdI2 var_92
  loc_617A16: CI4UI1
  loc_617A17: FLdRfVar var_90
  loc_617A1A: Redim
  loc_617A24: LitI2_Byte 1
  loc_617A26: FLdRfVar var_86
  loc_617A29: FLdRfVar var_92
  loc_617A2C: ImpAdLdRf MemVar_74A21C
  loc_617A2F: NewIfNullPr clsSecurity
  loc_617A32:  = Forms
  loc_617A37: FLdI2 var_92
  loc_617A3A: ForI2 var_96
  loc_617A40: FLdI2 var_86
  loc_617A43: CI4UI1
  loc_617A44: FLdPr Me
  loc_617A47: MemLdStr global_60
  loc_617A4A: Ary1LdI2
  loc_617A4B: LitI2_Byte &HFF
  loc_617A4D: GtI2
  loc_617A4E: BranchF loc_617A82
  loc_617A51: FLdRfVar var_A0
  loc_617A54: FLdI2 var_86
  loc_617A57: CI4UI1
  loc_617A58: FLdPr Me
  loc_617A5B: MemLdStr global_60
  loc_617A5E: Ary1LdI2
  loc_617A5F: FLdPrThis
  loc_617A60: VCallAd Control_ID_ListModulos
  loc_617A63: FStAdFunc var_9C
  loc_617A66: FLdPr var_9C
  loc_617A69:  = Me.ItemData
  loc_617A6E: ILdRf var_A0
  loc_617A71: CUI1I4
  loc_617A73: FLdI2 var_86
  loc_617A76: CI4UI1
  loc_617A77: ILdRf var_90
  loc_617A7A: Ary1StUI1
  loc_617A7C: FFree1Ad var_9C
  loc_617A7F: Branch loc_617A97
  loc_617A82: FLdI2 var_86
  loc_617A85: CI4UI1
  loc_617A86: FLdPr Me
  loc_617A89: MemLdStr global_56
  loc_617A8C: Ary1LdUI1
  loc_617A8E: FLdI2 var_86
  loc_617A91: CI4UI1
  loc_617A92: ILdRf var_90
  loc_617A95: Ary1StUI1
  loc_617A97: FLdRfVar var_86
  loc_617A9A: NextI2 var_96, loc_617A40
  loc_617A9F: FLdRfVar var_92
  loc_617AA2: FLdRfVar var_90
  loc_617AA5: ImpAdLdRf MemVar_74A21C
  loc_617AA8: NewIfNullPr clsSecurity
  loc_617AB0: FLdRfVar var_92
  loc_617AB3: FLdRfVar var_8C
  loc_617AB6: FLdRfVar var_9C
  loc_617AB9: ImpAdLdRf MemVar_74C760
  loc_617ABC: NewIfNullPr Formx
  loc_617ABF: from_stack_1v = Formx.global_4589716Get()
  loc_617AC4: FLdPr var_9C
  loc_617AC7: Call 0.Method_arg_32C ()
  loc_617ACC: FFree1Ad var_9C
  loc_617ACF: ILdRf var_8C
  loc_617AD2: ImpAdStStrCopy MemVar_74BF50
  loc_617AD6: FLdRfVar var_92
  loc_617AD9: FLdRfVar var_8C
  loc_617ADC: FLdRfVar var_9C
  loc_617ADF: ImpAdLdRf MemVar_74C760
  loc_617AE2: NewIfNullPr Formx
  loc_617AE5: from_stack_1v = Formx.global_4589716Get()
  loc_617AEA: FLdPr var_9C
  loc_617AED: Call 0.Method_arg_330 ()
  loc_617AF2: FFree1Ad var_9C
  loc_617AF5: ILdRf var_8C
  loc_617AF8: ImpAdStStrCopy MemVar_74BF54
  loc_617AFC: FLdRfVar var_92
  loc_617AFF: ImpAdLdRf MemVar_74A21C
  loc_617B02: NewIfNullPr clsSecurity
  loc_617B0A: LitI2_Byte 1
  loc_617B0C: CUI1I2
  loc_617B0E: ImpAdStUI1 MemVar_74BEA5
  loc_617B12: ILdRf Me
  loc_617B15: FStAdNoPop
  loc_617B19: ImpAdLdRf MemVar_7520D4
  loc_617B1C: NewIfNullPr Global
  loc_617B1F: Global.Unload from_stack_1
  loc_617B24: FFree1Ad var_9C
  loc_617B27: ExitProcHresult
End Sub

Private Sub ListModulos_Click() '5F21CC
  'Data Table: 415CAC
  loc_5F212C: FLdPr Me
  loc_5F212F: MemLdI2 global_52
  loc_5F2132: BranchF loc_5F21CA
  loc_5F2135: FLdRfVar var_8E
  loc_5F2138: FLdPrThis
  loc_5F2139: VCallAd Control_ID_ListModulos
  loc_5F213C: FStAdFunc var_8C
  loc_5F213F: FLdPr var_8C
  loc_5F2142:  = Me.ListIndex
  loc_5F2147: FLdRfVar var_98
  loc_5F214A: FLdI2 var_8E
  loc_5F214D: FLdPrThis
  loc_5F214E: VCallAd Control_ID_ListModulos
  loc_5F2151: FStAdFunc var_94
  loc_5F2154: FLdPr var_94
  loc_5F2157:  = Me.ItemData
  loc_5F215C: ILdRf var_98
  loc_5F215F: CStrI4
  loc_5F2161: FStStrNoPop var_9C
  loc_5F2164: ImpAdCallFPR4 push Val()
  loc_5F2169: CI2R8
  loc_5F216A: FStI2 var_86
  loc_5F216D: FFree1Str var_9C
  loc_5F2170: FFreeAd var_8C = ""
  loc_5F2177: FLdI2 var_86
  loc_5F217A: FLdRfVar var_8E
  loc_5F217D: ImpAdLdRf MemVar_74A218
  loc_5F2180: NewIfNullPr clsUsers
  loc_5F2188: FLdI2 var_8E
  loc_5F218B: GtI2
  loc_5F218C: BranchF loc_5F21B5
  loc_5F218F: FLdRfVar var_8E
  loc_5F2192: ImpAdLdRf MemVar_74A218
  loc_5F2195: NewIfNullPr clsUsers
  loc_5F219D: FLdI2 var_8E
  loc_5F21A0: FLdPrThis
  loc_5F21A1: VCallAd Control_ID_ListUsuarios
  loc_5F21A4: FStAdFunc var_8C
  loc_5F21A7: FLdPr var_8C
  loc_5F21AA: Me.ListIndex = from_stack_1
  loc_5F21AF: FFree1Ad var_8C
  loc_5F21B2: Branch loc_5F21CA
  loc_5F21B5: FLdI2 var_86
  loc_5F21B8: FLdPrThis
  loc_5F21B9: VCallAd Control_ID_ListUsuarios
  loc_5F21BC: FStAdFunc var_8C
  loc_5F21BF: FLdPr var_8C
  loc_5F21C2: Me.ListIndex = from_stack_1
  loc_5F21C7: FFree1Ad var_8C
  loc_5F21CA: ExitProcHresult
End Sub

Private Sub ListModulos_GotFocus() '5D87D8
  'Data Table: 415CAC
  loc_5D87A8: LitI4 &HC00000
  loc_5D87AD: FLdPrThis
  loc_5D87AE: VCallAd Control_ID_lblUsuarios
  loc_5D87B1: FStAdFunc var_88
  loc_5D87B4: FLdPr var_88
  loc_5D87B7: Me.BackColor = from_stack_1
  loc_5D87BC: FFree1Ad var_88
  loc_5D87BF: LitI4 0
  loc_5D87C4: FLdPrThis
  loc_5D87C5: VCallAd Control_ID_lblModulos
  loc_5D87C8: FStAdFunc var_88
  loc_5D87CB: FLdPr var_88
  loc_5D87CE: Me.BackColor = from_stack_1
  loc_5D87D3: FFree1Ad var_88
  loc_5D87D6: ExitProcHresult
End Sub

Private Sub Form_Load() '687FEC
  'Data Table: 415CAC
  loc_687AB0: LitI2_Byte 0
  loc_687AB2: CR8I2
  loc_687AB3: PopFPR4
  loc_687AB4: FLdPr Me
  loc_687AB7: Me.Top = from_stack_1s
  loc_687ABC: LitI2_Byte 0
  loc_687ABE: CR8I2
  loc_687ABF: PopFPR4
  loc_687AC0: FLdPr Me
  loc_687AC3: Me.Left = from_stack_1s
  loc_687AC8: FLdRfVar var_90
  loc_687ACB: FLdRfVar var_8C
  loc_687ACE: ImpAdLdRf MemVar_7520D4
  loc_687AD1: NewIfNullPr Global
  loc_687AD4:  = Global.Screen
  loc_687AD9: FLdPr var_8C
  loc_687ADC:  = Screen.TwipsPerPixelY
  loc_687AE1: FLdFPR4 var_90
  loc_687AE4: LitI2 600
  loc_687AE7: CR8I2
  loc_687AE8: MulR8
  loc_687AE9: PopFPR4
  loc_687AEA: FLdPr Me
  loc_687AED: Me.Height = from_stack_1s
  loc_687AF2: FFree1Ad var_8C
  loc_687AF5: FLdRfVar var_90
  loc_687AF8: FLdRfVar var_8C
  loc_687AFB: ImpAdLdRf MemVar_7520D4
  loc_687AFE: NewIfNullPr Global
  loc_687B01:  = Global.Screen
  loc_687B06: FLdPr var_8C
  loc_687B09:  = Screen.TwipsPerPixelY
  loc_687B0E: FLdFPR4 var_90
  loc_687B11: LitI2 800
  loc_687B14: CR8I2
  loc_687B15: MulR8
  loc_687B16: PopFPR4
  loc_687B17: FLdPr Me
  loc_687B1A: Me.Width = from_stack_1s
  loc_687B1F: FFree1Ad var_8C
  loc_687B22: FLdRfVar var_1DC
  loc_687B25: LitVar_Missing var_1D8
  loc_687B28: LitVar_Missing var_1B8
  loc_687B2B: LitVar_Missing var_198
  loc_687B2E: LitVar_Missing var_178
  loc_687B31: LitVar_Missing var_158
  loc_687B34: LitVar_Missing var_138
  loc_687B37: LitVar_Missing var_118
  loc_687B3A: LitVar_Missing var_F8
  loc_687B3D: LitVar_Missing var_D8
  loc_687B40: LitVar_Missing var_B8
  loc_687B43: LitStr "Seguridad"
  loc_687B46: FStStrCopy var_98
  loc_687B49: FLdRfVar var_98
  loc_687B4C: LitI4 1
  loc_687B51: PopTmpLdAdStr var_90
  loc_687B54: LitI2_Byte &H49
  loc_687B56: PopTmpLdAd2 var_92
  loc_687B59: ImpAdLdRf MemVar_74C7D0
  loc_687B5C: NewIfNullPr clsMsg
  loc_687B5F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_687B64: ILdRf var_1DC
  loc_687B67: FLdPr Me
  loc_687B6A: Me.Caption = from_stack_1
  loc_687B6F: FFreeStr var_98 = ""
  loc_687B76: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_687B8D: FLdRfVar var_1DC
  loc_687B90: LitVar_Missing var_1D8
  loc_687B93: LitVar_Missing var_1B8
  loc_687B96: LitVar_Missing var_198
  loc_687B99: LitVar_Missing var_178
  loc_687B9C: LitVar_Missing var_158
  loc_687B9F: LitVar_Missing var_138
  loc_687BA2: LitVar_Missing var_118
  loc_687BA5: LitVar_Missing var_F8
  loc_687BA8: LitVar_Missing var_D8
  loc_687BAB: LitVar_Missing var_B8
  loc_687BAE: LitStr "Modulos"
  loc_687BB1: FStStrCopy var_98
  loc_687BB4: FLdRfVar var_98
  loc_687BB7: LitI4 2
  loc_687BBC: PopTmpLdAdStr var_90
  loc_687BBF: LitI2_Byte &H49
  loc_687BC1: PopTmpLdAd2 var_92
  loc_687BC4: ImpAdLdRf MemVar_74C7D0
  loc_687BC7: NewIfNullPr clsMsg
  loc_687BCA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_687BCF: ILdRf var_1DC
  loc_687BD2: FLdPrThis
  loc_687BD3: VCallAd Control_ID_lblModulos
  loc_687BD6: FStAdFunc var_8C
  loc_687BD9: FLdPr var_8C
  loc_687BDC: Me.Caption = from_stack_1
  loc_687BE1: FFreeStr var_98 = ""
  loc_687BE8: FFree1Ad var_8C
  loc_687BEB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_687C02: FLdRfVar var_1DC
  loc_687C05: LitVar_Missing var_1D8
  loc_687C08: LitVar_Missing var_1B8
  loc_687C0B: LitVar_Missing var_198
  loc_687C0E: LitVar_Missing var_178
  loc_687C11: LitVar_Missing var_158
  loc_687C14: LitVar_Missing var_138
  loc_687C17: LitVar_Missing var_118
  loc_687C1A: LitVar_Missing var_F8
  loc_687C1D: LitVar_Missing var_D8
  loc_687C20: LitVar_Missing var_B8
  loc_687C23: LitStr "Usuarios"
  loc_687C26: FStStrCopy var_98
  loc_687C29: FLdRfVar var_98
  loc_687C2C: LitI4 3
  loc_687C31: PopTmpLdAdStr var_90
  loc_687C34: LitI2_Byte &H49
  loc_687C36: PopTmpLdAd2 var_92
  loc_687C39: ImpAdLdRf MemVar_74C7D0
  loc_687C3C: NewIfNullPr clsMsg
  loc_687C3F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_687C44: ILdRf var_1DC
  loc_687C47: FLdPrThis
  loc_687C48: VCallAd Control_ID_lblUsuarios
  loc_687C4B: FStAdFunc var_8C
  loc_687C4E: FLdPr var_8C
  loc_687C51: Me.Caption = from_stack_1
  loc_687C56: FFreeStr var_98 = ""
  loc_687C5D: FFree1Ad var_8C
  loc_687C60: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_687C77: FLdRfVar var_1DC
  loc_687C7A: LitVar_Missing var_1D8
  loc_687C7D: LitVar_Missing var_1B8
  loc_687C80: LitVar_Missing var_198
  loc_687C83: LitVar_Missing var_178
  loc_687C86: LitVar_Missing var_158
  loc_687C89: LitVar_Missing var_138
  loc_687C8C: LitVar_Missing var_118
  loc_687C8F: LitVar_Missing var_F8
  loc_687C92: LitVar_Missing var_D8
  loc_687C95: LitVar_Missing var_B8
  loc_687C98: LitStr "&Cancelar"
  loc_687C9B: FStStrCopy var_98
  loc_687C9E: FLdRfVar var_98
  loc_687CA1: LitI4 4
  loc_687CA6: PopTmpLdAdStr var_90
  loc_687CA9: LitI2_Byte &H49
  loc_687CAB: PopTmpLdAd2 var_92
  loc_687CAE: ImpAdLdRf MemVar_74C7D0
  loc_687CB1: NewIfNullPr clsMsg
  loc_687CB4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_687CB9: FLdZeroAd var_1DC
  loc_687CBC: CVarStr var_1EC
  loc_687CBF: PopAdLdVar
  loc_687CC0: FLdPrThis
  loc_687CC1: VCallAd Control_ID_sscCancel
  loc_687CC4: FStAdFunc var_8C
  loc_687CC7: FLdPr var_8C
  loc_687CCA: LateIdSt
  loc_687CCF: FFree1Str var_98
  loc_687CD2: FFree1Ad var_8C
  loc_687CD5: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_687CEE: FLdRfVar var_1DC
  loc_687CF1: LitVar_Missing var_1D8
  loc_687CF4: LitVar_Missing var_1B8
  loc_687CF7: LitVar_Missing var_198
  loc_687CFA: LitVar_Missing var_178
  loc_687CFD: LitVar_Missing var_158
  loc_687D00: LitVar_Missing var_138
  loc_687D03: LitVar_Missing var_118
  loc_687D06: LitVar_Missing var_F8
  loc_687D09: LitVar_Missing var_D8
  loc_687D0C: LitVar_Missing var_B8
  loc_687D0F: LitStr "&Aceptar"
  loc_687D12: FStStrCopy var_98
  loc_687D15: FLdRfVar var_98
  loc_687D18: LitI4 5
  loc_687D1D: PopTmpLdAdStr var_90
  loc_687D20: LitI2_Byte &H49
  loc_687D22: PopTmpLdAd2 var_92
  loc_687D25: ImpAdLdRf MemVar_74C7D0
  loc_687D28: NewIfNullPr clsMsg
  loc_687D2B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_687D30: FLdZeroAd var_1DC
  loc_687D33: CVarStr var_1EC
  loc_687D36: PopAdLdVar
  loc_687D37: FLdPrThis
  loc_687D38: VCallAd Control_ID_sscContinuar
  loc_687D3B: FStAdFunc var_8C
  loc_687D3E: FLdPr var_8C
  loc_687D41: LateIdSt
  loc_687D46: FFree1Str var_98
  loc_687D49: FFree1Ad var_8C
  loc_687D4C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_687D65: LitI4 1
  loc_687D6A: FLdRfVar var_92
  loc_687D6D: ImpAdLdRf MemVar_74A21C
  loc_687D70: NewIfNullPr clsSecurity
  loc_687D73:  = Forms
  loc_687D78: FLdI2 var_92
  loc_687D7B: CI4UI1
  loc_687D7C: FLdPr Me
  loc_687D7F: MemLdRfVar from_stack_1.global_56
  loc_687D82: Redim
  loc_687D8C: LitI4 1
  loc_687D91: FLdRfVar var_92
  loc_687D94: ImpAdLdRf MemVar_74A21C
  loc_687D97: NewIfNullPr clsSecurity
  loc_687D9A:  = Forms
  loc_687D9F: FLdI2 var_92
  loc_687DA2: CI4UI1
  loc_687DA3: FLdPr Me
  loc_687DA6: MemLdRfVar from_stack_1.global_60
  loc_687DA9: Redim
  loc_687DB3: LitI2_Byte 1
  loc_687DB5: FLdRfVar var_86
  loc_687DB8: FLdRfVar var_92
  loc_687DBB: ImpAdLdRf MemVar_74A21C
  loc_687DBE: NewIfNullPr clsSecurity
  loc_687DC1:  = Forms
  loc_687DC6: FLdI2 var_92
  loc_687DC9: ForI2 var_1F0
  loc_687DCF: FLdRfVar var_92
  loc_687DD2: FLdRfVar var_86
  loc_687DD5: ImpAdLdRf MemVar_74A21C
  loc_687DD8: NewIfNullPr clsSecurity
  loc_687DE0: FLdI2 var_92
  loc_687DE3: FLdRfVar var_98
  loc_687DE6: FLdRfVar var_86
  loc_687DE9: ImpAdLdRf MemVar_74A21C
  loc_687DEC: NewIfNullPr clsSecurity
  loc_687DEF: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_687DF4: ILdRf var_98
  loc_687DF7: LitStr vbNullString
  loc_687DFA: NeStr
  loc_687DFC: AndI4
  loc_687DFD: FFree1Str var_98
  loc_687E00: BranchF loc_687F41
  loc_687E03: LitVarI2 var_B8, 1
  loc_687E08: LitI4 4
  loc_687E0D: ImpAdLdRf MemVar_74BEAC
  loc_687E10: CVarRef
  loc_687E15: FLdRfVar var_D8
  loc_687E18: ImpAdCallFPR4  = Mid(, , )
  loc_687E1D: FLdRfVar var_D8
  loc_687E20: LitVarI2 var_E8, 0
  loc_687E25: HardType
  loc_687E26: EqVar var_F8
  loc_687E2A: FLdI2 var_86
  loc_687E2D: LitI2_Byte &H53
  loc_687E2F: EqI2
  loc_687E30: CVarBoolI2 var_108
  loc_687E34: AndVar var_118
  loc_687E38: CBoolVarNull
  loc_687E3A: FFreeVar var_B8 = "": var_D8 = ""
  loc_687E43: BranchF loc_687E49
  loc_687E46: Branch loc_687F41
  loc_687E49: FLdI2 var_86
  loc_687E4C: LitI2_Byte &H6B
  loc_687E4E: NeI2
  loc_687E4F: BranchF loc_687EC0
  loc_687E52: LitVar_Missing var_A8
  loc_687E55: PopAdLdVar
  loc_687E56: FLdRfVar var_98
  loc_687E59: FLdRfVar var_86
  loc_687E5C: ImpAdLdRf MemVar_74A21C
  loc_687E5F: NewIfNullPr clsSecurity
  loc_687E62: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_687E67: ILdRf var_98
  loc_687E6A: FLdPrThis
  loc_687E6B: VCallAd Control_ID_ListModulos
  loc_687E6E: FStAdFunc var_8C
  loc_687E71: FLdPr var_8C
  loc_687E74: Me.AddItem from_stack_1, from_stack_2
  loc_687E79: FFree1Str var_98
  loc_687E7C: FFree1Ad var_8C
  loc_687E7F: FLdRfVar var_92
  loc_687E82: FLdRfVar var_86
  loc_687E85: ImpAdLdRf MemVar_74A21C
  loc_687E88: NewIfNullPr clsSecurity
  loc_687E90: FLdUI1
  loc_687E94: CI4UI1
  loc_687E95: FLdRfVar var_1F2
  loc_687E98: FLdPrThis
  loc_687E99: VCallAd Control_ID_ListModulos
  loc_687E9C: FStAdFunc var_8C
  loc_687E9F: FLdPr var_8C
  loc_687EA2:  = Me.NewIndex
  loc_687EA7: FLdI2 var_1F2
  loc_687EAA: FLdPrThis
  loc_687EAB: VCallAd Control_ID_ListModulos
  loc_687EAE: FStAdFunc var_1F8
  loc_687EB1: FLdPr var_1F8
  loc_687EB4: Me.ItemData = from_stack_1
  loc_687EB9: FFreeAd var_8C = ""
  loc_687EC0: FLdI2 var_86
  loc_687EC3: LitI2_Byte &H6B
  loc_687EC5: EqI2
  loc_687EC6: ImpAdLdUI1
  loc_687ECA: CI2UI1
  loc_687ECC: LitI2_Byte 1
  loc_687ECE: EqI2
  loc_687ECF: AndI4
  loc_687ED0: BranchF loc_687F41
  loc_687ED3: LitVar_Missing var_A8
  loc_687ED6: PopAdLdVar
  loc_687ED7: FLdRfVar var_98
  loc_687EDA: FLdRfVar var_86
  loc_687EDD: ImpAdLdRf MemVar_74A21C
  loc_687EE0: NewIfNullPr clsSecurity
  loc_687EE3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_687EE8: ILdRf var_98
  loc_687EEB: FLdPrThis
  loc_687EEC: VCallAd Control_ID_ListModulos
  loc_687EEF: FStAdFunc var_8C
  loc_687EF2: FLdPr var_8C
  loc_687EF5: Me.AddItem from_stack_1, from_stack_2
  loc_687EFA: FFree1Str var_98
  loc_687EFD: FFree1Ad var_8C
  loc_687F00: FLdRfVar var_92
  loc_687F03: FLdRfVar var_86
  loc_687F06: ImpAdLdRf MemVar_74A21C
  loc_687F09: NewIfNullPr clsSecurity
  loc_687F11: FLdUI1
  loc_687F15: CI4UI1
  loc_687F16: FLdRfVar var_1F2
  loc_687F19: FLdPrThis
  loc_687F1A: VCallAd Control_ID_ListModulos
  loc_687F1D: FStAdFunc var_8C
  loc_687F20: FLdPr var_8C
  loc_687F23:  = Me.NewIndex
  loc_687F28: FLdI2 var_1F2
  loc_687F2B: FLdPrThis
  loc_687F2C: VCallAd Control_ID_ListModulos
  loc_687F2F: FStAdFunc var_1F8
  loc_687F32: FLdPr var_1F8
  loc_687F35: Me.ItemData = from_stack_1
  loc_687F3A: FFreeAd var_8C = ""
  loc_687F41: FLdRfVar var_92
  loc_687F44: FLdRfVar var_86
  loc_687F47: ImpAdLdRf MemVar_74A21C
  loc_687F4A: NewIfNullPr clsSecurity
  loc_687F52: FLdUI1
  loc_687F56: FLdI2 var_86
  loc_687F59: CI4UI1
  loc_687F5A: FLdPr Me
  loc_687F5D: MemLdStr global_56
  loc_687F60: Ary1StUI1
  loc_687F62: FLdRfVar var_86
  loc_687F65: NextI2 var_1F0, loc_687DCF
  loc_687F6A: LitI2_Byte 1
  loc_687F6C: FLdRfVar var_86
  loc_687F6F: FLdRfVar var_92
  loc_687F72: ImpAdLdRf MemVar_74A218
  loc_687F75: NewIfNullPr clsUsers
  loc_687F7D: FLdI2 var_92
  loc_687F80: ForI2 var_1FC
  loc_687F86: LitVar_Missing var_A8
  loc_687F89: PopAdLdVar
  loc_687F8A: FLdRfVar var_98
  loc_687F8D: FLdRfVar var_86
  loc_687F90: ImpAdLdRf MemVar_74A218
  loc_687F93: NewIfNullPr clsUsers
  loc_687F96: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_687F9B: ILdRf var_98
  loc_687F9E: FLdPrThis
  loc_687F9F: VCallAd Control_ID_ListUsuarios
  loc_687FA2: FStAdFunc var_8C
  loc_687FA5: FLdPr var_8C
  loc_687FA8: Me.AddItem from_stack_1, from_stack_2
  loc_687FAD: FFree1Str var_98
  loc_687FB0: FFree1Ad var_8C
  loc_687FB3: FLdRfVar var_86
  loc_687FB6: NextI2 var_1FC, loc_687F86
  loc_687FBB: LitI2_Byte 0
  loc_687FBD: FLdPr Me
  loc_687FC0: MemStI2 global_52
  loc_687FC3: from_stack_1v = Proc_75_8_5DFA9C()
  loc_687FC8: LitI2_Byte &HFF
  loc_687FCA: FLdPr Me
  loc_687FCD: MemStI2 global_52
  loc_687FD0: LitI2_Byte 0
  loc_687FD2: FLdPrThis
  loc_687FD3: VCallAd Control_ID_ListModulos
  loc_687FD6: FStAdFunc var_8C
  loc_687FD9: FLdPr var_8C
  loc_687FDC: Me.ListIndex = from_stack_1
  loc_687FE1: FFree1Ad var_8C
  loc_687FE4: Call ListModulos_Click()
  loc_687FE9: ExitProcHresult
End Sub

Private Sub ListUsuarios_Click() '681740
  'Data Table: 415CAC
  loc_6812D0: FLdRfVar var_90
  loc_6812D3: FLdRfVar var_8E
  loc_6812D6: FLdPrThis
  loc_6812D7: VCallAd Control_ID_ListModulos
  loc_6812DA: FStAdFunc var_8C
  loc_6812DD: FLdPr var_8C
  loc_6812E0:  = Me.ListIndex
  loc_6812E5: FLdI2 var_8E
  loc_6812E8: from_stack_2v = Proc_75_7_5DC404(from_stack_1v)
  loc_6812ED: FLdI2 var_90
  loc_6812F0: FStI2 var_88
  loc_6812F3: FFree1Ad var_8C
  loc_6812F6: FLdRfVar var_8E
  loc_6812F9: FLdPrThis
  loc_6812FA: VCallAd Control_ID_ListModulos
  loc_6812FD: FStAdFunc var_8C
  loc_681300: FLdPr var_8C
  loc_681303:  = Me.ListIndex
  loc_681308: FLdRfVar var_98
  loc_68130B: FLdI2 var_8E
  loc_68130E: FLdPrThis
  loc_68130F: VCallAd Control_ID_ListModulos
  loc_681312: FStAdFunc var_94
  loc_681315: FLdPr var_94
  loc_681318:  = Me.ItemData
  loc_68131D: ILdRf var_98
  loc_681320: CStrI4
  loc_681322: FStStrNoPop var_9C
  loc_681325: ImpAdCallFPR4 push Val()
  loc_68132A: CI2R8
  loc_68132B: FStI2 var_86
  loc_68132E: FFree1Str var_9C
  loc_681331: FFreeAd var_8C = ""
  loc_681338: ImpAdLdUI1
  loc_68133C: CI2UI1
  loc_68133E: LitI2_Byte 8
  loc_681340: GtI2
  loc_681341: FLdRfVar var_8E
  loc_681344: FLdPrThis
  loc_681345: VCallAd Control_ID_ListUsuarios
  loc_681348: FStAdFunc var_8C
  loc_68134B: FLdPr var_8C
  loc_68134E:  = Me.ListIndex
  loc_681353: FLdI2 var_8E
  loc_681356: LitI2_Byte 1
  loc_681358: AddI2
  loc_681359: FLdRfVar var_90
  loc_68135C: ImpAdLdRf MemVar_74A218
  loc_68135F: NewIfNullPr clsUsers
  loc_681367: FLdI2 var_90
  loc_68136A: EqI2
  loc_68136B: AndI4
  loc_68136C: NotI4
  loc_68136D: FFree1Ad var_8C
  loc_681370: BranchF loc_6816FA
  loc_681373: FLdRfVar var_8E
  loc_681376: FLdRfVar var_88
  loc_681379: ImpAdLdRf MemVar_74A21C
  loc_68137C: NewIfNullPr clsSecurity
  loc_681384: FLdUI1
  loc_681388: CI2UI1
  loc_68138A: ImpAdLdUI1
  loc_68138E: CI2UI1
  loc_681390: LitI2_Byte 1
  loc_681392: SubI2
  loc_681393: GtI2
  loc_681394: BranchF loc_681536
  loc_681397: FLdI2 var_88
  loc_68139A: CI4UI1
  loc_68139B: FLdPr Me
  loc_68139E: MemLdStr global_56
  loc_6813A1: Ary1LdUI1
  loc_6813A3: CI2UI1
  loc_6813A5: FLdRfVar var_8E
  loc_6813A8: FLdPrThis
  loc_6813A9: VCallAd Control_ID_ListUsuarios
  loc_6813AC: FStAdFunc var_8C
  loc_6813AF: FLdPr var_8C
  loc_6813B2:  = Me.ListIndex
  loc_6813B7: FLdI2 var_8E
  loc_6813BA: NeI2
  loc_6813BB: FFree1Ad var_8C
  loc_6813BE: BranchF loc_681536
  loc_6813C1: FLdRfVar var_1E0
  loc_6813C4: LitVar_Missing var_1DC
  loc_6813C7: LitVar_Missing var_1BC
  loc_6813CA: LitVar_Missing var_19C
  loc_6813CD: LitVar_Missing var_17C
  loc_6813D0: LitVar_Missing var_15C
  loc_6813D3: LitVar_Missing var_13C
  loc_6813D6: LitVar_Missing var_11C
  loc_6813D9: LitVar_Missing var_FC
  loc_6813DC: LitVar_Missing var_DC
  loc_6813DF: LitVar_Missing var_BC
  loc_6813E2: LitStr "No tiene nivel de seguridad suficiente para el modulo:"
  loc_6813E5: FStStrCopy var_9C
  loc_6813E8: FLdRfVar var_9C
  loc_6813EB: LitI4 6
  loc_6813F0: PopTmpLdAdStr var_98
  loc_6813F3: LitI2_Byte &H49
  loc_6813F5: PopTmpLdAd2 var_8E
  loc_6813F8: ImpAdLdRf MemVar_74C7D0
  loc_6813FB: NewIfNullPr clsMsg
  loc_6813FE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681403: FLdRfVar var_1E4
  loc_681406: FLdRfVar var_88
  loc_681409: ImpAdLdRf MemVar_74A21C
  loc_68140C: NewIfNullPr clsSecurity
  loc_68140F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_681414: FLdRfVar var_334
  loc_681417: LitVar_Missing var_330
  loc_68141A: LitVar_Missing var_310
  loc_68141D: LitVar_Missing var_2F0
  loc_681420: LitVar_Missing var_2D0
  loc_681423: LitVar_Missing var_2B0
  loc_681426: LitVar_Missing var_290
  loc_681429: LitVar_Missing var_270
  loc_68142C: LitVar_Missing var_250
  loc_68142F: LitVar_Missing var_230
  loc_681432: LitVar_Missing var_210
  loc_681435: LitStr ". Verifique por favor."
  loc_681438: FStStrCopy var_1F0
  loc_68143B: FLdRfVar var_1F0
  loc_68143E: LitI4 7
  loc_681443: PopTmpLdAdStr var_1EC
  loc_681446: LitI2_Byte &H49
  loc_681448: PopTmpLdAd2 var_90
  loc_68144B: ImpAdLdRf MemVar_74C7D0
  loc_68144E: NewIfNullPr clsMsg
  loc_681451: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681456: FLdRfVar var_488
  loc_681459: LitVar_Missing var_484
  loc_68145C: LitVar_Missing var_464
  loc_68145F: LitVar_Missing var_444
  loc_681462: LitVar_Missing var_424
  loc_681465: LitVar_Missing var_404
  loc_681468: LitVar_Missing var_3E4
  loc_68146B: LitVar_Missing var_3C4
  loc_68146E: LitVar_Missing var_3A4
  loc_681471: LitVar_Missing var_384
  loc_681474: LitVar_Missing var_364
  loc_681477: LitStr "Seguridad"
  loc_68147A: FStStrCopy var_344
  loc_68147D: FLdRfVar var_344
  loc_681480: LitI4 1
  loc_681485: PopTmpLdAdStr var_340
  loc_681488: LitI2_Byte &H49
  loc_68148A: PopTmpLdAd2 var_33A
  loc_68148D: ImpAdLdRf MemVar_74C7D0
  loc_681490: NewIfNullPr clsMsg
  loc_681493: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_681498: LitVar_Missing var_4E8
  loc_68149B: LitVar_Missing var_4C8
  loc_68149E: FLdZeroAd var_488
  loc_6814A1: CVarStr var_4A8
  loc_6814A4: LitI4 &H40
  loc_6814A9: ILdRf var_1E0
  loc_6814AC: LitStr " "
  loc_6814AF: ConcatStr
  loc_6814B0: FStStrNoPop var_1E8
  loc_6814B3: ILdRf var_1E4
  loc_6814B6: ConcatStr
  loc_6814B7: FStStrNoPop var_338
  loc_6814BA: ILdRf var_334
  loc_6814BD: ConcatStr
  loc_6814BE: CVarStr var_498
  loc_6814C1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6814C6: FFreeStr var_9C = "": var_1E0 = "": var_1E8 = "": var_1E4 = "": var_1F0 = "": var_338 = "": var_334 = ""
  loc_6814D9: FFreeVar var_498 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_210 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = ""
  loc_681520: FLdI2 var_86
  loc_681523: FLdPrThis
  loc_681524: VCallAd Control_ID_ListUsuarios
  loc_681527: FStAdFunc var_8C
  loc_68152A: FLdPr var_8C
  loc_68152D: Me.ListIndex = from_stack_1
  loc_681532: FFree1Ad var_8C
  loc_681535: ExitProcHresult
  loc_681536: FLdRfVar var_8E
  loc_681539: FLdPrThis
  loc_68153A: VCallAd Control_ID_ListUsuarios
  loc_68153D: FStAdFunc var_8C
  loc_681540: FLdPr var_8C
  loc_681543:  = Me.ListIndex
  loc_681548: FLdI2 var_8E
  loc_68154B: LitI2_Byte 1
  loc_68154D: AddI2
  loc_68154E: ImpAdLdUI1
  loc_681552: CI2UI1
  loc_681554: GtI2
  loc_681555: FFree1Ad var_8C
  loc_681558: BranchF loc_6816FA
  loc_68155B: FLdI2 var_88
  loc_68155E: CI4UI1
  loc_68155F: FLdPr Me
  loc_681562: MemLdStr global_56
  loc_681565: Ary1LdUI1
  loc_681567: CI2UI1
  loc_681569: FLdRfVar var_8E
  loc_68156C: FLdPrThis
  loc_68156D: VCallAd Control_ID_ListUsuarios
  loc_681570: FStAdFunc var_8C
  loc_681573: FLdPr var_8C
  loc_681576:  = Me.ListIndex
  loc_68157B: FLdI2 var_8E
  loc_68157E: NeI2
  loc_68157F: FFree1Ad var_8C
  loc_681582: BranchF loc_6816FA
  loc_681585: FLdRfVar var_1E0
  loc_681588: LitVar_Missing var_1DC
  loc_68158B: LitVar_Missing var_1BC
  loc_68158E: LitVar_Missing var_19C
  loc_681591: LitVar_Missing var_17C
  loc_681594: LitVar_Missing var_15C
  loc_681597: LitVar_Missing var_13C
  loc_68159A: LitVar_Missing var_11C
  loc_68159D: LitVar_Missing var_FC
  loc_6815A0: LitVar_Missing var_DC
  loc_6815A3: LitVar_Missing var_BC
  loc_6815A6: LitStr "No tiene nivel de seguridad suficiente para el modulo:"
  loc_6815A9: FStStrCopy var_9C
  loc_6815AC: FLdRfVar var_9C
  loc_6815AF: LitI4 6
  loc_6815B4: PopTmpLdAdStr var_98
  loc_6815B7: LitI2_Byte &H49
  loc_6815B9: PopTmpLdAd2 var_8E
  loc_6815BC: ImpAdLdRf MemVar_74C7D0
  loc_6815BF: NewIfNullPr clsMsg
  loc_6815C2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6815C7: FLdRfVar var_1E4
  loc_6815CA: FLdRfVar var_88
  loc_6815CD: ImpAdLdRf MemVar_74A21C
  loc_6815D0: NewIfNullPr clsSecurity
  loc_6815D3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6815D8: FLdRfVar var_334
  loc_6815DB: LitVar_Missing var_330
  loc_6815DE: LitVar_Missing var_310
  loc_6815E1: LitVar_Missing var_2F0
  loc_6815E4: LitVar_Missing var_2D0
  loc_6815E7: LitVar_Missing var_2B0
  loc_6815EA: LitVar_Missing var_290
  loc_6815ED: LitVar_Missing var_270
  loc_6815F0: LitVar_Missing var_250
  loc_6815F3: LitVar_Missing var_230
  loc_6815F6: LitVar_Missing var_210
  loc_6815F9: LitStr ". Verifique por favor."
  loc_6815FC: FStStrCopy var_1F0
  loc_6815FF: FLdRfVar var_1F0
  loc_681602: LitI4 7
  loc_681607: PopTmpLdAdStr var_1EC
  loc_68160A: LitI2_Byte &H49
  loc_68160C: PopTmpLdAd2 var_90
  loc_68160F: ImpAdLdRf MemVar_74C7D0
  loc_681612: NewIfNullPr clsMsg
  loc_681615: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68161A: FLdRfVar var_488
  loc_68161D: LitVar_Missing var_484
  loc_681620: LitVar_Missing var_464
  loc_681623: LitVar_Missing var_444
  loc_681626: LitVar_Missing var_424
  loc_681629: LitVar_Missing var_404
  loc_68162C: LitVar_Missing var_3E4
  loc_68162F: LitVar_Missing var_3C4
  loc_681632: LitVar_Missing var_3A4
  loc_681635: LitVar_Missing var_384
  loc_681638: LitVar_Missing var_364
  loc_68163B: LitStr "Seguridad"
  loc_68163E: FStStrCopy var_344
  loc_681641: FLdRfVar var_344
  loc_681644: LitI4 1
  loc_681649: PopTmpLdAdStr var_340
  loc_68164C: LitI2_Byte &H49
  loc_68164E: PopTmpLdAd2 var_33A
  loc_681651: ImpAdLdRf MemVar_74C7D0
  loc_681654: NewIfNullPr clsMsg
  loc_681657: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68165C: LitVar_Missing var_4E8
  loc_68165F: LitVar_Missing var_4C8
  loc_681662: FLdZeroAd var_488
  loc_681665: CVarStr var_4A8
  loc_681668: LitI4 &H40
  loc_68166D: ILdRf var_1E0
  loc_681670: LitStr " "
  loc_681673: ConcatStr
  loc_681674: FStStrNoPop var_1E8
  loc_681677: ILdRf var_1E4
  loc_68167A: ConcatStr
  loc_68167B: FStStrNoPop var_338
  loc_68167E: ILdRf var_334
  loc_681681: ConcatStr
  loc_681682: CVarStr var_498
  loc_681685: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68168A: FFreeStr var_9C = "": var_1E0 = "": var_1E8 = "": var_1E4 = "": var_1F0 = "": var_338 = "": var_334 = ""
  loc_68169D: FFreeVar var_498 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_210 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = "": var_444 = "": var_464 = ""
  loc_6816E4: FLdI2 var_86
  loc_6816E7: FLdPrThis
  loc_6816E8: VCallAd Control_ID_ListUsuarios
  loc_6816EB: FStAdFunc var_8C
  loc_6816EE: FLdPr var_8C
  loc_6816F1: Me.ListIndex = from_stack_1
  loc_6816F6: FFree1Ad var_8C
  loc_6816F9: ExitProcHresult
  loc_6816FA: FLdRfVar var_8E
  loc_6816FD: FLdPrThis
  loc_6816FE: VCallAd Control_ID_ListUsuarios
  loc_681701: FStAdFunc var_8C
  loc_681704: FLdPr var_8C
  loc_681707:  = Me.ListIndex
  loc_68170C: FLdI2 var_8E
  loc_68170F: CI4UI1
  loc_681710: FLdRfVar var_90
  loc_681713: FLdPrThis
  loc_681714: VCallAd Control_ID_ListModulos
  loc_681717: FStAdFunc var_94
  loc_68171A: FLdPr var_94
  loc_68171D:  = Me.ListIndex
  loc_681722: FLdI2 var_90
  loc_681725: FLdPrThis
  loc_681726: VCallAd Control_ID_ListModulos
  loc_681729: FStAdFunc var_4EC
  loc_68172C: FLdPr var_4EC
  loc_68172F: Me.ItemData = from_stack_1
  loc_681734: FFreeAd var_8C = "": var_94 = ""
  loc_68173D: ExitProcHresult
End Sub

Private Sub ListUsuarios_GotFocus() '5D8C88
  'Data Table: 415CAC
  loc_5D8C58: LitI4 0
  loc_5D8C5D: FLdPrThis
  loc_5D8C5E: VCallAd Control_ID_lblUsuarios
  loc_5D8C61: FStAdFunc var_88
  loc_5D8C64: FLdPr var_88
  loc_5D8C67: Me.BackColor = from_stack_1
  loc_5D8C6C: FFree1Ad var_88
  loc_5D8C6F: LitI4 &HC00000
  loc_5D8C74: FLdPrThis
  loc_5D8C75: VCallAd Control_ID_lblModulos
  loc_5D8C78: FStAdFunc var_88
  loc_5D8C7B: FLdPr var_88
  loc_5D8C7E: Me.BackColor = from_stack_1
  loc_5D8C83: FFree1Ad var_88
  loc_5D8C86: ExitProcHresult
End Sub

Private Sub sscCancel_UnknownEvent_8 '5D4638
  'Data Table: 415CAC
  loc_5D4618: LitI2_Byte 1
  loc_5D461A: CUI1I2
  loc_5D461C: ImpAdStUI1 MemVar_74BEA5
  loc_5D4620: ILdRf Me
  loc_5D4623: FStAdNoPop
  loc_5D4627: ImpAdLdRf MemVar_7520D4
  loc_5D462A: NewIfNullPr Global
  loc_5D462D: Global.Unload from_stack_1
  loc_5D4632: FFree1Ad var_88
  loc_5D4635: ExitProcHresult
End Sub

Private Function Proc_75_7_5DC404(arg_C) '5DC404
  'Data Table: 415CAC
  loc_5DC3BC: LitI2_Byte 1
  loc_5DC3BE: FStI2 var_88
  loc_5DC3C1: FLdI2 var_88
  loc_5DC3C4: FLdRfVar var_8A
  loc_5DC3C7: ImpAdLdRf MemVar_74A21C
  loc_5DC3CA: NewIfNullPr clsSecurity
  loc_5DC3CD:  = Forms
  loc_5DC3D2: FLdI2 var_8A
  loc_5DC3D5: LtI2
  loc_5DC3D6: FLdI2 var_88
  loc_5DC3D9: CI4UI1
  loc_5DC3DA: FLdPr Me
  loc_5DC3DD: MemLdStr global_60
  loc_5DC3E0: Ary1LdI2
  loc_5DC3E1: FLdI2 arg_C
  loc_5DC3E4: NeI2
  loc_5DC3E5: AndI4
  loc_5DC3E6: BranchF loc_5DC3F5
  loc_5DC3E9: FLdI2 var_88
  loc_5DC3EC: LitI2_Byte 1
  loc_5DC3EE: AddI2
  loc_5DC3EF: FStI2 var_88
  loc_5DC3F2: Branch loc_5DC3C1
  loc_5DC3F5: FLdI2 var_88
  loc_5DC3F8: FStI2 var_86
  loc_5DC3FB: ExitProcCbHresult
End Function

Private Function Proc_75_8_5DFA9C() '5DFA9C
  'Data Table: 415CAC
  loc_5DFA48: LitI2_Byte 1
  loc_5DFA4A: FLdRfVar var_86
  loc_5DFA4D: FLdRfVar var_88
  loc_5DFA50: ImpAdLdRf MemVar_74A21C
  loc_5DFA53: NewIfNullPr clsSecurity
  loc_5DFA56:  = Forms
  loc_5DFA5B: FLdI2 var_88
  loc_5DFA5E: ForI2 var_8C
  loc_5DFA64: FLdRfVar var_90
  loc_5DFA67: FLdRfVar var_86
  loc_5DFA6A: ImpAdLdRf MemVar_74A21C
  loc_5DFA6D: NewIfNullPr clsSecurity
  loc_5DFA70: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5DFA75: FLdRfVar var_88
  loc_5DFA78: ILdRf var_90
  loc_5DFA7B: from_stack_2v = Proc_75_9_5EBF60(from_stack_1v)
  loc_5DFA80: FLdI2 var_88
  loc_5DFA83: FLdI2 var_86
  loc_5DFA86: CI4UI1
  loc_5DFA87: FLdPr Me
  loc_5DFA8A: MemLdStr global_60
  loc_5DFA8D: Ary1StI2
  loc_5DFA8E: FFree1Str var_90
  loc_5DFA91: FLdRfVar var_86
  loc_5DFA94: NextI2 var_8C, loc_5DFA64
  loc_5DFA99: ExitProcHresult
End Function

Private Function Proc_75_9_5EBF60(arg_C) '5EBF60
  'Data Table: 415CAC
  loc_5EBED8: ILdRf arg_C
  loc_5EBEDB: FStStrCopy var_8C
  loc_5EBEDE: LitI2_Byte 0
  loc_5EBEE0: FStI2 var_8E
  loc_5EBEE3: FLdI2 var_8E
  loc_5EBEE6: FLdRfVar var_96
  loc_5EBEE9: FLdPrThis
  loc_5EBEEA: VCallAd Control_ID_ListModulos
  loc_5EBEED: FStAdFunc var_94
  loc_5EBEF0: FLdPr var_94
  loc_5EBEF3:  = Me.ListCount
  loc_5EBEF8: FLdI2 var_96
  loc_5EBEFB: LtI2
  loc_5EBEFC: FFree1Ad var_94
  loc_5EBEFF: BranchF loc_5EBF55
  loc_5EBF02: FLdI2 var_8E
  loc_5EBF05: FLdPrThis
  loc_5EBF06: VCallAd Control_ID_ListModulos
  loc_5EBF09: FStAdFunc var_94
  loc_5EBF0C: FLdPr var_94
  loc_5EBF0F: Me.ListIndex = from_stack_1
  loc_5EBF14: FFree1Ad var_94
  loc_5EBF17: FLdRfVar var_9C
  loc_5EBF1A: FLdPrThis
  loc_5EBF1B: VCallAd Control_ID_ListModulos
  loc_5EBF1E: FStAdFunc var_94
  loc_5EBF21: FLdPr var_94
  loc_5EBF24:  = Me.Text
  loc_5EBF29: ILdRf var_9C
  loc_5EBF2C: ILdRf var_8C
  loc_5EBF2F: EqStr
  loc_5EBF31: FFree1Str var_9C
  loc_5EBF34: FFree1Ad var_94
  loc_5EBF37: BranchF loc_5EBF49
  loc_5EBF3A: FLdI2 var_8E
  loc_5EBF3D: FStI2 var_86
  loc_5EBF40: ExitProcCbHresult
  loc_5EBF46: Branch loc_5EBF52
  loc_5EBF49: FLdI2 var_8E
  loc_5EBF4C: LitI2_Byte 1
  loc_5EBF4E: AddI2
  loc_5EBF4F: FStI2 var_8E
  loc_5EBF52: Branch loc_5EBEE3
  loc_5EBF55: LitI2_Byte &HFF
  loc_5EBF57: FStI2 var_86
  loc_5EBF5A: ExitProcCbHresult
End Function
