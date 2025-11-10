VERSION 5.00
Begin VB.Form frmEstadoAutorizacion
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 8265
  ClientHeight = 4320
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame Frame1
    Left = 1560
    Top = 960
    Width = 6495
    Height = 2055
    Enabled = 0   'False
    TabIndex = 4
    ClipControls = 0   'False
    BorderStyle = 0 'None
    Begin VB.TextBox txtEstado
      Left = 120
      Top = 720
      Width = 6255
      Height = 1215
      TabIndex = 6
      MultiLine = -1  'True
      Locked = -1  'True
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
    Begin VB.TextBox txtSurtidor
      Left = 120
      Top = 120
      Width = 615
      Height = 465
      TabIndex = 5
      Alignment = 2 'Center
      Locked = -1  'True
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
  Begin VB.CommandButton cmdSalir
    Caption = "&Aceptar"
    Left = 5640
    Top = 3360
    Width = 2295
    Height = 615
    TabIndex = 1
    Default = -1  'True
    Cancel = -1  'True
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
  Begin VB.Label Label3
    Caption = "Estado del Surtidor - CDFP"
    Left = 1200
    Top = 240
    Width = 5895
    Height = 495
    TabIndex = 3
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
    Caption = "Estado:"
    Left = 120
    Top = 1680
    Width = 1335
    Height = 375
    TabIndex = 2
    Alignment = 1 'Right Justify
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
    Caption = "Surtidor:"
    Left = 120
    Top = 1080
    Width = 1335
    Height = 375
    TabIndex = 0
    Alignment = 1 'Right Justify
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
End

Attribute VB_Name = "frmEstadoAutorizacion"

Public nSurtidor As Integer


Private Sub Form_Load() '640C48
  'Data Table: 41279C
  loc_640A20: FLdRfVar var_1D4
  loc_640A23: LitVar_Missing var_1D0
  loc_640A26: LitVar_Missing var_1B0
  loc_640A29: LitVar_Missing var_190
  loc_640A2C: LitVar_Missing var_170
  loc_640A2F: LitVar_Missing var_150
  loc_640A32: LitVar_Missing var_130
  loc_640A35: LitVar_Missing var_110
  loc_640A38: LitVar_Missing var_F0
  loc_640A3B: LitVar_Missing var_D0
  loc_640A3E: LitVar_Missing var_B0
  loc_640A41: LitStr "Surtidor"
  loc_640A44: FStStrCopy var_90
  loc_640A47: FLdRfVar var_90
  loc_640A4A: LitI4 1
  loc_640A4F: PopTmpLdAdStr var_8C
  loc_640A52: LitI2_Byte 4
  loc_640A54: PopTmpLdAd2 var_86
  loc_640A57: ImpAdLdRf MemVar_74C7D0
  loc_640A5A: NewIfNullPr clsMsg
  loc_640A5D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640A62: ILdRf var_1D4
  loc_640A65: FLdPrThis
  loc_640A66: VCallAd Control_ID_Label1
  loc_640A69: FStAdFunc var_1D8
  loc_640A6C: FLdPr var_1D8
  loc_640A6F: Me.Caption = from_stack_1
  loc_640A74: FFreeStr var_90 = ""
  loc_640A7B: FFree1Ad var_1D8
  loc_640A7E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_640A95: FLdRfVar var_1D4
  loc_640A98: LitVar_Missing var_1D0
  loc_640A9B: LitVar_Missing var_1B0
  loc_640A9E: LitVar_Missing var_190
  loc_640AA1: LitVar_Missing var_170
  loc_640AA4: LitVar_Missing var_150
  loc_640AA7: LitVar_Missing var_130
  loc_640AAA: LitVar_Missing var_110
  loc_640AAD: LitVar_Missing var_F0
  loc_640AB0: LitVar_Missing var_D0
  loc_640AB3: LitVar_Missing var_B0
  loc_640AB6: LitStr "Estado"
  loc_640AB9: FStStrCopy var_90
  loc_640ABC: FLdRfVar var_90
  loc_640ABF: LitI4 2
  loc_640AC4: PopTmpLdAdStr var_8C
  loc_640AC7: LitI2_Byte 4
  loc_640AC9: PopTmpLdAd2 var_86
  loc_640ACC: ImpAdLdRf MemVar_74C7D0
  loc_640ACF: NewIfNullPr clsMsg
  loc_640AD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640AD7: ILdRf var_1D4
  loc_640ADA: FLdPrThis
  loc_640ADB: VCallAd Control_ID_Label2
  loc_640ADE: FStAdFunc var_1D8
  loc_640AE1: FLdPr var_1D8
  loc_640AE4: Me.Caption = from_stack_1
  loc_640AE9: FFreeStr var_90 = ""
  loc_640AF0: FFree1Ad var_1D8
  loc_640AF3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_640B0A: FLdRfVar var_1D4
  loc_640B0D: LitVar_Missing var_1D0
  loc_640B10: LitVar_Missing var_1B0
  loc_640B13: LitVar_Missing var_190
  loc_640B16: LitVar_Missing var_170
  loc_640B19: LitVar_Missing var_150
  loc_640B1C: LitVar_Missing var_130
  loc_640B1F: LitVar_Missing var_110
  loc_640B22: LitVar_Missing var_F0
  loc_640B25: LitVar_Missing var_D0
  loc_640B28: LitVar_Missing var_B0
  loc_640B2B: LitStr "Estado del Surtidor  - CDFP"
  loc_640B2E: FStStrCopy var_90
  loc_640B31: FLdRfVar var_90
  loc_640B34: LitI4 3
  loc_640B39: PopTmpLdAdStr var_8C
  loc_640B3C: LitI2_Byte 4
  loc_640B3E: PopTmpLdAd2 var_86
  loc_640B41: ImpAdLdRf MemVar_74C7D0
  loc_640B44: NewIfNullPr clsMsg
  loc_640B47: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640B4C: ILdRf var_1D4
  loc_640B4F: FLdPrThis
  loc_640B50: VCallAd Control_ID_Label3
  loc_640B53: FStAdFunc var_1D8
  loc_640B56: FLdPr var_1D8
  loc_640B59: Me.Caption = from_stack_1
  loc_640B5E: FFreeStr var_90 = ""
  loc_640B65: FFree1Ad var_1D8
  loc_640B68: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_640B7F: FLdRfVar var_1D4
  loc_640B82: LitVar_Missing var_1D0
  loc_640B85: LitVar_Missing var_1B0
  loc_640B88: LitVar_Missing var_190
  loc_640B8B: LitVar_Missing var_170
  loc_640B8E: LitVar_Missing var_150
  loc_640B91: LitVar_Missing var_130
  loc_640B94: LitVar_Missing var_110
  loc_640B97: LitVar_Missing var_F0
  loc_640B9A: LitVar_Missing var_D0
  loc_640B9D: LitVar_Missing var_B0
  loc_640BA0: LitStr "&Salir"
  loc_640BA3: FStStrCopy var_90
  loc_640BA6: FLdRfVar var_90
  loc_640BA9: LitI4 4
  loc_640BAE: PopTmpLdAdStr var_8C
  loc_640BB1: LitI2_Byte 4
  loc_640BB3: PopTmpLdAd2 var_86
  loc_640BB6: ImpAdLdRf MemVar_74C7D0
  loc_640BB9: NewIfNullPr clsMsg
  loc_640BBC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_640BC1: ILdRf var_1D4
  loc_640BC4: FLdPrThis
  loc_640BC5: VCallAd Control_ID_cmdSalir
  loc_640BC8: FStAdFunc var_1D8
  loc_640BCB: FLdPr var_1D8
  loc_640BCE: Me.Caption = from_stack_1
  loc_640BD3: FFreeStr var_90 = ""
  loc_640BDA: FFree1Ad var_1D8
  loc_640BDD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_640BF4: ILdRf Me
  loc_640BF7: CastAd
  loc_640BFA: FStAdFunc var_1D8
  loc_640BFD: FLdRfVar var_1D8
  loc_640C00: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_640C05: FFree1Ad var_1D8
  loc_640C08: FLdPr Me
  loc_640C0B: MemLdI2 nSurtidor
  loc_640C0E: CStrUI1
  loc_640C10: FStStrNoPop var_90
  loc_640C13: FLdPrThis
  loc_640C14: VCallAd Control_ID_txtSurtidor
  loc_640C17: FStAdFunc var_1D8
  loc_640C1A: FLdPr var_1D8
  loc_640C1D: Me.Text = from_stack_1
  loc_640C22: FFree1Str var_90
  loc_640C25: FFree1Ad var_1D8
  loc_640C28: ImpAdLdI4 MemVar_74BED4
  loc_640C2B: LitStr ":"
  loc_640C2E: ConcatStr
  loc_640C2F: FStStrNoPop var_90
  loc_640C32: FLdPrThis
  loc_640C33: VCallAd Control_ID_Label1
  loc_640C36: FStAdFunc var_1D8
  loc_640C39: FLdPr var_1D8
  loc_640C3C: Me.Caption = from_stack_1
  loc_640C41: FFree1Str var_90
  loc_640C44: FFree1Ad var_1D8
  loc_640C47: ExitProcHresult
End Sub

Private Sub Form_Activate() '6E9190
  'Data Table: 41279C
  loc_6E8434: FLdRfVar var_1DC
  loc_6E8437: LitVar_Missing var_1D8
  loc_6E843A: LitVar_Missing var_1B8
  loc_6E843D: LitVar_Missing var_198
  loc_6E8440: LitVar_Missing var_178
  loc_6E8443: LitVar_Missing var_158
  loc_6E8446: LitVar_Missing var_138
  loc_6E8449: LitVar_Missing var_118
  loc_6E844C: LitVar_Missing var_F8
  loc_6E844F: LitVar_Missing var_D8
  loc_6E8452: LitVar_Missing var_B8
  loc_6E8455: LitStr "Desconocido"
  loc_6E8458: FStStrCopy var_98
  loc_6E845B: FLdRfVar var_98
  loc_6E845E: LitI4 5
  loc_6E8463: PopTmpLdAdStr var_94
  loc_6E8466: LitI2_Byte 4
  loc_6E8468: PopTmpLdAd2 var_8E
  loc_6E846B: ImpAdLdRf MemVar_74C7D0
  loc_6E846E: NewIfNullPr clsMsg
  loc_6E8471: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8476: ILdRf var_1DC
  loc_6E8479: FLdPr Me
  loc_6E847C: MemStStrCopy
  loc_6E8480: FFreeStr var_98 = ""
  loc_6E8487: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E849E: FLdRfVar var_1DC
  loc_6E84A1: LitVar_Missing var_1D8
  loc_6E84A4: LitVar_Missing var_1B8
  loc_6E84A7: LitVar_Missing var_198
  loc_6E84AA: LitVar_Missing var_178
  loc_6E84AD: LitVar_Missing var_158
  loc_6E84B0: LitVar_Missing var_138
  loc_6E84B3: LitVar_Missing var_118
  loc_6E84B6: LitVar_Missing var_F8
  loc_6E84B9: LitVar_Missing var_D8
  loc_6E84BC: LitVar_Missing var_B8
  loc_6E84BF: LitStr "El dispositivo "
  loc_6E84C2: FStStrCopy var_98
  loc_6E84C5: FLdRfVar var_98
  loc_6E84C8: LitI4 6
  loc_6E84CD: PopTmpLdAdStr var_94
  loc_6E84D0: LitI2_Byte 4
  loc_6E84D2: PopTmpLdAd2 var_8E
  loc_6E84D5: ImpAdLdRf MemVar_74C7D0
  loc_6E84D8: NewIfNullPr clsMsg
  loc_6E84DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E84E0: ILdRf var_1DC
  loc_6E84E3: FLdPr Me
  loc_6E84E6: MemStStrCopy
  loc_6E84EA: FFreeStr var_98 = ""
  loc_6E84F1: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8508: FLdRfVar var_1DC
  loc_6E850B: LitVar_Missing var_1D8
  loc_6E850E: LitVar_Missing var_1B8
  loc_6E8511: LitVar_Missing var_198
  loc_6E8514: LitVar_Missing var_178
  loc_6E8517: LitVar_Missing var_158
  loc_6E851A: LitVar_Missing var_138
  loc_6E851D: LitVar_Missing var_118
  loc_6E8520: LitVar_Missing var_F8
  loc_6E8523: LitVar_Missing var_D8
  loc_6E8526: LitVar_Missing var_B8
  loc_6E8529: LitStr "pertenece a un usuario en Lista de Bloqueos."
  loc_6E852C: FStStrCopy var_98
  loc_6E852F: FLdRfVar var_98
  loc_6E8532: LitI4 7
  loc_6E8537: PopTmpLdAdStr var_94
  loc_6E853A: LitI2_Byte 4
  loc_6E853C: PopTmpLdAd2 var_8E
  loc_6E853F: ImpAdLdRf MemVar_74C7D0
  loc_6E8542: NewIfNullPr clsMsg
  loc_6E8545: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E854A: ILdRf var_1DC
  loc_6E854D: FLdPr Me
  loc_6E8550: MemStStrCopy
  loc_6E8554: FFreeStr var_98 = ""
  loc_6E855B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8572: FLdRfVar var_1DC
  loc_6E8575: LitVar_Missing var_1D8
  loc_6E8578: LitVar_Missing var_1B8
  loc_6E857B: LitVar_Missing var_198
  loc_6E857E: LitVar_Missing var_178
  loc_6E8581: LitVar_Missing var_158
  loc_6E8584: LitVar_Missing var_138
  loc_6E8587: LitVar_Missing var_118
  loc_6E858A: LitVar_Missing var_F8
  loc_6E858D: LitVar_Missing var_D8
  loc_6E8590: LitVar_Missing var_B8
  loc_6E8593: LitStr " pertenece a una compañía en Lista de Bloqueos."
  loc_6E8596: FStStrCopy var_98
  loc_6E8599: FLdRfVar var_98
  loc_6E859C: LitI4 8
  loc_6E85A1: PopTmpLdAdStr var_94
  loc_6E85A4: LitI2_Byte 4
  loc_6E85A6: PopTmpLdAd2 var_8E
  loc_6E85A9: ImpAdLdRf MemVar_74C7D0
  loc_6E85AC: NewIfNullPr clsMsg
  loc_6E85AF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E85B4: ILdRf var_1DC
  loc_6E85B7: FLdPr Me
  loc_6E85BA: MemStStrCopy
  loc_6E85BE: FFreeStr var_98 = ""
  loc_6E85C5: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E85DC: FLdRfVar var_1DC
  loc_6E85DF: LitVar_Missing var_1D8
  loc_6E85E2: LitVar_Missing var_1B8
  loc_6E85E5: LitVar_Missing var_198
  loc_6E85E8: LitVar_Missing var_178
  loc_6E85EB: LitVar_Missing var_158
  loc_6E85EE: LitVar_Missing var_138
  loc_6E85F1: LitVar_Missing var_118
  loc_6E85F4: LitVar_Missing var_F8
  loc_6E85F7: LitVar_Missing var_D8
  loc_6E85FA: LitVar_Missing var_B8
  loc_6E85FD: LitStr " está autorizado."
  loc_6E8600: FStStrCopy var_98
  loc_6E8603: FLdRfVar var_98
  loc_6E8606: LitI4 9
  loc_6E860B: PopTmpLdAdStr var_94
  loc_6E860E: LitI2_Byte 4
  loc_6E8610: PopTmpLdAd2 var_8E
  loc_6E8613: ImpAdLdRf MemVar_74C7D0
  loc_6E8616: NewIfNullPr clsMsg
  loc_6E8619: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E861E: ILdRf var_1DC
  loc_6E8621: FLdPr Me
  loc_6E8624: MemStStrCopy
  loc_6E8628: FFreeStr var_98 = ""
  loc_6E862F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8646: FLdRfVar var_1DC
  loc_6E8649: LitVar_Missing var_1D8
  loc_6E864C: LitVar_Missing var_1B8
  loc_6E864F: LitVar_Missing var_198
  loc_6E8652: LitVar_Missing var_178
  loc_6E8655: LitVar_Missing var_158
  loc_6E8658: LitVar_Missing var_138
  loc_6E865B: LitVar_Missing var_118
  loc_6E865E: LitVar_Missing var_F8
  loc_6E8661: LitVar_Missing var_D8
  loc_6E8664: LitVar_Missing var_B8
  loc_6E8667: LitStr " tiene la fecha de validez vencida."
  loc_6E866A: FStStrCopy var_98
  loc_6E866D: FLdRfVar var_98
  loc_6E8670: LitI4 &HA
  loc_6E8675: PopTmpLdAdStr var_94
  loc_6E8678: LitI2_Byte 4
  loc_6E867A: PopTmpLdAd2 var_8E
  loc_6E867D: ImpAdLdRf MemVar_74C7D0
  loc_6E8680: NewIfNullPr clsMsg
  loc_6E8683: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8688: ILdRf var_1DC
  loc_6E868B: FLdPr Me
  loc_6E868E: MemStStrCopy
  loc_6E8692: FFreeStr var_98 = ""
  loc_6E8699: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E86B0: FLdRfVar var_1DC
  loc_6E86B3: LitVar_Missing var_1D8
  loc_6E86B6: LitVar_Missing var_1B8
  loc_6E86B9: LitVar_Missing var_198
  loc_6E86BC: LitVar_Missing var_178
  loc_6E86BF: LitVar_Missing var_158
  loc_6E86C2: LitVar_Missing var_138
  loc_6E86C5: LitVar_Missing var_118
  loc_6E86C8: LitVar_Missing var_F8
  loc_6E86CB: LitVar_Missing var_D8
  loc_6E86CE: LitVar_Missing var_B8
  loc_6E86D1: LitStr " tiene el código de grupo incorrecto."
  loc_6E86D4: FStStrCopy var_98
  loc_6E86D7: FLdRfVar var_98
  loc_6E86DA: LitI4 &HB
  loc_6E86DF: PopTmpLdAdStr var_94
  loc_6E86E2: LitI2_Byte 4
  loc_6E86E4: PopTmpLdAd2 var_8E
  loc_6E86E7: ImpAdLdRf MemVar_74C7D0
  loc_6E86EA: NewIfNullPr clsMsg
  loc_6E86ED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E86F2: ILdRf var_1DC
  loc_6E86F5: FLdPr Me
  loc_6E86F8: MemStStrCopy
  loc_6E86FC: FFreeStr var_98 = ""
  loc_6E8703: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E871A: FLdRfVar var_1DC
  loc_6E871D: LitVar_Missing var_1D8
  loc_6E8720: LitVar_Missing var_1B8
  loc_6E8723: LitVar_Missing var_198
  loc_6E8726: LitVar_Missing var_178
  loc_6E8729: LitVar_Missing var_158
  loc_6E872C: LitVar_Missing var_138
  loc_6E872F: LitVar_Missing var_118
  loc_6E8732: LitVar_Missing var_F8
  loc_6E8735: LitVar_Missing var_D8
  loc_6E8738: LitVar_Missing var_B8
  loc_6E873B: LitStr " tiene el código de compañía incorrecto."
  loc_6E873E: FStStrCopy var_98
  loc_6E8741: FLdRfVar var_98
  loc_6E8744: LitI4 &HC
  loc_6E8749: PopTmpLdAdStr var_94
  loc_6E874C: LitI2_Byte 4
  loc_6E874E: PopTmpLdAd2 var_8E
  loc_6E8751: ImpAdLdRf MemVar_74C7D0
  loc_6E8754: NewIfNullPr clsMsg
  loc_6E8757: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E875C: ILdRf var_1DC
  loc_6E875F: FLdPr Me
  loc_6E8762: MemStStrCopy
  loc_6E8766: FFreeStr var_98 = ""
  loc_6E876D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8784: FLdRfVar var_1DC
  loc_6E8787: LitVar_Missing var_1D8
  loc_6E878A: LitVar_Missing var_1B8
  loc_6E878D: LitVar_Missing var_198
  loc_6E8790: LitVar_Missing var_178
  loc_6E8793: LitVar_Missing var_158
  loc_6E8796: LitVar_Missing var_138
  loc_6E8799: LitVar_Missing var_118
  loc_6E879C: LitVar_Missing var_F8
  loc_6E879F: LitVar_Missing var_D8
  loc_6E87A2: LitVar_Missing var_B8
  loc_6E87A5: LitStr " tiene el código de usuario incorrecto."
  loc_6E87A8: FStStrCopy var_98
  loc_6E87AB: FLdRfVar var_98
  loc_6E87AE: LitI4 &HD
  loc_6E87B3: PopTmpLdAdStr var_94
  loc_6E87B6: LitI2_Byte 4
  loc_6E87B8: PopTmpLdAd2 var_8E
  loc_6E87BB: ImpAdLdRf MemVar_74C7D0
  loc_6E87BE: NewIfNullPr clsMsg
  loc_6E87C1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E87C6: ILdRf var_1DC
  loc_6E87C9: FLdPr Me
  loc_6E87CC: MemStStrCopy
  loc_6E87D0: FFreeStr var_98 = ""
  loc_6E87D7: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E87EE: FLdRfVar var_1DC
  loc_6E87F1: LitVar_Missing var_1D8
  loc_6E87F4: LitVar_Missing var_1B8
  loc_6E87F7: LitVar_Missing var_198
  loc_6E87FA: LitVar_Missing var_178
  loc_6E87FD: LitVar_Missing var_158
  loc_6E8800: LitVar_Missing var_138
  loc_6E8803: LitVar_Missing var_118
  loc_6E8806: LitVar_Missing var_F8
  loc_6E8809: LitVar_Missing var_D8
  loc_6E880C: LitVar_Missing var_B8
  loc_6E880F: LitStr " tiene datos incorrectos."
  loc_6E8812: FStStrCopy var_98
  loc_6E8815: FLdRfVar var_98
  loc_6E8818: LitI4 &HE
  loc_6E881D: PopTmpLdAdStr var_94
  loc_6E8820: LitI2_Byte 4
  loc_6E8822: PopTmpLdAd2 var_8E
  loc_6E8825: ImpAdLdRf MemVar_74C7D0
  loc_6E8828: NewIfNullPr clsMsg
  loc_6E882B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8830: ILdRf var_1DC
  loc_6E8833: FLdPr Me
  loc_6E8836: MemStStrCopy
  loc_6E883A: FFreeStr var_98 = ""
  loc_6E8841: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8858: FLdRfVar var_1DC
  loc_6E885B: LitVar_Missing var_1D8
  loc_6E885E: LitVar_Missing var_1B8
  loc_6E8861: LitVar_Missing var_198
  loc_6E8864: LitVar_Missing var_178
  loc_6E8867: LitVar_Missing var_158
  loc_6E886A: LitVar_Missing var_138
  loc_6E886D: LitVar_Missing var_118
  loc_6E8870: LitVar_Missing var_F8
  loc_6E8873: LitVar_Missing var_D8
  loc_6E8876: LitVar_Missing var_B8
  loc_6E8879: LitStr " está autorizado, pero quiere cargar un combustible no autorizado."
  loc_6E887C: FStStrCopy var_98
  loc_6E887F: FLdRfVar var_98
  loc_6E8882: LitI4 &HF
  loc_6E8887: PopTmpLdAdStr var_94
  loc_6E888A: LitI2_Byte 4
  loc_6E888C: PopTmpLdAd2 var_8E
  loc_6E888F: ImpAdLdRf MemVar_74C7D0
  loc_6E8892: NewIfNullPr clsMsg
  loc_6E8895: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E889A: ILdRf var_1DC
  loc_6E889D: FLdPr Me
  loc_6E88A0: MemStStrCopy
  loc_6E88A4: FFreeStr var_98 = ""
  loc_6E88AB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E88C2: FLdRfVar var_1DC
  loc_6E88C5: LitVar_Missing var_1D8
  loc_6E88C8: LitVar_Missing var_1B8
  loc_6E88CB: LitVar_Missing var_198
  loc_6E88CE: LitVar_Missing var_178
  loc_6E88D1: LitVar_Missing var_158
  loc_6E88D4: LitVar_Missing var_138
  loc_6E88D7: LitVar_Missing var_118
  loc_6E88DA: LitVar_Missing var_F8
  loc_6E88DD: LitVar_Missing var_D8
  loc_6E88E0: LitVar_Missing var_B8
  loc_6E88E3: LitStr " no pertenece a la estación."
  loc_6E88E6: FStStrCopy var_98
  loc_6E88E9: FLdRfVar var_98
  loc_6E88EC: LitI4 &H10
  loc_6E88F1: PopTmpLdAdStr var_94
  loc_6E88F4: LitI2_Byte 4
  loc_6E88F6: PopTmpLdAd2 var_8E
  loc_6E88F9: ImpAdLdRf MemVar_74C7D0
  loc_6E88FC: NewIfNullPr clsMsg
  loc_6E88FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8904: ILdRf var_1DC
  loc_6E8907: FLdPr Me
  loc_6E890A: MemStStrCopy
  loc_6E890E: FFreeStr var_98 = ""
  loc_6E8915: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E892C: FLdRfVar var_1DC
  loc_6E892F: LitVar_Missing var_1D8
  loc_6E8932: LitVar_Missing var_1B8
  loc_6E8935: LitVar_Missing var_198
  loc_6E8938: LitVar_Missing var_178
  loc_6E893B: LitVar_Missing var_158
  loc_6E893E: LitVar_Missing var_138
  loc_6E8941: LitVar_Missing var_118
  loc_6E8944: LitVar_Missing var_F8
  loc_6E8947: LitVar_Missing var_D8
  loc_6E894A: LitVar_Missing var_B8
  loc_6E894D: LitStr "El "
  loc_6E8950: FStStrCopy var_98
  loc_6E8953: FLdRfVar var_98
  loc_6E8956: LitI4 &H11
  loc_6E895B: PopTmpLdAdStr var_94
  loc_6E895E: LitI2_Byte 4
  loc_6E8960: PopTmpLdAd2 var_8E
  loc_6E8963: ImpAdLdRf MemVar_74C7D0
  loc_6E8966: NewIfNullPr clsMsg
  loc_6E8969: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E896E: ILdRf var_1DC
  loc_6E8971: FLdPr Me
  loc_6E8974: MemStStrCopy
  loc_6E8978: FFreeStr var_98 = ""
  loc_6E897F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8996: FLdRfVar var_1DC
  loc_6E8999: LitVar_Missing var_1D8
  loc_6E899C: LitVar_Missing var_1B8
  loc_6E899F: LitVar_Missing var_198
  loc_6E89A2: LitVar_Missing var_178
  loc_6E89A5: LitVar_Missing var_158
  loc_6E89A8: LitVar_Missing var_138
  loc_6E89AB: LitVar_Missing var_118
  loc_6E89AE: LitVar_Missing var_F8
  loc_6E89B1: LitVar_Missing var_D8
  loc_6E89B4: LitVar_Missing var_B8
  loc_6E89B7: LitStr " está listo para operar."
  loc_6E89BA: FStStrCopy var_98
  loc_6E89BD: FLdRfVar var_98
  loc_6E89C0: LitI4 &H12
  loc_6E89C5: PopTmpLdAdStr var_94
  loc_6E89C8: LitI2_Byte 4
  loc_6E89CA: PopTmpLdAd2 var_8E
  loc_6E89CD: ImpAdLdRf MemVar_74C7D0
  loc_6E89D0: NewIfNullPr clsMsg
  loc_6E89D3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E89D8: ILdRf var_1DC
  loc_6E89DB: FLdPr Me
  loc_6E89DE: MemStStrCopy
  loc_6E89E2: FFreeStr var_98 = ""
  loc_6E89E9: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8A00: FLdRfVar var_1DC
  loc_6E8A03: LitVar_Missing var_1D8
  loc_6E8A06: LitVar_Missing var_1B8
  loc_6E8A09: LitVar_Missing var_198
  loc_6E8A0C: LitVar_Missing var_178
  loc_6E8A0F: LitVar_Missing var_158
  loc_6E8A12: LitVar_Missing var_138
  loc_6E8A15: LitVar_Missing var_118
  loc_6E8A18: LitVar_Missing var_F8
  loc_6E8A1B: LitVar_Missing var_D8
  loc_6E8A1E: LitVar_Missing var_B8
  loc_6E8A21: LitStr " pertenece a un grupo no autorizado."
  loc_6E8A24: FStStrCopy var_98
  loc_6E8A27: FLdRfVar var_98
  loc_6E8A2A: LitI4 &H13
  loc_6E8A2F: PopTmpLdAdStr var_94
  loc_6E8A32: LitI2_Byte 4
  loc_6E8A34: PopTmpLdAd2 var_8E
  loc_6E8A37: ImpAdLdRf MemVar_74C7D0
  loc_6E8A3A: NewIfNullPr clsMsg
  loc_6E8A3D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8A42: ILdRf var_1DC
  loc_6E8A45: FLdPr Me
  loc_6E8A48: MemStStrCopy
  loc_6E8A4C: FFreeStr var_98 = ""
  loc_6E8A53: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8A6A: FLdRfVar var_1DC
  loc_6E8A6D: LitVar_Missing var_1D8
  loc_6E8A70: LitVar_Missing var_1B8
  loc_6E8A73: LitVar_Missing var_198
  loc_6E8A76: LitVar_Missing var_178
  loc_6E8A79: LitVar_Missing var_158
  loc_6E8A7C: LitVar_Missing var_138
  loc_6E8A7F: LitVar_Missing var_118
  loc_6E8A82: LitVar_Missing var_F8
  loc_6E8A85: LitVar_Missing var_D8
  loc_6E8A88: LitVar_Missing var_B8
  loc_6E8A8B: LitStr "Dispositivo desconocido."
  loc_6E8A8E: FStStrCopy var_98
  loc_6E8A91: FLdRfVar var_98
  loc_6E8A94: LitI4 &H14
  loc_6E8A99: PopTmpLdAdStr var_94
  loc_6E8A9C: LitI2_Byte 4
  loc_6E8A9E: PopTmpLdAd2 var_8E
  loc_6E8AA1: ImpAdLdRf MemVar_74C7D0
  loc_6E8AA4: NewIfNullPr clsMsg
  loc_6E8AA7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8AAC: ILdRf var_1DC
  loc_6E8AAF: FLdPr Me
  loc_6E8AB2: MemStStrCopy
  loc_6E8AB6: FFreeStr var_98 = ""
  loc_6E8ABD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8AD4: FLdRfVar var_1DC
  loc_6E8AD7: LitVar_Missing var_1D8
  loc_6E8ADA: LitVar_Missing var_1B8
  loc_6E8ADD: LitVar_Missing var_198
  loc_6E8AE0: LitVar_Missing var_178
  loc_6E8AE3: LitVar_Missing var_158
  loc_6E8AE6: LitVar_Missing var_138
  loc_6E8AE9: LitVar_Missing var_118
  loc_6E8AEC: LitVar_Missing var_F8
  loc_6E8AEF: LitVar_Missing var_D8
  loc_6E8AF2: LitVar_Missing var_B8
  loc_6E8AF5: LitStr " está autorizado a despachar a un particular, por contingencia."
  loc_6E8AF8: FStStrCopy var_98
  loc_6E8AFB: FLdRfVar var_98
  loc_6E8AFE: LitI4 &H15
  loc_6E8B03: PopTmpLdAdStr var_94
  loc_6E8B06: LitI2_Byte 4
  loc_6E8B08: PopTmpLdAd2 var_8E
  loc_6E8B0B: ImpAdLdRf MemVar_74C7D0
  loc_6E8B0E: NewIfNullPr clsMsg
  loc_6E8B11: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8B16: ILdRf var_1DC
  loc_6E8B19: FLdPr Me
  loc_6E8B1C: MemStStrCopy
  loc_6E8B20: FFreeStr var_98 = ""
  loc_6E8B27: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8B3E: FLdRfVar var_1DC
  loc_6E8B41: LitVar_Missing var_1D8
  loc_6E8B44: LitVar_Missing var_1B8
  loc_6E8B47: LitVar_Missing var_198
  loc_6E8B4A: LitVar_Missing var_178
  loc_6E8B4D: LitVar_Missing var_158
  loc_6E8B50: LitVar_Missing var_138
  loc_6E8B53: LitVar_Missing var_118
  loc_6E8B56: LitVar_Missing var_F8
  loc_6E8B59: LitVar_Missing var_D8
  loc_6E8B5C: LitVar_Missing var_B8
  loc_6E8B5F: LitStr " está autorizado a despachar a un vehiculo de la compañía, por contingencia."
  loc_6E8B62: FStStrCopy var_98
  loc_6E8B65: FLdRfVar var_98
  loc_6E8B68: LitI4 &H16
  loc_6E8B6D: PopTmpLdAdStr var_94
  loc_6E8B70: LitI2_Byte 4
  loc_6E8B72: PopTmpLdAd2 var_8E
  loc_6E8B75: ImpAdLdRf MemVar_74C7D0
  loc_6E8B78: NewIfNullPr clsMsg
  loc_6E8B7B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8B80: ILdRf var_1DC
  loc_6E8B83: FLdPr Me
  loc_6E8B86: MemStStrCopy
  loc_6E8B8A: FFreeStr var_98 = ""
  loc_6E8B91: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8BA8: FLdRfVar var_1DC
  loc_6E8BAB: LitVar_Missing var_1D8
  loc_6E8BAE: LitVar_Missing var_1B8
  loc_6E8BB1: LitVar_Missing var_198
  loc_6E8BB4: LitVar_Missing var_178
  loc_6E8BB7: LitVar_Missing var_158
  loc_6E8BBA: LitVar_Missing var_138
  loc_6E8BBD: LitVar_Missing var_118
  loc_6E8BC0: LitVar_Missing var_F8
  loc_6E8BC3: LitVar_Missing var_D8
  loc_6E8BC6: LitVar_Missing var_B8
  loc_6E8BC9: LitStr "DESCONOCIDO"
  loc_6E8BCC: FStStrCopy var_98
  loc_6E8BCF: FLdRfVar var_98
  loc_6E8BD2: LitI4 &H17
  loc_6E8BD7: PopTmpLdAdStr var_94
  loc_6E8BDA: LitI2_Byte 4
  loc_6E8BDC: PopTmpLdAd2 var_8E
  loc_6E8BDF: ImpAdLdRf MemVar_74C7D0
  loc_6E8BE2: NewIfNullPr clsMsg
  loc_6E8BE5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6E8BEA: ILdRf var_1DC
  loc_6E8BED: FLdPr Me
  loc_6E8BF0: MemStStrCopy
  loc_6E8BF4: FFreeStr var_98 = ""
  loc_6E8BFB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = ""
  loc_6E8C12: FLdRfVar var_8E
  loc_6E8C15: FLdPr Me
  loc_6E8C18: MemLdI2 nSurtidor
  loc_6E8C1B: FLdRfVar var_88
  loc_6E8C1E: FLdRfVar var_1E0
  loc_6E8C21: ImpAdLdRf MemVar_74C760
  loc_6E8C24: NewIfNullPr Formx
  loc_6E8C27: from_stack_1v = Formx.global_4589716Get()
  loc_6E8C2C: FLdPr var_1E0
  loc_6E8C2F:  = Formx.OLEDropMode
  loc_6E8C34: FLdI2 var_8E
  loc_6E8C37: NotI4
  loc_6E8C38: FFree1Ad var_1E0
  loc_6E8C3B: BranchF loc_6E8C6A
  loc_6E8C3E: FLdRfVar var_B8
  loc_6E8C41: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6E8C46: FLdRfVar var_B8
  loc_6E8C49: CBoolVarNull
  loc_6E8C4B: FFree1Var var_B8 = ""
  loc_6E8C4E: BranchF loc_6E8C67
  loc_6E8C51: ILdRf Me
  loc_6E8C54: FStAdNoPop
  loc_6E8C58: ImpAdLdRf MemVar_7520D4
  loc_6E8C5B: NewIfNullPr Global
  loc_6E8C5E: Global.Unload from_stack_1
  loc_6E8C63: FFree1Ad var_1E0
  loc_6E8C66: ExitProcHresult
  loc_6E8C67: Branch loc_6E8C12
  loc_6E8C6A: ILdRf var_88
  loc_6E8C6D: FnLenStr
  loc_6E8C6E: LitI4 2
  loc_6E8C73: NeI4
  loc_6E8C74: BranchF loc_6E8C8D
  loc_6E8C77: LitStr "Desconocido"
  loc_6E8C7A: FLdPrThis
  loc_6E8C7B: VCallAd Control_ID_txtEstado
  loc_6E8C7E: FStAdFunc var_1E0
  loc_6E8C81: FLdPr var_1E0
  loc_6E8C84: Me.Text = from_stack_1
  loc_6E8C89: FFree1Ad var_1E0
  loc_6E8C8C: ExitProcHresult
  loc_6E8C8D: LitVarI2 var_B8, 1
  loc_6E8C92: LitI4 1
  loc_6E8C97: ILdRf var_88
  loc_6E8C9A: ImpAdCallI2 Mid$(, , )
  loc_6E8C9F: FStStrNoPop var_98
  loc_6E8CA2: ImpAdCallI2 Asc()
  loc_6E8CA7: LitI2_Byte 1
  loc_6E8CA9: SubI2
  loc_6E8CAA: FStI2 var_1E2
  loc_6E8CAD: FFree1Str var_98
  loc_6E8CB0: FFree1Var var_B8 = ""
  loc_6E8CB3: FLdI2 var_1E2
  loc_6E8CB6: LitI2_Byte 0
  loc_6E8CB8: EqI2
  loc_6E8CB9: BranchF loc_6E8D0C
  loc_6E8CBC: LitVarI2 var_B8, 1
  loc_6E8CC1: LitI4 2
  loc_6E8CC6: ILdRf var_88
  loc_6E8CC9: ImpAdCallI2 Mid$(, , )
  loc_6E8CCE: FStStr var_1EC
  loc_6E8CD1: FLdPr Me
  loc_6E8CD4: MemLdStr global_60
  loc_6E8CD7: FLdRfVar var_1DC
  loc_6E8CDA: FLdZeroAd var_1EC
  loc_6E8CDD: FStStrNoPop var_98
  loc_6E8CE0: CI2Str
  loc_6E8CE2: PopTmpLdAd2 var_8E
  loc_6E8CE5: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8CEA: ILdRf var_1DC
  loc_6E8CED: ConcatStr
  loc_6E8CEE: FStStrNoPop var_1E8
  loc_6E8CF1: FLdPr Me
  loc_6E8CF4: MemLdStr global_64
  loc_6E8CF7: ConcatStr
  loc_6E8CF8: FStStr var_8C
  loc_6E8CFB: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8D06: FFree1Var var_B8 = ""
  loc_6E8D09: Branch loc_6E9179
  loc_6E8D0C: FLdI2 var_1E2
  loc_6E8D0F: LitI2_Byte 1
  loc_6E8D11: EqI2
  loc_6E8D12: BranchF loc_6E8D65
  loc_6E8D15: LitVarI2 var_B8, 1
  loc_6E8D1A: LitI4 2
  loc_6E8D1F: ILdRf var_88
  loc_6E8D22: ImpAdCallI2 Mid$(, , )
  loc_6E8D27: FStStr var_1EC
  loc_6E8D2A: FLdPr Me
  loc_6E8D2D: MemLdStr global_60
  loc_6E8D30: FLdRfVar var_1DC
  loc_6E8D33: FLdZeroAd var_1EC
  loc_6E8D36: FStStrNoPop var_98
  loc_6E8D39: CI2Str
  loc_6E8D3B: PopTmpLdAd2 var_8E
  loc_6E8D3E: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8D43: ILdRf var_1DC
  loc_6E8D46: ConcatStr
  loc_6E8D47: FStStrNoPop var_1E8
  loc_6E8D4A: FLdPr Me
  loc_6E8D4D: MemLdStr global_68
  loc_6E8D50: ConcatStr
  loc_6E8D51: FStStr var_8C
  loc_6E8D54: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8D5F: FFree1Var var_B8 = ""
  loc_6E8D62: Branch loc_6E9179
  loc_6E8D65: FLdI2 var_1E2
  loc_6E8D68: LitI2_Byte 2
  loc_6E8D6A: EqI2
  loc_6E8D6B: BranchF loc_6E8DBE
  loc_6E8D6E: LitVarI2 var_B8, 1
  loc_6E8D73: LitI4 2
  loc_6E8D78: ILdRf var_88
  loc_6E8D7B: ImpAdCallI2 Mid$(, , )
  loc_6E8D80: FStStr var_1EC
  loc_6E8D83: FLdPr Me
  loc_6E8D86: MemLdStr global_60
  loc_6E8D89: FLdRfVar var_1DC
  loc_6E8D8C: FLdZeroAd var_1EC
  loc_6E8D8F: FStStrNoPop var_98
  loc_6E8D92: CI2Str
  loc_6E8D94: PopTmpLdAd2 var_8E
  loc_6E8D97: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8D9C: ILdRf var_1DC
  loc_6E8D9F: ConcatStr
  loc_6E8DA0: FStStrNoPop var_1E8
  loc_6E8DA3: FLdPr Me
  loc_6E8DA6: MemLdStr global_72
  loc_6E8DA9: ConcatStr
  loc_6E8DAA: FStStr var_8C
  loc_6E8DAD: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8DB8: FFree1Var var_B8 = ""
  loc_6E8DBB: Branch loc_6E9179
  loc_6E8DBE: FLdI2 var_1E2
  loc_6E8DC1: LitI2_Byte 3
  loc_6E8DC3: EqI2
  loc_6E8DC4: BranchF loc_6E8E17
  loc_6E8DC7: LitVarI2 var_B8, 1
  loc_6E8DCC: LitI4 2
  loc_6E8DD1: ILdRf var_88
  loc_6E8DD4: ImpAdCallI2 Mid$(, , )
  loc_6E8DD9: FStStr var_1EC
  loc_6E8DDC: FLdPr Me
  loc_6E8DDF: MemLdStr global_60
  loc_6E8DE2: FLdRfVar var_1DC
  loc_6E8DE5: FLdZeroAd var_1EC
  loc_6E8DE8: FStStrNoPop var_98
  loc_6E8DEB: CI2Str
  loc_6E8DED: PopTmpLdAd2 var_8E
  loc_6E8DF0: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8DF5: ILdRf var_1DC
  loc_6E8DF8: ConcatStr
  loc_6E8DF9: FStStrNoPop var_1E8
  loc_6E8DFC: FLdPr Me
  loc_6E8DFF: MemLdStr global_76
  loc_6E8E02: ConcatStr
  loc_6E8E03: FStStr var_8C
  loc_6E8E06: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8E11: FFree1Var var_B8 = ""
  loc_6E8E14: Branch loc_6E9179
  loc_6E8E17: FLdI2 var_1E2
  loc_6E8E1A: LitI2_Byte 4
  loc_6E8E1C: EqI2
  loc_6E8E1D: BranchF loc_6E8E70
  loc_6E8E20: LitVarI2 var_B8, 1
  loc_6E8E25: LitI4 2
  loc_6E8E2A: ILdRf var_88
  loc_6E8E2D: ImpAdCallI2 Mid$(, , )
  loc_6E8E32: FStStr var_1EC
  loc_6E8E35: FLdPr Me
  loc_6E8E38: MemLdStr global_60
  loc_6E8E3B: FLdRfVar var_1DC
  loc_6E8E3E: FLdZeroAd var_1EC
  loc_6E8E41: FStStrNoPop var_98
  loc_6E8E44: CI2Str
  loc_6E8E46: PopTmpLdAd2 var_8E
  loc_6E8E49: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8E4E: ILdRf var_1DC
  loc_6E8E51: ConcatStr
  loc_6E8E52: FStStrNoPop var_1E8
  loc_6E8E55: FLdPr Me
  loc_6E8E58: MemLdStr global_80
  loc_6E8E5B: ConcatStr
  loc_6E8E5C: FStStr var_8C
  loc_6E8E5F: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8E6A: FFree1Var var_B8 = ""
  loc_6E8E6D: Branch loc_6E9179
  loc_6E8E70: FLdI2 var_1E2
  loc_6E8E73: LitI2_Byte 5
  loc_6E8E75: EqI2
  loc_6E8E76: BranchF loc_6E8EC9
  loc_6E8E79: LitVarI2 var_B8, 1
  loc_6E8E7E: LitI4 2
  loc_6E8E83: ILdRf var_88
  loc_6E8E86: ImpAdCallI2 Mid$(, , )
  loc_6E8E8B: FStStr var_1EC
  loc_6E8E8E: FLdPr Me
  loc_6E8E91: MemLdStr global_60
  loc_6E8E94: FLdRfVar var_1DC
  loc_6E8E97: FLdZeroAd var_1EC
  loc_6E8E9A: FStStrNoPop var_98
  loc_6E8E9D: CI2Str
  loc_6E8E9F: PopTmpLdAd2 var_8E
  loc_6E8EA2: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8EA7: ILdRf var_1DC
  loc_6E8EAA: ConcatStr
  loc_6E8EAB: FStStrNoPop var_1E8
  loc_6E8EAE: FLdPr Me
  loc_6E8EB1: MemLdStr global_84
  loc_6E8EB4: ConcatStr
  loc_6E8EB5: FStStr var_8C
  loc_6E8EB8: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8EC3: FFree1Var var_B8 = ""
  loc_6E8EC6: Branch loc_6E9179
  loc_6E8EC9: FLdI2 var_1E2
  loc_6E8ECC: LitI2_Byte 6
  loc_6E8ECE: EqI2
  loc_6E8ECF: BranchF loc_6E8F22
  loc_6E8ED2: LitVarI2 var_B8, 1
  loc_6E8ED7: LitI4 2
  loc_6E8EDC: ILdRf var_88
  loc_6E8EDF: ImpAdCallI2 Mid$(, , )
  loc_6E8EE4: FStStr var_1EC
  loc_6E8EE7: FLdPr Me
  loc_6E8EEA: MemLdStr global_60
  loc_6E8EED: FLdRfVar var_1DC
  loc_6E8EF0: FLdZeroAd var_1EC
  loc_6E8EF3: FStStrNoPop var_98
  loc_6E8EF6: CI2Str
  loc_6E8EF8: PopTmpLdAd2 var_8E
  loc_6E8EFB: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8F00: ILdRf var_1DC
  loc_6E8F03: ConcatStr
  loc_6E8F04: FStStrNoPop var_1E8
  loc_6E8F07: FLdPr Me
  loc_6E8F0A: MemLdStr global_88
  loc_6E8F0D: ConcatStr
  loc_6E8F0E: FStStr var_8C
  loc_6E8F11: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8F1C: FFree1Var var_B8 = ""
  loc_6E8F1F: Branch loc_6E9179
  loc_6E8F22: FLdI2 var_1E2
  loc_6E8F25: LitI2_Byte 7
  loc_6E8F27: EqI2
  loc_6E8F28: BranchF loc_6E8F7B
  loc_6E8F2B: LitVarI2 var_B8, 1
  loc_6E8F30: LitI4 2
  loc_6E8F35: ILdRf var_88
  loc_6E8F38: ImpAdCallI2 Mid$(, , )
  loc_6E8F3D: FStStr var_1EC
  loc_6E8F40: FLdPr Me
  loc_6E8F43: MemLdStr global_60
  loc_6E8F46: FLdRfVar var_1DC
  loc_6E8F49: FLdZeroAd var_1EC
  loc_6E8F4C: FStStrNoPop var_98
  loc_6E8F4F: CI2Str
  loc_6E8F51: PopTmpLdAd2 var_8E
  loc_6E8F54: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8F59: ILdRf var_1DC
  loc_6E8F5C: ConcatStr
  loc_6E8F5D: FStStrNoPop var_1E8
  loc_6E8F60: FLdPr Me
  loc_6E8F63: MemLdStr global_92
  loc_6E8F66: ConcatStr
  loc_6E8F67: FStStr var_8C
  loc_6E8F6A: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8F75: FFree1Var var_B8 = ""
  loc_6E8F78: Branch loc_6E9179
  loc_6E8F7B: FLdI2 var_1E2
  loc_6E8F7E: LitI2_Byte 8
  loc_6E8F80: EqI2
  loc_6E8F81: BranchF loc_6E8FD4
  loc_6E8F84: LitVarI2 var_B8, 1
  loc_6E8F89: LitI4 2
  loc_6E8F8E: ILdRf var_88
  loc_6E8F91: ImpAdCallI2 Mid$(, , )
  loc_6E8F96: FStStr var_1EC
  loc_6E8F99: FLdPr Me
  loc_6E8F9C: MemLdStr global_60
  loc_6E8F9F: FLdRfVar var_1DC
  loc_6E8FA2: FLdZeroAd var_1EC
  loc_6E8FA5: FStStrNoPop var_98
  loc_6E8FA8: CI2Str
  loc_6E8FAA: PopTmpLdAd2 var_8E
  loc_6E8FAD: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E8FB2: ILdRf var_1DC
  loc_6E8FB5: ConcatStr
  loc_6E8FB6: FStStrNoPop var_1E8
  loc_6E8FB9: FLdPr Me
  loc_6E8FBC: MemLdStr global_96
  loc_6E8FBF: ConcatStr
  loc_6E8FC0: FStStr var_8C
  loc_6E8FC3: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E8FCE: FFree1Var var_B8 = ""
  loc_6E8FD1: Branch loc_6E9179
  loc_6E8FD4: FLdI2 var_1E2
  loc_6E8FD7: LitI2_Byte 9
  loc_6E8FD9: EqI2
  loc_6E8FDA: BranchF loc_6E902D
  loc_6E8FDD: LitVarI2 var_B8, 1
  loc_6E8FE2: LitI4 2
  loc_6E8FE7: ILdRf var_88
  loc_6E8FEA: ImpAdCallI2 Mid$(, , )
  loc_6E8FEF: FStStr var_1EC
  loc_6E8FF2: FLdPr Me
  loc_6E8FF5: MemLdStr global_60
  loc_6E8FF8: FLdRfVar var_1DC
  loc_6E8FFB: FLdZeroAd var_1EC
  loc_6E8FFE: FStStrNoPop var_98
  loc_6E9001: CI2Str
  loc_6E9003: PopTmpLdAd2 var_8E
  loc_6E9006: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E900B: ILdRf var_1DC
  loc_6E900E: ConcatStr
  loc_6E900F: FStStrNoPop var_1E8
  loc_6E9012: FLdPr Me
  loc_6E9015: MemLdStr global_100
  loc_6E9018: ConcatStr
  loc_6E9019: FStStr var_8C
  loc_6E901C: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E9027: FFree1Var var_B8 = ""
  loc_6E902A: Branch loc_6E9179
  loc_6E902D: FLdI2 var_1E2
  loc_6E9030: LitI2_Byte &HA
  loc_6E9032: EqI2
  loc_6E9033: BranchF loc_6E9050
  loc_6E9036: LitStr "El "
  loc_6E9039: ImpAdLdI4 MemVar_74BED4
  loc_6E903C: ConcatStr
  loc_6E903D: FStStrNoPop var_98
  loc_6E9040: FLdPr Me
  loc_6E9043: MemLdStr global_108
  loc_6E9046: ConcatStr
  loc_6E9047: FStStr var_8C
  loc_6E904A: FFree1Str var_98
  loc_6E904D: Branch loc_6E9179
  loc_6E9050: FLdI2 var_1E2
  loc_6E9053: LitI2_Byte &HB
  loc_6E9055: EqI2
  loc_6E9056: BranchF loc_6E90A9
  loc_6E9059: LitVarI2 var_B8, 1
  loc_6E905E: LitI4 2
  loc_6E9063: ILdRf var_88
  loc_6E9066: ImpAdCallI2 Mid$(, , )
  loc_6E906B: FStStr var_1EC
  loc_6E906E: FLdPr Me
  loc_6E9071: MemLdStr global_60
  loc_6E9074: FLdRfVar var_1DC
  loc_6E9077: FLdZeroAd var_1EC
  loc_6E907A: FStStrNoPop var_98
  loc_6E907D: CI2Str
  loc_6E907F: PopTmpLdAd2 var_8E
  loc_6E9082: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E9087: ILdRf var_1DC
  loc_6E908A: ConcatStr
  loc_6E908B: FStStrNoPop var_1E8
  loc_6E908E: FLdPr Me
  loc_6E9091: MemLdStr global_112
  loc_6E9094: ConcatStr
  loc_6E9095: FStStr var_8C
  loc_6E9098: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E90A3: FFree1Var var_B8 = ""
  loc_6E90A6: Branch loc_6E9179
  loc_6E90A9: FLdI2 var_1E2
  loc_6E90AC: LitI2_Byte &HC
  loc_6E90AE: EqI2
  loc_6E90AF: BranchF loc_6E90BE
  loc_6E90B2: FLdPr Me
  loc_6E90B5: MemLdStr global_116
  loc_6E90B8: FStStrCopy var_8C
  loc_6E90BB: Branch loc_6E9179
  loc_6E90BE: FLdI2 var_1E2
  loc_6E90C1: LitI2_Byte &HD
  loc_6E90C3: EqI2
  loc_6E90C4: BranchF loc_6E9117
  loc_6E90C7: LitVarI2 var_B8, 1
  loc_6E90CC: LitI4 2
  loc_6E90D1: ILdRf var_88
  loc_6E90D4: ImpAdCallI2 Mid$(, , )
  loc_6E90D9: FStStr var_1EC
  loc_6E90DC: FLdPr Me
  loc_6E90DF: MemLdStr global_60
  loc_6E90E2: FLdRfVar var_1DC
  loc_6E90E5: FLdZeroAd var_1EC
  loc_6E90E8: FStStrNoPop var_98
  loc_6E90EB: CI2Str
  loc_6E90ED: PopTmpLdAd2 var_8E
  loc_6E90F0: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E90F5: ILdRf var_1DC
  loc_6E90F8: ConcatStr
  loc_6E90F9: FStStrNoPop var_1E8
  loc_6E90FC: FLdPr Me
  loc_6E90FF: MemLdStr global_120
  loc_6E9102: ConcatStr
  loc_6E9103: FStStr var_8C
  loc_6E9106: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E9111: FFree1Var var_B8 = ""
  loc_6E9114: Branch loc_6E9179
  loc_6E9117: FLdI2 var_1E2
  loc_6E911A: LitI2_Byte &HE
  loc_6E911C: EqI2
  loc_6E911D: BranchF loc_6E9170
  loc_6E9120: LitVarI2 var_B8, 1
  loc_6E9125: LitI4 2
  loc_6E912A: ILdRf var_88
  loc_6E912D: ImpAdCallI2 Mid$(, , )
  loc_6E9132: FStStr var_1EC
  loc_6E9135: FLdPr Me
  loc_6E9138: MemLdStr global_60
  loc_6E913B: FLdRfVar var_1DC
  loc_6E913E: FLdZeroAd var_1EC
  loc_6E9141: FStStrNoPop var_98
  loc_6E9144: CI2Str
  loc_6E9146: PopTmpLdAd2 var_8E
  loc_6E9149: from_stack_2v = Proc_42_5_5DEAD8(from_stack_1v)
  loc_6E914E: ILdRf var_1DC
  loc_6E9151: ConcatStr
  loc_6E9152: FStStrNoPop var_1E8
  loc_6E9155: FLdPr Me
  loc_6E9158: MemLdStr global_124
  loc_6E915B: ConcatStr
  loc_6E915C: FStStr var_8C
  loc_6E915F: FFreeStr var_98 = "": var_1DC = "": var_1E8 = ""
  loc_6E916A: FFree1Var var_B8 = ""
  loc_6E916D: Branch loc_6E9179
  loc_6E9170: FLdPr Me
  loc_6E9173: MemLdStr global_56
  loc_6E9176: FStStrCopy var_8C
  loc_6E9179: ILdRf var_8C
  loc_6E917C: FLdPrThis
  loc_6E917D: VCallAd Control_ID_txtEstado
  loc_6E9180: FStAdFunc var_1E0
  loc_6E9183: FLdPr var_1E0
  loc_6E9186: Me.Text = from_stack_1
  loc_6E918B: FFree1Ad var_1E0
  loc_6E918E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '5D1AAC
  'Data Table: 41279C
  loc_5D1A94: ILdRf Me
  loc_5D1A97: FStAdNoPop
  loc_5D1A9B: ImpAdLdRf MemVar_7520D4
  loc_5D1A9E: NewIfNullPr Global
  loc_5D1AA1: Global.Unload from_stack_1
  loc_5D1AA6: FFree1Ad var_88
  loc_5D1AA9: ExitProcHresult
End Sub

Public Function nSurtidorGet() '412CFC
  nSurtidorGet = nSurtidor
End Function

Public Sub nSurtidorPut(Value) '412D0B
  nSurtidor = Value
End Sub

Private Function Proc_42_5_5DEAD8(arg_C) '5DEAD8
  'Data Table: 41279C
  loc_5DEA88: ZeroRetVal
  loc_5DEA8A: ILdI2 arg_C
  loc_5DEA8D: FStI2 var_8A
  loc_5DEA90: FLdI2 var_8A
  loc_5DEA93: LitI2_Byte 0
  loc_5DEA95: EqI2
  loc_5DEA96: BranchF loc_5DEAA2
  loc_5DEA99: LitStr "UVE/INTERROGADOR"
  loc_5DEA9C: FStStrCopy var_88
  loc_5DEA9F: Branch loc_5DEACF
  loc_5DEAA2: FLdI2 var_8A
  loc_5DEAA5: LitI2_Byte 1
  loc_5DEAA7: EqI2
  loc_5DEAA8: BranchF loc_5DEAB4
  loc_5DEAAB: LitStr "MASTER"
  loc_5DEAAE: FStStrCopy var_88
  loc_5DEAB1: Branch loc_5DEACF
  loc_5DEAB4: FLdI2 var_8A
  loc_5DEAB7: LitI2_Byte 2
  loc_5DEAB9: EqI2
  loc_5DEABA: BranchF loc_5DEAC6
  loc_5DEABD: LitStr "MINIMASTER"
  loc_5DEAC0: FStStrCopy var_88
  loc_5DEAC3: Branch loc_5DEACF
  loc_5DEAC6: FLdPr Me
  loc_5DEAC9: MemLdStr global_128
  loc_5DEACC: FStStrCopy var_88
  loc_5DEACF: ExitProcCbHresult
End Function
