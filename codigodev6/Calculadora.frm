VERSION 5.00
Object = "{00025600-0000-0000-C000000000000046}#5.1#0"; "C:\WINDOWS\SysWow64\CRYSTL32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Begin VB.Form Calculadora
  Caption = "Calculadora"
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
  ClientLeft = 1005
  ClientTop = 405
  ClientWidth = 9435
  ClientHeight = 5625
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 120
    Top = 60
    Width = 9195
    Height = 5355
    TabIndex = 5
    Begin Crystal.CrystalReport CrystalReport1
      OleObjectBlob = "Calculadora.frx":0000
      Left = 720
      Top = 1080
    End
    Begin VB.Frame Frame3
      Left = 300
      Top = 4020
      Width = 5535
      Height = 120
      TabIndex = 25
    End
    Begin VB.Frame Frame2
      Left = 300
      Top = 1800
      Width = 5535
      Height = 120
      TabIndex = 24
    End
    Begin VB.TextBox Calculadora
      Left = 2940
      Top = 4440
      Width = 2655
      Height = 615
      Text = "Calculadora.frx":00F3
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
    Begin VB.TextBox txtMarcaInicial
      Left = 3000
      Top = 2280
      Width = 2655
      Height = 615
      Text = "0"
      TabIndex = 0
      Alignment = 1 'Right Justify
      MaxLength = 4
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
    Begin VB.TextBox txtMarcaFinal
      Left = 3000
      Top = 3120
      Width = 2655
      Height = 615
      Text = "0"
      TabIndex = 1
      Alignment = 1 'Right Justify
      MaxLength = 4
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
      Left = 7080
      Top = 3180
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 6
      OleObjectBlob = "Calculadora.frx":00FA
    End
    Begin Threed.SSCommand Teclas
      Index = 1
      Left = 6120
      Top = 300
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 7
      OleObjectBlob = "Calculadora.frx":0158
    End
    Begin Threed.SSCommand Teclas
      Index = 2
      Left = 7080
      Top = 300
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 8
      OleObjectBlob = "Calculadora.frx":01B6
    End
    Begin Threed.SSCommand Teclas
      Index = 3
      Left = 8040
      Top = 300
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 9
      OleObjectBlob = "Calculadora.frx":0214
    End
    Begin Threed.SSCommand Teclas
      Index = 4
      Left = 6120
      Top = 1260
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 10
      OleObjectBlob = "Calculadora.frx":0272
    End
    Begin Threed.SSCommand Teclas
      Index = 5
      Left = 7080
      Top = 1260
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 11
      OleObjectBlob = "Calculadora.frx":02D0
    End
    Begin Threed.SSCommand Teclas
      Index = 6
      Left = 8040
      Top = 1260
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 12
      OleObjectBlob = "Calculadora.frx":032E
    End
    Begin Threed.SSCommand Teclas
      Index = 7
      Left = 6120
      Top = 2220
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 13
      OleObjectBlob = "Calculadora.frx":038C
    End
    Begin Threed.SSCommand Teclas
      Index = 8
      Left = 7080
      Top = 2220
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 14
      OleObjectBlob = "Calculadora.frx":03EA
    End
    Begin Threed.SSCommand Borrar
      Left = 6120
      Top = 3180
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 15
      OleObjectBlob = "Calculadora.frx":0448
    End
    Begin Threed.SSCommand Teclas
      Index = 9
      Left = 8040
      Top = 2220
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 16
      OleObjectBlob = "Calculadora.frx":08F8
    End
    Begin Threed.SSCommand Punto
      Left = 8040
      Top = 3180
      Width = 975
      Height = 975
      TabStop = 0   'False
      TabIndex = 17
      OleObjectBlob = "Calculadora.frx":0956
    End
    Begin Threed.SSCommand OK
      Left = 7560
      Top = 4320
      Width = 1455
      Height = 855
      TabStop = 0   'False
      TabIndex = 4
      OleObjectBlob = "Calculadora.frx":09B4
    End
    Begin Threed.SSCommand cancel
      Left = 6120
      Top = 4320
      Width = 1455
      Height = 855
      TabStop = 0   'False
      TabIndex = 3
      OleObjectBlob = "Calculadora.frx":12B4
    End
    Begin KeyStatLib.MhState EstadoNumLock
      Left = 120
      Top = 4860
      Width = 495
      Height = 375
      Visible = 0   'False
      TabIndex = 18
      OleObjectBlob = "Calculadora.frx":1BB4
    End
    Begin VB.Label Titulo
      Caption = "Titulo"
      BackColor = &H80000002&
      ForeColor = &H80000009&
      Left = 60
      Top = 300
      Width = 6015
      Height = 495
      TabIndex = 23
      Alignment = 2 'Center
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
    Begin VB.Label Subtitulo
      Caption = "SubTitulo"
      Left = 60
      Top = 960
      Width = 6015
      Height = 495
      TabIndex = 22
      Alignment = 2 'Center
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
    Begin VB.Label lblLitros
      Caption = "Litros"
      Left = 300
      Top = 4440
      Width = 2535
      Height = 615
      TabIndex = 21
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
    Begin VB.Label lblMarcaInicial
      Caption = "Medición Inicial"
      Left = 120
      Top = 2280
      Width = 2775
      Height = 615
      TabIndex = 20
      Alignment = 2 'Center
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
    Begin VB.Label lblMarcaFinal
      Caption = "Medición Final"
      Left = 120
      Top = 3120
      Width = 2775
      Height = 600
      TabIndex = 19
      Alignment = 2 'Center
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
End

Attribute VB_Name = "Calculadora"

Public Alta As Boolean
Public tank As Integer
Public strTooMuchFuel As String
Public strFuelling As String
Public strMarcaFinal As String
Public strIngresoMil As String


Private Function Teclas_UnknownEvent_8(arg_C) '645DC0
  'Data Table: 438E8C
  loc_645B64: FLdPr Me
  loc_645B67: MemLdRfVar from_stack_1.global_76
  loc_645B6A: CBoolVarNull
  loc_645B6C: BranchF loc_645B8D
  loc_645B6F: FLdRfVar var_A0
  loc_645B72: FLdPrThis
  loc_645B73: VCallAd Control_ID_Calculadora
  loc_645B76: FStAdFunc var_9C
  loc_645B79: FLdPr var_9C
  loc_645B7C:  = Me.Text
  loc_645B81: FLdZeroAd var_A0
  loc_645B84: FStStr var_88
  loc_645B87: FFree1Ad var_9C
  loc_645B8A: Branch loc_645BCF
  loc_645B8D: FLdPr Me
  loc_645B90: MemLdI2 global_92
  loc_645B93: BranchF loc_645BB4
  loc_645B96: FLdRfVar var_A0
  loc_645B99: FLdPrThis
  loc_645B9A: VCallAd Control_ID_txtMarcaInicial
  loc_645B9D: FStAdFunc var_9C
  loc_645BA0: FLdPr var_9C
  loc_645BA3:  = Me.Text
  loc_645BA8: FLdZeroAd var_A0
  loc_645BAB: FStStr var_88
  loc_645BAE: FFree1Ad var_9C
  loc_645BB1: Branch loc_645BCF
  loc_645BB4: FLdRfVar var_A0
  loc_645BB7: FLdPrThis
  loc_645BB8: VCallAd Control_ID_txtMarcaFinal
  loc_645BBB: FStAdFunc var_9C
  loc_645BBE: FLdPr var_9C
  loc_645BC1:  = Me.Text
  loc_645BC6: FLdZeroAd var_A0
  loc_645BC9: FStStr var_88
  loc_645BCC: FFree1Ad var_9C
  loc_645BCF: ILdRf var_88
  loc_645BD2: ImpAdCallFPR4 push Val()
  loc_645BD7: FnIntR8
  loc_645BD9: CI4R8
  loc_645BDA: FStR4 var_8C
  loc_645BDD: ILdRf var_88
  loc_645BE0: ImpAdCallFPR4 push Val()
  loc_645BE5: ILdRf var_8C
  loc_645BE8: CR8I4
  loc_645BE9: SubR4
  loc_645BEA: FLdPr Me
  loc_645BED: MemLdI2 global_74
  loc_645BF0: CR8I2
  loc_645BF1: MulR8
  loc_645BF2: CCyR4
  loc_645BF3: FStR8 var_94
  loc_645BF6: FLdPr Me
  loc_645BF9: MemLdI2 global_72
  loc_645BFC: NotI4
  loc_645BFD: BranchF loc_645C28
  loc_645C00: ILdRf var_8C
  loc_645C03: LitI4 &HF423F
  loc_645C08: LtI4
  loc_645C09: BranchF loc_645C25
  loc_645C0C: ILdRf var_8C
  loc_645C0F: LitI4 &HA
  loc_645C14: MulI4
  loc_645C15: ILdI2 arg_C
  loc_645C18: CI4UI1
  loc_645C19: AddI4
  loc_645C1A: FStR4 var_8C
  loc_645C1D: LitI2_Byte 1
  loc_645C1F: FLdPr Me
  loc_645C22: MemStI2 global_74
  loc_645C25: Branch loc_645C55
  loc_645C28: FLdPr Me
  loc_645C2B: MemLdI2 global_74
  loc_645C2E: LitI2_Byte &H64
  loc_645C30: LtI2
  loc_645C31: BranchF loc_645C55
  loc_645C34: FLdR8 var_94
  loc_645C37: FLdPr Me
  loc_645C3A: MemLdI2 global_74
  loc_645C3D: MulCyI2
  loc_645C3E: ILdI2 arg_C
  loc_645C41: CCyI2
  loc_645C42: AddCy
  loc_645C43: FStR8 var_94
  loc_645C46: FLdPr Me
  loc_645C49: MemLdI2 global_74
  loc_645C4C: LitI2_Byte &HA
  loc_645C4E: MulI2
  loc_645C4F: FLdPr Me
  loc_645C52: MemStI2 global_74
  loc_645C55: FLdR8 var_94
  loc_645C58: LitI2_Byte &HA
  loc_645C5A: CR8I2
  loc_645C5B: LtCyR8
  loc_645C5C: FLdPr Me
  loc_645C5F: MemLdI2 global_74
  loc_645C62: LitI2_Byte &H64
  loc_645C64: EqI2
  loc_645C65: AndI4
  loc_645C66: BranchF loc_645C9C
  loc_645C69: ILdRf var_8C
  loc_645C6C: CStrI4
  loc_645C6E: FStStrNoPop var_A0
  loc_645C71: LitStr ".0"
  loc_645C74: ConcatStr
  loc_645C75: FStStrNoPop var_A4
  loc_645C78: FLdR8 var_94
  loc_645C7B: CStrCy
  loc_645C7D: FStStrNoPop var_A8
  loc_645C80: ConcatStr
  loc_645C81: FStStrNoPop var_AC
  loc_645C84: ImpAdCallFPR4 push Val()
  loc_645C89: CStrR8
  loc_645C8B: FStStr var_88
  loc_645C8E: FFreeStr var_A0 = "": var_A4 = "": var_A8 = ""
  loc_645C99: Branch loc_645CCC
  loc_645C9C: ILdRf var_8C
  loc_645C9F: CStrI4
  loc_645CA1: FStStrNoPop var_A0
  loc_645CA4: LitStr "."
  loc_645CA7: ConcatStr
  loc_645CA8: FStStrNoPop var_A4
  loc_645CAB: FLdR8 var_94
  loc_645CAE: CStrCy
  loc_645CB0: FStStrNoPop var_A8
  loc_645CB3: ConcatStr
  loc_645CB4: FStStrNoPop var_AC
  loc_645CB7: ImpAdCallFPR4 push Val()
  loc_645CBC: CStrR8
  loc_645CBE: FStStr var_88
  loc_645CC1: FFreeStr var_A0 = "": var_A4 = "": var_A8 = ""
  loc_645CCC: FLdPr Me
  loc_645CCF: MemLdRfVar from_stack_1.global_76
  loc_645CD2: CBoolVarNull
  loc_645CD4: BranchF loc_645D22
  loc_645CD7: LitI4 1
  loc_645CDC: LitI4 1
  loc_645CE1: LitVarStr var_CC, "####0.00"
  loc_645CE6: FStVarCopyObj var_DC
  loc_645CE9: FLdRfVar var_DC
  loc_645CEC: FLdRfVar var_88
  loc_645CEF: CVarRef
  loc_645CF4: FLdRfVar var_EC
  loc_645CF7: ImpAdCallFPR4  = Format(, )
  loc_645CFC: FLdRfVar var_EC
  loc_645CFF: CStrVarVal var_A0
  loc_645D03: FLdPrThis
  loc_645D04: VCallAd Control_ID_Calculadora
  loc_645D07: FStAdFunc var_9C
  loc_645D0A: FLdPr var_9C
  loc_645D0D: Me.Text = from_stack_1
  loc_645D12: FFree1Str var_A0
  loc_645D15: FFree1Ad var_9C
  loc_645D18: FFreeVar var_DC = ""
  loc_645D1F: Branch loc_645DBE
  loc_645D22: FLdPr Me
  loc_645D25: MemLdI2 global_92
  loc_645D28: BranchF loc_645D76
  loc_645D2B: LitI4 1
  loc_645D30: LitI4 1
  loc_645D35: LitVarStr var_CC, "###0"
  loc_645D3A: FStVarCopyObj var_DC
  loc_645D3D: FLdRfVar var_DC
  loc_645D40: FLdRfVar var_88
  loc_645D43: CVarRef
  loc_645D48: FLdRfVar var_EC
  loc_645D4B: ImpAdCallFPR4  = Format(, )
  loc_645D50: FLdRfVar var_EC
  loc_645D53: CStrVarVal var_A0
  loc_645D57: FLdPrThis
  loc_645D58: VCallAd Control_ID_txtMarcaInicial
  loc_645D5B: FStAdFunc var_9C
  loc_645D5E: FLdPr var_9C
  loc_645D61: Me.Text = from_stack_1
  loc_645D66: FFree1Str var_A0
  loc_645D69: FFree1Ad var_9C
  loc_645D6C: FFreeVar var_DC = ""
  loc_645D73: Branch loc_645DBE
  loc_645D76: LitI4 1
  loc_645D7B: LitI4 1
  loc_645D80: LitVarStr var_CC, "###0"
  loc_645D85: FStVarCopyObj var_DC
  loc_645D88: FLdRfVar var_DC
  loc_645D8B: FLdRfVar var_88
  loc_645D8E: CVarRef
  loc_645D93: FLdRfVar var_EC
  loc_645D96: ImpAdCallFPR4  = Format(, )
  loc_645D9B: FLdRfVar var_EC
  loc_645D9E: CStrVarVal var_A0
  loc_645DA2: FLdPrThis
  loc_645DA3: VCallAd Control_ID_txtMarcaFinal
  loc_645DA6: FStAdFunc var_9C
  loc_645DA9: FLdPr var_9C
  loc_645DAC: Me.Text = from_stack_1
  loc_645DB1: FFree1Str var_A0
  loc_645DB4: FFree1Ad var_9C
  loc_645DB7: FFreeVar var_DC = ""
  loc_645DBE: ExitProcHresult
End Function

Private Sub Calculadora_GotFocus() '5DC750
  'Data Table: 438E8C
  loc_5DC708: FLdPr Me
  loc_5DC70B: MemLdRfVar from_stack_1.global_76
  loc_5DC70E: CBoolVarNull
  loc_5DC710: BranchF loc_5DC71E
  loc_5DC713: LitI2_Byte 0
  loc_5DC715: FLdPr Me
  loc_5DC718: MemStI2 global_72
  loc_5DC71B: Branch loc_5DC74E
  loc_5DC71E: FLdPr Me
  loc_5DC721: MemLdI2 global_92
  loc_5DC724: BranchF loc_5DC73C
  loc_5DC727: FLdPrThis
  loc_5DC728: VCallAd Control_ID_txtMarcaInicial
  loc_5DC72B: FStAdFunc var_88
  loc_5DC72E: FLdPr var_88
  loc_5DC731: Me.SetFocus
  loc_5DC736: FFree1Ad var_88
  loc_5DC739: Branch loc_5DC74E
  loc_5DC73C: FLdPrThis
  loc_5DC73D: VCallAd Control_ID_txtMarcaFinal
  loc_5DC740: FStAdFunc var_88
  loc_5DC743: FLdPr var_88
  loc_5DC746: Me.SetFocus
  loc_5DC74B: FFree1Ad var_88
  loc_5DC74E: ExitProcHresult
End Sub

Private Sub txtMarcaInicial_Change() '63563C
  'Data Table: 438E8C
  loc_635454: FLdRfVar var_A0
  loc_635457: FLdPrThis
  loc_635458: VCallAd Control_ID_txtMarcaInicial
  loc_63545B: FStAdFunc var_9C
  loc_63545E: FLdPr var_9C
  loc_635461:  = Me.Text
  loc_635466: ILdRf var_A0
  loc_635469: ImpAdCallFPR4 push Val()
  loc_63546E: CR8R8
  loc_63546F: LitI2 6000
  loc_635472: CR8I2
  loc_635473: GtR4
  loc_635474: FFree1Str var_A0
  loc_635477: FFree1Ad var_9C
  loc_63547A: BranchF loc_6354C7
  loc_63547D: LitVar_Missing var_100
  loc_635480: LitVar_Missing var_E0
  loc_635483: FLdPr Me
  loc_635486: MemLdRfVar from_stack_1.strIngresoMil
  loc_635489: CVarRef
  loc_63548E: LitI4 &H40
  loc_635493: FLdPr Me
  loc_635496: MemLdRfVar from_stack_1.strMarcaFinal
  loc_635499: CVarRef
  loc_63549E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6354A3: FFreeVar var_E0 = ""
  loc_6354AA: LitI2_Byte 0
  loc_6354AC: CStrUI1
  loc_6354AE: FStStrNoPop var_A0
  loc_6354B1: FLdPrThis
  loc_6354B2: VCallAd Control_ID_txtMarcaInicial
  loc_6354B5: FStAdFunc var_9C
  loc_6354B8: FLdPr var_9C
  loc_6354BB: Me.Text = from_stack_1
  loc_6354C0: FFree1Str var_A0
  loc_6354C3: FFree1Ad var_9C
  loc_6354C6: ExitProcHresult
  loc_6354C7: FLdRfVar var_A0
  loc_6354CA: FLdPrThis
  loc_6354CB: VCallAd Control_ID_txtMarcaInicial
  loc_6354CE: FStAdFunc var_9C
  loc_6354D1: FLdPr var_9C
  loc_6354D4:  = Me.Text
  loc_6354D9: ILdRf var_A0
  loc_6354DC: ImpAdCallFPR4 push Val()
  loc_6354E1: CI4R8
  loc_6354E2: FLdPr Me
  loc_6354E5: MemLdRfVar from_stack_1.global_96
  loc_6354E8: Ary1LdFPR4
  loc_6354E9: CVarR4
  loc_6354ED: FStVar var_94
  loc_6354F1: FFree1Str var_A0
  loc_6354F4: FFree1Ad var_9C
  loc_6354F7: FLdRfVar var_A0
  loc_6354FA: FLdPrThis
  loc_6354FB: VCallAd Control_ID_txtMarcaFinal
  loc_6354FE: FStAdFunc var_9C
  loc_635501: FLdPr var_9C
  loc_635504:  = Me.Text
  loc_635509: ILdRf var_A0
  loc_63550C: ImpAdCallFPR4 push Val()
  loc_635511: CI4R8
  loc_635512: FLdPr Me
  loc_635515: MemLdRfVar from_stack_1.global_96
  loc_635518: Ary1LdFPR4
  loc_635519: FStFPR4 var_98
  loc_63551C: FFree1Str var_A0
  loc_63551F: FFree1Ad var_9C
  loc_635522: FLdRfVar var_94
  loc_635525: FLdFPR4 var_98
  loc_635528: CVarR4
  loc_63552C: SubVar var_100
  loc_635530: FStVar var_120
  loc_635534: FLdRfVar var_120
  loc_635537: FLdFPR4 var_98
  loc_63553A: CVarR4
  loc_63553E: FLdRfVar var_94
  loc_635541: SubVar var_E0
  loc_635545: FStVar var_110
  loc_635549: FLdRfVar var_110
  loc_63554C: FLdPr Me
  loc_63554F: MemLdRfVar from_stack_1.Alta
  loc_635552: CVarRef
  loc_635557: FLdRfVar var_130
  loc_63555A: ImpAdCallFPR4  = IIf(, , )
  loc_63555F: FLdRfVar var_130
  loc_635562: LitVarI2 var_F0, 0
  loc_635567: HardType
  loc_635568: GtVarBool
  loc_63556A: FFreeVar var_110 = "": var_120 = ""
  loc_635573: BranchF loc_6355F6
  loc_635576: FLdRfVar var_94
  loc_635579: FLdFPR4 var_98
  loc_63557C: CVarR4
  loc_635580: SubVar var_100
  loc_635584: FStVar var_120
  loc_635588: FLdRfVar var_120
  loc_63558B: FLdFPR4 var_98
  loc_63558E: CVarR4
  loc_635592: FLdRfVar var_94
  loc_635595: SubVar var_E0
  loc_635599: FStVar var_110
  loc_63559D: FLdRfVar var_110
  loc_6355A0: FLdPr Me
  loc_6355A3: MemLdRfVar from_stack_1.Alta
  loc_6355A6: CVarRef
  loc_6355AB: FLdRfVar var_130
  loc_6355AE: ImpAdCallFPR4  = IIf(, , )
  loc_6355B3: LitI4 1
  loc_6355B8: LitI4 1
  loc_6355BD: LitVarStr var_F0, "#####0.00"
  loc_6355C2: FStVarCopyObj var_140
  loc_6355C5: FLdRfVar var_140
  loc_6355C8: FLdRfVar var_130
  loc_6355CB: ImpAdCallI2 Format$(, )
  loc_6355D0: FStStrNoPop var_A0
  loc_6355D3: FLdPrThis
  loc_6355D4: VCallAd Control_ID_Calculadora
  loc_6355D7: FStAdFunc var_9C
  loc_6355DA: FLdPr var_9C
  loc_6355DD: Me.Text = from_stack_1
  loc_6355E2: FFree1Str var_A0
  loc_6355E5: FFree1Ad var_9C
  loc_6355E8: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_6355F3: Branch loc_63563A
  loc_6355F6: LitI4 1
  loc_6355FB: LitI4 1
  loc_635600: LitVarStr var_C0, "#####0.00"
  loc_635605: FStVarCopyObj var_100
  loc_635608: FLdRfVar var_100
  loc_63560B: LitVarI2 var_E0, 0
  loc_635610: ImpAdCallI2 Format$(, )
  loc_635615: FStStrNoPop var_A0
  loc_635618: FLdPrThis
  loc_635619: VCallAd Control_ID_Calculadora
  loc_63561C: FStAdFunc var_9C
  loc_63561F: FLdPr var_9C
  loc_635622: Me.Text = from_stack_1
  loc_635627: FFree1Str var_A0
  loc_63562A: FFree1Ad var_9C
  loc_63562D: FFreeVar var_E0 = ""
  loc_635634: LitI2_Byte &HFF
  loc_635636: CR8I2
  loc_635637: ImpAdStFPR4 MemVar_74C370
  loc_63563A: ExitProcHresult
End Sub

Private Sub txtMarcaInicial_GotFocus() '5CF30C
  'Data Table: 438E8C
  loc_5CF2F8: LitI2_Byte 0
  loc_5CF2FA: FLdPr Me
  loc_5CF2FD: MemStI2 global_72
  loc_5CF300: LitI2_Byte &HFF
  loc_5CF302: FLdPr Me
  loc_5CF305: MemStI2 global_92
  loc_5CF308: ExitProcHresult
  loc_5CF309: ExitProcR8
  loc_5CF30A: ExitProcR8
End Sub

Private Sub OK_UnknownEvent_8 '6296C8
  'Data Table: 438E8C
  loc_629548: FLdRfVar var_8C
  loc_62954B: FLdPrThis
  loc_62954C: VCallAd Control_ID_Calculadora
  loc_62954F: FStAdFunc var_88
  loc_629552: FLdPr var_88
  loc_629555:  = Me.Text
  loc_62955A: ILdRf var_8C
  loc_62955D: ImpAdCallFPR4 push Val()
  loc_629562: ImpAdStFPR4 MemVar_74C370
  loc_629565: FFree1Str var_8C
  loc_629568: FFree1Ad var_88
  loc_62956B: FLdPr Me
  loc_62956E: MemLdI2 Alta
  loc_629571: BranchF loc_629633
  loc_629574: FLdPr Me
  loc_629577: MemLdI2 tank
  loc_62957A: CI4UI1
  loc_62957B: ImpAdLdRf MemVar_74C2EC
  loc_62957E: Ary1LdCy
  loc_62957F: FLdRfVar var_8C
  loc_629582: FLdRfVar var_90
  loc_629585: FLdPr Me
  loc_629588: MemLdI2 tank
  loc_62958B: LitI2_Byte 1
  loc_62958D: SubI2
  loc_62958E: ImpAdLdRf MemVar_74DC08
  loc_629591: NewIfNullPr PanelTanques
  loc_629594: VCallAd Control_ID_Combustible
  loc_629597: FStAdFunc var_88
  loc_62959A: FLdPr var_88
  loc_62959D: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6295A2: FLdPr var_90
  loc_6295A5:  = Me.Caption
  loc_6295AA: ILdRf var_8C
  loc_6295AD: ImpAdCallFPR4 push Val()
  loc_6295B2: CCyR4
  loc_6295B3: SubCy
  loc_6295B4: FLdRfVar var_9C
  loc_6295B7: FLdRfVar var_98
  loc_6295BA: FLdPr Me
  loc_6295BD: MemLdI2 tank
  loc_6295C0: LitI2_Byte 1
  loc_6295C2: SubI2
  loc_6295C3: ImpAdLdRf MemVar_74DC08
  loc_6295C6: NewIfNullPr PanelTanques
  loc_6295C9: VCallAd Control_ID_Agua
  loc_6295CC: FStAdFunc var_94
  loc_6295CF: FLdPr var_94
  loc_6295D2: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_6295D7: FLdPr var_98
  loc_6295DA:  = Me.Caption
  loc_6295DF: ILdRf var_9C
  loc_6295E2: ImpAdCallFPR4 push Val()
  loc_6295E7: CCyR4
  loc_6295E8: SubCy
  loc_6295E9: ImpAdLdFPR4 MemVar_74C370
  loc_6295EC: LtCyR8
  loc_6295ED: FFreeStr var_8C = ""
  loc_6295F4: FFreeAd var_88 = "": var_90 = "": var_94 = ""
  loc_6295FF: BranchF loc_629630
  loc_629602: LitVar_Missing var_FC
  loc_629605: LitVar_Missing var_DC
  loc_629608: FLdPr Me
  loc_62960B: MemLdRfVar from_stack_1.strFuelling
  loc_62960E: CVarRef
  loc_629613: LitI4 &H40
  loc_629618: FLdPr Me
  loc_62961B: MemLdRfVar from_stack_1.strTooMuchFuel
  loc_62961E: CVarRef
  loc_629623: ImpAdCallFPR4 MsgBox(, , , , )
  loc_629628: FFreeVar var_DC = ""
  loc_62962F: ExitProcHresult
  loc_629630: Branch loc_6296AC
  loc_629633: FLdRfVar var_8C
  loc_629636: FLdRfVar var_90
  loc_629639: FLdPr Me
  loc_62963C: MemLdI2 tank
  loc_62963F: LitI2_Byte 1
  loc_629641: SubI2
  loc_629642: ImpAdLdRf MemVar_74DC08
  loc_629645: NewIfNullPr PanelTanques
  loc_629648: VCallAd Control_ID_Combustible
  loc_62964B: FStAdFunc var_88
  loc_62964E: FLdPr var_88
  loc_629651: Set from_stack_2 = PanelTanques(from_stack_1)
  loc_629656: FLdPr var_90
  loc_629659:  = Me.Caption
  loc_62965E: ILdRf var_8C
  loc_629661: ImpAdCallFPR4 push Val()
  loc_629666: FStFPR8 var_104
  loc_629669: ImpAdLdFPR4 MemVar_74C370
  loc_62966C: FLdFPR8 var_104
  loc_62966F: CR4R4
  loc_629670: GtR4
  loc_629671: FFree1Str var_8C
  loc_629674: FFreeAd var_88 = ""
  loc_62967B: BranchF loc_6296AC
  loc_62967E: LitVar_Missing var_FC
  loc_629681: LitVar_Missing var_DC
  loc_629684: FLdPr Me
  loc_629687: MemLdRfVar from_stack_1.strFuelling
  loc_62968A: CVarRef
  loc_62968F: LitI4 &H40
  loc_629694: FLdPr Me
  loc_629697: MemLdRfVar from_stack_1.strTooMuchFuel
  loc_62969A: CVarRef
  loc_62969F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6296A4: FFreeVar var_DC = ""
  loc_6296AB: ExitProcHresult
  loc_6296AC: LitI2_Byte 0
  loc_6296AE: ImpAdStI2 MemVar_74C37E
  loc_6296B1: ILdRf Me
  loc_6296B4: FStAdNoPop
  loc_6296B8: ImpAdLdRf MemVar_7520D4
  loc_6296BB: NewIfNullPr Global
  loc_6296BE: Global.Unload from_stack_1
  loc_6296C3: FFree1Ad var_88
  loc_6296C6: ExitProcHresult
End Sub

Private Sub txtMarcaFinal_Change() '6351C4
  'Data Table: 438E8C
  loc_634FDC: FLdRfVar var_A0
  loc_634FDF: FLdPrThis
  loc_634FE0: VCallAd Control_ID_txtMarcaFinal
  loc_634FE3: FStAdFunc var_9C
  loc_634FE6: FLdPr var_9C
  loc_634FE9:  = Me.Text
  loc_634FEE: ILdRf var_A0
  loc_634FF1: ImpAdCallFPR4 push Val()
  loc_634FF6: CR8R8
  loc_634FF7: LitI2 6000
  loc_634FFA: CR8I2
  loc_634FFB: GtR4
  loc_634FFC: FFree1Str var_A0
  loc_634FFF: FFree1Ad var_9C
  loc_635002: BranchF loc_63504F
  loc_635005: LitVar_Missing var_100
  loc_635008: LitVar_Missing var_E0
  loc_63500B: FLdPr Me
  loc_63500E: MemLdRfVar from_stack_1.strIngresoMil
  loc_635011: CVarRef
  loc_635016: LitI4 &H40
  loc_63501B: FLdPr Me
  loc_63501E: MemLdRfVar from_stack_1.strMarcaFinal
  loc_635021: CVarRef
  loc_635026: ImpAdCallFPR4 MsgBox(, , , , )
  loc_63502B: FFreeVar var_E0 = ""
  loc_635032: LitI2_Byte 0
  loc_635034: CStrUI1
  loc_635036: FStStrNoPop var_A0
  loc_635039: FLdPrThis
  loc_63503A: VCallAd Control_ID_txtMarcaFinal
  loc_63503D: FStAdFunc var_9C
  loc_635040: FLdPr var_9C
  loc_635043: Me.Text = from_stack_1
  loc_635048: FFree1Str var_A0
  loc_63504B: FFree1Ad var_9C
  loc_63504E: ExitProcHresult
  loc_63504F: FLdRfVar var_A0
  loc_635052: FLdPrThis
  loc_635053: VCallAd Control_ID_txtMarcaInicial
  loc_635056: FStAdFunc var_9C
  loc_635059: FLdPr var_9C
  loc_63505C:  = Me.Text
  loc_635061: ILdRf var_A0
  loc_635064: ImpAdCallFPR4 push Val()
  loc_635069: CI4R8
  loc_63506A: FLdPr Me
  loc_63506D: MemLdRfVar from_stack_1.global_96
  loc_635070: Ary1LdFPR4
  loc_635071: CVarR4
  loc_635075: FStVar var_94
  loc_635079: FFree1Str var_A0
  loc_63507C: FFree1Ad var_9C
  loc_63507F: FLdRfVar var_A0
  loc_635082: FLdPrThis
  loc_635083: VCallAd Control_ID_txtMarcaFinal
  loc_635086: FStAdFunc var_9C
  loc_635089: FLdPr var_9C
  loc_63508C:  = Me.Text
  loc_635091: ILdRf var_A0
  loc_635094: ImpAdCallFPR4 push Val()
  loc_635099: CI4R8
  loc_63509A: FLdPr Me
  loc_63509D: MemLdRfVar from_stack_1.global_96
  loc_6350A0: Ary1LdFPR4
  loc_6350A1: FStFPR4 var_98
  loc_6350A4: FFree1Str var_A0
  loc_6350A7: FFree1Ad var_9C
  loc_6350AA: FLdRfVar var_94
  loc_6350AD: FLdFPR4 var_98
  loc_6350B0: CVarR4
  loc_6350B4: SubVar var_100
  loc_6350B8: FStVar var_120
  loc_6350BC: FLdRfVar var_120
  loc_6350BF: FLdFPR4 var_98
  loc_6350C2: CVarR4
  loc_6350C6: FLdRfVar var_94
  loc_6350C9: SubVar var_E0
  loc_6350CD: FStVar var_110
  loc_6350D1: FLdRfVar var_110
  loc_6350D4: FLdPr Me
  loc_6350D7: MemLdRfVar from_stack_1.Alta
  loc_6350DA: CVarRef
  loc_6350DF: FLdRfVar var_130
  loc_6350E2: ImpAdCallFPR4  = IIf(, , )
  loc_6350E7: FLdRfVar var_130
  loc_6350EA: LitVarI2 var_F0, 0
  loc_6350EF: HardType
  loc_6350F0: GtVarBool
  loc_6350F2: FFreeVar var_110 = "": var_120 = ""
  loc_6350FB: BranchF loc_63517E
  loc_6350FE: FLdRfVar var_94
  loc_635101: FLdFPR4 var_98
  loc_635104: CVarR4
  loc_635108: SubVar var_100
  loc_63510C: FStVar var_120
  loc_635110: FLdRfVar var_120
  loc_635113: FLdFPR4 var_98
  loc_635116: CVarR4
  loc_63511A: FLdRfVar var_94
  loc_63511D: SubVar var_E0
  loc_635121: FStVar var_110
  loc_635125: FLdRfVar var_110
  loc_635128: FLdPr Me
  loc_63512B: MemLdRfVar from_stack_1.Alta
  loc_63512E: CVarRef
  loc_635133: FLdRfVar var_130
  loc_635136: ImpAdCallFPR4  = IIf(, , )
  loc_63513B: LitI4 1
  loc_635140: LitI4 1
  loc_635145: LitVarStr var_F0, "#####0.00"
  loc_63514A: FStVarCopyObj var_140
  loc_63514D: FLdRfVar var_140
  loc_635150: FLdRfVar var_130
  loc_635153: ImpAdCallI2 Format$(, )
  loc_635158: FStStrNoPop var_A0
  loc_63515B: FLdPrThis
  loc_63515C: VCallAd Control_ID_Calculadora
  loc_63515F: FStAdFunc var_9C
  loc_635162: FLdPr var_9C
  loc_635165: Me.Text = from_stack_1
  loc_63516A: FFree1Str var_A0
  loc_63516D: FFree1Ad var_9C
  loc_635170: FFreeVar var_110 = "": var_120 = "": var_130 = ""
  loc_63517B: Branch loc_6351C2
  loc_63517E: LitI4 1
  loc_635183: LitI4 1
  loc_635188: LitVarStr var_C0, "#####0.00"
  loc_63518D: FStVarCopyObj var_100
  loc_635190: FLdRfVar var_100
  loc_635193: LitVarI2 var_E0, 0
  loc_635198: ImpAdCallI2 Format$(, )
  loc_63519D: FStStrNoPop var_A0
  loc_6351A0: FLdPrThis
  loc_6351A1: VCallAd Control_ID_Calculadora
  loc_6351A4: FStAdFunc var_9C
  loc_6351A7: FLdPr var_9C
  loc_6351AA: Me.Text = from_stack_1
  loc_6351AF: FFree1Str var_A0
  loc_6351B2: FFree1Ad var_9C
  loc_6351B5: FFreeVar var_E0 = ""
  loc_6351BC: LitI2_Byte &HFF
  loc_6351BE: CR8I2
  loc_6351BF: ImpAdStFPR4 MemVar_74C370
  loc_6351C2: ExitProcHresult
End Sub

Private Sub txtMarcaFinal_GotFocus() '5CF284
  'Data Table: 438E8C
  loc_5CF270: LitI2_Byte 0
  loc_5CF272: FLdPr Me
  loc_5CF275: MemStI2 global_72
  loc_5CF278: LitI2_Byte 0
  loc_5CF27A: FLdPr Me
  loc_5CF27D: MemStI2 global_92
  loc_5CF280: ExitProcHresult
  loc_5CF281: SubI4
  loc_5CF282: Ary1LdI2
End Sub

Private Sub EstadoNumLock_UnknownEvent_8 '5E11DC
  'Data Table: 438E8C
  loc_5E1184: ImpAdLdI4 MemVar_74A154
  loc_5E1187: LitStr "6.0"
  loc_5E118A: NeStr
  loc_5E118C: ImpAdLdI4 MemVar_74A154
  loc_5E118F: LitStr "6.1"
  loc_5E1192: NeStr
  loc_5E1194: AndI4
  loc_5E1195: BranchF loc_5E11D8
  loc_5E1198: FLdPrThis
  loc_5E1199: VCallAd Control_ID_EstadoNumLock
  loc_5E119C: FStAdFunc var_88
  loc_5E119F: FLdPr var_88
  loc_5E11A2: LateIdLdVar var_98 DispID_6 0
  loc_5E11A9: CBoolVar
  loc_5E11AB: FFree1Ad var_88
  loc_5E11AE: FFree1Var var_98 = ""
  loc_5E11B1: BranchF loc_5E11D8
  loc_5E11B4: LitI2_Byte &HFF
  loc_5E11B6: PopTmpLdAd2 var_9A
  loc_5E11B9: LitStr "{NUMLOCK}"
  loc_5E11BC: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5E11C1: LitVar_FALSE
  loc_5E11C5: PopAdLdVar
  loc_5E11C6: FLdPrThis
  loc_5E11C7: VCallAd Control_ID_EstadoNumLock
  loc_5E11CA: FStAdFunc var_88
  loc_5E11CD: FLdPr var_88
  loc_5E11D0: LateIdSt
  loc_5E11D5: FFree1Ad var_88
  loc_5E11D8: ExitProcHresult
  loc_5E11D9: LdFixedStr
End Sub

Private Sub Punto_UnknownEvent_8 '5CF240
  'Data Table: 438E8C
  loc_5CF22C: FLdPr Me
  loc_5CF22F: MemLdRfVar from_stack_1.global_76
  loc_5CF232: CBoolVarNull
  loc_5CF234: BranchF loc_5CF23F
  loc_5CF237: LitI2_Byte &HFF
  loc_5CF239: FLdPr Me
  loc_5CF23C: MemStI2 global_72
  loc_5CF23F: ExitProcHresult
End Sub

Private Sub Borrar_UnknownEvent_8 '60D09C
  'Data Table: 438E8C
  loc_60CFA4: FLdPr Me
  loc_60CFA7: MemLdRfVar from_stack_1.global_76
  loc_60CFAA: CBoolVarNull
  loc_60CFAC: BranchF loc_60CFF9
  loc_60CFAF: LitI4 1
  loc_60CFB4: LitI4 1
  loc_60CFB9: LitVarStr var_B4, "####0.00"
  loc_60CFBE: FStVarCopyObj var_C4
  loc_60CFC1: FLdRfVar var_C4
  loc_60CFC4: LitVarI2 var_A4, 0
  loc_60CFC9: FLdRfVar var_D4
  loc_60CFCC: ImpAdCallFPR4  = Format(, )
  loc_60CFD1: FLdRfVar var_D4
  loc_60CFD4: CStrVarVal var_D8
  loc_60CFD8: FLdPrThis
  loc_60CFD9: VCallAd Control_ID_Calculadora
  loc_60CFDC: FStAdFunc var_DC
  loc_60CFDF: FLdPr var_DC
  loc_60CFE2: Me.Text = from_stack_1
  loc_60CFE7: FFree1Str var_D8
  loc_60CFEA: FFree1Ad var_DC
  loc_60CFED: FFreeVar var_A4 = "": var_C4 = ""
  loc_60CFF6: Branch loc_60D093
  loc_60CFF9: FLdPr Me
  loc_60CFFC: MemLdI2 global_92
  loc_60CFFF: BranchF loc_60D04C
  loc_60D002: LitI4 1
  loc_60D007: LitI4 1
  loc_60D00C: LitVarStr var_B4, "###0"
  loc_60D011: FStVarCopyObj var_C4
  loc_60D014: FLdRfVar var_C4
  loc_60D017: LitVarI2 var_A4, 0
  loc_60D01C: FLdRfVar var_D4
  loc_60D01F: ImpAdCallFPR4  = Format(, )
  loc_60D024: FLdRfVar var_D4
  loc_60D027: CStrVarVal var_D8
  loc_60D02B: FLdPrThis
  loc_60D02C: VCallAd Control_ID_txtMarcaInicial
  loc_60D02F: FStAdFunc var_DC
  loc_60D032: FLdPr var_DC
  loc_60D035: Me.Text = from_stack_1
  loc_60D03A: FFree1Str var_D8
  loc_60D03D: FFree1Ad var_DC
  loc_60D040: FFreeVar var_A4 = "": var_C4 = ""
  loc_60D049: Branch loc_60D093
  loc_60D04C: LitI4 1
  loc_60D051: LitI4 1
  loc_60D056: LitVarStr var_B4, "###0"
  loc_60D05B: FStVarCopyObj var_C4
  loc_60D05E: FLdRfVar var_C4
  loc_60D061: LitVarI2 var_A4, 0
  loc_60D066: FLdRfVar var_D4
  loc_60D069: ImpAdCallFPR4  = Format(, )
  loc_60D06E: FLdRfVar var_D4
  loc_60D071: CStrVarVal var_D8
  loc_60D075: FLdPrThis
  loc_60D076: VCallAd Control_ID_txtMarcaFinal
  loc_60D079: FStAdFunc var_DC
  loc_60D07C: FLdPr var_DC
  loc_60D07F: Me.Text = from_stack_1
  loc_60D084: FFree1Str var_D8
  loc_60D087: FFree1Ad var_DC
  loc_60D08A: FFreeVar var_A4 = "": var_C4 = ""
  loc_60D093: LitI2_Byte 0
  loc_60D095: FLdPr Me
  loc_60D098: MemStI2 global_72
  loc_60D09B: ExitProcHresult
End Sub

Private Sub Form_Load() '5D1424
  'Data Table: 438E8C
  loc_5D140C: ILdRf Me
  loc_5D140F: CastAd
  loc_5D1412: FStAdFunc var_88
  loc_5D1415: FLdRfVar var_88
  loc_5D1418: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5D141D: FFree1Ad var_88
  loc_5D1420: ExitProcHresult
End Sub

Private Sub Form_Activate() '69AADC
  'Data Table: 438E8C
  loc_69A480: FLdRfVar var_1E8
  loc_69A483: LitVar_Missing var_1E4
  loc_69A486: LitVar_Missing var_1C4
  loc_69A489: LitVar_Missing var_1A4
  loc_69A48C: LitVar_Missing var_184
  loc_69A48F: LitVar_Missing var_164
  loc_69A492: LitVar_Missing var_144
  loc_69A495: LitVar_Missing var_124
  loc_69A498: LitVar_Missing var_104
  loc_69A49B: LitVar_Missing var_E4
  loc_69A49E: LitVar_Missing var_C4
  loc_69A4A1: LitStr "Está cargando combustible demás. Verifíque por favor."
  loc_69A4A4: FStStrCopy var_A4
  loc_69A4A7: FLdRfVar var_A4
  loc_69A4AA: LitI4 1
  loc_69A4AF: PopTmpLdAdStr var_A0
  loc_69A4B2: LitI2_Byte &H10
  loc_69A4B4: PopTmpLdAd2 var_9C
  loc_69A4B7: ImpAdLdRf MemVar_74C7D0
  loc_69A4BA: NewIfNullPr clsMsg
  loc_69A4BD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A4C2: ILdRf var_1E8
  loc_69A4C5: FLdPr Me
  loc_69A4C8: MemStStrCopy
  loc_69A4CC: FFreeStr var_A4 = ""
  loc_69A4D3: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A4EA: FLdRfVar var_1E8
  loc_69A4ED: LitVar_Missing var_1E4
  loc_69A4F0: LitVar_Missing var_1C4
  loc_69A4F3: LitVar_Missing var_1A4
  loc_69A4F6: LitVar_Missing var_184
  loc_69A4F9: LitVar_Missing var_164
  loc_69A4FC: LitVar_Missing var_144
  loc_69A4FF: LitVar_Missing var_124
  loc_69A502: LitVar_Missing var_104
  loc_69A505: LitVar_Missing var_E4
  loc_69A508: LitVar_Missing var_C4
  loc_69A50B: LitStr "Carga de combustible"
  loc_69A50E: FStStrCopy var_A4
  loc_69A511: FLdRfVar var_A4
  loc_69A514: LitI4 2
  loc_69A519: PopTmpLdAdStr var_A0
  loc_69A51C: LitI2_Byte &H10
  loc_69A51E: PopTmpLdAd2 var_9C
  loc_69A521: ImpAdLdRf MemVar_74C7D0
  loc_69A524: NewIfNullPr clsMsg
  loc_69A527: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A52C: ILdRf var_1E8
  loc_69A52F: FLdPr Me
  loc_69A532: MemStStrCopy
  loc_69A536: FFreeStr var_A4 = ""
  loc_69A53D: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A554: FLdRfVar var_1E8
  loc_69A557: LitVar_Missing var_1E4
  loc_69A55A: LitVar_Missing var_1C4
  loc_69A55D: LitVar_Missing var_1A4
  loc_69A560: LitVar_Missing var_184
  loc_69A563: LitVar_Missing var_164
  loc_69A566: LitVar_Missing var_144
  loc_69A569: LitVar_Missing var_124
  loc_69A56C: LitVar_Missing var_104
  loc_69A56F: LitVar_Missing var_E4
  loc_69A572: LitVar_Missing var_C4
  loc_69A575: LitStr "Debe ingresar una cantidad de milimetros no mayor a 6000 milimetros. Verifique por favor."
  loc_69A578: FStStrCopy var_A4
  loc_69A57B: FLdRfVar var_A4
  loc_69A57E: LitI4 3
  loc_69A583: PopTmpLdAdStr var_A0
  loc_69A586: LitI2_Byte &H10
  loc_69A588: PopTmpLdAd2 var_9C
  loc_69A58B: ImpAdLdRf MemVar_74C7D0
  loc_69A58E: NewIfNullPr clsMsg
  loc_69A591: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A596: ILdRf var_1E8
  loc_69A599: FLdPr Me
  loc_69A59C: MemStStrCopy
  loc_69A5A0: FFreeStr var_A4 = ""
  loc_69A5A7: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A5BE: FLdRfVar var_1E8
  loc_69A5C1: LitVar_Missing var_1E4
  loc_69A5C4: LitVar_Missing var_1C4
  loc_69A5C7: LitVar_Missing var_1A4
  loc_69A5CA: LitVar_Missing var_184
  loc_69A5CD: LitVar_Missing var_164
  loc_69A5D0: LitVar_Missing var_144
  loc_69A5D3: LitVar_Missing var_124
  loc_69A5D6: LitVar_Missing var_104
  loc_69A5D9: LitVar_Missing var_E4
  loc_69A5DC: LitVar_Missing var_C4
  loc_69A5DF: LitStr "Ingreso milimetros"
  loc_69A5E2: FStStrCopy var_A4
  loc_69A5E5: FLdRfVar var_A4
  loc_69A5E8: LitI4 4
  loc_69A5ED: PopTmpLdAdStr var_A0
  loc_69A5F0: LitI2_Byte &H10
  loc_69A5F2: PopTmpLdAd2 var_9C
  loc_69A5F5: ImpAdLdRf MemVar_74C7D0
  loc_69A5F8: NewIfNullPr clsMsg
  loc_69A5FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A600: ILdRf var_1E8
  loc_69A603: FLdPr Me
  loc_69A606: MemStStrCopy
  loc_69A60A: FFreeStr var_A4 = ""
  loc_69A611: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A628: FLdRfVar var_1E8
  loc_69A62B: LitVar_Missing var_1E4
  loc_69A62E: LitVar_Missing var_1C4
  loc_69A631: LitVar_Missing var_1A4
  loc_69A634: LitVar_Missing var_184
  loc_69A637: LitVar_Missing var_164
  loc_69A63A: LitVar_Missing var_144
  loc_69A63D: LitVar_Missing var_124
  loc_69A640: LitVar_Missing var_104
  loc_69A643: LitVar_Missing var_E4
  loc_69A646: LitVar_Missing var_C4
  loc_69A649: LitStr "Medición Inicial"
  loc_69A64C: FStStrCopy var_A4
  loc_69A64F: FLdRfVar var_A4
  loc_69A652: LitI4 5
  loc_69A657: PopTmpLdAdStr var_A0
  loc_69A65A: LitI2_Byte &H10
  loc_69A65C: PopTmpLdAd2 var_9C
  loc_69A65F: ImpAdLdRf MemVar_74C7D0
  loc_69A662: NewIfNullPr clsMsg
  loc_69A665: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A66A: ILdRf var_1E8
  loc_69A66D: FLdPrThis
  loc_69A66E: VCallAd Control_ID_lblMarcaInicial
  loc_69A671: FStAdFunc var_1EC
  loc_69A674: FLdPr var_1EC
  loc_69A677: Me.Caption = from_stack_1
  loc_69A67C: FFreeStr var_A4 = ""
  loc_69A683: FFree1Ad var_1EC
  loc_69A686: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A69D: FLdRfVar var_1E8
  loc_69A6A0: LitVar_Missing var_1E4
  loc_69A6A3: LitVar_Missing var_1C4
  loc_69A6A6: LitVar_Missing var_1A4
  loc_69A6A9: LitVar_Missing var_184
  loc_69A6AC: LitVar_Missing var_164
  loc_69A6AF: LitVar_Missing var_144
  loc_69A6B2: LitVar_Missing var_124
  loc_69A6B5: LitVar_Missing var_104
  loc_69A6B8: LitVar_Missing var_E4
  loc_69A6BB: LitVar_Missing var_C4
  loc_69A6BE: LitStr "Medición Final"
  loc_69A6C1: FStStrCopy var_A4
  loc_69A6C4: FLdRfVar var_A4
  loc_69A6C7: LitI4 6
  loc_69A6CC: PopTmpLdAdStr var_A0
  loc_69A6CF: LitI2_Byte &H10
  loc_69A6D1: PopTmpLdAd2 var_9C
  loc_69A6D4: ImpAdLdRf MemVar_74C7D0
  loc_69A6D7: NewIfNullPr clsMsg
  loc_69A6DA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A6DF: ILdRf var_1E8
  loc_69A6E2: FLdPrThis
  loc_69A6E3: VCallAd Control_ID_lblMarcaFinal
  loc_69A6E6: FStAdFunc var_1EC
  loc_69A6E9: FLdPr var_1EC
  loc_69A6EC: Me.Caption = from_stack_1
  loc_69A6F1: FFreeStr var_A4 = ""
  loc_69A6F8: FFree1Ad var_1EC
  loc_69A6FB: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A712: FLdRfVar var_1E8
  loc_69A715: LitVar_Missing var_1E4
  loc_69A718: LitVar_Missing var_1C4
  loc_69A71B: LitVar_Missing var_1A4
  loc_69A71E: LitVar_Missing var_184
  loc_69A721: LitVar_Missing var_164
  loc_69A724: LitVar_Missing var_144
  loc_69A727: LitVar_Missing var_124
  loc_69A72A: LitVar_Missing var_104
  loc_69A72D: LitVar_Missing var_E4
  loc_69A730: LitVar_Missing var_C4
  loc_69A733: LitStr "Litros"
  loc_69A736: FStStrCopy var_A4
  loc_69A739: FLdRfVar var_A4
  loc_69A73C: LitI4 7
  loc_69A741: PopTmpLdAdStr var_A0
  loc_69A744: LitI2_Byte &H10
  loc_69A746: PopTmpLdAd2 var_9C
  loc_69A749: ImpAdLdRf MemVar_74C7D0
  loc_69A74C: NewIfNullPr clsMsg
  loc_69A74F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69A754: ILdRf var_1E8
  loc_69A757: FLdPrThis
  loc_69A758: VCallAd Control_ID_lblLitros
  loc_69A75B: FStAdFunc var_1EC
  loc_69A75E: FLdPr var_1EC
  loc_69A761: Me.Caption = from_stack_1
  loc_69A766: FFreeStr var_A4 = ""
  loc_69A76D: FFree1Ad var_1EC
  loc_69A770: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_69A787: ImpAdLdI4 MemVar_74BEBC
  loc_69A78A: FLdPrThis
  loc_69A78B: VCallAd Control_ID_lblLitros
  loc_69A78E: FStAdFunc var_1EC
  loc_69A791: FLdPr var_1EC
  loc_69A794: Me.Caption = from_stack_1
  loc_69A799: FFree1Ad var_1EC
  loc_69A79C: FLdRfVar var_C4
  loc_69A79F: FLdRfVar var_88
  loc_69A7A2: LitI2_Byte 0
  loc_69A7A4: PopTmpLdAd2 var_9C
  loc_69A7A7: LitStr "1"
  loc_69A7AA: FStStrCopy var_A4
  loc_69A7AD: FLdRfVar var_A4
  loc_69A7B0: FLdPr Me
  loc_69A7B3: MemLdRfVar from_stack_1.tank
  loc_69A7B6: FLdRfVar var_1EC
  loc_69A7B9: ImpAdLdRf MemVar_74C760
  loc_69A7BC: NewIfNullPr Formx
  loc_69A7BF: from_stack_1v = Formx.global_4589716Get()
  loc_69A7C4: FLdPr var_1EC
  loc_69A7C7:  = Formx.MinButton
  loc_69A7CC: FLdRfVar var_C4
  loc_69A7CF: NotVar var_E4
  loc_69A7D3: CBoolVarNull
  loc_69A7D5: FFree1Str var_A4
  loc_69A7D8: FFree1Ad var_1EC
  loc_69A7DB: FFree1Var var_C4 = ""
  loc_69A7DE: BranchF loc_69A80D
  loc_69A7E1: FLdRfVar var_C4
  loc_69A7E4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69A7E9: FLdRfVar var_C4
  loc_69A7EC: CBoolVarNull
  loc_69A7EE: FFree1Var var_C4 = ""
  loc_69A7F1: BranchF loc_69A80A
  loc_69A7F4: ILdRf Me
  loc_69A7F7: FStAdNoPop
  loc_69A7FB: ImpAdLdRf MemVar_7520D4
  loc_69A7FE: NewIfNullPr Global
  loc_69A801: Global.Unload from_stack_1
  loc_69A806: FFree1Ad var_1EC
  loc_69A809: ExitProcHresult
  loc_69A80A: Branch loc_69A79C
  loc_69A80D: FLdRfVar var_88
  loc_69A810: CVarRef
  loc_69A815: FLdRfVar var_C4
  loc_69A818: ImpAdCallFPR4  = Trim()
  loc_69A81D: FLdRfVar var_C4
  loc_69A820: CStrVarTmp
  loc_69A821: FStStr var_88
  loc_69A824: FFree1Var var_C4 = ""
  loc_69A827: ILdRf var_88
  loc_69A82A: FnLenStr
  loc_69A82B: LitI4 1
  loc_69A830: GtI4
  loc_69A831: ILdRf var_88
  loc_69A834: ImpAdCallI2 Proc_155_4_5E3A18()
  loc_69A839: NotI4
  loc_69A83A: AndI4
  loc_69A83B: BranchF loc_69A9BE
  loc_69A83E: LitI2_Byte 1
  loc_69A840: FStI2 var_9A
  loc_69A843: LitVarI2 var_B4, 0
  loc_69A848: FStVar var_98
  loc_69A84C: FLdI2 var_9A
  loc_69A84F: CI4UI1
  loc_69A850: ILdRf var_88
  loc_69A853: FnLenStr
  loc_69A854: LtI4
  loc_69A855: BranchF loc_69A8A3
  loc_69A858: LitVarI2 var_C4, 8
  loc_69A85D: FLdI2 var_9A
  loc_69A860: CI4UI1
  loc_69A861: ILdRf var_88
  loc_69A864: ImpAdCallI2 Mid$(, , )
  loc_69A869: FStStrNoPop var_A4
  loc_69A86C: ImpAdCallFPR4 push Val()
  loc_69A871: LitI2_Byte &H64
  loc_69A873: CR8I2
  loc_69A874: DivR8
  loc_69A875: FLdRfVar var_98
  loc_69A878: CI4Var
  loc_69A87A: FLdPr Me
  loc_69A87D: MemLdRfVar from_stack_1.global_96
  loc_69A880: Ary1StFPR4
  loc_69A881: FFree1Str var_A4
  loc_69A884: FFree1Var var_C4 = ""
  loc_69A887: FLdI2 var_9A
  loc_69A88A: LitI2_Byte 8
  loc_69A88C: AddI2
  loc_69A88D: FStI2 var_9A
  loc_69A890: FLdRfVar var_98
  loc_69A893: LitVarI2 var_B4, 1
  loc_69A898: AddVar var_C4
  loc_69A89C: FStVar var_98
  loc_69A8A0: Branch loc_69A84C
  loc_69A8A3: FLdRfVar var_C4
  loc_69A8A6: FLdRfVar var_88
  loc_69A8A9: LitI2 3000
  loc_69A8AC: PopTmpLdAd2 var_9C
  loc_69A8AF: LitStr "1"
  loc_69A8B2: FStStrCopy var_A4
  loc_69A8B5: FLdRfVar var_A4
  loc_69A8B8: FLdPr Me
  loc_69A8BB: MemLdRfVar from_stack_1.tank
  loc_69A8BE: FLdRfVar var_1EC
  loc_69A8C1: ImpAdLdRf MemVar_74C760
  loc_69A8C4: NewIfNullPr Formx
  loc_69A8C7: from_stack_1v = Formx.global_4589716Get()
  loc_69A8CC: FLdPr var_1EC
  loc_69A8CF:  = Formx.MinButton
  loc_69A8D4: FLdRfVar var_C4
  loc_69A8D7: NotVar var_E4
  loc_69A8DB: CBoolVarNull
  loc_69A8DD: FFree1Str var_A4
  loc_69A8E0: FFree1Ad var_1EC
  loc_69A8E3: FFree1Var var_C4 = ""
  loc_69A8E6: BranchF loc_69A915
  loc_69A8E9: FLdRfVar var_C4
  loc_69A8EC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69A8F1: FLdRfVar var_C4
  loc_69A8F4: CBoolVarNull
  loc_69A8F6: FFree1Var var_C4 = ""
  loc_69A8F9: BranchF loc_69A912
  loc_69A8FC: ILdRf Me
  loc_69A8FF: FStAdNoPop
  loc_69A903: ImpAdLdRf MemVar_7520D4
  loc_69A906: NewIfNullPr Global
  loc_69A909: Global.Unload from_stack_1
  loc_69A90E: FFree1Ad var_1EC
  loc_69A911: ExitProcHresult
  loc_69A912: Branch loc_69A8A3
  loc_69A915: LitI2_Byte 1
  loc_69A917: FStI2 var_9A
  loc_69A91A: FLdI2 var_9A
  loc_69A91D: CI4UI1
  loc_69A91E: ILdRf var_88
  loc_69A921: FnLenStr
  loc_69A922: LtI4
  loc_69A923: BranchF loc_69A971
  loc_69A926: LitVarI2 var_C4, 8
  loc_69A92B: FLdI2 var_9A
  loc_69A92E: CI4UI1
  loc_69A92F: ILdRf var_88
  loc_69A932: ImpAdCallI2 Mid$(, , )
  loc_69A937: FStStrNoPop var_A4
  loc_69A93A: ImpAdCallFPR4 push Val()
  loc_69A93F: LitI2_Byte &H64
  loc_69A941: CR8I2
  loc_69A942: DivR8
  loc_69A943: FLdRfVar var_98
  loc_69A946: CI4Var
  loc_69A948: FLdPr Me
  loc_69A94B: MemLdRfVar from_stack_1.global_96
  loc_69A94E: Ary1StFPR4
  loc_69A94F: FFree1Str var_A4
  loc_69A952: FFree1Var var_C4 = ""
  loc_69A955: FLdI2 var_9A
  loc_69A958: LitI2_Byte 8
  loc_69A95A: AddI2
  loc_69A95B: FStI2 var_9A
  loc_69A95E: FLdRfVar var_98
  loc_69A961: LitVarI2 var_B4, 1
  loc_69A966: AddVar var_C4
  loc_69A96A: FStVar var_98
  loc_69A96E: Branch loc_69A91A
  loc_69A971: LitVar_FALSE
  loc_69A975: FLdPr Me
  loc_69A978: MemStVar
  loc_69A97C: LitI2_Byte &HFF
  loc_69A97E: FLdPrThis
  loc_69A97F: VCallAd Control_ID_Calculadora
  loc_69A982: FStAdFunc var_1EC
  loc_69A985: FLdPr var_1EC
  loc_69A988: Me.Locked = from_stack_1b
  loc_69A98D: FFree1Ad var_1EC
  loc_69A990: LitI2_Byte 0
  loc_69A992: FLdPrThis
  loc_69A993: VCallAd Control_ID_Calculadora
  loc_69A996: FStAdFunc var_1EC
  loc_69A999: FLdPr var_1EC
  loc_69A99C: Me.TabStop = from_stack_1b
  loc_69A9A1: FFree1Ad var_1EC
  loc_69A9A4: LitVar_FALSE
  loc_69A9A8: PopAdLdVar
  loc_69A9A9: FLdPrThis
  loc_69A9AA: VCallAd Control_ID_Punto
  loc_69A9AD: FStAdFunc var_1EC
  loc_69A9B0: FLdPr var_1EC
  loc_69A9B3: LateIdSt
  loc_69A9B8: FFree1Ad var_1EC
  loc_69A9BB: Branch loc_69AA18
  loc_69A9BE: LitI2_Byte 0
  loc_69A9C0: FLdPrThis
  loc_69A9C1: VCallAd Control_ID_txtMarcaInicial
  loc_69A9C4: FStAdFunc var_1EC
  loc_69A9C7: FLdPr var_1EC
  loc_69A9CA: Me.Enabled = from_stack_1b
  loc_69A9CF: FFree1Ad var_1EC
  loc_69A9D2: LitI2_Byte 0
  loc_69A9D4: FLdPrThis
  loc_69A9D5: VCallAd Control_ID_txtMarcaFinal
  loc_69A9D8: FStAdFunc var_1EC
  loc_69A9DB: FLdPr var_1EC
  loc_69A9DE: Me.Enabled = from_stack_1b
  loc_69A9E3: FFree1Ad var_1EC
  loc_69A9E6: LitI2_Byte 0
  loc_69A9E8: FLdPrThis
  loc_69A9E9: VCallAd Control_ID_lblMarcaInicial
  loc_69A9EC: FStAdFunc var_1EC
  loc_69A9EF: FLdPr var_1EC
  loc_69A9F2: Me.Enabled = from_stack_1b
  loc_69A9F7: FFree1Ad var_1EC
  loc_69A9FA: LitI2_Byte 0
  loc_69A9FC: FLdPrThis
  loc_69A9FD: VCallAd Control_ID_lblMarcaFinal
  loc_69AA00: FStAdFunc var_1EC
  loc_69AA03: FLdPr var_1EC
  loc_69AA06: Me.Enabled = from_stack_1b
  loc_69AA0B: FFree1Ad var_1EC
  loc_69AA0E: LitVar_TRUE var_B4
  loc_69AA11: FLdPr Me
  loc_69AA14: MemStVar
  loc_69AA18: LitI2_Byte 0
  loc_69AA1A: CStrUI1
  loc_69AA1C: FStStrNoPop var_A4
  loc_69AA1F: FLdPrThis
  loc_69AA20: VCallAd Control_ID_txtMarcaInicial
  loc_69AA23: FStAdFunc var_1EC
  loc_69AA26: FLdPr var_1EC
  loc_69AA29: Me.Text = from_stack_1
  loc_69AA2E: FFree1Str var_A4
  loc_69AA31: FFree1Ad var_1EC
  loc_69AA34: LitI2_Byte 0
  loc_69AA36: CStrUI1
  loc_69AA38: FStStrNoPop var_A4
  loc_69AA3B: FLdPrThis
  loc_69AA3C: VCallAd Control_ID_txtMarcaFinal
  loc_69AA3F: FStAdFunc var_1EC
  loc_69AA42: FLdPr var_1EC
  loc_69AA45: Me.Text = from_stack_1
  loc_69AA4A: FFree1Str var_A4
  loc_69AA4D: FFree1Ad var_1EC
  loc_69AA50: LitI2_Byte 0
  loc_69AA52: FLdPr Me
  loc_69AA55: MemStI2 global_72
  loc_69AA58: LitI2_Byte 1
  loc_69AA5A: FLdPr Me
  loc_69AA5D: MemStI2 global_74
  loc_69AA60: LitI2_Byte 0
  loc_69AA62: CR8I2
  loc_69AA63: ImpAdStFPR4 MemVar_74C370
  loc_69AA66: LitI2_Byte 0
  loc_69AA68: ImpAdStI2 MemVar_74C37E
  loc_69AA6B: LitVarI2 var_B4, 100
  loc_69AA70: PopAdLdVar
  loc_69AA71: FLdPrThis
  loc_69AA72: VCallAd Control_ID_EstadoNumLock
  loc_69AA75: FStAdFunc var_1EC
  loc_69AA78: FLdPr var_1EC
  loc_69AA7B: LateIdSt
  loc_69AA80: FFree1Ad var_1EC
  loc_69AA83: ImpAdLdI4 MemVar_74A154
  loc_69AA86: LitStr "6.0"
  loc_69AA89: NeStr
  loc_69AA8B: ImpAdLdI4 MemVar_74A154
  loc_69AA8E: LitStr "6.1"
  loc_69AA91: NeStr
  loc_69AA93: AndI4
  loc_69AA94: BranchF loc_69AA9C
  loc_69AA97: Call EstadoNumLock_UnknownEvent_8()
  loc_69AA9C: OnErrorGoto loc_69AADA
  loc_69AA9F: FLdPr Me
  loc_69AAA2: MemLdRfVar from_stack_1.global_76
  loc_69AAA5: CBoolVarNull
  loc_69AAA7: BranchF loc_69AABF
  loc_69AAAA: FLdPrThis
  loc_69AAAB: VCallAd Control_ID_Calculadora
  loc_69AAAE: FStAdFunc var_1EC
  loc_69AAB1: FLdPr var_1EC
  loc_69AAB4: Me.SetFocus
  loc_69AAB9: FFree1Ad var_1EC
  loc_69AABC: Branch loc_69AAD9
  loc_69AABF: FLdPrThis
  loc_69AAC0: VCallAd Control_ID_txtMarcaInicial
  loc_69AAC3: FStAdFunc var_1EC
  loc_69AAC6: FLdPr var_1EC
  loc_69AAC9: Me.SetFocus
  loc_69AACE: FFree1Ad var_1EC
  loc_69AAD1: LitI2_Byte &HFF
  loc_69AAD3: FLdPr Me
  loc_69AAD6: MemStI2 global_92
  loc_69AAD9: ExitProcHresult
  loc_69AADA: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '6025CC
  'Data Table: 438E8C
  loc_6024F0: ILdI2 KeyCode
  loc_6024F3: FStI2 var_86
  loc_6024F6: FLdI2 var_86
  loc_6024F9: LitI4 &H60
  loc_6024FE: CI2I4
  loc_6024FF: LitI4 &H69
  loc_602504: CI2I4
  loc_602505: BetweenI2
  loc_602507: BranchF loc_602520
  loc_60250A: ILdI2 KeyCode
  loc_60250D: CI4UI1
  loc_60250E: LitI4 &H60
  loc_602513: SubI4
  loc_602514: CI2I4
  loc_602515: PopTmpLdAd2 var_88
  loc_602518: from_stack_2v = Teclas_UnknownEvent_8(from_stack_1v)
  loc_60251D: Branch loc_6025C4
  loc_602520: FLdI2 var_86
  loc_602523: LitI4 &H6E
  loc_602528: CI2I4
  loc_602529: EqI2
  loc_60252A: BranchF loc_602535
  loc_60252D: Call Punto_UnknownEvent_8()
  loc_602532: Branch loc_6025C4
  loc_602535: FLdI2 var_86
  loc_602538: LitI4 8
  loc_60253D: CI2I4
  loc_60253E: EqI2
  loc_60253F: BranchT loc_60254F
  loc_602542: FLdI2 var_86
  loc_602545: LitI4 &H2E
  loc_60254A: CI2I4
  loc_60254B: EqI2
  loc_60254C: BranchF loc_602557
  loc_60254F: Call Borrar_UnknownEvent_8()
  loc_602554: Branch loc_6025C4
  loc_602557: FLdI2 var_86
  loc_60255A: LitI4 &H1B
  loc_60255F: CI2I4
  loc_602560: EqI2
  loc_602561: BranchF loc_60256C
  loc_602564: Call Cancel_UnknownEvent_8()
  loc_602569: Branch loc_6025C4
  loc_60256C: FLdI2 var_86
  loc_60256F: LitI4 &HD
  loc_602574: CI2I4
  loc_602575: EqI2
  loc_602576: BranchF loc_602581
  loc_602579: Call OK_UnknownEvent_8()
  loc_60257E: Branch loc_6025C4
  loc_602581: FLdI2 var_86
  loc_602584: LitI4 &H90
  loc_602589: CI2I4
  loc_60258A: EqI2
  loc_60258B: BranchF loc_6025C4
  loc_60258E: ImpAdLdI4 MemVar_74A154
  loc_602591: LitStr "6.0"
  loc_602594: NeStr
  loc_602596: ImpAdLdI4 MemVar_74A154
  loc_602599: LitStr "6.1"
  loc_60259C: NeStr
  loc_60259E: AndI4
  loc_60259F: BranchF loc_6025C4
  loc_6025A2: FLdPrThis
  loc_6025A3: VCallAd Control_ID_EstadoNumLock
  loc_6025A6: FStAdFunc var_8C
  loc_6025A9: FLdPr var_8C
  loc_6025AC: LateIdLdVar var_9C DispID_6 0
  loc_6025B3: CBoolVar
  loc_6025B5: NotI4
  loc_6025B6: FFree1Ad var_8C
  loc_6025B9: FFree1Var var_9C = ""
  loc_6025BC: BranchF loc_6025C4
  loc_6025BF: Call EstadoNumLock_UnknownEvent_8()
  loc_6025C4: LitI2_Byte 0
  loc_6025C6: IStI2 KeyCode
  loc_6025C9: ExitProcHresult
  loc_6025CA: CI4R8
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '5C8FC0
  'Data Table: 438E8C
  loc_5C8FB8: LitI2_Byte 0
  loc_5C8FBA: IStI2 KeyAscii
  loc_5C8FBD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '5C8F88
  'Data Table: 438E8C
  loc_5C8F80: LitI2_Byte 0
  loc_5C8F82: IStI2 KeyCode
  loc_5C8F85: ExitProcHresult
End Sub

Private Sub Cancel_UnknownEvent_8 '5D5090
  'Data Table: 438E8C
  loc_5D506C: LitI2_Byte &HFF
  loc_5D506E: ImpAdStI2 MemVar_74C37E
  loc_5D5071: LitI2_Byte &HFF
  loc_5D5073: CR8I2
  loc_5D5074: ImpAdStFPR4 MemVar_74C370
  loc_5D5077: ILdRf Me
  loc_5D507A: FStAdNoPop
  loc_5D507E: ImpAdLdRf MemVar_7520D4
  loc_5D5081: NewIfNullPr Global
  loc_5D5084: Global.Unload from_stack_1
  loc_5D5089: FFree1Ad var_88
  loc_5D508C: ExitProcHresult
  loc_5D508D: FLdRfVar var_2
End Sub

Public Function AltaGet() '43993C
  AltaGet = Alta
End Function

Public Sub AltaPut(Value) '43994B
  Alta = Value
End Sub

Public Function tankGet() '43995A
  tankGet = tank
End Function

Public Sub tankPut(Value) '439969
  tank = Value
End Sub

Public Function strTooMuchFuelGet() '439978
  strTooMuchFuelGet = strTooMuchFuel
End Function

Public Sub strTooMuchFuelPut(Value) '439987
  strTooMuchFuel = Value
End Sub

Public Function strFuellingGet() '439996
  strFuellingGet = strFuelling
End Function

Public Sub strFuellingPut(Value) '4399A5
  strFuelling = Value
End Sub

Public Function strMarcaFinalGet() '4399B4
  strMarcaFinalGet = strMarcaFinal
End Function

Public Sub strMarcaFinalPut(Value) '4399C3
  strMarcaFinal = Value
End Sub

Public Function strIngresoMilGet() '4399D2
  strIngresoMilGet = strIngresoMil
End Function

Public Sub strIngresoMilPut(Value) '4399E1
  strIngresoMil = Value
End Sub
