VERSION 5.00
Begin VB.Form frmDespachos
  Caption = "Información para el usuario."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDespachos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5190
  ClientHeight = 1485
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton Command1
    Caption = "OK"
    Left = 4200
    Top = 1020
    Width = 795
    Height = 375
    TabIndex = 2
  End
  Begin VB.Frame fmeDespachos
    Left = 120
    Top = 120
    Width = 4935
    Height = 735
    TabIndex = 0
    Begin VB.Label lblDespachos
      Caption = "Todavia no han terminado los despachos."
      Left = 120
      Top = 300
      Width = 4635
      Height = 255
      TabIndex = 1
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "frmDespachos"


Private Sub Command1_Click() '5EA078
  'Data Table: 405AD8
  loc_5EA000: FLdRfVar var_8C
  loc_5EA003: ImpAdLdRf MemVar_74DBF4
  loc_5EA006: NewIfNullPr frmDespachos
  loc_5EA009: VCallAd Control_ID_lblDespachos
  loc_5EA00C: FStAdFunc var_88
  loc_5EA00F: FLdPr var_88
  loc_5EA012:  = frmDespachos.Label.Caption
  loc_5EA017: LitI4 1
  loc_5EA01C: FLdZeroAd var_8C
  loc_5EA01F: CVarStr var_9C
  loc_5EA022: FLdRfVar var_AC
  loc_5EA025: ImpAdCallFPR4  = Left(, )
  loc_5EA02A: FLdRfVar var_AC
  loc_5EA02D: LitVarStr var_BC, "T"
  loc_5EA032: HardType
  loc_5EA033: EqVarBool
  loc_5EA035: FFree1Ad var_88
  loc_5EA038: FFreeVar var_9C = ""
  loc_5EA03F: BranchF loc_5EA052
  loc_5EA042: LitI2_Byte &HFF
  loc_5EA044: ImpAdLdRf MemVar_74DC08
  loc_5EA047: NewIfNullPr PanelTanques
  loc_5EA04A: Call PanelTanques.bFlagdespachosActivosPut(from_stack_1v)
  loc_5EA04F: Branch loc_5EA05F
  loc_5EA052: LitI2_Byte 0
  loc_5EA054: ImpAdLdRf MemVar_74DC08
  loc_5EA057: NewIfNullPr PanelTanques
  loc_5EA05A: Call PanelTanques.bFlagdespachosActivosPut(from_stack_1v)
  loc_5EA05F: ILdRf Me
  loc_5EA062: FStAdNoPop
  loc_5EA066: ImpAdLdRf MemVar_7520D4
  loc_5EA069: NewIfNullPr Global
  loc_5EA06C: Global.Unload from_stack_1
  loc_5EA071: FFree1Ad var_88
  loc_5EA074: ExitProcHresult
End Sub

Private Sub Form_Load() '5EAA48
  'Data Table: 405AD8
  loc_5EA9BC: FLdRfVar var_90
  loc_5EA9BF: ImpAdLdRf MemVar_74DBF4
  loc_5EA9C2: NewIfNullPr frmDespachos
  loc_5EA9C5:  = frmDespachos.Height
  loc_5EA9CA: FLdRfVar var_8C
  loc_5EA9CD: FLdRfVar var_88
  loc_5EA9D0: ImpAdLdRf MemVar_7520D4
  loc_5EA9D3: NewIfNullPr Global
  loc_5EA9D6:  = Global.Screen
  loc_5EA9DB: FLdPr var_88
  loc_5EA9DE:  = Screen.Height
  loc_5EA9E3: FLdFPR4 var_8C
  loc_5EA9E6: FLdFPR4 var_90
  loc_5EA9E9: SubR4
  loc_5EA9EA: CI4R8
  loc_5EA9EB: LitI4 2
  loc_5EA9F0: IDvI4
  loc_5EA9F1: CR8I4
  loc_5EA9F2: PopFPR4
  loc_5EA9F3: ImpAdLdRf MemVar_74DBF4
  loc_5EA9F6: NewIfNullPr frmDespachos
  loc_5EA9F9: frmDespachos.Top = from_stack_1s
  loc_5EA9FE: FFree1Ad var_88
  loc_5EAA01: FLdRfVar var_90
  loc_5EAA04: ImpAdLdRf MemVar_74DBF4
  loc_5EAA07: NewIfNullPr frmDespachos
  loc_5EAA0A:  = frmDespachos.Width
  loc_5EAA0F: FLdRfVar var_8C
  loc_5EAA12: FLdRfVar var_88
  loc_5EAA15: ImpAdLdRf MemVar_7520D4
  loc_5EAA18: NewIfNullPr Global
  loc_5EAA1B:  = Global.Screen
  loc_5EAA20: FLdPr var_88
  loc_5EAA23:  = Screen.Width
  loc_5EAA28: FLdFPR4 var_8C
  loc_5EAA2B: FLdFPR4 var_90
  loc_5EAA2E: SubR4
  loc_5EAA2F: CI4R8
  loc_5EAA30: LitI4 2
  loc_5EAA35: IDvI4
  loc_5EAA36: CR8I4
  loc_5EAA37: PopFPR4
  loc_5EAA38: ImpAdLdRf MemVar_74DBF4
  loc_5EAA3B: NewIfNullPr frmDespachos
  loc_5EAA3E: frmDespachos.Left = from_stack_1s
  loc_5EAA43: FFree1Ad var_88
  loc_5EAA46: ExitProcHresult
End Sub
