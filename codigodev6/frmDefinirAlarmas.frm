VERSION 5.00
Begin VB.Form frmDefinirAlarmas
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
  ClientWidth = 11910
  ClientHeight = 8775
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.TextBox txtON
    Left = 6720
    Top = 3840
    Width = 855
    Height = 375
    TabIndex = 4
    Alignment = 1 'Right Justify
    MaxLength = 5
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
  Begin VB.ComboBox cboAlarma
    Style = 2
    Left = 3480
    Top = 1440
    Width = 4935
    Height = 450
    TabIndex = 1
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
  Begin VB.CommandButton cmdTest
    Caption = "&Test"
    Left = 5280
    Top = 5520
    Width = 1634
    Height = 672
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.TextBox txtOFF
    Left = 6720
    Top = 4560
    Width = 855
    Height = 375
    TabIndex = 5
    Alignment = 1 'Right Justify
    MaxLength = 5
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
  Begin VB.TextBox txtCiclos
    Left = 6960
    Top = 3120
    Width = 615
    Height = 375
    TabIndex = 3
    Alignment = 1 'Right Justify
    MaxLength = 2
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
  Begin VB.ComboBox cboNroFis
    Left = 6960
    Top = 2400
    Width = 735
    Height = 405
    Text = "Combo1"
    TabIndex = 2
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 7440
    Top = 7680
    Width = 1634
    Height = 672
    TabIndex = 7
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 9240
    Top = 7680
    Width = 1634
    Height = 672
    TabIndex = 8
    Default = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin VB.Label lblOFF
    Caption = "Alarma apagada:"
    Left = 1920
    Top = 4560
    Width = 4695
    Height = 375
    TabIndex = 12
    Alignment = 1 'Right Justify
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
  Begin VB.Label lblON
    Caption = "Alarma encendida:"
    Left = 1920
    Top = 3840
    Width = 4695
    Height = 375
    TabIndex = 11
    Alignment = 1 'Right Justify
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
  Begin VB.Label lblCiclos
    Caption = "Cantidad de ciclos:"
    Left = 1920
    Top = 3120
    Width = 4935
    Height = 375
    TabIndex = 10
    Alignment = 1 'Right Justify
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
  Begin VB.Label lblNroFis
    Caption = "Número físico de Alarma:"
    Left = 1920
    Top = 2400
    Width = 4935
    Height = 375
    TabIndex = 9
    Alignment = 1 'Right Justify
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
  Begin VB.Label lblTitulo
    Caption = "Definición de Alarmas"
    Left = 3240
    Top = 360
    Width = 5415
    Height = 495
    TabIndex = 0
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
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

Attribute VB_Name = "frmDefinirAlarmas"


Private Sub Form_Load() '689CA8
  'Data Table: 42A524
  loc_689748: FLdRfVar var_1D4
  loc_68974B: LitVar_Missing var_1D0
  loc_68974E: LitVar_Missing var_1B0
  loc_689751: LitVar_Missing var_190
  loc_689754: LitVar_Missing var_170
  loc_689757: LitVar_Missing var_150
  loc_68975A: LitVar_Missing var_130
  loc_68975D: LitVar_Missing var_110
  loc_689760: LitVar_Missing var_F0
  loc_689763: LitVar_Missing var_D0
  loc_689766: LitVar_Missing var_B0
  loc_689769: LitStr "Definición de Alarmas"
  loc_68976C: FStStrCopy var_90
  loc_68976F: FLdRfVar var_90
  loc_689772: LitI4 1
  loc_689777: PopTmpLdAdStr var_8C
  loc_68977A: LitI2_Byte &H17
  loc_68977C: PopTmpLdAd2 var_88
  loc_68977F: ImpAdLdRf MemVar_74C7D0
  loc_689782: NewIfNullPr clsMsg
  loc_689785: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68978A: ILdRf var_1D4
  loc_68978D: FLdPrThis
  loc_68978E: VCallAd Control_ID_lblTitulo
  loc_689791: FStAdFunc var_1D8
  loc_689794: FLdPr var_1D8
  loc_689797: Me.Caption = from_stack_1
  loc_68979C: FFreeStr var_90 = ""
  loc_6897A3: FFree1Ad var_1D8
  loc_6897A6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6897BD: FLdRfVar var_1D4
  loc_6897C0: LitVar_Missing var_1D0
  loc_6897C3: LitVar_Missing var_1B0
  loc_6897C6: LitVar_Missing var_190
  loc_6897C9: LitVar_Missing var_170
  loc_6897CC: LitVar_Missing var_150
  loc_6897CF: LitVar_Missing var_130
  loc_6897D2: LitVar_Missing var_110
  loc_6897D5: LitVar_Missing var_F0
  loc_6897D8: LitVar_Missing var_D0
  loc_6897DB: LitVar_Missing var_B0
  loc_6897DE: LitStr "Número físico de Alarma:"
  loc_6897E1: FStStrCopy var_90
  loc_6897E4: FLdRfVar var_90
  loc_6897E7: LitI4 2
  loc_6897EC: PopTmpLdAdStr var_8C
  loc_6897EF: LitI2_Byte &H17
  loc_6897F1: PopTmpLdAd2 var_88
  loc_6897F4: ImpAdLdRf MemVar_74C7D0
  loc_6897F7: NewIfNullPr clsMsg
  loc_6897FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6897FF: ILdRf var_1D4
  loc_689802: FLdPrThis
  loc_689803: VCallAd Control_ID_lblNroFis
  loc_689806: FStAdFunc var_1D8
  loc_689809: FLdPr var_1D8
  loc_68980C: Me.Caption = from_stack_1
  loc_689811: FFreeStr var_90 = ""
  loc_689818: FFree1Ad var_1D8
  loc_68981B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689832: FLdRfVar var_1D4
  loc_689835: LitVar_Missing var_1D0
  loc_689838: LitVar_Missing var_1B0
  loc_68983B: LitVar_Missing var_190
  loc_68983E: LitVar_Missing var_170
  loc_689841: LitVar_Missing var_150
  loc_689844: LitVar_Missing var_130
  loc_689847: LitVar_Missing var_110
  loc_68984A: LitVar_Missing var_F0
  loc_68984D: LitVar_Missing var_D0
  loc_689850: LitVar_Missing var_B0
  loc_689853: LitStr "Cantidad de ciclos:"
  loc_689856: FStStrCopy var_90
  loc_689859: FLdRfVar var_90
  loc_68985C: LitI4 3
  loc_689861: PopTmpLdAdStr var_8C
  loc_689864: LitI2_Byte &H17
  loc_689866: PopTmpLdAd2 var_88
  loc_689869: ImpAdLdRf MemVar_74C7D0
  loc_68986C: NewIfNullPr clsMsg
  loc_68986F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689874: ILdRf var_1D4
  loc_689877: FLdPrThis
  loc_689878: VCallAd Control_ID_lblCiclos
  loc_68987B: FStAdFunc var_1D8
  loc_68987E: FLdPr var_1D8
  loc_689881: Me.Caption = from_stack_1
  loc_689886: FFreeStr var_90 = ""
  loc_68988D: FFree1Ad var_1D8
  loc_689890: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6898A7: FLdRfVar var_1D4
  loc_6898AA: LitVar_Missing var_1D0
  loc_6898AD: LitVar_Missing var_1B0
  loc_6898B0: LitVar_Missing var_190
  loc_6898B3: LitVar_Missing var_170
  loc_6898B6: LitVar_Missing var_150
  loc_6898B9: LitVar_Missing var_130
  loc_6898BC: LitVar_Missing var_110
  loc_6898BF: LitVar_Missing var_F0
  loc_6898C2: LitVar_Missing var_D0
  loc_6898C5: LitVar_Missing var_B0
  loc_6898C8: LitStr "Alarma encendida:"
  loc_6898CB: FStStrCopy var_90
  loc_6898CE: FLdRfVar var_90
  loc_6898D1: LitI4 4
  loc_6898D6: PopTmpLdAdStr var_8C
  loc_6898D9: LitI2_Byte &H17
  loc_6898DB: PopTmpLdAd2 var_88
  loc_6898DE: ImpAdLdRf MemVar_74C7D0
  loc_6898E1: NewIfNullPr clsMsg
  loc_6898E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6898E9: ILdRf var_1D4
  loc_6898EC: FLdPrThis
  loc_6898ED: VCallAd Control_ID_lblON
  loc_6898F0: FStAdFunc var_1D8
  loc_6898F3: FLdPr var_1D8
  loc_6898F6: Me.Caption = from_stack_1
  loc_6898FB: FFreeStr var_90 = ""
  loc_689902: FFree1Ad var_1D8
  loc_689905: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_68991C: FLdRfVar var_1D4
  loc_68991F: LitVar_Missing var_1D0
  loc_689922: LitVar_Missing var_1B0
  loc_689925: LitVar_Missing var_190
  loc_689928: LitVar_Missing var_170
  loc_68992B: LitVar_Missing var_150
  loc_68992E: LitVar_Missing var_130
  loc_689931: LitVar_Missing var_110
  loc_689934: LitVar_Missing var_F0
  loc_689937: LitVar_Missing var_D0
  loc_68993A: LitVar_Missing var_B0
  loc_68993D: LitStr "Alarma apagada:"
  loc_689940: FStStrCopy var_90
  loc_689943: FLdRfVar var_90
  loc_689946: LitI4 5
  loc_68994B: PopTmpLdAdStr var_8C
  loc_68994E: LitI2_Byte &H17
  loc_689950: PopTmpLdAd2 var_88
  loc_689953: ImpAdLdRf MemVar_74C7D0
  loc_689956: NewIfNullPr clsMsg
  loc_689959: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68995E: ILdRf var_1D4
  loc_689961: FLdPrThis
  loc_689962: VCallAd Control_ID_lblOFF
  loc_689965: FStAdFunc var_1D8
  loc_689968: FLdPr var_1D8
  loc_68996B: Me.Caption = from_stack_1
  loc_689970: FFreeStr var_90 = ""
  loc_689977: FFree1Ad var_1D8
  loc_68997A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689991: FLdRfVar var_1D4
  loc_689994: LitVar_Missing var_1D0
  loc_689997: LitVar_Missing var_1B0
  loc_68999A: LitVar_Missing var_190
  loc_68999D: LitVar_Missing var_170
  loc_6899A0: LitVar_Missing var_150
  loc_6899A3: LitVar_Missing var_130
  loc_6899A6: LitVar_Missing var_110
  loc_6899A9: LitVar_Missing var_F0
  loc_6899AC: LitVar_Missing var_D0
  loc_6899AF: LitVar_Missing var_B0
  loc_6899B2: LitStr "&Test"
  loc_6899B5: FStStrCopy var_90
  loc_6899B8: FLdRfVar var_90
  loc_6899BB: LitI4 6
  loc_6899C0: PopTmpLdAdStr var_8C
  loc_6899C3: LitI2_Byte &H17
  loc_6899C5: PopTmpLdAd2 var_88
  loc_6899C8: ImpAdLdRf MemVar_74C7D0
  loc_6899CB: NewIfNullPr clsMsg
  loc_6899CE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6899D3: ILdRf var_1D4
  loc_6899D6: FLdPrThis
  loc_6899D7: VCallAd Control_ID_cmdTest
  loc_6899DA: FStAdFunc var_1D8
  loc_6899DD: FLdPr var_1D8
  loc_6899E0: Me.Caption = from_stack_1
  loc_6899E5: FFreeStr var_90 = ""
  loc_6899EC: FFree1Ad var_1D8
  loc_6899EF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689A06: FLdRfVar var_1D4
  loc_689A09: LitVar_Missing var_1D0
  loc_689A0C: LitVar_Missing var_1B0
  loc_689A0F: LitVar_Missing var_190
  loc_689A12: LitVar_Missing var_170
  loc_689A15: LitVar_Missing var_150
  loc_689A18: LitVar_Missing var_130
  loc_689A1B: LitVar_Missing var_110
  loc_689A1E: LitVar_Missing var_F0
  loc_689A21: LitVar_Missing var_D0
  loc_689A24: LitVar_Missing var_B0
  loc_689A27: LitStr "&Cancelar"
  loc_689A2A: FStStrCopy var_90
  loc_689A2D: FLdRfVar var_90
  loc_689A30: LitI4 7
  loc_689A35: PopTmpLdAdStr var_8C
  loc_689A38: LitI2_Byte &H17
  loc_689A3A: PopTmpLdAd2 var_88
  loc_689A3D: ImpAdLdRf MemVar_74C7D0
  loc_689A40: NewIfNullPr clsMsg
  loc_689A43: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689A48: ILdRf var_1D4
  loc_689A4B: FLdPrThis
  loc_689A4C: VCallAd Control_ID_cmdCancelar
  loc_689A4F: FStAdFunc var_1D8
  loc_689A52: FLdPr var_1D8
  loc_689A55: Me.Caption = from_stack_1
  loc_689A5A: FFreeStr var_90 = ""
  loc_689A61: FFree1Ad var_1D8
  loc_689A64: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689A7B: FLdRfVar var_1D4
  loc_689A7E: LitVar_Missing var_1D0
  loc_689A81: LitVar_Missing var_1B0
  loc_689A84: LitVar_Missing var_190
  loc_689A87: LitVar_Missing var_170
  loc_689A8A: LitVar_Missing var_150
  loc_689A8D: LitVar_Missing var_130
  loc_689A90: LitVar_Missing var_110
  loc_689A93: LitVar_Missing var_F0
  loc_689A96: LitVar_Missing var_D0
  loc_689A99: LitVar_Missing var_B0
  loc_689A9C: LitStr "&Aceptar"
  loc_689A9F: FStStrCopy var_90
  loc_689AA2: FLdRfVar var_90
  loc_689AA5: LitI4 8
  loc_689AAA: PopTmpLdAdStr var_8C
  loc_689AAD: LitI2_Byte &H17
  loc_689AAF: PopTmpLdAd2 var_88
  loc_689AB2: ImpAdLdRf MemVar_74C7D0
  loc_689AB5: NewIfNullPr clsMsg
  loc_689AB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689ABD: ILdRf var_1D4
  loc_689AC0: FLdPrThis
  loc_689AC1: VCallAd Control_ID_cmdAceptar
  loc_689AC4: FStAdFunc var_1D8
  loc_689AC7: FLdPr var_1D8
  loc_689ACA: Me.Caption = from_stack_1
  loc_689ACF: FFreeStr var_90 = ""
  loc_689AD6: FFree1Ad var_1D8
  loc_689AD9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689AF0: LitI2_Byte 1
  loc_689AF2: FLdRfVar var_86
  loc_689AF5: LitI2_Byte 8
  loc_689AF7: ForI2 var_1DC
  loc_689AFD: LitVar_Missing var_A0
  loc_689B00: PopAdLdVar
  loc_689B01: FLdI2 var_86
  loc_689B04: CStrUI1
  loc_689B06: FStStrNoPop var_90
  loc_689B09: FLdPrThis
  loc_689B0A: VCallAd Control_ID_cboNroFis
  loc_689B0D: FStAdFunc var_1D8
  loc_689B10: FLdPr var_1D8
  loc_689B13: Me.AddItem from_stack_1, from_stack_2
  loc_689B18: FFree1Str var_90
  loc_689B1B: FFree1Ad var_1D8
  loc_689B1E: FLdRfVar var_86
  loc_689B21: NextI2 var_1DC, loc_689AFD
  loc_689B26: FLdRfVar var_1D4
  loc_689B29: LitVar_Missing var_1D0
  loc_689B2C: LitVar_Missing var_1B0
  loc_689B2F: LitVar_Missing var_190
  loc_689B32: LitVar_Missing var_170
  loc_689B35: LitVar_Missing var_150
  loc_689B38: LitVar_Missing var_130
  loc_689B3B: LitVar_Missing var_110
  loc_689B3E: LitVar_Missing var_F0
  loc_689B41: LitVar_Missing var_D0
  loc_689B44: LitVar_Missing var_B0
  loc_689B47: LitStr "Alarma de Preaviso"
  loc_689B4A: FStStrCopy var_90
  loc_689B4D: FLdRfVar var_90
  loc_689B50: LitI4 9
  loc_689B55: PopTmpLdAdStr var_8C
  loc_689B58: LitI2_Byte &H17
  loc_689B5A: PopTmpLdAd2 var_88
  loc_689B5D: ImpAdLdRf MemVar_74C7D0
  loc_689B60: NewIfNullPr clsMsg
  loc_689B63: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689B68: LitVar_Missing var_1EC
  loc_689B6B: PopAdLdVar
  loc_689B6C: ILdRf var_1D4
  loc_689B6F: FLdPrThis
  loc_689B70: VCallAd Control_ID_cboAlarma
  loc_689B73: FStAdFunc var_1D8
  loc_689B76: FLdPr var_1D8
  loc_689B79: Me.AddItem from_stack_1, from_stack_2
  loc_689B7E: FFreeStr var_90 = ""
  loc_689B85: FFree1Ad var_1D8
  loc_689B88: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689B9F: FLdRfVar var_1D4
  loc_689BA2: LitVar_Missing var_1D0
  loc_689BA5: LitVar_Missing var_1B0
  loc_689BA8: LitVar_Missing var_190
  loc_689BAB: LitVar_Missing var_170
  loc_689BAE: LitVar_Missing var_150
  loc_689BB1: LitVar_Missing var_130
  loc_689BB4: LitVar_Missing var_110
  loc_689BB7: LitVar_Missing var_F0
  loc_689BBA: LitVar_Missing var_D0
  loc_689BBD: LitVar_Missing var_B0
  loc_689BC0: LitStr "Alarma de Inicio"
  loc_689BC3: FStStrCopy var_90
  loc_689BC6: FLdRfVar var_90
  loc_689BC9: LitI4 &HA
  loc_689BCE: PopTmpLdAdStr var_8C
  loc_689BD1: LitI2_Byte &H17
  loc_689BD3: PopTmpLdAd2 var_88
  loc_689BD6: ImpAdLdRf MemVar_74C7D0
  loc_689BD9: NewIfNullPr clsMsg
  loc_689BDC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689BE1: LitVar_Missing var_1EC
  loc_689BE4: PopAdLdVar
  loc_689BE5: ILdRf var_1D4
  loc_689BE8: FLdPrThis
  loc_689BE9: VCallAd Control_ID_cboAlarma
  loc_689BEC: FStAdFunc var_1D8
  loc_689BEF: FLdPr var_1D8
  loc_689BF2: Me.AddItem from_stack_1, from_stack_2
  loc_689BF7: FFreeStr var_90 = ""
  loc_689BFE: FFree1Ad var_1D8
  loc_689C01: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689C18: FLdRfVar var_1D4
  loc_689C1B: LitVar_Missing var_1D0
  loc_689C1E: LitVar_Missing var_1B0
  loc_689C21: LitVar_Missing var_190
  loc_689C24: LitVar_Missing var_170
  loc_689C27: LitVar_Missing var_150
  loc_689C2A: LitVar_Missing var_130
  loc_689C2D: LitVar_Missing var_110
  loc_689C30: LitVar_Missing var_F0
  loc_689C33: LitVar_Missing var_D0
  loc_689C36: LitVar_Missing var_B0
  loc_689C39: LitStr "Alarma de Fin"
  loc_689C3C: FStStrCopy var_90
  loc_689C3F: FLdRfVar var_90
  loc_689C42: LitI4 &HB
  loc_689C47: PopTmpLdAdStr var_8C
  loc_689C4A: LitI2_Byte &H17
  loc_689C4C: PopTmpLdAd2 var_88
  loc_689C4F: ImpAdLdRf MemVar_74C7D0
  loc_689C52: NewIfNullPr clsMsg
  loc_689C55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_689C5A: LitVar_Missing var_1EC
  loc_689C5D: PopAdLdVar
  loc_689C5E: ILdRf var_1D4
  loc_689C61: FLdPrThis
  loc_689C62: VCallAd Control_ID_cboAlarma
  loc_689C65: FStAdFunc var_1D8
  loc_689C68: FLdPr var_1D8
  loc_689C6B: Me.AddItem from_stack_1, from_stack_2
  loc_689C70: FFreeStr var_90 = ""
  loc_689C77: FFree1Ad var_1D8
  loc_689C7A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_689C91: LitI2_Byte &HFF
  loc_689C93: FLdPrThis
  loc_689C94: VCallAd Control_ID_cboNroFis
  loc_689C97: FStAdFunc var_1D8
  loc_689C9A: FLdPr var_1D8
  loc_689C9D: Me.ListIndex = from_stack_1
  loc_689CA2: FFree1Ad var_1D8
  loc_689CA5: ExitProcHresult
End Sub

Private Sub Form_Activate() '61D5A8
  'Data Table: 42A524
  loc_61D494: FLdPr Me
  loc_61D497: MemLdRfVar from_stack_1.global_52
  loc_61D49A: ImpAdCallI2 Proc_53_16_5F97A8()
  loc_61D49F: NotI4
  loc_61D4A0: BranchF loc_61D4CF
  loc_61D4A3: FLdRfVar var_94
  loc_61D4A6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_61D4AB: FLdRfVar var_94
  loc_61D4AE: CBoolVarNull
  loc_61D4B0: FFree1Var var_94 = ""
  loc_61D4B3: BranchF loc_61D4CC
  loc_61D4B6: ILdRf Me
  loc_61D4B9: FStAdNoPop
  loc_61D4BD: ImpAdLdRf MemVar_7520D4
  loc_61D4C0: NewIfNullPr Global
  loc_61D4C3: Global.Unload from_stack_1
  loc_61D4C8: FFree1Ad var_98
  loc_61D4CB: ExitProcHresult
  loc_61D4CC: Branch loc_61D494
  loc_61D4CF: FLdPr Me
  loc_61D4D2: MemLdStr global_52
  loc_61D4D5: ImpAdCallI2 Trim$()
  loc_61D4DA: FStStrNoPop var_9C
  loc_61D4DD: FLdPr Me
  loc_61D4E0: MemStStrCopy
  loc_61D4E4: FFree1Str var_9C
  loc_61D4E7: FLdPr Me
  loc_61D4EA: MemLdStr global_52
  loc_61D4ED: FnLenStr
  loc_61D4EE: LitI4 &H27
  loc_61D4F3: LtI4
  loc_61D4F4: BranchF loc_61D58A
  loc_61D4F7: FLdRfVar var_1D8
  loc_61D4FA: LitVar_Missing var_1D4
  loc_61D4FD: LitVar_Missing var_1B4
  loc_61D500: LitVar_Missing var_194
  loc_61D503: LitVar_Missing var_174
  loc_61D506: LitVar_Missing var_154
  loc_61D509: LitVar_Missing var_134
  loc_61D50C: LitVar_Missing var_114
  loc_61D50F: LitVar_Missing var_F4
  loc_61D512: LitVar_Missing var_D4
  loc_61D515: LitVar_Missing var_94
  loc_61D518: LitStr "Hubo un error inesperado."
  loc_61D51B: FStStrCopy var_9C
  loc_61D51E: FLdRfVar var_9C
  loc_61D521: LitI4 &HC
  loc_61D526: PopTmpLdAdStr var_A4
  loc_61D529: LitI2_Byte &H17
  loc_61D52B: PopTmpLdAd2 var_9E
  loc_61D52E: ImpAdLdRf MemVar_74C7D0
  loc_61D531: NewIfNullPr clsMsg
  loc_61D534: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_61D539: LitVar_Missing var_248
  loc_61D53C: LitVar_Missing var_228
  loc_61D53F: LitVar_Missing var_208
  loc_61D542: LitI4 &H40
  loc_61D547: FLdZeroAd var_1D8
  loc_61D54A: CVarStr var_1E8
  loc_61D54D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61D552: FFree1Str var_9C
  loc_61D555: FFreeVar var_94 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1E8 = "": var_208 = "": var_228 = ""
  loc_61D574: ILdRf Me
  loc_61D577: FStAdNoPop
  loc_61D57B: ImpAdLdRf MemVar_7520D4
  loc_61D57E: NewIfNullPr Global
  loc_61D581: Global.Unload from_stack_1
  loc_61D586: FFree1Ad var_98
  loc_61D589: ExitProcHresult
  loc_61D58A: LitI2_Byte &HFF
  loc_61D58C: FLdPr Me
  loc_61D58F: MemStI2 global_56
  loc_61D592: LitI2_Byte 0
  loc_61D594: FLdPrThis
  loc_61D595: VCallAd Control_ID_cboAlarma
  loc_61D598: FStAdFunc var_98
  loc_61D59B: FLdPr var_98
  loc_61D59E: Me.ListIndex = from_stack_1
  loc_61D5A3: FFree1Ad var_98
  loc_61D5A6: ExitProcHresult
End Sub

Private Sub txtOFF_GotFocus() '5DE314
  'Data Table: 42A524
  loc_5DE2CC: FLdRfVar var_8C
  loc_5DE2CF: FLdPrThis
  loc_5DE2D0: VCallAd Control_ID_txtOFF
  loc_5DE2D3: FStAdFunc var_88
  loc_5DE2D6: FLdPr var_88
  loc_5DE2D9:  = Me.Text
  loc_5DE2DE: ILdRf var_8C
  loc_5DE2E1: FnLenStr
  loc_5DE2E2: FLdPrThis
  loc_5DE2E3: VCallAd Control_ID_txtOFF
  loc_5DE2E6: FStAdFunc var_90
  loc_5DE2E9: FLdPr var_90
  loc_5DE2EC: Me.SelLength = from_stack_1
  loc_5DE2F1: FFree1Str var_8C
  loc_5DE2F4: FFreeAd var_88 = ""
  loc_5DE2FB: LitI4 0
  loc_5DE300: FLdPrThis
  loc_5DE301: VCallAd Control_ID_txtOFF
  loc_5DE304: FStAdFunc var_88
  loc_5DE307: FLdPr var_88
  loc_5DE30A: Me.SelStart = from_stack_1
  loc_5DE30F: FFree1Ad var_88
  loc_5DE312: ExitProcHresult
End Sub

Private Sub txtOFF_KeyPress(KeyAscii As Integer) '5C9FA4
  'Data Table: 42A524
  loc_5C9F98: ILdI2 KeyAscii
  loc_5C9F9B: ImpAdCallI2 Proc_53_17_5DA4B8()
  loc_5C9FA0: IStI2 KeyAscii
  loc_5C9FA3: ExitProcHresult
End Sub

Private Sub txtOFF_LostFocus() '5DD6FC
  'Data Table: 42A524
  loc_5DD6BC: FLdRfVar var_8C
  loc_5DD6BF: FLdPrThis
  loc_5DD6C0: VCallAd Control_ID_txtOFF
  loc_5DD6C3: FStAdFunc var_88
  loc_5DD6C6: FLdPr var_88
  loc_5DD6C9:  = Me.Text
  loc_5DD6CE: ILdRf var_8C
  loc_5DD6D1: ImpAdCallFPR4 push Val()
  loc_5DD6D6: CStrR8
  loc_5DD6D8: FStStrNoPop var_90
  loc_5DD6DB: FLdPrThis
  loc_5DD6DC: VCallAd Control_ID_txtOFF
  loc_5DD6DF: FStAdFunc var_94
  loc_5DD6E2: FLdPr var_94
  loc_5DD6E5: Me.Text = from_stack_1
  loc_5DD6EA: FFreeStr var_8C = ""
  loc_5DD6F1: FFreeAd var_88 = ""
  loc_5DD6F8: ExitProcHresult
End Sub

Private Sub txtON_GotFocus() '5DE41C
  'Data Table: 42A524
  loc_5DE3D4: FLdRfVar var_8C
  loc_5DE3D7: FLdPrThis
  loc_5DE3D8: VCallAd Control_ID_txtON
  loc_5DE3DB: FStAdFunc var_88
  loc_5DE3DE: FLdPr var_88
  loc_5DE3E1:  = Me.Text
  loc_5DE3E6: ILdRf var_8C
  loc_5DE3E9: FnLenStr
  loc_5DE3EA: FLdPrThis
  loc_5DE3EB: VCallAd Control_ID_txtON
  loc_5DE3EE: FStAdFunc var_90
  loc_5DE3F1: FLdPr var_90
  loc_5DE3F4: Me.SelLength = from_stack_1
  loc_5DE3F9: FFree1Str var_8C
  loc_5DE3FC: FFreeAd var_88 = ""
  loc_5DE403: LitI4 0
  loc_5DE408: FLdPrThis
  loc_5DE409: VCallAd Control_ID_txtON
  loc_5DE40C: FStAdFunc var_88
  loc_5DE40F: FLdPr var_88
  loc_5DE412: Me.SelStart = from_stack_1
  loc_5DE417: FFree1Ad var_88
  loc_5DE41A: ExitProcHresult
End Sub

Private Sub txtON_KeyPress(KeyAscii As Integer) '5C9F68
  'Data Table: 42A524
  loc_5C9F5C: ILdI2 KeyAscii
  loc_5C9F5F: ImpAdCallI2 Proc_53_17_5DA4B8()
  loc_5C9F64: IStI2 KeyAscii
  loc_5C9F67: ExitProcHresult
End Sub

Private Sub txtON_LostFocus() '5DDB7C
  'Data Table: 42A524
  loc_5DDB3C: FLdRfVar var_8C
  loc_5DDB3F: FLdPrThis
  loc_5DDB40: VCallAd Control_ID_txtON
  loc_5DDB43: FStAdFunc var_88
  loc_5DDB46: FLdPr var_88
  loc_5DDB49:  = Me.Text
  loc_5DDB4E: ILdRf var_8C
  loc_5DDB51: ImpAdCallFPR4 push Val()
  loc_5DDB56: CStrR8
  loc_5DDB58: FStStrNoPop var_90
  loc_5DDB5B: FLdPrThis
  loc_5DDB5C: VCallAd Control_ID_txtON
  loc_5DDB5F: FStAdFunc var_94
  loc_5DDB62: FLdPr var_94
  loc_5DDB65: Me.Text = from_stack_1
  loc_5DDB6A: FFreeStr var_8C = ""
  loc_5DDB71: FFreeAd var_88 = ""
  loc_5DDB78: ExitProcHresult
End Sub

Private Sub cboAlarma_Click() '60B390
  'Data Table: 42A524
  loc_60B2B0: FLdPr Me
  loc_60B2B3: MemLdI2 global_56
  loc_60B2B6: LitI2_Byte &HFF
  loc_60B2B8: GtI2
  loc_60B2B9: BranchF loc_60B332
  loc_60B2BC: FLdPr Me
  loc_60B2BF: MemLdI2 global_56
  loc_60B2C2: LitI2_Byte &HD
  loc_60B2C4: MulI2
  loc_60B2C5: CVarI2 var_A4
  loc_60B2C8: LitI4 1
  loc_60B2CD: FLdPr Me
  loc_60B2D0: MemLdStr global_52
  loc_60B2D3: ImpAdCallI2 Mid$(, , )
  loc_60B2D8: FStStrNoPop var_AC
  loc_60B2DB: FLdRfVar var_A8
  loc_60B2DE: from_stack_1v = Proc_22_16_61B938()
  loc_60B2E3: ILdRf var_A8
  loc_60B2E6: ConcatStr
  loc_60B2E7: FStStrNoPop var_D0
  loc_60B2EA: FLdPr Me
  loc_60B2ED: MemLdStr global_52
  loc_60B2F0: FnLenStr
  loc_60B2F1: CVarI4
  loc_60B2F5: FLdPr Me
  loc_60B2F8: MemLdI2 global_56
  loc_60B2FB: LitI2_Byte 1
  loc_60B2FD: AddI2
  loc_60B2FE: LitI2_Byte &HD
  loc_60B300: MulI2
  loc_60B301: LitI2_Byte 1
  loc_60B303: AddI2
  loc_60B304: CI4UI1
  loc_60B305: FLdPr Me
  loc_60B308: MemLdStr global_52
  loc_60B30B: ImpAdCallI2 Mid$(, , )
  loc_60B310: FStStrNoPop var_D4
  loc_60B313: ConcatStr
  loc_60B314: FStStrNoPop var_D8
  loc_60B317: FLdPr Me
  loc_60B31A: MemStStrCopy
  loc_60B31E: FFreeStr var_AC = "": var_A8 = "": var_D0 = "": var_D4 = ""
  loc_60B32B: FFreeVar var_A4 = ""
  loc_60B332: FLdRfVar var_DE
  loc_60B335: FLdPrThis
  loc_60B336: VCallAd Control_ID_cboAlarma
  loc_60B339: FStAdFunc var_DC
  loc_60B33C: FLdPr var_DC
  loc_60B33F:  = Me.ListIndex
  loc_60B344: LitVarI2 var_A4, 13
  loc_60B349: FLdI2 var_DE
  loc_60B34C: LitI2_Byte &HD
  loc_60B34E: MulI2
  loc_60B34F: LitI2_Byte 1
  loc_60B351: AddI2
  loc_60B352: CI4UI1
  loc_60B353: FLdPr Me
  loc_60B356: MemLdStr global_52
  loc_60B359: ImpAdCallI2 Mid$(, , )
  loc_60B35E: FStStrNoPop var_A8
  loc_60B361: from_stack_2v = Proc_22_15_610E88(from_stack_1v)
  loc_60B366: FFree1Str var_A8
  loc_60B369: FFree1Ad var_DC
  loc_60B36C: FFree1Var var_A4 = ""
  loc_60B36F: FLdRfVar var_DE
  loc_60B372: FLdPrThis
  loc_60B373: VCallAd Control_ID_cboAlarma
  loc_60B376: FStAdFunc var_DC
  loc_60B379: FLdPr var_DC
  loc_60B37C:  = Me.ListIndex
  loc_60B381: FLdI2 var_DE
  loc_60B384: FLdPr Me
  loc_60B387: MemStI2 global_56
  loc_60B38A: FFree1Ad var_DC
  loc_60B38D: ExitProcHresult
End Sub

Private Sub cmdTest_Click() '5DDB00
  'Data Table: 42A524
  loc_5DDABC: FLdRfVar var_88
  loc_5DDABF: from_stack_1v = Proc_22_16_61B938()
  loc_5DDAC4: ILdRf var_88
  loc_5DDAC7: ImpAdCallI2 Proc_53_15_5FEC78()
  loc_5DDACC: NotI4
  loc_5DDACD: FFree1Str var_88
  loc_5DDAD0: BranchF loc_5DDAFF
  loc_5DDAD3: FLdRfVar var_98
  loc_5DDAD6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5DDADB: FLdRfVar var_98
  loc_5DDADE: CBoolVarNull
  loc_5DDAE0: FFree1Var var_98 = ""
  loc_5DDAE3: BranchF loc_5DDAFC
  loc_5DDAE6: ILdRf Me
  loc_5DDAE9: FStAdNoPop
  loc_5DDAED: ImpAdLdRf MemVar_7520D4
  loc_5DDAF0: NewIfNullPr Global
  loc_5DDAF3: Global.Unload from_stack_1
  loc_5DDAF8: FFree1Ad var_9C
  loc_5DDAFB: ExitProcHresult
  loc_5DDAFC: Branch loc_5DDABC
  loc_5DDAFF: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D2DF8
  'Data Table: 42A524
  loc_5D2DE0: ILdRf Me
  loc_5D2DE3: FStAdNoPop
  loc_5D2DE7: ImpAdLdRf MemVar_7520D4
  loc_5D2DEA: NewIfNullPr Global
  loc_5D2DED: Global.Unload from_stack_1
  loc_5D2DF2: FFree1Ad var_88
  loc_5D2DF5: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '60360C
  'Data Table: 42A524
  loc_603544: FLdPr Me
  loc_603547: MemLdI2 global_56
  loc_60354A: LitI2_Byte &HD
  loc_60354C: MulI2
  loc_60354D: CVarI2 var_A4
  loc_603550: LitI4 1
  loc_603555: FLdPr Me
  loc_603558: MemLdStr global_52
  loc_60355B: ImpAdCallI2 Mid$(, , )
  loc_603560: FStStrNoPop var_AC
  loc_603563: FLdRfVar var_A8
  loc_603566: from_stack_1v = Proc_22_16_61B938()
  loc_60356B: ILdRf var_A8
  loc_60356E: ConcatStr
  loc_60356F: FStStrNoPop var_D0
  loc_603572: FLdPr Me
  loc_603575: MemLdStr global_52
  loc_603578: FnLenStr
  loc_603579: CVarI4
  loc_60357D: FLdPr Me
  loc_603580: MemLdI2 global_56
  loc_603583: LitI2_Byte 1
  loc_603585: AddI2
  loc_603586: LitI2_Byte &HD
  loc_603588: MulI2
  loc_603589: LitI2_Byte 1
  loc_60358B: AddI2
  loc_60358C: CI4UI1
  loc_60358D: FLdPr Me
  loc_603590: MemLdStr global_52
  loc_603593: ImpAdCallI2 Mid$(, , )
  loc_603598: FStStrNoPop var_D4
  loc_60359B: ConcatStr
  loc_60359C: FStStrNoPop var_D8
  loc_60359F: FLdPr Me
  loc_6035A2: MemStStrCopy
  loc_6035A6: FFreeStr var_AC = "": var_A8 = "": var_D0 = "": var_D4 = ""
  loc_6035B3: FFreeVar var_A4 = ""
  loc_6035BA: FLdPr Me
  loc_6035BD: MemLdStr global_52
  loc_6035C0: ImpAdCallI2 Proc_53_14_5FE848()
  loc_6035C5: NotI4
  loc_6035C6: BranchF loc_6035F5
  loc_6035C9: FLdRfVar var_A4
  loc_6035CC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6035D1: FLdRfVar var_A4
  loc_6035D4: CBoolVarNull
  loc_6035D6: FFree1Var var_A4 = ""
  loc_6035D9: BranchF loc_6035F2
  loc_6035DC: ILdRf Me
  loc_6035DF: FStAdNoPop
  loc_6035E3: ImpAdLdRf MemVar_7520D4
  loc_6035E6: NewIfNullPr Global
  loc_6035E9: Global.Unload from_stack_1
  loc_6035EE: FFree1Ad var_DC
  loc_6035F1: ExitProcHresult
  loc_6035F2: Branch loc_6035BA
  loc_6035F5: ILdRf Me
  loc_6035F8: FStAdNoPop
  loc_6035FC: ImpAdLdRf MemVar_7520D4
  loc_6035FF: NewIfNullPr Global
  loc_603602: Global.Unload from_stack_1
  loc_603607: FFree1Ad var_DC
  loc_60360A: ExitProcHresult
End Sub

Private Sub txtCiclos_GotFocus() '5DE6B0
  'Data Table: 42A524
  loc_5DE668: FLdRfVar var_8C
  loc_5DE66B: FLdPrThis
  loc_5DE66C: VCallAd Control_ID_txtCiclos
  loc_5DE66F: FStAdFunc var_88
  loc_5DE672: FLdPr var_88
  loc_5DE675:  = Me.Text
  loc_5DE67A: ILdRf var_8C
  loc_5DE67D: FnLenStr
  loc_5DE67E: FLdPrThis
  loc_5DE67F: VCallAd Control_ID_txtCiclos
  loc_5DE682: FStAdFunc var_90
  loc_5DE685: FLdPr var_90
  loc_5DE688: Me.SelLength = from_stack_1
  loc_5DE68D: FFree1Str var_8C
  loc_5DE690: FFreeAd var_88 = ""
  loc_5DE697: LitI4 0
  loc_5DE69C: FLdPrThis
  loc_5DE69D: VCallAd Control_ID_txtCiclos
  loc_5DE6A0: FStAdFunc var_88
  loc_5DE6A3: FLdPr var_88
  loc_5DE6A6: Me.SelStart = from_stack_1
  loc_5DE6AB: FFree1Ad var_88
  loc_5DE6AE: ExitProcHresult
End Sub

Private Sub txtCiclos_KeyPress(KeyAscii As Integer) '5C9FE0
  'Data Table: 42A524
  loc_5C9FD4: ILdI2 KeyAscii
  loc_5C9FD7: ImpAdCallI2 Proc_53_17_5DA4B8()
  loc_5C9FDC: IStI2 KeyAscii
  loc_5C9FDF: ExitProcHresult
End Sub

Private Sub txtCiclos_LostFocus() '5DD5FC
  'Data Table: 42A524
  loc_5DD5BC: FLdRfVar var_8C
  loc_5DD5BF: FLdPrThis
  loc_5DD5C0: VCallAd Control_ID_txtCiclos
  loc_5DD5C3: FStAdFunc var_88
  loc_5DD5C6: FLdPr var_88
  loc_5DD5C9:  = Me.Text
  loc_5DD5CE: ILdRf var_8C
  loc_5DD5D1: ImpAdCallFPR4 push Val()
  loc_5DD5D6: CStrR8
  loc_5DD5D8: FStStrNoPop var_90
  loc_5DD5DB: FLdPrThis
  loc_5DD5DC: VCallAd Control_ID_txtCiclos
  loc_5DD5DF: FStAdFunc var_94
  loc_5DD5E2: FLdPr var_94
  loc_5DD5E5: Me.Text = from_stack_1
  loc_5DD5EA: FFreeStr var_8C = ""
  loc_5DD5F1: FFreeAd var_88 = ""
  loc_5DD5F8: ExitProcHresult
End Sub

Private Function Proc_22_15_610E88(arg_C) '610E88
  'Data Table: 42A524
  loc_610D80: ILdRf arg_C
  loc_610D83: FStStrCopy var_88
  loc_610D86: LitI2_Byte 1
  loc_610D88: FStI2 var_8A
  loc_610D8B: LitVarI2 var_AC, 1
  loc_610D90: FLdI2 var_8A
  loc_610D93: CI4UI1
  loc_610D94: ILdRf var_88
  loc_610D97: ImpAdCallI2 Mid$(, , )
  loc_610D9C: FStStrNoPop var_B0
  loc_610D9F: CI2Str
  loc_610DA1: LitI2_Byte 1
  loc_610DA3: SubI2
  loc_610DA4: FLdPrThis
  loc_610DA5: VCallAd Control_ID_cboNroFis
  loc_610DA8: FStAdFunc var_B4
  loc_610DAB: FLdPr var_B4
  loc_610DAE: Me.ListIndex = from_stack_1
  loc_610DB3: FFree1Str var_B0
  loc_610DB6: FFree1Ad var_B4
  loc_610DB9: FFree1Var var_AC = ""
  loc_610DBC: FLdI2 var_8A
  loc_610DBF: LitI2_Byte 1
  loc_610DC1: AddI2
  loc_610DC2: FStI2 var_8A
  loc_610DC5: LitVarI2 var_AC, 2
  loc_610DCA: FLdI2 var_8A
  loc_610DCD: CI4UI1
  loc_610DCE: ILdRf var_88
  loc_610DD1: ImpAdCallI2 Mid$(, , )
  loc_610DD6: FStStrNoPop var_B0
  loc_610DD9: CI2Str
  loc_610DDB: CStrUI1
  loc_610DDD: FStStrNoPop var_B8
  loc_610DE0: FLdPrThis
  loc_610DE1: VCallAd Control_ID_txtCiclos
  loc_610DE4: FStAdFunc var_B4
  loc_610DE7: FLdPr var_B4
  loc_610DEA: Me.Text = from_stack_1
  loc_610DEF: FFreeStr var_B0 = ""
  loc_610DF6: FFree1Ad var_B4
  loc_610DF9: FFree1Var var_AC = ""
  loc_610DFC: FLdI2 var_8A
  loc_610DFF: LitI2_Byte 2
  loc_610E01: AddI2
  loc_610E02: FStI2 var_8A
  loc_610E05: LitVarI2 var_AC, 5
  loc_610E0A: FLdI2 var_8A
  loc_610E0D: CI4UI1
  loc_610E0E: ILdRf var_88
  loc_610E11: ImpAdCallI2 Mid$(, , )
  loc_610E16: FStStrNoPop var_B0
  loc_610E19: CI2Str
  loc_610E1B: CStrUI1
  loc_610E1D: FStStrNoPop var_B8
  loc_610E20: FLdPrThis
  loc_610E21: VCallAd Control_ID_txtON
  loc_610E24: FStAdFunc var_B4
  loc_610E27: FLdPr var_B4
  loc_610E2A: Me.Text = from_stack_1
  loc_610E2F: FFreeStr var_B0 = ""
  loc_610E36: FFree1Ad var_B4
  loc_610E39: FFree1Var var_AC = ""
  loc_610E3C: FLdI2 var_8A
  loc_610E3F: LitI2_Byte 5
  loc_610E41: AddI2
  loc_610E42: FStI2 var_8A
  loc_610E45: LitVarI2 var_AC, 5
  loc_610E4A: FLdI2 var_8A
  loc_610E4D: CI4UI1
  loc_610E4E: ILdRf var_88
  loc_610E51: ImpAdCallI2 Mid$(, , )
  loc_610E56: FStStrNoPop var_B0
  loc_610E59: CI2Str
  loc_610E5B: CStrUI1
  loc_610E5D: FStStrNoPop var_B8
  loc_610E60: FLdPrThis
  loc_610E61: VCallAd Control_ID_txtOFF
  loc_610E64: FStAdFunc var_B4
  loc_610E67: FLdPr var_B4
  loc_610E6A: Me.Text = from_stack_1
  loc_610E6F: FFreeStr var_B0 = ""
  loc_610E76: FFree1Ad var_B4
  loc_610E79: FFree1Var var_AC = ""
  loc_610E7C: FLdI2 var_8A
  loc_610E7F: LitI2_Byte 5
  loc_610E81: AddI2
  loc_610E82: FStI2 var_8A
  loc_610E85: ExitProcHresult
End Function

Private Function Proc_22_16_61B938() '61B938
  'Data Table: 42A524
  loc_61B804: ZeroRetVal
  loc_61B806: FLdRfVar var_8E
  loc_61B809: FLdPrThis
  loc_61B80A: VCallAd Control_ID_cboNroFis
  loc_61B80D: FStAdFunc var_8C
  loc_61B810: FLdPr var_8C
  loc_61B813:  = Me.ListIndex
  loc_61B818: FLdI2 var_8E
  loc_61B81B: LitI2_Byte 1
  loc_61B81D: AddI2
  loc_61B81E: CStrUI1
  loc_61B820: FStStr var_88
  loc_61B823: FFree1Ad var_8C
  loc_61B826: FLdRfVar var_94
  loc_61B829: FLdPrThis
  loc_61B82A: VCallAd Control_ID_txtCiclos
  loc_61B82D: FStAdFunc var_8C
  loc_61B830: FLdPr var_8C
  loc_61B833:  = Me.Text
  loc_61B838: ILdRf var_94
  loc_61B83B: ImpAdCallFPR4 push Val()
  loc_61B840: FStFPR8 var_E0
  loc_61B843: ILdRf var_88
  loc_61B846: LitI4 1
  loc_61B84B: LitI4 1
  loc_61B850: LitVarStr var_C4, "00"
  loc_61B855: FStVarCopyObj var_D4
  loc_61B858: FLdRfVar var_D4
  loc_61B85B: FLdFPR8 var_E0
  loc_61B85E: CVarR8
  loc_61B862: ImpAdCallI2 Format$(, )
  loc_61B867: FStStrNoPop var_D8
  loc_61B86A: ConcatStr
  loc_61B86B: FStStr var_88
  loc_61B86E: FFreeStr var_94 = ""
  loc_61B875: FFree1Ad var_8C
  loc_61B878: FFreeVar var_B4 = ""
  loc_61B87F: FLdRfVar var_94
  loc_61B882: FLdPrThis
  loc_61B883: VCallAd Control_ID_txtON
  loc_61B886: FStAdFunc var_8C
  loc_61B889: FLdPr var_8C
  loc_61B88C:  = Me.Text
  loc_61B891: ILdRf var_94
  loc_61B894: ImpAdCallFPR4 push Val()
  loc_61B899: FStFPR8 var_E0
  loc_61B89C: ILdRf var_88
  loc_61B89F: LitI4 1
  loc_61B8A4: LitI4 1
  loc_61B8A9: LitVarStr var_C4, "00000"
  loc_61B8AE: FStVarCopyObj var_D4
  loc_61B8B1: FLdRfVar var_D4
  loc_61B8B4: FLdFPR8 var_E0
  loc_61B8B7: CVarR8
  loc_61B8BB: ImpAdCallI2 Format$(, )
  loc_61B8C0: FStStrNoPop var_D8
  loc_61B8C3: ConcatStr
  loc_61B8C4: FStStr var_88
  loc_61B8C7: FFreeStr var_94 = ""
  loc_61B8CE: FFree1Ad var_8C
  loc_61B8D1: FFreeVar var_B4 = ""
  loc_61B8D8: FLdRfVar var_94
  loc_61B8DB: FLdPrThis
  loc_61B8DC: VCallAd Control_ID_txtOFF
  loc_61B8DF: FStAdFunc var_8C
  loc_61B8E2: FLdPr var_8C
  loc_61B8E5:  = Me.Text
  loc_61B8EA: ILdRf var_94
  loc_61B8ED: ImpAdCallFPR4 push Val()
  loc_61B8F2: FStFPR8 var_E0
  loc_61B8F5: ILdRf var_88
  loc_61B8F8: LitI4 1
  loc_61B8FD: LitI4 1
  loc_61B902: LitVarStr var_C4, "00000"
  loc_61B907: FStVarCopyObj var_D4
  loc_61B90A: FLdRfVar var_D4
  loc_61B90D: FLdFPR8 var_E0
  loc_61B910: CVarR8
  loc_61B914: ImpAdCallI2 Format$(, )
  loc_61B919: FStStrNoPop var_D8
  loc_61B91C: ConcatStr
  loc_61B91D: FStStr var_88
  loc_61B920: FFreeStr var_94 = ""
  loc_61B927: FFree1Ad var_8C
  loc_61B92A: FFreeVar var_B4 = ""
  loc_61B931: ExitProcCbHresult
End Function
