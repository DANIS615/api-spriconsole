VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form calcmediciones
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 720
  ClientTop = 315
  ClientWidth = 10500
  ClientHeight = 6420
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 60
    Width = 10275
    Height = 6255
    TabIndex = 6
    Begin VB.Frame Frame3
      Left = 240
      Top = 1200
      Width = 6675
      Height = 75
      TabIndex = 26
    End
    Begin VB.Frame Frame2
      Left = 240
      Top = 2280
      Width = 6675
      Height = 75
      TabIndex = 25
    End
    Begin VB.TextBox Agua
      Left = 2160
      Top = 4440
      Width = 2175
      Height = 615
      Text = "calcmediciones.frx":0000
      TabIndex = 3
      MultiLine = -1  'True
      Alignment = 1 'Right Justify
      MaxLength = 9
      Locked = -1  'True
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
    Begin VB.TextBox Producto
      Left = 2160
      Top = 5280
      Width = 2175
      Height = 615
      Text = "calcmediciones.frx":0007
      TabIndex = 2
      MultiLine = -1  'True
      Alignment = 1 'Right Justify
      MaxLength = 9
      Locked = -1  'True
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
    Begin VB.TextBox mmAgua
      Left = 4560
      Top = 4440
      Width = 2175
      Height = 615
      Text = "0"
      TabIndex = 1
      Alignment = 1 'Right Justify
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
    Begin VB.TextBox mmProducto
      Left = 4560
      Top = 5280
      Width = 2175
      Height = 615
      Text = "0"
      TabIndex = 0
      Alignment = 1 'Right Justify
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
    Begin Threed.SSCommand Teclas
      Index = 0
      Left = 8100
      Top = 3240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 9
      OleObjectBlob = "calcmediciones.frx":000E
    End
    Begin Threed.SSCommand Teclas
      Index = 1
      Left = 7140
      Top = 360
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 10
      OleObjectBlob = "calcmediciones.frx":006C
    End
    Begin Threed.SSCommand Teclas
      Index = 2
      Left = 8100
      Top = 360
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 11
      OleObjectBlob = "calcmediciones.frx":00CA
    End
    Begin Threed.SSCommand Teclas
      Index = 3
      Left = 9060
      Top = 360
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 12
      OleObjectBlob = "calcmediciones.frx":0128
    End
    Begin Threed.SSCommand Teclas
      Index = 4
      Left = 7140
      Top = 1320
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 13
      OleObjectBlob = "calcmediciones.frx":0186
    End
    Begin Threed.SSCommand Teclas
      Index = 5
      Left = 8100
      Top = 1320
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 14
      OleObjectBlob = "calcmediciones.frx":01E4
    End
    Begin Threed.SSCommand Teclas
      Index = 6
      Left = 9060
      Top = 1320
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 15
      OleObjectBlob = "calcmediciones.frx":0242
    End
    Begin Threed.SSCommand Teclas
      Index = 7
      Left = 7140
      Top = 2280
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 16
      OleObjectBlob = "calcmediciones.frx":02A0
    End
    Begin Threed.SSCommand Teclas
      Index = 8
      Left = 8100
      Top = 2280
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 17
      OleObjectBlob = "calcmediciones.frx":02FE
    End
    Begin Threed.SSCommand Borrar
      Left = 7140
      Top = 3240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 19
      OleObjectBlob = "calcmediciones.frx":035C
    End
    Begin Threed.SSCommand Teclas
      Index = 9
      Left = 9060
      Top = 2280
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 18
      OleObjectBlob = "calcmediciones.frx":080C
    End
    Begin Threed.SSCommand Punto
      Left = 9060
      Top = 3240
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 20
      OleObjectBlob = "calcmediciones.frx":086A
    End
    Begin Threed.SSPanel SSPanel1
      Index = 0
      Left = 4560
      Top = 3360
      Width = 2175
      Height = 855
      TabIndex = 21
      OleObjectBlob = "calcmediciones.frx":08C8
    End
    Begin Threed.SSPanel SSPanel1
      Index = 1
      Left = 2160
      Top = 3360
      Width = 2175
      Height = 855
      TabIndex = 22
      OleObjectBlob = "calcmediciones.frx":094B
    End
    Begin Threed.SSCommand Cancel
      Left = 7140
      Top = 4860
      Width = 1455
      Height = 855
      TabStop = 0   'False
      TabIndex = 5
      OleObjectBlob = "calcmediciones.frx":09CA
    End
    Begin Threed.SSCommand OK
      Left = 8580
      Top = 4860
      Width = 1455
      Height = 855
      TabStop = 0   'False
      TabIndex = 4
      OleObjectBlob = "calcmediciones.frx":12CA
    End
    Begin VB.Label Label2
      Caption = "Carga de Mediciones"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 60
      Top = 360
      Width = 6915
      Height = 495
      TabIndex = 27
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
    Begin VB.Label Label1
      Caption = "Producto"
      Index = 0
      BackColor = &H989080&
      Left = 240
      Top = 5280
      Width = 1815
      Height = 615
      TabIndex = 24
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
    Begin VB.Label Label3
      Caption = "Agua"
      BackColor = &H989080&
      ForeColor = &H80000008&
      Left = 240
      Top = 4440
      Width = 1455
      Height = 615
      TabIndex = 23
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
      Appearance = 0 'Flat
    End
    Begin VB.Label LTanque
      Caption = "Tanque :"
      BackColor = &H989080&
      Left = 480
      Top = 1440
      Width = 6375
      Height = 495
      TabIndex = 8
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
    Begin VB.Label LProducto
      Caption = "Producto :"
      BackColor = &H989080&
      Left = 240
      Top = 2460
      Width = 6555
      Height = 735
      TabIndex = 7
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

Attribute VB_Name = "calcmediciones"

Public Consulta As Boolean
Public tank As Integer


Private Sub mmAgua_Change() '5CFD24
  'Data Table: 43C478
  loc_5CFD0C: FLdPr Me
  loc_5CFD0F: MemLdI2 global_64
  loc_5CFD12: BranchF loc_5CFD1E
  loc_5CFD15: LitI2_Byte 0
  loc_5CFD17: FLdPr Me
  loc_5CFD1A: MemStI2 global_64
  loc_5CFD1D: ExitProcHresult
  loc_5CFD1E: Call TraducirMilimetros()
  loc_5CFD23: ExitProcHresult
End Sub

Private Sub mmAgua_GotFocus() '5D8E7C
  'Data Table: 43C478
  loc_5D8E4C: FLdPr Me
  loc_5D8E4F: MemLdI2 global_58
  loc_5D8E52: BranchF loc_5D8E6A
  loc_5D8E55: FLdPrThis
  loc_5D8E56: VCallAd Control_ID_Agua
  loc_5D8E59: FStAdFunc var_88
  loc_5D8E5C: FLdPr var_88
  loc_5D8E5F: Me.SetFocus
  loc_5D8E64: FFree1Ad var_88
  loc_5D8E67: Branch loc_5D8E7A
  loc_5D8E6A: LitI2_Byte 0
  loc_5D8E6C: FLdPr Me
  loc_5D8E6F: MemStI2 global_56
  loc_5D8E72: LitI2_Byte 0
  loc_5D8E74: FLdPr Me
  loc_5D8E77: MemStI2 global_60
  loc_5D8E7A: ExitProcHresult
End Sub

Private Sub mmProducto_Change() '5CFDB4
  'Data Table: 43C478
  loc_5CFD9C: FLdPr Me
  loc_5CFD9F: MemLdI2 global_64
  loc_5CFDA2: BranchF loc_5CFDAD
  loc_5CFDA5: LitI2_Byte 0
  loc_5CFDA7: FLdPr Me
  loc_5CFDAA: MemStI2 global_64
  loc_5CFDAD: Call TraducirMilimetros()
  loc_5CFDB2: ExitProcHresult
End Sub

Private Sub mmProducto_GotFocus() '5D85E4
  'Data Table: 43C478
  loc_5D85B4: FLdPr Me
  loc_5D85B7: MemLdI2 global_58
  loc_5D85BA: BranchF loc_5D85D2
  loc_5D85BD: FLdPrThis
  loc_5D85BE: VCallAd Control_ID_Producto
  loc_5D85C1: FStAdFunc var_88
  loc_5D85C4: FLdPr var_88
  loc_5D85C7: Me.SetFocus
  loc_5D85CC: FFree1Ad var_88
  loc_5D85CF: Branch loc_5D85E2
  loc_5D85D2: LitI2_Byte 0
  loc_5D85D4: FLdPr Me
  loc_5D85D7: MemStI2 global_56
  loc_5D85DA: LitI2_Byte &HFF
  loc_5D85DC: FLdPr Me
  loc_5D85DF: MemStI2 global_60
  loc_5D85E2: ExitProcHresult
End Sub

Private Sub Form_Load() '62C8B4
  'Data Table: 43C478
  loc_62C740: ILdRf Me
  loc_62C743: CastAd
  loc_62C746: FStAdFunc var_88
  loc_62C749: FLdRfVar var_88
  loc_62C74C: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_62C751: FFree1Ad var_88
  loc_62C754: LitStr "Tanque "
  loc_62C757: FLdPr Me
  loc_62C75A: MemLdI2 tank
  loc_62C75D: CStrUI1
  loc_62C75F: FStStrNoPop var_8C
  loc_62C762: ConcatStr
  loc_62C763: FStStrNoPop var_90
  loc_62C766: LitStr " - "
  loc_62C769: ConcatStr
  loc_62C76A: FStStrNoPop var_98
  loc_62C76D: FLdRfVar var_94
  loc_62C770: FLdPr Me
  loc_62C773: MemLdI2 tank
  loc_62C776: CI4UI1
  loc_62C777: ImpAdLdRf MemVar_74C1D8
  loc_62C77A: Ary1LdUI1
  loc_62C77C: CI2UI1
  loc_62C77E: ImpAdLdRf MemVar_74A220
  loc_62C781: NewIfNullPr clsProducts
  loc_62C789: ILdRf var_94
  loc_62C78C: ConcatStr
  loc_62C78D: FStStrNoPop var_9C
  loc_62C790: FLdPrThis
  loc_62C791: VCallAd Control_ID_LTanque
  loc_62C794: FStAdFunc var_88
  loc_62C797: FLdPr var_88
  loc_62C79A: Me.Caption = from_stack_1
  loc_62C79F: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = ""
  loc_62C7AC: FFree1Ad var_88
  loc_62C7AF: FLdPr Me
  loc_62C7B2: MemLdI2 tank
  loc_62C7B5: CI4UI1
  loc_62C7B6: ImpAdLdRf MemVar_74C0C4
  loc_62C7B9: Ary1LdUI1
  loc_62C7BB: CI2UI1
  loc_62C7BD: LitI2_Byte 0
  loc_62C7BF: EqI2
  loc_62C7C0: BranchF loc_62C83B
  loc_62C7C3: FLdRfVar var_90
  loc_62C7C6: LitVar_Missing var_1E4
  loc_62C7C9: LitVar_Missing var_1C4
  loc_62C7CC: LitVar_Missing var_1A4
  loc_62C7CF: LitVar_Missing var_184
  loc_62C7D2: LitVar_Missing var_164
  loc_62C7D5: LitVar_Missing var_144
  loc_62C7D8: LitVar_Missing var_124
  loc_62C7DB: LitVar_Missing var_104
  loc_62C7DE: LitVar_Missing var_E4
  loc_62C7E1: LitVar_Missing var_C4
  loc_62C7E4: LitStr "Calibración por entrada sensor"
  loc_62C7E7: FStStrCopy var_8C
  loc_62C7EA: FLdRfVar var_8C
  loc_62C7ED: LitI4 &HF
  loc_62C7F2: PopTmpLdAdStr var_A4
  loc_62C7F5: LitI2_Byte &H11
  loc_62C7F7: PopTmpLdAd2 var_9E
  loc_62C7FA: ImpAdLdRf MemVar_74C7D0
  loc_62C7FD: NewIfNullPr clsMsg
  loc_62C800: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62C805: ILdRf var_90
  loc_62C808: FLdPrThis
  loc_62C809: VCallAd Control_ID_LProducto
  loc_62C80C: FStAdFunc var_88
  loc_62C80F: FLdPr var_88
  loc_62C812: Me.Caption = from_stack_1
  loc_62C817: FFreeStr var_8C = ""
  loc_62C81E: FFree1Ad var_88
  loc_62C821: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_62C838: Branch loc_62C8B0
  loc_62C83B: FLdRfVar var_90
  loc_62C83E: LitVar_Missing var_1E4
  loc_62C841: LitVar_Missing var_1C4
  loc_62C844: LitVar_Missing var_1A4
  loc_62C847: LitVar_Missing var_184
  loc_62C84A: LitVar_Missing var_164
  loc_62C84D: LitVar_Missing var_144
  loc_62C850: LitVar_Missing var_124
  loc_62C853: LitVar_Missing var_104
  loc_62C856: LitVar_Missing var_E4
  loc_62C859: LitVar_Missing var_C4
  loc_62C85C: LitStr "Calibración por entrada varilla"
  loc_62C85F: FStStrCopy var_8C
  loc_62C862: FLdRfVar var_8C
  loc_62C865: LitI4 &H10
  loc_62C86A: PopTmpLdAdStr var_A4
  loc_62C86D: LitI2_Byte &H11
  loc_62C86F: PopTmpLdAd2 var_9E
  loc_62C872: ImpAdLdRf MemVar_74C7D0
  loc_62C875: NewIfNullPr clsMsg
  loc_62C878: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62C87D: ILdRf var_90
  loc_62C880: FLdPrThis
  loc_62C881: VCallAd Control_ID_LProducto
  loc_62C884: FStAdFunc var_88
  loc_62C887: FLdPr var_88
  loc_62C88A: Me.Caption = from_stack_1
  loc_62C88F: FFreeStr var_8C = ""
  loc_62C896: FFree1Ad var_88
  loc_62C899: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_62C8B0: ExitProcHresult
End Sub

Private Sub Form_Activate() '6CED70
  'Data Table: 43C478
  loc_6CE428: FLdPr Me
  loc_6CE42B: MemLdI2 Consulta
  loc_6CE42E: BranchF loc_6CE49F
  loc_6CE431: FLdRfVar var_1F0
  loc_6CE434: LitVar_Missing var_1EC
  loc_6CE437: LitVar_Missing var_1CC
  loc_6CE43A: LitVar_Missing var_1AC
  loc_6CE43D: LitVar_Missing var_18C
  loc_6CE440: LitVar_Missing var_16C
  loc_6CE443: LitVar_Missing var_14C
  loc_6CE446: LitVar_Missing var_12C
  loc_6CE449: LitVar_Missing var_10C
  loc_6CE44C: LitVar_Missing var_EC
  loc_6CE44F: LitVar_Missing var_CC
  loc_6CE452: LitStr "Consultas"
  loc_6CE455: FStStrCopy var_AC
  loc_6CE458: FLdRfVar var_AC
  loc_6CE45B: LitI4 &HC
  loc_6CE460: PopTmpLdAdStr var_A8
  loc_6CE463: LitI2_Byte &H11
  loc_6CE465: PopTmpLdAd2 var_A2
  loc_6CE468: ImpAdLdRf MemVar_74C7D0
  loc_6CE46B: NewIfNullPr clsMsg
  loc_6CE46E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE473: ILdRf var_1F0
  loc_6CE476: FLdPr Me
  loc_6CE479: Me.Caption = from_stack_1
  loc_6CE47E: FFreeStr var_AC = ""
  loc_6CE485: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE49C: Branch loc_6CE50A
  loc_6CE49F: FLdRfVar var_1F0
  loc_6CE4A2: LitVar_Missing var_1EC
  loc_6CE4A5: LitVar_Missing var_1CC
  loc_6CE4A8: LitVar_Missing var_1AC
  loc_6CE4AB: LitVar_Missing var_18C
  loc_6CE4AE: LitVar_Missing var_16C
  loc_6CE4B1: LitVar_Missing var_14C
  loc_6CE4B4: LitVar_Missing var_12C
  loc_6CE4B7: LitVar_Missing var_10C
  loc_6CE4BA: LitVar_Missing var_EC
  loc_6CE4BD: LitVar_Missing var_CC
  loc_6CE4C0: LitStr "Mediciones"
  loc_6CE4C3: FStStrCopy var_AC
  loc_6CE4C6: FLdRfVar var_AC
  loc_6CE4C9: LitI4 &HC
  loc_6CE4CE: PopTmpLdAdStr var_A8
  loc_6CE4D1: LitI2_Byte &H11
  loc_6CE4D3: PopTmpLdAd2 var_A2
  loc_6CE4D6: ImpAdLdRf MemVar_74C7D0
  loc_6CE4D9: NewIfNullPr clsMsg
  loc_6CE4DC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE4E1: ILdRf var_1F0
  loc_6CE4E4: FLdPr Me
  loc_6CE4E7: Me.Caption = from_stack_1
  loc_6CE4EC: FFreeStr var_AC = ""
  loc_6CE4F3: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE50A: FLdRfVar var_1F0
  loc_6CE50D: LitVar_Missing var_1EC
  loc_6CE510: LitVar_Missing var_1CC
  loc_6CE513: LitVar_Missing var_1AC
  loc_6CE516: LitVar_Missing var_18C
  loc_6CE519: LitVar_Missing var_16C
  loc_6CE51C: LitVar_Missing var_14C
  loc_6CE51F: LitVar_Missing var_12C
  loc_6CE522: LitVar_Missing var_10C
  loc_6CE525: LitVar_Missing var_EC
  loc_6CE528: LitVar_Missing var_CC
  loc_6CE52B: LitStr "Debe ingresar una cantidad de milimetros no mayor a 6000 milimetros. Verifique por favor."
  loc_6CE52E: FStStrCopy var_AC
  loc_6CE531: FLdRfVar var_AC
  loc_6CE534: LitI4 1
  loc_6CE539: PopTmpLdAdStr var_A8
  loc_6CE53C: LitI2_Byte &H11
  loc_6CE53E: PopTmpLdAd2 var_A2
  loc_6CE541: ImpAdLdRf MemVar_74C7D0
  loc_6CE544: NewIfNullPr clsMsg
  loc_6CE547: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE54C: ILdRf var_1F0
  loc_6CE54F: FLdPr Me
  loc_6CE552: MemStStrCopy
  loc_6CE556: FFreeStr var_AC = ""
  loc_6CE55D: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE574: FLdRfVar var_1F0
  loc_6CE577: LitVar_Missing var_1EC
  loc_6CE57A: LitVar_Missing var_1CC
  loc_6CE57D: LitVar_Missing var_1AC
  loc_6CE580: LitVar_Missing var_18C
  loc_6CE583: LitVar_Missing var_16C
  loc_6CE586: LitVar_Missing var_14C
  loc_6CE589: LitVar_Missing var_12C
  loc_6CE58C: LitVar_Missing var_10C
  loc_6CE58F: LitVar_Missing var_EC
  loc_6CE592: LitVar_Missing var_CC
  loc_6CE595: LitStr "Ingreso milimetros"
  loc_6CE598: FStStrCopy var_AC
  loc_6CE59B: FLdRfVar var_AC
  loc_6CE59E: LitI4 2
  loc_6CE5A3: PopTmpLdAdStr var_A8
  loc_6CE5A6: LitI2_Byte &H11
  loc_6CE5A8: PopTmpLdAd2 var_A2
  loc_6CE5AB: ImpAdLdRf MemVar_74C7D0
  loc_6CE5AE: NewIfNullPr clsMsg
  loc_6CE5B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE5B6: ILdRf var_1F0
  loc_6CE5B9: FLdPr Me
  loc_6CE5BC: MemStStrCopy
  loc_6CE5C0: FFreeStr var_AC = ""
  loc_6CE5C7: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE5DE: FLdRfVar var_1F0
  loc_6CE5E1: LitVar_Missing var_1EC
  loc_6CE5E4: LitVar_Missing var_1CC
  loc_6CE5E7: LitVar_Missing var_1AC
  loc_6CE5EA: LitVar_Missing var_18C
  loc_6CE5ED: LitVar_Missing var_16C
  loc_6CE5F0: LitVar_Missing var_14C
  loc_6CE5F3: LitVar_Missing var_12C
  loc_6CE5F6: LitVar_Missing var_10C
  loc_6CE5F9: LitVar_Missing var_EC
  loc_6CE5FC: LitVar_Missing var_CC
  loc_6CE5FF: LitStr "Está anotando cantidades de combustible y agua incorrectas. Verifíque por favor."
  loc_6CE602: FStStrCopy var_AC
  loc_6CE605: FLdRfVar var_AC
  loc_6CE608: LitI4 3
  loc_6CE60D: PopTmpLdAdStr var_A8
  loc_6CE610: LitI2_Byte &H11
  loc_6CE612: PopTmpLdAd2 var_A2
  loc_6CE615: ImpAdLdRf MemVar_74C7D0
  loc_6CE618: NewIfNullPr clsMsg
  loc_6CE61B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE620: ILdRf var_1F0
  loc_6CE623: FLdPr Me
  loc_6CE626: MemStStrCopy
  loc_6CE62A: FFreeStr var_AC = ""
  loc_6CE631: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE648: FLdRfVar var_1F0
  loc_6CE64B: LitVar_Missing var_1EC
  loc_6CE64E: LitVar_Missing var_1CC
  loc_6CE651: LitVar_Missing var_1AC
  loc_6CE654: LitVar_Missing var_18C
  loc_6CE657: LitVar_Missing var_16C
  loc_6CE65A: LitVar_Missing var_14C
  loc_6CE65D: LitVar_Missing var_12C
  loc_6CE660: LitVar_Missing var_10C
  loc_6CE663: LitVar_Missing var_EC
  loc_6CE666: LitVar_Missing var_CC
  loc_6CE669: LitStr "Carga de combustible"
  loc_6CE66C: FStStrCopy var_AC
  loc_6CE66F: FLdRfVar var_AC
  loc_6CE672: LitI4 4
  loc_6CE677: PopTmpLdAdStr var_A8
  loc_6CE67A: LitI2_Byte &H11
  loc_6CE67C: PopTmpLdAd2 var_A2
  loc_6CE67F: ImpAdLdRf MemVar_74C7D0
  loc_6CE682: NewIfNullPr clsMsg
  loc_6CE685: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE68A: ILdRf var_1F0
  loc_6CE68D: FLdPr Me
  loc_6CE690: MemStStrCopy
  loc_6CE694: FFreeStr var_AC = ""
  loc_6CE69B: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE6B2: FLdRfVar var_1F0
  loc_6CE6B5: LitVar_Missing var_1EC
  loc_6CE6B8: LitVar_Missing var_1CC
  loc_6CE6BB: LitVar_Missing var_1AC
  loc_6CE6BE: LitVar_Missing var_18C
  loc_6CE6C1: LitVar_Missing var_16C
  loc_6CE6C4: LitVar_Missing var_14C
  loc_6CE6C7: LitVar_Missing var_12C
  loc_6CE6CA: LitVar_Missing var_10C
  loc_6CE6CD: LitVar_Missing var_EC
  loc_6CE6D0: LitVar_Missing var_CC
  loc_6CE6D3: LitStr "Debe ingresar una cantidad de combustible mayor que agua"
  loc_6CE6D6: FStStrCopy var_AC
  loc_6CE6D9: FLdRfVar var_AC
  loc_6CE6DC: LitI4 5
  loc_6CE6E1: PopTmpLdAdStr var_A8
  loc_6CE6E4: LitI2_Byte &H11
  loc_6CE6E6: PopTmpLdAd2 var_A2
  loc_6CE6E9: ImpAdLdRf MemVar_74C7D0
  loc_6CE6EC: NewIfNullPr clsMsg
  loc_6CE6EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE6F4: ILdRf var_1F0
  loc_6CE6F7: FLdPr Me
  loc_6CE6FA: MemStStrCopy
  loc_6CE6FE: FFreeStr var_AC = ""
  loc_6CE705: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE71C: FLdRfVar var_1F0
  loc_6CE71F: LitVar_Missing var_1EC
  loc_6CE722: LitVar_Missing var_1CC
  loc_6CE725: LitVar_Missing var_1AC
  loc_6CE728: LitVar_Missing var_18C
  loc_6CE72B: LitVar_Missing var_16C
  loc_6CE72E: LitVar_Missing var_14C
  loc_6CE731: LitVar_Missing var_12C
  loc_6CE734: LitVar_Missing var_10C
  loc_6CE737: LitVar_Missing var_EC
  loc_6CE73A: LitVar_Missing var_CC
  loc_6CE73D: LitStr "Mediciones de tanque"
  loc_6CE740: FStStrCopy var_AC
  loc_6CE743: FLdRfVar var_AC
  loc_6CE746: LitI4 6
  loc_6CE74B: PopTmpLdAdStr var_A8
  loc_6CE74E: LitI2_Byte &H11
  loc_6CE750: PopTmpLdAd2 var_A2
  loc_6CE753: ImpAdLdRf MemVar_74C7D0
  loc_6CE756: NewIfNullPr clsMsg
  loc_6CE759: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE75E: ILdRf var_1F0
  loc_6CE761: FLdPr Me
  loc_6CE764: MemStStrCopy
  loc_6CE768: FFreeStr var_AC = ""
  loc_6CE76F: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE786: FLdRfVar var_1F0
  loc_6CE789: LitVar_Missing var_1EC
  loc_6CE78C: LitVar_Missing var_1CC
  loc_6CE78F: LitVar_Missing var_1AC
  loc_6CE792: LitVar_Missing var_18C
  loc_6CE795: LitVar_Missing var_16C
  loc_6CE798: LitVar_Missing var_14C
  loc_6CE79B: LitVar_Missing var_12C
  loc_6CE79E: LitVar_Missing var_10C
  loc_6CE7A1: LitVar_Missing var_EC
  loc_6CE7A4: LitVar_Missing var_CC
  loc_6CE7A7: LitStr "Error"
  loc_6CE7AA: FStStrCopy var_AC
  loc_6CE7AD: FLdRfVar var_AC
  loc_6CE7B0: LitI4 &H15
  loc_6CE7B5: PopTmpLdAdStr var_A8
  loc_6CE7B8: LitI2_Byte &H11
  loc_6CE7BA: PopTmpLdAd2 var_A2
  loc_6CE7BD: ImpAdLdRf MemVar_74C7D0
  loc_6CE7C0: NewIfNullPr clsMsg
  loc_6CE7C3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE7C8: ILdRf var_1F0
  loc_6CE7CB: FLdPr Me
  loc_6CE7CE: MemStStrCopy
  loc_6CE7D2: FFreeStr var_AC = ""
  loc_6CE7D9: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE7F0: FLdPr Me
  loc_6CE7F3: MemLdI2 Consulta
  loc_6CE7F6: BranchF loc_6CE871
  loc_6CE7F9: FLdRfVar var_1F0
  loc_6CE7FC: LitVar_Missing var_1EC
  loc_6CE7FF: LitVar_Missing var_1CC
  loc_6CE802: LitVar_Missing var_1AC
  loc_6CE805: LitVar_Missing var_18C
  loc_6CE808: LitVar_Missing var_16C
  loc_6CE80B: LitVar_Missing var_14C
  loc_6CE80E: LitVar_Missing var_12C
  loc_6CE811: LitVar_Missing var_10C
  loc_6CE814: LitVar_Missing var_EC
  loc_6CE817: LitVar_Missing var_CC
  loc_6CE81A: LitStr "Consulta tabla tanque"
  loc_6CE81D: FStStrCopy var_AC
  loc_6CE820: FLdRfVar var_AC
  loc_6CE823: LitI4 &H1E
  loc_6CE828: PopTmpLdAdStr var_A8
  loc_6CE82B: LitI2_Byte &H11
  loc_6CE82D: PopTmpLdAd2 var_A2
  loc_6CE830: ImpAdLdRf MemVar_74C7D0
  loc_6CE833: NewIfNullPr clsMsg
  loc_6CE836: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE83B: ILdRf var_1F0
  loc_6CE83E: FLdPrThis
  loc_6CE83F: VCallAd Control_ID_Label2
  loc_6CE842: FStAdFunc var_1F4
  loc_6CE845: FLdPr var_1F4
  loc_6CE848: Me.Caption = from_stack_1
  loc_6CE84D: FFreeStr var_AC = ""
  loc_6CE854: FFree1Ad var_1F4
  loc_6CE857: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE86E: Branch loc_6CE8E6
  loc_6CE871: FLdRfVar var_1F0
  loc_6CE874: LitVar_Missing var_1EC
  loc_6CE877: LitVar_Missing var_1CC
  loc_6CE87A: LitVar_Missing var_1AC
  loc_6CE87D: LitVar_Missing var_18C
  loc_6CE880: LitVar_Missing var_16C
  loc_6CE883: LitVar_Missing var_14C
  loc_6CE886: LitVar_Missing var_12C
  loc_6CE889: LitVar_Missing var_10C
  loc_6CE88C: LitVar_Missing var_EC
  loc_6CE88F: LitVar_Missing var_CC
  loc_6CE892: LitStr "Carga de Mediciones"
  loc_6CE895: FStStrCopy var_AC
  loc_6CE898: FLdRfVar var_AC
  loc_6CE89B: LitI4 7
  loc_6CE8A0: PopTmpLdAdStr var_A8
  loc_6CE8A3: LitI2_Byte &H11
  loc_6CE8A5: PopTmpLdAd2 var_A2
  loc_6CE8A8: ImpAdLdRf MemVar_74C7D0
  loc_6CE8AB: NewIfNullPr clsMsg
  loc_6CE8AE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE8B3: ILdRf var_1F0
  loc_6CE8B6: FLdPrThis
  loc_6CE8B7: VCallAd Control_ID_Label2
  loc_6CE8BA: FStAdFunc var_1F4
  loc_6CE8BD: FLdPr var_1F4
  loc_6CE8C0: Me.Caption = from_stack_1
  loc_6CE8C5: FFreeStr var_AC = ""
  loc_6CE8CC: FFree1Ad var_1F4
  loc_6CE8CF: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE8E6: FLdRfVar var_1F0
  loc_6CE8E9: LitVar_Missing var_1EC
  loc_6CE8EC: LitVar_Missing var_1CC
  loc_6CE8EF: LitVar_Missing var_1AC
  loc_6CE8F2: LitVar_Missing var_18C
  loc_6CE8F5: LitVar_Missing var_16C
  loc_6CE8F8: LitVar_Missing var_14C
  loc_6CE8FB: LitVar_Missing var_12C
  loc_6CE8FE: LitVar_Missing var_10C
  loc_6CE901: LitVar_Missing var_EC
  loc_6CE904: LitVar_Missing var_CC
  loc_6CE907: LitStr "Agua"
  loc_6CE90A: FStStrCopy var_AC
  loc_6CE90D: FLdRfVar var_AC
  loc_6CE910: LitI4 8
  loc_6CE915: PopTmpLdAdStr var_A8
  loc_6CE918: LitI2_Byte &H11
  loc_6CE91A: PopTmpLdAd2 var_A2
  loc_6CE91D: ImpAdLdRf MemVar_74C7D0
  loc_6CE920: NewIfNullPr clsMsg
  loc_6CE923: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE928: ILdRf var_1F0
  loc_6CE92B: FLdPrThis
  loc_6CE92C: VCallAd Control_ID_Label3
  loc_6CE92F: FStAdFunc var_1F4
  loc_6CE932: FLdPr var_1F4
  loc_6CE935: Me.Caption = from_stack_1
  loc_6CE93A: FFreeStr var_AC = ""
  loc_6CE941: FFree1Ad var_1F4
  loc_6CE944: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE95B: FLdRfVar var_1F0
  loc_6CE95E: LitVar_Missing var_1EC
  loc_6CE961: LitVar_Missing var_1CC
  loc_6CE964: LitVar_Missing var_1AC
  loc_6CE967: LitVar_Missing var_18C
  loc_6CE96A: LitVar_Missing var_16C
  loc_6CE96D: LitVar_Missing var_14C
  loc_6CE970: LitVar_Missing var_12C
  loc_6CE973: LitVar_Missing var_10C
  loc_6CE976: LitVar_Missing var_EC
  loc_6CE979: LitVar_Missing var_CC
  loc_6CE97C: LitStr "Producto"
  loc_6CE97F: FStStrCopy var_AC
  loc_6CE982: FLdRfVar var_AC
  loc_6CE985: LitI4 9
  loc_6CE98A: PopTmpLdAdStr var_A8
  loc_6CE98D: LitI2_Byte &H11
  loc_6CE98F: PopTmpLdAd2 var_A2
  loc_6CE992: ImpAdLdRf MemVar_74C7D0
  loc_6CE995: NewIfNullPr clsMsg
  loc_6CE998: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CE99D: ILdRf var_1F0
  loc_6CE9A0: FLdRfVar var_1F8
  loc_6CE9A3: LitI2_Byte 0
  loc_6CE9A5: FLdPrThis
  loc_6CE9A6: VCallAd Control_ID_Label1
  loc_6CE9A9: FStAdFunc var_1F4
  loc_6CE9AC: FLdPr var_1F4
  loc_6CE9AF: Set from_stack_2 = Me(from_stack_1)
  loc_6CE9B4: FLdPr var_1F8
  loc_6CE9B7: Me.Caption = from_stack_1
  loc_6CE9BC: FFreeStr var_AC = ""
  loc_6CE9C3: FFreeAd var_1F4 = ""
  loc_6CE9CA: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_6CE9E1: FLdRfVar var_1F0
  loc_6CE9E4: LitVar_Missing var_1EC
  loc_6CE9E7: LitVar_Missing var_1CC
  loc_6CE9EA: LitVar_Missing var_1AC
  loc_6CE9ED: LitVar_Missing var_18C
  loc_6CE9F0: LitVar_Missing var_16C
  loc_6CE9F3: LitVar_Missing var_14C
  loc_6CE9F6: LitVar_Missing var_12C
  loc_6CE9F9: LitVar_Missing var_10C
  loc_6CE9FC: LitVar_Missing var_EC
  loc_6CE9FF: LitVar_Missing var_CC
  loc_6CEA02: LitStr "Litros"
  loc_6CEA05: FStStrCopy var_AC
  loc_6CEA08: FLdRfVar var_AC
  loc_6CEA0B: LitI4 &HA
  loc_6CEA10: PopTmpLdAdStr var_A8
  loc_6CEA13: LitI2_Byte &H11
  loc_6CEA15: PopTmpLdAd2 var_A2
  loc_6CEA18: ImpAdLdRf MemVar_74C7D0
  loc_6CEA1B: NewIfNullPr clsMsg
  loc_6CEA1E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEA23: FLdZeroAd var_1F0
  loc_6CEA26: CVarStr var_208
  loc_6CEA29: PopAdLdVar
  loc_6CEA2A: FLdRfVar var_1F8
  loc_6CEA2D: LitI2_Byte 1
  loc_6CEA2F: FLdPrThis
  loc_6CEA30: VCallAd Control_ID_SSPanel1
  loc_6CEA33: FStAdFunc var_1F4
  loc_6CEA36: FLdPr var_1F4
  loc_6CEA39: Set from_stack_2 = Me(from_stack_1)
  loc_6CEA3E: FLdPr var_1F8
  loc_6CEA41: LateIdSt
  loc_6CEA46: FFree1Str var_AC
  loc_6CEA49: FFreeAd var_1F4 = ""
  loc_6CEA50: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = ""
  loc_6CEA69: FLdRfVar var_1F0
  loc_6CEA6C: LitVar_Missing var_1EC
  loc_6CEA6F: LitVar_Missing var_1CC
  loc_6CEA72: LitVar_Missing var_1AC
  loc_6CEA75: LitVar_Missing var_18C
  loc_6CEA78: LitVar_Missing var_16C
  loc_6CEA7B: LitVar_Missing var_14C
  loc_6CEA7E: LitVar_Missing var_12C
  loc_6CEA81: LitVar_Missing var_10C
  loc_6CEA84: LitVar_Missing var_EC
  loc_6CEA87: LitVar_Missing var_CC
  loc_6CEA8A: LitStr "Milímetros"
  loc_6CEA8D: FStStrCopy var_AC
  loc_6CEA90: FLdRfVar var_AC
  loc_6CEA93: LitI4 &HB
  loc_6CEA98: PopTmpLdAdStr var_A8
  loc_6CEA9B: LitI2_Byte &H11
  loc_6CEA9D: PopTmpLdAd2 var_A2
  loc_6CEAA0: ImpAdLdRf MemVar_74C7D0
  loc_6CEAA3: NewIfNullPr clsMsg
  loc_6CEAA6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6CEAAB: FLdZeroAd var_1F0
  loc_6CEAAE: CVarStr var_208
  loc_6CEAB1: PopAdLdVar
  loc_6CEAB2: FLdRfVar var_1F8
  loc_6CEAB5: LitI2_Byte 0
  loc_6CEAB7: FLdPrThis
  loc_6CEAB8: VCallAd Control_ID_SSPanel1
  loc_6CEABB: FStAdFunc var_1F4
  loc_6CEABE: FLdPr var_1F4
  loc_6CEAC1: Set from_stack_2 = Me(from_stack_1)
  loc_6CEAC6: FLdPr var_1F8
  loc_6CEAC9: LateIdSt
  loc_6CEACE: FFree1Str var_AC
  loc_6CEAD1: FFreeAd var_1F4 = ""
  loc_6CEAD8: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = ""
  loc_6CEAF1: ImpAdLdI4 MemVar_74BEC4
  loc_6CEAF4: CVarStr var_BC
  loc_6CEAF7: PopAdLdVar
  loc_6CEAF8: FLdRfVar var_1F8
  loc_6CEAFB: LitI2_Byte 0
  loc_6CEAFD: FLdPrThis
  loc_6CEAFE: VCallAd Control_ID_SSPanel1
  loc_6CEB01: FStAdFunc var_1F4
  loc_6CEB04: FLdPr var_1F4
  loc_6CEB07: Set from_stack_2 = Me(from_stack_1)
  loc_6CEB0C: FLdPr var_1F8
  loc_6CEB0F: LateIdSt
  loc_6CEB14: FFreeAd var_1F4 = ""
  loc_6CEB1B: ImpAdLdI4 MemVar_74BEBC
  loc_6CEB1E: CVarStr var_BC
  loc_6CEB21: PopAdLdVar
  loc_6CEB22: FLdRfVar var_1F8
  loc_6CEB25: LitI2_Byte 1
  loc_6CEB27: FLdPrThis
  loc_6CEB28: VCallAd Control_ID_SSPanel1
  loc_6CEB2B: FStAdFunc var_1F4
  loc_6CEB2E: FLdPr var_1F4
  loc_6CEB31: Set from_stack_2 = Me(from_stack_1)
  loc_6CEB36: FLdPr var_1F8
  loc_6CEB39: LateIdSt
  loc_6CEB3E: FFreeAd var_1F4 = ""
  loc_6CEB45: FLdRfVar var_A2
  loc_6CEB48: FLdRfVar var_A0
  loc_6CEB4B: LitI4 &HA
  loc_6CEB50: FLdPr Me
  loc_6CEB53: MemLdI2 tank
  loc_6CEB56: LitI2_Byte 0
  loc_6CEB58: FLdRfVar var_1F4
  loc_6CEB5B: ImpAdLdRf MemVar_74C760
  loc_6CEB5E: NewIfNullPr Formx
  loc_6CEB61: from_stack_1v = Formx.global_4589716Get()
  loc_6CEB66: FLdPr var_1F4
  loc_6CEB69: Formx.ScaleX from_stack_1s, from_stack_2, from_stack_3
  loc_6CEB6E: FLdI2 var_A2
  loc_6CEB71: NotI4
  loc_6CEB72: FFree1Ad var_1F4
  loc_6CEB75: BranchF loc_6CEB8D
  loc_6CEB78: ILdRf Me
  loc_6CEB7B: FStAdNoPop
  loc_6CEB7F: ImpAdLdRf MemVar_7520D4
  loc_6CEB82: NewIfNullPr Global
  loc_6CEB85: Global.Unload from_stack_1
  loc_6CEB8A: FFree1Ad var_1F4
  loc_6CEB8D: ILdRf var_A0
  loc_6CEB90: LitI4 0
  loc_6CEB95: NeI4
  loc_6CEB96: BranchF loc_6CEC3B
  loc_6CEB99: LitI2_Byte 0
  loc_6CEB9B: FLdPr Me
  loc_6CEB9E: MemStI2 global_58
  loc_6CEBA1: LitI2_Byte &HFF
  loc_6CEBA3: FLdPrThis
  loc_6CEBA4: VCallAd Control_ID_Producto
  loc_6CEBA7: FStAdFunc var_1F4
  loc_6CEBAA: FLdPr var_1F4
  loc_6CEBAD: Me.Locked = from_stack_1b
  loc_6CEBB2: FFree1Ad var_1F4
  loc_6CEBB5: LitI2_Byte &HFF
  loc_6CEBB7: FLdPrThis
  loc_6CEBB8: VCallAd Control_ID_Agua
  loc_6CEBBB: FStAdFunc var_1F4
  loc_6CEBBE: FLdPr var_1F4
  loc_6CEBC1: Me.Locked = from_stack_1b
  loc_6CEBC6: FFree1Ad var_1F4
  loc_6CEBC9: LitVarI4
  loc_6CEBD1: PopAdLdVar
  loc_6CEBD2: FLdRfVar var_1F8
  loc_6CEBD5: LitI2_Byte 0
  loc_6CEBD7: FLdPrThis
  loc_6CEBD8: VCallAd Control_ID_SSPanel1
  loc_6CEBDB: FStAdFunc var_1F4
  loc_6CEBDE: FLdPr var_1F4
  loc_6CEBE1: Set from_stack_2 = Me(from_stack_1)
  loc_6CEBE6: FLdPr var_1F8
  loc_6CEBE9: LateIdSt
  loc_6CEBEE: FFreeAd var_1F4 = ""
  loc_6CEBF5: LitVarI4
  loc_6CEBFD: PopAdLdVar
  loc_6CEBFE: FLdRfVar var_1F8
  loc_6CEC01: LitI2_Byte 0
  loc_6CEC03: FLdPrThis
  loc_6CEC04: VCallAd Control_ID_SSPanel1
  loc_6CEC07: FStAdFunc var_1F4
  loc_6CEC0A: FLdPr var_1F4
  loc_6CEC0D: Set from_stack_2 = Me(from_stack_1)
  loc_6CEC12: FLdPr var_1F8
  loc_6CEC15: LateIdSt
  loc_6CEC1A: FFreeAd var_1F4 = ""
  loc_6CEC21: LitVar_FALSE
  loc_6CEC25: PopAdLdVar
  loc_6CEC26: FLdPrThis
  loc_6CEC27: VCallAd Control_ID_Punto
  loc_6CEC2A: FStAdFunc var_1F4
  loc_6CEC2D: FLdPr var_1F4
  loc_6CEC30: LateIdSt
  loc_6CEC35: FFree1Ad var_1F4
  loc_6CEC38: Branch loc_6CEC9B
  loc_6CEC3B: LitI2_Byte &HFF
  loc_6CEC3D: FLdPr Me
  loc_6CEC40: MemStI2 global_58
  loc_6CEC43: LitVarI4
  loc_6CEC4B: PopAdLdVar
  loc_6CEC4C: FLdRfVar var_1F8
  loc_6CEC4F: LitI2_Byte 1
  loc_6CEC51: FLdPrThis
  loc_6CEC52: VCallAd Control_ID_SSPanel1
  loc_6CEC55: FStAdFunc var_1F4
  loc_6CEC58: FLdPr var_1F4
  loc_6CEC5B: Set from_stack_2 = Me(from_stack_1)
  loc_6CEC60: FLdPr var_1F8
  loc_6CEC63: LateIdSt
  loc_6CEC68: FFreeAd var_1F4 = ""
  loc_6CEC6F: LitVarI4
  loc_6CEC77: PopAdLdVar
  loc_6CEC78: FLdRfVar var_1F8
  loc_6CEC7B: LitI2_Byte 1
  loc_6CEC7D: FLdPrThis
  loc_6CEC7E: VCallAd Control_ID_SSPanel1
  loc_6CEC81: FStAdFunc var_1F4
  loc_6CEC84: FLdPr var_1F4
  loc_6CEC87: Set from_stack_2 = Me(from_stack_1)
  loc_6CEC8C: FLdPr var_1F8
  loc_6CEC8F: LateIdSt
  loc_6CEC94: FFreeAd var_1F4 = ""
  loc_6CEC9B: LitI2_Byte 0
  loc_6CEC9D: ImpAdStI2 MemVar_74C37E
  loc_6CECA0: LitI2_Byte 0
  loc_6CECA2: ImpAdStI2 MemVar_74C37C
  loc_6CECA5: LitI4 0
  loc_6CECAA: ImpAdStR4 MemVar_74C374
  loc_6CECAD: LitI4 0
  loc_6CECB2: ImpAdStR4 MemVar_74C378
  loc_6CECB5: LitI2_Byte 0
  loc_6CECB7: FLdPr Me
  loc_6CECBA: MemStI2 global_56
  loc_6CECBD: ImpAdLdI4 MemVar_74BEC4
  loc_6CECC0: CVarStr var_BC
  loc_6CECC3: PopAdLdVar
  loc_6CECC4: FLdRfVar var_1F8
  loc_6CECC7: LitI2_Byte 0
  loc_6CECC9: FLdPrThis
  loc_6CECCA: VCallAd Control_ID_SSPanel1
  loc_6CECCD: FStAdFunc var_1F4
  loc_6CECD0: FLdPr var_1F4
  loc_6CECD3: Set from_stack_2 = Me(from_stack_1)
  loc_6CECD8: FLdPr var_1F8
  loc_6CECDB: LateIdSt
  loc_6CECE0: FFreeAd var_1F4 = ""
  loc_6CECE7: ImpAdLdI4 MemVar_74BEBC
  loc_6CECEA: CVarStr var_BC
  loc_6CECED: PopAdLdVar
  loc_6CECEE: FLdRfVar var_1F8
  loc_6CECF1: LitI2_Byte 1
  loc_6CECF3: FLdPrThis
  loc_6CECF4: VCallAd Control_ID_SSPanel1
  loc_6CECF7: FStAdFunc var_1F4
  loc_6CECFA: FLdPr var_1F4
  loc_6CECFD: Set from_stack_2 = Me(from_stack_1)
  loc_6CED02: FLdPr var_1F8
  loc_6CED05: LateIdSt
  loc_6CED0A: FFreeAd var_1F4 = ""
  loc_6CED11: LitStr vbNullString
  loc_6CED14: FLdPrThis
  loc_6CED15: VCallAd Control_ID_mmProducto
  loc_6CED18: FStAdFunc var_1F4
  loc_6CED1B: FLdPr var_1F4
  loc_6CED1E: Me.Text = from_stack_1
  loc_6CED23: FFree1Ad var_1F4
  loc_6CED26: LitStr vbNullString
  loc_6CED29: FLdPrThis
  loc_6CED2A: VCallAd Control_ID_mmAgua
  loc_6CED2D: FStAdFunc var_1F4
  loc_6CED30: FLdPr var_1F4
  loc_6CED33: Me.Text = from_stack_1
  loc_6CED38: FFree1Ad var_1F4
  loc_6CED3B: OnErrorGoto loc_6CED6F
  loc_6CED3E: FLdPr Me
  loc_6CED41: MemLdI2 global_58
  loc_6CED44: BranchF loc_6CED5C
  loc_6CED47: FLdPrThis
  loc_6CED48: VCallAd Control_ID_Producto
  loc_6CED4B: FStAdFunc var_1F4
  loc_6CED4E: FLdPr var_1F4
  loc_6CED51: Me.SetFocus
  loc_6CED56: FFree1Ad var_1F4
  loc_6CED59: Branch loc_6CED6E
  loc_6CED5C: FLdPrThis
  loc_6CED5D: VCallAd Control_ID_mmProducto
  loc_6CED60: FStAdFunc var_1F4
  loc_6CED63: FLdPr var_1F4
  loc_6CED66: Me.SetFocus
  loc_6CED6B: FFree1Ad var_1F4
  loc_6CED6E: ExitProcHresult
  loc_6CED6F: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5E50CC
  'Data Table: 43C478
  loc_5E5054: ILdI2 KeyCode
  loc_5E5057: FStI2 var_88
  loc_5E505A: FLdI2 var_88
  loc_5E505D: LitI4 8
  loc_5E5062: CI2I4
  loc_5E5063: EqI2
  loc_5E5064: BranchT loc_5E5074
  loc_5E5067: FLdI2 var_88
  loc_5E506A: LitI4 &H2E
  loc_5E506F: CI2I4
  loc_5E5070: EqI2
  loc_5E5071: BranchF loc_5E507C
  loc_5E5074: Call Borrar_UnknownEvent_8()
  loc_5E5079: Branch loc_5E50BF
  loc_5E507C: FLdI2 var_88
  loc_5E507F: LitI4 &H1B
  loc_5E5084: CI2I4
  loc_5E5085: EqI2
  loc_5E5086: BranchF loc_5E5091
  loc_5E5089: Call Cancel_UnknownEvent_8()
  loc_5E508E: Branch loc_5E50BF
  loc_5E5091: FLdI2 var_88
  loc_5E5094: LitI4 &HD
  loc_5E5099: CI2I4
  loc_5E509A: EqI2
  loc_5E509B: BranchF loc_5E50A6
  loc_5E509E: Call OK_UnknownEvent_8()
  loc_5E50A3: Branch loc_5E50BF
  loc_5E50A6: FLdI2 var_88
  loc_5E50A9: LitI4 &H60
  loc_5E50AE: CI2I4
  loc_5E50AF: LitI4 &H69
  loc_5E50B4: CI2I4
  loc_5E50B5: BetweenI2
  loc_5E50B7: BranchF loc_5E50BF
  loc_5E50BA: LitI2_Byte &HFF
  loc_5E50BC: FStI2 var_86
  loc_5E50BF: FLdI2 var_86
  loc_5E50C2: NotI4
  loc_5E50C3: BranchF loc_5E50CB
  loc_5E50C6: LitI2_Byte 0
  loc_5E50C8: IStI2 KeyCode
  loc_5E50CB: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5E4A54
  'Data Table: 43C478
  loc_5E49EC: ILdI2 KeyAscii
  loc_5E49EF: CI4UI1
  loc_5E49F0: FLdRfVar var_94
  loc_5E49F3: ImpAdCallFPR4  = Chr()
  loc_5E49F8: FLdRfVar var_94
  loc_5E49FB: FStVar var_A4
  loc_5E49FF: FLdRfVar var_A4
  loc_5E4A02: LitVarStr var_C4, "0"
  loc_5E4A07: HardType
  loc_5E4A08: LitVarStr var_B4, "9"
  loc_5E4A0D: HardType
  loc_5E4A0E: BetweenVar
  loc_5E4A10: BranchF loc_5E4A3A
  loc_5E4A13: ILdI2 KeyAscii
  loc_5E4A16: CI4UI1
  loc_5E4A17: FLdRfVar var_94
  loc_5E4A1A: ImpAdCallFPR4  = Chr()
  loc_5E4A1F: FLdRfVar var_94
  loc_5E4A22: LitVarStr var_B4, "0"
  loc_5E4A27: SubVar var_D4
  loc_5E4A2B: CI2Var
  loc_5E4A2C: PopTmpLdAd2 var_D6
  loc_5E4A2F: from_stack_2v = Teclas_UnknownEvent_8(from_stack_1v)
  loc_5E4A34: FFree1Var var_94 = ""
  loc_5E4A37: Branch loc_5E4A4D
  loc_5E4A3A: FLdRfVar var_A4
  loc_5E4A3D: LitVarStr var_B4, "."
  loc_5E4A42: HardType
  loc_5E4A43: EqVarBool
  loc_5E4A45: BranchF loc_5E4A4D
  loc_5E4A48: Call Punto_UnknownEvent_8()
  loc_5E4A4D: LitI2_Byte 0
  loc_5E4A4F: IStI2 KeyAscii
  loc_5E4A52: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '5C95E0
  'Data Table: 43C478
  loc_5C95D8: LitI2_Byte 0
  loc_5C95DA: IStI2 KeyCode
  loc_5C95DD: ExitProcHresult
End Sub

Private Sub SSPanel1_UnknownEvent_8 '5C87C8
  'Data Table: 43C478
  loc_5C87C4: ExitProcHresult
End Sub

Private Sub Producto_GotFocus() '5D8CEC
  'Data Table: 43C478
  loc_5D8CBC: FLdPr Me
  loc_5D8CBF: MemLdI2 global_58
  loc_5D8CC2: BranchF loc_5D8CD8
  loc_5D8CC5: LitI2_Byte 0
  loc_5D8CC7: FLdPr Me
  loc_5D8CCA: MemStI2 global_56
  loc_5D8CCD: LitI2_Byte &HFF
  loc_5D8CCF: FLdPr Me
  loc_5D8CD2: MemStI2 global_60
  loc_5D8CD5: Branch loc_5D8CEA
  loc_5D8CD8: FLdPrThis
  loc_5D8CD9: VCallAd Control_ID_mmProducto
  loc_5D8CDC: FStAdFunc var_88
  loc_5D8CDF: FLdPr var_88
  loc_5D8CE2: Me.SetFocus
  loc_5D8CE7: FFree1Ad var_88
  loc_5D8CEA: ExitProcHresult
End Sub

Private Sub Punto_UnknownEvent_8 '5C9734
  'Data Table: 43C478
  loc_5C9728: LitI2_Byte &HFF
  loc_5C972A: FLdPr Me
  loc_5C972D: MemStI2 global_56
  loc_5C9730: ExitProcHresult
End Sub

Private Function Teclas_UnknownEvent_8(arg_C) '652C44
  'Data Table: 43C478
  loc_652970: FLdPr Me
  loc_652973: MemLdI2 global_60
  loc_652976: BranchF loc_6529BE
  loc_652979: FLdPr Me
  loc_65297C: MemLdI2 global_58
  loc_65297F: BranchF loc_6529A0
  loc_652982: FLdRfVar var_A0
  loc_652985: FLdPrThis
  loc_652986: VCallAd Control_ID_Producto
  loc_652989: FStAdFunc var_9C
  loc_65298C: FLdPr var_9C
  loc_65298F:  = Me.Text
  loc_652994: FLdZeroAd var_A0
  loc_652997: FStStr var_88
  loc_65299A: FFree1Ad var_9C
  loc_65299D: Branch loc_6529BB
  loc_6529A0: FLdRfVar var_A0
  loc_6529A3: FLdPrThis
  loc_6529A4: VCallAd Control_ID_mmProducto
  loc_6529A7: FStAdFunc var_9C
  loc_6529AA: FLdPr var_9C
  loc_6529AD:  = Me.Text
  loc_6529B2: FLdZeroAd var_A0
  loc_6529B5: FStStr var_88
  loc_6529B8: FFree1Ad var_9C
  loc_6529BB: Branch loc_652A00
  loc_6529BE: FLdPr Me
  loc_6529C1: MemLdI2 global_58
  loc_6529C4: BranchF loc_6529E5
  loc_6529C7: FLdRfVar var_A0
  loc_6529CA: FLdPrThis
  loc_6529CB: VCallAd Control_ID_Agua
  loc_6529CE: FStAdFunc var_9C
  loc_6529D1: FLdPr var_9C
  loc_6529D4:  = Me.Text
  loc_6529D9: FLdZeroAd var_A0
  loc_6529DC: FStStr var_88
  loc_6529DF: FFree1Ad var_9C
  loc_6529E2: Branch loc_652A00
  loc_6529E5: FLdRfVar var_A0
  loc_6529E8: FLdPrThis
  loc_6529E9: VCallAd Control_ID_mmAgua
  loc_6529EC: FStAdFunc var_9C
  loc_6529EF: FLdPr var_9C
  loc_6529F2:  = Me.Text
  loc_6529F7: FLdZeroAd var_A0
  loc_6529FA: FStStr var_88
  loc_6529FD: FFree1Ad var_9C
  loc_652A00: ILdRf var_88
  loc_652A03: ImpAdCallFPR4 push Val()
  loc_652A08: FnIntR8
  loc_652A0A: CI4R8
  loc_652A0B: FStR4 var_8C
  loc_652A0E: ILdRf var_88
  loc_652A11: ImpAdCallFPR4 push Val()
  loc_652A16: ILdRf var_8C
  loc_652A19: CR8I4
  loc_652A1A: SubR4
  loc_652A1B: FLdPr Me
  loc_652A1E: MemLdI2 global_62
  loc_652A21: CR8I2
  loc_652A22: MulR8
  loc_652A23: CCyR4
  loc_652A24: FStR8 var_94
  loc_652A27: FLdPr Me
  loc_652A2A: MemLdI2 global_56
  loc_652A2D: NotI4
  loc_652A2E: BranchF loc_652A59
  loc_652A31: ILdRf var_8C
  loc_652A34: LitI4 &HF423F
  loc_652A39: LtI4
  loc_652A3A: BranchF loc_652A56
  loc_652A3D: ILdRf var_8C
  loc_652A40: LitI4 &HA
  loc_652A45: MulI4
  loc_652A46: ILdI2 arg_C
  loc_652A49: CI4UI1
  loc_652A4A: AddI4
  loc_652A4B: FStR4 var_8C
  loc_652A4E: LitI2_Byte 1
  loc_652A50: FLdPr Me
  loc_652A53: MemStI2 global_62
  loc_652A56: Branch loc_652A86
  loc_652A59: FLdPr Me
  loc_652A5C: MemLdI2 global_62
  loc_652A5F: LitI2_Byte &H64
  loc_652A61: LtI2
  loc_652A62: BranchF loc_652A86
  loc_652A65: FLdR8 var_94
  loc_652A68: FLdPr Me
  loc_652A6B: MemLdI2 global_62
  loc_652A6E: MulCyI2
  loc_652A6F: ILdI2 arg_C
  loc_652A72: CCyI2
  loc_652A73: AddCy
  loc_652A74: FStR8 var_94
  loc_652A77: FLdPr Me
  loc_652A7A: MemLdI2 global_62
  loc_652A7D: LitI2_Byte &HA
  loc_652A7F: MulI2
  loc_652A80: FLdPr Me
  loc_652A83: MemStI2 global_62
  loc_652A86: FLdR8 var_94
  loc_652A89: LitI2_Byte &HA
  loc_652A8B: CR8I2
  loc_652A8C: LtCyR8
  loc_652A8D: FLdPr Me
  loc_652A90: MemLdI2 global_62
  loc_652A93: LitI2_Byte &H64
  loc_652A95: EqI2
  loc_652A96: AndI4
  loc_652A97: BranchF loc_652ACD
  loc_652A9A: ILdRf var_8C
  loc_652A9D: CStrI4
  loc_652A9F: FStStrNoPop var_A0
  loc_652AA2: LitStr ".0"
  loc_652AA5: ConcatStr
  loc_652AA6: FStStrNoPop var_A4
  loc_652AA9: FLdR8 var_94
  loc_652AAC: CStrCy
  loc_652AAE: FStStrNoPop var_A8
  loc_652AB1: ConcatStr
  loc_652AB2: FStStrNoPop var_AC
  loc_652AB5: ImpAdCallFPR4 push Val()
  loc_652ABA: CStrR8
  loc_652ABC: FStStr var_88
  loc_652ABF: FFreeStr var_A0 = "": var_A4 = "": var_A8 = ""
  loc_652ACA: Branch loc_652AFD
  loc_652ACD: ILdRf var_8C
  loc_652AD0: CStrI4
  loc_652AD2: FStStrNoPop var_A0
  loc_652AD5: LitStr "."
  loc_652AD8: ConcatStr
  loc_652AD9: FStStrNoPop var_A4
  loc_652ADC: FLdR8 var_94
  loc_652ADF: CStrCy
  loc_652AE1: FStStrNoPop var_A8
  loc_652AE4: ConcatStr
  loc_652AE5: FStStrNoPop var_AC
  loc_652AE8: ImpAdCallFPR4 push Val()
  loc_652AED: CStrR8
  loc_652AEF: FStStr var_88
  loc_652AF2: FFreeStr var_A0 = "": var_A4 = "": var_A8 = ""
  loc_652AFD: FLdPr Me
  loc_652B00: MemLdI2 global_60
  loc_652B03: BranchF loc_652BA5
  loc_652B06: FLdPr Me
  loc_652B09: MemLdI2 global_58
  loc_652B0C: BranchF loc_652B5A
  loc_652B0F: LitI4 1
  loc_652B14: LitI4 1
  loc_652B19: LitVarStr var_CC, "####0.00"
  loc_652B1E: FStVarCopyObj var_DC
  loc_652B21: FLdRfVar var_DC
  loc_652B24: FLdRfVar var_88
  loc_652B27: CVarRef
  loc_652B2C: FLdRfVar var_EC
  loc_652B2F: ImpAdCallFPR4  = Format(, )
  loc_652B34: FLdRfVar var_EC
  loc_652B37: CStrVarVal var_A0
  loc_652B3B: FLdPrThis
  loc_652B3C: VCallAd Control_ID_Producto
  loc_652B3F: FStAdFunc var_9C
  loc_652B42: FLdPr var_9C
  loc_652B45: Me.Text = from_stack_1
  loc_652B4A: FFree1Str var_A0
  loc_652B4D: FFree1Ad var_9C
  loc_652B50: FFreeVar var_DC = ""
  loc_652B57: Branch loc_652BA2
  loc_652B5A: LitI4 1
  loc_652B5F: LitI4 1
  loc_652B64: LitVarStr var_CC, "###0"
  loc_652B69: FStVarCopyObj var_DC
  loc_652B6C: FLdRfVar var_DC
  loc_652B6F: FLdRfVar var_88
  loc_652B72: CVarRef
  loc_652B77: FLdRfVar var_EC
  loc_652B7A: ImpAdCallFPR4  = Format(, )
  loc_652B7F: FLdRfVar var_EC
  loc_652B82: CStrVarVal var_A0
  loc_652B86: FLdPrThis
  loc_652B87: VCallAd Control_ID_mmProducto
  loc_652B8A: FStAdFunc var_9C
  loc_652B8D: FLdPr var_9C
  loc_652B90: Me.Text = from_stack_1
  loc_652B95: FFree1Str var_A0
  loc_652B98: FFree1Ad var_9C
  loc_652B9B: FFreeVar var_DC = ""
  loc_652BA2: Branch loc_652C41
  loc_652BA5: FLdPr Me
  loc_652BA8: MemLdI2 global_58
  loc_652BAB: BranchF loc_652BF9
  loc_652BAE: LitI4 1
  loc_652BB3: LitI4 1
  loc_652BB8: LitVarStr var_CC, "####0.00"
  loc_652BBD: FStVarCopyObj var_DC
  loc_652BC0: FLdRfVar var_DC
  loc_652BC3: FLdRfVar var_88
  loc_652BC6: CVarRef
  loc_652BCB: FLdRfVar var_EC
  loc_652BCE: ImpAdCallFPR4  = Format(, )
  loc_652BD3: FLdRfVar var_EC
  loc_652BD6: CStrVarVal var_A0
  loc_652BDA: FLdPrThis
  loc_652BDB: VCallAd Control_ID_Agua
  loc_652BDE: FStAdFunc var_9C
  loc_652BE1: FLdPr var_9C
  loc_652BE4: Me.Text = from_stack_1
  loc_652BE9: FFree1Str var_A0
  loc_652BEC: FFree1Ad var_9C
  loc_652BEF: FFreeVar var_DC = ""
  loc_652BF6: Branch loc_652C41
  loc_652BF9: LitI4 1
  loc_652BFE: LitI4 1
  loc_652C03: LitVarStr var_CC, "###0"
  loc_652C08: FStVarCopyObj var_DC
  loc_652C0B: FLdRfVar var_DC
  loc_652C0E: FLdRfVar var_88
  loc_652C11: CVarRef
  loc_652C16: FLdRfVar var_EC
  loc_652C19: ImpAdCallFPR4  = Format(, )
  loc_652C1E: FLdRfVar var_EC
  loc_652C21: CStrVarVal var_A0
  loc_652C25: FLdPrThis
  loc_652C26: VCallAd Control_ID_mmAgua
  loc_652C29: FStAdFunc var_9C
  loc_652C2C: FLdPr var_9C
  loc_652C2F: Me.Text = from_stack_1
  loc_652C34: FFree1Str var_A0
  loc_652C37: FFree1Ad var_9C
  loc_652C3A: FFreeVar var_DC = ""
  loc_652C41: ExitProcHresult
End Function

Private Sub Agua_GotFocus() '5D8FA8
  'Data Table: 43C478
  loc_5D8F78: FLdPr Me
  loc_5D8F7B: MemLdI2 global_58
  loc_5D8F7E: BranchF loc_5D8F94
  loc_5D8F81: LitI2_Byte 0
  loc_5D8F83: FLdPr Me
  loc_5D8F86: MemStI2 global_60
  loc_5D8F89: LitI2_Byte 0
  loc_5D8F8B: FLdPr Me
  loc_5D8F8E: MemStI2 global_56
  loc_5D8F91: Branch loc_5D8FA6
  loc_5D8F94: FLdPrThis
  loc_5D8F95: VCallAd Control_ID_mmAgua
  loc_5D8F98: FStAdFunc var_88
  loc_5D8F9B: FLdPr var_88
  loc_5D8F9E: Me.SetFocus
  loc_5D8FA3: FFree1Ad var_88
  loc_5D8FA6: ExitProcHresult
End Sub

Private Sub Borrar_UnknownEvent_8 '61F7DC
  'Data Table: 43C478
  loc_61F690: FLdPr Me
  loc_61F693: MemLdI2 global_60
  loc_61F696: BranchF loc_61F736
  loc_61F699: FLdPr Me
  loc_61F69C: MemLdI2 global_58
  loc_61F69F: BranchF loc_61F6EC
  loc_61F6A2: LitI4 1
  loc_61F6A7: LitI4 1
  loc_61F6AC: LitVarStr var_B4, "####0.00"
  loc_61F6B1: FStVarCopyObj var_C4
  loc_61F6B4: FLdRfVar var_C4
  loc_61F6B7: LitVarI2 var_A4, 0
  loc_61F6BC: FLdRfVar var_D4
  loc_61F6BF: ImpAdCallFPR4  = Format(, )
  loc_61F6C4: FLdRfVar var_D4
  loc_61F6C7: CStrVarVal var_D8
  loc_61F6CB: FLdPrThis
  loc_61F6CC: VCallAd Control_ID_Producto
  loc_61F6CF: FStAdFunc var_DC
  loc_61F6D2: FLdPr var_DC
  loc_61F6D5: Me.Text = from_stack_1
  loc_61F6DA: FFree1Str var_D8
  loc_61F6DD: FFree1Ad var_DC
  loc_61F6E0: FFreeVar var_A4 = "": var_C4 = ""
  loc_61F6E9: Branch loc_61F733
  loc_61F6EC: LitI4 1
  loc_61F6F1: LitI4 1
  loc_61F6F6: LitVarStr var_B4, "###0"
  loc_61F6FB: FStVarCopyObj var_C4
  loc_61F6FE: FLdRfVar var_C4
  loc_61F701: LitVarI2 var_A4, 0
  loc_61F706: FLdRfVar var_D4
  loc_61F709: ImpAdCallFPR4  = Format(, )
  loc_61F70E: FLdRfVar var_D4
  loc_61F711: CStrVarVal var_D8
  loc_61F715: FLdPrThis
  loc_61F716: VCallAd Control_ID_mmProducto
  loc_61F719: FStAdFunc var_DC
  loc_61F71C: FLdPr var_DC
  loc_61F71F: Me.Text = from_stack_1
  loc_61F724: FFree1Str var_D8
  loc_61F727: FFree1Ad var_DC
  loc_61F72A: FFreeVar var_A4 = "": var_C4 = ""
  loc_61F733: Branch loc_61F7D0
  loc_61F736: FLdPr Me
  loc_61F739: MemLdI2 global_58
  loc_61F73C: BranchF loc_61F789
  loc_61F73F: LitI4 1
  loc_61F744: LitI4 1
  loc_61F749: LitVarStr var_B4, "####0.00"
  loc_61F74E: FStVarCopyObj var_C4
  loc_61F751: FLdRfVar var_C4
  loc_61F754: LitVarI2 var_A4, 0
  loc_61F759: FLdRfVar var_D4
  loc_61F75C: ImpAdCallFPR4  = Format(, )
  loc_61F761: FLdRfVar var_D4
  loc_61F764: CStrVarVal var_D8
  loc_61F768: FLdPrThis
  loc_61F769: VCallAd Control_ID_Agua
  loc_61F76C: FStAdFunc var_DC
  loc_61F76F: FLdPr var_DC
  loc_61F772: Me.Text = from_stack_1
  loc_61F777: FFree1Str var_D8
  loc_61F77A: FFree1Ad var_DC
  loc_61F77D: FFreeVar var_A4 = "": var_C4 = ""
  loc_61F786: Branch loc_61F7D0
  loc_61F789: LitI4 1
  loc_61F78E: LitI4 1
  loc_61F793: LitVarStr var_B4, "###0"
  loc_61F798: FStVarCopyObj var_C4
  loc_61F79B: FLdRfVar var_C4
  loc_61F79E: LitVarI2 var_A4, 0
  loc_61F7A3: FLdRfVar var_D4
  loc_61F7A6: ImpAdCallFPR4  = Format(, )
  loc_61F7AB: FLdRfVar var_D4
  loc_61F7AE: CStrVarVal var_D8
  loc_61F7B2: FLdPrThis
  loc_61F7B3: VCallAd Control_ID_mmAgua
  loc_61F7B6: FStAdFunc var_DC
  loc_61F7B9: FLdPr var_DC
  loc_61F7BC: Me.Text = from_stack_1
  loc_61F7C1: FFree1Str var_D8
  loc_61F7C4: FFree1Ad var_DC
  loc_61F7C7: FFreeVar var_A4 = "": var_C4 = ""
  loc_61F7D0: LitI2_Byte 0
  loc_61F7D2: FLdPr Me
  loc_61F7D5: MemStI2 global_56
  loc_61F7D8: ExitProcHresult
  loc_61F7D9: LitI2_Byte &H17
End Sub

Private Sub OK_UnknownEvent_8 '6AF64C
  'Data Table: 43C478
  loc_6AEEE4: FLdPr Me
  loc_6AEEE7: MemLdI2 Consulta
  loc_6AEEEA: BranchF loc_6AEF03
  loc_6AEEED: ILdRf Me
  loc_6AEEF0: FStAdNoPop
  loc_6AEEF4: ImpAdLdRf MemVar_7520D4
  loc_6AEEF7: NewIfNullPr Global
  loc_6AEEFA: Global.Unload from_stack_1
  loc_6AEEFF: FFree1Ad var_8C
  loc_6AEF02: ExitProcHresult
  loc_6AEF03: FLdPr Me
  loc_6AEF06: MemLdI2 global_58
  loc_6AEF09: BranchF loc_6AF0C5
  loc_6AEF0C: FLdRfVar var_90
  loc_6AEF0F: FLdPrThis
  loc_6AEF10: VCallAd Control_ID_Agua
  loc_6AEF13: FStAdFunc var_8C
  loc_6AEF16: FLdPr var_8C
  loc_6AEF19:  = Me.Text
  loc_6AEF1E: ILdRf var_90
  loc_6AEF21: ImpAdCallFPR4 push Val()
  loc_6AEF26: CR8R8
  loc_6AEF27: LitI2_Byte 0
  loc_6AEF29: CR8I2
  loc_6AEF2A: EqR4
  loc_6AEF2B: FLdRfVar var_98
  loc_6AEF2E: FLdPrThis
  loc_6AEF2F: VCallAd Control_ID_Producto
  loc_6AEF32: FStAdFunc var_94
  loc_6AEF35: FLdPr var_94
  loc_6AEF38:  = Me.Text
  loc_6AEF3D: ILdRf var_98
  loc_6AEF40: ImpAdCallFPR4 push Val()
  loc_6AEF45: CR8R8
  loc_6AEF46: LitI2_Byte 0
  loc_6AEF48: CR8I2
  loc_6AEF49: EqR4
  loc_6AEF4A: AndI4
  loc_6AEF4B: FFreeStr var_90 = ""
  loc_6AEF52: FFreeAd var_8C = ""
  loc_6AEF59: BranchF loc_6AEFF5
  loc_6AEF5C: LitI2_Byte 0
  loc_6AEF5E: FLdPr Me
  loc_6AEF61: MemStI2 global_56
  loc_6AEF64: FLdRfVar var_90
  loc_6AEF67: FLdRfVar var_94
  loc_6AEF6A: FLdPr Me
  loc_6AEF6D: MemLdI2 tank
  loc_6AEF70: LitI2_Byte 1
  loc_6AEF72: SubI2
  loc_6AEF73: ImpAdLdRf MemVar_74DC08
  loc_6AEF76: NewIfNullPr PanelTanques
  loc_6AEF79: VCallAd Control_ID_Agua
  loc_6AEF7C: FStAdFunc var_8C
  loc_6AEF7F: FLdPr var_8C
  loc_6AEF82: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6AEF87: FLdPr var_94
  loc_6AEF8A:  = Me.Caption
  loc_6AEF8F: ILdRf var_90
  loc_6AEF92: CR8Str
  loc_6AEF94: LitI2_Byte &H64
  loc_6AEF96: CR8I2
  loc_6AEF97: MulR8
  loc_6AEF98: CI4R8
  loc_6AEF99: ImpAdStR4 MemVar_74C378
  loc_6AEF9C: FFree1Str var_90
  loc_6AEF9F: FFreeAd var_8C = ""
  loc_6AEFA6: FLdRfVar var_90
  loc_6AEFA9: FLdRfVar var_94
  loc_6AEFAC: FLdPr Me
  loc_6AEFAF: MemLdI2 tank
  loc_6AEFB2: LitI2_Byte 1
  loc_6AEFB4: SubI2
  loc_6AEFB5: ImpAdLdRf MemVar_74DC08
  loc_6AEFB8: NewIfNullPr PanelTanques
  loc_6AEFBB: VCallAd Control_ID_Combustible
  loc_6AEFBE: FStAdFunc var_8C
  loc_6AEFC1: FLdPr var_8C
  loc_6AEFC4: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6AEFC9: FLdPr var_94
  loc_6AEFCC:  = Me.Caption
  loc_6AEFD1: ILdRf var_90
  loc_6AEFD4: CR8Str
  loc_6AEFD6: LitI2_Byte &H64
  loc_6AEFD8: CR8I2
  loc_6AEFD9: MulR8
  loc_6AEFDA: CI4R8
  loc_6AEFDB: ImpAdStR4 MemVar_74C374
  loc_6AEFDE: FFree1Str var_90
  loc_6AEFE1: FFreeAd var_8C = ""
  loc_6AEFE8: FLdPr Me
  loc_6AEFEB: MemLdI2 global_58
  loc_6AEFEE: NotI4
  loc_6AEFEF: ImpAdStI2 MemVar_74C37C
  loc_6AEFF2: Branch loc_6AF057
  loc_6AEFF5: LitI2_Byte 0
  loc_6AEFF7: FLdPr Me
  loc_6AEFFA: MemStI2 global_56
  loc_6AEFFD: FLdRfVar var_90
  loc_6AF000: FLdPrThis
  loc_6AF001: VCallAd Control_ID_Agua
  loc_6AF004: FStAdFunc var_8C
  loc_6AF007: FLdPr var_8C
  loc_6AF00A:  = Me.Text
  loc_6AF00F: ILdRf var_90
  loc_6AF012: ImpAdCallFPR4 push Val()
  loc_6AF017: LitI2_Byte &H64
  loc_6AF019: CR8I2
  loc_6AF01A: MulR8
  loc_6AF01B: CI4R8
  loc_6AF01C: ImpAdStR4 MemVar_74C378
  loc_6AF01F: FFree1Str var_90
  loc_6AF022: FFree1Ad var_8C
  loc_6AF025: FLdRfVar var_90
  loc_6AF028: FLdPrThis
  loc_6AF029: VCallAd Control_ID_Producto
  loc_6AF02C: FStAdFunc var_8C
  loc_6AF02F: FLdPr var_8C
  loc_6AF032:  = Me.Text
  loc_6AF037: ILdRf var_90
  loc_6AF03A: ImpAdCallFPR4 push Val()
  loc_6AF03F: LitI2_Byte &H64
  loc_6AF041: CR8I2
  loc_6AF042: MulR8
  loc_6AF043: CI4R8
  loc_6AF044: ImpAdStR4 MemVar_74C374
  loc_6AF047: FFree1Str var_90
  loc_6AF04A: FFree1Ad var_8C
  loc_6AF04D: FLdPr Me
  loc_6AF050: MemLdI2 global_58
  loc_6AF053: NotI4
  loc_6AF054: ImpAdStI2 MemVar_74C37C
  loc_6AF057: FLdPr Me
  loc_6AF05A: MemLdI2 tank
  loc_6AF05D: CI4UI1
  loc_6AF05E: ImpAdLdRf MemVar_74C2EC
  loc_6AF061: Ary1LdCy
  loc_6AF062: CR8Cy
  loc_6AF063: FStFPR4 var_88
  loc_6AF066: FLdFPR4 var_88
  loc_6AF069: ImpAdLdI4 MemVar_74C374
  loc_6AF06C: ImpAdLdI4 MemVar_74C378
  loc_6AF06F: AddI4
  loc_6AF070: CR8I4
  loc_6AF071: LitI2_Byte &H64
  loc_6AF073: CR8I2
  loc_6AF074: DivR8
  loc_6AF075: CR4R4
  loc_6AF076: LtR8
  loc_6AF077: BranchF loc_6AF0A8
  loc_6AF07A: LitVar_Missing var_F8
  loc_6AF07D: LitVar_Missing var_D8
  loc_6AF080: FLdPr Me
  loc_6AF083: MemLdRfVar from_stack_1.global_80
  loc_6AF086: CVarRef
  loc_6AF08B: LitI4 &H40
  loc_6AF090: FLdPr Me
  loc_6AF093: MemLdRfVar from_stack_1.global_76
  loc_6AF096: CVarRef
  loc_6AF09B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF0A0: FFreeVar var_D8 = ""
  loc_6AF0A7: ExitProcHresult
  loc_6AF0A8: ILdRf Me
  loc_6AF0AB: FStAdNoPop
  loc_6AF0AF: ImpAdLdRf MemVar_7520D4
  loc_6AF0B2: NewIfNullPr Global
  loc_6AF0B5: Global.Unload from_stack_1
  loc_6AF0BA: FFree1Ad var_8C
  loc_6AF0BD: LitI2_Byte 0
  loc_6AF0BF: ImpAdStI2 MemVar_74C37E
  loc_6AF0C2: Branch loc_6AF648
  loc_6AF0C5: FLdRfVar var_90
  loc_6AF0C8: FLdPrThis
  loc_6AF0C9: VCallAd Control_ID_mmAgua
  loc_6AF0CC: FStAdFunc var_8C
  loc_6AF0CF: FLdPr var_8C
  loc_6AF0D2:  = Me.Text
  loc_6AF0D7: ILdRf var_90
  loc_6AF0DA: LitStr vbNullString
  loc_6AF0DD: EqStr
  loc_6AF0DF: FLdRfVar var_98
  loc_6AF0E2: FLdPrThis
  loc_6AF0E3: VCallAd Control_ID_mmProducto
  loc_6AF0E6: FStAdFunc var_94
  loc_6AF0E9: FLdPr var_94
  loc_6AF0EC:  = Me.Text
  loc_6AF0F1: ILdRf var_98
  loc_6AF0F4: LitStr vbNullString
  loc_6AF0F7: EqStr
  loc_6AF0F9: AndI4
  loc_6AF0FA: FFreeStr var_90 = ""
  loc_6AF101: FFreeAd var_8C = ""
  loc_6AF108: BranchF loc_6AF1AA
  loc_6AF10B: FLdRfVar var_90
  loc_6AF10E: FLdRfVar var_94
  loc_6AF111: FLdPr Me
  loc_6AF114: MemLdI2 tank
  loc_6AF117: LitI2_Byte 1
  loc_6AF119: SubI2
  loc_6AF11A: ImpAdLdRf MemVar_74DC08
  loc_6AF11D: NewIfNullPr PanelTanques
  loc_6AF120: VCallAd Control_ID_Agua
  loc_6AF123: FStAdFunc var_8C
  loc_6AF126: FLdPr var_8C
  loc_6AF129: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6AF12E: FLdPr var_94
  loc_6AF131:  = Me.Caption
  loc_6AF136: ILdRf var_90
  loc_6AF139: CR8Str
  loc_6AF13B: LitI2_Byte &H64
  loc_6AF13D: CR8I2
  loc_6AF13E: MulR8
  loc_6AF13F: CI4R8
  loc_6AF140: ImpAdStR4 MemVar_74C378
  loc_6AF143: FFree1Str var_90
  loc_6AF146: FFreeAd var_8C = ""
  loc_6AF14D: FLdRfVar var_90
  loc_6AF150: FLdRfVar var_94
  loc_6AF153: FLdPr Me
  loc_6AF156: MemLdI2 tank
  loc_6AF159: LitI2_Byte 1
  loc_6AF15B: SubI2
  loc_6AF15C: ImpAdLdRf MemVar_74DC08
  loc_6AF15F: NewIfNullPr PanelTanques
  loc_6AF162: VCallAd Control_ID_Combustible
  loc_6AF165: FStAdFunc var_8C
  loc_6AF168: FLdPr var_8C
  loc_6AF16B: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6AF170: FLdPr var_94
  loc_6AF173:  = Me.Caption
  loc_6AF178: ILdRf var_90
  loc_6AF17B: CR8Str
  loc_6AF17D: LitI2_Byte &H64
  loc_6AF17F: CR8I2
  loc_6AF180: MulR8
  loc_6AF181: CI4R8
  loc_6AF182: ImpAdStR4 MemVar_74C374
  loc_6AF185: FFree1Str var_90
  loc_6AF188: FFreeAd var_8C = ""
  loc_6AF18F: LitI2_Byte 0
  loc_6AF191: ImpAdStI2 MemVar_74C37E
  loc_6AF194: ILdRf Me
  loc_6AF197: FStAdNoPop
  loc_6AF19B: ImpAdLdRf MemVar_7520D4
  loc_6AF19E: NewIfNullPr Global
  loc_6AF1A1: Global.Unload from_stack_1
  loc_6AF1A6: FFree1Ad var_8C
  loc_6AF1A9: ExitProcHresult
  loc_6AF1AA: FLdRfVar var_98
  loc_6AF1AD: FLdPrThis
  loc_6AF1AE: VCallAd Control_ID_mmProducto
  loc_6AF1B1: FStAdFunc var_94
  loc_6AF1B4: FLdPr var_94
  loc_6AF1B7:  = Me.Text
  loc_6AF1BC: ILdRf var_98
  loc_6AF1BF: ImpAdCallFPR4 push Val()
  loc_6AF1C4: FStFPR8 var_100
  loc_6AF1C7: FLdRfVar var_90
  loc_6AF1CA: FLdPrThis
  loc_6AF1CB: VCallAd Control_ID_mmAgua
  loc_6AF1CE: FStAdFunc var_8C
  loc_6AF1D1: FLdPr var_8C
  loc_6AF1D4:  = Me.Text
  loc_6AF1D9: ILdRf var_90
  loc_6AF1DC: ImpAdCallFPR4 push Val()
  loc_6AF1E1: CR8R8
  loc_6AF1E2: FLdFPR8 var_100
  loc_6AF1E5: CR8R8
  loc_6AF1E6: LeR8
  loc_6AF1E7: FFreeStr var_90 = ""
  loc_6AF1EE: FFreeAd var_8C = ""
  loc_6AF1F5: BranchF loc_6AF309
  loc_6AF1F8: LitI2_Byte 0
  loc_6AF1FA: FLdPr Me
  loc_6AF1FD: MemStI2 global_56
  loc_6AF200: FLdRfVar var_90
  loc_6AF203: FLdPrThis
  loc_6AF204: VCallAd Control_ID_Agua
  loc_6AF207: FStAdFunc var_8C
  loc_6AF20A: FLdPr var_8C
  loc_6AF20D:  = Me.Text
  loc_6AF212: ILdRf var_90
  loc_6AF215: ImpAdCallFPR4 push Val()
  loc_6AF21A: LitI2_Byte &H64
  loc_6AF21C: CR8I2
  loc_6AF21D: MulR8
  loc_6AF21E: CI4R8
  loc_6AF21F: ImpAdStR4 MemVar_74C378
  loc_6AF222: FFree1Str var_90
  loc_6AF225: FFree1Ad var_8C
  loc_6AF228: FLdRfVar var_90
  loc_6AF22B: FLdPrThis
  loc_6AF22C: VCallAd Control_ID_Producto
  loc_6AF22F: FStAdFunc var_8C
  loc_6AF232: FLdPr var_8C
  loc_6AF235:  = Me.Text
  loc_6AF23A: ILdRf var_90
  loc_6AF23D: ImpAdCallFPR4 push Val()
  loc_6AF242: LitI2_Byte &H64
  loc_6AF244: CR8I2
  loc_6AF245: MulR8
  loc_6AF246: CI4R8
  loc_6AF247: ImpAdStR4 MemVar_74C374
  loc_6AF24A: FFree1Str var_90
  loc_6AF24D: FFree1Ad var_8C
  loc_6AF250: FLdPr Me
  loc_6AF253: MemLdI2 global_58
  loc_6AF256: NotI4
  loc_6AF257: ImpAdStI2 MemVar_74C37C
  loc_6AF25A: FLdPr Me
  loc_6AF25D: MemLdI2 tank
  loc_6AF260: CI4UI1
  loc_6AF261: ImpAdLdRf MemVar_74C2EC
  loc_6AF264: Ary1LdCy
  loc_6AF265: CR8Cy
  loc_6AF266: FStFPR4 var_88
  loc_6AF269: FLdFPR4 var_88
  loc_6AF26C: ImpAdLdI4 MemVar_74C374
  loc_6AF26F: ImpAdLdI4 MemVar_74C378
  loc_6AF272: AddI4
  loc_6AF273: CR8I4
  loc_6AF274: LitI2_Byte &H64
  loc_6AF276: CR8I2
  loc_6AF277: DivR8
  loc_6AF278: CR4R4
  loc_6AF279: LtR8
  loc_6AF27A: BranchF loc_6AF301
  loc_6AF27D: FLdRfVar var_98
  loc_6AF280: LitVar_Missing var_1E8
  loc_6AF283: LitVar_Missing var_1C8
  loc_6AF286: LitVar_Missing var_1A8
  loc_6AF289: LitVar_Missing var_188
  loc_6AF28C: LitVar_Missing var_168
  loc_6AF28F: LitVar_Missing var_148
  loc_6AF292: LitVar_Missing var_128
  loc_6AF295: LitVar_Missing var_118
  loc_6AF298: LitVar_Missing var_F8
  loc_6AF29B: LitVar_Missing var_D8
  loc_6AF29E: LitStr " Las cantidades de combustible y agua sumadas son mayores que la capacidad máxima del tanque. Verifíque por favor."
  loc_6AF2A1: FStStrCopy var_90
  loc_6AF2A4: FLdRfVar var_90
  loc_6AF2A7: LitI4 &H12
  loc_6AF2AC: PopTmpLdAdStr var_108
  loc_6AF2AF: LitI2_Byte &H11
  loc_6AF2B1: PopTmpLdAd2 var_102
  loc_6AF2B4: ImpAdLdRf MemVar_74C7D0
  loc_6AF2B7: NewIfNullPr clsMsg
  loc_6AF2BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AF2BF: LitVar_Missing var_248
  loc_6AF2C2: LitVar_Missing var_228
  loc_6AF2C5: FLdPr Me
  loc_6AF2C8: MemLdRfVar from_stack_1.global_80
  loc_6AF2CB: CVarRef
  loc_6AF2D0: LitI4 &H40
  loc_6AF2D5: FLdZeroAd var_98
  loc_6AF2D8: CVarStr var_1F8
  loc_6AF2DB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF2E0: FFree1Str var_90
  loc_6AF2E3: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_6AF300: ExitProcHresult
  loc_6AF301: LitI2_Byte 0
  loc_6AF303: ImpAdStI2 MemVar_74C37E
  loc_6AF306: Branch loc_6AF38D
  loc_6AF309: FLdRfVar var_98
  loc_6AF30C: LitVar_Missing var_1E8
  loc_6AF30F: LitVar_Missing var_1C8
  loc_6AF312: LitVar_Missing var_1A8
  loc_6AF315: LitVar_Missing var_188
  loc_6AF318: LitVar_Missing var_168
  loc_6AF31B: LitVar_Missing var_148
  loc_6AF31E: LitVar_Missing var_128
  loc_6AF321: LitVar_Missing var_118
  loc_6AF324: LitVar_Missing var_F8
  loc_6AF327: LitVar_Missing var_D8
  loc_6AF32A: LitStr "El nivel de agua no puede ser mayor que el de producto. Intente nuevamente."
  loc_6AF32D: FStStrCopy var_90
  loc_6AF330: FLdRfVar var_90
  loc_6AF333: LitI4 &H13
  loc_6AF338: PopTmpLdAdStr var_108
  loc_6AF33B: LitI2_Byte &H11
  loc_6AF33D: PopTmpLdAd2 var_102
  loc_6AF340: ImpAdLdRf MemVar_74C7D0
  loc_6AF343: NewIfNullPr clsMsg
  loc_6AF346: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AF34B: LitVar_Missing var_248
  loc_6AF34E: LitVar_Missing var_228
  loc_6AF351: FLdPr Me
  loc_6AF354: MemLdRfVar from_stack_1.global_88
  loc_6AF357: CVarRef
  loc_6AF35C: LitI4 &H10
  loc_6AF361: FLdZeroAd var_98
  loc_6AF364: CVarStr var_1F8
  loc_6AF367: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF36C: FFree1Str var_90
  loc_6AF36F: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_6AF38C: ExitProcHresult
  loc_6AF38D: FLdRfVar var_90
  loc_6AF390: FLdPrThis
  loc_6AF391: VCallAd Control_ID_mmAgua
  loc_6AF394: FStAdFunc var_8C
  loc_6AF397: FLdPr var_8C
  loc_6AF39A:  = Me.Text
  loc_6AF39F: ILdRf var_90
  loc_6AF3A2: ImpAdCallFPR4 push Val()
  loc_6AF3A7: CR8R8
  loc_6AF3A8: LitI2_Byte &HA
  loc_6AF3AA: CR8I2
  loc_6AF3AB: GtR4
  loc_6AF3AC: FLdRfVar var_98
  loc_6AF3AF: FLdPrThis
  loc_6AF3B0: VCallAd Control_ID_Agua
  loc_6AF3B3: FStAdFunc var_94
  loc_6AF3B6: FLdPr var_94
  loc_6AF3B9:  = Me.Text
  loc_6AF3BE: ILdRf var_98
  loc_6AF3C1: CR8Str
  loc_6AF3C3: LitI2_Byte 0
  loc_6AF3C5: CR8I2
  loc_6AF3C6: EqR4
  loc_6AF3C7: AndI4
  loc_6AF3C8: FFreeStr var_90 = ""
  loc_6AF3CF: FFreeAd var_8C = ""
  loc_6AF3D6: BranchF loc_6AF46F
  loc_6AF3D9: FLdRfVar var_98
  loc_6AF3DC: LitVar_Missing var_1E8
  loc_6AF3DF: LitVar_Missing var_1C8
  loc_6AF3E2: LitVar_Missing var_1A8
  loc_6AF3E5: LitVar_Missing var_188
  loc_6AF3E8: LitVar_Missing var_168
  loc_6AF3EB: LitVar_Missing var_148
  loc_6AF3EE: LitVar_Missing var_128
  loc_6AF3F1: LitVar_Missing var_118
  loc_6AF3F4: LitVar_Missing var_F8
  loc_6AF3F7: LitVar_Missing var_D8
  loc_6AF3FA: LitStr "La altura de agua ingresada es inválida."
  loc_6AF3FD: FStStrCopy var_90
  loc_6AF400: FLdRfVar var_90
  loc_6AF403: LitI4 &H14
  loc_6AF408: PopTmpLdAdStr var_108
  loc_6AF40B: LitI2_Byte &H11
  loc_6AF40D: PopTmpLdAd2 var_102
  loc_6AF410: ImpAdLdRf MemVar_74C7D0
  loc_6AF413: NewIfNullPr clsMsg
  loc_6AF416: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AF41B: LitVar_Missing var_248
  loc_6AF41E: LitVar_Missing var_228
  loc_6AF421: FLdPr Me
  loc_6AF424: MemLdRfVar from_stack_1.global_92
  loc_6AF427: CVarRef
  loc_6AF42C: LitI4 &H40
  loc_6AF431: FLdZeroAd var_98
  loc_6AF434: CVarStr var_1F8
  loc_6AF437: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF43C: FFree1Str var_90
  loc_6AF43F: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_6AF45C: FLdPrThis
  loc_6AF45D: VCallAd Control_ID_mmAgua
  loc_6AF460: FStAdFunc var_8C
  loc_6AF463: FLdPr var_8C
  loc_6AF466: Me.SetFocus
  loc_6AF46B: FFree1Ad var_8C
  loc_6AF46E: ExitProcHresult
  loc_6AF46F: FLdRfVar var_90
  loc_6AF472: FLdPrThis
  loc_6AF473: VCallAd Control_ID_mmProducto
  loc_6AF476: FStAdFunc var_8C
  loc_6AF479: FLdPr var_8C
  loc_6AF47C:  = Me.Text
  loc_6AF481: ILdRf var_90
  loc_6AF484: ImpAdCallFPR4 push Val()
  loc_6AF489: CR8R8
  loc_6AF48A: LitI2_Byte &HA
  loc_6AF48C: CR8I2
  loc_6AF48D: GtR4
  loc_6AF48E: FLdRfVar var_98
  loc_6AF491: FLdPrThis
  loc_6AF492: VCallAd Control_ID_Producto
  loc_6AF495: FStAdFunc var_94
  loc_6AF498: FLdPr var_94
  loc_6AF49B:  = Me.Text
  loc_6AF4A0: ILdRf var_98
  loc_6AF4A3: CR8Str
  loc_6AF4A5: LitI2_Byte 0
  loc_6AF4A7: CR8I2
  loc_6AF4A8: EqR4
  loc_6AF4A9: AndI4
  loc_6AF4AA: FFreeStr var_90 = ""
  loc_6AF4B1: FFreeAd var_8C = ""
  loc_6AF4B8: BranchF loc_6AF551
  loc_6AF4BB: FLdRfVar var_98
  loc_6AF4BE: LitVar_Missing var_1E8
  loc_6AF4C1: LitVar_Missing var_1C8
  loc_6AF4C4: LitVar_Missing var_1A8
  loc_6AF4C7: LitVar_Missing var_188
  loc_6AF4CA: LitVar_Missing var_168
  loc_6AF4CD: LitVar_Missing var_148
  loc_6AF4D0: LitVar_Missing var_128
  loc_6AF4D3: LitVar_Missing var_118
  loc_6AF4D6: LitVar_Missing var_F8
  loc_6AF4D9: LitVar_Missing var_D8
  loc_6AF4DC: LitStr "La altura de producto ingresada es inválida."
  loc_6AF4DF: FStStrCopy var_90
  loc_6AF4E2: FLdRfVar var_90
  loc_6AF4E5: LitI4 &H16
  loc_6AF4EA: PopTmpLdAdStr var_108
  loc_6AF4ED: LitI2_Byte &H11
  loc_6AF4EF: PopTmpLdAd2 var_102
  loc_6AF4F2: ImpAdLdRf MemVar_74C7D0
  loc_6AF4F5: NewIfNullPr clsMsg
  loc_6AF4F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AF4FD: LitVar_Missing var_248
  loc_6AF500: LitVar_Missing var_228
  loc_6AF503: FLdPr Me
  loc_6AF506: MemLdRfVar from_stack_1.global_92
  loc_6AF509: CVarRef
  loc_6AF50E: LitI4 &H40
  loc_6AF513: FLdZeroAd var_98
  loc_6AF516: CVarStr var_1F8
  loc_6AF519: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF51E: FFree1Str var_90
  loc_6AF521: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_6AF53E: FLdPrThis
  loc_6AF53F: VCallAd Control_ID_mmProducto
  loc_6AF542: FStAdFunc var_8C
  loc_6AF545: FLdPr var_8C
  loc_6AF548: Me.SetFocus
  loc_6AF54D: FFree1Ad var_8C
  loc_6AF550: ExitProcHresult
  loc_6AF551: FLdRfVar var_90
  loc_6AF554: FLdPrThis
  loc_6AF555: VCallAd Control_ID_mmAgua
  loc_6AF558: FStAdFunc var_8C
  loc_6AF55B: FLdPr var_8C
  loc_6AF55E:  = Me.Text
  loc_6AF563: ILdRf var_90
  loc_6AF566: ImpAdCallFPR4 push Val()
  loc_6AF56B: CR8R8
  loc_6AF56C: LitI2_Byte &HA
  loc_6AF56E: CR8I2
  loc_6AF56F: GtR4
  loc_6AF570: FLdRfVar var_98
  loc_6AF573: FLdPrThis
  loc_6AF574: VCallAd Control_ID_Agua
  loc_6AF577: FStAdFunc var_94
  loc_6AF57A: FLdPr var_94
  loc_6AF57D:  = Me.Text
  loc_6AF582: ILdRf var_98
  loc_6AF585: CR8Str
  loc_6AF587: LitI2_Byte 0
  loc_6AF589: CR8I2
  loc_6AF58A: EqR4
  loc_6AF58B: AndI4
  loc_6AF58C: FFreeStr var_90 = ""
  loc_6AF593: FFreeAd var_8C = ""
  loc_6AF59A: BranchF loc_6AF633
  loc_6AF59D: FLdRfVar var_98
  loc_6AF5A0: LitVar_Missing var_1E8
  loc_6AF5A3: LitVar_Missing var_1C8
  loc_6AF5A6: LitVar_Missing var_1A8
  loc_6AF5A9: LitVar_Missing var_188
  loc_6AF5AC: LitVar_Missing var_168
  loc_6AF5AF: LitVar_Missing var_148
  loc_6AF5B2: LitVar_Missing var_128
  loc_6AF5B5: LitVar_Missing var_118
  loc_6AF5B8: LitVar_Missing var_F8
  loc_6AF5BB: LitVar_Missing var_D8
  loc_6AF5BE: LitStr "La altura de agua ingresada es inválida."
  loc_6AF5C1: FStStrCopy var_90
  loc_6AF5C4: FLdRfVar var_90
  loc_6AF5C7: LitI4 &H14
  loc_6AF5CC: PopTmpLdAdStr var_108
  loc_6AF5CF: LitI2_Byte &H11
  loc_6AF5D1: PopTmpLdAd2 var_102
  loc_6AF5D4: ImpAdLdRf MemVar_74C7D0
  loc_6AF5D7: NewIfNullPr clsMsg
  loc_6AF5DA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AF5DF: LitVar_Missing var_248
  loc_6AF5E2: LitVar_Missing var_228
  loc_6AF5E5: FLdPr Me
  loc_6AF5E8: MemLdRfVar from_stack_1.global_92
  loc_6AF5EB: CVarRef
  loc_6AF5F0: LitI4 &H40
  loc_6AF5F5: FLdZeroAd var_98
  loc_6AF5F8: CVarStr var_1F8
  loc_6AF5FB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AF600: FFree1Str var_90
  loc_6AF603: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_6AF620: FLdPrThis
  loc_6AF621: VCallAd Control_ID_mmAgua
  loc_6AF624: FStAdFunc var_8C
  loc_6AF627: FLdPr var_8C
  loc_6AF62A: Me.SetFocus
  loc_6AF62F: FFree1Ad var_8C
  loc_6AF632: ExitProcHresult
  loc_6AF633: ILdRf Me
  loc_6AF636: FStAdNoPop
  loc_6AF63A: ImpAdLdRf MemVar_7520D4
  loc_6AF63D: NewIfNullPr Global
  loc_6AF640: Global.Unload from_stack_1
  loc_6AF645: FFree1Ad var_8C
  loc_6AF648: ExitProcHresult
End Sub

Private Sub Cancel_UnknownEvent_8 '64A418
  'Data Table: 43C478
  loc_64A1F8: FLdPr Me
  loc_64A1FB: MemLdI2 Consulta
  loc_64A1FE: BranchF loc_64A217
  loc_64A201: ILdRf Me
  loc_64A204: FStAdNoPop
  loc_64A208: ImpAdLdRf MemVar_7520D4
  loc_64A20B: NewIfNullPr Global
  loc_64A20E: Global.Unload from_stack_1
  loc_64A213: FFree1Ad var_8C
  loc_64A216: ExitProcHresult
  loc_64A217: FLdRfVar var_98
  loc_64A21A: FLdRfVar var_90
  loc_64A21D: FLdPrThis
  loc_64A21E: VCallAd Control_ID_Agua
  loc_64A221: FStAdFunc var_8C
  loc_64A224: FLdPr var_8C
  loc_64A227:  = Me.Text
  loc_64A22C: FLdZeroAd var_90
  loc_64A22F: PopTmpLdAdStr
  loc_64A233: from_stack_2v = Proc_135_23_5DDC88(from_stack_1v)
  loc_64A238: ILdRf var_98
  loc_64A23B: FLdPrThis
  loc_64A23C: VCallAd Control_ID_Agua
  loc_64A23F: FStAdFunc var_9C
  loc_64A242: FLdPr var_9C
  loc_64A245: Me.Text = from_stack_1
  loc_64A24A: FFreeStr var_94 = ""
  loc_64A251: FFreeAd var_8C = ""
  loc_64A258: FLdRfVar var_98
  loc_64A25B: FLdRfVar var_90
  loc_64A25E: FLdPrThis
  loc_64A25F: VCallAd Control_ID_Producto
  loc_64A262: FStAdFunc var_8C
  loc_64A265: FLdPr var_8C
  loc_64A268:  = Me.Text
  loc_64A26D: FLdZeroAd var_90
  loc_64A270: PopTmpLdAdStr
  loc_64A274: from_stack_2v = Proc_135_23_5DDC88(from_stack_1v)
  loc_64A279: ILdRf var_98
  loc_64A27C: FLdPrThis
  loc_64A27D: VCallAd Control_ID_Producto
  loc_64A280: FStAdFunc var_9C
  loc_64A283: FLdPr var_9C
  loc_64A286: Me.Text = from_stack_1
  loc_64A28B: FFreeStr var_94 = ""
  loc_64A292: FFreeAd var_8C = ""
  loc_64A299: FLdRfVar var_90
  loc_64A29C: FLdPrThis
  loc_64A29D: VCallAd Control_ID_Agua
  loc_64A2A0: FStAdFunc var_8C
  loc_64A2A3: FLdPr var_8C
  loc_64A2A6:  = Me.Text
  loc_64A2AB: ILdRf var_90
  loc_64A2AE: ImpAdCallFPR4 push Val()
  loc_64A2B3: CR8R8
  loc_64A2B4: LitI2_Byte 0
  loc_64A2B6: CR8I2
  loc_64A2B7: EqR4
  loc_64A2B8: FLdRfVar var_94
  loc_64A2BB: FLdPrThis
  loc_64A2BC: VCallAd Control_ID_Producto
  loc_64A2BF: FStAdFunc var_9C
  loc_64A2C2: FLdPr var_9C
  loc_64A2C5:  = Me.Text
  loc_64A2CA: ILdRf var_94
  loc_64A2CD: ImpAdCallFPR4 push Val()
  loc_64A2D2: CR8R8
  loc_64A2D3: LitI2_Byte 0
  loc_64A2D5: CR8I2
  loc_64A2D6: EqR4
  loc_64A2D7: AndI4
  loc_64A2D8: FFreeStr var_90 = ""
  loc_64A2DF: FFreeAd var_8C = ""
  loc_64A2E6: BranchF loc_64A304
  loc_64A2E9: LitI2_Byte &HFF
  loc_64A2EB: ImpAdStI2 MemVar_74C37E
  loc_64A2EE: ILdRf Me
  loc_64A2F1: FStAdNoPop
  loc_64A2F5: ImpAdLdRf MemVar_7520D4
  loc_64A2F8: NewIfNullPr Global
  loc_64A2FB: Global.Unload from_stack_1
  loc_64A300: FFree1Ad var_8C
  loc_64A303: ExitProcHresult
  loc_64A304: FLdRfVar var_94
  loc_64A307: LitVar_Missing var_1E4
  loc_64A30A: LitVar_Missing var_1C4
  loc_64A30D: LitVar_Missing var_1A4
  loc_64A310: LitVar_Missing var_184
  loc_64A313: LitVar_Missing var_164
  loc_64A316: LitVar_Missing var_144
  loc_64A319: LitVar_Missing var_124
  loc_64A31C: LitVar_Missing var_104
  loc_64A31F: LitVar_Missing var_E4
  loc_64A322: LitVar_Missing var_C4
  loc_64A325: LitStr "Desea grabar la informacion ingresada."
  loc_64A328: FStStrCopy var_90
  loc_64A32B: FLdRfVar var_90
  loc_64A32E: LitI4 &HD
  loc_64A333: PopTmpLdAdStr var_A4
  loc_64A336: LitI2_Byte &H11
  loc_64A338: PopTmpLdAd2 var_9E
  loc_64A33B: ImpAdLdRf MemVar_74C7D0
  loc_64A33E: NewIfNullPr clsMsg
  loc_64A341: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64A346: FLdRfVar var_330
  loc_64A349: LitVar_Missing var_32C
  loc_64A34C: LitVar_Missing var_30C
  loc_64A34F: LitVar_Missing var_2EC
  loc_64A352: LitVar_Missing var_2CC
  loc_64A355: LitVar_Missing var_2AC
  loc_64A358: LitVar_Missing var_28C
  loc_64A35B: LitVar_Missing var_26C
  loc_64A35E: LitVar_Missing var_24C
  loc_64A361: LitVar_Missing var_22C
  loc_64A364: LitVar_Missing var_20C
  loc_64A367: LitStr "Informacion para el usuario."
  loc_64A36A: FStStrCopy var_98
  loc_64A36D: FLdRfVar var_98
  loc_64A370: LitI4 &HE
  loc_64A375: PopTmpLdAdStr var_1EC
  loc_64A378: LitI2_Byte &H11
  loc_64A37A: PopTmpLdAd2 var_1E6
  loc_64A37D: ImpAdLdRf MemVar_74C7D0
  loc_64A380: NewIfNullPr clsMsg
  loc_64A383: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64A388: LitVar_Missing var_390
  loc_64A38B: LitVar_Missing var_370
  loc_64A38E: FLdZeroAd var_330
  loc_64A391: CVarStr var_350
  loc_64A394: LitI4 &H44
  loc_64A399: FLdZeroAd var_94
  loc_64A39C: CVarStr var_340
  loc_64A39F: ImpAdCallI2 MsgBox(, , , , )
  loc_64A3A4: FStR4 var_88
  loc_64A3A7: FFreeStr var_90 = ""
  loc_64A3AE: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_340 = "": var_350 = "": var_370 = ""
  loc_64A3E1: ILdRf var_88
  loc_64A3E4: LitI4 6
  loc_64A3E9: EqI4
  loc_64A3EA: BranchF loc_64A3FA
  loc_64A3ED: ImpAdCallFPR4 DoEvents()
  loc_64A3F2: Call OK_UnknownEvent_8()
  loc_64A3F7: Branch loc_64A414
  loc_64A3FA: LitI2_Byte &HFF
  loc_64A3FC: ImpAdStI2 MemVar_74C37E
  loc_64A3FF: ILdRf Me
  loc_64A402: FStAdNoPop
  loc_64A406: ImpAdLdRf MemVar_7520D4
  loc_64A409: NewIfNullPr Global
  loc_64A40C: Global.Unload from_stack_1
  loc_64A411: FFree1Ad var_8C
  loc_64A414: ExitProcHresult
  loc_64A415: LtI4
  loc_64A416: CRec2Ansi arg_0
End Sub

Public Function ConsultaGet() '43D024
  ConsultaGet = Consulta
End Function

Public Sub ConsultaPut(Value) '43D033
  Consulta = Value
End Sub

Public Function tankGet() '43D042
  tankGet = tank
End Function

Public Sub tankPut(Value) '43D051
  tank = Value
End Sub

Public Sub TraducirMilimetros() '684834
  'Data Table: 43C478
  loc_684338: FLdRfVar var_9C
  loc_68433B: FLdPrThis
  loc_68433C: VCallAd Control_ID_mmAgua
  loc_68433F: FStAdFunc var_98
  loc_684342: FLdPr var_98
  loc_684345:  = Me.Text
  loc_68434A: ILdRf var_9C
  loc_68434D: LitStr vbNullString
  loc_684350: EqStr
  loc_684352: FFree1Str var_9C
  loc_684355: FFree1Ad var_98
  loc_684358: BranchF loc_684370
  loc_68435B: LitStr vbNullString
  loc_68435E: FLdPrThis
  loc_68435F: VCallAd Control_ID_Agua
  loc_684362: FStAdFunc var_98
  loc_684365: FLdPr var_98
  loc_684368: Me.Text = from_stack_1
  loc_68436D: FFree1Ad var_98
  loc_684370: FLdRfVar var_9C
  loc_684373: FLdPrThis
  loc_684374: VCallAd Control_ID_mmProducto
  loc_684377: FStAdFunc var_98
  loc_68437A: FLdPr var_98
  loc_68437D:  = Me.Text
  loc_684382: ILdRf var_9C
  loc_684385: LitStr vbNullString
  loc_684388: EqStr
  loc_68438A: FFree1Str var_9C
  loc_68438D: FFree1Ad var_98
  loc_684390: BranchF loc_6843A8
  loc_684393: LitStr vbNullString
  loc_684396: FLdPrThis
  loc_684397: VCallAd Control_ID_Producto
  loc_68439A: FStAdFunc var_98
  loc_68439D: FLdPr var_98
  loc_6843A0: Me.Text = from_stack_1
  loc_6843A5: FFree1Ad var_98
  loc_6843A8: FLdRfVar var_9C
  loc_6843AB: FLdPrThis
  loc_6843AC: VCallAd Control_ID_mmAgua
  loc_6843AF: FStAdFunc var_98
  loc_6843B2: FLdPr var_98
  loc_6843B5:  = Me.Text
  loc_6843BA: ILdRf var_9C
  loc_6843BD: ImpAdCallFPR4 push Val()
  loc_6843C2: CR8R8
  loc_6843C3: LitI2 6000
  loc_6843C6: CR8I2
  loc_6843C7: GtR4
  loc_6843C8: FLdRfVar var_A4
  loc_6843CB: FLdPrThis
  loc_6843CC: VCallAd Control_ID_mmProducto
  loc_6843CF: FStAdFunc var_A0
  loc_6843D2: FLdPr var_A0
  loc_6843D5:  = Me.Text
  loc_6843DA: ILdRf var_A4
  loc_6843DD: ImpAdCallFPR4 push Val()
  loc_6843E2: CR8R8
  loc_6843E3: LitI2 6000
  loc_6843E6: CR8I2
  loc_6843E7: GtR4
  loc_6843E8: OrI4
  loc_6843E9: FFreeStr var_9C = ""
  loc_6843F0: FFreeAd var_98 = ""
  loc_6843F7: BranchF loc_6844E2
  loc_6843FA: FLdRfVar var_A4
  loc_6843FD: LitVar_Missing var_1EC
  loc_684400: LitVar_Missing var_1CC
  loc_684403: LitVar_Missing var_1AC
  loc_684406: LitVar_Missing var_18C
  loc_684409: LitVar_Missing var_16C
  loc_68440C: LitVar_Missing var_14C
  loc_68440F: LitVar_Missing var_12C
  loc_684412: LitVar_Missing var_10C
  loc_684415: LitVar_Missing var_EC
  loc_684418: LitVar_Missing var_CC
  loc_68441B: LitStr "Debe ingresar una altura menor o igual a 6000 milimetros. Verifique por favor."
  loc_68441E: FStStrCopy var_9C
  loc_684421: FLdRfVar var_9C
  loc_684424: LitI4 &H11
  loc_684429: PopTmpLdAdStr var_AC
  loc_68442C: LitI2_Byte &H11
  loc_68442E: PopTmpLdAd2 var_A6
  loc_684431: ImpAdLdRf MemVar_74C7D0
  loc_684434: NewIfNullPr clsMsg
  loc_684437: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68443C: LitVar_Missing var_24C
  loc_68443F: LitVar_Missing var_22C
  loc_684442: FLdPr Me
  loc_684445: MemLdRfVar from_stack_1.global_72
  loc_684448: CVarRef
  loc_68444D: LitI4 &H40
  loc_684452: FLdZeroAd var_A4
  loc_684455: CVarStr var_1FC
  loc_684458: ImpAdCallFPR4 MsgBox(, , , , )
  loc_68445D: FFree1Str var_9C
  loc_684460: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_1FC = "": var_22C = ""
  loc_68447D: LitI2_Byte &HFF
  loc_68447F: FLdPr Me
  loc_684482: MemStI2 global_64
  loc_684485: LitStr vbNullString
  loc_684488: FLdPrThis
  loc_684489: VCallAd Control_ID_mmAgua
  loc_68448C: FStAdFunc var_98
  loc_68448F: FLdPr var_98
  loc_684492: Me.Text = from_stack_1
  loc_684497: FFree1Ad var_98
  loc_68449A: LitStr vbNullString
  loc_68449D: FLdPrThis
  loc_68449E: VCallAd Control_ID_Agua
  loc_6844A1: FStAdFunc var_98
  loc_6844A4: FLdPr var_98
  loc_6844A7: Me.Text = from_stack_1
  loc_6844AC: FFree1Ad var_98
  loc_6844AF: LitI2_Byte &HFF
  loc_6844B1: FLdPr Me
  loc_6844B4: MemStI2 global_64
  loc_6844B7: LitStr vbNullString
  loc_6844BA: FLdPrThis
  loc_6844BB: VCallAd Control_ID_mmProducto
  loc_6844BE: FStAdFunc var_98
  loc_6844C1: FLdPr var_98
  loc_6844C4: Me.Text = from_stack_1
  loc_6844C9: FFree1Ad var_98
  loc_6844CC: LitStr vbNullString
  loc_6844CF: FLdPrThis
  loc_6844D0: VCallAd Control_ID_Producto
  loc_6844D3: FStAdFunc var_98
  loc_6844D6: FLdPr var_98
  loc_6844D9: Me.Text = from_stack_1
  loc_6844DE: FFree1Ad var_98
  loc_6844E1: ExitProcHresult
  loc_6844E2: FLdPr Me
  loc_6844E5: MemLdI2 tank
  loc_6844E8: CI4UI1
  loc_6844E9: ImpAdLdRf MemVar_74C0C4
  loc_6844EC: Ary1LdUI1
  loc_6844EE: CI2UI1
  loc_6844F0: LitI2_Byte 1
  loc_6844F2: EqI2
  loc_6844F3: BranchF loc_6845B9
  loc_6844F6: FLdRfVar var_9C
  loc_6844F9: FLdPrThis
  loc_6844FA: VCallAd Control_ID_mmProducto
  loc_6844FD: FStAdFunc var_98
  loc_684500: FLdPr var_98
  loc_684503:  = Me.Text
  loc_684508: ILdRf var_9C
  loc_68450B: ImpAdCallFPR4 push Val()
  loc_684510: CR8R8
  loc_684511: FLdPr Me
  loc_684514: MemLdI2 tank
  loc_684517: CI4UI1
  loc_684518: ImpAdLdRf MemVar_74C2AC
  loc_68451B: Ary1LdI2
  loc_68451C: CR8I2
  loc_68451D: LtR8
  loc_68451E: FFree1Str var_9C
  loc_684521: FFree1Ad var_98
  loc_684524: BranchF loc_684532
  loc_684527: LitI4 0
  loc_68452C: FStR4 var_88
  loc_68452F: Branch loc_684556
  loc_684532: FLdRfVar var_9C
  loc_684535: FLdPrThis
  loc_684536: VCallAd Control_ID_mmProducto
  loc_684539: FStAdFunc var_98
  loc_68453C: FLdPr var_98
  loc_68453F:  = Me.Text
  loc_684544: ILdRf var_9C
  loc_684547: ImpAdCallFPR4 push Val()
  loc_68454C: CI4R8
  loc_68454D: FStR4 var_88
  loc_684550: FFree1Str var_9C
  loc_684553: FFree1Ad var_98
  loc_684556: FLdRfVar var_9C
  loc_684559: FLdPrThis
  loc_68455A: VCallAd Control_ID_mmAgua
  loc_68455D: FStAdFunc var_98
  loc_684560: FLdPr var_98
  loc_684563:  = Me.Text
  loc_684568: ILdRf var_9C
  loc_68456B: ImpAdCallFPR4 push Val()
  loc_684570: CR8R8
  loc_684571: FLdPr Me
  loc_684574: MemLdI2 tank
  loc_684577: CI4UI1
  loc_684578: ImpAdLdRf MemVar_74C294
  loc_68457B: Ary1LdI2
  loc_68457C: CR8I2
  loc_68457D: LtR8
  loc_68457E: FFree1Str var_9C
  loc_684581: FFree1Ad var_98
  loc_684584: BranchF loc_684592
  loc_684587: LitI4 0
  loc_68458C: FStR4 var_8C
  loc_68458F: Branch loc_6845B6
  loc_684592: FLdRfVar var_9C
  loc_684595: FLdPrThis
  loc_684596: VCallAd Control_ID_mmAgua
  loc_684599: FStAdFunc var_98
  loc_68459C: FLdPr var_98
  loc_68459F:  = Me.Text
  loc_6845A4: ILdRf var_9C
  loc_6845A7: ImpAdCallFPR4 push Val()
  loc_6845AC: CI4R8
  loc_6845AD: FStR4 var_8C
  loc_6845B0: FFree1Str var_9C
  loc_6845B3: FFree1Ad var_98
  loc_6845B6: Branch loc_6846AD
  loc_6845B9: FLdRfVar var_9C
  loc_6845BC: FLdPrThis
  loc_6845BD: VCallAd Control_ID_mmProducto
  loc_6845C0: FStAdFunc var_98
  loc_6845C3: FLdPr var_98
  loc_6845C6:  = Me.Text
  loc_6845CB: ILdRf var_9C
  loc_6845CE: ImpAdCallFPR4 push Val()
  loc_6845D3: CR8R8
  loc_6845D4: FLdPr Me
  loc_6845D7: MemLdI2 tank
  loc_6845DA: CI4UI1
  loc_6845DB: ImpAdLdRf MemVar_74C2AC
  loc_6845DE: Ary1LdI2
  loc_6845DF: CR8I2
  loc_6845E0: LtR8
  loc_6845E1: FFree1Str var_9C
  loc_6845E4: FFree1Ad var_98
  loc_6845E7: BranchF loc_6845F5
  loc_6845EA: LitI4 0
  loc_6845EF: FStR4 var_88
  loc_6845F2: Branch loc_684633
  loc_6845F5: FLdRfVar var_9C
  loc_6845F8: FLdPrThis
  loc_6845F9: VCallAd Control_ID_mmProducto
  loc_6845FC: FStAdFunc var_98
  loc_6845FF: FLdPr var_98
  loc_684602:  = Me.Text
  loc_684607: ILdRf var_9C
  loc_68460A: ImpAdCallFPR4 push Val()
  loc_68460F: FLdPr Me
  loc_684612: MemLdI2 tank
  loc_684615: CI4UI1
  loc_684616: ImpAdLdRf MemVar_74C260
  loc_684619: Ary1LdI2
  loc_68461A: CR8I2
  loc_68461B: AddR8
  loc_68461C: FLdPr Me
  loc_68461F: MemLdI2 tank
  loc_684622: CI4UI1
  loc_684623: ImpAdLdRf MemVar_74C278
  loc_684626: Ary1LdI2
  loc_684627: CR8I2
  loc_684628: SubR4
  loc_684629: CI4R8
  loc_68462A: FStR4 var_88
  loc_68462D: FFree1Str var_9C
  loc_684630: FFree1Ad var_98
  loc_684633: FLdRfVar var_9C
  loc_684636: FLdPrThis
  loc_684637: VCallAd Control_ID_mmAgua
  loc_68463A: FStAdFunc var_98
  loc_68463D: FLdPr var_98
  loc_684640:  = Me.Text
  loc_684645: ILdRf var_9C
  loc_684648: ImpAdCallFPR4 push Val()
  loc_68464D: CR8R8
  loc_68464E: FLdPr Me
  loc_684651: MemLdI2 tank
  loc_684654: CI4UI1
  loc_684655: ImpAdLdRf MemVar_74C294
  loc_684658: Ary1LdI2
  loc_684659: CR8I2
  loc_68465A: LtR8
  loc_68465B: FFree1Str var_9C
  loc_68465E: FFree1Ad var_98
  loc_684661: BranchF loc_68466F
  loc_684664: LitI4 0
  loc_684669: FStR4 var_8C
  loc_68466C: Branch loc_6846AD
  loc_68466F: FLdRfVar var_9C
  loc_684672: FLdPrThis
  loc_684673: VCallAd Control_ID_mmAgua
  loc_684676: FStAdFunc var_98
  loc_684679: FLdPr var_98
  loc_68467C:  = Me.Text
  loc_684681: ILdRf var_9C
  loc_684684: ImpAdCallFPR4 push Val()
  loc_684689: FLdPr Me
  loc_68468C: MemLdI2 tank
  loc_68468F: CI4UI1
  loc_684690: ImpAdLdRf MemVar_74C260
  loc_684693: Ary1LdI2
  loc_684694: CR8I2
  loc_684695: AddR8
  loc_684696: FLdPr Me
  loc_684699: MemLdI2 tank
  loc_68469C: CI4UI1
  loc_68469D: ImpAdLdRf MemVar_74C278
  loc_6846A0: Ary1LdI2
  loc_6846A1: CR8I2
  loc_6846A2: SubR4
  loc_6846A3: CI4R8
  loc_6846A4: FStR4 var_8C
  loc_6846A7: FFree1Str var_9C
  loc_6846AA: FFree1Ad var_98
  loc_6846AD: ILdRf var_8C
  loc_6846B0: LitI4 0
  loc_6846B5: LtI4
  loc_6846B6: ILdRf var_8C
  loc_6846B9: LitI4 &H1770
  loc_6846BE: GtI4
  loc_6846BF: OrI4
  loc_6846C0: BranchF loc_6846CB
  loc_6846C3: LitI4 0
  loc_6846C8: FStR4 var_8C
  loc_6846CB: ILdRf var_88
  loc_6846CE: LitI4 0
  loc_6846D3: LtI4
  loc_6846D4: ILdRf var_88
  loc_6846D7: LitI4 &H1770
  loc_6846DC: GtI4
  loc_6846DD: OrI4
  loc_6846DE: BranchF loc_6846E9
  loc_6846E1: LitI4 0
  loc_6846E6: FStR4 var_88
  loc_6846E9: FLdRfVar var_A6
  loc_6846EC: FLdRfVar var_94
  loc_6846EF: ILdRf var_8C
  loc_6846F2: FLdPr Me
  loc_6846F5: MemLdI2 tank
  loc_6846F8: LitI2_Byte 0
  loc_6846FA: FLdRfVar var_98
  loc_6846FD: ImpAdLdRf MemVar_74C760
  loc_684700: NewIfNullPr Formx
  loc_684703: from_stack_1v = Formx.global_4589716Get()
  loc_684708: FLdPr var_98
  loc_68470B: Formx.ScaleX from_stack_1s, from_stack_2, from_stack_3
  loc_684710: FLdI2 var_A6
  loc_684713: NotI4
  loc_684714: FFree1Ad var_98
  loc_684717: BranchF loc_684730
  loc_68471A: ILdRf Me
  loc_68471D: FStAdNoPop
  loc_684721: ImpAdLdRf MemVar_7520D4
  loc_684724: NewIfNullPr Global
  loc_684727: Global.Unload from_stack_1
  loc_68472C: FFree1Ad var_98
  loc_68472F: ExitProcHresult
  loc_684730: FLdRfVar var_A6
  loc_684733: FLdRfVar var_90
  loc_684736: ILdRf var_88
  loc_684739: FLdPr Me
  loc_68473C: MemLdI2 tank
  loc_68473F: LitI2_Byte 0
  loc_684741: FLdRfVar var_98
  loc_684744: ImpAdLdRf MemVar_74C760
  loc_684747: NewIfNullPr Formx
  loc_68474A: from_stack_1v = Formx.global_4589716Get()
  loc_68474F: FLdPr var_98
  loc_684752: Formx.ScaleX from_stack_1s, from_stack_2, from_stack_3
  loc_684757: FLdI2 var_A6
  loc_68475A: NotI4
  loc_68475B: FFree1Ad var_98
  loc_68475E: BranchF loc_684777
  loc_684761: ILdRf Me
  loc_684764: FStAdNoPop
  loc_684768: ImpAdLdRf MemVar_7520D4
  loc_68476B: NewIfNullPr Global
  loc_68476E: Global.Unload from_stack_1
  loc_684773: FFree1Ad var_98
  loc_684776: ExitProcHresult
  loc_684777: ILdRf var_90
  loc_68477A: ILdRf var_94
  loc_68477D: SubI4
  loc_68477E: FStR4 var_90
  loc_684781: ILdRf var_90
  loc_684784: LitI4 0
  loc_684789: LtI4
  loc_68478A: BranchF loc_684795
  loc_68478D: LitI4 0
  loc_684792: FStR4 var_90
  loc_684795: LitI4 1
  loc_68479A: LitI4 1
  loc_68479F: LitVarStr var_DC, "0.00"
  loc_6847A4: FStVarCopyObj var_EC
  loc_6847A7: FLdRfVar var_EC
  loc_6847AA: ILdRf var_94
  loc_6847AD: CR8I4
  loc_6847AE: LitI2_Byte &H64
  loc_6847B0: CR8I2
  loc_6847B1: DivR8
  loc_6847B2: CVarR8
  loc_6847B6: FLdRfVar var_10C
  loc_6847B9: ImpAdCallFPR4  = Format(, )
  loc_6847BE: FLdRfVar var_10C
  loc_6847C1: CStrVarVal var_9C
  loc_6847C5: FLdPrThis
  loc_6847C6: VCallAd Control_ID_Agua
  loc_6847C9: FStAdFunc var_98
  loc_6847CC: FLdPr var_98
  loc_6847CF: Me.Text = from_stack_1
  loc_6847D4: FFree1Str var_9C
  loc_6847D7: FFree1Ad var_98
  loc_6847DA: FFreeVar var_CC = "": var_EC = ""
  loc_6847E3: LitI4 1
  loc_6847E8: LitI4 1
  loc_6847ED: LitVarStr var_DC, "0.00"
  loc_6847F2: FStVarCopyObj var_EC
  loc_6847F5: FLdRfVar var_EC
  loc_6847F8: ILdRf var_90
  loc_6847FB: CR8I4
  loc_6847FC: LitI2_Byte &H64
  loc_6847FE: CR8I2
  loc_6847FF: DivR8
  loc_684800: CVarR8
  loc_684804: FLdRfVar var_10C
  loc_684807: ImpAdCallFPR4  = Format(, )
  loc_68480C: FLdRfVar var_10C
  loc_68480F: CStrVarVal var_9C
  loc_684813: FLdPrThis
  loc_684814: VCallAd Control_ID_Producto
  loc_684817: FStAdFunc var_98
  loc_68481A: FLdPr var_98
  loc_68481D: Me.Text = from_stack_1
  loc_684822: FFree1Str var_9C
  loc_684825: FFree1Ad var_98
  loc_684828: FFreeVar var_CC = "": var_EC = ""
  loc_684831: ExitProcHresult
End Sub

Public Sub GetTankTotals(tank, Combustible, Agua) '60A1B8
  'Data Table: 43C478
  loc_60A0F4: FLdRfVar var_B8
  loc_60A0F7: FLdRfVar var_88
  loc_60A0FA: FLdI2 tank
  loc_60A0FD: CUI1I2
  loc_60A0FF: PopTmpLdAd1
  loc_60A103: FLdRfVar var_A4
  loc_60A106: ImpAdLdRf MemVar_74C760
  loc_60A109: NewIfNullPr Formx
  loc_60A10C: from_stack_1v = Formx.global_4589716Get()
  loc_60A111: FLdPr var_A4
  loc_60A119: FLdRfVar var_B8
  loc_60A11C: NotVar var_C8
  loc_60A120: CBoolVarNull
  loc_60A122: FFree1Ad var_A4
  loc_60A125: FFree1Var var_B8 = ""
  loc_60A128: BranchF loc_60A157
  loc_60A12B: FLdRfVar var_B8
  loc_60A12E: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_60A133: FLdRfVar var_B8
  loc_60A136: CBoolVarNull
  loc_60A138: FFree1Var var_B8 = ""
  loc_60A13B: BranchF loc_60A154
  loc_60A13E: ILdRf Me
  loc_60A141: FStAdNoPop
  loc_60A145: ImpAdLdRf MemVar_7520D4
  loc_60A148: NewIfNullPr Global
  loc_60A14B: Global.Unload from_stack_1
  loc_60A150: FFree1Ad var_A4
  loc_60A153: ExitProcHresult
  loc_60A154: Branch loc_60A0F4
  loc_60A157: LitVarI2 var_B8, 8
  loc_60A15C: LitI4 1
  loc_60A161: FLdRfVar var_88
  loc_60A164: CVarRef
  loc_60A169: FLdRfVar var_C8
  loc_60A16C: ImpAdCallFPR4  = Mid(, , )
  loc_60A171: FLdRfVar var_C8
  loc_60A174: FnCSngVar
  loc_60A176: LitI2_Byte &H64
  loc_60A178: CR8I2
  loc_60A179: DivR8
  loc_60A17A: IStFPR4 Combustible
  loc_60A17D: FFreeVar var_B8 = "": var_C8 = ""
  loc_60A186: LitVarI2 var_B8, 8
  loc_60A18B: LitI4 9
  loc_60A190: FLdRfVar var_88
  loc_60A193: CVarRef
  loc_60A198: FLdRfVar var_C8
  loc_60A19B: ImpAdCallFPR4  = Mid(, , )
  loc_60A1A0: FLdRfVar var_C8
  loc_60A1A3: FnCSngVar
  loc_60A1A5: LitI2_Byte &H64
  loc_60A1A7: CR8I2
  loc_60A1A8: DivR8
  loc_60A1A9: IStFPR4 Agua
  loc_60A1AC: FFreeVar var_B8 = "": var_C8 = ""
  loc_60A1B5: ExitProcHresult
  loc_60A1B6: MemLdRfVar from_stack_1.global_5
End Sub

Private Function Proc_135_23_5DDC88(arg_C) '5DDC88
  'Data Table: 43C478
  loc_5DDC3C: ZeroRetVal
  loc_5DDC3E: LitI4 1
  loc_5DDC43: ILdI4 arg_C
  loc_5DDC46: LitStr ","
  loc_5DDC49: LitI4 0
  loc_5DDC4E: FnInStr4
  loc_5DDC50: LitI4 0
  loc_5DDC55: GtI4
  loc_5DDC56: BranchF loc_5DDC79
  loc_5DDC59: ILdRf arg_C
  loc_5DDC5C: LitI4 1
  loc_5DDC61: ILdI4 arg_C
  loc_5DDC64: LitStr ","
  loc_5DDC67: LitI4 0
  loc_5DDC6C: FnInStr4
  loc_5DDC6E: LitI4 1
  loc_5DDC73: LitStr "."
  loc_5DDC76: MidStr arg_0
  loc_5DDC79: ILdI4 arg_C
  loc_5DDC7C: FStStrCopy var_88
  loc_5DDC7F: ExitProcCbHresult
  loc_5DDC87: CStrVarTmp
End Function
