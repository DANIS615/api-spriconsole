VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form CambioCodificacionProducto
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 195
  ClientTop = 540
  ClientWidth = 11910
  ClientHeight = 8775
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Timer Reloj
    Interval = 60000
    Left = 7680
    Top = 1680
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 240
    Top = 240
    Width = 1545
    Height = 780
    TabIndex = 3
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
    TabIndex = 2
    ScaleMode = 6
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.CommandButton cmdContinuar
    Caption = "&Aceptar"
    Left = 8880
    Top = 7680
    Width = 2655
    Height = 855
    TabIndex = 1
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
    Width = 11415
    Height = 2535
    TabIndex = 0
    OleObjectBlob = "CambioCodificacionProducto.frx":0000
  End
  Begin VB.Label Label1
    Caption = "Notificación de Cambio en la Codificación de Producto"
    Left = 2040
    Top = 240
    Width = 7215
    Height = 975
    TabIndex = 13
    Alignment = 2 'Center
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
  Begin VB.Label Label2
    Caption = "Estación de Servicio Nro.:"
    Left = 600
    Top = 2040
    Width = 3015
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
  Begin VB.Label Label3
    Caption = "Razón Social:"
    Left = 600
    Top = 2520
    Width = 1695
    Height = 255
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
  End
  Begin VB.Label Label4
    Caption = "At. Sr. Operador:"
    Left = 600
    Top = 3000
    Width = 2175
    Height = 255
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
  Begin VB.Label lNroEstacion
    Caption = "99999"
    Left = 3720
    Top = 2040
    Width = 1455
    Height = 255
    TabIndex = 9
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
    Caption = "12345678901234567890"
    Left = 2520
    Top = 2520
    Width = 4455
    Height = 255
    TabIndex = 8
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
  Begin VB.Line Line1
    X1 = 240
    Y1 = 3480
    X2 = 11760
    Y2 = 3480
    BorderWidth = 3
  End
  Begin VB.Label lFecha
    Caption = "DD/MM/YYYY"
    Left = 240
    Top = 1200
    Width = 1815
    Height = 375
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
  Begin VB.Label lHora
    Caption = "HH:MM"
    Left = 10440
    Top = 1080
    Width = 975
    Height = 375
    TabIndex = 6
    Alignment = 1 'Right Justify
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
    Caption = "Por la presente se le notifica que se ha realizado una modificación en los códigos de producto según se detalla:"
    Left = 240
    Top = 3720
    Width = 11415
    Height = 735
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
  Begin VB.Label Label9
    Caption = "Para recibir las instrucciones que correspondan llame a la mesa de ayuda. Muchas gracias."
    Left = 360
    Top = 7560
    Width = 7815
    Height = 735
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
End

Attribute VB_Name = "CambioCodificacionProducto"


Private Sub Reloj_Timer() '5FB8F4
  'Data Table: 42BA68
  loc_5FB840: FLdRfVar var_9C
  loc_5FB843: ImpAdCallFPR4  = Date
  loc_5FB848: LitI4 1
  loc_5FB84D: LitI4 1
  loc_5FB852: LitVarStr var_AC, "dd/mm/yyyy"
  loc_5FB857: FStVarCopyObj var_BC
  loc_5FB85A: FLdRfVar var_BC
  loc_5FB85D: FLdRfVar var_9C
  loc_5FB860: ImpAdCallI2 Format$(, )
  loc_5FB865: FStStrNoPop var_C0
  loc_5FB868: FLdPrThis
  loc_5FB869: VCallAd Control_ID_lFecha
  loc_5FB86C: FStAdFunc var_C4
  loc_5FB86F: FLdPr var_C4
  loc_5FB872: Me.Caption = from_stack_1
  loc_5FB877: FFree1Str var_C0
  loc_5FB87A: FFree1Ad var_C4
  loc_5FB87D: FFreeVar var_9C = ""
  loc_5FB884: FLdRfVar var_9C
  loc_5FB887: ImpAdCallFPR4  = Time
  loc_5FB88C: LitI4 1
  loc_5FB891: LitI4 1
  loc_5FB896: LitVarStr var_AC, "hh:mm"
  loc_5FB89B: FStVarCopyObj var_BC
  loc_5FB89E: FLdRfVar var_BC
  loc_5FB8A1: FLdRfVar var_9C
  loc_5FB8A4: ImpAdCallI2 Format$(, )
  loc_5FB8A9: FStStrNoPop var_C0
  loc_5FB8AC: FLdPrThis
  loc_5FB8AD: VCallAd Control_ID_lHora
  loc_5FB8B0: FStAdFunc var_C4
  loc_5FB8B3: FLdPr var_C4
  loc_5FB8B6: Me.Caption = from_stack_1
  loc_5FB8BB: FFree1Str var_C0
  loc_5FB8BE: FFree1Ad var_C4
  loc_5FB8C1: FFreeVar var_9C = ""
  loc_5FB8C8: FLdPrThis
  loc_5FB8C9: VCallAd Control_ID_Reloj
  loc_5FB8CC: FStAdFunc var_CC
  loc_5FB8CF: ILdRf Me
  loc_5FB8D2: CastAd
  loc_5FB8D5: FStAdFunc var_C8
  loc_5FB8D8: FLdRfVar var_C8
  loc_5FB8DB: FLdZeroAd var_CC
  loc_5FB8DE: FStAdFunc var_C4
  loc_5FB8E1: FLdRfVar var_C4
  loc_5FB8E4: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_5FB8E9: FFreeAd var_C4 = "": var_C8 = ""
  loc_5FB8F2: ExitProcHresult
End Sub

Private Sub Form_Load() '603510
  'Data Table: 42BA68
  loc_60342C: LitI2_Byte 0
  loc_60342E: CR8I2
  loc_60342F: PopFPR4
  loc_603430: FLdPr Me
  loc_603433: Me.Top = from_stack_1s
  loc_603438: LitI2_Byte 0
  loc_60343A: CR8I2
  loc_60343B: PopFPR4
  loc_60343C: FLdPr Me
  loc_60343F: Me.Left = from_stack_1s
  loc_603444: FLdRfVar var_90
  loc_603447: FLdRfVar var_8C
  loc_60344A: ImpAdLdRf MemVar_7520D4
  loc_60344D: NewIfNullPr Global
  loc_603450:  = Global.Screen
  loc_603455: FLdPr var_8C
  loc_603458:  = Screen.TwipsPerPixelX
  loc_60345D: LitI2 800
  loc_603460: CR8I2
  loc_603461: FLdFPR4 var_90
  loc_603464: MulR8
  loc_603465: PopFPR4
  loc_603466: FLdPr Me
  loc_603469: Me.Width = from_stack_1s
  loc_60346E: FFree1Ad var_8C
  loc_603471: FLdRfVar var_90
  loc_603474: FLdRfVar var_8C
  loc_603477: ImpAdLdRf MemVar_7520D4
  loc_60347A: NewIfNullPr Global
  loc_60347D:  = Global.Screen
  loc_603482: FLdPr var_8C
  loc_603485:  = Screen.TwipsPerPixelY
  loc_60348A: LitI2 600
  loc_60348D: CR8I2
  loc_60348E: FLdFPR4 var_90
  loc_603491: MulR8
  loc_603492: PopFPR4
  loc_603493: FLdPr Me
  loc_603496: Me.Height = from_stack_1s
  loc_60349B: FFree1Ad var_8C
  loc_60349E: ILdRf Me
  loc_6034A1: CastAd
  loc_6034A4: FStAdFunc var_8C
  loc_6034A7: FLdRfVar var_8C
  loc_6034AA: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_6034AF: FFree1Ad var_8C
  loc_6034B2: LitI2_Byte &HFF
  loc_6034B4: ImpAdLdRf MemVar_74C760
  loc_6034B7: NewIfNullPr Formx
  loc_6034BA: VCallAd Control_ID_AssertNewCodes
  loc_6034BD: FStAdFunc var_8C
  loc_6034C0: FLdPr var_8C
  loc_6034C3: Formx.Menu.Enabled = from_stack_1b
  loc_6034C8: FFree1Ad var_8C
  loc_6034CB: ImpAdLdI2 MemVar_74BEA6
  loc_6034CE: BranchF loc_6034D4
  loc_6034D1: Branch loc_60350E
  loc_6034D4: LitI2_Byte 1
  loc_6034D6: CUI1I2
  loc_6034D8: FLdRfVar var_86
  loc_6034DB: LitI2_Byte 5
  loc_6034DD: CUI1I2
  loc_6034DF: ForUI1 var_94
  loc_6034E5: LitI4 &H64
  loc_6034EA: LitI4 &H1F4
  loc_6034EF: ImpAdCallFPR4 ()
  loc_6034F4: SetLastSystemError
  loc_6034F5: LitI4 &H96
  loc_6034FA: LitI4 &H190
  loc_6034FF: ImpAdCallFPR4 ()
  loc_603504: SetLastSystemError
  loc_603505: FLdRfVar var_86
  loc_603508: NextUI1
  loc_60350E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '5D4830
  'Data Table: 42BA68
  loc_5D4810: LitI2_Byte 0
  loc_5D4812: FLdPr Me
  loc_5D4815: MemStI2 global_64
  loc_5D4818: LitI2_Byte 0
  loc_5D481A: FLdPrThis
  loc_5D481B: VCallAd Control_ID_Reloj
  loc_5D481E: FStAdFunc var_88
  loc_5D4821: FLdPr var_88
  loc_5D4824: Me.Enabled = from_stack_1b
  loc_5D4829: FFree1Ad var_88
  loc_5D482C: ExitProcHresult
End Sub

Private Sub Form_Activate() '67C908
  'Data Table: 42BA68
  loc_67C460: FLdPr Me
  loc_67C463: MemLdI2 global_64
  loc_67C466: BranchF loc_67C46A
  loc_67C469: ExitProcHresult
  loc_67C46A: LitI2_Byte &HFF
  loc_67C46C: FLdPr Me
  loc_67C46F: MemStI2 global_64
  loc_67C472: LitI2_Byte &HFF
  loc_67C474: FLdPrThis
  loc_67C475: VCallAd Control_ID_Reloj
  loc_67C478: FStAdFunc var_90
  loc_67C47B: FLdPr var_90
  loc_67C47E: Me.Enabled = from_stack_1b
  loc_67C483: FFree1Ad var_90
  loc_67C486: FLdPrThis
  loc_67C487: VCallAd Control_ID_Picture1
  loc_67C48A: FStAdFunc var_A0
  loc_67C48D: FLdRfVar var_94
  loc_67C490: FLdRfVar var_90
  loc_67C493: ImpAdLdRf MemVar_7520D4
  loc_67C496: NewIfNullPr Global
  loc_67C499:  = Global.App
  loc_67C49E: FLdPr var_90
  loc_67C4A1:  = App.Path
  loc_67C4A6: ILdRf var_94
  loc_67C4A9: LitStr "\Logo_Compania.bmp"
  loc_67C4AC: ConcatStr
  loc_67C4AD: FStStrNoPop var_9C
  loc_67C4B0: FLdZeroAd var_A0
  loc_67C4B3: FStAdFunc var_98
  loc_67C4B6: FLdRfVar var_98
  loc_67C4B9: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67C4BE: FFreeStr var_94 = ""
  loc_67C4C5: FFreeAd var_90 = "": var_98 = ""
  loc_67C4CE: FLdPrThis
  loc_67C4CF: VCallAd Control_ID_Picture2
  loc_67C4D2: FStAdFunc var_A0
  loc_67C4D5: FLdRfVar var_94
  loc_67C4D8: FLdRfVar var_90
  loc_67C4DB: ImpAdLdRf MemVar_7520D4
  loc_67C4DE: NewIfNullPr Global
  loc_67C4E1:  = Global.App
  loc_67C4E6: FLdPr var_90
  loc_67C4E9:  = App.Path
  loc_67C4EE: ILdRf var_94
  loc_67C4F1: LitStr "\Logo_Proyecto.bmp"
  loc_67C4F4: ConcatStr
  loc_67C4F5: FStStrNoPop var_9C
  loc_67C4F8: FLdZeroAd var_A0
  loc_67C4FB: FStAdFunc var_98
  loc_67C4FE: FLdRfVar var_98
  loc_67C501: ImpAdCallFPR4  = Proc_53_6_5EDBD0()
  loc_67C506: FFreeStr var_94 = ""
  loc_67C50D: FFreeAd var_90 = "": var_98 = ""
  loc_67C516: FLdRfVar var_B0
  loc_67C519: ImpAdCallFPR4  = Date
  loc_67C51E: LitI4 1
  loc_67C523: LitI4 1
  loc_67C528: LitVarStr var_C0, "dd/mm/yyyy"
  loc_67C52D: FStVarCopyObj var_D0
  loc_67C530: FLdRfVar var_D0
  loc_67C533: FLdRfVar var_B0
  loc_67C536: ImpAdCallI2 Format$(, )
  loc_67C53B: FStStrNoPop var_94
  loc_67C53E: FLdPrThis
  loc_67C53F: VCallAd Control_ID_lFecha
  loc_67C542: FStAdFunc var_90
  loc_67C545: FLdPr var_90
  loc_67C548: Me.Caption = from_stack_1
  loc_67C54D: FFree1Str var_94
  loc_67C550: FFree1Ad var_90
  loc_67C553: FFreeVar var_B0 = ""
  loc_67C55A: FLdRfVar var_B0
  loc_67C55D: ImpAdCallFPR4  = Time
  loc_67C562: LitI4 1
  loc_67C567: LitI4 1
  loc_67C56C: LitVarStr var_C0, "hh:mm"
  loc_67C571: FStVarCopyObj var_D0
  loc_67C574: FLdRfVar var_D0
  loc_67C577: FLdRfVar var_B0
  loc_67C57A: ImpAdCallI2 Format$(, )
  loc_67C57F: FStStrNoPop var_94
  loc_67C582: FLdPrThis
  loc_67C583: VCallAd Control_ID_lHora
  loc_67C586: FStAdFunc var_90
  loc_67C589: FLdPr var_90
  loc_67C58C: Me.Caption = from_stack_1
  loc_67C591: FFree1Str var_94
  loc_67C594: FFree1Ad var_90
  loc_67C597: FFreeVar var_B0 = ""
  loc_67C59E: FLdRfVar var_B0
  loc_67C5A1: FLdPr Me
  loc_67C5A4: MemLdRfVar from_stack_1.global_60
  loc_67C5A7: FLdRfVar var_90
  loc_67C5AA: ImpAdLdRf MemVar_74C760
  loc_67C5AD: NewIfNullPr Formx
  loc_67C5B0: from_stack_1v = Formx.global_4589716Get()
  loc_67C5B5: FLdPr var_90
  loc_67C5B8: Call 0.Method_arg_1A0 ()
  loc_67C5BD: FLdRfVar var_B0
  loc_67C5C0: NotVar var_D0
  loc_67C5C4: CBoolVarNull
  loc_67C5C6: FFree1Ad var_90
  loc_67C5C9: FFree1Var var_B0 = ""
  loc_67C5CC: BranchF loc_67C5FB
  loc_67C5CF: FLdRfVar var_B0
  loc_67C5D2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67C5D7: FLdRfVar var_B0
  loc_67C5DA: CBoolVarNull
  loc_67C5DC: FFree1Var var_B0 = ""
  loc_67C5DF: BranchF loc_67C5F8
  loc_67C5E2: ILdRf Me
  loc_67C5E5: FStAdNoPop
  loc_67C5E9: ImpAdLdRf MemVar_7520D4
  loc_67C5EC: NewIfNullPr Global
  loc_67C5EF: Global.Unload from_stack_1
  loc_67C5F4: FFree1Ad var_90
  loc_67C5F7: ExitProcHresult
  loc_67C5F8: Branch loc_67C59E
  loc_67C5FB: FLdPr Me
  loc_67C5FE: MemLdRfVar from_stack_1.global_60
  loc_67C601: CVarRef
  loc_67C606: FLdRfVar var_B0
  loc_67C609: ImpAdCallFPR4  = Trim()
  loc_67C60E: FLdRfVar var_B0
  loc_67C611: CStrVarTmp
  loc_67C612: FStStrNoPop var_94
  loc_67C615: FLdPr Me
  loc_67C618: MemStStrCopy
  loc_67C61C: FFree1Str var_94
  loc_67C61F: FFree1Var var_B0 = ""
  loc_67C622: LitI2_Byte 0
  loc_67C624: PopTmpLdAd2 var_D2
  loc_67C627: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_67C62C: FLdRfVar var_D2
  loc_67C62F: FLdRfVar var_88
  loc_67C632: FLdRfVar var_90
  loc_67C635: ImpAdLdRf MemVar_74C760
  loc_67C638: NewIfNullPr Formx
  loc_67C63B: from_stack_1v = Formx.global_4589716Get()
  loc_67C640: FLdPr var_90
  loc_67C643:  = Formx.Picture
  loc_67C648: FLdI2 var_D2
  loc_67C64B: NotI4
  loc_67C64C: FFree1Ad var_90
  loc_67C64F: BranchF loc_67C67E
  loc_67C652: FLdRfVar var_B0
  loc_67C655: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67C65A: FLdRfVar var_B0
  loc_67C65D: CBoolVarNull
  loc_67C65F: FFree1Var var_B0 = ""
  loc_67C662: BranchF loc_67C67B
  loc_67C665: ILdRf Me
  loc_67C668: FStAdNoPop
  loc_67C66C: ImpAdLdRf MemVar_7520D4
  loc_67C66F: NewIfNullPr Global
  loc_67C672: Global.Unload from_stack_1
  loc_67C677: FFree1Ad var_90
  loc_67C67A: ExitProcHresult
  loc_67C67B: Branch loc_67C62C
  loc_67C67E: LitVarI2 var_B0, 6
  loc_67C683: LitI4 1
  loc_67C688: FLdRfVar var_88
  loc_67C68B: CVarRef
  loc_67C690: FLdRfVar var_D0
  loc_67C693: ImpAdCallFPR4  = Mid(, , )
  loc_67C698: FLdRfVar var_D0
  loc_67C69B: CStrVarVal var_94
  loc_67C69F: ImpAdCallFPR4 push Val()
  loc_67C6A4: CStrR8
  loc_67C6A6: FStStrNoPop var_9C
  loc_67C6A9: FLdPrThis
  loc_67C6AA: VCallAd Control_ID_lNroEstacion
  loc_67C6AD: FStAdFunc var_90
  loc_67C6B0: FLdPr var_90
  loc_67C6B3: Me.Caption = from_stack_1
  loc_67C6B8: FFreeStr var_94 = ""
  loc_67C6BF: FFree1Ad var_90
  loc_67C6C2: FFreeVar var_B0 = ""
  loc_67C6C9: LitVarI2 var_B0, 30
  loc_67C6CE: LitI4 7
  loc_67C6D3: FLdRfVar var_88
  loc_67C6D6: CVarRef
  loc_67C6DB: FLdRfVar var_D0
  loc_67C6DE: ImpAdCallFPR4  = Mid(, , )
  loc_67C6E3: FLdRfVar var_D0
  loc_67C6E6: FLdRfVar var_F4
  loc_67C6E9: ImpAdCallFPR4  = Trim()
  loc_67C6EE: FLdRfVar var_F4
  loc_67C6F1: CStrVarVal var_94
  loc_67C6F5: FLdPrThis
  loc_67C6F6: VCallAd Control_ID_lRazonSocial
  loc_67C6F9: FStAdFunc var_90
  loc_67C6FC: FLdPr var_90
  loc_67C6FF: Me.Caption = from_stack_1
  loc_67C704: FFree1Str var_94
  loc_67C707: FFree1Ad var_90
  loc_67C70A: FFreeVar var_B0 = "": var_D0 = ""
  loc_67C713: FLdPrThis
  loc_67C714: VCallAd Control_ID_gLista
  loc_67C717: FStAdFunc var_90
  loc_67C71A: FLdPr var_90
  loc_67C71D: LateIdCall
  loc_67C725: FFree1Ad var_90
  loc_67C728: LitVarStr var_C0, "Arial"
  loc_67C72D: PopAdLdVar
  loc_67C72E: FLdPrThis
  loc_67C72F: VCallAd Control_ID_gLista
  loc_67C732: FStAdFunc var_90
  loc_67C735: FLdPr var_90
  loc_67C738: LateIdSt
  loc_67C73D: FFree1Ad var_90
  loc_67C740: LitI2_Byte &HE
  loc_67C742: CR8I2
  loc_67C743: CVarR4
  loc_67C747: PopAdLdVar
  loc_67C748: FLdPrThis
  loc_67C749: VCallAd Control_ID_gLista
  loc_67C74C: FStAdFunc var_90
  loc_67C74F: FLdPr var_90
  loc_67C752: LateIdSt
  loc_67C757: FFree1Ad var_90
  loc_67C75A: LitVar_TRUE var_C0
  loc_67C75D: PopAdLdVar
  loc_67C75E: FLdPrThis
  loc_67C75F: VCallAd Control_ID_gLista
  loc_67C762: FStAdFunc var_90
  loc_67C765: FLdPr var_90
  loc_67C768: LateIdSt
  loc_67C76D: FFree1Ad var_90
  loc_67C770: LitVarStr var_C0, "Código de Producto|Descripción"
  loc_67C775: PopAdLdVar
  loc_67C776: FLdPrThis
  loc_67C777: VCallAd Control_ID_gLista
  loc_67C77A: FStAdFunc var_90
  loc_67C77D: FLdPr var_90
  loc_67C780: LateIdSt
  loc_67C785: FFree1Ad var_90
  loc_67C788: LitVarI4
  loc_67C790: PopAdLdVar
  loc_67C791: LitI4 4
  loc_67C796: CI2I4
  loc_67C797: CVarI2 var_E4
  loc_67C79A: PopAdLdVar
  loc_67C79B: FLdPrThis
  loc_67C79C: VCallAd Control_ID_gLista
  loc_67C79F: FStAdFunc var_90
  loc_67C7A2: FLdPr var_90
  loc_67C7A5: LateIdCallSt
  loc_67C7AD: FFree1Ad var_90
  loc_67C7B0: LitVarI4
  loc_67C7B8: PopAdLdVar
  loc_67C7B9: LitI4 4
  loc_67C7BE: CI2I4
  loc_67C7BF: CVarI2 var_E4
  loc_67C7C2: PopAdLdVar
  loc_67C7C3: FLdPrThis
  loc_67C7C4: VCallAd Control_ID_gLista
  loc_67C7C7: FStAdFunc var_90
  loc_67C7CA: FLdPr var_90
  loc_67C7CD: LateIdCallSt
  loc_67C7D5: FFree1Ad var_90
  loc_67C7D8: LitVarI4
  loc_67C7E0: PopAdLdVar
  loc_67C7E1: LitVarI4
  loc_67C7E9: PopAdLdVar
  loc_67C7EA: FLdPrThis
  loc_67C7EB: VCallAd Control_ID_gLista
  loc_67C7EE: FStAdFunc var_90
  loc_67C7F1: FLdPr var_90
  loc_67C7F4: LateIdCallSt
  loc_67C7FC: FFree1Ad var_90
  loc_67C7FF: LitVarI4
  loc_67C807: PopAdLdVar
  loc_67C808: LitVarI4
  loc_67C810: PopAdLdVar
  loc_67C811: FLdPrThis
  loc_67C812: VCallAd Control_ID_gLista
  loc_67C815: FStAdFunc var_90
  loc_67C818: FLdPr var_90
  loc_67C81B: LateIdCallSt
  loc_67C823: FFree1Ad var_90
  loc_67C826: LitVarI4
  loc_67C82E: PopAdLdVar
  loc_67C82F: FLdPrThis
  loc_67C830: VCallAd Control_ID_gLista
  loc_67C833: FStAdFunc var_90
  loc_67C836: FLdPr var_90
  loc_67C839: LateIdSt
  loc_67C83E: FFree1Ad var_90
  loc_67C841: LitI2_Byte &HA
  loc_67C843: FStI2 var_8A
  loc_67C846: FLdI2 var_8A
  loc_67C849: CI4UI1
  loc_67C84A: FLdPr Me
  loc_67C84D: MemLdStr global_60
  loc_67C850: FnLenStr
  loc_67C851: LtI4
  loc_67C852: BranchF loc_67C8FC
  loc_67C855: LitVarI2 var_B0, 2
  loc_67C85A: FLdI2 var_8A
  loc_67C85D: CI4UI1
  loc_67C85E: FLdPr Me
  loc_67C861: MemLdStr global_60
  loc_67C864: ImpAdCallI2 Mid$(, , )
  loc_67C869: FStStrNoPop var_94
  loc_67C86C: ImpAdCallFPR4 push Val()
  loc_67C871: CVarR8
  loc_67C875: LitI4 9
  loc_67C87A: FLdRfVar var_D0
  loc_67C87D: ImpAdCallFPR4  = Chr()
  loc_67C882: FLdRfVar var_D0
  loc_67C885: ConcatVar var_F4
  loc_67C889: LitVarI2 var_114, 20
  loc_67C88E: FLdI2 var_8A
  loc_67C891: LitI2_Byte 2
  loc_67C893: AddI2
  loc_67C894: CI4UI1
  loc_67C895: FLdPr Me
  loc_67C898: MemLdStr global_60
  loc_67C89B: ImpAdCallI2 Mid$(, , )
  loc_67C8A0: CVarStr var_124
  loc_67C8A3: ConcatVar var_134
  loc_67C8A7: LitI4 9
  loc_67C8AC: FLdRfVar var_144
  loc_67C8AF: ImpAdCallFPR4  = Chr()
  loc_67C8B4: FLdRfVar var_144
  loc_67C8B7: ConcatVar var_154
  loc_67C8BB: CStrVarTmp
  loc_67C8BC: CVarStr var_164
  loc_67C8BF: PopAdLdVar
  loc_67C8C0: FLdPrThis
  loc_67C8C1: VCallAd Control_ID_gLista
  loc_67C8C4: FStAdFunc var_90
  loc_67C8C7: FLdPr var_90
  loc_67C8CA: LateIdCall
  loc_67C8D2: FFree1Str var_94
  loc_67C8D5: FFree1Ad var_90
  loc_67C8D8: FFreeVar var_B0 = "": var_D0 = "": var_114 = "": var_F4 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = ""
  loc_67C8ED: FLdI2 var_8A
  loc_67C8F0: LitI2_Byte &H16
  loc_67C8F2: AddI2
  loc_67C8F3: LitI2_Byte 2
  loc_67C8F5: AddI2
  loc_67C8F6: FStI2 var_8A
  loc_67C8F9: Branch loc_67C846
  loc_67C8FC: FLdPr Me
  loc_67C8FF: MemLdStr global_60
  loc_67C902: from_stack_2v = Proc_70_6_686EE4(from_stack_1v)
  loc_67C907: ExitProcHresult
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '5D21CC
  'Data Table: 42BA68
  loc_5D21B4: ILdRf Me
  loc_5D21B7: FStAdNoPop
  loc_5D21BB: ImpAdLdRf MemVar_7520D4
  loc_5D21BE: NewIfNullPr Global
  loc_5D21C1: Global.Unload from_stack_1
  loc_5D21C6: FFree1Ad var_88
  loc_5D21C9: ExitProcHresult
  loc_5D21CA: ExitProcR8
End Sub

Private Sub cmdContinuar_Click() '5D2264
  'Data Table: 42BA68
  loc_5D224C: ILdRf Me
  loc_5D224F: FStAdNoPop
  loc_5D2253: ImpAdLdRf MemVar_7520D4
  loc_5D2256: NewIfNullPr Global
  loc_5D2259: Global.Unload from_stack_1
  loc_5D225E: FFree1Ad var_88
  loc_5D2261: ExitProcHresult
End Sub

Private Function Proc_70_6_686EE4(arg_C) '686EE4
  'Data Table: 42BA68
  loc_6869DA: ILdRf arg_C
  loc_6869DD: FStStrCopy var_88
  loc_6869E2: FLdRfVar var_94
  loc_6869E5: ImpAdLdRf MemVar_7520D4
  loc_6869E8: NewIfNullPr Global
  loc_6869EB:  = Global.Printer
  loc_6869F0: FLdZeroAd var_94
  loc_6869F3: FStAdFunc var_90
  loc_6869F8: OnErrorGoto loc_686DC5
  loc_6869FD: LitVarStr var_A4, "Courier New"
  loc_686A02: PopAdLdVar
  loc_686A03: FLdPr var_90
  loc_686A06: LateIdSt
  loc_686A0D: LitI2_Byte &HB
  loc_686A0F: CR8I2
  loc_686A10: CVarR4
  loc_686A14: PopAdLdVar
  loc_686A15: FLdPr var_90
  loc_686A18: LateIdSt
  loc_686A1F: LitI4 6
  loc_686A24: CI2I4
  loc_686A25: CVarI2 var_A4
  loc_686A28: PopAdLdVar
  loc_686A29: FLdPr var_90
  loc_686A2C: LateIdSt
  loc_686A33: FLdRfVar var_A8
  loc_686A36: FLdPrThis
  loc_686A37: VCallAd Control_ID_Picture1
  loc_686A3A: FStAdFunc var_94
  loc_686A3D: FLdPr var_94
  loc_686A40:  = Me.Picture
  loc_686A45: FLdPr var_A8
  loc_686A48: LateIdLdVar var_B8 DispID_0 0
  loc_686A4F: CI4Var
  loc_686A51: LitI4 0
  loc_686A56: NeI4
  loc_686A57: FFreeAd var_94 = ""
  loc_686A5E: FFree1Var var_B8 = ""
  loc_686A61: BranchF loc_686ABB
  loc_686A66: FLdRfVar var_A8
  loc_686A69: FLdPrThis
  loc_686A6A: VCallAd Control_ID_Picture1
  loc_686A6D: FStAdFunc var_94
  loc_686A70: FLdPr var_94
  loc_686A73:  = Me.Picture
  loc_686A78: FLdZeroAd var_A8
  loc_686A7B: CVarAd
  loc_686A7F: PopAdLdVar
  loc_686A80: LitI2_Byte 1
  loc_686A82: CR8I2
  loc_686A83: CVarR4
  loc_686A87: PopAdLdVar
  loc_686A88: LitI2_Byte &HA
  loc_686A8A: CR8I2
  loc_686A8B: CVarR4
  loc_686A8F: PopAdLdVar
  loc_686A90: LitVarR8
  loc_686A9C: PopAdLdVar
  loc_686A9D: LitVarR8
  loc_686AA9: PopAdLdVar
  loc_686AAA: FLdPr var_90
  loc_686AAD: LateIdCall
  loc_686AB5: FFree1Ad var_94
  loc_686AB8: FFree1Var var_B8 = ""
  loc_686ABF: FLdRfVar var_A8
  loc_686AC2: FLdPrThis
  loc_686AC3: VCallAd Control_ID_Picture2
  loc_686AC6: FStAdFunc var_94
  loc_686AC9: FLdPr var_94
  loc_686ACC:  = Me.Picture
  loc_686AD1: FLdPr var_A8
  loc_686AD4: LateIdLdVar var_B8 DispID_0 0
  loc_686ADB: CI4Var
  loc_686ADD: LitI4 0
  loc_686AE2: NeI4
  loc_686AE3: FFreeAd var_94 = ""
  loc_686AEA: FFree1Var var_B8 = ""
  loc_686AED: BranchF loc_686B48
  loc_686AF2: FLdRfVar var_A8
  loc_686AF5: FLdPrThis
  loc_686AF6: VCallAd Control_ID_Picture2
  loc_686AF9: FStAdFunc var_94
  loc_686AFC: FLdPr var_94
  loc_686AFF:  = Me.Picture
  loc_686B04: FLdZeroAd var_A8
  loc_686B07: CVarAd
  loc_686B0B: PopAdLdVar
  loc_686B0C: LitI2 150
  loc_686B0F: CR8I2
  loc_686B10: CVarR4
  loc_686B14: PopAdLdVar
  loc_686B15: LitI2_Byte &HA
  loc_686B17: CR8I2
  loc_686B18: CVarR4
  loc_686B1C: PopAdLdVar
  loc_686B1D: LitVarR8
  loc_686B29: PopAdLdVar
  loc_686B2A: LitVarR8
  loc_686B36: PopAdLdVar
  loc_686B37: FLdPr var_90
  loc_686B3A: LateIdCall
  loc_686B42: FFree1Ad var_94
  loc_686B45: FFree1Var var_B8 = ""
  loc_686B4C: LitI2_Byte 1
  loc_686B4E: FLdRfVar var_8A
  loc_686B51: LitI2_Byte 8
  loc_686B53: ForI2 var_EC
  loc_686B5B: ILdRf var_90
  loc_686B5E: PrintObject
  loc_686B66: FLdRfVar var_8A
  loc_686B69: NextI2 var_EC, loc_686B59
  loc_686B70: FLdRfVar var_F0
  loc_686B73: FLdPrThis
  loc_686B74: VCallAd Control_ID_lFecha
  loc_686B77: FStAdFunc var_94
  loc_686B7A: FLdPr var_94
  loc_686B7D:  = Me.Caption
  loc_686B82: FLdRfVar var_F4
  loc_686B85: FLdPrThis
  loc_686B86: VCallAd Control_ID_lHora
  loc_686B89: FStAdFunc var_A8
  loc_686B8C: FLdPr var_A8
  loc_686B8F:  = Me.Caption
  loc_686B94: ILdRf var_F4
  loc_686B97: LitI2_Byte &H42
  loc_686B99: ILdRf var_F0
  loc_686B9C: LitI2_Byte 5
  loc_686B9E: ILdRf var_90
  loc_686BA1: PrintObject
  loc_686BA7: FFreeStr var_F0 = ""
  loc_686BAE: FFreeAd var_94 = ""
  loc_686BB7: LitStr "Notificación de Cambio en la"
  loc_686BBA: LitI2_Byte &H17
  loc_686BBC: ILdRf var_90
  loc_686BBF: PrintObject
  loc_686BC7: LitStr "Codificación de Productos"
  loc_686BCA: LitI2_Byte &H18
  loc_686BCC: ILdRf var_90
  loc_686BCF: PrintObject
  loc_686BD7: ILdRf var_90
  loc_686BDA: PrintObject
  loc_686BE2: ILdRf var_90
  loc_686BE5: PrintObject
  loc_686BED: FLdRfVar var_F0
  loc_686BF0: FLdPrThis
  loc_686BF1: VCallAd Control_ID_lNroEstacion
  loc_686BF4: FStAdFunc var_94
  loc_686BF7: FLdPr var_94
  loc_686BFA:  = Me.Caption
  loc_686BFF: ILdRf var_F0
  loc_686C02: LitStr "Estación de Servicio Nro: "
  loc_686C05: LitI2_Byte 5
  loc_686C07: ILdRf var_90
  loc_686C0A: PrintObject
  loc_686C10: FFree1Str var_F0
  loc_686C13: FFree1Ad var_94
  loc_686C18: FLdRfVar var_F0
  loc_686C1B: FLdPrThis
  loc_686C1C: VCallAd Control_ID_lRazonSocial
  loc_686C1F: FStAdFunc var_94
  loc_686C22: FLdPr var_94
  loc_686C25:  = Me.Caption
  loc_686C2A: ILdRf var_F0
  loc_686C2D: LitStr "Razón Social: "
  loc_686C30: LitI2_Byte 5
  loc_686C32: ILdRf var_90
  loc_686C35: PrintObject
  loc_686C3B: FFree1Str var_F0
  loc_686C3E: FFree1Ad var_94
  loc_686C43: ILdRf var_90
  loc_686C46: PrintObject
  loc_686C4E: LitStr "At. Sr. Operador:"
  loc_686C51: LitI2_Byte 5
  loc_686C53: ILdRf var_90
  loc_686C56: PrintObject
  loc_686C5E: ILdRf var_90
  loc_686C61: PrintObject
  loc_686C69: LitStr "________________________________________________________________________________"
  loc_686C6C: ILdRf var_90
  loc_686C6F: PrintObject
  loc_686C77: ILdRf var_90
  loc_686C7A: PrintObject
  loc_686C82: ILdRf var_90
  loc_686C85: PrintObject
  loc_686C8D: LitStr "Por la presente se le notifica que se ha realizado una modificación en los"
  loc_686C90: LitI2_Byte 5
  loc_686C92: ILdRf var_90
  loc_686C95: PrintObject
  loc_686C9D: LitStr "códigos de producto según se detalla:"
  loc_686CA0: LitI2_Byte 5
  loc_686CA2: ILdRf var_90
  loc_686CA5: PrintObject
  loc_686CAD: ILdRf var_90
  loc_686CB0: PrintObject
  loc_686CB8: ILdRf var_90
  loc_686CBB: PrintObject
  loc_686CC3: LitStr "Descripción"
  loc_686CC6: LitI2_Byte &H22
  loc_686CC8: LitStr "Código"
  loc_686CCB: LitI2_Byte &H15
  loc_686CCD: ILdRf var_90
  loc_686CD0: PrintObject
  loc_686CD8: LitStr "Producto"
  loc_686CDB: LitI2_Byte &H14
  loc_686CDD: ILdRf var_90
  loc_686CE0: PrintObject
  loc_686CE8: ILdRf var_90
  loc_686CEB: PrintObject
  loc_686CF3: LitI2_Byte &HA
  loc_686CF5: FStI2 var_8A
  loc_686CFA: FLdI2 var_8A
  loc_686CFD: CI4UI1
  loc_686CFE: ILdRf var_88
  loc_686D01: FnLenStr
  loc_686D02: LtI4
  loc_686D03: BranchF loc_686D74
  loc_686D08: LitVarI2 var_B8, 2
  loc_686D0D: FLdI2 var_8A
  loc_686D10: CI4UI1
  loc_686D11: ILdRf var_88
  loc_686D14: ImpAdCallI2 Mid$(, , )
  loc_686D19: FStStrNoPop var_F0
  loc_686D1C: ImpAdCallFPR4 push Val()
  loc_686D21: FStFPR8 var_10C
  loc_686D24: LitVarI2 var_104, 20
  loc_686D29: FLdI2 var_8A
  loc_686D2C: LitI2_Byte 2
  loc_686D2E: AddI2
  loc_686D2F: CI4UI1
  loc_686D30: ILdRf var_88
  loc_686D33: ImpAdCallI2 Mid$(, , )
  loc_686D38: FStStr var_110
  loc_686D3B: FLdZeroAd var_110
  loc_686D3E: FStStrNoPop var_F4
  loc_686D41: LitI2_Byte &H1D
  loc_686D43: FLdR8 var_10C
  loc_686D46: LitI2_Byte &H15
  loc_686D48: ILdRf var_90
  loc_686D4B: PrintObject
  loc_686D51: FFreeStr var_F0 = "": var_F4 = ""
  loc_686D5A: FFreeVar var_B8 = ""
  loc_686D63: FLdI2 var_8A
  loc_686D66: LitI2_Byte &H16
  loc_686D68: AddI2
  loc_686D69: LitI2_Byte 2
  loc_686D6B: AddI2
  loc_686D6C: FStI2 var_8A
  loc_686D71: Branch loc_686CF8
  loc_686D76: ILdRf var_90
  loc_686D79: PrintObject
  loc_686D81: ILdRf var_90
  loc_686D84: PrintObject
  loc_686D8C: ILdRf var_90
  loc_686D8F: PrintObject
  loc_686D97: LitStr "Para recibir las instrucciones que correspondan llame a la mesa de ayuda."
  loc_686D9A: LitI2_Byte 5
  loc_686D9C: ILdRf var_90
  loc_686D9F: PrintObject
  loc_686DA7: LitStr "Muchas gracias."
  loc_686DAA: LitI2_Byte 5
  loc_686DAC: ILdRf var_90
  loc_686DAF: PrintObject
  loc_686DB7: FLdPr var_90
  loc_686DBA: LateIdCall
  loc_686DC4: ExitProcHresult
  loc_686DC7: LitI4 &HD
  loc_686DCC: ImpAdCallI2 Chr$()
  loc_686DD1: FStStr var_158
  loc_686DD4: LitI4 &HD
  loc_686DD9: ImpAdCallI2 Chr$()
  loc_686DDE: FStStr var_15C
  loc_686DE1: FLdRfVar var_118
  loc_686DE4: ImpAdCallI2 Err 'rtcErrObj
  loc_686DE9: FStAdFunc var_94
  loc_686DEC: FLdPr var_94
  loc_686DEF:  = Err.Number
  loc_686DF4: LitI4 &HD
  loc_686DF9: ImpAdCallI2 Chr$()
  loc_686DFE: FStStr var_160
  loc_686E01: FLdRfVar var_130
  loc_686E04: ImpAdCallI2 Err 'rtcErrObj
  loc_686E09: FStAdFunc var_A8
  loc_686E0C: FLdPr var_A8
  loc_686E0F:  = Err.Description
  loc_686E14: LitVar_Missing var_154
  loc_686E17: LitVar_Missing var_144
  loc_686E1A: LitVarStr var_A4, "Error en la impresora"
  loc_686E1F: FStVarCopyObj var_104
  loc_686E22: FLdRfVar var_104
  loc_686E25: LitI4 &H45
  loc_686E2A: LitStr "Chequee que la impresora tenga papel y este en Ready."
  loc_686E2D: FLdZeroAd var_158
  loc_686E30: FStStrNoPop var_F0
  loc_686E33: ConcatStr
  loc_686E34: FStStrNoPop var_F4
  loc_686E37: FLdZeroAd var_15C
  loc_686E3A: FStStrNoPop var_110
  loc_686E3D: ConcatStr
  loc_686E3E: FStStrNoPop var_114
  loc_686E41: LitStr "Error Número: "
  loc_686E44: ConcatStr
  loc_686E45: FStStrNoPop var_11C
  loc_686E48: ILdRf var_118
  loc_686E4B: CStrI4
  loc_686E4D: FStStrNoPop var_120
  loc_686E50: ConcatStr
  loc_686E51: FStStrNoPop var_124
  loc_686E54: FLdZeroAd var_160
  loc_686E57: FStStrNoPop var_128
  loc_686E5A: ConcatStr
  loc_686E5B: FStStrNoPop var_12C
  loc_686E5E: LitStr "Descripción: "
  loc_686E61: ConcatStr
  loc_686E62: FStStrNoPop var_134
  loc_686E65: ILdRf var_130
  loc_686E68: ConcatStr
  loc_686E69: CVarStr var_B8
  loc_686E6C: ImpAdCallI2 MsgBox(, , , , )
  loc_686E71: LitI4 4
  loc_686E76: EqI4
  loc_686E77: FFreeStr var_F0 = "": var_F4 = "": var_110 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_158 = "": var_15C = ""
  loc_686E96: FFreeAd var_94 = ""
  loc_686E9D: FFreeVar var_B8 = "": var_104 = "": var_144 = ""
  loc_686EA8: BranchF loc_686EB4
  loc_686EAD: Resume
  loc_686EB1: Branch loc_686EDD
  loc_686EB8: On Error Resume Next
  loc_686EBD: FLdPr var_90
  loc_686EC0: LateIdCall
  loc_686ECA: FLdPr var_90
  loc_686ECD: LateIdCall
  loc_686ED7: On Error GoTo 0
  loc_686EDC: ExitProcHresult
  loc_686EE1: ExitProcHresult
End Function
