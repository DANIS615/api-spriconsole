VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form DespachosAnteriores
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 11910
  ClientHeight = 8715
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.DirListBox Dir1
    Left = 8640
    Top = 4680
    Width = 2055
    Height = 1290
    TabIndex = 45
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.DriveListBox Drive1
    Left = 8640
    Top = 3480
    Width = 1095
    Height = 405
    TabIndex = 44
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
    Left = 120
    Top = 720
    Width = 4635
    Height = 2625
    TabIndex = 26
    Begin VB.CheckBox chkDifSales
      Caption = "Solo ventas diferenciales"
      Left = 960
      Top = 1650
      Width = 1455
      Height = 375
      TabIndex = 39
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdTurnoDiaMes
      Caption = "&Turno"
      Index = 0
      Left = 240
      Top = 2160
      Width = 1215
      Height = 375
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
    Begin VB.CommandButton cmdTurnoDiaMes
      Caption = "&Día"
      Index = 1
      Left = 1680
      Top = 2160
      Width = 1215
      Height = 375
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
    Begin VB.CommandButton cmdTurnoDiaMes
      Caption = "&Mes"
      Index = 2
      Left = 3120
      Top = 2160
      Width = 1215
      Height = 375
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
    Begin MSMask.MaskEdBox FechaInicial
      Left = 960
      Top = 450
      Width = 1635
      Height = 435
      TabIndex = 0
      OleObjectBlob = "DespachosAnteriores.frx":0000
    End
    Begin MSMask.MaskEdBox HoraInicial
      Left = 2880
      Top = 450
      Width = 1395
      Height = 435
      TabIndex = 1
      OleObjectBlob = "DespachosAnteriores.frx":0094
    End
    Begin MSMask.MaskEdBox HoraFinal
      Left = 2880
      Top = 1110
      Width = 1395
      Height = 435
      TabIndex = 3
      OleObjectBlob = "DespachosAnteriores.frx":0134
    End
    Begin MSMask.MaskEdBox FechaFinal
      Left = 960
      Top = 1110
      Width = 1635
      Height = 435
      TabIndex = 2
      OleObjectBlob = "DespachosAnteriores.frx":01D4
    End
    Begin VB.CheckBox chkRango
      Caption = "Rango de Horas"
      Left = 2880
      Top = 1680
      Width = 1695
      Height = 315
      TabIndex = 36
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Desde :"
      Index = 0
      Left = 120
      Top = 510
      Width = 855
      Height = 375
      TabIndex = 30
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Hasta :"
      Index = 1
      Left = 120
      Top = 1110
      Width = 855
      Height = 375
      TabIndex = 29
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Fecha"
      Left = 960
      Top = 210
      Width = 1575
      Height = 255
      TabIndex = 28
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Hora"
      Left = 2880
      Top = 210
      Width = 1335
      Height = 255
      TabIndex = 27
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Left = 4800
    Top = 720
    Width = 7065
    Height = 2625
    TabIndex = 31
    Begin VB.OptionButton optFuel
      Caption = "Combustibles"
      Left = 240
      Top = 840
      Width = 1935
      Height = 255
      TabIndex = 42
    End
    Begin VB.OptionButton optGNC
      Caption = "GNC"
      Left = 240
      Top = 600
      Width = 1935
      Height = 255
      TabIndex = 41
    End
    Begin VB.OptionButton optAll
      Caption = "Todos"
      Left = 240
      Top = 360
      Width = 2055
      Height = 255
      TabIndex = 40
      Value = 255
    End
    Begin VB.ListBox lstDiasSemana
      Left = 4800
      Top = 360
      Width = 2055
      Height = 2085
      TabIndex = 9
      Style = 1
    End
    Begin VB.ListBox lstGrade
      Left = 240
      Top = 1080
      Width = 2085
      Height = 1410
      TabIndex = 7
      Style = 1
    End
    Begin VB.ListBox lstPump
      Left = 2520
      Top = 360
      Width = 2055
      Height = 2085
      TabIndex = 8
      Style = 1
    End
    Begin VB.Label Label8
      Caption = "Dias de la Semana"
      Left = 4800
      Top = 120
      Width = 2025
      Height = 225
      TabIndex = 37
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label6
      Caption = "Productos"
      Left = 240
      Top = 120
      Width = 2025
      Height = 225
      TabIndex = 33
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label7
      Caption = "Surtidores"
      Left = 2520
      Top = 120
      Width = 2025
      Height = 225
      TabIndex = 32
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.TextBox txtFile
    Left = 6360
    Top = 3600
    Width = 2055
    Height = 255
    TabIndex = 13
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CheckBox chkFormatCem37
    Caption = "Fomato CEM 37"
    Left = 10800
    Top = 3240
    Width = 975
    Height = 855
    Visible = 0   'False
    TabIndex = 14
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand sscImprimir
    Left = 2160
    Top = 3480
    Width = 1935
    Height = 495
    TabIndex = 11
    OleObjectBlob = "DespachosAnteriores.frx":0268
  End
  Begin Threed.SSCommand cmdConsultar
    Left = 120
    Top = 3480
    Width = 1815
    Height = 495
    TabIndex = 10
    OleObjectBlob = "DespachosAnteriores.frx":02CD
  End
  Begin Threed.SSCommand sscSalir
    Left = 9840
    Top = 3480
    Width = 1935
    Height = 495
    TabIndex = 15
    OleObjectBlob = "DespachosAnteriores.frx":0333
  End
  Begin Threed.SSCommand cmdSave
    Left = 4320
    Top = 3480
    Width = 1935
    Height = 495
    TabIndex = 12
    OleObjectBlob = "DespachosAnteriores.frx":0397
  End
  Begin VB.CommandButton cmdPrevio
    Left = 0
    Top = 4440
    Width = 375
    Height = 615
    TabIndex = 34
    Picture = "DespachosAnteriores.frx":0403
    ToolTipText = "Sección anterior"
    Style = 1
  End
  Begin VB.CommandButton cmdSiguiente
    Left = 0
    Top = 7920
    Width = 375
    Height = 615
    TabIndex = 35
    Picture = "DespachosAnteriores.frx":0845
    ToolTipText = "Sección siguiente"
    Style = 1
  End
  Begin VB.ListBox List1
    Left = 360
    Top = 4440
    Width = 11475
    Height = 4155
    TabIndex = 16
    BeginProperty Font
      Name = "Courier"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Densidad"
    Index = 6
    Left = 9960
    Top = 4080
    Width = 1215
    Height = 255
    Visible = 0   'False
    TabIndex = 43
    Alignment = 2 'Center
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
  Begin VB.Label lbWait
    Caption = "Aguarde unos instantes"
    Left = 4080
    Top = 5880
    Width = 4815
    Height = 855
    Visible = 0   'False
    TabIndex = 38
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
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
  Begin VB.Label lblA
    Caption = "Nombre del archivo:"
    Left = 6360
    Top = 3360
    Width = 2055
    Height = 255
    TabIndex = 25
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Despachos Anteriores"
    BackColor = &H80000002&
    ForeColor = &H80000009&
    Left = 0
    Top = 120
    Width = 11895
    Height = 495
    TabIndex = 24
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
  Begin VB.Label Label2
    Caption = "Tipo de Pago"
    Index = 1
    Left = 5280
    Top = 4080
    Width = 2535
    Height = 255
    TabIndex = 23
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
  Begin VB.Label Label2
    Caption = "PPU"
    Index = 5
    Left = 10560
    Top = 4080
    Width = 855
    Height = 255
    TabIndex = 22
    Alignment = 2 'Center
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
  Begin VB.Label Label2
    Caption = "Volumen"
    Index = 4
    Left = 9000
    Top = 4080
    Width = 1215
    Height = 255
    TabIndex = 21
    Alignment = 2 'Center
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
  Begin VB.Label Label2
    Caption = "Monto"
    Index = 3
    Left = 7920
    Top = 4080
    Width = 1095
    Height = 255
    TabIndex = 20
    Alignment = 2 'Center
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
  Begin VB.Label Label2
    Caption = "Producto"
    Index = 2
    Left = 3840
    Top = 4080
    Width = 1335
    Height = 255
    TabIndex = 19
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
  Begin VB.Label labelsurtidor2
    Caption = "Surtidor"
    Left = 2640
    Top = 4080
    Width = 1095
    Height = 255
    TabIndex = 18
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
  Begin VB.Label Label2
    Caption = "Fecha y Hora"
    Index = 0
    Left = 600
    Top = 4080
    Width = 1695
    Height = 255
    TabIndex = 17
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
End

Attribute VB_Name = "DespachosAnteriores"


Private Sub FechaInicial_UnknownEvent_0 '5E2560
  'Data Table: 45294C
  loc_5E250C: LitVarI4
  loc_5E2514: PopAdLdVar
  loc_5E2515: FLdPrThis
  loc_5E2516: VCallAd Control_ID_FechaInicial
  loc_5E2519: FStAdFunc var_98
  loc_5E251C: FLdPr var_98
  loc_5E251F: LateIdSt
  loc_5E2524: FFree1Ad var_98
  loc_5E2527: FLdPrThis
  loc_5E2528: VCallAd Control_ID_FechaInicial
  loc_5E252B: FStAdFunc var_98
  loc_5E252E: FLdPr var_98
  loc_5E2531: LateIdLdVar var_A8 DispID_22 0
  loc_5E2538: CStrVarTmp
  loc_5E2539: FStStrNoPop var_AC
  loc_5E253C: FnLenStr
  loc_5E253D: CVarI4
  loc_5E2541: PopAdLdVar
  loc_5E2542: FLdPrThis
  loc_5E2543: VCallAd Control_ID_FechaInicial
  loc_5E2546: FStAdFunc var_B0
  loc_5E2549: FLdPr var_B0
  loc_5E254C: LateIdSt
  loc_5E2551: FFree1Str var_AC
  loc_5E2554: FFreeAd var_98 = ""
  loc_5E255B: FFree1Var var_A8 = ""
  loc_5E255E: ExitProcHresult
End Sub

Private Sub FechaInicial_UnknownEvent_1 '5DDD80
  'Data Table: 45294C
  loc_5DDD3C: FLdPrThis
  loc_5DDD3D: VCallAd Control_ID_FechaInicial
  loc_5DDD40: FStAdFunc var_88
  loc_5DDD43: FLdPr var_88
  loc_5DDD46: LateIdLdVar var_98 DispID_22 0
  loc_5DDD4D: PopAd
  loc_5DDD4F: LitI2_Byte &HFF
  loc_5DDD51: FLdRfVar var_98
  loc_5DDD54: CStrVarTmp
  loc_5DDD55: FStStrNoPop var_9C
  loc_5DDD58: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DDD5D: NotI4
  loc_5DDD5E: FFree1Str var_9C
  loc_5DDD61: FFree1Ad var_88
  loc_5DDD64: FFree1Var var_98 = ""
  loc_5DDD67: BranchF loc_5DDD7F
  loc_5DDD6A: FLdPrThis
  loc_5DDD6B: VCallAd Control_ID_FechaInicial
  loc_5DDD6E: FStAdFunc var_88
  loc_5DDD71: FLdPr var_88
  loc_5DDD74: LateIdCall
  loc_5DDD7C: FFree1Ad var_88
  loc_5DDD7F: ExitProcHresult
End Sub

Private Sub FechaInicial_KeyDown(KeyCode As Integer, Shift As Integer) '5D4F34
  'Data Table: 45294C
  loc_5D4F0C: ILdI2 KeyCode
  loc_5D4F0F: FStI2 var_86
  loc_5D4F12: FLdI2 var_86
  loc_5D4F15: LitI4 &HD
  loc_5D4F1A: CI2I4
  loc_5D4F1B: EqI2
  loc_5D4F1C: BranchF loc_5D4F31
  loc_5D4F1F: LitI2_Byte 0
  loc_5D4F21: IStI2 KeyCode
  loc_5D4F24: LitI2_Byte &HFF
  loc_5D4F26: PopTmpLdAd2 var_88
  loc_5D4F29: LitStr "{TAB}"
  loc_5D4F2C: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D4F31: ExitProcHresult
End Sub

Private Sub cmdConsultar_UnknownEvent_8 '6CB300
  'Data Table: 45294C
  loc_6CAA3C: OnErrorGoto loc_6CB2C4
  loc_6CAA3F: LitI2_Byte 0
  loc_6CAA41: FLdPr Me
  loc_6CAA44: VCallAd Control_ID_List1
  loc_6CAA47: FStAdFunc var_B8
  loc_6CAA4A: FLdPr var_B8
  loc_6CAA4D: Me.Visible = from_stack_1b
  loc_6CAA52: FFree1Ad var_B8
  loc_6CAA55: LitI2_Byte &HFF
  loc_6CAA57: FLdPr Me
  loc_6CAA5A: VCallAd Control_ID_lbWait
  loc_6CAA5D: FStAdFunc var_B8
  loc_6CAA60: FLdPr var_B8
  loc_6CAA63: Me.Visible = from_stack_1b
  loc_6CAA68: FFree1Ad var_B8
  loc_6CAA6B: LitI2_Byte 0
  loc_6CAA6D: FStI2 var_A8
  loc_6CAA70: LitI2_Byte 0
  loc_6CAA72: FStI2 var_AA
  loc_6CAA75: FLdPrThis
  loc_6CAA76: VCallAd Control_ID_List1
  loc_6CAA79: FStAdFunc var_B8
  loc_6CAA7C: FLdPr var_B8
  loc_6CAA7F: Me.Clear
  loc_6CAA84: FFree1Ad var_B8
  loc_6CAA87: LitI2_Byte 0
  loc_6CAA89: FLdPrThis
  loc_6CAA8A: VCallAd Control_ID_cmdPrevio
  loc_6CAA8D: FStAdFunc var_B8
  loc_6CAA90: FLdPr var_B8
  loc_6CAA93: Me.Enabled = from_stack_1b
  loc_6CAA98: FFree1Ad var_B8
  loc_6CAA9B: LitI2_Byte 0
  loc_6CAA9D: FLdPrThis
  loc_6CAA9E: VCallAd Control_ID_cmdSiguiente
  loc_6CAAA1: FStAdFunc var_B8
  loc_6CAAA4: FLdPr var_B8
  loc_6CAAA7: Me.Enabled = from_stack_1b
  loc_6CAAAC: FFree1Ad var_B8
  loc_6CAAAF: LitI2_Byte 1
  loc_6CAAB1: FLdPr Me
  loc_6CAAB4: MemStI2 global_80
  loc_6CAAB7: FLdRfVar var_C8
  loc_6CAABA: from_stack_1v = Proc_133_37_6F2154()
  loc_6CAABF: FLdRfVar var_C8
  loc_6CAAC2: LitVarI4
  loc_6CAACA: HardType
  loc_6CAACB: NeVarBool
  loc_6CAACD: FFree1Var var_C8 = ""
  loc_6CAAD0: BranchF loc_6CAAD4
  loc_6CAAD3: ExitProcHresult
  loc_6CAAD4: FLdPrThis
  loc_6CAAD5: VCallAd Control_ID_FechaInicial
  loc_6CAAD8: FStAdFunc var_29C
  loc_6CAADB: FLdPrThis
  loc_6CAADC: VCallAd Control_ID_FechaInicial
  loc_6CAADF: FStAdFunc var_2A0
  loc_6CAAE2: FLdPrThis
  loc_6CAAE3: VCallAd Control_ID_FechaInicial
  loc_6CAAE6: FStAdFunc var_2A4
  loc_6CAAE9: FLdPrThis
  loc_6CAAEA: VCallAd Control_ID_HoraInicial
  loc_6CAAED: FStAdFunc var_B8
  loc_6CAAF0: FLdPr var_B8
  loc_6CAAF3: LateIdLdVar var_1A8 DispID_22 0
  loc_6CAAFA: PopAd
  loc_6CAAFC: FLdPrThis
  loc_6CAAFD: VCallAd Control_ID_HoraInicial
  loc_6CAB00: FStAdFunc var_2A8
  loc_6CAB03: FLdPrThis
  loc_6CAB04: VCallAd Control_ID_HoraInicial
  loc_6CAB07: FStAdFunc var_2AC
  loc_6CAB0A: LitVarI2 var_E8, 4
  loc_6CAB0F: LitI4 7
  loc_6CAB14: FLdZeroAd var_29C
  loc_6CAB17: CVarAd
  loc_6CAB1B: FLdRfVar var_F8
  loc_6CAB1E: ImpAdCallFPR4  = Mid(, , )
  loc_6CAB23: FLdRfVar var_F8
  loc_6CAB26: LitVarI2 var_128, 2
  loc_6CAB2B: LitI4 4
  loc_6CAB30: FLdZeroAd var_2A0
  loc_6CAB33: CVarAd
  loc_6CAB37: FLdRfVar var_138
  loc_6CAB3A: ImpAdCallFPR4  = Mid(, , )
  loc_6CAB3F: FLdRfVar var_138
  loc_6CAB42: ConcatVar var_148
  loc_6CAB46: LitVarI2 var_178, 2
  loc_6CAB4B: LitI4 1
  loc_6CAB50: FLdZeroAd var_2A4
  loc_6CAB53: CVarAd
  loc_6CAB57: FLdRfVar var_188
  loc_6CAB5A: ImpAdCallFPR4  = Mid(, , )
  loc_6CAB5F: FLdRfVar var_188
  loc_6CAB62: ConcatVar var_198
  loc_6CAB66: LitVarI2 var_1D8, 2
  loc_6CAB6B: LitI4 1
  loc_6CAB70: FLdRfVar var_1A8
  loc_6CAB73: CStrVarTmp
  loc_6CAB74: CVarStr var_1B8
  loc_6CAB77: FLdRfVar var_1E8
  loc_6CAB7A: ImpAdCallFPR4  = Mid(, , )
  loc_6CAB7F: FLdRfVar var_1E8
  loc_6CAB82: ConcatVar var_1F8
  loc_6CAB86: LitVarI2 var_228, 2
  loc_6CAB8B: LitI4 4
  loc_6CAB90: FLdZeroAd var_2A8
  loc_6CAB93: CVarAd
  loc_6CAB97: FLdRfVar var_238
  loc_6CAB9A: ImpAdCallFPR4  = Mid(, , )
  loc_6CAB9F: FLdRfVar var_238
  loc_6CABA2: ConcatVar var_248
  loc_6CABA6: LitVarI2 var_278, 2
  loc_6CABAB: LitI4 7
  loc_6CABB0: FLdZeroAd var_2AC
  loc_6CABB3: CVarAd
  loc_6CABB7: FLdRfVar var_288
  loc_6CABBA: ImpAdCallFPR4  = Mid(, , )
  loc_6CABBF: FLdRfVar var_288
  loc_6CABC2: ConcatVar var_298
  loc_6CABC6: CStrVarTmp
  loc_6CABC7: FStStr var_88
  loc_6CABCA: FFreeAd var_B8 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = ""
  loc_6CABD9: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_F8 = "": var_138 = "": var_158 = "": var_178 = "": var_148 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_198 = "": var_1E8 = "": var_208 = "": var_228 = "": var_1F8 = "": var_238 = "": var_258 = "": var_278 = "": var_248 = "": var_288 = ""
  loc_6CAC0C: FLdPrThis
  loc_6CAC0D: VCallAd Control_ID_FechaFinal
  loc_6CAC10: FStAdFunc var_29C
  loc_6CAC13: FLdPrThis
  loc_6CAC14: VCallAd Control_ID_FechaFinal
  loc_6CAC17: FStAdFunc var_2A0
  loc_6CAC1A: FLdPrThis
  loc_6CAC1B: VCallAd Control_ID_FechaFinal
  loc_6CAC1E: FStAdFunc var_2A4
  loc_6CAC21: FLdPrThis
  loc_6CAC22: VCallAd Control_ID_HoraFinal
  loc_6CAC25: FStAdFunc var_B8
  loc_6CAC28: FLdPr var_B8
  loc_6CAC2B: LateIdLdVar var_1A8 DispID_22 0
  loc_6CAC32: PopAd
  loc_6CAC34: FLdPrThis
  loc_6CAC35: VCallAd Control_ID_HoraFinal
  loc_6CAC38: FStAdFunc var_2A8
  loc_6CAC3B: FLdPrThis
  loc_6CAC3C: VCallAd Control_ID_HoraFinal
  loc_6CAC3F: FStAdFunc var_2AC
  loc_6CAC42: LitVarI2 var_E8, 4
  loc_6CAC47: LitI4 7
  loc_6CAC4C: FLdZeroAd var_29C
  loc_6CAC4F: CVarAd
  loc_6CAC53: FLdRfVar var_F8
  loc_6CAC56: ImpAdCallFPR4  = Mid(, , )
  loc_6CAC5B: FLdRfVar var_F8
  loc_6CAC5E: LitVarI2 var_128, 2
  loc_6CAC63: LitI4 4
  loc_6CAC68: FLdZeroAd var_2A0
  loc_6CAC6B: CVarAd
  loc_6CAC6F: FLdRfVar var_138
  loc_6CAC72: ImpAdCallFPR4  = Mid(, , )
  loc_6CAC77: FLdRfVar var_138
  loc_6CAC7A: ConcatVar var_148
  loc_6CAC7E: LitVarI2 var_178, 2
  loc_6CAC83: LitI4 1
  loc_6CAC88: FLdZeroAd var_2A4
  loc_6CAC8B: CVarAd
  loc_6CAC8F: FLdRfVar var_188
  loc_6CAC92: ImpAdCallFPR4  = Mid(, , )
  loc_6CAC97: FLdRfVar var_188
  loc_6CAC9A: ConcatVar var_198
  loc_6CAC9E: LitVarI2 var_1D8, 2
  loc_6CACA3: LitI4 1
  loc_6CACA8: FLdRfVar var_1A8
  loc_6CACAB: CStrVarTmp
  loc_6CACAC: CVarStr var_1B8
  loc_6CACAF: FLdRfVar var_1E8
  loc_6CACB2: ImpAdCallFPR4  = Mid(, , )
  loc_6CACB7: FLdRfVar var_1E8
  loc_6CACBA: ConcatVar var_1F8
  loc_6CACBE: LitVarI2 var_228, 2
  loc_6CACC3: LitI4 4
  loc_6CACC8: FLdZeroAd var_2A8
  loc_6CACCB: CVarAd
  loc_6CACCF: FLdRfVar var_238
  loc_6CACD2: ImpAdCallFPR4  = Mid(, , )
  loc_6CACD7: FLdRfVar var_238
  loc_6CACDA: ConcatVar var_248
  loc_6CACDE: LitVarI2 var_278, 2
  loc_6CACE3: LitI4 7
  loc_6CACE8: FLdZeroAd var_2AC
  loc_6CACEB: CVarAd
  loc_6CACEF: FLdRfVar var_288
  loc_6CACF2: ImpAdCallFPR4  = Mid(, , )
  loc_6CACF7: FLdRfVar var_288
  loc_6CACFA: ConcatVar var_298
  loc_6CACFE: CStrVarTmp
  loc_6CACFF: FStStr var_8C
  loc_6CAD02: FFreeAd var_B8 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = ""
  loc_6CAD11: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_F8 = "": var_138 = "": var_158 = "": var_178 = "": var_148 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_198 = "": var_1E8 = "": var_208 = "": var_228 = "": var_1F8 = "": var_238 = "": var_258 = "": var_278 = "": var_248 = "": var_288 = ""
  loc_6CAD44: LitStr vbNullString
  loc_6CAD47: FStStrCopy var_94
  loc_6CAD4A: LitStr vbNullString
  loc_6CAD4D: FStStrCopy var_98
  loc_6CAD50: LitI2_Byte 0
  loc_6CAD52: CUI1I2
  loc_6CAD54: FStUI1 var_A4
  loc_6CAD58: LitI2_Byte 0
  loc_6CAD5A: CUI1I2
  loc_6CAD5C: FStUI1 var_A6
  loc_6CAD60: LitI2_Byte 1
  loc_6CAD62: CUI1I2
  loc_6CAD64: FLdRfVar var_A2
  loc_6CAD67: LitI2_Byte &H20
  loc_6CAD69: CUI1I2
  loc_6CAD6B: ForUI1 var_2B0
  loc_6CAD71: FLdUI1
  loc_6CAD75: CI2UI1
  loc_6CAD77: LitI2_Byte &HA
  loc_6CAD79: LeI2
  loc_6CAD7A: BranchF loc_6CAE72
  loc_6CAD7D: FLdRfVar var_2B2
  loc_6CAD80: FLdPrThis
  loc_6CAD81: VCallAd Control_ID_optGNC
  loc_6CAD84: FStAdFunc var_B8
  loc_6CAD87: FLdPr var_B8
  loc_6CAD8A:  = Me.Value
  loc_6CAD8F: FLdI2 var_2B2
  loc_6CAD92: FLdRfVar var_2B4
  loc_6CAD95: FLdUI1
  loc_6CAD99: CI2UI1
  loc_6CAD9B: ImpAdLdRf MemVar_74A220
  loc_6CAD9E: NewIfNullPr clsProducts
  loc_6CADA1:  = clsProducts.hWnd
  loc_6CADA6: FLdI2 var_2B4
  loc_6CADA9: AndI4
  loc_6CADAA: FFree1Ad var_B8
  loc_6CADAD: BranchF loc_6CADD3
  loc_6CADB0: FLdRfVar var_2B4
  loc_6CADB3: FLdRfVar var_AA
  loc_6CADB6: FLdRfVar var_A6
  loc_6CADB9: FLdRfVar var_98
  loc_6CADBC: FLdUI1
  loc_6CADC0: CI2UI1
  loc_6CADC2: PopTmpLdAd2 var_2B2
  loc_6CADC5: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CADCA: FLdI2 var_2B4
  loc_6CADCD: FStI2 var_AA
  loc_6CADD0: Branch loc_6CAE72
  loc_6CADD3: FLdRfVar var_2B2
  loc_6CADD6: FLdPrThis
  loc_6CADD7: VCallAd Control_ID_optFuel
  loc_6CADDA: FStAdFunc var_B8
  loc_6CADDD: FLdPr var_B8
  loc_6CADE0:  = Me.Value
  loc_6CADE5: FLdI2 var_2B2
  loc_6CADE8: FLdRfVar var_2B4
  loc_6CADEB: FLdUI1
  loc_6CADEF: CI2UI1
  loc_6CADF1: ImpAdLdRf MemVar_74A220
  loc_6CADF4: NewIfNullPr clsProducts
  loc_6CADF7:  = clsProducts.hWnd
  loc_6CADFC: FLdI2 var_2B4
  loc_6CADFF: NotI4
  loc_6CAE00: AndI4
  loc_6CAE01: FFree1Ad var_B8
  loc_6CAE04: BranchF loc_6CAE2A
  loc_6CAE07: FLdRfVar var_2B4
  loc_6CAE0A: FLdRfVar var_AA
  loc_6CAE0D: FLdRfVar var_A6
  loc_6CAE10: FLdRfVar var_98
  loc_6CAE13: FLdUI1
  loc_6CAE17: CI2UI1
  loc_6CAE19: PopTmpLdAd2 var_2B2
  loc_6CAE1C: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CAE21: FLdI2 var_2B4
  loc_6CAE24: FStI2 var_AA
  loc_6CAE27: Branch loc_6CAE72
  loc_6CAE2A: FLdRfVar var_2B2
  loc_6CAE2D: FLdPrThis
  loc_6CAE2E: VCallAd Control_ID_optAll
  loc_6CAE31: FStAdFunc var_B8
  loc_6CAE34: FLdPr var_B8
  loc_6CAE37:  = Me.Value
  loc_6CAE3C: FLdI2 var_2B2
  loc_6CAE3F: FFree1Ad var_B8
  loc_6CAE42: BranchF loc_6CAE68
  loc_6CAE45: FLdRfVar var_2B4
  loc_6CAE48: FLdRfVar var_AA
  loc_6CAE4B: FLdRfVar var_A6
  loc_6CAE4E: FLdRfVar var_98
  loc_6CAE51: FLdUI1
  loc_6CAE55: CI2UI1
  loc_6CAE57: PopTmpLdAd2 var_2B2
  loc_6CAE5A: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CAE5F: FLdI2 var_2B4
  loc_6CAE62: FStI2 var_AA
  loc_6CAE65: Branch loc_6CAE72
  loc_6CAE68: ILdRf var_98
  loc_6CAE6B: LitStr "0"
  loc_6CAE6E: ConcatStr
  loc_6CAE6F: FStStr var_98
  loc_6CAE72: FLdRfVar var_2B2
  loc_6CAE75: FLdPrThis
  loc_6CAE76: VCallAd Control_ID_optGNC
  loc_6CAE79: FStAdFunc var_B8
  loc_6CAE7C: FLdPr var_B8
  loc_6CAE7F:  = Me.Value
  loc_6CAE84: FLdI2 var_2B2
  loc_6CAE87: FLdUI1
  loc_6CAE8B: CI2UI1
  loc_6CAE8D: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6CAE92: AndI4
  loc_6CAE93: FFree1Ad var_B8
  loc_6CAE96: BranchF loc_6CAEBC
  loc_6CAE99: FLdRfVar var_2B4
  loc_6CAE9C: FLdRfVar var_A8
  loc_6CAE9F: FLdRfVar var_A4
  loc_6CAEA2: FLdRfVar var_94
  loc_6CAEA5: FLdUI1
  loc_6CAEA9: CI2UI1
  loc_6CAEAB: PopTmpLdAd2 var_2B2
  loc_6CAEAE: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CAEB3: FLdI2 var_2B4
  loc_6CAEB6: FStI2 var_A8
  loc_6CAEB9: Branch loc_6CAF4F
  loc_6CAEBC: FLdRfVar var_2B2
  loc_6CAEBF: FLdPrThis
  loc_6CAEC0: VCallAd Control_ID_optFuel
  loc_6CAEC3: FStAdFunc var_B8
  loc_6CAEC6: FLdPr var_B8
  loc_6CAEC9:  = Me.Value
  loc_6CAECE: FLdI2 var_2B2
  loc_6CAED1: FLdUI1
  loc_6CAED5: CI2UI1
  loc_6CAED7: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6CAEDC: NotI4
  loc_6CAEDD: AndI4
  loc_6CAEDE: FFree1Ad var_B8
  loc_6CAEE1: BranchF loc_6CAF07
  loc_6CAEE4: FLdRfVar var_2B4
  loc_6CAEE7: FLdRfVar var_A8
  loc_6CAEEA: FLdRfVar var_A4
  loc_6CAEED: FLdRfVar var_94
  loc_6CAEF0: FLdUI1
  loc_6CAEF4: CI2UI1
  loc_6CAEF6: PopTmpLdAd2 var_2B2
  loc_6CAEF9: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CAEFE: FLdI2 var_2B4
  loc_6CAF01: FStI2 var_A8
  loc_6CAF04: Branch loc_6CAF4F
  loc_6CAF07: FLdRfVar var_2B2
  loc_6CAF0A: FLdPrThis
  loc_6CAF0B: VCallAd Control_ID_optAll
  loc_6CAF0E: FStAdFunc var_B8
  loc_6CAF11: FLdPr var_B8
  loc_6CAF14:  = Me.Value
  loc_6CAF19: FLdI2 var_2B2
  loc_6CAF1C: FFree1Ad var_B8
  loc_6CAF1F: BranchF loc_6CAF45
  loc_6CAF22: FLdRfVar var_2B4
  loc_6CAF25: FLdRfVar var_A8
  loc_6CAF28: FLdRfVar var_A4
  loc_6CAF2B: FLdRfVar var_94
  loc_6CAF2E: FLdUI1
  loc_6CAF32: CI2UI1
  loc_6CAF34: PopTmpLdAd2 var_2B2
  loc_6CAF37: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6CAF3C: FLdI2 var_2B4
  loc_6CAF3F: FStI2 var_A8
  loc_6CAF42: Branch loc_6CAF4F
  loc_6CAF45: ILdRf var_94
  loc_6CAF48: LitStr "0"
  loc_6CAF4B: ConcatStr
  loc_6CAF4C: FStStr var_94
  loc_6CAF4F: FLdRfVar var_A2
  loc_6CAF52: NextUI1
  loc_6CAF58: FLdI2 var_A8
  loc_6CAF5B: NotI4
  loc_6CAF5C: FLdI2 var_AA
  loc_6CAF5F: NotI4
  loc_6CAF60: AndI4
  loc_6CAF61: BranchF loc_6CB000
  loc_6CAF64: ImpAdLdUI1
  loc_6CAF68: CI2UI1
  loc_6CAF6A: LitI2_Byte 4
  loc_6CAF6C: EqI2
  loc_6CAF6D: ImpAdLdUI1
  loc_6CAF71: CI2UI1
  loc_6CAF73: LitI2_Byte 5
  loc_6CAF75: EqI2
  loc_6CAF76: OrI4
  loc_6CAF77: BranchF loc_6CAFB4
  loc_6CAF7A: FLdRfVar var_2B8
  loc_6CAF7D: FLdRfVar var_94
  loc_6CAF80: from_stack_2v = Proc_133_34_6445B8(from_stack_1v)
  loc_6CAF85: FLdZeroAd var_2B8
  loc_6CAF88: FStStr var_94
  loc_6CAF8B: LitVarStr var_D8, "1"
  loc_6CAF90: FStVarCopyObj var_C8
  loc_6CAF93: FLdRfVar var_C8
  loc_6CAF96: LitI4 &HA
  loc_6CAF9B: FLdRfVar var_E8
  loc_6CAF9E: ImpAdCallFPR4  = String(, )
  loc_6CAFA3: FLdRfVar var_E8
  loc_6CAFA6: CStrVarTmp
  loc_6CAFA7: FStStr var_98
  loc_6CAFAA: FFreeVar var_C8 = ""
  loc_6CAFB1: Branch loc_6CB000
  loc_6CAFB4: LitVarStr var_D8, "1"
  loc_6CAFB9: FStVarCopyObj var_C8
  loc_6CAFBC: FLdRfVar var_C8
  loc_6CAFBF: LitI4 &H20
  loc_6CAFC4: FLdRfVar var_E8
  loc_6CAFC7: ImpAdCallFPR4  = String(, )
  loc_6CAFCC: FLdRfVar var_E8
  loc_6CAFCF: CStrVarTmp
  loc_6CAFD0: FStStr var_94
  loc_6CAFD3: FFreeVar var_C8 = ""
  loc_6CAFDA: LitVarStr var_D8, "1"
  loc_6CAFDF: FStVarCopyObj var_C8
  loc_6CAFE2: FLdRfVar var_C8
  loc_6CAFE5: LitI4 &HA
  loc_6CAFEA: FLdRfVar var_E8
  loc_6CAFED: ImpAdCallFPR4  = String(, )
  loc_6CAFF2: FLdRfVar var_E8
  loc_6CAFF5: CStrVarTmp
  loc_6CAFF6: FStStr var_98
  loc_6CAFF9: FFreeVar var_C8 = ""
  loc_6CB000: FLdI2 var_A8
  loc_6CB003: NotI4
  loc_6CB004: FLdI2 var_AA
  loc_6CB007: AndI4
  loc_6CB008: BranchF loc_6CB031
  loc_6CB00B: LitVarStr var_D8, "1"
  loc_6CB010: FStVarCopyObj var_C8
  loc_6CB013: FLdRfVar var_C8
  loc_6CB016: LitI4 &H20
  loc_6CB01B: FLdRfVar var_E8
  loc_6CB01E: ImpAdCallFPR4  = String(, )
  loc_6CB023: FLdRfVar var_E8
  loc_6CB026: CStrVarTmp
  loc_6CB027: FStStr var_94
  loc_6CB02A: FFreeVar var_C8 = ""
  loc_6CB031: FLdI2 var_A8
  loc_6CB034: FLdI2 var_AA
  loc_6CB037: NotI4
  loc_6CB038: AndI4
  loc_6CB039: BranchF loc_6CB062
  loc_6CB03C: LitVarStr var_D8, "1"
  loc_6CB041: FStVarCopyObj var_C8
  loc_6CB044: FLdRfVar var_C8
  loc_6CB047: LitI4 &HA
  loc_6CB04C: FLdRfVar var_E8
  loc_6CB04F: ImpAdCallFPR4  = String(, )
  loc_6CB054: FLdRfVar var_E8
  loc_6CB057: CStrVarTmp
  loc_6CB058: FStStr var_98
  loc_6CB05B: FFreeVar var_C8 = ""
  loc_6CB062: LitStr vbNullString
  loc_6CB065: FStStrCopy var_B0
  loc_6CB068: LitI2_Byte 0
  loc_6CB06A: FStI2 var_AC
  loc_6CB06D: LitI2_Byte 1
  loc_6CB06F: CUI1I2
  loc_6CB071: FLdRfVar var_A2
  loc_6CB074: FLdRfVar var_2B2
  loc_6CB077: FLdPrThis
  loc_6CB078: VCallAd Control_ID_lstDiasSemana
  loc_6CB07B: FStAdFunc var_B8
  loc_6CB07E: FLdPr var_B8
  loc_6CB081:  = Me.ListCount
  loc_6CB086: FLdI2 var_2B2
  loc_6CB089: CUI1I2
  loc_6CB08B: FFree1Ad var_B8
  loc_6CB08E: ForUI1 var_2BC
  loc_6CB094: FLdRfVar var_2B2
  loc_6CB097: FLdUI1
  loc_6CB09B: CI2UI1
  loc_6CB09D: LitI2_Byte 1
  loc_6CB09F: SubI2
  loc_6CB0A0: FLdPrThis
  loc_6CB0A1: VCallAd Control_ID_lstDiasSemana
  loc_6CB0A4: FStAdFunc var_B8
  loc_6CB0A7: FLdPr var_B8
  loc_6CB0AA:  = Me.Selected
  loc_6CB0AF: FLdI2 var_2B2
  loc_6CB0B2: FFree1Ad var_B8
  loc_6CB0B5: BranchF loc_6CB0CA
  loc_6CB0B8: LitI2_Byte &HFF
  loc_6CB0BA: FStI2 var_AC
  loc_6CB0BD: ILdRf var_B0
  loc_6CB0C0: LitStr "1"
  loc_6CB0C3: ConcatStr
  loc_6CB0C4: FStStr var_B0
  loc_6CB0C7: Branch loc_6CB0D4
  loc_6CB0CA: ILdRf var_B0
  loc_6CB0CD: LitStr "0"
  loc_6CB0D0: ConcatStr
  loc_6CB0D1: FStStr var_B0
  loc_6CB0D4: FLdRfVar var_A2
  loc_6CB0D7: NextUI1
  loc_6CB0DD: FLdI2 var_AC
  loc_6CB0E0: NotI4
  loc_6CB0E1: BranchF loc_6CB0EA
  loc_6CB0E4: LitStr "1111111"
  loc_6CB0E7: FStStrCopy var_B0
  loc_6CB0EA: FLdPrThis
  loc_6CB0EB: VCallAd Control_ID_chkDifSales
  loc_6CB0EE: CVarAd
  loc_6CB0F2: CBoolVarNull
  loc_6CB0F4: FFree1Var var_C8 = ""
  loc_6CB0F7: BranchF loc_6CB103
  loc_6CB0FA: LitStr "1"
  loc_6CB0FD: FStStrCopy var_B4
  loc_6CB100: Branch loc_6CB109
  loc_6CB103: LitStr "0"
  loc_6CB106: FStStrCopy var_B4
  loc_6CB109: FLdRfVar var_2B8
  loc_6CB10C: LitI2_Byte 0
  loc_6CB10E: FLdPrThis
  loc_6CB10F: VCallAd Control_ID_lstPump
  loc_6CB112: FStAdFunc var_B8
  loc_6CB115: FLdPr var_B8
  loc_6CB118: from_stack_2 = Me.List(from_stack_1)
  loc_6CB11D: ILdRf var_2B8
  loc_6CB120: LitStr vbNullString
  loc_6CB123: EqStr
  loc_6CB125: FFree1Str var_2B8
  loc_6CB128: FFree1Ad var_B8
  loc_6CB12B: BranchF loc_6CB12E
  loc_6CB12E: FLdRfVar var_2B8
  loc_6CB131: LitI2_Byte 0
  loc_6CB133: FLdPrThis
  loc_6CB134: VCallAd Control_ID_lstPump
  loc_6CB137: FStAdFunc var_B8
  loc_6CB13A: FLdPr var_B8
  loc_6CB13D: from_stack_2 = Me.List(from_stack_1)
  loc_6CB142: ILdRf var_2B8
  loc_6CB145: LitStr "Sin surtidores"
  loc_6CB148: EqStr
  loc_6CB14A: NotI4
  loc_6CB14B: FFree1Str var_2B8
  loc_6CB14E: FFree1Ad var_B8
  loc_6CB151: BranchF loc_6CB29A
  loc_6CB154: FLdRfVar var_2B2
  loc_6CB157: FLdPrThis
  loc_6CB158: VCallAd Control_ID_chkRango
  loc_6CB15B: FStAdFunc var_B8
  loc_6CB15E: FLdPr var_B8
  loc_6CB161:  = Me.Value
  loc_6CB166: ImpAdLdUI1
  loc_6CB16A: CI2UI1
  loc_6CB16C: LitI2_Byte 4
  loc_6CB16E: EqI2
  loc_6CB16F: ImpAdLdUI1
  loc_6CB173: CI2UI1
  loc_6CB175: LitI2_Byte 5
  loc_6CB177: EqI2
  loc_6CB178: FLdRfVar var_2B4
  loc_6CB17B: FLdPrThis
  loc_6CB17C: VCallAd Control_ID_optGNC
  loc_6CB17F: FStAdFunc var_29C
  loc_6CB182: FLdPr var_29C
  loc_6CB185:  = Me.Value
  loc_6CB18A: FLdI2 var_2B4
  loc_6CB18D: LitI2_Byte &HFF
  loc_6CB18F: EqI2
  loc_6CB190: AndI4
  loc_6CB191: OrI4
  loc_6CB192: ILdRf var_94
  loc_6CB195: ILdRf var_98
  loc_6CB198: ConcatStr
  loc_6CB199: FStStrNoPop var_2B8
  loc_6CB19C: ILdRf var_B0
  loc_6CB19F: ConcatStr
  loc_6CB1A0: FStStrNoPop var_2C0
  loc_6CB1A3: ILdRf var_B4
  loc_6CB1A6: ConcatStr
  loc_6CB1A7: FStStrNoPop var_2C4
  loc_6CB1AA: FLdI2 var_2B2
  loc_6CB1AD: CI4UI1
  loc_6CB1AE: LitI4 1
  loc_6CB1B3: EqI4
  loc_6CB1B4: ILdRf var_8C
  loc_6CB1B7: ILdRf var_88
  loc_6CB1BA: ImpAdCallFPR4  = Proc_158_11_660378(, , , )
  loc_6CB1BF: FFreeStr var_2B8 = "": var_2C0 = ""
  loc_6CB1C8: FFreeAd var_B8 = ""
  loc_6CB1CF: LitI4 1
  loc_6CB1D4: ImpAdLdI4 MemVar_74C73C
  loc_6CB1D7: Ary1LdI4
  loc_6CB1D8: LitStr vbNullString
  loc_6CB1DB: EqStr
  loc_6CB1DD: BranchF loc_6CB23A
  loc_6CB1E0: LitVar_Missing var_E8
  loc_6CB1E3: LitVar_Missing var_C8
  loc_6CB1E6: FLdPr Me
  loc_6CB1E9: MemLdRfVar from_stack_1.global_116
  loc_6CB1EC: CVarRef
  loc_6CB1F1: LitI4 &H10
  loc_6CB1F6: FLdPr Me
  loc_6CB1F9: MemLdRfVar from_stack_1.global_112
  loc_6CB1FC: CVarRef
  loc_6CB201: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CB206: FFreeVar var_C8 = ""
  loc_6CB20D: LitI2_Byte &HFF
  loc_6CB20F: FLdPr Me
  loc_6CB212: VCallAd Control_ID_List1
  loc_6CB215: FStAdFunc var_B8
  loc_6CB218: FLdPr var_B8
  loc_6CB21B: Me.Visible = from_stack_1b
  loc_6CB220: FFree1Ad var_B8
  loc_6CB223: LitI2_Byte 0
  loc_6CB225: FLdPr Me
  loc_6CB228: VCallAd Control_ID_lbWait
  loc_6CB22B: FStAdFunc var_B8
  loc_6CB22E: FLdPr var_B8
  loc_6CB231: Me.Visible = from_stack_1b
  loc_6CB236: FFree1Ad var_B8
  loc_6CB239: ExitProcHresult
  loc_6CB23A: LitI2_Byte 3
  loc_6CB23C: LitNothing
  loc_6CB23E: CastAd
  loc_6CB241: FStAdFunc var_29C
  loc_6CB244: FLdRfVar var_29C
  loc_6CB247: LitNothing
  loc_6CB249: CastAd
  loc_6CB24C: FStAdFunc var_B8
  loc_6CB24F: FLdRfVar var_B8
  loc_6CB252: LitI2_Byte 0
  loc_6CB254: PopTmpLdAd2 var_2B2
  loc_6CB257: LitI4 2
  loc_6CB25C: PopTmpLdAdStr var_2C8
  loc_6CB25F: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_6CB264: FFreeAd var_B8 = ""
  loc_6CB26B: LitI2_Byte &HFF
  loc_6CB26D: FLdPr Me
  loc_6CB270: VCallAd Control_ID_List1
  loc_6CB273: FStAdFunc var_B8
  loc_6CB276: FLdPr var_B8
  loc_6CB279: Me.Visible = from_stack_1b
  loc_6CB27E: FFree1Ad var_B8
  loc_6CB281: LitI2_Byte 0
  loc_6CB283: FLdPr Me
  loc_6CB286: VCallAd Control_ID_lbWait
  loc_6CB289: FStAdFunc var_B8
  loc_6CB28C: FLdPr var_B8
  loc_6CB28F: Me.Visible = from_stack_1b
  loc_6CB294: FFree1Ad var_B8
  loc_6CB297: Branch loc_6CB2C3
  loc_6CB29A: LitVar_Missing var_108
  loc_6CB29D: LitVar_Missing var_F8
  loc_6CB2A0: LitVar_Missing var_E8
  loc_6CB2A3: LitI4 &H40
  loc_6CB2A8: LitVarStr var_D8, "No existen surtidores asociados a un producto GNC"
  loc_6CB2AD: FStVarCopyObj var_C8
  loc_6CB2B0: FLdRfVar var_C8
  loc_6CB2B3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CB2B8: FFreeVar var_C8 = "": var_E8 = "": var_F8 = ""
  loc_6CB2C3: ExitProcHresult
  loc_6CB2C4: LitVar_Missing var_108
  loc_6CB2C7: LitVar_Missing var_F8
  loc_6CB2CA: LitVar_Missing var_E8
  loc_6CB2CD: LitI4 0
  loc_6CB2D2: FLdRfVar var_2B8
  loc_6CB2D5: ImpAdCallI2 Err 'rtcErrObj
  loc_6CB2DA: FStAdFunc var_B8
  loc_6CB2DD: FLdPr var_B8
  loc_6CB2E0:  = Err.Description
  loc_6CB2E5: FLdZeroAd var_2B8
  loc_6CB2E8: CVarStr var_C8
  loc_6CB2EB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6CB2F0: FFree1Ad var_B8
  loc_6CB2F3: FFreeVar var_C8 = "": var_E8 = "": var_F8 = ""
  loc_6CB2FE: ExitProcHresult
End Sub

Private Sub cmdSiguiente_Click() '5DC9B8
  'Data Table: 45294C
  loc_5DC974: FLdPr Me
  loc_5DC977: MemLdI2 global_80
  loc_5DC97A: LitI2_Byte 1
  loc_5DC97C: AddI2
  loc_5DC97D: FLdPr Me
  loc_5DC980: MemStI2 global_80
  loc_5DC983: LitI2_Byte 3
  loc_5DC985: LitNothing
  loc_5DC987: CastAd
  loc_5DC98A: FStAdFunc var_94
  loc_5DC98D: FLdRfVar var_94
  loc_5DC990: LitNothing
  loc_5DC992: CastAd
  loc_5DC995: FStAdFunc var_90
  loc_5DC998: FLdRfVar var_90
  loc_5DC99B: LitI2_Byte 0
  loc_5DC99D: PopTmpLdAd2 var_8A
  loc_5DC9A0: LitI4 2
  loc_5DC9A5: PopTmpLdAdStr var_88
  loc_5DC9A8: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_5DC9AD: FFreeAd var_90 = ""
  loc_5DC9B4: ExitProcHresult
  loc_5DC9B5: PopTmpLdAd2 arg_17
End Sub

Private Sub Form_Load() '713C68
  'Data Table: 45294C
  loc_7124A0: LitVarI2 var_A8, 1
  loc_7124A5: LitI4 4
  loc_7124AA: ImpAdLdI4 MemVar_74BEAC
  loc_7124AD: ImpAdCallI2 Mid$(, , )
  loc_7124B2: FStStrNoPop var_AC
  loc_7124B5: LitStr "1"
  loc_7124B8: EqStr
  loc_7124BA: FFree1Str var_AC
  loc_7124BD: FFree1Var var_A8 = ""
  loc_7124C0: BranchF loc_7124DA
  loc_7124C3: LitVar_FALSE
  loc_7124C7: PopAdLdVar
  loc_7124C8: FLdPrThis
  loc_7124C9: VCallAd Control_ID_cmdSave
  loc_7124CC: FStAdFunc var_B0
  loc_7124CF: FLdPr var_B0
  loc_7124D2: LateIdSt
  loc_7124D7: FFree1Ad var_B0
  loc_7124DA: LitI2_Byte 0
  loc_7124DC: FLdPrThis
  loc_7124DD: VCallAd Control_ID_cmdPrevio
  loc_7124E0: FStAdFunc var_B0
  loc_7124E3: FLdPr var_B0
  loc_7124E6: Me.Enabled = from_stack_1b
  loc_7124EB: FFree1Ad var_B0
  loc_7124EE: LitI2_Byte 0
  loc_7124F0: FLdPrThis
  loc_7124F1: VCallAd Control_ID_cmdSiguiente
  loc_7124F4: FStAdFunc var_B0
  loc_7124F7: FLdPr var_B0
  loc_7124FA: Me.Enabled = from_stack_1b
  loc_7124FF: FFree1Ad var_B0
  loc_712502: LitI2_Byte 1
  loc_712504: FLdPr Me
  loc_712507: MemStI2 global_80
  loc_71250A: FLdRfVar var_1DC
  loc_71250D: LitVar_Missing var_1D8
  loc_712510: LitVar_Missing var_1B8
  loc_712513: LitVar_Missing var_198
  loc_712516: LitVar_Missing var_178
  loc_712519: LitVar_Missing var_158
  loc_71251C: LitVar_Missing var_138
  loc_71251F: LitVar_Missing var_118
  loc_712522: LitVar_Missing var_F8
  loc_712525: LitVar_Missing var_D8
  loc_712528: LitVar_Missing var_A8
  loc_71252B: LitStr "Domingo"
  loc_71252E: FStStrCopy var_AC
  loc_712531: FLdRfVar var_AC
  loc_712534: LitI4 &H2F
  loc_712539: PopTmpLdAdStr var_B8
  loc_71253C: LitI2_Byte &H1B
  loc_71253E: PopTmpLdAd2 var_B2
  loc_712541: ImpAdLdRf MemVar_74C7D0
  loc_712544: NewIfNullPr clsMsg
  loc_712547: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71254C: LitVar_Missing var_1EC
  loc_71254F: PopAdLdVar
  loc_712550: ILdRf var_1DC
  loc_712553: FLdPrThis
  loc_712554: VCallAd Control_ID_lstDiasSemana
  loc_712557: FStAdFunc var_B0
  loc_71255A: FLdPr var_B0
  loc_71255D: Me.AddItem from_stack_1, from_stack_2
  loc_712562: FFreeStr var_AC = ""
  loc_712569: FFree1Ad var_B0
  loc_71256C: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712583: FLdRfVar var_1DC
  loc_712586: LitVar_Missing var_1D8
  loc_712589: LitVar_Missing var_1B8
  loc_71258C: LitVar_Missing var_198
  loc_71258F: LitVar_Missing var_178
  loc_712592: LitVar_Missing var_158
  loc_712595: LitVar_Missing var_138
  loc_712598: LitVar_Missing var_118
  loc_71259B: LitVar_Missing var_F8
  loc_71259E: LitVar_Missing var_D8
  loc_7125A1: LitVar_Missing var_A8
  loc_7125A4: LitStr "Lunes"
  loc_7125A7: FStStrCopy var_AC
  loc_7125AA: FLdRfVar var_AC
  loc_7125AD: LitI4 &H30
  loc_7125B2: PopTmpLdAdStr var_B8
  loc_7125B5: LitI2_Byte &H1B
  loc_7125B7: PopTmpLdAd2 var_B2
  loc_7125BA: ImpAdLdRf MemVar_74C7D0
  loc_7125BD: NewIfNullPr clsMsg
  loc_7125C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7125C5: LitVar_Missing var_1EC
  loc_7125C8: PopAdLdVar
  loc_7125C9: ILdRf var_1DC
  loc_7125CC: FLdPrThis
  loc_7125CD: VCallAd Control_ID_lstDiasSemana
  loc_7125D0: FStAdFunc var_B0
  loc_7125D3: FLdPr var_B0
  loc_7125D6: Me.AddItem from_stack_1, from_stack_2
  loc_7125DB: FFreeStr var_AC = ""
  loc_7125E2: FFree1Ad var_B0
  loc_7125E5: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7125FC: FLdRfVar var_1DC
  loc_7125FF: LitVar_Missing var_1D8
  loc_712602: LitVar_Missing var_1B8
  loc_712605: LitVar_Missing var_198
  loc_712608: LitVar_Missing var_178
  loc_71260B: LitVar_Missing var_158
  loc_71260E: LitVar_Missing var_138
  loc_712611: LitVar_Missing var_118
  loc_712614: LitVar_Missing var_F8
  loc_712617: LitVar_Missing var_D8
  loc_71261A: LitVar_Missing var_A8
  loc_71261D: LitStr "Martes"
  loc_712620: FStStrCopy var_AC
  loc_712623: FLdRfVar var_AC
  loc_712626: LitI4 &H31
  loc_71262B: PopTmpLdAdStr var_B8
  loc_71262E: LitI2_Byte &H1B
  loc_712630: PopTmpLdAd2 var_B2
  loc_712633: ImpAdLdRf MemVar_74C7D0
  loc_712636: NewIfNullPr clsMsg
  loc_712639: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71263E: LitVar_Missing var_1EC
  loc_712641: PopAdLdVar
  loc_712642: ILdRf var_1DC
  loc_712645: FLdPrThis
  loc_712646: VCallAd Control_ID_lstDiasSemana
  loc_712649: FStAdFunc var_B0
  loc_71264C: FLdPr var_B0
  loc_71264F: Me.AddItem from_stack_1, from_stack_2
  loc_712654: FFreeStr var_AC = ""
  loc_71265B: FFree1Ad var_B0
  loc_71265E: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712675: FLdRfVar var_1DC
  loc_712678: LitVar_Missing var_1D8
  loc_71267B: LitVar_Missing var_1B8
  loc_71267E: LitVar_Missing var_198
  loc_712681: LitVar_Missing var_178
  loc_712684: LitVar_Missing var_158
  loc_712687: LitVar_Missing var_138
  loc_71268A: LitVar_Missing var_118
  loc_71268D: LitVar_Missing var_F8
  loc_712690: LitVar_Missing var_D8
  loc_712693: LitVar_Missing var_A8
  loc_712696: LitStr "Miercoles"
  loc_712699: FStStrCopy var_AC
  loc_71269C: FLdRfVar var_AC
  loc_71269F: LitI4 &H32
  loc_7126A4: PopTmpLdAdStr var_B8
  loc_7126A7: LitI2_Byte &H1B
  loc_7126A9: PopTmpLdAd2 var_B2
  loc_7126AC: ImpAdLdRf MemVar_74C7D0
  loc_7126AF: NewIfNullPr clsMsg
  loc_7126B2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7126B7: LitVar_Missing var_1EC
  loc_7126BA: PopAdLdVar
  loc_7126BB: ILdRf var_1DC
  loc_7126BE: FLdPrThis
  loc_7126BF: VCallAd Control_ID_lstDiasSemana
  loc_7126C2: FStAdFunc var_B0
  loc_7126C5: FLdPr var_B0
  loc_7126C8: Me.AddItem from_stack_1, from_stack_2
  loc_7126CD: FFreeStr var_AC = ""
  loc_7126D4: FFree1Ad var_B0
  loc_7126D7: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7126EE: FLdRfVar var_1DC
  loc_7126F1: LitVar_Missing var_1D8
  loc_7126F4: LitVar_Missing var_1B8
  loc_7126F7: LitVar_Missing var_198
  loc_7126FA: LitVar_Missing var_178
  loc_7126FD: LitVar_Missing var_158
  loc_712700: LitVar_Missing var_138
  loc_712703: LitVar_Missing var_118
  loc_712706: LitVar_Missing var_F8
  loc_712709: LitVar_Missing var_D8
  loc_71270C: LitVar_Missing var_A8
  loc_71270F: LitStr "Jueves"
  loc_712712: FStStrCopy var_AC
  loc_712715: FLdRfVar var_AC
  loc_712718: LitI4 &H33
  loc_71271D: PopTmpLdAdStr var_B8
  loc_712720: LitI2_Byte &H1B
  loc_712722: PopTmpLdAd2 var_B2
  loc_712725: ImpAdLdRf MemVar_74C7D0
  loc_712728: NewIfNullPr clsMsg
  loc_71272B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712730: LitVar_Missing var_1EC
  loc_712733: PopAdLdVar
  loc_712734: ILdRf var_1DC
  loc_712737: FLdPrThis
  loc_712738: VCallAd Control_ID_lstDiasSemana
  loc_71273B: FStAdFunc var_B0
  loc_71273E: FLdPr var_B0
  loc_712741: Me.AddItem from_stack_1, from_stack_2
  loc_712746: FFreeStr var_AC = ""
  loc_71274D: FFree1Ad var_B0
  loc_712750: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712767: FLdRfVar var_1DC
  loc_71276A: LitVar_Missing var_1D8
  loc_71276D: LitVar_Missing var_1B8
  loc_712770: LitVar_Missing var_198
  loc_712773: LitVar_Missing var_178
  loc_712776: LitVar_Missing var_158
  loc_712779: LitVar_Missing var_138
  loc_71277C: LitVar_Missing var_118
  loc_71277F: LitVar_Missing var_F8
  loc_712782: LitVar_Missing var_D8
  loc_712785: LitVar_Missing var_A8
  loc_712788: LitStr "Viernes"
  loc_71278B: FStStrCopy var_AC
  loc_71278E: FLdRfVar var_AC
  loc_712791: LitI4 &H34
  loc_712796: PopTmpLdAdStr var_B8
  loc_712799: LitI2_Byte &H1B
  loc_71279B: PopTmpLdAd2 var_B2
  loc_71279E: ImpAdLdRf MemVar_74C7D0
  loc_7127A1: NewIfNullPr clsMsg
  loc_7127A4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7127A9: LitVar_Missing var_1EC
  loc_7127AC: PopAdLdVar
  loc_7127AD: ILdRf var_1DC
  loc_7127B0: FLdPrThis
  loc_7127B1: VCallAd Control_ID_lstDiasSemana
  loc_7127B4: FStAdFunc var_B0
  loc_7127B7: FLdPr var_B0
  loc_7127BA: Me.AddItem from_stack_1, from_stack_2
  loc_7127BF: FFreeStr var_AC = ""
  loc_7127C6: FFree1Ad var_B0
  loc_7127C9: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7127E0: FLdRfVar var_1DC
  loc_7127E3: LitVar_Missing var_1D8
  loc_7127E6: LitVar_Missing var_1B8
  loc_7127E9: LitVar_Missing var_198
  loc_7127EC: LitVar_Missing var_178
  loc_7127EF: LitVar_Missing var_158
  loc_7127F2: LitVar_Missing var_138
  loc_7127F5: LitVar_Missing var_118
  loc_7127F8: LitVar_Missing var_F8
  loc_7127FB: LitVar_Missing var_D8
  loc_7127FE: LitVar_Missing var_A8
  loc_712801: LitStr "Sabado"
  loc_712804: FStStrCopy var_AC
  loc_712807: FLdRfVar var_AC
  loc_71280A: LitI4 &H35
  loc_71280F: PopTmpLdAdStr var_B8
  loc_712812: LitI2_Byte &H1B
  loc_712814: PopTmpLdAd2 var_B2
  loc_712817: ImpAdLdRf MemVar_74C7D0
  loc_71281A: NewIfNullPr clsMsg
  loc_71281D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712822: LitVar_Missing var_1EC
  loc_712825: PopAdLdVar
  loc_712826: ILdRf var_1DC
  loc_712829: FLdPrThis
  loc_71282A: VCallAd Control_ID_lstDiasSemana
  loc_71282D: FStAdFunc var_B0
  loc_712830: FLdPr var_B0
  loc_712833: Me.AddItem from_stack_1, from_stack_2
  loc_712838: FFreeStr var_AC = ""
  loc_71283F: FFree1Ad var_B0
  loc_712842: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712859: ImpAdLdI4 MemVar_74BED8
  loc_71285C: FLdPrThis
  loc_71285D: VCallAd Control_ID_labelsurtidor2
  loc_712860: FStAdFunc var_B0
  loc_712863: FLdPr var_B0
  loc_712866: Me.Caption = from_stack_1
  loc_71286B: FFree1Ad var_B0
  loc_71286E: FLdRfVar var_A8
  loc_712871: ImpAdCallFPR4  = Now
  loc_712876: FLdRfVar var_A8
  loc_712879: FLdRfVar var_D8
  loc_71287C: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_712881: FLdRfVar var_158
  loc_712884: ImpAdCallFPR4  = Now
  loc_712889: FLdRfVar var_158
  loc_71288C: FLdRfVar var_178
  loc_71288F: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_712894: FLdRfVar var_20C
  loc_712897: ImpAdCallFPR4  = Now
  loc_71289C: FLdRfVar var_20C
  loc_71289F: FLdRfVar var_21C
  loc_7128A2: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_7128A7: LitI4 1
  loc_7128AC: LitI4 1
  loc_7128B1: LitVarStr var_98, "00"
  loc_7128B6: FStVarCopyObj var_F8
  loc_7128B9: FLdRfVar var_F8
  loc_7128BC: FLdRfVar var_D8
  loc_7128BF: FLdRfVar var_118
  loc_7128C2: ImpAdCallFPR4  = Format(, )
  loc_7128C7: FLdRfVar var_118
  loc_7128CA: LitVarStr var_C8, "/"
  loc_7128CF: ConcatVar var_138
  loc_7128D3: LitI4 1
  loc_7128D8: LitI4 1
  loc_7128DD: LitVarStr var_E8, "00"
  loc_7128E2: FStVarCopyObj var_198
  loc_7128E5: FLdRfVar var_198
  loc_7128E8: FLdRfVar var_178
  loc_7128EB: FLdRfVar var_1B8
  loc_7128EE: ImpAdCallFPR4  = Format(, )
  loc_7128F3: FLdRfVar var_1B8
  loc_7128F6: ConcatVar var_1D8
  loc_7128FA: LitVarStr var_108, "/"
  loc_7128FF: ConcatVar var_1FC
  loc_712903: LitI4 1
  loc_712908: LitI4 1
  loc_71290D: LitVarStr var_128, "0000"
  loc_712912: FStVarCopyObj var_22C
  loc_712915: FLdRfVar var_22C
  loc_712918: FLdRfVar var_21C
  loc_71291B: FLdRfVar var_23C
  loc_71291E: ImpAdCallFPR4  = Format(, )
  loc_712923: FLdRfVar var_23C
  loc_712926: ConcatVar var_24C
  loc_71292A: CStrVarTmp
  loc_71292B: CVarStr var_25C
  loc_71292E: PopAdLdVar
  loc_71292F: FLdPrThis
  loc_712930: VCallAd Control_ID_FechaInicial
  loc_712933: FStAdFunc var_B0
  loc_712936: FLdPr var_B0
  loc_712939: LateIdSt
  loc_71293E: FFree1Ad var_B0
  loc_712941: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_158 = "": var_178 = "": var_198 = "": var_138 = "": var_1B8 = "": var_1D8 = "": var_20C = "": var_21C = "": var_22C = "": var_1FC = "": var_23C = "": var_24C = ""
  loc_712966: FLdRfVar var_A8
  loc_712969: ImpAdCallFPR4  = Now
  loc_71296E: FLdRfVar var_A8
  loc_712971: FLdRfVar var_D8
  loc_712974: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_712979: FLdRfVar var_158
  loc_71297C: ImpAdCallFPR4  = Now
  loc_712981: FLdRfVar var_158
  loc_712984: FLdRfVar var_178
  loc_712987: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_71298C: FLdRfVar var_20C
  loc_71298F: ImpAdCallFPR4  = Now
  loc_712994: FLdRfVar var_20C
  loc_712997: FLdRfVar var_21C
  loc_71299A: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_71299F: LitI4 1
  loc_7129A4: LitI4 1
  loc_7129A9: LitVarStr var_98, "00"
  loc_7129AE: FStVarCopyObj var_F8
  loc_7129B1: FLdRfVar var_F8
  loc_7129B4: FLdRfVar var_D8
  loc_7129B7: FLdRfVar var_118
  loc_7129BA: ImpAdCallFPR4  = Format(, )
  loc_7129BF: FLdRfVar var_118
  loc_7129C2: LitVarStr var_C8, "/"
  loc_7129C7: ConcatVar var_138
  loc_7129CB: LitI4 1
  loc_7129D0: LitI4 1
  loc_7129D5: LitVarStr var_E8, "00"
  loc_7129DA: FStVarCopyObj var_198
  loc_7129DD: FLdRfVar var_198
  loc_7129E0: FLdRfVar var_178
  loc_7129E3: FLdRfVar var_1B8
  loc_7129E6: ImpAdCallFPR4  = Format(, )
  loc_7129EB: FLdRfVar var_1B8
  loc_7129EE: ConcatVar var_1D8
  loc_7129F2: LitVarStr var_108, "/"
  loc_7129F7: ConcatVar var_1FC
  loc_7129FB: LitI4 1
  loc_712A00: LitI4 1
  loc_712A05: LitVarStr var_128, "0000"
  loc_712A0A: FStVarCopyObj var_22C
  loc_712A0D: FLdRfVar var_22C
  loc_712A10: FLdRfVar var_21C
  loc_712A13: FLdRfVar var_23C
  loc_712A16: ImpAdCallFPR4  = Format(, )
  loc_712A1B: FLdRfVar var_23C
  loc_712A1E: ConcatVar var_24C
  loc_712A22: CStrVarTmp
  loc_712A23: CVarStr var_25C
  loc_712A26: PopAdLdVar
  loc_712A27: FLdPrThis
  loc_712A28: VCallAd Control_ID_FechaFinal
  loc_712A2B: FStAdFunc var_B0
  loc_712A2E: FLdPr var_B0
  loc_712A31: LateIdSt
  loc_712A36: FFree1Ad var_B0
  loc_712A39: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_158 = "": var_178 = "": var_198 = "": var_138 = "": var_1B8 = "": var_1D8 = "": var_20C = "": var_21C = "": var_22C = "": var_1FC = "": var_23C = "": var_24C = ""
  loc_712A5E: LitVarStr var_98, "00:00:00"
  loc_712A63: PopAdLdVar
  loc_712A64: FLdPrThis
  loc_712A65: VCallAd Control_ID_HoraInicial
  loc_712A68: FStAdFunc var_B0
  loc_712A6B: FLdPr var_B0
  loc_712A6E: LateIdSt
  loc_712A73: FFree1Ad var_B0
  loc_712A76: FLdRfVar var_A8
  loc_712A79: ImpAdCallFPR4  = Now
  loc_712A7E: FLdRfVar var_A8
  loc_712A81: FLdRfVar var_D8
  loc_712A84: ImpAdCallFPR4  = Hour()
  loc_712A89: FLdRfVar var_158
  loc_712A8C: ImpAdCallFPR4  = Now
  loc_712A91: FLdRfVar var_158
  loc_712A94: FLdRfVar var_178
  loc_712A97: ImpAdCallFPR4  = Minute()
  loc_712A9C: FLdRfVar var_20C
  loc_712A9F: ImpAdCallFPR4  = Now
  loc_712AA4: FLdRfVar var_20C
  loc_712AA7: FLdRfVar var_21C
  loc_712AAA: ImpAdCallFPR4  = Second()
  loc_712AAF: LitI4 1
  loc_712AB4: LitI4 1
  loc_712AB9: LitVarStr var_98, "00"
  loc_712ABE: FStVarCopyObj var_F8
  loc_712AC1: FLdRfVar var_F8
  loc_712AC4: FLdRfVar var_D8
  loc_712AC7: FLdRfVar var_118
  loc_712ACA: ImpAdCallFPR4  = Format(, )
  loc_712ACF: FLdRfVar var_118
  loc_712AD2: LitVarStr var_C8, ":"
  loc_712AD7: ConcatVar var_138
  loc_712ADB: LitI4 1
  loc_712AE0: LitI4 1
  loc_712AE5: LitVarStr var_E8, "00"
  loc_712AEA: FStVarCopyObj var_198
  loc_712AED: FLdRfVar var_198
  loc_712AF0: FLdRfVar var_178
  loc_712AF3: FLdRfVar var_1B8
  loc_712AF6: ImpAdCallFPR4  = Format(, )
  loc_712AFB: FLdRfVar var_1B8
  loc_712AFE: ConcatVar var_1D8
  loc_712B02: LitVarStr var_108, ":"
  loc_712B07: ConcatVar var_1FC
  loc_712B0B: LitI4 1
  loc_712B10: LitI4 1
  loc_712B15: LitVarStr var_128, "00"
  loc_712B1A: FStVarCopyObj var_22C
  loc_712B1D: FLdRfVar var_22C
  loc_712B20: FLdRfVar var_21C
  loc_712B23: FLdRfVar var_23C
  loc_712B26: ImpAdCallFPR4  = Format(, )
  loc_712B2B: FLdRfVar var_23C
  loc_712B2E: ConcatVar var_24C
  loc_712B32: CStrVarTmp
  loc_712B33: CVarStr var_25C
  loc_712B36: PopAdLdVar
  loc_712B37: FLdPrThis
  loc_712B38: VCallAd Control_ID_HoraFinal
  loc_712B3B: FStAdFunc var_B0
  loc_712B3E: FLdPr var_B0
  loc_712B41: LateIdSt
  loc_712B46: FFree1Ad var_B0
  loc_712B49: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_158 = "": var_178 = "": var_198 = "": var_138 = "": var_1B8 = "": var_1D8 = "": var_20C = "": var_21C = "": var_22C = "": var_1FC = "": var_23C = "": var_24C = ""
  loc_712B6E: FLdRfVar var_1DC
  loc_712B71: LitVar_Missing var_1D8
  loc_712B74: LitVar_Missing var_1B8
  loc_712B77: LitVar_Missing var_198
  loc_712B7A: LitVar_Missing var_178
  loc_712B7D: LitVar_Missing var_158
  loc_712B80: LitVar_Missing var_138
  loc_712B83: LitVar_Missing var_118
  loc_712B86: LitVar_Missing var_F8
  loc_712B89: LitVar_Missing var_D8
  loc_712B8C: LitVar_Missing var_A8
  loc_712B8F: LitStr "&Imprimir"
  loc_712B92: FStStrCopy var_AC
  loc_712B95: FLdRfVar var_AC
  loc_712B98: LitI4 1
  loc_712B9D: PopTmpLdAdStr var_B8
  loc_712BA0: LitI2_Byte &H1B
  loc_712BA2: PopTmpLdAd2 var_B2
  loc_712BA5: ImpAdLdRf MemVar_74C7D0
  loc_712BA8: NewIfNullPr clsMsg
  loc_712BAB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712BB0: ILdRf var_1DC
  loc_712BB3: FLdPr Me
  loc_712BB6: MemStStrCopy
  loc_712BBA: FFreeStr var_AC = ""
  loc_712BC1: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712BD8: FLdRfVar var_1DC
  loc_712BDB: LitVar_Missing var_1D8
  loc_712BDE: LitVar_Missing var_1B8
  loc_712BE1: LitVar_Missing var_198
  loc_712BE4: LitVar_Missing var_178
  loc_712BE7: LitVar_Missing var_158
  loc_712BEA: LitVar_Missing var_138
  loc_712BED: LitVar_Missing var_118
  loc_712BF0: LitVar_Missing var_F8
  loc_712BF3: LitVar_Missing var_D8
  loc_712BF6: LitVar_Missing var_A8
  loc_712BF9: LitStr "&Grabar"
  loc_712BFC: FStStrCopy var_AC
  loc_712BFF: FLdRfVar var_AC
  loc_712C02: LitI4 2
  loc_712C07: PopTmpLdAdStr var_B8
  loc_712C0A: LitI2_Byte &H1B
  loc_712C0C: PopTmpLdAd2 var_B2
  loc_712C0F: ImpAdLdRf MemVar_74C7D0
  loc_712C12: NewIfNullPr clsMsg
  loc_712C15: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712C1A: ILdRf var_1DC
  loc_712C1D: FLdPr Me
  loc_712C20: MemStStrCopy
  loc_712C24: FFreeStr var_AC = ""
  loc_712C2B: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712C42: FLdRfVar var_1DC
  loc_712C45: LitVar_Missing var_1D8
  loc_712C48: LitVar_Missing var_1B8
  loc_712C4B: LitVar_Missing var_198
  loc_712C4E: LitVar_Missing var_178
  loc_712C51: LitVar_Missing var_158
  loc_712C54: LitVar_Missing var_138
  loc_712C57: LitVar_Missing var_118
  loc_712C5A: LitVar_Missing var_F8
  loc_712C5D: LitVar_Missing var_D8
  loc_712C60: LitVar_Missing var_A8
  loc_712C63: LitStr "Debe ingresar una fecha válida (dd/mm/aaaa). Verifique por favor."
  loc_712C66: FStStrCopy var_AC
  loc_712C69: FLdRfVar var_AC
  loc_712C6C: LitI4 3
  loc_712C71: PopTmpLdAdStr var_B8
  loc_712C74: LitI2_Byte &H1B
  loc_712C76: PopTmpLdAd2 var_B2
  loc_712C79: ImpAdLdRf MemVar_74C7D0
  loc_712C7C: NewIfNullPr clsMsg
  loc_712C7F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712C84: ILdRf var_1DC
  loc_712C87: FLdPr Me
  loc_712C8A: MemStStrCopy
  loc_712C8E: FFreeStr var_AC = ""
  loc_712C95: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712CAC: FLdRfVar var_1DC
  loc_712CAF: LitVar_Missing var_1D8
  loc_712CB2: LitVar_Missing var_1B8
  loc_712CB5: LitVar_Missing var_198
  loc_712CB8: LitVar_Missing var_178
  loc_712CBB: LitVar_Missing var_158
  loc_712CBE: LitVar_Missing var_138
  loc_712CC1: LitVar_Missing var_118
  loc_712CC4: LitVar_Missing var_F8
  loc_712CC7: LitVar_Missing var_D8
  loc_712CCA: LitVar_Missing var_A8
  loc_712CCD: LitStr "Surtidor"
  loc_712CD0: FStStrCopy var_AC
  loc_712CD3: FLdRfVar var_AC
  loc_712CD6: LitI4 4
  loc_712CDB: PopTmpLdAdStr var_B8
  loc_712CDE: LitI2_Byte &H1B
  loc_712CE0: PopTmpLdAd2 var_B2
  loc_712CE3: ImpAdLdRf MemVar_74C7D0
  loc_712CE6: NewIfNullPr clsMsg
  loc_712CE9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712CEE: ILdRf var_1DC
  loc_712CF1: FLdPr Me
  loc_712CF4: MemStStrCopy
  loc_712CF8: FFreeStr var_AC = ""
  loc_712CFF: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712D16: FLdRfVar var_1DC
  loc_712D19: LitVar_Missing var_1D8
  loc_712D1C: LitVar_Missing var_1B8
  loc_712D1F: LitVar_Missing var_198
  loc_712D22: LitVar_Missing var_178
  loc_712D25: LitVar_Missing var_158
  loc_712D28: LitVar_Missing var_138
  loc_712D2B: LitVar_Missing var_118
  loc_712D2E: LitVar_Missing var_F8
  loc_712D31: LitVar_Missing var_D8
  loc_712D34: LitVar_Missing var_A8
  loc_712D37: LitStr "El período seleccionado abarca demasiados despachos."
  loc_712D3A: FStStrCopy var_AC
  loc_712D3D: FLdRfVar var_AC
  loc_712D40: LitI4 5
  loc_712D45: PopTmpLdAdStr var_B8
  loc_712D48: LitI2_Byte &H1B
  loc_712D4A: PopTmpLdAd2 var_B2
  loc_712D4D: ImpAdLdRf MemVar_74C7D0
  loc_712D50: NewIfNullPr clsMsg
  loc_712D53: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712D58: ILdRf var_1DC
  loc_712D5B: FLdPr Me
  loc_712D5E: MemStStrCopy
  loc_712D62: FFreeStr var_AC = ""
  loc_712D69: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712D80: FLdRfVar var_1DC
  loc_712D83: LitVar_Missing var_1D8
  loc_712D86: LitVar_Missing var_1B8
  loc_712D89: LitVar_Missing var_198
  loc_712D8C: LitVar_Missing var_178
  loc_712D8F: LitVar_Missing var_158
  loc_712D92: LitVar_Missing var_138
  loc_712D95: LitVar_Missing var_118
  loc_712D98: LitVar_Missing var_F8
  loc_712D9B: LitVar_Missing var_D8
  loc_712D9E: LitVar_Missing var_A8
  loc_712DA1: LitStr "Por favor reduzca el rango."
  loc_712DA4: FStStrCopy var_AC
  loc_712DA7: FLdRfVar var_AC
  loc_712DAA: LitI4 6
  loc_712DAF: PopTmpLdAdStr var_B8
  loc_712DB2: LitI2_Byte &H1B
  loc_712DB4: PopTmpLdAd2 var_B2
  loc_712DB7: ImpAdLdRf MemVar_74C7D0
  loc_712DBA: NewIfNullPr clsMsg
  loc_712DBD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712DC2: ILdRf var_1DC
  loc_712DC5: FLdPr Me
  loc_712DC8: MemStStrCopy
  loc_712DCC: FFreeStr var_AC = ""
  loc_712DD3: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712DEA: FLdRfVar var_1DC
  loc_712DED: LitVar_Missing var_1D8
  loc_712DF0: LitVar_Missing var_1B8
  loc_712DF3: LitVar_Missing var_198
  loc_712DF6: LitVar_Missing var_178
  loc_712DF9: LitVar_Missing var_158
  loc_712DFC: LitVar_Missing var_138
  loc_712DFF: LitVar_Missing var_118
  loc_712E02: LitVar_Missing var_F8
  loc_712E05: LitVar_Missing var_D8
  loc_712E08: LitVar_Missing var_A8
  loc_712E0B: LitStr "Despachos Anteriores"
  loc_712E0E: FStStrCopy var_AC
  loc_712E11: FLdRfVar var_AC
  loc_712E14: LitI4 7
  loc_712E19: PopTmpLdAdStr var_B8
  loc_712E1C: LitI2_Byte &H1B
  loc_712E1E: PopTmpLdAd2 var_B2
  loc_712E21: ImpAdLdRf MemVar_74C7D0
  loc_712E24: NewIfNullPr clsMsg
  loc_712E27: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712E2C: ILdRf var_1DC
  loc_712E2F: FLdPr Me
  loc_712E32: MemStStrCopy
  loc_712E36: FFreeStr var_AC = ""
  loc_712E3D: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712E54: FLdRfVar var_1DC
  loc_712E57: LitVar_Missing var_1D8
  loc_712E5A: LitVar_Missing var_1B8
  loc_712E5D: LitVar_Missing var_198
  loc_712E60: LitVar_Missing var_178
  loc_712E63: LitVar_Missing var_158
  loc_712E66: LitVar_Missing var_138
  loc_712E69: LitVar_Missing var_118
  loc_712E6C: LitVar_Missing var_F8
  loc_712E6F: LitVar_Missing var_D8
  loc_712E72: LitVar_Missing var_A8
  loc_712E75: LitStr "No existen datos a reportar. Verifique por favor."
  loc_712E78: FStStrCopy var_AC
  loc_712E7B: FLdRfVar var_AC
  loc_712E7E: LitI4 &H36
  loc_712E83: PopTmpLdAdStr var_B8
  loc_712E86: LitI2_Byte &H1B
  loc_712E88: PopTmpLdAd2 var_B2
  loc_712E8B: ImpAdLdRf MemVar_74C7D0
  loc_712E8E: NewIfNullPr clsMsg
  loc_712E91: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712E96: ILdRf var_1DC
  loc_712E99: FLdPr Me
  loc_712E9C: MemStStrCopy
  loc_712EA0: FFreeStr var_AC = ""
  loc_712EA7: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712EBE: FLdRfVar var_1DC
  loc_712EC1: LitVar_Missing var_1D8
  loc_712EC4: LitVar_Missing var_1B8
  loc_712EC7: LitVar_Missing var_198
  loc_712ECA: LitVar_Missing var_178
  loc_712ECD: LitVar_Missing var_158
  loc_712ED0: LitVar_Missing var_138
  loc_712ED3: LitVar_Missing var_118
  loc_712ED6: LitVar_Missing var_F8
  loc_712ED9: LitVar_Missing var_D8
  loc_712EDC: LitVar_Missing var_A8
  loc_712EDF: LitStr "Despachos Anteriores"
  loc_712EE2: FStStrCopy var_AC
  loc_712EE5: FLdRfVar var_AC
  loc_712EE8: LitI4 &H37
  loc_712EED: PopTmpLdAdStr var_B8
  loc_712EF0: LitI2_Byte &H1B
  loc_712EF2: PopTmpLdAd2 var_B2
  loc_712EF5: ImpAdLdRf MemVar_74C7D0
  loc_712EF8: NewIfNullPr clsMsg
  loc_712EFB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712F00: ILdRf var_1DC
  loc_712F03: FLdPr Me
  loc_712F06: MemStStrCopy
  loc_712F0A: FFreeStr var_AC = ""
  loc_712F11: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712F28: FLdRfVar var_1DC
  loc_712F2B: LitVar_Missing var_1D8
  loc_712F2E: LitVar_Missing var_1B8
  loc_712F31: LitVar_Missing var_198
  loc_712F34: LitVar_Missing var_178
  loc_712F37: LitVar_Missing var_158
  loc_712F3A: LitVar_Missing var_138
  loc_712F3D: LitVar_Missing var_118
  loc_712F40: LitVar_Missing var_F8
  loc_712F43: LitVar_Missing var_D8
  loc_712F46: LitVar_Missing var_A8
  loc_712F49: LitStr "Solo ventas diferenciales"
  loc_712F4C: FStStrCopy var_AC
  loc_712F4F: FLdRfVar var_AC
  loc_712F52: LitI4 &H46
  loc_712F57: PopTmpLdAdStr var_B8
  loc_712F5A: LitI2_Byte &H1B
  loc_712F5C: PopTmpLdAd2 var_B2
  loc_712F5F: ImpAdLdRf MemVar_74C7D0
  loc_712F62: NewIfNullPr clsMsg
  loc_712F65: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712F6A: ILdRf var_1DC
  loc_712F6D: FLdPrThis
  loc_712F6E: VCallAd Control_ID_chkDifSales
  loc_712F71: FStAdFunc var_B0
  loc_712F74: FLdPr var_B0
  loc_712F77: Me.Caption = from_stack_1
  loc_712F7C: FFreeStr var_AC = ""
  loc_712F83: FFree1Ad var_B0
  loc_712F86: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_712F9D: FLdRfVar var_1DC
  loc_712FA0: LitVar_Missing var_1D8
  loc_712FA3: LitVar_Missing var_1B8
  loc_712FA6: LitVar_Missing var_198
  loc_712FA9: LitVar_Missing var_178
  loc_712FAC: LitVar_Missing var_158
  loc_712FAF: LitVar_Missing var_138
  loc_712FB2: LitVar_Missing var_118
  loc_712FB5: LitVar_Missing var_F8
  loc_712FB8: LitVar_Missing var_D8
  loc_712FBB: LitVar_Missing var_A8
  loc_712FBE: LitStr "Rango de Horas"
  loc_712FC1: FStStrCopy var_AC
  loc_712FC4: FLdRfVar var_AC
  loc_712FC7: LitI4 &H47
  loc_712FCC: PopTmpLdAdStr var_B8
  loc_712FCF: LitI2_Byte &H1B
  loc_712FD1: PopTmpLdAd2 var_B2
  loc_712FD4: ImpAdLdRf MemVar_74C7D0
  loc_712FD7: NewIfNullPr clsMsg
  loc_712FDA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_712FDF: ILdRf var_1DC
  loc_712FE2: FLdPrThis
  loc_712FE3: VCallAd Control_ID_chkRango
  loc_712FE6: FStAdFunc var_B0
  loc_712FE9: FLdPr var_B0
  loc_712FEC: Me.Caption = from_stack_1
  loc_712FF1: FFreeStr var_AC = ""
  loc_712FF8: FFree1Ad var_B0
  loc_712FFB: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713012: FLdRfVar var_1DC
  loc_713015: LitVar_Missing var_1D8
  loc_713018: LitVar_Missing var_1B8
  loc_71301B: LitVar_Missing var_198
  loc_71301E: LitVar_Missing var_178
  loc_713021: LitVar_Missing var_158
  loc_713024: LitVar_Missing var_138
  loc_713027: LitVar_Missing var_118
  loc_71302A: LitVar_Missing var_F8
  loc_71302D: LitVar_Missing var_D8
  loc_713030: LitVar_Missing var_A8
  loc_713033: LitStr "Dias de la Semana"
  loc_713036: FStStrCopy var_AC
  loc_713039: FLdRfVar var_AC
  loc_71303C: LitI4 &H48
  loc_713041: PopTmpLdAdStr var_B8
  loc_713044: LitI2_Byte &H1B
  loc_713046: PopTmpLdAd2 var_B2
  loc_713049: ImpAdLdRf MemVar_74C7D0
  loc_71304C: NewIfNullPr clsMsg
  loc_71304F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713054: ILdRf var_1DC
  loc_713057: FLdPrThis
  loc_713058: VCallAd Control_ID_Label8
  loc_71305B: FStAdFunc var_B0
  loc_71305E: FLdPr var_B0
  loc_713061: Me.Caption = from_stack_1
  loc_713066: FFreeStr var_AC = ""
  loc_71306D: FFree1Ad var_B0
  loc_713070: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713087: FLdPr Me
  loc_71308A: MemLdStr global_100
  loc_71308D: FLdPrThis
  loc_71308E: VCallAd Control_ID_Label3
  loc_713091: FStAdFunc var_B0
  loc_713094: FLdPr var_B0
  loc_713097: Me.Caption = from_stack_1
  loc_71309C: FFree1Ad var_B0
  loc_71309F: FLdRfVar var_1DC
  loc_7130A2: LitVar_Missing var_1D8
  loc_7130A5: LitVar_Missing var_1B8
  loc_7130A8: LitVar_Missing var_198
  loc_7130AB: LitVar_Missing var_178
  loc_7130AE: LitVar_Missing var_158
  loc_7130B1: LitVar_Missing var_138
  loc_7130B4: LitVar_Missing var_118
  loc_7130B7: LitVar_Missing var_F8
  loc_7130BA: LitVar_Missing var_D8
  loc_7130BD: LitVar_Missing var_A8
  loc_7130C0: LitStr "Desde :"
  loc_7130C3: FStStrCopy var_AC
  loc_7130C6: FLdRfVar var_AC
  loc_7130C9: LitI4 &H20
  loc_7130CE: PopTmpLdAdStr var_B8
  loc_7130D1: LitI2_Byte &H1B
  loc_7130D3: PopTmpLdAd2 var_B2
  loc_7130D6: ImpAdLdRf MemVar_74C7D0
  loc_7130D9: NewIfNullPr clsMsg
  loc_7130DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7130E1: ILdRf var_1DC
  loc_7130E4: FLdRfVar var_260
  loc_7130E7: LitI2_Byte 0
  loc_7130E9: FLdPrThis
  loc_7130EA: VCallAd Control_ID_Label1
  loc_7130ED: FStAdFunc var_B0
  loc_7130F0: FLdPr var_B0
  loc_7130F3: Set from_stack_2 = Me(from_stack_1)
  loc_7130F8: FLdPr var_260
  loc_7130FB: Me.Caption = from_stack_1
  loc_713100: FFreeStr var_AC = ""
  loc_713107: FFreeAd var_B0 = ""
  loc_71310E: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713125: FLdRfVar var_1DC
  loc_713128: LitVar_Missing var_1D8
  loc_71312B: LitVar_Missing var_1B8
  loc_71312E: LitVar_Missing var_198
  loc_713131: LitVar_Missing var_178
  loc_713134: LitVar_Missing var_158
  loc_713137: LitVar_Missing var_138
  loc_71313A: LitVar_Missing var_118
  loc_71313D: LitVar_Missing var_F8
  loc_713140: LitVar_Missing var_D8
  loc_713143: LitVar_Missing var_A8
  loc_713146: LitStr "Hasta :"
  loc_713149: FStStrCopy var_AC
  loc_71314C: FLdRfVar var_AC
  loc_71314F: LitI4 &H21
  loc_713154: PopTmpLdAdStr var_B8
  loc_713157: LitI2_Byte &H1B
  loc_713159: PopTmpLdAd2 var_B2
  loc_71315C: ImpAdLdRf MemVar_74C7D0
  loc_71315F: NewIfNullPr clsMsg
  loc_713162: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713167: ILdRf var_1DC
  loc_71316A: FLdRfVar var_260
  loc_71316D: LitI2_Byte 1
  loc_71316F: FLdPrThis
  loc_713170: VCallAd Control_ID_Label1
  loc_713173: FStAdFunc var_B0
  loc_713176: FLdPr var_B0
  loc_713179: Set from_stack_2 = Me(from_stack_1)
  loc_71317E: FLdPr var_260
  loc_713181: Me.Caption = from_stack_1
  loc_713186: FFreeStr var_AC = ""
  loc_71318D: FFreeAd var_B0 = ""
  loc_713194: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7131AB: FLdRfVar var_1DC
  loc_7131AE: LitVar_Missing var_1D8
  loc_7131B1: LitVar_Missing var_1B8
  loc_7131B4: LitVar_Missing var_198
  loc_7131B7: LitVar_Missing var_178
  loc_7131BA: LitVar_Missing var_158
  loc_7131BD: LitVar_Missing var_138
  loc_7131C0: LitVar_Missing var_118
  loc_7131C3: LitVar_Missing var_F8
  loc_7131C6: LitVar_Missing var_D8
  loc_7131C9: LitVar_Missing var_A8
  loc_7131CC: LitStr "Fecha"
  loc_7131CF: FStStrCopy var_AC
  loc_7131D2: FLdRfVar var_AC
  loc_7131D5: LitI4 &H22
  loc_7131DA: PopTmpLdAdStr var_B8
  loc_7131DD: LitI2_Byte &H1B
  loc_7131DF: PopTmpLdAd2 var_B2
  loc_7131E2: ImpAdLdRf MemVar_74C7D0
  loc_7131E5: NewIfNullPr clsMsg
  loc_7131E8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7131ED: ILdRf var_1DC
  loc_7131F0: FLdPrThis
  loc_7131F1: VCallAd Control_ID_Label4
  loc_7131F4: FStAdFunc var_B0
  loc_7131F7: FLdPr var_B0
  loc_7131FA: Me.Caption = from_stack_1
  loc_7131FF: FFreeStr var_AC = ""
  loc_713206: FFree1Ad var_B0
  loc_713209: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713220: FLdRfVar var_1DC
  loc_713223: LitVar_Missing var_1D8
  loc_713226: LitVar_Missing var_1B8
  loc_713229: LitVar_Missing var_198
  loc_71322C: LitVar_Missing var_178
  loc_71322F: LitVar_Missing var_158
  loc_713232: LitVar_Missing var_138
  loc_713235: LitVar_Missing var_118
  loc_713238: LitVar_Missing var_F8
  loc_71323B: LitVar_Missing var_D8
  loc_71323E: LitVar_Missing var_A8
  loc_713241: LitStr "Hora"
  loc_713244: FStStrCopy var_AC
  loc_713247: FLdRfVar var_AC
  loc_71324A: LitI4 &H23
  loc_71324F: PopTmpLdAdStr var_B8
  loc_713252: LitI2_Byte &H1B
  loc_713254: PopTmpLdAd2 var_B2
  loc_713257: ImpAdLdRf MemVar_74C7D0
  loc_71325A: NewIfNullPr clsMsg
  loc_71325D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713262: ILdRf var_1DC
  loc_713265: FLdPrThis
  loc_713266: VCallAd Control_ID_Label5
  loc_713269: FStAdFunc var_B0
  loc_71326C: FLdPr var_B0
  loc_71326F: Me.Caption = from_stack_1
  loc_713274: FFreeStr var_AC = ""
  loc_71327B: FFree1Ad var_B0
  loc_71327E: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713295: FLdRfVar var_1DC
  loc_713298: LitVar_Missing var_1D8
  loc_71329B: LitVar_Missing var_1B8
  loc_71329E: LitVar_Missing var_198
  loc_7132A1: LitVar_Missing var_178
  loc_7132A4: LitVar_Missing var_158
  loc_7132A7: LitVar_Missing var_138
  loc_7132AA: LitVar_Missing var_118
  loc_7132AD: LitVar_Missing var_F8
  loc_7132B0: LitVar_Missing var_D8
  loc_7132B3: LitVar_Missing var_A8
  loc_7132B6: LitStr "&Turno"
  loc_7132B9: FStStrCopy var_AC
  loc_7132BC: FLdRfVar var_AC
  loc_7132BF: LitI4 &H24
  loc_7132C4: PopTmpLdAdStr var_B8
  loc_7132C7: LitI2_Byte &H1B
  loc_7132C9: PopTmpLdAd2 var_B2
  loc_7132CC: ImpAdLdRf MemVar_74C7D0
  loc_7132CF: NewIfNullPr clsMsg
  loc_7132D2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7132D7: ILdRf var_1DC
  loc_7132DA: FLdRfVar var_260
  loc_7132DD: LitI2_Byte 0
  loc_7132DF: FLdPrThis
  loc_7132E0: VCallAd Control_ID_cmdTurnoDiaMes
  loc_7132E3: FStAdFunc var_B0
  loc_7132E6: FLdPr var_B0
  loc_7132E9: Set from_stack_2 = Me(from_stack_1)
  loc_7132EE: FLdPr var_260
  loc_7132F1: Me.Caption = from_stack_1
  loc_7132F6: FFreeStr var_AC = ""
  loc_7132FD: FFreeAd var_B0 = ""
  loc_713304: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71331B: FLdRfVar var_1DC
  loc_71331E: LitVar_Missing var_1D8
  loc_713321: LitVar_Missing var_1B8
  loc_713324: LitVar_Missing var_198
  loc_713327: LitVar_Missing var_178
  loc_71332A: LitVar_Missing var_158
  loc_71332D: LitVar_Missing var_138
  loc_713330: LitVar_Missing var_118
  loc_713333: LitVar_Missing var_F8
  loc_713336: LitVar_Missing var_D8
  loc_713339: LitVar_Missing var_A8
  loc_71333C: LitStr "&Día"
  loc_71333F: FStStrCopy var_AC
  loc_713342: FLdRfVar var_AC
  loc_713345: LitI4 &H25
  loc_71334A: PopTmpLdAdStr var_B8
  loc_71334D: LitI2_Byte &H1B
  loc_71334F: PopTmpLdAd2 var_B2
  loc_713352: ImpAdLdRf MemVar_74C7D0
  loc_713355: NewIfNullPr clsMsg
  loc_713358: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71335D: ILdRf var_1DC
  loc_713360: FLdRfVar var_260
  loc_713363: LitI2_Byte 1
  loc_713365: FLdPrThis
  loc_713366: VCallAd Control_ID_cmdTurnoDiaMes
  loc_713369: FStAdFunc var_B0
  loc_71336C: FLdPr var_B0
  loc_71336F: Set from_stack_2 = Me(from_stack_1)
  loc_713374: FLdPr var_260
  loc_713377: Me.Caption = from_stack_1
  loc_71337C: FFreeStr var_AC = ""
  loc_713383: FFreeAd var_B0 = ""
  loc_71338A: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7133A1: FLdRfVar var_1DC
  loc_7133A4: LitVar_Missing var_1D8
  loc_7133A7: LitVar_Missing var_1B8
  loc_7133AA: LitVar_Missing var_198
  loc_7133AD: LitVar_Missing var_178
  loc_7133B0: LitVar_Missing var_158
  loc_7133B3: LitVar_Missing var_138
  loc_7133B6: LitVar_Missing var_118
  loc_7133B9: LitVar_Missing var_F8
  loc_7133BC: LitVar_Missing var_D8
  loc_7133BF: LitVar_Missing var_A8
  loc_7133C2: LitStr "&Mes"
  loc_7133C5: FStStrCopy var_AC
  loc_7133C8: FLdRfVar var_AC
  loc_7133CB: LitI4 &H26
  loc_7133D0: PopTmpLdAdStr var_B8
  loc_7133D3: LitI2_Byte &H1B
  loc_7133D5: PopTmpLdAd2 var_B2
  loc_7133D8: ImpAdLdRf MemVar_74C7D0
  loc_7133DB: NewIfNullPr clsMsg
  loc_7133DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7133E3: ILdRf var_1DC
  loc_7133E6: FLdRfVar var_260
  loc_7133E9: LitI2_Byte 2
  loc_7133EB: FLdPrThis
  loc_7133EC: VCallAd Control_ID_cmdTurnoDiaMes
  loc_7133EF: FStAdFunc var_B0
  loc_7133F2: FLdPr var_B0
  loc_7133F5: Set from_stack_2 = Me(from_stack_1)
  loc_7133FA: FLdPr var_260
  loc_7133FD: Me.Caption = from_stack_1
  loc_713402: FFreeStr var_AC = ""
  loc_713409: FFreeAd var_B0 = ""
  loc_713410: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713427: FLdRfVar var_1DC
  loc_71342A: LitVar_Missing var_1D8
  loc_71342D: LitVar_Missing var_1B8
  loc_713430: LitVar_Missing var_198
  loc_713433: LitVar_Missing var_178
  loc_713436: LitVar_Missing var_158
  loc_713439: LitVar_Missing var_138
  loc_71343C: LitVar_Missing var_118
  loc_71343F: LitVar_Missing var_F8
  loc_713442: LitVar_Missing var_D8
  loc_713445: LitVar_Missing var_A8
  loc_713448: LitStr "Productos"
  loc_71344B: FStStrCopy var_AC
  loc_71344E: FLdRfVar var_AC
  loc_713451: LitI4 &H27
  loc_713456: PopTmpLdAdStr var_B8
  loc_713459: LitI2_Byte &H1B
  loc_71345B: PopTmpLdAd2 var_B2
  loc_71345E: ImpAdLdRf MemVar_74C7D0
  loc_713461: NewIfNullPr clsMsg
  loc_713464: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713469: ILdRf var_1DC
  loc_71346C: FLdPrThis
  loc_71346D: VCallAd Control_ID_Label6
  loc_713470: FStAdFunc var_B0
  loc_713473: FLdPr var_B0
  loc_713476: Me.Caption = from_stack_1
  loc_71347B: FFreeStr var_AC = ""
  loc_713482: FFree1Ad var_B0
  loc_713485: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_71349C: FLdRfVar var_1DC
  loc_71349F: LitVar_Missing var_1D8
  loc_7134A2: LitVar_Missing var_1B8
  loc_7134A5: LitVar_Missing var_198
  loc_7134A8: LitVar_Missing var_178
  loc_7134AB: LitVar_Missing var_158
  loc_7134AE: LitVar_Missing var_138
  loc_7134B1: LitVar_Missing var_118
  loc_7134B4: LitVar_Missing var_F8
  loc_7134B7: LitVar_Missing var_D8
  loc_7134BA: LitVar_Missing var_A8
  loc_7134BD: LitStr "Surtidores"
  loc_7134C0: FStStrCopy var_AC
  loc_7134C3: FLdRfVar var_AC
  loc_7134C6: LitI4 &H28
  loc_7134CB: PopTmpLdAdStr var_B8
  loc_7134CE: LitI2_Byte &H1B
  loc_7134D0: PopTmpLdAd2 var_B2
  loc_7134D3: ImpAdLdRf MemVar_74C7D0
  loc_7134D6: NewIfNullPr clsMsg
  loc_7134D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7134DE: ILdRf var_1DC
  loc_7134E1: FLdPrThis
  loc_7134E2: VCallAd Control_ID_Label7
  loc_7134E5: FStAdFunc var_B0
  loc_7134E8: FLdPr var_B0
  loc_7134EB: Me.Caption = from_stack_1
  loc_7134F0: FFreeStr var_AC = ""
  loc_7134F7: FFree1Ad var_B0
  loc_7134FA: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713511: FLdPr Me
  loc_713514: MemLdStr global_104
  loc_713517: CVarStr var_98
  loc_71351A: PopAdLdVar
  loc_71351B: FLdPrThis
  loc_71351C: VCallAd Control_ID_sscImprimir
  loc_71351F: FStAdFunc var_B0
  loc_713522: FLdPr var_B0
  loc_713525: LateIdSt
  loc_71352A: FFree1Ad var_B0
  loc_71352D: FLdRfVar var_1DC
  loc_713530: LitVar_Missing var_1D8
  loc_713533: LitVar_Missing var_1B8
  loc_713536: LitVar_Missing var_198
  loc_713539: LitVar_Missing var_178
  loc_71353C: LitVar_Missing var_158
  loc_71353F: LitVar_Missing var_138
  loc_713542: LitVar_Missing var_118
  loc_713545: LitVar_Missing var_F8
  loc_713548: LitVar_Missing var_D8
  loc_71354B: LitVar_Missing var_A8
  loc_71354E: LitStr "&Consultar"
  loc_713551: FStStrCopy var_AC
  loc_713554: FLdRfVar var_AC
  loc_713557: LitI4 &H29
  loc_71355C: PopTmpLdAdStr var_B8
  loc_71355F: LitI2_Byte &H1B
  loc_713561: PopTmpLdAd2 var_B2
  loc_713564: ImpAdLdRf MemVar_74C7D0
  loc_713567: NewIfNullPr clsMsg
  loc_71356A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71356F: FLdZeroAd var_1DC
  loc_713572: CVarStr var_1FC
  loc_713575: PopAdLdVar
  loc_713576: FLdPrThis
  loc_713577: VCallAd Control_ID_cmdConsultar
  loc_71357A: FStAdFunc var_B0
  loc_71357D: FLdPr var_B0
  loc_713580: LateIdSt
  loc_713585: FFree1Str var_AC
  loc_713588: FFree1Ad var_B0
  loc_71358B: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_7135A4: FLdRfVar var_1DC
  loc_7135A7: LitVar_Missing var_1D8
  loc_7135AA: LitVar_Missing var_1B8
  loc_7135AD: LitVar_Missing var_198
  loc_7135B0: LitVar_Missing var_178
  loc_7135B3: LitVar_Missing var_158
  loc_7135B6: LitVar_Missing var_138
  loc_7135B9: LitVar_Missing var_118
  loc_7135BC: LitVar_Missing var_F8
  loc_7135BF: LitVar_Missing var_D8
  loc_7135C2: LitVar_Missing var_A8
  loc_7135C5: LitStr "Guardar &Ventas"
  loc_7135C8: FStStrCopy var_AC
  loc_7135CB: FLdRfVar var_AC
  loc_7135CE: LitI4 &H2A
  loc_7135D3: PopTmpLdAdStr var_B8
  loc_7135D6: LitI2_Byte &H1B
  loc_7135D8: PopTmpLdAd2 var_B2
  loc_7135DB: ImpAdLdRf MemVar_74C7D0
  loc_7135DE: NewIfNullPr clsMsg
  loc_7135E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7135E6: FLdZeroAd var_1DC
  loc_7135E9: CVarStr var_1FC
  loc_7135EC: PopAdLdVar
  loc_7135ED: FLdPrThis
  loc_7135EE: VCallAd Control_ID_cmdSave
  loc_7135F1: FStAdFunc var_B0
  loc_7135F4: FLdPr var_B0
  loc_7135F7: LateIdSt
  loc_7135FC: FFree1Str var_AC
  loc_7135FF: FFree1Ad var_B0
  loc_713602: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_71361B: FLdRfVar var_1DC
  loc_71361E: LitVar_Missing var_1D8
  loc_713621: LitVar_Missing var_1B8
  loc_713624: LitVar_Missing var_198
  loc_713627: LitVar_Missing var_178
  loc_71362A: LitVar_Missing var_158
  loc_71362D: LitVar_Missing var_138
  loc_713630: LitVar_Missing var_118
  loc_713633: LitVar_Missing var_F8
  loc_713636: LitVar_Missing var_D8
  loc_713639: LitVar_Missing var_A8
  loc_71363C: LitStr "Nombre del archivo:"
  loc_71363F: FStStrCopy var_AC
  loc_713642: FLdRfVar var_AC
  loc_713645: LitI4 &H2B
  loc_71364A: PopTmpLdAdStr var_B8
  loc_71364D: LitI2_Byte &H1B
  loc_71364F: PopTmpLdAd2 var_B2
  loc_713652: ImpAdLdRf MemVar_74C7D0
  loc_713655: NewIfNullPr clsMsg
  loc_713658: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71365D: ILdRf var_1DC
  loc_713660: FLdPrThis
  loc_713661: VCallAd Control_ID_lblA
  loc_713664: FStAdFunc var_B0
  loc_713667: FLdPr var_B0
  loc_71366A: Me.Caption = from_stack_1
  loc_71366F: FFreeStr var_AC = ""
  loc_713676: FFree1Ad var_B0
  loc_713679: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713690: FLdRfVar var_1DC
  loc_713693: LitVar_Missing var_1D8
  loc_713696: LitVar_Missing var_1B8
  loc_713699: LitVar_Missing var_198
  loc_71369C: LitVar_Missing var_178
  loc_71369F: LitVar_Missing var_158
  loc_7136A2: LitVar_Missing var_138
  loc_7136A5: LitVar_Missing var_118
  loc_7136A8: LitVar_Missing var_F8
  loc_7136AB: LitVar_Missing var_D8
  loc_7136AE: LitVar_Missing var_A8
  loc_7136B1: LitStr "Formato CEM 37"
  loc_7136B4: FStStrCopy var_AC
  loc_7136B7: FLdRfVar var_AC
  loc_7136BA: LitI4 &H2C
  loc_7136BF: PopTmpLdAdStr var_B8
  loc_7136C2: LitI2_Byte &H1B
  loc_7136C4: PopTmpLdAd2 var_B2
  loc_7136C7: ImpAdLdRf MemVar_74C7D0
  loc_7136CA: NewIfNullPr clsMsg
  loc_7136CD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7136D2: ILdRf var_1DC
  loc_7136D5: FLdPrThis
  loc_7136D6: VCallAd Control_ID_chkFormatCem37
  loc_7136D9: FStAdFunc var_B0
  loc_7136DC: FLdPr var_B0
  loc_7136DF: Me.Caption = from_stack_1
  loc_7136E4: FFreeStr var_AC = ""
  loc_7136EB: FFree1Ad var_B0
  loc_7136EE: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713705: FLdRfVar var_1DC
  loc_713708: LitVar_Missing var_1D8
  loc_71370B: LitVar_Missing var_1B8
  loc_71370E: LitVar_Missing var_198
  loc_713711: LitVar_Missing var_178
  loc_713714: LitVar_Missing var_158
  loc_713717: LitVar_Missing var_138
  loc_71371A: LitVar_Missing var_118
  loc_71371D: LitVar_Missing var_F8
  loc_713720: LitVar_Missing var_D8
  loc_713723: LitVar_Missing var_A8
  loc_713726: LitStr "&Salir"
  loc_713729: FStStrCopy var_AC
  loc_71372C: FLdRfVar var_AC
  loc_71372F: LitI4 &H2D
  loc_713734: PopTmpLdAdStr var_B8
  loc_713737: LitI2_Byte &H1B
  loc_713739: PopTmpLdAd2 var_B2
  loc_71373C: ImpAdLdRf MemVar_74C7D0
  loc_71373F: NewIfNullPr clsMsg
  loc_713742: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713747: FLdZeroAd var_1DC
  loc_71374A: CVarStr var_1FC
  loc_71374D: PopAdLdVar
  loc_71374E: FLdPrThis
  loc_71374F: VCallAd Control_ID_sscSalir
  loc_713752: FStAdFunc var_B0
  loc_713755: FLdPr var_B0
  loc_713758: LateIdSt
  loc_71375D: FFree1Str var_AC
  loc_713760: FFree1Ad var_B0
  loc_713763: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_71377C: FLdRfVar var_1DC
  loc_71377F: LitVar_Missing var_1D8
  loc_713782: LitVar_Missing var_1B8
  loc_713785: LitVar_Missing var_198
  loc_713788: LitVar_Missing var_178
  loc_71378B: LitVar_Missing var_158
  loc_71378E: LitVar_Missing var_138
  loc_713791: LitVar_Missing var_118
  loc_713794: LitVar_Missing var_F8
  loc_713797: LitVar_Missing var_D8
  loc_71379A: LitVar_Missing var_A8
  loc_71379D: LitStr "Fecha y Hora"
  loc_7137A0: FStStrCopy var_AC
  loc_7137A3: FLdRfVar var_AC
  loc_7137A6: LitI4 &HD
  loc_7137AB: PopTmpLdAdStr var_B8
  loc_7137AE: LitI2_Byte &H1B
  loc_7137B0: PopTmpLdAd2 var_B2
  loc_7137B3: ImpAdLdRf MemVar_74C7D0
  loc_7137B6: NewIfNullPr clsMsg
  loc_7137B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7137BE: ILdRf var_1DC
  loc_7137C1: FLdRfVar var_260
  loc_7137C4: LitI2_Byte 0
  loc_7137C6: FLdPrThis
  loc_7137C7: VCallAd Control_ID_Label2
  loc_7137CA: FStAdFunc var_B0
  loc_7137CD: FLdPr var_B0
  loc_7137D0: Set from_stack_2 = Me(from_stack_1)
  loc_7137D5: FLdPr var_260
  loc_7137D8: Me.Caption = from_stack_1
  loc_7137DD: FFreeStr var_AC = ""
  loc_7137E4: FFreeAd var_B0 = ""
  loc_7137EB: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713802: FLdPr Me
  loc_713805: MemLdStr global_88
  loc_713808: FLdPrThis
  loc_713809: VCallAd Control_ID_labelsurtidor2
  loc_71380C: FStAdFunc var_B0
  loc_71380F: FLdPr var_B0
  loc_713812: Me.Caption = from_stack_1
  loc_713817: FFree1Ad var_B0
  loc_71381A: FLdRfVar var_1DC
  loc_71381D: LitVar_Missing var_1D8
  loc_713820: LitVar_Missing var_1B8
  loc_713823: LitVar_Missing var_198
  loc_713826: LitVar_Missing var_178
  loc_713829: LitVar_Missing var_158
  loc_71382C: LitVar_Missing var_138
  loc_71382F: LitVar_Missing var_118
  loc_713832: LitVar_Missing var_F8
  loc_713835: LitVar_Missing var_D8
  loc_713838: LitVar_Missing var_A8
  loc_71383B: LitStr "Producto"
  loc_71383E: FStStrCopy var_AC
  loc_713841: FLdRfVar var_AC
  loc_713844: LitI4 &HE
  loc_713849: PopTmpLdAdStr var_B8
  loc_71384C: LitI2_Byte &H1B
  loc_71384E: PopTmpLdAd2 var_B2
  loc_713851: ImpAdLdRf MemVar_74C7D0
  loc_713854: NewIfNullPr clsMsg
  loc_713857: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_71385C: ILdRf var_1DC
  loc_71385F: FLdRfVar var_260
  loc_713862: LitI2_Byte 2
  loc_713864: FLdPrThis
  loc_713865: VCallAd Control_ID_Label2
  loc_713868: FStAdFunc var_B0
  loc_71386B: FLdPr var_B0
  loc_71386E: Set from_stack_2 = Me(from_stack_1)
  loc_713873: FLdPr var_260
  loc_713876: Me.Caption = from_stack_1
  loc_71387B: FFreeStr var_AC = ""
  loc_713882: FFreeAd var_B0 = ""
  loc_713889: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7138A0: FLdRfVar var_1DC
  loc_7138A3: LitVar_Missing var_1D8
  loc_7138A6: LitVar_Missing var_1B8
  loc_7138A9: LitVar_Missing var_198
  loc_7138AC: LitVar_Missing var_178
  loc_7138AF: LitVar_Missing var_158
  loc_7138B2: LitVar_Missing var_138
  loc_7138B5: LitVar_Missing var_118
  loc_7138B8: LitVar_Missing var_F8
  loc_7138BB: LitVar_Missing var_D8
  loc_7138BE: LitVar_Missing var_A8
  loc_7138C1: LitStr "Tipo de Pago"
  loc_7138C4: FStStrCopy var_AC
  loc_7138C7: FLdRfVar var_AC
  loc_7138CA: LitI4 &HF
  loc_7138CF: PopTmpLdAdStr var_B8
  loc_7138D2: LitI2_Byte &H1B
  loc_7138D4: PopTmpLdAd2 var_B2
  loc_7138D7: ImpAdLdRf MemVar_74C7D0
  loc_7138DA: NewIfNullPr clsMsg
  loc_7138DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7138E2: ILdRf var_1DC
  loc_7138E5: FLdRfVar var_260
  loc_7138E8: LitI2_Byte 1
  loc_7138EA: FLdPrThis
  loc_7138EB: VCallAd Control_ID_Label2
  loc_7138EE: FStAdFunc var_B0
  loc_7138F1: FLdPr var_B0
  loc_7138F4: Set from_stack_2 = Me(from_stack_1)
  loc_7138F9: FLdPr var_260
  loc_7138FC: Me.Caption = from_stack_1
  loc_713901: FFreeStr var_AC = ""
  loc_713908: FFreeAd var_B0 = ""
  loc_71390F: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713926: FLdRfVar var_1DC
  loc_713929: LitVar_Missing var_1D8
  loc_71392C: LitVar_Missing var_1B8
  loc_71392F: LitVar_Missing var_198
  loc_713932: LitVar_Missing var_178
  loc_713935: LitVar_Missing var_158
  loc_713938: LitVar_Missing var_138
  loc_71393B: LitVar_Missing var_118
  loc_71393E: LitVar_Missing var_F8
  loc_713941: LitVar_Missing var_D8
  loc_713944: LitVar_Missing var_A8
  loc_713947: LitStr "Monto"
  loc_71394A: FStStrCopy var_AC
  loc_71394D: FLdRfVar var_AC
  loc_713950: LitI4 &H10
  loc_713955: PopTmpLdAdStr var_B8
  loc_713958: LitI2_Byte &H1B
  loc_71395A: PopTmpLdAd2 var_B2
  loc_71395D: ImpAdLdRf MemVar_74C7D0
  loc_713960: NewIfNullPr clsMsg
  loc_713963: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713968: ILdRf var_1DC
  loc_71396B: FLdRfVar var_260
  loc_71396E: LitI2_Byte 3
  loc_713970: FLdPrThis
  loc_713971: VCallAd Control_ID_Label2
  loc_713974: FStAdFunc var_B0
  loc_713977: FLdPr var_B0
  loc_71397A: Set from_stack_2 = Me(from_stack_1)
  loc_71397F: FLdPr var_260
  loc_713982: Me.Caption = from_stack_1
  loc_713987: FFreeStr var_AC = ""
  loc_71398E: FFreeAd var_B0 = ""
  loc_713995: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_7139AC: FLdRfVar var_1DC
  loc_7139AF: LitVar_Missing var_1D8
  loc_7139B2: LitVar_Missing var_1B8
  loc_7139B5: LitVar_Missing var_198
  loc_7139B8: LitVar_Missing var_178
  loc_7139BB: LitVar_Missing var_158
  loc_7139BE: LitVar_Missing var_138
  loc_7139C1: LitVar_Missing var_118
  loc_7139C4: LitVar_Missing var_F8
  loc_7139C7: LitVar_Missing var_D8
  loc_7139CA: LitVar_Missing var_A8
  loc_7139CD: LitStr "Volumen"
  loc_7139D0: FStStrCopy var_AC
  loc_7139D3: FLdRfVar var_AC
  loc_7139D6: LitI4 &H11
  loc_7139DB: PopTmpLdAdStr var_B8
  loc_7139DE: LitI2_Byte &H1B
  loc_7139E0: PopTmpLdAd2 var_B2
  loc_7139E3: ImpAdLdRf MemVar_74C7D0
  loc_7139E6: NewIfNullPr clsMsg
  loc_7139E9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7139EE: ILdRf var_1DC
  loc_7139F1: FLdRfVar var_260
  loc_7139F4: LitI2_Byte 4
  loc_7139F6: FLdPrThis
  loc_7139F7: VCallAd Control_ID_Label2
  loc_7139FA: FStAdFunc var_B0
  loc_7139FD: FLdPr var_B0
  loc_713A00: Set from_stack_2 = Me(from_stack_1)
  loc_713A05: FLdPr var_260
  loc_713A08: Me.Caption = from_stack_1
  loc_713A0D: FFreeStr var_AC = ""
  loc_713A14: FFreeAd var_B0 = ""
  loc_713A1B: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713A32: FLdRfVar var_1DC
  loc_713A35: LitVar_Missing var_1D8
  loc_713A38: LitVar_Missing var_1B8
  loc_713A3B: LitVar_Missing var_198
  loc_713A3E: LitVar_Missing var_178
  loc_713A41: LitVar_Missing var_158
  loc_713A44: LitVar_Missing var_138
  loc_713A47: LitVar_Missing var_118
  loc_713A4A: LitVar_Missing var_F8
  loc_713A4D: LitVar_Missing var_D8
  loc_713A50: LitVar_Missing var_A8
  loc_713A53: LitStr "PPU"
  loc_713A56: FStStrCopy var_AC
  loc_713A59: FLdRfVar var_AC
  loc_713A5C: LitI4 &H12
  loc_713A61: PopTmpLdAdStr var_B8
  loc_713A64: LitI2_Byte &H1B
  loc_713A66: PopTmpLdAd2 var_B2
  loc_713A69: ImpAdLdRf MemVar_74C7D0
  loc_713A6C: NewIfNullPr clsMsg
  loc_713A6F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_713A74: ILdRf var_1DC
  loc_713A77: FLdRfVar var_260
  loc_713A7A: LitI2_Byte 5
  loc_713A7C: FLdPrThis
  loc_713A7D: VCallAd Control_ID_Label2
  loc_713A80: FStAdFunc var_B0
  loc_713A83: FLdPr var_B0
  loc_713A86: Set from_stack_2 = Me(from_stack_1)
  loc_713A8B: FLdPr var_260
  loc_713A8E: Me.Caption = from_stack_1
  loc_713A93: FFreeStr var_AC = ""
  loc_713A9A: FFreeAd var_B0 = ""
  loc_713AA1: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_713AB8: LitI2_Byte 1
  loc_713ABA: PopTmpLdAd2 var_B2
  loc_713ABD: from_stack_2v = Proc_133_27_61F4C0(from_stack_1v)
  loc_713AC2: LitI2_Byte &HFF
  loc_713AC4: PopTmpLdAd2 var_262
  loc_713AC7: LitI2_Byte 1
  loc_713AC9: PopTmpLdAd2 var_B2
  loc_713ACC: from_stack_3v = Proc_133_28_638AFC(from_stack_1v, from_stack_2v)
  loc_713AD1: FLdRfVar var_A8
  loc_713AD4: ImpAdCallFPR4  = Now
  loc_713AD9: FLdRfVar var_A8
  loc_713ADC: FLdRfVar var_D8
  loc_713ADF: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_713AE4: FLdRfVar var_118
  loc_713AE7: ImpAdCallFPR4  = Now
  loc_713AEC: FLdRfVar var_118
  loc_713AEF: FLdRfVar var_138
  loc_713AF2: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_713AF7: FLdRfVar var_178
  loc_713AFA: ImpAdCallFPR4  = Now
  loc_713AFF: FLdRfVar var_178
  loc_713B02: FLdRfVar var_198
  loc_713B05: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_713B0A: LitI4 1
  loc_713B0F: LitI4 1
  loc_713B14: LitVarStr var_98, "00"
  loc_713B19: FStVarCopyObj var_F8
  loc_713B1C: FLdRfVar var_F8
  loc_713B1F: FLdRfVar var_D8
  loc_713B22: ImpAdCallI2 Format$(, )
  loc_713B27: FStStrNoPop var_AC
  loc_713B2A: LitStr "-"
  loc_713B2D: ConcatStr
  loc_713B2E: FStStrNoPop var_1DC
  loc_713B31: LitI4 1
  loc_713B36: LitI4 1
  loc_713B3B: LitVarStr var_C8, "00"
  loc_713B40: FStVarCopyObj var_158
  loc_713B43: FLdRfVar var_158
  loc_713B46: FLdRfVar var_138
  loc_713B49: ImpAdCallI2 Format$(, )
  loc_713B4E: FStStrNoPop var_268
  loc_713B51: ConcatStr
  loc_713B52: FStStrNoPop var_26C
  loc_713B55: LitStr "-"
  loc_713B58: ConcatStr
  loc_713B59: FStStrNoPop var_270
  loc_713B5C: LitI4 1
  loc_713B61: LitI4 1
  loc_713B66: LitVarStr var_E8, "00"
  loc_713B6B: FStVarCopyObj var_1B8
  loc_713B6E: FLdRfVar var_1B8
  loc_713B71: FLdRfVar var_198
  loc_713B74: ImpAdCallI2 Format$(, )
  loc_713B79: FStStrNoPop var_274
  loc_713B7C: ConcatStr
  loc_713B7D: FStStrNoPop var_278
  loc_713B80: FLdPrThis
  loc_713B81: VCallAd Control_ID_txtFile
  loc_713B84: FStAdFunc var_B0
  loc_713B87: FLdPr var_B0
  loc_713B8A: Me.Text = from_stack_1
  loc_713B8F: FFreeStr var_AC = "": var_1DC = "": var_268 = "": var_26C = "": var_270 = "": var_274 = ""
  loc_713BA0: FFree1Ad var_B0
  loc_713BA3: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = ""
  loc_713BB8: LitI2_Byte 0
  loc_713BBA: FLdPrThis
  loc_713BBB: VCallAd Control_ID_txtFile
  loc_713BBE: FStAdFunc var_B0
  loc_713BC1: FLdPr var_B0
  loc_713BC4: Me.Visible = from_stack_1b
  loc_713BC9: FFree1Ad var_B0
  loc_713BCC: LitI2_Byte 0
  loc_713BCE: FLdPrThis
  loc_713BCF: VCallAd Control_ID_Dir1
  loc_713BD2: FStAdFunc var_B0
  loc_713BD5: FLdPr var_B0
  loc_713BD8: Me.Visible = from_stack_1b
  loc_713BDD: FFree1Ad var_B0
  loc_713BE0: LitI2_Byte 0
  loc_713BE2: FLdPrThis
  loc_713BE3: VCallAd Control_ID_chkFormatCem37
  loc_713BE6: FStAdFunc var_B0
  loc_713BE9: FLdPr var_B0
  loc_713BEC: Me.Visible = from_stack_1b
  loc_713BF1: FFree1Ad var_B0
  loc_713BF4: LitI2_Byte 0
  loc_713BF6: FLdPrThis
  loc_713BF7: VCallAd Control_ID_chkFormatCem37
  loc_713BFA: FStAdFunc var_B0
  loc_713BFD: FLdPr var_B0
  loc_713C00: Me.Value = from_stack_1
  loc_713C05: FFree1Ad var_B0
  loc_713C08: LitI2_Byte 0
  loc_713C0A: FLdPrThis
  loc_713C0B: VCallAd Control_ID_lblA
  loc_713C0E: FStAdFunc var_B0
  loc_713C11: FLdPr var_B0
  loc_713C14: Me.Visible = from_stack_1b
  loc_713C19: FFree1Ad var_B0
  loc_713C1C: LitVarStr var_98, "Aguarde unos Instantes."
  loc_713C21: LitI4 &HD
  loc_713C26: FLdRfVar var_A8
  loc_713C29: ImpAdCallFPR4  = Chr()
  loc_713C2E: FLdRfVar var_A8
  loc_713C31: AddVar var_D8
  loc_713C35: LitVarStr var_C8, "(Está operación podria demorar unos minutos)"
  loc_713C3A: AddVar var_F8
  loc_713C3E: CStrVarVal var_AC
  loc_713C42: FLdPr Me
  loc_713C45: VCallAd Control_ID_lbWait
  loc_713C48: FStAdFunc var_B0
  loc_713C4B: FLdPr var_B0
  loc_713C4E: Me.Caption = from_stack_1
  loc_713C53: FFree1Str var_AC
  loc_713C56: FFree1Ad var_B0
  loc_713C59: FFreeVar var_A8 = "": var_D8 = ""
  loc_713C62: from_stack_1v = Proc_133_29_5D71E4()
  loc_713C67: ExitProcHresult
End Sub

Private Sub cmdTurnoDiaMes_Click(Index As Integer) '63FF84
  'Data Table: 45294C
  loc_63FD64: LitI4 0
  loc_63FD69: LitI4 2
  loc_63FD6E: FLdRfVar var_8C
  loc_63FD71: Redim
  loc_63FD7B: LitVarStr var_9C, "T"
  loc_63FD80: LitI4 0
  loc_63FD85: ILdRf var_8C
  loc_63FD88: Ary1StVarCopy
  loc_63FD8A: LitVarStr var_AC, "D"
  loc_63FD8F: LitI4 1
  loc_63FD94: ILdRf var_8C
  loc_63FD97: Ary1StVarCopy
  loc_63FD99: LitVarStr var_BC, "M"
  loc_63FD9E: LitI4 2
  loc_63FDA3: ILdRf var_8C
  loc_63FDA6: Ary1StVarCopy
  loc_63FDA8: FLdRfVar var_8C
  loc_63FDAB: ILdI2 Index
  loc_63FDAE: LitI2_Byte 1
  loc_63FDB0: AddI2
  loc_63FDB1: CR8I2
  loc_63FDB2: PopFPR4
  loc_63FDB3: FLdRfVar var_CC
  loc_63FDB6: ImpAdCallFPR4  = Choose(, )
  loc_63FDBB: FLdRfVar var_8C
  loc_63FDBE: Erase
  loc_63FDBF: FLdRfVar var_CC
  loc_63FDC2: CStrVarVal var_D0
  loc_63FDC6: ImpAdLdRf MemVar_74DC6C
  loc_63FDC9: NewIfNullPr Reportes_Anteriores
  loc_63FDCC: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_63FDD1: FFree1Str var_D0
  loc_63FDD4: FFree1Var var_CC = ""
  loc_63FDD7: LitI2_Byte &HFF
  loc_63FDD9: ImpAdLdRf MemVar_74DC6C
  loc_63FDDC: NewIfNullPr Reportes_Anteriores
  loc_63FDDF: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_63FDE4: LitVar_Missing var_AC
  loc_63FDE7: PopAdLdVar
  loc_63FDE8: LitVarI4
  loc_63FDF0: PopAdLdVar
  loc_63FDF1: ImpAdLdRf MemVar_74DC6C
  loc_63FDF4: NewIfNullPr Reportes_Anteriores
  loc_63FDF7: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_63FDFC: FLdRfVar var_D0
  loc_63FDFF: ImpAdLdRf MemVar_74DC6C
  loc_63FE02: NewIfNullPr Reportes_Anteriores
  loc_63FE05: from_stack_1v = Reportes_Anteriores.RangoFechaGet()
  loc_63FE0A: FLdZeroAd var_D0
  loc_63FE0D: FStStr var_88
  loc_63FE10: ILdRf var_88
  loc_63FE13: LitStr vbNullString
  loc_63FE16: NeStr
  loc_63FE18: BranchF loc_63FF82
  loc_63FE1B: LitVarI2 var_CC, 2
  loc_63FE20: LitI4 9
  loc_63FE25: ILdRf var_88
  loc_63FE28: ImpAdCallI2 Mid$(, , )
  loc_63FE2D: FStStrNoPop var_D0
  loc_63FE30: LitStr "/"
  loc_63FE33: ConcatStr
  loc_63FE34: FStStrNoPop var_E4
  loc_63FE37: LitVarI2 var_E0, 2
  loc_63FE3C: LitI4 6
  loc_63FE41: ILdRf var_88
  loc_63FE44: ImpAdCallI2 Mid$(, , )
  loc_63FE49: FStStrNoPop var_E8
  loc_63FE4C: ConcatStr
  loc_63FE4D: FStStrNoPop var_EC
  loc_63FE50: LitStr "/"
  loc_63FE53: ConcatStr
  loc_63FE54: FStStrNoPop var_100
  loc_63FE57: LitVarI2 var_FC, 4
  loc_63FE5C: LitI4 1
  loc_63FE61: ILdRf var_88
  loc_63FE64: ImpAdCallI2 Mid$(, , )
  loc_63FE69: FStStrNoPop var_104
  loc_63FE6C: ConcatStr
  loc_63FE6D: CVarStr var_114
  loc_63FE70: PopAdLdVar
  loc_63FE71: FLdPrThis
  loc_63FE72: VCallAd Control_ID_
  loc_63FE75: FStAdFunc var_118
  loc_63FE78: FLdPr var_118
  loc_63FE7B: LateIdSt
  loc_63FE80: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_63FE8F: FFree1Ad var_118
  loc_63FE92: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_63FE9D: LitVarI2 var_CC, 8
  loc_63FEA2: LitI4 &HB
  loc_63FEA7: ILdRf var_88
  loc_63FEAA: ImpAdCallI2 Mid$(, , )
  loc_63FEAF: CVarStr var_E0
  loc_63FEB2: PopAdLdVar
  loc_63FEB3: FLdPrThis
  loc_63FEB4: VCallAd Control_ID_
  loc_63FEB7: FStAdFunc var_118
  loc_63FEBA: FLdPr var_118
  loc_63FEBD: LateIdSt
  loc_63FEC2: FFree1Ad var_118
  loc_63FEC5: FFreeVar var_CC = ""
  loc_63FECC: LitVarI2 var_CC, 2
  loc_63FED1: LitI4 &H1B
  loc_63FED6: ILdRf var_88
  loc_63FED9: ImpAdCallI2 Mid$(, , )
  loc_63FEDE: FStStrNoPop var_D0
  loc_63FEE1: LitStr "/"
  loc_63FEE4: ConcatStr
  loc_63FEE5: FStStrNoPop var_E4
  loc_63FEE8: LitVarI2 var_E0, 2
  loc_63FEED: LitI4 &H18
  loc_63FEF2: ILdRf var_88
  loc_63FEF5: ImpAdCallI2 Mid$(, , )
  loc_63FEFA: FStStrNoPop var_E8
  loc_63FEFD: ConcatStr
  loc_63FEFE: FStStrNoPop var_EC
  loc_63FF01: LitStr "/"
  loc_63FF04: ConcatStr
  loc_63FF05: FStStrNoPop var_100
  loc_63FF08: LitVarI2 var_FC, 4
  loc_63FF0D: LitI4 &H13
  loc_63FF12: ILdRf var_88
  loc_63FF15: ImpAdCallI2 Mid$(, , )
  loc_63FF1A: FStStrNoPop var_104
  loc_63FF1D: ConcatStr
  loc_63FF1E: CVarStr var_114
  loc_63FF21: PopAdLdVar
  loc_63FF22: FLdPrThis
  loc_63FF23: VCallAd Control_ID_
  loc_63FF26: FStAdFunc var_118
  loc_63FF29: FLdPr var_118
  loc_63FF2C: LateIdSt
  loc_63FF31: FFreeStr var_D0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_63FF40: FFree1Ad var_118
  loc_63FF43: FFreeVar var_CC = "": var_E0 = "": var_FC = ""
  loc_63FF4E: LitVarI2 var_CC, 8
  loc_63FF53: LitI4 &H1D
  loc_63FF58: ILdRf var_88
  loc_63FF5B: ImpAdCallI2 Mid$(, , )
  loc_63FF60: CVarStr var_E0
  loc_63FF63: PopAdLdVar
  loc_63FF64: FLdPrThis
  loc_63FF65: VCallAd Control_ID_
  loc_63FF68: FStAdFunc var_118
  loc_63FF6B: FLdPr var_118
  loc_63FF6E: LateIdSt
  loc_63FF73: FFree1Ad var_118
  loc_63FF76: FFreeVar var_CC = ""
  loc_63FF7D: Call cmdConsultar_UnknownEvent_8()
  loc_63FF82: ExitProcHresult
End Sub

Private Sub sscSalir_UnknownEvent_8 '5D0D50
  'Data Table: 45294C
  loc_5D0D38: ILdRf Me
  loc_5D0D3B: FStAdNoPop
  loc_5D0D3F: ImpAdLdRf MemVar_7520D4
  loc_5D0D42: NewIfNullPr Global
  loc_5D0D45: Global.Unload from_stack_1
  loc_5D0D4A: FFree1Ad var_88
  loc_5D0D4D: ExitProcHresult
  loc_5D0D4E: EqR4
End Sub

Private Sub sscImprimir_UnknownEvent_8 '6C7A20
  'Data Table: 45294C
  loc_6C71B0: LitI2_Byte 0
  loc_6C71B2: FStI2 var_A2
  loc_6C71B5: LitI2_Byte 0
  loc_6C71B7: FStI2 var_A4
  loc_6C71BA: FLdPrThis
  loc_6C71BB: VCallAd Control_ID_List1
  loc_6C71BE: FStAdFunc var_C0
  loc_6C71C1: FLdPr var_C0
  loc_6C71C4: Me.Clear
  loc_6C71C9: FFree1Ad var_C0
  loc_6C71CC: LitI2_Byte 0
  loc_6C71CE: FLdPrThis
  loc_6C71CF: VCallAd Control_ID_cmdPrevio
  loc_6C71D2: FStAdFunc var_C0
  loc_6C71D5: FLdPr var_C0
  loc_6C71D8: Me.Enabled = from_stack_1b
  loc_6C71DD: FFree1Ad var_C0
  loc_6C71E0: LitI2_Byte 0
  loc_6C71E2: FLdPrThis
  loc_6C71E3: VCallAd Control_ID_cmdSiguiente
  loc_6C71E6: FStAdFunc var_C0
  loc_6C71E9: FLdPr var_C0
  loc_6C71EC: Me.Enabled = from_stack_1b
  loc_6C71F1: FFree1Ad var_C0
  loc_6C71F4: LitI2_Byte 1
  loc_6C71F6: FLdPr Me
  loc_6C71F9: MemStI2 global_80
  loc_6C71FC: FLdRfVar var_D0
  loc_6C71FF: from_stack_1v = Proc_133_37_6F2154()
  loc_6C7204: FLdRfVar var_D0
  loc_6C7207: LitVarI4
  loc_6C720F: HardType
  loc_6C7210: NeVarBool
  loc_6C7212: FFree1Var var_D0 = ""
  loc_6C7215: BranchF loc_6C7219
  loc_6C7218: ExitProcHresult
  loc_6C7219: FLdPrThis
  loc_6C721A: VCallAd Control_ID_FechaInicial
  loc_6C721D: FStAdFunc var_2A4
  loc_6C7220: FLdPrThis
  loc_6C7221: VCallAd Control_ID_FechaInicial
  loc_6C7224: FStAdFunc var_2A8
  loc_6C7227: FLdPrThis
  loc_6C7228: VCallAd Control_ID_FechaInicial
  loc_6C722B: FStAdFunc var_2AC
  loc_6C722E: FLdPrThis
  loc_6C722F: VCallAd Control_ID_HoraInicial
  loc_6C7232: FStAdFunc var_C0
  loc_6C7235: FLdPr var_C0
  loc_6C7238: LateIdLdVar var_1B0 DispID_22 0
  loc_6C723F: PopAd
  loc_6C7241: FLdPrThis
  loc_6C7242: VCallAd Control_ID_HoraInicial
  loc_6C7245: FStAdFunc var_2B0
  loc_6C7248: FLdPrThis
  loc_6C7249: VCallAd Control_ID_HoraInicial
  loc_6C724C: FStAdFunc var_2B4
  loc_6C724F: LitVarI2 var_F0, 4
  loc_6C7254: LitI4 7
  loc_6C7259: FLdZeroAd var_2A4
  loc_6C725C: CVarAd
  loc_6C7260: FLdRfVar var_100
  loc_6C7263: ImpAdCallFPR4  = Mid(, , )
  loc_6C7268: FLdRfVar var_100
  loc_6C726B: LitVarI2 var_130, 2
  loc_6C7270: LitI4 4
  loc_6C7275: FLdZeroAd var_2A8
  loc_6C7278: CVarAd
  loc_6C727C: FLdRfVar var_140
  loc_6C727F: ImpAdCallFPR4  = Mid(, , )
  loc_6C7284: FLdRfVar var_140
  loc_6C7287: ConcatVar var_150
  loc_6C728B: LitVarI2 var_180, 2
  loc_6C7290: LitI4 1
  loc_6C7295: FLdZeroAd var_2AC
  loc_6C7298: CVarAd
  loc_6C729C: FLdRfVar var_190
  loc_6C729F: ImpAdCallFPR4  = Mid(, , )
  loc_6C72A4: FLdRfVar var_190
  loc_6C72A7: ConcatVar var_1A0
  loc_6C72AB: LitVarI2 var_1E0, 2
  loc_6C72B0: LitI4 1
  loc_6C72B5: FLdRfVar var_1B0
  loc_6C72B8: CStrVarTmp
  loc_6C72B9: CVarStr var_1C0
  loc_6C72BC: FLdRfVar var_1F0
  loc_6C72BF: ImpAdCallFPR4  = Mid(, , )
  loc_6C72C4: FLdRfVar var_1F0
  loc_6C72C7: ConcatVar var_200
  loc_6C72CB: LitVarI2 var_230, 2
  loc_6C72D0: LitI4 4
  loc_6C72D5: FLdZeroAd var_2B0
  loc_6C72D8: CVarAd
  loc_6C72DC: FLdRfVar var_240
  loc_6C72DF: ImpAdCallFPR4  = Mid(, , )
  loc_6C72E4: FLdRfVar var_240
  loc_6C72E7: ConcatVar var_250
  loc_6C72EB: LitVarI2 var_280, 2
  loc_6C72F0: LitI4 7
  loc_6C72F5: FLdZeroAd var_2B4
  loc_6C72F8: CVarAd
  loc_6C72FC: FLdRfVar var_290
  loc_6C72FF: ImpAdCallFPR4  = Mid(, , )
  loc_6C7304: FLdRfVar var_290
  loc_6C7307: ConcatVar var_2A0
  loc_6C730B: CStrVarTmp
  loc_6C730C: FStStr var_88
  loc_6C730F: FFreeAd var_C0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = ""
  loc_6C731E: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_100 = "": var_140 = "": var_160 = "": var_180 = "": var_150 = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1A0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_200 = "": var_240 = "": var_260 = "": var_280 = "": var_250 = "": var_290 = ""
  loc_6C7351: FLdPrThis
  loc_6C7352: VCallAd Control_ID_FechaFinal
  loc_6C7355: FStAdFunc var_2A4
  loc_6C7358: FLdPrThis
  loc_6C7359: VCallAd Control_ID_FechaFinal
  loc_6C735C: FStAdFunc var_2A8
  loc_6C735F: FLdPrThis
  loc_6C7360: VCallAd Control_ID_FechaFinal
  loc_6C7363: FStAdFunc var_2AC
  loc_6C7366: FLdPrThis
  loc_6C7367: VCallAd Control_ID_HoraFinal
  loc_6C736A: FStAdFunc var_C0
  loc_6C736D: FLdPr var_C0
  loc_6C7370: LateIdLdVar var_1B0 DispID_22 0
  loc_6C7377: PopAd
  loc_6C7379: FLdPrThis
  loc_6C737A: VCallAd Control_ID_HoraFinal
  loc_6C737D: FStAdFunc var_2B0
  loc_6C7380: FLdPrThis
  loc_6C7381: VCallAd Control_ID_HoraFinal
  loc_6C7384: FStAdFunc var_2B4
  loc_6C7387: LitVarI2 var_F0, 4
  loc_6C738C: LitI4 7
  loc_6C7391: FLdZeroAd var_2A4
  loc_6C7394: CVarAd
  loc_6C7398: FLdRfVar var_100
  loc_6C739B: ImpAdCallFPR4  = Mid(, , )
  loc_6C73A0: FLdRfVar var_100
  loc_6C73A3: LitVarI2 var_130, 2
  loc_6C73A8: LitI4 4
  loc_6C73AD: FLdZeroAd var_2A8
  loc_6C73B0: CVarAd
  loc_6C73B4: FLdRfVar var_140
  loc_6C73B7: ImpAdCallFPR4  = Mid(, , )
  loc_6C73BC: FLdRfVar var_140
  loc_6C73BF: ConcatVar var_150
  loc_6C73C3: LitVarI2 var_180, 2
  loc_6C73C8: LitI4 1
  loc_6C73CD: FLdZeroAd var_2AC
  loc_6C73D0: CVarAd
  loc_6C73D4: FLdRfVar var_190
  loc_6C73D7: ImpAdCallFPR4  = Mid(, , )
  loc_6C73DC: FLdRfVar var_190
  loc_6C73DF: ConcatVar var_1A0
  loc_6C73E3: LitVarI2 var_1E0, 2
  loc_6C73E8: LitI4 1
  loc_6C73ED: FLdRfVar var_1B0
  loc_6C73F0: CStrVarTmp
  loc_6C73F1: CVarStr var_1C0
  loc_6C73F4: FLdRfVar var_1F0
  loc_6C73F7: ImpAdCallFPR4  = Mid(, , )
  loc_6C73FC: FLdRfVar var_1F0
  loc_6C73FF: ConcatVar var_200
  loc_6C7403: LitVarI2 var_230, 2
  loc_6C7408: LitI4 4
  loc_6C740D: FLdZeroAd var_2B0
  loc_6C7410: CVarAd
  loc_6C7414: FLdRfVar var_240
  loc_6C7417: ImpAdCallFPR4  = Mid(, , )
  loc_6C741C: FLdRfVar var_240
  loc_6C741F: ConcatVar var_250
  loc_6C7423: LitVarI2 var_280, 2
  loc_6C7428: LitI4 7
  loc_6C742D: FLdZeroAd var_2B4
  loc_6C7430: CVarAd
  loc_6C7434: FLdRfVar var_290
  loc_6C7437: ImpAdCallFPR4  = Mid(, , )
  loc_6C743C: FLdRfVar var_290
  loc_6C743F: ConcatVar var_2A0
  loc_6C7443: CStrVarTmp
  loc_6C7444: FStStr var_8C
  loc_6C7447: FFreeAd var_C0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = ""
  loc_6C7456: FFreeVar var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_100 = "": var_140 = "": var_160 = "": var_180 = "": var_150 = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1A0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_200 = "": var_240 = "": var_260 = "": var_280 = "": var_250 = "": var_290 = ""
  loc_6C7489: LitStr vbNullString
  loc_6C748C: FStStrCopy var_90
  loc_6C748F: LitStr vbNullString
  loc_6C7492: FStStrCopy var_94
  loc_6C7495: LitI2_Byte 0
  loc_6C7497: CUI1I2
  loc_6C7499: FStUI1 var_A8
  loc_6C749D: LitI2_Byte 0
  loc_6C749F: CUI1I2
  loc_6C74A1: FStUI1 var_AA
  loc_6C74A5: LitI2_Byte 1
  loc_6C74A7: CUI1I2
  loc_6C74A9: FLdRfVar var_A6
  loc_6C74AC: LitI2_Byte &H20
  loc_6C74AE: CUI1I2
  loc_6C74B0: ForUI1 var_2B8
  loc_6C74B6: FLdUI1
  loc_6C74BA: CI2UI1
  loc_6C74BC: LitI2_Byte &HA
  loc_6C74BE: LeI2
  loc_6C74BF: BranchF loc_6C75B7
  loc_6C74C2: FLdRfVar var_2BA
  loc_6C74C5: FLdPrThis
  loc_6C74C6: VCallAd Control_ID_optGNC
  loc_6C74C9: FStAdFunc var_C0
  loc_6C74CC: FLdPr var_C0
  loc_6C74CF:  = Me.Value
  loc_6C74D4: FLdI2 var_2BA
  loc_6C74D7: FLdRfVar var_2BC
  loc_6C74DA: FLdUI1
  loc_6C74DE: CI2UI1
  loc_6C74E0: ImpAdLdRf MemVar_74A220
  loc_6C74E3: NewIfNullPr clsProducts
  loc_6C74E6:  = clsProducts.hWnd
  loc_6C74EB: FLdI2 var_2BC
  loc_6C74EE: AndI4
  loc_6C74EF: FFree1Ad var_C0
  loc_6C74F2: BranchF loc_6C7518
  loc_6C74F5: FLdRfVar var_2BC
  loc_6C74F8: FLdRfVar var_A4
  loc_6C74FB: FLdRfVar var_AA
  loc_6C74FE: FLdRfVar var_94
  loc_6C7501: FLdUI1
  loc_6C7505: CI2UI1
  loc_6C7507: PopTmpLdAd2 var_2BA
  loc_6C750A: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C750F: FLdI2 var_2BC
  loc_6C7512: FStI2 var_A4
  loc_6C7515: Branch loc_6C75B7
  loc_6C7518: FLdRfVar var_2BA
  loc_6C751B: FLdPrThis
  loc_6C751C: VCallAd Control_ID_optFuel
  loc_6C751F: FStAdFunc var_C0
  loc_6C7522: FLdPr var_C0
  loc_6C7525:  = Me.Value
  loc_6C752A: FLdI2 var_2BA
  loc_6C752D: FLdRfVar var_2BC
  loc_6C7530: FLdUI1
  loc_6C7534: CI2UI1
  loc_6C7536: ImpAdLdRf MemVar_74A220
  loc_6C7539: NewIfNullPr clsProducts
  loc_6C753C:  = clsProducts.hWnd
  loc_6C7541: FLdI2 var_2BC
  loc_6C7544: NotI4
  loc_6C7545: AndI4
  loc_6C7546: FFree1Ad var_C0
  loc_6C7549: BranchF loc_6C756F
  loc_6C754C: FLdRfVar var_2BC
  loc_6C754F: FLdRfVar var_A4
  loc_6C7552: FLdRfVar var_AA
  loc_6C7555: FLdRfVar var_94
  loc_6C7558: FLdUI1
  loc_6C755C: CI2UI1
  loc_6C755E: PopTmpLdAd2 var_2BA
  loc_6C7561: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C7566: FLdI2 var_2BC
  loc_6C7569: FStI2 var_A4
  loc_6C756C: Branch loc_6C75B7
  loc_6C756F: FLdRfVar var_2BA
  loc_6C7572: FLdPrThis
  loc_6C7573: VCallAd Control_ID_optAll
  loc_6C7576: FStAdFunc var_C0
  loc_6C7579: FLdPr var_C0
  loc_6C757C:  = Me.Value
  loc_6C7581: FLdI2 var_2BA
  loc_6C7584: FFree1Ad var_C0
  loc_6C7587: BranchF loc_6C75AD
  loc_6C758A: FLdRfVar var_2BC
  loc_6C758D: FLdRfVar var_A4
  loc_6C7590: FLdRfVar var_AA
  loc_6C7593: FLdRfVar var_94
  loc_6C7596: FLdUI1
  loc_6C759A: CI2UI1
  loc_6C759C: PopTmpLdAd2 var_2BA
  loc_6C759F: from_stack_5v = Proc_133_33_5FBB10(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C75A4: FLdI2 var_2BC
  loc_6C75A7: FStI2 var_A4
  loc_6C75AA: Branch loc_6C75B7
  loc_6C75AD: ILdRf var_94
  loc_6C75B0: LitStr "0"
  loc_6C75B3: ConcatStr
  loc_6C75B4: FStStr var_94
  loc_6C75B7: FLdRfVar var_2BA
  loc_6C75BA: FLdPrThis
  loc_6C75BB: VCallAd Control_ID_optGNC
  loc_6C75BE: FStAdFunc var_C0
  loc_6C75C1: FLdPr var_C0
  loc_6C75C4:  = Me.Value
  loc_6C75C9: FLdI2 var_2BA
  loc_6C75CC: FLdUI1
  loc_6C75D0: CI2UI1
  loc_6C75D2: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6C75D7: AndI4
  loc_6C75D8: FFree1Ad var_C0
  loc_6C75DB: BranchF loc_6C7601
  loc_6C75DE: FLdRfVar var_2BC
  loc_6C75E1: FLdRfVar var_A2
  loc_6C75E4: FLdRfVar var_A8
  loc_6C75E7: FLdRfVar var_90
  loc_6C75EA: FLdUI1
  loc_6C75EE: CI2UI1
  loc_6C75F0: PopTmpLdAd2 var_2BA
  loc_6C75F3: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C75F8: FLdI2 var_2BC
  loc_6C75FB: FStI2 var_A2
  loc_6C75FE: Branch loc_6C7694
  loc_6C7601: FLdRfVar var_2BA
  loc_6C7604: FLdPrThis
  loc_6C7605: VCallAd Control_ID_optFuel
  loc_6C7608: FStAdFunc var_C0
  loc_6C760B: FLdPr var_C0
  loc_6C760E:  = Me.Value
  loc_6C7613: FLdI2 var_2BA
  loc_6C7616: FLdUI1
  loc_6C761A: CI2UI1
  loc_6C761C: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_6C7621: NotI4
  loc_6C7622: AndI4
  loc_6C7623: FFree1Ad var_C0
  loc_6C7626: BranchF loc_6C764C
  loc_6C7629: FLdRfVar var_2BC
  loc_6C762C: FLdRfVar var_A2
  loc_6C762F: FLdRfVar var_A8
  loc_6C7632: FLdRfVar var_90
  loc_6C7635: FLdUI1
  loc_6C7639: CI2UI1
  loc_6C763B: PopTmpLdAd2 var_2BA
  loc_6C763E: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C7643: FLdI2 var_2BC
  loc_6C7646: FStI2 var_A2
  loc_6C7649: Branch loc_6C7694
  loc_6C764C: FLdRfVar var_2BA
  loc_6C764F: FLdPrThis
  loc_6C7650: VCallAd Control_ID_optAll
  loc_6C7653: FStAdFunc var_C0
  loc_6C7656: FLdPr var_C0
  loc_6C7659:  = Me.Value
  loc_6C765E: FLdI2 var_2BA
  loc_6C7661: FFree1Ad var_C0
  loc_6C7664: BranchF loc_6C768A
  loc_6C7667: FLdRfVar var_2BC
  loc_6C766A: FLdRfVar var_A2
  loc_6C766D: FLdRfVar var_A8
  loc_6C7670: FLdRfVar var_90
  loc_6C7673: FLdUI1
  loc_6C7677: CI2UI1
  loc_6C7679: PopTmpLdAd2 var_2BA
  loc_6C767C: from_stack_5v = Proc_133_32_5FC844(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_6C7681: FLdI2 var_2BC
  loc_6C7684: FStI2 var_A2
  loc_6C7687: Branch loc_6C7694
  loc_6C768A: ILdRf var_90
  loc_6C768D: LitStr "0"
  loc_6C7690: ConcatStr
  loc_6C7691: FStStr var_90
  loc_6C7694: FLdRfVar var_A6
  loc_6C7697: NextUI1
  loc_6C769D: FLdI2 var_A2
  loc_6C76A0: NotI4
  loc_6C76A1: FLdI2 var_A4
  loc_6C76A4: NotI4
  loc_6C76A5: AndI4
  loc_6C76A6: BranchF loc_6C7745
  loc_6C76A9: ImpAdLdUI1
  loc_6C76AD: CI2UI1
  loc_6C76AF: LitI2_Byte 4
  loc_6C76B1: EqI2
  loc_6C76B2: ImpAdLdUI1
  loc_6C76B6: CI2UI1
  loc_6C76B8: LitI2_Byte 5
  loc_6C76BA: EqI2
  loc_6C76BB: OrI4
  loc_6C76BC: BranchF loc_6C76F9
  loc_6C76BF: FLdRfVar var_2C0
  loc_6C76C2: FLdRfVar var_90
  loc_6C76C5: from_stack_2v = Proc_133_34_6445B8(from_stack_1v)
  loc_6C76CA: FLdZeroAd var_2C0
  loc_6C76CD: FStStr var_90
  loc_6C76D0: LitVarStr var_E0, "1"
  loc_6C76D5: FStVarCopyObj var_D0
  loc_6C76D8: FLdRfVar var_D0
  loc_6C76DB: LitI4 &HA
  loc_6C76E0: FLdRfVar var_F0
  loc_6C76E3: ImpAdCallFPR4  = String(, )
  loc_6C76E8: FLdRfVar var_F0
  loc_6C76EB: CStrVarTmp
  loc_6C76EC: FStStr var_94
  loc_6C76EF: FFreeVar var_D0 = ""
  loc_6C76F6: Branch loc_6C7745
  loc_6C76F9: LitVarStr var_E0, "1"
  loc_6C76FE: FStVarCopyObj var_D0
  loc_6C7701: FLdRfVar var_D0
  loc_6C7704: LitI4 &H20
  loc_6C7709: FLdRfVar var_F0
  loc_6C770C: ImpAdCallFPR4  = String(, )
  loc_6C7711: FLdRfVar var_F0
  loc_6C7714: CStrVarTmp
  loc_6C7715: FStStr var_90
  loc_6C7718: FFreeVar var_D0 = ""
  loc_6C771F: LitVarStr var_E0, "1"
  loc_6C7724: FStVarCopyObj var_D0
  loc_6C7727: FLdRfVar var_D0
  loc_6C772A: LitI4 &HA
  loc_6C772F: FLdRfVar var_F0
  loc_6C7732: ImpAdCallFPR4  = String(, )
  loc_6C7737: FLdRfVar var_F0
  loc_6C773A: CStrVarTmp
  loc_6C773B: FStStr var_94
  loc_6C773E: FFreeVar var_D0 = ""
  loc_6C7745: FLdI2 var_A2
  loc_6C7748: NotI4
  loc_6C7749: FLdI2 var_A4
  loc_6C774C: AndI4
  loc_6C774D: BranchF loc_6C7776
  loc_6C7750: LitVarStr var_E0, "1"
  loc_6C7755: FStVarCopyObj var_D0
  loc_6C7758: FLdRfVar var_D0
  loc_6C775B: LitI4 &H20
  loc_6C7760: FLdRfVar var_F0
  loc_6C7763: ImpAdCallFPR4  = String(, )
  loc_6C7768: FLdRfVar var_F0
  loc_6C776B: CStrVarTmp
  loc_6C776C: FStStr var_90
  loc_6C776F: FFreeVar var_D0 = ""
  loc_6C7776: FLdI2 var_A2
  loc_6C7779: FLdI2 var_A4
  loc_6C777C: NotI4
  loc_6C777D: AndI4
  loc_6C777E: BranchF loc_6C77A7
  loc_6C7781: LitVarStr var_E0, "1"
  loc_6C7786: FStVarCopyObj var_D0
  loc_6C7789: FLdRfVar var_D0
  loc_6C778C: LitI4 &HA
  loc_6C7791: FLdRfVar var_F0
  loc_6C7794: ImpAdCallFPR4  = String(, )
  loc_6C7799: FLdRfVar var_F0
  loc_6C779C: CStrVarTmp
  loc_6C779D: FStStr var_94
  loc_6C77A0: FFreeVar var_D0 = ""
  loc_6C77A7: LitStr vbNullString
  loc_6C77AA: FStStrCopy var_B4
  loc_6C77AD: LitI2_Byte 0
  loc_6C77AF: FStI2 var_BA
  loc_6C77B2: LitI2_Byte 1
  loc_6C77B4: CUI1I2
  loc_6C77B6: FLdRfVar var_A6
  loc_6C77B9: FLdRfVar var_2BA
  loc_6C77BC: FLdPrThis
  loc_6C77BD: VCallAd Control_ID_lstDiasSemana
  loc_6C77C0: FStAdFunc var_C0
  loc_6C77C3: FLdPr var_C0
  loc_6C77C6:  = Me.ListCount
  loc_6C77CB: FLdI2 var_2BA
  loc_6C77CE: CUI1I2
  loc_6C77D0: FFree1Ad var_C0
  loc_6C77D3: ForUI1 var_2C4
  loc_6C77D9: FLdRfVar var_2BA
  loc_6C77DC: FLdUI1
  loc_6C77E0: CI2UI1
  loc_6C77E2: LitI2_Byte 1
  loc_6C77E4: SubI2
  loc_6C77E5: FLdPrThis
  loc_6C77E6: VCallAd Control_ID_lstDiasSemana
  loc_6C77E9: FStAdFunc var_C0
  loc_6C77EC: FLdPr var_C0
  loc_6C77EF:  = Me.Selected
  loc_6C77F4: FLdI2 var_2BA
  loc_6C77F7: FFree1Ad var_C0
  loc_6C77FA: BranchF loc_6C780F
  loc_6C77FD: LitI2_Byte &HFF
  loc_6C77FF: FStI2 var_BA
  loc_6C7802: ILdRf var_B4
  loc_6C7805: LitStr "1"
  loc_6C7808: ConcatStr
  loc_6C7809: FStStr var_B4
  loc_6C780C: Branch loc_6C7819
  loc_6C780F: ILdRf var_B4
  loc_6C7812: LitStr "0"
  loc_6C7815: ConcatStr
  loc_6C7816: FStStr var_B4
  loc_6C7819: FLdRfVar var_A6
  loc_6C781C: NextUI1
  loc_6C7822: FLdI2 var_BA
  loc_6C7825: NotI4
  loc_6C7826: BranchF loc_6C782F
  loc_6C7829: LitStr "1111111"
  loc_6C782C: FStStrCopy var_B4
  loc_6C782F: FLdPrThis
  loc_6C7830: VCallAd Control_ID_chkDifSales
  loc_6C7833: CVarAd
  loc_6C7837: CBoolVarNull
  loc_6C7839: FFree1Var var_D0 = ""
  loc_6C783C: BranchF loc_6C7848
  loc_6C783F: LitStr "1"
  loc_6C7842: FStStrCopy var_B8
  loc_6C7845: Branch loc_6C784E
  loc_6C7848: LitStr "0"
  loc_6C784B: FStStrCopy var_B8
  loc_6C784E: FLdRfVar var_2C0
  loc_6C7851: LitI2_Byte 0
  loc_6C7853: FLdPrThis
  loc_6C7854: VCallAd Control_ID_lstPump
  loc_6C7857: FStAdFunc var_C0
  loc_6C785A: FLdPr var_C0
  loc_6C785D: from_stack_2 = Me.List(from_stack_1)
  loc_6C7862: ILdRf var_2C0
  loc_6C7865: LitStr vbNullString
  loc_6C7868: EqStr
  loc_6C786A: FFree1Str var_2C0
  loc_6C786D: FFree1Ad var_C0
  loc_6C7870: BranchF loc_6C7873
  loc_6C7873: FLdPrThis
  loc_6C7874: VCallAd Control_ID_sscImprimir
  loc_6C7877: FStAdFunc var_C0
  loc_6C787A: FLdPr var_C0
  loc_6C787D: LateIdLdVar var_D0 DispID_-518 -1
  loc_6C7884: CStrVarTmp
  loc_6C7885: FStStrNoPop var_2C0
  loc_6C7888: FLdPr Me
  loc_6C788B: MemLdStr global_104
  loc_6C788E: EqStr
  loc_6C7890: FFree1Str var_2C0
  loc_6C7893: FFree1Ad var_C0
  loc_6C7896: FFree1Var var_D0 = ""
  loc_6C7899: BranchF loc_6C795E
  loc_6C789C: FLdRfVar var_2BA
  loc_6C789F: FLdPrThis
  loc_6C78A0: VCallAd Control_ID_chkRango
  loc_6C78A3: FStAdFunc var_C0
  loc_6C78A6: FLdPr var_C0
  loc_6C78A9:  = Me.Value
  loc_6C78AE: ImpAdLdUI1
  loc_6C78B2: CI2UI1
  loc_6C78B4: LitI2_Byte 4
  loc_6C78B6: EqI2
  loc_6C78B7: ImpAdLdUI1
  loc_6C78BB: CI2UI1
  loc_6C78BD: LitI2_Byte 5
  loc_6C78BF: EqI2
  loc_6C78C0: FLdRfVar var_2BC
  loc_6C78C3: FLdPrThis
  loc_6C78C4: VCallAd Control_ID_optGNC
  loc_6C78C7: FStAdFunc var_2A4
  loc_6C78CA: FLdPr var_2A4
  loc_6C78CD:  = Me.Value
  loc_6C78D2: FLdI2 var_2BC
  loc_6C78D5: LitI2_Byte &HFF
  loc_6C78D7: EqI2
  loc_6C78D8: AndI4
  loc_6C78D9: OrI4
  loc_6C78DA: ILdRf var_90
  loc_6C78DD: ILdRf var_94
  loc_6C78E0: ConcatStr
  loc_6C78E1: FStStrNoPop var_2C0
  loc_6C78E4: ILdRf var_B4
  loc_6C78E7: ConcatStr
  loc_6C78E8: FStStrNoPop var_2C8
  loc_6C78EB: ILdRf var_B8
  loc_6C78EE: ConcatStr
  loc_6C78EF: FStStrNoPop var_2CC
  loc_6C78F2: FLdI2 var_2BA
  loc_6C78F5: CI4UI1
  loc_6C78F6: LitI4 1
  loc_6C78FB: EqI4
  loc_6C78FC: ILdRf var_8C
  loc_6C78FF: ILdRf var_88
  loc_6C7902: ImpAdCallFPR4  = Proc_158_11_660378(, , , )
  loc_6C7907: FFreeStr var_2C0 = "": var_2C8 = ""
  loc_6C7910: FFreeAd var_C0 = ""
  loc_6C7917: LitI4 1
  loc_6C791C: ImpAdLdI4 MemVar_74C73C
  loc_6C791F: Ary1LdI4
  loc_6C7920: LitStr vbNullString
  loc_6C7923: EqStr
  loc_6C7925: BranchF loc_6C7956
  loc_6C7928: LitVar_Missing var_F0
  loc_6C792B: LitVar_Missing var_D0
  loc_6C792E: FLdPr Me
  loc_6C7931: MemLdRfVar from_stack_1.global_116
  loc_6C7934: CVarRef
  loc_6C7939: LitI4 &H10
  loc_6C793E: FLdPr Me
  loc_6C7941: MemLdRfVar from_stack_1.global_112
  loc_6C7944: CVarRef
  loc_6C7949: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C794E: FFreeVar var_D0 = ""
  loc_6C7955: ExitProcHresult
  loc_6C7956: from_stack_1v = Proc_133_36_6E3EB8()
  loc_6C795B: Branch loc_6C7A1D
  loc_6C795E: FLdRfVar var_2BA
  loc_6C7961: FLdPrThis
  loc_6C7962: VCallAd Control_ID_chkRango
  loc_6C7965: FStAdFunc var_C0
  loc_6C7968: FLdPr var_C0
  loc_6C796B:  = Me.Value
  loc_6C7970: ImpAdLdUI1
  loc_6C7974: CI2UI1
  loc_6C7976: LitI2_Byte 4
  loc_6C7978: EqI2
  loc_6C7979: ImpAdLdUI1
  loc_6C797D: CI2UI1
  loc_6C797F: LitI2_Byte 5
  loc_6C7981: EqI2
  loc_6C7982: FLdRfVar var_2BC
  loc_6C7985: FLdPrThis
  loc_6C7986: VCallAd Control_ID_optGNC
  loc_6C7989: FStAdFunc var_2A4
  loc_6C798C: FLdPr var_2A4
  loc_6C798F:  = Me.Value
  loc_6C7994: FLdI2 var_2BC
  loc_6C7997: LitI2_Byte &HFF
  loc_6C7999: EqI2
  loc_6C799A: AndI4
  loc_6C799B: OrI4
  loc_6C799C: ILdRf var_90
  loc_6C799F: ILdRf var_94
  loc_6C79A2: ConcatStr
  loc_6C79A3: FStStrNoPop var_2C0
  loc_6C79A6: ILdRf var_B4
  loc_6C79A9: ConcatStr
  loc_6C79AA: FStStrNoPop var_2C8
  loc_6C79AD: ILdRf var_B8
  loc_6C79B0: ConcatStr
  loc_6C79B1: FStStrNoPop var_2CC
  loc_6C79B4: FLdI2 var_2BA
  loc_6C79B7: CI4UI1
  loc_6C79B8: LitI4 1
  loc_6C79BD: EqI4
  loc_6C79BE: ILdRf var_8C
  loc_6C79C1: ILdRf var_88
  loc_6C79C4: ImpAdCallFPR4  = Proc_158_11_660378(, , , )
  loc_6C79C9: FFreeStr var_2C0 = "": var_2C8 = ""
  loc_6C79D2: FFreeAd var_C0 = ""
  loc_6C79D9: LitI4 1
  loc_6C79DE: ImpAdLdI4 MemVar_74C73C
  loc_6C79E1: Ary1LdI4
  loc_6C79E2: LitStr vbNullString
  loc_6C79E5: EqStr
  loc_6C79E7: BranchF loc_6C7A18
  loc_6C79EA: LitVar_Missing var_F0
  loc_6C79ED: LitVar_Missing var_D0
  loc_6C79F0: FLdPr Me
  loc_6C79F3: MemLdRfVar from_stack_1.global_116
  loc_6C79F6: CVarRef
  loc_6C79FB: LitI4 &H10
  loc_6C7A00: FLdPr Me
  loc_6C7A03: MemLdRfVar from_stack_1.global_112
  loc_6C7A06: CVarRef
  loc_6C7A0B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C7A10: FFreeVar var_D0 = ""
  loc_6C7A17: ExitProcHresult
  loc_6C7A18: from_stack_1v = Proc_133_38_68B35C()
  loc_6C7A1D: ExitProcHresult
End Sub

Private Sub optGNC_Click() '5D0C24
  'Data Table: 45294C
  loc_5D0C08: LitI2_Byte 2
  loc_5D0C0A: PopTmpLdAd2 var_86
  loc_5D0C0D: from_stack_2v = Proc_133_27_61F4C0(from_stack_1v)
  loc_5D0C12: LitI2_Byte 0
  loc_5D0C14: PopTmpLdAd2 var_88
  loc_5D0C17: LitI2_Byte 2
  loc_5D0C19: PopTmpLdAd2 var_86
  loc_5D0C1C: from_stack_3v = Proc_133_28_638AFC(from_stack_1v, from_stack_2v)
  loc_5D0C21: ExitProcHresult
  loc_5D0C22: LitVar_Missing var_2B58
End Sub

Private Sub optFuel_Click() '5D0AF4
  'Data Table: 45294C
  loc_5D0AD8: LitI2_Byte 3
  loc_5D0ADA: PopTmpLdAd2 var_86
  loc_5D0ADD: from_stack_2v = Proc_133_27_61F4C0(from_stack_1v)
  loc_5D0AE2: LitI2_Byte 0
  loc_5D0AE4: PopTmpLdAd2 var_88
  loc_5D0AE7: LitI2_Byte 3
  loc_5D0AE9: PopTmpLdAd2 var_86
  loc_5D0AEC: from_stack_3v = Proc_133_28_638AFC(from_stack_1v, from_stack_2v)
  loc_5D0AF1: ExitProcHresult
  loc_5D0AF2: FStVarCopyObj var_2B01
End Sub

Private Sub txtFile_GotFocus() '5DE398
  'Data Table: 45294C
  loc_5DE350: LitI4 0
  loc_5DE355: FLdPrThis
  loc_5DE356: VCallAd Control_ID_txtFile
  loc_5DE359: FStAdFunc var_88
  loc_5DE35C: FLdPr var_88
  loc_5DE35F: Me.SelStart = from_stack_1
  loc_5DE364: FFree1Ad var_88
  loc_5DE367: FLdRfVar var_8C
  loc_5DE36A: FLdPrThis
  loc_5DE36B: VCallAd Control_ID_txtFile
  loc_5DE36E: FStAdFunc var_88
  loc_5DE371: FLdPr var_88
  loc_5DE374:  = Me.Text
  loc_5DE379: ILdRf var_8C
  loc_5DE37C: FnLenStr
  loc_5DE37D: FLdPrThis
  loc_5DE37E: VCallAd Control_ID_txtFile
  loc_5DE381: FStAdFunc var_90
  loc_5DE384: FLdPr var_90
  loc_5DE387: Me.SelLength = from_stack_1
  loc_5DE38C: FFree1Str var_8C
  loc_5DE38F: FFreeAd var_88 = ""
  loc_5DE396: ExitProcHresult
  loc_5DE397: ExitProcR4
End Sub

Private Sub HoraInicial_UnknownEvent_0 '5E1CB4
  'Data Table: 45294C
  loc_5E1C60: LitVarI4
  loc_5E1C68: PopAdLdVar
  loc_5E1C69: FLdPrThis
  loc_5E1C6A: VCallAd Control_ID_HoraInicial
  loc_5E1C6D: FStAdFunc var_98
  loc_5E1C70: FLdPr var_98
  loc_5E1C73: LateIdSt
  loc_5E1C78: FFree1Ad var_98
  loc_5E1C7B: FLdPrThis
  loc_5E1C7C: VCallAd Control_ID_HoraInicial
  loc_5E1C7F: FStAdFunc var_98
  loc_5E1C82: FLdPr var_98
  loc_5E1C85: LateIdLdVar var_A8 DispID_22 0
  loc_5E1C8C: CStrVarTmp
  loc_5E1C8D: FStStrNoPop var_AC
  loc_5E1C90: FnLenStr
  loc_5E1C91: CVarI4
  loc_5E1C95: PopAdLdVar
  loc_5E1C96: FLdPrThis
  loc_5E1C97: VCallAd Control_ID_HoraInicial
  loc_5E1C9A: FStAdFunc var_B0
  loc_5E1C9D: FLdPr var_B0
  loc_5E1CA0: LateIdSt
  loc_5E1CA5: FFree1Str var_AC
  loc_5E1CA8: FFreeAd var_98 = ""
  loc_5E1CAF: FFree1Var var_A8 = ""
  loc_5E1CB2: ExitProcHresult
End Sub

Private Sub HoraInicial_UnknownEvent_1 '5E09F0
  'Data Table: 45294C
  loc_5E09A4: FLdPrThis
  loc_5E09A5: VCallAd Control_ID_HoraInicial
  loc_5E09A8: FStAdFunc var_88
  loc_5E09AB: FLdPr var_88
  loc_5E09AE: LateIdLdVar var_98 DispID_22 0
  loc_5E09B5: PopAd
  loc_5E09B7: LitStr "0"
  loc_5E09BA: LitStr "_"
  loc_5E09BD: FLdRfVar var_98
  loc_5E09C0: CStrVarTmp
  loc_5E09C1: FStStrNoPop var_9C
  loc_5E09C4: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_5E09C9: CVarStr var_AC
  loc_5E09CC: PopAdLdVar
  loc_5E09CD: FLdPrThis
  loc_5E09CE: VCallAd Control_ID_HoraInicial
  loc_5E09D1: FStAdFunc var_B0
  loc_5E09D4: FLdPr var_B0
  loc_5E09D7: LateIdSt
  loc_5E09DC: FFree1Str var_9C
  loc_5E09DF: FFreeAd var_88 = ""
  loc_5E09E6: FFreeVar var_98 = ""
  loc_5E09ED: ExitProcHresult
  loc_5E09EE: FStVarCopyObj var_2B01
End Sub

Private Sub HoraInicial_KeyDown(KeyCode As Integer, Shift As Integer) '5D4D24
  'Data Table: 45294C
  loc_5D4CFC: ILdI2 KeyCode
  loc_5D4CFF: FStI2 var_86
  loc_5D4D02: FLdI2 var_86
  loc_5D4D05: LitI4 &HD
  loc_5D4D0A: CI2I4
  loc_5D4D0B: EqI2
  loc_5D4D0C: BranchF loc_5D4D21
  loc_5D4D0F: LitI2_Byte 0
  loc_5D4D11: IStI2 KeyCode
  loc_5D4D14: LitI2_Byte &HFF
  loc_5D4D16: PopTmpLdAd2 var_88
  loc_5D4D19: LitStr "{TAB}"
  loc_5D4D1C: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D4D21: ExitProcHresult
  loc_5D4D22: PopTmpLdAdStr var_2BB8
End Sub

Private Sub cmdSave_UnknownEvent_8 '613CCC
  'Data Table: 45294C
  loc_613BA4: FLdRfVar var_8A
  loc_613BA7: FLdPrThis
  loc_613BA8: VCallAd Control_ID_txtFile
  loc_613BAB: FStAdFunc var_88
  loc_613BAE: FLdPr var_88
  loc_613BB1:  = Me.Visible
  loc_613BB6: FLdI2 var_8A
  loc_613BB9: FFree1Ad var_88
  loc_613BBC: BranchF loc_613C46
  loc_613BBF: LitI2_Byte 0
  loc_613BC1: FLdPrThis
  loc_613BC2: VCallAd Control_ID_txtFile
  loc_613BC5: FStAdFunc var_88
  loc_613BC8: FLdPr var_88
  loc_613BCB: Me.Visible = from_stack_1b
  loc_613BD0: FFree1Ad var_88
  loc_613BD3: LitI2_Byte 0
  loc_613BD5: FLdPrThis
  loc_613BD6: VCallAd Control_ID_Dir1
  loc_613BD9: FStAdFunc var_88
  loc_613BDC: FLdPr var_88
  loc_613BDF: Me.Visible = from_stack_1b
  loc_613BE4: FFree1Ad var_88
  loc_613BE7: LitI2_Byte 0
  loc_613BE9: FLdPrThis
  loc_613BEA: VCallAd Control_ID_chkFormatCem37
  loc_613BED: FStAdFunc var_88
  loc_613BF0: FLdPr var_88
  loc_613BF3: Me.Visible = from_stack_1b
  loc_613BF8: FFree1Ad var_88
  loc_613BFB: LitI2_Byte 0
  loc_613BFD: FLdPrThis
  loc_613BFE: VCallAd Control_ID_lblA
  loc_613C01: FStAdFunc var_88
  loc_613C04: FLdPr var_88
  loc_613C07: Me.Visible = from_stack_1b
  loc_613C0C: FFree1Ad var_88
  loc_613C0F: FLdPr Me
  loc_613C12: MemLdStr global_104
  loc_613C15: CVarStr var_9C
  loc_613C18: PopAdLdVar
  loc_613C19: FLdPrThis
  loc_613C1A: VCallAd Control_ID_sscImprimir
  loc_613C1D: FStAdFunc var_88
  loc_613C20: FLdPr var_88
  loc_613C23: LateIdSt
  loc_613C28: FFree1Ad var_88
  loc_613C2B: LitVarStr var_9C, "Guardar &Ventas"
  loc_613C30: PopAdLdVar
  loc_613C31: FLdPrThis
  loc_613C32: VCallAd Control_ID_cmdSave
  loc_613C35: FStAdFunc var_88
  loc_613C38: FLdPr var_88
  loc_613C3B: LateIdSt
  loc_613C40: FFree1Ad var_88
  loc_613C43: Branch loc_613CB6
  loc_613C46: LitI2_Byte &HFF
  loc_613C48: FLdPrThis
  loc_613C49: VCallAd Control_ID_txtFile
  loc_613C4C: FStAdFunc var_88
  loc_613C4F: FLdPr var_88
  loc_613C52: Me.Visible = from_stack_1b
  loc_613C57: FFree1Ad var_88
  loc_613C5A: LitI2_Byte &HFF
  loc_613C5C: FLdPrThis
  loc_613C5D: VCallAd Control_ID_Dir1
  loc_613C60: FStAdFunc var_88
  loc_613C63: FLdPr var_88
  loc_613C66: Me.Visible = from_stack_1b
  loc_613C6B: FFree1Ad var_88
  loc_613C6E: LitI2_Byte &HFF
  loc_613C70: FLdPrThis
  loc_613C71: VCallAd Control_ID_lblA
  loc_613C74: FStAdFunc var_88
  loc_613C77: FLdPr var_88
  loc_613C7A: Me.Visible = from_stack_1b
  loc_613C7F: FFree1Ad var_88
  loc_613C82: FLdPr Me
  loc_613C85: MemLdStr global_108
  loc_613C88: CVarStr var_9C
  loc_613C8B: PopAdLdVar
  loc_613C8C: FLdPrThis
  loc_613C8D: VCallAd Control_ID_sscImprimir
  loc_613C90: FStAdFunc var_88
  loc_613C93: FLdPr var_88
  loc_613C96: LateIdSt
  loc_613C9B: FFree1Ad var_88
  loc_613C9E: LitVarStr var_9C, "&Cancelar"
  loc_613CA3: PopAdLdVar
  loc_613CA4: FLdPrThis
  loc_613CA5: VCallAd Control_ID_cmdSave
  loc_613CA8: FStAdFunc var_88
  loc_613CAB: FLdPr var_88
  loc_613CAE: LateIdSt
  loc_613CB3: FFree1Ad var_88
  loc_613CB6: FLdPrThis
  loc_613CB7: VCallAd Control_ID_Drive1
  loc_613CBA: FStAdFunc var_88
  loc_613CBD: FLdPr var_88
  loc_613CC0: Me.Refresh
  loc_613CC5: FFree1Ad var_88
  loc_613CC8: ExitProcHresult
End Sub

Private Sub HoraFinal_UnknownEvent_0 '5E1DDC
  'Data Table: 45294C
  loc_5E1D88: LitVarI4
  loc_5E1D90: PopAdLdVar
  loc_5E1D91: FLdPrThis
  loc_5E1D92: VCallAd Control_ID_HoraFinal
  loc_5E1D95: FStAdFunc var_98
  loc_5E1D98: FLdPr var_98
  loc_5E1D9B: LateIdSt
  loc_5E1DA0: FFree1Ad var_98
  loc_5E1DA3: FLdPrThis
  loc_5E1DA4: VCallAd Control_ID_HoraFinal
  loc_5E1DA7: FStAdFunc var_98
  loc_5E1DAA: FLdPr var_98
  loc_5E1DAD: LateIdLdVar var_A8 DispID_22 0
  loc_5E1DB4: CStrVarTmp
  loc_5E1DB5: FStStrNoPop var_AC
  loc_5E1DB8: FnLenStr
  loc_5E1DB9: CVarI4
  loc_5E1DBD: PopAdLdVar
  loc_5E1DBE: FLdPrThis
  loc_5E1DBF: VCallAd Control_ID_HoraFinal
  loc_5E1DC2: FStAdFunc var_B0
  loc_5E1DC5: FLdPr var_B0
  loc_5E1DC8: LateIdSt
  loc_5E1DCD: FFree1Str var_AC
  loc_5E1DD0: FFreeAd var_98 = ""
  loc_5E1DD7: FFree1Var var_A8 = ""
  loc_5E1DDA: ExitProcHresult
End Sub

Private Sub HoraFinal_UnknownEvent_1 '5E0840
  'Data Table: 45294C
  loc_5E07F4: FLdPrThis
  loc_5E07F5: VCallAd Control_ID_HoraFinal
  loc_5E07F8: FStAdFunc var_88
  loc_5E07FB: FLdPr var_88
  loc_5E07FE: LateIdLdVar var_98 DispID_22 0
  loc_5E0805: PopAd
  loc_5E0807: LitStr "0"
  loc_5E080A: LitStr "_"
  loc_5E080D: FLdRfVar var_98
  loc_5E0810: CStrVarTmp
  loc_5E0811: FStStrNoPop var_9C
  loc_5E0814: ImpAdCallI2 Proc_68_0_5F1270(, , )
  loc_5E0819: CVarStr var_AC
  loc_5E081C: PopAdLdVar
  loc_5E081D: FLdPrThis
  loc_5E081E: VCallAd Control_ID_HoraFinal
  loc_5E0821: FStAdFunc var_B0
  loc_5E0824: FLdPr var_B0
  loc_5E0827: LateIdSt
  loc_5E082C: FFree1Str var_9C
  loc_5E082F: FFreeAd var_88 = ""
  loc_5E0836: FFreeVar var_98 = ""
  loc_5E083D: ExitProcHresult
  loc_5E083E: IStFPR8 var_2B02
End Sub

Private Sub HoraFinal_KeyDown(KeyCode As Integer, Shift As Integer) '5D4D7C
  'Data Table: 45294C
  loc_5D4D54: ILdI2 KeyCode
  loc_5D4D57: FStI2 var_86
  loc_5D4D5A: FLdI2 var_86
  loc_5D4D5D: LitI4 &HD
  loc_5D4D62: CI2I4
  loc_5D4D63: EqI2
  loc_5D4D64: BranchF loc_5D4D79
  loc_5D4D67: LitI2_Byte 0
  loc_5D4D69: IStI2 KeyCode
  loc_5D4D6C: LitI2_Byte &HFF
  loc_5D4D6E: PopTmpLdAd2 var_88
  loc_5D4D71: LitStr "{TAB}"
  loc_5D4D74: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D4D79: ExitProcHresult
  loc_5D4D7A: AryLdRf
End Sub

Private Sub Drive1_Change() '5DE080
  'Data Table: 45294C
  loc_5DE03C: FLdPrThis
  loc_5DE03D: VCallAd Control_ID_Drive1
  loc_5DE040: FStAdFunc var_88
  loc_5DE043: FLdPr var_88
  loc_5DE046: Me.Refresh
  loc_5DE04B: FFree1Ad var_88
  loc_5DE04E: FLdRfVar var_8C
  loc_5DE051: FLdPrThis
  loc_5DE052: VCallAd Control_ID_Drive1
  loc_5DE055: FStAdFunc var_88
  loc_5DE058: FLdPr var_88
  loc_5DE05B:  = Me.Drive
  loc_5DE060: ILdRf var_8C
  loc_5DE063: FLdPrThis
  loc_5DE064: VCallAd Control_ID_Dir1
  loc_5DE067: FStAdFunc var_90
  loc_5DE06A: FLdPr var_90
  loc_5DE06D: Me.Path = from_stack_1
  loc_5DE072: FFree1Str var_8C
  loc_5DE075: FFreeAd var_88 = ""
  loc_5DE07C: ExitProcHresult
End Sub

Private Sub cmdPrevio_Click() '5DCB2C
  'Data Table: 45294C
  loc_5DCAE8: FLdPr Me
  loc_5DCAEB: MemLdI2 global_80
  loc_5DCAEE: LitI2_Byte 1
  loc_5DCAF0: SubI2
  loc_5DCAF1: FLdPr Me
  loc_5DCAF4: MemStI2 global_80
  loc_5DCAF7: LitI2_Byte 3
  loc_5DCAF9: LitNothing
  loc_5DCAFB: CastAd
  loc_5DCAFE: FStAdFunc var_94
  loc_5DCB01: FLdRfVar var_94
  loc_5DCB04: LitNothing
  loc_5DCB06: CastAd
  loc_5DCB09: FStAdFunc var_90
  loc_5DCB0C: FLdRfVar var_90
  loc_5DCB0F: LitI2_Byte 0
  loc_5DCB11: PopTmpLdAd2 var_8A
  loc_5DCB14: LitI4 2
  loc_5DCB19: PopTmpLdAdStr var_88
  loc_5DCB1C: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_5DCB21: FFreeAd var_90 = ""
  loc_5DCB28: ExitProcHresult
End Sub

Private Sub lstGrade_Click() '5E0610
  'Data Table: 45294C
  loc_5E05BC: FLdRfVar var_8A
  loc_5E05BF: FLdPrThis
  loc_5E05C0: VCallAd Control_ID_optGNC
  loc_5E05C3: FStAdFunc var_88
  loc_5E05C6: FLdPr var_88
  loc_5E05C9:  = Me.Enabled
  loc_5E05CE: FLdI2 var_8A
  loc_5E05D1: LitI2_Byte &HFF
  loc_5E05D3: EqI2
  loc_5E05D4: FLdRfVar var_92
  loc_5E05D7: FLdPrThis
  loc_5E05D8: VCallAd Control_ID_lstGrade
  loc_5E05DB: FStAdFunc var_90
  loc_5E05DE: FLdPr var_90
  loc_5E05E1:  = Me.ListCount
  loc_5E05E6: FLdI2 var_92
  loc_5E05E9: LitI2_Byte 1
  loc_5E05EB: EqI2
  loc_5E05EC: AndI4
  loc_5E05ED: FFreeAd var_88 = ""
  loc_5E05F4: BranchF loc_5E060D
  loc_5E05F7: LitI2_Byte &HFF
  loc_5E05F9: LitI2_Byte 0
  loc_5E05FB: FLdPrThis
  loc_5E05FC: VCallAd Control_ID_lstGrade
  loc_5E05FF: FStAdFunc var_88
  loc_5E0602: FLdPr var_88
  loc_5E0605: Me.Selected = from_stack_1
  loc_5E060A: FFree1Ad var_88
  loc_5E060D: ExitProcHresult
End Sub

Private Sub optAll_Click() '5D0B8C
  'Data Table: 45294C
  loc_5D0B70: LitI2_Byte 1
  loc_5D0B72: PopTmpLdAd2 var_86
  loc_5D0B75: from_stack_2v = Proc_133_27_61F4C0(from_stack_1v)
  loc_5D0B7A: LitI2_Byte 0
  loc_5D0B7C: PopTmpLdAd2 var_88
  loc_5D0B7F: LitI2_Byte 1
  loc_5D0B81: PopTmpLdAd2 var_86
  loc_5D0B84: from_stack_3v = Proc_133_28_638AFC(from_stack_1v, from_stack_2v)
  loc_5D0B89: ExitProcHresult
  loc_5D0B8A: CI4Str
End Sub

Private Sub FechaFinal_UnknownEvent_0 '5E2438
  'Data Table: 45294C
  loc_5E23E4: LitVarI4
  loc_5E23EC: PopAdLdVar
  loc_5E23ED: FLdPrThis
  loc_5E23EE: VCallAd Control_ID_FechaFinal
  loc_5E23F1: FStAdFunc var_98
  loc_5E23F4: FLdPr var_98
  loc_5E23F7: LateIdSt
  loc_5E23FC: FFree1Ad var_98
  loc_5E23FF: FLdPrThis
  loc_5E2400: VCallAd Control_ID_FechaFinal
  loc_5E2403: FStAdFunc var_98
  loc_5E2406: FLdPr var_98
  loc_5E2409: LateIdLdVar var_A8 DispID_22 0
  loc_5E2410: CStrVarTmp
  loc_5E2411: FStStrNoPop var_AC
  loc_5E2414: FnLenStr
  loc_5E2415: CVarI4
  loc_5E2419: PopAdLdVar
  loc_5E241A: FLdPrThis
  loc_5E241B: VCallAd Control_ID_FechaFinal
  loc_5E241E: FStAdFunc var_B0
  loc_5E2421: FLdPr var_B0
  loc_5E2424: LateIdSt
  loc_5E2429: FFree1Str var_AC
  loc_5E242C: FFreeAd var_98 = ""
  loc_5E2433: FFree1Var var_A8 = ""
  loc_5E2436: ExitProcHresult
End Sub

Private Sub FechaFinal_UnknownEvent_1 '5DDE00
  'Data Table: 45294C
  loc_5DDDBC: FLdPrThis
  loc_5DDDBD: VCallAd Control_ID_FechaFinal
  loc_5DDDC0: FStAdFunc var_88
  loc_5DDDC3: FLdPr var_88
  loc_5DDDC6: LateIdLdVar var_98 DispID_22 0
  loc_5DDDCD: PopAd
  loc_5DDDCF: LitI2_Byte &HFF
  loc_5DDDD1: FLdRfVar var_98
  loc_5DDDD4: CStrVarTmp
  loc_5DDDD5: FStStrNoPop var_9C
  loc_5DDDD8: ImpAdCallI2 Proc_87_9_690704(, )
  loc_5DDDDD: NotI4
  loc_5DDDDE: FFree1Str var_9C
  loc_5DDDE1: FFree1Ad var_88
  loc_5DDDE4: FFree1Var var_98 = ""
  loc_5DDDE7: BranchF loc_5DDDFF
  loc_5DDDEA: FLdPrThis
  loc_5DDDEB: VCallAd Control_ID_FechaFinal
  loc_5DDDEE: FStAdFunc var_88
  loc_5DDDF1: FLdPr var_88
  loc_5DDDF4: LateIdCall
  loc_5DDDFC: FFree1Ad var_88
  loc_5DDDFF: ExitProcHresult
End Sub

Private Sub FechaFinal_KeyDown(KeyCode As Integer, Shift As Integer) '5D519C
  'Data Table: 45294C
  loc_5D5174: ILdI2 KeyCode
  loc_5D5177: FStI2 var_86
  loc_5D517A: FLdI2 var_86
  loc_5D517D: LitI4 &HD
  loc_5D5182: CI2I4
  loc_5D5183: EqI2
  loc_5D5184: BranchF loc_5D5199
  loc_5D5187: LitI2_Byte 0
  loc_5D5189: IStI2 KeyCode
  loc_5D518C: LitI2_Byte &HFF
  loc_5D518E: PopTmpLdAd2 var_88
  loc_5D5191: LitStr "{TAB}"
  loc_5D5194: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D5199: ExitProcHresult
End Sub

Public Function CalculoPrice(valor, PPU) '61D448
  'Data Table: 45294C
  loc_61D30C: ZeroRetVal
  loc_61D30E: ILdI2 PPU
  loc_61D311: BranchF loc_61D355
  loc_61D314: ILdI4 valor
  loc_61D317: ImpAdCallFPR4 push Val()
  loc_61D31C: FStFPR8 var_D4
  loc_61D31F: LitI4 1
  loc_61D324: LitI4 1
  loc_61D329: ImpAdLdRf MemVar_74C350
  loc_61D32C: CVarRef
  loc_61D331: FLdFPR8 var_D4
  loc_61D334: ImpAdLdFPR4 MemVar_74C2DC
  loc_61D337: DivR8
  loc_61D338: CVarR8
  loc_61D33C: FLdRfVar var_CC
  loc_61D33F: ImpAdCallFPR4  = Format(, )
  loc_61D344: FLdRfVar var_CC
  loc_61D347: CStrVarTmp
  loc_61D348: FStStr var_8C
  loc_61D34B: FFreeVar var_AC = ""
  loc_61D352: Branch loc_61D393
  loc_61D355: ILdI4 valor
  loc_61D358: ImpAdCallFPR4 push Val()
  loc_61D35D: FStFPR8 var_D4
  loc_61D360: LitI4 1
  loc_61D365: LitI4 1
  loc_61D36A: ImpAdLdRf MemVar_74C364
  loc_61D36D: CVarRef
  loc_61D372: FLdFPR8 var_D4
  loc_61D375: ImpAdLdFPR4 MemVar_74C2E0
  loc_61D378: DivR8
  loc_61D379: CVarR8
  loc_61D37D: FLdRfVar var_CC
  loc_61D380: ImpAdCallFPR4  = Format(, )
  loc_61D385: FLdRfVar var_CC
  loc_61D388: CStrVarTmp
  loc_61D389: FStStr var_8C
  loc_61D38C: FFreeVar var_AC = ""
  loc_61D393: ImpAdLdUI1
  loc_61D397: CI2UI1
  loc_61D399: LitI2_Byte 4
  loc_61D39B: GtI2
  loc_61D39C: BranchF loc_61D3E6
  loc_61D39F: LitVarI2 var_BC, 14
  loc_61D3A4: FLdRfVar var_8C
  loc_61D3A7: CVarRef
  loc_61D3AC: FLdRfVar var_AC
  loc_61D3AF: ImpAdCallFPR4  = Trim()
  loc_61D3B4: FLdRfVar var_AC
  loc_61D3B7: FnLenVar var_CC
  loc_61D3BB: SubVar var_E4
  loc_61D3BF: CI4Var
  loc_61D3C1: FLdRfVar var_F4
  loc_61D3C4: ImpAdCallFPR4  = Space()
  loc_61D3C9: FLdRfVar var_F4
  loc_61D3CC: ILdRf var_8C
  loc_61D3CF: CVarStr var_104
  loc_61D3D2: ConcatVar var_114
  loc_61D3D6: CStrVarTmp
  loc_61D3D7: FStStr var_88
  loc_61D3DA: FFreeVar var_AC = "": var_F4 = ""
  loc_61D3E3: Branch loc_61D440
  loc_61D3E6: ILdRf var_8C
  loc_61D3E9: FnLenStr
  loc_61D3EA: LitI4 9
  loc_61D3EF: GtI4
  loc_61D3F0: BranchF loc_61D3FC
  loc_61D3F3: ILdRf var_8C
  loc_61D3F6: FStStrCopy var_88
  loc_61D3F9: Branch loc_61D440
  loc_61D3FC: LitVarI2 var_BC, 9
  loc_61D401: FLdRfVar var_8C
  loc_61D404: CVarRef
  loc_61D409: FLdRfVar var_AC
  loc_61D40C: ImpAdCallFPR4  = Trim()
  loc_61D411: FLdRfVar var_AC
  loc_61D414: FnLenVar var_CC
  loc_61D418: SubVar var_E4
  loc_61D41C: CI4Var
  loc_61D41E: FLdRfVar var_F4
  loc_61D421: ImpAdCallFPR4  = Space()
  loc_61D426: FLdRfVar var_F4
  loc_61D429: ILdRf var_8C
  loc_61D42C: CVarStr var_104
  loc_61D42F: ConcatVar var_114
  loc_61D433: CStrVarTmp
  loc_61D434: FStStr var_88
  loc_61D437: FFreeVar var_AC = "": var_F4 = ""
  loc_61D440: ExitProcCbHresult
End Function

Private Function Proc_133_27_61F4C0(arg_C) '61F4C0
  'Data Table: 45294C
  loc_61F370: ILdI2 arg_C
  loc_61F373: FLdPr Me
  loc_61F376: MemStI2 global_120
  loc_61F379: FLdPrThis
  loc_61F37A: VCallAd Control_ID_lstPump
  loc_61F37D: FStAdFunc var_8C
  loc_61F380: FLdPr var_8C
  loc_61F383: Me.Clear
  loc_61F388: FFree1Ad var_8C
  loc_61F38B: LitI2_Byte 1
  loc_61F38D: FLdRfVar var_86
  loc_61F390: ImpAdLdUI1
  loc_61F394: CI2UI1
  loc_61F396: ForI2 var_90
  loc_61F39C: ILdI2 arg_C
  loc_61F39F: FStI2 var_92
  loc_61F3A2: FLdI2 var_92
  loc_61F3A5: LitI2_Byte 1
  loc_61F3A7: EqI2
  loc_61F3A8: BranchF loc_61F3EC
  loc_61F3AB: LitVar_Missing var_B0
  loc_61F3AE: PopAdLdVar
  loc_61F3AF: ImpAdLdI4 MemVar_74BED4
  loc_61F3B2: LitStr " "
  loc_61F3B5: ConcatStr
  loc_61F3B6: FStStrNoPop var_98
  loc_61F3B9: FLdI2 var_86
  loc_61F3BC: CStrUI1
  loc_61F3BE: FStStrNoPop var_9C
  loc_61F3C1: ConcatStr
  loc_61F3C2: FStStrNoPop var_A0
  loc_61F3C5: FLdPrThis
  loc_61F3C6: VCallAd Control_ID_lstPump
  loc_61F3C9: FStAdFunc var_8C
  loc_61F3CC: FLdPr var_8C
  loc_61F3CF: Me.AddItem from_stack_1, from_stack_2
  loc_61F3D4: FFreeStr var_98 = "": var_9C = ""
  loc_61F3DD: FFree1Ad var_8C
  loc_61F3E0: FLdI2 var_88
  loc_61F3E3: LitI2_Byte 1
  loc_61F3E5: AddI2
  loc_61F3E6: FStI2 var_88
  loc_61F3E9: Branch loc_61F494
  loc_61F3EC: FLdI2 var_92
  loc_61F3EF: LitI2_Byte 2
  loc_61F3F1: EqI2
  loc_61F3F2: BranchF loc_61F441
  loc_61F3F5: FLdI2 var_86
  loc_61F3F8: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_61F3FD: BranchF loc_61F43E
  loc_61F400: LitVar_Missing var_B0
  loc_61F403: PopAdLdVar
  loc_61F404: ImpAdLdI4 MemVar_74BED4
  loc_61F407: LitStr " "
  loc_61F40A: ConcatStr
  loc_61F40B: FStStrNoPop var_98
  loc_61F40E: FLdI2 var_86
  loc_61F411: CStrUI1
  loc_61F413: FStStrNoPop var_9C
  loc_61F416: ConcatStr
  loc_61F417: FStStrNoPop var_A0
  loc_61F41A: FLdPrThis
  loc_61F41B: VCallAd Control_ID_lstPump
  loc_61F41E: FStAdFunc var_8C
  loc_61F421: FLdPr var_8C
  loc_61F424: Me.AddItem from_stack_1, from_stack_2
  loc_61F429: FFreeStr var_98 = "": var_9C = ""
  loc_61F432: FFree1Ad var_8C
  loc_61F435: FLdI2 var_88
  loc_61F438: LitI2_Byte 1
  loc_61F43A: AddI2
  loc_61F43B: FStI2 var_88
  loc_61F43E: Branch loc_61F494
  loc_61F441: FLdI2 var_92
  loc_61F444: LitI2_Byte 3
  loc_61F446: EqI2
  loc_61F447: BranchF loc_61F494
  loc_61F44A: FLdI2 var_86
  loc_61F44D: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_61F452: NotI4
  loc_61F453: BranchF loc_61F494
  loc_61F456: LitVar_Missing var_B0
  loc_61F459: PopAdLdVar
  loc_61F45A: ImpAdLdI4 MemVar_74BED4
  loc_61F45D: LitStr " "
  loc_61F460: ConcatStr
  loc_61F461: FStStrNoPop var_98
  loc_61F464: FLdI2 var_86
  loc_61F467: CStrUI1
  loc_61F469: FStStrNoPop var_9C
  loc_61F46C: ConcatStr
  loc_61F46D: FStStrNoPop var_A0
  loc_61F470: FLdPrThis
  loc_61F471: VCallAd Control_ID_lstPump
  loc_61F474: FStAdFunc var_8C
  loc_61F477: FLdPr var_8C
  loc_61F47A: Me.AddItem from_stack_1, from_stack_2
  loc_61F47F: FFreeStr var_98 = "": var_9C = ""
  loc_61F488: FFree1Ad var_8C
  loc_61F48B: FLdI2 var_88
  loc_61F48E: LitI2_Byte 1
  loc_61F490: AddI2
  loc_61F491: FStI2 var_88
  loc_61F494: FLdRfVar var_86
  loc_61F497: NextI2 var_90, loc_61F39C
  loc_61F49C: FLdI2 var_88
  loc_61F49F: LitI2_Byte 0
  loc_61F4A1: EqI2
  loc_61F4A2: BranchF loc_61F4BE
  loc_61F4A5: LitVar_Missing var_B0
  loc_61F4A8: PopAdLdVar
  loc_61F4A9: LitStr "Sin surtidores"
  loc_61F4AC: FLdPrThis
  loc_61F4AD: VCallAd Control_ID_lstPump
  loc_61F4B0: FStAdFunc var_8C
  loc_61F4B3: FLdPr var_8C
  loc_61F4B6: Me.AddItem from_stack_1, from_stack_2
  loc_61F4BB: FFree1Ad var_8C
  loc_61F4BE: ExitProcHresult
End Function

Private Function Proc_133_28_638AFC(arg_C, arg_10) '638AFC
  'Data Table: 45294C
  loc_6388DC: ILdI2 arg_10
  loc_6388DF: ImpAdLdUI1
  loc_6388E3: CI2UI1
  loc_6388E5: LitI2_Byte 4
  loc_6388E7: EqI2
  loc_6388E8: ImpAdLdUI1
  loc_6388EC: CI2UI1
  loc_6388EE: LitI2_Byte 5
  loc_6388F0: EqI2
  loc_6388F1: OrI4
  loc_6388F2: NotI4
  loc_6388F3: AndI4
  loc_6388F4: BranchF loc_638964
  loc_6388F7: LitI2 360
  loc_6388FA: CR8I2
  loc_6388FB: PopFPR4
  loc_6388FC: FLdPrThis
  loc_6388FD: VCallAd Control_ID_lstGrade
  loc_638900: FStAdFunc var_8C
  loc_638903: FLdPr var_8C
  loc_638906: Me.Top = from_stack_1s
  loc_63890B: FFree1Ad var_8C
  loc_63890E: LitI2 2085
  loc_638911: CR8I2
  loc_638912: PopFPR4
  loc_638913: FLdPrThis
  loc_638914: VCallAd Control_ID_lstGrade
  loc_638917: FStAdFunc var_8C
  loc_63891A: FLdPr var_8C
  loc_63891D: Me.Height = from_stack_1s
  loc_638922: FFree1Ad var_8C
  loc_638925: LitI2_Byte 0
  loc_638927: FLdPrThis
  loc_638928: VCallAd Control_ID_optGNC
  loc_63892B: FStAdFunc var_8C
  loc_63892E: FLdPr var_8C
  loc_638931: Me.Visible = from_stack_1b
  loc_638936: FFree1Ad var_8C
  loc_638939: LitI2_Byte 0
  loc_63893B: FLdPrThis
  loc_63893C: VCallAd Control_ID_optAll
  loc_63893F: FStAdFunc var_8C
  loc_638942: FLdPr var_8C
  loc_638945: Me.Visible = from_stack_1b
  loc_63894A: FFree1Ad var_8C
  loc_63894D: LitI2_Byte 0
  loc_63894F: FLdPrThis
  loc_638950: VCallAd Control_ID_optFuel
  loc_638953: FStAdFunc var_8C
  loc_638956: FLdPr var_8C
  loc_638959: Me.Visible = from_stack_1b
  loc_63895E: FFree1Ad var_8C
  loc_638961: Branch loc_6389A0
  loc_638964: LitI2_Byte &HFF
  loc_638966: FLdPrThis
  loc_638967: VCallAd Control_ID_optGNC
  loc_63896A: FStAdFunc var_8C
  loc_63896D: FLdPr var_8C
  loc_638970: Me.Visible = from_stack_1b
  loc_638975: FFree1Ad var_8C
  loc_638978: LitI2_Byte &HFF
  loc_63897A: FLdPrThis
  loc_63897B: VCallAd Control_ID_optAll
  loc_63897E: FStAdFunc var_8C
  loc_638981: FLdPr var_8C
  loc_638984: Me.Visible = from_stack_1b
  loc_638989: FFree1Ad var_8C
  loc_63898C: LitI2_Byte &HFF
  loc_63898E: FLdPrThis
  loc_63898F: VCallAd Control_ID_optFuel
  loc_638992: FStAdFunc var_8C
  loc_638995: FLdPr var_8C
  loc_638998: Me.Visible = from_stack_1b
  loc_63899D: FFree1Ad var_8C
  loc_6389A0: FLdPrThis
  loc_6389A1: VCallAd Control_ID_lstGrade
  loc_6389A4: FStAdFunc var_8C
  loc_6389A7: FLdPr var_8C
  loc_6389AA: Me.Clear
  loc_6389AF: FFree1Ad var_8C
  loc_6389B2: LitI2_Byte 0
  loc_6389B4: FLdRfVar var_86
  loc_6389B7: FLdRfVar var_8E
  loc_6389BA: ImpAdLdRf MemVar_74A220
  loc_6389BD: NewIfNullPr clsProducts
  loc_6389C0: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6389C5: FLdI2 var_8E
  loc_6389C8: LitI2_Byte 1
  loc_6389CA: SubI2
  loc_6389CB: ForI2 var_92
  loc_6389D1: ILdI2 arg_C
  loc_6389D4: FStI2 var_94
  loc_6389D7: FLdI2 var_94
  loc_6389DA: LitI2_Byte 1
  loc_6389DC: EqI2
  loc_6389DD: BranchF loc_638A13
  loc_6389E0: LitVar_Missing var_A8
  loc_6389E3: PopAdLdVar
  loc_6389E4: FLdRfVar var_98
  loc_6389E7: FLdI2 var_86
  loc_6389EA: LitI2_Byte 1
  loc_6389EC: AddI2
  loc_6389ED: ImpAdLdRf MemVar_74A220
  loc_6389F0: NewIfNullPr clsProducts
  loc_6389F8: ILdRf var_98
  loc_6389FB: FLdPrThis
  loc_6389FC: VCallAd Control_ID_lstGrade
  loc_6389FF: FStAdFunc var_8C
  loc_638A02: FLdPr var_8C
  loc_638A05: Me.AddItem from_stack_1, from_stack_2
  loc_638A0A: FFree1Str var_98
  loc_638A0D: FFree1Ad var_8C
  loc_638A10: Branch loc_638AF1
  loc_638A13: FLdI2 var_94
  loc_638A16: LitI2_Byte 2
  loc_638A18: EqI2
  loc_638A19: BranchF loc_638A9D
  loc_638A1C: FLdRfVar var_8E
  loc_638A1F: FLdI2 var_86
  loc_638A22: LitI2_Byte 1
  loc_638A24: AddI2
  loc_638A25: ImpAdLdRf MemVar_74A220
  loc_638A28: NewIfNullPr clsProducts
  loc_638A2B:  = clsProducts.hWnd
  loc_638A30: FLdI2 var_8E
  loc_638A33: BranchF loc_638A66
  loc_638A36: LitVar_Missing var_A8
  loc_638A39: PopAdLdVar
  loc_638A3A: FLdRfVar var_98
  loc_638A3D: FLdI2 var_86
  loc_638A40: LitI2_Byte 1
  loc_638A42: AddI2
  loc_638A43: ImpAdLdRf MemVar_74A220
  loc_638A46: NewIfNullPr clsProducts
  loc_638A4E: ILdRf var_98
  loc_638A51: FLdPrThis
  loc_638A52: VCallAd Control_ID_lstGrade
  loc_638A55: FStAdFunc var_8C
  loc_638A58: FLdPr var_8C
  loc_638A5B: Me.AddItem from_stack_1, from_stack_2
  loc_638A60: FFree1Str var_98
  loc_638A63: FFree1Ad var_8C
  loc_638A66: FLdRfVar var_8E
  loc_638A69: FLdPrThis
  loc_638A6A: VCallAd Control_ID_lstGrade
  loc_638A6D: FStAdFunc var_8C
  loc_638A70: FLdPr var_8C
  loc_638A73:  = Me.ListCount
  loc_638A78: FLdI2 var_8E
  loc_638A7B: LitI2_Byte 1
  loc_638A7D: EqI2
  loc_638A7E: FFree1Ad var_8C
  loc_638A81: BranchF loc_638A9A
  loc_638A84: LitI2_Byte &HFF
  loc_638A86: LitI2_Byte 0
  loc_638A88: FLdPrThis
  loc_638A89: VCallAd Control_ID_lstGrade
  loc_638A8C: FStAdFunc var_8C
  loc_638A8F: FLdPr var_8C
  loc_638A92: Me.Selected = from_stack_1
  loc_638A97: FFree1Ad var_8C
  loc_638A9A: Branch loc_638AF1
  loc_638A9D: FLdI2 var_94
  loc_638AA0: LitI2_Byte 3
  loc_638AA2: EqI2
  loc_638AA3: BranchF loc_638AF1
  loc_638AA6: FLdRfVar var_8E
  loc_638AA9: FLdI2 var_86
  loc_638AAC: LitI2_Byte 1
  loc_638AAE: AddI2
  loc_638AAF: ImpAdLdRf MemVar_74A220
  loc_638AB2: NewIfNullPr clsProducts
  loc_638AB5:  = clsProducts.hWnd
  loc_638ABA: FLdI2 var_8E
  loc_638ABD: NotI4
  loc_638ABE: BranchF loc_638AF1
  loc_638AC1: LitVar_Missing var_A8
  loc_638AC4: PopAdLdVar
  loc_638AC5: FLdRfVar var_98
  loc_638AC8: FLdI2 var_86
  loc_638ACB: LitI2_Byte 1
  loc_638ACD: AddI2
  loc_638ACE: ImpAdLdRf MemVar_74A220
  loc_638AD1: NewIfNullPr clsProducts
  loc_638AD9: ILdRf var_98
  loc_638ADC: FLdPrThis
  loc_638ADD: VCallAd Control_ID_lstGrade
  loc_638AE0: FStAdFunc var_8C
  loc_638AE3: FLdPr var_8C
  loc_638AE6: Me.AddItem from_stack_1, from_stack_2
  loc_638AEB: FFree1Str var_98
  loc_638AEE: FFree1Ad var_8C
  loc_638AF1: FLdRfVar var_86
  loc_638AF4: NextI2 var_92, loc_6389D1
  loc_638AF9: ExitProcHresult
  loc_638AFA: FLdPrThis
End Function

Private Function Proc_133_29_5D71E4() '5D71E4
  'Data Table: 45294C
  loc_5D71B4: ImpAdLdUI1
  loc_5D71B8: CI2UI1
  loc_5D71BA: LitI2_Byte 4
  loc_5D71BC: GtI2
  loc_5D71BD: BranchF loc_5D71C8
  loc_5D71C0: from_stack_1v = Proc_133_30_615DC0()
  loc_5D71C5: Branch loc_5D71E3
  loc_5D71C8: ImpAdLdUI1
  loc_5D71CC: CI2UI1
  loc_5D71CE: LitI2_Byte 4
  loc_5D71D0: EqI2
  loc_5D71D1: ImpAdLdUI1
  loc_5D71D5: CI2UI1
  loc_5D71D7: LitI2_Byte 5
  loc_5D71D9: EqI2
  loc_5D71DA: OrI4
  loc_5D71DB: BranchF loc_5D71E3
  loc_5D71DE: from_stack_1v = Proc_133_30_615DC0()
  loc_5D71E3: ExitProcHresult
End Function

Private Function Proc_133_30_615DC0() '615DC0
  'Data Table: 45294C
  loc_615C94: FLdRfVar var_8C
  loc_615C97: FLdPr Me
  loc_615C9A: VCallAd Control_ID_List1
  loc_615C9D: FStAdFunc var_88
  loc_615CA0: FLdPr var_88
  loc_615CA3:  = Me.Top
  loc_615CA8: FLdFPR4 var_8C
  loc_615CAB: LitI2_Byte &H37
  loc_615CAD: CR8I2
  loc_615CAE: SubR4
  loc_615CAF: PopFPR4
  loc_615CB0: FLdPr Me
  loc_615CB3: VCallAd Control_ID_List1
  loc_615CB6: FStAdFunc var_90
  loc_615CB9: FLdPr var_90
  loc_615CBC: Me.Top = from_stack_1s
  loc_615CC1: FFreeAd var_88 = ""
  loc_615CC8: FLdRfVar var_8C
  loc_615CCB: FLdPr Me
  loc_615CCE: VCallAd Control_ID_List1
  loc_615CD1: FStAdFunc var_88
  loc_615CD4: FLdPr var_88
  loc_615CD7:  = Me.Height
  loc_615CDC: FLdFPR4 var_8C
  loc_615CDF: LitI2 410
  loc_615CE2: CR8I2
  loc_615CE3: AddR8
  loc_615CE4: PopFPR4
  loc_615CE5: FLdPr Me
  loc_615CE8: VCallAd Control_ID_List1
  loc_615CEB: FStAdFunc var_90
  loc_615CEE: FLdPr var_90
  loc_615CF1: Me.Height = from_stack_1s
  loc_615CF6: FFreeAd var_88 = ""
  loc_615CFD: FLdRfVar var_8C
  loc_615D00: FLdPr Me
  loc_615D03: VCallAd Control_ID_cmdPrevio
  loc_615D06: FStAdFunc var_88
  loc_615D09: FLdPr var_88
  loc_615D0C:  = Me.Top
  loc_615D11: FLdFPR4 var_8C
  loc_615D14: LitI2_Byte &H37
  loc_615D16: CR8I2
  loc_615D17: SubR4
  loc_615D18: PopFPR4
  loc_615D19: FLdPr Me
  loc_615D1C: VCallAd Control_ID_cmdPrevio
  loc_615D1F: FStAdFunc var_90
  loc_615D22: FLdPr var_90
  loc_615D25: Me.Top = from_stack_1s
  loc_615D2A: FFreeAd var_88 = ""
  loc_615D31: LitVarStr var_A0, "Courier New"
  loc_615D36: PopAdLdVar
  loc_615D37: FLdRfVar var_90
  loc_615D3A: FLdPr Me
  loc_615D3D: VCallAd Control_ID_List1
  loc_615D40: FStAdFunc var_88
  loc_615D43: FLdPr var_88
  loc_615D46:  = Me.Font
  loc_615D4B: FLdPr var_90
  loc_615D4E: LateIdSt
  loc_615D53: FFreeAd var_88 = ""
  loc_615D5A: LitVarI2 var_A0, 8
  loc_615D5F: PopAdLdVar
  loc_615D60: FLdRfVar var_90
  loc_615D63: FLdPr Me
  loc_615D66: VCallAd Control_ID_List1
  loc_615D69: FStAdFunc var_88
  loc_615D6C: FLdPr var_88
  loc_615D6F:  = Me.Font
  loc_615D74: FLdPr var_90
  loc_615D77: LateIdSt
  loc_615D7C: FFreeAd var_88 = ""
  loc_615D83: LitI2_Byte 8
  loc_615D85: PopTmpLdAd2 var_A2
  loc_615D88: from_stack_2v = Proc_133_40_5E957C(from_stack_1v)
  loc_615D8D: ImpAdLdUI1
  loc_615D91: CI2UI1
  loc_615D93: LitI2_Byte 4
  loc_615D95: EqI2
  loc_615D96: ImpAdLdUI1
  loc_615D9A: CI2UI1
  loc_615D9C: LitI2_Byte 5
  loc_615D9E: EqI2
  loc_615D9F: OrI4
  loc_615DA0: BranchF loc_615DB0
  loc_615DA3: LitI2_Byte &HFF
  loc_615DA5: PopTmpLdAd2 var_A2
  loc_615DA8: from_stack_2v = Proc_133_39_5E20C8(from_stack_1v)
  loc_615DAD: Branch loc_615DBA
  loc_615DB0: LitI2_Byte 0
  loc_615DB2: PopTmpLdAd2 var_A2
  loc_615DB5: from_stack_2v = Proc_133_39_5E20C8(from_stack_1v)
  loc_615DBA: from_stack_1v = Proc_133_41_6522F4()
  loc_615DBF: ExitProcHresult
End Function

Private Function Proc_133_31_680668() '680668
  'Data Table: 45294C
  loc_6802E8: ImpAdLdUI1
  loc_6802EC: CI2UI1
  loc_6802EE: LitI2_Byte 4
  loc_6802F0: GtI2
  loc_6802F1: BranchF loc_680666
  loc_6802F4: FLdRfVar var_1D4
  loc_6802F7: LitVar_Missing var_1D0
  loc_6802FA: LitVar_Missing var_1B0
  loc_6802FD: LitVar_Missing var_190
  loc_680300: LitVar_Missing var_170
  loc_680303: LitVar_Missing var_150
  loc_680306: LitVar_Missing var_130
  loc_680309: LitVar_Missing var_110
  loc_68030C: LitVar_Missing var_F0
  loc_68030F: LitVar_Missing var_D0
  loc_680312: LitVar_Missing var_B0
  loc_680315: LitStr "Fecha y hora"
  loc_680318: FStStrCopy var_90
  loc_68031B: FLdRfVar var_90
  loc_68031E: LitI4 &HD
  loc_680323: PopTmpLdAdStr var_8C
  loc_680326: LitI2_Byte &H1B
  loc_680328: PopTmpLdAd2 var_86
  loc_68032B: ImpAdLdRf MemVar_74C7D0
  loc_68032E: NewIfNullPr clsMsg
  loc_680331: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680336: LitI4 8
  loc_68033B: FLdRfVar var_1E4
  loc_68033E: ImpAdCallFPR4  = Space()
  loc_680343: LitI4 5
  loc_680348: ImpAdLdI4 MemVar_74BED8
  loc_68034B: ImpAdCallI2 Left$(, )
  loc_680350: FStStr var_A40
  loc_680353: LitI4 1
  loc_680358: LitI4 1
  loc_68035D: LitVarStr var_224, "!@@@@@"
  loc_680362: FStVarCopyObj var_234
  loc_680365: FLdRfVar var_234
  loc_680368: FLdZeroAd var_A40
  loc_68036B: CVarStr var_214
  loc_68036E: ImpAdCallI2 Format$(, )
  loc_680373: FStStr var_A44
  loc_680376: LitI4 2
  loc_68037B: FLdRfVar var_264
  loc_68037E: ImpAdCallFPR4  = Space()
  loc_680383: FLdRfVar var_3C4
  loc_680386: LitVar_Missing var_3C0
  loc_680389: LitVar_Missing var_3A0
  loc_68038C: LitVar_Missing var_380
  loc_68038F: LitVar_Missing var_360
  loc_680392: LitVar_Missing var_340
  loc_680395: LitVar_Missing var_320
  loc_680398: LitVar_Missing var_300
  loc_68039B: LitVar_Missing var_2E0
  loc_68039E: LitVar_Missing var_2C0
  loc_6803A1: LitVar_Missing var_2A0
  loc_6803A4: LitStr "Producto"
  loc_6803A7: FStStrCopy var_280
  loc_6803AA: FLdRfVar var_280
  loc_6803AD: LitI4 &HE
  loc_6803B2: PopTmpLdAdStr var_27C
  loc_6803B5: LitI2_Byte &H1B
  loc_6803B7: PopTmpLdAd2 var_276
  loc_6803BA: ImpAdLdRf MemVar_74C7D0
  loc_6803BD: NewIfNullPr clsMsg
  loc_6803C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6803C5: LitI4 4
  loc_6803CA: FLdRfVar var_3F4
  loc_6803CD: ImpAdCallFPR4  = Space()
  loc_6803D2: FLdRfVar var_554
  loc_6803D5: LitVar_Missing var_550
  loc_6803D8: LitVar_Missing var_530
  loc_6803DB: LitVar_Missing var_510
  loc_6803DE: LitVar_Missing var_4F0
  loc_6803E1: LitVar_Missing var_4D0
  loc_6803E4: LitVar_Missing var_4B0
  loc_6803E7: LitVar_Missing var_490
  loc_6803EA: LitVar_Missing var_470
  loc_6803ED: LitVar_Missing var_450
  loc_6803F0: LitVar_Missing var_430
  loc_6803F3: LitStr "Forma de pago"
  loc_6803F6: FStStrCopy var_410
  loc_6803F9: FLdRfVar var_410
  loc_6803FC: LitI4 &HF
  loc_680401: PopTmpLdAdStr var_40C
  loc_680404: LitI2_Byte &H1B
  loc_680406: PopTmpLdAd2 var_406
  loc_680409: ImpAdLdRf MemVar_74C7D0
  loc_68040C: NewIfNullPr clsMsg
  loc_68040F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680414: LitI4 &HF
  loc_680419: FLdRfVar var_584
  loc_68041C: ImpAdCallFPR4  = Space()
  loc_680421: FLdRfVar var_6E4
  loc_680424: LitVar_Missing var_6E0
  loc_680427: LitVar_Missing var_6C0
  loc_68042A: LitVar_Missing var_6A0
  loc_68042D: LitVar_Missing var_680
  loc_680430: LitVar_Missing var_660
  loc_680433: LitVar_Missing var_640
  loc_680436: LitVar_Missing var_620
  loc_680439: LitVar_Missing var_600
  loc_68043C: LitVar_Missing var_5E0
  loc_68043F: LitVar_Missing var_5C0
  loc_680442: LitStr "Monto"
  loc_680445: FStStrCopy var_5A0
  loc_680448: FLdRfVar var_5A0
  loc_68044B: LitI4 &H10
  loc_680450: PopTmpLdAdStr var_59C
  loc_680453: LitI2_Byte &H1B
  loc_680455: PopTmpLdAd2 var_596
  loc_680458: ImpAdLdRf MemVar_74C7D0
  loc_68045B: NewIfNullPr clsMsg
  loc_68045E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680463: LitI4 9
  loc_680468: FLdRfVar var_714
  loc_68046B: ImpAdCallFPR4  = Space()
  loc_680470: FLdRfVar var_874
  loc_680473: LitVar_Missing var_870
  loc_680476: LitVar_Missing var_850
  loc_680479: LitVar_Missing var_830
  loc_68047C: LitVar_Missing var_810
  loc_68047F: LitVar_Missing var_7F0
  loc_680482: LitVar_Missing var_7D0
  loc_680485: LitVar_Missing var_7B0
  loc_680488: LitVar_Missing var_790
  loc_68048B: LitVar_Missing var_770
  loc_68048E: LitVar_Missing var_750
  loc_680491: LitStr "Volumen"
  loc_680494: FStStrCopy var_730
  loc_680497: FLdRfVar var_730
  loc_68049A: LitI4 &H11
  loc_68049F: PopTmpLdAdStr var_72C
  loc_6804A2: LitI2_Byte &H1B
  loc_6804A4: PopTmpLdAd2 var_726
  loc_6804A7: ImpAdLdRf MemVar_74C7D0
  loc_6804AA: NewIfNullPr clsMsg
  loc_6804AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6804B2: LitI4 8
  loc_6804B7: FLdRfVar var_8A4
  loc_6804BA: ImpAdCallFPR4  = Space()
  loc_6804BF: FLdRfVar var_A04
  loc_6804C2: LitVar_Missing var_A00
  loc_6804C5: LitVar_Missing var_9E0
  loc_6804C8: LitVar_Missing var_9C0
  loc_6804CB: LitVar_Missing var_9A0
  loc_6804CE: LitVar_Missing var_980
  loc_6804D1: LitVar_Missing var_960
  loc_6804D4: LitVar_Missing var_940
  loc_6804D7: LitVar_Missing var_920
  loc_6804DA: LitVar_Missing var_900
  loc_6804DD: LitVar_Missing var_8E0
  loc_6804E0: LitStr "PPU"
  loc_6804E3: FStStrCopy var_8C0
  loc_6804E6: FLdRfVar var_8C0
  loc_6804E9: LitI4 &H12
  loc_6804EE: PopTmpLdAdStr var_8BC
  loc_6804F1: LitI2_Byte &H1B
  loc_6804F3: PopTmpLdAd2 var_8B6
  loc_6804F6: ImpAdLdRf MemVar_74C7D0
  loc_6804F9: NewIfNullPr clsMsg
  loc_6804FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_680501: LitVar_Missing var_A38
  loc_680504: PopAdLdVar
  loc_680505: FLdZeroAd var_1D4
  loc_680508: CVarStr var_1F4
  loc_68050B: FLdRfVar var_1E4
  loc_68050E: ConcatVar var_204
  loc_680512: FLdZeroAd var_A44
  loc_680515: CVarStr var_244
  loc_680518: ConcatVar var_254
  loc_68051C: FLdRfVar var_264
  loc_68051F: ConcatVar var_274
  loc_680523: FLdZeroAd var_3C4
  loc_680526: CVarStr var_3D4
  loc_680529: ConcatVar var_3E4
  loc_68052D: FLdRfVar var_3F4
  loc_680530: ConcatVar var_404
  loc_680534: FLdZeroAd var_554
  loc_680537: CVarStr var_564
  loc_68053A: ConcatVar var_574
  loc_68053E: FLdRfVar var_584
  loc_680541: ConcatVar var_594
  loc_680545: FLdZeroAd var_6E4
  loc_680548: CVarStr var_6F4
  loc_68054B: ConcatVar var_704
  loc_68054F: FLdRfVar var_714
  loc_680552: ConcatVar var_724
  loc_680556: FLdZeroAd var_874
  loc_680559: CVarStr var_884
  loc_68055C: ConcatVar var_894
  loc_680560: FLdRfVar var_8A4
  loc_680563: ConcatVar var_8B4
  loc_680567: FLdZeroAd var_A04
  loc_68056A: CVarStr var_A14
  loc_68056D: ConcatVar var_A24
  loc_680571: CStrVarVal var_A28
  loc_680575: FLdPrThis
  loc_680576: VCallAd Control_ID_List1
  loc_680579: FStAdFunc var_A3C
  loc_68057C: FLdPr var_A3C
  loc_68057F: Me.AddItem from_stack_1, from_stack_2
  loc_680584: FFreeStr var_90 = "": var_280 = "": var_410 = "": var_5A0 = "": var_730 = "": var_8C0 = "": var_A28 = "": var_A40 = ""
  loc_680599: FFree1Ad var_A3C
  loc_68059C: FFreeVar var_750 = "": var_770 = "": var_790 = "": var_7B0 = "": var_7D0 = "": var_7F0 = "": var_810 = "": var_830 = "": var_850 = "": var_870 = "": var_724 = "": var_884 = "": var_894 = "": var_8A4 = "": var_8E0 = "": var_900 = "": var_920 = "": var_940 = "": var_960 = "": var_980 = "": var_9A0 = "": var_9C0 = "": var_9E0 = "": var_A00 = "": var_8B4 = "": var_A14 = "": var_A24 = "": var_3E4 = "": var_3F4 = "": var_430 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_550 = "": var_404 = "": var_564 = "": var_574 = "": var_584 = "": var_5C0 = "": var_5E0 = "": var_600 = "": var_620 = "": var_640 = "": var_660 = "": var_680 = "": var_6A0 = "": var_6C0 = "": var_6E0 = "": var_594 = "": var_6F4 = "": var_704 = "": var_714 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F4 = "": var_1E4 = "": var_214 = "": var_234 = "": var_204 = "": var_244 = "": var_254 = "": var_264 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3C0 = "": var_274 = ""
  loc_68064D: LitVar_Missing var_A0
  loc_680650: PopAdLdVar
  loc_680651: LitStr vbNullString
  loc_680654: FLdPrThis
  loc_680655: VCallAd Control_ID_List1
  loc_680658: FStAdFunc var_A3C
  loc_68065B: FLdPr var_A3C
  loc_68065E: Me.AddItem from_stack_1, from_stack_2
  loc_680663: FFree1Ad var_A3C
  loc_680666: ExitProcHresult
End Function

Private Function Proc_133_32_5FC844(arg_C, arg_10, arg_14, arg_18) '5FC844
  'Data Table: 45294C
  loc_5FC77C: LitI2_Byte 0
  loc_5FC77E: FStI2 var_88
  loc_5FC781: FLdRfVar var_8E
  loc_5FC784: FLdPrThis
  loc_5FC785: VCallAd Control_ID_lstPump
  loc_5FC788: FStAdFunc var_8C
  loc_5FC78B: FLdPr var_8C
  loc_5FC78E:  = Me.ListCount
  loc_5FC793: FLdI2 var_8E
  loc_5FC796: LitI2_Byte 1
  loc_5FC798: SubI2
  loc_5FC799: ILdUI1 arg_14
  loc_5FC79D: CI2UI1
  loc_5FC79F: GeI2
  loc_5FC7A0: FFree1Ad var_8C
  loc_5FC7A3: BranchF loc_5FC801
  loc_5FC7A6: FLdRfVar var_8E
  loc_5FC7A9: ILdUI1 arg_14
  loc_5FC7AD: CI2UI1
  loc_5FC7AF: FLdPrThis
  loc_5FC7B0: VCallAd Control_ID_lstPump
  loc_5FC7B3: FStAdFunc var_8C
  loc_5FC7B6: FLdPr var_8C
  loc_5FC7B9:  = Me.Selected
  loc_5FC7BE: FLdI2 var_8E
  loc_5FC7C1: FFree1Ad var_8C
  loc_5FC7C4: BranchF loc_5FC7DF
  loc_5FC7C7: LitI2_Byte &HFF
  loc_5FC7C9: FStI2 var_88
  loc_5FC7CC: LitI2_Byte &HFF
  loc_5FC7CE: PopTmpLdAd2 var_8E
  loc_5FC7D1: ILdRf arg_C
  loc_5FC7D4: ILdRf arg_10
  loc_5FC7D7: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FC7DC: Branch loc_5FC7EF
  loc_5FC7DF: LitI2_Byte 0
  loc_5FC7E1: PopTmpLdAd2 var_8E
  loc_5FC7E4: ILdRf arg_C
  loc_5FC7E7: ILdRf arg_10
  loc_5FC7EA: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FC7EF: ILdUI1 arg_14
  loc_5FC7F3: CI2UI1
  loc_5FC7F5: LitI2_Byte 1
  loc_5FC7F7: AddI2
  loc_5FC7F8: CUI1I2
  loc_5FC7FA: IStUI1
  loc_5FC7FE: Branch loc_5FC811
  loc_5FC801: LitI2_Byte 0
  loc_5FC803: PopTmpLdAd2 var_8E
  loc_5FC806: ILdRf arg_C
  loc_5FC809: ILdRf arg_10
  loc_5FC80C: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FC811: FLdRfVar var_88
  loc_5FC814: CVarRef
  loc_5FC819: LitVar_TRUE var_C0
  loc_5FC81C: ILdRf arg_18
  loc_5FC81F: CVarRef
  loc_5FC824: FLdRfVar var_E0
  loc_5FC827: ImpAdCallFPR4  = IIf(, , )
  loc_5FC82C: FLdRfVar var_E0
  loc_5FC82F: CBoolVar
  loc_5FC831: FStI2 var_86
  loc_5FC834: FFreeVar var_C0 = ""
  loc_5FC83B: ExitProcCbHresult
  loc_5FC841: MemLdPr global_8701
End Function

Private Function Proc_133_33_5FBB10(arg_C, arg_10, arg_14, arg_18) '5FBB10
  'Data Table: 45294C
  loc_5FBA48: LitI2_Byte 0
  loc_5FBA4A: FStI2 var_88
  loc_5FBA4D: FLdRfVar var_8E
  loc_5FBA50: FLdPrThis
  loc_5FBA51: VCallAd Control_ID_lstGrade
  loc_5FBA54: FStAdFunc var_8C
  loc_5FBA57: FLdPr var_8C
  loc_5FBA5A:  = Me.ListCount
  loc_5FBA5F: FLdI2 var_8E
  loc_5FBA62: LitI2_Byte 1
  loc_5FBA64: SubI2
  loc_5FBA65: ILdUI1 arg_14
  loc_5FBA69: CI2UI1
  loc_5FBA6B: GeI2
  loc_5FBA6C: FFree1Ad var_8C
  loc_5FBA6F: BranchF loc_5FBACD
  loc_5FBA72: FLdRfVar var_8E
  loc_5FBA75: ILdUI1 arg_14
  loc_5FBA79: CI2UI1
  loc_5FBA7B: FLdPrThis
  loc_5FBA7C: VCallAd Control_ID_lstGrade
  loc_5FBA7F: FStAdFunc var_8C
  loc_5FBA82: FLdPr var_8C
  loc_5FBA85:  = Me.Selected
  loc_5FBA8A: FLdI2 var_8E
  loc_5FBA8D: FFree1Ad var_8C
  loc_5FBA90: BranchF loc_5FBAAB
  loc_5FBA93: LitI2_Byte &HFF
  loc_5FBA95: FStI2 var_88
  loc_5FBA98: LitI2_Byte &HFF
  loc_5FBA9A: PopTmpLdAd2 var_8E
  loc_5FBA9D: ILdRf arg_C
  loc_5FBAA0: ILdRf arg_10
  loc_5FBAA3: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FBAA8: Branch loc_5FBABB
  loc_5FBAAB: LitI2_Byte 0
  loc_5FBAAD: PopTmpLdAd2 var_8E
  loc_5FBAB0: ILdRf arg_C
  loc_5FBAB3: ILdRf arg_10
  loc_5FBAB6: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FBABB: ILdUI1 arg_14
  loc_5FBABF: CI2UI1
  loc_5FBAC1: LitI2_Byte 1
  loc_5FBAC3: AddI2
  loc_5FBAC4: CUI1I2
  loc_5FBAC6: IStUI1
  loc_5FBACA: Branch loc_5FBADD
  loc_5FBACD: LitI2_Byte 0
  loc_5FBACF: PopTmpLdAd2 var_8E
  loc_5FBAD2: ILdRf arg_C
  loc_5FBAD5: ILdRf arg_10
  loc_5FBAD8: from_stack_4v = Proc_133_35_5F44DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5FBADD: FLdRfVar var_88
  loc_5FBAE0: CVarRef
  loc_5FBAE5: LitVar_TRUE var_C0
  loc_5FBAE8: ILdRf arg_18
  loc_5FBAEB: CVarRef
  loc_5FBAF0: FLdRfVar var_E0
  loc_5FBAF3: ImpAdCallFPR4  = IIf(, , )
  loc_5FBAF8: FLdRfVar var_E0
  loc_5FBAFB: CBoolVar
  loc_5FBAFD: FStI2 var_86
  loc_5FBB00: FFreeVar var_C0 = ""
  loc_5FBB07: ExitProcCbHresult
  loc_5FBB0D: IStI2
End Function

Private Function Proc_133_34_6445B8(arg_C) '6445B8
  'Data Table: 45294C
  loc_644364: ZeroRetVal
  loc_644366: LitVarStr var_A0, "0"
  loc_64436B: FStVarCopyObj var_B0
  loc_64436E: FLdRfVar var_B0
  loc_644371: LitI4 &H20
  loc_644376: FLdRfVar var_C0
  loc_644379: ImpAdCallFPR4  = String(, )
  loc_64437E: FLdRfVar var_C0
  loc_644381: CStrVarTmp
  loc_644382: FStStr var_90
  loc_644385: FFreeVar var_B0 = ""
  loc_64438C: LitI2_Byte 1
  loc_64438E: FLdRfVar var_8A
  loc_644391: ImpAdLdUI1
  loc_644395: CI2UI1
  loc_644397: ForI2 var_C4
  loc_64439D: FLdPrThis
  loc_64439E: VCallAd Control_ID_optAll
  loc_6443A1: CVarAd
  loc_6443A5: CBoolVarNull
  loc_6443A7: FFree1Var var_B0 = ""
  loc_6443AA: BranchF loc_64443C
  loc_6443AD: LitVarI2 var_B0, 1
  loc_6443B2: FLdI2 var_8A
  loc_6443B5: CI4UI1
  loc_6443B6: ILdRf arg_C
  loc_6443B9: CVarRef
  loc_6443BE: FLdRfVar var_C0
  loc_6443C1: ImpAdCallFPR4  = Mid(, , )
  loc_6443C6: FLdRfVar var_C0
  loc_6443C9: LitVarStr var_E4, "0"
  loc_6443CE: HardType
  loc_6443CF: EqVarBool
  loc_6443D1: FFreeVar var_B0 = ""
  loc_6443D8: BranchF loc_644439
  loc_6443DB: FLdI2 var_8A
  loc_6443DE: LitI2_Byte 1
  loc_6443E0: SubI2
  loc_6443E1: CVarI2 var_B0
  loc_6443E4: LitI4 1
  loc_6443E9: FLdRfVar var_90
  loc_6443EC: CVarRef
  loc_6443F1: FLdRfVar var_C0
  loc_6443F4: ImpAdCallFPR4  = Mid(, , )
  loc_6443F9: FLdRfVar var_C0
  loc_6443FC: LitVarStr var_E4, "1"
  loc_644401: ConcatVar var_F4
  loc_644405: LitVar_Missing var_124
  loc_644408: FLdI2 var_8A
  loc_64440B: LitI2_Byte 1
  loc_64440D: AddI2
  loc_64440E: CI4UI1
  loc_64440F: FLdRfVar var_90
  loc_644412: CVarRef
  loc_644417: FLdRfVar var_134
  loc_64441A: ImpAdCallFPR4  = Mid(, , )
  loc_64441F: FLdRfVar var_134
  loc_644422: ConcatVar var_144
  loc_644426: CStrVarTmp
  loc_644427: FStStr var_90
  loc_64442A: FFreeVar var_B0 = "": var_C0 = "": var_124 = "": var_F4 = "": var_134 = ""
  loc_644439: Branch loc_6445A4
  loc_64443C: FLdPrThis
  loc_64443D: VCallAd Control_ID_optFuel
  loc_644440: CVarAd
  loc_644444: CBoolVarNull
  loc_644446: FFree1Var var_B0 = ""
  loc_644449: BranchF loc_6444F2
  loc_64444C: LitVarI2 var_B0, 1
  loc_644451: FLdI2 var_8A
  loc_644454: CI4UI1
  loc_644455: ILdRf arg_C
  loc_644458: CVarRef
  loc_64445D: FLdRfVar var_C0
  loc_644460: ImpAdCallFPR4  = Mid(, , )
  loc_644465: FLdRfVar var_C0
  loc_644468: LitVarStr var_E4, "0"
  loc_64446D: HardType
  loc_64446E: EqVar var_F4
  loc_644472: FLdI2 var_8A
  loc_644475: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_64447A: NotI4
  loc_64447B: CVarBoolI2 var_104
  loc_64447F: AndVar var_124
  loc_644483: CBoolVarNull
  loc_644485: FFreeVar var_B0 = "": var_C0 = ""
  loc_64448E: BranchF loc_6444EF
  loc_644491: FLdI2 var_8A
  loc_644494: LitI2_Byte 1
  loc_644496: SubI2
  loc_644497: CVarI2 var_B0
  loc_64449A: LitI4 1
  loc_64449F: FLdRfVar var_90
  loc_6444A2: CVarRef
  loc_6444A7: FLdRfVar var_C0
  loc_6444AA: ImpAdCallFPR4  = Mid(, , )
  loc_6444AF: FLdRfVar var_C0
  loc_6444B2: LitVarStr var_E4, "1"
  loc_6444B7: ConcatVar var_F4
  loc_6444BB: LitVar_Missing var_124
  loc_6444BE: FLdI2 var_8A
  loc_6444C1: LitI2_Byte 1
  loc_6444C3: AddI2
  loc_6444C4: CI4UI1
  loc_6444C5: FLdRfVar var_90
  loc_6444C8: CVarRef
  loc_6444CD: FLdRfVar var_134
  loc_6444D0: ImpAdCallFPR4  = Mid(, , )
  loc_6444D5: FLdRfVar var_134
  loc_6444D8: ConcatVar var_144
  loc_6444DC: CStrVarTmp
  loc_6444DD: FStStr var_90
  loc_6444E0: FFreeVar var_B0 = "": var_C0 = "": var_124 = "": var_F4 = "": var_134 = ""
  loc_6444EF: Branch loc_6445A4
  loc_6444F2: FLdPrThis
  loc_6444F3: VCallAd Control_ID_optGNC
  loc_6444F6: CVarAd
  loc_6444FA: CBoolVarNull
  loc_6444FC: FFree1Var var_B0 = ""
  loc_6444FF: BranchF loc_6445A4
  loc_644502: LitVarI2 var_B0, 1
  loc_644507: FLdI2 var_8A
  loc_64450A: CI4UI1
  loc_64450B: ILdRf arg_C
  loc_64450E: CVarRef
  loc_644513: FLdRfVar var_C0
  loc_644516: ImpAdCallFPR4  = Mid(, , )
  loc_64451B: FLdRfVar var_C0
  loc_64451E: LitVarStr var_E4, "0"
  loc_644523: HardType
  loc_644524: EqVar var_F4
  loc_644528: FLdI2 var_8A
  loc_64452B: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_644530: CVarBoolI2 var_104
  loc_644534: AndVar var_124
  loc_644538: CBoolVarNull
  loc_64453A: FFreeVar var_B0 = "": var_C0 = ""
  loc_644543: BranchF loc_6445A4
  loc_644546: FLdI2 var_8A
  loc_644549: LitI2_Byte 1
  loc_64454B: SubI2
  loc_64454C: CVarI2 var_B0
  loc_64454F: LitI4 1
  loc_644554: FLdRfVar var_90
  loc_644557: CVarRef
  loc_64455C: FLdRfVar var_C0
  loc_64455F: ImpAdCallFPR4  = Mid(, , )
  loc_644564: FLdRfVar var_C0
  loc_644567: LitVarStr var_E4, "1"
  loc_64456C: ConcatVar var_F4
  loc_644570: LitVar_Missing var_124
  loc_644573: FLdI2 var_8A
  loc_644576: LitI2_Byte 1
  loc_644578: AddI2
  loc_644579: CI4UI1
  loc_64457A: FLdRfVar var_90
  loc_64457D: CVarRef
  loc_644582: FLdRfVar var_134
  loc_644585: ImpAdCallFPR4  = Mid(, , )
  loc_64458A: FLdRfVar var_134
  loc_64458D: ConcatVar var_144
  loc_644591: CStrVarTmp
  loc_644592: FStStr var_90
  loc_644595: FFreeVar var_B0 = "": var_C0 = "": var_124 = "": var_F4 = "": var_134 = ""
  loc_6445A4: FLdRfVar var_8A
  loc_6445A7: NextI2 var_C4, loc_64439D
  loc_6445AC: ILdRf var_90
  loc_6445AF: FStStrCopy var_88
  loc_6445B2: ExitProcCbHresult
End Function

Private Function Proc_133_35_5F44DC(arg_C, arg_10, arg_14) '5F44DC
  'Data Table: 45294C
  loc_5F444C: ILdI2 arg_10
  loc_5F444F: LitI2_Byte 1
  loc_5F4451: SubI2
  loc_5F4452: CVarI2 var_B8
  loc_5F4455: LitI4 1
  loc_5F445A: ILdRf arg_C
  loc_5F445D: CVarRef
  loc_5F4462: FLdRfVar var_C8
  loc_5F4465: ImpAdCallFPR4  = Mid(, , )
  loc_5F446A: FLdRfVar var_C8
  loc_5F446D: LitVarStr var_108, "0"
  loc_5F4472: FStVarCopyObj var_118
  loc_5F4475: FLdRfVar var_118
  loc_5F4478: LitVarStr var_E8, "1"
  loc_5F447D: FStVarCopyObj var_F8
  loc_5F4480: FLdRfVar var_F8
  loc_5F4483: ILdRf arg_14
  loc_5F4486: CVarRef
  loc_5F448B: FLdRfVar var_128
  loc_5F448E: ImpAdCallFPR4  = IIf(, , )
  loc_5F4493: FLdRfVar var_128
  loc_5F4496: ConcatVar var_138
  loc_5F449A: LitVar_Missing var_168
  loc_5F449D: ILdI2 arg_10
  loc_5F44A0: LitI2_Byte 1
  loc_5F44A2: AddI2
  loc_5F44A3: CI4UI1
  loc_5F44A4: ILdRf arg_C
  loc_5F44A7: CVarRef
  loc_5F44AC: FLdRfVar var_178
  loc_5F44AF: ImpAdCallFPR4  = Mid(, , )
  loc_5F44B4: FLdRfVar var_178
  loc_5F44B7: ConcatVar var_188
  loc_5F44BB: CStrVarTmp
  loc_5F44BC: FStStr var_88
  loc_5F44BF: FFreeVar var_B8 = "": var_F8 = "": var_118 = "": var_C8 = "": var_128 = "": var_168 = "": var_138 = "": var_178 = ""
  loc_5F44D4: ILdRf var_88
  loc_5F44D7: IStStrCopy arg_C
  loc_5F44DB: ExitProcHresult
End Function

Private Function Proc_133_36_6E3EB8() '6E3EB8
  'Data Table: 45294C
  loc_6E3368: LitI4 1
  loc_6E336D: FLdRfVar var_88
  loc_6E3370: LitI4 &H20
  loc_6E3375: LitI4 1
  loc_6E337A: ForStepI4 var_9C
  loc_6E3380: ILdRf var_88
  loc_6E3383: FLdRfVar var_A2
  loc_6E3386: FLdPrThis
  loc_6E3387: VCallAd Control_ID_lstPump
  loc_6E338A: FStAdFunc var_A0
  loc_6E338D: FLdPr var_A0
  loc_6E3390:  = Me.ListCount
  loc_6E3395: FLdI2 var_A2
  loc_6E3398: CI4UI1
  loc_6E3399: LeI4
  loc_6E339A: FFree1Ad var_A0
  loc_6E339D: BranchF loc_6E341E
  loc_6E33A0: FLdRfVar var_A2
  loc_6E33A3: ILdRf var_88
  loc_6E33A6: LitI4 1
  loc_6E33AB: SubI4
  loc_6E33AC: CI2I4
  loc_6E33AD: FLdPrThis
  loc_6E33AE: VCallAd Control_ID_lstPump
  loc_6E33B1: FStAdFunc var_A0
  loc_6E33B4: FLdPr var_A0
  loc_6E33B7:  = Me.Selected
  loc_6E33BC: FLdRfVar var_88
  loc_6E33BF: CVarRef
  loc_6E33C4: ImpAdCallI2 Str$()
  loc_6E33C9: FStStr var_12C
  loc_6E33CC: ILdRf var_8C
  loc_6E33CF: CVarStr var_118
  loc_6E33D2: LitVarStr var_E8, vbNullString
  loc_6E33D7: FStVarCopyObj var_F8
  loc_6E33DA: FLdRfVar var_F8
  loc_6E33DD: FLdZeroAd var_12C
  loc_6E33E0: FStStrNoPop var_B8
  loc_6E33E3: LitStr " "
  loc_6E33E6: ConcatStr
  loc_6E33E7: CVarStr var_D8
  loc_6E33EA: FLdI2 var_A2
  loc_6E33ED: CVarBoolI2 var_C8
  loc_6E33F1: FLdRfVar var_108
  loc_6E33F4: ImpAdCallFPR4  = IIf(, , )
  loc_6E33F9: FLdRfVar var_108
  loc_6E33FC: ConcatVar var_128
  loc_6E3400: CStrVarTmp
  loc_6E3401: FStStr var_8C
  loc_6E3404: FFreeStr var_B8 = ""
  loc_6E340B: FFree1Ad var_A0
  loc_6E340E: FFreeVar var_C8 = "": var_D8 = "": var_F8 = "": var_108 = ""
  loc_6E341B: Branch loc_6E3428
  loc_6E341E: ILdRf var_8C
  loc_6E3421: LitStr vbNullString
  loc_6E3424: ConcatStr
  loc_6E3425: FStStr var_8C
  loc_6E3428: FLdRfVar var_88
  loc_6E342B: NextStepI4 var_9C, loc_6E3380
  loc_6E3430: FLdRfVar var_94
  loc_6E3433: NewIfNullAd
  loc_6E3436: FStAd var_130 
  loc_6E343A: LitI2_Byte 0
  loc_6E343C: FLdPr var_130
  loc_6E3444: LitI2_Byte 0
  loc_6E3446: FLdPr var_130
  loc_6E344E: LitStr "Courier New"
  loc_6E3451: FLdPr var_130
  loc_6E3454: Reset
  loc_6E3459: LitI2_Byte 0
  loc_6E345B: FLdPr var_130
  loc_6E345E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3463: LitI2_Byte &HA
  loc_6E3465: CR8I2
  loc_6E3466: PopFPR4
  loc_6E3467: FLdPr var_130
  loc_6E346F: LitNothing
  loc_6E3471: FStAd var_130 
  loc_6E3475: FLdRfVar var_B8
  loc_6E3478: FLdRfVar var_A0
  loc_6E347B: ImpAdLdRf MemVar_7520D4
  loc_6E347E: NewIfNullPr Global
  loc_6E3481:  = Global.App
  loc_6E3486: FLdPr var_A0
  loc_6E3489:  = App.Path
  loc_6E348E: FLdRfVar var_A2
  loc_6E3491: LitDate 13.22918
  loc_6E349A: PopTmpLdAdFPR4
  loc_6E349E: LitDate 26.72294
  loc_6E34A7: PopTmpLdAdFPR4
  loc_6E34AB: LitI2_Byte &H14
  loc_6E34AD: CR8I2
  loc_6E34AE: PopTmpLdAdFPR4
  loc_6E34B2: LitI2_Byte &HA
  loc_6E34B4: CR8I2
  loc_6E34B5: PopTmpLdAdFPR4
  loc_6E34B9: ILdRf var_B8
  loc_6E34BC: LitStr "\Logo_Compania.bmp"
  loc_6E34BF: ConcatStr
  loc_6E34C0: PopTmpLdAdStr
  loc_6E34C4: FLdRfVar var_90
  loc_6E34C7: NewIfNullPr CReporte
  loc_6E34CA: CReporte.BackColor = from_stack_1
  loc_6E34CF: FFreeStr var_B8 = ""
  loc_6E34D6: FFree1Ad var_A0
  loc_6E34D9: FLdRfVar var_B8
  loc_6E34DC: FLdRfVar var_A0
  loc_6E34DF: ImpAdLdRf MemVar_7520D4
  loc_6E34E2: NewIfNullPr Global
  loc_6E34E5:  = Global.App
  loc_6E34EA: FLdPr var_A0
  loc_6E34ED:  = App.Path
  loc_6E34F2: FLdRfVar var_A2
  loc_6E34F5: LitDate 13.22918
  loc_6E34FE: PopTmpLdAdFPR4
  loc_6E3502: LitDate 26.72294
  loc_6E350B: PopTmpLdAdFPR4
  loc_6E350F: LitI2_Byte &H14
  loc_6E3511: CR8I2
  loc_6E3512: PopTmpLdAdFPR4
  loc_6E3516: LitI2 160
  loc_6E3519: CR8I2
  loc_6E351A: PopTmpLdAdFPR4
  loc_6E351E: ILdRf var_B8
  loc_6E3521: LitStr "\Logo_Proyecto.bmp"
  loc_6E3524: ConcatStr
  loc_6E3525: PopTmpLdAdStr
  loc_6E3529: FLdRfVar var_90
  loc_6E352C: NewIfNullPr CReporte
  loc_6E352F: CReporte.BackColor = from_stack_1
  loc_6E3534: FFreeStr var_B8 = ""
  loc_6E353B: FFree1Ad var_A0
  loc_6E353E: LitI2_Byte 8
  loc_6E3540: CR8I2
  loc_6E3541: PopFPR4
  loc_6E3542: FLdRfVar var_94
  loc_6E3545: NewIfNullPr CFuente
  loc_6E354D: FLdRfVar var_12C
  loc_6E3550: LitVar_Missing var_200
  loc_6E3553: LitVar_Missing var_1E0
  loc_6E3556: LitVar_Missing var_1C0
  loc_6E3559: LitVar_Missing var_1A0
  loc_6E355C: LitVar_Missing var_180
  loc_6E355F: LitVar_Missing var_160
  loc_6E3562: LitVar_Missing var_128
  loc_6E3565: LitVar_Missing var_108
  loc_6E3568: LitVar_Missing var_F8
  loc_6E356B: LitVar_Missing var_D8
  loc_6E356E: LitStr "Fecha de emisión:"
  loc_6E3571: FStStrCopy var_B8
  loc_6E3574: FLdRfVar var_B8
  loc_6E3577: LitI4 &HA
  loc_6E357C: PopTmpLdAdStr var_134
  loc_6E357F: LitI2_Byte &H1B
  loc_6E3581: PopTmpLdAd2 var_A2
  loc_6E3584: ImpAdLdRf MemVar_74C7D0
  loc_6E3587: NewIfNullPr clsMsg
  loc_6E358A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E358F: FLdRfVar var_210
  loc_6E3592: ImpAdCallFPR4  = Date
  loc_6E3597: LitI4 1
  loc_6E359C: LitI4 1
  loc_6E35A1: LitVarStr var_220, "dd/mm/yyyy"
  loc_6E35A6: FStVarCopyObj var_230
  loc_6E35A9: FLdRfVar var_230
  loc_6E35AC: FLdRfVar var_210
  loc_6E35AF: ImpAdCallI2 Format$(, )
  loc_6E35B4: FStStr var_470
  loc_6E35B7: LitVarStr var_248, " "
  loc_6E35BC: FStVarCopyObj var_258
  loc_6E35BF: FLdRfVar var_258
  loc_6E35C2: LitI4 5
  loc_6E35C7: FLdRfVar var_268
  loc_6E35CA: ImpAdCallFPR4  = String(, )
  loc_6E35CF: FLdRfVar var_3D4
  loc_6E35D2: LitVar_Missing var_3D0
  loc_6E35D5: LitVar_Missing var_3B0
  loc_6E35D8: LitVar_Missing var_390
  loc_6E35DB: LitVar_Missing var_370
  loc_6E35DE: LitVar_Missing var_350
  loc_6E35E1: LitVar_Missing var_330
  loc_6E35E4: LitVar_Missing var_310
  loc_6E35E7: LitVar_Missing var_2F0
  loc_6E35EA: LitVar_Missing var_2D0
  loc_6E35ED: LitVar_Missing var_2B0
  loc_6E35F0: LitStr "Hora de emisión:"
  loc_6E35F3: FStStrCopy var_290
  loc_6E35F6: FLdRfVar var_290
  loc_6E35F9: LitI4 &H2E
  loc_6E35FE: PopTmpLdAdStr var_138
  loc_6E3601: LitI2_Byte &H1B
  loc_6E3603: PopTmpLdAd2 var_28A
  loc_6E3606: ImpAdLdRf MemVar_74C7D0
  loc_6E3609: NewIfNullPr clsMsg
  loc_6E360C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3611: FLdRfVar var_424
  loc_6E3614: ImpAdCallFPR4  = Time
  loc_6E3619: LitI4 1
  loc_6E361E: LitI4 1
  loc_6E3623: LitVarStr var_434, "hh:mm:ss"
  loc_6E3628: FStVarCopyObj var_444
  loc_6E362B: FLdRfVar var_444
  loc_6E362E: FLdRfVar var_424
  loc_6E3631: ImpAdCallI2 Format$(, )
  loc_6E3636: FStStr var_474
  loc_6E3639: FLdRfVar var_46A
  loc_6E363C: FLdRfVar var_94
  loc_6E363F: NewIfNullRf
  loc_6E3643: ILdRf var_12C
  loc_6E3646: LitStr " "
  loc_6E3649: ConcatStr
  loc_6E364A: FStStrNoPop var_234
  loc_6E364D: FLdZeroAd var_470
  loc_6E3650: FStStrNoPop var_238
  loc_6E3653: ConcatStr
  loc_6E3654: CVarStr var_278
  loc_6E3657: FLdRfVar var_268
  loc_6E365A: ConcatVar var_288
  loc_6E365E: FLdZeroAd var_3D4
  loc_6E3661: CVarStr var_3E4
  loc_6E3664: ConcatVar var_3F4
  loc_6E3668: LitVarStr var_404, " "
  loc_6E366D: ConcatVar var_414
  loc_6E3671: FLdZeroAd var_474
  loc_6E3674: CVarStr var_454
  loc_6E3677: ConcatVar var_464
  loc_6E367B: CStrVarTmp
  loc_6E367C: PopTmpLdAdStr
  loc_6E3680: FLdRfVar var_90
  loc_6E3683: NewIfNullPr CReporte
  loc_6E3686:  = CReporte.hWnd
  loc_6E368B: FFreeStr var_B8 = "": var_12C = "": var_234 = "": var_238 = "": var_290 = "": var_468 = "": var_470 = ""
  loc_6E369E: FFreeVar var_414 = "": var_454 = "": var_464 = "": var_D8 = "": var_F8 = "": var_108 = "": var_128 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_230 = "": var_258 = "": var_278 = "": var_268 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_288 = "": var_3E4 = "": var_3F4 = "": var_424 = ""
  loc_6E36E3: FLdRfVar var_A2
  loc_6E36E6: FLdRfVar var_94
  loc_6E36E9: NewIfNullRf
  loc_6E36ED: LitStr " "
  loc_6E36F0: FStStrCopy var_B8
  loc_6E36F3: FLdRfVar var_B8
  loc_6E36F6: FLdRfVar var_90
  loc_6E36F9: NewIfNullPr CReporte
  loc_6E36FC:  = CReporte.hWnd
  loc_6E3701: FFree1Str var_B8
  loc_6E3704: FLdRfVar var_12C
  loc_6E3707: LitVar_Missing var_200
  loc_6E370A: LitVar_Missing var_1E0
  loc_6E370D: LitVar_Missing var_1C0
  loc_6E3710: LitVar_Missing var_1A0
  loc_6E3713: LitVar_Missing var_180
  loc_6E3716: LitVar_Missing var_160
  loc_6E3719: LitVar_Missing var_128
  loc_6E371C: LitVar_Missing var_108
  loc_6E371F: LitVar_Missing var_F8
  loc_6E3722: LitVar_Missing var_D8
  loc_6E3725: LitStr "Rango desde"
  loc_6E3728: FStStrCopy var_B8
  loc_6E372B: FLdRfVar var_B8
  loc_6E372E: LitI4 &HB
  loc_6E3733: PopTmpLdAdStr var_134
  loc_6E3736: LitI2_Byte &H1B
  loc_6E3738: PopTmpLdAd2 var_A2
  loc_6E373B: ImpAdLdRf MemVar_74C7D0
  loc_6E373E: NewIfNullPr clsMsg
  loc_6E3741: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3746: FLdPrThis
  loc_6E3747: VCallAd Control_ID_FechaInicial
  loc_6E374A: FStAdFunc var_A0
  loc_6E374D: FLdPr var_A0
  loc_6E3750: LateIdLdVar var_210 DispID_22 0
  loc_6E3757: PopAd
  loc_6E3759: FLdPrThis
  loc_6E375A: VCallAd Control_ID_HoraInicial
  loc_6E375D: FStAdFunc var_478
  loc_6E3760: FLdPr var_478
  loc_6E3763: LateIdLdVar var_230 DispID_22 0
  loc_6E376A: PopAd
  loc_6E376C: FLdRfVar var_474
  loc_6E376F: LitVar_Missing var_350
  loc_6E3772: LitVar_Missing var_330
  loc_6E3775: LitVar_Missing var_310
  loc_6E3778: LitVar_Missing var_2F0
  loc_6E377B: LitVar_Missing var_2D0
  loc_6E377E: LitVar_Missing var_2B0
  loc_6E3781: LitVar_Missing var_288
  loc_6E3784: LitVar_Missing var_278
  loc_6E3787: LitVar_Missing var_268
  loc_6E378A: LitVar_Missing var_258
  loc_6E378D: LitStr "hasta"
  loc_6E3790: FStStrCopy var_470
  loc_6E3793: FLdRfVar var_470
  loc_6E3796: LitI4 &HC
  loc_6E379B: PopTmpLdAdStr var_138
  loc_6E379E: LitI2_Byte &H1B
  loc_6E37A0: PopTmpLdAd2 var_28A
  loc_6E37A3: ImpAdLdRf MemVar_74C7D0
  loc_6E37A6: NewIfNullPr clsMsg
  loc_6E37A9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E37AE: FLdPrThis
  loc_6E37AF: VCallAd Control_ID_FechaFinal
  loc_6E37B2: FStAdFunc var_484
  loc_6E37B5: FLdPr var_484
  loc_6E37B8: LateIdLdVar var_370 DispID_22 0
  loc_6E37BF: PopAd
  loc_6E37C1: FLdPrThis
  loc_6E37C2: VCallAd Control_ID_HoraFinal
  loc_6E37C5: FStAdFunc var_494
  loc_6E37C8: FLdPr var_494
  loc_6E37CB: LateIdLdVar var_390 DispID_22 0
  loc_6E37D2: PopAd
  loc_6E37D4: FLdRfVar var_46A
  loc_6E37D7: FLdRfVar var_94
  loc_6E37DA: NewIfNullRf
  loc_6E37DE: ILdRf var_12C
  loc_6E37E1: LitStr " "
  loc_6E37E4: ConcatStr
  loc_6E37E5: FStStrNoPop var_234
  loc_6E37E8: FLdRfVar var_210
  loc_6E37EB: CStrVarTmp
  loc_6E37EC: FStStrNoPop var_238
  loc_6E37EF: ConcatStr
  loc_6E37F0: FStStrNoPop var_290
  loc_6E37F3: LitStr "  "
  loc_6E37F6: ConcatStr
  loc_6E37F7: FStStrNoPop var_3D4
  loc_6E37FA: FLdRfVar var_230
  loc_6E37FD: CStrVarTmp
  loc_6E37FE: FStStrNoPop var_468
  loc_6E3801: ConcatStr
  loc_6E3802: FStStrNoPop var_47C
  loc_6E3805: ILdRf var_474
  loc_6E3808: ConcatStr
  loc_6E3809: FStStrNoPop var_480
  loc_6E380C: LitStr " "
  loc_6E380F: ConcatStr
  loc_6E3810: FStStrNoPop var_488
  loc_6E3813: FLdRfVar var_370
  loc_6E3816: CStrVarTmp
  loc_6E3817: FStStrNoPop var_48C
  loc_6E381A: ConcatStr
  loc_6E381B: FStStrNoPop var_490
  loc_6E381E: LitStr "  "
  loc_6E3821: ConcatStr
  loc_6E3822: FStStrNoPop var_498
  loc_6E3825: FLdRfVar var_390
  loc_6E3828: CStrVarTmp
  loc_6E3829: FStStrNoPop var_49C
  loc_6E382C: ConcatStr
  loc_6E382D: PopTmpLdAdStr
  loc_6E3831: FLdRfVar var_90
  loc_6E3834: NewIfNullPr CReporte
  loc_6E3837: CReporte.Caption = from_stack_1
  loc_6E383C: FFreeStr var_B8 = "": var_12C = "": var_234 = "": var_238 = "": var_290 = "": var_3D4 = "": var_468 = "": var_470 = "": var_47C = "": var_474 = "": var_480 = "": var_488 = "": var_48C = "": var_490 = "": var_498 = "": var_49C = ""
  loc_6E3861: FFreeAd var_A0 = "": var_478 = "": var_484 = ""
  loc_6E386C: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_128 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_230 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = ""
  loc_6E389F: FLdRfVar var_A2
  loc_6E38A2: FLdRfVar var_94
  loc_6E38A5: NewIfNullRf
  loc_6E38A9: ImpAdLdI4 MemVar_74BED4
  loc_6E38AC: LitStr ": "
  loc_6E38AF: ConcatStr
  loc_6E38B0: FStStrNoPop var_B8
  loc_6E38B3: ILdRf var_8C
  loc_6E38B6: ConcatStr
  loc_6E38B7: PopTmpLdAdStr
  loc_6E38BB: FLdRfVar var_90
  loc_6E38BE: NewIfNullPr CReporte
  loc_6E38C1: CReporte.Caption = from_stack_1
  loc_6E38C6: FFreeStr var_B8 = ""
  loc_6E38CD: LitI2_Byte &H14
  loc_6E38CF: CR8I2
  loc_6E38D0: PopFPR4
  loc_6E38D1: FLdRfVar var_94
  loc_6E38D4: NewIfNullPr CFuente
  loc_6E38DC: LitI2_Byte &HFF
  loc_6E38DE: FLdRfVar var_94
  loc_6E38E1: NewIfNullPr CFuente
  loc_6E38E9: LitI2_Byte &HFF
  loc_6E38EB: FLdRfVar var_94
  loc_6E38EE: NewIfNullPr CFuente
  loc_6E38F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E38F6: FLdRfVar var_A2
  loc_6E38F9: FLdRfVar var_94
  loc_6E38FC: NewIfNullRf
  loc_6E3900: LitStr vbNullString
  loc_6E3903: FStStrCopy var_B8
  loc_6E3906: FLdRfVar var_B8
  loc_6E3909: FLdRfVar var_90
  loc_6E390C: NewIfNullPr CReporte
  loc_6E390F:  = CReporte.BackColor
  loc_6E3914: FFree1Str var_B8
  loc_6E3917: FLdRfVar var_A2
  loc_6E391A: FLdRfVar var_94
  loc_6E391D: NewIfNullRf
  loc_6E3921: FLdPr Me
  loc_6E3924: MemLdRfVar from_stack_1.global_100
  loc_6E3927: FLdRfVar var_90
  loc_6E392A: NewIfNullPr CReporte
  loc_6E392D:  = CReporte.BackColor
  loc_6E3932: FLdRfVar var_A2
  loc_6E3935: FLdRfVar var_94
  loc_6E3938: NewIfNullRf
  loc_6E393C: LitStr vbNullString
  loc_6E393F: FStStrCopy var_B8
  loc_6E3942: FLdRfVar var_B8
  loc_6E3945: FLdRfVar var_90
  loc_6E3948: NewIfNullPr CReporte
  loc_6E394B:  = CReporte.BackColor
  loc_6E3950: FFree1Str var_B8
  loc_6E3953: LitI2_Byte &HA
  loc_6E3955: CR8I2
  loc_6E3956: PopFPR4
  loc_6E3957: FLdRfVar var_94
  loc_6E395A: NewIfNullPr CFuente
  loc_6E3962: LitI2_Byte &HFF
  loc_6E3964: FLdRfVar var_94
  loc_6E3967: NewIfNullPr CFuente
  loc_6E396F: LitI2_Byte 0
  loc_6E3971: FLdRfVar var_94
  loc_6E3974: NewIfNullPr CFuente
  loc_6E3977: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E397C: FLdRfVar var_12C
  loc_6E397F: LitVar_Missing var_200
  loc_6E3982: LitVar_Missing var_1E0
  loc_6E3985: LitVar_Missing var_1C0
  loc_6E3988: LitVar_Missing var_1A0
  loc_6E398B: LitVar_Missing var_180
  loc_6E398E: LitVar_Missing var_160
  loc_6E3991: LitVar_Missing var_128
  loc_6E3994: LitVar_Missing var_108
  loc_6E3997: LitVar_Missing var_F8
  loc_6E399A: LitVar_Missing var_D8
  loc_6E399D: LitStr "Fecha y hora"
  loc_6E39A0: FStStrCopy var_B8
  loc_6E39A3: FLdRfVar var_B8
  loc_6E39A6: LitI4 &HD
  loc_6E39AB: PopTmpLdAdStr var_134
  loc_6E39AE: LitI2_Byte &H1B
  loc_6E39B0: PopTmpLdAd2 var_A2
  loc_6E39B3: ImpAdLdRf MemVar_74C7D0
  loc_6E39B6: NewIfNullPr clsMsg
  loc_6E39B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E39BE: LitVarStr var_220, " "
  loc_6E39C3: FStVarCopyObj var_210
  loc_6E39C6: FLdRfVar var_210
  loc_6E39C9: LitI4 7
  loc_6E39CE: FLdRfVar var_230
  loc_6E39D1: ImpAdCallFPR4  = String(, )
  loc_6E39D6: LitI4 5
  loc_6E39DB: ImpAdLdI4 MemVar_74BED8
  loc_6E39DE: ImpAdCallI2 Left$(, )
  loc_6E39E3: FStStr var_490
  loc_6E39E6: LitI4 1
  loc_6E39EB: LitI4 1
  loc_6E39F0: LitVarStr var_248, "!@@@@@"
  loc_6E39F5: FStVarCopyObj var_288
  loc_6E39F8: FLdRfVar var_288
  loc_6E39FB: FLdZeroAd var_490
  loc_6E39FE: CVarStr var_278
  loc_6E3A01: ImpAdCallI2 Format$(, )
  loc_6E3A06: FStStr var_498
  loc_6E3A09: LitVarStr var_2A0, " "
  loc_6E3A0E: FStVarCopyObj var_2F0
  loc_6E3A11: FLdRfVar var_2F0
  loc_6E3A14: LitI4 2
  loc_6E3A19: FLdRfVar var_310
  loc_6E3A1C: ImpAdCallFPR4  = String(, )
  loc_6E3A21: FLdRfVar var_238
  loc_6E3A24: LitVar_Missing var_444
  loc_6E3A27: LitVar_Missing var_424
  loc_6E3A2A: LitVar_Missing var_414
  loc_6E3A2D: LitVar_Missing var_3F4
  loc_6E3A30: LitVar_Missing var_3E4
  loc_6E3A33: LitVar_Missing var_3D0
  loc_6E3A36: LitVar_Missing var_3B0
  loc_6E3A39: LitVar_Missing var_390
  loc_6E3A3C: LitVar_Missing var_370
  loc_6E3A3F: LitVar_Missing var_350
  loc_6E3A42: LitStr "Producto"
  loc_6E3A45: FStStrCopy var_234
  loc_6E3A48: FLdRfVar var_234
  loc_6E3A4B: LitI4 &HE
  loc_6E3A50: PopTmpLdAdStr var_138
  loc_6E3A53: LitI2_Byte &H1B
  loc_6E3A55: PopTmpLdAd2 var_28A
  loc_6E3A58: ImpAdLdRf MemVar_74C7D0
  loc_6E3A5B: NewIfNullPr clsMsg
  loc_6E3A5E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3A63: LitVarStr var_434, " "
  loc_6E3A68: FStVarCopyObj var_4B0
  loc_6E3A6B: FLdRfVar var_4B0
  loc_6E3A6E: LitI4 4
  loc_6E3A73: FLdRfVar var_4C0
  loc_6E3A76: ImpAdCallFPR4  = String(, )
  loc_6E3A7B: FLdRfVar var_3D4
  loc_6E3A7E: LitVar_Missing var_610
  loc_6E3A81: LitVar_Missing var_5F0
  loc_6E3A84: LitVar_Missing var_5D0
  loc_6E3A87: LitVar_Missing var_5B0
  loc_6E3A8A: LitVar_Missing var_590
  loc_6E3A8D: LitVar_Missing var_570
  loc_6E3A90: LitVar_Missing var_550
  loc_6E3A93: LitVar_Missing var_530
  loc_6E3A96: LitVar_Missing var_510
  loc_6E3A99: LitVar_Missing var_4F0
  loc_6E3A9C: LitStr "Forma de pago"
  loc_6E3A9F: FStStrCopy var_290
  loc_6E3AA2: FLdRfVar var_290
  loc_6E3AA5: LitI4 &HF
  loc_6E3AAA: PopTmpLdAdStr var_13C
  loc_6E3AAD: LitI2_Byte &H1B
  loc_6E3AAF: PopTmpLdAd2 var_46A
  loc_6E3AB2: ImpAdLdRf MemVar_74C7D0
  loc_6E3AB5: NewIfNullPr clsMsg
  loc_6E3AB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3ABD: LitVarStr var_640, " "
  loc_6E3AC2: FStVarCopyObj var_650
  loc_6E3AC5: FLdRfVar var_650
  loc_6E3AC8: LitI4 &HA
  loc_6E3ACD: FLdRfVar var_660
  loc_6E3AD0: ImpAdCallFPR4  = String(, )
  loc_6E3AD5: FLdRfVar var_470
  loc_6E3AD8: LitVar_Missing var_7B4
  loc_6E3ADB: LitVar_Missing var_794
  loc_6E3ADE: LitVar_Missing var_774
  loc_6E3AE1: LitVar_Missing var_754
  loc_6E3AE4: LitVar_Missing var_734
  loc_6E3AE7: LitVar_Missing var_714
  loc_6E3AEA: LitVar_Missing var_6F4
  loc_6E3AED: LitVar_Missing var_6D4
  loc_6E3AF0: LitVar_Missing var_6B4
  loc_6E3AF3: LitVar_Missing var_694
  loc_6E3AF6: LitStr "Monto"
  loc_6E3AF9: FStStrCopy var_468
  loc_6E3AFC: FLdRfVar var_468
  loc_6E3AFF: LitI4 &H10
  loc_6E3B04: PopTmpLdAdStr var_140
  loc_6E3B07: LitI2_Byte &H1B
  loc_6E3B09: PopTmpLdAd2 var_672
  loc_6E3B0C: ImpAdLdRf MemVar_74C7D0
  loc_6E3B0F: NewIfNullPr clsMsg
  loc_6E3B12: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3B17: LitVarStr var_7E4, " "
  loc_6E3B1C: FStVarCopyObj var_7F4
  loc_6E3B1F: FLdRfVar var_7F4
  loc_6E3B22: LitI4 4
  loc_6E3B27: FLdRfVar var_804
  loc_6E3B2A: ImpAdCallFPR4  = String(, )
  loc_6E3B2F: FLdRfVar var_47C
  loc_6E3B32: LitVar_Missing var_95C
  loc_6E3B35: LitVar_Missing var_93C
  loc_6E3B38: LitVar_Missing var_91C
  loc_6E3B3B: LitVar_Missing var_8FC
  loc_6E3B3E: LitVar_Missing var_8DC
  loc_6E3B41: LitVar_Missing var_8BC
  loc_6E3B44: LitVar_Missing var_89C
  loc_6E3B47: LitVar_Missing var_87C
  loc_6E3B4A: LitVar_Missing var_85C
  loc_6E3B4D: LitVar_Missing var_83C
  loc_6E3B50: LitStr "Volumen"
  loc_6E3B53: FStStrCopy var_474
  loc_6E3B56: FLdRfVar var_474
  loc_6E3B59: LitI4 &H11
  loc_6E3B5E: PopTmpLdAdStr var_81C
  loc_6E3B61: LitI2_Byte &H1B
  loc_6E3B63: PopTmpLdAd2 var_816
  loc_6E3B66: ImpAdLdRf MemVar_74C7D0
  loc_6E3B69: NewIfNullPr clsMsg
  loc_6E3B6C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3B71: LitVarStr var_98C, " "
  loc_6E3B76: FStVarCopyObj var_99C
  loc_6E3B79: FLdRfVar var_99C
  loc_6E3B7C: LitI4 8
  loc_6E3B81: FLdRfVar var_9AC
  loc_6E3B84: ImpAdCallFPR4  = String(, )
  loc_6E3B89: FLdRfVar var_488
  loc_6E3B8C: LitVar_Missing var_B04
  loc_6E3B8F: LitVar_Missing var_AE4
  loc_6E3B92: LitVar_Missing var_AC4
  loc_6E3B95: LitVar_Missing var_AA4
  loc_6E3B98: LitVar_Missing var_A84
  loc_6E3B9B: LitVar_Missing var_A64
  loc_6E3B9E: LitVar_Missing var_A44
  loc_6E3BA1: LitVar_Missing var_A24
  loc_6E3BA4: LitVar_Missing var_A04
  loc_6E3BA7: LitVar_Missing var_9E4
  loc_6E3BAA: LitStr "PPU"
  loc_6E3BAD: FStStrCopy var_480
  loc_6E3BB0: FLdRfVar var_480
  loc_6E3BB3: LitI4 &H12
  loc_6E3BB8: PopTmpLdAdStr var_9C4
  loc_6E3BBB: LitI2_Byte &H1B
  loc_6E3BBD: PopTmpLdAd2 var_9BE
  loc_6E3BC0: ImpAdLdRf MemVar_74C7D0
  loc_6E3BC3: NewIfNullPr clsMsg
  loc_6E3BC6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3BCB: FLdRfVar var_B26
  loc_6E3BCE: FLdRfVar var_94
  loc_6E3BD1: NewIfNullRf
  loc_6E3BD5: FLdZeroAd var_12C
  loc_6E3BD8: CVarStr var_258
  loc_6E3BDB: FLdRfVar var_230
  loc_6E3BDE: ConcatVar var_268
  loc_6E3BE2: FLdZeroAd var_498
  loc_6E3BE5: CVarStr var_2B0
  loc_6E3BE8: ConcatVar var_2D0
  loc_6E3BEC: FLdRfVar var_310
  loc_6E3BEF: ConcatVar var_330
  loc_6E3BF3: FLdZeroAd var_238
  loc_6E3BF6: CVarStr var_454
  loc_6E3BF9: ConcatVar var_464
  loc_6E3BFD: FLdRfVar var_4C0
  loc_6E3C00: ConcatVar var_4D0
  loc_6E3C04: FLdZeroAd var_3D4
  loc_6E3C07: CVarStr var_620
  loc_6E3C0A: ConcatVar var_630
  loc_6E3C0E: FLdRfVar var_660
  loc_6E3C11: ConcatVar var_670
  loc_6E3C15: FLdZeroAd var_470
  loc_6E3C18: CVarStr var_7C4
  loc_6E3C1B: ConcatVar var_7D4
  loc_6E3C1F: FLdRfVar var_804
  loc_6E3C22: ConcatVar var_814
  loc_6E3C26: FLdZeroAd var_47C
  loc_6E3C29: CVarStr var_96C
  loc_6E3C2C: ConcatVar var_97C
  loc_6E3C30: FLdRfVar var_9AC
  loc_6E3C33: ConcatVar var_9BC
  loc_6E3C37: FLdZeroAd var_488
  loc_6E3C3A: CVarStr var_B14
  loc_6E3C3D: ConcatVar var_B24
  loc_6E3C41: CStrVarTmp
  loc_6E3C42: PopTmpLdAdStr
  loc_6E3C46: FLdRfVar var_90
  loc_6E3C49: NewIfNullPr CReporte
  loc_6E3C4C: Call 0.Method_arg_5C ()
  loc_6E3C51: FFreeStr var_B8 = "": var_234 = "": var_290 = "": var_468 = "": var_474 = "": var_480 = "": var_48C = "": var_490 = ""
  loc_6E3C66: FFreeVar var_9BC = "": var_B14 = "": var_B24 = "": var_670 = "": var_7C4 = "": var_7F4 = "": var_7D4 = "": var_804 = "": var_83C = "": var_85C = "": var_87C = "": var_89C = "": var_8BC = "": var_8DC = "": var_8FC = "": var_91C = "": var_93C = "": var_95C = "": var_814 = "": var_96C = "": var_99C = "": var_97C = "": var_9AC = "": var_9E4 = "": var_A04 = "": var_A24 = "": var_A44 = "": var_A64 = "": var_A84 = "": var_AA4 = "": var_AC4 = "": var_AE4 = "": var_B04 = "": var_330 = "": var_454 = "": var_4B0 = "": var_464 = "": var_4C0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_550 = "": var_570 = "": var_590 = "": var_5B0 = "": var_5D0 = "": var_5F0 = "": var_610 = "": var_4D0 = "": var_620 = "": var_650 = "": var_630 = "": var_660 = "": var_694 = "": var_6B4 = "": var_6D4 = "": var_6F4 = "": var_714 = "": var_734 = "": var_754 = "": var_774 = "": var_794 = "": var_7B4 = "": var_D8 = "": var_F8 = "": var_108 = "": var_128 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_258 = "": var_230 = "": var_278 = "": var_288 = "": var_268 = "": var_2B0 = "": var_2F0 = "": var_2D0 = "": var_310 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3E4 = "": var_3F4 = "": var_414 = "": var_424 = ""
  loc_6E3D23: LitI4 0
  loc_6E3D28: FStR4 var_88
  loc_6E3D2B: LitI2_Byte 0
  loc_6E3D2D: FLdRfVar var_94
  loc_6E3D30: NewIfNullPr CFuente
  loc_6E3D38: LitI2_Byte 1
  loc_6E3D3A: FLdPr Me
  loc_6E3D3D: MemStI2 global_80
  loc_6E3D40: FLdPr Me
  loc_6E3D43: MemLdI2 global_80
  loc_6E3D46: CI4UI1
  loc_6E3D47: ImpAdLdI4 MemVar_74C73C
  loc_6E3D4A: LitI2_Byte 1
  loc_6E3D4C: FnUBound
  loc_6E3D4E: LeI4
  loc_6E3D4F: BranchF loc_6E3D86
  loc_6E3D52: LitI2_Byte 3
  loc_6E3D54: FLdRfVar var_94
  loc_6E3D57: NewIfNullRf
  loc_6E3D5B: FLdRfVar var_90
  loc_6E3D5E: NewIfNullRf
  loc_6E3D62: LitI2_Byte 0
  loc_6E3D64: PopTmpLdAd2 var_A2
  loc_6E3D67: LitI4 1
  loc_6E3D6C: PopTmpLdAdStr var_134
  loc_6E3D6F: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_6E3D74: FLdPr Me
  loc_6E3D77: MemLdI2 global_80
  loc_6E3D7A: LitI2_Byte 1
  loc_6E3D7C: AddI2
  loc_6E3D7D: FLdPr Me
  loc_6E3D80: MemStI2 global_80
  loc_6E3D83: Branch loc_6E3D40
  loc_6E3D86: FLdRfVar var_A2
  loc_6E3D89: FLdRfVar var_90
  loc_6E3D8C: NewIfNullPr CReporte
  loc_6E3D8F: CReporte.ForeColor = from_stack_1
  loc_6E3D94: LitNothing
  loc_6E3D96: CastAd
  loc_6E3D99: FStAdFunc var_90
  loc_6E3D9C: LitNothing
  loc_6E3D9E: CastAd
  loc_6E3DA1: FStAdFunc var_94
  loc_6E3DA4: LitI2_Byte 1
  loc_6E3DA6: FLdPr Me
  loc_6E3DA9: MemStI2 global_80
  loc_6E3DAC: LitI2_Byte 3
  loc_6E3DAE: LitNothing
  loc_6E3DB0: CastAd
  loc_6E3DB3: FStAdFunc var_478
  loc_6E3DB6: FLdRfVar var_478
  loc_6E3DB9: LitNothing
  loc_6E3DBB: CastAd
  loc_6E3DBE: FStAdFunc var_A0
  loc_6E3DC1: FLdRfVar var_A0
  loc_6E3DC4: LitI2_Byte 0
  loc_6E3DC6: PopTmpLdAd2 var_A2
  loc_6E3DC9: LitI4 2
  loc_6E3DCE: PopTmpLdAdStr var_134
  loc_6E3DD1: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_6E3DD6: FFreeAd var_A0 = ""
  loc_6E3DDD: FLdRfVar var_12C
  loc_6E3DE0: LitVar_Missing var_200
  loc_6E3DE3: LitVar_Missing var_1E0
  loc_6E3DE6: LitVar_Missing var_1C0
  loc_6E3DE9: LitVar_Missing var_1A0
  loc_6E3DEC: LitVar_Missing var_180
  loc_6E3DEF: LitVar_Missing var_160
  loc_6E3DF2: LitVar_Missing var_128
  loc_6E3DF5: LitVar_Missing var_108
  loc_6E3DF8: LitVar_Missing var_F8
  loc_6E3DFB: LitVar_Missing var_D8
  loc_6E3DFE: LitStr "Se imprimió correctamente la información."
  loc_6E3E01: FStStrCopy var_B8
  loc_6E3E04: FLdRfVar var_B8
  loc_6E3E07: LitI4 &H38
  loc_6E3E0C: PopTmpLdAdStr var_134
  loc_6E3E0F: LitI2_Byte &H1B
  loc_6E3E11: PopTmpLdAd2 var_A2
  loc_6E3E14: ImpAdLdRf MemVar_74C7D0
  loc_6E3E17: NewIfNullPr clsMsg
  loc_6E3E1A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3E1F: FLdRfVar var_238
  loc_6E3E22: LitVar_Missing var_310
  loc_6E3E25: LitVar_Missing var_2F0
  loc_6E3E28: LitVar_Missing var_2D0
  loc_6E3E2B: LitVar_Missing var_2B0
  loc_6E3E2E: LitVar_Missing var_288
  loc_6E3E31: LitVar_Missing var_278
  loc_6E3E34: LitVar_Missing var_268
  loc_6E3E37: LitVar_Missing var_258
  loc_6E3E3A: LitVar_Missing var_230
  loc_6E3E3D: LitVar_Missing var_210
  loc_6E3E40: LitStr "Despachos Anteriores"
  loc_6E3E43: FStStrCopy var_234
  loc_6E3E46: FLdRfVar var_234
  loc_6E3E49: LitI4 &H39
  loc_6E3E4E: PopTmpLdAdStr var_138
  loc_6E3E51: LitI2_Byte &H1B
  loc_6E3E53: PopTmpLdAd2 var_28A
  loc_6E3E56: ImpAdLdRf MemVar_74C7D0
  loc_6E3E59: NewIfNullPr clsMsg
  loc_6E3E5C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E3E61: LitVar_Missing var_390
  loc_6E3E64: LitVar_Missing var_370
  loc_6E3E67: FLdZeroAd var_238
  loc_6E3E6A: CVarStr var_350
  loc_6E3E6D: LitI4 &H40
  loc_6E3E72: FLdZeroAd var_12C
  loc_6E3E75: CVarStr var_330
  loc_6E3E78: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6E3E7D: FFreeStr var_B8 = ""
  loc_6E3E84: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_128 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_210 = "": var_230 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = ""
  loc_6E3EB7: ExitProcHresult
End Function

Private Function Proc_133_37_6F2154() '6F2154
  'Data Table: 45294C
  loc_6F12F8: ZeroRetValVar
  loc_6F12FA: LitVarI4
  loc_6F1302: FStVar var_94
  loc_6F1306: FLdPrThis
  loc_6F1307: VCallAd Control_ID_FechaInicial
  loc_6F130A: FStAdFunc var_A8
  loc_6F130D: FLdPr var_A8
  loc_6F1310: LateIdLdVar var_B8 DispID_22 0
  loc_6F1317: PopAd
  loc_6F1319: LitVarI2 var_CC, 2
  loc_6F131E: LitI4 1
  loc_6F1323: FLdRfVar var_B8
  loc_6F1326: CStrVarTmp
  loc_6F1327: FStStrNoPop var_BC
  loc_6F132A: ImpAdCallI2 Mid$(, , )
  loc_6F132F: FStStr var_14C
  loc_6F1332: FLdPrThis
  loc_6F1333: VCallAd Control_ID_FechaInicial
  loc_6F1336: FStAdFunc var_D0
  loc_6F1339: FLdPr var_D0
  loc_6F133C: LateIdLdVar var_E0 DispID_22 0
  loc_6F1343: PopAd
  loc_6F1345: LitVarI2 var_104, 2
  loc_6F134A: LitI4 4
  loc_6F134F: FLdRfVar var_E0
  loc_6F1352: CStrVarTmp
  loc_6F1353: FStStrNoPop var_E4
  loc_6F1356: ImpAdCallI2 Mid$(, , )
  loc_6F135B: FStStr var_150
  loc_6F135E: FLdPrThis
  loc_6F135F: VCallAd Control_ID_FechaInicial
  loc_6F1362: FStAdFunc var_108
  loc_6F1365: FLdPr var_108
  loc_6F1368: LateIdLdVar var_118 DispID_22 0
  loc_6F136F: PopAd
  loc_6F1371: LitVarI2 var_13C, 4
  loc_6F1376: LitI4 7
  loc_6F137B: FLdRfVar var_118
  loc_6F137E: CStrVarTmp
  loc_6F137F: FStStrNoPop var_11C
  loc_6F1382: ImpAdCallI2 Mid$(, , )
  loc_6F1387: FStStrNoPop var_148
  loc_6F138A: CI2Str
  loc_6F138C: FLdZeroAd var_150
  loc_6F138F: FStStrNoPop var_144
  loc_6F1392: CI2Str
  loc_6F1394: FLdZeroAd var_14C
  loc_6F1397: FStStrNoPop var_140
  loc_6F139A: CI2Str
  loc_6F139C: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6F13A1: NotI4
  loc_6F13A2: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6F13B5: FFreeAd var_A8 = "": var_D0 = ""
  loc_6F13BE: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6F13CD: BranchF loc_6F14DC
  loc_6F13D0: FLdRfVar var_E4
  loc_6F13D3: LitVar_Missing var_208
  loc_6F13D6: LitVar_Missing var_1E8
  loc_6F13D9: LitVar_Missing var_1C8
  loc_6F13DC: LitVar_Missing var_1A8
  loc_6F13DF: LitVar_Missing var_13C
  loc_6F13E2: LitVar_Missing var_118
  loc_6F13E5: LitVar_Missing var_104
  loc_6F13E8: LitVar_Missing var_E0
  loc_6F13EB: LitVar_Missing var_CC
  loc_6F13EE: LitVar_Missing var_B8
  loc_6F13F1: LitStr "Debe ingresar correctamente la fecha inicial. Verifique por favor."
  loc_6F13F4: FStStrCopy var_BC
  loc_6F13F7: FLdRfVar var_BC
  loc_6F13FA: LitI4 &H14
  loc_6F13FF: PopTmpLdAdStr var_158
  loc_6F1402: LitI2_Byte &H1B
  loc_6F1404: PopTmpLdAd2 var_152
  loc_6F1407: ImpAdLdRf MemVar_74C7D0
  loc_6F140A: NewIfNullPr clsMsg
  loc_6F140D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1412: FLdRfVar var_140
  loc_6F1415: LitVar_Missing var_350
  loc_6F1418: LitVar_Missing var_330
  loc_6F141B: LitVar_Missing var_310
  loc_6F141E: LitVar_Missing var_2F0
  loc_6F1421: LitVar_Missing var_2D0
  loc_6F1424: LitVar_Missing var_2B0
  loc_6F1427: LitVar_Missing var_290
  loc_6F142A: LitVar_Missing var_270
  loc_6F142D: LitVar_Missing var_250
  loc_6F1430: LitVar_Missing var_230
  loc_6F1433: LitStr "Verificación de datos"
  loc_6F1436: FStStrCopy var_11C
  loc_6F1439: FLdRfVar var_11C
  loc_6F143C: LitI4 &H15
  loc_6F1441: PopTmpLdAdStr var_210
  loc_6F1444: LitI2_Byte &H1B
  loc_6F1446: PopTmpLdAd2 var_20A
  loc_6F1449: ImpAdLdRf MemVar_74C7D0
  loc_6F144C: NewIfNullPr clsMsg
  loc_6F144F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1454: LitVar_Missing var_3B0
  loc_6F1457: LitVar_Missing var_390
  loc_6F145A: FLdZeroAd var_140
  loc_6F145D: CVarStr var_370
  loc_6F1460: LitI4 &H40
  loc_6F1465: FLdZeroAd var_E4
  loc_6F1468: CVarStr var_360
  loc_6F146B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1470: FFreeStr var_BC = ""
  loc_6F1477: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F14AA: LitI2_Byte &HFF
  loc_6F14AC: FLdPr Me
  loc_6F14AF: VCallAd Control_ID_List1
  loc_6F14B2: FStAdFunc var_A8
  loc_6F14B5: FLdPr var_A8
  loc_6F14B8: Me.Visible = from_stack_1b
  loc_6F14BD: FFree1Ad var_A8
  loc_6F14C0: LitI2_Byte 0
  loc_6F14C2: FLdPr Me
  loc_6F14C5: VCallAd Control_ID_lbWait
  loc_6F14C8: FStAdFunc var_A8
  loc_6F14CB: FLdPr var_A8
  loc_6F14CE: Me.Visible = from_stack_1b
  loc_6F14D3: FFree1Ad var_A8
  loc_6F14D6: ExitProcCbHresult
  loc_6F14DC: FLdPrThis
  loc_6F14DD: VCallAd Control_ID_FechaFinal
  loc_6F14E0: FStAdFunc var_A8
  loc_6F14E3: FLdPr var_A8
  loc_6F14E6: LateIdLdVar var_B8 DispID_22 0
  loc_6F14ED: PopAd
  loc_6F14EF: LitVarI2 var_CC, 2
  loc_6F14F4: LitI4 1
  loc_6F14F9: FLdRfVar var_B8
  loc_6F14FC: CStrVarTmp
  loc_6F14FD: FStStrNoPop var_BC
  loc_6F1500: ImpAdCallI2 Mid$(, , )
  loc_6F1505: FStStr var_14C
  loc_6F1508: FLdPrThis
  loc_6F1509: VCallAd Control_ID_FechaFinal
  loc_6F150C: FStAdFunc var_D0
  loc_6F150F: FLdPr var_D0
  loc_6F1512: LateIdLdVar var_E0 DispID_22 0
  loc_6F1519: PopAd
  loc_6F151B: LitVarI2 var_104, 2
  loc_6F1520: LitI4 4
  loc_6F1525: FLdRfVar var_E0
  loc_6F1528: CStrVarTmp
  loc_6F1529: FStStrNoPop var_E4
  loc_6F152C: ImpAdCallI2 Mid$(, , )
  loc_6F1531: FStStr var_150
  loc_6F1534: FLdPrThis
  loc_6F1535: VCallAd Control_ID_FechaFinal
  loc_6F1538: FStAdFunc var_108
  loc_6F153B: FLdPr var_108
  loc_6F153E: LateIdLdVar var_118 DispID_22 0
  loc_6F1545: PopAd
  loc_6F1547: LitVarI2 var_13C, 4
  loc_6F154C: LitI4 7
  loc_6F1551: FLdRfVar var_118
  loc_6F1554: CStrVarTmp
  loc_6F1555: FStStrNoPop var_11C
  loc_6F1558: ImpAdCallI2 Mid$(, , )
  loc_6F155D: FStStrNoPop var_148
  loc_6F1560: CI2Str
  loc_6F1562: FLdZeroAd var_150
  loc_6F1565: FStStrNoPop var_144
  loc_6F1568: CI2Str
  loc_6F156A: FLdZeroAd var_14C
  loc_6F156D: FStStrNoPop var_140
  loc_6F1570: CI2Str
  loc_6F1572: ImpAdCallI2 Proc_87_7_600904(, , )
  loc_6F1577: NotI4
  loc_6F1578: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_6F158B: FFreeAd var_A8 = "": var_D0 = ""
  loc_6F1594: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = ""
  loc_6F15A3: BranchF loc_6F16B2
  loc_6F15A6: FLdRfVar var_E4
  loc_6F15A9: LitVar_Missing var_208
  loc_6F15AC: LitVar_Missing var_1E8
  loc_6F15AF: LitVar_Missing var_1C8
  loc_6F15B2: LitVar_Missing var_1A8
  loc_6F15B5: LitVar_Missing var_13C
  loc_6F15B8: LitVar_Missing var_118
  loc_6F15BB: LitVar_Missing var_104
  loc_6F15BE: LitVar_Missing var_E0
  loc_6F15C1: LitVar_Missing var_CC
  loc_6F15C4: LitVar_Missing var_B8
  loc_6F15C7: LitStr "Debe ingresar correctamente la fecha final. Verifique por favor."
  loc_6F15CA: FStStrCopy var_BC
  loc_6F15CD: FLdRfVar var_BC
  loc_6F15D0: LitI4 &H16
  loc_6F15D5: PopTmpLdAdStr var_158
  loc_6F15D8: LitI2_Byte &H1B
  loc_6F15DA: PopTmpLdAd2 var_152
  loc_6F15DD: ImpAdLdRf MemVar_74C7D0
  loc_6F15E0: NewIfNullPr clsMsg
  loc_6F15E3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F15E8: FLdRfVar var_140
  loc_6F15EB: LitVar_Missing var_350
  loc_6F15EE: LitVar_Missing var_330
  loc_6F15F1: LitVar_Missing var_310
  loc_6F15F4: LitVar_Missing var_2F0
  loc_6F15F7: LitVar_Missing var_2D0
  loc_6F15FA: LitVar_Missing var_2B0
  loc_6F15FD: LitVar_Missing var_290
  loc_6F1600: LitVar_Missing var_270
  loc_6F1603: LitVar_Missing var_250
  loc_6F1606: LitVar_Missing var_230
  loc_6F1609: LitStr "Verificación de datos"
  loc_6F160C: FStStrCopy var_11C
  loc_6F160F: FLdRfVar var_11C
  loc_6F1612: LitI4 &H15
  loc_6F1617: PopTmpLdAdStr var_210
  loc_6F161A: LitI2_Byte &H1B
  loc_6F161C: PopTmpLdAd2 var_20A
  loc_6F161F: ImpAdLdRf MemVar_74C7D0
  loc_6F1622: NewIfNullPr clsMsg
  loc_6F1625: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F162A: LitVar_Missing var_3B0
  loc_6F162D: LitVar_Missing var_390
  loc_6F1630: FLdZeroAd var_140
  loc_6F1633: CVarStr var_370
  loc_6F1636: LitI4 &H40
  loc_6F163B: FLdZeroAd var_E4
  loc_6F163E: CVarStr var_360
  loc_6F1641: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1646: FFreeStr var_BC = ""
  loc_6F164D: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F1680: LitI2_Byte &HFF
  loc_6F1682: FLdPr Me
  loc_6F1685: VCallAd Control_ID_List1
  loc_6F1688: FStAdFunc var_A8
  loc_6F168B: FLdPr var_A8
  loc_6F168E: Me.Visible = from_stack_1b
  loc_6F1693: FFree1Ad var_A8
  loc_6F1696: LitI2_Byte 0
  loc_6F1698: FLdPr Me
  loc_6F169B: VCallAd Control_ID_lbWait
  loc_6F169E: FStAdFunc var_A8
  loc_6F16A1: FLdPr var_A8
  loc_6F16A4: Me.Visible = from_stack_1b
  loc_6F16A9: FFree1Ad var_A8
  loc_6F16AC: ExitProcCbHresult
  loc_6F16B2: FLdPrThis
  loc_6F16B3: VCallAd Control_ID_HoraInicial
  loc_6F16B6: FStAdFunc var_A8
  loc_6F16B9: FLdPr var_A8
  loc_6F16BC: LateIdLdVar var_B8 DispID_22 0
  loc_6F16C3: CStrVarTmp
  loc_6F16C4: CVarStr var_CC
  loc_6F16C7: ImpAdCallI2 Proc_53_13_638184()
  loc_6F16CC: NotI4
  loc_6F16CD: FFree1Ad var_A8
  loc_6F16D0: FFreeVar var_B8 = ""
  loc_6F16D7: BranchF loc_6F17E6
  loc_6F16DA: FLdRfVar var_E4
  loc_6F16DD: LitVar_Missing var_208
  loc_6F16E0: LitVar_Missing var_1E8
  loc_6F16E3: LitVar_Missing var_1C8
  loc_6F16E6: LitVar_Missing var_1A8
  loc_6F16E9: LitVar_Missing var_13C
  loc_6F16EC: LitVar_Missing var_118
  loc_6F16EF: LitVar_Missing var_104
  loc_6F16F2: LitVar_Missing var_E0
  loc_6F16F5: LitVar_Missing var_CC
  loc_6F16F8: LitVar_Missing var_B8
  loc_6F16FB: LitStr "Debe ingresar correctamente la hora inicial. Verifique por favor."
  loc_6F16FE: FStStrCopy var_BC
  loc_6F1701: FLdRfVar var_BC
  loc_6F1704: LitI4 &H17
  loc_6F1709: PopTmpLdAdStr var_158
  loc_6F170C: LitI2_Byte &H1B
  loc_6F170E: PopTmpLdAd2 var_152
  loc_6F1711: ImpAdLdRf MemVar_74C7D0
  loc_6F1714: NewIfNullPr clsMsg
  loc_6F1717: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F171C: FLdRfVar var_140
  loc_6F171F: LitVar_Missing var_350
  loc_6F1722: LitVar_Missing var_330
  loc_6F1725: LitVar_Missing var_310
  loc_6F1728: LitVar_Missing var_2F0
  loc_6F172B: LitVar_Missing var_2D0
  loc_6F172E: LitVar_Missing var_2B0
  loc_6F1731: LitVar_Missing var_290
  loc_6F1734: LitVar_Missing var_270
  loc_6F1737: LitVar_Missing var_250
  loc_6F173A: LitVar_Missing var_230
  loc_6F173D: LitStr "Verificación de datos"
  loc_6F1740: FStStrCopy var_11C
  loc_6F1743: FLdRfVar var_11C
  loc_6F1746: LitI4 &H15
  loc_6F174B: PopTmpLdAdStr var_210
  loc_6F174E: LitI2_Byte &H1B
  loc_6F1750: PopTmpLdAd2 var_20A
  loc_6F1753: ImpAdLdRf MemVar_74C7D0
  loc_6F1756: NewIfNullPr clsMsg
  loc_6F1759: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F175E: LitVar_Missing var_3B0
  loc_6F1761: LitVar_Missing var_390
  loc_6F1764: FLdZeroAd var_140
  loc_6F1767: CVarStr var_370
  loc_6F176A: LitI4 &H40
  loc_6F176F: FLdZeroAd var_E4
  loc_6F1772: CVarStr var_360
  loc_6F1775: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F177A: FFreeStr var_BC = ""
  loc_6F1781: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F17B4: LitI2_Byte &HFF
  loc_6F17B6: FLdPr Me
  loc_6F17B9: VCallAd Control_ID_List1
  loc_6F17BC: FStAdFunc var_A8
  loc_6F17BF: FLdPr var_A8
  loc_6F17C2: Me.Visible = from_stack_1b
  loc_6F17C7: FFree1Ad var_A8
  loc_6F17CA: LitI2_Byte 0
  loc_6F17CC: FLdPr Me
  loc_6F17CF: VCallAd Control_ID_lbWait
  loc_6F17D2: FStAdFunc var_A8
  loc_6F17D5: FLdPr var_A8
  loc_6F17D8: Me.Visible = from_stack_1b
  loc_6F17DD: FFree1Ad var_A8
  loc_6F17E0: ExitProcCbHresult
  loc_6F17E6: FLdPrThis
  loc_6F17E7: VCallAd Control_ID_HoraFinal
  loc_6F17EA: FStAdFunc var_A8
  loc_6F17ED: FLdPr var_A8
  loc_6F17F0: LateIdLdVar var_B8 DispID_22 0
  loc_6F17F7: CStrVarTmp
  loc_6F17F8: CVarStr var_CC
  loc_6F17FB: ImpAdCallI2 Proc_53_13_638184()
  loc_6F1800: NotI4
  loc_6F1801: FFree1Ad var_A8
  loc_6F1804: FFreeVar var_B8 = ""
  loc_6F180B: BranchF loc_6F191A
  loc_6F180E: FLdRfVar var_E4
  loc_6F1811: LitVar_Missing var_208
  loc_6F1814: LitVar_Missing var_1E8
  loc_6F1817: LitVar_Missing var_1C8
  loc_6F181A: LitVar_Missing var_1A8
  loc_6F181D: LitVar_Missing var_13C
  loc_6F1820: LitVar_Missing var_118
  loc_6F1823: LitVar_Missing var_104
  loc_6F1826: LitVar_Missing var_E0
  loc_6F1829: LitVar_Missing var_CC
  loc_6F182C: LitVar_Missing var_B8
  loc_6F182F: LitStr "Debe ingresar correctamente la hora final. Verifique por favor."
  loc_6F1832: FStStrCopy var_BC
  loc_6F1835: FLdRfVar var_BC
  loc_6F1838: LitI4 &H18
  loc_6F183D: PopTmpLdAdStr var_158
  loc_6F1840: LitI2_Byte &H1B
  loc_6F1842: PopTmpLdAd2 var_152
  loc_6F1845: ImpAdLdRf MemVar_74C7D0
  loc_6F1848: NewIfNullPr clsMsg
  loc_6F184B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1850: FLdRfVar var_140
  loc_6F1853: LitVar_Missing var_350
  loc_6F1856: LitVar_Missing var_330
  loc_6F1859: LitVar_Missing var_310
  loc_6F185C: LitVar_Missing var_2F0
  loc_6F185F: LitVar_Missing var_2D0
  loc_6F1862: LitVar_Missing var_2B0
  loc_6F1865: LitVar_Missing var_290
  loc_6F1868: LitVar_Missing var_270
  loc_6F186B: LitVar_Missing var_250
  loc_6F186E: LitVar_Missing var_230
  loc_6F1871: LitStr "Verificación de datos"
  loc_6F1874: FStStrCopy var_11C
  loc_6F1877: FLdRfVar var_11C
  loc_6F187A: LitI4 &H15
  loc_6F187F: PopTmpLdAdStr var_210
  loc_6F1882: LitI2_Byte &H1B
  loc_6F1884: PopTmpLdAd2 var_20A
  loc_6F1887: ImpAdLdRf MemVar_74C7D0
  loc_6F188A: NewIfNullPr clsMsg
  loc_6F188D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1892: LitVar_Missing var_3B0
  loc_6F1895: LitVar_Missing var_390
  loc_6F1898: FLdZeroAd var_140
  loc_6F189B: CVarStr var_370
  loc_6F189E: LitI4 &H40
  loc_6F18A3: FLdZeroAd var_E4
  loc_6F18A6: CVarStr var_360
  loc_6F18A9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F18AE: FFreeStr var_BC = ""
  loc_6F18B5: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F18E8: LitI2_Byte &HFF
  loc_6F18EA: FLdPr Me
  loc_6F18ED: VCallAd Control_ID_List1
  loc_6F18F0: FStAdFunc var_A8
  loc_6F18F3: FLdPr var_A8
  loc_6F18F6: Me.Visible = from_stack_1b
  loc_6F18FB: FFree1Ad var_A8
  loc_6F18FE: LitI2_Byte 0
  loc_6F1900: FLdPr Me
  loc_6F1903: VCallAd Control_ID_lbWait
  loc_6F1906: FStAdFunc var_A8
  loc_6F1909: FLdPr var_A8
  loc_6F190C: Me.Visible = from_stack_1b
  loc_6F1911: FFree1Ad var_A8
  loc_6F1914: ExitProcCbHresult
  loc_6F191A: FLdPrThis
  loc_6F191B: VCallAd Control_ID_FechaInicial
  loc_6F191E: FStAdFunc var_A8
  loc_6F1921: FLdPr var_A8
  loc_6F1924: LateIdLdVar var_B8 DispID_22 0
  loc_6F192B: PopAd
  loc_6F192D: LitVarI2 var_CC, 4
  loc_6F1932: LitI4 7
  loc_6F1937: FLdRfVar var_B8
  loc_6F193A: CStrVarTmp
  loc_6F193B: FStStrNoPop var_BC
  loc_6F193E: ImpAdCallI2 Mid$(, , )
  loc_6F1943: FStStrNoPop var_E4
  loc_6F1946: CR8Str
  loc_6F1948: LitI2 1970
  loc_6F194B: CR8I2
  loc_6F194C: LtR8
  loc_6F194D: FFreeStr var_BC = ""
  loc_6F1954: FFree1Ad var_A8
  loc_6F1957: FFreeVar var_B8 = ""
  loc_6F195E: BranchF loc_6F1A6D
  loc_6F1961: FLdRfVar var_E4
  loc_6F1964: LitVar_Missing var_208
  loc_6F1967: LitVar_Missing var_1E8
  loc_6F196A: LitVar_Missing var_1C8
  loc_6F196D: LitVar_Missing var_1A8
  loc_6F1970: LitVar_Missing var_13C
  loc_6F1973: LitVar_Missing var_118
  loc_6F1976: LitVar_Missing var_104
  loc_6F1979: LitVar_Missing var_E0
  loc_6F197C: LitVar_Missing var_CC
  loc_6F197F: LitVar_Missing var_B8
  loc_6F1982: LitStr "Debe ingresar una fecha inicial mayor a 1970. Verifique por favor."
  loc_6F1985: FStStrCopy var_BC
  loc_6F1988: FLdRfVar var_BC
  loc_6F198B: LitI4 &H19
  loc_6F1990: PopTmpLdAdStr var_158
  loc_6F1993: LitI2_Byte &H1B
  loc_6F1995: PopTmpLdAd2 var_152
  loc_6F1998: ImpAdLdRf MemVar_74C7D0
  loc_6F199B: NewIfNullPr clsMsg
  loc_6F199E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F19A3: FLdRfVar var_140
  loc_6F19A6: LitVar_Missing var_350
  loc_6F19A9: LitVar_Missing var_330
  loc_6F19AC: LitVar_Missing var_310
  loc_6F19AF: LitVar_Missing var_2F0
  loc_6F19B2: LitVar_Missing var_2D0
  loc_6F19B5: LitVar_Missing var_2B0
  loc_6F19B8: LitVar_Missing var_290
  loc_6F19BB: LitVar_Missing var_270
  loc_6F19BE: LitVar_Missing var_250
  loc_6F19C1: LitVar_Missing var_230
  loc_6F19C4: LitStr "Verificación de datos"
  loc_6F19C7: FStStrCopy var_11C
  loc_6F19CA: FLdRfVar var_11C
  loc_6F19CD: LitI4 &H15
  loc_6F19D2: PopTmpLdAdStr var_210
  loc_6F19D5: LitI2_Byte &H1B
  loc_6F19D7: PopTmpLdAd2 var_20A
  loc_6F19DA: ImpAdLdRf MemVar_74C7D0
  loc_6F19DD: NewIfNullPr clsMsg
  loc_6F19E0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F19E5: LitVar_Missing var_3B0
  loc_6F19E8: LitVar_Missing var_390
  loc_6F19EB: FLdZeroAd var_140
  loc_6F19EE: CVarStr var_370
  loc_6F19F1: LitI4 &H40
  loc_6F19F6: FLdZeroAd var_E4
  loc_6F19F9: CVarStr var_360
  loc_6F19FC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1A01: FFreeStr var_BC = ""
  loc_6F1A08: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F1A3B: LitI2_Byte &HFF
  loc_6F1A3D: FLdPr Me
  loc_6F1A40: VCallAd Control_ID_List1
  loc_6F1A43: FStAdFunc var_A8
  loc_6F1A46: FLdPr var_A8
  loc_6F1A49: Me.Visible = from_stack_1b
  loc_6F1A4E: FFree1Ad var_A8
  loc_6F1A51: LitI2_Byte 0
  loc_6F1A53: FLdPr Me
  loc_6F1A56: VCallAd Control_ID_lbWait
  loc_6F1A59: FStAdFunc var_A8
  loc_6F1A5C: FLdPr var_A8
  loc_6F1A5F: Me.Visible = from_stack_1b
  loc_6F1A64: FFree1Ad var_A8
  loc_6F1A67: ExitProcCbHresult
  loc_6F1A6D: FLdPrThis
  loc_6F1A6E: VCallAd Control_ID_FechaFinal
  loc_6F1A71: FStAdFunc var_A8
  loc_6F1A74: FLdPr var_A8
  loc_6F1A77: LateIdLdVar var_B8 DispID_22 0
  loc_6F1A7E: PopAd
  loc_6F1A80: LitVarI2 var_CC, 4
  loc_6F1A85: LitI4 7
  loc_6F1A8A: FLdRfVar var_B8
  loc_6F1A8D: CStrVarTmp
  loc_6F1A8E: FStStrNoPop var_BC
  loc_6F1A91: ImpAdCallI2 Mid$(, , )
  loc_6F1A96: FStStrNoPop var_E4
  loc_6F1A99: CR8Str
  loc_6F1A9B: LitI2 1970
  loc_6F1A9E: CR8I2
  loc_6F1A9F: LtR8
  loc_6F1AA0: FFreeStr var_BC = ""
  loc_6F1AA7: FFree1Ad var_A8
  loc_6F1AAA: FFreeVar var_B8 = ""
  loc_6F1AB1: BranchF loc_6F1BC0
  loc_6F1AB4: FLdRfVar var_E4
  loc_6F1AB7: LitVar_Missing var_208
  loc_6F1ABA: LitVar_Missing var_1E8
  loc_6F1ABD: LitVar_Missing var_1C8
  loc_6F1AC0: LitVar_Missing var_1A8
  loc_6F1AC3: LitVar_Missing var_13C
  loc_6F1AC6: LitVar_Missing var_118
  loc_6F1AC9: LitVar_Missing var_104
  loc_6F1ACC: LitVar_Missing var_E0
  loc_6F1ACF: LitVar_Missing var_CC
  loc_6F1AD2: LitVar_Missing var_B8
  loc_6F1AD5: LitStr "Debe ingresar una fecha final mayor a 1970. Verifique por favor."
  loc_6F1AD8: FStStrCopy var_BC
  loc_6F1ADB: FLdRfVar var_BC
  loc_6F1ADE: LitI4 &H1A
  loc_6F1AE3: PopTmpLdAdStr var_158
  loc_6F1AE6: LitI2_Byte &H1B
  loc_6F1AE8: PopTmpLdAd2 var_152
  loc_6F1AEB: ImpAdLdRf MemVar_74C7D0
  loc_6F1AEE: NewIfNullPr clsMsg
  loc_6F1AF1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1AF6: FLdRfVar var_140
  loc_6F1AF9: LitVar_Missing var_350
  loc_6F1AFC: LitVar_Missing var_330
  loc_6F1AFF: LitVar_Missing var_310
  loc_6F1B02: LitVar_Missing var_2F0
  loc_6F1B05: LitVar_Missing var_2D0
  loc_6F1B08: LitVar_Missing var_2B0
  loc_6F1B0B: LitVar_Missing var_290
  loc_6F1B0E: LitVar_Missing var_270
  loc_6F1B11: LitVar_Missing var_250
  loc_6F1B14: LitVar_Missing var_230
  loc_6F1B17: LitStr "Verificación de datos"
  loc_6F1B1A: FStStrCopy var_11C
  loc_6F1B1D: FLdRfVar var_11C
  loc_6F1B20: LitI4 &H15
  loc_6F1B25: PopTmpLdAdStr var_210
  loc_6F1B28: LitI2_Byte &H1B
  loc_6F1B2A: PopTmpLdAd2 var_20A
  loc_6F1B2D: ImpAdLdRf MemVar_74C7D0
  loc_6F1B30: NewIfNullPr clsMsg
  loc_6F1B33: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1B38: LitVar_Missing var_3B0
  loc_6F1B3B: LitVar_Missing var_390
  loc_6F1B3E: FLdZeroAd var_140
  loc_6F1B41: CVarStr var_370
  loc_6F1B44: LitI4 &H40
  loc_6F1B49: FLdZeroAd var_E4
  loc_6F1B4C: CVarStr var_360
  loc_6F1B4F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1B54: FFreeStr var_BC = ""
  loc_6F1B5B: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F1B8E: LitI2_Byte &HFF
  loc_6F1B90: FLdPr Me
  loc_6F1B93: VCallAd Control_ID_List1
  loc_6F1B96: FStAdFunc var_A8
  loc_6F1B99: FLdPr var_A8
  loc_6F1B9C: Me.Visible = from_stack_1b
  loc_6F1BA1: FFree1Ad var_A8
  loc_6F1BA4: LitI2_Byte 0
  loc_6F1BA6: FLdPr Me
  loc_6F1BA9: VCallAd Control_ID_lbWait
  loc_6F1BAC: FStAdFunc var_A8
  loc_6F1BAF: FLdPr var_A8
  loc_6F1BB2: Me.Visible = from_stack_1b
  loc_6F1BB7: FFree1Ad var_A8
  loc_6F1BBA: ExitProcCbHresult
  loc_6F1BC0: FLdPrThis
  loc_6F1BC1: VCallAd Control_ID_FechaInicial
  loc_6F1BC4: FStAdFunc var_A8
  loc_6F1BC7: FLdPr var_A8
  loc_6F1BCA: LateIdLdVar var_B8 DispID_22 0
  loc_6F1BD1: PopAd
  loc_6F1BD3: LitVarI2 var_CC, 2
  loc_6F1BD8: LitI4 1
  loc_6F1BDD: FLdRfVar var_B8
  loc_6F1BE0: CStrVarTmp
  loc_6F1BE1: FStStrNoPop var_BC
  loc_6F1BE4: ImpAdCallI2 Mid$(, , )
  loc_6F1BE9: FStStr var_3D0
  loc_6F1BEC: FLdPrThis
  loc_6F1BED: VCallAd Control_ID_FechaInicial
  loc_6F1BF0: FStAdFunc var_D0
  loc_6F1BF3: FLdPr var_D0
  loc_6F1BF6: LateIdLdVar var_E0 DispID_22 0
  loc_6F1BFD: PopAd
  loc_6F1BFF: LitVarI2 var_104, 2
  loc_6F1C04: LitI4 4
  loc_6F1C09: FLdRfVar var_E0
  loc_6F1C0C: CStrVarTmp
  loc_6F1C0D: FStStrNoPop var_E4
  loc_6F1C10: ImpAdCallI2 Mid$(, , )
  loc_6F1C15: FStStr var_3D4
  loc_6F1C18: FLdPrThis
  loc_6F1C19: VCallAd Control_ID_FechaInicial
  loc_6F1C1C: FStAdFunc var_108
  loc_6F1C1F: FLdPr var_108
  loc_6F1C22: LateIdLdVar var_118 DispID_22 0
  loc_6F1C29: PopAd
  loc_6F1C2B: LitVarI2 var_13C, 4
  loc_6F1C30: LitI4 7
  loc_6F1C35: FLdRfVar var_118
  loc_6F1C38: CStrVarTmp
  loc_6F1C39: FStStrNoPop var_11C
  loc_6F1C3C: ImpAdCallI2 Mid$(, , )
  loc_6F1C41: FStStr var_3D8
  loc_6F1C44: FLdPrThis
  loc_6F1C45: VCallAd Control_ID_FechaFinal
  loc_6F1C48: FStAdFunc var_3B4
  loc_6F1C4B: FLdPr var_3B4
  loc_6F1C4E: LateIdLdVar var_1A8 DispID_22 0
  loc_6F1C55: PopAd
  loc_6F1C57: LitVarI2 var_1C8, 2
  loc_6F1C5C: LitI4 1
  loc_6F1C61: FLdRfVar var_1A8
  loc_6F1C64: CStrVarTmp
  loc_6F1C65: FStStrNoPop var_140
  loc_6F1C68: ImpAdCallI2 Mid$(, , )
  loc_6F1C6D: FStStr var_3DC
  loc_6F1C70: FLdPrThis
  loc_6F1C71: VCallAd Control_ID_FechaFinal
  loc_6F1C74: FStAdFunc var_3B8
  loc_6F1C77: FLdPr var_3B8
  loc_6F1C7A: LateIdLdVar var_1E8 DispID_22 0
  loc_6F1C81: PopAd
  loc_6F1C83: LitVarI2 var_208, 2
  loc_6F1C88: LitI4 4
  loc_6F1C8D: FLdRfVar var_1E8
  loc_6F1C90: CStrVarTmp
  loc_6F1C91: FStStrNoPop var_144
  loc_6F1C94: ImpAdCallI2 Mid$(, , )
  loc_6F1C99: FStStr var_3E0
  loc_6F1C9C: FLdPrThis
  loc_6F1C9D: VCallAd Control_ID_FechaFinal
  loc_6F1CA0: FStAdFunc var_3BC
  loc_6F1CA3: FLdPr var_3BC
  loc_6F1CA6: LateIdLdVar var_230 DispID_22 0
  loc_6F1CAD: PopAd
  loc_6F1CAF: LitVarI2 var_250, 4
  loc_6F1CB4: LitI4 7
  loc_6F1CB9: FLdRfVar var_230
  loc_6F1CBC: CStrVarTmp
  loc_6F1CBD: FStStrNoPop var_148
  loc_6F1CC0: ImpAdCallI2 Mid$(, , )
  loc_6F1CC5: FStStrNoPop var_3CC
  loc_6F1CC8: CI2Str
  loc_6F1CCA: FLdZeroAd var_3E0
  loc_6F1CCD: FStStrNoPop var_3C8
  loc_6F1CD0: CI2Str
  loc_6F1CD2: FLdZeroAd var_3DC
  loc_6F1CD5: FStStrNoPop var_3C4
  loc_6F1CD8: CI2Str
  loc_6F1CDA: FLdZeroAd var_3D8
  loc_6F1CDD: FStStrNoPop var_3C0
  loc_6F1CE0: CI2Str
  loc_6F1CE2: FLdZeroAd var_3D4
  loc_6F1CE5: FStStrNoPop var_150
  loc_6F1CE8: CI2Str
  loc_6F1CEA: FLdZeroAd var_3D0
  loc_6F1CED: FStStrNoPop var_14C
  loc_6F1CF0: CI2Str
  loc_6F1CF2: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6F1CF7: LitI2_Byte 0
  loc_6F1CF9: GtI2
  loc_6F1CFA: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6F1D1F: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6F1D2E: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6F1D49: BranchF loc_6F1E5B
  loc_6F1D4C: FLdRfVar var_E4
  loc_6F1D4F: LitVar_Missing var_208
  loc_6F1D52: LitVar_Missing var_1E8
  loc_6F1D55: LitVar_Missing var_1C8
  loc_6F1D58: LitVar_Missing var_1A8
  loc_6F1D5B: LitVar_Missing var_13C
  loc_6F1D5E: LitVar_Missing var_118
  loc_6F1D61: LitVar_Missing var_104
  loc_6F1D64: LitVar_Missing var_E0
  loc_6F1D67: LitVar_Missing var_CC
  loc_6F1D6A: LitVar_Missing var_B8
  loc_6F1D6D: LitStr "Debe ingresar una fecha inicial menor o igual a la final. Verifique por favor."
  loc_6F1D70: FStStrCopy var_BC
  loc_6F1D73: FLdRfVar var_BC
  loc_6F1D76: LitI4 &H1B
  loc_6F1D7B: PopTmpLdAdStr var_158
  loc_6F1D7E: LitI2_Byte &H1B
  loc_6F1D80: PopTmpLdAd2 var_152
  loc_6F1D83: ImpAdLdRf MemVar_74C7D0
  loc_6F1D86: NewIfNullPr clsMsg
  loc_6F1D89: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1D8E: FLdRfVar var_140
  loc_6F1D91: LitVar_Missing var_350
  loc_6F1D94: LitVar_Missing var_330
  loc_6F1D97: LitVar_Missing var_310
  loc_6F1D9A: LitVar_Missing var_2F0
  loc_6F1D9D: LitVar_Missing var_2D0
  loc_6F1DA0: LitVar_Missing var_2B0
  loc_6F1DA3: LitVar_Missing var_290
  loc_6F1DA6: LitVar_Missing var_270
  loc_6F1DA9: LitVar_Missing var_250
  loc_6F1DAC: LitVar_Missing var_230
  loc_6F1DAF: LitStr "Verificación de datos"
  loc_6F1DB2: FStStrCopy var_11C
  loc_6F1DB5: FLdRfVar var_11C
  loc_6F1DB8: LitI4 &H15
  loc_6F1DBD: PopTmpLdAdStr var_210
  loc_6F1DC0: LitI2_Byte &H1B
  loc_6F1DC2: PopTmpLdAd2 var_20A
  loc_6F1DC5: ImpAdLdRf MemVar_74C7D0
  loc_6F1DC8: NewIfNullPr clsMsg
  loc_6F1DCB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F1DD0: LitVar_Missing var_3B0
  loc_6F1DD3: LitVar_Missing var_390
  loc_6F1DD6: FLdZeroAd var_140
  loc_6F1DD9: CVarStr var_370
  loc_6F1DDC: LitI4 &H40
  loc_6F1DE1: FLdZeroAd var_E4
  loc_6F1DE4: CVarStr var_360
  loc_6F1DE7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F1DEC: FFreeStr var_BC = ""
  loc_6F1DF3: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F1E26: LitI2_Byte &HFF
  loc_6F1E28: FLdPr Me
  loc_6F1E2B: VCallAd Control_ID_List1
  loc_6F1E2E: FStAdFunc var_A8
  loc_6F1E31: FLdPr var_A8
  loc_6F1E34: Me.Visible = from_stack_1b
  loc_6F1E39: FFree1Ad var_A8
  loc_6F1E3C: LitI2_Byte 0
  loc_6F1E3E: FLdPr Me
  loc_6F1E41: VCallAd Control_ID_lbWait
  loc_6F1E44: FStAdFunc var_A8
  loc_6F1E47: FLdPr var_A8
  loc_6F1E4A: Me.Visible = from_stack_1b
  loc_6F1E4F: FFree1Ad var_A8
  loc_6F1E52: ExitProcCbHresult
  loc_6F1E58: Branch loc_6F2142
  loc_6F1E5B: FLdPrThis
  loc_6F1E5C: VCallAd Control_ID_FechaInicial
  loc_6F1E5F: FStAdFunc var_A8
  loc_6F1E62: FLdPr var_A8
  loc_6F1E65: LateIdLdVar var_B8 DispID_22 0
  loc_6F1E6C: PopAd
  loc_6F1E6E: LitVarI2 var_CC, 2
  loc_6F1E73: LitI4 1
  loc_6F1E78: FLdRfVar var_B8
  loc_6F1E7B: CStrVarTmp
  loc_6F1E7C: FStStrNoPop var_BC
  loc_6F1E7F: ImpAdCallI2 Mid$(, , )
  loc_6F1E84: FStStr var_3D0
  loc_6F1E87: FLdPrThis
  loc_6F1E88: VCallAd Control_ID_FechaInicial
  loc_6F1E8B: FStAdFunc var_D0
  loc_6F1E8E: FLdPr var_D0
  loc_6F1E91: LateIdLdVar var_E0 DispID_22 0
  loc_6F1E98: PopAd
  loc_6F1E9A: LitVarI2 var_104, 2
  loc_6F1E9F: LitI4 4
  loc_6F1EA4: FLdRfVar var_E0
  loc_6F1EA7: CStrVarTmp
  loc_6F1EA8: FStStrNoPop var_E4
  loc_6F1EAB: ImpAdCallI2 Mid$(, , )
  loc_6F1EB0: FStStr var_3D4
  loc_6F1EB3: FLdPrThis
  loc_6F1EB4: VCallAd Control_ID_FechaInicial
  loc_6F1EB7: FStAdFunc var_108
  loc_6F1EBA: FLdPr var_108
  loc_6F1EBD: LateIdLdVar var_118 DispID_22 0
  loc_6F1EC4: PopAd
  loc_6F1EC6: LitVarI2 var_13C, 4
  loc_6F1ECB: LitI4 7
  loc_6F1ED0: FLdRfVar var_118
  loc_6F1ED3: CStrVarTmp
  loc_6F1ED4: FStStrNoPop var_11C
  loc_6F1ED7: ImpAdCallI2 Mid$(, , )
  loc_6F1EDC: FStStr var_3D8
  loc_6F1EDF: FLdPrThis
  loc_6F1EE0: VCallAd Control_ID_FechaFinal
  loc_6F1EE3: FStAdFunc var_3B4
  loc_6F1EE6: FLdPr var_3B4
  loc_6F1EE9: LateIdLdVar var_1A8 DispID_22 0
  loc_6F1EF0: PopAd
  loc_6F1EF2: LitVarI2 var_1C8, 2
  loc_6F1EF7: LitI4 1
  loc_6F1EFC: FLdRfVar var_1A8
  loc_6F1EFF: CStrVarTmp
  loc_6F1F00: FStStrNoPop var_140
  loc_6F1F03: ImpAdCallI2 Mid$(, , )
  loc_6F1F08: FStStr var_3DC
  loc_6F1F0B: FLdPrThis
  loc_6F1F0C: VCallAd Control_ID_FechaFinal
  loc_6F1F0F: FStAdFunc var_3B8
  loc_6F1F12: FLdPr var_3B8
  loc_6F1F15: LateIdLdVar var_1E8 DispID_22 0
  loc_6F1F1C: PopAd
  loc_6F1F1E: LitVarI2 var_208, 2
  loc_6F1F23: LitI4 4
  loc_6F1F28: FLdRfVar var_1E8
  loc_6F1F2B: CStrVarTmp
  loc_6F1F2C: FStStrNoPop var_144
  loc_6F1F2F: ImpAdCallI2 Mid$(, , )
  loc_6F1F34: FStStr var_3E0
  loc_6F1F37: FLdPrThis
  loc_6F1F38: VCallAd Control_ID_FechaFinal
  loc_6F1F3B: FStAdFunc var_3BC
  loc_6F1F3E: FLdPr var_3BC
  loc_6F1F41: LateIdLdVar var_230 DispID_22 0
  loc_6F1F48: PopAd
  loc_6F1F4A: LitVarI2 var_250, 4
  loc_6F1F4F: LitI4 7
  loc_6F1F54: FLdRfVar var_230
  loc_6F1F57: CStrVarTmp
  loc_6F1F58: FStStrNoPop var_148
  loc_6F1F5B: ImpAdCallI2 Mid$(, , )
  loc_6F1F60: FStStrNoPop var_3CC
  loc_6F1F63: CI2Str
  loc_6F1F65: FLdZeroAd var_3E0
  loc_6F1F68: FStStrNoPop var_3C8
  loc_6F1F6B: CI2Str
  loc_6F1F6D: FLdZeroAd var_3DC
  loc_6F1F70: FStStrNoPop var_3C4
  loc_6F1F73: CI2Str
  loc_6F1F75: FLdZeroAd var_3D8
  loc_6F1F78: FStStrNoPop var_3C0
  loc_6F1F7B: CI2Str
  loc_6F1F7D: FLdZeroAd var_3D4
  loc_6F1F80: FStStrNoPop var_150
  loc_6F1F83: CI2Str
  loc_6F1F85: FLdZeroAd var_3D0
  loc_6F1F88: FStStrNoPop var_14C
  loc_6F1F8B: CI2Str
  loc_6F1F8D: ImpAdCallI2 Proc_65_2_5E4BA8(, , , , , )
  loc_6F1F92: LitI2_Byte 0
  loc_6F1F94: EqI2
  loc_6F1F95: FFreeStr var_BC = "": var_E4 = "": var_11C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = ""
  loc_6F1FBA: FFreeAd var_A8 = "": var_D0 = "": var_108 = "": var_3B4 = "": var_3B8 = ""
  loc_6F1FC9: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = ""
  loc_6F1FE4: BranchF loc_6F2142
  loc_6F1FE7: FLdPrThis
  loc_6F1FE8: VCallAd Control_ID_HoraInicial
  loc_6F1FEB: FStAdFunc var_A8
  loc_6F1FEE: FLdPr var_A8
  loc_6F1FF1: LateIdLdVar var_B8 DispID_22 0
  loc_6F1FF8: PopAd
  loc_6F1FFA: FLdPrThis
  loc_6F1FFB: VCallAd Control_ID_HoraFinal
  loc_6F1FFE: FStAdFunc var_D0
  loc_6F2001: FLdPr var_D0
  loc_6F2004: LateIdLdVar var_CC DispID_22 0
  loc_6F200B: CStrVarTmp
  loc_6F200C: FStStrNoPop var_E4
  loc_6F200F: FLdRfVar var_B8
  loc_6F2012: CStrVarTmp
  loc_6F2013: FStStrNoPop var_BC
  loc_6F2016: ImpAdCallI2 Proc_65_3_641944(, )
  loc_6F201B: LitI2_Byte 0
  loc_6F201D: GtI2
  loc_6F201E: FFreeStr var_BC = ""
  loc_6F2025: FFreeAd var_A8 = ""
  loc_6F202C: FFreeVar var_B8 = ""
  loc_6F2033: BranchF loc_6F2142
  loc_6F2036: FLdRfVar var_E4
  loc_6F2039: LitVar_Missing var_208
  loc_6F203C: LitVar_Missing var_1E8
  loc_6F203F: LitVar_Missing var_1C8
  loc_6F2042: LitVar_Missing var_1A8
  loc_6F2045: LitVar_Missing var_13C
  loc_6F2048: LitVar_Missing var_118
  loc_6F204B: LitVar_Missing var_104
  loc_6F204E: LitVar_Missing var_E0
  loc_6F2051: LitVar_Missing var_CC
  loc_6F2054: LitVar_Missing var_B8
  loc_6F2057: LitStr "Debe ingresar una hora inicial menor o igual a la final. Verifique por favor."
  loc_6F205A: FStStrCopy var_BC
  loc_6F205D: FLdRfVar var_BC
  loc_6F2060: LitI4 &H1C
  loc_6F2065: PopTmpLdAdStr var_158
  loc_6F2068: LitI2_Byte &H1B
  loc_6F206A: PopTmpLdAd2 var_152
  loc_6F206D: ImpAdLdRf MemVar_74C7D0
  loc_6F2070: NewIfNullPr clsMsg
  loc_6F2073: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F2078: FLdRfVar var_140
  loc_6F207B: LitVar_Missing var_350
  loc_6F207E: LitVar_Missing var_330
  loc_6F2081: LitVar_Missing var_310
  loc_6F2084: LitVar_Missing var_2F0
  loc_6F2087: LitVar_Missing var_2D0
  loc_6F208A: LitVar_Missing var_2B0
  loc_6F208D: LitVar_Missing var_290
  loc_6F2090: LitVar_Missing var_270
  loc_6F2093: LitVar_Missing var_250
  loc_6F2096: LitVar_Missing var_230
  loc_6F2099: LitStr "Verificación de datos"
  loc_6F209C: FStStrCopy var_11C
  loc_6F209F: FLdRfVar var_11C
  loc_6F20A2: LitI4 &H15
  loc_6F20A7: PopTmpLdAdStr var_210
  loc_6F20AA: LitI2_Byte &H1B
  loc_6F20AC: PopTmpLdAd2 var_20A
  loc_6F20AF: ImpAdLdRf MemVar_74C7D0
  loc_6F20B2: NewIfNullPr clsMsg
  loc_6F20B5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F20BA: LitVar_Missing var_3B0
  loc_6F20BD: LitVar_Missing var_390
  loc_6F20C0: FLdZeroAd var_140
  loc_6F20C3: CVarStr var_370
  loc_6F20C6: LitI4 &H40
  loc_6F20CB: FLdZeroAd var_E4
  loc_6F20CE: CVarStr var_360
  loc_6F20D1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F20D6: FFreeStr var_BC = ""
  loc_6F20DD: FFreeVar var_B8 = "": var_CC = "": var_E0 = "": var_104 = "": var_118 = "": var_13C = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_360 = "": var_370 = "": var_390 = ""
  loc_6F2110: LitI2_Byte &HFF
  loc_6F2112: FLdPr Me
  loc_6F2115: VCallAd Control_ID_List1
  loc_6F2118: FStAdFunc var_A8
  loc_6F211B: FLdPr var_A8
  loc_6F211E: Me.Visible = from_stack_1b
  loc_6F2123: FFree1Ad var_A8
  loc_6F2126: LitI2_Byte 0
  loc_6F2128: FLdPr Me
  loc_6F212B: VCallAd Control_ID_lbWait
  loc_6F212E: FStAdFunc var_A8
  loc_6F2131: FLdPr var_A8
  loc_6F2134: Me.Visible = from_stack_1b
  loc_6F2139: FFree1Ad var_A8
  loc_6F213C: ExitProcCbHresult
  loc_6F2142: LitVarI4
  loc_6F214A: FStVar var_94
  loc_6F214E: ExitProcCbHresult
End Function

Private Function Proc_133_38_68B35C() '68B35C
  'Data Table: 45294C
  loc_68AE84: LitI2_Byte 0
  loc_68AE86: CUI1I2
  loc_68AE88: FStUI1 var_B2
  loc_68AE8E: OnErrorGoto loc_68B171
  loc_68AE93: LitVar_Missing var_D8
  loc_68AE96: ImpAdCallI2 FreeFile()
  loc_68AE9B: FStI2 var_B0
  loc_68AE9E: FFree1Var var_D8 = ""
  loc_68AEA3: FLdRfVar var_E0
  loc_68AEA6: FLdPrThis
  loc_68AEA7: VCallAd Control_ID_Dir1
  loc_68AEAA: FStAdFunc var_DC
  loc_68AEAD: FLdPr var_DC
  loc_68AEB0:  = Me.Path
  loc_68AEB5: ILdRf var_E0
  loc_68AEB8: FnLenStr
  loc_68AEB9: CI2I4
  loc_68AEBA: FStI2 var_B4
  loc_68AEBD: FFree1Str var_E0
  loc_68AEC0: FFree1Ad var_DC
  loc_68AEC5: FLdRfVar var_E0
  loc_68AEC8: FLdPrThis
  loc_68AEC9: VCallAd Control_ID_Dir1
  loc_68AECC: FStAdFunc var_DC
  loc_68AECF: FLdPr var_DC
  loc_68AED2:  = Me.Path
  loc_68AED7: LitVarI2 var_F0, 1
  loc_68AEDC: FLdI2 var_B4
  loc_68AEDF: CI4UI1
  loc_68AEE0: FLdZeroAd var_E0
  loc_68AEE3: CVarStr var_D8
  loc_68AEE6: FLdRfVar var_100
  loc_68AEE9: ImpAdCallFPR4  = Mid(, , )
  loc_68AEEE: FLdRfVar var_100
  loc_68AEF1: LitVarStr var_110, "\"
  loc_68AEF6: HardType
  loc_68AEF7: NeVarBool
  loc_68AEF9: FFree1Ad var_DC
  loc_68AEFC: FFreeVar var_D8 = "": var_F0 = ""
  loc_68AF05: BranchF loc_68AF2F
  loc_68AF0A: FLdRfVar var_E0
  loc_68AF0D: FLdPrThis
  loc_68AF0E: VCallAd Control_ID_Dir1
  loc_68AF11: FStAdFunc var_DC
  loc_68AF14: FLdPr var_DC
  loc_68AF17:  = Me.Path
  loc_68AF1C: ILdRf var_E0
  loc_68AF1F: LitStr "\"
  loc_68AF22: ConcatStr
  loc_68AF23: FStStr var_B8
  loc_68AF26: FFree1Str var_E0
  loc_68AF29: FFree1Ad var_DC
  loc_68AF2C: Branch loc_68AF4E
  loc_68AF33: FLdRfVar var_E0
  loc_68AF36: FLdPrThis
  loc_68AF37: VCallAd Control_ID_Dir1
  loc_68AF3A: FStAdFunc var_DC
  loc_68AF3D: FLdPr var_DC
  loc_68AF40:  = Me.Path
  loc_68AF45: FLdZeroAd var_E0
  loc_68AF48: FStStr var_B8
  loc_68AF4B: FFree1Ad var_DC
  loc_68AF52: ILdRf var_B8
  loc_68AF55: CVarStr var_C8
  loc_68AF58: FLdRfVar var_E0
  loc_68AF5B: FLdPrThis
  loc_68AF5C: VCallAd Control_ID_txtFile
  loc_68AF5F: FStAdFunc var_DC
  loc_68AF62: FLdPr var_DC
  loc_68AF65:  = Me.Text
  loc_68AF6A: FLdZeroAd var_E0
  loc_68AF6D: CVarStr var_D8
  loc_68AF70: FLdRfVar var_F0
  loc_68AF73: ImpAdCallFPR4  = Trim()
  loc_68AF78: FLdRfVar var_F0
  loc_68AF7B: ConcatVar var_100
  loc_68AF7F: CStrVarTmp
  loc_68AF80: FStStrNoPop var_124
  loc_68AF83: FLdI2 var_B0
  loc_68AF86: LitI2_Byte &HFF
  loc_68AF88: OpenFile
  loc_68AF8C: FFree1Str var_124
  loc_68AF8F: FFree1Ad var_DC
  loc_68AF92: FFreeVar var_D8 = "": var_F0 = ""
  loc_68AF9D: LitI4 0
  loc_68AFA2: FStR4 var_AC
  loc_68AFA7: LitI2_Byte &H30
  loc_68AFA9: CUI1I2
  loc_68AFAB: FStUI1 var_AE
  loc_68AFB1: FLdRfVar var_126
  loc_68AFB4: FLdPrThis
  loc_68AFB5: VCallAd Control_ID_chkFormatCem37
  loc_68AFB8: FStAdFunc var_DC
  loc_68AFBB: FLdPr var_DC
  loc_68AFBE:  = Me.Value
  loc_68AFC3: FLdI2 var_126
  loc_68AFC6: LitI2_Byte 0
  loc_68AFC8: EqI2
  loc_68AFC9: FFree1Ad var_DC
  loc_68AFCC: BranchF loc_68B03D
  loc_68AFD1: FLdRfVar var_124
  loc_68AFD4: LitVar_Missing var_20C
  loc_68AFD7: LitVar_Missing var_1EC
  loc_68AFDA: LitVar_Missing var_1CC
  loc_68AFDD: LitVar_Missing var_1AC
  loc_68AFE0: LitVar_Missing var_18C
  loc_68AFE3: LitVar_Missing var_16C
  loc_68AFE6: LitVar_Missing var_120
  loc_68AFE9: LitVar_Missing var_100
  loc_68AFEC: LitVar_Missing var_F0
  loc_68AFEF: LitVar_Missing var_D8
  loc_68AFF2: LitStr "Fecha;Hora;Surtidor;Producto;Tipo de pago;Monto;Volumen;PPU"
  loc_68AFF5: FStStrCopy var_E0
  loc_68AFF8: FLdRfVar var_E0
  loc_68AFFB: LitI4 &H1D
  loc_68B000: PopTmpLdAdStr var_12C
  loc_68B003: LitI2_Byte &H1B
  loc_68B005: PopTmpLdAd2 var_126
  loc_68B008: ImpAdLdRf MemVar_74C7D0
  loc_68B00B: NewIfNullPr clsMsg
  loc_68B00E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68B013: ILdRf var_124
  loc_68B016: FLdI2 var_B0
  loc_68B019: PrintFile
  loc_68B01F: FFreeStr var_E0 = ""
  loc_68B026: FFreeVar var_D8 = "": var_F0 = "": var_100 = "": var_120 = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = ""
  loc_68B041: LitI2_Byte 1
  loc_68B043: FLdPr Me
  loc_68B046: MemStI2 global_80
  loc_68B04B: FLdPr Me
  loc_68B04E: MemLdI2 global_80
  loc_68B051: CI4UI1
  loc_68B052: ImpAdLdI4 MemVar_74C73C
  loc_68B055: LitI2_Byte 1
  loc_68B057: FnUBound
  loc_68B059: LeI4
  loc_68B05A: BranchF loc_68B0A4
  loc_68B05F: LitI2_Byte 3
  loc_68B061: LitNothing
  loc_68B063: CastAd
  loc_68B066: FStAdFunc var_210
  loc_68B069: FLdRfVar var_210
  loc_68B06C: LitNothing
  loc_68B06E: CastAd
  loc_68B071: FStAdFunc var_DC
  loc_68B074: FLdRfVar var_DC
  loc_68B077: FLdRfVar var_B0
  loc_68B07A: LitI4 0
  loc_68B07F: PopTmpLdAdStr var_12C
  loc_68B082: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_68B087: FFreeAd var_DC = ""
  loc_68B090: FLdPr Me
  loc_68B093: MemLdI2 global_80
  loc_68B096: LitI2_Byte 1
  loc_68B098: AddI2
  loc_68B099: FLdPr Me
  loc_68B09C: MemStI2 global_80
  loc_68B0A1: Branch loc_68B049
  loc_68B0A6: FLdI2 var_B0
  loc_68B0A9: Close
  loc_68B0AD: LitI2_Byte 1
  loc_68B0AF: FLdPr Me
  loc_68B0B2: MemStI2 global_80
  loc_68B0B7: LitI2_Byte 3
  loc_68B0B9: LitNothing
  loc_68B0BB: CastAd
  loc_68B0BE: FStAdFunc var_210
  loc_68B0C1: FLdRfVar var_210
  loc_68B0C4: LitNothing
  loc_68B0C6: CastAd
  loc_68B0C9: FStAdFunc var_DC
  loc_68B0CC: FLdRfVar var_DC
  loc_68B0CF: LitI2_Byte 0
  loc_68B0D1: PopTmpLdAd2 var_126
  loc_68B0D4: LitI4 2
  loc_68B0D9: PopTmpLdAdStr var_12C
  loc_68B0DC: from_stack_3v = Proc_133_42_731070(from_stack_1v, from_stack_2v)
  loc_68B0E1: FFreeAd var_DC = ""
  loc_68B0EA: FLdRfVar var_124
  loc_68B0ED: LitVar_Missing var_20C
  loc_68B0F0: LitVar_Missing var_1EC
  loc_68B0F3: LitVar_Missing var_1CC
  loc_68B0F6: LitVar_Missing var_1AC
  loc_68B0F9: LitVar_Missing var_18C
  loc_68B0FC: LitVar_Missing var_16C
  loc_68B0FF: LitVar_Missing var_120
  loc_68B102: LitVar_Missing var_100
  loc_68B105: LitVar_Missing var_F0
  loc_68B108: LitVar_Missing var_D8
  loc_68B10B: LitStr "Se grabó la información correctamente."
  loc_68B10E: FStStrCopy var_E0
  loc_68B111: FLdRfVar var_E0
  loc_68B114: LitI4 &H1E
  loc_68B119: PopTmpLdAdStr var_12C
  loc_68B11C: LitI2_Byte &H1B
  loc_68B11E: PopTmpLdAd2 var_126
  loc_68B121: ImpAdLdRf MemVar_74C7D0
  loc_68B124: NewIfNullPr clsMsg
  loc_68B127: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68B12C: LitVar_Missing var_280
  loc_68B12F: LitVar_Missing var_260
  loc_68B132: LitVar_Missing var_240
  loc_68B135: LitI4 &H40
  loc_68B13A: FLdZeroAd var_124
  loc_68B13D: CVarStr var_220
  loc_68B140: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68B145: FFree1Str var_E0
  loc_68B148: FFreeVar var_D8 = "": var_F0 = "": var_100 = "": var_120 = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_220 = "": var_240 = "": var_260 = ""
  loc_68B169: Call cmdSave_UnknownEvent_8()
  loc_68B170: ExitProcHresult
  loc_68B173: FLdUI1
  loc_68B177: CI2UI1
  loc_68B179: LitI2_Byte 1
  loc_68B17B: AddI2
  loc_68B17C: CUI1I2
  loc_68B17E: FStUI1 var_B2
  loc_68B184: FLdUI1
  loc_68B188: CI2UI1
  loc_68B18A: LitI2_Byte 3
  loc_68B18C: GtI2
  loc_68B18D: BranchF loc_68B19D
  loc_68B192: Call cmdSave_UnknownEvent_8()
  loc_68B199: ExitProcHresult
  loc_68B19A: Branch loc_68B355
  loc_68B1A1: FLdRfVar var_E0
  loc_68B1A4: FLdPrThis
  loc_68B1A5: VCallAd Control_ID_Dir1
  loc_68B1A8: FStAdFunc var_DC
  loc_68B1AB: FLdPr var_DC
  loc_68B1AE:  = Me.Path
  loc_68B1B3: FLdRfVar var_288
  loc_68B1B6: LitVar_Missing var_20C
  loc_68B1B9: LitVar_Missing var_1EC
  loc_68B1BC: LitVar_Missing var_1CC
  loc_68B1BF: LitVar_Missing var_1AC
  loc_68B1C2: LitVar_Missing var_18C
  loc_68B1C5: LitVar_Missing var_16C
  loc_68B1C8: LitVar_Missing var_120
  loc_68B1CB: LitVar_Missing var_100
  loc_68B1CE: LitVar_Missing var_F0
  loc_68B1D1: LitVar_Missing var_D8
  loc_68B1D4: LitStr "Error en la unidad de disco"
  loc_68B1D7: ILdRf var_E0
  loc_68B1DA: ConcatStr
  loc_68B1DB: FStStrNoPop var_124
  loc_68B1DE: LitStr " y/o archivo a grabar. Chequee que la unidad de disco sea correcta y haya espacio o haya disckette en la unidad A y que el nombre especificado sea correcto (ej. "
  loc_68B1E1: ConcatStr
  loc_68B1E2: PopTmpLdAdStr
  loc_68B1E6: LitI4 &H1F
  loc_68B1EB: PopTmpLdAdStr var_12C
  loc_68B1EE: LitI2_Byte &H1B
  loc_68B1F0: PopTmpLdAd2 var_126
  loc_68B1F3: ImpAdLdRf MemVar_74C7D0
  loc_68B1F6: NewIfNullPr clsMsg
  loc_68B1F9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68B1FE: FLdRfVar var_220
  loc_68B201: ImpAdCallFPR4  = Now
  loc_68B206: FLdRfVar var_220
  loc_68B209: FLdRfVar var_240
  loc_68B20C: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_68B211: LitI4 1
  loc_68B216: LitI4 1
  loc_68B21B: LitVarStr var_230, "00"
  loc_68B220: FStVarCopyObj var_260
  loc_68B223: FLdRfVar var_260
  loc_68B226: FLdRfVar var_240
  loc_68B229: ImpAdCallI2 Format$(, )
  loc_68B22E: FStStr var_36C
  loc_68B231: FLdRfVar var_280
  loc_68B234: ImpAdCallFPR4  = Now
  loc_68B239: FLdRfVar var_280
  loc_68B23C: FLdRfVar var_2A0
  loc_68B23F: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_68B244: LitI4 1
  loc_68B249: LitI4 1
  loc_68B24E: LitVarStr var_250, "00"
  loc_68B253: FStVarCopyObj var_2B0
  loc_68B256: FLdRfVar var_2B0
  loc_68B259: FLdRfVar var_2A0
  loc_68B25C: ImpAdCallI2 Format$(, )
  loc_68B261: FStStr var_370
  loc_68B264: FLdRfVar var_2CC
  loc_68B267: ImpAdCallFPR4  = Now
  loc_68B26C: FLdRfVar var_2CC
  loc_68B26F: FLdRfVar var_2DC
  loc_68B272: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_68B277: LitI4 1
  loc_68B27C: LitI4 1
  loc_68B281: LitVarStr var_270, "00"
  loc_68B286: FStVarCopyObj var_2EC
  loc_68B289: FLdRfVar var_2EC
  loc_68B28C: FLdRfVar var_2DC
  loc_68B28F: ImpAdCallI2 Format$(, )
  loc_68B294: FStStr var_374
  loc_68B297: LitVar_Missing var_368
  loc_68B29A: LitVar_Missing var_348
  loc_68B29D: LitVar_Missing var_328
  loc_68B2A0: LitI4 &H45
  loc_68B2A5: ILdRf var_288
  loc_68B2A8: FLdZeroAd var_36C
  loc_68B2AB: FStStrNoPop var_28C
  loc_68B2AE: ConcatStr
  loc_68B2AF: FStStrNoPop var_290
  loc_68B2B2: LitStr "-"
  loc_68B2B5: ConcatStr
  loc_68B2B6: FStStrNoPop var_2B4
  loc_68B2B9: FLdZeroAd var_370
  loc_68B2BC: FStStrNoPop var_2B8
  loc_68B2BF: ConcatStr
  loc_68B2C0: FStStrNoPop var_2BC
  loc_68B2C3: LitStr "-"
  loc_68B2C6: ConcatStr
  loc_68B2C7: FStStrNoPop var_2F0
  loc_68B2CA: FLdZeroAd var_374
  loc_68B2CD: FStStrNoPop var_2F4
  loc_68B2D0: ConcatStr
  loc_68B2D1: FStStrNoPop var_2F8
  loc_68B2D4: LitStr ")."
  loc_68B2D7: ConcatStr
  loc_68B2D8: CVarStr var_308
  loc_68B2DB: ImpAdCallI2 MsgBox(, , , , )
  loc_68B2E0: LitI4 4
  loc_68B2E5: EqI4
  loc_68B2E6: FFreeStr var_E0 = "": var_124 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_36C = "": var_370 = ""
  loc_68B307: FFree1Ad var_DC
  loc_68B30A: FFreeVar var_D8 = "": var_F0 = "": var_100 = "": var_120 = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2B0 = "": var_2CC = "": var_2DC = "": var_2EC = "": var_308 = "": var_328 = "": var_348 = ""
  loc_68B33B: BranchF loc_68B347
  loc_68B340: Resume
  loc_68B344: Branch loc_68B353
  loc_68B34B: Call cmdSave_UnknownEvent_8()
  loc_68B352: ExitProcHresult
  loc_68B359: ExitProcHresult
  loc_68B35A: FStAdFunc var_2BA8
End Function

Private Function Proc_133_39_5E20C8(arg_C) '5E20C8
  'Data Table: 45294C
  loc_5E206C: LitI2_Byte 0
  loc_5E206E: CUI1I2
  loc_5E2070: FLdRfVar var_86
  loc_5E2073: LitI2_Byte 6
  loc_5E2075: CUI1I2
  loc_5E2077: ForUI1 var_8A
  loc_5E207D: ILdI2 arg_C
  loc_5E2080: FLdRfVar var_94
  loc_5E2083: FLdUI1
  loc_5E2087: CI2UI1
  loc_5E2089: FLdPrThis
  loc_5E208A: VCallAd Control_ID_Label2
  loc_5E208D: FStAdFunc var_90
  loc_5E2090: FLdPr var_90
  loc_5E2093: Set from_stack_2 = Me(from_stack_1)
  loc_5E2098: FLdPr var_94
  loc_5E209B: Me.Visible = from_stack_1b
  loc_5E20A0: FFreeAd var_90 = ""
  loc_5E20A7: FLdRfVar var_86
  loc_5E20AA: NextUI1
  loc_5E20B0: ILdI2 arg_C
  loc_5E20B3: FLdPrThis
  loc_5E20B4: VCallAd Control_ID_labelsurtidor2
  loc_5E20B7: FStAdFunc var_90
  loc_5E20BA: FLdPr var_90
  loc_5E20BD: Me.Visible = from_stack_1b
  loc_5E20C2: FFree1Ad var_90
  loc_5E20C5: ExitProcHresult
  loc_5E20C6: DOC
End Function

Private Function Proc_133_40_5E957C(arg_C) '5E957C
  'Data Table: 45294C
  loc_5E94FC: LitI2_Byte 0
  loc_5E94FE: CUI1I2
  loc_5E9500: FLdRfVar var_86
  loc_5E9503: LitI2_Byte 6
  loc_5E9505: CUI1I2
  loc_5E9507: ForUI1 var_8A
  loc_5E950D: ILdI2 arg_C
  loc_5E9510: CVarI2 var_A8
  loc_5E9513: PopAdLdVar
  loc_5E9514: FLdRfVar var_98
  loc_5E9517: FLdRfVar var_94
  loc_5E951A: FLdUI1
  loc_5E951E: CI2UI1
  loc_5E9520: FLdPrThis
  loc_5E9521: VCallAd Control_ID_Label2
  loc_5E9524: FStAdFunc var_90
  loc_5E9527: FLdPr var_90
  loc_5E952A: Set from_stack_2 = Me(from_stack_1)
  loc_5E952F: FLdPr var_94
  loc_5E9532:  = Me.Font
  loc_5E9537: FLdPr var_98
  loc_5E953A: LateIdSt
  loc_5E953F: FFreeAd var_90 = "": var_94 = ""
  loc_5E9548: FLdRfVar var_86
  loc_5E954B: NextUI1
  loc_5E9551: ILdI2 arg_C
  loc_5E9554: CVarI2 var_A8
  loc_5E9557: PopAdLdVar
  loc_5E9558: FLdRfVar var_94
  loc_5E955B: FLdPrThis
  loc_5E955C: VCallAd Control_ID_labelsurtidor2
  loc_5E955F: FStAdFunc var_90
  loc_5E9562: FLdPr var_90
  loc_5E9565:  = Me.Font
  loc_5E956A: FLdPr var_94
  loc_5E956D: LateIdSt
  loc_5E9572: FFreeAd var_90 = ""
  loc_5E9579: ExitProcHresult
  loc_5E957A: MemLdPr global_-11009
End Function

Private Function Proc_133_41_6522F4() '6522F4
  'Data Table: 45294C
  loc_652028: FLdRfVar var_94
  loc_65202B: FLdRfVar var_90
  loc_65202E: LitI2_Byte 2
  loc_652030: FLdPrThis
  loc_652031: VCallAd Control_ID_Label2
  loc_652034: FStAdFunc var_8C
  loc_652037: FLdPr var_8C
  loc_65203A: Set from_stack_2 = Me(from_stack_1)
  loc_65203F: FLdPr var_90
  loc_652042:  = Me.Left
  loc_652047: FLdFPR4 var_94
  loc_65204A: LitI2 200
  loc_65204D: CR8I2
  loc_65204E: SubR4
  loc_65204F: PopFPR4
  loc_652050: FLdRfVar var_9C
  loc_652053: LitI2_Byte 2
  loc_652055: FLdPrThis
  loc_652056: VCallAd Control_ID_Label2
  loc_652059: FStAdFunc var_98
  loc_65205C: FLdPr var_98
  loc_65205F: Set from_stack_2 = Me(from_stack_1)
  loc_652064: FLdPr var_9C
  loc_652067: Me.Left = from_stack_1s
  loc_65206C: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_652077: FLdRfVar var_A0
  loc_65207A: FLdRfVar var_9C
  loc_65207D: LitI2_Byte 2
  loc_65207F: FLdPrThis
  loc_652080: VCallAd Control_ID_Label2
  loc_652083: FStAdFunc var_98
  loc_652086: FLdPr var_98
  loc_652089: Set from_stack_2 = Me(from_stack_1)
  loc_65208E: FLdPr var_9C
  loc_652091:  = Me.Width
  loc_652096: FLdRfVar var_94
  loc_652099: FLdRfVar var_90
  loc_65209C: LitI2_Byte 2
  loc_65209E: FLdPrThis
  loc_65209F: VCallAd Control_ID_Label2
  loc_6520A2: FStAdFunc var_8C
  loc_6520A5: FLdPr var_8C
  loc_6520A8: Set from_stack_2 = Me(from_stack_1)
  loc_6520AD: FLdPr var_90
  loc_6520B0:  = Me.Left
  loc_6520B5: FLdFPR4 var_94
  loc_6520B8: FLdFPR4 var_A0
  loc_6520BB: AddR8
  loc_6520BC: LitI2_Byte &HA
  loc_6520BE: CR8I2
  loc_6520BF: AddR8
  loc_6520C0: PopFPR4
  loc_6520C1: FLdRfVar var_A8
  loc_6520C4: LitI2_Byte 1
  loc_6520C6: FLdPrThis
  loc_6520C7: VCallAd Control_ID_Label2
  loc_6520CA: FStAdFunc var_A4
  loc_6520CD: FLdPr var_A4
  loc_6520D0: Set from_stack_2 = Me(from_stack_1)
  loc_6520D5: FLdPr var_A8
  loc_6520D8: Me.Left = from_stack_1s
  loc_6520DD: FFreeAd var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A4 = ""
  loc_6520EC: FLdRfVar var_A0
  loc_6520EF: FLdRfVar var_9C
  loc_6520F2: LitI2_Byte 1
  loc_6520F4: FLdPrThis
  loc_6520F5: VCallAd Control_ID_Label2
  loc_6520F8: FStAdFunc var_98
  loc_6520FB: FLdPr var_98
  loc_6520FE: Set from_stack_2 = Me(from_stack_1)
  loc_652103: FLdPr var_9C
  loc_652106:  = Me.Width
  loc_65210B: FLdRfVar var_94
  loc_65210E: FLdRfVar var_90
  loc_652111: LitI2_Byte 1
  loc_652113: FLdPrThis
  loc_652114: VCallAd Control_ID_Label2
  loc_652117: FStAdFunc var_8C
  loc_65211A: FLdPr var_8C
  loc_65211D: Set from_stack_2 = Me(from_stack_1)
  loc_652122: FLdPr var_90
  loc_652125:  = Me.Left
  loc_65212A: FLdFPR4 var_94
  loc_65212D: FLdFPR4 var_A0
  loc_652130: AddR8
  loc_652131: LitI2_Byte &HA
  loc_652133: CR8I2
  loc_652134: AddR8
  loc_652135: PopFPR4
  loc_652136: FLdRfVar var_A8
  loc_652139: LitI2_Byte 3
  loc_65213B: FLdPrThis
  loc_65213C: VCallAd Control_ID_Label2
  loc_65213F: FStAdFunc var_A4
  loc_652142: FLdPr var_A4
  loc_652145: Set from_stack_2 = Me(from_stack_1)
  loc_65214A: FLdPr var_A8
  loc_65214D: Me.Left = from_stack_1s
  loc_652152: FFreeAd var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A4 = ""
  loc_652161: FLdRfVar var_A0
  loc_652164: FLdRfVar var_9C
  loc_652167: LitI2_Byte 3
  loc_652169: FLdPrThis
  loc_65216A: VCallAd Control_ID_Label2
  loc_65216D: FStAdFunc var_98
  loc_652170: FLdPr var_98
  loc_652173: Set from_stack_2 = Me(from_stack_1)
  loc_652178: FLdPr var_9C
  loc_65217B:  = Me.Width
  loc_652180: FLdRfVar var_94
  loc_652183: FLdRfVar var_90
  loc_652186: LitI2_Byte 3
  loc_652188: FLdPrThis
  loc_652189: VCallAd Control_ID_Label2
  loc_65218C: FStAdFunc var_8C
  loc_65218F: FLdPr var_8C
  loc_652192: Set from_stack_2 = Me(from_stack_1)
  loc_652197: FLdPr var_90
  loc_65219A:  = Me.Left
  loc_65219F: FLdFPR4 var_94
  loc_6521A2: FLdFPR4 var_A0
  loc_6521A5: AddR8
  loc_6521A6: LitI2 400
  loc_6521A9: CR8I2
  loc_6521AA: AddR8
  loc_6521AB: PopFPR4
  loc_6521AC: FLdRfVar var_A8
  loc_6521AF: LitI2_Byte 4
  loc_6521B1: FLdPrThis
  loc_6521B2: VCallAd Control_ID_Label2
  loc_6521B5: FStAdFunc var_A4
  loc_6521B8: FLdPr var_A4
  loc_6521BB: Set from_stack_2 = Me(from_stack_1)
  loc_6521C0: FLdPr var_A8
  loc_6521C3: Me.Left = from_stack_1s
  loc_6521C8: FFreeAd var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A4 = ""
  loc_6521D7: FLdRfVar var_A0
  loc_6521DA: FLdRfVar var_9C
  loc_6521DD: LitI2_Byte 4
  loc_6521DF: FLdPrThis
  loc_6521E0: VCallAd Control_ID_Label2
  loc_6521E3: FStAdFunc var_98
  loc_6521E6: FLdPr var_98
  loc_6521E9: Set from_stack_2 = Me(from_stack_1)
  loc_6521EE: FLdPr var_9C
  loc_6521F1:  = Me.Width
  loc_6521F6: FLdRfVar var_94
  loc_6521F9: FLdRfVar var_90
  loc_6521FC: LitI2_Byte 4
  loc_6521FE: FLdPrThis
  loc_6521FF: VCallAd Control_ID_Label2
  loc_652202: FStAdFunc var_8C
  loc_652205: FLdPr var_8C
  loc_652208: Set from_stack_2 = Me(from_stack_1)
  loc_65220D: FLdPr var_90
  loc_652210:  = Me.Left
  loc_652215: FLdFPR4 var_94
  loc_652218: FLdFPR4 var_A0
  loc_65221B: AddR8
  loc_65221C: LitI2 300
  loc_65221F: CR8I2
  loc_652220: AddR8
  loc_652221: PopFPR4
  loc_652222: FLdRfVar var_A8
  loc_652225: LitI2_Byte 5
  loc_652227: FLdPrThis
  loc_652228: VCallAd Control_ID_Label2
  loc_65222B: FStAdFunc var_A4
  loc_65222E: FLdPr var_A4
  loc_652231: Set from_stack_2 = Me(from_stack_1)
  loc_652236: FLdPr var_A8
  loc_652239: Me.Left = from_stack_1s
  loc_65223E: FFreeAd var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A4 = ""
  loc_65224D: FLdRfVar var_A0
  loc_652250: FLdRfVar var_9C
  loc_652253: LitI2_Byte 5
  loc_652255: FLdPrThis
  loc_652256: VCallAd Control_ID_Label2
  loc_652259: FStAdFunc var_98
  loc_65225C: FLdPr var_98
  loc_65225F: Set from_stack_2 = Me(from_stack_1)
  loc_652264: FLdPr var_9C
  loc_652267:  = Me.Width
  loc_65226C: FLdRfVar var_94
  loc_65226F: FLdRfVar var_90
  loc_652272: LitI2_Byte 5
  loc_652274: FLdPrThis
  loc_652275: VCallAd Control_ID_Label2
  loc_652278: FStAdFunc var_8C
  loc_65227B: FLdPr var_8C
  loc_65227E: Set from_stack_2 = Me(from_stack_1)
  loc_652283: FLdPr var_90
  loc_652286:  = Me.Left
  loc_65228B: FLdFPR4 var_94
  loc_65228E: FLdFPR4 var_A0
  loc_652291: AddR8
  loc_652292: LitI2 300
  loc_652295: CR8I2
  loc_652296: AddR8
  loc_652297: PopFPR4
  loc_652298: FLdRfVar var_A8
  loc_65229B: LitI2_Byte 6
  loc_65229D: FLdPrThis
  loc_65229E: VCallAd Control_ID_Label2
  loc_6522A1: FStAdFunc var_A4
  loc_6522A4: FLdPr var_A4
  loc_6522A7: Set from_stack_2 = Me(from_stack_1)
  loc_6522AC: FLdPr var_A8
  loc_6522AF: Me.Left = from_stack_1s
  loc_6522B4: FFreeAd var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A4 = ""
  loc_6522C3: FLdRfVar var_94
  loc_6522C6: FLdPrThis
  loc_6522C7: VCallAd Control_ID_labelsurtidor2
  loc_6522CA: FStAdFunc var_8C
  loc_6522CD: FLdPr var_8C
  loc_6522D0:  = Me.Left
  loc_6522D5: FLdFPR4 var_94
  loc_6522D8: LitI2_Byte &H64
  loc_6522DA: CR8I2
  loc_6522DB: SubR4
  loc_6522DC: PopFPR4
  loc_6522DD: FLdPrThis
  loc_6522DE: VCallAd Control_ID_labelsurtidor2
  loc_6522E1: FStAdFunc var_90
  loc_6522E4: FLdPr var_90
  loc_6522E7: Me.Left = from_stack_1s
  loc_6522EC: FFreeAd var_8C = ""
  loc_6522F3: ExitProcHresult
End Function

Private Function Proc_133_42_731070(arg_C, arg_10) '731070
  'Data Table: 45294C
  loc_72E80C: OnErrorGoto loc_730FFA
  loc_72E80F: LitI2_Byte 0
  loc_72E811: FStI2 var_86
  loc_72E814: LitI2_Byte 0
  loc_72E816: FStI2 var_88
  loc_72E819: ILdI4 arg_C
  loc_72E81C: LitI4 2
  loc_72E821: EqI4
  loc_72E822: BranchF loc_72E864
  loc_72E825: FLdPr Me
  loc_72E828: MemLdI2 global_80
  loc_72E82B: LitI2_Byte 1
  loc_72E82D: GtI2
  loc_72E82E: FLdPrThis
  loc_72E82F: VCallAd Control_ID_cmdPrevio
  loc_72E832: FStAdFunc var_D0
  loc_72E835: FLdPr var_D0
  loc_72E838: Me.Enabled = from_stack_1b
  loc_72E83D: FFree1Ad var_D0
  loc_72E840: ImpAdLdI4 MemVar_74C73C
  loc_72E843: LitI2_Byte 1
  loc_72E845: FnUBound
  loc_72E847: FLdPr Me
  loc_72E84A: MemLdI2 global_80
  loc_72E84D: CI4UI1
  loc_72E84E: GtI4
  loc_72E84F: FLdPrThis
  loc_72E850: VCallAd Control_ID_cmdSiguiente
  loc_72E853: FStAdFunc var_D0
  loc_72E856: FLdPr var_D0
  loc_72E859: Me.Enabled = from_stack_1b
  loc_72E85E: FFree1Ad var_D0
  loc_72E861: Branch loc_72E870
  loc_72E864: ILdI4 arg_C
  loc_72E867: LitI4 0
  loc_72E86C: EqI4
  loc_72E86D: BranchF loc_72E870
  loc_72E870: LitStr ";"
  loc_72E873: LitI2_Byte 1
  loc_72E875: FLdPr Me
  loc_72E878: MemLdI2 global_80
  loc_72E87B: CI4UI1
  loc_72E87C: ImpAdLdI4 MemVar_74C73C
  loc_72E87F: AryLock
  loc_72E882: Ary1LdRf
  loc_72E883: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_72E888: FStStr var_D8
  loc_72E88B: AryUnlock
  loc_72E88E: LitStr ";"
  loc_72E891: LitI2_Byte 2
  loc_72E893: FLdPr Me
  loc_72E896: MemLdI2 global_80
  loc_72E899: CI4UI1
  loc_72E89A: ImpAdLdI4 MemVar_74C73C
  loc_72E89D: AryLock
  loc_72E8A0: Ary1LdRf
  loc_72E8A1: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_72E8A6: FStStr var_E0
  loc_72E8A9: AryUnlock
  loc_72E8AC: LitStr ";"
  loc_72E8AF: LitI2_Byte 3
  loc_72E8B1: FLdPr Me
  loc_72E8B4: MemLdI2 global_80
  loc_72E8B7: CI4UI1
  loc_72E8B8: ImpAdLdI4 MemVar_74C73C
  loc_72E8BB: AryLock
  loc_72E8BE: Ary1LdRf
  loc_72E8BF: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_72E8C4: FStStr var_E8
  loc_72E8C7: AryUnlock
  loc_72E8CA: LitStr ";"
  loc_72E8CD: LitI2_Byte 4
  loc_72E8CF: FLdPr Me
  loc_72E8D2: MemLdI2 global_80
  loc_72E8D5: CI4UI1
  loc_72E8D6: ImpAdLdI4 MemVar_74C73C
  loc_72E8D9: AryLock
  loc_72E8DC: Ary1LdRf
  loc_72E8DD: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_72E8E2: FStStr var_F0
  loc_72E8E5: AryUnlock
  loc_72E8E8: FLdRfVar var_100
  loc_72E8EB: FLdRfVar var_CC
  loc_72E8EE: FLdRfVar var_C8
  loc_72E8F1: ILdRf var_F0
  loc_72E8F4: ILdRf var_E8
  loc_72E8F7: LitStr "1"
  loc_72E8FA: EqStr
  loc_72E8FC: ILdRf var_E0
  loc_72E8FF: ILdRf var_D8
  loc_72E902: FLdRfVar var_D0
  loc_72E905: ImpAdLdRf MemVar_74C760
  loc_72E908: NewIfNullPr Formx
  loc_72E90B: from_stack_1v = Formx.global_4589716Get()
  loc_72E910: FLdPr var_D0
  loc_72E913: Formx.ScaleLeft = from_stack_1s
  loc_72E918: FLdRfVar var_100
  loc_72E91B: NotVar var_110
  loc_72E91F: CBoolVarNull
  loc_72E921: FFreeStr var_E8 = "": var_D8 = "": var_E0 = ""
  loc_72E92C: FFree1Ad var_D0
  loc_72E92F: FFree1Var var_100 = ""
  loc_72E932: BranchF loc_72E961
  loc_72E935: FLdRfVar var_100
  loc_72E938: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_72E93D: FLdRfVar var_100
  loc_72E940: CBoolVarNull
  loc_72E942: FFree1Var var_100 = ""
  loc_72E945: BranchF loc_72E95E
  loc_72E948: ILdRf Me
  loc_72E94B: FStAdNoPop
  loc_72E94F: ImpAdLdRf MemVar_7520D4
  loc_72E952: NewIfNullPr Global
  loc_72E955: Global.Unload from_stack_1
  loc_72E95A: FFree1Ad var_D0
  loc_72E95D: ExitProcHresult
  loc_72E95E: Branch loc_72E870
  loc_72E961: FLdRfVar var_100
  loc_72E964: FLdRfVar var_8C
  loc_72E967: ILdRf var_C8
  loc_72E96A: FLdRfVar var_D0
  loc_72E96D: ImpAdLdRf MemVar_74C760
  loc_72E970: NewIfNullPr Formx
  loc_72E973: from_stack_1v = Formx.global_4589716Get()
  loc_72E978: FLdPr var_D0
  loc_72E97B:  = Formx.ScaleTop
  loc_72E980: FLdRfVar var_100
  loc_72E983: NotVar var_110
  loc_72E987: CBoolVarNull
  loc_72E989: FFree1Ad var_D0
  loc_72E98C: FFree1Var var_100 = ""
  loc_72E98F: BranchF loc_72E9BE
  loc_72E992: FLdRfVar var_100
  loc_72E995: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_72E99A: FLdRfVar var_100
  loc_72E99D: CBoolVarNull
  loc_72E99F: FFree1Var var_100 = ""
  loc_72E9A2: BranchF loc_72E9BB
  loc_72E9A5: ILdRf Me
  loc_72E9A8: FStAdNoPop
  loc_72E9AC: ImpAdLdRf MemVar_7520D4
  loc_72E9AF: NewIfNullPr Global
  loc_72E9B2: Global.Unload from_stack_1
  loc_72E9B7: FFree1Ad var_D0
  loc_72E9BA: ExitProcHresult
  loc_72E9BB: Branch loc_72E961
  loc_72E9BE: FLdPrThis
  loc_72E9BF: VCallAd Control_ID_List1
  loc_72E9C2: FStAdFunc var_D0
  loc_72E9C5: FLdPr var_D0
  loc_72E9C8: Me.Clear
  loc_72E9CD: FFree1Ad var_D0
  loc_72E9D0: LitI2_Byte 0
  loc_72E9D2: CR8I2
  loc_72E9D3: FStFPR4 var_C0
  loc_72E9D6: LitI2_Byte 0
  loc_72E9D8: CR8I2
  loc_72E9D9: FStFPR4 var_C4
  loc_72E9DC: LitI4 0
  loc_72E9E1: FStR4 var_90
  loc_72E9E4: ImpAdLdUI1
  loc_72E9E8: CI2UI1
  loc_72E9EA: LitI2_Byte 1
  loc_72E9EC: EqI2
  loc_72E9ED: BranchF loc_72E9FB
  loc_72E9F0: LitI2_Byte &H30
  loc_72E9F2: CUI1I2
  loc_72E9F4: FStUI1 var_92
  loc_72E9F8: Branch loc_72EA03
  loc_72E9FB: LitI2_Byte &H38
  loc_72E9FD: CUI1I2
  loc_72E9FF: FStUI1 var_92
  loc_72EA03: from_stack_1v = Proc_133_31_680668()
  loc_72EA08: ILdRf var_90
  loc_72EA0B: FLdUI1
  loc_72EA0F: CI4UI1
  loc_72EA10: AddI4
  loc_72EA11: ILdRf var_8C
  loc_72EA14: FnLenStr
  loc_72EA15: LeI4
  loc_72EA16: BranchF loc_72F58A
  loc_72EA19: LitVarI2 var_100, 3
  loc_72EA1E: ILdRf var_90
  loc_72EA21: FLdUI1
  loc_72EA25: CI4UI1
  loc_72EA26: AddI4
  loc_72EA27: LitI4 3
  loc_72EA2C: SubI4
  loc_72EA2D: FLdRfVar var_8C
  loc_72EA30: CVarRef
  loc_72EA35: FLdRfVar var_110
  loc_72EA38: ImpAdCallFPR4  = Mid(, , )
  loc_72EA3D: FLdRfVar var_110
  loc_72EA40: CStrVarVal var_D8
  loc_72EA44: ImpAdCallFPR4 push Val()
  loc_72EA49: CI2R8
  loc_72EA4A: FLdI2 arg_1C
  loc_72EA4D: EqI2
  loc_72EA4E: FLdI2 arg_1C
  loc_72EA51: LitI2_Byte 3
  loc_72EA53: EqI2
  loc_72EA54: OrI4
  loc_72EA55: FFree1Str var_D8
  loc_72EA58: FFreeVar var_100 = ""
  loc_72EA5F: BranchF loc_72F587
  loc_72EA62: LitVarI2 var_100, 2
  loc_72EA67: ILdRf var_90
  loc_72EA6A: LitI4 9
  loc_72EA6F: AddI4
  loc_72EA70: FLdRfVar var_8C
  loc_72EA73: CVarRef
  loc_72EA78: FLdRfVar var_110
  loc_72EA7B: ImpAdCallFPR4  = Mid(, , )
  loc_72EA80: FLdRfVar var_110
  loc_72EA83: LitVarStr var_140, "/"
  loc_72EA88: ConcatVar var_150
  loc_72EA8C: LitVarI2 var_180, 2
  loc_72EA91: ILdRf var_90
  loc_72EA94: LitI4 6
  loc_72EA99: AddI4
  loc_72EA9A: FLdRfVar var_8C
  loc_72EA9D: CVarRef
  loc_72EAA2: FLdRfVar var_190
  loc_72EAA5: ImpAdCallFPR4  = Mid(, , )
  loc_72EAAA: FLdRfVar var_190
  loc_72EAAD: ConcatVar var_1A0
  loc_72EAB1: LitVarStr var_1B0, "/"
  loc_72EAB6: ConcatVar var_1C0
  loc_72EABA: LitVarI2 var_1F0, 4
  loc_72EABF: ILdRf var_90
  loc_72EAC2: LitI4 1
  loc_72EAC7: AddI4
  loc_72EAC8: FLdRfVar var_8C
  loc_72EACB: CVarRef
  loc_72EAD0: FLdRfVar var_200
  loc_72EAD3: ImpAdCallFPR4  = Mid(, , )
  loc_72EAD8: FLdRfVar var_200
  loc_72EADB: ConcatVar var_210
  loc_72EADF: CStrVarTmp
  loc_72EAE0: FStStr var_98
  loc_72EAE3: FFreeVar var_100 = "": var_110 = "": var_180 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1F0 = "": var_1C0 = "": var_200 = ""
  loc_72EAFA: LitVarI2 var_100, 8
  loc_72EAFF: ILdRf var_90
  loc_72EB02: LitI4 &HB
  loc_72EB07: AddI4
  loc_72EB08: FLdRfVar var_8C
  loc_72EB0B: CVarRef
  loc_72EB10: FLdRfVar var_110
  loc_72EB13: ImpAdCallFPR4  = Mid(, , )
  loc_72EB18: FLdRfVar var_110
  loc_72EB1B: CStrVarTmp
  loc_72EB1C: FStStr var_9C
  loc_72EB1F: FFreeVar var_100 = ""
  loc_72EB26: LitVarI2 var_100, 2
  loc_72EB2B: ILdRf var_90
  loc_72EB2E: LitI4 &H13
  loc_72EB33: AddI4
  loc_72EB34: FLdRfVar var_8C
  loc_72EB37: CVarRef
  loc_72EB3C: FLdRfVar var_110
  loc_72EB3F: ImpAdCallFPR4  = Mid(, , )
  loc_72EB44: FLdRfVar var_110
  loc_72EB47: CStrVarTmp
  loc_72EB48: FStStr var_A0
  loc_72EB4B: FFreeVar var_100 = ""
  loc_72EB52: LitVarI2 var_100, 1
  loc_72EB57: ILdRf var_90
  loc_72EB5A: LitI4 &H15
  loc_72EB5F: AddI4
  loc_72EB60: FLdRfVar var_8C
  loc_72EB63: CVarRef
  loc_72EB68: FLdRfVar var_110
  loc_72EB6B: ImpAdCallFPR4  = Mid(, , )
  loc_72EB70: FLdRfVar var_110
  loc_72EB73: FLdRfVar var_150
  loc_72EB76: ImpAdCallFPR4  = Ucase()
  loc_72EB7B: FLdRfVar var_150
  loc_72EB7E: CStrVarTmp
  loc_72EB7F: FStStr var_B8
  loc_72EB82: FFreeVar var_100 = "": var_110 = ""
  loc_72EB8B: LitVarI2 var_100, 2
  loc_72EB90: ILdRf var_90
  loc_72EB93: LitI4 &H16
  loc_72EB98: AddI4
  loc_72EB99: FLdRfVar var_8C
  loc_72EB9C: CVarRef
  loc_72EBA1: FLdRfVar var_110
  loc_72EBA4: ImpAdCallFPR4  = Mid(, , )
  loc_72EBA9: FLdRfVar var_110
  loc_72EBAC: CStrVarVal var_D8
  loc_72EBB0: ImpAdCallFPR4 push Val()
  loc_72EBB5: FStFPR8 var_21C
  loc_72EBB8: FLdRfVar var_E0
  loc_72EBBB: FLdFPR8 var_21C
  loc_72EBBE: CI2R8
  loc_72EBBF: ImpAdLdRf MemVar_74A220
  loc_72EBC2: NewIfNullPr clsProducts
  loc_72EBCA: LitI4 &HE
  loc_72EBCF: FLdZeroAd var_E0
  loc_72EBD2: CVarStr var_150
  loc_72EBD5: FLdRfVar var_180
  loc_72EBD8: ImpAdCallFPR4  = Left(, )
  loc_72EBDD: LitI2_Byte &HFF
  loc_72EBDF: PopTmpLdAd2 var_214
  loc_72EBE2: LitI2_Byte &HF
  loc_72EBE4: PopTmpLdAd2 var_212
  loc_72EBE7: LitStr " "
  loc_72EBEA: FStStrCopy var_F0
  loc_72EBED: FLdRfVar var_F0
  loc_72EBF0: FLdRfVar var_180
  loc_72EBF3: CStrVarTmp
  loc_72EBF4: PopTmpLdAdStr
  loc_72EBF8: ImpAdCallI2 Proc_6_4_6134A8(, , , )
  loc_72EBFD: FStStr var_AC
  loc_72EC00: FFreeStr var_D8 = "": var_E8 = ""
  loc_72EC09: FFreeVar var_100 = "": var_110 = "": var_150 = ""
  loc_72EC14: LitVarI2 var_100, 2
  loc_72EC19: ILdRf var_90
  loc_72EC1C: LitI4 &H2E
  loc_72EC21: AddI4
  loc_72EC22: FLdRfVar var_8C
  loc_72EC25: CVarRef
  loc_72EC2A: FLdRfVar var_110
  loc_72EC2D: ImpAdCallFPR4  = Mid(, , )
  loc_72EC32: FLdRfVar var_110
  loc_72EC35: CStrVarVal var_D8
  loc_72EC39: ImpAdCallFPR4 push Val()
  loc_72EC3E: CI2R8
  loc_72EC3F: PopTmpLdAd2 var_212
  loc_72EC42: ImpAdCallI2 Proc_158_12_6C96C0()
  loc_72EC47: FStStr var_E8
  loc_72EC4A: LitI4 &H14
  loc_72EC4F: FLdZeroAd var_E8
  loc_72EC52: FStStrNoPop var_E0
  loc_72EC55: ImpAdCallI2 Left$(, )
  loc_72EC5A: FStStr var_F0
  loc_72EC5D: LitI4 1
  loc_72EC62: LitI4 1
  loc_72EC67: LitVarStr var_140, "!@@@@@@@@@@@@@@@@@@@@"
  loc_72EC6C: FStVarCopyObj var_180
  loc_72EC6F: FLdRfVar var_180
  loc_72EC72: FLdZeroAd var_F0
  loc_72EC75: CVarStr var_150
  loc_72EC78: ImpAdCallI2 Format$(, )
  loc_72EC7D: FStStr var_B0
  loc_72EC80: FFreeStr var_D8 = "": var_E0 = "": var_E8 = ""
  loc_72EC8B: FFreeVar var_100 = "": var_110 = "": var_150 = ""
  loc_72EC96: LitVarI2 var_100, 8
  loc_72EC9B: ILdRf var_90
  loc_72EC9E: LitI4 &H18
  loc_72ECA3: AddI4
  loc_72ECA4: FLdRfVar var_8C
  loc_72ECA7: CVarRef
  loc_72ECAC: FLdRfVar var_110
  loc_72ECAF: ImpAdCallFPR4  = Mid(, , )
  loc_72ECB4: FLdRfVar var_E0
  loc_72ECB7: LitI2_Byte 0
  loc_72ECB9: PopTmpLdAd2 var_212
  loc_72ECBC: FLdRfVar var_110
  loc_72ECBF: CStrVarTmp
  loc_72ECC0: PopTmpLdAdStr
  loc_72ECC4: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_72ECC9: FLdZeroAd var_E0
  loc_72ECCC: FStStr var_A4
  loc_72ECCF: FFree1Str var_D8
  loc_72ECD2: FFreeVar var_100 = ""
  loc_72ECD9: LitVarI2 var_100, 8
  loc_72ECDE: ILdRf var_90
  loc_72ECE1: LitI4 &H20
  loc_72ECE6: AddI4
  loc_72ECE7: FLdRfVar var_8C
  loc_72ECEA: CVarRef
  loc_72ECEF: FLdRfVar var_110
  loc_72ECF2: ImpAdCallFPR4  = Mid(, , )
  loc_72ECF7: FLdRfVar var_110
  loc_72ECFA: CStrVarVal var_D8
  loc_72ECFE: ImpAdCallFPR4 push Val()
  loc_72ED03: FStFPR8 var_21C
  loc_72ED06: LitI4 1
  loc_72ED0B: LitI4 1
  loc_72ED10: LitVarStr var_160, "#######0.00"
  loc_72ED15: FStVarCopyObj var_180
  loc_72ED18: FLdRfVar var_180
  loc_72ED1B: FLdFPR8 var_21C
  loc_72ED1E: LitI2_Byte &H64
  loc_72ED20: CR8I2
  loc_72ED21: DivR8
  loc_72ED22: CVarR8
  loc_72ED26: ImpAdCallI2 Format$(, )
  loc_72ED2B: FStStr var_E0
  loc_72ED2E: LitI4 1
  loc_72ED33: LitI4 1
  loc_72ED38: LitVarStr var_170, "@@@@@@@@@@@"
  loc_72ED3D: FStVarCopyObj var_1A0
  loc_72ED40: FLdRfVar var_1A0
  loc_72ED43: FLdZeroAd var_E0
  loc_72ED46: CVarStr var_190
  loc_72ED49: ImpAdCallI2 Format$(, )
  loc_72ED4E: FStStr var_A8
  loc_72ED51: FFreeStr var_D8 = ""
  loc_72ED58: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = ""
  loc_72ED67: LitVarI2 var_100, 6
  loc_72ED6C: ILdRf var_90
  loc_72ED6F: LitI4 &H28
  loc_72ED74: AddI4
  loc_72ED75: FLdRfVar var_8C
  loc_72ED78: CVarRef
  loc_72ED7D: FLdRfVar var_110
  loc_72ED80: ImpAdCallFPR4  = Mid(, , )
  loc_72ED85: FLdRfVar var_E0
  loc_72ED88: LitI2_Byte &HFF
  loc_72ED8A: PopTmpLdAd2 var_212
  loc_72ED8D: FLdRfVar var_110
  loc_72ED90: CStrVarTmp
  loc_72ED91: PopTmpLdAdStr
  loc_72ED95: from_stack_3v = CalculoPrice(from_stack_1v, from_stack_2v)
  loc_72ED9A: FLdZeroAd var_E0
  loc_72ED9D: FStStr var_B4
  loc_72EDA0: FFree1Str var_D8
  loc_72EDA3: FFreeVar var_100 = ""
  loc_72EDAA: ImpAdLdUI1
  loc_72EDAE: CI2UI1
  loc_72EDB0: LitI2_Byte 1
  loc_72EDB2: NeI2
  loc_72EDB3: BranchF loc_72EE29
  loc_72EDB6: LitVarI2 var_100, 5
  loc_72EDBB: ILdRf var_90
  loc_72EDBE: FLdUI1
  loc_72EDC2: CI4UI1
  loc_72EDC3: AddI4
  loc_72EDC4: LitI4 8
  loc_72EDC9: SubI4
  loc_72EDCA: FLdRfVar var_8C
  loc_72EDCD: CVarRef
  loc_72EDD2: FLdRfVar var_110
  loc_72EDD5: ImpAdCallFPR4  = Mid(, , )
  loc_72EDDA: FLdRfVar var_110
  loc_72EDDD: CStrVarVal var_D8
  loc_72EDE1: ImpAdCallFPR4 push Val()
  loc_72EDE6: FStFPR8 var_21C
  loc_72EDE9: LitI4 1
  loc_72EDEE: LitI4 1
  loc_72EDF3: LitVarStr var_160, "0.0000"
  loc_72EDF8: FStVarCopyObj var_180
  loc_72EDFB: FLdRfVar var_180
  loc_72EDFE: FLdFPR8 var_21C
  loc_72EE01: LitI2 10000
  loc_72EE04: CR8I2
  loc_72EE05: DivR8
  loc_72EE06: CVarR8
  loc_72EE0A: FLdRfVar var_190
  loc_72EE0D: ImpAdCallFPR4  = Format(, )
  loc_72EE12: FLdRfVar var_190
  loc_72EE15: CStrVarTmp
  loc_72EE16: FStStr var_BC
  loc_72EE19: FFree1Str var_D8
  loc_72EE1C: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = ""
  loc_72EE29: FLdFPR4 var_C0
  loc_72EE2C: ILdRf var_A4
  loc_72EE2F: CR8Str
  loc_72EE31: AddR8
  loc_72EE32: FStFPR4 var_C0
  loc_72EE35: FLdFPR4 var_C4
  loc_72EE38: ILdRf var_A8
  loc_72EE3B: CR8Str
  loc_72EE3D: AddR8
  loc_72EE3E: FStFPR4 var_C4
  loc_72EE41: ILdI4 arg_C
  loc_72EE44: FStR4 var_220
  loc_72EE47: ILdRf var_220
  loc_72EE4A: LitI4 0
  loc_72EE4F: EqI4
  loc_72EE50: BranchF loc_72EF7A
  loc_72EE53: FLdRfVar var_212
  loc_72EE56: FLdPrThis
  loc_72EE57: VCallAd Control_ID_chkFormatCem37
  loc_72EE5A: FStAdFunc var_D0
  loc_72EE5D: FLdPr var_D0
  loc_72EE60:  = Me.Value
  loc_72EE65: FLdI2 var_212
  loc_72EE68: LitI2_Byte 0
  loc_72EE6A: EqI2
  loc_72EE6B: FFree1Ad var_D0
  loc_72EE6E: BranchF loc_72EEEA
  loc_72EE71: ILdRf var_B4
  loc_72EE74: LitStr ";"
  loc_72EE77: ILdRf var_A8
  loc_72EE7A: LitStr ";"
  loc_72EE7D: ILdRf var_A4
  loc_72EE80: LitStr ";"
  loc_72EE83: ILdRf var_B0
  loc_72EE86: LitStr ";"
  loc_72EE89: ILdRf var_AC
  loc_72EE8C: LitStr ";"
  loc_72EE8F: ILdRf var_B8
  loc_72EE92: ILdRf var_A0
  loc_72EE95: LitStr ";"
  loc_72EE98: ILdRf var_9C
  loc_72EE9B: LitStr ";"
  loc_72EE9E: ILdRf var_98
  loc_72EEA1: ILdI2 arg_10
  loc_72EEA4: PrintFile
  loc_72EEAA: FLdRfVar var_AC
  loc_72EEAD: CVarRef
  loc_72EEB2: FLdRfVar var_100
  loc_72EEB5: ImpAdCallFPR4  = Ucase()
  loc_72EEBA: FLdRfVar var_100
  loc_72EEBD: FLdRfVar var_110
  loc_72EEC0: ImpAdCallFPR4  = Trim()
  loc_72EEC5: FLdRfVar var_110
  loc_72EEC8: LitVarStr var_130, "GNC"
  loc_72EECD: HardType
  loc_72EECE: EqVarBool
  loc_72EED0: FFreeVar var_100 = ""
  loc_72EED7: BranchF loc_72EEE2
  loc_72EEDA: LitI2_Byte &HFF
  loc_72EEDC: FStI2 var_86
  loc_72EEDF: Branch loc_72EEE7
  loc_72EEE2: LitI2_Byte &HFF
  loc_72EEE4: FStI2 var_88
  loc_72EEE7: Branch loc_72EF77
  loc_72EEEA: ILdRf var_A0
  loc_72EEED: ImpAdCallFPR4 push Val()
  loc_72EEF2: FStFPR8 var_21C
  loc_72EEF5: ILdRf var_A4
  loc_72EEF8: ImpAdCallFPR4 push Val()
  loc_72EEFD: FStFPR8 var_228
  loc_72EF00: ILdRf var_A8
  loc_72EF03: ImpAdCallFPR4 push Val()
  loc_72EF08: FStFPR8 var_230
  loc_72EF0B: ILdRf var_B4
  loc_72EF0E: ImpAdCallFPR4 push Val()
  loc_72EF13: FStFPR8 var_238
  loc_72EF16: FLdR8 var_238
  loc_72EF19: LitStr vbNullString
  loc_72EF1C: FLdR8 var_230
  loc_72EF1F: LitStr vbNullString
  loc_72EF22: FLdR8 var_228
  loc_72EF25: LitStr " "
  loc_72EF28: FLdR8 var_21C
  loc_72EF2B: LitStr vbNullString
  loc_72EF2E: ILdRf var_9C
  loc_72EF31: ILdI2 arg_10
  loc_72EF34: PrintFile
  loc_72EF3A: FLdRfVar var_AC
  loc_72EF3D: CVarRef
  loc_72EF42: FLdRfVar var_100
  loc_72EF45: ImpAdCallFPR4  = Ucase()
  loc_72EF4A: FLdRfVar var_100
  loc_72EF4D: FLdRfVar var_110
  loc_72EF50: ImpAdCallFPR4  = Trim()
  loc_72EF55: FLdRfVar var_110
  loc_72EF58: LitVarStr var_130, "GNC"
  loc_72EF5D: HardType
  loc_72EF5E: EqVarBool
  loc_72EF60: FFreeVar var_100 = ""
  loc_72EF67: BranchF loc_72EF72
  loc_72EF6A: LitI2_Byte &HFF
  loc_72EF6C: FStI2 var_86
  loc_72EF6F: Branch loc_72EF77
  loc_72EF72: LitI2_Byte &HFF
  loc_72EF74: FStI2 var_88
  loc_72EF77: Branch loc_72F57B
  loc_72EF7A: ILdRf var_220
  loc_72EF7D: LitI4 1
  loc_72EF82: EqI4
  loc_72EF83: BranchF loc_72F1FC
  loc_72EF86: LitVarI2 var_100, 3
  loc_72EF8B: ILdRf var_90
  loc_72EF8E: FLdUI1
  loc_72EF92: CI4UI1
  loc_72EF93: AddI4
  loc_72EF94: LitI4 3
  loc_72EF99: SubI4
  loc_72EF9A: FLdRfVar var_8C
  loc_72EF9D: CVarRef
  loc_72EFA2: FLdRfVar var_110
  loc_72EFA5: ImpAdCallFPR4  = Mid(, , )
  loc_72EFAA: FLdRfVar var_110
  loc_72EFAD: CStrVarVal var_D8
  loc_72EFB1: ImpAdCallFPR4 push Val()
  loc_72EFB6: FnIntR8
  loc_72EFB8: CR8R8
  loc_72EFB9: LitI2_Byte 2
  loc_72EFBB: CR8I2
  loc_72EFBC: EqR4
  loc_72EFBD: FFree1Str var_D8
  loc_72EFC0: FFreeVar var_100 = ""
  loc_72EFC7: BranchF loc_72F0F5
  loc_72EFCA: LitI4 1
  loc_72EFCF: FLdRfVar var_100
  loc_72EFD2: ImpAdCallFPR4  = Space()
  loc_72EFD7: LitI4 1
  loc_72EFDC: FLdRfVar var_180
  loc_72EFDF: ImpAdCallFPR4  = Space()
  loc_72EFE4: LitI4 1
  loc_72EFE9: FLdRfVar var_1F0
  loc_72EFEC: ImpAdCallFPR4  = Space()
  loc_72EFF1: LitI4 6
  loc_72EFF6: FLdRfVar var_298
  loc_72EFF9: ImpAdCallFPR4  = Space()
  loc_72EFFE: FLdRfVar var_212
  loc_72F001: ILdRf arg_18
  loc_72F004: ILdRf var_98
  loc_72F007: CVarStr var_120
  loc_72F00A: FLdRfVar var_100
  loc_72F00D: ConcatVar var_110
  loc_72F011: ILdRf var_9C
  loc_72F014: CVarStr var_130
  loc_72F017: ConcatVar var_150
  loc_72F01B: FLdRfVar var_180
  loc_72F01E: ConcatVar var_190
  loc_72F022: ILdRf var_A0
  loc_72F025: CVarStr var_140
  loc_72F028: ConcatVar var_1A0
  loc_72F02C: ILdRf var_B8
  loc_72F02F: CVarStr var_160
  loc_72F032: ConcatVar var_1C0
  loc_72F036: FLdRfVar var_1F0
  loc_72F039: ConcatVar var_200
  loc_72F03D: ILdRf var_AC
  loc_72F040: CVarStr var_170
  loc_72F043: ConcatVar var_210
  loc_72F047: ILdRf var_B0
  loc_72F04A: CVarStr var_1B0
  loc_72F04D: ConcatVar var_248
  loc_72F051: ILdRf var_A4
  loc_72F054: CVarStr var_1D0
  loc_72F057: ConcatVar var_258
  loc_72F05B: ILdRf var_A8
  loc_72F05E: CVarStr var_1E0
  loc_72F061: ConcatVar var_268
  loc_72F065: ILdRf var_B4
  loc_72F068: CVarStr var_278
  loc_72F06B: ConcatVar var_288
  loc_72F06F: FLdRfVar var_298
  loc_72F072: ConcatVar var_2A8
  loc_72F076: ILdRf var_BC
  loc_72F079: CVarStr var_2B8
  loc_72F07C: ConcatVar var_2C8
  loc_72F080: CStrVarTmp
  loc_72F081: PopTmpLdAdStr
  loc_72F085: ILdPr
  loc_72F088:  = Me.ForeColor
  loc_72F08D: FFree1Str var_D8
  loc_72F090: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_248 = "": var_258 = "": var_268 = "": var_288 = "": var_298 = "": var_2A8 = ""
  loc_72F0B5: FLdRfVar var_AC
  loc_72F0B8: CVarRef
  loc_72F0BD: FLdRfVar var_100
  loc_72F0C0: ImpAdCallFPR4  = Ucase()
  loc_72F0C5: FLdRfVar var_100
  loc_72F0C8: FLdRfVar var_110
  loc_72F0CB: ImpAdCallFPR4  = Trim()
  loc_72F0D0: FLdRfVar var_110
  loc_72F0D3: LitVarStr var_130, "GNC"
  loc_72F0D8: HardType
  loc_72F0D9: EqVarBool
  loc_72F0DB: FFreeVar var_100 = ""
  loc_72F0E2: BranchF loc_72F0ED
  loc_72F0E5: LitI2_Byte &HFF
  loc_72F0E7: FStI2 var_86
  loc_72F0EA: Branch loc_72F0F2
  loc_72F0ED: LitI2_Byte &HFF
  loc_72F0EF: FStI2 var_88
  loc_72F0F2: Branch loc_72F1F9
  loc_72F0F5: LitI4 1
  loc_72F0FA: FLdRfVar var_100
  loc_72F0FD: ImpAdCallFPR4  = Space()
  loc_72F102: LitI4 1
  loc_72F107: FLdRfVar var_180
  loc_72F10A: ImpAdCallFPR4  = Space()
  loc_72F10F: LitI4 1
  loc_72F114: FLdRfVar var_1F0
  loc_72F117: ImpAdCallFPR4  = Space()
  loc_72F11C: FLdRfVar var_212
  loc_72F11F: ILdRf arg_18
  loc_72F122: ILdRf var_98
  loc_72F125: CVarStr var_120
  loc_72F128: FLdRfVar var_100
  loc_72F12B: ConcatVar var_110
  loc_72F12F: ILdRf var_9C
  loc_72F132: CVarStr var_130
  loc_72F135: ConcatVar var_150
  loc_72F139: FLdRfVar var_180
  loc_72F13C: ConcatVar var_190
  loc_72F140: ILdRf var_A0
  loc_72F143: CVarStr var_140
  loc_72F146: ConcatVar var_1A0
  loc_72F14A: ILdRf var_B8
  loc_72F14D: CVarStr var_160
  loc_72F150: ConcatVar var_1C0
  loc_72F154: FLdRfVar var_1F0
  loc_72F157: ConcatVar var_200
  loc_72F15B: ILdRf var_AC
  loc_72F15E: CVarStr var_170
  loc_72F161: ConcatVar var_210
  loc_72F165: ILdRf var_B0
  loc_72F168: CVarStr var_1B0
  loc_72F16B: ConcatVar var_248
  loc_72F16F: ILdRf var_A4
  loc_72F172: CVarStr var_1D0
  loc_72F175: ConcatVar var_258
  loc_72F179: ILdRf var_A8
  loc_72F17C: CVarStr var_1E0
  loc_72F17F: ConcatVar var_268
  loc_72F183: ILdRf var_B4
  loc_72F186: CVarStr var_278
  loc_72F189: ConcatVar var_288
  loc_72F18D: CStrVarTmp
  loc_72F18E: PopTmpLdAdStr
  loc_72F192: ILdPr
  loc_72F195:  = Me.ForeColor
  loc_72F19A: FFree1Str var_D8
  loc_72F19D: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_248 = "": var_258 = "": var_268 = ""
  loc_72F1BC: FLdRfVar var_AC
  loc_72F1BF: CVarRef
  loc_72F1C4: FLdRfVar var_100
  loc_72F1C7: ImpAdCallFPR4  = Ucase()
  loc_72F1CC: FLdRfVar var_100
  loc_72F1CF: FLdRfVar var_110
  loc_72F1D2: ImpAdCallFPR4  = Trim()
  loc_72F1D7: FLdRfVar var_110
  loc_72F1DA: LitVarStr var_130, "GNC"
  loc_72F1DF: HardType
  loc_72F1E0: EqVarBool
  loc_72F1E2: FFreeVar var_100 = ""
  loc_72F1E9: BranchF loc_72F1F4
  loc_72F1EC: LitI2_Byte &HFF
  loc_72F1EE: FStI2 var_86
  loc_72F1F1: Branch loc_72F1F9
  loc_72F1F4: LitI2_Byte &HFF
  loc_72F1F6: FStI2 var_88
  loc_72F1F9: Branch loc_72F57B
  loc_72F1FC: ILdRf var_220
  loc_72F1FF: LitI4 2
  loc_72F204: EqI4
  loc_72F205: BranchF loc_72F57B
  loc_72F208: FLdRfVar var_A8
  loc_72F20B: CVarRef
  loc_72F210: FLdRfVar var_100
  loc_72F213: ImpAdCallFPR4  = Trim()
  loc_72F218: FLdRfVar var_100
  loc_72F21B: FnLenVar var_110
  loc_72F21F: LitVarI2 var_130, 10
  loc_72F224: HardType
  loc_72F225: LtVarBool
  loc_72F227: FFree1Var var_100 = ""
  loc_72F22A: BranchF loc_72F252
  loc_72F22D: ILdRf var_A8
  loc_72F230: CVarStr var_120
  loc_72F233: LitI4 1
  loc_72F238: FLdRfVar var_100
  loc_72F23B: ImpAdCallFPR4  = Space()
  loc_72F240: FLdRfVar var_100
  loc_72F243: ConcatVar var_110
  loc_72F247: CStrVarTmp
  loc_72F248: FStStr var_A8
  loc_72F24B: FFreeVar var_100 = ""
  loc_72F252: LitVarI2 var_100, 3
  loc_72F257: ILdRf var_90
  loc_72F25A: FLdUI1
  loc_72F25E: CI4UI1
  loc_72F25F: AddI4
  loc_72F260: LitI4 3
  loc_72F265: SubI4
  loc_72F266: FLdRfVar var_8C
  loc_72F269: CVarRef
  loc_72F26E: FLdRfVar var_110
  loc_72F271: ImpAdCallFPR4  = Mid(, , )
  loc_72F276: FLdRfVar var_110
  loc_72F279: CStrVarVal var_D8
  loc_72F27D: ImpAdCallFPR4 push Val()
  loc_72F282: FnIntR8
  loc_72F284: CR8R8
  loc_72F285: LitI2_Byte 2
  loc_72F287: CR8I2
  loc_72F288: EqR4
  loc_72F289: FFree1Str var_D8
  loc_72F28C: FFreeVar var_100 = ""
  loc_72F293: BranchF loc_72F410
  loc_72F296: LitVar_Missing var_338
  loc_72F299: PopAdLdVar
  loc_72F29A: ILdRf var_98
  loc_72F29D: CVarStr var_120
  loc_72F2A0: LitI4 1
  loc_72F2A5: FLdRfVar var_100
  loc_72F2A8: ImpAdCallFPR4  = Space()
  loc_72F2AD: FLdRfVar var_100
  loc_72F2B0: ConcatVar var_110
  loc_72F2B4: ILdRf var_9C
  loc_72F2B7: CVarStr var_130
  loc_72F2BA: ConcatVar var_150
  loc_72F2BE: LitI4 1
  loc_72F2C3: FLdRfVar var_180
  loc_72F2C6: ImpAdCallFPR4  = Space()
  loc_72F2CB: FLdRfVar var_180
  loc_72F2CE: ConcatVar var_190
  loc_72F2D2: ILdRf var_A0
  loc_72F2D5: CVarStr var_140
  loc_72F2D8: ConcatVar var_1A0
  loc_72F2DC: ILdRf var_B8
  loc_72F2DF: CVarStr var_160
  loc_72F2E2: ConcatVar var_1C0
  loc_72F2E6: LitI4 1
  loc_72F2EB: FLdRfVar var_1F0
  loc_72F2EE: ImpAdCallFPR4  = Space()
  loc_72F2F3: FLdRfVar var_1F0
  loc_72F2F6: ConcatVar var_200
  loc_72F2FA: ILdRf var_AC
  loc_72F2FD: CVarStr var_170
  loc_72F300: ConcatVar var_210
  loc_72F304: LitI4 1
  loc_72F309: FLdRfVar var_248
  loc_72F30C: ImpAdCallFPR4  = Space()
  loc_72F311: FLdRfVar var_248
  loc_72F314: ConcatVar var_258
  loc_72F318: ILdRf var_B0
  loc_72F31B: CVarStr var_1B0
  loc_72F31E: ConcatVar var_268
  loc_72F322: LitI4 1
  loc_72F327: FLdRfVar var_288
  loc_72F32A: ImpAdCallFPR4  = Space()
  loc_72F32F: FLdRfVar var_288
  loc_72F332: ConcatVar var_298
  loc_72F336: ILdRf var_A4
  loc_72F339: CVarStr var_1D0
  loc_72F33C: ConcatVar var_2A8
  loc_72F340: ILdRf var_A8
  loc_72F343: CVarStr var_1E0
  loc_72F346: ConcatVar var_2C8
  loc_72F34A: LitI4 1
  loc_72F34F: FLdRfVar var_2D8
  loc_72F352: ImpAdCallFPR4  = Space()
  loc_72F357: FLdRfVar var_2D8
  loc_72F35A: ConcatVar var_2E8
  loc_72F35E: ILdRf var_B4
  loc_72F361: CVarStr var_278
  loc_72F364: ConcatVar var_2F8
  loc_72F368: LitI4 6
  loc_72F36D: FLdRfVar var_308
  loc_72F370: ImpAdCallFPR4  = Space()
  loc_72F375: FLdRfVar var_308
  loc_72F378: ConcatVar var_318
  loc_72F37C: ILdRf var_BC
  loc_72F37F: CVarStr var_2B8
  loc_72F382: ConcatVar var_328
  loc_72F386: CStrVarVal var_D8
  loc_72F38A: FLdPrThis
  loc_72F38B: VCallAd Control_ID_List1
  loc_72F38E: FStAdFunc var_D0
  loc_72F391: FLdPr var_D0
  loc_72F394: Me.AddItem from_stack_1, from_stack_2
  loc_72F399: FFree1Str var_D8
  loc_72F39C: FFree1Ad var_D0
  loc_72F39F: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_248 = "": var_258 = "": var_268 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_318 = ""
  loc_72F3D0: FLdRfVar var_AC
  loc_72F3D3: CVarRef
  loc_72F3D8: FLdRfVar var_100
  loc_72F3DB: ImpAdCallFPR4  = Ucase()
  loc_72F3E0: FLdRfVar var_100
  loc_72F3E3: FLdRfVar var_110
  loc_72F3E6: ImpAdCallFPR4  = Trim()
  loc_72F3EB: FLdRfVar var_110
  loc_72F3EE: LitVarStr var_130, "GNC"
  loc_72F3F3: HardType
  loc_72F3F4: EqVarBool
  loc_72F3F6: FFreeVar var_100 = ""
  loc_72F3FD: BranchF loc_72F408
  loc_72F400: LitI2_Byte &HFF
  loc_72F402: FStI2 var_86
  loc_72F405: Branch loc_72F40D
  loc_72F408: LitI2_Byte &HFF
  loc_72F40A: FStI2 var_88
  loc_72F40D: Branch loc_72F57B
  loc_72F410: LitVar_Missing var_2B8
  loc_72F413: PopAdLdVar
  loc_72F414: ILdRf var_98
  loc_72F417: CVarStr var_120
  loc_72F41A: LitI4 1
  loc_72F41F: FLdRfVar var_100
  loc_72F422: ImpAdCallFPR4  = Space()
  loc_72F427: FLdRfVar var_100
  loc_72F42A: ConcatVar var_110
  loc_72F42E: ILdRf var_9C
  loc_72F431: CVarStr var_130
  loc_72F434: ConcatVar var_150
  loc_72F438: LitI4 1
  loc_72F43D: FLdRfVar var_180
  loc_72F440: ImpAdCallFPR4  = Space()
  loc_72F445: FLdRfVar var_180
  loc_72F448: ConcatVar var_190
  loc_72F44C: ILdRf var_A0
  loc_72F44F: CVarStr var_140
  loc_72F452: ConcatVar var_1A0
  loc_72F456: ILdRf var_B8
  loc_72F459: CVarStr var_160
  loc_72F45C: ConcatVar var_1C0
  loc_72F460: LitI4 1
  loc_72F465: FLdRfVar var_1F0
  loc_72F468: ImpAdCallFPR4  = Space()
  loc_72F46D: FLdRfVar var_1F0
  loc_72F470: ConcatVar var_200
  loc_72F474: ILdRf var_AC
  loc_72F477: CVarStr var_170
  loc_72F47A: ConcatVar var_210
  loc_72F47E: LitI4 1
  loc_72F483: FLdRfVar var_248
  loc_72F486: ImpAdCallFPR4  = Space()
  loc_72F48B: FLdRfVar var_248
  loc_72F48E: ConcatVar var_258
  loc_72F492: ILdRf var_B0
  loc_72F495: CVarStr var_1B0
  loc_72F498: ConcatVar var_268
  loc_72F49C: LitI4 1
  loc_72F4A1: FLdRfVar var_288
  loc_72F4A4: ImpAdCallFPR4  = Space()
  loc_72F4A9: FLdRfVar var_288
  loc_72F4AC: ConcatVar var_298
  loc_72F4B0: ILdRf var_A4
  loc_72F4B3: CVarStr var_1D0
  loc_72F4B6: ConcatVar var_2A8
  loc_72F4BA: ILdRf var_A8
  loc_72F4BD: CVarStr var_1E0
  loc_72F4C0: ConcatVar var_2C8
  loc_72F4C4: LitI4 1
  loc_72F4C9: FLdRfVar var_2D8
  loc_72F4CC: ImpAdCallFPR4  = Space()
  loc_72F4D1: FLdRfVar var_2D8
  loc_72F4D4: ConcatVar var_2E8
  loc_72F4D8: ILdRf var_B4
  loc_72F4DB: CVarStr var_278
  loc_72F4DE: ConcatVar var_2F8
  loc_72F4E2: LitI4 1
  loc_72F4E7: FLdRfVar var_308
  loc_72F4EA: ImpAdCallFPR4  = Space()
  loc_72F4EF: FLdRfVar var_308
  loc_72F4F2: ConcatVar var_318
  loc_72F4F6: CStrVarVal var_D8
  loc_72F4FA: FLdPrThis
  loc_72F4FB: VCallAd Control_ID_List1
  loc_72F4FE: FStAdFunc var_D0
  loc_72F501: FLdPr var_D0
  loc_72F504: Me.AddItem from_stack_1, from_stack_2
  loc_72F509: FFree1Str var_D8
  loc_72F50C: FFree1Ad var_D0
  loc_72F50F: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_248 = "": var_258 = "": var_268 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_72F53E: FLdRfVar var_AC
  loc_72F541: CVarRef
  loc_72F546: FLdRfVar var_100
  loc_72F549: ImpAdCallFPR4  = Ucase()
  loc_72F54E: FLdRfVar var_100
  loc_72F551: FLdRfVar var_110
  loc_72F554: ImpAdCallFPR4  = Trim()
  loc_72F559: FLdRfVar var_110
  loc_72F55C: LitVarStr var_130, "GNC"
  loc_72F561: HardType
  loc_72F562: EqVarBool
  loc_72F564: FFreeVar var_100 = ""
  loc_72F56B: BranchF loc_72F576
  loc_72F56E: LitI2_Byte &HFF
  loc_72F570: FStI2 var_86
  loc_72F573: Branch loc_72F57B
  loc_72F576: LitI2_Byte &HFF
  loc_72F578: FStI2 var_88
  loc_72F57B: ILdRf var_90
  loc_72F57E: FLdUI1
  loc_72F582: CI4UI1
  loc_72F583: AddI4
  loc_72F584: FStR4 var_90
  loc_72F587: Branch loc_72EA08
  loc_72F58A: FLdRfVar var_E0
  loc_72F58D: LitVar_Missing var_210
  loc_72F590: LitVar_Missing var_200
  loc_72F593: LitVar_Missing var_1F0
  loc_72F596: LitVar_Missing var_1C0
  loc_72F599: LitVar_Missing var_1A0
  loc_72F59C: LitVar_Missing var_190
  loc_72F59F: LitVar_Missing var_180
  loc_72F5A2: LitVar_Missing var_150
  loc_72F5A5: LitVar_Missing var_110
  loc_72F5A8: LitVar_Missing var_100
  loc_72F5AB: LitStr "Totales por sección"
  loc_72F5AE: FStStrCopy var_D8
  loc_72F5B1: FLdRfVar var_D8
  loc_72F5B4: LitI4 &H3A
  loc_72F5B9: PopTmpLdAdStr var_360
  loc_72F5BC: LitI2_Byte &H1B
  loc_72F5BE: PopTmpLdAd2 var_212
  loc_72F5C1: ImpAdLdRf MemVar_74C7D0
  loc_72F5C4: NewIfNullPr clsMsg
  loc_72F5C7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F5CC: FLdZeroAd var_E0
  loc_72F5CF: FStStr var_33C
  loc_72F5D2: FFree1Str var_D8
  loc_72F5D5: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F5EC: FLdRfVar var_E0
  loc_72F5EF: LitVar_Missing var_210
  loc_72F5F2: LitVar_Missing var_200
  loc_72F5F5: LitVar_Missing var_1F0
  loc_72F5F8: LitVar_Missing var_1C0
  loc_72F5FB: LitVar_Missing var_1A0
  loc_72F5FE: LitVar_Missing var_190
  loc_72F601: LitVar_Missing var_180
  loc_72F604: LitVar_Missing var_150
  loc_72F607: LitVar_Missing var_110
  loc_72F60A: LitVar_Missing var_100
  loc_72F60D: LitStr "Cantidad de registros por sección:"
  loc_72F610: FStStrCopy var_D8
  loc_72F613: FLdRfVar var_D8
  loc_72F616: LitI4 &H3B
  loc_72F61B: PopTmpLdAdStr var_360
  loc_72F61E: LitI2_Byte &H1B
  loc_72F620: PopTmpLdAd2 var_212
  loc_72F623: ImpAdLdRf MemVar_74C7D0
  loc_72F626: NewIfNullPr clsMsg
  loc_72F629: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F62E: FLdZeroAd var_E0
  loc_72F631: FStStr var_340
  loc_72F634: FFree1Str var_D8
  loc_72F637: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F64E: FLdRfVar var_E0
  loc_72F651: LitVar_Missing var_210
  loc_72F654: LitVar_Missing var_200
  loc_72F657: LitVar_Missing var_1F0
  loc_72F65A: LitVar_Missing var_1C0
  loc_72F65D: LitVar_Missing var_1A0
  loc_72F660: LitVar_Missing var_190
  loc_72F663: LitVar_Missing var_180
  loc_72F666: LitVar_Missing var_150
  loc_72F669: LitVar_Missing var_110
  loc_72F66C: LitVar_Missing var_100
  loc_72F66F: LitStr "Totales Generales"
  loc_72F672: FStStrCopy var_D8
  loc_72F675: FLdRfVar var_D8
  loc_72F678: LitI4 &H3C
  loc_72F67D: PopTmpLdAdStr var_360
  loc_72F680: LitI2_Byte &H1B
  loc_72F682: PopTmpLdAd2 var_212
  loc_72F685: ImpAdLdRf MemVar_74C7D0
  loc_72F688: NewIfNullPr clsMsg
  loc_72F68B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F690: FLdZeroAd var_E0
  loc_72F693: FStStr var_344
  loc_72F696: FFree1Str var_D8
  loc_72F699: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F6B0: FLdRfVar var_E0
  loc_72F6B3: LitVar_Missing var_210
  loc_72F6B6: LitVar_Missing var_200
  loc_72F6B9: LitVar_Missing var_1F0
  loc_72F6BC: LitVar_Missing var_1C0
  loc_72F6BF: LitVar_Missing var_1A0
  loc_72F6C2: LitVar_Missing var_190
  loc_72F6C5: LitVar_Missing var_180
  loc_72F6C8: LitVar_Missing var_150
  loc_72F6CB: LitVar_Missing var_110
  loc_72F6CE: LitVar_Missing var_100
  loc_72F6D1: LitStr "Cantidad de despachos:"
  loc_72F6D4: FStStrCopy var_D8
  loc_72F6D7: FLdRfVar var_D8
  loc_72F6DA: LitI4 9
  loc_72F6DF: PopTmpLdAdStr var_360
  loc_72F6E2: LitI2_Byte &H1B
  loc_72F6E4: PopTmpLdAd2 var_212
  loc_72F6E7: ImpAdLdRf MemVar_74C7D0
  loc_72F6EA: NewIfNullPr clsMsg
  loc_72F6ED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F6F2: FLdZeroAd var_E0
  loc_72F6F5: FStStr var_348
  loc_72F6F8: FFree1Str var_D8
  loc_72F6FB: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F712: FLdRfVar var_E0
  loc_72F715: LitVar_Missing var_210
  loc_72F718: LitVar_Missing var_200
  loc_72F71B: LitVar_Missing var_1F0
  loc_72F71E: LitVar_Missing var_1C0
  loc_72F721: LitVar_Missing var_1A0
  loc_72F724: LitVar_Missing var_190
  loc_72F727: LitVar_Missing var_180
  loc_72F72A: LitVar_Missing var_150
  loc_72F72D: LitVar_Missing var_110
  loc_72F730: LitVar_Missing var_100
  loc_72F733: LitStr "Rango de la Sección"
  loc_72F736: FStStrCopy var_D8
  loc_72F739: FLdRfVar var_D8
  loc_72F73C: LitI4 &H3E
  loc_72F741: PopTmpLdAdStr var_360
  loc_72F744: LitI2_Byte &H1B
  loc_72F746: PopTmpLdAd2 var_212
  loc_72F749: ImpAdLdRf MemVar_74C7D0
  loc_72F74C: NewIfNullPr clsMsg
  loc_72F74F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F754: FLdZeroAd var_E0
  loc_72F757: FStStr var_354
  loc_72F75A: FFree1Str var_D8
  loc_72F75D: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F774: FLdRfVar var_E0
  loc_72F777: LitVar_Missing var_210
  loc_72F77A: LitVar_Missing var_200
  loc_72F77D: LitVar_Missing var_1F0
  loc_72F780: LitVar_Missing var_1C0
  loc_72F783: LitVar_Missing var_1A0
  loc_72F786: LitVar_Missing var_190
  loc_72F789: LitVar_Missing var_180
  loc_72F78C: LitVar_Missing var_150
  loc_72F78F: LitVar_Missing var_110
  loc_72F792: LitVar_Missing var_100
  loc_72F795: LitStr "Desde:"
  loc_72F798: FStStrCopy var_D8
  loc_72F79B: FLdRfVar var_D8
  loc_72F79E: LitI4 &H3F
  loc_72F7A3: PopTmpLdAdStr var_360
  loc_72F7A6: LitI2_Byte &H1B
  loc_72F7A8: PopTmpLdAd2 var_212
  loc_72F7AB: ImpAdLdRf MemVar_74C7D0
  loc_72F7AE: NewIfNullPr clsMsg
  loc_72F7B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F7B6: FLdZeroAd var_E0
  loc_72F7B9: FStStr var_358
  loc_72F7BC: FFree1Str var_D8
  loc_72F7BF: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F7D6: FLdRfVar var_E0
  loc_72F7D9: LitVar_Missing var_210
  loc_72F7DC: LitVar_Missing var_200
  loc_72F7DF: LitVar_Missing var_1F0
  loc_72F7E2: LitVar_Missing var_1C0
  loc_72F7E5: LitVar_Missing var_1A0
  loc_72F7E8: LitVar_Missing var_190
  loc_72F7EB: LitVar_Missing var_180
  loc_72F7EE: LitVar_Missing var_150
  loc_72F7F1: LitVar_Missing var_110
  loc_72F7F4: LitVar_Missing var_100
  loc_72F7F7: LitStr "Hasta:"
  loc_72F7FA: FStStrCopy var_D8
  loc_72F7FD: FLdRfVar var_D8
  loc_72F800: LitI4 &H40
  loc_72F805: PopTmpLdAdStr var_360
  loc_72F808: LitI2_Byte &H1B
  loc_72F80A: PopTmpLdAd2 var_212
  loc_72F80D: ImpAdLdRf MemVar_74C7D0
  loc_72F810: NewIfNullPr clsMsg
  loc_72F813: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F818: FLdZeroAd var_E0
  loc_72F81B: FStStr var_35C
  loc_72F81E: FFree1Str var_D8
  loc_72F821: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F838: FLdRfVar var_E0
  loc_72F83B: LitVar_Missing var_210
  loc_72F83E: LitVar_Missing var_200
  loc_72F841: LitVar_Missing var_1F0
  loc_72F844: LitVar_Missing var_1C0
  loc_72F847: LitVar_Missing var_1A0
  loc_72F84A: LitVar_Missing var_190
  loc_72F84D: LitVar_Missing var_180
  loc_72F850: LitVar_Missing var_150
  loc_72F853: LitVar_Missing var_110
  loc_72F856: LitVar_Missing var_100
  loc_72F859: LitStr "Cantidad de ventas sin control:"
  loc_72F85C: FStStrCopy var_D8
  loc_72F85F: FLdRfVar var_D8
  loc_72F862: LitI4 &H41
  loc_72F867: PopTmpLdAdStr var_360
  loc_72F86A: LitI2_Byte &H1B
  loc_72F86C: PopTmpLdAd2 var_212
  loc_72F86F: ImpAdLdRf MemVar_74C7D0
  loc_72F872: NewIfNullPr clsMsg
  loc_72F875: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72F87A: FLdZeroAd var_E0
  loc_72F87D: FStStr var_34C
  loc_72F880: FFree1Str var_D8
  loc_72F883: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_72F89A: ILdI4 arg_C
  loc_72F89D: FStR4 var_364
  loc_72F8A0: ILdRf var_364
  loc_72F8A3: LitI4 0
  loc_72F8A8: EqI4
  loc_72F8A9: BranchF loc_72FD06
  loc_72F8AC: LitStr "______________________________________________________________________________________________"
  loc_72F8AF: ILdI2 arg_10
  loc_72F8B2: PrintFile
  loc_72F8B8: LitStr " "
  loc_72F8BB: ILdI2 arg_10
  loc_72F8BE: PrintFile
  loc_72F8C4: FLdPr Me
  loc_72F8C7: MemLdI2 global_120
  loc_72F8CA: LitI2_Byte 1
  loc_72F8CC: EqI2
  loc_72F8CD: BranchF loc_72FA86
  loc_72F8D0: FLdI2 var_88
  loc_72F8D3: LitI2_Byte &HFF
  loc_72F8D5: EqI2
  loc_72F8D6: FLdI2 var_86
  loc_72F8D9: LitI2_Byte &HFF
  loc_72F8DB: EqI2
  loc_72F8DC: AndI4
  loc_72F8DD: BranchF loc_72F983
  loc_72F8E0: LitI4 &H2A
  loc_72F8E5: FLdRfVar var_100
  loc_72F8E8: ImpAdCallFPR4  = Space()
  loc_72F8ED: LitI4 1
  loc_72F8F2: LitI4 1
  loc_72F8F7: ImpAdLdRf MemVar_74C364
  loc_72F8FA: CVarRef
  loc_72F8FF: FLdRfVar var_C0
  loc_72F902: CVarRef
  loc_72F907: ImpAdCallI2 Format$(, )
  loc_72F90C: FStStr var_D8
  loc_72F90F: LitI4 1
  loc_72F914: LitI4 1
  loc_72F919: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72F91E: FStVarCopyObj var_180
  loc_72F921: FLdRfVar var_180
  loc_72F924: FLdZeroAd var_D8
  loc_72F927: CVarStr var_150
  loc_72F92A: ImpAdCallI2 Format$(, )
  loc_72F92F: FStStr var_E0
  loc_72F932: LitI4 &HC
  loc_72F937: FLdRfVar var_1C0
  loc_72F93A: ImpAdCallFPR4  = Space()
  loc_72F93F: ILdRf var_344
  loc_72F942: CVarStr var_120
  loc_72F945: FLdRfVar var_100
  loc_72F948: ConcatVar var_110
  loc_72F94C: FLdZeroAd var_E0
  loc_72F94F: CVarStr var_190
  loc_72F952: ConcatVar var_1A0
  loc_72F956: FLdRfVar var_1C0
  loc_72F959: ConcatVar var_1F0
  loc_72F95D: ILdI2 arg_10
  loc_72F960: PrintFile
  loc_72F966: FFreeStr var_D8 = ""
  loc_72F96D: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = ""
  loc_72F980: Branch loc_72FA83
  loc_72F983: LitI4 &H2A
  loc_72F988: FLdRfVar var_100
  loc_72F98B: ImpAdCallFPR4  = Space()
  loc_72F990: LitI4 1
  loc_72F995: LitI4 1
  loc_72F99A: ImpAdLdRf MemVar_74C364
  loc_72F99D: CVarRef
  loc_72F9A2: FLdRfVar var_C0
  loc_72F9A5: CVarRef
  loc_72F9AA: ImpAdCallI2 Format$(, )
  loc_72F9AF: FStStr var_D8
  loc_72F9B2: LitI4 1
  loc_72F9B7: LitI4 1
  loc_72F9BC: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72F9C1: FStVarCopyObj var_180
  loc_72F9C4: FLdRfVar var_180
  loc_72F9C7: FLdZeroAd var_D8
  loc_72F9CA: CVarStr var_150
  loc_72F9CD: ImpAdCallI2 Format$(, )
  loc_72F9D2: FStStr var_E0
  loc_72F9D5: LitI4 1
  loc_72F9DA: FLdRfVar var_1C0
  loc_72F9DD: ImpAdCallFPR4  = Space()
  loc_72F9E2: LitI4 1
  loc_72F9E7: LitI4 1
  loc_72F9EC: LitVarStr var_1B0, "#######0.00"
  loc_72F9F1: FStVarCopyObj var_200
  loc_72F9F4: FLdRfVar var_200
  loc_72F9F7: FLdRfVar var_C4
  loc_72F9FA: CVarRef
  loc_72F9FF: ImpAdCallI2 Format$(, )
  loc_72FA04: FStStr var_E8
  loc_72FA07: LitI4 1
  loc_72FA0C: LitI4 1
  loc_72FA11: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_72FA16: FStVarCopyObj var_248
  loc_72FA19: FLdRfVar var_248
  loc_72FA1C: FLdZeroAd var_E8
  loc_72FA1F: CVarStr var_210
  loc_72FA22: ImpAdCallI2 Format$(, )
  loc_72FA27: FStStr var_F0
  loc_72FA2A: ILdRf var_344
  loc_72FA2D: CVarStr var_120
  loc_72FA30: FLdRfVar var_100
  loc_72FA33: ConcatVar var_110
  loc_72FA37: FLdZeroAd var_E0
  loc_72FA3A: CVarStr var_190
  loc_72FA3D: ConcatVar var_1A0
  loc_72FA41: FLdRfVar var_1C0
  loc_72FA44: ConcatVar var_1F0
  loc_72FA48: FLdZeroAd var_F0
  loc_72FA4B: CVarStr var_258
  loc_72FA4E: ConcatVar var_268
  loc_72FA52: ILdI2 arg_10
  loc_72FA55: PrintFile
  loc_72FA5B: FFreeStr var_D8 = "": var_E0 = "": var_E8 = ""
  loc_72FA66: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_72FA83: Branch loc_72FCA1
  loc_72FA86: FLdPr Me
  loc_72FA89: MemLdI2 global_120
  loc_72FA8C: LitI2_Byte 2
  loc_72FA8E: EqI2
  loc_72FA8F: BranchF loc_72FB95
  loc_72FA92: LitI4 &H2A
  loc_72FA97: FLdRfVar var_100
  loc_72FA9A: ImpAdCallFPR4  = Space()
  loc_72FA9F: LitI4 1
  loc_72FAA4: LitI4 1
  loc_72FAA9: ImpAdLdRf MemVar_74C364
  loc_72FAAC: CVarRef
  loc_72FAB1: FLdRfVar var_C0
  loc_72FAB4: CVarRef
  loc_72FAB9: ImpAdCallI2 Format$(, )
  loc_72FABE: FStStr var_D8
  loc_72FAC1: LitI4 1
  loc_72FAC6: LitI4 1
  loc_72FACB: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72FAD0: FStVarCopyObj var_180
  loc_72FAD3: FLdRfVar var_180
  loc_72FAD6: FLdZeroAd var_D8
  loc_72FAD9: CVarStr var_150
  loc_72FADC: ImpAdCallI2 Format$(, )
  loc_72FAE1: FStStr var_E0
  loc_72FAE4: LitI4 1
  loc_72FAE9: FLdRfVar var_1C0
  loc_72FAEC: ImpAdCallFPR4  = Space()
  loc_72FAF1: LitI4 1
  loc_72FAF6: LitI4 1
  loc_72FAFB: LitVarStr var_1B0, "#######0.00"
  loc_72FB00: FStVarCopyObj var_200
  loc_72FB03: FLdRfVar var_200
  loc_72FB06: FLdRfVar var_C4
  loc_72FB09: CVarRef
  loc_72FB0E: ImpAdCallI2 Format$(, )
  loc_72FB13: FStStr var_E8
  loc_72FB16: LitI4 1
  loc_72FB1B: LitI4 1
  loc_72FB20: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_72FB25: FStVarCopyObj var_248
  loc_72FB28: FLdRfVar var_248
  loc_72FB2B: FLdZeroAd var_E8
  loc_72FB2E: CVarStr var_210
  loc_72FB31: ImpAdCallI2 Format$(, )
  loc_72FB36: FStStr var_F0
  loc_72FB39: ILdRf var_344
  loc_72FB3C: CVarStr var_120
  loc_72FB3F: FLdRfVar var_100
  loc_72FB42: ConcatVar var_110
  loc_72FB46: FLdZeroAd var_E0
  loc_72FB49: CVarStr var_190
  loc_72FB4C: ConcatVar var_1A0
  loc_72FB50: FLdRfVar var_1C0
  loc_72FB53: ConcatVar var_1F0
  loc_72FB57: FLdZeroAd var_F0
  loc_72FB5A: CVarStr var_258
  loc_72FB5D: ConcatVar var_268
  loc_72FB61: ILdI2 arg_10
  loc_72FB64: PrintFile
  loc_72FB6A: FFreeStr var_D8 = "": var_E0 = "": var_E8 = ""
  loc_72FB75: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_72FB92: Branch loc_72FCA1
  loc_72FB95: FLdPr Me
  loc_72FB98: MemLdI2 global_120
  loc_72FB9B: LitI2_Byte 3
  loc_72FB9D: EqI2
  loc_72FB9E: BranchF loc_72FCA1
  loc_72FBA1: LitI4 &H2A
  loc_72FBA6: FLdRfVar var_100
  loc_72FBA9: ImpAdCallFPR4  = Space()
  loc_72FBAE: LitI4 1
  loc_72FBB3: LitI4 1
  loc_72FBB8: ImpAdLdRf MemVar_74C364
  loc_72FBBB: CVarRef
  loc_72FBC0: FLdRfVar var_C0
  loc_72FBC3: CVarRef
  loc_72FBC8: ImpAdCallI2 Format$(, )
  loc_72FBCD: FStStr var_D8
  loc_72FBD0: LitI4 1
  loc_72FBD5: LitI4 1
  loc_72FBDA: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72FBDF: FStVarCopyObj var_180
  loc_72FBE2: FLdRfVar var_180
  loc_72FBE5: FLdZeroAd var_D8
  loc_72FBE8: CVarStr var_150
  loc_72FBEB: ImpAdCallI2 Format$(, )
  loc_72FBF0: FStStr var_E0
  loc_72FBF3: LitI4 1
  loc_72FBF8: FLdRfVar var_1C0
  loc_72FBFB: ImpAdCallFPR4  = Space()
  loc_72FC00: LitI4 1
  loc_72FC05: LitI4 1
  loc_72FC0A: LitVarStr var_1B0, "#######0.00"
  loc_72FC0F: FStVarCopyObj var_200
  loc_72FC12: FLdRfVar var_200
  loc_72FC15: FLdRfVar var_C4
  loc_72FC18: CVarRef
  loc_72FC1D: ImpAdCallI2 Format$(, )
  loc_72FC22: FStStr var_E8
  loc_72FC25: LitI4 1
  loc_72FC2A: LitI4 1
  loc_72FC2F: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_72FC34: FStVarCopyObj var_248
  loc_72FC37: FLdRfVar var_248
  loc_72FC3A: FLdZeroAd var_E8
  loc_72FC3D: CVarStr var_210
  loc_72FC40: ImpAdCallI2 Format$(, )
  loc_72FC45: FStStr var_F0
  loc_72FC48: ILdRf var_344
  loc_72FC4B: CVarStr var_120
  loc_72FC4E: FLdRfVar var_100
  loc_72FC51: ConcatVar var_110
  loc_72FC55: FLdZeroAd var_E0
  loc_72FC58: CVarStr var_190
  loc_72FC5B: ConcatVar var_1A0
  loc_72FC5F: FLdRfVar var_1C0
  loc_72FC62: ConcatVar var_1F0
  loc_72FC66: FLdZeroAd var_F0
  loc_72FC69: CVarStr var_258
  loc_72FC6C: ConcatVar var_268
  loc_72FC70: ILdI2 arg_10
  loc_72FC73: PrintFile
  loc_72FC79: FFreeStr var_D8 = "": var_E0 = "": var_E8 = ""
  loc_72FC84: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_72FCA1: LitStr " "
  loc_72FCA4: ILdI2 arg_10
  loc_72FCA7: PrintFile
  loc_72FCAD: ILdRf var_34C
  loc_72FCB0: LitStr " "
  loc_72FCB3: ConcatStr
  loc_72FCB4: FStStrNoPop var_D8
  loc_72FCB7: ImpAdLdPr unk_452A0F
  loc_72FCBA: MemLdFPR8 global_20
  loc_72FCBD: CStrR8
  loc_72FCBF: FStStrNoPop var_E0
  loc_72FCC2: ConcatStr
  loc_72FCC3: FStStrNoPop var_E8
  loc_72FCC6: ILdI2 arg_10
  loc_72FCC9: PrintFile
  loc_72FCCF: FFreeStr var_D8 = "": var_E0 = ""
  loc_72FCD8: ILdRf var_348
  loc_72FCDB: LitStr " "
  loc_72FCDE: ConcatStr
  loc_72FCDF: FStStrNoPop var_D8
  loc_72FCE2: ImpAdLdPr unk_452A0F
  loc_72FCE5: MemLdStr global_16
  loc_72FCE8: CStrI4
  loc_72FCEA: FStStrNoPop var_E0
  loc_72FCED: ConcatStr
  loc_72FCEE: FStStrNoPop var_E8
  loc_72FCF1: ILdI2 arg_10
  loc_72FCF4: PrintFile
  loc_72FCFA: FFreeStr var_D8 = "": var_E0 = ""
  loc_72FD03: Branch loc_730FF9
  loc_72FD06: ILdRf var_364
  loc_72FD09: LitI4 1
  loc_72FD0E: EqI4
  loc_72FD0F: BranchF loc_7301D2
  loc_72FD12: FLdRfVar var_212
  loc_72FD15: ILdRf arg_18
  loc_72FD18: LitStr "______________________________________________________________________________________________"
  loc_72FD1B: FStStrCopy var_D8
  loc_72FD1E: FLdRfVar var_D8
  loc_72FD21: ILdPr
  loc_72FD24:  = Me.ForeColor
  loc_72FD29: FFree1Str var_D8
  loc_72FD2C: FLdRfVar var_212
  loc_72FD2F: ILdRf arg_18
  loc_72FD32: LitStr " "
  loc_72FD35: FStStrCopy var_D8
  loc_72FD38: FLdRfVar var_D8
  loc_72FD3B: ILdPr
  loc_72FD3E:  = Me.ForeColor
  loc_72FD43: FFree1Str var_D8
  loc_72FD46: FLdPr Me
  loc_72FD49: MemLdI2 global_120
  loc_72FD4C: LitI2_Byte 1
  loc_72FD4E: EqI2
  loc_72FD4F: BranchF loc_72FF20
  loc_72FD52: FLdI2 var_88
  loc_72FD55: LitI2_Byte &HFF
  loc_72FD57: EqI2
  loc_72FD58: FLdI2 var_86
  loc_72FD5B: LitI2_Byte &HFF
  loc_72FD5D: EqI2
  loc_72FD5E: AndI4
  loc_72FD5F: BranchF loc_72FE11
  loc_72FD62: LitI4 &H28
  loc_72FD67: FLdRfVar var_100
  loc_72FD6A: ImpAdCallFPR4  = Space()
  loc_72FD6F: LitI4 1
  loc_72FD74: LitI4 1
  loc_72FD79: ImpAdLdRf MemVar_74C364
  loc_72FD7C: CVarRef
  loc_72FD81: FLdRfVar var_C0
  loc_72FD84: CVarRef
  loc_72FD89: ImpAdCallI2 Format$(, )
  loc_72FD8E: FStStr var_E0
  loc_72FD91: LitI4 1
  loc_72FD96: LitI4 1
  loc_72FD9B: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72FDA0: FStVarCopyObj var_180
  loc_72FDA3: FLdRfVar var_180
  loc_72FDA6: FLdZeroAd var_E0
  loc_72FDA9: CVarStr var_150
  loc_72FDAC: ImpAdCallI2 Format$(, )
  loc_72FDB1: FStStr var_E8
  loc_72FDB4: LitI4 &HC
  loc_72FDB9: FLdRfVar var_1C0
  loc_72FDBC: ImpAdCallFPR4  = Space()
  loc_72FDC1: FLdRfVar var_212
  loc_72FDC4: ILdRf arg_18
  loc_72FDC7: ILdRf var_344
  loc_72FDCA: CVarStr var_120
  loc_72FDCD: FLdRfVar var_100
  loc_72FDD0: ConcatVar var_110
  loc_72FDD4: FLdZeroAd var_E8
  loc_72FDD7: CVarStr var_190
  loc_72FDDA: ConcatVar var_1A0
  loc_72FDDE: FLdRfVar var_1C0
  loc_72FDE1: ConcatVar var_1F0
  loc_72FDE5: CStrVarTmp
  loc_72FDE6: PopTmpLdAdStr
  loc_72FDEA: ILdPr
  loc_72FDED:  = Me.ForeColor
  loc_72FDF2: FFreeStr var_D8 = "": var_E0 = ""
  loc_72FDFB: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = ""
  loc_72FE0E: Branch loc_72FF1D
  loc_72FE11: LitI4 &H28
  loc_72FE16: FLdRfVar var_100
  loc_72FE19: ImpAdCallFPR4  = Space()
  loc_72FE1E: LitI4 1
  loc_72FE23: LitI4 1
  loc_72FE28: ImpAdLdRf MemVar_74C364
  loc_72FE2B: CVarRef
  loc_72FE30: FLdRfVar var_C0
  loc_72FE33: CVarRef
  loc_72FE38: ImpAdCallI2 Format$(, )
  loc_72FE3D: FStStr var_E0
  loc_72FE40: LitI4 1
  loc_72FE45: LitI4 1
  loc_72FE4A: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72FE4F: FStVarCopyObj var_180
  loc_72FE52: FLdRfVar var_180
  loc_72FE55: FLdZeroAd var_E0
  loc_72FE58: CVarStr var_150
  loc_72FE5B: ImpAdCallI2 Format$(, )
  loc_72FE60: FStStr var_E8
  loc_72FE63: LitI4 1
  loc_72FE68: FLdRfVar var_1C0
  loc_72FE6B: ImpAdCallFPR4  = Space()
  loc_72FE70: LitI4 1
  loc_72FE75: LitI4 1
  loc_72FE7A: LitVarStr var_1B0, "#######0.00"
  loc_72FE7F: FStVarCopyObj var_200
  loc_72FE82: FLdRfVar var_200
  loc_72FE85: FLdRfVar var_C4
  loc_72FE88: CVarRef
  loc_72FE8D: ImpAdCallI2 Format$(, )
  loc_72FE92: FStStr var_F0
  loc_72FE95: LitI4 1
  loc_72FE9A: LitI4 1
  loc_72FE9F: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_72FEA4: FStVarCopyObj var_248
  loc_72FEA7: FLdRfVar var_248
  loc_72FEAA: FLdZeroAd var_F0
  loc_72FEAD: CVarStr var_210
  loc_72FEB0: ImpAdCallI2 Format$(, )
  loc_72FEB5: FStStr var_368
  loc_72FEB8: FLdRfVar var_212
  loc_72FEBB: ILdRf arg_18
  loc_72FEBE: ILdRf var_344
  loc_72FEC1: CVarStr var_120
  loc_72FEC4: FLdRfVar var_100
  loc_72FEC7: ConcatVar var_110
  loc_72FECB: FLdZeroAd var_E8
  loc_72FECE: CVarStr var_190
  loc_72FED1: ConcatVar var_1A0
  loc_72FED5: FLdRfVar var_1C0
  loc_72FED8: ConcatVar var_1F0
  loc_72FEDC: FLdZeroAd var_368
  loc_72FEDF: CVarStr var_258
  loc_72FEE2: ConcatVar var_268
  loc_72FEE6: CStrVarTmp
  loc_72FEE7: PopTmpLdAdStr
  loc_72FEEB: ILdPr
  loc_72FEEE:  = Me.ForeColor
  loc_72FEF3: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_72FF00: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_72FF1D: Branch loc_730153
  loc_72FF20: FLdPr Me
  loc_72FF23: MemLdI2 global_120
  loc_72FF26: LitI2_Byte 2
  loc_72FF28: EqI2
  loc_72FF29: BranchF loc_73003B
  loc_72FF2C: LitI4 &H28
  loc_72FF31: FLdRfVar var_100
  loc_72FF34: ImpAdCallFPR4  = Space()
  loc_72FF39: LitI4 1
  loc_72FF3E: LitI4 1
  loc_72FF43: ImpAdLdRf MemVar_74C364
  loc_72FF46: CVarRef
  loc_72FF4B: FLdRfVar var_C0
  loc_72FF4E: CVarRef
  loc_72FF53: ImpAdCallI2 Format$(, )
  loc_72FF58: FStStr var_E0
  loc_72FF5B: LitI4 1
  loc_72FF60: LitI4 1
  loc_72FF65: LitVarStr var_160, "@@@@@@@@@@@"
  loc_72FF6A: FStVarCopyObj var_180
  loc_72FF6D: FLdRfVar var_180
  loc_72FF70: FLdZeroAd var_E0
  loc_72FF73: CVarStr var_150
  loc_72FF76: ImpAdCallI2 Format$(, )
  loc_72FF7B: FStStr var_E8
  loc_72FF7E: LitI4 1
  loc_72FF83: FLdRfVar var_1C0
  loc_72FF86: ImpAdCallFPR4  = Space()
  loc_72FF8B: LitI4 1
  loc_72FF90: LitI4 1
  loc_72FF95: LitVarStr var_1B0, "#######0.00"
  loc_72FF9A: FStVarCopyObj var_200
  loc_72FF9D: FLdRfVar var_200
  loc_72FFA0: FLdRfVar var_C4
  loc_72FFA3: CVarRef
  loc_72FFA8: ImpAdCallI2 Format$(, )
  loc_72FFAD: FStStr var_F0
  loc_72FFB0: LitI4 1
  loc_72FFB5: LitI4 1
  loc_72FFBA: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_72FFBF: FStVarCopyObj var_248
  loc_72FFC2: FLdRfVar var_248
  loc_72FFC5: FLdZeroAd var_F0
  loc_72FFC8: CVarStr var_210
  loc_72FFCB: ImpAdCallI2 Format$(, )
  loc_72FFD0: FStStr var_368
  loc_72FFD3: FLdRfVar var_212
  loc_72FFD6: ILdRf arg_18
  loc_72FFD9: ILdRf var_344
  loc_72FFDC: CVarStr var_120
  loc_72FFDF: FLdRfVar var_100
  loc_72FFE2: ConcatVar var_110
  loc_72FFE6: FLdZeroAd var_E8
  loc_72FFE9: CVarStr var_190
  loc_72FFEC: ConcatVar var_1A0
  loc_72FFF0: FLdRfVar var_1C0
  loc_72FFF3: ConcatVar var_1F0
  loc_72FFF7: FLdZeroAd var_368
  loc_72FFFA: CVarStr var_258
  loc_72FFFD: ConcatVar var_268
  loc_730001: CStrVarTmp
  loc_730002: PopTmpLdAdStr
  loc_730006: ILdPr
  loc_730009:  = Me.ForeColor
  loc_73000E: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_73001B: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730038: Branch loc_730153
  loc_73003B: FLdPr Me
  loc_73003E: MemLdI2 global_120
  loc_730041: LitI2_Byte 3
  loc_730043: EqI2
  loc_730044: BranchF loc_730153
  loc_730047: LitI4 &H28
  loc_73004C: FLdRfVar var_100
  loc_73004F: ImpAdCallFPR4  = Space()
  loc_730054: LitI4 1
  loc_730059: LitI4 1
  loc_73005E: ImpAdLdRf MemVar_74C364
  loc_730061: CVarRef
  loc_730066: FLdRfVar var_C0
  loc_730069: CVarRef
  loc_73006E: ImpAdCallI2 Format$(, )
  loc_730073: FStStr var_E0
  loc_730076: LitI4 1
  loc_73007B: LitI4 1
  loc_730080: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730085: FStVarCopyObj var_180
  loc_730088: FLdRfVar var_180
  loc_73008B: FLdZeroAd var_E0
  loc_73008E: CVarStr var_150
  loc_730091: ImpAdCallI2 Format$(, )
  loc_730096: FStStr var_E8
  loc_730099: LitI4 3
  loc_73009E: FLdRfVar var_1C0
  loc_7300A1: ImpAdCallFPR4  = Space()
  loc_7300A6: LitI4 1
  loc_7300AB: LitI4 1
  loc_7300B0: LitVarStr var_1B0, "#######0.00"
  loc_7300B5: FStVarCopyObj var_200
  loc_7300B8: FLdRfVar var_200
  loc_7300BB: FLdRfVar var_C4
  loc_7300BE: CVarRef
  loc_7300C3: ImpAdCallI2 Format$(, )
  loc_7300C8: FStStr var_F0
  loc_7300CB: LitI4 1
  loc_7300D0: LitI4 1
  loc_7300D5: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_7300DA: FStVarCopyObj var_248
  loc_7300DD: FLdRfVar var_248
  loc_7300E0: FLdZeroAd var_F0
  loc_7300E3: CVarStr var_210
  loc_7300E6: ImpAdCallI2 Format$(, )
  loc_7300EB: FStStr var_368
  loc_7300EE: FLdRfVar var_212
  loc_7300F1: ILdRf arg_18
  loc_7300F4: ILdRf var_344
  loc_7300F7: CVarStr var_120
  loc_7300FA: FLdRfVar var_100
  loc_7300FD: ConcatVar var_110
  loc_730101: FLdZeroAd var_E8
  loc_730104: CVarStr var_190
  loc_730107: ConcatVar var_1A0
  loc_73010B: FLdRfVar var_1C0
  loc_73010E: ConcatVar var_1F0
  loc_730112: FLdZeroAd var_368
  loc_730115: CVarStr var_258
  loc_730118: ConcatVar var_268
  loc_73011C: CStrVarTmp
  loc_73011D: PopTmpLdAdStr
  loc_730121: ILdPr
  loc_730124:  = Me.ForeColor
  loc_730129: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730136: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730153: FLdRfVar var_212
  loc_730156: ILdRf arg_18
  loc_730159: LitStr " "
  loc_73015C: FStStrCopy var_D8
  loc_73015F: FLdRfVar var_D8
  loc_730162: ILdPr
  loc_730165:  = Me.ForeColor
  loc_73016A: FFree1Str var_D8
  loc_73016D: FLdRfVar var_212
  loc_730170: ILdRf arg_18
  loc_730173: ILdRf var_34C
  loc_730176: LitStr " "
  loc_730179: ConcatStr
  loc_73017A: FStStrNoPop var_D8
  loc_73017D: ImpAdLdPr unk_452A0F
  loc_730180: MemLdFPR8 global_20
  loc_730183: CStrR8
  loc_730185: FStStrNoPop var_E0
  loc_730188: ConcatStr
  loc_730189: PopTmpLdAdStr
  loc_73018D: ILdPr
  loc_730190:  = Me.ForeColor
  loc_730195: FFreeStr var_D8 = "": var_E0 = ""
  loc_73019E: FLdRfVar var_212
  loc_7301A1: ILdRf arg_18
  loc_7301A4: ILdRf var_348
  loc_7301A7: LitStr " "
  loc_7301AA: ConcatStr
  loc_7301AB: FStStrNoPop var_D8
  loc_7301AE: ImpAdLdPr unk_452A0F
  loc_7301B1: MemLdStr global_16
  loc_7301B4: CStrI4
  loc_7301B6: FStStrNoPop var_E0
  loc_7301B9: ConcatStr
  loc_7301BA: PopTmpLdAdStr
  loc_7301BE: ILdPr
  loc_7301C1:  = Me.ForeColor
  loc_7301C6: FFreeStr var_D8 = "": var_E0 = ""
  loc_7301CF: Branch loc_730FF9
  loc_7301D2: ILdRf var_364
  loc_7301D5: LitI4 2
  loc_7301DA: EqI4
  loc_7301DB: BranchF loc_730FF9
  loc_7301DE: ImpAdLdI4 MemVar_74C73C
  loc_7301E1: LitI2_Byte 1
  loc_7301E3: FnUBound
  loc_7301E5: LitI4 1
  loc_7301EA: GtI4
  loc_7301EB: BranchF loc_7309C2
  loc_7301EE: LitVar_Missing var_120
  loc_7301F1: PopAdLdVar
  loc_7301F2: LitStr "_________________________________________________________________________________________________________"
  loc_7301F5: FLdPrThis
  loc_7301F6: VCallAd Control_ID_List1
  loc_7301F9: FStAdFunc var_D0
  loc_7301FC: FLdPr var_D0
  loc_7301FF: Me.AddItem from_stack_1, from_stack_2
  loc_730204: FFree1Ad var_D0
  loc_730207: LitI4 &H26
  loc_73020C: FLdRfVar var_100
  loc_73020F: ImpAdCallFPR4  = Space()
  loc_730214: LitI4 1
  loc_730219: LitI4 1
  loc_73021E: ImpAdLdRf MemVar_74C364
  loc_730221: CVarRef
  loc_730226: FLdRfVar var_C0
  loc_730229: CVarRef
  loc_73022E: ImpAdCallI2 Format$(, )
  loc_730233: FStStr var_E0
  loc_730236: LitI4 1
  loc_73023B: LitI4 1
  loc_730240: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730245: FStVarCopyObj var_180
  loc_730248: FLdRfVar var_180
  loc_73024B: FLdZeroAd var_E0
  loc_73024E: CVarStr var_150
  loc_730251: ImpAdCallI2 Format$(, )
  loc_730256: FStStr var_E8
  loc_730259: LitI4 1
  loc_73025E: FLdRfVar var_1C0
  loc_730261: ImpAdCallFPR4  = Space()
  loc_730266: LitI4 1
  loc_73026B: LitI4 1
  loc_730270: LitVarStr var_1B0, "#######0.00"
  loc_730275: FStVarCopyObj var_200
  loc_730278: FLdRfVar var_200
  loc_73027B: FLdRfVar var_C4
  loc_73027E: CVarRef
  loc_730283: ImpAdCallI2 Format$(, )
  loc_730288: FStStr var_F0
  loc_73028B: LitI4 1
  loc_730290: LitI4 1
  loc_730295: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_73029A: FStVarCopyObj var_248
  loc_73029D: FLdRfVar var_248
  loc_7302A0: FLdZeroAd var_F0
  loc_7302A3: CVarStr var_210
  loc_7302A6: ImpAdCallI2 Format$(, )
  loc_7302AB: FStStr var_368
  loc_7302AE: LitVar_Missing var_1E0
  loc_7302B1: PopAdLdVar
  loc_7302B2: ILdRf var_33C
  loc_7302B5: CVarStr var_120
  loc_7302B8: FLdRfVar var_100
  loc_7302BB: ConcatVar var_110
  loc_7302BF: FLdZeroAd var_E8
  loc_7302C2: CVarStr var_190
  loc_7302C5: ConcatVar var_1A0
  loc_7302C9: FLdRfVar var_1C0
  loc_7302CC: ConcatVar var_1F0
  loc_7302D0: FLdZeroAd var_368
  loc_7302D3: CVarStr var_258
  loc_7302D6: ConcatVar var_268
  loc_7302DA: CStrVarVal var_D8
  loc_7302DE: FLdPrThis
  loc_7302DF: VCallAd Control_ID_List1
  loc_7302E2: FStAdFunc var_D0
  loc_7302E5: FLdPr var_D0
  loc_7302E8: Me.AddItem from_stack_1, from_stack_2
  loc_7302ED: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_7302FA: FFree1Ad var_D0
  loc_7302FD: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_73031A: LitVar_Missing var_120
  loc_73031D: PopAdLdVar
  loc_73031E: LitStr vbNullString
  loc_730321: FLdPrThis
  loc_730322: VCallAd Control_ID_List1
  loc_730325: FStAdFunc var_D0
  loc_730328: FLdPr var_D0
  loc_73032B: Me.AddItem from_stack_1, from_stack_2
  loc_730330: FFree1Ad var_D0
  loc_730333: LitVar_Missing var_120
  loc_730336: PopAdLdVar
  loc_730337: ILdRf var_340
  loc_73033A: LitStr " "
  loc_73033D: ConcatStr
  loc_73033E: FStStrNoPop var_D8
  loc_730341: ILdRf var_8C
  loc_730344: FnLenStr
  loc_730345: LitI4 &H30
  loc_73034A: IDvI4
  loc_73034B: CStrI4
  loc_73034D: FStStrNoPop var_E0
  loc_730350: ConcatStr
  loc_730351: FStStrNoPop var_E8
  loc_730354: FLdPrThis
  loc_730355: VCallAd Control_ID_List1
  loc_730358: FStAdFunc var_D0
  loc_73035B: FLdPr var_D0
  loc_73035E: Me.AddItem from_stack_1, from_stack_2
  loc_730363: FFreeStr var_D8 = "": var_E0 = ""
  loc_73036C: FFree1Ad var_D0
  loc_73036F: LitVar_Missing var_120
  loc_730372: PopAdLdVar
  loc_730373: LitStr vbNullString
  loc_730376: FLdPrThis
  loc_730377: VCallAd Control_ID_List1
  loc_73037A: FStAdFunc var_D0
  loc_73037D: FLdPr var_D0
  loc_730380: Me.AddItem from_stack_1, from_stack_2
  loc_730385: FFree1Ad var_D0
  loc_730388: LitVar_Missing var_120
  loc_73038B: PopAdLdVar
  loc_73038C: LitStr vbNullString
  loc_73038F: FLdPrThis
  loc_730390: VCallAd Control_ID_List1
  loc_730393: FStAdFunc var_D0
  loc_730396: FLdPr var_D0
  loc_730399: Me.AddItem from_stack_1, from_stack_2
  loc_73039E: FFree1Ad var_D0
  loc_7303A1: FLdPr Me
  loc_7303A4: MemLdI2 global_120
  loc_7303A7: LitI2_Byte 1
  loc_7303A9: EqI2
  loc_7303AA: BranchF loc_730589
  loc_7303AD: FLdI2 var_88
  loc_7303B0: LitI2_Byte &HFF
  loc_7303B2: EqI2
  loc_7303B3: FLdI2 var_86
  loc_7303B6: LitI2_Byte &HFF
  loc_7303B8: EqI2
  loc_7303B9: AndI4
  loc_7303BA: BranchF loc_730473
  loc_7303BD: LitI4 &H2A
  loc_7303C2: FLdRfVar var_100
  loc_7303C5: ImpAdCallFPR4  = Space()
  loc_7303CA: LitI4 1
  loc_7303CF: LitI4 1
  loc_7303D4: ImpAdLdRf MemVar_74C364
  loc_7303D7: CVarRef
  loc_7303DC: FLdRfVar var_C0
  loc_7303DF: CVarRef
  loc_7303E4: ImpAdCallI2 Format$(, )
  loc_7303E9: FStStr var_E0
  loc_7303EC: LitI4 1
  loc_7303F1: LitI4 1
  loc_7303F6: LitVarStr var_160, "@@@@@@@@@@@"
  loc_7303FB: FStVarCopyObj var_180
  loc_7303FE: FLdRfVar var_180
  loc_730401: FLdZeroAd var_E0
  loc_730404: CVarStr var_150
  loc_730407: ImpAdCallI2 Format$(, )
  loc_73040C: FStStr var_E8
  loc_73040F: LitI4 &HC
  loc_730414: FLdRfVar var_1C0
  loc_730417: ImpAdCallFPR4  = Space()
  loc_73041C: LitVar_Missing var_170
  loc_73041F: PopAdLdVar
  loc_730420: ILdRf var_344
  loc_730423: CVarStr var_120
  loc_730426: FLdRfVar var_100
  loc_730429: ConcatVar var_110
  loc_73042D: FLdZeroAd var_E8
  loc_730430: CVarStr var_190
  loc_730433: ConcatVar var_1A0
  loc_730437: FLdRfVar var_1C0
  loc_73043A: ConcatVar var_1F0
  loc_73043E: CStrVarVal var_D8
  loc_730442: FLdPrThis
  loc_730443: VCallAd Control_ID_List1
  loc_730446: FStAdFunc var_D0
  loc_730449: FLdPr var_D0
  loc_73044C: Me.AddItem from_stack_1, from_stack_2
  loc_730451: FFreeStr var_D8 = "": var_E0 = ""
  loc_73045A: FFree1Ad var_D0
  loc_73045D: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = ""
  loc_730470: Branch loc_730586
  loc_730473: LitI4 &H2A
  loc_730478: FLdRfVar var_100
  loc_73047B: ImpAdCallFPR4  = Space()
  loc_730480: LitI4 1
  loc_730485: LitI4 1
  loc_73048A: ImpAdLdRf MemVar_74C364
  loc_73048D: CVarRef
  loc_730492: FLdRfVar var_C0
  loc_730495: CVarRef
  loc_73049A: ImpAdCallI2 Format$(, )
  loc_73049F: FStStr var_E0
  loc_7304A2: LitI4 1
  loc_7304A7: LitI4 1
  loc_7304AC: LitVarStr var_160, "@@@@@@@@@@@"
  loc_7304B1: FStVarCopyObj var_180
  loc_7304B4: FLdRfVar var_180
  loc_7304B7: FLdZeroAd var_E0
  loc_7304BA: CVarStr var_150
  loc_7304BD: ImpAdCallI2 Format$(, )
  loc_7304C2: FStStr var_E8
  loc_7304C5: LitI4 1
  loc_7304CA: FLdRfVar var_1C0
  loc_7304CD: ImpAdCallFPR4  = Space()
  loc_7304D2: LitI4 1
  loc_7304D7: LitI4 1
  loc_7304DC: LitVarStr var_1B0, "#######0.00"
  loc_7304E1: FStVarCopyObj var_200
  loc_7304E4: FLdRfVar var_200
  loc_7304E7: FLdRfVar var_C4
  loc_7304EA: CVarRef
  loc_7304EF: ImpAdCallI2 Format$(, )
  loc_7304F4: FStStr var_F0
  loc_7304F7: LitI4 1
  loc_7304FC: LitI4 1
  loc_730501: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_730506: FStVarCopyObj var_248
  loc_730509: FLdRfVar var_248
  loc_73050C: FLdZeroAd var_F0
  loc_73050F: CVarStr var_210
  loc_730512: ImpAdCallI2 Format$(, )
  loc_730517: FStStr var_368
  loc_73051A: LitVar_Missing var_1E0
  loc_73051D: PopAdLdVar
  loc_73051E: ILdRf var_344
  loc_730521: CVarStr var_120
  loc_730524: FLdRfVar var_100
  loc_730527: ConcatVar var_110
  loc_73052B: FLdZeroAd var_E8
  loc_73052E: CVarStr var_190
  loc_730531: ConcatVar var_1A0
  loc_730535: FLdRfVar var_1C0
  loc_730538: ConcatVar var_1F0
  loc_73053C: FLdZeroAd var_368
  loc_73053F: CVarStr var_258
  loc_730542: ConcatVar var_268
  loc_730546: CStrVarVal var_D8
  loc_73054A: FLdPrThis
  loc_73054B: VCallAd Control_ID_List1
  loc_73054E: FStAdFunc var_D0
  loc_730551: FLdPr var_D0
  loc_730554: Me.AddItem from_stack_1, from_stack_2
  loc_730559: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730566: FFree1Ad var_D0
  loc_730569: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730586: Branch loc_7307CA
  loc_730589: FLdPr Me
  loc_73058C: MemLdI2 global_120
  loc_73058F: LitI2_Byte 2
  loc_730591: EqI2
  loc_730592: BranchF loc_7306AB
  loc_730595: LitI4 &H2A
  loc_73059A: FLdRfVar var_100
  loc_73059D: ImpAdCallFPR4  = Space()
  loc_7305A2: LitI4 1
  loc_7305A7: LitI4 1
  loc_7305AC: ImpAdLdRf MemVar_74C364
  loc_7305AF: CVarRef
  loc_7305B4: FLdRfVar var_C0
  loc_7305B7: CVarRef
  loc_7305BC: ImpAdCallI2 Format$(, )
  loc_7305C1: FStStr var_E0
  loc_7305C4: LitI4 1
  loc_7305C9: LitI4 1
  loc_7305CE: LitVarStr var_160, "@@@@@@@@@@@"
  loc_7305D3: FStVarCopyObj var_180
  loc_7305D6: FLdRfVar var_180
  loc_7305D9: FLdZeroAd var_E0
  loc_7305DC: CVarStr var_150
  loc_7305DF: ImpAdCallI2 Format$(, )
  loc_7305E4: FStStr var_E8
  loc_7305E7: LitI4 1
  loc_7305EC: FLdRfVar var_1C0
  loc_7305EF: ImpAdCallFPR4  = Space()
  loc_7305F4: LitI4 1
  loc_7305F9: LitI4 1
  loc_7305FE: LitVarStr var_1B0, "#######0.00"
  loc_730603: FStVarCopyObj var_200
  loc_730606: FLdRfVar var_200
  loc_730609: FLdRfVar var_C4
  loc_73060C: CVarRef
  loc_730611: ImpAdCallI2 Format$(, )
  loc_730616: FStStr var_F0
  loc_730619: LitI4 1
  loc_73061E: LitI4 1
  loc_730623: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_730628: FStVarCopyObj var_248
  loc_73062B: FLdRfVar var_248
  loc_73062E: FLdZeroAd var_F0
  loc_730631: CVarStr var_210
  loc_730634: ImpAdCallI2 Format$(, )
  loc_730639: FStStr var_368
  loc_73063C: LitVar_Missing var_1E0
  loc_73063F: PopAdLdVar
  loc_730640: ILdRf var_344
  loc_730643: CVarStr var_120
  loc_730646: FLdRfVar var_100
  loc_730649: ConcatVar var_110
  loc_73064D: FLdZeroAd var_E8
  loc_730650: CVarStr var_190
  loc_730653: ConcatVar var_1A0
  loc_730657: FLdRfVar var_1C0
  loc_73065A: ConcatVar var_1F0
  loc_73065E: FLdZeroAd var_368
  loc_730661: CVarStr var_258
  loc_730664: ConcatVar var_268
  loc_730668: CStrVarVal var_D8
  loc_73066C: FLdPrThis
  loc_73066D: VCallAd Control_ID_List1
  loc_730670: FStAdFunc var_D0
  loc_730673: FLdPr var_D0
  loc_730676: Me.AddItem from_stack_1, from_stack_2
  loc_73067B: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730688: FFree1Ad var_D0
  loc_73068B: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_7306A8: Branch loc_7307CA
  loc_7306AB: FLdPr Me
  loc_7306AE: MemLdI2 global_120
  loc_7306B1: LitI2_Byte 3
  loc_7306B3: EqI2
  loc_7306B4: BranchF loc_7307CA
  loc_7306B7: LitI4 &H2A
  loc_7306BC: FLdRfVar var_100
  loc_7306BF: ImpAdCallFPR4  = Space()
  loc_7306C4: LitI4 1
  loc_7306C9: LitI4 1
  loc_7306CE: ImpAdLdRf MemVar_74C364
  loc_7306D1: CVarRef
  loc_7306D6: FLdRfVar var_C0
  loc_7306D9: CVarRef
  loc_7306DE: ImpAdCallI2 Format$(, )
  loc_7306E3: FStStr var_E0
  loc_7306E6: LitI4 1
  loc_7306EB: LitI4 1
  loc_7306F0: LitVarStr var_160, "@@@@@@@@@@@"
  loc_7306F5: FStVarCopyObj var_180
  loc_7306F8: FLdRfVar var_180
  loc_7306FB: FLdZeroAd var_E0
  loc_7306FE: CVarStr var_150
  loc_730701: ImpAdCallI2 Format$(, )
  loc_730706: FStStr var_E8
  loc_730709: LitI4 1
  loc_73070E: FLdRfVar var_1C0
  loc_730711: ImpAdCallFPR4  = Space()
  loc_730716: LitI4 1
  loc_73071B: LitI4 1
  loc_730720: LitVarStr var_1B0, "#######0.00"
  loc_730725: FStVarCopyObj var_200
  loc_730728: FLdRfVar var_200
  loc_73072B: FLdRfVar var_C4
  loc_73072E: CVarRef
  loc_730733: ImpAdCallI2 Format$(, )
  loc_730738: FStStr var_F0
  loc_73073B: LitI4 1
  loc_730740: LitI4 1
  loc_730745: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_73074A: FStVarCopyObj var_248
  loc_73074D: FLdRfVar var_248
  loc_730750: FLdZeroAd var_F0
  loc_730753: CVarStr var_210
  loc_730756: ImpAdCallI2 Format$(, )
  loc_73075B: FStStr var_368
  loc_73075E: LitVar_Missing var_1E0
  loc_730761: PopAdLdVar
  loc_730762: ILdRf var_344
  loc_730765: CVarStr var_120
  loc_730768: FLdRfVar var_100
  loc_73076B: ConcatVar var_110
  loc_73076F: FLdZeroAd var_E8
  loc_730772: CVarStr var_190
  loc_730775: ConcatVar var_1A0
  loc_730779: FLdRfVar var_1C0
  loc_73077C: ConcatVar var_1F0
  loc_730780: FLdZeroAd var_368
  loc_730783: CVarStr var_258
  loc_730786: ConcatVar var_268
  loc_73078A: CStrVarVal var_D8
  loc_73078E: FLdPrThis
  loc_73078F: VCallAd Control_ID_List1
  loc_730792: FStAdFunc var_D0
  loc_730795: FLdPr var_D0
  loc_730798: Me.AddItem from_stack_1, from_stack_2
  loc_73079D: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_7307AA: FFree1Ad var_D0
  loc_7307AD: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_7307CA: LitVar_Missing var_120
  loc_7307CD: PopAdLdVar
  loc_7307CE: LitStr vbNullString
  loc_7307D1: FLdPrThis
  loc_7307D2: VCallAd Control_ID_List1
  loc_7307D5: FStAdFunc var_D0
  loc_7307D8: FLdPr var_D0
  loc_7307DB: Me.AddItem from_stack_1, from_stack_2
  loc_7307E0: FFree1Ad var_D0
  loc_7307E3: LitVar_Missing var_120
  loc_7307E6: PopAdLdVar
  loc_7307E7: ILdRf var_34C
  loc_7307EA: LitStr " "
  loc_7307ED: ConcatStr
  loc_7307EE: FStStrNoPop var_D8
  loc_7307F1: ImpAdLdPr unk_452A0F
  loc_7307F4: MemLdFPR8 global_20
  loc_7307F7: CStrR8
  loc_7307F9: FStStrNoPop var_E0
  loc_7307FC: ConcatStr
  loc_7307FD: FStStrNoPop var_E8
  loc_730800: FLdPrThis
  loc_730801: VCallAd Control_ID_List1
  loc_730804: FStAdFunc var_D0
  loc_730807: FLdPr var_D0
  loc_73080A: Me.AddItem from_stack_1, from_stack_2
  loc_73080F: FFreeStr var_D8 = "": var_E0 = ""
  loc_730818: FFree1Ad var_D0
  loc_73081B: LitVar_Missing var_120
  loc_73081E: PopAdLdVar
  loc_73081F: ILdRf var_348
  loc_730822: LitStr " "
  loc_730825: ConcatStr
  loc_730826: FStStrNoPop var_D8
  loc_730829: ImpAdLdPr unk_452A0F
  loc_73082C: MemLdStr global_16
  loc_73082F: CStrI4
  loc_730831: FStStrNoPop var_E0
  loc_730834: ConcatStr
  loc_730835: FStStrNoPop var_E8
  loc_730838: FLdPrThis
  loc_730839: VCallAd Control_ID_List1
  loc_73083C: FStAdFunc var_D0
  loc_73083F: FLdPr var_D0
  loc_730842: Me.AddItem from_stack_1, from_stack_2
  loc_730847: FFreeStr var_D8 = "": var_E0 = ""
  loc_730850: FFree1Ad var_D0
  loc_730853: LitVar_Missing var_120
  loc_730856: PopAdLdVar
  loc_730857: LitStr vbNullString
  loc_73085A: FLdPrThis
  loc_73085B: VCallAd Control_ID_List1
  loc_73085E: FStAdFunc var_D0
  loc_730861: FLdPr var_D0
  loc_730864: Me.AddItem from_stack_1, from_stack_2
  loc_730869: FFree1Ad var_D0
  loc_73086C: FLdRfVar var_E0
  loc_73086F: LitVar_Missing var_210
  loc_730872: LitVar_Missing var_200
  loc_730875: LitVar_Missing var_1F0
  loc_730878: LitVar_Missing var_1C0
  loc_73087B: LitVar_Missing var_1A0
  loc_73087E: LitVar_Missing var_190
  loc_730881: LitVar_Missing var_180
  loc_730884: LitVar_Missing var_150
  loc_730887: LitVar_Missing var_110
  loc_73088A: LitVar_Missing var_100
  loc_73088D: LitStr "Rango de la Sección"
  loc_730890: FStStrCopy var_D8
  loc_730893: FLdRfVar var_D8
  loc_730896: LitI4 &H3E
  loc_73089B: PopTmpLdAdStr var_360
  loc_73089E: LitI2_Byte &H1B
  loc_7308A0: PopTmpLdAd2 var_212
  loc_7308A3: ImpAdLdRf MemVar_74C7D0
  loc_7308A6: NewIfNullPr clsMsg
  loc_7308A9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_7308AE: LitVar_Missing var_338
  loc_7308B1: PopAdLdVar
  loc_7308B2: ILdRf var_E0
  loc_7308B5: FLdPrThis
  loc_7308B6: VCallAd Control_ID_List1
  loc_7308B9: FStAdFunc var_D0
  loc_7308BC: FLdPr var_D0
  loc_7308BF: Me.AddItem from_stack_1, from_stack_2
  loc_7308C4: FFreeStr var_D8 = ""
  loc_7308CB: FFree1Ad var_D0
  loc_7308CE: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_7308E5: LitStr ";"
  loc_7308E8: LitI2_Byte 1
  loc_7308EA: FLdPr Me
  loc_7308ED: MemLdI2 global_80
  loc_7308F0: CI4UI1
  loc_7308F1: ImpAdLdI4 MemVar_74C73C
  loc_7308F4: AryLock
  loc_7308F7: Ary1LdRf
  loc_7308F8: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_7308FD: FStStr var_E0
  loc_730900: AryUnlock
  loc_730903: FLdZeroAd var_E0
  loc_730906: PopTmpLdAdStr
  loc_73090A: ImpAdCallI2 Proc_158_13_618ED0()
  loc_73090F: FStStr var_370
  loc_730912: LitVar_Missing var_120
  loc_730915: PopAdLdVar
  loc_730916: LitStr "                   "
  loc_730919: ILdRf var_358
  loc_73091C: ConcatStr
  loc_73091D: FStStrNoPop var_D8
  loc_730920: LitStr " "
  loc_730923: ConcatStr
  loc_730924: FStStrNoPop var_F0
  loc_730927: FLdZeroAd var_370
  loc_73092A: FStStrNoPop var_368
  loc_73092D: ConcatStr
  loc_73092E: FStStrNoPop var_36C
  loc_730931: FLdPrThis
  loc_730932: VCallAd Control_ID_List1
  loc_730935: FStAdFunc var_D0
  loc_730938: FLdPr var_D0
  loc_73093B: Me.AddItem from_stack_1, from_stack_2
  loc_730940: FFreeStr var_D8 = "": var_E8 = "": var_F0 = "": var_368 = "": var_36C = ""
  loc_73094F: FFree1Ad var_D0
  loc_730952: LitStr ";"
  loc_730955: LitI2_Byte 2
  loc_730957: FLdPr Me
  loc_73095A: MemLdI2 global_80
  loc_73095D: CI4UI1
  loc_73095E: ImpAdLdI4 MemVar_74C73C
  loc_730961: AryLock
  loc_730964: Ary1LdRf
  loc_730965: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_73096A: FStStr var_E0
  loc_73096D: AryUnlock
  loc_730970: FLdZeroAd var_E0
  loc_730973: PopTmpLdAdStr
  loc_730977: ImpAdCallI2 Proc_158_13_618ED0()
  loc_73097C: FStStr var_370
  loc_73097F: LitVar_Missing var_120
  loc_730982: PopAdLdVar
  loc_730983: LitStr "                   "
  loc_730986: ILdRf var_35C
  loc_730989: ConcatStr
  loc_73098A: FStStrNoPop var_D8
  loc_73098D: LitStr " "
  loc_730990: ConcatStr
  loc_730991: FStStrNoPop var_F0
  loc_730994: FLdZeroAd var_370
  loc_730997: FStStrNoPop var_368
  loc_73099A: ConcatStr
  loc_73099B: FStStrNoPop var_36C
  loc_73099E: FLdPrThis
  loc_73099F: VCallAd Control_ID_List1
  loc_7309A2: FStAdFunc var_D0
  loc_7309A5: FLdPr var_D0
  loc_7309A8: Me.AddItem from_stack_1, from_stack_2
  loc_7309AD: FFreeStr var_D8 = "": var_E8 = "": var_F0 = "": var_368 = "": var_36C = ""
  loc_7309BC: FFree1Ad var_D0
  loc_7309BF: Branch loc_730FF9
  loc_7309C2: LitVar_Missing var_120
  loc_7309C5: PopAdLdVar
  loc_7309C6: LitStr "_________________________________________________________________________________________________________"
  loc_7309C9: FLdPrThis
  loc_7309CA: VCallAd Control_ID_List1
  loc_7309CD: FStAdFunc var_D0
  loc_7309D0: FLdPr var_D0
  loc_7309D3: Me.AddItem from_stack_1, from_stack_2
  loc_7309D8: FFree1Ad var_D0
  loc_7309DB: FLdPr Me
  loc_7309DE: MemLdI2 global_120
  loc_7309E1: LitI2_Byte 1
  loc_7309E3: EqI2
  loc_7309E4: BranchF loc_730BC3
  loc_7309E7: FLdI2 var_88
  loc_7309EA: LitI2_Byte &HFF
  loc_7309EC: EqI2
  loc_7309ED: FLdI2 var_86
  loc_7309F0: LitI2_Byte &HFF
  loc_7309F2: EqI2
  loc_7309F3: AndI4
  loc_7309F4: BranchF loc_730AAD
  loc_7309F7: LitI4 &H2A
  loc_7309FC: FLdRfVar var_100
  loc_7309FF: ImpAdCallFPR4  = Space()
  loc_730A04: LitI4 1
  loc_730A09: LitI4 1
  loc_730A0E: ImpAdLdRf MemVar_74C364
  loc_730A11: CVarRef
  loc_730A16: FLdRfVar var_C0
  loc_730A19: CVarRef
  loc_730A1E: ImpAdCallI2 Format$(, )
  loc_730A23: FStStr var_E0
  loc_730A26: LitI4 1
  loc_730A2B: LitI4 1
  loc_730A30: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730A35: FStVarCopyObj var_180
  loc_730A38: FLdRfVar var_180
  loc_730A3B: FLdZeroAd var_E0
  loc_730A3E: CVarStr var_150
  loc_730A41: ImpAdCallI2 Format$(, )
  loc_730A46: FStStr var_E8
  loc_730A49: LitI4 &HC
  loc_730A4E: FLdRfVar var_1C0
  loc_730A51: ImpAdCallFPR4  = Space()
  loc_730A56: LitVar_Missing var_170
  loc_730A59: PopAdLdVar
  loc_730A5A: ILdRf var_344
  loc_730A5D: CVarStr var_120
  loc_730A60: FLdRfVar var_100
  loc_730A63: ConcatVar var_110
  loc_730A67: FLdZeroAd var_E8
  loc_730A6A: CVarStr var_190
  loc_730A6D: ConcatVar var_1A0
  loc_730A71: FLdRfVar var_1C0
  loc_730A74: ConcatVar var_1F0
  loc_730A78: CStrVarVal var_D8
  loc_730A7C: FLdPrThis
  loc_730A7D: VCallAd Control_ID_List1
  loc_730A80: FStAdFunc var_D0
  loc_730A83: FLdPr var_D0
  loc_730A86: Me.AddItem from_stack_1, from_stack_2
  loc_730A8B: FFreeStr var_D8 = "": var_E0 = ""
  loc_730A94: FFree1Ad var_D0
  loc_730A97: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = ""
  loc_730AAA: Branch loc_730BC0
  loc_730AAD: LitI4 &H2A
  loc_730AB2: FLdRfVar var_100
  loc_730AB5: ImpAdCallFPR4  = Space()
  loc_730ABA: LitI4 1
  loc_730ABF: LitI4 1
  loc_730AC4: ImpAdLdRf MemVar_74C364
  loc_730AC7: CVarRef
  loc_730ACC: FLdRfVar var_C0
  loc_730ACF: CVarRef
  loc_730AD4: ImpAdCallI2 Format$(, )
  loc_730AD9: FStStr var_E0
  loc_730ADC: LitI4 1
  loc_730AE1: LitI4 1
  loc_730AE6: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730AEB: FStVarCopyObj var_180
  loc_730AEE: FLdRfVar var_180
  loc_730AF1: FLdZeroAd var_E0
  loc_730AF4: CVarStr var_150
  loc_730AF7: ImpAdCallI2 Format$(, )
  loc_730AFC: FStStr var_E8
  loc_730AFF: LitI4 1
  loc_730B04: FLdRfVar var_1C0
  loc_730B07: ImpAdCallFPR4  = Space()
  loc_730B0C: LitI4 1
  loc_730B11: LitI4 1
  loc_730B16: LitVarStr var_1B0, "#######0.00"
  loc_730B1B: FStVarCopyObj var_200
  loc_730B1E: FLdRfVar var_200
  loc_730B21: FLdRfVar var_C4
  loc_730B24: CVarRef
  loc_730B29: ImpAdCallI2 Format$(, )
  loc_730B2E: FStStr var_F0
  loc_730B31: LitI4 1
  loc_730B36: LitI4 1
  loc_730B3B: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_730B40: FStVarCopyObj var_248
  loc_730B43: FLdRfVar var_248
  loc_730B46: FLdZeroAd var_F0
  loc_730B49: CVarStr var_210
  loc_730B4C: ImpAdCallI2 Format$(, )
  loc_730B51: FStStr var_368
  loc_730B54: LitVar_Missing var_1E0
  loc_730B57: PopAdLdVar
  loc_730B58: ILdRf var_344
  loc_730B5B: CVarStr var_120
  loc_730B5E: FLdRfVar var_100
  loc_730B61: ConcatVar var_110
  loc_730B65: FLdZeroAd var_E8
  loc_730B68: CVarStr var_190
  loc_730B6B: ConcatVar var_1A0
  loc_730B6F: FLdRfVar var_1C0
  loc_730B72: ConcatVar var_1F0
  loc_730B76: FLdZeroAd var_368
  loc_730B79: CVarStr var_258
  loc_730B7C: ConcatVar var_268
  loc_730B80: CStrVarVal var_D8
  loc_730B84: FLdPrThis
  loc_730B85: VCallAd Control_ID_List1
  loc_730B88: FStAdFunc var_D0
  loc_730B8B: FLdPr var_D0
  loc_730B8E: Me.AddItem from_stack_1, from_stack_2
  loc_730B93: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730BA0: FFree1Ad var_D0
  loc_730BA3: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730BC0: Branch loc_730E04
  loc_730BC3: FLdPr Me
  loc_730BC6: MemLdI2 global_120
  loc_730BC9: LitI2_Byte 2
  loc_730BCB: EqI2
  loc_730BCC: BranchF loc_730CE5
  loc_730BCF: LitI4 &H2A
  loc_730BD4: FLdRfVar var_100
  loc_730BD7: ImpAdCallFPR4  = Space()
  loc_730BDC: LitI4 1
  loc_730BE1: LitI4 1
  loc_730BE6: ImpAdLdRf MemVar_74C364
  loc_730BE9: CVarRef
  loc_730BEE: FLdRfVar var_C0
  loc_730BF1: CVarRef
  loc_730BF6: ImpAdCallI2 Format$(, )
  loc_730BFB: FStStr var_E0
  loc_730BFE: LitI4 1
  loc_730C03: LitI4 1
  loc_730C08: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730C0D: FStVarCopyObj var_180
  loc_730C10: FLdRfVar var_180
  loc_730C13: FLdZeroAd var_E0
  loc_730C16: CVarStr var_150
  loc_730C19: ImpAdCallI2 Format$(, )
  loc_730C1E: FStStr var_E8
  loc_730C21: LitI4 1
  loc_730C26: FLdRfVar var_1C0
  loc_730C29: ImpAdCallFPR4  = Space()
  loc_730C2E: LitI4 1
  loc_730C33: LitI4 1
  loc_730C38: LitVarStr var_1B0, "#######0.00"
  loc_730C3D: FStVarCopyObj var_200
  loc_730C40: FLdRfVar var_200
  loc_730C43: FLdRfVar var_C4
  loc_730C46: CVarRef
  loc_730C4B: ImpAdCallI2 Format$(, )
  loc_730C50: FStStr var_F0
  loc_730C53: LitI4 1
  loc_730C58: LitI4 1
  loc_730C5D: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_730C62: FStVarCopyObj var_248
  loc_730C65: FLdRfVar var_248
  loc_730C68: FLdZeroAd var_F0
  loc_730C6B: CVarStr var_210
  loc_730C6E: ImpAdCallI2 Format$(, )
  loc_730C73: FStStr var_368
  loc_730C76: LitVar_Missing var_1E0
  loc_730C79: PopAdLdVar
  loc_730C7A: ILdRf var_344
  loc_730C7D: CVarStr var_120
  loc_730C80: FLdRfVar var_100
  loc_730C83: ConcatVar var_110
  loc_730C87: FLdZeroAd var_E8
  loc_730C8A: CVarStr var_190
  loc_730C8D: ConcatVar var_1A0
  loc_730C91: FLdRfVar var_1C0
  loc_730C94: ConcatVar var_1F0
  loc_730C98: FLdZeroAd var_368
  loc_730C9B: CVarStr var_258
  loc_730C9E: ConcatVar var_268
  loc_730CA2: CStrVarVal var_D8
  loc_730CA6: FLdPrThis
  loc_730CA7: VCallAd Control_ID_List1
  loc_730CAA: FStAdFunc var_D0
  loc_730CAD: FLdPr var_D0
  loc_730CB0: Me.AddItem from_stack_1, from_stack_2
  loc_730CB5: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730CC2: FFree1Ad var_D0
  loc_730CC5: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730CE2: Branch loc_730E04
  loc_730CE5: FLdPr Me
  loc_730CE8: MemLdI2 global_120
  loc_730CEB: LitI2_Byte 3
  loc_730CED: EqI2
  loc_730CEE: BranchF loc_730E04
  loc_730CF1: LitI4 &H2A
  loc_730CF6: FLdRfVar var_100
  loc_730CF9: ImpAdCallFPR4  = Space()
  loc_730CFE: LitI4 1
  loc_730D03: LitI4 1
  loc_730D08: ImpAdLdRf MemVar_74C364
  loc_730D0B: CVarRef
  loc_730D10: FLdRfVar var_C0
  loc_730D13: CVarRef
  loc_730D18: ImpAdCallI2 Format$(, )
  loc_730D1D: FStStr var_E0
  loc_730D20: LitI4 1
  loc_730D25: LitI4 1
  loc_730D2A: LitVarStr var_160, "@@@@@@@@@@@"
  loc_730D2F: FStVarCopyObj var_180
  loc_730D32: FLdRfVar var_180
  loc_730D35: FLdZeroAd var_E0
  loc_730D38: CVarStr var_150
  loc_730D3B: ImpAdCallI2 Format$(, )
  loc_730D40: FStStr var_E8
  loc_730D43: LitI4 1
  loc_730D48: FLdRfVar var_1C0
  loc_730D4B: ImpAdCallFPR4  = Space()
  loc_730D50: LitI4 1
  loc_730D55: LitI4 1
  loc_730D5A: LitVarStr var_1B0, "#######0.00"
  loc_730D5F: FStVarCopyObj var_200
  loc_730D62: FLdRfVar var_200
  loc_730D65: FLdRfVar var_C4
  loc_730D68: CVarRef
  loc_730D6D: ImpAdCallI2 Format$(, )
  loc_730D72: FStStr var_F0
  loc_730D75: LitI4 1
  loc_730D7A: LitI4 1
  loc_730D7F: LitVarStr var_1D0, "@@@@@@@@@@@"
  loc_730D84: FStVarCopyObj var_248
  loc_730D87: FLdRfVar var_248
  loc_730D8A: FLdZeroAd var_F0
  loc_730D8D: CVarStr var_210
  loc_730D90: ImpAdCallI2 Format$(, )
  loc_730D95: FStStr var_368
  loc_730D98: LitVar_Missing var_1E0
  loc_730D9B: PopAdLdVar
  loc_730D9C: ILdRf var_344
  loc_730D9F: CVarStr var_120
  loc_730DA2: FLdRfVar var_100
  loc_730DA5: ConcatVar var_110
  loc_730DA9: FLdZeroAd var_E8
  loc_730DAC: CVarStr var_190
  loc_730DAF: ConcatVar var_1A0
  loc_730DB3: FLdRfVar var_1C0
  loc_730DB6: ConcatVar var_1F0
  loc_730DBA: FLdZeroAd var_368
  loc_730DBD: CVarStr var_258
  loc_730DC0: ConcatVar var_268
  loc_730DC4: CStrVarVal var_D8
  loc_730DC8: FLdPrThis
  loc_730DC9: VCallAd Control_ID_List1
  loc_730DCC: FStAdFunc var_D0
  loc_730DCF: FLdPr var_D0
  loc_730DD2: Me.AddItem from_stack_1, from_stack_2
  loc_730DD7: FFreeStr var_D8 = "": var_E0 = "": var_E8 = "": var_F0 = ""
  loc_730DE4: FFree1Ad var_D0
  loc_730DE7: FFreeVar var_100 = "": var_150 = "": var_180 = "": var_110 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_200 = "": var_210 = "": var_248 = "": var_1F0 = "": var_258 = ""
  loc_730E04: LitVar_Missing var_120
  loc_730E07: PopAdLdVar
  loc_730E08: LitStr vbNullString
  loc_730E0B: FLdPrThis
  loc_730E0C: VCallAd Control_ID_List1
  loc_730E0F: FStAdFunc var_D0
  loc_730E12: FLdPr var_D0
  loc_730E15: Me.AddItem from_stack_1, from_stack_2
  loc_730E1A: FFree1Ad var_D0
  loc_730E1D: LitVar_Missing var_120
  loc_730E20: PopAdLdVar
  loc_730E21: ILdRf var_34C
  loc_730E24: LitStr " "
  loc_730E27: ConcatStr
  loc_730E28: FStStrNoPop var_D8
  loc_730E2B: ImpAdLdPr unk_452A0F
  loc_730E2E: MemLdFPR8 global_20
  loc_730E31: CStrR8
  loc_730E33: FStStrNoPop var_E0
  loc_730E36: ConcatStr
  loc_730E37: FStStrNoPop var_E8
  loc_730E3A: FLdPrThis
  loc_730E3B: VCallAd Control_ID_List1
  loc_730E3E: FStAdFunc var_D0
  loc_730E41: FLdPr var_D0
  loc_730E44: Me.AddItem from_stack_1, from_stack_2
  loc_730E49: FFreeStr var_D8 = "": var_E0 = ""
  loc_730E52: FFree1Ad var_D0
  loc_730E55: LitVar_Missing var_120
  loc_730E58: PopAdLdVar
  loc_730E59: ILdRf var_348
  loc_730E5C: LitStr " "
  loc_730E5F: ConcatStr
  loc_730E60: FStStrNoPop var_D8
  loc_730E63: ImpAdLdPr unk_452A0F
  loc_730E66: MemLdStr global_16
  loc_730E69: CStrI4
  loc_730E6B: FStStrNoPop var_E0
  loc_730E6E: ConcatStr
  loc_730E6F: FStStrNoPop var_E8
  loc_730E72: FLdPrThis
  loc_730E73: VCallAd Control_ID_List1
  loc_730E76: FStAdFunc var_D0
  loc_730E79: FLdPr var_D0
  loc_730E7C: Me.AddItem from_stack_1, from_stack_2
  loc_730E81: FFreeStr var_D8 = "": var_E0 = ""
  loc_730E8A: FFree1Ad var_D0
  loc_730E8D: LitVar_Missing var_120
  loc_730E90: PopAdLdVar
  loc_730E91: LitStr vbNullString
  loc_730E94: FLdPrThis
  loc_730E95: VCallAd Control_ID_List1
  loc_730E98: FStAdFunc var_D0
  loc_730E9B: FLdPr var_D0
  loc_730E9E: Me.AddItem from_stack_1, from_stack_2
  loc_730EA3: FFree1Ad var_D0
  loc_730EA6: FLdRfVar var_E0
  loc_730EA9: LitVar_Missing var_210
  loc_730EAC: LitVar_Missing var_200
  loc_730EAF: LitVar_Missing var_1F0
  loc_730EB2: LitVar_Missing var_1C0
  loc_730EB5: LitVar_Missing var_1A0
  loc_730EB8: LitVar_Missing var_190
  loc_730EBB: LitVar_Missing var_180
  loc_730EBE: LitVar_Missing var_150
  loc_730EC1: LitVar_Missing var_110
  loc_730EC4: LitVar_Missing var_100
  loc_730EC7: LitStr "Rango de la Sección"
  loc_730ECA: FStStrCopy var_D8
  loc_730ECD: FLdRfVar var_D8
  loc_730ED0: LitI4 &H3E
  loc_730ED5: PopTmpLdAdStr var_360
  loc_730ED8: LitI2_Byte &H1B
  loc_730EDA: PopTmpLdAd2 var_212
  loc_730EDD: ImpAdLdRf MemVar_74C7D0
  loc_730EE0: NewIfNullPr clsMsg
  loc_730EE3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_730EE8: LitVar_Missing var_338
  loc_730EEB: PopAdLdVar
  loc_730EEC: ILdRf var_E0
  loc_730EEF: FLdPrThis
  loc_730EF0: VCallAd Control_ID_List1
  loc_730EF3: FStAdFunc var_D0
  loc_730EF6: FLdPr var_D0
  loc_730EF9: Me.AddItem from_stack_1, from_stack_2
  loc_730EFE: FFreeStr var_D8 = ""
  loc_730F05: FFree1Ad var_D0
  loc_730F08: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = "": var_200 = ""
  loc_730F1F: LitStr ";"
  loc_730F22: LitI2_Byte 1
  loc_730F24: FLdPr Me
  loc_730F27: MemLdI2 global_80
  loc_730F2A: CI4UI1
  loc_730F2B: ImpAdLdI4 MemVar_74C73C
  loc_730F2E: AryLock
  loc_730F31: Ary1LdRf
  loc_730F32: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_730F37: FStStr var_E0
  loc_730F3A: AryUnlock
  loc_730F3D: FLdZeroAd var_E0
  loc_730F40: PopTmpLdAdStr
  loc_730F44: ImpAdCallI2 Proc_158_13_618ED0()
  loc_730F49: FStStr var_370
  loc_730F4C: LitVar_Missing var_120
  loc_730F4F: PopAdLdVar
  loc_730F50: LitStr "                   "
  loc_730F53: ILdRf var_358
  loc_730F56: ConcatStr
  loc_730F57: FStStrNoPop var_D8
  loc_730F5A: LitStr " "
  loc_730F5D: ConcatStr
  loc_730F5E: FStStrNoPop var_F0
  loc_730F61: FLdZeroAd var_370
  loc_730F64: FStStrNoPop var_368
  loc_730F67: ConcatStr
  loc_730F68: FStStrNoPop var_36C
  loc_730F6B: FLdPrThis
  loc_730F6C: VCallAd Control_ID_List1
  loc_730F6F: FStAdFunc var_D0
  loc_730F72: FLdPr var_D0
  loc_730F75: Me.AddItem from_stack_1, from_stack_2
  loc_730F7A: FFreeStr var_D8 = "": var_E8 = "": var_F0 = "": var_368 = "": var_36C = ""
  loc_730F89: FFree1Ad var_D0
  loc_730F8C: LitStr ";"
  loc_730F8F: LitI2_Byte 2
  loc_730F91: FLdPr Me
  loc_730F94: MemLdI2 global_80
  loc_730F97: CI4UI1
  loc_730F98: ImpAdLdI4 MemVar_74C73C
  loc_730F9B: AryLock
  loc_730F9E: Ary1LdRf
  loc_730F9F: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_730FA4: FStStr var_E0
  loc_730FA7: AryUnlock
  loc_730FAA: FLdZeroAd var_E0
  loc_730FAD: PopTmpLdAdStr
  loc_730FB1: ImpAdCallI2 Proc_158_13_618ED0()
  loc_730FB6: FStStr var_370
  loc_730FB9: LitVar_Missing var_120
  loc_730FBC: PopAdLdVar
  loc_730FBD: LitStr "                   "
  loc_730FC0: ILdRf var_35C
  loc_730FC3: ConcatStr
  loc_730FC4: FStStrNoPop var_D8
  loc_730FC7: LitStr " "
  loc_730FCA: ConcatStr
  loc_730FCB: FStStrNoPop var_F0
  loc_730FCE: FLdZeroAd var_370
  loc_730FD1: FStStrNoPop var_368
  loc_730FD4: ConcatStr
  loc_730FD5: FStStrNoPop var_36C
  loc_730FD8: FLdPrThis
  loc_730FD9: VCallAd Control_ID_List1
  loc_730FDC: FStAdFunc var_D0
  loc_730FDF: FLdPr var_D0
  loc_730FE2: Me.AddItem from_stack_1, from_stack_2
  loc_730FE7: FFreeStr var_D8 = "": var_E8 = "": var_F0 = "": var_368 = "": var_36C = ""
  loc_730FF6: FFree1Ad var_D0
  loc_730FF9: ExitProcHresult
  loc_730FFA: LitVar_Missing var_200
  loc_730FFD: LitVar_Missing var_1F0
  loc_731000: LitVar_Missing var_1C0
  loc_731003: LitI4 0
  loc_731008: LitVarStr var_120, "Se produjo un error: "
  loc_73100D: LitI4 &HD
  loc_731012: FLdRfVar var_100
  loc_731015: ImpAdCallFPR4  = Chr()
  loc_73101A: FLdRfVar var_100
  loc_73101D: ConcatVar var_110
  loc_731021: LitI4 &H19
  loc_731026: FLdRfVar var_150
  loc_731029: ImpAdCallFPR4  = Space()
  loc_73102E: FLdRfVar var_150
  loc_731031: ConcatVar var_180
  loc_731035: FLdRfVar var_D8
  loc_731038: ImpAdCallI2 Err 'rtcErrObj
  loc_73103D: FStAdFunc var_D0
  loc_731040: FLdPr var_D0
  loc_731043:  = Err.Description
  loc_731048: FLdZeroAd var_D8
  loc_73104B: CVarStr var_190
  loc_73104E: ConcatVar var_1A0
  loc_731052: ImpAdCallFPR4 MsgBox(, , , , )
  loc_731057: FFree1Ad var_D0
  loc_73105A: FFreeVar var_100 = "": var_110 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1F0 = ""
  loc_73106F: ExitProcHresult
End Function
