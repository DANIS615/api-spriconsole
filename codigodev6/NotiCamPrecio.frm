VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form NotiCamPrecio
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
  ClientLeft = 120
  ClientTop = 480
  ClientWidth = 11910
  ClientHeight = 8745
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 10440
    Top = 1800
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 8880
    Top = 7680
    Width = 2655
    Height = 855
    TabIndex = 14
    Default = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSFlexGridLib.MSFlexGrid gLista
    Left = 240
    Top = 4560
    Width = 11295
    Height = 2655
    TabIndex = 11
    OleObjectBlob = "NotiCamPrecio.frx":0000
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 1
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 0
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin VB.Label Label10
    Caption = "Por cualquier consulta llame a la mesa de ayuda."
    Left = 360
    Top = 8040
    Width = 5655
    Height = 255
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
  End
  Begin VB.Label Label9
    Caption = "! ! Recuerde ! !"
    Left = 360
    Top = 7680
    Width = 1815
    Height = 255
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
  End
  Begin VB.Label lNota
    Caption = "Por la presente le informamos que a partir de las HH:MM del dia AAAA/MM/DD se modificarán los precios de los siguientes productos:"
    Left = 240
    Top = 3720
    Width = 11295
    Height = 615
    TabIndex = 10
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10440
    Top = 1080
    Width = 1095
    Height = 375
    TabIndex = 9
    Alignment = 1 'Right Justify
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
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 240
    Top = 1200
    Width = 1815
    Height = 375
    TabIndex = 8
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
  Begin VB.Line Line1
    X1 = 240
    Y1 = 3480
    X2 = 11640
    Y2 = 3480
    BorderWidth = 3
  End
  Begin VB.Label lRazonSocial
    Caption = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    Left = 2280
    Top = 2400
    Width = 4455
    Height = 255
    TabIndex = 7
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
  Begin VB.Label lNroEstacion
    Caption = "99999"
    Left = 3600
    Top = 1920
    Width = 1455
    Height = 255
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
  Begin VB.Label Label4
    Caption = "At. Sr. Operador:"
    Left = 480
    Top = 3000
    Width = 2055
    Height = 255
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
  Begin VB.Label Label3
    Caption = "Razón Social:"
    Left = 480
    Top = 2400
    Width = 1695
    Height = 255
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
  Begin VB.Label Label2
    Caption = "Estación de Servicio Nro.:"
    Left = 480
    Top = 1920
    Width = 3015
    Height = 255
    TabIndex = 3
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
    Caption = "Notificación de Cambio de Precio"
    Left = 1800
    Top = 240
    Width = 7575
    Height = 735
    TabIndex = 2
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "NotiCamPrecio"

Public cadena As String


Private Sub cmdContinuar_Click() '5D1554
  'Data Table: 433740
  loc_5D153C: ILdRf Me
  loc_5D153F: FStAdNoPop
  loc_5D1543: ImpAdLdRf MemVar_7520D4
  loc_5D1546: NewIfNullPr Global
  loc_5D1549: Global.Unload from_stack_1
  loc_5D154E: FFree1Ad var_88
  loc_5D1551: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5FB6EC
  'Data Table: 433740
  loc_5FB638: FLdRfVar var_9C
  loc_5FB63B: ImpAdCallFPR4  = Date
  loc_5FB640: LitI4 1
  loc_5FB645: LitI4 1
  loc_5FB64A: LitVarStr var_AC, "dd/mm/yyyy"
  loc_5FB64F: FStVarCopyObj var_BC
  loc_5FB652: FLdRfVar var_BC
  loc_5FB655: FLdRfVar var_9C
  loc_5FB658: ImpAdCallI2 Format$(, )
  loc_5FB65D: FStStrNoPop var_C0
  loc_5FB660: FLdPrThis
  loc_5FB661: VCallAd Control_ID_lFecha
  loc_5FB664: FStAdFunc var_C4
  loc_5FB667: FLdPr var_C4
  loc_5FB66A: Me.Caption = from_stack_1
  loc_5FB66F: FFree1Str var_C0
  loc_5FB672: FFree1Ad var_C4
  loc_5FB675: FFreeVar var_9C = ""
  loc_5FB67C: FLdRfVar var_9C
  loc_5FB67F: ImpAdCallFPR4  = Time
  loc_5FB684: LitI4 1
  loc_5FB689: LitI4 1
  loc_5FB68E: LitVarStr var_AC, "hh:mm"
  loc_5FB693: FStVarCopyObj var_BC
  loc_5FB696: FLdRfVar var_BC
  loc_5FB699: FLdRfVar var_9C
  loc_5FB69C: ImpAdCallI2 Format$(, )
  loc_5FB6A1: FStStrNoPop var_C0
  loc_5FB6A4: FLdPrThis
  loc_5FB6A5: VCallAd Control_ID_lHora
  loc_5FB6A8: FStAdFunc var_C4
  loc_5FB6AB: FLdPr var_C4
  loc_5FB6AE: Me.Caption = from_stack_1
  loc_5FB6B3: FFree1Str var_C0
  loc_5FB6B6: FFree1Ad var_C4
  loc_5FB6B9: FFreeVar var_9C = ""
  loc_5FB6C0: FLdPrThis
  loc_5FB6C1: VCallAd Control_ID_Reloj
  loc_5FB6C4: FStAdFunc var_CC
  loc_5FB6C7: ILdRf Me
  loc_5FB6CA: CastAd
  loc_5FB6CD: FStAdFunc var_C8
  loc_5FB6D0: FLdRfVar var_C8
  loc_5FB6D3: FLdZeroAd var_CC
  loc_5FB6D6: FStAdFunc var_C4
  loc_5FB6D9: FLdRfVar var_C4
  loc_5FB6DC: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_5FB6E1: FFreeAd var_C4 = "": var_C8 = ""
  loc_5FB6EA: ExitProcHresult
End Sub

Private Sub Form_Load() '5F4F1C
  'Data Table: 433740
  loc_5F4E64: LitI2_Byte 0
  loc_5F4E66: CR8I2
  loc_5F4E67: PopFPR4
  loc_5F4E68: FLdPr Me
  loc_5F4E6B: Me.Top = from_stack_1s
  loc_5F4E70: LitI2_Byte 0
  loc_5F4E72: CR8I2
  loc_5F4E73: PopFPR4
  loc_5F4E74: FLdPr Me
  loc_5F4E77: Me.Left = from_stack_1s
  loc_5F4E7C: FLdRfVar var_90
  loc_5F4E7F: FLdRfVar var_8C
  loc_5F4E82: ImpAdLdRf MemVar_7520D4
  loc_5F4E85: NewIfNullPr Global
  loc_5F4E88:  = Global.Screen
  loc_5F4E8D: FLdPr var_8C
  loc_5F4E90:  = Screen.TwipsPerPixelY
  loc_5F4E95: FLdFPR4 var_90
  loc_5F4E98: LitI2 600
  loc_5F4E9B: CR8I2
  loc_5F4E9C: MulR8
  loc_5F4E9D: PopFPR4
  loc_5F4E9E: FLdPr Me
  loc_5F4EA1: Me.Height = from_stack_1s
  loc_5F4EA6: FFree1Ad var_8C
  loc_5F4EA9: FLdRfVar var_90
  loc_5F4EAC: FLdRfVar var_8C
  loc_5F4EAF: ImpAdLdRf MemVar_7520D4
  loc_5F4EB2: NewIfNullPr Global
  loc_5F4EB5:  = Global.Screen
  loc_5F4EBA: FLdPr var_8C
  loc_5F4EBD:  = Screen.TwipsPerPixelX
  loc_5F4EC2: FLdFPR4 var_90
  loc_5F4EC5: LitI2 800
  loc_5F4EC8: CR8I2
  loc_5F4EC9: MulR8
  loc_5F4ECA: PopFPR4
  loc_5F4ECB: FLdPr Me
  loc_5F4ECE: Me.Width = from_stack_1s
  loc_5F4ED3: FFree1Ad var_8C
  loc_5F4ED6: ImpAdLdI2 MemVar_74BEA6
  loc_5F4ED9: BranchF loc_5F4EDF
  loc_5F4EDC: Branch loc_5F4F19
  loc_5F4EDF: LitI2_Byte 1
  loc_5F4EE1: CUI1I2
  loc_5F4EE3: FLdRfVar var_86
  loc_5F4EE6: LitI2_Byte 5
  loc_5F4EE8: CUI1I2
  loc_5F4EEA: ForUI1 var_94
  loc_5F4EF0: LitI4 &H64
  loc_5F4EF5: LitI4 &H1F4
  loc_5F4EFA: ImpAdCallFPR4 ()
  loc_5F4EFF: SetLastSystemError
  loc_5F4F00: LitI4 &H96
  loc_5F4F05: LitI4 &H190
  loc_5F4F0A: ImpAdCallFPR4 ()
  loc_5F4F0F: SetLastSystemError
  loc_5F4F10: FLdRfVar var_86
  loc_5F4F13: NextUI1
  loc_5F4F19: ExitProcHresult
  loc_5F4F1A: ILdRf var_37D8
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D429C
  'Data Table: 433740
  loc_5D427C: LitI2_Byte 0
  loc_5D427E: FLdPr Me
  loc_5D4281: MemStI2 global_64
  loc_5D4284: LitI2_Byte 0
  loc_5D4286: FLdPrThis
  loc_5D4287: VCallAd Control_ID_Reloj
  loc_5D428A: FStAdFunc var_88
  loc_5D428D: FLdPr var_88
  loc_5D4290: Me.Enabled = from_stack_1b
  loc_5D4295: FFree1Ad var_88
  loc_5D4298: ExitProcHresult
  loc_5D4299: EqI2
  loc_5D429A: FFree1Str var_37FE
End Sub

Private Sub Form_Activate() '6F8F1C
  'Data Table: 433740
  loc_6F8000: FLdRfVar var_1D8
  loc_6F8003: LitVar_Missing var_1D4
  loc_6F8006: LitVar_Missing var_1B4
  loc_6F8009: LitVar_Missing var_194
  loc_6F800C: LitVar_Missing var_174
  loc_6F800F: LitVar_Missing var_154
  loc_6F8012: LitVar_Missing var_134
  loc_6F8015: LitVar_Missing var_114
  loc_6F8018: LitVar_Missing var_F4
  loc_6F801B: LitVar_Missing var_D4
  loc_6F801E: LitVar_Missing var_B4
  loc_6F8021: LitStr "Notificación de Cambio de Precio"
  loc_6F8024: FStStrCopy var_94
  loc_6F8027: FLdRfVar var_94
  loc_6F802A: LitI4 1
  loc_6F802F: PopTmpLdAdStr var_90
  loc_6F8032: LitI2_Byte 5
  loc_6F8034: PopTmpLdAd2 var_8C
  loc_6F8037: ImpAdLdRf MemVar_74C7D0
  loc_6F803A: NewIfNullPr clsMsg
  loc_6F803D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8042: ILdRf var_1D8
  loc_6F8045: FLdPr Me
  loc_6F8048: MemStStrCopy
  loc_6F804C: FFreeStr var_94 = ""
  loc_6F8053: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F806A: FLdRfVar var_1D8
  loc_6F806D: LitVar_Missing var_1D4
  loc_6F8070: LitVar_Missing var_1B4
  loc_6F8073: LitVar_Missing var_194
  loc_6F8076: LitVar_Missing var_174
  loc_6F8079: LitVar_Missing var_154
  loc_6F807C: LitVar_Missing var_134
  loc_6F807F: LitVar_Missing var_114
  loc_6F8082: LitVar_Missing var_F4
  loc_6F8085: LitVar_Missing var_D4
  loc_6F8088: LitVar_Missing var_B4
  loc_6F808B: LitStr "Estación de Servicio Nro.:"
  loc_6F808E: FStStrCopy var_94
  loc_6F8091: FLdRfVar var_94
  loc_6F8094: LitI4 2
  loc_6F8099: PopTmpLdAdStr var_90
  loc_6F809C: LitI2_Byte 5
  loc_6F809E: PopTmpLdAd2 var_8C
  loc_6F80A1: ImpAdLdRf MemVar_74C7D0
  loc_6F80A4: NewIfNullPr clsMsg
  loc_6F80A7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F80AC: ILdRf var_1D8
  loc_6F80AF: FLdPr Me
  loc_6F80B2: MemStStrCopy
  loc_6F80B6: FFreeStr var_94 = ""
  loc_6F80BD: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F80D4: FLdRfVar var_1D8
  loc_6F80D7: LitVar_Missing var_1D4
  loc_6F80DA: LitVar_Missing var_1B4
  loc_6F80DD: LitVar_Missing var_194
  loc_6F80E0: LitVar_Missing var_174
  loc_6F80E3: LitVar_Missing var_154
  loc_6F80E6: LitVar_Missing var_134
  loc_6F80E9: LitVar_Missing var_114
  loc_6F80EC: LitVar_Missing var_F4
  loc_6F80EF: LitVar_Missing var_D4
  loc_6F80F2: LitVar_Missing var_B4
  loc_6F80F5: LitStr "Razón Social"
  loc_6F80F8: FStStrCopy var_94
  loc_6F80FB: FLdRfVar var_94
  loc_6F80FE: LitI4 3
  loc_6F8103: PopTmpLdAdStr var_90
  loc_6F8106: LitI2_Byte 5
  loc_6F8108: PopTmpLdAd2 var_8C
  loc_6F810B: ImpAdLdRf MemVar_74C7D0
  loc_6F810E: NewIfNullPr clsMsg
  loc_6F8111: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8116: ILdRf var_1D8
  loc_6F8119: FLdPr Me
  loc_6F811C: MemStStrCopy
  loc_6F8120: FFreeStr var_94 = ""
  loc_6F8127: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F813E: FLdRfVar var_1D8
  loc_6F8141: LitVar_Missing var_1D4
  loc_6F8144: LitVar_Missing var_1B4
  loc_6F8147: LitVar_Missing var_194
  loc_6F814A: LitVar_Missing var_174
  loc_6F814D: LitVar_Missing var_154
  loc_6F8150: LitVar_Missing var_134
  loc_6F8153: LitVar_Missing var_114
  loc_6F8156: LitVar_Missing var_F4
  loc_6F8159: LitVar_Missing var_D4
  loc_6F815C: LitVar_Missing var_B4
  loc_6F815F: LitStr "At.Sr.Operador"
  loc_6F8162: FStStrCopy var_94
  loc_6F8165: FLdRfVar var_94
  loc_6F8168: LitI4 4
  loc_6F816D: PopTmpLdAdStr var_90
  loc_6F8170: LitI2_Byte 5
  loc_6F8172: PopTmpLdAd2 var_8C
  loc_6F8175: ImpAdLdRf MemVar_74C7D0
  loc_6F8178: NewIfNullPr clsMsg
  loc_6F817B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8180: ILdRf var_1D8
  loc_6F8183: FLdPr Me
  loc_6F8186: MemStStrCopy
  loc_6F818A: FFreeStr var_94 = ""
  loc_6F8191: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F81A8: FLdRfVar var_1D8
  loc_6F81AB: LitVar_Missing var_1D4
  loc_6F81AE: LitVar_Missing var_1B4
  loc_6F81B1: LitVar_Missing var_194
  loc_6F81B4: LitVar_Missing var_174
  loc_6F81B7: LitVar_Missing var_154
  loc_6F81BA: LitVar_Missing var_134
  loc_6F81BD: LitVar_Missing var_114
  loc_6F81C0: LitVar_Missing var_F4
  loc_6F81C3: LitVar_Missing var_D4
  loc_6F81C6: LitVar_Missing var_B4
  loc_6F81C9: LitStr "Por la presente le informamos que a partir de las "
  loc_6F81CC: FStStrCopy var_94
  loc_6F81CF: FLdRfVar var_94
  loc_6F81D2: LitI4 5
  loc_6F81D7: PopTmpLdAdStr var_90
  loc_6F81DA: LitI2_Byte 5
  loc_6F81DC: PopTmpLdAd2 var_8C
  loc_6F81DF: ImpAdLdRf MemVar_74C7D0
  loc_6F81E2: NewIfNullPr clsMsg
  loc_6F81E5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F81EA: ILdRf var_1D8
  loc_6F81ED: FLdPr Me
  loc_6F81F0: MemStStrCopy
  loc_6F81F4: FFreeStr var_94 = ""
  loc_6F81FB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8212: FLdRfVar var_1D8
  loc_6F8215: LitVar_Missing var_1D4
  loc_6F8218: LitVar_Missing var_1B4
  loc_6F821B: LitVar_Missing var_194
  loc_6F821E: LitVar_Missing var_174
  loc_6F8221: LitVar_Missing var_154
  loc_6F8224: LitVar_Missing var_134
  loc_6F8227: LitVar_Missing var_114
  loc_6F822A: LitVar_Missing var_F4
  loc_6F822D: LitVar_Missing var_D4
  loc_6F8230: LitVar_Missing var_B4
  loc_6F8233: LitStr " del día "
  loc_6F8236: FStStrCopy var_94
  loc_6F8239: FLdRfVar var_94
  loc_6F823C: LitI4 6
  loc_6F8241: PopTmpLdAdStr var_90
  loc_6F8244: LitI2_Byte 5
  loc_6F8246: PopTmpLdAd2 var_8C
  loc_6F8249: ImpAdLdRf MemVar_74C7D0
  loc_6F824C: NewIfNullPr clsMsg
  loc_6F824F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8254: ILdRf var_1D8
  loc_6F8257: FLdPr Me
  loc_6F825A: MemStStrCopy
  loc_6F825E: FFreeStr var_94 = ""
  loc_6F8265: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F827C: FLdRfVar var_1D8
  loc_6F827F: LitVar_Missing var_1D4
  loc_6F8282: LitVar_Missing var_1B4
  loc_6F8285: LitVar_Missing var_194
  loc_6F8288: LitVar_Missing var_174
  loc_6F828B: LitVar_Missing var_154
  loc_6F828E: LitVar_Missing var_134
  loc_6F8291: LitVar_Missing var_114
  loc_6F8294: LitVar_Missing var_F4
  loc_6F8297: LitVar_Missing var_D4
  loc_6F829A: LitVar_Missing var_B4
  loc_6F829D: LitStr " se modificarán los precios de los siguientes productos:"
  loc_6F82A0: FStStrCopy var_94
  loc_6F82A3: FLdRfVar var_94
  loc_6F82A6: LitI4 7
  loc_6F82AB: PopTmpLdAdStr var_90
  loc_6F82AE: LitI2_Byte 5
  loc_6F82B0: PopTmpLdAd2 var_8C
  loc_6F82B3: ImpAdLdRf MemVar_74C7D0
  loc_6F82B6: NewIfNullPr clsMsg
  loc_6F82B9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F82BE: ILdRf var_1D8
  loc_6F82C1: FLdPr Me
  loc_6F82C4: MemStStrCopy
  loc_6F82C8: FFreeStr var_94 = ""
  loc_6F82CF: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F82E6: FLdRfVar var_1D8
  loc_6F82E9: LitVar_Missing var_1D4
  loc_6F82EC: LitVar_Missing var_1B4
  loc_6F82EF: LitVar_Missing var_194
  loc_6F82F2: LitVar_Missing var_174
  loc_6F82F5: LitVar_Missing var_154
  loc_6F82F8: LitVar_Missing var_134
  loc_6F82FB: LitVar_Missing var_114
  loc_6F82FE: LitVar_Missing var_F4
  loc_6F8301: LitVar_Missing var_D4
  loc_6F8304: LitVar_Missing var_B4
  loc_6F8307: LitStr "!!Recuerde!!"
  loc_6F830A: FStStrCopy var_94
  loc_6F830D: FLdRfVar var_94
  loc_6F8310: LitI4 8
  loc_6F8315: PopTmpLdAdStr var_90
  loc_6F8318: LitI2_Byte 5
  loc_6F831A: PopTmpLdAd2 var_8C
  loc_6F831D: ImpAdLdRf MemVar_74C7D0
  loc_6F8320: NewIfNullPr clsMsg
  loc_6F8323: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8328: ILdRf var_1D8
  loc_6F832B: FLdPr Me
  loc_6F832E: MemStStrCopy
  loc_6F8332: FFreeStr var_94 = ""
  loc_6F8339: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8350: FLdRfVar var_1D8
  loc_6F8353: LitVar_Missing var_1D4
  loc_6F8356: LitVar_Missing var_1B4
  loc_6F8359: LitVar_Missing var_194
  loc_6F835C: LitVar_Missing var_174
  loc_6F835F: LitVar_Missing var_154
  loc_6F8362: LitVar_Missing var_134
  loc_6F8365: LitVar_Missing var_114
  loc_6F8368: LitVar_Missing var_F4
  loc_6F836B: LitVar_Missing var_D4
  loc_6F836E: LitVar_Missing var_B4
  loc_6F8371: LitStr "Por cualquier consulta llame a la mesa de ayuda."
  loc_6F8374: FStStrCopy var_94
  loc_6F8377: FLdRfVar var_94
  loc_6F837A: LitI4 9
  loc_6F837F: PopTmpLdAdStr var_90
  loc_6F8382: LitI2_Byte 5
  loc_6F8384: PopTmpLdAd2 var_8C
  loc_6F8387: ImpAdLdRf MemVar_74C7D0
  loc_6F838A: NewIfNullPr clsMsg
  loc_6F838D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8392: ILdRf var_1D8
  loc_6F8395: FLdPr Me
  loc_6F8398: MemStStrCopy
  loc_6F839C: FFreeStr var_94 = ""
  loc_6F83A3: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F83BA: FLdPr Me
  loc_6F83BD: MemLdStr global_68
  loc_6F83C0: FLdPrThis
  loc_6F83C1: VCallAd Control_ID_Label1
  loc_6F83C4: FStAdFunc var_1DC
  loc_6F83C7: FLdPr var_1DC
  loc_6F83CA: Me.Caption = from_stack_1
  loc_6F83CF: FFree1Ad var_1DC
  loc_6F83D2: FLdPr Me
  loc_6F83D5: MemLdStr global_72
  loc_6F83D8: FLdPrThis
  loc_6F83D9: VCallAd Control_ID_Label2
  loc_6F83DC: FStAdFunc var_1DC
  loc_6F83DF: FLdPr var_1DC
  loc_6F83E2: Me.Caption = from_stack_1
  loc_6F83E7: FFree1Ad var_1DC
  loc_6F83EA: FLdPr Me
  loc_6F83ED: MemLdStr global_76
  loc_6F83F0: FLdPrThis
  loc_6F83F1: VCallAd Control_ID_Label3
  loc_6F83F4: FStAdFunc var_1DC
  loc_6F83F7: FLdPr var_1DC
  loc_6F83FA: Me.Caption = from_stack_1
  loc_6F83FF: FFree1Ad var_1DC
  loc_6F8402: FLdPr Me
  loc_6F8405: MemLdStr global_80
  loc_6F8408: FLdPrThis
  loc_6F8409: VCallAd Control_ID_Label4
  loc_6F840C: FStAdFunc var_1DC
  loc_6F840F: FLdPr var_1DC
  loc_6F8412: Me.Caption = from_stack_1
  loc_6F8417: FFree1Ad var_1DC
  loc_6F841A: FLdPr Me
  loc_6F841D: MemLdStr global_96
  loc_6F8420: FLdPrThis
  loc_6F8421: VCallAd Control_ID_Label9
  loc_6F8424: FStAdFunc var_1DC
  loc_6F8427: FLdPr var_1DC
  loc_6F842A: Me.Caption = from_stack_1
  loc_6F842F: FFree1Ad var_1DC
  loc_6F8432: FLdPr Me
  loc_6F8435: MemLdStr global_100
  loc_6F8438: FLdPrThis
  loc_6F8439: VCallAd Control_ID_Label10
  loc_6F843C: FStAdFunc var_1DC
  loc_6F843F: FLdPr var_1DC
  loc_6F8442: Me.Caption = from_stack_1
  loc_6F8447: FFree1Ad var_1DC
  loc_6F844A: FLdRfVar var_1D8
  loc_6F844D: LitVar_Missing var_1D4
  loc_6F8450: LitVar_Missing var_1B4
  loc_6F8453: LitVar_Missing var_194
  loc_6F8456: LitVar_Missing var_174
  loc_6F8459: LitVar_Missing var_154
  loc_6F845C: LitVar_Missing var_134
  loc_6F845F: LitVar_Missing var_114
  loc_6F8462: LitVar_Missing var_F4
  loc_6F8465: LitVar_Missing var_D4
  loc_6F8468: LitVar_Missing var_B4
  loc_6F846B: LitStr "&Continuar"
  loc_6F846E: FStStrCopy var_94
  loc_6F8471: FLdRfVar var_94
  loc_6F8474: LitI4 &HA
  loc_6F8479: PopTmpLdAdStr var_90
  loc_6F847C: LitI2_Byte 5
  loc_6F847E: PopTmpLdAd2 var_8C
  loc_6F8481: ImpAdLdRf MemVar_74C7D0
  loc_6F8484: NewIfNullPr clsMsg
  loc_6F8487: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F848C: ILdRf var_1D8
  loc_6F848F: FLdPrThis
  loc_6F8490: VCallAd Control_ID_cmdContinuar
  loc_6F8493: FStAdFunc var_1DC
  loc_6F8496: FLdPr var_1DC
  loc_6F8499: Me.Caption = from_stack_1
  loc_6F849E: FFreeStr var_94 = ""
  loc_6F84A5: FFree1Ad var_1DC
  loc_6F84A8: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F84BF: FLdRfVar var_1D8
  loc_6F84C2: LitVar_Missing var_1D4
  loc_6F84C5: LitVar_Missing var_1B4
  loc_6F84C8: LitVar_Missing var_194
  loc_6F84CB: LitVar_Missing var_174
  loc_6F84CE: LitVar_Missing var_154
  loc_6F84D1: LitVar_Missing var_134
  loc_6F84D4: LitVar_Missing var_114
  loc_6F84D7: LitVar_Missing var_F4
  loc_6F84DA: LitVar_Missing var_D4
  loc_6F84DD: LitVar_Missing var_B4
  loc_6F84E0: LitStr "Nivel"
  loc_6F84E3: FStStrCopy var_94
  loc_6F84E6: FLdRfVar var_94
  loc_6F84E9: LitI4 &HB
  loc_6F84EE: PopTmpLdAdStr var_90
  loc_6F84F1: LitI2_Byte 5
  loc_6F84F3: PopTmpLdAd2 var_8C
  loc_6F84F6: ImpAdLdRf MemVar_74C7D0
  loc_6F84F9: NewIfNullPr clsMsg
  loc_6F84FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8501: ILdRf var_1D8
  loc_6F8504: FLdPr Me
  loc_6F8507: MemStStrCopy
  loc_6F850B: FFreeStr var_94 = ""
  loc_6F8512: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8529: FLdRfVar var_1D8
  loc_6F852C: LitVar_Missing var_1D4
  loc_6F852F: LitVar_Missing var_1B4
  loc_6F8532: LitVar_Missing var_194
  loc_6F8535: LitVar_Missing var_174
  loc_6F8538: LitVar_Missing var_154
  loc_6F853B: LitVar_Missing var_134
  loc_6F853E: LitVar_Missing var_114
  loc_6F8541: LitVar_Missing var_F4
  loc_6F8544: LitVar_Missing var_D4
  loc_6F8547: LitVar_Missing var_B4
  loc_6F854A: LitStr "Cód Prod"
  loc_6F854D: FStStrCopy var_94
  loc_6F8550: FLdRfVar var_94
  loc_6F8553: LitI4 &HC
  loc_6F8558: PopTmpLdAdStr var_90
  loc_6F855B: LitI2_Byte 5
  loc_6F855D: PopTmpLdAd2 var_8C
  loc_6F8560: ImpAdLdRf MemVar_74C7D0
  loc_6F8563: NewIfNullPr clsMsg
  loc_6F8566: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F856B: ILdRf var_1D8
  loc_6F856E: FLdPr Me
  loc_6F8571: MemStStrCopy
  loc_6F8575: FFreeStr var_94 = ""
  loc_6F857C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8593: FLdRfVar var_1D8
  loc_6F8596: LitVar_Missing var_1D4
  loc_6F8599: LitVar_Missing var_1B4
  loc_6F859C: LitVar_Missing var_194
  loc_6F859F: LitVar_Missing var_174
  loc_6F85A2: LitVar_Missing var_154
  loc_6F85A5: LitVar_Missing var_134
  loc_6F85A8: LitVar_Missing var_114
  loc_6F85AB: LitVar_Missing var_F4
  loc_6F85AE: LitVar_Missing var_D4
  loc_6F85B1: LitVar_Missing var_B4
  loc_6F85B4: LitStr "Descripción"
  loc_6F85B7: FStStrCopy var_94
  loc_6F85BA: FLdRfVar var_94
  loc_6F85BD: LitI4 &HD
  loc_6F85C2: PopTmpLdAdStr var_90
  loc_6F85C5: LitI2_Byte 5
  loc_6F85C7: PopTmpLdAd2 var_8C
  loc_6F85CA: ImpAdLdRf MemVar_74C7D0
  loc_6F85CD: NewIfNullPr clsMsg
  loc_6F85D0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F85D5: ILdRf var_1D8
  loc_6F85D8: FLdPr Me
  loc_6F85DB: MemStStrCopy
  loc_6F85DF: FFreeStr var_94 = ""
  loc_6F85E6: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F85FD: FLdRfVar var_1D8
  loc_6F8600: LitVar_Missing var_1D4
  loc_6F8603: LitVar_Missing var_1B4
  loc_6F8606: LitVar_Missing var_194
  loc_6F8609: LitVar_Missing var_174
  loc_6F860C: LitVar_Missing var_154
  loc_6F860F: LitVar_Missing var_134
  loc_6F8612: LitVar_Missing var_114
  loc_6F8615: LitVar_Missing var_F4
  loc_6F8618: LitVar_Missing var_D4
  loc_6F861B: LitVar_Missing var_B4
  loc_6F861E: LitStr "Precio"
  loc_6F8621: FStStrCopy var_94
  loc_6F8624: FLdRfVar var_94
  loc_6F8627: LitI4 &HE
  loc_6F862C: PopTmpLdAdStr var_90
  loc_6F862F: LitI2_Byte 5
  loc_6F8631: PopTmpLdAd2 var_8C
  loc_6F8634: ImpAdLdRf MemVar_74C7D0
  loc_6F8637: NewIfNullPr clsMsg
  loc_6F863A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F863F: FLdZeroAd var_1D8
  loc_6F8642: ImpAdStStr MemVar_74C5C0
  loc_6F8646: FFree1Str var_94
  loc_6F8649: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8660: FLdRfVar var_1D8
  loc_6F8663: LitVar_Missing var_1D4
  loc_6F8666: LitVar_Missing var_1B4
  loc_6F8669: LitVar_Missing var_194
  loc_6F866C: LitVar_Missing var_174
  loc_6F866F: LitVar_Missing var_154
  loc_6F8672: LitVar_Missing var_134
  loc_6F8675: LitVar_Missing var_114
  loc_6F8678: LitVar_Missing var_F4
  loc_6F867B: LitVar_Missing var_D4
  loc_6F867E: LitVar_Missing var_B4
  loc_6F8681: LitStr "Nivel|Código de Producto|Descripción|Precio"
  loc_6F8684: FStStrCopy var_94
  loc_6F8687: FLdRfVar var_94
  loc_6F868A: LitI4 &HF
  loc_6F868F: PopTmpLdAdStr var_90
  loc_6F8692: LitI2_Byte 5
  loc_6F8694: PopTmpLdAd2 var_8C
  loc_6F8697: ImpAdLdRf MemVar_74C7D0
  loc_6F869A: NewIfNullPr clsMsg
  loc_6F869D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F86A2: ILdRf var_1D8
  loc_6F86A5: FLdPr Me
  loc_6F86A8: MemStStrCopy
  loc_6F86AC: FFreeStr var_94 = ""
  loc_6F86B3: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F86CA: FLdRfVar var_1D8
  loc_6F86CD: LitVar_Missing var_1D4
  loc_6F86D0: LitVar_Missing var_1B4
  loc_6F86D3: LitVar_Missing var_194
  loc_6F86D6: LitVar_Missing var_174
  loc_6F86D9: LitVar_Missing var_154
  loc_6F86DC: LitVar_Missing var_134
  loc_6F86DF: LitVar_Missing var_114
  loc_6F86E2: LitVar_Missing var_F4
  loc_6F86E5: LitVar_Missing var_D4
  loc_6F86E8: LitVar_Missing var_B4
  loc_6F86EB: LitStr "Chequee que la impresora tenga papel y este en Ready."
  loc_6F86EE: FStStrCopy var_94
  loc_6F86F1: FLdRfVar var_94
  loc_6F86F4: LitI4 &H10
  loc_6F86F9: PopTmpLdAdStr var_90
  loc_6F86FC: LitI2_Byte 5
  loc_6F86FE: PopTmpLdAd2 var_8C
  loc_6F8701: ImpAdLdRf MemVar_74C7D0
  loc_6F8704: NewIfNullPr clsMsg
  loc_6F8707: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F870C: ILdRf var_1D8
  loc_6F870F: FLdPr Me
  loc_6F8712: MemStStrCopy
  loc_6F8716: FFreeStr var_94 = ""
  loc_6F871D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8734: FLdRfVar var_1D8
  loc_6F8737: LitVar_Missing var_1D4
  loc_6F873A: LitVar_Missing var_1B4
  loc_6F873D: LitVar_Missing var_194
  loc_6F8740: LitVar_Missing var_174
  loc_6F8743: LitVar_Missing var_154
  loc_6F8746: LitVar_Missing var_134
  loc_6F8749: LitVar_Missing var_114
  loc_6F874C: LitVar_Missing var_F4
  loc_6F874F: LitVar_Missing var_D4
  loc_6F8752: LitVar_Missing var_B4
  loc_6F8755: LitStr "Error Número: "
  loc_6F8758: FStStrCopy var_94
  loc_6F875B: FLdRfVar var_94
  loc_6F875E: LitI4 &H11
  loc_6F8763: PopTmpLdAdStr var_90
  loc_6F8766: LitI2_Byte 5
  loc_6F8768: PopTmpLdAd2 var_8C
  loc_6F876B: ImpAdLdRf MemVar_74C7D0
  loc_6F876E: NewIfNullPr clsMsg
  loc_6F8771: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F8776: ILdRf var_1D8
  loc_6F8779: FLdPr Me
  loc_6F877C: MemStStrCopy
  loc_6F8780: FFreeStr var_94 = ""
  loc_6F8787: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F879E: FLdRfVar var_1D8
  loc_6F87A1: LitVar_Missing var_1D4
  loc_6F87A4: LitVar_Missing var_1B4
  loc_6F87A7: LitVar_Missing var_194
  loc_6F87AA: LitVar_Missing var_174
  loc_6F87AD: LitVar_Missing var_154
  loc_6F87B0: LitVar_Missing var_134
  loc_6F87B3: LitVar_Missing var_114
  loc_6F87B6: LitVar_Missing var_F4
  loc_6F87B9: LitVar_Missing var_D4
  loc_6F87BC: LitVar_Missing var_B4
  loc_6F87BF: LitStr "Error en la impresora"
  loc_6F87C2: FStStrCopy var_94
  loc_6F87C5: FLdRfVar var_94
  loc_6F87C8: LitI4 &H12
  loc_6F87CD: PopTmpLdAdStr var_90
  loc_6F87D0: LitI2_Byte 5
  loc_6F87D2: PopTmpLdAd2 var_8C
  loc_6F87D5: ImpAdLdRf MemVar_74C7D0
  loc_6F87D8: NewIfNullPr clsMsg
  loc_6F87DB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F87E0: ILdRf var_1D8
  loc_6F87E3: FLdPr Me
  loc_6F87E6: MemStStrCopy
  loc_6F87EA: FFreeStr var_94 = ""
  loc_6F87F1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6F8808: FLdPr Me
  loc_6F880B: MemLdI2 global_64
  loc_6F880E: BranchF loc_6F8812
  loc_6F8811: ExitProcHresult
  loc_6F8812: LitI2_Byte &HFF
  loc_6F8814: FLdPr Me
  loc_6F8817: MemStI2 global_64
  loc_6F881A: LitI2_Byte 0
  loc_6F881C: PopTmpLdAd2 var_8C
  loc_6F881F: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_6F8824: LitI2_Byte &HFF
  loc_6F8826: FLdPrThis
  loc_6F8827: VCallAd Control_ID_Reloj
  loc_6F882A: FStAdFunc var_1DC
  loc_6F882D: FLdPr var_1DC
  loc_6F8830: Me.Enabled = from_stack_1b
  loc_6F8835: FFree1Ad var_1DC
  loc_6F8838: FLdPrThis
  loc_6F8839: VCallAd Control_ID_Picture1
  loc_6F883C: FStAdFunc var_1E4
  loc_6F883F: FLdRfVar var_94
  loc_6F8842: FLdRfVar var_1DC
  loc_6F8845: ImpAdLdRf MemVar_7520D4
  loc_6F8848: NewIfNullPr Global
  loc_6F884B:  = Global.App
  loc_6F8850: FLdPr var_1DC
  loc_6F8853:  = App.Path
  loc_6F8858: ILdRf var_94
  loc_6F885B: LitStr "\Logo_Compania.bmp"
  loc_6F885E: ConcatStr
  loc_6F885F: FStStrNoPop var_1D8
  loc_6F8862: FLdZeroAd var_1E4
  loc_6F8865: FStAdFunc var_1E0
  loc_6F8868: FLdRfVar var_1E0
  loc_6F886B: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6F8870: FFreeStr var_94 = ""
  loc_6F8877: FFreeAd var_1DC = "": var_1E0 = ""
  loc_6F8880: FLdPrThis
  loc_6F8881: VCallAd Control_ID_Picture2
  loc_6F8884: FStAdFunc var_1E4
  loc_6F8887: FLdRfVar var_94
  loc_6F888A: FLdRfVar var_1DC
  loc_6F888D: ImpAdLdRf MemVar_7520D4
  loc_6F8890: NewIfNullPr Global
  loc_6F8893:  = Global.App
  loc_6F8898: FLdPr var_1DC
  loc_6F889B:  = App.Path
  loc_6F88A0: ILdRf var_94
  loc_6F88A3: LitStr "\Logo_Proyecto.bmp"
  loc_6F88A6: ConcatStr
  loc_6F88A7: FStStrNoPop var_1D8
  loc_6F88AA: FLdZeroAd var_1E4
  loc_6F88AD: FStAdFunc var_1E0
  loc_6F88B0: FLdRfVar var_1E0
  loc_6F88B3: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6F88B8: FFreeStr var_94 = ""
  loc_6F88BF: FFreeAd var_1DC = "": var_1E0 = ""
  loc_6F88C8: FLdRfVar var_B4
  loc_6F88CB: ImpAdCallFPR4  = Date
  loc_6F88D0: LitI4 1
  loc_6F88D5: LitI4 1
  loc_6F88DA: LitVarStr var_A4, "dd/mm/yyyy"
  loc_6F88DF: FStVarCopyObj var_D4
  loc_6F88E2: FLdRfVar var_D4
  loc_6F88E5: FLdRfVar var_B4
  loc_6F88E8: ImpAdCallI2 Format$(, )
  loc_6F88ED: FStStrNoPop var_94
  loc_6F88F0: FLdPrThis
  loc_6F88F1: VCallAd Control_ID_lFecha
  loc_6F88F4: FStAdFunc var_1DC
  loc_6F88F7: FLdPr var_1DC
  loc_6F88FA: Me.Caption = from_stack_1
  loc_6F88FF: FFree1Str var_94
  loc_6F8902: FFree1Ad var_1DC
  loc_6F8905: FFreeVar var_B4 = ""
  loc_6F890C: FLdRfVar var_B4
  loc_6F890F: ImpAdCallFPR4  = Time
  loc_6F8914: LitI4 1
  loc_6F8919: LitI4 1
  loc_6F891E: LitVarStr var_A4, "hh:mm"
  loc_6F8923: FStVarCopyObj var_D4
  loc_6F8926: FLdRfVar var_D4
  loc_6F8929: FLdRfVar var_B4
  loc_6F892C: ImpAdCallI2 Format$(, )
  loc_6F8931: FStStrNoPop var_94
  loc_6F8934: FLdPrThis
  loc_6F8935: VCallAd Control_ID_lHora
  loc_6F8938: FStAdFunc var_1DC
  loc_6F893B: FLdPr var_1DC
  loc_6F893E: Me.Caption = from_stack_1
  loc_6F8943: FFree1Str var_94
  loc_6F8946: FFree1Ad var_1DC
  loc_6F8949: FFreeVar var_B4 = ""
  loc_6F8950: FLdRfVar var_8C
  loc_6F8953: FLdRfVar var_88
  loc_6F8956: FLdRfVar var_1DC
  loc_6F8959: ImpAdLdRf MemVar_74C760
  loc_6F895C: NewIfNullPr Formx
  loc_6F895F: from_stack_1v = Formx.global_4589716Get()
  loc_6F8964: FLdPr var_1DC
  loc_6F8967:  = Formx.Picture
  loc_6F896C: FLdI2 var_8C
  loc_6F896F: NotI4
  loc_6F8970: FFree1Ad var_1DC
  loc_6F8973: BranchF loc_6F89A2
  loc_6F8976: FLdRfVar var_B4
  loc_6F8979: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F897E: FLdRfVar var_B4
  loc_6F8981: CBoolVarNull
  loc_6F8983: FFree1Var var_B4 = ""
  loc_6F8986: BranchF loc_6F899F
  loc_6F8989: ILdRf Me
  loc_6F898C: FStAdNoPop
  loc_6F8990: ImpAdLdRf MemVar_7520D4
  loc_6F8993: NewIfNullPr Global
  loc_6F8996: Global.Unload from_stack_1
  loc_6F899B: FFree1Ad var_1DC
  loc_6F899E: ExitProcHresult
  loc_6F899F: Branch loc_6F8950
  loc_6F89A2: LitVarI2 var_B4, 6
  loc_6F89A7: LitI4 1
  loc_6F89AC: FLdRfVar var_88
  loc_6F89AF: CVarRef
  loc_6F89B4: FLdRfVar var_D4
  loc_6F89B7: ImpAdCallFPR4  = Mid(, , )
  loc_6F89BC: FLdRfVar var_D4
  loc_6F89BF: CStrVarVal var_94
  loc_6F89C3: ImpAdCallFPR4 push Val()
  loc_6F89C8: CStrR8
  loc_6F89CA: FStStrNoPop var_1D8
  loc_6F89CD: FLdPrThis
  loc_6F89CE: VCallAd Control_ID_lNroEstacion
  loc_6F89D1: FStAdFunc var_1DC
  loc_6F89D4: FLdPr var_1DC
  loc_6F89D7: Me.Caption = from_stack_1
  loc_6F89DC: FFreeStr var_94 = ""
  loc_6F89E3: FFree1Ad var_1DC
  loc_6F89E6: FFreeVar var_B4 = ""
  loc_6F89ED: LitVarI2 var_B4, 30
  loc_6F89F2: LitI4 7
  loc_6F89F7: FLdRfVar var_88
  loc_6F89FA: CVarRef
  loc_6F89FF: FLdRfVar var_D4
  loc_6F8A02: ImpAdCallFPR4  = Mid(, , )
  loc_6F8A07: FLdRfVar var_D4
  loc_6F8A0A: FLdRfVar var_F4
  loc_6F8A0D: ImpAdCallFPR4  = Trim()
  loc_6F8A12: FLdRfVar var_F4
  loc_6F8A15: CStrVarVal var_94
  loc_6F8A19: FLdPrThis
  loc_6F8A1A: VCallAd Control_ID_lRazonSocial
  loc_6F8A1D: FStAdFunc var_1DC
  loc_6F8A20: FLdPr var_1DC
  loc_6F8A23: Me.Caption = from_stack_1
  loc_6F8A28: FFree1Str var_94
  loc_6F8A2B: FFree1Ad var_1DC
  loc_6F8A2E: FFreeVar var_B4 = "": var_D4 = ""
  loc_6F8A37: LitVarI2 var_B4, 2
  loc_6F8A3C: LitI4 7
  loc_6F8A41: FLdPr Me
  loc_6F8A44: MemLdStr cadena
  loc_6F8A47: ImpAdCallI2 Mid$(, , )
  loc_6F8A4C: FStStrNoPop var_94
  loc_6F8A4F: LitStr "/"
  loc_6F8A52: ConcatStr
  loc_6F8A53: FStStrNoPop var_1D8
  loc_6F8A56: LitVarI2 var_D4, 2
  loc_6F8A5B: LitI4 5
  loc_6F8A60: FLdPr Me
  loc_6F8A63: MemLdStr cadena
  loc_6F8A66: ImpAdCallI2 Mid$(, , )
  loc_6F8A6B: FStStrNoPop var_1E8
  loc_6F8A6E: ConcatStr
  loc_6F8A6F: FStStrNoPop var_1EC
  loc_6F8A72: LitStr "/"
  loc_6F8A75: ConcatStr
  loc_6F8A76: FStStrNoPop var_1F0
  loc_6F8A79: LitVarI2 var_F4, 4
  loc_6F8A7E: LitI4 1
  loc_6F8A83: FLdPr Me
  loc_6F8A86: MemLdStr cadena
  loc_6F8A89: ImpAdCallI2 Mid$(, , )
  loc_6F8A8E: FStStrNoPop var_1F4
  loc_6F8A91: ConcatStr
  loc_6F8A92: FStStrNoPop var_1F8
  loc_6F8A95: FLdPr Me
  loc_6F8A98: MemStStrCopy
  loc_6F8A9C: FFreeStr var_94 = "": var_1D8 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = ""
  loc_6F8AAD: FFreeVar var_B4 = "": var_D4 = ""
  loc_6F8AB6: LitVarI2 var_B4, 2
  loc_6F8ABB: LitI4 9
  loc_6F8AC0: FLdPr Me
  loc_6F8AC3: MemLdStr cadena
  loc_6F8AC6: ImpAdCallI2 Mid$(, , )
  loc_6F8ACB: FStStrNoPop var_94
  loc_6F8ACE: LitStr ":"
  loc_6F8AD1: ConcatStr
  loc_6F8AD2: FStStrNoPop var_1D8
  loc_6F8AD5: LitVarI2 var_D4, 2
  loc_6F8ADA: LitI4 &HB
  loc_6F8ADF: FLdPr Me
  loc_6F8AE2: MemLdStr cadena
  loc_6F8AE5: ImpAdCallI2 Mid$(, , )
  loc_6F8AEA: FStStrNoPop var_1E8
  loc_6F8AED: ConcatStr
  loc_6F8AEE: FStStrNoPop var_1EC
  loc_6F8AF1: FLdPr Me
  loc_6F8AF4: MemStStrCopy
  loc_6F8AF8: FFreeStr var_94 = "": var_1D8 = "": var_1E8 = ""
  loc_6F8B03: FFreeVar var_B4 = ""
  loc_6F8B0A: FLdPr Me
  loc_6F8B0D: MemLdStr global_84
  loc_6F8B10: FLdPr Me
  loc_6F8B13: MemLdStr global_56
  loc_6F8B16: ConcatStr
  loc_6F8B17: FStStrNoPop var_94
  loc_6F8B1A: FLdPr Me
  loc_6F8B1D: MemLdStr global_88
  loc_6F8B20: ConcatStr
  loc_6F8B21: FStStrNoPop var_1D8
  loc_6F8B24: FLdPr Me
  loc_6F8B27: MemLdStr global_60
  loc_6F8B2A: ConcatStr
  loc_6F8B2B: FStStrNoPop var_1E8
  loc_6F8B2E: FLdPr Me
  loc_6F8B31: MemLdStr global_92
  loc_6F8B34: ConcatStr
  loc_6F8B35: FStStrNoPop var_1EC
  loc_6F8B38: FLdPrThis
  loc_6F8B39: VCallAd Control_ID_lNota
  loc_6F8B3C: FStAdFunc var_1DC
  loc_6F8B3F: FLdPr var_1DC
  loc_6F8B42: Me.Caption = from_stack_1
  loc_6F8B47: FFreeStr var_94 = "": var_1D8 = "": var_1E8 = ""
  loc_6F8B52: FFree1Ad var_1DC
  loc_6F8B55: LitI2_Byte &HD
  loc_6F8B57: FStI2 var_8A
  loc_6F8B5A: FLdPrThis
  loc_6F8B5B: VCallAd Control_ID_gLista
  loc_6F8B5E: FStAdFunc var_1DC
  loc_6F8B61: FLdPr var_1DC
  loc_6F8B64: LateIdCall
  loc_6F8B6C: FFree1Ad var_1DC
  loc_6F8B6F: LitVarStr var_A4, "Arial"
  loc_6F8B74: PopAdLdVar
  loc_6F8B75: FLdPrThis
  loc_6F8B76: VCallAd Control_ID_gLista
  loc_6F8B79: FStAdFunc var_1DC
  loc_6F8B7C: FLdPr var_1DC
  loc_6F8B7F: LateIdLdVar var_B4 DispID_-512 -1
  loc_6F8B86: CastAdVar Me
  loc_6F8B8A: FStAdFunc var_1E0
  loc_6F8B8D: FLdPr var_1E0
  loc_6F8B90: LateIdSt
  loc_6F8B95: FFreeAd var_1DC = ""
  loc_6F8B9C: FFree1Var var_B4 = ""
  loc_6F8B9F: LitVarI2 var_A4, 14
  loc_6F8BA4: PopAdLdVar
  loc_6F8BA5: FLdPrThis
  loc_6F8BA6: VCallAd Control_ID_gLista
  loc_6F8BA9: FStAdFunc var_1DC
  loc_6F8BAC: FLdPr var_1DC
  loc_6F8BAF: LateIdLdVar var_B4 DispID_-512 -1
  loc_6F8BB6: CastAdVar Me
  loc_6F8BBA: FStAdFunc var_1E0
  loc_6F8BBD: FLdPr var_1E0
  loc_6F8BC0: LateIdSt
  loc_6F8BC5: FFreeAd var_1DC = ""
  loc_6F8BCC: FFree1Var var_B4 = ""
  loc_6F8BCF: LitVar_TRUE var_A4
  loc_6F8BD2: PopAdLdVar
  loc_6F8BD3: FLdPrThis
  loc_6F8BD4: VCallAd Control_ID_gLista
  loc_6F8BD7: FStAdFunc var_1DC
  loc_6F8BDA: FLdPr var_1DC
  loc_6F8BDD: LateIdLdVar var_B4 DispID_-512 -1
  loc_6F8BE4: CastAdVar Me
  loc_6F8BE8: FStAdFunc var_1E0
  loc_6F8BEB: FLdPr var_1E0
  loc_6F8BEE: LateIdSt
  loc_6F8BF3: FFreeAd var_1DC = ""
  loc_6F8BFA: FFree1Var var_B4 = ""
  loc_6F8BFD: FLdPr Me
  loc_6F8C00: MemLdRfVar from_stack_1.global_116
  loc_6F8C03: CDargRef
  loc_6F8C07: FLdPrThis
  loc_6F8C08: VCallAd Control_ID_gLista
  loc_6F8C0B: FStAdFunc var_1DC
  loc_6F8C0E: FLdPr var_1DC
  loc_6F8C11: LateIdSt
  loc_6F8C16: FFree1Ad var_1DC
  loc_6F8C19: LitVarI4
  loc_6F8C21: PopAdLdVar
  loc_6F8C22: LitI4 4
  loc_6F8C27: CI2I4
  loc_6F8C28: CVarI2 var_C4
  loc_6F8C2B: PopAdLdVar
  loc_6F8C2C: FLdPrThis
  loc_6F8C2D: VCallAd Control_ID_gLista
  loc_6F8C30: FStAdFunc var_1DC
  loc_6F8C33: FLdPr var_1DC
  loc_6F8C36: LateIdCallSt
  loc_6F8C3E: FFree1Ad var_1DC
  loc_6F8C41: LitVarI4
  loc_6F8C49: PopAdLdVar
  loc_6F8C4A: LitI4 4
  loc_6F8C4F: CI2I4
  loc_6F8C50: CVarI2 var_C4
  loc_6F8C53: PopAdLdVar
  loc_6F8C54: FLdPrThis
  loc_6F8C55: VCallAd Control_ID_gLista
  loc_6F8C58: FStAdFunc var_1DC
  loc_6F8C5B: FLdPr var_1DC
  loc_6F8C5E: LateIdCallSt
  loc_6F8C66: FFree1Ad var_1DC
  loc_6F8C69: LitVarI4
  loc_6F8C71: PopAdLdVar
  loc_6F8C72: LitI4 4
  loc_6F8C77: CI2I4
  loc_6F8C78: CVarI2 var_C4
  loc_6F8C7B: PopAdLdVar
  loc_6F8C7C: FLdPrThis
  loc_6F8C7D: VCallAd Control_ID_gLista
  loc_6F8C80: FStAdFunc var_1DC
  loc_6F8C83: FLdPr var_1DC
  loc_6F8C86: LateIdCallSt
  loc_6F8C8E: FFree1Ad var_1DC
  loc_6F8C91: LitVarI4
  loc_6F8C99: PopAdLdVar
  loc_6F8C9A: LitI4 4
  loc_6F8C9F: CI2I4
  loc_6F8CA0: CVarI2 var_C4
  loc_6F8CA3: PopAdLdVar
  loc_6F8CA4: FLdPrThis
  loc_6F8CA5: VCallAd Control_ID_gLista
  loc_6F8CA8: FStAdFunc var_1DC
  loc_6F8CAB: FLdPr var_1DC
  loc_6F8CAE: LateIdCallSt
  loc_6F8CB6: FFree1Ad var_1DC
  loc_6F8CB9: LitVarI4
  loc_6F8CC1: PopAdLdVar
  loc_6F8CC2: LitVarI4
  loc_6F8CCA: PopAdLdVar
  loc_6F8CCB: FLdPrThis
  loc_6F8CCC: VCallAd Control_ID_gLista
  loc_6F8CCF: FStAdFunc var_1DC
  loc_6F8CD2: FLdPr var_1DC
  loc_6F8CD5: LateIdCallSt
  loc_6F8CDD: FFree1Ad var_1DC
  loc_6F8CE0: LitVarI4
  loc_6F8CE8: PopAdLdVar
  loc_6F8CE9: LitVarI4
  loc_6F8CF1: PopAdLdVar
  loc_6F8CF2: FLdPrThis
  loc_6F8CF3: VCallAd Control_ID_gLista
  loc_6F8CF6: FStAdFunc var_1DC
  loc_6F8CF9: FLdPr var_1DC
  loc_6F8CFC: LateIdCallSt
  loc_6F8D04: FFree1Ad var_1DC
  loc_6F8D07: LitVarI4
  loc_6F8D0F: PopAdLdVar
  loc_6F8D10: LitVarI4
  loc_6F8D18: PopAdLdVar
  loc_6F8D19: FLdPrThis
  loc_6F8D1A: VCallAd Control_ID_gLista
  loc_6F8D1D: FStAdFunc var_1DC
  loc_6F8D20: FLdPr var_1DC
  loc_6F8D23: LateIdCallSt
  loc_6F8D2B: FFree1Ad var_1DC
  loc_6F8D2E: LitVarI4
  loc_6F8D36: PopAdLdVar
  loc_6F8D37: LitVarI4
  loc_6F8D3F: PopAdLdVar
  loc_6F8D40: FLdPrThis
  loc_6F8D41: VCallAd Control_ID_gLista
  loc_6F8D44: FStAdFunc var_1DC
  loc_6F8D47: FLdPr var_1DC
  loc_6F8D4A: LateIdCallSt
  loc_6F8D52: FFree1Ad var_1DC
  loc_6F8D55: LitVarI4
  loc_6F8D5D: PopAdLdVar
  loc_6F8D5E: FLdPrThis
  loc_6F8D5F: VCallAd Control_ID_gLista
  loc_6F8D62: FStAdFunc var_1DC
  loc_6F8D65: FLdPr var_1DC
  loc_6F8D68: LateIdSt
  loc_6F8D6D: FFree1Ad var_1DC
  loc_6F8D70: FLdI2 var_8A
  loc_6F8D73: CI4UI1
  loc_6F8D74: FLdPr Me
  loc_6F8D77: MemLdStr cadena
  loc_6F8D7A: FnLenStr
  loc_6F8D7B: LtI4
  loc_6F8D7C: BranchF loc_6F8F16
  loc_6F8D7F: LitVarI2 var_B4, 2
  loc_6F8D84: FLdI2 var_8A
  loc_6F8D87: CI4UI1
  loc_6F8D88: FLdPr Me
  loc_6F8D8B: MemLdStr cadena
  loc_6F8D8E: ImpAdCallI2 Mid$(, , )
  loc_6F8D93: FStStrNoPop var_94
  loc_6F8D96: ImpAdCallFPR4 push Val()
  loc_6F8D9B: FStFPR8 var_2B0
  loc_6F8D9E: LitVarI2 var_208, 2
  loc_6F8DA3: FLdI2 var_8A
  loc_6F8DA6: LitI2_Byte 2
  loc_6F8DA8: AddI2
  loc_6F8DA9: CI4UI1
  loc_6F8DAA: FLdPr Me
  loc_6F8DAD: MemLdStr cadena
  loc_6F8DB0: ImpAdCallI2 Mid$(, , )
  loc_6F8DB5: FStStrNoPop var_1E8
  loc_6F8DB8: ImpAdCallFPR4 push Val()
  loc_6F8DBD: FStFPR8 var_2B8
  loc_6F8DC0: LitVarI2 var_258, 9
  loc_6F8DC5: FLdI2 var_8A
  loc_6F8DC8: LitI2_Byte 2
  loc_6F8DCA: AddI2
  loc_6F8DCB: LitI2_Byte 2
  loc_6F8DCD: AddI2
  loc_6F8DCE: CI4UI1
  loc_6F8DCF: FLdPr Me
  loc_6F8DD2: MemLdStr cadena
  loc_6F8DD5: ImpAdCallI2 Mid$(, , )
  loc_6F8DDA: FStStrNoPop var_1F0
  loc_6F8DDD: ImpAdCallFPR4 push Val()
  loc_6F8DE2: FStFPR8 var_2C0
  loc_6F8DE5: LitI4 1
  loc_6F8DEA: LitI4 1
  loc_6F8DEF: LitVarStr var_E4, "##"
  loc_6F8DF4: FStVarCopyObj var_F4
  loc_6F8DF7: FLdRfVar var_F4
  loc_6F8DFA: FLdFPR8 var_2B0
  loc_6F8DFD: CVarR8
  loc_6F8E01: ImpAdCallI2 Format$(, )
  loc_6F8E06: CVarStr var_134
  loc_6F8E09: LitI4 9
  loc_6F8E0E: FLdRfVar var_114
  loc_6F8E11: ImpAdCallFPR4  = Chr()
  loc_6F8E16: FLdRfVar var_114
  loc_6F8E19: ConcatVar var_154
  loc_6F8E1D: LitVarI2 var_174, 2
  loc_6F8E22: FLdI2 var_8A
  loc_6F8E25: LitI2_Byte 2
  loc_6F8E27: AddI2
  loc_6F8E28: CI4UI1
  loc_6F8E29: FLdPr Me
  loc_6F8E2C: MemLdStr cadena
  loc_6F8E2F: ImpAdCallI2 Mid$(, , )
  loc_6F8E34: FStStrNoPop var_1D8
  loc_6F8E37: ImpAdCallFPR4 push Val()
  loc_6F8E3C: CVarR8
  loc_6F8E40: ConcatVar var_194
  loc_6F8E44: LitI4 9
  loc_6F8E49: FLdRfVar var_1B4
  loc_6F8E4C: ImpAdCallFPR4  = Chr()
  loc_6F8E51: FLdRfVar var_1B4
  loc_6F8E54: ConcatVar var_1D4
  loc_6F8E58: FLdRfVar var_1EC
  loc_6F8E5B: FLdFPR8 var_2B8
  loc_6F8E5E: CI2R8
  loc_6F8E5F: ImpAdLdRf MemVar_74A220
  loc_6F8E62: NewIfNullPr clsProducts
  loc_6F8E6A: FLdZeroAd var_1EC
  loc_6F8E6D: CVarStr var_218
  loc_6F8E70: ConcatVar var_228
  loc_6F8E74: LitI4 9
  loc_6F8E79: FLdRfVar var_238
  loc_6F8E7C: ImpAdCallFPR4  = Chr()
  loc_6F8E81: FLdRfVar var_238
  loc_6F8E84: ConcatVar var_248
  loc_6F8E88: LitI4 1
  loc_6F8E8D: LitI4 1
  loc_6F8E92: LitVarStr var_1A4, "#####0.000"
  loc_6F8E97: FStVarCopyObj var_278
  loc_6F8E9A: FLdRfVar var_278
  loc_6F8E9D: FLdFPR8 var_2C0
  loc_6F8EA0: LitI2 1000
  loc_6F8EA3: CR8I2
  loc_6F8EA4: DivR8
  loc_6F8EA5: CVarR8
  loc_6F8EA9: ImpAdCallI2 Format$(, )
  loc_6F8EAE: CVarStr var_288
  loc_6F8EB1: ConcatVar var_298
  loc_6F8EB5: CStrVarTmp
  loc_6F8EB6: CVarStr var_2A8
  loc_6F8EB9: PopAdLdVar
  loc_6F8EBA: FLdPrThis
  loc_6F8EBB: VCallAd Control_ID_gLista
  loc_6F8EBE: FStAdFunc var_1DC
  loc_6F8EC1: FLdPr var_1DC
  loc_6F8EC4: LateIdCall
  loc_6F8ECC: FFreeStr var_94 = "": var_1D8 = "": var_1E8 = ""
  loc_6F8ED7: FFree1Ad var_1DC
  loc_6F8EDA: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_134 = "": var_114 = "": var_174 = "": var_154 = "": var_194 = "": var_1B4 = "": var_208 = "": var_1D4 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = "": var_248 = "": var_288 = "": var_298 = ""
  loc_6F8F07: FLdI2 var_8A
  loc_6F8F0A: LitI2_Byte &HB
  loc_6F8F0C: AddI2
  loc_6F8F0D: LitI2_Byte 2
  loc_6F8F0F: AddI2
  loc_6F8F10: FStI2 var_8A
  loc_6F8F13: Branch loc_6F8D70
  loc_6F8F16: Call ImprimirNotificacion()
  loc_6F8F1B: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5D1508
  'Data Table: 433740
  loc_5D14F0: ILdRf Me
  loc_5D14F3: FStAdNoPop
  loc_5D14F7: ImpAdLdRf MemVar_7520D4
  loc_5D14FA: NewIfNullPr Global
  loc_5D14FD: Global.Unload from_stack_1
  loc_5D1502: FFree1Ad var_88
  loc_5D1505: ExitProcHresult
  loc_5D1506: CR8I4
End Sub

Public Function cadenaGet() '434200
  cadenaGet = cadena
End Function

Public Sub cadenaPut(Value) '43420F
  cadena = Value
End Sub

Public Sub ImprimirNotificacion() '6A1358
  'Data Table: 433740
  loc_6A0CD8: FLdRfVar var_90
  loc_6A0CDB: ImpAdLdRf MemVar_7520D4
  loc_6A0CDE: NewIfNullPr Global
  loc_6A0CE1:  = Global.Printer
  loc_6A0CE6: FLdZeroAd var_90
  loc_6A0CE9: FStAdFunc var_8C
  loc_6A0CEE: OnErrorGoto loc_6A1235
  loc_6A0CF3: LitVarStr var_A0, "Courier New"
  loc_6A0CF8: PopAdLdVar
  loc_6A0CF9: FLdPr var_8C
  loc_6A0CFC: LateIdSt
  loc_6A0D03: LitI2_Byte &HB
  loc_6A0D05: CR8I2
  loc_6A0D06: CVarR4
  loc_6A0D0A: PopAdLdVar
  loc_6A0D0B: FLdPr var_8C
  loc_6A0D0E: LateIdSt
  loc_6A0D15: LitI4 6
  loc_6A0D1A: CI2I4
  loc_6A0D1B: CVarI2 var_A0
  loc_6A0D1E: PopAdLdVar
  loc_6A0D1F: FLdPr var_8C
  loc_6A0D22: LateIdSt
  loc_6A0D29: FLdRfVar var_A4
  loc_6A0D2C: FLdPrThis
  loc_6A0D2D: VCallAd Control_ID_Picture1
  loc_6A0D30: FStAdFunc var_90
  loc_6A0D33: FLdPr var_90
  loc_6A0D36:  = Me.Picture
  loc_6A0D3B: FLdPr var_A4
  loc_6A0D3E: LateIdLdVar var_B4 DispID_0 0
  loc_6A0D45: CI4Var
  loc_6A0D47: LitI4 0
  loc_6A0D4C: NeI4
  loc_6A0D4D: FFreeAd var_90 = ""
  loc_6A0D54: FFree1Var var_B4 = ""
  loc_6A0D57: BranchF loc_6A0DB1
  loc_6A0D5C: FLdRfVar var_A4
  loc_6A0D5F: FLdPrThis
  loc_6A0D60: VCallAd Control_ID_Picture1
  loc_6A0D63: FStAdFunc var_90
  loc_6A0D66: FLdPr var_90
  loc_6A0D69:  = Me.Picture
  loc_6A0D6E: FLdZeroAd var_A4
  loc_6A0D71: CVarAd
  loc_6A0D75: PopAdLdVar
  loc_6A0D76: LitI2_Byte 1
  loc_6A0D78: CR8I2
  loc_6A0D79: CVarR4
  loc_6A0D7D: PopAdLdVar
  loc_6A0D7E: LitI2_Byte &HA
  loc_6A0D80: CR8I2
  loc_6A0D81: CVarR4
  loc_6A0D85: PopAdLdVar
  loc_6A0D86: LitVarR8
  loc_6A0D92: PopAdLdVar
  loc_6A0D93: LitVarR8
  loc_6A0D9F: PopAdLdVar
  loc_6A0DA0: FLdPr var_8C
  loc_6A0DA3: LateIdCall
  loc_6A0DAB: FFree1Ad var_90
  loc_6A0DAE: FFree1Var var_B4 = ""
  loc_6A0DB5: FLdRfVar var_A4
  loc_6A0DB8: FLdPrThis
  loc_6A0DB9: VCallAd Control_ID_Picture2
  loc_6A0DBC: FStAdFunc var_90
  loc_6A0DBF: FLdPr var_90
  loc_6A0DC2:  = Me.Picture
  loc_6A0DC7: FLdPr var_A4
  loc_6A0DCA: LateIdLdVar var_B4 DispID_0 0
  loc_6A0DD1: CI4Var
  loc_6A0DD3: LitI4 0
  loc_6A0DD8: NeI4
  loc_6A0DD9: FFreeAd var_90 = ""
  loc_6A0DE0: FFree1Var var_B4 = ""
  loc_6A0DE3: BranchF loc_6A0E3E
  loc_6A0DE8: FLdRfVar var_A4
  loc_6A0DEB: FLdPrThis
  loc_6A0DEC: VCallAd Control_ID_Picture2
  loc_6A0DEF: FStAdFunc var_90
  loc_6A0DF2: FLdPr var_90
  loc_6A0DF5:  = Me.Picture
  loc_6A0DFA: FLdZeroAd var_A4
  loc_6A0DFD: CVarAd
  loc_6A0E01: PopAdLdVar
  loc_6A0E02: LitI2 150
  loc_6A0E05: CR8I2
  loc_6A0E06: CVarR4
  loc_6A0E0A: PopAdLdVar
  loc_6A0E0B: LitI2_Byte &HA
  loc_6A0E0D: CR8I2
  loc_6A0E0E: CVarR4
  loc_6A0E12: PopAdLdVar
  loc_6A0E13: LitVarR8
  loc_6A0E1F: PopAdLdVar
  loc_6A0E20: LitVarR8
  loc_6A0E2C: PopAdLdVar
  loc_6A0E2D: FLdPr var_8C
  loc_6A0E30: LateIdCall
  loc_6A0E38: FFree1Ad var_90
  loc_6A0E3B: FFree1Var var_B4 = ""
  loc_6A0E42: LitI2_Byte 1
  loc_6A0E44: FLdRfVar var_86
  loc_6A0E47: LitI2_Byte 8
  loc_6A0E49: ForI2 var_E8
  loc_6A0E51: ILdRf var_8C
  loc_6A0E54: PrintObject
  loc_6A0E5C: FLdRfVar var_86
  loc_6A0E5F: NextI2 var_E8, loc_6A0E4F
  loc_6A0E66: FLdRfVar var_EC
  loc_6A0E69: FLdPrThis
  loc_6A0E6A: VCallAd Control_ID_lFecha
  loc_6A0E6D: FStAdFunc var_90
  loc_6A0E70: FLdPr var_90
  loc_6A0E73:  = Me.Caption
  loc_6A0E78: FLdRfVar var_F0
  loc_6A0E7B: FLdPrThis
  loc_6A0E7C: VCallAd Control_ID_lHora
  loc_6A0E7F: FStAdFunc var_A4
  loc_6A0E82: FLdPr var_A4
  loc_6A0E85:  = Me.Caption
  loc_6A0E8A: ILdRf var_F0
  loc_6A0E8D: LitI2_Byte &H42
  loc_6A0E8F: ILdRf var_EC
  loc_6A0E92: LitI2_Byte 5
  loc_6A0E94: ILdRf var_8C
  loc_6A0E97: PrintObject
  loc_6A0E9D: FFreeStr var_EC = ""
  loc_6A0EA4: FFreeAd var_90 = ""
  loc_6A0EAD: FLdPr Me
  loc_6A0EB0: MemLdStr global_68
  loc_6A0EB3: LitI2_Byte &H17
  loc_6A0EB5: ILdRf var_8C
  loc_6A0EB8: PrintObject
  loc_6A0EC0: ILdRf var_8C
  loc_6A0EC3: PrintObject
  loc_6A0ECB: ILdRf var_8C
  loc_6A0ECE: PrintObject
  loc_6A0ED6: ILdRf var_8C
  loc_6A0ED9: PrintObject
  loc_6A0EE1: FLdRfVar var_EC
  loc_6A0EE4: FLdPrThis
  loc_6A0EE5: VCallAd Control_ID_lNroEstacion
  loc_6A0EE8: FStAdFunc var_90
  loc_6A0EEB: FLdPr var_90
  loc_6A0EEE:  = Me.Caption
  loc_6A0EF3: ILdRf var_EC
  loc_6A0EF6: FLdPr Me
  loc_6A0EF9: MemLdStr global_72
  loc_6A0EFC: LitI2_Byte 5
  loc_6A0EFE: ILdRf var_8C
  loc_6A0F01: PrintObject
  loc_6A0F07: FFree1Str var_EC
  loc_6A0F0A: FFree1Ad var_90
  loc_6A0F0F: FLdRfVar var_EC
  loc_6A0F12: FLdPrThis
  loc_6A0F13: VCallAd Control_ID_lRazonSocial
  loc_6A0F16: FStAdFunc var_90
  loc_6A0F19: FLdPr var_90
  loc_6A0F1C:  = Me.Caption
  loc_6A0F21: ILdRf var_EC
  loc_6A0F24: FLdPr Me
  loc_6A0F27: MemLdStr global_76
  loc_6A0F2A: LitI2_Byte 5
  loc_6A0F2C: ILdRf var_8C
  loc_6A0F2F: PrintObject
  loc_6A0F35: FFree1Str var_EC
  loc_6A0F38: FFree1Ad var_90
  loc_6A0F3D: ILdRf var_8C
  loc_6A0F40: PrintObject
  loc_6A0F48: FLdPr Me
  loc_6A0F4B: MemLdStr global_80
  loc_6A0F4E: LitI2_Byte 5
  loc_6A0F50: ILdRf var_8C
  loc_6A0F53: PrintObject
  loc_6A0F5B: ILdRf var_8C
  loc_6A0F5E: PrintObject
  loc_6A0F66: LitStr "----------------------------------------------------------------------"
  loc_6A0F69: LitI2_Byte 5
  loc_6A0F6B: ILdRf var_8C
  loc_6A0F6E: PrintObject
  loc_6A0F76: ILdRf var_8C
  loc_6A0F79: PrintObject
  loc_6A0F81: ILdRf var_8C
  loc_6A0F84: PrintObject
  loc_6A0F8C: FLdPr Me
  loc_6A0F8F: MemLdStr global_88
  loc_6A0F92: FLdPr Me
  loc_6A0F95: MemLdStr global_56
  loc_6A0F98: FLdPr Me
  loc_6A0F9B: MemLdStr global_84
  loc_6A0F9E: LitI2_Byte 5
  loc_6A0FA0: ILdRf var_8C
  loc_6A0FA3: PrintObject
  loc_6A0FAB: ILdRf var_8C
  loc_6A0FAE: PrintObject
  loc_6A0FB6: FLdPr Me
  loc_6A0FB9: MemLdStr global_92
  loc_6A0FBC: FLdPr Me
  loc_6A0FBF: MemLdStr global_60
  loc_6A0FC2: LitI2_Byte 5
  loc_6A0FC4: ILdRf var_8C
  loc_6A0FC7: PrintObject
  loc_6A0FCF: ILdRf var_8C
  loc_6A0FD2: PrintObject
  loc_6A0FDA: ImpAdLdI4 MemVar_74C5C0
  loc_6A0FDD: LitI2_Byte &H34
  loc_6A0FDF: FLdPr Me
  loc_6A0FE2: MemLdStr global_112
  loc_6A0FE5: LitI2_Byte &H22
  loc_6A0FE7: FLdPr Me
  loc_6A0FEA: MemLdStr global_108
  loc_6A0FED: LitI2_Byte &H13
  loc_6A0FEF: FLdPr Me
  loc_6A0FF2: MemLdStr global_104
  loc_6A0FF5: LitI2_Byte &HC
  loc_6A0FF7: ILdRf var_8C
  loc_6A0FFA: PrintObject
  loc_6A1002: LitI2_Byte &HD
  loc_6A1004: FStI2 var_86
  loc_6A1009: FLdI2 var_86
  loc_6A100C: CI4UI1
  loc_6A100D: FLdPr Me
  loc_6A1010: MemLdStr cadena
  loc_6A1013: FnLenStr
  loc_6A1014: LtI4
  loc_6A1015: BranchF loc_6A11D3
  loc_6A101A: LitVarI2 var_B4, 2
  loc_6A101F: FLdI2 var_86
  loc_6A1022: CI4UI1
  loc_6A1023: FLdPr Me
  loc_6A1026: MemLdStr cadena
  loc_6A1029: ImpAdCallI2 Mid$(, , )
  loc_6A102E: FStStrNoPop var_EC
  loc_6A1031: ImpAdCallFPR4 push Val()
  loc_6A1036: FStFPR8 var_264
  loc_6A1039: LitI4 1
  loc_6A103E: LitI4 1
  loc_6A1043: LitVarStr var_D4, "##"
  loc_6A1048: FStVarCopyObj var_110
  loc_6A104B: FLdRfVar var_110
  loc_6A104E: FLdFPR8 var_264
  loc_6A1051: CVarR8
  loc_6A1055: ImpAdCallI2 Format$(, )
  loc_6A105A: FStStr var_268
  loc_6A105D: LitVarI2 var_120, 2
  loc_6A1062: FLdI2 var_86
  loc_6A1065: LitI2_Byte 2
  loc_6A1067: AddI2
  loc_6A1068: CI4UI1
  loc_6A1069: FLdPr Me
  loc_6A106C: MemLdStr cadena
  loc_6A106F: ImpAdCallI2 Mid$(, , )
  loc_6A1074: FStStrNoPop var_124
  loc_6A1077: ImpAdCallFPR4 push Val()
  loc_6A107C: FStFPR8 var_270
  loc_6A107F: LitI4 1
  loc_6A1084: LitI4 1
  loc_6A1089: LitVarStr var_154, "#####0"
  loc_6A108E: FStVarCopyObj var_164
  loc_6A1091: FLdRfVar var_164
  loc_6A1094: FLdFPR8 var_270
  loc_6A1097: CVarR8
  loc_6A109B: ImpAdCallI2 Format$(, )
  loc_6A10A0: FStStr var_274
  loc_6A10A3: LitVarI2 var_188, 2
  loc_6A10A8: FLdI2 var_86
  loc_6A10AB: LitI2_Byte 2
  loc_6A10AD: AddI2
  loc_6A10AE: CI4UI1
  loc_6A10AF: FLdPr Me
  loc_6A10B2: MemLdStr cadena
  loc_6A10B5: ImpAdCallI2 Mid$(, , )
  loc_6A10BA: FStStrNoPop var_18C
  loc_6A10BD: ImpAdCallFPR4 push Val()
  loc_6A10C2: FStFPR8 var_27C
  loc_6A10C5: FLdRfVar var_190
  loc_6A10C8: FLdFPR8 var_27C
  loc_6A10CB: CI2R8
  loc_6A10CC: ImpAdLdRf MemVar_74A220
  loc_6A10CF: NewIfNullPr clsProducts
  loc_6A10D7: LitVarI2 var_1C0, 20
  loc_6A10DC: LitI4 1
  loc_6A10E1: FLdZeroAd var_190
  loc_6A10E4: CVarStr var_1A0
  loc_6A10E7: FLdRfVar var_1D0
  loc_6A10EA: ImpAdCallFPR4  = Mid(, , )
  loc_6A10EF: LitI4 1
  loc_6A10F4: LitI4 1
  loc_6A10F9: LitVarStr var_1E0, "@@@@@@@@@@@@@@@@@@@@"
  loc_6A10FE: FStVarCopyObj var_1F0
  loc_6A1101: FLdRfVar var_1F0
  loc_6A1104: FLdRfVar var_1D0
  loc_6A1107: ImpAdCallI2 Format$(, )
  loc_6A110C: FStStr var_280
  loc_6A110F: LitVarI2 var_214, 9
  loc_6A1114: FLdI2 var_86
  loc_6A1117: LitI2_Byte 2
  loc_6A1119: AddI2
  loc_6A111A: LitI2_Byte 2
  loc_6A111C: AddI2
  loc_6A111D: CI4UI1
  loc_6A111E: FLdPr Me
  loc_6A1121: MemLdStr cadena
  loc_6A1124: ImpAdCallI2 Mid$(, , )
  loc_6A1129: FStStrNoPop var_218
  loc_6A112C: ImpAdCallFPR4 push Val()
  loc_6A1131: FStFPR8 var_288
  loc_6A1134: LitI4 1
  loc_6A1139: LitI4 1
  loc_6A113E: LitVarStr var_248, "######0.000"
  loc_6A1143: FStVarCopyObj var_258
  loc_6A1146: FLdRfVar var_258
  loc_6A1149: FLdFPR8 var_288
  loc_6A114C: LitI2 1000
  loc_6A114F: CR8I2
  loc_6A1150: DivR8
  loc_6A1151: CVarR8
  loc_6A1155: ImpAdCallI2 Format$(, )
  loc_6A115A: FStStr var_28C
  loc_6A115D: FLdZeroAd var_28C
  loc_6A1160: FStStrNoPop var_25C
  loc_6A1163: LitI2_Byte &H35
  loc_6A1165: FLdZeroAd var_280
  loc_6A1168: FStStrNoPop var_1F4
  loc_6A116B: LitI2_Byte &H1D
  loc_6A116D: FLdZeroAd var_274
  loc_6A1170: FStStrNoPop var_168
  loc_6A1173: LitI2_Byte &H16
  loc_6A1175: FLdZeroAd var_268
  loc_6A1178: FStStrNoPop var_F0
  loc_6A117B: LitI2_Byte &HE
  loc_6A117D: ILdRf var_8C
  loc_6A1180: PrintObject
  loc_6A1186: FFreeStr var_EC = "": var_F0 = "": var_124 = "": var_168 = "": var_18C = "": var_1F4 = "": var_218 = "": var_25C = "": var_268 = "": var_274 = "": var_280 = ""
  loc_6A11A1: FFreeVar var_B4 = "": var_100 = "": var_110 = "": var_120 = "": var_144 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_214 = "": var_238 = ""
  loc_6A11C2: FLdI2 var_86
  loc_6A11C5: LitI2_Byte &HB
  loc_6A11C7: AddI2
  loc_6A11C8: LitI2_Byte 2
  loc_6A11CA: AddI2
  loc_6A11CB: FStI2 var_86
  loc_6A11D0: Branch loc_6A1007
  loc_6A11D5: ILdRf var_8C
  loc_6A11D8: PrintObject
  loc_6A11E0: ILdRf var_8C
  loc_6A11E3: PrintObject
  loc_6A11EB: ILdRf var_8C
  loc_6A11EE: PrintObject
  loc_6A11F6: FLdPr Me
  loc_6A11F9: MemLdStr global_96
  loc_6A11FC: LitI2_Byte 5
  loc_6A11FE: ILdRf var_8C
  loc_6A1201: PrintObject
  loc_6A1209: ILdRf var_8C
  loc_6A120C: PrintObject
  loc_6A1214: FLdPr Me
  loc_6A1217: MemLdStr global_100
  loc_6A121A: LitI2_Byte 5
  loc_6A121C: ILdRf var_8C
  loc_6A121F: PrintObject
  loc_6A1227: FLdPr var_8C
  loc_6A122A: LateIdCall
  loc_6A1234: ExitProcHresult
  loc_6A1237: LitI4 &HD
  loc_6A123C: ImpAdCallI2 Chr$()
  loc_6A1241: FStStr var_280
  loc_6A1244: LitI4 &HD
  loc_6A1249: ImpAdCallI2 Chr$()
  loc_6A124E: FStStr var_28C
  loc_6A1251: FLdRfVar var_290
  loc_6A1254: ImpAdCallI2 Err 'rtcErrObj
  loc_6A1259: FStAdFunc var_90
  loc_6A125C: FLdPr var_90
  loc_6A125F:  = Err.Number
  loc_6A1264: LitI4 &HD
  loc_6A1269: ImpAdCallI2 Chr$()
  loc_6A126E: FStStr var_294
  loc_6A1271: FLdRfVar var_268
  loc_6A1274: ImpAdCallI2 Err 'rtcErrObj
  loc_6A1279: FStAdFunc var_A4
  loc_6A127C: FLdPr var_A4
  loc_6A127F:  = Err.Description
  loc_6A1284: LitVar_Missing var_110
  loc_6A1287: LitVar_Missing var_100
  loc_6A128A: FLdPr Me
  loc_6A128D: MemLdRfVar from_stack_1.global_128
  loc_6A1290: CVarRef
  loc_6A1295: LitI4 &H45
  loc_6A129A: FLdPr Me
  loc_6A129D: MemLdStr global_120
  loc_6A12A0: FLdZeroAd var_280
  loc_6A12A3: FStStrNoPop var_EC
  loc_6A12A6: ConcatStr
  loc_6A12A7: FStStrNoPop var_F0
  loc_6A12AA: FLdZeroAd var_28C
  loc_6A12AD: FStStrNoPop var_124
  loc_6A12B0: ConcatStr
  loc_6A12B1: FStStrNoPop var_168
  loc_6A12B4: LitStr "Error Número: "
  loc_6A12B7: ConcatStr
  loc_6A12B8: FStStrNoPop var_18C
  loc_6A12BB: ILdRf var_290
  loc_6A12BE: CStrI4
  loc_6A12C0: FStStrNoPop var_190
  loc_6A12C3: ConcatStr
  loc_6A12C4: FStStrNoPop var_1F4
  loc_6A12C7: FLdZeroAd var_294
  loc_6A12CA: FStStrNoPop var_218
  loc_6A12CD: ConcatStr
  loc_6A12CE: FStStrNoPop var_25C
  loc_6A12D1: FLdPr Me
  loc_6A12D4: MemLdStr global_112
  loc_6A12D7: ConcatStr
  loc_6A12D8: FStStrNoPop var_274
  loc_6A12DB: ILdRf var_268
  loc_6A12DE: ConcatStr
  loc_6A12DF: CVarStr var_B4
  loc_6A12E2: ImpAdCallI2 MsgBox(, , , , )
  loc_6A12E7: LitI4 4
  loc_6A12EC: EqI4
  loc_6A12ED: FFreeStr var_EC = "": var_F0 = "": var_124 = "": var_168 = "": var_18C = "": var_190 = "": var_1F4 = "": var_218 = "": var_25C = "": var_274 = "": var_268 = "": var_280 = "": var_28C = ""
  loc_6A130C: FFreeAd var_90 = ""
  loc_6A1313: FFreeVar var_B4 = "": var_100 = ""
  loc_6A131C: BranchF loc_6A1328
  loc_6A1321: Resume
  loc_6A1325: Branch loc_6A1351
  loc_6A132C: On Error Resume Next
  loc_6A1331: FLdPr var_8C
  loc_6A1334: LateIdCall
  loc_6A133E: FLdPr var_8C
  loc_6A1341: LateIdCall
  loc_6A134B: On Error GoTo 0
  loc_6A1350: ExitProcHresult
  loc_6A1355: ExitProcHresult
End Sub
