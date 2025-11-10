VERSION 5.00
Object = "{00025600-0000-0000-C000000000000046}#5.1#0"; "C:\WINDOWS\SysWow64\CRYSTL32.OCX"
Begin VB.Form frmExistenciasProductos
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 2
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 15
  ClientTop = 525
  ClientWidth = 11880
  ClientHeight = 5880
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin Crystal.CrystalReport crPrint
    OleObjectBlob = "frmExistenciasProductos.frx":0000
    Left = 1080
    Top = 5160
  End
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 480
    Top = 5160
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "&Visualizar"
    Left = 5820
    Top = 4620
    Width = 2535
    Height = 855
    TabIndex = 10
    Default = -1  'True
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
  Begin VB.ComboBox cboYear
    Style = 2
    Left = 8520
    Top = 2040
    Width = 2535
    Height = 480
    TabIndex = 7
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
  Begin VB.ComboBox cboMonth
    Style = 2
    Left = 1560
    Top = 2040
    Width = 3975
    Height = 480
    TabIndex = 6
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
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 120
    Width = 1545
    Height = 780
    TabIndex = 2
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9600
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 1
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 8940
    Top = 4590
    Width = 2535
    Height = 855
    TabIndex = 0
    Cancel = -1  'True
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10560
    Top = 1080
    Width = 1215
    Height = 375
    TabIndex = 13
    Alignment = 1 'Right Justify
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
  Begin VB.Label lFecha
    Caption = "DD/MM/YYYY"
    Left = 120
    Top = 1080
    Width = 1935
    Height = 375
    TabIndex = 12
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
  Begin VB.Label lblWait
    Caption = "Imprimiendo... espere un momento por favor."
    BackColor = &H808080&
    Left = 240
    Top = 3030
    Width = 11415
    Height = 615
    TabIndex = 11
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 24
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Año:"
    Left = 7440
    Top = 2040
    Width = 975
    Height = 375
    TabIndex = 9
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
  Begin VB.Label Label2
    Caption = "Mes:"
    Left = 720
    Top = 2040
    Width = 735
    Height = 375
    TabIndex = 8
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
  Begin VB.Label Label3
    Caption = "Razon Social:"
    Left = 3240
    Top = 1200
    Width = 1695
    Height = 255
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
  Begin VB.Label lRazonSocial
    Caption = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    Left = 5040
    Top = 1200
    Width = 3855
    Height = 255
    TabIndex = 4
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
  Begin VB.Label Label1
    Caption = "Control de Existencias de Productos"
    Left = 2520
    Top = 240
    Width = 7215
    Height = 615
    TabIndex = 3
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

Attribute VB_Name = "frmExistenciasProductos"


Private Sub cboYear_Click() '63E15C
  'Data Table: 432B98
  loc_63DF38: FLdRfVar var_98
  loc_63DF3B: ImpAdCallFPR4  = Date
  loc_63DF40: FLdRfVar var_98
  loc_63DF43: FLdRfVar var_A8
  loc_63DF46: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_63DF4B: FLdRfVar var_A8
  loc_63DF4E: FLdRfVar var_B0
  loc_63DF51: FLdPrThis
  loc_63DF52: VCallAd Control_ID_cboYear
  loc_63DF55: FStAdFunc var_AC
  loc_63DF58: FLdPr var_AC
  loc_63DF5B:  = Me.Text
  loc_63DF60: FLdZeroAd var_B0
  loc_63DF63: CVarStr var_C0
  loc_63DF66: HardType
  loc_63DF67: EqVarBool
  loc_63DF69: FFree1Ad var_AC
  loc_63DF6C: FFreeVar var_98 = "": var_A8 = ""
  loc_63DF75: BranchF loc_63DF9C
  loc_63DF78: FLdRfVar var_98
  loc_63DF7B: ImpAdCallFPR4  = Date
  loc_63DF80: FLdRfVar var_98
  loc_63DF83: FLdRfVar var_A8
  loc_63DF86: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_63DF8B: FLdRfVar var_A8
  loc_63DF8E: CI2Var
  loc_63DF8F: FStI2 var_88
  loc_63DF92: FFreeVar var_98 = ""
  loc_63DF99: Branch loc_63DFA1
  loc_63DF9C: LitI2_Byte &HC
  loc_63DF9E: FStI2 var_88
  loc_63DFA1: FLdPrThis
  loc_63DFA2: VCallAd Control_ID_cboMonth
  loc_63DFA5: FStAdFunc var_AC
  loc_63DFA8: FLdPr var_AC
  loc_63DFAB: Me.Clear
  loc_63DFB0: FFree1Ad var_AC
  loc_63DFB3: LitI2_Byte 1
  loc_63DFB5: FLdRfVar var_86
  loc_63DFB8: FLdI2 var_88
  loc_63DFBB: ForI2 var_D4
  loc_63DFC1: LitI4 0
  loc_63DFC6: LitI4 &HB
  loc_63DFCB: FLdRfVar var_D8
  loc_63DFCE: Redim
  loc_63DFD8: LitVarStr var_E8, "Enero"
  loc_63DFDD: LitI4 0
  loc_63DFE2: ILdRf var_D8
  loc_63DFE5: Ary1StVarCopy
  loc_63DFE7: LitVarStr var_F8, "Febrero"
  loc_63DFEC: LitI4 1
  loc_63DFF1: ILdRf var_D8
  loc_63DFF4: Ary1StVarCopy
  loc_63DFF6: LitVarStr var_108, "Marzo"
  loc_63DFFB: LitI4 2
  loc_63E000: ILdRf var_D8
  loc_63E003: Ary1StVarCopy
  loc_63E005: LitVarStr var_118, "Abril"
  loc_63E00A: LitI4 3
  loc_63E00F: ILdRf var_D8
  loc_63E012: Ary1StVarCopy
  loc_63E014: LitVarStr var_128, "Mayo"
  loc_63E019: LitI4 4
  loc_63E01E: ILdRf var_D8
  loc_63E021: Ary1StVarCopy
  loc_63E023: LitVarStr var_138, "Junio"
  loc_63E028: LitI4 5
  loc_63E02D: ILdRf var_D8
  loc_63E030: Ary1StVarCopy
  loc_63E032: LitVarStr var_148, "Julio"
  loc_63E037: LitI4 6
  loc_63E03C: ILdRf var_D8
  loc_63E03F: Ary1StVarCopy
  loc_63E041: LitVarStr var_158, "Agosto"
  loc_63E046: LitI4 7
  loc_63E04B: ILdRf var_D8
  loc_63E04E: Ary1StVarCopy
  loc_63E050: LitVarStr var_168, "Septiembre"
  loc_63E055: LitI4 8
  loc_63E05A: ILdRf var_D8
  loc_63E05D: Ary1StVarCopy
  loc_63E05F: LitVarStr var_178, "Octubre"
  loc_63E064: LitI4 9
  loc_63E069: ILdRf var_D8
  loc_63E06C: Ary1StVarCopy
  loc_63E06E: LitVarStr var_188, "Noviembre"
  loc_63E073: LitI4 &HA
  loc_63E078: ILdRf var_D8
  loc_63E07B: Ary1StVarCopy
  loc_63E07D: LitVarStr var_198, "Diciembre"
  loc_63E082: LitI4 &HB
  loc_63E087: ILdRf var_D8
  loc_63E08A: Ary1StVarCopy
  loc_63E08C: FLdRfVar var_D8
  loc_63E08F: FLdI2 var_86
  loc_63E092: CR8I2
  loc_63E093: PopFPR4
  loc_63E094: FLdRfVar var_98
  loc_63E097: ImpAdCallFPR4  = Choose(, )
  loc_63E09C: FLdRfVar var_D8
  loc_63E09F: Erase
  loc_63E0A0: LitVar_Missing var_1A8
  loc_63E0A3: PopAdLdVar
  loc_63E0A4: FLdRfVar var_98
  loc_63E0A7: CStrVarVal var_B0
  loc_63E0AB: FLdPrThis
  loc_63E0AC: VCallAd Control_ID_cboMonth
  loc_63E0AF: FStAdFunc var_AC
  loc_63E0B2: FLdPr var_AC
  loc_63E0B5: Me.AddItem from_stack_1, from_stack_2
  loc_63E0BA: FFree1Str var_B0
  loc_63E0BD: FFree1Ad var_AC
  loc_63E0C0: FFree1Var var_98 = ""
  loc_63E0C3: FLdRfVar var_86
  loc_63E0C6: NextI2 var_D4, loc_63DFC1
  loc_63E0CB: FLdRfVar var_98
  loc_63E0CE: ImpAdCallFPR4  = Date
  loc_63E0D3: FLdRfVar var_98
  loc_63E0D6: FLdRfVar var_A8
  loc_63E0D9: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_63E0DE: FLdRfVar var_A8
  loc_63E0E1: FLdRfVar var_B0
  loc_63E0E4: FLdPrThis
  loc_63E0E5: VCallAd Control_ID_cboYear
  loc_63E0E8: FStAdFunc var_AC
  loc_63E0EB: FLdPr var_AC
  loc_63E0EE:  = Me.Text
  loc_63E0F3: FLdZeroAd var_B0
  loc_63E0F6: CVarStr var_C0
  loc_63E0F9: HardType
  loc_63E0FA: EqVarBool
  loc_63E0FC: FFree1Ad var_AC
  loc_63E0FF: FFreeVar var_98 = "": var_A8 = ""
  loc_63E108: BranchF loc_63E147
  loc_63E10B: FLdRfVar var_98
  loc_63E10E: ImpAdCallFPR4  = Date
  loc_63E113: FLdRfVar var_98
  loc_63E116: FLdRfVar var_A8
  loc_63E119: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_63E11E: FLdRfVar var_A8
  loc_63E121: LitVarI2 var_E8, 1
  loc_63E126: SubVar var_C0
  loc_63E12A: CI2Var
  loc_63E12B: FLdPrThis
  loc_63E12C: VCallAd Control_ID_cboMonth
  loc_63E12F: FStAdFunc var_AC
  loc_63E132: FLdPr var_AC
  loc_63E135: Me.ListIndex = from_stack_1
  loc_63E13A: FFree1Ad var_AC
  loc_63E13D: FFreeVar var_98 = ""
  loc_63E144: Branch loc_63E15B
  loc_63E147: LitI2_Byte 0
  loc_63E149: FLdPrThis
  loc_63E14A: VCallAd Control_ID_cboMonth
  loc_63E14D: FStAdFunc var_AC
  loc_63E150: FLdPr var_AC
  loc_63E153: Me.ListIndex = from_stack_1
  loc_63E158: FFree1Ad var_AC
  loc_63E15B: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5EE95C
  'Data Table: 432B98
  loc_5EE8D0: FLdRfVar var_94
  loc_5EE8D3: ImpAdCallFPR4  = Date
  loc_5EE8D8: LitI4 1
  loc_5EE8DD: LitI4 1
  loc_5EE8E2: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EE8E7: FStVarCopyObj var_B4
  loc_5EE8EA: FLdRfVar var_B4
  loc_5EE8ED: FLdRfVar var_94
  loc_5EE8F0: ImpAdCallI2 Format$(, )
  loc_5EE8F5: FStStrNoPop var_B8
  loc_5EE8F8: FLdPrThis
  loc_5EE8F9: VCallAd Control_ID_lFecha
  loc_5EE8FC: FStAdFunc var_BC
  loc_5EE8FF: FLdPr var_BC
  loc_5EE902: Me.Caption = from_stack_1
  loc_5EE907: FFree1Str var_B8
  loc_5EE90A: FFree1Ad var_BC
  loc_5EE90D: FFreeVar var_94 = ""
  loc_5EE914: FLdRfVar var_94
  loc_5EE917: ImpAdCallFPR4  = Time
  loc_5EE91C: LitI4 1
  loc_5EE921: LitI4 1
  loc_5EE926: LitVarStr var_A4, "hh:mm"
  loc_5EE92B: FStVarCopyObj var_B4
  loc_5EE92E: FLdRfVar var_B4
  loc_5EE931: FLdRfVar var_94
  loc_5EE934: ImpAdCallI2 Format$(, )
  loc_5EE939: FStStrNoPop var_B8
  loc_5EE93C: FLdPrThis
  loc_5EE93D: VCallAd Control_ID_lHora
  loc_5EE940: FStAdFunc var_BC
  loc_5EE943: FLdPr var_BC
  loc_5EE946: Me.Caption = from_stack_1
  loc_5EE94B: FFree1Str var_B8
  loc_5EE94E: FFree1Ad var_BC
  loc_5EE951: FFreeVar var_94 = ""
  loc_5EE958: ExitProcHresult
  loc_5EE959: NewIfNullAd
End Sub

Private Sub Form_Load() '5F2D00
  'Data Table: 432B98
  loc_5F2C58: FLdRfVar var_8C
  loc_5F2C5B: FLdRfVar var_88
  loc_5F2C5E: ImpAdLdRf MemVar_7520D4
  loc_5F2C61: NewIfNullPr Global
  loc_5F2C64:  = Global.Screen
  loc_5F2C69: FLdPr var_88
  loc_5F2C6C:  = Screen.TwipsPerPixelY
  loc_5F2C71: FLdFPR4 var_8C
  loc_5F2C74: LitI2 400
  loc_5F2C77: CR8I2
  loc_5F2C78: MulR8
  loc_5F2C79: PopFPR4
  loc_5F2C7A: FLdPr Me
  loc_5F2C7D: Me.Height = from_stack_1s
  loc_5F2C82: FFree1Ad var_88
  loc_5F2C85: FLdRfVar var_8C
  loc_5F2C88: FLdRfVar var_88
  loc_5F2C8B: ImpAdLdRf MemVar_7520D4
  loc_5F2C8E: NewIfNullPr Global
  loc_5F2C91:  = Global.Screen
  loc_5F2C96: FLdPr var_88
  loc_5F2C99:  = Screen.TwipsPerPixelX
  loc_5F2C9E: FLdFPR4 var_8C
  loc_5F2CA1: LitI2 800
  loc_5F2CA4: CR8I2
  loc_5F2CA5: MulR8
  loc_5F2CA6: PopFPR4
  loc_5F2CA7: FLdPr Me
  loc_5F2CAA: Me.Width = from_stack_1s
  loc_5F2CAF: FFree1Ad var_88
  loc_5F2CB2: LitI2_Byte 0
  loc_5F2CB4: CR8I2
  loc_5F2CB5: PopFPR4
  loc_5F2CB6: FLdPr Me
  loc_5F2CB9: Me.Left = from_stack_1s
  loc_5F2CBE: FLdRfVar var_90
  loc_5F2CC1: FLdPr Me
  loc_5F2CC4:  = Me.Height
  loc_5F2CC9: FLdRfVar var_8C
  loc_5F2CCC: FLdRfVar var_88
  loc_5F2CCF: ImpAdLdRf MemVar_7520D4
  loc_5F2CD2: NewIfNullPr Global
  loc_5F2CD5:  = Global.Screen
  loc_5F2CDA: FLdPr var_88
  loc_5F2CDD:  = Screen.Height
  loc_5F2CE2: FLdFPR4 var_8C
  loc_5F2CE5: FLdFPR4 var_90
  loc_5F2CE8: SubR4
  loc_5F2CE9: CI4R8
  loc_5F2CEA: LitI4 3
  loc_5F2CEF: IDvI4
  loc_5F2CF0: CR8I4
  loc_5F2CF1: PopFPR4
  loc_5F2CF2: FLdPr Me
  loc_5F2CF5: Me.Top = from_stack_1s
  loc_5F2CFA: FFree1Ad var_88
  loc_5F2CFD: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D1C74
  'Data Table: 432B98
  loc_5D1C5C: LitI2_Byte 0
  loc_5D1C5E: FLdPrThis
  loc_5D1C5F: VCallAd Control_ID_Reloj
  loc_5D1C62: FStAdFunc var_88
  loc_5D1C65: FLdPr var_88
  loc_5D1C68: Me.Enabled = from_stack_1b
  loc_5D1C6D: FFree1Ad var_88
  loc_5D1C70: ExitProcHresult
  loc_5D1C71: FLdPrThis
  loc_5D1C72: VCallAd Control_ID_
End Sub

Private Sub Form_Activate() '649C14
  'Data Table: 432B98
  loc_6499A4: LitI2_Byte 0
  loc_6499A6: FLdPrThis
  loc_6499A7: VCallAd Control_ID_lblWait
  loc_6499AA: FStAdFunc var_8C
  loc_6499AD: FLdPr var_8C
  loc_6499B0: Me.Visible = from_stack_1b
  loc_6499B5: FFree1Ad var_8C
  loc_6499B8: LitI2_Byte &HFF
  loc_6499BA: FLdPrThis
  loc_6499BB: VCallAd Control_ID_Reloj
  loc_6499BE: FStAdFunc var_8C
  loc_6499C1: FLdPr var_8C
  loc_6499C4: Me.Enabled = from_stack_1b
  loc_6499C9: FFree1Ad var_8C
  loc_6499CC: FLdPrThis
  loc_6499CD: VCallAd Control_ID_Picture1
  loc_6499D0: FStAdFunc var_9C
  loc_6499D3: FLdRfVar var_90
  loc_6499D6: FLdRfVar var_8C
  loc_6499D9: ImpAdLdRf MemVar_7520D4
  loc_6499DC: NewIfNullPr Global
  loc_6499DF:  = Global.App
  loc_6499E4: FLdPr var_8C
  loc_6499E7:  = App.Path
  loc_6499EC: ILdRf var_90
  loc_6499EF: LitStr "\Logo_Compania.bmp"
  loc_6499F2: ConcatStr
  loc_6499F3: FStStrNoPop var_98
  loc_6499F6: FLdZeroAd var_9C
  loc_6499F9: FStAdFunc var_94
  loc_6499FC: FLdRfVar var_94
  loc_6499FF: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_649A04: FFreeStr var_90 = ""
  loc_649A0B: FFreeAd var_8C = "": var_94 = ""
  loc_649A14: FLdPrThis
  loc_649A15: VCallAd Control_ID_Picture2
  loc_649A18: FStAdFunc var_9C
  loc_649A1B: FLdRfVar var_90
  loc_649A1E: FLdRfVar var_8C
  loc_649A21: ImpAdLdRf MemVar_7520D4
  loc_649A24: NewIfNullPr Global
  loc_649A27:  = Global.App
  loc_649A2C: FLdPr var_8C
  loc_649A2F:  = App.Path
  loc_649A34: ILdRf var_90
  loc_649A37: LitStr "\Logo_Proyecto.bmp"
  loc_649A3A: ConcatStr
  loc_649A3B: FStStrNoPop var_98
  loc_649A3E: FLdZeroAd var_9C
  loc_649A41: FStAdFunc var_94
  loc_649A44: FLdRfVar var_94
  loc_649A47: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_649A4C: FFreeStr var_90 = ""
  loc_649A53: FFreeAd var_8C = "": var_94 = ""
  loc_649A5C: FLdRfVar var_AC
  loc_649A5F: ImpAdCallFPR4  = Date
  loc_649A64: LitI4 1
  loc_649A69: LitI4 1
  loc_649A6E: LitVarStr var_BC, "dd/mm/yyyy"
  loc_649A73: FStVarCopyObj var_CC
  loc_649A76: FLdRfVar var_CC
  loc_649A79: FLdRfVar var_AC
  loc_649A7C: ImpAdCallI2 Format$(, )
  loc_649A81: FStStrNoPop var_90
  loc_649A84: FLdPrThis
  loc_649A85: VCallAd Control_ID_lFecha
  loc_649A88: FStAdFunc var_8C
  loc_649A8B: FLdPr var_8C
  loc_649A8E: Me.Caption = from_stack_1
  loc_649A93: FFree1Str var_90
  loc_649A96: FFree1Ad var_8C
  loc_649A99: FFreeVar var_AC = ""
  loc_649AA0: FLdRfVar var_AC
  loc_649AA3: ImpAdCallFPR4  = Time
  loc_649AA8: LitI4 1
  loc_649AAD: LitI4 1
  loc_649AB2: LitVarStr var_BC, "hh:mm"
  loc_649AB7: FStVarCopyObj var_CC
  loc_649ABA: FLdRfVar var_CC
  loc_649ABD: FLdRfVar var_AC
  loc_649AC0: ImpAdCallI2 Format$(, )
  loc_649AC5: FStStrNoPop var_90
  loc_649AC8: FLdPrThis
  loc_649AC9: VCallAd Control_ID_lHora
  loc_649ACC: FStAdFunc var_8C
  loc_649ACF: FLdPr var_8C
  loc_649AD2: Me.Caption = from_stack_1
  loc_649AD7: FFree1Str var_90
  loc_649ADA: FFree1Ad var_8C
  loc_649ADD: FFreeVar var_AC = ""
  loc_649AE4: FLdRfVar var_CE
  loc_649AE7: FLdRfVar var_88
  loc_649AEA: FLdRfVar var_8C
  loc_649AED: ImpAdLdRf MemVar_74C760
  loc_649AF0: NewIfNullPr Formx
  loc_649AF3: from_stack_1v = Formx.global_4589716Get()
  loc_649AF8: FLdPr var_8C
  loc_649AFB:  = Formx.Picture
  loc_649B00: FLdI2 var_CE
  loc_649B03: NotI4
  loc_649B04: FFree1Ad var_8C
  loc_649B07: BranchF loc_649B36
  loc_649B0A: FLdRfVar var_AC
  loc_649B0D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_649B12: FLdRfVar var_AC
  loc_649B15: CBoolVarNull
  loc_649B17: FFree1Var var_AC = ""
  loc_649B1A: BranchF loc_649B33
  loc_649B1D: ILdRf Me
  loc_649B20: FStAdNoPop
  loc_649B24: ImpAdLdRf MemVar_7520D4
  loc_649B27: NewIfNullPr Global
  loc_649B2A: Global.Unload from_stack_1
  loc_649B2F: FFree1Ad var_8C
  loc_649B32: ExitProcHresult
  loc_649B33: Branch loc_649AE4
  loc_649B36: LitVarI2 var_AC, 30
  loc_649B3B: LitI4 7
  loc_649B40: FLdRfVar var_88
  loc_649B43: CVarRef
  loc_649B48: FLdRfVar var_CC
  loc_649B4B: ImpAdCallFPR4  = Mid(, , )
  loc_649B50: FLdRfVar var_CC
  loc_649B53: FLdRfVar var_F0
  loc_649B56: ImpAdCallFPR4  = Trim()
  loc_649B5B: FLdRfVar var_F0
  loc_649B5E: CStrVarVal var_90
  loc_649B62: FLdPrThis
  loc_649B63: VCallAd Control_ID_lRazonSocial
  loc_649B66: FStAdFunc var_8C
  loc_649B69: FLdPr var_8C
  loc_649B6C: Me.Caption = from_stack_1
  loc_649B71: FFree1Str var_90
  loc_649B74: FFree1Ad var_8C
  loc_649B77: FFreeVar var_AC = "": var_CC = ""
  loc_649B80: LitVar_Missing var_BC
  loc_649B83: PopAdLdVar
  loc_649B84: FLdRfVar var_AC
  loc_649B87: ImpAdCallFPR4  = Date
  loc_649B8C: FLdRfVar var_AC
  loc_649B8F: FLdRfVar var_CC
  loc_649B92: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_649B97: FLdRfVar var_CC
  loc_649B9A: CStrVarVal var_90
  loc_649B9E: FLdPrThis
  loc_649B9F: VCallAd Control_ID_cboYear
  loc_649BA2: FStAdFunc var_8C
  loc_649BA5: FLdPr var_8C
  loc_649BA8: Me.AddItem from_stack_1, from_stack_2
  loc_649BAD: FFree1Str var_90
  loc_649BB0: FFree1Ad var_8C
  loc_649BB3: FFreeVar var_AC = ""
  loc_649BBA: LitVar_Missing var_E0
  loc_649BBD: PopAdLdVar
  loc_649BBE: FLdRfVar var_AC
  loc_649BC1: ImpAdCallFPR4  = Date
  loc_649BC6: FLdRfVar var_AC
  loc_649BC9: FLdRfVar var_CC
  loc_649BCC: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_649BD1: FLdRfVar var_CC
  loc_649BD4: LitVarI2 var_BC, 1
  loc_649BD9: SubVar var_F0
  loc_649BDD: CStrVarVal var_90
  loc_649BE1: FLdPrThis
  loc_649BE2: VCallAd Control_ID_cboYear
  loc_649BE5: FStAdFunc var_8C
  loc_649BE8: FLdPr var_8C
  loc_649BEB: Me.AddItem from_stack_1, from_stack_2
  loc_649BF0: FFree1Str var_90
  loc_649BF3: FFree1Ad var_8C
  loc_649BF6: FFreeVar var_AC = ""
  loc_649BFD: LitI2_Byte 0
  loc_649BFF: FLdPrThis
  loc_649C00: VCallAd Control_ID_cboYear
  loc_649C03: FStAdFunc var_8C
  loc_649C06: FLdPr var_8C
  loc_649C09: Me.ListIndex = from_stack_1
  loc_649C0E: FFree1Ad var_8C
  loc_649C11: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '6F3FC0
  'Data Table: 432B98
  loc_6F31B0: FLdRfVar var_9C
  loc_6F31B3: FLdPrThis
  loc_6F31B4: VCallAd Control_ID_cboYear
  loc_6F31B7: FStAdFunc var_98
  loc_6F31BA: FLdPr var_98
  loc_6F31BD:  = Me.Text
  loc_6F31C2: FLdRfVar var_D2
  loc_6F31C5: FLdPrThis
  loc_6F31C6: VCallAd Control_ID_cboMonth
  loc_6F31C9: FStAdFunc var_D0
  loc_6F31CC: FLdPr var_D0
  loc_6F31CF:  = Me.ListIndex
  loc_6F31D4: LitI4 1
  loc_6F31D9: LitI4 1
  loc_6F31DE: LitVarStr var_BC, "0000"
  loc_6F31E3: FStVarCopyObj var_CC
  loc_6F31E6: FLdRfVar var_CC
  loc_6F31E9: FLdZeroAd var_9C
  loc_6F31EC: CVarStr var_AC
  loc_6F31EF: ImpAdCallI2 Format$(, )
  loc_6F31F4: FStStrNoPop var_118
  loc_6F31F7: LitI4 1
  loc_6F31FC: LitI4 1
  loc_6F3201: LitVarStr var_104, "00"
  loc_6F3206: FStVarCopyObj var_114
  loc_6F3209: FLdRfVar var_114
  loc_6F320C: FLdI2 var_D2
  loc_6F320F: LitI2_Byte 1
  loc_6F3211: AddI2
  loc_6F3212: CVarI2 var_F4
  loc_6F3215: ImpAdCallI2 Format$(, )
  loc_6F321A: FStStrNoPop var_11C
  loc_6F321D: ConcatStr
  loc_6F321E: FStStr var_8C
  loc_6F3221: FFreeStr var_118 = ""
  loc_6F3228: FFreeAd var_98 = ""
  loc_6F322F: FFreeVar var_AC = "": var_CC = "": var_F4 = ""
  loc_6F323A: FLdRfVar var_AC
  loc_6F323D: FLdRfVar var_88
  loc_6F3240: ILdRf var_8C
  loc_6F3243: FLdRfVar var_98
  loc_6F3246: ImpAdLdRf MemVar_74C760
  loc_6F3249: NewIfNullPr Formx
  loc_6F324C: from_stack_1v = Formx.global_4589716Get()
  loc_6F3251: FLdPr var_98
  loc_6F3254: Call 0.Method_arg_1F0 ()
  loc_6F3259: FLdRfVar var_AC
  loc_6F325C: NotVar var_CC
  loc_6F3260: CBoolVarNull
  loc_6F3262: FFree1Ad var_98
  loc_6F3265: FFree1Var var_AC = ""
  loc_6F3268: BranchF loc_6F3296
  loc_6F326B: FLdRfVar var_AC
  loc_6F326E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F3273: FLdRfVar var_AC
  loc_6F3276: CBoolVarNull
  loc_6F3278: FFree1Var var_AC = ""
  loc_6F327B: BranchF loc_6F3293
  loc_6F327E: LitI2_Byte 0
  loc_6F3280: FLdPrThis
  loc_6F3281: VCallAd Control_ID_Image2
  loc_6F3284: FStAdFunc var_98
  loc_6F3287: FLdPr var_98
  loc_6F328A: Formx.Label.Visible = from_stack_1b
  loc_6F328F: FFree1Ad var_98
  loc_6F3292: ExitProcHresult
  loc_6F3293: Branch loc_6F323A
  loc_6F3296: FLdRfVar var_88
  loc_6F3299: CVarRef
  loc_6F329E: FLdRfVar var_AC
  loc_6F32A1: ImpAdCallFPR4  = Trim()
  loc_6F32A6: FLdRfVar var_AC
  loc_6F32A9: CStrVarTmp
  loc_6F32AA: FStStr var_88
  loc_6F32AD: FFree1Var var_AC = ""
  loc_6F32B0: ILdRf var_88
  loc_6F32B3: FnLenStr
  loc_6F32B4: LitI4 1
  loc_6F32B9: EqI4
  loc_6F32BA: BranchF loc_6F333B
  loc_6F32BD: FLdRfVar var_9C
  loc_6F32C0: FLdPrThis
  loc_6F32C1: VCallAd Control_ID_cboMonth
  loc_6F32C4: FStAdFunc var_98
  loc_6F32C7: FLdPr var_98
  loc_6F32CA:  = Me.Text
  loc_6F32CF: FLdRfVar var_11C
  loc_6F32D2: FLdPrThis
  loc_6F32D3: VCallAd Control_ID_cboYear
  loc_6F32D6: FStAdFunc var_D0
  loc_6F32D9: FLdPr var_D0
  loc_6F32DC:  = Me.Text
  loc_6F32E1: LitVar_Missing var_114
  loc_6F32E4: LitVar_Missing var_F4
  loc_6F32E7: LitVarStr var_BC, "Control de Existencias de Productos"
  loc_6F32EC: FStVarCopyObj var_CC
  loc_6F32EF: FLdRfVar var_CC
  loc_6F32F2: LitI4 &H40
  loc_6F32F7: LitStr "No hay datos para "
  loc_6F32FA: ILdRf var_9C
  loc_6F32FD: ConcatStr
  loc_6F32FE: FStStrNoPop var_118
  loc_6F3301: LitStr " de "
  loc_6F3304: ConcatStr
  loc_6F3305: FStStrNoPop var_120
  loc_6F3308: ILdRf var_11C
  loc_6F330B: ConcatStr
  loc_6F330C: FStStrNoPop var_124
  loc_6F330F: LitStr ". Verifique por favor."
  loc_6F3312: ConcatStr
  loc_6F3313: CVarStr var_AC
  loc_6F3316: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F331B: FFreeStr var_9C = "": var_118 = "": var_120 = "": var_11C = ""
  loc_6F3328: FFreeAd var_98 = ""
  loc_6F332F: FFreeVar var_AC = "": var_CC = "": var_F4 = ""
  loc_6F333A: ExitProcHresult
  loc_6F333B: LitI2_Byte &HFF
  loc_6F333D: FLdPrThis
  loc_6F333E: VCallAd Control_ID_lblWait
  loc_6F3341: FStAdFunc var_98
  loc_6F3344: FLdPr var_98
  loc_6F3347: Me.Visible = from_stack_1b
  loc_6F334C: FFree1Ad var_98
  loc_6F334F: LitI2_Byte 0
  loc_6F3351: FStI2 var_1AA
  loc_6F3354: FLdRfVar var_9C
  loc_6F3357: FLdPrThis
  loc_6F3358: VCallAd Control_ID_lRazonSocial
  loc_6F335B: FStAdFunc var_98
  loc_6F335E: FLdPr var_98
  loc_6F3361:  = Me.Caption
  loc_6F3366: FLdZeroAd var_9C
  loc_6F3369: CVarStr var_AC
  loc_6F336C: FStVar var_140
  loc_6F3370: FFree1Ad var_98
  loc_6F3373: FLdRfVar var_9C
  loc_6F3376: FLdPrThis
  loc_6F3377: VCallAd Control_ID_cboMonth
  loc_6F337A: FStAdFunc var_98
  loc_6F337D: FLdPr var_98
  loc_6F3380:  = Me.Text
  loc_6F3385: ILdRf var_9C
  loc_6F3388: LitStr " de "
  loc_6F338B: ConcatStr
  loc_6F338C: FStStrNoPop var_11C
  loc_6F338F: FLdRfVar var_118
  loc_6F3392: FLdPrThis
  loc_6F3393: VCallAd Control_ID_cboYear
  loc_6F3396: FStAdFunc var_D0
  loc_6F3399: FLdPr var_D0
  loc_6F339C:  = Me.Text
  loc_6F33A1: ILdRf var_118
  loc_6F33A4: ConcatStr
  loc_6F33A5: CVarStr var_AC
  loc_6F33A8: FStVar var_150
  loc_6F33AC: FFreeStr var_9C = "": var_11C = ""
  loc_6F33B5: FFreeAd var_98 = ""
  loc_6F33BC: FLdRfVar var_9C
  loc_6F33BF: FLdRfVar var_98
  loc_6F33C2: ImpAdLdRf MemVar_7520D4
  loc_6F33C5: NewIfNullPr Global
  loc_6F33C8:  = Global.App
  loc_6F33CD: FLdPr var_98
  loc_6F33D0:  = App.Path
  loc_6F33D5: FLdRfVar var_D0
  loc_6F33D8: LitVar_Missing var_104
  loc_6F33DB: PopAdLdVar
  loc_6F33DC: LitVar_FALSE
  loc_6F33E0: PopAdLdVar
  loc_6F33E1: LitVar_TRUE var_BC
  loc_6F33E4: PopAdLdVar
  loc_6F33E5: ILdRf var_9C
  loc_6F33E8: LitStr "\ExistenciasProductos.mdb"
  loc_6F33EB: ConcatStr
  loc_6F33EC: FStStrNoPop var_118
  loc_6F33EF: ImpAdLdRf MemVar_752164
  loc_6F33F2: NewIfNullPr Me
  loc_6F33F5: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6F33FA: FLdZeroAd var_D0
  loc_6F33FD: FStAdFunc var_128
  loc_6F3400: FFreeStr var_9C = ""
  loc_6F3407: FFree1Ad var_98
  loc_6F340A: LitStr "DELETE * FROM Descripcion"
  loc_6F340D: FStStrCopy var_130
  loc_6F3410: LitVar_Missing var_BC
  loc_6F3413: PopAdLdVar
  loc_6F3414: ILdRf var_130
  loc_6F3417: FLdPr var_128
  loc_6F341A: Me.Execute from_stack_1, from_stack_2
  loc_6F341F: LitStr "DELETE * FROM Existencias"
  loc_6F3422: FStStrCopy var_130
  loc_6F3425: LitVar_Missing var_BC
  loc_6F3428: PopAdLdVar
  loc_6F3429: ILdRf var_130
  loc_6F342C: FLdPr var_128
  loc_6F342F: Me.Execute from_stack_1, from_stack_2
  loc_6F3434: LitStr "DELETE * FROM Productos"
  loc_6F3437: FStStrCopy var_130
  loc_6F343A: LitVar_Missing var_BC
  loc_6F343D: PopAdLdVar
  loc_6F343E: ILdRf var_130
  loc_6F3441: FLdPr var_128
  loc_6F3444: Me.Execute from_stack_1, from_stack_2
  loc_6F3449: LitVarStr var_BC, "INSERT INTO Descripcion (EESS, Mes) VALUES ('"
  loc_6F344E: FLdRfVar var_140
  loc_6F3451: ConcatVar var_AC
  loc_6F3455: LitVarStr var_E4, "', '"
  loc_6F345A: ConcatVar var_CC
  loc_6F345E: FLdRfVar var_150
  loc_6F3461: ConcatVar var_F4
  loc_6F3465: LitVarStr var_104, "')"
  loc_6F346A: ConcatVar var_114
  loc_6F346E: CStrVarTmp
  loc_6F346F: FStStr var_130
  loc_6F3472: FFreeVar var_AC = "": var_CC = "": var_F4 = ""
  loc_6F347D: LitVar_Missing var_BC
  loc_6F3480: PopAdLdVar
  loc_6F3481: ILdRf var_130
  loc_6F3484: FLdPr var_128
  loc_6F3487: Me.Execute from_stack_1, from_stack_2
  loc_6F348C: LitI4 1
  loc_6F3491: FStR4 var_90
  loc_6F3494: ILdRf var_90
  loc_6F3497: ILdRf var_88
  loc_6F349A: FnLenStr
  loc_6F349B: LtI4
  loc_6F349C: BranchF loc_6F3EE7
  loc_6F349F: LitI2_Byte 0
  loc_6F34A1: FStI2 var_92
  loc_6F34A4: LitVarI2 var_AC, 2
  loc_6F34A9: ILdRf var_90
  loc_6F34AC: ILdRf var_88
  loc_6F34AF: ImpAdCallI2 Mid$(, , )
  loc_6F34B4: FStStrNoPop var_9C
  loc_6F34B7: ImpAdCallFPR4 push Val()
  loc_6F34BC: CI2R8
  loc_6F34BD: FStI2 var_1A6
  loc_6F34C0: FFree1Str var_9C
  loc_6F34C3: FFree1Var var_AC = ""
  loc_6F34C6: ILdRf var_90
  loc_6F34C9: LitI4 2
  loc_6F34CE: AddI4
  loc_6F34CF: FStR4 var_90
  loc_6F34D2: LitVarI2 var_AC, 2
  loc_6F34D7: ILdRf var_90
  loc_6F34DA: ILdRf var_88
  loc_6F34DD: ImpAdCallI2 Mid$(, , )
  loc_6F34E2: FStStrNoPop var_9C
  loc_6F34E5: ImpAdCallFPR4 push Val()
  loc_6F34EA: CVarR8
  loc_6F34EE: FStVar var_160
  loc_6F34F2: FFree1Str var_9C
  loc_6F34F5: FFree1Var var_AC = ""
  loc_6F34F8: LitVarI2 var_AC, 2
  loc_6F34FD: ILdRf var_90
  loc_6F3500: LitI4 2
  loc_6F3505: AddI4
  loc_6F3506: ILdRf var_88
  loc_6F3509: ImpAdCallI2 Mid$(, , )
  loc_6F350E: FStStrNoPop var_9C
  loc_6F3511: ImpAdCallFPR4 push Val()
  loc_6F3516: CR8R8
  loc_6F3517: LitI2_Byte 0
  loc_6F3519: CR8I2
  loc_6F351A: GtR4
  loc_6F351B: FFree1Str var_9C
  loc_6F351E: FFree1Var var_AC = ""
  loc_6F3521: BranchF loc_6F3564
  loc_6F3524: FLdRfVar var_160
  loc_6F3527: LitVarStr var_BC, " - "
  loc_6F352C: ConcatVar var_AC
  loc_6F3530: LitVarI2 var_CC, 2
  loc_6F3535: ILdRf var_90
  loc_6F3538: LitI4 2
  loc_6F353D: AddI4
  loc_6F353E: ILdRf var_88
  loc_6F3541: ImpAdCallI2 Mid$(, , )
  loc_6F3546: FStStrNoPop var_9C
  loc_6F3549: ImpAdCallFPR4 push Val()
  loc_6F354E: CVarR8
  loc_6F3552: ConcatVar var_F4
  loc_6F3556: FStVar var_160
  loc_6F355A: FFree1Str var_9C
  loc_6F355D: FFreeVar var_CC = ""
  loc_6F3564: LitVarI2 var_AC, 2
  loc_6F3569: ILdRf var_90
  loc_6F356C: LitI4 4
  loc_6F3571: AddI4
  loc_6F3572: ILdRf var_88
  loc_6F3575: ImpAdCallI2 Mid$(, , )
  loc_6F357A: FStStrNoPop var_9C
  loc_6F357D: ImpAdCallFPR4 push Val()
  loc_6F3582: CR8R8
  loc_6F3583: LitI2_Byte 0
  loc_6F3585: CR8I2
  loc_6F3586: GtR4
  loc_6F3587: FFree1Str var_9C
  loc_6F358A: FFree1Var var_AC = ""
  loc_6F358D: BranchF loc_6F35D0
  loc_6F3590: FLdRfVar var_160
  loc_6F3593: LitVarStr var_BC, " - "
  loc_6F3598: ConcatVar var_AC
  loc_6F359C: LitVarI2 var_CC, 2
  loc_6F35A1: ILdRf var_90
  loc_6F35A4: LitI4 4
  loc_6F35A9: AddI4
  loc_6F35AA: ILdRf var_88
  loc_6F35AD: ImpAdCallI2 Mid$(, , )
  loc_6F35B2: FStStrNoPop var_9C
  loc_6F35B5: ImpAdCallFPR4 push Val()
  loc_6F35BA: CVarR8
  loc_6F35BE: ConcatVar var_F4
  loc_6F35C2: FStVar var_160
  loc_6F35C6: FFree1Str var_9C
  loc_6F35C9: FFreeVar var_CC = ""
  loc_6F35D0: ILdRf var_90
  loc_6F35D3: LitI4 6
  loc_6F35D8: AddI4
  loc_6F35D9: FStR4 var_90
  loc_6F35DC: LitVarI2 var_AC, 20
  loc_6F35E1: ILdRf var_90
  loc_6F35E4: ILdRf var_88
  loc_6F35E7: ImpAdCallI2 Mid$(, , )
  loc_6F35EC: FStStrNoPop var_9C
  loc_6F35EF: ImpAdCallI2 Trim$()
  loc_6F35F4: CVarStr var_CC
  loc_6F35F7: FStVar var_170
  loc_6F35FB: FFree1Str var_9C
  loc_6F35FE: FFree1Var var_AC = ""
  loc_6F3601: ILdRf var_90
  loc_6F3604: LitI4 &H14
  loc_6F3609: AddI4
  loc_6F360A: FStR4 var_90
  loc_6F360D: LitVarStr var_BC, vbNullString
  loc_6F3612: FStVarCopy
  loc_6F3616: LitI2_Byte 0
  loc_6F3618: FLdRfVar var_1A8
  loc_6F361B: LitI2_Byte &H1F
  loc_6F361D: ForI2 var_1AE
  loc_6F3623: LitVarI2 var_AC, 1
  loc_6F3628: ILdRf var_90
  loc_6F362B: FLdI2 var_1A8
  loc_6F362E: CI4UI1
  loc_6F362F: AddI4
  loc_6F3630: ILdRf var_88
  loc_6F3633: ImpAdCallI2 Mid$(, , )
  loc_6F3638: FStStr var_184
  loc_6F363B: FFree1Var var_AC = ""
  loc_6F363E: FLdRfVar var_184
  loc_6F3641: CVarRef
  loc_6F3646: ImpAdCallI2 IsNumeric()
  loc_6F364B: NotI4
  loc_6F364C: BranchF loc_6F3680
  loc_6F364F: FLdRfVar var_180
  loc_6F3652: FLdI2 var_1A8
  loc_6F3655: LitI2_Byte 1
  loc_6F3657: AddI2
  loc_6F3658: CVarI2 var_BC
  loc_6F365B: ConcatVar var_AC
  loc_6F365F: ILdRf var_184
  loc_6F3662: CVarStr var_E4
  loc_6F3665: ConcatVar var_CC
  loc_6F3669: LitVarStr var_104, " - "
  loc_6F366E: ConcatVar var_F4
  loc_6F3672: FStVar var_180
  loc_6F3676: FFreeVar var_AC = ""
  loc_6F367D: Branch loc_6F3738
  loc_6F3680: ILdRf var_184
  loc_6F3683: CI2Str
  loc_6F3685: LitI2_Byte 1
  loc_6F3687: AndI4
  loc_6F3688: LitI2_Byte 1
  loc_6F368A: EqI2
  loc_6F368B: BranchF loc_6F36AE
  loc_6F368E: FLdRfVar var_180
  loc_6F3691: FLdI2 var_1A8
  loc_6F3694: LitI2_Byte 1
  loc_6F3696: AddI2
  loc_6F3697: CVarI2 var_BC
  loc_6F369A: ConcatVar var_AC
  loc_6F369E: LitVarStr var_E4, "A - "
  loc_6F36A3: ConcatVar var_CC
  loc_6F36A7: FStVar var_180
  loc_6F36AB: FFree1Var var_AC = ""
  loc_6F36AE: ILdRf var_184
  loc_6F36B1: CI2Str
  loc_6F36B3: LitI2_Byte 2
  loc_6F36B5: AndI4
  loc_6F36B6: LitI2_Byte 2
  loc_6F36B8: EqI2
  loc_6F36B9: BranchF loc_6F36DC
  loc_6F36BC: FLdRfVar var_180
  loc_6F36BF: FLdI2 var_1A8
  loc_6F36C2: LitI2_Byte 1
  loc_6F36C4: AddI2
  loc_6F36C5: CVarI2 var_BC
  loc_6F36C8: ConcatVar var_AC
  loc_6F36CC: LitVarStr var_E4, "B - "
  loc_6F36D1: ConcatVar var_CC
  loc_6F36D5: FStVar var_180
  loc_6F36D9: FFree1Var var_AC = ""
  loc_6F36DC: ILdRf var_184
  loc_6F36DF: CI2Str
  loc_6F36E1: LitI2_Byte 4
  loc_6F36E3: AndI4
  loc_6F36E4: LitI2_Byte 4
  loc_6F36E6: EqI2
  loc_6F36E7: BranchF loc_6F370A
  loc_6F36EA: FLdRfVar var_180
  loc_6F36ED: FLdI2 var_1A8
  loc_6F36F0: LitI2_Byte 1
  loc_6F36F2: AddI2
  loc_6F36F3: CVarI2 var_BC
  loc_6F36F6: ConcatVar var_AC
  loc_6F36FA: LitVarStr var_E4, "C - "
  loc_6F36FF: ConcatVar var_CC
  loc_6F3703: FStVar var_180
  loc_6F3707: FFree1Var var_AC = ""
  loc_6F370A: ILdRf var_184
  loc_6F370D: CI2Str
  loc_6F370F: LitI2_Byte 8
  loc_6F3711: AndI4
  loc_6F3712: LitI2_Byte 8
  loc_6F3714: EqI2
  loc_6F3715: BranchF loc_6F3738
  loc_6F3718: FLdRfVar var_180
  loc_6F371B: FLdI2 var_1A8
  loc_6F371E: LitI2_Byte 1
  loc_6F3720: AddI2
  loc_6F3721: CVarI2 var_BC
  loc_6F3724: ConcatVar var_AC
  loc_6F3728: LitVarStr var_E4, "D - "
  loc_6F372D: ConcatVar var_CC
  loc_6F3731: FStVar var_180
  loc_6F3735: FFree1Var var_AC = ""
  loc_6F3738: FLdRfVar var_1A8
  loc_6F373B: NextI2 var_1AE, loc_6F3623
  loc_6F3740: FLdRfVar var_180
  loc_6F3743: FnLenVar var_AC
  loc_6F3747: LitVarI2 var_BC, 0
  loc_6F374C: HardType
  loc_6F374D: GtVarBool
  loc_6F374F: BranchF loc_6F3787
  loc_6F3752: FLdRfVar var_180
  loc_6F3755: FnLenVar var_AC
  loc_6F3759: LitVarI2 var_BC, 3
  loc_6F375E: SubVar var_CC
  loc_6F3762: FStVar var_F4
  loc_6F3766: FLdRfVar var_F4
  loc_6F3769: LitI4 1
  loc_6F376E: FLdRfVar var_180
  loc_6F3771: CStrVarVal var_9C
  loc_6F3775: ImpAdCallI2 Mid$(, , )
  loc_6F377A: CVarStr var_114
  loc_6F377D: FStVar var_180
  loc_6F3781: FFree1Str var_9C
  loc_6F3784: FFree1Var var_F4 = ""
  loc_6F3787: ILdRf var_90
  loc_6F378A: LitI4 &H20
  loc_6F378F: AddI4
  loc_6F3790: FStR4 var_90
  loc_6F3793: LitVarI2 var_AC, 9
  loc_6F3798: ILdRf var_90
  loc_6F379B: ILdRf var_88
  loc_6F379E: ImpAdCallI2 Mid$(, , )
  loc_6F37A3: FStStrNoPop var_9C
  loc_6F37A6: CR8Str
  loc_6F37A8: LitI2_Byte &H64
  loc_6F37AA: CR8I2
  loc_6F37AB: DivR8
  loc_6F37AC: FStFPR4 var_188
  loc_6F37AF: FFree1Str var_9C
  loc_6F37B2: FFree1Var var_AC = ""
  loc_6F37B5: ILdRf var_90
  loc_6F37B8: LitI4 9
  loc_6F37BD: AddI4
  loc_6F37BE: FStR4 var_90
  loc_6F37C1: LitVarI2 var_AC, 9
  loc_6F37C6: ILdRf var_90
  loc_6F37C9: ILdRf var_88
  loc_6F37CC: ImpAdCallI2 Mid$(, , )
  loc_6F37D1: FStStrNoPop var_9C
  loc_6F37D4: CR8Str
  loc_6F37D6: LitI2_Byte &H64
  loc_6F37D8: CR8I2
  loc_6F37D9: DivR8
  loc_6F37DA: FStFPR4 var_18C
  loc_6F37DD: FFree1Str var_9C
  loc_6F37E0: FFree1Var var_AC = ""
  loc_6F37E3: ILdRf var_90
  loc_6F37E6: LitI4 9
  loc_6F37EB: AddI4
  loc_6F37EC: FStR4 var_90
  loc_6F37EF: LitVarI2 var_AC, 9
  loc_6F37F4: ILdRf var_90
  loc_6F37F7: ILdRf var_88
  loc_6F37FA: ImpAdCallI2 Mid$(, , )
  loc_6F37FF: FStStrNoPop var_9C
  loc_6F3802: CR8Str
  loc_6F3804: LitI2_Byte &H64
  loc_6F3806: CR8I2
  loc_6F3807: DivR8
  loc_6F3808: FStFPR4 var_190
  loc_6F380B: FFree1Str var_9C
  loc_6F380E: FFree1Var var_AC = ""
  loc_6F3811: ILdRf var_90
  loc_6F3814: LitI4 9
  loc_6F3819: AddI4
  loc_6F381A: FStR4 var_90
  loc_6F381D: LitVarI2 var_AC, 9
  loc_6F3822: ILdRf var_90
  loc_6F3825: ILdRf var_88
  loc_6F3828: ImpAdCallI2 Mid$(, , )
  loc_6F382D: FStStrNoPop var_9C
  loc_6F3830: CR8Str
  loc_6F3832: LitI2_Byte &H64
  loc_6F3834: CR8I2
  loc_6F3835: DivR8
  loc_6F3836: FStFPR4 var_194
  loc_6F3839: FFree1Str var_9C
  loc_6F383C: FFree1Var var_AC = ""
  loc_6F383F: ILdRf var_90
  loc_6F3842: LitI4 9
  loc_6F3847: AddI4
  loc_6F3848: FStR4 var_90
  loc_6F384B: LitVarI2 var_AC, 6
  loc_6F3850: ILdRf var_90
  loc_6F3853: ILdRf var_88
  loc_6F3856: ImpAdCallI2 Mid$(, , )
  loc_6F385B: FStStrNoPop var_9C
  loc_6F385E: CR8Str
  loc_6F3860: LitI2_Byte &H64
  loc_6F3862: CR8I2
  loc_6F3863: DivR8
  loc_6F3864: FStFPR4 var_198
  loc_6F3867: FFree1Str var_9C
  loc_6F386A: FFree1Var var_AC = ""
  loc_6F386D: ILdRf var_90
  loc_6F3870: LitI4 6
  loc_6F3875: AddI4
  loc_6F3876: FStR4 var_90
  loc_6F3879: FLdFPR4 var_188
  loc_6F387C: LitI2_Byte 0
  loc_6F387E: CR8I2
  loc_6F387F: EqR4
  loc_6F3880: BranchF loc_6F3896
  loc_6F3883: FLdFPR4 var_194
  loc_6F3886: FLdFPR4 var_18C
  loc_6F3889: SubR4
  loc_6F388A: FLdFPR4 var_190
  loc_6F388D: AddR8
  loc_6F388E: FStFPR4 var_188
  loc_6F3891: LitI2_Byte &HFF
  loc_6F3893: FStI2 var_92
  loc_6F3896: FLdRfVar var_1AA
  loc_6F3899: FLdRfVar var_180
  loc_6F389C: CStrVarVal var_11C
  loc_6F38A0: FLdRfVar var_170
  loc_6F38A3: CStrVarVal var_118
  loc_6F38A7: FLdRfVar var_160
  loc_6F38AA: CStrVarVal var_9C
  loc_6F38AE: FLdRfVar var_128
  loc_6F38B1: from_stack_5v = Proc_43_7_64706C(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6F38B6: FFreeStr var_9C = "": var_118 = ""
  loc_6F38BF: FLdRfVar var_1A4
  loc_6F38C2: FLdRfVar var_1A0
  loc_6F38C5: FLdRfVar var_19C
  loc_6F38C8: FLdI2 var_1AA
  loc_6F38CB: FLdRfVar var_128
  loc_6F38CE: from_stack_6v = Proc_43_8_61FE14(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_6F38D3: FLdFPR4 var_19C
  loc_6F38D6: FLdFPR4 var_190
  loc_6F38D9: AddR8
  loc_6F38DA: FStFPR4 var_19C
  loc_6F38DD: FLdFPR4 var_1A0
  loc_6F38E0: FLdFPR4 var_194
  loc_6F38E3: AddR8
  loc_6F38E4: FLdFPR4 var_188
  loc_6F38E7: FLdFPR4 var_18C
  loc_6F38EA: AddR8
  loc_6F38EB: FLdFPR4 var_190
  loc_6F38EE: SubR4
  loc_6F38EF: SubR4
  loc_6F38F0: FStFPR4 var_1A0
  loc_6F38F3: FLdFPR4 var_19C
  loc_6F38F6: FnAbsR4
  loc_6F38F7: CR4R4
  loc_6F38F8: LitDate 0.001
  loc_6F3901: CR4R4
  loc_6F3902: GtR4
  loc_6F3903: BranchF loc_6F3918
  loc_6F3906: FLdFPR4 var_1A4
  loc_6F3909: FLdFPR4 var_1A0
  loc_6F390C: LitI2_Byte &H64
  loc_6F390E: CR8I2
  loc_6F390F: MulR8
  loc_6F3910: FLdFPR4 var_19C
  loc_6F3913: DivR8
  loc_6F3914: AddR8
  loc_6F3915: FStFPR4 var_1A4
  loc_6F3918: LitStr "SELECT * FROM EXISTENCIAS WHERE CLAVE = "
  loc_6F391B: FLdI2 var_1AA
  loc_6F391E: CStrUI1
  loc_6F3920: FStStrNoPop var_9C
  loc_6F3923: ConcatStr
  loc_6F3924: FStStrNoPop var_118
  loc_6F3927: LitStr " AND DIA = "
  loc_6F392A: ConcatStr
  loc_6F392B: FStStrNoPop var_11C
  loc_6F392E: FLdI2 var_1A6
  loc_6F3931: CStrUI1
  loc_6F3933: FStStrNoPop var_120
  loc_6F3936: ConcatStr
  loc_6F3937: FStStr var_130
  loc_6F393A: FFreeStr var_9C = "": var_118 = "": var_11C = ""
  loc_6F3945: FLdRfVar var_98
  loc_6F3948: LitVar_Missing var_104
  loc_6F394B: PopAdLdVar
  loc_6F394C: LitVar_Missing var_E4
  loc_6F394F: PopAdLdVar
  loc_6F3950: LitVarI4
  loc_6F3958: PopAdLdVar
  loc_6F3959: ILdRf var_130
  loc_6F395C: FLdPr var_128
  loc_6F395F: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6F3964: FLdZeroAd var_98
  loc_6F3967: FStAdFunc var_12C
  loc_6F396A: FLdRfVar var_D2
  loc_6F396D: FLdPr var_12C
  loc_6F3970:  = Me.BOF
  loc_6F3975: FLdI2 var_D2
  loc_6F3978: FLdRfVar var_1B0
  loc_6F397B: FLdPr var_12C
  loc_6F397E:  = Me.EOF
  loc_6F3983: FLdI2 var_1B0
  loc_6F3986: AndI4
  loc_6F3987: NotI4
  loc_6F3988: BranchF loc_6F3C23
  loc_6F398B: LitI4 1
  loc_6F3990: LitI4 1
  loc_6F3995: LitVarStr var_338, "0.00"
  loc_6F399A: FStVarCopyObj var_348
  loc_6F399D: FLdRfVar var_348
  loc_6F39A0: FLdRfVar var_188
  loc_6F39A3: CVarRef
  loc_6F39A8: FLdRfVar var_358
  loc_6F39AB: ImpAdCallFPR4  = Format(, )
  loc_6F39B0: FLdRfVar var_358
  loc_6F39B3: CStrVarTmp
  loc_6F39B4: PopTmpLdAdStr
  loc_6F39B8: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F39BD: FStStr var_454
  loc_6F39C0: LitStr "UPDATE EXISTENCIAS "
  loc_6F39C3: LitStr "SET [Recepcion y Pruebas] = [Recepcion y Pruebas] + "
  loc_6F39C6: ConcatStr
  loc_6F39C7: FStStrNoPop var_118
  loc_6F39CA: LitI4 1
  loc_6F39CF: LitI4 1
  loc_6F39D4: LitVarStr var_E4, "0.00"
  loc_6F39D9: FStVarCopyObj var_AC
  loc_6F39DC: FLdRfVar var_AC
  loc_6F39DF: FLdRfVar var_18C
  loc_6F39E2: CVarRef
  loc_6F39E7: FLdRfVar var_CC
  loc_6F39EA: ImpAdCallFPR4  = Format(, )
  loc_6F39EF: FLdRfVar var_CC
  loc_6F39F2: CStrVarTmp
  loc_6F39F3: PopTmpLdAdStr
  loc_6F39F7: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F39FC: FStStrNoPop var_11C
  loc_6F39FF: ConcatStr
  loc_6F3A00: FStStrNoPop var_120
  loc_6F3A03: LitStr ", [Ventas Medidas] = [Ventas Medidas] + "
  loc_6F3A06: ConcatStr
  loc_6F3A07: FStStrNoPop var_1C4
  loc_6F3A0A: LitI4 1
  loc_6F3A0F: LitI4 1
  loc_6F3A14: LitVarStr var_1C0, "0.00"
  loc_6F3A19: FStVarCopyObj var_F4
  loc_6F3A1C: FLdRfVar var_F4
  loc_6F3A1F: FLdRfVar var_190
  loc_6F3A22: CVarRef
  loc_6F3A27: FLdRfVar var_114
  loc_6F3A2A: ImpAdCallFPR4  = Format(, )
  loc_6F3A2F: FLdRfVar var_114
  loc_6F3A32: CStrVarTmp
  loc_6F3A33: PopTmpLdAdStr
  loc_6F3A37: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3A3C: FStStrNoPop var_1C8
  loc_6F3A3F: ConcatStr
  loc_6F3A40: FStStrNoPop var_1CC
  loc_6F3A43: LitStr ", [Medicion Real] = "
  loc_6F3A46: ConcatStr
  loc_6F3A47: FStStrNoPop var_214
  loc_6F3A4A: LitI4 1
  loc_6F3A4F: LitI4 1
  loc_6F3A54: LitVarStr var_1EC, "0.00"
  loc_6F3A59: FStVarCopyObj var_1FC
  loc_6F3A5C: FLdRfVar var_1FC
  loc_6F3A5F: FLdRfVar var_194
  loc_6F3A62: CVarRef
  loc_6F3A67: FLdRfVar var_20C
  loc_6F3A6A: ImpAdCallFPR4  = Format(, )
  loc_6F3A6F: FLdRfVar var_20C
  loc_6F3A72: CStrVarTmp
  loc_6F3A73: PopTmpLdAdStr
  loc_6F3A77: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3A7C: FStStrNoPop var_218
  loc_6F3A7F: ConcatStr
  loc_6F3A80: FStStrNoPop var_21C
  loc_6F3A83: LitStr ", AcumVentas = AcumVentas + "
  loc_6F3A86: ConcatStr
  loc_6F3A87: FStStrNoPop var_264
  loc_6F3A8A: LitI4 1
  loc_6F3A8F: LitI4 1
  loc_6F3A94: LitVarStr var_23C, "0.00"
  loc_6F3A99: FStVarCopyObj var_24C
  loc_6F3A9C: FLdRfVar var_24C
  loc_6F3A9F: FLdRfVar var_190
  loc_6F3AA2: CVarRef
  loc_6F3AA7: FLdRfVar var_25C
  loc_6F3AAA: ImpAdCallFPR4  = Format(, )
  loc_6F3AAF: FLdRfVar var_25C
  loc_6F3AB2: CStrVarTmp
  loc_6F3AB3: PopTmpLdAdStr
  loc_6F3AB7: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3ABC: FStStrNoPop var_268
  loc_6F3ABF: ConcatStr
  loc_6F3AC0: FStStrNoPop var_26C
  loc_6F3AC3: LitStr ", AcumLitros = AcumLitros + "
  loc_6F3AC6: ConcatStr
  loc_6F3AC7: FStStrNoPop var_2C4
  loc_6F3ACA: LitI4 1
  loc_6F3ACF: LitI4 1
  loc_6F3AD4: LitVarStr var_29C, "0.00"
  loc_6F3AD9: FStVarCopyObj var_2AC
  loc_6F3ADC: FLdRfVar var_2AC
  loc_6F3ADF: FLdFPR4 var_194
  loc_6F3AE2: FLdFPR4 var_188
  loc_6F3AE5: FLdFPR4 var_18C
  loc_6F3AE8: AddR8
  loc_6F3AE9: FLdFPR4 var_190
  loc_6F3AEC: SubR4
  loc_6F3AED: SubR4
  loc_6F3AEE: CVarR4
  loc_6F3AF2: FLdRfVar var_2BC
  loc_6F3AF5: ImpAdCallFPR4  = Format(, )
  loc_6F3AFA: FLdRfVar var_2BC
  loc_6F3AFD: CStrVarTmp
  loc_6F3AFE: PopTmpLdAdStr
  loc_6F3B02: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3B07: FStStrNoPop var_2C8
  loc_6F3B0A: ConcatStr
  loc_6F3B0B: FStStrNoPop var_2CC
  loc_6F3B0E: LitStr ", Agua = "
  loc_6F3B11: ConcatStr
  loc_6F3B12: FStStrNoPop var_314
  loc_6F3B15: LitI4 1
  loc_6F3B1A: LitI4 1
  loc_6F3B1F: LitVarStr var_2EC, "0.00"
  loc_6F3B24: FStVarCopyObj var_2FC
  loc_6F3B27: FLdRfVar var_2FC
  loc_6F3B2A: FLdRfVar var_198
  loc_6F3B2D: CVarRef
  loc_6F3B32: FLdRfVar var_30C
  loc_6F3B35: ImpAdCallFPR4  = Format(, )
  loc_6F3B3A: FLdRfVar var_30C
  loc_6F3B3D: CStrVarTmp
  loc_6F3B3E: PopTmpLdAdStr
  loc_6F3B42: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3B47: FStStrNoPop var_318
  loc_6F3B4A: ConcatStr
  loc_6F3B4B: CVarStr var_3C0
  loc_6F3B4E: LitVarStr var_390, vbNullString
  loc_6F3B53: FStVarCopyObj var_3A0
  loc_6F3B56: FLdRfVar var_3A0
  loc_6F3B59: LitStr ", [Existencia Inicial] = [Existencia Inicial] + "
  loc_6F3B5C: FLdZeroAd var_454
  loc_6F3B5F: FStStrNoPop var_360
  loc_6F3B62: ConcatStr
  loc_6F3B63: CVarStr var_380
  loc_6F3B66: FLdRfVar var_92
  loc_6F3B69: CVarRef
  loc_6F3B6E: FLdRfVar var_3B0
  loc_6F3B71: ImpAdCallFPR4  = IIf(, , )
  loc_6F3B76: FLdRfVar var_3B0
  loc_6F3B79: ConcatVar var_3D0
  loc_6F3B7D: LitVarStr var_3E0, " WHERE CLAVE = "
  loc_6F3B82: ConcatVar var_3F0
  loc_6F3B86: FLdI2 var_1AA
  loc_6F3B89: CVarI2 var_400
  loc_6F3B8C: ConcatVar var_410
  loc_6F3B90: LitVarStr var_420, " AND DIA = "
  loc_6F3B95: ConcatVar var_430
  loc_6F3B99: FLdI2 var_1A6
  loc_6F3B9C: CVarI2 var_440
  loc_6F3B9F: ConcatVar var_450
  loc_6F3BA3: CStrVarTmp
  loc_6F3BA4: FStStr var_130
  loc_6F3BA7: FFreeStr var_9C = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_310 = "": var_314 = "": var_318 = "": var_35C = "": var_360 = ""
  loc_6F3BDE: FFreeVar var_AC = "": var_CC = "": var_F4 = "": var_114 = "": var_1FC = "": var_20C = "": var_24C = "": var_25C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2FC = "": var_30C = "": var_348 = "": var_358 = "": var_380 = "": var_3A0 = "": var_3C0 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_410 = "": var_430 = ""
  loc_6F3C11: LitVar_Missing var_BC
  loc_6F3C14: PopAdLdVar
  loc_6F3C15: ILdRf var_130
  loc_6F3C18: FLdPr var_128
  loc_6F3C1B: Me.Execute from_stack_1, from_stack_2
  loc_6F3C20: Branch loc_6F3ED4
  loc_6F3C23: LitStr "INSERT INTO Existencias (Clave, Dia, [Existencia Inicial], [Recepcion y Pruebas], [Ventas Medidas], [Medicion Real], AcumVentas, AcumLitros, AcumDeficit, Agua) VALUES "
  loc_6F3C26: LitStr "("
  loc_6F3C29: ConcatStr
  loc_6F3C2A: FStStrNoPop var_9C
  loc_6F3C2D: FLdI2 var_1AA
  loc_6F3C30: CStrUI1
  loc_6F3C32: FStStrNoPop var_118
  loc_6F3C35: ConcatStr
  loc_6F3C36: FStStrNoPop var_11C
  loc_6F3C39: LitStr ", "
  loc_6F3C3C: ConcatStr
  loc_6F3C3D: FStStrNoPop var_120
  loc_6F3C40: FLdI2 var_1A6
  loc_6F3C43: CStrUI1
  loc_6F3C45: FStStrNoPop var_124
  loc_6F3C48: ConcatStr
  loc_6F3C49: FStStrNoPop var_1C4
  loc_6F3C4C: LitStr ", "
  loc_6F3C4F: ConcatStr
  loc_6F3C50: FStStrNoPop var_1CC
  loc_6F3C53: LitI4 1
  loc_6F3C58: LitI4 1
  loc_6F3C5D: LitVarStr var_E4, "0.00"
  loc_6F3C62: FStVarCopyObj var_AC
  loc_6F3C65: FLdRfVar var_AC
  loc_6F3C68: FLdRfVar var_188
  loc_6F3C6B: CVarRef
  loc_6F3C70: FLdRfVar var_CC
  loc_6F3C73: ImpAdCallFPR4  = Format(, )
  loc_6F3C78: FLdRfVar var_CC
  loc_6F3C7B: CStrVarTmp
  loc_6F3C7C: PopTmpLdAdStr
  loc_6F3C80: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3C85: FStStrNoPop var_210
  loc_6F3C88: ConcatStr
  loc_6F3C89: FStStrNoPop var_214
  loc_6F3C8C: LitStr ", "
  loc_6F3C8F: ConcatStr
  loc_6F3C90: FStStrNoPop var_21C
  loc_6F3C93: LitI4 1
  loc_6F3C98: LitI4 1
  loc_6F3C9D: LitVarStr var_1C0, "0.00"
  loc_6F3CA2: FStVarCopyObj var_F4
  loc_6F3CA5: FLdRfVar var_F4
  loc_6F3CA8: FLdRfVar var_18C
  loc_6F3CAB: CVarRef
  loc_6F3CB0: FLdRfVar var_114
  loc_6F3CB3: ImpAdCallFPR4  = Format(, )
  loc_6F3CB8: FLdRfVar var_114
  loc_6F3CBB: CStrVarTmp
  loc_6F3CBC: PopTmpLdAdStr
  loc_6F3CC0: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3CC5: FStStrNoPop var_260
  loc_6F3CC8: ConcatStr
  loc_6F3CC9: FStStrNoPop var_264
  loc_6F3CCC: LitStr ", "
  loc_6F3CCF: ConcatStr
  loc_6F3CD0: FStStrNoPop var_26C
  loc_6F3CD3: LitI4 1
  loc_6F3CD8: LitI4 1
  loc_6F3CDD: LitVarStr var_1EC, "0.00"
  loc_6F3CE2: FStVarCopyObj var_1FC
  loc_6F3CE5: FLdRfVar var_1FC
  loc_6F3CE8: FLdRfVar var_190
  loc_6F3CEB: CVarRef
  loc_6F3CF0: FLdRfVar var_20C
  loc_6F3CF3: ImpAdCallFPR4  = Format(, )
  loc_6F3CF8: FLdRfVar var_20C
  loc_6F3CFB: CStrVarTmp
  loc_6F3CFC: PopTmpLdAdStr
  loc_6F3D00: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3D05: FStStrNoPop var_2C0
  loc_6F3D08: ConcatStr
  loc_6F3D09: FStStrNoPop var_2C4
  loc_6F3D0C: LitStr ", "
  loc_6F3D0F: ConcatStr
  loc_6F3D10: FStStrNoPop var_2CC
  loc_6F3D13: LitI4 1
  loc_6F3D18: LitI4 1
  loc_6F3D1D: LitVarStr var_23C, "0.00"
  loc_6F3D22: FStVarCopyObj var_24C
  loc_6F3D25: FLdRfVar var_24C
  loc_6F3D28: FLdRfVar var_194
  loc_6F3D2B: CVarRef
  loc_6F3D30: FLdRfVar var_25C
  loc_6F3D33: ImpAdCallFPR4  = Format(, )
  loc_6F3D38: FLdRfVar var_25C
  loc_6F3D3B: CStrVarTmp
  loc_6F3D3C: PopTmpLdAdStr
  loc_6F3D40: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3D45: FStStrNoPop var_310
  loc_6F3D48: ConcatStr
  loc_6F3D49: FStStrNoPop var_314
  loc_6F3D4C: LitStr ", "
  loc_6F3D4F: ConcatStr
  loc_6F3D50: FStStrNoPop var_35C
  loc_6F3D53: LitI4 1
  loc_6F3D58: LitI4 1
  loc_6F3D5D: LitVarStr var_29C, "0.00"
  loc_6F3D62: FStVarCopyObj var_28C
  loc_6F3D65: FLdRfVar var_28C
  loc_6F3D68: FLdRfVar var_19C
  loc_6F3D6B: CVarRef
  loc_6F3D70: FLdRfVar var_2AC
  loc_6F3D73: ImpAdCallFPR4  = Format(, )
  loc_6F3D78: FLdRfVar var_2AC
  loc_6F3D7B: CStrVarTmp
  loc_6F3D7C: PopTmpLdAdStr
  loc_6F3D80: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3D85: FStStrNoPop var_360
  loc_6F3D88: ConcatStr
  loc_6F3D89: FStStrNoPop var_454
  loc_6F3D8C: LitStr ", "
  loc_6F3D8F: ConcatStr
  loc_6F3D90: FStStrNoPop var_45C
  loc_6F3D93: LitI4 1
  loc_6F3D98: LitI4 1
  loc_6F3D9D: LitVarStr var_2EC, "0.00"
  loc_6F3DA2: FStVarCopyObj var_2BC
  loc_6F3DA5: FLdRfVar var_2BC
  loc_6F3DA8: FLdRfVar var_1A0
  loc_6F3DAB: CVarRef
  loc_6F3DB0: FLdRfVar var_2FC
  loc_6F3DB3: ImpAdCallFPR4  = Format(, )
  loc_6F3DB8: FLdRfVar var_2FC
  loc_6F3DBB: CStrVarTmp
  loc_6F3DBC: PopTmpLdAdStr
  loc_6F3DC0: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3DC5: FStStrNoPop var_460
  loc_6F3DC8: ConcatStr
  loc_6F3DC9: FStStrNoPop var_464
  loc_6F3DCC: LitStr ", "
  loc_6F3DCF: ConcatStr
  loc_6F3DD0: FStStrNoPop var_46C
  loc_6F3DD3: LitI4 1
  loc_6F3DD8: LitI4 1
  loc_6F3DDD: LitVarStr var_338, "0.00"
  loc_6F3DE2: FStVarCopyObj var_30C
  loc_6F3DE5: FLdRfVar var_30C
  loc_6F3DE8: FLdRfVar var_1A4
  loc_6F3DEB: CVarRef
  loc_6F3DF0: FLdRfVar var_348
  loc_6F3DF3: ImpAdCallFPR4  = Format(, )
  loc_6F3DF8: FLdRfVar var_348
  loc_6F3DFB: CStrVarTmp
  loc_6F3DFC: PopTmpLdAdStr
  loc_6F3E00: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3E05: FStStrNoPop var_470
  loc_6F3E08: ConcatStr
  loc_6F3E09: FStStrNoPop var_474
  loc_6F3E0C: LitStr ", "
  loc_6F3E0F: ConcatStr
  loc_6F3E10: FStStrNoPop var_47C
  loc_6F3E13: LitI4 1
  loc_6F3E18: LitI4 1
  loc_6F3E1D: LitVarStr var_390, "0.00"
  loc_6F3E22: FStVarCopyObj var_358
  loc_6F3E25: FLdRfVar var_358
  loc_6F3E28: FLdRfVar var_198
  loc_6F3E2B: CVarRef
  loc_6F3E30: FLdRfVar var_380
  loc_6F3E33: ImpAdCallFPR4  = Format(, )
  loc_6F3E38: FLdRfVar var_380
  loc_6F3E3B: CStrVarTmp
  loc_6F3E3C: PopTmpLdAdStr
  loc_6F3E40: ImpAdCallI2 Proc_87_0_5DC658()
  loc_6F3E45: FStStrNoPop var_480
  loc_6F3E48: ConcatStr
  loc_6F3E49: FStStrNoPop var_484
  loc_6F3E4C: LitStr ")"
  loc_6F3E4F: ConcatStr
  loc_6F3E50: FStStr var_130
  loc_6F3E53: FFreeStr var_468 = "": var_46C = "": var_470 = "": var_474 = "": var_478 = "": var_47C = "": var_480 = "": var_484 = "": var_9C = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_310 = "": var_314 = "": var_318 = "": var_35C = "": var_360 = "": var_454 = "": var_458 = "": var_45C = "": var_460 = ""
  loc_6F3EA2: FFreeVar var_AC = "": var_CC = "": var_F4 = "": var_114 = "": var_1FC = "": var_20C = "": var_24C = "": var_25C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2FC = "": var_30C = "": var_348 = "": var_358 = ""
  loc_6F3EC5: LitVar_Missing var_BC
  loc_6F3EC8: PopAdLdVar
  loc_6F3EC9: ILdRf var_130
  loc_6F3ECC: FLdPr var_128
  loc_6F3ECF: Me.Execute from_stack_1, from_stack_2
  loc_6F3ED4: FLdPr var_12C
  loc_6F3ED7: Me.Close
  loc_6F3EDC: LitNothing
  loc_6F3EDE: CastAd
  loc_6F3EE1: FStAdFunc var_12C
  loc_6F3EE4: Branch loc_6F3494
  loc_6F3EE7: FLdPr var_128
  loc_6F3EEA: Me.Close
  loc_6F3EEF: FLdRfVar var_9C
  loc_6F3EF2: FLdRfVar var_98
  loc_6F3EF5: ImpAdLdRf MemVar_7520D4
  loc_6F3EF8: NewIfNullPr Global
  loc_6F3EFB:  = Global.App
  loc_6F3F00: FLdPr var_98
  loc_6F3F03:  = App.Path
  loc_6F3F08: ILdRf var_9C
  loc_6F3F0B: LitStr "\ExistenciasProductos.rpt"
  loc_6F3F0E: ConcatStr
  loc_6F3F0F: CVarStr var_AC
  loc_6F3F12: PopAdLdVar
  loc_6F3F13: FLdPrThis
  loc_6F3F14: VCallAd Control_ID_crPrint
  loc_6F3F17: FStAdFunc var_D0
  loc_6F3F1A: FLdPr var_D0
  loc_6F3F1D: LateIdSt
  loc_6F3F22: FFree1Str var_9C
  loc_6F3F25: FFreeAd var_98 = ""
  loc_6F3F2C: FFree1Var var_AC = ""
  loc_6F3F2F: LitVarI4
  loc_6F3F37: PopAdLdVar
  loc_6F3F38: FLdPrThis
  loc_6F3F39: VCallAd Control_ID_crPrint
  loc_6F3F3C: FStAdFunc var_98
  loc_6F3F3F: FLdPr var_98
  loc_6F3F42: LateIdSt
  loc_6F3F47: FFree1Ad var_98
  loc_6F3F4A: LitVar_TRUE var_BC
  loc_6F3F4D: PopAdLdVar
  loc_6F3F4E: FLdPrThis
  loc_6F3F4F: VCallAd Control_ID_crPrint
  loc_6F3F52: FStAdFunc var_98
  loc_6F3F55: FLdPr var_98
  loc_6F3F58: LateIdSt
  loc_6F3F5D: FFree1Ad var_98
  loc_6F3F60: LitVarI2 var_BC, 1
  loc_6F3F65: PopAdLdVar
  loc_6F3F66: FLdPrThis
  loc_6F3F67: VCallAd Control_ID_crPrint
  loc_6F3F6A: FStAdFunc var_98
  loc_6F3F6D: FLdPr var_98
  loc_6F3F70: LateIdSt
  loc_6F3F75: FFree1Ad var_98
  loc_6F3F78: LitI2_Byte &HFF
  loc_6F3F7A: PopTmpLdAd2 var_D2
  loc_6F3F7D: ImpAdCallFPR4 Proc_87_1_630780()
  loc_6F3F82: FLdPrThis
  loc_6F3F83: VCallAd Control_ID_crPrint
  loc_6F3F86: FStAdFunc var_98
  loc_6F3F89: FLdPr var_98
  loc_6F3F8C: LateIdLdVar var_AC DispID_65 0
  loc_6F3F93: CI2Var
  loc_6F3F94: LitI2_Byte 0
  loc_6F3F96: EqI2
  loc_6F3F97: FFree1Ad var_98
  loc_6F3F9A: FFree1Var var_AC = ""
  loc_6F3F9D: BranchF loc_6F3FA8
  loc_6F3FA0: ImpAdCallFPR4 DoEvents()
  loc_6F3FA5: Branch loc_6F3F82
  loc_6F3FA8: LitI2_Byte 0
  loc_6F3FAA: FLdPrThis
  loc_6F3FAB: VCallAd Control_ID_lblWait
  loc_6F3FAE: FStAdFunc var_98
  loc_6F3FB1: FLdPr var_98
  loc_6F3FB4: Me.Visible = from_stack_1b
  loc_6F3FB9: FFree1Ad var_98
  loc_6F3FBC: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D1B90
  'Data Table: 432B98
  loc_5D1B78: ILdRf Me
  loc_5D1B7B: FStAdNoPop
  loc_5D1B7F: ImpAdLdRf MemVar_7520D4
  loc_5D1B82: NewIfNullPr Global
  loc_5D1B85: Global.Unload from_stack_1
  loc_5D1B8A: FFree1Ad var_88
  loc_5D1B8D: ExitProcHresult
End Sub

Private Function Proc_43_7_64706C(arg_10, arg_14, arg_18, arg_1C) '64706C
  'Data Table: 432B98
  loc_646E2C: ILdRf arg_10
  loc_646E2F: FStStrCopy var_88
  loc_646E32: ILdRf arg_14
  loc_646E35: FStStrCopy var_8C
  loc_646E38: ILdRf arg_18
  loc_646E3B: FStStrCopy var_90
  loc_646E3E: LitStr "SELECT Clave FROM Productos WHERE Tanques = '"
  loc_646E41: ILdRf var_88
  loc_646E44: ConcatStr
  loc_646E45: FStStrNoPop var_9C
  loc_646E48: LitStr "' AND Producto Like '"
  loc_646E4B: ConcatStr
  loc_646E4C: FStStrNoPop var_A0
  loc_646E4F: LitI4 2
  loc_646E54: ILdRf var_8C
  loc_646E57: ImpAdCallI2 Left$(, )
  loc_646E5C: FStStrNoPop var_A4
  loc_646E5F: ConcatStr
  loc_646E60: FStStrNoPop var_A8
  loc_646E63: LitStr "*'"
  loc_646E66: ConcatStr
  loc_646E67: FStStr var_94
  loc_646E6A: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_646E75: FLdRfVar var_DC
  loc_646E78: LitVar_Missing var_D8
  loc_646E7B: PopAdLdVar
  loc_646E7C: LitVar_Missing var_C8
  loc_646E7F: PopAdLdVar
  loc_646E80: LitVarI4
  loc_646E88: PopAdLdVar
  loc_646E89: ILdRf var_94
  loc_646E8C: ILdPr
  loc_646E8F: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_646E94: FLdZeroAd var_DC
  loc_646E97: FStAdFunc var_98
  loc_646E9A: FLdRfVar var_DE
  loc_646E9D: FLdPr var_98
  loc_646EA0:  = Me.BOF
  loc_646EA5: FLdI2 var_DE
  loc_646EA8: FLdRfVar var_E0
  loc_646EAB: FLdPr var_98
  loc_646EAE:  = Me.EOF
  loc_646EB3: FLdI2 var_E0
  loc_646EB6: AndI4
  loc_646EB7: NotI4
  loc_646EB8: BranchF loc_646F4E
  loc_646EBB: FLdRfVar var_F4
  loc_646EBE: FLdRfVar var_E4
  loc_646EC1: LitVarStr var_B8, "clave"
  loc_646EC6: PopAdLdVar
  loc_646EC7: FLdRfVar var_DC
  loc_646ECA: FLdPr var_98
  loc_646ECD:  = Me.Fields
  loc_646ED2: FLdPr var_DC
  loc_646ED5: from_stack_2 = Me.Item(from_stack_1)
  loc_646EDA: FLdPr var_E4
  loc_646EDD:  = Me.Value
  loc_646EE2: FLdRfVar var_F4
  loc_646EE5: CI2Var
  loc_646EE6: IStI2 arg_1C
  loc_646EE9: FFreeAd var_DC = ""
  loc_646EF0: FFree1Var var_F4 = ""
  loc_646EF3: LitStr "UPDATE Productos SET Producto = '"
  loc_646EF6: ILdRf var_8C
  loc_646EF9: ConcatStr
  loc_646EFA: FStStrNoPop var_9C
  loc_646EFD: LitStr "' where Tanques = '"
  loc_646F00: ConcatStr
  loc_646F01: FStStrNoPop var_A0
  loc_646F04: ILdRf var_88
  loc_646F07: ConcatStr
  loc_646F08: FStStrNoPop var_A4
  loc_646F0B: LitStr "' AND Producto Like '"
  loc_646F0E: ConcatStr
  loc_646F0F: FStStrNoPop var_A8
  loc_646F12: LitI4 2
  loc_646F17: ILdRf var_8C
  loc_646F1A: ImpAdCallI2 Left$(, )
  loc_646F1F: FStStrNoPop var_F8
  loc_646F22: ConcatStr
  loc_646F23: FStStrNoPop var_FC
  loc_646F26: LitStr "*'"
  loc_646F29: ConcatStr
  loc_646F2A: FStStr var_94
  loc_646F2D: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_F8 = ""
  loc_646F3C: LitVar_Missing var_B8
  loc_646F3F: PopAdLdVar
  loc_646F40: ILdRf var_94
  loc_646F43: ILdPr
  loc_646F46: Me.Execute from_stack_1, from_stack_2
  loc_646F4B: Branch loc_646F53
  loc_646F4E: LitI2_Byte 0
  loc_646F50: IStI2 arg_1C
  loc_646F53: ILdI2 arg_1C
  loc_646F56: LitI2_Byte 0
  loc_646F58: EqI2
  loc_646F59: BranchF loc_647058
  loc_646F5C: LitStr "SELECT Clave FROM Productos ORDER BY clave"
  loc_646F5F: FStStrCopy var_94
  loc_646F62: FLdRfVar var_DC
  loc_646F65: LitVar_Missing var_D8
  loc_646F68: PopAdLdVar
  loc_646F69: LitVar_Missing var_C8
  loc_646F6C: PopAdLdVar
  loc_646F6D: LitVarI4
  loc_646F75: PopAdLdVar
  loc_646F76: ILdRf var_94
  loc_646F79: ILdPr
  loc_646F7C: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_646F81: FLdZeroAd var_DC
  loc_646F84: FStAdFunc var_98
  loc_646F87: FLdRfVar var_DE
  loc_646F8A: FLdPr var_98
  loc_646F8D:  = Me.BOF
  loc_646F92: FLdI2 var_DE
  loc_646F95: FLdRfVar var_E0
  loc_646F98: FLdPr var_98
  loc_646F9B:  = Me.EOF
  loc_646FA0: FLdI2 var_E0
  loc_646FA3: AndI4
  loc_646FA4: NotI4
  loc_646FA5: BranchF loc_646FED
  loc_646FA8: LitI4 0
  loc_646FAD: FLdPr var_98
  loc_646FB0: Me.MoveLast from_stack_1
  loc_646FB5: FLdRfVar var_F4
  loc_646FB8: FLdRfVar var_E4
  loc_646FBB: LitVarStr var_B8, "clave"
  loc_646FC0: PopAdLdVar
  loc_646FC1: FLdRfVar var_DC
  loc_646FC4: FLdPr var_98
  loc_646FC7:  = Me.Fields
  loc_646FCC: FLdPr var_DC
  loc_646FCF: from_stack_2 = Me.Item(from_stack_1)
  loc_646FD4: FLdPr var_E4
  loc_646FD7:  = Me.Value
  loc_646FDC: FLdRfVar var_F4
  loc_646FDF: CI2Var
  loc_646FE0: IStI2 arg_1C
  loc_646FE3: FFreeAd var_DC = ""
  loc_646FEA: FFree1Var var_F4 = ""
  loc_646FED: ILdI2 arg_1C
  loc_646FF0: LitI2_Byte 1
  loc_646FF2: AddI2
  loc_646FF3: IStI2 arg_1C
  loc_646FF6: LitStr "INSERT INTO Productos (Clave, Tanques, Producto, Surtidores) VALUES ("
  loc_646FF9: ILdI2 arg_1C
  loc_646FFC: CStrUI1
  loc_646FFE: FStStrNoPop var_9C
  loc_647001: ConcatStr
  loc_647002: FStStrNoPop var_A0
  loc_647005: LitStr ", '"
  loc_647008: ConcatStr
  loc_647009: FStStrNoPop var_A4
  loc_64700C: ILdRf var_88
  loc_64700F: ConcatStr
  loc_647010: FStStrNoPop var_A8
  loc_647013: LitStr "', '"
  loc_647016: ConcatStr
  loc_647017: FStStrNoPop var_F8
  loc_64701A: ILdRf var_8C
  loc_64701D: ConcatStr
  loc_64701E: FStStrNoPop var_FC
  loc_647021: LitStr "', '"
  loc_647024: ConcatStr
  loc_647025: FStStrNoPop var_100
  loc_647028: ILdRf var_90
  loc_64702B: ConcatStr
  loc_64702C: FStStrNoPop var_104
  loc_64702F: LitStr "')"
  loc_647032: ConcatStr
  loc_647033: FStStr var_94
  loc_647036: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_647049: LitVar_Missing var_B8
  loc_64704C: PopAdLdVar
  loc_64704D: ILdRf var_94
  loc_647050: ILdPr
  loc_647053: Me.Execute from_stack_1, from_stack_2
  loc_647058: FLdPr var_98
  loc_64705B: Me.Close
  loc_647060: LitNothing
  loc_647062: CastAd
  loc_647065: FStAdFunc var_98
  loc_647068: ExitProcHresult
End Function

Private Function Proc_43_8_61FE14(arg_10, arg_14, arg_18, arg_1C, arg_20) '61FE14
  'Data Table: 432B98
  loc_61FCD0: LitStr "SELECT AcumVentas, AcumLitros, AcumDeficit FROM Existencias WHERE Clave = "
  loc_61FCD3: FLdI2 arg_10
  loc_61FCD6: CStrUI1
  loc_61FCD8: FStStrNoPop var_90
  loc_61FCDB: ConcatStr
  loc_61FCDC: FStStrNoPop var_94
  loc_61FCDF: LitStr " ORDER BY Dia ASC"
  loc_61FCE2: ConcatStr
  loc_61FCE3: FStStr var_88
  loc_61FCE6: FFreeStr var_90 = ""
  loc_61FCED: FLdRfVar var_C8
  loc_61FCF0: LitVar_Missing var_C4
  loc_61FCF3: PopAdLdVar
  loc_61FCF4: LitVar_Missing var_B4
  loc_61FCF7: PopAdLdVar
  loc_61FCF8: LitVarI4
  loc_61FD00: PopAdLdVar
  loc_61FD01: ILdRf var_88
  loc_61FD04: ILdPr
  loc_61FD07: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_61FD0C: FLdZeroAd var_C8
  loc_61FD0F: FStAdFunc var_8C
  loc_61FD12: FLdRfVar var_CA
  loc_61FD15: FLdPr var_8C
  loc_61FD18:  = Me.BOF
  loc_61FD1D: FLdI2 var_CA
  loc_61FD20: FLdRfVar var_CC
  loc_61FD23: FLdPr var_8C
  loc_61FD26:  = Me.EOF
  loc_61FD2B: FLdI2 var_CC
  loc_61FD2E: AndI4
  loc_61FD2F: NotI4
  loc_61FD30: BranchF loc_61FDEE
  loc_61FD33: LitI4 0
  loc_61FD38: FLdPr var_8C
  loc_61FD3B: Me.MoveLast from_stack_1
  loc_61FD40: FLdRfVar var_E0
  loc_61FD43: FLdRfVar var_D0
  loc_61FD46: LitVarStr var_A4, "AcumVentas"
  loc_61FD4B: PopAdLdVar
  loc_61FD4C: FLdRfVar var_C8
  loc_61FD4F: FLdPr var_8C
  loc_61FD52:  = Me.Fields
  loc_61FD57: FLdPr var_C8
  loc_61FD5A: from_stack_2 = Me.Item(from_stack_1)
  loc_61FD5F: FLdPr var_D0
  loc_61FD62:  = Me.Value
  loc_61FD67: FLdRfVar var_E0
  loc_61FD6A: CR8Var
  loc_61FD6C: IStFPR4 arg_14
  loc_61FD6F: FFreeAd var_C8 = ""
  loc_61FD76: FFree1Var var_E0 = ""
  loc_61FD79: FLdRfVar var_E0
  loc_61FD7C: FLdRfVar var_D0
  loc_61FD7F: LitVarStr var_A4, "AcumLitros"
  loc_61FD84: PopAdLdVar
  loc_61FD85: FLdRfVar var_C8
  loc_61FD88: FLdPr var_8C
  loc_61FD8B:  = Me.Fields
  loc_61FD90: FLdPr var_C8
  loc_61FD93: from_stack_2 = Me.Item(from_stack_1)
  loc_61FD98: FLdPr var_D0
  loc_61FD9B:  = Me.Value
  loc_61FDA0: FLdRfVar var_E0
  loc_61FDA3: CR8Var
  loc_61FDA5: IStFPR4 arg_18
  loc_61FDA8: FFreeAd var_C8 = ""
  loc_61FDAF: FFree1Var var_E0 = ""
  loc_61FDB2: FLdRfVar var_E0
  loc_61FDB5: FLdRfVar var_D0
  loc_61FDB8: LitVarStr var_A4, "AcumDeficit"
  loc_61FDBD: PopAdLdVar
  loc_61FDBE: FLdRfVar var_C8
  loc_61FDC1: FLdPr var_8C
  loc_61FDC4:  = Me.Fields
  loc_61FDC9: FLdPr var_C8
  loc_61FDCC: from_stack_2 = Me.Item(from_stack_1)
  loc_61FDD1: FLdPr var_D0
  loc_61FDD4:  = Me.Value
  loc_61FDD9: FLdRfVar var_E0
  loc_61FDDC: CR8Var
  loc_61FDDE: IStFPR4 arg_1C
  loc_61FDE1: FFreeAd var_C8 = ""
  loc_61FDE8: FFree1Var var_E0 = ""
  loc_61FDEB: Branch loc_61FE00
  loc_61FDEE: LitI2_Byte 0
  loc_61FDF0: CR8I2
  loc_61FDF1: IStFPR4 arg_14
  loc_61FDF4: LitI2_Byte 0
  loc_61FDF6: CR8I2
  loc_61FDF7: IStFPR4 arg_18
  loc_61FDFA: LitI2_Byte 0
  loc_61FDFC: CR8I2
  loc_61FDFD: IStFPR4 arg_1C
  loc_61FE00: FLdPr var_8C
  loc_61FE03: Me.Close
  loc_61FE08: LitNothing
  loc_61FE0A: CastAd
  loc_61FE0D: FStAdFunc var_8C
  loc_61FE10: ExitProcHresult
  loc_61FE11: GtCy
  loc_61FE12: FStAdFunc arg_2000
End Function
