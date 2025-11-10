VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form FormadePago
  Caption = "Forma de Pago"
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
  ClientLeft = 3285
  ClientTop = 465
  ClientWidth = 5955
  ClientHeight = 7965
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin Threed.SSPanel Panel
    Index = 1
    Left = 0
    Top = 0
    Width = 5955
    Height = 7965
    TabIndex = 9
    OleObjectBlob = "FormadePago.frx":0000
    Begin VB.TextBox txtProducto
      Left = 2760
      Top = 4920
      Width = 2895
      Height = 405
      Enabled = 0   'False
      Text = "Producto"
      TabIndex = 27
      Alignment = 2 'Center
      Locked = -1  'True
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
    Begin VB.TextBox Tarjeta
      Left = 2760
      Top = 5400
      Width = 2895
      Height = 315
      Visible = 0   'False
      TabIndex = 28
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox NumeroTarjeta
      Left = 2760
      Top = 6120
      Width = 2895
      Height = 315
      Visible = 0   'False
      TabIndex = 29
      MaxLength = 20
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Threed.SSPanel SSPanel2
      Left = 2760
      Top = 2160
      Width = 2895
      Height = 2655
      TabIndex = 10
      OleObjectBlob = "FormadePago.frx":0079
      Begin VB.CommandButton cmdTank
        Caption = "16"
        Index = 15
        Left = 2040
        Top = 1920
        Width = 615
        Height = 615
        TabIndex = 26
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "15"
        Index = 14
        Left = 1440
        Top = 1920
        Width = 615
        Height = 615
        TabIndex = 25
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "14"
        Index = 13
        Left = 840
        Top = 1920
        Width = 615
        Height = 615
        TabIndex = 24
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "13"
        Index = 12
        Left = 240
        Top = 1920
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "12"
        Index = 11
        Left = 2040
        Top = 1320
        Width = 615
        Height = 615
        TabIndex = 22
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "11"
        Index = 10
        Left = 1440
        Top = 1320
        Width = 615
        Height = 615
        TabIndex = 21
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "10"
        Index = 9
        Left = 840
        Top = 1320
        Width = 615
        Height = 615
        TabIndex = 20
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "9"
        Index = 8
        Left = 240
        Top = 1320
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "8"
        Index = 7
        Left = 2040
        Top = 720
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "7"
        Index = 6
        Left = 1440
        Top = 720
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "6"
        Index = 5
        Left = 840
        Top = 720
        Width = 615
        Height = 615
        TabIndex = 16
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "5"
        Index = 4
        Left = 240
        Top = 720
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "4"
        Index = 3
        Left = 2040
        Top = 120
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "3"
        Index = 2
        Left = 1440
        Top = 120
        Width = 615
        Height = 615
        TabIndex = 13
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "2"
        Index = 1
        Left = 840
        Top = 120
        Width = 615
        Height = 615
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
        Style = 1
      End
      Begin VB.CommandButton cmdTank
        Caption = "1"
        Index = 0
        Left = 240
        Top = 120
        Width = 615
        Height = 615
        TabIndex = 11
        BeginProperty Font
          Name = "Arial"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Style = 1
      End
    End
    Begin Threed.SSPanel SSPanel1
      Index = 0
      Left = 240
      Top = 2160
      Width = 2175
      Height = 735
      TabIndex = 0
      OleObjectBlob = "FormadePago.frx":00F2
    End
    Begin Threed.SSPanel SSPanel1
      Index = 1
      Left = 240
      Top = 3960
      Width = 2175
      Height = 735
      TabIndex = 2
      OleObjectBlob = "FormadePago.frx":0177
    End
    Begin Threed.SSPanel SSPanel1
      Index = 2
      Left = 240
      Top = 4920
      Width = 2175
      Height = 735
      TabIndex = 3
      OleObjectBlob = "FormadePago.frx":0207
    End
    Begin Threed.SSPanel SSPanel1
      Index = 3
      Left = 240
      Top = 5880
      Width = 2175
      Height = 735
      TabIndex = 4
      OleObjectBlob = "FormadePago.frx":0297
    End
    Begin Threed.SSPanel Cancel
      Left = 3240
      Top = 6975
      Width = 1455
      Height = 735
      TabIndex = 6
      OleObjectBlob = "FormadePago.frx":031F
    End
    Begin Threed.SSPanel OK
      Left = 1200
      Top = 6975
      Width = 1455
      Height = 735
      TabIndex = 5
      OleObjectBlob = "FormadePago.frx":03A6
    End
    Begin Threed.SSPanel SSPanel1
      Index = 4
      Left = 4320
      Top = 120
      Width = 1455
      Height = 735
      TabIndex = 8
      OleObjectBlob = "FormadePago.frx":042E
    End
    Begin Threed.SSPanel SSPanel1
      Index = 5
      Left = 240
      Top = 3045
      Width = 2175
      Height = 735
      TabIndex = 1
      OleObjectBlob = "FormadePago.frx":04B4
    End
    Begin Threed.SSPanel Ticket
      Left = 120
      Top = 120
      Width = 975
      Height = 735
      TabIndex = 7
      OleObjectBlob = "FormadePago.frx":0538
    End
    Begin VB.Label LTarjeta
      Caption = "Tarjeta"
      Left = 2760
      Top = 4920
      Width = 2790
      Height = 315
      Visible = 0   'False
      TabIndex = 33
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
    Begin VB.Label LNumeroTarjeta
      Caption = "Número Tarjeta"
      Left = 2760
      Top = 5760
      Width = 2790
      Height = 315
      Visible = 0   'False
      TabIndex = 32
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
    Begin VB.Label Surtidor
      Caption = "Surtidor 1a"
      BackColor = &H989080&
      ForeColor = &H0&
      Left = 90
      Top = 240
      Width = 5775
      Height = 615
      TabIndex = 31
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Venta Combustible Super 2000, 20.00 $   65 litros."
      BackColor = &H989080&
      ForeColor = &H0&
      Left = 240
      Top = 960
      Width = 5415
      Height = 1095
      TabIndex = 30
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "FormadePago"

Public PagaconTarjeta As Boolean
Public NumeroVenta As String
Public Surt As String
Public bVentaPagada As Boolean
Public TicketDirecto As Boolean


Private Sub Form_Load() '681D40
  'Data Table: 431FF4
  loc_681828: LitI2_Byte &HFF
  loc_68182A: FLdPr Me
  loc_68182D: MemStI2 global_72
  loc_681830: LitVarI2 var_A8, 1
  loc_681835: LitI4 1
  loc_68183A: ImpAdLdI4 MemVar_74BEAC
  loc_68183D: ImpAdCallI2 Mid$(, , )
  loc_681842: FStStrNoPop var_AC
  loc_681845: LitStr "0"
  loc_681848: EqStr
  loc_68184A: FFree1Str var_AC
  loc_68184D: FFree1Var var_A8 = ""
  loc_681850: BranchF loc_681888
  loc_681853: LitVar_FALSE
  loc_681857: PopAdLdVar
  loc_681858: FLdRfVar var_B4
  loc_68185B: LitI2_Byte 4
  loc_68185D: ImpAdLdRf MemVar_74E128
  loc_681860: NewIfNullPr FormadePago
  loc_681863: VCallAd Control_ID_SSPanel1
  loc_681866: FStAdFunc var_B0
  loc_681869: FLdPr var_B0
  loc_68186C: Set from_stack_2 = FormadePago(from_stack_1)
  loc_681871: FLdPr var_B4
  loc_681874: LateIdSt
  loc_681879: FFreeAd var_B0 = ""
  loc_681880: LitI2_Byte 0
  loc_681882: FLdPr Me
  loc_681885: MemStI2 global_72
  loc_681888: LitI2_Byte 0
  loc_68188A: FLdPr Me
  loc_68188D: MemStI2 global_68
  loc_681890: LitI2_Byte 0
  loc_681892: FLdPr Me
  loc_681895: MemStI2 global_70
  loc_681898: LitI2_Byte 0
  loc_68189A: FLdPr Me
  loc_68189D: MemStI2 PagaconTarjeta
  loc_6818A0: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_6818A5: ImpAdCallI2 Proc_142_4_5D8194()
  loc_6818AA: AndI4
  loc_6818AB: ImpAdCallI2 Proc_142_8_5D8068()
  loc_6818B0: AndI4
  loc_6818B1: BranchF loc_6818B7
  loc_6818B4: Branch loc_6818C2
  loc_6818B7: FLdPr Me
  loc_6818BA: MemLdRfVar from_stack_1.global_70
  loc_6818BD: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_6818C2: FLdPr Me
  loc_6818C5: MemLdRfVar from_stack_1.global_68
  loc_6818C8: Call cmdTank_Click()
  loc_6818CD: FLdPr Me
  loc_6818D0: MemLdRfVar from_stack_1.global_68
  loc_6818D3: Call cmdTank_GotFocus(from_stack_1v)
  loc_6818D8: LitVar_FALSE
  loc_6818DC: PopAdLdVar
  loc_6818DD: FLdPrThis
  loc_6818DE: VCallAd Control_ID_SSPanel2
  loc_6818E1: FStAdFunc var_B0
  loc_6818E4: FLdPr var_B0
  loc_6818E7: LateIdSt
  loc_6818EC: FFree1Ad var_B0
  loc_6818EF: LitI2_Byte 0
  loc_6818F1: FLdPrThis
  loc_6818F2: VCallAd Control_ID_txtProducto
  loc_6818F5: FStAdFunc var_B0
  loc_6818F8: FLdPr var_B0
  loc_6818FB: Me.Visible = from_stack_1b
  loc_681900: FFree1Ad var_B0
  loc_681903: LitI2_Byte 0
  loc_681905: FLdRfVar var_86
  loc_681908: ImpAdLdUI1
  loc_68190C: CI2UI1
  loc_68190E: LitI2_Byte 1
  loc_681910: SubI2
  loc_681911: ForI2 var_B8
  loc_681917: LitI2_Byte &HFF
  loc_681919: FLdRfVar var_B4
  loc_68191C: FLdI2 var_86
  loc_68191F: FLdPrThis
  loc_681920: VCallAd Control_ID_cmdTank
  loc_681923: FStAdFunc var_B0
  loc_681926: FLdPr var_B0
  loc_681929: Set from_stack_2 = Me(from_stack_1)
  loc_68192E: FLdPr var_B4
  loc_681931: Me.Visible = from_stack_1b
  loc_681936: FFreeAd var_B0 = ""
  loc_68193D: FLdRfVar var_86
  loc_681940: NextI2 var_B8, loc_681917
  loc_681945: ImpAdLdUI1
  loc_681949: CI2UI1
  loc_68194B: FLdRfVar var_86
  loc_68194E: LitI2_Byte &HF
  loc_681950: ForI2 var_BC
  loc_681956: LitI2_Byte 0
  loc_681958: FLdRfVar var_B4
  loc_68195B: FLdI2 var_86
  loc_68195E: FLdPrThis
  loc_68195F: VCallAd Control_ID_cmdTank
  loc_681962: FStAdFunc var_B0
  loc_681965: FLdPr var_B0
  loc_681968: Set from_stack_2 = Me(from_stack_1)
  loc_68196D: FLdPr var_B4
  loc_681970: Me.Visible = from_stack_1b
  loc_681975: FFreeAd var_B0 = ""
  loc_68197C: FLdRfVar var_86
  loc_68197F: NextI2 var_BC, loc_681956
  loc_681984: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_681989: BranchF loc_681BD1
  loc_68198C: LitStr "ConVolTicket"
  loc_68198F: FStStrCopy var_AC
  loc_681992: FLdRfVar var_AC
  loc_681995: ImpAdCallI2 Proc_158_2_607130()
  loc_68199A: FFree1Str var_AC
  loc_68199D: BranchF loc_6819BA
  loc_6819A0: LitVar_FALSE
  loc_6819A4: PopAdLdVar
  loc_6819A5: FLdPrThis
  loc_6819A6: VCallAd Control_ID_Ticket
  loc_6819A9: FStAdFunc var_B0
  loc_6819AC: FLdPr var_B0
  loc_6819AF: LateIdSt
  loc_6819B4: FFree1Ad var_B0
  loc_6819B7: Branch loc_6819D0
  loc_6819BA: LitVar_TRUE var_98
  loc_6819BD: PopAdLdVar
  loc_6819BE: FLdPrThis
  loc_6819BF: VCallAd Control_ID_Ticket
  loc_6819C2: FStAdFunc var_B0
  loc_6819C5: FLdPr var_B0
  loc_6819C8: LateIdSt
  loc_6819CD: FFree1Ad var_B0
  loc_6819D0: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_6819D5: ImpAdCallI2 Proc_142_4_5D8194()
  loc_6819DA: AndI4
  loc_6819DB: ImpAdCallI2 Proc_142_8_5D8068()
  loc_6819E0: AndI4
  loc_6819E1: NotI4
  loc_6819E2: CVarBoolI2 var_98
  loc_6819E6: PopAdLdVar
  loc_6819E7: FLdRfVar var_B4
  loc_6819EA: LitI2_Byte 0
  loc_6819EC: FLdPrThis
  loc_6819ED: VCallAd Control_ID_SSPanel1
  loc_6819F0: FStAdFunc var_B0
  loc_6819F3: FLdPr var_B0
  loc_6819F6: Set from_stack_2 = Me(from_stack_1)
  loc_6819FB: FLdPr var_B4
  loc_6819FE: LateIdSt
  loc_681A03: FFreeAd var_B0 = ""
  loc_681A0A: FFree1Var var_98 = ""
  loc_681A0D: LitVarI2 var_A8, 1
  loc_681A12: LitI4 1
  loc_681A17: ImpAdLdI4 MemVar_74BEAC
  loc_681A1A: ImpAdCallI2 Mid$(, , )
  loc_681A1F: FStStrNoPop var_AC
  loc_681A22: LitStr "1"
  loc_681A25: EqStr
  loc_681A27: FFree1Str var_AC
  loc_681A2A: FFree1Var var_A8 = ""
  loc_681A2D: BranchF loc_681B2C
  loc_681A30: LitI2 4800
  loc_681A33: CR8I2
  loc_681A34: CVarR4
  loc_681A38: PopAdLdVar
  loc_681A39: FLdPrThis
  loc_681A3A: VCallAd Control_ID_Ticket
  loc_681A3D: FStAdFunc var_B0
  loc_681A40: FLdPr var_B0
  loc_681A43: LateIdSt
  loc_681A48: FFree1Ad var_B0
  loc_681A4B: LitI2 6975
  loc_681A4E: CR8I2
  loc_681A4F: CVarR4
  loc_681A53: PopAdLdVar
  loc_681A54: FLdPrThis
  loc_681A55: VCallAd Control_ID_Ticket
  loc_681A58: FStAdFunc var_B0
  loc_681A5B: FLdPr var_B0
  loc_681A5E: LateIdSt
  loc_681A63: FFree1Ad var_B0
  loc_681A66: LitI2 1680
  loc_681A69: CR8I2
  loc_681A6A: CVarR4
  loc_681A6E: PopAdLdVar
  loc_681A6F: FLdPrThis
  loc_681A70: VCallAd Control_ID_Cancel
  loc_681A73: FStAdFunc var_B0
  loc_681A76: FLdPr var_B0
  loc_681A79: LateIdSt
  loc_681A7E: FFree1Ad var_B0
  loc_681A81: LitI2 6975
  loc_681A84: CR8I2
  loc_681A85: CVarR4
  loc_681A89: PopAdLdVar
  loc_681A8A: FLdPrThis
  loc_681A8B: VCallAd Control_ID_Cancel
  loc_681A8E: FStAdFunc var_B0
  loc_681A91: FLdPr var_B0
  loc_681A94: LateIdSt
  loc_681A99: FFree1Ad var_B0
  loc_681A9C: LitI2_Byte &H78
  loc_681A9E: CR8I2
  loc_681A9F: CVarR4
  loc_681AA3: PopAdLdVar
  loc_681AA4: FLdPrThis
  loc_681AA5: VCallAd Control_ID_OK
  loc_681AA8: FStAdFunc var_B0
  loc_681AAB: FLdPr var_B0
  loc_681AAE: LateIdSt
  loc_681AB3: FFree1Ad var_B0
  loc_681AB6: LitI2 6975
  loc_681AB9: CR8I2
  loc_681ABA: CVarR4
  loc_681ABE: PopAdLdVar
  loc_681ABF: FLdPrThis
  loc_681AC0: VCallAd Control_ID_OK
  loc_681AC3: FStAdFunc var_B0
  loc_681AC6: FLdPr var_B0
  loc_681AC9: LateIdSt
  loc_681ACE: FFree1Ad var_B0
  loc_681AD1: LitI2 3240
  loc_681AD4: CR8I2
  loc_681AD5: CVarR4
  loc_681AD9: PopAdLdVar
  loc_681ADA: FLdRfVar var_B4
  loc_681ADD: LitI2_Byte 4
  loc_681ADF: FLdPrThis
  loc_681AE0: VCallAd Control_ID_SSPanel1
  loc_681AE3: FStAdFunc var_B0
  loc_681AE6: FLdPr var_B0
  loc_681AE9: Set from_stack_2 = Me(from_stack_1)
  loc_681AEE: FLdPr var_B4
  loc_681AF1: LateIdSt
  loc_681AF6: FFreeAd var_B0 = ""
  loc_681AFD: LitI2 6975
  loc_681B00: CR8I2
  loc_681B01: CVarR4
  loc_681B05: PopAdLdVar
  loc_681B06: FLdRfVar var_B4
  loc_681B09: LitI2_Byte 4
  loc_681B0B: FLdPrThis
  loc_681B0C: VCallAd Control_ID_SSPanel1
  loc_681B0F: FStAdFunc var_B0
  loc_681B12: FLdPr var_B0
  loc_681B15: Set from_stack_2 = Me(from_stack_1)
  loc_681B1A: FLdPr var_B4
  loc_681B1D: LateIdSt
  loc_681B22: FFreeAd var_B0 = ""
  loc_681B29: Branch loc_681BCE
  loc_681B2C: LitI2 4440
  loc_681B2F: CR8I2
  loc_681B30: CVarR4
  loc_681B34: PopAdLdVar
  loc_681B35: FLdPrThis
  loc_681B36: VCallAd Control_ID_Ticket
  loc_681B39: FStAdFunc var_B0
  loc_681B3C: FLdPr var_B0
  loc_681B3F: LateIdSt
  loc_681B44: FFree1Ad var_B0
  loc_681B47: LitI2 6975
  loc_681B4A: CR8I2
  loc_681B4B: CVarR4
  loc_681B4F: PopAdLdVar
  loc_681B50: FLdPrThis
  loc_681B51: VCallAd Control_ID_Ticket
  loc_681B54: FStAdFunc var_B0
  loc_681B57: FLdPr var_B0
  loc_681B5A: LateIdSt
  loc_681B5F: FFree1Ad var_B0
  loc_681B62: LitI2 2520
  loc_681B65: CR8I2
  loc_681B66: CVarR4
  loc_681B6A: PopAdLdVar
  loc_681B6B: FLdPrThis
  loc_681B6C: VCallAd Control_ID_Cancel
  loc_681B6F: FStAdFunc var_B0
  loc_681B72: FLdPr var_B0
  loc_681B75: LateIdSt
  loc_681B7A: FFree1Ad var_B0
  loc_681B7D: LitI2 6975
  loc_681B80: CR8I2
  loc_681B81: CVarR4
  loc_681B85: PopAdLdVar
  loc_681B86: FLdPrThis
  loc_681B87: VCallAd Control_ID_Cancel
  loc_681B8A: FStAdFunc var_B0
  loc_681B8D: FLdPr var_B0
  loc_681B90: LateIdSt
  loc_681B95: FFree1Ad var_B0
  loc_681B98: LitI2 600
  loc_681B9B: CR8I2
  loc_681B9C: CVarR4
  loc_681BA0: PopAdLdVar
  loc_681BA1: FLdPrThis
  loc_681BA2: VCallAd Control_ID_OK
  loc_681BA5: FStAdFunc var_B0
  loc_681BA8: FLdPr var_B0
  loc_681BAB: LateIdSt
  loc_681BB0: FFree1Ad var_B0
  loc_681BB3: LitI2 6975
  loc_681BB6: CR8I2
  loc_681BB7: CVarR4
  loc_681BBB: PopAdLdVar
  loc_681BBC: FLdPrThis
  loc_681BBD: VCallAd Control_ID_OK
  loc_681BC0: FStAdFunc var_B0
  loc_681BC3: FLdPr var_B0
  loc_681BC6: LateIdSt
  loc_681BCB: FFree1Ad var_B0
  loc_681BCE: Branch loc_681D3E
  loc_681BD1: LitVar_FALSE
  loc_681BD5: PopAdLdVar
  loc_681BD6: FLdPrThis
  loc_681BD7: VCallAd Control_ID_Ticket
  loc_681BDA: FStAdFunc var_B0
  loc_681BDD: FLdPr var_B0
  loc_681BE0: LateIdSt
  loc_681BE5: FFree1Ad var_B0
  loc_681BE8: LitVarI2 var_A8, 1
  loc_681BED: LitI4 1
  loc_681BF2: ImpAdLdI4 MemVar_74BEAC
  loc_681BF5: ImpAdCallI2 Mid$(, , )
  loc_681BFA: FStStrNoPop var_AC
  loc_681BFD: LitStr "1"
  loc_681C00: EqStr
  loc_681C02: FFree1Str var_AC
  loc_681C05: FFree1Var var_A8 = ""
  loc_681C08: BranchF loc_681CD2
  loc_681C0B: LitI2 2220
  loc_681C0E: CR8I2
  loc_681C0F: CVarR4
  loc_681C13: PopAdLdVar
  loc_681C14: FLdPrThis
  loc_681C15: VCallAd Control_ID_Cancel
  loc_681C18: FStAdFunc var_B0
  loc_681C1B: FLdPr var_B0
  loc_681C1E: LateIdSt
  loc_681C23: FFree1Ad var_B0
  loc_681C26: LitI2 6975
  loc_681C29: CR8I2
  loc_681C2A: CVarR4
  loc_681C2E: PopAdLdVar
  loc_681C2F: FLdPrThis
  loc_681C30: VCallAd Control_ID_Cancel
  loc_681C33: FStAdFunc var_B0
  loc_681C36: FLdPr var_B0
  loc_681C39: LateIdSt
  loc_681C3E: FFree1Ad var_B0
  loc_681C41: LitI2 600
  loc_681C44: CR8I2
  loc_681C45: CVarR4
  loc_681C49: PopAdLdVar
  loc_681C4A: FLdPrThis
  loc_681C4B: VCallAd Control_ID_OK
  loc_681C4E: FStAdFunc var_B0
  loc_681C51: FLdPr var_B0
  loc_681C54: LateIdSt
  loc_681C59: FFree1Ad var_B0
  loc_681C5C: LitI2 6975
  loc_681C5F: CR8I2
  loc_681C60: CVarR4
  loc_681C64: PopAdLdVar
  loc_681C65: FLdPrThis
  loc_681C66: VCallAd Control_ID_OK
  loc_681C69: FStAdFunc var_B0
  loc_681C6C: FLdPr var_B0
  loc_681C6F: LateIdSt
  loc_681C74: FFree1Ad var_B0
  loc_681C77: LitI2 3840
  loc_681C7A: CR8I2
  loc_681C7B: CVarR4
  loc_681C7F: PopAdLdVar
  loc_681C80: FLdRfVar var_B4
  loc_681C83: LitI2_Byte 4
  loc_681C85: FLdPrThis
  loc_681C86: VCallAd Control_ID_SSPanel1
  loc_681C89: FStAdFunc var_B0
  loc_681C8C: FLdPr var_B0
  loc_681C8F: Set from_stack_2 = Me(from_stack_1)
  loc_681C94: FLdPr var_B4
  loc_681C97: LateIdSt
  loc_681C9C: FFreeAd var_B0 = ""
  loc_681CA3: LitI2 6975
  loc_681CA6: CR8I2
  loc_681CA7: CVarR4
  loc_681CAB: PopAdLdVar
  loc_681CAC: FLdRfVar var_B4
  loc_681CAF: LitI2_Byte 4
  loc_681CB1: FLdPrThis
  loc_681CB2: VCallAd Control_ID_SSPanel1
  loc_681CB5: FStAdFunc var_B0
  loc_681CB8: FLdPr var_B0
  loc_681CBB: Set from_stack_2 = Me(from_stack_1)
  loc_681CC0: FLdPr var_B4
  loc_681CC3: LateIdSt
  loc_681CC8: FFreeAd var_B0 = ""
  loc_681CCF: Branch loc_681D3E
  loc_681CD2: LitI2 3240
  loc_681CD5: CR8I2
  loc_681CD6: CVarR4
  loc_681CDA: PopAdLdVar
  loc_681CDB: FLdPrThis
  loc_681CDC: VCallAd Control_ID_Cancel
  loc_681CDF: FStAdFunc var_B0
  loc_681CE2: FLdPr var_B0
  loc_681CE5: LateIdSt
  loc_681CEA: FFree1Ad var_B0
  loc_681CED: LitI2 6975
  loc_681CF0: CR8I2
  loc_681CF1: CVarR4
  loc_681CF5: PopAdLdVar
  loc_681CF6: FLdPrThis
  loc_681CF7: VCallAd Control_ID_Cancel
  loc_681CFA: FStAdFunc var_B0
  loc_681CFD: FLdPr var_B0
  loc_681D00: LateIdSt
  loc_681D05: FFree1Ad var_B0
  loc_681D08: LitI2 1200
  loc_681D0B: CR8I2
  loc_681D0C: CVarR4
  loc_681D10: PopAdLdVar
  loc_681D11: FLdPrThis
  loc_681D12: VCallAd Control_ID_OK
  loc_681D15: FStAdFunc var_B0
  loc_681D18: FLdPr var_B0
  loc_681D1B: LateIdSt
  loc_681D20: FFree1Ad var_B0
  loc_681D23: LitI2 6975
  loc_681D26: CR8I2
  loc_681D27: CVarR4
  loc_681D2B: PopAdLdVar
  loc_681D2C: FLdPrThis
  loc_681D2D: VCallAd Control_ID_OK
  loc_681D30: FStAdFunc var_B0
  loc_681D33: FLdPr var_B0
  loc_681D36: LateIdSt
  loc_681D3B: FFree1Ad var_B0
  loc_681D3E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5C8454
  'Data Table: 431FF4
  loc_5C8450: ExitProcHresult
End Sub

Private Sub Form_Activate() '6920F0
  'Data Table: 431FF4
  loc_691B14: FLdRfVar var_8C
  loc_691B17: LitI2_Byte 0
  loc_691B19: FLdPrThis
  loc_691B1A: VCallAd Control_ID_SSPanel1
  loc_691B1D: FStAdFunc var_88
  loc_691B20: FLdPr var_88
  loc_691B23: Set from_stack_2 = Me(from_stack_1)
  loc_691B28: FLdPr var_8C
  loc_691B2B: LateIdLdVar var_9C DispID_7 -32767
  loc_691B32: CBoolVar
  loc_691B34: NotI4
  loc_691B35: ImpAdStI2 MemVar_74C37E
  loc_691B38: FFreeAd var_88 = ""
  loc_691B3F: FFree1Var var_9C = ""
  loc_691B42: FLdPr Me
  loc_691B45: MemLdI2 TicketDirecto
  loc_691B48: FLdPrThis
  loc_691B49: VCallAd Control_ID_Ticket
  loc_691B4C: FStAdFunc var_88
  loc_691B4F: FLdPr var_88
  loc_691B52: LateIdLdVar var_9C DispID_7 -32767
  loc_691B59: CBoolVar
  loc_691B5B: LitI2_Byte &HFF
  loc_691B5D: EqI2
  loc_691B5E: AndI4
  loc_691B5F: FFree1Ad var_88
  loc_691B62: FFree1Var var_9C = ""
  loc_691B65: BranchF loc_691B75
  loc_691B68: LitI2_Byte 0
  loc_691B6A: FLdPr Me
  loc_691B6D: MemStI2 TicketDirecto
  loc_691B70: Call Ticket_UnknownEvent_8()
  loc_691B75: FLdRfVar var_1DC
  loc_691B78: LitVar_Missing var_1D8
  loc_691B7B: LitVar_Missing var_1B8
  loc_691B7E: LitVar_Missing var_198
  loc_691B81: LitVar_Missing var_178
  loc_691B84: LitVar_Missing var_158
  loc_691B87: LitVar_Missing var_138
  loc_691B8A: LitVar_Missing var_118
  loc_691B8D: LitVar_Missing var_F8
  loc_691B90: LitVar_Missing var_D8
  loc_691B93: LitVar_Missing var_9C
  loc_691B96: LitStr "F1 - Contado"
  loc_691B99: FStStrCopy var_A8
  loc_691B9C: FLdRfVar var_A8
  loc_691B9F: LitI4 1
  loc_691BA4: PopTmpLdAdStr var_A4
  loc_691BA7: LitI2_Byte 8
  loc_691BA9: PopTmpLdAd2 var_9E
  loc_691BAC: ImpAdLdRf MemVar_74C7D0
  loc_691BAF: NewIfNullPr clsMsg
  loc_691BB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691BB7: FLdZeroAd var_1DC
  loc_691BBA: CVarStr var_1EC
  loc_691BBD: PopAdLdVar
  loc_691BBE: FLdRfVar var_8C
  loc_691BC1: LitI2_Byte 0
  loc_691BC3: FLdPrThis
  loc_691BC4: VCallAd Control_ID_SSPanel1
  loc_691BC7: FStAdFunc var_88
  loc_691BCA: FLdPr var_88
  loc_691BCD: Set from_stack_2 = Me(from_stack_1)
  loc_691BD2: FLdPr var_8C
  loc_691BD5: LateIdSt
  loc_691BDA: FFree1Str var_A8
  loc_691BDD: FFreeAd var_88 = ""
  loc_691BE4: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691BFD: FLdRfVar var_1DC
  loc_691C00: LitVar_Missing var_1D8
  loc_691C03: LitVar_Missing var_1B8
  loc_691C06: LitVar_Missing var_198
  loc_691C09: LitVar_Missing var_178
  loc_691C0C: LitVar_Missing var_158
  loc_691C0F: LitVar_Missing var_138
  loc_691C12: LitVar_Missing var_118
  loc_691C15: LitVar_Missing var_F8
  loc_691C18: LitVar_Missing var_D8
  loc_691C1B: LitVar_Missing var_9C
  loc_691C1E: LitStr "F7 - Prueba de Surtidor"
  loc_691C21: FStStrCopy var_A8
  loc_691C24: FLdRfVar var_A8
  loc_691C27: LitI4 2
  loc_691C2C: PopTmpLdAdStr var_A4
  loc_691C2F: LitI2_Byte 8
  loc_691C31: PopTmpLdAd2 var_9E
  loc_691C34: ImpAdLdRf MemVar_74C7D0
  loc_691C37: NewIfNullPr clsMsg
  loc_691C3A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691C3F: FLdZeroAd var_1DC
  loc_691C42: CVarStr var_1EC
  loc_691C45: PopAdLdVar
  loc_691C46: FLdRfVar var_8C
  loc_691C49: LitI2_Byte 1
  loc_691C4B: FLdPrThis
  loc_691C4C: VCallAd Control_ID_SSPanel1
  loc_691C4F: FStAdFunc var_88
  loc_691C52: FLdPr var_88
  loc_691C55: Set from_stack_2 = Me(from_stack_1)
  loc_691C5A: FLdPr var_8C
  loc_691C5D: LateIdSt
  loc_691C62: FFree1Str var_A8
  loc_691C65: FFreeAd var_88 = ""
  loc_691C6C: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691C85: FLdRfVar var_1DC
  loc_691C88: LitVar_Missing var_1D8
  loc_691C8B: LitVar_Missing var_1B8
  loc_691C8E: LitVar_Missing var_198
  loc_691C91: LitVar_Missing var_178
  loc_691C94: LitVar_Missing var_158
  loc_691C97: LitVar_Missing var_138
  loc_691C9A: LitVar_Missing var_118
  loc_691C9D: LitVar_Missing var_F8
  loc_691CA0: LitVar_Missing var_D8
  loc_691CA3: LitVar_Missing var_9C
  loc_691CA6: LitStr "F8 - Prueba Sin Retorno"
  loc_691CA9: FStStrCopy var_A8
  loc_691CAC: FLdRfVar var_A8
  loc_691CAF: LitI4 3
  loc_691CB4: PopTmpLdAdStr var_A4
  loc_691CB7: LitI2_Byte 8
  loc_691CB9: PopTmpLdAd2 var_9E
  loc_691CBC: ImpAdLdRf MemVar_74C7D0
  loc_691CBF: NewIfNullPr clsMsg
  loc_691CC2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691CC7: FLdZeroAd var_1DC
  loc_691CCA: CVarStr var_1EC
  loc_691CCD: PopAdLdVar
  loc_691CCE: FLdRfVar var_8C
  loc_691CD1: LitI2_Byte 2
  loc_691CD3: FLdPrThis
  loc_691CD4: VCallAd Control_ID_SSPanel1
  loc_691CD7: FStAdFunc var_88
  loc_691CDA: FLdPr var_88
  loc_691CDD: Set from_stack_2 = Me(from_stack_1)
  loc_691CE2: FLdPr var_8C
  loc_691CE5: LateIdSt
  loc_691CEA: FFree1Str var_A8
  loc_691CED: FFreeAd var_88 = ""
  loc_691CF4: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691D0D: FLdRfVar var_1DC
  loc_691D10: LitVar_Missing var_1D8
  loc_691D13: LitVar_Missing var_1B8
  loc_691D16: LitVar_Missing var_198
  loc_691D19: LitVar_Missing var_178
  loc_691D1C: LitVar_Missing var_158
  loc_691D1F: LitVar_Missing var_138
  loc_691D22: LitVar_Missing var_118
  loc_691D25: LitVar_Missing var_F8
  loc_691D28: LitVar_Missing var_D8
  loc_691D2B: LitVar_Missing var_9C
  loc_691D2E: LitStr "F9 - Incobrable"
  loc_691D31: FStStrCopy var_A8
  loc_691D34: FLdRfVar var_A8
  loc_691D37: LitI4 4
  loc_691D3C: PopTmpLdAdStr var_A4
  loc_691D3F: LitI2_Byte 8
  loc_691D41: PopTmpLdAd2 var_9E
  loc_691D44: ImpAdLdRf MemVar_74C7D0
  loc_691D47: NewIfNullPr clsMsg
  loc_691D4A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691D4F: FLdZeroAd var_1DC
  loc_691D52: CVarStr var_1EC
  loc_691D55: PopAdLdVar
  loc_691D56: FLdRfVar var_8C
  loc_691D59: LitI2_Byte 3
  loc_691D5B: FLdPrThis
  loc_691D5C: VCallAd Control_ID_SSPanel1
  loc_691D5F: FStAdFunc var_88
  loc_691D62: FLdPr var_88
  loc_691D65: Set from_stack_2 = Me(from_stack_1)
  loc_691D6A: FLdPr var_8C
  loc_691D6D: LateIdSt
  loc_691D72: FFree1Str var_A8
  loc_691D75: FFreeAd var_88 = ""
  loc_691D7C: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691D95: FLdRfVar var_1DC
  loc_691D98: LitVar_Missing var_1D8
  loc_691D9B: LitVar_Missing var_1B8
  loc_691D9E: LitVar_Missing var_198
  loc_691DA1: LitVar_Missing var_178
  loc_691DA4: LitVar_Missing var_158
  loc_691DA7: LitVar_Missing var_138
  loc_691DAA: LitVar_Missing var_118
  loc_691DAD: LitVar_Missing var_F8
  loc_691DB0: LitVar_Missing var_D8
  loc_691DB3: LitVar_Missing var_9C
  loc_691DB6: LitStr "Factura <F10>"
  loc_691DB9: FStStrCopy var_A8
  loc_691DBC: FLdRfVar var_A8
  loc_691DBF: LitI4 5
  loc_691DC4: PopTmpLdAdStr var_A4
  loc_691DC7: LitI2_Byte 8
  loc_691DC9: PopTmpLdAd2 var_9E
  loc_691DCC: ImpAdLdRf MemVar_74C7D0
  loc_691DCF: NewIfNullPr clsMsg
  loc_691DD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691DD7: FLdZeroAd var_1DC
  loc_691DDA: CVarStr var_1EC
  loc_691DDD: PopAdLdVar
  loc_691DDE: FLdRfVar var_8C
  loc_691DE1: LitI2_Byte 4
  loc_691DE3: FLdPrThis
  loc_691DE4: VCallAd Control_ID_SSPanel1
  loc_691DE7: FStAdFunc var_88
  loc_691DEA: FLdPr var_88
  loc_691DED: Set from_stack_2 = Me(from_stack_1)
  loc_691DF2: FLdPr var_8C
  loc_691DF5: LateIdSt
  loc_691DFA: FFree1Str var_A8
  loc_691DFD: FFreeAd var_88 = ""
  loc_691E04: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691E1D: FLdRfVar var_1DC
  loc_691E20: LitVar_Missing var_1D8
  loc_691E23: LitVar_Missing var_1B8
  loc_691E26: LitVar_Missing var_198
  loc_691E29: LitVar_Missing var_178
  loc_691E2C: LitVar_Missing var_158
  loc_691E2F: LitVar_Missing var_138
  loc_691E32: LitVar_Missing var_118
  loc_691E35: LitVar_Missing var_F8
  loc_691E38: LitVar_Missing var_D8
  loc_691E3B: LitVar_Missing var_9C
  loc_691E3E: LitStr "F2 - Tarjeta"
  loc_691E41: FStStrCopy var_A8
  loc_691E44: FLdRfVar var_A8
  loc_691E47: LitI4 6
  loc_691E4C: PopTmpLdAdStr var_A4
  loc_691E4F: LitI2_Byte 8
  loc_691E51: PopTmpLdAd2 var_9E
  loc_691E54: ImpAdLdRf MemVar_74C7D0
  loc_691E57: NewIfNullPr clsMsg
  loc_691E5A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691E5F: FLdZeroAd var_1DC
  loc_691E62: CVarStr var_1EC
  loc_691E65: PopAdLdVar
  loc_691E66: FLdRfVar var_8C
  loc_691E69: LitI2_Byte 5
  loc_691E6B: FLdPrThis
  loc_691E6C: VCallAd Control_ID_SSPanel1
  loc_691E6F: FStAdFunc var_88
  loc_691E72: FLdPr var_88
  loc_691E75: Set from_stack_2 = Me(from_stack_1)
  loc_691E7A: FLdPr var_8C
  loc_691E7D: LateIdSt
  loc_691E82: FFree1Str var_A8
  loc_691E85: FFreeAd var_88 = ""
  loc_691E8C: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691EA5: FLdRfVar var_1DC
  loc_691EA8: LitVar_Missing var_1D8
  loc_691EAB: LitVar_Missing var_1B8
  loc_691EAE: LitVar_Missing var_198
  loc_691EB1: LitVar_Missing var_178
  loc_691EB4: LitVar_Missing var_158
  loc_691EB7: LitVar_Missing var_138
  loc_691EBA: LitVar_Missing var_118
  loc_691EBD: LitVar_Missing var_F8
  loc_691EC0: LitVar_Missing var_D8
  loc_691EC3: LitVar_Missing var_9C
  loc_691EC6: LitStr "Aceptar <ENTER>"
  loc_691EC9: FStStrCopy var_A8
  loc_691ECC: FLdRfVar var_A8
  loc_691ECF: LitI4 7
  loc_691ED4: PopTmpLdAdStr var_A4
  loc_691ED7: LitI2_Byte 8
  loc_691ED9: PopTmpLdAd2 var_9E
  loc_691EDC: ImpAdLdRf MemVar_74C7D0
  loc_691EDF: NewIfNullPr clsMsg
  loc_691EE2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691EE7: FLdZeroAd var_1DC
  loc_691EEA: CVarStr var_1EC
  loc_691EED: PopAdLdVar
  loc_691EEE: FLdPrThis
  loc_691EEF: VCallAd Control_ID_OK
  loc_691EF2: FStAdFunc var_88
  loc_691EF5: FLdPr var_88
  loc_691EF8: LateIdSt
  loc_691EFD: FFree1Str var_A8
  loc_691F00: FFree1Ad var_88
  loc_691F03: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691F1C: FLdRfVar var_1DC
  loc_691F1F: LitVar_Missing var_1D8
  loc_691F22: LitVar_Missing var_1B8
  loc_691F25: LitVar_Missing var_198
  loc_691F28: LitVar_Missing var_178
  loc_691F2B: LitVar_Missing var_158
  loc_691F2E: LitVar_Missing var_138
  loc_691F31: LitVar_Missing var_118
  loc_691F34: LitVar_Missing var_F8
  loc_691F37: LitVar_Missing var_D8
  loc_691F3A: LitVar_Missing var_9C
  loc_691F3D: LitStr "Cancelar <ESC>"
  loc_691F40: FStStrCopy var_A8
  loc_691F43: FLdRfVar var_A8
  loc_691F46: LitI4 8
  loc_691F4B: PopTmpLdAdStr var_A4
  loc_691F4E: LitI2_Byte 8
  loc_691F50: PopTmpLdAd2 var_9E
  loc_691F53: ImpAdLdRf MemVar_74C7D0
  loc_691F56: NewIfNullPr clsMsg
  loc_691F59: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691F5E: FLdZeroAd var_1DC
  loc_691F61: CVarStr var_1EC
  loc_691F64: PopAdLdVar
  loc_691F65: FLdPrThis
  loc_691F66: VCallAd Control_ID_Cancel
  loc_691F69: FStAdFunc var_88
  loc_691F6C: FLdPr var_88
  loc_691F6F: LateIdSt
  loc_691F74: FFree1Str var_A8
  loc_691F77: FFree1Ad var_88
  loc_691F7A: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_691F93: FLdRfVar var_1DC
  loc_691F96: LitVar_Missing var_1D8
  loc_691F99: LitVar_Missing var_1B8
  loc_691F9C: LitVar_Missing var_198
  loc_691F9F: LitVar_Missing var_178
  loc_691FA2: LitVar_Missing var_158
  loc_691FA5: LitVar_Missing var_138
  loc_691FA8: LitVar_Missing var_118
  loc_691FAB: LitVar_Missing var_F8
  loc_691FAE: LitVar_Missing var_D8
  loc_691FB1: LitVar_Missing var_9C
  loc_691FB4: LitStr "Ticket <T>"
  loc_691FB7: FStStrCopy var_A8
  loc_691FBA: FLdRfVar var_A8
  loc_691FBD: LitI4 9
  loc_691FC2: PopTmpLdAdStr var_A4
  loc_691FC5: LitI2_Byte 8
  loc_691FC7: PopTmpLdAd2 var_9E
  loc_691FCA: ImpAdLdRf MemVar_74C7D0
  loc_691FCD: NewIfNullPr clsMsg
  loc_691FD0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_691FD5: FLdZeroAd var_1DC
  loc_691FD8: CVarStr var_1EC
  loc_691FDB: PopAdLdVar
  loc_691FDC: FLdPrThis
  loc_691FDD: VCallAd Control_ID_Ticket
  loc_691FE0: FStAdFunc var_88
  loc_691FE3: FLdPr var_88
  loc_691FE6: LateIdSt
  loc_691FEB: FFree1Str var_A8
  loc_691FEE: FFree1Ad var_88
  loc_691FF1: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_69200A: FLdRfVar var_1DC
  loc_69200D: LitVar_Missing var_1D8
  loc_692010: LitVar_Missing var_1B8
  loc_692013: LitVar_Missing var_198
  loc_692016: LitVar_Missing var_178
  loc_692019: LitVar_Missing var_158
  loc_69201C: LitVar_Missing var_138
  loc_69201F: LitVar_Missing var_118
  loc_692022: LitVar_Missing var_F8
  loc_692025: LitVar_Missing var_D8
  loc_692028: LitVar_Missing var_9C
  loc_69202B: LitStr "Número Tarjeta"
  loc_69202E: FStStrCopy var_A8
  loc_692031: FLdRfVar var_A8
  loc_692034: LitI4 &HA
  loc_692039: PopTmpLdAdStr var_A4
  loc_69203C: LitI2_Byte 8
  loc_69203E: PopTmpLdAd2 var_9E
  loc_692041: ImpAdLdRf MemVar_74C7D0
  loc_692044: NewIfNullPr clsMsg
  loc_692047: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69204C: ILdRf var_1DC
  loc_69204F: FLdPrThis
  loc_692050: VCallAd Control_ID_LNumeroTarjeta
  loc_692053: FStAdFunc var_88
  loc_692056: FLdPr var_88
  loc_692059: Me.Caption = from_stack_1
  loc_69205E: FFreeStr var_A8 = ""
  loc_692065: FFree1Ad var_88
  loc_692068: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_69207F: FLdRfVar var_1DC
  loc_692082: LitVar_Missing var_1D8
  loc_692085: LitVar_Missing var_1B8
  loc_692088: LitVar_Missing var_198
  loc_69208B: LitVar_Missing var_178
  loc_69208E: LitVar_Missing var_158
  loc_692091: LitVar_Missing var_138
  loc_692094: LitVar_Missing var_118
  loc_692097: LitVar_Missing var_F8
  loc_69209A: LitVar_Missing var_D8
  loc_69209D: LitVar_Missing var_9C
  loc_6920A0: LitStr "Forma de Pago"
  loc_6920A3: FStStrCopy var_A8
  loc_6920A6: FLdRfVar var_A8
  loc_6920A9: LitI4 &HB
  loc_6920AE: PopTmpLdAdStr var_A4
  loc_6920B1: LitI2_Byte 8
  loc_6920B3: PopTmpLdAd2 var_9E
  loc_6920B6: ImpAdLdRf MemVar_74C7D0
  loc_6920B9: NewIfNullPr clsMsg
  loc_6920BC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6920C1: ILdRf var_1DC
  loc_6920C4: FLdPr Me
  loc_6920C7: Me.Caption = from_stack_1
  loc_6920CC: FFreeStr var_A8 = ""
  loc_6920D3: FFreeVar var_9C = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6920EA: from_stack_1v = Proc_113_23_5DB634()
  loc_6920EF: ExitProcHresult
End Sub

Private Sub Form_Deactivate() '5C83EC
  'Data Table: 431FF4
  loc_5C83E8: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '619928
  'Data Table: 431FF4
  loc_6197F8: ILdI2 KeyCode
  loc_6197FB: FStI2 var_86
  loc_6197FE: FLdI2 var_86
  loc_619801: LitI4 &H70
  loc_619806: CI2I4
  loc_619807: EqI2
  loc_619808: BranchF loc_619820
  loc_61980B: LitI2_Byte 0
  loc_61980D: FLdPr Me
  loc_619810: MemStI2 PagaconTarjeta
  loc_619813: LitI2_Byte 0
  loc_619815: PopTmpLdAd2 var_88
  loc_619818: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_61981D: Branch loc_619927
  loc_619820: FLdI2 var_86
  loc_619823: LitI4 &H71
  loc_619828: CI2I4
  loc_619829: EqI2
  loc_61982A: BranchF loc_619842
  loc_61982D: LitI2_Byte &HFF
  loc_61982F: FLdPr Me
  loc_619832: MemStI2 PagaconTarjeta
  loc_619835: LitI2_Byte 5
  loc_619837: PopTmpLdAd2 var_88
  loc_61983A: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_61983F: Branch loc_619927
  loc_619842: FLdI2 var_86
  loc_619845: LitI4 &H76
  loc_61984A: CI2I4
  loc_61984B: EqI2
  loc_61984C: BranchF loc_619875
  loc_61984F: FLdPr Me
  loc_619852: MemLdStr Surt
  loc_619855: CI2Str
  loc_619857: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_61985C: NotI4
  loc_61985D: BranchF loc_619872
  loc_619860: LitI2_Byte 0
  loc_619862: FLdPr Me
  loc_619865: MemStI2 PagaconTarjeta
  loc_619868: LitI2_Byte 1
  loc_61986A: PopTmpLdAd2 var_88
  loc_61986D: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_619872: Branch loc_619927
  loc_619875: FLdI2 var_86
  loc_619878: LitI4 &H77
  loc_61987D: CI2I4
  loc_61987E: EqI2
  loc_61987F: BranchF loc_619897
  loc_619882: LitI2_Byte 0
  loc_619884: FLdPr Me
  loc_619887: MemStI2 PagaconTarjeta
  loc_61988A: LitI2_Byte 2
  loc_61988C: PopTmpLdAd2 var_88
  loc_61988F: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_619894: Branch loc_619927
  loc_619897: FLdI2 var_86
  loc_61989A: LitI4 &H78
  loc_61989F: CI2I4
  loc_6198A0: EqI2
  loc_6198A1: BranchF loc_6198B9
  loc_6198A4: LitI2_Byte 0
  loc_6198A6: FLdPr Me
  loc_6198A9: MemStI2 PagaconTarjeta
  loc_6198AC: LitI2_Byte 3
  loc_6198AE: PopTmpLdAd2 var_88
  loc_6198B1: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_6198B6: Branch loc_619927
  loc_6198B9: FLdI2 var_86
  loc_6198BC: LitI4 &H79
  loc_6198C1: CI2I4
  loc_6198C2: EqI2
  loc_6198C3: BranchF loc_619927
  loc_6198C6: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_6198CB: LitI2_Byte &HFF
  loc_6198CD: EqI2
  loc_6198CE: BranchF loc_619927
  loc_6198D1: FLdPr Me
  loc_6198D4: MemLdI2 global_72
  loc_6198D7: FLdRfVar var_90
  loc_6198DA: LitI2_Byte 4
  loc_6198DC: FLdPrThis
  loc_6198DD: VCallAd Control_ID_SSPanel1
  loc_6198E0: FStAdFunc var_8C
  loc_6198E3: FLdPr var_8C
  loc_6198E6: Set from_stack_2 = Me(from_stack_1)
  loc_6198EB: FLdPr var_90
  loc_6198EE: LateIdLdVar var_A0 DispID_7 -32767
  loc_6198F5: CBoolVar
  loc_6198F7: AndI4
  loc_6198F8: FFreeAd var_8C = ""
  loc_6198FF: FFree1Var var_A0 = ""
  loc_619902: BranchF loc_619927
  loc_619905: FLdPr Me
  loc_619908: MemLdRfVar from_stack_1.PagaconTarjeta
  loc_61990B: FLdRfVar var_A0
  loc_61990E: ImpAdCallFPR4  = Proc_158_1_6279F8()
  loc_619913: FLdRfVar var_A0
  loc_619916: LitVar_TRUE var_B0
  loc_619919: HardType
  loc_61991A: EqVarBool
  loc_61991C: FFree1Var var_A0 = ""
  loc_61991F: BranchF loc_619927
  loc_619922: from_stack_1v = Proc_113_25_5F2A64()
  loc_619927: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5E0E84
  'Data Table: 431FF4
  loc_5E0E24: ILdI2 KeyAscii
  loc_5E0E27: FStI2 var_86
  loc_5E0E2A: FLdI2 var_86
  loc_5E0E2D: LitI4 &H54
  loc_5E0E32: CI2I4
  loc_5E0E33: EqI2
  loc_5E0E34: BranchT loc_5E0E40
  loc_5E0E37: FLdI2 var_86
  loc_5E0E3A: LitI2_Byte &H74
  loc_5E0E3C: EqI2
  loc_5E0E3D: BranchF loc_5E0E58
  loc_5E0E40: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_5E0E45: LitI2_Byte &HFF
  loc_5E0E47: EqI2
  loc_5E0E48: BranchF loc_5E0E55
  loc_5E0E4B: Call Ticket_UnknownEvent_8()
  loc_5E0E50: LitI2_Byte 0
  loc_5E0E52: IStI2 KeyAscii
  loc_5E0E55: Branch loc_5E0E81
  loc_5E0E58: FLdI2 var_86
  loc_5E0E5B: LitI2_Byte &HD
  loc_5E0E5D: EqI2
  loc_5E0E5E: BranchF loc_5E0E6E
  loc_5E0E61: Call OK_UnknownEvent_8()
  loc_5E0E66: LitI2_Byte 0
  loc_5E0E68: IStI2 KeyAscii
  loc_5E0E6B: Branch loc_5E0E81
  loc_5E0E6E: FLdI2 var_86
  loc_5E0E71: LitI2_Byte &H1B
  loc_5E0E73: EqI2
  loc_5E0E74: BranchF loc_5E0E81
  loc_5E0E77: Call Cancel_UnknownEvent_8()
  loc_5E0E7C: LitI2_Byte 0
  loc_5E0E7E: IStI2 KeyAscii
  loc_5E0E81: ExitProcHresult
End Sub

Private Sub Ticket_UnknownEvent_8 '5E102C
  'Data Table: 431FF4
  loc_5E0FD4: LitI2_Byte 0
  loc_5E0FD6: PopTmpLdAd1
  loc_5E0FDA: LitI2_Byte 0
  loc_5E0FDC: PopTmpLdAd1
  loc_5E0FE0: LitI4 0
  loc_5E0FE5: FStStrCopy var_8C
  loc_5E0FE8: FLdRfVar var_8C
  loc_5E0FEB: LitI4 0
  loc_5E0FF0: FStStrCopy var_88
  loc_5E0FF3: FLdRfVar var_88
  loc_5E0FF6: FLdPr Me
  loc_5E0FF9: MemLdRfVar from_stack_1.NumeroVenta
  loc_5E0FFC: FLdPr Me
  loc_5E0FFF: MemLdRfVar from_stack_1.bVentaPagada
  loc_5E1002: ImpAdCallFPR4 Proc_158_3_68A238(, , , , , )
  loc_5E1007: FFreeStr var_88 = ""
  loc_5E100E: LitI2_Byte 0
  loc_5E1010: FLdPr Me
  loc_5E1013: MemStI2 PagaconTarjeta
  loc_5E1016: LitI2_Byte 0
  loc_5E1018: ImpAdStI2 MemVar_74C37E
  loc_5E101B: LitI2_Byte 0
  loc_5E101D: FLdPr Me
  loc_5E1020: MemStI2 global_70
  loc_5E1023: Call OK_UnknownEvent_8()
  loc_5E1028: ExitProcHresult
End Sub

Private Sub Cancel_UnknownEvent_8 '5D3B50
  'Data Table: 431FF4
  loc_5D3B34: LitI2_Byte &HFF
  loc_5D3B36: ImpAdStI2 MemVar_74C37E
  loc_5D3B39: ILdRf Me
  loc_5D3B3C: FStAdNoPop
  loc_5D3B40: ImpAdLdRf MemVar_7520D4
  loc_5D3B43: NewIfNullPr Global
  loc_5D3B46: Global.Unload from_stack_1
  loc_5D3B4B: FFree1Ad var_88
  loc_5D3B4E: ExitProcHresult
End Sub

Private Sub Tarjeta_GotFocus() '5CFBB8
  'Data Table: 431FF4
  loc_5CFBA4: FLdPrThis
  loc_5CFBA5: VCallAd Control_ID_NumeroTarjeta
  loc_5CFBA8: FStAdFunc var_88
  loc_5CFBAB: FLdPr var_88
  loc_5CFBAE: Me.SetFocus
  loc_5CFBB3: FFree1Ad var_88
  loc_5CFBB6: ExitProcHresult
End Sub

Private Sub cmdTank_Click() '5C8420
  'Data Table: 431FF4
  loc_5C841C: ExitProcHresult
  loc_5C841D: CI4Cy
  loc_5C841E: ExitProcR8
End Sub

Private Sub cmdTank_GotFocus(arg_C) '5DD584
  'Data Table: 431FF4
  loc_5DD53C: LitI2_Byte &HFF
  loc_5DD53E: PopTmpLdAd2 var_86
  loc_5DD541: ILdRf arg_C
  loc_5DD544: from_stack_2v = Proc_113_24_5F4A7C(from_stack_1v)
  loc_5DD549: FLdRfVar var_8C
  loc_5DD54C: FLdPr Me
  loc_5DD54F: MemLdI2 global_68
  loc_5DD552: LitI2_Byte 1
  loc_5DD554: AddI2
  loc_5DD555: CI4UI1
  loc_5DD556: ImpAdLdRf MemVar_74C1D8
  loc_5DD559: Ary1LdUI1
  loc_5DD55B: CI2UI1
  loc_5DD55D: ImpAdLdRf MemVar_74A220
  loc_5DD560: NewIfNullPr clsProducts
  loc_5DD568: ILdRf var_8C
  loc_5DD56B: FLdPrThis
  loc_5DD56C: VCallAd Control_ID_txtProducto
  loc_5DD56F: FStAdFunc var_90
  loc_5DD572: FLdPr var_90
  loc_5DD575: Me.Text = from_stack_1
  loc_5DD57A: FFree1Str var_8C
  loc_5DD57D: FFree1Ad var_90
  loc_5DD580: ExitProcHresult
End Sub

Private Function SSPanel1_UnknownEvent_8(arg_C) '6858E8
  'Data Table: 431FF4
  loc_6853AC: LitI2_Byte 0
  loc_6853AE: FLdPrThis
  loc_6853AF: VCallAd Control_ID_Tarjeta
  loc_6853B2: FStAdFunc var_88
  loc_6853B5: FLdPr var_88
  loc_6853B8: Me.Visible = from_stack_1b
  loc_6853BD: FFree1Ad var_88
  loc_6853C0: LitI2_Byte 0
  loc_6853C2: FLdPrThis
  loc_6853C3: VCallAd Control_ID_LTarjeta
  loc_6853C6: FStAdFunc var_88
  loc_6853C9: FLdPr var_88
  loc_6853CC: Me.Visible = from_stack_1b
  loc_6853D1: FFree1Ad var_88
  loc_6853D4: LitI2_Byte 0
  loc_6853D6: FLdPrThis
  loc_6853D7: VCallAd Control_ID_LNumeroTarjeta
  loc_6853DA: FStAdFunc var_88
  loc_6853DD: FLdPr var_88
  loc_6853E0: Me.Visible = from_stack_1b
  loc_6853E5: FFree1Ad var_88
  loc_6853E8: LitI2_Byte 0
  loc_6853EA: FLdPrThis
  loc_6853EB: VCallAd Control_ID_NumeroTarjeta
  loc_6853EE: FStAdFunc var_88
  loc_6853F1: FLdPr var_88
  loc_6853F4: Me.Visible = from_stack_1b
  loc_6853F9: FFree1Ad var_88
  loc_6853FC: ILdI2 arg_C
  loc_6853FF: FStI2 var_8A
  loc_685402: FLdI2 var_8A
  loc_685405: LitI2_Byte 0
  loc_685407: EqI2
  loc_685408: BranchF loc_68548B
  loc_68540B: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_685410: ImpAdCallI2 Proc_142_4_5D8194()
  loc_685415: AndI4
  loc_685416: ImpAdCallI2 Proc_142_8_5D8068()
  loc_68541B: AndI4
  loc_68541C: BranchF loc_685420
  loc_68541F: ExitProcHresult
  loc_685420: FLdPr Me
  loc_685423: MemLdI2 global_72
  loc_685426: BranchF loc_685450
  loc_685429: LitVar_TRUE var_A0
  loc_68542C: PopAdLdVar
  loc_68542D: FLdRfVar var_90
  loc_685430: LitI2_Byte 4
  loc_685432: FLdPrThis
  loc_685433: VCallAd Control_ID_SSPanel1
  loc_685436: FStAdFunc var_88
  loc_685439: FLdPr var_88
  loc_68543C: Set from_stack_2 = Me(from_stack_1)
  loc_685441: FLdPr var_90
  loc_685444: LateIdSt
  loc_685449: FFreeAd var_88 = ""
  loc_685450: LitVar_FALSE
  loc_685454: PopAdLdVar
  loc_685455: FLdPrThis
  loc_685456: VCallAd Control_ID_SSPanel2
  loc_685459: FStAdFunc var_88
  loc_68545C: FLdPr var_88
  loc_68545F: LateIdSt
  loc_685464: FFree1Ad var_88
  loc_685467: LitI2_Byte 0
  loc_685469: FLdPrThis
  loc_68546A: VCallAd Control_ID_txtProducto
  loc_68546D: FStAdFunc var_88
  loc_685470: FLdPr var_88
  loc_685473: Me.Visible = from_stack_1b
  loc_685478: FFree1Ad var_88
  loc_68547B: LitI2_Byte 0
  loc_68547D: FLdPr Me
  loc_685480: MemStI2 PagaconTarjeta
  loc_685483: LitI2_Byte 0
  loc_685485: ImpAdStI2 MemVar_74C37E
  loc_685488: Branch loc_685824
  loc_68548B: FLdI2 var_8A
  loc_68548E: LitI2_Byte 1
  loc_685490: EqI2
  loc_685491: BranchF loc_685517
  loc_685494: LitI2_Byte &H55
  loc_685496: PopTmpLdAd2 var_A2
  loc_685499: ImpAdCallI2 Proc_94_7_603DD0()
  loc_68549E: NotI4
  loc_68549F: BranchF loc_6854A3
  loc_6854A2: ExitProcHresult
  loc_6854A3: LitVar_FALSE
  loc_6854A7: PopAdLdVar
  loc_6854A8: FLdRfVar var_90
  loc_6854AB: LitI2_Byte 4
  loc_6854AD: FLdPrThis
  loc_6854AE: VCallAd Control_ID_SSPanel1
  loc_6854B1: FStAdFunc var_88
  loc_6854B4: FLdPr var_88
  loc_6854B7: Set from_stack_2 = Me(from_stack_1)
  loc_6854BC: FLdPr var_90
  loc_6854BF: LateIdSt
  loc_6854C4: FFreeAd var_88 = ""
  loc_6854CB: LitI2_Byte 0
  loc_6854CD: FLdPr Me
  loc_6854D0: MemStI2 PagaconTarjeta
  loc_6854D3: LitVar_TRUE var_A0
  loc_6854D6: PopAdLdVar
  loc_6854D7: FLdPrThis
  loc_6854D8: VCallAd Control_ID_SSPanel2
  loc_6854DB: FStAdFunc var_88
  loc_6854DE: FLdPr var_88
  loc_6854E1: LateIdSt
  loc_6854E6: FFree1Ad var_88
  loc_6854E9: LitI2_Byte &HFF
  loc_6854EB: FLdPrThis
  loc_6854EC: VCallAd Control_ID_txtProducto
  loc_6854EF: FStAdFunc var_88
  loc_6854F2: FLdPr var_88
  loc_6854F5: Me.Visible = from_stack_1b
  loc_6854FA: FFree1Ad var_88
  loc_6854FD: LitI2_Byte 0
  loc_6854FF: PopTmpLdAd2 var_A2
  loc_685502: Call cmdTank_Click()
  loc_685507: LitI2_Byte 0
  loc_685509: FLdPr Me
  loc_68550C: MemStI2 PagaconTarjeta
  loc_68550F: LitI2_Byte 0
  loc_685511: ImpAdStI2 MemVar_74C37E
  loc_685514: Branch loc_685824
  loc_685517: FLdI2 var_8A
  loc_68551A: LitI2_Byte 2
  loc_68551C: EqI2
  loc_68551D: BranchF loc_68559A
  loc_685520: LitI2_Byte &H54
  loc_685522: PopTmpLdAd2 var_A2
  loc_685525: ImpAdCallI2 Proc_94_7_603DD0()
  loc_68552A: NotI4
  loc_68552B: BranchF loc_68552F
  loc_68552E: ExitProcHresult
  loc_68552F: LitVar_FALSE
  loc_685533: PopAdLdVar
  loc_685534: FLdRfVar var_90
  loc_685537: LitI2_Byte 4
  loc_685539: FLdPrThis
  loc_68553A: VCallAd Control_ID_SSPanel1
  loc_68553D: FStAdFunc var_88
  loc_685540: FLdPr var_88
  loc_685543: Set from_stack_2 = Me(from_stack_1)
  loc_685548: FLdPr var_90
  loc_68554B: LateIdSt
  loc_685550: FFreeAd var_88 = ""
  loc_685557: LitI2_Byte 0
  loc_685559: FLdPr Me
  loc_68555C: MemStI2 PagaconTarjeta
  loc_68555F: LitVar_FALSE
  loc_685563: PopAdLdVar
  loc_685564: FLdPrThis
  loc_685565: VCallAd Control_ID_SSPanel2
  loc_685568: FStAdFunc var_88
  loc_68556B: FLdPr var_88
  loc_68556E: LateIdSt
  loc_685573: FFree1Ad var_88
  loc_685576: LitI2_Byte 0
  loc_685578: FLdPrThis
  loc_685579: VCallAd Control_ID_txtProducto
  loc_68557C: FStAdFunc var_88
  loc_68557F: FLdPr var_88
  loc_685582: Me.Visible = from_stack_1b
  loc_685587: FFree1Ad var_88
  loc_68558A: LitI2_Byte 0
  loc_68558C: FLdPr Me
  loc_68558F: MemStI2 PagaconTarjeta
  loc_685592: LitI2_Byte 0
  loc_685594: ImpAdStI2 MemVar_74C37E
  loc_685597: Branch loc_685824
  loc_68559A: FLdI2 var_8A
  loc_68559D: LitI2_Byte 3
  loc_68559F: EqI2
  loc_6855A0: BranchF loc_685606
  loc_6855A3: LitVar_FALSE
  loc_6855A7: PopAdLdVar
  loc_6855A8: FLdPrThis
  loc_6855A9: VCallAd Control_ID_SSPanel2
  loc_6855AC: FStAdFunc var_88
  loc_6855AF: FLdPr var_88
  loc_6855B2: LateIdSt
  loc_6855B7: FFree1Ad var_88
  loc_6855BA: LitI2_Byte 0
  loc_6855BC: FLdPrThis
  loc_6855BD: VCallAd Control_ID_txtProducto
  loc_6855C0: FStAdFunc var_88
  loc_6855C3: FLdPr var_88
  loc_6855C6: Me.Visible = from_stack_1b
  loc_6855CB: FFree1Ad var_88
  loc_6855CE: LitVar_FALSE
  loc_6855D2: PopAdLdVar
  loc_6855D3: FLdRfVar var_90
  loc_6855D6: LitI2_Byte 4
  loc_6855D8: FLdPrThis
  loc_6855D9: VCallAd Control_ID_SSPanel1
  loc_6855DC: FStAdFunc var_88
  loc_6855DF: FLdPr var_88
  loc_6855E2: Set from_stack_2 = Me(from_stack_1)
  loc_6855E7: FLdPr var_90
  loc_6855EA: LateIdSt
  loc_6855EF: FFreeAd var_88 = ""
  loc_6855F6: LitI2_Byte 0
  loc_6855F8: FLdPr Me
  loc_6855FB: MemStI2 PagaconTarjeta
  loc_6855FE: LitI2_Byte 0
  loc_685600: ImpAdStI2 MemVar_74C37E
  loc_685603: Branch loc_685824
  loc_685606: FLdI2 var_8A
  loc_685609: LitI2_Byte 4
  loc_68560B: EqI2
  loc_68560C: BranchF loc_6856EC
  loc_68560F: LitI4 &H15
  loc_685614: ImpAdLdRf MemVar_74A170
  loc_685617: Ary1LdI2
  loc_685618: NotI4
  loc_685619: CVarBoolI2 var_114
  loc_68561D: LitVarI2 var_C4, 3
  loc_685622: LitI4 1
  loc_685627: ImpAdLdRf MemVar_74BF90
  loc_68562A: CVarRef
  loc_68562F: FLdRfVar var_D4
  loc_685632: ImpAdCallFPR4  = Mid(, , )
  loc_685637: FLdRfVar var_D4
  loc_68563A: LitVarStr var_E4, "\\."
  loc_68563F: HardType
  loc_685640: EqVar var_F4
  loc_685644: NotVar var_104
  loc_685648: AndVar var_124
  loc_68564C: CBoolVarNull
  loc_68564E: FFreeVar var_C4 = "": var_D4 = ""
  loc_685657: BranchF loc_685660
  loc_68565A: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_68565F: ExitProcHresult
  loc_685660: FLdRfVar var_90
  loc_685663: LitI2_Byte 4
  loc_685665: FLdPrThis
  loc_685666: VCallAd Control_ID_SSPanel1
  loc_685669: FStAdFunc var_88
  loc_68566C: FLdPr var_88
  loc_68566F: Set from_stack_2 = Me(from_stack_1)
  loc_685674: FLdPr var_90
  loc_685677: LateIdLdVar var_C4 DispID_7 -32767
  loc_68567E: CBoolVar
  loc_685680: FFreeAd var_88 = ""
  loc_685687: FFree1Var var_C4 = ""
  loc_68568A: BranchF loc_6856E4
  loc_68568D: LitVar_FALSE
  loc_685691: PopAdLdVar
  loc_685692: FLdPrThis
  loc_685693: VCallAd Control_ID_SSPanel2
  loc_685696: FStAdFunc var_88
  loc_685699: FLdPr var_88
  loc_68569C: LateIdSt
  loc_6856A1: FFree1Ad var_88
  loc_6856A4: LitI2_Byte 0
  loc_6856A6: FLdPrThis
  loc_6856A7: VCallAd Control_ID_txtProducto
  loc_6856AA: FStAdFunc var_88
  loc_6856AD: FLdPr var_88
  loc_6856B0: Me.Visible = from_stack_1b
  loc_6856B5: FFree1Ad var_88
  loc_6856B8: FLdPr Me
  loc_6856BB: MemLdI2 global_72
  loc_6856BE: BranchF loc_6856E4
  loc_6856C1: FLdPr Me
  loc_6856C4: MemLdRfVar from_stack_1.PagaconTarjeta
  loc_6856C7: FLdRfVar var_C4
  loc_6856CA: ImpAdCallFPR4  = Proc_158_1_6279F8()
  loc_6856CF: FLdRfVar var_C4
  loc_6856D2: LitVar_TRUE var_A0
  loc_6856D5: HardType
  loc_6856D6: EqVarBool
  loc_6856D8: FFree1Var var_C4 = ""
  loc_6856DB: BranchF loc_6856E4
  loc_6856DE: from_stack_1v = Proc_113_25_5F2A64()
  loc_6856E3: ExitProcHresult
  loc_6856E4: LitI2_Byte 0
  loc_6856E6: ImpAdStI2 MemVar_74C37E
  loc_6856E9: Branch loc_685824
  loc_6856EC: FLdI2 var_8A
  loc_6856EF: LitI2_Byte 5
  loc_6856F1: EqI2
  loc_6856F2: BranchF loc_685824
  loc_6856F5: FLdPr Me
  loc_6856F8: MemLdI2 global_72
  loc_6856FB: BranchF loc_685725
  loc_6856FE: LitVar_TRUE var_A0
  loc_685701: PopAdLdVar
  loc_685702: FLdRfVar var_90
  loc_685705: LitI2_Byte 4
  loc_685707: FLdPrThis
  loc_685708: VCallAd Control_ID_SSPanel1
  loc_68570B: FStAdFunc var_88
  loc_68570E: FLdPr var_88
  loc_685711: Set from_stack_2 = Me(from_stack_1)
  loc_685716: FLdPr var_90
  loc_685719: LateIdSt
  loc_68571E: FFreeAd var_88 = ""
  loc_685725: LitI2_Byte 0
  loc_685727: FLdPr Me
  loc_68572A: MemStI2 PagaconTarjeta
  loc_68572D: LitVar_FALSE
  loc_685731: PopAdLdVar
  loc_685732: FLdPrThis
  loc_685733: VCallAd Control_ID_SSPanel2
  loc_685736: FStAdFunc var_88
  loc_685739: FLdPr var_88
  loc_68573C: LateIdSt
  loc_685741: FFree1Ad var_88
  loc_685744: LitI2_Byte 0
  loc_685746: FLdPrThis
  loc_685747: VCallAd Control_ID_txtProducto
  loc_68574A: FStAdFunc var_88
  loc_68574D: FLdPr var_88
  loc_685750: Me.Visible = from_stack_1b
  loc_685755: FFree1Ad var_88
  loc_685758: FLdRfVar var_A2
  loc_68575B: ImpAdLdRf MemVar_74C8D8
  loc_68575E: NewIfNullPr FPTarjetas
  loc_685761:  = FPTarjetas.Visible
  loc_685766: FLdI2 var_A2
  loc_685769: NotI4
  loc_68576A: BranchF loc_685782
  loc_68576D: LitVar_Missing var_B4
  loc_685770: PopAdLdVar
  loc_685771: LitVarI2 var_A0, 1
  loc_685776: PopAdLdVar
  loc_685777: ImpAdLdRf MemVar_74C8D8
  loc_68577A: NewIfNullPr FPTarjetas
  loc_68577D: FPTarjetas.Show from_stack_1, from_stack_2
  loc_685782: ImpAdLdI2 MemVar_74BEFC
  loc_685785: LitI2_Byte 0
  loc_685787: EqI2
  loc_685788: BranchF loc_685799
  loc_68578B: LitI2_Byte 0
  loc_68578D: PopTmpLdAd2 var_A2
  loc_685790: from_stack_2v = SSPanel1_UnknownEvent_8(from_stack_1v)
  loc_685795: ExitProcHresult
  loc_685796: Branch loc_6857B3
  loc_685799: ImpAdLdI2 MemVar_74BEFC
  loc_68579C: CI4UI1
  loc_68579D: ImpAdLdRf MemVar_74A008
  loc_6857A0: Ary1LdI4
  loc_6857A1: FLdPrThis
  loc_6857A2: VCallAd Control_ID_Tarjeta
  loc_6857A5: FStAdFunc var_88
  loc_6857A8: FLdPr var_88
  loc_6857AB: Me.Text = from_stack_1
  loc_6857B0: FFree1Ad var_88
  loc_6857B3: LitI2_Byte &HFF
  loc_6857B5: FLdPrThis
  loc_6857B6: VCallAd Control_ID_LTarjeta
  loc_6857B9: FStAdFunc var_88
  loc_6857BC: FLdPr var_88
  loc_6857BF: Me.Visible = from_stack_1b
  loc_6857C4: FFree1Ad var_88
  loc_6857C7: LitI2_Byte &HFF
  loc_6857C9: FLdPrThis
  loc_6857CA: VCallAd Control_ID_LNumeroTarjeta
  loc_6857CD: FStAdFunc var_88
  loc_6857D0: FLdPr var_88
  loc_6857D3: Me.Visible = from_stack_1b
  loc_6857D8: FFree1Ad var_88
  loc_6857DB: LitI2_Byte &HFF
  loc_6857DD: FLdPrThis
  loc_6857DE: VCallAd Control_ID_NumeroTarjeta
  loc_6857E1: FStAdFunc var_88
  loc_6857E4: FLdPr var_88
  loc_6857E7: Me.Visible = from_stack_1b
  loc_6857EC: FFree1Ad var_88
  loc_6857EF: LitI2_Byte &HFF
  loc_6857F1: FLdPrThis
  loc_6857F2: VCallAd Control_ID_NumeroTarjeta
  loc_6857F5: FStAdFunc var_88
  loc_6857F8: FLdPr var_88
  loc_6857FB: Me.Enabled = from_stack_1b
  loc_685800: FFree1Ad var_88
  loc_685803: LitI2_Byte &HFF
  loc_685805: FLdPrThis
  loc_685806: VCallAd Control_ID_Tarjeta
  loc_685809: FStAdFunc var_88
  loc_68580C: FLdPr var_88
  loc_68580F: Me.Visible = from_stack_1b
  loc_685814: FFree1Ad var_88
  loc_685817: LitI2_Byte &HFF
  loc_685819: FLdPr Me
  loc_68581C: MemStI2 PagaconTarjeta
  loc_68581F: LitI2_Byte 0
  loc_685821: ImpAdStI2 MemVar_74C37E
  loc_685824: LitVarI4
  loc_68582C: PopAdLdVar
  loc_68582D: FLdRfVar var_90
  loc_685830: FLdPr Me
  loc_685833: MemLdI2 global_70
  loc_685836: FLdPrThis
  loc_685837: VCallAd Control_ID_SSPanel1
  loc_68583A: FStAdFunc var_88
  loc_68583D: FLdPr var_88
  loc_685840: Set from_stack_2 = Me(from_stack_1)
  loc_685845: FLdPr var_90
  loc_685848: LateIdSt
  loc_68584D: FFreeAd var_88 = ""
  loc_685854: LitVarI4
  loc_68585C: PopAdLdVar
  loc_68585D: FLdRfVar var_90
  loc_685860: FLdPr Me
  loc_685863: MemLdI2 global_70
  loc_685866: FLdPrThis
  loc_685867: VCallAd Control_ID_SSPanel1
  loc_68586A: FStAdFunc var_88
  loc_68586D: FLdPr var_88
  loc_685870: Set from_stack_2 = Me(from_stack_1)
  loc_685875: FLdPr var_90
  loc_685878: LateIdSt
  loc_68587D: FFreeAd var_88 = ""
  loc_685884: LitVarI4
  loc_68588C: PopAdLdVar
  loc_68588D: FLdRfVar var_90
  loc_685890: ILdI2 arg_C
  loc_685893: FLdPrThis
  loc_685894: VCallAd Control_ID_SSPanel1
  loc_685897: FStAdFunc var_88
  loc_68589A: FLdPr var_88
  loc_68589D: Set from_stack_2 = Me(from_stack_1)
  loc_6858A2: FLdPr var_90
  loc_6858A5: LateIdSt
  loc_6858AA: FFreeAd var_88 = ""
  loc_6858B1: LitVarI4
  loc_6858B9: PopAdLdVar
  loc_6858BA: FLdRfVar var_90
  loc_6858BD: ILdI2 arg_C
  loc_6858C0: FLdPrThis
  loc_6858C1: VCallAd Control_ID_SSPanel1
  loc_6858C4: FStAdFunc var_88
  loc_6858C7: FLdPr var_88
  loc_6858CA: Set from_stack_2 = Me(from_stack_1)
  loc_6858CF: FLdPr var_90
  loc_6858D2: LateIdSt
  loc_6858D7: FFreeAd var_88 = ""
  loc_6858DE: ILdI2 arg_C
  loc_6858E1: FLdPr Me
  loc_6858E4: MemStI2 global_70
  loc_6858E7: ExitProcHresult
End Function

Private Sub OK_UnknownEvent_8 '5F1510
  'Data Table: 431FF4
  loc_5F146C: ImpAdLdI2 MemVar_74C37E
  loc_5F146F: BranchF loc_5F1478
  loc_5F1472: Call Cancel_UnknownEvent_8()
  loc_5F1477: ExitProcHresult
  loc_5F1478: FLdPr Me
  loc_5F147B: MemLdI2 global_70
  loc_5F147E: FStI2 var_86
  loc_5F1481: FLdI2 var_86
  loc_5F1484: LitI2_Byte 0
  loc_5F1486: EqI2
  loc_5F1487: BranchF loc_5F1495
  loc_5F148A: LitI2_Byte &H10
  loc_5F148C: CUI1I2
  loc_5F148E: ImpAdStUI1 MemVar_74C380
  loc_5F1492: Branch loc_5F14E9
  loc_5F1495: FLdI2 var_86
  loc_5F1498: LitI2_Byte 1
  loc_5F149A: EqI2
  loc_5F149B: BranchF loc_5F14A9
  loc_5F149E: LitI2_Byte 2
  loc_5F14A0: CUI1I2
  loc_5F14A2: ImpAdStUI1 MemVar_74C380
  loc_5F14A6: Branch loc_5F14E9
  loc_5F14A9: FLdI2 var_86
  loc_5F14AC: LitI2_Byte 2
  loc_5F14AE: EqI2
  loc_5F14AF: BranchF loc_5F14BD
  loc_5F14B2: LitI2_Byte 3
  loc_5F14B4: CUI1I2
  loc_5F14B6: ImpAdStUI1 MemVar_74C380
  loc_5F14BA: Branch loc_5F14E9
  loc_5F14BD: FLdI2 var_86
  loc_5F14C0: LitI2_Byte 3
  loc_5F14C2: EqI2
  loc_5F14C3: BranchF loc_5F14D1
  loc_5F14C6: LitI2_Byte 4
  loc_5F14C8: CUI1I2
  loc_5F14CA: ImpAdStUI1 MemVar_74C380
  loc_5F14CE: Branch loc_5F14E9
  loc_5F14D1: FLdI2 var_86
  loc_5F14D4: LitI2_Byte 5
  loc_5F14D6: EqI2
  loc_5F14D7: BranchF loc_5F14E9
  loc_5F14DA: LitI2_Byte &H50
  loc_5F14DC: ImpAdLdI2 MemVar_74BEFC
  loc_5F14DF: AddI2
  loc_5F14E0: LitI2_Byte 1
  loc_5F14E2: SubI2
  loc_5F14E3: CUI1I2
  loc_5F14E5: ImpAdStUI1 MemVar_74C380
  loc_5F14E9: FLdPr Me
  loc_5F14EC: MemLdI2 global_68
  loc_5F14EF: LitI2_Byte 1
  loc_5F14F1: AddI2
  loc_5F14F2: CUI1I2
  loc_5F14F4: ImpAdStUI1 MemVar_74C381
  loc_5F14F8: ILdRf Me
  loc_5F14FB: FStAdNoPop
  loc_5F14FF: ImpAdLdRf MemVar_7520D4
  loc_5F1502: NewIfNullPr Global
  loc_5F1505: Global.Unload from_stack_1
  loc_5F150A: FFree1Ad var_8C
  loc_5F150D: ExitProcHresult
End Sub

Public Function PagaconTarjetaGet() '432948
  PagaconTarjetaGet = PagaconTarjeta
End Function

Public Sub PagaconTarjetaPut(Value) '432957
  PagaconTarjeta = Value
End Sub

Public Function NumeroVentaGet() '432966
  NumeroVentaGet = NumeroVenta
End Function

Public Sub NumeroVentaPut(Value) '432975
  NumeroVenta = Value
End Sub

Public Function SurtGet() '432984
  SurtGet = Surt
End Function

Public Sub SurtPut(Value) '432993
  Surt = Value
End Sub

Public Function bVentaPagadaGet() '4329A2
  bVentaPagadaGet = bVentaPagada
End Function

Public Sub bVentaPagadaPut(Value) '4329B1
  bVentaPagada = Value
End Sub

Public Function TicketDirectoGet() '4329C0
  TicketDirectoGet = TicketDirecto
End Function

Public Sub TicketDirectoPut(Value) '4329CF
  TicketDirecto = Value
End Sub

Private Function Proc_113_23_5DB634() '5DB634
  'Data Table: 431FF4
  loc_5DB5F8: FLdPr Me
  loc_5DB5FB: MemLdStr Surt
  loc_5DB5FE: CI2Str
  loc_5DB600: ImpAdCallI2 Proc_53_12_5EB88C()
  loc_5DB605: BranchF loc_5DB630
  loc_5DB608: LitVar_FALSE
  loc_5DB60C: PopAdLdVar
  loc_5DB60D: FLdRfVar var_8C
  loc_5DB610: LitI2_Byte 1
  loc_5DB612: FLdPrThis
  loc_5DB613: VCallAd Control_ID_SSPanel1
  loc_5DB616: FStAdFunc var_88
  loc_5DB619: FLdPr var_88
  loc_5DB61C: Set from_stack_2 = Me(from_stack_1)
  loc_5DB621: FLdPr var_8C
  loc_5DB624: LateIdSt
  loc_5DB629: FFreeAd var_88 = ""
  loc_5DB630: ExitProcHresult
End Function

Private Function Proc_113_24_5F4A7C(arg_C) '5F4A7C
  'Data Table: 431FF4
  loc_5F49C8: LitI4 &H989080
  loc_5F49CD: FLdRfVar var_8C
  loc_5F49D0: FLdPr Me
  loc_5F49D3: MemLdI2 global_68
  loc_5F49D6: FLdPrThis
  loc_5F49D7: VCallAd Control_ID_cmdTank
  loc_5F49DA: FStAdFunc var_88
  loc_5F49DD: FLdPr var_88
  loc_5F49E0: Set from_stack_2 = Me(from_stack_1)
  loc_5F49E5: FLdPr var_8C
  loc_5F49E8: Me.BackColor = from_stack_1
  loc_5F49ED: FFreeAd var_88 = ""
  loc_5F49F4: LitI4 &H989080
  loc_5F49F9: FLdRfVar var_8C
  loc_5F49FC: FLdPr Me
  loc_5F49FF: MemLdI2 global_68
  loc_5F4A02: FLdPrThis
  loc_5F4A03: VCallAd Control_ID_cmdTank
  loc_5F4A06: FStAdFunc var_88
  loc_5F4A09: FLdPr var_88
  loc_5F4A0C: Set from_stack_2 = Me(from_stack_1)
  loc_5F4A11: FLdPr var_8C
  loc_5F4A14: Me.BackColor = from_stack_1
  loc_5F4A19: FFreeAd var_88 = ""
  loc_5F4A20: LitI4 &HFF0000
  loc_5F4A25: FLdRfVar var_8C
  loc_5F4A28: ILdI2 arg_C
  loc_5F4A2B: FLdPrThis
  loc_5F4A2C: VCallAd Control_ID_cmdTank
  loc_5F4A2F: FStAdFunc var_88
  loc_5F4A32: FLdPr var_88
  loc_5F4A35: Set from_stack_2 = Me(from_stack_1)
  loc_5F4A3A: FLdPr var_8C
  loc_5F4A3D: Me.BackColor = from_stack_1
  loc_5F4A42: FFreeAd var_88 = ""
  loc_5F4A49: LitI4 &HFF0000
  loc_5F4A4E: FLdRfVar var_8C
  loc_5F4A51: ILdI2 arg_C
  loc_5F4A54: FLdPrThis
  loc_5F4A55: VCallAd Control_ID_cmdTank
  loc_5F4A58: FStAdFunc var_88
  loc_5F4A5B: FLdPr var_88
  loc_5F4A5E: Set from_stack_2 = Me(from_stack_1)
  loc_5F4A63: FLdPr var_8C
  loc_5F4A66: Me.BackColor = from_stack_1
  loc_5F4A6B: FFreeAd var_88 = ""
  loc_5F4A72: ILdI2 arg_C
  loc_5F4A75: FLdPr Me
  loc_5F4A78: MemStI2 global_68
  loc_5F4A7B: ExitProcHresult
End Function

Private Function Proc_113_25_5F2A64() '5F2A64
  'Data Table: 431FF4
  loc_5F29C4: FLdRfVar var_90
  loc_5F29C7: FLdRfVar var_8C
  loc_5F29CA: FLdRfVar var_88
  loc_5F29CD: ImpAdLdRf MemVar_7520D4
  loc_5F29D0: NewIfNullPr Global
  loc_5F29D3:  = Global.Screen
  loc_5F29D8: FLdPr var_88
  loc_5F29DB:  = Screen.ActiveForm
  loc_5F29E0: FLdPr var_8C
  loc_5F29E3:  = Form.Name
  loc_5F29E8: ILdRf var_90
  loc_5F29EB: LitStr "EmisionFacturas"
  loc_5F29EE: EqStr
  loc_5F29F0: FFree1Str var_90
  loc_5F29F3: FFreeAd var_88 = ""
  loc_5F29FA: BranchF loc_5F29FE
  loc_5F29FD: ExitProcHresult
  loc_5F29FE: FLdPr Me
  loc_5F2A01: MemLdI2 global_70
  loc_5F2A04: LitI2_Byte 5
  loc_5F2A06: EqI2
  loc_5F2A07: BranchF loc_5F2A19
  loc_5F2A0A: LitI2_Byte &H30
  loc_5F2A0C: ImpAdLdI2 MemVar_74BEFC
  loc_5F2A0F: AddI2
  loc_5F2A10: CUI1I2
  loc_5F2A12: ImpAdStUI1 MemVar_74C380
  loc_5F2A16: Branch loc_5F2A21
  loc_5F2A19: LitI2_Byte &H20
  loc_5F2A1B: CUI1I2
  loc_5F2A1D: ImpAdStUI1 MemVar_74C380
  loc_5F2A21: LitVar_Missing var_B0
  loc_5F2A24: PopAdLdVar
  loc_5F2A25: LitVarI2 var_A0, 1
  loc_5F2A2A: PopAdLdVar
  loc_5F2A2B: ImpAdLdRf MemVar_74D98C
  loc_5F2A2E: NewIfNullPr EmisionFacturas
  loc_5F2A31: EmisionFacturas.Show from_stack_1, from_stack_2
  loc_5F2A36: ImpAdLdI2 MemVar_74C37E
  loc_5F2A39: NotI4
  loc_5F2A3A: BranchF loc_5F2A4C
  loc_5F2A3D: FLdPr Me
  loc_5F2A40: MemLdI2 global_68
  loc_5F2A43: LitI2_Byte 1
  loc_5F2A45: AddI2
  loc_5F2A46: CUI1I2
  loc_5F2A48: ImpAdStUI1 MemVar_74C381
  loc_5F2A4C: ILdRf Me
  loc_5F2A4F: FStAdNoPop
  loc_5F2A53: ImpAdLdRf MemVar_7520D4
  loc_5F2A56: NewIfNullPr Global
  loc_5F2A59: Global.Unload from_stack_1
  loc_5F2A5E: FFree1Ad var_88
  loc_5F2A61: ExitProcHresult
End Function
