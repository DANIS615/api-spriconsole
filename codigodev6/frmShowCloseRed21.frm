VERSION 5.00
Begin VB.Form frmShowCloseRed21
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 75
  ClientWidth = 11910
  ClientHeight = 8745
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.PictureBox Picture2
    Left = 9480
    Top = 240
    Width = 2205
    Height = 540
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
  End
  Begin VB.PictureBox Picture1
    Left = 240
    Top = 120
    Width = 1575
    Height = 810
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Imprimir"
    Left = 6360
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 3
    Default = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 9120
    Top = 7800
    Width = 2535
    Height = 735
    TabIndex = 1
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ListBox lstListado
    Left = 240
    Top = 1080
    Width = 11415
    Height = 6495
    TabIndex = 0
  End
  Begin VB.Label Label1
    Caption = "Informe de Cierre Red XXI"
    Left = 2040
    Top = 240
    Width = 7335
    Height = 495
    TabIndex = 2
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmShowCloseRed21"

Public TipoReporte As String
Public Desdehasta As String


Private Sub cmdImprimir_Click() '5D941C
  'Data Table: 40E770
  loc_5D93EC: LitVar_Missing var_A4
  loc_5D93EF: FLdPr Me
  loc_5D93F2: MemLdStr Desdehasta
  loc_5D93F5: FLdPr Me
  loc_5D93F8: MemLdStr TipoReporte
  loc_5D93FB: ImpAdCallFPR4 Proc_87_5_73E7D8(, , )
  loc_5D9400: FFree1Var var_A4 = ""
  loc_5D9403: ILdRf Me
  loc_5D9406: FStAdNoPop
  loc_5D940A: ImpAdLdRf MemVar_7520D4
  loc_5D940D: NewIfNullPr Global
  loc_5D9410: Global.Unload from_stack_1
  loc_5D9415: FFree1Ad var_A8
  loc_5D9418: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D2218
  'Data Table: 40E770
  loc_5D2200: ILdRf Me
  loc_5D2203: FStAdNoPop
  loc_5D2207: ImpAdLdRf MemVar_7520D4
  loc_5D220A: NewIfNullPr Global
  loc_5D220D: Global.Unload from_stack_1
  loc_5D2212: FFree1Ad var_88
  loc_5D2215: ExitProcHresult
End Sub

Private Sub Form_Load() '60FDD4
  'Data Table: 40E770
  loc_60FCD0: FLdPrThis
  loc_60FCD1: VCallAd Control_ID_Picture1
  loc_60FCD4: FStAdFunc var_98
  loc_60FCD7: FLdRfVar var_8C
  loc_60FCDA: FLdRfVar var_88
  loc_60FCDD: ImpAdLdRf MemVar_7520D4
  loc_60FCE0: NewIfNullPr Global
  loc_60FCE3:  = Global.App
  loc_60FCE8: FLdPr var_88
  loc_60FCEB:  = App.Path
  loc_60FCF0: ILdRf var_8C
  loc_60FCF3: LitStr "\Logo_Compania.bmp"
  loc_60FCF6: ConcatStr
  loc_60FCF7: FStStrNoPop var_94
  loc_60FCFA: FLdZeroAd var_98
  loc_60FCFD: FStAdFunc var_90
  loc_60FD00: FLdRfVar var_90
  loc_60FD03: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_60FD08: FFreeStr var_8C = ""
  loc_60FD0F: FFreeAd var_88 = "": var_90 = ""
  loc_60FD18: FLdPrThis
  loc_60FD19: VCallAd Control_ID_Picture2
  loc_60FD1C: FStAdFunc var_98
  loc_60FD1F: FLdRfVar var_8C
  loc_60FD22: FLdRfVar var_88
  loc_60FD25: ImpAdLdRf MemVar_7520D4
  loc_60FD28: NewIfNullPr Global
  loc_60FD2B:  = Global.App
  loc_60FD30: FLdPr var_88
  loc_60FD33:  = App.Path
  loc_60FD38: ILdRf var_8C
  loc_60FD3B: LitStr "\Logo_Proyecto.bmp"
  loc_60FD3E: ConcatStr
  loc_60FD3F: FStStrNoPop var_94
  loc_60FD42: FLdZeroAd var_98
  loc_60FD45: FStAdFunc var_90
  loc_60FD48: FLdRfVar var_90
  loc_60FD4B: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_60FD50: FFreeStr var_8C = ""
  loc_60FD57: FFreeAd var_88 = "": var_90 = ""
  loc_60FD60: LitI2_Byte 0
  loc_60FD62: CR8I2
  loc_60FD63: PopFPR4
  loc_60FD64: FLdPr Me
  loc_60FD67: Me.Left = from_stack_1s
  loc_60FD6C: LitI2_Byte 0
  loc_60FD6E: CR8I2
  loc_60FD6F: PopFPR4
  loc_60FD70: FLdPr Me
  loc_60FD73: Me.Top = from_stack_1s
  loc_60FD78: FLdRfVar var_9C
  loc_60FD7B: FLdRfVar var_88
  loc_60FD7E: ImpAdLdRf MemVar_7520D4
  loc_60FD81: NewIfNullPr Global
  loc_60FD84:  = Global.Screen
  loc_60FD89: FLdPr var_88
  loc_60FD8C:  = Screen.TwipsPerPixelX
  loc_60FD91: FLdFPR4 var_9C
  loc_60FD94: LitI2 800
  loc_60FD97: CR8I2
  loc_60FD98: MulR8
  loc_60FD99: PopFPR4
  loc_60FD9A: FLdPr Me
  loc_60FD9D: Me.Width = from_stack_1s
  loc_60FDA2: FFree1Ad var_88
  loc_60FDA5: FLdRfVar var_9C
  loc_60FDA8: FLdRfVar var_88
  loc_60FDAB: ImpAdLdRf MemVar_7520D4
  loc_60FDAE: NewIfNullPr Global
  loc_60FDB1:  = Global.Screen
  loc_60FDB6: FLdPr var_88
  loc_60FDB9:  = Screen.TwipsPerPixelY
  loc_60FDBE: FLdFPR4 var_9C
  loc_60FDC1: LitI2 600
  loc_60FDC4: CR8I2
  loc_60FDC5: MulR8
  loc_60FDC6: PopFPR4
  loc_60FDC7: FLdPr Me
  loc_60FDCA: Me.Height = from_stack_1s
  loc_60FDCF: FFree1Ad var_88
  loc_60FDD2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5CAD78
  'Data Table: 40E770
  loc_5CAD6C: LitI2_Byte 0
  loc_5CAD6E: FLdPr Me
  loc_5CAD71: MemStI2 global_60
  loc_5CAD74: ExitProcHresult
End Sub

Private Sub Form_Activate() '5DAE2C
  'Data Table: 40E770
  loc_5DADF4: FLdPrThis
  loc_5DADF5: VCallAd Control_ID_lstListado
  loc_5DADF8: CVarAd
  loc_5DADFC: FLdPr Me
  loc_5DADFF: MemLdStr Desdehasta
  loc_5DAE02: FLdPr Me
  loc_5DAE05: MemLdStr TipoReporte
  loc_5DAE08: ImpAdCallI2 Proc_87_5_73E7D8(, , )
  loc_5DAE0D: NotI4
  loc_5DAE0E: FFree1Var var_94 = ""
  loc_5DAE11: BranchF loc_5DAE29
  loc_5DAE14: ILdRf Me
  loc_5DAE17: FStAdNoPop
  loc_5DAE1B: ImpAdLdRf MemVar_7520D4
  loc_5DAE1E: NewIfNullPr Global
  loc_5DAE21: Global.Unload from_stack_1
  loc_5DAE26: FFree1Ad var_98
  loc_5DAE29: ExitProcHresult
End Sub

Public Function TipoReporteGet() '40EBE8
  TipoReporteGet = TipoReporte
End Function

Public Sub TipoReportePut(Value) '40EBF7
  TipoReporte = Value
End Sub

Public Function DesdehastaGet() '40EC06
  DesdehastaGet = Desdehasta
End Function

Public Sub DesdehastaPut(Value) '40EC15
  Desdehasta = Value
End Sub
