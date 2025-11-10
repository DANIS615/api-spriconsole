VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWow64\COMCTL32.OCX"
Begin VB.Form frmControlPlayeros
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
  ClientTop = 45
  ClientWidth = 11895
  ClientHeight = 5280
  ShowInTaskbar = 0   'False
  Begin VB.ListBox lstNombres
    Left = 120
    Top = 1200
    Width = 2775
    Height = 2910
    TabIndex = 0
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
    Left = 9600
    Top = 4440
    Width = 2055
    Height = 615
    TabIndex = 10
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
  Begin VB.Frame Frame1
    Left = 3000
    Top = 1080
    Width = 8775
    Height = 3135
    TabIndex = 12
    Begin VB.Frame Frame2
      Left = 120
      Top = 120
      Width = 8535
      Height = 1935
      TabIndex = 13
      Begin VB.TextBox txtUsuario
        Left = 2760
        Top = 1200
        Width = 975
        Height = 375
        TabIndex = 2
        MaxLength = 4
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
      Begin VB.TextBox txtNombrePlayero
        Left = 2760
        Top = 480
        Width = 5535
        Height = 375
        TabIndex = 1
        MaxLength = 40
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
      Begin VB.Label Label4
        Caption = "Número de Usuario:"
        Left = 240
        Top = 1200
        Width = 2415
        Height = 375
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
      Begin VB.Label Label1
        Caption = "Nombre del Playero:"
        Index = 0
        Left = 240
        Top = 480
        Width = 2415
        Height = 375
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
    End
    Begin VB.CommandButton cmdUltimo
      Left = 6000
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 8
      ToolTipText = "Ultimo"
      Style = 1
    End
    Begin VB.CommandButton cmdSiguiente
      Left = 5280
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 7
      ToolTipText = "Siguiente"
      Style = 1
    End
    Begin VB.CommandButton cmdBorra
      Left = 4440
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 6
      ToolTipText = "Eliminar"
      Style = 1
    End
    Begin VB.CommandButton cmdAgrega
      Left = 3720
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 5
      ToolTipText = "Agregar"
      Style = 1
    End
    Begin VB.CommandButton cmdAnterior
      Left = 2880
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 4
      ToolTipText = "Anterior"
      Style = 1
    End
    Begin VB.CommandButton cmdPrimero
      Left = 2160
      Top = 2280
      Width = 615
      Height = 615
      TabIndex = 3
      ToolTipText = "Primero"
      Style = 1
    End
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7440
    Top = 4440
    Width = 1935
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
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
    Caption = "Playeros"
    Index = 1
    Left = 240
    Top = 4320
    Width = 2535
    Height = 375
    TabIndex = 16
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
  Begin ComctlLib.ImageList Imagenes
    OleObjectBlob = "frmControlPlayeros.frx":0000
    Left = 0
    Top = 0
  End
  Begin VB.Label Label3
    Caption = "Control de Playeros"
    Left = 3720
    Top = 240
    Width = 4455
    Height = 615
    TabIndex = 11
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

Attribute VB_Name = "frmControlPlayeros"


Private Sub Form_Load() '6B578C
  'Data Table: 4374D4
  loc_6B4FB0: ILdRf Me
  loc_6B4FB3: CastAd
  loc_6B4FB6: FStAdFunc var_88
  loc_6B4FB9: FLdRfVar var_88
  loc_6B4FBC: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6B4FC1: FFree1Ad var_88
  loc_6B4FC4: FLdRfVar var_1D8
  loc_6B4FC7: LitVar_Missing var_1D4
  loc_6B4FCA: LitVar_Missing var_1B4
  loc_6B4FCD: LitVar_Missing var_194
  loc_6B4FD0: LitVar_Missing var_174
  loc_6B4FD3: LitVar_Missing var_154
  loc_6B4FD6: LitVar_Missing var_134
  loc_6B4FD9: LitVar_Missing var_114
  loc_6B4FDC: LitVar_Missing var_F4
  loc_6B4FDF: LitVar_Missing var_D4
  loc_6B4FE2: LitVar_Missing var_B4
  loc_6B4FE5: LitStr "Control de Playeros"
  loc_6B4FE8: FStStrCopy var_94
  loc_6B4FEB: FLdRfVar var_94
  loc_6B4FEE: LitI4 1
  loc_6B4FF3: PopTmpLdAdStr var_90
  loc_6B4FF6: LitI2_Byte &H4A
  loc_6B4FF8: PopTmpLdAd2 var_8A
  loc_6B4FFB: ImpAdLdRf MemVar_74C7D0
  loc_6B4FFE: NewIfNullPr clsMsg
  loc_6B5001: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5006: ILdRf var_1D8
  loc_6B5009: FLdPrThis
  loc_6B500A: VCallAd Control_ID_Label3
  loc_6B500D: FStAdFunc var_88
  loc_6B5010: FLdPr var_88
  loc_6B5013: Me.Caption = from_stack_1
  loc_6B5018: FFreeStr var_94 = ""
  loc_6B501F: FFree1Ad var_88
  loc_6B5022: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5039: FLdRfVar var_1D8
  loc_6B503C: LitVar_Missing var_1D4
  loc_6B503F: LitVar_Missing var_1B4
  loc_6B5042: LitVar_Missing var_194
  loc_6B5045: LitVar_Missing var_174
  loc_6B5048: LitVar_Missing var_154
  loc_6B504B: LitVar_Missing var_134
  loc_6B504E: LitVar_Missing var_114
  loc_6B5051: LitVar_Missing var_F4
  loc_6B5054: LitVar_Missing var_D4
  loc_6B5057: LitVar_Missing var_B4
  loc_6B505A: LitStr "Nombre del Playero:"
  loc_6B505D: FStStrCopy var_94
  loc_6B5060: FLdRfVar var_94
  loc_6B5063: LitI4 2
  loc_6B5068: PopTmpLdAdStr var_90
  loc_6B506B: LitI2_Byte &H4A
  loc_6B506D: PopTmpLdAd2 var_8A
  loc_6B5070: ImpAdLdRf MemVar_74C7D0
  loc_6B5073: NewIfNullPr clsMsg
  loc_6B5076: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B507B: ILdRf var_1D8
  loc_6B507E: FLdRfVar var_1DC
  loc_6B5081: LitI2_Byte 0
  loc_6B5083: FLdPrThis
  loc_6B5084: VCallAd Control_ID_Label1
  loc_6B5087: FStAdFunc var_88
  loc_6B508A: FLdPr var_88
  loc_6B508D: Set from_stack_2 = Me(from_stack_1)
  loc_6B5092: FLdPr var_1DC
  loc_6B5095: Me.Caption = from_stack_1
  loc_6B509A: FFreeStr var_94 = ""
  loc_6B50A1: FFreeAd var_88 = ""
  loc_6B50A8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B50BF: FLdRfVar var_1D8
  loc_6B50C2: LitVar_Missing var_1D4
  loc_6B50C5: LitVar_Missing var_1B4
  loc_6B50C8: LitVar_Missing var_194
  loc_6B50CB: LitVar_Missing var_174
  loc_6B50CE: LitVar_Missing var_154
  loc_6B50D1: LitVar_Missing var_134
  loc_6B50D4: LitVar_Missing var_114
  loc_6B50D7: LitVar_Missing var_F4
  loc_6B50DA: LitVar_Missing var_D4
  loc_6B50DD: LitVar_Missing var_B4
  loc_6B50E0: LitStr "Número de Usuário:"
  loc_6B50E3: FStStrCopy var_94
  loc_6B50E6: FLdRfVar var_94
  loc_6B50E9: LitI4 3
  loc_6B50EE: PopTmpLdAdStr var_90
  loc_6B50F1: LitI2_Byte &H4A
  loc_6B50F3: PopTmpLdAd2 var_8A
  loc_6B50F6: ImpAdLdRf MemVar_74C7D0
  loc_6B50F9: NewIfNullPr clsMsg
  loc_6B50FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5101: ILdRf var_1D8
  loc_6B5104: FLdPrThis
  loc_6B5105: VCallAd Control_ID_Label4
  loc_6B5108: FStAdFunc var_88
  loc_6B510B: FLdPr var_88
  loc_6B510E: Me.Caption = from_stack_1
  loc_6B5113: FFreeStr var_94 = ""
  loc_6B511A: FFree1Ad var_88
  loc_6B511D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5134: FLdRfVar var_1D8
  loc_6B5137: LitVar_Missing var_1D4
  loc_6B513A: LitVar_Missing var_1B4
  loc_6B513D: LitVar_Missing var_194
  loc_6B5140: LitVar_Missing var_174
  loc_6B5143: LitVar_Missing var_154
  loc_6B5146: LitVar_Missing var_134
  loc_6B5149: LitVar_Missing var_114
  loc_6B514C: LitVar_Missing var_F4
  loc_6B514F: LitVar_Missing var_D4
  loc_6B5152: LitVar_Missing var_B4
  loc_6B5155: LitStr "Playeros"
  loc_6B5158: FStStrCopy var_94
  loc_6B515B: FLdRfVar var_94
  loc_6B515E: LitI4 4
  loc_6B5163: PopTmpLdAdStr var_90
  loc_6B5166: LitI2_Byte &H4A
  loc_6B5168: PopTmpLdAd2 var_8A
  loc_6B516B: ImpAdLdRf MemVar_74C7D0
  loc_6B516E: NewIfNullPr clsMsg
  loc_6B5171: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5176: ILdRf var_1D8
  loc_6B5179: FLdRfVar var_1DC
  loc_6B517C: LitI2_Byte 1
  loc_6B517E: FLdPrThis
  loc_6B517F: VCallAd Control_ID_Label1
  loc_6B5182: FStAdFunc var_88
  loc_6B5185: FLdPr var_88
  loc_6B5188: Set from_stack_2 = Me(from_stack_1)
  loc_6B518D: FLdPr var_1DC
  loc_6B5190: Me.Caption = from_stack_1
  loc_6B5195: FFreeStr var_94 = ""
  loc_6B519C: FFreeAd var_88 = ""
  loc_6B51A3: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B51BA: FLdRfVar var_1D8
  loc_6B51BD: LitVar_Missing var_1D4
  loc_6B51C0: LitVar_Missing var_1B4
  loc_6B51C3: LitVar_Missing var_194
  loc_6B51C6: LitVar_Missing var_174
  loc_6B51C9: LitVar_Missing var_154
  loc_6B51CC: LitVar_Missing var_134
  loc_6B51CF: LitVar_Missing var_114
  loc_6B51D2: LitVar_Missing var_F4
  loc_6B51D5: LitVar_Missing var_D4
  loc_6B51D8: LitVar_Missing var_B4
  loc_6B51DB: LitStr "&Aceptar"
  loc_6B51DE: FStStrCopy var_94
  loc_6B51E1: FLdRfVar var_94
  loc_6B51E4: LitI4 5
  loc_6B51E9: PopTmpLdAdStr var_90
  loc_6B51EC: LitI2_Byte &H4A
  loc_6B51EE: PopTmpLdAd2 var_8A
  loc_6B51F1: ImpAdLdRf MemVar_74C7D0
  loc_6B51F4: NewIfNullPr clsMsg
  loc_6B51F7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B51FC: ILdRf var_1D8
  loc_6B51FF: FLdPrThis
  loc_6B5200: VCallAd Control_ID_cmdAceptar
  loc_6B5203: FStAdFunc var_88
  loc_6B5206: FLdPr var_88
  loc_6B5209: Me.Caption = from_stack_1
  loc_6B520E: FFreeStr var_94 = ""
  loc_6B5215: FFree1Ad var_88
  loc_6B5218: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B522F: FLdRfVar var_1D8
  loc_6B5232: LitVar_Missing var_1D4
  loc_6B5235: LitVar_Missing var_1B4
  loc_6B5238: LitVar_Missing var_194
  loc_6B523B: LitVar_Missing var_174
  loc_6B523E: LitVar_Missing var_154
  loc_6B5241: LitVar_Missing var_134
  loc_6B5244: LitVar_Missing var_114
  loc_6B5247: LitVar_Missing var_F4
  loc_6B524A: LitVar_Missing var_D4
  loc_6B524D: LitVar_Missing var_B4
  loc_6B5250: LitStr "&Cancelar"
  loc_6B5253: FStStrCopy var_94
  loc_6B5256: FLdRfVar var_94
  loc_6B5259: LitI4 6
  loc_6B525E: PopTmpLdAdStr var_90
  loc_6B5261: LitI2_Byte &H4A
  loc_6B5263: PopTmpLdAd2 var_8A
  loc_6B5266: ImpAdLdRf MemVar_74C7D0
  loc_6B5269: NewIfNullPr clsMsg
  loc_6B526C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5271: ILdRf var_1D8
  loc_6B5274: FLdPrThis
  loc_6B5275: VCallAd Control_ID_cmdCancelar
  loc_6B5278: FStAdFunc var_88
  loc_6B527B: FLdPr var_88
  loc_6B527E: Me.Caption = from_stack_1
  loc_6B5283: FFreeStr var_94 = ""
  loc_6B528A: FFree1Ad var_88
  loc_6B528D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B52A4: FLdRfVar var_1D8
  loc_6B52A7: LitVar_Missing var_1D4
  loc_6B52AA: LitVar_Missing var_1B4
  loc_6B52AD: LitVar_Missing var_194
  loc_6B52B0: LitVar_Missing var_174
  loc_6B52B3: LitVar_Missing var_154
  loc_6B52B6: LitVar_Missing var_134
  loc_6B52B9: LitVar_Missing var_114
  loc_6B52BC: LitVar_Missing var_F4
  loc_6B52BF: LitVar_Missing var_D4
  loc_6B52C2: LitVar_Missing var_B4
  loc_6B52C5: LitStr "Primero"
  loc_6B52C8: FStStrCopy var_94
  loc_6B52CB: FLdRfVar var_94
  loc_6B52CE: LitI4 9
  loc_6B52D3: PopTmpLdAdStr var_90
  loc_6B52D6: LitI2_Byte &H4A
  loc_6B52D8: PopTmpLdAd2 var_8A
  loc_6B52DB: ImpAdLdRf MemVar_74C7D0
  loc_6B52DE: NewIfNullPr clsMsg
  loc_6B52E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B52E6: ILdRf var_1D8
  loc_6B52E9: FLdPrThis
  loc_6B52EA: VCallAd Control_ID_cmdPrimero
  loc_6B52ED: FStAdFunc var_88
  loc_6B52F0: FLdPr var_88
  loc_6B52F3: Me.ToolTipText = from_stack_1
  loc_6B52F8: FFreeStr var_94 = ""
  loc_6B52FF: FFree1Ad var_88
  loc_6B5302: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5319: FLdRfVar var_1D8
  loc_6B531C: LitVar_Missing var_1D4
  loc_6B531F: LitVar_Missing var_1B4
  loc_6B5322: LitVar_Missing var_194
  loc_6B5325: LitVar_Missing var_174
  loc_6B5328: LitVar_Missing var_154
  loc_6B532B: LitVar_Missing var_134
  loc_6B532E: LitVar_Missing var_114
  loc_6B5331: LitVar_Missing var_F4
  loc_6B5334: LitVar_Missing var_D4
  loc_6B5337: LitVar_Missing var_B4
  loc_6B533A: LitStr "Anterior"
  loc_6B533D: FStStrCopy var_94
  loc_6B5340: FLdRfVar var_94
  loc_6B5343: LitI4 &HA
  loc_6B5348: PopTmpLdAdStr var_90
  loc_6B534B: LitI2_Byte &H4A
  loc_6B534D: PopTmpLdAd2 var_8A
  loc_6B5350: ImpAdLdRf MemVar_74C7D0
  loc_6B5353: NewIfNullPr clsMsg
  loc_6B5356: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B535B: ILdRf var_1D8
  loc_6B535E: FLdPrThis
  loc_6B535F: VCallAd Control_ID_cmdAnterior
  loc_6B5362: FStAdFunc var_88
  loc_6B5365: FLdPr var_88
  loc_6B5368: Me.ToolTipText = from_stack_1
  loc_6B536D: FFreeStr var_94 = ""
  loc_6B5374: FFree1Ad var_88
  loc_6B5377: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B538E: FLdRfVar var_1D8
  loc_6B5391: LitVar_Missing var_1D4
  loc_6B5394: LitVar_Missing var_1B4
  loc_6B5397: LitVar_Missing var_194
  loc_6B539A: LitVar_Missing var_174
  loc_6B539D: LitVar_Missing var_154
  loc_6B53A0: LitVar_Missing var_134
  loc_6B53A3: LitVar_Missing var_114
  loc_6B53A6: LitVar_Missing var_F4
  loc_6B53A9: LitVar_Missing var_D4
  loc_6B53AC: LitVar_Missing var_B4
  loc_6B53AF: LitStr "Agregar"
  loc_6B53B2: FStStrCopy var_94
  loc_6B53B5: FLdRfVar var_94
  loc_6B53B8: LitI4 &HB
  loc_6B53BD: PopTmpLdAdStr var_90
  loc_6B53C0: LitI2_Byte &H4A
  loc_6B53C2: PopTmpLdAd2 var_8A
  loc_6B53C5: ImpAdLdRf MemVar_74C7D0
  loc_6B53C8: NewIfNullPr clsMsg
  loc_6B53CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B53D0: ILdRf var_1D8
  loc_6B53D3: FLdPrThis
  loc_6B53D4: VCallAd Control_ID_cmdAgrega
  loc_6B53D7: FStAdFunc var_88
  loc_6B53DA: FLdPr var_88
  loc_6B53DD: Me.ToolTipText = from_stack_1
  loc_6B53E2: FFreeStr var_94 = ""
  loc_6B53E9: FFree1Ad var_88
  loc_6B53EC: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5403: FLdRfVar var_1D8
  loc_6B5406: LitVar_Missing var_1D4
  loc_6B5409: LitVar_Missing var_1B4
  loc_6B540C: LitVar_Missing var_194
  loc_6B540F: LitVar_Missing var_174
  loc_6B5412: LitVar_Missing var_154
  loc_6B5415: LitVar_Missing var_134
  loc_6B5418: LitVar_Missing var_114
  loc_6B541B: LitVar_Missing var_F4
  loc_6B541E: LitVar_Missing var_D4
  loc_6B5421: LitVar_Missing var_B4
  loc_6B5424: LitStr "Eliminar"
  loc_6B5427: FStStrCopy var_94
  loc_6B542A: FLdRfVar var_94
  loc_6B542D: LitI4 &HC
  loc_6B5432: PopTmpLdAdStr var_90
  loc_6B5435: LitI2_Byte &H4A
  loc_6B5437: PopTmpLdAd2 var_8A
  loc_6B543A: ImpAdLdRf MemVar_74C7D0
  loc_6B543D: NewIfNullPr clsMsg
  loc_6B5440: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B5445: ILdRf var_1D8
  loc_6B5448: FLdPrThis
  loc_6B5449: VCallAd Control_ID_cmdBorra
  loc_6B544C: FStAdFunc var_88
  loc_6B544F: FLdPr var_88
  loc_6B5452: Me.ToolTipText = from_stack_1
  loc_6B5457: FFreeStr var_94 = ""
  loc_6B545E: FFree1Ad var_88
  loc_6B5461: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5478: FLdRfVar var_1D8
  loc_6B547B: LitVar_Missing var_1D4
  loc_6B547E: LitVar_Missing var_1B4
  loc_6B5481: LitVar_Missing var_194
  loc_6B5484: LitVar_Missing var_174
  loc_6B5487: LitVar_Missing var_154
  loc_6B548A: LitVar_Missing var_134
  loc_6B548D: LitVar_Missing var_114
  loc_6B5490: LitVar_Missing var_F4
  loc_6B5493: LitVar_Missing var_D4
  loc_6B5496: LitVar_Missing var_B4
  loc_6B5499: LitStr "Siguiente"
  loc_6B549C: FStStrCopy var_94
  loc_6B549F: FLdRfVar var_94
  loc_6B54A2: LitI4 &HD
  loc_6B54A7: PopTmpLdAdStr var_90
  loc_6B54AA: LitI2_Byte &H4A
  loc_6B54AC: PopTmpLdAd2 var_8A
  loc_6B54AF: ImpAdLdRf MemVar_74C7D0
  loc_6B54B2: NewIfNullPr clsMsg
  loc_6B54B5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B54BA: ILdRf var_1D8
  loc_6B54BD: FLdPrThis
  loc_6B54BE: VCallAd Control_ID_cmdSiguiente
  loc_6B54C1: FStAdFunc var_88
  loc_6B54C4: FLdPr var_88
  loc_6B54C7: Me.ToolTipText = from_stack_1
  loc_6B54CC: FFreeStr var_94 = ""
  loc_6B54D3: FFree1Ad var_88
  loc_6B54D6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B54ED: FLdRfVar var_1D8
  loc_6B54F0: LitVar_Missing var_1D4
  loc_6B54F3: LitVar_Missing var_1B4
  loc_6B54F6: LitVar_Missing var_194
  loc_6B54F9: LitVar_Missing var_174
  loc_6B54FC: LitVar_Missing var_154
  loc_6B54FF: LitVar_Missing var_134
  loc_6B5502: LitVar_Missing var_114
  loc_6B5505: LitVar_Missing var_F4
  loc_6B5508: LitVar_Missing var_D4
  loc_6B550B: LitVar_Missing var_B4
  loc_6B550E: LitStr "Ultimo"
  loc_6B5511: FStStrCopy var_94
  loc_6B5514: FLdRfVar var_94
  loc_6B5517: LitI4 &HE
  loc_6B551C: PopTmpLdAdStr var_90
  loc_6B551F: LitI2_Byte &H4A
  loc_6B5521: PopTmpLdAd2 var_8A
  loc_6B5524: ImpAdLdRf MemVar_74C7D0
  loc_6B5527: NewIfNullPr clsMsg
  loc_6B552A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B552F: ILdRf var_1D8
  loc_6B5532: FLdPrThis
  loc_6B5533: VCallAd Control_ID_cmdUltimo
  loc_6B5536: FStAdFunc var_88
  loc_6B5539: FLdPr var_88
  loc_6B553C: Me.ToolTipText = from_stack_1
  loc_6B5541: FFreeStr var_94 = ""
  loc_6B5548: FFree1Ad var_88
  loc_6B554B: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6B5562: FLdRfVar var_1E4
  loc_6B5565: FLdRfVar var_1E0
  loc_6B5568: LitVarI2 var_D4, 1
  loc_6B556D: FLdPrThis
  loc_6B556E: VCallAd Control_ID_Imagenes
  loc_6B5571: FStAdFunc var_88
  loc_6B5574: FLdPr var_88
  loc_6B5577: LateIdLdVar var_B4 DispID_4 0
  loc_6B557E: CastAdVar Me
  loc_6B5582: FStAdFunc var_1DC
  loc_6B5585: FLdPr var_1DC
  loc_6B5588:  = Me.ListImages.ControlDefault
  loc_6B558D: FLdPr var_1E0
  loc_6B5590:  = Me.Picture
  loc_6B5595: FLdZeroAd var_1E4
  loc_6B5598: FStAdFuncNoPop
  loc_6B559B: FLdPrThis
  loc_6B559C: VCallAd Control_ID_cmdPrimero
  loc_6B559F: FStAdFunc var_1EC
  loc_6B55A2: FLdPr var_1EC
  loc_6B55A5: Me.Picture = from_stack_1
  loc_6B55AA: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B55B7: FFreeVar var_B4 = ""
  loc_6B55BE: FLdRfVar var_1E4
  loc_6B55C1: FLdRfVar var_1E0
  loc_6B55C4: LitVarI2 var_D4, 2
  loc_6B55C9: FLdPrThis
  loc_6B55CA: VCallAd Control_ID_Imagenes
  loc_6B55CD: FStAdFunc var_88
  loc_6B55D0: FLdPr var_88
  loc_6B55D3: LateIdLdVar var_B4 DispID_4 0
  loc_6B55DA: CastAdVar Me
  loc_6B55DE: FStAdFunc var_1DC
  loc_6B55E1: FLdPr var_1DC
  loc_6B55E4:  = Me.ListImages.ControlDefault
  loc_6B55E9: FLdPr var_1E0
  loc_6B55EC:  = Me.Picture
  loc_6B55F1: FLdZeroAd var_1E4
  loc_6B55F4: FStAdFuncNoPop
  loc_6B55F7: FLdPrThis
  loc_6B55F8: VCallAd Control_ID_cmdAnterior
  loc_6B55FB: FStAdFunc var_1EC
  loc_6B55FE: FLdPr var_1EC
  loc_6B5601: Me.Picture = from_stack_1
  loc_6B5606: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B5613: FFreeVar var_B4 = ""
  loc_6B561A: FLdRfVar var_1E4
  loc_6B561D: FLdRfVar var_1E0
  loc_6B5620: LitVarI2 var_D4, 3
  loc_6B5625: FLdPrThis
  loc_6B5626: VCallAd Control_ID_Imagenes
  loc_6B5629: FStAdFunc var_88
  loc_6B562C: FLdPr var_88
  loc_6B562F: LateIdLdVar var_B4 DispID_4 0
  loc_6B5636: CastAdVar Me
  loc_6B563A: FStAdFunc var_1DC
  loc_6B563D: FLdPr var_1DC
  loc_6B5640:  = Me.ListImages.ControlDefault
  loc_6B5645: FLdPr var_1E0
  loc_6B5648:  = Me.Picture
  loc_6B564D: FLdZeroAd var_1E4
  loc_6B5650: FStAdFuncNoPop
  loc_6B5653: FLdPrThis
  loc_6B5654: VCallAd Control_ID_cmdSiguiente
  loc_6B5657: FStAdFunc var_1EC
  loc_6B565A: FLdPr var_1EC
  loc_6B565D: Me.Picture = from_stack_1
  loc_6B5662: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B566F: FFreeVar var_B4 = ""
  loc_6B5676: FLdRfVar var_1E4
  loc_6B5679: FLdRfVar var_1E0
  loc_6B567C: LitVarI2 var_D4, 4
  loc_6B5681: FLdPrThis
  loc_6B5682: VCallAd Control_ID_Imagenes
  loc_6B5685: FStAdFunc var_88
  loc_6B5688: FLdPr var_88
  loc_6B568B: LateIdLdVar var_B4 DispID_4 0
  loc_6B5692: CastAdVar Me
  loc_6B5696: FStAdFunc var_1DC
  loc_6B5699: FLdPr var_1DC
  loc_6B569C:  = Me.ListImages.ControlDefault
  loc_6B56A1: FLdPr var_1E0
  loc_6B56A4:  = Me.Picture
  loc_6B56A9: FLdZeroAd var_1E4
  loc_6B56AC: FStAdFuncNoPop
  loc_6B56AF: FLdPrThis
  loc_6B56B0: VCallAd Control_ID_cmdUltimo
  loc_6B56B3: FStAdFunc var_1EC
  loc_6B56B6: FLdPr var_1EC
  loc_6B56B9: Me.Picture = from_stack_1
  loc_6B56BE: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B56CB: FFreeVar var_B4 = ""
  loc_6B56D2: FLdRfVar var_1E4
  loc_6B56D5: FLdRfVar var_1E0
  loc_6B56D8: LitVarI2 var_D4, 5
  loc_6B56DD: FLdPrThis
  loc_6B56DE: VCallAd Control_ID_Imagenes
  loc_6B56E1: FStAdFunc var_88
  loc_6B56E4: FLdPr var_88
  loc_6B56E7: LateIdLdVar var_B4 DispID_4 0
  loc_6B56EE: CastAdVar Me
  loc_6B56F2: FStAdFunc var_1DC
  loc_6B56F5: FLdPr var_1DC
  loc_6B56F8:  = Me.ListImages.ControlDefault
  loc_6B56FD: FLdPr var_1E0
  loc_6B5700:  = Me.Picture
  loc_6B5705: FLdZeroAd var_1E4
  loc_6B5708: FStAdFuncNoPop
  loc_6B570B: FLdPrThis
  loc_6B570C: VCallAd Control_ID_cmdAgrega
  loc_6B570F: FStAdFunc var_1EC
  loc_6B5712: FLdPr var_1EC
  loc_6B5715: Me.Picture = from_stack_1
  loc_6B571A: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B5727: FFreeVar var_B4 = ""
  loc_6B572E: FLdRfVar var_1E4
  loc_6B5731: FLdRfVar var_1E0
  loc_6B5734: LitVarI2 var_D4, 6
  loc_6B5739: FLdPrThis
  loc_6B573A: VCallAd Control_ID_Imagenes
  loc_6B573D: FStAdFunc var_88
  loc_6B5740: FLdPr var_88
  loc_6B5743: LateIdLdVar var_B4 DispID_4 0
  loc_6B574A: CastAdVar Me
  loc_6B574E: FStAdFunc var_1DC
  loc_6B5751: FLdPr var_1DC
  loc_6B5754:  = Me.ListImages.ControlDefault
  loc_6B5759: FLdPr var_1E0
  loc_6B575C:  = Me.Picture
  loc_6B5761: FLdZeroAd var_1E4
  loc_6B5764: FStAdFuncNoPop
  loc_6B5767: FLdPrThis
  loc_6B5768: VCallAd Control_ID_cmdBorra
  loc_6B576B: FStAdFunc var_1EC
  loc_6B576E: FLdPr var_1EC
  loc_6B5771: Me.Picture = from_stack_1
  loc_6B5776: FFreeAd var_88 = "": var_1DC = "": var_1E0 = "": var_1E8 = ""
  loc_6B5783: FFreeVar var_B4 = ""
  loc_6B578A: ExitProcHresult
End Sub

Private Sub Form_Activate() '5F1430
  'Data Table: 4374D4
  loc_5F1394: FLdRfVar var_92
  loc_5F1397: FLdRfVar var_88
  loc_5F139A: FLdRfVar var_90
  loc_5F139D: ImpAdLdRf MemVar_74C760
  loc_5F13A0: NewIfNullPr Formx
  loc_5F13A3: from_stack_1v = Formx.global_4589716Get()
  loc_5F13A8: FLdPr var_90
  loc_5F13AB:  = Formx.WhatsThisHelp
  loc_5F13B0: FLdI2 var_92
  loc_5F13B3: NotI4
  loc_5F13B4: FFree1Ad var_90
  loc_5F13B7: BranchF loc_5F13E6
  loc_5F13BA: FLdRfVar var_A4
  loc_5F13BD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F13C2: FLdRfVar var_A4
  loc_5F13C5: CBoolVarNull
  loc_5F13C7: FFree1Var var_A4 = ""
  loc_5F13CA: BranchF loc_5F13E3
  loc_5F13CD: ILdRf Me
  loc_5F13D0: FStAdNoPop
  loc_5F13D4: ImpAdLdRf MemVar_7520D4
  loc_5F13D7: NewIfNullPr Global
  loc_5F13DA: Global.Unload from_stack_1
  loc_5F13DF: FFree1Ad var_90
  loc_5F13E2: ExitProcHresult
  loc_5F13E3: Branch loc_5F1394
  loc_5F13E6: LitI2_Byte 0
  loc_5F13E8: FLdPr Me
  loc_5F13EB: MemStI2 global_56
  loc_5F13EE: FLdRfVar var_88
  loc_5F13F1: from_stack_2v = Proc_30_15_624E8C(from_stack_1v)
  loc_5F13F6: from_stack_1v = Proc_30_22_5E467C()
  loc_5F13FB: LitI2_Byte &HFF
  loc_5F13FD: FLdPr Me
  loc_5F1400: MemStI2 global_58
  loc_5F1403: FLdPr Me
  loc_5F1406: MemLdI2 global_56
  loc_5F1409: FLdPrThis
  loc_5F140A: VCallAd Control_ID_lstNombres
  loc_5F140D: FStAdFunc var_90
  loc_5F1410: FLdPr var_90
  loc_5F1413: Me.ListIndex = from_stack_1
  loc_5F1418: FFree1Ad var_90
  loc_5F141B: LitI2_Byte 0
  loc_5F141D: FLdPr Me
  loc_5F1420: MemStI2 global_58
  loc_5F1423: FLdPr Me
  loc_5F1426: MemLdI2 global_56
  loc_5F1429: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5F142E: ExitProcHresult
End Sub

Private Sub lstNombres_Click() '5E3BF4
  'Data Table: 4374D4
  loc_5E3B8C: FLdPr Me
  loc_5E3B8F: MemLdI2 global_58
  loc_5E3B92: NotI4
  loc_5E3B93: BranchF loc_5E3BF1
  loc_5E3B96: FLdRfVar var_86
  loc_5E3B99: FLdPr Me
  loc_5E3B9C: MemLdI2 global_56
  loc_5E3B9F: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5E3BA4: FLdI2 var_86
  loc_5E3BA7: BranchF loc_5E3BE6
  loc_5E3BAA: FLdRfVar var_86
  loc_5E3BAD: FLdPrThis
  loc_5E3BAE: VCallAd Control_ID_lstNombres
  loc_5E3BB1: FStAdFunc var_8C
  loc_5E3BB4: FLdPr var_8C
  loc_5E3BB7:  = Me.ListIndex
  loc_5E3BBC: FLdI2 var_86
  loc_5E3BBF: LitI2_Byte &HFF
  loc_5E3BC1: GtI2
  loc_5E3BC2: FFree1Ad var_8C
  loc_5E3BC5: BranchF loc_5E3BE6
  loc_5E3BC8: FLdRfVar var_86
  loc_5E3BCB: FLdPrThis
  loc_5E3BCC: VCallAd Control_ID_lstNombres
  loc_5E3BCF: FStAdFunc var_8C
  loc_5E3BD2: FLdPr var_8C
  loc_5E3BD5:  = Me.ListIndex
  loc_5E3BDA: FLdI2 var_86
  loc_5E3BDD: FLdPr Me
  loc_5E3BE0: MemStI2 global_56
  loc_5E3BE3: FFree1Ad var_8C
  loc_5E3BE6: FLdPr Me
  loc_5E3BE9: MemLdI2 global_56
  loc_5E3BEC: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5E3BF1: ExitProcHresult
End Sub

Private Sub txtUsuario_GotFocus() '5D09C8
  'Data Table: 4374D4
  loc_5D09B4: FLdPrThis
  loc_5D09B5: VCallAd Control_ID_txtUsuario
  loc_5D09B8: FStAdFunc var_88
  loc_5D09BB: FLdRfVar var_88
  loc_5D09BE: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D09C3: FFree1Ad var_88
  loc_5D09C6: ExitProcHresult
End Sub

Private Sub txtUsuario_KeyPress(KeyAscii As Integer) '5CF0A8
  'Data Table: 4374D4
  loc_5CF094: FLdRfVar var_86
  loc_5CF097: ILdI2 KeyAscii
  loc_5CF09A: from_stack_2v = Proc_30_20_5DF330(from_stack_1v)
  loc_5CF09F: FLdI2 var_86
  loc_5CF0A2: IStI2 KeyAscii
  loc_5CF0A5: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '626C00
  'Data Table: 4374D4
  loc_626A90: LitI4 0
  loc_626A95: FLdPr Me
  loc_626A98: MemLdStr global_52
  loc_626A9B: Ary1LdI4
  loc_626A9C: LitStr ","
  loc_626A9F: EqStr
  loc_626AA1: FLdRfVar var_90
  loc_626AA4: FLdPrThis
  loc_626AA5: VCallAd Control_ID_txtNombrePlayero
  loc_626AA8: FStAdFunc var_8C
  loc_626AAB: FLdPr var_8C
  loc_626AAE:  = Me.Text
  loc_626AB3: ILdRf var_90
  loc_626AB6: ImpAdCallI2 Trim$()
  loc_626ABB: FStStrNoPop var_94
  loc_626ABE: LitStr vbNullString
  loc_626AC1: EqStr
  loc_626AC3: AndI4
  loc_626AC4: FLdRfVar var_9C
  loc_626AC7: FLdPrThis
  loc_626AC8: VCallAd Control_ID_txtUsuario
  loc_626ACB: FStAdFunc var_98
  loc_626ACE: FLdPr var_98
  loc_626AD1:  = Me.Text
  loc_626AD6: ILdRf var_9C
  loc_626AD9: ImpAdCallI2 Trim$()
  loc_626ADE: FStStrNoPop var_A0
  loc_626AE1: LitStr vbNullString
  loc_626AE4: EqStr
  loc_626AE6: AndI4
  loc_626AE7: FFreeStr var_90 = "": var_94 = "": var_9C = ""
  loc_626AF2: FFreeAd var_8C = ""
  loc_626AF9: BranchF loc_626B6C
  loc_626AFC: LitStr vbNullString
  loc_626AFF: FStStrCopy var_88
  loc_626B02: FLdRfVar var_A2
  loc_626B05: ILdRf var_88
  loc_626B08: FLdRfVar var_8C
  loc_626B0B: ImpAdLdRf MemVar_74C760
  loc_626B0E: NewIfNullPr Formx
  loc_626B11: from_stack_1v = Formx.global_4589716Get()
  loc_626B16: FLdPr var_8C
  loc_626B19: Call 0.Method_arg_25C ()
  loc_626B1E: FLdI2 var_A2
  loc_626B21: NotI4
  loc_626B22: FFree1Ad var_8C
  loc_626B25: BranchF loc_626B54
  loc_626B28: FLdRfVar var_B4
  loc_626B2B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_626B30: FLdRfVar var_B4
  loc_626B33: CBoolVarNull
  loc_626B35: FFree1Var var_B4 = ""
  loc_626B38: BranchF loc_626B51
  loc_626B3B: ILdRf Me
  loc_626B3E: FStAdNoPop
  loc_626B42: ImpAdLdRf MemVar_7520D4
  loc_626B45: NewIfNullPr Global
  loc_626B48: Global.Unload from_stack_1
  loc_626B4D: FFree1Ad var_8C
  loc_626B50: ExitProcHresult
  loc_626B51: Branch loc_626B02
  loc_626B54: ILdRf Me
  loc_626B57: FStAdNoPop
  loc_626B5B: ImpAdLdRf MemVar_7520D4
  loc_626B5E: NewIfNullPr Global
  loc_626B61: Global.Unload from_stack_1
  loc_626B66: FFree1Ad var_8C
  loc_626B69: Branch loc_626BFD
  loc_626B6C: FLdRfVar var_A2
  loc_626B6F: FLdPr Me
  loc_626B72: MemLdI2 global_56
  loc_626B75: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_626B7A: FLdI2 var_A2
  loc_626B7D: BranchF loc_626BF2
  loc_626B80: FLdRfVar var_88
  loc_626B83: from_stack_2v = Proc_30_19_60F244(from_stack_1v)
  loc_626B88: FLdRfVar var_A2
  loc_626B8B: ILdRf var_88
  loc_626B8E: FLdRfVar var_8C
  loc_626B91: ImpAdLdRf MemVar_74C760
  loc_626B94: NewIfNullPr Formx
  loc_626B97: from_stack_1v = Formx.global_4589716Get()
  loc_626B9C: FLdPr var_8C
  loc_626B9F: Call 0.Method_arg_25C ()
  loc_626BA4: FLdI2 var_A2
  loc_626BA7: NotI4
  loc_626BA8: FFree1Ad var_8C
  loc_626BAB: BranchF loc_626BDA
  loc_626BAE: FLdRfVar var_B4
  loc_626BB1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_626BB6: FLdRfVar var_B4
  loc_626BB9: CBoolVarNull
  loc_626BBB: FFree1Var var_B4 = ""
  loc_626BBE: BranchF loc_626BD7
  loc_626BC1: ILdRf Me
  loc_626BC4: FStAdNoPop
  loc_626BC8: ImpAdLdRf MemVar_7520D4
  loc_626BCB: NewIfNullPr Global
  loc_626BCE: Global.Unload from_stack_1
  loc_626BD3: FFree1Ad var_8C
  loc_626BD6: ExitProcHresult
  loc_626BD7: Branch loc_626B88
  loc_626BDA: ILdRf Me
  loc_626BDD: FStAdNoPop
  loc_626BE1: ImpAdLdRf MemVar_7520D4
  loc_626BE4: NewIfNullPr Global
  loc_626BE7: Global.Unload from_stack_1
  loc_626BEC: FFree1Ad var_8C
  loc_626BEF: Branch loc_626BFD
  loc_626BF2: FLdPr Me
  loc_626BF5: MemLdI2 global_56
  loc_626BF8: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_626BFD: ExitProcHresult
End Sub

Private Sub cmdPrimero_Click() '5E3128
  'Data Table: 4374D4
  loc_5E30C4: FLdPr Me
  loc_5E30C7: MemLdI2 global_56
  loc_5E30CA: LitI2_Byte 0
  loc_5E30CC: EqI2
  loc_5E30CD: BranchF loc_5E30D8
  loc_5E30D0: ImpAdCallFPR4 Beep()
  loc_5E30D5: Branch loc_5E3127
  loc_5E30D8: FLdRfVar var_86
  loc_5E30DB: FLdPr Me
  loc_5E30DE: MemLdI2 global_56
  loc_5E30E1: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5E30E6: FLdI2 var_86
  loc_5E30E9: BranchF loc_5E311C
  loc_5E30EC: LitI2_Byte 0
  loc_5E30EE: FLdPr Me
  loc_5E30F1: MemStI2 global_56
  loc_5E30F4: LitI2_Byte &HFF
  loc_5E30F6: FLdPr Me
  loc_5E30F9: MemStI2 global_58
  loc_5E30FC: FLdPr Me
  loc_5E30FF: MemLdI2 global_56
  loc_5E3102: FLdPrThis
  loc_5E3103: VCallAd Control_ID_lstNombres
  loc_5E3106: FStAdFunc var_8C
  loc_5E3109: FLdPr var_8C
  loc_5E310C: Me.ListIndex = from_stack_1
  loc_5E3111: FFree1Ad var_8C
  loc_5E3114: LitI2_Byte 0
  loc_5E3116: FLdPr Me
  loc_5E3119: MemStI2 global_58
  loc_5E311C: FLdPr Me
  loc_5E311F: MemLdI2 global_56
  loc_5E3122: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5E3127: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D2BE4
  'Data Table: 4374D4
  loc_5D2BCC: ILdRf Me
  loc_5D2BCF: FStAdNoPop
  loc_5D2BD3: ImpAdLdRf MemVar_7520D4
  loc_5D2BD6: NewIfNullPr Global
  loc_5D2BD9: Global.Unload from_stack_1
  loc_5D2BDE: FFree1Ad var_88
  loc_5D2BE1: ExitProcHresult
End Sub

Private Sub cmdAnterior_Click() '5E4354
  'Data Table: 4374D4
  loc_5E42E8: FLdPr Me
  loc_5E42EB: MemLdI2 global_56
  loc_5E42EE: LitI2_Byte 0
  loc_5E42F0: EqI2
  loc_5E42F1: BranchF loc_5E42FC
  loc_5E42F4: ImpAdCallFPR4 Beep()
  loc_5E42F9: Branch loc_5E4352
  loc_5E42FC: FLdRfVar var_86
  loc_5E42FF: FLdPr Me
  loc_5E4302: MemLdI2 global_56
  loc_5E4305: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5E430A: FLdI2 var_86
  loc_5E430D: BranchF loc_5E4347
  loc_5E4310: FLdPr Me
  loc_5E4313: MemLdI2 global_56
  loc_5E4316: LitI2_Byte 1
  loc_5E4318: SubI2
  loc_5E4319: FLdPr Me
  loc_5E431C: MemStI2 global_56
  loc_5E431F: LitI2_Byte &HFF
  loc_5E4321: FLdPr Me
  loc_5E4324: MemStI2 global_58
  loc_5E4327: FLdPr Me
  loc_5E432A: MemLdI2 global_56
  loc_5E432D: FLdPrThis
  loc_5E432E: VCallAd Control_ID_lstNombres
  loc_5E4331: FStAdFunc var_8C
  loc_5E4334: FLdPr var_8C
  loc_5E4337: Me.ListIndex = from_stack_1
  loc_5E433C: FFree1Ad var_8C
  loc_5E433F: LitI2_Byte 0
  loc_5E4341: FLdPr Me
  loc_5E4344: MemStI2 global_58
  loc_5E4347: FLdPr Me
  loc_5E434A: MemLdI2 global_56
  loc_5E434D: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5E4352: ExitProcHresult
End Sub

Private Sub cmdAgrega_Click() '5EA388
  'Data Table: 4374D4
  loc_5EA2FC: FLdRfVar var_86
  loc_5EA2FF: FLdPr Me
  loc_5EA302: MemLdI2 global_56
  loc_5EA305: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5EA30A: FLdI2 var_86
  loc_5EA30D: BranchF loc_5EA37B
  loc_5EA310: LitI4 0
  loc_5EA315: FLdPr Me
  loc_5EA318: MemLdStr global_52
  loc_5EA31B: LitI2_Byte 1
  loc_5EA31D: FnUBound
  loc_5EA31F: LitI4 1
  loc_5EA324: AddI4
  loc_5EA325: FLdPr Me
  loc_5EA328: MemLdRfVar from_stack_1.global_52
  loc_5EA32B: RedimPreserve
  loc_5EA335: FLdPr Me
  loc_5EA338: MemLdStr global_52
  loc_5EA33B: LitI2_Byte 1
  loc_5EA33D: FnUBound
  loc_5EA33F: CI2I4
  loc_5EA340: FLdPr Me
  loc_5EA343: MemStI2 global_56
  loc_5EA346: LitI2_Byte &HFF
  loc_5EA348: FLdPr Me
  loc_5EA34B: MemStI2 global_58
  loc_5EA34E: LitI2_Byte &HFF
  loc_5EA350: FLdPrThis
  loc_5EA351: VCallAd Control_ID_lstNombres
  loc_5EA354: FStAdFunc var_8C
  loc_5EA357: FLdPr var_8C
  loc_5EA35A: Me.ListIndex = from_stack_1
  loc_5EA35F: FFree1Ad var_8C
  loc_5EA362: LitI2_Byte 0
  loc_5EA364: FLdPr Me
  loc_5EA367: MemStI2 global_58
  loc_5EA36A: LitStr ","
  loc_5EA36D: FLdPr Me
  loc_5EA370: MemLdI2 global_56
  loc_5EA373: CI4UI1
  loc_5EA374: FLdPr Me
  loc_5EA377: MemLdStr global_52
  loc_5EA37A: Ary1StStrCopy
  loc_5EA37B: FLdPr Me
  loc_5EA37E: MemLdI2 global_56
  loc_5EA381: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5EA386: ExitProcHresult
End Sub

Private Sub cmdBorra_Click() '601E30
  'Data Table: 4374D4
  loc_601D64: FLdRfVar var_8C
  loc_601D67: FLdPrThis
  loc_601D68: VCallAd Control_ID_txtNombrePlayero
  loc_601D6B: FStAdFunc var_88
  loc_601D6E: FLdPr var_88
  loc_601D71:  = Me.Text
  loc_601D76: ILdRf var_8C
  loc_601D79: ImpAdCallI2 Trim$()
  loc_601D7E: FStStrNoPop var_90
  loc_601D81: LitStr vbNullString
  loc_601D84: EqStr
  loc_601D86: FLdRfVar var_98
  loc_601D89: FLdPrThis
  loc_601D8A: VCallAd Control_ID_txtUsuario
  loc_601D8D: FStAdFunc var_94
  loc_601D90: FLdPr var_94
  loc_601D93:  = Me.Text
  loc_601D98: ILdRf var_98
  loc_601D9B: ImpAdCallI2 Trim$()
  loc_601DA0: FStStrNoPop var_9C
  loc_601DA3: LitStr vbNullString
  loc_601DA6: EqStr
  loc_601DA8: AndI4
  loc_601DA9: FFreeStr var_8C = "": var_90 = "": var_98 = ""
  loc_601DB4: FFreeAd var_88 = ""
  loc_601DBB: BranchF loc_601DD4
  loc_601DBE: FLdPr Me
  loc_601DC1: MemLdI2 global_56
  loc_601DC4: from_stack_2v = Proc_30_21_5EAB0C(from_stack_1v)
  loc_601DC9: LitI2_Byte 0
  loc_601DCB: FLdPr Me
  loc_601DCE: MemStI2 global_56
  loc_601DD1: Branch loc_601DFB
  loc_601DD4: FLdRfVar var_9E
  loc_601DD7: FLdPr Me
  loc_601DDA: MemLdI2 global_56
  loc_601DDD: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_601DE2: FLdI2 var_9E
  loc_601DE5: BranchF loc_601DFB
  loc_601DE8: FLdPr Me
  loc_601DEB: MemLdI2 global_56
  loc_601DEE: from_stack_2v = Proc_30_21_5EAB0C(from_stack_1v)
  loc_601DF3: LitI2_Byte 0
  loc_601DF5: FLdPr Me
  loc_601DF8: MemStI2 global_56
  loc_601DFB: LitI2_Byte &HFF
  loc_601DFD: FLdPr Me
  loc_601E00: MemStI2 global_58
  loc_601E03: FLdPr Me
  loc_601E06: MemLdI2 global_56
  loc_601E09: FLdPrThis
  loc_601E0A: VCallAd Control_ID_lstNombres
  loc_601E0D: FStAdFunc var_88
  loc_601E10: FLdPr var_88
  loc_601E13: Me.ListIndex = from_stack_1
  loc_601E18: FFree1Ad var_88
  loc_601E1B: LitI2_Byte 0
  loc_601E1D: FLdPr Me
  loc_601E20: MemStI2 global_58
  loc_601E23: FLdPr Me
  loc_601E26: MemLdI2 global_56
  loc_601E29: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_601E2E: ExitProcHresult
End Sub

Private Sub cmdSiguiente_Click() '5E5AA0
  'Data Table: 4374D4
  loc_5E5A2C: FLdPr Me
  loc_5E5A2F: MemLdI2 global_56
  loc_5E5A32: CI4UI1
  loc_5E5A33: FLdPr Me
  loc_5E5A36: MemLdStr global_52
  loc_5E5A39: LitI2_Byte 1
  loc_5E5A3B: FnUBound
  loc_5E5A3D: EqI4
  loc_5E5A3E: BranchF loc_5E5A49
  loc_5E5A41: ImpAdCallFPR4 Beep()
  loc_5E5A46: Branch loc_5E5A9F
  loc_5E5A49: FLdRfVar var_86
  loc_5E5A4C: FLdPr Me
  loc_5E5A4F: MemLdI2 global_56
  loc_5E5A52: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5E5A57: FLdI2 var_86
  loc_5E5A5A: BranchF loc_5E5A94
  loc_5E5A5D: FLdPr Me
  loc_5E5A60: MemLdI2 global_56
  loc_5E5A63: LitI2_Byte 1
  loc_5E5A65: AddI2
  loc_5E5A66: FLdPr Me
  loc_5E5A69: MemStI2 global_56
  loc_5E5A6C: LitI2_Byte &HFF
  loc_5E5A6E: FLdPr Me
  loc_5E5A71: MemStI2 global_58
  loc_5E5A74: FLdPr Me
  loc_5E5A77: MemLdI2 global_56
  loc_5E5A7A: FLdPrThis
  loc_5E5A7B: VCallAd Control_ID_lstNombres
  loc_5E5A7E: FStAdFunc var_8C
  loc_5E5A81: FLdPr var_8C
  loc_5E5A84: Me.ListIndex = from_stack_1
  loc_5E5A89: FFree1Ad var_8C
  loc_5E5A8C: LitI2_Byte 0
  loc_5E5A8E: FLdPr Me
  loc_5E5A91: MemStI2 global_58
  loc_5E5A94: FLdPr Me
  loc_5E5A97: MemLdI2 global_56
  loc_5E5A9A: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5E5A9F: ExitProcHresult
End Sub

Private Sub cmdUltimo_Click() '5E5F4C
  'Data Table: 4374D4
  loc_5E5ED4: FLdPr Me
  loc_5E5ED7: MemLdI2 global_56
  loc_5E5EDA: CI4UI1
  loc_5E5EDB: FLdPr Me
  loc_5E5EDE: MemLdStr global_52
  loc_5E5EE1: LitI2_Byte 1
  loc_5E5EE3: FnUBound
  loc_5E5EE5: EqI4
  loc_5E5EE6: BranchF loc_5E5EF1
  loc_5E5EE9: ImpAdCallFPR4 Beep()
  loc_5E5EEE: Branch loc_5E5F49
  loc_5E5EF1: FLdRfVar var_86
  loc_5E5EF4: FLdPr Me
  loc_5E5EF7: MemLdI2 global_56
  loc_5E5EFA: from_stack_2v = Proc_30_17_65EA70(from_stack_1v)
  loc_5E5EFF: FLdI2 var_86
  loc_5E5F02: BranchF loc_5E5F3E
  loc_5E5F05: FLdPr Me
  loc_5E5F08: MemLdStr global_52
  loc_5E5F0B: LitI2_Byte 1
  loc_5E5F0D: FnUBound
  loc_5E5F0F: CI2I4
  loc_5E5F10: FLdPr Me
  loc_5E5F13: MemStI2 global_56
  loc_5E5F16: LitI2_Byte &HFF
  loc_5E5F18: FLdPr Me
  loc_5E5F1B: MemStI2 global_58
  loc_5E5F1E: FLdPr Me
  loc_5E5F21: MemLdI2 global_56
  loc_5E5F24: FLdPrThis
  loc_5E5F25: VCallAd Control_ID_lstNombres
  loc_5E5F28: FStAdFunc var_8C
  loc_5E5F2B: FLdPr var_8C
  loc_5E5F2E: Me.ListIndex = from_stack_1
  loc_5E5F33: FFree1Ad var_8C
  loc_5E5F36: LitI2_Byte 0
  loc_5E5F38: FLdPr Me
  loc_5E5F3B: MemStI2 global_58
  loc_5E5F3E: FLdPr Me
  loc_5E5F41: MemLdI2 global_56
  loc_5E5F44: from_stack_2v = Proc_30_16_5E4720(from_stack_1v)
  loc_5E5F49: ExitProcHresult
End Sub

Private Sub txtNombrePlayero_GotFocus() '5D08A8
  'Data Table: 4374D4
  loc_5D0894: FLdPrThis
  loc_5D0895: VCallAd Control_ID_txtNombrePlayero
  loc_5D0898: FStAdFunc var_88
  loc_5D089B: FLdRfVar var_88
  loc_5D089E: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D08A3: FFree1Ad var_88
  loc_5D08A6: ExitProcHresult
End Sub

Private Sub txtNombrePlayero_KeyPress(KeyAscii As Integer) '5D2DB0
  'Data Table: 4374D4
  loc_5D2D94: ILdI2 KeyAscii
  loc_5D2D97: LitI2_Byte &HD
  loc_5D2D99: EqI2
  loc_5D2D9A: BranchF loc_5D2DAF
  loc_5D2D9D: LitI2_Byte 0
  loc_5D2D9F: PopTmpLdAd2 var_86
  loc_5D2DA2: LitStr "{TAB}"
  loc_5D2DA5: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D2DAA: LitI2_Byte 0
  loc_5D2DAC: IStI2 KeyAscii
  loc_5D2DAF: ExitProcHresult
End Sub

Private Function Proc_30_15_624E8C(arg_C) '624E8C
  'Data Table: 4374D4
  loc_624D24: LitI4 0
  loc_624D29: LitI4 0
  loc_624D2E: FLdPr Me
  loc_624D31: MemLdRfVar from_stack_1.global_52
  loc_624D34: Redim
  loc_624D3E: LitStr ","
  loc_624D41: LitI4 0
  loc_624D46: FLdPr Me
  loc_624D49: MemLdStr global_52
  loc_624D4C: Ary1StStrCopy
  loc_624D4D: LitI2_Byte 1
  loc_624D4F: FStI2 var_86
  loc_624D52: FLdI2 var_86
  loc_624D55: CI4UI1
  loc_624D56: ILdI4 arg_C
  loc_624D59: FnLenStr
  loc_624D5A: LtI4
  loc_624D5B: BranchF loc_624E88
  loc_624D5E: LitI4 0
  loc_624D63: FLdPr Me
  loc_624D66: MemLdStr global_52
  loc_624D69: Ary1LdI4
  loc_624D6A: LitStr ","
  loc_624D6D: EqStr
  loc_624D6F: BranchF loc_624DE8
  loc_624D72: LitVarI2 var_A8, 40
  loc_624D77: FLdI2 var_86
  loc_624D7A: CI4UI1
  loc_624D7B: ILdI4 arg_C
  loc_624D7E: ImpAdCallI2 Mid$(, , )
  loc_624D83: FStStrNoPop var_AC
  loc_624D86: ImpAdCallI2 Trim$()
  loc_624D8B: FStStrNoPop var_B0
  loc_624D8E: LitStr ","
  loc_624D91: ConcatStr
  loc_624D92: FStStrNoPop var_D8
  loc_624D95: LitVarI2 var_D0, 4
  loc_624D9A: FLdI2 var_86
  loc_624D9D: LitI2_Byte &H28
  loc_624D9F: AddI2
  loc_624DA0: CI4UI1
  loc_624DA1: ILdI4 arg_C
  loc_624DA4: ImpAdCallI2 Mid$(, , )
  loc_624DA9: FStStrNoPop var_D4
  loc_624DAC: ImpAdCallFPR4 push Val()
  loc_624DB1: CStrR8
  loc_624DB3: FStStrNoPop var_DC
  loc_624DB6: ConcatStr
  loc_624DB7: FStStrNoPop var_E0
  loc_624DBA: LitI4 0
  loc_624DBF: FLdPr Me
  loc_624DC2: MemLdStr global_52
  loc_624DC5: Ary1StStrCopy
  loc_624DC6: FFreeStr var_AC = "": var_B0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_624DD5: FFreeVar var_A8 = ""
  loc_624DDC: FLdI2 var_86
  loc_624DDF: LitI2_Byte &H2C
  loc_624DE1: AddI2
  loc_624DE2: FStI2 var_86
  loc_624DE5: Branch loc_624E85
  loc_624DE8: LitI4 0
  loc_624DED: FLdPr Me
  loc_624DF0: MemLdStr global_52
  loc_624DF3: LitI2_Byte 1
  loc_624DF5: FnUBound
  loc_624DF7: LitI4 1
  loc_624DFC: AddI4
  loc_624DFD: FLdPr Me
  loc_624E00: MemLdRfVar from_stack_1.global_52
  loc_624E03: RedimPreserve
  loc_624E0D: LitVarI2 var_A8, 40
  loc_624E12: FLdI2 var_86
  loc_624E15: CI4UI1
  loc_624E16: ILdI4 arg_C
  loc_624E19: ImpAdCallI2 Mid$(, , )
  loc_624E1E: FStStrNoPop var_AC
  loc_624E21: ImpAdCallI2 Trim$()
  loc_624E26: FStStrNoPop var_B0
  loc_624E29: LitStr ","
  loc_624E2C: ConcatStr
  loc_624E2D: FStStrNoPop var_D8
  loc_624E30: LitVarI2 var_D0, 4
  loc_624E35: FLdI2 var_86
  loc_624E38: LitI2_Byte &H28
  loc_624E3A: AddI2
  loc_624E3B: CI4UI1
  loc_624E3C: ILdI4 arg_C
  loc_624E3F: ImpAdCallI2 Mid$(, , )
  loc_624E44: FStStrNoPop var_D4
  loc_624E47: ImpAdCallFPR4 push Val()
  loc_624E4C: CStrR8
  loc_624E4E: FStStrNoPop var_DC
  loc_624E51: ConcatStr
  loc_624E52: FStStrNoPop var_E0
  loc_624E55: FLdPr Me
  loc_624E58: MemLdStr global_52
  loc_624E5B: LitI2_Byte 1
  loc_624E5D: FnUBound
  loc_624E5F: FLdPr Me
  loc_624E62: MemLdStr global_52
  loc_624E65: Ary1StStrCopy
  loc_624E66: FFreeStr var_AC = "": var_B0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_624E75: FFreeVar var_A8 = ""
  loc_624E7C: FLdI2 var_86
  loc_624E7F: LitI2_Byte &H2C
  loc_624E81: AddI2
  loc_624E82: FStI2 var_86
  loc_624E85: Branch loc_624D52
  loc_624E88: ExitProcHresult
End Function

Private Function Proc_30_16_5E4720(arg_C) '5E4720
  'Data Table: 4374D4
  loc_5E46B8: LitI2_Byte 1
  loc_5E46BA: FLdI2 arg_C
  loc_5E46BD: CI4UI1
  loc_5E46BE: FLdPr Me
  loc_5E46C1: MemLdStr global_52
  loc_5E46C4: AryLock
  loc_5E46C7: Ary1LdRf
  loc_5E46C8: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_5E46CD: FStStr var_8C
  loc_5E46D0: AryUnlock
  loc_5E46D3: ILdRf var_8C
  loc_5E46D6: FLdPrThis
  loc_5E46D7: VCallAd Control_ID_txtNombrePlayero
  loc_5E46DA: FStAdFunc var_90
  loc_5E46DD: FLdPr var_90
  loc_5E46E0: Me.Text = from_stack_1
  loc_5E46E5: FFree1Str var_8C
  loc_5E46E8: FFree1Ad var_90
  loc_5E46EB: LitI2_Byte 2
  loc_5E46ED: FLdI2 arg_C
  loc_5E46F0: CI4UI1
  loc_5E46F1: FLdPr Me
  loc_5E46F4: MemLdStr global_52
  loc_5E46F7: AryLock
  loc_5E46FA: Ary1LdRf
  loc_5E46FB: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_5E4700: FStStr var_8C
  loc_5E4703: AryUnlock
  loc_5E4706: ILdRf var_8C
  loc_5E4709: FLdPrThis
  loc_5E470A: VCallAd Control_ID_txtUsuario
  loc_5E470D: FStAdFunc var_90
  loc_5E4710: FLdPr var_90
  loc_5E4713: Me.Text = from_stack_1
  loc_5E4718: FFree1Str var_8C
  loc_5E471B: FFree1Ad var_90
  loc_5E471E: ExitProcHresult
End Function

Private Function Proc_30_17_65EA70(arg_C) '65EA70
  'Data Table: 4374D4
  loc_65E770: FLdRfVar var_94
  loc_65E773: FLdPrThis
  loc_65E774: VCallAd Control_ID_txtNombrePlayero
  loc_65E777: FStAdFunc var_90
  loc_65E77A: FLdPr var_90
  loc_65E77D:  = Me.Text
  loc_65E782: ILdRf var_94
  loc_65E785: ImpAdCallI2 Trim$()
  loc_65E78A: FStStrNoPop var_98
  loc_65E78D: LitStr vbNullString
  loc_65E790: EqStr
  loc_65E792: FLdRfVar var_A0
  loc_65E795: FLdPrThis
  loc_65E796: VCallAd Control_ID_txtUsuario
  loc_65E799: FStAdFunc var_9C
  loc_65E79C: FLdPr var_9C
  loc_65E79F:  = Me.Text
  loc_65E7A4: ILdRf var_A0
  loc_65E7A7: ImpAdCallI2 Trim$()
  loc_65E7AC: FStStrNoPop var_A4
  loc_65E7AF: LitStr vbNullString
  loc_65E7B2: EqStr
  loc_65E7B4: OrI4
  loc_65E7B5: FFreeStr var_94 = "": var_98 = "": var_A0 = ""
  loc_65E7C0: FFreeAd var_90 = ""
  loc_65E7C7: BranchF loc_65E85B
  loc_65E7CA: FLdRfVar var_98
  loc_65E7CD: LitVar_Missing var_1EC
  loc_65E7D0: LitVar_Missing var_1CC
  loc_65E7D3: LitVar_Missing var_1AC
  loc_65E7D6: LitVar_Missing var_18C
  loc_65E7D9: LitVar_Missing var_16C
  loc_65E7DC: LitVar_Missing var_14C
  loc_65E7DF: LitVar_Missing var_12C
  loc_65E7E2: LitVar_Missing var_10C
  loc_65E7E5: LitVar_Missing var_EC
  loc_65E7E8: LitVar_Missing var_CC
  loc_65E7EB: LitStr "Debe ingresar los datos del playero. Verifique por favor."
  loc_65E7EE: FStStrCopy var_94
  loc_65E7F1: FLdRfVar var_94
  loc_65E7F4: LitI4 7
  loc_65E7F9: PopTmpLdAdStr var_AC
  loc_65E7FC: LitI2_Byte &H4A
  loc_65E7FE: PopTmpLdAd2 var_A6
  loc_65E801: ImpAdLdRf MemVar_74C7D0
  loc_65E804: NewIfNullPr clsMsg
  loc_65E807: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65E80C: FLdZeroAd var_98
  loc_65E80F: FStStr var_8C
  loc_65E812: FFree1Str var_94
  loc_65E815: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_65E82C: LitVar_Missing var_10C
  loc_65E82F: LitVar_Missing var_EC
  loc_65E832: LitVar_Missing var_CC
  loc_65E835: LitI4 &H40
  loc_65E83A: FLdRfVar var_8C
  loc_65E83D: CVarRef
  loc_65E842: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65E847: FFreeVar var_CC = "": var_EC = ""
  loc_65E850: LitI2_Byte 0
  loc_65E852: FStI2 var_86
  loc_65E855: ExitProcCbHresult
  loc_65E85B: FLdRfVar var_94
  loc_65E85E: FLdPrThis
  loc_65E85F: VCallAd Control_ID_txtNombrePlayero
  loc_65E862: FStAdFunc var_90
  loc_65E865: FLdPr var_90
  loc_65E868:  = Me.Text
  loc_65E86D: ILdRf var_94
  loc_65E870: ImpAdCallI2 Trim$()
  loc_65E875: FStStrNoPop var_A0
  loc_65E878: LitI2_Byte 1
  loc_65E87A: FLdI2 arg_C
  loc_65E87D: CI4UI1
  loc_65E87E: FLdPr Me
  loc_65E881: MemLdStr global_52
  loc_65E884: AryLock
  loc_65E887: Ary1LdRf
  loc_65E888: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_65E88D: FStStr var_98
  loc_65E890: AryUnlock
  loc_65E893: ILdRf var_98
  loc_65E896: EqStr
  loc_65E898: FLdRfVar var_A4
  loc_65E89B: FLdPrThis
  loc_65E89C: VCallAd Control_ID_txtUsuario
  loc_65E89F: FStAdFunc var_9C
  loc_65E8A2: FLdPr var_9C
  loc_65E8A5:  = Me.Text
  loc_65E8AA: ILdRf var_A4
  loc_65E8AD: ImpAdCallI2 Trim$()
  loc_65E8B2: FStStrNoPop var_1F4
  loc_65E8B5: CI2Str
  loc_65E8B7: LitStr "0"
  loc_65E8BA: LitI2_Byte 2
  loc_65E8BC: FLdI2 arg_C
  loc_65E8BF: CI4UI1
  loc_65E8C0: FLdPr Me
  loc_65E8C3: MemLdStr global_52
  loc_65E8C6: AryLock
  loc_65E8C9: Ary1LdRf
  loc_65E8CA: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_65E8CF: FStStr var_1FC
  loc_65E8D2: AryUnlock
  loc_65E8D5: ILdRf var_1FC
  loc_65E8D8: ConcatStr
  loc_65E8D9: FStStrNoPop var_200
  loc_65E8DC: CI2Str
  loc_65E8DE: EqI2
  loc_65E8DF: AndI4
  loc_65E8E0: FFreeStr var_94 = "": var_A0 = "": var_98 = "": var_A4 = "": var_1F4 = "": var_1FC = ""
  loc_65E8F1: FFreeAd var_90 = ""
  loc_65E8F8: BranchF loc_65E906
  loc_65E8FB: LitI2_Byte &HFF
  loc_65E8FD: FStI2 var_86
  loc_65E900: ExitProcCbHresult
  loc_65E906: FLdRfVar var_A6
  loc_65E909: FLdI2 arg_C
  loc_65E90C: from_stack_2v = Proc_30_18_5F3E98(from_stack_1v)
  loc_65E911: FLdI2 var_A6
  loc_65E914: BranchF loc_65E9DD
  loc_65E917: FLdRfVar var_94
  loc_65E91A: FLdPrThis
  loc_65E91B: VCallAd Control_ID_txtNombrePlayero
  loc_65E91E: FStAdFunc var_90
  loc_65E921: FLdPr var_90
  loc_65E924:  = Me.Text
  loc_65E929: ILdRf var_94
  loc_65E92C: ImpAdCallI2 Trim$()
  loc_65E931: FStStrNoPop var_98
  loc_65E934: LitI2_Byte 1
  loc_65E936: FLdI2 arg_C
  loc_65E939: CI4UI1
  loc_65E93A: FLdPr Me
  loc_65E93D: MemLdStr global_52
  loc_65E940: AryLock
  loc_65E943: Ary1LdRf
  loc_65E944: ImpAdCallI2 Proc_53_20_61F004(, , )
  loc_65E949: FStStr var_A0
  loc_65E94C: AryUnlock
  loc_65E94F: ILdRf var_A0
  loc_65E952: FLdI2 arg_C
  loc_65E955: CI4UI1
  loc_65E956: FLdPr Me
  loc_65E959: MemLdStr global_52
  loc_65E95C: Ary1StStrCopy
  loc_65E95D: FFreeStr var_94 = "": var_98 = ""
  loc_65E966: FFree1Ad var_90
  loc_65E969: LitStr "0"
  loc_65E96C: FLdRfVar var_94
  loc_65E96F: FLdPrThis
  loc_65E970: VCallAd Control_ID_txtUsuario
  loc_65E973: FStAdFunc var_90
  loc_65E976: FLdPr var_90
  loc_65E979:  = Me.Text
  loc_65E97E: ILdRf var_94
  loc_65E981: ImpAdCallI2 Trim$()
  loc_65E986: FStStrNoPop var_98
  loc_65E989: ConcatStr
  loc_65E98A: FStStrNoPop var_A0
  loc_65E98D: ImpAdCallFPR4 push Val()
  loc_65E992: CStrR8
  loc_65E994: FStStrNoPop var_A4
  loc_65E997: LitI2_Byte 2
  loc_65E999: FLdI2 arg_C
  loc_65E99C: CI4UI1
  loc_65E99D: FLdPr Me
  loc_65E9A0: MemLdStr global_52
  loc_65E9A3: AryLock
  loc_65E9A6: Ary1LdRf
  loc_65E9A7: ImpAdCallI2 Proc_53_20_61F004(, , )
  loc_65E9AC: FStStr var_1F4
  loc_65E9AF: AryUnlock
  loc_65E9B2: ILdRf var_1F4
  loc_65E9B5: FLdI2 arg_C
  loc_65E9B8: CI4UI1
  loc_65E9B9: FLdPr Me
  loc_65E9BC: MemLdStr global_52
  loc_65E9BF: Ary1StStrCopy
  loc_65E9C0: FFreeStr var_94 = "": var_98 = "": var_A0 = "": var_A4 = ""
  loc_65E9CD: FFree1Ad var_90
  loc_65E9D0: LitI2_Byte &HFF
  loc_65E9D2: FStI2 var_86
  loc_65E9D5: from_stack_1v = Proc_30_22_5E467C()
  loc_65E9DA: Branch loc_65EA68
  loc_65E9DD: FLdRfVar var_98
  loc_65E9E0: LitVar_Missing var_1EC
  loc_65E9E3: LitVar_Missing var_1CC
  loc_65E9E6: LitVar_Missing var_1AC
  loc_65E9E9: LitVar_Missing var_18C
  loc_65E9EC: LitVar_Missing var_16C
  loc_65E9EF: LitVar_Missing var_14C
  loc_65E9F2: LitVar_Missing var_12C
  loc_65E9F5: LitVar_Missing var_10C
  loc_65E9F8: LitVar_Missing var_EC
  loc_65E9FB: LitVar_Missing var_CC
  loc_65E9FE: LitStr "No puede ingresar playeros con mismo número de grupo ni mismo número de usuario. Verifique por favor."
  loc_65EA01: FStStrCopy var_94
  loc_65EA04: FLdRfVar var_94
  loc_65EA07: LitI4 8
  loc_65EA0C: PopTmpLdAdStr var_AC
  loc_65EA0F: LitI2_Byte &H4A
  loc_65EA11: PopTmpLdAd2 var_A6
  loc_65EA14: ImpAdLdRf MemVar_74C7D0
  loc_65EA17: NewIfNullPr clsMsg
  loc_65EA1A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65EA1F: FLdZeroAd var_98
  loc_65EA22: FStStr var_8C
  loc_65EA25: FFree1Str var_94
  loc_65EA28: FFreeVar var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = ""
  loc_65EA3F: LitVar_Missing var_10C
  loc_65EA42: LitVar_Missing var_EC
  loc_65EA45: LitVar_Missing var_CC
  loc_65EA48: LitI4 &H40
  loc_65EA4D: FLdRfVar var_8C
  loc_65EA50: CVarRef
  loc_65EA55: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65EA5A: FFreeVar var_CC = "": var_EC = ""
  loc_65EA63: LitI2_Byte 0
  loc_65EA65: FStI2 var_86
  loc_65EA68: ExitProcCbHresult
End Function

Private Function Proc_30_18_5F3E98(arg_C) '5F3E98
  'Data Table: 4374D4
  loc_5F3DFC: LitI2_Byte 0
  loc_5F3DFE: FStI2 var_88
  loc_5F3E01: FLdI2 var_88
  loc_5F3E04: CI4UI1
  loc_5F3E05: FLdPr Me
  loc_5F3E08: MemLdStr global_52
  loc_5F3E0B: LitI2_Byte 1
  loc_5F3E0D: FnUBound
  loc_5F3E0F: LeI4
  loc_5F3E10: BranchF loc_5F3E8C
  loc_5F3E13: FLdI2 var_88
  loc_5F3E16: FLdI2 arg_C
  loc_5F3E19: NeI2
  loc_5F3E1A: BranchF loc_5F3E80
  loc_5F3E1D: FLdRfVar var_90
  loc_5F3E20: FLdPrThis
  loc_5F3E21: VCallAd Control_ID_txtUsuario
  loc_5F3E24: FStAdFunc var_8C
  loc_5F3E27: FLdPr var_8C
  loc_5F3E2A:  = Me.Text
  loc_5F3E2F: ILdRf var_90
  loc_5F3E32: ImpAdCallI2 Trim$()
  loc_5F3E37: FStStrNoPop var_94
  loc_5F3E3A: CI2Str
  loc_5F3E3C: LitStr "0"
  loc_5F3E3F: LitI2_Byte 2
  loc_5F3E41: FLdI2 var_88
  loc_5F3E44: CI4UI1
  loc_5F3E45: FLdPr Me
  loc_5F3E48: MemLdStr global_52
  loc_5F3E4B: AryLock
  loc_5F3E4E: Ary1LdRf
  loc_5F3E4F: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_5F3E54: FStStr var_9C
  loc_5F3E57: AryUnlock
  loc_5F3E5A: ILdRf var_9C
  loc_5F3E5D: ConcatStr
  loc_5F3E5E: FStStrNoPop var_A0
  loc_5F3E61: CI2Str
  loc_5F3E63: EqI2
  loc_5F3E64: FFreeStr var_90 = "": var_94 = "": var_9C = ""
  loc_5F3E6F: FFree1Ad var_8C
  loc_5F3E72: BranchF loc_5F3E80
  loc_5F3E75: LitI2_Byte 0
  loc_5F3E77: FStI2 var_86
  loc_5F3E7A: ExitProcCbHresult
  loc_5F3E80: FLdI2 var_88
  loc_5F3E83: LitI2_Byte 1
  loc_5F3E85: AddI2
  loc_5F3E86: FStI2 var_88
  loc_5F3E89: Branch loc_5F3E01
  loc_5F3E8C: LitI2_Byte &HFF
  loc_5F3E8E: FStI2 var_86
  loc_5F3E91: ExitProcCbHresult
End Function

Private Function Proc_30_19_60F244(arg_C) '60F244
  'Data Table: 4374D4
  loc_60F168: LitI2_Byte 0
  loc_60F16A: FLdRfVar var_86
  loc_60F16D: FLdPr Me
  loc_60F170: MemLdStr global_52
  loc_60F173: LitI2_Byte 1
  loc_60F175: FnUBound
  loc_60F177: CI2I4
  loc_60F178: ForI2 var_8A
  loc_60F17E: LitI2_Byte 1
  loc_60F180: FLdI2 var_86
  loc_60F183: CI4UI1
  loc_60F184: FLdPr Me
  loc_60F187: MemLdStr global_52
  loc_60F18A: AryLock
  loc_60F18D: Ary1LdRf
  loc_60F18E: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_60F193: FStStr var_94
  loc_60F196: AryUnlock
  loc_60F199: LitVarStr var_A4, "@"
  loc_60F19E: FStVarCopyObj var_B4
  loc_60F1A1: FLdRfVar var_B4
  loc_60F1A4: LitI4 &H28
  loc_60F1A9: ImpAdCallI2 String$(, )
  loc_60F1AE: FStStr var_120
  loc_60F1B1: LitI2_Byte 2
  loc_60F1B3: FLdI2 var_86
  loc_60F1B6: CI4UI1
  loc_60F1B7: FLdPr Me
  loc_60F1BA: MemLdStr global_52
  loc_60F1BD: AryLock
  loc_60F1C0: Ary1LdRf
  loc_60F1C1: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_60F1C6: FStStr var_E4
  loc_60F1C9: AryUnlock
  loc_60F1CC: ILdI4 arg_C
  loc_60F1CF: LitI4 1
  loc_60F1D4: LitI4 1
  loc_60F1D9: LitStr "!"
  loc_60F1DC: FLdZeroAd var_120
  loc_60F1DF: FStStrNoPop var_B8
  loc_60F1E2: ConcatStr
  loc_60F1E3: CVarStr var_D8
  loc_60F1E6: FLdZeroAd var_94
  loc_60F1E9: CVarStr var_C8
  loc_60F1EC: ImpAdCallI2 Format$(, )
  loc_60F1F1: FStStrNoPop var_DC
  loc_60F1F4: ConcatStr
  loc_60F1F5: FStStrNoPop var_118
  loc_60F1F8: LitI4 1
  loc_60F1FD: LitI4 1
  loc_60F202: LitVarStr var_104, "0000"
  loc_60F207: FStVarCopyObj var_114
  loc_60F20A: FLdRfVar var_114
  loc_60F20D: FLdZeroAd var_E4
  loc_60F210: CVarStr var_F4
  loc_60F213: ImpAdCallI2 Format$(, )
  loc_60F218: FStStrNoPop var_11C
  loc_60F21B: ConcatStr
  loc_60F21C: IStStr
  loc_60F220: FFreeStr var_B8 = "": var_DC = "": var_118 = "": var_11C = ""
  loc_60F22D: FFreeVar var_B4 = "": var_C8 = "": var_D8 = "": var_F4 = ""
  loc_60F23A: FLdRfVar var_86
  loc_60F23D: NextI2 var_8A, loc_60F17E
  loc_60F242: ExitProcHresult
End Function

Private Function Proc_30_20_5DF330(arg_C) '5DF330
  'Data Table: 4374D4
  loc_5DF2D8: FLdI2 arg_C
  loc_5DF2DB: FStI2 var_88
  loc_5DF2DE: FLdI2 var_88
  loc_5DF2E1: LitI2_Byte &HD
  loc_5DF2E3: EqI2
  loc_5DF2E4: BranchF loc_5DF2FC
  loc_5DF2E7: LitI2_Byte 0
  loc_5DF2E9: FStI2 var_86
  loc_5DF2EC: LitI2_Byte 0
  loc_5DF2EE: PopTmpLdAd2 var_8A
  loc_5DF2F1: LitStr "{TAB}"
  loc_5DF2F4: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DF2F9: Branch loc_5DF327
  loc_5DF2FC: FLdI2 var_88
  loc_5DF2FF: LitI4 &H30
  loc_5DF304: CI2I4
  loc_5DF305: LitI4 &H39
  loc_5DF30A: CI2I4
  loc_5DF30B: BetweenI2
  loc_5DF30D: BranchT loc_5DF319
  loc_5DF310: FLdI2 var_88
  loc_5DF313: LitI2_Byte 8
  loc_5DF315: EqI2
  loc_5DF316: BranchF loc_5DF322
  loc_5DF319: FLdI2 arg_C
  loc_5DF31C: FStI2 var_86
  loc_5DF31F: Branch loc_5DF327
  loc_5DF322: LitI2_Byte 0
  loc_5DF324: FStI2 var_86
  loc_5DF327: ExitProcCbHresult
End Function

Private Function Proc_30_21_5EAB0C(arg_C) '5EAB0C
  'Data Table: 4374D4
  loc_5EAA7C: FLdI2 arg_C
  loc_5EAA7F: FLdRfVar var_86
  loc_5EAA82: FLdPr Me
  loc_5EAA85: MemLdStr global_52
  loc_5EAA88: LitI2_Byte 1
  loc_5EAA8A: FnUBound
  loc_5EAA8C: LitI4 1
  loc_5EAA91: SubI4
  loc_5EAA92: CI2I4
  loc_5EAA93: ForI2 var_8A
  loc_5EAA99: FLdI2 var_86
  loc_5EAA9C: LitI2_Byte 1
  loc_5EAA9E: AddI2
  loc_5EAA9F: CI4UI1
  loc_5EAAA0: FLdPr Me
  loc_5EAAA3: MemLdStr global_52
  loc_5EAAA6: Ary1LdI4
  loc_5EAAA7: FLdI2 var_86
  loc_5EAAAA: CI4UI1
  loc_5EAAAB: FLdPr Me
  loc_5EAAAE: MemLdStr global_52
  loc_5EAAB1: Ary1StStrCopy
  loc_5EAAB2: FLdRfVar var_86
  loc_5EAAB5: NextI2 var_8A, loc_5EAA99
  loc_5EAABA: FLdPr Me
  loc_5EAABD: MemLdStr global_52
  loc_5EAAC0: LitI2_Byte 1
  loc_5EAAC2: FnUBound
  loc_5EAAC4: LitI4 0
  loc_5EAAC9: EqI4
  loc_5EAACA: BranchF loc_5EAADF
  loc_5EAACD: LitStr ","
  loc_5EAAD0: LitI4 0
  loc_5EAAD5: FLdPr Me
  loc_5EAAD8: MemLdStr global_52
  loc_5EAADB: Ary1StStrCopy
  loc_5EAADC: Branch loc_5EAB04
  loc_5EAADF: LitI4 0
  loc_5EAAE4: FLdPr Me
  loc_5EAAE7: MemLdStr global_52
  loc_5EAAEA: LitI2_Byte 1
  loc_5EAAEC: FnUBound
  loc_5EAAEE: LitI4 1
  loc_5EAAF3: SubI4
  loc_5EAAF4: FLdPr Me
  loc_5EAAF7: MemLdRfVar from_stack_1.global_52
  loc_5EAAFA: RedimPreserve
  loc_5EAB04: from_stack_1v = Proc_30_22_5E467C()
  loc_5EAB09: ExitProcHresult
End Function

Private Function Proc_30_22_5E467C() '5E467C
  'Data Table: 4374D4
  loc_5E4614: FLdPrThis
  loc_5E4615: VCallAd Control_ID_lstNombres
  loc_5E4618: FStAdFunc var_8C
  loc_5E461B: FLdPr var_8C
  loc_5E461E: Me.Clear
  loc_5E4623: FFree1Ad var_8C
  loc_5E4626: LitI2_Byte 0
  loc_5E4628: FLdRfVar var_86
  loc_5E462B: FLdPr Me
  loc_5E462E: MemLdStr global_52
  loc_5E4631: LitI2_Byte 1
  loc_5E4633: FnUBound
  loc_5E4635: CI2I4
  loc_5E4636: ForI2 var_90
  loc_5E463C: LitI2_Byte 1
  loc_5E463E: FLdI2 var_86
  loc_5E4641: CI4UI1
  loc_5E4642: FLdPr Me
  loc_5E4645: MemLdStr global_52
  loc_5E4648: AryLock
  loc_5E464B: Ary1LdRf
  loc_5E464C: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_5E4651: FStStr var_98
  loc_5E4654: AryUnlock
  loc_5E4657: LitVar_Missing var_A8
  loc_5E465A: PopAdLdVar
  loc_5E465B: ILdRf var_98
  loc_5E465E: FLdPrThis
  loc_5E465F: VCallAd Control_ID_lstNombres
  loc_5E4662: FStAdFunc var_8C
  loc_5E4665: FLdPr var_8C
  loc_5E4668: Me.AddItem from_stack_1, from_stack_2
  loc_5E466D: FFree1Str var_98
  loc_5E4670: FFree1Ad var_8C
  loc_5E4673: FLdRfVar var_86
  loc_5E4676: NextI2 var_90, loc_5E463C
  loc_5E467B: ExitProcHresult
End Function
