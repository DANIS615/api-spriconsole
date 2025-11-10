VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form frmAlarmasTanques
  Caption = "Estado de Alarmas"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC0C0C0&
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 7965
  ClientHeight = 6180
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin Threed.SSCommand cmdSalir
    Left = 5280
    Top = 5460
    Width = 2295
    Height = 615
    TabIndex = 2
    OleObjectBlob = "frmAlarmasTanques.frx":0000
  End
  Begin VB.Timer tmrAlarmCounter
    Interval = 250
    Left = 3240
    Top = 0
  End
  Begin Threed.SSCommand cmdHelp
    Left = 420
    Top = 5460
    Width = 2295
    Height = 615
    TabIndex = 1
    OleObjectBlob = "frmAlarmasTanques.frx":0062
  End
  Begin VB.ListBox lstAlarmas
    BackColor = &HC0E0FF&
    ForeColor = &H0&
    Left = 120
    Top = 60
    Width = 7695
    Height = 5280
    TabIndex = 0
    BeginProperty Font
      Name = "Lucida Console"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label txtHelpAlarmas
    Caption = "Label1"
    BackColor = &HFFFFFF&
    Left = 2940
    Top = 5460
    Width = 375
    Height = 615
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    WordWrap = -1  'True
  End
End

Attribute VB_Name = "frmAlarmasTanques"

Public strAlarmaAvisoDeAgua As String
Public strAlarmaNivelDeAguaAlto As String
Public strAlarmaDeReposición As String
Public strAlarmaDeNivelDeSucción As String
Public strAlarmaDeSobrellenado As String
Public strAlarmaDeProductoAlto As String


Private Sub cmdHelp_UnknownEvent_8 '5F0D78
  'Data Table: 40E1E8
  loc_5F0CD4: FLdRfVar var_8A
  loc_5F0CD7: FLdPrThis
  loc_5F0CD8: VCallAd Control_ID_txtHelpAlarmas
  loc_5F0CDB: FStAdFunc var_88
  loc_5F0CDE: FLdPr var_88
  loc_5F0CE1:  = Me.Visible
  loc_5F0CE6: FLdI2 var_8A
  loc_5F0CE9: LitI2_Byte 0
  loc_5F0CEB: EqI2
  loc_5F0CEC: FFree1Ad var_88
  loc_5F0CEF: BranchF loc_5F0D35
  loc_5F0CF2: LitI2_Byte 0
  loc_5F0CF4: FLdPrThis
  loc_5F0CF5: VCallAd Control_ID_lstAlarmas
  loc_5F0CF8: FStAdFunc var_88
  loc_5F0CFB: FLdPr var_88
  loc_5F0CFE: Me.Visible = from_stack_1b
  loc_5F0D03: FFree1Ad var_88
  loc_5F0D06: LitI2_Byte &HFF
  loc_5F0D08: FLdPrThis
  loc_5F0D09: VCallAd Control_ID_txtHelpAlarmas
  loc_5F0D0C: FStAdFunc var_88
  loc_5F0D0F: FLdPr var_88
  loc_5F0D12: Me.Visible = from_stack_1b
  loc_5F0D17: FFree1Ad var_88
  loc_5F0D1A: LitVarStr var_9C, "&Ver alarmas"
  loc_5F0D1F: PopAdLdVar
  loc_5F0D20: FLdPrThis
  loc_5F0D21: VCallAd Control_ID_cmdHelp
  loc_5F0D24: FStAdFunc var_88
  loc_5F0D27: FLdPr var_88
  loc_5F0D2A: LateIdSt
  loc_5F0D2F: FFree1Ad var_88
  loc_5F0D32: Branch loc_5F0D75
  loc_5F0D35: LitI2_Byte &HFF
  loc_5F0D37: FLdPrThis
  loc_5F0D38: VCallAd Control_ID_lstAlarmas
  loc_5F0D3B: FStAdFunc var_88
  loc_5F0D3E: FLdPr var_88
  loc_5F0D41: Me.Visible = from_stack_1b
  loc_5F0D46: FFree1Ad var_88
  loc_5F0D49: LitI2_Byte 0
  loc_5F0D4B: FLdPrThis
  loc_5F0D4C: VCallAd Control_ID_txtHelpAlarmas
  loc_5F0D4F: FStAdFunc var_88
  loc_5F0D52: FLdPr var_88
  loc_5F0D55: Me.Visible = from_stack_1b
  loc_5F0D5A: FFree1Ad var_88
  loc_5F0D5D: LitVarStr var_9C, "&Ayuda"
  loc_5F0D62: PopAdLdVar
  loc_5F0D63: FLdPrThis
  loc_5F0D64: VCallAd Control_ID_cmdHelp
  loc_5F0D67: FStAdFunc var_88
  loc_5F0D6A: FLdPr var_88
  loc_5F0D6D: LateIdSt
  loc_5F0D72: FFree1Ad var_88
  loc_5F0D75: ExitProcHresult
  loc_5F0D76: BranchF loc_5F7CD4
End Sub

Private Sub tmrAlarmCounter_Timer() '5E97BC
  'Data Table: 40E1E8
  loc_5E9730: LitI2_Byte 0
  loc_5E9732: FStI2 var_8A
  loc_5E9735: LitI2_Byte 1
  loc_5E9737: FLdRfVar var_8C
  loc_5E973A: ImpAdLdUI1
  loc_5E973E: CI2UI1
  loc_5E9740: ForI2 var_90
  loc_5E9746: LitI2_Byte 0
  loc_5E9748: FStI2 var_88
  loc_5E974B: LitI2_Byte 0
  loc_5E974D: FLdRfVar var_86
  loc_5E9750: LitI2_Byte &H63
  loc_5E9752: ForI2 var_94
  loc_5E9758: FLdI2 var_8C
  loc_5E975B: CI4UI1
  loc_5E975C: FLdI2 var_86
  loc_5E975F: CI4UI1
  loc_5E9760: ImpAdLdRf MemVar_74A020
  loc_5E9763: AryLdPr
  loc_5E9766: MemLdI2 global_0
  loc_5E9769: LitI2_Byte &HFF
  loc_5E976B: EqI2
  loc_5E976C: BranchF loc_5E9778
  loc_5E976F: FLdI2 var_88
  loc_5E9772: LitI2_Byte 1
  loc_5E9774: AddI2
  loc_5E9775: FStI2 var_88
  loc_5E9778: FLdRfVar var_86
  loc_5E977B: NextI2 var_94, loc_5E9758
  loc_5E9780: FLdI2 var_88
  loc_5E9783: FLdI2 var_8C
  loc_5E9786: CI4UI1
  loc_5E9787: FLdPr Me
  loc_5E978A: MemLdRfVar from_stack_1.global_76
  loc_5E978D: Ary1LdI2
  loc_5E978E: NeI2
  loc_5E978F: BranchF loc_5E97A5
  loc_5E9792: FLdI2 var_88
  loc_5E9795: FLdI2 var_8C
  loc_5E9798: CI4UI1
  loc_5E9799: FLdPr Me
  loc_5E979C: MemLdRfVar from_stack_1.global_76
  loc_5E979F: Ary1StI2
  loc_5E97A0: LitI2_Byte &HFF
  loc_5E97A2: FStI2 var_8A
  loc_5E97A5: FLdRfVar var_8C
  loc_5E97A8: NextI2 var_90, loc_5E9746
  loc_5E97AD: FLdI2 var_8A
  loc_5E97B0: BranchF loc_5E97B8
  loc_5E97B3: from_stack_1v = Proc_62_16_6586CC()
  loc_5E97B8: ExitProcHresult
End Sub

Private Sub Form_Load() '642E0C
  'Data Table: 40E1E8
  loc_642BB4: LitI2_Byte 1
  loc_642BB6: FLdRfVar var_86
  loc_642BB9: LitI2_Byte &H10
  loc_642BBB: ForI2 var_8A
  loc_642BC1: LitI2_Byte &HFF
  loc_642BC3: FLdI2 var_86
  loc_642BC6: CI4UI1
  loc_642BC7: FLdPr Me
  loc_642BCA: MemLdRfVar from_stack_1.global_76
  loc_642BCD: Ary1StI2
  loc_642BCE: FLdRfVar var_86
  loc_642BD1: NextI2 var_8A, loc_642BC1
  loc_642BD6: LitI2_Byte 0
  loc_642BD8: FLdPrThis
  loc_642BD9: VCallAd Control_ID_tmrAlarmCounter
  loc_642BDC: FStAdFunc var_90
  loc_642BDF: FLdPr var_90
  loc_642BE2: Me.Enabled = from_stack_1b
  loc_642BE7: FFree1Ad var_90
  loc_642BEA: Call tmrAlarmCounter_Timer()
  loc_642BEF: LitI2_Byte &HFF
  loc_642BF1: FLdPrThis
  loc_642BF2: VCallAd Control_ID_tmrAlarmCounter
  loc_642BF5: FStAdFunc var_90
  loc_642BF8: FLdPr var_90
  loc_642BFB: Me.Enabled = from_stack_1b
  loc_642C00: FFree1Ad var_90
  loc_642C03: FLdRfVar var_94
  loc_642C06: FLdPrThis
  loc_642C07: VCallAd Control_ID_lstAlarmas
  loc_642C0A: FStAdFunc var_90
  loc_642C0D: FLdPr var_90
  loc_642C10:  = Me.Top
  loc_642C15: ILdRf var_94
  loc_642C18: FLdPrThis
  loc_642C19: VCallAd Control_ID_txtHelpAlarmas
  loc_642C1C: FStAdFunc var_98
  loc_642C1F: FLdPr var_98
  loc_642C22: Me.Top = from_stack_1s
  loc_642C27: FFreeAd var_90 = ""
  loc_642C2E: FLdRfVar var_94
  loc_642C31: FLdPrThis
  loc_642C32: VCallAd Control_ID_lstAlarmas
  loc_642C35: FStAdFunc var_90
  loc_642C38: FLdPr var_90
  loc_642C3B:  = Me.Left
  loc_642C40: ILdRf var_94
  loc_642C43: FLdPrThis
  loc_642C44: VCallAd Control_ID_txtHelpAlarmas
  loc_642C47: FStAdFunc var_98
  loc_642C4A: FLdPr var_98
  loc_642C4D: Me.Left = from_stack_1s
  loc_642C52: FFreeAd var_90 = ""
  loc_642C59: FLdRfVar var_94
  loc_642C5C: FLdPrThis
  loc_642C5D: VCallAd Control_ID_lstAlarmas
  loc_642C60: FStAdFunc var_90
  loc_642C63: FLdPr var_90
  loc_642C66:  = Me.Height
  loc_642C6B: ILdRf var_94
  loc_642C6E: FLdPrThis
  loc_642C6F: VCallAd Control_ID_txtHelpAlarmas
  loc_642C72: FStAdFunc var_98
  loc_642C75: FLdPr var_98
  loc_642C78: Me.Height = from_stack_1s
  loc_642C7D: FFreeAd var_90 = ""
  loc_642C84: FLdRfVar var_94
  loc_642C87: FLdPrThis
  loc_642C88: VCallAd Control_ID_lstAlarmas
  loc_642C8B: FStAdFunc var_90
  loc_642C8E: FLdPr var_90
  loc_642C91:  = Me.Width
  loc_642C96: ILdRf var_94
  loc_642C99: FLdPrThis
  loc_642C9A: VCallAd Control_ID_txtHelpAlarmas
  loc_642C9D: FStAdFunc var_98
  loc_642CA0: FLdPr var_98
  loc_642CA3: Me.Width = from_stack_1s
  loc_642CA8: FFreeAd var_90 = ""
  loc_642CAF: LitI2_Byte 0
  loc_642CB1: FLdPrThis
  loc_642CB2: VCallAd Control_ID_txtHelpAlarmas
  loc_642CB5: FStAdFunc var_90
  loc_642CB8: FLdPr var_90
  loc_642CBB: Me.Visible = from_stack_1b
  loc_642CC0: FFree1Ad var_90
  loc_642CC3: FLdRfVar var_98
  loc_642CC6: FLdPrThis
  loc_642CC7: VCallAd Control_ID_lstAlarmas
  loc_642CCA: FStAdFunc var_90
  loc_642CCD: FLdPr var_90
  loc_642CD0:  = Me.Font
  loc_642CD5: FLdZeroAd var_98
  loc_642CD8: CVarAd
  loc_642CDC: PopAdLdVar
  loc_642CDD: FLdRfVar var_A0
  loc_642CE0: FLdPrThis
  loc_642CE1: VCallAd Control_ID_txtHelpAlarmas
  loc_642CE4: FStAdFunc var_9C
  loc_642CE7: FLdPr var_9C
  loc_642CEA:  = Me.Font
  loc_642CEF: FLdPr var_A0
  loc_642CF2: LateIdSt
  loc_642CF7: FFreeAd var_90 = "": var_9C = ""
  loc_642D00: FFree1Var var_B0 = ""
  loc_642D03: FLdRfVar var_B2
  loc_642D06: FLdPrThis
  loc_642D07: VCallAd Control_ID_lstAlarmas
  loc_642D0A: FStAdFunc var_90
  loc_642D0D: FLdPr var_90
  loc_642D10:  = Me.FontBold
  loc_642D15: FLdI2 var_B2
  loc_642D18: FLdPrThis
  loc_642D19: VCallAd Control_ID_txtHelpAlarmas
  loc_642D1C: FStAdFunc var_98
  loc_642D1F: FLdPr var_98
  loc_642D22: Me.FontBold = from_stack_1b
  loc_642D27: FFreeAd var_90 = ""
  loc_642D2E: FLdRfVar var_B2
  loc_642D31: FLdPrThis
  loc_642D32: VCallAd Control_ID_lstAlarmas
  loc_642D35: FStAdFunc var_90
  loc_642D38: FLdPr var_90
  loc_642D3B:  = Me.FontItalic
  loc_642D40: FLdI2 var_B2
  loc_642D43: FLdPrThis
  loc_642D44: VCallAd Control_ID_txtHelpAlarmas
  loc_642D47: FStAdFunc var_98
  loc_642D4A: FLdPr var_98
  loc_642D4D: Me.FontItalic = from_stack_1b
  loc_642D52: FFreeAd var_90 = ""
  loc_642D59: FLdRfVar var_94
  loc_642D5C: FLdPrThis
  loc_642D5D: VCallAd Control_ID_lstAlarmas
  loc_642D60: FStAdFunc var_90
  loc_642D63: FLdPr var_90
  loc_642D66:  = Me.FontSize
  loc_642D6B: ILdRf var_94
  loc_642D6E: FLdPrThis
  loc_642D6F: VCallAd Control_ID_txtHelpAlarmas
  loc_642D72: FStAdFunc var_98
  loc_642D75: FLdPr var_98
  loc_642D78: Me.FontSize = from_stack_1s
  loc_642D7D: FFreeAd var_90 = ""
  loc_642D84: FLdRfVar var_B2
  loc_642D87: FLdPrThis
  loc_642D88: VCallAd Control_ID_lstAlarmas
  loc_642D8B: FStAdFunc var_90
  loc_642D8E: FLdPr var_90
  loc_642D91:  = Me.FontUnderline
  loc_642D96: FLdI2 var_B2
  loc_642D99: FLdPrThis
  loc_642D9A: VCallAd Control_ID_txtHelpAlarmas
  loc_642D9D: FStAdFunc var_98
  loc_642DA0: FLdPr var_98
  loc_642DA3: Me.FontUnderline = from_stack_1b
  loc_642DA8: FFreeAd var_90 = ""
  loc_642DAF: FLdRfVar var_94
  loc_642DB2: FLdPrThis
  loc_642DB3: VCallAd Control_ID_lstAlarmas
  loc_642DB6: FStAdFunc var_90
  loc_642DB9: FLdPr var_90
  loc_642DBC:  = Me.BackColor
  loc_642DC1: ILdRf var_94
  loc_642DC4: FLdPrThis
  loc_642DC5: VCallAd Control_ID_txtHelpAlarmas
  loc_642DC8: FStAdFunc var_98
  loc_642DCB: FLdPr var_98
  loc_642DCE: Me.BackColor = from_stack_1
  loc_642DD3: FFreeAd var_90 = ""
  loc_642DDA: FLdRfVar var_94
  loc_642DDD: FLdPrThis
  loc_642DDE: VCallAd Control_ID_lstAlarmas
  loc_642DE1: FStAdFunc var_90
  loc_642DE4: FLdPr var_90
  loc_642DE7:  = Me.ForeColor
  loc_642DEC: ILdRf var_94
  loc_642DEF: FLdPrThis
  loc_642DF0: VCallAd Control_ID_txtHelpAlarmas
  loc_642DF3: FStAdFunc var_98
  loc_642DF6: FLdPr var_98
  loc_642DF9: Me.ForeColor = from_stack_1
  loc_642DFE: FFreeAd var_90 = ""
  loc_642E05: from_stack_1v = Proc_62_17_64CC3C()
  loc_642E0A: ExitProcHresult
End Sub

Private Sub cmdSalir_UnknownEvent_8 '5D242C
  'Data Table: 40E1E8
  loc_5D2414: ILdRf Me
  loc_5D2417: FStAdNoPop
  loc_5D241B: ImpAdLdRf MemVar_7520D4
  loc_5D241E: NewIfNullPr Global
  loc_5D2421: Global.Unload from_stack_1
  loc_5D2426: FFree1Ad var_88
  loc_5D2429: ExitProcHresult
End Sub

Public Function strAlarmaAvisoDeAguaGet() '40E5CC
  strAlarmaAvisoDeAguaGet = strAlarmaAvisoDeAgua
End Function

Public Sub strAlarmaAvisoDeAguaPut(Value) '40E5DB
  strAlarmaAvisoDeAgua = Value
End Sub

Public Function strAlarmaNivelDeAguaAltoGet() '40E5EA
  strAlarmaNivelDeAguaAltoGet = strAlarmaNivelDeAguaAlto
End Function

Public Sub strAlarmaNivelDeAguaAltoPut(Value) '40E5F9
  strAlarmaNivelDeAguaAlto = Value
End Sub

Public Function strAlarmaDeReposiciónGet() '40E608
  strAlarmaDeReposiciónGet = strAlarmaDeReposición
End Function

Public Sub strAlarmaDeReposiciónPut(Value) '40E617
  strAlarmaDeReposición = Value
End Sub

Public Function strAlarmaDeNivelDeSucciónGet() '40E626
  strAlarmaDeNivelDeSucciónGet = strAlarmaDeNivelDeSucción
End Function

Public Sub strAlarmaDeNivelDeSucciónPut(Value) '40E635
  strAlarmaDeNivelDeSucción = Value
End Sub

Public Function strAlarmaDeSobrellenadoGet() '40E644
  strAlarmaDeSobrellenadoGet = strAlarmaDeSobrellenado
End Function

Public Sub strAlarmaDeSobrellenadoPut(Value) '40E653
  strAlarmaDeSobrellenado = Value
End Sub

Public Function strAlarmaDeProductoAltoGet() '40E662
  strAlarmaDeProductoAltoGet = strAlarmaDeProductoAlto
End Function

Public Sub strAlarmaDeProductoAltoPut(Value) '40E671
  strAlarmaDeProductoAlto = Value
End Sub

Private Function Proc_62_16_6586CC() '6586CC
  'Data Table: 40E1E8
  loc_6583BC: FLdPrThis
  loc_6583BD: VCallAd Control_ID_lstAlarmas
  loc_6583C0: FStAdFunc var_90
  loc_6583C3: FLdPr var_90
  loc_6583C6: Me.Clear
  loc_6583CB: FFree1Ad var_90
  loc_6583CE: LitI2_Byte 1
  loc_6583D0: FLdRfVar var_88
  loc_6583D3: ImpAdLdUI1
  loc_6583D7: CI2UI1
  loc_6583D9: ForI2 var_94
  loc_6583DF: LitI2_Byte &HFF
  loc_6583E1: FStI2 var_8A
  loc_6583E4: FLdI2 var_88
  loc_6583E7: CI4UI1
  loc_6583E8: LitI4 9
  loc_6583ED: ImpAdLdRf MemVar_74A020
  loc_6583F0: AryLdPr
  loc_6583F3: MemLdI2 global_0
  loc_6583F6: BranchF loc_658433
  loc_6583F9: LitVar_Missing var_B0
  loc_6583FC: PopAdLdVar
  loc_6583FD: LitStr "Tanque "
  loc_658400: FLdI2 var_88
  loc_658403: CStrUI1
  loc_658405: FStStrNoPop var_98
  loc_658408: ConcatStr
  loc_658409: FStStrNoPop var_9C
  loc_65840C: LitStr " - Error de probeta"
  loc_65840F: ConcatStr
  loc_658410: FStStrNoPop var_A0
  loc_658413: FLdPrThis
  loc_658414: VCallAd Control_ID_lstAlarmas
  loc_658417: FStAdFunc var_90
  loc_65841A: FLdPr var_90
  loc_65841D: Me.AddItem from_stack_1, from_stack_2
  loc_658422: FFreeStr var_98 = "": var_9C = ""
  loc_65842B: FFree1Ad var_90
  loc_65842E: LitI2_Byte 0
  loc_658430: FStI2 var_8A
  loc_658433: FLdI2 var_88
  loc_658436: CI4UI1
  loc_658437: LitI4 &H34
  loc_65843C: ImpAdLdRf MemVar_74A020
  loc_65843F: AryLdPr
  loc_658442: MemLdI2 global_0
  loc_658445: BranchF loc_658482
  loc_658448: LitVar_Missing var_B0
  loc_65844B: PopAdLdVar
  loc_65844C: LitStr "Tanque "
  loc_65844F: FLdI2 var_88
  loc_658452: CStrUI1
  loc_658454: FStStrNoPop var_98
  loc_658457: ConcatStr
  loc_658458: FStStrNoPop var_9C
  loc_65845B: LitStr " - Error de comunicación"
  loc_65845E: ConcatStr
  loc_65845F: FStStrNoPop var_A0
  loc_658462: FLdPrThis
  loc_658463: VCallAd Control_ID_lstAlarmas
  loc_658466: FStAdFunc var_90
  loc_658469: FLdPr var_90
  loc_65846C: Me.AddItem from_stack_1, from_stack_2
  loc_658471: FFreeStr var_98 = "": var_9C = ""
  loc_65847A: FFree1Ad var_90
  loc_65847D: LitI2_Byte 0
  loc_65847F: FStI2 var_8A
  loc_658482: FLdI2 var_88
  loc_658485: CI4UI1
  loc_658486: LitI4 &HA
  loc_65848B: ImpAdLdRf MemVar_74A020
  loc_65848E: AryLdPr
  loc_658491: MemLdI2 global_0
  loc_658494: BranchF loc_6584D1
  loc_658497: LitVar_Missing var_B0
  loc_65849A: PopAdLdVar
  loc_65849B: LitStr "Tanque "
  loc_65849E: FLdI2 var_88
  loc_6584A1: CStrUI1
  loc_6584A3: FStStrNoPop var_98
  loc_6584A6: ConcatStr
  loc_6584A7: FStStrNoPop var_9C
  loc_6584AA: LitStr " - Aviso de agua"
  loc_6584AD: ConcatStr
  loc_6584AE: FStStrNoPop var_A0
  loc_6584B1: FLdPrThis
  loc_6584B2: VCallAd Control_ID_lstAlarmas
  loc_6584B5: FStAdFunc var_90
  loc_6584B8: FLdPr var_90
  loc_6584BB: Me.AddItem from_stack_1, from_stack_2
  loc_6584C0: FFreeStr var_98 = "": var_9C = ""
  loc_6584C9: FFree1Ad var_90
  loc_6584CC: LitI2_Byte 0
  loc_6584CE: FStI2 var_8A
  loc_6584D1: FLdI2 var_88
  loc_6584D4: CI4UI1
  loc_6584D5: LitI4 3
  loc_6584DA: ImpAdLdRf MemVar_74A020
  loc_6584DD: AryLdPr
  loc_6584E0: MemLdI2 global_0
  loc_6584E3: BranchF loc_658520
  loc_6584E6: LitVar_Missing var_B0
  loc_6584E9: PopAdLdVar
  loc_6584EA: LitStr "Tanque "
  loc_6584ED: FLdI2 var_88
  loc_6584F0: CStrUI1
  loc_6584F2: FStStrNoPop var_98
  loc_6584F5: ConcatStr
  loc_6584F6: FStStrNoPop var_9C
  loc_6584F9: LitStr " - Nivel agua alta"
  loc_6584FC: ConcatStr
  loc_6584FD: FStStrNoPop var_A0
  loc_658500: FLdPrThis
  loc_658501: VCallAd Control_ID_lstAlarmas
  loc_658504: FStAdFunc var_90
  loc_658507: FLdPr var_90
  loc_65850A: Me.AddItem from_stack_1, from_stack_2
  loc_65850F: FFreeStr var_98 = "": var_9C = ""
  loc_658518: FFree1Ad var_90
  loc_65851B: LitI2_Byte 0
  loc_65851D: FStI2 var_8A
  loc_658520: FLdI2 var_88
  loc_658523: CI4UI1
  loc_658524: LitI4 &HB
  loc_658529: ImpAdLdRf MemVar_74A020
  loc_65852C: AryLdPr
  loc_65852F: MemLdI2 global_0
  loc_658532: BranchF loc_65856F
  loc_658535: LitVar_Missing var_B0
  loc_658538: PopAdLdVar
  loc_658539: LitStr "Tanque "
  loc_65853C: FLdI2 var_88
  loc_65853F: CStrUI1
  loc_658541: FStStrNoPop var_98
  loc_658544: ConcatStr
  loc_658545: FStStrNoPop var_9C
  loc_658548: LitStr " - Reposicion"
  loc_65854B: ConcatStr
  loc_65854C: FStStrNoPop var_A0
  loc_65854F: FLdPrThis
  loc_658550: VCallAd Control_ID_lstAlarmas
  loc_658553: FStAdFunc var_90
  loc_658556: FLdPr var_90
  loc_658559: Me.AddItem from_stack_1, from_stack_2
  loc_65855E: FFreeStr var_98 = "": var_9C = ""
  loc_658567: FFree1Ad var_90
  loc_65856A: LitI2_Byte 0
  loc_65856C: FStI2 var_8A
  loc_65856F: FLdI2 var_88
  loc_658572: CI4UI1
  loc_658573: LitI4 8
  loc_658578: ImpAdLdRf MemVar_74A020
  loc_65857B: AryLdPr
  loc_65857E: MemLdI2 global_0
  loc_658581: BranchF loc_6585BE
  loc_658584: LitVar_Missing var_B0
  loc_658587: PopAdLdVar
  loc_658588: LitStr "Tanque "
  loc_65858B: FLdI2 var_88
  loc_65858E: CStrUI1
  loc_658590: FStStrNoPop var_98
  loc_658593: ConcatStr
  loc_658594: FStStrNoPop var_9C
  loc_658597: LitStr " - Nivel succion"
  loc_65859A: ConcatStr
  loc_65859B: FStStrNoPop var_A0
  loc_65859E: FLdPrThis
  loc_65859F: VCallAd Control_ID_lstAlarmas
  loc_6585A2: FStAdFunc var_90
  loc_6585A5: FLdPr var_90
  loc_6585A8: Me.AddItem from_stack_1, from_stack_2
  loc_6585AD: FFreeStr var_98 = "": var_9C = ""
  loc_6585B6: FFree1Ad var_90
  loc_6585B9: LitI2_Byte 0
  loc_6585BB: FStI2 var_8A
  loc_6585BE: FLdI2 var_88
  loc_6585C1: CI4UI1
  loc_6585C2: LitI4 &H33
  loc_6585C7: ImpAdLdRf MemVar_74A020
  loc_6585CA: AryLdPr
  loc_6585CD: MemLdI2 global_0
  loc_6585D0: FLdI2 var_88
  loc_6585D3: CI4UI1
  loc_6585D4: LitI4 7
  loc_6585D9: ImpAdLdRf MemVar_74A020
  loc_6585DC: AryLdPr
  loc_6585DF: MemLdI2 global_0
  loc_6585E2: OrI4
  loc_6585E3: BranchF loc_658620
  loc_6585E6: LitVar_Missing var_B0
  loc_6585E9: PopAdLdVar
  loc_6585EA: LitStr "Tanque "
  loc_6585ED: FLdI2 var_88
  loc_6585F0: CStrUI1
  loc_6585F2: FStStrNoPop var_98
  loc_6585F5: ConcatStr
  loc_6585F6: FStStrNoPop var_9C
  loc_6585F9: LitStr " - Producto alto"
  loc_6585FC: ConcatStr
  loc_6585FD: FStStrNoPop var_A0
  loc_658600: FLdPrThis
  loc_658601: VCallAd Control_ID_lstAlarmas
  loc_658604: FStAdFunc var_90
  loc_658607: FLdPr var_90
  loc_65860A: Me.AddItem from_stack_1, from_stack_2
  loc_65860F: FFreeStr var_98 = "": var_9C = ""
  loc_658618: FFree1Ad var_90
  loc_65861B: LitI2_Byte 0
  loc_65861D: FStI2 var_8A
  loc_658620: FLdI2 var_88
  loc_658623: CI4UI1
  loc_658624: LitI4 &H32
  loc_658629: ImpAdLdRf MemVar_74A020
  loc_65862C: AryLdPr
  loc_65862F: MemLdI2 global_0
  loc_658632: FLdI2 var_88
  loc_658635: CI4UI1
  loc_658636: LitI4 4
  loc_65863B: ImpAdLdRf MemVar_74A020
  loc_65863E: AryLdPr
  loc_658641: MemLdI2 global_0
  loc_658644: OrI4
  loc_658645: BranchF loc_658682
  loc_658648: LitVar_Missing var_B0
  loc_65864B: PopAdLdVar
  loc_65864C: LitStr "Tanque "
  loc_65864F: FLdI2 var_88
  loc_658652: CStrUI1
  loc_658654: FStStrNoPop var_98
  loc_658657: ConcatStr
  loc_658658: FStStrNoPop var_9C
  loc_65865B: LitStr " - Sobrellenado"
  loc_65865E: ConcatStr
  loc_65865F: FStStrNoPop var_A0
  loc_658662: FLdPrThis
  loc_658663: VCallAd Control_ID_lstAlarmas
  loc_658666: FStAdFunc var_90
  loc_658669: FLdPr var_90
  loc_65866C: Me.AddItem from_stack_1, from_stack_2
  loc_658671: FFreeStr var_98 = "": var_9C = ""
  loc_65867A: FFree1Ad var_90
  loc_65867D: LitI2_Byte 0
  loc_65867F: FStI2 var_8A
  loc_658682: FLdI2 var_8A
  loc_658685: BranchF loc_6586BD
  loc_658688: LitVar_Missing var_B0
  loc_65868B: PopAdLdVar
  loc_65868C: LitStr "Tanque "
  loc_65868F: FLdI2 var_88
  loc_658692: CStrUI1
  loc_658694: FStStrNoPop var_98
  loc_658697: ConcatStr
  loc_658698: FStStrNoPop var_9C
  loc_65869B: LitStr " - Normal (sin alarmas activadas)"
  loc_65869E: ConcatStr
  loc_65869F: FStStrNoPop var_A0
  loc_6586A2: FLdPrThis
  loc_6586A3: VCallAd Control_ID_lstAlarmas
  loc_6586A6: FStAdFunc var_90
  loc_6586A9: FLdPr var_90
  loc_6586AC: Me.AddItem from_stack_1, from_stack_2
  loc_6586B1: FFreeStr var_98 = "": var_9C = ""
  loc_6586BA: FFree1Ad var_90
  loc_6586BD: FLdRfVar var_88
  loc_6586C0: NextI2 var_94, loc_6583DF
  loc_6586C5: ImpAdCallFPR4 DoEvents()
  loc_6586CA: ExitProcHresult
End Function

Private Function Proc_62_17_64CC3C() '64CC3C
  'Data Table: 40E1E8
  loc_64C9A4: LitVarStr var_A8, "DESCRIPCION DE LAS ALARMAS:"
  loc_64C9A9: LitI4 &HA
  loc_64C9AE: FLdRfVar var_98
  loc_64C9B1: ImpAdCallFPR4  = Chr()
  loc_64C9B6: FLdRfVar var_98
  loc_64C9B9: ConcatVar var_B8
  loc_64C9BD: CStrVarTmp
  loc_64C9BE: FStStr var_88
  loc_64C9C1: FFreeVar var_98 = ""
  loc_64C9C8: ILdRf var_88
  loc_64C9CB: LitStr "==========================="
  loc_64C9CE: ConcatStr
  loc_64C9CF: CVarStr var_B8
  loc_64C9D2: LitI4 &HA
  loc_64C9D7: FLdRfVar var_98
  loc_64C9DA: ImpAdCallFPR4  = Chr()
  loc_64C9DF: FLdRfVar var_98
  loc_64C9E2: ConcatVar var_C8
  loc_64C9E6: LitI4 &HA
  loc_64C9EB: FLdRfVar var_D8
  loc_64C9EE: ImpAdCallFPR4  = Chr()
  loc_64C9F3: FLdRfVar var_D8
  loc_64C9F6: ConcatVar var_E8
  loc_64C9FA: CStrVarTmp
  loc_64C9FB: FStStr var_88
  loc_64C9FE: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CA0B: ILdRf var_88
  loc_64CA0E: LitStr "1) ERROR DE COMUNICACION: La comunicación entre el CEM44 y el equipo medidor de tanques no está funcionando correctamente. Por favor solicite servicio técnico autorizado."
  loc_64CA11: ConcatStr
  loc_64CA12: CVarStr var_B8
  loc_64CA15: LitI4 &HA
  loc_64CA1A: FLdRfVar var_98
  loc_64CA1D: ImpAdCallFPR4  = Chr()
  loc_64CA22: FLdRfVar var_98
  loc_64CA25: ConcatVar var_C8
  loc_64CA29: LitI4 &HA
  loc_64CA2E: FLdRfVar var_D8
  loc_64CA31: ImpAdCallFPR4  = Chr()
  loc_64CA36: FLdRfVar var_D8
  loc_64CA39: ConcatVar var_E8
  loc_64CA3D: CStrVarTmp
  loc_64CA3E: FStStr var_88
  loc_64CA41: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CA4E: ILdRf var_88
  loc_64CA51: LitStr "2) ERROR DE PROBETA: El equipo está fallando. La probeta no funciona o el cableado que la interconecta a la caja de interconexión está dañado. Solicite servicio técnico autorizado."
  loc_64CA54: ConcatStr
  loc_64CA55: CVarStr var_B8
  loc_64CA58: LitI4 &HA
  loc_64CA5D: FLdRfVar var_98
  loc_64CA60: ImpAdCallFPR4  = Chr()
  loc_64CA65: FLdRfVar var_98
  loc_64CA68: ConcatVar var_C8
  loc_64CA6C: LitI4 &HA
  loc_64CA71: FLdRfVar var_D8
  loc_64CA74: ImpAdCallFPR4  = Chr()
  loc_64CA79: FLdRfVar var_D8
  loc_64CA7C: ConcatVar var_E8
  loc_64CA80: CStrVarTmp
  loc_64CA81: FStStr var_88
  loc_64CA84: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CA91: ILdRf var_88
  loc_64CA94: LitStr "3) AVISO DE AGUA: existe un nivel no crítico de agua en el tanque."
  loc_64CA97: ConcatStr
  loc_64CA98: CVarStr var_B8
  loc_64CA9B: LitI4 &HA
  loc_64CAA0: FLdRfVar var_98
  loc_64CAA3: ImpAdCallFPR4  = Chr()
  loc_64CAA8: FLdRfVar var_98
  loc_64CAAB: ConcatVar var_C8
  loc_64CAAF: LitI4 &HA
  loc_64CAB4: FLdRfVar var_D8
  loc_64CAB7: ImpAdCallFPR4  = Chr()
  loc_64CABC: FLdRfVar var_D8
  loc_64CABF: ConcatVar var_E8
  loc_64CAC3: CStrVarTmp
  loc_64CAC4: FStStr var_88
  loc_64CAC7: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CAD4: ILdRf var_88
  loc_64CAD7: LitStr "4) NIVEL DE AGUA ALTA: existe un nivel alto de agua en el tanque."
  loc_64CADA: ConcatStr
  loc_64CADB: CVarStr var_B8
  loc_64CADE: LitI4 &HA
  loc_64CAE3: FLdRfVar var_98
  loc_64CAE6: ImpAdCallFPR4  = Chr()
  loc_64CAEB: FLdRfVar var_98
  loc_64CAEE: ConcatVar var_C8
  loc_64CAF2: LitI4 &HA
  loc_64CAF7: FLdRfVar var_D8
  loc_64CAFA: ImpAdCallFPR4  = Chr()
  loc_64CAFF: FLdRfVar var_D8
  loc_64CB02: ConcatVar var_E8
  loc_64CB06: CStrVarTmp
  loc_64CB07: FStStr var_88
  loc_64CB0A: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CB17: ILdRf var_88
  loc_64CB1A: LitStr "5) REPOSICIÓN: el nivel de combustible en el tanque se encuentra por debajo del punto de reposición. Se recomienda reponer combustible."
  loc_64CB1D: ConcatStr
  loc_64CB1E: CVarStr var_B8
  loc_64CB21: LitI4 &HA
  loc_64CB26: FLdRfVar var_98
  loc_64CB29: ImpAdCallFPR4  = Chr()
  loc_64CB2E: FLdRfVar var_98
  loc_64CB31: ConcatVar var_C8
  loc_64CB35: LitI4 &HA
  loc_64CB3A: FLdRfVar var_D8
  loc_64CB3D: ImpAdCallFPR4  = Chr()
  loc_64CB42: FLdRfVar var_D8
  loc_64CB45: ConcatVar var_E8
  loc_64CB49: CStrVarTmp
  loc_64CB4A: FStStr var_88
  loc_64CB4D: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CB5A: ILdRf var_88
  loc_64CB5D: LitStr "6) NIVEL DE SUCCIÓN: el nivel de combustible del tanque se encuentra muy bajo, corriendo peligro de desabastecimiento. Se recomienda reponer combustible con urgencia."
  loc_64CB60: ConcatStr
  loc_64CB61: CVarStr var_B8
  loc_64CB64: LitI4 &HA
  loc_64CB69: FLdRfVar var_98
  loc_64CB6C: ImpAdCallFPR4  = Chr()
  loc_64CB71: FLdRfVar var_98
  loc_64CB74: ConcatVar var_C8
  loc_64CB78: LitI4 &HA
  loc_64CB7D: FLdRfVar var_D8
  loc_64CB80: ImpAdCallFPR4  = Chr()
  loc_64CB85: FLdRfVar var_D8
  loc_64CB88: ConcatVar var_E8
  loc_64CB8C: CStrVarTmp
  loc_64CB8D: FStStr var_88
  loc_64CB90: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CB9D: ILdRf var_88
  loc_64CBA0: LitStr "7) PRODUCTO ALTO: el nivel de combustible en el tanque está alto."
  loc_64CBA3: ConcatStr
  loc_64CBA4: CVarStr var_B8
  loc_64CBA7: LitI4 &HA
  loc_64CBAC: FLdRfVar var_98
  loc_64CBAF: ImpAdCallFPR4  = Chr()
  loc_64CBB4: FLdRfVar var_98
  loc_64CBB7: ConcatVar var_C8
  loc_64CBBB: LitI4 &HA
  loc_64CBC0: FLdRfVar var_D8
  loc_64CBC3: ImpAdCallFPR4  = Chr()
  loc_64CBC8: FLdRfVar var_D8
  loc_64CBCB: ConcatVar var_E8
  loc_64CBCF: CStrVarTmp
  loc_64CBD0: FStStr var_88
  loc_64CBD3: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CBE0: ILdRf var_88
  loc_64CBE3: LitStr "8) SOBRELLENADO: el nivel de combustible en el tanque está peligrosamente alto. Si está realizando una descarga de combustible, se recomienda detener la operación inmediatamente."
  loc_64CBE6: ConcatStr
  loc_64CBE7: CVarStr var_B8
  loc_64CBEA: LitI4 &HA
  loc_64CBEF: FLdRfVar var_98
  loc_64CBF2: ImpAdCallFPR4  = Chr()
  loc_64CBF7: FLdRfVar var_98
  loc_64CBFA: ConcatVar var_C8
  loc_64CBFE: LitI4 &HA
  loc_64CC03: FLdRfVar var_D8
  loc_64CC06: ImpAdCallFPR4  = Chr()
  loc_64CC0B: FLdRfVar var_D8
  loc_64CC0E: ConcatVar var_E8
  loc_64CC12: CStrVarTmp
  loc_64CC13: FStStr var_88
  loc_64CC16: FFreeVar var_B8 = "": var_98 = "": var_C8 = "": var_D8 = ""
  loc_64CC23: ILdRf var_88
  loc_64CC26: FLdPrThis
  loc_64CC27: VCallAd Control_ID_txtHelpAlarmas
  loc_64CC2A: FStAdFunc var_EC
  loc_64CC2D: FLdPr var_EC
  loc_64CC30: Me.Caption = from_stack_1
  loc_64CC35: FFree1Ad var_EC
  loc_64CC38: ExitProcHresult
End Function
