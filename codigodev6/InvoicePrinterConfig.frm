VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form InvoicePrinterConfig
  Caption = "Asignacion de Puerto de Impresora"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 390
  ClientWidth = 4680
  ClientHeight = 3015
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 2460
    Top = 2160
    Width = 1335
    Height = 675
    TabIndex = 6
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
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 900
    Top = 2160
    Width = 1335
    Height = 675
    TabIndex = 5
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
  Begin VB.Frame Frame1
    Caption = "Puerto de Impresión"
    Left = 120
    Top = 120
    Width = 4335
    Height = 1875
    TabIndex = 0
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin Threed.SSOption optPuerto
      Index = 0
      Left = 480
      Top = 600
      Width = 915
      Height = 195
      TabStop = 0   'False
      TabIndex = 1
      OleObjectBlob = "InvoicePrinterConfig.frx":0000
    End
    Begin Threed.SSOption optPuerto
      Index = 2
      Left = 2460
      Top = 600
      Width = 915
      Height = 195
      TabStop = 0   'False
      TabIndex = 2
      OleObjectBlob = "InvoicePrinterConfig.frx":005B
    End
    Begin Threed.SSOption optPuerto
      Index = 1
      Left = 480
      Top = 1080
      Width = 915
      Height = 195
      TabStop = 0   'False
      TabIndex = 3
      OleObjectBlob = "InvoicePrinterConfig.frx":00B6
    End
    Begin Threed.SSOption optPuerto
      Index = 3
      Left = 2460
      Top = 1080
      Width = 915
      Height = 195
      TabStop = 0   'False
      TabIndex = 4
      OleObjectBlob = "InvoicePrinterConfig.frx":0111
    End
  End
End

Attribute VB_Name = "InvoicePrinterConfig"


Private Function optPuerto_UnknownEvent_8(arg_C) '5DCAAC
  'Data Table: 407E28
  loc_5DCA6C: FLdRfVar var_8C
  loc_5DCA6F: ILdI2 arg_C
  loc_5DCA72: FLdPrThis
  loc_5DCA73: VCallAd Control_ID_optPuerto
  loc_5DCA76: FStAdFunc var_88
  loc_5DCA79: FLdPr var_88
  loc_5DCA7C: Set from_stack_2 = Me(from_stack_1)
  loc_5DCA81: FLdPr var_8C
  loc_5DCA84: LateIdLdVar var_9C DispID_11 0
  loc_5DCA8B: CBoolVar
  loc_5DCA8D: LitI2_Byte &HFF
  loc_5DCA8F: EqI2
  loc_5DCA90: FFreeAd var_88 = ""
  loc_5DCA97: FFree1Var var_9C = ""
  loc_5DCA9A: BranchF loc_5DCAA9
  loc_5DCA9D: ILdI2 arg_C
  loc_5DCAA0: CUI1I2
  loc_5DCAA2: FLdPr Me
  loc_5DCAA5: MemStUI1
  loc_5DCAA9: ExitProcHresult
End Function

Private Sub cmdAceptar_Click() '5CDD74
  'Data Table: 407E28
  loc_5CDD64: LitI4 &HD
  loc_5CDD69: CI2I4
  loc_5CDD6A: PopTmpLdAd2 var_86
  loc_5CDD6D: Call Form_KeyPress(from_stack_1v)
  loc_5CDD72: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5CE834
  'Data Table: 407E28
  loc_5CE824: LitI4 &H1B
  loc_5CE829: CI2I4
  loc_5CE82A: PopTmpLdAd2 var_86
  loc_5CE82D: Call Form_KeyPress(from_stack_1v)
  loc_5CE832: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E1268
  'Data Table: 407E28
  loc_5E1214: LitVarI2 var_94, 0
  loc_5E1219: PopAdLdVar
  loc_5E121A: LitStr "InvoicePrinterPort"
  loc_5E121D: LitStr "Startup"
  loc_5E1220: LitStr "CEM44"
  loc_5E1223: ImpAdCallI2 GetSetting(, , , )
  loc_5E1228: FStStrNoPop var_98
  loc_5E122B: CUI1Str
  loc_5E122D: FLdPr Me
  loc_5E1230: MemStUI1
  loc_5E1234: FFree1Str var_98
  loc_5E1237: LitVar_TRUE var_94
  loc_5E123A: PopAdLdVar
  loc_5E123B: FLdRfVar var_A0
  loc_5E123E: FLdPr Me
  loc_5E1241: MemLdUI1 global_68
  loc_5E1245: CI2UI1
  loc_5E1247: FLdPrThis
  loc_5E1248: VCallAd Control_ID_optPuerto
  loc_5E124B: FStAdFunc var_9C
  loc_5E124E: FLdPr var_9C
  loc_5E1251: Set from_stack_2 = Me(from_stack_1)
  loc_5E1256: FLdPr var_A0
  loc_5E1259: LateIdSt
  loc_5E125E: FFreeAd var_9C = ""
  loc_5E1265: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5E7714
  'Data Table: 407E28
  loc_5E769C: ILdI2 KeyAscii
  loc_5E769F: FStI2 var_88
  loc_5E76A2: FLdI2 var_88
  loc_5E76A5: LitI4 &HD
  loc_5E76AA: CI2I4
  loc_5E76AB: EqI2
  loc_5E76AC: BranchF loc_5E76E9
  loc_5E76AF: FLdPr Me
  loc_5E76B2: MemLdUI1 global_68
  loc_5E76B6: CStrI2
  loc_5E76B8: FStStrNoPop var_8C
  loc_5E76BB: LitStr "InvoicePrinterPort"
  loc_5E76BE: LitStr "Startup"
  loc_5E76C1: LitStr "CEM44"
  loc_5E76C4: ImpAdCallFPR4 SaveSetting(, , , )
  loc_5E76C9: FFree1Str var_8C
  loc_5E76CC: ILdRf Me
  loc_5E76CF: FStAdNoPop
  loc_5E76D3: ImpAdLdRf MemVar_7520D4
  loc_5E76D6: NewIfNullPr Global
  loc_5E76D9: Global.Unload from_stack_1
  loc_5E76DE: FFree1Ad var_90
  loc_5E76E1: LitI2_Byte 0
  loc_5E76E3: IStI2 KeyAscii
  loc_5E76E6: Branch loc_5E7710
  loc_5E76E9: FLdI2 var_88
  loc_5E76EC: LitI4 &H1B
  loc_5E76F1: CI2I4
  loc_5E76F2: EqI2
  loc_5E76F3: BranchF loc_5E7710
  loc_5E76F6: ILdRf Me
  loc_5E76F9: FStAdNoPop
  loc_5E76FD: ImpAdLdRf MemVar_7520D4
  loc_5E7700: NewIfNullPr Global
  loc_5E7703: Global.Unload from_stack_1
  loc_5E7708: FFree1Ad var_90
  loc_5E770B: LitI2_Byte 0
  loc_5E770D: IStI2 KeyAscii
  loc_5E7710: ExitProcHresult
  loc_5E7711: Ary1LdFPR8
  loc_5E7712: AryLock
End Sub
