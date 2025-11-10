VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form AnexoIII
  Caption = "Existencias Diarias"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 840
  ClientTop = 2160
  ClientWidth = 11910
  ClientHeight = 8565
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Moveable = 0   'False
  Begin Threed.SSPanel SSPanel1
    Left = 300
    Top = 300
    Width = 11415
    Height = 6915
    TabIndex = 4
    OleObjectBlob = "AnexoIII.frx":0000
    Begin Threed.SSPanel PanelImpresion
      Left = 2160
      Top = 240
      Width = 8475
      Height = 5295
      Visible = 0   'False
      TabIndex = 6
      OleObjectBlob = "AnexoIII.frx":0079
    End
    Begin MSFlexGridLib.MSFlexGrid Grid1
      Left = 240
      Top = 180
      Width = 10935
      Height = 4395
      TabIndex = 5
      OleObjectBlob = "AnexoIII.frx":00FC
    End
    Begin VB.Label lFechaFinal
      Left = 1800
      Top = 5760
      Width = 5535
      Height = 495
      TabIndex = 10
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
    Begin VB.Label lFechaInicial
      Left = 1800
      Top = 5040
      Width = 5535
      Height = 495
      TabIndex = 9
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
    Begin VB.Label Label2
      Caption = "Fin :"
      Left = 480
      Top = 5760
      Width = 1335
      Height = 495
      TabIndex = 8
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
    Begin VB.Label Label1
      Caption = "Inicio :"
      Left = 480
      Top = 5040
      Width = 1335
      Height = 495
      TabIndex = 7
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
  Begin Threed.SSCommand SSCommand2
    Left = 6120
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 2
    OleObjectBlob = "AnexoIII.frx":01E8
  End
  Begin Threed.SSCommand sscImprimir
    Left = 3360
    Top = 7560
    Width = 2655
    Height = 735
    Visible = 0   'False
    TabIndex = 1
    OleObjectBlob = "AnexoIII.frx":0253
  End
  Begin Threed.SSCommand sscMesSiguiente
    Left = 9120
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 3
    OleObjectBlob = "AnexoIII.frx":02BF
  End
  Begin Threed.SSCommand sscMesAnterior
    Left = 240
    Top = 7560
    Width = 2655
    Height = 735
    TabIndex = 0
    OleObjectBlob = "AnexoIII.frx":0338
  End
End

Attribute VB_Name = "AnexoIII"

'VA: 49B90C
Private Declare Sub HLWrite Lib "pipes"()
'VA: 49B8D4
Private Declare Sub HLRead Lib "pipes"()
'VA: 49B89C
Private Declare Sub HLAvail Lib "pipes"()
'VA: 49B864
Private Declare Sub HLLogout Lib "pipes"()
'VA: 49B828
Private Declare Sub HLLogin Lib "pipes"()
'VA: 4891D8
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
'VA: 48918C
Private Declare Function waveOutGetNumDevs Lib "winmm" () As Long
'VA: 4720BC
Private Declare Function DestroyWindow Lib "user32" (ByVal hwnd As Long) As Long
'VA: 471E88
Private Declare Function BringWindowToTop Lib "user32" (ByVal hwnd As Long) As Long
'VA: 471E44
Private Declare Function CloseWindow Lib "user32" (ByVal hwnd As Long) As Long
'VA: 471E08
Private Declare Function MoveWindow Lib "user32" (ByVal hwnd As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal bRepaint As Long) As Long
'VA: 471DCC
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
'VA: 471D8C
Private Declare Function GetActiveWindow Lib "user32" () As Long
'VA: 471B70
Private Declare Function GetProfileString Lib "kernel32" Alias "GetProfileStringA" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long) As Long
'VA: 46FC34
Private Declare Function WinExec Lib "kernel32" (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long
'VA: 46FBFC
Private Declare Function Shell_NotifyIcon Lib "shell32" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, lpData As NOTIFYICONDATA) As Long
'VA: 46D77C
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
'VA: 46D744
Private Declare Function ShellExecute Lib "shell32" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
'VA: 46D6F4
Private Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
'VA: 46D6AC
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'VA: 46D660
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
'VA: 46D114
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
'VA: 46D0D4
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
'VA: 46D098
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
'VA: 46D054
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 46D000
Private Declare Sub Unknown Lib "consoleutility"()
'VA: 46CFD4
Private Declare Sub Unknown Lib "consoleutility"()
'VA: 46CF90
Private Declare Function SetKeyboardState Lib "user32" (lppbKeyState As Byte) As Long
'VA: 46CF4C
Private Declare Function GetKeyboardState Lib "user32" (pbKeyState As Byte) As Long
'VA: 46CF14
Private Declare Sub ProcessService Lib "pipes"()
'VA: 46CED4
Private Declare Sub QueryService Lib "pipes"()
'VA: 46CE94
Private Declare Sub Unknown Lib "pipes"()
'VA: 46CE68
Private Declare Sub Unknown Lib "pipes"()
'VA: 46CE3C
Private Declare Sub Unknown Lib "pipes"()
'VA: 46CB7C
Private Declare Function GetKeyState Lib "user32" (ByVal nVirtKey As Long) As Integer
'VA: 46CB34
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long


Private Sub sscImprimir_UnknownEvent_8 '69540C
  'Data Table: 422898
  loc_694E2C: OnErrorGoto loc_6952AB
  loc_694E31: LitVarStr var_B4, "Impresion en curso "
  loc_694E36: PopAdLdVar
  loc_694E37: FLdPrThis
  loc_694E38: VCallAd Control_ID_PanelImpresion
  loc_694E3B: FStAdFunc var_B8
  loc_694E3E: FLdPr var_B8
  loc_694E41: LateIdSt
  loc_694E46: FFree1Ad var_B8
  loc_694E4B: LitVar_TRUE var_B4
  loc_694E4E: PopAdLdVar
  loc_694E4F: FLdPrThis
  loc_694E50: VCallAd Control_ID_PanelImpresion
  loc_694E53: FStAdFunc var_B8
  loc_694E56: FLdPr var_B8
  loc_694E59: LateIdSt
  loc_694E5E: FFree1Ad var_B8
  loc_694E63: ImpAdCallFPR4 DoEvents()
  loc_694E6A: FLdRfVar var_BA
  loc_694E6D: FLdRfVar var_8C
  loc_694E70: FLdPr Me
  loc_694E73: MemLdStr global_60
  loc_694E76: FLdRfVar var_B8
  loc_694E79: ImpAdLdRf MemVar_74C760
  loc_694E7C: NewIfNullPr Formx
  loc_694E7F: from_stack_1v = Formx.global_4589716Get()
  loc_694E84: FLdPr var_B8
  loc_694E87: Formx.FontTransparent = from_stack_1b
  loc_694E8C: FLdI2 var_BA
  loc_694E8F: NotI4
  loc_694E90: FFree1Ad var_B8
  loc_694E93: BranchF loc_694ECC
  loc_694E98: FLdRfVar var_CC
  loc_694E9B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_694EA0: FLdRfVar var_CC
  loc_694EA3: CBoolVarNull
  loc_694EA5: FFree1Var var_CC = ""
  loc_694EA8: BranchF loc_694EC5
  loc_694EAD: ILdRf Me
  loc_694EB0: FStAdNoPop
  loc_694EB4: ImpAdLdRf MemVar_7520D4
  loc_694EB7: NewIfNullPr Global
  loc_694EBA: Global.Unload from_stack_1
  loc_694EBF: FFree1Ad var_B8
  loc_694EC4: ExitProcHresult
  loc_694EC9: Branch loc_694E68
  loc_694ECE: LitVar_Missing var_CC
  loc_694ED1: ImpAdCallI2 FreeFile()
  loc_694ED6: CUI1I2
  loc_694ED8: FStUI1 var_86
  loc_694EDC: FFree1Var var_CC = ""
  loc_694EE1: ImpAdCallFPR4 Reset()
  loc_694EE8: FLdRfVar var_D0
  loc_694EEB: FLdRfVar var_B8
  loc_694EEE: ImpAdLdRf MemVar_7520D4
  loc_694EF1: NewIfNullPr Global
  loc_694EF4:  = Global.App
  loc_694EF9: FLdPr var_B8
  loc_694EFC:  = App.Path
  loc_694F01: ILdRf var_D0
  loc_694F04: LitStr "\diaryreport.csv"
  loc_694F07: ConcatStr
  loc_694F08: FStStrNoPop var_D4
  loc_694F0B: FLdUI1
  loc_694F0F: CI2UI1
  loc_694F11: LitI2_Byte &HFF
  loc_694F13: OpenFile
  loc_694F17: FFreeStr var_D0 = ""
  loc_694F1E: FFree1Ad var_B8
  loc_694F23: ILdRf var_8C
  loc_694F26: FLdUI1
  loc_694F2A: CI2UI1
  loc_694F2C: PrintFile
  loc_694F34: FLdUI1
  loc_694F38: CI2UI1
  loc_694F3A: Close
  loc_694F3E: FLdRfVar var_D0
  loc_694F41: FLdRfVar var_B8
  loc_694F44: ImpAdLdRf MemVar_7520D4
  loc_694F47: NewIfNullPr Global
  loc_694F4A:  = Global.App
  loc_694F4F: FLdPr var_B8
  loc_694F52:  = App.Path
  loc_694F57: FLdRfVar var_D4
  loc_694F5A: FLdRfVar var_D8
  loc_694F5D: ImpAdLdRf MemVar_7520D4
  loc_694F60: NewIfNullPr Global
  loc_694F63:  = Global.App
  loc_694F68: FLdPr var_D8
  loc_694F6B:  = App.Path
  loc_694F70: FLdRfVar var_9C
  loc_694F73: FLdRfVar var_A0
  loc_694F76: ILdRf var_D4
  loc_694F79: LitStr "\reporte.mdb"
  loc_694F7C: ConcatStr
  loc_694F7D: PopTmpLdAdStr
  loc_694F81: ILdRf var_D0
  loc_694F84: LitStr "\diaryreport.csv"
  loc_694F87: ConcatStr
  loc_694F88: PopTmpLdAdStr
  loc_694F8C: ImpAdCallI2  = Proc_6_1_68D6FC(, )
  loc_694F91: NotI4
  loc_694F92: FFreeStr var_D0 = "": var_D4 = "": var_DC = ""
  loc_694F9D: FFreeAd var_B8 = ""
  loc_694FA4: BranchF loc_69507A
  loc_694FA9: LitI4 &HD
  loc_694FAE: ImpAdCallI2 Chr$()
  loc_694FB3: FStStr var_138
  loc_694FB6: FLdRfVar var_E4
  loc_694FB9: ImpAdCallI2 Err 'rtcErrObj
  loc_694FBE: FStAdFunc var_B8
  loc_694FC1: FLdPr var_B8
  loc_694FC4:  = Err.Number
  loc_694FC9: FLdRfVar var_EC
  loc_694FCC: ImpAdCallI2 Err 'rtcErrObj
  loc_694FD1: FStAdFunc var_D8
  loc_694FD4: FLdPr var_D8
  loc_694FD7:  = Err.Description
  loc_694FDC: LitVar_Missing var_134
  loc_694FDF: LitVar_Missing var_114
  loc_694FE2: ImpAdLdRf MemVar_74BF24
  loc_694FE5: CVarRef
  loc_694FEA: LitI4 5
  loc_694FEF: LitStr "Error en la conversión de archivos."
  loc_694FF2: FLdZeroAd var_138
  loc_694FF5: FStStrNoPop var_D0
  loc_694FF8: ConcatStr
  loc_694FF9: FStStrNoPop var_D4
  loc_694FFC: LitStr "Error "
  loc_694FFF: ConcatStr
  loc_695000: FStStrNoPop var_DC
  loc_695003: ILdRf var_E4
  loc_695006: CStrI4
  loc_695008: FStStrNoPop var_E0
  loc_69500B: ConcatStr
  loc_69500C: FStStrNoPop var_E8
  loc_69500F: LitStr ". "
  loc_695012: ConcatStr
  loc_695013: FStStrNoPop var_F0
  loc_695016: ILdRf var_EC
  loc_695019: ConcatStr
  loc_69501A: FStStrNoPop var_F4
  loc_69501D: LitStr "."
  loc_695020: ConcatStr
  loc_695021: CVarStr var_CC
  loc_695024: ImpAdCallI2 MsgBox(, , , , )
  loc_695029: LitI4 2
  loc_69502E: EqI4
  loc_69502F: FFreeStr var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E8 = "": var_F0 = "": var_EC = "": var_F4 = ""
  loc_695044: FFreeAd var_B8 = ""
  loc_69504B: FFreeVar var_CC = "": var_114 = ""
  loc_695054: BranchF loc_695073
  loc_695059: LitVar_FALSE
  loc_69505D: PopAdLdVar
  loc_69505E: FLdPrThis
  loc_69505F: VCallAd Control_ID_PanelImpresion
  loc_695062: FStAdFunc var_B8
  loc_695065: FLdPr var_B8
  loc_695068: LateIdSt
  loc_69506D: FFree1Ad var_B8
  loc_695072: ExitProcHresult
  loc_695077: Branch loc_694F3C
  loc_69507C: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_695083: LitVarI4
  loc_69508B: PopAdLdVar
  loc_69508C: ImpAdLdRf MemVar_74C760
  loc_69508F: NewIfNullPr Formx
  loc_695092: VCallAd Control_ID_CrystalReport1
  loc_695095: FStAdFunc var_B8
  loc_695098: FLdPr var_B8
  loc_69509B: LateIdSt
  loc_6950A0: FFree1Ad var_B8
  loc_6950A5: FLdRfVar var_D0
  loc_6950A8: FLdRfVar var_B8
  loc_6950AB: ImpAdLdRf MemVar_7520D4
  loc_6950AE: NewIfNullPr Global
  loc_6950B1:  = Global.App
  loc_6950B6: FLdPr var_B8
  loc_6950B9:  = App.Path
  loc_6950BE: ILdRf var_D0
  loc_6950C1: LitStr "\anexoiii.rpt"
  loc_6950C4: ConcatStr
  loc_6950C5: CVarStr var_CC
  loc_6950C8: PopAdLdVar
  loc_6950C9: ImpAdLdRf MemVar_74C760
  loc_6950CC: NewIfNullPr Formx
  loc_6950CF: VCallAd Control_ID_CrystalReport1
  loc_6950D2: FStAdFunc var_D8
  loc_6950D5: FLdPr var_D8
  loc_6950D8: LateIdSt
  loc_6950DD: FFree1Str var_D0
  loc_6950E0: FFreeAd var_B8 = ""
  loc_6950E7: FFree1Var var_CC = ""
  loc_6950EC: LitVar_FALSE
  loc_6950F0: PopAdLdVar
  loc_6950F1: FLdPrThis
  loc_6950F2: VCallAd Control_ID_txtAviso
  loc_6950F5: FStAdFunc var_B8
  loc_6950F8: FLdPr var_B8
  loc_6950FB: LateIdSt
  loc_695100: FFree1Ad var_B8
  loc_695105: FLdRfVar var_BA
  loc_695108: FLdRfVar var_90
  loc_69510B: FLdRfVar var_B8
  loc_69510E: ImpAdLdRf MemVar_74C760
  loc_695111: NewIfNullPr Formx
  loc_695114: from_stack_1v = Formx.global_4589716Get()
  loc_695119: FLdPr var_B8
  loc_69511C:  = Formx.Picture
  loc_695121: FLdI2 var_BA
  loc_695124: NotI4
  loc_695125: FFree1Ad var_B8
  loc_695128: BranchF loc_695161
  loc_69512D: FLdRfVar var_CC
  loc_695130: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_695135: FLdRfVar var_CC
  loc_695138: CBoolVarNull
  loc_69513A: FFree1Var var_CC = ""
  loc_69513D: BranchF loc_69515A
  loc_695142: ILdRf Me
  loc_695145: FStAdNoPop
  loc_695149: ImpAdLdRf MemVar_7520D4
  loc_69514C: NewIfNullPr Global
  loc_69514F: Global.Unload from_stack_1
  loc_695154: FFree1Ad var_B8
  loc_695159: ExitProcHresult
  loc_69515E: Branch loc_695103
  loc_695163: LitVarI2 var_CC, 30
  loc_695168: LitI4 7
  loc_69516D: FLdRfVar var_90
  loc_695170: CVarRef
  loc_695175: FLdRfVar var_114
  loc_695178: ImpAdCallFPR4  = Mid(, , )
  loc_69517D: FLdRfVar var_114
  loc_695180: FLdRfVar var_134
  loc_695183: ImpAdCallFPR4  = Trim()
  loc_695188: FLdRfVar var_134
  loc_69518B: CStrVarTmp
  loc_69518C: FStStr var_94
  loc_69518F: FFreeVar var_CC = "": var_114 = ""
  loc_69519A: LitVarI2 var_B4, 0
  loc_69519F: PopAdLdVar
  loc_6951A0: LitStr "Razon Social;"
  loc_6951A3: ILdRf var_94
  loc_6951A6: ConcatStr
  loc_6951A7: FStStrNoPop var_D0
  loc_6951AA: LitStr ";true"
  loc_6951AD: ConcatStr
  loc_6951AE: CVarStr var_CC
  loc_6951B1: PopAdLdVar
  loc_6951B2: ImpAdLdRf MemVar_74C760
  loc_6951B5: NewIfNullPr Formx
  loc_6951B8: VCallAd Control_ID_CrystalReport1
  loc_6951BB: FStAdFunc var_B8
  loc_6951BE: FLdPr var_B8
  loc_6951C1: LateIdCallSt
  loc_6951C9: FFree1Str var_D0
  loc_6951CC: FFree1Ad var_B8
  loc_6951CF: FFree1Var var_CC = ""
  loc_6951D4: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6951DB: LitVar_Missing var_158
  loc_6951DE: LitVar_Missing var_134
  loc_6951E1: LitVar_Missing var_114
  loc_6951E4: LitI4 4
  loc_6951E9: LitVarStr var_B4, "Desea Grabar el Reporte Impreso"
  loc_6951EE: FStVarCopyObj var_CC
  loc_6951F1: FLdRfVar var_CC
  loc_6951F4: ImpAdCallI2 MsgBox(, , , , )
  loc_6951F9: LitI4 6
  loc_6951FE: EqI4
  loc_6951FF: FFreeVar var_CC = "": var_114 = "": var_134 = ""
  loc_69520A: BranchF loc_6952A6
  loc_69520F: FLdRfVar var_BA
  loc_695212: FLdRfVar var_96
  loc_695215: FLdPr Me
  loc_695218: MemLdStr global_60
  loc_69521B: FLdRfVar var_B8
  loc_69521E: ImpAdLdRf MemVar_74C760
  loc_695221: NewIfNullPr Formx
  loc_695224: from_stack_1v = Formx.global_4589716Get()
  loc_695229: FLdPr var_B8
  loc_69522C:  = Formx.DrawStyle
  loc_695231: FLdI2 var_BA
  loc_695234: NotI4
  loc_695235: FFree1Ad var_B8
  loc_695238: BranchF loc_6952A6
  loc_69523D: FLdRfVar var_CC
  loc_695240: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_695245: FLdRfVar var_CC
  loc_695248: CBoolVarNull
  loc_69524A: FFree1Var var_CC = ""
  loc_69524D: BranchF loc_69526A
  loc_695252: ILdRf Me
  loc_695255: FStAdNoPop
  loc_695259: ImpAdLdRf MemVar_7520D4
  loc_69525C: NewIfNullPr Global
  loc_69525F: Global.Unload from_stack_1
  loc_695264: FFree1Ad var_B8
  loc_695269: ExitProcHresult
  loc_69526E: FLdI2 var_96
  loc_695271: BranchF loc_69529F
  loc_695276: LitVar_Missing var_158
  loc_695279: LitVar_Missing var_134
  loc_69527C: LitVar_Missing var_114
  loc_69527F: LitI4 0
  loc_695284: LitVarStr var_B4, "El reporte no pudo ser grabado"
  loc_695289: FStVarCopyObj var_CC
  loc_69528C: FLdRfVar var_CC
  loc_69528F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_695294: FFreeVar var_CC = "": var_114 = "": var_134 = ""
  loc_6952A3: Branch loc_69520D
  loc_6952AA: ExitProcHresult
  loc_6952AD: FLdRfVar var_E4
  loc_6952B0: ImpAdCallI2 Err 'rtcErrObj
  loc_6952B5: FStAdFunc var_B8
  loc_6952B8: FLdPr var_B8
  loc_6952BB:  = Err.Number
  loc_6952C0: ILdRf var_E4
  loc_6952C3: FStR4 var_15C
  loc_6952C6: FFree1Ad var_B8
  loc_6952CB: ILdRf var_15C
  loc_6952CE: LitI4 &H501B
  loc_6952D3: EqI4
  loc_6952D4: BranchF loc_695305
  loc_6952D9: LitVar_Missing var_158
  loc_6952DC: LitVar_Missing var_134
  loc_6952DF: LitVar_Missing var_114
  loc_6952E2: LitI4 1
  loc_6952E7: LitVarStr var_B4, "Se ha intentado abrir un archivo inexistente."
  loc_6952EC: FStVarCopyObj var_CC
  loc_6952EF: FLdRfVar var_CC
  loc_6952F2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6952F7: FFreeVar var_CC = "": var_114 = "": var_134 = ""
  loc_695302: Branch loc_695406
  loc_695307: ILdRf var_15C
  loc_69530A: LitI4 &H5028
  loc_69530F: EqI4
  loc_695310: BranchF loc_695341
  loc_695315: LitVar_Missing var_158
  loc_695318: LitVar_Missing var_134
  loc_69531B: LitVar_Missing var_114
  loc_69531E: LitI4 1
  loc_695323: LitVarStr var_B4, "Ya se ha mandado imprimir el reporte. Aguarde a que finalice la impresión."
  loc_695328: FStVarCopyObj var_CC
  loc_69532B: FLdRfVar var_CC
  loc_69532E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_695333: FFreeVar var_CC = "": var_114 = "": var_134 = ""
  loc_69533E: Branch loc_695406
  loc_695345: LitI4 &HD
  loc_69534A: FLdRfVar var_CC
  loc_69534D: ImpAdCallFPR4  = Chr()
  loc_695352: FLdRfVar var_D0
  loc_695355: ImpAdCallI2 Err 'rtcErrObj
  loc_69535A: FStAdFunc var_B8
  loc_69535D: FLdPr var_B8
  loc_695360:  = Err.Description
  loc_695365: FLdRfVar var_E4
  loc_695368: ImpAdCallI2 Err 'rtcErrObj
  loc_69536D: FStAdFunc var_D8
  loc_695370: FLdPr var_D8
  loc_695373:  = Err.Number
  loc_695378: LitVar_Missing var_1CC
  loc_69537B: LitVar_Missing var_1AC
  loc_69537E: LitVarStr var_148, "Error en la impresora"
  loc_695383: FStVarCopyObj var_18C
  loc_695386: FLdRfVar var_18C
  loc_695389: LitI4 &H45
  loc_69538E: LitVarStr var_B4, "Error en impresora. Verifique por favor que haya papel en la impresora y que este en READY."
  loc_695393: FLdRfVar var_CC
  loc_695396: ConcatVar var_114
  loc_69539A: FLdZeroAd var_D0
  loc_69539D: CVarStr var_134
  loc_6953A0: ConcatVar var_158
  loc_6953A4: LitVarStr var_104, " - "
  loc_6953A9: ConcatVar var_16C
  loc_6953AD: ILdRf var_E4
  loc_6953B0: CVarI4
  loc_6953B4: ConcatVar var_17C
  loc_6953B8: ImpAdCallI2 MsgBox(, , , , )
  loc_6953BD: LitI4 4
  loc_6953C2: EqI4
  loc_6953C3: FFreeAd var_B8 = ""
  loc_6953CA: FFreeVar var_CC = "": var_114 = "": var_134 = "": var_158 = "": var_16C = "": var_17C = "": var_18C = "": var_1AC = ""
  loc_6953DF: BranchF loc_6953EB
  loc_6953E4: Resume
  loc_6953E8: Branch loc_695404
  loc_6953EF: ILdRf Me
  loc_6953F2: FStAdNoPop
  loc_6953F6: ImpAdLdRf MemVar_7520D4
  loc_6953F9: NewIfNullPr Global
  loc_6953FC: Global.Unload from_stack_1
  loc_695401: FFree1Ad var_B8
  loc_69540A: ExitProcHresult
  loc_69540B: CStrVarTmp
End Sub

Private Sub sscMesSiguiente_UnknownEvent_8 '5EB040
  'Data Table: 422898
  loc_5EAFBC: FLdPr Me
  loc_5EAFBF: MemLdFPR8 global_80
  loc_5EAFC2: LitI2 365
  loc_5EAFC5: CR8I2
  loc_5EAFC6: AddR8
  loc_5EAFC7: CDateR8
  loc_5EAFC8: FLdPr Me
  loc_5EAFCB: MemStFPR8 global_80
  loc_5EAFCE: FLdPr Me
  loc_5EAFD1: MemLdFPR8 global_72
  loc_5EAFD4: LitI2 365
  loc_5EAFD7: CR8I2
  loc_5EAFD8: AddR8
  loc_5EAFD9: CDateR8
  loc_5EAFDA: FLdPr Me
  loc_5EAFDD: MemStFPR8 global_72
  loc_5EAFE0: FLdPr Me
  loc_5EAFE3: MemLdFPR8 global_72
  loc_5EAFE6: CVarDate var_A4
  loc_5EAFEA: HardType
  loc_5EAFEB: FLdRfVar var_94
  loc_5EAFEE: ImpAdCallFPR4  = Date
  loc_5EAFF3: FLdRfVar var_94
  loc_5EAFF6: GeVarBool
  loc_5EAFF8: FFree1Var var_94 = ""
  loc_5EAFFB: BranchF loc_5EB015
  loc_5EAFFE: LitVar_FALSE
  loc_5EB002: PopAdLdVar
  loc_5EB003: FLdPrThis
  loc_5EB004: VCallAd Control_ID_sscMesSiguiente
  loc_5EB007: FStAdFunc var_B8
  loc_5EB00A: FLdPr var_B8
  loc_5EB00D: LateIdSt
  loc_5EB012: FFree1Ad var_B8
  loc_5EB015: FLdRfVar var_BA
  loc_5EB018: from_stack_1v = Proc_0_11_675D7C()
  loc_5EB01D: Call InicioGrilla()
  loc_5EB022: Call CargaGrilla()
  loc_5EB027: LitVar_TRUE var_A4
  loc_5EB02A: PopAdLdVar
  loc_5EB02B: FLdPrThis
  loc_5EB02C: VCallAd Control_ID_sscMesAnterior
  loc_5EB02F: FStAdFunc var_B8
  loc_5EB032: FLdPr var_B8
  loc_5EB035: LateIdSt
  loc_5EB03A: FFree1Ad var_B8
  loc_5EB03D: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D26D8
  'Data Table: 422898
  loc_5D26C0: ILdRf Me
  loc_5D26C3: FStAdNoPop
  loc_5D26C7: ImpAdLdRf MemVar_7520D4
  loc_5D26CA: NewIfNullPr Global
  loc_5D26CD: Global.Unload from_stack_1
  loc_5D26D2: FFree1Ad var_88
  loc_5D26D5: ExitProcHresult
End Sub

Private Sub sscMesAnterior_UnknownEvent_8 '5EB288
  'Data Table: 422898
  loc_5EB1FC: FLdPr Me
  loc_5EB1FF: MemLdFPR8 global_80
  loc_5EB202: LitI2 365
  loc_5EB205: CR8I2
  loc_5EB206: SubR4
  loc_5EB207: CDateR8
  loc_5EB208: FLdPr Me
  loc_5EB20B: MemStFPR8 global_80
  loc_5EB20E: FLdPr Me
  loc_5EB211: MemLdFPR8 global_72
  loc_5EB214: LitI2 365
  loc_5EB217: CR8I2
  loc_5EB218: SubR4
  loc_5EB219: CDateR8
  loc_5EB21A: FLdPr Me
  loc_5EB21D: MemStFPR8 global_72
  loc_5EB220: FLdRfVar var_86
  loc_5EB223: from_stack_1v = HayDatosAnteriores()
  loc_5EB228: FLdI2 var_86
  loc_5EB22B: BranchF loc_5EB251
  loc_5EB22E: Call InicioGrilla()
  loc_5EB233: Call CargaGrilla()
  loc_5EB238: LitVar_TRUE var_98
  loc_5EB23B: PopAdLdVar
  loc_5EB23C: FLdPrThis
  loc_5EB23D: VCallAd Control_ID_sscMesAnterior
  loc_5EB240: FStAdFunc var_9C
  loc_5EB243: FLdPr var_9C
  loc_5EB246: LateIdSt
  loc_5EB24B: FFree1Ad var_9C
  loc_5EB24E: Branch loc_5EB268
  loc_5EB251: LitVar_FALSE
  loc_5EB255: PopAdLdVar
  loc_5EB256: FLdPrThis
  loc_5EB257: VCallAd Control_ID_sscMesAnterior
  loc_5EB25A: FStAdFunc var_9C
  loc_5EB25D: FLdPr var_9C
  loc_5EB260: LateIdSt
  loc_5EB265: FFree1Ad var_9C
  loc_5EB268: FLdRfVar var_86
  loc_5EB26B: from_stack_1v = Proc_0_11_675D7C()
  loc_5EB270: LitVar_TRUE var_98
  loc_5EB273: PopAdLdVar
  loc_5EB274: FLdPrThis
  loc_5EB275: VCallAd Control_ID_sscMesSiguiente
  loc_5EB278: FStAdFunc var_9C
  loc_5EB27B: FLdPr var_9C
  loc_5EB27E: LateIdSt
  loc_5EB283: FFree1Ad var_9C
  loc_5EB286: ExitProcHresult
End Sub

Private Sub Grid1_UnknownEvent_8 '63EDD4
  'Data Table: 422898
  loc_63EBAC: FLdPrThis
  loc_63EBAD: VCallAd Control_ID_Grid1
  loc_63EBB0: FStAdFunc var_A4
  loc_63EBB3: FLdPr var_A4
  loc_63EBB6: LateIdLdVar var_B4 DispID_12 0
  loc_63EBBD: CI4Var
  loc_63EBBF: LitI4 0
  loc_63EBC4: NeI4
  loc_63EBC5: FFree1Ad var_A4
  loc_63EBC8: FFree1Var var_B4 = ""
  loc_63EBCB: BranchF loc_63EDD0
  loc_63EBCE: LitVarI4
  loc_63EBD6: PopAdLdVar
  loc_63EBD7: FLdPrThis
  loc_63EBD8: VCallAd Control_ID_Grid1
  loc_63EBDB: FStAdFunc var_A4
  loc_63EBDE: FLdPr var_A4
  loc_63EBE1: LateIdSt
  loc_63EBE6: FFree1Ad var_A4
  loc_63EBE9: FLdPrThis
  loc_63EBEA: VCallAd Control_ID_Grid1
  loc_63EBED: FStAdFunc var_A4
  loc_63EBF0: FLdPr var_A4
  loc_63EBF3: LateIdLdVar var_B4 DispID_12 0
  loc_63EBFA: CI4Var
  loc_63EBFC: CVarI4
  loc_63EC00: PopAdLdVar
  loc_63EC01: FLdPrThis
  loc_63EC02: VCallAd Control_ID_Grid1
  loc_63EC05: FStAdFunc var_C8
  loc_63EC08: FLdPr var_C8
  loc_63EC0B: LateIdSt
  loc_63EC10: FFreeAd var_A4 = ""
  loc_63EC17: FFree1Var var_B4 = ""
  loc_63EC1A: LitVarStr var_C4, vbNullString
  loc_63EC1F: FStVarCopy
  loc_63EC23: FLdPr Me
  loc_63EC26: MemLdI2 global_64
  loc_63EC29: BranchF loc_63ECF3
  loc_63EC2C: LitStr vbNullString
  loc_63EC2F: FLdPr Me
  loc_63EC32: MemStStrCopy
  loc_63EC36: LitI2_Byte 0
  loc_63EC38: CUI1I2
  loc_63EC3A: FLdRfVar var_86
  loc_63EC3D: LitI2_Byte 1
  loc_63EC3F: CUI1I2
  loc_63EC41: ForUI1 var_CC
  loc_63EC47: FLdUI1
  loc_63EC4B: CI4UI1
  loc_63EC4C: CVarI4
  loc_63EC50: PopAdLdVar
  loc_63EC51: FLdPrThis
  loc_63EC52: VCallAd Control_ID_Grid1
  loc_63EC55: FStAdFunc var_A4
  loc_63EC58: FLdPr var_A4
  loc_63EC5B: LateIdSt
  loc_63EC60: FFree1Ad var_A4
  loc_63EC63: FLdRfVar var_A0
  loc_63EC66: LitVarStr var_C4, " "
  loc_63EC6B: ConcatVar var_B4
  loc_63EC6F: FLdPrThis
  loc_63EC70: VCallAd Control_ID_Grid1
  loc_63EC73: FStAdFunc var_A4
  loc_63EC76: FLdPr var_A4
  loc_63EC79: LateIdLdVar var_DC DispID_0 0
  loc_63EC80: CStrVarTmp
  loc_63EC81: CVarStr var_EC
  loc_63EC84: ConcatVar var_FC
  loc_63EC88: FStVar var_A0
  loc_63EC8C: FFree1Ad var_A4
  loc_63EC8F: FFreeVar var_DC = "": var_B4 = ""
  loc_63EC98: FLdPr Me
  loc_63EC9B: MemLdStr global_60
  loc_63EC9E: FLdPrThis
  loc_63EC9F: VCallAd Control_ID_Grid1
  loc_63ECA2: FStAdFunc var_A4
  loc_63ECA5: FLdPr var_A4
  loc_63ECA8: LateIdLdVar var_B4 DispID_0 0
  loc_63ECAF: CStrVarTmp
  loc_63ECB0: FStStrNoPop var_100
  loc_63ECB3: ConcatStr
  loc_63ECB4: FStStrNoPop var_104
  loc_63ECB7: FLdPr Me
  loc_63ECBA: MemStStrCopy
  loc_63ECBE: FFreeStr var_100 = ""
  loc_63ECC5: FFree1Ad var_A4
  loc_63ECC8: FFree1Var var_B4 = ""
  loc_63ECCB: FLdRfVar var_86
  loc_63ECCE: NextUI1
  loc_63ECD4: FLdRfVar var_A0
  loc_63ECD7: CStrVarVal var_100
  loc_63ECDB: FLdPrThis
  loc_63ECDC: VCallAd Control_ID_lFechaInicial
  loc_63ECDF: FStAdFunc var_A4
  loc_63ECE2: FLdPr var_A4
  loc_63ECE5: Me.Caption = from_stack_1
  loc_63ECEA: FFree1Str var_100
  loc_63ECED: FFree1Ad var_A4
  loc_63ECF0: Branch loc_63EDC3
  loc_63ECF3: LitI2_Byte 2
  loc_63ECF5: CUI1I2
  loc_63ECF7: FLdRfVar var_86
  loc_63ECFA: LitI2_Byte 3
  loc_63ECFC: CUI1I2
  loc_63ECFE: ForUI1 var_108
  loc_63ED04: FLdUI1
  loc_63ED08: CI4UI1
  loc_63ED09: CVarI4
  loc_63ED0D: PopAdLdVar
  loc_63ED0E: FLdPrThis
  loc_63ED0F: VCallAd Control_ID_Grid1
  loc_63ED12: FStAdFunc var_A4
  loc_63ED15: FLdPr var_A4
  loc_63ED18: LateIdSt
  loc_63ED1D: FFree1Ad var_A4
  loc_63ED20: FLdPr Me
  loc_63ED23: MemLdStr global_60
  loc_63ED26: FLdPrThis
  loc_63ED27: VCallAd Control_ID_Grid1
  loc_63ED2A: FStAdFunc var_A4
  loc_63ED2D: FLdPr var_A4
  loc_63ED30: LateIdLdVar var_B4 DispID_0 0
  loc_63ED37: CStrVarTmp
  loc_63ED38: FStStrNoPop var_100
  loc_63ED3B: ConcatStr
  loc_63ED3C: FStStrNoPop var_104
  loc_63ED3F: FLdPr Me
  loc_63ED42: MemStStrCopy
  loc_63ED46: FFreeStr var_100 = ""
  loc_63ED4D: FFree1Ad var_A4
  loc_63ED50: FFree1Var var_B4 = ""
  loc_63ED53: FLdRfVar var_A0
  loc_63ED56: LitVarStr var_C4, " "
  loc_63ED5B: ConcatVar var_B4
  loc_63ED5F: FLdPrThis
  loc_63ED60: VCallAd Control_ID_Grid1
  loc_63ED63: FStAdFunc var_A4
  loc_63ED66: FLdPr var_A4
  loc_63ED69: LateIdLdVar var_DC DispID_0 0
  loc_63ED70: CStrVarTmp
  loc_63ED71: CVarStr var_EC
  loc_63ED74: ConcatVar var_FC
  loc_63ED78: FStVar var_A0
  loc_63ED7C: FFree1Ad var_A4
  loc_63ED7F: FFreeVar var_DC = "": var_B4 = ""
  loc_63ED88: FLdRfVar var_86
  loc_63ED8B: NextUI1
  loc_63ED91: FLdRfVar var_A0
  loc_63ED94: CStrVarVal var_100
  loc_63ED98: FLdPrThis
  loc_63ED99: VCallAd Control_ID_lFechaFinal
  loc_63ED9C: FStAdFunc var_A4
  loc_63ED9F: FLdPr var_A4
  loc_63EDA2: Me.Caption = from_stack_1
  loc_63EDA7: FFree1Str var_100
  loc_63EDAA: FFree1Ad var_A4
  loc_63EDAD: LitVar_TRUE var_C4
  loc_63EDB0: PopAdLdVar
  loc_63EDB1: FLdPrThis
  loc_63EDB2: VCallAd Control_ID_sscImprimir
  loc_63EDB5: FStAdFunc var_A4
  loc_63EDB8: FLdPr var_A4
  loc_63EDBB: LateIdSt
  loc_63EDC0: FFree1Ad var_A4
  loc_63EDC3: FLdPr Me
  loc_63EDC6: MemLdI2 global_64
  loc_63EDC9: NotI4
  loc_63EDCA: FLdPr Me
  loc_63EDCD: MemStI2 global_64
  loc_63EDD0: ExitProcHresult
End Sub

Private Sub Grid1_Scroll(arg_C, arg_10, arg_14) '651674
  'Data Table: 422898
  loc_6513E8: LitStr vbNullString
  loc_6513EB: FStStrCopy var_88
  loc_6513EE: LitStr vbNullString
  loc_6513F1: FStStrCopy var_8C
  loc_6513F4: LitVarI4
  loc_6513FC: PopAdLdVar
  loc_6513FD: FLdPrThis
  loc_6513FE: VCallAd Control_ID_Grid1
  loc_651401: FStAdFunc var_A0
  loc_651404: FLdPr var_A0
  loc_651407: LateIdSt
  loc_65140C: FFree1Ad var_A0
  loc_65140F: FLdRfVar arg_C
  loc_651412: CDargRef
  loc_651416: FLdPrThis
  loc_651417: VCallAd Control_ID_Grid1
  loc_65141A: FStAdFunc var_A0
  loc_65141D: FLdPr var_A0
  loc_651420: LateIdSt
  loc_651425: FFree1Ad var_A0
  loc_651428: FLdPrThis
  loc_651429: VCallAd Control_ID_Grid1
  loc_65142C: FStAdFunc var_A0
  loc_65142F: FLdPr var_A0
  loc_651432: LateIdLdVar var_B0 DispID_0 0
  loc_651439: PopAd
  loc_65143B: FLdPrThis
  loc_65143C: VCallAd Control_ID_Grid1
  loc_65143F: FStAdFunc var_E4
  loc_651442: FLdPr var_E4
  loc_651445: LateIdLdVar var_F4 DispID_0 0
  loc_65144C: PopAd
  loc_65144E: FLdPrThis
  loc_65144F: VCallAd Control_ID_Grid1
  loc_651452: FStAdFunc var_148
  loc_651455: FLdPr var_148
  loc_651458: LateIdLdVar var_158 DispID_0 0
  loc_65145F: PopAd
  loc_651461: LitVarI2 var_D0, 4
  loc_651466: LitI4 1
  loc_65146B: FLdRfVar var_B0
  loc_65146E: CStrVarTmp
  loc_65146F: CVarStr var_C0
  loc_651472: FLdRfVar var_E0
  loc_651475: ImpAdCallFPR4  = Mid(, , )
  loc_65147A: FLdRfVar var_E0
  loc_65147D: LitVarI2 var_124, 2
  loc_651482: LitI4 6
  loc_651487: FLdRfVar var_F4
  loc_65148A: CStrVarTmp
  loc_65148B: CVarStr var_104
  loc_65148E: FLdRfVar var_134
  loc_651491: ImpAdCallFPR4  = Mid(, , )
  loc_651496: FLdRfVar var_134
  loc_651499: ConcatVar var_144
  loc_65149D: LitVarI2 var_188, 2
  loc_6514A2: LitI4 9
  loc_6514A7: FLdRfVar var_158
  loc_6514AA: CStrVarTmp
  loc_6514AB: CVarStr var_168
  loc_6514AE: FLdRfVar var_198
  loc_6514B1: ImpAdCallFPR4  = Mid(, , )
  loc_6514B6: FLdRfVar var_198
  loc_6514B9: ConcatVar var_1A8
  loc_6514BD: CStrVarTmp
  loc_6514BE: FStStr var_88
  loc_6514C1: FFreeAd var_A0 = "": var_E4 = ""
  loc_6514CA: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = ""
  loc_6514E9: FLdRfVar arg_10
  loc_6514EC: CDargRef
  loc_6514F0: FLdPrThis
  loc_6514F1: VCallAd Control_ID_Grid1
  loc_6514F4: FStAdFunc var_A0
  loc_6514F7: FLdPr var_A0
  loc_6514FA: LateIdSt
  loc_6514FF: FFree1Ad var_A0
  loc_651502: FLdPrThis
  loc_651503: VCallAd Control_ID_Grid1
  loc_651506: FStAdFunc var_A0
  loc_651509: FLdPr var_A0
  loc_65150C: LateIdLdVar var_B0 DispID_0 0
  loc_651513: PopAd
  loc_651515: FLdPrThis
  loc_651516: VCallAd Control_ID_Grid1
  loc_651519: FStAdFunc var_E4
  loc_65151C: FLdPr var_E4
  loc_65151F: LateIdLdVar var_F4 DispID_0 0
  loc_651526: PopAd
  loc_651528: FLdPrThis
  loc_651529: VCallAd Control_ID_Grid1
  loc_65152C: FStAdFunc var_148
  loc_65152F: FLdPr var_148
  loc_651532: LateIdLdVar var_158 DispID_0 0
  loc_651539: PopAd
  loc_65153B: LitVarI2 var_D0, 4
  loc_651540: LitI4 1
  loc_651545: FLdRfVar var_B0
  loc_651548: CStrVarTmp
  loc_651549: CVarStr var_C0
  loc_65154C: FLdRfVar var_E0
  loc_65154F: ImpAdCallFPR4  = Mid(, , )
  loc_651554: FLdRfVar var_E0
  loc_651557: LitVarI2 var_124, 2
  loc_65155C: LitI4 6
  loc_651561: FLdRfVar var_F4
  loc_651564: CStrVarTmp
  loc_651565: CVarStr var_104
  loc_651568: FLdRfVar var_134
  loc_65156B: ImpAdCallFPR4  = Mid(, , )
  loc_651570: FLdRfVar var_134
  loc_651573: ConcatVar var_144
  loc_651577: LitVarI2 var_188, 2
  loc_65157C: LitI4 9
  loc_651581: FLdRfVar var_158
  loc_651584: CStrVarTmp
  loc_651585: CVarStr var_168
  loc_651588: FLdRfVar var_198
  loc_65158B: ImpAdCallFPR4  = Mid(, , )
  loc_651590: FLdRfVar var_198
  loc_651593: ConcatVar var_1A8
  loc_651597: CStrVarTmp
  loc_651598: FStStr var_8C
  loc_65159B: FFreeAd var_A0 = "": var_E4 = ""
  loc_6515A4: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_F4 = "": var_104 = "": var_124 = "": var_E0 = "": var_134 = "": var_158 = "": var_168 = "": var_188 = "": var_144 = "": var_198 = ""
  loc_6515C3: LitVarI4
  loc_6515CB: PopAdLdVar
  loc_6515CC: FLdPrThis
  loc_6515CD: VCallAd Control_ID_Grid1
  loc_6515D0: FStAdFunc var_A0
  loc_6515D3: FLdPr var_A0
  loc_6515D6: LateIdSt
  loc_6515DB: FFree1Ad var_A0
  loc_6515DE: FLdRfVar arg_C
  loc_6515E1: CDargRef
  loc_6515E5: FLdPrThis
  loc_6515E6: VCallAd Control_ID_Grid1
  loc_6515E9: FStAdFunc var_A0
  loc_6515EC: FLdPr var_A0
  loc_6515EF: LateIdSt
  loc_6515F4: FFree1Ad var_A0
  loc_6515F7: ILdRf var_88
  loc_6515FA: FLdPrThis
  loc_6515FB: VCallAd Control_ID_Grid1
  loc_6515FE: FStAdFunc var_A0
  loc_651601: FLdPr var_A0
  loc_651604: LateIdLdVar var_B0 DispID_0 0
  loc_65160B: CStrVarTmp
  loc_65160C: FStStrNoPop var_1AC
  loc_65160F: ConcatStr
  loc_651610: FStStr var_88
  loc_651613: FFree1Str var_1AC
  loc_651616: FFree1Ad var_A0
  loc_651619: FFree1Var var_B0 = ""
  loc_65161C: FLdRfVar arg_10
  loc_65161F: CDargRef
  loc_651623: FLdPrThis
  loc_651624: VCallAd Control_ID_Grid1
  loc_651627: FStAdFunc var_A0
  loc_65162A: FLdPr var_A0
  loc_65162D: LateIdSt
  loc_651632: FFree1Ad var_A0
  loc_651635: ILdRf var_8C
  loc_651638: FLdPrThis
  loc_651639: VCallAd Control_ID_Grid1
  loc_65163C: FStAdFunc var_A0
  loc_65163F: FLdPr var_A0
  loc_651642: LateIdLdVar var_B0 DispID_0 0
  loc_651649: CStrVarTmp
  loc_65164A: FStStrNoPop var_1AC
  loc_65164D: ConcatStr
  loc_65164E: FStStr var_8C
  loc_651651: FFree1Str var_1AC
  loc_651654: FFree1Ad var_A0
  loc_651657: FFree1Var var_B0 = ""
  loc_65165A: ILdRf var_88
  loc_65165D: ILdRf var_8C
  loc_651660: GtStr
  loc_651662: BranchF loc_65166D
  loc_651665: LitI2_Byte &HFF
  loc_651667: IStI2 arg_14
  loc_65166A: Branch loc_651672
  loc_65166D: LitI2_Byte 1
  loc_65166F: IStI2 arg_14
  loc_651672: ExitProcHresult
End Sub

Private Sub Form_Load() '5FB1F4
  'Data Table: 422898
  loc_5FB124: LitI2_Byte 0
  loc_5FB126: CR8I2
  loc_5FB127: PopFPR4
  loc_5FB128: FLdPr Me
  loc_5FB12B: Me.Top = from_stack_1s
  loc_5FB130: LitI2_Byte 0
  loc_5FB132: CR8I2
  loc_5FB133: PopFPR4
  loc_5FB134: FLdPr Me
  loc_5FB137: Me.Left = from_stack_1s
  loc_5FB13C: FLdRfVar var_8C
  loc_5FB13F: FLdRfVar var_88
  loc_5FB142: ImpAdLdRf MemVar_7520D4
  loc_5FB145: NewIfNullPr Global
  loc_5FB148:  = Global.Screen
  loc_5FB14D: FLdPr var_88
  loc_5FB150:  = Screen.TwipsPerPixelX
  loc_5FB155: LitI2 800
  loc_5FB158: CR8I2
  loc_5FB159: FLdFPR4 var_8C
  loc_5FB15C: MulR8
  loc_5FB15D: PopFPR4
  loc_5FB15E: FLdPr Me
  loc_5FB161: Me.Width = from_stack_1s
  loc_5FB166: FFree1Ad var_88
  loc_5FB169: FLdRfVar var_8C
  loc_5FB16C: FLdRfVar var_88
  loc_5FB16F: ImpAdLdRf MemVar_7520D4
  loc_5FB172: NewIfNullPr Global
  loc_5FB175:  = Global.Screen
  loc_5FB17A: FLdPr var_88
  loc_5FB17D:  = Screen.TwipsPerPixelX
  loc_5FB182: LitI2 600
  loc_5FB185: CR8I2
  loc_5FB186: FLdFPR4 var_8C
  loc_5FB189: MulR8
  loc_5FB18A: PopFPR4
  loc_5FB18B: FLdPr Me
  loc_5FB18E: Me.Height = from_stack_1s
  loc_5FB193: FFree1Ad var_88
  loc_5FB196: LitVar_FALSE
  loc_5FB19A: PopAdLdVar
  loc_5FB19B: FLdPrThis
  loc_5FB19C: VCallAd Control_ID_PanelImpresion
  loc_5FB19F: FStAdFunc var_88
  loc_5FB1A2: FLdPr var_88
  loc_5FB1A5: LateIdSt
  loc_5FB1AA: FFree1Ad var_88
  loc_5FB1AD: LitVar_FALSE
  loc_5FB1B1: PopAdLdVar
  loc_5FB1B2: FLdPrThis
  loc_5FB1B3: VCallAd Control_ID_sscImprimir
  loc_5FB1B6: FStAdFunc var_88
  loc_5FB1B9: FLdPr var_88
  loc_5FB1BC: LateIdSt
  loc_5FB1C1: FFree1Ad var_88
  loc_5FB1C4: LitVar_FALSE
  loc_5FB1C8: PopAdLdVar
  loc_5FB1C9: FLdPrThis
  loc_5FB1CA: VCallAd Control_ID_Grid1
  loc_5FB1CD: FStAdFunc var_88
  loc_5FB1D0: FLdPr var_88
  loc_5FB1D3: LateIdSt
  loc_5FB1D8: FFree1Ad var_88
  loc_5FB1DB: LitVar_FALSE
  loc_5FB1DF: PopAdLdVar
  loc_5FB1E0: FLdPrThis
  loc_5FB1E1: VCallAd Control_ID_sscMesSiguiente
  loc_5FB1E4: FStAdFunc var_88
  loc_5FB1E7: FLdPr var_88
  loc_5FB1EA: LateIdSt
  loc_5FB1EF: FFree1Ad var_88
  loc_5FB1F2: ExitProcHresult
End Sub

Private Sub Form_Activate() '60CE24
  'Data Table: 422898
  loc_60CD30: FLdRfVar var_94
  loc_60CD33: ImpAdCallFPR4  = Date
  loc_60CD38: FLdRfVar var_94
  loc_60CD3B: FnCDateVar
  loc_60CD3D: FLdPr Me
  loc_60CD40: MemStFPR8 global_72
  loc_60CD43: FFree1Var var_94 = ""
  loc_60CD46: FLdRfVar var_94
  loc_60CD49: ImpAdCallFPR4  = Date
  loc_60CD4E: FLdRfVar var_94
  loc_60CD51: LitVarI2 var_A4, 365
  loc_60CD56: SubVar var_B4
  loc_60CD5A: FnCDateVar
  loc_60CD5C: FLdPr Me
  loc_60CD5F: MemStFPR8 global_80
  loc_60CD62: FFree1Var var_94 = ""
  loc_60CD65: FLdRfVar var_B6
  loc_60CD68: from_stack_1v = HayDatosAnteriores()
  loc_60CD6D: FLdI2 var_B6
  loc_60CD70: BranchF loc_60CD8C
  loc_60CD73: LitVar_TRUE var_A4
  loc_60CD76: PopAdLdVar
  loc_60CD77: FLdPrThis
  loc_60CD78: VCallAd Control_ID_sscMesAnterior
  loc_60CD7B: FStAdFunc var_BC
  loc_60CD7E: FLdPr var_BC
  loc_60CD81: LateIdSt
  loc_60CD86: FFree1Ad var_BC
  loc_60CD89: Branch loc_60CDA3
  loc_60CD8C: LitVar_FALSE
  loc_60CD90: PopAdLdVar
  loc_60CD91: FLdPrThis
  loc_60CD92: VCallAd Control_ID_sscMesAnterior
  loc_60CD95: FStAdFunc var_BC
  loc_60CD98: FLdPr var_BC
  loc_60CD9B: LateIdSt
  loc_60CDA0: FFree1Ad var_BC
  loc_60CDA3: FLdRfVar var_B6
  loc_60CDA6: from_stack_1v = Proc_0_11_675D7C()
  loc_60CDAB: FLdI2 var_B6
  loc_60CDAE: BranchF loc_60CDD4
  loc_60CDB1: LitVar_TRUE var_A4
  loc_60CDB4: PopAdLdVar
  loc_60CDB5: FLdPrThis
  loc_60CDB6: VCallAd Control_ID_Grid1
  loc_60CDB9: FStAdFunc var_BC
  loc_60CDBC: FLdPr var_BC
  loc_60CDBF: LateIdSt
  loc_60CDC4: FFree1Ad var_BC
  loc_60CDC7: Call InicioGrilla()
  loc_60CDCC: Call CargaGrilla()
  loc_60CDD1: Branch loc_60CE1B
  loc_60CDD4: LitVar_Missing var_10C
  loc_60CDD7: LitVar_Missing var_EC
  loc_60CDDA: LitVarStr var_CC, "Anexo III"
  loc_60CDDF: FStVarCopyObj var_B4
  loc_60CDE2: FLdRfVar var_B4
  loc_60CDE5: LitI4 &H40
  loc_60CDEA: LitVarStr var_A4, "No hay datos para listar."
  loc_60CDEF: FStVarCopyObj var_94
  loc_60CDF2: FLdRfVar var_94
  loc_60CDF5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60CDFA: FFreeVar var_94 = "": var_B4 = "": var_EC = ""
  loc_60CE05: ILdRf Me
  loc_60CE08: FStAdNoPop
  loc_60CE0C: ImpAdLdRf MemVar_7520D4
  loc_60CE0F: NewIfNullPr Global
  loc_60CE12: Global.Unload from_stack_1
  loc_60CE17: FFree1Ad var_BC
  loc_60CE1A: ExitProcHresult
  loc_60CE1B: LitI2_Byte &HFF
  loc_60CE1D: FLdPr Me
  loc_60CE20: MemStI2 global_64
  loc_60CE23: ExitProcHresult
End Sub

Public Sub InicioGrilla() '629A80
  'Data Table: 422898
  loc_6298E8: LitVarI4
  loc_6298F0: PopAdLdVar
  loc_6298F1: FLdPrThis
  loc_6298F2: VCallAd Control_ID_Grid1
  loc_6298F5: FStAdFunc var_98
  loc_6298F8: FLdPr var_98
  loc_6298FB: LateIdSt
  loc_629900: FFree1Ad var_98
  loc_629903: LitVarI4
  loc_62990B: PopAdLdVar
  loc_62990C: FLdPrThis
  loc_62990D: VCallAd Control_ID_Grid1
  loc_629910: FStAdFunc var_98
  loc_629913: FLdPr var_98
  loc_629916: LateIdSt
  loc_62991B: FFree1Ad var_98
  loc_62991E: LitVarI4
  loc_629926: PopAdLdVar
  loc_629927: FLdPrThis
  loc_629928: VCallAd Control_ID_Grid1
  loc_62992B: FStAdFunc var_98
  loc_62992E: FLdPr var_98
  loc_629931: LateIdSt
  loc_629936: FFree1Ad var_98
  loc_629939: LitVarI4
  loc_629941: PopAdLdVar
  loc_629942: LitVar_FALSE
  loc_629946: PopAdLdVar
  loc_629947: FLdPrThis
  loc_629948: VCallAd Control_ID_Grid1
  loc_62994B: FStAdFunc var_98
  loc_62994E: FLdPr var_98
  loc_629951: LateIdCallSt
  loc_629959: FFree1Ad var_98
  loc_62995C: LitVarI4
  loc_629964: PopAdLdVar
  loc_629965: LitVar_FALSE
  loc_629969: PopAdLdVar
  loc_62996A: FLdPrThis
  loc_62996B: VCallAd Control_ID_Grid1
  loc_62996E: FStAdFunc var_98
  loc_629971: FLdPr var_98
  loc_629974: LateIdCallSt
  loc_62997C: FFree1Ad var_98
  loc_62997F: LitVarI4
  loc_629987: PopAdLdVar
  loc_629988: LitVar_FALSE
  loc_62998C: PopAdLdVar
  loc_62998D: FLdPrThis
  loc_62998E: VCallAd Control_ID_Grid1
  loc_629991: FStAdFunc var_98
  loc_629994: FLdPr var_98
  loc_629997: LateIdCallSt
  loc_62999F: FFree1Ad var_98
  loc_6299A2: LitVarI4
  loc_6299AA: PopAdLdVar
  loc_6299AB: LitVarI2 var_A8, 1
  loc_6299B0: PopAdLdVar
  loc_6299B1: FLdPrThis
  loc_6299B2: VCallAd Control_ID_Grid1
  loc_6299B5: FStAdFunc var_98
  loc_6299B8: FLdPr var_98
  loc_6299BB: LateIdCallSt
  loc_6299C3: FFree1Ad var_98
  loc_6299C6: LitVarI4
  loc_6299CE: PopAdLdVar
  loc_6299CF: LitVarI2 var_A8, 1
  loc_6299D4: PopAdLdVar
  loc_6299D5: FLdPrThis
  loc_6299D6: VCallAd Control_ID_Grid1
  loc_6299D9: FStAdFunc var_98
  loc_6299DC: FLdPr var_98
  loc_6299DF: LateIdCallSt
  loc_6299E7: FFree1Ad var_98
  loc_6299EA: LitVarI4
  loc_6299F2: PopAdLdVar
  loc_6299F3: LitVarI2 var_A8, 1
  loc_6299F8: PopAdLdVar
  loc_6299F9: FLdPrThis
  loc_6299FA: VCallAd Control_ID_Grid1
  loc_6299FD: FStAdFunc var_98
  loc_629A00: FLdPr var_98
  loc_629A03: LateIdCallSt
  loc_629A0B: FFree1Ad var_98
  loc_629A0E: LitVarI4
  loc_629A16: PopAdLdVar
  loc_629A17: LitVarI2 var_A8, 1
  loc_629A1C: PopAdLdVar
  loc_629A1D: FLdPrThis
  loc_629A1E: VCallAd Control_ID_Grid1
  loc_629A21: FStAdFunc var_98
  loc_629A24: FLdPr var_98
  loc_629A27: LateIdCallSt
  loc_629A2F: FFree1Ad var_98
  loc_629A32: LitVarStr var_94, "Arial"
  loc_629A37: PopAdLdVar
  loc_629A38: FLdPrThis
  loc_629A39: VCallAd Control_ID_Grid1
  loc_629A3C: FStAdFunc var_98
  loc_629A3F: FLdPr var_98
  loc_629A42: LateIdLdVar var_B8 DispID_-512 -1
  loc_629A49: CastAdVar Me
  loc_629A4D: FStAdFunc var_BC
  loc_629A50: FLdPr var_BC
  loc_629A53: LateIdSt
  loc_629A58: FFreeAd var_98 = ""
  loc_629A5F: FFree1Var var_B8 = ""
  loc_629A62: LitI2_Byte &HE
  loc_629A64: CR8I2
  loc_629A65: CVarR4
  loc_629A69: PopAdLdVar
  loc_629A6A: FLdPrThis
  loc_629A6B: VCallAd Control_ID_Grid1
  loc_629A6E: FStAdFunc var_98
  loc_629A71: FLdPr var_98
  loc_629A74: LateIdSt
  loc_629A79: FFree1Ad var_98
  loc_629A7C: ExitProcHresult
End Sub

Public Sub CargaGrilla() '673480
  'Data Table: 422898
  loc_673070: FLdPrThis
  loc_673071: VCallAd Control_ID_Grid1
  loc_673074: FStAdFunc var_9C
  loc_673077: FLdPr var_9C
  loc_67307A: LateIdCall
  loc_673082: FFree1Ad var_9C
  loc_673085: LitVar_FALSE
  loc_673089: PopAdLdVar
  loc_67308A: FLdPrThis
  loc_67308B: VCallAd Control_ID_Grid1
  loc_67308E: FStAdFunc var_9C
  loc_673091: FLdPr var_9C
  loc_673094: LateIdSt
  loc_673099: FFree1Ad var_9C
  loc_67309C: LitVarStr var_AC, "<    Fecha Apertura     |<   Hora Apertura               |<Fecha Cierre         |<Hora Cierre              "
  loc_6730A1: PopAdLdVar
  loc_6730A2: FLdPrThis
  loc_6730A3: VCallAd Control_ID_Grid1
  loc_6730A6: FStAdFunc var_9C
  loc_6730A9: FLdPr var_9C
  loc_6730AC: LateIdSt
  loc_6730B1: FFree1Ad var_9C
  loc_6730B4: LitVarI4
  loc_6730BC: PopAdLdVar
  loc_6730BD: FLdPrThis
  loc_6730BE: VCallAd Control_ID_Grid1
  loc_6730C1: FStAdFunc var_9C
  loc_6730C4: FLdPr var_9C
  loc_6730C7: LateIdSt
  loc_6730CC: FFree1Ad var_9C
  loc_6730CF: LitVarI4
  loc_6730D7: PopAdLdVar
  loc_6730D8: LitI4 4
  loc_6730DD: CI2I4
  loc_6730DE: CVarI2 var_BC
  loc_6730E1: PopAdLdVar
  loc_6730E2: FLdPrThis
  loc_6730E3: VCallAd Control_ID_Grid1
  loc_6730E6: FStAdFunc var_9C
  loc_6730E9: FLdPr var_9C
  loc_6730EC: LateIdCallSt
  loc_6730F4: FFree1Ad var_9C
  loc_6730F7: LitVarI4
  loc_6730FF: PopAdLdVar
  loc_673100: LitI4 4
  loc_673105: CI2I4
  loc_673106: CVarI2 var_BC
  loc_673109: PopAdLdVar
  loc_67310A: FLdPrThis
  loc_67310B: VCallAd Control_ID_Grid1
  loc_67310E: FStAdFunc var_9C
  loc_673111: FLdPr var_9C
  loc_673114: LateIdCallSt
  loc_67311C: FFree1Ad var_9C
  loc_67311F: LitVarI4
  loc_673127: PopAdLdVar
  loc_673128: LitI4 4
  loc_67312D: CI2I4
  loc_67312E: CVarI2 var_BC
  loc_673131: PopAdLdVar
  loc_673132: FLdPrThis
  loc_673133: VCallAd Control_ID_Grid1
  loc_673136: FStAdFunc var_9C
  loc_673139: FLdPr var_9C
  loc_67313C: LateIdCallSt
  loc_673144: FFree1Ad var_9C
  loc_673147: LitVarI4
  loc_67314F: PopAdLdVar
  loc_673150: LitI4 4
  loc_673155: CI2I4
  loc_673156: CVarI2 var_BC
  loc_673159: PopAdLdVar
  loc_67315A: FLdPrThis
  loc_67315B: VCallAd Control_ID_Grid1
  loc_67315E: FStAdFunc var_9C
  loc_673161: FLdPr var_9C
  loc_673164: LateIdCallSt
  loc_67316C: FFree1Ad var_9C
  loc_67316F: FLdPrThis
  loc_673170: VCallAd Control_ID_sscMesSiguiente
  loc_673173: FStAdFunc var_9C
  loc_673176: FLdPr var_9C
  loc_673179: LateIdLdVar var_CC DispID_7 -32767
  loc_673180: CBoolVar
  loc_673182: LitI2_Byte 0
  loc_673184: EqI2
  loc_673185: FFree1Ad var_9C
  loc_673188: FFree1Var var_CC = ""
  loc_67318B: BranchF loc_67321F
  loc_67318E: LitVarStr var_AC, "PERIODO ACTUAL"
  loc_673193: LitI4 9
  loc_673198: FLdRfVar var_CC
  loc_67319B: ImpAdCallFPR4  = Chr()
  loc_6731A0: FLdRfVar var_CC
  loc_6731A3: ConcatVar var_DC
  loc_6731A7: LitVarStr var_BC, "----"
  loc_6731AC: ConcatVar var_EC
  loc_6731B0: LitI4 9
  loc_6731B5: FLdRfVar var_FC
  loc_6731B8: ImpAdCallFPR4  = Chr()
  loc_6731BD: FLdRfVar var_FC
  loc_6731C0: ConcatVar var_10C
  loc_6731C4: LitVarStr var_11C, "PERIODO ACTUAL"
  loc_6731C9: ConcatVar var_12C
  loc_6731CD: LitI4 9
  loc_6731D2: FLdRfVar var_13C
  loc_6731D5: ImpAdCallFPR4  = Chr()
  loc_6731DA: FLdRfVar var_13C
  loc_6731DD: ConcatVar var_14C
  loc_6731E1: LitVarStr var_15C, "----"
  loc_6731E6: ConcatVar var_16C
  loc_6731EA: CStrVarTmp
  loc_6731EB: FStStr var_98
  loc_6731EE: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = ""
  loc_673203: FLdRfVar var_98
  loc_673206: CDargRef
  loc_67320A: FLdPrThis
  loc_67320B: VCallAd Control_ID_Grid1
  loc_67320E: FStAdFunc var_9C
  loc_673211: FLdPr var_9C
  loc_673214: LateIdCall
  loc_67321C: FFree1Ad var_9C
  loc_67321F: LitI2_Byte 1
  loc_673221: CUI1I2
  loc_673223: FLdRfVar var_88
  loc_673226: FLdPr Me
  loc_673229: MemLdStr global_68
  loc_67322C: LitI2_Byte 1
  loc_67322E: FnUBound
  loc_673230: CUI1I4
  loc_673232: ForUI1 var_170
  loc_673238: FLdUI1
  loc_67323C: CI4UI1
  loc_67323D: FLdPr Me
  loc_673240: MemLdStr global_68
  loc_673243: Ary1LdPr
  loc_673244: MemLdStr global_0
  loc_673247: CVarStr var_AC
  loc_67324A: LitI4 9
  loc_67324F: FLdRfVar var_CC
  loc_673252: ImpAdCallFPR4  = Chr()
  loc_673257: FLdRfVar var_CC
  loc_67325A: ConcatVar var_DC
  loc_67325E: FLdUI1
  loc_673262: CI4UI1
  loc_673263: FLdPr Me
  loc_673266: MemLdStr global_68
  loc_673269: Ary1LdPr
  loc_67326A: MemLdStr global_8
  loc_67326D: CVarStr var_BC
  loc_673270: ConcatVar var_EC
  loc_673274: LitI4 9
  loc_673279: FLdRfVar var_FC
  loc_67327C: ImpAdCallFPR4  = Chr()
  loc_673281: FLdRfVar var_FC
  loc_673284: ConcatVar var_10C
  loc_673288: FLdUI1
  loc_67328C: CI4UI1
  loc_67328D: FLdPr Me
  loc_673290: MemLdStr global_68
  loc_673293: Ary1LdPr
  loc_673294: MemLdStr global_4
  loc_673297: CVarStr var_11C
  loc_67329A: ConcatVar var_12C
  loc_67329E: LitI4 9
  loc_6732A3: FLdRfVar var_13C
  loc_6732A6: ImpAdCallFPR4  = Chr()
  loc_6732AB: FLdRfVar var_13C
  loc_6732AE: ConcatVar var_14C
  loc_6732B2: FLdUI1
  loc_6732B6: CI4UI1
  loc_6732B7: FLdPr Me
  loc_6732BA: MemLdStr global_68
  loc_6732BD: Ary1LdPr
  loc_6732BE: MemLdStr global_12
  loc_6732C1: CVarStr var_15C
  loc_6732C4: ConcatVar var_16C
  loc_6732C8: CStrVarTmp
  loc_6732C9: FStStr var_98
  loc_6732CC: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = ""
  loc_6732E1: FLdRfVar var_98
  loc_6732E4: CDargRef
  loc_6732E8: FLdPrThis
  loc_6732E9: VCallAd Control_ID_Grid1
  loc_6732EC: FStAdFunc var_9C
  loc_6732EF: FLdPr var_9C
  loc_6732F2: LateIdCall
  loc_6732FA: FFree1Ad var_9C
  loc_6732FD: FLdRfVar var_88
  loc_673300: NextUI1
  loc_673306: LitVarI4
  loc_67330E: PopAdLdVar
  loc_67330F: FLdPrThis
  loc_673310: VCallAd Control_ID_Grid1
  loc_673313: FStAdFunc var_9C
  loc_673316: FLdPr var_9C
  loc_673319: LateIdLdVar var_CC DispID_5 -32767
  loc_673320: CR8Var
  loc_673322: LitDate 3
  loc_67332B: LitDate &HA
  loc_673334: DivR8
  loc_673335: MulR8
  loc_673336: CI4R8
  loc_673337: CVarI4
  loc_67333B: PopAdLdVar
  loc_67333C: FLdPrThis
  loc_67333D: VCallAd Control_ID_Grid1
  loc_673340: FStAdFunc var_174
  loc_673343: FLdPr var_174
  loc_673346: LateIdCallSt
  loc_67334E: FFreeAd var_9C = ""
  loc_673355: FFree1Var var_CC = ""
  loc_673358: LitVarI4
  loc_673360: PopAdLdVar
  loc_673361: FLdPrThis
  loc_673362: VCallAd Control_ID_Grid1
  loc_673365: FStAdFunc var_9C
  loc_673368: FLdPr var_9C
  loc_67336B: LateIdLdVar var_CC DispID_5 -32767
  loc_673372: CR8Var
  loc_673374: LitDate 1
  loc_67337D: LitDate 5
  loc_673386: DivR8
  loc_673387: MulR8
  loc_673388: CI4R8
  loc_673389: CVarI4
  loc_67338D: PopAdLdVar
  loc_67338E: FLdPrThis
  loc_67338F: VCallAd Control_ID_Grid1
  loc_673392: FStAdFunc var_174
  loc_673395: FLdPr var_174
  loc_673398: LateIdCallSt
  loc_6733A0: FFreeAd var_9C = ""
  loc_6733A7: FFree1Var var_CC = ""
  loc_6733AA: LitVarI4
  loc_6733B2: PopAdLdVar
  loc_6733B3: FLdPrThis
  loc_6733B4: VCallAd Control_ID_Grid1
  loc_6733B7: FStAdFunc var_9C
  loc_6733BA: FLdPr var_9C
  loc_6733BD: LateIdLdVar var_CC DispID_5 -32767
  loc_6733C4: CR8Var
  loc_6733C6: LitDate 3
  loc_6733CF: LitDate &HA
  loc_6733D8: DivR8
  loc_6733D9: MulR8
  loc_6733DA: CI4R8
  loc_6733DB: CVarI4
  loc_6733DF: PopAdLdVar
  loc_6733E0: FLdPrThis
  loc_6733E1: VCallAd Control_ID_Grid1
  loc_6733E4: FStAdFunc var_174
  loc_6733E7: FLdPr var_174
  loc_6733EA: LateIdCallSt
  loc_6733F2: FFreeAd var_9C = ""
  loc_6733F9: FFree1Var var_CC = ""
  loc_6733FC: LitVarI4
  loc_673404: PopAdLdVar
  loc_673405: FLdPrThis
  loc_673406: VCallAd Control_ID_Grid1
  loc_673409: FStAdFunc var_9C
  loc_67340C: FLdPr var_9C
  loc_67340F: LateIdLdVar var_CC DispID_5 -32767
  loc_673416: CR8Var
  loc_673418: LitDate 1
  loc_673421: LitDate 5
  loc_67342A: DivR8
  loc_67342B: MulR8
  loc_67342C: CI4R8
  loc_67342D: CVarI4
  loc_673431: PopAdLdVar
  loc_673432: FLdPrThis
  loc_673433: VCallAd Control_ID_Grid1
  loc_673436: FStAdFunc var_174
  loc_673439: FLdPr var_174
  loc_67343C: LateIdCallSt
  loc_673444: FFreeAd var_9C = ""
  loc_67344B: FFree1Var var_CC = ""
  loc_67344E: LitVarI2 var_AC, 9
  loc_673453: PopAdLdVar
  loc_673454: FLdPrThis
  loc_673455: VCallAd Control_ID_Grid1
  loc_673458: FStAdFunc var_9C
  loc_67345B: FLdPr var_9C
  loc_67345E: LateIdSt
  loc_673463: FFree1Ad var_9C
  loc_673466: LitVar_TRUE var_AC
  loc_673469: PopAdLdVar
  loc_67346A: FLdPrThis
  loc_67346B: VCallAd Control_ID_Grid1
  loc_67346E: FStAdFunc var_9C
  loc_673471: FLdPr var_9C
  loc_673474: LateIdSt
  loc_673479: FFree1Ad var_9C
  loc_67347C: ExitProcHresult
End Sub

Public Function HayDatosAnteriores() '5E34BC
  'Data Table: 422898
  loc_5E3454: LitI2_Byte 0
  loc_5E3456: FStI2 var_86
  loc_5E3459: FLdPr Me
  loc_5E345C: MemLdFPR8 global_80
  loc_5E345F: LitI2 365
  loc_5E3462: CR8I2
  loc_5E3463: SubR4
  loc_5E3464: CDateR8
  loc_5E3465: FLdPr Me
  loc_5E3468: MemStFPR8 global_80
  loc_5E346B: FLdPr Me
  loc_5E346E: MemLdFPR8 global_72
  loc_5E3471: LitI2 365
  loc_5E3474: CR8I2
  loc_5E3475: SubR4
  loc_5E3476: CDateR8
  loc_5E3477: FLdPr Me
  loc_5E347A: MemStFPR8 global_72
  loc_5E347D: FLdRfVar var_88
  loc_5E3480: from_stack_1v = Proc_0_11_675D7C()
  loc_5E3485: FLdI2 var_88
  loc_5E3488: BranchF loc_5E3490
  loc_5E348B: LitI2_Byte &HFF
  loc_5E348D: FStI2 var_86
  loc_5E3490: FLdPr Me
  loc_5E3493: MemLdFPR8 global_80
  loc_5E3496: LitI2 365
  loc_5E3499: CR8I2
  loc_5E349A: AddR8
  loc_5E349B: CDateR8
  loc_5E349C: FLdPr Me
  loc_5E349F: MemStFPR8 global_80
  loc_5E34A2: FLdPr Me
  loc_5E34A5: MemLdFPR8 global_72
  loc_5E34A8: LitI2 365
  loc_5E34AB: CR8I2
  loc_5E34AC: AddR8
  loc_5E34AD: CDateR8
  loc_5E34AE: FLdPr Me
  loc_5E34B1: MemStFPR8 global_72
  loc_5E34B4: ExitProcCbHresult
End Function

Private Function Proc_0_11_675D7C() '675D7C
  'Data Table: 422898
  loc_67595C: LitI4 1
  loc_675961: LitI4 1
  loc_675966: LitVarStr var_C8, "dd/mm/yyyy"
  loc_67596B: FStVarCopyObj var_D8
  loc_67596E: FLdRfVar var_D8
  loc_675971: FLdPr Me
  loc_675974: MemLdRfVar from_stack_1.global_80
  loc_675977: CVarRef
  loc_67597C: FLdRfVar var_E8
  loc_67597F: ImpAdCallFPR4  = Format(, )
  loc_675984: LitI4 1
  loc_675989: LitI4 1
  loc_67598E: LitVarStr var_12C, "dd/mm/yyyy"
  loc_675993: FStVarCopyObj var_13C
  loc_675996: FLdRfVar var_13C
  loc_675999: FLdPr Me
  loc_67599C: MemLdRfVar from_stack_1.global_80
  loc_67599F: CVarRef
  loc_6759A4: FLdRfVar var_14C
  loc_6759A7: ImpAdCallFPR4  = Format(, )
  loc_6759AC: LitI4 1
  loc_6759B1: LitI4 1
  loc_6759B6: LitVarStr var_198, "dd/mm/yyyy"
  loc_6759BB: FStVarCopyObj var_1A8
  loc_6759BE: FLdRfVar var_1A8
  loc_6759C1: FLdPr Me
  loc_6759C4: MemLdRfVar from_stack_1.global_80
  loc_6759C7: CVarRef
  loc_6759CC: FLdRfVar var_1B8
  loc_6759CF: ImpAdCallFPR4  = Format(, )
  loc_6759D4: LitVarI2 var_10C, 4
  loc_6759D9: LitI4 7
  loc_6759DE: FLdRfVar var_E8
  loc_6759E1: CStrVarVal var_EC
  loc_6759E5: ImpAdCallI2 Mid$(, , )
  loc_6759EA: FStStrNoPop var_174
  loc_6759ED: LitVarI2 var_170, 2
  loc_6759F2: LitI4 4
  loc_6759F7: FLdRfVar var_14C
  loc_6759FA: CStrVarVal var_150
  loc_6759FE: ImpAdCallI2 Mid$(, , )
  loc_675A03: FStStrNoPop var_178
  loc_675A06: ConcatStr
  loc_675A07: FStStrNoPop var_1E0
  loc_675A0A: LitVarI2 var_1DC, 2
  loc_675A0F: LitI4 1
  loc_675A14: FLdRfVar var_1B8
  loc_675A17: CStrVarVal var_1BC
  loc_675A1B: ImpAdCallI2 Mid$(, , )
  loc_675A20: FStStrNoPop var_1E4
  loc_675A23: ConcatStr
  loc_675A24: FStStrNoPop var_1E8
  loc_675A27: LitStr "000000"
  loc_675A2A: ConcatStr
  loc_675A2B: FStStr var_A8
  loc_675A2E: FFreeStr var_EC = "": var_150 = "": var_174 = "": var_178 = "": var_1BC = "": var_1E0 = "": var_1E4 = ""
  loc_675A41: FFreeVar var_D8 = "": var_E8 = "": var_10C = "": var_13C = "": var_14C = "": var_170 = "": var_1A8 = "": var_1B8 = ""
  loc_675A56: LitI4 1
  loc_675A5B: LitI4 1
  loc_675A60: LitVarStr var_C8, "dd/mm/yyyy"
  loc_675A65: FStVarCopyObj var_D8
  loc_675A68: FLdRfVar var_D8
  loc_675A6B: FLdPr Me
  loc_675A6E: MemLdRfVar from_stack_1.global_72
  loc_675A71: CVarRef
  loc_675A76: FLdRfVar var_E8
  loc_675A79: ImpAdCallFPR4  = Format(, )
  loc_675A7E: LitI4 1
  loc_675A83: LitI4 1
  loc_675A88: LitVarStr var_12C, "dd/mm/yyyy"
  loc_675A8D: FStVarCopyObj var_13C
  loc_675A90: FLdRfVar var_13C
  loc_675A93: FLdPr Me
  loc_675A96: MemLdRfVar from_stack_1.global_72
  loc_675A99: CVarRef
  loc_675A9E: FLdRfVar var_14C
  loc_675AA1: ImpAdCallFPR4  = Format(, )
  loc_675AA6: LitI4 1
  loc_675AAB: LitI4 1
  loc_675AB0: LitVarStr var_198, "dd/mm/yyyy"
  loc_675AB5: FStVarCopyObj var_1A8
  loc_675AB8: FLdRfVar var_1A8
  loc_675ABB: FLdPr Me
  loc_675ABE: MemLdRfVar from_stack_1.global_72
  loc_675AC1: CVarRef
  loc_675AC6: FLdRfVar var_1B8
  loc_675AC9: ImpAdCallFPR4  = Format(, )
  loc_675ACE: ILdRf var_A8
  loc_675AD1: LitVarI2 var_10C, 4
  loc_675AD6: LitI4 7
  loc_675ADB: FLdRfVar var_E8
  loc_675ADE: CStrVarVal var_EC
  loc_675AE2: ImpAdCallI2 Mid$(, , )
  loc_675AE7: FStStrNoPop var_150
  loc_675AEA: ConcatStr
  loc_675AEB: FStStrNoPop var_178
  loc_675AEE: LitVarI2 var_170, 2
  loc_675AF3: LitI4 4
  loc_675AF8: FLdRfVar var_14C
  loc_675AFB: CStrVarVal var_174
  loc_675AFF: ImpAdCallI2 Mid$(, , )
  loc_675B04: FStStrNoPop var_1BC
  loc_675B07: ConcatStr
  loc_675B08: FStStrNoPop var_1E4
  loc_675B0B: LitVarI2 var_1DC, 2
  loc_675B10: LitI4 1
  loc_675B15: FLdRfVar var_1B8
  loc_675B18: CStrVarVal var_1E0
  loc_675B1C: ImpAdCallI2 Mid$(, , )
  loc_675B21: FStStrNoPop var_1E8
  loc_675B24: ConcatStr
  loc_675B25: FStStrNoPop var_1EC
  loc_675B28: LitStr "235959"
  loc_675B2B: ConcatStr
  loc_675B2C: FStStr var_A8
  loc_675B2F: FFreeStr var_EC = "": var_150 = "": var_174 = "": var_178 = "": var_1BC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_675B44: FFreeVar var_D8 = "": var_E8 = "": var_10C = "": var_13C = "": var_14C = "": var_170 = "": var_1A8 = "": var_1B8 = ""
  loc_675B59: FLdRfVar var_1F2
  loc_675B5C: FLdRfVar var_8C
  loc_675B5F: FLdRfVar var_A8
  loc_675B62: LitStr "M"
  loc_675B65: FStStrCopy var_EC
  loc_675B68: FLdRfVar var_EC
  loc_675B6B: FLdRfVar var_1F0
  loc_675B6E: ImpAdLdRf MemVar_74C760
  loc_675B71: NewIfNullPr Formx
  loc_675B74: from_stack_1v = Formx.global_4589716Get()
  loc_675B79: FLdPr var_1F0
  loc_675B7C: Formx.FontSize = from_stack_1s
  loc_675B81: FLdI2 var_1F2
  loc_675B84: NotI4
  loc_675B85: FFree1Str var_EC
  loc_675B88: FFree1Ad var_1F0
  loc_675B8B: BranchF loc_675BBF
  loc_675B8E: FLdRfVar var_D8
  loc_675B91: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_675B96: FLdRfVar var_D8
  loc_675B99: CBoolVarNull
  loc_675B9B: FFree1Var var_D8 = ""
  loc_675B9E: BranchF loc_675BBC
  loc_675BA1: ILdRf Me
  loc_675BA4: FStAdNoPop
  loc_675BA8: ImpAdLdRf MemVar_7520D4
  loc_675BAB: NewIfNullPr Global
  loc_675BAE: Global.Unload from_stack_1
  loc_675BB3: FFree1Ad var_1F0
  loc_675BB6: ExitProcCbHresult
  loc_675BBC: Branch loc_675B59
  loc_675BBF: LitI4 1
  loc_675BC4: FStR4 var_A4
  loc_675BC7: LitVarI2 var_B8, 1
  loc_675BCC: FStVar var_9C
  loc_675BD0: LitI4 0
  loc_675BD5: FLdRfVar var_9C
  loc_675BD8: CI4Var
  loc_675BDA: FLdPr Me
  loc_675BDD: MemLdRfVar from_stack_1.global_68
  loc_675BE0: Redim
  loc_675BEA: ILdRf var_8C
  loc_675BED: ImpAdCallFPR4 push Val()
  loc_675BF2: CR8R8
  loc_675BF3: LitI2_Byte 0
  loc_675BF5: CR8I2
  loc_675BF6: EqR4
  loc_675BF7: BranchF loc_675C05
  loc_675BFA: LitI2_Byte 0
  loc_675BFC: FStI2 var_86
  loc_675BFF: ExitProcCbHresult
  loc_675C05: LitI2_Byte &HFF
  loc_675C07: FStI2 var_86
  loc_675C0A: LitVarI2 var_D8, 10
  loc_675C0F: ILdRf var_A4
  loc_675C12: FLdRfVar var_8C
  loc_675C15: CVarRef
  loc_675C1A: FLdRfVar var_E8
  loc_675C1D: ImpAdCallFPR4  = Mid(, , )
  loc_675C22: FLdRfVar var_E8
  loc_675C25: CStrVarTmp
  loc_675C26: FStStrNoPop var_EC
  loc_675C29: FLdRfVar var_9C
  loc_675C2C: CI4Var
  loc_675C2E: FLdPr Me
  loc_675C31: MemLdStr global_68
  loc_675C34: Ary1LdPr
  loc_675C35: MemStStrCopy
  loc_675C39: FFree1Str var_EC
  loc_675C3C: FFreeVar var_D8 = ""
  loc_675C43: ILdRf var_A4
  loc_675C46: LitI4 &HA
  loc_675C4B: AddI4
  loc_675C4C: FStR4 var_A4
  loc_675C4F: LitVarI2 var_D8, 8
  loc_675C54: ILdRf var_A4
  loc_675C57: FLdRfVar var_8C
  loc_675C5A: CVarRef
  loc_675C5F: FLdRfVar var_E8
  loc_675C62: ImpAdCallFPR4  = Mid(, , )
  loc_675C67: FLdRfVar var_E8
  loc_675C6A: CStrVarTmp
  loc_675C6B: FStStrNoPop var_EC
  loc_675C6E: FLdRfVar var_9C
  loc_675C71: CI4Var
  loc_675C73: FLdPr Me
  loc_675C76: MemLdStr global_68
  loc_675C79: Ary1LdPr
  loc_675C7A: MemStStrCopy
  loc_675C7E: FFree1Str var_EC
  loc_675C81: FFreeVar var_D8 = ""
  loc_675C88: ILdRf var_A4
  loc_675C8B: LitI4 8
  loc_675C90: AddI4
  loc_675C91: FStR4 var_A4
  loc_675C94: LitVarI2 var_D8, 10
  loc_675C99: ILdRf var_A4
  loc_675C9C: FLdRfVar var_8C
  loc_675C9F: CVarRef
  loc_675CA4: FLdRfVar var_E8
  loc_675CA7: ImpAdCallFPR4  = Mid(, , )
  loc_675CAC: FLdRfVar var_E8
  loc_675CAF: CStrVarTmp
  loc_675CB0: FStStrNoPop var_EC
  loc_675CB3: FLdRfVar var_9C
  loc_675CB6: CI4Var
  loc_675CB8: FLdPr Me
  loc_675CBB: MemLdStr global_68
  loc_675CBE: Ary1LdPr
  loc_675CBF: MemStStrCopy
  loc_675CC3: FFree1Str var_EC
  loc_675CC6: FFreeVar var_D8 = ""
  loc_675CCD: ILdRf var_A4
  loc_675CD0: LitI4 &HA
  loc_675CD5: AddI4
  loc_675CD6: FStR4 var_A4
  loc_675CD9: LitVarI2 var_D8, 8
  loc_675CDE: ILdRf var_A4
  loc_675CE1: FLdRfVar var_8C
  loc_675CE4: CVarRef
  loc_675CE9: FLdRfVar var_E8
  loc_675CEC: ImpAdCallFPR4  = Mid(, , )
  loc_675CF1: FLdRfVar var_E8
  loc_675CF4: CStrVarTmp
  loc_675CF5: FStStrNoPop var_EC
  loc_675CF8: FLdRfVar var_9C
  loc_675CFB: CI4Var
  loc_675CFD: FLdPr Me
  loc_675D00: MemLdStr global_68
  loc_675D03: Ary1LdPr
  loc_675D04: MemStStrCopy
  loc_675D08: FFree1Str var_EC
  loc_675D0B: FFreeVar var_D8 = ""
  loc_675D12: ILdRf var_A4
  loc_675D15: LitI4 9
  loc_675D1A: AddI4
  loc_675D1B: FStR4 var_A4
  loc_675D1E: FLdRfVar var_9C
  loc_675D21: LitVarI2 var_B8, 1
  loc_675D26: AddVar var_D8
  loc_675D2A: FStVar var_9C
  loc_675D2E: ILdRf var_A4
  loc_675D31: CVarI4
  loc_675D35: HardType
  loc_675D36: FLdRfVar var_8C
  loc_675D39: CVarRef
  loc_675D3E: FLdRfVar var_D8
  loc_675D41: ImpAdCallFPR4  = Trim()
  loc_675D46: FLdRfVar var_D8
  loc_675D49: FnLenVar var_E8
  loc_675D4D: GtVarBool
  loc_675D4F: FFree1Var var_D8 = ""
  loc_675D52: BranchF loc_675D58
  loc_675D55: Branch loc_675D75
  loc_675D58: LitI4 0
  loc_675D5D: FLdRfVar var_9C
  loc_675D60: CI4Var
  loc_675D62: FLdPr Me
  loc_675D65: MemLdRfVar from_stack_1.global_68
  loc_675D68: RedimPreserve
  loc_675D72: Branch loc_675C0A
  loc_675D75: ExitProcCbHresult
End Function
