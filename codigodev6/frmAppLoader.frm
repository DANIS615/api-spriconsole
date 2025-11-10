VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWow64\COMCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWow64\COMDLG32.OCX"
Begin VB.Form frmAppLoader
  Caption = "Aplicaciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 11325
  ClientHeight = 7470
  StartUpPosition = 3 'Windows Default
  Begin VB.Frame frmSeparation
    Caption = "Frame1"
    Left = 4935
    Top = 360
    Width = 50
    Height = 5655
    MousePointer = 9 'Size W E
    TabIndex = 2
    BorderStyle = 0 'None
  End
  Begin ComctlLib.TreeView Tree
    Left = 240
    Top = 360
    Width = 4695
    Height = 5655
    TabIndex = 0
    OleObjectBlob = "frmAppLoader.frx":0000
  End
  Begin MSComDlg.CommonDialog CommonDialog
    OleObjectBlob = "frmAppLoader.frx":0078
    Left = 840
    Top = 6240
  End
  Begin VB.CommandButton cmdBorrar
    Caption = "    &Eliminar             Nodo"
    Left = 6960
    Top = 6480
    Width = 1935
    Height = 735
    TabIndex = 16
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
  Begin VB.CommandButton cmdNew
    Caption = "&Nuevo"
    Left = 4920
    Top = 6480
    Width = 1935
    Height = 735
    TabIndex = 5
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
    Caption = "&Salir"
    Left = 9000
    Top = 6480
    Width = 1935
    Height = 735
    TabIndex = 3
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
  Begin VB.Frame FrameDetail
    Caption = "Configuración"
    Left = 4990
    Top = 360
    Width = 6015
    Height = 5655
    TabIndex = 1
    Begin VB.PictureBox pic
      Left = 240
      Top = 360
      Width = 5535
      Height = 5055
      Visible = 0   'False
      TabIndex = 4
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      Begin VB.CommandButton cmdPath
        Caption = "..."
        Left = 4800
        Top = 600
        Width = 495
        Height = 375
        TabIndex = 17
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "frmAppLoader.frx":014C
      End
      Begin VB.ComboBox cmbModo
        Left = 240
        Top = 3120
        Width = 3375
        Height = 360
        TabIndex = 10
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.ComboBox cmbSeguridad
        Left = 240
        Top = 2280
        Width = 3375
        Height = 360
        TabIndex = 9
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.TextBox txTitle
        Left = 240
        Top = 1440
        Width = 3375
        Height = 375
        TabIndex = 8
        MaxLength = 20
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.TextBox txPath
        Left = 240
        Top = 600
        Width = 4455
        Height = 375
        TabIndex = 7
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.CommandButton cmdAgregar
        Caption = "Guardar"
        Left = 3960
        Top = 4200
        Width = 1335
        Height = 615
        TabIndex = 6
        BeginProperty Font
          Name = "Arial"
          Size = 9.75
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "frmAppLoader.frx":058E
      End
      Begin VB.Label lbModo
        Caption = "Modo"
        Left = 240
        Top = 2760
        Width = 3135
        Height = 375
        TabIndex = 14
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
      Begin VB.Label lbSeguridad
        Caption = "Seguridad"
        Left = 240
        Top = 1920
        Width = 3015
        Height = 375
        TabIndex = 13
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
      Begin VB.Label lbtitulo
        Caption = "Título"
        Left = 240
        Top = 1080
        Width = 1695
        Height = 375
        TabIndex = 12
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
      Begin VB.Label lbPath
        Caption = "Ruta"
        Left = 240
        Top = 240
        Width = 2055
        Height = 375
        TabIndex = 11
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
    End
    Begin VB.Label lbBack
      Caption = "Seleccione algún elemento del árbol para editar o click en nuevo para crear una nueva sección"
      Left = 960
      Top = 1800
      Width = 4335
      Height = 615
      TabIndex = 15
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin ComctlLib.ImageList img
    OleObjectBlob = "frmAppLoader.frx":0918
    Left = 240
    Top = 6240
  End
End

Attribute VB_Name = "frmAppLoader"


Private Sub cmdCancelar_Click() '61865C
  'Data Table: 43FE08
  loc_618564: OnErrorGoto loc_618652
  loc_618569: FLdPr Me
  loc_61856C: MemLdI2 global_56
  loc_61856F: BranchF loc_618636
  loc_618574: FLdRfVar var_1D4
  loc_618577: LitVar_Missing var_1D0
  loc_61857A: LitVar_Missing var_1B0
  loc_61857D: LitVar_Missing var_190
  loc_618580: LitVar_Missing var_170
  loc_618583: LitVar_Missing var_150
  loc_618586: LitVar_Missing var_130
  loc_618589: LitVar_Missing var_110
  loc_61858C: LitVar_Missing var_F0
  loc_61858F: LitVar_Missing var_D0
  loc_618592: LitVar_Missing var_B0
  loc_618595: LitStr "Se reiniciará la consola para actualizar los cambios"
  loc_618598: FStStrCopy var_90
  loc_61859B: FLdRfVar var_90
  loc_61859E: LitI4 9
  loc_6185A3: PopTmpLdAdStr var_8C
  loc_6185A6: LitI2_Byte &H4F
  loc_6185A8: PopTmpLdAd2 var_86
  loc_6185AB: ImpAdLdRf MemVar_74C7D0
  loc_6185AE: NewIfNullPr clsMsg
  loc_6185B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6185B6: LitVar_Missing var_234
  loc_6185B9: LitVar_Missing var_214
  loc_6185BC: FLdPr Me
  loc_6185BF: MemLdRfVar from_stack_1.global_92
  loc_6185C2: CVarRef
  loc_6185C7: LitI4 &H40
  loc_6185CC: FLdZeroAd var_1D4
  loc_6185CF: CVarStr var_1E4
  loc_6185D2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6185D7: FFree1Str var_90
  loc_6185DA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_214 = ""
  loc_6185F9: LitI4 2
  loc_6185FE: FLdRfVar var_90
  loc_618601: FLdRfVar var_238
  loc_618604: ImpAdLdRf MemVar_7520D4
  loc_618607: NewIfNullPr Global
  loc_61860A:  = Global.App
  loc_61860F: FLdPr var_238
  loc_618612:  = App.Path
  loc_618617: ILdRf var_90
  loc_61861A: LitStr "\consolaremota.bat"
  loc_61861D: ConcatStr
  loc_61861E: CVarStr var_B0
  loc_618621: ImpAdCallFPR4 push Shell(, )
  loc_618626: FStFPR8 var_240
  loc_618629: FFree1Str var_90
  loc_61862C: FFree1Ad var_238
  loc_61862F: FFree1Var var_B0 = ""
  loc_618634: End
  loc_61863A: ILdRf Me
  loc_61863D: FStAdNoPop
  loc_618641: ImpAdLdRf MemVar_7520D4
  loc_618644: NewIfNullPr Global
  loc_618647: Global.Unload from_stack_1
  loc_61864C: FFree1Ad var_238
  loc_618651: ExitProcHresult
  loc_618654: Resume
  loc_61865A: ExitProcHresult
End Sub

Private Sub cmbModo_KeyDown(KeyCode As Integer, Shift As Integer) '5C8A48
  'Data Table: 43FE08
  loc_5C8A40: LitI2_Byte 0
  loc_5C8A42: IStI2 KeyCode
  loc_5C8A45: ExitProcHresult
End Sub

Private Sub cmbModo_KeyPress(KeyAscii As Integer) '5C8A80
  'Data Table: 43FE08
  loc_5C8A78: LitI2_Byte 0
  loc_5C8A7A: IStI2 KeyAscii
  loc_5C8A7D: ExitProcHresult
End Sub

Private Sub Form_Load() '5D027C
  'Data Table: 43FE08
  loc_5D0264: LitI2_Byte 0
  loc_5D0266: FLdPr Me
  loc_5D0269: MemStI2 global_56
  loc_5D026C: from_stack_1v = Proc_84_19_6B46FC()
  loc_5D0271: from_stack_1v = Proc_84_27_6AB7DC()
  loc_5D0276: from_stack_1v = Proc_84_20_6430AC()
  loc_5D027B: ExitProcHresult
End Sub

Private Sub cmdPath_Click() '607384
  'Data Table: 43FE08
  loc_6072A4: OnErrorGoto loc_60735D
  loc_6072A7: FLdRfVar var_90
  loc_6072AA: FLdPrThis
  loc_6072AB: VCallAd Control_ID_txPath
  loc_6072AE: FStAdFunc var_8C
  loc_6072B1: FLdPr var_8C
  loc_6072B4:  = Me.Text
  loc_6072B9: FLdZeroAd var_90
  loc_6072BC: FStStr var_88
  loc_6072BF: FFree1Ad var_8C
  loc_6072C2: FLdPrThis
  loc_6072C3: VCallAd Control_ID_CommonDialog
  loc_6072C6: FStAdFunc var_8C
  loc_6072C9: FLdPr var_8C
  loc_6072CC: LateIdCall
  loc_6072D4: FFree1Ad var_8C
  loc_6072D7: LitVar_TRUE var_A0
  loc_6072DA: PopAdLdVar
  loc_6072DB: FLdPrThis
  loc_6072DC: VCallAd Control_ID_CommonDialog
  loc_6072DF: FStAdFunc var_8C
  loc_6072E2: FLdPr var_8C
  loc_6072E5: LateIdSt
  loc_6072EA: FFree1Ad var_8C
  loc_6072ED: FLdPrThis
  loc_6072EE: VCallAd Control_ID_CommonDialog
  loc_6072F1: FStAdFunc var_8C
  loc_6072F4: FLdPr var_8C
  loc_6072F7: LateIdLdVar var_B0 DispID_1 0
  loc_6072FE: CStrVarTmp
  loc_6072FF: FStStrNoPop var_90
  loc_607302: LitStr vbNullString
  loc_607305: EqStr
  loc_607307: FFree1Str var_90
  loc_60730A: FFree1Ad var_8C
  loc_60730D: FFree1Var var_B0 = ""
  loc_607310: BranchF loc_60732B
  loc_607313: ILdRf var_88
  loc_607316: FLdPrThis
  loc_607317: VCallAd Control_ID_txPath
  loc_60731A: FStAdFunc var_8C
  loc_60731D: FLdPr var_8C
  loc_607320: Me.Text = from_stack_1
  loc_607325: FFree1Ad var_8C
  loc_607328: Branch loc_60735C
  loc_60732B: FLdPrThis
  loc_60732C: VCallAd Control_ID_CommonDialog
  loc_60732F: FStAdFunc var_8C
  loc_607332: FLdPr var_8C
  loc_607335: LateIdLdVar var_B0 DispID_1 0
  loc_60733C: CStrVarTmp
  loc_60733D: FStStrNoPop var_90
  loc_607340: FLdPrThis
  loc_607341: VCallAd Control_ID_txPath
  loc_607344: FStAdFunc var_B4
  loc_607347: FLdPr var_B4
  loc_60734A: Me.Text = from_stack_1
  loc_60734F: FFree1Str var_90
  loc_607352: FFreeAd var_8C = ""
  loc_607359: FFree1Var var_B0 = ""
  loc_60735C: ExitProcHresult
  loc_60735D: FLdRfVar var_B8
  loc_607360: ImpAdCallI2 Err 'rtcErrObj
  loc_607365: FStAdFunc var_8C
  loc_607368: FLdPr var_8C
  loc_60736B:  = Err.Number
  loc_607370: ILdRf var_B8
  loc_607373: LitI4 &H7FF3
  loc_607378: EqI4
  loc_607379: FFree1Ad var_8C
  loc_60737C: BranchF loc_607380
  loc_60737F: ExitProcHresult
  loc_607380: ExitProcHresult
End Sub

Private Sub frmSeparation_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '5D1C28
  'Data Table: 43FE08
  loc_5D1C10: LitI4 0
  loc_5D1C15: FLdPrThis
  loc_5D1C16: VCallAd Control_ID_frmSeparation
  loc_5D1C19: FStAdFunc var_88
  loc_5D1C1C: FLdPr var_88
  loc_5D1C1F: Me.BackColor = from_stack_1
  loc_5D1C24: FFree1Ad var_88
  loc_5D1C27: ExitProcHresult
End Sub

Private Sub frmSeparation_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '5DB6A8
  'Data Table: 43FE08
  loc_5DB66C: ILdI2 Button
  loc_5DB66F: LitI2_Byte 1
  loc_5DB671: EqI2
  loc_5DB672: BranchF loc_5DB6A5
  loc_5DB675: FLdRfVar var_8C
  loc_5DB678: FLdPrThis
  loc_5DB679: VCallAd Control_ID_frmSeparation
  loc_5DB67C: FStAdFunc var_88
  loc_5DB67F: FLdPr var_88
  loc_5DB682:  = Me.Left
  loc_5DB687: FLdFPR4 var_8C
  loc_5DB68A: ILdFPR4 X
  loc_5DB68D: AddR8
  loc_5DB68E: PopFPR4
  loc_5DB68F: FLdPrThis
  loc_5DB690: VCallAd Control_ID_frmSeparation
  loc_5DB693: FStAdFunc var_90
  loc_5DB696: FLdPr var_90
  loc_5DB699: Me.Left = from_stack_1s
  loc_5DB69E: FFreeAd var_88 = ""
  loc_5DB6A5: ExitProcHresult
End Sub

Private Sub frmSeparation_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '630D98
  'Data Table: 43FE08
  loc_630BD4: On Error Resume Next
  loc_630BD9: FLdRfVar var_90
  loc_630BDC: FLdPrThis
  loc_630BDD: VCallAd Control_ID_frmSeparation
  loc_630BE0: FStAdFunc var_8C
  loc_630BE3: FLdPr var_8C
  loc_630BE6:  = Me.Left
  loc_630BEB: FLdFPR4 var_90
  loc_630BEE: CI4R8
  loc_630BEF: FStR4 var_88
  loc_630BF2: FFree1Ad var_8C
  loc_630BF7: ILdRf var_88
  loc_630BFA: LitI4 &H3E8
  loc_630BFF: LtI4
  loc_630C00: BranchF loc_630C26
  loc_630C05: LitI4 &H3E8
  loc_630C0A: FStR4 var_88
  loc_630C0F: ILdRf var_88
  loc_630C12: CR8I4
  loc_630C13: PopFPR4
  loc_630C14: FLdPrThis
  loc_630C15: VCallAd Control_ID_frmSeparation
  loc_630C18: FStAdFunc var_8C
  loc_630C1B: FLdPr var_8C
  loc_630C1E: Me.Left = from_stack_1s
  loc_630C23: FFree1Ad var_8C
  loc_630C2A: FLdRfVar var_90
  loc_630C2D: FLdPr Me
  loc_630C30:  = Me.ScaleWidth
  loc_630C35: ILdRf var_88
  loc_630C38: CR8I4
  loc_630C39: FLdFPR4 var_90
  loc_630C3C: LitI2 1000
  loc_630C3F: CR8I2
  loc_630C40: SubR4
  loc_630C41: CR8R8
  loc_630C42: GtR4
  loc_630C43: BranchF loc_630C78
  loc_630C48: FLdRfVar var_90
  loc_630C4B: FLdPr Me
  loc_630C4E:  = Me.ScaleWidth
  loc_630C53: FLdFPR4 var_90
  loc_630C56: LitI2 1000
  loc_630C59: CR8I2
  loc_630C5A: SubR4
  loc_630C5B: CI4R8
  loc_630C5C: FStR4 var_88
  loc_630C61: ILdRf var_88
  loc_630C64: CR8I4
  loc_630C65: PopFPR4
  loc_630C66: FLdPrThis
  loc_630C67: VCallAd Control_ID_frmSeparation
  loc_630C6A: FStAdFunc var_8C
  loc_630C6D: FLdPr var_8C
  loc_630C70: Me.Left = from_stack_1s
  loc_630C75: FFree1Ad var_8C
  loc_630C7C: FLdPrThis
  loc_630C7D: VCallAd Control_ID_Tree
  loc_630C80: FStAdFunc var_8C
  loc_630C83: FLdPr var_8C
  loc_630C86: LateIdLdVar var_A0 DispID_3 -32767
  loc_630C8D: PopAd
  loc_630C8F: ILdRf var_88
  loc_630C92: CR8I4
  loc_630C93: FLdRfVar var_A0
  loc_630C96: CR8Var
  loc_630C98: SubR4
  loc_630C99: LitI2_Byte 5
  loc_630C9B: CR8I2
  loc_630C9C: SubR4
  loc_630C9D: CVarR4
  loc_630CA1: PopAdLdVar
  loc_630CA2: FLdPrThis
  loc_630CA3: VCallAd Control_ID_Tree
  loc_630CA6: FStAdFunc var_B4
  loc_630CA9: FLdPr var_B4
  loc_630CAC: LateIdSt
  loc_630CB1: FFreeAd var_8C = ""
  loc_630CB8: FFree1Var var_A0 = ""
  loc_630CBD: FLdRfVar var_90
  loc_630CC0: FLdPrThis
  loc_630CC1: VCallAd Control_ID_frmSeparation
  loc_630CC4: FStAdFunc var_B4
  loc_630CC7: FLdPr var_B4
  loc_630CCA:  = Me.Width
  loc_630CCF: FLdPrThis
  loc_630CD0: VCallAd Control_ID_Tree
  loc_630CD3: FStAdFunc var_8C
  loc_630CD6: FLdPr var_8C
  loc_630CD9: LateIdLdVar var_A0 DispID_5 -32767
  loc_630CE0: CR8Var
  loc_630CE2: FLdFPR4 var_90
  loc_630CE5: LitI2_Byte 4
  loc_630CE7: CR8I2
  loc_630CE8: MulR8
  loc_630CE9: AddR8
  loc_630CEA: LitI2_Byte &H64
  loc_630CEC: CR8I2
  loc_630CED: AddR8
  loc_630CEE: PopFPR4
  loc_630CEF: FLdPrThis
  loc_630CF0: VCallAd Control_ID_FrameDetail
  loc_630CF3: FStAdFunc var_B8
  loc_630CF6: FLdPr var_B8
  loc_630CF9: Me.Left = from_stack_1s
  loc_630CFE: FFreeAd var_8C = "": var_B4 = ""
  loc_630D07: FFree1Var var_A0 = ""
  loc_630D0C: FLdRfVar var_BC
  loc_630D0F: FLdPrThis
  loc_630D10: VCallAd Control_ID_FrameDetail
  loc_630D13: FStAdFunc var_8C
  loc_630D16: FLdPr var_8C
  loc_630D19:  = Me.Left
  loc_630D1E: FLdRfVar var_C0
  loc_630D21: FLdPrThis
  loc_630D22: VCallAd Control_ID_frmSeparation
  loc_630D25: FStAdFunc var_B4
  loc_630D28: FLdPr var_B4
  loc_630D2B:  = Me.Width
  loc_630D30: FLdRfVar var_90
  loc_630D33: FLdPr Me
  loc_630D36:  = Me.ScaleWidth
  loc_630D3B: FLdFPR4 var_90
  loc_630D3E: FLdFPR4 var_BC
  loc_630D41: SubR4
  loc_630D42: LitI2_Byte &H64
  loc_630D44: CR8I2
  loc_630D45: SubR4
  loc_630D46: FLdFPR4 var_C0
  loc_630D49: LitI2_Byte 4
  loc_630D4B: CR8I2
  loc_630D4C: MulR8
  loc_630D4D: SubR4
  loc_630D4E: PopFPR4
  loc_630D4F: FLdPrThis
  loc_630D50: VCallAd Control_ID_FrameDetail
  loc_630D53: FStAdFunc var_B8
  loc_630D56: FLdPr var_B8
  loc_630D59: Me.Width = from_stack_1s
  loc_630D5E: FFreeAd var_8C = "": var_B4 = ""
  loc_630D69: LitI4 -2147483633
  loc_630D6E: FLdPrThis
  loc_630D6F: VCallAd Control_ID_frmSeparation
  loc_630D72: FStAdFunc var_8C
  loc_630D75: FLdPr var_8C
  loc_630D78: Me.BackColor = from_stack_1
  loc_630D7D: FFree1Ad var_8C
  loc_630D82: FLdPrThis
  loc_630D83: VCallAd Control_ID_pic
  loc_630D86: FStAdFunc var_8C
  loc_630D89: FLdRfVar var_8C
  loc_630D8C: from_stack_1v = Proc_84_21_5DD97C()
  loc_630D91: FFree1Ad var_8C
  loc_630D96: ExitProcHresult
End Sub

Private Sub Tree_Click(arg_C) '642B28
  'Data Table: 43FE08
  loc_642918: ILdRf arg_C
  loc_64291B: FStAd var_88 
  loc_64291F: LitI2_Byte 0
  loc_642921: CUI1I2
  loc_642923: FLdPr Me
  loc_642926: MemStUI1
  loc_64292A: from_stack_1v = Proc_84_25_5D66F4()
  loc_64292F: LitI2_Byte &HFF
  loc_642931: FLdPrThis
  loc_642932: VCallAd Control_ID_lbBack
  loc_642935: FStAdFunc var_8C
  loc_642938: FLdPr var_8C
  loc_64293B: Me.Visible = from_stack_1b
  loc_642940: FFree1Ad var_8C
  loc_642943: LitI2_Byte 0
  loc_642945: FLdPrThis
  loc_642946: VCallAd Control_ID_pic
  loc_642949: FStAdFunc var_8C
  loc_64294C: FLdPr var_8C
  loc_64294F: Me.Visible = from_stack_1b
  loc_642954: FFree1Ad var_8C
  loc_642957: FLdPr Me
  loc_64295A: MemLdI2 global_54
  loc_64295D: LitI2_Byte 0
  loc_64295F: NeI2
  loc_642960: BranchF loc_6429AB
  loc_642963: LitVarI2 var_C4, 1
  loc_642968: PopAdLdVar
  loc_642969: FLdRfVar var_B4
  loc_64296C: FLdPr Me
  loc_64296F: MemLdRfVar from_stack_1.global_54
  loc_642972: CVarRef
  loc_642977: FLdPrThis
  loc_642978: VCallAd Control_ID_Tree
  loc_64297B: FStAdFunc var_8C
  loc_64297E: FLdPr var_8C
  loc_642981: LateIdLdVar var_9C DispID_9 0
  loc_642988: CastAdVar Me
  loc_64298C: FStAdFunc var_B0
  loc_64298F: FLdPr var_B0
  loc_642992: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_642997: FLdPr var_B4
  loc_64299A: Me.Image = from_stack_1
  loc_64299F: FFreeAd var_8C = "": var_B0 = ""
  loc_6429A8: FFree1Var var_9C = ""
  loc_6429AB: FLdRfVar var_CC
  loc_6429AE: FLdPr var_88
  loc_6429B1:  = Me.Key
  loc_6429B6: FLdRfVar var_120
  loc_6429B9: FLdPr var_88
  loc_6429BC:  = Me.Key
  loc_6429C1: FLdRfVar var_194
  loc_6429C4: FLdPr var_88
  loc_6429C7:  = Me.Key
  loc_6429CC: FLdRfVar var_C8
  loc_6429CF: FLdPr var_88
  loc_6429D2:  = Me.Key
  loc_6429D7: ILdRf var_C8
  loc_6429DA: LitStr "Aplicaciones"
  loc_6429DD: EqStr
  loc_6429DF: CVarBoolI2 var_10C
  loc_6429E3: LitVarStr var_C4, "Seguridad"
  loc_6429E8: HardType
  loc_6429E9: LitVarI2 var_DC, 9
  loc_6429EE: LitI4 1
  loc_6429F3: FLdZeroAd var_CC
  loc_6429F6: CVarStr var_9C
  loc_6429F9: FLdRfVar var_EC
  loc_6429FC: ImpAdCallFPR4  = Mid(, , )
  loc_642A01: FLdRfVar var_EC
  loc_642A04: EqVar var_FC
  loc_642A08: OrVar var_11C
  loc_642A0C: LitVarStr var_170, "Path"
  loc_642A11: HardType
  loc_642A12: LitVarI2 var_150, 4
  loc_642A17: LitI4 1
  loc_642A1C: FLdZeroAd var_120
  loc_642A1F: CVarStr var_130
  loc_642A22: FLdRfVar var_160
  loc_642A25: ImpAdCallFPR4  = Mid(, , )
  loc_642A2A: FLdRfVar var_160
  loc_642A2D: EqVar var_180
  loc_642A31: OrVar var_190
  loc_642A35: LitVarStr var_1E4, "Modo"
  loc_642A3A: HardType
  loc_642A3B: LitVarI2 var_1C4, 4
  loc_642A40: LitI4 1
  loc_642A45: FLdZeroAd var_194
  loc_642A48: CVarStr var_1A4
  loc_642A4B: FLdRfVar var_1D4
  loc_642A4E: ImpAdCallFPR4  = Mid(, , )
  loc_642A53: FLdRfVar var_1D4
  loc_642A56: EqVar var_1F4
  loc_642A5A: OrVar var_204
  loc_642A5E: CBoolVarNull
  loc_642A60: FFree1Str var_C8
  loc_642A63: FFreeVar var_9C = "": var_DC = "": var_EC = "": var_10C = "": var_130 = "": var_150 = "": var_160 = "": var_1A4 = "": var_1C4 = ""
  loc_642A7A: BranchF loc_642A7E
  loc_642A7D: ExitProcHresult
  loc_642A7E: FLdRfVar var_206
  loc_642A81: FLdPr var_88
  loc_642A84:  = Me.Index
  loc_642A89: FLdI2 var_206
  loc_642A8C: FLdPr Me
  loc_642A8F: MemStI2 global_54
  loc_642A92: LitVarI2 var_C4, 2
  loc_642A97: PopAdLdVar
  loc_642A98: FLdRfVar var_B4
  loc_642A9B: FLdRfVar var_206
  loc_642A9E: FLdPr var_88
  loc_642AA1:  = Me.Index
  loc_642AA6: FLdI2 var_206
  loc_642AA9: CVarI2 var_DC
  loc_642AAC: FLdPrThis
  loc_642AAD: VCallAd Control_ID_Tree
  loc_642AB0: FStAdFunc var_8C
  loc_642AB3: FLdPr var_8C
  loc_642AB6: LateIdLdVar var_9C DispID_9 0
  loc_642ABD: CastAdVar Me
  loc_642AC1: FStAdFunc var_B0
  loc_642AC4: FLdPr var_B0
  loc_642AC7: from_stack_2 = Me.Nodes.Item(from_stack_1)
  loc_642ACC: FLdPr var_B4
  loc_642ACF: Me.Image = from_stack_1
  loc_642AD4: FFreeAd var_8C = "": var_B0 = ""
  loc_642ADD: FFreeVar var_9C = ""
  loc_642AE4: FLdRfVar var_C8
  loc_642AE7: FLdPr var_88
  loc_642AEA:  = Me.Key
  loc_642AEF: FLdZeroAd var_C8
  loc_642AF2: PopTmpLdAdStr
  loc_642AF6: from_stack_2v = Proc_84_22_64406C(from_stack_1v)
  loc_642AFB: FFree1Str var_CC
  loc_642AFE: LitI2_Byte 0
  loc_642B00: FLdPrThis
  loc_642B01: VCallAd Control_ID_lbBack
  loc_642B04: FStAdFunc var_8C
  loc_642B07: FLdPr var_8C
  loc_642B0A: Me.Visible = from_stack_1b
  loc_642B0F: FFree1Ad var_8C
  loc_642B12: LitI2_Byte &HFF
  loc_642B14: FLdPrThis
  loc_642B15: VCallAd Control_ID_pic
  loc_642B18: FStAdFunc var_8C
  loc_642B1B: FLdPr var_8C
  loc_642B1E: Me.Visible = from_stack_1b
  loc_642B23: FFree1Ad var_8C
  loc_642B26: ExitProcHresult
End Sub

Private Sub cmdBorrar_Click() '66A29C
  'Data Table: 43FE08
  loc_669F68: FLdPr Me
  loc_669F6B: MemLdStr global_68
  loc_669F6E: ImpAdCallFPR4 push Val()
  loc_669F73: CR8R8
  loc_669F74: LitI2_Byte 0
  loc_669F76: CR8I2
  loc_669F77: EqR4
  loc_669F78: BranchF loc_669FFF
  loc_669F7B: FLdRfVar var_1D4
  loc_669F7E: LitVar_Missing var_1D0
  loc_669F81: LitVar_Missing var_1B0
  loc_669F84: LitVar_Missing var_190
  loc_669F87: LitVar_Missing var_170
  loc_669F8A: LitVar_Missing var_150
  loc_669F8D: LitVar_Missing var_130
  loc_669F90: LitVar_Missing var_110
  loc_669F93: LitVar_Missing var_F0
  loc_669F96: LitVar_Missing var_D0
  loc_669F99: LitVar_Missing var_B0
  loc_669F9C: LitStr "No existen nodos"
  loc_669F9F: FStStrCopy var_90
  loc_669FA2: FLdRfVar var_90
  loc_669FA5: LitI4 4
  loc_669FAA: PopTmpLdAdStr var_8C
  loc_669FAD: LitI2_Byte &H4F
  loc_669FAF: PopTmpLdAd2 var_86
  loc_669FB2: ImpAdLdRf MemVar_74C7D0
  loc_669FB5: NewIfNullPr clsMsg
  loc_669FB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_669FBD: LitVar_Missing var_234
  loc_669FC0: LitVar_Missing var_214
  loc_669FC3: FLdPr Me
  loc_669FC6: MemLdRfVar from_stack_1.global_92
  loc_669FC9: CVarRef
  loc_669FCE: LitI4 &H40
  loc_669FD3: FLdZeroAd var_1D4
  loc_669FD6: CVarStr var_1E4
  loc_669FD9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_669FDE: FFree1Str var_90
  loc_669FE1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_214 = ""
  loc_669FFE: ExitProcHresult
  loc_669FFF: FLdPr Me
  loc_66A002: MemLdRfVar from_stack_1.global_72
  loc_66A005: CVarRef
  loc_66A00A: FLdRfVar var_B0
  loc_66A00D: ImpAdCallFPR4  = Trim()
  loc_66A012: FLdRfVar var_B0
  loc_66A015: LitVarStr var_C0, vbNullString
  loc_66A01A: HardType
  loc_66A01B: EqVarBool
  loc_66A01D: FFree1Var var_B0 = ""
  loc_66A020: BranchF loc_66A0A7
  loc_66A023: FLdRfVar var_1D4
  loc_66A026: LitVar_Missing var_1D0
  loc_66A029: LitVar_Missing var_1B0
  loc_66A02C: LitVar_Missing var_190
  loc_66A02F: LitVar_Missing var_170
  loc_66A032: LitVar_Missing var_150
  loc_66A035: LitVar_Missing var_130
  loc_66A038: LitVar_Missing var_110
  loc_66A03B: LitVar_Missing var_F0
  loc_66A03E: LitVar_Missing var_D0
  loc_66A041: LitVar_Missing var_B0
  loc_66A044: LitStr "Debe seleccionar un nodo"
  loc_66A047: FStStrCopy var_90
  loc_66A04A: FLdRfVar var_90
  loc_66A04D: LitI4 5
  loc_66A052: PopTmpLdAdStr var_8C
  loc_66A055: LitI2_Byte &H4F
  loc_66A057: PopTmpLdAd2 var_86
  loc_66A05A: ImpAdLdRf MemVar_74C7D0
  loc_66A05D: NewIfNullPr clsMsg
  loc_66A060: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A065: LitVar_Missing var_234
  loc_66A068: LitVar_Missing var_214
  loc_66A06B: FLdPr Me
  loc_66A06E: MemLdRfVar from_stack_1.global_92
  loc_66A071: CVarRef
  loc_66A076: LitI4 &H40
  loc_66A07B: FLdZeroAd var_1D4
  loc_66A07E: CVarStr var_1E4
  loc_66A081: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66A086: FFree1Str var_90
  loc_66A089: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_214 = ""
  loc_66A0A6: ExitProcHresult
  loc_66A0A7: FLdRfVar var_1D4
  loc_66A0AA: LitVar_Missing var_1D0
  loc_66A0AD: LitVar_Missing var_1B0
  loc_66A0B0: LitVar_Missing var_190
  loc_66A0B3: LitVar_Missing var_170
  loc_66A0B6: LitVar_Missing var_150
  loc_66A0B9: LitVar_Missing var_130
  loc_66A0BC: LitVar_Missing var_110
  loc_66A0BF: LitVar_Missing var_F0
  loc_66A0C2: LitVar_Missing var_D0
  loc_66A0C5: LitVar_Missing var_B0
  loc_66A0C8: LitStr "Se eliminara el nodo"
  loc_66A0CB: FStStrCopy var_90
  loc_66A0CE: FLdRfVar var_90
  loc_66A0D1: LitI4 6
  loc_66A0D6: PopTmpLdAdStr var_8C
  loc_66A0D9: LitI2_Byte &H4F
  loc_66A0DB: PopTmpLdAd2 var_86
  loc_66A0DE: ImpAdLdRf MemVar_74C7D0
  loc_66A0E1: NewIfNullPr clsMsg
  loc_66A0E4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A0E9: FLdRfVar var_328
  loc_66A0EC: LitVar_Missing var_324
  loc_66A0EF: LitVar_Missing var_304
  loc_66A0F2: LitVar_Missing var_2E4
  loc_66A0F5: LitVar_Missing var_2C4
  loc_66A0F8: LitVar_Missing var_2A4
  loc_66A0FB: LitVar_Missing var_284
  loc_66A0FE: LitVar_Missing var_264
  loc_66A101: LitVar_Missing var_234
  loc_66A104: LitVar_Missing var_214
  loc_66A107: LitVar_Missing var_1E4
  loc_66A10A: LitStr " de la lista."
  loc_66A10D: FStStrCopy var_244
  loc_66A110: FLdRfVar var_244
  loc_66A113: LitI4 7
  loc_66A118: PopTmpLdAdStr var_240
  loc_66A11B: LitI2_Byte &H4F
  loc_66A11D: PopTmpLdAd2 var_23A
  loc_66A120: ImpAdLdRf MemVar_74C7D0
  loc_66A123: NewIfNullPr clsMsg
  loc_66A126: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A12B: FLdRfVar var_478
  loc_66A12E: LitVar_Missing var_474
  loc_66A131: LitVar_Missing var_454
  loc_66A134: LitVar_Missing var_434
  loc_66A137: LitVar_Missing var_414
  loc_66A13A: LitVar_Missing var_3F4
  loc_66A13D: LitVar_Missing var_3D4
  loc_66A140: LitVar_Missing var_3B4
  loc_66A143: LitVar_Missing var_394
  loc_66A146: LitVar_Missing var_374
  loc_66A149: LitVar_Missing var_354
  loc_66A14C: LitStr "¿está de acuerdo?"
  loc_66A14F: FStStrCopy var_334
  loc_66A152: FLdRfVar var_334
  loc_66A155: LitI4 8
  loc_66A15A: PopTmpLdAdStr var_330
  loc_66A15D: LitI2_Byte &H4F
  loc_66A15F: PopTmpLdAd2 var_32A
  loc_66A162: ImpAdLdRf MemVar_74C7D0
  loc_66A165: NewIfNullPr clsMsg
  loc_66A168: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66A16D: LitVar_Missing var_4E4
  loc_66A170: LitVar_Missing var_4C4
  loc_66A173: FLdPr Me
  loc_66A176: MemLdRfVar from_stack_1.global_92
  loc_66A179: CVarRef
  loc_66A17E: LitI4 &H24
  loc_66A183: ILdRf var_1D4
  loc_66A186: LitStr " "
  loc_66A189: ConcatStr
  loc_66A18A: FStStrNoPop var_238
  loc_66A18D: FLdPr Me
  loc_66A190: MemLdStr global_76
  loc_66A193: ConcatStr
  loc_66A194: FStStrNoPop var_480
  loc_66A197: ILdRf var_328
  loc_66A19A: LitStr vbCrLf
  loc_66A19D: ConcatStr
  loc_66A19E: FStStrNoPop var_47C
  loc_66A1A1: ILdRf var_478
  loc_66A1A4: ConcatStr
  loc_66A1A5: FStStrNoPop var_484
  loc_66A1A8: ConcatStr
  loc_66A1A9: CVarStr var_494
  loc_66A1AC: ImpAdCallI2 MsgBox(, , , , )
  loc_66A1B1: LitI4 6
  loc_66A1B6: EqI4
  loc_66A1B7: FFreeStr var_90 = "": var_1D4 = "": var_238 = "": var_244 = "": var_328 = "": var_334 = "": var_47C = "": var_478 = "": var_480 = ""
  loc_66A1CE: FFreeVar var_494 = "": var_4C4 = "": var_4E4 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1E4 = "": var_214 = "": var_234 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_434 = "": var_454 = ""
  loc_66A213: BranchF loc_66A29A
  loc_66A216: FLdPr Me
  loc_66A219: MemLdStr global_68
  loc_66A21C: ImpAdCallFPR4 push Val()
  loc_66A221: FStFPR8 var_4EC
  loc_66A224: ImpAdLdRf MemVar_74C7B4
  loc_66A227: FLdFPR8 var_4EC
  loc_66A22A: LitI2_Byte 1
  loc_66A22C: CR8I2
  loc_66A22D: SubR4
  loc_66A22E: CStrR8
  loc_66A230: PopTmpLdAdStr
  loc_66A234: LitStr "MAXAPLIC"
  loc_66A237: FStStrCopy var_1D4
  loc_66A23A: FLdRfVar var_1D4
  loc_66A23D: LitStr "GENERAL"
  loc_66A240: FStStrCopy var_90
  loc_66A243: FLdRfVar var_90
  loc_66A246: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_66A24B: FFreeStr var_90 = "": var_1D4 = ""
  loc_66A254: ImpAdLdRf MemVar_74C7B4
  loc_66A257: LitStr vbNullString
  loc_66A25A: FStStrCopy var_1D4
  loc_66A25D: FLdRfVar var_1D4
  loc_66A260: LitStr vbNullString
  loc_66A263: FStStrCopy var_90
  loc_66A266: FLdRfVar var_90
  loc_66A269: FLdPr Me
  loc_66A26C: MemLdRfVar from_stack_1.global_72
  loc_66A26F: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_66A274: FFreeStr var_90 = ""
  loc_66A27B: LitI2_Byte 0
  loc_66A27D: FLdPr Me
  loc_66A280: MemStI2 global_54
  loc_66A283: from_stack_1v = Proc_84_16_5FE964()
  loc_66A288: LitStr vbNullString
  loc_66A28B: FLdPr Me
  loc_66A28E: MemStStrCopy
  loc_66A292: LitI2_Byte &HFF
  loc_66A294: FLdPr Me
  loc_66A297: MemStI2 global_56
  loc_66A29A: ExitProcHresult
End Sub

Private Sub cmdNew_Click() '5ED040
  'Data Table: 43FE08
  loc_5ECFB0: from_stack_1v = Proc_84_25_5D66F4()
  loc_5ECFB5: LitI2_Byte &HFF
  loc_5ECFB7: FLdPrThis
  loc_5ECFB8: VCallAd Control_ID_pic
  loc_5ECFBB: FStAdFunc var_88
  loc_5ECFBE: FLdPr var_88
  loc_5ECFC1: Me.Visible = from_stack_1b
  loc_5ECFC6: FFree1Ad var_88
  loc_5ECFC9: LitStr vbNullString
  loc_5ECFCC: FLdPrThis
  loc_5ECFCD: VCallAd Control_ID_txPath
  loc_5ECFD0: FStAdFunc var_88
  loc_5ECFD3: FLdPr var_88
  loc_5ECFD6: Me.Text = from_stack_1
  loc_5ECFDB: FFree1Ad var_88
  loc_5ECFDE: LitStr vbNullString
  loc_5ECFE1: FLdPrThis
  loc_5ECFE2: VCallAd Control_ID_txTitle
  loc_5ECFE5: FStAdFunc var_88
  loc_5ECFE8: FLdPr var_88
  loc_5ECFEB: Me.Text = from_stack_1
  loc_5ECFF0: FFree1Ad var_88
  loc_5ECFF3: LitStr vbNullString
  loc_5ECFF6: FLdPrThis
  loc_5ECFF7: VCallAd Control_ID_cmbModo
  loc_5ECFFA: FStAdFunc var_88
  loc_5ECFFD: FLdPr var_88
  loc_5ED000: Me.Text = from_stack_1
  loc_5ED005: FFree1Ad var_88
  loc_5ED008: LitStr vbNullString
  loc_5ED00B: FLdPrThis
  loc_5ED00C: VCallAd Control_ID_cmbSeguridad
  loc_5ED00F: FStAdFunc var_88
  loc_5ED012: FLdPr var_88
  loc_5ED015: Me.Text = from_stack_1
  loc_5ED01A: FFree1Ad var_88
  loc_5ED01D: from_stack_1v = Proc_84_24_62A1C8()
  loc_5ED022: FLdPrThis
  loc_5ED023: VCallAd Control_ID_txPath
  loc_5ED026: FStAdFunc var_88
  loc_5ED029: FLdPr var_88
  loc_5ED02C: Me.SetFocus
  loc_5ED031: FFree1Ad var_88
  loc_5ED034: LitI2_Byte 1
  loc_5ED036: CUI1I2
  loc_5ED038: FLdPr Me
  loc_5ED03B: MemStUI1
  loc_5ED03F: ExitProcHresult
End Sub

Private Sub cmdAgregar_Click() '5D3B04
  'Data Table: 43FE08
  loc_5D3AE4: FLdPr Me
  loc_5D3AE7: MemLdUI1 global_52
  loc_5D3AEB: CI2UI1
  loc_5D3AED: LitI2_Byte 0
  loc_5D3AEF: EqI2
  loc_5D3AF0: BranchF loc_5D3AFB
  loc_5D3AF3: from_stack_1v = Proc_84_15_633770()
  loc_5D3AF8: Branch loc_5D3B00
  loc_5D3AFB: from_stack_1v = Proc_84_17_63C8D0()
  loc_5D3B00: ExitProcHresult
End Sub

Private Sub cmbSeguridad_Click() '62D3E0
  'Data Table: 43FE08
  loc_62D29C: FLdRfVar var_8E
  loc_62D29F: FLdPrThis
  loc_62D2A0: VCallAd Control_ID_cmbSeguridad
  loc_62D2A3: FStAdFunc var_8C
  loc_62D2A6: FLdPr var_8C
  loc_62D2A9:  = Me.ListIndex
  loc_62D2AE: FLdI2 var_8E
  loc_62D2B1: LitI2_Byte 1
  loc_62D2B3: AddI2
  loc_62D2B4: FStI2 var_86
  loc_62D2B7: FFree1Ad var_8C
  loc_62D2BA: FLdI2 var_86
  loc_62D2BD: LitI2_Byte 9
  loc_62D2BF: EqI2
  loc_62D2C0: BranchF loc_62D2C8
  loc_62D2C3: LitI2_Byte &HA
  loc_62D2C5: FStI2 var_86
  loc_62D2C8: ImpAdLdPr unk_43FE0A
  loc_62D2CB: MemLdI2 global_4
  loc_62D2CE: FLdI2 var_86
  loc_62D2D1: LtI2
  loc_62D2D2: BranchF loc_62D3DC
  loc_62D2D5: FLdRfVar var_1DC
  loc_62D2D8: LitVar_Missing var_1D8
  loc_62D2DB: LitVar_Missing var_1B8
  loc_62D2DE: LitVar_Missing var_198
  loc_62D2E1: LitVar_Missing var_178
  loc_62D2E4: LitVar_Missing var_158
  loc_62D2E7: LitVar_Missing var_138
  loc_62D2EA: LitVar_Missing var_118
  loc_62D2ED: LitVar_Missing var_F8
  loc_62D2F0: LitVar_Missing var_D8
  loc_62D2F3: LitVar_Missing var_B8
  loc_62D2F6: LitStr "No tiene nivel de seguridad suficiente para el modulo. Verifique por favor."
  loc_62D2F9: FStStrCopy var_98
  loc_62D2FC: FLdRfVar var_98
  loc_62D2FF: LitI4 1
  loc_62D304: PopTmpLdAdStr var_94
  loc_62D307: LitI2_Byte &H4F
  loc_62D309: PopTmpLdAd2 var_8E
  loc_62D30C: ImpAdLdRf MemVar_74C7D0
  loc_62D30F: NewIfNullPr clsMsg
  loc_62D312: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62D317: FLdRfVar var_32C
  loc_62D31A: LitVar_Missing var_328
  loc_62D31D: LitVar_Missing var_308
  loc_62D320: LitVar_Missing var_2E8
  loc_62D323: LitVar_Missing var_2C8
  loc_62D326: LitVar_Missing var_2A8
  loc_62D329: LitVar_Missing var_288
  loc_62D32C: LitVar_Missing var_268
  loc_62D32F: LitVar_Missing var_248
  loc_62D332: LitVar_Missing var_228
  loc_62D335: LitVar_Missing var_208
  loc_62D338: LitStr "Seguridad"
  loc_62D33B: FStStrCopy var_1E8
  loc_62D33E: FLdRfVar var_1E8
  loc_62D341: LitI4 2
  loc_62D346: PopTmpLdAdStr var_1E4
  loc_62D349: LitI2_Byte &H4F
  loc_62D34B: PopTmpLdAd2 var_1DE
  loc_62D34E: ImpAdLdRf MemVar_74C7D0
  loc_62D351: NewIfNullPr clsMsg
  loc_62D354: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62D359: LitVar_Missing var_38C
  loc_62D35C: LitVar_Missing var_36C
  loc_62D35F: FLdZeroAd var_32C
  loc_62D362: CVarStr var_34C
  loc_62D365: LitI4 0
  loc_62D36A: FLdZeroAd var_1DC
  loc_62D36D: CVarStr var_33C
  loc_62D370: ImpAdCallFPR4 MsgBox(, , , , )
  loc_62D375: FFreeStr var_98 = ""
  loc_62D37C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_33C = "": var_34C = "": var_36C = ""
  loc_62D3AF: FLdPr Me
  loc_62D3B2: MemLdStr global_60
  loc_62D3B5: FLdPrThis
  loc_62D3B6: VCallAd Control_ID_cmbSeguridad
  loc_62D3B9: FStAdFunc var_8C
  loc_62D3BC: FLdPr var_8C
  loc_62D3BF: Me.Text = from_stack_1
  loc_62D3C4: FFree1Ad var_8C
  loc_62D3C7: LitI2_Byte &HFF
  loc_62D3C9: FLdPrThis
  loc_62D3CA: VCallAd Control_ID_cmbSeguridad
  loc_62D3CD: FStAdFunc var_8C
  loc_62D3D0: FLdPr var_8C
  loc_62D3D3: Me.ListIndex = from_stack_1
  loc_62D3D8: FFree1Ad var_8C
  loc_62D3DB: ExitProcHresult
  loc_62D3DC: ExitProcHresult
End Sub

Private Sub cmbSeguridad_KeyDown(KeyCode As Integer, Shift As Integer) '5C8F18
  'Data Table: 43FE08
  loc_5C8F10: LitI2_Byte 0
  loc_5C8F12: IStI2 KeyCode
  loc_5C8F15: ExitProcHresult
End Sub

Private Sub cmbSeguridad_KeyPress(KeyAscii As Integer) '5C8E70
  'Data Table: 43FE08
  loc_5C8E68: LitI2_Byte 0
  loc_5C8E6A: IStI2 KeyAscii
  loc_5C8E6D: ExitProcHresult
End Sub

Private Function Proc_84_15_633770() '633770
  'Data Table: 43FE08
  loc_6335A0: FLdRfVar var_86
  loc_6335A3: from_stack_1v = Proc_84_18_66D900()
  loc_6335A8: FLdI2 var_86
  loc_6335AB: NotI4
  loc_6335AC: BranchF loc_6335B0
  loc_6335AF: ExitProcHresult
  loc_6335B0: FLdRfVar var_90
  loc_6335B3: FLdPrThis
  loc_6335B4: VCallAd Control_ID_txPath
  loc_6335B7: FStAdFunc var_8C
  loc_6335BA: FLdPr var_8C
  loc_6335BD:  = Me.Text
  loc_6335C2: ImpAdLdRf MemVar_74C7B4
  loc_6335C5: FLdZeroAd var_90
  loc_6335C8: PopTmpLdAdStr
  loc_6335CC: LitStr "path"
  loc_6335CF: FStStrCopy var_94
  loc_6335D2: FLdRfVar var_94
  loc_6335D5: FLdPr Me
  loc_6335D8: MemLdRfVar from_stack_1.global_72
  loc_6335DB: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_6335E0: FFreeStr var_94 = ""
  loc_6335E7: FFree1Ad var_8C
  loc_6335EA: FLdPr Me
  loc_6335ED: MemLdRfVar from_stack_1.global_88
  loc_6335F0: CVarRef
  loc_6335F5: FLdRfVar var_B8
  loc_6335F8: ImpAdCallFPR4  = Trim()
  loc_6335FD: FLdRfVar var_B8
  loc_633600: FLdRfVar var_90
  loc_633603: FLdPrThis
  loc_633604: VCallAd Control_ID_txTitle
  loc_633607: FStAdFunc var_8C
  loc_63360A: FLdPr var_8C
  loc_63360D:  = Me.Text
  loc_633612: FLdZeroAd var_90
  loc_633615: CVarStr var_C8
  loc_633618: FLdRfVar var_D8
  loc_63361B: ImpAdCallFPR4  = Trim()
  loc_633620: FLdRfVar var_D8
  loc_633623: NeVarBool
  loc_633625: FFree1Ad var_8C
  loc_633628: FFreeVar var_C8 = "": var_B8 = ""
  loc_633631: BranchF loc_63363C
  loc_633634: LitI2_Byte &HFF
  loc_633636: FLdPr Me
  loc_633639: MemStI2 global_56
  loc_63363C: FLdRfVar var_90
  loc_63363F: FLdPrThis
  loc_633640: VCallAd Control_ID_txTitle
  loc_633643: FStAdFunc var_8C
  loc_633646: FLdPr var_8C
  loc_633649:  = Me.Text
  loc_63364E: ImpAdLdRf MemVar_74C7B4
  loc_633651: FLdZeroAd var_90
  loc_633654: PopTmpLdAdStr
  loc_633658: LitStr "titulo"
  loc_63365B: FStStrCopy var_94
  loc_63365E: FLdRfVar var_94
  loc_633661: FLdPr Me
  loc_633664: MemLdRfVar from_stack_1.global_72
  loc_633667: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63366C: FFreeStr var_94 = ""
  loc_633673: FFree1Ad var_8C
  loc_633676: FLdRfVar var_86
  loc_633679: FLdPrThis
  loc_63367A: VCallAd Control_ID_cmbModo
  loc_63367D: FStAdFunc var_8C
  loc_633680: FLdPr var_8C
  loc_633683:  = Me.ListIndex
  loc_633688: FLdI2 var_86
  loc_63368B: LitI2_Byte &HFF
  loc_63368D: EqI2
  loc_63368E: NotI4
  loc_63368F: FFree1Ad var_8C
  loc_633692: BranchF loc_6336D1
  loc_633695: FLdRfVar var_86
  loc_633698: FLdPrThis
  loc_633699: VCallAd Control_ID_cmbModo
  loc_63369C: FStAdFunc var_8C
  loc_63369F: FLdPr var_8C
  loc_6336A2:  = Me.ListIndex
  loc_6336A7: ImpAdLdRf MemVar_74C7B4
  loc_6336AA: FLdI2 var_86
  loc_6336AD: CStrUI1
  loc_6336AF: PopTmpLdAdStr
  loc_6336B3: LitStr "modo"
  loc_6336B6: FStStrCopy var_90
  loc_6336B9: FLdRfVar var_90
  loc_6336BC: FLdPr Me
  loc_6336BF: MemLdRfVar from_stack_1.global_72
  loc_6336C2: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_6336C7: FFreeStr var_90 = ""
  loc_6336CE: FFree1Ad var_8C
  loc_6336D1: FLdRfVar var_86
  loc_6336D4: FLdPrThis
  loc_6336D5: VCallAd Control_ID_cmbSeguridad
  loc_6336D8: FStAdFunc var_8C
  loc_6336DB: FLdPr var_8C
  loc_6336DE:  = Me.ListIndex
  loc_6336E3: FLdI2 var_86
  loc_6336E6: LitI2_Byte &HFF
  loc_6336E8: EqI2
  loc_6336E9: NotI4
  loc_6336EA: FFree1Ad var_8C
  loc_6336ED: BranchF loc_633769
  loc_6336F0: FLdRfVar var_86
  loc_6336F3: FLdPrThis
  loc_6336F4: VCallAd Control_ID_cmbSeguridad
  loc_6336F7: FStAdFunc var_8C
  loc_6336FA: FLdPr var_8C
  loc_6336FD:  = Me.ListIndex
  loc_633702: FLdRfVar var_EE
  loc_633705: FLdPrThis
  loc_633706: VCallAd Control_ID_cmbSeguridad
  loc_633709: FStAdFunc var_EC
  loc_63370C: FLdPr var_EC
  loc_63370F:  = Me.ListIndex
  loc_633714: FLdI2 var_EE
  loc_633717: CVarI2 var_C8
  loc_63371A: LitVarI2 var_B8, 9
  loc_63371F: FLdI2 var_86
  loc_633722: LitI2_Byte 8
  loc_633724: EqI2
  loc_633725: CVarBoolI2 var_A8
  loc_633729: FLdRfVar var_D8
  loc_63372C: ImpAdCallFPR4  = IIf(, , )
  loc_633731: ImpAdLdRf MemVar_74C7B4
  loc_633734: FLdRfVar var_D8
  loc_633737: CStrVarTmp
  loc_633738: PopTmpLdAdStr
  loc_63373C: LitStr "seguridad"
  loc_63373F: FStStrCopy var_90
  loc_633742: FLdRfVar var_90
  loc_633745: FLdPr Me
  loc_633748: MemLdRfVar from_stack_1.global_72
  loc_63374B: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_633750: FFreeStr var_90 = ""
  loc_633757: FFreeAd var_8C = ""
  loc_63375E: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_633769: from_stack_1v = Proc_84_16_5FE964()
  loc_63376E: ExitProcHresult
End Function

Private Function Proc_84_16_5FE964() '5FE964
  'Data Table: 43FE08
  loc_5FE898: LitVar_Missing var_AC
  loc_5FE89B: ImpAdCallI2 FreeFile()
  loc_5FE8A0: CUI1I2
  loc_5FE8A2: FStUI1 var_8A
  loc_5FE8A6: FFree1Var var_AC = ""
  loc_5FE8A9: ImpAdLdI4 MemVar_74C7B4
  loc_5FE8AC: FLdUI1
  loc_5FE8B0: CI2UI1
  loc_5FE8B2: LitI2_Byte &HFF
  loc_5FE8B4: OpenFile
  loc_5FE8B8: LitVar_Missing var_AC
  loc_5FE8BB: ImpAdCallI2 FreeFile()
  loc_5FE8C0: CUI1I2
  loc_5FE8C2: FStUI1 var_8C
  loc_5FE8C6: FFree1Var var_AC = ""
  loc_5FE8C9: ImpAdLdI4 MemVar_74C7B8
  loc_5FE8CC: FLdUI1
  loc_5FE8D0: CI2UI1
  loc_5FE8D2: LitI2_Byte &HFF
  loc_5FE8D4: OpenFile
  loc_5FE8D8: LitI2_Byte 1
  loc_5FE8DA: ImpAdCallI2 push EOF()
  loc_5FE8DF: NotI4
  loc_5FE8E0: BranchF loc_5FE908
  loc_5FE8E3: FLdUI1
  loc_5FE8E7: CI2UI1
  loc_5FE8E9: FLdRfVar var_88
  loc_5FE8EC: LineInputStr
  loc_5FE8EE: FLdRfVar var_88
  loc_5FE8F1: ImpAdCallFPR4 Proc_87_21_61B33C()
  loc_5FE8F6: ILdRf var_88
  loc_5FE8F9: FLdUI1
  loc_5FE8FD: CI2UI1
  loc_5FE8FF: PrintFile
  loc_5FE905: Branch loc_5FE8D8
  loc_5FE908: FLdUI1
  loc_5FE90C: CI2UI1
  loc_5FE90E: Close
  loc_5FE910: FLdUI1
  loc_5FE914: CI2UI1
  loc_5FE916: Close
  loc_5FE918: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_5FE91D: LitI2_Byte 0
  loc_5FE91F: FLdPrThis
  loc_5FE920: VCallAd Control_ID_pic
  loc_5FE923: FStAdFunc var_B0
  loc_5FE926: FLdPr var_B0
  loc_5FE929: Me.Visible = from_stack_1b
  loc_5FE92E: FFree1Ad var_B0
  loc_5FE931: FLdPrThis
  loc_5FE932: VCallAd Control_ID_Tree
  loc_5FE935: FStAdFunc var_B0
  loc_5FE938: FLdPr var_B0
  loc_5FE93B: LateIdLdVar var_AC DispID_9 0
  loc_5FE942: CastAdVar Me
  loc_5FE946: FStAdFunc var_B4
  loc_5FE949: FLdPr var_B4
  loc_5FE94C: Me.Nodes.Clear
  loc_5FE951: FFreeAd var_B0 = ""
  loc_5FE958: FFree1Var var_AC = ""
  loc_5FE95B: from_stack_1v = Proc_84_27_6AB7DC()
  loc_5FE960: ExitProcHresult
End Function

Private Function Proc_84_17_63C8D0() '63C8D0
  'Data Table: 43FE08
  loc_63C6B8: FLdRfVar var_88
  loc_63C6BB: from_stack_1v = Proc_84_26_5E7C94()
  loc_63C6C0: FLdI2 var_88
  loc_63C6C3: FStI2 var_86
  loc_63C6C6: FLdRfVar var_88
  loc_63C6C9: from_stack_1v = Proc_84_18_66D900()
  loc_63C6CE: FLdI2 var_88
  loc_63C6D1: NotI4
  loc_63C6D2: BranchF loc_63C6D6
  loc_63C6D5: ExitProcHresult
  loc_63C6D6: FLdPr Me
  loc_63C6D9: MemLdStr global_68
  loc_63C6DC: ImpAdCallFPR4 push Val()
  loc_63C6E1: FStFPR8 var_9C
  loc_63C6E4: ImpAdLdRf MemVar_74C7B4
  loc_63C6E7: FLdFPR8 var_9C
  loc_63C6EA: LitI2_Byte 1
  loc_63C6EC: CR8I2
  loc_63C6ED: AddR8
  loc_63C6EE: CStrR8
  loc_63C6F0: PopTmpLdAdStr
  loc_63C6F4: LitStr "maxaplic"
  loc_63C6F7: FStStrCopy var_90
  loc_63C6FA: FLdRfVar var_90
  loc_63C6FD: LitStr "GENERAL"
  loc_63C700: FStStrCopy var_8C
  loc_63C703: FLdRfVar var_8C
  loc_63C706: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63C70B: FFreeStr var_8C = "": var_90 = ""
  loc_63C714: FLdRfVar var_90
  loc_63C717: FLdPrThis
  loc_63C718: VCallAd Control_ID_txPath
  loc_63C71B: FStAdFunc var_A0
  loc_63C71E: FLdPr var_A0
  loc_63C721:  = Me.Text
  loc_63C726: ImpAdLdRf MemVar_74C7B4
  loc_63C729: FLdZeroAd var_90
  loc_63C72C: PopTmpLdAdStr
  loc_63C730: LitStr "path"
  loc_63C733: FStStrCopy var_A4
  loc_63C736: FLdRfVar var_A4
  loc_63C739: LitStr "Comando"
  loc_63C73C: FLdI2 var_86
  loc_63C73F: LitI2_Byte 1
  loc_63C741: AddI2
  loc_63C742: CStrUI1
  loc_63C744: FStStrNoPop var_8C
  loc_63C747: ConcatStr
  loc_63C748: PopTmpLdAdStr
  loc_63C74C: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63C751: FFreeStr var_8C = "": var_94 = "": var_A4 = ""
  loc_63C75C: FFree1Ad var_A0
  loc_63C75F: FLdRfVar var_90
  loc_63C762: FLdPrThis
  loc_63C763: VCallAd Control_ID_txTitle
  loc_63C766: FStAdFunc var_A0
  loc_63C769: FLdPr var_A0
  loc_63C76C:  = Me.Text
  loc_63C771: ImpAdLdRf MemVar_74C7B4
  loc_63C774: FLdZeroAd var_90
  loc_63C777: PopTmpLdAdStr
  loc_63C77B: LitStr "titulo"
  loc_63C77E: FStStrCopy var_A4
  loc_63C781: FLdRfVar var_A4
  loc_63C784: LitStr "Comando"
  loc_63C787: FLdI2 var_86
  loc_63C78A: LitI2_Byte 1
  loc_63C78C: AddI2
  loc_63C78D: CStrUI1
  loc_63C78F: FStStrNoPop var_8C
  loc_63C792: ConcatStr
  loc_63C793: PopTmpLdAdStr
  loc_63C797: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63C79C: FFreeStr var_8C = "": var_94 = "": var_A4 = ""
  loc_63C7A7: FFree1Ad var_A0
  loc_63C7AA: FLdRfVar var_88
  loc_63C7AD: FLdPrThis
  loc_63C7AE: VCallAd Control_ID_cmbModo
  loc_63C7B1: FStAdFunc var_A0
  loc_63C7B4: FLdPr var_A0
  loc_63C7B7:  = Me.ListIndex
  loc_63C7BC: FLdI2 var_88
  loc_63C7BF: LitI2_Byte &HFF
  loc_63C7C1: EqI2
  loc_63C7C2: NotI4
  loc_63C7C3: FFree1Ad var_A0
  loc_63C7C6: BranchF loc_63C816
  loc_63C7C9: FLdRfVar var_88
  loc_63C7CC: FLdPrThis
  loc_63C7CD: VCallAd Control_ID_cmbModo
  loc_63C7D0: FStAdFunc var_A0
  loc_63C7D3: FLdPr var_A0
  loc_63C7D6:  = Me.ListIndex
  loc_63C7DB: ImpAdLdRf MemVar_74C7B4
  loc_63C7DE: FLdI2 var_88
  loc_63C7E1: CStrUI1
  loc_63C7E3: PopTmpLdAdStr
  loc_63C7E7: LitStr "modo"
  loc_63C7EA: FStStrCopy var_94
  loc_63C7ED: FLdRfVar var_94
  loc_63C7F0: LitStr "Comando"
  loc_63C7F3: FLdI2 var_86
  loc_63C7F6: LitI2_Byte 1
  loc_63C7F8: AddI2
  loc_63C7F9: CStrUI1
  loc_63C7FB: FStStrNoPop var_8C
  loc_63C7FE: ConcatStr
  loc_63C7FF: PopTmpLdAdStr
  loc_63C803: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63C808: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_63C813: FFree1Ad var_A0
  loc_63C816: FLdRfVar var_88
  loc_63C819: FLdPrThis
  loc_63C81A: VCallAd Control_ID_cmbSeguridad
  loc_63C81D: FStAdFunc var_A0
  loc_63C820: FLdPr var_A0
  loc_63C823:  = Me.ListIndex
  loc_63C828: FLdI2 var_88
  loc_63C82B: LitI2_Byte &HFF
  loc_63C82D: EqI2
  loc_63C82E: NotI4
  loc_63C82F: FFree1Ad var_A0
  loc_63C832: BranchF loc_63C8BF
  loc_63C835: FLdRfVar var_88
  loc_63C838: FLdPrThis
  loc_63C839: VCallAd Control_ID_cmbSeguridad
  loc_63C83C: FStAdFunc var_A0
  loc_63C83F: FLdPr var_A0
  loc_63C842:  = Me.ListIndex
  loc_63C847: FLdRfVar var_AE
  loc_63C84A: FLdPrThis
  loc_63C84B: VCallAd Control_ID_cmbSeguridad
  loc_63C84E: FStAdFunc var_AC
  loc_63C851: FLdPr var_AC
  loc_63C854:  = Me.ListIndex
  loc_63C859: FLdI2 var_AE
  loc_63C85C: CVarI2 var_100
  loc_63C85F: LitVarI2 var_E0, 9
  loc_63C864: FLdI2 var_88
  loc_63C867: LitI2_Byte 8
  loc_63C869: EqI2
  loc_63C86A: CVarBoolI2 var_C0
  loc_63C86E: FLdRfVar var_110
  loc_63C871: ImpAdCallFPR4  = IIf(, , )
  loc_63C876: ImpAdLdRf MemVar_74C7B4
  loc_63C879: FLdRfVar var_110
  loc_63C87C: CStrVarTmp
  loc_63C87D: PopTmpLdAdStr
  loc_63C881: LitStr "seguridad"
  loc_63C884: FStStrCopy var_94
  loc_63C887: FLdRfVar var_94
  loc_63C88A: LitStr "Comando"
  loc_63C88D: FLdI2 var_86
  loc_63C890: LitI2_Byte 1
  loc_63C892: AddI2
  loc_63C893: CStrUI1
  loc_63C895: FStStrNoPop var_8C
  loc_63C898: ConcatStr
  loc_63C899: PopTmpLdAdStr
  loc_63C89D: ImpAdCallFPR4 Proc_87_20_602058(, , , )
  loc_63C8A2: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_63C8AD: FFreeAd var_A0 = ""
  loc_63C8B4: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_63C8BF: from_stack_1v = Proc_84_16_5FE964()
  loc_63C8C4: LitI2_Byte &HFF
  loc_63C8C6: FLdPr Me
  loc_63C8C9: MemStI2 global_56
  loc_63C8CC: ExitProcHresult
End Function

Private Function Proc_84_18_66D900() '66D900
  'Data Table: 43FE08
  loc_66D540: FLdRfVar var_90
  loc_66D543: FLdPrThis
  loc_66D544: VCallAd Control_ID_txTitle
  loc_66D547: FStAdFunc var_8C
  loc_66D54A: FLdPr var_8C
  loc_66D54D:  = Me.Text
  loc_66D552: FLdZeroAd var_90
  loc_66D555: CVarStr var_A0
  loc_66D558: FLdRfVar var_B0
  loc_66D55B: ImpAdCallFPR4  = Trim()
  loc_66D560: FLdRfVar var_B0
  loc_66D563: LitVarStr var_C0, vbNullString
  loc_66D568: HardType
  loc_66D569: EqVarBool
  loc_66D56B: FFree1Ad var_8C
  loc_66D56E: FFreeVar var_A0 = ""
  loc_66D575: BranchF loc_66D5C2
  loc_66D578: LitVar_Missing var_B0
  loc_66D57B: LitVar_Missing var_A0
  loc_66D57E: FLdPr Me
  loc_66D581: MemLdRfVar from_stack_1.global_92
  loc_66D584: CVarRef
  loc_66D589: LitI4 &H40
  loc_66D58E: FLdPr Me
  loc_66D591: MemLdRfVar from_stack_1.global_96
  loc_66D594: CVarRef
  loc_66D599: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66D59E: FFreeVar var_A0 = ""
  loc_66D5A5: FLdPrThis
  loc_66D5A6: VCallAd Control_ID_txTitle
  loc_66D5A9: FStAdFunc var_8C
  loc_66D5AC: FLdPr var_8C
  loc_66D5AF: Me.SetFocus
  loc_66D5B4: FFree1Ad var_8C
  loc_66D5B7: LitI2_Byte 0
  loc_66D5B9: FStI2 var_86
  loc_66D5BC: ExitProcCbHresult
  loc_66D5C2: LitI2_Byte 1
  loc_66D5C4: FLdRfVar var_88
  loc_66D5C7: LitI2 250
  loc_66D5CA: ForI2 var_104
  loc_66D5D0: ImpAdLdRf MemVar_74C7B4
  loc_66D5D3: LitStr "titulo"
  loc_66D5D6: FStStrCopy var_10C
  loc_66D5D9: FLdRfVar var_10C
  loc_66D5DC: LitStr "Comando"
  loc_66D5DF: FLdI2 var_88
  loc_66D5E2: CStrUI1
  loc_66D5E4: FStStrNoPop var_90
  loc_66D5E7: ConcatStr
  loc_66D5E8: PopTmpLdAdStr
  loc_66D5EC: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_66D5F1: CVarStr var_A0
  loc_66D5F4: FLdRfVar var_B0
  loc_66D5F7: ImpAdCallFPR4  = Trim()
  loc_66D5FC: FLdRfVar var_B0
  loc_66D5FF: FLdRfVar var_D0
  loc_66D602: ImpAdCallFPR4  = Ucase()
  loc_66D607: FLdRfVar var_D0
  loc_66D60A: FLdRfVar var_110
  loc_66D60D: FLdPrThis
  loc_66D60E: VCallAd Control_ID_txTitle
  loc_66D611: FStAdFunc var_8C
  loc_66D614: FLdPr var_8C
  loc_66D617:  = Me.Text
  loc_66D61C: FLdZeroAd var_110
  loc_66D61F: CVarStr var_120
  loc_66D622: FLdRfVar var_130
  loc_66D625: ImpAdCallFPR4  = Trim()
  loc_66D62A: FLdRfVar var_130
  loc_66D62D: FLdRfVar var_140
  loc_66D630: ImpAdCallFPR4  = Ucase()
  loc_66D635: FLdRfVar var_140
  loc_66D638: EqVarBool
  loc_66D63A: FFreeStr var_90 = "": var_108 = ""
  loc_66D643: FFree1Ad var_8C
  loc_66D646: FFreeVar var_A0 = "": var_B0 = "": var_120 = "": var_130 = "": var_D0 = ""
  loc_66D655: BranchF loc_66D761
  loc_66D658: FLdPr Me
  loc_66D65B: MemLdRfVar from_stack_1.global_72
  loc_66D65E: CVarRef
  loc_66D663: FLdRfVar var_A0
  loc_66D666: ImpAdCallFPR4  = Trim()
  loc_66D66B: FLdRfVar var_A0
  loc_66D66E: FLdRfVar var_B0
  loc_66D671: ImpAdCallFPR4  = Ucase()
  loc_66D676: FLdRfVar var_B0
  loc_66D679: LitStr "Comando"
  loc_66D67C: FLdI2 var_88
  loc_66D67F: CStrUI1
  loc_66D681: FStStrNoPop var_90
  loc_66D684: ConcatStr
  loc_66D685: CVarStr var_D0
  loc_66D688: FLdRfVar var_120
  loc_66D68B: ImpAdCallFPR4  = Trim()
  loc_66D690: FLdRfVar var_120
  loc_66D693: FLdRfVar var_130
  loc_66D696: ImpAdCallFPR4  = Ucase()
  loc_66D69B: FLdRfVar var_130
  loc_66D69E: EqVar var_140
  loc_66D6A2: FLdPr Me
  loc_66D6A5: MemLdUI1 global_52
  loc_66D6A9: CI2UI1
  loc_66D6AB: LitI2_Byte 0
  loc_66D6AD: EqI2
  loc_66D6AE: CVarBoolI2 var_E0
  loc_66D6B2: AndVar var_150
  loc_66D6B6: CBoolVarNull
  loc_66D6B8: FFree1Str var_90
  loc_66D6BB: FFreeVar var_A0 = "": var_D0 = "": var_120 = "": var_B0 = "": var_130 = ""
  loc_66D6CA: BranchF loc_66D6D3
  loc_66D6CD: Branch loc_66D769
  loc_66D6D0: Branch loc_66D761
  loc_66D6D3: FLdRfVar var_108
  loc_66D6D6: LitVar_Missing var_1E8
  loc_66D6D9: LitVar_Missing var_1C8
  loc_66D6DC: LitVar_Missing var_1A8
  loc_66D6DF: LitVar_Missing var_150
  loc_66D6E2: LitVar_Missing var_140
  loc_66D6E5: LitVar_Missing var_130
  loc_66D6E8: LitVar_Missing var_120
  loc_66D6EB: LitVar_Missing var_D0
  loc_66D6EE: LitVar_Missing var_B0
  loc_66D6F1: LitVar_Missing var_A0
  loc_66D6F4: LitStr "Ya se encuentra un registro con el mismo nombre"
  loc_66D6F7: FStStrCopy var_90
  loc_66D6FA: FLdRfVar var_90
  loc_66D6FD: LitI4 3
  loc_66D702: PopTmpLdAdStr var_158
  loc_66D705: LitI2_Byte &H4F
  loc_66D707: PopTmpLdAd2 var_152
  loc_66D70A: ImpAdLdRf MemVar_74C7D0
  loc_66D70D: NewIfNullPr clsMsg
  loc_66D710: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66D715: LitVar_Missing var_248
  loc_66D718: LitVar_Missing var_228
  loc_66D71B: FLdPr Me
  loc_66D71E: MemLdRfVar from_stack_1.global_92
  loc_66D721: CVarRef
  loc_66D726: LitI4 &H40
  loc_66D72B: FLdZeroAd var_108
  loc_66D72E: CVarStr var_1F8
  loc_66D731: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66D736: FFree1Str var_90
  loc_66D739: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = "": var_228 = ""
  loc_66D756: LitI2_Byte 0
  loc_66D758: FStI2 var_86
  loc_66D75B: ExitProcCbHresult
  loc_66D761: FLdRfVar var_88
  loc_66D764: NextI2 var_104, loc_66D5D0
  loc_66D769: FLdRfVar var_90
  loc_66D76C: FLdPrThis
  loc_66D76D: VCallAd Control_ID_txPath
  loc_66D770: FStAdFunc var_8C
  loc_66D773: FLdPr var_8C
  loc_66D776:  = Me.Text
  loc_66D77B: FLdZeroAd var_90
  loc_66D77E: CVarStr var_A0
  loc_66D781: FLdRfVar var_B0
  loc_66D784: ImpAdCallFPR4  = Trim()
  loc_66D789: FLdRfVar var_B0
  loc_66D78C: LitVarStr var_C0, vbNullString
  loc_66D791: HardType
  loc_66D792: EqVarBool
  loc_66D794: FFree1Ad var_8C
  loc_66D797: FFreeVar var_A0 = ""
  loc_66D79E: BranchF loc_66D7EE
  loc_66D7A1: LitVar_Missing var_B0
  loc_66D7A4: LitVar_Missing var_A0
  loc_66D7A7: FLdPr Me
  loc_66D7AA: MemLdRfVar from_stack_1.global_92
  loc_66D7AD: CVarRef
  loc_66D7B2: LitI4 &H40
  loc_66D7B7: FLdPr Me
  loc_66D7BA: MemLdRfVar from_stack_1.global_96
  loc_66D7BD: CVarRef
  loc_66D7C2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66D7C7: FFreeVar var_A0 = ""
  loc_66D7CE: FLdPrThis
  loc_66D7CF: VCallAd Control_ID_txPath
  loc_66D7D2: FStAdFunc var_8C
  loc_66D7D5: FLdPr var_8C
  loc_66D7D8: Me.SetFocus
  loc_66D7DD: FFree1Ad var_8C
  loc_66D7E0: LitI2_Byte 0
  loc_66D7E2: FStI2 var_86
  loc_66D7E5: ExitProcCbHresult
  loc_66D7EB: Branch loc_66D8F5
  loc_66D7EE: FLdRfVar var_90
  loc_66D7F1: FLdPrThis
  loc_66D7F2: VCallAd Control_ID_cmbModo
  loc_66D7F5: FStAdFunc var_8C
  loc_66D7F8: FLdPr var_8C
  loc_66D7FB:  = Me.Text
  loc_66D800: FLdZeroAd var_90
  loc_66D803: CVarStr var_A0
  loc_66D806: FLdRfVar var_B0
  loc_66D809: ImpAdCallFPR4  = Trim()
  loc_66D80E: FLdRfVar var_B0
  loc_66D811: LitVarStr var_C0, vbNullString
  loc_66D816: HardType
  loc_66D817: EqVarBool
  loc_66D819: FFree1Ad var_8C
  loc_66D81C: FFreeVar var_A0 = ""
  loc_66D823: BranchF loc_66D873
  loc_66D826: LitVar_Missing var_B0
  loc_66D829: LitVar_Missing var_A0
  loc_66D82C: FLdPr Me
  loc_66D82F: MemLdRfVar from_stack_1.global_92
  loc_66D832: CVarRef
  loc_66D837: LitI4 &H40
  loc_66D83C: FLdPr Me
  loc_66D83F: MemLdRfVar from_stack_1.global_96
  loc_66D842: CVarRef
  loc_66D847: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66D84C: FFreeVar var_A0 = ""
  loc_66D853: FLdPrThis
  loc_66D854: VCallAd Control_ID_cmbModo
  loc_66D857: FStAdFunc var_8C
  loc_66D85A: FLdPr var_8C
  loc_66D85D: Me.SetFocus
  loc_66D862: FFree1Ad var_8C
  loc_66D865: LitI2_Byte 0
  loc_66D867: FStI2 var_86
  loc_66D86A: ExitProcCbHresult
  loc_66D870: Branch loc_66D8F5
  loc_66D873: FLdRfVar var_90
  loc_66D876: FLdPrThis
  loc_66D877: VCallAd Control_ID_cmbSeguridad
  loc_66D87A: FStAdFunc var_8C
  loc_66D87D: FLdPr var_8C
  loc_66D880:  = Me.Text
  loc_66D885: FLdZeroAd var_90
  loc_66D888: CVarStr var_A0
  loc_66D88B: FLdRfVar var_B0
  loc_66D88E: ImpAdCallFPR4  = Trim()
  loc_66D893: FLdRfVar var_B0
  loc_66D896: LitVarStr var_C0, vbNullString
  loc_66D89B: HardType
  loc_66D89C: EqVarBool
  loc_66D89E: FFree1Ad var_8C
  loc_66D8A1: FFreeVar var_A0 = ""
  loc_66D8A8: BranchF loc_66D8F5
  loc_66D8AB: LitVar_Missing var_B0
  loc_66D8AE: LitVar_Missing var_A0
  loc_66D8B1: FLdPr Me
  loc_66D8B4: MemLdRfVar from_stack_1.global_92
  loc_66D8B7: CVarRef
  loc_66D8BC: LitI4 &H40
  loc_66D8C1: FLdPr Me
  loc_66D8C4: MemLdRfVar from_stack_1.global_96
  loc_66D8C7: CVarRef
  loc_66D8CC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66D8D1: FFreeVar var_A0 = ""
  loc_66D8D8: FLdPrThis
  loc_66D8D9: VCallAd Control_ID_cmbSeguridad
  loc_66D8DC: FStAdFunc var_8C
  loc_66D8DF: FLdPr var_8C
  loc_66D8E2: Me.SetFocus
  loc_66D8E7: FFree1Ad var_8C
  loc_66D8EA: LitI2_Byte 0
  loc_66D8EC: FStI2 var_86
  loc_66D8EF: ExitProcCbHresult
  loc_66D8F5: LitI2_Byte &HFF
  loc_66D8F7: FStI2 var_86
  loc_66D8FA: ExitProcCbHresult
End Function

Private Function Proc_84_19_6B46FC() '6B46FC
  'Data Table: 43FE08
  loc_6B3F18: FLdRfVar var_1D4
  loc_6B3F1B: LitVar_Missing var_1D0
  loc_6B3F1E: LitVar_Missing var_1B0
  loc_6B3F21: LitVar_Missing var_190
  loc_6B3F24: LitVar_Missing var_170
  loc_6B3F27: LitVar_Missing var_150
  loc_6B3F2A: LitVar_Missing var_130
  loc_6B3F2D: LitVar_Missing var_110
  loc_6B3F30: LitVar_Missing var_F0
  loc_6B3F33: LitVar_Missing var_D0
  loc_6B3F36: LitVar_Missing var_B0
  loc_6B3F39: LitStr "Ruta"
  loc_6B3F3C: FStStrCopy var_90
  loc_6B3F3F: FLdRfVar var_90
  loc_6B3F42: LitI4 &HA
  loc_6B3F47: PopTmpLdAdStr var_8C
  loc_6B3F4A: LitI2_Byte &H4F
  loc_6B3F4C: PopTmpLdAd2 var_86
  loc_6B3F4F: ImpAdLdRf MemVar_74C7D0
  loc_6B3F52: NewIfNullPr clsMsg
  loc_6B3F55: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B3F5A: ILdRf var_1D4
  loc_6B3F5D: FLdPrThis
  loc_6B3F5E: VCallAd Control_ID_lbPath
  loc_6B3F61: FStAdFunc var_1D8
  loc_6B3F64: FLdPr var_1D8
  loc_6B3F67: Me.Caption = from_stack_1
  loc_6B3F6C: FFreeStr var_90 = ""
  loc_6B3F73: FFree1Ad var_1D8
  loc_6B3F76: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B3F8D: FLdRfVar var_1D4
  loc_6B3F90: LitVar_Missing var_1D0
  loc_6B3F93: LitVar_Missing var_1B0
  loc_6B3F96: LitVar_Missing var_190
  loc_6B3F99: LitVar_Missing var_170
  loc_6B3F9C: LitVar_Missing var_150
  loc_6B3F9F: LitVar_Missing var_130
  loc_6B3FA2: LitVar_Missing var_110
  loc_6B3FA5: LitVar_Missing var_F0
  loc_6B3FA8: LitVar_Missing var_D0
  loc_6B3FAB: LitVar_Missing var_B0
  loc_6B3FAE: LitStr "Título"
  loc_6B3FB1: FStStrCopy var_90
  loc_6B3FB4: FLdRfVar var_90
  loc_6B3FB7: LitI4 &HB
  loc_6B3FBC: PopTmpLdAdStr var_8C
  loc_6B3FBF: LitI2_Byte &H4F
  loc_6B3FC1: PopTmpLdAd2 var_86
  loc_6B3FC4: ImpAdLdRf MemVar_74C7D0
  loc_6B3FC7: NewIfNullPr clsMsg
  loc_6B3FCA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B3FCF: ILdRf var_1D4
  loc_6B3FD2: FLdPrThis
  loc_6B3FD3: VCallAd Control_ID_lbtitulo
  loc_6B3FD6: FStAdFunc var_1D8
  loc_6B3FD9: FLdPr var_1D8
  loc_6B3FDC: Me.Caption = from_stack_1
  loc_6B3FE1: FFreeStr var_90 = ""
  loc_6B3FE8: FFree1Ad var_1D8
  loc_6B3FEB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4002: FLdRfVar var_1D4
  loc_6B4005: LitVar_Missing var_1D0
  loc_6B4008: LitVar_Missing var_1B0
  loc_6B400B: LitVar_Missing var_190
  loc_6B400E: LitVar_Missing var_170
  loc_6B4011: LitVar_Missing var_150
  loc_6B4014: LitVar_Missing var_130
  loc_6B4017: LitVar_Missing var_110
  loc_6B401A: LitVar_Missing var_F0
  loc_6B401D: LitVar_Missing var_D0
  loc_6B4020: LitVar_Missing var_B0
  loc_6B4023: LitStr "Seguridad"
  loc_6B4026: FStStrCopy var_90
  loc_6B4029: FLdRfVar var_90
  loc_6B402C: LitI4 &HC
  loc_6B4031: PopTmpLdAdStr var_8C
  loc_6B4034: LitI2_Byte &H4F
  loc_6B4036: PopTmpLdAd2 var_86
  loc_6B4039: ImpAdLdRf MemVar_74C7D0
  loc_6B403C: NewIfNullPr clsMsg
  loc_6B403F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4044: ILdRf var_1D4
  loc_6B4047: FLdPrThis
  loc_6B4048: VCallAd Control_ID_lbSeguridad
  loc_6B404B: FStAdFunc var_1D8
  loc_6B404E: FLdPr var_1D8
  loc_6B4051: Me.Caption = from_stack_1
  loc_6B4056: FFreeStr var_90 = ""
  loc_6B405D: FFree1Ad var_1D8
  loc_6B4060: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4077: FLdRfVar var_1D4
  loc_6B407A: LitVar_Missing var_1D0
  loc_6B407D: LitVar_Missing var_1B0
  loc_6B4080: LitVar_Missing var_190
  loc_6B4083: LitVar_Missing var_170
  loc_6B4086: LitVar_Missing var_150
  loc_6B4089: LitVar_Missing var_130
  loc_6B408C: LitVar_Missing var_110
  loc_6B408F: LitVar_Missing var_F0
  loc_6B4092: LitVar_Missing var_D0
  loc_6B4095: LitVar_Missing var_B0
  loc_6B4098: LitStr "Modo"
  loc_6B409B: FStStrCopy var_90
  loc_6B409E: FLdRfVar var_90
  loc_6B40A1: LitI4 &HD
  loc_6B40A6: PopTmpLdAdStr var_8C
  loc_6B40A9: LitI2_Byte &H4F
  loc_6B40AB: PopTmpLdAd2 var_86
  loc_6B40AE: ImpAdLdRf MemVar_74C7D0
  loc_6B40B1: NewIfNullPr clsMsg
  loc_6B40B4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B40B9: ILdRf var_1D4
  loc_6B40BC: FLdPrThis
  loc_6B40BD: VCallAd Control_ID_lbModo
  loc_6B40C0: FStAdFunc var_1D8
  loc_6B40C3: FLdPr var_1D8
  loc_6B40C6: Me.Caption = from_stack_1
  loc_6B40CB: FFreeStr var_90 = ""
  loc_6B40D2: FFree1Ad var_1D8
  loc_6B40D5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B40EC: FLdRfVar var_1D4
  loc_6B40EF: LitVar_Missing var_1D0
  loc_6B40F2: LitVar_Missing var_1B0
  loc_6B40F5: LitVar_Missing var_190
  loc_6B40F8: LitVar_Missing var_170
  loc_6B40FB: LitVar_Missing var_150
  loc_6B40FE: LitVar_Missing var_130
  loc_6B4101: LitVar_Missing var_110
  loc_6B4104: LitVar_Missing var_F0
  loc_6B4107: LitVar_Missing var_D0
  loc_6B410A: LitVar_Missing var_B0
  loc_6B410D: LitStr "Aplicaciones"
  loc_6B4110: FStStrCopy var_90
  loc_6B4113: FLdRfVar var_90
  loc_6B4116: LitI4 &HE
  loc_6B411B: PopTmpLdAdStr var_8C
  loc_6B411E: LitI2_Byte &H4F
  loc_6B4120: PopTmpLdAd2 var_86
  loc_6B4123: ImpAdLdRf MemVar_74C7D0
  loc_6B4126: NewIfNullPr clsMsg
  loc_6B4129: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B412E: ILdRf var_1D4
  loc_6B4131: FLdPr Me
  loc_6B4134: Me.Caption = from_stack_1
  loc_6B4139: FFreeStr var_90 = ""
  loc_6B4140: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4157: FLdRfVar var_1D4
  loc_6B415A: LitVar_Missing var_1D0
  loc_6B415D: LitVar_Missing var_1B0
  loc_6B4160: LitVar_Missing var_190
  loc_6B4163: LitVar_Missing var_170
  loc_6B4166: LitVar_Missing var_150
  loc_6B4169: LitVar_Missing var_130
  loc_6B416C: LitVar_Missing var_110
  loc_6B416F: LitVar_Missing var_F0
  loc_6B4172: LitVar_Missing var_D0
  loc_6B4175: LitVar_Missing var_B0
  loc_6B4178: LitStr "Guardar"
  loc_6B417B: FStStrCopy var_90
  loc_6B417E: FLdRfVar var_90
  loc_6B4181: LitI4 &HF
  loc_6B4186: PopTmpLdAdStr var_8C
  loc_6B4189: LitI2_Byte &H4F
  loc_6B418B: PopTmpLdAd2 var_86
  loc_6B418E: ImpAdLdRf MemVar_74C7D0
  loc_6B4191: NewIfNullPr clsMsg
  loc_6B4194: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4199: ILdRf var_1D4
  loc_6B419C: FLdPrThis
  loc_6B419D: VCallAd Control_ID_cmdAgregar
  loc_6B41A0: FStAdFunc var_1D8
  loc_6B41A3: FLdPr var_1D8
  loc_6B41A6: Me.Caption = from_stack_1
  loc_6B41AB: FFreeStr var_90 = ""
  loc_6B41B2: FFree1Ad var_1D8
  loc_6B41B5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B41CC: FLdRfVar var_1D4
  loc_6B41CF: LitVar_Missing var_1D0
  loc_6B41D2: LitVar_Missing var_1B0
  loc_6B41D5: LitVar_Missing var_190
  loc_6B41D8: LitVar_Missing var_170
  loc_6B41DB: LitVar_Missing var_150
  loc_6B41DE: LitVar_Missing var_130
  loc_6B41E1: LitVar_Missing var_110
  loc_6B41E4: LitVar_Missing var_F0
  loc_6B41E7: LitVar_Missing var_D0
  loc_6B41EA: LitVar_Missing var_B0
  loc_6B41ED: LitStr "Configuración"
  loc_6B41F0: FStStrCopy var_90
  loc_6B41F3: FLdRfVar var_90
  loc_6B41F6: LitI4 &H10
  loc_6B41FB: PopTmpLdAdStr var_8C
  loc_6B41FE: LitI2_Byte &H4F
  loc_6B4200: PopTmpLdAd2 var_86
  loc_6B4203: ImpAdLdRf MemVar_74C7D0
  loc_6B4206: NewIfNullPr clsMsg
  loc_6B4209: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B420E: ILdRf var_1D4
  loc_6B4211: FLdPrThis
  loc_6B4212: VCallAd Control_ID_FrameDetail
  loc_6B4215: FStAdFunc var_1D8
  loc_6B4218: FLdPr var_1D8
  loc_6B421B: Me.Caption = from_stack_1
  loc_6B4220: FFreeStr var_90 = ""
  loc_6B4227: FFree1Ad var_1D8
  loc_6B422A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4241: FLdRfVar var_1D4
  loc_6B4244: LitVar_Missing var_1D0
  loc_6B4247: LitVar_Missing var_1B0
  loc_6B424A: LitVar_Missing var_190
  loc_6B424D: LitVar_Missing var_170
  loc_6B4250: LitVar_Missing var_150
  loc_6B4253: LitVar_Missing var_130
  loc_6B4256: LitVar_Missing var_110
  loc_6B4259: LitVar_Missing var_F0
  loc_6B425C: LitVar_Missing var_D0
  loc_6B425F: LitVar_Missing var_B0
  loc_6B4262: LitStr "Seleccione algún elemento del árbol para editar o click en nuevo para crear una nueva sección"
  loc_6B4265: FStStrCopy var_90
  loc_6B4268: FLdRfVar var_90
  loc_6B426B: LitI4 &H11
  loc_6B4270: PopTmpLdAdStr var_8C
  loc_6B4273: LitI2_Byte &H4F
  loc_6B4275: PopTmpLdAd2 var_86
  loc_6B4278: ImpAdLdRf MemVar_74C7D0
  loc_6B427B: NewIfNullPr clsMsg
  loc_6B427E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4283: ILdRf var_1D4
  loc_6B4286: FLdPrThis
  loc_6B4287: VCallAd Control_ID_lbBack
  loc_6B428A: FStAdFunc var_1D8
  loc_6B428D: FLdPr var_1D8
  loc_6B4290: Me.Caption = from_stack_1
  loc_6B4295: FFreeStr var_90 = ""
  loc_6B429C: FFree1Ad var_1D8
  loc_6B429F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B42B6: FLdRfVar var_1D4
  loc_6B42B9: LitVar_Missing var_1D0
  loc_6B42BC: LitVar_Missing var_1B0
  loc_6B42BF: LitVar_Missing var_190
  loc_6B42C2: LitVar_Missing var_170
  loc_6B42C5: LitVar_Missing var_150
  loc_6B42C8: LitVar_Missing var_130
  loc_6B42CB: LitVar_Missing var_110
  loc_6B42CE: LitVar_Missing var_F0
  loc_6B42D1: LitVar_Missing var_D0
  loc_6B42D4: LitVar_Missing var_B0
  loc_6B42D7: LitStr "&Nuevo"
  loc_6B42DA: FStStrCopy var_90
  loc_6B42DD: FLdRfVar var_90
  loc_6B42E0: LitI4 &H12
  loc_6B42E5: PopTmpLdAdStr var_8C
  loc_6B42E8: LitI2_Byte &H4F
  loc_6B42EA: PopTmpLdAd2 var_86
  loc_6B42ED: ImpAdLdRf MemVar_74C7D0
  loc_6B42F0: NewIfNullPr clsMsg
  loc_6B42F3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B42F8: ILdRf var_1D4
  loc_6B42FB: FLdPrThis
  loc_6B42FC: VCallAd Control_ID_cmdNew
  loc_6B42FF: FStAdFunc var_1D8
  loc_6B4302: FLdPr var_1D8
  loc_6B4305: Me.Caption = from_stack_1
  loc_6B430A: FFreeStr var_90 = ""
  loc_6B4311: FFree1Ad var_1D8
  loc_6B4314: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B432B: FLdRfVar var_1D4
  loc_6B432E: LitVar_Missing var_1D0
  loc_6B4331: LitVar_Missing var_1B0
  loc_6B4334: LitVar_Missing var_190
  loc_6B4337: LitVar_Missing var_170
  loc_6B433A: LitVar_Missing var_150
  loc_6B433D: LitVar_Missing var_130
  loc_6B4340: LitVar_Missing var_110
  loc_6B4343: LitVar_Missing var_F0
  loc_6B4346: LitVar_Missing var_D0
  loc_6B4349: LitVar_Missing var_B0
  loc_6B434C: LitStr "    &Eliminar             Nodo"
  loc_6B434F: FStStrCopy var_90
  loc_6B4352: FLdRfVar var_90
  loc_6B4355: LitI4 &H13
  loc_6B435A: PopTmpLdAdStr var_8C
  loc_6B435D: LitI2_Byte &H4F
  loc_6B435F: PopTmpLdAd2 var_86
  loc_6B4362: ImpAdLdRf MemVar_74C7D0
  loc_6B4365: NewIfNullPr clsMsg
  loc_6B4368: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B436D: ILdRf var_1D4
  loc_6B4370: FLdPrThis
  loc_6B4371: VCallAd Control_ID_cmdBorrar
  loc_6B4374: FStAdFunc var_1D8
  loc_6B4377: FLdPr var_1D8
  loc_6B437A: Me.Caption = from_stack_1
  loc_6B437F: FFreeStr var_90 = ""
  loc_6B4386: FFree1Ad var_1D8
  loc_6B4389: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B43A0: FLdRfVar var_1D4
  loc_6B43A3: LitVar_Missing var_1D0
  loc_6B43A6: LitVar_Missing var_1B0
  loc_6B43A9: LitVar_Missing var_190
  loc_6B43AC: LitVar_Missing var_170
  loc_6B43AF: LitVar_Missing var_150
  loc_6B43B2: LitVar_Missing var_130
  loc_6B43B5: LitVar_Missing var_110
  loc_6B43B8: LitVar_Missing var_F0
  loc_6B43BB: LitVar_Missing var_D0
  loc_6B43BE: LitVar_Missing var_B0
  loc_6B43C1: LitStr "&Salir"
  loc_6B43C4: FStStrCopy var_90
  loc_6B43C7: FLdRfVar var_90
  loc_6B43CA: LitI4 &H14
  loc_6B43CF: PopTmpLdAdStr var_8C
  loc_6B43D2: LitI2_Byte &H4F
  loc_6B43D4: PopTmpLdAd2 var_86
  loc_6B43D7: ImpAdLdRf MemVar_74C7D0
  loc_6B43DA: NewIfNullPr clsMsg
  loc_6B43DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B43E2: ILdRf var_1D4
  loc_6B43E5: FLdPrThis
  loc_6B43E6: VCallAd Control_ID_cmdCancelar
  loc_6B43E9: FStAdFunc var_1D8
  loc_6B43EC: FLdPr var_1D8
  loc_6B43EF: Me.Caption = from_stack_1
  loc_6B43F4: FFreeStr var_90 = ""
  loc_6B43FB: FFree1Ad var_1D8
  loc_6B43FE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4415: FLdRfVar var_1D4
  loc_6B4418: LitVar_Missing var_1D0
  loc_6B441B: LitVar_Missing var_1B0
  loc_6B441E: LitVar_Missing var_190
  loc_6B4421: LitVar_Missing var_170
  loc_6B4424: LitVar_Missing var_150
  loc_6B4427: LitVar_Missing var_130
  loc_6B442A: LitVar_Missing var_110
  loc_6B442D: LitVar_Missing var_F0
  loc_6B4430: LitVar_Missing var_D0
  loc_6B4433: LitVar_Missing var_B0
  loc_6B4436: LitStr "Aviso"
  loc_6B4439: FStStrCopy var_90
  loc_6B443C: FLdRfVar var_90
  loc_6B443F: LitI4 &H15
  loc_6B4444: PopTmpLdAdStr var_8C
  loc_6B4447: LitI2_Byte &H4F
  loc_6B4449: PopTmpLdAd2 var_86
  loc_6B444C: ImpAdLdRf MemVar_74C7D0
  loc_6B444F: NewIfNullPr clsMsg
  loc_6B4452: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4457: ILdRf var_1D4
  loc_6B445A: FLdPr Me
  loc_6B445D: MemStStrCopy
  loc_6B4461: FFreeStr var_90 = ""
  loc_6B4468: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B447F: FLdRfVar var_1D4
  loc_6B4482: LitVar_Missing var_1D0
  loc_6B4485: LitVar_Missing var_1B0
  loc_6B4488: LitVar_Missing var_190
  loc_6B448B: LitVar_Missing var_170
  loc_6B448E: LitVar_Missing var_150
  loc_6B4491: LitVar_Missing var_130
  loc_6B4494: LitVar_Missing var_110
  loc_6B4497: LitVar_Missing var_F0
  loc_6B449A: LitVar_Missing var_D0
  loc_6B449D: LitVar_Missing var_B0
  loc_6B44A0: LitStr "Debe completar todos los campos"
  loc_6B44A3: FStStrCopy var_90
  loc_6B44A6: FLdRfVar var_90
  loc_6B44A9: LitI4 &H16
  loc_6B44AE: PopTmpLdAdStr var_8C
  loc_6B44B1: LitI2_Byte &H4F
  loc_6B44B3: PopTmpLdAd2 var_86
  loc_6B44B6: ImpAdLdRf MemVar_74C7D0
  loc_6B44B9: NewIfNullPr clsMsg
  loc_6B44BC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B44C1: ILdRf var_1D4
  loc_6B44C4: FLdPr Me
  loc_6B44C7: MemStStrCopy
  loc_6B44CB: FFreeStr var_90 = ""
  loc_6B44D2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B44E9: FLdRfVar var_1D4
  loc_6B44EC: LitVar_Missing var_1D0
  loc_6B44EF: LitVar_Missing var_1B0
  loc_6B44F2: LitVar_Missing var_190
  loc_6B44F5: LitVar_Missing var_170
  loc_6B44F8: LitVar_Missing var_150
  loc_6B44FB: LitVar_Missing var_130
  loc_6B44FE: LitVar_Missing var_110
  loc_6B4501: LitVar_Missing var_F0
  loc_6B4504: LitVar_Missing var_D0
  loc_6B4507: LitVar_Missing var_B0
  loc_6B450A: LitStr "Oculta"
  loc_6B450D: FStStrCopy var_90
  loc_6B4510: FLdRfVar var_90
  loc_6B4513: LitI4 &H17
  loc_6B4518: PopTmpLdAdStr var_8C
  loc_6B451B: LitI2_Byte &H4F
  loc_6B451D: PopTmpLdAd2 var_86
  loc_6B4520: ImpAdLdRf MemVar_74C7D0
  loc_6B4523: NewIfNullPr clsMsg
  loc_6B4526: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B452B: ILdRf var_1D4
  loc_6B452E: FLdPr Me
  loc_6B4531: MemStStrCopy
  loc_6B4535: FFreeStr var_90 = ""
  loc_6B453C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4553: FLdRfVar var_1D4
  loc_6B4556: LitVar_Missing var_1D0
  loc_6B4559: LitVar_Missing var_1B0
  loc_6B455C: LitVar_Missing var_190
  loc_6B455F: LitVar_Missing var_170
  loc_6B4562: LitVar_Missing var_150
  loc_6B4565: LitVar_Missing var_130
  loc_6B4568: LitVar_Missing var_110
  loc_6B456B: LitVar_Missing var_F0
  loc_6B456E: LitVar_Missing var_D0
  loc_6B4571: LitVar_Missing var_B0
  loc_6B4574: LitStr "Foco Normal"
  loc_6B4577: FStStrCopy var_90
  loc_6B457A: FLdRfVar var_90
  loc_6B457D: LitI4 &H18
  loc_6B4582: PopTmpLdAdStr var_8C
  loc_6B4585: LitI2_Byte &H4F
  loc_6B4587: PopTmpLdAd2 var_86
  loc_6B458A: ImpAdLdRf MemVar_74C7D0
  loc_6B458D: NewIfNullPr clsMsg
  loc_6B4590: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4595: ILdRf var_1D4
  loc_6B4598: FLdPr Me
  loc_6B459B: MemStStrCopy
  loc_6B459F: FFreeStr var_90 = ""
  loc_6B45A6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B45BD: FLdRfVar var_1D4
  loc_6B45C0: LitVar_Missing var_1D0
  loc_6B45C3: LitVar_Missing var_1B0
  loc_6B45C6: LitVar_Missing var_190
  loc_6B45C9: LitVar_Missing var_170
  loc_6B45CC: LitVar_Missing var_150
  loc_6B45CF: LitVar_Missing var_130
  loc_6B45D2: LitVar_Missing var_110
  loc_6B45D5: LitVar_Missing var_F0
  loc_6B45D8: LitVar_Missing var_D0
  loc_6B45DB: LitVar_Missing var_B0
  loc_6B45DE: LitStr "Foco Minimizado"
  loc_6B45E1: FStStrCopy var_90
  loc_6B45E4: FLdRfVar var_90
  loc_6B45E7: LitI4 &H19
  loc_6B45EC: PopTmpLdAdStr var_8C
  loc_6B45EF: LitI2_Byte &H4F
  loc_6B45F1: PopTmpLdAd2 var_86
  loc_6B45F4: ImpAdLdRf MemVar_74C7D0
  loc_6B45F7: NewIfNullPr clsMsg
  loc_6B45FA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B45FF: ILdRf var_1D4
  loc_6B4602: FLdPr Me
  loc_6B4605: MemStStrCopy
  loc_6B4609: FFreeStr var_90 = ""
  loc_6B4610: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4627: FLdRfVar var_1D4
  loc_6B462A: LitVar_Missing var_1D0
  loc_6B462D: LitVar_Missing var_1B0
  loc_6B4630: LitVar_Missing var_190
  loc_6B4633: LitVar_Missing var_170
  loc_6B4636: LitVar_Missing var_150
  loc_6B4639: LitVar_Missing var_130
  loc_6B463C: LitVar_Missing var_110
  loc_6B463F: LitVar_Missing var_F0
  loc_6B4642: LitVar_Missing var_D0
  loc_6B4645: LitVar_Missing var_B0
  loc_6B4648: LitStr "Foco Maximizado"
  loc_6B464B: FStStrCopy var_90
  loc_6B464E: FLdRfVar var_90
  loc_6B4651: LitI4 &H1A
  loc_6B4656: PopTmpLdAdStr var_8C
  loc_6B4659: LitI2_Byte &H4F
  loc_6B465B: PopTmpLdAd2 var_86
  loc_6B465E: ImpAdLdRf MemVar_74C7D0
  loc_6B4661: NewIfNullPr clsMsg
  loc_6B4664: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B4669: ILdRf var_1D4
  loc_6B466C: FLdPr Me
  loc_6B466F: MemStStrCopy
  loc_6B4673: FFreeStr var_90 = ""
  loc_6B467A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B4691: FLdRfVar var_1D4
  loc_6B4694: LitVar_Missing var_1D0
  loc_6B4697: LitVar_Missing var_1B0
  loc_6B469A: LitVar_Missing var_190
  loc_6B469D: LitVar_Missing var_170
  loc_6B46A0: LitVar_Missing var_150
  loc_6B46A3: LitVar_Missing var_130
  loc_6B46A6: LitVar_Missing var_110
  loc_6B46A9: LitVar_Missing var_F0
  loc_6B46AC: LitVar_Missing var_D0
  loc_6B46AF: LitVar_Missing var_B0
  loc_6B46B2: LitStr "Normal sin foco"
  loc_6B46B5: FStStrCopy var_90
  loc_6B46B8: FLdRfVar var_90
  loc_6B46BB: LitI4 &H1B
  loc_6B46C0: PopTmpLdAdStr var_8C
  loc_6B46C3: LitI2_Byte &H4F
  loc_6B46C5: PopTmpLdAd2 var_86
  loc_6B46C8: ImpAdLdRf MemVar_74C7D0
  loc_6B46CB: NewIfNullPr clsMsg
  loc_6B46CE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B46D3: ILdRf var_1D4
  loc_6B46D6: FLdPr Me
  loc_6B46D9: MemStStrCopy
  loc_6B46DD: FFreeStr var_90 = ""
  loc_6B46E4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6B46FB: ExitProcHresult
End Function

Private Function Proc_84_20_6430AC() '6430AC
  'Data Table: 43FE08
  loc_642E50: LitVarI2 var_B4, 1
  loc_642E55: LitI4 4
  loc_642E5A: ImpAdLdRf MemVar_74BEAC
  loc_642E5D: CVarRef
  loc_642E62: FLdRfVar var_C4
  loc_642E65: ImpAdCallFPR4  = Mid(, , )
  loc_642E6A: FLdRfVar var_C4
  loc_642E6D: LitVarStr var_D4, "1"
  loc_642E72: HardType
  loc_642E73: EqVarBool
  loc_642E75: FFreeVar var_B4 = ""
  loc_642E7C: BranchF loc_642FFF
  loc_642E7F: FLdRfVar var_E6
  loc_642E82: ImpAdLdRf MemVar_74A218
  loc_642E85: NewIfNullPr clsUsers
  loc_642E8D: FLdI2 var_E6
  loc_642E90: LitI2_Byte 6
  loc_642E92: EqI2
  loc_642E93: NotI4
  loc_642E94: BranchF loc_642F46
  loc_642E97: ImpAdLdPr unk_43FE0A
  loc_642E9A: MemLdI2 global_4
  loc_642E9D: LitI2_Byte 4
  loc_642E9F: NeI2
  loc_642EA0: BranchF loc_642F43
  loc_642EA3: LitI2_Byte 0
  loc_642EA5: FLdPrThis
  loc_642EA6: VCallAd Control_ID_lbPath
  loc_642EA9: FStAdFunc var_EC
  loc_642EAC: FLdPr var_EC
  loc_642EAF: Me.Visible = from_stack_1b
  loc_642EB4: FFree1Ad var_EC
  loc_642EB7: LitI2_Byte 0
  loc_642EB9: FLdPrThis
  loc_642EBA: VCallAd Control_ID_txPath
  loc_642EBD: FStAdFunc var_EC
  loc_642EC0: FLdPr var_EC
  loc_642EC3: Me.Visible = from_stack_1b
  loc_642EC8: FFree1Ad var_EC
  loc_642ECB: LitI2_Byte 0
  loc_642ECD: FLdPrThis
  loc_642ECE: VCallAd Control_ID_txTitle
  loc_642ED1: FStAdFunc var_EC
  loc_642ED4: FLdPr var_EC
  loc_642ED7: Me.Enabled = from_stack_1b
  loc_642EDC: FFree1Ad var_EC
  loc_642EDF: LitI2_Byte 0
  loc_642EE1: FLdPrThis
  loc_642EE2: VCallAd Control_ID_lbModo
  loc_642EE5: FStAdFunc var_EC
  loc_642EE8: FLdPr var_EC
  loc_642EEB: Me.Visible = from_stack_1b
  loc_642EF0: FFree1Ad var_EC
  loc_642EF3: LitI2_Byte 0
  loc_642EF5: FLdPrThis
  loc_642EF6: VCallAd Control_ID_cmbModo
  loc_642EF9: FStAdFunc var_EC
  loc_642EFC: FLdPr var_EC
  loc_642EFF: Me.Visible = from_stack_1b
  loc_642F04: FFree1Ad var_EC
  loc_642F07: LitI2_Byte 0
  loc_642F09: FLdPrThis
  loc_642F0A: VCallAd Control_ID_cmdNew
  loc_642F0D: FStAdFunc var_EC
  loc_642F10: FLdPr var_EC
  loc_642F13: Me.Enabled = from_stack_1b
  loc_642F18: FFree1Ad var_EC
  loc_642F1B: LitI2_Byte 0
  loc_642F1D: FLdPrThis
  loc_642F1E: VCallAd Control_ID_cmdBorrar
  loc_642F21: FStAdFunc var_EC
  loc_642F24: FLdPr var_EC
  loc_642F27: Me.Enabled = from_stack_1b
  loc_642F2C: FFree1Ad var_EC
  loc_642F2F: LitI2_Byte 0
  loc_642F31: FLdPrThis
  loc_642F32: VCallAd Control_ID_cmdPath
  loc_642F35: FStAdFunc var_EC
  loc_642F38: FLdPr var_EC
  loc_642F3B: Me.Visible = from_stack_1b
  loc_642F40: FFree1Ad var_EC
  loc_642F43: Branch loc_642FFC
  loc_642F46: ImpAdLdPr unk_43FE0A
  loc_642F49: MemLdI2 global_4
  loc_642F4C: LitI2_Byte 6
  loc_642F4E: NeI2
  loc_642F4F: ImpAdLdPr unk_43FE0A
  loc_642F52: MemLdI2 global_4
  loc_642F55: LitI2_Byte 5
  loc_642F57: NeI2
  loc_642F58: AndI4
  loc_642F59: BranchF loc_642FFC
  loc_642F5C: LitI2_Byte 0
  loc_642F5E: FLdPrThis
  loc_642F5F: VCallAd Control_ID_lbPath
  loc_642F62: FStAdFunc var_EC
  loc_642F65: FLdPr var_EC
  loc_642F68: Me.Visible = from_stack_1b
  loc_642F6D: FFree1Ad var_EC
  loc_642F70: LitI2_Byte 0
  loc_642F72: FLdPrThis
  loc_642F73: VCallAd Control_ID_txPath
  loc_642F76: FStAdFunc var_EC
  loc_642F79: FLdPr var_EC
  loc_642F7C: Me.Visible = from_stack_1b
  loc_642F81: FFree1Ad var_EC
  loc_642F84: LitI2_Byte 0
  loc_642F86: FLdPrThis
  loc_642F87: VCallAd Control_ID_txTitle
  loc_642F8A: FStAdFunc var_EC
  loc_642F8D: FLdPr var_EC
  loc_642F90: Me.Enabled = from_stack_1b
  loc_642F95: FFree1Ad var_EC
  loc_642F98: LitI2_Byte 0
  loc_642F9A: FLdPrThis
  loc_642F9B: VCallAd Control_ID_lbModo
  loc_642F9E: FStAdFunc var_EC
  loc_642FA1: FLdPr var_EC
  loc_642FA4: Me.Visible = from_stack_1b
  loc_642FA9: FFree1Ad var_EC
  loc_642FAC: LitI2_Byte 0
  loc_642FAE: FLdPrThis
  loc_642FAF: VCallAd Control_ID_cmbModo
  loc_642FB2: FStAdFunc var_EC
  loc_642FB5: FLdPr var_EC
  loc_642FB8: Me.Visible = from_stack_1b
  loc_642FBD: FFree1Ad var_EC
  loc_642FC0: LitI2_Byte 0
  loc_642FC2: FLdPrThis
  loc_642FC3: VCallAd Control_ID_cmdNew
  loc_642FC6: FStAdFunc var_EC
  loc_642FC9: FLdPr var_EC
  loc_642FCC: Me.Enabled = from_stack_1b
  loc_642FD1: FFree1Ad var_EC
  loc_642FD4: LitI2_Byte 0
  loc_642FD6: FLdPrThis
  loc_642FD7: VCallAd Control_ID_cmdBorrar
  loc_642FDA: FStAdFunc var_EC
  loc_642FDD: FLdPr var_EC
  loc_642FE0: Me.Enabled = from_stack_1b
  loc_642FE5: FFree1Ad var_EC
  loc_642FE8: LitI2_Byte 0
  loc_642FEA: FLdPrThis
  loc_642FEB: VCallAd Control_ID_cmdPath
  loc_642FEE: FStAdFunc var_EC
  loc_642FF1: FLdPr var_EC
  loc_642FF4: Me.Visible = from_stack_1b
  loc_642FF9: FFree1Ad var_EC
  loc_642FFC: Branch loc_6430AB
  loc_642FFF: ImpAdLdPr unk_43FE0A
  loc_643002: MemLdI2 global_4
  loc_643005: LitI2_Byte &HA
  loc_643007: NeI2
  loc_643008: BranchF loc_6430AB
  loc_64300B: LitI2_Byte 0
  loc_64300D: FLdPrThis
  loc_64300E: VCallAd Control_ID_lbPath
  loc_643011: FStAdFunc var_EC
  loc_643014: FLdPr var_EC
  loc_643017: Me.Visible = from_stack_1b
  loc_64301C: FFree1Ad var_EC
  loc_64301F: LitI2_Byte 0
  loc_643021: FLdPrThis
  loc_643022: VCallAd Control_ID_txPath
  loc_643025: FStAdFunc var_EC
  loc_643028: FLdPr var_EC
  loc_64302B: Me.Visible = from_stack_1b
  loc_643030: FFree1Ad var_EC
  loc_643033: LitI2_Byte 0
  loc_643035: FLdPrThis
  loc_643036: VCallAd Control_ID_txTitle
  loc_643039: FStAdFunc var_EC
  loc_64303C: FLdPr var_EC
  loc_64303F: Me.Enabled = from_stack_1b
  loc_643044: FFree1Ad var_EC
  loc_643047: LitI2_Byte 0
  loc_643049: FLdPrThis
  loc_64304A: VCallAd Control_ID_lbModo
  loc_64304D: FStAdFunc var_EC
  loc_643050: FLdPr var_EC
  loc_643053: Me.Visible = from_stack_1b
  loc_643058: FFree1Ad var_EC
  loc_64305B: LitI2_Byte 0
  loc_64305D: FLdPrThis
  loc_64305E: VCallAd Control_ID_cmbModo
  loc_643061: FStAdFunc var_EC
  loc_643064: FLdPr var_EC
  loc_643067: Me.Visible = from_stack_1b
  loc_64306C: FFree1Ad var_EC
  loc_64306F: LitI2_Byte 0
  loc_643071: FLdPrThis
  loc_643072: VCallAd Control_ID_cmdNew
  loc_643075: FStAdFunc var_EC
  loc_643078: FLdPr var_EC
  loc_64307B: Me.Enabled = from_stack_1b
  loc_643080: FFree1Ad var_EC
  loc_643083: LitI2_Byte 0
  loc_643085: FLdPrThis
  loc_643086: VCallAd Control_ID_cmdBorrar
  loc_643089: FStAdFunc var_EC
  loc_64308C: FLdPr var_EC
  loc_64308F: Me.Enabled = from_stack_1b
  loc_643094: FFree1Ad var_EC
  loc_643097: LitI2_Byte 0
  loc_643099: FLdPrThis
  loc_64309A: VCallAd Control_ID_cmdPath
  loc_64309D: FStAdFunc var_EC
  loc_6430A0: FLdPr var_EC
  loc_6430A3: Me.Visible = from_stack_1b
  loc_6430A8: FFree1Ad var_EC
  loc_6430AB: ExitProcHresult
End Function

Private Function Proc_84_21_5DD97C() '5DD97C
  'Data Table: 43FE08
  loc_5DD93C: FLdRfVar var_8C
  loc_5DD93F: FLdPrThis
  loc_5DD940: VCallAd Control_ID_FrameDetail
  loc_5DD943: FStAdFunc var_88
  loc_5DD946: FLdPr var_88
  loc_5DD949:  = Me.Width
  loc_5DD94E: FLdFPR4 var_8C
  loc_5DD951: CVarR4
  loc_5DD955: ILdPr
  loc_5DD958: LateMemLdVar
  loc_5DD95D: LitVarI2 var_9C, 2
  loc_5DD962: MulVar var_BC
  loc_5DD966: SubVar var_DC
  loc_5DD96A: PopAdLdVar
  loc_5DD96B: ILdPr
  loc_5DD96E: LateMemSt
  loc_5DD972: FFree1Ad var_88
  loc_5DD975: FFree1Var var_AC = ""
  loc_5DD978: ExitProcHresult
End Function

Private Function Proc_84_22_64406C(arg_C) '64406C
  'Data Table: 43FE08
  loc_643E1C: ILdI4 arg_C
  loc_643E1F: FLdPr Me
  loc_643E22: MemStStrCopy
  loc_643E26: FLdRfVar var_8C
  loc_643E29: ILdRf arg_C
  loc_643E2C: from_stack_2v = Proc_84_23_5E35E8(from_stack_1v)
  loc_643E31: ILdRf var_8C
  loc_643E34: FLdPr Me
  loc_643E37: MemStStrCopy
  loc_643E3B: FFree1Str var_8C
  loc_643E3E: ImpAdLdRf MemVar_74C7B4
  loc_643E41: LitStr "Path"
  loc_643E44: FStStrCopy var_8C
  loc_643E47: FLdRfVar var_8C
  loc_643E4A: ILdRf arg_C
  loc_643E4D: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_643E52: FStStrNoPop var_90
  loc_643E55: FLdPrThis
  loc_643E56: VCallAd Control_ID_txPath
  loc_643E59: FStAdFunc var_94
  loc_643E5C: FLdPr var_94
  loc_643E5F: Me.Text = from_stack_1
  loc_643E64: FFreeStr var_8C = ""
  loc_643E6B: FFree1Ad var_94
  loc_643E6E: ImpAdLdRf MemVar_74C7B4
  loc_643E71: LitStr "titulo"
  loc_643E74: FStStrCopy var_8C
  loc_643E77: FLdRfVar var_8C
  loc_643E7A: ILdRf arg_C
  loc_643E7D: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_643E82: FStStrNoPop var_90
  loc_643E85: FLdPrThis
  loc_643E86: VCallAd Control_ID_txTitle
  loc_643E89: FStAdFunc var_94
  loc_643E8C: FLdPr var_94
  loc_643E8F: Me.Text = from_stack_1
  loc_643E94: FFreeStr var_8C = ""
  loc_643E9B: FFree1Ad var_94
  loc_643E9E: FLdRfVar var_8C
  loc_643EA1: FLdPrThis
  loc_643EA2: VCallAd Control_ID_txTitle
  loc_643EA5: FStAdFunc var_94
  loc_643EA8: FLdPr var_94
  loc_643EAB:  = Me.Text
  loc_643EB0: ILdRf var_8C
  loc_643EB3: FLdPr Me
  loc_643EB6: MemStStrCopy
  loc_643EBA: FFree1Str var_8C
  loc_643EBD: FFree1Ad var_94
  loc_643EC0: ImpAdLdRf MemVar_74C7B4
  loc_643EC3: LitStr "seguridad"
  loc_643EC6: FStStrCopy var_8C
  loc_643EC9: FLdRfVar var_8C
  loc_643ECC: ILdRf arg_C
  loc_643ECF: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_643ED4: FStStr var_A0
  loc_643ED7: FLdRfVar var_9C
  loc_643EDA: FLdZeroAd var_A0
  loc_643EDD: FStStrNoPop var_90
  loc_643EE0: CUI1Str
  loc_643EE2: CI2UI1
  loc_643EE4: LitI2_Byte 1
  loc_643EE6: AddI2
  loc_643EE7: PopTmpLdAd2 var_96
  loc_643EEA: ImpAdLdRf MemVar_74A218
  loc_643EED: NewIfNullPr clsUsers
  loc_643EF0: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_643EF5: ILdRf var_9C
  loc_643EF8: FLdPrThis
  loc_643EF9: VCallAd Control_ID_cmbSeguridad
  loc_643EFC: FStAdFunc var_94
  loc_643EFF: FLdPr var_94
  loc_643F02: Me.Text = from_stack_1
  loc_643F07: FFreeStr var_8C = "": var_90 = "": var_9C = ""
  loc_643F12: FFree1Ad var_94
  loc_643F15: ImpAdLdRf MemVar_74C7B4
  loc_643F18: LitStr "modo"
  loc_643F1B: FStStrCopy var_8C
  loc_643F1E: FLdRfVar var_8C
  loc_643F21: ILdRf arg_C
  loc_643F24: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_643F29: FStStr var_A0
  loc_643F2C: LitI4 0
  loc_643F31: LitI4 4
  loc_643F36: FLdRfVar var_A4
  loc_643F39: Redim
  loc_643F43: FLdPr Me
  loc_643F46: MemLdRfVar from_stack_1.global_100
  loc_643F49: CVarRef
  loc_643F4E: ParmAry1St
  loc_643F54: FLdPr Me
  loc_643F57: MemLdRfVar from_stack_1.global_104
  loc_643F5A: CVarRef
  loc_643F5F: ParmAry1St
  loc_643F65: FLdPr Me
  loc_643F68: MemLdRfVar from_stack_1.global_108
  loc_643F6B: CVarRef
  loc_643F70: ParmAry1St
  loc_643F76: FLdPr Me
  loc_643F79: MemLdRfVar from_stack_1.global_112
  loc_643F7C: CVarRef
  loc_643F81: ParmAry1St
  loc_643F87: FLdPr Me
  loc_643F8A: MemLdRfVar from_stack_1.global_116
  loc_643F8D: CVarRef
  loc_643F92: ParmAry1St
  loc_643F98: FLdRfVar var_A4
  loc_643F9B: FLdZeroAd var_A0
  loc_643F9E: FStStrNoPop var_90
  loc_643FA1: CUI1Str
  loc_643FA3: CI2UI1
  loc_643FA5: LitI2_Byte 1
  loc_643FA7: AddI2
  loc_643FA8: CR8I2
  loc_643FA9: PopFPR4
  loc_643FAA: FLdRfVar var_104
  loc_643FAD: ImpAdCallFPR4  = Choose(, )
  loc_643FB2: FLdRfVar var_A4
  loc_643FB5: Erase
  loc_643FB6: FLdRfVar var_104
  loc_643FB9: CStrVarVal var_9C
  loc_643FBD: FLdPrThis
  loc_643FBE: VCallAd Control_ID_cmbModo
  loc_643FC1: FStAdFunc var_94
  loc_643FC4: FLdPr var_94
  loc_643FC7: Me.Text = from_stack_1
  loc_643FCC: FFreeStr var_8C = "": var_90 = "": var_9C = ""
  loc_643FD7: FFree1Ad var_94
  loc_643FDA: FFree1Var var_104 = ""
  loc_643FDD: LitI2_Byte 1
  loc_643FDF: FLdRfVar var_86
  loc_643FE2: LitI2_Byte &HB
  loc_643FE4: ForI2 var_108
  loc_643FEA: FLdI2 var_86
  loc_643FED: LitI2_Byte 9
  loc_643FEF: EqI2
  loc_643FF0: NotI4
  loc_643FF1: FLdI2 var_86
  loc_643FF4: LitI2_Byte &HB
  loc_643FF6: EqI2
  loc_643FF7: NotI4
  loc_643FF8: AndI4
  loc_643FF9: BranchF loc_64405E
  loc_643FFC: FLdRfVar var_8C
  loc_643FFF: FLdPrThis
  loc_644000: VCallAd Control_ID_cmbSeguridad
  loc_644003: FStAdFunc var_94
  loc_644006: FLdPr var_94
  loc_644009:  = Me.Text
  loc_64400E: ILdRf var_8C
  loc_644011: FLdRfVar var_90
  loc_644014: FLdRfVar var_86
  loc_644017: ImpAdLdRf MemVar_74A218
  loc_64401A: NewIfNullPr clsUsers
  loc_64401D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_644022: ILdRf var_90
  loc_644025: EqStr
  loc_644027: FFreeStr var_8C = ""
  loc_64402E: FFree1Ad var_94
  loc_644031: BranchF loc_64405E
  loc_644034: FLdRfVar var_8C
  loc_644037: FLdRfVar var_86
  loc_64403A: ImpAdLdRf MemVar_74A218
  loc_64403D: NewIfNullPr clsUsers
  loc_644040: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_644045: ILdRf var_8C
  loc_644048: FLdPr Me
  loc_64404B: MemStStrCopy
  loc_64404F: FFree1Str var_8C
  loc_644052: FLdI2 var_86
  loc_644055: FLdPr Me
  loc_644058: MemStI2 global_64
  loc_64405B: Branch loc_644066
  loc_64405E: FLdRfVar var_86
  loc_644061: NextI2 var_108, loc_643FEA
  loc_644066: from_stack_1v = Proc_84_24_62A1C8()
  loc_64406B: ExitProcHresult
End Function

Private Function Proc_84_23_5E35E8(arg_C) '5E35E8
  'Data Table: 43FE08
  loc_5E3584: ZeroRetVal
  loc_5E3586: LitI2_Byte 0
  loc_5E3588: FLdRfVar var_8A
  loc_5E358B: FLdPr Me
  loc_5E358E: MemLdStr global_84
  loc_5E3591: LitI2_Byte 2
  loc_5E3593: FnUBound
  loc_5E3595: CI2I4
  loc_5E3596: ForI2 var_8E
  loc_5E359C: LitI4 0
  loc_5E35A1: FLdI2 var_8A
  loc_5E35A4: CI4UI1
  loc_5E35A5: FLdPr Me
  loc_5E35A8: MemLdStr global_84
  loc_5E35AB: AryLdPr
  loc_5E35AE: MemLdStr global_0
  loc_5E35B1: ILdI4 arg_C
  loc_5E35B4: EqStr
  loc_5E35B6: BranchF loc_5E35D7
  loc_5E35B9: LitI4 1
  loc_5E35BE: FLdI2 var_8A
  loc_5E35C1: CI4UI1
  loc_5E35C2: FLdPr Me
  loc_5E35C5: MemLdStr global_84
  loc_5E35C8: AryLdPr
  loc_5E35CB: MemLdStr global_0
  loc_5E35CE: FStStrCopy var_88
  loc_5E35D1: ExitProcCbHresult
  loc_5E35D7: FLdRfVar var_8A
  loc_5E35DA: NextI2 var_8E, loc_5E359C
  loc_5E35DF: ExitProcCbHresult
  loc_5E35E5: CI4Cy
  loc_5E35E6: ExitProcR8
End Function

Private Function Proc_84_24_62A1C8() '62A1C8
  'Data Table: 43FE08
  loc_62A038: LitVar_Missing var_98
  loc_62A03B: PopAdLdVar
  loc_62A03C: FLdPr Me
  loc_62A03F: MemLdStr global_100
  loc_62A042: FLdPrThis
  loc_62A043: VCallAd Control_ID_cmbModo
  loc_62A046: FStAdFunc var_9C
  loc_62A049: FLdPr var_9C
  loc_62A04C: Me.AddItem from_stack_1, from_stack_2
  loc_62A051: FFree1Ad var_9C
  loc_62A054: LitVar_Missing var_98
  loc_62A057: PopAdLdVar
  loc_62A058: FLdPr Me
  loc_62A05B: MemLdStr global_104
  loc_62A05E: FLdPrThis
  loc_62A05F: VCallAd Control_ID_cmbModo
  loc_62A062: FStAdFunc var_9C
  loc_62A065: FLdPr var_9C
  loc_62A068: Me.AddItem from_stack_1, from_stack_2
  loc_62A06D: FFree1Ad var_9C
  loc_62A070: LitVar_Missing var_98
  loc_62A073: PopAdLdVar
  loc_62A074: FLdPr Me
  loc_62A077: MemLdStr global_108
  loc_62A07A: FLdPrThis
  loc_62A07B: VCallAd Control_ID_cmbModo
  loc_62A07E: FStAdFunc var_9C
  loc_62A081: FLdPr var_9C
  loc_62A084: Me.AddItem from_stack_1, from_stack_2
  loc_62A089: FFree1Ad var_9C
  loc_62A08C: LitVar_Missing var_98
  loc_62A08F: PopAdLdVar
  loc_62A090: FLdPr Me
  loc_62A093: MemLdStr global_112
  loc_62A096: FLdPrThis
  loc_62A097: VCallAd Control_ID_cmbModo
  loc_62A09A: FStAdFunc var_9C
  loc_62A09D: FLdPr var_9C
  loc_62A0A0: Me.AddItem from_stack_1, from_stack_2
  loc_62A0A5: FFree1Ad var_9C
  loc_62A0A8: LitVar_Missing var_98
  loc_62A0AB: PopAdLdVar
  loc_62A0AC: FLdPr Me
  loc_62A0AF: MemLdStr global_116
  loc_62A0B2: FLdPrThis
  loc_62A0B3: VCallAd Control_ID_cmbModo
  loc_62A0B6: FStAdFunc var_9C
  loc_62A0B9: FLdPr var_9C
  loc_62A0BC: Me.AddItem from_stack_1, from_stack_2
  loc_62A0C1: FFree1Ad var_9C
  loc_62A0C4: LitVarI2 var_BC, 1
  loc_62A0C9: LitI4 4
  loc_62A0CE: ImpAdLdRf MemVar_74BEAC
  loc_62A0D1: CVarRef
  loc_62A0D6: FLdRfVar var_CC
  loc_62A0D9: ImpAdCallFPR4  = Mid(, , )
  loc_62A0DE: FLdRfVar var_CC
  loc_62A0E1: LitVarStr var_DC, "1"
  loc_62A0E6: HardType
  loc_62A0E7: EqVarBool
  loc_62A0E9: FFreeVar var_BC = ""
  loc_62A0F0: BranchF loc_62A138
  loc_62A0F3: LitI2_Byte 1
  loc_62A0F5: FLdRfVar var_86
  loc_62A0F8: LitI2_Byte 6
  loc_62A0FA: ForI2 var_F0
  loc_62A100: LitVar_Missing var_98
  loc_62A103: PopAdLdVar
  loc_62A104: FLdRfVar var_F4
  loc_62A107: FLdRfVar var_86
  loc_62A10A: ImpAdLdRf MemVar_74A218
  loc_62A10D: NewIfNullPr clsUsers
  loc_62A110: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62A115: ILdRf var_F4
  loc_62A118: FLdPrThis
  loc_62A119: VCallAd Control_ID_cmbSeguridad
  loc_62A11C: FStAdFunc var_9C
  loc_62A11F: FLdPr var_9C
  loc_62A122: Me.AddItem from_stack_1, from_stack_2
  loc_62A127: FFree1Str var_F4
  loc_62A12A: FFree1Ad var_9C
  loc_62A12D: FLdRfVar var_86
  loc_62A130: NextI2 var_F0, loc_62A100
  loc_62A135: Branch loc_62A18C
  loc_62A138: LitI2_Byte 1
  loc_62A13A: FLdRfVar var_86
  loc_62A13D: LitI2_Byte &HB
  loc_62A13F: ForI2 var_F8
  loc_62A145: FLdI2 var_86
  loc_62A148: LitI2_Byte 9
  loc_62A14A: EqI2
  loc_62A14B: NotI4
  loc_62A14C: FLdI2 var_86
  loc_62A14F: LitI2_Byte &HB
  loc_62A151: EqI2
  loc_62A152: NotI4
  loc_62A153: AndI4
  loc_62A154: BranchF loc_62A184
  loc_62A157: LitVar_Missing var_98
  loc_62A15A: PopAdLdVar
  loc_62A15B: FLdRfVar var_F4
  loc_62A15E: FLdRfVar var_86
  loc_62A161: ImpAdLdRf MemVar_74A218
  loc_62A164: NewIfNullPr clsUsers
  loc_62A167: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_62A16C: ILdRf var_F4
  loc_62A16F: FLdPrThis
  loc_62A170: VCallAd Control_ID_cmbSeguridad
  loc_62A173: FStAdFunc var_9C
  loc_62A176: FLdPr var_9C
  loc_62A179: Me.AddItem from_stack_1, from_stack_2
  loc_62A17E: FFree1Str var_F4
  loc_62A181: FFree1Ad var_9C
  loc_62A184: FLdRfVar var_86
  loc_62A187: NextI2 var_F8, loc_62A145
  loc_62A18C: FLdPr Me
  loc_62A18F: MemLdI2 global_64
  loc_62A192: ImpAdLdPr unk_43FE0A
  loc_62A195: MemLdI2 global_4
  loc_62A198: GtI2
  loc_62A199: BranchF loc_62A1B3
  loc_62A19C: LitI2_Byte 0
  loc_62A19E: FLdPrThis
  loc_62A19F: VCallAd Control_ID_cmbSeguridad
  loc_62A1A2: FStAdFunc var_9C
  loc_62A1A5: FLdPr var_9C
  loc_62A1A8: Me.Enabled = from_stack_1b
  loc_62A1AD: FFree1Ad var_9C
  loc_62A1B0: Branch loc_62A1C7
  loc_62A1B3: LitI2_Byte &HFF
  loc_62A1B5: FLdPrThis
  loc_62A1B6: VCallAd Control_ID_cmbSeguridad
  loc_62A1B9: FStAdFunc var_9C
  loc_62A1BC: FLdPr var_9C
  loc_62A1BF: Me.Enabled = from_stack_1b
  loc_62A1C4: FFree1Ad var_9C
  loc_62A1C7: ExitProcHresult
End Function

Private Function Proc_84_25_5D66F4() '5D66F4
  'Data Table: 43FE08
  loc_5D66CC: FLdPrThis
  loc_5D66CD: VCallAd Control_ID_cmbModo
  loc_5D66D0: FStAdFunc var_88
  loc_5D66D3: FLdPr var_88
  loc_5D66D6: Me.Clear
  loc_5D66DB: FFree1Ad var_88
  loc_5D66DE: FLdPrThis
  loc_5D66DF: VCallAd Control_ID_cmbSeguridad
  loc_5D66E2: FStAdFunc var_88
  loc_5D66E5: FLdPr var_88
  loc_5D66E8: Me.Clear
  loc_5D66ED: FFree1Ad var_88
  loc_5D66F0: ExitProcHresult
  loc_5D66F1: ModI2
  loc_5D66F2: BranchT loc_5DF6CC
End Function

Private Function Proc_84_26_5E7C94() '5E7C94
  'Data Table: 43FE08
  loc_5E7C20: OnErrorGoto loc_5E7C89
  loc_5E7C23: LitI2_Byte 1
  loc_5E7C25: FLdRfVar var_88
  loc_5E7C28: LitI2 250
  loc_5E7C2B: ForI2 var_8E
  loc_5E7C31: ImpAdLdRf MemVar_74C7B4
  loc_5E7C34: LitStr "Path"
  loc_5E7C37: FStStrCopy var_9C
  loc_5E7C3A: FLdRfVar var_9C
  loc_5E7C3D: LitStr "Comando"
  loc_5E7C40: FLdI2 var_88
  loc_5E7C43: CStrUI1
  loc_5E7C45: FStStrNoPop var_94
  loc_5E7C48: ConcatStr
  loc_5E7C49: PopTmpLdAdStr
  loc_5E7C4D: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5E7C52: FStStrNoPop var_A0
  loc_5E7C55: LitStr vbNullString
  loc_5E7C58: EqStr
  loc_5E7C5A: NotI4
  loc_5E7C5B: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_5E7C66: BranchF loc_5E7C72
  loc_5E7C69: FLdI2 var_88
  loc_5E7C6C: CUI1I2
  loc_5E7C6E: FStUI1 var_8A
  loc_5E7C72: FLdRfVar var_88
  loc_5E7C75: NextI2 var_8E, loc_5E7C31
  loc_5E7C7A: FLdUI1
  loc_5E7C7E: CI2UI1
  loc_5E7C80: FStI2 var_86
  loc_5E7C83: ExitProcCbHresult
  loc_5E7C89: LitI2_Byte 0
  loc_5E7C8B: FStI2 var_86
  loc_5E7C8E: ExitProcCbHresult
End Function

Private Function Proc_84_27_6AB7DC() '6AB7DC
  'Data Table: 43FE08
  loc_6AB100: ImpAdCallFPR4 Proc_87_23_619080()
  loc_6AB105: ImpAdLdRf MemVar_74C7B4
  loc_6AB108: LitStr "maxaplic"
  loc_6AB10B: FStStrCopy var_90
  loc_6AB10E: FLdRfVar var_90
  loc_6AB111: LitStr "GENERAL"
  loc_6AB114: FStStrCopy var_8C
  loc_6AB117: FLdRfVar var_8C
  loc_6AB11A: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB11F: FStStrNoPop var_94
  loc_6AB122: FLdPr Me
  loc_6AB125: MemStStrCopy
  loc_6AB129: FFreeStr var_8C = "": var_90 = ""
  loc_6AB132: FLdPr Me
  loc_6AB135: MemLdStr global_68
  loc_6AB138: ImpAdCallFPR4 push Val()
  loc_6AB13D: CR8R8
  loc_6AB13E: LitI2_Byte 0
  loc_6AB140: CR8I2
  loc_6AB141: EqR4
  loc_6AB142: BranchF loc_6AB146
  loc_6AB145: ExitProcHresult
  loc_6AB146: FLdPrThis
  loc_6AB147: VCallAd Control_ID_Tree
  loc_6AB14A: FStAdFunc var_98
  loc_6AB14D: FLdPr var_98
  loc_6AB150: LateIdLdVar var_A8 DispID_9 0
  loc_6AB157: CastAdVar Me
  loc_6AB15B: FStAdFunc var_AC
  loc_6AB15E: FLdPr var_AC
  loc_6AB161: Me.Nodes.Clear
  loc_6AB166: FFreeAd var_98 = ""
  loc_6AB16D: FFree1Var var_A8 = ""
  loc_6AB170: FLdRfVar var_90
  loc_6AB173: LitVar_Missing var_1E4
  loc_6AB176: LitVar_Missing var_1C4
  loc_6AB179: LitVar_Missing var_1A4
  loc_6AB17C: LitVar_Missing var_184
  loc_6AB17F: LitVar_Missing var_164
  loc_6AB182: LitVar_Missing var_144
  loc_6AB185: LitVar_Missing var_124
  loc_6AB188: LitVar_Missing var_104
  loc_6AB18B: LitVar_Missing var_E4
  loc_6AB18E: LitVar_Missing var_A8
  loc_6AB191: LitStr "Aplicaciones"
  loc_6AB194: FStStrCopy var_8C
  loc_6AB197: FLdRfVar var_8C
  loc_6AB19A: LitI4 &HE
  loc_6AB19F: PopTmpLdAdStr var_B4
  loc_6AB1A2: LitI2_Byte &H4F
  loc_6AB1A4: PopTmpLdAd2 var_AE
  loc_6AB1A7: ImpAdLdRf MemVar_74C7D0
  loc_6AB1AA: NewIfNullPr clsMsg
  loc_6AB1AD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AB1B2: FLdRfVar var_2A8
  loc_6AB1B5: LitVar_Missing var_2A4
  loc_6AB1B8: LitVarI2 var_284, 1
  loc_6AB1BD: FLdZeroAd var_90
  loc_6AB1C0: CVarStr var_264
  loc_6AB1C3: LitVarStr var_244, "Aplicaciones"
  loc_6AB1C8: FStVarCopyObj var_254
  loc_6AB1CB: FLdRfVar var_254
  loc_6AB1CE: LitVar_Missing var_234
  loc_6AB1D1: LitVar_Missing var_214
  loc_6AB1D4: FLdPrThis
  loc_6AB1D5: VCallAd Control_ID_Tree
  loc_6AB1D8: FStAdFunc var_98
  loc_6AB1DB: FLdPr var_98
  loc_6AB1DE: LateIdLdVar var_1F4 DispID_9 0
  loc_6AB1E5: CastAdVar Me
  loc_6AB1E9: FStAdFunc var_AC
  loc_6AB1EC: FLdPr var_AC
  loc_6AB1EF: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_6AB1F4: FFree1Str var_8C
  loc_6AB1F7: FFreeAd var_98 = "": var_AC = ""
  loc_6AB200: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = ""
  loc_6AB225: LitI2_Byte 1
  loc_6AB227: CUI1I2
  loc_6AB229: FLdRfVar var_86
  loc_6AB22C: LitI2 250
  loc_6AB22F: CUI1I2
  loc_6AB231: ForUI1 var_2AC
  loc_6AB237: ImpAdLdRf MemVar_74C7B4
  loc_6AB23A: LitStr "Path"
  loc_6AB23D: FStStrCopy var_94
  loc_6AB240: FLdRfVar var_94
  loc_6AB243: LitStr "Comando"
  loc_6AB246: FLdUI1
  loc_6AB24A: CStrI2
  loc_6AB24C: FStStrNoPop var_8C
  loc_6AB24F: ConcatStr
  loc_6AB250: PopTmpLdAdStr
  loc_6AB254: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB259: FStStrNoPop var_2B0
  loc_6AB25C: LitStr vbNullString
  loc_6AB25F: EqStr
  loc_6AB261: NotI4
  loc_6AB262: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_6AB26D: BranchF loc_6AB7BE
  loc_6AB270: LitI4 0
  loc_6AB275: LitI4 1
  loc_6AB27A: LitI4 0
  loc_6AB27F: FLdUI1
  loc_6AB283: CI4UI1
  loc_6AB284: FLdPr Me
  loc_6AB287: MemLdRfVar from_stack_1.global_84
  loc_6AB28A: RedimPreserve
  loc_6AB294: LitStr "Comando"
  loc_6AB297: FLdUI1
  loc_6AB29B: CStrI2
  loc_6AB29D: FStStrNoPop var_8C
  loc_6AB2A0: ConcatStr
  loc_6AB2A1: FStStrNoPop var_90
  loc_6AB2A4: LitI4 0
  loc_6AB2A9: FLdUI1
  loc_6AB2AD: CI4UI1
  loc_6AB2AE: FLdPr Me
  loc_6AB2B1: MemLdStr global_84
  loc_6AB2B4: AryLdPr
  loc_6AB2B7: MemStStrCopy
  loc_6AB2BB: FFreeStr var_8C = ""
  loc_6AB2C2: ImpAdLdRf MemVar_74C7B4
  loc_6AB2C5: LitStr "titulo"
  loc_6AB2C8: FStStrCopy var_94
  loc_6AB2CB: FLdRfVar var_94
  loc_6AB2CE: LitStr "Comando"
  loc_6AB2D1: FLdUI1
  loc_6AB2D5: CStrI2
  loc_6AB2D7: FStStrNoPop var_8C
  loc_6AB2DA: ConcatStr
  loc_6AB2DB: PopTmpLdAdStr
  loc_6AB2DF: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB2E4: FStStrNoPop var_2B0
  loc_6AB2E7: LitI4 1
  loc_6AB2EC: FLdUI1
  loc_6AB2F0: CI4UI1
  loc_6AB2F1: FLdPr Me
  loc_6AB2F4: MemLdStr global_84
  loc_6AB2F7: AryLdPr
  loc_6AB2FA: MemStStrCopy
  loc_6AB2FE: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_6AB309: FLdUI1
  loc_6AB30D: CI2UI1
  loc_6AB30F: LitI2_Byte 1
  loc_6AB311: AddI2
  loc_6AB312: CUI1I2
  loc_6AB314: FStUI1 var_88
  loc_6AB318: ImpAdLdRf MemVar_74C7B4
  loc_6AB31B: LitStr "titulo"
  loc_6AB31E: FStStrCopy var_2B0
  loc_6AB321: FLdRfVar var_2B0
  loc_6AB324: LitStr "Comando"
  loc_6AB327: FLdUI1
  loc_6AB32B: CStrI2
  loc_6AB32D: FStStrNoPop var_90
  loc_6AB330: ConcatStr
  loc_6AB331: PopTmpLdAdStr
  loc_6AB335: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB33A: FStStr var_2B4
  loc_6AB33D: FLdRfVar var_2A8
  loc_6AB340: LitVar_Missing var_184
  loc_6AB343: LitVarI2 var_164, 1
  loc_6AB348: FLdZeroAd var_2B4
  loc_6AB34B: CVarStr var_144
  loc_6AB34E: LitStr "Comando"
  loc_6AB351: FLdUI1
  loc_6AB355: CStrI2
  loc_6AB357: FStStrNoPop var_8C
  loc_6AB35A: ConcatStr
  loc_6AB35B: CVarStr var_124
  loc_6AB35E: LitVarI2 var_104, 4
  loc_6AB363: LitVarStr var_C4, "Aplicaciones"
  loc_6AB368: FStVarCopyObj var_E4
  loc_6AB36B: FLdRfVar var_E4
  loc_6AB36E: FLdPrThis
  loc_6AB36F: VCallAd Control_ID_Tree
  loc_6AB372: FStAdFunc var_98
  loc_6AB375: FLdPr var_98
  loc_6AB378: LateIdLdVar var_A8 DispID_9 0
  loc_6AB37F: CastAdVar Me
  loc_6AB383: FStAdFunc var_AC
  loc_6AB386: FLdPr var_AC
  loc_6AB389: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_6AB38E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_2B0 = ""
  loc_6AB39B: FFreeAd var_98 = "": var_AC = ""
  loc_6AB3A4: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = ""
  loc_6AB3B5: ImpAdLdPr unk_43FE0A
  loc_6AB3B8: MemLdI2 global_4
  loc_6AB3BB: LitI2_Byte &HA
  loc_6AB3BD: EqI2
  loc_6AB3BE: BranchF loc_6AB4DA
  loc_6AB3C1: FLdRfVar var_2B0
  loc_6AB3C4: LitVar_Missing var_1E4
  loc_6AB3C7: LitVar_Missing var_1C4
  loc_6AB3CA: LitVar_Missing var_1A4
  loc_6AB3CD: LitVar_Missing var_184
  loc_6AB3D0: LitVar_Missing var_164
  loc_6AB3D3: LitVar_Missing var_144
  loc_6AB3D6: LitVar_Missing var_124
  loc_6AB3D9: LitVar_Missing var_104
  loc_6AB3DC: LitVar_Missing var_E4
  loc_6AB3DF: LitVar_Missing var_A8
  loc_6AB3E2: LitStr "Ruta"
  loc_6AB3E5: FStStrCopy var_94
  loc_6AB3E8: FLdRfVar var_94
  loc_6AB3EB: LitI4 &HA
  loc_6AB3F0: PopTmpLdAdStr var_B4
  loc_6AB3F3: LitI2_Byte &H4F
  loc_6AB3F5: PopTmpLdAd2 var_AE
  loc_6AB3F8: ImpAdLdRf MemVar_74C7D0
  loc_6AB3FB: NewIfNullPr clsMsg
  loc_6AB3FE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AB403: ImpAdLdRf MemVar_74C7B4
  loc_6AB406: LitStr "Path"
  loc_6AB409: FStStrCopy var_2C0
  loc_6AB40C: FLdRfVar var_2C0
  loc_6AB40F: LitStr "Comando"
  loc_6AB412: FLdUI1
  loc_6AB416: CStrI2
  loc_6AB418: FStStrNoPop var_2B8
  loc_6AB41B: ConcatStr
  loc_6AB41C: PopTmpLdAdStr
  loc_6AB420: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB425: FStStr var_2CC
  loc_6AB428: FLdRfVar var_2A8
  loc_6AB42B: LitVar_Missing var_2A4
  loc_6AB42E: LitVarI2 var_284, 3
  loc_6AB433: ILdRf var_2B0
  loc_6AB436: LitStr " ="
  loc_6AB439: ConcatStr
  loc_6AB43A: FStStrNoPop var_2B4
  loc_6AB43D: LitStr " "
  loc_6AB440: ConcatStr
  loc_6AB441: FStStrNoPop var_2C4
  loc_6AB444: FLdZeroAd var_2CC
  loc_6AB447: FStStrNoPop var_2C8
  loc_6AB44A: ConcatStr
  loc_6AB44B: CVarStr var_264
  loc_6AB44E: LitStr "Path"
  loc_6AB451: FLdUI1
  loc_6AB455: CStrI2
  loc_6AB457: FStStrNoPop var_90
  loc_6AB45A: ConcatStr
  loc_6AB45B: CVarStr var_254
  loc_6AB45E: LitVarI2 var_234, 4
  loc_6AB463: LitStr "Comando"
  loc_6AB466: FLdUI1
  loc_6AB46A: CStrI2
  loc_6AB46C: FStStrNoPop var_8C
  loc_6AB46F: ConcatStr
  loc_6AB470: CVarStr var_214
  loc_6AB473: FLdPrThis
  loc_6AB474: VCallAd Control_ID_Tree
  loc_6AB477: FStAdFunc var_98
  loc_6AB47A: FLdPr var_98
  loc_6AB47D: LateIdLdVar var_1F4 DispID_9 0
  loc_6AB484: CastAdVar Me
  loc_6AB488: FStAdFunc var_AC
  loc_6AB48B: FLdPr var_AC
  loc_6AB48E: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_6AB493: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = ""
  loc_6AB4AC: FFreeAd var_98 = "": var_AC = ""
  loc_6AB4B5: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = ""
  loc_6AB4DA: FLdRfVar var_2B0
  loc_6AB4DD: LitVar_Missing var_1E4
  loc_6AB4E0: LitVar_Missing var_1C4
  loc_6AB4E3: LitVar_Missing var_1A4
  loc_6AB4E6: LitVar_Missing var_184
  loc_6AB4E9: LitVar_Missing var_164
  loc_6AB4EC: LitVar_Missing var_144
  loc_6AB4EF: LitVar_Missing var_124
  loc_6AB4F2: LitVar_Missing var_104
  loc_6AB4F5: LitVar_Missing var_E4
  loc_6AB4F8: LitVar_Missing var_A8
  loc_6AB4FB: LitStr "Seguridad"
  loc_6AB4FE: FStStrCopy var_94
  loc_6AB501: FLdRfVar var_94
  loc_6AB504: LitI4 &HC
  loc_6AB509: PopTmpLdAdStr var_B4
  loc_6AB50C: LitI2_Byte &H4F
  loc_6AB50E: PopTmpLdAd2 var_AE
  loc_6AB511: ImpAdLdRf MemVar_74C7D0
  loc_6AB514: NewIfNullPr clsMsg
  loc_6AB517: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AB51C: ImpAdLdRf MemVar_74C7B4
  loc_6AB51F: LitStr "seguridad"
  loc_6AB522: FStStrCopy var_2C0
  loc_6AB525: FLdRfVar var_2C0
  loc_6AB528: LitStr "Comando"
  loc_6AB52B: FLdUI1
  loc_6AB52F: CStrI2
  loc_6AB531: FStStrNoPop var_2B8
  loc_6AB534: ConcatStr
  loc_6AB535: PopTmpLdAdStr
  loc_6AB539: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB53E: FStStr var_2D4
  loc_6AB541: FLdRfVar var_2C8
  loc_6AB544: FLdZeroAd var_2D4
  loc_6AB547: FStStrNoPop var_2C4
  loc_6AB54A: CUI1Str
  loc_6AB54C: CI2UI1
  loc_6AB54E: LitI2_Byte 1
  loc_6AB550: AddI2
  loc_6AB551: PopTmpLdAd2 var_2CE
  loc_6AB554: ImpAdLdRf MemVar_74A218
  loc_6AB557: NewIfNullPr clsUsers
  loc_6AB55A: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6AB55F: FLdRfVar var_2A8
  loc_6AB562: LitVar_Missing var_2A4
  loc_6AB565: LitVarI2 var_284, 3
  loc_6AB56A: ILdRf var_2B0
  loc_6AB56D: LitStr " ="
  loc_6AB570: ConcatStr
  loc_6AB571: FStStrNoPop var_2B4
  loc_6AB574: LitStr " "
  loc_6AB577: ConcatStr
  loc_6AB578: FStStrNoPop var_2CC
  loc_6AB57B: ILdRf var_2C8
  loc_6AB57E: ConcatStr
  loc_6AB57F: CVarStr var_264
  loc_6AB582: LitStr "Seguridad"
  loc_6AB585: FLdUI1
  loc_6AB589: CStrI2
  loc_6AB58B: FStStrNoPop var_90
  loc_6AB58E: ConcatStr
  loc_6AB58F: CVarStr var_254
  loc_6AB592: LitVarI2 var_234, 4
  loc_6AB597: LitStr "Comando"
  loc_6AB59A: FLdUI1
  loc_6AB59E: CStrI2
  loc_6AB5A0: FStStrNoPop var_8C
  loc_6AB5A3: ConcatStr
  loc_6AB5A4: CVarStr var_214
  loc_6AB5A7: FLdPrThis
  loc_6AB5A8: VCallAd Control_ID_Tree
  loc_6AB5AB: FStAdFunc var_98
  loc_6AB5AE: FLdPr var_98
  loc_6AB5B1: LateIdLdVar var_1F4 DispID_9 0
  loc_6AB5B8: CastAdVar Me
  loc_6AB5BC: FStAdFunc var_AC
  loc_6AB5BF: FLdPr var_AC
  loc_6AB5C2: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_6AB5C7: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2CC = "": var_2C8 = ""
  loc_6AB5E2: FFreeAd var_98 = "": var_AC = ""
  loc_6AB5EB: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = ""
  loc_6AB610: ImpAdLdPr unk_43FE0A
  loc_6AB613: MemLdI2 global_4
  loc_6AB616: LitI2_Byte &HA
  loc_6AB618: EqI2
  loc_6AB619: BranchF loc_6AB7BE
  loc_6AB61C: FLdRfVar var_2B0
  loc_6AB61F: LitVar_Missing var_1E4
  loc_6AB622: LitVar_Missing var_1C4
  loc_6AB625: LitVar_Missing var_1A4
  loc_6AB628: LitVar_Missing var_184
  loc_6AB62B: LitVar_Missing var_164
  loc_6AB62E: LitVar_Missing var_144
  loc_6AB631: LitVar_Missing var_124
  loc_6AB634: LitVar_Missing var_104
  loc_6AB637: LitVar_Missing var_E4
  loc_6AB63A: LitVar_Missing var_A8
  loc_6AB63D: LitStr "Modo"
  loc_6AB640: FStStrCopy var_94
  loc_6AB643: FLdRfVar var_94
  loc_6AB646: LitI4 &HD
  loc_6AB64B: PopTmpLdAdStr var_B4
  loc_6AB64E: LitI2_Byte &H4F
  loc_6AB650: PopTmpLdAd2 var_AE
  loc_6AB653: ImpAdLdRf MemVar_74C7D0
  loc_6AB656: NewIfNullPr clsMsg
  loc_6AB659: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AB65E: ImpAdLdRf MemVar_74C7B4
  loc_6AB661: LitStr "modo"
  loc_6AB664: FStStrCopy var_2C0
  loc_6AB667: FLdRfVar var_2C0
  loc_6AB66A: LitStr "Comando"
  loc_6AB66D: FLdUI1
  loc_6AB671: CStrI2
  loc_6AB673: FStStrNoPop var_2B8
  loc_6AB676: ConcatStr
  loc_6AB677: PopTmpLdAdStr
  loc_6AB67B: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6AB680: FStStr var_2C8
  loc_6AB683: LitI4 0
  loc_6AB688: LitI4 4
  loc_6AB68D: FLdRfVar var_2D8
  loc_6AB690: Redim
  loc_6AB69A: FLdPr Me
  loc_6AB69D: MemLdRfVar from_stack_1.global_100
  loc_6AB6A0: CVarRef
  loc_6AB6A5: ParmAry1St
  loc_6AB6AB: FLdPr Me
  loc_6AB6AE: MemLdRfVar from_stack_1.global_104
  loc_6AB6B1: CVarRef
  loc_6AB6B6: ParmAry1St
  loc_6AB6BC: FLdPr Me
  loc_6AB6BF: MemLdRfVar from_stack_1.global_108
  loc_6AB6C2: CVarRef
  loc_6AB6C7: ParmAry1St
  loc_6AB6CD: FLdPr Me
  loc_6AB6D0: MemLdRfVar from_stack_1.global_112
  loc_6AB6D3: CVarRef
  loc_6AB6D8: ParmAry1St
  loc_6AB6DE: FLdPr Me
  loc_6AB6E1: MemLdRfVar from_stack_1.global_116
  loc_6AB6E4: CVarRef
  loc_6AB6E9: ParmAry1St
  loc_6AB6EF: FLdRfVar var_2D8
  loc_6AB6F2: FLdZeroAd var_2C8
  loc_6AB6F5: FStStrNoPop var_2C4
  loc_6AB6F8: CUI1Str
  loc_6AB6FA: CI2UI1
  loc_6AB6FC: LitI2_Byte 1
  loc_6AB6FE: AddI2
  loc_6AB6FF: CR8I2
  loc_6AB700: PopFPR4
  loc_6AB701: FLdRfVar var_1F4
  loc_6AB704: ImpAdCallFPR4  = Choose(, )
  loc_6AB709: FLdRfVar var_2D8
  loc_6AB70C: Erase
  loc_6AB70D: FLdRfVar var_2A8
  loc_6AB710: LitVar_Missing var_328
  loc_6AB713: LitVarI2 var_308, 3
  loc_6AB718: ILdRf var_2B0
  loc_6AB71B: LitStr " ="
  loc_6AB71E: ConcatStr
  loc_6AB71F: FStStrNoPop var_2B4
  loc_6AB722: LitStr " "
  loc_6AB725: ConcatStr
  loc_6AB726: CVarStr var_214
  loc_6AB729: FLdRfVar var_1F4
  loc_6AB72C: ConcatVar var_234
  loc_6AB730: LitStr "Modo"
  loc_6AB733: FLdUI1
  loc_6AB737: CStrI2
  loc_6AB739: FStStrNoPop var_90
  loc_6AB73C: ConcatStr
  loc_6AB73D: CVarStr var_2A4
  loc_6AB740: LitVarI2 var_284, 4
  loc_6AB745: LitStr "Comando"
  loc_6AB748: FLdUI1
  loc_6AB74C: CStrI2
  loc_6AB74E: FStStrNoPop var_8C
  loc_6AB751: ConcatStr
  loc_6AB752: CVarStr var_264
  loc_6AB755: FLdPrThis
  loc_6AB756: VCallAd Control_ID_Tree
  loc_6AB759: FStAdFunc var_98
  loc_6AB75C: FLdPr var_98
  loc_6AB75F: LateIdLdVar var_254 DispID_9 0
  loc_6AB766: CastAdVar Me
  loc_6AB76A: FStAdFunc var_AC
  loc_6AB76D: FLdPr var_AC
  loc_6AB770: Me.Nodes.Add from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5, from_stack_6
  loc_6AB775: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = ""
  loc_6AB78C: FFreeAd var_98 = "": var_AC = ""
  loc_6AB795: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_214 = "": var_1F4 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_234 = "": var_308 = ""
  loc_6AB7BE: FLdRfVar var_86
  loc_6AB7C1: NextUI1
  loc_6AB7C7: LitI2_Byte &HFF
  loc_6AB7C9: FLdPrThis
  loc_6AB7CA: VCallAd Control_ID_txPath
  loc_6AB7CD: FStAdFunc var_98
  loc_6AB7D0: FLdPr var_98
  loc_6AB7D3: Me.Locked = from_stack_1b
  loc_6AB7D8: FFree1Ad var_98
  loc_6AB7DB: ExitProcHresult
End Function
