VERSION 5.00
Object = "{00025600-0000-0000-C000000000000046}#5.1#0"; "C:\WINDOWS\SysWow64\CRYSTL32.OCX"
Begin VB.Form frmCierresRed21Mensuales
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
  ClientHeight = 6750
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.ComboBox cmbDay2
    Left = 1560
    Top = 4680
    Width = 3975
    Height = 480
    Text = "Combo1"
    TabIndex = 19
    Sorted = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox cmbYear2
    Style = 2
    Left = 8520
    Top = 4080
    Width = 2535
    Height = 480
    TabIndex = 18
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
  Begin VB.ComboBox cmbMonth2
    Style = 2
    Left = 1560
    Top = 4080
    Width = 3975
    Height = 480
    TabIndex = 17
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
  Begin VB.ComboBox CmbDay
    Left = 1560
    Top = 2760
    Width = 3975
    Height = 480
    Text = "Combo1"
    TabIndex = 16
    Sorted = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Crystal.CrystalReport crPrint
    OleObjectBlob = "frmCierresRed21Mensuales.frx":0000
    Left = 1440
    Top = 5880
  End
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 840
    Top = 5880
  End
  Begin VB.CommandButton cmdVisualizar
    Caption = "&Visualizar"
    Left = 5760
    Top = 4440
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
    Top = 2160
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
    Top = 2160
    Width = 3975
    Height = 480
    TabIndex = 6
    List = "frmCierresRed21Mensuales.frx":00F3
    ItemData = "frmCierresRed21Mensuales.frx":0101
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
    Height = 495
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
    Top = 4440
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
  Begin VB.Frame Frame1
    Caption = "Desde"
    Left = 480
    Top = 1800
    Width = 10815
    Height = 1695
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Label Label7
      Caption = "Año:"
      Left = 6960
      Top = 480
      Width = 975
      Height = 375
      TabIndex = 23
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
    Begin VB.Label Label12
      Caption = "Día:"
      Left = 360
      Top = 1080
      Width = 735
      Height = 375
      TabIndex = 22
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
    Begin VB.Label Label11
      Caption = "Mes:"
      Left = 360
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 21
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
  End
  Begin VB.Frame Frame2
    Caption = "Hasta"
    Left = 480
    Top = 3720
    Width = 10815
    Height = 1695
    TabIndex = 24
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Label Label15
      Caption = "Día:"
      Left = 360
      Top = 1080
      Width = 735
      Height = 375
      TabIndex = 27
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
    Begin VB.Label Label14
      Caption = "Mes:"
      Left = 360
      Top = 480
      Width = 735
      Height = 375
      TabIndex = 26
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
    Begin VB.Label Label13
      Caption = "Año:"
      Left = 7080
      Top = 480
      Width = 975
      Height = 375
      TabIndex = 25
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
  End
  Begin VB.Label Label6
    Caption = "Hora:"
    Left = 2850
    Top = 1530
    Width = 705
    Height = 255
    TabIndex = 15
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
  Begin VB.Label Label5
    Caption = "Dia:"
    Left = 2850
    Top = 1230
    Width = 555
    Height = 255
    TabIndex = 14
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 3570
    Top = 1560
    Width = 885
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
    Left = 3420
    Top = 1230
    Width = 1635
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
    Top = 2160
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
  Begin VB.Label Label3
    Caption = "Razon Social:"
    Left = 2850
    Top = 930
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
    Left = 4650
    Top = 930
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
    Caption = "Reporte de Red XXI"
    Left = 2280
    Top = 240
    Width = 7275
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
  Begin VB.Label Label2
    Caption = "Mes:"
    Left = 720
    Top = 2160
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
End

Attribute VB_Name = "frmCierresRed21Mensuales"


Private Sub Reloj_Timer() '5EE494
  'Data Table: 44965C
  loc_5EE408: FLdRfVar var_94
  loc_5EE40B: ImpAdCallFPR4  = Date
  loc_5EE410: LitI4 1
  loc_5EE415: LitI4 1
  loc_5EE41A: LitVarStr var_A4, "dd/mm/yyyy"
  loc_5EE41F: FStVarCopyObj var_B4
  loc_5EE422: FLdRfVar var_B4
  loc_5EE425: FLdRfVar var_94
  loc_5EE428: ImpAdCallI2 Format$(, )
  loc_5EE42D: FStStrNoPop var_B8
  loc_5EE430: FLdPrThis
  loc_5EE431: VCallAd Control_ID_lFecha
  loc_5EE434: FStAdFunc var_BC
  loc_5EE437: FLdPr var_BC
  loc_5EE43A: Me.Caption = from_stack_1
  loc_5EE43F: FFree1Str var_B8
  loc_5EE442: FFree1Ad var_BC
  loc_5EE445: FFreeVar var_94 = ""
  loc_5EE44C: FLdRfVar var_94
  loc_5EE44F: ImpAdCallFPR4  = Time
  loc_5EE454: LitI4 1
  loc_5EE459: LitI4 1
  loc_5EE45E: LitVarStr var_A4, "hh:mm"
  loc_5EE463: FStVarCopyObj var_B4
  loc_5EE466: FLdRfVar var_B4
  loc_5EE469: FLdRfVar var_94
  loc_5EE46C: ImpAdCallI2 Format$(, )
  loc_5EE471: FStStrNoPop var_B8
  loc_5EE474: FLdPrThis
  loc_5EE475: VCallAd Control_ID_lHora
  loc_5EE478: FStAdFunc var_BC
  loc_5EE47B: FLdPr var_BC
  loc_5EE47E: Me.Caption = from_stack_1
  loc_5EE483: FFree1Str var_B8
  loc_5EE486: FFree1Ad var_BC
  loc_5EE489: FFreeVar var_94 = ""
  loc_5EE490: ExitProcHresult
End Sub

Private Sub cboYear_Click() '6C2ED0
  'Data Table: 44965C
  loc_6C2888: FLdRfVar var_98
  loc_6C288B: ImpAdCallFPR4  = Date
  loc_6C2890: FLdRfVar var_98
  loc_6C2893: FLdRfVar var_A8
  loc_6C2896: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6C289B: FLdRfVar var_A8
  loc_6C289E: FLdRfVar var_B0
  loc_6C28A1: FLdPrThis
  loc_6C28A2: VCallAd Control_ID_cboYear
  loc_6C28A5: FStAdFunc var_AC
  loc_6C28A8: FLdPr var_AC
  loc_6C28AB:  = Me.Text
  loc_6C28B0: FLdZeroAd var_B0
  loc_6C28B3: CVarStr var_C0
  loc_6C28B6: HardType
  loc_6C28B7: EqVarBool
  loc_6C28B9: FFree1Ad var_AC
  loc_6C28BC: FFreeVar var_98 = "": var_A8 = ""
  loc_6C28C5: BranchF loc_6C28EC
  loc_6C28C8: FLdRfVar var_98
  loc_6C28CB: ImpAdCallFPR4  = Date
  loc_6C28D0: FLdRfVar var_98
  loc_6C28D3: FLdRfVar var_A8
  loc_6C28D6: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6C28DB: FLdRfVar var_A8
  loc_6C28DE: CI2Var
  loc_6C28DF: FStI2 var_88
  loc_6C28E2: FFreeVar var_98 = ""
  loc_6C28E9: Branch loc_6C28F1
  loc_6C28EC: LitI2_Byte &HC
  loc_6C28EE: FStI2 var_88
  loc_6C28F1: FLdPrThis
  loc_6C28F2: VCallAd Control_ID_cboMonth
  loc_6C28F5: FStAdFunc var_AC
  loc_6C28F8: FLdPr var_AC
  loc_6C28FB: Me.Clear
  loc_6C2900: FFree1Ad var_AC
  loc_6C2903: LitI2_Byte 1
  loc_6C2905: FLdRfVar var_86
  loc_6C2908: FLdI2 var_88
  loc_6C290B: ForI2 var_D4
  loc_6C2911: LitI4 0
  loc_6C2916: LitI4 &HB
  loc_6C291B: FLdRfVar var_1054
  loc_6C291E: Redim
  loc_6C2928: FLdRfVar var_1E0
  loc_6C292B: LitVar_Missing var_1DC
  loc_6C292E: LitVar_Missing var_1BC
  loc_6C2931: LitVar_Missing var_19C
  loc_6C2934: LitVar_Missing var_17C
  loc_6C2937: LitVar_Missing var_15C
  loc_6C293A: LitVar_Missing var_13C
  loc_6C293D: LitVar_Missing var_D0
  loc_6C2940: LitVar_Missing var_C0
  loc_6C2943: LitVar_Missing var_A8
  loc_6C2946: LitVar_Missing var_98
  loc_6C2949: LitStr "Enero"
  loc_6C294C: FStStrCopy var_B0
  loc_6C294F: FLdRfVar var_B0
  loc_6C2952: LitI4 &HE
  loc_6C2957: PopTmpLdAdStr var_DC
  loc_6C295A: LitI2_Byte &H36
  loc_6C295C: PopTmpLdAd2 var_D6
  loc_6C295F: ImpAdLdRf MemVar_74C7D0
  loc_6C2962: NewIfNullPr clsMsg
  loc_6C2965: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C296A: FLdZeroAd var_1E0
  loc_6C296D: CVarStr var_1064
  loc_6C2970: ParmAry1St
  loc_6C2976: FLdRfVar var_330
  loc_6C2979: LitVar_Missing var_32C
  loc_6C297C: LitVar_Missing var_30C
  loc_6C297F: LitVar_Missing var_2EC
  loc_6C2982: LitVar_Missing var_2CC
  loc_6C2985: LitVar_Missing var_2AC
  loc_6C2988: LitVar_Missing var_28C
  loc_6C298B: LitVar_Missing var_26C
  loc_6C298E: LitVar_Missing var_24C
  loc_6C2991: LitVar_Missing var_22C
  loc_6C2994: LitVar_Missing var_20C
  loc_6C2997: LitStr "Febrero"
  loc_6C299A: FStStrCopy var_1EC
  loc_6C299D: FLdRfVar var_1EC
  loc_6C29A0: LitI4 &HF
  loc_6C29A5: PopTmpLdAdStr var_1E8
  loc_6C29A8: LitI2_Byte &H36
  loc_6C29AA: PopTmpLdAd2 var_1E2
  loc_6C29AD: ImpAdLdRf MemVar_74C7D0
  loc_6C29B0: NewIfNullPr clsMsg
  loc_6C29B3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C29B8: FLdZeroAd var_330
  loc_6C29BB: CVarStr var_1074
  loc_6C29BE: ParmAry1St
  loc_6C29C4: FLdRfVar var_480
  loc_6C29C7: LitVar_Missing var_47C
  loc_6C29CA: LitVar_Missing var_45C
  loc_6C29CD: LitVar_Missing var_43C
  loc_6C29D0: LitVar_Missing var_41C
  loc_6C29D3: LitVar_Missing var_3FC
  loc_6C29D6: LitVar_Missing var_3DC
  loc_6C29D9: LitVar_Missing var_3BC
  loc_6C29DC: LitVar_Missing var_39C
  loc_6C29DF: LitVar_Missing var_37C
  loc_6C29E2: LitVar_Missing var_35C
  loc_6C29E5: LitStr "Marzo"
  loc_6C29E8: FStStrCopy var_33C
  loc_6C29EB: FLdRfVar var_33C
  loc_6C29EE: LitI4 &H10
  loc_6C29F3: PopTmpLdAdStr var_338
  loc_6C29F6: LitI2_Byte &H36
  loc_6C29F8: PopTmpLdAd2 var_332
  loc_6C29FB: ImpAdLdRf MemVar_74C7D0
  loc_6C29FE: NewIfNullPr clsMsg
  loc_6C2A01: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2A06: FLdZeroAd var_480
  loc_6C2A09: CVarStr var_1084
  loc_6C2A0C: ParmAry1St
  loc_6C2A12: FLdRfVar var_5D0
  loc_6C2A15: LitVar_Missing var_5CC
  loc_6C2A18: LitVar_Missing var_5AC
  loc_6C2A1B: LitVar_Missing var_58C
  loc_6C2A1E: LitVar_Missing var_56C
  loc_6C2A21: LitVar_Missing var_54C
  loc_6C2A24: LitVar_Missing var_52C
  loc_6C2A27: LitVar_Missing var_50C
  loc_6C2A2A: LitVar_Missing var_4EC
  loc_6C2A2D: LitVar_Missing var_4CC
  loc_6C2A30: LitVar_Missing var_4AC
  loc_6C2A33: LitStr "Abril"
  loc_6C2A36: FStStrCopy var_48C
  loc_6C2A39: FLdRfVar var_48C
  loc_6C2A3C: LitI4 &H11
  loc_6C2A41: PopTmpLdAdStr var_488
  loc_6C2A44: LitI2_Byte &H36
  loc_6C2A46: PopTmpLdAd2 var_482
  loc_6C2A49: ImpAdLdRf MemVar_74C7D0
  loc_6C2A4C: NewIfNullPr clsMsg
  loc_6C2A4F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2A54: FLdZeroAd var_5D0
  loc_6C2A57: CVarStr var_1094
  loc_6C2A5A: ParmAry1St
  loc_6C2A60: FLdRfVar var_720
  loc_6C2A63: LitVar_Missing var_71C
  loc_6C2A66: LitVar_Missing var_6FC
  loc_6C2A69: LitVar_Missing var_6DC
  loc_6C2A6C: LitVar_Missing var_6BC
  loc_6C2A6F: LitVar_Missing var_69C
  loc_6C2A72: LitVar_Missing var_67C
  loc_6C2A75: LitVar_Missing var_65C
  loc_6C2A78: LitVar_Missing var_63C
  loc_6C2A7B: LitVar_Missing var_61C
  loc_6C2A7E: LitVar_Missing var_5FC
  loc_6C2A81: LitStr "Mayo"
  loc_6C2A84: FStStrCopy var_5DC
  loc_6C2A87: FLdRfVar var_5DC
  loc_6C2A8A: LitI4 &H12
  loc_6C2A8F: PopTmpLdAdStr var_5D8
  loc_6C2A92: LitI2_Byte &H36
  loc_6C2A94: PopTmpLdAd2 var_5D2
  loc_6C2A97: ImpAdLdRf MemVar_74C7D0
  loc_6C2A9A: NewIfNullPr clsMsg
  loc_6C2A9D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2AA2: FLdZeroAd var_720
  loc_6C2AA5: CVarStr var_10A4
  loc_6C2AA8: ParmAry1St
  loc_6C2AAE: FLdRfVar var_870
  loc_6C2AB1: LitVar_Missing var_86C
  loc_6C2AB4: LitVar_Missing var_84C
  loc_6C2AB7: LitVar_Missing var_82C
  loc_6C2ABA: LitVar_Missing var_80C
  loc_6C2ABD: LitVar_Missing var_7EC
  loc_6C2AC0: LitVar_Missing var_7CC
  loc_6C2AC3: LitVar_Missing var_7AC
  loc_6C2AC6: LitVar_Missing var_78C
  loc_6C2AC9: LitVar_Missing var_76C
  loc_6C2ACC: LitVar_Missing var_74C
  loc_6C2ACF: LitStr "Junio"
  loc_6C2AD2: FStStrCopy var_72C
  loc_6C2AD5: FLdRfVar var_72C
  loc_6C2AD8: LitI4 &H13
  loc_6C2ADD: PopTmpLdAdStr var_728
  loc_6C2AE0: LitI2_Byte &H36
  loc_6C2AE2: PopTmpLdAd2 var_722
  loc_6C2AE5: ImpAdLdRf MemVar_74C7D0
  loc_6C2AE8: NewIfNullPr clsMsg
  loc_6C2AEB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2AF0: FLdZeroAd var_870
  loc_6C2AF3: CVarStr var_10B4
  loc_6C2AF6: ParmAry1St
  loc_6C2AFC: FLdRfVar var_9C0
  loc_6C2AFF: LitVar_Missing var_9BC
  loc_6C2B02: LitVar_Missing var_99C
  loc_6C2B05: LitVar_Missing var_97C
  loc_6C2B08: LitVar_Missing var_95C
  loc_6C2B0B: LitVar_Missing var_93C
  loc_6C2B0E: LitVar_Missing var_91C
  loc_6C2B11: LitVar_Missing var_8FC
  loc_6C2B14: LitVar_Missing var_8DC
  loc_6C2B17: LitVar_Missing var_8BC
  loc_6C2B1A: LitVar_Missing var_89C
  loc_6C2B1D: LitStr "Julio"
  loc_6C2B20: FStStrCopy var_87C
  loc_6C2B23: FLdRfVar var_87C
  loc_6C2B26: LitI4 &H14
  loc_6C2B2B: PopTmpLdAdStr var_878
  loc_6C2B2E: LitI2_Byte &H36
  loc_6C2B30: PopTmpLdAd2 var_872
  loc_6C2B33: ImpAdLdRf MemVar_74C7D0
  loc_6C2B36: NewIfNullPr clsMsg
  loc_6C2B39: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2B3E: FLdZeroAd var_9C0
  loc_6C2B41: CVarStr var_10C4
  loc_6C2B44: ParmAry1St
  loc_6C2B4A: FLdRfVar var_B10
  loc_6C2B4D: LitVar_Missing var_B0C
  loc_6C2B50: LitVar_Missing var_AEC
  loc_6C2B53: LitVar_Missing var_ACC
  loc_6C2B56: LitVar_Missing var_AAC
  loc_6C2B59: LitVar_Missing var_A8C
  loc_6C2B5C: LitVar_Missing var_A6C
  loc_6C2B5F: LitVar_Missing var_A4C
  loc_6C2B62: LitVar_Missing var_A2C
  loc_6C2B65: LitVar_Missing var_A0C
  loc_6C2B68: LitVar_Missing var_9EC
  loc_6C2B6B: LitStr "Agosto"
  loc_6C2B6E: FStStrCopy var_9CC
  loc_6C2B71: FLdRfVar var_9CC
  loc_6C2B74: LitI4 &H15
  loc_6C2B79: PopTmpLdAdStr var_9C8
  loc_6C2B7C: LitI2_Byte &H36
  loc_6C2B7E: PopTmpLdAd2 var_9C2
  loc_6C2B81: ImpAdLdRf MemVar_74C7D0
  loc_6C2B84: NewIfNullPr clsMsg
  loc_6C2B87: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2B8C: FLdZeroAd var_B10
  loc_6C2B8F: CVarStr var_10D4
  loc_6C2B92: ParmAry1St
  loc_6C2B98: FLdRfVar var_C60
  loc_6C2B9B: LitVar_Missing var_C5C
  loc_6C2B9E: LitVar_Missing var_C3C
  loc_6C2BA1: LitVar_Missing var_C1C
  loc_6C2BA4: LitVar_Missing var_BFC
  loc_6C2BA7: LitVar_Missing var_BDC
  loc_6C2BAA: LitVar_Missing var_BBC
  loc_6C2BAD: LitVar_Missing var_B9C
  loc_6C2BB0: LitVar_Missing var_B7C
  loc_6C2BB3: LitVar_Missing var_B5C
  loc_6C2BB6: LitVar_Missing var_B3C
  loc_6C2BB9: LitStr "Septiembre"
  loc_6C2BBC: FStStrCopy var_B1C
  loc_6C2BBF: FLdRfVar var_B1C
  loc_6C2BC2: LitI4 &H16
  loc_6C2BC7: PopTmpLdAdStr var_B18
  loc_6C2BCA: LitI2_Byte &H36
  loc_6C2BCC: PopTmpLdAd2 var_B12
  loc_6C2BCF: ImpAdLdRf MemVar_74C7D0
  loc_6C2BD2: NewIfNullPr clsMsg
  loc_6C2BD5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2BDA: FLdZeroAd var_C60
  loc_6C2BDD: CVarStr var_10E4
  loc_6C2BE0: ParmAry1St
  loc_6C2BE6: FLdRfVar var_DB0
  loc_6C2BE9: LitVar_Missing var_DAC
  loc_6C2BEC: LitVar_Missing var_D8C
  loc_6C2BEF: LitVar_Missing var_D6C
  loc_6C2BF2: LitVar_Missing var_D4C
  loc_6C2BF5: LitVar_Missing var_D2C
  loc_6C2BF8: LitVar_Missing var_D0C
  loc_6C2BFB: LitVar_Missing var_CEC
  loc_6C2BFE: LitVar_Missing var_CCC
  loc_6C2C01: LitVar_Missing var_CAC
  loc_6C2C04: LitVar_Missing var_C8C
  loc_6C2C07: LitStr "Octubre"
  loc_6C2C0A: FStStrCopy var_C6C
  loc_6C2C0D: FLdRfVar var_C6C
  loc_6C2C10: LitI4 &H17
  loc_6C2C15: PopTmpLdAdStr var_C68
  loc_6C2C18: LitI2_Byte &H36
  loc_6C2C1A: PopTmpLdAd2 var_C62
  loc_6C2C1D: ImpAdLdRf MemVar_74C7D0
  loc_6C2C20: NewIfNullPr clsMsg
  loc_6C2C23: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2C28: FLdZeroAd var_DB0
  loc_6C2C2B: CVarStr var_10F4
  loc_6C2C2E: ParmAry1St
  loc_6C2C34: FLdRfVar var_F00
  loc_6C2C37: LitVar_Missing var_EFC
  loc_6C2C3A: LitVar_Missing var_EDC
  loc_6C2C3D: LitVar_Missing var_EBC
  loc_6C2C40: LitVar_Missing var_E9C
  loc_6C2C43: LitVar_Missing var_E7C
  loc_6C2C46: LitVar_Missing var_E5C
  loc_6C2C49: LitVar_Missing var_E3C
  loc_6C2C4C: LitVar_Missing var_E1C
  loc_6C2C4F: LitVar_Missing var_DFC
  loc_6C2C52: LitVar_Missing var_DDC
  loc_6C2C55: LitStr "Noviembre"
  loc_6C2C58: FStStrCopy var_DBC
  loc_6C2C5B: FLdRfVar var_DBC
  loc_6C2C5E: LitI4 &H18
  loc_6C2C63: PopTmpLdAdStr var_DB8
  loc_6C2C66: LitI2_Byte &H36
  loc_6C2C68: PopTmpLdAd2 var_DB2
  loc_6C2C6B: ImpAdLdRf MemVar_74C7D0
  loc_6C2C6E: NewIfNullPr clsMsg
  loc_6C2C71: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2C76: FLdZeroAd var_F00
  loc_6C2C79: CVarStr var_1104
  loc_6C2C7C: ParmAry1St
  loc_6C2C82: FLdRfVar var_1050
  loc_6C2C85: LitVar_Missing var_104C
  loc_6C2C88: LitVar_Missing var_102C
  loc_6C2C8B: LitVar_Missing var_100C
  loc_6C2C8E: LitVar_Missing var_FEC
  loc_6C2C91: LitVar_Missing var_FCC
  loc_6C2C94: LitVar_Missing var_FAC
  loc_6C2C97: LitVar_Missing var_F8C
  loc_6C2C9A: LitVar_Missing var_F6C
  loc_6C2C9D: LitVar_Missing var_F4C
  loc_6C2CA0: LitVar_Missing var_F2C
  loc_6C2CA3: LitStr "Diciembre"
  loc_6C2CA6: FStStrCopy var_F0C
  loc_6C2CA9: FLdRfVar var_F0C
  loc_6C2CAC: LitI4 &H19
  loc_6C2CB1: PopTmpLdAdStr var_F08
  loc_6C2CB4: LitI2_Byte &H36
  loc_6C2CB6: PopTmpLdAd2 var_F02
  loc_6C2CB9: ImpAdLdRf MemVar_74C7D0
  loc_6C2CBC: NewIfNullPr clsMsg
  loc_6C2CBF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2CC4: FLdZeroAd var_1050
  loc_6C2CC7: CVarStr var_1114
  loc_6C2CCA: ParmAry1St
  loc_6C2CD0: FLdRfVar var_1054
  loc_6C2CD3: FLdI2 var_86
  loc_6C2CD6: CR8I2
  loc_6C2CD7: PopFPR4
  loc_6C2CD8: FLdRfVar var_1124
  loc_6C2CDB: ImpAdCallFPR4  = Choose(, )
  loc_6C2CE0: FLdRfVar var_1054
  loc_6C2CE3: Erase
  loc_6C2CE4: LitVar_Missing var_1138
  loc_6C2CE7: PopAdLdVar
  loc_6C2CE8: FLdRfVar var_1124
  loc_6C2CEB: CStrVarVal var_1128
  loc_6C2CEF: FLdPrThis
  loc_6C2CF0: VCallAd Control_ID_cboMonth
  loc_6C2CF3: FStAdFunc var_AC
  loc_6C2CF6: FLdPr var_AC
  loc_6C2CF9: Me.AddItem from_stack_1, from_stack_2
  loc_6C2CFE: FFreeStr var_B0 = "": var_1EC = "": var_33C = "": var_48C = "": var_5DC = "": var_72C = "": var_87C = "": var_9CC = "": var_B1C = "": var_C6C = "": var_DBC = "": var_F0C = ""
  loc_6C2D1B: FFree1Ad var_AC
  loc_6C2D1E: FFreeVar var_1124 = "": var_C8C = "": var_CAC = "": var_CCC = "": var_CEC = "": var_D0C = "": var_D2C = "": var_D4C = "": var_D6C = "": var_D8C = "": var_DAC = "": var_DDC = "": var_DFC = "": var_E1C = "": var_E3C = "": var_E5C = "": var_E7C = "": var_E9C = "": var_EBC = "": var_EDC = "": var_EFC = "": var_F2C = "": var_F4C = "": var_F6C = "": var_F8C = "": var_FAC = "": var_FCC = "": var_FEC = "": var_100C = "": var_102C = "": var_104C = "": var_89C = "": var_8BC = "": var_8DC = "": var_8FC = "": var_91C = "": var_93C = "": var_95C = "": var_97C = "": var_99C = "": var_9BC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A6C = "": var_A8C = "": var_AAC = "": var_ACC = "": var_AEC = "": var_B0C = "": var_B3C = "": var_B5C = "": var_B7C = "": var_B9C = "": var_BBC = "": var_BDC = "": var_BFC = "": var_C1C = "": var_C3C = "": var_C5C = "": var_4AC = "": var_4CC = "": var_4EC = "": var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_74C = "": var_76C = "": var_78C = "": var_7AC = "": var_7CC = "": var_7EC = "": var_80C = "": var_82C = "": var_84C = "": var_86C = "": var_98 = "": var_A8 = "": var_C0 = "": var_D0 = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = ""
  loc_6C2E13: FLdRfVar var_86
  loc_6C2E16: NextI2 var_D4, loc_6C2911
  loc_6C2E1B: FLdRfVar var_98
  loc_6C2E1E: ImpAdCallFPR4  = Date
  loc_6C2E23: FLdRfVar var_98
  loc_6C2E26: FLdRfVar var_A8
  loc_6C2E29: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6C2E2E: FLdRfVar var_A8
  loc_6C2E31: FLdRfVar var_B0
  loc_6C2E34: FLdPrThis
  loc_6C2E35: VCallAd Control_ID_cboYear
  loc_6C2E38: FStAdFunc var_AC
  loc_6C2E3B: FLdPr var_AC
  loc_6C2E3E:  = Me.Text
  loc_6C2E43: FLdZeroAd var_B0
  loc_6C2E46: CVarStr var_C0
  loc_6C2E49: HardType
  loc_6C2E4A: EqVarBool
  loc_6C2E4C: FFree1Ad var_AC
  loc_6C2E4F: FFreeVar var_98 = "": var_A8 = ""
  loc_6C2E58: BranchF loc_6C2E97
  loc_6C2E5B: FLdRfVar var_98
  loc_6C2E5E: ImpAdCallFPR4  = Date
  loc_6C2E63: FLdRfVar var_98
  loc_6C2E66: FLdRfVar var_A8
  loc_6C2E69: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6C2E6E: FLdRfVar var_A8
  loc_6C2E71: LitVarI2 var_EC, 1
  loc_6C2E76: SubVar var_C0
  loc_6C2E7A: CI2Var
  loc_6C2E7B: FLdPrThis
  loc_6C2E7C: VCallAd Control_ID_cboMonth
  loc_6C2E7F: FStAdFunc var_AC
  loc_6C2E82: FLdPr var_AC
  loc_6C2E85: Me.ListIndex = from_stack_1
  loc_6C2E8A: FFree1Ad var_AC
  loc_6C2E8D: FFreeVar var_98 = ""
  loc_6C2E94: Branch loc_6C2EAB
  loc_6C2E97: LitI2_Byte 0
  loc_6C2E99: FLdPrThis
  loc_6C2E9A: VCallAd Control_ID_cboMonth
  loc_6C2E9D: FStAdFunc var_AC
  loc_6C2EA0: FLdPr var_AC
  loc_6C2EA3: Me.ListIndex = from_stack_1
  loc_6C2EA8: FFree1Ad var_AC
  loc_6C2EAB: FLdRfVar var_B0
  loc_6C2EAE: ImpAdLdRf MemVar_74C760
  loc_6C2EB1: NewIfNullPr Formx
  loc_6C2EB4: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_6C2EB9: ILdRf var_B0
  loc_6C2EBC: LitStr "periodo"
  loc_6C2EBF: EqStr
  loc_6C2EC1: FFree1Str var_B0
  loc_6C2EC4: BranchF loc_6C2ECC
  loc_6C2EC7: from_stack_1v = Proc_40_10_662B6C()
  loc_6C2ECC: ExitProcHresult
  loc_6C2ECD: FStAdFunc arg_0
End Sub

Private Sub cboMonth_Click() '5C8AF0
  'Data Table: 44965C
  loc_5C8AE8: from_stack_1v = Proc_40_10_662B6C()
  loc_5C8AED: ExitProcHresult
End Sub

Private Sub cmbMonth2_Click() '5C8B60
  'Data Table: 44965C
  loc_5C8B58: from_stack_1v = Proc_40_11_665820()
  loc_5C8B5D: ExitProcHresult
End Sub

Private Sub cmbYear2_Click() '6C25D0
  'Data Table: 44965C
  loc_6C1F88: FLdRfVar var_98
  loc_6C1F8B: ImpAdCallFPR4  = Date
  loc_6C1F90: FLdRfVar var_98
  loc_6C1F93: FLdRfVar var_A8
  loc_6C1F96: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6C1F9B: FLdRfVar var_A8
  loc_6C1F9E: FLdRfVar var_B0
  loc_6C1FA1: FLdPrThis
  loc_6C1FA2: VCallAd Control_ID_cmbYear2
  loc_6C1FA5: FStAdFunc var_AC
  loc_6C1FA8: FLdPr var_AC
  loc_6C1FAB:  = Me.Text
  loc_6C1FB0: FLdZeroAd var_B0
  loc_6C1FB3: CVarStr var_C0
  loc_6C1FB6: HardType
  loc_6C1FB7: EqVarBool
  loc_6C1FB9: FFree1Ad var_AC
  loc_6C1FBC: FFreeVar var_98 = "": var_A8 = ""
  loc_6C1FC5: BranchF loc_6C1FEC
  loc_6C1FC8: FLdRfVar var_98
  loc_6C1FCB: ImpAdCallFPR4  = Date
  loc_6C1FD0: FLdRfVar var_98
  loc_6C1FD3: FLdRfVar var_A8
  loc_6C1FD6: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6C1FDB: FLdRfVar var_A8
  loc_6C1FDE: CI2Var
  loc_6C1FDF: FStI2 var_88
  loc_6C1FE2: FFreeVar var_98 = ""
  loc_6C1FE9: Branch loc_6C1FF1
  loc_6C1FEC: LitI2_Byte &HC
  loc_6C1FEE: FStI2 var_88
  loc_6C1FF1: FLdPrThis
  loc_6C1FF2: VCallAd Control_ID_cmbMonth2
  loc_6C1FF5: FStAdFunc var_AC
  loc_6C1FF8: FLdPr var_AC
  loc_6C1FFB: Me.Clear
  loc_6C2000: FFree1Ad var_AC
  loc_6C2003: LitI2_Byte 1
  loc_6C2005: FLdRfVar var_86
  loc_6C2008: FLdI2 var_88
  loc_6C200B: ForI2 var_D4
  loc_6C2011: LitI4 0
  loc_6C2016: LitI4 &HB
  loc_6C201B: FLdRfVar var_1054
  loc_6C201E: Redim
  loc_6C2028: FLdRfVar var_1E0
  loc_6C202B: LitVar_Missing var_1DC
  loc_6C202E: LitVar_Missing var_1BC
  loc_6C2031: LitVar_Missing var_19C
  loc_6C2034: LitVar_Missing var_17C
  loc_6C2037: LitVar_Missing var_15C
  loc_6C203A: LitVar_Missing var_13C
  loc_6C203D: LitVar_Missing var_D0
  loc_6C2040: LitVar_Missing var_C0
  loc_6C2043: LitVar_Missing var_A8
  loc_6C2046: LitVar_Missing var_98
  loc_6C2049: LitStr "Enero"
  loc_6C204C: FStStrCopy var_B0
  loc_6C204F: FLdRfVar var_B0
  loc_6C2052: LitI4 &HE
  loc_6C2057: PopTmpLdAdStr var_DC
  loc_6C205A: LitI2_Byte &H36
  loc_6C205C: PopTmpLdAd2 var_D6
  loc_6C205F: ImpAdLdRf MemVar_74C7D0
  loc_6C2062: NewIfNullPr clsMsg
  loc_6C2065: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C206A: FLdZeroAd var_1E0
  loc_6C206D: CVarStr var_1064
  loc_6C2070: ParmAry1St
  loc_6C2076: FLdRfVar var_330
  loc_6C2079: LitVar_Missing var_32C
  loc_6C207C: LitVar_Missing var_30C
  loc_6C207F: LitVar_Missing var_2EC
  loc_6C2082: LitVar_Missing var_2CC
  loc_6C2085: LitVar_Missing var_2AC
  loc_6C2088: LitVar_Missing var_28C
  loc_6C208B: LitVar_Missing var_26C
  loc_6C208E: LitVar_Missing var_24C
  loc_6C2091: LitVar_Missing var_22C
  loc_6C2094: LitVar_Missing var_20C
  loc_6C2097: LitStr "Febrero"
  loc_6C209A: FStStrCopy var_1EC
  loc_6C209D: FLdRfVar var_1EC
  loc_6C20A0: LitI4 &HF
  loc_6C20A5: PopTmpLdAdStr var_1E8
  loc_6C20A8: LitI2_Byte &H36
  loc_6C20AA: PopTmpLdAd2 var_1E2
  loc_6C20AD: ImpAdLdRf MemVar_74C7D0
  loc_6C20B0: NewIfNullPr clsMsg
  loc_6C20B3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C20B8: FLdZeroAd var_330
  loc_6C20BB: CVarStr var_1074
  loc_6C20BE: ParmAry1St
  loc_6C20C4: FLdRfVar var_480
  loc_6C20C7: LitVar_Missing var_47C
  loc_6C20CA: LitVar_Missing var_45C
  loc_6C20CD: LitVar_Missing var_43C
  loc_6C20D0: LitVar_Missing var_41C
  loc_6C20D3: LitVar_Missing var_3FC
  loc_6C20D6: LitVar_Missing var_3DC
  loc_6C20D9: LitVar_Missing var_3BC
  loc_6C20DC: LitVar_Missing var_39C
  loc_6C20DF: LitVar_Missing var_37C
  loc_6C20E2: LitVar_Missing var_35C
  loc_6C20E5: LitStr "Marzo"
  loc_6C20E8: FStStrCopy var_33C
  loc_6C20EB: FLdRfVar var_33C
  loc_6C20EE: LitI4 &H10
  loc_6C20F3: PopTmpLdAdStr var_338
  loc_6C20F6: LitI2_Byte &H36
  loc_6C20F8: PopTmpLdAd2 var_332
  loc_6C20FB: ImpAdLdRf MemVar_74C7D0
  loc_6C20FE: NewIfNullPr clsMsg
  loc_6C2101: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2106: FLdZeroAd var_480
  loc_6C2109: CVarStr var_1084
  loc_6C210C: ParmAry1St
  loc_6C2112: FLdRfVar var_5D0
  loc_6C2115: LitVar_Missing var_5CC
  loc_6C2118: LitVar_Missing var_5AC
  loc_6C211B: LitVar_Missing var_58C
  loc_6C211E: LitVar_Missing var_56C
  loc_6C2121: LitVar_Missing var_54C
  loc_6C2124: LitVar_Missing var_52C
  loc_6C2127: LitVar_Missing var_50C
  loc_6C212A: LitVar_Missing var_4EC
  loc_6C212D: LitVar_Missing var_4CC
  loc_6C2130: LitVar_Missing var_4AC
  loc_6C2133: LitStr "Abril"
  loc_6C2136: FStStrCopy var_48C
  loc_6C2139: FLdRfVar var_48C
  loc_6C213C: LitI4 &H11
  loc_6C2141: PopTmpLdAdStr var_488
  loc_6C2144: LitI2_Byte &H36
  loc_6C2146: PopTmpLdAd2 var_482
  loc_6C2149: ImpAdLdRf MemVar_74C7D0
  loc_6C214C: NewIfNullPr clsMsg
  loc_6C214F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2154: FLdZeroAd var_5D0
  loc_6C2157: CVarStr var_1094
  loc_6C215A: ParmAry1St
  loc_6C2160: FLdRfVar var_720
  loc_6C2163: LitVar_Missing var_71C
  loc_6C2166: LitVar_Missing var_6FC
  loc_6C2169: LitVar_Missing var_6DC
  loc_6C216C: LitVar_Missing var_6BC
  loc_6C216F: LitVar_Missing var_69C
  loc_6C2172: LitVar_Missing var_67C
  loc_6C2175: LitVar_Missing var_65C
  loc_6C2178: LitVar_Missing var_63C
  loc_6C217B: LitVar_Missing var_61C
  loc_6C217E: LitVar_Missing var_5FC
  loc_6C2181: LitStr "Mayo"
  loc_6C2184: FStStrCopy var_5DC
  loc_6C2187: FLdRfVar var_5DC
  loc_6C218A: LitI4 &H12
  loc_6C218F: PopTmpLdAdStr var_5D8
  loc_6C2192: LitI2_Byte &H36
  loc_6C2194: PopTmpLdAd2 var_5D2
  loc_6C2197: ImpAdLdRf MemVar_74C7D0
  loc_6C219A: NewIfNullPr clsMsg
  loc_6C219D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C21A2: FLdZeroAd var_720
  loc_6C21A5: CVarStr var_10A4
  loc_6C21A8: ParmAry1St
  loc_6C21AE: FLdRfVar var_870
  loc_6C21B1: LitVar_Missing var_86C
  loc_6C21B4: LitVar_Missing var_84C
  loc_6C21B7: LitVar_Missing var_82C
  loc_6C21BA: LitVar_Missing var_80C
  loc_6C21BD: LitVar_Missing var_7EC
  loc_6C21C0: LitVar_Missing var_7CC
  loc_6C21C3: LitVar_Missing var_7AC
  loc_6C21C6: LitVar_Missing var_78C
  loc_6C21C9: LitVar_Missing var_76C
  loc_6C21CC: LitVar_Missing var_74C
  loc_6C21CF: LitStr "Junio"
  loc_6C21D2: FStStrCopy var_72C
  loc_6C21D5: FLdRfVar var_72C
  loc_6C21D8: LitI4 &H13
  loc_6C21DD: PopTmpLdAdStr var_728
  loc_6C21E0: LitI2_Byte &H36
  loc_6C21E2: PopTmpLdAd2 var_722
  loc_6C21E5: ImpAdLdRf MemVar_74C7D0
  loc_6C21E8: NewIfNullPr clsMsg
  loc_6C21EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C21F0: FLdZeroAd var_870
  loc_6C21F3: CVarStr var_10B4
  loc_6C21F6: ParmAry1St
  loc_6C21FC: FLdRfVar var_9C0
  loc_6C21FF: LitVar_Missing var_9BC
  loc_6C2202: LitVar_Missing var_99C
  loc_6C2205: LitVar_Missing var_97C
  loc_6C2208: LitVar_Missing var_95C
  loc_6C220B: LitVar_Missing var_93C
  loc_6C220E: LitVar_Missing var_91C
  loc_6C2211: LitVar_Missing var_8FC
  loc_6C2214: LitVar_Missing var_8DC
  loc_6C2217: LitVar_Missing var_8BC
  loc_6C221A: LitVar_Missing var_89C
  loc_6C221D: LitStr "Julio"
  loc_6C2220: FStStrCopy var_87C
  loc_6C2223: FLdRfVar var_87C
  loc_6C2226: LitI4 &H14
  loc_6C222B: PopTmpLdAdStr var_878
  loc_6C222E: LitI2_Byte &H36
  loc_6C2230: PopTmpLdAd2 var_872
  loc_6C2233: ImpAdLdRf MemVar_74C7D0
  loc_6C2236: NewIfNullPr clsMsg
  loc_6C2239: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C223E: FLdZeroAd var_9C0
  loc_6C2241: CVarStr var_10C4
  loc_6C2244: ParmAry1St
  loc_6C224A: FLdRfVar var_B10
  loc_6C224D: LitVar_Missing var_B0C
  loc_6C2250: LitVar_Missing var_AEC
  loc_6C2253: LitVar_Missing var_ACC
  loc_6C2256: LitVar_Missing var_AAC
  loc_6C2259: LitVar_Missing var_A8C
  loc_6C225C: LitVar_Missing var_A6C
  loc_6C225F: LitVar_Missing var_A4C
  loc_6C2262: LitVar_Missing var_A2C
  loc_6C2265: LitVar_Missing var_A0C
  loc_6C2268: LitVar_Missing var_9EC
  loc_6C226B: LitStr "Agosto"
  loc_6C226E: FStStrCopy var_9CC
  loc_6C2271: FLdRfVar var_9CC
  loc_6C2274: LitI4 &H15
  loc_6C2279: PopTmpLdAdStr var_9C8
  loc_6C227C: LitI2_Byte &H36
  loc_6C227E: PopTmpLdAd2 var_9C2
  loc_6C2281: ImpAdLdRf MemVar_74C7D0
  loc_6C2284: NewIfNullPr clsMsg
  loc_6C2287: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C228C: FLdZeroAd var_B10
  loc_6C228F: CVarStr var_10D4
  loc_6C2292: ParmAry1St
  loc_6C2298: FLdRfVar var_C60
  loc_6C229B: LitVar_Missing var_C5C
  loc_6C229E: LitVar_Missing var_C3C
  loc_6C22A1: LitVar_Missing var_C1C
  loc_6C22A4: LitVar_Missing var_BFC
  loc_6C22A7: LitVar_Missing var_BDC
  loc_6C22AA: LitVar_Missing var_BBC
  loc_6C22AD: LitVar_Missing var_B9C
  loc_6C22B0: LitVar_Missing var_B7C
  loc_6C22B3: LitVar_Missing var_B5C
  loc_6C22B6: LitVar_Missing var_B3C
  loc_6C22B9: LitStr "Septiembre"
  loc_6C22BC: FStStrCopy var_B1C
  loc_6C22BF: FLdRfVar var_B1C
  loc_6C22C2: LitI4 &H16
  loc_6C22C7: PopTmpLdAdStr var_B18
  loc_6C22CA: LitI2_Byte &H36
  loc_6C22CC: PopTmpLdAd2 var_B12
  loc_6C22CF: ImpAdLdRf MemVar_74C7D0
  loc_6C22D2: NewIfNullPr clsMsg
  loc_6C22D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C22DA: FLdZeroAd var_C60
  loc_6C22DD: CVarStr var_10E4
  loc_6C22E0: ParmAry1St
  loc_6C22E6: FLdRfVar var_DB0
  loc_6C22E9: LitVar_Missing var_DAC
  loc_6C22EC: LitVar_Missing var_D8C
  loc_6C22EF: LitVar_Missing var_D6C
  loc_6C22F2: LitVar_Missing var_D4C
  loc_6C22F5: LitVar_Missing var_D2C
  loc_6C22F8: LitVar_Missing var_D0C
  loc_6C22FB: LitVar_Missing var_CEC
  loc_6C22FE: LitVar_Missing var_CCC
  loc_6C2301: LitVar_Missing var_CAC
  loc_6C2304: LitVar_Missing var_C8C
  loc_6C2307: LitStr "Octubre"
  loc_6C230A: FStStrCopy var_C6C
  loc_6C230D: FLdRfVar var_C6C
  loc_6C2310: LitI4 &H17
  loc_6C2315: PopTmpLdAdStr var_C68
  loc_6C2318: LitI2_Byte &H36
  loc_6C231A: PopTmpLdAd2 var_C62
  loc_6C231D: ImpAdLdRf MemVar_74C7D0
  loc_6C2320: NewIfNullPr clsMsg
  loc_6C2323: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2328: FLdZeroAd var_DB0
  loc_6C232B: CVarStr var_10F4
  loc_6C232E: ParmAry1St
  loc_6C2334: FLdRfVar var_F00
  loc_6C2337: LitVar_Missing var_EFC
  loc_6C233A: LitVar_Missing var_EDC
  loc_6C233D: LitVar_Missing var_EBC
  loc_6C2340: LitVar_Missing var_E9C
  loc_6C2343: LitVar_Missing var_E7C
  loc_6C2346: LitVar_Missing var_E5C
  loc_6C2349: LitVar_Missing var_E3C
  loc_6C234C: LitVar_Missing var_E1C
  loc_6C234F: LitVar_Missing var_DFC
  loc_6C2352: LitVar_Missing var_DDC
  loc_6C2355: LitStr "Noviembre"
  loc_6C2358: FStStrCopy var_DBC
  loc_6C235B: FLdRfVar var_DBC
  loc_6C235E: LitI4 &H18
  loc_6C2363: PopTmpLdAdStr var_DB8
  loc_6C2366: LitI2_Byte &H36
  loc_6C2368: PopTmpLdAd2 var_DB2
  loc_6C236B: ImpAdLdRf MemVar_74C7D0
  loc_6C236E: NewIfNullPr clsMsg
  loc_6C2371: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C2376: FLdZeroAd var_F00
  loc_6C2379: CVarStr var_1104
  loc_6C237C: ParmAry1St
  loc_6C2382: FLdRfVar var_1050
  loc_6C2385: LitVar_Missing var_104C
  loc_6C2388: LitVar_Missing var_102C
  loc_6C238B: LitVar_Missing var_100C
  loc_6C238E: LitVar_Missing var_FEC
  loc_6C2391: LitVar_Missing var_FCC
  loc_6C2394: LitVar_Missing var_FAC
  loc_6C2397: LitVar_Missing var_F8C
  loc_6C239A: LitVar_Missing var_F6C
  loc_6C239D: LitVar_Missing var_F4C
  loc_6C23A0: LitVar_Missing var_F2C
  loc_6C23A3: LitStr "Diciembre"
  loc_6C23A6: FStStrCopy var_F0C
  loc_6C23A9: FLdRfVar var_F0C
  loc_6C23AC: LitI4 &H19
  loc_6C23B1: PopTmpLdAdStr var_F08
  loc_6C23B4: LitI2_Byte &H36
  loc_6C23B6: PopTmpLdAd2 var_F02
  loc_6C23B9: ImpAdLdRf MemVar_74C7D0
  loc_6C23BC: NewIfNullPr clsMsg
  loc_6C23BF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6C23C4: FLdZeroAd var_1050
  loc_6C23C7: CVarStr var_1114
  loc_6C23CA: ParmAry1St
  loc_6C23D0: FLdRfVar var_1054
  loc_6C23D3: FLdI2 var_86
  loc_6C23D6: CR8I2
  loc_6C23D7: PopFPR4
  loc_6C23D8: FLdRfVar var_1124
  loc_6C23DB: ImpAdCallFPR4  = Choose(, )
  loc_6C23E0: FLdRfVar var_1054
  loc_6C23E3: Erase
  loc_6C23E4: LitVar_Missing var_1138
  loc_6C23E7: PopAdLdVar
  loc_6C23E8: FLdRfVar var_1124
  loc_6C23EB: CStrVarVal var_1128
  loc_6C23EF: FLdPrThis
  loc_6C23F0: VCallAd Control_ID_cmbMonth2
  loc_6C23F3: FStAdFunc var_AC
  loc_6C23F6: FLdPr var_AC
  loc_6C23F9: Me.AddItem from_stack_1, from_stack_2
  loc_6C23FE: FFreeStr var_B0 = "": var_1EC = "": var_33C = "": var_48C = "": var_5DC = "": var_72C = "": var_87C = "": var_9CC = "": var_B1C = "": var_C6C = "": var_DBC = "": var_F0C = ""
  loc_6C241B: FFree1Ad var_AC
  loc_6C241E: FFreeVar var_1124 = "": var_C8C = "": var_CAC = "": var_CCC = "": var_CEC = "": var_D0C = "": var_D2C = "": var_D4C = "": var_D6C = "": var_D8C = "": var_DAC = "": var_DDC = "": var_DFC = "": var_E1C = "": var_E3C = "": var_E5C = "": var_E7C = "": var_E9C = "": var_EBC = "": var_EDC = "": var_EFC = "": var_F2C = "": var_F4C = "": var_F6C = "": var_F8C = "": var_FAC = "": var_FCC = "": var_FEC = "": var_100C = "": var_102C = "": var_104C = "": var_89C = "": var_8BC = "": var_8DC = "": var_8FC = "": var_91C = "": var_93C = "": var_95C = "": var_97C = "": var_99C = "": var_9BC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A6C = "": var_A8C = "": var_AAC = "": var_ACC = "": var_AEC = "": var_B0C = "": var_B3C = "": var_B5C = "": var_B7C = "": var_B9C = "": var_BBC = "": var_BDC = "": var_BFC = "": var_C1C = "": var_C3C = "": var_C5C = "": var_4AC = "": var_4CC = "": var_4EC = "": var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_74C = "": var_76C = "": var_78C = "": var_7AC = "": var_7CC = "": var_7EC = "": var_80C = "": var_82C = "": var_84C = "": var_86C = "": var_98 = "": var_A8 = "": var_C0 = "": var_D0 = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = ""
  loc_6C2513: FLdRfVar var_86
  loc_6C2516: NextI2 var_D4, loc_6C2011
  loc_6C251B: FLdRfVar var_98
  loc_6C251E: ImpAdCallFPR4  = Date
  loc_6C2523: FLdRfVar var_98
  loc_6C2526: FLdRfVar var_A8
  loc_6C2529: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6C252E: FLdRfVar var_A8
  loc_6C2531: FLdRfVar var_B0
  loc_6C2534: FLdPrThis
  loc_6C2535: VCallAd Control_ID_cmbYear2
  loc_6C2538: FStAdFunc var_AC
  loc_6C253B: FLdPr var_AC
  loc_6C253E:  = Me.Text
  loc_6C2543: FLdZeroAd var_B0
  loc_6C2546: CVarStr var_C0
  loc_6C2549: HardType
  loc_6C254A: EqVarBool
  loc_6C254C: FFree1Ad var_AC
  loc_6C254F: FFreeVar var_98 = "": var_A8 = ""
  loc_6C2558: BranchF loc_6C2597
  loc_6C255B: FLdRfVar var_98
  loc_6C255E: ImpAdCallFPR4  = Date
  loc_6C2563: FLdRfVar var_98
  loc_6C2566: FLdRfVar var_A8
  loc_6C2569: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6C256E: FLdRfVar var_A8
  loc_6C2571: LitVarI2 var_EC, 1
  loc_6C2576: SubVar var_C0
  loc_6C257A: CI2Var
  loc_6C257B: FLdPrThis
  loc_6C257C: VCallAd Control_ID_cmbMonth2
  loc_6C257F: FStAdFunc var_AC
  loc_6C2582: FLdPr var_AC
  loc_6C2585: Me.ListIndex = from_stack_1
  loc_6C258A: FFree1Ad var_AC
  loc_6C258D: FFreeVar var_98 = ""
  loc_6C2594: Branch loc_6C25AB
  loc_6C2597: LitI2_Byte 0
  loc_6C2599: FLdPrThis
  loc_6C259A: VCallAd Control_ID_cmbMonth2
  loc_6C259D: FStAdFunc var_AC
  loc_6C25A0: FLdPr var_AC
  loc_6C25A3: Me.ListIndex = from_stack_1
  loc_6C25A8: FFree1Ad var_AC
  loc_6C25AB: FLdRfVar var_B0
  loc_6C25AE: ImpAdLdRf MemVar_74C760
  loc_6C25B1: NewIfNullPr Formx
  loc_6C25B4: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_6C25B9: ILdRf var_B0
  loc_6C25BC: LitStr "periodo"
  loc_6C25BF: EqStr
  loc_6C25C1: FFree1Str var_B0
  loc_6C25C4: BranchF loc_6C25CC
  loc_6C25C7: from_stack_1v = Proc_40_11_665820()
  loc_6C25CC: ExitProcHresult
End Sub

Private Sub cmdContinuar_Click() '5D184C
  'Data Table: 44965C
  loc_5D1834: ILdRf Me
  loc_5D1837: FStAdNoPop
  loc_5D183B: ImpAdLdRf MemVar_7520D4
  loc_5D183E: NewIfNullPr Global
  loc_5D1841: Global.Unload from_stack_1
  loc_5D1846: FFree1Ad var_88
  loc_5D1849: ExitProcHresult
End Sub

Private Sub cmdVisualizar_Click() '6E3220
  'Data Table: 44965C
  loc_6E2634: FLdRfVar var_9C
  loc_6E2637: ImpAdLdRf MemVar_74C760
  loc_6E263A: NewIfNullPr Formx
  loc_6E263D: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_6E2642: ILdRf var_9C
  loc_6E2645: LitStr "mensual"
  loc_6E2648: EqStr
  loc_6E264A: FFree1Str var_9C
  loc_6E264D: BranchF loc_6E2783
  loc_6E2650: FLdRfVar var_A2
  loc_6E2653: FLdPrThis
  loc_6E2654: VCallAd Control_ID_Reloj
  loc_6E2657: FStAdFunc var_A0
  loc_6E265A: FLdPr var_A0
  loc_6E265D:  = Formx.ComboBox.ListIndex
  loc_6E2662: FLdRfVar var_F0
  loc_6E2665: FLdPrThis
  loc_6E2666: VCallAd Control_ID_cboYear
  loc_6E2669: FStAdFunc var_EC
  loc_6E266C: FLdPr var_EC
  loc_6E266F:  = Me.Text
  loc_6E2674: LitStr "01/"
  loc_6E2677: LitI4 1
  loc_6E267C: LitI4 1
  loc_6E2681: LitVarStr var_D4, "00"
  loc_6E2686: FStVarCopyObj var_E4
  loc_6E2689: FLdRfVar var_E4
  loc_6E268C: FLdI2 var_A2
  loc_6E268F: LitI2_Byte 1
  loc_6E2691: AddI2
  loc_6E2692: CVarI2 var_C4
  loc_6E2695: ImpAdCallI2 Format$(, )
  loc_6E269A: FStStrNoPop var_9C
  loc_6E269D: ConcatStr
  loc_6E269E: FStStrNoPop var_E8
  loc_6E26A1: LitStr "/"
  loc_6E26A4: ConcatStr
  loc_6E26A5: FStStrNoPop var_124
  loc_6E26A8: LitI4 1
  loc_6E26AD: LitI4 1
  loc_6E26B2: LitVarStr var_110, "0000"
  loc_6E26B7: FStVarCopyObj var_120
  loc_6E26BA: FLdRfVar var_120
  loc_6E26BD: FLdZeroAd var_F0
  loc_6E26C0: CVarStr var_100
  loc_6E26C3: ImpAdCallI2 Format$(, )
  loc_6E26C8: FStStrNoPop var_128
  loc_6E26CB: ConcatStr
  loc_6E26CC: FStStr var_8C
  loc_6E26CF: FFreeStr var_9C = "": var_E8 = "": var_124 = ""
  loc_6E26DA: FFreeAd var_A0 = ""
  loc_6E26E1: FFreeVar var_C4 = "": var_E4 = "": var_100 = ""
  loc_6E26EC: ILdRf var_8C
  loc_6E26EF: CDateStr
  loc_6E26F1: CVarDate var_C4
  loc_6E26F5: LitI2_Byte 1
  loc_6E26F7: CR8I2
  loc_6E26F8: PopFPR8
  loc_6E26F9: LitStr "m"
  loc_6E26FC: FLdRfVar var_E4
  loc_6E26FF: ImpAdCallFPR4  = DateAdd(, , )
  loc_6E2704: FLdRfVar var_E4
  loc_6E2707: LitVarI2 var_D4, 1
  loc_6E270C: SubVar var_100
  loc_6E2710: CStrVarTmp
  loc_6E2711: FStStr var_90
  loc_6E2714: FFreeVar var_C4 = ""
  loc_6E271B: LitI4 1
  loc_6E2720: LitI4 1
  loc_6E2725: LitVarStr var_D4, "yyyymmddhhmmss"
  loc_6E272A: FStVarCopyObj var_C4
  loc_6E272D: FLdRfVar var_C4
  loc_6E2730: FLdRfVar var_8C
  loc_6E2733: CVarRef
  loc_6E2738: FLdRfVar var_E4
  loc_6E273B: ImpAdCallFPR4  = Format(, )
  loc_6E2740: FLdRfVar var_E4
  loc_6E2743: LitI4 1
  loc_6E2748: LitI4 1
  loc_6E274D: LitVarStr var_138, "yyyymmdd235959"
  loc_6E2752: FStVarCopyObj var_100
  loc_6E2755: FLdRfVar var_100
  loc_6E2758: FLdRfVar var_90
  loc_6E275B: CVarRef
  loc_6E2760: FLdRfVar var_120
  loc_6E2763: ImpAdCallFPR4  = Format(, )
  loc_6E2768: FLdRfVar var_120
  loc_6E276B: ConcatVar var_148
  loc_6E276F: CStrVarTmp
  loc_6E2770: FStStr var_94
  loc_6E2773: FFreeVar var_C4 = "": var_100 = "": var_E4 = "": var_120 = ""
  loc_6E2780: Branch loc_6E2D24
  loc_6E2783: FLdRfVar var_9C
  loc_6E2786: FLdPrThis
  loc_6E2787: VCallAd Control_ID_CmbDay
  loc_6E278A: FStAdFunc var_A0
  loc_6E278D: FLdPr var_A0
  loc_6E2790:  = Me.Text
  loc_6E2795: ILdRf var_9C
  loc_6E2798: FLdRfVar var_F0
  loc_6E279B: LitVar_Missing var_1FC
  loc_6E279E: LitVar_Missing var_1DC
  loc_6E27A1: LitVar_Missing var_1BC
  loc_6E27A4: LitVar_Missing var_19C
  loc_6E27A7: LitVar_Missing var_17C
  loc_6E27AA: LitVar_Missing var_148
  loc_6E27AD: LitVar_Missing var_120
  loc_6E27B0: LitVar_Missing var_100
  loc_6E27B3: LitVar_Missing var_E4
  loc_6E27B6: LitVar_Missing var_C4
  loc_6E27B9: LitStr "No hubo cierres en este mes"
  loc_6E27BC: FStStrCopy var_E8
  loc_6E27BF: FLdRfVar var_E8
  loc_6E27C2: LitI4 &H1A
  loc_6E27C7: PopTmpLdAdStr var_14C
  loc_6E27CA: LitI2_Byte &H36
  loc_6E27CC: PopTmpLdAd2 var_A2
  loc_6E27CF: ImpAdLdRf MemVar_74C7D0
  loc_6E27D2: NewIfNullPr clsMsg
  loc_6E27D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E27DA: ILdRf var_F0
  loc_6E27DD: EqStr
  loc_6E27DF: FFreeStr var_E8 = "": var_9C = ""
  loc_6E27E8: FFree1Ad var_A0
  loc_6E27EB: FFreeVar var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E2802: BranchF loc_6E28E3
  loc_6E2805: FLdRfVar var_E8
  loc_6E2808: LitVar_Missing var_1FC
  loc_6E280B: LitVar_Missing var_1DC
  loc_6E280E: LitVar_Missing var_1BC
  loc_6E2811: LitVar_Missing var_19C
  loc_6E2814: LitVar_Missing var_17C
  loc_6E2817: LitVar_Missing var_148
  loc_6E281A: LitVar_Missing var_120
  loc_6E281D: LitVar_Missing var_100
  loc_6E2820: LitVar_Missing var_E4
  loc_6E2823: LitVar_Missing var_C4
  loc_6E2826: LitStr "El campo 'Desde' no puede ser vacío"
  loc_6E2829: FStStrCopy var_9C
  loc_6E282C: FLdRfVar var_9C
  loc_6E282F: LitI4 &H1D
  loc_6E2834: PopTmpLdAdStr var_14C
  loc_6E2837: LitI2_Byte &H36
  loc_6E2839: PopTmpLdAd2 var_A2
  loc_6E283C: ImpAdLdRf MemVar_74C7D0
  loc_6E283F: NewIfNullPr clsMsg
  loc_6E2842: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2847: FLdRfVar var_124
  loc_6E284A: LitVar_Missing var_344
  loc_6E284D: LitVar_Missing var_324
  loc_6E2850: LitVar_Missing var_304
  loc_6E2853: LitVar_Missing var_2E4
  loc_6E2856: LitVar_Missing var_2C4
  loc_6E2859: LitVar_Missing var_2A4
  loc_6E285C: LitVar_Missing var_284
  loc_6E285F: LitVar_Missing var_264
  loc_6E2862: LitVar_Missing var_244
  loc_6E2865: LitVar_Missing var_224
  loc_6E2868: LitStr "Atención"
  loc_6E286B: FStStrCopy var_F0
  loc_6E286E: FLdRfVar var_F0
  loc_6E2871: LitI4 &H1F
  loc_6E2876: PopTmpLdAdStr var_204
  loc_6E2879: LitI2_Byte &H36
  loc_6E287B: PopTmpLdAd2 var_1FE
  loc_6E287E: ImpAdLdRf MemVar_74C7D0
  loc_6E2881: NewIfNullPr clsMsg
  loc_6E2884: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2889: LitVar_Missing var_3A4
  loc_6E288C: LitVar_Missing var_384
  loc_6E288F: FLdZeroAd var_124
  loc_6E2892: CVarStr var_364
  loc_6E2895: LitI4 &H40
  loc_6E289A: FLdZeroAd var_E8
  loc_6E289D: CVarStr var_354
  loc_6E28A0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E28A5: FFreeStr var_9C = ""
  loc_6E28AC: FFreeVar var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_354 = "": var_364 = "": var_384 = ""
  loc_6E28DF: ExitProcHresult
  loc_6E28E0: Branch loc_6E2A40
  loc_6E28E3: FLdRfVar var_9C
  loc_6E28E6: FLdPrThis
  loc_6E28E7: VCallAd Control_ID_cmbDay2
  loc_6E28EA: FStAdFunc var_A0
  loc_6E28ED: FLdPr var_A0
  loc_6E28F0:  = Me.Text
  loc_6E28F5: ILdRf var_9C
  loc_6E28F8: FLdRfVar var_F0
  loc_6E28FB: LitVar_Missing var_1FC
  loc_6E28FE: LitVar_Missing var_1DC
  loc_6E2901: LitVar_Missing var_1BC
  loc_6E2904: LitVar_Missing var_19C
  loc_6E2907: LitVar_Missing var_17C
  loc_6E290A: LitVar_Missing var_148
  loc_6E290D: LitVar_Missing var_120
  loc_6E2910: LitVar_Missing var_100
  loc_6E2913: LitVar_Missing var_E4
  loc_6E2916: LitVar_Missing var_C4
  loc_6E2919: LitStr "No hubo cierres en este mes"
  loc_6E291C: FStStrCopy var_E8
  loc_6E291F: FLdRfVar var_E8
  loc_6E2922: LitI4 &H1A
  loc_6E2927: PopTmpLdAdStr var_14C
  loc_6E292A: LitI2_Byte &H36
  loc_6E292C: PopTmpLdAd2 var_A2
  loc_6E292F: ImpAdLdRf MemVar_74C7D0
  loc_6E2932: NewIfNullPr clsMsg
  loc_6E2935: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E293A: ILdRf var_F0
  loc_6E293D: EqStr
  loc_6E293F: FFreeStr var_E8 = "": var_9C = ""
  loc_6E2948: FFree1Ad var_A0
  loc_6E294B: FFreeVar var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E2962: BranchF loc_6E2A40
  loc_6E2965: FLdRfVar var_E8
  loc_6E2968: LitVar_Missing var_1FC
  loc_6E296B: LitVar_Missing var_1DC
  loc_6E296E: LitVar_Missing var_1BC
  loc_6E2971: LitVar_Missing var_19C
  loc_6E2974: LitVar_Missing var_17C
  loc_6E2977: LitVar_Missing var_148
  loc_6E297A: LitVar_Missing var_120
  loc_6E297D: LitVar_Missing var_100
  loc_6E2980: LitVar_Missing var_E4
  loc_6E2983: LitVar_Missing var_C4
  loc_6E2986: LitStr "El campo 'Hasta' no puede ser vacío"
  loc_6E2989: FStStrCopy var_9C
  loc_6E298C: FLdRfVar var_9C
  loc_6E298F: LitI4 &H1E
  loc_6E2994: PopTmpLdAdStr var_14C
  loc_6E2997: LitI2_Byte &H36
  loc_6E2999: PopTmpLdAd2 var_A2
  loc_6E299C: ImpAdLdRf MemVar_74C7D0
  loc_6E299F: NewIfNullPr clsMsg
  loc_6E29A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E29A7: FLdRfVar var_124
  loc_6E29AA: LitVar_Missing var_344
  loc_6E29AD: LitVar_Missing var_324
  loc_6E29B0: LitVar_Missing var_304
  loc_6E29B3: LitVar_Missing var_2E4
  loc_6E29B6: LitVar_Missing var_2C4
  loc_6E29B9: LitVar_Missing var_2A4
  loc_6E29BC: LitVar_Missing var_284
  loc_6E29BF: LitVar_Missing var_264
  loc_6E29C2: LitVar_Missing var_244
  loc_6E29C5: LitVar_Missing var_224
  loc_6E29C8: LitStr "Atención"
  loc_6E29CB: FStStrCopy var_F0
  loc_6E29CE: FLdRfVar var_F0
  loc_6E29D1: LitI4 &H1F
  loc_6E29D6: PopTmpLdAdStr var_204
  loc_6E29D9: LitI2_Byte &H36
  loc_6E29DB: PopTmpLdAd2 var_1FE
  loc_6E29DE: ImpAdLdRf MemVar_74C7D0
  loc_6E29E1: NewIfNullPr clsMsg
  loc_6E29E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E29E9: LitVar_Missing var_3A4
  loc_6E29EC: LitVar_Missing var_384
  loc_6E29EF: FLdZeroAd var_124
  loc_6E29F2: CVarStr var_364
  loc_6E29F5: LitI4 &H40
  loc_6E29FA: FLdZeroAd var_E8
  loc_6E29FD: CVarStr var_354
  loc_6E2A00: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E2A05: FFreeStr var_9C = ""
  loc_6E2A0C: FFreeVar var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_354 = "": var_364 = "": var_384 = ""
  loc_6E2A3F: ExitProcHresult
  loc_6E2A40: FLdRfVar var_9C
  loc_6E2A43: FLdPrThis
  loc_6E2A44: VCallAd Control_ID_CmbDay
  loc_6E2A47: FStAdFunc var_A0
  loc_6E2A4A: FLdPr var_A0
  loc_6E2A4D:  = Me.Text
  loc_6E2A52: FLdRfVar var_E8
  loc_6E2A55: FLdPrThis
  loc_6E2A56: VCallAd Control_ID_CmbDay
  loc_6E2A59: FStAdFunc var_EC
  loc_6E2A5C: FLdPr var_EC
  loc_6E2A5F:  = Me.Text
  loc_6E2A64: FLdRfVar var_F0
  loc_6E2A67: FLdPrThis
  loc_6E2A68: VCallAd Control_ID_CmbDay
  loc_6E2A6B: FStAdFunc var_3A8
  loc_6E2A6E: FLdPr var_3A8
  loc_6E2A71:  = Me.Text
  loc_6E2A76: FLdRfVar var_124
  loc_6E2A79: FLdPrThis
  loc_6E2A7A: VCallAd Control_ID_CmbDay
  loc_6E2A7D: FStAdFunc var_3AC
  loc_6E2A80: FLdPr var_3AC
  loc_6E2A83:  = Me.Text
  loc_6E2A88: FLdRfVar var_128
  loc_6E2A8B: FLdPrThis
  loc_6E2A8C: VCallAd Control_ID_CmbDay
  loc_6E2A8F: FStAdFunc var_3B0
  loc_6E2A92: FLdPr var_3B0
  loc_6E2A95:  = Me.Text
  loc_6E2A9A: FLdRfVar var_3B8
  loc_6E2A9D: FLdPrThis
  loc_6E2A9E: VCallAd Control_ID_CmbDay
  loc_6E2AA1: FStAdFunc var_3B4
  loc_6E2AA4: FLdPr var_3B4
  loc_6E2AA7:  = Me.Text
  loc_6E2AAC: LitVarI2 var_E4, 4
  loc_6E2AB1: LitI4 1
  loc_6E2AB6: FLdZeroAd var_9C
  loc_6E2AB9: CVarStr var_C4
  loc_6E2ABC: FLdRfVar var_100
  loc_6E2ABF: ImpAdCallFPR4  = Mid(, , )
  loc_6E2AC4: FLdRfVar var_100
  loc_6E2AC7: LitVarI2 var_148, 2
  loc_6E2ACC: LitI4 6
  loc_6E2AD1: FLdZeroAd var_E8
  loc_6E2AD4: CVarStr var_120
  loc_6E2AD7: FLdRfVar var_17C
  loc_6E2ADA: ImpAdCallFPR4  = Mid(, , )
  loc_6E2ADF: FLdRfVar var_17C
  loc_6E2AE2: AddVar var_19C
  loc_6E2AE6: LitVarI2 var_1DC, 2
  loc_6E2AEB: LitI4 9
  loc_6E2AF0: FLdZeroAd var_F0
  loc_6E2AF3: CVarStr var_1BC
  loc_6E2AF6: FLdRfVar var_1FC
  loc_6E2AF9: ImpAdCallFPR4  = Mid(, , )
  loc_6E2AFE: FLdRfVar var_1FC
  loc_6E2B01: AddVar var_224
  loc_6E2B05: LitVarI2 var_264, 2
  loc_6E2B0A: LitI4 &HC
  loc_6E2B0F: FLdZeroAd var_124
  loc_6E2B12: CVarStr var_244
  loc_6E2B15: FLdRfVar var_284
  loc_6E2B18: ImpAdCallFPR4  = Mid(, , )
  loc_6E2B1D: FLdRfVar var_284
  loc_6E2B20: AddVar var_2A4
  loc_6E2B24: LitVarI2 var_2E4, 2
  loc_6E2B29: LitI4 &HF
  loc_6E2B2E: FLdZeroAd var_128
  loc_6E2B31: CVarStr var_2C4
  loc_6E2B34: FLdRfVar var_304
  loc_6E2B37: ImpAdCallFPR4  = Mid(, , )
  loc_6E2B3C: FLdRfVar var_304
  loc_6E2B3F: AddVar var_324
  loc_6E2B43: LitVarI2 var_354, 2
  loc_6E2B48: LitI4 &H12
  loc_6E2B4D: FLdZeroAd var_3B8
  loc_6E2B50: CVarStr var_344
  loc_6E2B53: FLdRfVar var_364
  loc_6E2B56: ImpAdCallFPR4  = Mid(, , )
  loc_6E2B5B: FLdRfVar var_364
  loc_6E2B5E: AddVar var_384
  loc_6E2B62: CStrVarTmp
  loc_6E2B63: FStStr var_8C
  loc_6E2B66: FFreeAd var_A0 = "": var_EC = "": var_3A8 = "": var_3AC = "": var_3B0 = ""
  loc_6E2B75: FFreeVar var_C4 = "": var_E4 = "": var_120 = "": var_148 = "": var_100 = "": var_17C = "": var_1BC = "": var_1DC = "": var_19C = "": var_1FC = "": var_244 = "": var_264 = "": var_224 = "": var_284 = "": var_2C4 = "": var_2E4 = "": var_2A4 = "": var_304 = "": var_344 = "": var_354 = "": var_324 = "": var_364 = ""
  loc_6E2BA6: ILdRf var_8C
  loc_6E2BA9: CR8Str
  loc_6E2BAB: LitI2_Byte 1
  loc_6E2BAD: CR8I2
  loc_6E2BAE: AddR8
  loc_6E2BAF: CStrR8
  loc_6E2BB1: FStStr var_8C
  loc_6E2BB4: FLdRfVar var_9C
  loc_6E2BB7: FLdPrThis
  loc_6E2BB8: VCallAd Control_ID_cmbDay2
  loc_6E2BBB: FStAdFunc var_A0
  loc_6E2BBE: FLdPr var_A0
  loc_6E2BC1:  = Me.Text
  loc_6E2BC6: FLdRfVar var_E8
  loc_6E2BC9: FLdPrThis
  loc_6E2BCA: VCallAd Control_ID_cmbDay2
  loc_6E2BCD: FStAdFunc var_EC
  loc_6E2BD0: FLdPr var_EC
  loc_6E2BD3:  = Me.Text
  loc_6E2BD8: FLdRfVar var_F0
  loc_6E2BDB: FLdPrThis
  loc_6E2BDC: VCallAd Control_ID_cmbDay2
  loc_6E2BDF: FStAdFunc var_3A8
  loc_6E2BE2: FLdPr var_3A8
  loc_6E2BE5:  = Me.Text
  loc_6E2BEA: FLdRfVar var_124
  loc_6E2BED: FLdPrThis
  loc_6E2BEE: VCallAd Control_ID_cmbDay2
  loc_6E2BF1: FStAdFunc var_3AC
  loc_6E2BF4: FLdPr var_3AC
  loc_6E2BF7:  = Me.Text
  loc_6E2BFC: FLdRfVar var_128
  loc_6E2BFF: FLdPrThis
  loc_6E2C00: VCallAd Control_ID_cmbDay2
  loc_6E2C03: FStAdFunc var_3B0
  loc_6E2C06: FLdPr var_3B0
  loc_6E2C09:  = Me.Text
  loc_6E2C0E: FLdRfVar var_3B8
  loc_6E2C11: FLdPrThis
  loc_6E2C12: VCallAd Control_ID_cmbDay2
  loc_6E2C15: FStAdFunc var_3B4
  loc_6E2C18: FLdPr var_3B4
  loc_6E2C1B:  = Me.Text
  loc_6E2C20: LitVarI2 var_E4, 4
  loc_6E2C25: LitI4 1
  loc_6E2C2A: FLdZeroAd var_9C
  loc_6E2C2D: CVarStr var_C4
  loc_6E2C30: FLdRfVar var_100
  loc_6E2C33: ImpAdCallFPR4  = Mid(, , )
  loc_6E2C38: FLdRfVar var_100
  loc_6E2C3B: LitVarI2 var_148, 2
  loc_6E2C40: LitI4 6
  loc_6E2C45: FLdZeroAd var_E8
  loc_6E2C48: CVarStr var_120
  loc_6E2C4B: FLdRfVar var_17C
  loc_6E2C4E: ImpAdCallFPR4  = Mid(, , )
  loc_6E2C53: FLdRfVar var_17C
  loc_6E2C56: AddVar var_19C
  loc_6E2C5A: LitVarI2 var_1DC, 2
  loc_6E2C5F: LitI4 9
  loc_6E2C64: FLdZeroAd var_F0
  loc_6E2C67: CVarStr var_1BC
  loc_6E2C6A: FLdRfVar var_1FC
  loc_6E2C6D: ImpAdCallFPR4  = Mid(, , )
  loc_6E2C72: FLdRfVar var_1FC
  loc_6E2C75: AddVar var_224
  loc_6E2C79: LitVarI2 var_264, 2
  loc_6E2C7E: LitI4 &HC
  loc_6E2C83: FLdZeroAd var_124
  loc_6E2C86: CVarStr var_244
  loc_6E2C89: FLdRfVar var_284
  loc_6E2C8C: ImpAdCallFPR4  = Mid(, , )
  loc_6E2C91: FLdRfVar var_284
  loc_6E2C94: AddVar var_2A4
  loc_6E2C98: LitVarI2 var_2E4, 2
  loc_6E2C9D: LitI4 &HF
  loc_6E2CA2: FLdZeroAd var_128
  loc_6E2CA5: CVarStr var_2C4
  loc_6E2CA8: FLdRfVar var_304
  loc_6E2CAB: ImpAdCallFPR4  = Mid(, , )
  loc_6E2CB0: FLdRfVar var_304
  loc_6E2CB3: AddVar var_324
  loc_6E2CB7: LitVarI2 var_354, 2
  loc_6E2CBC: LitI4 &H12
  loc_6E2CC1: FLdZeroAd var_3B8
  loc_6E2CC4: CVarStr var_344
  loc_6E2CC7: FLdRfVar var_364
  loc_6E2CCA: ImpAdCallFPR4  = Mid(, , )
  loc_6E2CCF: FLdRfVar var_364
  loc_6E2CD2: AddVar var_384
  loc_6E2CD6: CStrVarTmp
  loc_6E2CD7: FStStr var_90
  loc_6E2CDA: FFreeAd var_A0 = "": var_EC = "": var_3A8 = "": var_3AC = "": var_3B0 = ""
  loc_6E2CE9: FFreeVar var_C4 = "": var_E4 = "": var_120 = "": var_148 = "": var_100 = "": var_17C = "": var_1BC = "": var_1DC = "": var_19C = "": var_1FC = "": var_244 = "": var_264 = "": var_224 = "": var_284 = "": var_2C4 = "": var_2E4 = "": var_2A4 = "": var_304 = "": var_344 = "": var_354 = "": var_324 = "": var_364 = ""
  loc_6E2D1A: ILdRf var_8C
  loc_6E2D1D: ILdRf var_90
  loc_6E2D20: ConcatStr
  loc_6E2D21: FStStr var_94
  loc_6E2D24: ILdRf var_8C
  loc_6E2D27: ILdRf var_90
  loc_6E2D2A: LtStr
  loc_6E2D2C: BranchF loc_6E2DA8
  loc_6E2D2F: FLdRfVar var_C4
  loc_6E2D32: FLdRfVar var_88
  loc_6E2D35: ILdRf var_94
  loc_6E2D38: FLdRfVar var_A0
  loc_6E2D3B: ImpAdLdRf MemVar_74C760
  loc_6E2D3E: NewIfNullPr Formx
  loc_6E2D41: from_stack_1v = Formx.global_4589716Get()
  loc_6E2D46: FLdPr var_A0
  loc_6E2D49: Formx.SetFocus
  loc_6E2D4E: FLdRfVar var_C4
  loc_6E2D51: NotVar var_E4
  loc_6E2D55: CBoolVarNull
  loc_6E2D57: FFree1Ad var_A0
  loc_6E2D5A: FFree1Var var_C4 = ""
  loc_6E2D5D: BranchF loc_6E2D8B
  loc_6E2D60: FLdRfVar var_C4
  loc_6E2D63: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6E2D68: FLdRfVar var_C4
  loc_6E2D6B: CBoolVarNull
  loc_6E2D6D: FFree1Var var_C4 = ""
  loc_6E2D70: BranchF loc_6E2D88
  loc_6E2D73: LitI2_Byte 0
  loc_6E2D75: FLdPrThis
  loc_6E2D76: VCallAd Control_ID_lblWait
  loc_6E2D79: FStAdFunc var_A0
  loc_6E2D7C: FLdPr var_A0
  loc_6E2D7F: Me.Visible = from_stack_1b
  loc_6E2D84: FFree1Ad var_A0
  loc_6E2D87: ExitProcHresult
  loc_6E2D88: Branch loc_6E2D2F
  loc_6E2D8B: FLdRfVar var_88
  loc_6E2D8E: CVarRef
  loc_6E2D93: FLdRfVar var_C4
  loc_6E2D96: ImpAdCallFPR4  = Trim()
  loc_6E2D9B: FLdRfVar var_C4
  loc_6E2D9E: CStrVarTmp
  loc_6E2D9F: FStStr var_88
  loc_6E2DA2: FFree1Var var_C4 = ""
  loc_6E2DA5: Branch loc_6E2F19
  loc_6E2DA8: FLdRfVar var_E8
  loc_6E2DAB: LitVar_Missing var_1FC
  loc_6E2DAE: LitVar_Missing var_1DC
  loc_6E2DB1: LitVar_Missing var_1BC
  loc_6E2DB4: LitVar_Missing var_19C
  loc_6E2DB7: LitVar_Missing var_17C
  loc_6E2DBA: LitVar_Missing var_148
  loc_6E2DBD: LitVar_Missing var_120
  loc_6E2DC0: LitVar_Missing var_100
  loc_6E2DC3: LitVar_Missing var_E4
  loc_6E2DC6: LitVar_Missing var_C4
  loc_6E2DC9: LitStr "La fecha 'desde' debe ser menor a la fecha 'hasta'."
  loc_6E2DCC: FStStrCopy var_9C
  loc_6E2DCF: FLdRfVar var_9C
  loc_6E2DD2: LitI4 &H20
  loc_6E2DD7: PopTmpLdAdStr var_14C
  loc_6E2DDA: LitI2_Byte &H36
  loc_6E2DDC: PopTmpLdAd2 var_A2
  loc_6E2DDF: ImpAdLdRf MemVar_74C7D0
  loc_6E2DE2: NewIfNullPr clsMsg
  loc_6E2DE5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2DEA: LitI4 &HD
  loc_6E2DEF: FLdRfVar var_224
  loc_6E2DF2: ImpAdCallFPR4  = Chr()
  loc_6E2DF7: LitI4 &HD
  loc_6E2DFC: FLdRfVar var_284
  loc_6E2DFF: ImpAdCallFPR4  = Chr()
  loc_6E2E04: FLdRfVar var_124
  loc_6E2E07: LitVar_Missing var_3C8
  loc_6E2E0A: LitVar_Missing var_3A4
  loc_6E2E0D: LitVar_Missing var_384
  loc_6E2E10: LitVar_Missing var_364
  loc_6E2E13: LitVar_Missing var_354
  loc_6E2E16: LitVar_Missing var_344
  loc_6E2E19: LitVar_Missing var_324
  loc_6E2E1C: LitVar_Missing var_304
  loc_6E2E1F: LitVar_Missing var_2E4
  loc_6E2E22: LitVar_Missing var_2C4
  loc_6E2E25: LitStr "Verifique por favor."
  loc_6E2E28: FStStrCopy var_F0
  loc_6E2E2B: FLdRfVar var_F0
  loc_6E2E2E: LitI4 &H22
  loc_6E2E33: PopTmpLdAdStr var_204
  loc_6E2E36: LitI2_Byte &H36
  loc_6E2E38: PopTmpLdAd2 var_1FE
  loc_6E2E3B: ImpAdLdRf MemVar_74C7D0
  loc_6E2E3E: NewIfNullPr clsMsg
  loc_6E2E41: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2E46: FLdRfVar var_3B8
  loc_6E2E49: LitVar_Missing var_510
  loc_6E2E4C: LitVar_Missing var_4F0
  loc_6E2E4F: LitVar_Missing var_4D0
  loc_6E2E52: LitVar_Missing var_4B0
  loc_6E2E55: LitVar_Missing var_490
  loc_6E2E58: LitVar_Missing var_470
  loc_6E2E5B: LitVar_Missing var_450
  loc_6E2E5E: LitVar_Missing var_430
  loc_6E2E61: LitVar_Missing var_410
  loc_6E2E64: LitVar_Missing var_400
  loc_6E2E67: LitStr "Reportes de Red XXI por períodos"
  loc_6E2E6A: FStStrCopy var_128
  loc_6E2E6D: FLdRfVar var_128
  loc_6E2E70: LitI4 &H21
  loc_6E2E75: PopTmpLdAdStr var_3F0
  loc_6E2E78: LitI2_Byte &H36
  loc_6E2E7A: PopTmpLdAd2 var_3EA
  loc_6E2E7D: ImpAdLdRf MemVar_74C7D0
  loc_6E2E80: NewIfNullPr clsMsg
  loc_6E2E83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2E88: LitVar_Missing var_560
  loc_6E2E8B: LitVar_Missing var_540
  loc_6E2E8E: FLdZeroAd var_3B8
  loc_6E2E91: CVarStr var_520
  loc_6E2E94: LitI4 &H40
  loc_6E2E99: FLdZeroAd var_E8
  loc_6E2E9C: CVarStr var_244
  loc_6E2E9F: FLdRfVar var_224
  loc_6E2EA2: AddVar var_264
  loc_6E2EA6: FLdRfVar var_284
  loc_6E2EA9: AddVar var_2A4
  loc_6E2EAD: FLdZeroAd var_124
  loc_6E2EB0: CVarStr var_3D8
  loc_6E2EB3: AddVar var_3E8
  loc_6E2EB7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E2EBC: FFreeStr var_9C = "": var_F0 = ""
  loc_6E2EC5: FFreeVar var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_3E8 = "": var_520 = "": var_540 = "": var_560 = "": var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_244 = "": var_224 = "": var_264 = "": var_284 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_354 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C8 = "": var_2A4 = "": var_3D8 = "": var_400 = "": var_410 = "": var_430 = ""
  loc_6E2F18: ExitProcHresult
  loc_6E2F19: ILdRf var_88
  loc_6E2F1C: FnLenStr
  loc_6E2F1D: LitI4 2
  loc_6E2F22: EqI4
  loc_6E2F23: BranchF loc_6E3120
  loc_6E2F26: FLdRfVar var_E8
  loc_6E2F29: LitVar_Missing var_1FC
  loc_6E2F2C: LitVar_Missing var_1DC
  loc_6E2F2F: LitVar_Missing var_1BC
  loc_6E2F32: LitVar_Missing var_19C
  loc_6E2F35: LitVar_Missing var_17C
  loc_6E2F38: LitVar_Missing var_148
  loc_6E2F3B: LitVar_Missing var_120
  loc_6E2F3E: LitVar_Missing var_100
  loc_6E2F41: LitVar_Missing var_E4
  loc_6E2F44: LitVar_Missing var_C4
  loc_6E2F47: LitStr "No hay datos para"
  loc_6E2F4A: FStStrCopy var_9C
  loc_6E2F4D: FLdRfVar var_9C
  loc_6E2F50: LitI4 &H23
  loc_6E2F55: PopTmpLdAdStr var_14C
  loc_6E2F58: LitI2_Byte &H36
  loc_6E2F5A: PopTmpLdAd2 var_A2
  loc_6E2F5D: ImpAdLdRf MemVar_74C7D0
  loc_6E2F60: NewIfNullPr clsMsg
  loc_6E2F63: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2F68: FLdRfVar var_F0
  loc_6E2F6B: FLdPrThis
  loc_6E2F6C: VCallAd Control_ID_cboMonth
  loc_6E2F6F: FStAdFunc var_A0
  loc_6E2F72: FLdPr var_A0
  loc_6E2F75:  = Me.Text
  loc_6E2F7A: FLdRfVar var_564
  loc_6E2F7D: LitVar_Missing var_344
  loc_6E2F80: LitVar_Missing var_324
  loc_6E2F83: LitVar_Missing var_304
  loc_6E2F86: LitVar_Missing var_2E4
  loc_6E2F89: LitVar_Missing var_2C4
  loc_6E2F8C: LitVar_Missing var_2A4
  loc_6E2F8F: LitVar_Missing var_284
  loc_6E2F92: LitVar_Missing var_264
  loc_6E2F95: LitVar_Missing var_244
  loc_6E2F98: LitVar_Missing var_224
  loc_6E2F9B: LitStr "de"
  loc_6E2F9E: FStStrCopy var_3B8
  loc_6E2FA1: FLdRfVar var_3B8
  loc_6E2FA4: LitI4 &H25
  loc_6E2FA9: PopTmpLdAdStr var_204
  loc_6E2FAC: LitI2_Byte &H36
  loc_6E2FAE: PopTmpLdAd2 var_1FE
  loc_6E2FB1: ImpAdLdRf MemVar_74C7D0
  loc_6E2FB4: NewIfNullPr clsMsg
  loc_6E2FB7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E2FBC: FLdRfVar var_570
  loc_6E2FBF: FLdPrThis
  loc_6E2FC0: VCallAd Control_ID_cboYear
  loc_6E2FC3: FStAdFunc var_EC
  loc_6E2FC6: FLdPr var_EC
  loc_6E2FC9:  = Me.Text
  loc_6E2FCE: FLdRfVar var_57C
  loc_6E2FD1: LitVar_Missing var_430
  loc_6E2FD4: LitVar_Missing var_410
  loc_6E2FD7: LitVar_Missing var_400
  loc_6E2FDA: LitVar_Missing var_3E8
  loc_6E2FDD: LitVar_Missing var_3D8
  loc_6E2FE0: LitVar_Missing var_3C8
  loc_6E2FE3: LitVar_Missing var_3A4
  loc_6E2FE6: LitVar_Missing var_384
  loc_6E2FE9: LitVar_Missing var_364
  loc_6E2FEC: LitVar_Missing var_354
  loc_6E2FEF: LitStr ". Verifique por favor."
  loc_6E2FF2: FStStrCopy var_578
  loc_6E2FF5: FLdRfVar var_578
  loc_6E2FF8: LitI4 &H22
  loc_6E2FFD: PopTmpLdAdStr var_3F0
  loc_6E3000: LitI2_Byte &H36
  loc_6E3002: PopTmpLdAd2 var_3EA
  loc_6E3005: ImpAdLdRf MemVar_74C7D0
  loc_6E3008: NewIfNullPr clsMsg
  loc_6E300B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3010: FLdRfVar var_610
  loc_6E3013: LitVar_Missing var_560
  loc_6E3016: LitVar_Missing var_540
  loc_6E3019: LitVar_Missing var_520
  loc_6E301C: LitVar_Missing var_510
  loc_6E301F: LitVar_Missing var_4F0
  loc_6E3022: LitVar_Missing var_4D0
  loc_6E3025: LitVar_Missing var_4B0
  loc_6E3028: LitVar_Missing var_490
  loc_6E302B: LitVar_Missing var_470
  loc_6E302E: LitVar_Missing var_450
  loc_6E3031: LitStr "Control de Existencias de Productos"
  loc_6E3034: FStStrCopy var_58C
  loc_6E3037: FLdRfVar var_58C
  loc_6E303A: LitI4 &H24
  loc_6E303F: PopTmpLdAdStr var_588
  loc_6E3042: LitI2_Byte &H36
  loc_6E3044: PopTmpLdAd2 var_582
  loc_6E3047: ImpAdLdRf MemVar_74C7D0
  loc_6E304A: NewIfNullPr clsMsg
  loc_6E304D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3052: LitVar_Missing var_670
  loc_6E3055: LitVar_Missing var_650
  loc_6E3058: FLdZeroAd var_610
  loc_6E305B: CVarStr var_630
  loc_6E305E: LitI4 &H40
  loc_6E3063: ILdRf var_E8
  loc_6E3066: LitStr " "
  loc_6E3069: ConcatStr
  loc_6E306A: FStStrNoPop var_124
  loc_6E306D: ILdRf var_F0
  loc_6E3070: ConcatStr
  loc_6E3071: FStStrNoPop var_128
  loc_6E3074: LitStr " "
  loc_6E3077: ConcatStr
  loc_6E3078: FStStrNoPop var_568
  loc_6E307B: ILdRf var_564
  loc_6E307E: ConcatStr
  loc_6E307F: FStStrNoPop var_56C
  loc_6E3082: LitStr " "
  loc_6E3085: ConcatStr
  loc_6E3086: FStStrNoPop var_574
  loc_6E3089: ILdRf var_570
  loc_6E308C: ConcatStr
  loc_6E308D: FStStrNoPop var_580
  loc_6E3090: ILdRf var_57C
  loc_6E3093: ConcatStr
  loc_6E3094: CVarStr var_620
  loc_6E3097: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E309C: FFreeStr var_9C = "": var_E8 = "": var_124 = "": var_F0 = "": var_128 = "": var_3B8 = "": var_568 = "": var_564 = "": var_56C = "": var_574 = "": var_570 = "": var_578 = "": var_580 = "": var_57C = ""
  loc_6E30BD: FFreeAd var_A0 = ""
  loc_6E30C4: FFreeVar var_450 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_620 = "": var_630 = "": var_650 = "": var_670 = "": var_C4 = "": var_E4 = "": var_100 = "": var_120 = "": var_148 = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_354 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_400 = "": var_410 = ""
  loc_6E311F: ExitProcHresult
  loc_6E3120: FLdRfVar var_9C
  loc_6E3123: ImpAdLdRf MemVar_74C760
  loc_6E3126: NewIfNullPr Formx
  loc_6E3129: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_6E312E: ILdRf var_9C
  loc_6E3131: LitStr "mensual"
  loc_6E3134: EqStr
  loc_6E3136: FFree1Str var_9C
  loc_6E3139: BranchF loc_6E31AE
  loc_6E313C: FLdRfVar var_9C
  loc_6E313F: FLdPrThis
  loc_6E3140: VCallAd Control_ID_Reloj
  loc_6E3143: FStAdFunc var_A0
  loc_6E3146: FLdPr var_A0
  loc_6E3149:  = Formx.ComboBox.Text
  loc_6E314E: ILdRf var_9C
  loc_6E3151: ImpAdLdRf MemVar_74D9F0
  loc_6E3154: NewIfNullPr frmShowMonthCloseRed21
  loc_6E3157: Call frmShowMonthCloseRed21.sMesPut(from_stack_1v)
  loc_6E315C: FFree1Str var_9C
  loc_6E315F: FFree1Ad var_A0
  loc_6E3162: FLdRfVar var_9C
  loc_6E3165: FLdPrThis
  loc_6E3166: VCallAd Control_ID_
  loc_6E3169: FStAdFunc var_A0
  loc_6E316C: FLdPr var_A0
  loc_6E316F:  = frmShowMonthCloseRed21.ComboBox.Text
  loc_6E3174: ILdRf var_9C
  loc_6E3177: ImpAdLdRf MemVar_74D9F0
  loc_6E317A: NewIfNullPr frmShowMonthCloseRed21
  loc_6E317D: Call frmShowMonthCloseRed21.sAnioPut(from_stack_1v)
  loc_6E3182: FFree1Str var_9C
  loc_6E3185: FFree1Ad var_A0
  loc_6E3188: ILdRf var_88
  loc_6E318B: ImpAdLdRf MemVar_74D9F0
  loc_6E318E: NewIfNullPr frmShowMonthCloseRed21
  loc_6E3191: Call frmShowMonthCloseRed21.sDataPut(from_stack_1v)
  loc_6E3196: LitVar_Missing var_D4
  loc_6E3199: PopAdLdVar
  loc_6E319A: LitVarI2 var_B4, 1
  loc_6E319F: PopAdLdVar
  loc_6E31A0: ImpAdLdRf MemVar_74D9F0
  loc_6E31A3: NewIfNullPr frmShowMonthCloseRed21
  loc_6E31A6: frmShowMonthCloseRed21.Show from_stack_1, from_stack_2
  loc_6E31AB: Branch loc_6E321D
  loc_6E31AE: FLdRfVar var_9C
  loc_6E31B1: FLdPrThis
  loc_6E31B2: VCallAd Control_ID_CmbDay
  loc_6E31B5: FStAdFunc var_A0
  loc_6E31B8: FLdPr var_A0
  loc_6E31BB:  = Me.Text
  loc_6E31C0: ILdRf var_9C
  loc_6E31C3: ImpAdLdRf MemVar_74D9F0
  loc_6E31C6: NewIfNullPr frmShowMonthCloseRed21
  loc_6E31C9: Call frmShowMonthCloseRed21.sMesPut(from_stack_1v)
  loc_6E31CE: FFree1Str var_9C
  loc_6E31D1: FFree1Ad var_A0
  loc_6E31D4: FLdRfVar var_9C
  loc_6E31D7: FLdPrThis
  loc_6E31D8: VCallAd Control_ID_txtListado
  loc_6E31DB: FStAdFunc var_A0
  loc_6E31DE: FLdPr var_A0
  loc_6E31E1:  = frmShowMonthCloseRed21.ComboBox.Text
  loc_6E31E6: ILdRf var_9C
  loc_6E31E9: ImpAdLdRf MemVar_74D9F0
  loc_6E31EC: NewIfNullPr frmShowMonthCloseRed21
  loc_6E31EF: Call frmShowMonthCloseRed21.sAnioPut(from_stack_1v)
  loc_6E31F4: FFree1Str var_9C
  loc_6E31F7: FFree1Ad var_A0
  loc_6E31FA: ILdRf var_88
  loc_6E31FD: ImpAdLdRf MemVar_74D9F0
  loc_6E3200: NewIfNullPr frmShowMonthCloseRed21
  loc_6E3203: Call frmShowMonthCloseRed21.sDataPut(from_stack_1v)
  loc_6E3208: LitVar_Missing var_D4
  loc_6E320B: PopAdLdVar
  loc_6E320C: LitVarI2 var_B4, 1
  loc_6E3211: PopAdLdVar
  loc_6E3212: ImpAdLdRf MemVar_74D9F0
  loc_6E3215: NewIfNullPr frmShowMonthCloseRed21
  loc_6E3218: frmShowMonthCloseRed21.Show from_stack_1, from_stack_2
  loc_6E321D: ExitProcHresult
  loc_6E321E: ExitProcHresult
End Sub

Private Sub Form_Load() '680284
  'Data Table: 44965C
  loc_67FD9C: FLdRfVar var_88
  loc_67FD9F: ImpAdLdRf MemVar_74C760
  loc_67FDA2: NewIfNullPr Formx
  loc_67FDA5: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_67FDAA: ILdRf var_88
  loc_67FDAD: LitStr "mensual"
  loc_67FDB0: EqStr
  loc_67FDB2: FFree1Str var_88
  loc_67FDB5: BranchF loc_67FDE5
  loc_67FDB8: FLdRfVar var_90
  loc_67FDBB: FLdRfVar var_8C
  loc_67FDBE: ImpAdLdRf MemVar_7520D4
  loc_67FDC1: NewIfNullPr Global
  loc_67FDC4:  = Global.Screen
  loc_67FDC9: FLdPr var_8C
  loc_67FDCC:  = Screen.TwipsPerPixelY
  loc_67FDD1: FLdFPR4 var_90
  loc_67FDD4: LitI2 400
  loc_67FDD7: CR8I2
  loc_67FDD8: MulR8
  loc_67FDD9: PopFPR4
  loc_67FDDA: FLdPr Me
  loc_67FDDD: Me.Height = from_stack_1s
  loc_67FDE2: FFree1Ad var_8C
  loc_67FDE5: FLdRfVar var_90
  loc_67FDE8: FLdRfVar var_8C
  loc_67FDEB: ImpAdLdRf MemVar_7520D4
  loc_67FDEE: NewIfNullPr Global
  loc_67FDF1:  = Global.Screen
  loc_67FDF6: FLdPr var_8C
  loc_67FDF9:  = Screen.TwipsPerPixelX
  loc_67FDFE: FLdFPR4 var_90
  loc_67FE01: LitI2 800
  loc_67FE04: CR8I2
  loc_67FE05: MulR8
  loc_67FE06: PopFPR4
  loc_67FE07: FLdPr Me
  loc_67FE0A: Me.Width = from_stack_1s
  loc_67FE0F: FFree1Ad var_8C
  loc_67FE12: LitI2_Byte 0
  loc_67FE14: CR8I2
  loc_67FE15: PopFPR4
  loc_67FE16: FLdPr Me
  loc_67FE19: Me.Left = from_stack_1s
  loc_67FE1E: FLdRfVar var_94
  loc_67FE21: FLdPr Me
  loc_67FE24:  = Me.Height
  loc_67FE29: FLdRfVar var_90
  loc_67FE2C: FLdRfVar var_8C
  loc_67FE2F: ImpAdLdRf MemVar_7520D4
  loc_67FE32: NewIfNullPr Global
  loc_67FE35:  = Global.Screen
  loc_67FE3A: FLdPr var_8C
  loc_67FE3D:  = Screen.Height
  loc_67FE42: FLdFPR4 var_90
  loc_67FE45: FLdFPR4 var_94
  loc_67FE48: SubR4
  loc_67FE49: CI4R8
  loc_67FE4A: LitI4 3
  loc_67FE4F: IDvI4
  loc_67FE50: CR8I4
  loc_67FE51: PopFPR4
  loc_67FE52: FLdPr Me
  loc_67FE55: Me.Top = from_stack_1s
  loc_67FE5A: FFree1Ad var_8C
  loc_67FE5D: LitI2_Byte 0
  loc_67FE5F: FLdPr Me
  loc_67FE62: MemStI2 global_52
  loc_67FE65: FLdRfVar var_1DC
  loc_67FE68: LitVar_Missing var_1D8
  loc_67FE6B: LitVar_Missing var_1B8
  loc_67FE6E: LitVar_Missing var_198
  loc_67FE71: LitVar_Missing var_178
  loc_67FE74: LitVar_Missing var_158
  loc_67FE77: LitVar_Missing var_138
  loc_67FE7A: LitVar_Missing var_118
  loc_67FE7D: LitVar_Missing var_F8
  loc_67FE80: LitVar_Missing var_D8
  loc_67FE83: LitVar_Missing var_B8
  loc_67FE86: LitStr "Períodos Red XXI - Consolidación Mensual"
  loc_67FE89: FStStrCopy var_88
  loc_67FE8C: FLdRfVar var_88
  loc_67FE8F: LitI4 1
  loc_67FE94: PopTmpLdAdStr var_90
  loc_67FE97: LitI2_Byte &H36
  loc_67FE99: PopTmpLdAd2 var_96
  loc_67FE9C: ImpAdLdRf MemVar_74C7D0
  loc_67FE9F: NewIfNullPr clsMsg
  loc_67FEA2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67FEA7: ILdRf var_1DC
  loc_67FEAA: FLdPrThis
  loc_67FEAB: VCallAd Control_ID_Label1
  loc_67FEAE: FStAdFunc var_8C
  loc_67FEB1: FLdPr var_8C
  loc_67FEB4: Me.Caption = from_stack_1
  loc_67FEB9: FFreeStr var_88 = ""
  loc_67FEC0: FFree1Ad var_8C
  loc_67FEC3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_67FEDA: FLdRfVar var_1DC
  loc_67FEDD: LitVar_Missing var_1D8
  loc_67FEE0: LitVar_Missing var_1B8
  loc_67FEE3: LitVar_Missing var_198
  loc_67FEE6: LitVar_Missing var_178
  loc_67FEE9: LitVar_Missing var_158
  loc_67FEEC: LitVar_Missing var_138
  loc_67FEEF: LitVar_Missing var_118
  loc_67FEF2: LitVar_Missing var_F8
  loc_67FEF5: LitVar_Missing var_D8
  loc_67FEF8: LitVar_Missing var_B8
  loc_67FEFB: LitStr "Razon Social:"
  loc_67FEFE: FStStrCopy var_88
  loc_67FF01: FLdRfVar var_88
  loc_67FF04: LitI4 2
  loc_67FF09: PopTmpLdAdStr var_90
  loc_67FF0C: LitI2_Byte &H36
  loc_67FF0E: PopTmpLdAd2 var_96
  loc_67FF11: ImpAdLdRf MemVar_74C7D0
  loc_67FF14: NewIfNullPr clsMsg
  loc_67FF17: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67FF1C: ILdRf var_1DC
  loc_67FF1F: FLdPrThis
  loc_67FF20: VCallAd Control_ID_Label3
  loc_67FF23: FStAdFunc var_8C
  loc_67FF26: FLdPr var_8C
  loc_67FF29: Me.Caption = from_stack_1
  loc_67FF2E: FFreeStr var_88 = ""
  loc_67FF35: FFree1Ad var_8C
  loc_67FF38: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_67FF4F: FLdRfVar var_1DC
  loc_67FF52: LitVar_Missing var_1D8
  loc_67FF55: LitVar_Missing var_1B8
  loc_67FF58: LitVar_Missing var_198
  loc_67FF5B: LitVar_Missing var_178
  loc_67FF5E: LitVar_Missing var_158
  loc_67FF61: LitVar_Missing var_138
  loc_67FF64: LitVar_Missing var_118
  loc_67FF67: LitVar_Missing var_F8
  loc_67FF6A: LitVar_Missing var_D8
  loc_67FF6D: LitVar_Missing var_B8
  loc_67FF70: LitStr "Dia:"
  loc_67FF73: FStStrCopy var_88
  loc_67FF76: FLdRfVar var_88
  loc_67FF79: LitI4 3
  loc_67FF7E: PopTmpLdAdStr var_90
  loc_67FF81: LitI2_Byte &H36
  loc_67FF83: PopTmpLdAd2 var_96
  loc_67FF86: ImpAdLdRf MemVar_74C7D0
  loc_67FF89: NewIfNullPr clsMsg
  loc_67FF8C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67FF91: ILdRf var_1DC
  loc_67FF94: FLdPrThis
  loc_67FF95: VCallAd Control_ID_Label5
  loc_67FF98: FStAdFunc var_8C
  loc_67FF9B: FLdPr var_8C
  loc_67FF9E: Me.Caption = from_stack_1
  loc_67FFA3: FFreeStr var_88 = ""
  loc_67FFAA: FFree1Ad var_8C
  loc_67FFAD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_67FFC4: FLdRfVar var_1DC
  loc_67FFC7: LitVar_Missing var_1D8
  loc_67FFCA: LitVar_Missing var_1B8
  loc_67FFCD: LitVar_Missing var_198
  loc_67FFD0: LitVar_Missing var_178
  loc_67FFD3: LitVar_Missing var_158
  loc_67FFD6: LitVar_Missing var_138
  loc_67FFD9: LitVar_Missing var_118
  loc_67FFDC: LitVar_Missing var_F8
  loc_67FFDF: LitVar_Missing var_D8
  loc_67FFE2: LitVar_Missing var_B8
  loc_67FFE5: LitStr "Hora:"
  loc_67FFE8: FStStrCopy var_88
  loc_67FFEB: FLdRfVar var_88
  loc_67FFEE: LitI4 4
  loc_67FFF3: PopTmpLdAdStr var_90
  loc_67FFF6: LitI2_Byte &H36
  loc_67FFF8: PopTmpLdAd2 var_96
  loc_67FFFB: ImpAdLdRf MemVar_74C7D0
  loc_67FFFE: NewIfNullPr clsMsg
  loc_680001: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680006: ILdRf var_1DC
  loc_680009: FLdPrThis
  loc_68000A: VCallAd Control_ID_Label6
  loc_68000D: FStAdFunc var_8C
  loc_680010: FLdPr var_8C
  loc_680013: Me.Caption = from_stack_1
  loc_680018: FFreeStr var_88 = ""
  loc_68001F: FFree1Ad var_8C
  loc_680022: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_680039: FLdRfVar var_1DC
  loc_68003C: LitVar_Missing var_1D8
  loc_68003F: LitVar_Missing var_1B8
  loc_680042: LitVar_Missing var_198
  loc_680045: LitVar_Missing var_178
  loc_680048: LitVar_Missing var_158
  loc_68004B: LitVar_Missing var_138
  loc_68004E: LitVar_Missing var_118
  loc_680051: LitVar_Missing var_F8
  loc_680054: LitVar_Missing var_D8
  loc_680057: LitVar_Missing var_B8
  loc_68005A: LitStr "Mes:"
  loc_68005D: FStStrCopy var_88
  loc_680060: FLdRfVar var_88
  loc_680063: LitI4 5
  loc_680068: PopTmpLdAdStr var_90
  loc_68006B: LitI2_Byte &H36
  loc_68006D: PopTmpLdAd2 var_96
  loc_680070: ImpAdLdRf MemVar_74C7D0
  loc_680073: NewIfNullPr clsMsg
  loc_680076: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68007B: ILdRf var_1DC
  loc_68007E: FLdPrThis
  loc_68007F: VCallAd Control_ID_Label2
  loc_680082: FStAdFunc var_8C
  loc_680085: FLdPr var_8C
  loc_680088: Me.Caption = from_stack_1
  loc_68008D: FFreeStr var_88 = ""
  loc_680094: FFree1Ad var_8C
  loc_680097: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6800AE: FLdRfVar var_1DC
  loc_6800B1: LitVar_Missing var_1D8
  loc_6800B4: LitVar_Missing var_1B8
  loc_6800B7: LitVar_Missing var_198
  loc_6800BA: LitVar_Missing var_178
  loc_6800BD: LitVar_Missing var_158
  loc_6800C0: LitVar_Missing var_138
  loc_6800C3: LitVar_Missing var_118
  loc_6800C6: LitVar_Missing var_F8
  loc_6800C9: LitVar_Missing var_D8
  loc_6800CC: LitVar_Missing var_B8
  loc_6800CF: LitStr "Año:"
  loc_6800D2: FStStrCopy var_88
  loc_6800D5: FLdRfVar var_88
  loc_6800D8: LitI4 6
  loc_6800DD: PopTmpLdAdStr var_90
  loc_6800E0: LitI2_Byte &H36
  loc_6800E2: PopTmpLdAd2 var_96
  loc_6800E5: ImpAdLdRf MemVar_74C7D0
  loc_6800E8: NewIfNullPr clsMsg
  loc_6800EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6800F0: ILdRf var_1DC
  loc_6800F3: FLdPrThis
  loc_6800F4: VCallAd Control_ID_Label4
  loc_6800F7: FStAdFunc var_8C
  loc_6800FA: FLdPr var_8C
  loc_6800FD: Me.Caption = from_stack_1
  loc_680102: FFreeStr var_88 = ""
  loc_680109: FFree1Ad var_8C
  loc_68010C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_680123: FLdRfVar var_1DC
  loc_680126: LitVar_Missing var_1D8
  loc_680129: LitVar_Missing var_1B8
  loc_68012C: LitVar_Missing var_198
  loc_68012F: LitVar_Missing var_178
  loc_680132: LitVar_Missing var_158
  loc_680135: LitVar_Missing var_138
  loc_680138: LitVar_Missing var_118
  loc_68013B: LitVar_Missing var_F8
  loc_68013E: LitVar_Missing var_D8
  loc_680141: LitVar_Missing var_B8
  loc_680144: LitStr "Imprimiendo... espere un momento por favor."
  loc_680147: FStStrCopy var_88
  loc_68014A: FLdRfVar var_88
  loc_68014D: LitI4 7
  loc_680152: PopTmpLdAdStr var_90
  loc_680155: LitI2_Byte &H36
  loc_680157: PopTmpLdAd2 var_96
  loc_68015A: ImpAdLdRf MemVar_74C7D0
  loc_68015D: NewIfNullPr clsMsg
  loc_680160: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680165: ILdRf var_1DC
  loc_680168: FLdPrThis
  loc_680169: VCallAd Control_ID_lblWait
  loc_68016C: FStAdFunc var_8C
  loc_68016F: FLdPr var_8C
  loc_680172: Me.Caption = from_stack_1
  loc_680177: FFreeStr var_88 = ""
  loc_68017E: FFree1Ad var_8C
  loc_680181: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_680198: FLdRfVar var_1DC
  loc_68019B: LitVar_Missing var_1D8
  loc_68019E: LitVar_Missing var_1B8
  loc_6801A1: LitVar_Missing var_198
  loc_6801A4: LitVar_Missing var_178
  loc_6801A7: LitVar_Missing var_158
  loc_6801AA: LitVar_Missing var_138
  loc_6801AD: LitVar_Missing var_118
  loc_6801B0: LitVar_Missing var_F8
  loc_6801B3: LitVar_Missing var_D8
  loc_6801B6: LitVar_Missing var_B8
  loc_6801B9: LitStr "&Visualizar"
  loc_6801BC: FStStrCopy var_88
  loc_6801BF: FLdRfVar var_88
  loc_6801C2: LitI4 8
  loc_6801C7: PopTmpLdAdStr var_90
  loc_6801CA: LitI2_Byte &H36
  loc_6801CC: PopTmpLdAd2 var_96
  loc_6801CF: ImpAdLdRf MemVar_74C7D0
  loc_6801D2: NewIfNullPr clsMsg
  loc_6801D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6801DA: ILdRf var_1DC
  loc_6801DD: FLdPrThis
  loc_6801DE: VCallAd Control_ID_cmdVisualizar
  loc_6801E1: FStAdFunc var_8C
  loc_6801E4: FLdPr var_8C
  loc_6801E7: Me.Caption = from_stack_1
  loc_6801EC: FFreeStr var_88 = ""
  loc_6801F3: FFree1Ad var_8C
  loc_6801F6: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_68020D: FLdRfVar var_1DC
  loc_680210: LitVar_Missing var_1D8
  loc_680213: LitVar_Missing var_1B8
  loc_680216: LitVar_Missing var_198
  loc_680219: LitVar_Missing var_178
  loc_68021C: LitVar_Missing var_158
  loc_68021F: LitVar_Missing var_138
  loc_680222: LitVar_Missing var_118
  loc_680225: LitVar_Missing var_F8
  loc_680228: LitVar_Missing var_D8
  loc_68022B: LitVar_Missing var_B8
  loc_68022E: LitStr "&Continuar"
  loc_680231: FStStrCopy var_88
  loc_680234: FLdRfVar var_88
  loc_680237: LitI4 9
  loc_68023C: PopTmpLdAdStr var_90
  loc_68023F: LitI2_Byte &H36
  loc_680241: PopTmpLdAd2 var_96
  loc_680244: ImpAdLdRf MemVar_74C7D0
  loc_680247: NewIfNullPr clsMsg
  loc_68024A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68024F: ILdRf var_1DC
  loc_680252: FLdPrThis
  loc_680253: VCallAd Control_ID_cmdContinuar
  loc_680256: FStAdFunc var_8C
  loc_680259: FLdPr var_8C
  loc_68025C: Me.Caption = from_stack_1
  loc_680261: FFreeStr var_88 = ""
  loc_680268: FFree1Ad var_8C
  loc_68026B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_680282: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D18E4
  'Data Table: 44965C
  loc_5D18CC: LitI2_Byte 0
  loc_5D18CE: FLdPrThis
  loc_5D18CF: VCallAd Control_ID_Reloj
  loc_5D18D2: FStAdFunc var_88
  loc_5D18D5: FLdPr var_88
  loc_5D18D8: Me.Enabled = from_stack_1b
  loc_5D18DD: FFree1Ad var_88
  loc_5D18E0: ExitProcHresult
  loc_5D18E1: PopTmpLdAd8 arg_642F
End Sub

Private Sub Form_Activate() '67CE14
  'Data Table: 44965C
  loc_67C974: FLdPr Me
  loc_67C977: MemLdI2 global_52
  loc_67C97A: BranchF loc_67C97E
  loc_67C97D: ExitProcHresult
  loc_67C97E: LitI2_Byte &HFF
  loc_67C980: FLdPr Me
  loc_67C983: MemStI2 global_52
  loc_67C986: LitI2_Byte 0
  loc_67C988: FLdPrThis
  loc_67C989: VCallAd Control_ID_lblWait
  loc_67C98C: FStAdFunc var_8C
  loc_67C98F: FLdPr var_8C
  loc_67C992: Me.Visible = from_stack_1b
  loc_67C997: FFree1Ad var_8C
  loc_67C99A: LitI2_Byte &HFF
  loc_67C99C: FLdPrThis
  loc_67C99D: VCallAd Control_ID_Reloj
  loc_67C9A0: FStAdFunc var_8C
  loc_67C9A3: FLdPr var_8C
  loc_67C9A6: Me.Enabled = from_stack_1b
  loc_67C9AB: FFree1Ad var_8C
  loc_67C9AE: FLdPrThis
  loc_67C9AF: VCallAd Control_ID_Picture1
  loc_67C9B2: FStAdFunc var_9C
  loc_67C9B5: FLdRfVar var_90
  loc_67C9B8: FLdRfVar var_8C
  loc_67C9BB: ImpAdLdRf MemVar_7520D4
  loc_67C9BE: NewIfNullPr Global
  loc_67C9C1:  = Global.App
  loc_67C9C6: FLdPr var_8C
  loc_67C9C9:  = App.Path
  loc_67C9CE: ILdRf var_90
  loc_67C9D1: LitStr "\Logo_Compania.bmp"
  loc_67C9D4: ConcatStr
  loc_67C9D5: FStStrNoPop var_98
  loc_67C9D8: FLdZeroAd var_9C
  loc_67C9DB: FStAdFunc var_94
  loc_67C9DE: FLdRfVar var_94
  loc_67C9E1: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67C9E6: FFreeStr var_90 = ""
  loc_67C9ED: FFreeAd var_8C = "": var_94 = ""
  loc_67C9F6: FLdPrThis
  loc_67C9F7: VCallAd Control_ID_Picture2
  loc_67C9FA: FStAdFunc var_9C
  loc_67C9FD: FLdRfVar var_90
  loc_67CA00: FLdRfVar var_8C
  loc_67CA03: ImpAdLdRf MemVar_7520D4
  loc_67CA06: NewIfNullPr Global
  loc_67CA09:  = Global.App
  loc_67CA0E: FLdPr var_8C
  loc_67CA11:  = App.Path
  loc_67CA16: ILdRf var_90
  loc_67CA19: LitStr "\Logo_Proyecto.bmp"
  loc_67CA1C: ConcatStr
  loc_67CA1D: FStStrNoPop var_98
  loc_67CA20: FLdZeroAd var_9C
  loc_67CA23: FStAdFunc var_94
  loc_67CA26: FLdRfVar var_94
  loc_67CA29: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67CA2E: FFreeStr var_90 = ""
  loc_67CA35: FFreeAd var_8C = "": var_94 = ""
  loc_67CA3E: FLdRfVar var_AC
  loc_67CA41: ImpAdCallFPR4  = Date
  loc_67CA46: LitI4 1
  loc_67CA4B: LitI4 1
  loc_67CA50: LitVarStr var_BC, "dd/mm/yyyy"
  loc_67CA55: FStVarCopyObj var_CC
  loc_67CA58: FLdRfVar var_CC
  loc_67CA5B: FLdRfVar var_AC
  loc_67CA5E: ImpAdCallI2 Format$(, )
  loc_67CA63: FStStrNoPop var_90
  loc_67CA66: FLdPrThis
  loc_67CA67: VCallAd Control_ID_lFecha
  loc_67CA6A: FStAdFunc var_8C
  loc_67CA6D: FLdPr var_8C
  loc_67CA70: Me.Caption = from_stack_1
  loc_67CA75: FFree1Str var_90
  loc_67CA78: FFree1Ad var_8C
  loc_67CA7B: FFreeVar var_AC = ""
  loc_67CA82: FLdRfVar var_AC
  loc_67CA85: ImpAdCallFPR4  = Time
  loc_67CA8A: LitI4 1
  loc_67CA8F: LitI4 1
  loc_67CA94: LitVarStr var_BC, "hh:mm"
  loc_67CA99: FStVarCopyObj var_CC
  loc_67CA9C: FLdRfVar var_CC
  loc_67CA9F: FLdRfVar var_AC
  loc_67CAA2: ImpAdCallI2 Format$(, )
  loc_67CAA7: FStStrNoPop var_90
  loc_67CAAA: FLdPrThis
  loc_67CAAB: VCallAd Control_ID_lHora
  loc_67CAAE: FStAdFunc var_8C
  loc_67CAB1: FLdPr var_8C
  loc_67CAB4: Me.Caption = from_stack_1
  loc_67CAB9: FFree1Str var_90
  loc_67CABC: FFree1Ad var_8C
  loc_67CABF: FFreeVar var_AC = ""
  loc_67CAC6: FLdRfVar var_CE
  loc_67CAC9: FLdRfVar var_88
  loc_67CACC: FLdRfVar var_8C
  loc_67CACF: ImpAdLdRf MemVar_74C760
  loc_67CAD2: NewIfNullPr Formx
  loc_67CAD5: from_stack_1v = Formx.global_4589716Get()
  loc_67CADA: FLdPr var_8C
  loc_67CADD:  = Formx.Picture
  loc_67CAE2: FLdI2 var_CE
  loc_67CAE5: NotI4
  loc_67CAE6: FFree1Ad var_8C
  loc_67CAE9: BranchF loc_67CB18
  loc_67CAEC: FLdRfVar var_AC
  loc_67CAEF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67CAF4: FLdRfVar var_AC
  loc_67CAF7: CBoolVarNull
  loc_67CAF9: FFree1Var var_AC = ""
  loc_67CAFC: BranchF loc_67CB15
  loc_67CAFF: ILdRf Me
  loc_67CB02: FStAdNoPop
  loc_67CB06: ImpAdLdRf MemVar_7520D4
  loc_67CB09: NewIfNullPr Global
  loc_67CB0C: Global.Unload from_stack_1
  loc_67CB11: FFree1Ad var_8C
  loc_67CB14: ExitProcHresult
  loc_67CB15: Branch loc_67CAC6
  loc_67CB18: LitVarI2 var_AC, 30
  loc_67CB1D: LitI4 7
  loc_67CB22: FLdRfVar var_88
  loc_67CB25: CVarRef
  loc_67CB2A: FLdRfVar var_CC
  loc_67CB2D: ImpAdCallFPR4  = Mid(, , )
  loc_67CB32: FLdRfVar var_CC
  loc_67CB35: FLdRfVar var_F0
  loc_67CB38: ImpAdCallFPR4  = Trim()
  loc_67CB3D: FLdRfVar var_F0
  loc_67CB40: CStrVarVal var_90
  loc_67CB44: FLdPrThis
  loc_67CB45: VCallAd Control_ID_lRazonSocial
  loc_67CB48: FStAdFunc var_8C
  loc_67CB4B: FLdPr var_8C
  loc_67CB4E: Me.Caption = from_stack_1
  loc_67CB53: FFree1Str var_90
  loc_67CB56: FFree1Ad var_8C
  loc_67CB59: FFreeVar var_AC = "": var_CC = ""
  loc_67CB62: LitVar_Missing var_BC
  loc_67CB65: PopAdLdVar
  loc_67CB66: FLdRfVar var_AC
  loc_67CB69: ImpAdCallFPR4  = Date
  loc_67CB6E: FLdRfVar var_AC
  loc_67CB71: FLdRfVar var_CC
  loc_67CB74: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_67CB79: FLdRfVar var_CC
  loc_67CB7C: CStrVarVal var_90
  loc_67CB80: FLdPrThis
  loc_67CB81: VCallAd Control_ID_cboYear
  loc_67CB84: FStAdFunc var_8C
  loc_67CB87: FLdPr var_8C
  loc_67CB8A: Me.AddItem from_stack_1, from_stack_2
  loc_67CB8F: FFree1Str var_90
  loc_67CB92: FFree1Ad var_8C
  loc_67CB95: FFreeVar var_AC = ""
  loc_67CB9C: LitVar_Missing var_E0
  loc_67CB9F: PopAdLdVar
  loc_67CBA0: FLdRfVar var_AC
  loc_67CBA3: ImpAdCallFPR4  = Date
  loc_67CBA8: FLdRfVar var_AC
  loc_67CBAB: FLdRfVar var_CC
  loc_67CBAE: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_67CBB3: FLdRfVar var_CC
  loc_67CBB6: LitVarI2 var_BC, 1
  loc_67CBBB: SubVar var_F0
  loc_67CBBF: CStrVarVal var_90
  loc_67CBC3: FLdPrThis
  loc_67CBC4: VCallAd Control_ID_cboYear
  loc_67CBC7: FStAdFunc var_8C
  loc_67CBCA: FLdPr var_8C
  loc_67CBCD: Me.AddItem from_stack_1, from_stack_2
  loc_67CBD2: FFree1Str var_90
  loc_67CBD5: FFree1Ad var_8C
  loc_67CBD8: FFreeVar var_AC = ""
  loc_67CBDF: LitI2_Byte 0
  loc_67CBE1: FLdPrThis
  loc_67CBE2: VCallAd Control_ID_cboYear
  loc_67CBE5: FStAdFunc var_8C
  loc_67CBE8: FLdPr var_8C
  loc_67CBEB: Me.ListIndex = from_stack_1
  loc_67CBF0: FFree1Ad var_8C
  loc_67CBF3: FLdRfVar var_90
  loc_67CBF6: ImpAdLdRf MemVar_74C760
  loc_67CBF9: NewIfNullPr Formx
  loc_67CBFC: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_67CC01: ILdRf var_90
  loc_67CC04: LitStr "periodo"
  loc_67CC07: EqStr
  loc_67CC09: FFree1Str var_90
  loc_67CC0C: BranchF loc_67CD47
  loc_67CC0F: LitVar_Missing var_BC
  loc_67CC12: PopAdLdVar
  loc_67CC13: FLdRfVar var_AC
  loc_67CC16: ImpAdCallFPR4  = Date
  loc_67CC1B: FLdRfVar var_AC
  loc_67CC1E: FLdRfVar var_CC
  loc_67CC21: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_67CC26: FLdRfVar var_CC
  loc_67CC29: CStrVarVal var_90
  loc_67CC2D: FLdPrThis
  loc_67CC2E: VCallAd Control_ID_Data1
  loc_67CC31: FStAdFunc var_8C
  loc_67CC34: FLdPr var_8C
  loc_67CC37: Formx.ComboBox.AddItem from_stack_1, from_stack_2
  loc_67CC3C: FFree1Str var_90
  loc_67CC3F: FFree1Ad var_8C
  loc_67CC42: FFreeVar var_AC = ""
  loc_67CC49: LitVar_Missing var_E0
  loc_67CC4C: PopAdLdVar
  loc_67CC4D: FLdRfVar var_AC
  loc_67CC50: ImpAdCallFPR4  = Date
  loc_67CC55: FLdRfVar var_AC
  loc_67CC58: FLdRfVar var_CC
  loc_67CC5B: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_67CC60: FLdRfVar var_CC
  loc_67CC63: LitVarI2 var_BC, 1
  loc_67CC68: SubVar var_F0
  loc_67CC6C: CStrVarVal var_90
  loc_67CC70: FLdPrThis
  loc_67CC71: VCallAd Control_ID_cmbYear2
  loc_67CC74: FStAdFunc var_8C
  loc_67CC77: FLdPr var_8C
  loc_67CC7A: Me.AddItem from_stack_1, from_stack_2
  loc_67CC7F: FFree1Str var_90
  loc_67CC82: FFree1Ad var_8C
  loc_67CC85: FFreeVar var_AC = ""
  loc_67CC8C: LitI2_Byte 0
  loc_67CC8E: FLdPrThis
  loc_67CC8F: VCallAd Control_ID_cmbYear2
  loc_67CC92: FStAdFunc var_8C
  loc_67CC95: FLdPr var_8C
  loc_67CC98: Me.ListIndex = from_stack_1
  loc_67CC9D: FFree1Ad var_8C
  loc_67CCA0: LitI2 5850
  loc_67CCA3: CR8I2
  loc_67CCA4: PopFPR4
  loc_67CCA5: FLdPr Me
  loc_67CCA8: VCallAd Control_ID_cmdContinuar
  loc_67CCAB: FStAdFunc var_8C
  loc_67CCAE: FLdPr var_8C
  loc_67CCB1: Me.Top = from_stack_1s
  loc_67CCB6: FFree1Ad var_8C
  loc_67CCB9: LitI2 5850
  loc_67CCBC: CR8I2
  loc_67CCBD: PopFPR4
  loc_67CCBE: FLdPr Me
  loc_67CCC1: VCallAd Control_ID_cmdVisualizar
  loc_67CCC4: FStAdFunc var_8C
  loc_67CCC7: FLdPr var_8C
  loc_67CCCA: Me.Top = from_stack_1s
  loc_67CCCF: FFree1Ad var_8C
  loc_67CCD2: FLdRfVar var_98
  loc_67CCD5: LitVar_Missing var_1E4
  loc_67CCD8: LitVar_Missing var_1C4
  loc_67CCDB: LitVar_Missing var_1A4
  loc_67CCDE: LitVar_Missing var_184
  loc_67CCE1: LitVar_Missing var_164
  loc_67CCE4: LitVar_Missing var_144
  loc_67CCE7: LitVar_Missing var_124
  loc_67CCEA: LitVar_Missing var_F0
  loc_67CCED: LitVar_Missing var_CC
  loc_67CCF0: LitVar_Missing var_AC
  loc_67CCF3: LitStr "Cierres de Red XXI Por Períodos"
  loc_67CCF6: FStStrCopy var_90
  loc_67CCF9: FLdRfVar var_90
  loc_67CCFC: LitI4 &H1B
  loc_67CD01: PopTmpLdAdStr var_F4
  loc_67CD04: LitI2_Byte &H36
  loc_67CD06: PopTmpLdAd2 var_CE
  loc_67CD09: ImpAdLdRf MemVar_74C7D0
  loc_67CD0C: NewIfNullPr clsMsg
  loc_67CD0F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67CD14: ILdRf var_98
  loc_67CD17: FLdPrThis
  loc_67CD18: VCallAd Control_ID_Label1
  loc_67CD1B: FStAdFunc var_8C
  loc_67CD1E: FLdPr var_8C
  loc_67CD21: Me.Caption = from_stack_1
  loc_67CD26: FFreeStr var_90 = ""
  loc_67CD2D: FFree1Ad var_8C
  loc_67CD30: FFreeVar var_AC = "": var_CC = "": var_F0 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_67CD47: FLdRfVar var_90
  loc_67CD4A: ImpAdLdRf MemVar_74C760
  loc_67CD4D: NewIfNullPr Formx
  loc_67CD50: from_stack_1v = Formx.GetTipoCierreRedXXI()
  loc_67CD55: ILdRf var_90
  loc_67CD58: LitStr "mensual"
  loc_67CD5B: EqStr
  loc_67CD5D: FFree1Str var_90
  loc_67CD60: BranchF loc_67CE13
  loc_67CD63: LitI2 4440
  loc_67CD66: CR8I2
  loc_67CD67: PopFPR4
  loc_67CD68: FLdPr Me
  loc_67CD6B: VCallAd Control_ID_Image1
  loc_67CD6E: FStAdFunc var_8C
  loc_67CD71: FLdPr var_8C
  loc_67CD74: Formx.CommandButton.Top = from_stack_1s
  loc_67CD79: FFree1Ad var_8C
  loc_67CD7C: LitI2 4440
  loc_67CD7F: CR8I2
  loc_67CD80: PopFPR4
  loc_67CD81: FLdPr Me
  loc_67CD84: VCallAd Control_ID_cmdVisualizar
  loc_67CD87: FStAdFunc var_8C
  loc_67CD8A: FLdPr var_8C
  loc_67CD8D: Me.Top = from_stack_1s
  loc_67CD92: FFree1Ad var_8C
  loc_67CD95: FLdRfVar var_98
  loc_67CD98: LitVar_Missing var_1E4
  loc_67CD9B: LitVar_Missing var_1C4
  loc_67CD9E: LitVar_Missing var_1A4
  loc_67CDA1: LitVar_Missing var_184
  loc_67CDA4: LitVar_Missing var_164
  loc_67CDA7: LitVar_Missing var_144
  loc_67CDAA: LitVar_Missing var_124
  loc_67CDAD: LitVar_Missing var_F0
  loc_67CDB0: LitVar_Missing var_CC
  loc_67CDB3: LitVar_Missing var_AC
  loc_67CDB6: LitStr "Consolidación Mensual de Red XXI"
  loc_67CDB9: FStStrCopy var_90
  loc_67CDBC: FLdRfVar var_90
  loc_67CDBF: LitI4 &H1C
  loc_67CDC4: PopTmpLdAdStr var_F4
  loc_67CDC7: LitI2_Byte &H36
  loc_67CDC9: PopTmpLdAd2 var_CE
  loc_67CDCC: ImpAdLdRf MemVar_74C7D0
  loc_67CDCF: NewIfNullPr clsMsg
  loc_67CDD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_67CDD7: ILdRf var_98
  loc_67CDDA: LitStr " "
  loc_67CDDD: ConcatStr
  loc_67CDDE: FStStrNoPop var_1E8
  loc_67CDE1: FLdPrThis
  loc_67CDE2: VCallAd Control_ID_Label1
  loc_67CDE5: FStAdFunc var_8C
  loc_67CDE8: FLdPr var_8C
  loc_67CDEB: Me.Caption = from_stack_1
  loc_67CDF0: FFreeStr var_90 = "": var_98 = ""
  loc_67CDF9: FFree1Ad var_8C
  loc_67CDFC: FFreeVar var_AC = "": var_CC = "": var_F0 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_67CE13: ExitProcHresult
End Sub

Private Function Proc_40_10_662B6C() '662B6C
  'Data Table: 44965C
  loc_66284C: LitI2_Byte 1
  loc_66284E: CStrUI1
  loc_662850: FStStr var_94
  loc_662853: FLdRfVar var_A2
  loc_662856: FLdPrThis
  loc_662857: VCallAd Control_ID_cboMonth
  loc_66285A: FStAdFunc var_A0
  loc_66285D: FLdPr var_A0
  loc_662860:  = Me.ListIndex
  loc_662865: LitVarI2 var_E4, 2
  loc_66286A: LitI4 2
  loc_66286F: FLdI2 var_A2
  loc_662872: LitI2_Byte &H65
  loc_662874: AddI2
  loc_662875: CVarI2 var_C4
  loc_662878: FLdRfVar var_F4
  loc_66287B: ImpAdCallFPR4  = Mid(, , )
  loc_662880: FLdRfVar var_F4
  loc_662883: CStrVarTmp
  loc_662884: FStStr var_88
  loc_662887: FFree1Ad var_A0
  loc_66288A: FFreeVar var_C4 = "": var_E4 = ""
  loc_662893: ILdRf var_88
  loc_662896: CR8Str
  loc_662898: LitI2_Byte 1
  loc_66289A: CR8I2
  loc_66289B: AddR8
  loc_66289C: CStrR8
  loc_66289E: FStStr var_98
  loc_6628A1: FLdRfVar var_F8
  loc_6628A4: FLdPr Me
  loc_6628A7: VCallAd Control_ID_cboYear
  loc_6628AA: FStAdFunc var_A0
  loc_6628AD: FLdPr var_A0
  loc_6628B0:  = Me.Text
  loc_6628B5: FLdZeroAd var_F8
  loc_6628B8: FStStr var_9C
  loc_6628BB: FFree1Ad var_A0
  loc_6628BE: ILdRf var_98
  loc_6628C1: CR8Str
  loc_6628C3: LitI2_Byte &HC
  loc_6628C5: CR8I2
  loc_6628C6: GtR4
  loc_6628C7: BranchF loc_6628DF
  loc_6628CA: LitI2_Byte 1
  loc_6628CC: CStrUI1
  loc_6628CE: FStStr var_98
  loc_6628D1: ILdRf var_9C
  loc_6628D4: CR8Str
  loc_6628D6: LitI2_Byte 1
  loc_6628D8: CR8I2
  loc_6628D9: AddR8
  loc_6628DA: CStrR8
  loc_6628DC: FStStr var_9C
  loc_6628DF: ILdRf var_98
  loc_6628E2: CR8Str
  loc_6628E4: LitI2_Byte &H64
  loc_6628E6: CR8I2
  loc_6628E7: AddR8
  loc_6628E8: CStrR8
  loc_6628EA: FStStr var_98
  loc_6628ED: LitVarI2 var_C4, 2
  loc_6628F2: LitI4 2
  loc_6628F7: FLdRfVar var_98
  loc_6628FA: CVarRef
  loc_6628FF: FLdRfVar var_E4
  loc_662902: ImpAdCallFPR4  = Mid(, , )
  loc_662907: FLdRfVar var_E4
  loc_66290A: CStrVarTmp
  loc_66290B: FStStr var_98
  loc_66290E: FFreeVar var_C4 = ""
  loc_662915: FLdRfVar var_F8
  loc_662918: FLdPrThis
  loc_662919: VCallAd Control_ID_cboYear
  loc_66291C: FStAdFunc var_A0
  loc_66291F: FLdPr var_A0
  loc_662922:  = Me.Text
  loc_662927: ILdRf var_F8
  loc_66292A: ILdRf var_88
  loc_66292D: ConcatStr
  loc_66292E: FStStrNoPop var_FC
  loc_662931: LitStr "01"
  loc_662934: ConcatStr
  loc_662935: FStStrNoPop var_100
  loc_662938: LitStr "000000"
  loc_66293B: ConcatStr
  loc_66293C: FStStrNoPop var_104
  loc_66293F: ILdRf var_9C
  loc_662942: ConcatStr
  loc_662943: FStStrNoPop var_108
  loc_662946: ILdRf var_98
  loc_662949: ConcatStr
  loc_66294A: FStStrNoPop var_10C
  loc_66294D: LitStr "01"
  loc_662950: ConcatStr
  loc_662951: FStStrNoPop var_110
  loc_662954: LitStr "000000"
  loc_662957: ConcatStr
  loc_662958: FStStr var_8C
  loc_66295B: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_66296C: FFree1Ad var_A0
  loc_66296F: FLdRfVar var_A2
  loc_662972: FLdRfVar var_90
  loc_662975: FLdRfVar var_8C
  loc_662978: LitStr "R"
  loc_66297B: FStStrCopy var_F8
  loc_66297E: FLdRfVar var_F8
  loc_662981: FLdRfVar var_A0
  loc_662984: ImpAdLdRf MemVar_74C760
  loc_662987: NewIfNullPr Formx
  loc_66298A: from_stack_1v = Formx.global_4589716Get()
  loc_66298F: FLdPr var_A0
  loc_662992: Formx.FontSize = from_stack_1s
  loc_662997: FLdI2 var_A2
  loc_66299A: NotI4
  loc_66299B: FFree1Str var_F8
  loc_66299E: FFree1Ad var_A0
  loc_6629A1: BranchF loc_6629D0
  loc_6629A4: FLdRfVar var_C4
  loc_6629A7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6629AC: FLdRfVar var_C4
  loc_6629AF: CBoolVarNull
  loc_6629B1: FFree1Var var_C4 = ""
  loc_6629B4: BranchF loc_6629CD
  loc_6629B7: ILdRf Me
  loc_6629BA: FStAdNoPop
  loc_6629BE: ImpAdLdRf MemVar_7520D4
  loc_6629C1: NewIfNullPr Global
  loc_6629C4: Global.Unload from_stack_1
  loc_6629C9: FFree1Ad var_A0
  loc_6629CC: ExitProcHresult
  loc_6629CD: Branch loc_66296F
  loc_6629D0: FLdPrThis
  loc_6629D1: VCallAd Control_ID_CmbDay
  loc_6629D4: FStAdFunc var_A0
  loc_6629D7: FLdPr var_A0
  loc_6629DA: Me.Clear
  loc_6629DF: FFree1Ad var_A0
  loc_6629E2: ILdRf var_94
  loc_6629E5: CR8Str
  loc_6629E7: ILdRf var_90
  loc_6629EA: FnLenStr
  loc_6629EB: CR8I4
  loc_6629EC: LeR8
  loc_6629ED: CVarBoolI2 var_120
  loc_6629F1: FLdRfVar var_90
  loc_6629F4: CVarRef
  loc_6629F9: FLdRfVar var_C4
  loc_6629FC: ImpAdCallFPR4  = Trim()
  loc_662A01: FLdRfVar var_C4
  loc_662A04: LitVarStr var_D4, "0"
  loc_662A09: HardType
  loc_662A0A: NeVar var_E4
  loc_662A0E: AndVar var_F4
  loc_662A12: CBoolVarNull
  loc_662A14: FFreeVar var_C4 = ""
  loc_662A1B: BranchF loc_662AC0
  loc_662A1E: FLdRfVar var_90
  loc_662A21: CVarRef
  loc_662A26: FLdRfVar var_C4
  loc_662A29: ImpAdCallFPR4  = Trim()
  loc_662A2E: FLdRfVar var_C4
  loc_662A31: CStrVarTmp
  loc_662A32: FStStr var_90
  loc_662A35: FFree1Var var_C4 = ""
  loc_662A38: LitVarI2 var_C4, 10
  loc_662A3D: ILdRf var_94
  loc_662A40: CI4Str
  loc_662A41: FLdRfVar var_90
  loc_662A44: CVarRef
  loc_662A49: FLdRfVar var_E4
  loc_662A4C: ImpAdCallFPR4  = Mid(, , )
  loc_662A51: LitVarI2 var_150, 8
  loc_662A56: ILdRf var_94
  loc_662A59: CR8Str
  loc_662A5B: LitI2_Byte &HA
  loc_662A5D: CR8I2
  loc_662A5E: AddR8
  loc_662A5F: CI4R8
  loc_662A60: FLdRfVar var_90
  loc_662A63: CVarRef
  loc_662A68: FLdRfVar var_160
  loc_662A6B: ImpAdCallFPR4  = Mid(, , )
  loc_662A70: LitVar_Missing var_180
  loc_662A73: PopAdLdVar
  loc_662A74: FLdRfVar var_E4
  loc_662A77: LitVarStr var_120, " "
  loc_662A7C: AddVar var_F4
  loc_662A80: FLdRfVar var_160
  loc_662A83: AddVar var_170
  loc_662A87: CStrVarVal var_F8
  loc_662A8B: FLdPrThis
  loc_662A8C: VCallAd Control_ID_CmbDay
  loc_662A8F: FStAdFunc var_A0
  loc_662A92: FLdPr var_A0
  loc_662A95: Me.AddItem from_stack_1, from_stack_2
  loc_662A9A: FFree1Str var_F8
  loc_662A9D: FFree1Ad var_A0
  loc_662AA0: FFreeVar var_C4 = "": var_E4 = "": var_150 = "": var_F4 = "": var_160 = ""
  loc_662AAF: ILdRf var_94
  loc_662AB2: CR8Str
  loc_662AB4: LitI2_Byte &H25
  loc_662AB6: CR8I2
  loc_662AB7: AddR8
  loc_662AB8: CStrR8
  loc_662ABA: FStStr var_94
  loc_662ABD: Branch loc_6629E2
  loc_662AC0: FLdRfVar var_A2
  loc_662AC3: FLdPrThis
  loc_662AC4: VCallAd Control_ID_CmbDay
  loc_662AC7: FStAdFunc var_A0
  loc_662ACA: FLdPr var_A0
  loc_662ACD:  = Me.ListCount
  loc_662AD2: FLdI2 var_A2
  loc_662AD5: LitI2_Byte 0
  loc_662AD7: EqI2
  loc_662AD8: FFree1Ad var_A0
  loc_662ADB: BranchF loc_662B57
  loc_662ADE: FLdRfVar var_FC
  loc_662AE1: LitVar_Missing var_204
  loc_662AE4: LitVar_Missing var_1E4
  loc_662AE7: LitVar_Missing var_1C4
  loc_662AEA: LitVar_Missing var_1A4
  loc_662AED: LitVar_Missing var_170
  loc_662AF0: LitVar_Missing var_160
  loc_662AF3: LitVar_Missing var_150
  loc_662AF6: LitVar_Missing var_F4
  loc_662AF9: LitVar_Missing var_E4
  loc_662AFC: LitVar_Missing var_C4
  loc_662AFF: LitStr "No hubo cierres en este mes"
  loc_662B02: FStStrCopy var_F8
  loc_662B05: FLdRfVar var_F8
  loc_662B08: LitI4 &H1A
  loc_662B0D: PopTmpLdAdStr var_184
  loc_662B10: LitI2_Byte &H36
  loc_662B12: PopTmpLdAd2 var_A2
  loc_662B15: ImpAdLdRf MemVar_74C7D0
  loc_662B18: NewIfNullPr clsMsg
  loc_662B1B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_662B20: LitVar_Missing var_214
  loc_662B23: PopAdLdVar
  loc_662B24: ILdRf var_FC
  loc_662B27: FLdPrThis
  loc_662B28: VCallAd Control_ID_CmbDay
  loc_662B2B: FStAdFunc var_A0
  loc_662B2E: FLdPr var_A0
  loc_662B31: Me.AddItem from_stack_1, from_stack_2
  loc_662B36: FFreeStr var_F8 = ""
  loc_662B3D: FFree1Ad var_A0
  loc_662B40: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_662B57: LitI2_Byte 0
  loc_662B59: FLdPrThis
  loc_662B5A: VCallAd Control_ID_CmbDay
  loc_662B5D: FStAdFunc var_A0
  loc_662B60: FLdPr var_A0
  loc_662B63: Me.ListIndex = from_stack_1
  loc_662B68: FFree1Ad var_A0
  loc_662B6B: ExitProcHresult
End Function

Private Function Proc_40_11_665820() '665820
  'Data Table: 44965C
  loc_6654E8: LitI2_Byte &H13
  loc_6654EA: CStrUI1
  loc_6654EC: FStStr var_9C
  loc_6654EF: FLdRfVar var_A2
  loc_6654F2: FLdPrThis
  loc_6654F3: VCallAd Control_ID_cmbMonth2
  loc_6654F6: FStAdFunc var_A0
  loc_6654F9: FLdPr var_A0
  loc_6654FC:  = Me.ListIndex
  loc_665501: LitVarI2 var_E4, 2
  loc_665506: LitI4 2
  loc_66550B: FLdI2 var_A2
  loc_66550E: LitI2_Byte &H65
  loc_665510: AddI2
  loc_665511: CVarI2 var_C4
  loc_665514: FLdRfVar var_F4
  loc_665517: ImpAdCallFPR4  = Mid(, , )
  loc_66551C: FLdRfVar var_F4
  loc_66551F: CStrVarTmp
  loc_665520: FStStr var_88
  loc_665523: FFree1Ad var_A0
  loc_665526: FFreeVar var_C4 = "": var_E4 = ""
  loc_66552F: ILdRf var_88
  loc_665532: CR8Str
  loc_665534: LitI2_Byte 1
  loc_665536: CR8I2
  loc_665537: AddR8
  loc_665538: CStrR8
  loc_66553A: FStStr var_94
  loc_66553D: FLdRfVar var_F8
  loc_665540: FLdPrThis
  loc_665541: VCallAd Control_ID_cmbYear2
  loc_665544: FStAdFunc var_A0
  loc_665547: FLdPr var_A0
  loc_66554A:  = Me.Text
  loc_66554F: FLdZeroAd var_F8
  loc_665552: FStStr var_98
  loc_665555: FFree1Ad var_A0
  loc_665558: ILdRf var_94
  loc_66555B: CR8Str
  loc_66555D: LitI2_Byte &HC
  loc_66555F: CR8I2
  loc_665560: GtR4
  loc_665561: BranchF loc_665579
  loc_665564: LitI2_Byte 1
  loc_665566: CStrUI1
  loc_665568: FStStr var_94
  loc_66556B: ILdRf var_98
  loc_66556E: CR8Str
  loc_665570: LitI2_Byte 1
  loc_665572: CR8I2
  loc_665573: AddR8
  loc_665574: CStrR8
  loc_665576: FStStr var_98
  loc_665579: ILdRf var_94
  loc_66557C: CR8Str
  loc_66557E: LitI2_Byte &H64
  loc_665580: CR8I2
  loc_665581: AddR8
  loc_665582: CStrR8
  loc_665584: FStStr var_94
  loc_665587: LitVarI2 var_C4, 2
  loc_66558C: LitI4 2
  loc_665591: FLdRfVar var_94
  loc_665594: CVarRef
  loc_665599: FLdRfVar var_E4
  loc_66559C: ImpAdCallFPR4  = Mid(, , )
  loc_6655A1: FLdRfVar var_E4
  loc_6655A4: CStrVarTmp
  loc_6655A5: FStStr var_94
  loc_6655A8: FFreeVar var_C4 = ""
  loc_6655AF: FLdRfVar var_F8
  loc_6655B2: FLdPrThis
  loc_6655B3: VCallAd Control_ID_cmbYear2
  loc_6655B6: FStAdFunc var_A0
  loc_6655B9: FLdPr var_A0
  loc_6655BC:  = Me.Text
  loc_6655C1: ILdRf var_F8
  loc_6655C4: ILdRf var_88
  loc_6655C7: ConcatStr
  loc_6655C8: FStStrNoPop var_FC
  loc_6655CB: LitStr "01"
  loc_6655CE: ConcatStr
  loc_6655CF: FStStrNoPop var_100
  loc_6655D2: LitStr "000000"
  loc_6655D5: ConcatStr
  loc_6655D6: FStStrNoPop var_104
  loc_6655D9: ILdRf var_98
  loc_6655DC: ConcatStr
  loc_6655DD: FStStrNoPop var_108
  loc_6655E0: ILdRf var_94
  loc_6655E3: ConcatStr
  loc_6655E4: FStStrNoPop var_10C
  loc_6655E7: LitStr "01"
  loc_6655EA: ConcatStr
  loc_6655EB: FStStrNoPop var_110
  loc_6655EE: LitStr "000000"
  loc_6655F1: ConcatStr
  loc_6655F2: FStStr var_8C
  loc_6655F5: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_665606: FFree1Ad var_A0
  loc_665609: FLdRfVar var_A2
  loc_66560C: FLdRfVar var_90
  loc_66560F: FLdRfVar var_8C
  loc_665612: LitStr "R"
  loc_665615: FStStrCopy var_F8
  loc_665618: FLdRfVar var_F8
  loc_66561B: FLdRfVar var_A0
  loc_66561E: ImpAdLdRf MemVar_74C760
  loc_665621: NewIfNullPr Formx
  loc_665624: from_stack_1v = Formx.global_4589716Get()
  loc_665629: FLdPr var_A0
  loc_66562C: Formx.FontSize = from_stack_1s
  loc_665631: FLdI2 var_A2
  loc_665634: NotI4
  loc_665635: FFree1Str var_F8
  loc_665638: FFree1Ad var_A0
  loc_66563B: BranchF loc_66566A
  loc_66563E: FLdRfVar var_C4
  loc_665641: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_665646: FLdRfVar var_C4
  loc_665649: CBoolVarNull
  loc_66564B: FFree1Var var_C4 = ""
  loc_66564E: BranchF loc_665667
  loc_665651: ILdRf Me
  loc_665654: FStAdNoPop
  loc_665658: ImpAdLdRf MemVar_7520D4
  loc_66565B: NewIfNullPr Global
  loc_66565E: Global.Unload from_stack_1
  loc_665663: FFree1Ad var_A0
  loc_665666: ExitProcHresult
  loc_665667: Branch loc_665609
  loc_66566A: FLdPrThis
  loc_66566B: VCallAd Control_ID_cmbDay2
  loc_66566E: FStAdFunc var_A0
  loc_665671: FLdPr var_A0
  loc_665674: Me.Clear
  loc_665679: FFree1Ad var_A0
  loc_66567C: FLdRfVar var_90
  loc_66567F: CVarRef
  loc_665684: FLdRfVar var_C4
  loc_665687: ImpAdCallFPR4  = Trim()
  loc_66568C: FLdRfVar var_C4
  loc_66568F: CStrVarTmp
  loc_665690: FStStr var_90
  loc_665693: FFree1Var var_C4 = ""
  loc_665696: ILdRf var_9C
  loc_665699: CR8Str
  loc_66569B: ILdRf var_90
  loc_66569E: FnLenStr
  loc_66569F: CR8I4
  loc_6656A0: LeR8
  loc_6656A1: CVarBoolI2 var_120
  loc_6656A5: FLdRfVar var_90
  loc_6656A8: CVarRef
  loc_6656AD: FLdRfVar var_C4
  loc_6656B0: ImpAdCallFPR4  = Trim()
  loc_6656B5: FLdRfVar var_C4
  loc_6656B8: LitVarStr var_D4, "0"
  loc_6656BD: HardType
  loc_6656BE: NeVar var_E4
  loc_6656C2: AndVar var_F4
  loc_6656C6: CBoolVarNull
  loc_6656C8: FFreeVar var_C4 = ""
  loc_6656CF: BranchF loc_665774
  loc_6656D2: FLdRfVar var_90
  loc_6656D5: CVarRef
  loc_6656DA: FLdRfVar var_C4
  loc_6656DD: ImpAdCallFPR4  = Trim()
  loc_6656E2: FLdRfVar var_C4
  loc_6656E5: CStrVarTmp
  loc_6656E6: FStStr var_90
  loc_6656E9: FFree1Var var_C4 = ""
  loc_6656EC: LitVarI2 var_C4, 10
  loc_6656F1: ILdRf var_9C
  loc_6656F4: CI4Str
  loc_6656F5: FLdRfVar var_90
  loc_6656F8: CVarRef
  loc_6656FD: FLdRfVar var_E4
  loc_665700: ImpAdCallFPR4  = Mid(, , )
  loc_665705: LitVarI2 var_150, 8
  loc_66570A: ILdRf var_9C
  loc_66570D: CR8Str
  loc_66570F: LitI2_Byte &HA
  loc_665711: CR8I2
  loc_665712: AddR8
  loc_665713: CI4R8
  loc_665714: FLdRfVar var_90
  loc_665717: CVarRef
  loc_66571C: FLdRfVar var_160
  loc_66571F: ImpAdCallFPR4  = Mid(, , )
  loc_665724: LitVar_Missing var_180
  loc_665727: PopAdLdVar
  loc_665728: FLdRfVar var_E4
  loc_66572B: LitVarStr var_120, " "
  loc_665730: AddVar var_F4
  loc_665734: FLdRfVar var_160
  loc_665737: AddVar var_170
  loc_66573B: CStrVarVal var_F8
  loc_66573F: FLdPrThis
  loc_665740: VCallAd Control_ID_cmbDay2
  loc_665743: FStAdFunc var_A0
  loc_665746: FLdPr var_A0
  loc_665749: Me.AddItem from_stack_1, from_stack_2
  loc_66574E: FFree1Str var_F8
  loc_665751: FFree1Ad var_A0
  loc_665754: FFreeVar var_C4 = "": var_E4 = "": var_150 = "": var_F4 = "": var_160 = ""
  loc_665763: ILdRf var_9C
  loc_665766: CR8Str
  loc_665768: LitI2_Byte &H25
  loc_66576A: CR8I2
  loc_66576B: AddR8
  loc_66576C: CStrR8
  loc_66576E: FStStr var_9C
  loc_665771: Branch loc_665696
  loc_665774: FLdRfVar var_A2
  loc_665777: FLdPrThis
  loc_665778: VCallAd Control_ID_cmbDay2
  loc_66577B: FStAdFunc var_A0
  loc_66577E: FLdPr var_A0
  loc_665781:  = Me.ListCount
  loc_665786: FLdI2 var_A2
  loc_665789: LitI2_Byte 0
  loc_66578B: EqI2
  loc_66578C: FFree1Ad var_A0
  loc_66578F: BranchF loc_66580B
  loc_665792: FLdRfVar var_FC
  loc_665795: LitVar_Missing var_204
  loc_665798: LitVar_Missing var_1E4
  loc_66579B: LitVar_Missing var_1C4
  loc_66579E: LitVar_Missing var_1A4
  loc_6657A1: LitVar_Missing var_170
  loc_6657A4: LitVar_Missing var_160
  loc_6657A7: LitVar_Missing var_150
  loc_6657AA: LitVar_Missing var_F4
  loc_6657AD: LitVar_Missing var_E4
  loc_6657B0: LitVar_Missing var_C4
  loc_6657B3: LitStr "No hubo cierres en este mes"
  loc_6657B6: FStStrCopy var_F8
  loc_6657B9: FLdRfVar var_F8
  loc_6657BC: LitI4 &H1A
  loc_6657C1: PopTmpLdAdStr var_184
  loc_6657C4: LitI2_Byte &H36
  loc_6657C6: PopTmpLdAd2 var_A2
  loc_6657C9: ImpAdLdRf MemVar_74C7D0
  loc_6657CC: NewIfNullPr clsMsg
  loc_6657CF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6657D4: LitVar_Missing var_214
  loc_6657D7: PopAdLdVar
  loc_6657D8: ILdRf var_FC
  loc_6657DB: FLdPrThis
  loc_6657DC: VCallAd Control_ID_cmbDay2
  loc_6657DF: FStAdFunc var_A0
  loc_6657E2: FLdPr var_A0
  loc_6657E5: Me.AddItem from_stack_1, from_stack_2
  loc_6657EA: FFreeStr var_F8 = ""
  loc_6657F1: FFree1Ad var_A0
  loc_6657F4: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_150 = "": var_160 = "": var_170 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_66580B: LitI2_Byte 0
  loc_66580D: FLdPrThis
  loc_66580E: VCallAd Control_ID_cmbDay2
  loc_665811: FStAdFunc var_A0
  loc_665814: FLdPr var_A0
  loc_665817: Me.ListIndex = from_stack_1
  loc_66581C: FFree1Ad var_A0
  loc_66581F: ExitProcHresult
End Function
