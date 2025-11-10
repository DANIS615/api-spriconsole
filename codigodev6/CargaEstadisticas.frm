VERSION 5.00
Object = "{B16553C3-06DB-101B-85B20000C009BE81}#1.0#0"; "C:\WINDOWS\SysWow64\SPIN32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form CargaEstadisticas
  Caption = "Consultas Estadísticas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 240
  ClientTop = 495
  ClientWidth = 11535
  ClientHeight = 7965
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 180
    Top = 120
    Width = 11175
    Height = 6675
    TabIndex = 43
    Begin VB.Frame Periodos
      Left = 7440
      Top = 4320
      Width = 3315
      Height = 1995
      TabIndex = 53
      Begin VB.TextBox Periodo
        BackColor = &HFFFFFF&
        Left = 480
        Top = 960
        Width = 495
        Height = 495
        TabIndex = 39
        Locked = -1  'True
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
      Begin Spin.SpinButton SpinButton1
        Left = 1200
        Top = 960
        Width = 375
        Height = 495
        TabIndex = 42
        OleObjectBlob = "CargaEstadisticas.frx":0000
      End
      Begin VB.Label Label1
        Caption = "Horas"
        Index = 3
        Left = 1800
        Top = 1080
        Width = 975
        Height = 375
        TabIndex = 55
        BeginProperty Font
          Name = "Arial"
          Size = 14.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label1
        Caption = "Períodos de"
        Index = 2
        Left = 120
        Top = 240
        Width = 2955
        Height = 495
        TabIndex = 54
        Alignment = 2 'Center
        BeginProperty Font
          Name = "Arial"
          Size = 15.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame Desdehasta
      Left = 420
      Top = 4320
      Width = 6735
      Height = 1995
      TabIndex = 48
      Begin MSMask.MaskEdBox FechaInicial
        Left = 1980
        Top = 480
        Width = 1815
        Height = 495
        TabIndex = 35
        OleObjectBlob = "CargaEstadisticas.frx":0052
      End
      Begin MSMask.MaskEdBox FechaFinal
        Left = 1980
        Top = 1140
        Width = 1815
        Height = 495
        TabIndex = 37
        OleObjectBlob = "CargaEstadisticas.frx":00E6
      End
      Begin MSMask.MaskEdBox HoraInicial
        Left = 4380
        Top = 480
        Width = 1455
        Height = 495
        TabIndex = 36
        OleObjectBlob = "CargaEstadisticas.frx":017A
      End
      Begin MSMask.MaskEdBox HoraFinal
        Left = 4380
        Top = 1140
        Width = 1455
        Height = 495
        TabIndex = 38
        OleObjectBlob = "CargaEstadisticas.frx":021A
      End
      Begin VB.Label Label1
        Caption = "Hasta :"
        Index = 1
        Left = 360
        Top = 1200
        Width = 1215
        Height = 375
        TabIndex = 52
        Alignment = 1 'Right Justify
        BeginProperty Font
          Name = "Arial"
          Size = 15.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label1
        Caption = "Desde :"
        Index = 0
        Left = 420
        Top = 600
        Width = 1215
        Height = 375
        TabIndex = 51
        Alignment = 1 'Right Justify
        BeginProperty Font
          Name = "Arial"
          Size = 15.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label3
        Caption = "Fecha"
        Left = 1980
        Top = 240
        Width = 1815
        Height = 255
        TabIndex = 50
        Alignment = 2 'Center
      End
      Begin VB.Label Label4
        Caption = "Hora"
        Left = 4380
        Top = 240
        Width = 1455
        Height = 255
        TabIndex = 49
        Alignment = 2 'Center
      End
    End
    Begin VB.Frame Frame2
      ForeColor = &HFF00&
      Left = 420
      Top = 1440
      Width = 4935
      Height = 2595
      TabIndex = 46
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.OptionButton TipoEstadistica
        Caption = "Ventas Por Tipo de &Combustible"
        Index = 0
        ForeColor = &H80000008&
        Left = 360
        Top = 1080
        Width = 3375
        Height = 375
        TabIndex = 0
        Value = 255
        BeginProperty Font
          Name = "Arial"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton TipoEstadistica
        Caption = "Ventas Por Franja &Horaria"
        Index = 1
        ForeColor = &H80000008&
        Left = 360
        Top = 1560
        Width = 3435
        Height = 375
        TabIndex = 1
        BeginProperty Font
          Name = "Arial"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton TipoEstadistica
        Caption = "Variacion de &Error en Mediciones"
        Index = 2
        ForeColor = &H80000008&
        Left = 360
        Top = 1980
        Width = 3435
        Height = 375
        Visible = 0   'False
        TabIndex = 2
        BeginProperty Font
          Name = "Arial"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label5
        Caption = "Tipo Estadistica"
        ForeColor = &H80000008&
        Left = 660
        Top = 300
        Width = 3615
        Height = 495
        TabIndex = 47
        Alignment = 2 'Center
        BeginProperty Font
          Name = "Arial"
          Size = 15.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame Surtidores
      Left = 5580
      Top = 1440
      Width = 5175
      Height = 2595
      TabIndex = 44
      Begin VB.OptionButton optGNC
        Caption = "GNC"
        Left = 1560
        Top = 2280
        Width = 1335
        Height = 255
        TabIndex = 58
      End
      Begin VB.OptionButton optFuel
        Caption = "Combustible"
        Left = 240
        Top = 2280
        Width = 1455
        Height = 255
        TabIndex = 57
        Value = 255
      End
      Begin VB.CheckBox Check1
        Caption = "27"
        Index = 27
        Left = 1440
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 29
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "31"
        Index = 31
        Left = 3840
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 33
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "30"
        Index = 30
        Left = 3240
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 32
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "29"
        Index = 29
        Left = 2640
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 31
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "28"
        Index = 28
        Left = 2040
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 30
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "25"
        Index = 25
        Left = 240
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 27
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "32"
        Index = 32
        Left = 4440
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 34
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "26"
        Index = 26
        Left = 840
        Top = 1920
        Width = 555
        Height = 375
        TabIndex = 28
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "19"
        Index = 19
        Left = 1440
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 21
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "23"
        Index = 23
        Left = 3840
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 25
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "22"
        Index = 22
        Left = 3240
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 24
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "21"
        Index = 21
        Left = 2640
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 23
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "20"
        Index = 20
        Left = 2040
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 22
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "17"
        Index = 17
        Left = 240
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 19
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "24"
        Index = 24
        Left = 4440
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 26
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "18"
        Index = 18
        Left = 840
        Top = 1500
        Width = 555
        Height = 375
        TabIndex = 20
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "15"
        Index = 15
        Left = 3840
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 17
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "14"
        Index = 14
        Left = 3240
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 16
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "13"
        Index = 13
        Left = 2640
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 15
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "12"
        Index = 12
        Left = 2040
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 14
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "9"
        Index = 9
        Left = 240
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 11
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "16"
        Index = 16
        Left = 4440
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 18
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "10"
        Index = 10
        Left = 840
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 12
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "11"
        Index = 11
        Left = 1440
        Top = 1080
        Width = 555
        Height = 375
        TabIndex = 13
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "7"
        Index = 7
        Left = 3840
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 9
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "6"
        Index = 6
        Left = 3240
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 8
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "5"
        Index = 5
        Left = 2640
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 7
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "4"
        Index = 4
        Left = 2040
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 6
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "3"
        Index = 3
        Left = 1440
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 5
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "2"
        Index = 2
        Left = 840
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 4
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "8"
        Index = 8
        Left = 4440
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 10
        Value = 1
      End
      Begin VB.CheckBox Check1
        Caption = "1"
        Index = 1
        Left = 240
        Top = 660
        Width = 555
        Height = 375
        TabIndex = 3
        Value = 1
      End
      Begin VB.Label labelsurtidores
        Caption = "Surtidores"
        ForeColor = &H80000008&
        Left = 120
        Top = 180
        Width = 4875
        Height = 375
        TabIndex = 45
        Alignment = 2 'Center
        BeginProperty Font
          Name = "Arial"
          Size = 15.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Label Label2
      Caption = "Estadísticas"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 60
      Top = 600
      Width = 11055
      Height = 495
      TabIndex = 56
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 21.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Timer TestTimer
    Enabled = 0   'False
    Interval = 500
    Left = 960
    Top = 7380
  End
  Begin Threed.SSCommand SSCommand1
    Left = 7020
    Top = 7080
    Width = 2055
    Height = 735
    TabIndex = 40
    OleObjectBlob = "CargaEstadisticas.frx":02BA
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9300
    Top = 7080
    Width = 2055
    Height = 735
    TabIndex = 41
    OleObjectBlob = "CargaEstadisticas.frx":0320
  End
End

Attribute VB_Name = "CargaEstadisticas"

Public strValidTime As String
Public strOtherDate As String
Public strOtherTime As String
Public strValidDate As String
Public strSince As String
Public strUntil As String


Private Sub optGNC_Click() '5CA418
  'Data Table: 446030
  loc_5CA40C: LitI2_Byte &HFF
  loc_5CA40E: PopTmpLdAd2 var_86
  loc_5CA411: from_stack_2v = Proc_54_36_6147A8(from_stack_1v)
  loc_5CA416: ExitProcHresult
End Sub

Private Sub optFuel_Click() '5CA4CC
  'Data Table: 446030
  loc_5CA4C0: LitI2_Byte 0
  loc_5CA4C2: PopTmpLdAd2 var_86
  loc_5CA4C5: from_stack_2v = Proc_54_36_6147A8(from_stack_1v)
  loc_5CA4CA: ExitProcHresult
End Sub

Private Sub FechaFinal_UnknownEvent_0 '5D8DAC
  'Data Table: 446030
  loc_5D8D84: FLdPrThis
  loc_5D8D85: VCallAd Control_ID_FechaFinal
  loc_5D8D88: FStAdFunc var_88
  loc_5D8D8B: FLdPr var_88
  loc_5D8D8E: LateIdLdVar var_98 DispID_22 0
  loc_5D8D95: CStrVarTmp
  loc_5D8D96: FStStrNoPop var_9C
  loc_5D8D99: FLdPr Me
  loc_5D8D9C: MemStStrCopy
  loc_5D8DA0: FFree1Str var_9C
  loc_5D8DA3: FFree1Ad var_88
  loc_5D8DA6: FFree1Var var_98 = ""
  loc_5D8DA9: ExitProcHresult
  loc_5D8DAA: ExitProcR8
End Sub

Private Sub FechaFinal_UnknownEvent_1 '5DDA00
  'Data Table: 446030
  loc_5DD9BC: FLdPrThis
  loc_5DD9BD: VCallAd Control_ID_FechaFinal
  loc_5DD9C0: FStAdFunc var_88
  loc_5DD9C3: FLdPr var_88
  loc_5DD9C6: LateIdLdVar var_98 DispID_22 0
  loc_5DD9CD: PopAd
  loc_5DD9CF: LitI2_Byte &HFF
  loc_5DD9D1: FLdRfVar var_98
  loc_5DD9D4: CStrVarTmp
  loc_5DD9D5: FStStrNoPop var_9C
  loc_5DD9D8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DD9DD: NotI4
  loc_5DD9DE: FFree1Str var_9C
  loc_5DD9E1: FFree1Ad var_88
  loc_5DD9E4: FFree1Var var_98 = ""
  loc_5DD9E7: BranchF loc_5DD9FF
  loc_5DD9EA: FLdPrThis
  loc_5DD9EB: VCallAd Control_ID_FechaFinal
  loc_5DD9EE: FStAdFunc var_88
  loc_5DD9F1: FLdPr var_88
  loc_5DD9F4: LateIdCall
  loc_5DD9FC: FFree1Ad var_88
  loc_5DD9FF: ExitProcHresult
End Sub

Private Sub FechaFinal_KeyDown(KeyCode As Integer, Shift As Integer) '5D5CF4
  'Data Table: 446030
  loc_5D5CCC: ILdI2 KeyCode
  loc_5D5CCF: FStI2 var_86
  loc_5D5CD2: FLdI2 var_86
  loc_5D5CD5: LitI4 &HD
  loc_5D5CDA: CI2I4
  loc_5D5CDB: EqI2
  loc_5D5CDC: BranchF loc_5D5CF1
  loc_5D5CDF: LitI2_Byte 0
  loc_5D5CE1: IStI2 KeyCode
  loc_5D5CE4: LitI2_Byte &HFF
  loc_5D5CE6: PopTmpLdAd2 var_88
  loc_5D5CE9: LitStr "{TAB}"
  loc_5D5CEC: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D5CF1: ExitProcHresult
  loc_5D5CF2: ExitProcCy
End Sub

Private Sub FechaInicial_UnknownEvent_0 '5D8578
  'Data Table: 446030
  loc_5D8550: FLdPrThis
  loc_5D8551: VCallAd Control_ID_FechaInicial
  loc_5D8554: FStAdFunc var_88
  loc_5D8557: FLdPr var_88
  loc_5D855A: LateIdLdVar var_98 DispID_22 0
  loc_5D8561: CStrVarTmp
  loc_5D8562: FStStrNoPop var_9C
  loc_5D8565: FLdPr Me
  loc_5D8568: MemStStrCopy
  loc_5D856C: FFree1Str var_9C
  loc_5D856F: FFree1Ad var_88
  loc_5D8572: FFree1Var var_98 = ""
  loc_5D8575: ExitProcHresult
  loc_5D8576: FFree1Ad var_4800
End Sub

Private Sub FechaInicial_UnknownEvent_1 '5DD880
  'Data Table: 446030
  loc_5DD83C: FLdPrThis
  loc_5DD83D: VCallAd Control_ID_FechaInicial
  loc_5DD840: FStAdFunc var_88
  loc_5DD843: FLdPr var_88
  loc_5DD846: LateIdLdVar var_98 DispID_22 0
  loc_5DD84D: PopAd
  loc_5DD84F: LitI2_Byte &HFF
  loc_5DD851: FLdRfVar var_98
  loc_5DD854: CStrVarTmp
  loc_5DD855: FStStrNoPop var_9C
  loc_5DD858: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DD85D: NotI4
  loc_5DD85E: FFree1Str var_9C
  loc_5DD861: FFree1Ad var_88
  loc_5DD864: FFree1Var var_98 = ""
  loc_5DD867: BranchF loc_5DD87F
  loc_5DD86A: FLdPrThis
  loc_5DD86B: VCallAd Control_ID_FechaInicial
  loc_5DD86E: FStAdFunc var_88
  loc_5DD871: FLdPr var_88
  loc_5DD874: LateIdCall
  loc_5DD87C: FFree1Ad var_88
  loc_5DD87F: ExitProcHresult
End Sub

Private Sub FechaInicial_Change(arg_C) '5CA93C
  'Data Table: 446030
  loc_5CA934: ILdI4 arg_C
  loc_5CA937: FStStrCopy var_88
  loc_5CA93A: ExitProcHresult
End Sub

Private Sub FechaInicial_KeyDown(KeyCode As Integer, Shift As Integer) '5D5A8C
  'Data Table: 446030
  loc_5D5A64: ILdI2 KeyCode
  loc_5D5A67: FStI2 var_86
  loc_5D5A6A: FLdI2 var_86
  loc_5D5A6D: LitI4 &HD
  loc_5D5A72: CI2I4
  loc_5D5A73: EqI2
  loc_5D5A74: BranchF loc_5D5A89
  loc_5D5A77: LitI2_Byte 0
  loc_5D5A79: IStI2 KeyCode
  loc_5D5A7C: LitI2_Byte &HFF
  loc_5D5A7E: PopTmpLdAd2 var_88
  loc_5D5A81: LitStr "{TAB}"
  loc_5D5A84: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D5A89: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '5D268C
  'Data Table: 446030
  loc_5D2674: ILdRf Me
  loc_5D2677: FStAdNoPop
  loc_5D267B: ImpAdLdRf MemVar_7520D4
  loc_5D267E: NewIfNullPr Global
  loc_5D2681: Global.Unload from_stack_1
  loc_5D2686: FFree1Ad var_88
  loc_5D2689: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '6AFDC4
  'Data Table: 446030
  loc_6AF6C0: FLdPrThis
  loc_6AF6C1: VCallAd Control_ID_FechaInicial
  loc_6AF6C4: FStAdFunc var_98
  loc_6AF6C7: FLdPr var_98
  loc_6AF6CA: LateIdLdVar var_A8 DispID_0 0
  loc_6AF6D1: PopAd
  loc_6AF6D3: LitVarI2 var_CC, 2
  loc_6AF6D8: LitI4 1
  loc_6AF6DD: FLdRfVar var_A8
  loc_6AF6E0: CStrVarTmp
  loc_6AF6E1: FStStrNoPop var_AC
  loc_6AF6E4: ImpAdCallI2 Mid$(, , )
  loc_6AF6E9: FStStr var_208
  loc_6AF6EC: FLdPrThis
  loc_6AF6ED: VCallAd Control_ID_FechaInicial
  loc_6AF6F0: FStAdFunc var_20C
  loc_6AF6F3: LitVarI2 var_FC, 2
  loc_6AF6F8: LitI4 4
  loc_6AF6FD: FLdZeroAd var_20C
  loc_6AF700: CVarAd
  loc_6AF704: FLdRfVar var_10C
  loc_6AF707: ImpAdCallFPR4  = Mid(, , )
  loc_6AF70C: FLdPrThis
  loc_6AF70D: VCallAd Control_ID_FechaInicial
  loc_6AF710: FStAdFunc var_110
  loc_6AF713: FLdPr var_110
  loc_6AF716: LateIdLdVar var_120 DispID_0 0
  loc_6AF71D: PopAd
  loc_6AF71F: LitVarI2 var_144, 4
  loc_6AF724: LitI4 7
  loc_6AF729: FLdRfVar var_120
  loc_6AF72C: CStrVarTmp
  loc_6AF72D: FStStrNoPop var_124
  loc_6AF730: ImpAdCallI2 Mid$(, , )
  loc_6AF735: FStStr var_210
  loc_6AF738: FLdPrThis
  loc_6AF739: VCallAd Control_ID_FechaFinal
  loc_6AF73C: FStAdFunc var_148
  loc_6AF73F: FLdPr var_148
  loc_6AF742: LateIdLdVar var_158 DispID_0 0
  loc_6AF749: PopAd
  loc_6AF74B: LitVarI2 var_17C, 2
  loc_6AF750: LitI4 1
  loc_6AF755: FLdRfVar var_158
  loc_6AF758: CStrVarTmp
  loc_6AF759: FStStrNoPop var_15C
  loc_6AF75C: ImpAdCallI2 Mid$(, , )
  loc_6AF761: FStStr var_214
  loc_6AF764: FLdPrThis
  loc_6AF765: VCallAd Control_ID_FechaFinal
  loc_6AF768: FStAdFunc var_180
  loc_6AF76B: FLdPr var_180
  loc_6AF76E: LateIdLdVar var_190 DispID_0 0
  loc_6AF775: PopAd
  loc_6AF777: LitVarI2 var_1B4, 2
  loc_6AF77C: LitI4 4
  loc_6AF781: FLdRfVar var_190
  loc_6AF784: CStrVarTmp
  loc_6AF785: FStStrNoPop var_194
  loc_6AF788: ImpAdCallI2 Mid$(, , )
  loc_6AF78D: FStStr var_218
  loc_6AF790: FLdPrThis
  loc_6AF791: VCallAd Control_ID_FechaFinal
  loc_6AF794: FStAdFunc var_1B8
  loc_6AF797: FLdPr var_1B8
  loc_6AF79A: LateIdLdVar var_1C8 DispID_0 0
  loc_6AF7A1: PopAd
  loc_6AF7A3: LitVarI2 var_1EC, 4
  loc_6AF7A8: LitI4 7
  loc_6AF7AD: FLdRfVar var_1C8
  loc_6AF7B0: CStrVarTmp
  loc_6AF7B1: FStStrNoPop var_1CC
  loc_6AF7B4: ImpAdCallI2 Mid$(, , )
  loc_6AF7B9: FStStrNoPop var_200
  loc_6AF7BC: CI2Str
  loc_6AF7BE: FLdZeroAd var_218
  loc_6AF7C1: FStStrNoPop var_1FC
  loc_6AF7C4: CI2Str
  loc_6AF7C6: FLdZeroAd var_214
  loc_6AF7C9: FStStrNoPop var_1F8
  loc_6AF7CC: CI2Str
  loc_6AF7CE: FLdZeroAd var_210
  loc_6AF7D1: FStStrNoPop var_1F4
  loc_6AF7D4: CI2Str
  loc_6AF7D6: FLdRfVar var_10C
  loc_6AF7D9: CI2Var
  loc_6AF7DA: FLdZeroAd var_208
  loc_6AF7DD: FStStrNoPop var_1F0
  loc_6AF7E0: CI2Str
  loc_6AF7E2: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6AF7E7: FStI2 var_202
  loc_6AF7EA: FFreeStr var_AC = "": var_124 = "": var_15C = "": var_194 = "": var_1CC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_208 = "": var_210 = "": var_214 = ""
  loc_6AF809: FFreeAd var_98 = "": var_110 = "": var_148 = "": var_180 = "": var_1B8 = ""
  loc_6AF818: FFreeVar var_A8 = "": var_CC = "": var_DC = "": var_FC = "": var_120 = "": var_144 = "": var_158 = "": var_17C = "": var_190 = "": var_1B4 = "": var_1C8 = "": var_1EC = ""
  loc_6AF835: FLdI2 var_202
  loc_6AF838: LitI2_Byte 1
  loc_6AF83A: EqI2
  loc_6AF83B: BranchF loc_6AF87E
  loc_6AF83E: LitVar_Missing var_DC
  loc_6AF841: LitVar_Missing var_CC
  loc_6AF844: LitVar_Missing var_A8
  loc_6AF847: LitI4 &H10
  loc_6AF84C: FLdPr Me
  loc_6AF84F: MemLdRfVar from_stack_1.strOtherDate
  loc_6AF852: CVarRef
  loc_6AF857: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF85C: FFreeVar var_A8 = "": var_CC = ""
  loc_6AF865: FLdPrThis
  loc_6AF866: VCallAd Control_ID_FechaFinal
  loc_6AF869: FStAdFunc var_98
  loc_6AF86C: FLdPr var_98
  loc_6AF86F: LateIdCall
  loc_6AF877: FFree1Ad var_98
  loc_6AF87A: ExitProcHresult
  loc_6AF87B: Branch loc_6AF913
  loc_6AF87E: FLdI2 var_202
  loc_6AF881: LitI2_Byte 0
  loc_6AF883: EqI2
  loc_6AF884: BranchF loc_6AF913
  loc_6AF887: FLdPrThis
  loc_6AF888: VCallAd Control_ID_HoraInicial
  loc_6AF88B: FStAdFunc var_98
  loc_6AF88E: FLdPr var_98
  loc_6AF891: LateIdLdVar var_A8 DispID_22 0
  loc_6AF898: PopAd
  loc_6AF89A: FLdPrThis
  loc_6AF89B: VCallAd Control_ID_HoraFinal
  loc_6AF89E: FStAdFunc var_110
  loc_6AF8A1: FLdPr var_110
  loc_6AF8A4: LateIdLdVar var_CC DispID_22 0
  loc_6AF8AB: CStrVarTmp
  loc_6AF8AC: FStStrNoPop var_124
  loc_6AF8AF: FLdRfVar var_A8
  loc_6AF8B2: CStrVarTmp
  loc_6AF8B3: FStStrNoPop var_AC
  loc_6AF8B6: ImpAdCallI2 Proc_65_3_641944(, )
  loc_6AF8BB: LitI2_Byte &HFF
  loc_6AF8BD: GtI2
  loc_6AF8BE: FFreeStr var_AC = ""
  loc_6AF8C5: FFreeAd var_98 = ""
  loc_6AF8CC: FFreeVar var_A8 = ""
  loc_6AF8D3: BranchF loc_6AF913
  loc_6AF8D6: LitVar_Missing var_DC
  loc_6AF8D9: LitVar_Missing var_CC
  loc_6AF8DC: LitVar_Missing var_A8
  loc_6AF8DF: LitI4 &H10
  loc_6AF8E4: FLdPr Me
  loc_6AF8E7: MemLdRfVar from_stack_1.strOtherTime
  loc_6AF8EA: CVarRef
  loc_6AF8EF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF8F4: FFreeVar var_A8 = "": var_CC = ""
  loc_6AF8FD: FLdPrThis
  loc_6AF8FE: VCallAd Control_ID_HoraFinal
  loc_6AF901: FStAdFunc var_98
  loc_6AF904: FLdPr var_98
  loc_6AF907: LateIdCall
  loc_6AF90F: FFree1Ad var_98
  loc_6AF912: ExitProcHresult
  loc_6AF913: FLdPrThis
  loc_6AF914: VCallAd Control_ID_FechaInicial
  loc_6AF917: FStAdFunc var_110
  loc_6AF91A: FLdPrThis
  loc_6AF91B: VCallAd Control_ID_FechaInicial
  loc_6AF91E: FStAdFunc var_148
  loc_6AF921: FLdPrThis
  loc_6AF922: VCallAd Control_ID_FechaInicial
  loc_6AF925: FStAdFunc var_180
  loc_6AF928: FLdPrThis
  loc_6AF929: VCallAd Control_ID_HoraInicial
  loc_6AF92C: FStAdFunc var_98
  loc_6AF92F: FLdPr var_98
  loc_6AF932: LateIdLdVar var_1C8 DispID_22 0
  loc_6AF939: PopAd
  loc_6AF93B: FLdPrThis
  loc_6AF93C: VCallAd Control_ID_HoraInicial
  loc_6AF93F: FStAdFunc var_1B8
  loc_6AF942: FLdPrThis
  loc_6AF943: VCallAd Control_ID_HoraInicial
  loc_6AF946: FStAdFunc var_20C
  loc_6AF949: LitVarI2 var_CC, 4
  loc_6AF94E: LitI4 7
  loc_6AF953: FLdZeroAd var_110
  loc_6AF956: CVarAd
  loc_6AF95A: FLdRfVar var_DC
  loc_6AF95D: ImpAdCallFPR4  = Mid(, , )
  loc_6AF962: FLdRfVar var_DC
  loc_6AF965: LitVarI2 var_10C, 2
  loc_6AF96A: LitI4 4
  loc_6AF96F: FLdZeroAd var_148
  loc_6AF972: CVarAd
  loc_6AF976: FLdRfVar var_120
  loc_6AF979: ImpAdCallFPR4  = Mid(, , )
  loc_6AF97E: FLdRfVar var_120
  loc_6AF981: ConcatVar var_144
  loc_6AF985: LitVarI2 var_17C, 2
  loc_6AF98A: LitI4 1
  loc_6AF98F: FLdZeroAd var_180
  loc_6AF992: CVarAd
  loc_6AF996: FLdRfVar var_190
  loc_6AF999: ImpAdCallFPR4  = Mid(, , )
  loc_6AF99E: FLdRfVar var_190
  loc_6AF9A1: ConcatVar var_1B4
  loc_6AF9A5: LitVarI2 var_228, 2
  loc_6AF9AA: LitI4 1
  loc_6AF9AF: FLdRfVar var_1C8
  loc_6AF9B2: CStrVarTmp
  loc_6AF9B3: CVarStr var_1EC
  loc_6AF9B6: FLdRfVar var_238
  loc_6AF9B9: ImpAdCallFPR4  = Mid(, , )
  loc_6AF9BE: FLdRfVar var_238
  loc_6AF9C1: ConcatVar var_248
  loc_6AF9C5: LitVarI2 var_268, 2
  loc_6AF9CA: LitI4 4
  loc_6AF9CF: FLdZeroAd var_1B8
  loc_6AF9D2: CVarAd
  loc_6AF9D6: FLdRfVar var_278
  loc_6AF9D9: ImpAdCallFPR4  = Mid(, , )
  loc_6AF9DE: FLdRfVar var_278
  loc_6AF9E1: ConcatVar var_288
  loc_6AF9E5: LitVarI2 var_2A8, 2
  loc_6AF9EA: LitI4 7
  loc_6AF9EF: FLdZeroAd var_20C
  loc_6AF9F2: CVarAd
  loc_6AF9F6: FLdRfVar var_2B8
  loc_6AF9F9: ImpAdCallFPR4  = Mid(, , )
  loc_6AF9FE: FLdRfVar var_2B8
  loc_6AFA01: ConcatVar var_2C8
  loc_6AFA05: CStrVarTmp
  loc_6AFA06: FStStr var_88
  loc_6AFA09: FFreeAd var_98 = "": var_110 = "": var_148 = "": var_180 = "": var_1B8 = ""
  loc_6AFA18: FFreeVar var_A8 = "": var_CC = "": var_FC = "": var_10C = "": var_DC = "": var_120 = "": var_158 = "": var_17C = "": var_144 = "": var_190 = "": var_1C8 = "": var_1EC = "": var_228 = "": var_1B4 = "": var_238 = "": var_258 = "": var_268 = "": var_248 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = ""
  loc_6AFA4B: FLdPrThis
  loc_6AFA4C: VCallAd Control_ID_FechaFinal
  loc_6AFA4F: FStAdFunc var_110
  loc_6AFA52: FLdPrThis
  loc_6AFA53: VCallAd Control_ID_FechaFinal
  loc_6AFA56: FStAdFunc var_148
  loc_6AFA59: FLdPrThis
  loc_6AFA5A: VCallAd Control_ID_FechaFinal
  loc_6AFA5D: FStAdFunc var_180
  loc_6AFA60: FLdPrThis
  loc_6AFA61: VCallAd Control_ID_HoraFinal
  loc_6AFA64: FStAdFunc var_98
  loc_6AFA67: FLdPr var_98
  loc_6AFA6A: LateIdLdVar var_1C8 DispID_22 0
  loc_6AFA71: PopAd
  loc_6AFA73: FLdPrThis
  loc_6AFA74: VCallAd Control_ID_HoraFinal
  loc_6AFA77: FStAdFunc var_1B8
  loc_6AFA7A: FLdPrThis
  loc_6AFA7B: VCallAd Control_ID_HoraFinal
  loc_6AFA7E: FStAdFunc var_20C
  loc_6AFA81: LitVarI2 var_CC, 4
  loc_6AFA86: LitI4 7
  loc_6AFA8B: FLdZeroAd var_110
  loc_6AFA8E: CVarAd
  loc_6AFA92: FLdRfVar var_DC
  loc_6AFA95: ImpAdCallFPR4  = Mid(, , )
  loc_6AFA9A: FLdRfVar var_DC
  loc_6AFA9D: LitVarI2 var_10C, 2
  loc_6AFAA2: LitI4 4
  loc_6AFAA7: FLdZeroAd var_148
  loc_6AFAAA: CVarAd
  loc_6AFAAE: FLdRfVar var_120
  loc_6AFAB1: ImpAdCallFPR4  = Mid(, , )
  loc_6AFAB6: FLdRfVar var_120
  loc_6AFAB9: ConcatVar var_144
  loc_6AFABD: LitVarI2 var_17C, 2
  loc_6AFAC2: LitI4 1
  loc_6AFAC7: FLdZeroAd var_180
  loc_6AFACA: CVarAd
  loc_6AFACE: FLdRfVar var_190
  loc_6AFAD1: ImpAdCallFPR4  = Mid(, , )
  loc_6AFAD6: FLdRfVar var_190
  loc_6AFAD9: ConcatVar var_1B4
  loc_6AFADD: LitVarI2 var_228, 2
  loc_6AFAE2: LitI4 1
  loc_6AFAE7: FLdRfVar var_1C8
  loc_6AFAEA: CStrVarTmp
  loc_6AFAEB: CVarStr var_1EC
  loc_6AFAEE: FLdRfVar var_238
  loc_6AFAF1: ImpAdCallFPR4  = Mid(, , )
  loc_6AFAF6: FLdRfVar var_238
  loc_6AFAF9: ConcatVar var_248
  loc_6AFAFD: LitVarI2 var_268, 2
  loc_6AFB02: LitI4 4
  loc_6AFB07: FLdZeroAd var_1B8
  loc_6AFB0A: CVarAd
  loc_6AFB0E: FLdRfVar var_278
  loc_6AFB11: ImpAdCallFPR4  = Mid(, , )
  loc_6AFB16: FLdRfVar var_278
  loc_6AFB19: ConcatVar var_288
  loc_6AFB1D: LitVarI2 var_2A8, 2
  loc_6AFB22: LitI4 7
  loc_6AFB27: FLdZeroAd var_20C
  loc_6AFB2A: CVarAd
  loc_6AFB2E: FLdRfVar var_2B8
  loc_6AFB31: ImpAdCallFPR4  = Mid(, , )
  loc_6AFB36: FLdRfVar var_2B8
  loc_6AFB39: ConcatVar var_2C8
  loc_6AFB3D: CStrVarTmp
  loc_6AFB3E: FStStr var_8C
  loc_6AFB41: FFreeAd var_98 = "": var_110 = "": var_148 = "": var_180 = "": var_1B8 = ""
  loc_6AFB50: FFreeVar var_A8 = "": var_CC = "": var_FC = "": var_10C = "": var_DC = "": var_120 = "": var_158 = "": var_17C = "": var_144 = "": var_190 = "": var_1C8 = "": var_1EC = "": var_228 = "": var_1B4 = "": var_238 = "": var_258 = "": var_268 = "": var_248 = "": var_278 = "": var_298 = "": var_2A8 = "": var_288 = "": var_2B8 = ""
  loc_6AFB83: LitStr vbNullString
  loc_6AFB86: ImpAdLdRf MemVar_74DB2C
  loc_6AFB89: NewIfNullPr Estadisticas
  loc_6AFB8C: Call Estadisticas.bitmapPut(from_stack_1v)
  loc_6AFB91: LitI2_Byte 1
  loc_6AFB93: CUI1I2
  loc_6AFB95: FLdRfVar var_8E
  loc_6AFB98: LitI2_Byte &H20
  loc_6AFB9A: CUI1I2
  loc_6AFB9C: ForUI1 var_2CC
  loc_6AFBA2: FLdRfVar var_2CE
  loc_6AFBA5: FLdRfVar var_110
  loc_6AFBA8: FLdUI1
  loc_6AFBAC: CI2UI1
  loc_6AFBAE: FLdPrThis
  loc_6AFBAF: VCallAd Control_ID_
  loc_6AFBB2: FStAdFunc var_98
  loc_6AFBB5: FLdPr var_98
  loc_6AFBB8: Set from_stack_2 = Estadisticas(from_stack_1)
  loc_6AFBBD: FLdPr var_110
  loc_6AFBC0:  = Me.Value
  loc_6AFBC5: FLdRfVar var_AC
  loc_6AFBC8: ImpAdLdRf MemVar_74DB2C
  loc_6AFBCB: NewIfNullPr Estadisticas
  loc_6AFBCE: from_stack_1v = Estadisticas.bitmapGet()
  loc_6AFBD3: FLdZeroAd var_AC
  loc_6AFBD6: CVarStr var_FC
  loc_6AFBD9: LitVarStr var_134, "0"
  loc_6AFBDE: FStVarCopyObj var_CC
  loc_6AFBE1: FLdRfVar var_CC
  loc_6AFBE4: LitVarStr var_EC, "1"
  loc_6AFBE9: FStVarCopyObj var_A8
  loc_6AFBEC: FLdRfVar var_A8
  loc_6AFBEF: FLdI2 var_2CE
  loc_6AFBF2: LitI2_Byte 1
  loc_6AFBF4: EqI2
  loc_6AFBF5: CVarBoolI2 var_BC
  loc_6AFBF9: FLdRfVar var_DC
  loc_6AFBFC: ImpAdCallFPR4  = IIf(, , )
  loc_6AFC01: FLdRfVar var_DC
  loc_6AFC04: ConcatVar var_10C
  loc_6AFC08: CStrVarVal var_124
  loc_6AFC0C: ImpAdLdRf MemVar_74DB2C
  loc_6AFC0F: NewIfNullPr Estadisticas
  loc_6AFC12: Call Estadisticas.bitmapPut(from_stack_1v)
  loc_6AFC17: FFree1Str var_124
  loc_6AFC1A: FFreeAd var_98 = ""
  loc_6AFC21: FFreeVar var_BC = "": var_A8 = "": var_CC = "": var_FC = "": var_DC = ""
  loc_6AFC30: FLdRfVar var_8E
  loc_6AFC33: NextUI1
  loc_6AFC39: FLdPr Me
  loc_6AFC3C: MemLdStr strSince
  loc_6AFC3F: LitStr " "
  loc_6AFC42: ConcatStr
  loc_6AFC43: FStStrNoPop var_AC
  loc_6AFC46: FLdPrThis
  loc_6AFC47: VCallAd Control_ID_
  loc_6AFC4A: FStAdFunc var_98
  loc_6AFC4D: FLdPr var_98
  loc_6AFC50: LateIdLdVar var_A8 DispID_22 0
  loc_6AFC57: CStrVarTmp
  loc_6AFC58: FStStrNoPop var_124
  loc_6AFC5B: ConcatStr
  loc_6AFC5C: FStStrNoPop var_15C
  loc_6AFC5F: LitStr " "
  loc_6AFC62: ConcatStr
  loc_6AFC63: FStStrNoPop var_194
  loc_6AFC66: FLdPrThis
  loc_6AFC67: VCallAd Control_ID_
  loc_6AFC6A: FStAdFunc var_110
  loc_6AFC6D: FLdPr var_110
  loc_6AFC70: LateIdLdVar var_CC DispID_22 0
  loc_6AFC77: CStrVarTmp
  loc_6AFC78: FStStrNoPop var_1CC
  loc_6AFC7B: ConcatStr
  loc_6AFC7C: FStStr var_94
  loc_6AFC7F: FFreeStr var_AC = "": var_124 = "": var_15C = "": var_194 = ""
  loc_6AFC8C: FFreeAd var_98 = ""
  loc_6AFC93: FFreeVar var_A8 = ""
  loc_6AFC9A: ILdRf var_94
  loc_6AFC9D: LitStr " "
  loc_6AFCA0: ConcatStr
  loc_6AFCA1: FStStrNoPop var_AC
  loc_6AFCA4: FLdPr Me
  loc_6AFCA7: MemLdStr strUntil
  loc_6AFCAA: ConcatStr
  loc_6AFCAB: FStStrNoPop var_124
  loc_6AFCAE: FLdPrThis
  loc_6AFCAF: VCallAd Control_ID_
  loc_6AFCB2: FStAdFunc var_98
  loc_6AFCB5: FLdPr var_98
  loc_6AFCB8: LateIdLdVar var_A8 DispID_22 0
  loc_6AFCBF: CStrVarTmp
  loc_6AFCC0: FStStrNoPop var_15C
  loc_6AFCC3: ConcatStr
  loc_6AFCC4: FStStrNoPop var_194
  loc_6AFCC7: LitStr " "
  loc_6AFCCA: ConcatStr
  loc_6AFCCB: FStStrNoPop var_1CC
  loc_6AFCCE: FLdPrThis
  loc_6AFCCF: VCallAd Control_ID_
  loc_6AFCD2: FStAdFunc var_110
  loc_6AFCD5: FLdPr var_110
  loc_6AFCD8: LateIdLdVar var_CC DispID_22 0
  loc_6AFCDF: CStrVarTmp
  loc_6AFCE0: FStStrNoPop var_1F0
  loc_6AFCE3: ConcatStr
  loc_6AFCE4: FStStr var_94
  loc_6AFCE7: FFreeStr var_AC = "": var_124 = "": var_15C = "": var_194 = "": var_1CC = ""
  loc_6AFCF6: FFreeAd var_98 = ""
  loc_6AFCFD: FFreeVar var_A8 = ""
  loc_6AFD04: ILdRf var_88
  loc_6AFD07: ILdRf var_8C
  loc_6AFD0A: ConcatStr
  loc_6AFD0B: FStStrNoPop var_AC
  loc_6AFD0E: ImpAdLdRf MemVar_74DB2C
  loc_6AFD11: NewIfNullPr Estadisticas
  loc_6AFD14: Call Estadisticas.rangePut(from_stack_1v)
  loc_6AFD19: FFree1Str var_AC
  loc_6AFD1C: FLdRfVar var_AC
  loc_6AFD1F: FLdPrThis
  loc_6AFD20: VCallAd Control_ID_Valores
  loc_6AFD23: FStAdFunc var_98
  loc_6AFD26: FLdPr var_98
  loc_6AFD29:  = Estadisticas.TextBox.Text
  loc_6AFD2E: LitI4 1
  loc_6AFD33: LitI4 1
  loc_6AFD38: LitVarStr var_BC, "00"
  loc_6AFD3D: FStVarCopyObj var_CC
  loc_6AFD40: FLdRfVar var_CC
  loc_6AFD43: FLdZeroAd var_AC
  loc_6AFD46: CVarStr var_A8
  loc_6AFD49: FLdRfVar var_DC
  loc_6AFD4C: ImpAdCallFPR4  = Format(, )
  loc_6AFD51: FLdRfVar var_DC
  loc_6AFD54: CStrVarVal var_124
  loc_6AFD58: ImpAdLdRf MemVar_74DB2C
  loc_6AFD5B: NewIfNullPr Estadisticas
  loc_6AFD5E: Call Estadisticas.hoursPut(from_stack_1v)
  loc_6AFD63: FFree1Str var_124
  loc_6AFD66: FFree1Ad var_98
  loc_6AFD69: FFreeVar var_A8 = "": var_CC = ""
  loc_6AFD72: FLdPr Me
  loc_6AFD75: MemLdUI1 global_101
  loc_6AFD79: ImpAdLdRf MemVar_74DB2C
  loc_6AFD7C: NewIfNullPr Estadisticas
  loc_6AFD7F: Call Estadisticas.TipoGraficoPut(from_stack_1v)
  loc_6AFD84: FLdRfVar var_2CE
  loc_6AFD87: from_stack_1v = Proc_54_39_5E59F0()
  loc_6AFD8C: FLdI2 var_2CE
  loc_6AFD8F: PopTmpLdAd2 var_2D0
  loc_6AFD92: ImpAdLdRf MemVar_74DB2C
  loc_6AFD95: NewIfNullPr Estadisticas
  loc_6AFD98: Estadisticas.StatisticType = from_stack_1v
  loc_6AFD9D: ILdRf var_94
  loc_6AFDA0: ImpAdLdRf MemVar_74DB2C
  loc_6AFDA3: NewIfNullPr Estadisticas
  loc_6AFDA6: Call Estadisticas.RangoTextoPut(from_stack_1v)
  loc_6AFDAB: LitVar_Missing var_EC
  loc_6AFDAE: PopAdLdVar
  loc_6AFDAF: LitVarI2 var_BC, 1
  loc_6AFDB4: PopAdLdVar
  loc_6AFDB5: ImpAdLdRf MemVar_74DB2C
  loc_6AFDB8: NewIfNullPr Estadisticas
  loc_6AFDBB: Estadisticas.Show from_stack_1, from_stack_2
  loc_6AFDC0: ExitProcHresult
End Sub

Private Sub SpinButton1_UnknownEvent_8 '5E07BC
  'Data Table: 446030
  loc_5E0764: FLdPr Me
  loc_5E0767: MemLdUI1 global_100
  loc_5E076B: CI2UI1
  loc_5E076D: LitI2_Byte 1
  loc_5E076F: GtI2
  loc_5E0770: BranchF loc_5E07B5
  loc_5E0773: FLdPr Me
  loc_5E0776: MemLdUI1 global_100
  loc_5E077A: CI2UI1
  loc_5E077C: LitI2_Byte 1
  loc_5E077E: SubI2
  loc_5E077F: CUI1I2
  loc_5E0781: FLdPr Me
  loc_5E0784: MemStUI1
  loc_5E0788: FLdPr Me
  loc_5E078B: MemLdUI1 global_100
  loc_5E078F: CI4UI1
  loc_5E0790: FLdPr Me
  loc_5E0793: MemLdRfVar from_stack_1.global_76
  loc_5E0796: Ary1LdUI1
  loc_5E0798: CStrI2
  loc_5E079A: FStStrNoPop var_88
  loc_5E079D: FLdPrThis
  loc_5E079E: VCallAd Control_ID_Periodo
  loc_5E07A1: FStAdFunc var_8C
  loc_5E07A4: FLdPr var_8C
  loc_5E07A7: Me.Text = from_stack_1
  loc_5E07AC: FFree1Str var_88
  loc_5E07AF: FFree1Ad var_8C
  loc_5E07B2: Branch loc_5E07BA
  loc_5E07B5: ImpAdCallFPR4 Beep()
  loc_5E07BA: ExitProcHresult
End Sub

Private Sub SpinButton1_SpinDown() '5E08DC
  'Data Table: 446030
  loc_5E0884: FLdPr Me
  loc_5E0887: MemLdUI1 global_100
  loc_5E088B: CI2UI1
  loc_5E088D: LitI2_Byte 7
  loc_5E088F: LtI2
  loc_5E0890: BranchF loc_5E08D5
  loc_5E0893: FLdPr Me
  loc_5E0896: MemLdUI1 global_100
  loc_5E089A: CI2UI1
  loc_5E089C: LitI2_Byte 1
  loc_5E089E: AddI2
  loc_5E089F: CUI1I2
  loc_5E08A1: FLdPr Me
  loc_5E08A4: MemStUI1
  loc_5E08A8: FLdPr Me
  loc_5E08AB: MemLdUI1 global_100
  loc_5E08AF: CI4UI1
  loc_5E08B0: FLdPr Me
  loc_5E08B3: MemLdRfVar from_stack_1.global_76
  loc_5E08B6: Ary1LdUI1
  loc_5E08B8: CStrI2
  loc_5E08BA: FStStrNoPop var_88
  loc_5E08BD: FLdPrThis
  loc_5E08BE: VCallAd Control_ID_Periodo
  loc_5E08C1: FStAdFunc var_8C
  loc_5E08C4: FLdPr var_8C
  loc_5E08C7: Me.Text = from_stack_1
  loc_5E08CC: FFree1Str var_88
  loc_5E08CF: FFree1Ad var_8C
  loc_5E08D2: Branch loc_5E08DA
  loc_5E08D5: ImpAdCallFPR4 Beep()
  loc_5E08DA: ExitProcHresult
End Sub

Private Sub TestTimer_Timer() '68743C
  'Data Table: 446030
  loc_686F6C: LitI2_Byte 0
  loc_686F6E: FLdPrThis
  loc_686F6F: VCallAd Control_ID_TestTimer
  loc_686F72: FStAdFunc var_98
  loc_686F75: FLdPr var_98
  loc_686F78: Me.Enabled = from_stack_1b
  loc_686F7D: FFree1Ad var_98
  loc_686F80: FLdPrThis
  loc_686F81: VCallAd Control_ID_FechaInicial
  loc_686F84: FStAdFunc var_27C
  loc_686F87: FLdPrThis
  loc_686F88: VCallAd Control_ID_FechaInicial
  loc_686F8B: FStAdFunc var_280
  loc_686F8E: FLdPrThis
  loc_686F8F: VCallAd Control_ID_FechaInicial
  loc_686F92: FStAdFunc var_284
  loc_686F95: FLdPrThis
  loc_686F96: VCallAd Control_ID_HoraInicial
  loc_686F99: FStAdFunc var_98
  loc_686F9C: FLdPr var_98
  loc_686F9F: LateIdLdVar var_188 DispID_22 0
  loc_686FA6: PopAd
  loc_686FA8: FLdPrThis
  loc_686FA9: VCallAd Control_ID_HoraInicial
  loc_686FAC: FStAdFunc var_288
  loc_686FAF: FLdPrThis
  loc_686FB0: VCallAd Control_ID_HoraInicial
  loc_686FB3: FStAdFunc var_28C
  loc_686FB6: LitVarI2 var_C8, 4
  loc_686FBB: LitI4 7
  loc_686FC0: FLdZeroAd var_27C
  loc_686FC3: CVarAd
  loc_686FC7: FLdRfVar var_D8
  loc_686FCA: ImpAdCallFPR4  = Mid(, , )
  loc_686FCF: FLdRfVar var_D8
  loc_686FD2: LitVarI2 var_108, 2
  loc_686FD7: LitI4 4
  loc_686FDC: FLdZeroAd var_280
  loc_686FDF: CVarAd
  loc_686FE3: FLdRfVar var_118
  loc_686FE6: ImpAdCallFPR4  = Mid(, , )
  loc_686FEB: FLdRfVar var_118
  loc_686FEE: ConcatVar var_128
  loc_686FF2: LitVarI2 var_158, 2
  loc_686FF7: LitI4 1
  loc_686FFC: FLdZeroAd var_284
  loc_686FFF: CVarAd
  loc_687003: FLdRfVar var_168
  loc_687006: ImpAdCallFPR4  = Mid(, , )
  loc_68700B: FLdRfVar var_168
  loc_68700E: ConcatVar var_178
  loc_687012: LitVarI2 var_1B8, 2
  loc_687017: LitI4 1
  loc_68701C: FLdRfVar var_188
  loc_68701F: CStrVarTmp
  loc_687020: CVarStr var_198
  loc_687023: FLdRfVar var_1C8
  loc_687026: ImpAdCallFPR4  = Mid(, , )
  loc_68702B: FLdRfVar var_1C8
  loc_68702E: ConcatVar var_1D8
  loc_687032: LitVarI2 var_208, 2
  loc_687037: LitI4 4
  loc_68703C: FLdZeroAd var_288
  loc_68703F: CVarAd
  loc_687043: FLdRfVar var_218
  loc_687046: ImpAdCallFPR4  = Mid(, , )
  loc_68704B: FLdRfVar var_218
  loc_68704E: ConcatVar var_228
  loc_687052: LitVarI2 var_258, 2
  loc_687057: LitI4 7
  loc_68705C: FLdZeroAd var_28C
  loc_68705F: CVarAd
  loc_687063: FLdRfVar var_268
  loc_687066: ImpAdCallFPR4  = Mid(, , )
  loc_68706B: FLdRfVar var_268
  loc_68706E: ConcatVar var_278
  loc_687072: CStrVarTmp
  loc_687073: FStStr var_88
  loc_687076: FFreeAd var_98 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = ""
  loc_687085: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_D8 = "": var_118 = "": var_138 = "": var_158 = "": var_128 = "": var_168 = "": var_188 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_1D8 = "": var_218 = "": var_238 = "": var_258 = "": var_228 = "": var_268 = ""
  loc_6870B8: FLdPrThis
  loc_6870B9: VCallAd Control_ID_FechaFinal
  loc_6870BC: FStAdFunc var_27C
  loc_6870BF: FLdPrThis
  loc_6870C0: VCallAd Control_ID_FechaFinal
  loc_6870C3: FStAdFunc var_280
  loc_6870C6: FLdPrThis
  loc_6870C7: VCallAd Control_ID_FechaFinal
  loc_6870CA: FStAdFunc var_284
  loc_6870CD: FLdPrThis
  loc_6870CE: VCallAd Control_ID_HoraFinal
  loc_6870D1: FStAdFunc var_98
  loc_6870D4: FLdPr var_98
  loc_6870D7: LateIdLdVar var_188 DispID_22 0
  loc_6870DE: PopAd
  loc_6870E0: FLdPrThis
  loc_6870E1: VCallAd Control_ID_HoraFinal
  loc_6870E4: FStAdFunc var_288
  loc_6870E7: FLdPrThis
  loc_6870E8: VCallAd Control_ID_HoraFinal
  loc_6870EB: FStAdFunc var_28C
  loc_6870EE: LitVarI2 var_C8, 4
  loc_6870F3: LitI4 7
  loc_6870F8: FLdZeroAd var_27C
  loc_6870FB: CVarAd
  loc_6870FF: FLdRfVar var_D8
  loc_687102: ImpAdCallFPR4  = Mid(, , )
  loc_687107: FLdRfVar var_D8
  loc_68710A: LitVarI2 var_108, 2
  loc_68710F: LitI4 4
  loc_687114: FLdZeroAd var_280
  loc_687117: CVarAd
  loc_68711B: FLdRfVar var_118
  loc_68711E: ImpAdCallFPR4  = Mid(, , )
  loc_687123: FLdRfVar var_118
  loc_687126: ConcatVar var_128
  loc_68712A: LitVarI2 var_158, 2
  loc_68712F: LitI4 1
  loc_687134: FLdZeroAd var_284
  loc_687137: CVarAd
  loc_68713B: FLdRfVar var_168
  loc_68713E: ImpAdCallFPR4  = Mid(, , )
  loc_687143: FLdRfVar var_168
  loc_687146: ConcatVar var_178
  loc_68714A: LitVarI2 var_1B8, 2
  loc_68714F: LitI4 1
  loc_687154: FLdRfVar var_188
  loc_687157: CStrVarTmp
  loc_687158: CVarStr var_198
  loc_68715B: FLdRfVar var_1C8
  loc_68715E: ImpAdCallFPR4  = Mid(, , )
  loc_687163: FLdRfVar var_1C8
  loc_687166: ConcatVar var_1D8
  loc_68716A: LitVarI2 var_208, 2
  loc_68716F: LitI4 4
  loc_687174: FLdZeroAd var_288
  loc_687177: CVarAd
  loc_68717B: FLdRfVar var_218
  loc_68717E: ImpAdCallFPR4  = Mid(, , )
  loc_687183: FLdRfVar var_218
  loc_687186: ConcatVar var_228
  loc_68718A: LitVarI2 var_258, 2
  loc_68718F: LitI4 7
  loc_687194: FLdZeroAd var_28C
  loc_687197: CVarAd
  loc_68719B: FLdRfVar var_268
  loc_68719E: ImpAdCallFPR4  = Mid(, , )
  loc_6871A3: FLdRfVar var_268
  loc_6871A6: ConcatVar var_278
  loc_6871AA: CStrVarTmp
  loc_6871AB: FStStr var_8C
  loc_6871AE: FFreeAd var_98 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = ""
  loc_6871BD: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_D8 = "": var_118 = "": var_138 = "": var_158 = "": var_128 = "": var_168 = "": var_188 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_1D8 = "": var_218 = "": var_238 = "": var_258 = "": var_228 = "": var_268 = ""
  loc_6871F0: LitStr vbNullString
  loc_6871F3: ImpAdLdRf MemVar_74DB2C
  loc_6871F6: NewIfNullPr Estadisticas
  loc_6871F9: Call Estadisticas.bitmapPut(from_stack_1v)
  loc_6871FE: LitI2_Byte 1
  loc_687200: CUI1I2
  loc_687202: FLdRfVar var_8E
  loc_687205: LitI2_Byte &H20
  loc_687207: CUI1I2
  loc_687209: ForUI1 var_290
  loc_68720F: FLdRfVar var_296
  loc_687212: FLdRfVar var_27C
  loc_687215: FLdUI1
  loc_687219: CI2UI1
  loc_68721B: FLdPrThis
  loc_68721C: VCallAd Control_ID_
  loc_68721F: FStAdFunc var_98
  loc_687222: FLdPr var_98
  loc_687225: Set from_stack_2 = Estadisticas(from_stack_1)
  loc_68722A: FLdPr var_27C
  loc_68722D:  = Me.Value
  loc_687232: FLdRfVar var_294
  loc_687235: ImpAdLdRf MemVar_74DB2C
  loc_687238: NewIfNullPr Estadisticas
  loc_68723B: from_stack_1v = Estadisticas.bitmapGet()
  loc_687240: FLdZeroAd var_294
  loc_687243: CVarStr var_E8
  loc_687246: LitVarStr var_148, "0"
  loc_68724B: FStVarCopyObj var_C8
  loc_68724E: FLdRfVar var_C8
  loc_687251: LitVarStr var_F8, "1"
  loc_687256: FStVarCopyObj var_A8
  loc_687259: FLdRfVar var_A8
  loc_68725C: FLdI2 var_296
  loc_68725F: LitI2_Byte 1
  loc_687261: EqI2
  loc_687262: CVarBoolI2 var_B8
  loc_687266: FLdRfVar var_D8
  loc_687269: ImpAdCallFPR4  = IIf(, , )
  loc_68726E: FLdRfVar var_D8
  loc_687271: ConcatVar var_108
  loc_687275: CStrVarVal var_29C
  loc_687279: ImpAdLdRf MemVar_74DB2C
  loc_68727C: NewIfNullPr Estadisticas
  loc_68727F: Call Estadisticas.bitmapPut(from_stack_1v)
  loc_687284: FFree1Str var_29C
  loc_687287: FFreeAd var_98 = ""
  loc_68728E: FFreeVar var_B8 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = ""
  loc_68729D: FLdRfVar var_8E
  loc_6872A0: NextUI1
  loc_6872A6: FLdPr Me
  loc_6872A9: MemLdStr strSince
  loc_6872AC: FLdPrThis
  loc_6872AD: VCallAd Control_ID_
  loc_6872B0: FStAdFunc var_98
  loc_6872B3: FLdPr var_98
  loc_6872B6: LateIdLdVar var_A8 DispID_22 0
  loc_6872BD: CStrVarTmp
  loc_6872BE: FStStrNoPop var_294
  loc_6872C1: ConcatStr
  loc_6872C2: FStStrNoPop var_29C
  loc_6872C5: LitStr " "
  loc_6872C8: ConcatStr
  loc_6872C9: FStStrNoPop var_2A0
  loc_6872CC: FLdPrThis
  loc_6872CD: VCallAd Control_ID_
  loc_6872D0: FStAdFunc var_27C
  loc_6872D3: FLdPr var_27C
  loc_6872D6: LateIdLdVar var_C8 DispID_22 0
  loc_6872DD: CStrVarTmp
  loc_6872DE: FStStrNoPop var_2A4
  loc_6872E1: ConcatStr
  loc_6872E2: FStStr var_94
  loc_6872E5: FFreeStr var_294 = "": var_29C = "": var_2A0 = ""
  loc_6872F0: FFreeAd var_98 = ""
  loc_6872F7: FFreeVar var_A8 = ""
  loc_6872FE: ILdRf var_94
  loc_687301: LitStr " "
  loc_687304: ConcatStr
  loc_687305: FStStrNoPop var_294
  loc_687308: FLdPr Me
  loc_68730B: MemLdStr strUntil
  loc_68730E: ConcatStr
  loc_68730F: FStStrNoPop var_29C
  loc_687312: FLdPrThis
  loc_687313: VCallAd Control_ID_
  loc_687316: FStAdFunc var_98
  loc_687319: FLdPr var_98
  loc_68731C: LateIdLdVar var_A8 DispID_22 0
  loc_687323: CStrVarTmp
  loc_687324: FStStrNoPop var_2A0
  loc_687327: ConcatStr
  loc_687328: FStStrNoPop var_2A4
  loc_68732B: LitStr " "
  loc_68732E: ConcatStr
  loc_68732F: FStStrNoPop var_2A8
  loc_687332: FLdPrThis
  loc_687333: VCallAd Control_ID_
  loc_687336: FStAdFunc var_27C
  loc_687339: FLdPr var_27C
  loc_68733C: LateIdLdVar var_C8 DispID_22 0
  loc_687343: CStrVarTmp
  loc_687344: FStStrNoPop var_2AC
  loc_687347: ConcatStr
  loc_687348: FStStr var_94
  loc_68734B: FFreeStr var_294 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = ""
  loc_68735A: FFreeAd var_98 = ""
  loc_687361: FFreeVar var_A8 = ""
  loc_687368: ILdRf var_88
  loc_68736B: ILdRf var_8C
  loc_68736E: ConcatStr
  loc_68736F: FStStrNoPop var_294
  loc_687372: ImpAdLdRf MemVar_74DB2C
  loc_687375: NewIfNullPr Estadisticas
  loc_687378: Call Estadisticas.rangePut(from_stack_1v)
  loc_68737D: FFree1Str var_294
  loc_687380: FLdRfVar var_294
  loc_687383: FLdPrThis
  loc_687384: VCallAd Control_ID_Valores
  loc_687387: FStAdFunc var_98
  loc_68738A: FLdPr var_98
  loc_68738D:  = Estadisticas.TextBox.Text
  loc_687392: LitI4 1
  loc_687397: LitI4 1
  loc_68739C: LitVarStr var_B8, "00"
  loc_6873A1: FStVarCopyObj var_C8
  loc_6873A4: FLdRfVar var_C8
  loc_6873A7: FLdZeroAd var_294
  loc_6873AA: CVarStr var_A8
  loc_6873AD: FLdRfVar var_D8
  loc_6873B0: ImpAdCallFPR4  = Format(, )
  loc_6873B5: FLdRfVar var_D8
  loc_6873B8: CStrVarVal var_29C
  loc_6873BC: ImpAdLdRf MemVar_74DB2C
  loc_6873BF: NewIfNullPr Estadisticas
  loc_6873C2: Call Estadisticas.hoursPut(from_stack_1v)
  loc_6873C7: FFree1Str var_29C
  loc_6873CA: FFree1Ad var_98
  loc_6873CD: FFreeVar var_A8 = "": var_C8 = ""
  loc_6873D6: FLdPr Me
  loc_6873D9: MemLdUI1 global_101
  loc_6873DD: ImpAdLdRf MemVar_74DB2C
  loc_6873E0: NewIfNullPr Estadisticas
  loc_6873E3: Call Estadisticas.TipoGraficoPut(from_stack_1v)
  loc_6873E8: ILdRf var_94
  loc_6873EB: ImpAdLdRf MemVar_74DB2C
  loc_6873EE: NewIfNullPr Estadisticas
  loc_6873F1: Call Estadisticas.RangoTextoPut(from_stack_1v)
  loc_6873F6: LitI2_Byte &HFF
  loc_6873F8: ImpAdLdRf MemVar_74DB2C
  loc_6873FB: NewIfNullPr Estadisticas
  loc_6873FE: VCallAd Control_ID_TestTimer
  loc_687401: FStAdFunc var_98
  loc_687404: FLdPr var_98
  loc_687407: Estadisticas.Timer.Enabled = from_stack_1b
  loc_68740C: FFree1Ad var_98
  loc_68740F: LitVar_Missing var_F8
  loc_687412: PopAdLdVar
  loc_687413: LitVarI2 var_B8, 1
  loc_687418: PopAdLdVar
  loc_687419: ImpAdLdRf MemVar_74DB2C
  loc_68741C: NewIfNullPr Estadisticas
  loc_68741F: Estadisticas.Show from_stack_1, from_stack_2
  loc_687424: ILdRf Me
  loc_687427: FStAdNoPop
  loc_68742B: ImpAdLdRf MemVar_7520D4
  loc_68742E: NewIfNullPr Global
  loc_687431: Global.Unload from_stack_1
  loc_687436: FFree1Ad var_98
  loc_687439: ExitProcHresult
  loc_68743A: CRec2Uni var_47FE
End Sub

Private Sub TipoEstadistica_Click(Index As Integer) '5F51E8
  'Data Table: 446030
  loc_5F512C: ILdI2 Index
  loc_5F512F: LitI2_Byte 1
  loc_5F5131: AddI2
  loc_5F5132: CUI1I2
  loc_5F5134: FLdPr Me
  loc_5F5137: MemStUI1
  loc_5F513B: ILdI2 Index
  loc_5F513E: LitI2_Byte 1
  loc_5F5140: EqI2
  loc_5F5141: BranchF loc_5F5197
  loc_5F5144: LitI2_Byte &HFF
  loc_5F5146: FLdPrThis
  loc_5F5147: VCallAd Control_ID_Surtidores
  loc_5F514A: FStAdFunc var_88
  loc_5F514D: FLdPr var_88
  loc_5F5150: Me.Enabled = from_stack_1b
  loc_5F5155: FFree1Ad var_88
  loc_5F5158: LitI2_Byte &HFF
  loc_5F515A: FLdPrThis
  loc_5F515B: VCallAd Control_ID_Periodos
  loc_5F515E: FStAdFunc var_88
  loc_5F5161: FLdPr var_88
  loc_5F5164: Me.Enabled = from_stack_1b
  loc_5F5169: FFree1Ad var_88
  loc_5F516C: LitI2_Byte &HFF
  loc_5F516E: FLdPrThis
  loc_5F516F: VCallAd Control_ID_Periodo
  loc_5F5172: FStAdFunc var_88
  loc_5F5175: FLdPr var_88
  loc_5F5178: Me.Enabled = from_stack_1b
  loc_5F517D: FFree1Ad var_88
  loc_5F5180: LitI2_Byte &HFF
  loc_5F5182: FLdPrThis
  loc_5F5183: VCallAd Control_ID_Surtidores
  loc_5F5186: FStAdFunc var_88
  loc_5F5189: FLdPr var_88
  loc_5F518C: Me.Visible = from_stack_1b
  loc_5F5191: FFree1Ad var_88
  loc_5F5194: Branch loc_5F51E7
  loc_5F5197: LitI2_Byte 0
  loc_5F5199: FLdPrThis
  loc_5F519A: VCallAd Control_ID_Surtidores
  loc_5F519D: FStAdFunc var_88
  loc_5F51A0: FLdPr var_88
  loc_5F51A3: Me.Enabled = from_stack_1b
  loc_5F51A8: FFree1Ad var_88
  loc_5F51AB: LitI2_Byte 0
  loc_5F51AD: FLdPrThis
  loc_5F51AE: VCallAd Control_ID_Periodos
  loc_5F51B1: FStAdFunc var_88
  loc_5F51B4: FLdPr var_88
  loc_5F51B7: Me.Enabled = from_stack_1b
  loc_5F51BC: FFree1Ad var_88
  loc_5F51BF: LitI2_Byte 0
  loc_5F51C1: FLdPrThis
  loc_5F51C2: VCallAd Control_ID_Periodo
  loc_5F51C5: FStAdFunc var_88
  loc_5F51C8: FLdPr var_88
  loc_5F51CB: Me.Enabled = from_stack_1b
  loc_5F51D0: FFree1Ad var_88
  loc_5F51D3: LitI2_Byte 0
  loc_5F51D5: FLdPrThis
  loc_5F51D6: VCallAd Control_ID_Surtidores
  loc_5F51D9: FStAdFunc var_88
  loc_5F51DC: FLdPr var_88
  loc_5F51DF: Me.Visible = from_stack_1b
  loc_5F51E4: FFree1Ad var_88
  loc_5F51E7: ExitProcHresult
End Sub

Private Sub HoraInicial_UnknownEvent_0 '5D8640
  'Data Table: 446030
  loc_5D8618: FLdPrThis
  loc_5D8619: VCallAd Control_ID_HoraInicial
  loc_5D861C: FStAdFunc var_88
  loc_5D861F: FLdPr var_88
  loc_5D8622: LateIdLdVar var_98 DispID_22 0
  loc_5D8629: CStrVarTmp
  loc_5D862A: FStStrNoPop var_9C
  loc_5D862D: FLdPr Me
  loc_5D8630: MemStStrCopy
  loc_5D8634: FFree1Str var_9C
  loc_5D8637: FFree1Ad var_88
  loc_5D863A: FFree1Var var_98 = ""
  loc_5D863D: ExitProcHresult
End Sub

Private Sub HoraInicial_UnknownEvent_1 '5F9DB4
  'Data Table: 446030
  loc_5F9CFC: FLdPrThis
  loc_5F9CFD: VCallAd Control_ID_HoraInicial
  loc_5F9D00: FStAdFunc var_88
  loc_5F9D03: FLdPr var_88
  loc_5F9D06: LateIdLdVar var_98 DispID_22 0
  loc_5F9D0D: PopAd
  loc_5F9D0F: LitStr "0"
  loc_5F9D12: LitStr "_"
  loc_5F9D15: FLdRfVar var_98
  loc_5F9D18: CStrVarTmp
  loc_5F9D19: FStStrNoPop var_9C
  loc_5F9D1C: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_5F9D21: CVarStr var_AC
  loc_5F9D24: PopAdLdVar
  loc_5F9D25: FLdPrThis
  loc_5F9D26: VCallAd Control_ID_HoraInicial
  loc_5F9D29: FStAdFunc var_B0
  loc_5F9D2C: FLdPr var_B0
  loc_5F9D2F: LateIdSt
  loc_5F9D34: FFree1Str var_9C
  loc_5F9D37: FFreeAd var_88 = ""
  loc_5F9D3E: FFreeVar var_98 = ""
  loc_5F9D45: FLdPrThis
  loc_5F9D46: VCallAd Control_ID_HoraInicial
  loc_5F9D49: CVarAd
  loc_5F9D4D: ImpAdCallI2 Proc_53_13_638184()
  loc_5F9D52: NotI4
  loc_5F9D53: FFree1Var var_98 = ""
  loc_5F9D56: BranchF loc_5F9DB1
  loc_5F9D59: LitVar_Missing var_100
  loc_5F9D5C: LitVar_Missing var_AC
  loc_5F9D5F: LitVar_Missing var_98
  loc_5F9D62: LitI4 &H10
  loc_5F9D67: FLdPr Me
  loc_5F9D6A: MemLdRfVar from_stack_1.strValidTime
  loc_5F9D6D: CVarRef
  loc_5F9D72: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F9D77: FFreeVar var_98 = "": var_AC = ""
  loc_5F9D80: FLdPr Me
  loc_5F9D83: MemLdRfVar from_stack_1.global_112
  loc_5F9D86: CDargRef
  loc_5F9D8A: FLdPrThis
  loc_5F9D8B: VCallAd Control_ID_HoraInicial
  loc_5F9D8E: FStAdFunc var_88
  loc_5F9D91: FLdPr var_88
  loc_5F9D94: LateIdSt
  loc_5F9D99: FFree1Ad var_88
  loc_5F9D9C: FLdPrThis
  loc_5F9D9D: VCallAd Control_ID_HoraInicial
  loc_5F9DA0: FStAdFunc var_88
  loc_5F9DA3: FLdPr var_88
  loc_5F9DA6: LateIdCall
  loc_5F9DAE: FFree1Ad var_88
  loc_5F9DB1: ExitProcHresult
End Sub

Private Sub HoraInicial_Change(arg_C) '5CA5B8
  'Data Table: 446030
  loc_5CA5B0: ILdI4 arg_C
  loc_5CA5B3: FStStrCopy var_88
  loc_5CA5B6: ExitProcHresult
End Sub

Private Sub HoraInicial_KeyDown(KeyCode As Integer, Shift As Integer) '5D5C9C
  'Data Table: 446030
  loc_5D5C74: ILdI2 KeyCode
  loc_5D5C77: FStI2 var_86
  loc_5D5C7A: FLdI2 var_86
  loc_5D5C7D: LitI4 &HD
  loc_5D5C82: CI2I4
  loc_5D5C83: EqI2
  loc_5D5C84: BranchF loc_5D5C99
  loc_5D5C87: LitI2_Byte 0
  loc_5D5C89: IStI2 KeyCode
  loc_5D5C8C: LitI2_Byte &HFF
  loc_5D5C8E: PopTmpLdAd2 var_88
  loc_5D5C91: LitStr "{TAB}"
  loc_5D5C94: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D5C99: ExitProcHresult
End Sub

Private Sub HoraFinal_UnknownEvent_0 '5D7A88
  'Data Table: 446030
  loc_5D7A60: FLdPrThis
  loc_5D7A61: VCallAd Control_ID_HoraFinal
  loc_5D7A64: FStAdFunc var_88
  loc_5D7A67: FLdPr var_88
  loc_5D7A6A: LateIdLdVar var_98 DispID_22 0
  loc_5D7A71: CStrVarTmp
  loc_5D7A72: FStStrNoPop var_9C
  loc_5D7A75: FLdPr Me
  loc_5D7A78: MemStStrCopy
  loc_5D7A7C: FFree1Str var_9C
  loc_5D7A7F: FFree1Ad var_88
  loc_5D7A82: FFree1Var var_98 = ""
  loc_5D7A85: ExitProcHresult
End Sub

Private Sub HoraFinal_UnknownEvent_1 '5F95B4
  'Data Table: 446030
  loc_5F94FC: FLdPrThis
  loc_5F94FD: VCallAd Control_ID_HoraFinal
  loc_5F9500: FStAdFunc var_88
  loc_5F9503: FLdPr var_88
  loc_5F9506: LateIdLdVar var_98 DispID_22 0
  loc_5F950D: PopAd
  loc_5F950F: LitStr "0"
  loc_5F9512: LitStr "_"
  loc_5F9515: FLdRfVar var_98
  loc_5F9518: CStrVarTmp
  loc_5F9519: FStStrNoPop var_9C
  loc_5F951C: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_5F9521: CVarStr var_AC
  loc_5F9524: PopAdLdVar
  loc_5F9525: FLdPrThis
  loc_5F9526: VCallAd Control_ID_HoraFinal
  loc_5F9529: FStAdFunc var_B0
  loc_5F952C: FLdPr var_B0
  loc_5F952F: LateIdSt
  loc_5F9534: FFree1Str var_9C
  loc_5F9537: FFreeAd var_88 = ""
  loc_5F953E: FFreeVar var_98 = ""
  loc_5F9545: FLdPrThis
  loc_5F9546: VCallAd Control_ID_HoraFinal
  loc_5F9549: CVarAd
  loc_5F954D: ImpAdCallI2 Proc_53_13_638184()
  loc_5F9552: NotI4
  loc_5F9553: FFree1Var var_98 = ""
  loc_5F9556: BranchF loc_5F95B1
  loc_5F9559: LitVar_Missing var_100
  loc_5F955C: LitVar_Missing var_AC
  loc_5F955F: LitVar_Missing var_98
  loc_5F9562: LitI4 &H10
  loc_5F9567: FLdPr Me
  loc_5F956A: MemLdRfVar from_stack_1.strValidTime
  loc_5F956D: CVarRef
  loc_5F9572: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F9577: FFreeVar var_98 = "": var_AC = ""
  loc_5F9580: FLdPr Me
  loc_5F9583: MemLdRfVar from_stack_1.global_116
  loc_5F9586: CDargRef
  loc_5F958A: FLdPrThis
  loc_5F958B: VCallAd Control_ID_HoraFinal
  loc_5F958E: FStAdFunc var_88
  loc_5F9591: FLdPr var_88
  loc_5F9594: LateIdSt
  loc_5F9599: FFree1Ad var_88
  loc_5F959C: FLdPrThis
  loc_5F959D: VCallAd Control_ID_HoraFinal
  loc_5F95A0: FStAdFunc var_88
  loc_5F95A3: FLdPr var_88
  loc_5F95A6: LateIdCall
  loc_5F95AE: FFree1Ad var_88
  loc_5F95B1: ExitProcHresult
End Sub

Private Sub HoraFinal_KeyDown(KeyCode As Integer, Shift As Integer) '5D61C4
  'Data Table: 446030
  loc_5D619C: ILdI2 KeyCode
  loc_5D619F: FStI2 var_86
  loc_5D61A2: FLdI2 var_86
  loc_5D61A5: LitI4 &HD
  loc_5D61AA: CI2I4
  loc_5D61AB: EqI2
  loc_5D61AC: BranchF loc_5D61C1
  loc_5D61AF: LitI2_Byte 0
  loc_5D61B1: IStI2 KeyCode
  loc_5D61B4: LitI2_Byte &HFF
  loc_5D61B6: PopTmpLdAd2 var_88
  loc_5D61B9: LitStr "{TAB}"
  loc_5D61BC: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D61C1: ExitProcHresult
End Sub

Private Sub Check1_Click(Index As Integer) '622630
  'Data Table: 446030
  loc_6224D8: ImpAdLdUI1
  loc_6224DC: CI2UI1
  loc_6224DE: LitI2_Byte 4
  loc_6224E0: EqI2
  loc_6224E1: ImpAdLdUI1
  loc_6224E5: CI2UI1
  loc_6224E7: LitI2_Byte 5
  loc_6224E9: EqI2
  loc_6224EA: OrI4
  loc_6224EB: BranchF loc_62262C
  loc_6224EE: FLdRfVar var_8E
  loc_6224F1: FLdRfVar var_8C
  loc_6224F4: ILdI2 Index
  loc_6224F7: FLdPrThis
  loc_6224F8: VCallAd Control_ID_Check1
  loc_6224FB: FStAdFunc var_88
  loc_6224FE: FLdPr var_88
  loc_622501: Set from_stack_2 = Me(from_stack_1)
  loc_622506: FLdPr var_8C
  loc_622509:  = Me.Value
  loc_62250E: FLdI2 var_8E
  loc_622511: ILdI2 Index
  loc_622514: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_622519: NotI4
  loc_62251A: AndI4
  loc_62251B: FLdRfVar var_96
  loc_62251E: FLdPrThis
  loc_62251F: VCallAd Control_ID_optGNC
  loc_622522: FStAdFunc var_94
  loc_622525: FLdPr var_94
  loc_622528:  = Me.Value
  loc_62252D: FLdI2 var_96
  loc_622530: AndI4
  loc_622531: FFreeAd var_88 = "": var_8C = ""
  loc_62253A: BranchF loc_62258F
  loc_62253D: LitVar_Missing var_118
  loc_622540: LitVar_Missing var_F8
  loc_622543: LitVar_Missing var_D8
  loc_622546: LitI4 &H40
  loc_62254B: LitVarStr var_A8, "El surtidor no es GNC"
  loc_622550: FStVarCopyObj var_B8
  loc_622553: FLdRfVar var_B8
  loc_622556: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62255B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_622566: LitI2_Byte 0
  loc_622568: FLdRfVar var_8C
  loc_62256B: ILdI2 Index
  loc_62256E: FLdPrThis
  loc_62256F: VCallAd Control_ID_Check1
  loc_622572: FStAdFunc var_88
  loc_622575: FLdPr var_88
  loc_622578: Set from_stack_2 = Me(from_stack_1)
  loc_62257D: FLdPr var_8C
  loc_622580: Me.Value = from_stack_1
  loc_622585: FFreeAd var_88 = ""
  loc_62258C: Branch loc_62262C
  loc_62258F: FLdRfVar var_8E
  loc_622592: FLdRfVar var_8C
  loc_622595: ILdI2 Index
  loc_622598: FLdPrThis
  loc_622599: VCallAd Control_ID_Check1
  loc_62259C: FStAdFunc var_88
  loc_62259F: FLdPr var_88
  loc_6225A2: Set from_stack_2 = Me(from_stack_1)
  loc_6225A7: FLdPr var_8C
  loc_6225AA:  = Me.Value
  loc_6225AF: FLdI2 var_8E
  loc_6225B2: ILdI2 Index
  loc_6225B5: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6225BA: AndI4
  loc_6225BB: FLdRfVar var_96
  loc_6225BE: FLdPrThis
  loc_6225BF: VCallAd Control_ID_optFuel
  loc_6225C2: FStAdFunc var_94
  loc_6225C5: FLdPr var_94
  loc_6225C8:  = Me.Value
  loc_6225CD: FLdI2 var_96
  loc_6225D0: AndI4
  loc_6225D1: FFreeAd var_88 = "": var_8C = ""
  loc_6225DA: BranchF loc_62262C
  loc_6225DD: LitVar_Missing var_118
  loc_6225E0: LitVar_Missing var_F8
  loc_6225E3: LitVar_Missing var_D8
  loc_6225E6: LitI4 &H40
  loc_6225EB: LitVarStr var_A8, "El surtidor no es Combustibles"
  loc_6225F0: FStVarCopyObj var_B8
  loc_6225F3: FLdRfVar var_B8
  loc_6225F6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6225FB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_622606: LitI2_Byte 0
  loc_622608: FLdRfVar var_8C
  loc_62260B: ILdI2 Index
  loc_62260E: FLdPrThis
  loc_62260F: VCallAd Control_ID_Check1
  loc_622612: FStAdFunc var_88
  loc_622615: FLdPr var_88
  loc_622618: Set from_stack_2 = Me(from_stack_1)
  loc_62261D: FLdPr var_8C
  loc_622620: Me.Value = from_stack_1
  loc_622625: FFreeAd var_88 = ""
  loc_62262C: ExitProcHresult
End Sub

Private Sub Form_Load() '6EE61C
  'Data Table: 446030
  loc_6ED850: FLdRfVar var_1D4
  loc_6ED853: LitVar_Missing var_1D0
  loc_6ED856: LitVar_Missing var_1B0
  loc_6ED859: LitVar_Missing var_190
  loc_6ED85C: LitVar_Missing var_170
  loc_6ED85F: LitVar_Missing var_150
  loc_6ED862: LitVar_Missing var_130
  loc_6ED865: LitVar_Missing var_110
  loc_6ED868: LitVar_Missing var_F0
  loc_6ED86B: LitVar_Missing var_D0
  loc_6ED86E: LitVar_Missing var_B0
  loc_6ED871: LitStr "Estadísticas"
  loc_6ED874: FStStrCopy var_90
  loc_6ED877: FLdRfVar var_90
  loc_6ED87A: LitI4 1
  loc_6ED87F: PopTmpLdAdStr var_8C
  loc_6ED882: LitI2_Byte &HD
  loc_6ED884: PopTmpLdAd2 var_88
  loc_6ED887: ImpAdLdRf MemVar_74C7D0
  loc_6ED88A: NewIfNullPr clsMsg
  loc_6ED88D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6ED892: ILdRf var_1D4
  loc_6ED895: FLdPrThis
  loc_6ED896: VCallAd Control_ID_Label2
  loc_6ED899: FStAdFunc var_1D8
  loc_6ED89C: FLdPr var_1D8
  loc_6ED89F: Me.Caption = from_stack_1
  loc_6ED8A4: FFreeStr var_90 = ""
  loc_6ED8AB: FFree1Ad var_1D8
  loc_6ED8AE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6ED8C5: FLdRfVar var_1D4
  loc_6ED8C8: LitVar_Missing var_1D0
  loc_6ED8CB: LitVar_Missing var_1B0
  loc_6ED8CE: LitVar_Missing var_190
  loc_6ED8D1: LitVar_Missing var_170
  loc_6ED8D4: LitVar_Missing var_150
  loc_6ED8D7: LitVar_Missing var_130
  loc_6ED8DA: LitVar_Missing var_110
  loc_6ED8DD: LitVar_Missing var_F0
  loc_6ED8E0: LitVar_Missing var_D0
  loc_6ED8E3: LitVar_Missing var_B0
  loc_6ED8E6: LitStr "Tipo Estadística"
  loc_6ED8E9: FStStrCopy var_90
  loc_6ED8EC: FLdRfVar var_90
  loc_6ED8EF: LitI4 2
  loc_6ED8F4: PopTmpLdAdStr var_8C
  loc_6ED8F7: LitI2_Byte &HD
  loc_6ED8F9: PopTmpLdAd2 var_88
  loc_6ED8FC: ImpAdLdRf MemVar_74C7D0
  loc_6ED8FF: NewIfNullPr clsMsg
  loc_6ED902: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6ED907: ILdRf var_1D4
  loc_6ED90A: FLdPrThis
  loc_6ED90B: VCallAd Control_ID_Label5
  loc_6ED90E: FStAdFunc var_1D8
  loc_6ED911: FLdPr var_1D8
  loc_6ED914: Me.Caption = from_stack_1
  loc_6ED919: FFreeStr var_90 = ""
  loc_6ED920: FFree1Ad var_1D8
  loc_6ED923: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6ED93A: FLdRfVar var_1D4
  loc_6ED93D: LitVar_Missing var_1D0
  loc_6ED940: LitVar_Missing var_1B0
  loc_6ED943: LitVar_Missing var_190
  loc_6ED946: LitVar_Missing var_170
  loc_6ED949: LitVar_Missing var_150
  loc_6ED94C: LitVar_Missing var_130
  loc_6ED94F: LitVar_Missing var_110
  loc_6ED952: LitVar_Missing var_F0
  loc_6ED955: LitVar_Missing var_D0
  loc_6ED958: LitVar_Missing var_B0
  loc_6ED95B: LitStr "Ventas por Tipo de &Combustible"
  loc_6ED95E: FStStrCopy var_90
  loc_6ED961: FLdRfVar var_90
  loc_6ED964: LitI4 3
  loc_6ED969: PopTmpLdAdStr var_8C
  loc_6ED96C: LitI2_Byte &HD
  loc_6ED96E: PopTmpLdAd2 var_88
  loc_6ED971: ImpAdLdRf MemVar_74C7D0
  loc_6ED974: NewIfNullPr clsMsg
  loc_6ED977: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6ED97C: ILdRf var_1D4
  loc_6ED97F: FLdRfVar var_1DC
  loc_6ED982: LitI2_Byte 0
  loc_6ED984: FLdPrThis
  loc_6ED985: VCallAd Control_ID_TipoEstadistica
  loc_6ED988: FStAdFunc var_1D8
  loc_6ED98B: FLdPr var_1D8
  loc_6ED98E: Set from_stack_2 = Me(from_stack_1)
  loc_6ED993: FLdPr var_1DC
  loc_6ED996: Me.Caption = from_stack_1
  loc_6ED99B: FFreeStr var_90 = ""
  loc_6ED9A2: FFreeAd var_1D8 = ""
  loc_6ED9A9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6ED9C0: FLdRfVar var_1D4
  loc_6ED9C3: LitVar_Missing var_1D0
  loc_6ED9C6: LitVar_Missing var_1B0
  loc_6ED9C9: LitVar_Missing var_190
  loc_6ED9CC: LitVar_Missing var_170
  loc_6ED9CF: LitVar_Missing var_150
  loc_6ED9D2: LitVar_Missing var_130
  loc_6ED9D5: LitVar_Missing var_110
  loc_6ED9D8: LitVar_Missing var_F0
  loc_6ED9DB: LitVar_Missing var_D0
  loc_6ED9DE: LitVar_Missing var_B0
  loc_6ED9E1: LitStr "Ventas por Franja &Horaria"
  loc_6ED9E4: FStStrCopy var_90
  loc_6ED9E7: FLdRfVar var_90
  loc_6ED9EA: LitI4 4
  loc_6ED9EF: PopTmpLdAdStr var_8C
  loc_6ED9F2: LitI2_Byte &HD
  loc_6ED9F4: PopTmpLdAd2 var_88
  loc_6ED9F7: ImpAdLdRf MemVar_74C7D0
  loc_6ED9FA: NewIfNullPr clsMsg
  loc_6ED9FD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDA02: ILdRf var_1D4
  loc_6EDA05: FLdRfVar var_1DC
  loc_6EDA08: LitI2_Byte 1
  loc_6EDA0A: FLdPrThis
  loc_6EDA0B: VCallAd Control_ID_TipoEstadistica
  loc_6EDA0E: FStAdFunc var_1D8
  loc_6EDA11: FLdPr var_1D8
  loc_6EDA14: Set from_stack_2 = Me(from_stack_1)
  loc_6EDA19: FLdPr var_1DC
  loc_6EDA1C: Me.Caption = from_stack_1
  loc_6EDA21: FFreeStr var_90 = ""
  loc_6EDA28: FFreeAd var_1D8 = ""
  loc_6EDA2F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDA46: FLdRfVar var_1D4
  loc_6EDA49: LitVar_Missing var_1D0
  loc_6EDA4C: LitVar_Missing var_1B0
  loc_6EDA4F: LitVar_Missing var_190
  loc_6EDA52: LitVar_Missing var_170
  loc_6EDA55: LitVar_Missing var_150
  loc_6EDA58: LitVar_Missing var_130
  loc_6EDA5B: LitVar_Missing var_110
  loc_6EDA5E: LitVar_Missing var_F0
  loc_6EDA61: LitVar_Missing var_D0
  loc_6EDA64: LitVar_Missing var_B0
  loc_6EDA67: LitStr "Variación de &Error en Mediciones"
  loc_6EDA6A: FStStrCopy var_90
  loc_6EDA6D: FLdRfVar var_90
  loc_6EDA70: LitI4 5
  loc_6EDA75: PopTmpLdAdStr var_8C
  loc_6EDA78: LitI2_Byte &HD
  loc_6EDA7A: PopTmpLdAd2 var_88
  loc_6EDA7D: ImpAdLdRf MemVar_74C7D0
  loc_6EDA80: NewIfNullPr clsMsg
  loc_6EDA83: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDA88: ILdRf var_1D4
  loc_6EDA8B: FLdRfVar var_1DC
  loc_6EDA8E: LitI2_Byte 2
  loc_6EDA90: FLdPrThis
  loc_6EDA91: VCallAd Control_ID_TipoEstadistica
  loc_6EDA94: FStAdFunc var_1D8
  loc_6EDA97: FLdPr var_1D8
  loc_6EDA9A: Set from_stack_2 = Me(from_stack_1)
  loc_6EDA9F: FLdPr var_1DC
  loc_6EDAA2: Me.Caption = from_stack_1
  loc_6EDAA7: FFreeStr var_90 = ""
  loc_6EDAAE: FFreeAd var_1D8 = ""
  loc_6EDAB5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDACC: FLdRfVar var_1D4
  loc_6EDACF: LitVar_Missing var_1D0
  loc_6EDAD2: LitVar_Missing var_1B0
  loc_6EDAD5: LitVar_Missing var_190
  loc_6EDAD8: LitVar_Missing var_170
  loc_6EDADB: LitVar_Missing var_150
  loc_6EDADE: LitVar_Missing var_130
  loc_6EDAE1: LitVar_Missing var_110
  loc_6EDAE4: LitVar_Missing var_F0
  loc_6EDAE7: LitVar_Missing var_D0
  loc_6EDAEA: LitVar_Missing var_B0
  loc_6EDAED: LitStr "Surtidores"
  loc_6EDAF0: FStStrCopy var_90
  loc_6EDAF3: FLdRfVar var_90
  loc_6EDAF6: LitI4 6
  loc_6EDAFB: PopTmpLdAdStr var_8C
  loc_6EDAFE: LitI2_Byte &HD
  loc_6EDB00: PopTmpLdAd2 var_88
  loc_6EDB03: ImpAdLdRf MemVar_74C7D0
  loc_6EDB06: NewIfNullPr clsMsg
  loc_6EDB09: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDB0E: ILdRf var_1D4
  loc_6EDB11: FLdPrThis
  loc_6EDB12: VCallAd Control_ID_labelsurtidores
  loc_6EDB15: FStAdFunc var_1D8
  loc_6EDB18: FLdPr var_1D8
  loc_6EDB1B: Me.Caption = from_stack_1
  loc_6EDB20: FFreeStr var_90 = ""
  loc_6EDB27: FFree1Ad var_1D8
  loc_6EDB2A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDB41: FLdRfVar var_1D4
  loc_6EDB44: LitVar_Missing var_1D0
  loc_6EDB47: LitVar_Missing var_1B0
  loc_6EDB4A: LitVar_Missing var_190
  loc_6EDB4D: LitVar_Missing var_170
  loc_6EDB50: LitVar_Missing var_150
  loc_6EDB53: LitVar_Missing var_130
  loc_6EDB56: LitVar_Missing var_110
  loc_6EDB59: LitVar_Missing var_F0
  loc_6EDB5C: LitVar_Missing var_D0
  loc_6EDB5F: LitVar_Missing var_B0
  loc_6EDB62: LitStr "Desde:"
  loc_6EDB65: FStStrCopy var_90
  loc_6EDB68: FLdRfVar var_90
  loc_6EDB6B: LitI4 7
  loc_6EDB70: PopTmpLdAdStr var_8C
  loc_6EDB73: LitI2_Byte &HD
  loc_6EDB75: PopTmpLdAd2 var_88
  loc_6EDB78: ImpAdLdRf MemVar_74C7D0
  loc_6EDB7B: NewIfNullPr clsMsg
  loc_6EDB7E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDB83: ILdRf var_1D4
  loc_6EDB86: FLdPr Me
  loc_6EDB89: MemStStrCopy
  loc_6EDB8D: FFreeStr var_90 = ""
  loc_6EDB94: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDBAB: FLdRfVar var_1D4
  loc_6EDBAE: LitVar_Missing var_1D0
  loc_6EDBB1: LitVar_Missing var_1B0
  loc_6EDBB4: LitVar_Missing var_190
  loc_6EDBB7: LitVar_Missing var_170
  loc_6EDBBA: LitVar_Missing var_150
  loc_6EDBBD: LitVar_Missing var_130
  loc_6EDBC0: LitVar_Missing var_110
  loc_6EDBC3: LitVar_Missing var_F0
  loc_6EDBC6: LitVar_Missing var_D0
  loc_6EDBC9: LitVar_Missing var_B0
  loc_6EDBCC: LitStr "Hasta:"
  loc_6EDBCF: FStStrCopy var_90
  loc_6EDBD2: FLdRfVar var_90
  loc_6EDBD5: LitI4 8
  loc_6EDBDA: PopTmpLdAdStr var_8C
  loc_6EDBDD: LitI2_Byte &HD
  loc_6EDBDF: PopTmpLdAd2 var_88
  loc_6EDBE2: ImpAdLdRf MemVar_74C7D0
  loc_6EDBE5: NewIfNullPr clsMsg
  loc_6EDBE8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDBED: ILdRf var_1D4
  loc_6EDBF0: FLdPr Me
  loc_6EDBF3: MemStStrCopy
  loc_6EDBF7: FFreeStr var_90 = ""
  loc_6EDBFE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDC15: FLdPr Me
  loc_6EDC18: MemLdStr strSince
  loc_6EDC1B: FLdRfVar var_1DC
  loc_6EDC1E: LitI2_Byte 0
  loc_6EDC20: FLdPrThis
  loc_6EDC21: VCallAd Control_ID_Label1
  loc_6EDC24: FStAdFunc var_1D8
  loc_6EDC27: FLdPr var_1D8
  loc_6EDC2A: Set from_stack_2 = Me(from_stack_1)
  loc_6EDC2F: FLdPr var_1DC
  loc_6EDC32: Me.Caption = from_stack_1
  loc_6EDC37: FFreeAd var_1D8 = ""
  loc_6EDC3E: FLdPr Me
  loc_6EDC41: MemLdStr strUntil
  loc_6EDC44: FLdRfVar var_1DC
  loc_6EDC47: LitI2_Byte 1
  loc_6EDC49: FLdPrThis
  loc_6EDC4A: VCallAd Control_ID_Label1
  loc_6EDC4D: FStAdFunc var_1D8
  loc_6EDC50: FLdPr var_1D8
  loc_6EDC53: Set from_stack_2 = Me(from_stack_1)
  loc_6EDC58: FLdPr var_1DC
  loc_6EDC5B: Me.Caption = from_stack_1
  loc_6EDC60: FFreeAd var_1D8 = ""
  loc_6EDC67: FLdRfVar var_1D4
  loc_6EDC6A: LitVar_Missing var_1D0
  loc_6EDC6D: LitVar_Missing var_1B0
  loc_6EDC70: LitVar_Missing var_190
  loc_6EDC73: LitVar_Missing var_170
  loc_6EDC76: LitVar_Missing var_150
  loc_6EDC79: LitVar_Missing var_130
  loc_6EDC7C: LitVar_Missing var_110
  loc_6EDC7F: LitVar_Missing var_F0
  loc_6EDC82: LitVar_Missing var_D0
  loc_6EDC85: LitVar_Missing var_B0
  loc_6EDC88: LitStr "Fecha"
  loc_6EDC8B: FStStrCopy var_90
  loc_6EDC8E: FLdRfVar var_90
  loc_6EDC91: LitI4 9
  loc_6EDC96: PopTmpLdAdStr var_8C
  loc_6EDC99: LitI2_Byte &HD
  loc_6EDC9B: PopTmpLdAd2 var_88
  loc_6EDC9E: ImpAdLdRf MemVar_74C7D0
  loc_6EDCA1: NewIfNullPr clsMsg
  loc_6EDCA4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDCA9: ILdRf var_1D4
  loc_6EDCAC: FLdPrThis
  loc_6EDCAD: VCallAd Control_ID_Label3
  loc_6EDCB0: FStAdFunc var_1D8
  loc_6EDCB3: FLdPr var_1D8
  loc_6EDCB6: Me.Caption = from_stack_1
  loc_6EDCBB: FFreeStr var_90 = ""
  loc_6EDCC2: FFree1Ad var_1D8
  loc_6EDCC5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDCDC: FLdRfVar var_1D4
  loc_6EDCDF: LitVar_Missing var_1D0
  loc_6EDCE2: LitVar_Missing var_1B0
  loc_6EDCE5: LitVar_Missing var_190
  loc_6EDCE8: LitVar_Missing var_170
  loc_6EDCEB: LitVar_Missing var_150
  loc_6EDCEE: LitVar_Missing var_130
  loc_6EDCF1: LitVar_Missing var_110
  loc_6EDCF4: LitVar_Missing var_F0
  loc_6EDCF7: LitVar_Missing var_D0
  loc_6EDCFA: LitVar_Missing var_B0
  loc_6EDCFD: LitStr "Hora"
  loc_6EDD00: FStStrCopy var_90
  loc_6EDD03: FLdRfVar var_90
  loc_6EDD06: LitI4 &HA
  loc_6EDD0B: PopTmpLdAdStr var_8C
  loc_6EDD0E: LitI2_Byte &HD
  loc_6EDD10: PopTmpLdAd2 var_88
  loc_6EDD13: ImpAdLdRf MemVar_74C7D0
  loc_6EDD16: NewIfNullPr clsMsg
  loc_6EDD19: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDD1E: ILdRf var_1D4
  loc_6EDD21: FLdPrThis
  loc_6EDD22: VCallAd Control_ID_Label4
  loc_6EDD25: FStAdFunc var_1D8
  loc_6EDD28: FLdPr var_1D8
  loc_6EDD2B: Me.Caption = from_stack_1
  loc_6EDD30: FFreeStr var_90 = ""
  loc_6EDD37: FFree1Ad var_1D8
  loc_6EDD3A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDD51: FLdRfVar var_1D4
  loc_6EDD54: LitVar_Missing var_1D0
  loc_6EDD57: LitVar_Missing var_1B0
  loc_6EDD5A: LitVar_Missing var_190
  loc_6EDD5D: LitVar_Missing var_170
  loc_6EDD60: LitVar_Missing var_150
  loc_6EDD63: LitVar_Missing var_130
  loc_6EDD66: LitVar_Missing var_110
  loc_6EDD69: LitVar_Missing var_F0
  loc_6EDD6C: LitVar_Missing var_D0
  loc_6EDD6F: LitVar_Missing var_B0
  loc_6EDD72: LitStr "&Consultar"
  loc_6EDD75: FStStrCopy var_90
  loc_6EDD78: FLdRfVar var_90
  loc_6EDD7B: LitI4 &HB
  loc_6EDD80: PopTmpLdAdStr var_8C
  loc_6EDD83: LitI2_Byte &HD
  loc_6EDD85: PopTmpLdAd2 var_88
  loc_6EDD88: ImpAdLdRf MemVar_74C7D0
  loc_6EDD8B: NewIfNullPr clsMsg
  loc_6EDD8E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDD93: FLdZeroAd var_1D4
  loc_6EDD96: CVarStr var_1EC
  loc_6EDD99: PopAdLdVar
  loc_6EDD9A: FLdPrThis
  loc_6EDD9B: VCallAd Control_ID_SSCommand1
  loc_6EDD9E: FStAdFunc var_1D8
  loc_6EDDA1: FLdPr var_1D8
  loc_6EDDA4: LateIdSt
  loc_6EDDA9: FFree1Str var_90
  loc_6EDDAC: FFree1Ad var_1D8
  loc_6EDDAF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6EDDC8: FLdRfVar var_1D4
  loc_6EDDCB: LitVar_Missing var_1D0
  loc_6EDDCE: LitVar_Missing var_1B0
  loc_6EDDD1: LitVar_Missing var_190
  loc_6EDDD4: LitVar_Missing var_170
  loc_6EDDD7: LitVar_Missing var_150
  loc_6EDDDA: LitVar_Missing var_130
  loc_6EDDDD: LitVar_Missing var_110
  loc_6EDDE0: LitVar_Missing var_F0
  loc_6EDDE3: LitVar_Missing var_D0
  loc_6EDDE6: LitVar_Missing var_B0
  loc_6EDDE9: LitStr "&Aceptar"
  loc_6EDDEC: FStStrCopy var_90
  loc_6EDDEF: FLdRfVar var_90
  loc_6EDDF2: LitI4 &HC
  loc_6EDDF7: PopTmpLdAdStr var_8C
  loc_6EDDFA: LitI2_Byte &HD
  loc_6EDDFC: PopTmpLdAd2 var_88
  loc_6EDDFF: ImpAdLdRf MemVar_74C7D0
  loc_6EDE02: NewIfNullPr clsMsg
  loc_6EDE05: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDE0A: FLdZeroAd var_1D4
  loc_6EDE0D: CVarStr var_1EC
  loc_6EDE10: PopAdLdVar
  loc_6EDE11: FLdPrThis
  loc_6EDE12: VCallAd Control_ID_SSCommand2
  loc_6EDE15: FStAdFunc var_1D8
  loc_6EDE18: FLdPr var_1D8
  loc_6EDE1B: LateIdSt
  loc_6EDE20: FFree1Str var_90
  loc_6EDE23: FFree1Ad var_1D8
  loc_6EDE26: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = ""
  loc_6EDE3F: FLdRfVar var_1D4
  loc_6EDE42: LitVar_Missing var_1D0
  loc_6EDE45: LitVar_Missing var_1B0
  loc_6EDE48: LitVar_Missing var_190
  loc_6EDE4B: LitVar_Missing var_170
  loc_6EDE4E: LitVar_Missing var_150
  loc_6EDE51: LitVar_Missing var_130
  loc_6EDE54: LitVar_Missing var_110
  loc_6EDE57: LitVar_Missing var_F0
  loc_6EDE5A: LitVar_Missing var_D0
  loc_6EDE5D: LitVar_Missing var_B0
  loc_6EDE60: LitStr "Períodos de"
  loc_6EDE63: FStStrCopy var_90
  loc_6EDE66: FLdRfVar var_90
  loc_6EDE69: LitI4 &HD
  loc_6EDE6E: PopTmpLdAdStr var_8C
  loc_6EDE71: LitI2_Byte &HD
  loc_6EDE73: PopTmpLdAd2 var_88
  loc_6EDE76: ImpAdLdRf MemVar_74C7D0
  loc_6EDE79: NewIfNullPr clsMsg
  loc_6EDE7C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDE81: ILdRf var_1D4
  loc_6EDE84: FLdRfVar var_1DC
  loc_6EDE87: LitI2_Byte 2
  loc_6EDE89: FLdPrThis
  loc_6EDE8A: VCallAd Control_ID_Label1
  loc_6EDE8D: FStAdFunc var_1D8
  loc_6EDE90: FLdPr var_1D8
  loc_6EDE93: Set from_stack_2 = Me(from_stack_1)
  loc_6EDE98: FLdPr var_1DC
  loc_6EDE9B: Me.Caption = from_stack_1
  loc_6EDEA0: FFreeStr var_90 = ""
  loc_6EDEA7: FFreeAd var_1D8 = ""
  loc_6EDEAE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDEC5: FLdRfVar var_1D4
  loc_6EDEC8: LitVar_Missing var_1D0
  loc_6EDECB: LitVar_Missing var_1B0
  loc_6EDECE: LitVar_Missing var_190
  loc_6EDED1: LitVar_Missing var_170
  loc_6EDED4: LitVar_Missing var_150
  loc_6EDED7: LitVar_Missing var_130
  loc_6EDEDA: LitVar_Missing var_110
  loc_6EDEDD: LitVar_Missing var_F0
  loc_6EDEE0: LitVar_Missing var_D0
  loc_6EDEE3: LitVar_Missing var_B0
  loc_6EDEE6: LitStr "Horas"
  loc_6EDEE9: FStStrCopy var_90
  loc_6EDEEC: FLdRfVar var_90
  loc_6EDEEF: LitI4 &HE
  loc_6EDEF4: PopTmpLdAdStr var_8C
  loc_6EDEF7: LitI2_Byte &HD
  loc_6EDEF9: PopTmpLdAd2 var_88
  loc_6EDEFC: ImpAdLdRf MemVar_74C7D0
  loc_6EDEFF: NewIfNullPr clsMsg
  loc_6EDF02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDF07: ILdRf var_1D4
  loc_6EDF0A: FLdRfVar var_1DC
  loc_6EDF0D: LitI2_Byte 3
  loc_6EDF0F: FLdPrThis
  loc_6EDF10: VCallAd Control_ID_Label1
  loc_6EDF13: FStAdFunc var_1D8
  loc_6EDF16: FLdPr var_1D8
  loc_6EDF19: Set from_stack_2 = Me(from_stack_1)
  loc_6EDF1E: FLdPr var_1DC
  loc_6EDF21: Me.Caption = from_stack_1
  loc_6EDF26: FFreeStr var_90 = ""
  loc_6EDF2D: FFreeAd var_1D8 = ""
  loc_6EDF34: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDF4B: FLdRfVar var_1D4
  loc_6EDF4E: LitVar_Missing var_1D0
  loc_6EDF51: LitVar_Missing var_1B0
  loc_6EDF54: LitVar_Missing var_190
  loc_6EDF57: LitVar_Missing var_170
  loc_6EDF5A: LitVar_Missing var_150
  loc_6EDF5D: LitVar_Missing var_130
  loc_6EDF60: LitVar_Missing var_110
  loc_6EDF63: LitVar_Missing var_F0
  loc_6EDF66: LitVar_Missing var_D0
  loc_6EDF69: LitVar_Missing var_B0
  loc_6EDF6C: LitStr "Debe ingresar una hora (hh:mm:ss) válida. Verifique por favor."
  loc_6EDF6F: FStStrCopy var_90
  loc_6EDF72: FLdRfVar var_90
  loc_6EDF75: LitI4 &HF
  loc_6EDF7A: PopTmpLdAdStr var_8C
  loc_6EDF7D: LitI2_Byte &HD
  loc_6EDF7F: PopTmpLdAd2 var_88
  loc_6EDF82: ImpAdLdRf MemVar_74C7D0
  loc_6EDF85: NewIfNullPr clsMsg
  loc_6EDF88: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDF8D: ILdRf var_1D4
  loc_6EDF90: FLdPr Me
  loc_6EDF93: MemStStrCopy
  loc_6EDF97: FFreeStr var_90 = ""
  loc_6EDF9E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EDFB5: FLdRfVar var_1D4
  loc_6EDFB8: LitVar_Missing var_1D0
  loc_6EDFBB: LitVar_Missing var_1B0
  loc_6EDFBE: LitVar_Missing var_190
  loc_6EDFC1: LitVar_Missing var_170
  loc_6EDFC4: LitVar_Missing var_150
  loc_6EDFC7: LitVar_Missing var_130
  loc_6EDFCA: LitVar_Missing var_110
  loc_6EDFCD: LitVar_Missing var_F0
  loc_6EDFD0: LitVar_Missing var_D0
  loc_6EDFD3: LitVar_Missing var_B0
  loc_6EDFD6: LitStr "Debe ingresar una fecha final mayor a la inicial. Verifique por favor."
  loc_6EDFD9: FStStrCopy var_90
  loc_6EDFDC: FLdRfVar var_90
  loc_6EDFDF: LitI4 &H10
  loc_6EDFE4: PopTmpLdAdStr var_8C
  loc_6EDFE7: LitI2_Byte &HD
  loc_6EDFE9: PopTmpLdAd2 var_88
  loc_6EDFEC: ImpAdLdRf MemVar_74C7D0
  loc_6EDFEF: NewIfNullPr clsMsg
  loc_6EDFF2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EDFF7: ILdRf var_1D4
  loc_6EDFFA: FLdPr Me
  loc_6EDFFD: MemStStrCopy
  loc_6EE001: FFreeStr var_90 = ""
  loc_6EE008: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE01F: FLdRfVar var_1D4
  loc_6EE022: LitVar_Missing var_1D0
  loc_6EE025: LitVar_Missing var_1B0
  loc_6EE028: LitVar_Missing var_190
  loc_6EE02B: LitVar_Missing var_170
  loc_6EE02E: LitVar_Missing var_150
  loc_6EE031: LitVar_Missing var_130
  loc_6EE034: LitVar_Missing var_110
  loc_6EE037: LitVar_Missing var_F0
  loc_6EE03A: LitVar_Missing var_D0
  loc_6EE03D: LitVar_Missing var_B0
  loc_6EE040: LitStr "Debe ingresar una hora final mayor a la inicial. Verifique por favor."
  loc_6EE043: FStStrCopy var_90
  loc_6EE046: FLdRfVar var_90
  loc_6EE049: LitI4 &H11
  loc_6EE04E: PopTmpLdAdStr var_8C
  loc_6EE051: LitI2_Byte &HD
  loc_6EE053: PopTmpLdAd2 var_88
  loc_6EE056: ImpAdLdRf MemVar_74C7D0
  loc_6EE059: NewIfNullPr clsMsg
  loc_6EE05C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE061: ILdRf var_1D4
  loc_6EE064: FLdPr Me
  loc_6EE067: MemStStrCopy
  loc_6EE06B: FFreeStr var_90 = ""
  loc_6EE072: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE089: FLdRfVar var_1D4
  loc_6EE08C: LitVar_Missing var_1D0
  loc_6EE08F: LitVar_Missing var_1B0
  loc_6EE092: LitVar_Missing var_190
  loc_6EE095: LitVar_Missing var_170
  loc_6EE098: LitVar_Missing var_150
  loc_6EE09B: LitVar_Missing var_130
  loc_6EE09E: LitVar_Missing var_110
  loc_6EE0A1: LitVar_Missing var_F0
  loc_6EE0A4: LitVar_Missing var_D0
  loc_6EE0A7: LitVar_Missing var_B0
  loc_6EE0AA: LitStr "Debe ingresar una fecha (dd/mm/aaaa) válida mayor a '01/01/1970'. Verifique por favor."
  loc_6EE0AD: FStStrCopy var_90
  loc_6EE0B0: FLdRfVar var_90
  loc_6EE0B3: LitI4 &H12
  loc_6EE0B8: PopTmpLdAdStr var_8C
  loc_6EE0BB: LitI2_Byte &HD
  loc_6EE0BD: PopTmpLdAd2 var_88
  loc_6EE0C0: ImpAdLdRf MemVar_74C7D0
  loc_6EE0C3: NewIfNullPr clsMsg
  loc_6EE0C6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE0CB: ILdRf var_1D4
  loc_6EE0CE: FLdPr Me
  loc_6EE0D1: MemStStrCopy
  loc_6EE0D5: FFreeStr var_90 = ""
  loc_6EE0DC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE0F3: FLdRfVar var_1D4
  loc_6EE0F6: LitVar_Missing var_1D0
  loc_6EE0F9: LitVar_Missing var_1B0
  loc_6EE0FC: LitVar_Missing var_190
  loc_6EE0FF: LitVar_Missing var_170
  loc_6EE102: LitVar_Missing var_150
  loc_6EE105: LitVar_Missing var_130
  loc_6EE108: LitVar_Missing var_110
  loc_6EE10B: LitVar_Missing var_F0
  loc_6EE10E: LitVar_Missing var_D0
  loc_6EE111: LitVar_Missing var_B0
  loc_6EE114: LitStr "Consultas Estadísticas"
  loc_6EE117: FStStrCopy var_90
  loc_6EE11A: FLdRfVar var_90
  loc_6EE11D: LitI4 &H13
  loc_6EE122: PopTmpLdAdStr var_8C
  loc_6EE125: LitI2_Byte &HD
  loc_6EE127: PopTmpLdAd2 var_88
  loc_6EE12A: ImpAdLdRf MemVar_74C7D0
  loc_6EE12D: NewIfNullPr clsMsg
  loc_6EE130: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6EE135: ILdRf var_1D4
  loc_6EE138: FLdPr Me
  loc_6EE13B: Me.Caption = from_stack_1
  loc_6EE140: FFreeStr var_90 = ""
  loc_6EE147: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6EE15E: ILdRf Me
  loc_6EE161: CastAd
  loc_6EE164: FStAdFunc var_1D8
  loc_6EE167: FLdRfVar var_1D8
  loc_6EE16A: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6EE16F: FFree1Ad var_1D8
  loc_6EE172: ImpAdLdI4 MemVar_74BED4
  loc_6EE175: FLdPrThis
  loc_6EE176: VCallAd Control_ID_labelsurtidores
  loc_6EE179: FStAdFunc var_1D8
  loc_6EE17C: FLdPr var_1D8
  loc_6EE17F: Me.Caption = from_stack_1
  loc_6EE184: FFree1Ad var_1D8
  loc_6EE187: LitI2_Byte 1
  loc_6EE189: CUI1I2
  loc_6EE18B: LitI4 1
  loc_6EE190: FLdPr Me
  loc_6EE193: MemLdRfVar from_stack_1.global_76
  loc_6EE196: Ary1StUI1
  loc_6EE198: LitI2_Byte 2
  loc_6EE19A: CUI1I2
  loc_6EE19C: LitI4 2
  loc_6EE1A1: FLdPr Me
  loc_6EE1A4: MemLdRfVar from_stack_1.global_76
  loc_6EE1A7: Ary1StUI1
  loc_6EE1A9: LitI2_Byte 3
  loc_6EE1AB: CUI1I2
  loc_6EE1AD: LitI4 3
  loc_6EE1B2: FLdPr Me
  loc_6EE1B5: MemLdRfVar from_stack_1.global_76
  loc_6EE1B8: Ary1StUI1
  loc_6EE1BA: LitI2_Byte 4
  loc_6EE1BC: CUI1I2
  loc_6EE1BE: LitI4 4
  loc_6EE1C3: FLdPr Me
  loc_6EE1C6: MemLdRfVar from_stack_1.global_76
  loc_6EE1C9: Ary1StUI1
  loc_6EE1CB: LitI2_Byte 6
  loc_6EE1CD: CUI1I2
  loc_6EE1CF: LitI4 5
  loc_6EE1D4: FLdPr Me
  loc_6EE1D7: MemLdRfVar from_stack_1.global_76
  loc_6EE1DA: Ary1StUI1
  loc_6EE1DC: LitI2_Byte 8
  loc_6EE1DE: CUI1I2
  loc_6EE1E0: LitI4 6
  loc_6EE1E5: FLdPr Me
  loc_6EE1E8: MemLdRfVar from_stack_1.global_76
  loc_6EE1EB: Ary1StUI1
  loc_6EE1ED: LitI2_Byte &HC
  loc_6EE1EF: CUI1I2
  loc_6EE1F1: LitI4 7
  loc_6EE1F6: FLdPr Me
  loc_6EE1F9: MemLdRfVar from_stack_1.global_76
  loc_6EE1FC: Ary1StUI1
  loc_6EE1FE: LitI2_Byte &H18
  loc_6EE200: CUI1I2
  loc_6EE202: LitI4 8
  loc_6EE207: FLdPr Me
  loc_6EE20A: MemLdRfVar from_stack_1.global_76
  loc_6EE20D: Ary1StUI1
  loc_6EE20F: LitI2_Byte 0
  loc_6EE211: CUI1I2
  loc_6EE213: FLdPr Me
  loc_6EE216: MemStUI1
  loc_6EE21A: Call SpinButton1_SpinDown()
  loc_6EE21F: LitI4 1
  loc_6EE224: FLdPr Me
  loc_6EE227: MemLdRfVar from_stack_1.global_76
  loc_6EE22A: Ary1LdUI1
  loc_6EE22C: CStrI2
  loc_6EE22E: FStStrNoPop var_90
  loc_6EE231: FLdPrThis
  loc_6EE232: VCallAd Control_ID_Periodo
  loc_6EE235: FStAdFunc var_1D8
  loc_6EE238: FLdPr var_1D8
  loc_6EE23B: Me.Text = from_stack_1
  loc_6EE240: FFree1Str var_90
  loc_6EE243: FFree1Ad var_1D8
  loc_6EE246: FLdRfVar var_B0
  loc_6EE249: ImpAdCallFPR4  = Now
  loc_6EE24E: FLdRfVar var_B0
  loc_6EE251: FLdRfVar var_D0
  loc_6EE254: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6EE259: FLdRfVar var_150
  loc_6EE25C: ImpAdCallFPR4  = Now
  loc_6EE261: FLdRfVar var_150
  loc_6EE264: FLdRfVar var_170
  loc_6EE267: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6EE26C: FLdRfVar var_1FC
  loc_6EE26F: ImpAdCallFPR4  = Now
  loc_6EE274: FLdRfVar var_1FC
  loc_6EE277: FLdRfVar var_20C
  loc_6EE27A: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6EE27F: LitI4 1
  loc_6EE284: LitI4 1
  loc_6EE289: LitVarStr var_A0, "00"
  loc_6EE28E: FStVarCopyObj var_F0
  loc_6EE291: FLdRfVar var_F0
  loc_6EE294: FLdRfVar var_D0
  loc_6EE297: FLdRfVar var_110
  loc_6EE29A: ImpAdCallFPR4  = Format(, )
  loc_6EE29F: FLdRfVar var_110
  loc_6EE2A2: LitVarStr var_C0, "/"
  loc_6EE2A7: ConcatVar var_130
  loc_6EE2AB: LitI4 1
  loc_6EE2B0: LitI4 1
  loc_6EE2B5: LitVarStr var_E0, "00"
  loc_6EE2BA: FStVarCopyObj var_190
  loc_6EE2BD: FLdRfVar var_190
  loc_6EE2C0: FLdRfVar var_170
  loc_6EE2C3: FLdRfVar var_1B0
  loc_6EE2C6: ImpAdCallFPR4  = Format(, )
  loc_6EE2CB: FLdRfVar var_1B0
  loc_6EE2CE: ConcatVar var_1D0
  loc_6EE2D2: LitVarStr var_100, "/"
  loc_6EE2D7: ConcatVar var_1EC
  loc_6EE2DB: LitI4 1
  loc_6EE2E0: LitI4 1
  loc_6EE2E5: LitVarStr var_120, "0000"
  loc_6EE2EA: FStVarCopyObj var_21C
  loc_6EE2ED: FLdRfVar var_21C
  loc_6EE2F0: FLdRfVar var_20C
  loc_6EE2F3: FLdRfVar var_22C
  loc_6EE2F6: ImpAdCallFPR4  = Format(, )
  loc_6EE2FB: FLdRfVar var_22C
  loc_6EE2FE: ConcatVar var_23C
  loc_6EE302: CStrVarTmp
  loc_6EE303: CVarStr var_24C
  loc_6EE306: PopAdLdVar
  loc_6EE307: FLdPrThis
  loc_6EE308: VCallAd Control_ID_FechaInicial
  loc_6EE30B: FStAdFunc var_1D8
  loc_6EE30E: FLdPr var_1D8
  loc_6EE311: LateIdSt
  loc_6EE316: FFree1Ad var_1D8
  loc_6EE319: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_150 = "": var_170 = "": var_190 = "": var_130 = "": var_1B0 = "": var_1D0 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6EE33E: FLdRfVar var_B0
  loc_6EE341: ImpAdCallFPR4  = Now
  loc_6EE346: FLdRfVar var_B0
  loc_6EE349: FLdRfVar var_D0
  loc_6EE34C: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6EE351: FLdRfVar var_150
  loc_6EE354: ImpAdCallFPR4  = Now
  loc_6EE359: FLdRfVar var_150
  loc_6EE35C: FLdRfVar var_170
  loc_6EE35F: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6EE364: FLdRfVar var_1FC
  loc_6EE367: ImpAdCallFPR4  = Now
  loc_6EE36C: FLdRfVar var_1FC
  loc_6EE36F: FLdRfVar var_20C
  loc_6EE372: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6EE377: LitI4 1
  loc_6EE37C: LitI4 1
  loc_6EE381: LitVarStr var_A0, "00"
  loc_6EE386: FStVarCopyObj var_F0
  loc_6EE389: FLdRfVar var_F0
  loc_6EE38C: FLdRfVar var_D0
  loc_6EE38F: FLdRfVar var_110
  loc_6EE392: ImpAdCallFPR4  = Format(, )
  loc_6EE397: FLdRfVar var_110
  loc_6EE39A: LitVarStr var_C0, "/"
  loc_6EE39F: ConcatVar var_130
  loc_6EE3A3: LitI4 1
  loc_6EE3A8: LitI4 1
  loc_6EE3AD: LitVarStr var_E0, "00"
  loc_6EE3B2: FStVarCopyObj var_190
  loc_6EE3B5: FLdRfVar var_190
  loc_6EE3B8: FLdRfVar var_170
  loc_6EE3BB: FLdRfVar var_1B0
  loc_6EE3BE: ImpAdCallFPR4  = Format(, )
  loc_6EE3C3: FLdRfVar var_1B0
  loc_6EE3C6: ConcatVar var_1D0
  loc_6EE3CA: LitVarStr var_100, "/"
  loc_6EE3CF: ConcatVar var_1EC
  loc_6EE3D3: LitI4 1
  loc_6EE3D8: LitI4 1
  loc_6EE3DD: LitVarStr var_120, "0000"
  loc_6EE3E2: FStVarCopyObj var_21C
  loc_6EE3E5: FLdRfVar var_21C
  loc_6EE3E8: FLdRfVar var_20C
  loc_6EE3EB: FLdRfVar var_22C
  loc_6EE3EE: ImpAdCallFPR4  = Format(, )
  loc_6EE3F3: FLdRfVar var_22C
  loc_6EE3F6: ConcatVar var_23C
  loc_6EE3FA: CStrVarTmp
  loc_6EE3FB: CVarStr var_24C
  loc_6EE3FE: PopAdLdVar
  loc_6EE3FF: FLdPrThis
  loc_6EE400: VCallAd Control_ID_FechaFinal
  loc_6EE403: FStAdFunc var_1D8
  loc_6EE406: FLdPr var_1D8
  loc_6EE409: LateIdSt
  loc_6EE40E: FFree1Ad var_1D8
  loc_6EE411: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_150 = "": var_170 = "": var_190 = "": var_130 = "": var_1B0 = "": var_1D0 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6EE436: LitVarStr var_A0, "00:00:00"
  loc_6EE43B: PopAdLdVar
  loc_6EE43C: FLdPrThis
  loc_6EE43D: VCallAd Control_ID_HoraInicial
  loc_6EE440: FStAdFunc var_1D8
  loc_6EE443: FLdPr var_1D8
  loc_6EE446: LateIdSt
  loc_6EE44B: FFree1Ad var_1D8
  loc_6EE44E: FLdRfVar var_B0
  loc_6EE451: ImpAdCallFPR4  = Now
  loc_6EE456: FLdRfVar var_B0
  loc_6EE459: FLdRfVar var_D0
  loc_6EE45C: ImpAdCallFPR4  = Hour()
  loc_6EE461: FLdRfVar var_150
  loc_6EE464: ImpAdCallFPR4  = Now
  loc_6EE469: FLdRfVar var_150
  loc_6EE46C: FLdRfVar var_170
  loc_6EE46F: ImpAdCallFPR4  = Minute()
  loc_6EE474: FLdRfVar var_1FC
  loc_6EE477: ImpAdCallFPR4  = Now
  loc_6EE47C: FLdRfVar var_1FC
  loc_6EE47F: FLdRfVar var_20C
  loc_6EE482: ImpAdCallFPR4  = Second()
  loc_6EE487: LitI4 1
  loc_6EE48C: LitI4 1
  loc_6EE491: LitVarStr var_A0, "00"
  loc_6EE496: FStVarCopyObj var_F0
  loc_6EE499: FLdRfVar var_F0
  loc_6EE49C: FLdRfVar var_D0
  loc_6EE49F: FLdRfVar var_110
  loc_6EE4A2: ImpAdCallFPR4  = Format(, )
  loc_6EE4A7: FLdRfVar var_110
  loc_6EE4AA: LitVarStr var_C0, ":"
  loc_6EE4AF: ConcatVar var_130
  loc_6EE4B3: LitI4 1
  loc_6EE4B8: LitI4 1
  loc_6EE4BD: LitVarStr var_E0, "00"
  loc_6EE4C2: FStVarCopyObj var_190
  loc_6EE4C5: FLdRfVar var_190
  loc_6EE4C8: FLdRfVar var_170
  loc_6EE4CB: FLdRfVar var_1B0
  loc_6EE4CE: ImpAdCallFPR4  = Format(, )
  loc_6EE4D3: FLdRfVar var_1B0
  loc_6EE4D6: ConcatVar var_1D0
  loc_6EE4DA: LitVarStr var_100, ":"
  loc_6EE4DF: ConcatVar var_1EC
  loc_6EE4E3: LitI4 1
  loc_6EE4E8: LitI4 1
  loc_6EE4ED: LitVarStr var_120, "00"
  loc_6EE4F2: FStVarCopyObj var_21C
  loc_6EE4F5: FLdRfVar var_21C
  loc_6EE4F8: FLdRfVar var_20C
  loc_6EE4FB: FLdRfVar var_22C
  loc_6EE4FE: ImpAdCallFPR4  = Format(, )
  loc_6EE503: FLdRfVar var_22C
  loc_6EE506: ConcatVar var_23C
  loc_6EE50A: CStrVarTmp
  loc_6EE50B: CVarStr var_24C
  loc_6EE50E: PopAdLdVar
  loc_6EE50F: FLdPrThis
  loc_6EE510: VCallAd Control_ID_HoraFinal
  loc_6EE513: FStAdFunc var_1D8
  loc_6EE516: FLdPr var_1D8
  loc_6EE519: LateIdSt
  loc_6EE51E: FFree1Ad var_1D8
  loc_6EE521: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_150 = "": var_170 = "": var_190 = "": var_130 = "": var_1B0 = "": var_1D0 = "": var_1FC = "": var_20C = "": var_21C = "": var_1EC = "": var_22C = "": var_23C = ""
  loc_6EE546: ImpAdLdUI1
  loc_6EE54A: CI2UI1
  loc_6EE54C: LitI2_Byte 4
  loc_6EE54E: EqI2
  loc_6EE54F: NotI4
  loc_6EE550: ImpAdLdUI1
  loc_6EE554: CI2UI1
  loc_6EE556: LitI2_Byte 5
  loc_6EE558: EqI2
  loc_6EE559: NotI4
  loc_6EE55A: AndI4
  loc_6EE55B: BranchF loc_6EE586
  loc_6EE55E: LitI2_Byte 0
  loc_6EE560: FLdPrThis
  loc_6EE561: VCallAd Control_ID_optFuel
  loc_6EE564: FStAdFunc var_1D8
  loc_6EE567: FLdPr var_1D8
  loc_6EE56A: Me.Visible = from_stack_1b
  loc_6EE56F: FFree1Ad var_1D8
  loc_6EE572: LitI2_Byte 0
  loc_6EE574: FLdPrThis
  loc_6EE575: VCallAd Control_ID_optGNC
  loc_6EE578: FStAdFunc var_1D8
  loc_6EE57B: FLdPr var_1D8
  loc_6EE57E: Me.Visible = from_stack_1b
  loc_6EE583: FFree1Ad var_1D8
  loc_6EE586: LitI2_Byte 0
  loc_6EE588: PopTmpLdAd2 var_88
  loc_6EE58B: from_stack_2v = Proc_54_36_6147A8(from_stack_1v)
  loc_6EE590: ImpAdLdUI1
  loc_6EE594: CI2UI1
  loc_6EE596: LitI2_Byte 1
  loc_6EE598: AddI2
  loc_6EE599: CUI1I2
  loc_6EE59B: FLdRfVar var_86
  loc_6EE59E: LitI2_Byte &H20
  loc_6EE5A0: CUI1I2
  loc_6EE5A2: ForUI1 var_250
  loc_6EE5A8: LitI2_Byte 0
  loc_6EE5AA: FLdRfVar var_1DC
  loc_6EE5AD: FLdUI1
  loc_6EE5B1: CI2UI1
  loc_6EE5B3: FLdPrThis
  loc_6EE5B4: VCallAd Control_ID_Check1
  loc_6EE5B7: FStAdFunc var_1D8
  loc_6EE5BA: FLdPr var_1D8
  loc_6EE5BD: Set from_stack_2 = Me(from_stack_1)
  loc_6EE5C2: FLdPr var_1DC
  loc_6EE5C5: Me.Visible = from_stack_1b
  loc_6EE5CA: FFreeAd var_1D8 = ""
  loc_6EE5D1: LitI2_Byte 0
  loc_6EE5D3: FLdRfVar var_1DC
  loc_6EE5D6: FLdUI1
  loc_6EE5DA: CI2UI1
  loc_6EE5DC: FLdPrThis
  loc_6EE5DD: VCallAd Control_ID_Check1
  loc_6EE5E0: FStAdFunc var_1D8
  loc_6EE5E3: FLdPr var_1D8
  loc_6EE5E6: Set from_stack_2 = Me(from_stack_1)
  loc_6EE5EB: FLdPr var_1DC
  loc_6EE5EE: Me.Value = from_stack_1
  loc_6EE5F3: FFreeAd var_1D8 = ""
  loc_6EE5FA: FLdRfVar var_86
  loc_6EE5FD: NextUI1
  loc_6EE603: LitI2_Byte 1
  loc_6EE605: CUI1I2
  loc_6EE607: FLdPr Me
  loc_6EE60A: MemStUI1
  loc_6EE60E: LitI2_Byte 0
  loc_6EE610: PopTmpLdAd2 var_88
  loc_6EE613: Call TipoEstadistica_Click(from_stack_1v)
  loc_6EE618: ExitProcHresult
End Sub

Public Function strValidTimeGet() '446EC8
  strValidTimeGet = strValidTime
End Function

Public Sub strValidTimePut(Value) '446ED7
  strValidTime = Value
End Sub

Public Function strOtherDateGet() '446EE6
  strOtherDateGet = strOtherDate
End Function

Public Sub strOtherDatePut(Value) '446EF5
  strOtherDate = Value
End Sub

Public Function strOtherTimeGet() '446F04
  strOtherTimeGet = strOtherTime
End Function

Public Sub strOtherTimePut(Value) '446F13
  strOtherTime = Value
End Sub

Public Function strValidDateGet() '446F22
  strValidDateGet = strValidDate
End Function

Public Sub strValidDatePut(Value) '446F31
  strValidDate = Value
End Sub

Public Function strSinceGet() '446F40
  strSinceGet = strSince
End Function

Public Sub strSincePut(Value) '446F4F
  strSince = Value
End Sub

Public Function strUntilGet() '446F5E
  strUntilGet = strUntil
End Function

Public Sub strUntilPut(Value) '446F6D
  strUntil = Value
End Sub

Private Function Proc_54_36_6147A8(arg_C) '6147A8
  'Data Table: 446030
  loc_614684: LitI2_Byte 1
  loc_614686: FLdRfVar var_86
  loc_614689: ImpAdLdUI1
  loc_61468D: CI2UI1
  loc_61468F: ForI2 var_8A
  loc_614695: ILdI2 arg_C
  loc_614698: FLdI2 var_86
  loc_61469B: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6146A0: AndI4
  loc_6146A1: BranchF loc_6146F3
  loc_6146A4: LitI2_Byte &HFF
  loc_6146A6: FLdRfVar var_94
  loc_6146A9: FLdI2 var_86
  loc_6146AC: FLdPrThis
  loc_6146AD: VCallAd Control_ID_Check1
  loc_6146B0: FStAdFunc var_90
  loc_6146B3: FLdPr var_90
  loc_6146B6: Set from_stack_2 = Me(from_stack_1)
  loc_6146BB: FLdPr var_94
  loc_6146BE: Me.Visible = from_stack_1b
  loc_6146C3: FFreeAd var_90 = ""
  loc_6146CA: LitI2_Byte 1
  loc_6146CC: FLdRfVar var_94
  loc_6146CF: FLdI2 var_86
  loc_6146D2: FLdPrThis
  loc_6146D3: VCallAd Control_ID_Check1
  loc_6146D6: FStAdFunc var_90
  loc_6146D9: FLdPr var_90
  loc_6146DC: Set from_stack_2 = Me(from_stack_1)
  loc_6146E1: FLdPr var_94
  loc_6146E4: Me.Value = from_stack_1
  loc_6146E9: FFreeAd var_90 = ""
  loc_6146F0: Branch loc_61479F
  loc_6146F3: ILdI2 arg_C
  loc_6146F6: NotI4
  loc_6146F7: FLdI2 var_86
  loc_6146FA: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6146FF: NotI4
  loc_614700: AndI4
  loc_614701: BranchF loc_614753
  loc_614704: LitI2_Byte &HFF
  loc_614706: FLdRfVar var_94
  loc_614709: FLdI2 var_86
  loc_61470C: FLdPrThis
  loc_61470D: VCallAd Control_ID_Check1
  loc_614710: FStAdFunc var_90
  loc_614713: FLdPr var_90
  loc_614716: Set from_stack_2 = Me(from_stack_1)
  loc_61471B: FLdPr var_94
  loc_61471E: Me.Visible = from_stack_1b
  loc_614723: FFreeAd var_90 = ""
  loc_61472A: LitI2_Byte 1
  loc_61472C: FLdRfVar var_94
  loc_61472F: FLdI2 var_86
  loc_614732: FLdPrThis
  loc_614733: VCallAd Control_ID_Check1
  loc_614736: FStAdFunc var_90
  loc_614739: FLdPr var_90
  loc_61473C: Set from_stack_2 = Me(from_stack_1)
  loc_614741: FLdPr var_94
  loc_614744: Me.Value = from_stack_1
  loc_614749: FFreeAd var_90 = ""
  loc_614750: Branch loc_61479F
  loc_614753: LitI2_Byte &HFF
  loc_614755: FLdRfVar var_94
  loc_614758: FLdI2 var_86
  loc_61475B: FLdPrThis
  loc_61475C: VCallAd Control_ID_Check1
  loc_61475F: FStAdFunc var_90
  loc_614762: FLdPr var_90
  loc_614765: Set from_stack_2 = Me(from_stack_1)
  loc_61476A: FLdPr var_94
  loc_61476D: Me.Visible = from_stack_1b
  loc_614772: FFreeAd var_90 = ""
  loc_614779: LitI2_Byte 0
  loc_61477B: FLdRfVar var_94
  loc_61477E: FLdI2 var_86
  loc_614781: FLdPrThis
  loc_614782: VCallAd Control_ID_Check1
  loc_614785: FStAdFunc var_90
  loc_614788: FLdPr var_90
  loc_61478B: Set from_stack_2 = Me(from_stack_1)
  loc_614790: FLdPr var_94
  loc_614793: Me.Value = from_stack_1
  loc_614798: FFreeAd var_90 = ""
  loc_61479F: FLdRfVar var_86
  loc_6147A2: NextI2 var_8A, loc_614695
  loc_6147A7: ExitProcHresult
End Function

Private Function Proc_54_37_5C82E8() '5C82E8
  'Data Table: 446030
  loc_5C82E4: ExitProcHresult
End Function

Private Function Proc_54_38_5E5BEC(arg_C) '5E5BEC
  'Data Table: 446030
  loc_5E5B7C: LitI2_Byte 1
  loc_5E5B7E: FLdRfVar var_86
  loc_5E5B81: ImpAdLdUI1
  loc_5E5B85: CI2UI1
  loc_5E5B87: ForI2 var_8A
  loc_5E5B8D: ILdI2 arg_C
  loc_5E5B90: BranchF loc_5E5BBC
  loc_5E5B93: LitI2_Byte 1
  loc_5E5B95: FLdRfVar var_94
  loc_5E5B98: FLdI2 var_86
  loc_5E5B9B: FLdPrThis
  loc_5E5B9C: VCallAd Control_ID_Check1
  loc_5E5B9F: FStAdFunc var_90
  loc_5E5BA2: FLdPr var_90
  loc_5E5BA5: Set from_stack_2 = Me(from_stack_1)
  loc_5E5BAA: FLdPr var_94
  loc_5E5BAD: Me.Value = from_stack_1
  loc_5E5BB2: FFreeAd var_90 = ""
  loc_5E5BB9: Branch loc_5E5BE2
  loc_5E5BBC: LitI2_Byte 0
  loc_5E5BBE: FLdRfVar var_94
  loc_5E5BC1: FLdI2 var_86
  loc_5E5BC4: FLdPrThis
  loc_5E5BC5: VCallAd Control_ID_Check1
  loc_5E5BC8: FStAdFunc var_90
  loc_5E5BCB: FLdPr var_90
  loc_5E5BCE: Set from_stack_2 = Me(from_stack_1)
  loc_5E5BD3: FLdPr var_94
  loc_5E5BD6: Me.Value = from_stack_1
  loc_5E5BDB: FFreeAd var_90 = ""
  loc_5E5BE2: FLdRfVar var_86
  loc_5E5BE5: NextI2 var_8A, loc_5E5B8D
  loc_5E5BEA: ExitProcHresult
End Function

Private Function Proc_54_39_5E59F0() '5E59F0
  'Data Table: 446030
  loc_5E5984: ImpAdLdUI1
  loc_5E5988: CI2UI1
  loc_5E598A: LitI2_Byte 4
  loc_5E598C: EqI2
  loc_5E598D: LitI2_Byte 5
  loc_5E598F: OrI4
  loc_5E5990: FLdRfVar var_92
  loc_5E5993: FLdRfVar var_90
  loc_5E5996: LitI2_Byte 1
  loc_5E5998: FLdPrThis
  loc_5E5999: VCallAd Control_ID_TipoEstadistica
  loc_5E599C: FStAdFunc var_8C
  loc_5E599F: FLdPr var_8C
  loc_5E59A2: Set from_stack_2 = Me(from_stack_1)
  loc_5E59A7: FLdPr var_90
  loc_5E59AA:  = Me.Visible
  loc_5E59AF: FLdI2 var_92
  loc_5E59B2: AndI4
  loc_5E59B3: FLdRfVar var_9A
  loc_5E59B6: FLdPrThis
  loc_5E59B7: VCallAd Control_ID_optGNC
  loc_5E59BA: FStAdFunc var_98
  loc_5E59BD: FLdPr var_98
  loc_5E59C0:  = Me.Value
  loc_5E59C5: FLdI2 var_9A
  loc_5E59C8: AndI4
  loc_5E59C9: FFreeAd var_8C = "": var_90 = ""
  loc_5E59D2: BranchF loc_5E59DD
  loc_5E59D5: LitI2_Byte 1
  loc_5E59D7: FStI2 var_88
  loc_5E59DA: Branch loc_5E59E2
  loc_5E59DD: LitI2_Byte 2
  loc_5E59DF: FStI2 var_88
  loc_5E59E2: FLdI2 var_88
  loc_5E59E5: FStI2 var_86
  loc_5E59E8: ExitProcCbHresult
End Function
