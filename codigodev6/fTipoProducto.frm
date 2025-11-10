VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form fTipoProducto
  Caption = "Configuración de nombre y clasificación de productos"
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 285
  ClientTop = 510
  ClientWidth = 12090
  ClientHeight = 8850
  Begin VB.TextBox Text1
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 1155
    Width = 5295
    Height = 420
    TabIndex = 2
    MaxLength = 31
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 4770
    Width = 3405
    Height = 360
    TabIndex = 19
    List = "fTipoProducto.frx":0000
    ItemData = "fTipoProducto.frx":0086
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 4320
    Width = 3405
    Height = 360
    TabIndex = 17
    List = "fTipoProducto.frx":009C
    ItemData = "fTipoProducto.frx":0122
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 3870
    Width = 3405
    Height = 360
    TabIndex = 15
    List = "fTipoProducto.frx":0138
    ItemData = "fTipoProducto.frx":01BE
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 3420
    Width = 3405
    Height = 360
    TabIndex = 13
    List = "fTipoProducto.frx":01D4
    ItemData = "fTipoProducto.frx":025A
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 2970
    Width = 3405
    Height = 360
    TabIndex = 11
    List = "fTipoProducto.frx":0270
    ItemData = "fTipoProducto.frx":02F6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 2520
    Width = 3405
    Height = 360
    TabIndex = 9
    List = "fTipoProducto.frx":030C
    ItemData = "fTipoProducto.frx":0392
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 2040
    Width = 3405
    Height = 360
    TabIndex = 7
    List = "fTipoProducto.frx":03A8
    ItemData = "fTipoProducto.frx":042E
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 1620
    Width = 3405
    Height = 360
    TabIndex = 5
    List = "fTipoProducto.frx":0444
    ItemData = "fTipoProducto.frx":04CA
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 1170
    Width = 3405
    Height = 360
    TabIndex = 3
    List = "fTipoProducto.frx":04E0
    ItemData = "fTipoProducto.frx":0566
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin VB.TextBox Text1
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 4770
    Width = 5295
    Height = 390
    TabIndex = 18
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 4320
    Width = 5295
    Height = 390
    TabIndex = 16
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 3870
    Width = 5295
    Height = 390
    TabIndex = 14
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 7
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 3420
    Width = 5295
    Height = 390
    TabIndex = 12
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 2970
    Width = 5295
    Height = 390
    TabIndex = 10
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 2520
    Width = 5295
    Height = 390
    TabIndex = 8
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 2070
    Width = 5295
    Height = 390
    TabIndex = 6
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 1620
    Width = 5295
    Height = 390
    TabIndex = 4
    MaxLength = 31
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
  Begin VB.TextBox Text1
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2040
    Top = 720
    Width = 5295
    Height = 390
    TabIndex = 0
    MaxLength = 31
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
  Begin VB.ComboBox Combo1
    Style = 2
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 7680
    Top = 720
    Width = 3405
    Height = 360
    TabIndex = 1
    List = "fTipoProducto.frx":057C
    ItemData = "fTipoProducto.frx":0602
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    IntegralHeight = 0   'False
  End
  Begin Threed.SSCommand SSCommand2
    Left = 9000
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 23
    OleObjectBlob = "fTipoProducto.frx":0618
  End
  Begin Threed.SSCommand SSCommand1
    Left = 240
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 20
    OleObjectBlob = "fTipoProducto.frx":0683
  End
  Begin Threed.SSFrame SSFrame1
    Left = 240
    Top = 5280
    Width = 11055
    Height = 1815
    TabIndex = 24
    OleObjectBlob = "fTipoProducto.frx":06EF
    Begin VB.OptionButton OptionTanque
      Caption = "  Red Jacket"
      Index = 3
      Left = 480
      Top = 1200
      Width = 2895
      Height = 375
      TabIndex = 40
    End
    Begin VB.OptionButton OptionTanque
      Caption = "  Veeder Root"
      Index = 2
      Left = 7800
      Top = 600
      Width = 2895
      Height = 375
      TabIndex = 39
    End
    Begin VB.OptionButton OptionTanque
      Caption = "  EMCO"
      Index = 1
      Left = 4140
      Top = 600
      Width = 2895
      Height = 375
      TabIndex = 38
    End
    Begin VB.OptionButton OptionTanque
      Caption = "  No Instalado"
      Index = 0
      Left = 480
      Top = 600
      Width = 2895
      Height = 375
      TabIndex = 37
      Value = 255
    End
  End
  Begin Threed.SSCommand sscCancel
    Left = 6120
    Top = 7680
    Width = 2655
    Height = 735
    TabIndex = 22
    OleObjectBlob = "fTipoProducto.frx":075D
  End
  Begin Threed.SSCommand SSCommand3
    Left = 3120
    Top = 7680
    Width = 2655
    Height = 735
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "fTipoProducto.frx":07C2
  End
  Begin VB.Label Label2
    Caption = "Nombre  del  Producto"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 2040
    Top = 120
    Width = 5295
    Height = 405
    TabIndex = 35
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Clasificación"
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 7680
    Top = 120
    Width = 3405
    Height = 405
    TabIndex = 36
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Cod. 1"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 720
    Width = 1125
    Height = 390
    TabIndex = 25
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 2"
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 705
    Top = 1200
    Width = 1110
    Height = 375
    TabIndex = 26
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 3"
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 1620
    Width = 1125
    Height = 390
    TabIndex = 27
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 4"
    Index = 4
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 2070
    Width = 1125
    Height = 390
    TabIndex = 28
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 5"
    Index = 5
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 2520
    Width = 1125
    Height = 390
    TabIndex = 29
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 6"
    Index = 6
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 2970
    Width = 1125
    Height = 390
    TabIndex = 30
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 7"
    Index = 7
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 3420
    Width = 1125
    Height = 390
    TabIndex = 31
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 8"
    Index = 8
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 3870
    Width = 1125
    Height = 390
    TabIndex = 32
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 9"
    Index = 9
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 4320
    Width = 1125
    Height = 390
    TabIndex = 33
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Cod. 10"
    Index = 10
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 720
    Top = 4770
    Width = 1125
    Height = 390
    TabIndex = 34
    BorderStyle = 1 'Fixed Single
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
End

Attribute VB_Name = "fTipoProducto"


Private Sub sscCancel_UnknownEvent_8 '5D9D1C
  'Data Table: 42904C
  loc_5D9CE4: ImpAdLdRf MemVar_74A220
  loc_5D9CE7: NewIfNullPr clsProducts
  loc_5D9CEA: clsProducts.Height = from_stack_1s
  loc_5D9CEF: LitI2_Byte &HFF
  loc_5D9CF1: PopTmpLdAd2 var_86
  loc_5D9CF4: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_5D9CF9: LitI2_Byte &HFF
  loc_5D9CFB: ImpAdLdRf MemVar_74C760
  loc_5D9CFE: NewIfNullPr Formx
  loc_5D9D01: Call Formx.CanceladoPut(from_stack_1v)
  loc_5D9D06: ILdRf Me
  loc_5D9D09: FStAdNoPop
  loc_5D9D0D: ImpAdLdRf MemVar_7520D4
  loc_5D9D10: NewIfNullPr Global
  loc_5D9D13: Global.Unload from_stack_1
  loc_5D9D18: FFree1Ad var_8C
  loc_5D9D1B: ExitProcHresult
End Sub

Private Sub SSCommand3_UnknownEvent_8 '64D470
  'Data Table: 42904C
  loc_64D254: FLdRfVar var_88
  loc_64D257: ImpAdLdRf MemVar_74A220
  loc_64D25A: NewIfNullPr clsProducts
  loc_64D25D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_64D262: FLdI2 var_88
  loc_64D265: BranchF loc_64D459
  loc_64D268: ImpAdCallFPR4 Beep()
  loc_64D26D: FLdRfVar var_1D4
  loc_64D270: LitVar_Missing var_1D0
  loc_64D273: LitVar_Missing var_1B0
  loc_64D276: LitVar_Missing var_190
  loc_64D279: LitVar_Missing var_170
  loc_64D27C: LitVar_Missing var_150
  loc_64D27F: LitVar_Missing var_130
  loc_64D282: LitVar_Missing var_110
  loc_64D285: LitVar_Missing var_F0
  loc_64D288: LitVar_Missing var_D0
  loc_64D28B: LitVar_Missing var_B0
  loc_64D28E: LitStr "Presionando ""OK"" se borra la Configuración de este Menú."
  loc_64D291: FStStrCopy var_90
  loc_64D294: FLdRfVar var_90
  loc_64D297: LitI4 &H1A
  loc_64D29C: PopTmpLdAdStr var_8C
  loc_64D29F: LitI2_Byte &H3F
  loc_64D2A1: PopTmpLdAd2 var_88
  loc_64D2A4: ImpAdLdRf MemVar_74C7D0
  loc_64D2A7: NewIfNullPr clsMsg
  loc_64D2AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64D2AF: LitI4 &HD
  loc_64D2B4: FLdRfVar var_1E4
  loc_64D2B7: ImpAdCallFPR4  = Chr()
  loc_64D2BC: LitI4 &HA
  loc_64D2C1: FLdRfVar var_214
  loc_64D2C4: ImpAdCallFPR4  = Chr()
  loc_64D2C9: LitI4 &HD
  loc_64D2CE: FLdRfVar var_254
  loc_64D2D1: ImpAdCallFPR4  = Chr()
  loc_64D2D6: LitI4 &HA
  loc_64D2DB: FLdRfVar var_274
  loc_64D2DE: ImpAdCallFPR4  = Chr()
  loc_64D2E3: FLdRfVar var_3D4
  loc_64D2E6: LitVar_Missing var_3D0
  loc_64D2E9: LitVar_Missing var_3B0
  loc_64D2EC: LitVar_Missing var_390
  loc_64D2EF: LitVar_Missing var_370
  loc_64D2F2: LitVar_Missing var_350
  loc_64D2F5: LitVar_Missing var_330
  loc_64D2F8: LitVar_Missing var_310
  loc_64D2FB: LitVar_Missing var_2F0
  loc_64D2FE: LitVar_Missing var_2D0
  loc_64D301: LitVar_Missing var_2B0
  loc_64D304: LitStr "ADVERTENCIA"
  loc_64D307: FStStrCopy var_290
  loc_64D30A: FLdRfVar var_290
  loc_64D30D: LitI4 &H1B
  loc_64D312: PopTmpLdAdStr var_28C
  loc_64D315: LitI2_Byte &H3F
  loc_64D317: PopTmpLdAd2 var_286
  loc_64D31A: ImpAdLdRf MemVar_74C7D0
  loc_64D31D: NewIfNullPr clsMsg
  loc_64D320: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64D325: LitVar_Missing var_424
  loc_64D328: LitVar_Missing var_404
  loc_64D32B: FLdZeroAd var_3D4
  loc_64D32E: CVarStr var_3E4
  loc_64D331: LitI4 &H131
  loc_64D336: FLdZeroAd var_1D4
  loc_64D339: CVarStr var_1F4
  loc_64D33C: FLdRfVar var_1E4
  loc_64D33F: ConcatVar var_204
  loc_64D343: FLdRfVar var_214
  loc_64D346: ConcatVar var_224
  loc_64D34A: LitVarStr var_234, "Presionando ""CANCEL"" se aborta el proceso."
  loc_64D34F: ConcatVar var_244
  loc_64D353: FLdRfVar var_254
  loc_64D356: ConcatVar var_264
  loc_64D35A: FLdRfVar var_274
  loc_64D35D: ConcatVar var_284
  loc_64D361: ImpAdCallI2 MsgBox(, , , , )
  loc_64D366: CUI1I4
  loc_64D368: FStUI1 var_86
  loc_64D36C: FFreeStr var_90 = ""
  loc_64D373: FFreeVar var_3E4 = "": var_404 = "": var_424 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = ""
  loc_64D3B8: FLdUI1
  loc_64D3BC: CI4UI1
  loc_64D3BD: LitI4 1
  loc_64D3C2: EqI4
  loc_64D3C3: BranchF loc_64D459
  loc_64D3C6: LitI2_Byte 0
  loc_64D3C8: PopTmpLdAd2 var_88
  loc_64D3CB: ImpAdLdRf MemVar_74A220
  loc_64D3CE: NewIfNullPr clsProducts
  loc_64D3D1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_64D3D6: LitI2_Byte 0
  loc_64D3D8: CUI1I2
  loc_64D3DA: ImpAdStUI1 MemVar_74C1F0
  loc_64D3DE: LitI2_Byte 1
  loc_64D3E0: CUI1I2
  loc_64D3E2: FLdRfVar var_86
  loc_64D3E5: LitI2_Byte &HA
  loc_64D3E7: CUI1I2
  loc_64D3E9: ForUI1 var_428
  loc_64D3EF: LitI4 &H1E
  loc_64D3F4: ImpAdCallI2 Space$()
  loc_64D3F9: PopTmpLdAdStr
  loc_64D3FD: FLdUI1
  loc_64D401: CI2UI1
  loc_64D403: ImpAdLdRf MemVar_74A220
  loc_64D406: NewIfNullPr clsProducts
  loc_64D40E: FFree1Str var_90
  loc_64D411: LitI2_Byte 0
  loc_64D413: PopTmpLdAd2 var_88
  loc_64D416: FLdUI1
  loc_64D41A: CI2UI1
  loc_64D41C: ImpAdLdRf MemVar_74A220
  loc_64D41F: NewIfNullPr clsProducts
  loc_64D422: clsProducts = from_stack_1
  loc_64D427: FLdRfVar var_86
  loc_64D42A: NextUI1
  loc_64D430: Call Form_Activate()
  loc_64D435: FLdRfVar var_430
  loc_64D438: LitI2_Byte 1
  loc_64D43A: FLdPrThis
  loc_64D43B: VCallAd Control_ID_Text1
  loc_64D43E: FStAdFunc var_42C
  loc_64D441: FLdPr var_42C
  loc_64D444: Set from_stack_2 = Me(from_stack_1)
  loc_64D449: FLdPr var_430
  loc_64D44C: Me.SetFocus
  loc_64D451: FFreeAd var_42C = ""
  loc_64D458: ExitProcHresult
  loc_64D459: FLdPrThis
  loc_64D45A: VCallAd Control_ID_SSCommand2
  loc_64D45D: FStAdFunc var_42C
  loc_64D460: FLdPr var_42C
  loc_64D463: LateIdCall
  loc_64D46B: FFree1Ad var_42C
  loc_64D46E: ExitProcHresult
End Sub

Private Sub SSCommand1_UnknownEvent_8 '5E1A70
  'Data Table: 42904C
  loc_5E1A10: FLdPrThis
  loc_5E1A11: VCallAd Control_ID_SSCommand2
  loc_5E1A14: FStAdFunc var_88
  loc_5E1A17: FLdPr var_88
  loc_5E1A1A: LateIdCall
  loc_5E1A22: FFree1Ad var_88
  loc_5E1A25: ImpAdLdRf MemVar_74E150
  loc_5E1A28: NewIfNullPr fTipoProducto
  loc_5E1A2B: fTipoProducto.Hide
  loc_5E1A30: ImpAdLdUI1
  loc_5E1A34: CI2UI1
  loc_5E1A36: LitI2_Byte &H21
  loc_5E1A38: EqI2
  loc_5E1A39: BranchF loc_5E1A54
  loc_5E1A3C: LitVar_Missing var_A8
  loc_5E1A3F: PopAdLdVar
  loc_5E1A40: LitVarI2 var_98, 1
  loc_5E1A45: PopAdLdVar
  loc_5E1A46: ImpAdLdRf MemVar_74E344
  loc_5E1A49: NewIfNullPr fModelosCanal1
  loc_5E1A4C: fModelosCanal1.Show from_stack_1, from_stack_2
  loc_5E1A51: Branch loc_5E1A6E
  loc_5E1A54: from_stack_1v = Proc_163_20_5D94F4()
  loc_5E1A59: LitVar_Missing var_A8
  loc_5E1A5C: PopAdLdVar
  loc_5E1A5D: LitVarI2 var_98, 1
  loc_5E1A62: PopAdLdVar
  loc_5E1A63: ImpAdLdRf MemVar_74E3E0
  loc_5E1A66: NewIfNullPr fModelosCanal2
  loc_5E1A69: fModelosCanal2.Show from_stack_1, from_stack_2
  loc_5E1A6E: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_1 '5C989C
  'Data Table: 42904C
  loc_5C9890: LitI2_Byte 1
  loc_5C9892: CUI1I2
  loc_5C9894: FLdPr Me
  loc_5C9897: MemStUI1
  loc_5C989B: ExitProcHresult
End Sub

Private Sub SSCommand2_UnknownEvent_8 '6D62A4
  'Data Table: 42904C
  loc_6D585C: ImpAdLdUI1
  loc_6D5860: CI2UI1
  loc_6D5862: LitI2_Byte 4
  loc_6D5864: EqI2
  loc_6D5865: ImpAdLdUI1
  loc_6D5869: CI2UI1
  loc_6D586B: LitI2_Byte 5
  loc_6D586D: EqI2
  loc_6D586E: OrI4
  loc_6D586F: BranchF loc_6D58AE
  loc_6D5872: FLdRfVar var_98
  loc_6D5875: from_stack_1v = Proc_163_18_5E9F04()
  loc_6D587A: FLdI2 var_98
  loc_6D587D: LitI2_Byte 0
  loc_6D587F: GtI2
  loc_6D5880: NotI4
  loc_6D5881: BranchF loc_6D58AE
  loc_6D5884: LitVar_Missing var_118
  loc_6D5887: LitVar_Missing var_F8
  loc_6D588A: LitVar_Missing var_D8
  loc_6D588D: LitI4 &H40
  loc_6D5892: LitVarStr var_A8, "Existen surtidores GNC, debe configurarse un producto de este tipo"
  loc_6D5897: FStVarCopyObj var_B8
  loc_6D589A: FLdRfVar var_B8
  loc_6D589D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D58A2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6D58AD: ExitProcHresult
  loc_6D58AE: FLdPr Me
  loc_6D58B1: MemLdI2 global_70
  loc_6D58B4: FLdRfVar var_98
  loc_6D58B7: ImpAdLdRf MemVar_74A220
  loc_6D58BA: NewIfNullPr clsProducts
  loc_6D58BD: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D58C2: FLdI2 var_98
  loc_6D58C5: LtI2
  loc_6D58C6: BranchF loc_6D58FA
  loc_6D58C9: LitVar_Missing var_118
  loc_6D58CC: LitVar_Missing var_F8
  loc_6D58CF: LitVarStr var_C8, "Aviso"
  loc_6D58D4: FStVarCopyObj var_D8
  loc_6D58D7: FLdRfVar var_D8
  loc_6D58DA: LitI4 &H40
  loc_6D58DF: LitVarStr var_A8, "Los nuevos productos definidos tendran el precio minimo aplicable."
  loc_6D58E4: FStVarCopyObj var_B8
  loc_6D58E7: FLdRfVar var_B8
  loc_6D58EA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D58EF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6D58FA: Call CorregirIndices()
  loc_6D58FF: Call CargarProductos()
  loc_6D5904: FLdRfVar var_98
  loc_6D5907: from_stack_1v = GNCsinTelemedidores()
  loc_6D590C: FLdRfVar var_98
  loc_6D590F: from_stack_1v = GNCsinTelemedidores()
  loc_6D5914: FLdI2 var_98
  loc_6D5917: LitI2_Byte &HFF
  loc_6D5919: EqI2
  loc_6D591A: BranchF loc_6D5947
  loc_6D591D: LitVar_Missing var_118
  loc_6D5920: LitVar_Missing var_F8
  loc_6D5923: LitVar_Missing var_D8
  loc_6D5926: LitI4 &H10
  loc_6D592B: LitVarStr var_A8, "El producto es GNC, no puede existir un telemedidor configurado."
  loc_6D5930: FStVarCopyObj var_B8
  loc_6D5933: FLdRfVar var_B8
  loc_6D5936: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D593B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_6D5946: ExitProcHresult
  loc_6D5947: LitVarI2 var_E8, 0
  loc_6D594C: FLdRfVar var_94
  loc_6D594F: FLdRfVar var_98
  loc_6D5952: FLdPrThis
  loc_6D5953: VCallAd Control_ID_OptionTanque
  loc_6D5956: FStAdFunc var_11C
  loc_6D5959: FLdPr var_11C
  loc_6D595C: Call 0.Method_SSCommand2_UnknownEvent_8C ()
  loc_6D5961: FLdI2 var_98
  loc_6D5964: LitI2_Byte 1
  loc_6D5966: SubI2
  loc_6D5967: CVarI2 var_C8
  loc_6D596A: FFree1Ad var_11C
  loc_6D596D: ForVar var_13C
  loc_6D5973: FLdRfVar var_98
  loc_6D5976: FLdRfVar var_140
  loc_6D5979: FLdRfVar var_94
  loc_6D597C: CI2Var
  loc_6D597D: FLdPrThis
  loc_6D597E: VCallAd Control_ID_OptionTanque
  loc_6D5981: FStAdFunc var_11C
  loc_6D5984: FLdPr var_11C
  loc_6D5987: Set from_stack_2 = Me(from_stack_1)
  loc_6D598C: FLdPr var_140
  loc_6D598F:  = Me.Value
  loc_6D5994: FLdI2 var_98
  loc_6D5997: LitI2_Byte &HFF
  loc_6D5999: EqI2
  loc_6D599A: FFreeAd var_11C = ""
  loc_6D59A1: BranchF loc_6D59B0
  loc_6D59A4: FLdRfVar var_94
  loc_6D59A7: CUI1Var
  loc_6D59A9: ImpAdStUI1 MemVar_74C1F0
  loc_6D59AD: Branch loc_6D59B9
  loc_6D59B0: FLdRfVar var_94
  loc_6D59B3: NextStepVar var_13C
  loc_6D59B9: FLdRfVar var_98
  loc_6D59BC: ImpAdLdRf MemVar_74A220
  loc_6D59BF: NewIfNullPr clsProducts
  loc_6D59C2: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D59C7: FLdI2 var_98
  loc_6D59CA: BranchF loc_6D616E
  loc_6D59CD: ImpAdLdUI1
  loc_6D59D1: CBoolUI1
  loc_6D59D3: BranchF loc_6D5B6F
  loc_6D59D6: LitVarI2 var_E8, 1
  loc_6D59DB: FLdRfVar var_94
  loc_6D59DE: FLdRfVar var_98
  loc_6D59E1: ImpAdLdRf MemVar_74A220
  loc_6D59E4: NewIfNullPr clsProducts
  loc_6D59E7: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D59EC: FLdI2 var_98
  loc_6D59EF: CVarI2 var_C8
  loc_6D59F2: ForVar var_160
  loc_6D59F8: FLdRfVar var_164
  loc_6D59FB: FLdRfVar var_94
  loc_6D59FE: CI2Var
  loc_6D59FF: ImpAdLdRf MemVar_74A220
  loc_6D5A02: NewIfNullPr clsProducts
  loc_6D5A0A: ILdRf var_164
  loc_6D5A0D: LitStr vbNullString
  loc_6D5A10: NeStr
  loc_6D5A12: FLdRfVar var_98
  loc_6D5A15: FLdRfVar var_94
  loc_6D5A18: CI2Var
  loc_6D5A19: ImpAdLdRf MemVar_74A220
  loc_6D5A1C: NewIfNullPr clsProducts
  loc_6D5A1F:  = clsProducts.Name
  loc_6D5A24: FLdI2 var_98
  loc_6D5A27: LitI2_Byte 0
  loc_6D5A29: EqI2
  loc_6D5A2A: AndI4
  loc_6D5A2B: FFree1Str var_164
  loc_6D5A2E: BranchF loc_6D5B66
  loc_6D5A31: ImpAdCallFPR4 Beep()
  loc_6D5A36: FLdRfVar var_22C
  loc_6D5A39: LitVar_Missing var_228
  loc_6D5A3C: LitVar_Missing var_208
  loc_6D5A3F: LitVar_Missing var_1E8
  loc_6D5A42: LitVar_Missing var_1C8
  loc_6D5A45: LitVar_Missing var_1A8
  loc_6D5A48: LitVar_Missing var_188
  loc_6D5A4B: LitVar_Missing var_118
  loc_6D5A4E: LitVar_Missing var_F8
  loc_6D5A51: LitVar_Missing var_D8
  loc_6D5A54: LitVar_Missing var_B8
  loc_6D5A57: LitStr "Debe configurarse la Clasificación de Producto."
  loc_6D5A5A: FStStrCopy var_164
  loc_6D5A5D: FLdRfVar var_164
  loc_6D5A60: LitI4 &HA
  loc_6D5A65: PopTmpLdAdStr var_168
  loc_6D5A68: LitI2_Byte &H3F
  loc_6D5A6A: PopTmpLdAd2 var_98
  loc_6D5A6D: ImpAdLdRf MemVar_74C7D0
  loc_6D5A70: NewIfNullPr clsMsg
  loc_6D5A73: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5A78: LitI4 &HD
  loc_6D5A7D: FLdRfVar var_23C
  loc_6D5A80: ImpAdCallFPR4  = Chr()
  loc_6D5A85: LitI4 &HA
  loc_6D5A8A: FLdRfVar var_26C
  loc_6D5A8D: ImpAdCallFPR4  = Chr()
  loc_6D5A92: FLdRfVar var_3CC
  loc_6D5A95: LitVar_Missing var_3C8
  loc_6D5A98: LitVar_Missing var_3A8
  loc_6D5A9B: LitVar_Missing var_388
  loc_6D5A9E: LitVar_Missing var_368
  loc_6D5AA1: LitVar_Missing var_348
  loc_6D5AA4: LitVar_Missing var_328
  loc_6D5AA7: LitVar_Missing var_308
  loc_6D5AAA: LitVar_Missing var_2E8
  loc_6D5AAD: LitVar_Missing var_2C8
  loc_6D5AB0: LitVar_Missing var_2A8
  loc_6D5AB3: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_6D5AB6: FStStrCopy var_288
  loc_6D5AB9: FLdRfVar var_288
  loc_6D5ABC: LitI4 &HB
  loc_6D5AC1: PopTmpLdAdStr var_284
  loc_6D5AC4: LitI2_Byte &H3F
  loc_6D5AC6: PopTmpLdAd2 var_27E
  loc_6D5AC9: ImpAdLdRf MemVar_74C7D0
  loc_6D5ACC: NewIfNullPr clsMsg
  loc_6D5ACF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5AD4: LitVar_Missing var_41C
  loc_6D5AD7: LitVar_Missing var_3FC
  loc_6D5ADA: FLdZeroAd var_3CC
  loc_6D5ADD: CVarStr var_3DC
  loc_6D5AE0: LitI4 &H10
  loc_6D5AE5: FLdZeroAd var_22C
  loc_6D5AE8: CVarStr var_24C
  loc_6D5AEB: FLdRfVar var_23C
  loc_6D5AEE: ConcatVar var_25C
  loc_6D5AF2: FLdRfVar var_26C
  loc_6D5AF5: ConcatVar var_27C
  loc_6D5AF9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D5AFE: FFreeStr var_164 = ""
  loc_6D5B05: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_27C = "": var_3DC = "": var_3FC = ""
  loc_6D5B40: FLdRfVar var_140
  loc_6D5B43: FLdRfVar var_94
  loc_6D5B46: CI2Var
  loc_6D5B47: FLdPrThis
  loc_6D5B48: VCallAd Control_ID_Combo1
  loc_6D5B4B: FStAdFunc var_11C
  loc_6D5B4E: FLdPr var_11C
  loc_6D5B51: Set from_stack_2 = Me(from_stack_1)
  loc_6D5B56: FLdPr var_140
  loc_6D5B59: Me.SetFocus
  loc_6D5B5E: FFreeAd var_11C = ""
  loc_6D5B65: ExitProcHresult
  loc_6D5B66: FLdRfVar var_94
  loc_6D5B69: NextStepVar var_160
  loc_6D5B6F: LitVarI2 var_E8, 1
  loc_6D5B74: FLdRfVar var_94
  loc_6D5B77: LitVarI2 var_C8, 10
  loc_6D5B7C: ForVar var_43C
  loc_6D5B82: FLdRfVar var_164
  loc_6D5B85: FLdRfVar var_140
  loc_6D5B88: FLdRfVar var_94
  loc_6D5B8B: CI2Var
  loc_6D5B8C: FLdPrThis
  loc_6D5B8D: VCallAd Control_ID_Combo1
  loc_6D5B90: FStAdFunc var_11C
  loc_6D5B93: FLdPr var_11C
  loc_6D5B96: Set from_stack_2 = Me(from_stack_1)
  loc_6D5B9B: FLdPr var_140
  loc_6D5B9E:  = Me.Text
  loc_6D5BA3: FLdZeroAd var_164
  loc_6D5BA6: CVarStr var_B8
  loc_6D5BA9: FLdRfVar var_D8
  loc_6D5BAC: ImpAdCallFPR4  = Trim()
  loc_6D5BB1: FLdRfVar var_D8
  loc_6D5BB4: LitVarStr var_A8, vbNullString
  loc_6D5BB9: HardType
  loc_6D5BBA: EqVar var_F8
  loc_6D5BBE: FLdRfVar var_22C
  loc_6D5BC1: FLdRfVar var_444
  loc_6D5BC4: FLdRfVar var_94
  loc_6D5BC7: CI2Var
  loc_6D5BC8: FLdPrThis
  loc_6D5BC9: VCallAd Control_ID_Text1
  loc_6D5BCC: FStAdFunc var_440
  loc_6D5BCF: FLdPr var_440
  loc_6D5BD2: Set from_stack_2 = Me(from_stack_1)
  loc_6D5BD7: FLdPr var_444
  loc_6D5BDA:  = Me.Text
  loc_6D5BDF: FLdZeroAd var_22C
  loc_6D5BE2: CVarStr var_118
  loc_6D5BE5: FLdRfVar var_188
  loc_6D5BE8: ImpAdCallFPR4  = Trim()
  loc_6D5BED: FLdRfVar var_188
  loc_6D5BF0: LitVarStr var_C8, vbNullString
  loc_6D5BF5: HardType
  loc_6D5BF6: NeVar var_1A8
  loc_6D5BFA: AndVar var_1C8
  loc_6D5BFE: CBoolVarNull
  loc_6D5C00: FFreeAd var_11C = "": var_140 = "": var_440 = ""
  loc_6D5C0B: FFreeVar var_B8 = "": var_D8 = "": var_118 = ""
  loc_6D5C16: BranchF loc_6D5D24
  loc_6D5C19: FLdRfVar var_22C
  loc_6D5C1C: LitVar_Missing var_228
  loc_6D5C1F: LitVar_Missing var_208
  loc_6D5C22: LitVar_Missing var_1E8
  loc_6D5C25: LitVar_Missing var_1C8
  loc_6D5C28: LitVar_Missing var_1A8
  loc_6D5C2B: LitVar_Missing var_188
  loc_6D5C2E: LitVar_Missing var_118
  loc_6D5C31: LitVar_Missing var_F8
  loc_6D5C34: LitVar_Missing var_D8
  loc_6D5C37: LitVar_Missing var_B8
  loc_6D5C3A: LitStr "Debe configurarse la Clasificación de Producto."
  loc_6D5C3D: FStStrCopy var_164
  loc_6D5C40: FLdRfVar var_164
  loc_6D5C43: LitI4 &HA
  loc_6D5C48: PopTmpLdAdStr var_168
  loc_6D5C4B: LitI2_Byte &H3F
  loc_6D5C4D: PopTmpLdAd2 var_98
  loc_6D5C50: ImpAdLdRf MemVar_74C7D0
  loc_6D5C53: NewIfNullPr clsMsg
  loc_6D5C56: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5C5B: LitI4 &HD
  loc_6D5C60: FLdRfVar var_23C
  loc_6D5C63: ImpAdCallFPR4  = Chr()
  loc_6D5C68: LitI4 &HA
  loc_6D5C6D: FLdRfVar var_26C
  loc_6D5C70: ImpAdCallFPR4  = Chr()
  loc_6D5C75: FLdRfVar var_3CC
  loc_6D5C78: LitVar_Missing var_3C8
  loc_6D5C7B: LitVar_Missing var_3A8
  loc_6D5C7E: LitVar_Missing var_388
  loc_6D5C81: LitVar_Missing var_368
  loc_6D5C84: LitVar_Missing var_348
  loc_6D5C87: LitVar_Missing var_328
  loc_6D5C8A: LitVar_Missing var_308
  loc_6D5C8D: LitVar_Missing var_2E8
  loc_6D5C90: LitVar_Missing var_2C8
  loc_6D5C93: LitVar_Missing var_2A8
  loc_6D5C96: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_6D5C99: FStStrCopy var_288
  loc_6D5C9C: FLdRfVar var_288
  loc_6D5C9F: LitI4 &HB
  loc_6D5CA4: PopTmpLdAdStr var_284
  loc_6D5CA7: LitI2_Byte &H3F
  loc_6D5CA9: PopTmpLdAd2 var_27E
  loc_6D5CAC: ImpAdLdRf MemVar_74C7D0
  loc_6D5CAF: NewIfNullPr clsMsg
  loc_6D5CB2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D5CB7: LitVar_Missing var_41C
  loc_6D5CBA: LitVar_Missing var_3FC
  loc_6D5CBD: FLdZeroAd var_3CC
  loc_6D5CC0: CVarStr var_3DC
  loc_6D5CC3: LitI4 &H10
  loc_6D5CC8: FLdZeroAd var_22C
  loc_6D5CCB: CVarStr var_24C
  loc_6D5CCE: FLdRfVar var_23C
  loc_6D5CD1: ConcatVar var_25C
  loc_6D5CD5: FLdRfVar var_26C
  loc_6D5CD8: ConcatVar var_27C
  loc_6D5CDC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D5CE1: FFreeStr var_164 = ""
  loc_6D5CE8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_27C = "": var_3DC = "": var_3FC = ""
  loc_6D5D23: ExitProcHresult
  loc_6D5D24: FLdRfVar var_94
  loc_6D5D27: NextStepVar var_43C
  loc_6D5D2D: FLdPrThis
  loc_6D5D2E: VCallAd Control_ID_SSCommand2
  loc_6D5D31: FStAdFunc var_11C
  loc_6D5D34: FLdPr var_11C
  loc_6D5D37: LateIdCall
  loc_6D5D3F: FFree1Ad var_11C
  loc_6D5D42: ImpAdLdRf MemVar_74E150
  loc_6D5D45: NewIfNullPr fTipoProducto
  loc_6D5D48: fTipoProducto.Hide
  loc_6D5D4D: LitVarI2 var_E8, 1
  loc_6D5D52: FLdRfVar var_94
  loc_6D5D55: LitVarI2 var_C8, 10
  loc_6D5D5A: ForVar var_464
  loc_6D5D60: FLdRfVar var_94
  loc_6D5D63: FLdRfVar var_98
  loc_6D5D66: ImpAdLdRf MemVar_74A220
  loc_6D5D69: NewIfNullPr clsProducts
  loc_6D5D6C: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D5D71: FLdI2 var_98
  loc_6D5D74: CVarI2 var_A8
  loc_6D5D77: HardType
  loc_6D5D78: LeVarBool
  loc_6D5D7A: BranchF loc_6D5DD8
  loc_6D5D7D: FLdRfVar var_164
  loc_6D5D80: FLdRfVar var_94
  loc_6D5D83: CI2Var
  loc_6D5D84: ImpAdLdRf MemVar_74A220
  loc_6D5D87: NewIfNullPr clsProducts
  loc_6D5D8F: ILdRf var_164
  loc_6D5D92: LitI4 &H1E
  loc_6D5D97: FLdRfVar var_22C
  loc_6D5D9A: FLdRfVar var_94
  loc_6D5D9D: CI2Var
  loc_6D5D9E: ImpAdLdRf MemVar_74A220
  loc_6D5DA1: NewIfNullPr clsProducts
  loc_6D5DA9: ILdRf var_22C
  loc_6D5DAC: FnLenStr
  loc_6D5DAD: SubI4
  loc_6D5DAE: ImpAdCallI2 Space$()
  loc_6D5DB3: FStStrNoPop var_288
  loc_6D5DB6: ConcatStr
  loc_6D5DB7: PopTmpLdAdStr
  loc_6D5DBB: FLdRfVar var_94
  loc_6D5DBE: CI2Var
  loc_6D5DBF: ImpAdLdRf MemVar_74A220
  loc_6D5DC2: NewIfNullPr clsProducts
  loc_6D5DCA: FFreeStr var_22C = "": var_164 = "": var_288 = ""
  loc_6D5DD5: Branch loc_6D5E0C
  loc_6D5DD8: LitI4 &H1E
  loc_6D5DDD: ImpAdCallI2 Space$()
  loc_6D5DE2: PopTmpLdAdStr
  loc_6D5DE6: FLdRfVar var_94
  loc_6D5DE9: CI2Var
  loc_6D5DEA: ImpAdLdRf MemVar_74A220
  loc_6D5DED: NewIfNullPr clsProducts
  loc_6D5DF5: FFree1Str var_164
  loc_6D5DF8: LitI2_Byte 0
  loc_6D5DFA: PopTmpLdAd2 var_98
  loc_6D5DFD: FLdRfVar var_94
  loc_6D5E00: CI2Var
  loc_6D5E01: ImpAdLdRf MemVar_74A220
  loc_6D5E04: NewIfNullPr clsProducts
  loc_6D5E07: clsProducts = from_stack_1
  loc_6D5E0C: FLdRfVar var_94
  loc_6D5E0F: NextStepVar var_464
  loc_6D5E15: LitVarI2 var_E8, 1
  loc_6D5E1A: FLdRfVar var_94
  loc_6D5E1D: LitVarI2 var_C8, 16
  loc_6D5E22: ForVar var_484
  loc_6D5E28: FLdRfVar var_94
  loc_6D5E2B: ImpAdLdUI1
  loc_6D5E2F: CVarUI1
  loc_6D5E33: HardType
  loc_6D5E34: LeVarBool
  loc_6D5E36: BranchF loc_6D5E7B
  loc_6D5E39: FLdRfVar var_94
  loc_6D5E3C: CI4Var
  loc_6D5E3E: ImpAdLdRf MemVar_74C1D8
  loc_6D5E41: Ary1LdUI1
  loc_6D5E43: CI2UI1
  loc_6D5E45: LitI2_Byte 1
  loc_6D5E47: LtI2
  loc_6D5E48: FLdRfVar var_94
  loc_6D5E4B: CI4Var
  loc_6D5E4D: ImpAdLdRf MemVar_74C1D8
  loc_6D5E50: Ary1LdUI1
  loc_6D5E52: CI2UI1
  loc_6D5E54: FLdRfVar var_98
  loc_6D5E57: ImpAdLdRf MemVar_74A220
  loc_6D5E5A: NewIfNullPr clsProducts
  loc_6D5E5D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D5E62: FLdI2 var_98
  loc_6D5E65: GtI2
  loc_6D5E66: OrI4
  loc_6D5E67: BranchF loc_6D5E78
  loc_6D5E6A: LitI2_Byte 1
  loc_6D5E6C: CUI1I2
  loc_6D5E6E: FLdRfVar var_94
  loc_6D5E71: CI4Var
  loc_6D5E73: ImpAdLdRf MemVar_74C1D8
  loc_6D5E76: Ary1StUI1
  loc_6D5E78: Branch loc_6D5E89
  loc_6D5E7B: LitI2_Byte 0
  loc_6D5E7D: CUI1I2
  loc_6D5E7F: FLdRfVar var_94
  loc_6D5E82: CI4Var
  loc_6D5E84: ImpAdLdRf MemVar_74C1D8
  loc_6D5E87: Ary1StUI1
  loc_6D5E89: FLdRfVar var_94
  loc_6D5E8C: NextStepVar var_484
  loc_6D5E92: LitVarI2 var_E8, 1
  loc_6D5E97: FLdRfVar var_94
  loc_6D5E9A: LitVarI2 var_C8, 32
  loc_6D5E9F: ForVar var_4A4
  loc_6D5EA5: LitI2_Byte 0
  loc_6D5EA7: CUI1I2
  loc_6D5EA9: FLdRfVar var_96
  loc_6D5EAC: LitI2_Byte 3
  loc_6D5EAE: CUI1I2
  loc_6D5EB0: ForUI1 var_4A8
  loc_6D5EB6: FLdRfVar var_94
  loc_6D5EB9: ImpAdLdUI1
  loc_6D5EBD: CVarUI1
  loc_6D5EC1: HardType
  loc_6D5EC2: LeVar var_B8
  loc_6D5EC6: FLdUI1
  loc_6D5ECA: FLdRfVar var_94
  loc_6D5ECD: CI4Var
  loc_6D5ECF: ImpAdLdRf MemVar_74C0FC
  loc_6D5ED2: Ary1LdUI1
  loc_6D5ED4: LeUI1
  loc_6D5ED6: CVarBoolI2 var_C8
  loc_6D5EDA: AndVar var_D8
  loc_6D5EDE: CBoolVarNull
  loc_6D5EE0: FFree1Var var_C8 = ""
  loc_6D5EE3: BranchF loc_6D5F46
  loc_6D5EE6: FLdRfVar var_94
  loc_6D5EE9: CI4Var
  loc_6D5EEB: FLdUI1
  loc_6D5EEF: CI4UI1
  loc_6D5EF0: ImpAdLdRf MemVar_74C12C
  loc_6D5EF3: AryLdPr
  loc_6D5EF6: MemLdUI1 global_0
  loc_6D5EFA: CI2UI1
  loc_6D5EFC: LitI2_Byte 1
  loc_6D5EFE: LtI2
  loc_6D5EFF: FLdRfVar var_94
  loc_6D5F02: CI4Var
  loc_6D5F04: FLdUI1
  loc_6D5F08: CI4UI1
  loc_6D5F09: ImpAdLdRf MemVar_74C12C
  loc_6D5F0C: AryLdPr
  loc_6D5F0F: MemLdUI1 global_0
  loc_6D5F13: CI2UI1
  loc_6D5F15: FLdRfVar var_98
  loc_6D5F18: ImpAdLdRf MemVar_74A220
  loc_6D5F1B: NewIfNullPr clsProducts
  loc_6D5F1E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D5F23: FLdI2 var_98
  loc_6D5F26: GtI2
  loc_6D5F27: OrI4
  loc_6D5F28: BranchF loc_6D5F43
  loc_6D5F2B: LitI2_Byte 1
  loc_6D5F2D: CUI1I2
  loc_6D5F2F: FLdRfVar var_94
  loc_6D5F32: CI4Var
  loc_6D5F34: FLdUI1
  loc_6D5F38: CI4UI1
  loc_6D5F39: ImpAdLdRf MemVar_74C12C
  loc_6D5F3C: AryLdPr
  loc_6D5F3F: MemStUI1
  loc_6D5F43: Branch loc_6D5F5E
  loc_6D5F46: LitI2_Byte 0
  loc_6D5F48: CUI1I2
  loc_6D5F4A: FLdRfVar var_94
  loc_6D5F4D: CI4Var
  loc_6D5F4F: FLdUI1
  loc_6D5F53: CI4UI1
  loc_6D5F54: ImpAdLdRf MemVar_74C12C
  loc_6D5F57: AryLdPr
  loc_6D5F5A: MemStUI1
  loc_6D5F5E: FLdRfVar var_96
  loc_6D5F61: NextUI1
  loc_6D5F67: FLdRfVar var_94
  loc_6D5F6A: NextStepVar var_4A4
  loc_6D5F70: LitVarI2 var_E8, 1
  loc_6D5F75: FLdRfVar var_94
  loc_6D5F78: LitVarI2 var_C8, 16
  loc_6D5F7D: ForVar var_4C8
  loc_6D5F83: FLdRfVar var_140
  loc_6D5F86: FLdRfVar var_94
  loc_6D5F89: CI2Var
  loc_6D5F8A: ImpAdLdRf MemVar_74C900
  loc_6D5F8D: NewIfNullPr fCapacidadTanque
  loc_6D5F90: VCallAd Control_ID_Combo1
  loc_6D5F93: FStAdFunc var_11C
  loc_6D5F96: FLdPr var_11C
  loc_6D5F99: Set from_stack_2 = fCapacidadTanque(from_stack_1)
  loc_6D5F9E: FLdPr var_140
  loc_6D5FA1: Me.Clear
  loc_6D5FA6: FFreeAd var_11C = ""
  loc_6D5FAD: LitI2_Byte 1
  loc_6D5FAF: CUI1I2
  loc_6D5FB1: FLdRfVar var_96
  loc_6D5FB4: FLdRfVar var_98
  loc_6D5FB7: ImpAdLdRf MemVar_74A220
  loc_6D5FBA: NewIfNullPr clsProducts
  loc_6D5FBD: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D5FC2: FLdI2 var_98
  loc_6D5FC5: CUI1I2
  loc_6D5FC7: ForUI1 var_4CC
  loc_6D5FCD: FLdRfVar var_98
  loc_6D5FD0: FLdUI1
  loc_6D5FD4: CI2UI1
  loc_6D5FD6: ImpAdLdRf MemVar_74A220
  loc_6D5FD9: NewIfNullPr clsProducts
  loc_6D5FDC: clsProducts.Caption = from_stack_1
  loc_6D5FE1: FLdI2 var_98
  loc_6D5FE4: LitStr "True"
  loc_6D5FE7: CBoolStr
  loc_6D5FE9: EqI2
  loc_6D5FEA: NotI4
  loc_6D5FEB: BranchF loc_6D6041
  loc_6D5FEE: LitVar_Missing var_A8
  loc_6D5FF1: PopAdLdVar
  loc_6D5FF2: LitStr " "
  loc_6D5FF5: FLdRfVar var_164
  loc_6D5FF8: FLdUI1
  loc_6D5FFC: CI2UI1
  loc_6D5FFE: ImpAdLdRf MemVar_74A220
  loc_6D6001: NewIfNullPr clsProducts
  loc_6D6009: ILdRf var_164
  loc_6D600C: ConcatStr
  loc_6D600D: FStStrNoPop var_22C
  loc_6D6010: FLdRfVar var_140
  loc_6D6013: FLdRfVar var_94
  loc_6D6016: CI2Var
  loc_6D6017: ImpAdLdRf MemVar_74C900
  loc_6D601A: NewIfNullPr fCapacidadTanque
  loc_6D601D: VCallAd Control_ID_Combo1
  loc_6D6020: FStAdFunc var_11C
  loc_6D6023: FLdPr var_11C
  loc_6D6026: Set from_stack_2 = fCapacidadTanque(from_stack_1)
  loc_6D602B: FLdPr var_140
  loc_6D602E: Me.AddItem from_stack_1, from_stack_2
  loc_6D6033: FFreeStr var_164 = ""
  loc_6D603A: FFreeAd var_11C = ""
  loc_6D6041: FLdRfVar var_96
  loc_6D6044: NextUI1
  loc_6D604A: FLdRfVar var_94
  loc_6D604D: NextStepVar var_4C8
  loc_6D6053: LitI2_Byte 0
  loc_6D6055: FStI2 var_4CE
  loc_6D6058: LitVarI2 var_E8, 1
  loc_6D605D: FLdRfVar var_94
  loc_6D6060: LitVarI2 var_C8, 10
  loc_6D6065: ForVar var_4F0
  loc_6D606B: FLdRfVar var_164
  loc_6D606E: FLdRfVar var_140
  loc_6D6071: FLdRfVar var_94
  loc_6D6074: CI2Var
  loc_6D6075: FLdPrThis
  loc_6D6076: VCallAd Control_ID_Combo1
  loc_6D6079: FStAdFunc var_11C
  loc_6D607C: FLdPr var_11C
  loc_6D607F: Set from_stack_2 = Me(from_stack_1)
  loc_6D6084: FLdPr var_140
  loc_6D6087:  = Me.Text
  loc_6D608C: LitVarI2 var_D8, 6
  loc_6D6091: LitI4 1
  loc_6D6096: FLdZeroAd var_164
  loc_6D6099: CVarStr var_B8
  loc_6D609C: FLdRfVar var_F8
  loc_6D609F: ImpAdCallFPR4  = Mid(, , )
  loc_6D60A4: FLdRfVar var_F8
  loc_6D60A7: FLdRfVar var_288
  loc_6D60AA: LitVar_Missing var_25C
  loc_6D60AD: LitVar_Missing var_24C
  loc_6D60B0: LitVar_Missing var_23C
  loc_6D60B3: LitVar_Missing var_228
  loc_6D60B6: LitVar_Missing var_208
  loc_6D60B9: LitVar_Missing var_1E8
  loc_6D60BC: LitVar_Missing var_1C8
  loc_6D60BF: LitVar_Missing var_1A8
  loc_6D60C2: LitVar_Missing var_188
  loc_6D60C5: LitVar_Missing var_118
  loc_6D60C8: LitStr "Mezcla"
  loc_6D60CB: FStStrCopy var_22C
  loc_6D60CE: FLdRfVar var_22C
  loc_6D60D1: LitI4 &H19
  loc_6D60D6: PopTmpLdAdStr var_168
  loc_6D60D9: LitI2_Byte &H3F
  loc_6D60DB: PopTmpLdAd2 var_98
  loc_6D60DE: ImpAdLdRf MemVar_74C7D0
  loc_6D60E1: NewIfNullPr clsMsg
  loc_6D60E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D60E9: FLdZeroAd var_288
  loc_6D60EC: CVarStr var_26C
  loc_6D60EF: FLdRfVar var_27C
  loc_6D60F2: ImpAdCallFPR4  = Trim()
  loc_6D60F7: FLdRfVar var_27C
  loc_6D60FA: EqVarBool
  loc_6D60FC: FFree1Str var_22C
  loc_6D60FF: FFreeAd var_11C = ""
  loc_6D6106: FFreeVar var_B8 = "": var_D8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_F8 = ""
  loc_6D6127: BranchF loc_6D612F
  loc_6D612A: LitI2_Byte &HFF
  loc_6D612C: FStI2 var_4CE
  loc_6D612F: FLdRfVar var_94
  loc_6D6132: NextStepVar var_4F0
  loc_6D6138: FLdI2 var_4CE
  loc_6D613B: BranchF loc_6D6156
  loc_6D613E: LitVar_Missing var_C8
  loc_6D6141: PopAdLdVar
  loc_6D6142: LitVarI2 var_A8, 1
  loc_6D6147: PopAdLdVar
  loc_6D6148: ImpAdLdRf MemVar_74E13C
  loc_6D614B: NewIfNullPr frmMezclas
  loc_6D614E: frmMezclas.Show from_stack_1, from_stack_2
  loc_6D6153: Branch loc_6D616B
  loc_6D6156: LitVar_Missing var_C8
  loc_6D6159: PopAdLdVar
  loc_6D615A: LitVarI2 var_A8, 1
  loc_6D615F: PopAdLdVar
  loc_6D6160: ImpAdLdRf MemVar_74C900
  loc_6D6163: NewIfNullPr fCapacidadTanque
  loc_6D6166: fCapacidadTanque.Show from_stack_1, from_stack_2
  loc_6D616B: Branch loc_6D62A0
  loc_6D616E: ImpAdCallFPR4 Beep()
  loc_6D6173: FLdRfVar var_22C
  loc_6D6176: LitVar_Missing var_228
  loc_6D6179: LitVar_Missing var_208
  loc_6D617C: LitVar_Missing var_1E8
  loc_6D617F: LitVar_Missing var_1C8
  loc_6D6182: LitVar_Missing var_1A8
  loc_6D6185: LitVar_Missing var_188
  loc_6D6188: LitVar_Missing var_118
  loc_6D618B: LitVar_Missing var_F8
  loc_6D618E: LitVar_Missing var_D8
  loc_6D6191: LitVar_Missing var_B8
  loc_6D6194: LitStr "Debe configurarse 1 Producto como mínimo."
  loc_6D6197: FStStrCopy var_164
  loc_6D619A: FLdRfVar var_164
  loc_6D619D: LitI4 &HC
  loc_6D61A2: PopTmpLdAdStr var_168
  loc_6D61A5: LitI2_Byte &H3F
  loc_6D61A7: PopTmpLdAd2 var_98
  loc_6D61AA: ImpAdLdRf MemVar_74C7D0
  loc_6D61AD: NewIfNullPr clsMsg
  loc_6D61B0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D61B5: LitI4 &HD
  loc_6D61BA: FLdRfVar var_23C
  loc_6D61BD: ImpAdCallFPR4  = Chr()
  loc_6D61C2: LitI4 &HA
  loc_6D61C7: FLdRfVar var_26C
  loc_6D61CA: ImpAdCallFPR4  = Chr()
  loc_6D61CF: FLdRfVar var_3CC
  loc_6D61D2: LitVar_Missing var_3C8
  loc_6D61D5: LitVar_Missing var_3A8
  loc_6D61D8: LitVar_Missing var_388
  loc_6D61DB: LitVar_Missing var_368
  loc_6D61DE: LitVar_Missing var_348
  loc_6D61E1: LitVar_Missing var_328
  loc_6D61E4: LitVar_Missing var_308
  loc_6D61E7: LitVar_Missing var_2E8
  loc_6D61EA: LitVar_Missing var_2C8
  loc_6D61ED: LitVar_Missing var_2A8
  loc_6D61F0: LitStr "ERROR  EN  LA  CONFIGURACION"
  loc_6D61F3: FStStrCopy var_288
  loc_6D61F6: FLdRfVar var_288
  loc_6D61F9: LitI4 &HB
  loc_6D61FE: PopTmpLdAdStr var_284
  loc_6D6201: LitI2_Byte &H3F
  loc_6D6203: PopTmpLdAd2 var_27E
  loc_6D6206: ImpAdLdRf MemVar_74C7D0
  loc_6D6209: NewIfNullPr clsMsg
  loc_6D620C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D6211: LitVar_Missing var_41C
  loc_6D6214: LitVar_Missing var_3FC
  loc_6D6217: FLdZeroAd var_3CC
  loc_6D621A: CVarStr var_3DC
  loc_6D621D: LitI4 &H10
  loc_6D6222: FLdZeroAd var_22C
  loc_6D6225: CVarStr var_24C
  loc_6D6228: FLdRfVar var_23C
  loc_6D622B: ConcatVar var_25C
  loc_6D622F: FLdRfVar var_26C
  loc_6D6232: ConcatVar var_27C
  loc_6D6236: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D623B: FFreeStr var_164 = ""
  loc_6D6242: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_27C = "": var_3DC = "": var_3FC = ""
  loc_6D627D: FLdRfVar var_140
  loc_6D6280: LitI2_Byte 1
  loc_6D6282: FLdPrThis
  loc_6D6283: VCallAd Control_ID_Text1
  loc_6D6286: FStAdFunc var_11C
  loc_6D6289: FLdPr var_11C
  loc_6D628C: Set from_stack_2 = Me(from_stack_1)
  loc_6D6291: FLdPr var_140
  loc_6D6294: Me.SetFocus
  loc_6D6299: FFreeAd var_11C = ""
  loc_6D62A0: ExitProcHresult
End Sub

Private Sub Text1_Change(Index As Integer) '612A00
  'Data Table: 42904C
  loc_6128E8: FLdPr Me
  loc_6128EB: MemLdRfVar from_stack_1.global_52
  loc_6128EE: CBoolVarNull
  loc_6128F0: BranchF loc_6129FE
  loc_6128F3: FLdRfVar var_90
  loc_6128F6: FLdRfVar var_8C
  loc_6128F9: ILdI2 Index
  loc_6128FC: FLdPrThis
  loc_6128FD: VCallAd Control_ID_Text1
  loc_612900: FStAdFunc var_88
  loc_612903: FLdPr var_88
  loc_612906: Set from_stack_2 = Me(from_stack_1)
  loc_61290B: FLdPr var_8C
  loc_61290E:  = Me.Text
  loc_612913: ILdRf var_90
  loc_612916: LitStr vbNullString
  loc_612919: EqStr
  loc_61291B: FFree1Str var_90
  loc_61291E: FFreeAd var_88 = ""
  loc_612925: BranchF loc_612977
  loc_612928: LitI2_Byte &HFF
  loc_61292A: FLdRfVar var_8C
  loc_61292D: ILdI2 Index
  loc_612930: FLdPrThis
  loc_612931: VCallAd Control_ID_Combo1
  loc_612934: FStAdFunc var_88
  loc_612937: FLdPr var_88
  loc_61293A: Set from_stack_2 = Me(from_stack_1)
  loc_61293F: FLdPr var_8C
  loc_612942: Me.ListIndex = from_stack_1
  loc_612947: FFreeAd var_88 = ""
  loc_61294E: LitI2_Byte 0
  loc_612950: FLdRfVar var_8C
  loc_612953: ILdI2 Index
  loc_612956: FLdPrThis
  loc_612957: VCallAd Control_ID_Combo1
  loc_61295A: FStAdFunc var_88
  loc_61295D: FLdPr var_88
  loc_612960: Set from_stack_2 = Me(from_stack_1)
  loc_612965: FLdPr var_8C
  loc_612968: Me.Enabled = from_stack_1b
  loc_61296D: FFreeAd var_88 = ""
  loc_612974: Branch loc_6129FE
  loc_612977: ILdI2 Index
  loc_61297A: LitI2_Byte 9
  loc_61297C: LeI2
  loc_61297D: BranchF loc_6129CF
  loc_612980: LitI2_Byte &HFF
  loc_612982: FLdRfVar var_8C
  loc_612985: ILdI2 Index
  loc_612988: LitI2_Byte 1
  loc_61298A: AddI2
  loc_61298B: FLdPrThis
  loc_61298C: VCallAd Control_ID_Text1
  loc_61298F: FStAdFunc var_88
  loc_612992: FLdPr var_88
  loc_612995: Set from_stack_2 = Me(from_stack_1)
  loc_61299A: FLdPr var_8C
  loc_61299D: Me.Enabled = from_stack_1b
  loc_6129A2: FFreeAd var_88 = ""
  loc_6129A9: LitI2_Byte &HFF
  loc_6129AB: FLdRfVar var_8C
  loc_6129AE: ILdI2 Index
  loc_6129B1: FLdPrThis
  loc_6129B2: VCallAd Control_ID_Combo1
  loc_6129B5: FStAdFunc var_88
  loc_6129B8: FLdPr var_88
  loc_6129BB: Set from_stack_2 = Me(from_stack_1)
  loc_6129C0: FLdPr var_8C
  loc_6129C3: Me.Enabled = from_stack_1b
  loc_6129C8: FFreeAd var_88 = ""
  loc_6129CF: ILdI2 Index
  loc_6129D2: LitI2_Byte &HA
  loc_6129D4: EqI2
  loc_6129D5: BranchF loc_6129FE
  loc_6129D8: LitI2_Byte &HFF
  loc_6129DA: FLdRfVar var_8C
  loc_6129DD: ILdI2 Index
  loc_6129E0: FLdPrThis
  loc_6129E1: VCallAd Control_ID_Combo1
  loc_6129E4: FStAdFunc var_88
  loc_6129E7: FLdPr var_88
  loc_6129EA: Set from_stack_2 = Me(from_stack_1)
  loc_6129EF: FLdPr var_8C
  loc_6129F2: Me.Enabled = from_stack_1b
  loc_6129F7: FFreeAd var_88 = ""
  loc_6129FE: ExitProcHresult
  loc_6129FF: AddCy
End Sub

Private Sub Text1_GotFocus(arg_C) '5F0E3C
  'Data Table: 42904C
  loc_5F0DAC: FLdPr Me
  loc_5F0DAF: MemLdRfVar from_stack_1.global_52
  loc_5F0DB2: CBoolVarNull
  loc_5F0DB4: BranchF loc_5F0E3A
  loc_5F0DB7: FLdRfVar var_90
  loc_5F0DBA: FLdRfVar var_8C
  loc_5F0DBD: ILdI2 arg_C
  loc_5F0DC0: FLdPrThis
  loc_5F0DC1: VCallAd Control_ID_Text1
  loc_5F0DC4: FStAdFunc var_88
  loc_5F0DC7: FLdPr var_88
  loc_5F0DCA: Set from_stack_2 = Me(from_stack_1)
  loc_5F0DCF: FLdPr var_8C
  loc_5F0DD2:  = Me.Text
  loc_5F0DD7: ILdRf var_90
  loc_5F0DDA: ImpAdCallI2 Trim$()
  loc_5F0DDF: FStStrNoPop var_9C
  loc_5F0DE2: FLdRfVar var_98
  loc_5F0DE5: ILdI2 arg_C
  loc_5F0DE8: FLdPrThis
  loc_5F0DE9: VCallAd Control_ID_Text1
  loc_5F0DEC: FStAdFunc var_94
  loc_5F0DEF: FLdPr var_94
  loc_5F0DF2: Set from_stack_2 = Me(from_stack_1)
  loc_5F0DF7: FLdPr var_98
  loc_5F0DFA: Me.Text = from_stack_1
  loc_5F0DFF: FFreeStr var_90 = ""
  loc_5F0E06: FFreeAd var_88 = "": var_8C = "": var_94 = ""
  loc_5F0E11: LitI4 &H1E
  loc_5F0E16: FLdRfVar var_8C
  loc_5F0E19: ILdI2 arg_C
  loc_5F0E1C: FLdPrThis
  loc_5F0E1D: VCallAd Control_ID_Text1
  loc_5F0E20: FStAdFunc var_88
  loc_5F0E23: FLdPr var_88
  loc_5F0E26: Set from_stack_2 = Me(from_stack_1)
  loc_5F0E2B: FLdPr var_8C
  loc_5F0E2E: Me.MaxLength = from_stack_1
  loc_5F0E33: FFreeAd var_88 = ""
  loc_5F0E3A: ExitProcHresult
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '61043C
  'Data Table: 42904C
  loc_610338: ILdI2 arg_10
  loc_61033B: FStI2 var_86
  loc_61033E: FLdI2 var_86
  loc_610341: LitI2_Byte 8
  loc_610343: EqI2
  loc_610344: BranchF loc_61034B
  loc_610347: ExitProcHresult
  loc_610348: Branch loc_61042E
  loc_61034B: FLdI2 var_86
  loc_61034E: LitI2_Byte &H20
  loc_610350: LitI2_Byte &H7E
  loc_610352: BetweenI2
  loc_610354: BranchF loc_61042E
  loc_610357: FLdRfVar var_94
  loc_61035A: FLdRfVar var_90
  loc_61035D: ILdI2 KeyAscii
  loc_610360: FLdPrThis
  loc_610361: VCallAd Control_ID_Text1
  loc_610364: FStAdFunc var_8C
  loc_610367: FLdPr var_8C
  loc_61036A: Set from_stack_2 = Me(from_stack_1)
  loc_61036F: FLdPr var_90
  loc_610372:  = Me.Text
  loc_610377: ILdRf var_94
  loc_61037A: LitStr vbNullString
  loc_61037D: EqStr
  loc_61037F: FFree1Str var_94
  loc_610382: FFreeAd var_8C = ""
  loc_610389: BranchF loc_6103C6
  loc_61038C: ILdI2 arg_10
  loc_61038F: LitI2_Byte &H20
  loc_610391: NeI2
  loc_610392: BranchF loc_6103C3
  loc_610395: ILdI2 arg_10
  loc_610398: CI4UI1
  loc_610399: ImpAdCallI2 Chr$()
  loc_61039E: CVarStr var_A4
  loc_6103A1: FLdRfVar var_B4
  loc_6103A4: ImpAdCallFPR4  = Ucase()
  loc_6103A9: FLdRfVar var_B4
  loc_6103AC: CStrVarVal var_94
  loc_6103B0: ImpAdCallI2 Asc()
  loc_6103B5: IStI2 arg_10
  loc_6103B8: FFree1Str var_94
  loc_6103BB: FFreeVar var_A4 = ""
  loc_6103C2: ExitProcHresult
  loc_6103C3: Branch loc_61042B
  loc_6103C6: FLdRfVar var_94
  loc_6103C9: FLdRfVar var_90
  loc_6103CC: ILdI2 KeyAscii
  loc_6103CF: FLdPrThis
  loc_6103D0: VCallAd Control_ID_Text1
  loc_6103D3: FStAdFunc var_8C
  loc_6103D6: FLdPr var_8C
  loc_6103D9: Set from_stack_2 = Me(from_stack_1)
  loc_6103DE: FLdPr var_90
  loc_6103E1:  = Me.Text
  loc_6103E6: ILdRf var_94
  loc_6103E9: FnLenStr
  loc_6103EA: LitI4 &H19
  loc_6103EF: LtI4
  loc_6103F0: FFree1Str var_94
  loc_6103F3: FFreeAd var_8C = ""
  loc_6103FA: BranchF loc_61042B
  loc_6103FD: ILdI2 arg_10
  loc_610400: CI4UI1
  loc_610401: ImpAdCallI2 Chr$()
  loc_610406: CVarStr var_A4
  loc_610409: FLdRfVar var_B4
  loc_61040C: ImpAdCallFPR4  = Ucase()
  loc_610411: FLdRfVar var_B4
  loc_610414: CStrVarVal var_94
  loc_610418: ImpAdCallI2 Asc()
  loc_61041D: IStI2 arg_10
  loc_610420: FFree1Str var_94
  loc_610423: FFreeVar var_A4 = ""
  loc_61042A: ExitProcHresult
  loc_61042B: Branch loc_61042E
  loc_61042E: ImpAdCallFPR4 Beep()
  loc_610433: LitI2_Byte 0
  loc_610435: IStI2 arg_10
  loc_610438: ExitProcHresult
  loc_610439: CStrVarTmp
End Sub

Private Sub Text1_LostFocus(arg_C) '65D58C
  'Data Table: 42904C
  loc_65D254: FLdPr Me
  loc_65D257: MemLdRfVar from_stack_1.global_52
  loc_65D25A: CBoolVarNull
  loc_65D25C: BranchF loc_65D58B
  loc_65D25F: FLdRfVar var_94
  loc_65D262: FLdRfVar var_90
  loc_65D265: ILdI2 arg_C
  loc_65D268: FLdPrThis
  loc_65D269: VCallAd Control_ID_Text1
  loc_65D26C: FStAdFunc var_8C
  loc_65D26F: FLdPr var_8C
  loc_65D272: Set from_stack_2 = Me(from_stack_1)
  loc_65D277: FLdPr var_90
  loc_65D27A:  = Me.Text
  loc_65D27F: ILdRf var_94
  loc_65D282: ImpAdCallI2 Trim$()
  loc_65D287: FStStrNoPop var_A0
  loc_65D28A: FLdRfVar var_9C
  loc_65D28D: ILdI2 arg_C
  loc_65D290: FLdPrThis
  loc_65D291: VCallAd Control_ID_Text1
  loc_65D294: FStAdFunc var_98
  loc_65D297: FLdPr var_98
  loc_65D29A: Set from_stack_2 = Me(from_stack_1)
  loc_65D29F: FLdPr var_9C
  loc_65D2A2: Me.Text = from_stack_1
  loc_65D2A7: FFreeStr var_94 = ""
  loc_65D2AE: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_65D2B9: FLdRfVar var_94
  loc_65D2BC: FLdRfVar var_90
  loc_65D2BF: ILdI2 arg_C
  loc_65D2C2: FLdPrThis
  loc_65D2C3: VCallAd Control_ID_Text1
  loc_65D2C6: FStAdFunc var_8C
  loc_65D2C9: FLdPr var_8C
  loc_65D2CC: Set from_stack_2 = Me(from_stack_1)
  loc_65D2D1: FLdPr var_90
  loc_65D2D4:  = Me.Text
  loc_65D2D9: FLdZeroAd var_94
  loc_65D2DC: PopTmpLdAdStr
  loc_65D2E0: ILdI2 arg_C
  loc_65D2E3: ImpAdLdRf MemVar_74A220
  loc_65D2E6: NewIfNullPr clsProducts
  loc_65D2EE: FFree1Str var_A0
  loc_65D2F1: FFreeAd var_8C = ""
  loc_65D2F8: LitI4 &H1F
  loc_65D2FD: FLdRfVar var_90
  loc_65D300: ILdI2 arg_C
  loc_65D303: FLdPrThis
  loc_65D304: VCallAd Control_ID_Text1
  loc_65D307: FStAdFunc var_8C
  loc_65D30A: FLdPr var_8C
  loc_65D30D: Set from_stack_2 = Me(from_stack_1)
  loc_65D312: FLdPr var_90
  loc_65D315: Me.MaxLength = from_stack_1
  loc_65D31A: FFreeAd var_8C = ""
  loc_65D321: LitStr " "
  loc_65D324: FLdRfVar var_94
  loc_65D327: FLdRfVar var_90
  loc_65D32A: ILdI2 arg_C
  loc_65D32D: FLdPrThis
  loc_65D32E: VCallAd Control_ID_Text1
  loc_65D331: FStAdFunc var_8C
  loc_65D334: FLdPr var_8C
  loc_65D337: Set from_stack_2 = Me(from_stack_1)
  loc_65D33C: FLdPr var_90
  loc_65D33F:  = Me.Text
  loc_65D344: ILdRf var_94
  loc_65D347: ConcatStr
  loc_65D348: FStStrNoPop var_A0
  loc_65D34B: FLdRfVar var_9C
  loc_65D34E: ILdI2 arg_C
  loc_65D351: FLdPrThis
  loc_65D352: VCallAd Control_ID_Text1
  loc_65D355: FStAdFunc var_98
  loc_65D358: FLdPr var_98
  loc_65D35B: Set from_stack_2 = Me(from_stack_1)
  loc_65D360: FLdPr var_9C
  loc_65D363: Me.Text = from_stack_1
  loc_65D368: FFreeStr var_94 = ""
  loc_65D36F: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_65D37A: FLdRfVar var_94
  loc_65D37D: ILdI2 arg_C
  loc_65D380: ImpAdLdRf MemVar_74A220
  loc_65D383: NewIfNullPr clsProducts
  loc_65D38B: ILdRf var_94
  loc_65D38E: LitStr vbNullString
  loc_65D391: EqStr
  loc_65D393: FFree1Str var_94
  loc_65D396: BranchF loc_65D535
  loc_65D399: ILdI2 arg_C
  loc_65D39C: CUI1I2
  loc_65D39E: FLdRfVar var_86
  loc_65D3A1: LitI2_Byte 9
  loc_65D3A3: CUI1I2
  loc_65D3A5: ForUI1 var_A4
  loc_65D3AB: FLdRfVar var_94
  loc_65D3AE: FLdRfVar var_90
  loc_65D3B1: FLdUI1
  loc_65D3B5: CI2UI1
  loc_65D3B7: LitI2_Byte 1
  loc_65D3B9: AddI2
  loc_65D3BA: FLdPrThis
  loc_65D3BB: VCallAd Control_ID_Text1
  loc_65D3BE: FStAdFunc var_8C
  loc_65D3C1: FLdPr var_8C
  loc_65D3C4: Set from_stack_2 = Me(from_stack_1)
  loc_65D3C9: FLdPr var_90
  loc_65D3CC:  = Me.Text
  loc_65D3D1: ILdRf var_94
  loc_65D3D4: FLdRfVar var_9C
  loc_65D3D7: FLdUI1
  loc_65D3DB: CI2UI1
  loc_65D3DD: FLdPrThis
  loc_65D3DE: VCallAd Control_ID_Text1
  loc_65D3E1: FStAdFunc var_98
  loc_65D3E4: FLdPr var_98
  loc_65D3E7: Set from_stack_2 = Me(from_stack_1)
  loc_65D3EC: FLdPr var_9C
  loc_65D3EF: Me.Text = from_stack_1
  loc_65D3F4: FFree1Str var_94
  loc_65D3F7: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_65D402: FLdRfVar var_A6
  loc_65D405: FLdRfVar var_90
  loc_65D408: FLdUI1
  loc_65D40C: CI2UI1
  loc_65D40E: LitI2_Byte 1
  loc_65D410: AddI2
  loc_65D411: FLdPrThis
  loc_65D412: VCallAd Control_ID_Combo1
  loc_65D415: FStAdFunc var_8C
  loc_65D418: FLdPr var_8C
  loc_65D41B: Set from_stack_2 = Me(from_stack_1)
  loc_65D420: FLdPr var_90
  loc_65D423:  = Me.ListIndex
  loc_65D428: FLdI2 var_A6
  loc_65D42B: FLdRfVar var_9C
  loc_65D42E: FLdUI1
  loc_65D432: CI2UI1
  loc_65D434: FLdPrThis
  loc_65D435: VCallAd Control_ID_Combo1
  loc_65D438: FStAdFunc var_98
  loc_65D43B: FLdPr var_98
  loc_65D43E: Set from_stack_2 = Me(from_stack_1)
  loc_65D443: FLdPr var_9C
  loc_65D446: Me.ListIndex = from_stack_1
  loc_65D44B: FFreeAd var_8C = "": var_90 = "": var_98 = ""
  loc_65D456: FLdRfVar var_94
  loc_65D459: FLdUI1
  loc_65D45D: CI2UI1
  loc_65D45F: LitI2_Byte 1
  loc_65D461: AddI2
  loc_65D462: ImpAdLdRf MemVar_74A220
  loc_65D465: NewIfNullPr clsProducts
  loc_65D46D: FLdZeroAd var_94
  loc_65D470: PopTmpLdAdStr
  loc_65D474: FLdUI1
  loc_65D478: CI2UI1
  loc_65D47A: ImpAdLdRf MemVar_74A220
  loc_65D47D: NewIfNullPr clsProducts
  loc_65D485: FFree1Str var_A0
  loc_65D488: FLdRfVar var_A6
  loc_65D48B: FLdUI1
  loc_65D48F: CI2UI1
  loc_65D491: LitI2_Byte 1
  loc_65D493: AddI2
  loc_65D494: ImpAdLdRf MemVar_74A220
  loc_65D497: NewIfNullPr clsProducts
  loc_65D49A:  = clsProducts.Name
  loc_65D49F: FLdI2 var_A6
  loc_65D4A2: PopTmpLdAd2 var_A8
  loc_65D4A5: FLdUI1
  loc_65D4A9: CI2UI1
  loc_65D4AB: ImpAdLdRf MemVar_74A220
  loc_65D4AE: NewIfNullPr clsProducts
  loc_65D4B1: clsProducts = from_stack_1
  loc_65D4B6: FLdRfVar var_86
  loc_65D4B9: NextUI1
  loc_65D4BF: LitStr vbNullString
  loc_65D4C2: FLdRfVar var_90
  loc_65D4C5: LitI2_Byte &HA
  loc_65D4C7: FLdPrThis
  loc_65D4C8: VCallAd Control_ID_Text1
  loc_65D4CB: FStAdFunc var_8C
  loc_65D4CE: FLdPr var_8C
  loc_65D4D1: Set from_stack_2 = Me(from_stack_1)
  loc_65D4D6: FLdPr var_90
  loc_65D4D9: Me.Text = from_stack_1
  loc_65D4DE: FFreeAd var_8C = ""
  loc_65D4E5: LitI2_Byte &HFF
  loc_65D4E7: FLdRfVar var_90
  loc_65D4EA: LitI2_Byte &HA
  loc_65D4EC: FLdPrThis
  loc_65D4ED: VCallAd Control_ID_Combo1
  loc_65D4F0: FStAdFunc var_8C
  loc_65D4F3: FLdPr var_8C
  loc_65D4F6: Set from_stack_2 = Me(from_stack_1)
  loc_65D4FB: FLdPr var_90
  loc_65D4FE: Me.ListIndex = from_stack_1
  loc_65D503: FFreeAd var_8C = ""
  loc_65D50A: LitStr vbNullString
  loc_65D50D: FStStrCopy var_94
  loc_65D510: FLdRfVar var_94
  loc_65D513: LitI2_Byte &HA
  loc_65D515: ImpAdLdRf MemVar_74A220
  loc_65D518: NewIfNullPr clsProducts
  loc_65D520: FFree1Str var_94
  loc_65D523: LitI2_Byte 0
  loc_65D525: PopTmpLdAd2 var_A6
  loc_65D528: LitI2_Byte &HA
  loc_65D52A: ImpAdLdRf MemVar_74A220
  loc_65D52D: NewIfNullPr clsProducts
  loc_65D530: clsProducts = from_stack_1
  loc_65D535: LitI2_Byte 1
  loc_65D537: CUI1I2
  loc_65D539: FLdRfVar var_86
  loc_65D53C: LitI2_Byte &HA
  loc_65D53E: CUI1I2
  loc_65D540: ForUI1 var_AC
  loc_65D546: FLdRfVar var_94
  loc_65D549: FLdUI1
  loc_65D54D: CI2UI1
  loc_65D54F: ImpAdLdRf MemVar_74A220
  loc_65D552: NewIfNullPr clsProducts
  loc_65D55A: ILdRf var_94
  loc_65D55D: LitStr vbNullString
  loc_65D560: EqStr
  loc_65D562: FFree1Str var_94
  loc_65D565: BranchF loc_65D56B
  loc_65D568: Branch loc_65D574
  loc_65D56B: FLdRfVar var_86
  loc_65D56E: NextUI1
  loc_65D574: FLdUI1
  loc_65D578: CI2UI1
  loc_65D57A: LitI2_Byte 1
  loc_65D57C: SubI2
  loc_65D57D: PopTmpLdAd2 var_A6
  loc_65D580: ImpAdLdRf MemVar_74A220
  loc_65D583: NewIfNullPr clsProducts
  loc_65D586: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_65D58B: ExitProcHresult
End Sub

Private Sub Combo1_GotFocus() '5C98D8
  'Data Table: 42904C
  loc_5C98CC: FLdPr Me
  loc_5C98CF: MemLdRfVar from_stack_1.global_52
  loc_5C98D2: CBoolVarNull
  loc_5C98D4: BranchF loc_5C98D7
  loc_5C98D7: ExitProcHresult
End Sub

Private Sub Combo1_LostFocus(arg_C) '5F7438
  'Data Table: 42904C
  loc_5F7388: FLdPr Me
  loc_5F738B: MemLdRfVar from_stack_1.global_52
  loc_5F738E: CBoolVarNull
  loc_5F7390: BranchF loc_5F7434
  loc_5F7393: FLdRfVar var_86
  loc_5F7396: from_stack_1v = Proc_163_18_5E9F04()
  loc_5F739B: FLdI2 var_86
  loc_5F739E: LitI2_Byte 1
  loc_5F73A0: GtI2
  loc_5F73A1: BranchF loc_5F73F6
  loc_5F73A4: LitVar_Missing var_108
  loc_5F73A7: LitVar_Missing var_E8
  loc_5F73AA: LitVar_Missing var_C8
  loc_5F73AD: LitI4 &H40
  loc_5F73B2: LitVarStr var_98, "No se permite definir dos productos de tipo GNC"
  loc_5F73B7: FStVarCopyObj var_A8
  loc_5F73BA: FLdRfVar var_A8
  loc_5F73BD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F73C2: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5F73CD: LitI2_Byte &HFF
  loc_5F73CF: FLdRfVar var_110
  loc_5F73D2: ILdI2 arg_C
  loc_5F73D5: FLdPrThis
  loc_5F73D6: VCallAd Control_ID_Combo1
  loc_5F73D9: FStAdFunc var_10C
  loc_5F73DC: FLdPr var_10C
  loc_5F73DF: Set from_stack_2 = Me(from_stack_1)
  loc_5F73E4: FLdPr var_110
  loc_5F73E7: Me.ListIndex = from_stack_1
  loc_5F73EC: FFreeAd var_10C = ""
  loc_5F73F3: Branch loc_5F7434
  loc_5F73F6: FLdRfVar var_86
  loc_5F73F9: FLdRfVar var_110
  loc_5F73FC: ILdI2 arg_C
  loc_5F73FF: FLdPrThis
  loc_5F7400: VCallAd Control_ID_Combo1
  loc_5F7403: FStAdFunc var_10C
  loc_5F7406: FLdPr var_10C
  loc_5F7409: Set from_stack_2 = Me(from_stack_1)
  loc_5F740E: FLdPr var_110
  loc_5F7411:  = Me.ListIndex
  loc_5F7416: FLdI2 var_86
  loc_5F7419: LitI2_Byte 1
  loc_5F741B: AddI2
  loc_5F741C: PopTmpLdAd2 var_112
  loc_5F741F: ILdI2 arg_C
  loc_5F7422: ImpAdLdRf MemVar_74A220
  loc_5F7425: NewIfNullPr clsProducts
  loc_5F7428: clsProducts = from_stack_1
  loc_5F742D: FFreeAd var_10C = ""
  loc_5F7434: ExitProcHresult
End Sub

Private Sub Form_Load() '5CFC4C
  'Data Table: 42904C
  loc_5CFC34: FLdRfVar var_86
  loc_5CFC37: ImpAdLdRf MemVar_74A220
  loc_5CFC3A: NewIfNullPr clsProducts
  loc_5CFC3D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5CFC42: FLdI2 var_86
  loc_5CFC45: FLdPr Me
  loc_5CFC48: MemStI2 global_70
  loc_5CFC4B: ExitProcHresult
End Sub

Private Sub Form_Activate() '6F7F7C
  'Data Table: 42904C
  loc_6F7038: LitVarI2 var_98, 0
  loc_6F703D: FLdPr Me
  loc_6F7040: MemStVar
  loc_6F7044: FLdRfVar var_1D8
  loc_6F7047: LitVar_Missing var_1D4
  loc_6F704A: LitVar_Missing var_1B4
  loc_6F704D: LitVar_Missing var_194
  loc_6F7050: LitVar_Missing var_174
  loc_6F7053: LitVar_Missing var_154
  loc_6F7056: LitVar_Missing var_134
  loc_6F7059: LitVar_Missing var_114
  loc_6F705C: LitVar_Missing var_F4
  loc_6F705F: LitVar_Missing var_D4
  loc_6F7062: LitVar_Missing var_B4
  loc_6F7065: LitStr "Configuración de nombre y clasificación de productos"
  loc_6F7068: FStStrCopy var_A4
  loc_6F706B: FLdRfVar var_A4
  loc_6F706E: LitI4 1
  loc_6F7073: PopTmpLdAdStr var_A0
  loc_6F7076: LitI2_Byte &H3F
  loc_6F7078: PopTmpLdAd2 var_9A
  loc_6F707B: ImpAdLdRf MemVar_74C7D0
  loc_6F707E: NewIfNullPr clsMsg
  loc_6F7081: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7086: ILdRf var_1D8
  loc_6F7089: ImpAdLdRf MemVar_74E150
  loc_6F708C: NewIfNullPr fTipoProducto
  loc_6F708F: fTipoProducto.Caption = from_stack_1
  loc_6F7094: FFreeStr var_A4 = ""
  loc_6F709B: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F70B2: FLdRfVar var_1D8
  loc_6F70B5: LitVar_Missing var_1D4
  loc_6F70B8: LitVar_Missing var_1B4
  loc_6F70BB: LitVar_Missing var_194
  loc_6F70BE: LitVar_Missing var_174
  loc_6F70C1: LitVar_Missing var_154
  loc_6F70C4: LitVar_Missing var_134
  loc_6F70C7: LitVar_Missing var_114
  loc_6F70CA: LitVar_Missing var_F4
  loc_6F70CD: LitVar_Missing var_D4
  loc_6F70D0: LitVar_Missing var_B4
  loc_6F70D3: LitStr "Nombre del Producto"
  loc_6F70D6: FStStrCopy var_A4
  loc_6F70D9: FLdRfVar var_A4
  loc_6F70DC: LitI4 2
  loc_6F70E1: PopTmpLdAdStr var_A0
  loc_6F70E4: LitI2_Byte &H3F
  loc_6F70E6: PopTmpLdAd2 var_9A
  loc_6F70E9: ImpAdLdRf MemVar_74C7D0
  loc_6F70EC: NewIfNullPr clsMsg
  loc_6F70EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F70F4: ILdRf var_1D8
  loc_6F70F7: FLdPrThis
  loc_6F70F8: VCallAd Control_ID_Label2
  loc_6F70FB: FStAdFunc var_1DC
  loc_6F70FE: FLdPr var_1DC
  loc_6F7101: Me.Caption = from_stack_1
  loc_6F7106: FFreeStr var_A4 = ""
  loc_6F710D: FFree1Ad var_1DC
  loc_6F7110: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7127: FLdRfVar var_1D8
  loc_6F712A: LitVar_Missing var_1D4
  loc_6F712D: LitVar_Missing var_1B4
  loc_6F7130: LitVar_Missing var_194
  loc_6F7133: LitVar_Missing var_174
  loc_6F7136: LitVar_Missing var_154
  loc_6F7139: LitVar_Missing var_134
  loc_6F713C: LitVar_Missing var_114
  loc_6F713F: LitVar_Missing var_F4
  loc_6F7142: LitVar_Missing var_D4
  loc_6F7145: LitVar_Missing var_B4
  loc_6F7148: LitStr "Clasificación"
  loc_6F714B: FStStrCopy var_A4
  loc_6F714E: FLdRfVar var_A4
  loc_6F7151: LitI4 3
  loc_6F7156: PopTmpLdAdStr var_A0
  loc_6F7159: LitI2_Byte &H3F
  loc_6F715B: PopTmpLdAd2 var_9A
  loc_6F715E: ImpAdLdRf MemVar_74C7D0
  loc_6F7161: NewIfNullPr clsMsg
  loc_6F7164: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7169: ILdRf var_1D8
  loc_6F716C: FLdPrThis
  loc_6F716D: VCallAd Control_ID_Label3
  loc_6F7170: FStAdFunc var_1DC
  loc_6F7173: FLdPr var_1DC
  loc_6F7176: Me.Caption = from_stack_1
  loc_6F717B: FFreeStr var_A4 = ""
  loc_6F7182: FFree1Ad var_1DC
  loc_6F7185: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F719C: FLdRfVar var_1D8
  loc_6F719F: LitVar_Missing var_1D4
  loc_6F71A2: LitVar_Missing var_1B4
  loc_6F71A5: LitVar_Missing var_194
  loc_6F71A8: LitVar_Missing var_174
  loc_6F71AB: LitVar_Missing var_154
  loc_6F71AE: LitVar_Missing var_134
  loc_6F71B1: LitVar_Missing var_114
  loc_6F71B4: LitVar_Missing var_F4
  loc_6F71B7: LitVar_Missing var_D4
  loc_6F71BA: LitVar_Missing var_B4
  loc_6F71BD: LitStr "Monitor  de  Tanques"
  loc_6F71C0: FStStrCopy var_A4
  loc_6F71C3: FLdRfVar var_A4
  loc_6F71C6: LitI4 4
  loc_6F71CB: PopTmpLdAdStr var_A0
  loc_6F71CE: LitI2_Byte &H3F
  loc_6F71D0: PopTmpLdAd2 var_9A
  loc_6F71D3: ImpAdLdRf MemVar_74C7D0
  loc_6F71D6: NewIfNullPr clsMsg
  loc_6F71D9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F71DE: FLdZeroAd var_1D8
  loc_6F71E1: CVarStr var_1EC
  loc_6F71E4: PopAdLdVar
  loc_6F71E5: FLdPrThis
  loc_6F71E6: VCallAd Control_ID_SSFrame1
  loc_6F71E9: FStAdFunc var_1DC
  loc_6F71EC: FLdPr var_1DC
  loc_6F71EF: LateIdSt
  loc_6F71F4: FFree1Str var_A4
  loc_6F71F7: FFree1Ad var_1DC
  loc_6F71FA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7213: FLdRfVar var_1D8
  loc_6F7216: LitVar_Missing var_1D4
  loc_6F7219: LitVar_Missing var_1B4
  loc_6F721C: LitVar_Missing var_194
  loc_6F721F: LitVar_Missing var_174
  loc_6F7222: LitVar_Missing var_154
  loc_6F7225: LitVar_Missing var_134
  loc_6F7228: LitVar_Missing var_114
  loc_6F722B: LitVar_Missing var_F4
  loc_6F722E: LitVar_Missing var_D4
  loc_6F7231: LitVar_Missing var_B4
  loc_6F7234: LitStr "  No Instalado"
  loc_6F7237: FStStrCopy var_A4
  loc_6F723A: FLdRfVar var_A4
  loc_6F723D: LitI4 5
  loc_6F7242: PopTmpLdAdStr var_A0
  loc_6F7245: LitI2_Byte &H3F
  loc_6F7247: PopTmpLdAd2 var_9A
  loc_6F724A: ImpAdLdRf MemVar_74C7D0
  loc_6F724D: NewIfNullPr clsMsg
  loc_6F7250: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7255: ILdRf var_1D8
  loc_6F7258: FLdRfVar var_1F0
  loc_6F725B: LitI2_Byte 0
  loc_6F725D: FLdPrThis
  loc_6F725E: VCallAd Control_ID_OptionTanque
  loc_6F7261: FStAdFunc var_1DC
  loc_6F7264: FLdPr var_1DC
  loc_6F7267: Set from_stack_2 = Me(from_stack_1)
  loc_6F726C: FLdPr var_1F0
  loc_6F726F: Me.Caption = from_stack_1
  loc_6F7274: FFreeStr var_A4 = ""
  loc_6F727B: FFreeAd var_1DC = ""
  loc_6F7282: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7299: FLdRfVar var_1D8
  loc_6F729C: LitVar_Missing var_1D4
  loc_6F729F: LitVar_Missing var_1B4
  loc_6F72A2: LitVar_Missing var_194
  loc_6F72A5: LitVar_Missing var_174
  loc_6F72A8: LitVar_Missing var_154
  loc_6F72AB: LitVar_Missing var_134
  loc_6F72AE: LitVar_Missing var_114
  loc_6F72B1: LitVar_Missing var_F4
  loc_6F72B4: LitVar_Missing var_D4
  loc_6F72B7: LitVar_Missing var_B4
  loc_6F72BA: LitStr "Página &Anterior"
  loc_6F72BD: FStStrCopy var_A4
  loc_6F72C0: FLdRfVar var_A4
  loc_6F72C3: LitI4 6
  loc_6F72C8: PopTmpLdAdStr var_A0
  loc_6F72CB: LitI2_Byte &H3F
  loc_6F72CD: PopTmpLdAd2 var_9A
  loc_6F72D0: ImpAdLdRf MemVar_74C7D0
  loc_6F72D3: NewIfNullPr clsMsg
  loc_6F72D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F72DB: FLdZeroAd var_1D8
  loc_6F72DE: CVarStr var_1EC
  loc_6F72E1: PopAdLdVar
  loc_6F72E2: FLdPrThis
  loc_6F72E3: VCallAd Control_ID_SSCommand1
  loc_6F72E6: FStAdFunc var_1DC
  loc_6F72E9: FLdPr var_1DC
  loc_6F72EC: LateIdSt
  loc_6F72F1: FFree1Str var_A4
  loc_6F72F4: FFree1Ad var_1DC
  loc_6F72F7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7310: FLdRfVar var_1D8
  loc_6F7313: LitVar_Missing var_1D4
  loc_6F7316: LitVar_Missing var_1B4
  loc_6F7319: LitVar_Missing var_194
  loc_6F731C: LitVar_Missing var_174
  loc_6F731F: LitVar_Missing var_154
  loc_6F7322: LitVar_Missing var_134
  loc_6F7325: LitVar_Missing var_114
  loc_6F7328: LitVar_Missing var_F4
  loc_6F732B: LitVar_Missing var_D4
  loc_6F732E: LitVar_Missing var_B4
  loc_6F7331: LitStr "&Reset"
  loc_6F7334: FStStrCopy var_A4
  loc_6F7337: FLdRfVar var_A4
  loc_6F733A: LitI4 7
  loc_6F733F: PopTmpLdAdStr var_A0
  loc_6F7342: LitI2_Byte &H3F
  loc_6F7344: PopTmpLdAd2 var_9A
  loc_6F7347: ImpAdLdRf MemVar_74C7D0
  loc_6F734A: NewIfNullPr clsMsg
  loc_6F734D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7352: FLdZeroAd var_1D8
  loc_6F7355: CVarStr var_1EC
  loc_6F7358: PopAdLdVar
  loc_6F7359: FLdPrThis
  loc_6F735A: VCallAd Control_ID_SSCommand3
  loc_6F735D: FStAdFunc var_1DC
  loc_6F7360: FLdPr var_1DC
  loc_6F7363: LateIdSt
  loc_6F7368: FFree1Str var_A4
  loc_6F736B: FFree1Ad var_1DC
  loc_6F736E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7387: FLdRfVar var_1D8
  loc_6F738A: LitVar_Missing var_1D4
  loc_6F738D: LitVar_Missing var_1B4
  loc_6F7390: LitVar_Missing var_194
  loc_6F7393: LitVar_Missing var_174
  loc_6F7396: LitVar_Missing var_154
  loc_6F7399: LitVar_Missing var_134
  loc_6F739C: LitVar_Missing var_114
  loc_6F739F: LitVar_Missing var_F4
  loc_6F73A2: LitVar_Missing var_D4
  loc_6F73A5: LitVar_Missing var_B4
  loc_6F73A8: LitStr "&Cancelar"
  loc_6F73AB: FStStrCopy var_A4
  loc_6F73AE: FLdRfVar var_A4
  loc_6F73B1: LitI4 8
  loc_6F73B6: PopTmpLdAdStr var_A0
  loc_6F73B9: LitI2_Byte &H3F
  loc_6F73BB: PopTmpLdAd2 var_9A
  loc_6F73BE: ImpAdLdRf MemVar_74C7D0
  loc_6F73C1: NewIfNullPr clsMsg
  loc_6F73C4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F73C9: FLdZeroAd var_1D8
  loc_6F73CC: CVarStr var_1EC
  loc_6F73CF: PopAdLdVar
  loc_6F73D0: FLdPrThis
  loc_6F73D1: VCallAd Control_ID_sscCancel
  loc_6F73D4: FStAdFunc var_1DC
  loc_6F73D7: FLdPr var_1DC
  loc_6F73DA: LateIdSt
  loc_6F73DF: FFree1Str var_A4
  loc_6F73E2: FFree1Ad var_1DC
  loc_6F73E5: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F73FE: FLdRfVar var_1D8
  loc_6F7401: LitVar_Missing var_1D4
  loc_6F7404: LitVar_Missing var_1B4
  loc_6F7407: LitVar_Missing var_194
  loc_6F740A: LitVar_Missing var_174
  loc_6F740D: LitVar_Missing var_154
  loc_6F7410: LitVar_Missing var_134
  loc_6F7413: LitVar_Missing var_114
  loc_6F7416: LitVar_Missing var_F4
  loc_6F7419: LitVar_Missing var_D4
  loc_6F741C: LitVar_Missing var_B4
  loc_6F741F: LitStr "&Próxima Página"
  loc_6F7422: FStStrCopy var_A4
  loc_6F7425: FLdRfVar var_A4
  loc_6F7428: LitI4 9
  loc_6F742D: PopTmpLdAdStr var_A0
  loc_6F7430: LitI2_Byte &H3F
  loc_6F7432: PopTmpLdAd2 var_9A
  loc_6F7435: ImpAdLdRf MemVar_74C7D0
  loc_6F7438: NewIfNullPr clsMsg
  loc_6F743B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7440: FLdZeroAd var_1D8
  loc_6F7443: CVarStr var_1EC
  loc_6F7446: PopAdLdVar
  loc_6F7447: FLdPrThis
  loc_6F7448: VCallAd Control_ID_SSCommand2
  loc_6F744B: FStAdFunc var_1DC
  loc_6F744E: FLdPr var_1DC
  loc_6F7451: LateIdSt
  loc_6F7456: FFree1Str var_A4
  loc_6F7459: FFree1Ad var_1DC
  loc_6F745C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7475: LitI2_Byte 1
  loc_6F7477: CUI1I2
  loc_6F7479: FLdRfVar var_86
  loc_6F747C: LitI2_Byte &HA
  loc_6F747E: CUI1I2
  loc_6F7480: ForUI1 var_1F4
  loc_6F7486: FLdRfVar var_1F0
  loc_6F7489: FLdUI1
  loc_6F748D: CI2UI1
  loc_6F748F: FLdPrThis
  loc_6F7490: VCallAd Control_ID_Combo1
  loc_6F7493: FStAdFunc var_1DC
  loc_6F7496: FLdPr var_1DC
  loc_6F7499: Set from_stack_2 = Me(from_stack_1)
  loc_6F749E: FLdPr var_1F0
  loc_6F74A1: Me.Clear
  loc_6F74A6: FFreeAd var_1DC = ""
  loc_6F74AD: FLdRfVar var_1D8
  loc_6F74B0: LitVar_Missing var_1D4
  loc_6F74B3: LitVar_Missing var_1B4
  loc_6F74B6: LitVar_Missing var_194
  loc_6F74B9: LitVar_Missing var_174
  loc_6F74BC: LitVar_Missing var_154
  loc_6F74BF: LitVar_Missing var_134
  loc_6F74C2: LitVar_Missing var_114
  loc_6F74C5: LitVar_Missing var_F4
  loc_6F74C8: LitVar_Missing var_D4
  loc_6F74CB: LitVar_Missing var_B4
  loc_6F74CE: LitStr "Alto Octanaje Sin Plomo"
  loc_6F74D1: FStStrCopy var_A4
  loc_6F74D4: FLdRfVar var_A4
  loc_6F74D7: LitI4 &H10
  loc_6F74DC: PopTmpLdAdStr var_A0
  loc_6F74DF: LitI2_Byte &H3F
  loc_6F74E1: PopTmpLdAd2 var_9A
  loc_6F74E4: ImpAdLdRf MemVar_74C7D0
  loc_6F74E7: NewIfNullPr clsMsg
  loc_6F74EA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F74EF: ILdRf var_1D8
  loc_6F74F2: LitI2_Byte 0
  loc_6F74F4: FLdRfVar var_1F0
  loc_6F74F7: FLdUI1
  loc_6F74FB: CI2UI1
  loc_6F74FD: FLdPrThis
  loc_6F74FE: VCallAd Control_ID_Combo1
  loc_6F7501: FStAdFunc var_1DC
  loc_6F7504: FLdPr var_1DC
  loc_6F7507: Set from_stack_2 = Me(from_stack_1)
  loc_6F750C: FLdPr var_1F0
  loc_6F750F: Me.List(from_stack_1) = from_stack_2
  loc_6F7514: FFreeStr var_A4 = ""
  loc_6F751B: FFreeAd var_1DC = ""
  loc_6F7522: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7539: FLdRfVar var_1D8
  loc_6F753C: LitVar_Missing var_1D4
  loc_6F753F: LitVar_Missing var_1B4
  loc_6F7542: LitVar_Missing var_194
  loc_6F7545: LitVar_Missing var_174
  loc_6F7548: LitVar_Missing var_154
  loc_6F754B: LitVar_Missing var_134
  loc_6F754E: LitVar_Missing var_114
  loc_6F7551: LitVar_Missing var_F4
  loc_6F7554: LitVar_Missing var_D4
  loc_6F7557: LitVar_Missing var_B4
  loc_6F755A: LitStr "Alto Octanaje Con Plomo"
  loc_6F755D: FStStrCopy var_A4
  loc_6F7560: FLdRfVar var_A4
  loc_6F7563: LitI4 &H11
  loc_6F7568: PopTmpLdAdStr var_A0
  loc_6F756B: LitI2_Byte &H3F
  loc_6F756D: PopTmpLdAd2 var_9A
  loc_6F7570: ImpAdLdRf MemVar_74C7D0
  loc_6F7573: NewIfNullPr clsMsg
  loc_6F7576: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F757B: ILdRf var_1D8
  loc_6F757E: LitI2_Byte 1
  loc_6F7580: FLdRfVar var_1F0
  loc_6F7583: FLdUI1
  loc_6F7587: CI2UI1
  loc_6F7589: FLdPrThis
  loc_6F758A: VCallAd Control_ID_Combo1
  loc_6F758D: FStAdFunc var_1DC
  loc_6F7590: FLdPr var_1DC
  loc_6F7593: Set from_stack_2 = Me(from_stack_1)
  loc_6F7598: FLdPr var_1F0
  loc_6F759B: Me.List(from_stack_1) = from_stack_2
  loc_6F75A0: FFreeStr var_A4 = ""
  loc_6F75A7: FFreeAd var_1DC = ""
  loc_6F75AE: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F75C5: FLdRfVar var_1D8
  loc_6F75C8: LitVar_Missing var_1D4
  loc_6F75CB: LitVar_Missing var_1B4
  loc_6F75CE: LitVar_Missing var_194
  loc_6F75D1: LitVar_Missing var_174
  loc_6F75D4: LitVar_Missing var_154
  loc_6F75D7: LitVar_Missing var_134
  loc_6F75DA: LitVar_Missing var_114
  loc_6F75DD: LitVar_Missing var_F4
  loc_6F75E0: LitVar_Missing var_D4
  loc_6F75E3: LitVar_Missing var_B4
  loc_6F75E6: LitStr "Bajo Octanaje Sin Plomo"
  loc_6F75E9: FStStrCopy var_A4
  loc_6F75EC: FLdRfVar var_A4
  loc_6F75EF: LitI4 &H12
  loc_6F75F4: PopTmpLdAdStr var_A0
  loc_6F75F7: LitI2_Byte &H3F
  loc_6F75F9: PopTmpLdAd2 var_9A
  loc_6F75FC: ImpAdLdRf MemVar_74C7D0
  loc_6F75FF: NewIfNullPr clsMsg
  loc_6F7602: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7607: ILdRf var_1D8
  loc_6F760A: LitI2_Byte 2
  loc_6F760C: FLdRfVar var_1F0
  loc_6F760F: FLdUI1
  loc_6F7613: CI2UI1
  loc_6F7615: FLdPrThis
  loc_6F7616: VCallAd Control_ID_Combo1
  loc_6F7619: FStAdFunc var_1DC
  loc_6F761C: FLdPr var_1DC
  loc_6F761F: Set from_stack_2 = Me(from_stack_1)
  loc_6F7624: FLdPr var_1F0
  loc_6F7627: Me.List(from_stack_1) = from_stack_2
  loc_6F762C: FFreeStr var_A4 = ""
  loc_6F7633: FFreeAd var_1DC = ""
  loc_6F763A: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7651: FLdRfVar var_1D8
  loc_6F7654: LitVar_Missing var_1D4
  loc_6F7657: LitVar_Missing var_1B4
  loc_6F765A: LitVar_Missing var_194
  loc_6F765D: LitVar_Missing var_174
  loc_6F7660: LitVar_Missing var_154
  loc_6F7663: LitVar_Missing var_134
  loc_6F7666: LitVar_Missing var_114
  loc_6F7669: LitVar_Missing var_F4
  loc_6F766C: LitVar_Missing var_D4
  loc_6F766F: LitVar_Missing var_B4
  loc_6F7672: LitStr "Bajo Octanaje Con Plomo"
  loc_6F7675: FStStrCopy var_A4
  loc_6F7678: FLdRfVar var_A4
  loc_6F767B: LitI4 &H13
  loc_6F7680: PopTmpLdAdStr var_A0
  loc_6F7683: LitI2_Byte &H3F
  loc_6F7685: PopTmpLdAd2 var_9A
  loc_6F7688: ImpAdLdRf MemVar_74C7D0
  loc_6F768B: NewIfNullPr clsMsg
  loc_6F768E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7693: ILdRf var_1D8
  loc_6F7696: LitI2_Byte 3
  loc_6F7698: FLdRfVar var_1F0
  loc_6F769B: FLdUI1
  loc_6F769F: CI2UI1
  loc_6F76A1: FLdPrThis
  loc_6F76A2: VCallAd Control_ID_Combo1
  loc_6F76A5: FStAdFunc var_1DC
  loc_6F76A8: FLdPr var_1DC
  loc_6F76AB: Set from_stack_2 = Me(from_stack_1)
  loc_6F76B0: FLdPr var_1F0
  loc_6F76B3: Me.List(from_stack_1) = from_stack_2
  loc_6F76B8: FFreeStr var_A4 = ""
  loc_6F76BF: FFreeAd var_1DC = ""
  loc_6F76C6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F76DD: FLdRfVar var_1D8
  loc_6F76E0: LitVar_Missing var_1D4
  loc_6F76E3: LitVar_Missing var_1B4
  loc_6F76E6: LitVar_Missing var_194
  loc_6F76E9: LitVar_Missing var_174
  loc_6F76EC: LitVar_Missing var_154
  loc_6F76EF: LitVar_Missing var_134
  loc_6F76F2: LitVar_Missing var_114
  loc_6F76F5: LitVar_Missing var_F4
  loc_6F76F8: LitVar_Missing var_D4
  loc_6F76FB: LitVar_Missing var_B4
  loc_6F76FE: LitStr "Gas Oil - Fuel Oil"
  loc_6F7701: FStStrCopy var_A4
  loc_6F7704: FLdRfVar var_A4
  loc_6F7707: LitI4 &H14
  loc_6F770C: PopTmpLdAdStr var_A0
  loc_6F770F: LitI2_Byte &H3F
  loc_6F7711: PopTmpLdAd2 var_9A
  loc_6F7714: ImpAdLdRf MemVar_74C7D0
  loc_6F7717: NewIfNullPr clsMsg
  loc_6F771A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F771F: ILdRf var_1D8
  loc_6F7722: LitI2_Byte 4
  loc_6F7724: FLdRfVar var_1F0
  loc_6F7727: FLdUI1
  loc_6F772B: CI2UI1
  loc_6F772D: FLdPrThis
  loc_6F772E: VCallAd Control_ID_Combo1
  loc_6F7731: FStAdFunc var_1DC
  loc_6F7734: FLdPr var_1DC
  loc_6F7737: Set from_stack_2 = Me(from_stack_1)
  loc_6F773C: FLdPr var_1F0
  loc_6F773F: Me.List(from_stack_1) = from_stack_2
  loc_6F7744: FFreeStr var_A4 = ""
  loc_6F774B: FFreeAd var_1DC = ""
  loc_6F7752: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7769: FLdRfVar var_1D8
  loc_6F776C: LitVar_Missing var_1D4
  loc_6F776F: LitVar_Missing var_1B4
  loc_6F7772: LitVar_Missing var_194
  loc_6F7775: LitVar_Missing var_174
  loc_6F7778: LitVar_Missing var_154
  loc_6F777B: LitVar_Missing var_134
  loc_6F777E: LitVar_Missing var_114
  loc_6F7781: LitVar_Missing var_F4
  loc_6F7784: LitVar_Missing var_D4
  loc_6F7787: LitVar_Missing var_B4
  loc_6F778A: LitStr "Kerosene"
  loc_6F778D: FStStrCopy var_A4
  loc_6F7790: FLdRfVar var_A4
  loc_6F7793: LitI4 &H15
  loc_6F7798: PopTmpLdAdStr var_A0
  loc_6F779B: LitI2_Byte &H3F
  loc_6F779D: PopTmpLdAd2 var_9A
  loc_6F77A0: ImpAdLdRf MemVar_74C7D0
  loc_6F77A3: NewIfNullPr clsMsg
  loc_6F77A6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F77AB: ILdRf var_1D8
  loc_6F77AE: LitI2_Byte 5
  loc_6F77B0: FLdRfVar var_1F0
  loc_6F77B3: FLdUI1
  loc_6F77B7: CI2UI1
  loc_6F77B9: FLdPrThis
  loc_6F77BA: VCallAd Control_ID_Combo1
  loc_6F77BD: FStAdFunc var_1DC
  loc_6F77C0: FLdPr var_1DC
  loc_6F77C3: Set from_stack_2 = Me(from_stack_1)
  loc_6F77C8: FLdPr var_1F0
  loc_6F77CB: Me.List(from_stack_1) = from_stack_2
  loc_6F77D0: FFreeStr var_A4 = ""
  loc_6F77D7: FFreeAd var_1DC = ""
  loc_6F77DE: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F77F5: FLdRfVar var_9A
  loc_6F77F8: ImpAdLdRf MemVar_74E344
  loc_6F77FB: NewIfNullPr fModelosCanal1
  loc_6F77FE: from_stack_1v = fModelosCanal1.hasBlender()
  loc_6F7803: FLdI2 var_9A
  loc_6F7806: FLdRfVar var_1F6
  loc_6F7809: ImpAdLdRf MemVar_74E3E0
  loc_6F780C: NewIfNullPr fModelosCanal2
  loc_6F780F: from_stack_1v = fModelosCanal2.hasBlender()
  loc_6F7814: FLdI2 var_1F6
  loc_6F7817: OrI4
  loc_6F7818: BranchF loc_6F7983
  loc_6F781B: FLdRfVar var_1F6
  loc_6F781E: FLdRfVar var_1F0
  loc_6F7821: FLdUI1
  loc_6F7825: CI2UI1
  loc_6F7827: FLdPrThis
  loc_6F7828: VCallAd Control_ID_Label3
  loc_6F782B: FStAdFunc var_1DC
  loc_6F782E: FLdPr var_1DC
  loc_6F7831: Set from_stack_2 = fModelosCanal2(from_stack_1)
  loc_6F7836: FLdPr var_1F0
  loc_6F7839:  = Me.ListCount
  loc_6F783E: FLdRfVar var_1D8
  loc_6F7841: LitVar_Missing var_1D4
  loc_6F7844: LitVar_Missing var_1B4
  loc_6F7847: LitVar_Missing var_194
  loc_6F784A: LitVar_Missing var_174
  loc_6F784D: LitVar_Missing var_154
  loc_6F7850: LitVar_Missing var_134
  loc_6F7853: LitVar_Missing var_114
  loc_6F7856: LitVar_Missing var_F4
  loc_6F7859: LitVar_Missing var_D4
  loc_6F785C: LitVar_Missing var_B4
  loc_6F785F: LitStr "Mezcla con plomo"
  loc_6F7862: FStStrCopy var_A4
  loc_6F7865: FLdRfVar var_A4
  loc_6F7868: LitI4 &H17
  loc_6F786D: PopTmpLdAdStr var_A0
  loc_6F7870: LitI2_Byte &H3F
  loc_6F7872: PopTmpLdAd2 var_9A
  loc_6F7875: ImpAdLdRf MemVar_74C7D0
  loc_6F7878: NewIfNullPr clsMsg
  loc_6F787B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7880: ILdRf var_1D8
  loc_6F7883: FLdI2 var_1F6
  loc_6F7886: FLdRfVar var_200
  loc_6F7889: FLdUI1
  loc_6F788D: CI2UI1
  loc_6F788F: FLdPrThis
  loc_6F7890: VCallAd Control_ID_Combo1
  loc_6F7893: FStAdFunc var_1FC
  loc_6F7896: FLdPr var_1FC
  loc_6F7899: Set from_stack_2 = Me(from_stack_1)
  loc_6F789E: FLdPr var_200
  loc_6F78A1: Me.List(from_stack_1) = from_stack_2
  loc_6F78A6: FFreeStr var_A4 = ""
  loc_6F78AD: FFreeAd var_1DC = "": var_1F0 = "": var_1FC = ""
  loc_6F78B8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F78CF: FLdRfVar var_1F6
  loc_6F78D2: FLdRfVar var_1F0
  loc_6F78D5: FLdUI1
  loc_6F78D9: CI2UI1
  loc_6F78DB: FLdPrThis
  loc_6F78DC: VCallAd Control_ID_Combo1
  loc_6F78DF: FStAdFunc var_1DC
  loc_6F78E2: FLdPr var_1DC
  loc_6F78E5: Set from_stack_2 = Me(from_stack_1)
  loc_6F78EA: FLdPr var_1F0
  loc_6F78ED:  = Me.ListCount
  loc_6F78F2: FLdRfVar var_1D8
  loc_6F78F5: LitVar_Missing var_1D4
  loc_6F78F8: LitVar_Missing var_1B4
  loc_6F78FB: LitVar_Missing var_194
  loc_6F78FE: LitVar_Missing var_174
  loc_6F7901: LitVar_Missing var_154
  loc_6F7904: LitVar_Missing var_134
  loc_6F7907: LitVar_Missing var_114
  loc_6F790A: LitVar_Missing var_F4
  loc_6F790D: LitVar_Missing var_D4
  loc_6F7910: LitVar_Missing var_B4
  loc_6F7913: LitStr "Mezcla sin plomo"
  loc_6F7916: FStStrCopy var_A4
  loc_6F7919: FLdRfVar var_A4
  loc_6F791C: LitI4 &H17
  loc_6F7921: PopTmpLdAdStr var_A0
  loc_6F7924: LitI2_Byte &H3F
  loc_6F7926: PopTmpLdAd2 var_9A
  loc_6F7929: ImpAdLdRf MemVar_74C7D0
  loc_6F792C: NewIfNullPr clsMsg
  loc_6F792F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7934: ILdRf var_1D8
  loc_6F7937: FLdI2 var_1F6
  loc_6F793A: FLdRfVar var_200
  loc_6F793D: FLdUI1
  loc_6F7941: CI2UI1
  loc_6F7943: FLdPrThis
  loc_6F7944: VCallAd Control_ID_Combo1
  loc_6F7947: FStAdFunc var_1FC
  loc_6F794A: FLdPr var_1FC
  loc_6F794D: Set from_stack_2 = Me(from_stack_1)
  loc_6F7952: FLdPr var_200
  loc_6F7955: Me.List(from_stack_1) = from_stack_2
  loc_6F795A: FFreeStr var_A4 = ""
  loc_6F7961: FFreeAd var_1DC = "": var_1F0 = "": var_1FC = ""
  loc_6F796C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7983: ImpAdLdUI1
  loc_6F7987: CI2UI1
  loc_6F7989: LitI2_Byte 4
  loc_6F798B: EqI2
  loc_6F798C: ImpAdLdUI1
  loc_6F7990: CI2UI1
  loc_6F7992: LitI2_Byte 5
  loc_6F7994: EqI2
  loc_6F7995: OrI4
  loc_6F7996: BranchF loc_6F7A4D
  loc_6F7999: FLdRfVar var_1F6
  loc_6F799C: FLdRfVar var_1F0
  loc_6F799F: FLdUI1
  loc_6F79A3: CI2UI1
  loc_6F79A5: FLdPrThis
  loc_6F79A6: VCallAd Control_ID_Combo1
  loc_6F79A9: FStAdFunc var_1DC
  loc_6F79AC: FLdPr var_1DC
  loc_6F79AF: Set from_stack_2 = Me(from_stack_1)
  loc_6F79B4: FLdPr var_1F0
  loc_6F79B7:  = Me.ListCount
  loc_6F79BC: FLdRfVar var_1D8
  loc_6F79BF: LitVar_Missing var_1D4
  loc_6F79C2: LitVar_Missing var_1B4
  loc_6F79C5: LitVar_Missing var_194
  loc_6F79C8: LitVar_Missing var_174
  loc_6F79CB: LitVar_Missing var_154
  loc_6F79CE: LitVar_Missing var_134
  loc_6F79D1: LitVar_Missing var_114
  loc_6F79D4: LitVar_Missing var_F4
  loc_6F79D7: LitVar_Missing var_D4
  loc_6F79DA: LitVar_Missing var_B4
  loc_6F79DD: LitStr "GNC"
  loc_6F79E0: FStStrCopy var_A4
  loc_6F79E3: FLdRfVar var_A4
  loc_6F79E6: LitI4 &H1C
  loc_6F79EB: PopTmpLdAdStr var_A0
  loc_6F79EE: LitI2_Byte &H3F
  loc_6F79F0: PopTmpLdAd2 var_9A
  loc_6F79F3: ImpAdLdRf MemVar_74C7D0
  loc_6F79F6: NewIfNullPr clsMsg
  loc_6F79F9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F79FE: ILdRf var_1D8
  loc_6F7A01: FLdI2 var_1F6
  loc_6F7A04: FLdRfVar var_200
  loc_6F7A07: FLdUI1
  loc_6F7A0B: CI2UI1
  loc_6F7A0D: FLdPrThis
  loc_6F7A0E: VCallAd Control_ID_Combo1
  loc_6F7A11: FStAdFunc var_1FC
  loc_6F7A14: FLdPr var_1FC
  loc_6F7A17: Set from_stack_2 = Me(from_stack_1)
  loc_6F7A1C: FLdPr var_200
  loc_6F7A1F: Me.List(from_stack_1) = from_stack_2
  loc_6F7A24: FFreeStr var_A4 = ""
  loc_6F7A2B: FFreeAd var_1DC = "": var_1F0 = "": var_1FC = ""
  loc_6F7A36: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7A4D: FLdRfVar var_1D8
  loc_6F7A50: LitVar_Missing var_1D4
  loc_6F7A53: LitVar_Missing var_1B4
  loc_6F7A56: LitVar_Missing var_194
  loc_6F7A59: LitVar_Missing var_174
  loc_6F7A5C: LitVar_Missing var_154
  loc_6F7A5F: LitVar_Missing var_134
  loc_6F7A62: LitVar_Missing var_114
  loc_6F7A65: LitVar_Missing var_F4
  loc_6F7A68: LitVar_Missing var_D4
  loc_6F7A6B: LitVar_Missing var_B4
  loc_6F7A6E: LitStr "Cod."
  loc_6F7A71: FStStrCopy var_A4
  loc_6F7A74: FLdRfVar var_A4
  loc_6F7A77: LitI4 &H16
  loc_6F7A7C: PopTmpLdAdStr var_A0
  loc_6F7A7F: LitI2_Byte &H3F
  loc_6F7A81: PopTmpLdAd2 var_9A
  loc_6F7A84: ImpAdLdRf MemVar_74C7D0
  loc_6F7A87: NewIfNullPr clsMsg
  loc_6F7A8A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7A8F: ILdRf var_1D8
  loc_6F7A92: LitStr " "
  loc_6F7A95: ConcatStr
  loc_6F7A96: FStStrNoPop var_204
  loc_6F7A99: FLdUI1
  loc_6F7A9D: CStrI2
  loc_6F7A9F: FStStrNoPop var_208
  loc_6F7AA2: ConcatStr
  loc_6F7AA3: FStStrNoPop var_20C
  loc_6F7AA6: LitStr " :"
  loc_6F7AA9: ConcatStr
  loc_6F7AAA: FStStrNoPop var_210
  loc_6F7AAD: FLdRfVar var_1F0
  loc_6F7AB0: FLdUI1
  loc_6F7AB4: CI2UI1
  loc_6F7AB6: FLdPrThis
  loc_6F7AB7: VCallAd Control_ID_Label1
  loc_6F7ABA: FStAdFunc var_1DC
  loc_6F7ABD: FLdPr var_1DC
  loc_6F7AC0: Set from_stack_2 = Me(from_stack_1)
  loc_6F7AC5: FLdPr var_1F0
  loc_6F7AC8: Me.Caption = from_stack_1
  loc_6F7ACD: FFreeStr var_A4 = "": var_1D8 = "": var_204 = "": var_208 = "": var_20C = ""
  loc_6F7ADC: FFreeAd var_1DC = ""
  loc_6F7AE3: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F7AFA: LitStr " "
  loc_6F7AFD: FLdRfVar var_A4
  loc_6F7B00: FLdUI1
  loc_6F7B04: CI2UI1
  loc_6F7B06: ImpAdLdRf MemVar_74A220
  loc_6F7B09: NewIfNullPr clsProducts
  loc_6F7B11: ILdRf var_A4
  loc_6F7B14: ConcatStr
  loc_6F7B15: FStStrNoPop var_1D8
  loc_6F7B18: FLdRfVar var_1F0
  loc_6F7B1B: FLdUI1
  loc_6F7B1F: CI2UI1
  loc_6F7B21: FLdPrThis
  loc_6F7B22: VCallAd Control_ID_Text1
  loc_6F7B25: FStAdFunc var_1DC
  loc_6F7B28: FLdPr var_1DC
  loc_6F7B2B: Set from_stack_2 = Me(from_stack_1)
  loc_6F7B30: FLdPr var_1F0
  loc_6F7B33: Me.Text = from_stack_1
  loc_6F7B38: FFreeStr var_A4 = ""
  loc_6F7B3F: FFreeAd var_1DC = ""
  loc_6F7B46: FLdRfVar var_A4
  loc_6F7B49: FLdUI1
  loc_6F7B4D: CI2UI1
  loc_6F7B4F: ImpAdLdRf MemVar_74A220
  loc_6F7B52: NewIfNullPr clsProducts
  loc_6F7B5A: ILdRf var_A4
  loc_6F7B5D: LitStr vbNullString
  loc_6F7B60: NeStr
  loc_6F7B62: FFree1Str var_A4
  loc_6F7B65: BranchF loc_6F7CD5
  loc_6F7B68: FLdRfVar var_9A
  loc_6F7B6B: FLdRfVar var_1F0
  loc_6F7B6E: FLdUI1
  loc_6F7B72: CI2UI1
  loc_6F7B74: FLdPrThis
  loc_6F7B75: VCallAd Control_ID_Combo1
  loc_6F7B78: FStAdFunc var_1DC
  loc_6F7B7B: FLdPr var_1DC
  loc_6F7B7E: Set from_stack_2 = Me(from_stack_1)
  loc_6F7B83: FLdPr var_1F0
  loc_6F7B86:  = Me.ListCount
  loc_6F7B8B: FLdI2 var_9A
  loc_6F7B8E: FLdRfVar var_1F6
  loc_6F7B91: FLdUI1
  loc_6F7B95: CI2UI1
  loc_6F7B97: ImpAdLdRf MemVar_74A220
  loc_6F7B9A: NewIfNullPr clsProducts
  loc_6F7B9D:  = clsProducts.Name
  loc_6F7BA2: FLdI2 var_1F6
  loc_6F7BA5: LitI2_Byte 1
  loc_6F7BA7: SubI2
  loc_6F7BA8: GtI2
  loc_6F7BA9: FFreeAd var_1DC = ""
  loc_6F7BB0: BranchF loc_6F7C0B
  loc_6F7BB3: FLdRfVar var_9A
  loc_6F7BB6: FLdUI1
  loc_6F7BBA: CI2UI1
  loc_6F7BBC: ImpAdLdRf MemVar_74A220
  loc_6F7BBF: NewIfNullPr clsProducts
  loc_6F7BC2:  = clsProducts.Name
  loc_6F7BC7: FLdRfVar var_214
  loc_6F7BCA: FLdUI1
  loc_6F7BCE: CI2UI1
  loc_6F7BD0: PopTmpLdAd2 var_212
  loc_6F7BD3: FLdI2 var_9A
  loc_6F7BD6: PopTmpLdAd2 var_1F6
  loc_6F7BD9: from_stack_3v = Proc_163_19_5F2538(from_stack_1v, from_stack_2v)
  loc_6F7BDE: FLdI2 var_214
  loc_6F7BE1: FLdRfVar var_1F0
  loc_6F7BE4: FLdUI1
  loc_6F7BE8: CI2UI1
  loc_6F7BEA: FLdPrThis
  loc_6F7BEB: VCallAd Control_ID_Combo1
  loc_6F7BEE: FStAdFunc var_1DC
  loc_6F7BF1: FLdPr var_1DC
  loc_6F7BF4: Set from_stack_2 = Me(from_stack_1)
  loc_6F7BF9: FLdPr var_1F0
  loc_6F7BFC: Me.ListIndex = from_stack_1
  loc_6F7C01: FFreeAd var_1DC = ""
  loc_6F7C08: Branch loc_6F7CA9
  loc_6F7C0B: FLdRfVar var_9A
  loc_6F7C0E: FLdUI1
  loc_6F7C12: CI2UI1
  loc_6F7C14: ImpAdLdRf MemVar_74A220
  loc_6F7C17: NewIfNullPr clsProducts
  loc_6F7C1A:  = clsProducts.Name
  loc_6F7C1F: FLdI2 var_9A
  loc_6F7C22: LitI2_Byte 9
  loc_6F7C24: EqI2
  loc_6F7C25: BranchF loc_6F7C80
  loc_6F7C28: FLdRfVar var_9A
  loc_6F7C2B: FLdUI1
  loc_6F7C2F: CI2UI1
  loc_6F7C31: ImpAdLdRf MemVar_74A220
  loc_6F7C34: NewIfNullPr clsProducts
  loc_6F7C37:  = clsProducts.Name
  loc_6F7C3C: FLdRfVar var_214
  loc_6F7C3F: FLdUI1
  loc_6F7C43: CI2UI1
  loc_6F7C45: PopTmpLdAd2 var_212
  loc_6F7C48: FLdI2 var_9A
  loc_6F7C4B: PopTmpLdAd2 var_1F6
  loc_6F7C4E: from_stack_3v = Proc_163_19_5F2538(from_stack_1v, from_stack_2v)
  loc_6F7C53: FLdI2 var_214
  loc_6F7C56: FLdRfVar var_1F0
  loc_6F7C59: FLdUI1
  loc_6F7C5D: CI2UI1
  loc_6F7C5F: FLdPrThis
  loc_6F7C60: VCallAd Control_ID_Combo1
  loc_6F7C63: FStAdFunc var_1DC
  loc_6F7C66: FLdPr var_1DC
  loc_6F7C69: Set from_stack_2 = Me(from_stack_1)
  loc_6F7C6E: FLdPr var_1F0
  loc_6F7C71: Me.ListIndex = from_stack_1
  loc_6F7C76: FFreeAd var_1DC = ""
  loc_6F7C7D: Branch loc_6F7CA9
  loc_6F7C80: LitI2_Byte 0
  loc_6F7C82: FLdRfVar var_1F0
  loc_6F7C85: FLdUI1
  loc_6F7C89: CI2UI1
  loc_6F7C8B: FLdPrThis
  loc_6F7C8C: VCallAd Control_ID_Combo1
  loc_6F7C8F: FStAdFunc var_1DC
  loc_6F7C92: FLdPr var_1DC
  loc_6F7C95: Set from_stack_2 = Me(from_stack_1)
  loc_6F7C9A: FLdPr var_1F0
  loc_6F7C9D: Me.ListIndex = from_stack_1
  loc_6F7CA2: FFreeAd var_1DC = ""
  loc_6F7CA9: LitI2_Byte &HFF
  loc_6F7CAB: FLdRfVar var_1F0
  loc_6F7CAE: FLdUI1
  loc_6F7CB2: CI2UI1
  loc_6F7CB4: FLdPrThis
  loc_6F7CB5: VCallAd Control_ID_Combo1
  loc_6F7CB8: FStAdFunc var_1DC
  loc_6F7CBB: FLdPr var_1DC
  loc_6F7CBE: Set from_stack_2 = Me(from_stack_1)
  loc_6F7CC3: FLdPr var_1F0
  loc_6F7CC6: Me.Enabled = from_stack_1b
  loc_6F7CCB: FFreeAd var_1DC = ""
  loc_6F7CD2: Branch loc_6F7D27
  loc_6F7CD5: LitI2_Byte 0
  loc_6F7CD7: FLdRfVar var_1F0
  loc_6F7CDA: FLdUI1
  loc_6F7CDE: CI2UI1
  loc_6F7CE0: FLdPrThis
  loc_6F7CE1: VCallAd Control_ID_Combo1
  loc_6F7CE4: FStAdFunc var_1DC
  loc_6F7CE7: FLdPr var_1DC
  loc_6F7CEA: Set from_stack_2 = Me(from_stack_1)
  loc_6F7CEF: FLdPr var_1F0
  loc_6F7CF2: Me.Enabled = from_stack_1b
  loc_6F7CF7: FFreeAd var_1DC = ""
  loc_6F7CFE: LitI2_Byte &HFF
  loc_6F7D00: FLdRfVar var_1F0
  loc_6F7D03: FLdUI1
  loc_6F7D07: CI2UI1
  loc_6F7D09: FLdPrThis
  loc_6F7D0A: VCallAd Control_ID_Combo1
  loc_6F7D0D: FStAdFunc var_1DC
  loc_6F7D10: FLdPr var_1DC
  loc_6F7D13: Set from_stack_2 = Me(from_stack_1)
  loc_6F7D18: FLdPr var_1F0
  loc_6F7D1B: Me.ListIndex = from_stack_1
  loc_6F7D20: FFreeAd var_1DC = ""
  loc_6F7D27: FLdRfVar var_86
  loc_6F7D2A: NextUI1
  loc_6F7D30: ImpAdLdUI1
  loc_6F7D34: CI2UI1
  loc_6F7D36: LitI2_Byte 0
  loc_6F7D38: LtI2
  loc_6F7D39: ImpAdLdUI1
  loc_6F7D3D: CI2UI1
  loc_6F7D3F: FLdRfVar var_9A
  loc_6F7D42: FLdPrThis
  loc_6F7D43: VCallAd Control_ID_OptionTanque
  loc_6F7D46: FStAdFunc var_1DC
  loc_6F7D49: FLdPr var_1DC
  loc_6F7D4C: Call 0.Method_Form_ActivateC ()
  loc_6F7D51: FLdI2 var_9A
  loc_6F7D54: LitI2_Byte 1
  loc_6F7D56: SubI2
  loc_6F7D57: GtI2
  loc_6F7D58: OrI4
  loc_6F7D59: FFree1Ad var_1DC
  loc_6F7D5C: BranchF loc_6F7D67
  loc_6F7D5F: LitI2_Byte 0
  loc_6F7D61: CUI1I2
  loc_6F7D63: ImpAdStUI1 MemVar_74C1F0
  loc_6F7D67: LitI2_Byte &HFF
  loc_6F7D69: FLdRfVar var_1F0
  loc_6F7D6C: ImpAdLdUI1
  loc_6F7D70: CI2UI1
  loc_6F7D72: FLdPrThis
  loc_6F7D73: VCallAd Control_ID_OptionTanque
  loc_6F7D76: FStAdFunc var_1DC
  loc_6F7D79: FLdPr var_1DC
  loc_6F7D7C: Set from_stack_2 = Me(from_stack_1)
  loc_6F7D81: FLdPr var_1F0
  loc_6F7D84: Me.Value = from_stack_1b
  loc_6F7D89: FFreeAd var_1DC = ""
  loc_6F7D90: LitVarI2 var_98, 1
  loc_6F7D95: FLdPr Me
  loc_6F7D98: MemStVar
  loc_6F7D9C: LitI2_Byte 1
  loc_6F7D9E: CUI1I2
  loc_6F7DA0: FLdRfVar var_216
  loc_6F7DA3: FLdRfVar var_9A
  loc_6F7DA6: ImpAdLdRf MemVar_74A220
  loc_6F7DA9: NewIfNullPr clsProducts
  loc_6F7DAC: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6F7DB1: FLdI2 var_9A
  loc_6F7DB4: CUI1I2
  loc_6F7DB6: ForUI1 var_21A
  loc_6F7DBC: FLdRfVar var_9A
  loc_6F7DBF: FLdUI1
  loc_6F7DC3: CI2UI1
  loc_6F7DC5: ImpAdLdRf MemVar_74A220
  loc_6F7DC8: NewIfNullPr clsProducts
  loc_6F7DCB:  = clsProducts.Name
  loc_6F7DD0: FLdRfVar var_214
  loc_6F7DD3: FLdUI1
  loc_6F7DD7: CI2UI1
  loc_6F7DD9: PopTmpLdAd2 var_212
  loc_6F7DDC: FLdI2 var_9A
  loc_6F7DDF: PopTmpLdAd2 var_1F6
  loc_6F7DE2: from_stack_3v = Proc_163_19_5F2538(from_stack_1v, from_stack_2v)
  loc_6F7DE7: FLdI2 var_214
  loc_6F7DEA: FLdRfVar var_1F0
  loc_6F7DED: FLdUI1
  loc_6F7DF1: CI2UI1
  loc_6F7DF3: FLdPrThis
  loc_6F7DF4: VCallAd Control_ID_Combo1
  loc_6F7DF7: FStAdFunc var_1DC
  loc_6F7DFA: FLdPr var_1DC
  loc_6F7DFD: Set from_stack_2 = Me(from_stack_1)
  loc_6F7E02: FLdPr var_1F0
  loc_6F7E05: Me.ListIndex = from_stack_1
  loc_6F7E0A: FFreeAd var_1DC = ""
  loc_6F7E11: FLdRfVar var_216
  loc_6F7E14: NextUI1
  loc_6F7E1A: ImpAdLdUI1
  loc_6F7E1E: CI2UI1
  loc_6F7E20: LitI2_Byte 1
  loc_6F7E22: EqI2
  loc_6F7E23: FLdRfVar var_9A
  loc_6F7E26: ImpAdLdRf MemVar_74C6D8
  loc_6F7E29: NewIfNullPr CCEMLicence
  loc_6F7E2C:  = Forms
  loc_6F7E31: FLdI2 var_9A
  loc_6F7E34: OrI4
  loc_6F7E35: BranchF loc_6F7E77
  loc_6F7E38: LitVar_FALSE
  loc_6F7E3C: PopAdLdVar
  loc_6F7E3D: FLdPrThis
  loc_6F7E3E: VCallAd Control_ID_SSFrame1
  loc_6F7E41: FStAdFunc var_1DC
  loc_6F7E44: FLdPr var_1DC
  loc_6F7E47: LateIdSt
  loc_6F7E4C: FFree1Ad var_1DC
  loc_6F7E4F: LitI2_Byte &HFF
  loc_6F7E51: FLdRfVar var_1F0
  loc_6F7E54: LitI2_Byte 0
  loc_6F7E56: FLdPrThis
  loc_6F7E57: VCallAd Control_ID_OptionTanque
  loc_6F7E5A: FStAdFunc var_1DC
  loc_6F7E5D: FLdPr var_1DC
  loc_6F7E60: Set from_stack_2 = Me(from_stack_1)
  loc_6F7E65: FLdPr var_1F0
  loc_6F7E68: Me.Value = from_stack_1b
  loc_6F7E6D: FFreeAd var_1DC = ""
  loc_6F7E74: Branch loc_6F7E8D
  loc_6F7E77: LitVar_TRUE var_98
  loc_6F7E7A: PopAdLdVar
  loc_6F7E7B: FLdPrThis
  loc_6F7E7C: VCallAd Control_ID_SSFrame1
  loc_6F7E7F: FStAdFunc var_1DC
  loc_6F7E82: FLdPr var_1DC
  loc_6F7E85: LateIdSt
  loc_6F7E8A: FFree1Ad var_1DC
  loc_6F7E8D: FLdRfVar var_1D8
  loc_6F7E90: LitVar_Missing var_1D4
  loc_6F7E93: LitVar_Missing var_1B4
  loc_6F7E96: LitVar_Missing var_194
  loc_6F7E99: LitVar_Missing var_174
  loc_6F7E9C: LitVar_Missing var_154
  loc_6F7E9F: LitVar_Missing var_134
  loc_6F7EA2: LitVar_Missing var_114
  loc_6F7EA5: LitVar_Missing var_F4
  loc_6F7EA8: LitVar_Missing var_D4
  loc_6F7EAB: LitVar_Missing var_B4
  loc_6F7EAE: LitStr "Página &Anterior"
  loc_6F7EB1: FStStrCopy var_A4
  loc_6F7EB4: FLdRfVar var_A4
  loc_6F7EB7: LitI4 6
  loc_6F7EBC: PopTmpLdAdStr var_A0
  loc_6F7EBF: LitI2_Byte &H3F
  loc_6F7EC1: PopTmpLdAd2 var_9A
  loc_6F7EC4: ImpAdLdRf MemVar_74C7D0
  loc_6F7EC7: NewIfNullPr clsMsg
  loc_6F7ECA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7ECF: FLdZeroAd var_1D8
  loc_6F7ED2: CVarStr var_1EC
  loc_6F7ED5: PopAdLdVar
  loc_6F7ED6: FLdPrThis
  loc_6F7ED7: VCallAd Control_ID_SSCommand1
  loc_6F7EDA: FStAdFunc var_1DC
  loc_6F7EDD: FLdPr var_1DC
  loc_6F7EE0: LateIdSt
  loc_6F7EE5: FFree1Str var_A4
  loc_6F7EE8: FFree1Ad var_1DC
  loc_6F7EEB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7F04: FLdRfVar var_1D8
  loc_6F7F07: LitVar_Missing var_1D4
  loc_6F7F0A: LitVar_Missing var_1B4
  loc_6F7F0D: LitVar_Missing var_194
  loc_6F7F10: LitVar_Missing var_174
  loc_6F7F13: LitVar_Missing var_154
  loc_6F7F16: LitVar_Missing var_134
  loc_6F7F19: LitVar_Missing var_114
  loc_6F7F1C: LitVar_Missing var_F4
  loc_6F7F1F: LitVar_Missing var_D4
  loc_6F7F22: LitVar_Missing var_B4
  loc_6F7F25: LitStr "&Próxima Página"
  loc_6F7F28: FStStrCopy var_A4
  loc_6F7F2B: FLdRfVar var_A4
  loc_6F7F2E: LitI4 9
  loc_6F7F33: PopTmpLdAdStr var_A0
  loc_6F7F36: LitI2_Byte &H3F
  loc_6F7F38: PopTmpLdAd2 var_9A
  loc_6F7F3B: ImpAdLdRf MemVar_74C7D0
  loc_6F7F3E: NewIfNullPr clsMsg
  loc_6F7F41: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F7F46: FLdZeroAd var_1D8
  loc_6F7F49: CVarStr var_1EC
  loc_6F7F4C: PopAdLdVar
  loc_6F7F4D: FLdPrThis
  loc_6F7F4E: VCallAd Control_ID_SSCommand2
  loc_6F7F51: FStAdFunc var_1DC
  loc_6F7F54: FLdPr var_1DC
  loc_6F7F57: LateIdSt
  loc_6F7F5C: FFree1Str var_A4
  loc_6F7F5F: FFree1Ad var_1DC
  loc_6F7F62: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = ""
  loc_6F7F7B: ExitProcHresult
End Sub

Public Sub CargarProductos() '61BC2C
  'Data Table: 42904C
  loc_61BAFC: ImpAdLdRf MemVar_74A220
  loc_61BAFF: NewIfNullPr clsProducts
  loc_61BB02:  = clsProducts.Width
  loc_61BB07: LitI2_Byte 1
  loc_61BB09: FLdRfVar var_86
  loc_61BB0C: LitI2_Byte &HA
  loc_61BB0E: ForI2 var_8A
  loc_61BB14: FLdRfVar var_98
  loc_61BB17: FLdRfVar var_94
  loc_61BB1A: FLdI2 var_86
  loc_61BB1D: FLdPrThis
  loc_61BB1E: VCallAd Control_ID_Text1
  loc_61BB21: FStAdFunc var_90
  loc_61BB24: FLdPr var_90
  loc_61BB27: Set from_stack_2 = Me(from_stack_1)
  loc_61BB2C: FLdPr var_94
  loc_61BB2F:  = Me.Text
  loc_61BB34: FLdZeroAd var_98
  loc_61BB37: CVarStr var_A8
  loc_61BB3A: FLdRfVar var_B8
  loc_61BB3D: ImpAdCallFPR4  = Trim()
  loc_61BB42: FLdRfVar var_B8
  loc_61BB45: LitVarStr var_C8, vbNullString
  loc_61BB4A: HardType
  loc_61BB4B: NeVarBool
  loc_61BB4D: FFreeAd var_90 = ""
  loc_61BB54: FFreeVar var_A8 = ""
  loc_61BB5B: BranchF loc_61BC1C
  loc_61BB5E: FLdRfVar var_98
  loc_61BB61: FLdRfVar var_94
  loc_61BB64: FLdI2 var_86
  loc_61BB67: FLdPrThis
  loc_61BB68: VCallAd Control_ID_Text1
  loc_61BB6B: FStAdFunc var_90
  loc_61BB6E: FLdPr var_90
  loc_61BB71: Set from_stack_2 = Me(from_stack_1)
  loc_61BB76: FLdPr var_94
  loc_61BB79:  = Me.Text
  loc_61BB7E: FLdZeroAd var_98
  loc_61BB81: CVarStr var_A8
  loc_61BB84: FLdRfVar var_B8
  loc_61BB87: ImpAdCallFPR4  = Trim()
  loc_61BB8C: FLdRfVar var_B8
  loc_61BB8F: CStrVarTmp
  loc_61BB90: PopTmpLdAdStr
  loc_61BB94: FLdI2 var_86
  loc_61BB97: ImpAdLdRf MemVar_74A220
  loc_61BB9A: NewIfNullPr clsProducts
  loc_61BBA2: FFree1Str var_DC
  loc_61BBA5: FFreeAd var_90 = ""
  loc_61BBAC: FFreeVar var_A8 = ""
  loc_61BBB3: FLdRfVar var_98
  loc_61BBB6: FLdRfVar var_94
  loc_61BBB9: FLdI2 var_86
  loc_61BBBC: FLdPrThis
  loc_61BBBD: VCallAd Control_ID_Combo1
  loc_61BBC0: FStAdFunc var_90
  loc_61BBC3: FLdPr var_90
  loc_61BBC6: Set from_stack_2 = Me(from_stack_1)
  loc_61BBCB: FLdPr var_94
  loc_61BBCE:  = Me.Text
  loc_61BBD3: FLdZeroAd var_98
  loc_61BBD6: PopTmpLdAdStr
  loc_61BBDA: ImpAdCallI2 Proc_167_28_6636AC()
  loc_61BBDF: PopTmpLdAd2 var_DE
  loc_61BBE2: FLdI2 var_86
  loc_61BBE5: ImpAdLdRf MemVar_74A220
  loc_61BBE8: NewIfNullPr clsProducts
  loc_61BBEB: clsProducts = from_stack_1
  loc_61BBF0: FFree1Str var_DC
  loc_61BBF3: FFreeAd var_90 = ""
  loc_61BBFA: FLdRfVar var_DE
  loc_61BBFD: ImpAdLdRf MemVar_74A220
  loc_61BC00: NewIfNullPr clsProducts
  loc_61BC03: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_61BC08: FLdI2 var_DE
  loc_61BC0B: LitI2_Byte 1
  loc_61BC0D: AddI2
  loc_61BC0E: PopTmpLdAd2 var_E0
  loc_61BC11: ImpAdLdRf MemVar_74A220
  loc_61BC14: NewIfNullPr clsProducts
  loc_61BC17: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61BC1C: FLdRfVar var_86
  loc_61BC1F: NextI2 var_8A, loc_61BB14
  loc_61BC24: ImpAdCallFPR4 Proc_167_11_632680()
  loc_61BC29: ExitProcHresult
End Sub

Public Function CambioPorcentajeMezcla() '5C9860
  'Data Table: 42904C
  loc_5C9854: LitI2_Byte &HFF
  loc_5C9856: FStI2 var_86
  loc_5C9859: ExitProcCbHresult
End Function

Public Sub CorregirIndices() '6187F8
  'Data Table: 42904C
  loc_6186CC: LitStr vbNullString
  loc_6186CF: FStStrCopy var_8C
  loc_6186D2: LitStr vbNullString
  loc_6186D5: FStStrCopy var_90
  loc_6186D8: LitI2_Byte 1
  loc_6186DA: FLdRfVar var_86
  loc_6186DD: LitI2_Byte &HA
  loc_6186DF: ForI2 var_96
  loc_6186E5: FLdRfVar var_98
  loc_6186E8: FLdI2 var_86
  loc_6186EB: ImpAdLdRf MemVar_74A220
  loc_6186EE: NewIfNullPr clsProducts
  loc_6186F1:  = clsProducts.Name
  loc_6186F6: FLdI2 var_98
  loc_6186F9: LitI2_Byte &HA
  loc_6186FB: GtI2
  loc_6186FC: BranchF loc_61872C
  loc_6186FF: LitI2_Byte 0
  loc_618701: PopTmpLdAd2 var_98
  loc_618704: FLdI2 var_86
  loc_618707: ImpAdLdRf MemVar_74A220
  loc_61870A: NewIfNullPr clsProducts
  loc_61870D: clsProducts = from_stack_1
  loc_618712: LitStr vbNullString
  loc_618715: FStStrCopy var_9C
  loc_618718: FLdRfVar var_9C
  loc_61871B: FLdI2 var_86
  loc_61871E: ImpAdLdRf MemVar_74A220
  loc_618721: NewIfNullPr clsProducts
  loc_618729: FFree1Str var_9C
  loc_61872C: FLdRfVar var_86
  loc_61872F: NextI2 var_96, loc_6186E5
  loc_618734: LitI2_Byte 1
  loc_618736: FLdRfVar var_86
  loc_618739: LitI2_Byte &HA
  loc_61873B: ForI2 var_A0
  loc_618741: FLdRfVar var_9C
  loc_618744: FLdI2 var_86
  loc_618747: ImpAdLdRf MemVar_74A220
  loc_61874A: NewIfNullPr clsProducts
  loc_618752: ILdRf var_9C
  loc_618755: LitStr vbNullString
  loc_618758: EqStr
  loc_61875A: FLdI2 var_86
  loc_61875D: LitI2_Byte &HA
  loc_61875F: LtI2
  loc_618760: AndI4
  loc_618761: FFree1Str var_9C
  loc_618764: BranchF loc_6187EE
  loc_618767: FLdRfVar var_9C
  loc_61876A: FLdI2 var_86
  loc_61876D: LitI2_Byte 1
  loc_61876F: AddI2
  loc_618770: ImpAdLdRf MemVar_74A220
  loc_618773: NewIfNullPr clsProducts
  loc_61877B: FLdZeroAd var_9C
  loc_61877E: PopTmpLdAdStr
  loc_618782: FLdI2 var_86
  loc_618785: ImpAdLdRf MemVar_74A220
  loc_618788: NewIfNullPr clsProducts
  loc_618790: FFree1Str var_A4
  loc_618793: LitStr vbNullString
  loc_618796: FStStrCopy var_9C
  loc_618799: FLdRfVar var_9C
  loc_61879C: FLdI2 var_86
  loc_61879F: LitI2_Byte 1
  loc_6187A1: AddI2
  loc_6187A2: ImpAdLdRf MemVar_74A220
  loc_6187A5: NewIfNullPr clsProducts
  loc_6187AD: FFree1Str var_9C
  loc_6187B0: FLdRfVar var_98
  loc_6187B3: FLdI2 var_86
  loc_6187B6: LitI2_Byte 1
  loc_6187B8: AddI2
  loc_6187B9: ImpAdLdRf MemVar_74A220
  loc_6187BC: NewIfNullPr clsProducts
  loc_6187BF:  = clsProducts.Name
  loc_6187C4: FLdI2 var_98
  loc_6187C7: PopTmpLdAd2 var_A6
  loc_6187CA: FLdI2 var_86
  loc_6187CD: ImpAdLdRf MemVar_74A220
  loc_6187D0: NewIfNullPr clsProducts
  loc_6187D3: clsProducts = from_stack_1
  loc_6187D8: LitI2_Byte 0
  loc_6187DA: PopTmpLdAd2 var_98
  loc_6187DD: FLdI2 var_86
  loc_6187E0: LitI2_Byte 1
  loc_6187E2: AddI2
  loc_6187E3: ImpAdLdRf MemVar_74A220
  loc_6187E6: NewIfNullPr clsProducts
  loc_6187E9: clsProducts = from_stack_1
  loc_6187EE: FLdRfVar var_86
  loc_6187F1: NextI2 var_A0, loc_618741
  loc_6187F6: ExitProcHresult
End Sub

Public Function GNCsinTelemedidores() '622488
  'Data Table: 42904C
  loc_622338: FLdRfVar var_92
  loc_62233B: FLdRfVar var_90
  loc_62233E: LitI2_Byte 0
  loc_622340: FLdPrThis
  loc_622341: VCallAd Control_ID_OptionTanque
  loc_622344: FStAdFunc var_8C
  loc_622347: FLdPr var_8C
  loc_62234A: Set from_stack_2 = Me(from_stack_1)
  loc_62234F: FLdPr var_90
  loc_622352:  = Me.Value
  loc_622357: FLdI2 var_92
  loc_62235A: LitI2_Byte &HFF
  loc_62235C: EqI2
  loc_62235D: FFreeAd var_8C = ""
  loc_622364: BranchF loc_62236D
  loc_622367: ExitProcCbHresult
  loc_62236D: FLdRfVar var_92
  loc_622370: from_stack_1v = Proc_163_18_5E9F04()
  loc_622375: FLdI2 var_92
  loc_622378: LitI2_Byte 0
  loc_62237A: GtI2
  loc_62237B: BranchF loc_622446
  loc_62237E: LitVarI2 var_D8, 1
  loc_622383: FLdRfVar var_A4
  loc_622386: FLdRfVar var_92
  loc_622389: ImpAdLdRf MemVar_74A220
  loc_62238C: NewIfNullPr clsProducts
  loc_62238F: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_622394: FLdI2 var_92
  loc_622397: CVarI2 var_C8
  loc_62239A: ForVar var_F8
  loc_6223A0: FLdRfVar var_FC
  loc_6223A3: FLdRfVar var_90
  loc_6223A6: FLdRfVar var_A4
  loc_6223A9: CI2Var
  loc_6223AA: FLdPrThis
  loc_6223AB: VCallAd Control_ID_Combo1
  loc_6223AE: FStAdFunc var_8C
  loc_6223B1: FLdPr var_8C
  loc_6223B4: Set from_stack_2 = Me(from_stack_1)
  loc_6223B9: FLdPr var_90
  loc_6223BC:  = Me.Text
  loc_6223C1: FLdZeroAd var_FC
  loc_6223C4: PopTmpLdAdStr
  loc_6223C8: ImpAdCallI2 Proc_167_28_6636AC()
  loc_6223CD: CStrUI1
  loc_6223CF: FStStrNoPop var_104
  loc_6223D2: LitStr vbNullString
  loc_6223D5: NeStr
  loc_6223D7: FFreeStr var_100 = ""
  loc_6223DE: FFreeAd var_8C = ""
  loc_6223E5: BranchF loc_6223F7
  loc_6223E8: FLdUI1
  loc_6223EC: CI2UI1
  loc_6223EE: LitI2_Byte 1
  loc_6223F0: AddI2
  loc_6223F1: CUI1I2
  loc_6223F3: FStUI1 var_A6
  loc_6223F7: FLdRfVar var_A4
  loc_6223FA: NextStepVar var_F8
  loc_622400: FLdUI1
  loc_622404: CI2UI1
  loc_622406: LitI2_Byte 1
  loc_622408: EqI2
  loc_622409: FLdRfVar var_92
  loc_62240C: FLdRfVar var_90
  loc_62240F: LitI2_Byte 0
  loc_622411: FLdPrThis
  loc_622412: VCallAd Control_ID_OptionTanque
  loc_622415: FStAdFunc var_8C
  loc_622418: FLdPr var_8C
  loc_62241B: Set from_stack_2 = Me(from_stack_1)
  loc_622420: FLdPr var_90
  loc_622423:  = Me.Value
  loc_622428: FLdI2 var_92
  loc_62242B: LitI2_Byte 0
  loc_62242D: EqI2
  loc_62242E: AndI4
  loc_62242F: FFreeAd var_8C = ""
  loc_622436: BranchF loc_622441
  loc_622439: LitI2_Byte &HFF
  loc_62243B: FStI2 var_86
  loc_62243E: Branch loc_622446
  loc_622441: LitI2_Byte 0
  loc_622443: FStI2 var_86
  loc_622446: ImpAdLdUI1
  loc_62244A: CI2UI1
  loc_62244C: LitI2_Byte 4
  loc_62244E: EqI2
  loc_62244F: ImpAdLdUI1
  loc_622453: CI2UI1
  loc_622455: LitI2_Byte 5
  loc_622457: EqI2
  loc_622458: AndI4
  loc_622459: BranchF loc_622464
  loc_62245C: LitI2_Byte &HFF
  loc_62245E: FStI2 var_86
  loc_622461: Branch loc_62247F
  loc_622464: ImpAdLdUI1
  loc_622468: CI2UI1
  loc_62246A: LitI2_Byte 4
  loc_62246C: EqI2
  loc_62246D: ImpAdLdUI1
  loc_622471: CI2UI1
  loc_622473: LitI2_Byte 0
  loc_622475: EqI2
  loc_622476: AndI4
  loc_622477: BranchF loc_62247F
  loc_62247A: LitI2_Byte &HFF
  loc_62247C: FStI2 var_86
  loc_62247F: ExitProcCbHresult
End Function

Private Function Proc_163_17_5DB804() '5DB804
  'Data Table: 42904C
  loc_5DB7C8: LitI2_Byte 1
  loc_5DB7CA: FLdRfVar var_86
  loc_5DB7CD: LitI2_Byte &HA
  loc_5DB7CF: ForI2 var_8A
  loc_5DB7D5: FLdRfVar var_94
  loc_5DB7D8: FLdI2 var_86
  loc_5DB7DB: FLdPrThis
  loc_5DB7DC: VCallAd Control_ID_Combo1
  loc_5DB7DF: FStAdFunc var_90
  loc_5DB7E2: FLdPr var_90
  loc_5DB7E5: Set from_stack_2 = Me(from_stack_1)
  loc_5DB7EA: FLdPr var_94
  loc_5DB7ED: Me.Clear
  loc_5DB7F2: FFreeAd var_90 = ""
  loc_5DB7F9: FLdRfVar var_86
  loc_5DB7FC: NextI2 var_8A, loc_5DB7D5
  loc_5DB801: ExitProcHresult
End Function

Private Function Proc_163_18_5E9F04() '5E9F04
  'Data Table: 42904C
  loc_5E9E88: LitI2_Byte 1
  loc_5E9E8A: FLdRfVar var_88
  loc_5E9E8D: FLdRfVar var_92
  loc_5E9E90: FLdPrThis
  loc_5E9E91: VCallAd Control_ID_Combo1
  loc_5E9E94: FStAdFunc var_90
  loc_5E9E97: FLdPr var_90
  loc_5E9E9A: Call 0.Method_Proc_163_18_5E9F04C ()
  loc_5E9E9F: FLdI2 var_92
  loc_5E9EA2: FFree1Ad var_90
  loc_5E9EA5: ForI2 var_96
  loc_5E9EAB: FLdRfVar var_A0
  loc_5E9EAE: FLdRfVar var_9C
  loc_5E9EB1: FLdI2 var_88
  loc_5E9EB4: FLdPrThis
  loc_5E9EB5: VCallAd Control_ID_Combo1
  loc_5E9EB8: FStAdFunc var_90
  loc_5E9EBB: FLdPr var_90
  loc_5E9EBE: Set from_stack_2 = Me(from_stack_1)
  loc_5E9EC3: FLdPr var_9C
  loc_5E9EC6:  = Me.Text
  loc_5E9ECB: FLdZeroAd var_A0
  loc_5E9ECE: PopTmpLdAdStr
  loc_5E9ED2: ImpAdCallI2 Proc_167_28_6636AC()
  loc_5E9ED7: LitI2_Byte 9
  loc_5E9ED9: EqI2
  loc_5E9EDA: FFree1Str var_A4
  loc_5E9EDD: FFreeAd var_90 = ""
  loc_5E9EE4: BranchF loc_5E9EF0
  loc_5E9EE7: FLdI2 var_8A
  loc_5E9EEA: LitI2_Byte 1
  loc_5E9EEC: AddI2
  loc_5E9EED: FStI2 var_8A
  loc_5E9EF0: FLdRfVar var_88
  loc_5E9EF3: NextI2 var_96, loc_5E9EAB
  loc_5E9EF8: FLdI2 var_8A
  loc_5E9EFB: FStI2 var_86
  loc_5E9EFE: ExitProcCbHresult
End Function

Private Function Proc_163_19_5F2538(arg_C, arg_10) '5F2538
  'Data Table: 42904C
  loc_5F249C: LitI2_Byte 0
  loc_5F249E: FLdRfVar var_88
  loc_5F24A1: FLdRfVar var_96
  loc_5F24A4: FLdRfVar var_94
  loc_5F24A7: ILdI2 arg_10
  loc_5F24AA: FLdPrThis
  loc_5F24AB: VCallAd Control_ID_Combo1
  loc_5F24AE: FStAdFunc var_90
  loc_5F24B1: FLdPr var_90
  loc_5F24B4: Set from_stack_2 = Me(from_stack_1)
  loc_5F24B9: FLdPr var_94
  loc_5F24BC:  = Me.ListCount
  loc_5F24C1: FLdI2 var_96
  loc_5F24C4: LitI2_Byte 1
  loc_5F24C6: SubI2
  loc_5F24C7: FFreeAd var_90 = ""
  loc_5F24CE: ForI2 var_9A
  loc_5F24D4: FLdRfVar var_A0
  loc_5F24D7: FLdI2 var_88
  loc_5F24DA: FLdRfVar var_94
  loc_5F24DD: ILdI2 arg_10
  loc_5F24E0: FLdPrThis
  loc_5F24E1: VCallAd Control_ID_Combo1
  loc_5F24E4: FStAdFunc var_90
  loc_5F24E7: FLdPr var_90
  loc_5F24EA: Set from_stack_2 = Me(from_stack_1)
  loc_5F24EF: FLdPr var_94
  loc_5F24F2: from_stack_2 = Me.List(from_stack_1)
  loc_5F24F7: FLdZeroAd var_A0
  loc_5F24FA: PopTmpLdAdStr
  loc_5F24FE: ImpAdCallI2 Proc_167_28_6636AC()
  loc_5F2503: ILdI2 arg_C
  loc_5F2506: EqI2
  loc_5F2507: FFree1Str var_A4
  loc_5F250A: FFreeAd var_90 = ""
  loc_5F2511: BranchF loc_5F2520
  loc_5F2514: FLdI2 var_8A
  loc_5F2517: FStI2 var_86
  loc_5F251A: ExitProcCbHresult
  loc_5F2520: FLdI2 var_8A
  loc_5F2523: LitI2_Byte 1
  loc_5F2525: AddI2
  loc_5F2526: FStI2 var_8A
  loc_5F2529: FLdRfVar var_88
  loc_5F252C: NextI2 var_9A, loc_5F24D4
  loc_5F2531: ExitProcCbHresult
End Function

Private Function Proc_163_20_5D94F4() '5D94F4
  'Data Table: 42904C
  loc_5D94BC: ImpAdLdUI1
  loc_5D94C0: CI2UI1
  loc_5D94C2: LitI2_Byte 1
  loc_5D94C4: AddI2
  loc_5D94C5: ImpAdLdUI1
  loc_5D94C9: CI2UI1
  loc_5D94CB: EqI2
  loc_5D94CC: BranchF loc_5D94F3
  loc_5D94CF: ImpAdLdUI1
  loc_5D94D3: CI2UI1
  loc_5D94D5: LitI2_Byte 1
  loc_5D94D7: AddI2
  loc_5D94D8: CI4UI1
  loc_5D94D9: ImpAdLdRf MemVar_74C050
  loc_5D94DC: Ary1LdUI1
  loc_5D94DE: ImpAdLdUI1
  loc_5D94E2: SubUI1
  loc_5D94E4: ImpAdLdUI1
  loc_5D94E8: CI2UI1
  loc_5D94EA: LitI2_Byte 1
  loc_5D94EC: AddI2
  loc_5D94ED: CI4UI1
  loc_5D94EE: ImpAdLdRf MemVar_74C050
  loc_5D94F1: Ary1StUI1
  loc_5D94F3: ExitProcHresult
End Function
