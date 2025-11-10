VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D5300AA003C9CB6}#1.1#0"; "C:\WINDOWS\SysWow64\Comct232.ocx"
Begin VB.Form frmSplash
  BackColor = &H8000000A&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "frmSplash.frx":0000
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 255
  ClientTop = 1410
  ClientWidth = 5355
  ClientHeight = 4770
  Appearance = 0 'Flat
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame1
    Left = 1
    Top = -80
    Width = 5355
    Height = 4515
    TabIndex = 0
    Begin VB.Timer Timer1
      Interval = 2000
      Left = 1920
      Top = 120
    End
    Begin ComCtl2.Animation Animation1
      Left = 1185
      Top = 1455
      Width = 2850
      Height = 2190
      TabIndex = 7
      OleObjectBlob = "frmSplash.frx":0CCA
    End
    Begin VB.Image imgFeature
      Left = 3600
      Top = 240
      Width = 1695
      Height = 735
      Stretch = -1  'True
    End
    Begin VB.Label AnioCopy
      Caption = "1989 - 1999"
      Index = 1
      Left = 480
      Top = 4200
      Width = 975
      Height = 255
      TabIndex = 6
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblCopyright
      Caption = "Copyright:"
      Index = 0
      Left = 480
      Top = 3720
      Width = 735
      Height = 255
      TabIndex = 2
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblCompany
      Caption = "Gilbarco Veeder-Root"
      Left = 480
      Top = 3960
      Width = 1755
      Height = 375
      TabIndex = 1
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblVersion
      Left = 2520
      Top = 360
      Width = 60
      Height = 285
      TabIndex = 3
      AutoSize = -1  'True
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
    Begin VB.Label lblProductName
      Caption = "Controlador de Estación"
      Left = 240
      Top = 960
      Width = 4200
      Height = 435
      TabIndex = 5
      AutoSize = -1  'True
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
    Begin VB.Label lblCompanyProduct
      Caption = "CEM - 44"
      Left = 240
      Top = 480
      Width = 1710
      Height = 480
      TabIndex = 4
      AutoSize = -1  'True
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
  End
  Begin VB.Label lblSplash
    Caption = "Buscando Servicio..."
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 0
    Top = 4470
    Width = 5340
    Height = 285
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "frmSplash"


Private Sub Form_Load() '687A3C
  'Data Table: 421FB8
  loc_687508: LitI4 1
  loc_68750D: CI2I4
  loc_68750E: FLdPr Me
  loc_687511: MemStI2 global_78
  loc_687514: LitI2_Byte 0
  loc_687516: FLdPr Me
  loc_687519: MemStI2 global_80
  loc_68751C: ImpAdCallFPR4 Proc_167_2_5E0240()
  loc_687521: ImpAdLdRf MemVar_74C7CC
  loc_687524: NewIfNullPr clsDict
  loc_687527: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68752C: FLdRfVar var_86
  loc_68752F: ImpAdLdRf MemVar_74C7CC
  loc_687532: NewIfNullRf
  loc_687536: ImpAdLdRf MemVar_74C7D0
  loc_687539: NewIfNullPr clsMsg
  loc_687541: LitI2_Byte 0
  loc_687543: FLdPrThis
  loc_687544: VCallAd Control_ID_Timer1
  loc_687547: FStAdFunc var_8C
  loc_68754A: FLdPr var_8C
  loc_68754D: Me.Enabled = from_stack_1b
  loc_687552: FFree1Ad var_8C
  loc_687555: LitI2_Byte 0
  loc_687557: ImpAdStI2 MemVar_74C7B0
  loc_68755A: FLdRfVar var_90
  loc_68755D: FLdRfVar var_8C
  loc_687560: ImpAdLdRf MemVar_7520D4
  loc_687563: NewIfNullPr Global
  loc_687566:  = Global.App
  loc_68756B: FLdPr var_8C
  loc_68756E:  = App.Title
  loc_687573: FLdRfVar var_1DC
  loc_687576: LitVar_Missing var_1D8
  loc_687579: LitVar_Missing var_1B8
  loc_68757C: LitVar_Missing var_198
  loc_68757F: LitVar_Missing var_178
  loc_687582: LitVar_Missing var_158
  loc_687585: LitVar_Missing var_138
  loc_687588: LitVar_Missing var_118
  loc_68758B: LitVar_Missing var_F8
  loc_68758E: LitVar_Missing var_D8
  loc_687591: LitVar_Missing var_B8
  loc_687594: FLdZeroAd var_90
  loc_687597: PopTmpLdAdStr
  loc_68759B: LitI4 1
  loc_6875A0: PopTmpLdAdStr var_94
  loc_6875A3: LitI2_Byte &H1A
  loc_6875A5: PopTmpLdAd2 var_86
  loc_6875A8: ImpAdLdRf MemVar_74C7D0
  loc_6875AB: NewIfNullPr clsMsg
  loc_6875AE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6875B3: ILdRf var_1DC
  loc_6875B6: FLdPrThis
  loc_6875B7: VCallAd Control_ID_lblProductName
  loc_6875BA: FStAdFunc var_1E0
  loc_6875BD: FLdPr var_1E0
  loc_6875C0: Me.Caption = from_stack_1
  loc_6875C5: FFreeStr var_98 = ""
  loc_6875CC: FFreeAd var_8C = ""
  loc_6875D3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6875EA: FLdRfVar var_98
  loc_6875ED: LitVar_Missing var_1D8
  loc_6875F0: LitVar_Missing var_1B8
  loc_6875F3: LitVar_Missing var_198
  loc_6875F6: LitVar_Missing var_178
  loc_6875F9: LitVar_Missing var_158
  loc_6875FC: LitVar_Missing var_138
  loc_6875FF: LitVar_Missing var_118
  loc_687602: LitVar_Missing var_F8
  loc_687605: LitVar_Missing var_D8
  loc_687608: LitVar_Missing var_B8
  loc_68760B: LitStr "Buscando Servicio..."
  loc_68760E: FStStrCopy var_90
  loc_687611: FLdRfVar var_90
  loc_687614: LitI4 7
  loc_687619: PopTmpLdAdStr var_94
  loc_68761C: LitI2_Byte &H1A
  loc_68761E: PopTmpLdAd2 var_86
  loc_687621: ImpAdLdRf MemVar_74C7D0
  loc_687624: NewIfNullPr clsMsg
  loc_687627: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68762C: ILdRf var_98
  loc_68762F: FLdPrThis
  loc_687630: VCallAd Control_ID_lblSplash
  loc_687633: FStAdFunc var_8C
  loc_687636: FLdPr var_8C
  loc_687639: Me.Caption = from_stack_1
  loc_68763E: FFreeStr var_90 = ""
  loc_687645: FFree1Ad var_8C
  loc_687648: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_68765F: LitI2_Byte 0
  loc_687661: FLdPrThis
  loc_687662: VCallAd Control_ID_Timer1
  loc_687665: FStAdFunc var_8C
  loc_687668: FLdPr var_8C
  loc_68766B: Me.Enabled = from_stack_1b
  loc_687670: FFree1Ad var_8C
  loc_687673: ImpAdCallI2 waveOutGetNumDevs()
  loc_687678: FStR4 var_94
  loc_68767B: SetLastSystemError
  loc_68767C: ILdRf var_94
  loc_68767F: FStR4 var_1E4
  loc_687682: ILdRf var_1E4
  loc_687685: LitI4 0
  loc_68768A: GtI4
  loc_68768B: BranchF loc_687696
  loc_68768E: LitI2_Byte &HFF
  loc_687690: ImpAdStI2 MemVar_74BEA6
  loc_687693: Branch loc_68769B
  loc_687696: LitI2_Byte 0
  loc_687698: ImpAdStI2 MemVar_74BEA6
  loc_68769B: LitStr "4.6.13"
  loc_68769E: ImpAdStStrCopy MemVar_74BF40
  loc_6876A2: LitVarStr var_A8, vbNullString
  loc_6876A7: PopAdLdVar
  loc_6876A8: LitStr "Pipe"
  loc_6876AB: LitStr "Startup"
  loc_6876AE: LitStr "CEM44"
  loc_6876B1: ImpAdCallI2 GetSetting(, , , )
  loc_6876B6: CVarStr var_B8
  loc_6876B9: FLdRfVar var_D8
  loc_6876BC: ImpAdCallFPR4  = Trim()
  loc_6876C1: FLdRfVar var_D8
  loc_6876C4: CStrVarTmp
  loc_6876C5: ImpAdStStr MemVar_74BF90
  loc_6876C9: FFreeVar var_B8 = ""
  loc_6876D0: LitVarI2 var_B8, 3
  loc_6876D5: LitI4 1
  loc_6876DA: ImpAdLdRf MemVar_74BF90
  loc_6876DD: CVarRef
  loc_6876E2: FLdRfVar var_D8
  loc_6876E5: ImpAdCallFPR4  = Mid(, , )
  loc_6876EA: FLdRfVar var_D8
  loc_6876ED: LitVarStr var_E8, "\\."
  loc_6876F2: HardType
  loc_6876F3: EqVarBool
  loc_6876F5: FFreeVar var_B8 = ""
  loc_6876FC: BranchF loc_68775F
  loc_6876FF: FLdRfVar var_B8
  loc_687702: LitStr "PacketId"
  loc_687705: FStStrCopy var_98
  loc_687708: FLdRfVar var_98
  loc_68770B: LitStr "HKEY_LOCAL_MACHINE\SOFTWARE\CEM44"
  loc_68770E: FStStrCopy var_90
  loc_687711: FLdRfVar var_90
  loc_687714: from_stack_3v = GetStringValue(from_stack_1v, from_stack_2v)
  loc_687719: FLdRfVar var_B8
  loc_68771C: CStrVarTmp
  loc_68771D: FStStr var_1E8
  loc_687720: FFreeStr var_90 = ""
  loc_687727: FFree1Var var_B8 = ""
  loc_68772A: FLdRfVar var_90
  loc_68772D: FLdPrThis
  loc_68772E: VCallAd Control_ID_lblVersion
  loc_687731: FStAdFunc var_8C
  loc_687734: FLdPr var_8C
  loc_687737:  = Me.Caption
  loc_68773C: FLdZeroAd var_90
  loc_68773F: CVarStr var_B8
  loc_687742: FLdRfVar var_D8
  loc_687745: ImpAdCallFPR4  = Trim()
  loc_68774A: FLdRfVar var_D8
  loc_68774D: CStrVarTmp
  loc_68774E: ImpAdStStr MemVar_74BF3C
  loc_687752: FFree1Ad var_8C
  loc_687755: FFreeVar var_B8 = ""
  loc_68775C: Branch loc_687818
  loc_68775F: FLdRfVar var_98
  loc_687762: LitVar_Missing var_1D8
  loc_687765: LitVar_Missing var_1B8
  loc_687768: LitVar_Missing var_198
  loc_68776B: LitVar_Missing var_178
  loc_68776E: LitVar_Missing var_158
  loc_687771: LitVar_Missing var_138
  loc_687774: LitVar_Missing var_118
  loc_687777: LitVar_Missing var_F8
  loc_68777A: LitVar_Missing var_D8
  loc_68777D: LitVar_Missing var_B8
  loc_687780: LitStr "Version"
  loc_687783: FStStrCopy var_90
  loc_687786: FLdRfVar var_90
  loc_687789: LitI4 3
  loc_68778E: PopTmpLdAdStr var_94
  loc_687791: LitI2_Byte &H1A
  loc_687793: PopTmpLdAd2 var_86
  loc_687796: ImpAdLdRf MemVar_74C7D0
  loc_687799: NewIfNullPr clsMsg
  loc_68779C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6877A1: ILdRf var_98
  loc_6877A4: LitStr " "
  loc_6877A7: ConcatStr
  loc_6877A8: FStStrNoPop var_1DC
  loc_6877AB: ImpAdLdI4 MemVar_74BF40
  loc_6877AE: ConcatStr
  loc_6877AF: FStStrNoPop var_1EC
  loc_6877B2: FLdPrThis
  loc_6877B3: VCallAd Control_ID_lblVersion
  loc_6877B6: FStAdFunc var_8C
  loc_6877B9: FLdPr var_8C
  loc_6877BC: Me.Caption = from_stack_1
  loc_6877C1: FFreeStr var_90 = "": var_98 = "": var_1DC = ""
  loc_6877CC: FFree1Ad var_8C
  loc_6877CF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6877E6: FLdRfVar var_90
  loc_6877E9: FLdPrThis
  loc_6877EA: VCallAd Control_ID_lblVersion
  loc_6877ED: FStAdFunc var_8C
  loc_6877F0: FLdPr var_8C
  loc_6877F3:  = Me.Caption
  loc_6877F8: FLdZeroAd var_90
  loc_6877FB: CVarStr var_B8
  loc_6877FE: FLdRfVar var_D8
  loc_687801: ImpAdCallFPR4  = Trim()
  loc_687806: FLdRfVar var_D8
  loc_687809: CStrVarTmp
  loc_68780A: ImpAdStStr MemVar_74BF3C
  loc_68780E: FFree1Ad var_8C
  loc_687811: FFreeVar var_B8 = ""
  loc_687818: LitI2_Byte &HFF
  loc_68781A: FLdPrThis
  loc_68781B: VCallAd Control_ID_Timer1
  loc_68781E: FStAdFunc var_8C
  loc_687821: FLdPr var_8C
  loc_687824: Me.Enabled = from_stack_1b
  loc_687829: FFree1Ad var_8C
  loc_68782C: FLdRfVar var_90
  loc_68782F: FLdRfVar var_8C
  loc_687832: ImpAdLdRf MemVar_7520D4
  loc_687835: NewIfNullPr Global
  loc_687838:  = Global.App
  loc_68783D: FLdPr var_8C
  loc_687840:  = App.Path
  loc_687845: ILdRf var_90
  loc_687848: LitStr "\pump.avi"
  loc_68784B: ConcatStr
  loc_68784C: CVarStr var_B8
  loc_68784F: PopAdLdVar
  loc_687850: FLdPrThis
  loc_687851: VCallAd Control_ID_Animation1
  loc_687854: FStAdFunc var_1E0
  loc_687857: FLdPr var_1E0
  loc_68785A: LateIdCall
  loc_687862: FFree1Str var_90
  loc_687865: FFreeAd var_8C = ""
  loc_68786C: FFree1Var var_B8 = ""
  loc_68786F: LitVar_TRUE var_A8
  loc_687872: PopAdLdVar
  loc_687873: FLdPrThis
  loc_687874: VCallAd Control_ID_Animation1
  loc_687877: FStAdFunc var_8C
  loc_68787A: FLdPr var_8C
  loc_68787D: LateIdSt
  loc_687882: FFree1Ad var_8C
  loc_687885: LitVarStr var_A8, "1989 - "
  loc_68788A: FLdRfVar var_B8
  loc_68788D: ImpAdCallFPR4  = Now
  loc_687892: FLdRfVar var_B8
  loc_687895: FLdRfVar var_D8
  loc_687898: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_68789D: FLdRfVar var_D8
  loc_6878A0: ConcatVar var_F8
  loc_6878A4: CStrVarVal var_90
  loc_6878A8: FLdRfVar var_1E0
  loc_6878AB: LitI2_Byte 1
  loc_6878AD: FLdPrThis
  loc_6878AE: VCallAd Control_ID_AnioCopy
  loc_6878B1: FStAdFunc var_8C
  loc_6878B4: FLdPr var_8C
  loc_6878B7: Set from_stack_2 = Me(from_stack_1)
  loc_6878BC: FLdPr var_1E0
  loc_6878BF: Me.Caption = from_stack_1
  loc_6878C4: FFree1Str var_90
  loc_6878C7: FFreeAd var_8C = ""
  loc_6878CE: FFreeVar var_B8 = "": var_D8 = ""
  loc_6878D7: LitI4 0
  loc_6878DC: FStStrCopy var_90
  loc_6878DF: FLdRfVar var_90
  loc_6878E2: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6878E7: FFree1Str var_90
  loc_6878EA: ImpAdLdI4 MemVar_74C7AC
  loc_6878ED: LitStr vbNullString
  loc_6878F0: EqStr
  loc_6878F2: NotI4
  loc_6878F3: BranchF loc_687936
  loc_6878F6: ImpAdLdI4 MemVar_74C7AC
  loc_6878F9: FnLenStr
  loc_6878FA: LitI4 4
  loc_6878FF: SubI4
  loc_687900: CVarI4
  loc_687904: LitI4 4
  loc_687909: ImpAdLdRf MemVar_74C7AC
  loc_68790C: CVarRef
  loc_687911: FLdRfVar var_D8
  loc_687914: ImpAdCallFPR4  = Mid(, , )
  loc_687919: FLdRfVar var_D8
  loc_68791C: LitVarI2 var_E8, 1
  loc_687921: HardType
  loc_687922: EqVarBool
  loc_687924: FFreeVar var_B8 = ""
  loc_68792B: BranchF loc_687933
  loc_68792E: LitI2_Byte &HFF
  loc_687930: ImpAdStI2 MemVar_74C7AA
  loc_687933: Branch loc_687A1C
  loc_687936: FLdRfVar var_B8
  loc_687939: ImpAdCallFPR4  = Date
  loc_68793E: FLdRfVar var_B8
  loc_687941: FLdRfVar var_D8
  loc_687944: ImpAdCallFPR4  = Month()
  loc_687949: FLdRfVar var_D8
  loc_68794C: FnCStrVar
  loc_68794E: CVarStr var_F8
  loc_687951: FLdRfVar var_118
  loc_687954: ImpAdCallFPR4  = Trim()
  loc_687959: FLdRfVar var_118
  loc_68795C: FnLenVar var_138
  loc_687960: LitVarI2 var_A8, 1
  loc_687965: HardType
  loc_687966: EqVarBool
  loc_687968: FFreeVar var_B8 = "": var_D8 = "": var_D8 = "": var_F8 = ""
  loc_687975: BranchF loc_6879D1
  loc_687978: LitVarStr var_A8, "0"
  loc_68797D: FLdRfVar var_B8
  loc_687980: ImpAdCallFPR4  = Date
  loc_687985: FLdRfVar var_B8
  loc_687988: FLdRfVar var_D8
  loc_68798B: ImpAdCallFPR4  = Month()
  loc_687990: FLdRfVar var_D8
  loc_687993: FnCStrVar
  loc_687995: CVarStr var_F8
  loc_687998: FLdRfVar var_118
  loc_68799B: ImpAdCallFPR4  = Trim()
  loc_6879A0: FLdRfVar var_118
  loc_6879A3: ConcatVar var_138
  loc_6879A7: LitVarStr var_C8, "0"
  loc_6879AC: ConcatVar var_158
  loc_6879B0: CStrVarTmp
  loc_6879B1: PopTmpLdAdStr
  loc_6879B5: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_6879BA: FFree1Str var_90
  loc_6879BD: FFreeVar var_B8 = "": var_D8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = ""
  loc_6879CE: Branch loc_687A1C
  loc_6879D1: FLdRfVar var_B8
  loc_6879D4: ImpAdCallFPR4  = Date
  loc_6879D9: FLdRfVar var_B8
  loc_6879DC: FLdRfVar var_D8
  loc_6879DF: ImpAdCallFPR4  = Month()
  loc_6879E4: FLdRfVar var_D8
  loc_6879E7: FnCStrVar
  loc_6879E9: CVarStr var_F8
  loc_6879EC: FLdRfVar var_118
  loc_6879EF: ImpAdCallFPR4  = Trim()
  loc_6879F4: FLdRfVar var_118
  loc_6879F7: LitVarStr var_A8, "0"
  loc_6879FC: ConcatVar var_138
  loc_687A00: CStrVarTmp
  loc_687A01: PopTmpLdAdStr
  loc_687A05: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_687A0A: FFree1Str var_90
  loc_687A0D: FFreeVar var_B8 = "": var_D8 = "": var_D8 = "": var_F8 = "": var_118 = ""
  loc_687A1C: LitI4 0
  loc_687A21: FStStrCopy var_90
  loc_687A24: FLdRfVar var_90
  loc_687A27: ImpAdCallFPR4 Proc_94_6_629E14()
  loc_687A2C: FFree1Str var_90
  loc_687A2F: from_stack_1v = Proc_160_5_5F5C1C()
  loc_687A34: from_stack_1v = Proc_160_4_5E47B8()
  loc_687A39: ExitProcHresult
  loc_687A3A: FnStrComp3
End Sub

Private Sub Timer1_Timer() '5DBBA8
  'Data Table: 421FB8
  loc_5DBB68: ImpAdCallI2 Proc_167_3_5E99D0()
  loc_5DBB6D: BranchF loc_5DBBA1
  loc_5DBB70: LitI2_Byte 0
  loc_5DBB72: FLdPrThis
  loc_5DBB73: VCallAd Control_ID_Timer1
  loc_5DBB76: FStAdFunc var_88
  loc_5DBB79: FLdPr var_88
  loc_5DBB7C: Me.Enabled = from_stack_1b
  loc_5DBB81: FFree1Ad var_88
  loc_5DBB84: LitStr "Consola Remota"
  loc_5DBB87: FLdPrThis
  loc_5DBB88: VCallAd Control_ID_lblSplash
  loc_5DBB8B: FStAdFunc var_88
  loc_5DBB8E: FLdPr var_88
  loc_5DBB91: Me.Caption = from_stack_1
  loc_5DBB96: FFree1Ad var_88
  loc_5DBB99: from_stack_1v = Proc_160_6_5D70C0()
  loc_5DBB9E: Branch loc_5DBBA6
  loc_5DBBA1: from_stack_1v = Proc_160_7_6420E8()
  loc_5DBBA6: ExitProcHresult
End Sub

Public Function GetStringValue(SubKey, Entry) '62C338
  'Data Table: 421FB8
  loc_62C19C: ZeroRetValVar
  loc_62C19E: FLdPr Me
  loc_62C1A1: MemLdRfVar from_stack_1.global_56
  loc_62C1A4: ILdRf SubKey
  loc_62C1A7: from_stack_3v = Proc_160_8_613E10(from_stack_1v, from_stack_2v)
  loc_62C1AC: FLdPr Me
  loc_62C1AF: MemLdStr global_56
  loc_62C1B2: CBoolI4
  loc_62C1B4: BranchF loc_62C332
  loc_62C1B7: FLdPr Me
  loc_62C1BA: MemLdRfVar from_stack_1.global_52
  loc_62C1BD: LitI4 &H20019
  loc_62C1C2: LitI4 0
  loc_62C1C7: ILdI4 SubKey
  loc_62C1CA: FLdRfVar var_98
  loc_62C1CD: CStr2Ansi
  loc_62C1CE: ILdRf var_98
  loc_62C1D1: FLdPr Me
  loc_62C1D4: MemLdStr global_56
  loc_62C1D7: ImpAdCallI2 RegOpenKeyEx(, , , , )
  loc_62C1DC: FStR4 var_9C
  loc_62C1DF: SetLastSystemError
  loc_62C1E0: ILdRf var_98
  loc_62C1E3: ILdRf SubKey
  loc_62C1E6: CStr2Uni
  loc_62C1E8: ILdRf var_9C
  loc_62C1EB: FLdPr Me
  loc_62C1EE: MemStI4 global_60
  loc_62C1F1: FFree1Str var_98
  loc_62C1F4: FLdPr Me
  loc_62C1F7: MemLdStr global_60
  loc_62C1FA: LitI4 0
  loc_62C1FF: EqI4
  loc_62C200: BranchF loc_62C329
  loc_62C203: LitI4 &HFF
  loc_62C208: FLdRfVar var_AC
  loc_62C20B: ImpAdCallFPR4  = Space()
  loc_62C210: FLdRfVar var_AC
  loc_62C213: CStrVarTmp
  loc_62C214: FStStrNoPop var_98
  loc_62C217: FLdPr Me
  loc_62C21A: MemStStrCopy
  loc_62C21E: FFree1Str var_98
  loc_62C221: FFree1Var var_AC = ""
  loc_62C224: FLdPr Me
  loc_62C227: MemLdStr global_68
  loc_62C22A: FnLenStr
  loc_62C22B: FLdPr Me
  loc_62C22E: MemStI4 global_72
  loc_62C231: FLdPr Me
  loc_62C234: MemLdRfVar from_stack_1.global_72
  loc_62C237: FLdPr Me
  loc_62C23A: MemLdStr global_68
  loc_62C23D: FLdRfVar var_B0
  loc_62C240: CStr2Ansi
  loc_62C241: ILdRf var_B0
  loc_62C244: LitI4 1
  loc_62C249: PopTmpLdAdStr var_9C
  loc_62C24C: LitI4 0
  loc_62C251: ILdI4 Entry
  loc_62C254: FLdRfVar var_98
  loc_62C257: CStr2Ansi
  loc_62C258: ILdRf var_98
  loc_62C25B: FLdPr Me
  loc_62C25E: MemLdStr global_52
  loc_62C261: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_62C266: FStR4 var_B4
  loc_62C269: SetLastSystemError
  loc_62C26A: ILdRf var_98
  loc_62C26D: ILdRf Entry
  loc_62C270: CStr2Uni
  loc_62C272: ILdRf var_B0
  loc_62C275: FLdPr Me
  loc_62C278: MemLdRfVar from_stack_1.global_68
  loc_62C27B: CStr2Uni
  loc_62C27D: ILdRf var_B4
  loc_62C280: FLdPr Me
  loc_62C283: MemStI4 global_60
  loc_62C286: FFreeStr var_98 = ""
  loc_62C28D: FLdPr Me
  loc_62C290: MemLdStr global_60
  loc_62C293: LitI4 0
  loc_62C298: EqI4
  loc_62C299: BranchF loc_62C31D
  loc_62C29C: FLdPr Me
  loc_62C29F: MemLdStr global_52
  loc_62C2A2: ImpAdCallI2 RegCloseKey()
  loc_62C2A7: FStR4 var_9C
  loc_62C2AA: SetLastSystemError
  loc_62C2AB: ILdRf var_9C
  loc_62C2AE: FLdPr Me
  loc_62C2B1: MemStI4 global_60
  loc_62C2B4: FLdPr Me
  loc_62C2B7: MemLdRfVar from_stack_1.global_68
  loc_62C2BA: CVarRef
  loc_62C2BF: FLdRfVar var_AC
  loc_62C2C2: ImpAdCallFPR4  = Trim()
  loc_62C2C7: FLdRfVar var_AC
  loc_62C2CA: CStrVarTmp
  loc_62C2CB: FStStrNoPop var_98
  loc_62C2CE: FLdPr Me
  loc_62C2D1: MemStStrCopy
  loc_62C2D5: FFree1Str var_98
  loc_62C2D8: FFree1Var var_AC = ""
  loc_62C2DB: FLdPr Me
  loc_62C2DE: MemLdStr global_68
  loc_62C2E1: FnLenStr
  loc_62C2E2: LitI4 1
  loc_62C2E7: SubI4
  loc_62C2E8: FLdPr Me
  loc_62C2EB: MemLdRfVar from_stack_1.global_68
  loc_62C2EE: CVarRef
  loc_62C2F3: FLdRfVar var_AC
  loc_62C2F6: ImpAdCallFPR4  = Left(, )
  loc_62C2FB: FLdRfVar var_AC
  loc_62C2FE: CStrVarVal var_98
  loc_62C302: FLdPrThis
  loc_62C303: VCallAd Control_ID_lblVersion
  loc_62C306: FStAdFunc var_C8
  loc_62C309: FLdPr var_C8
  loc_62C30C: Me.Caption = from_stack_1
  loc_62C311: FFree1Str var_98
  loc_62C314: FFree1Ad var_C8
  loc_62C317: FFree1Var var_AC = ""
  loc_62C31A: Branch loc_62C326
  loc_62C31D: LitVarStr var_C4, "Error"
  loc_62C322: FStVarCopy
  loc_62C326: Branch loc_62C332
  loc_62C329: LitVarStr var_C4, "Error"
  loc_62C32E: FStVarCopy
  loc_62C332: ExitProcCbHresult
End Function

Public Function GetMainKeyHandle(MainKeyName) '5F1798
  'Data Table: 421FB8
  loc_5F16F4: ILdI4 MainKeyName
  loc_5F16F7: FStStrCopy var_8C
  loc_5F16FA: ILdRf var_8C
  loc_5F16FD: LitStr "HKEY_CLASSES_ROOT"
  loc_5F1700: EqStr
  loc_5F1702: BranchF loc_5F1710
  loc_5F1705: LitI4 -2147483648
  loc_5F170A: FStR4 var_88
  loc_5F170D: Branch loc_5F1791
  loc_5F1710: ILdRf var_8C
  loc_5F1713: LitStr "HKEY_CURRENT_USER"
  loc_5F1716: EqStr
  loc_5F1718: BranchF loc_5F1726
  loc_5F171B: LitI4 -2147483647
  loc_5F1720: FStR4 var_88
  loc_5F1723: Branch loc_5F1791
  loc_5F1726: ILdRf var_8C
  loc_5F1729: LitStr "HKEY_LOCAL_MACHINE"
  loc_5F172C: EqStr
  loc_5F172E: BranchF loc_5F173C
  loc_5F1731: LitI4 -2147483646
  loc_5F1736: FStR4 var_88
  loc_5F1739: Branch loc_5F1791
  loc_5F173C: ILdRf var_8C
  loc_5F173F: LitStr "HKEY_USERS"
  loc_5F1742: EqStr
  loc_5F1744: BranchF loc_5F1752
  loc_5F1747: LitI4 -2147483645
  loc_5F174C: FStR4 var_88
  loc_5F174F: Branch loc_5F1791
  loc_5F1752: ILdRf var_8C
  loc_5F1755: LitStr "HKEY_PERFORMANCE_DATA"
  loc_5F1758: EqStr
  loc_5F175A: BranchF loc_5F1768
  loc_5F175D: LitI4 -2147483644
  loc_5F1762: FStR4 var_88
  loc_5F1765: Branch loc_5F1791
  loc_5F1768: ILdRf var_8C
  loc_5F176B: LitStr "HKEY_CURRENT_CONFIG"
  loc_5F176E: EqStr
  loc_5F1770: BranchF loc_5F177E
  loc_5F1773: LitI4 -2147483643
  loc_5F1778: FStR4 var_88
  loc_5F177B: Branch loc_5F1791
  loc_5F177E: ILdRf var_8C
  loc_5F1781: LitStr "HKEY_DYN_DATA"
  loc_5F1784: EqStr
  loc_5F1786: BranchF loc_5F1791
  loc_5F1789: LitI4 -2147483642
  loc_5F178E: FStR4 var_88
  loc_5F1791: ExitProcCbHresult
End Function

Private Function Proc_160_4_5E47B8() '5E47B8
  'Data Table: 421FB8
  loc_5E475C: OnErrorGoto loc_5E47B6
  loc_5E475F: FLdRfVar var_A0
  loc_5E4762: FLdRfVar var_8C
  loc_5E4765: FLdRfVar var_88
  loc_5E4768: ImpAdLdRf MemVar_7520D4
  loc_5E476B: NewIfNullPr Global
  loc_5E476E:  = Global.App
  loc_5E4773: FLdPr var_88
  loc_5E4776:  = App.Path
  loc_5E477B: ILdRf var_8C
  loc_5E477E: LitStr "\feature.gif"
  loc_5E4781: ConcatStr
  loc_5E4782: CVarStr var_9C
  loc_5E4785: PopAdLdVar
  loc_5E4786: ImpAdLdRf MemVar_7520D4
  loc_5E4789: NewIfNullPr Global
  loc_5E478C: Global.LoadPictureOld from_stack_1
  loc_5E4791: FLdZeroAd var_A0
  loc_5E4794: FStAdFuncNoPop
  loc_5E4797: FLdPrThis
  loc_5E4798: VCallAd Control_ID_imgFeature
  loc_5E479B: FStAdFunc var_A8
  loc_5E479E: FLdPr var_A8
  loc_5E47A1: Me.Picture = from_stack_1
  loc_5E47A6: FFree1Str var_8C
  loc_5E47A9: FFreeAd var_88 = "": var_A4 = ""
  loc_5E47B2: FFree1Var var_9C = ""
  loc_5E47B5: ExitProcHresult
  loc_5E47B6: ExitProcHresult
End Function

Private Function Proc_160_5_5F5C1C() '5F5C1C
  'Data Table: 421FB8
  loc_5F5B7C: LitStr "CEM44.INI"
  loc_5F5B7F: FStStrCopy var_90
  loc_5F5B82: FLdRfVar var_90
  loc_5F5B85: LitStr "Light_Mode"
  loc_5F5B88: FStStrCopy var_8C
  loc_5F5B8B: FLdRfVar var_8C
  loc_5F5B8E: LitStr "REMOTE"
  loc_5F5B91: FStStrCopy var_88
  loc_5F5B94: FLdRfVar var_88
  loc_5F5B97: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5F5B9C: FStStr var_F8
  loc_5F5B9F: LitVar_FALSE
  loc_5F5BA3: LitVar_TRUE var_C4
  loc_5F5BA6: FLdZeroAd var_F8
  loc_5F5BA9: FStStrNoPop var_94
  loc_5F5BAC: LitStr "1"
  loc_5F5BAF: EqStr
  loc_5F5BB1: CVarBoolI2 var_A4
  loc_5F5BB5: FLdRfVar var_F4
  loc_5F5BB8: ImpAdCallFPR4  = IIf(, , )
  loc_5F5BBD: FLdRfVar var_F4
  loc_5F5BC0: CBoolVar
  loc_5F5BC2: ImpAdStI2 MemVar_74C7C2
  loc_5F5BC5: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_5F5BD2: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_5F5BDD: LitStr "CEM44.INI"
  loc_5F5BE0: FStStrCopy var_90
  loc_5F5BE3: FLdRfVar var_90
  loc_5F5BE6: LitStr "TimeToRefresh"
  loc_5F5BE9: FStStrCopy var_8C
  loc_5F5BEC: FLdRfVar var_8C
  loc_5F5BEF: LitStr "REMOTE"
  loc_5F5BF2: FStStrCopy var_88
  loc_5F5BF5: FLdRfVar var_88
  loc_5F5BF8: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5F5BFD: FStStrNoPop var_94
  loc_5F5C00: ImpAdCallFPR4 push Val()
  loc_5F5C05: CI4R8
  loc_5F5C06: ImpAdStR4 MemVar_74C7C4
  loc_5F5C09: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_5F5C14: LitI2_Byte &HFF
  loc_5F5C16: ImpAdStI2 MemVar_74C7C8
  loc_5F5C19: ExitProcHresult
  loc_5F5C1A: FFree1Ad Proc_160_5_5F5C1C000
End Function

Private Function Proc_160_6_5D70C0() '5D70C0
  'Data Table: 421FB8
  loc_5D7094: LitVar_Missing var_A4
  loc_5D7097: PopAdLdVar
  loc_5D7098: LitVar_Missing var_94
  loc_5D709B: PopAdLdVar
  loc_5D709C: ImpAdLdRf MemVar_74C760
  loc_5D709F: NewIfNullPr Formx
  loc_5D70A2: Formx.Show from_stack_1, from_stack_2
  loc_5D70A7: ILdRf Me
  loc_5D70AA: FStAdNoPop
  loc_5D70AE: ImpAdLdRf MemVar_7520D4
  loc_5D70B1: NewIfNullPr Global
  loc_5D70B4: Global.Unload from_stack_1
  loc_5D70B9: FFree1Ad var_A8
  loc_5D70BC: ExitProcHresult
  loc_5D70BD: IStFPR4 arg_1B
End Function

Private Function Proc_160_7_6420E8() '6420E8
  'Data Table: 421FB8
  loc_641EB4: FLdPr Me
  loc_641EB7: MemLdI2 global_80
  loc_641EBA: BranchF loc_641EC3
  loc_641EBD: from_stack_1v = Proc_160_6_5D70C0()
  loc_641EC2: ExitProcHresult
  loc_641EC3: FLdPr Me
  loc_641EC6: MemLdI2 global_78
  loc_641EC9: CI4UI1
  loc_641ECA: LitI4 1
  loc_641ECF: EqI4
  loc_641ED0: BranchF loc_641F8B
  loc_641ED3: LitStr "PUMPSERVICE"
  loc_641ED6: FLdRfVar var_8C
  loc_641ED9: CStr2Ansi
  loc_641EDA: ILdRf var_8C
  loc_641EDD: ImpAdCallI2 ()
  loc_641EE2: FStI2 var_8E
  loc_641EE5: SetLastSystemError
  loc_641EE6: FLdI2 var_8E
  loc_641EE9: FFree1Str var_8C
  loc_641EEC: BranchF loc_641F88
  loc_641EEF: FLdRfVar var_1D8
  loc_641EF2: LitVar_Missing var_1D4
  loc_641EF5: LitVar_Missing var_1B4
  loc_641EF8: LitVar_Missing var_194
  loc_641EFB: LitVar_Missing var_174
  loc_641EFE: LitVar_Missing var_154
  loc_641F01: LitVar_Missing var_134
  loc_641F04: LitVar_Missing var_114
  loc_641F07: LitVar_Missing var_F4
  loc_641F0A: LitVar_Missing var_D4
  loc_641F0D: LitVar_Missing var_B4
  loc_641F10: LitStr "Comprobando Estado Servicio..."
  loc_641F13: FStStrCopy var_8C
  loc_641F16: FLdRfVar var_8C
  loc_641F19: LitI4 4
  loc_641F1E: PopTmpLdAdStr var_94
  loc_641F21: LitI2_Byte &H1A
  loc_641F23: PopTmpLdAd2 var_8E
  loc_641F26: ImpAdLdRf MemVar_74C7D0
  loc_641F29: NewIfNullPr clsMsg
  loc_641F2C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_641F31: ILdRf var_1D8
  loc_641F34: FLdPrThis
  loc_641F35: VCallAd Control_ID_lblSplash
  loc_641F38: FStAdFunc var_1DC
  loc_641F3B: FLdPr var_1DC
  loc_641F3E: Me.Caption = from_stack_1
  loc_641F43: FFreeStr var_8C = ""
  loc_641F4A: FFree1Ad var_1DC
  loc_641F4D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_641F64: LitI4 2
  loc_641F69: CI2I4
  loc_641F6A: FLdPr Me
  loc_641F6D: MemStI2 global_78
  loc_641F70: LitI4 &H3E8
  loc_641F75: FLdPrThis
  loc_641F76: VCallAd Control_ID_Timer1
  loc_641F79: FStAdFunc var_1DC
  loc_641F7C: FLdPr var_1DC
  loc_641F7F: Me.Interval = from_stack_1
  loc_641F84: FFree1Ad var_1DC
  loc_641F87: ExitProcHresult
  loc_641F88: Branch loc_64203D
  loc_641F8B: FLdPr Me
  loc_641F8E: MemLdI2 global_78
  loc_641F91: CI4UI1
  loc_641F92: LitI4 2
  loc_641F97: EqI4
  loc_641F98: BranchF loc_64203D
  loc_641F9B: LitStr "PumpService"
  loc_641F9E: FLdRfVar var_8C
  loc_641FA1: CStr2Ansi
  loc_641FA2: ILdRf var_8C
  loc_641FA5: ImpAdCallI2 ()
  loc_641FAA: FStI2 var_8E
  loc_641FAD: SetLastSystemError
  loc_641FAE: FLdI2 var_8E
  loc_641FB1: FStI2 var_86
  loc_641FB4: FFree1Str var_8C
  loc_641FB7: FLdI2 var_86
  loc_641FBA: LitI2_Byte 0
  loc_641FBC: EqI2
  loc_641FBD: BranchF loc_64203D
  loc_641FC0: FLdRfVar var_1D8
  loc_641FC3: LitVar_Missing var_1D4
  loc_641FC6: LitVar_Missing var_1B4
  loc_641FC9: LitVar_Missing var_194
  loc_641FCC: LitVar_Missing var_174
  loc_641FCF: LitVar_Missing var_154
  loc_641FD2: LitVar_Missing var_134
  loc_641FD5: LitVar_Missing var_114
  loc_641FD8: LitVar_Missing var_F4
  loc_641FDB: LitVar_Missing var_D4
  loc_641FDE: LitVar_Missing var_B4
  loc_641FE1: LitStr "Servicio Iniciado"
  loc_641FE4: FStStrCopy var_8C
  loc_641FE7: FLdRfVar var_8C
  loc_641FEA: LitI4 5
  loc_641FEF: PopTmpLdAdStr var_94
  loc_641FF2: LitI2_Byte &H1A
  loc_641FF4: PopTmpLdAd2 var_8E
  loc_641FF7: ImpAdLdRf MemVar_74C7D0
  loc_641FFA: NewIfNullPr clsMsg
  loc_641FFD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_642002: ILdRf var_1D8
  loc_642005: FLdPrThis
  loc_642006: VCallAd Control_ID_lblSplash
  loc_642009: FStAdFunc var_1DC
  loc_64200C: FLdPr var_1DC
  loc_64200F: Me.Caption = from_stack_1
  loc_642014: FFreeStr var_8C = ""
  loc_64201B: FFree1Ad var_1DC
  loc_64201E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_642035: LitI2_Byte &HFF
  loc_642037: FLdPr Me
  loc_64203A: MemStI2 global_80
  loc_64203D: FLdPr Me
  loc_642040: MemLdI2 global_76
  loc_642043: LitI2_Byte 1
  loc_642045: AddI2
  loc_642046: FLdPr Me
  loc_642049: MemStI2 global_76
  loc_64204C: FLdPr Me
  loc_64204F: MemLdI2 global_76
  loc_642052: LitI2_Byte &HA
  loc_642054: GtI2
  loc_642055: BranchF loc_6420E6
  loc_642058: FLdRfVar var_1D8
  loc_64205B: LitVar_Missing var_1D4
  loc_64205E: LitVar_Missing var_1B4
  loc_642061: LitVar_Missing var_194
  loc_642064: LitVar_Missing var_174
  loc_642067: LitVar_Missing var_154
  loc_64206A: LitVar_Missing var_134
  loc_64206D: LitVar_Missing var_114
  loc_642070: LitVar_Missing var_F4
  loc_642073: LitVar_Missing var_D4
  loc_642076: LitVar_Missing var_B4
  loc_642079: LitStr "Servicio No Iniciado"
  loc_64207C: FStStrCopy var_8C
  loc_64207F: FLdRfVar var_8C
  loc_642082: LitI4 6
  loc_642087: PopTmpLdAdStr var_94
  loc_64208A: LitI2_Byte &H1A
  loc_64208C: PopTmpLdAd2 var_8E
  loc_64208F: ImpAdLdRf MemVar_74C7D0
  loc_642092: NewIfNullPr clsMsg
  loc_642095: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64209A: ILdRf var_1D8
  loc_64209D: FLdPrThis
  loc_64209E: VCallAd Control_ID_lblSplash
  loc_6420A1: FStAdFunc var_1DC
  loc_6420A4: FLdPr var_1DC
  loc_6420A7: Me.Caption = from_stack_1
  loc_6420AC: FFreeStr var_8C = ""
  loc_6420B3: FFree1Ad var_1DC
  loc_6420B6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6420CD: LitI2_Byte 0
  loc_6420CF: FLdPrThis
  loc_6420D0: VCallAd Control_ID_Timer1
  loc_6420D3: FStAdFunc var_1DC
  loc_6420D6: FLdPr var_1DC
  loc_6420D9: Me.Enabled = from_stack_1b
  loc_6420DE: FFree1Ad var_1DC
  loc_6420E1: from_stack_1v = Proc_160_6_5D70C0()
  loc_6420E6: ExitProcHresult
End Function

Private Function Proc_160_8_613E10(arg_C, arg_10) '613E10
  'Data Table: 421FB8
  loc_613D00: LitI4 1
  loc_613D05: ILdI4 arg_C
  loc_613D08: LitStr "\"
  loc_613D0B: LitI4 0
  loc_613D10: FnInStr4
  loc_613D12: FLdPr Me
  loc_613D15: MemStI4 global_60
  loc_613D18: LitI4 5
  loc_613D1D: ILdRf arg_C
  loc_613D20: CVarRef
  loc_613D25: FLdRfVar var_A4
  loc_613D28: ImpAdCallFPR4  = Left(, )
  loc_613D2D: FLdRfVar var_A4
  loc_613D30: LitVarStr var_B4, "HKEY_"
  loc_613D35: HardType
  loc_613D36: NeVar var_C4
  loc_613D3A: LitI4 1
  loc_613D3F: ILdRf arg_C
  loc_613D42: CVarRef
  loc_613D47: FLdRfVar var_E4
  loc_613D4A: ImpAdCallFPR4  = Right(, )
  loc_613D4F: FLdRfVar var_E4
  loc_613D52: LitVarStr var_F4, "\"
  loc_613D57: HardType
  loc_613D58: EqVar var_104
  loc_613D5C: OrVar var_114
  loc_613D60: CBoolVarNull
  loc_613D62: FFreeVar var_A4 = ""
  loc_613D69: BranchF loc_613D84
  loc_613D6C: LitStr "Versión: Error"
  loc_613D6F: FLdPrThis
  loc_613D70: VCallAd Control_ID_lblVersion
  loc_613D73: FStAdFunc var_118
  loc_613D76: FLdPr var_118
  loc_613D79: Me.Caption = from_stack_1
  loc_613D7E: FFree1Ad var_118
  loc_613D81: Branch loc_613E0C
  loc_613D84: FLdPr Me
  loc_613D87: MemLdStr global_60
  loc_613D8A: LitI4 0
  loc_613D8F: EqI4
  loc_613D90: BranchF loc_613DAE
  loc_613D93: FLdRfVar var_11C
  loc_613D96: ILdRf arg_C
  loc_613D99: from_stack_2v = GetMainKeyHandle(from_stack_1v)
  loc_613D9E: ILdRf var_11C
  loc_613DA1: IStI4 arg_10
  loc_613DA4: LitStr vbNullString
  loc_613DA7: IStStrCopy arg_C
  loc_613DAB: Branch loc_613E0C
  loc_613DAE: FLdPr Me
  loc_613DB1: MemLdStr global_60
  loc_613DB4: LitI4 1
  loc_613DB9: SubI4
  loc_613DBA: ILdRf arg_C
  loc_613DBD: CVarRef
  loc_613DC2: FLdRfVar var_A4
  loc_613DC5: ImpAdCallFPR4  = Left(, )
  loc_613DCA: FLdRfVar var_11C
  loc_613DCD: FLdRfVar var_A4
  loc_613DD0: CStrVarTmp
  loc_613DD1: PopTmpLdAdStr
  loc_613DD5: from_stack_2v = GetMainKeyHandle(from_stack_1v)
  loc_613DDA: ILdRf var_11C
  loc_613DDD: IStI4 arg_10
  loc_613DE0: FFree1Str var_120
  loc_613DE3: FFree1Var var_A4 = ""
  loc_613DE6: ILdI4 arg_C
  loc_613DE9: FnLenStr
  loc_613DEA: FLdPr Me
  loc_613DED: MemLdStr global_60
  loc_613DF0: SubI4
  loc_613DF1: ILdRf arg_C
  loc_613DF4: CVarRef
  loc_613DF9: FLdRfVar var_A4
  loc_613DFC: ImpAdCallFPR4  = Right(, )
  loc_613E01: FLdRfVar var_A4
  loc_613E04: CStrVarTmp
  loc_613E05: IStStr
  loc_613E09: FFree1Var var_A4 = ""
  loc_613E0C: ExitProcHresult
End Function
