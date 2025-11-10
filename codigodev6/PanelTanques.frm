VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{7A080CC8-26E2-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\GAUGE32.OCX"
Begin VB.Form PanelTanques
  Caption = "Tanques"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form5"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 195
  ClientWidth = 11895
  ClientHeight = 8565
  LockControls = -1  'True
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Moveable = 0   'False
  Begin Threed.SSPanel lblTankStatus
    Index = 0
    Left = 3720
    Top = 600
    Width = 2655
    Height = 255
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "PanelTanques.frx":0000
  End
  Begin VB.Timer Reloj
    Enabled = 0   'False
    Interval = 500
    Left = 11100
    Top = 6840
  End
  Begin VB.Timer TestTimer
    Enabled = 0   'False
    Interval = 5000
    Left = 10560
    Top = 6840
  End
  Begin VB.Timer TimerMediciones
    Enabled = 0   'False
    Interval = 1000
    Left = 10860
    Top = 7320
  End
  Begin Threed.SSCommand sscDescarga
    Left = 2430
    Top = 7860
    Width = 2085
    Height = 735
    TabIndex = 2
    OleObjectBlob = "PanelTanques.frx":0079
  End
  Begin Threed.SSCommand sscForzarMedicion
    Left = 60
    Top = 7860
    Width = 2085
    Height = 735
    TabIndex = 1
    OleObjectBlob = "PanelTanques.frx":00DE
    ToolTipText = "Forzar medición de tanques"
  End
  Begin Threed.SSCommand Mediciones
    Left = 8700
    Top = 7860
    Width = 855
    Height = 735
    TabIndex = 6
    OleObjectBlob = "PanelTanques.frx":0143
    ToolTipText = "Mediciones manuales por varilla"
  End
  Begin Threed.SSCommand Altas
    Left = 6900
    Top = 7860
    Width = 855
    Height = 735
    Tag = "Agregar combustible al tanque"
    TabIndex = 4
    OleObjectBlob = "PanelTanques.frx":0495
    ToolTipText = "Altas"
  End
  Begin Threed.SSCommand Bajas
    Left = 7800
    Top = 7860
    Width = 855
    Height = 735
    Tag = "Remover combustible del tanque"
    TabIndex = 5
    OleObjectBlob = "PanelTanques.frx":091F
    ToolTipText = "Bajas"
  End
  Begin Threed.SSCommand Continuar
    Left = 9780
    Top = 7860
    Width = 2085
    Height = 735
    TabIndex = 7
    OleObjectBlob = "PanelTanques.frx":0DA9
    ToolTipText = "Volver al menú principal"
  End
  Begin GaugeLib.Gauge Tictac
    Index = 0
    Left = 1440
    Top = 2700
    Width = 615
    Height = 615
    Visible = 0   'False
    TabIndex = 8
    OleObjectBlob = "PanelTanques.frx":0E0D
  End
  Begin Threed.SSPanel Titulo
    Index = 0
    Left = 3720
    Top = 0
    Width = 2655
    Height = 435
    TabIndex = 0
    OleObjectBlob = "PanelTanques.frx":0E55
  End
  Begin Threed.SSCommand cmdSilencio
    Left = 4620
    Top = 7860
    Width = 2085
    Height = 735
    Visible = 0   'False
    TabIndex = 3
    OleObjectBlob = "PanelTanques.frx":0ED9
    ToolTipText = "Silenciar alarmas sonoras"
  End
  Begin VB.Label lblTituloVolumen
    Caption = " Vol"
    Index = 0
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 4200
    Top = 1560
    Width = 735
    Height = 255
    TabIndex = 18
  End
  Begin VB.Label lblVolumen
    Caption = "120005"
    Index = 0
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 1920
    Top = 360
    Width = 720
    Height = 270
    TabIndex = 17
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lbGNC
    Caption = "GNC"
    Left = 840
    Top = 5400
    Width = 1095
    Height = 375
    Visible = 0   'False
    TabIndex = 16
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image imgConvertMM
    Index = 0
    Picture = "PanelTanques.frx":0F3E
    Left = 1860
    Top = 1380
    Width = 420
    Height = 405
    Visible = 0   'False
    Stretch = -1  'True
    ToolTipText = "Haga click aquí para consultar la tabla de calibración del tanque"
  End
  Begin VB.Label lblTituloAgua
    Caption = " Agua"
    Index = 0
    BackColor = &H0&
    Left = 4200
    Top = 2040
    Width = 735
    Height = 255
    TabIndex = 15
  End
  Begin VB.Label lblTituloProducto
    Caption = " Prod."
    Index = 0
    BackColor = &H0&
    Left = 4200
    Top = 1800
    Width = 735
    Height = 255
    TabIndex = 14
  End
  Begin VB.Label lblTituloVacio
    Caption = " Vacio"
    Index = 0
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 4200
    Top = 1320
    Width = 735
    Height = 255
    TabIndex = 13
  End
  Begin VB.Image imgSemaforoVerde
    Index = 0
    Picture = "PanelTanques.frx":1088
    Left = 2700
    Top = 1260
    Width = 405
    Height = 585
    Visible = 0   'False
    Stretch = -1  'True
    Tag = "Normal"
    ToolTipText = "Haga click aquí para ver el detalle de las alarmas"
  End
  Begin VB.Image imgSemaforoAmarillo
    Index = 0
    Picture = "PanelTanques.frx":14CA
    Left = 3540
    Top = 1140
    Width = 480
    Height = 720
    Visible = 0   'False
    Stretch = -1  'True
    Tag = "Atencion"
    ToolTipText = "Haga click aquí para ver el detalle de las alarmas"
  End
  Begin VB.Label Combustible
    Caption = "120005"
    Index = 0
    BackColor = &H0&
    ForeColor = &HC0FFC0&
    Left = 1920
    Top = 600
    Width = 720
    Height = 270
    TabIndex = 11
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Vacio
    Caption = "120005"
    Index = 0
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 1920
    Top = 120
    Width = 720
    Height = 270
    TabIndex = 10
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Agua
    Caption = "120005"
    Index = 0
    BackColor = &H0&
    ForeColor = &HFF8080&
    Left = 1920
    Top = 840
    Width = 720
    Height = 270
    TabIndex = 9
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image imgSemaforoRojo
    Index = 0
    Picture = "PanelTanques.frx":190C
    Left = 2820
    Top = 2280
    Width = 480
    Height = 720
    Stretch = -1  'True
    Tag = "Alerta"
    ToolTipText = "Haga click aquí para ver el detalle de las alarmas"
  End
  Begin VB.Image imgTanque
    Index = 0
    Picture = "PanelTanques.frx":1D4E
    Left = 1020
    Top = 2340
    Width = 1425
    Height = 1365
    Stretch = -1  'True
  End
  Begin VB.Shape shpFloodVacio
    Index = 0
    BackColor = &HC0C0FF&
    Left = 120
    Top = 600
    Width = 1695
    Height = 495
    BorderStyle = 0 'Transparent
    FillColor = &HFFFFFF&
    FillStyle = 0
  End
  Begin VB.Shape shpFloodProduct
    Index = 0
    BackColor = &HC0C0FF&
    Left = 120
    Top = 1080
    Width = 1635
    Height = 495
    BorderStyle = 0 'Transparent
    FillColor = &H80C0FF&
    FillStyle = 0
  End
  Begin VB.Shape shpFloodWater
    Index = 0
    BackColor = &HC0C0FF&
    Left = 120
    Top = 1620
    Width = 1575
    Height = 555
    BorderStyle = 0 'Transparent
    FillColor = &HFFFF00&
    FillStyle = 0
  End
End

Attribute VB_Name = "PanelTanques"

Public bFlagdespachosActivos As Boolean
Public strEndCharge As String
Public strEndCharge1 As String
Public strStartCharge As String
Public strStartCharge1 As String
Public strProdAb As String
Public strVacioAb As String
Public strAguaAb As String
Public strND As String
Public strPmm As String
Public strTemp As String
Public strAmm As String
Public strMsgErr As String
Public strMsgErr1 As String
Public strMsgErr2 As String
Public strMsgErr3 As String
Public strMsgDef As String
Public strMsgDef1 As String
Public strMsgDef2 As String


Private Sub Continuar_UnknownEvent_8 '5DB224
  'Data Table: 44F8E0
  loc_5DB1E4: LitI2_Byte 0
  loc_5DB1E6: FLdPrThis
  loc_5DB1E7: VCallAd Control_ID_TestTimer
  loc_5DB1EA: FStAdFunc var_88
  loc_5DB1ED: FLdPr var_88
  loc_5DB1F0: Me.Enabled = from_stack_1b
  loc_5DB1F5: FFree1Ad var_88
  loc_5DB1F8: LitI2_Byte 0
  loc_5DB1FA: FLdPrThis
  loc_5DB1FB: VCallAd Control_ID_Reloj
  loc_5DB1FE: FStAdFunc var_88
  loc_5DB201: FLdPr var_88
  loc_5DB204: Me.Enabled = from_stack_1b
  loc_5DB209: FFree1Ad var_88
  loc_5DB20C: ILdRf Me
  loc_5DB20F: FStAdNoPop
  loc_5DB213: ImpAdLdRf MemVar_7520D4
  loc_5DB216: NewIfNullPr Global
  loc_5DB219: Global.Unload from_stack_1
  loc_5DB21E: FFree1Ad var_88
  loc_5DB221: ExitProcHresult
  loc_5DB222: ExitProcR8
End Sub

Private Sub Altas_UnknownEvent_8 '6558B4
  'Data Table: 44F8E0
  loc_6555E8: FLdRfVar var_86
  loc_6555EB: FLdPr Me
  loc_6555EE: MemLdI2 global_130
  loc_6555F1: from_stack_1v = Proc_117_69_5D765C()
  loc_6555F6: FLdI2 var_86
  loc_6555F9: NotI4
  loc_6555FA: BranchF loc_6555FE
  loc_6555FD: ExitProcHresult
  loc_6555FE: LitI4 3
  loc_655603: ImpAdLdRf MemVar_74A170
  loc_655606: Ary1LdI2
  loc_655607: NotI4
  loc_655608: CVarBoolI2 var_108
  loc_65560C: LitVarI2 var_B8, 3
  loc_655611: LitI4 1
  loc_655616: ImpAdLdRf MemVar_74BF90
  loc_655619: CVarRef
  loc_65561E: FLdRfVar var_C8
  loc_655621: ImpAdCallFPR4  = Mid(, , )
  loc_655626: FLdRfVar var_C8
  loc_655629: LitVarStr var_D8, "\\."
  loc_65562E: HardType
  loc_65562F: EqVar var_E8
  loc_655633: NotVar var_F8
  loc_655637: AndVar var_118
  loc_65563B: CBoolVarNull
  loc_65563D: FFreeVar var_B8 = "": var_C8 = ""
  loc_655646: BranchF loc_65564F
  loc_655649: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_65564E: ExitProcHresult
  loc_65564F: LitI2_Byte &HE
  loc_655651: PopTmpLdAd2 var_86
  loc_655654: ImpAdCallI2 Proc_94_7_603DD0()
  loc_655659: NotI4
  loc_65565A: BranchF loc_65565E
  loc_65565D: ExitProcHresult
  loc_65565E: FLdPr Me
  loc_655661: MemLdI2 global_130
  loc_655664: LitI2_Byte 1
  loc_655666: AddI2
  loc_655667: ImpAdLdUI1
  loc_65566B: CI2UI1
  loc_65566D: GtI2
  loc_65566E: BranchF loc_655672
  loc_655671: ExitProcHresult
  loc_655672: FLdPr Me
  loc_655675: MemLdI2 global_130
  loc_655678: LitI2_Byte 1
  loc_65567A: AddI2
  loc_65567B: ImpAdLdRf MemVar_74E0EC
  loc_65567E: NewIfNullPr Calculadora
  loc_655681: Call Calculadora.tankPut(from_stack_1v)
  loc_655686: LitI2_Byte &HFF
  loc_655688: ImpAdLdRf MemVar_74E0EC
  loc_65568B: NewIfNullPr Calculadora
  loc_65568E: Call Calculadora.AltaPut(from_stack_1v)
  loc_655693: FLdRfVar var_1D4
  loc_655696: LitVar_Missing var_1D0
  loc_655699: LitVar_Missing var_1B0
  loc_65569C: LitVar_Missing var_190
  loc_65569F: LitVar_Missing var_170
  loc_6556A2: LitVar_Missing var_150
  loc_6556A5: LitVar_Missing var_118
  loc_6556A8: LitVar_Missing var_F8
  loc_6556AB: LitVar_Missing var_E8
  loc_6556AE: LitVar_Missing var_C8
  loc_6556B1: LitVar_Missing var_B8
  loc_6556B4: LitStr "Altas de Combustible"
  loc_6556B7: FStStrCopy var_120
  loc_6556BA: FLdRfVar var_120
  loc_6556BD: LitI4 3
  loc_6556C2: PopTmpLdAdStr var_11C
  loc_6556C5: LitI2_Byte &HF
  loc_6556C7: PopTmpLdAd2 var_86
  loc_6556CA: ImpAdLdRf MemVar_74C7D0
  loc_6556CD: NewIfNullPr clsMsg
  loc_6556D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6556D5: ILdRf var_1D4
  loc_6556D8: ImpAdLdRf MemVar_74E0EC
  loc_6556DB: NewIfNullPr Calculadora
  loc_6556DE: Calculadora.Caption = from_stack_1
  loc_6556E3: FFreeStr var_120 = ""
  loc_6556EA: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_655701: FLdRfVar var_1D4
  loc_655704: LitVar_Missing var_1D0
  loc_655707: LitVar_Missing var_1B0
  loc_65570A: LitVar_Missing var_190
  loc_65570D: LitVar_Missing var_170
  loc_655710: LitVar_Missing var_150
  loc_655713: LitVar_Missing var_118
  loc_655716: LitVar_Missing var_F8
  loc_655719: LitVar_Missing var_E8
  loc_65571C: LitVar_Missing var_C8
  loc_65571F: LitVar_Missing var_B8
  loc_655722: LitStr "TANQUE Nº"
  loc_655725: FStStrCopy var_120
  loc_655728: FLdRfVar var_120
  loc_65572B: LitI4 4
  loc_655730: PopTmpLdAdStr var_11C
  loc_655733: LitI2_Byte &HF
  loc_655735: PopTmpLdAd2 var_86
  loc_655738: ImpAdLdRf MemVar_74C7D0
  loc_65573B: NewIfNullPr clsMsg
  loc_65573E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_655743: ILdRf var_1D4
  loc_655746: LitStr " "
  loc_655749: ConcatStr
  loc_65574A: FStStrNoPop var_1D8
  loc_65574D: FLdPr Me
  loc_655750: MemLdI2 global_130
  loc_655753: LitI2_Byte 1
  loc_655755: AddI2
  loc_655756: CStrUI1
  loc_655758: FStStrNoPop var_1DC
  loc_65575B: ConcatStr
  loc_65575C: FStStrNoPop var_1E0
  loc_65575F: ImpAdLdRf MemVar_74E0EC
  loc_655762: NewIfNullPr Calculadora
  loc_655765: VCallAd Control_ID_Titulo
  loc_655768: FStAdFunc var_1E4
  loc_65576B: FLdPr var_1E4
  loc_65576E: Calculadora.Label.Caption = from_stack_1
  loc_655773: FFreeStr var_120 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_655780: FFree1Ad var_1E4
  loc_655783: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_65579A: FLdRfVar var_120
  loc_65579D: FLdPr Me
  loc_6557A0: MemLdI2 global_130
  loc_6557A3: LitI2_Byte 1
  loc_6557A5: AddI2
  loc_6557A6: CI4UI1
  loc_6557A7: ImpAdLdRf MemVar_74C1D8
  loc_6557AA: Ary1LdUI1
  loc_6557AC: CI2UI1
  loc_6557AE: ImpAdLdRf MemVar_74A220
  loc_6557B1: NewIfNullPr clsProducts
  loc_6557B9: ILdRf var_120
  loc_6557BC: ImpAdLdRf MemVar_74E0EC
  loc_6557BF: NewIfNullPr Calculadora
  loc_6557C2: VCallAd Control_ID_Subtitulo
  loc_6557C5: FStAdFunc var_1E4
  loc_6557C8: FLdPr var_1E4
  loc_6557CB: Calculadora.Label.Caption = from_stack_1
  loc_6557D0: FFree1Str var_120
  loc_6557D3: FFree1Ad var_1E4
  loc_6557D6: LitVar_Missing var_A8
  loc_6557D9: PopAdLdVar
  loc_6557DA: LitVarI4
  loc_6557E2: PopAdLdVar
  loc_6557E3: ImpAdLdRf MemVar_74E0EC
  loc_6557E6: NewIfNullPr Calculadora
  loc_6557E9: Calculadora.Show from_stack_1, from_stack_2
  loc_6557EE: ImpAdLdI2 MemVar_74C37E
  loc_6557F1: LitI2_Byte 0
  loc_6557F3: EqI2
  loc_6557F4: BranchF loc_6558B1
  loc_6557F7: ImpAdLdFPR4 MemVar_74C370
  loc_6557FA: LitI2_Byte 0
  loc_6557FC: CR8I2
  loc_6557FD: GtR4
  loc_6557FE: BranchF loc_655877
  loc_655801: FLdRfVar var_B8
  loc_655804: LitI2_Byte &HFF
  loc_655806: PopTmpLdAd2 var_1E6
  loc_655809: ImpAdLdFPR4 MemVar_74C370
  loc_65580C: LitI2_Byte &H64
  loc_65580E: CR8I2
  loc_65580F: MulR8
  loc_655810: PopTmpLdAdFPR4
  loc_655814: FLdPr Me
  loc_655817: MemLdI2 global_130
  loc_65581A: LitI2_Byte 1
  loc_65581C: AddI2
  loc_65581D: CUI1I2
  loc_65581F: PopTmpLdAd1
  loc_655823: FLdRfVar var_1E4
  loc_655826: ImpAdLdRf MemVar_74C760
  loc_655829: NewIfNullPr Formx
  loc_65582C: from_stack_1v = Formx.global_4589716Get()
  loc_655831: FLdPr var_1E4
  loc_655834: Formx.Top = from_stack_1s
  loc_655839: FLdRfVar var_B8
  loc_65583C: NotVar var_C8
  loc_655840: CBoolVarNull
  loc_655842: FFree1Ad var_1E4
  loc_655845: FFree1Var var_B8 = ""
  loc_655848: BranchF loc_655877
  loc_65584B: FLdRfVar var_B8
  loc_65584E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_655853: FLdRfVar var_B8
  loc_655856: CBoolVarNull
  loc_655858: FFree1Var var_B8 = ""
  loc_65585B: BranchF loc_655874
  loc_65585E: ILdRf Me
  loc_655861: FStAdNoPop
  loc_655865: ImpAdLdRf MemVar_7520D4
  loc_655868: NewIfNullPr Global
  loc_65586B: Global.Unload from_stack_1
  loc_655870: FFree1Ad var_1E4
  loc_655873: ExitProcHresult
  loc_655874: Branch loc_655801
  loc_655877: FLdPr Me
  loc_65587A: MemLdI2 global_130
  loc_65587D: LitI2_Byte 1
  loc_65587F: AddI2
  loc_655880: PopTmpLdAd2 var_86
  loc_655883: Call RefreshTankTotals(from_stack_1v)
  loc_655888: FLdPr Me
  loc_65588B: MemLdI2 global_130
  loc_65588E: ImpAdLdUI1
  loc_655892: CI2UI1
  loc_655894: LitI2_Byte 1
  loc_655896: SubI2
  loc_655897: LtI2
  loc_655898: BranchF loc_6558B1
  loc_65589B: FLdPr Me
  loc_65589E: MemLdI2 global_130
  loc_6558A1: LitI2_Byte 1
  loc_6558A3: AddI2
  loc_6558A4: PopTmpLdAd2 var_86
  loc_6558A7: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_6558AC: Call Altas_UnknownEvent_8()
  loc_6558B1: ExitProcHresult
End Sub

Private Sub imgSemaforoAmarillo_Click(Index As Integer) '5D771C
  'Data Table: 44F8E0
  loc_5D76F4: FLdPrThis
  loc_5D76F5: VCallAd Control_ID_sscForzarMedicion
  loc_5D76F8: FStAdFunc var_88
  loc_5D76FB: FLdPr var_88
  loc_5D76FE: LateIdLdVar var_98 DispID_13 -32767
  loc_5D7705: CBoolVar
  loc_5D7707: LitI2_Byte &HFF
  loc_5D7709: EqI2
  loc_5D770A: FFree1Ad var_88
  loc_5D770D: FFree1Var var_98 = ""
  loc_5D7710: BranchF loc_5D771B
  loc_5D7713: ILdRf Index
  loc_5D7716: Call imgSemaforoVerde_Click()
  loc_5D771B: ExitProcHresult
End Sub

Private Function sscForzarMedicion_UnknownEvent_8(arg_1C) '5F06CC
  'Data Table: 44F8E0
  loc_5F0634: FLdRfVar var_98
  loc_5F0637: FLdRfVar var_88
  loc_5F063A: ImpAdLdRf MemVar_74C760
  loc_5F063D: NewIfNullPr Formx
  loc_5F0640: from_stack_1v = Formx.global_4589716Get()
  loc_5F0645: FLdPr var_88
  loc_5F0648: Call 0.Method_arg_1CC ()
  loc_5F064D: FLdRfVar var_98
  loc_5F0650: NotVar var_A8
  loc_5F0654: CBoolVarNull
  loc_5F0656: FFree1Ad var_88
  loc_5F0659: FFree1Var var_98 = ""
  loc_5F065C: BranchF loc_5F068B
  loc_5F065F: FLdRfVar var_98
  loc_5F0662: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F0667: FLdRfVar var_98
  loc_5F066A: CBoolVarNull
  loc_5F066C: FFree1Var var_98 = ""
  loc_5F066F: BranchF loc_5F0688
  loc_5F0672: ILdRf Me
  loc_5F0675: FStAdNoPop
  loc_5F0679: ImpAdLdRf MemVar_7520D4
  loc_5F067C: NewIfNullPr Global
  loc_5F067F: Global.Unload from_stack_1
  loc_5F0684: FFree1Ad var_88
  loc_5F0687: ExitProcHresult
  loc_5F0688: Branch loc_5F0634
  loc_5F068B: LitI2_Byte 0
  loc_5F068D: FLdPr Me
  loc_5F0690: MemStI2 global_140
  loc_5F0693: LitI2_Byte 0
  loc_5F0695: FLdPrThis
  loc_5F0696: VCallAd Control_ID_Reloj
  loc_5F0699: FStAdFunc var_88
  loc_5F069C: FLdPr var_88
  loc_5F069F: Me.Enabled = from_stack_1b
  loc_5F06A4: FFree1Ad var_88
  loc_5F06A7: Call Reloj_Timer()
  loc_5F06AC: LitI2_Byte &HFF
  loc_5F06AE: FLdPrThis
  loc_5F06AF: VCallAd Control_ID_Reloj
  loc_5F06B2: FStAdFunc var_88
  loc_5F06B5: FLdPr var_88
  loc_5F06B8: Me.Enabled = from_stack_1b
  loc_5F06BD: FFree1Ad var_88
  loc_5F06C0: FLdPr Me
  loc_5F06C3: MemLdRfVar from_stack_1.global_130
  loc_5F06C6: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_5F06CB: ExitProcHresult
End Function

Private Sub Mediciones_UnknownEvent_8 '62A570
  'Data Table: 44F8E0
  loc_62A3E0: LitI4 &H22
  loc_62A3E5: ImpAdLdRf MemVar_74A170
  loc_62A3E8: Ary1LdI2
  loc_62A3E9: NotI4
  loc_62A3EA: CVarBoolI2 var_108
  loc_62A3EE: LitVarI2 var_B8, 3
  loc_62A3F3: LitI4 1
  loc_62A3F8: ImpAdLdRf MemVar_74BF90
  loc_62A3FB: CVarRef
  loc_62A400: FLdRfVar var_C8
  loc_62A403: ImpAdCallFPR4  = Mid(, , )
  loc_62A408: FLdRfVar var_C8
  loc_62A40B: LitVarStr var_D8, "\\."
  loc_62A410: HardType
  loc_62A411: EqVar var_E8
  loc_62A415: NotVar var_F8
  loc_62A419: AndVar var_118
  loc_62A41D: CBoolVarNull
  loc_62A41F: FFreeVar var_B8 = "": var_C8 = ""
  loc_62A428: BranchF loc_62A431
  loc_62A42B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_62A430: ExitProcHresult
  loc_62A431: LitI2_Byte &H10
  loc_62A433: PopTmpLdAd2 var_11A
  loc_62A436: ImpAdCallI2 Proc_94_7_603DD0()
  loc_62A43B: NotI4
  loc_62A43C: BranchF loc_62A440
  loc_62A43F: ExitProcHresult
  loc_62A440: LitI2_Byte 0
  loc_62A442: ImpAdStI2 MemVar_74C37E
  loc_62A445: FLdRfVar var_11A
  loc_62A448: FLdPr Me
  loc_62A44B: MemLdI2 global_130
  loc_62A44E: from_stack_1v = Proc_117_69_5D765C()
  loc_62A453: FLdI2 var_11A
  loc_62A456: NotI4
  loc_62A457: BranchF loc_62A475
  loc_62A45A: LitVar_Missing var_A8
  loc_62A45D: PopAdLdVar
  loc_62A45E: LitVarI4
  loc_62A466: PopAdLdVar
  loc_62A467: ImpAdLdRf MemVar_74E178
  loc_62A46A: NewIfNullPr frmGNCVoume
  loc_62A46D: frmGNCVoume.Show from_stack_1, from_stack_2
  loc_62A472: Branch loc_62A4AB
  loc_62A475: FLdPr Me
  loc_62A478: MemLdI2 global_130
  loc_62A47B: LitI2_Byte 1
  loc_62A47D: AddI2
  loc_62A47E: ImpAdLdRf MemVar_74E164
  loc_62A481: NewIfNullPr calcmediciones
  loc_62A484: Call calcmediciones.tankPut(from_stack_1v)
  loc_62A489: LitI2_Byte 0
  loc_62A48B: ImpAdLdRf MemVar_74E164
  loc_62A48E: NewIfNullPr calcmediciones
  loc_62A491: Call calcmediciones.ConsultaPut(from_stack_1v)
  loc_62A496: LitVar_Missing var_A8
  loc_62A499: PopAdLdVar
  loc_62A49A: LitVarI2 var_98, 1
  loc_62A49F: PopAdLdVar
  loc_62A4A0: ImpAdLdRf MemVar_74E164
  loc_62A4A3: NewIfNullPr calcmediciones
  loc_62A4A6: calcmediciones.Show from_stack_1, from_stack_2
  loc_62A4AB: ImpAdLdI2 MemVar_74C37E
  loc_62A4AE: NotI4
  loc_62A4AF: BranchF loc_62A56C
  loc_62A4B2: FLdRfVar var_B8
  loc_62A4B5: ImpAdLdRf MemVar_74C37C
  loc_62A4B8: ImpAdLdRf MemVar_74C378
  loc_62A4BB: ImpAdLdRf MemVar_74C374
  loc_62A4BE: FLdPr Me
  loc_62A4C1: MemLdI2 global_130
  loc_62A4C4: LitI2_Byte 1
  loc_62A4C6: AddI2
  loc_62A4C7: CUI1I2
  loc_62A4C9: PopTmpLdAd1
  loc_62A4CD: FLdRfVar var_120
  loc_62A4D0: ImpAdLdRf MemVar_74C760
  loc_62A4D3: NewIfNullPr Formx
  loc_62A4D6: from_stack_1v = Formx.global_4589716Get()
  loc_62A4DB: FLdPr var_120
  loc_62A4DE:  = Formx.Width
  loc_62A4E3: FLdRfVar var_B8
  loc_62A4E6: NotVar var_C8
  loc_62A4EA: CBoolVarNull
  loc_62A4EC: FFree1Ad var_120
  loc_62A4EF: FFree1Var var_B8 = ""
  loc_62A4F2: BranchF loc_62A521
  loc_62A4F5: FLdRfVar var_B8
  loc_62A4F8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_62A4FD: FLdRfVar var_B8
  loc_62A500: CBoolVarNull
  loc_62A502: FFree1Var var_B8 = ""
  loc_62A505: BranchF loc_62A51E
  loc_62A508: ILdRf Me
  loc_62A50B: FStAdNoPop
  loc_62A50F: ImpAdLdRf MemVar_7520D4
  loc_62A512: NewIfNullPr Global
  loc_62A515: Global.Unload from_stack_1
  loc_62A51A: FFree1Ad var_120
  loc_62A51D: ExitProcHresult
  loc_62A51E: Branch loc_62A4B2
  loc_62A521: FLdPr Me
  loc_62A524: MemLdI2 global_130
  loc_62A527: LitI2_Byte 1
  loc_62A529: AddI2
  loc_62A52A: PopTmpLdAd2 var_11A
  loc_62A52D: Call RefreshTankTotals(from_stack_1v)
  loc_62A532: FLdPr Me
  loc_62A535: MemLdI2 global_130
  loc_62A538: LitI2_Byte 1
  loc_62A53A: AddI2
  loc_62A53B: PopTmpLdAd2 var_11A
  loc_62A53E: from_stack_2v = Proc_117_70_6D20EC(from_stack_1v)
  loc_62A543: FLdPr Me
  loc_62A546: MemLdI2 global_130
  loc_62A549: ImpAdLdUI1
  loc_62A54D: CI2UI1
  loc_62A54F: LitI2_Byte 1
  loc_62A551: SubI2
  loc_62A552: LtI2
  loc_62A553: BranchF loc_62A56C
  loc_62A556: FLdPr Me
  loc_62A559: MemLdI2 global_130
  loc_62A55C: LitI2_Byte 1
  loc_62A55E: AddI2
  loc_62A55F: PopTmpLdAd2 var_11A
  loc_62A562: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_62A567: Call Mediciones_UnknownEvent_8()
  loc_62A56C: ExitProcHresult
  loc_62A56D: IStI2 arg_27FE
End Sub

Private Sub Bajas_UnknownEvent_8 '653F18
  'Data Table: 44F8E0
  loc_653C58: FLdRfVar var_86
  loc_653C5B: FLdPr Me
  loc_653C5E: MemLdI2 global_130
  loc_653C61: from_stack_1v = Proc_117_69_5D765C()
  loc_653C66: FLdI2 var_86
  loc_653C69: NotI4
  loc_653C6A: BranchF loc_653C6E
  loc_653C6D: ExitProcHresult
  loc_653C6E: LitI4 7
  loc_653C73: ImpAdLdRf MemVar_74A170
  loc_653C76: Ary1LdI2
  loc_653C77: NotI4
  loc_653C78: CVarBoolI2 var_108
  loc_653C7C: LitVarI2 var_B8, 3
  loc_653C81: LitI4 1
  loc_653C86: ImpAdLdRf MemVar_74BF90
  loc_653C89: CVarRef
  loc_653C8E: FLdRfVar var_C8
  loc_653C91: ImpAdCallFPR4  = Mid(, , )
  loc_653C96: FLdRfVar var_C8
  loc_653C99: LitVarStr var_D8, "\\."
  loc_653C9E: HardType
  loc_653C9F: EqVar var_E8
  loc_653CA3: NotVar var_F8
  loc_653CA7: AndVar var_118
  loc_653CAB: CBoolVarNull
  loc_653CAD: FFreeVar var_B8 = "": var_C8 = ""
  loc_653CB6: BranchF loc_653CBF
  loc_653CB9: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_653CBE: ExitProcHresult
  loc_653CBF: LitI2_Byte &HF
  loc_653CC1: PopTmpLdAd2 var_86
  loc_653CC4: ImpAdCallI2 Proc_94_7_603DD0()
  loc_653CC9: NotI4
  loc_653CCA: BranchF loc_653CCE
  loc_653CCD: ExitProcHresult
  loc_653CCE: FLdPr Me
  loc_653CD1: MemLdI2 global_130
  loc_653CD4: LitI2_Byte 1
  loc_653CD6: AddI2
  loc_653CD7: ImpAdLdUI1
  loc_653CDB: CI2UI1
  loc_653CDD: GtI2
  loc_653CDE: BranchF loc_653CE2
  loc_653CE1: ExitProcHresult
  loc_653CE2: FLdPr Me
  loc_653CE5: MemLdI2 global_130
  loc_653CE8: LitI2_Byte 1
  loc_653CEA: AddI2
  loc_653CEB: ImpAdLdRf MemVar_74E0EC
  loc_653CEE: NewIfNullPr Calculadora
  loc_653CF1: Call Calculadora.tankPut(from_stack_1v)
  loc_653CF6: LitI2_Byte 0
  loc_653CF8: ImpAdLdRf MemVar_74E0EC
  loc_653CFB: NewIfNullPr Calculadora
  loc_653CFE: Call Calculadora.AltaPut(from_stack_1v)
  loc_653D03: FLdRfVar var_1D4
  loc_653D06: LitVar_Missing var_1D0
  loc_653D09: LitVar_Missing var_1B0
  loc_653D0C: LitVar_Missing var_190
  loc_653D0F: LitVar_Missing var_170
  loc_653D12: LitVar_Missing var_150
  loc_653D15: LitVar_Missing var_118
  loc_653D18: LitVar_Missing var_F8
  loc_653D1B: LitVar_Missing var_E8
  loc_653D1E: LitVar_Missing var_C8
  loc_653D21: LitVar_Missing var_B8
  loc_653D24: LitStr "Bajas de Combustible"
  loc_653D27: FStStrCopy var_120
  loc_653D2A: FLdRfVar var_120
  loc_653D2D: LitI4 5
  loc_653D32: PopTmpLdAdStr var_11C
  loc_653D35: LitI2_Byte &HF
  loc_653D37: PopTmpLdAd2 var_86
  loc_653D3A: ImpAdLdRf MemVar_74C7D0
  loc_653D3D: NewIfNullPr clsMsg
  loc_653D40: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_653D45: ILdRf var_1D4
  loc_653D48: ImpAdLdRf MemVar_74E0EC
  loc_653D4B: NewIfNullPr Calculadora
  loc_653D4E: Calculadora.Caption = from_stack_1
  loc_653D53: FFreeStr var_120 = ""
  loc_653D5A: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_653D71: FLdRfVar var_1D4
  loc_653D74: LitVar_Missing var_1D0
  loc_653D77: LitVar_Missing var_1B0
  loc_653D7A: LitVar_Missing var_190
  loc_653D7D: LitVar_Missing var_170
  loc_653D80: LitVar_Missing var_150
  loc_653D83: LitVar_Missing var_118
  loc_653D86: LitVar_Missing var_F8
  loc_653D89: LitVar_Missing var_E8
  loc_653D8C: LitVar_Missing var_C8
  loc_653D8F: LitVar_Missing var_B8
  loc_653D92: LitStr "TANQUE Nº"
  loc_653D95: FStStrCopy var_120
  loc_653D98: FLdRfVar var_120
  loc_653D9B: LitI4 4
  loc_653DA0: PopTmpLdAdStr var_11C
  loc_653DA3: LitI2_Byte &HF
  loc_653DA5: PopTmpLdAd2 var_86
  loc_653DA8: ImpAdLdRf MemVar_74C7D0
  loc_653DAB: NewIfNullPr clsMsg
  loc_653DAE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_653DB3: ILdRf var_1D4
  loc_653DB6: LitStr " "
  loc_653DB9: ConcatStr
  loc_653DBA: FStStrNoPop var_1D8
  loc_653DBD: FLdPr Me
  loc_653DC0: MemLdI2 global_130
  loc_653DC3: LitI2_Byte 1
  loc_653DC5: AddI2
  loc_653DC6: CStrUI1
  loc_653DC8: FStStrNoPop var_1DC
  loc_653DCB: ConcatStr
  loc_653DCC: FStStrNoPop var_1E0
  loc_653DCF: ImpAdLdRf MemVar_74E0EC
  loc_653DD2: NewIfNullPr Calculadora
  loc_653DD5: VCallAd Control_ID_Titulo
  loc_653DD8: FStAdFunc var_1E4
  loc_653DDB: FLdPr var_1E4
  loc_653DDE: Calculadora.Label.Caption = from_stack_1
  loc_653DE3: FFreeStr var_120 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_653DF0: FFree1Ad var_1E4
  loc_653DF3: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_653E0A: FLdRfVar var_120
  loc_653E0D: FLdPr Me
  loc_653E10: MemLdI2 global_130
  loc_653E13: LitI2_Byte 1
  loc_653E15: AddI2
  loc_653E16: CI4UI1
  loc_653E17: ImpAdLdRf MemVar_74C1D8
  loc_653E1A: Ary1LdUI1
  loc_653E1C: CI2UI1
  loc_653E1E: ImpAdLdRf MemVar_74A220
  loc_653E21: NewIfNullPr clsProducts
  loc_653E29: ILdRf var_120
  loc_653E2C: ImpAdLdRf MemVar_74E0EC
  loc_653E2F: NewIfNullPr Calculadora
  loc_653E32: VCallAd Control_ID_Subtitulo
  loc_653E35: FStAdFunc var_1E4
  loc_653E38: FLdPr var_1E4
  loc_653E3B: Calculadora.Label.Caption = from_stack_1
  loc_653E40: FFree1Str var_120
  loc_653E43: FFree1Ad var_1E4
  loc_653E46: LitVar_Missing var_A8
  loc_653E49: PopAdLdVar
  loc_653E4A: LitVarI2 var_98, 1
  loc_653E4F: PopAdLdVar
  loc_653E50: ImpAdLdRf MemVar_74E0EC
  loc_653E53: NewIfNullPr Calculadora
  loc_653E56: Calculadora.Show from_stack_1, from_stack_2
  loc_653E5B: ImpAdLdI2 MemVar_74C37E
  loc_653E5E: LitI2_Byte 0
  loc_653E60: EqI2
  loc_653E61: BranchF loc_653F14
  loc_653E64: FLdRfVar var_B8
  loc_653E67: LitI2_Byte 0
  loc_653E69: PopTmpLdAd2 var_1E6
  loc_653E6C: ImpAdLdFPR4 MemVar_74C370
  loc_653E6F: LitI2_Byte &H64
  loc_653E71: CR8I2
  loc_653E72: MulR8
  loc_653E73: PopTmpLdAdFPR4
  loc_653E77: FLdPr Me
  loc_653E7A: MemLdI2 global_130
  loc_653E7D: LitI2_Byte 1
  loc_653E7F: AddI2
  loc_653E80: CUI1I2
  loc_653E82: PopTmpLdAd1
  loc_653E86: FLdRfVar var_1E4
  loc_653E89: ImpAdLdRf MemVar_74C760
  loc_653E8C: NewIfNullPr Formx
  loc_653E8F: from_stack_1v = Formx.global_4589716Get()
  loc_653E94: FLdPr var_1E4
  loc_653E97: Formx.Top = from_stack_1s
  loc_653E9C: FLdRfVar var_B8
  loc_653E9F: NotVar var_C8
  loc_653EA3: CBoolVarNull
  loc_653EA5: FFree1Ad var_1E4
  loc_653EA8: FFree1Var var_B8 = ""
  loc_653EAB: BranchF loc_653EDA
  loc_653EAE: FLdRfVar var_B8
  loc_653EB1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_653EB6: FLdRfVar var_B8
  loc_653EB9: CBoolVarNull
  loc_653EBB: FFree1Var var_B8 = ""
  loc_653EBE: BranchF loc_653ED7
  loc_653EC1: ILdRf Me
  loc_653EC4: FStAdNoPop
  loc_653EC8: ImpAdLdRf MemVar_7520D4
  loc_653ECB: NewIfNullPr Global
  loc_653ECE: Global.Unload from_stack_1
  loc_653ED3: FFree1Ad var_1E4
  loc_653ED6: ExitProcHresult
  loc_653ED7: Branch loc_653E64
  loc_653EDA: FLdPr Me
  loc_653EDD: MemLdI2 global_130
  loc_653EE0: LitI2_Byte 1
  loc_653EE2: AddI2
  loc_653EE3: PopTmpLdAd2 var_86
  loc_653EE6: Call RefreshTankTotals(from_stack_1v)
  loc_653EEB: FLdPr Me
  loc_653EEE: MemLdI2 global_130
  loc_653EF1: ImpAdLdUI1
  loc_653EF5: CI2UI1
  loc_653EF7: LitI2_Byte 1
  loc_653EF9: SubI2
  loc_653EFA: LtI2
  loc_653EFB: BranchF loc_653F14
  loc_653EFE: FLdPr Me
  loc_653F01: MemLdI2 global_130
  loc_653F04: LitI2_Byte 1
  loc_653F06: AddI2
  loc_653F07: PopTmpLdAd2 var_86
  loc_653F0A: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_653F0F: Call Bajas_UnknownEvent_8()
  loc_653F14: ExitProcHresult
End Sub

Private Sub lblTituloProducto_Click(arg_C) '5CA3A0
  'Data Table: 44F8E0
  loc_5CA394: ILdRf arg_C
  loc_5CA397: Call Vacio_Click()
  loc_5CA39C: ExitProcHresult
  loc_5CA39D: FStR4 var_98
End Sub

Private Sub TestTimer_Timer() '5DBD78
  'Data Table: 44F8E0
  loc_5DBD38: LitI2_Byte 0
  loc_5DBD3A: FLdPrThis
  loc_5DBD3B: VCallAd Control_ID_TestTimer
  loc_5DBD3E: FStAdFunc var_88
  loc_5DBD41: FLdPr var_88
  loc_5DBD44: Me.Enabled = from_stack_1b
  loc_5DBD49: FFree1Ad var_88
  loc_5DBD4C: LitI2_Byte 0
  loc_5DBD4E: FLdPrThis
  loc_5DBD4F: VCallAd Control_ID_Reloj
  loc_5DBD52: FStAdFunc var_88
  loc_5DBD55: FLdPr var_88
  loc_5DBD58: Me.Enabled = from_stack_1b
  loc_5DBD5D: FFree1Ad var_88
  loc_5DBD60: ILdRf Me
  loc_5DBD63: FStAdNoPop
  loc_5DBD67: ImpAdLdRf MemVar_7520D4
  loc_5DBD6A: NewIfNullPr Global
  loc_5DBD6D: Global.Unload from_stack_1
  loc_5DBD72: FFree1Ad var_88
  loc_5DBD75: ExitProcHresult
  loc_5DBD76: AryLdPr
End Sub

Private Sub Agua_Click(arg_C) '5CA8C8
  'Data Table: 44F8E0
  loc_5CA8BC: ILdRf arg_C
  loc_5CA8BF: Call Vacio_Click()
  loc_5CA8C4: ExitProcHresult
End Sub

Private Sub lblTituloVacio_Click(arg_C) '5CA364
  'Data Table: 44F8E0
  loc_5CA358: ILdRf arg_C
  loc_5CA35B: Call Vacio_Click()
  loc_5CA360: ExitProcHresult
  loc_5CA361: FFreeVar var_FFFFFF98 = ""
End Sub

Private Sub lblTituloAgua_Click(arg_C) '5CA3DC
  'Data Table: 44F8E0
  loc_5CA3D0: ILdRf arg_C
  loc_5CA3D3: Call Vacio_Click()
  loc_5CA3D8: ExitProcHresult
End Sub

Private Sub Vacio_Click() '5C81B0
  'Data Table: 44F8E0
  loc_5C81AC: ExitProcHresult
End Sub

Private Function lblTankStatus_UnknownEvent_8(arg_C) '5CA544
  'Data Table: 44F8E0
  loc_5CA538: ILdRf arg_C
  loc_5CA53B: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_5CA540: ExitProcHresult
  loc_5CA541: FLdRfVar var_DC
End Function

Private Sub imgSemaforoVerde_Click() '5DA8EC
  'Data Table: 44F8E0
  loc_5DA8B4: FLdPrThis
  loc_5DA8B5: VCallAd Control_ID_sscForzarMedicion
  loc_5DA8B8: FStAdFunc var_88
  loc_5DA8BB: FLdPr var_88
  loc_5DA8BE: LateIdLdVar var_98 DispID_13 -32767
  loc_5DA8C5: CBoolVar
  loc_5DA8C7: LitI2_Byte &HFF
  loc_5DA8C9: EqI2
  loc_5DA8CA: FFree1Ad var_88
  loc_5DA8CD: FFree1Var var_98 = ""
  loc_5DA8D0: BranchF loc_5DA8E8
  loc_5DA8D3: LitVar_Missing var_B8
  loc_5DA8D6: PopAdLdVar
  loc_5DA8D7: LitVarI2 var_A8, 1
  loc_5DA8DC: PopAdLdVar
  loc_5DA8DD: ImpAdLdRf MemVar_74DBB8
  loc_5DA8E0: NewIfNullPr frmAlarmasTanques
  loc_5DA8E3: frmAlarmasTanques.Show from_stack_1, from_stack_2
  loc_5DA8E8: ExitProcHresult
End Sub

Private Sub imgSemaforoRojo_Click(Index As Integer) '5D76BC
  'Data Table: 44F8E0
  loc_5D7694: FLdPrThis
  loc_5D7695: VCallAd Control_ID_sscForzarMedicion
  loc_5D7698: FStAdFunc var_88
  loc_5D769B: FLdPr var_88
  loc_5D769E: LateIdLdVar var_98 DispID_13 -32767
  loc_5D76A5: CBoolVar
  loc_5D76A7: LitI2_Byte &HFF
  loc_5D76A9: EqI2
  loc_5D76AA: FFree1Ad var_88
  loc_5D76AD: FFree1Var var_98 = ""
  loc_5D76B0: BranchF loc_5D76BB
  loc_5D76B3: ILdRf Index
  loc_5D76B6: Call imgSemaforoVerde_Click()
  loc_5D76BB: ExitProcHresult
End Sub

Private Sub cmdSilencio_UnknownEvent_8 '5DF658
  'Data Table: 44F8E0
  loc_5DF608: FLdRfVar var_8A
  loc_5DF60B: FLdRfVar var_88
  loc_5DF60E: ImpAdLdRf MemVar_74C760
  loc_5DF611: NewIfNullPr Formx
  loc_5DF614: from_stack_1v = Formx.global_4589716Get()
  loc_5DF619: FLdPr var_88
  loc_5DF61C: Formx.PaintPicture from_stack_1s, from_stack_2s, from_stack_3, from_stack_4, from_stack_5, from_stack_6, from_stack_7, from_stack_8, from_stack_9
  loc_5DF621: FLdI2 var_8A
  loc_5DF624: NotI4
  loc_5DF625: FFree1Ad var_88
  loc_5DF628: BranchF loc_5DF657
  loc_5DF62B: FLdRfVar var_9C
  loc_5DF62E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DF633: FLdRfVar var_9C
  loc_5DF636: CBoolVarNull
  loc_5DF638: FFree1Var var_9C = ""
  loc_5DF63B: BranchF loc_5DF654
  loc_5DF63E: ILdRf Me
  loc_5DF641: FStAdNoPop
  loc_5DF645: ImpAdLdRf MemVar_7520D4
  loc_5DF648: NewIfNullPr Global
  loc_5DF64B: Global.Unload from_stack_1
  loc_5DF650: FFree1Ad var_88
  loc_5DF653: ExitProcHresult
  loc_5DF654: Branch loc_5DF608
  loc_5DF657: ExitProcHresult
End Sub

Private Sub sscDescarga_UnknownEvent_8 '6EBB24
  'Data Table: 44F8E0
  loc_6EADDC: LitI2_Byte &HFF
  loc_6EADDE: FLdPr Me
  loc_6EADE1: MemStI2 global_344
  loc_6EADE4: FLdRfVar var_228
  loc_6EADE7: LitVar_Missing var_224
  loc_6EADEA: LitVar_Missing var_204
  loc_6EADED: LitVar_Missing var_1E4
  loc_6EADF0: LitVar_Missing var_1C4
  loc_6EADF3: LitVar_Missing var_1A4
  loc_6EADF6: LitVar_Missing var_184
  loc_6EADF9: LitVar_Missing var_164
  loc_6EADFC: LitVar_Missing var_144
  loc_6EADFF: LitVar_Missing var_124
  loc_6EAE02: LitVar_Missing var_104
  loc_6EAE05: LitStr "¿Realmente desea continuar con esta operación?"
  loc_6EAE08: FStStrCopy var_E4
  loc_6EAE0B: FLdRfVar var_E4
  loc_6EAE0E: LitI4 &H20
  loc_6EAE13: PopTmpLdAdStr var_E0
  loc_6EAE16: LitI2_Byte &HF
  loc_6EAE18: PopTmpLdAd2 var_DA
  loc_6EAE1B: ImpAdLdRf MemVar_74C7D0
  loc_6EAE1E: NewIfNullPr clsMsg
  loc_6EAE21: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EAE26: LitVar_Missing var_298
  loc_6EAE29: LitVar_Missing var_278
  loc_6EAE2C: LitVarStr var_248, "Respuesta del usuario."
  loc_6EAE31: FStVarCopyObj var_258
  loc_6EAE34: FLdRfVar var_258
  loc_6EAE37: LitI4 &H41
  loc_6EAE3C: FLdZeroAd var_228
  loc_6EAE3F: CVarStr var_238
  loc_6EAE42: ImpAdCallI2 MsgBox(, , , , )
  loc_6EAE47: FStR4 var_D4
  loc_6EAE4A: FFree1Str var_E4
  loc_6EAE4D: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_6EAE6C: ILdRf var_D4
  loc_6EAE6F: LitI4 2
  loc_6EAE74: EqI4
  loc_6EAE75: BranchF loc_6EAE79
  loc_6EAE78: ExitProcHresult
  loc_6EAE79: LitI2_Byte 0
  loc_6EAE7B: ImpAdLdRf MemVar_74DE58
  loc_6EAE7E: NewIfNullPr Remito
  loc_6EAE81: Call Remito.FlagPut(from_stack_1v)
  loc_6EAE86: LitVarI2 var_104, 1
  loc_6EAE8B: LitI4 &HD
  loc_6EAE90: ImpAdLdI4 MemVar_74BEAC
  loc_6EAE93: ImpAdCallI2 Mid$(, , )
  loc_6EAE98: FStStrNoPop var_E4
  loc_6EAE9B: LitStr "1"
  loc_6EAE9E: EqStr
  loc_6EAEA0: FLdPrThis
  loc_6EAEA1: VCallAd Control_ID_
  loc_6EAEA4: FStAdFunc var_29C
  loc_6EAEA7: FLdPr var_29C
  loc_6EAEAA: LateIdLdVar var_124 DispID_-518 -1
  loc_6EAEB1: CStrVarTmp
  loc_6EAEB2: FStStrNoPop var_228
  loc_6EAEB5: FLdPr Me
  loc_6EAEB8: MemLdStr strStartCharge
  loc_6EAEBB: EqStr
  loc_6EAEBD: AndI4
  loc_6EAEBE: FFreeStr var_E4 = ""
  loc_6EAEC5: FFree1Ad var_29C
  loc_6EAEC8: FFreeVar var_104 = ""
  loc_6EAECF: BranchF loc_6EAEF7
  loc_6EAED2: LitI2_Byte &HFF
  loc_6EAED4: ImpAdLdRf MemVar_74DE58
  loc_6EAED7: NewIfNullPr Remito
  loc_6EAEDA: Call Remito.FlagPut(from_stack_1v)
  loc_6EAEDF: LitVar_Missing var_114
  loc_6EAEE2: PopAdLdVar
  loc_6EAEE3: LitVarI4
  loc_6EAEEB: PopAdLdVar
  loc_6EAEEC: ImpAdLdRf MemVar_74DE58
  loc_6EAEEF: NewIfNullPr Remito
  loc_6EAEF2: Remito.Show from_stack_1, from_stack_2
  loc_6EAEF7: FLdPrThis
  loc_6EAEF8: VCallAd Control_ID_sscDescarga
  loc_6EAEFB: FStAdFunc var_29C
  loc_6EAEFE: FLdPr var_29C
  loc_6EAF01: LateIdLdVar var_104 DispID_-518 -1
  loc_6EAF08: CStrVarTmp
  loc_6EAF09: FStStrNoPop var_E4
  loc_6EAF0C: FLdPr Me
  loc_6EAF0F: MemLdStr strStartCharge
  loc_6EAF12: EqStr
  loc_6EAF14: FFree1Str var_E4
  loc_6EAF17: FFree1Ad var_29C
  loc_6EAF1A: FFree1Var var_104 = ""
  loc_6EAF1D: BranchF loc_6EAF23
  loc_6EAF20: Branch loc_6EB01F
  loc_6EAF23: FLdRfVar var_104
  loc_6EAF26: FLdRfVar var_CC
  loc_6EAF29: FLdRfVar var_29C
  loc_6EAF2C: ImpAdLdRf MemVar_74C760
  loc_6EAF2F: NewIfNullPr Formx
  loc_6EAF32: from_stack_1v = Formx.global_4589716Get()
  loc_6EAF37: FLdPr var_29C
  loc_6EAF3A: Formx.TextWidth from_stack_1
  loc_6EAF3F: FLdRfVar var_104
  loc_6EAF42: NotVar var_124
  loc_6EAF46: CBoolVarNull
  loc_6EAF48: FFree1Ad var_29C
  loc_6EAF4B: FFree1Var var_104 = ""
  loc_6EAF4E: BranchF loc_6EAF7D
  loc_6EAF51: FLdRfVar var_104
  loc_6EAF54: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6EAF59: FLdRfVar var_104
  loc_6EAF5C: CBoolVarNull
  loc_6EAF5E: FFree1Var var_104 = ""
  loc_6EAF61: BranchF loc_6EAF7A
  loc_6EAF64: ILdRf Me
  loc_6EAF67: FStAdNoPop
  loc_6EAF6B: ImpAdLdRf MemVar_7520D4
  loc_6EAF6E: NewIfNullPr Global
  loc_6EAF71: Global.Unload from_stack_1
  loc_6EAF76: FFree1Ad var_29C
  loc_6EAF79: ExitProcHresult
  loc_6EAF7A: Branch loc_6EAF23
  loc_6EAF7D: ILdRf var_CC
  loc_6EAF80: ImpAdCallFPR4 push Val()
  loc_6EAF85: CBoolR4
  loc_6EAF87: BranchF loc_6EB01F
  loc_6EAF8A: FLdRfVar var_228
  loc_6EAF8D: LitVar_Missing var_224
  loc_6EAF90: LitVar_Missing var_204
  loc_6EAF93: LitVar_Missing var_1E4
  loc_6EAF96: LitVar_Missing var_1C4
  loc_6EAF99: LitVar_Missing var_1A4
  loc_6EAF9C: LitVar_Missing var_184
  loc_6EAF9F: LitVar_Missing var_164
  loc_6EAFA2: LitVar_Missing var_144
  loc_6EAFA5: LitVar_Missing var_124
  loc_6EAFA8: LitVar_Missing var_104
  loc_6EAFAB: LitStr "Hay tanques en situación incremental.¿Desea  continuar de todas maneras?"
  loc_6EAFAE: FStStrCopy var_E4
  loc_6EAFB1: FLdRfVar var_E4
  loc_6EAFB4: LitI4 &H21
  loc_6EAFB9: PopTmpLdAdStr var_E0
  loc_6EAFBC: LitI2_Byte &HF
  loc_6EAFBE: PopTmpLdAd2 var_DA
  loc_6EAFC1: ImpAdLdRf MemVar_74C7D0
  loc_6EAFC4: NewIfNullPr clsMsg
  loc_6EAFC7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EAFCC: LitVar_Missing var_298
  loc_6EAFCF: LitVar_Missing var_278
  loc_6EAFD2: LitVarStr var_248, "Información para el usuario."
  loc_6EAFD7: FStVarCopyObj var_258
  loc_6EAFDA: FLdRfVar var_258
  loc_6EAFDD: LitI4 &H44
  loc_6EAFE2: FLdZeroAd var_228
  loc_6EAFE5: CVarStr var_238
  loc_6EAFE8: ImpAdCallI2 MsgBox(, , , , )
  loc_6EAFED: FStR4 var_D4
  loc_6EAFF0: FFree1Str var_E4
  loc_6EAFF3: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_6EB012: ILdRf var_D4
  loc_6EB015: LitI4 7
  loc_6EB01A: EqI4
  loc_6EB01B: BranchF loc_6EB01F
  loc_6EB01E: ExitProcHresult
  loc_6EB01F: FLdRfVar var_104
  loc_6EB022: FLdPr Me
  loc_6EB025: MemLdRfVar from_stack_1.global_144
  loc_6EB028: FLdRfVar var_29C
  loc_6EB02B: ImpAdLdRf MemVar_74C760
  loc_6EB02E: NewIfNullPr Formx
  loc_6EB031: from_stack_1v = Formx.global_4589716Get()
  loc_6EB036: FLdPr var_29C
  loc_6EB039:  = Formx.KeyPreview
  loc_6EB03E: FLdRfVar var_104
  loc_6EB041: NotVar var_124
  loc_6EB045: CBoolVarNull
  loc_6EB047: FFree1Ad var_29C
  loc_6EB04A: FFree1Var var_104 = ""
  loc_6EB04D: BranchF loc_6EB07C
  loc_6EB050: FLdRfVar var_104
  loc_6EB053: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6EB058: FLdRfVar var_104
  loc_6EB05B: CBoolVarNull
  loc_6EB05D: FFree1Var var_104 = ""
  loc_6EB060: BranchF loc_6EB079
  loc_6EB063: ILdRf Me
  loc_6EB066: FStAdNoPop
  loc_6EB06A: ImpAdLdRf MemVar_7520D4
  loc_6EB06D: NewIfNullPr Global
  loc_6EB070: Global.Unload from_stack_1
  loc_6EB075: FFree1Ad var_29C
  loc_6EB078: ExitProcHresult
  loc_6EB079: Branch loc_6EB01F
  loc_6EB07C: FLdPr Me
  loc_6EB07F: MemLdStr global_144
  loc_6EB082: LitStr "0"
  loc_6EB085: EqStr
  loc_6EB087: BranchF loc_6EBA51
  loc_6EB08A: LitI2_Byte 0
  loc_6EB08C: FStI2 var_88
  loc_6EB08F: LitI2_Byte 0
  loc_6EB091: FStI2 var_8A
  loc_6EB094: LitI2_Byte 1
  loc_6EB096: FLdRfVar var_86
  loc_6EB099: ImpAdLdUI1
  loc_6EB09D: CI2UI1
  loc_6EB09F: ForI2 var_2A0
  loc_6EB0A5: FLdI2 var_86
  loc_6EB0A8: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6EB0AD: NotI4
  loc_6EB0AE: BranchF loc_6EB14C
  loc_6EB0B1: LitVarI2 var_104, 1
  loc_6EB0B6: FLdI2 var_86
  loc_6EB0B9: CI4UI1
  loc_6EB0BA: FLdPr Me
  loc_6EB0BD: MemLdRfVar from_stack_1.global_136
  loc_6EB0C0: CVarRef
  loc_6EB0C5: FLdRfVar var_124
  loc_6EB0C8: ImpAdCallFPR4  = Mid(, , )
  loc_6EB0CD: FLdRfVar var_124
  loc_6EB0D0: CStrVarVal var_E4
  loc_6EB0D4: ImpAdCallI2 Asc()
  loc_6EB0D9: LitI2_Byte 1
  loc_6EB0DB: AndI4
  loc_6EB0DC: FFree1Str var_E4
  loc_6EB0DF: FFreeVar var_104 = ""
  loc_6EB0E6: BranchF loc_6EB0F2
  loc_6EB0E9: FLdI2 var_88
  loc_6EB0EC: LitI2_Byte 1
  loc_6EB0EE: AddI2
  loc_6EB0EF: FStI2 var_88
  loc_6EB0F2: FLdI2 var_86
  loc_6EB0F5: CI4UI1
  loc_6EB0F6: LitI4 7
  loc_6EB0FB: ImpAdLdRf MemVar_74A020
  loc_6EB0FE: AryLdPr
  loc_6EB101: MemLdI2 global_0
  loc_6EB104: BranchF loc_6EB11F
  loc_6EB107: LitI2_Byte &HFF
  loc_6EB109: FStI2 var_8A
  loc_6EB10C: LitI2_Byte &HFF
  loc_6EB10E: FLdI2 var_86
  loc_6EB111: CI4UI1
  loc_6EB112: FLdRfVar var_A4
  loc_6EB115: Ary1StI2
  loc_6EB116: FLdI2 var_BE
  loc_6EB119: LitI2_Byte 1
  loc_6EB11B: AddI2
  loc_6EB11C: FStI2 var_BE
  loc_6EB11F: FLdI2 var_86
  loc_6EB122: CI4UI1
  loc_6EB123: LitI4 4
  loc_6EB128: ImpAdLdRf MemVar_74A020
  loc_6EB12B: AryLdPr
  loc_6EB12E: MemLdI2 global_0
  loc_6EB131: BranchF loc_6EB14C
  loc_6EB134: LitI2_Byte &HFF
  loc_6EB136: FStI2 var_8A
  loc_6EB139: LitI2_Byte &HFF
  loc_6EB13B: FLdI2 var_86
  loc_6EB13E: CI4UI1
  loc_6EB13F: FLdRfVar var_BC
  loc_6EB142: Ary1StI2
  loc_6EB143: FLdI2 var_C0
  loc_6EB146: LitI2_Byte 1
  loc_6EB148: AddI2
  loc_6EB149: FStI2 var_C0
  loc_6EB14C: FLdRfVar var_86
  loc_6EB14F: NextI2 var_2A0, loc_6EB0A5
  loc_6EB154: FLdI2 var_88
  loc_6EB157: ImpAdLdUI1
  loc_6EB15B: CI2UI1
  loc_6EB15D: EqI2
  loc_6EB15E: BranchF loc_6EB1E5
  loc_6EB161: FLdRfVar var_228
  loc_6EB164: LitVar_Missing var_224
  loc_6EB167: LitVar_Missing var_204
  loc_6EB16A: LitVar_Missing var_1E4
  loc_6EB16D: LitVar_Missing var_1C4
  loc_6EB170: LitVar_Missing var_1A4
  loc_6EB173: LitVar_Missing var_184
  loc_6EB176: LitVar_Missing var_164
  loc_6EB179: LitVar_Missing var_144
  loc_6EB17C: LitVar_Missing var_124
  loc_6EB17F: LitVar_Missing var_104
  loc_6EB182: LitStr "Todos los tanques se encuentran con error. No es posible comenzar una descarga de camión cisterna bajos estas condiciones."
  loc_6EB185: FStStrCopy var_E4
  loc_6EB188: FLdRfVar var_E4
  loc_6EB18B: LitI4 &H22
  loc_6EB190: PopTmpLdAdStr var_E0
  loc_6EB193: LitI2_Byte &HF
  loc_6EB195: PopTmpLdAd2 var_DA
  loc_6EB198: ImpAdLdRf MemVar_74C7D0
  loc_6EB19B: NewIfNullPr clsMsg
  loc_6EB19E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB1A3: LitVar_Missing var_278
  loc_6EB1A6: LitVar_Missing var_258
  loc_6EB1A9: FLdPr Me
  loc_6EB1AC: MemLdRfVar from_stack_1.strStartCharge
  loc_6EB1AF: CVarRef
  loc_6EB1B4: LitI4 &H10
  loc_6EB1B9: FLdZeroAd var_228
  loc_6EB1BC: CVarStr var_238
  loc_6EB1BF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6EB1C4: FFree1Str var_E4
  loc_6EB1C7: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_238 = "": var_258 = ""
  loc_6EB1E4: ExitProcHresult
  loc_6EB1E5: FLdRfVar var_228
  loc_6EB1E8: LitVar_Missing var_224
  loc_6EB1EB: LitVar_Missing var_204
  loc_6EB1EE: LitVar_Missing var_1E4
  loc_6EB1F1: LitVar_Missing var_1C4
  loc_6EB1F4: LitVar_Missing var_1A4
  loc_6EB1F7: LitVar_Missing var_184
  loc_6EB1FA: LitVar_Missing var_164
  loc_6EB1FD: LitVar_Missing var_144
  loc_6EB200: LitVar_Missing var_124
  loc_6EB203: LitVar_Missing var_104
  loc_6EB206: LitStr "Existen tanque(s) en estado de error."
  loc_6EB209: FStStrCopy var_E4
  loc_6EB20C: FLdRfVar var_E4
  loc_6EB20F: LitI4 &H23
  loc_6EB214: PopTmpLdAdStr var_E0
  loc_6EB217: LitI2_Byte &HF
  loc_6EB219: PopTmpLdAd2 var_DA
  loc_6EB21C: ImpAdLdRf MemVar_74C7D0
  loc_6EB21F: NewIfNullPr clsMsg
  loc_6EB222: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB227: ILdRf var_228
  loc_6EB22A: FLdPr Me
  loc_6EB22D: MemStStrCopy
  loc_6EB231: FFreeStr var_E4 = ""
  loc_6EB238: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB24F: FLdRfVar var_228
  loc_6EB252: LitVar_Missing var_224
  loc_6EB255: LitVar_Missing var_204
  loc_6EB258: LitVar_Missing var_1E4
  loc_6EB25B: LitVar_Missing var_1C4
  loc_6EB25E: LitVar_Missing var_1A4
  loc_6EB261: LitVar_Missing var_184
  loc_6EB264: LitVar_Missing var_164
  loc_6EB267: LitVar_Missing var_144
  loc_6EB26A: LitVar_Missing var_124
  loc_6EB26D: LitVar_Missing var_104
  loc_6EB270: LitStr "Para asegurar la exactitud del reporte de camión cisterna, "
  loc_6EB273: FStStrCopy var_E4
  loc_6EB276: FLdRfVar var_E4
  loc_6EB279: LitI4 &H24
  loc_6EB27E: PopTmpLdAdStr var_E0
  loc_6EB281: LitI2_Byte &HF
  loc_6EB283: PopTmpLdAd2 var_DA
  loc_6EB286: ImpAdLdRf MemVar_74C7D0
  loc_6EB289: NewIfNullPr clsMsg
  loc_6EB28C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB291: ILdRf var_228
  loc_6EB294: FLdPr Me
  loc_6EB297: MemStStrCopy
  loc_6EB29B: FFreeStr var_E4 = ""
  loc_6EB2A2: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB2B9: FLdRfVar var_228
  loc_6EB2BC: LitVar_Missing var_224
  loc_6EB2BF: LitVar_Missing var_204
  loc_6EB2C2: LitVar_Missing var_1E4
  loc_6EB2C5: LitVar_Missing var_1C4
  loc_6EB2C8: LitVar_Missing var_1A4
  loc_6EB2CB: LitVar_Missing var_184
  loc_6EB2CE: LitVar_Missing var_164
  loc_6EB2D1: LitVar_Missing var_144
  loc_6EB2D4: LitVar_Missing var_124
  loc_6EB2D7: LitVar_Missing var_104
  loc_6EB2DA: LitStr "verifique que el stock inicial de los tanques sea correcto."
  loc_6EB2DD: FStStrCopy var_E4
  loc_6EB2E0: FLdRfVar var_E4
  loc_6EB2E3: LitI4 &H25
  loc_6EB2E8: PopTmpLdAdStr var_E0
  loc_6EB2EB: LitI2_Byte &HF
  loc_6EB2ED: PopTmpLdAd2 var_DA
  loc_6EB2F0: ImpAdLdRf MemVar_74C7D0
  loc_6EB2F3: NewIfNullPr clsMsg
  loc_6EB2F6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB2FB: ILdRf var_228
  loc_6EB2FE: FLdPr Me
  loc_6EB301: MemStStrCopy
  loc_6EB305: FFreeStr var_E4 = ""
  loc_6EB30C: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB323: FLdRfVar var_228
  loc_6EB326: LitVar_Missing var_224
  loc_6EB329: LitVar_Missing var_204
  loc_6EB32C: LitVar_Missing var_1E4
  loc_6EB32F: LitVar_Missing var_1C4
  loc_6EB332: LitVar_Missing var_1A4
  loc_6EB335: LitVar_Missing var_184
  loc_6EB338: LitVar_Missing var_164
  loc_6EB33B: LitVar_Missing var_144
  loc_6EB33E: LitVar_Missing var_124
  loc_6EB341: LitVar_Missing var_104
  loc_6EB344: LitStr "¿Está seguro que desea comenzar la descarga con los valores que tiene cargados hasta el momento?"
  loc_6EB347: FStStrCopy var_E4
  loc_6EB34A: FLdRfVar var_E4
  loc_6EB34D: LitI4 &H26
  loc_6EB352: PopTmpLdAdStr var_E0
  loc_6EB355: LitI2_Byte &HF
  loc_6EB357: PopTmpLdAd2 var_DA
  loc_6EB35A: ImpAdLdRf MemVar_74C7D0
  loc_6EB35D: NewIfNullPr clsMsg
  loc_6EB360: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB365: ILdRf var_228
  loc_6EB368: FLdPr Me
  loc_6EB36B: MemStStrCopy
  loc_6EB36F: FFreeStr var_E4 = ""
  loc_6EB376: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB38D: FLdI2 var_88
  loc_6EB390: LitI2_Byte 0
  loc_6EB392: GtI2
  loc_6EB393: BranchF loc_6EB448
  loc_6EB396: LitI4 &HA
  loc_6EB39B: FLdRfVar var_104
  loc_6EB39E: ImpAdCallFPR4  = Chr()
  loc_6EB3A3: LitI4 &HA
  loc_6EB3A8: FLdRfVar var_184
  loc_6EB3AB: ImpAdCallFPR4  = Chr()
  loc_6EB3B0: LitI4 &HA
  loc_6EB3B5: FLdRfVar var_1C4
  loc_6EB3B8: ImpAdCallFPR4  = Chr()
  loc_6EB3BD: LitVar_Missing var_238
  loc_6EB3C0: LitVar_Missing var_224
  loc_6EB3C3: FLdPr Me
  loc_6EB3C6: MemLdRfVar from_stack_1.strStartCharge
  loc_6EB3C9: CVarRef
  loc_6EB3CE: LitI4 &H124
  loc_6EB3D3: FLdPr Me
  loc_6EB3D6: MemLdStr strMsgErr
  loc_6EB3D9: CVarStr var_F4
  loc_6EB3DC: FLdRfVar var_104
  loc_6EB3DF: ConcatVar var_124
  loc_6EB3E3: FLdPr Me
  loc_6EB3E6: MemLdStr strMsgErr1
  loc_6EB3E9: CVarStr var_114
  loc_6EB3EC: ConcatVar var_144
  loc_6EB3F0: FLdPr Me
  loc_6EB3F3: MemLdStr strMsgErr2
  loc_6EB3F6: CVarStr var_134
  loc_6EB3F9: ConcatVar var_164
  loc_6EB3FD: FLdRfVar var_184
  loc_6EB400: ConcatVar var_1A4
  loc_6EB404: FLdRfVar var_1C4
  loc_6EB407: ConcatVar var_1E4
  loc_6EB40B: FLdPr Me
  loc_6EB40E: MemLdStr strMsgErr3
  loc_6EB411: CVarStr var_154
  loc_6EB414: ConcatVar var_204
  loc_6EB418: ImpAdCallI2 MsgBox(, , , , )
  loc_6EB41D: CI2I4
  loc_6EB41E: FStI2 var_CE
  loc_6EB421: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_6EB43A: FLdI2 var_CE
  loc_6EB43D: CI4UI1
  loc_6EB43E: LitI4 7
  loc_6EB443: EqI4
  loc_6EB444: BranchF loc_6EB448
  loc_6EB447: ExitProcHresult
  loc_6EB448: FLdRfVar var_228
  loc_6EB44B: LitVar_Missing var_224
  loc_6EB44E: LitVar_Missing var_204
  loc_6EB451: LitVar_Missing var_1E4
  loc_6EB454: LitVar_Missing var_1C4
  loc_6EB457: LitVar_Missing var_1A4
  loc_6EB45A: LitVar_Missing var_184
  loc_6EB45D: LitVar_Missing var_164
  loc_6EB460: LitVar_Missing var_144
  loc_6EB463: LitVar_Missing var_124
  loc_6EB466: LitVar_Missing var_104
  loc_6EB469: LitStr "El tanque "
  loc_6EB46C: FStStrCopy var_E4
  loc_6EB46F: FLdRfVar var_E4
  loc_6EB472: LitI4 &H27
  loc_6EB477: PopTmpLdAdStr var_E0
  loc_6EB47A: LitI2_Byte &HF
  loc_6EB47C: PopTmpLdAd2 var_DA
  loc_6EB47F: ImpAdLdRf MemVar_74C7D0
  loc_6EB482: NewIfNullPr clsMsg
  loc_6EB485: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB48A: ILdRf var_228
  loc_6EB48D: FLdPr Me
  loc_6EB490: MemStStrCopy
  loc_6EB494: FFreeStr var_E4 = ""
  loc_6EB49B: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB4B2: FLdRfVar var_228
  loc_6EB4B5: LitVar_Missing var_224
  loc_6EB4B8: LitVar_Missing var_204
  loc_6EB4BB: LitVar_Missing var_1E4
  loc_6EB4BE: LitVar_Missing var_1C4
  loc_6EB4C1: LitVar_Missing var_1A4
  loc_6EB4C4: LitVar_Missing var_184
  loc_6EB4C7: LitVar_Missing var_164
  loc_6EB4CA: LitVar_Missing var_144
  loc_6EB4CD: LitVar_Missing var_124
  loc_6EB4D0: LitVar_Missing var_104
  loc_6EB4D3: LitStr " está con riesgo de sobrellenado."
  loc_6EB4D6: FStStrCopy var_E4
  loc_6EB4D9: FLdRfVar var_E4
  loc_6EB4DC: LitI4 &H28
  loc_6EB4E1: PopTmpLdAdStr var_E0
  loc_6EB4E4: LitI2_Byte &HF
  loc_6EB4E6: PopTmpLdAd2 var_DA
  loc_6EB4E9: ImpAdLdRf MemVar_74C7D0
  loc_6EB4EC: NewIfNullPr clsMsg
  loc_6EB4EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB4F4: ILdRf var_228
  loc_6EB4F7: FLdPr Me
  loc_6EB4FA: MemStStrCopy
  loc_6EB4FE: FFreeStr var_E4 = ""
  loc_6EB505: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB51C: FLdRfVar var_228
  loc_6EB51F: LitVar_Missing var_224
  loc_6EB522: LitVar_Missing var_204
  loc_6EB525: LitVar_Missing var_1E4
  loc_6EB528: LitVar_Missing var_1C4
  loc_6EB52B: LitVar_Missing var_1A4
  loc_6EB52E: LitVar_Missing var_184
  loc_6EB531: LitVar_Missing var_164
  loc_6EB534: LitVar_Missing var_144
  loc_6EB537: LitVar_Missing var_124
  loc_6EB53A: LitVar_Missing var_104
  loc_6EB53D: LitStr " está con nivel alto de producto."
  loc_6EB540: FStStrCopy var_E4
  loc_6EB543: FLdRfVar var_E4
  loc_6EB546: LitI4 &H2A
  loc_6EB54B: PopTmpLdAdStr var_E0
  loc_6EB54E: LitI2_Byte &HF
  loc_6EB550: PopTmpLdAd2 var_DA
  loc_6EB553: ImpAdLdRf MemVar_74C7D0
  loc_6EB556: NewIfNullPr clsMsg
  loc_6EB559: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB55E: ILdRf var_228
  loc_6EB561: FLdPr Me
  loc_6EB564: MemStStrCopy
  loc_6EB568: FFreeStr var_E4 = ""
  loc_6EB56F: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB586: FLdI2 var_8A
  loc_6EB589: BranchF loc_6EB9BA
  loc_6EB58C: FLdI2 var_C0
  loc_6EB58F: FStI2 var_2A2
  loc_6EB592: FLdI2 var_2A2
  loc_6EB595: LitI2_Byte 0
  loc_6EB597: EqI2
  loc_6EB598: BranchF loc_6EB59E
  loc_6EB59B: Branch loc_6EB7A6
  loc_6EB59E: FLdI2 var_2A2
  loc_6EB5A1: LitI2_Byte 1
  loc_6EB5A3: EqI2
  loc_6EB5A4: BranchF loc_6EB62D
  loc_6EB5A7: LitI2_Byte 1
  loc_6EB5A9: FLdRfVar var_86
  loc_6EB5AC: ImpAdLdUI1
  loc_6EB5B0: CI2UI1
  loc_6EB5B2: ForI2 var_2A6
  loc_6EB5B8: FLdI2 var_86
  loc_6EB5BB: CI4UI1
  loc_6EB5BC: FLdRfVar var_BC
  loc_6EB5BF: Ary1LdI2
  loc_6EB5C0: BranchF loc_6EB622
  loc_6EB5C3: FLdPr Me
  loc_6EB5C6: MemLdStr strMsgDef
  loc_6EB5C9: FLdI2 var_86
  loc_6EB5CC: CStrUI1
  loc_6EB5CE: FStStrNoPop var_E4
  loc_6EB5D1: ConcatStr
  loc_6EB5D2: FStStrNoPop var_228
  loc_6EB5D5: FLdPr Me
  loc_6EB5D8: MemLdStr strMsgDef1
  loc_6EB5DB: ConcatStr
  loc_6EB5DC: CVarStr var_124
  loc_6EB5DF: LitI4 &HA
  loc_6EB5E4: FLdRfVar var_104
  loc_6EB5E7: ImpAdCallFPR4  = Chr()
  loc_6EB5EC: FLdRfVar var_104
  loc_6EB5EF: ConcatVar var_144
  loc_6EB5F3: LitI4 &HA
  loc_6EB5F8: FLdRfVar var_164
  loc_6EB5FB: ImpAdCallFPR4  = Chr()
  loc_6EB600: FLdRfVar var_164
  loc_6EB603: ConcatVar var_184
  loc_6EB607: CStrVarTmp
  loc_6EB608: FStStr var_C4
  loc_6EB60B: FFreeStr var_E4 = ""
  loc_6EB612: FFreeVar var_124 = "": var_104 = "": var_144 = "": var_164 = ""
  loc_6EB61F: Branch loc_6EB62A
  loc_6EB622: FLdRfVar var_86
  loc_6EB625: NextI2 var_2A6, loc_6EB5B8
  loc_6EB62A: Branch loc_6EB7A6
  loc_6EB62D: FLdRfVar var_228
  loc_6EB630: LitVar_Missing var_224
  loc_6EB633: LitVar_Missing var_204
  loc_6EB636: LitVar_Missing var_1E4
  loc_6EB639: LitVar_Missing var_1C4
  loc_6EB63C: LitVar_Missing var_1A4
  loc_6EB63F: LitVar_Missing var_184
  loc_6EB642: LitVar_Missing var_164
  loc_6EB645: LitVar_Missing var_144
  loc_6EB648: LitVar_Missing var_124
  loc_6EB64B: LitVar_Missing var_104
  loc_6EB64E: LitStr "Los tanques "
  loc_6EB651: FStStrCopy var_E4
  loc_6EB654: FLdRfVar var_E4
  loc_6EB657: LitI4 &H2B
  loc_6EB65C: PopTmpLdAdStr var_E0
  loc_6EB65F: LitI2_Byte &HF
  loc_6EB661: PopTmpLdAd2 var_DA
  loc_6EB664: ImpAdLdRf MemVar_74C7D0
  loc_6EB667: NewIfNullPr clsMsg
  loc_6EB66A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB66F: FLdZeroAd var_228
  loc_6EB672: FStStr var_C4
  loc_6EB675: FFree1Str var_E4
  loc_6EB678: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB68F: LitI2_Byte 1
  loc_6EB691: FLdRfVar var_86
  loc_6EB694: ImpAdLdUI1
  loc_6EB698: CI2UI1
  loc_6EB69A: ForI2 var_2AA
  loc_6EB6A0: FLdI2 var_86
  loc_6EB6A3: CI4UI1
  loc_6EB6A4: FLdRfVar var_BC
  loc_6EB6A7: Ary1LdI2
  loc_6EB6A8: BranchF loc_6EB758
  loc_6EB6AB: ILdRf var_C4
  loc_6EB6AE: FLdI2 var_86
  loc_6EB6B1: CStrUI1
  loc_6EB6B3: FStStrNoPop var_E4
  loc_6EB6B6: ConcatStr
  loc_6EB6B7: FStStr var_C4
  loc_6EB6BA: FFree1Str var_E4
  loc_6EB6BD: FLdI2 var_C0
  loc_6EB6C0: LitI2_Byte 1
  loc_6EB6C2: SubI2
  loc_6EB6C3: FStI2 var_C0
  loc_6EB6C6: FLdI2 var_C0
  loc_6EB6C9: FStI2 var_2AC
  loc_6EB6CC: FLdI2 var_2AC
  loc_6EB6CF: LitI2_Byte 0
  loc_6EB6D1: EqI2
  loc_6EB6D2: BranchF loc_6EB6D8
  loc_6EB6D5: Branch loc_6EB758
  loc_6EB6D8: FLdI2 var_2AC
  loc_6EB6DB: LitI2_Byte 1
  loc_6EB6DD: EqI2
  loc_6EB6DE: BranchF loc_6EB74E
  loc_6EB6E1: ILdRf var_C4
  loc_6EB6E4: FLdRfVar var_228
  loc_6EB6E7: LitVar_Missing var_224
  loc_6EB6EA: LitVar_Missing var_204
  loc_6EB6ED: LitVar_Missing var_1E4
  loc_6EB6F0: LitVar_Missing var_1C4
  loc_6EB6F3: LitVar_Missing var_1A4
  loc_6EB6F6: LitVar_Missing var_184
  loc_6EB6F9: LitVar_Missing var_164
  loc_6EB6FC: LitVar_Missing var_144
  loc_6EB6FF: LitVar_Missing var_124
  loc_6EB702: LitVar_Missing var_104
  loc_6EB705: LitStr " y "
  loc_6EB708: FStStrCopy var_E4
  loc_6EB70B: FLdRfVar var_E4
  loc_6EB70E: LitI4 &H29
  loc_6EB713: PopTmpLdAdStr var_E0
  loc_6EB716: LitI2_Byte &HF
  loc_6EB718: PopTmpLdAd2 var_DA
  loc_6EB71B: ImpAdLdRf MemVar_74C7D0
  loc_6EB71E: NewIfNullPr clsMsg
  loc_6EB721: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB726: ILdRf var_228
  loc_6EB729: ConcatStr
  loc_6EB72A: FStStr var_C4
  loc_6EB72D: FFreeStr var_E4 = ""
  loc_6EB734: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB74B: Branch loc_6EB758
  loc_6EB74E: ILdRf var_C4
  loc_6EB751: LitStr ", "
  loc_6EB754: ConcatStr
  loc_6EB755: FStStr var_C4
  loc_6EB758: FLdRfVar var_86
  loc_6EB75B: NextI2 var_2AA, loc_6EB6A0
  loc_6EB760: ILdRf var_C4
  loc_6EB763: FLdPr Me
  loc_6EB766: MemLdStr strMsgDef1
  loc_6EB769: ConcatStr
  loc_6EB76A: CVarStr var_124
  loc_6EB76D: LitI4 &HA
  loc_6EB772: FLdRfVar var_104
  loc_6EB775: ImpAdCallFPR4  = Chr()
  loc_6EB77A: FLdRfVar var_104
  loc_6EB77D: ConcatVar var_144
  loc_6EB781: LitI4 &HA
  loc_6EB786: FLdRfVar var_164
  loc_6EB789: ImpAdCallFPR4  = Chr()
  loc_6EB78E: FLdRfVar var_164
  loc_6EB791: ConcatVar var_184
  loc_6EB795: CStrVarTmp
  loc_6EB796: FStStr var_C4
  loc_6EB799: FFreeVar var_124 = "": var_104 = "": var_144 = "": var_164 = ""
  loc_6EB7A6: FLdI2 var_BE
  loc_6EB7A9: FStI2 var_2AE
  loc_6EB7AC: FLdI2 var_2AE
  loc_6EB7AF: LitI2_Byte 0
  loc_6EB7B1: EqI2
  loc_6EB7B2: BranchF loc_6EB7B8
  loc_6EB7B5: Branch loc_6EB914
  loc_6EB7B8: FLdI2 var_2AE
  loc_6EB7BB: LitI2_Byte 1
  loc_6EB7BD: EqI2
  loc_6EB7BE: BranchF loc_6EB850
  loc_6EB7C1: LitI2_Byte 1
  loc_6EB7C3: FLdRfVar var_86
  loc_6EB7C6: ImpAdLdUI1
  loc_6EB7CA: CI2UI1
  loc_6EB7CC: ForI2 var_2B2
  loc_6EB7D2: FLdI2 var_86
  loc_6EB7D5: CI4UI1
  loc_6EB7D6: FLdRfVar var_A4
  loc_6EB7D9: Ary1LdI2
  loc_6EB7DA: BranchF loc_6EB845
  loc_6EB7DD: ILdRf var_C4
  loc_6EB7E0: FLdPr Me
  loc_6EB7E3: MemLdStr strMsgDef
  loc_6EB7E6: ConcatStr
  loc_6EB7E7: FStStrNoPop var_E4
  loc_6EB7EA: FLdI2 var_86
  loc_6EB7ED: CStrUI1
  loc_6EB7EF: FStStrNoPop var_228
  loc_6EB7F2: ConcatStr
  loc_6EB7F3: FStStrNoPop var_2B8
  loc_6EB7F6: FLdPr Me
  loc_6EB7F9: MemLdStr strMsgDef2
  loc_6EB7FC: ConcatStr
  loc_6EB7FD: CVarStr var_124
  loc_6EB800: LitI4 &HA
  loc_6EB805: FLdRfVar var_104
  loc_6EB808: ImpAdCallFPR4  = Chr()
  loc_6EB80D: FLdRfVar var_104
  loc_6EB810: ConcatVar var_144
  loc_6EB814: LitI4 &HA
  loc_6EB819: FLdRfVar var_164
  loc_6EB81C: ImpAdCallFPR4  = Chr()
  loc_6EB821: FLdRfVar var_164
  loc_6EB824: ConcatVar var_184
  loc_6EB828: CStrVarTmp
  loc_6EB829: FStStr var_C4
  loc_6EB82C: FFreeStr var_E4 = "": var_228 = ""
  loc_6EB835: FFreeVar var_124 = "": var_104 = "": var_144 = "": var_164 = ""
  loc_6EB842: Branch loc_6EB84D
  loc_6EB845: FLdRfVar var_86
  loc_6EB848: NextI2 var_2B2, loc_6EB7D2
  loc_6EB84D: Branch loc_6EB914
  loc_6EB850: ILdRf var_C4
  loc_6EB853: FLdPr Me
  loc_6EB856: MemLdStr strMsgDef
  loc_6EB859: ConcatStr
  loc_6EB85A: FStStr var_C4
  loc_6EB85D: LitI2_Byte 1
  loc_6EB85F: FLdRfVar var_86
  loc_6EB862: ImpAdLdUI1
  loc_6EB866: CI2UI1
  loc_6EB868: ForI2 var_2BC
  loc_6EB86E: FLdI2 var_86
  loc_6EB871: CI4UI1
  loc_6EB872: FLdRfVar var_A4
  loc_6EB875: Ary1LdI2
  loc_6EB876: BranchF loc_6EB8C6
  loc_6EB879: ILdRf var_C4
  loc_6EB87C: FLdI2 var_86
  loc_6EB87F: CStrUI1
  loc_6EB881: FStStrNoPop var_E4
  loc_6EB884: ConcatStr
  loc_6EB885: FStStr var_C4
  loc_6EB888: FFree1Str var_E4
  loc_6EB88B: FLdI2 var_BE
  loc_6EB88E: LitI2_Byte 1
  loc_6EB890: SubI2
  loc_6EB891: FStI2 var_BE
  loc_6EB894: FLdI2 var_BE
  loc_6EB897: FStI2 var_2BE
  loc_6EB89A: FLdI2 var_2BE
  loc_6EB89D: LitI2_Byte 0
  loc_6EB89F: EqI2
  loc_6EB8A0: BranchF loc_6EB8A6
  loc_6EB8A3: Branch loc_6EB8C6
  loc_6EB8A6: FLdI2 var_2BE
  loc_6EB8A9: LitI2_Byte 1
  loc_6EB8AB: EqI2
  loc_6EB8AC: BranchF loc_6EB8BC
  loc_6EB8AF: ILdRf var_C4
  loc_6EB8B2: LitStr " y "
  loc_6EB8B5: ConcatStr
  loc_6EB8B6: FStStr var_C4
  loc_6EB8B9: Branch loc_6EB8C6
  loc_6EB8BC: ILdRf var_C4
  loc_6EB8BF: LitStr ", "
  loc_6EB8C2: ConcatStr
  loc_6EB8C3: FStStr var_C4
  loc_6EB8C6: FLdRfVar var_86
  loc_6EB8C9: NextI2 var_2BC, loc_6EB86E
  loc_6EB8CE: ILdRf var_C4
  loc_6EB8D1: FLdPr Me
  loc_6EB8D4: MemLdStr strMsgDef2
  loc_6EB8D7: ConcatStr
  loc_6EB8D8: CVarStr var_124
  loc_6EB8DB: LitI4 &HA
  loc_6EB8E0: FLdRfVar var_104
  loc_6EB8E3: ImpAdCallFPR4  = Chr()
  loc_6EB8E8: FLdRfVar var_104
  loc_6EB8EB: ConcatVar var_144
  loc_6EB8EF: LitI4 &HA
  loc_6EB8F4: FLdRfVar var_164
  loc_6EB8F7: ImpAdCallFPR4  = Chr()
  loc_6EB8FC: FLdRfVar var_164
  loc_6EB8FF: ConcatVar var_184
  loc_6EB903: CStrVarTmp
  loc_6EB904: FStStr var_C4
  loc_6EB907: FFreeVar var_124 = "": var_104 = "": var_144 = "": var_164 = ""
  loc_6EB914: ILdRf var_C4
  loc_6EB917: FLdRfVar var_228
  loc_6EB91A: LitVar_Missing var_224
  loc_6EB91D: LitVar_Missing var_204
  loc_6EB920: LitVar_Missing var_1E4
  loc_6EB923: LitVar_Missing var_1C4
  loc_6EB926: LitVar_Missing var_1A4
  loc_6EB929: LitVar_Missing var_184
  loc_6EB92C: LitVar_Missing var_164
  loc_6EB92F: LitVar_Missing var_144
  loc_6EB932: LitVar_Missing var_124
  loc_6EB935: LitVar_Missing var_104
  loc_6EB938: LitStr "¿Está seguro que desea comenzar la descarga de todas maneras, aún corriendo riesgo de que algún tanque rebalse?"
  loc_6EB93B: FStStrCopy var_E4
  loc_6EB93E: FLdRfVar var_E4
  loc_6EB941: LitI4 &H2C
  loc_6EB946: PopTmpLdAdStr var_E0
  loc_6EB949: LitI2_Byte &HF
  loc_6EB94B: PopTmpLdAd2 var_DA
  loc_6EB94E: ImpAdLdRf MemVar_74C7D0
  loc_6EB951: NewIfNullPr clsMsg
  loc_6EB954: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EB959: ILdRf var_228
  loc_6EB95C: ConcatStr
  loc_6EB95D: FStStr var_C4
  loc_6EB960: FFreeStr var_E4 = ""
  loc_6EB967: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = ""
  loc_6EB97E: LitVar_Missing var_124
  loc_6EB981: LitVar_Missing var_104
  loc_6EB984: FLdPr Me
  loc_6EB987: MemLdRfVar from_stack_1.strStartCharge
  loc_6EB98A: CVarRef
  loc_6EB98F: LitI4 &H114
  loc_6EB994: FLdRfVar var_C4
  loc_6EB997: CVarRef
  loc_6EB99C: ImpAdCallI2 MsgBox(, , , , )
  loc_6EB9A1: CI2I4
  loc_6EB9A2: FStI2 var_CE
  loc_6EB9A5: FFreeVar var_104 = ""
  loc_6EB9AC: FLdI2 var_CE
  loc_6EB9AF: CI4UI1
  loc_6EB9B0: LitI4 7
  loc_6EB9B5: EqI4
  loc_6EB9B6: BranchF loc_6EB9BA
  loc_6EB9B9: ExitProcHresult
  loc_6EB9BA: FLdPr Me
  loc_6EB9BD: MemLdStr strEndCharge
  loc_6EB9C0: CVarStr var_F4
  loc_6EB9C3: PopAdLdVar
  loc_6EB9C4: FLdPrThis
  loc_6EB9C5: VCallAd Control_ID_sscDescarga
  loc_6EB9C8: FStAdFunc var_29C
  loc_6EB9CB: FLdPr var_29C
  loc_6EB9CE: LateIdSt
  loc_6EB9D3: FFree1Ad var_29C
  loc_6EB9D6: FLdPr Me
  loc_6EB9D9: MemLdRfVar from_stack_1.strEndCharge1
  loc_6EB9DC: CDargRef
  loc_6EB9E0: FLdPrThis
  loc_6EB9E1: VCallAd Control_ID_sscDescarga
  loc_6EB9E4: FStAdFunc var_29C
  loc_6EB9E7: FLdPr var_29C
  loc_6EB9EA: LateIdSt
  loc_6EB9EF: FFree1Ad var_29C
  loc_6EB9F2: LitVar_FALSE
  loc_6EB9F6: PopAdLdVar
  loc_6EB9F7: FLdPrThis
  loc_6EB9F8: VCallAd Control_ID_sscForzarMedicion
  loc_6EB9FB: FStAdFunc var_29C
  loc_6EB9FE: FLdPr var_29C
  loc_6EBA01: LateIdSt
  loc_6EBA06: FFree1Ad var_29C
  loc_6EBA09: LitVar_FALSE
  loc_6EBA0D: PopAdLdVar
  loc_6EBA0E: FLdPrThis
  loc_6EBA0F: VCallAd Control_ID_Altas
  loc_6EBA12: FStAdFunc var_29C
  loc_6EBA15: FLdPr var_29C
  loc_6EBA18: LateIdSt
  loc_6EBA1D: FFree1Ad var_29C
  loc_6EBA20: LitVar_FALSE
  loc_6EBA24: PopAdLdVar
  loc_6EBA25: FLdPrThis
  loc_6EBA26: VCallAd Control_ID_Bajas
  loc_6EBA29: FStAdFunc var_29C
  loc_6EBA2C: FLdPr var_29C
  loc_6EBA2F: LateIdSt
  loc_6EBA34: FFree1Ad var_29C
  loc_6EBA37: LitVar_FALSE
  loc_6EBA3B: PopAdLdVar
  loc_6EBA3C: FLdPrThis
  loc_6EBA3D: VCallAd Control_ID_Mediciones
  loc_6EBA40: FStAdFunc var_29C
  loc_6EBA43: FLdPr var_29C
  loc_6EBA46: LateIdSt
  loc_6EBA4B: FFree1Ad var_29C
  loc_6EBA4E: Branch loc_6EBA89
  loc_6EBA51: FLdPr Me
  loc_6EBA54: MemLdStr strStartCharge
  loc_6EBA57: CVarStr var_F4
  loc_6EBA5A: PopAdLdVar
  loc_6EBA5B: FLdPrThis
  loc_6EBA5C: VCallAd Control_ID_sscDescarga
  loc_6EBA5F: FStAdFunc var_29C
  loc_6EBA62: FLdPr var_29C
  loc_6EBA65: LateIdSt
  loc_6EBA6A: FFree1Ad var_29C
  loc_6EBA6D: FLdPr Me
  loc_6EBA70: MemLdRfVar from_stack_1.strStartCharge1
  loc_6EBA73: CDargRef
  loc_6EBA77: FLdPrThis
  loc_6EBA78: VCallAd Control_ID_sscDescarga
  loc_6EBA7B: FStAdFunc var_29C
  loc_6EBA7E: FLdPr var_29C
  loc_6EBA81: LateIdSt
  loc_6EBA86: FFree1Ad var_29C
  loc_6EBA89: FLdRfVar var_104
  loc_6EBA8C: FLdRfVar var_29C
  loc_6EBA8F: ImpAdLdRf MemVar_74C760
  loc_6EBA92: NewIfNullPr Formx
  loc_6EBA95: from_stack_1v = Formx.global_4589716Get()
  loc_6EBA9A: FLdPr var_29C
  loc_6EBA9D: Formx.KeyPreview = from_stack_1b
  loc_6EBAA2: FLdRfVar var_104
  loc_6EBAA5: NotVar var_124
  loc_6EBAA9: CBoolVarNull
  loc_6EBAAB: FFree1Ad var_29C
  loc_6EBAAE: FFree1Var var_104 = ""
  loc_6EBAB1: BranchF loc_6EBAE0
  loc_6EBAB4: FLdRfVar var_104
  loc_6EBAB7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6EBABC: FLdRfVar var_104
  loc_6EBABF: CBoolVarNull
  loc_6EBAC1: FFree1Var var_104 = ""
  loc_6EBAC4: BranchF loc_6EBADD
  loc_6EBAC7: ILdRf Me
  loc_6EBACA: FStAdNoPop
  loc_6EBACE: ImpAdLdRf MemVar_7520D4
  loc_6EBAD1: NewIfNullPr Global
  loc_6EBAD4: Global.Unload from_stack_1
  loc_6EBAD9: FFree1Ad var_29C
  loc_6EBADC: ExitProcHresult
  loc_6EBADD: Branch loc_6EBA89
  loc_6EBAE0: LitI2_Byte 0
  loc_6EBAE2: FLdPr Me
  loc_6EBAE5: MemStI2 global_140
  loc_6EBAE8: LitI2_Byte 0
  loc_6EBAEA: FLdPrThis
  loc_6EBAEB: VCallAd Control_ID_Reloj
  loc_6EBAEE: FStAdFunc var_29C
  loc_6EBAF1: FLdPr var_29C
  loc_6EBAF4: Me.Enabled = from_stack_1b
  loc_6EBAF9: FFree1Ad var_29C
  loc_6EBAFC: Call Reloj_Timer()
  loc_6EBB01: LitI2_Byte &HFF
  loc_6EBB03: FLdPrThis
  loc_6EBB04: VCallAd Control_ID_Reloj
  loc_6EBB07: FStAdFunc var_29C
  loc_6EBB0A: FLdPr var_29C
  loc_6EBB0D: Me.Enabled = from_stack_1b
  loc_6EBB12: FFree1Ad var_29C
  loc_6EBB15: FLdPr Me
  loc_6EBB18: MemLdRfVar from_stack_1.global_130
  loc_6EBB1B: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_6EBB20: ExitProcHresult
End Sub

Private Sub Combustible_Click(arg_C) '5CA850
  'Data Table: 44F8E0
  loc_5CA844: ILdRf arg_C
  loc_5CA847: Call Vacio_Click()
  loc_5CA84C: ExitProcHresult
End Sub

Private Sub imgConvertMM_Click(Index As Integer) '5E2034
  'Data Table: 44F8E0
  loc_5E1FD8: FLdPrThis
  loc_5E1FD9: VCallAd Control_ID_sscForzarMedicion
  loc_5E1FDC: FStAdFunc var_88
  loc_5E1FDF: FLdPr var_88
  loc_5E1FE2: LateIdLdVar var_98 DispID_13 -32767
  loc_5E1FE9: CBoolVar
  loc_5E1FEB: LitI2_Byte &HFF
  loc_5E1FED: EqI2
  loc_5E1FEE: FFree1Ad var_88
  loc_5E1FF1: FFree1Var var_98 = ""
  loc_5E1FF4: BranchF loc_5E2032
  loc_5E1FF7: ILdRf Index
  loc_5E1FFA: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_5E1FFF: ILdI2 Index
  loc_5E2002: LitI2_Byte 1
  loc_5E2004: AddI2
  loc_5E2005: ImpAdLdRf MemVar_74E164
  loc_5E2008: NewIfNullPr calcmediciones
  loc_5E200B: Call calcmediciones.tankPut(from_stack_1v)
  loc_5E2010: LitI2_Byte &HFF
  loc_5E2012: ImpAdLdRf MemVar_74E164
  loc_5E2015: NewIfNullPr calcmediciones
  loc_5E2018: Call calcmediciones.ConsultaPut(from_stack_1v)
  loc_5E201D: LitVar_Missing var_B8
  loc_5E2020: PopAdLdVar
  loc_5E2021: LitVarI2 var_A8, 1
  loc_5E2026: PopAdLdVar
  loc_5E2027: ImpAdLdRf MemVar_74E164
  loc_5E202A: NewIfNullPr calcmediciones
  loc_5E202D: calcmediciones.Show from_stack_1, from_stack_2
  loc_5E2032: ExitProcHresult
End Sub

Private Function Titulo_UnknownEvent_8(arg_C) '672BB0
  'Data Table: 44F8E0
  loc_672780: FLdPr Me
  loc_672783: MemLdI2 global_130
  loc_672786: ImpAdLdUI1
  loc_67278A: CI2UI1
  loc_67278C: LtI2
  loc_67278D: BranchF loc_672819
  loc_672790: LitVarI4
  loc_672798: PopAdLdVar
  loc_672799: FLdRfVar var_90
  loc_67279C: FLdPr Me
  loc_67279F: MemLdI2 global_130
  loc_6727A2: FLdPrThis
  loc_6727A3: VCallAd Control_ID_Titulo
  loc_6727A6: FStAdFunc var_8C
  loc_6727A9: FLdPr var_8C
  loc_6727AC: Set from_stack_2 = Me(from_stack_1)
  loc_6727B1: FLdPr var_90
  loc_6727B4: LateIdSt
  loc_6727B9: FFreeAd var_8C = ""
  loc_6727C0: LitVar_FALSE
  loc_6727C4: PopAdLdVar
  loc_6727C5: FLdRfVar var_90
  loc_6727C8: FLdPr Me
  loc_6727CB: MemLdI2 global_130
  loc_6727CE: FLdPrThis
  loc_6727CF: VCallAd Control_ID_Titulo
  loc_6727D2: FStAdFunc var_8C
  loc_6727D5: FLdPr var_8C
  loc_6727D8: Set from_stack_2 = Me(from_stack_1)
  loc_6727DD: FLdPr var_90
  loc_6727E0: LateIdSt
  loc_6727E5: FFreeAd var_8C = ""
  loc_6727EC: LitVarI2 var_A0, 0
  loc_6727F1: PopAdLdVar
  loc_6727F2: FLdRfVar var_90
  loc_6727F5: FLdPr Me
  loc_6727F8: MemLdI2 global_130
  loc_6727FB: FLdPrThis
  loc_6727FC: VCallAd Control_ID_Titulo
  loc_6727FF: FStAdFunc var_8C
  loc_672802: FLdPr var_8C
  loc_672805: Set from_stack_2 = Me(from_stack_1)
  loc_67280A: FLdPr var_90
  loc_67280D: LateIdSt
  loc_672812: FFreeAd var_8C = ""
  loc_672819: ILdI2 arg_C
  loc_67281C: FLdPr Me
  loc_67281F: MemStI2 global_130
  loc_672822: FLdPr Me
  loc_672825: MemLdI2 global_130
  loc_672828: ImpAdLdUI1
  loc_67282C: CI2UI1
  loc_67282E: LtI2
  loc_67282F: BranchF loc_6728BD
  loc_672832: LitVarI4
  loc_67283A: PopAdLdVar
  loc_67283B: FLdRfVar var_90
  loc_67283E: FLdPr Me
  loc_672841: MemLdI2 global_130
  loc_672844: FLdPrThis
  loc_672845: VCallAd Control_ID_Titulo
  loc_672848: FStAdFunc var_8C
  loc_67284B: FLdPr var_8C
  loc_67284E: Set from_stack_2 = Me(from_stack_1)
  loc_672853: FLdPr var_90
  loc_672856: LateIdSt
  loc_67285B: FFreeAd var_8C = ""
  loc_672862: LitVar_TRUE var_A0
  loc_672865: PopAdLdVar
  loc_672866: FLdRfVar var_90
  loc_672869: FLdPr Me
  loc_67286C: MemLdI2 global_130
  loc_67286F: FLdPrThis
  loc_672870: VCallAd Control_ID_Titulo
  loc_672873: FStAdFunc var_8C
  loc_672876: FLdPr var_8C
  loc_672879: Set from_stack_2 = Me(from_stack_1)
  loc_67287E: FLdPr var_90
  loc_672881: LateIdSt
  loc_672886: FFreeAd var_8C = ""
  loc_67288D: LitVarI4
  loc_672895: PopAdLdVar
  loc_672896: FLdRfVar var_90
  loc_672899: FLdPr Me
  loc_67289C: MemLdI2 global_130
  loc_67289F: FLdPrThis
  loc_6728A0: VCallAd Control_ID_Titulo
  loc_6728A3: FStAdFunc var_8C
  loc_6728A6: FLdPr var_8C
  loc_6728A9: Set from_stack_2 = Me(from_stack_1)
  loc_6728AE: FLdPr var_90
  loc_6728B1: LateIdSt
  loc_6728B6: FFreeAd var_8C = ""
  loc_6728BD: ImpAdLdUI1
  loc_6728C1: CI2UI1
  loc_6728C3: LitI2_Byte 0
  loc_6728C5: GtI2
  loc_6728C6: FLdPr Me
  loc_6728C9: MemLdI2 global_130
  loc_6728CC: LitI2_Byte 1
  loc_6728CE: AddI2
  loc_6728CF: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6728D4: NotI4
  loc_6728D5: AndI4
  loc_6728D6: BranchF loc_672ADC
  loc_6728D9: FLdRfVar var_B0
  loc_6728DC: FLdPr Me
  loc_6728DF: MemLdRfVar from_stack_1.global_144
  loc_6728E2: FLdRfVar var_8C
  loc_6728E5: ImpAdLdRf MemVar_74C760
  loc_6728E8: NewIfNullPr Formx
  loc_6728EB: from_stack_1v = Formx.global_4589716Get()
  loc_6728F0: FLdPr var_8C
  loc_6728F3:  = Formx.KeyPreview
  loc_6728F8: FLdRfVar var_B0
  loc_6728FB: NotVar var_C0
  loc_6728FF: CBoolVarNull
  loc_672901: FFree1Ad var_8C
  loc_672904: FFree1Var var_B0 = ""
  loc_672907: BranchF loc_672936
  loc_67290A: FLdRfVar var_B0
  loc_67290D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_672912: FLdRfVar var_B0
  loc_672915: CBoolVarNull
  loc_672917: FFree1Var var_B0 = ""
  loc_67291A: BranchF loc_672933
  loc_67291D: ILdRf Me
  loc_672920: FStAdNoPop
  loc_672924: ImpAdLdRf MemVar_7520D4
  loc_672927: NewIfNullPr Global
  loc_67292A: Global.Unload from_stack_1
  loc_67292F: FFree1Ad var_8C
  loc_672932: ExitProcHresult
  loc_672933: Branch loc_6728D9
  loc_672936: FLdPr Me
  loc_672939: MemLdStr global_144
  loc_67293C: LitStr "1"
  loc_67293F: NeStr
  loc_672941: BranchF loc_672A94
  loc_672944: LitVarI2 var_B0, 1
  loc_672949: FLdPr Me
  loc_67294C: MemLdI2 global_130
  loc_67294F: LitI2_Byte 1
  loc_672951: AddI2
  loc_672952: CI4UI1
  loc_672953: FLdPr Me
  loc_672956: MemLdStr global_132
  loc_672959: ImpAdCallI2 Mid$(, , )
  loc_67295E: FStStrNoPop var_C4
  loc_672961: LitStr "1"
  loc_672964: EqStr
  loc_672966: FFree1Str var_C4
  loc_672969: FFree1Var var_B0 = ""
  loc_67296C: BranchF loc_6729B7
  loc_67296F: LitVar_FALSE
  loc_672973: PopAdLdVar
  loc_672974: FLdPrThis
  loc_672975: VCallAd Control_ID_Altas
  loc_672978: FStAdFunc var_8C
  loc_67297B: FLdPr var_8C
  loc_67297E: LateIdSt
  loc_672983: FFree1Ad var_8C
  loc_672986: LitVar_FALSE
  loc_67298A: PopAdLdVar
  loc_67298B: FLdPrThis
  loc_67298C: VCallAd Control_ID_Bajas
  loc_67298F: FStAdFunc var_8C
  loc_672992: FLdPr var_8C
  loc_672995: LateIdSt
  loc_67299A: FFree1Ad var_8C
  loc_67299D: LitVar_FALSE
  loc_6729A1: PopAdLdVar
  loc_6729A2: FLdPrThis
  loc_6729A3: VCallAd Control_ID_Mediciones
  loc_6729A6: FStAdFunc var_8C
  loc_6729A9: FLdPr var_8C
  loc_6729AC: LateIdSt
  loc_6729B1: FFree1Ad var_8C
  loc_6729B4: Branch loc_672A91
  loc_6729B7: LitVarI2 var_B0, 1
  loc_6729BC: FLdPr Me
  loc_6729BF: MemLdI2 global_130
  loc_6729C2: LitI2_Byte 1
  loc_6729C4: AddI2
  loc_6729C5: CI4UI1
  loc_6729C6: FLdPr Me
  loc_6729C9: MemLdStr global_136
  loc_6729CC: ImpAdCallI2 Mid$(, , )
  loc_6729D1: FStStrNoPop var_C4
  loc_6729D4: ImpAdCallI2 Asc()
  loc_6729D9: LitI2_Byte 1
  loc_6729DB: AndI4
  loc_6729DC: LitI2_Byte 1
  loc_6729DE: EqI2
  loc_6729DF: FFree1Str var_C4
  loc_6729E2: FFree1Var var_B0 = ""
  loc_6729E5: BranchF loc_672A4C
  loc_6729E8: FLdPrThis
  loc_6729E9: VCallAd Control_ID_sscForzarMedicion
  loc_6729EC: FStAdFunc var_8C
  loc_6729EF: FLdPr var_8C
  loc_6729F2: LateIdLdVar var_B0 DispID_13 -32767
  loc_6729F9: CBoolVar
  loc_6729FB: LitI2_Byte &HFF
  loc_6729FD: EqI2
  loc_6729FE: FFree1Ad var_8C
  loc_672A01: FFree1Var var_B0 = ""
  loc_672A04: BranchF loc_672A49
  loc_672A07: LitVar_TRUE var_A0
  loc_672A0A: PopAdLdVar
  loc_672A0B: FLdPrThis
  loc_672A0C: VCallAd Control_ID_Altas
  loc_672A0F: FStAdFunc var_8C
  loc_672A12: FLdPr var_8C
  loc_672A15: LateIdSt
  loc_672A1A: FFree1Ad var_8C
  loc_672A1D: LitVar_TRUE var_A0
  loc_672A20: PopAdLdVar
  loc_672A21: FLdPrThis
  loc_672A22: VCallAd Control_ID_Bajas
  loc_672A25: FStAdFunc var_8C
  loc_672A28: FLdPr var_8C
  loc_672A2B: LateIdSt
  loc_672A30: FFree1Ad var_8C
  loc_672A33: LitVar_TRUE var_A0
  loc_672A36: PopAdLdVar
  loc_672A37: FLdPrThis
  loc_672A38: VCallAd Control_ID_Mediciones
  loc_672A3B: FStAdFunc var_8C
  loc_672A3E: FLdPr var_8C
  loc_672A41: LateIdSt
  loc_672A46: FFree1Ad var_8C
  loc_672A49: Branch loc_672A91
  loc_672A4C: LitVar_FALSE
  loc_672A50: PopAdLdVar
  loc_672A51: FLdPrThis
  loc_672A52: VCallAd Control_ID_Altas
  loc_672A55: FStAdFunc var_8C
  loc_672A58: FLdPr var_8C
  loc_672A5B: LateIdSt
  loc_672A60: FFree1Ad var_8C
  loc_672A63: LitVar_FALSE
  loc_672A67: PopAdLdVar
  loc_672A68: FLdPrThis
  loc_672A69: VCallAd Control_ID_Bajas
  loc_672A6C: FStAdFunc var_8C
  loc_672A6F: FLdPr var_8C
  loc_672A72: LateIdSt
  loc_672A77: FFree1Ad var_8C
  loc_672A7A: LitVar_FALSE
  loc_672A7E: PopAdLdVar
  loc_672A7F: FLdPrThis
  loc_672A80: VCallAd Control_ID_Mediciones
  loc_672A83: FStAdFunc var_8C
  loc_672A86: FLdPr var_8C
  loc_672A89: LateIdSt
  loc_672A8E: FFree1Ad var_8C
  loc_672A91: Branch loc_672AD9
  loc_672A94: LitVar_FALSE
  loc_672A98: PopAdLdVar
  loc_672A99: FLdPrThis
  loc_672A9A: VCallAd Control_ID_Altas
  loc_672A9D: FStAdFunc var_8C
  loc_672AA0: FLdPr var_8C
  loc_672AA3: LateIdSt
  loc_672AA8: FFree1Ad var_8C
  loc_672AAB: LitVar_FALSE
  loc_672AAF: PopAdLdVar
  loc_672AB0: FLdPrThis
  loc_672AB1: VCallAd Control_ID_Bajas
  loc_672AB4: FStAdFunc var_8C
  loc_672AB7: FLdPr var_8C
  loc_672ABA: LateIdSt
  loc_672ABF: FFree1Ad var_8C
  loc_672AC2: LitVar_FALSE
  loc_672AC6: PopAdLdVar
  loc_672AC7: FLdPrThis
  loc_672AC8: VCallAd Control_ID_Mediciones
  loc_672ACB: FStAdFunc var_8C
  loc_672ACE: FLdPr var_8C
  loc_672AD1: LateIdSt
  loc_672AD6: FFree1Ad var_8C
  loc_672AD9: Branch loc_672BAF
  loc_672ADC: FLdPr Me
  loc_672ADF: MemLdI2 global_130
  loc_672AE2: LitI2_Byte 1
  loc_672AE4: AddI2
  loc_672AE5: ImpAdCallI2 Proc_158_7_5DA158()
  loc_672AEA: BranchF loc_672B6D
  loc_672AED: FLdPrThis
  loc_672AEE: VCallAd Control_ID_sscForzarMedicion
  loc_672AF1: FStAdFunc var_8C
  loc_672AF4: FLdPr var_8C
  loc_672AF7: LateIdLdVar var_B0 DispID_13 -32767
  loc_672AFE: CBoolVar
  loc_672B00: LitI2_Byte &HFF
  loc_672B02: EqI2
  loc_672B03: FFree1Ad var_8C
  loc_672B06: FFree1Var var_B0 = ""
  loc_672B09: BranchF loc_672B53
  loc_672B0C: LitVar_TRUE var_A0
  loc_672B0F: PopAdLdVar
  loc_672B10: FLdPrThis
  loc_672B11: VCallAd Control_ID_Mediciones
  loc_672B14: FStAdFunc var_8C
  loc_672B17: FLdPr var_8C
  loc_672B1A: LateIdSt
  loc_672B1F: FFree1Ad var_8C
  loc_672B22: LitVar_FALSE
  loc_672B26: PopAdLdVar
  loc_672B27: FLdPrThis
  loc_672B28: VCallAd Control_ID_Altas
  loc_672B2B: FStAdFunc var_8C
  loc_672B2E: FLdPr var_8C
  loc_672B31: LateIdSt
  loc_672B36: FFree1Ad var_8C
  loc_672B39: LitVar_FALSE
  loc_672B3D: PopAdLdVar
  loc_672B3E: FLdPrThis
  loc_672B3F: VCallAd Control_ID_Bajas
  loc_672B42: FStAdFunc var_8C
  loc_672B45: FLdPr var_8C
  loc_672B48: LateIdSt
  loc_672B4D: FFree1Ad var_8C
  loc_672B50: Branch loc_672B6A
  loc_672B53: LitVar_FALSE
  loc_672B57: PopAdLdVar
  loc_672B58: FLdPrThis
  loc_672B59: VCallAd Control_ID_Mediciones
  loc_672B5C: FStAdFunc var_8C
  loc_672B5F: FLdPr var_8C
  loc_672B62: LateIdSt
  loc_672B67: FFree1Ad var_8C
  loc_672B6A: Branch loc_672BAF
  loc_672B6D: LitVar_TRUE var_A0
  loc_672B70: PopAdLdVar
  loc_672B71: FLdPrThis
  loc_672B72: VCallAd Control_ID_Altas
  loc_672B75: FStAdFunc var_8C
  loc_672B78: FLdPr var_8C
  loc_672B7B: LateIdSt
  loc_672B80: FFree1Ad var_8C
  loc_672B83: LitVar_TRUE var_A0
  loc_672B86: PopAdLdVar
  loc_672B87: FLdPrThis
  loc_672B88: VCallAd Control_ID_Bajas
  loc_672B8B: FStAdFunc var_8C
  loc_672B8E: FLdPr var_8C
  loc_672B91: LateIdSt
  loc_672B96: FFree1Ad var_8C
  loc_672B99: LitVar_TRUE var_A0
  loc_672B9C: PopAdLdVar
  loc_672B9D: FLdPrThis
  loc_672B9E: VCallAd Control_ID_Mediciones
  loc_672BA1: FStAdFunc var_8C
  loc_672BA4: FLdPr var_8C
  loc_672BA7: LateIdSt
  loc_672BAC: FFree1Ad var_8C
  loc_672BAF: ExitProcHresult
End Function

Private Sub Form_Load() '68E964
  'Data Table: 44F8E0
  loc_68E3C0: LitStr "CEM44.INI"
  loc_68E3C3: FStStrCopy var_90
  loc_68E3C6: FLdRfVar var_90
  loc_68E3C9: LitStr "INFORM_DELIVERIES"
  loc_68E3CC: FStStrCopy var_8C
  loc_68E3CF: FLdRfVar var_8C
  loc_68E3D2: LitStr "TELEMEDICION"
  loc_68E3D5: FStStrCopy var_88
  loc_68E3D8: FLdRfVar var_88
  loc_68E3DB: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_68E3E0: FStStrNoPop var_94
  loc_68E3E3: LitStr "1"
  loc_68E3E6: EqStr
  loc_68E3E8: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_68E3F3: BranchF loc_68E40D
  loc_68E3F6: LitVar_FALSE
  loc_68E3FA: PopAdLdVar
  loc_68E3FB: FLdPrThis
  loc_68E3FC: VCallAd Control_ID_sscDescarga
  loc_68E3FF: FStAdFunc var_A8
  loc_68E402: FLdPr var_A8
  loc_68E405: LateIdSt
  loc_68E40A: FFree1Ad var_A8
  loc_68E40D: ImpAdLdUI1
  loc_68E411: CI2UI1
  loc_68E413: LitI2_Byte 1
  loc_68E415: EqI2
  loc_68E416: BranchF loc_68E447
  loc_68E419: LitVar_FALSE
  loc_68E41D: PopAdLdVar
  loc_68E41E: FLdPrThis
  loc_68E41F: VCallAd Control_ID_sscDescarga
  loc_68E422: FStAdFunc var_A8
  loc_68E425: FLdPr var_A8
  loc_68E428: LateIdSt
  loc_68E42D: FFree1Ad var_A8
  loc_68E430: LitVar_FALSE
  loc_68E434: PopAdLdVar
  loc_68E435: FLdPrThis
  loc_68E436: VCallAd Control_ID_sscForzarMedicion
  loc_68E439: FStAdFunc var_A8
  loc_68E43C: FLdPr var_A8
  loc_68E43F: LateIdSt
  loc_68E444: FFree1Ad var_A8
  loc_68E447: FLdRfVar var_A8
  loc_68E44A: LitVar_Missing var_A4
  loc_68E44D: PopAdLdVar
  loc_68E44E: ImpAdLdRf MemVar_7520D4
  loc_68E451: NewIfNullPr Global
  loc_68E454: Global.LoadPictureOld from_stack_1
  loc_68E459: FLdZeroAd var_A8
  loc_68E45C: FStAdFuncNoPop
  loc_68E45F: FLdPr Me
  loc_68E462: Me.Picture = from_stack_1
  loc_68E467: FFree1Ad var_AC
  loc_68E46A: LitI2_Byte 0
  loc_68E46C: FLdPr Me
  loc_68E46F: MemStI2 global_130
  loc_68E472: LitI2_Byte 0
  loc_68E474: CR8I2
  loc_68E475: PopFPR4
  loc_68E476: FLdPr Me
  loc_68E479: Me.Top = from_stack_1s
  loc_68E47E: LitI2_Byte 0
  loc_68E480: CR8I2
  loc_68E481: PopFPR4
  loc_68E482: FLdPr Me
  loc_68E485: Me.Left = from_stack_1s
  loc_68E48A: FLdRfVar var_B0
  loc_68E48D: FLdRfVar var_A8
  loc_68E490: ImpAdLdRf MemVar_7520D4
  loc_68E493: NewIfNullPr Global
  loc_68E496:  = Global.Screen
  loc_68E49B: FLdPr var_A8
  loc_68E49E:  = Screen.TwipsPerPixelX
  loc_68E4A3: LitI2 800
  loc_68E4A6: CR8I2
  loc_68E4A7: FLdFPR4 var_B0
  loc_68E4AA: MulR8
  loc_68E4AB: PopFPR4
  loc_68E4AC: FLdPr Me
  loc_68E4AF: Me.Width = from_stack_1s
  loc_68E4B4: FFree1Ad var_A8
  loc_68E4B7: FLdRfVar var_B0
  loc_68E4BA: FLdRfVar var_A8
  loc_68E4BD: ImpAdLdRf MemVar_7520D4
  loc_68E4C0: NewIfNullPr Global
  loc_68E4C3:  = Global.Screen
  loc_68E4C8: FLdPr var_A8
  loc_68E4CB:  = Screen.TwipsPerPixelY
  loc_68E4D0: LitI2 600
  loc_68E4D3: CR8I2
  loc_68E4D4: FLdFPR4 var_B0
  loc_68E4D7: MulR8
  loc_68E4D8: PopFPR4
  loc_68E4D9: FLdPr Me
  loc_68E4DC: Me.Height = from_stack_1s
  loc_68E4E1: FFree1Ad var_A8
  loc_68E4E4: ImpAdLdUI1
  loc_68E4E8: FStUI1 var_B2
  loc_68E4EC: FLdUI1
  loc_68E4F0: LitI2_Byte 1
  loc_68E4F2: CUI1I2
  loc_68E4F4: LitI2_Byte 9
  loc_68E4F6: CUI1I2
  loc_68E4F8: BetweenUI1
  loc_68E4FA: BranchF loc_68E8A3
  loc_68E4FD: LitI4 &H12C
  loc_68E502: FLdPr Me
  loc_68E505: MemStI4 global_156
  loc_68E508: LitI4 &HC8
  loc_68E50D: FLdPr Me
  loc_68E510: MemStI4 global_152
  loc_68E513: FLdRfVar var_B0
  loc_68E516: FLdRfVar var_AC
  loc_68E519: LitI2_Byte 0
  loc_68E51B: FLdPrThis
  loc_68E51C: VCallAd Control_ID_imgTanque
  loc_68E51F: FStAdFunc var_A8
  loc_68E522: FLdPr var_A8
  loc_68E525: Set from_stack_2 = Me(from_stack_1)
  loc_68E52A: FLdPr var_AC
  loc_68E52D:  = Me.Width
  loc_68E532: FLdFPR4 var_B0
  loc_68E535: LitDate 1.3
  loc_68E53E: MulR8
  loc_68E53F: PopFPR4
  loc_68E540: FLdRfVar var_BC
  loc_68E543: LitI2_Byte 0
  loc_68E545: FLdPrThis
  loc_68E546: VCallAd Control_ID_imgTanque
  loc_68E549: FStAdFunc var_B8
  loc_68E54C: FLdPr var_B8
  loc_68E54F: Set from_stack_2 = Me(from_stack_1)
  loc_68E554: FLdPr var_BC
  loc_68E557: Me.Width = from_stack_1s
  loc_68E55C: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E567: FLdRfVar var_B0
  loc_68E56A: FLdRfVar var_AC
  loc_68E56D: LitI2_Byte 0
  loc_68E56F: FLdPrThis
  loc_68E570: VCallAd Control_ID_imgTanque
  loc_68E573: FStAdFunc var_A8
  loc_68E576: FLdPr var_A8
  loc_68E579: Set from_stack_2 = Me(from_stack_1)
  loc_68E57E: FLdPr var_AC
  loc_68E581:  = Me.Height
  loc_68E586: FLdFPR4 var_B0
  loc_68E589: LitDate 1.3
  loc_68E592: MulR8
  loc_68E593: PopFPR4
  loc_68E594: FLdRfVar var_BC
  loc_68E597: LitI2_Byte 0
  loc_68E599: FLdPrThis
  loc_68E59A: VCallAd Control_ID_imgTanque
  loc_68E59D: FStAdFunc var_B8
  loc_68E5A0: FLdPr var_B8
  loc_68E5A3: Set from_stack_2 = Me(from_stack_1)
  loc_68E5A8: FLdPr var_BC
  loc_68E5AB: Me.Height = from_stack_1s
  loc_68E5B0: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E5BB: FLdRfVar var_C0
  loc_68E5BE: FLdRfVar var_BC
  loc_68E5C1: LitI2_Byte 0
  loc_68E5C3: FLdPrThis
  loc_68E5C4: VCallAd Control_ID_lblTituloVacio
  loc_68E5C7: FStAdFunc var_B8
  loc_68E5CA: FLdPr var_B8
  loc_68E5CD: Set from_stack_2 = Me(from_stack_1)
  loc_68E5D2: FLdPr var_BC
  loc_68E5D5:  = Me.Width
  loc_68E5DA: FLdRfVar var_CC
  loc_68E5DD: FLdRfVar var_C8
  loc_68E5E0: LitI2_Byte 0
  loc_68E5E2: FLdPrThis
  loc_68E5E3: VCallAd Control_ID_Vacio
  loc_68E5E6: FStAdFunc var_C4
  loc_68E5E9: FLdPr var_C4
  loc_68E5EC: Set from_stack_2 = Me(from_stack_1)
  loc_68E5F1: FLdPr var_C8
  loc_68E5F4:  = Me.Width
  loc_68E5F9: FLdRfVar var_B0
  loc_68E5FC: FLdRfVar var_AC
  loc_68E5FF: LitI2_Byte 0
  loc_68E601: FLdPrThis
  loc_68E602: VCallAd Control_ID_imgTanque
  loc_68E605: FStAdFunc var_A8
  loc_68E608: FLdPr var_A8
  loc_68E60B: Set from_stack_2 = Me(from_stack_1)
  loc_68E610: FLdPr var_AC
  loc_68E613:  = Me.Width
  loc_68E618: FLdFPR4 var_B0
  loc_68E61B: FLdFPR4 var_C0
  loc_68E61E: AddR8
  loc_68E61F: FLdFPR4 var_CC
  loc_68E622: AddR8
  loc_68E623: CVarR4
  loc_68E627: PopAdLdVar
  loc_68E628: FLdRfVar var_D4
  loc_68E62B: LitI2_Byte 0
  loc_68E62D: FLdPrThis
  loc_68E62E: VCallAd Control_ID_Titulo
  loc_68E631: FStAdFunc var_D0
  loc_68E634: FLdPr var_D0
  loc_68E637: Set from_stack_2 = Me(from_stack_1)
  loc_68E63C: FLdPr var_D4
  loc_68E63F: LateIdSt
  loc_68E644: FFreeAd var_A8 = "": var_AC = "": var_B8 = "": var_BC = "": var_C4 = "": var_C8 = "": var_D0 = ""
  loc_68E657: FLdRfVar var_AC
  loc_68E65A: LitI2_Byte 0
  loc_68E65C: FLdPrThis
  loc_68E65D: VCallAd Control_ID_Titulo
  loc_68E660: FStAdFunc var_A8
  loc_68E663: FLdPr var_A8
  loc_68E666: Set from_stack_2 = Me(from_stack_1)
  loc_68E66B: FLdPr var_AC
  loc_68E66E: LateIdLdVar var_E4 DispID_6 -32767
  loc_68E675: CR8Var
  loc_68E677: LitDate 1.25
  loc_68E680: MulR8
  loc_68E681: CVarR4
  loc_68E685: PopAdLdVar
  loc_68E686: FLdRfVar var_BC
  loc_68E689: LitI2_Byte 0
  loc_68E68B: FLdPrThis
  loc_68E68C: VCallAd Control_ID_Titulo
  loc_68E68F: FStAdFunc var_B8
  loc_68E692: FLdPr var_B8
  loc_68E695: Set from_stack_2 = Me(from_stack_1)
  loc_68E69A: FLdPr var_BC
  loc_68E69D: LateIdSt
  loc_68E6A2: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E6AD: FFree1Var var_E4 = ""
  loc_68E6B0: FLdRfVar var_AC
  loc_68E6B3: LitI2_Byte 0
  loc_68E6B5: FLdPrThis
  loc_68E6B6: VCallAd Control_ID_Titulo
  loc_68E6B9: FStAdFunc var_A8
  loc_68E6BC: FLdPr var_A8
  loc_68E6BF: Set from_stack_2 = Me(from_stack_1)
  loc_68E6C4: FLdPr var_AC
  loc_68E6C7: LateIdLdVar var_E4 DispID_2 0
  loc_68E6CE: CR8Var
  loc_68E6D0: LitDate 1.1
  loc_68E6D9: MulR8
  loc_68E6DA: CVarR8
  loc_68E6DE: PopAdLdVar
  loc_68E6DF: FLdRfVar var_BC
  loc_68E6E2: LitI2_Byte 0
  loc_68E6E4: FLdPrThis
  loc_68E6E5: VCallAd Control_ID_Titulo
  loc_68E6E8: FStAdFunc var_B8
  loc_68E6EB: FLdPr var_B8
  loc_68E6EE: Set from_stack_2 = Me(from_stack_1)
  loc_68E6F3: FLdPr var_BC
  loc_68E6F6: LateIdSt
  loc_68E6FB: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E706: FFree1Var var_E4 = ""
  loc_68E709: FLdRfVar var_AC
  loc_68E70C: LitI2_Byte 0
  loc_68E70E: FLdPrThis
  loc_68E70F: VCallAd Control_ID_Titulo
  loc_68E712: FStAdFunc var_A8
  loc_68E715: FLdPr var_A8
  loc_68E718: Set from_stack_2 = Me(from_stack_1)
  loc_68E71D: FLdPr var_AC
  loc_68E720: LateIdLdVar var_E4 DispID_6 -32767
  loc_68E727: CR8Var
  loc_68E729: LitDate 1.25
  loc_68E732: MulR8
  loc_68E733: CVarR4
  loc_68E737: PopAdLdVar
  loc_68E738: FLdRfVar var_BC
  loc_68E73B: LitI2_Byte 0
  loc_68E73D: FLdPrThis
  loc_68E73E: VCallAd Control_ID_lblTankStatus
  loc_68E741: FStAdFunc var_B8
  loc_68E744: FLdPr var_B8
  loc_68E747: Set from_stack_2 = Me(from_stack_1)
  loc_68E74C: FLdPr var_BC
  loc_68E74F: LateIdSt
  loc_68E754: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E75F: FFree1Var var_E4 = ""
  loc_68E762: FLdRfVar var_AC
  loc_68E765: LitI2_Byte 0
  loc_68E767: FLdPrThis
  loc_68E768: VCallAd Control_ID_Titulo
  loc_68E76B: FStAdFunc var_A8
  loc_68E76E: FLdPr var_A8
  loc_68E771: Set from_stack_2 = Me(from_stack_1)
  loc_68E776: FLdPr var_AC
  loc_68E779: LateIdLdVar var_E4 DispID_5 -32767
  loc_68E780: CR8Var
  loc_68E782: CVarR4
  loc_68E786: PopAdLdVar
  loc_68E787: FLdRfVar var_BC
  loc_68E78A: LitI2_Byte 0
  loc_68E78C: FLdPrThis
  loc_68E78D: VCallAd Control_ID_lblTankStatus
  loc_68E790: FStAdFunc var_B8
  loc_68E793: FLdPr var_B8
  loc_68E796: Set from_stack_2 = Me(from_stack_1)
  loc_68E79B: FLdPr var_BC
  loc_68E79E: LateIdSt
  loc_68E7A3: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E7AE: FFree1Var var_E4 = ""
  loc_68E7B1: FLdRfVar var_B0
  loc_68E7B4: FLdRfVar var_AC
  loc_68E7B7: LitI2_Byte 0
  loc_68E7B9: FLdPrThis
  loc_68E7BA: VCallAd Control_ID_imgSemaforoVerde
  loc_68E7BD: FStAdFunc var_A8
  loc_68E7C0: FLdPr var_A8
  loc_68E7C3: Set from_stack_2 = Me(from_stack_1)
  loc_68E7C8: FLdPr var_AC
  loc_68E7CB:  = Me.Height
  loc_68E7D0: FLdFPR4 var_B0
  loc_68E7D3: LitDate 1.3
  loc_68E7DC: MulR8
  loc_68E7DD: PopFPR4
  loc_68E7DE: FLdRfVar var_BC
  loc_68E7E1: LitI2_Byte 0
  loc_68E7E3: FLdPrThis
  loc_68E7E4: VCallAd Control_ID_imgSemaforoVerde
  loc_68E7E7: FStAdFunc var_B8
  loc_68E7EA: FLdPr var_B8
  loc_68E7ED: Set from_stack_2 = Me(from_stack_1)
  loc_68E7F2: FLdPr var_BC
  loc_68E7F5: Me.Height = from_stack_1s
  loc_68E7FA: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E805: FLdRfVar var_B0
  loc_68E808: FLdRfVar var_AC
  loc_68E80B: LitI2_Byte 0
  loc_68E80D: FLdPrThis
  loc_68E80E: VCallAd Control_ID_imgSemaforoVerde
  loc_68E811: FStAdFunc var_A8
  loc_68E814: FLdPr var_A8
  loc_68E817: Set from_stack_2 = Me(from_stack_1)
  loc_68E81C: FLdPr var_AC
  loc_68E81F:  = Me.Width
  loc_68E824: FLdFPR4 var_B0
  loc_68E827: LitDate 1.6
  loc_68E830: MulR8
  loc_68E831: PopFPR4
  loc_68E832: FLdRfVar var_BC
  loc_68E835: LitI2_Byte 0
  loc_68E837: FLdPrThis
  loc_68E838: VCallAd Control_ID_imgSemaforoVerde
  loc_68E83B: FStAdFunc var_B8
  loc_68E83E: FLdPr var_B8
  loc_68E841: Set from_stack_2 = Me(from_stack_1)
  loc_68E846: FLdPr var_BC
  loc_68E849: Me.Width = from_stack_1s
  loc_68E84E: FFreeAd var_A8 = "": var_AC = "": var_B8 = ""
  loc_68E859: LitI2_Byte 3
  loc_68E85B: FLdPr Me
  loc_68E85E: MemStI2 global_188
  loc_68E861: LitVarI2 var_A4, 9
  loc_68E866: PopAdLdVar
  loc_68E867: FLdRfVar var_AC
  loc_68E86A: LitI2_Byte 0
  loc_68E86C: FLdPrThis
  loc_68E86D: VCallAd Control_ID_Titulo
  loc_68E870: FStAdFunc var_A8
  loc_68E873: FLdPr var_A8
  loc_68E876: Set from_stack_2 = Me(from_stack_1)
  loc_68E87B: FLdPr var_AC
  loc_68E87E: LateIdLdVar var_E4 DispID_-512 -1
  loc_68E885: CastAdVar Me
  loc_68E889: FStAdFunc var_B8
  loc_68E88C: FLdPr var_B8
  loc_68E88F: LateIdSt
  loc_68E894: FFreeAd var_A8 = "": var_AC = ""
  loc_68E89D: FFree1Var var_E4 = ""
  loc_68E8A0: Branch loc_68E95C
  loc_68E8A3: FLdUI1
  loc_68E8A7: LitI2_Byte &HA
  loc_68E8A9: CUI1I2
  loc_68E8AB: LitI2_Byte &HC
  loc_68E8AD: CUI1I2
  loc_68E8AF: BetweenUI1
  loc_68E8B1: BranchF loc_68E901
  loc_68E8B4: LitI4 &HC8
  loc_68E8B9: FLdPr Me
  loc_68E8BC: MemStI4 global_156
  loc_68E8BF: LitI4 &H3E8
  loc_68E8C4: FLdPr Me
  loc_68E8C7: MemStI4 global_152
  loc_68E8CA: LitI2_Byte 4
  loc_68E8CC: FLdPr Me
  loc_68E8CF: MemStI2 global_188
  loc_68E8D2: LitI2 2780
  loc_68E8D5: CR8I2
  loc_68E8D6: CVarR4
  loc_68E8DA: PopAdLdVar
  loc_68E8DB: FLdRfVar var_AC
  loc_68E8DE: LitI2_Byte 0
  loc_68E8E0: FLdPrThis
  loc_68E8E1: VCallAd Control_ID_Titulo
  loc_68E8E4: FStAdFunc var_A8
  loc_68E8E7: FLdPr var_A8
  loc_68E8EA: Set from_stack_2 = Me(from_stack_1)
  loc_68E8EF: FLdPr var_AC
  loc_68E8F2: LateIdSt
  loc_68E8F7: FFreeAd var_A8 = ""
  loc_68E8FE: Branch loc_68E95C
  loc_68E901: FLdUI1
  loc_68E905: LitI2_Byte &HD
  loc_68E907: CUI1I2
  loc_68E909: LitI2_Byte &H10
  loc_68E90B: CUI1I2
  loc_68E90D: BetweenUI1
  loc_68E90F: BranchF loc_68E95C
  loc_68E912: LitI4 &H64
  loc_68E917: FLdPr Me
  loc_68E91A: MemStI4 global_156
  loc_68E91D: LitI4 &HFA
  loc_68E922: FLdPr Me
  loc_68E925: MemStI4 global_152
  loc_68E928: LitI2_Byte 4
  loc_68E92A: FLdPr Me
  loc_68E92D: MemStI2 global_188
  loc_68E930: LitI2 2780
  loc_68E933: CR8I2
  loc_68E934: CVarR4
  loc_68E938: PopAdLdVar
  loc_68E939: FLdRfVar var_AC
  loc_68E93C: LitI2_Byte 0
  loc_68E93E: FLdPrThis
  loc_68E93F: VCallAd Control_ID_Titulo
  loc_68E942: FStAdFunc var_A8
  loc_68E945: FLdPr var_A8
  loc_68E948: Set from_stack_2 = Me(from_stack_1)
  loc_68E94D: FLdPr var_AC
  loc_68E950: LateIdSt
  loc_68E955: FFreeAd var_A8 = ""
  loc_68E95C: from_stack_1v = Proc_117_66_7172A0()
  loc_68E961: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5CBC74
  'Data Table: 44F8E0
  loc_5CBC64: LitI2_Byte 0
  loc_5CBC66: FLdPr Me
  loc_5CBC69: MemStI2 global_142
  loc_5CBC6C: LitI2_Byte 0
  loc_5CBC6E: ImpAdStI2 MemVar_74C7B0
  loc_5CBC71: ExitProcHresult
End Sub

Private Sub Form_Activate() '70F4BC
  'Data Table: 44F8E0
  loc_70DE64: FLdPr Me
  loc_70DE67: MemLdI2 global_142
  loc_70DE6A: BranchF loc_70DE71
  loc_70DE6D: ExitProcHresult
  loc_70DE6E: Branch loc_70DE79
  loc_70DE71: LitI2_Byte &HFF
  loc_70DE73: FLdPr Me
  loc_70DE76: MemStI2 global_142
  loc_70DE79: LitI2_Byte 0
  loc_70DE7B: PopTmpLdAd2 var_A2
  loc_70DE7E: ImpAdCallI2 Proc_53_4_718EF4()
  loc_70DE83: NotI4
  loc_70DE84: BranchF loc_70DE9D
  loc_70DE87: ILdRf Me
  loc_70DE8A: FStAdNoPop
  loc_70DE8E: ImpAdLdRf MemVar_7520D4
  loc_70DE91: NewIfNullPr Global
  loc_70DE94: Global.Unload from_stack_1
  loc_70DE99: FFree1Ad var_A8
  loc_70DE9C: ExitProcHresult
  loc_70DE9D: FLdRfVar var_1F4
  loc_70DEA0: LitVar_Missing var_1F0
  loc_70DEA3: LitVar_Missing var_1D0
  loc_70DEA6: LitVar_Missing var_1B0
  loc_70DEA9: LitVar_Missing var_190
  loc_70DEAC: LitVar_Missing var_170
  loc_70DEAF: LitVar_Missing var_150
  loc_70DEB2: LitVar_Missing var_130
  loc_70DEB5: LitVar_Missing var_110
  loc_70DEB8: LitVar_Missing var_F0
  loc_70DEBB: LitVar_Missing var_D0
  loc_70DEBE: LitStr "Tanques"
  loc_70DEC1: FStStrCopy var_B0
  loc_70DEC4: FLdRfVar var_B0
  loc_70DEC7: LitI4 &H32
  loc_70DECC: PopTmpLdAdStr var_AC
  loc_70DECF: LitI2_Byte &HF
  loc_70DED1: PopTmpLdAd2 var_A2
  loc_70DED4: ImpAdLdRf MemVar_74C7D0
  loc_70DED7: NewIfNullPr clsMsg
  loc_70DEDA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70DEDF: ILdRf var_1F4
  loc_70DEE2: FLdPr Me
  loc_70DEE5: Me.Caption = from_stack_1
  loc_70DEEA: FFreeStr var_B0 = ""
  loc_70DEF1: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70DF08: FLdRfVar var_1F4
  loc_70DF0B: LitVar_Missing var_1F0
  loc_70DF0E: LitVar_Missing var_1D0
  loc_70DF11: LitVar_Missing var_1B0
  loc_70DF14: LitVar_Missing var_190
  loc_70DF17: LitVar_Missing var_170
  loc_70DF1A: LitVar_Missing var_150
  loc_70DF1D: LitVar_Missing var_130
  loc_70DF20: LitVar_Missing var_110
  loc_70DF23: LitVar_Missing var_F0
  loc_70DF26: LitVar_Missing var_D0
  loc_70DF29: LitStr "&Aceptar"
  loc_70DF2C: FStStrCopy var_B0
  loc_70DF2F: FLdRfVar var_B0
  loc_70DF32: LitI4 &H33
  loc_70DF37: PopTmpLdAdStr var_AC
  loc_70DF3A: LitI2_Byte &HF
  loc_70DF3C: PopTmpLdAd2 var_A2
  loc_70DF3F: ImpAdLdRf MemVar_74C7D0
  loc_70DF42: NewIfNullPr clsMsg
  loc_70DF45: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70DF4A: FLdZeroAd var_1F4
  loc_70DF4D: CVarStr var_204
  loc_70DF50: PopAdLdVar
  loc_70DF51: FLdPrThis
  loc_70DF52: VCallAd Control_ID_Continuar
  loc_70DF55: FStAdFunc var_A8
  loc_70DF58: FLdPr var_A8
  loc_70DF5B: LateIdSt
  loc_70DF60: FFree1Str var_B0
  loc_70DF63: FFree1Ad var_A8
  loc_70DF66: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70DF7F: FLdRfVar var_1F4
  loc_70DF82: LitVar_Missing var_1F0
  loc_70DF85: LitVar_Missing var_1D0
  loc_70DF88: LitVar_Missing var_1B0
  loc_70DF8B: LitVar_Missing var_190
  loc_70DF8E: LitVar_Missing var_170
  loc_70DF91: LitVar_Missing var_150
  loc_70DF94: LitVar_Missing var_130
  loc_70DF97: LitVar_Missing var_110
  loc_70DF9A: LitVar_Missing var_F0
  loc_70DF9D: LitVar_Missing var_D0
  loc_70DFA0: LitStr "Altas"
  loc_70DFA3: FStStrCopy var_B0
  loc_70DFA6: FLdRfVar var_B0
  loc_70DFA9: LitI4 &H34
  loc_70DFAE: PopTmpLdAdStr var_AC
  loc_70DFB1: LitI2_Byte &HF
  loc_70DFB3: PopTmpLdAd2 var_A2
  loc_70DFB6: ImpAdLdRf MemVar_74C7D0
  loc_70DFB9: NewIfNullPr clsMsg
  loc_70DFBC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70DFC1: FLdZeroAd var_1F4
  loc_70DFC4: CVarStr var_204
  loc_70DFC7: PopAdLdVar
  loc_70DFC8: FLdPrThis
  loc_70DFC9: VCallAd Control_ID_Altas
  loc_70DFCC: FStAdFunc var_A8
  loc_70DFCF: FLdPr var_A8
  loc_70DFD2: LateIdSt
  loc_70DFD7: FFree1Str var_B0
  loc_70DFDA: FFree1Ad var_A8
  loc_70DFDD: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70DFF6: FLdRfVar var_1F4
  loc_70DFF9: LitVar_Missing var_1F0
  loc_70DFFC: LitVar_Missing var_1D0
  loc_70DFFF: LitVar_Missing var_1B0
  loc_70E002: LitVar_Missing var_190
  loc_70E005: LitVar_Missing var_170
  loc_70E008: LitVar_Missing var_150
  loc_70E00B: LitVar_Missing var_130
  loc_70E00E: LitVar_Missing var_110
  loc_70E011: LitVar_Missing var_F0
  loc_70E014: LitVar_Missing var_D0
  loc_70E017: LitStr "Bajas"
  loc_70E01A: FStStrCopy var_B0
  loc_70E01D: FLdRfVar var_B0
  loc_70E020: LitI4 &H35
  loc_70E025: PopTmpLdAdStr var_AC
  loc_70E028: LitI2_Byte &HF
  loc_70E02A: PopTmpLdAd2 var_A2
  loc_70E02D: ImpAdLdRf MemVar_74C7D0
  loc_70E030: NewIfNullPr clsMsg
  loc_70E033: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70E038: FLdZeroAd var_1F4
  loc_70E03B: CVarStr var_204
  loc_70E03E: PopAdLdVar
  loc_70E03F: FLdPrThis
  loc_70E040: VCallAd Control_ID_Bajas
  loc_70E043: FStAdFunc var_A8
  loc_70E046: FLdPr var_A8
  loc_70E049: LateIdSt
  loc_70E04E: FFree1Str var_B0
  loc_70E051: FFree1Ad var_A8
  loc_70E054: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70E06D: FLdRfVar var_1F4
  loc_70E070: LitVar_Missing var_1F0
  loc_70E073: LitVar_Missing var_1D0
  loc_70E076: LitVar_Missing var_1B0
  loc_70E079: LitVar_Missing var_190
  loc_70E07C: LitVar_Missing var_170
  loc_70E07F: LitVar_Missing var_150
  loc_70E082: LitVar_Missing var_130
  loc_70E085: LitVar_Missing var_110
  loc_70E088: LitVar_Missing var_F0
  loc_70E08B: LitVar_Missing var_D0
  loc_70E08E: LitStr "&Medición"
  loc_70E091: FStStrCopy var_B0
  loc_70E094: FLdRfVar var_B0
  loc_70E097: LitI4 &H38
  loc_70E09C: PopTmpLdAdStr var_AC
  loc_70E09F: LitI2_Byte &HF
  loc_70E0A1: PopTmpLdAd2 var_A2
  loc_70E0A4: ImpAdLdRf MemVar_74C7D0
  loc_70E0A7: NewIfNullPr clsMsg
  loc_70E0AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70E0AF: FLdZeroAd var_1F4
  loc_70E0B2: CVarStr var_204
  loc_70E0B5: PopAdLdVar
  loc_70E0B6: FLdPrThis
  loc_70E0B7: VCallAd Control_ID_sscForzarMedicion
  loc_70E0BA: FStAdFunc var_A8
  loc_70E0BD: FLdPr var_A8
  loc_70E0C0: LateIdSt
  loc_70E0C5: FFree1Str var_B0
  loc_70E0C8: FFree1Ad var_A8
  loc_70E0CB: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70E0E4: FLdRfVar var_1F4
  loc_70E0E7: LitVar_Missing var_1F0
  loc_70E0EA: LitVar_Missing var_1D0
  loc_70E0ED: LitVar_Missing var_1B0
  loc_70E0F0: LitVar_Missing var_190
  loc_70E0F3: LitVar_Missing var_170
  loc_70E0F6: LitVar_Missing var_150
  loc_70E0F9: LitVar_Missing var_130
  loc_70E0FC: LitVar_Missing var_110
  loc_70E0FF: LitVar_Missing var_F0
  loc_70E102: LitVar_Missing var_D0
  loc_70E105: LitStr "Mediciones manuales por varilla"
  loc_70E108: FStStrCopy var_B0
  loc_70E10B: FLdRfVar var_B0
  loc_70E10E: LitI4 &H36
  loc_70E113: PopTmpLdAdStr var_AC
  loc_70E116: LitI2_Byte &HF
  loc_70E118: PopTmpLdAd2 var_A2
  loc_70E11B: ImpAdLdRf MemVar_74C7D0
  loc_70E11E: NewIfNullPr clsMsg
  loc_70E121: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70E126: FLdZeroAd var_1F4
  loc_70E129: CVarStr var_204
  loc_70E12C: PopAdLdVar
  loc_70E12D: FLdPrThis
  loc_70E12E: VCallAd Control_ID_Mediciones
  loc_70E131: FStAdFunc var_A8
  loc_70E134: FLdPr var_A8
  loc_70E137: LateIdSt
  loc_70E13C: FFree1Str var_B0
  loc_70E13F: FFree1Ad var_A8
  loc_70E142: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70E15B: FLdRfVar var_1F4
  loc_70E15E: LitVar_Missing var_1F0
  loc_70E161: LitVar_Missing var_1D0
  loc_70E164: LitVar_Missing var_1B0
  loc_70E167: LitVar_Missing var_190
  loc_70E16A: LitVar_Missing var_170
  loc_70E16D: LitVar_Missing var_150
  loc_70E170: LitVar_Missing var_130
  loc_70E173: LitVar_Missing var_110
  loc_70E176: LitVar_Missing var_F0
  loc_70E179: LitVar_Missing var_D0
  loc_70E17C: LitStr "Volver al menú principal"
  loc_70E17F: FStStrCopy var_B0
  loc_70E182: FLdRfVar var_B0
  loc_70E185: LitI4 &H38
  loc_70E18A: PopTmpLdAdStr var_AC
  loc_70E18D: LitI2_Byte &HF
  loc_70E18F: PopTmpLdAd2 var_A2
  loc_70E192: ImpAdLdRf MemVar_74C7D0
  loc_70E195: NewIfNullPr clsMsg
  loc_70E198: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70E19D: FLdZeroAd var_1F4
  loc_70E1A0: CVarStr var_204
  loc_70E1A3: PopAdLdVar
  loc_70E1A4: FLdPrThis
  loc_70E1A5: VCallAd Control_ID_Continuar
  loc_70E1A8: FStAdFunc var_A8
  loc_70E1AB: FLdPr var_A8
  loc_70E1AE: LateIdSt
  loc_70E1B3: FFree1Str var_B0
  loc_70E1B6: FFree1Ad var_A8
  loc_70E1B9: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_70E1D2: FLdRfVar var_1F4
  loc_70E1D5: LitVar_Missing var_1F0
  loc_70E1D8: LitVar_Missing var_1D0
  loc_70E1DB: LitVar_Missing var_1B0
  loc_70E1DE: LitVar_Missing var_190
  loc_70E1E1: LitVar_Missing var_170
  loc_70E1E4: LitVar_Missing var_150
  loc_70E1E7: LitVar_Missing var_130
  loc_70E1EA: LitVar_Missing var_110
  loc_70E1ED: LitVar_Missing var_F0
  loc_70E1F0: LitVar_Missing var_D0
  loc_70E1F3: LitStr "Capacidad"
  loc_70E1F6: FStStrCopy var_B0
  loc_70E1F9: FLdRfVar var_B0
  loc_70E1FC: LitI4 &H37
  loc_70E201: PopTmpLdAdStr var_AC
  loc_70E204: LitI2_Byte &HF
  loc_70E206: PopTmpLdAd2 var_A2
  loc_70E209: ImpAdLdRf MemVar_74C7D0
  loc_70E20C: NewIfNullPr clsMsg
  loc_70E20F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70E214: FLdZeroAd var_1F4
  loc_70E217: FStStr var_A0
  loc_70E21A: FFree1Str var_B0
  loc_70E21D: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70E234: LitI2_Byte 0
  loc_70E236: FLdRfVar var_86
  loc_70E239: ImpAdLdUI1
  loc_70E23D: CI2UI1
  loc_70E23F: LitI2_Byte 1
  loc_70E241: SubI2
  loc_70E242: ForI2 var_208
  loc_70E248: FLdI2 var_86
  loc_70E24B: LitI2_Byte 1
  loc_70E24D: AddI2
  loc_70E24E: ImpAdCallI2 Proc_158_7_5DA158()
  loc_70E253: BranchF loc_70E261
  loc_70E256: FLdI2 var_86
  loc_70E259: PopTmpLdAd2 var_A2
  loc_70E25C: from_stack_2v = Proc_117_65_6135F8(from_stack_1v)
  loc_70E261: ImpAdLdUI1
  loc_70E265: CI2UI1
  loc_70E267: LitI2_Byte 9
  loc_70E269: GtI2
  loc_70E26A: BranchF loc_70E396
  loc_70E26D: FLdRfVar var_A2
  loc_70E270: FLdI2 var_86
  loc_70E273: LitI2_Byte 1
  loc_70E275: AddI2
  loc_70E276: CI4UI1
  loc_70E277: ImpAdLdRf MemVar_74C1D8
  loc_70E27A: Ary1LdUI1
  loc_70E27C: CI2UI1
  loc_70E27E: ImpAdLdRf MemVar_74A220
  loc_70E281: NewIfNullPr clsProducts
  loc_70E284:  = clsProducts.hWnd
  loc_70E289: FLdI2 var_A2
  loc_70E28C: BranchF loc_70E2F8
  loc_70E28F: FLdI2 var_86
  loc_70E292: LitI2_Byte 1
  loc_70E294: AddI2
  loc_70E295: CStrUI1
  loc_70E297: FStStrNoPop var_B0
  loc_70E29A: LitStr ":"
  loc_70E29D: ConcatStr
  loc_70E29E: FStStrNoPop var_20C
  loc_70E2A1: FLdRfVar var_1F4
  loc_70E2A4: FLdI2 var_86
  loc_70E2A7: LitI2_Byte 1
  loc_70E2A9: AddI2
  loc_70E2AA: CI4UI1
  loc_70E2AB: ImpAdLdRf MemVar_74C1D8
  loc_70E2AE: Ary1LdUI1
  loc_70E2B0: CI2UI1
  loc_70E2B2: ImpAdLdRf MemVar_74A220
  loc_70E2B5: NewIfNullPr clsProducts
  loc_70E2BD: ILdRf var_1F4
  loc_70E2C0: ConcatStr
  loc_70E2C1: CVarStr var_D0
  loc_70E2C4: PopAdLdVar
  loc_70E2C5: FLdRfVar var_210
  loc_70E2C8: FLdI2 var_86
  loc_70E2CB: FLdPrThis
  loc_70E2CC: VCallAd Control_ID_Titulo
  loc_70E2CF: FStAdFunc var_A8
  loc_70E2D2: FLdPr var_A8
  loc_70E2D5: Set from_stack_2 = Me(from_stack_1)
  loc_70E2DA: FLdPr var_210
  loc_70E2DD: LateIdSt
  loc_70E2E2: FFreeStr var_B0 = "": var_20C = ""
  loc_70E2EB: FFreeAd var_A8 = ""
  loc_70E2F2: FFree1Var var_D0 = ""
  loc_70E2F5: Branch loc_70E393
  loc_70E2F8: FLdI2 var_86
  loc_70E2FB: LitI2_Byte 1
  loc_70E2FD: AddI2
  loc_70E2FE: CStrUI1
  loc_70E300: FStStrNoPop var_B0
  loc_70E303: LitStr ":"
  loc_70E306: ConcatStr
  loc_70E307: FStStrNoPop var_20C
  loc_70E30A: FLdRfVar var_1F4
  loc_70E30D: FLdI2 var_86
  loc_70E310: LitI2_Byte 1
  loc_70E312: AddI2
  loc_70E313: CI4UI1
  loc_70E314: ImpAdLdRf MemVar_74C1D8
  loc_70E317: Ary1LdUI1
  loc_70E319: CI2UI1
  loc_70E31B: ImpAdLdRf MemVar_74A220
  loc_70E31E: NewIfNullPr clsProducts
  loc_70E326: ILdRf var_1F4
  loc_70E329: ConcatStr
  loc_70E32A: FStStrNoPop var_214
  loc_70E32D: LitStr " / "
  loc_70E330: ConcatStr
  loc_70E331: FStStrNoPop var_218
  loc_70E334: ILdRf var_A0
  loc_70E337: ConcatStr
  loc_70E338: FStStrNoPop var_21C
  loc_70E33B: LitStr ":"
  loc_70E33E: ConcatStr
  loc_70E33F: FStStrNoPop var_220
  loc_70E342: FLdI2 var_86
  loc_70E345: LitI2_Byte 1
  loc_70E347: AddI2
  loc_70E348: CI4UI1
  loc_70E349: ImpAdLdRf MemVar_74C2EC
  loc_70E34C: Ary1LdCy
  loc_70E34D: FnFixCy
  loc_70E34F: CStrCy
  loc_70E351: FStStrNoPop var_224
  loc_70E354: ConcatStr
  loc_70E355: CVarStr var_D0
  loc_70E358: PopAdLdVar
  loc_70E359: FLdRfVar var_210
  loc_70E35C: FLdI2 var_86
  loc_70E35F: FLdPrThis
  loc_70E360: VCallAd Control_ID_Titulo
  loc_70E363: FStAdFunc var_A8
  loc_70E366: FLdPr var_A8
  loc_70E369: Set from_stack_2 = Me(from_stack_1)
  loc_70E36E: FLdPr var_210
  loc_70E371: LateIdSt
  loc_70E376: FFreeStr var_B0 = "": var_20C = "": var_1F4 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70E389: FFreeAd var_A8 = ""
  loc_70E390: FFree1Var var_D0 = ""
  loc_70E393: Branch loc_70E4CE
  loc_70E396: FLdRfVar var_A2
  loc_70E399: FLdI2 var_86
  loc_70E39C: LitI2_Byte 1
  loc_70E39E: AddI2
  loc_70E39F: CI4UI1
  loc_70E3A0: ImpAdLdRf MemVar_74C1D8
  loc_70E3A3: Ary1LdUI1
  loc_70E3A5: CI2UI1
  loc_70E3A7: ImpAdLdRf MemVar_74A220
  loc_70E3AA: NewIfNullPr clsProducts
  loc_70E3AD:  = clsProducts.hWnd
  loc_70E3B2: FLdI2 var_A2
  loc_70E3B5: BranchF loc_70E421
  loc_70E3B8: FLdI2 var_86
  loc_70E3BB: LitI2_Byte 1
  loc_70E3BD: AddI2
  loc_70E3BE: CStrUI1
  loc_70E3C0: FStStrNoPop var_B0
  loc_70E3C3: LitStr ":"
  loc_70E3C6: ConcatStr
  loc_70E3C7: FStStrNoPop var_20C
  loc_70E3CA: FLdRfVar var_1F4
  loc_70E3CD: FLdI2 var_86
  loc_70E3D0: LitI2_Byte 1
  loc_70E3D2: AddI2
  loc_70E3D3: CI4UI1
  loc_70E3D4: ImpAdLdRf MemVar_74C1D8
  loc_70E3D7: Ary1LdUI1
  loc_70E3D9: CI2UI1
  loc_70E3DB: ImpAdLdRf MemVar_74A220
  loc_70E3DE: NewIfNullPr clsProducts
  loc_70E3E6: ILdRf var_1F4
  loc_70E3E9: ConcatStr
  loc_70E3EA: CVarStr var_D0
  loc_70E3ED: PopAdLdVar
  loc_70E3EE: FLdRfVar var_210
  loc_70E3F1: FLdI2 var_86
  loc_70E3F4: FLdPrThis
  loc_70E3F5: VCallAd Control_ID_Titulo
  loc_70E3F8: FStAdFunc var_A8
  loc_70E3FB: FLdPr var_A8
  loc_70E3FE: Set from_stack_2 = Me(from_stack_1)
  loc_70E403: FLdPr var_210
  loc_70E406: LateIdSt
  loc_70E40B: FFreeStr var_B0 = "": var_20C = ""
  loc_70E414: FFreeAd var_A8 = ""
  loc_70E41B: FFree1Var var_D0 = ""
  loc_70E41E: Branch loc_70E4CE
  loc_70E421: FLdI2 var_86
  loc_70E424: LitI2_Byte 1
  loc_70E426: AddI2
  loc_70E427: CStrUI1
  loc_70E429: FStStrNoPop var_B0
  loc_70E42C: LitStr " - "
  loc_70E42F: ConcatStr
  loc_70E430: FStStrNoPop var_20C
  loc_70E433: FLdRfVar var_1F4
  loc_70E436: FLdI2 var_86
  loc_70E439: LitI2_Byte 1
  loc_70E43B: AddI2
  loc_70E43C: CI4UI1
  loc_70E43D: ImpAdLdRf MemVar_74C1D8
  loc_70E440: Ary1LdUI1
  loc_70E442: CI2UI1
  loc_70E444: ImpAdLdRf MemVar_74A220
  loc_70E447: NewIfNullPr clsProducts
  loc_70E44F: ILdRf var_1F4
  loc_70E452: ConcatStr
  loc_70E453: CVarStr var_F0
  loc_70E456: LitI4 &HA
  loc_70E45B: FLdRfVar var_D0
  loc_70E45E: ImpAdCallFPR4  = Chr()
  loc_70E463: FLdRfVar var_D0
  loc_70E466: ConcatVar var_110
  loc_70E46A: ILdRf var_A0
  loc_70E46D: CVarStr var_C0
  loc_70E470: ConcatVar var_130
  loc_70E474: LitVarStr var_E0, ": "
  loc_70E479: ConcatVar var_150
  loc_70E47D: FLdI2 var_86
  loc_70E480: LitI2_Byte 1
  loc_70E482: AddI2
  loc_70E483: CI4UI1
  loc_70E484: ImpAdLdRf MemVar_74C2EC
  loc_70E487: Ary1LdCy
  loc_70E488: FnFixCy
  loc_70E48A: CVarCy var_100
  loc_70E48D: ConcatVar var_170
  loc_70E491: PopAdLdVar
  loc_70E492: FLdRfVar var_210
  loc_70E495: FLdI2 var_86
  loc_70E498: FLdPrThis
  loc_70E499: VCallAd Control_ID_Titulo
  loc_70E49C: FStAdFunc var_A8
  loc_70E49F: FLdPr var_A8
  loc_70E4A2: Set from_stack_2 = Me(from_stack_1)
  loc_70E4A7: FLdPr var_210
  loc_70E4AA: LateIdSt
  loc_70E4AF: FFreeStr var_B0 = "": var_20C = ""
  loc_70E4B8: FFreeAd var_A8 = ""
  loc_70E4BF: FFreeVar var_F0 = "": var_D0 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_70E4CE: LitVarStr var_C0, "WINDIR"
  loc_70E4D3: FStVarCopyObj var_D0
  loc_70E4D6: FLdRfVar var_D0
  loc_70E4D9: FLdRfVar var_F0
  loc_70E4DC: ImpAdCallFPR4  = Environ()
  loc_70E4E1: FLdRfVar var_F0
  loc_70E4E4: LitVarStr var_E0, "\cem44.ini"
  loc_70E4E9: ConcatVar var_110
  loc_70E4ED: CStrVarTmp
  loc_70E4EE: PopTmpLdAdStr
  loc_70E4F2: LitStr "ProdTankColor"
  loc_70E4F5: FStStrCopy var_1F4
  loc_70E4F8: FLdRfVar var_1F4
  loc_70E4FB: LitStr "GENERAL"
  loc_70E4FE: FStStrCopy var_B0
  loc_70E501: FLdRfVar var_B0
  loc_70E504: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70E509: FStStrNoPop var_214
  loc_70E50C: LitStr "1"
  loc_70E50F: NeStr
  loc_70E511: FFreeStr var_B0 = "": var_1F4 = "": var_20C = ""
  loc_70E51C: FFreeVar var_D0 = "": var_F0 = ""
  loc_70E525: BranchF loc_70EB64
  loc_70E528: FLdI2 var_86
  loc_70E52B: LitI2_Byte 1
  loc_70E52D: AddI2
  loc_70E52E: CI4UI1
  loc_70E52F: ImpAdLdRf MemVar_74C1D8
  loc_70E532: Ary1LdUI1
  loc_70E534: FStUI1 var_226
  loc_70E538: FLdUI1
  loc_70E53C: LitI2_Byte 1
  loc_70E53E: CUI1I2
  loc_70E540: EqI2
  loc_70E541: BranchT loc_70E550
  loc_70E544: FLdUI1
  loc_70E548: LitI2_Byte 6
  loc_70E54A: CUI1I2
  loc_70E54C: EqI2
  loc_70E54D: BranchF loc_70E674
  loc_70E550: LitVarStr var_C0, "WINDIR"
  loc_70E555: FStVarCopyObj var_D0
  loc_70E558: FLdRfVar var_D0
  loc_70E55B: FLdRfVar var_F0
  loc_70E55E: ImpAdCallFPR4  = Environ()
  loc_70E563: FLdRfVar var_F0
  loc_70E566: LitVarStr var_E0, "\cem44.ini"
  loc_70E56B: ConcatVar var_110
  loc_70E56F: CStrVarTmp
  loc_70E570: PopTmpLdAdStr
  loc_70E574: LitStr "TankProdColor"
  loc_70E577: FStStrCopy var_1F4
  loc_70E57A: FLdRfVar var_1F4
  loc_70E57D: LitStr "GENERAL"
  loc_70E580: FStStrCopy var_B0
  loc_70E583: FLdRfVar var_B0
  loc_70E586: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70E58B: FStStr var_224
  loc_70E58E: LitVar_Missing var_100
  loc_70E591: PopAdLdVar
  loc_70E592: LitStr "Color"
  loc_70E595: FLdI2 var_86
  loc_70E598: LitI2_Byte 1
  loc_70E59A: AddI2
  loc_70E59B: CI4UI1
  loc_70E59C: ImpAdLdRf MemVar_74C1D8
  loc_70E59F: Ary1LdUI1
  loc_70E5A1: CStrI2
  loc_70E5A3: FStStrNoPop var_218
  loc_70E5A6: ConcatStr
  loc_70E5A7: FStStrNoPop var_21C
  loc_70E5AA: LitStr "Properties\Color"
  loc_70E5AD: LitStr "CEM44"
  loc_70E5B0: ImpAdCallI2 GetSetting(, , , )
  loc_70E5B5: FStStrNoPop var_220
  loc_70E5B8: ImpAdCallFPR4 push Val()
  loc_70E5BD: FStFPR8 var_230
  loc_70E5C0: LitVarI4
  loc_70E5C8: FLdFPR8 var_230
  loc_70E5CB: CVarR8
  loc_70E5CF: FLdZeroAd var_224
  loc_70E5D2: FStStrNoPop var_214
  loc_70E5D5: LitStr "1"
  loc_70E5D8: EqStr
  loc_70E5DA: CVarBoolI2 var_120
  loc_70E5DE: FLdRfVar var_170
  loc_70E5E1: ImpAdCallFPR4  = IIf(, , )
  loc_70E5E6: FLdRfVar var_170
  loc_70E5E9: CI4Var
  loc_70E5EB: FStR4 var_8C
  loc_70E5EE: FFreeStr var_B0 = "": var_1F4 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70E601: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_70E612: ILdRf var_8C
  loc_70E615: LitI4 0
  loc_70E61A: EqI4
  loc_70E61B: BranchF loc_70E64A
  loc_70E61E: LitI4 &HFF00
  loc_70E623: FLdRfVar var_210
  loc_70E626: FLdI2 var_86
  loc_70E629: FLdPrThis
  loc_70E62A: VCallAd Control_ID_shpFloodProduct
  loc_70E62D: FStAdFunc var_A8
  loc_70E630: FLdPr var_A8
  loc_70E633: Set from_stack_2 = Me(from_stack_1)
  loc_70E638: FLdPr var_210
  loc_70E63B: Me.FillColor = from_stack_1
  loc_70E640: FFreeAd var_A8 = ""
  loc_70E647: Branch loc_70E671
  loc_70E64A: ILdRf var_8C
  loc_70E64D: FLdRfVar var_210
  loc_70E650: FLdI2 var_86
  loc_70E653: FLdPrThis
  loc_70E654: VCallAd Control_ID_shpFloodProduct
  loc_70E657: FStAdFunc var_A8
  loc_70E65A: FLdPr var_A8
  loc_70E65D: Set from_stack_2 = Me(from_stack_1)
  loc_70E662: FLdPr var_210
  loc_70E665: Me.FillColor = from_stack_1
  loc_70E66A: FFreeAd var_A8 = ""
  loc_70E671: Branch loc_70EB61
  loc_70E674: FLdUI1
  loc_70E678: LitI2_Byte 2
  loc_70E67A: CUI1I2
  loc_70E67C: EqI2
  loc_70E67D: BranchT loc_70E68C
  loc_70E680: FLdUI1
  loc_70E684: LitI2_Byte 7
  loc_70E686: CUI1I2
  loc_70E688: EqI2
  loc_70E689: BranchF loc_70E7B0
  loc_70E68C: LitVarStr var_C0, "WINDIR"
  loc_70E691: FStVarCopyObj var_D0
  loc_70E694: FLdRfVar var_D0
  loc_70E697: FLdRfVar var_F0
  loc_70E69A: ImpAdCallFPR4  = Environ()
  loc_70E69F: FLdRfVar var_F0
  loc_70E6A2: LitVarStr var_E0, "\cem44.ini"
  loc_70E6A7: ConcatVar var_110
  loc_70E6AB: CStrVarTmp
  loc_70E6AC: PopTmpLdAdStr
  loc_70E6B0: LitStr "TankProdColor"
  loc_70E6B3: FStStrCopy var_1F4
  loc_70E6B6: FLdRfVar var_1F4
  loc_70E6B9: LitStr "GENERAL"
  loc_70E6BC: FStStrCopy var_B0
  loc_70E6BF: FLdRfVar var_B0
  loc_70E6C2: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70E6C7: FStStr var_224
  loc_70E6CA: LitVar_Missing var_100
  loc_70E6CD: PopAdLdVar
  loc_70E6CE: LitStr "Color"
  loc_70E6D1: FLdI2 var_86
  loc_70E6D4: LitI2_Byte 1
  loc_70E6D6: AddI2
  loc_70E6D7: CI4UI1
  loc_70E6D8: ImpAdLdRf MemVar_74C1D8
  loc_70E6DB: Ary1LdUI1
  loc_70E6DD: CStrI2
  loc_70E6DF: FStStrNoPop var_218
  loc_70E6E2: ConcatStr
  loc_70E6E3: FStStrNoPop var_21C
  loc_70E6E6: LitStr "Properties\Color"
  loc_70E6E9: LitStr "CEM44"
  loc_70E6EC: ImpAdCallI2 GetSetting(, , , )
  loc_70E6F1: FStStrNoPop var_220
  loc_70E6F4: ImpAdCallFPR4 push Val()
  loc_70E6F9: FStFPR8 var_230
  loc_70E6FC: LitVarI4
  loc_70E704: FLdFPR8 var_230
  loc_70E707: CVarR8
  loc_70E70B: FLdZeroAd var_224
  loc_70E70E: FStStrNoPop var_214
  loc_70E711: LitStr "1"
  loc_70E714: EqStr
  loc_70E716: CVarBoolI2 var_120
  loc_70E71A: FLdRfVar var_170
  loc_70E71D: ImpAdCallFPR4  = IIf(, , )
  loc_70E722: FLdRfVar var_170
  loc_70E725: CI4Var
  loc_70E727: FStR4 var_8C
  loc_70E72A: FFreeStr var_B0 = "": var_1F4 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70E73D: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_70E74E: ILdRf var_8C
  loc_70E751: LitI4 0
  loc_70E756: EqI4
  loc_70E757: BranchF loc_70E786
  loc_70E75A: LitI4 &HFF80FF
  loc_70E75F: FLdRfVar var_210
  loc_70E762: FLdI2 var_86
  loc_70E765: FLdPrThis
  loc_70E766: VCallAd Control_ID_shpFloodProduct
  loc_70E769: FStAdFunc var_A8
  loc_70E76C: FLdPr var_A8
  loc_70E76F: Set from_stack_2 = Me(from_stack_1)
  loc_70E774: FLdPr var_210
  loc_70E777: Me.FillColor = from_stack_1
  loc_70E77C: FFreeAd var_A8 = ""
  loc_70E783: Branch loc_70E7AD
  loc_70E786: ILdRf var_8C
  loc_70E789: FLdRfVar var_210
  loc_70E78C: FLdI2 var_86
  loc_70E78F: FLdPrThis
  loc_70E790: VCallAd Control_ID_shpFloodProduct
  loc_70E793: FStAdFunc var_A8
  loc_70E796: FLdPr var_A8
  loc_70E799: Set from_stack_2 = Me(from_stack_1)
  loc_70E79E: FLdPr var_210
  loc_70E7A1: Me.FillColor = from_stack_1
  loc_70E7A6: FFreeAd var_A8 = ""
  loc_70E7AD: Branch loc_70EB61
  loc_70E7B0: FLdUI1
  loc_70E7B4: LitI2_Byte 3
  loc_70E7B6: CUI1I2
  loc_70E7B8: EqI2
  loc_70E7B9: BranchT loc_70E7C8
  loc_70E7BC: FLdUI1
  loc_70E7C0: LitI2_Byte 8
  loc_70E7C2: CUI1I2
  loc_70E7C4: EqI2
  loc_70E7C5: BranchF loc_70E8EC
  loc_70E7C8: LitVarStr var_C0, "WINDIR"
  loc_70E7CD: FStVarCopyObj var_D0
  loc_70E7D0: FLdRfVar var_D0
  loc_70E7D3: FLdRfVar var_F0
  loc_70E7D6: ImpAdCallFPR4  = Environ()
  loc_70E7DB: FLdRfVar var_F0
  loc_70E7DE: LitVarStr var_E0, "\cem44.ini"
  loc_70E7E3: ConcatVar var_110
  loc_70E7E7: CStrVarTmp
  loc_70E7E8: PopTmpLdAdStr
  loc_70E7EC: LitStr "TankProdColor"
  loc_70E7EF: FStStrCopy var_1F4
  loc_70E7F2: FLdRfVar var_1F4
  loc_70E7F5: LitStr "GENERAL"
  loc_70E7F8: FStStrCopy var_B0
  loc_70E7FB: FLdRfVar var_B0
  loc_70E7FE: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70E803: FStStr var_224
  loc_70E806: LitVar_Missing var_100
  loc_70E809: PopAdLdVar
  loc_70E80A: LitStr "Color"
  loc_70E80D: FLdI2 var_86
  loc_70E810: LitI2_Byte 1
  loc_70E812: AddI2
  loc_70E813: CI4UI1
  loc_70E814: ImpAdLdRf MemVar_74C1D8
  loc_70E817: Ary1LdUI1
  loc_70E819: CStrI2
  loc_70E81B: FStStrNoPop var_218
  loc_70E81E: ConcatStr
  loc_70E81F: FStStrNoPop var_21C
  loc_70E822: LitStr "Properties\Color"
  loc_70E825: LitStr "CEM44"
  loc_70E828: ImpAdCallI2 GetSetting(, , , )
  loc_70E82D: FStStrNoPop var_220
  loc_70E830: ImpAdCallFPR4 push Val()
  loc_70E835: FStFPR8 var_230
  loc_70E838: LitVarI4
  loc_70E840: FLdFPR8 var_230
  loc_70E843: CVarR8
  loc_70E847: FLdZeroAd var_224
  loc_70E84A: FStStrNoPop var_214
  loc_70E84D: LitStr "1"
  loc_70E850: EqStr
  loc_70E852: CVarBoolI2 var_120
  loc_70E856: FLdRfVar var_170
  loc_70E859: ImpAdCallFPR4  = IIf(, , )
  loc_70E85E: FLdRfVar var_170
  loc_70E861: CI4Var
  loc_70E863: FStR4 var_8C
  loc_70E866: FFreeStr var_B0 = "": var_1F4 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70E879: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_70E88A: ILdRf var_8C
  loc_70E88D: LitI4 0
  loc_70E892: EqI4
  loc_70E893: BranchF loc_70E8C2
  loc_70E896: LitI4 &HFFFF
  loc_70E89B: FLdRfVar var_210
  loc_70E89E: FLdI2 var_86
  loc_70E8A1: FLdPrThis
  loc_70E8A2: VCallAd Control_ID_shpFloodProduct
  loc_70E8A5: FStAdFunc var_A8
  loc_70E8A8: FLdPr var_A8
  loc_70E8AB: Set from_stack_2 = Me(from_stack_1)
  loc_70E8B0: FLdPr var_210
  loc_70E8B3: Me.FillColor = from_stack_1
  loc_70E8B8: FFreeAd var_A8 = ""
  loc_70E8BF: Branch loc_70E8E9
  loc_70E8C2: ILdRf var_8C
  loc_70E8C5: FLdRfVar var_210
  loc_70E8C8: FLdI2 var_86
  loc_70E8CB: FLdPrThis
  loc_70E8CC: VCallAd Control_ID_shpFloodProduct
  loc_70E8CF: FStAdFunc var_A8
  loc_70E8D2: FLdPr var_A8
  loc_70E8D5: Set from_stack_2 = Me(from_stack_1)
  loc_70E8DA: FLdPr var_210
  loc_70E8DD: Me.FillColor = from_stack_1
  loc_70E8E2: FFreeAd var_A8 = ""
  loc_70E8E9: Branch loc_70EB61
  loc_70E8EC: FLdUI1
  loc_70E8F0: LitI2_Byte 4
  loc_70E8F2: CUI1I2
  loc_70E8F4: EqI2
  loc_70E8F5: BranchT loc_70E904
  loc_70E8F8: FLdUI1
  loc_70E8FC: LitI2_Byte 9
  loc_70E8FE: CUI1I2
  loc_70E900: EqI2
  loc_70E901: BranchF loc_70EA28
  loc_70E904: LitVarStr var_C0, "WINDIR"
  loc_70E909: FStVarCopyObj var_D0
  loc_70E90C: FLdRfVar var_D0
  loc_70E90F: FLdRfVar var_F0
  loc_70E912: ImpAdCallFPR4  = Environ()
  loc_70E917: FLdRfVar var_F0
  loc_70E91A: LitVarStr var_E0, "\cem44.ini"
  loc_70E91F: ConcatVar var_110
  loc_70E923: CStrVarTmp
  loc_70E924: PopTmpLdAdStr
  loc_70E928: LitStr "TankProdColor"
  loc_70E92B: FStStrCopy var_1F4
  loc_70E92E: FLdRfVar var_1F4
  loc_70E931: LitStr "GENERAL"
  loc_70E934: FStStrCopy var_B0
  loc_70E937: FLdRfVar var_B0
  loc_70E93A: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70E93F: FStStr var_224
  loc_70E942: LitVar_Missing var_100
  loc_70E945: PopAdLdVar
  loc_70E946: LitStr "Color"
  loc_70E949: FLdI2 var_86
  loc_70E94C: LitI2_Byte 1
  loc_70E94E: AddI2
  loc_70E94F: CI4UI1
  loc_70E950: ImpAdLdRf MemVar_74C1D8
  loc_70E953: Ary1LdUI1
  loc_70E955: CStrI2
  loc_70E957: FStStrNoPop var_218
  loc_70E95A: ConcatStr
  loc_70E95B: FStStrNoPop var_21C
  loc_70E95E: LitStr "Properties\Color"
  loc_70E961: LitStr "CEM44"
  loc_70E964: ImpAdCallI2 GetSetting(, , , )
  loc_70E969: FStStrNoPop var_220
  loc_70E96C: ImpAdCallFPR4 push Val()
  loc_70E971: FStFPR8 var_230
  loc_70E974: LitVarI4
  loc_70E97C: FLdFPR8 var_230
  loc_70E97F: CVarR8
  loc_70E983: FLdZeroAd var_224
  loc_70E986: FStStrNoPop var_214
  loc_70E989: LitStr "1"
  loc_70E98C: EqStr
  loc_70E98E: CVarBoolI2 var_120
  loc_70E992: FLdRfVar var_170
  loc_70E995: ImpAdCallFPR4  = IIf(, , )
  loc_70E99A: FLdRfVar var_170
  loc_70E99D: CI4Var
  loc_70E99F: FStR4 var_8C
  loc_70E9A2: FFreeStr var_B0 = "": var_1F4 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70E9B5: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_70E9C6: ILdRf var_8C
  loc_70E9C9: LitI4 0
  loc_70E9CE: EqI4
  loc_70E9CF: BranchF loc_70E9FE
  loc_70E9D2: LitI4 &H80C0FF
  loc_70E9D7: FLdRfVar var_210
  loc_70E9DA: FLdI2 var_86
  loc_70E9DD: FLdPrThis
  loc_70E9DE: VCallAd Control_ID_shpFloodProduct
  loc_70E9E1: FStAdFunc var_A8
  loc_70E9E4: FLdPr var_A8
  loc_70E9E7: Set from_stack_2 = Me(from_stack_1)
  loc_70E9EC: FLdPr var_210
  loc_70E9EF: Me.FillColor = from_stack_1
  loc_70E9F4: FFreeAd var_A8 = ""
  loc_70E9FB: Branch loc_70EA25
  loc_70E9FE: ILdRf var_8C
  loc_70EA01: FLdRfVar var_210
  loc_70EA04: FLdI2 var_86
  loc_70EA07: FLdPrThis
  loc_70EA08: VCallAd Control_ID_shpFloodProduct
  loc_70EA0B: FStAdFunc var_A8
  loc_70EA0E: FLdPr var_A8
  loc_70EA11: Set from_stack_2 = Me(from_stack_1)
  loc_70EA16: FLdPr var_210
  loc_70EA19: Me.FillColor = from_stack_1
  loc_70EA1E: FFreeAd var_A8 = ""
  loc_70EA25: Branch loc_70EB61
  loc_70EA28: FLdUI1
  loc_70EA2C: LitI2_Byte 5
  loc_70EA2E: CUI1I2
  loc_70EA30: EqI2
  loc_70EA31: BranchT loc_70EA40
  loc_70EA34: FLdUI1
  loc_70EA38: LitI2_Byte &HA
  loc_70EA3A: CUI1I2
  loc_70EA3C: EqI2
  loc_70EA3D: BranchF loc_70EB61
  loc_70EA40: LitVarStr var_C0, "WINDIR"
  loc_70EA45: FStVarCopyObj var_D0
  loc_70EA48: FLdRfVar var_D0
  loc_70EA4B: FLdRfVar var_F0
  loc_70EA4E: ImpAdCallFPR4  = Environ()
  loc_70EA53: FLdRfVar var_F0
  loc_70EA56: LitVarStr var_E0, "\cem44.ini"
  loc_70EA5B: ConcatVar var_110
  loc_70EA5F: CStrVarTmp
  loc_70EA60: PopTmpLdAdStr
  loc_70EA64: LitStr "TankProdColor"
  loc_70EA67: FStStrCopy var_1F4
  loc_70EA6A: FLdRfVar var_1F4
  loc_70EA6D: LitStr "GENERAL"
  loc_70EA70: FStStrCopy var_B0
  loc_70EA73: FLdRfVar var_B0
  loc_70EA76: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70EA7B: FStStr var_224
  loc_70EA7E: LitVar_Missing var_100
  loc_70EA81: PopAdLdVar
  loc_70EA82: LitStr "Color"
  loc_70EA85: FLdI2 var_86
  loc_70EA88: LitI2_Byte 1
  loc_70EA8A: AddI2
  loc_70EA8B: CI4UI1
  loc_70EA8C: ImpAdLdRf MemVar_74C1D8
  loc_70EA8F: Ary1LdUI1
  loc_70EA91: CStrI2
  loc_70EA93: FStStrNoPop var_218
  loc_70EA96: ConcatStr
  loc_70EA97: FStStrNoPop var_21C
  loc_70EA9A: LitStr "Properties\Color"
  loc_70EA9D: LitStr "CEM44"
  loc_70EAA0: ImpAdCallI2 GetSetting(, , , )
  loc_70EAA5: FStStrNoPop var_220
  loc_70EAA8: ImpAdCallFPR4 push Val()
  loc_70EAAD: FStFPR8 var_230
  loc_70EAB0: LitVarI4
  loc_70EAB8: FLdFPR8 var_230
  loc_70EABB: CVarR8
  loc_70EABF: FLdZeroAd var_224
  loc_70EAC2: FStStrNoPop var_214
  loc_70EAC5: LitStr "1"
  loc_70EAC8: EqStr
  loc_70EACA: CVarBoolI2 var_120
  loc_70EACE: FLdRfVar var_170
  loc_70EAD1: ImpAdCallFPR4  = IIf(, , )
  loc_70EAD6: FLdRfVar var_170
  loc_70EAD9: CI4Var
  loc_70EADB: FStR4 var_8C
  loc_70EADE: FFreeStr var_B0 = "": var_1F4 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_70EAF1: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_70EB02: ILdRf var_8C
  loc_70EB05: LitI4 0
  loc_70EB0A: EqI4
  loc_70EB0B: BranchF loc_70EB3A
  loc_70EB0E: LitI4 &H3D3DFA
  loc_70EB13: FLdRfVar var_210
  loc_70EB16: FLdI2 var_86
  loc_70EB19: FLdPrThis
  loc_70EB1A: VCallAd Control_ID_shpFloodProduct
  loc_70EB1D: FStAdFunc var_A8
  loc_70EB20: FLdPr var_A8
  loc_70EB23: Set from_stack_2 = Me(from_stack_1)
  loc_70EB28: FLdPr var_210
  loc_70EB2B: Me.FillColor = from_stack_1
  loc_70EB30: FFreeAd var_A8 = ""
  loc_70EB37: Branch loc_70EB61
  loc_70EB3A: ILdRf var_8C
  loc_70EB3D: FLdRfVar var_210
  loc_70EB40: FLdI2 var_86
  loc_70EB43: FLdPrThis
  loc_70EB44: VCallAd Control_ID_shpFloodProduct
  loc_70EB47: FStAdFunc var_A8
  loc_70EB4A: FLdPr var_A8
  loc_70EB4D: Set from_stack_2 = Me(from_stack_1)
  loc_70EB52: FLdPr var_210
  loc_70EB55: Me.FillColor = from_stack_1
  loc_70EB5A: FFreeAd var_A8 = ""
  loc_70EB61: Branch loc_70ECC6
  loc_70EB64: LitVarStr var_E0, "TANK"
  loc_70EB69: FLdI2 var_86
  loc_70EB6C: LitI2_Byte 1
  loc_70EB6E: AddI2
  loc_70EB6F: CVarI2 var_D0
  loc_70EB72: FLdRfVar var_F0
  loc_70EB75: ImpAdCallFPR4  = Str()
  loc_70EB7A: FLdRfVar var_F0
  loc_70EB7D: FLdRfVar var_110
  loc_70EB80: ImpAdCallFPR4  = Trim()
  loc_70EB85: FLdRfVar var_110
  loc_70EB88: AddVar var_130
  loc_70EB8C: CStrVarTmp
  loc_70EB8D: FStStr var_98
  loc_70EB90: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_70EB9B: LitVarStr var_C0, "WINDIR"
  loc_70EBA0: FStVarCopyObj var_D0
  loc_70EBA3: FLdRfVar var_D0
  loc_70EBA6: FLdRfVar var_F0
  loc_70EBA9: ImpAdCallFPR4  = Environ()
  loc_70EBAE: FLdRfVar var_F0
  loc_70EBB1: LitVarStr var_E0, "\cem44.ini"
  loc_70EBB6: ConcatVar var_110
  loc_70EBBA: CStrVarTmp
  loc_70EBBB: PopTmpLdAdStr
  loc_70EBBF: FLdRfVar var_98
  loc_70EBC2: LitStr "ProdTankColor"
  loc_70EBC5: FStStrCopy var_B0
  loc_70EBC8: FLdRfVar var_B0
  loc_70EBCB: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_70EBD0: FStStr var_9C
  loc_70EBD3: FFreeStr var_B0 = ""
  loc_70EBDA: FFreeVar var_D0 = "": var_F0 = ""
  loc_70EBE3: LitVarI2 var_D0, 2
  loc_70EBE8: LitI4 1
  loc_70EBED: FLdRfVar var_9C
  loc_70EBF0: CVarRef
  loc_70EBF5: FLdRfVar var_F0
  loc_70EBF8: ImpAdCallFPR4  = Mid(, , )
  loc_70EBFD: FLdRfVar var_AC
  loc_70EC00: FLdRfVar var_F0
  loc_70EC03: CStrVarTmp
  loc_70EC04: PopTmpLdAdStr
  loc_70EC08: from_stack_2v = Proc_117_64_5E7A7C(from_stack_1v)
  loc_70EC0D: ILdRf var_AC
  loc_70EC10: CI2I4
  loc_70EC11: FStI2 var_8E
  loc_70EC14: FFree1Str var_B0
  loc_70EC17: FFreeVar var_D0 = ""
  loc_70EC1E: LitVarI2 var_D0, 2
  loc_70EC23: LitI4 3
  loc_70EC28: FLdRfVar var_9C
  loc_70EC2B: CVarRef
  loc_70EC30: FLdRfVar var_F0
  loc_70EC33: ImpAdCallFPR4  = Mid(, , )
  loc_70EC38: FLdRfVar var_AC
  loc_70EC3B: FLdRfVar var_F0
  loc_70EC3E: CStrVarTmp
  loc_70EC3F: PopTmpLdAdStr
  loc_70EC43: from_stack_2v = Proc_117_64_5E7A7C(from_stack_1v)
  loc_70EC48: ILdRf var_AC
  loc_70EC4B: CI2I4
  loc_70EC4C: FStI2 var_90
  loc_70EC4F: FFree1Str var_B0
  loc_70EC52: FFreeVar var_D0 = ""
  loc_70EC59: LitVarI2 var_D0, 2
  loc_70EC5E: LitI4 5
  loc_70EC63: FLdRfVar var_9C
  loc_70EC66: CVarRef
  loc_70EC6B: FLdRfVar var_F0
  loc_70EC6E: ImpAdCallFPR4  = Mid(, , )
  loc_70EC73: FLdRfVar var_AC
  loc_70EC76: FLdRfVar var_F0
  loc_70EC79: CStrVarTmp
  loc_70EC7A: PopTmpLdAdStr
  loc_70EC7E: from_stack_2v = Proc_117_64_5E7A7C(from_stack_1v)
  loc_70EC83: ILdRf var_AC
  loc_70EC86: CI2I4
  loc_70EC87: FStI2 var_92
  loc_70EC8A: FFree1Str var_B0
  loc_70EC8D: FFreeVar var_D0 = ""
  loc_70EC94: FLdI2 var_92
  loc_70EC97: FLdI2 var_90
  loc_70EC9A: FLdI2 var_8E
  loc_70EC9D: ImpAdCallI2 RGB(, , )
  loc_70ECA2: FLdRfVar var_210
  loc_70ECA5: FLdI2 var_86
  loc_70ECA8: FLdPrThis
  loc_70ECA9: VCallAd Control_ID_shpFloodProduct
  loc_70ECAC: FStAdFunc var_A8
  loc_70ECAF: FLdPr var_A8
  loc_70ECB2: Set from_stack_2 = Me(from_stack_1)
  loc_70ECB7: FLdPr var_210
  loc_70ECBA: Me.FillColor = from_stack_1
  loc_70ECBF: FFreeAd var_A8 = ""
  loc_70ECC6: FLdRfVar var_AC
  loc_70ECC9: FLdRfVar var_210
  loc_70ECCC: FLdI2 var_86
  loc_70ECCF: FLdPrThis
  loc_70ECD0: VCallAd Control_ID_shpFloodProduct
  loc_70ECD3: FStAdFunc var_A8
  loc_70ECD6: FLdPr var_A8
  loc_70ECD9: Set from_stack_2 = Me(from_stack_1)
  loc_70ECDE: FLdPr var_210
  loc_70ECE1:  = Me.FillColor
  loc_70ECE6: ILdRf var_AC
  loc_70ECE9: FLdRfVar var_238
  loc_70ECEC: FLdI2 var_86
  loc_70ECEF: FLdPrThis
  loc_70ECF0: VCallAd Control_ID_Combustible
  loc_70ECF3: FStAdFunc var_234
  loc_70ECF6: FLdPr var_234
  loc_70ECF9: Set from_stack_2 = Me(from_stack_1)
  loc_70ECFE: FLdPr var_238
  loc_70ED01: Me.ForeColor = from_stack_1
  loc_70ED06: FFreeAd var_A8 = "": var_210 = "": var_234 = ""
  loc_70ED11: FLdRfVar var_AC
  loc_70ED14: FLdRfVar var_210
  loc_70ED17: FLdI2 var_86
  loc_70ED1A: FLdPrThis
  loc_70ED1B: VCallAd Control_ID_Combustible
  loc_70ED1E: FStAdFunc var_A8
  loc_70ED21: FLdPr var_A8
  loc_70ED24: Set from_stack_2 = Me(from_stack_1)
  loc_70ED29: FLdPr var_210
  loc_70ED2C:  = Me.ForeColor
  loc_70ED31: ILdRf var_AC
  loc_70ED34: FLdRfVar var_238
  loc_70ED37: FLdI2 var_86
  loc_70ED3A: FLdPrThis
  loc_70ED3B: VCallAd Control_ID_lblTituloProducto
  loc_70ED3E: FStAdFunc var_234
  loc_70ED41: FLdPr var_234
  loc_70ED44: Set from_stack_2 = Me(from_stack_1)
  loc_70ED49: FLdPr var_238
  loc_70ED4C: Me.ForeColor = from_stack_1
  loc_70ED51: FFreeAd var_A8 = "": var_210 = "": var_234 = ""
  loc_70ED5C: FLdI2 var_86
  loc_70ED5F: LitI2_Byte 1
  loc_70ED61: AddI2
  loc_70ED62: ImpAdCallI2 Proc_158_7_5DA158()
  loc_70ED67: BranchF loc_70EE02
  loc_70ED6A: LitI2_Byte 0
  loc_70ED6C: FLdRfVar var_210
  loc_70ED6F: FLdI2 var_86
  loc_70ED72: FLdPrThis
  loc_70ED73: VCallAd Control_ID_lblTituloVacio
  loc_70ED76: FStAdFunc var_A8
  loc_70ED79: FLdPr var_A8
  loc_70ED7C: Set from_stack_2 = Me(from_stack_1)
  loc_70ED81: FLdPr var_210
  loc_70ED84: Me.Visible = from_stack_1b
  loc_70ED89: FFreeAd var_A8 = ""
  loc_70ED90: LitI2_Byte 0
  loc_70ED92: FLdRfVar var_210
  loc_70ED95: FLdI2 var_86
  loc_70ED98: FLdPrThis
  loc_70ED99: VCallAd Control_ID_lblTituloAgua
  loc_70ED9C: FStAdFunc var_A8
  loc_70ED9F: FLdPr var_A8
  loc_70EDA2: Set from_stack_2 = Me(from_stack_1)
  loc_70EDA7: FLdPr var_210
  loc_70EDAA: Me.Visible = from_stack_1b
  loc_70EDAF: FFreeAd var_A8 = ""
  loc_70EDB6: LitI2_Byte 0
  loc_70EDB8: FLdRfVar var_210
  loc_70EDBB: FLdI2 var_86
  loc_70EDBE: FLdPrThis
  loc_70EDBF: VCallAd Control_ID_Vacio
  loc_70EDC2: FStAdFunc var_A8
  loc_70EDC5: FLdPr var_A8
  loc_70EDC8: Set from_stack_2 = Me(from_stack_1)
  loc_70EDCD: FLdPr var_210
  loc_70EDD0: Me.Visible = from_stack_1b
  loc_70EDD5: FFreeAd var_A8 = ""
  loc_70EDDC: LitI2_Byte 0
  loc_70EDDE: FLdRfVar var_210
  loc_70EDE1: FLdI2 var_86
  loc_70EDE4: FLdPrThis
  loc_70EDE5: VCallAd Control_ID_Agua
  loc_70EDE8: FStAdFunc var_A8
  loc_70EDEB: FLdPr var_A8
  loc_70EDEE: Set from_stack_2 = Me(from_stack_1)
  loc_70EDF3: FLdPr var_210
  loc_70EDF6: Me.Visible = from_stack_1b
  loc_70EDFB: FFreeAd var_A8 = ""
  loc_70EE02: FLdRfVar var_86
  loc_70EE05: NextI2 var_208, loc_70E248
  loc_70EE0A: LitStr "0000000000000000"
  loc_70EE0D: FLdPr Me
  loc_70EE10: MemStStrCopy
  loc_70EE14: LitI4 &H80
  loc_70EE19: ImpAdCallI2 Chr$()
  loc_70EE1E: CVarStr var_D0
  loc_70EE21: LitI4 &H10
  loc_70EE26: FLdRfVar var_F0
  loc_70EE29: ImpAdCallFPR4  = String(, )
  loc_70EE2E: FLdRfVar var_F0
  loc_70EE31: CStrVarTmp
  loc_70EE32: FStStrNoPop var_B0
  loc_70EE35: FLdPr Me
  loc_70EE38: MemStStrCopy
  loc_70EE3C: FFree1Str var_B0
  loc_70EE3F: FFreeVar var_D0 = ""
  loc_70EE46: ImpAdLdUI1
  loc_70EE4A: CI2UI1
  loc_70EE4C: LitI2_Byte 0
  loc_70EE4E: GtI2
  loc_70EE4F: BranchF loc_70F3BC
  loc_70EE52: LitI2_Byte 0
  loc_70EE54: FLdRfVar var_86
  loc_70EE57: ImpAdLdUI1
  loc_70EE5B: CI2UI1
  loc_70EE5D: LitI2_Byte 1
  loc_70EE5F: SubI2
  loc_70EE60: ForI2 var_23C
  loc_70EE66: LitVar_FALSE
  loc_70EE6A: PopAdLdVar
  loc_70EE6B: FLdRfVar var_210
  loc_70EE6E: FLdI2 var_86
  loc_70EE71: FLdPrThis
  loc_70EE72: VCallAd Control_ID_Tictac
  loc_70EE75: FStAdFunc var_A8
  loc_70EE78: FLdPr var_A8
  loc_70EE7B: Set from_stack_2 = Me(from_stack_1)
  loc_70EE80: FLdPr var_210
  loc_70EE83: LateIdSt
  loc_70EE88: FFreeAd var_A8 = ""
  loc_70EE8F: FLdRfVar var_210
  loc_70EE92: FLdRfVar var_B0
  loc_70EE95: FLdRfVar var_A8
  loc_70EE98: ImpAdLdRf MemVar_7520D4
  loc_70EE9B: NewIfNullPr Global
  loc_70EE9E:  = Global.App
  loc_70EEA3: FLdPr var_A8
  loc_70EEA6:  = App.Path
  loc_70EEAB: ILdRf var_B0
  loc_70EEAE: LitStr "\circlock.bmp"
  loc_70EEB1: ConcatStr
  loc_70EEB2: CVarStr var_D0
  loc_70EEB5: PopAdLdVar
  loc_70EEB6: ImpAdLdRf MemVar_7520D4
  loc_70EEB9: NewIfNullPr Global
  loc_70EEBC: Global.LoadPictureOld from_stack_1
  loc_70EEC1: FLdZeroAd var_210
  loc_70EEC4: CVarAd
  loc_70EEC8: PopAdLdVar
  loc_70EEC9: FLdRfVar var_238
  loc_70EECC: FLdI2 var_86
  loc_70EECF: FLdPrThis
  loc_70EED0: VCallAd Control_ID_Tictac
  loc_70EED3: FStAdFunc var_234
  loc_70EED6: FLdPr var_234
  loc_70EED9: Set from_stack_2 = Me(from_stack_1)
  loc_70EEDE: FLdPr var_238
  loc_70EEE1: LateIdSt
  loc_70EEE6: FFree1Str var_B0
  loc_70EEE9: FFreeAd var_A8 = "": var_234 = ""
  loc_70EEF2: FFreeVar var_D0 = ""
  loc_70EEF9: LitI2_Byte 1
  loc_70EEFB: CStrUI1
  loc_70EEFD: CVarStr var_D0
  loc_70EF00: PopAdLdVar
  loc_70EF01: FLdRfVar var_210
  loc_70EF04: FLdI2 var_86
  loc_70EF07: FLdPrThis
  loc_70EF08: VCallAd Control_ID_Tictac
  loc_70EF0B: FStAdFunc var_A8
  loc_70EF0E: FLdPr var_A8
  loc_70EF11: Set from_stack_2 = Me(from_stack_1)
  loc_70EF16: FLdPr var_210
  loc_70EF19: LateIdSt
  loc_70EF1E: FFreeAd var_A8 = ""
  loc_70EF25: FFree1Var var_D0 = ""
  loc_70EF28: LitVarI2 var_C0, 16
  loc_70EF2D: PopAdLdVar
  loc_70EF2E: FLdRfVar var_210
  loc_70EF31: FLdI2 var_86
  loc_70EF34: FLdPrThis
  loc_70EF35: VCallAd Control_ID_Tictac
  loc_70EF38: FStAdFunc var_A8
  loc_70EF3B: FLdPr var_A8
  loc_70EF3E: Set from_stack_2 = Me(from_stack_1)
  loc_70EF43: FLdPr var_210
  loc_70EF46: LateIdSt
  loc_70EF4B: FFreeAd var_A8 = ""
  loc_70EF52: LitVar_FALSE
  loc_70EF56: PopAdLdVar
  loc_70EF57: FLdRfVar var_210
  loc_70EF5A: FLdI2 var_86
  loc_70EF5D: FLdPrThis
  loc_70EF5E: VCallAd Control_ID_lblTankStatus
  loc_70EF61: FStAdFunc var_A8
  loc_70EF64: FLdPr var_A8
  loc_70EF67: Set from_stack_2 = Me(from_stack_1)
  loc_70EF6C: FLdPr var_210
  loc_70EF6F: LateIdSt
  loc_70EF74: FFreeAd var_A8 = ""
  loc_70EF7B: LitVarStr var_C0, "Arial"
  loc_70EF80: PopAdLdVar
  loc_70EF81: FLdRfVar var_210
  loc_70EF84: FLdI2 var_86
  loc_70EF87: FLdPrThis
  loc_70EF88: VCallAd Control_ID_lblTankStatus
  loc_70EF8B: FStAdFunc var_A8
  loc_70EF8E: FLdPr var_A8
  loc_70EF91: Set from_stack_2 = Me(from_stack_1)
  loc_70EF96: FLdPr var_210
  loc_70EF99: LateIdSt
  loc_70EF9E: FFreeAd var_A8 = ""
  loc_70EFA5: LitVarI2 var_C0, 14
  loc_70EFAA: PopAdLdVar
  loc_70EFAB: FLdRfVar var_210
  loc_70EFAE: FLdI2 var_86
  loc_70EFB1: FLdPrThis
  loc_70EFB2: VCallAd Control_ID_lblTankStatus
  loc_70EFB5: FStAdFunc var_A8
  loc_70EFB8: FLdPr var_A8
  loc_70EFBB: Set from_stack_2 = Me(from_stack_1)
  loc_70EFC0: FLdPr var_210
  loc_70EFC3: LateIdSt
  loc_70EFC8: FFreeAd var_A8 = ""
  loc_70EFCF: LitVar_TRUE var_C0
  loc_70EFD2: PopAdLdVar
  loc_70EFD3: FLdRfVar var_210
  loc_70EFD6: FLdI2 var_86
  loc_70EFD9: FLdPrThis
  loc_70EFDA: VCallAd Control_ID_lblTankStatus
  loc_70EFDD: FStAdFunc var_A8
  loc_70EFE0: FLdPr var_A8
  loc_70EFE3: Set from_stack_2 = Me(from_stack_1)
  loc_70EFE8: FLdPr var_210
  loc_70EFEB: LateIdSt
  loc_70EFF0: FFreeAd var_A8 = ""
  loc_70EFF7: LitVarI4
  loc_70EFFF: PopAdLdVar
  loc_70F000: FLdRfVar var_210
  loc_70F003: FLdI2 var_86
  loc_70F006: FLdPrThis
  loc_70F007: VCallAd Control_ID_lblTankStatus
  loc_70F00A: FStAdFunc var_A8
  loc_70F00D: FLdPr var_A8
  loc_70F010: Set from_stack_2 = Me(from_stack_1)
  loc_70F015: FLdPr var_210
  loc_70F018: LateIdSt
  loc_70F01D: FFreeAd var_A8 = ""
  loc_70F024: LitVarI4
  loc_70F02C: PopAdLdVar
  loc_70F02D: FLdRfVar var_210
  loc_70F030: FLdI2 var_86
  loc_70F033: FLdPrThis
  loc_70F034: VCallAd Control_ID_lblTankStatus
  loc_70F037: FStAdFunc var_A8
  loc_70F03A: FLdPr var_A8
  loc_70F03D: Set from_stack_2 = Me(from_stack_1)
  loc_70F042: FLdPr var_210
  loc_70F045: LateIdSt
  loc_70F04A: FFreeAd var_A8 = ""
  loc_70F051: FLdRfVar var_86
  loc_70F054: NextI2 var_23C, loc_70EE66
  loc_70F059: ImpAdLdUI1
  loc_70F05D: CI2UI1
  loc_70F05F: LitI2_Byte 5
  loc_70F061: EqI2
  loc_70F062: BranchF loc_70F092
  loc_70F065: LitVar_FALSE
  loc_70F069: PopAdLdVar
  loc_70F06A: FLdPrThis
  loc_70F06B: VCallAd Control_ID_sscForzarMedicion
  loc_70F06E: FStAdFunc var_A8
  loc_70F071: FLdPr var_A8
  loc_70F074: LateIdSt
  loc_70F079: FFree1Ad var_A8
  loc_70F07C: LitVar_TRUE var_C0
  loc_70F07F: PopAdLdVar
  loc_70F080: FLdPrThis
  loc_70F081: VCallAd Control_ID_cmdSilencio
  loc_70F084: FStAdFunc var_A8
  loc_70F087: FLdPr var_A8
  loc_70F08A: LateIdSt
  loc_70F08F: FFree1Ad var_A8
  loc_70F092: FLdRfVar var_D0
  loc_70F095: FLdPr Me
  loc_70F098: MemLdRfVar from_stack_1.global_144
  loc_70F09B: FLdRfVar var_A8
  loc_70F09E: ImpAdLdRf MemVar_74C760
  loc_70F0A1: NewIfNullPr Formx
  loc_70F0A4: from_stack_1v = Formx.global_4589716Get()
  loc_70F0A9: FLdPr var_A8
  loc_70F0AC:  = Formx.KeyPreview
  loc_70F0B1: FLdRfVar var_D0
  loc_70F0B4: NotVar var_F0
  loc_70F0B8: CBoolVarNull
  loc_70F0BA: FFree1Ad var_A8
  loc_70F0BD: FFree1Var var_D0 = ""
  loc_70F0C0: BranchF loc_70F0EF
  loc_70F0C3: FLdRfVar var_D0
  loc_70F0C6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_70F0CB: FLdRfVar var_D0
  loc_70F0CE: CBoolVarNull
  loc_70F0D0: FFree1Var var_D0 = ""
  loc_70F0D3: BranchF loc_70F0EC
  loc_70F0D6: ILdRf Me
  loc_70F0D9: FStAdNoPop
  loc_70F0DD: ImpAdLdRf MemVar_7520D4
  loc_70F0E0: NewIfNullPr Global
  loc_70F0E3: Global.Unload from_stack_1
  loc_70F0E8: FFree1Ad var_A8
  loc_70F0EB: ExitProcHresult
  loc_70F0EC: Branch loc_70F092
  loc_70F0EF: FLdRfVar var_1F4
  loc_70F0F2: LitVar_Missing var_1F0
  loc_70F0F5: LitVar_Missing var_1D0
  loc_70F0F8: LitVar_Missing var_1B0
  loc_70F0FB: LitVar_Missing var_190
  loc_70F0FE: LitVar_Missing var_170
  loc_70F101: LitVar_Missing var_150
  loc_70F104: LitVar_Missing var_130
  loc_70F107: LitVar_Missing var_110
  loc_70F10A: LitVar_Missing var_F0
  loc_70F10D: LitVar_Missing var_D0
  loc_70F110: LitStr "&Fin Descarga"
  loc_70F113: FStStrCopy var_B0
  loc_70F116: FLdRfVar var_B0
  loc_70F119: LitI4 &H13
  loc_70F11E: PopTmpLdAdStr var_AC
  loc_70F121: LitI2_Byte &HF
  loc_70F123: PopTmpLdAd2 var_A2
  loc_70F126: ImpAdLdRf MemVar_74C7D0
  loc_70F129: NewIfNullPr clsMsg
  loc_70F12C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70F131: ILdRf var_1F4
  loc_70F134: FLdPr Me
  loc_70F137: MemStStrCopy
  loc_70F13B: FFreeStr var_B0 = ""
  loc_70F142: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70F159: FLdRfVar var_1F4
  loc_70F15C: LitVar_Missing var_1F0
  loc_70F15F: LitVar_Missing var_1D0
  loc_70F162: LitVar_Missing var_1B0
  loc_70F165: LitVar_Missing var_190
  loc_70F168: LitVar_Missing var_170
  loc_70F16B: LitVar_Missing var_150
  loc_70F16E: LitVar_Missing var_130
  loc_70F171: LitVar_Missing var_110
  loc_70F174: LitVar_Missing var_F0
  loc_70F177: LitVar_Missing var_D0
  loc_70F17A: LitStr "Indicar finalización de descarga de camión cisterna"
  loc_70F17D: FStStrCopy var_B0
  loc_70F180: FLdRfVar var_B0
  loc_70F183: LitI4 &H14
  loc_70F188: PopTmpLdAdStr var_AC
  loc_70F18B: LitI2_Byte &HF
  loc_70F18D: PopTmpLdAd2 var_A2
  loc_70F190: ImpAdLdRf MemVar_74C7D0
  loc_70F193: NewIfNullPr clsMsg
  loc_70F196: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70F19B: ILdRf var_1F4
  loc_70F19E: FLdPr Me
  loc_70F1A1: MemStStrCopy
  loc_70F1A5: FFreeStr var_B0 = ""
  loc_70F1AC: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70F1C3: FLdRfVar var_1F4
  loc_70F1C6: LitVar_Missing var_1F0
  loc_70F1C9: LitVar_Missing var_1D0
  loc_70F1CC: LitVar_Missing var_1B0
  loc_70F1CF: LitVar_Missing var_190
  loc_70F1D2: LitVar_Missing var_170
  loc_70F1D5: LitVar_Missing var_150
  loc_70F1D8: LitVar_Missing var_130
  loc_70F1DB: LitVar_Missing var_110
  loc_70F1DE: LitVar_Missing var_F0
  loc_70F1E1: LitVar_Missing var_D0
  loc_70F1E4: LitStr "&Inicio Descarga"
  loc_70F1E7: FStStrCopy var_B0
  loc_70F1EA: FLdRfVar var_B0
  loc_70F1ED: LitI4 &H15
  loc_70F1F2: PopTmpLdAdStr var_AC
  loc_70F1F5: LitI2_Byte &HF
  loc_70F1F7: PopTmpLdAd2 var_A2
  loc_70F1FA: ImpAdLdRf MemVar_74C7D0
  loc_70F1FD: NewIfNullPr clsMsg
  loc_70F200: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70F205: ILdRf var_1F4
  loc_70F208: FLdPr Me
  loc_70F20B: MemStStrCopy
  loc_70F20F: FFreeStr var_B0 = ""
  loc_70F216: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70F22D: FLdRfVar var_1F4
  loc_70F230: LitVar_Missing var_1F0
  loc_70F233: LitVar_Missing var_1D0
  loc_70F236: LitVar_Missing var_1B0
  loc_70F239: LitVar_Missing var_190
  loc_70F23C: LitVar_Missing var_170
  loc_70F23F: LitVar_Missing var_150
  loc_70F242: LitVar_Missing var_130
  loc_70F245: LitVar_Missing var_110
  loc_70F248: LitVar_Missing var_F0
  loc_70F24B: LitVar_Missing var_D0
  loc_70F24E: LitStr "Indicar inicio de descarga de camión cisterna"
  loc_70F251: FStStrCopy var_B0
  loc_70F254: FLdRfVar var_B0
  loc_70F257: LitI4 &H16
  loc_70F25C: PopTmpLdAdStr var_AC
  loc_70F25F: LitI2_Byte &HF
  loc_70F261: PopTmpLdAd2 var_A2
  loc_70F264: ImpAdLdRf MemVar_74C7D0
  loc_70F267: NewIfNullPr clsMsg
  loc_70F26A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70F26F: ILdRf var_1F4
  loc_70F272: FLdPr Me
  loc_70F275: MemStStrCopy
  loc_70F279: FFreeStr var_B0 = ""
  loc_70F280: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_70F297: FLdPr Me
  loc_70F29A: MemLdStr global_144
  loc_70F29D: LitStr "1"
  loc_70F2A0: EqStr
  loc_70F2A2: BranchF loc_70F2F7
  loc_70F2A5: FLdPr Me
  loc_70F2A8: MemLdStr strEndCharge
  loc_70F2AB: CVarStr var_C0
  loc_70F2AE: PopAdLdVar
  loc_70F2AF: FLdPrThis
  loc_70F2B0: VCallAd Control_ID_sscDescarga
  loc_70F2B3: FStAdFunc var_A8
  loc_70F2B6: FLdPr var_A8
  loc_70F2B9: LateIdSt
  loc_70F2BE: FFree1Ad var_A8
  loc_70F2C1: FLdPr Me
  loc_70F2C4: MemLdRfVar from_stack_1.strEndCharge1
  loc_70F2C7: CDargRef
  loc_70F2CB: FLdPrThis
  loc_70F2CC: VCallAd Control_ID_sscDescarga
  loc_70F2CF: FStAdFunc var_A8
  loc_70F2D2: FLdPr var_A8
  loc_70F2D5: LateIdSt
  loc_70F2DA: FFree1Ad var_A8
  loc_70F2DD: LitVar_FALSE
  loc_70F2E1: PopAdLdVar
  loc_70F2E2: FLdPrThis
  loc_70F2E3: VCallAd Control_ID_sscForzarMedicion
  loc_70F2E6: FStAdFunc var_A8
  loc_70F2E9: FLdPr var_A8
  loc_70F2EC: LateIdSt
  loc_70F2F1: FFree1Ad var_A8
  loc_70F2F4: Branch loc_70F353
  loc_70F2F7: FLdPr Me
  loc_70F2FA: MemLdStr strStartCharge
  loc_70F2FD: CVarStr var_C0
  loc_70F300: PopAdLdVar
  loc_70F301: FLdPrThis
  loc_70F302: VCallAd Control_ID_sscDescarga
  loc_70F305: FStAdFunc var_A8
  loc_70F308: FLdPr var_A8
  loc_70F30B: LateIdSt
  loc_70F310: FFree1Ad var_A8
  loc_70F313: FLdPr Me
  loc_70F316: MemLdRfVar from_stack_1.strStartCharge1
  loc_70F319: CDargRef
  loc_70F31D: FLdPrThis
  loc_70F31E: VCallAd Control_ID_sscDescarga
  loc_70F321: FStAdFunc var_A8
  loc_70F324: FLdPr var_A8
  loc_70F327: LateIdSt
  loc_70F32C: FFree1Ad var_A8
  loc_70F32F: LitVar_TRUE var_C0
  loc_70F332: PopAdLdVar
  loc_70F333: FLdPrThis
  loc_70F334: VCallAd Control_ID_sscForzarMedicion
  loc_70F337: FStAdFunc var_A8
  loc_70F33A: FLdPr var_A8
  loc_70F33D: LateIdSt
  loc_70F342: FFree1Ad var_A8
  loc_70F345: FLdPr Me
  loc_70F348: MemLdI2 global_130
  loc_70F34B: PopTmpLdAd2 var_A2
  loc_70F34E: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_70F353: LitVar_FALSE
  loc_70F357: PopAdLdVar
  loc_70F358: FLdPrThis
  loc_70F359: VCallAd Control_ID_Altas
  loc_70F35C: FStAdFunc var_A8
  loc_70F35F: FLdPr var_A8
  loc_70F362: LateIdSt
  loc_70F367: FFree1Ad var_A8
  loc_70F36A: LitVar_FALSE
  loc_70F36E: PopAdLdVar
  loc_70F36F: FLdPrThis
  loc_70F370: VCallAd Control_ID_Bajas
  loc_70F373: FStAdFunc var_A8
  loc_70F376: FLdPr var_A8
  loc_70F379: LateIdSt
  loc_70F37E: FFree1Ad var_A8
  loc_70F381: LitVar_FALSE
  loc_70F385: PopAdLdVar
  loc_70F386: FLdPrThis
  loc_70F387: VCallAd Control_ID_Mediciones
  loc_70F38A: FStAdFunc var_A8
  loc_70F38D: FLdPr var_A8
  loc_70F390: LateIdSt
  loc_70F395: FFree1Ad var_A8
  loc_70F398: LitI2_Byte &HFF
  loc_70F39A: FLdPrThis
  loc_70F39B: VCallAd Control_ID_Reloj
  loc_70F39E: FStAdFunc var_A8
  loc_70F3A1: FLdPr var_A8
  loc_70F3A4: Me.Enabled = from_stack_1b
  loc_70F3A9: FFree1Ad var_A8
  loc_70F3AC: LitI2_Byte 0
  loc_70F3AE: FLdPr Me
  loc_70F3B1: MemStI2 global_140
  loc_70F3B4: Call Reloj_Timer()
  loc_70F3B9: Branch loc_70F485
  loc_70F3BC: LitI2_Byte 0
  loc_70F3BE: FLdRfVar var_86
  loc_70F3C1: ImpAdLdUI1
  loc_70F3C5: CI2UI1
  loc_70F3C7: LitI2_Byte 1
  loc_70F3C9: SubI2
  loc_70F3CA: ForI2 var_240
  loc_70F3D0: LitVar_FALSE
  loc_70F3D4: PopAdLdVar
  loc_70F3D5: FLdRfVar var_210
  loc_70F3D8: FLdI2 var_86
  loc_70F3DB: FLdPrThis
  loc_70F3DC: VCallAd Control_ID_Tictac
  loc_70F3DF: FStAdFunc var_A8
  loc_70F3E2: FLdPr var_A8
  loc_70F3E5: Set from_stack_2 = Me(from_stack_1)
  loc_70F3EA: FLdPr var_210
  loc_70F3ED: LateIdSt
  loc_70F3F2: FFreeAd var_A8 = ""
  loc_70F3F9: FLdRfVar var_86
  loc_70F3FC: NextI2 var_240, loc_70F3D0
  loc_70F401: LitVar_FALSE
  loc_70F405: PopAdLdVar
  loc_70F406: FLdPrThis
  loc_70F407: VCallAd Control_ID_sscForzarMedicion
  loc_70F40A: FStAdFunc var_A8
  loc_70F40D: FLdPr var_A8
  loc_70F410: LateIdSt
  loc_70F415: FFree1Ad var_A8
  loc_70F418: LitVar_FALSE
  loc_70F41C: PopAdLdVar
  loc_70F41D: FLdPrThis
  loc_70F41E: VCallAd Control_ID_sscDescarga
  loc_70F421: FStAdFunc var_A8
  loc_70F424: FLdPr var_A8
  loc_70F427: LateIdSt
  loc_70F42C: FFree1Ad var_A8
  loc_70F42F: LitI2_Byte 0
  loc_70F431: FLdPrThis
  loc_70F432: VCallAd Control_ID_Reloj
  loc_70F435: FStAdFunc var_A8
  loc_70F438: FLdPr var_A8
  loc_70F43B: Me.Enabled = from_stack_1b
  loc_70F440: FFree1Ad var_A8
  loc_70F443: LitVar_TRUE var_C0
  loc_70F446: PopAdLdVar
  loc_70F447: FLdPrThis
  loc_70F448: VCallAd Control_ID_Altas
  loc_70F44B: FStAdFunc var_A8
  loc_70F44E: FLdPr var_A8
  loc_70F451: LateIdSt
  loc_70F456: FFree1Ad var_A8
  loc_70F459: LitVar_TRUE var_C0
  loc_70F45C: PopAdLdVar
  loc_70F45D: FLdPrThis
  loc_70F45E: VCallAd Control_ID_Bajas
  loc_70F461: FStAdFunc var_A8
  loc_70F464: FLdPr var_A8
  loc_70F467: LateIdSt
  loc_70F46C: FFree1Ad var_A8
  loc_70F46F: LitVar_TRUE var_C0
  loc_70F472: PopAdLdVar
  loc_70F473: FLdPrThis
  loc_70F474: VCallAd Control_ID_Mediciones
  loc_70F477: FStAdFunc var_A8
  loc_70F47A: FLdPr var_A8
  loc_70F47D: LateIdSt
  loc_70F482: FFree1Ad var_A8
  loc_70F485: LitI2_Byte 1
  loc_70F487: FLdRfVar var_86
  loc_70F48A: ImpAdLdUI1
  loc_70F48E: CI2UI1
  loc_70F490: ForI2 var_244
  loc_70F496: FLdRfVar var_86
  loc_70F499: Call RefreshTankTotals(from_stack_1v)
  loc_70F49E: FLdRfVar var_86
  loc_70F4A1: NextI2 var_244, loc_70F496
  loc_70F4A6: LitI2_Byte 0
  loc_70F4A8: FLdPr Me
  loc_70F4AB: MemStI2 global_130
  loc_70F4AE: FLdPr Me
  loc_70F4B1: MemLdRfVar from_stack_1.global_130
  loc_70F4B4: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_70F4B9: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5F3A38
  'Data Table: 44F8E0
  loc_5F3988: ILdI2 KeyCode
  loc_5F398B: FStI2 var_88
  loc_5F398E: FLdI2 var_88
  loc_5F3991: LitI4 &H70
  loc_5F3996: CI2I4
  loc_5F3997: LitI4 &H7B
  loc_5F399C: CI2I4
  loc_5F399D: BetweenI2
  loc_5F399F: BranchF loc_5F39E6
  loc_5F39A2: ILdI2 KeyCode
  loc_5F39A5: CI4UI1
  loc_5F39A6: LitI4 &H70
  loc_5F39AB: SubI4
  loc_5F39AC: LitI4 1
  loc_5F39B1: AddI4
  loc_5F39B2: CI2I4
  loc_5F39B3: FStI2 var_86
  loc_5F39B6: ILdI2 Shift
  loc_5F39B9: LitI2_Byte 1
  loc_5F39BB: EqI2
  loc_5F39BC: BranchF loc_5F39CB
  loc_5F39BF: FLdI2 var_86
  loc_5F39C2: LitI2_Byte &HA
  loc_5F39C4: AddI2
  loc_5F39C5: FStI2 var_86
  loc_5F39C8: Branch loc_5F39D5
  loc_5F39CB: ILdI2 Shift
  loc_5F39CE: LitI2_Byte 0
  loc_5F39D0: NeI2
  loc_5F39D1: BranchF loc_5F39D5
  loc_5F39D4: ExitProcHresult
  loc_5F39D5: FLdI2 var_86
  loc_5F39D8: LitI2_Byte 1
  loc_5F39DA: SubI2
  loc_5F39DB: PopTmpLdAd2 var_8A
  loc_5F39DE: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_5F39E3: Branch loc_5F3A32
  loc_5F39E6: FLdI2 var_88
  loc_5F39E9: LitI4 &H6D
  loc_5F39EE: CI2I4
  loc_5F39EF: EqI2
  loc_5F39F0: BranchF loc_5F39FB
  loc_5F39F3: Call Bajas_UnknownEvent_8()
  loc_5F39F8: Branch loc_5F3A32
  loc_5F39FB: FLdI2 var_88
  loc_5F39FE: LitI4 &H6B
  loc_5F3A03: CI2I4
  loc_5F3A04: EqI2
  loc_5F3A05: BranchF loc_5F3A10
  loc_5F3A08: Call Altas_UnknownEvent_8()
  loc_5F3A0D: Branch loc_5F3A32
  loc_5F3A10: FLdI2 var_88
  loc_5F3A13: LitI4 &H1B
  loc_5F3A18: CI2I4
  loc_5F3A19: EqI2
  loc_5F3A1A: BranchF loc_5F3A32
  loc_5F3A1D: ILdRf Me
  loc_5F3A20: FStAdNoPop
  loc_5F3A24: ImpAdLdRf MemVar_7520D4
  loc_5F3A27: NewIfNullPr Global
  loc_5F3A2A: Global.Unload from_stack_1
  loc_5F3A2F: FFree1Ad var_90
  loc_5F3A32: LitI2_Byte 0
  loc_5F3A34: IStI2 KeyCode
  loc_5F3A37: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '6CA9B0
  'Data Table: 44F8E0
  loc_6CA0AC: OnErrorGoto loc_6CA975
  loc_6CA0AF: FLdPr Me
  loc_6CA0B2: MemLdI2 global_140
  loc_6CA0B5: LitI2_Byte 4
  loc_6CA0B7: ModI2
  loc_6CA0B8: LitI2_Byte 0
  loc_6CA0BA: EqI2
  loc_6CA0BB: FLdPr Me
  loc_6CA0BE: MemLdI2 global_140
  loc_6CA0C1: LitI2_Byte 0
  loc_6CA0C3: EqI2
  loc_6CA0C4: OrI4
  loc_6CA0C5: BranchF loc_6CA16A
  loc_6CA0C8: FLdRfVar var_AC
  loc_6CA0CB: FLdRfVar var_8C
  loc_6CA0CE: FLdRfVar var_9C
  loc_6CA0D1: ImpAdLdRf MemVar_74C760
  loc_6CA0D4: NewIfNullPr Formx
  loc_6CA0D7: from_stack_1v = Formx.global_4589716Get()
  loc_6CA0DC: FLdPr var_9C
  loc_6CA0DF: Formx.Tag = from_stack_1
  loc_6CA0E4: FLdRfVar var_AC
  loc_6CA0E7: NotVar var_BC
  loc_6CA0EB: CBoolVarNull
  loc_6CA0ED: FFree1Ad var_9C
  loc_6CA0F0: FFree1Var var_AC = ""
  loc_6CA0F3: BranchF loc_6CA10D
  loc_6CA0F6: FLdRfVar var_AC
  loc_6CA0F9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6CA0FE: FLdRfVar var_AC
  loc_6CA101: CBoolVarNull
  loc_6CA103: FFree1Var var_AC = ""
  loc_6CA106: BranchF loc_6CA10A
  loc_6CA109: ExitProcHresult
  loc_6CA10A: Branch loc_6CA0C8
  loc_6CA10D: FLdRfVar var_AC
  loc_6CA110: FLdRfVar var_90
  loc_6CA113: FLdRfVar var_9C
  loc_6CA116: ImpAdLdRf MemVar_74C760
  loc_6CA119: NewIfNullPr Formx
  loc_6CA11C: from_stack_1v = Formx.global_4589716Get()
  loc_6CA121: FLdPr var_9C
  loc_6CA124:  = Formx.MDIChild
  loc_6CA129: FLdRfVar var_AC
  loc_6CA12C: NotVar var_BC
  loc_6CA130: CBoolVarNull
  loc_6CA132: FFree1Ad var_9C
  loc_6CA135: FFree1Var var_AC = ""
  loc_6CA138: BranchF loc_6CA167
  loc_6CA13B: FLdRfVar var_AC
  loc_6CA13E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6CA143: FLdRfVar var_AC
  loc_6CA146: CBoolVarNull
  loc_6CA148: FFree1Var var_AC = ""
  loc_6CA14B: BranchF loc_6CA164
  loc_6CA14E: ILdRf Me
  loc_6CA151: FStAdNoPop
  loc_6CA155: ImpAdLdRf MemVar_7520D4
  loc_6CA158: NewIfNullPr Global
  loc_6CA15B: Global.Unload from_stack_1
  loc_6CA160: FFree1Ad var_9C
  loc_6CA163: ExitProcHresult
  loc_6CA164: Branch loc_6CA10D
  loc_6CA167: Branch loc_6CA17C
  loc_6CA16A: FLdPr Me
  loc_6CA16D: MemLdStr global_132
  loc_6CA170: FStStrCopy var_8C
  loc_6CA173: FLdPr Me
  loc_6CA176: MemLdStr global_136
  loc_6CA179: FStStrCopy var_90
  loc_6CA17C: LitI2_Byte 1
  loc_6CA17E: FLdRfVar var_86
  loc_6CA181: ImpAdLdUI1
  loc_6CA185: CI2UI1
  loc_6CA187: ForI2 var_C0
  loc_6CA18D: ImpAdLdUI1
  loc_6CA191: CI2UI1
  loc_6CA193: FLdI2 var_86
  loc_6CA196: LitI2_Byte 1
  loc_6CA198: SubI2
  loc_6CA199: SubI2
  loc_6CA19A: LitI2_Byte 1
  loc_6CA19C: SubI2
  loc_6CA19D: FStI2 var_96
  loc_6CA1A0: FLdI2 var_86
  loc_6CA1A3: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6CA1A8: NotI4
  loc_6CA1A9: BranchF loc_6CA32B
  loc_6CA1AC: LitVarI2 var_AC, 1
  loc_6CA1B1: FLdI2 var_86
  loc_6CA1B4: CI4UI1
  loc_6CA1B5: ILdRf var_8C
  loc_6CA1B8: ImpAdCallI2 Mid$(, , )
  loc_6CA1BD: FStStrNoPop var_D4
  loc_6CA1C0: LitStr "1"
  loc_6CA1C3: EqStr
  loc_6CA1C5: FFree1Str var_D4
  loc_6CA1C8: FFree1Var var_AC = ""
  loc_6CA1CB: BranchF loc_6CA2BC
  loc_6CA1CE: LitVar_TRUE var_D0
  loc_6CA1D1: PopAdLdVar
  loc_6CA1D2: FLdRfVar var_D8
  loc_6CA1D5: FLdI2 var_96
  loc_6CA1D8: FLdPrThis
  loc_6CA1D9: VCallAd Control_ID_Tictac
  loc_6CA1DC: FStAdFunc var_9C
  loc_6CA1DF: FLdPr var_9C
  loc_6CA1E2: Set from_stack_2 = Me(from_stack_1)
  loc_6CA1E7: FLdPr var_D8
  loc_6CA1EA: LateIdSt
  loc_6CA1EF: FFreeAd var_9C = ""
  loc_6CA1F6: FLdRfVar var_D8
  loc_6CA1F9: FLdI2 var_96
  loc_6CA1FC: FLdPrThis
  loc_6CA1FD: VCallAd Control_ID_Tictac
  loc_6CA200: FStAdFunc var_9C
  loc_6CA203: FLdPr var_9C
  loc_6CA206: Set from_stack_2 = Me(from_stack_1)
  loc_6CA20B: FLdPr var_D8
  loc_6CA20E: LateIdLdVar var_AC DispID_11 -32767
  loc_6CA215: CStrVarTmp
  loc_6CA216: FStStrNoPop var_D4
  loc_6CA219: ImpAdCallFPR4 push Val()
  loc_6CA21E: CVarR8
  loc_6CA222: PopAdLdVar
  loc_6CA223: FLdRfVar var_E0
  loc_6CA226: FLdI2 var_96
  loc_6CA229: FLdPrThis
  loc_6CA22A: VCallAd Control_ID_Tictac
  loc_6CA22D: FStAdFunc var_DC
  loc_6CA230: FLdPr var_DC
  loc_6CA233: Set from_stack_2 = Me(from_stack_1)
  loc_6CA238: FLdPr var_E0
  loc_6CA23B: LateIdSt
  loc_6CA240: FFree1Str var_D4
  loc_6CA243: FFreeAd var_9C = "": var_D8 = "": var_DC = ""
  loc_6CA24E: FFree1Var var_AC = ""
  loc_6CA251: FLdRfVar var_D8
  loc_6CA254: FLdI2 var_96
  loc_6CA257: FLdPrThis
  loc_6CA258: VCallAd Control_ID_Tictac
  loc_6CA25B: FStAdFunc var_9C
  loc_6CA25E: FLdPr var_9C
  loc_6CA261: Set from_stack_2 = Me(from_stack_1)
  loc_6CA266: FLdPr var_D8
  loc_6CA269: LateIdLdVar var_AC DispID_11 -32767
  loc_6CA270: CStrVarTmp
  loc_6CA271: FStStrNoPop var_D4
  loc_6CA274: CI4Str
  loc_6CA275: LitI4 &H10
  loc_6CA27A: ModI4
  loc_6CA27B: LitI4 1
  loc_6CA280: AddI4
  loc_6CA281: CStrI4
  loc_6CA283: CVarStr var_BC
  loc_6CA286: PopAdLdVar
  loc_6CA287: FLdRfVar var_E0
  loc_6CA28A: FLdI2 var_96
  loc_6CA28D: FLdPrThis
  loc_6CA28E: VCallAd Control_ID_Tictac
  loc_6CA291: FStAdFunc var_DC
  loc_6CA294: FLdPr var_DC
  loc_6CA297: Set from_stack_2 = Me(from_stack_1)
  loc_6CA29C: FLdPr var_E0
  loc_6CA29F: LateIdSt
  loc_6CA2A4: FFree1Str var_D4
  loc_6CA2A7: FFreeAd var_9C = "": var_D8 = "": var_DC = ""
  loc_6CA2B2: FFreeVar var_AC = ""
  loc_6CA2B9: Branch loc_6CA32B
  loc_6CA2BC: LitVarI2 var_AC, 1
  loc_6CA2C1: FLdI2 var_86
  loc_6CA2C4: CI4UI1
  loc_6CA2C5: FLdPr Me
  loc_6CA2C8: MemLdStr global_132
  loc_6CA2CB: ImpAdCallI2 Mid$(, , )
  loc_6CA2D0: FStStrNoPop var_D4
  loc_6CA2D3: LitVarI2 var_BC, 1
  loc_6CA2D8: FLdI2 var_86
  loc_6CA2DB: CI4UI1
  loc_6CA2DC: ILdRf var_8C
  loc_6CA2DF: ImpAdCallI2 Mid$(, , )
  loc_6CA2E4: FStStrNoPop var_F4
  loc_6CA2E7: NeStr
  loc_6CA2E9: FFreeStr var_D4 = ""
  loc_6CA2F0: FFreeVar var_AC = ""
  loc_6CA2F7: BranchF loc_6CA32B
  loc_6CA2FA: LitVar_FALSE
  loc_6CA2FE: PopAdLdVar
  loc_6CA2FF: FLdRfVar var_D8
  loc_6CA302: FLdI2 var_96
  loc_6CA305: FLdPrThis
  loc_6CA306: VCallAd Control_ID_Tictac
  loc_6CA309: FStAdFunc var_9C
  loc_6CA30C: FLdPr var_9C
  loc_6CA30F: Set from_stack_2 = Me(from_stack_1)
  loc_6CA314: FLdPr var_D8
  loc_6CA317: LateIdSt
  loc_6CA31C: FFreeAd var_9C = ""
  loc_6CA323: FLdRfVar var_86
  loc_6CA326: Call RefreshTankTotals(from_stack_1v)
  loc_6CA32B: FLdRfVar var_86
  loc_6CA32E: NextI2 var_C0, loc_6CA18D
  loc_6CA333: FLdPr Me
  loc_6CA336: MemLdStr global_132
  loc_6CA339: ILdRf var_8C
  loc_6CA33C: NeStr
  loc_6CA33E: BranchF loc_6CA34B
  loc_6CA341: ILdRf var_8C
  loc_6CA344: FLdPr Me
  loc_6CA347: MemStStrCopy
  loc_6CA34B: ImpAdLdUI1
  loc_6CA34F: CI2UI1
  loc_6CA351: LitI2_Byte 0
  loc_6CA353: GtI2
  loc_6CA354: BranchF loc_6CA7F2
  loc_6CA357: LitI2_Byte 1
  loc_6CA359: FLdRfVar var_86
  loc_6CA35C: ImpAdLdUI1
  loc_6CA360: CI2UI1
  loc_6CA362: ForI2 var_F8
  loc_6CA368: FLdI2 var_86
  loc_6CA36B: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6CA370: NotI4
  loc_6CA371: BranchF loc_6CA7E5
  loc_6CA374: LitVarI2 var_AC, 1
  loc_6CA379: FLdI2 var_86
  loc_6CA37C: CI4UI1
  loc_6CA37D: ILdRf var_90
  loc_6CA380: ImpAdCallI2 Mid$(, , )
  loc_6CA385: FStStrNoPop var_D4
  loc_6CA388: ImpAdCallI2 Asc()
  loc_6CA38D: LitI2_Byte 1
  loc_6CA38F: AndI4
  loc_6CA390: FFree1Str var_D4
  loc_6CA393: FFree1Var var_AC = ""
  loc_6CA396: BranchF loc_6CA626
  loc_6CA399: FLdRfVar var_F4
  loc_6CA39C: LitVar_Missing var_200
  loc_6CA39F: LitVar_Missing var_1E0
  loc_6CA3A2: LitVar_Missing var_1C0
  loc_6CA3A5: LitVar_Missing var_1A0
  loc_6CA3A8: LitVar_Missing var_180
  loc_6CA3AB: LitVar_Missing var_160
  loc_6CA3AE: LitVar_Missing var_140
  loc_6CA3B1: LitVar_Missing var_120
  loc_6CA3B4: LitVar_Missing var_BC
  loc_6CA3B7: LitVar_Missing var_AC
  loc_6CA3BA: LitStr "Error"
  loc_6CA3BD: FStStrCopy var_D4
  loc_6CA3C0: FLdRfVar var_D4
  loc_6CA3C3: LitI4 &H1F
  loc_6CA3C8: PopTmpLdAdStr var_100
  loc_6CA3CB: LitI2_Byte &HF
  loc_6CA3CD: PopTmpLdAd2 var_FA
  loc_6CA3D0: ImpAdLdRf MemVar_74C7D0
  loc_6CA3D3: NewIfNullPr clsMsg
  loc_6CA3D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CA3DB: FLdZeroAd var_F4
  loc_6CA3DE: CVarStr var_210
  loc_6CA3E1: PopAdLdVar
  loc_6CA3E2: FLdRfVar var_D8
  loc_6CA3E5: FLdI2 var_86
  loc_6CA3E8: LitI2_Byte 1
  loc_6CA3EA: SubI2
  loc_6CA3EB: FLdPrThis
  loc_6CA3EC: VCallAd Control_ID_lblTankStatus
  loc_6CA3EF: FStAdFunc var_9C
  loc_6CA3F2: FLdPr var_9C
  loc_6CA3F5: Set from_stack_2 = Me(from_stack_1)
  loc_6CA3FA: FLdPr var_D8
  loc_6CA3FD: LateIdSt
  loc_6CA402: FFree1Str var_D4
  loc_6CA405: FFreeAd var_9C = ""
  loc_6CA40C: FFreeVar var_AC = "": var_BC = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = ""
  loc_6CA425: FLdRfVar var_D8
  loc_6CA428: FLdI2 var_86
  loc_6CA42B: LitI2_Byte 1
  loc_6CA42D: SubI2
  loc_6CA42E: FLdPrThis
  loc_6CA42F: VCallAd Control_ID_Titulo
  loc_6CA432: FStAdFunc var_9C
  loc_6CA435: FLdPr var_9C
  loc_6CA438: Set from_stack_2 = Me(from_stack_1)
  loc_6CA43D: FLdPr var_D8
  loc_6CA440: LateIdLdVar var_AC DispID_-501 -1
  loc_6CA447: CI4Var
  loc_6CA449: LitI4 &HFF0000
  loc_6CA44E: EqI4
  loc_6CA44F: FLdPrThis
  loc_6CA450: VCallAd Control_ID_sscForzarMedicion
  loc_6CA453: FStAdFunc var_DC
  loc_6CA456: FLdPr var_DC
  loc_6CA459: LateIdLdVar var_BC DispID_13 -32767
  loc_6CA460: CBoolVar
  loc_6CA462: AndI4
  loc_6CA463: FLdRfVar var_FA
  loc_6CA466: FLdI2 var_86
  loc_6CA469: CI4UI1
  loc_6CA46A: ImpAdLdRf MemVar_74C1D8
  loc_6CA46D: Ary1LdUI1
  loc_6CA46F: CI2UI1
  loc_6CA471: ImpAdLdRf MemVar_74A220
  loc_6CA474: NewIfNullPr clsProducts
  loc_6CA477:  = clsProducts.hWnd
  loc_6CA47C: FLdI2 var_FA
  loc_6CA47F: NotI4
  loc_6CA480: AndI4
  loc_6CA481: FFreeAd var_9C = "": var_D8 = ""
  loc_6CA48A: FFreeVar var_AC = ""
  loc_6CA491: BranchF loc_6CA4D6
  loc_6CA494: LitVar_TRUE var_D0
  loc_6CA497: PopAdLdVar
  loc_6CA498: FLdPrThis
  loc_6CA499: VCallAd Control_ID_Altas
  loc_6CA49C: FStAdFunc var_9C
  loc_6CA49F: FLdPr var_9C
  loc_6CA4A2: LateIdSt
  loc_6CA4A7: FFree1Ad var_9C
  loc_6CA4AA: LitVar_TRUE var_D0
  loc_6CA4AD: PopAdLdVar
  loc_6CA4AE: FLdPrThis
  loc_6CA4AF: VCallAd Control_ID_Bajas
  loc_6CA4B2: FStAdFunc var_9C
  loc_6CA4B5: FLdPr var_9C
  loc_6CA4B8: LateIdSt
  loc_6CA4BD: FFree1Ad var_9C
  loc_6CA4C0: LitVar_TRUE var_D0
  loc_6CA4C3: PopAdLdVar
  loc_6CA4C4: FLdPrThis
  loc_6CA4C5: VCallAd Control_ID_Mediciones
  loc_6CA4C8: FStAdFunc var_9C
  loc_6CA4CB: FLdPr var_9C
  loc_6CA4CE: LateIdSt
  loc_6CA4D3: FFree1Ad var_9C
  loc_6CA4D6: FLdRfVar var_D8
  loc_6CA4D9: FLdI2 var_86
  loc_6CA4DC: LitI2_Byte 1
  loc_6CA4DE: SubI2
  loc_6CA4DF: FLdPrThis
  loc_6CA4E0: VCallAd Control_ID_Tictac
  loc_6CA4E3: FStAdFunc var_9C
  loc_6CA4E6: FLdPr var_9C
  loc_6CA4E9: Set from_stack_2 = Me(from_stack_1)
  loc_6CA4EE: FLdPr var_D8
  loc_6CA4F1: LateIdLdVar var_AC DispID_7 -32767
  loc_6CA4F8: CBoolVar
  loc_6CA4FA: FFreeAd var_9C = ""
  loc_6CA501: FFree1Var var_AC = ""
  loc_6CA504: BranchF loc_6CA536
  loc_6CA507: LitVar_FALSE
  loc_6CA50B: PopAdLdVar
  loc_6CA50C: FLdRfVar var_D8
  loc_6CA50F: FLdI2 var_86
  loc_6CA512: LitI2_Byte 1
  loc_6CA514: SubI2
  loc_6CA515: FLdPrThis
  loc_6CA516: VCallAd Control_ID_lblTankStatus
  loc_6CA519: FStAdFunc var_9C
  loc_6CA51C: FLdPr var_9C
  loc_6CA51F: Set from_stack_2 = Me(from_stack_1)
  loc_6CA524: FLdPr var_D8
  loc_6CA527: LateIdSt
  loc_6CA52C: FFreeAd var_9C = ""
  loc_6CA533: Branch loc_6CA561
  loc_6CA536: LitVar_TRUE var_D0
  loc_6CA539: PopAdLdVar
  loc_6CA53A: FLdRfVar var_D8
  loc_6CA53D: FLdI2 var_86
  loc_6CA540: LitI2_Byte 1
  loc_6CA542: SubI2
  loc_6CA543: FLdPrThis
  loc_6CA544: VCallAd Control_ID_lblTankStatus
  loc_6CA547: FStAdFunc var_9C
  loc_6CA54A: FLdPr var_9C
  loc_6CA54D: Set from_stack_2 = Me(from_stack_1)
  loc_6CA552: FLdPr var_D8
  loc_6CA555: LateIdSt
  loc_6CA55A: FFreeAd var_9C = ""
  loc_6CA561: FLdRfVar var_D8
  loc_6CA564: FLdI2 var_86
  loc_6CA567: LitI2_Byte 1
  loc_6CA569: SubI2
  loc_6CA56A: FLdPrThis
  loc_6CA56B: VCallAd Control_ID_lblTankStatus
  loc_6CA56E: FStAdFunc var_9C
  loc_6CA571: FLdPr var_9C
  loc_6CA574: Set from_stack_2 = Me(from_stack_1)
  loc_6CA579: FLdPr var_D8
  loc_6CA57C: LateIdLdVar var_AC DispID_5 -32767
  loc_6CA583: CR8Var
  loc_6CA585: LitI2_Byte &H32
  loc_6CA587: CR8I2
  loc_6CA588: GtR4
  loc_6CA589: FFreeAd var_9C = ""
  loc_6CA590: FFree1Var var_AC = ""
  loc_6CA593: BranchF loc_6CA5C8
  loc_6CA596: LitI2_Byte 0
  loc_6CA598: CR8I2
  loc_6CA599: CVarR4
  loc_6CA59D: PopAdLdVar
  loc_6CA59E: FLdRfVar var_D8
  loc_6CA5A1: FLdI2 var_86
  loc_6CA5A4: LitI2_Byte 1
  loc_6CA5A6: SubI2
  loc_6CA5A7: FLdPrThis
  loc_6CA5A8: VCallAd Control_ID_lblTankStatus
  loc_6CA5AB: FStAdFunc var_9C
  loc_6CA5AE: FLdPr var_9C
  loc_6CA5B1: Set from_stack_2 = Me(from_stack_1)
  loc_6CA5B6: FLdPr var_D8
  loc_6CA5B9: LateIdSt
  loc_6CA5BE: FFreeAd var_9C = ""
  loc_6CA5C5: Branch loc_6CA623
  loc_6CA5C8: FLdRfVar var_D8
  loc_6CA5CB: FLdI2 var_86
  loc_6CA5CE: LitI2_Byte 1
  loc_6CA5D0: SubI2
  loc_6CA5D1: FLdPrThis
  loc_6CA5D2: VCallAd Control_ID_Titulo
  loc_6CA5D5: FStAdFunc var_9C
  loc_6CA5D8: FLdPr var_9C
  loc_6CA5DB: Set from_stack_2 = Me(from_stack_1)
  loc_6CA5E0: FLdPr var_D8
  loc_6CA5E3: LateIdLdVar var_AC DispID_5 -32767
  loc_6CA5EA: CR8Var
  loc_6CA5EC: LitI2_Byte &H14
  loc_6CA5EE: CR8I2
  loc_6CA5EF: SubR4
  loc_6CA5F0: CVarR4
  loc_6CA5F4: PopAdLdVar
  loc_6CA5F5: FLdRfVar var_E0
  loc_6CA5F8: FLdI2 var_86
  loc_6CA5FB: LitI2_Byte 1
  loc_6CA5FD: SubI2
  loc_6CA5FE: FLdPrThis
  loc_6CA5FF: VCallAd Control_ID_lblTankStatus
  loc_6CA602: FStAdFunc var_DC
  loc_6CA605: FLdPr var_DC
  loc_6CA608: Set from_stack_2 = Me(from_stack_1)
  loc_6CA60D: FLdPr var_E0
  loc_6CA610: LateIdSt
  loc_6CA615: FFreeAd var_9C = "": var_D8 = "": var_DC = ""
  loc_6CA620: FFree1Var var_AC = ""
  loc_6CA623: Branch loc_6CA7E5
  loc_6CA626: LitVarI2 var_AC, 1
  loc_6CA62B: FLdI2 var_86
  loc_6CA62E: CI4UI1
  loc_6CA62F: ILdRf var_90
  loc_6CA632: ImpAdCallI2 Mid$(, , )
  loc_6CA637: FStStrNoPop var_D4
  loc_6CA63A: ImpAdCallI2 Asc()
  loc_6CA63F: LitI2_Byte &H1E
  loc_6CA641: AndI4
  loc_6CA642: FFree1Str var_D4
  loc_6CA645: FFree1Var var_AC = ""
  loc_6CA648: BranchF loc_6CA73D
  loc_6CA64B: LitVarStr var_D0, "Alarma"
  loc_6CA650: PopAdLdVar
  loc_6CA651: FLdRfVar var_D8
  loc_6CA654: FLdI2 var_86
  loc_6CA657: LitI2_Byte 1
  loc_6CA659: SubI2
  loc_6CA65A: FLdPrThis
  loc_6CA65B: VCallAd Control_ID_lblTankStatus
  loc_6CA65E: FStAdFunc var_9C
  loc_6CA661: FLdPr var_9C
  loc_6CA664: Set from_stack_2 = Me(from_stack_1)
  loc_6CA669: FLdPr var_D8
  loc_6CA66C: LateIdSt
  loc_6CA671: FFreeAd var_9C = ""
  loc_6CA678: FLdRfVar var_D8
  loc_6CA67B: FLdI2 var_86
  loc_6CA67E: LitI2_Byte 1
  loc_6CA680: SubI2
  loc_6CA681: FLdPrThis
  loc_6CA682: VCallAd Control_ID_lblTankStatus
  loc_6CA685: FStAdFunc var_9C
  loc_6CA688: FLdPr var_9C
  loc_6CA68B: Set from_stack_2 = Me(from_stack_1)
  loc_6CA690: FLdPr var_D8
  loc_6CA693: LateIdLdVar var_AC DispID_5 -32767
  loc_6CA69A: CR8Var
  loc_6CA69C: LitI2_Byte &H32
  loc_6CA69E: CR8I2
  loc_6CA69F: GtR4
  loc_6CA6A0: FFreeAd var_9C = ""
  loc_6CA6A7: FFree1Var var_AC = ""
  loc_6CA6AA: BranchF loc_6CA6DF
  loc_6CA6AD: LitI2_Byte 0
  loc_6CA6AF: CR8I2
  loc_6CA6B0: CVarR4
  loc_6CA6B4: PopAdLdVar
  loc_6CA6B5: FLdRfVar var_D8
  loc_6CA6B8: FLdI2 var_86
  loc_6CA6BB: LitI2_Byte 1
  loc_6CA6BD: SubI2
  loc_6CA6BE: FLdPrThis
  loc_6CA6BF: VCallAd Control_ID_lblTankStatus
  loc_6CA6C2: FStAdFunc var_9C
  loc_6CA6C5: FLdPr var_9C
  loc_6CA6C8: Set from_stack_2 = Me(from_stack_1)
  loc_6CA6CD: FLdPr var_D8
  loc_6CA6D0: LateIdSt
  loc_6CA6D5: FFreeAd var_9C = ""
  loc_6CA6DC: Branch loc_6CA73A
  loc_6CA6DF: FLdRfVar var_D8
  loc_6CA6E2: FLdI2 var_86
  loc_6CA6E5: LitI2_Byte 1
  loc_6CA6E7: SubI2
  loc_6CA6E8: FLdPrThis
  loc_6CA6E9: VCallAd Control_ID_Titulo
  loc_6CA6EC: FStAdFunc var_9C
  loc_6CA6EF: FLdPr var_9C
  loc_6CA6F2: Set from_stack_2 = Me(from_stack_1)
  loc_6CA6F7: FLdPr var_D8
  loc_6CA6FA: LateIdLdVar var_AC DispID_5 -32767
  loc_6CA701: CR8Var
  loc_6CA703: LitI2_Byte &H14
  loc_6CA705: CR8I2
  loc_6CA706: SubR4
  loc_6CA707: CVarR4
  loc_6CA70B: PopAdLdVar
  loc_6CA70C: FLdRfVar var_E0
  loc_6CA70F: FLdI2 var_86
  loc_6CA712: LitI2_Byte 1
  loc_6CA714: SubI2
  loc_6CA715: FLdPrThis
  loc_6CA716: VCallAd Control_ID_lblTankStatus
  loc_6CA719: FStAdFunc var_DC
  loc_6CA71C: FLdPr var_DC
  loc_6CA71F: Set from_stack_2 = Me(from_stack_1)
  loc_6CA724: FLdPr var_E0
  loc_6CA727: LateIdSt
  loc_6CA72C: FFreeAd var_9C = "": var_D8 = "": var_DC = ""
  loc_6CA737: FFree1Var var_AC = ""
  loc_6CA73A: Branch loc_6CA7E5
  loc_6CA73D: FLdRfVar var_D8
  loc_6CA740: FLdI2 var_86
  loc_6CA743: LitI2_Byte 1
  loc_6CA745: SubI2
  loc_6CA746: FLdPrThis
  loc_6CA747: VCallAd Control_ID_Titulo
  loc_6CA74A: FStAdFunc var_9C
  loc_6CA74D: FLdPr var_9C
  loc_6CA750: Set from_stack_2 = Me(from_stack_1)
  loc_6CA755: FLdPr var_D8
  loc_6CA758: LateIdLdVar var_AC DispID_-501 -1
  loc_6CA75F: CI4Var
  loc_6CA761: LitI4 &HFF0000
  loc_6CA766: EqI4
  loc_6CA767: FFreeAd var_9C = ""
  loc_6CA76E: FFree1Var var_AC = ""
  loc_6CA771: BranchF loc_6CA7B9
  loc_6CA774: LitVar_FALSE
  loc_6CA778: PopAdLdVar
  loc_6CA779: FLdPrThis
  loc_6CA77A: VCallAd Control_ID_Altas
  loc_6CA77D: FStAdFunc var_9C
  loc_6CA780: FLdPr var_9C
  loc_6CA783: LateIdSt
  loc_6CA788: FFree1Ad var_9C
  loc_6CA78B: LitVar_FALSE
  loc_6CA78F: PopAdLdVar
  loc_6CA790: FLdPrThis
  loc_6CA791: VCallAd Control_ID_Bajas
  loc_6CA794: FStAdFunc var_9C
  loc_6CA797: FLdPr var_9C
  loc_6CA79A: LateIdSt
  loc_6CA79F: FFree1Ad var_9C
  loc_6CA7A2: LitVar_FALSE
  loc_6CA7A6: PopAdLdVar
  loc_6CA7A7: FLdPrThis
  loc_6CA7A8: VCallAd Control_ID_Mediciones
  loc_6CA7AB: FStAdFunc var_9C
  loc_6CA7AE: FLdPr var_9C
  loc_6CA7B1: LateIdSt
  loc_6CA7B6: FFree1Ad var_9C
  loc_6CA7B9: LitVar_FALSE
  loc_6CA7BD: PopAdLdVar
  loc_6CA7BE: FLdRfVar var_D8
  loc_6CA7C1: FLdI2 var_86
  loc_6CA7C4: LitI2_Byte 1
  loc_6CA7C6: SubI2
  loc_6CA7C7: FLdPrThis
  loc_6CA7C8: VCallAd Control_ID_lblTankStatus
  loc_6CA7CB: FStAdFunc var_9C
  loc_6CA7CE: FLdPr var_9C
  loc_6CA7D1: Set from_stack_2 = Me(from_stack_1)
  loc_6CA7D6: FLdPr var_D8
  loc_6CA7D9: LateIdSt
  loc_6CA7DE: FFreeAd var_9C = ""
  loc_6CA7E5: FLdRfVar var_86
  loc_6CA7E8: NextI2 var_F8, loc_6CA368
  loc_6CA7ED: from_stack_1v = Proc_117_71_66D4F4()
  loc_6CA7F2: FLdPr Me
  loc_6CA7F5: MemLdStr global_136
  loc_6CA7F8: ILdRf var_90
  loc_6CA7FB: NeStr
  loc_6CA7FD: BranchF loc_6CA80A
  loc_6CA800: ILdRf var_90
  loc_6CA803: FLdPr Me
  loc_6CA806: MemStStrCopy
  loc_6CA80A: FLdPr Me
  loc_6CA80D: MemLdI2 global_140
  loc_6CA810: LitI2_Byte 4
  loc_6CA812: ModI2
  loc_6CA813: LitI2_Byte 1
  loc_6CA815: AddI2
  loc_6CA816: FLdPr Me
  loc_6CA819: MemStI2 global_140
  loc_6CA81C: ImpAdLdUI1
  loc_6CA820: CI2UI1
  loc_6CA822: LitI2_Byte 0
  loc_6CA824: GtI2
  loc_6CA825: FLdRfVar var_FA
  loc_6CA828: FLdRfVar var_8C
  loc_6CA82B: from_stack_2v = Proc_117_68_5E38DC(from_stack_1v)
  loc_6CA830: FLdI2 var_FA
  loc_6CA833: LitI2_Byte &HFF
  loc_6CA835: EqI2
  loc_6CA836: AndI4
  loc_6CA837: BranchF loc_6CA938
  loc_6CA83A: LitVar_TRUE var_D0
  loc_6CA83D: PopAdLdVar
  loc_6CA83E: FLdPrThis
  loc_6CA83F: VCallAd Control_ID_sscDescarga
  loc_6CA842: FStAdFunc var_9C
  loc_6CA845: FLdPr var_9C
  loc_6CA848: LateIdSt
  loc_6CA84D: FFree1Ad var_9C
  loc_6CA850: FLdPr Me
  loc_6CA853: MemLdI2 global_130
  loc_6CA856: PopTmpLdAd2 var_FA
  loc_6CA859: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_6CA85E: FLdPrThis
  loc_6CA85F: VCallAd Control_ID_sscDescarga
  loc_6CA862: FStAdFunc var_9C
  loc_6CA865: FLdPr var_9C
  loc_6CA868: LateIdLdVar var_AC DispID_-518 -1
  loc_6CA86F: CStrVarTmp
  loc_6CA870: FStStrNoPop var_D4
  loc_6CA873: LitStr "&Inicio Descarga"
  loc_6CA876: EqStr
  loc_6CA878: FLdPrThis
  loc_6CA879: VCallAd Control_ID_sscDescarga
  loc_6CA87C: FStAdFunc var_D8
  loc_6CA87F: FLdPr var_D8
  loc_6CA882: LateIdLdVar var_BC DispID_-518 -1
  loc_6CA889: CStrVarTmp
  loc_6CA88A: FStStrNoPop var_228
  loc_6CA88D: FLdRfVar var_224
  loc_6CA890: LitVar_Missing var_220
  loc_6CA893: LitVar_Missing var_210
  loc_6CA896: LitVar_Missing var_200
  loc_6CA899: LitVar_Missing var_1E0
  loc_6CA89C: LitVar_Missing var_1C0
  loc_6CA89F: LitVar_Missing var_1A0
  loc_6CA8A2: LitVar_Missing var_180
  loc_6CA8A5: LitVar_Missing var_160
  loc_6CA8A8: LitVar_Missing var_140
  loc_6CA8AB: LitVar_Missing var_120
  loc_6CA8AE: LitStr "&Inicio Descarga"
  loc_6CA8B1: FStStrCopy var_F4
  loc_6CA8B4: FLdRfVar var_F4
  loc_6CA8B7: LitI4 &H15
  loc_6CA8BC: PopTmpLdAdStr var_100
  loc_6CA8BF: LitI2_Byte &HF
  loc_6CA8C1: PopTmpLdAd2 var_FA
  loc_6CA8C4: ImpAdLdRf MemVar_74C7D0
  loc_6CA8C7: NewIfNullPr clsMsg
  loc_6CA8CA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CA8CF: ILdRf var_224
  loc_6CA8D2: EqStr
  loc_6CA8D4: OrI4
  loc_6CA8D5: FFreeStr var_D4 = "": var_F4 = "": var_228 = ""
  loc_6CA8E0: FFreeAd var_9C = ""
  loc_6CA8E7: FFreeVar var_AC = "": var_BC = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = ""
  loc_6CA902: BranchF loc_6CA91E
  loc_6CA905: LitVar_TRUE var_D0
  loc_6CA908: PopAdLdVar
  loc_6CA909: FLdPrThis
  loc_6CA90A: VCallAd Control_ID_sscForzarMedicion
  loc_6CA90D: FStAdFunc var_9C
  loc_6CA910: FLdPr var_9C
  loc_6CA913: LateIdSt
  loc_6CA918: FFree1Ad var_9C
  loc_6CA91B: Branch loc_6CA935
  loc_6CA91E: LitVar_FALSE
  loc_6CA922: PopAdLdVar
  loc_6CA923: FLdPrThis
  loc_6CA924: VCallAd Control_ID_sscForzarMedicion
  loc_6CA927: FStAdFunc var_9C
  loc_6CA92A: FLdPr var_9C
  loc_6CA92D: LateIdSt
  loc_6CA932: FFree1Ad var_9C
  loc_6CA935: Branch loc_6CA974
  loc_6CA938: LitVar_FALSE
  loc_6CA93C: PopAdLdVar
  loc_6CA93D: FLdPrThis
  loc_6CA93E: VCallAd Control_ID_sscDescarga
  loc_6CA941: FStAdFunc var_9C
  loc_6CA944: FLdPr var_9C
  loc_6CA947: LateIdSt
  loc_6CA94C: FFree1Ad var_9C
  loc_6CA94F: LitVar_FALSE
  loc_6CA953: PopAdLdVar
  loc_6CA954: FLdPrThis
  loc_6CA955: VCallAd Control_ID_sscForzarMedicion
  loc_6CA958: FStAdFunc var_9C
  loc_6CA95B: FLdPr var_9C
  loc_6CA95E: LateIdSt
  loc_6CA963: FFree1Ad var_9C
  loc_6CA966: FLdPr Me
  loc_6CA969: MemLdI2 global_130
  loc_6CA96C: PopTmpLdAd2 var_FA
  loc_6CA96F: from_stack_2v = Titulo_UnknownEvent_8(from_stack_1v)
  loc_6CA974: ExitProcHresult
  loc_6CA975: FLdRfVar var_D4
  loc_6CA978: ImpAdCallI2 Err 'rtcErrObj
  loc_6CA97D: FStAdFunc var_9C
  loc_6CA980: FLdPr var_9C
  loc_6CA983:  = Err.Description
  loc_6CA988: LitVar_Missing var_140
  loc_6CA98B: LitVar_Missing var_120
  loc_6CA98E: LitVar_Missing var_BC
  loc_6CA991: LitI4 &H10
  loc_6CA996: FLdZeroAd var_D4
  loc_6CA999: CVarStr var_AC
  loc_6CA99C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CA9A1: FFree1Ad var_9C
  loc_6CA9A4: FFreeVar var_AC = "": var_BC = "": var_120 = ""
  loc_6CA9AF: ExitProcHresult
End Sub

Public Function bFlagdespachosActivosGet() '4509C8
  bFlagdespachosActivosGet = bFlagdespachosActivos
End Function

Public Sub bFlagdespachosActivosPut(Value) '4509D7
  bFlagdespachosActivos = Value
End Sub

Public Function strEndChargeGet() '4509E6
  strEndChargeGet = strEndCharge
End Function

Public Sub strEndChargePut(Value) '4509F5
  strEndCharge = Value
End Sub

Public Function strEndCharge1Get() '450A04
  strEndCharge1Get = strEndCharge1
End Function

Public Sub strEndCharge1Put(Value) '450A13
  strEndCharge1 = Value
End Sub

Public Function strStartChargeGet() '450A22
  strStartChargeGet = strStartCharge
End Function

Public Sub strStartChargePut(Value) '450A31
  strStartCharge = Value
End Sub

Public Function strStartCharge1Get() '450A40
  strStartCharge1Get = strStartCharge1
End Function

Public Sub strStartCharge1Put(Value) '450A4F
  strStartCharge1 = Value
End Sub

Public Function strProdAbGet() '450A5E
  strProdAbGet = strProdAb
End Function

Public Sub strProdAbPut(Value) '450A6D
  strProdAb = Value
End Sub

Public Function strVacioAbGet() '450A7C
  strVacioAbGet = strVacioAb
End Function

Public Sub strVacioAbPut(Value) '450A8B
  strVacioAb = Value
End Sub

Public Function strAguaAbGet() '450A9A
  strAguaAbGet = strAguaAb
End Function

Public Sub strAguaAbPut(Value) '450AA9
  strAguaAb = Value
End Sub

Public Function strNDGet() '450ACC
  strNDGet = strND
End Function

Public Sub strNDPut(Value) '450ADB
  strND = Value
End Sub

Public Function strPmmGet() '450AEA
  strPmmGet = strPmm
End Function

Public Sub strPmmPut(Value) '450AF9
  strPmm = Value
End Sub

Public Function strTempGet() '450B08
  strTempGet = strTemp
End Function

Public Sub strTempPut(Value) '450B17
  strTemp = Value
End Sub

Public Function strAmmGet() '450B26
  strAmmGet = strAmm
End Function

Public Sub strAmmPut(Value) '450B35
  strAmm = Value
End Sub

Public Function strMsgErrGet() '450B44
  strMsgErrGet = strMsgErr
End Function

Public Sub strMsgErrPut(Value) '450B53
  strMsgErr = Value
End Sub

Public Function strMsgErr1Get() '450B62
  strMsgErr1Get = strMsgErr1
End Function

Public Sub strMsgErr1Put(Value) '450B71
  strMsgErr1 = Value
End Sub

Public Function strMsgErr2Get() '450B80
  strMsgErr2Get = strMsgErr2
End Function

Public Sub strMsgErr2Put(Value) '450B8F
  strMsgErr2 = Value
End Sub

Public Function strMsgErr3Get() '450B9E
  strMsgErr3Get = strMsgErr3
End Function

Public Sub strMsgErr3Put(Value) '450BAD
  strMsgErr3 = Value
End Sub

Public Function strMsgDefGet() '450BBC
  strMsgDefGet = strMsgDef
End Function

Public Sub strMsgDefPut(Value) '450BCB
  strMsgDef = Value
End Sub

Public Function strMsgDef1Get() '450BDA
  strMsgDef1Get = strMsgDef1
End Function

Public Sub strMsgDef1Put(Value) '450BE9
  strMsgDef1 = Value
End Sub

Public Function strMsgDef2Get() '450BF8
  strMsgDef2Get = strMsgDef2
End Function

Public Sub strMsgDef2Put(Value) '450C07
  strMsgDef2 = Value
End Sub

Public Sub RefreshTankTotals(tank) '6E7614
  'Data Table: 44F8E0
  loc_6E6910: LitVarStr var_C4, "1"
  loc_6E6915: FStVarCopyObj var_D4
  loc_6E6918: FLdRfVar var_D4
  loc_6E691B: LitI4 4
  loc_6E6920: ImpAdLdRf MemVar_74BEAC
  loc_6E6923: CVarRef
  loc_6E6928: FLdRfVar var_E4
  loc_6E692B: ImpAdCallFPR4  = Mid(, , )
  loc_6E6930: FLdRfVar var_E4
  loc_6E6933: CBoolVarNull
  loc_6E6935: FFreeVar var_D4 = ""
  loc_6E693C: BranchF loc_6E6947
  loc_6E693F: ILdRf tank
  loc_6E6942: from_stack_2v = Proc_117_67_608284(from_stack_1v)
  loc_6E6947: FLdRfVar var_EA
  loc_6E694A: FLdRfVar var_88
  loc_6E694D: ILdI2 tank
  loc_6E6950: CUI1I2
  loc_6E6952: CI2UI1
  loc_6E6954: FLdRfVar var_E8
  loc_6E6957: ImpAdLdRf MemVar_74C760
  loc_6E695A: NewIfNullPr Formx
  loc_6E695D: from_stack_1v = Formx.global_4589716Get()
  loc_6E6962: FLdPr var_E8
  loc_6E6965: Formx.PSet (#x1from_stack_2s, from_stack_3s), from_stack_4
  loc_6E696A: FLdI2 var_EA
  loc_6E696D: NotI4
  loc_6E696E: FFree1Ad var_E8
  loc_6E6971: BranchF loc_6E6975
  loc_6E6974: ExitProcHresult
  loc_6E6975: ILdI2 tank
  loc_6E6978: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6E697D: LitI2_Byte 0
  loc_6E697F: EqI2
  loc_6E6980: BranchF loc_6E6B5E
  loc_6E6983: LitVarI2 var_D4, 8
  loc_6E6988: LitI4 1
  loc_6E698D: FLdRfVar var_88
  loc_6E6990: CVarRef
  loc_6E6995: FLdRfVar var_E4
  loc_6E6998: ImpAdCallFPR4  = Mid(, , )
  loc_6E699D: FLdRfVar var_E4
  loc_6E69A0: FnCLngVar
  loc_6E69A2: CR8I4
  loc_6E69A3: LitI2_Byte &H64
  loc_6E69A5: CR8I2
  loc_6E69A6: DivR8
  loc_6E69A7: CI4R8
  loc_6E69A8: FStR4 var_94
  loc_6E69AB: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E69B4: LitVarI2 var_D4, 8
  loc_6E69B9: LitI4 9
  loc_6E69BE: FLdRfVar var_88
  loc_6E69C1: CVarRef
  loc_6E69C6: FLdRfVar var_E4
  loc_6E69C9: ImpAdCallFPR4  = Mid(, , )
  loc_6E69CE: FLdRfVar var_E4
  loc_6E69D1: FnCLngVar
  loc_6E69D3: CR8I4
  loc_6E69D4: LitI2_Byte &H64
  loc_6E69D6: CR8I2
  loc_6E69D7: DivR8
  loc_6E69D8: CI4R8
  loc_6E69D9: FStR4 var_90
  loc_6E69DC: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E69E5: LitVarI2 var_D4, 8
  loc_6E69EA: LitI4 &H11
  loc_6E69EF: FLdRfVar var_88
  loc_6E69F2: CVarRef
  loc_6E69F7: FLdRfVar var_E4
  loc_6E69FA: ImpAdCallFPR4  = Mid(, , )
  loc_6E69FF: FLdRfVar var_E4
  loc_6E6A02: FnCLngVar
  loc_6E6A04: CR8I4
  loc_6E6A05: LitI2_Byte &H64
  loc_6E6A07: CR8I2
  loc_6E6A08: DivR8
  loc_6E6A09: CI4R8
  loc_6E6A0A: FStR4 var_98
  loc_6E6A0D: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6A16: LitVarI2 var_D4, 2
  loc_6E6A1B: LitI4 7
  loc_6E6A20: FLdRfVar var_88
  loc_6E6A23: CVarRef
  loc_6E6A28: FLdRfVar var_E4
  loc_6E6A2B: ImpAdCallFPR4  = Mid(, , )
  loc_6E6A30: FLdRfVar var_E4
  loc_6E6A33: FnCLngVar
  loc_6E6A35: FStR4 var_F0
  loc_6E6A38: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6A41: LitVarI2 var_D4, 2
  loc_6E6A46: LitI4 &HF
  loc_6E6A4B: FLdRfVar var_88
  loc_6E6A4E: CVarRef
  loc_6E6A53: FLdRfVar var_E4
  loc_6E6A56: ImpAdCallFPR4  = Mid(, , )
  loc_6E6A5B: FLdRfVar var_E4
  loc_6E6A5E: FnCLngVar
  loc_6E6A60: FStR4 var_F4
  loc_6E6A63: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6A6C: ILdRf var_F0
  loc_6E6A6F: LitI4 &H32
  loc_6E6A74: LeI4
  loc_6E6A75: ILdRf var_F4
  loc_6E6A78: LitI4 &H32
  loc_6E6A7D: LeI4
  loc_6E6A7E: AndI4
  loc_6E6A7F: ILdRf var_F0
  loc_6E6A82: ILdRf var_F4
  loc_6E6A85: AddI4
  loc_6E6A86: LitI4 &H32
  loc_6E6A8B: GtI4
  loc_6E6A8C: AndI4
  loc_6E6A8D: BranchF loc_6E6AD4
  loc_6E6A90: ILdRf var_F0
  loc_6E6A93: LitI4 &H32
  loc_6E6A98: EqI4
  loc_6E6A99: ILdRf var_F4
  loc_6E6A9C: LitI4 &H32
  loc_6E6AA1: EqI4
  loc_6E6AA2: AndI4
  loc_6E6AA3: BranchF loc_6E6AB2
  loc_6E6AA6: ILdRf var_98
  loc_6E6AA9: LitI4 1
  loc_6E6AAE: SubI4
  loc_6E6AAF: FStR4 var_98
  loc_6E6AB2: ILdRf var_F0
  loc_6E6AB5: LitI4 &H32
  loc_6E6ABA: NeI4
  loc_6E6ABB: ILdRf var_F4
  loc_6E6ABE: LitI4 &H32
  loc_6E6AC3: NeI4
  loc_6E6AC4: AndI4
  loc_6E6AC5: BranchF loc_6E6AD4
  loc_6E6AC8: ILdRf var_98
  loc_6E6ACB: LitI4 1
  loc_6E6AD0: AddI4
  loc_6E6AD1: FStR4 var_98
  loc_6E6AD4: LitVarI2 var_D4, 8
  loc_6E6AD9: LitI4 &H19
  loc_6E6ADE: FLdRfVar var_88
  loc_6E6AE1: CVarRef
  loc_6E6AE6: FLdRfVar var_E4
  loc_6E6AE9: ImpAdCallFPR4  = Mid(, , )
  loc_6E6AEE: FLdRfVar var_E4
  loc_6E6AF1: FnCLngVar
  loc_6E6AF3: FStR4 var_A0
  loc_6E6AF6: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6AFF: LitVarI2 var_D4, 8
  loc_6E6B04: LitI4 &H21
  loc_6E6B09: FLdRfVar var_88
  loc_6E6B0C: CVarRef
  loc_6E6B11: FLdRfVar var_E4
  loc_6E6B14: ImpAdCallFPR4  = Mid(, , )
  loc_6E6B19: FLdRfVar var_E4
  loc_6E6B1C: FnCLngVar
  loc_6E6B1E: FStR4 var_A4
  loc_6E6B21: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6B2A: LitVarI2 var_D4, 8
  loc_6E6B2F: LitI4 &H29
  loc_6E6B34: FLdRfVar var_88
  loc_6E6B37: CVarRef
  loc_6E6B3C: FLdRfVar var_E4
  loc_6E6B3F: ImpAdCallFPR4  = Mid(, , )
  loc_6E6B44: FLdRfVar var_E4
  loc_6E6B47: FnCLngVar
  loc_6E6B49: CR8I4
  loc_6E6B4A: LitI2_Byte &H64
  loc_6E6B4C: CR8I2
  loc_6E6B4D: DivR8
  loc_6E6B4E: CI4R8
  loc_6E6B4F: FStR4 var_9C
  loc_6E6B52: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6B5B: Branch loc_6E6B89
  loc_6E6B5E: LitVarI2 var_D4, 8
  loc_6E6B63: LitI4 1
  loc_6E6B68: FLdRfVar var_88
  loc_6E6B6B: CVarRef
  loc_6E6B70: FLdRfVar var_E4
  loc_6E6B73: ImpAdCallFPR4  = Mid(, , )
  loc_6E6B78: FLdRfVar var_E4
  loc_6E6B7B: FnCLngVar
  loc_6E6B7D: FStR4 var_94
  loc_6E6B80: FFreeVar var_D4 = "": var_E4 = ""
  loc_6E6B89: FLdPr Me
  loc_6E6B8C: MemLdI2 global_342
  loc_6E6B8F: BranchF loc_6E6BA7
  loc_6E6B92: FLdPr Me
  loc_6E6B95: MemLdI2 global_340
  loc_6E6B98: NotI4
  loc_6E6B99: FLdPr Me
  loc_6E6B9C: MemStI2 global_340
  loc_6E6B9F: LitI2_Byte 0
  loc_6E6BA1: FLdPr Me
  loc_6E6BA4: MemStI2 global_342
  loc_6E6BA7: FLdRfVar var_200
  loc_6E6BAA: LitVar_Missing var_1FC
  loc_6E6BAD: LitVar_Missing var_1DC
  loc_6E6BB0: LitVar_Missing var_1BC
  loc_6E6BB3: LitVar_Missing var_19C
  loc_6E6BB6: LitVar_Missing var_17C
  loc_6E6BB9: LitVar_Missing var_15C
  loc_6E6BBC: LitVar_Missing var_13C
  loc_6E6BBF: LitVar_Missing var_11C
  loc_6E6BC2: LitVar_Missing var_E4
  loc_6E6BC5: LitVar_Missing var_D4
  loc_6E6BC8: LitStr " Prod"
  loc_6E6BCB: FStStrCopy var_FC
  loc_6E6BCE: FLdRfVar var_FC
  loc_6E6BD1: LitI4 &H17
  loc_6E6BD6: PopTmpLdAdStr var_F8
  loc_6E6BD9: LitI2_Byte &HF
  loc_6E6BDB: PopTmpLdAd2 var_EA
  loc_6E6BDE: ImpAdLdRf MemVar_74C7D0
  loc_6E6BE1: NewIfNullPr clsMsg
  loc_6E6BE4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6BE9: ILdRf var_200
  loc_6E6BEC: FLdPr Me
  loc_6E6BEF: MemStStrCopy
  loc_6E6BF3: FFreeStr var_FC = ""
  loc_6E6BFA: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6C11: FLdRfVar var_200
  loc_6E6C14: LitVar_Missing var_1FC
  loc_6E6C17: LitVar_Missing var_1DC
  loc_6E6C1A: LitVar_Missing var_1BC
  loc_6E6C1D: LitVar_Missing var_19C
  loc_6E6C20: LitVar_Missing var_17C
  loc_6E6C23: LitVar_Missing var_15C
  loc_6E6C26: LitVar_Missing var_13C
  loc_6E6C29: LitVar_Missing var_11C
  loc_6E6C2C: LitVar_Missing var_E4
  loc_6E6C2F: LitVar_Missing var_D4
  loc_6E6C32: LitStr " Vacio"
  loc_6E6C35: FStStrCopy var_FC
  loc_6E6C38: FLdRfVar var_FC
  loc_6E6C3B: LitI4 &H18
  loc_6E6C40: PopTmpLdAdStr var_F8
  loc_6E6C43: LitI2_Byte &HF
  loc_6E6C45: PopTmpLdAd2 var_EA
  loc_6E6C48: ImpAdLdRf MemVar_74C7D0
  loc_6E6C4B: NewIfNullPr clsMsg
  loc_6E6C4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6C53: ILdRf var_200
  loc_6E6C56: FLdPr Me
  loc_6E6C59: MemStStrCopy
  loc_6E6C5D: FFreeStr var_FC = ""
  loc_6E6C64: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6C7B: FLdRfVar var_200
  loc_6E6C7E: LitVar_Missing var_1FC
  loc_6E6C81: LitVar_Missing var_1DC
  loc_6E6C84: LitVar_Missing var_1BC
  loc_6E6C87: LitVar_Missing var_19C
  loc_6E6C8A: LitVar_Missing var_17C
  loc_6E6C8D: LitVar_Missing var_15C
  loc_6E6C90: LitVar_Missing var_13C
  loc_6E6C93: LitVar_Missing var_11C
  loc_6E6C96: LitVar_Missing var_E4
  loc_6E6C99: LitVar_Missing var_D4
  loc_6E6C9C: LitStr " Agua"
  loc_6E6C9F: FStStrCopy var_FC
  loc_6E6CA2: FLdRfVar var_FC
  loc_6E6CA5: LitI4 &H19
  loc_6E6CAA: PopTmpLdAdStr var_F8
  loc_6E6CAD: LitI2_Byte &HF
  loc_6E6CAF: PopTmpLdAd2 var_EA
  loc_6E6CB2: ImpAdLdRf MemVar_74C7D0
  loc_6E6CB5: NewIfNullPr clsMsg
  loc_6E6CB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6CBD: ILdRf var_200
  loc_6E6CC0: FLdPr Me
  loc_6E6CC3: MemStStrCopy
  loc_6E6CC7: FFreeStr var_FC = ""
  loc_6E6CCE: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6CE5: FLdRfVar var_200
  loc_6E6CE8: LitVar_Missing var_1FC
  loc_6E6CEB: LitVar_Missing var_1DC
  loc_6E6CEE: LitVar_Missing var_1BC
  loc_6E6CF1: LitVar_Missing var_19C
  loc_6E6CF4: LitVar_Missing var_17C
  loc_6E6CF7: LitVar_Missing var_15C
  loc_6E6CFA: LitVar_Missing var_13C
  loc_6E6CFD: LitVar_Missing var_11C
  loc_6E6D00: LitVar_Missing var_E4
  loc_6E6D03: LitVar_Missing var_D4
  loc_6E6D06: LitStr "N/D"
  loc_6E6D09: FStStrCopy var_FC
  loc_6E6D0C: FLdRfVar var_FC
  loc_6E6D0F: LitI4 &H1A
  loc_6E6D14: PopTmpLdAdStr var_F8
  loc_6E6D17: LitI2_Byte &HF
  loc_6E6D19: PopTmpLdAd2 var_EA
  loc_6E6D1C: ImpAdLdRf MemVar_74C7D0
  loc_6E6D1F: NewIfNullPr clsMsg
  loc_6E6D22: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6D27: ILdRf var_200
  loc_6E6D2A: FLdPr Me
  loc_6E6D2D: MemStStrCopy
  loc_6E6D31: FFreeStr var_FC = ""
  loc_6E6D38: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6D4F: FLdRfVar var_200
  loc_6E6D52: LitVar_Missing var_1FC
  loc_6E6D55: LitVar_Missing var_1DC
  loc_6E6D58: LitVar_Missing var_1BC
  loc_6E6D5B: LitVar_Missing var_19C
  loc_6E6D5E: LitVar_Missing var_17C
  loc_6E6D61: LitVar_Missing var_15C
  loc_6E6D64: LitVar_Missing var_13C
  loc_6E6D67: LitVar_Missing var_11C
  loc_6E6D6A: LitVar_Missing var_E4
  loc_6E6D6D: LitVar_Missing var_D4
  loc_6E6D70: LitStr " P.(mm.)"
  loc_6E6D73: FStStrCopy var_FC
  loc_6E6D76: FLdRfVar var_FC
  loc_6E6D79: LitI4 &H1B
  loc_6E6D7E: PopTmpLdAdStr var_F8
  loc_6E6D81: LitI2_Byte &HF
  loc_6E6D83: PopTmpLdAd2 var_EA
  loc_6E6D86: ImpAdLdRf MemVar_74C7D0
  loc_6E6D89: NewIfNullPr clsMsg
  loc_6E6D8C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6D91: ILdRf var_200
  loc_6E6D94: FLdPr Me
  loc_6E6D97: MemStStrCopy
  loc_6E6D9B: FFreeStr var_FC = ""
  loc_6E6DA2: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6DB9: FLdRfVar var_200
  loc_6E6DBC: LitVar_Missing var_1FC
  loc_6E6DBF: LitVar_Missing var_1DC
  loc_6E6DC2: LitVar_Missing var_1BC
  loc_6E6DC5: LitVar_Missing var_19C
  loc_6E6DC8: LitVar_Missing var_17C
  loc_6E6DCB: LitVar_Missing var_15C
  loc_6E6DCE: LitVar_Missing var_13C
  loc_6E6DD1: LitVar_Missing var_11C
  loc_6E6DD4: LitVar_Missing var_E4
  loc_6E6DD7: LitVar_Missing var_D4
  loc_6E6DDA: LitStr " Temp"
  loc_6E6DDD: FStStrCopy var_FC
  loc_6E6DE0: FLdRfVar var_FC
  loc_6E6DE3: LitI4 &H1C
  loc_6E6DE8: PopTmpLdAdStr var_F8
  loc_6E6DEB: LitI2_Byte &HF
  loc_6E6DED: PopTmpLdAd2 var_EA
  loc_6E6DF0: ImpAdLdRf MemVar_74C7D0
  loc_6E6DF3: NewIfNullPr clsMsg
  loc_6E6DF6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6DFB: ILdRf var_200
  loc_6E6DFE: FLdPr Me
  loc_6E6E01: MemStStrCopy
  loc_6E6E05: FFreeStr var_FC = ""
  loc_6E6E0C: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6E23: FLdRfVar var_200
  loc_6E6E26: LitVar_Missing var_1FC
  loc_6E6E29: LitVar_Missing var_1DC
  loc_6E6E2C: LitVar_Missing var_1BC
  loc_6E6E2F: LitVar_Missing var_19C
  loc_6E6E32: LitVar_Missing var_17C
  loc_6E6E35: LitVar_Missing var_15C
  loc_6E6E38: LitVar_Missing var_13C
  loc_6E6E3B: LitVar_Missing var_11C
  loc_6E6E3E: LitVar_Missing var_E4
  loc_6E6E41: LitVar_Missing var_D4
  loc_6E6E44: LitStr " A.(mm.)"
  loc_6E6E47: FStStrCopy var_FC
  loc_6E6E4A: FLdRfVar var_FC
  loc_6E6E4D: LitI4 &H1D
  loc_6E6E52: PopTmpLdAdStr var_F8
  loc_6E6E55: LitI2_Byte &HF
  loc_6E6E57: PopTmpLdAd2 var_EA
  loc_6E6E5A: ImpAdLdRf MemVar_74C7D0
  loc_6E6E5D: NewIfNullPr clsMsg
  loc_6E6E60: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E6E65: ILdRf var_200
  loc_6E6E68: FLdPr Me
  loc_6E6E6B: MemStStrCopy
  loc_6E6E6F: FFreeStr var_FC = ""
  loc_6E6E76: FFreeVar var_D4 = "": var_E4 = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_6E6E8D: FLdPr Me
  loc_6E6E90: MemLdI2 global_340
  loc_6E6E93: NotI4
  loc_6E6E94: BranchF loc_6E72F0
  loc_6E6E97: ILdRf var_94
  loc_6E6E9A: ILdI2 tank
  loc_6E6E9D: CI4UI1
  loc_6E6E9E: FLdPr Me
  loc_6E6EA1: MemLdRfVar from_stack_1.global_220
  loc_6E6EA4: Ary1LdI4
  loc_6E6EA5: NeI4
  loc_6E6EA6: FLdPr Me
  loc_6E6EA9: MemLdI2 global_340
  loc_6E6EAC: LitI2_Byte 0
  loc_6E6EAE: EqI2
  loc_6E6EAF: OrI4
  loc_6E6EB0: BranchF loc_6E708B
  loc_6E6EB3: LitVarI2 var_D4, 1
  loc_6E6EB8: LitI4 4
  loc_6E6EBD: ImpAdLdRf MemVar_74BEAC
  loc_6E6EC0: CVarRef
  loc_6E6EC5: FLdRfVar var_E4
  loc_6E6EC8: ImpAdCallFPR4  = Mid(, , )
  loc_6E6ECD: FLdRfVar var_E4
  loc_6E6ED0: LitVarStr var_10C, "1"
  loc_6E6ED5: HardType
  loc_6E6ED6: EqVarBool
  loc_6E6ED8: FFreeVar var_D4 = ""
  loc_6E6EDF: BranchF loc_6E6FF2
  loc_6E6EE2: ILdI2 tank
  loc_6E6EE5: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6E6EEA: LitI2_Byte 0
  loc_6E6EEC: EqI2
  loc_6E6EED: BranchF loc_6E6F77
  loc_6E6EF0: LitVarI2 var_D4, 8
  loc_6E6EF5: LitI4 1
  loc_6E6EFA: FLdRfVar var_88
  loc_6E6EFD: CVarRef
  loc_6E6F02: FLdRfVar var_E4
  loc_6E6F05: ImpAdCallFPR4  = Mid(, , )
  loc_6E6F0A: LitI4 1
  loc_6E6F0F: LitI4 1
  loc_6E6F14: LitVarStr var_12C, "0.00"
  loc_6E6F19: FStVarCopyObj var_13C
  loc_6E6F1C: FLdRfVar var_13C
  loc_6E6F1F: FLdRfVar var_E4
  loc_6E6F22: FnCSngVar
  loc_6E6F24: LitI2_Byte &H64
  loc_6E6F26: CR8I2
  loc_6E6F27: DivR8
  loc_6E6F28: CVarR4
  loc_6E6F2C: FLdRfVar var_15C
  loc_6E6F2F: ImpAdCallFPR4  = Format(, )
  loc_6E6F34: FLdRfVar var_15C
  loc_6E6F37: CStrVarVal var_FC
  loc_6E6F3B: FLdRfVar var_204
  loc_6E6F3E: ILdI2 tank
  loc_6E6F41: LitI2_Byte 1
  loc_6E6F43: SubI2
  loc_6E6F44: FLdPrThis
  loc_6E6F45: VCallAd Control_ID_Combustible
  loc_6E6F48: FStAdFunc var_E8
  loc_6E6F4B: FLdPr var_E8
  loc_6E6F4E: Set from_stack_2 = Me(from_stack_1)
  loc_6E6F53: FLdPr var_204
  loc_6E6F56: Me.Caption = from_stack_1
  loc_6E6F5B: FFree1Str var_FC
  loc_6E6F5E: FFreeAd var_E8 = ""
  loc_6E6F65: FFreeVar var_D4 = "": var_E4 = "": var_E4 = "": var_11C = "": var_13C = ""
  loc_6E6F74: Branch loc_6E6FEF
  loc_6E6F77: LitVarI2 var_D4, 8
  loc_6E6F7C: LitI4 1
  loc_6E6F81: FLdRfVar var_88
  loc_6E6F84: CVarRef
  loc_6E6F89: FLdRfVar var_E4
  loc_6E6F8C: ImpAdCallFPR4  = Mid(, , )
  loc_6E6F91: LitI4 1
  loc_6E6F96: LitI4 1
  loc_6E6F9B: LitVar_Missing var_13C
  loc_6E6F9E: FLdRfVar var_E4
  loc_6E6FA1: FnCLngVar
  loc_6E6FA3: CVarI4
  loc_6E6FA7: FLdRfVar var_15C
  loc_6E6FAA: ImpAdCallFPR4  = Format(, )
  loc_6E6FAF: FLdRfVar var_15C
  loc_6E6FB2: CStrVarVal var_FC
  loc_6E6FB6: FLdRfVar var_204
  loc_6E6FB9: ILdI2 tank
  loc_6E6FBC: LitI2_Byte 1
  loc_6E6FBE: SubI2
  loc_6E6FBF: FLdPrThis
  loc_6E6FC0: VCallAd Control_ID_Combustible
  loc_6E6FC3: FStAdFunc var_E8
  loc_6E6FC6: FLdPr var_E8
  loc_6E6FC9: Set from_stack_2 = Me(from_stack_1)
  loc_6E6FCE: FLdPr var_204
  loc_6E6FD1: Me.Caption = from_stack_1
  loc_6E6FD6: FFree1Str var_FC
  loc_6E6FD9: FFreeAd var_E8 = ""
  loc_6E6FE0: FFreeVar var_D4 = "": var_E4 = "": var_E4 = "": var_11C = "": var_13C = ""
  loc_6E6FEF: Branch loc_6E705E
  loc_6E6FF2: ILdRf var_94
  loc_6E6FF5: CStrI4
  loc_6E6FF7: FStStrNoPop var_FC
  loc_6E6FFA: FLdRfVar var_204
  loc_6E6FFD: ILdI2 tank
  loc_6E7000: LitI2_Byte 1
  loc_6E7002: SubI2
  loc_6E7003: FLdPrThis
  loc_6E7004: VCallAd Control_ID_Combustible
  loc_6E7007: FStAdFunc var_E8
  loc_6E700A: FLdPr var_E8
  loc_6E700D: Set from_stack_2 = Me(from_stack_1)
  loc_6E7012: FLdPr var_204
  loc_6E7015: Me.Caption = from_stack_1
  loc_6E701A: FFree1Str var_FC
  loc_6E701D: FFreeAd var_E8 = ""
  loc_6E7024: ILdI2 tank
  loc_6E7027: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6E702C: LitI2_Byte &HFF
  loc_6E702E: EqI2
  loc_6E702F: BranchF loc_6E705E
  loc_6E7032: LitI2 950
  loc_6E7035: CR8I2
  loc_6E7036: PopFPR4
  loc_6E7037: FLdRfVar var_204
  loc_6E703A: ILdI2 tank
  loc_6E703D: LitI2_Byte 1
  loc_6E703F: SubI2
  loc_6E7040: FLdPrThis
  loc_6E7041: VCallAd Control_ID_Combustible
  loc_6E7044: FStAdFunc var_E8
  loc_6E7047: FLdPr var_E8
  loc_6E704A: Set from_stack_2 = Me(from_stack_1)
  loc_6E704F: FLdPr var_204
  loc_6E7052: Me.Width = from_stack_1s
  loc_6E7057: FFreeAd var_E8 = ""
  loc_6E705E: FLdPr Me
  loc_6E7061: MemLdStr strProdAb
  loc_6E7064: FLdRfVar var_204
  loc_6E7067: ILdI2 tank
  loc_6E706A: LitI2_Byte 1
  loc_6E706C: SubI2
  loc_6E706D: FLdPrThis
  loc_6E706E: VCallAd Control_ID_lblTituloProducto
  loc_6E7071: FStAdFunc var_E8
  loc_6E7074: FLdPr var_E8
  loc_6E7077: Set from_stack_2 = Me(from_stack_1)
  loc_6E707C: FLdPr var_204
  loc_6E707F: Me.Caption = from_stack_1
  loc_6E7084: FFreeAd var_E8 = ""
  loc_6E708B: ILdRf var_98
  loc_6E708E: ILdI2 tank
  loc_6E7091: CI4UI1
  loc_6E7092: FLdPr Me
  loc_6E7095: MemLdRfVar from_stack_1.global_196
  loc_6E7098: Ary1LdI4
  loc_6E7099: NeI4
  loc_6E709A: FLdPr Me
  loc_6E709D: MemLdI2 global_340
  loc_6E70A0: LitI2_Byte 0
  loc_6E70A2: EqI2
  loc_6E70A3: OrI4
  loc_6E70A4: BranchF loc_6E71BC
  loc_6E70A7: LitVarI2 var_D4, 1
  loc_6E70AC: LitI4 4
  loc_6E70B1: ImpAdLdRf MemVar_74BEAC
  loc_6E70B4: CVarRef
  loc_6E70B9: FLdRfVar var_E4
  loc_6E70BC: ImpAdCallFPR4  = Mid(, , )
  loc_6E70C1: FLdRfVar var_E4
  loc_6E70C4: LitVarStr var_10C, "1"
  loc_6E70C9: HardType
  loc_6E70CA: EqVarBool
  loc_6E70CC: FFreeVar var_D4 = ""
  loc_6E70D3: BranchF loc_6E715D
  loc_6E70D6: LitVarI2 var_D4, 8
  loc_6E70DB: LitI4 &H11
  loc_6E70E0: FLdRfVar var_88
  loc_6E70E3: CVarRef
  loc_6E70E8: FLdRfVar var_E4
  loc_6E70EB: ImpAdCallFPR4  = Mid(, , )
  loc_6E70F0: LitI4 1
  loc_6E70F5: LitI4 1
  loc_6E70FA: LitVarStr var_12C, "0.00"
  loc_6E70FF: FStVarCopyObj var_13C
  loc_6E7102: FLdRfVar var_13C
  loc_6E7105: FLdRfVar var_E4
  loc_6E7108: FnCSngVar
  loc_6E710A: LitI2_Byte &H64
  loc_6E710C: CR8I2
  loc_6E710D: DivR8
  loc_6E710E: CVarR4
  loc_6E7112: FLdRfVar var_15C
  loc_6E7115: ImpAdCallFPR4  = Format(, )
  loc_6E711A: FLdRfVar var_15C
  loc_6E711D: CStrVarVal var_FC
  loc_6E7121: FLdRfVar var_204
  loc_6E7124: ILdI2 tank
  loc_6E7127: LitI2_Byte 1
  loc_6E7129: SubI2
  loc_6E712A: FLdPrThis
  loc_6E712B: VCallAd Control_ID_Vacio
  loc_6E712E: FStAdFunc var_E8
  loc_6E7131: FLdPr var_E8
  loc_6E7134: Set from_stack_2 = Me(from_stack_1)
  loc_6E7139: FLdPr var_204
  loc_6E713C: Me.Caption = from_stack_1
  loc_6E7141: FFree1Str var_FC
  loc_6E7144: FFreeAd var_E8 = ""
  loc_6E714B: FFreeVar var_D4 = "": var_E4 = "": var_E4 = "": var_11C = "": var_13C = ""
  loc_6E715A: Branch loc_6E718F
  loc_6E715D: ILdRf var_98
  loc_6E7160: CStrI4
  loc_6E7162: FStStrNoPop var_FC
  loc_6E7165: FLdRfVar var_204
  loc_6E7168: ILdI2 tank
  loc_6E716B: LitI2_Byte 1
  loc_6E716D: SubI2
  loc_6E716E: FLdPrThis
  loc_6E716F: VCallAd Control_ID_Vacio
  loc_6E7172: FStAdFunc var_E8
  loc_6E7175: FLdPr var_E8
  loc_6E7178: Set from_stack_2 = Me(from_stack_1)
  loc_6E717D: FLdPr var_204
  loc_6E7180: Me.Caption = from_stack_1
  loc_6E7185: FFree1Str var_FC
  loc_6E7188: FFreeAd var_E8 = ""
  loc_6E718F: FLdPr Me
  loc_6E7192: MemLdStr strVacioAb
  loc_6E7195: FLdRfVar var_204
  loc_6E7198: ILdI2 tank
  loc_6E719B: LitI2_Byte 1
  loc_6E719D: SubI2
  loc_6E719E: FLdPrThis
  loc_6E719F: VCallAd Control_ID_lblTituloVacio
  loc_6E71A2: FStAdFunc var_E8
  loc_6E71A5: FLdPr var_E8
  loc_6E71A8: Set from_stack_2 = Me(from_stack_1)
  loc_6E71AD: FLdPr var_204
  loc_6E71B0: Me.Caption = from_stack_1
  loc_6E71B5: FFreeAd var_E8 = ""
  loc_6E71BC: ILdRf var_90
  loc_6E71BF: ILdI2 tank
  loc_6E71C2: CI4UI1
  loc_6E71C3: FLdPr Me
  loc_6E71C6: MemLdRfVar from_stack_1.global_244
  loc_6E71C9: Ary1LdI4
  loc_6E71CA: NeI4
  loc_6E71CB: FLdPr Me
  loc_6E71CE: MemLdI2 global_340
  loc_6E71D1: LitI2_Byte 0
  loc_6E71D3: EqI2
  loc_6E71D4: OrI4
  loc_6E71D5: BranchF loc_6E72ED
  loc_6E71D8: LitVarI2 var_D4, 1
  loc_6E71DD: LitI4 4
  loc_6E71E2: ImpAdLdRf MemVar_74BEAC
  loc_6E71E5: CVarRef
  loc_6E71EA: FLdRfVar var_E4
  loc_6E71ED: ImpAdCallFPR4  = Mid(, , )
  loc_6E71F2: FLdRfVar var_E4
  loc_6E71F5: LitVarStr var_10C, "1"
  loc_6E71FA: HardType
  loc_6E71FB: EqVarBool
  loc_6E71FD: FFreeVar var_D4 = ""
  loc_6E7204: BranchF loc_6E728E
  loc_6E7207: LitVarI2 var_D4, 8
  loc_6E720C: LitI4 9
  loc_6E7211: FLdRfVar var_88
  loc_6E7214: CVarRef
  loc_6E7219: FLdRfVar var_E4
  loc_6E721C: ImpAdCallFPR4  = Mid(, , )
  loc_6E7221: LitI4 1
  loc_6E7226: LitI4 1
  loc_6E722B: LitVarStr var_12C, "0.00"
  loc_6E7230: FStVarCopyObj var_13C
  loc_6E7233: FLdRfVar var_13C
  loc_6E7236: FLdRfVar var_E4
  loc_6E7239: FnCSngVar
  loc_6E723B: LitI2_Byte &H64
  loc_6E723D: CR8I2
  loc_6E723E: DivR8
  loc_6E723F: CVarR4
  loc_6E7243: FLdRfVar var_15C
  loc_6E7246: ImpAdCallFPR4  = Format(, )
  loc_6E724B: FLdRfVar var_15C
  loc_6E724E: CStrVarVal var_FC
  loc_6E7252: FLdRfVar var_204
  loc_6E7255: ILdI2 tank
  loc_6E7258: LitI2_Byte 1
  loc_6E725A: SubI2
  loc_6E725B: FLdPrThis
  loc_6E725C: VCallAd Control_ID_Agua
  loc_6E725F: FStAdFunc var_E8
  loc_6E7262: FLdPr var_E8
  loc_6E7265: Set from_stack_2 = Me(from_stack_1)
  loc_6E726A: FLdPr var_204
  loc_6E726D: Me.Caption = from_stack_1
  loc_6E7272: FFree1Str var_FC
  loc_6E7275: FFreeAd var_E8 = ""
  loc_6E727C: FFreeVar var_D4 = "": var_E4 = "": var_E4 = "": var_11C = "": var_13C = ""
  loc_6E728B: Branch loc_6E72C0
  loc_6E728E: ILdRf var_90
  loc_6E7291: CStrI4
  loc_6E7293: FStStrNoPop var_FC
  loc_6E7296: FLdRfVar var_204
  loc_6E7299: ILdI2 tank
  loc_6E729C: LitI2_Byte 1
  loc_6E729E: SubI2
  loc_6E729F: FLdPrThis
  loc_6E72A0: VCallAd Control_ID_Agua
  loc_6E72A3: FStAdFunc var_E8
  loc_6E72A6: FLdPr var_E8
  loc_6E72A9: Set from_stack_2 = Me(from_stack_1)
  loc_6E72AE: FLdPr var_204
  loc_6E72B1: Me.Caption = from_stack_1
  loc_6E72B6: FFree1Str var_FC
  loc_6E72B9: FFreeAd var_E8 = ""
  loc_6E72C0: FLdPr Me
  loc_6E72C3: MemLdStr strAguaAb
  loc_6E72C6: FLdRfVar var_204
  loc_6E72C9: ILdI2 tank
  loc_6E72CC: LitI2_Byte 1
  loc_6E72CE: SubI2
  loc_6E72CF: FLdPrThis
  loc_6E72D0: VCallAd Control_ID_lblTituloAgua
  loc_6E72D3: FStAdFunc var_E8
  loc_6E72D6: FLdPr var_E8
  loc_6E72D9: Set from_stack_2 = Me(from_stack_1)
  loc_6E72DE: FLdPr var_204
  loc_6E72E1: Me.Caption = from_stack_1
  loc_6E72E6: FFreeAd var_E8 = ""
  loc_6E72ED: Branch loc_6E751A
  loc_6E72F0: ILdRf var_A0
  loc_6E72F3: ILdI2 tank
  loc_6E72F6: CI4UI1
  loc_6E72F7: FLdPr Me
  loc_6E72FA: MemLdRfVar from_stack_1.global_292
  loc_6E72FD: Ary1LdI4
  loc_6E72FE: NeI4
  loc_6E72FF: FLdPr Me
  loc_6E7302: MemLdI2 global_340
  loc_6E7305: OrI4
  loc_6E7306: BranchF loc_6E73B2
  loc_6E7309: ILdI2 tank
  loc_6E730C: ImpAdCallI2 Proc_158_7_5DA158()
  loc_6E7311: LitI2_Byte 0
  loc_6E7313: EqI2
  loc_6E7314: BranchF loc_6E73B2
  loc_6E7317: ILdRf var_A0
  loc_6E731A: LitI4 0
  loc_6E731F: EqI4
  loc_6E7320: BranchF loc_6E7353
  loc_6E7323: FLdPr Me
  loc_6E7326: MemLdStr strND
  loc_6E7329: FLdRfVar var_204
  loc_6E732C: ILdI2 tank
  loc_6E732F: LitI2_Byte 1
  loc_6E7331: SubI2
  loc_6E7332: FLdPrThis
  loc_6E7333: VCallAd Control_ID_Combustible
  loc_6E7336: FStAdFunc var_E8
  loc_6E7339: FLdPr var_E8
  loc_6E733C: Set from_stack_2 = Me(from_stack_1)
  loc_6E7341: FLdPr var_204
  loc_6E7344: Me.Caption = from_stack_1
  loc_6E7349: FFreeAd var_E8 = ""
  loc_6E7350: Branch loc_6E7385
  loc_6E7353: ILdRf var_A0
  loc_6E7356: CStrI4
  loc_6E7358: FStStrNoPop var_FC
  loc_6E735B: FLdRfVar var_204
  loc_6E735E: ILdI2 tank
  loc_6E7361: LitI2_Byte 1
  loc_6E7363: SubI2
  loc_6E7364: FLdPrThis
  loc_6E7365: VCallAd Control_ID_Combustible
  loc_6E7368: FStAdFunc var_E8
  loc_6E736B: FLdPr var_E8
  loc_6E736E: Set from_stack_2 = Me(from_stack_1)
  loc_6E7373: FLdPr var_204
  loc_6E7376: Me.Caption = from_stack_1
  loc_6E737B: FFree1Str var_FC
  loc_6E737E: FFreeAd var_E8 = ""
  loc_6E7385: FLdPr Me
  loc_6E7388: MemLdStr strPmm
  loc_6E738B: FLdRfVar var_204
  loc_6E738E: ILdI2 tank
  loc_6E7391: LitI2_Byte 1
  loc_6E7393: SubI2
  loc_6E7394: FLdPrThis
  loc_6E7395: VCallAd Control_ID_lblTituloProducto
  loc_6E7398: FStAdFunc var_E8
  loc_6E739B: FLdPr var_E8
  loc_6E739E: Set from_stack_2 = Me(from_stack_1)
  loc_6E73A3: FLdPr var_204
  loc_6E73A6: Me.Caption = from_stack_1
  loc_6E73AB: FFreeAd var_E8 = ""
  loc_6E73B2: ILdRf var_9C
  loc_6E73B5: ILdI2 tank
  loc_6E73B8: CI4UI1
  loc_6E73B9: FLdPr Me
  loc_6E73BC: MemLdRfVar from_stack_1.global_268
  loc_6E73BF: Ary1LdI4
  loc_6E73C0: NeI4
  loc_6E73C1: FLdPr Me
  loc_6E73C4: MemLdI2 global_340
  loc_6E73C7: OrI4
  loc_6E73C8: BranchF loc_6E7466
  loc_6E73CB: ILdRf var_A0
  loc_6E73CE: LitI4 0
  loc_6E73D3: EqI4
  loc_6E73D4: BranchF loc_6E7407
  loc_6E73D7: FLdPr Me
  loc_6E73DA: MemLdStr strPmm
  loc_6E73DD: FLdRfVar var_204
  loc_6E73E0: ILdI2 tank
  loc_6E73E3: LitI2_Byte 1
  loc_6E73E5: SubI2
  loc_6E73E6: FLdPrThis
  loc_6E73E7: VCallAd Control_ID_Vacio
  loc_6E73EA: FStAdFunc var_E8
  loc_6E73ED: FLdPr var_E8
  loc_6E73F0: Set from_stack_2 = Me(from_stack_1)
  loc_6E73F5: FLdPr var_204
  loc_6E73F8: Me.Caption = from_stack_1
  loc_6E73FD: FFreeAd var_E8 = ""
  loc_6E7404: Branch loc_6E7439
  loc_6E7407: ILdRf var_9C
  loc_6E740A: CStrI4
  loc_6E740C: FStStrNoPop var_FC
  loc_6E740F: FLdRfVar var_204
  loc_6E7412: ILdI2 tank
  loc_6E7415: LitI2_Byte 1
  loc_6E7417: SubI2
  loc_6E7418: FLdPrThis
  loc_6E7419: VCallAd Control_ID_Vacio
  loc_6E741C: FStAdFunc var_E8
  loc_6E741F: FLdPr var_E8
  loc_6E7422: Set from_stack_2 = Me(from_stack_1)
  loc_6E7427: FLdPr var_204
  loc_6E742A: Me.Caption = from_stack_1
  loc_6E742F: FFree1Str var_FC
  loc_6E7432: FFreeAd var_E8 = ""
  loc_6E7439: FLdPr Me
  loc_6E743C: MemLdStr strTemp
  loc_6E743F: FLdRfVar var_204
  loc_6E7442: ILdI2 tank
  loc_6E7445: LitI2_Byte 1
  loc_6E7447: SubI2
  loc_6E7448: FLdPrThis
  loc_6E7449: VCallAd Control_ID_lblTituloVacio
  loc_6E744C: FStAdFunc var_E8
  loc_6E744F: FLdPr var_E8
  loc_6E7452: Set from_stack_2 = Me(from_stack_1)
  loc_6E7457: FLdPr var_204
  loc_6E745A: Me.Caption = from_stack_1
  loc_6E745F: FFreeAd var_E8 = ""
  loc_6E7466: ILdRf var_A4
  loc_6E7469: ILdI2 tank
  loc_6E746C: CI4UI1
  loc_6E746D: FLdPr Me
  loc_6E7470: MemLdRfVar from_stack_1.global_316
  loc_6E7473: Ary1LdI4
  loc_6E7474: NeI4
  loc_6E7475: FLdPr Me
  loc_6E7478: MemLdI2 global_340
  loc_6E747B: OrI4
  loc_6E747C: BranchF loc_6E751A
  loc_6E747F: ILdRf var_A0
  loc_6E7482: LitI4 0
  loc_6E7487: EqI4
  loc_6E7488: BranchF loc_6E74BB
  loc_6E748B: FLdPr Me
  loc_6E748E: MemLdStr strPmm
  loc_6E7491: FLdRfVar var_204
  loc_6E7494: ILdI2 tank
  loc_6E7497: LitI2_Byte 1
  loc_6E7499: SubI2
  loc_6E749A: FLdPrThis
  loc_6E749B: VCallAd Control_ID_Agua
  loc_6E749E: FStAdFunc var_E8
  loc_6E74A1: FLdPr var_E8
  loc_6E74A4: Set from_stack_2 = Me(from_stack_1)
  loc_6E74A9: FLdPr var_204
  loc_6E74AC: Me.Caption = from_stack_1
  loc_6E74B1: FFreeAd var_E8 = ""
  loc_6E74B8: Branch loc_6E74ED
  loc_6E74BB: ILdRf var_A4
  loc_6E74BE: CStrI4
  loc_6E74C0: FStStrNoPop var_FC
  loc_6E74C3: FLdRfVar var_204
  loc_6E74C6: ILdI2 tank
  loc_6E74C9: LitI2_Byte 1
  loc_6E74CB: SubI2
  loc_6E74CC: FLdPrThis
  loc_6E74CD: VCallAd Control_ID_Agua
  loc_6E74D0: FStAdFunc var_E8
  loc_6E74D3: FLdPr var_E8
  loc_6E74D6: Set from_stack_2 = Me(from_stack_1)
  loc_6E74DB: FLdPr var_204
  loc_6E74DE: Me.Caption = from_stack_1
  loc_6E74E3: FFree1Str var_FC
  loc_6E74E6: FFreeAd var_E8 = ""
  loc_6E74ED: FLdPr Me
  loc_6E74F0: MemLdStr strAmm
  loc_6E74F3: FLdRfVar var_204
  loc_6E74F6: ILdI2 tank
  loc_6E74F9: LitI2_Byte 1
  loc_6E74FB: SubI2
  loc_6E74FC: FLdPrThis
  loc_6E74FD: VCallAd Control_ID_lblTituloAgua
  loc_6E7500: FStAdFunc var_E8
  loc_6E7503: FLdPr var_E8
  loc_6E7506: Set from_stack_2 = Me(from_stack_1)
  loc_6E750B: FLdPr var_204
  loc_6E750E: Me.Caption = from_stack_1
  loc_6E7513: FFreeAd var_E8 = ""
  loc_6E751A: FLdRfVar var_200
  loc_6E751D: FLdRfVar var_20C
  loc_6E7520: ILdI2 tank
  loc_6E7523: LitI2_Byte 1
  loc_6E7525: SubI2
  loc_6E7526: FLdPrThis
  loc_6E7527: VCallAd Control_ID_Combustible
  loc_6E752A: FStAdFunc var_208
  loc_6E752D: FLdPr var_208
  loc_6E7530: Set from_stack_2 = Me(from_stack_1)
  loc_6E7535: FLdPr var_20C
  loc_6E7538:  = Me.Caption
  loc_6E753D: ILdRf var_200
  loc_6E7540: ImpAdCallFPR4 push Val()
  loc_6E7545: FStFPR8 var_220
  loc_6E7548: FLdRfVar var_FC
  loc_6E754B: FLdRfVar var_204
  loc_6E754E: ILdI2 tank
  loc_6E7551: LitI2_Byte 1
  loc_6E7553: SubI2
  loc_6E7554: FLdPrThis
  loc_6E7555: VCallAd Control_ID_Agua
  loc_6E7558: FStAdFunc var_E8
  loc_6E755B: FLdPr var_E8
  loc_6E755E: Set from_stack_2 = Me(from_stack_1)
  loc_6E7563: FLdPr var_204
  loc_6E7566:  = Me.Caption
  loc_6E756B: ILdRf var_FC
  loc_6E756E: ImpAdCallFPR4 push Val()
  loc_6E7573: FLdFPR8 var_220
  loc_6E7576: AddR8
  loc_6E7577: CStrR8
  loc_6E7579: FStStrNoPop var_218
  loc_6E757C: FLdRfVar var_214
  loc_6E757F: ILdI2 tank
  loc_6E7582: LitI2_Byte 1
  loc_6E7584: SubI2
  loc_6E7585: FLdPrThis
  loc_6E7586: VCallAd Control_ID_lblVolumen
  loc_6E7589: FStAdFunc var_210
  loc_6E758C: FLdPr var_210
  loc_6E758F: Set from_stack_2 = Me(from_stack_1)
  loc_6E7594: FLdPr var_214
  loc_6E7597: Me.Caption = from_stack_1
  loc_6E759C: FFreeStr var_FC = "": var_200 = ""
  loc_6E75A5: FFreeAd var_E8 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = ""
  loc_6E75B4: ILdRf var_98
  loc_6E75B7: ILdI2 tank
  loc_6E75BA: CI4UI1
  loc_6E75BB: FLdPr Me
  loc_6E75BE: MemLdRfVar from_stack_1.global_196
  loc_6E75C1: Ary1StI4
  loc_6E75C2: ILdRf var_94
  loc_6E75C5: ILdI2 tank
  loc_6E75C8: CI4UI1
  loc_6E75C9: FLdPr Me
  loc_6E75CC: MemLdRfVar from_stack_1.global_220
  loc_6E75CF: Ary1StI4
  loc_6E75D0: ILdRf var_90
  loc_6E75D3: ILdI2 tank
  loc_6E75D6: CI4UI1
  loc_6E75D7: FLdPr Me
  loc_6E75DA: MemLdRfVar from_stack_1.global_244
  loc_6E75DD: Ary1StI4
  loc_6E75DE: ILdRf var_A0
  loc_6E75E1: ILdI2 tank
  loc_6E75E4: CI4UI1
  loc_6E75E5: FLdPr Me
  loc_6E75E8: MemLdRfVar from_stack_1.global_292
  loc_6E75EB: Ary1StI4
  loc_6E75EC: ILdRf var_A4
  loc_6E75EF: ILdI2 tank
  loc_6E75F2: CI4UI1
  loc_6E75F3: FLdPr Me
  loc_6E75F6: MemLdRfVar from_stack_1.global_316
  loc_6E75F9: Ary1StI4
  loc_6E75FA: ILdRf var_9C
  loc_6E75FD: ILdI2 tank
  loc_6E7600: CI4UI1
  loc_6E7601: FLdPr Me
  loc_6E7604: MemLdRfVar from_stack_1.global_268
  loc_6E7607: Ary1StI4
  loc_6E7608: ILdRf tank
  loc_6E760B: from_stack_2v = Proc_117_70_6D20EC(from_stack_1v)
  loc_6E7610: ExitProcHresult
End Sub

Private Function Proc_117_64_5E7A7C(arg_C) '5E7A7C
  'Data Table: 44F8E0
  loc_5E7A0C: LitI2_Byte 0
  loc_5E7A0E: FLdRfVar var_8A
  loc_5E7A11: LitI2 255
  loc_5E7A14: ForI2 var_8E
  loc_5E7A1A: FLdRfVar var_8A
  loc_5E7A1D: CVarRef
  loc_5E7A22: FLdRfVar var_B0
  loc_5E7A25: ImpAdCallFPR4  = Hex()
  loc_5E7A2A: ILdI4 arg_C
  loc_5E7A2D: CVarStr var_F0
  loc_5E7A30: HardType
  loc_5E7A31: LitI4 1
  loc_5E7A36: LitI4 1
  loc_5E7A3B: LitVarStr var_C0, "00"
  loc_5E7A40: FStVarCopyObj var_D0
  loc_5E7A43: FLdRfVar var_D0
  loc_5E7A46: FLdRfVar var_B0
  loc_5E7A49: FLdRfVar var_E0
  loc_5E7A4C: ImpAdCallFPR4  = Format(, )
  loc_5E7A51: FLdRfVar var_E0
  loc_5E7A54: EqVarBool
  loc_5E7A56: FFreeVar var_B0 = "": var_D0 = ""
  loc_5E7A5F: BranchF loc_5E7A65
  loc_5E7A62: Branch loc_5E7A6D
  loc_5E7A65: FLdRfVar var_8A
  loc_5E7A68: NextI2 var_8E, loc_5E7A1A
  loc_5E7A6D: FLdI2 var_8A
  loc_5E7A70: CI4UI1
  loc_5E7A71: FStR4 var_88
  loc_5E7A74: ExitProcCbHresult
End Function

Private Function Proc_117_65_6135F8(arg_C) '6135F8
  'Data Table: 44F8E0
  loc_6134E8: FLdRfVar var_90
  loc_6134EB: FLdRfVar var_8C
  loc_6134EE: ILdI2 arg_C
  loc_6134F1: FLdPrThis
  loc_6134F2: VCallAd Control_ID_imgTanque
  loc_6134F5: FStAdFunc var_88
  loc_6134F8: FLdPr var_88
  loc_6134FB: Set from_stack_2 = Me(from_stack_1)
  loc_613500: FLdPr var_8C
  loc_613503:  = Me.Width
  loc_613508: ILdRf var_90
  loc_61350B: FLdPrThis
  loc_61350C: VCallAd Control_ID_lbGNC
  loc_61350F: FStAdFunc var_94
  loc_613512: FLdPr var_94
  loc_613515: Me.Width = from_stack_1s
  loc_61351A: FFreeAd var_88 = "": var_8C = ""
  loc_613523: FLdRfVar var_90
  loc_613526: FLdRfVar var_8C
  loc_613529: ILdI2 arg_C
  loc_61352C: FLdPrThis
  loc_61352D: VCallAd Control_ID_imgTanque
  loc_613530: FStAdFunc var_88
  loc_613533: FLdPr var_88
  loc_613536: Set from_stack_2 = Me(from_stack_1)
  loc_61353B: FLdPr var_8C
  loc_61353E:  = Me.Left
  loc_613543: ILdRf var_90
  loc_613546: FLdPrThis
  loc_613547: VCallAd Control_ID_lbGNC
  loc_61354A: FStAdFunc var_94
  loc_61354D: FLdPr var_94
  loc_613550: Me.Left = from_stack_1s
  loc_613555: FFreeAd var_88 = "": var_8C = ""
  loc_61355E: FLdRfVar var_9C
  loc_613561: FLdRfVar var_98
  loc_613564: ILdI2 arg_C
  loc_613567: FLdPrThis
  loc_613568: VCallAd Control_ID_imgTanque
  loc_61356B: FStAdFunc var_94
  loc_61356E: FLdPr var_94
  loc_613571: Set from_stack_2 = Me(from_stack_1)
  loc_613576: FLdPr var_98
  loc_613579:  = Me.Height
  loc_61357E: FLdRfVar var_A4
  loc_613581: FLdPrThis
  loc_613582: VCallAd Control_ID_lbGNC
  loc_613585: FStAdFunc var_A0
  loc_613588: FLdPr var_A0
  loc_61358B:  = Me.Height
  loc_613590: FLdRfVar var_90
  loc_613593: FLdRfVar var_8C
  loc_613596: ILdI2 arg_C
  loc_613599: FLdPrThis
  loc_61359A: VCallAd Control_ID_imgTanque
  loc_61359D: FStAdFunc var_88
  loc_6135A0: FLdPr var_88
  loc_6135A3: Set from_stack_2 = Me(from_stack_1)
  loc_6135A8: FLdPr var_8C
  loc_6135AB:  = Me.Top
  loc_6135B0: FLdFPR4 var_90
  loc_6135B3: FLdFPR4 var_9C
  loc_6135B6: LitI2_Byte 2
  loc_6135B8: CR8I2
  loc_6135B9: DivR8
  loc_6135BA: AddR8
  loc_6135BB: FLdFPR4 var_A4
  loc_6135BE: LitI2_Byte 2
  loc_6135C0: CR8I2
  loc_6135C1: DivR8
  loc_6135C2: SubR4
  loc_6135C3: PopFPR4
  loc_6135C4: FLdPrThis
  loc_6135C5: VCallAd Control_ID_lbGNC
  loc_6135C8: FStAdFunc var_A8
  loc_6135CB: FLdPr var_A8
  loc_6135CE: Me.Top = from_stack_1s
  loc_6135D3: FFreeAd var_88 = "": var_8C = "": var_94 = "": var_98 = "": var_A0 = ""
  loc_6135E2: LitI2_Byte &HFF
  loc_6135E4: FLdPrThis
  loc_6135E5: VCallAd Control_ID_lbGNC
  loc_6135E8: FStAdFunc var_88
  loc_6135EB: FLdPr var_88
  loc_6135EE: Me.Visible = from_stack_1b
  loc_6135F3: FFree1Ad var_88
  loc_6135F6: ExitProcHresult
End Function

Private Function Proc_117_66_7172A0() '7172A0
  'Data Table: 44F8E0
  loc_71564C: LitI2_Byte 0
  loc_71564E: FLdRfVar var_86
  loc_715651: ImpAdLdUI1
  loc_715655: CI2UI1
  loc_715657: LitI2_Byte 1
  loc_715659: SubI2
  loc_71565A: ForI2 var_8A
  loc_715660: FLdI2 var_86
  loc_715663: LitI2_Byte 0
  loc_715665: EqI2
  loc_715666: BranchF loc_715722
  loc_715669: FLdPr Me
  loc_71566C: MemLdStr global_152
  loc_71566F: CR8I4
  loc_715670: CVarR4
  loc_715674: PopAdLdVar
  loc_715675: FLdRfVar var_94
  loc_715678: LitI2_Byte 0
  loc_71567A: FLdPrThis
  loc_71567B: VCallAd Control_ID_Titulo
  loc_71567E: FStAdFunc var_90
  loc_715681: FLdPr var_90
  loc_715684: Set from_stack_2 = Me(from_stack_1)
  loc_715689: FLdPr var_94
  loc_71568C: LateIdSt
  loc_715691: FFreeAd var_90 = ""
  loc_715698: FLdRfVar var_94
  loc_71569B: LitI2_Byte 0
  loc_71569D: FLdPrThis
  loc_71569E: VCallAd Control_ID_Titulo
  loc_7156A1: FStAdFunc var_90
  loc_7156A4: FLdPr var_90
  loc_7156A7: Set from_stack_2 = Me(from_stack_1)
  loc_7156AC: FLdPr var_94
  loc_7156AF: LateIdLdVar var_B8 DispID_5 -32767
  loc_7156B6: PopAd
  loc_7156B8: FLdRfVar var_A8
  loc_7156BB: FLdPr Me
  loc_7156BE:  = Me.Width
  loc_7156C3: FLdFPR4 var_A8
  loc_7156C6: FLdRfVar var_B8
  loc_7156C9: CR8Var
  loc_7156CB: FLdPr Me
  loc_7156CE: MemLdI2 global_188
  loc_7156D1: CR8I2
  loc_7156D2: MulR8
  loc_7156D3: SubR4
  loc_7156D4: FLdPr Me
  loc_7156D7: MemLdI2 global_188
  loc_7156DA: LitI2_Byte 1
  loc_7156DC: AddI2
  loc_7156DD: CR8I2
  loc_7156DE: DivR8
  loc_7156DF: CI4R8
  loc_7156E0: FLdPr Me
  loc_7156E3: MemStI4 global_192
  loc_7156E6: FFreeAd var_90 = ""
  loc_7156ED: FFree1Var var_B8 = ""
  loc_7156F0: FLdPr Me
  loc_7156F3: MemLdStr global_192
  loc_7156F6: CR8I4
  loc_7156F7: CVarR4
  loc_7156FB: PopAdLdVar
  loc_7156FC: FLdRfVar var_94
  loc_7156FF: LitI2_Byte 0
  loc_715701: FLdPrThis
  loc_715702: VCallAd Control_ID_Titulo
  loc_715705: FStAdFunc var_90
  loc_715708: FLdPr var_90
  loc_71570B: Set from_stack_2 = Me(from_stack_1)
  loc_715710: FLdPr var_94
  loc_715713: LateIdSt
  loc_715718: FFreeAd var_90 = ""
  loc_71571F: Branch loc_715C20
  loc_715722: FLdRfVar var_94
  loc_715725: FLdI2 var_86
  loc_715728: FLdPrThis
  loc_715729: VCallAd Control_ID_Titulo
  loc_71572C: FStAdFunc var_90
  loc_71572F: FLdPr var_90
  loc_715732: Set from_stack_2 = Me(from_stack_1)
  loc_715737: FLdZeroAd var_94
  loc_71573A: FStAdFuncNoPop
  loc_71573D: ImpAdLdRf MemVar_7520D4
  loc_715740: NewIfNullPr Global
  loc_715743: Global.Load from_stack_1
  loc_715748: FFreeAd var_90 = ""
  loc_71574F: FLdRfVar var_94
  loc_715752: FLdI2 var_86
  loc_715755: FLdPrThis
  loc_715756: VCallAd Control_ID_lblTankStatus
  loc_715759: FStAdFunc var_90
  loc_71575C: FLdPr var_90
  loc_71575F: Set from_stack_2 = Me(from_stack_1)
  loc_715764: FLdZeroAd var_94
  loc_715767: FStAdFuncNoPop
  loc_71576A: ImpAdLdRf MemVar_7520D4
  loc_71576D: NewIfNullPr Global
  loc_715770: Global.Load from_stack_1
  loc_715775: FFreeAd var_90 = ""
  loc_71577C: FLdRfVar var_94
  loc_71577F: FLdI2 var_86
  loc_715782: FLdPrThis
  loc_715783: VCallAd Control_ID_imgTanque
  loc_715786: FStAdFunc var_90
  loc_715789: FLdPr var_90
  loc_71578C: Set from_stack_2 = Me(from_stack_1)
  loc_715791: FLdZeroAd var_94
  loc_715794: FStAdFuncNoPop
  loc_715797: ImpAdLdRf MemVar_7520D4
  loc_71579A: NewIfNullPr Global
  loc_71579D: Global.Load from_stack_1
  loc_7157A2: FFreeAd var_90 = ""
  loc_7157A9: FLdRfVar var_94
  loc_7157AC: FLdI2 var_86
  loc_7157AF: FLdPrThis
  loc_7157B0: VCallAd Control_ID_Vacio
  loc_7157B3: FStAdFunc var_90
  loc_7157B6: FLdPr var_90
  loc_7157B9: Set from_stack_2 = Me(from_stack_1)
  loc_7157BE: FLdZeroAd var_94
  loc_7157C1: FStAdFuncNoPop
  loc_7157C4: ImpAdLdRf MemVar_7520D4
  loc_7157C7: NewIfNullPr Global
  loc_7157CA: Global.Load from_stack_1
  loc_7157CF: FFreeAd var_90 = ""
  loc_7157D6: FLdRfVar var_94
  loc_7157D9: FLdI2 var_86
  loc_7157DC: FLdPrThis
  loc_7157DD: VCallAd Control_ID_lblTituloVacio
  loc_7157E0: FStAdFunc var_90
  loc_7157E3: FLdPr var_90
  loc_7157E6: Set from_stack_2 = Me(from_stack_1)
  loc_7157EB: FLdZeroAd var_94
  loc_7157EE: FStAdFuncNoPop
  loc_7157F1: ImpAdLdRf MemVar_7520D4
  loc_7157F4: NewIfNullPr Global
  loc_7157F7: Global.Load from_stack_1
  loc_7157FC: FFreeAd var_90 = ""
  loc_715803: FLdRfVar var_94
  loc_715806: FLdI2 var_86
  loc_715809: FLdPrThis
  loc_71580A: VCallAd Control_ID_lblVolumen
  loc_71580D: FStAdFunc var_90
  loc_715810: FLdPr var_90
  loc_715813: Set from_stack_2 = Me(from_stack_1)
  loc_715818: FLdZeroAd var_94
  loc_71581B: FStAdFuncNoPop
  loc_71581E: ImpAdLdRf MemVar_7520D4
  loc_715821: NewIfNullPr Global
  loc_715824: Global.Load from_stack_1
  loc_715829: FFreeAd var_90 = ""
  loc_715830: FLdRfVar var_94
  loc_715833: FLdI2 var_86
  loc_715836: FLdPrThis
  loc_715837: VCallAd Control_ID_lblTituloVolumen
  loc_71583A: FStAdFunc var_90
  loc_71583D: FLdPr var_90
  loc_715840: Set from_stack_2 = Me(from_stack_1)
  loc_715845: FLdZeroAd var_94
  loc_715848: FStAdFuncNoPop
  loc_71584B: ImpAdLdRf MemVar_7520D4
  loc_71584E: NewIfNullPr Global
  loc_715851: Global.Load from_stack_1
  loc_715856: FFreeAd var_90 = ""
  loc_71585D: FLdRfVar var_94
  loc_715860: FLdI2 var_86
  loc_715863: FLdPrThis
  loc_715864: VCallAd Control_ID_Combustible
  loc_715867: FStAdFunc var_90
  loc_71586A: FLdPr var_90
  loc_71586D: Set from_stack_2 = Me(from_stack_1)
  loc_715872: FLdZeroAd var_94
  loc_715875: FStAdFuncNoPop
  loc_715878: ImpAdLdRf MemVar_7520D4
  loc_71587B: NewIfNullPr Global
  loc_71587E: Global.Load from_stack_1
  loc_715883: FFreeAd var_90 = ""
  loc_71588A: FLdRfVar var_94
  loc_71588D: FLdI2 var_86
  loc_715890: FLdPrThis
  loc_715891: VCallAd Control_ID_lblTituloProducto
  loc_715894: FStAdFunc var_90
  loc_715897: FLdPr var_90
  loc_71589A: Set from_stack_2 = Me(from_stack_1)
  loc_71589F: FLdZeroAd var_94
  loc_7158A2: FStAdFuncNoPop
  loc_7158A5: ImpAdLdRf MemVar_7520D4
  loc_7158A8: NewIfNullPr Global
  loc_7158AB: Global.Load from_stack_1
  loc_7158B0: FFreeAd var_90 = ""
  loc_7158B7: FLdRfVar var_94
  loc_7158BA: FLdI2 var_86
  loc_7158BD: FLdPrThis
  loc_7158BE: VCallAd Control_ID_Agua
  loc_7158C1: FStAdFunc var_90
  loc_7158C4: FLdPr var_90
  loc_7158C7: Set from_stack_2 = Me(from_stack_1)
  loc_7158CC: FLdZeroAd var_94
  loc_7158CF: FStAdFuncNoPop
  loc_7158D2: ImpAdLdRf MemVar_7520D4
  loc_7158D5: NewIfNullPr Global
  loc_7158D8: Global.Load from_stack_1
  loc_7158DD: FFreeAd var_90 = ""
  loc_7158E4: FLdRfVar var_94
  loc_7158E7: FLdI2 var_86
  loc_7158EA: FLdPrThis
  loc_7158EB: VCallAd Control_ID_lblTituloAgua
  loc_7158EE: FStAdFunc var_90
  loc_7158F1: FLdPr var_90
  loc_7158F4: Set from_stack_2 = Me(from_stack_1)
  loc_7158F9: FLdZeroAd var_94
  loc_7158FC: FStAdFuncNoPop
  loc_7158FF: ImpAdLdRf MemVar_7520D4
  loc_715902: NewIfNullPr Global
  loc_715905: Global.Load from_stack_1
  loc_71590A: FFreeAd var_90 = ""
  loc_715911: FLdRfVar var_94
  loc_715914: FLdI2 var_86
  loc_715917: FLdPrThis
  loc_715918: VCallAd Control_ID_shpFloodWater
  loc_71591B: FStAdFunc var_90
  loc_71591E: FLdPr var_90
  loc_715921: Set from_stack_2 = Me(from_stack_1)
  loc_715926: FLdZeroAd var_94
  loc_715929: FStAdFuncNoPop
  loc_71592C: ImpAdLdRf MemVar_7520D4
  loc_71592F: NewIfNullPr Global
  loc_715932: Global.Load from_stack_1
  loc_715937: FFreeAd var_90 = ""
  loc_71593E: FLdRfVar var_94
  loc_715941: FLdI2 var_86
  loc_715944: FLdPrThis
  loc_715945: VCallAd Control_ID_shpFloodVacio
  loc_715948: FStAdFunc var_90
  loc_71594B: FLdPr var_90
  loc_71594E: Set from_stack_2 = Me(from_stack_1)
  loc_715953: FLdZeroAd var_94
  loc_715956: FStAdFuncNoPop
  loc_715959: ImpAdLdRf MemVar_7520D4
  loc_71595C: NewIfNullPr Global
  loc_71595F: Global.Load from_stack_1
  loc_715964: FFreeAd var_90 = ""
  loc_71596B: FLdRfVar var_94
  loc_71596E: FLdI2 var_86
  loc_715971: FLdPrThis
  loc_715972: VCallAd Control_ID_shpFloodProduct
  loc_715975: FStAdFunc var_90
  loc_715978: FLdPr var_90
  loc_71597B: Set from_stack_2 = Me(from_stack_1)
  loc_715980: FLdZeroAd var_94
  loc_715983: FStAdFuncNoPop
  loc_715986: ImpAdLdRf MemVar_7520D4
  loc_715989: NewIfNullPr Global
  loc_71598C: Global.Load from_stack_1
  loc_715991: FFreeAd var_90 = ""
  loc_715998: FLdRfVar var_94
  loc_71599B: FLdI2 var_86
  loc_71599E: FLdPrThis
  loc_71599F: VCallAd Control_ID_imgSemaforoVerde
  loc_7159A2: FStAdFunc var_90
  loc_7159A5: FLdPr var_90
  loc_7159A8: Set from_stack_2 = Me(from_stack_1)
  loc_7159AD: FLdZeroAd var_94
  loc_7159B0: FStAdFuncNoPop
  loc_7159B3: ImpAdLdRf MemVar_7520D4
  loc_7159B6: NewIfNullPr Global
  loc_7159B9: Global.Load from_stack_1
  loc_7159BE: FFreeAd var_90 = ""
  loc_7159C5: FLdRfVar var_94
  loc_7159C8: FLdI2 var_86
  loc_7159CB: FLdPrThis
  loc_7159CC: VCallAd Control_ID_imgSemaforoAmarillo
  loc_7159CF: FStAdFunc var_90
  loc_7159D2: FLdPr var_90
  loc_7159D5: Set from_stack_2 = Me(from_stack_1)
  loc_7159DA: FLdZeroAd var_94
  loc_7159DD: FStAdFuncNoPop
  loc_7159E0: ImpAdLdRf MemVar_7520D4
  loc_7159E3: NewIfNullPr Global
  loc_7159E6: Global.Load from_stack_1
  loc_7159EB: FFreeAd var_90 = ""
  loc_7159F2: FLdRfVar var_94
  loc_7159F5: FLdI2 var_86
  loc_7159F8: FLdPrThis
  loc_7159F9: VCallAd Control_ID_imgSemaforoRojo
  loc_7159FC: FStAdFunc var_90
  loc_7159FF: FLdPr var_90
  loc_715A02: Set from_stack_2 = Me(from_stack_1)
  loc_715A07: FLdZeroAd var_94
  loc_715A0A: FStAdFuncNoPop
  loc_715A0D: ImpAdLdRf MemVar_7520D4
  loc_715A10: NewIfNullPr Global
  loc_715A13: Global.Load from_stack_1
  loc_715A18: FFreeAd var_90 = ""
  loc_715A1F: FLdRfVar var_94
  loc_715A22: FLdI2 var_86
  loc_715A25: FLdPrThis
  loc_715A26: VCallAd Control_ID_Tictac
  loc_715A29: FStAdFunc var_90
  loc_715A2C: FLdPr var_90
  loc_715A2F: Set from_stack_2 = Me(from_stack_1)
  loc_715A34: FLdZeroAd var_94
  loc_715A37: FStAdFuncNoPop
  loc_715A3A: ImpAdLdRf MemVar_7520D4
  loc_715A3D: NewIfNullPr Global
  loc_715A40: Global.Load from_stack_1
  loc_715A45: FFreeAd var_90 = ""
  loc_715A4C: FLdRfVar var_94
  loc_715A4F: FLdI2 var_86
  loc_715A52: FLdPrThis
  loc_715A53: VCallAd Control_ID_imgConvertMM
  loc_715A56: FStAdFunc var_90
  loc_715A59: FLdPr var_90
  loc_715A5C: Set from_stack_2 = Me(from_stack_1)
  loc_715A61: FLdZeroAd var_94
  loc_715A64: FStAdFuncNoPop
  loc_715A67: ImpAdLdRf MemVar_7520D4
  loc_715A6A: NewIfNullPr Global
  loc_715A6D: Global.Load from_stack_1
  loc_715A72: FFreeAd var_90 = ""
  loc_715A79: LitVar_TRUE var_A4
  loc_715A7C: PopAdLdVar
  loc_715A7D: FLdRfVar var_94
  loc_715A80: FLdI2 var_86
  loc_715A83: FLdPrThis
  loc_715A84: VCallAd Control_ID_Titulo
  loc_715A87: FStAdFunc var_90
  loc_715A8A: FLdPr var_90
  loc_715A8D: Set from_stack_2 = Me(from_stack_1)
  loc_715A92: FLdPr var_94
  loc_715A95: LateIdSt
  loc_715A9A: FFreeAd var_90 = ""
  loc_715AA1: LitI2_Byte &HFF
  loc_715AA3: FLdRfVar var_94
  loc_715AA6: FLdI2 var_86
  loc_715AA9: FLdPrThis
  loc_715AAA: VCallAd Control_ID_imgTanque
  loc_715AAD: FStAdFunc var_90
  loc_715AB0: FLdPr var_90
  loc_715AB3: Set from_stack_2 = Me(from_stack_1)
  loc_715AB8: FLdPr var_94
  loc_715ABB: Me.Visible = from_stack_1b
  loc_715AC0: FFreeAd var_90 = ""
  loc_715AC7: LitI2_Byte &HFF
  loc_715AC9: FLdRfVar var_94
  loc_715ACC: FLdI2 var_86
  loc_715ACF: FLdPrThis
  loc_715AD0: VCallAd Control_ID_lblTituloVacio
  loc_715AD3: FStAdFunc var_90
  loc_715AD6: FLdPr var_90
  loc_715AD9: Set from_stack_2 = Me(from_stack_1)
  loc_715ADE: FLdPr var_94
  loc_715AE1: Me.Visible = from_stack_1b
  loc_715AE6: FFreeAd var_90 = ""
  loc_715AED: LitI2_Byte &HFF
  loc_715AEF: FLdRfVar var_94
  loc_715AF2: FLdI2 var_86
  loc_715AF5: FLdPrThis
  loc_715AF6: VCallAd Control_ID_lblVolumen
  loc_715AF9: FStAdFunc var_90
  loc_715AFC: FLdPr var_90
  loc_715AFF: Set from_stack_2 = Me(from_stack_1)
  loc_715B04: FLdPr var_94
  loc_715B07: Me.Visible = from_stack_1b
  loc_715B0C: FFreeAd var_90 = ""
  loc_715B13: LitI2_Byte &HFF
  loc_715B15: FLdRfVar var_94
  loc_715B18: FLdI2 var_86
  loc_715B1B: FLdPrThis
  loc_715B1C: VCallAd Control_ID_lblTituloVolumen
  loc_715B1F: FStAdFunc var_90
  loc_715B22: FLdPr var_90
  loc_715B25: Set from_stack_2 = Me(from_stack_1)
  loc_715B2A: FLdPr var_94
  loc_715B2D: Me.Visible = from_stack_1b
  loc_715B32: FFreeAd var_90 = ""
  loc_715B39: LitI2_Byte &HFF
  loc_715B3B: FLdRfVar var_94
  loc_715B3E: FLdI2 var_86
  loc_715B41: FLdPrThis
  loc_715B42: VCallAd Control_ID_Vacio
  loc_715B45: FStAdFunc var_90
  loc_715B48: FLdPr var_90
  loc_715B4B: Set from_stack_2 = Me(from_stack_1)
  loc_715B50: FLdPr var_94
  loc_715B53: Me.Visible = from_stack_1b
  loc_715B58: FFreeAd var_90 = ""
  loc_715B5F: LitI2_Byte &HFF
  loc_715B61: FLdRfVar var_94
  loc_715B64: FLdI2 var_86
  loc_715B67: FLdPrThis
  loc_715B68: VCallAd Control_ID_lblTituloProducto
  loc_715B6B: FStAdFunc var_90
  loc_715B6E: FLdPr var_90
  loc_715B71: Set from_stack_2 = Me(from_stack_1)
  loc_715B76: FLdPr var_94
  loc_715B79: Me.Visible = from_stack_1b
  loc_715B7E: FFreeAd var_90 = ""
  loc_715B85: LitI2_Byte &HFF
  loc_715B87: FLdRfVar var_94
  loc_715B8A: FLdI2 var_86
  loc_715B8D: FLdPrThis
  loc_715B8E: VCallAd Control_ID_Combustible
  loc_715B91: FStAdFunc var_90
  loc_715B94: FLdPr var_90
  loc_715B97: Set from_stack_2 = Me(from_stack_1)
  loc_715B9C: FLdPr var_94
  loc_715B9F: Me.Visible = from_stack_1b
  loc_715BA4: FFreeAd var_90 = ""
  loc_715BAB: LitI2_Byte &HFF
  loc_715BAD: FLdRfVar var_94
  loc_715BB0: FLdI2 var_86
  loc_715BB3: FLdPrThis
  loc_715BB4: VCallAd Control_ID_lblTituloAgua
  loc_715BB7: FStAdFunc var_90
  loc_715BBA: FLdPr var_90
  loc_715BBD: Set from_stack_2 = Me(from_stack_1)
  loc_715BC2: FLdPr var_94
  loc_715BC5: Me.Visible = from_stack_1b
  loc_715BCA: FFreeAd var_90 = ""
  loc_715BD1: LitI2_Byte &HFF
  loc_715BD3: FLdRfVar var_94
  loc_715BD6: FLdI2 var_86
  loc_715BD9: FLdPrThis
  loc_715BDA: VCallAd Control_ID_Agua
  loc_715BDD: FStAdFunc var_90
  loc_715BE0: FLdPr var_90
  loc_715BE3: Set from_stack_2 = Me(from_stack_1)
  loc_715BE8: FLdPr var_94
  loc_715BEB: Me.Visible = from_stack_1b
  loc_715BF0: FFreeAd var_90 = ""
  loc_715BF7: LitVar_FALSE
  loc_715BFB: PopAdLdVar
  loc_715BFC: FLdRfVar var_94
  loc_715BFF: FLdI2 var_86
  loc_715C02: FLdPrThis
  loc_715C03: VCallAd Control_ID_Tictac
  loc_715C06: FStAdFunc var_90
  loc_715C09: FLdPr var_90
  loc_715C0C: Set from_stack_2 = Me(from_stack_1)
  loc_715C11: FLdPr var_94
  loc_715C14: LateIdSt
  loc_715C19: FFreeAd var_90 = ""
  loc_715C20: LitI2_Byte 0
  loc_715C22: FLdRfVar var_94
  loc_715C25: FLdI2 var_86
  loc_715C28: FLdPrThis
  loc_715C29: VCallAd Control_ID_imgConvertMM
  loc_715C2C: FStAdFunc var_90
  loc_715C2F: FLdPr var_90
  loc_715C32: Set from_stack_2 = Me(from_stack_1)
  loc_715C37: FLdPr var_94
  loc_715C3A: Me.Visible = from_stack_1b
  loc_715C3F: FFreeAd var_90 = ""
  loc_715C46: ImpAdLdUI1
  loc_715C4A: CI2UI1
  loc_715C4C: LitI2_Byte 0
  loc_715C4E: GtI2
  loc_715C4F: BranchF loc_715CC6
  loc_715C52: LitVar_TRUE var_A4
  loc_715C55: PopAdLdVar
  loc_715C56: FLdRfVar var_94
  loc_715C59: FLdI2 var_86
  loc_715C5C: FLdPrThis
  loc_715C5D: VCallAd Control_ID_lblTankStatus
  loc_715C60: FStAdFunc var_90
  loc_715C63: FLdPr var_90
  loc_715C66: Set from_stack_2 = Me(from_stack_1)
  loc_715C6B: FLdPr var_94
  loc_715C6E: LateIdSt
  loc_715C73: FFreeAd var_90 = ""
  loc_715C7A: FLdRfVar var_BE
  loc_715C7D: FLdI2 var_86
  loc_715C80: LitI2_Byte 1
  loc_715C82: AddI2
  loc_715C83: CI4UI1
  loc_715C84: ImpAdLdRf MemVar_74C1D8
  loc_715C87: Ary1LdUI1
  loc_715C89: CI2UI1
  loc_715C8B: ImpAdLdRf MemVar_74A220
  loc_715C8E: NewIfNullPr clsProducts
  loc_715C91:  = clsProducts.hWnd
  loc_715C96: FLdI2 var_BE
  loc_715C99: NotI4
  loc_715C9A: BranchF loc_715CC3
  loc_715C9D: LitI2_Byte &HFF
  loc_715C9F: FLdRfVar var_94
  loc_715CA2: FLdI2 var_86
  loc_715CA5: FLdPrThis
  loc_715CA6: VCallAd Control_ID_imgConvertMM
  loc_715CA9: FStAdFunc var_90
  loc_715CAC: FLdPr var_90
  loc_715CAF: Set from_stack_2 = Me(from_stack_1)
  loc_715CB4: FLdPr var_94
  loc_715CB7: Me.Visible = from_stack_1b
  loc_715CBC: FFreeAd var_90 = ""
  loc_715CC3: Branch loc_715CEF
  loc_715CC6: LitVar_FALSE
  loc_715CCA: PopAdLdVar
  loc_715CCB: FLdRfVar var_94
  loc_715CCE: FLdI2 var_86
  loc_715CD1: FLdPrThis
  loc_715CD2: VCallAd Control_ID_lblTankStatus
  loc_715CD5: FStAdFunc var_90
  loc_715CD8: FLdPr var_90
  loc_715CDB: Set from_stack_2 = Me(from_stack_1)
  loc_715CE0: FLdPr var_94
  loc_715CE3: LateIdSt
  loc_715CE8: FFreeAd var_90 = ""
  loc_715CEF: FLdRfVar var_C4
  loc_715CF2: LitI2_Byte 0
  loc_715CF4: FLdPrThis
  loc_715CF5: VCallAd Control_ID_Titulo
  loc_715CF8: FStAdFunc var_BC
  loc_715CFB: FLdPr var_BC
  loc_715CFE: Set from_stack_2 = Me(from_stack_1)
  loc_715D03: FLdPr var_C4
  loc_715D06: LateIdLdVar var_D4 DispID_6 -32767
  loc_715D0D: PopAd
  loc_715D0F: FLdRfVar var_A8
  loc_715D12: FLdRfVar var_DC
  loc_715D15: LitI2_Byte 0
  loc_715D17: FLdPrThis
  loc_715D18: VCallAd Control_ID_imgTanque
  loc_715D1B: FStAdFunc var_D8
  loc_715D1E: FLdPr var_D8
  loc_715D21: Set from_stack_2 = Me(from_stack_1)
  loc_715D26: FLdPr var_DC
  loc_715D29:  = Me.Height
  loc_715D2E: FLdRfVar var_94
  loc_715D31: LitI2_Byte 0
  loc_715D33: FLdPrThis
  loc_715D34: VCallAd Control_ID_Titulo
  loc_715D37: FStAdFunc var_90
  loc_715D3A: FLdPr var_90
  loc_715D3D: Set from_stack_2 = Me(from_stack_1)
  loc_715D42: FLdPr var_94
  loc_715D45: LateIdLdVar var_B8 DispID_4 -32767
  loc_715D4C: CR8Var
  loc_715D4E: FLdRfVar var_D4
  loc_715D51: CR8Var
  loc_715D53: FLdFPR4 var_A8
  loc_715D56: AddR8
  loc_715D57: FLdPr Me
  loc_715D5A: MemLdStr global_156
  loc_715D5D: CR8I4
  loc_715D5E: AddR8
  loc_715D5F: FLdI2 var_86
  loc_715D62: CR8I2
  loc_715D63: FLdPr Me
  loc_715D66: MemLdI2 global_188
  loc_715D69: CR8I2
  loc_715D6A: DivR8
  loc_715D6B: FnIntR8
  loc_715D6D: MulR8
  loc_715D6E: AddR8
  loc_715D6F: CVarR4
  loc_715D73: PopAdLdVar
  loc_715D74: FLdRfVar var_E4
  loc_715D77: FLdI2 var_86
  loc_715D7A: FLdPrThis
  loc_715D7B: VCallAd Control_ID_Titulo
  loc_715D7E: FStAdFunc var_E0
  loc_715D81: FLdPr var_E0
  loc_715D84: Set from_stack_2 = Me(from_stack_1)
  loc_715D89: FLdPr var_E4
  loc_715D8C: LateIdSt
  loc_715D91: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_715DA4: FFreeVar var_B8 = ""
  loc_715DAB: LitVarStr var_A4, vbNullString
  loc_715DB0: PopAdLdVar
  loc_715DB1: FLdRfVar var_94
  loc_715DB4: FLdI2 var_86
  loc_715DB7: FLdPrThis
  loc_715DB8: VCallAd Control_ID_Titulo
  loc_715DBB: FStAdFunc var_90
  loc_715DBE: FLdPr var_90
  loc_715DC1: Set from_stack_2 = Me(from_stack_1)
  loc_715DC6: FLdPr var_94
  loc_715DC9: LateIdSt
  loc_715DCE: FFreeAd var_90 = ""
  loc_715DD5: FLdRfVar var_C4
  loc_715DD8: LitI2_Byte 0
  loc_715DDA: FLdPrThis
  loc_715DDB: VCallAd Control_ID_Titulo
  loc_715DDE: FStAdFunc var_BC
  loc_715DE1: FLdPr var_BC
  loc_715DE4: Set from_stack_2 = Me(from_stack_1)
  loc_715DE9: FLdPr var_C4
  loc_715DEC: LateIdLdVar var_D4 DispID_5 -32767
  loc_715DF3: PopAd
  loc_715DF5: FLdRfVar var_94
  loc_715DF8: LitI2_Byte 0
  loc_715DFA: FLdPrThis
  loc_715DFB: VCallAd Control_ID_Titulo
  loc_715DFE: FStAdFunc var_90
  loc_715E01: FLdPr var_90
  loc_715E04: Set from_stack_2 = Me(from_stack_1)
  loc_715E09: FLdPr var_94
  loc_715E0C: LateIdLdVar var_B8 DispID_3 -32767
  loc_715E13: CR8Var
  loc_715E15: FLdRfVar var_D4
  loc_715E18: CR8Var
  loc_715E1A: FLdPr Me
  loc_715E1D: MemLdStr global_192
  loc_715E20: CR8I4
  loc_715E21: AddR8
  loc_715E22: FLdI2 var_86
  loc_715E25: FLdPr Me
  loc_715E28: MemLdI2 global_188
  loc_715E2B: ModI2
  loc_715E2C: CR8I2
  loc_715E2D: MulR8
  loc_715E2E: AddR8
  loc_715E2F: CVarR4
  loc_715E33: PopAdLdVar
  loc_715E34: FLdRfVar var_DC
  loc_715E37: FLdI2 var_86
  loc_715E3A: FLdPrThis
  loc_715E3B: VCallAd Control_ID_Titulo
  loc_715E3E: FStAdFunc var_D8
  loc_715E41: FLdPr var_D8
  loc_715E44: Set from_stack_2 = Me(from_stack_1)
  loc_715E49: FLdPr var_DC
  loc_715E4C: LateIdSt
  loc_715E51: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_715E60: FFreeVar var_B8 = ""
  loc_715E67: LitVar_TRUE var_A4
  loc_715E6A: PopAdLdVar
  loc_715E6B: FLdRfVar var_94
  loc_715E6E: FLdI2 var_86
  loc_715E71: FLdPrThis
  loc_715E72: VCallAd Control_ID_Titulo
  loc_715E75: FStAdFunc var_90
  loc_715E78: FLdPr var_90
  loc_715E7B: Set from_stack_2 = Me(from_stack_1)
  loc_715E80: FLdPr var_94
  loc_715E83: LateIdSt
  loc_715E88: FFreeAd var_90 = ""
  loc_715E8F: FLdRfVar var_94
  loc_715E92: FLdI2 var_86
  loc_715E95: FLdPrThis
  loc_715E96: VCallAd Control_ID_Titulo
  loc_715E99: FStAdFunc var_90
  loc_715E9C: FLdPr var_90
  loc_715E9F: Set from_stack_2 = Me(from_stack_1)
  loc_715EA4: FLdPr var_94
  loc_715EA7: LateIdLdVar var_B8 DispID_4 -32767
  loc_715EAE: CR8Var
  loc_715EB0: LitI2_Byte &H14
  loc_715EB2: CR8I2
  loc_715EB3: AddR8
  loc_715EB4: CVarR4
  loc_715EB8: PopAdLdVar
  loc_715EB9: FLdRfVar var_C4
  loc_715EBC: FLdI2 var_86
  loc_715EBF: FLdPrThis
  loc_715EC0: VCallAd Control_ID_lblTankStatus
  loc_715EC3: FStAdFunc var_BC
  loc_715EC6: FLdPr var_BC
  loc_715EC9: Set from_stack_2 = Me(from_stack_1)
  loc_715ECE: FLdPr var_C4
  loc_715ED1: LateIdSt
  loc_715ED6: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_715EE1: FFree1Var var_B8 = ""
  loc_715EE4: FLdRfVar var_94
  loc_715EE7: FLdI2 var_86
  loc_715EEA: FLdPrThis
  loc_715EEB: VCallAd Control_ID_Titulo
  loc_715EEE: FStAdFunc var_90
  loc_715EF1: FLdPr var_90
  loc_715EF4: Set from_stack_2 = Me(from_stack_1)
  loc_715EF9: FLdPr var_94
  loc_715EFC: LateIdLdVar var_B8 DispID_3 -32767
  loc_715F03: CR8Var
  loc_715F05: LitI2_Byte &H14
  loc_715F07: CR8I2
  loc_715F08: AddR8
  loc_715F09: CVarR4
  loc_715F0D: PopAdLdVar
  loc_715F0E: FLdRfVar var_C4
  loc_715F11: FLdI2 var_86
  loc_715F14: FLdPrThis
  loc_715F15: VCallAd Control_ID_lblTankStatus
  loc_715F18: FStAdFunc var_BC
  loc_715F1B: FLdPr var_BC
  loc_715F1E: Set from_stack_2 = Me(from_stack_1)
  loc_715F23: FLdPr var_C4
  loc_715F26: LateIdSt
  loc_715F2B: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_715F36: FFree1Var var_B8 = ""
  loc_715F39: FLdRfVar var_94
  loc_715F3C: FLdI2 var_86
  loc_715F3F: FLdPrThis
  loc_715F40: VCallAd Control_ID_Titulo
  loc_715F43: FStAdFunc var_90
  loc_715F46: FLdPr var_90
  loc_715F49: Set from_stack_2 = Me(from_stack_1)
  loc_715F4E: FLdPr var_94
  loc_715F51: LateIdLdVar var_B8 DispID_5 -32767
  loc_715F58: CR8Var
  loc_715F5A: LitI2_Byte &H28
  loc_715F5C: CR8I2
  loc_715F5D: SubR4
  loc_715F5E: CVarR4
  loc_715F62: PopAdLdVar
  loc_715F63: FLdRfVar var_C4
  loc_715F66: FLdI2 var_86
  loc_715F69: FLdPrThis
  loc_715F6A: VCallAd Control_ID_lblTankStatus
  loc_715F6D: FStAdFunc var_BC
  loc_715F70: FLdPr var_BC
  loc_715F73: Set from_stack_2 = Me(from_stack_1)
  loc_715F78: FLdPr var_C4
  loc_715F7B: LateIdSt
  loc_715F80: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_715F8B: FFree1Var var_B8 = ""
  loc_715F8E: FLdRfVar var_94
  loc_715F91: FLdI2 var_86
  loc_715F94: FLdPrThis
  loc_715F95: VCallAd Control_ID_Titulo
  loc_715F98: FStAdFunc var_90
  loc_715F9B: FLdPr var_90
  loc_715F9E: Set from_stack_2 = Me(from_stack_1)
  loc_715FA3: FLdPr var_94
  loc_715FA6: LateIdLdVar var_B8 DispID_6 -32767
  loc_715FAD: CR8Var
  loc_715FAF: LitI2_Byte &H28
  loc_715FB1: CR8I2
  loc_715FB2: SubR4
  loc_715FB3: CVarR4
  loc_715FB7: PopAdLdVar
  loc_715FB8: FLdRfVar var_C4
  loc_715FBB: FLdI2 var_86
  loc_715FBE: FLdPrThis
  loc_715FBF: VCallAd Control_ID_lblTankStatus
  loc_715FC2: FStAdFunc var_BC
  loc_715FC5: FLdPr var_BC
  loc_715FC8: Set from_stack_2 = Me(from_stack_1)
  loc_715FCD: FLdPr var_C4
  loc_715FD0: LateIdSt
  loc_715FD5: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_715FE0: FFree1Var var_B8 = ""
  loc_715FE3: FLdRfVar var_94
  loc_715FE6: FLdI2 var_86
  loc_715FE9: FLdPrThis
  loc_715FEA: VCallAd Control_ID_Titulo
  loc_715FED: FStAdFunc var_90
  loc_715FF0: FLdPr var_90
  loc_715FF3: Set from_stack_2 = Me(from_stack_1)
  loc_715FF8: FLdPr var_94
  loc_715FFB: LateIdLdVar var_B8 DispID_3 -32767
  loc_716002: CR8Var
  loc_716004: PopFPR4
  loc_716005: FLdRfVar var_C4
  loc_716008: FLdI2 var_86
  loc_71600B: FLdPrThis
  loc_71600C: VCallAd Control_ID_imgTanque
  loc_71600F: FStAdFunc var_BC
  loc_716012: FLdPr var_BC
  loc_716015: Set from_stack_2 = Me(from_stack_1)
  loc_71601A: FLdPr var_C4
  loc_71601D: Me.Left = from_stack_1s
  loc_716022: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71602D: FFree1Var var_B8 = ""
  loc_716030: FLdRfVar var_C4
  loc_716033: FLdI2 var_86
  loc_716036: FLdPrThis
  loc_716037: VCallAd Control_ID_Titulo
  loc_71603A: FStAdFunc var_BC
  loc_71603D: FLdPr var_BC
  loc_716040: Set from_stack_2 = Me(from_stack_1)
  loc_716045: FLdPr var_C4
  loc_716048: LateIdLdVar var_D4 DispID_6 -32767
  loc_71604F: PopAd
  loc_716051: FLdRfVar var_94
  loc_716054: FLdI2 var_86
  loc_716057: FLdPrThis
  loc_716058: VCallAd Control_ID_Titulo
  loc_71605B: FStAdFunc var_90
  loc_71605E: FLdPr var_90
  loc_716061: Set from_stack_2 = Me(from_stack_1)
  loc_716066: FLdPr var_94
  loc_716069: LateIdLdVar var_B8 DispID_4 -32767
  loc_716070: CR8Var
  loc_716072: FLdRfVar var_D4
  loc_716075: CR8Var
  loc_716077: AddR8
  loc_716078: PopFPR4
  loc_716079: FLdRfVar var_DC
  loc_71607C: FLdI2 var_86
  loc_71607F: FLdPrThis
  loc_716080: VCallAd Control_ID_imgTanque
  loc_716083: FStAdFunc var_D8
  loc_716086: FLdPr var_D8
  loc_716089: Set from_stack_2 = Me(from_stack_1)
  loc_71608E: FLdPr var_DC
  loc_716091: Me.Top = from_stack_1s
  loc_716096: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_7160A5: FFreeVar var_B8 = ""
  loc_7160AC: FLdRfVar var_A8
  loc_7160AF: FLdRfVar var_94
  loc_7160B2: FLdI2 var_86
  loc_7160B5: FLdPrThis
  loc_7160B6: VCallAd Control_ID_imgTanque
  loc_7160B9: FStAdFunc var_90
  loc_7160BC: FLdPr var_90
  loc_7160BF: Set from_stack_2 = Me(from_stack_1)
  loc_7160C4: FLdPr var_94
  loc_7160C7:  = Me.Top
  loc_7160CC: ILdRf var_A8
  loc_7160CF: FLdRfVar var_C4
  loc_7160D2: FLdI2 var_86
  loc_7160D5: FLdPrThis
  loc_7160D6: VCallAd Control_ID_lblTituloVacio
  loc_7160D9: FStAdFunc var_BC
  loc_7160DC: FLdPr var_BC
  loc_7160DF: Set from_stack_2 = Me(from_stack_1)
  loc_7160E4: FLdPr var_C4
  loc_7160E7: Me.Top = from_stack_1s
  loc_7160EC: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7160F7: FLdRfVar var_E8
  loc_7160FA: FLdRfVar var_C4
  loc_7160FD: FLdI2 var_86
  loc_716100: FLdPrThis
  loc_716101: VCallAd Control_ID_imgTanque
  loc_716104: FStAdFunc var_BC
  loc_716107: FLdPr var_BC
  loc_71610A: Set from_stack_2 = Me(from_stack_1)
  loc_71610F: FLdPr var_C4
  loc_716112:  = Me.Width
  loc_716117: FLdRfVar var_A8
  loc_71611A: FLdRfVar var_94
  loc_71611D: FLdI2 var_86
  loc_716120: FLdPrThis
  loc_716121: VCallAd Control_ID_imgTanque
  loc_716124: FStAdFunc var_90
  loc_716127: FLdPr var_90
  loc_71612A: Set from_stack_2 = Me(from_stack_1)
  loc_71612F: FLdPr var_94
  loc_716132:  = Me.Left
  loc_716137: FLdFPR4 var_A8
  loc_71613A: FLdFPR4 var_E8
  loc_71613D: AddR8
  loc_71613E: LitI2_Byte &H1E
  loc_716140: CR8I2
  loc_716141: AddR8
  loc_716142: PopFPR4
  loc_716143: FLdRfVar var_DC
  loc_716146: FLdI2 var_86
  loc_716149: FLdPrThis
  loc_71614A: VCallAd Control_ID_lblTituloVacio
  loc_71614D: FStAdFunc var_D8
  loc_716150: FLdPr var_D8
  loc_716153: Set from_stack_2 = Me(from_stack_1)
  loc_716158: FLdPr var_DC
  loc_71615B: Me.Left = from_stack_1s
  loc_716160: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_71616F: FLdRfVar var_A8
  loc_716172: FLdRfVar var_94
  loc_716175: FLdI2 var_86
  loc_716178: FLdPrThis
  loc_716179: VCallAd Control_ID_Vacio
  loc_71617C: FStAdFunc var_90
  loc_71617F: FLdPr var_90
  loc_716182: Set from_stack_2 = Me(from_stack_1)
  loc_716187: FLdPr var_94
  loc_71618A:  = Me.Height
  loc_71618F: ILdRf var_A8
  loc_716192: FLdRfVar var_C4
  loc_716195: FLdI2 var_86
  loc_716198: FLdPrThis
  loc_716199: VCallAd Control_ID_lblTituloVacio
  loc_71619C: FStAdFunc var_BC
  loc_71619F: FLdPr var_BC
  loc_7161A2: Set from_stack_2 = Me(from_stack_1)
  loc_7161A7: FLdPr var_C4
  loc_7161AA: Me.Height = from_stack_1s
  loc_7161AF: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7161BA: FLdRfVar var_E8
  loc_7161BD: FLdRfVar var_C4
  loc_7161C0: FLdI2 var_86
  loc_7161C3: FLdPrThis
  loc_7161C4: VCallAd Control_ID_imgTanque
  loc_7161C7: FStAdFunc var_BC
  loc_7161CA: FLdPr var_BC
  loc_7161CD: Set from_stack_2 = Me(from_stack_1)
  loc_7161D2: FLdPr var_C4
  loc_7161D5:  = Me.Width
  loc_7161DA: FLdRfVar var_EC
  loc_7161DD: FLdRfVar var_DC
  loc_7161E0: FLdI2 var_86
  loc_7161E3: FLdPrThis
  loc_7161E4: VCallAd Control_ID_lblTituloVacio
  loc_7161E7: FStAdFunc var_D8
  loc_7161EA: FLdPr var_D8
  loc_7161ED: Set from_stack_2 = Me(from_stack_1)
  loc_7161F2: FLdPr var_DC
  loc_7161F5:  = Me.Width
  loc_7161FA: FLdRfVar var_A8
  loc_7161FD: FLdRfVar var_94
  loc_716200: FLdI2 var_86
  loc_716203: FLdPrThis
  loc_716204: VCallAd Control_ID_imgTanque
  loc_716207: FStAdFunc var_90
  loc_71620A: FLdPr var_90
  loc_71620D: Set from_stack_2 = Me(from_stack_1)
  loc_716212: FLdPr var_94
  loc_716215:  = Me.Left
  loc_71621A: FLdFPR4 var_A8
  loc_71621D: FLdFPR4 var_E8
  loc_716220: AddR8
  loc_716221: FLdFPR4 var_EC
  loc_716224: AddR8
  loc_716225: PopFPR4
  loc_716226: FLdRfVar var_E4
  loc_716229: FLdI2 var_86
  loc_71622C: FLdPrThis
  loc_71622D: VCallAd Control_ID_Vacio
  loc_716230: FStAdFunc var_E0
  loc_716233: FLdPr var_E0
  loc_716236: Set from_stack_2 = Me(from_stack_1)
  loc_71623B: FLdPr var_E4
  loc_71623E: Me.Left = from_stack_1s
  loc_716243: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_716256: FLdRfVar var_A8
  loc_716259: FLdRfVar var_94
  loc_71625C: FLdI2 var_86
  loc_71625F: FLdPrThis
  loc_716260: VCallAd Control_ID_lblTituloVacio
  loc_716263: FStAdFunc var_90
  loc_716266: FLdPr var_90
  loc_716269: Set from_stack_2 = Me(from_stack_1)
  loc_71626E: FLdPr var_94
  loc_716271:  = Me.Top
  loc_716276: ILdRf var_A8
  loc_716279: FLdRfVar var_C4
  loc_71627C: FLdI2 var_86
  loc_71627F: FLdPrThis
  loc_716280: VCallAd Control_ID_Vacio
  loc_716283: FStAdFunc var_BC
  loc_716286: FLdPr var_BC
  loc_716289: Set from_stack_2 = Me(from_stack_1)
  loc_71628E: FLdPr var_C4
  loc_716291: Me.Top = from_stack_1s
  loc_716296: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7162A1: LitStr "0"
  loc_7162A4: FLdRfVar var_94
  loc_7162A7: FLdI2 var_86
  loc_7162AA: FLdPrThis
  loc_7162AB: VCallAd Control_ID_Vacio
  loc_7162AE: FStAdFunc var_90
  loc_7162B1: FLdPr var_90
  loc_7162B4: Set from_stack_2 = Me(from_stack_1)
  loc_7162B9: FLdPr var_94
  loc_7162BC: Me.Caption = from_stack_1
  loc_7162C1: FFreeAd var_90 = ""
  loc_7162C8: LitI2_Byte &HFF
  loc_7162CA: FLdRfVar var_94
  loc_7162CD: FLdI2 var_86
  loc_7162D0: FLdPrThis
  loc_7162D1: VCallAd Control_ID_Vacio
  loc_7162D4: FStAdFunc var_90
  loc_7162D7: FLdPr var_90
  loc_7162DA: Set from_stack_2 = Me(from_stack_1)
  loc_7162DF: FLdPr var_94
  loc_7162E2: Me.FontBold = from_stack_1b
  loc_7162E7: FFreeAd var_90 = ""
  loc_7162EE: FLdRfVar var_A8
  loc_7162F1: FLdRfVar var_94
  loc_7162F4: FLdI2 var_86
  loc_7162F7: FLdPrThis
  loc_7162F8: VCallAd Control_ID_lblTituloVacio
  loc_7162FB: FStAdFunc var_90
  loc_7162FE: FLdPr var_90
  loc_716301: Set from_stack_2 = Me(from_stack_1)
  loc_716306: FLdPr var_94
  loc_716309:  = Me.Left
  loc_71630E: ILdRf var_A8
  loc_716311: FLdRfVar var_C4
  loc_716314: FLdI2 var_86
  loc_716317: FLdPrThis
  loc_716318: VCallAd Control_ID_lblTituloProducto
  loc_71631B: FStAdFunc var_BC
  loc_71631E: FLdPr var_BC
  loc_716321: Set from_stack_2 = Me(from_stack_1)
  loc_716326: FLdPr var_C4
  loc_716329: Me.Left = from_stack_1s
  loc_71632E: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716339: FLdRfVar var_A8
  loc_71633C: FLdRfVar var_94
  loc_71633F: FLdI2 var_86
  loc_716342: FLdPrThis
  loc_716343: VCallAd Control_ID_Combustible
  loc_716346: FStAdFunc var_90
  loc_716349: FLdPr var_90
  loc_71634C: Set from_stack_2 = Me(from_stack_1)
  loc_716351: FLdPr var_94
  loc_716354:  = Me.Height
  loc_716359: ILdRf var_A8
  loc_71635C: FLdRfVar var_C4
  loc_71635F: FLdI2 var_86
  loc_716362: FLdPrThis
  loc_716363: VCallAd Control_ID_lblTituloProducto
  loc_716366: FStAdFunc var_BC
  loc_716369: FLdPr var_BC
  loc_71636C: Set from_stack_2 = Me(from_stack_1)
  loc_716371: FLdPr var_C4
  loc_716374: Me.Height = from_stack_1s
  loc_716379: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716384: LitI2_Byte &HFF
  loc_716386: FLdRfVar var_94
  loc_716389: FLdI2 var_86
  loc_71638C: FLdPrThis
  loc_71638D: VCallAd Control_ID_lblVolumen
  loc_716390: FStAdFunc var_90
  loc_716393: FLdPr var_90
  loc_716396: Set from_stack_2 = Me(from_stack_1)
  loc_71639B: FLdPr var_94
  loc_71639E: Me.FontBold = from_stack_1b
  loc_7163A3: FFreeAd var_90 = ""
  loc_7163AA: FLdRfVar var_A8
  loc_7163AD: FLdRfVar var_94
  loc_7163B0: FLdI2 var_86
  loc_7163B3: FLdPrThis
  loc_7163B4: VCallAd Control_ID_Vacio
  loc_7163B7: FStAdFunc var_90
  loc_7163BA: FLdPr var_90
  loc_7163BD: Set from_stack_2 = Me(from_stack_1)
  loc_7163C2: FLdPr var_94
  loc_7163C5:  = Me.Height
  loc_7163CA: ILdRf var_A8
  loc_7163CD: FLdRfVar var_C4
  loc_7163D0: FLdI2 var_86
  loc_7163D3: FLdPrThis
  loc_7163D4: VCallAd Control_ID_lblVolumen
  loc_7163D7: FStAdFunc var_BC
  loc_7163DA: FLdPr var_BC
  loc_7163DD: Set from_stack_2 = Me(from_stack_1)
  loc_7163E2: FLdPr var_C4
  loc_7163E5: Me.Height = from_stack_1s
  loc_7163EA: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7163F5: FLdRfVar var_A8
  loc_7163F8: FLdRfVar var_94
  loc_7163FB: FLdI2 var_86
  loc_7163FE: FLdPrThis
  loc_7163FF: VCallAd Control_ID_Vacio
  loc_716402: FStAdFunc var_90
  loc_716405: FLdPr var_90
  loc_716408: Set from_stack_2 = Me(from_stack_1)
  loc_71640D: FLdPr var_94
  loc_716410:  = Me.Height
  loc_716415: ILdRf var_A8
  loc_716418: FLdRfVar var_C4
  loc_71641B: FLdI2 var_86
  loc_71641E: FLdPrThis
  loc_71641F: VCallAd Control_ID_lblTituloVolumen
  loc_716422: FStAdFunc var_BC
  loc_716425: FLdPr var_BC
  loc_716428: Set from_stack_2 = Me(from_stack_1)
  loc_71642D: FLdPr var_C4
  loc_716430: Me.Height = from_stack_1s
  loc_716435: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716440: FLdRfVar var_A8
  loc_716443: FLdRfVar var_94
  loc_716446: FLdI2 var_86
  loc_716449: FLdPrThis
  loc_71644A: VCallAd Control_ID_Vacio
  loc_71644D: FStAdFunc var_90
  loc_716450: FLdPr var_90
  loc_716453: Set from_stack_2 = Me(from_stack_1)
  loc_716458: FLdPr var_94
  loc_71645B:  = Me.Left
  loc_716460: ILdRf var_A8
  loc_716463: FLdRfVar var_C4
  loc_716466: FLdI2 var_86
  loc_716469: FLdPrThis
  loc_71646A: VCallAd Control_ID_lblVolumen
  loc_71646D: FStAdFunc var_BC
  loc_716470: FLdPr var_BC
  loc_716473: Set from_stack_2 = Me(from_stack_1)
  loc_716478: FLdPr var_C4
  loc_71647B: Me.Left = from_stack_1s
  loc_716480: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71648B: FLdRfVar var_A8
  loc_71648E: FLdRfVar var_94
  loc_716491: FLdI2 var_86
  loc_716494: FLdPrThis
  loc_716495: VCallAd Control_ID_lblTituloVacio
  loc_716498: FStAdFunc var_90
  loc_71649B: FLdPr var_90
  loc_71649E: Set from_stack_2 = Me(from_stack_1)
  loc_7164A3: FLdPr var_94
  loc_7164A6:  = Me.Left
  loc_7164AB: ILdRf var_A8
  loc_7164AE: FLdRfVar var_C4
  loc_7164B1: FLdI2 var_86
  loc_7164B4: FLdPrThis
  loc_7164B5: VCallAd Control_ID_lblTituloVolumen
  loc_7164B8: FStAdFunc var_BC
  loc_7164BB: FLdPr var_BC
  loc_7164BE: Set from_stack_2 = Me(from_stack_1)
  loc_7164C3: FLdPr var_C4
  loc_7164C6: Me.Left = from_stack_1s
  loc_7164CB: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7164D6: FLdRfVar var_E8
  loc_7164D9: FLdRfVar var_C4
  loc_7164DC: FLdI2 var_86
  loc_7164DF: FLdPrThis
  loc_7164E0: VCallAd Control_ID_Vacio
  loc_7164E3: FStAdFunc var_BC
  loc_7164E6: FLdPr var_BC
  loc_7164E9: Set from_stack_2 = Me(from_stack_1)
  loc_7164EE: FLdPr var_C4
  loc_7164F1:  = Me.Height
  loc_7164F6: FLdRfVar var_A8
  loc_7164F9: FLdRfVar var_94
  loc_7164FC: FLdI2 var_86
  loc_7164FF: FLdPrThis
  loc_716500: VCallAd Control_ID_Vacio
  loc_716503: FStAdFunc var_90
  loc_716506: FLdPr var_90
  loc_716509: Set from_stack_2 = Me(from_stack_1)
  loc_71650E: FLdPr var_94
  loc_716511:  = Me.Top
  loc_716516: FLdFPR4 var_A8
  loc_716519: FLdFPR4 var_E8
  loc_71651C: AddR8
  loc_71651D: PopFPR4
  loc_71651E: FLdRfVar var_DC
  loc_716521: FLdI2 var_86
  loc_716524: FLdPrThis
  loc_716525: VCallAd Control_ID_lblTituloVolumen
  loc_716528: FStAdFunc var_D8
  loc_71652B: FLdPr var_D8
  loc_71652E: Set from_stack_2 = Me(from_stack_1)
  loc_716533: FLdPr var_DC
  loc_716536: Me.Top = from_stack_1s
  loc_71653B: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_71654A: FLdRfVar var_A8
  loc_71654D: FLdRfVar var_94
  loc_716550: FLdI2 var_86
  loc_716553: FLdPrThis
  loc_716554: VCallAd Control_ID_lblTituloVolumen
  loc_716557: FStAdFunc var_90
  loc_71655A: FLdPr var_90
  loc_71655D: Set from_stack_2 = Me(from_stack_1)
  loc_716562: FLdPr var_94
  loc_716565:  = Me.Top
  loc_71656A: ILdRf var_A8
  loc_71656D: FLdRfVar var_C4
  loc_716570: FLdI2 var_86
  loc_716573: FLdPrThis
  loc_716574: VCallAd Control_ID_lblVolumen
  loc_716577: FStAdFunc var_BC
  loc_71657A: FLdPr var_BC
  loc_71657D: Set from_stack_2 = Me(from_stack_1)
  loc_716582: FLdPr var_C4
  loc_716585: Me.Top = from_stack_1s
  loc_71658A: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716595: FLdRfVar var_E8
  loc_716598: FLdRfVar var_C4
  loc_71659B: FLdI2 var_86
  loc_71659E: FLdPrThis
  loc_71659F: VCallAd Control_ID_lblVolumen
  loc_7165A2: FStAdFunc var_BC
  loc_7165A5: FLdPr var_BC
  loc_7165A8: Set from_stack_2 = Me(from_stack_1)
  loc_7165AD: FLdPr var_C4
  loc_7165B0:  = Me.Height
  loc_7165B5: FLdRfVar var_A8
  loc_7165B8: FLdRfVar var_94
  loc_7165BB: FLdI2 var_86
  loc_7165BE: FLdPrThis
  loc_7165BF: VCallAd Control_ID_lblVolumen
  loc_7165C2: FStAdFunc var_90
  loc_7165C5: FLdPr var_90
  loc_7165C8: Set from_stack_2 = Me(from_stack_1)
  loc_7165CD: FLdPr var_94
  loc_7165D0:  = Me.Top
  loc_7165D5: FLdFPR4 var_A8
  loc_7165D8: FLdFPR4 var_E8
  loc_7165DB: AddR8
  loc_7165DC: PopFPR4
  loc_7165DD: FLdRfVar var_DC
  loc_7165E0: FLdI2 var_86
  loc_7165E3: FLdPrThis
  loc_7165E4: VCallAd Control_ID_Combustible
  loc_7165E7: FStAdFunc var_D8
  loc_7165EA: FLdPr var_D8
  loc_7165ED: Set from_stack_2 = Me(from_stack_1)
  loc_7165F2: FLdPr var_DC
  loc_7165F5: Me.Top = from_stack_1s
  loc_7165FA: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_716609: FLdRfVar var_A8
  loc_71660C: FLdRfVar var_94
  loc_71660F: FLdI2 var_86
  loc_716612: FLdPrThis
  loc_716613: VCallAd Control_ID_Combustible
  loc_716616: FStAdFunc var_90
  loc_716619: FLdPr var_90
  loc_71661C: Set from_stack_2 = Me(from_stack_1)
  loc_716621: FLdPr var_94
  loc_716624:  = Me.Top
  loc_716629: ILdRf var_A8
  loc_71662C: FLdRfVar var_C4
  loc_71662F: FLdI2 var_86
  loc_716632: FLdPrThis
  loc_716633: VCallAd Control_ID_lblTituloProducto
  loc_716636: FStAdFunc var_BC
  loc_716639: FLdPr var_BC
  loc_71663C: Set from_stack_2 = Me(from_stack_1)
  loc_716641: FLdPr var_C4
  loc_716644: Me.Top = from_stack_1s
  loc_716649: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716654: FLdRfVar var_A8
  loc_716657: FLdRfVar var_94
  loc_71665A: FLdI2 var_86
  loc_71665D: FLdPrThis
  loc_71665E: VCallAd Control_ID_Vacio
  loc_716661: FStAdFunc var_90
  loc_716664: FLdPr var_90
  loc_716667: Set from_stack_2 = Me(from_stack_1)
  loc_71666C: FLdPr var_94
  loc_71666F:  = Me.Left
  loc_716674: ILdRf var_A8
  loc_716677: FLdRfVar var_C4
  loc_71667A: FLdI2 var_86
  loc_71667D: FLdPrThis
  loc_71667E: VCallAd Control_ID_Combustible
  loc_716681: FStAdFunc var_BC
  loc_716684: FLdPr var_BC
  loc_716687: Set from_stack_2 = Me(from_stack_1)
  loc_71668C: FLdPr var_C4
  loc_71668F: Me.Left = from_stack_1s
  loc_716694: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71669F: LitStr "0"
  loc_7166A2: FLdRfVar var_94
  loc_7166A5: FLdI2 var_86
  loc_7166A8: FLdPrThis
  loc_7166A9: VCallAd Control_ID_Combustible
  loc_7166AC: FStAdFunc var_90
  loc_7166AF: FLdPr var_90
  loc_7166B2: Set from_stack_2 = Me(from_stack_1)
  loc_7166B7: FLdPr var_94
  loc_7166BA: Me.Caption = from_stack_1
  loc_7166BF: FFreeAd var_90 = ""
  loc_7166C6: LitI2_Byte &HFF
  loc_7166C8: FLdRfVar var_94
  loc_7166CB: FLdI2 var_86
  loc_7166CE: FLdPrThis
  loc_7166CF: VCallAd Control_ID_Combustible
  loc_7166D2: FStAdFunc var_90
  loc_7166D5: FLdPr var_90
  loc_7166D8: Set from_stack_2 = Me(from_stack_1)
  loc_7166DD: FLdPr var_94
  loc_7166E0: Me.FontBold = from_stack_1b
  loc_7166E5: FFreeAd var_90 = ""
  loc_7166EC: FLdRfVar var_E8
  loc_7166EF: FLdRfVar var_C4
  loc_7166F2: FLdI2 var_86
  loc_7166F5: FLdPrThis
  loc_7166F6: VCallAd Control_ID_Combustible
  loc_7166F9: FStAdFunc var_BC
  loc_7166FC: FLdPr var_BC
  loc_7166FF: Set from_stack_2 = Me(from_stack_1)
  loc_716704: FLdPr var_C4
  loc_716707:  = Me.Height
  loc_71670C: FLdRfVar var_A8
  loc_71670F: FLdRfVar var_94
  loc_716712: FLdI2 var_86
  loc_716715: FLdPrThis
  loc_716716: VCallAd Control_ID_Combustible
  loc_716719: FStAdFunc var_90
  loc_71671C: FLdPr var_90
  loc_71671F: Set from_stack_2 = Me(from_stack_1)
  loc_716724: FLdPr var_94
  loc_716727:  = Me.Top
  loc_71672C: FLdFPR4 var_A8
  loc_71672F: FLdFPR4 var_E8
  loc_716732: AddR8
  loc_716733: PopFPR4
  loc_716734: FLdRfVar var_DC
  loc_716737: FLdI2 var_86
  loc_71673A: FLdPrThis
  loc_71673B: VCallAd Control_ID_Agua
  loc_71673E: FStAdFunc var_D8
  loc_716741: FLdPr var_D8
  loc_716744: Set from_stack_2 = Me(from_stack_1)
  loc_716749: FLdPr var_DC
  loc_71674C: Me.Top = from_stack_1s
  loc_716751: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_716760: FLdRfVar var_A8
  loc_716763: FLdRfVar var_94
  loc_716766: FLdI2 var_86
  loc_716769: FLdPrThis
  loc_71676A: VCallAd Control_ID_Agua
  loc_71676D: FStAdFunc var_90
  loc_716770: FLdPr var_90
  loc_716773: Set from_stack_2 = Me(from_stack_1)
  loc_716778: FLdPr var_94
  loc_71677B:  = Me.Top
  loc_716780: ILdRf var_A8
  loc_716783: FLdRfVar var_C4
  loc_716786: FLdI2 var_86
  loc_716789: FLdPrThis
  loc_71678A: VCallAd Control_ID_lblTituloAgua
  loc_71678D: FStAdFunc var_BC
  loc_716790: FLdPr var_BC
  loc_716793: Set from_stack_2 = Me(from_stack_1)
  loc_716798: FLdPr var_C4
  loc_71679B: Me.Top = from_stack_1s
  loc_7167A0: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7167AB: FLdRfVar var_A8
  loc_7167AE: FLdRfVar var_94
  loc_7167B1: FLdI2 var_86
  loc_7167B4: FLdPrThis
  loc_7167B5: VCallAd Control_ID_lblTituloVacio
  loc_7167B8: FStAdFunc var_90
  loc_7167BB: FLdPr var_90
  loc_7167BE: Set from_stack_2 = Me(from_stack_1)
  loc_7167C3: FLdPr var_94
  loc_7167C6:  = Me.Left
  loc_7167CB: ILdRf var_A8
  loc_7167CE: FLdRfVar var_C4
  loc_7167D1: FLdI2 var_86
  loc_7167D4: FLdPrThis
  loc_7167D5: VCallAd Control_ID_lblTituloAgua
  loc_7167D8: FStAdFunc var_BC
  loc_7167DB: FLdPr var_BC
  loc_7167DE: Set from_stack_2 = Me(from_stack_1)
  loc_7167E3: FLdPr var_C4
  loc_7167E6: Me.Left = from_stack_1s
  loc_7167EB: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7167F6: FLdRfVar var_A8
  loc_7167F9: FLdRfVar var_94
  loc_7167FC: FLdI2 var_86
  loc_7167FF: FLdPrThis
  loc_716800: VCallAd Control_ID_Agua
  loc_716803: FStAdFunc var_90
  loc_716806: FLdPr var_90
  loc_716809: Set from_stack_2 = Me(from_stack_1)
  loc_71680E: FLdPr var_94
  loc_716811:  = Me.Height
  loc_716816: ILdRf var_A8
  loc_716819: FLdRfVar var_C4
  loc_71681C: FLdI2 var_86
  loc_71681F: FLdPrThis
  loc_716820: VCallAd Control_ID_lblTituloAgua
  loc_716823: FStAdFunc var_BC
  loc_716826: FLdPr var_BC
  loc_716829: Set from_stack_2 = Me(from_stack_1)
  loc_71682E: FLdPr var_C4
  loc_716831: Me.Height = from_stack_1s
  loc_716836: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716841: FLdRfVar var_A8
  loc_716844: FLdRfVar var_94
  loc_716847: FLdI2 var_86
  loc_71684A: FLdPrThis
  loc_71684B: VCallAd Control_ID_Combustible
  loc_71684E: FStAdFunc var_90
  loc_716851: FLdPr var_90
  loc_716854: Set from_stack_2 = Me(from_stack_1)
  loc_716859: FLdPr var_94
  loc_71685C:  = Me.Left
  loc_716861: ILdRf var_A8
  loc_716864: FLdRfVar var_C4
  loc_716867: FLdI2 var_86
  loc_71686A: FLdPrThis
  loc_71686B: VCallAd Control_ID_Agua
  loc_71686E: FStAdFunc var_BC
  loc_716871: FLdPr var_BC
  loc_716874: Set from_stack_2 = Me(from_stack_1)
  loc_716879: FLdPr var_C4
  loc_71687C: Me.Left = from_stack_1s
  loc_716881: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71688C: LitStr "0"
  loc_71688F: FLdRfVar var_94
  loc_716892: FLdI2 var_86
  loc_716895: FLdPrThis
  loc_716896: VCallAd Control_ID_Agua
  loc_716899: FStAdFunc var_90
  loc_71689C: FLdPr var_90
  loc_71689F: Set from_stack_2 = Me(from_stack_1)
  loc_7168A4: FLdPr var_94
  loc_7168A7: Me.Caption = from_stack_1
  loc_7168AC: FFreeAd var_90 = ""
  loc_7168B3: LitI2_Byte &HFF
  loc_7168B5: FLdRfVar var_94
  loc_7168B8: FLdI2 var_86
  loc_7168BB: FLdPrThis
  loc_7168BC: VCallAd Control_ID_Agua
  loc_7168BF: FStAdFunc var_90
  loc_7168C2: FLdPr var_90
  loc_7168C5: Set from_stack_2 = Me(from_stack_1)
  loc_7168CA: FLdPr var_94
  loc_7168CD: Me.FontBold = from_stack_1b
  loc_7168D2: FFreeAd var_90 = ""
  loc_7168D9: LitI4 &HFFFF00
  loc_7168DE: FLdRfVar var_94
  loc_7168E1: FLdI2 var_86
  loc_7168E4: FLdPrThis
  loc_7168E5: VCallAd Control_ID_Agua
  loc_7168E8: FStAdFunc var_90
  loc_7168EB: FLdPr var_90
  loc_7168EE: Set from_stack_2 = Me(from_stack_1)
  loc_7168F3: FLdPr var_94
  loc_7168F6: Me.ForeColor = from_stack_1
  loc_7168FB: FFreeAd var_90 = ""
  loc_716902: FLdRfVar var_A8
  loc_716905: FLdRfVar var_94
  loc_716908: FLdI2 var_86
  loc_71690B: FLdPrThis
  loc_71690C: VCallAd Control_ID_Agua
  loc_71690F: FStAdFunc var_90
  loc_716912: FLdPr var_90
  loc_716915: Set from_stack_2 = Me(from_stack_1)
  loc_71691A: FLdPr var_94
  loc_71691D:  = Me.ForeColor
  loc_716922: ILdRf var_A8
  loc_716925: FLdRfVar var_C4
  loc_716928: FLdI2 var_86
  loc_71692B: FLdPrThis
  loc_71692C: VCallAd Control_ID_lblTituloAgua
  loc_71692F: FStAdFunc var_BC
  loc_716932: FLdPr var_BC
  loc_716935: Set from_stack_2 = Me(from_stack_1)
  loc_71693A: FLdPr var_C4
  loc_71693D: Me.ForeColor = from_stack_1
  loc_716942: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71694D: FLdRfVar var_E8
  loc_716950: FLdRfVar var_C4
  loc_716953: FLdI2 var_86
  loc_716956: FLdPrThis
  loc_716957: VCallAd Control_ID_imgTanque
  loc_71695A: FStAdFunc var_BC
  loc_71695D: FLdPr var_BC
  loc_716960: Set from_stack_2 = Me(from_stack_1)
  loc_716965: FLdPr var_C4
  loc_716968:  = Me.Height
  loc_71696D: FLdRfVar var_DC
  loc_716970: FLdI2 var_86
  loc_716973: FLdPrThis
  loc_716974: VCallAd Control_ID_Tictac
  loc_716977: FStAdFunc var_D8
  loc_71697A: FLdPr var_D8
  loc_71697D: Set from_stack_2 = Me(from_stack_1)
  loc_716982: FLdPr var_DC
  loc_716985: LateIdLdVar var_B8 DispID_6 -32767
  loc_71698C: PopAd
  loc_71698E: FLdRfVar var_A8
  loc_716991: FLdRfVar var_94
  loc_716994: FLdI2 var_86
  loc_716997: FLdPrThis
  loc_716998: VCallAd Control_ID_imgTanque
  loc_71699B: FStAdFunc var_90
  loc_71699E: FLdPr var_90
  loc_7169A1: Set from_stack_2 = Me(from_stack_1)
  loc_7169A6: FLdPr var_94
  loc_7169A9:  = Me.Top
  loc_7169AE: FLdFPR4 var_A8
  loc_7169B1: FLdFPR4 var_E8
  loc_7169B4: FLdRfVar var_B8
  loc_7169B7: CR8Var
  loc_7169B9: SubR4
  loc_7169BA: LitI2_Byte 2
  loc_7169BC: CR8I2
  loc_7169BD: DivR8
  loc_7169BE: AddR8
  loc_7169BF: CVarR4
  loc_7169C3: PopAdLdVar
  loc_7169C4: FLdRfVar var_E4
  loc_7169C7: LitI2_Byte 0
  loc_7169C9: FLdPrThis
  loc_7169CA: VCallAd Control_ID_Tictac
  loc_7169CD: FStAdFunc var_E0
  loc_7169D0: FLdPr var_E0
  loc_7169D3: Set from_stack_2 = Me(from_stack_1)
  loc_7169D8: FLdPr var_E4
  loc_7169DB: LateIdSt
  loc_7169E0: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_7169F3: FFree1Var var_B8 = ""
  loc_7169F6: FLdRfVar var_E8
  loc_7169F9: FLdRfVar var_C4
  loc_7169FC: FLdI2 var_86
  loc_7169FF: FLdPrThis
  loc_716A00: VCallAd Control_ID_imgTanque
  loc_716A03: FStAdFunc var_BC
  loc_716A06: FLdPr var_BC
  loc_716A09: Set from_stack_2 = Me(from_stack_1)
  loc_716A0E: FLdPr var_C4
  loc_716A11:  = Me.Width
  loc_716A16: FLdRfVar var_DC
  loc_716A19: FLdI2 var_86
  loc_716A1C: FLdPrThis
  loc_716A1D: VCallAd Control_ID_Tictac
  loc_716A20: FStAdFunc var_D8
  loc_716A23: FLdPr var_D8
  loc_716A26: Set from_stack_2 = Me(from_stack_1)
  loc_716A2B: FLdPr var_DC
  loc_716A2E: LateIdLdVar var_B8 DispID_5 -32767
  loc_716A35: PopAd
  loc_716A37: FLdRfVar var_A8
  loc_716A3A: FLdRfVar var_94
  loc_716A3D: FLdI2 var_86
  loc_716A40: FLdPrThis
  loc_716A41: VCallAd Control_ID_imgTanque
  loc_716A44: FStAdFunc var_90
  loc_716A47: FLdPr var_90
  loc_716A4A: Set from_stack_2 = Me(from_stack_1)
  loc_716A4F: FLdPr var_94
  loc_716A52:  = Me.Left
  loc_716A57: FLdFPR4 var_A8
  loc_716A5A: FLdFPR4 var_E8
  loc_716A5D: FLdRfVar var_B8
  loc_716A60: CR8Var
  loc_716A62: SubR4
  loc_716A63: LitI2_Byte 2
  loc_716A65: CR8I2
  loc_716A66: DivR8
  loc_716A67: AddR8
  loc_716A68: CVarR4
  loc_716A6C: PopAdLdVar
  loc_716A6D: FLdRfVar var_E4
  loc_716A70: LitI2_Byte 0
  loc_716A72: FLdPrThis
  loc_716A73: VCallAd Control_ID_Tictac
  loc_716A76: FStAdFunc var_E0
  loc_716A79: FLdPr var_E0
  loc_716A7C: Set from_stack_2 = Me(from_stack_1)
  loc_716A81: FLdPr var_E4
  loc_716A84: LateIdSt
  loc_716A89: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_716A9C: FFree1Var var_B8 = ""
  loc_716A9F: FLdRfVar var_E8
  loc_716AA2: FLdRfVar var_C4
  loc_716AA5: FLdI2 var_86
  loc_716AA8: FLdPrThis
  loc_716AA9: VCallAd Control_ID_Agua
  loc_716AAC: FStAdFunc var_BC
  loc_716AAF: FLdPr var_BC
  loc_716AB2: Set from_stack_2 = Me(from_stack_1)
  loc_716AB7: FLdPr var_C4
  loc_716ABA:  = Me.Height
  loc_716ABF: FLdRfVar var_A8
  loc_716AC2: FLdRfVar var_94
  loc_716AC5: FLdI2 var_86
  loc_716AC8: FLdPrThis
  loc_716AC9: VCallAd Control_ID_Agua
  loc_716ACC: FStAdFunc var_90
  loc_716ACF: FLdPr var_90
  loc_716AD2: Set from_stack_2 = Me(from_stack_1)
  loc_716AD7: FLdPr var_94
  loc_716ADA:  = Me.Top
  loc_716ADF: FLdFPR4 var_A8
  loc_716AE2: FLdFPR4 var_E8
  loc_716AE5: AddR8
  loc_716AE6: LitI2_Byte &H32
  loc_716AE8: CR8I2
  loc_716AE9: AddR8
  loc_716AEA: PopFPR4
  loc_716AEB: FLdRfVar var_DC
  loc_716AEE: FLdI2 var_86
  loc_716AF1: FLdPrThis
  loc_716AF2: VCallAd Control_ID_imgSemaforoVerde
  loc_716AF5: FStAdFunc var_D8
  loc_716AF8: FLdPr var_D8
  loc_716AFB: Set from_stack_2 = Me(from_stack_1)
  loc_716B00: FLdPr var_DC
  loc_716B03: Me.Top = from_stack_1s
  loc_716B08: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_716B17: FLdRfVar var_E8
  loc_716B1A: FLdRfVar var_C4
  loc_716B1D: FLdI2 var_86
  loc_716B20: FLdPrThis
  loc_716B21: VCallAd Control_ID_Agua
  loc_716B24: FStAdFunc var_BC
  loc_716B27: FLdPr var_BC
  loc_716B2A: Set from_stack_2 = Me(from_stack_1)
  loc_716B2F: FLdPr var_C4
  loc_716B32:  = Me.Width
  loc_716B37: FLdRfVar var_EC
  loc_716B3A: FLdRfVar var_DC
  loc_716B3D: FLdI2 var_86
  loc_716B40: FLdPrThis
  loc_716B41: VCallAd Control_ID_imgSemaforoVerde
  loc_716B44: FStAdFunc var_D8
  loc_716B47: FLdPr var_D8
  loc_716B4A: Set from_stack_2 = Me(from_stack_1)
  loc_716B4F: FLdPr var_DC
  loc_716B52:  = Me.Width
  loc_716B57: FLdRfVar var_A8
  loc_716B5A: FLdRfVar var_94
  loc_716B5D: FLdI2 var_86
  loc_716B60: FLdPrThis
  loc_716B61: VCallAd Control_ID_Agua
  loc_716B64: FStAdFunc var_90
  loc_716B67: FLdPr var_90
  loc_716B6A: Set from_stack_2 = Me(from_stack_1)
  loc_716B6F: FLdPr var_94
  loc_716B72:  = Me.Left
  loc_716B77: FLdFPR4 var_A8
  loc_716B7A: FLdFPR4 var_E8
  loc_716B7D: AddR8
  loc_716B7E: FLdFPR4 var_EC
  loc_716B81: SubR4
  loc_716B82: PopFPR4
  loc_716B83: FLdRfVar var_E4
  loc_716B86: FLdI2 var_86
  loc_716B89: FLdPrThis
  loc_716B8A: VCallAd Control_ID_imgSemaforoVerde
  loc_716B8D: FStAdFunc var_E0
  loc_716B90: FLdPr var_E0
  loc_716B93: Set from_stack_2 = Me(from_stack_1)
  loc_716B98: FLdPr var_E4
  loc_716B9B: Me.Left = from_stack_1s
  loc_716BA0: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_716BB3: FLdRfVar var_A8
  loc_716BB6: FLdRfVar var_94
  loc_716BB9: FLdI2 var_86
  loc_716BBC: FLdPrThis
  loc_716BBD: VCallAd Control_ID_imgSemaforoVerde
  loc_716BC0: FStAdFunc var_90
  loc_716BC3: FLdPr var_90
  loc_716BC6: Set from_stack_2 = Me(from_stack_1)
  loc_716BCB: FLdPr var_94
  loc_716BCE:  = Me.Top
  loc_716BD3: ILdRf var_A8
  loc_716BD6: FLdRfVar var_C4
  loc_716BD9: FLdI2 var_86
  loc_716BDC: FLdPrThis
  loc_716BDD: VCallAd Control_ID_imgSemaforoAmarillo
  loc_716BE0: FStAdFunc var_BC
  loc_716BE3: FLdPr var_BC
  loc_716BE6: Set from_stack_2 = Me(from_stack_1)
  loc_716BEB: FLdPr var_C4
  loc_716BEE: Me.Top = from_stack_1s
  loc_716BF3: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716BFE: FLdRfVar var_A8
  loc_716C01: FLdRfVar var_94
  loc_716C04: FLdI2 var_86
  loc_716C07: FLdPrThis
  loc_716C08: VCallAd Control_ID_imgSemaforoVerde
  loc_716C0B: FStAdFunc var_90
  loc_716C0E: FLdPr var_90
  loc_716C11: Set from_stack_2 = Me(from_stack_1)
  loc_716C16: FLdPr var_94
  loc_716C19:  = Me.Left
  loc_716C1E: ILdRf var_A8
  loc_716C21: FLdRfVar var_C4
  loc_716C24: FLdI2 var_86
  loc_716C27: FLdPrThis
  loc_716C28: VCallAd Control_ID_imgSemaforoAmarillo
  loc_716C2B: FStAdFunc var_BC
  loc_716C2E: FLdPr var_BC
  loc_716C31: Set from_stack_2 = Me(from_stack_1)
  loc_716C36: FLdPr var_C4
  loc_716C39: Me.Left = from_stack_1s
  loc_716C3E: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716C49: FLdRfVar var_A8
  loc_716C4C: FLdRfVar var_94
  loc_716C4F: FLdI2 var_86
  loc_716C52: FLdPrThis
  loc_716C53: VCallAd Control_ID_imgSemaforoVerde
  loc_716C56: FStAdFunc var_90
  loc_716C59: FLdPr var_90
  loc_716C5C: Set from_stack_2 = Me(from_stack_1)
  loc_716C61: FLdPr var_94
  loc_716C64:  = Me.Width
  loc_716C69: ILdRf var_A8
  loc_716C6C: FLdRfVar var_C4
  loc_716C6F: FLdI2 var_86
  loc_716C72: FLdPrThis
  loc_716C73: VCallAd Control_ID_imgSemaforoAmarillo
  loc_716C76: FStAdFunc var_BC
  loc_716C79: FLdPr var_BC
  loc_716C7C: Set from_stack_2 = Me(from_stack_1)
  loc_716C81: FLdPr var_C4
  loc_716C84: Me.Width = from_stack_1s
  loc_716C89: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716C94: FLdRfVar var_A8
  loc_716C97: FLdRfVar var_94
  loc_716C9A: FLdI2 var_86
  loc_716C9D: FLdPrThis
  loc_716C9E: VCallAd Control_ID_imgSemaforoVerde
  loc_716CA1: FStAdFunc var_90
  loc_716CA4: FLdPr var_90
  loc_716CA7: Set from_stack_2 = Me(from_stack_1)
  loc_716CAC: FLdPr var_94
  loc_716CAF:  = Me.Height
  loc_716CB4: ILdRf var_A8
  loc_716CB7: FLdRfVar var_C4
  loc_716CBA: FLdI2 var_86
  loc_716CBD: FLdPrThis
  loc_716CBE: VCallAd Control_ID_imgSemaforoAmarillo
  loc_716CC1: FStAdFunc var_BC
  loc_716CC4: FLdPr var_BC
  loc_716CC7: Set from_stack_2 = Me(from_stack_1)
  loc_716CCC: FLdPr var_C4
  loc_716CCF: Me.Height = from_stack_1s
  loc_716CD4: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716CDF: FLdRfVar var_A8
  loc_716CE2: FLdRfVar var_94
  loc_716CE5: FLdI2 var_86
  loc_716CE8: FLdPrThis
  loc_716CE9: VCallAd Control_ID_imgSemaforoVerde
  loc_716CEC: FStAdFunc var_90
  loc_716CEF: FLdPr var_90
  loc_716CF2: Set from_stack_2 = Me(from_stack_1)
  loc_716CF7: FLdPr var_94
  loc_716CFA:  = Me.Top
  loc_716CFF: ILdRf var_A8
  loc_716D02: FLdRfVar var_C4
  loc_716D05: FLdI2 var_86
  loc_716D08: FLdPrThis
  loc_716D09: VCallAd Control_ID_imgSemaforoRojo
  loc_716D0C: FStAdFunc var_BC
  loc_716D0F: FLdPr var_BC
  loc_716D12: Set from_stack_2 = Me(from_stack_1)
  loc_716D17: FLdPr var_C4
  loc_716D1A: Me.Top = from_stack_1s
  loc_716D1F: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716D2A: FLdRfVar var_A8
  loc_716D2D: FLdRfVar var_94
  loc_716D30: FLdI2 var_86
  loc_716D33: FLdPrThis
  loc_716D34: VCallAd Control_ID_imgSemaforoVerde
  loc_716D37: FStAdFunc var_90
  loc_716D3A: FLdPr var_90
  loc_716D3D: Set from_stack_2 = Me(from_stack_1)
  loc_716D42: FLdPr var_94
  loc_716D45:  = Me.Left
  loc_716D4A: ILdRf var_A8
  loc_716D4D: FLdRfVar var_C4
  loc_716D50: FLdI2 var_86
  loc_716D53: FLdPrThis
  loc_716D54: VCallAd Control_ID_imgSemaforoRojo
  loc_716D57: FStAdFunc var_BC
  loc_716D5A: FLdPr var_BC
  loc_716D5D: Set from_stack_2 = Me(from_stack_1)
  loc_716D62: FLdPr var_C4
  loc_716D65: Me.Left = from_stack_1s
  loc_716D6A: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716D75: FLdRfVar var_A8
  loc_716D78: FLdRfVar var_94
  loc_716D7B: FLdI2 var_86
  loc_716D7E: FLdPrThis
  loc_716D7F: VCallAd Control_ID_imgSemaforoVerde
  loc_716D82: FStAdFunc var_90
  loc_716D85: FLdPr var_90
  loc_716D88: Set from_stack_2 = Me(from_stack_1)
  loc_716D8D: FLdPr var_94
  loc_716D90:  = Me.Width
  loc_716D95: ILdRf var_A8
  loc_716D98: FLdRfVar var_C4
  loc_716D9B: FLdI2 var_86
  loc_716D9E: FLdPrThis
  loc_716D9F: VCallAd Control_ID_imgSemaforoRojo
  loc_716DA2: FStAdFunc var_BC
  loc_716DA5: FLdPr var_BC
  loc_716DA8: Set from_stack_2 = Me(from_stack_1)
  loc_716DAD: FLdPr var_C4
  loc_716DB0: Me.Width = from_stack_1s
  loc_716DB5: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716DC0: FLdRfVar var_A8
  loc_716DC3: FLdRfVar var_94
  loc_716DC6: FLdI2 var_86
  loc_716DC9: FLdPrThis
  loc_716DCA: VCallAd Control_ID_imgSemaforoVerde
  loc_716DCD: FStAdFunc var_90
  loc_716DD0: FLdPr var_90
  loc_716DD3: Set from_stack_2 = Me(from_stack_1)
  loc_716DD8: FLdPr var_94
  loc_716DDB:  = Me.Height
  loc_716DE0: ILdRf var_A8
  loc_716DE3: FLdRfVar var_C4
  loc_716DE6: FLdI2 var_86
  loc_716DE9: FLdPrThis
  loc_716DEA: VCallAd Control_ID_imgSemaforoRojo
  loc_716DED: FStAdFunc var_BC
  loc_716DF0: FLdPr var_BC
  loc_716DF3: Set from_stack_2 = Me(from_stack_1)
  loc_716DF8: FLdPr var_C4
  loc_716DFB: Me.Height = from_stack_1s
  loc_716E00: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716E0B: FLdRfVar var_E8
  loc_716E0E: FLdRfVar var_C4
  loc_716E11: FLdI2 var_86
  loc_716E14: FLdPrThis
  loc_716E15: VCallAd Control_ID_Agua
  loc_716E18: FStAdFunc var_BC
  loc_716E1B: FLdPr var_BC
  loc_716E1E: Set from_stack_2 = Me(from_stack_1)
  loc_716E23: FLdPr var_C4
  loc_716E26:  = Me.Height
  loc_716E2B: FLdRfVar var_A8
  loc_716E2E: FLdRfVar var_94
  loc_716E31: FLdI2 var_86
  loc_716E34: FLdPrThis
  loc_716E35: VCallAd Control_ID_Agua
  loc_716E38: FStAdFunc var_90
  loc_716E3B: FLdPr var_90
  loc_716E3E: Set from_stack_2 = Me(from_stack_1)
  loc_716E43: FLdPr var_94
  loc_716E46:  = Me.Top
  loc_716E4B: FLdFPR4 var_A8
  loc_716E4E: FLdFPR4 var_E8
  loc_716E51: AddR8
  loc_716E52: LitI2 200
  loc_716E55: CR8I2
  loc_716E56: AddR8
  loc_716E57: PopFPR4
  loc_716E58: FLdRfVar var_DC
  loc_716E5B: FLdI2 var_86
  loc_716E5E: FLdPrThis
  loc_716E5F: VCallAd Control_ID_imgConvertMM
  loc_716E62: FStAdFunc var_D8
  loc_716E65: FLdPr var_D8
  loc_716E68: Set from_stack_2 = Me(from_stack_1)
  loc_716E6D: FLdPr var_DC
  loc_716E70: Me.Top = from_stack_1s
  loc_716E75: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = ""
  loc_716E84: FLdRfVar var_E8
  loc_716E87: FLdRfVar var_C4
  loc_716E8A: FLdI2 var_86
  loc_716E8D: FLdPrThis
  loc_716E8E: VCallAd Control_ID_lblTituloAgua
  loc_716E91: FStAdFunc var_BC
  loc_716E94: FLdPr var_BC
  loc_716E97: Set from_stack_2 = Me(from_stack_1)
  loc_716E9C: FLdPr var_C4
  loc_716E9F:  = Me.Width
  loc_716EA4: FLdRfVar var_EC
  loc_716EA7: FLdRfVar var_DC
  loc_716EAA: FLdI2 var_86
  loc_716EAD: FLdPrThis
  loc_716EAE: VCallAd Control_ID_imgConvertMM
  loc_716EB1: FStAdFunc var_D8
  loc_716EB4: FLdPr var_D8
  loc_716EB7: Set from_stack_2 = Me(from_stack_1)
  loc_716EBC: FLdPr var_DC
  loc_716EBF:  = Me.Width
  loc_716EC4: FLdRfVar var_A8
  loc_716EC7: FLdRfVar var_94
  loc_716ECA: FLdI2 var_86
  loc_716ECD: FLdPrThis
  loc_716ECE: VCallAd Control_ID_lblTituloAgua
  loc_716ED1: FStAdFunc var_90
  loc_716ED4: FLdPr var_90
  loc_716ED7: Set from_stack_2 = Me(from_stack_1)
  loc_716EDC: FLdPr var_94
  loc_716EDF:  = Me.Left
  loc_716EE4: FLdFPR4 var_A8
  loc_716EE7: FLdFPR4 var_E8
  loc_716EEA: FLdFPR4 var_EC
  loc_716EED: SubR4
  loc_716EEE: LitI2_Byte 2
  loc_716EF0: CR8I2
  loc_716EF1: DivR8
  loc_716EF2: AddR8
  loc_716EF3: PopFPR4
  loc_716EF4: FLdRfVar var_E4
  loc_716EF7: FLdI2 var_86
  loc_716EFA: FLdPrThis
  loc_716EFB: VCallAd Control_ID_imgConvertMM
  loc_716EFE: FStAdFunc var_E0
  loc_716F01: FLdPr var_E0
  loc_716F04: Set from_stack_2 = Me(from_stack_1)
  loc_716F09: FLdPr var_E4
  loc_716F0C: Me.Left = from_stack_1s
  loc_716F11: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_716F24: FLdRfVar var_A8
  loc_716F27: FLdRfVar var_94
  loc_716F2A: FLdI2 var_86
  loc_716F2D: FLdPrThis
  loc_716F2E: VCallAd Control_ID_imgTanque
  loc_716F31: FStAdFunc var_90
  loc_716F34: FLdPr var_90
  loc_716F37: Set from_stack_2 = Me(from_stack_1)
  loc_716F3C: FLdPr var_94
  loc_716F3F:  = Me.Left
  loc_716F44: ILdRf var_A8
  loc_716F47: FLdRfVar var_C4
  loc_716F4A: FLdI2 var_86
  loc_716F4D: FLdPrThis
  loc_716F4E: VCallAd Control_ID_shpFloodWater
  loc_716F51: FStAdFunc var_BC
  loc_716F54: FLdPr var_BC
  loc_716F57: Set from_stack_2 = Me(from_stack_1)
  loc_716F5C: FLdPr var_C4
  loc_716F5F: Me.Left = from_stack_1s
  loc_716F64: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716F6F: FLdRfVar var_A8
  loc_716F72: FLdRfVar var_94
  loc_716F75: FLdI2 var_86
  loc_716F78: FLdPrThis
  loc_716F79: VCallAd Control_ID_imgTanque
  loc_716F7C: FStAdFunc var_90
  loc_716F7F: FLdPr var_90
  loc_716F82: Set from_stack_2 = Me(from_stack_1)
  loc_716F87: FLdPr var_94
  loc_716F8A:  = Me.Left
  loc_716F8F: ILdRf var_A8
  loc_716F92: FLdRfVar var_C4
  loc_716F95: FLdI2 var_86
  loc_716F98: FLdPrThis
  loc_716F99: VCallAd Control_ID_shpFloodVacio
  loc_716F9C: FStAdFunc var_BC
  loc_716F9F: FLdPr var_BC
  loc_716FA2: Set from_stack_2 = Me(from_stack_1)
  loc_716FA7: FLdPr var_C4
  loc_716FAA: Me.Left = from_stack_1s
  loc_716FAF: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_716FBA: FLdRfVar var_A8
  loc_716FBD: FLdRfVar var_94
  loc_716FC0: FLdI2 var_86
  loc_716FC3: FLdPrThis
  loc_716FC4: VCallAd Control_ID_imgTanque
  loc_716FC7: FStAdFunc var_90
  loc_716FCA: FLdPr var_90
  loc_716FCD: Set from_stack_2 = Me(from_stack_1)
  loc_716FD2: FLdPr var_94
  loc_716FD5:  = Me.Left
  loc_716FDA: ILdRf var_A8
  loc_716FDD: FLdRfVar var_C4
  loc_716FE0: FLdI2 var_86
  loc_716FE3: FLdPrThis
  loc_716FE4: VCallAd Control_ID_shpFloodProduct
  loc_716FE7: FStAdFunc var_BC
  loc_716FEA: FLdPr var_BC
  loc_716FED: Set from_stack_2 = Me(from_stack_1)
  loc_716FF2: FLdPr var_C4
  loc_716FF5: Me.Left = from_stack_1s
  loc_716FFA: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_717005: FLdRfVar var_A8
  loc_717008: FLdRfVar var_94
  loc_71700B: FLdI2 var_86
  loc_71700E: FLdPrThis
  loc_71700F: VCallAd Control_ID_imgTanque
  loc_717012: FStAdFunc var_90
  loc_717015: FLdPr var_90
  loc_717018: Set from_stack_2 = Me(from_stack_1)
  loc_71701D: FLdPr var_94
  loc_717020:  = Me.Width
  loc_717025: ILdRf var_A8
  loc_717028: FLdRfVar var_C4
  loc_71702B: FLdI2 var_86
  loc_71702E: FLdPrThis
  loc_71702F: VCallAd Control_ID_shpFloodWater
  loc_717032: FStAdFunc var_BC
  loc_717035: FLdPr var_BC
  loc_717038: Set from_stack_2 = Me(from_stack_1)
  loc_71703D: FLdPr var_C4
  loc_717040: Me.Width = from_stack_1s
  loc_717045: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_717050: FLdRfVar var_A8
  loc_717053: FLdRfVar var_94
  loc_717056: FLdI2 var_86
  loc_717059: FLdPrThis
  loc_71705A: VCallAd Control_ID_Agua
  loc_71705D: FStAdFunc var_90
  loc_717060: FLdPr var_90
  loc_717063: Set from_stack_2 = Me(from_stack_1)
  loc_717068: FLdPr var_94
  loc_71706B:  = Me.ForeColor
  loc_717070: ILdRf var_A8
  loc_717073: FLdRfVar var_C4
  loc_717076: FLdI2 var_86
  loc_717079: FLdPrThis
  loc_71707A: VCallAd Control_ID_shpFloodWater
  loc_71707D: FStAdFunc var_BC
  loc_717080: FLdPr var_BC
  loc_717083: Set from_stack_2 = Me(from_stack_1)
  loc_717088: FLdPr var_C4
  loc_71708B: Me.FillColor = from_stack_1
  loc_717090: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_71709B: FLdRfVar var_A8
  loc_71709E: FLdRfVar var_94
  loc_7170A1: FLdI2 var_86
  loc_7170A4: FLdPrThis
  loc_7170A5: VCallAd Control_ID_imgTanque
  loc_7170A8: FStAdFunc var_90
  loc_7170AB: FLdPr var_90
  loc_7170AE: Set from_stack_2 = Me(from_stack_1)
  loc_7170B3: FLdPr var_94
  loc_7170B6:  = Me.Width
  loc_7170BB: ILdRf var_A8
  loc_7170BE: FLdRfVar var_C4
  loc_7170C1: FLdI2 var_86
  loc_7170C4: FLdPrThis
  loc_7170C5: VCallAd Control_ID_shpFloodVacio
  loc_7170C8: FStAdFunc var_BC
  loc_7170CB: FLdPr var_BC
  loc_7170CE: Set from_stack_2 = Me(from_stack_1)
  loc_7170D3: FLdPr var_C4
  loc_7170D6: Me.Width = from_stack_1s
  loc_7170DB: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_7170E6: FLdRfVar var_A8
  loc_7170E9: FLdRfVar var_94
  loc_7170EC: FLdI2 var_86
  loc_7170EF: FLdPrThis
  loc_7170F0: VCallAd Control_ID_imgTanque
  loc_7170F3: FStAdFunc var_90
  loc_7170F6: FLdPr var_90
  loc_7170F9: Set from_stack_2 = Me(from_stack_1)
  loc_7170FE: FLdPr var_94
  loc_717101:  = Me.Width
  loc_717106: ILdRf var_A8
  loc_717109: FLdRfVar var_C4
  loc_71710C: FLdI2 var_86
  loc_71710F: FLdPrThis
  loc_717110: VCallAd Control_ID_shpFloodProduct
  loc_717113: FStAdFunc var_BC
  loc_717116: FLdPr var_BC
  loc_717119: Set from_stack_2 = Me(from_stack_1)
  loc_71711E: FLdPr var_C4
  loc_717121: Me.Width = from_stack_1s
  loc_717126: FFreeAd var_90 = "": var_94 = "": var_BC = ""
  loc_717131: LitI2_Byte 0
  loc_717133: FLdRfVar var_94
  loc_717136: FLdI2 var_86
  loc_717139: FLdPrThis
  loc_71713A: VCallAd Control_ID_shpFloodWater
  loc_71713D: FStAdFunc var_90
  loc_717140: FLdPr var_90
  loc_717143: Set from_stack_2 = Me(from_stack_1)
  loc_717148: FLdPr var_94
  loc_71714B: Me.Visible = from_stack_1b
  loc_717150: FFreeAd var_90 = ""
  loc_717157: LitI2_Byte 0
  loc_717159: FLdRfVar var_94
  loc_71715C: FLdI2 var_86
  loc_71715F: FLdPrThis
  loc_717160: VCallAd Control_ID_shpFloodVacio
  loc_717163: FStAdFunc var_90
  loc_717166: FLdPr var_90
  loc_717169: Set from_stack_2 = Me(from_stack_1)
  loc_71716E: FLdPr var_94
  loc_717171: Me.Visible = from_stack_1b
  loc_717176: FFreeAd var_90 = ""
  loc_71717D: LitI2_Byte 0
  loc_71717F: FLdRfVar var_94
  loc_717182: FLdI2 var_86
  loc_717185: FLdPrThis
  loc_717186: VCallAd Control_ID_shpFloodProduct
  loc_717189: FStAdFunc var_90
  loc_71718C: FLdPr var_90
  loc_71718F: Set from_stack_2 = Me(from_stack_1)
  loc_717194: FLdPr var_94
  loc_717197: Me.Visible = from_stack_1b
  loc_71719C: FFreeAd var_90 = ""
  loc_7171A3: LitI4 &H1869F
  loc_7171A8: CR8I4
  loc_7171A9: PopFPR4
  loc_7171AA: FLdRfVar var_94
  loc_7171AD: FLdI2 var_86
  loc_7171B0: FLdPrThis
  loc_7171B1: VCallAd Control_ID_shpFloodWater
  loc_7171B4: FStAdFunc var_90
  loc_7171B7: FLdPr var_90
  loc_7171BA: Set from_stack_2 = Me(from_stack_1)
  loc_7171BF: FLdPr var_94
  loc_7171C2: Me.Height = from_stack_1s
  loc_7171C7: FFreeAd var_90 = ""
  loc_7171CE: LitI4 &H1869F
  loc_7171D3: CR8I4
  loc_7171D4: PopFPR4
  loc_7171D5: FLdRfVar var_94
  loc_7171D8: FLdI2 var_86
  loc_7171DB: FLdPrThis
  loc_7171DC: VCallAd Control_ID_shpFloodVacio
  loc_7171DF: FStAdFunc var_90
  loc_7171E2: FLdPr var_90
  loc_7171E5: Set from_stack_2 = Me(from_stack_1)
  loc_7171EA: FLdPr var_94
  loc_7171ED: Me.Height = from_stack_1s
  loc_7171F2: FFreeAd var_90 = ""
  loc_7171F9: LitI4 &H1869F
  loc_7171FE: CR8I4
  loc_7171FF: PopFPR4
  loc_717200: FLdRfVar var_94
  loc_717203: FLdI2 var_86
  loc_717206: FLdPrThis
  loc_717207: VCallAd Control_ID_shpFloodProduct
  loc_71720A: FStAdFunc var_90
  loc_71720D: FLdPr var_90
  loc_717210: Set from_stack_2 = Me(from_stack_1)
  loc_717215: FLdPr var_94
  loc_717218: Me.Height = from_stack_1s
  loc_71721D: FFreeAd var_90 = ""
  loc_717224: LitI2_Byte 0
  loc_717226: FLdRfVar var_94
  loc_717229: FLdI2 var_86
  loc_71722C: FLdPrThis
  loc_71722D: VCallAd Control_ID_imgSemaforoRojo
  loc_717230: FStAdFunc var_90
  loc_717233: FLdPr var_90
  loc_717236: Set from_stack_2 = Me(from_stack_1)
  loc_71723B: FLdPr var_94
  loc_71723E: Me.Visible = from_stack_1b
  loc_717243: FFreeAd var_90 = ""
  loc_71724A: LitI2_Byte 0
  loc_71724C: FLdRfVar var_94
  loc_71724F: FLdI2 var_86
  loc_717252: FLdPrThis
  loc_717253: VCallAd Control_ID_imgSemaforoAmarillo
  loc_717256: FStAdFunc var_90
  loc_717259: FLdPr var_90
  loc_71725C: Set from_stack_2 = Me(from_stack_1)
  loc_717261: FLdPr var_94
  loc_717264: Me.Visible = from_stack_1b
  loc_717269: FFreeAd var_90 = ""
  loc_717270: LitI2_Byte 0
  loc_717272: FLdRfVar var_94
  loc_717275: FLdI2 var_86
  loc_717278: FLdPrThis
  loc_717279: VCallAd Control_ID_imgSemaforoVerde
  loc_71727C: FStAdFunc var_90
  loc_71727F: FLdPr var_90
  loc_717282: Set from_stack_2 = Me(from_stack_1)
  loc_717287: FLdPr var_94
  loc_71728A: Me.Visible = from_stack_1b
  loc_71728F: FFreeAd var_90 = ""
  loc_717296: FLdRfVar var_86
  loc_717299: NextI2 var_8A, loc_715660
  loc_71729E: ExitProcHresult
End Function

Private Function Proc_117_67_608284(arg_C) '608284
  'Data Table: 44F8E0
  loc_608198: LitVarI2 var_A0, 8
  loc_60819D: PopAdLdVar
  loc_60819E: FLdRfVar var_90
  loc_6081A1: FLdRfVar var_8C
  loc_6081A4: ILdI2 arg_C
  loc_6081A7: LitI2_Byte 1
  loc_6081A9: SubI2
  loc_6081AA: FLdPrThis
  loc_6081AB: VCallAd Control_ID_Agua
  loc_6081AE: FStAdFunc var_88
  loc_6081B1: FLdPr var_88
  loc_6081B4: Set from_stack_2 = Me(from_stack_1)
  loc_6081B9: FLdPr var_8C
  loc_6081BC:  = Me.Font
  loc_6081C1: FLdPr var_90
  loc_6081C4: LateIdSt
  loc_6081C9: FFreeAd var_88 = "": var_8C = ""
  loc_6081D2: LitVarI2 var_A0, 8
  loc_6081D7: PopAdLdVar
  loc_6081D8: FLdRfVar var_90
  loc_6081DB: FLdRfVar var_8C
  loc_6081DE: ILdI2 arg_C
  loc_6081E1: LitI2_Byte 1
  loc_6081E3: SubI2
  loc_6081E4: FLdPrThis
  loc_6081E5: VCallAd Control_ID_Combustible
  loc_6081E8: FStAdFunc var_88
  loc_6081EB: FLdPr var_88
  loc_6081EE: Set from_stack_2 = Me(from_stack_1)
  loc_6081F3: FLdPr var_8C
  loc_6081F6:  = Me.Font
  loc_6081FB: FLdPr var_90
  loc_6081FE: LateIdSt
  loc_608203: FFreeAd var_88 = "": var_8C = ""
  loc_60820C: LitVarI2 var_A0, 8
  loc_608211: PopAdLdVar
  loc_608212: FLdRfVar var_90
  loc_608215: FLdRfVar var_8C
  loc_608218: ILdI2 arg_C
  loc_60821B: LitI2_Byte 1
  loc_60821D: SubI2
  loc_60821E: FLdPrThis
  loc_60821F: VCallAd Control_ID_Vacio
  loc_608222: FStAdFunc var_88
  loc_608225: FLdPr var_88
  loc_608228: Set from_stack_2 = Me(from_stack_1)
  loc_60822D: FLdPr var_8C
  loc_608230:  = Me.Font
  loc_608235: FLdPr var_90
  loc_608238: LateIdSt
  loc_60823D: FFreeAd var_88 = "": var_8C = ""
  loc_608246: LitVarI2 var_A0, 8
  loc_60824B: PopAdLdVar
  loc_60824C: FLdRfVar var_90
  loc_60824F: FLdRfVar var_8C
  loc_608252: ILdI2 arg_C
  loc_608255: LitI2_Byte 1
  loc_608257: SubI2
  loc_608258: FLdPrThis
  loc_608259: VCallAd Control_ID_lblVolumen
  loc_60825C: FStAdFunc var_88
  loc_60825F: FLdPr var_88
  loc_608262: Set from_stack_2 = Me(from_stack_1)
  loc_608267: FLdPr var_8C
  loc_60826A:  = Me.Font
  loc_60826F: FLdPr var_90
  loc_608272: LateIdSt
  loc_608277: FFreeAd var_88 = "": var_8C = ""
  loc_608280: ExitProcHresult
  loc_608281: AryLock
End Function

Private Function Proc_117_68_5E38DC(arg_C) '5E38DC
  'Data Table: 44F8E0
  loc_5E3880: ImpAdLdRf MemVar_74C0FB
  loc_5E3883: CVarRef
  loc_5E3888: LitI4 1
  loc_5E388D: ILdI4 arg_C
  loc_5E3890: ImpAdCallI2 Mid$(, , )
  loc_5E3895: CVarStr var_DC
  loc_5E3898: HardType
  loc_5E3899: LitVarStr var_AC, "0"
  loc_5E389E: FStVarCopyObj var_BC
  loc_5E38A1: FLdRfVar var_BC
  loc_5E38A4: ImpAdLdUI1
  loc_5E38A8: CI4UI1
  loc_5E38A9: FLdRfVar var_CC
  loc_5E38AC: ImpAdCallFPR4  = String(, )
  loc_5E38B1: FLdRfVar var_CC
  loc_5E38B4: EqVar var_EC
  loc_5E38B8: CBoolVar
  loc_5E38BA: FStI2 var_88
  loc_5E38BD: FFreeVar var_BC = "": var_DC = ""
  loc_5E38C6: FLdI2 var_88
  loc_5E38C9: ImpAdCallUI1 Proc_155_3_5EE224()
  loc_5E38CF: LitI2_Byte &HA
  loc_5E38D1: NeI2
  loc_5E38D2: AndI4
  loc_5E38D3: FStI2 var_86
  loc_5E38D6: ExitProcCbHresult
End Function

Private Function Proc_117_69_5D765C() '5D765C
  'Data Table: 44F8E0
  loc_5D7634: FLdPrThis
  loc_5D7635: VCallAd Control_ID_Altas
  loc_5D7638: FStAdFunc var_8C
  loc_5D763B: FLdPr var_8C
  loc_5D763E: LateIdLdVar var_9C DispID_7 -32767
  loc_5D7645: CBoolVar
  loc_5D7647: LitI2_Byte &HFF
  loc_5D7649: EqI2
  loc_5D764A: FStI2 var_86
  loc_5D764D: FFree1Ad var_8C
  loc_5D7650: FFree1Var var_9C = ""
  loc_5D7653: ExitProcCbHresult
  loc_5D7659: CStrVarTmp
  loc_5D765A: FStStrNoPop arg_68D8
End Function

Private Function Proc_117_70_6D20EC(arg_C) '6D20EC
  'Data Table: 44F8E0
  loc_6D1710: OnErrorGoto loc_6D2015
  loc_6D1713: FLdRfVar var_A2
  loc_6D1716: ILdI2 arg_C
  loc_6D1719: CI4UI1
  loc_6D171A: ImpAdLdRf MemVar_74C1D8
  loc_6D171D: Ary1LdUI1
  loc_6D171F: CI2UI1
  loc_6D1721: ImpAdLdRf MemVar_74A220
  loc_6D1724: NewIfNullPr clsProducts
  loc_6D1727:  = clsProducts.hWnd
  loc_6D172C: FLdI2 var_A2
  loc_6D172F: BranchF loc_6D1733
  loc_6D1732: ExitProcHresult
  loc_6D1733: ILdI2 arg_C
  loc_6D1736: CI4UI1
  loc_6D1737: ImpAdLdRf MemVar_74C2EC
  loc_6D173A: Ary1LdCy
  loc_6D173B: CI4Cy
  loc_6D173C: FStR4 var_88
  loc_6D173F: FLdRfVar var_B0
  loc_6D1742: FLdRfVar var_AC
  loc_6D1745: ILdI2 arg_C
  loc_6D1748: LitI2_Byte 1
  loc_6D174A: SubI2
  loc_6D174B: FLdPrThis
  loc_6D174C: VCallAd Control_ID_shpFloodVacio
  loc_6D174F: FStAdFunc var_A8
  loc_6D1752: FLdPr var_A8
  loc_6D1755: Set from_stack_2 = Me(from_stack_1)
  loc_6D175A: FLdPr var_AC
  loc_6D175D:  = Me.Height
  loc_6D1762: FLdFPR4 var_B0
  loc_6D1765: CI4R8
  loc_6D1766: FStR4 var_8C
  loc_6D1769: FFreeAd var_A8 = ""
  loc_6D1770: FLdRfVar var_B0
  loc_6D1773: FLdRfVar var_AC
  loc_6D1776: ILdI2 arg_C
  loc_6D1779: LitI2_Byte 1
  loc_6D177B: SubI2
  loc_6D177C: FLdPrThis
  loc_6D177D: VCallAd Control_ID_imgTanque
  loc_6D1780: FStAdFunc var_A8
  loc_6D1783: FLdPr var_A8
  loc_6D1786: Set from_stack_2 = Me(from_stack_1)
  loc_6D178B: FLdPr var_AC
  loc_6D178E:  = Me.Height
  loc_6D1793: ILdI2 arg_C
  loc_6D1796: CI4UI1
  loc_6D1797: FLdPr Me
  loc_6D179A: MemLdRfVar from_stack_1.global_196
  loc_6D179D: Ary1LdI4
  loc_6D179E: CR8I4
  loc_6D179F: ILdRf var_88
  loc_6D17A2: CR8I4
  loc_6D17A3: DivR8
  loc_6D17A4: FLdFPR4 var_B0
  loc_6D17A7: MulR8
  loc_6D17A8: LitDate 1.01
  loc_6D17B1: MulR8
  loc_6D17B2: CI4R8
  loc_6D17B3: FStR4 var_90
  loc_6D17B6: FFreeAd var_A8 = ""
  loc_6D17BD: FLdRfVar var_B0
  loc_6D17C0: FLdRfVar var_AC
  loc_6D17C3: ILdI2 arg_C
  loc_6D17C6: LitI2_Byte 1
  loc_6D17C8: SubI2
  loc_6D17C9: FLdPrThis
  loc_6D17CA: VCallAd Control_ID_imgTanque
  loc_6D17CD: FStAdFunc var_A8
  loc_6D17D0: FLdPr var_A8
  loc_6D17D3: Set from_stack_2 = Me(from_stack_1)
  loc_6D17D8: FLdPr var_AC
  loc_6D17DB:  = Me.Height
  loc_6D17E0: ILdRf var_8C
  loc_6D17E3: ILdRf var_90
  loc_6D17E6: SubI4
  loc_6D17E7: FnAbsI4
  loc_6D17E8: CR8I4
  loc_6D17E9: FLdFPR4 var_B0
  loc_6D17EC: DivR8
  loc_6D17ED: LitI2_Byte &H64
  loc_6D17EF: CR8I2
  loc_6D17F0: MulR8
  loc_6D17F1: CI4R8
  loc_6D17F2: FStR4 var_94
  loc_6D17F5: FFreeAd var_A8 = ""
  loc_6D17FC: ILdI2 arg_C
  loc_6D17FF: CI4UI1
  loc_6D1800: FLdPr Me
  loc_6D1803: MemLdRfVar from_stack_1.global_244
  loc_6D1806: Ary1LdI4
  loc_6D1807: CR8I4
  loc_6D1808: LitI2_Byte &H19
  loc_6D180A: CR8I2
  loc_6D180B: DivR8
  loc_6D180C: CI2R8
  loc_6D180D: ILdI2 arg_C
  loc_6D1810: CI4UI1
  loc_6D1811: FMemLdPr
  loc_6D1816: MemLdRfVar from_stack_1.global_24
  loc_6D1819: Ary1StI2
  loc_6D181A: ILdRf var_94
  loc_6D181D: LitI4 4
  loc_6D1822: LeI4
  loc_6D1823: BranchF loc_6D18E6
  loc_6D1826: ILdI2 arg_C
  loc_6D1829: CI4UI1
  loc_6D182A: FLdPr Me
  loc_6D182D: MemLdRfVar from_stack_1.global_244
  loc_6D1830: Ary1LdI4
  loc_6D1831: ILdI2 arg_C
  loc_6D1834: CI4UI1
  loc_6D1835: FMemLdPr
  loc_6D183A: MemLdRfVar from_stack_1.global_48
  loc_6D183D: Ary1LdI2
  loc_6D183E: CI4UI1
  loc_6D183F: GtI4
  loc_6D1840: BranchF loc_6D187D
  loc_6D1843: ILdI2 arg_C
  loc_6D1846: CI4UI1
  loc_6D1847: FMemLdPr
  loc_6D184C: MemLdRfVar from_stack_1.global_0
  loc_6D184F: Ary1LdI2
  loc_6D1850: CI4UI1
  loc_6D1851: ILdI2 arg_C
  loc_6D1854: CI4UI1
  loc_6D1855: FLdPr Me
  loc_6D1858: MemLdRfVar from_stack_1.global_244
  loc_6D185B: Ary1LdI4
  loc_6D185C: ILdI2 arg_C
  loc_6D185F: CI4UI1
  loc_6D1860: FMemLdPr
  loc_6D1865: MemLdRfVar from_stack_1.global_48
  loc_6D1868: Ary1LdI2
  loc_6D1869: CI4UI1
  loc_6D186A: SubI4
  loc_6D186B: AddI4
  loc_6D186C: CI2I4
  loc_6D186D: ILdI2 arg_C
  loc_6D1870: CI4UI1
  loc_6D1871: FMemLdPr
  loc_6D1876: MemLdRfVar from_stack_1.global_0
  loc_6D1879: Ary1StI2
  loc_6D187A: Branch loc_6D18B4
  loc_6D187D: ILdI2 arg_C
  loc_6D1880: CI4UI1
  loc_6D1881: FMemLdPr
  loc_6D1886: MemLdRfVar from_stack_1.global_0
  loc_6D1889: Ary1LdI2
  loc_6D188A: CI4UI1
  loc_6D188B: ILdI2 arg_C
  loc_6D188E: CI4UI1
  loc_6D188F: FMemLdPr
  loc_6D1894: MemLdRfVar from_stack_1.global_48
  loc_6D1897: Ary1LdI2
  loc_6D1898: CI4UI1
  loc_6D1899: ILdI2 arg_C
  loc_6D189C: CI4UI1
  loc_6D189D: FLdPr Me
  loc_6D18A0: MemLdRfVar from_stack_1.global_244
  loc_6D18A3: Ary1LdI4
  loc_6D18A4: SubI4
  loc_6D18A5: SubI4
  loc_6D18A6: CI2I4
  loc_6D18A7: ILdI2 arg_C
  loc_6D18AA: CI4UI1
  loc_6D18AB: FMemLdPr
  loc_6D18B0: MemLdRfVar from_stack_1.global_0
  loc_6D18B3: Ary1StI2
  loc_6D18B4: ILdI2 arg_C
  loc_6D18B7: CI4UI1
  loc_6D18B8: FMemLdPr
  loc_6D18BD: MemLdRfVar from_stack_1.global_0
  loc_6D18C0: Ary1LdI2
  loc_6D18C1: FnAbsI2
  loc_6D18C2: ILdI2 arg_C
  loc_6D18C5: CI4UI1
  loc_6D18C6: FMemLdPr
  loc_6D18CB: MemLdRfVar from_stack_1.global_24
  loc_6D18CE: Ary1LdI2
  loc_6D18CF: LeI2
  loc_6D18D0: BranchF loc_6D18D7
  loc_6D18D3: ExitProcHresult
  loc_6D18D4: Branch loc_6D18E6
  loc_6D18D7: LitI2_Byte 0
  loc_6D18D9: ILdI2 arg_C
  loc_6D18DC: CI4UI1
  loc_6D18DD: FMemLdPr
  loc_6D18E2: MemLdRfVar from_stack_1.global_0
  loc_6D18E5: Ary1StI2
  loc_6D18E6: ILdI2 arg_C
  loc_6D18E9: CI4UI1
  loc_6D18EA: FLdPr Me
  loc_6D18ED: MemLdRfVar from_stack_1.global_244
  loc_6D18F0: Ary1LdI4
  loc_6D18F1: CI2I4
  loc_6D18F2: ILdI2 arg_C
  loc_6D18F5: CI4UI1
  loc_6D18F6: FMemLdPr
  loc_6D18FB: MemLdRfVar from_stack_1.global_48
  loc_6D18FE: Ary1StI2
  loc_6D18FF: FLdRfVar var_B0
  loc_6D1902: FLdRfVar var_AC
  loc_6D1905: ILdI2 arg_C
  loc_6D1908: LitI2_Byte 1
  loc_6D190A: SubI2
  loc_6D190B: FLdPrThis
  loc_6D190C: VCallAd Control_ID_imgTanque
  loc_6D190F: FStAdFunc var_A8
  loc_6D1912: FLdPr var_A8
  loc_6D1915: Set from_stack_2 = Me(from_stack_1)
  loc_6D191A: FLdPr var_AC
  loc_6D191D:  = Me.Height
  loc_6D1922: ILdI2 arg_C
  loc_6D1925: CI4UI1
  loc_6D1926: FLdPr Me
  loc_6D1929: MemLdRfVar from_stack_1.global_196
  loc_6D192C: Ary1LdI4
  loc_6D192D: CR8I4
  loc_6D192E: ILdRf var_88
  loc_6D1931: CR8I4
  loc_6D1932: DivR8
  loc_6D1933: FLdFPR4 var_B0
  loc_6D1936: MulR8
  loc_6D1937: LitDate 1.01
  loc_6D1940: MulR8
  loc_6D1941: FStFPR8 var_A0
  loc_6D1944: FFreeAd var_A8 = ""
  loc_6D194B: FLdFPR8 var_A0
  loc_6D194E: LitI2_Byte 0
  loc_6D1950: CR8I2
  loc_6D1951: LtR8
  loc_6D1952: BranchF loc_6D195B
  loc_6D1955: LitI2_Byte 0
  loc_6D1957: CR8I2
  loc_6D1958: FStFPR8 var_A0
  loc_6D195B: FLdFPR8 var_A0
  loc_6D195E: PopFPR4
  loc_6D195F: FLdRfVar var_AC
  loc_6D1962: ILdI2 arg_C
  loc_6D1965: LitI2_Byte 1
  loc_6D1967: SubI2
  loc_6D1968: FLdPrThis
  loc_6D1969: VCallAd Control_ID_shpFloodVacio
  loc_6D196C: FStAdFunc var_A8
  loc_6D196F: FLdPr var_A8
  loc_6D1972: Set from_stack_2 = Me(from_stack_1)
  loc_6D1977: FLdPr var_AC
  loc_6D197A: Me.Height = from_stack_1s
  loc_6D197F: FFreeAd var_A8 = ""
  loc_6D1986: FLdRfVar var_B0
  loc_6D1989: FLdRfVar var_AC
  loc_6D198C: ILdI2 arg_C
  loc_6D198F: LitI2_Byte 1
  loc_6D1991: SubI2
  loc_6D1992: FLdPrThis
  loc_6D1993: VCallAd Control_ID_imgTanque
  loc_6D1996: FStAdFunc var_A8
  loc_6D1999: FLdPr var_A8
  loc_6D199C: Set from_stack_2 = Me(from_stack_1)
  loc_6D19A1: FLdPr var_AC
  loc_6D19A4:  = Me.Height
  loc_6D19A9: ILdI2 arg_C
  loc_6D19AC: CI4UI1
  loc_6D19AD: FLdPr Me
  loc_6D19B0: MemLdRfVar from_stack_1.global_220
  loc_6D19B3: Ary1LdI4
  loc_6D19B4: CR8I4
  loc_6D19B5: ILdRf var_88
  loc_6D19B8: CR8I4
  loc_6D19B9: DivR8
  loc_6D19BA: FLdFPR4 var_B0
  loc_6D19BD: MulR8
  loc_6D19BE: LitDate 1.01
  loc_6D19C7: MulR8
  loc_6D19C8: FStFPR8 var_A0
  loc_6D19CB: FFreeAd var_A8 = ""
  loc_6D19D2: FLdFPR8 var_A0
  loc_6D19D5: LitI2_Byte 0
  loc_6D19D7: CR8I2
  loc_6D19D8: LtR8
  loc_6D19D9: BranchF loc_6D19E2
  loc_6D19DC: LitI2_Byte 0
  loc_6D19DE: CR8I2
  loc_6D19DF: FStFPR8 var_A0
  loc_6D19E2: FLdRfVar var_B0
  loc_6D19E5: FLdRfVar var_AC
  loc_6D19E8: ILdI2 arg_C
  loc_6D19EB: LitI2_Byte 1
  loc_6D19ED: SubI2
  loc_6D19EE: FLdPrThis
  loc_6D19EF: VCallAd Control_ID_imgTanque
  loc_6D19F2: FStAdFunc var_A8
  loc_6D19F5: FLdPr var_A8
  loc_6D19F8: Set from_stack_2 = Me(from_stack_1)
  loc_6D19FD: FLdPr var_AC
  loc_6D1A00:  = Me.Height
  loc_6D1A05: FLdFPR4 var_B0
  loc_6D1A08: FLdFPR8 var_A0
  loc_6D1A0B: CR4R4
  loc_6D1A0C: LtR8
  loc_6D1A0D: FFreeAd var_A8 = ""
  loc_6D1A14: BranchF loc_6D1A6B
  loc_6D1A17: FLdRfVar var_B0
  loc_6D1A1A: FLdRfVar var_AC
  loc_6D1A1D: ILdI2 arg_C
  loc_6D1A20: LitI2_Byte 1
  loc_6D1A22: SubI2
  loc_6D1A23: FLdPrThis
  loc_6D1A24: VCallAd Control_ID_imgTanque
  loc_6D1A27: FStAdFunc var_A8
  loc_6D1A2A: FLdPr var_A8
  loc_6D1A2D: Set from_stack_2 = Me(from_stack_1)
  loc_6D1A32: FLdPr var_AC
  loc_6D1A35:  = Me.Height
  loc_6D1A3A: ILdRf var_B0
  loc_6D1A3D: FLdRfVar var_B8
  loc_6D1A40: ILdI2 arg_C
  loc_6D1A43: LitI2_Byte 1
  loc_6D1A45: SubI2
  loc_6D1A46: FLdPrThis
  loc_6D1A47: VCallAd Control_ID_shpFloodProduct
  loc_6D1A4A: FStAdFunc var_B4
  loc_6D1A4D: FLdPr var_B4
  loc_6D1A50: Set from_stack_2 = Me(from_stack_1)
  loc_6D1A55: FLdPr var_B8
  loc_6D1A58: Me.Height = from_stack_1s
  loc_6D1A5D: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1A68: Branch loc_6D1A96
  loc_6D1A6B: FLdFPR8 var_A0
  loc_6D1A6E: PopFPR4
  loc_6D1A6F: FLdRfVar var_AC
  loc_6D1A72: ILdI2 arg_C
  loc_6D1A75: LitI2_Byte 1
  loc_6D1A77: SubI2
  loc_6D1A78: FLdPrThis
  loc_6D1A79: VCallAd Control_ID_shpFloodProduct
  loc_6D1A7C: FStAdFunc var_A8
  loc_6D1A7F: FLdPr var_A8
  loc_6D1A82: Set from_stack_2 = Me(from_stack_1)
  loc_6D1A87: FLdPr var_AC
  loc_6D1A8A: Me.Height = from_stack_1s
  loc_6D1A8F: FFreeAd var_A8 = ""
  loc_6D1A96: FLdFPR8 var_A0
  loc_6D1A99: LitI2_Byte 0
  loc_6D1A9B: CR8I2
  loc_6D1A9C: LtR8
  loc_6D1A9D: BranchF loc_6D1AA6
  loc_6D1AA0: LitI2_Byte 0
  loc_6D1AA2: CR8I2
  loc_6D1AA3: FStFPR8 var_A0
  loc_6D1AA6: FLdRfVar var_B0
  loc_6D1AA9: FLdRfVar var_AC
  loc_6D1AAC: ILdI2 arg_C
  loc_6D1AAF: LitI2_Byte 1
  loc_6D1AB1: SubI2
  loc_6D1AB2: FLdPrThis
  loc_6D1AB3: VCallAd Control_ID_imgTanque
  loc_6D1AB6: FStAdFunc var_A8
  loc_6D1AB9: FLdPr var_A8
  loc_6D1ABC: Set from_stack_2 = Me(from_stack_1)
  loc_6D1AC1: FLdPr var_AC
  loc_6D1AC4:  = Me.Height
  loc_6D1AC9: ILdI2 arg_C
  loc_6D1ACC: CI4UI1
  loc_6D1ACD: FLdPr Me
  loc_6D1AD0: MemLdRfVar from_stack_1.global_244
  loc_6D1AD3: Ary1LdI4
  loc_6D1AD4: CR8I4
  loc_6D1AD5: ILdRf var_88
  loc_6D1AD8: CR8I4
  loc_6D1AD9: DivR8
  loc_6D1ADA: FLdFPR4 var_B0
  loc_6D1ADD: MulR8
  loc_6D1ADE: LitDate 1.01
  loc_6D1AE7: MulR8
  loc_6D1AE8: FStFPR8 var_A0
  loc_6D1AEB: FFreeAd var_A8 = ""
  loc_6D1AF2: FLdFPR8 var_A0
  loc_6D1AF5: PopFPR4
  loc_6D1AF6: FLdRfVar var_AC
  loc_6D1AF9: ILdI2 arg_C
  loc_6D1AFC: LitI2_Byte 1
  loc_6D1AFE: SubI2
  loc_6D1AFF: FLdPrThis
  loc_6D1B00: VCallAd Control_ID_shpFloodWater
  loc_6D1B03: FStAdFunc var_A8
  loc_6D1B06: FLdPr var_A8
  loc_6D1B09: Set from_stack_2 = Me(from_stack_1)
  loc_6D1B0E: FLdPr var_AC
  loc_6D1B11: Me.Height = from_stack_1s
  loc_6D1B16: FFreeAd var_A8 = ""
  loc_6D1B1D: LitI2_Byte 0
  loc_6D1B1F: BranchF loc_6D1D34
  loc_6D1B22: FLdRfVar var_B0
  loc_6D1B25: FLdRfVar var_AC
  loc_6D1B28: ILdI2 arg_C
  loc_6D1B2B: LitI2_Byte 1
  loc_6D1B2D: SubI2
  loc_6D1B2E: FLdPrThis
  loc_6D1B2F: VCallAd Control_ID_shpFloodWater
  loc_6D1B32: FStAdFunc var_A8
  loc_6D1B35: FLdPr var_A8
  loc_6D1B38: Set from_stack_2 = Me(from_stack_1)
  loc_6D1B3D: FLdPr var_AC
  loc_6D1B40:  = Me.Height
  loc_6D1B45: FLdFPR4 var_B0
  loc_6D1B48: LitI2 135
  loc_6D1B4B: CR8I2
  loc_6D1B4C: LtR8
  loc_6D1B4D: ILdI2 arg_C
  loc_6D1B50: CI4UI1
  loc_6D1B51: FLdPr Me
  loc_6D1B54: MemLdRfVar from_stack_1.global_244
  loc_6D1B57: Ary1LdI4
  loc_6D1B58: LitI4 0
  loc_6D1B5D: GtI4
  loc_6D1B5E: AndI4
  loc_6D1B5F: FFreeAd var_A8 = ""
  loc_6D1B66: BranchF loc_6D1D34
  loc_6D1B69: FLdRfVar var_B0
  loc_6D1B6C: FLdRfVar var_AC
  loc_6D1B6F: ILdI2 arg_C
  loc_6D1B72: LitI2_Byte 1
  loc_6D1B74: SubI2
  loc_6D1B75: FLdPrThis
  loc_6D1B76: VCallAd Control_ID_shpFloodWater
  loc_6D1B79: FStAdFunc var_A8
  loc_6D1B7C: FLdPr var_A8
  loc_6D1B7F: Set from_stack_2 = Me(from_stack_1)
  loc_6D1B84: FLdPr var_AC
  loc_6D1B87:  = Me.Height
  loc_6D1B8C: LitI2 135
  loc_6D1B8F: CR8I2
  loc_6D1B90: FLdFPR4 var_B0
  loc_6D1B93: SubR4
  loc_6D1B94: CI4R8
  loc_6D1B95: FStR4 var_98
  loc_6D1B98: FFreeAd var_A8 = ""
  loc_6D1B9F: FLdRfVar var_B0
  loc_6D1BA2: FLdRfVar var_AC
  loc_6D1BA5: ILdI2 arg_C
  loc_6D1BA8: LitI2_Byte 1
  loc_6D1BAA: SubI2
  loc_6D1BAB: FLdPrThis
  loc_6D1BAC: VCallAd Control_ID_shpFloodProduct
  loc_6D1BAF: FStAdFunc var_A8
  loc_6D1BB2: FLdPr var_A8
  loc_6D1BB5: Set from_stack_2 = Me(from_stack_1)
  loc_6D1BBA: FLdPr var_AC
  loc_6D1BBD:  = Me.Height
  loc_6D1BC2: FLdFPR4 var_B0
  loc_6D1BC5: CR8R8
  loc_6D1BC6: ILdRf var_98
  loc_6D1BC9: CR8I4
  loc_6D1BCA: GtR4
  loc_6D1BCB: FFreeAd var_A8 = ""
  loc_6D1BD2: BranchF loc_6D1C86
  loc_6D1BD5: FLdRfVar var_B0
  loc_6D1BD8: FLdRfVar var_AC
  loc_6D1BDB: ILdI2 arg_C
  loc_6D1BDE: LitI2_Byte 1
  loc_6D1BE0: SubI2
  loc_6D1BE1: FLdPrThis
  loc_6D1BE2: VCallAd Control_ID_shpFloodProduct
  loc_6D1BE5: FStAdFunc var_A8
  loc_6D1BE8: FLdPr var_A8
  loc_6D1BEB: Set from_stack_2 = Me(from_stack_1)
  loc_6D1BF0: FLdPr var_AC
  loc_6D1BF3:  = Me.Height
  loc_6D1BF8: FLdFPR4 var_B0
  loc_6D1BFB: ILdRf var_98
  loc_6D1BFE: CR8I4
  loc_6D1BFF: SubR4
  loc_6D1C00: PopFPR4
  loc_6D1C01: FLdRfVar var_B8
  loc_6D1C04: ILdI2 arg_C
  loc_6D1C07: LitI2_Byte 1
  loc_6D1C09: SubI2
  loc_6D1C0A: FLdPrThis
  loc_6D1C0B: VCallAd Control_ID_shpFloodProduct
  loc_6D1C0E: FStAdFunc var_B4
  loc_6D1C11: FLdPr var_B4
  loc_6D1C14: Set from_stack_2 = Me(from_stack_1)
  loc_6D1C19: FLdPr var_B8
  loc_6D1C1C: Me.Height = from_stack_1s
  loc_6D1C21: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1C2C: FLdRfVar var_B0
  loc_6D1C2F: FLdRfVar var_AC
  loc_6D1C32: ILdI2 arg_C
  loc_6D1C35: LitI2_Byte 1
  loc_6D1C37: SubI2
  loc_6D1C38: FLdPrThis
  loc_6D1C39: VCallAd Control_ID_shpFloodWater
  loc_6D1C3C: FStAdFunc var_A8
  loc_6D1C3F: FLdPr var_A8
  loc_6D1C42: Set from_stack_2 = Me(from_stack_1)
  loc_6D1C47: FLdPr var_AC
  loc_6D1C4A:  = Me.Height
  loc_6D1C4F: FLdFPR4 var_B0
  loc_6D1C52: ILdRf var_98
  loc_6D1C55: CR8I4
  loc_6D1C56: AddR8
  loc_6D1C57: PopFPR4
  loc_6D1C58: FLdRfVar var_B8
  loc_6D1C5B: ILdI2 arg_C
  loc_6D1C5E: LitI2_Byte 1
  loc_6D1C60: SubI2
  loc_6D1C61: FLdPrThis
  loc_6D1C62: VCallAd Control_ID_shpFloodWater
  loc_6D1C65: FStAdFunc var_B4
  loc_6D1C68: FLdPr var_B4
  loc_6D1C6B: Set from_stack_2 = Me(from_stack_1)
  loc_6D1C70: FLdPr var_B8
  loc_6D1C73: Me.Height = from_stack_1s
  loc_6D1C78: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1C83: Branch loc_6D1D34
  loc_6D1C86: FLdRfVar var_B0
  loc_6D1C89: FLdRfVar var_AC
  loc_6D1C8C: ILdI2 arg_C
  loc_6D1C8F: LitI2_Byte 1
  loc_6D1C91: SubI2
  loc_6D1C92: FLdPrThis
  loc_6D1C93: VCallAd Control_ID_shpFloodVacio
  loc_6D1C96: FStAdFunc var_A8
  loc_6D1C99: FLdPr var_A8
  loc_6D1C9C: Set from_stack_2 = Me(from_stack_1)
  loc_6D1CA1: FLdPr var_AC
  loc_6D1CA4:  = Me.Height
  loc_6D1CA9: FLdFPR4 var_B0
  loc_6D1CAC: ILdRf var_98
  loc_6D1CAF: CR8I4
  loc_6D1CB0: SubR4
  loc_6D1CB1: PopFPR4
  loc_6D1CB2: FLdRfVar var_B8
  loc_6D1CB5: ILdI2 arg_C
  loc_6D1CB8: LitI2_Byte 1
  loc_6D1CBA: SubI2
  loc_6D1CBB: FLdPrThis
  loc_6D1CBC: VCallAd Control_ID_shpFloodVacio
  loc_6D1CBF: FStAdFunc var_B4
  loc_6D1CC2: FLdPr var_B4
  loc_6D1CC5: Set from_stack_2 = Me(from_stack_1)
  loc_6D1CCA: FLdPr var_B8
  loc_6D1CCD: Me.Height = from_stack_1s
  loc_6D1CD2: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1CDD: FLdRfVar var_B0
  loc_6D1CE0: FLdRfVar var_AC
  loc_6D1CE3: ILdI2 arg_C
  loc_6D1CE6: LitI2_Byte 1
  loc_6D1CE8: SubI2
  loc_6D1CE9: FLdPrThis
  loc_6D1CEA: VCallAd Control_ID_shpFloodWater
  loc_6D1CED: FStAdFunc var_A8
  loc_6D1CF0: FLdPr var_A8
  loc_6D1CF3: Set from_stack_2 = Me(from_stack_1)
  loc_6D1CF8: FLdPr var_AC
  loc_6D1CFB:  = Me.Height
  loc_6D1D00: FLdFPR4 var_B0
  loc_6D1D03: ILdRf var_98
  loc_6D1D06: CR8I4
  loc_6D1D07: AddR8
  loc_6D1D08: PopFPR4
  loc_6D1D09: FLdRfVar var_B8
  loc_6D1D0C: ILdI2 arg_C
  loc_6D1D0F: LitI2_Byte 1
  loc_6D1D11: SubI2
  loc_6D1D12: FLdPrThis
  loc_6D1D13: VCallAd Control_ID_shpFloodWater
  loc_6D1D16: FStAdFunc var_B4
  loc_6D1D19: FLdPr var_B4
  loc_6D1D1C: Set from_stack_2 = Me(from_stack_1)
  loc_6D1D21: FLdPr var_B8
  loc_6D1D24: Me.Height = from_stack_1s
  loc_6D1D29: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1D34: FLdRfVar var_BC
  loc_6D1D37: FLdRfVar var_B8
  loc_6D1D3A: ILdI2 arg_C
  loc_6D1D3D: LitI2_Byte 1
  loc_6D1D3F: SubI2
  loc_6D1D40: FLdPrThis
  loc_6D1D41: VCallAd Control_ID_imgTanque
  loc_6D1D44: FStAdFunc var_B4
  loc_6D1D47: FLdPr var_B4
  loc_6D1D4A: Set from_stack_2 = Me(from_stack_1)
  loc_6D1D4F: FLdPr var_B8
  loc_6D1D52:  = Me.Height
  loc_6D1D57: FLdRfVar var_C8
  loc_6D1D5A: FLdRfVar var_C4
  loc_6D1D5D: ILdI2 arg_C
  loc_6D1D60: LitI2_Byte 1
  loc_6D1D62: SubI2
  loc_6D1D63: FLdPrThis
  loc_6D1D64: VCallAd Control_ID_shpFloodWater
  loc_6D1D67: FStAdFunc var_C0
  loc_6D1D6A: FLdPr var_C0
  loc_6D1D6D: Set from_stack_2 = Me(from_stack_1)
  loc_6D1D72: FLdPr var_C4
  loc_6D1D75:  = Me.Height
  loc_6D1D7A: FLdRfVar var_B0
  loc_6D1D7D: FLdRfVar var_AC
  loc_6D1D80: ILdI2 arg_C
  loc_6D1D83: LitI2_Byte 1
  loc_6D1D85: SubI2
  loc_6D1D86: FLdPrThis
  loc_6D1D87: VCallAd Control_ID_imgTanque
  loc_6D1D8A: FStAdFunc var_A8
  loc_6D1D8D: FLdPr var_A8
  loc_6D1D90: Set from_stack_2 = Me(from_stack_1)
  loc_6D1D95: FLdPr var_AC
  loc_6D1D98:  = Me.Top
  loc_6D1D9D: FLdFPR4 var_B0
  loc_6D1DA0: FLdFPR4 var_BC
  loc_6D1DA3: AddR8
  loc_6D1DA4: FLdFPR4 var_C8
  loc_6D1DA7: SubR4
  loc_6D1DA8: PopFPR4
  loc_6D1DA9: FLdRfVar var_D0
  loc_6D1DAC: ILdI2 arg_C
  loc_6D1DAF: LitI2_Byte 1
  loc_6D1DB1: SubI2
  loc_6D1DB2: FLdPrThis
  loc_6D1DB3: VCallAd Control_ID_shpFloodWater
  loc_6D1DB6: FStAdFunc var_CC
  loc_6D1DB9: FLdPr var_CC
  loc_6D1DBC: Set from_stack_2 = Me(from_stack_1)
  loc_6D1DC1: FLdPr var_D0
  loc_6D1DC4: Me.Top = from_stack_1s
  loc_6D1DC9: FFreeAd var_A8 = "": var_AC = "": var_B4 = "": var_B8 = "": var_C0 = "": var_C4 = "": var_CC = ""
  loc_6D1DDC: FLdRfVar var_BC
  loc_6D1DDF: FLdRfVar var_B8
  loc_6D1DE2: ILdI2 arg_C
  loc_6D1DE5: LitI2_Byte 1
  loc_6D1DE7: SubI2
  loc_6D1DE8: FLdPrThis
  loc_6D1DE9: VCallAd Control_ID_imgTanque
  loc_6D1DEC: FStAdFunc var_B4
  loc_6D1DEF: FLdPr var_B4
  loc_6D1DF2: Set from_stack_2 = Me(from_stack_1)
  loc_6D1DF7: FLdPr var_B8
  loc_6D1DFA:  = Me.Height
  loc_6D1DFF: FLdRfVar var_C8
  loc_6D1E02: FLdRfVar var_C4
  loc_6D1E05: ILdI2 arg_C
  loc_6D1E08: LitI2_Byte 1
  loc_6D1E0A: SubI2
  loc_6D1E0B: FLdPrThis
  loc_6D1E0C: VCallAd Control_ID_shpFloodWater
  loc_6D1E0F: FStAdFunc var_C0
  loc_6D1E12: FLdPr var_C0
  loc_6D1E15: Set from_stack_2 = Me(from_stack_1)
  loc_6D1E1A: FLdPr var_C4
  loc_6D1E1D:  = Me.Height
  loc_6D1E22: FLdRfVar var_D4
  loc_6D1E25: FLdRfVar var_D0
  loc_6D1E28: ILdI2 arg_C
  loc_6D1E2B: LitI2_Byte 1
  loc_6D1E2D: SubI2
  loc_6D1E2E: FLdPrThis
  loc_6D1E2F: VCallAd Control_ID_shpFloodProduct
  loc_6D1E32: FStAdFunc var_CC
  loc_6D1E35: FLdPr var_CC
  loc_6D1E38: Set from_stack_2 = Me(from_stack_1)
  loc_6D1E3D: FLdPr var_D0
  loc_6D1E40:  = Me.Height
  loc_6D1E45: FLdRfVar var_B0
  loc_6D1E48: FLdRfVar var_AC
  loc_6D1E4B: ILdI2 arg_C
  loc_6D1E4E: LitI2_Byte 1
  loc_6D1E50: SubI2
  loc_6D1E51: FLdPrThis
  loc_6D1E52: VCallAd Control_ID_imgTanque
  loc_6D1E55: FStAdFunc var_A8
  loc_6D1E58: FLdPr var_A8
  loc_6D1E5B: Set from_stack_2 = Me(from_stack_1)
  loc_6D1E60: FLdPr var_AC
  loc_6D1E63:  = Me.Top
  loc_6D1E68: FLdFPR4 var_B0
  loc_6D1E6B: FLdFPR4 var_BC
  loc_6D1E6E: AddR8
  loc_6D1E6F: FLdFPR4 var_C8
  loc_6D1E72: SubR4
  loc_6D1E73: FLdFPR4 var_D4
  loc_6D1E76: SubR4
  loc_6D1E77: PopFPR4
  loc_6D1E78: FLdRfVar var_DC
  loc_6D1E7B: ILdI2 arg_C
  loc_6D1E7E: LitI2_Byte 1
  loc_6D1E80: SubI2
  loc_6D1E81: FLdPrThis
  loc_6D1E82: VCallAd Control_ID_shpFloodProduct
  loc_6D1E85: FStAdFunc var_D8
  loc_6D1E88: FLdPr var_D8
  loc_6D1E8B: Set from_stack_2 = Me(from_stack_1)
  loc_6D1E90: FLdPr var_DC
  loc_6D1E93: Me.Top = from_stack_1s
  loc_6D1E98: FFreeAd var_A8 = "": var_AC = "": var_B4 = "": var_B8 = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D8 = ""
  loc_6D1EAF: FLdRfVar var_B0
  loc_6D1EB2: FLdRfVar var_AC
  loc_6D1EB5: ILdI2 arg_C
  loc_6D1EB8: LitI2_Byte 1
  loc_6D1EBA: SubI2
  loc_6D1EBB: FLdPrThis
  loc_6D1EBC: VCallAd Control_ID_imgTanque
  loc_6D1EBF: FStAdFunc var_A8
  loc_6D1EC2: FLdPr var_A8
  loc_6D1EC5: Set from_stack_2 = Me(from_stack_1)
  loc_6D1ECA: FLdPr var_AC
  loc_6D1ECD:  = Me.Top
  loc_6D1ED2: ILdRf var_B0
  loc_6D1ED5: FLdRfVar var_B8
  loc_6D1ED8: ILdI2 arg_C
  loc_6D1EDB: LitI2_Byte 1
  loc_6D1EDD: SubI2
  loc_6D1EDE: FLdPrThis
  loc_6D1EDF: VCallAd Control_ID_shpFloodVacio
  loc_6D1EE2: FStAdFunc var_B4
  loc_6D1EE5: FLdPr var_B4
  loc_6D1EE8: Set from_stack_2 = Me(from_stack_1)
  loc_6D1EED: FLdPr var_B8
  loc_6D1EF0: Me.Top = from_stack_1s
  loc_6D1EF5: FFreeAd var_A8 = "": var_AC = "": var_B4 = ""
  loc_6D1F00: FLdRfVar var_A2
  loc_6D1F03: FLdRfVar var_AC
  loc_6D1F06: ILdI2 arg_C
  loc_6D1F09: LitI2_Byte 1
  loc_6D1F0B: SubI2
  loc_6D1F0C: FLdPrThis
  loc_6D1F0D: VCallAd Control_ID_shpFloodProduct
  loc_6D1F10: FStAdFunc var_A8
  loc_6D1F13: FLdPr var_A8
  loc_6D1F16: Set from_stack_2 = Me(from_stack_1)
  loc_6D1F1B: FLdPr var_AC
  loc_6D1F1E:  = Me.Visible
  loc_6D1F23: FLdI2 var_A2
  loc_6D1F26: LitI2_Byte 0
  loc_6D1F28: EqI2
  loc_6D1F29: FFreeAd var_A8 = ""
  loc_6D1F30: BranchF loc_6D1F5C
  loc_6D1F33: LitI2_Byte &HFF
  loc_6D1F35: FLdRfVar var_AC
  loc_6D1F38: ILdI2 arg_C
  loc_6D1F3B: LitI2_Byte 1
  loc_6D1F3D: SubI2
  loc_6D1F3E: FLdPrThis
  loc_6D1F3F: VCallAd Control_ID_shpFloodProduct
  loc_6D1F42: FStAdFunc var_A8
  loc_6D1F45: FLdPr var_A8
  loc_6D1F48: Set from_stack_2 = Me(from_stack_1)
  loc_6D1F4D: FLdPr var_AC
  loc_6D1F50: Me.Visible = from_stack_1b
  loc_6D1F55: FFreeAd var_A8 = ""
  loc_6D1F5C: FLdRfVar var_A2
  loc_6D1F5F: FLdRfVar var_AC
  loc_6D1F62: ILdI2 arg_C
  loc_6D1F65: LitI2_Byte 1
  loc_6D1F67: SubI2
  loc_6D1F68: FLdPrThis
  loc_6D1F69: VCallAd Control_ID_shpFloodWater
  loc_6D1F6C: FStAdFunc var_A8
  loc_6D1F6F: FLdPr var_A8
  loc_6D1F72: Set from_stack_2 = Me(from_stack_1)
  loc_6D1F77: FLdPr var_AC
  loc_6D1F7A:  = Me.Visible
  loc_6D1F7F: FLdI2 var_A2
  loc_6D1F82: LitI2_Byte 0
  loc_6D1F84: EqI2
  loc_6D1F85: FFreeAd var_A8 = ""
  loc_6D1F8C: BranchF loc_6D1FB8
  loc_6D1F8F: LitI2_Byte &HFF
  loc_6D1F91: FLdRfVar var_AC
  loc_6D1F94: ILdI2 arg_C
  loc_6D1F97: LitI2_Byte 1
  loc_6D1F99: SubI2
  loc_6D1F9A: FLdPrThis
  loc_6D1F9B: VCallAd Control_ID_shpFloodWater
  loc_6D1F9E: FStAdFunc var_A8
  loc_6D1FA1: FLdPr var_A8
  loc_6D1FA4: Set from_stack_2 = Me(from_stack_1)
  loc_6D1FA9: FLdPr var_AC
  loc_6D1FAC: Me.Visible = from_stack_1b
  loc_6D1FB1: FFreeAd var_A8 = ""
  loc_6D1FB8: FLdRfVar var_A2
  loc_6D1FBB: FLdRfVar var_AC
  loc_6D1FBE: ILdI2 arg_C
  loc_6D1FC1: LitI2_Byte 1
  loc_6D1FC3: SubI2
  loc_6D1FC4: FLdPrThis
  loc_6D1FC5: VCallAd Control_ID_shpFloodVacio
  loc_6D1FC8: FStAdFunc var_A8
  loc_6D1FCB: FLdPr var_A8
  loc_6D1FCE: Set from_stack_2 = Me(from_stack_1)
  loc_6D1FD3: FLdPr var_AC
  loc_6D1FD6:  = Me.Visible
  loc_6D1FDB: FLdI2 var_A2
  loc_6D1FDE: LitI2_Byte 0
  loc_6D1FE0: EqI2
  loc_6D1FE1: FFreeAd var_A8 = ""
  loc_6D1FE8: BranchF loc_6D2014
  loc_6D1FEB: LitI2_Byte &HFF
  loc_6D1FED: FLdRfVar var_AC
  loc_6D1FF0: ILdI2 arg_C
  loc_6D1FF3: LitI2_Byte 1
  loc_6D1FF5: SubI2
  loc_6D1FF6: FLdPrThis
  loc_6D1FF7: VCallAd Control_ID_shpFloodVacio
  loc_6D1FFA: FStAdFunc var_A8
  loc_6D1FFD: FLdPr var_A8
  loc_6D2000: Set from_stack_2 = Me(from_stack_1)
  loc_6D2005: FLdPr var_AC
  loc_6D2008: Me.Visible = from_stack_1b
  loc_6D200D: FFreeAd var_A8 = ""
  loc_6D2014: ExitProcHresult
  loc_6D2015: FLdRfVar var_224
  loc_6D2018: LitVar_Missing var_220
  loc_6D201B: LitVar_Missing var_200
  loc_6D201E: LitVar_Missing var_1E0
  loc_6D2021: LitVar_Missing var_1C0
  loc_6D2024: LitVar_Missing var_1A0
  loc_6D2027: LitVar_Missing var_180
  loc_6D202A: LitVar_Missing var_160
  loc_6D202D: LitVar_Missing var_140
  loc_6D2030: LitVar_Missing var_120
  loc_6D2033: LitVar_Missing var_100
  loc_6D2036: LitStr "Se produjo un error al inicializar los tanques"
  loc_6D2039: FStStrCopy var_E0
  loc_6D203C: FLdRfVar var_E0
  loc_6D203F: LitI4 &H2E
  loc_6D2044: PopTmpLdAdStr var_B0
  loc_6D2047: LitI2_Byte &HF
  loc_6D2049: PopTmpLdAd2 var_A2
  loc_6D204C: ImpAdLdRf MemVar_74C7D0
  loc_6D204F: NewIfNullPr clsMsg
  loc_6D2052: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2057: FLdRfVar var_230
  loc_6D205A: ImpAdCallI2 Err 'rtcErrObj
  loc_6D205F: FStAdFunc var_A8
  loc_6D2062: FLdPr var_A8
  loc_6D2065:  = Err.Description
  loc_6D206A: LitVar_Missing var_2A4
  loc_6D206D: LitVar_Missing var_284
  loc_6D2070: LitVarStr var_254, "Error de Tanques"
  loc_6D2075: FStVarCopyObj var_264
  loc_6D2078: FLdRfVar var_264
  loc_6D207B: LitI4 &H10
  loc_6D2080: ILdRf var_224
  loc_6D2083: LitStr vbCrLf
  loc_6D2086: ConcatStr
  loc_6D2087: FStStrNoPop var_228
  loc_6D208A: LitStr "Verifique la configuración"
  loc_6D208D: ConcatStr
  loc_6D208E: FStStrNoPop var_22C
  loc_6D2091: LitStr vbCrLf
  loc_6D2094: ConcatStr
  loc_6D2095: FStStrNoPop var_234
  loc_6D2098: ILdRf var_230
  loc_6D209B: ConcatStr
  loc_6D209C: CVarStr var_244
  loc_6D209F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D20A4: FFreeStr var_E0 = "": var_224 = "": var_228 = "": var_22C = "": var_234 = ""
  loc_6D20B3: FFree1Ad var_A8
  loc_6D20B6: FFreeVar var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_244 = "": var_264 = "": var_284 = ""
  loc_6D20D5: ILdRf Me
  loc_6D20D8: FStAdNoPop
  loc_6D20DC: ImpAdLdRf MemVar_7520D4
  loc_6D20DF: NewIfNullPr Global
  loc_6D20E2: Global.Unload from_stack_1
  loc_6D20E7: FFree1Ad var_A8
  loc_6D20EA: ExitProcHresult
  loc_6D20EB: ConcatStr
End Function

Private Function Proc_117_71_66D4F4() '66D4F4
  'Data Table: 44F8E0
  loc_66D10C: FLdRfVar var_A2
  loc_66D10F: FLdRfVar var_88
  loc_66D112: FLdRfVar var_A0
  loc_66D115: ImpAdLdRf MemVar_74C760
  loc_66D118: NewIfNullPr Formx
  loc_66D11B: from_stack_1v = Formx.global_4589716Get()
  loc_66D120: FLdPr var_A0
  loc_66D123: Formx.Line (#x1from_stack_2s, from_stack_3s)-(from_stack_4s, from_stack_5s), from_stack_6
  loc_66D128: FLdI2 var_A2
  loc_66D12B: NotI4
  loc_66D12C: FFree1Ad var_A0
  loc_66D12F: BranchF loc_66D149
  loc_66D132: FLdRfVar var_B4
  loc_66D135: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66D13A: FLdRfVar var_B4
  loc_66D13D: CBoolVarNull
  loc_66D13F: FFree1Var var_B4 = ""
  loc_66D142: BranchF loc_66D146
  loc_66D145: ExitProcHresult
  loc_66D146: Branch loc_66D10C
  loc_66D149: LitI2_Byte 1
  loc_66D14B: FStI2 var_8C
  loc_66D14E: ILdRf var_88
  loc_66D151: FnLenStr
  loc_66D152: CI2I4
  loc_66D153: FStI2 var_8E
  loc_66D156: FLdI2 var_8C
  loc_66D159: FLdI2 var_8E
  loc_66D15C: LeI2
  loc_66D15D: BranchF loc_66D4F1
  loc_66D160: LitVarI2 var_B4, 2
  loc_66D165: FLdI2 var_8C
  loc_66D168: CI4UI1
  loc_66D169: FLdRfVar var_88
  loc_66D16C: CVarRef
  loc_66D171: FLdRfVar var_E4
  loc_66D174: ImpAdCallFPR4  = Mid(, , )
  loc_66D179: FLdRfVar var_E4
  loc_66D17C: CStrVarVal var_E8
  loc_66D180: ImpAdCallFPR4 push Val()
  loc_66D185: CI2R8
  loc_66D186: FStI2 var_8A
  loc_66D189: FFree1Str var_E8
  loc_66D18C: FFreeVar var_B4 = ""
  loc_66D193: FLdI2 var_8A
  loc_66D196: ImpAdLdUI1
  loc_66D19A: CI2UI1
  loc_66D19C: GtI2
  loc_66D19D: BranchF loc_66D1A3
  loc_66D1A0: Branch loc_66D4F1
  loc_66D1A3: FLdI2 var_8C
  loc_66D1A6: LitI2_Byte 2
  loc_66D1A8: AddI2
  loc_66D1A9: FStI2 var_8C
  loc_66D1AC: LitVarI2 var_B4, 2
  loc_66D1B1: FLdI2 var_8C
  loc_66D1B4: CI4UI1
  loc_66D1B5: FLdRfVar var_88
  loc_66D1B8: CVarRef
  loc_66D1BD: FLdRfVar var_E4
  loc_66D1C0: ImpAdCallFPR4  = Mid(, , )
  loc_66D1C5: FLdRfVar var_E4
  loc_66D1C8: CStrVarVal var_E8
  loc_66D1CC: ImpAdCallFPR4 push Val()
  loc_66D1D1: CI2R8
  loc_66D1D2: FStI2 var_90
  loc_66D1D5: FFree1Str var_E8
  loc_66D1D8: FFreeVar var_B4 = ""
  loc_66D1DF: FLdI2 var_8C
  loc_66D1E2: LitI2_Byte 2
  loc_66D1E4: AddI2
  loc_66D1E5: FStI2 var_8C
  loc_66D1E8: LitI2_Byte 0
  loc_66D1EA: FStI2 var_92
  loc_66D1ED: LitI2_Byte 0
  loc_66D1EF: FLdRfVar var_9A
  loc_66D1F2: LitI2_Byte &H63
  loc_66D1F4: ForI2 var_EC
  loc_66D1FA: LitI2_Byte 0
  loc_66D1FC: FLdI2 var_8A
  loc_66D1FF: CI4UI1
  loc_66D200: FLdI2 var_9A
  loc_66D203: CI4UI1
  loc_66D204: ImpAdLdRf MemVar_74A020
  loc_66D207: AryLdPr
  loc_66D20A: MemStI2 global_0
  loc_66D20D: FLdRfVar var_9A
  loc_66D210: NextI2 var_EC, loc_66D1FA
  loc_66D215: LitI2_Byte 1
  loc_66D217: FLdRfVar var_94
  loc_66D21A: FLdI2 var_90
  loc_66D21D: ForI2 var_F0
  loc_66D223: LitVarI2 var_B4, 2
  loc_66D228: FLdI2 var_8C
  loc_66D22B: CI4UI1
  loc_66D22C: FLdRfVar var_88
  loc_66D22F: CVarRef
  loc_66D234: FLdRfVar var_E4
  loc_66D237: ImpAdCallFPR4  = Mid(, , )
  loc_66D23C: FLdRfVar var_E4
  loc_66D23F: CStrVarVal var_E8
  loc_66D243: ImpAdCallFPR4 push Val()
  loc_66D248: CI2R8
  loc_66D249: FStI2 var_96
  loc_66D24C: FFree1Str var_E8
  loc_66D24F: FFreeVar var_B4 = ""
  loc_66D256: LitI2_Byte &HFF
  loc_66D258: FLdI2 var_8A
  loc_66D25B: CI4UI1
  loc_66D25C: FLdI2 var_96
  loc_66D25F: LitI2_Byte &H64
  loc_66D261: ModI2
  loc_66D262: CI4UI1
  loc_66D263: ImpAdLdRf MemVar_74A020
  loc_66D266: AryLdPr
  loc_66D269: MemStI2 global_0
  loc_66D26C: FLdI2 var_8C
  loc_66D26F: LitI2_Byte 2
  loc_66D271: AddI2
  loc_66D272: FStI2 var_8C
  loc_66D275: LitVarI2 var_B4, 1
  loc_66D27A: FLdI2 var_8C
  loc_66D27D: CI4UI1
  loc_66D27E: FLdRfVar var_88
  loc_66D281: CVarRef
  loc_66D286: FLdRfVar var_E4
  loc_66D289: ImpAdCallFPR4  = Mid(, , )
  loc_66D28E: FLdRfVar var_E4
  loc_66D291: CStrVarVal var_E8
  loc_66D295: ImpAdCallFPR4 push Val()
  loc_66D29A: CI2R8
  loc_66D29B: FStI2 var_98
  loc_66D29E: FFree1Str var_E8
  loc_66D2A1: FFreeVar var_B4 = ""
  loc_66D2A8: FLdI2 var_8C
  loc_66D2AB: LitI2_Byte 1
  loc_66D2AD: AddI2
  loc_66D2AE: FStI2 var_8C
  loc_66D2B1: FLdI2 var_98
  loc_66D2B4: FLdI2 var_92
  loc_66D2B7: GtI2
  loc_66D2B8: BranchF loc_66D2C1
  loc_66D2BB: FLdI2 var_98
  loc_66D2BE: FStI2 var_92
  loc_66D2C1: FLdRfVar var_94
  loc_66D2C4: NextI2 var_F0, loc_66D223
  loc_66D2C9: FLdRfVar var_A2
  loc_66D2CC: FLdI2 var_8A
  loc_66D2CF: CI4UI1
  loc_66D2D0: ImpAdLdRf MemVar_74C1D8
  loc_66D2D3: Ary1LdUI1
  loc_66D2D5: CI2UI1
  loc_66D2D7: ImpAdLdRf MemVar_74A220
  loc_66D2DA: NewIfNullPr clsProducts
  loc_66D2DD:  = clsProducts.hWnd
  loc_66D2E2: FLdI2 var_A2
  loc_66D2E5: NotI4
  loc_66D2E6: BranchF loc_66D3D9
  loc_66D2E9: LitVar_FALSE
  loc_66D2ED: LitVar_TRUE var_B4
  loc_66D2F0: FLdI2 var_92
  loc_66D2F3: LitI2_Byte 0
  loc_66D2F5: EqI2
  loc_66D2F6: CVarBoolI2 var_C4
  loc_66D2FA: FLdRfVar var_110
  loc_66D2FD: ImpAdCallFPR4  = IIf(, , )
  loc_66D302: FLdRfVar var_110
  loc_66D305: CBoolVar
  loc_66D307: FLdRfVar var_114
  loc_66D30A: FLdI2 var_8A
  loc_66D30D: LitI2_Byte 1
  loc_66D30F: SubI2
  loc_66D310: FLdPrThis
  loc_66D311: VCallAd Control_ID_imgSemaforoVerde
  loc_66D314: FStAdFunc var_A0
  loc_66D317: FLdPr var_A0
  loc_66D31A: Set from_stack_2 = Me(from_stack_1)
  loc_66D31F: FLdPr var_114
  loc_66D322: Me.Visible = from_stack_1b
  loc_66D327: FFreeAd var_A0 = ""
  loc_66D32E: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_66D339: LitVar_FALSE
  loc_66D33D: LitVar_TRUE var_B4
  loc_66D340: FLdI2 var_92
  loc_66D343: LitI2_Byte 1
  loc_66D345: EqI2
  loc_66D346: CVarBoolI2 var_C4
  loc_66D34A: FLdRfVar var_110
  loc_66D34D: ImpAdCallFPR4  = IIf(, , )
  loc_66D352: FLdRfVar var_110
  loc_66D355: CBoolVar
  loc_66D357: FLdRfVar var_114
  loc_66D35A: FLdI2 var_8A
  loc_66D35D: LitI2_Byte 1
  loc_66D35F: SubI2
  loc_66D360: FLdPrThis
  loc_66D361: VCallAd Control_ID_imgSemaforoAmarillo
  loc_66D364: FStAdFunc var_A0
  loc_66D367: FLdPr var_A0
  loc_66D36A: Set from_stack_2 = Me(from_stack_1)
  loc_66D36F: FLdPr var_114
  loc_66D372: Me.Visible = from_stack_1b
  loc_66D377: FFreeAd var_A0 = ""
  loc_66D37E: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_66D389: LitVar_FALSE
  loc_66D38D: LitVar_TRUE var_B4
  loc_66D390: FLdI2 var_92
  loc_66D393: LitI2_Byte 2
  loc_66D395: EqI2
  loc_66D396: CVarBoolI2 var_C4
  loc_66D39A: FLdRfVar var_110
  loc_66D39D: ImpAdCallFPR4  = IIf(, , )
  loc_66D3A2: FLdRfVar var_110
  loc_66D3A5: CBoolVar
  loc_66D3A7: FLdRfVar var_114
  loc_66D3AA: FLdI2 var_8A
  loc_66D3AD: LitI2_Byte 1
  loc_66D3AF: SubI2
  loc_66D3B0: FLdPrThis
  loc_66D3B1: VCallAd Control_ID_imgSemaforoRojo
  loc_66D3B4: FStAdFunc var_A0
  loc_66D3B7: FLdPr var_A0
  loc_66D3BA: Set from_stack_2 = Me(from_stack_1)
  loc_66D3BF: FLdPr var_114
  loc_66D3C2: Me.Visible = from_stack_1b
  loc_66D3C7: FFreeAd var_A0 = ""
  loc_66D3CE: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_66D3D9: FLdRfVar var_A2
  loc_66D3DC: FLdI2 var_8A
  loc_66D3DF: CI4UI1
  loc_66D3E0: ImpAdLdRf MemVar_74C1D8
  loc_66D3E3: Ary1LdUI1
  loc_66D3E5: CI2UI1
  loc_66D3E7: ImpAdLdRf MemVar_74A220
  loc_66D3EA: NewIfNullPr clsProducts
  loc_66D3ED:  = clsProducts.hWnd
  loc_66D3F2: FLdI2 var_A2
  loc_66D3F5: BranchF loc_66D4EE
  loc_66D3F8: LitI2_Byte 0
  loc_66D3FA: FLdRfVar var_114
  loc_66D3FD: FLdI2 var_8A
  loc_66D400: LitI2_Byte 1
  loc_66D402: SubI2
  loc_66D403: FLdPrThis
  loc_66D404: VCallAd Control_ID_lblTituloVacio
  loc_66D407: FStAdFunc var_A0
  loc_66D40A: FLdPr var_A0
  loc_66D40D: Set from_stack_2 = Me(from_stack_1)
  loc_66D412: FLdPr var_114
  loc_66D415: Me.Visible = from_stack_1b
  loc_66D41A: FFreeAd var_A0 = ""
  loc_66D421: LitI2_Byte &HFF
  loc_66D423: FLdRfVar var_114
  loc_66D426: FLdI2 var_8A
  loc_66D429: LitI2_Byte 1
  loc_66D42B: SubI2
  loc_66D42C: FLdPrThis
  loc_66D42D: VCallAd Control_ID_lblTituloProducto
  loc_66D430: FStAdFunc var_A0
  loc_66D433: FLdPr var_A0
  loc_66D436: Set from_stack_2 = Me(from_stack_1)
  loc_66D43B: FLdPr var_114
  loc_66D43E: Me.Visible = from_stack_1b
  loc_66D443: FFreeAd var_A0 = ""
  loc_66D44A: LitI2_Byte 0
  loc_66D44C: FLdRfVar var_114
  loc_66D44F: FLdI2 var_8A
  loc_66D452: LitI2_Byte 1
  loc_66D454: SubI2
  loc_66D455: FLdPrThis
  loc_66D456: VCallAd Control_ID_lblTituloAgua
  loc_66D459: FStAdFunc var_A0
  loc_66D45C: FLdPr var_A0
  loc_66D45F: Set from_stack_2 = Me(from_stack_1)
  loc_66D464: FLdPr var_114
  loc_66D467: Me.Visible = from_stack_1b
  loc_66D46C: FFreeAd var_A0 = ""
  loc_66D473: LitI2_Byte 0
  loc_66D475: FLdRfVar var_114
  loc_66D478: FLdI2 var_8A
  loc_66D47B: LitI2_Byte 1
  loc_66D47D: SubI2
  loc_66D47E: FLdPrThis
  loc_66D47F: VCallAd Control_ID_Vacio
  loc_66D482: FStAdFunc var_A0
  loc_66D485: FLdPr var_A0
  loc_66D488: Set from_stack_2 = Me(from_stack_1)
  loc_66D48D: FLdPr var_114
  loc_66D490: Me.Visible = from_stack_1b
  loc_66D495: FFreeAd var_A0 = ""
  loc_66D49C: LitI2_Byte &HFF
  loc_66D49E: FLdRfVar var_114
  loc_66D4A1: FLdI2 var_8A
  loc_66D4A4: LitI2_Byte 1
  loc_66D4A6: SubI2
  loc_66D4A7: FLdPrThis
  loc_66D4A8: VCallAd Control_ID_Combustible
  loc_66D4AB: FStAdFunc var_A0
  loc_66D4AE: FLdPr var_A0
  loc_66D4B1: Set from_stack_2 = Me(from_stack_1)
  loc_66D4B6: FLdPr var_114
  loc_66D4B9: Me.Visible = from_stack_1b
  loc_66D4BE: FFreeAd var_A0 = ""
  loc_66D4C5: LitI2_Byte 0
  loc_66D4C7: FLdRfVar var_114
  loc_66D4CA: FLdI2 var_8A
  loc_66D4CD: LitI2_Byte 1
  loc_66D4CF: SubI2
  loc_66D4D0: FLdPrThis
  loc_66D4D1: VCallAd Control_ID_Agua
  loc_66D4D4: FStAdFunc var_A0
  loc_66D4D7: FLdPr var_A0
  loc_66D4DA: Set from_stack_2 = Me(from_stack_1)
  loc_66D4DF: FLdPr var_114
  loc_66D4E2: Me.Visible = from_stack_1b
  loc_66D4E7: FFreeAd var_A0 = ""
  loc_66D4EE: Branch loc_66D156
  loc_66D4F1: ExitProcHresult
End Function
