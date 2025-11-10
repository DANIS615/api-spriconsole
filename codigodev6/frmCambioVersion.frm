VERSION 5.00
Begin VB.Form frmCambioVersion
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
  ClientHeight = 8910
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.ListBox lstTexto
    Left = 120
    Top = 3000
    Width = 11655
    Height = 4935
    TabIndex = 11
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 9480
    Top = 8160
    Width = 2295
    Height = 615
    TabIndex = 9
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
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 1
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.PictureBox Picture2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 9480
    Top = 240
    Width = 2175
    Height = 510
    TabIndex = 0
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 8880
    Top = 1320
  End
  Begin VB.Label Label9
    Caption = "Por cualquier consulta llame a la mesa de ayuda. Muchas gracias."
    Left = 240
    Top = 8280
    Width = 7815
    Height = 375
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
  Begin VB.Label Label1
    Caption = "Notificación de Cambio de Versión"
    Left = 1800
    Top = 240
    Width = 7575
    Height = 735
    TabIndex = 8
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
  Begin VB.Label Label2
    Caption = "Estación de Servicio Nro.:"
    Left = 480
    Top = 1920
    Width = 3015
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
  Begin VB.Label Label3
    Caption = "Razón Social:"
    Left = 480
    Top = 2400
    Width = 1695
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
  Begin VB.Label lNroEstacion
    Caption = "99999"
    Left = 3600
    Top = 1920
    Width = 1455
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
  Begin VB.Label lRazonSocial
    Caption = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    Left = 2280
    Top = 2400
    Width = 4455
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
  Begin VB.Label lFecha
    Caption = "DD/MM/AAAA"
    Left = 240
    Top = 1200
    Width = 1815
    Height = 375
    TabIndex = 3
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10440
    Top = 1080
    Width = 1095
    Height = 375
    TabIndex = 2
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
End

Attribute VB_Name = "frmCambioVersion"

Public strNotification As String
Public strStationID As String
Public strCompany As String
Public strHelp As String
Public strAttention As String
Public strPrintError1 As String
Public strPrintError2 As String
Public strPrintError3 As String
Public strPrintError4 As String


Private Sub cmdContinuar_Click() '5D1470
  'Data Table: 42C560
  loc_5D1458: ILdRf Me
  loc_5D145B: FStAdNoPop
  loc_5D145F: ImpAdLdRf MemVar_7520D4
  loc_5D1462: NewIfNullPr Global
  loc_5D1465: Global.Unload from_stack_1
  loc_5D146A: FFree1Ad var_88
  loc_5D146D: ExitProcHresult
End Sub

Private Sub Form_Load() '5F47BC
  'Data Table: 42C560
  loc_5F4704: LitI2_Byte 0
  loc_5F4706: CR8I2
  loc_5F4707: PopFPR4
  loc_5F4708: FLdPr Me
  loc_5F470B: Me.Top = from_stack_1s
  loc_5F4710: LitI2_Byte 0
  loc_5F4712: CR8I2
  loc_5F4713: PopFPR4
  loc_5F4714: FLdPr Me
  loc_5F4717: Me.Left = from_stack_1s
  loc_5F471C: FLdRfVar var_90
  loc_5F471F: FLdRfVar var_8C
  loc_5F4722: ImpAdLdRf MemVar_7520D4
  loc_5F4725: NewIfNullPr Global
  loc_5F4728:  = Global.Screen
  loc_5F472D: FLdPr var_8C
  loc_5F4730:  = Screen.TwipsPerPixelY
  loc_5F4735: FLdFPR4 var_90
  loc_5F4738: LitI2 600
  loc_5F473B: CR8I2
  loc_5F473C: MulR8
  loc_5F473D: PopFPR4
  loc_5F473E: FLdPr Me
  loc_5F4741: Me.Height = from_stack_1s
  loc_5F4746: FFree1Ad var_8C
  loc_5F4749: FLdRfVar var_90
  loc_5F474C: FLdRfVar var_8C
  loc_5F474F: ImpAdLdRf MemVar_7520D4
  loc_5F4752: NewIfNullPr Global
  loc_5F4755:  = Global.Screen
  loc_5F475A: FLdPr var_8C
  loc_5F475D:  = Screen.TwipsPerPixelX
  loc_5F4762: FLdFPR4 var_90
  loc_5F4765: LitI2 800
  loc_5F4768: CR8I2
  loc_5F4769: MulR8
  loc_5F476A: PopFPR4
  loc_5F476B: FLdPr Me
  loc_5F476E: Me.Width = from_stack_1s
  loc_5F4773: FFree1Ad var_8C
  loc_5F4776: ImpAdLdI2 MemVar_74BEA6
  loc_5F4779: BranchF loc_5F477F
  loc_5F477C: Branch loc_5F47B9
  loc_5F477F: LitI2_Byte 1
  loc_5F4781: CUI1I2
  loc_5F4783: FLdRfVar var_86
  loc_5F4786: LitI2_Byte 5
  loc_5F4788: CUI1I2
  loc_5F478A: ForUI1 var_94
  loc_5F4790: LitI4 &H64
  loc_5F4795: LitI4 &H1F4
  loc_5F479A: ImpAdCallFPR4 ()
  loc_5F479F: SetLastSystemError
  loc_5F47A0: LitI4 &H96
  loc_5F47A5: LitI4 &H190
  loc_5F47AA: ImpAdCallFPR4 ()
  loc_5F47AF: SetLastSystemError
  loc_5F47B0: FLdRfVar var_86
  loc_5F47B3: NextUI1
  loc_5F47B9: ExitProcHresult
End Sub

Private Sub Form_Activate(arg_20) '6AC788
  'Data Table: 42C560
  loc_6AC044: FLdPr Me
  loc_6AC047: MemLdI2 global_88
  loc_6AC04A: BranchF loc_6AC04E
  loc_6AC04D: ExitProcHresult
  loc_6AC04E: LitI2_Byte &HFF
  loc_6AC050: FLdPr Me
  loc_6AC053: MemStI2 global_88
  loc_6AC056: FLdRfVar var_1E0
  loc_6AC059: LitVar_Missing var_1DC
  loc_6AC05C: LitVar_Missing var_1BC
  loc_6AC05F: LitVar_Missing var_19C
  loc_6AC062: LitVar_Missing var_17C
  loc_6AC065: LitVar_Missing var_15C
  loc_6AC068: LitVar_Missing var_13C
  loc_6AC06B: LitVar_Missing var_11C
  loc_6AC06E: LitVar_Missing var_FC
  loc_6AC071: LitVar_Missing var_DC
  loc_6AC074: LitVar_Missing var_BC
  loc_6AC077: LitStr "Notificación de Cambio de Versión"
  loc_6AC07A: FStStrCopy var_9C
  loc_6AC07D: FLdRfVar var_9C
  loc_6AC080: LitI4 1
  loc_6AC085: PopTmpLdAdStr var_98
  loc_6AC088: LitI2_Byte 6
  loc_6AC08A: PopTmpLdAd2 var_92
  loc_6AC08D: ImpAdLdRf MemVar_74C7D0
  loc_6AC090: NewIfNullPr clsMsg
  loc_6AC093: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC098: ILdRf var_1E0
  loc_6AC09B: FLdPr Me
  loc_6AC09E: MemStStrCopy
  loc_6AC0A2: FFreeStr var_9C = ""
  loc_6AC0A9: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC0C0: FLdRfVar var_1E0
  loc_6AC0C3: LitVar_Missing var_1DC
  loc_6AC0C6: LitVar_Missing var_1BC
  loc_6AC0C9: LitVar_Missing var_19C
  loc_6AC0CC: LitVar_Missing var_17C
  loc_6AC0CF: LitVar_Missing var_15C
  loc_6AC0D2: LitVar_Missing var_13C
  loc_6AC0D5: LitVar_Missing var_11C
  loc_6AC0D8: LitVar_Missing var_FC
  loc_6AC0DB: LitVar_Missing var_DC
  loc_6AC0DE: LitVar_Missing var_BC
  loc_6AC0E1: LitStr "Estación de Servicio Nro.: "
  loc_6AC0E4: FStStrCopy var_9C
  loc_6AC0E7: FLdRfVar var_9C
  loc_6AC0EA: LitI4 2
  loc_6AC0EF: PopTmpLdAdStr var_98
  loc_6AC0F2: LitI2_Byte 6
  loc_6AC0F4: PopTmpLdAd2 var_92
  loc_6AC0F7: ImpAdLdRf MemVar_74C7D0
  loc_6AC0FA: NewIfNullPr clsMsg
  loc_6AC0FD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC102: ILdRf var_1E0
  loc_6AC105: FLdPr Me
  loc_6AC108: MemStStrCopy
  loc_6AC10C: FFreeStr var_9C = ""
  loc_6AC113: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC12A: FLdRfVar var_1E0
  loc_6AC12D: LitVar_Missing var_1DC
  loc_6AC130: LitVar_Missing var_1BC
  loc_6AC133: LitVar_Missing var_19C
  loc_6AC136: LitVar_Missing var_17C
  loc_6AC139: LitVar_Missing var_15C
  loc_6AC13C: LitVar_Missing var_13C
  loc_6AC13F: LitVar_Missing var_11C
  loc_6AC142: LitVar_Missing var_FC
  loc_6AC145: LitVar_Missing var_DC
  loc_6AC148: LitVar_Missing var_BC
  loc_6AC14B: LitStr "Razón Social"
  loc_6AC14E: FStStrCopy var_9C
  loc_6AC151: FLdRfVar var_9C
  loc_6AC154: LitI4 3
  loc_6AC159: PopTmpLdAdStr var_98
  loc_6AC15C: LitI2_Byte 6
  loc_6AC15E: PopTmpLdAd2 var_92
  loc_6AC161: ImpAdLdRf MemVar_74C7D0
  loc_6AC164: NewIfNullPr clsMsg
  loc_6AC167: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC16C: ILdRf var_1E0
  loc_6AC16F: FLdPr Me
  loc_6AC172: MemStStrCopy
  loc_6AC176: FFreeStr var_9C = ""
  loc_6AC17D: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC194: FLdRfVar var_1E0
  loc_6AC197: LitVar_Missing var_1DC
  loc_6AC19A: LitVar_Missing var_1BC
  loc_6AC19D: LitVar_Missing var_19C
  loc_6AC1A0: LitVar_Missing var_17C
  loc_6AC1A3: LitVar_Missing var_15C
  loc_6AC1A6: LitVar_Missing var_13C
  loc_6AC1A9: LitVar_Missing var_11C
  loc_6AC1AC: LitVar_Missing var_FC
  loc_6AC1AF: LitVar_Missing var_DC
  loc_6AC1B2: LitVar_Missing var_BC
  loc_6AC1B5: LitStr "Por cualquier consulta llame a la mesa de ayuda."
  loc_6AC1B8: FStStrCopy var_9C
  loc_6AC1BB: FLdRfVar var_9C
  loc_6AC1BE: LitI4 4
  loc_6AC1C3: PopTmpLdAdStr var_98
  loc_6AC1C6: LitI2_Byte 6
  loc_6AC1C8: PopTmpLdAd2 var_92
  loc_6AC1CB: ImpAdLdRf MemVar_74C7D0
  loc_6AC1CE: NewIfNullPr clsMsg
  loc_6AC1D1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC1D6: ILdRf var_1E0
  loc_6AC1D9: FLdPr Me
  loc_6AC1DC: MemStStrCopy
  loc_6AC1E0: FFreeStr var_9C = ""
  loc_6AC1E7: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC1FE: FLdRfVar var_1E0
  loc_6AC201: LitVar_Missing var_1DC
  loc_6AC204: LitVar_Missing var_1BC
  loc_6AC207: LitVar_Missing var_19C
  loc_6AC20A: LitVar_Missing var_17C
  loc_6AC20D: LitVar_Missing var_15C
  loc_6AC210: LitVar_Missing var_13C
  loc_6AC213: LitVar_Missing var_11C
  loc_6AC216: LitVar_Missing var_FC
  loc_6AC219: LitVar_Missing var_DC
  loc_6AC21C: LitVar_Missing var_BC
  loc_6AC21F: LitStr "At. Sr. Operador"
  loc_6AC222: FStStrCopy var_9C
  loc_6AC225: FLdRfVar var_9C
  loc_6AC228: LitI4 6
  loc_6AC22D: PopTmpLdAdStr var_98
  loc_6AC230: LitI2_Byte 6
  loc_6AC232: PopTmpLdAd2 var_92
  loc_6AC235: ImpAdLdRf MemVar_74C7D0
  loc_6AC238: NewIfNullPr clsMsg
  loc_6AC23B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC240: ILdRf var_1E0
  loc_6AC243: FLdPr Me
  loc_6AC246: MemStStrCopy
  loc_6AC24A: FFreeStr var_9C = ""
  loc_6AC251: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC268: FLdRfVar var_1E0
  loc_6AC26B: LitVar_Missing var_1DC
  loc_6AC26E: LitVar_Missing var_1BC
  loc_6AC271: LitVar_Missing var_19C
  loc_6AC274: LitVar_Missing var_17C
  loc_6AC277: LitVar_Missing var_15C
  loc_6AC27A: LitVar_Missing var_13C
  loc_6AC27D: LitVar_Missing var_11C
  loc_6AC280: LitVar_Missing var_FC
  loc_6AC283: LitVar_Missing var_DC
  loc_6AC286: LitVar_Missing var_BC
  loc_6AC289: LitStr "Chequee que la impresora tenga papel y este en READY."
  loc_6AC28C: FStStrCopy var_9C
  loc_6AC28F: FLdRfVar var_9C
  loc_6AC292: LitI4 7
  loc_6AC297: PopTmpLdAdStr var_98
  loc_6AC29A: LitI2_Byte 6
  loc_6AC29C: PopTmpLdAd2 var_92
  loc_6AC29F: ImpAdLdRf MemVar_74C7D0
  loc_6AC2A2: NewIfNullPr clsMsg
  loc_6AC2A5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC2AA: ILdRf var_1E0
  loc_6AC2AD: FLdPr Me
  loc_6AC2B0: MemStStrCopy
  loc_6AC2B4: FFreeStr var_9C = ""
  loc_6AC2BB: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC2D2: FLdRfVar var_1E0
  loc_6AC2D5: LitVar_Missing var_1DC
  loc_6AC2D8: LitVar_Missing var_1BC
  loc_6AC2DB: LitVar_Missing var_19C
  loc_6AC2DE: LitVar_Missing var_17C
  loc_6AC2E1: LitVar_Missing var_15C
  loc_6AC2E4: LitVar_Missing var_13C
  loc_6AC2E7: LitVar_Missing var_11C
  loc_6AC2EA: LitVar_Missing var_FC
  loc_6AC2ED: LitVar_Missing var_DC
  loc_6AC2F0: LitVar_Missing var_BC
  loc_6AC2F3: LitStr "Error Número: "
  loc_6AC2F6: FStStrCopy var_9C
  loc_6AC2F9: FLdRfVar var_9C
  loc_6AC2FC: LitI4 8
  loc_6AC301: PopTmpLdAdStr var_98
  loc_6AC304: LitI2_Byte 6
  loc_6AC306: PopTmpLdAd2 var_92
  loc_6AC309: ImpAdLdRf MemVar_74C7D0
  loc_6AC30C: NewIfNullPr clsMsg
  loc_6AC30F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC314: ILdRf var_1E0
  loc_6AC317: FLdPr Me
  loc_6AC31A: MemStStrCopy
  loc_6AC31E: FFreeStr var_9C = ""
  loc_6AC325: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC33C: FLdRfVar var_1E0
  loc_6AC33F: LitVar_Missing var_1DC
  loc_6AC342: LitVar_Missing var_1BC
  loc_6AC345: LitVar_Missing var_19C
  loc_6AC348: LitVar_Missing var_17C
  loc_6AC34B: LitVar_Missing var_15C
  loc_6AC34E: LitVar_Missing var_13C
  loc_6AC351: LitVar_Missing var_11C
  loc_6AC354: LitVar_Missing var_FC
  loc_6AC357: LitVar_Missing var_DC
  loc_6AC35A: LitVar_Missing var_BC
  loc_6AC35D: LitStr "Descripción: "
  loc_6AC360: FStStrCopy var_9C
  loc_6AC363: FLdRfVar var_9C
  loc_6AC366: LitI4 9
  loc_6AC36B: PopTmpLdAdStr var_98
  loc_6AC36E: LitI2_Byte 6
  loc_6AC370: PopTmpLdAd2 var_92
  loc_6AC373: ImpAdLdRf MemVar_74C7D0
  loc_6AC376: NewIfNullPr clsMsg
  loc_6AC379: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC37E: ILdRf var_1E0
  loc_6AC381: FLdPr Me
  loc_6AC384: MemStStrCopy
  loc_6AC388: FFreeStr var_9C = ""
  loc_6AC38F: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC3A6: FLdRfVar var_1E0
  loc_6AC3A9: LitVar_Missing var_1DC
  loc_6AC3AC: LitVar_Missing var_1BC
  loc_6AC3AF: LitVar_Missing var_19C
  loc_6AC3B2: LitVar_Missing var_17C
  loc_6AC3B5: LitVar_Missing var_15C
  loc_6AC3B8: LitVar_Missing var_13C
  loc_6AC3BB: LitVar_Missing var_11C
  loc_6AC3BE: LitVar_Missing var_FC
  loc_6AC3C1: LitVar_Missing var_DC
  loc_6AC3C4: LitVar_Missing var_BC
  loc_6AC3C7: LitStr "Error en la impresora"
  loc_6AC3CA: FStStrCopy var_9C
  loc_6AC3CD: FLdRfVar var_9C
  loc_6AC3D0: LitI4 &HA
  loc_6AC3D5: PopTmpLdAdStr var_98
  loc_6AC3D8: LitI2_Byte 6
  loc_6AC3DA: PopTmpLdAd2 var_92
  loc_6AC3DD: ImpAdLdRf MemVar_74C7D0
  loc_6AC3E0: NewIfNullPr clsMsg
  loc_6AC3E3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC3E8: ILdRf var_1E0
  loc_6AC3EB: FLdPr Me
  loc_6AC3EE: MemStStrCopy
  loc_6AC3F2: FFreeStr var_9C = ""
  loc_6AC3F9: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC410: FLdPr Me
  loc_6AC413: MemLdStr strNotification
  loc_6AC416: FLdPrThis
  loc_6AC417: VCallAd Control_ID_Label1
  loc_6AC41A: FStAdFunc var_1E4
  loc_6AC41D: FLdPr var_1E4
  loc_6AC420: Me.Caption = from_stack_1
  loc_6AC425: FFree1Ad var_1E4
  loc_6AC428: FLdPr Me
  loc_6AC42B: MemLdStr strStationID
  loc_6AC42E: FLdPrThis
  loc_6AC42F: VCallAd Control_ID_Label2
  loc_6AC432: FStAdFunc var_1E4
  loc_6AC435: FLdPr var_1E4
  loc_6AC438: Me.Caption = from_stack_1
  loc_6AC43D: FFree1Ad var_1E4
  loc_6AC440: FLdPr Me
  loc_6AC443: MemLdStr strCompany
  loc_6AC446: FLdPrThis
  loc_6AC447: VCallAd Control_ID_Label3
  loc_6AC44A: FStAdFunc var_1E4
  loc_6AC44D: FLdPr var_1E4
  loc_6AC450: Me.Caption = from_stack_1
  loc_6AC455: FFree1Ad var_1E4
  loc_6AC458: FLdPr Me
  loc_6AC45B: MemLdStr strHelp
  loc_6AC45E: FLdPrThis
  loc_6AC45F: VCallAd Control_ID_Label9
  loc_6AC462: FStAdFunc var_1E4
  loc_6AC465: FLdPr var_1E4
  loc_6AC468: Me.Caption = from_stack_1
  loc_6AC46D: FFree1Ad var_1E4
  loc_6AC470: FLdRfVar var_1E0
  loc_6AC473: LitVar_Missing var_1DC
  loc_6AC476: LitVar_Missing var_1BC
  loc_6AC479: LitVar_Missing var_19C
  loc_6AC47C: LitVar_Missing var_17C
  loc_6AC47F: LitVar_Missing var_15C
  loc_6AC482: LitVar_Missing var_13C
  loc_6AC485: LitVar_Missing var_11C
  loc_6AC488: LitVar_Missing var_FC
  loc_6AC48B: LitVar_Missing var_DC
  loc_6AC48E: LitVar_Missing var_BC
  loc_6AC491: LitStr "&Continuar"
  loc_6AC494: FStStrCopy var_9C
  loc_6AC497: FLdRfVar var_9C
  loc_6AC49A: LitI4 5
  loc_6AC49F: PopTmpLdAdStr var_98
  loc_6AC4A2: LitI2_Byte 6
  loc_6AC4A4: PopTmpLdAd2 var_92
  loc_6AC4A7: ImpAdLdRf MemVar_74C7D0
  loc_6AC4AA: NewIfNullPr clsMsg
  loc_6AC4AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AC4B2: ILdRf var_1E0
  loc_6AC4B5: FLdPrThis
  loc_6AC4B6: VCallAd Control_ID_cmdContinuar
  loc_6AC4B9: FStAdFunc var_1E4
  loc_6AC4BC: FLdPr var_1E4
  loc_6AC4BF: Me.Caption = from_stack_1
  loc_6AC4C4: FFreeStr var_9C = ""
  loc_6AC4CB: FFree1Ad var_1E4
  loc_6AC4CE: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_6AC4E5: FLdRfVar var_BC
  loc_6AC4E8: FLdRfVar var_90
  loc_6AC4EB: FLdRfVar var_1E4
  loc_6AC4EE: ImpAdLdRf MemVar_74C760
  loc_6AC4F1: NewIfNullPr Formx
  loc_6AC4F4: from_stack_1v = Formx.global_4589716Get()
  loc_6AC4F9: FLdPr var_1E4
  loc_6AC4FC: Call 0.Method_arg_204 ()
  loc_6AC501: FLdRfVar var_BC
  loc_6AC504: NotVar var_DC
  loc_6AC508: CBoolVarNull
  loc_6AC50A: FFree1Ad var_1E4
  loc_6AC50D: FFree1Var var_BC = ""
  loc_6AC510: BranchF loc_6AC53F
  loc_6AC513: FLdRfVar var_BC
  loc_6AC516: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6AC51B: FLdRfVar var_BC
  loc_6AC51E: CBoolVarNull
  loc_6AC520: FFree1Var var_BC = ""
  loc_6AC523: BranchF loc_6AC53C
  loc_6AC526: ILdRf Me
  loc_6AC529: FStAdNoPop
  loc_6AC52D: ImpAdLdRf MemVar_7520D4
  loc_6AC530: NewIfNullPr Global
  loc_6AC533: Global.Unload from_stack_1
  loc_6AC538: FFree1Ad var_1E4
  loc_6AC53B: ExitProcHresult
  loc_6AC53C: Branch loc_6AC4E5
  loc_6AC53F: FLdRfVar var_90
  loc_6AC542: CVarRef
  loc_6AC547: FLdRfVar var_BC
  loc_6AC54A: ImpAdCallFPR4  = Trim()
  loc_6AC54F: FLdRfVar var_BC
  loc_6AC552: CStrVarTmp
  loc_6AC553: FStStr var_90
  loc_6AC556: FFree1Var var_BC = ""
  loc_6AC559: LitI2_Byte 0
  loc_6AC55B: PopTmpLdAd2 var_92
  loc_6AC55E: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_6AC563: LitI2_Byte &HFF
  loc_6AC565: FLdPrThis
  loc_6AC566: VCallAd Control_ID_Reloj
  loc_6AC569: FStAdFunc var_1E4
  loc_6AC56C: FLdPr var_1E4
  loc_6AC56F: Me.Enabled = from_stack_1b
  loc_6AC574: FFree1Ad var_1E4
  loc_6AC577: FLdPrThis
  loc_6AC578: VCallAd Control_ID_Picture1
  loc_6AC57B: FStAdFunc var_1EC
  loc_6AC57E: FLdRfVar var_9C
  loc_6AC581: FLdRfVar var_1E4
  loc_6AC584: ImpAdLdRf MemVar_7520D4
  loc_6AC587: NewIfNullPr Global
  loc_6AC58A:  = Global.App
  loc_6AC58F: FLdPr var_1E4
  loc_6AC592:  = App.Path
  loc_6AC597: ILdRf var_9C
  loc_6AC59A: LitStr "\Logo_Compania.bmp"
  loc_6AC59D: ConcatStr
  loc_6AC59E: FStStrNoPop var_1E0
  loc_6AC5A1: FLdZeroAd var_1EC
  loc_6AC5A4: FStAdFunc var_1E8
  loc_6AC5A7: FLdRfVar var_1E8
  loc_6AC5AA: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6AC5AF: FFreeStr var_9C = ""
  loc_6AC5B6: FFreeAd var_1E4 = "": var_1E8 = ""
  loc_6AC5BF: FLdPrThis
  loc_6AC5C0: VCallAd Control_ID_Picture2
  loc_6AC5C3: FStAdFunc var_1EC
  loc_6AC5C6: FLdRfVar var_9C
  loc_6AC5C9: FLdRfVar var_1E4
  loc_6AC5CC: ImpAdLdRf MemVar_7520D4
  loc_6AC5CF: NewIfNullPr Global
  loc_6AC5D2:  = Global.App
  loc_6AC5D7: FLdPr var_1E4
  loc_6AC5DA:  = App.Path
  loc_6AC5DF: ILdRf var_9C
  loc_6AC5E2: LitStr "\Logo_Proyecto.bmp"
  loc_6AC5E5: ConcatStr
  loc_6AC5E6: FStStrNoPop var_1E0
  loc_6AC5E9: FLdZeroAd var_1EC
  loc_6AC5EC: FStAdFunc var_1E8
  loc_6AC5EF: FLdRfVar var_1E8
  loc_6AC5F2: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_6AC5F7: FFreeStr var_9C = ""
  loc_6AC5FE: FFreeAd var_1E4 = "": var_1E8 = ""
  loc_6AC607: FLdRfVar var_BC
  loc_6AC60A: ImpAdCallFPR4  = Date
  loc_6AC60F: LitI4 1
  loc_6AC614: LitI4 1
  loc_6AC619: LitVarStr var_AC, "dd/mm/yyyy"
  loc_6AC61E: FStVarCopyObj var_DC
  loc_6AC621: FLdRfVar var_DC
  loc_6AC624: FLdRfVar var_BC
  loc_6AC627: ImpAdCallI2 Format$(, )
  loc_6AC62C: FStStrNoPop var_9C
  loc_6AC62F: FLdPrThis
  loc_6AC630: VCallAd Control_ID_lFecha
  loc_6AC633: FStAdFunc var_1E4
  loc_6AC636: FLdPr var_1E4
  loc_6AC639: Me.Caption = from_stack_1
  loc_6AC63E: FFree1Str var_9C
  loc_6AC641: FFree1Ad var_1E4
  loc_6AC644: FFreeVar var_BC = ""
  loc_6AC64B: FLdRfVar var_BC
  loc_6AC64E: ImpAdCallFPR4  = Time
  loc_6AC653: LitI4 1
  loc_6AC658: LitI4 1
  loc_6AC65D: LitVarStr var_AC, "hh:mm"
  loc_6AC662: FStVarCopyObj var_DC
  loc_6AC665: FLdRfVar var_DC
  loc_6AC668: FLdRfVar var_BC
  loc_6AC66B: ImpAdCallI2 Format$(, )
  loc_6AC670: FStStrNoPop var_9C
  loc_6AC673: FLdPrThis
  loc_6AC674: VCallAd Control_ID_lHora
  loc_6AC677: FStAdFunc var_1E4
  loc_6AC67A: FLdPr var_1E4
  loc_6AC67D: Me.Caption = from_stack_1
  loc_6AC682: FFree1Str var_9C
  loc_6AC685: FFree1Ad var_1E4
  loc_6AC688: FFreeVar var_BC = ""
  loc_6AC68F: FLdRfVar var_92
  loc_6AC692: FLdRfVar var_88
  loc_6AC695: FLdRfVar var_1E4
  loc_6AC698: ImpAdLdRf MemVar_74C760
  loc_6AC69B: NewIfNullPr Formx
  loc_6AC69E: from_stack_1v = Formx.global_4589716Get()
  loc_6AC6A3: FLdPr var_1E4
  loc_6AC6A6:  = Formx.Picture
  loc_6AC6AB: FLdI2 var_92
  loc_6AC6AE: NotI4
  loc_6AC6AF: FFree1Ad var_1E4
  loc_6AC6B2: BranchF loc_6AC6E1
  loc_6AC6B5: FLdRfVar var_BC
  loc_6AC6B8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6AC6BD: FLdRfVar var_BC
  loc_6AC6C0: CBoolVarNull
  loc_6AC6C2: FFree1Var var_BC = ""
  loc_6AC6C5: BranchF loc_6AC6DE
  loc_6AC6C8: ILdRf Me
  loc_6AC6CB: FStAdNoPop
  loc_6AC6CF: ImpAdLdRf MemVar_7520D4
  loc_6AC6D2: NewIfNullPr Global
  loc_6AC6D5: Global.Unload from_stack_1
  loc_6AC6DA: FFree1Ad var_1E4
  loc_6AC6DD: ExitProcHresult
  loc_6AC6DE: Branch loc_6AC68F
  loc_6AC6E1: LitVarI2 var_BC, 6
  loc_6AC6E6: LitI4 1
  loc_6AC6EB: FLdRfVar var_88
  loc_6AC6EE: CVarRef
  loc_6AC6F3: FLdRfVar var_DC
  loc_6AC6F6: ImpAdCallFPR4  = Mid(, , )
  loc_6AC6FB: FLdRfVar var_DC
  loc_6AC6FE: CStrVarVal var_9C
  loc_6AC702: ImpAdCallFPR4 push Val()
  loc_6AC707: CStrR8
  loc_6AC709: FStStrNoPop var_1E0
  loc_6AC70C: FLdPrThis
  loc_6AC70D: VCallAd Control_ID_lNroEstacion
  loc_6AC710: FStAdFunc var_1E4
  loc_6AC713: FLdPr var_1E4
  loc_6AC716: Me.Caption = from_stack_1
  loc_6AC71B: FFreeStr var_9C = ""
  loc_6AC722: FFree1Ad var_1E4
  loc_6AC725: FFreeVar var_BC = ""
  loc_6AC72C: LitVarI2 var_BC, 30
  loc_6AC731: LitI4 7
  loc_6AC736: FLdRfVar var_88
  loc_6AC739: CVarRef
  loc_6AC73E: FLdRfVar var_DC
  loc_6AC741: ImpAdCallFPR4  = Mid(, , )
  loc_6AC746: FLdRfVar var_DC
  loc_6AC749: FLdRfVar var_FC
  loc_6AC74C: ImpAdCallFPR4  = Trim()
  loc_6AC751: FLdRfVar var_FC
  loc_6AC754: CStrVarVal var_9C
  loc_6AC758: FLdPrThis
  loc_6AC759: VCallAd Control_ID_lRazonSocial
  loc_6AC75C: FStAdFunc var_1E4
  loc_6AC75F: FLdPr var_1E4
  loc_6AC762: Me.Caption = from_stack_1
  loc_6AC767: FFree1Str var_9C
  loc_6AC76A: FFree1Ad var_1E4
  loc_6AC76D: FFreeVar var_BC = "": var_DC = ""
  loc_6AC776: ILdRf var_90
  loc_6AC779: from_stack_2v = Proc_38_22_645B14(from_stack_1v)
  loc_6AC77E: ILdRf var_90
  loc_6AC781: from_stack_2v = Proc_38_23_6933D8(from_stack_1v)
  loc_6AC786: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5FC72C
  'Data Table: 42C560
  loc_5FC678: FLdRfVar var_9C
  loc_5FC67B: ImpAdCallFPR4  = Date
  loc_5FC680: LitI4 1
  loc_5FC685: LitI4 1
  loc_5FC68A: LitVarStr var_AC, "dd/mm/yyyy"
  loc_5FC68F: FStVarCopyObj var_BC
  loc_5FC692: FLdRfVar var_BC
  loc_5FC695: FLdRfVar var_9C
  loc_5FC698: ImpAdCallI2 Format$(, )
  loc_5FC69D: FStStrNoPop var_C0
  loc_5FC6A0: FLdPrThis
  loc_5FC6A1: VCallAd Control_ID_lFecha
  loc_5FC6A4: FStAdFunc var_C4
  loc_5FC6A7: FLdPr var_C4
  loc_5FC6AA: Me.Caption = from_stack_1
  loc_5FC6AF: FFree1Str var_C0
  loc_5FC6B2: FFree1Ad var_C4
  loc_5FC6B5: FFreeVar var_9C = ""
  loc_5FC6BC: FLdRfVar var_9C
  loc_5FC6BF: ImpAdCallFPR4  = Time
  loc_5FC6C4: LitI4 1
  loc_5FC6C9: LitI4 1
  loc_5FC6CE: LitVarStr var_AC, "hh:mm"
  loc_5FC6D3: FStVarCopyObj var_BC
  loc_5FC6D6: FLdRfVar var_BC
  loc_5FC6D9: FLdRfVar var_9C
  loc_5FC6DC: ImpAdCallI2 Format$(, )
  loc_5FC6E1: FStStrNoPop var_C0
  loc_5FC6E4: FLdPrThis
  loc_5FC6E5: VCallAd Control_ID_lHora
  loc_5FC6E8: FStAdFunc var_C4
  loc_5FC6EB: FLdPr var_C4
  loc_5FC6EE: Me.Caption = from_stack_1
  loc_5FC6F3: FFree1Str var_C0
  loc_5FC6F6: FFree1Ad var_C4
  loc_5FC6F9: FFreeVar var_9C = ""
  loc_5FC700: FLdPrThis
  loc_5FC701: VCallAd Control_ID_Reloj
  loc_5FC704: FStAdFunc var_CC
  loc_5FC707: ILdRf Me
  loc_5FC70A: CastAd
  loc_5FC70D: FStAdFunc var_C8
  loc_5FC710: FLdRfVar var_C8
  loc_5FC713: FLdZeroAd var_CC
  loc_5FC716: FStAdFunc var_C4
  loc_5FC719: FLdRfVar var_C4
  loc_5FC71C: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_5FC721: FFreeAd var_C4 = "": var_C8 = ""
  loc_5FC72A: ExitProcHresult
End Sub

Public Function strNotificationGet() '42CE60
  strNotificationGet = strNotification
End Function

Public Sub strNotificationPut(Value) '42CE6F
  strNotification = Value
End Sub

Public Function strStationIDGet() '42CE7E
  strStationIDGet = strStationID
End Function

Public Sub strStationIDPut(Value) '42CE8D
  strStationID = Value
End Sub

Public Function strCompanyGet() '42CE9C
  strCompanyGet = strCompany
End Function

Public Sub strCompanyPut(Value) '42CEAB
  strCompany = Value
End Sub

Public Function strHelpGet() '42CEBA
  strHelpGet = strHelp
End Function

Public Sub strHelpPut(Value) '42CEC9
  strHelp = Value
End Sub

Public Function strAttentionGet() '42CED8
  strAttentionGet = strAttention
End Function

Public Sub strAttentionPut(Value) '42CEE7
  strAttention = Value
End Sub

Public Function strPrintError1Get() '42CEF6
  strPrintError1Get = strPrintError1
End Function

Public Sub strPrintError1Put(Value) '42CF05
  strPrintError1 = Value
End Sub

Public Function strPrintError2Get() '42CF14
  strPrintError2Get = strPrintError2
End Function

Public Sub strPrintError2Put(Value) '42CF23
  strPrintError2 = Value
End Sub

Public Function strPrintError3Get() '42CF32
  strPrintError3Get = strPrintError3
End Function

Public Sub strPrintError3Put(Value) '42CF41
  strPrintError3 = Value
End Sub

Public Function strPrintError4Get() '42CF50
  strPrintError4Get = strPrintError4
End Function

Public Sub strPrintError4Put(Value) '42CF5F
  strPrintError4 = Value
End Sub

Private Function Proc_38_22_645B14(arg_C) '645B14
  'Data Table: 42C560
  loc_6458B8: ILdRf arg_C
  loc_6458BB: FStStrCopy var_88
  loc_6458BE: FLdPrThis
  loc_6458BF: VCallAd Control_ID_lstTexto
  loc_6458C2: FStAdFunc var_94
  loc_6458C5: FLdPr var_94
  loc_6458C8: Me.Clear
  loc_6458CD: FFree1Ad var_94
  loc_6458D0: LitVarStr var_A8, "Arial"
  loc_6458D5: PopAdLdVar
  loc_6458D6: FLdRfVar var_98
  loc_6458D9: FLdPrThis
  loc_6458DA: VCallAd Control_ID_lstTexto
  loc_6458DD: FStAdFunc var_94
  loc_6458E0: FLdPr var_94
  loc_6458E3:  = Me.Font
  loc_6458E8: FLdPr var_98
  loc_6458EB: LateIdSt
  loc_6458F0: FFreeAd var_94 = ""
  loc_6458F7: LitVar_TRUE var_A8
  loc_6458FA: PopAdLdVar
  loc_6458FB: FLdRfVar var_98
  loc_6458FE: FLdPrThis
  loc_6458FF: VCallAd Control_ID_lstTexto
  loc_645902: FStAdFunc var_94
  loc_645905: FLdPr var_94
  loc_645908:  = Me.Font
  loc_64590D: FLdPr var_98
  loc_645910: LateIdSt
  loc_645915: FFreeAd var_94 = ""
  loc_64591C: LitVarI2 var_A8, 11
  loc_645921: PopAdLdVar
  loc_645922: FLdRfVar var_98
  loc_645925: FLdPrThis
  loc_645926: VCallAd Control_ID_lstTexto
  loc_645929: FStAdFunc var_94
  loc_64592C: FLdPr var_94
  loc_64592F:  = Me.Font
  loc_645934: FLdPr var_98
  loc_645937: LateIdSt
  loc_64593C: FFreeAd var_94 = ""
  loc_645943: LitI2_Byte 1
  loc_645945: FStI2 var_8A
  loc_645948: ILdRf var_88
  loc_64594B: LitStr vbNullString
  loc_64594E: NeStr
  loc_645950: BranchF loc_645B12
  loc_645953: LitI4 1
  loc_645958: ILdRf var_88
  loc_64595B: CVarStr var_A8
  loc_64595E: LitI4 &HD
  loc_645963: FLdRfVar var_B8
  loc_645966: ImpAdCallFPR4  = Chr()
  loc_64596B: FLdRfVar var_B8
  loc_64596E: LitI4 0
  loc_645973: FnInStr4Var
  loc_645977: LitVarI2 var_D8, 0
  loc_64597C: HardType
  loc_64597D: EqVarBool
  loc_64597F: FFreeVar var_B8 = ""
  loc_645986: BranchF loc_645A4F
  loc_645989: LitI4 1
  loc_64598E: ILdRf var_88
  loc_645991: CVarStr var_A8
  loc_645994: LitI4 &HA
  loc_645999: FLdRfVar var_B8
  loc_64599C: ImpAdCallFPR4  = Chr()
  loc_6459A1: FLdRfVar var_B8
  loc_6459A4: LitI4 0
  loc_6459A9: FnInStr4Var
  loc_6459AD: LitVarI2 var_D8, 0
  loc_6459B2: HardType
  loc_6459B3: EqVarBool
  loc_6459B5: FFreeVar var_B8 = ""
  loc_6459BC: BranchF loc_6459D0
  loc_6459BF: ILdRf var_88
  loc_6459C2: FnLenStr
  loc_6459C3: CI2I4
  loc_6459C4: FStI2 var_8A
  loc_6459C7: ILdRf var_88
  loc_6459CA: FStStrCopy var_90
  loc_6459CD: Branch loc_645A4C
  loc_6459D0: LitI4 1
  loc_6459D5: ILdRf var_88
  loc_6459D8: CVarStr var_A8
  loc_6459DB: LitI4 &HA
  loc_6459E0: FLdRfVar var_B8
  loc_6459E3: ImpAdCallFPR4  = Chr()
  loc_6459E8: FLdRfVar var_B8
  loc_6459EB: LitI4 0
  loc_6459F0: FnInStr4Var
  loc_6459F4: LitVarI2 var_D8, 1
  loc_6459F9: SubVar var_E8
  loc_6459FD: FStVar var_F8
  loc_645A01: FLdRfVar var_F8
  loc_645A04: LitI4 1
  loc_645A09: ILdRf var_88
  loc_645A0C: ImpAdCallI2 Mid$(, , )
  loc_645A11: FStStr var_90
  loc_645A14: FFreeVar var_B8 = "": var_C8 = ""
  loc_645A1D: LitI4 1
  loc_645A22: ILdRf var_88
  loc_645A25: CVarStr var_A8
  loc_645A28: LitI4 &HA
  loc_645A2D: FLdRfVar var_B8
  loc_645A30: ImpAdCallFPR4  = Chr()
  loc_645A35: FLdRfVar var_B8
  loc_645A38: LitI4 0
  loc_645A3D: FnInStr4Var
  loc_645A41: CI2Var
  loc_645A42: FStI2 var_8A
  loc_645A45: FFreeVar var_B8 = ""
  loc_645A4C: Branch loc_645ACB
  loc_645A4F: LitI4 1
  loc_645A54: ILdRf var_88
  loc_645A57: CVarStr var_A8
  loc_645A5A: LitI4 &HD
  loc_645A5F: FLdRfVar var_B8
  loc_645A62: ImpAdCallFPR4  = Chr()
  loc_645A67: FLdRfVar var_B8
  loc_645A6A: LitI4 0
  loc_645A6F: FnInStr4Var
  loc_645A73: LitVarI2 var_D8, 1
  loc_645A78: SubVar var_E8
  loc_645A7C: FStVar var_F8
  loc_645A80: FLdRfVar var_F8
  loc_645A83: LitI4 1
  loc_645A88: ILdRf var_88
  loc_645A8B: ImpAdCallI2 Mid$(, , )
  loc_645A90: FStStr var_90
  loc_645A93: FFreeVar var_B8 = "": var_C8 = ""
  loc_645A9C: LitI4 1
  loc_645AA1: ILdRf var_88
  loc_645AA4: CVarStr var_A8
  loc_645AA7: LitI4 &HD
  loc_645AAC: FLdRfVar var_B8
  loc_645AAF: ImpAdCallFPR4  = Chr()
  loc_645AB4: FLdRfVar var_B8
  loc_645AB7: LitI4 0
  loc_645ABC: FnInStr4Var
  loc_645AC0: CI2Var
  loc_645AC1: FStI2 var_8A
  loc_645AC4: FFreeVar var_B8 = ""
  loc_645ACB: ILdRf var_88
  loc_645ACE: FnLenStr
  loc_645ACF: CVarI4
  loc_645AD3: FLdI2 var_8A
  loc_645AD6: LitI2_Byte 1
  loc_645AD8: AddI2
  loc_645AD9: CI4UI1
  loc_645ADA: ILdRf var_88
  loc_645ADD: ImpAdCallI2 Mid$(, , )
  loc_645AE2: FStStr var_88
  loc_645AE5: FFree1Var var_B8 = ""
  loc_645AE8: FLdPrThis
  loc_645AE9: VCallAd Control_ID_lstTexto
  loc_645AEC: FStAdFunc var_98
  loc_645AEF: LitI2_Byte &H50
  loc_645AF1: ILdRf var_90
  loc_645AF4: FLdZeroAd var_98
  loc_645AF7: FStAdFunc var_94
  loc_645AFA: FLdRfVar var_94
  loc_645AFD: FLdRfVar var_B8
  loc_645B00: ImpAdCallFPR4  = Proc_65_1_5F7340(, , )
  loc_645B05: FFreeAd var_94 = ""
  loc_645B0C: FFree1Var var_B8 = ""
  loc_645B0F: Branch loc_645948
  loc_645B12: ExitProcHresult
End Function

Private Function Proc_38_23_6933D8(arg_C) '6933D8
  'Data Table: 42C560
  loc_692E06: ILdRf arg_C
  loc_692E09: FStStrCopy var_88
  loc_692E0E: FLdRfVar var_98
  loc_692E11: ImpAdLdRf MemVar_7520D4
  loc_692E14: NewIfNullPr Global
  loc_692E17:  = Global.Printer
  loc_692E1C: FLdZeroAd var_98
  loc_692E1F: FStAdFunc var_94
  loc_692E24: OnErrorGoto loc_6932B3
  loc_692E29: LitVarStr var_A8, "Courier New"
  loc_692E2E: PopAdLdVar
  loc_692E2F: FLdPr var_94
  loc_692E32: LateIdSt
  loc_692E39: LitI2_Byte &HB
  loc_692E3B: CR8I2
  loc_692E3C: CVarR4
  loc_692E40: PopAdLdVar
  loc_692E41: FLdPr var_94
  loc_692E44: LateIdSt
  loc_692E4B: LitI4 6
  loc_692E50: CI2I4
  loc_692E51: CVarI2 var_A8
  loc_692E54: PopAdLdVar
  loc_692E55: FLdPr var_94
  loc_692E58: LateIdSt
  loc_692E5F: FLdRfVar var_AC
  loc_692E62: FLdPrThis
  loc_692E63: VCallAd Control_ID_Picture1
  loc_692E66: FStAdFunc var_98
  loc_692E69: FLdPr var_98
  loc_692E6C:  = Me.Picture
  loc_692E71: FLdPr var_AC
  loc_692E74: LateIdLdVar var_BC DispID_0 0
  loc_692E7B: CI4Var
  loc_692E7D: LitI4 0
  loc_692E82: NeI4
  loc_692E83: FFreeAd var_98 = ""
  loc_692E8A: FFree1Var var_BC = ""
  loc_692E8D: BranchF loc_692EE7
  loc_692E92: FLdRfVar var_AC
  loc_692E95: FLdPrThis
  loc_692E96: VCallAd Control_ID_Picture1
  loc_692E99: FStAdFunc var_98
  loc_692E9C: FLdPr var_98
  loc_692E9F:  = Me.Picture
  loc_692EA4: FLdZeroAd var_AC
  loc_692EA7: CVarAd
  loc_692EAB: PopAdLdVar
  loc_692EAC: LitI2_Byte 1
  loc_692EAE: CR8I2
  loc_692EAF: CVarR4
  loc_692EB3: PopAdLdVar
  loc_692EB4: LitI2_Byte &HA
  loc_692EB6: CR8I2
  loc_692EB7: CVarR4
  loc_692EBB: PopAdLdVar
  loc_692EBC: LitVarR8
  loc_692EC8: PopAdLdVar
  loc_692EC9: LitVarR8
  loc_692ED5: PopAdLdVar
  loc_692ED6: FLdPr var_94
  loc_692ED9: LateIdCall
  loc_692EE1: FFree1Ad var_98
  loc_692EE4: FFree1Var var_BC = ""
  loc_692EEB: FLdRfVar var_AC
  loc_692EEE: FLdPrThis
  loc_692EEF: VCallAd Control_ID_Picture2
  loc_692EF2: FStAdFunc var_98
  loc_692EF5: FLdPr var_98
  loc_692EF8:  = Me.Picture
  loc_692EFD: FLdPr var_AC
  loc_692F00: LateIdLdVar var_BC DispID_0 0
  loc_692F07: CI4Var
  loc_692F09: LitI4 0
  loc_692F0E: NeI4
  loc_692F0F: FFreeAd var_98 = ""
  loc_692F16: FFree1Var var_BC = ""
  loc_692F19: BranchF loc_692F74
  loc_692F1E: FLdRfVar var_AC
  loc_692F21: FLdPrThis
  loc_692F22: VCallAd Control_ID_Picture2
  loc_692F25: FStAdFunc var_98
  loc_692F28: FLdPr var_98
  loc_692F2B:  = Me.Picture
  loc_692F30: FLdZeroAd var_AC
  loc_692F33: CVarAd
  loc_692F37: PopAdLdVar
  loc_692F38: LitI2 150
  loc_692F3B: CR8I2
  loc_692F3C: CVarR4
  loc_692F40: PopAdLdVar
  loc_692F41: LitI2_Byte &HA
  loc_692F43: CR8I2
  loc_692F44: CVarR4
  loc_692F48: PopAdLdVar
  loc_692F49: LitVarR8
  loc_692F55: PopAdLdVar
  loc_692F56: LitVarR8
  loc_692F62: PopAdLdVar
  loc_692F63: FLdPr var_94
  loc_692F66: LateIdCall
  loc_692F6E: FFree1Ad var_98
  loc_692F71: FFree1Var var_BC = ""
  loc_692F78: LitI2_Byte 1
  loc_692F7A: FLdRfVar var_8A
  loc_692F7D: LitI2_Byte 8
  loc_692F7F: ForI2 var_F0
  loc_692F87: ILdRf var_94
  loc_692F8A: PrintObject
  loc_692F92: FLdRfVar var_8A
  loc_692F95: NextI2 var_F0, loc_692F85
  loc_692F9C: FLdRfVar var_F4
  loc_692F9F: FLdPrThis
  loc_692FA0: VCallAd Control_ID_lFecha
  loc_692FA3: FStAdFunc var_98
  loc_692FA6: FLdPr var_98
  loc_692FA9:  = Me.Caption
  loc_692FAE: FLdRfVar var_F8
  loc_692FB1: FLdPrThis
  loc_692FB2: VCallAd Control_ID_lHora
  loc_692FB5: FStAdFunc var_AC
  loc_692FB8: FLdPr var_AC
  loc_692FBB:  = Me.Caption
  loc_692FC0: ILdRf var_F8
  loc_692FC3: LitI2_Byte &H42
  loc_692FC5: ILdRf var_F4
  loc_692FC8: LitI2_Byte 5
  loc_692FCA: ILdRf var_94
  loc_692FCD: PrintObject
  loc_692FD3: FFreeStr var_F4 = ""
  loc_692FDA: FFreeAd var_98 = ""
  loc_692FE3: FLdPr Me
  loc_692FE6: MemLdStr strNotification
  loc_692FE9: LitI2_Byte &H17
  loc_692FEB: ILdRf var_94
  loc_692FEE: PrintObject
  loc_692FF6: ILdRf var_94
  loc_692FF9: PrintObject
  loc_693001: ILdRf var_94
  loc_693004: PrintObject
  loc_69300C: FLdRfVar var_F4
  loc_69300F: FLdPrThis
  loc_693010: VCallAd Control_ID_lNroEstacion
  loc_693013: FStAdFunc var_98
  loc_693016: FLdPr var_98
  loc_693019:  = Me.Caption
  loc_69301E: ILdRf var_F4
  loc_693021: FLdPr Me
  loc_693024: MemLdStr strStationID
  loc_693027: LitI2_Byte 5
  loc_693029: ILdRf var_94
  loc_69302C: PrintObject
  loc_693032: FFree1Str var_F4
  loc_693035: FFree1Ad var_98
  loc_69303A: FLdRfVar var_F4
  loc_69303D: FLdPrThis
  loc_69303E: VCallAd Control_ID_lRazonSocial
  loc_693041: FStAdFunc var_98
  loc_693044: FLdPr var_98
  loc_693047:  = Me.Caption
  loc_69304C: ILdRf var_F4
  loc_69304F: FLdPr Me
  loc_693052: MemLdStr strCompany
  loc_693055: LitI2_Byte 5
  loc_693057: ILdRf var_94
  loc_69305A: PrintObject
  loc_693060: FFree1Str var_F4
  loc_693063: FFree1Ad var_98
  loc_693068: ILdRf var_94
  loc_69306B: PrintObject
  loc_693073: FLdPr Me
  loc_693076: MemLdStr strAttention
  loc_693079: LitI2_Byte 5
  loc_69307B: ILdRf var_94
  loc_69307E: PrintObject
  loc_693086: ILdRf var_94
  loc_693089: PrintObject
  loc_693091: LitStr "________________________________________________________________________________"
  loc_693094: ILdRf var_94
  loc_693097: PrintObject
  loc_69309F: ILdRf var_94
  loc_6930A2: PrintObject
  loc_6930AA: ILdRf var_94
  loc_6930AD: PrintObject
  loc_6930B5: LitI2_Byte 1
  loc_6930B7: FStI2 var_8A
  loc_6930BC: ILdRf var_88
  loc_6930BF: LitStr vbNullString
  loc_6930C2: NeStr
  loc_6930C4: BranchF loc_6932A3
  loc_6930C9: LitI4 1
  loc_6930CE: ILdRf var_88
  loc_6930D1: CVarStr var_A8
  loc_6930D4: LitI4 &HD
  loc_6930D9: FLdRfVar var_BC
  loc_6930DC: ImpAdCallFPR4  = Chr()
  loc_6930E1: FLdRfVar var_BC
  loc_6930E4: LitI4 0
  loc_6930E9: FnInStr4Var
  loc_6930ED: LitVarI2 var_CC, 0
  loc_6930F2: HardType
  loc_6930F3: EqVarBool
  loc_6930F5: FFreeVar var_BC = ""
  loc_6930FC: BranchF loc_6931D3
  loc_693101: LitI4 1
  loc_693106: ILdRf var_88
  loc_693109: CVarStr var_A8
  loc_69310C: LitI4 &HA
  loc_693111: FLdRfVar var_BC
  loc_693114: ImpAdCallFPR4  = Chr()
  loc_693119: FLdRfVar var_BC
  loc_69311C: LitI4 0
  loc_693121: FnInStr4Var
  loc_693125: LitVarI2 var_CC, 0
  loc_69312A: HardType
  loc_69312B: EqVarBool
  loc_69312D: FFreeVar var_BC = ""
  loc_693134: BranchF loc_69314C
  loc_693139: ILdRf var_88
  loc_69313C: FnLenStr
  loc_69313D: CI2I4
  loc_69313E: FStI2 var_8A
  loc_693143: ILdRf var_88
  loc_693146: FStStrCopy var_90
  loc_693149: Branch loc_6931CE
  loc_693150: LitI4 1
  loc_693155: ILdRf var_88
  loc_693158: CVarStr var_A8
  loc_69315B: LitI4 &HA
  loc_693160: FLdRfVar var_BC
  loc_693163: ImpAdCallFPR4  = Chr()
  loc_693168: FLdRfVar var_BC
  loc_69316B: LitI4 0
  loc_693170: FnInStr4Var
  loc_693174: LitVarI2 var_CC, 1
  loc_693179: SubVar var_118
  loc_69317D: FStVar var_128
  loc_693181: FLdRfVar var_128
  loc_693184: LitI4 1
  loc_693189: ILdRf var_88
  loc_69318C: ImpAdCallI2 Mid$(, , )
  loc_693191: FStStr var_90
  loc_693194: FFreeVar var_BC = "": var_108 = ""
  loc_69319F: LitI4 1
  loc_6931A4: ILdRf var_88
  loc_6931A7: CVarStr var_A8
  loc_6931AA: LitI4 &HA
  loc_6931AF: FLdRfVar var_BC
  loc_6931B2: ImpAdCallFPR4  = Chr()
  loc_6931B7: FLdRfVar var_BC
  loc_6931BA: LitI4 0
  loc_6931BF: FnInStr4Var
  loc_6931C3: CI2Var
  loc_6931C4: FStI2 var_8A
  loc_6931C7: FFreeVar var_BC = ""
  loc_6931D0: Branch loc_693255
  loc_6931D7: LitI4 1
  loc_6931DC: ILdRf var_88
  loc_6931DF: CVarStr var_A8
  loc_6931E2: LitI4 &HD
  loc_6931E7: FLdRfVar var_BC
  loc_6931EA: ImpAdCallFPR4  = Chr()
  loc_6931EF: FLdRfVar var_BC
  loc_6931F2: LitI4 0
  loc_6931F7: FnInStr4Var
  loc_6931FB: LitVarI2 var_CC, 1
  loc_693200: SubVar var_118
  loc_693204: FStVar var_128
  loc_693208: FLdRfVar var_128
  loc_69320B: LitI4 1
  loc_693210: ILdRf var_88
  loc_693213: ImpAdCallI2 Mid$(, , )
  loc_693218: FStStr var_90
  loc_69321B: FFreeVar var_BC = "": var_108 = ""
  loc_693226: LitI4 1
  loc_69322B: ILdRf var_88
  loc_69322E: CVarStr var_A8
  loc_693231: LitI4 &HD
  loc_693236: FLdRfVar var_BC
  loc_693239: ImpAdCallFPR4  = Chr()
  loc_69323E: FLdRfVar var_BC
  loc_693241: LitI4 0
  loc_693246: FnInStr4Var
  loc_69324A: CI2Var
  loc_69324B: FStI2 var_8A
  loc_69324E: FFreeVar var_BC = ""
  loc_693259: ILdRf var_88
  loc_69325C: FnLenStr
  loc_69325D: CVarI4
  loc_693261: FLdI2 var_8A
  loc_693264: LitI2_Byte 1
  loc_693266: AddI2
  loc_693267: CI4UI1
  loc_693268: ILdRf var_88
  loc_69326B: ImpAdCallI2 Mid$(, , )
  loc_693270: FStStr var_88
  loc_693273: FFree1Var var_BC = ""
  loc_693278: LitI2_Byte &H50
  loc_69327A: ILdRf var_90
  loc_69327D: ILdRf var_94
  loc_693280: FStAd var_98 
  loc_693284: FLdRfVar var_98
  loc_693287: FLdRfVar var_BC
  loc_69328A: ImpAdCallFPR4  = Proc_65_1_5F7340(, , )
  loc_69328F: ILdRf var_98
  loc_693292: CastAd
  loc_693295: FStAdFunc var_94
  loc_693298: FFree1Ad var_98
  loc_69329B: FFree1Var var_BC = ""
  loc_6932A0: Branch loc_6930BA
  loc_6932A5: FLdPr var_94
  loc_6932A8: LateIdCall
  loc_6932B2: ExitProcHresult
  loc_6932B5: LitI4 &HD
  loc_6932BA: ImpAdCallI2 Chr$()
  loc_6932BF: FStStr var_154
  loc_6932C2: LitI4 &HD
  loc_6932C7: ImpAdCallI2 Chr$()
  loc_6932CC: FStStr var_158
  loc_6932CF: FLdRfVar var_134
  loc_6932D2: ImpAdCallI2 Err 'rtcErrObj
  loc_6932D7: FStAdFunc var_98
  loc_6932DA: FLdPr var_98
  loc_6932DD:  = Err.Number
  loc_6932E2: LitI4 &HD
  loc_6932E7: ImpAdCallI2 Chr$()
  loc_6932EC: FStStr var_15C
  loc_6932EF: FLdRfVar var_14C
  loc_6932F2: ImpAdCallI2 Err 'rtcErrObj
  loc_6932F7: FStAdFunc var_AC
  loc_6932FA: FLdPr var_AC
  loc_6932FD:  = Err.Description
  loc_693302: LitVar_Missing var_118
  loc_693305: LitVar_Missing var_108
  loc_693308: FLdPr Me
  loc_69330B: MemLdRfVar from_stack_1.strPrintError4
  loc_69330E: CVarRef
  loc_693313: LitI4 &H45
  loc_693318: FLdPr Me
  loc_69331B: MemLdStr strPrintError1
  loc_69331E: FLdZeroAd var_154
  loc_693321: FStStrNoPop var_F4
  loc_693324: ConcatStr
  loc_693325: FStStrNoPop var_F8
  loc_693328: FLdZeroAd var_158
  loc_69332B: FStStrNoPop var_12C
  loc_69332E: ConcatStr
  loc_69332F: FStStrNoPop var_130
  loc_693332: FLdPr Me
  loc_693335: MemLdStr strPrintError2
  loc_693338: ConcatStr
  loc_693339: FStStrNoPop var_138
  loc_69333C: ILdRf var_134
  loc_69333F: CStrI4
  loc_693341: FStStrNoPop var_13C
  loc_693344: ConcatStr
  loc_693345: FStStrNoPop var_140
  loc_693348: FLdZeroAd var_15C
  loc_69334B: FStStrNoPop var_144
  loc_69334E: ConcatStr
  loc_69334F: FStStrNoPop var_148
  loc_693352: FLdPr Me
  loc_693355: MemLdStr strPrintError3
  loc_693358: ConcatStr
  loc_693359: FStStrNoPop var_150
  loc_69335C: ILdRf var_14C
  loc_69335F: ConcatStr
  loc_693360: CVarStr var_BC
  loc_693363: ImpAdCallI2 MsgBox(, , , , )
  loc_693368: LitI4 4
  loc_69336D: EqI4
  loc_69336E: FFreeStr var_F4 = "": var_F8 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = ""
  loc_69338D: FFreeAd var_98 = ""
  loc_693394: FFreeVar var_BC = "": var_108 = ""
  loc_69339D: BranchF loc_6933A9
  loc_6933A2: Resume
  loc_6933A6: Branch loc_6933D2
  loc_6933AD: On Error Resume Next
  loc_6933B2: FLdPr var_94
  loc_6933B5: LateIdCall
  loc_6933BF: FLdPr var_94
  loc_6933C2: LateIdCall
  loc_6933CC: On Error GoTo 0
  loc_6933D1: ExitProcHresult
  loc_6933D6: ExitProcHresult
End Function
