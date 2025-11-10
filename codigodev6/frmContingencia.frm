VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form frmContingencia
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
  ClientWidth = 10380
  ClientHeight = 6960
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.Frame fraFlota
    Caption = "Datos de la Flota"
    Left = 120
    Top = 1680
    Width = 10095
    Height = 1935
    TabIndex = 18
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox txtPatente
      Left = 1320
      Top = 1320
      Width = 1455
      Height = 375
      TabIndex = 3
      OleObjectBlob = "frmContingencia.frx":0000
    End
    Begin VB.CommandButton cmdChequear
      Caption = "Chequear"
      Left = 8280
      Top = 1320
      Width = 1695
      Height = 495
      TabIndex = 4
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
    Begin VB.TextBox txtRazonSocial
      Left = 2040
      Top = 840
      Width = 6255
      Height = 375
      TabIndex = 2
      MaxLength = 60
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
    Begin VB.ComboBox cboCompanias
      Style = 2
      Left = 1680
      Top = 360
      Width = 5655
      Height = 405
      TabIndex = 1
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
      Caption = "Razón Social:"
      Left = 240
      Top = 840
      Width = 1695
      Height = 375
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
    End
    Begin VB.Label Label4
      Caption = "Compañía:"
      Left = 240
      Top = 360
      Width = 1335
      Height = 375
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
    End
    Begin VB.Label Label5
      Caption = "Patente:"
      Left = 240
      Top = 1320
      Width = 975
      Height = 375
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
    End
  End
  Begin VB.TextBox txtUsuario
    Left = 6120
    Top = 1080
    Width = 855
    Height = 405
    TabIndex = 0
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
  Begin VB.Frame fraDatos
    Caption = "Datos de la contingencia"
    Left = 120
    Top = 3840
    Width = 10095
    Height = 2175
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox txtObservaciones
      Left = 2040
      Top = 1440
      Width = 7815
      Height = 375
      TabIndex = 8
      MaxLength = 80
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
    Begin VB.TextBox txtAutorizacion
      Left = 3000
      Top = 960
      Width = 1215
      Height = 375
      TabIndex = 7
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
    Begin VB.TextBox txtOdometro
      Left = 1440
      Top = 480
      Width = 1455
      Height = 375
      TabIndex = 5
      MaxLength = 7
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
    Begin VB.TextBox txtFlota
      Left = 8040
      Top = 480
      Width = 1815
      Height = 375
      TabIndex = 6
      MaxLength = 10
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
    Begin VB.Label Label8
      Caption = "Observaciones:"
      Left = 120
      Top = 1440
      Width = 1935
      Height = 375
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
    End
    Begin VB.Label Label7
      Caption = "Codigo de autorización:"
      Left = 120
      Top = 960
      Width = 2895
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
    Begin VB.Label Label6
      Caption = "Odometro:"
      Left = 120
      Top = 480
      Width = 1335
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
    Begin VB.Label Label3
      Caption = "Número de flota:"
      Left = 6000
      Top = 480
      Width = 1935
      Height = 375
      TabIndex = 13
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
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "&Aceptar"
    Left = 8400
    Top = 6240
    Width = 1815
    Height = 495
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
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 6480
    Top = 6240
    Width = 1815
    Height = 495
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
  Begin VB.Label Label2
    Caption = "Número de Usuario:"
    Left = 3600
    Top = 1080
    Width = 2415
    Height = 375
    TabIndex = 17
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
  Begin VB.Label Label9
    Caption = "Autorización por contingencia CTF"
    Left = 1800
    Top = 240
    Width = 6975
    Height = 495
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

Attribute VB_Name = "frmContingencia"

Public nSurtidor As Integer


Private Sub txtOdometro_GotFocus() '5D01A0
  'Data Table: 441CD4
  loc_5D018C: FLdPrThis
  loc_5D018D: VCallAd Control_ID_txtOdometro
  loc_5D0190: FStAdFunc var_88
  loc_5D0193: FLdRfVar var_88
  loc_5D0196: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D019B: FFree1Ad var_88
  loc_5D019E: ExitProcHresult
End Sub

Private Sub txtOdometro_KeyPress(KeyAscii As Integer) '5CF708
  'Data Table: 441CD4
  loc_5CF6F4: FLdRfVar var_86
  loc_5CF6F7: ILdI2 KeyAscii
  loc_5CF6FA: from_stack_2v = Proc_29_22_5DF4C8(from_stack_1v)
  loc_5CF6FF: FLdI2 var_86
  loc_5CF702: IStI2 KeyAscii
  loc_5CF705: ExitProcHresult
End Sub

Private Sub txtAutorizacion_GotFocus() '5D0548
  'Data Table: 441CD4
  loc_5D0534: FLdPrThis
  loc_5D0535: VCallAd Control_ID_txtAutorizacion
  loc_5D0538: FStAdFunc var_88
  loc_5D053B: FLdRfVar var_88
  loc_5D053E: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D0543: FFree1Ad var_88
  loc_5D0546: ExitProcHresult
End Sub

Private Sub txtAutorizacion_KeyPress(KeyAscii As Integer) '5CF4A4
  'Data Table: 441CD4
  loc_5CF490: FLdRfVar var_86
  loc_5CF493: ILdI2 KeyAscii
  loc_5CF496: from_stack_2v = Proc_29_22_5DF4C8(from_stack_1v)
  loc_5CF49B: FLdI2 var_86
  loc_5CF49E: IStI2 KeyAscii
  loc_5CF4A1: ExitProcHresult
End Sub

Private Sub cboCompanias_Click() '5F2DD0
  'Data Table: 441CD4
  loc_5F2D34: FLdRfVar var_8A
  loc_5F2D37: FLdPrThis
  loc_5F2D38: VCallAd Control_ID_cboCompanias
  loc_5F2D3B: FStAdFunc var_88
  loc_5F2D3E: FLdPr var_88
  loc_5F2D41:  = Me.ListIndex
  loc_5F2D46: FLdI2 var_8A
  loc_5F2D49: LitI2_Byte &HFF
  loc_5F2D4B: EqI2
  loc_5F2D4C: FFree1Ad var_88
  loc_5F2D4F: BranchF loc_5F2D6A
  loc_5F2D52: LitStr vbNullString
  loc_5F2D55: FLdPrThis
  loc_5F2D56: VCallAd Control_ID_txtRazonSocial
  loc_5F2D59: FStAdFunc var_88
  loc_5F2D5C: FLdPr var_88
  loc_5F2D5F: Me.Text = from_stack_1
  loc_5F2D64: FFree1Ad var_88
  loc_5F2D67: Branch loc_5F2DB3
  loc_5F2D6A: FLdRfVar var_8A
  loc_5F2D6D: FLdPrThis
  loc_5F2D6E: VCallAd Control_ID_cboCompanias
  loc_5F2D71: FStAdFunc var_88
  loc_5F2D74: FLdPr var_88
  loc_5F2D77:  = Me.ListIndex
  loc_5F2D7C: LitI2_Byte 3
  loc_5F2D7E: FLdI2 var_8A
  loc_5F2D81: CI4UI1
  loc_5F2D82: FLdPr Me
  loc_5F2D85: MemLdStr global_56
  loc_5F2D88: AryLock
  loc_5F2D8B: Ary1LdRf
  loc_5F2D8C: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_5F2D91: FStStr var_94
  loc_5F2D94: AryUnlock
  loc_5F2D97: ILdRf var_94
  loc_5F2D9A: FLdPrThis
  loc_5F2D9B: VCallAd Control_ID_txtRazonSocial
  loc_5F2D9E: FStAdFunc var_98
  loc_5F2DA1: FLdPr var_98
  loc_5F2DA4: Me.Text = from_stack_1
  loc_5F2DA9: FFree1Str var_94
  loc_5F2DAC: FFreeAd var_88 = ""
  loc_5F2DB3: LitI2_Byte 0
  loc_5F2DB5: FLdPrThis
  loc_5F2DB6: VCallAd Control_ID_fraDatos
  loc_5F2DB9: FStAdFunc var_88
  loc_5F2DBC: FLdPr var_88
  loc_5F2DBF: Me.Enabled = from_stack_1b
  loc_5F2DC4: FFree1Ad var_88
  loc_5F2DC7: from_stack_1v = Proc_29_25_5E06A0()
  loc_5F2DCC: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '5D28A0
  'Data Table: 441CD4
  loc_5D2888: ILdRf Me
  loc_5D288B: FStAdNoPop
  loc_5D288F: ImpAdLdRf MemVar_7520D4
  loc_5D2892: NewIfNullPr Global
  loc_5D2895: Global.Unload from_stack_1
  loc_5D289A: FFree1Ad var_88
  loc_5D289D: ExitProcHresult
  loc_5D289E: OrI4
End Sub

Private Sub Form_Load() '5D7900
  'Data Table: 441CD4
  loc_5D78D4: ILdRf Me
  loc_5D78D7: CastAd
  loc_5D78DA: FStAdFunc var_88
  loc_5D78DD: FLdRfVar var_88
  loc_5D78E0: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5D78E5: FFree1Ad var_88
  loc_5D78E8: LitI2_Byte 0
  loc_5D78EA: FLdPrThis
  loc_5D78EB: VCallAd Control_ID_fraDatos
  loc_5D78EE: FStAdFunc var_88
  loc_5D78F1: FLdPr var_88
  loc_5D78F4: Me.Enabled = from_stack_1b
  loc_5D78F9: FFree1Ad var_88
  loc_5D78FC: ExitProcHresult
End Sub

Private Sub Form_Activate() '664554
  'Data Table: 441CD4
  loc_66422C: FLdRfVar var_A2
  loc_66422F: FLdRfVar var_88
  loc_664232: FLdRfVar var_A0
  loc_664235: ImpAdLdRf MemVar_74C760
  loc_664238: NewIfNullPr Formx
  loc_66423B: from_stack_1v = Formx.global_4589716Get()
  loc_664240: FLdPr var_A0
  loc_664243:  = Formx.Palette
  loc_664248: FLdI2 var_A2
  loc_66424B: NotI4
  loc_66424C: FFree1Ad var_A0
  loc_66424F: BranchF loc_66427E
  loc_664252: FLdRfVar var_B4
  loc_664255: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_66425A: FLdRfVar var_B4
  loc_66425D: CBoolVarNull
  loc_66425F: FFree1Var var_B4 = ""
  loc_664262: BranchF loc_66427B
  loc_664265: ILdRf Me
  loc_664268: FStAdNoPop
  loc_66426C: ImpAdLdRf MemVar_7520D4
  loc_66426F: NewIfNullPr Global
  loc_664272: Global.Unload from_stack_1
  loc_664277: FFree1Ad var_A0
  loc_66427A: ExitProcHresult
  loc_66427B: Branch loc_66422C
  loc_66427E: ILdRf var_88
  loc_664281: FnLenStr
  loc_664282: LitI4 &HA
  loc_664287: LtI4
  loc_664288: BranchF loc_66431E
  loc_66428B: FLdRfVar var_1F0
  loc_66428E: LitVar_Missing var_1EC
  loc_664291: LitVar_Missing var_1CC
  loc_664294: LitVar_Missing var_1AC
  loc_664297: LitVar_Missing var_18C
  loc_66429A: LitVar_Missing var_16C
  loc_66429D: LitVar_Missing var_14C
  loc_6642A0: LitVar_Missing var_12C
  loc_6642A3: LitVar_Missing var_10C
  loc_6642A6: LitVar_Missing var_EC
  loc_6642A9: LitVar_Missing var_B4
  loc_6642AC: LitStr "No hay compañías activas para su autorizacion por contingencia."
  loc_6642AF: FStStrCopy var_BC
  loc_6642B2: FLdRfVar var_BC
  loc_6642B5: LitI4 &H19
  loc_6642BA: PopTmpLdAdStr var_B8
  loc_6642BD: LitI2_Byte &H38
  loc_6642BF: PopTmpLdAd2 var_A2
  loc_6642C2: ImpAdLdRf MemVar_74C7D0
  loc_6642C5: NewIfNullPr clsMsg
  loc_6642C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6642CD: LitVar_Missing var_260
  loc_6642D0: LitVar_Missing var_240
  loc_6642D3: LitVar_Missing var_220
  loc_6642D6: LitI4 &H40
  loc_6642DB: FLdZeroAd var_1F0
  loc_6642DE: CVarStr var_200
  loc_6642E1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6642E6: FFree1Str var_BC
  loc_6642E9: FFreeVar var_B4 = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_200 = "": var_220 = "": var_240 = ""
  loc_664308: ILdRf Me
  loc_66430B: FStAdNoPop
  loc_66430F: ImpAdLdRf MemVar_7520D4
  loc_664312: NewIfNullPr Global
  loc_664315: Global.Unload from_stack_1
  loc_66431A: FFree1Ad var_A0
  loc_66431D: ExitProcHresult
  loc_66431E: FLdPrThis
  loc_66431F: VCallAd Control_ID_cboCompanias
  loc_664322: FStAdFunc var_A0
  loc_664325: FLdPr var_A0
  loc_664328: Me.Clear
  loc_66432D: FFree1Ad var_A0
  loc_664330: LitI4 0
  loc_664335: ILdRf var_88
  loc_664338: FnLenStr
  loc_664339: CR8I4
  loc_66433A: LitI2_Byte &H5C
  loc_66433C: CR8I2
  loc_66433D: DivR8
  loc_66433E: LitI2_Byte 1
  loc_664340: CR8I2
  loc_664341: SubR4
  loc_664342: CI4R8
  loc_664343: FLdPr Me
  loc_664346: MemLdRfVar from_stack_1.global_56
  loc_664349: Redim
  loc_664353: LitI2_Byte 1
  loc_664355: FStI2 var_8A
  loc_664358: FLdI2 var_8A
  loc_66435B: CI4UI1
  loc_66435C: ILdRf var_88
  loc_66435F: FnLenStr
  loc_664360: LtI4
  loc_664361: BranchF loc_6644AE
  loc_664364: LitStr "0"
  loc_664367: LitVarI2 var_B4, 5
  loc_66436C: FLdI2 var_8A
  loc_66436F: CI4UI1
  loc_664370: ILdRf var_88
  loc_664373: ImpAdCallI2 Mid$(, , )
  loc_664378: FStStrNoPop var_BC
  loc_66437B: ConcatStr
  loc_66437C: FStStrNoPop var_1F0
  loc_66437F: CI2Str
  loc_664381: CStrUI1
  loc_664383: FStStr var_90
  loc_664386: FFreeStr var_BC = ""
  loc_66438D: FFree1Var var_B4 = ""
  loc_664390: FLdI2 var_8A
  loc_664393: LitI2_Byte 5
  loc_664395: AddI2
  loc_664396: FStI2 var_8A
  loc_664399: LitStr "0"
  loc_66439C: LitVarI2 var_B4, 5
  loc_6643A1: FLdI2 var_8A
  loc_6643A4: CI4UI1
  loc_6643A5: ILdRf var_88
  loc_6643A8: ImpAdCallI2 Mid$(, , )
  loc_6643AD: FStStrNoPop var_BC
  loc_6643B0: ConcatStr
  loc_6643B1: FStStrNoPop var_1F0
  loc_6643B4: CI4Str
  loc_6643B5: CStrI4
  loc_6643B7: FStStr var_94
  loc_6643BA: FFreeStr var_BC = ""
  loc_6643C1: FFree1Var var_B4 = ""
  loc_6643C4: FLdI2 var_8A
  loc_6643C7: LitI2_Byte 5
  loc_6643C9: AddI2
  loc_6643CA: FStI2 var_8A
  loc_6643CD: LitVarI2 var_B4, 60
  loc_6643D2: FLdI2 var_8A
  loc_6643D5: CI4UI1
  loc_6643D6: ILdRf var_88
  loc_6643D9: ImpAdCallI2 Mid$(, , )
  loc_6643DE: FStStrNoPop var_BC
  loc_6643E1: ImpAdCallI2 Trim$()
  loc_6643E6: FStStr var_98
  loc_6643E9: FFree1Str var_BC
  loc_6643EC: FFree1Var var_B4 = ""
  loc_6643EF: FLdI2 var_8A
  loc_6643F2: LitI2_Byte &H3C
  loc_6643F4: AddI2
  loc_6643F5: FStI2 var_8A
  loc_6643F8: LitVarI2 var_B4, 20
  loc_6643FD: FLdI2 var_8A
  loc_664400: CI4UI1
  loc_664401: ILdRf var_88
  loc_664404: ImpAdCallI2 Mid$(, , )
  loc_664409: FStStrNoPop var_BC
  loc_66440C: ImpAdCallI2 Trim$()
  loc_664411: FStStr var_9C
  loc_664414: FFree1Str var_BC
  loc_664417: FFree1Var var_B4 = ""
  loc_66441A: FLdI2 var_8A
  loc_66441D: LitI2_Byte &H14
  loc_66441F: AddI2
  loc_664420: FStI2 var_8A
  loc_664423: FLdI2 var_8A
  loc_664426: LitI2_Byte 2
  loc_664428: AddI2
  loc_664429: FStI2 var_8A
  loc_66442C: FLdRfVar var_A2
  loc_66442F: FLdPrThis
  loc_664430: VCallAd Control_ID_cboCompanias
  loc_664433: FStAdFunc var_A0
  loc_664436: FLdPr var_A0
  loc_664439:  = Me.ListCount
  loc_66443E: FLdI2 var_A2
  loc_664441: CVarI2 var_CC
  loc_664444: PopAdLdVar
  loc_664445: ILdRf var_9C
  loc_664448: FLdPrThis
  loc_664449: VCallAd Control_ID_cboCompanias
  loc_66444C: FStAdFunc var_264
  loc_66444F: FLdPr var_264
  loc_664452: Me.AddItem from_stack_1, from_stack_2
  loc_664457: FFreeAd var_A0 = ""
  loc_66445E: ILdRf var_90
  loc_664461: LitStr ","
  loc_664464: ConcatStr
  loc_664465: FStStrNoPop var_BC
  loc_664468: ILdRf var_94
  loc_66446B: ConcatStr
  loc_66446C: FStStrNoPop var_1F0
  loc_66446F: LitStr ","
  loc_664472: ConcatStr
  loc_664473: FStStrNoPop var_268
  loc_664476: ILdRf var_98
  loc_664479: ConcatStr
  loc_66447A: FStStrNoPop var_26C
  loc_66447D: FLdRfVar var_A2
  loc_664480: FLdPrThis
  loc_664481: VCallAd Control_ID_cboCompanias
  loc_664484: FStAdFunc var_A0
  loc_664487: FLdPr var_A0
  loc_66448A:  = Me.ListCount
  loc_66448F: FLdI2 var_A2
  loc_664492: LitI2_Byte 1
  loc_664494: SubI2
  loc_664495: CI4UI1
  loc_664496: FLdPr Me
  loc_664499: MemLdStr global_56
  loc_66449C: Ary1StStrCopy
  loc_66449D: FFreeStr var_BC = "": var_1F0 = "": var_268 = ""
  loc_6644A8: FFree1Ad var_A0
  loc_6644AB: Branch loc_664358
  loc_6644AE: LitI2_Byte &HFF
  loc_6644B0: FLdPrThis
  loc_6644B1: VCallAd Control_ID_cboCompanias
  loc_6644B4: FStAdFunc var_A0
  loc_6644B7: FLdPr var_A0
  loc_6644BA: Me.ListIndex = from_stack_1
  loc_6644BF: FFree1Ad var_A0
  loc_6644C2: LitI2_Byte 0
  loc_6644C4: FLdPrThis
  loc_6644C5: VCallAd Control_ID_fraFlota
  loc_6644C8: FStAdFunc var_A0
  loc_6644CB: FLdPr var_A0
  loc_6644CE: Me.Enabled = from_stack_1b
  loc_6644D3: FFree1Ad var_A0
  loc_6644D6: FLdRfVar var_1F0
  loc_6644D9: LitVar_Missing var_1EC
  loc_6644DC: LitVar_Missing var_1CC
  loc_6644DF: LitVar_Missing var_1AC
  loc_6644E2: LitVar_Missing var_18C
  loc_6644E5: LitVar_Missing var_16C
  loc_6644E8: LitVar_Missing var_14C
  loc_6644EB: LitVar_Missing var_12C
  loc_6644EE: LitVar_Missing var_10C
  loc_6644F1: LitVar_Missing var_EC
  loc_6644F4: LitVar_Missing var_B4
  loc_6644F7: LitStr "Recuerde de relevar cuidadosamente la compañía y patente del vehículo antes de empezar la operación de contingencia."
  loc_6644FA: FStStrCopy var_BC
  loc_6644FD: FLdRfVar var_BC
  loc_664500: LitI4 &H1A
  loc_664505: PopTmpLdAdStr var_B8
  loc_664508: LitI2_Byte &H38
  loc_66450A: PopTmpLdAd2 var_A2
  loc_66450D: ImpAdLdRf MemVar_74C7D0
  loc_664510: NewIfNullPr clsMsg
  loc_664513: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664518: LitVar_Missing var_260
  loc_66451B: LitVar_Missing var_240
  loc_66451E: LitVar_Missing var_220
  loc_664521: LitI4 &H10
  loc_664526: FLdZeroAd var_1F0
  loc_664529: CVarStr var_200
  loc_66452C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_664531: FFree1Str var_BC
  loc_664534: FFreeVar var_B4 = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_200 = "": var_220 = "": var_240 = ""
  loc_664553: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() '6D9C70
  'Data Table: 441CD4
  loc_6D920C: FLdRfVar var_96
  loc_6D920F: from_stack_1v = Proc_29_24_61C7F0()
  loc_6D9214: FLdI2 var_96
  loc_6D9217: FLdRfVar var_98
  loc_6D921A: from_stack_1v = Proc_29_23_612484()
  loc_6D921F: FLdI2 var_98
  loc_6D9222: OrI4
  loc_6D9223: BranchF loc_6D9BE9
  loc_6D9226: FLdRfVar var_A0
  loc_6D9229: FLdPrThis
  loc_6D922A: VCallAd Control_ID_txtUsuario
  loc_6D922D: FStAdFunc var_9C
  loc_6D9230: FLdPr var_9C
  loc_6D9233:  = Me.Text
  loc_6D9238: LitI4 1
  loc_6D923D: LitI4 1
  loc_6D9242: LitVarStr var_C0, "0000"
  loc_6D9247: FStVarCopyObj var_D0
  loc_6D924A: FLdRfVar var_D0
  loc_6D924D: FLdZeroAd var_A0
  loc_6D9250: CVarStr var_B0
  loc_6D9253: ImpAdCallI2 Format$(, )
  loc_6D9258: FStStr var_88
  loc_6D925B: FFree1Ad var_9C
  loc_6D925E: FFreeVar var_B0 = ""
  loc_6D9265: FLdRfVar var_96
  loc_6D9268: FLdRfVar var_8C
  loc_6D926B: ILdRf var_88
  loc_6D926E: FLdRfVar var_9C
  loc_6D9271: ImpAdLdRf MemVar_74C760
  loc_6D9274: NewIfNullPr Formx
  loc_6D9277: from_stack_1v = Formx.global_4589716Get()
  loc_6D927C: FLdPr var_9C
  loc_6D927F: Call 0.Method_arg_26C ()
  loc_6D9284: FLdI2 var_96
  loc_6D9287: NotI4
  loc_6D9288: FFree1Ad var_9C
  loc_6D928B: BranchF loc_6D92BA
  loc_6D928E: FLdRfVar var_B0
  loc_6D9291: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D9296: FLdRfVar var_B0
  loc_6D9299: CBoolVarNull
  loc_6D929B: FFree1Var var_B0 = ""
  loc_6D929E: BranchF loc_6D92B7
  loc_6D92A1: ILdRf Me
  loc_6D92A4: FStAdNoPop
  loc_6D92A8: ImpAdLdRf MemVar_7520D4
  loc_6D92AB: NewIfNullPr Global
  loc_6D92AE: Global.Unload from_stack_1
  loc_6D92B3: FFree1Ad var_9C
  loc_6D92B6: ExitProcHresult
  loc_6D92B7: Branch loc_6D9265
  loc_6D92BA: ILdRf var_8C
  loc_6D92BD: FnLenStr
  loc_6D92BE: LitI4 0
  loc_6D92C3: EqI4
  loc_6D92C4: BranchF loc_6D934E
  loc_6D92C7: FLdRfVar var_1E8
  loc_6D92CA: LitVar_Missing var_1E4
  loc_6D92CD: LitVar_Missing var_1C4
  loc_6D92D0: LitVar_Missing var_1A4
  loc_6D92D3: LitVar_Missing var_184
  loc_6D92D6: LitVar_Missing var_164
  loc_6D92D9: LitVar_Missing var_144
  loc_6D92DC: LitVar_Missing var_124
  loc_6D92DF: LitVar_Missing var_104
  loc_6D92E2: LitVar_Missing var_D0
  loc_6D92E5: LitVar_Missing var_B0
  loc_6D92E8: LitStr "El código de usuario es incorrecto. Verifique por favor."
  loc_6D92EB: FStStrCopy var_A0
  loc_6D92EE: FLdRfVar var_A0
  loc_6D92F1: LitI4 &HF
  loc_6D92F6: PopTmpLdAdStr var_D4
  loc_6D92F9: LitI2_Byte &H38
  loc_6D92FB: PopTmpLdAd2 var_96
  loc_6D92FE: ImpAdLdRf MemVar_74C7D0
  loc_6D9301: NewIfNullPr clsMsg
  loc_6D9304: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9309: FLdZeroAd var_1E8
  loc_6D930C: FStStr var_88
  loc_6D930F: FFree1Str var_A0
  loc_6D9312: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_6D9329: LitVar_Missing var_104
  loc_6D932C: LitVar_Missing var_D0
  loc_6D932F: LitVar_Missing var_B0
  loc_6D9332: LitI4 &H10
  loc_6D9337: FLdRfVar var_88
  loc_6D933A: CVarRef
  loc_6D933F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D9344: FFreeVar var_B0 = "": var_D0 = ""
  loc_6D934D: ExitProcHresult
  loc_6D934E: FLdRfVar var_1E8
  loc_6D9351: LitVar_Missing var_1E4
  loc_6D9354: LitVar_Missing var_1C4
  loc_6D9357: LitVar_Missing var_1A4
  loc_6D935A: LitVar_Missing var_184
  loc_6D935D: LitVar_Missing var_164
  loc_6D9360: LitVar_Missing var_144
  loc_6D9363: LitVar_Missing var_124
  loc_6D9366: LitVar_Missing var_104
  loc_6D9369: LitVar_Missing var_D0
  loc_6D936C: LitVar_Missing var_B0
  loc_6D936F: LitStr "Sr."
  loc_6D9372: FStStrCopy var_A0
  loc_6D9375: FLdRfVar var_A0
  loc_6D9378: LitI4 &H10
  loc_6D937D: PopTmpLdAdStr var_D4
  loc_6D9380: LitI2_Byte &H38
  loc_6D9382: PopTmpLdAd2 var_96
  loc_6D9385: ImpAdLdRf MemVar_74C7D0
  loc_6D9388: NewIfNullPr clsMsg
  loc_6D938B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9390: ILdRf var_1E8
  loc_6D9393: ILdRf var_8C
  loc_6D9396: ConcatStr
  loc_6D9397: FStStrNoPop var_1EC
  loc_6D939A: LitI4 &HD
  loc_6D939F: ImpAdCallI2 Chr$()
  loc_6D93A4: FStStrNoPop var_1F0
  loc_6D93A7: ConcatStr
  loc_6D93A8: FStStrNoPop var_1F4
  loc_6D93AB: LitI4 &HA
  loc_6D93B0: ImpAdCallI2 Chr$()
  loc_6D93B5: FStStrNoPop var_1F8
  loc_6D93B8: ConcatStr
  loc_6D93B9: FStStrNoPop var_1FC
  loc_6D93BC: LitStr "	"
  loc_6D93BF: ConcatStr
  loc_6D93C0: FStStrNoPop var_34C
  loc_6D93C3: FLdRfVar var_348
  loc_6D93C6: LitVar_Missing var_344
  loc_6D93C9: LitVar_Missing var_324
  loc_6D93CC: LitVar_Missing var_304
  loc_6D93CF: LitVar_Missing var_2E4
  loc_6D93D2: LitVar_Missing var_2C4
  loc_6D93D5: LitVar_Missing var_2A4
  loc_6D93D8: LitVar_Missing var_284
  loc_6D93DB: LitVar_Missing var_264
  loc_6D93DE: LitVar_Missing var_244
  loc_6D93E1: LitVar_Missing var_224
  loc_6D93E4: LitStr "Está seguro que desea autorizar el despacho del surtidor"
  loc_6D93E7: FStStrCopy var_204
  loc_6D93EA: FLdRfVar var_204
  loc_6D93ED: LitI4 &H11
  loc_6D93F2: PopTmpLdAdStr var_200
  loc_6D93F5: LitI2_Byte &H38
  loc_6D93F7: PopTmpLdAd2 var_98
  loc_6D93FA: ImpAdLdRf MemVar_74C7D0
  loc_6D93FD: NewIfNullPr clsMsg
  loc_6D9400: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9405: ILdRf var_348
  loc_6D9408: ConcatStr
  loc_6D9409: FStStrNoPop var_350
  loc_6D940C: LitStr " "
  loc_6D940F: ConcatStr
  loc_6D9410: FStStrNoPop var_354
  loc_6D9413: FLdPr Me
  loc_6D9416: MemLdI2 nSurtidor
  loc_6D9419: CStrUI1
  loc_6D941B: FStStrNoPop var_358
  loc_6D941E: ConcatStr
  loc_6D941F: FStStrNoPop var_35C
  loc_6D9422: LitStr "?"
  loc_6D9425: ConcatStr
  loc_6D9426: FStStr var_88
  loc_6D9429: FFreeStr var_A0 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_204 = "": var_34C = "": var_348 = "": var_350 = "": var_354 = "": var_358 = ""
  loc_6D9448: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_6D9473: LitVar_Missing var_104
  loc_6D9476: LitVar_Missing var_D0
  loc_6D9479: LitVar_Missing var_B0
  loc_6D947C: LitI4 &H24
  loc_6D9481: FLdRfVar var_88
  loc_6D9484: CVarRef
  loc_6D9489: ImpAdCallI2 MsgBox(, , , , )
  loc_6D948E: LitI4 6
  loc_6D9493: EqI4
  loc_6D9494: FFreeVar var_B0 = "": var_D0 = ""
  loc_6D949D: BranchF loc_6D9BE6
  loc_6D94A0: FLdRfVar var_96
  loc_6D94A3: from_stack_1v = Proc_29_23_612484()
  loc_6D94A8: FLdI2 var_96
  loc_6D94AB: BranchF loc_6D9827
  loc_6D94AE: FLdRfVar var_96
  loc_6D94B1: FLdPrThis
  loc_6D94B2: VCallAd Control_ID_cboCompanias
  loc_6D94B5: FStAdFunc var_9C
  loc_6D94B8: FLdPr var_9C
  loc_6D94BB:  = Me.ListIndex
  loc_6D94C0: LitI2_Byte 2
  loc_6D94C2: FLdI2 var_96
  loc_6D94C5: CI4UI1
  loc_6D94C6: FLdPr Me
  loc_6D94C9: MemLdStr global_56
  loc_6D94CC: AryLock
  loc_6D94CF: Ary1LdRf
  loc_6D94D0: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_6D94D5: FStStr var_A0
  loc_6D94D8: AryUnlock
  loc_6D94DB: FLdPrThis
  loc_6D94DC: VCallAd Control_ID_txtPatente
  loc_6D94DF: FStAdFunc var_364
  loc_6D94E2: FLdPr var_364
  loc_6D94E5: LateIdLdVar var_104 DispID_22 0
  loc_6D94EC: PopAd
  loc_6D94EE: FLdPrThis
  loc_6D94EF: VCallAd Control_ID_txtPatente
  loc_6D94F2: FStAdFunc var_368
  loc_6D94F5: FLdPr var_368
  loc_6D94F8: LateIdLdVar var_124 DispID_22 0
  loc_6D94FF: CStrVarTmp
  loc_6D9500: CVarStr var_164
  loc_6D9503: LitVarStr var_F4, " "
  loc_6D9508: FStVarCopyObj var_144
  loc_6D950B: FLdRfVar var_144
  loc_6D950E: FLdRfVar var_104
  loc_6D9511: CStrVarTmp
  loc_6D9512: FStStrNoPop var_1E8
  loc_6D9515: LitStr vbNullString
  loc_6D9518: EqStr
  loc_6D951A: CVarBoolI2 var_E4
  loc_6D951E: FLdRfVar var_184
  loc_6D9521: ImpAdCallFPR4  = IIf(, , )
  loc_6D9526: FLdRfVar var_1F4
  loc_6D9529: FLdPrThis
  loc_6D952A: VCallAd Control_ID_txtOdometro
  loc_6D952D: FStAdFunc var_36C
  loc_6D9530: FLdPr var_36C
  loc_6D9533:  = Me.Text
  loc_6D9538: FLdRfVar var_204
  loc_6D953B: FLdPrThis
  loc_6D953C: VCallAd Control_ID_txtUsuario
  loc_6D953F: FStAdFunc var_370
  loc_6D9542: FLdPr var_370
  loc_6D9545:  = Me.Text
  loc_6D954A: FLdRfVar var_350
  loc_6D954D: FLdPrThis
  loc_6D954E: VCallAd Control_ID_txtFlota
  loc_6D9551: FStAdFunc var_374
  loc_6D9554: FLdPr var_374
  loc_6D9557:  = Me.Text
  loc_6D955C: FLdRfVar var_354
  loc_6D955F: FLdPrThis
  loc_6D9560: VCallAd Control_ID_txtFlota
  loc_6D9563: FStAdFunc var_378
  loc_6D9566: FLdPr var_378
  loc_6D9569:  = Me.Text
  loc_6D956E: FLdZeroAd var_354
  loc_6D9571: CVarStr var_284
  loc_6D9574: LitVarStr var_194, " "
  loc_6D9579: FStVarCopyObj var_264
  loc_6D957C: FLdRfVar var_264
  loc_6D957F: ILdRf var_350
  loc_6D9582: LitStr vbNullString
  loc_6D9585: EqStr
  loc_6D9587: CVarBoolI2 var_174
  loc_6D958B: FLdRfVar var_2A4
  loc_6D958E: ImpAdCallFPR4  = IIf(, , )
  loc_6D9593: FLdRfVar var_380
  loc_6D9596: FLdPrThis
  loc_6D9597: VCallAd Control_ID_txtAutorizacion
  loc_6D959A: FStAdFunc var_37C
  loc_6D959D: FLdPr var_37C
  loc_6D95A0:  = Me.Text
  loc_6D95A5: FLdRfVar var_390
  loc_6D95A8: FLdPrThis
  loc_6D95A9: VCallAd Control_ID_txtObservaciones
  loc_6D95AC: FStAdFunc var_38C
  loc_6D95AF: FLdPr var_38C
  loc_6D95B2:  = Me.Text
  loc_6D95B7: FLdRfVar var_398
  loc_6D95BA: FLdPrThis
  loc_6D95BB: VCallAd Control_ID_txtObservaciones
  loc_6D95BE: FStAdFunc var_394
  loc_6D95C1: FLdPr var_394
  loc_6D95C4:  = Me.Text
  loc_6D95C9: FLdZeroAd var_398
  loc_6D95CC: CVarStr var_344
  loc_6D95CF: LitVarStr var_234, " "
  loc_6D95D4: FStVarCopyObj var_324
  loc_6D95D7: FLdRfVar var_324
  loc_6D95DA: ILdRf var_390
  loc_6D95DD: LitStr vbNullString
  loc_6D95E0: EqStr
  loc_6D95E2: CVarBoolI2 var_214
  loc_6D95E6: FLdRfVar var_3A8
  loc_6D95E9: ImpAdCallFPR4  = IIf(, , )
  loc_6D95EE: LitVarStr var_254, "@"
  loc_6D95F3: FStVarCopyObj var_3B8
  loc_6D95F6: FLdRfVar var_3B8
  loc_6D95F9: LitI4 &H50
  loc_6D95FE: FLdRfVar var_3C8
  loc_6D9601: ImpAdCallFPR4  = String(, )
  loc_6D9606: FLdRfVar var_98
  loc_6D9609: FLdPrThis
  loc_6D960A: VCallAd Control_ID_cboCompanias
  loc_6D960D: FStAdFunc var_3FC
  loc_6D9610: FLdPr var_3FC
  loc_6D9613:  = Me.ListIndex
  loc_6D9618: LitI2_Byte 1
  loc_6D961A: FLdI2 var_98
  loc_6D961D: CI4UI1
  loc_6D961E: FLdPr Me
  loc_6D9621: MemLdStr global_56
  loc_6D9624: AryLock
  loc_6D9627: Ary1LdRf
  loc_6D9628: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_6D962D: FStStr var_404
  loc_6D9630: AryUnlock
  loc_6D9633: LitI4 1
  loc_6D9638: LitI4 1
  loc_6D963D: LitVarStr var_C0, "00000"
  loc_6D9642: FStVarCopyObj var_D0
  loc_6D9645: FLdRfVar var_D0
  loc_6D9648: LitStr "0"
  loc_6D964B: ILdRf var_A0
  loc_6D964E: ConcatStr
  loc_6D964F: CVarStr var_B0
  loc_6D9652: ImpAdCallI2 Format$(, )
  loc_6D9657: FStStrNoPop var_1EC
  loc_6D965A: LitI4 1
  loc_6D965F: LitI4 1
  loc_6D9664: LitVarStr var_114, "@@@@@@@"
  loc_6D9669: FStVarCopyObj var_1A4
  loc_6D966C: FLdRfVar var_1A4
  loc_6D966F: FLdRfVar var_184
  loc_6D9672: ImpAdCallI2 Format$(, )
  loc_6D9677: FStStrNoPop var_1F0
  loc_6D967A: ConcatStr
  loc_6D967B: FStStrNoPop var_1F8
  loc_6D967E: LitI4 1
  loc_6D9683: LitI4 1
  loc_6D9688: LitVarStr var_134, "0000000"
  loc_6D968D: FStVarCopyObj var_1E4
  loc_6D9690: FLdRfVar var_1E4
  loc_6D9693: LitStr "0"
  loc_6D9696: ILdRf var_1F4
  loc_6D9699: ConcatStr
  loc_6D969A: CVarStr var_1C4
  loc_6D969D: ImpAdCallI2 Format$(, )
  loc_6D96A2: FStStrNoPop var_1FC
  loc_6D96A5: ConcatStr
  loc_6D96A6: FStStrNoPop var_348
  loc_6D96A9: LitI4 1
  loc_6D96AE: LitI4 1
  loc_6D96B3: LitVarStr var_154, "0000"
  loc_6D96B8: FStVarCopyObj var_244
  loc_6D96BB: FLdRfVar var_244
  loc_6D96BE: LitStr "0"
  loc_6D96C1: ILdRf var_204
  loc_6D96C4: ConcatStr
  loc_6D96C5: CVarStr var_224
  loc_6D96C8: ImpAdCallI2 Format$(, )
  loc_6D96CD: FStStrNoPop var_34C
  loc_6D96D0: ConcatStr
  loc_6D96D1: FStStrNoPop var_358
  loc_6D96D4: LitI4 1
  loc_6D96D9: LitI4 1
  loc_6D96DE: LitVarStr var_1B4, "@@@@@@@@@@"
  loc_6D96E3: FStVarCopyObj var_2C4
  loc_6D96E6: FLdRfVar var_2C4
  loc_6D96E9: FLdRfVar var_2A4
  loc_6D96EC: ImpAdCallI2 Format$(, )
  loc_6D96F1: FStStrNoPop var_35C
  loc_6D96F4: ConcatStr
  loc_6D96F5: FStStrNoPop var_384
  loc_6D96F8: LitI4 1
  loc_6D96FD: LitI4 1
  loc_6D9702: LitVarStr var_1D4, "00000"
  loc_6D9707: FStVarCopyObj var_304
  loc_6D970A: FLdRfVar var_304
  loc_6D970D: LitStr "0"
  loc_6D9710: ILdRf var_380
  loc_6D9713: ConcatStr
  loc_6D9714: CVarStr var_2E4
  loc_6D9717: ImpAdCallI2 Format$(, )
  loc_6D971C: FStStrNoPop var_388
  loc_6D971F: ConcatStr
  loc_6D9720: FStStrNoPop var_3DC
  loc_6D9723: LitI4 1
  loc_6D9728: LitI4 1
  loc_6D972D: LitVarStr var_274, "!"
  loc_6D9732: FLdRfVar var_3C8
  loc_6D9735: ConcatVar var_3D8
  loc_6D9739: FLdRfVar var_3A8
  loc_6D973C: ImpAdCallI2 Format$(, )
  loc_6D9741: FStStrNoPop var_3E0
  loc_6D9744: ConcatStr
  loc_6D9745: FStStrNoPop var_3F4
  loc_6D9748: LitI4 1
  loc_6D974D: LitI4 1
  loc_6D9752: LitVarStr var_2B4, "00"
  loc_6D9757: FStVarCopyObj var_3F0
  loc_6D975A: FLdRfVar var_3F0
  loc_6D975D: FLdPr Me
  loc_6D9760: MemLdRfVar from_stack_1.nSurtidor
  loc_6D9763: CVarRef
  loc_6D9768: ImpAdCallI2 Format$(, )
  loc_6D976D: FStStrNoPop var_3F8
  loc_6D9770: ConcatStr
  loc_6D9771: FStStrNoPop var_428
  loc_6D9774: LitI4 1
  loc_6D9779: LitI4 1
  loc_6D977E: LitVarStr var_2D4, "000"
  loc_6D9783: FStVarCopyObj var_424
  loc_6D9786: FLdRfVar var_424
  loc_6D9789: FLdZeroAd var_404
  loc_6D978C: CVarStr var_414
  loc_6D978F: ImpAdCallI2 Format$(, )
  loc_6D9794: FStStrNoPop var_42C
  loc_6D9797: ConcatStr
  loc_6D9798: FStStr var_88
  loc_6D979B: FFreeStr var_A0 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_204 = "": var_348 = "": var_34C = "": var_350 = "": var_358 = "": var_35C = "": var_380 = "": var_384 = "": var_388 = "": var_390 = "": var_3DC = "": var_3E0 = "": var_3F4 = "": var_3F8 = "": var_428 = ""
  loc_6D97CC: FFreeAd var_9C = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_37C = "": var_38C = "": var_394 = ""
  loc_6D97E5: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_E4 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_224 = "": var_244 = "": var_174 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_214 = "": var_324 = "": var_344 = "": var_3B8 = "": var_3C8 = "": var_3A8 = "": var_3D8 = "": var_3F0 = "": var_414 = ""
  loc_6D9824: Branch loc_6D9A02
  loc_6D9827: FLdRfVar var_1F4
  loc_6D982A: FLdPrThis
  loc_6D982B: VCallAd Control_ID_txtUsuario
  loc_6D982E: FStAdFunc var_9C
  loc_6D9831: FLdPr var_9C
  loc_6D9834:  = Me.Text
  loc_6D9839: LitVarStr var_234, "@"
  loc_6D983E: FStVarCopyObj var_264
  loc_6D9841: FLdRfVar var_264
  loc_6D9844: LitI4 &H50
  loc_6D9849: FLdRfVar var_284
  loc_6D984C: ImpAdCallFPR4  = String(, )
  loc_6D9851: LitI4 1
  loc_6D9856: LitI4 1
  loc_6D985B: LitVarStr var_E4, "00000"
  loc_6D9860: FStVarCopyObj var_D0
  loc_6D9863: FLdRfVar var_D0
  loc_6D9866: LitVarI2 var_B0, 0
  loc_6D986B: ImpAdCallI2 Format$(, )
  loc_6D9870: FStStrNoPop var_A0
  loc_6D9873: LitI4 1
  loc_6D9878: LitI4 1
  loc_6D987D: LitVarStr var_114, "@@@@@@@"
  loc_6D9882: FStVarCopyObj var_124
  loc_6D9885: FLdRfVar var_124
  loc_6D9888: LitVarStr var_F4, " "
  loc_6D988D: FStVarCopyObj var_104
  loc_6D9890: FLdRfVar var_104
  loc_6D9893: ImpAdCallI2 Format$(, )
  loc_6D9898: FStStrNoPop var_1E8
  loc_6D989B: ConcatStr
  loc_6D989C: FStStrNoPop var_1EC
  loc_6D989F: LitI4 1
  loc_6D98A4: LitI4 1
  loc_6D98A9: LitVarStr var_154, "0000000"
  loc_6D98AE: FStVarCopyObj var_164
  loc_6D98B1: FLdRfVar var_164
  loc_6D98B4: LitVarI2 var_144, 0
  loc_6D98B9: ImpAdCallI2 Format$(, )
  loc_6D98BE: FStStrNoPop var_1F0
  loc_6D98C1: ConcatStr
  loc_6D98C2: FStStrNoPop var_1F8
  loc_6D98C5: LitI4 1
  loc_6D98CA: LitI4 1
  loc_6D98CF: LitVarStr var_174, "0000"
  loc_6D98D4: FStVarCopyObj var_1A4
  loc_6D98D7: FLdRfVar var_1A4
  loc_6D98DA: FLdZeroAd var_1F4
  loc_6D98DD: CVarStr var_184
  loc_6D98E0: ImpAdCallI2 Format$(, )
  loc_6D98E5: FStStrNoPop var_1FC
  loc_6D98E8: ConcatStr
  loc_6D98E9: FStStrNoPop var_204
  loc_6D98EC: LitI4 1
  loc_6D98F1: LitI4 1
  loc_6D98F6: LitVarStr var_1B4, "@@@@@@@@@@"
  loc_6D98FB: FStVarCopyObj var_1E4
  loc_6D98FE: FLdRfVar var_1E4
  loc_6D9901: LitVarStr var_194, " "
  loc_6D9906: FStVarCopyObj var_1C4
  loc_6D9909: FLdRfVar var_1C4
  loc_6D990C: ImpAdCallI2 Format$(, )
  loc_6D9911: FStStrNoPop var_348
  loc_6D9914: ConcatStr
  loc_6D9915: FStStrNoPop var_34C
  loc_6D9918: LitI4 1
  loc_6D991D: LitI4 1
  loc_6D9922: LitVarStr var_214, "00000"
  loc_6D9927: FStVarCopyObj var_244
  loc_6D992A: FLdRfVar var_244
  loc_6D992D: LitVarI2 var_224, 0
  loc_6D9932: ImpAdCallI2 Format$(, )
  loc_6D9937: FStStrNoPop var_350
  loc_6D993A: ConcatStr
  loc_6D993B: FStStrNoPop var_354
  loc_6D993E: LitI4 1
  loc_6D9943: LitI4 1
  loc_6D9948: FLdRfVar var_284
  loc_6D994B: LitVarStr var_254, " "
  loc_6D9950: FStVarCopyObj var_2A4
  loc_6D9953: FLdRfVar var_2A4
  loc_6D9956: ImpAdCallI2 Format$(, )
  loc_6D995B: FStStrNoPop var_358
  loc_6D995E: ConcatStr
  loc_6D995F: FStStrNoPop var_35C
  loc_6D9962: LitI4 1
  loc_6D9967: LitI4 1
  loc_6D996C: LitVarStr var_294, "00"
  loc_6D9971: FStVarCopyObj var_2C4
  loc_6D9974: FLdRfVar var_2C4
  loc_6D9977: FLdPr Me
  loc_6D997A: MemLdRfVar from_stack_1.nSurtidor
  loc_6D997D: CVarRef
  loc_6D9982: ImpAdCallI2 Format$(, )
  loc_6D9987: FStStrNoPop var_380
  loc_6D998A: ConcatStr
  loc_6D998B: FStStrNoPop var_384
  loc_6D998E: LitI4 1
  loc_6D9993: LitI4 1
  loc_6D9998: LitVarStr var_2D4, "000"
  loc_6D999D: FStVarCopyObj var_2E4
  loc_6D99A0: FLdRfVar var_2E4
  loc_6D99A3: ImpAdLdRf MemVar_74C3A8
  loc_6D99A6: CVarRef
  loc_6D99AB: ImpAdCallI2 Format$(, )
  loc_6D99B0: FStStrNoPop var_388
  loc_6D99B3: ConcatStr
  loc_6D99B4: FStStr var_88
  loc_6D99B7: FFreeStr var_A0 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F8 = "": var_1FC = "": var_204 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_380 = "": var_384 = ""
  loc_6D99DA: FFree1Ad var_9C
  loc_6D99DD: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_224 = "": var_244 = "": var_264 = "": var_2A4 = "": var_284 = "": var_2C4 = ""
  loc_6D9A02: LitI2_Byte 0
  loc_6D9A04: FStI2 var_94
  loc_6D9A07: FLdRfVar var_96
  loc_6D9A0A: FLdPr Me
  loc_6D9A0D: MemLdI2 nSurtidor
  loc_6D9A10: FLdRfVar var_94
  loc_6D9A13: FLdRfVar var_9C
  loc_6D9A16: ImpAdLdRf MemVar_74C760
  loc_6D9A19: NewIfNullPr Formx
  loc_6D9A1C: from_stack_1v = Formx.global_4589716Get()
  loc_6D9A21: FLdPr var_9C
  loc_6D9A24: Call 0.Method_arg_27C ()
  loc_6D9A29: FFree1Ad var_9C
  loc_6D9A2C: FLdI2 var_94
  loc_6D9A2F: NotI4
  loc_6D9A30: BranchF loc_6D9AB1
  loc_6D9A33: FLdRfVar var_1E8
  loc_6D9A36: LitVar_Missing var_1E4
  loc_6D9A39: LitVar_Missing var_1C4
  loc_6D9A3C: LitVar_Missing var_1A4
  loc_6D9A3F: LitVar_Missing var_184
  loc_6D9A42: LitVar_Missing var_164
  loc_6D9A45: LitVar_Missing var_144
  loc_6D9A48: LitVar_Missing var_124
  loc_6D9A4B: LitVar_Missing var_104
  loc_6D9A4E: LitVar_Missing var_D0
  loc_6D9A51: LitVar_Missing var_B0
  loc_6D9A54: LitStr "No puede autorizar el despacho devido a que surtidor ya esta despachando."
  loc_6D9A57: FStStrCopy var_A0
  loc_6D9A5A: FLdRfVar var_A0
  loc_6D9A5D: LitI4 &H12
  loc_6D9A62: PopTmpLdAdStr var_D4
  loc_6D9A65: LitI2_Byte &H38
  loc_6D9A67: PopTmpLdAd2 var_96
  loc_6D9A6A: ImpAdLdRf MemVar_74C7D0
  loc_6D9A6D: NewIfNullPr clsMsg
  loc_6D9A70: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9A75: LitVar_Missing var_284
  loc_6D9A78: LitVar_Missing var_264
  loc_6D9A7B: LitVar_Missing var_244
  loc_6D9A7E: LitI4 &H40
  loc_6D9A83: FLdZeroAd var_1E8
  loc_6D9A86: CVarStr var_224
  loc_6D9A89: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D9A8E: FFree1Str var_A0
  loc_6D9A91: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_224 = "": var_244 = "": var_264 = ""
  loc_6D9AB0: ExitProcHresult
  loc_6D9AB1: FLdRfVar var_96
  loc_6D9AB4: FLdRfVar var_90
  loc_6D9AB7: ILdRf var_88
  loc_6D9ABA: FLdRfVar var_9C
  loc_6D9ABD: ImpAdLdRf MemVar_74C760
  loc_6D9AC0: NewIfNullPr Formx
  loc_6D9AC3: from_stack_1v = Formx.global_4589716Get()
  loc_6D9AC8: FLdPr var_9C
  loc_6D9ACB:  = Formx.ShowInTaskbar
  loc_6D9AD0: FLdI2 var_96
  loc_6D9AD3: NotI4
  loc_6D9AD4: FFree1Ad var_9C
  loc_6D9AD7: BranchF loc_6D9B06
  loc_6D9ADA: FLdRfVar var_B0
  loc_6D9ADD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D9AE2: FLdRfVar var_B0
  loc_6D9AE5: CBoolVarNull
  loc_6D9AE7: FFree1Var var_B0 = ""
  loc_6D9AEA: BranchF loc_6D9B03
  loc_6D9AED: ILdRf Me
  loc_6D9AF0: FStAdNoPop
  loc_6D9AF4: ImpAdLdRf MemVar_7520D4
  loc_6D9AF7: NewIfNullPr Global
  loc_6D9AFA: Global.Unload from_stack_1
  loc_6D9AFF: FFree1Ad var_9C
  loc_6D9B02: ExitProcHresult
  loc_6D9B03: Branch loc_6D9AB1
  loc_6D9B06: ILdRf var_90
  loc_6D9B09: LitStr "0"
  loc_6D9B0C: EqStr
  loc_6D9B0E: BranchF loc_6D9B60
  loc_6D9B11: FLdRfVar var_A0
  loc_6D9B14: ImpAdLdRf MemVar_74D8B0
  loc_6D9B17: NewIfNullPr Consola
  loc_6D9B1A: from_stack_1v = Consola.sAutorizadosCTFGet()
  loc_6D9B1F: FLdZeroAd var_A0
  loc_6D9B22: FStStr var_88
  loc_6D9B25: FLdRfVar var_88
  loc_6D9B28: FLdPr Me
  loc_6D9B2B: MemLdI2 nSurtidor
  loc_6D9B2E: CI4UI1
  loc_6D9B2F: LitI4 1
  loc_6D9B34: LitStr "1"
  loc_6D9B37: MidStr arg_0
  loc_6D9B3A: ILdRf var_88
  loc_6D9B3D: ImpAdLdRf MemVar_74D8B0
  loc_6D9B40: NewIfNullPr Consola
  loc_6D9B43: Call Consola.sAutorizadosCTFPut(from_stack_1v)
  loc_6D9B48: ILdRf Me
  loc_6D9B4B: FStAdNoPop
  loc_6D9B4F: ImpAdLdRf MemVar_7520D4
  loc_6D9B52: NewIfNullPr Global
  loc_6D9B55: Global.Unload from_stack_1
  loc_6D9B5A: FFree1Ad var_9C
  loc_6D9B5D: Branch loc_6D9BE6
  loc_6D9B60: FLdRfVar var_1E8
  loc_6D9B63: LitVar_Missing var_1E4
  loc_6D9B66: LitVar_Missing var_1C4
  loc_6D9B69: LitVar_Missing var_1A4
  loc_6D9B6C: LitVar_Missing var_184
  loc_6D9B6F: LitVar_Missing var_164
  loc_6D9B72: LitVar_Missing var_144
  loc_6D9B75: LitVar_Missing var_124
  loc_6D9B78: LitVar_Missing var_104
  loc_6D9B7B: LitVar_Missing var_D0
  loc_6D9B7E: LitVar_Missing var_B0
  loc_6D9B81: LitStr "Hubo un error al autorizar el despacho. Por favor vuelva a repetir la operación."
  loc_6D9B84: FStStrCopy var_A0
  loc_6D9B87: FLdRfVar var_A0
  loc_6D9B8A: LitI4 &H13
  loc_6D9B8F: PopTmpLdAdStr var_D4
  loc_6D9B92: LitI2_Byte &H38
  loc_6D9B94: PopTmpLdAd2 var_96
  loc_6D9B97: ImpAdLdRf MemVar_74C7D0
  loc_6D9B9A: NewIfNullPr clsMsg
  loc_6D9B9D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9BA2: FLdZeroAd var_1E8
  loc_6D9BA5: FStStr var_88
  loc_6D9BA8: FFree1Str var_A0
  loc_6D9BAB: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_6D9BC2: LitVar_Missing var_104
  loc_6D9BC5: LitVar_Missing var_D0
  loc_6D9BC8: LitVar_Missing var_B0
  loc_6D9BCB: LitI4 &H40
  loc_6D9BD0: FLdRfVar var_88
  loc_6D9BD3: CVarRef
  loc_6D9BD8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D9BDD: FFreeVar var_B0 = "": var_D0 = ""
  loc_6D9BE6: Branch loc_6D9C6F
  loc_6D9BE9: FLdRfVar var_1E8
  loc_6D9BEC: LitVar_Missing var_1E4
  loc_6D9BEF: LitVar_Missing var_1C4
  loc_6D9BF2: LitVar_Missing var_1A4
  loc_6D9BF5: LitVar_Missing var_184
  loc_6D9BF8: LitVar_Missing var_164
  loc_6D9BFB: LitVar_Missing var_144
  loc_6D9BFE: LitVar_Missing var_124
  loc_6D9C01: LitVar_Missing var_104
  loc_6D9C04: LitVar_Missing var_D0
  loc_6D9C07: LitVar_Missing var_B0
  loc_6D9C0A: LitStr "Los datos requeridos para autorizar el despacho estan incompletos. Verifique por favor."
  loc_6D9C0D: FStStrCopy var_A0
  loc_6D9C10: FLdRfVar var_A0
  loc_6D9C13: LitI4 &H14
  loc_6D9C18: PopTmpLdAdStr var_D4
  loc_6D9C1B: LitI2_Byte &H38
  loc_6D9C1D: PopTmpLdAd2 var_96
  loc_6D9C20: ImpAdLdRf MemVar_74C7D0
  loc_6D9C23: NewIfNullPr clsMsg
  loc_6D9C26: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D9C2B: FLdZeroAd var_1E8
  loc_6D9C2E: FStStr var_88
  loc_6D9C31: FFree1Str var_A0
  loc_6D9C34: FFreeVar var_B0 = "": var_D0 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_6D9C4B: LitVar_Missing var_104
  loc_6D9C4E: LitVar_Missing var_D0
  loc_6D9C51: LitVar_Missing var_B0
  loc_6D9C54: LitI4 &H40
  loc_6D9C59: FLdRfVar var_88
  loc_6D9C5C: CVarRef
  loc_6D9C61: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6D9C66: FFreeVar var_B0 = "": var_D0 = ""
  loc_6D9C6F: ExitProcHresult
End Sub

Private Sub txtUsuario_Change() '5E66A4
  'Data Table: 441CD4
  loc_5E6638: FLdPrThis
  loc_5E6639: VCallAd Control_ID_txtUsuario
  loc_5E663C: CVarAd
  loc_5E6640: FLdRfVar var_A4
  loc_5E6643: ImpAdCallFPR4  = Trim()
  loc_5E6648: FLdRfVar var_A4
  loc_5E664B: LitVarStr var_B4, vbNullString
  loc_5E6650: HardType
  loc_5E6651: NeVar var_C4
  loc_5E6655: CBoolVar
  loc_5E6657: FLdPrThis
  loc_5E6658: VCallAd Control_ID_fraFlota
  loc_5E665B: FStAdFunc var_C8
  loc_5E665E: FLdPr var_C8
  loc_5E6661: Me.Enabled = from_stack_1b
  loc_5E6666: FFree1Ad var_C8
  loc_5E6669: FFreeVar var_94 = ""
  loc_5E6670: LitI2_Byte &HFF
  loc_5E6672: FLdPrThis
  loc_5E6673: VCallAd Control_ID_cboCompanias
  loc_5E6676: FStAdFunc var_C8
  loc_5E6679: FLdPr var_C8
  loc_5E667C: Me.ListIndex = from_stack_1
  loc_5E6681: FFree1Ad var_C8
  loc_5E6684: LitVarStr var_B4, vbNullString
  loc_5E6689: PopAdLdVar
  loc_5E668A: FLdPrThis
  loc_5E668B: VCallAd Control_ID_txtPatente
  loc_5E668E: FStAdFunc var_C8
  loc_5E6691: FLdPr var_C8
  loc_5E6694: LateIdSt
  loc_5E6699: FFree1Ad var_C8
  loc_5E669C: from_stack_1v = Proc_29_25_5E06A0()
  loc_5E66A1: ExitProcHresult
End Sub

Private Sub txtUsuario_GotFocus() '5CFC90
  'Data Table: 441CD4
  loc_5CFC7C: FLdPrThis
  loc_5CFC7D: VCallAd Control_ID_txtUsuario
  loc_5CFC80: FStAdFunc var_88
  loc_5CFC83: FLdRfVar var_88
  loc_5CFC86: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5CFC8B: FFree1Ad var_88
  loc_5CFC8E: ExitProcHresult
End Sub

Private Sub txtUsuario_KeyPress(KeyAscii As Integer) '5CF74C
  'Data Table: 441CD4
  loc_5CF738: FLdRfVar var_86
  loc_5CF73B: ILdI2 KeyAscii
  loc_5CF73E: from_stack_2v = Proc_29_22_5DF4C8(from_stack_1v)
  loc_5CF743: FLdI2 var_86
  loc_5CF746: IStI2 KeyAscii
  loc_5CF749: ExitProcHresult
End Sub

Private Sub cmdChequear_Click() '6A3074
  'Data Table: 441CD4
  loc_6A29F8: FLdRfVar var_96
  loc_6A29FB: FLdPrThis
  loc_6A29FC: VCallAd Control_ID_cboCompanias
  loc_6A29FF: FStAdFunc var_94
  loc_6A2A02: FLdPr var_94
  loc_6A2A05:  = Me.ListIndex
  loc_6A2A0A: FLdI2 var_96
  loc_6A2A0D: LitI2_Byte &HFF
  loc_6A2A0F: EqI2
  loc_6A2A10: FFree1Ad var_94
  loc_6A2A13: BranchF loc_6A2A94
  loc_6A2A16: FLdRfVar var_1E4
  loc_6A2A19: LitVar_Missing var_1E0
  loc_6A2A1C: LitVar_Missing var_1C0
  loc_6A2A1F: LitVar_Missing var_1A0
  loc_6A2A22: LitVar_Missing var_180
  loc_6A2A25: LitVar_Missing var_160
  loc_6A2A28: LitVar_Missing var_140
  loc_6A2A2B: LitVar_Missing var_120
  loc_6A2A2E: LitVar_Missing var_100
  loc_6A2A31: LitVar_Missing var_E0
  loc_6A2A34: LitVar_Missing var_C0
  loc_6A2A37: LitStr "Debe elegir cuidadosamente una compañía. Verifique por favor."
  loc_6A2A3A: FStStrCopy var_A0
  loc_6A2A3D: FLdRfVar var_A0
  loc_6A2A40: LitI4 &H15
  loc_6A2A45: PopTmpLdAdStr var_9C
  loc_6A2A48: LitI2_Byte &H38
  loc_6A2A4A: PopTmpLdAd2 var_96
  loc_6A2A4D: ImpAdLdRf MemVar_74C7D0
  loc_6A2A50: NewIfNullPr clsMsg
  loc_6A2A53: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2A58: LitVar_Missing var_254
  loc_6A2A5B: LitVar_Missing var_234
  loc_6A2A5E: LitVar_Missing var_214
  loc_6A2A61: LitI4 &H10
  loc_6A2A66: FLdZeroAd var_1E4
  loc_6A2A69: CVarStr var_1F4
  loc_6A2A6C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A2A71: FFree1Str var_A0
  loc_6A2A74: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_6A2A93: ExitProcHresult
  loc_6A2A94: FLdRfVar var_A0
  loc_6A2A97: FLdPrThis
  loc_6A2A98: VCallAd Control_ID_txtUsuario
  loc_6A2A9B: FStAdFunc var_94
  loc_6A2A9E: FLdPr var_94
  loc_6A2AA1:  = Me.Text
  loc_6A2AA6: LitI4 1
  loc_6A2AAB: LitI4 1
  loc_6A2AB0: LitVarStr var_B0, "0000"
  loc_6A2AB5: FStVarCopyObj var_E0
  loc_6A2AB8: FLdRfVar var_E0
  loc_6A2ABB: FLdZeroAd var_A0
  loc_6A2ABE: CVarStr var_C0
  loc_6A2AC1: ImpAdCallI2 Format$(, )
  loc_6A2AC6: FStStr var_88
  loc_6A2AC9: FFree1Ad var_94
  loc_6A2ACC: FFreeVar var_C0 = ""
  loc_6A2AD3: FLdRfVar var_96
  loc_6A2AD6: FLdRfVar var_8C
  loc_6A2AD9: ILdRf var_88
  loc_6A2ADC: FLdRfVar var_94
  loc_6A2ADF: ImpAdLdRf MemVar_74C760
  loc_6A2AE2: NewIfNullPr Formx
  loc_6A2AE5: from_stack_1v = Formx.global_4589716Get()
  loc_6A2AEA: FLdPr var_94
  loc_6A2AED: Call 0.Method_arg_26C ()
  loc_6A2AF2: FLdI2 var_96
  loc_6A2AF5: NotI4
  loc_6A2AF6: FFree1Ad var_94
  loc_6A2AF9: BranchF loc_6A2B28
  loc_6A2AFC: FLdRfVar var_C0
  loc_6A2AFF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A2B04: FLdRfVar var_C0
  loc_6A2B07: CBoolVarNull
  loc_6A2B09: FFree1Var var_C0 = ""
  loc_6A2B0C: BranchF loc_6A2B25
  loc_6A2B0F: ILdRf Me
  loc_6A2B12: FStAdNoPop
  loc_6A2B16: ImpAdLdRf MemVar_7520D4
  loc_6A2B19: NewIfNullPr Global
  loc_6A2B1C: Global.Unload from_stack_1
  loc_6A2B21: FFree1Ad var_94
  loc_6A2B24: ExitProcHresult
  loc_6A2B25: Branch loc_6A2AD3
  loc_6A2B28: ILdRf var_8C
  loc_6A2B2B: FnLenStr
  loc_6A2B2C: LitI4 0
  loc_6A2B31: EqI4
  loc_6A2B32: BranchF loc_6A2BBC
  loc_6A2B35: FLdRfVar var_1E4
  loc_6A2B38: LitVar_Missing var_1E0
  loc_6A2B3B: LitVar_Missing var_1C0
  loc_6A2B3E: LitVar_Missing var_1A0
  loc_6A2B41: LitVar_Missing var_180
  loc_6A2B44: LitVar_Missing var_160
  loc_6A2B47: LitVar_Missing var_140
  loc_6A2B4A: LitVar_Missing var_120
  loc_6A2B4D: LitVar_Missing var_100
  loc_6A2B50: LitVar_Missing var_E0
  loc_6A2B53: LitVar_Missing var_C0
  loc_6A2B56: LitStr "El código de usuario es incorrecto. Verifique por favor."
  loc_6A2B59: FStStrCopy var_A0
  loc_6A2B5C: FLdRfVar var_A0
  loc_6A2B5F: LitI4 &HF
  loc_6A2B64: PopTmpLdAdStr var_9C
  loc_6A2B67: LitI2_Byte &H38
  loc_6A2B69: PopTmpLdAd2 var_96
  loc_6A2B6C: ImpAdLdRf MemVar_74C7D0
  loc_6A2B6F: NewIfNullPr clsMsg
  loc_6A2B72: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2B77: FLdZeroAd var_1E4
  loc_6A2B7A: FStStr var_88
  loc_6A2B7D: FFree1Str var_A0
  loc_6A2B80: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6A2B97: LitVar_Missing var_100
  loc_6A2B9A: LitVar_Missing var_E0
  loc_6A2B9D: LitVar_Missing var_C0
  loc_6A2BA0: LitI4 &H40
  loc_6A2BA5: FLdRfVar var_88
  loc_6A2BA8: CVarRef
  loc_6A2BAD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A2BB2: FFreeVar var_C0 = "": var_E0 = ""
  loc_6A2BBB: ExitProcHresult
  loc_6A2BBC: FLdPrThis
  loc_6A2BBD: VCallAd Control_ID_txtPatente
  loc_6A2BC0: FStAdFunc var_94
  loc_6A2BC3: FLdPr var_94
  loc_6A2BC6: LateIdLdVar var_C0 DispID_22 0
  loc_6A2BCD: CStrVarTmp
  loc_6A2BCE: CVarStr var_E0
  loc_6A2BD1: FLdRfVar var_100
  loc_6A2BD4: ImpAdCallFPR4  = Trim()
  loc_6A2BD9: FLdRfVar var_100
  loc_6A2BDC: LitVarStr var_B0, vbNullString
  loc_6A2BE1: HardType
  loc_6A2BE2: EqVar var_120
  loc_6A2BE6: FLdPrThis
  loc_6A2BE7: VCallAd Control_ID_txtPatente
  loc_6A2BEA: FStAdFunc var_258
  loc_6A2BED: FLdPr var_258
  loc_6A2BF0: LateIdLdVar var_140 DispID_22 0
  loc_6A2BF7: CStrVarTmp
  loc_6A2BF8: FStStrNoPop var_A0
  loc_6A2BFB: FnLenStr
  loc_6A2BFC: LitI4 7
  loc_6A2C01: NeI4
  loc_6A2C02: CVarBoolI2 var_D0
  loc_6A2C06: OrVar var_160
  loc_6A2C0A: CBoolVarNull
  loc_6A2C0C: FFree1Str var_A0
  loc_6A2C0F: FFreeAd var_94 = ""
  loc_6A2C16: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_140 = ""
  loc_6A2C23: BranchF loc_6A2D52
  loc_6A2C26: FLdRfVar var_1E4
  loc_6A2C29: LitVar_Missing var_1E0
  loc_6A2C2C: LitVar_Missing var_1C0
  loc_6A2C2F: LitVar_Missing var_1A0
  loc_6A2C32: LitVar_Missing var_180
  loc_6A2C35: LitVar_Missing var_160
  loc_6A2C38: LitVar_Missing var_140
  loc_6A2C3B: LitVar_Missing var_120
  loc_6A2C3E: LitVar_Missing var_100
  loc_6A2C41: LitVar_Missing var_E0
  loc_6A2C44: LitVar_Missing var_C0
  loc_6A2C47: LitStr "Sr."
  loc_6A2C4A: FStStrCopy var_A0
  loc_6A2C4D: FLdRfVar var_A0
  loc_6A2C50: LitI4 &H10
  loc_6A2C55: PopTmpLdAdStr var_9C
  loc_6A2C58: LitI2_Byte &H38
  loc_6A2C5A: PopTmpLdAd2 var_96
  loc_6A2C5D: ImpAdLdRf MemVar_74C7D0
  loc_6A2C60: NewIfNullPr clsMsg
  loc_6A2C63: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2C68: LitI4 &HD
  loc_6A2C6D: ImpAdCallI2 Chr$()
  loc_6A2C72: FStStr var_3C4
  loc_6A2C75: LitI4 &HA
  loc_6A2C7A: ImpAdCallI2 Chr$()
  loc_6A2C7F: FStStr var_3C8
  loc_6A2C82: FLdRfVar var_34C
  loc_6A2C85: LitVar_Missing var_348
  loc_6A2C88: LitVar_Missing var_328
  loc_6A2C8B: LitVar_Missing var_308
  loc_6A2C8E: LitVar_Missing var_2E8
  loc_6A2C91: LitVar_Missing var_2C8
  loc_6A2C94: LitVar_Missing var_2A8
  loc_6A2C97: LitVar_Missing var_254
  loc_6A2C9A: LitVar_Missing var_234
  loc_6A2C9D: LitVar_Missing var_214
  loc_6A2CA0: LitVar_Missing var_1F4
  loc_6A2CA3: LitStr "Debe ingresar la patente del vehículo. Verifique por favor."
  loc_6A2CA6: FStStrCopy var_278
  loc_6A2CA9: FLdRfVar var_278
  loc_6A2CAC: LitI4 &H16
  loc_6A2CB1: PopTmpLdAdStr var_274
  loc_6A2CB4: LitI2_Byte &H38
  loc_6A2CB6: PopTmpLdAd2 var_26E
  loc_6A2CB9: ImpAdLdRf MemVar_74C7D0
  loc_6A2CBC: NewIfNullPr clsMsg
  loc_6A2CBF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2CC4: LitVar_Missing var_3C0
  loc_6A2CC7: LitVar_Missing var_3A0
  loc_6A2CCA: LitVar_Missing var_380
  loc_6A2CCD: LitI4 &H40
  loc_6A2CD2: ILdRf var_1E4
  loc_6A2CD5: ILdRf var_8C
  loc_6A2CD8: ConcatStr
  loc_6A2CD9: FStStrNoPop var_25C
  loc_6A2CDC: FLdZeroAd var_3C4
  loc_6A2CDF: FStStrNoPop var_260
  loc_6A2CE2: ConcatStr
  loc_6A2CE3: FStStrNoPop var_264
  loc_6A2CE6: FLdZeroAd var_3C8
  loc_6A2CE9: FStStrNoPop var_268
  loc_6A2CEC: ConcatStr
  loc_6A2CED: FStStrNoPop var_26C
  loc_6A2CF0: LitStr "	"
  loc_6A2CF3: ConcatStr
  loc_6A2CF4: FStStrNoPop var_350
  loc_6A2CF7: ILdRf var_34C
  loc_6A2CFA: ConcatStr
  loc_6A2CFB: CVarStr var_360
  loc_6A2CFE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A2D03: FFreeStr var_A0 = "": var_1E4 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_278 = "": var_350 = "": var_34C = "": var_3C4 = ""
  loc_6A2D1E: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_360 = "": var_380 = "": var_3A0 = ""
  loc_6A2D51: ExitProcHresult
  loc_6A2D52: FLdRfVar var_96
  loc_6A2D55: FLdPrThis
  loc_6A2D56: VCallAd Control_ID_cboCompanias
  loc_6A2D59: FStAdFunc var_94
  loc_6A2D5C: FLdPr var_94
  loc_6A2D5F:  = Me.ListIndex
  loc_6A2D64: LitI2_Byte 1
  loc_6A2D66: FLdI2 var_96
  loc_6A2D69: CI4UI1
  loc_6A2D6A: FLdPr Me
  loc_6A2D6D: MemLdStr global_56
  loc_6A2D70: AryLock
  loc_6A2D73: Ary1LdRf
  loc_6A2D74: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_6A2D79: FStStr var_A0
  loc_6A2D7C: AryUnlock
  loc_6A2D7F: FLdRfVar var_26E
  loc_6A2D82: FLdPrThis
  loc_6A2D83: VCallAd Control_ID_cboCompanias
  loc_6A2D86: FStAdFunc var_258
  loc_6A2D89: FLdPr var_258
  loc_6A2D8C:  = Me.ListIndex
  loc_6A2D91: LitI2_Byte 2
  loc_6A2D93: FLdI2 var_26E
  loc_6A2D96: CI4UI1
  loc_6A2D97: FLdPr Me
  loc_6A2D9A: MemLdStr global_56
  loc_6A2D9D: AryLock
  loc_6A2DA0: Ary1LdRf
  loc_6A2DA1: ImpAdCallI2 Proc_53_18_5F5F10(, )
  loc_6A2DA6: FStStr var_1E4
  loc_6A2DA9: AryUnlock
  loc_6A2DAC: FLdPrThis
  loc_6A2DAD: VCallAd Control_ID_txtPatente
  loc_6A2DB0: FStAdFunc var_3D4
  loc_6A2DB3: FLdPr var_3D4
  loc_6A2DB6: LateIdLdVar var_1E0 DispID_22 0
  loc_6A2DBD: PopAd
  loc_6A2DBF: LitI4 1
  loc_6A2DC4: ImpAdCallI2 Chr$()
  loc_6A2DC9: CVarStr var_120
  loc_6A2DCC: LitI4 1
  loc_6A2DD1: LitI4 1
  loc_6A2DD6: LitVarStr var_B0, "00000"
  loc_6A2DDB: FStVarCopyObj var_E0
  loc_6A2DDE: FLdRfVar var_E0
  loc_6A2DE1: FLdZeroAd var_A0
  loc_6A2DE4: CVarStr var_C0
  loc_6A2DE7: FLdRfVar var_100
  loc_6A2DEA: ImpAdCallFPR4  = Format(, )
  loc_6A2DEF: FLdRfVar var_100
  loc_6A2DF2: ConcatVar var_140
  loc_6A2DF6: LitI4 1
  loc_6A2DFB: LitI4 1
  loc_6A2E00: LitVarStr var_D0, "00000"
  loc_6A2E05: FStVarCopyObj var_180
  loc_6A2E08: FLdRfVar var_180
  loc_6A2E0B: FLdZeroAd var_1E4
  loc_6A2E0E: CVarStr var_160
  loc_6A2E11: FLdRfVar var_1A0
  loc_6A2E14: ImpAdCallFPR4  = Format(, )
  loc_6A2E19: FLdRfVar var_1A0
  loc_6A2E1C: ConcatVar var_1C0
  loc_6A2E20: LitI4 1
  loc_6A2E25: LitI4 1
  loc_6A2E2A: LitVarStr var_F0, "@@@@@@@"
  loc_6A2E2F: FStVarCopyObj var_214
  loc_6A2E32: FLdRfVar var_214
  loc_6A2E35: FLdRfVar var_1E0
  loc_6A2E38: CStrVarTmp
  loc_6A2E39: CVarStr var_1F4
  loc_6A2E3C: ImpAdCallI2 Format$(, )
  loc_6A2E41: CVarStr var_234
  loc_6A2E44: ConcatVar var_254
  loc_6A2E48: LitI4 1
  loc_6A2E4D: LitI4 1
  loc_6A2E52: LitVarStr var_130, "00"
  loc_6A2E57: FStVarCopyObj var_2A8
  loc_6A2E5A: FLdRfVar var_2A8
  loc_6A2E5D: FLdPr Me
  loc_6A2E60: MemLdRfVar from_stack_1.nSurtidor
  loc_6A2E63: CVarRef
  loc_6A2E68: ImpAdCallI2 Format$(, )
  loc_6A2E6D: CVarStr var_2C8
  loc_6A2E70: ConcatVar var_2E8
  loc_6A2E74: CStrVarTmp
  loc_6A2E75: FStStr var_88
  loc_6A2E78: FFreeAd var_94 = "": var_258 = ""
  loc_6A2E81: FFreeVar var_C0 = "": var_E0 = "": var_120 = "": var_100 = "": var_160 = "": var_180 = "": var_140 = "": var_1A0 = "": var_1E0 = "": var_1F4 = "": var_214 = "": var_1C0 = "": var_234 = "": var_2A8 = "": var_254 = "": var_2C8 = ""
  loc_6A2EA6: FLdRfVar var_96
  loc_6A2EA9: FLdRfVar var_90
  loc_6A2EAC: ILdRf var_88
  loc_6A2EAF: FLdRfVar var_94
  loc_6A2EB2: ImpAdLdRf MemVar_74C760
  loc_6A2EB5: NewIfNullPr Formx
  loc_6A2EB8: from_stack_1v = Formx.global_4589716Get()
  loc_6A2EBD: FLdPr var_94
  loc_6A2EC0:  = Formx.ShowInTaskbar
  loc_6A2EC5: FLdI2 var_96
  loc_6A2EC8: NotI4
  loc_6A2EC9: FFree1Ad var_94
  loc_6A2ECC: BranchF loc_6A2EFB
  loc_6A2ECF: FLdRfVar var_C0
  loc_6A2ED2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6A2ED7: FLdRfVar var_C0
  loc_6A2EDA: CBoolVarNull
  loc_6A2EDC: FFree1Var var_C0 = ""
  loc_6A2EDF: BranchF loc_6A2EF8
  loc_6A2EE2: ILdRf Me
  loc_6A2EE5: FStAdNoPop
  loc_6A2EE9: ImpAdLdRf MemVar_7520D4
  loc_6A2EEC: NewIfNullPr Global
  loc_6A2EEF: Global.Unload from_stack_1
  loc_6A2EF4: FFree1Ad var_94
  loc_6A2EF7: ExitProcHresult
  loc_6A2EF8: Branch loc_6A2EA6
  loc_6A2EFB: ILdRf var_90
  loc_6A2EFE: FStStrCopy var_3D8
  loc_6A2F01: ILdRf var_3D8
  loc_6A2F04: LitI2_Byte 1
  loc_6A2F06: CStrUI1
  loc_6A2F08: FStStrNoPop var_A0
  loc_6A2F0B: EqStr
  loc_6A2F0D: FFree1Str var_A0
  loc_6A2F10: BranchF loc_6A2FB0
  loc_6A2F13: FLdRfVar var_1E4
  loc_6A2F16: LitVar_Missing var_1E0
  loc_6A2F19: LitVar_Missing var_1C0
  loc_6A2F1C: LitVar_Missing var_1A0
  loc_6A2F1F: LitVar_Missing var_180
  loc_6A2F22: LitVar_Missing var_160
  loc_6A2F25: LitVar_Missing var_140
  loc_6A2F28: LitVar_Missing var_120
  loc_6A2F2B: LitVar_Missing var_100
  loc_6A2F2E: LitVar_Missing var_E0
  loc_6A2F31: LitVar_Missing var_C0
  loc_6A2F34: LitStr "El vehiculo o compañía se encuentra en la Lista de Bloqueos, imposible autorizar el despacho."
  loc_6A2F37: FStStrCopy var_A0
  loc_6A2F3A: FLdRfVar var_A0
  loc_6A2F3D: LitI4 &H17
  loc_6A2F42: PopTmpLdAdStr var_9C
  loc_6A2F45: LitI2_Byte &H38
  loc_6A2F47: PopTmpLdAd2 var_96
  loc_6A2F4A: ImpAdLdRf MemVar_74C7D0
  loc_6A2F4D: NewIfNullPr clsMsg
  loc_6A2F50: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2F55: FLdZeroAd var_1E4
  loc_6A2F58: FStStr var_88
  loc_6A2F5B: FFree1Str var_A0
  loc_6A2F5E: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6A2F75: LitVar_Missing var_100
  loc_6A2F78: LitVar_Missing var_E0
  loc_6A2F7B: LitVar_Missing var_C0
  loc_6A2F7E: LitI4 &H10
  loc_6A2F83: FLdRfVar var_88
  loc_6A2F86: CVarRef
  loc_6A2F8B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A2F90: FFreeVar var_C0 = "": var_E0 = ""
  loc_6A2F99: LitI2_Byte 0
  loc_6A2F9B: FLdPrThis
  loc_6A2F9C: VCallAd Control_ID_fraDatos
  loc_6A2F9F: FStAdFunc var_94
  loc_6A2FA2: FLdPr var_94
  loc_6A2FA5: Me.Enabled = from_stack_1b
  loc_6A2FAA: FFree1Ad var_94
  loc_6A2FAD: Branch loc_6A3073
  loc_6A2FB0: ILdRf var_3D8
  loc_6A2FB3: LitI2_Byte 2
  loc_6A2FB5: CStrUI1
  loc_6A2FB7: FStStrNoPop var_A0
  loc_6A2FBA: EqStr
  loc_6A2FBC: FFree1Str var_A0
  loc_6A2FBF: BranchF loc_6A305F
  loc_6A2FC2: FLdRfVar var_1E4
  loc_6A2FC5: LitVar_Missing var_1E0
  loc_6A2FC8: LitVar_Missing var_1C0
  loc_6A2FCB: LitVar_Missing var_1A0
  loc_6A2FCE: LitVar_Missing var_180
  loc_6A2FD1: LitVar_Missing var_160
  loc_6A2FD4: LitVar_Missing var_140
  loc_6A2FD7: LitVar_Missing var_120
  loc_6A2FDA: LitVar_Missing var_100
  loc_6A2FDD: LitVar_Missing var_E0
  loc_6A2FE0: LitVar_Missing var_C0
  loc_6A2FE3: LitStr "El grupo no se encuentra en la Lista de Autorizados, imposible autorizar el despacho."
  loc_6A2FE6: FStStrCopy var_A0
  loc_6A2FE9: FLdRfVar var_A0
  loc_6A2FEC: LitI4 &H18
  loc_6A2FF1: PopTmpLdAdStr var_9C
  loc_6A2FF4: LitI2_Byte &H38
  loc_6A2FF6: PopTmpLdAd2 var_96
  loc_6A2FF9: ImpAdLdRf MemVar_74C7D0
  loc_6A2FFC: NewIfNullPr clsMsg
  loc_6A2FFF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A3004: FLdZeroAd var_1E4
  loc_6A3007: FStStr var_88
  loc_6A300A: FFree1Str var_A0
  loc_6A300D: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6A3024: LitVar_Missing var_100
  loc_6A3027: LitVar_Missing var_E0
  loc_6A302A: LitVar_Missing var_C0
  loc_6A302D: LitI4 &H10
  loc_6A3032: FLdRfVar var_88
  loc_6A3035: CVarRef
  loc_6A303A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6A303F: FFreeVar var_C0 = "": var_E0 = ""
  loc_6A3048: LitI2_Byte 0
  loc_6A304A: FLdPrThis
  loc_6A304B: VCallAd Control_ID_fraDatos
  loc_6A304E: FStAdFunc var_94
  loc_6A3051: FLdPr var_94
  loc_6A3054: Me.Enabled = from_stack_1b
  loc_6A3059: FFree1Ad var_94
  loc_6A305C: Branch loc_6A3073
  loc_6A305F: LitI2_Byte &HFF
  loc_6A3061: FLdPrThis
  loc_6A3062: VCallAd Control_ID_fraDatos
  loc_6A3065: FStAdFunc var_94
  loc_6A3068: FLdPr var_94
  loc_6A306B: Me.Enabled = from_stack_1b
  loc_6A3070: FFree1Ad var_94
  loc_6A3073: ExitProcHresult
End Sub

Private Sub txtPatente_UnknownEvent_0 '5DA22C
  'Data Table: 441CD4
  loc_5DA1F4: LitVarI4
  loc_5DA1FC: PopAdLdVar
  loc_5DA1FD: FLdPrThis
  loc_5DA1FE: VCallAd Control_ID_txtPatente
  loc_5DA201: FStAdFunc var_98
  loc_5DA204: FLdPr var_98
  loc_5DA207: LateIdSt
  loc_5DA20C: FFree1Ad var_98
  loc_5DA20F: LitVarI4
  loc_5DA217: PopAdLdVar
  loc_5DA218: FLdPrThis
  loc_5DA219: VCallAd Control_ID_txtPatente
  loc_5DA21C: FStAdFunc var_98
  loc_5DA21F: FLdPr var_98
  loc_5DA222: LateIdSt
  loc_5DA227: FFree1Ad var_98
  loc_5DA22A: ExitProcHresult
End Sub

Private Sub txtPatente_UnknownEvent_8 '5D3150
  'Data Table: 441CD4
  loc_5D3134: LitI2_Byte 0
  loc_5D3136: FLdPrThis
  loc_5D3137: VCallAd Control_ID_fraDatos
  loc_5D313A: FStAdFunc var_88
  loc_5D313D: FLdPr var_88
  loc_5D3140: Me.Enabled = from_stack_1b
  loc_5D3145: FFree1Ad var_88
  loc_5D3148: from_stack_1v = Proc_29_25_5E06A0()
  loc_5D314D: ExitProcHresult
End Sub

Private Sub txtPatente_KeyDown(KeyCode As Integer, Shift As Integer) '5D27C0
  'Data Table: 441CD4
  loc_5D27A4: ILdI2 KeyCode
  loc_5D27A7: LitI2_Byte &HD
  loc_5D27A9: EqI2
  loc_5D27AA: BranchF loc_5D27BF
  loc_5D27AD: LitI2_Byte 0
  loc_5D27AF: PopTmpLdAd2 var_86
  loc_5D27B2: LitStr "{TAB}"
  loc_5D27B5: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5D27BA: LitI2_Byte 0
  loc_5D27BC: IStI2 KeyCode
  loc_5D27BF: ExitProcHresult
End Sub

Private Sub txtFlota_GotFocus() '5D0500
  'Data Table: 441CD4
  loc_5D04EC: FLdPrThis
  loc_5D04ED: VCallAd Control_ID_txtFlota
  loc_5D04F0: FStAdFunc var_88
  loc_5D04F3: FLdRfVar var_88
  loc_5D04F6: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D04FB: FFree1Ad var_88
  loc_5D04FE: ExitProcHresult
End Sub

Private Sub txtFlota_KeyPress(KeyAscii As Integer) '5C82B4
  'Data Table: 441CD4
  loc_5C82B0: ExitProcHresult
End Sub

Private Sub txtObservaciones_GotFocus() '5D0428
  'Data Table: 441CD4
  loc_5D0414: FLdPrThis
  loc_5D0415: VCallAd Control_ID_txtObservaciones
  loc_5D0418: FStAdFunc var_88
  loc_5D041B: FLdRfVar var_88
  loc_5D041E: ImpAdCallFPR4  = Proc_53_19_5D6DC8()
  loc_5D0423: FFree1Ad var_88
  loc_5D0426: ExitProcHresult
End Sub

Private Sub txtObservaciones_KeyPress(KeyAscii As Integer) '5D44E8
  'Data Table: 441CD4
  loc_5D44C8: ILdI2 KeyAscii
  loc_5D44CB: LitI2_Byte &HD
  loc_5D44CD: EqI2
  loc_5D44CE: BranchF loc_5D44E4
  loc_5D44D1: LitVar_Missing var_A4
  loc_5D44D4: LitStr "{TAB}"
  loc_5D44D7: ImpAdCallFPR4 SendKeys , 
  loc_5D44DC: FFree1Var var_A4 = ""
  loc_5D44DF: LitI2_Byte 0
  loc_5D44E1: IStI2 KeyAscii
  loc_5D44E4: ExitProcHresult
End Sub

Public Function nSurtidorGet() '442AF4
  nSurtidorGet = nSurtidor
End Function

Public Sub nSurtidorPut(Value) '442B03
  nSurtidor = Value
End Sub

Private Function Proc_29_22_5DF4C8(arg_C) '5DF4C8
  'Data Table: 441CD4
  loc_5DF470: FLdI2 arg_C
  loc_5DF473: FStI2 var_88
  loc_5DF476: FLdI2 var_88
  loc_5DF479: LitI2_Byte &HD
  loc_5DF47B: EqI2
  loc_5DF47C: BranchF loc_5DF494
  loc_5DF47F: LitI2_Byte 0
  loc_5DF481: FStI2 var_86
  loc_5DF484: LitI2_Byte 0
  loc_5DF486: PopTmpLdAd2 var_8A
  loc_5DF489: LitStr "{TAB}"
  loc_5DF48C: ImpAdCallFPR4 Proc_17_1_5E4490(, )
  loc_5DF491: Branch loc_5DF4BF
  loc_5DF494: FLdI2 var_88
  loc_5DF497: LitI4 &H30
  loc_5DF49C: CI2I4
  loc_5DF49D: LitI4 &H39
  loc_5DF4A2: CI2I4
  loc_5DF4A3: BetweenI2
  loc_5DF4A5: BranchT loc_5DF4B1
  loc_5DF4A8: FLdI2 var_88
  loc_5DF4AB: LitI2_Byte 8
  loc_5DF4AD: EqI2
  loc_5DF4AE: BranchF loc_5DF4BA
  loc_5DF4B1: FLdI2 arg_C
  loc_5DF4B4: FStI2 var_86
  loc_5DF4B7: Branch loc_5DF4BF
  loc_5DF4BA: LitI2_Byte 0
  loc_5DF4BC: FStI2 var_86
  loc_5DF4BF: ExitProcCbHresult
End Function

Private Function Proc_29_23_612484() '612484
  'Data Table: 441CD4
  loc_6123A4: FLdRfVar var_90
  loc_6123A7: FLdPrThis
  loc_6123A8: VCallAd Control_ID_txtAutorizacion
  loc_6123AB: FStAdFunc var_8C
  loc_6123AE: FLdPr var_8C
  loc_6123B1:  = Me.Text
  loc_6123B6: ILdRf var_90
  loc_6123B9: ImpAdCallI2 Trim$()
  loc_6123BE: FStStrNoPop var_94
  loc_6123C1: LitStr vbNullString
  loc_6123C4: NeStr
  loc_6123C6: FLdRfVar var_9C
  loc_6123C9: FLdPrThis
  loc_6123CA: VCallAd Control_ID_txtFlota
  loc_6123CD: FStAdFunc var_98
  loc_6123D0: FLdPr var_98
  loc_6123D3:  = Me.Text
  loc_6123D8: ILdRf var_9C
  loc_6123DB: ImpAdCallI2 Trim$()
  loc_6123E0: FStStrNoPop var_A0
  loc_6123E3: LitStr vbNullString
  loc_6123E6: NeStr
  loc_6123E8: AndI4
  loc_6123E9: FLdRfVar var_A8
  loc_6123EC: FLdPrThis
  loc_6123ED: VCallAd Control_ID_txtOdometro
  loc_6123F0: FStAdFunc var_A4
  loc_6123F3: FLdPr var_A4
  loc_6123F6:  = Me.Text
  loc_6123FB: ILdRf var_A8
  loc_6123FE: ImpAdCallI2 Trim$()
  loc_612403: FStStrNoPop var_AC
  loc_612406: LitStr vbNullString
  loc_612409: NeStr
  loc_61240B: AndI4
  loc_61240C: FLdPrThis
  loc_61240D: VCallAd Control_ID_txtPatente
  loc_612410: FStAdFunc var_B0
  loc_612413: FLdPr var_B0
  loc_612416: LateIdLdVar var_C0 DispID_22 0
  loc_61241D: CStrVarTmp
  loc_61241E: FStStrNoPop var_C4
  loc_612421: ImpAdCallI2 Trim$()
  loc_612426: FStStrNoPop var_C8
  loc_612429: LitStr vbNullString
  loc_61242C: NeStr
  loc_61242E: AndI4
  loc_61242F: FLdRfVar var_D0
  loc_612432: FLdPrThis
  loc_612433: VCallAd Control_ID_txtUsuario
  loc_612436: FStAdFunc var_CC
  loc_612439: FLdPr var_CC
  loc_61243C:  = Me.Text
  loc_612441: ILdRf var_D0
  loc_612444: ImpAdCallI2 Trim$()
  loc_612449: FStStrNoPop var_D4
  loc_61244C: LitStr vbNullString
  loc_61244F: NeStr
  loc_612451: AndI4
  loc_612452: FStI2 var_86
  loc_612455: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_D0 = ""
  loc_61246C: FFreeAd var_8C = "": var_98 = "": var_A4 = "": var_B0 = ""
  loc_612479: FFree1Var var_C0 = ""
  loc_61247C: ExitProcCbHresult
End Function

Private Function Proc_29_24_61C7F0() '61C7F0
  'Data Table: 441CD4
  loc_61C6E8: FLdRfVar var_90
  loc_61C6EB: FLdPrThis
  loc_61C6EC: VCallAd Control_ID_txtAutorizacion
  loc_61C6EF: FStAdFunc var_8C
  loc_61C6F2: FLdPr var_8C
  loc_61C6F5:  = Me.Text
  loc_61C6FA: ILdRf var_90
  loc_61C6FD: ImpAdCallI2 Trim$()
  loc_61C702: FStStrNoPop var_94
  loc_61C705: LitStr vbNullString
  loc_61C708: EqStr
  loc_61C70A: FLdRfVar var_9C
  loc_61C70D: FLdPrThis
  loc_61C70E: VCallAd Control_ID_txtFlota
  loc_61C711: FStAdFunc var_98
  loc_61C714: FLdPr var_98
  loc_61C717:  = Me.Text
  loc_61C71C: ILdRf var_9C
  loc_61C71F: ImpAdCallI2 Trim$()
  loc_61C724: FStStrNoPop var_A0
  loc_61C727: LitStr vbNullString
  loc_61C72A: EqStr
  loc_61C72C: AndI4
  loc_61C72D: FLdRfVar var_A8
  loc_61C730: FLdPrThis
  loc_61C731: VCallAd Control_ID_txtOdometro
  loc_61C734: FStAdFunc var_A4
  loc_61C737: FLdPr var_A4
  loc_61C73A:  = Me.Text
  loc_61C73F: ILdRf var_A8
  loc_61C742: ImpAdCallI2 Trim$()
  loc_61C747: FStStrNoPop var_AC
  loc_61C74A: LitStr vbNullString
  loc_61C74D: EqStr
  loc_61C74F: AndI4
  loc_61C750: FLdPrThis
  loc_61C751: VCallAd Control_ID_txtPatente
  loc_61C754: FStAdFunc var_B0
  loc_61C757: FLdPr var_B0
  loc_61C75A: LateIdLdVar var_C0 DispID_22 0
  loc_61C761: CStrVarTmp
  loc_61C762: FStStrNoPop var_C4
  loc_61C765: ImpAdCallI2 Trim$()
  loc_61C76A: FStStrNoPop var_C8
  loc_61C76D: LitStr vbNullString
  loc_61C770: EqStr
  loc_61C772: AndI4
  loc_61C773: FLdRfVar var_D0
  loc_61C776: FLdPrThis
  loc_61C777: VCallAd Control_ID_txtObservaciones
  loc_61C77A: FStAdFunc var_CC
  loc_61C77D: FLdPr var_CC
  loc_61C780:  = Me.Text
  loc_61C785: ILdRf var_D0
  loc_61C788: ImpAdCallI2 Trim$()
  loc_61C78D: FStStrNoPop var_D4
  loc_61C790: LitStr vbNullString
  loc_61C793: EqStr
  loc_61C795: AndI4
  loc_61C796: FLdRfVar var_DC
  loc_61C799: FLdPrThis
  loc_61C79A: VCallAd Control_ID_txtUsuario
  loc_61C79D: FStAdFunc var_D8
  loc_61C7A0: FLdPr var_D8
  loc_61C7A3:  = Me.Text
  loc_61C7A8: ILdRf var_DC
  loc_61C7AB: ImpAdCallI2 Trim$()
  loc_61C7B0: FStStrNoPop var_E0
  loc_61C7B3: LitStr vbNullString
  loc_61C7B6: NeStr
  loc_61C7B8: AndI4
  loc_61C7B9: FStI2 var_86
  loc_61C7BC: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_D0 = "": var_D4 = "": var_DC = ""
  loc_61C7D7: FFreeAd var_8C = "": var_98 = "": var_A4 = "": var_B0 = "": var_CC = ""
  loc_61C7E6: FFree1Var var_C0 = ""
  loc_61C7E9: ExitProcCbHresult
End Function

Private Function Proc_29_25_5E06A0() '5E06A0
  'Data Table: 441CD4
  loc_5E0648: LitStr vbNullString
  loc_5E064B: FLdPrThis
  loc_5E064C: VCallAd Control_ID_txtAutorizacion
  loc_5E064F: FStAdFunc var_88
  loc_5E0652: FLdPr var_88
  loc_5E0655: Me.Text = from_stack_1
  loc_5E065A: FFree1Ad var_88
  loc_5E065D: LitStr vbNullString
  loc_5E0660: FLdPrThis
  loc_5E0661: VCallAd Control_ID_txtFlota
  loc_5E0664: FStAdFunc var_88
  loc_5E0667: FLdPr var_88
  loc_5E066A: Me.Text = from_stack_1
  loc_5E066F: FFree1Ad var_88
  loc_5E0672: LitStr vbNullString
  loc_5E0675: FLdPrThis
  loc_5E0676: VCallAd Control_ID_txtObservaciones
  loc_5E0679: FStAdFunc var_88
  loc_5E067C: FLdPr var_88
  loc_5E067F: Me.Text = from_stack_1
  loc_5E0684: FFree1Ad var_88
  loc_5E0687: LitStr vbNullString
  loc_5E068A: FLdPrThis
  loc_5E068B: VCallAd Control_ID_txtOdometro
  loc_5E068E: FStAdFunc var_88
  loc_5E0691: FLdPr var_88
  loc_5E0694: Me.Text = from_stack_1
  loc_5E0699: FFree1Ad var_88
  loc_5E069C: ExitProcHresult
End Function
