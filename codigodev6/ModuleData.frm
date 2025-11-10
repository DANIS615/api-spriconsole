VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form ModuleData
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFFFFFF&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 15
  ClientTop = 15
  ClientWidth = 10980
  ClientHeight = 7755
  StartUpPosition = 1 'CenterOwner
  Moveable = 0   'False
  Begin VB.ComboBox Combo1
    Style = 2
    Left = 240
    Top = 6120
    Width = 8055
    Height = 360
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command4
    Caption = "&Cancelar"
    Left = 7320
    Top = 7080
    Width = 1695
    Height = 495
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton Command1
    Caption = "&Aceptar"
    Left = 2280
    Top = 7080
    Width = 1695
    Height = 495
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSFrame SSFrame1
    Left = 120
    Top = 0
    Width = 10695
    Height = 5295
    TabIndex = 8
    OleObjectBlob = "ModuleData.frx":0000
    Begin MSFlexGridLib.MSFlexGrid Tabla
      Left = 120
      Top = 240
      Width = 10455
      Height = 4935
      TabIndex = 4
      OleObjectBlob = "ModuleData.frx":0062
    End
  End
  Begin Threed.SSPanel SSPanel2
    Left = 120
    Top = 5400
    Width = 10695
    Height = 1335
    TabIndex = 10
    OleObjectBlob = "ModuleData.frx":014E
    Begin VB.CommandButton Command2
      Caption = "&Aplicar"
      Left = 8520
      Top = 720
      Width = 1575
      Height = 375
      TabIndex = 6
    End
    Begin VB.Label Label9
      Caption = "Estado actual:"
      Left = 120
      Top = 360
      Width = 1455
      Height = 255
      TabIndex = 0
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Label1"
      Left = 1560
      Top = 360
      Width = 8895
      Height = 255
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label8
      Caption = "Módulo:"
      Left = 120
      Top = 120
      Width = 855
      Height = 255
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Label1"
      Left = 960
      Top = 120
      Width = 9495
      Height = 255
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "ModuleData"

Public db As New UnkObject
Public Row As Integer


Private Sub Command4_Click() '5D1DA4
  'Data Table: 427274
  loc_5D1D8C: ILdRf Me
  loc_5D1D8F: FStAdNoPop
  loc_5D1D93: ImpAdLdRf MemVar_7520D4
  loc_5D1D96: NewIfNullPr Global
  loc_5D1D99: Global.Unload from_stack_1
  loc_5D1D9E: FFree1Ad var_88
  loc_5D1DA1: ExitProcHresult
  loc_5D1DA2: Branch loc_5E198C
End Sub

Private Sub Command2_Click() '614630
  'Data Table: 427274
  loc_614528: FLdPrThis
  loc_614529: VCallAd Control_ID_Tabla
  loc_61452C: FStAdFunc var_88
  loc_61452F: FLdPr var_88
  loc_614532: LateIdLdVar var_98 DispID_10 0
  loc_614539: PopAd
  loc_61453B: FLdRfVar var_A0
  loc_61453E: FLdPrThis
  loc_61453F: VCallAd Control_ID_Combo1
  loc_614542: FStAdFunc var_9C
  loc_614545: FLdPr var_9C
  loc_614548:  = Me.Text
  loc_61454D: FLdPrThis
  loc_61454E: VCallAd Control_ID_Tabla
  loc_614551: FStAdFunc var_B0
  loc_614554: FLdPr var_B0
  loc_614557: LateIdLdVar var_C0 DispID_10 0
  loc_61455E: CI4Var
  loc_614560: CVarI4
  loc_614564: PopAdLdVar
  loc_614565: LitVarI4
  loc_61456D: PopAdLdVar
  loc_61456E: FLdRfVar var_AA
  loc_614571: FLdZeroAd var_A0
  loc_614574: PopTmpLdAdStr
  loc_614578: FLdRfVar var_98
  loc_61457B: CI4Var
  loc_61457D: LitI4 1
  loc_614582: SubI4
  loc_614583: CI2I4
  loc_614584: PopTmpLdAd2 var_A2
  loc_614587: from_stack_3v = Proc_76_15_5FACC0(from_stack_1v, from_stack_2v)
  loc_61458C: FLdI2 var_AA
  loc_61458F: CStrUI1
  loc_614591: CVarStr var_F0
  loc_614594: PopAdLdVar
  loc_614595: FLdPrThis
  loc_614596: VCallAd Control_ID_Tabla
  loc_614599: FStAdFunc var_F4
  loc_61459C: FLdPr var_F4
  loc_61459F: LateIdCallSt
  loc_6145A7: FFree1Str var_A8
  loc_6145AA: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_6145B5: FFreeVar var_98 = "": var_C0 = ""
  loc_6145BE: FLdPrThis
  loc_6145BF: VCallAd Control_ID_Tabla
  loc_6145C2: FStAdFunc var_9C
  loc_6145C5: FLdPr var_9C
  loc_6145C8: LateIdLdVar var_98 DispID_10 0
  loc_6145CF: CI4Var
  loc_6145D1: CVarI4
  loc_6145D5: PopAdLdVar
  loc_6145D6: LitVarI4
  loc_6145DE: PopAdLdVar
  loc_6145DF: FLdRfVar var_A0
  loc_6145E2: FLdPrThis
  loc_6145E3: VCallAd Control_ID_Combo1
  loc_6145E6: FStAdFunc var_88
  loc_6145E9: FLdPr var_88
  loc_6145EC:  = Me.Text
  loc_6145F1: FLdZeroAd var_A0
  loc_6145F4: CVarStr var_C0
  loc_6145F7: PopAdLdVar
  loc_6145F8: FLdPrThis
  loc_6145F9: VCallAd Control_ID_Tabla
  loc_6145FC: FStAdFunc var_B0
  loc_6145FF: FLdPr var_B0
  loc_614602: LateIdCallSt
  loc_61460A: FFreeAd var_88 = "": var_9C = ""
  loc_614613: FFreeVar var_98 = ""
  loc_61461A: LitI2_Byte &HFF
  loc_61461C: FLdPrThis
  loc_61461D: VCallAd Control_ID_Command1
  loc_614620: FStAdFunc var_88
  loc_614623: FLdPr var_88
  loc_614626: Me.Enabled = from_stack_1b
  loc_61462B: FFree1Ad var_88
  loc_61462E: ExitProcHresult
End Sub

Private Sub Tabla_UnknownEvent_8 '61B4C8
  'Data Table: 427274
  loc_61B39C: FLdPrThis
  loc_61B39D: VCallAd Control_ID_Tabla
  loc_61B3A0: FStAdFunc var_88
  loc_61B3A3: FLdPr var_88
  loc_61B3A6: LateIdLdVar var_98 DispID_10 0
  loc_61B3AD: CI4Var
  loc_61B3AF: CVarI4
  loc_61B3B3: PopAdLdVar
  loc_61B3B4: LitVarI4
  loc_61B3BC: PopAdLdVar
  loc_61B3BD: FLdPrThis
  loc_61B3BE: VCallAd Control_ID_Tabla
  loc_61B3C1: FStAdFunc var_BC
  loc_61B3C4: FLdPr var_BC
  loc_61B3C7: LateIdCallLdVar
  loc_61B3D1: PopAd
  loc_61B3D3: FLdRfVar var_D8
  loc_61B3D6: FLdRfVar var_CC
  loc_61B3D9: CStrVarTmp
  loc_61B3DA: FStStrNoPop var_D0
  loc_61B3DD: CI2Str
  loc_61B3DF: PopTmpLdAd2 var_D2
  loc_61B3E2: from_stack_2v = Proc_76_16_6047C0(from_stack_1v)
  loc_61B3E7: FFreeStr var_D0 = ""
  loc_61B3EE: FFreeAd var_88 = ""
  loc_61B3F5: FFreeVar var_98 = ""
  loc_61B3FC: LitI2_Byte 0
  loc_61B3FE: FLdPrThis
  loc_61B3FF: VCallAd Control_ID_Combo1
  loc_61B402: FStAdFunc var_88
  loc_61B405: FLdPr var_88
  loc_61B408: Me.ListIndex = from_stack_1
  loc_61B40D: FFree1Ad var_88
  loc_61B410: FLdPrThis
  loc_61B411: VCallAd Control_ID_Tabla
  loc_61B414: FStAdFunc var_88
  loc_61B417: FLdPr var_88
  loc_61B41A: LateIdLdVar var_98 DispID_10 0
  loc_61B421: CI4Var
  loc_61B423: CVarI4
  loc_61B427: PopAdLdVar
  loc_61B428: LitVarI4
  loc_61B430: PopAdLdVar
  loc_61B431: FLdPrThis
  loc_61B432: VCallAd Control_ID_Tabla
  loc_61B435: FStAdFunc var_BC
  loc_61B438: FLdPr var_BC
  loc_61B43B: LateIdCallLdVar
  loc_61B445: CStrVarTmp
  loc_61B446: FStStrNoPop var_D0
  loc_61B449: FLdPrThis
  loc_61B44A: VCallAd Control_ID_Label1
  loc_61B44D: FStAdFunc var_DC
  loc_61B450: FLdPr var_DC
  loc_61B453: Me.Caption = from_stack_1
  loc_61B458: FFree1Str var_D0
  loc_61B45B: FFreeAd var_88 = "": var_BC = ""
  loc_61B464: FFreeVar var_98 = ""
  loc_61B46B: FLdPrThis
  loc_61B46C: VCallAd Control_ID_Tabla
  loc_61B46F: FStAdFunc var_88
  loc_61B472: FLdPr var_88
  loc_61B475: LateIdLdVar var_98 DispID_10 0
  loc_61B47C: CI4Var
  loc_61B47E: CVarI4
  loc_61B482: PopAdLdVar
  loc_61B483: LitVarI4
  loc_61B48B: PopAdLdVar
  loc_61B48C: FLdPrThis
  loc_61B48D: VCallAd Control_ID_Tabla
  loc_61B490: FStAdFunc var_BC
  loc_61B493: FLdPr var_BC
  loc_61B496: LateIdCallLdVar
  loc_61B4A0: CStrVarTmp
  loc_61B4A1: FStStrNoPop var_D0
  loc_61B4A4: FLdPrThis
  loc_61B4A5: VCallAd Control_ID_Label4
  loc_61B4A8: FStAdFunc var_DC
  loc_61B4AB: FLdPr var_DC
  loc_61B4AE: Me.Caption = from_stack_1
  loc_61B4B3: FFree1Str var_D0
  loc_61B4B6: FFreeAd var_88 = "": var_BC = ""
  loc_61B4BF: FFreeVar var_98 = ""
  loc_61B4C6: ExitProcHresult
End Sub

Private Sub Tabla_MouseUp(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '61B060
  'Data Table: 427274
  loc_61AF34: FLdPrThis
  loc_61AF35: VCallAd Control_ID_Tabla
  loc_61AF38: FStAdFunc var_88
  loc_61AF3B: FLdPr var_88
  loc_61AF3E: LateIdLdVar var_98 DispID_10 0
  loc_61AF45: CI4Var
  loc_61AF47: CVarI4
  loc_61AF4B: PopAdLdVar
  loc_61AF4C: LitVarI4
  loc_61AF54: PopAdLdVar
  loc_61AF55: FLdPrThis
  loc_61AF56: VCallAd Control_ID_Tabla
  loc_61AF59: FStAdFunc var_BC
  loc_61AF5C: FLdPr var_BC
  loc_61AF5F: LateIdCallLdVar
  loc_61AF69: PopAd
  loc_61AF6B: FLdRfVar var_D8
  loc_61AF6E: FLdRfVar var_CC
  loc_61AF71: CStrVarTmp
  loc_61AF72: FStStrNoPop var_D0
  loc_61AF75: CI2Str
  loc_61AF77: PopTmpLdAd2 var_D2
  loc_61AF7A: from_stack_2v = Proc_76_16_6047C0(from_stack_1v)
  loc_61AF7F: FFreeStr var_D0 = ""
  loc_61AF86: FFreeAd var_88 = ""
  loc_61AF8D: FFreeVar var_98 = ""
  loc_61AF94: LitI2_Byte 0
  loc_61AF96: FLdPrThis
  loc_61AF97: VCallAd Control_ID_Combo1
  loc_61AF9A: FStAdFunc var_88
  loc_61AF9D: FLdPr var_88
  loc_61AFA0: Me.ListIndex = from_stack_1
  loc_61AFA5: FFree1Ad var_88
  loc_61AFA8: FLdPrThis
  loc_61AFA9: VCallAd Control_ID_Tabla
  loc_61AFAC: FStAdFunc var_88
  loc_61AFAF: FLdPr var_88
  loc_61AFB2: LateIdLdVar var_98 DispID_10 0
  loc_61AFB9: CI4Var
  loc_61AFBB: CVarI4
  loc_61AFBF: PopAdLdVar
  loc_61AFC0: LitVarI4
  loc_61AFC8: PopAdLdVar
  loc_61AFC9: FLdPrThis
  loc_61AFCA: VCallAd Control_ID_Tabla
  loc_61AFCD: FStAdFunc var_BC
  loc_61AFD0: FLdPr var_BC
  loc_61AFD3: LateIdCallLdVar
  loc_61AFDD: CStrVarTmp
  loc_61AFDE: FStStrNoPop var_D0
  loc_61AFE1: FLdPrThis
  loc_61AFE2: VCallAd Control_ID_Label1
  loc_61AFE5: FStAdFunc var_DC
  loc_61AFE8: FLdPr var_DC
  loc_61AFEB: Me.Caption = from_stack_1
  loc_61AFF0: FFree1Str var_D0
  loc_61AFF3: FFreeAd var_88 = "": var_BC = ""
  loc_61AFFC: FFreeVar var_98 = ""
  loc_61B003: FLdPrThis
  loc_61B004: VCallAd Control_ID_Tabla
  loc_61B007: FStAdFunc var_88
  loc_61B00A: FLdPr var_88
  loc_61B00D: LateIdLdVar var_98 DispID_10 0
  loc_61B014: CI4Var
  loc_61B016: CVarI4
  loc_61B01A: PopAdLdVar
  loc_61B01B: LitVarI4
  loc_61B023: PopAdLdVar
  loc_61B024: FLdPrThis
  loc_61B025: VCallAd Control_ID_Tabla
  loc_61B028: FStAdFunc var_BC
  loc_61B02B: FLdPr var_BC
  loc_61B02E: LateIdCallLdVar
  loc_61B038: CStrVarTmp
  loc_61B039: FStStrNoPop var_D0
  loc_61B03C: FLdPrThis
  loc_61B03D: VCallAd Control_ID_Label4
  loc_61B040: FStAdFunc var_DC
  loc_61B043: FLdPr var_DC
  loc_61B046: Me.Caption = from_stack_1
  loc_61B04B: FFree1Str var_D0
  loc_61B04E: FFreeAd var_88 = "": var_BC = ""
  loc_61B057: FFreeVar var_98 = ""
  loc_61B05E: ExitProcHresult
End Sub

Private Sub Command1_Click() '632E84
  'Data Table: 427274
  loc_632D18: OnErrorGoto loc_632E81
  loc_632D1B: LitI4 &HD
  loc_632D20: FLdRfVar var_98
  loc_632D23: ImpAdCallFPR4  = Chr()
  loc_632D28: FLdRfVar var_228
  loc_632D2B: LitVar_Missing var_224
  loc_632D2E: LitVar_Missing var_204
  loc_632D31: LitVar_Missing var_1E4
  loc_632D34: LitVar_Missing var_1C4
  loc_632D37: LitVar_Missing var_1A4
  loc_632D3A: LitVar_Missing var_184
  loc_632D3D: LitVar_Missing var_164
  loc_632D40: LitVar_Missing var_144
  loc_632D43: LitVar_Missing var_124
  loc_632D46: LitVar_Missing var_104
  loc_632D49: LitVarStr var_A8, "Sr. Técnico: Para que se apliquen los cambios que Ud. bajo su responsabilidad ha realizado, deberá reiniciar el sistema."
  loc_632D4E: FLdRfVar var_98
  loc_632D51: AddVar var_B8
  loc_632D55: LitVarStr var_C8, "¿Desea hacerlo en este momento?"
  loc_632D5A: AddVar var_D8
  loc_632D5E: CStrVarTmp
  loc_632D5F: PopTmpLdAdStr
  loc_632D63: LitI4 1
  loc_632D68: PopTmpLdAdStr var_E0
  loc_632D6B: LitI2_Byte &H51
  loc_632D6D: PopTmpLdAd2 var_DA
  loc_632D70: ImpAdLdRf MemVar_74C7D0
  loc_632D73: NewIfNullPr clsMsg
  loc_632D76: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_632D7B: FLdRfVar var_378
  loc_632D7E: LitVar_Missing var_374
  loc_632D81: LitVar_Missing var_354
  loc_632D84: LitVar_Missing var_334
  loc_632D87: LitVar_Missing var_314
  loc_632D8A: LitVar_Missing var_2F4
  loc_632D8D: LitVar_Missing var_2D4
  loc_632D90: LitVar_Missing var_2B4
  loc_632D93: LitVar_Missing var_294
  loc_632D96: LitVar_Missing var_274
  loc_632D99: LitVar_Missing var_254
  loc_632D9C: LitStr "Atención"
  loc_632D9F: FStStrCopy var_234
  loc_632DA2: FLdRfVar var_234
  loc_632DA5: LitI4 2
  loc_632DAA: PopTmpLdAdStr var_230
  loc_632DAD: LitI2_Byte &H51
  loc_632DAF: PopTmpLdAd2 var_22A
  loc_632DB2: ImpAdLdRf MemVar_74C7D0
  loc_632DB5: NewIfNullPr clsMsg
  loc_632DB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_632DBD: LitVar_Missing var_3D8
  loc_632DC0: LitVar_Missing var_3B8
  loc_632DC3: FLdZeroAd var_378
  loc_632DC6: CVarStr var_398
  loc_632DC9: LitI4 &H44
  loc_632DCE: FLdZeroAd var_228
  loc_632DD1: CVarStr var_388
  loc_632DD4: ImpAdCallI2 MsgBox(, , , , )
  loc_632DD9: LitI4 6
  loc_632DDE: EqI4
  loc_632DDF: FFreeStr var_E4 = ""
  loc_632DE6: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_388 = "": var_398 = "": var_3B8 = ""
  loc_632E1F: BranchF loc_632E80
  loc_632E22: FLdRfVar var_DA
  loc_632E25: from_stack_1v = Proc_76_12_60B868()
  loc_632E2A: FLdI2 var_DA
  loc_632E2D: NotI4
  loc_632E2E: BranchF loc_632E32
  loc_632E31: ExitProcHresult
  loc_632E32: ILdRf Me
  loc_632E35: FStAdNoPop
  loc_632E39: ImpAdLdRf MemVar_7520D4
  loc_632E3C: NewIfNullPr Global
  loc_632E3F: Global.Unload from_stack_1
  loc_632E44: FFree1Ad var_3DC
  loc_632E47: LitI4 2
  loc_632E4C: FLdRfVar var_E4
  loc_632E4F: FLdRfVar var_3DC
  loc_632E52: ImpAdLdRf MemVar_7520D4
  loc_632E55: NewIfNullPr Global
  loc_632E58:  = Global.App
  loc_632E5D: FLdPr var_3DC
  loc_632E60:  = App.Path
  loc_632E65: ILdRf var_E4
  loc_632E68: LitStr "\shutdown.exe /L /R /Y /C /T:00"
  loc_632E6B: ConcatStr
  loc_632E6C: CVarStr var_98
  loc_632E6F: ImpAdCallFPR4 push Shell(, )
  loc_632E74: FStFPR8 var_3E4
  loc_632E77: FFree1Str var_E4
  loc_632E7A: FFree1Ad var_3DC
  loc_632E7D: FFree1Var var_98 = ""
  loc_632E80: ExitProcHresult
  loc_632E81: End
  loc_632E83: ExitProcHresult
End Sub

Private Sub Form_Load() '651FC0
  'Data Table: 427274
  loc_651D14: LitI2_Byte 0
  loc_651D16: FLdPrThis
  loc_651D17: VCallAd Control_ID_Command1
  loc_651D1A: FStAdFunc var_88
  loc_651D1D: FLdPr var_88
  loc_651D20: Me.Enabled = from_stack_1b
  loc_651D25: FFree1Ad var_88
  loc_651D28: LitVarI4
  loc_651D30: PopAdLdVar
  loc_651D31: FLdPrThis
  loc_651D32: VCallAd Control_ID_Tabla
  loc_651D35: FStAdFunc var_88
  loc_651D38: FLdPr var_88
  loc_651D3B: LateIdSt
  loc_651D40: FFree1Ad var_88
  loc_651D43: FLdPrThis
  loc_651D44: VCallAd Control_ID_Tabla
  loc_651D47: FStAdFunc var_88
  loc_651D4A: FLdPr var_88
  loc_651D4D: LateIdCall
  loc_651D55: FFree1Ad var_88
  loc_651D58: FLdRfVar var_A8
  loc_651D5B: from_stack_1v = Proc_76_13_6B2570()
  loc_651D60: FFree1Var var_A8 = ""
  loc_651D63: FLdRfVar var_1D8
  loc_651D66: LitVar_Missing var_1D4
  loc_651D69: LitVar_Missing var_1B4
  loc_651D6C: LitVar_Missing var_194
  loc_651D6F: LitVar_Missing var_174
  loc_651D72: LitVar_Missing var_154
  loc_651D75: LitVar_Missing var_134
  loc_651D78: LitVar_Missing var_114
  loc_651D7B: LitVar_Missing var_F4
  loc_651D7E: LitVar_Missing var_D4
  loc_651D81: LitVar_Missing var_A8
  loc_651D84: LitStr "Módulo"
  loc_651D87: FStStrCopy var_B4
  loc_651D8A: FLdRfVar var_B4
  loc_651D8D: LitI4 3
  loc_651D92: PopTmpLdAdStr var_B0
  loc_651D95: LitI2_Byte &H51
  loc_651D97: PopTmpLdAd2 var_AA
  loc_651D9A: ImpAdLdRf MemVar_74C7D0
  loc_651D9D: NewIfNullPr clsMsg
  loc_651DA0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_651DA5: ILdRf var_1D8
  loc_651DA8: LitStr ":"
  loc_651DAB: ConcatStr
  loc_651DAC: FStStrNoPop var_1DC
  loc_651DAF: FLdPrThis
  loc_651DB0: VCallAd Control_ID_Label8
  loc_651DB3: FStAdFunc var_88
  loc_651DB6: FLdPr var_88
  loc_651DB9: Me.Caption = from_stack_1
  loc_651DBE: FFreeStr var_B4 = "": var_1D8 = ""
  loc_651DC7: FFree1Ad var_88
  loc_651DCA: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_651DE1: FLdRfVar var_1D8
  loc_651DE4: LitVar_Missing var_1D4
  loc_651DE7: LitVar_Missing var_1B4
  loc_651DEA: LitVar_Missing var_194
  loc_651DED: LitVar_Missing var_174
  loc_651DF0: LitVar_Missing var_154
  loc_651DF3: LitVar_Missing var_134
  loc_651DF6: LitVar_Missing var_114
  loc_651DF9: LitVar_Missing var_F4
  loc_651DFC: LitVar_Missing var_D4
  loc_651DFF: LitVar_Missing var_A8
  loc_651E02: LitStr "Estado actual"
  loc_651E05: FStStrCopy var_B4
  loc_651E08: FLdRfVar var_B4
  loc_651E0B: LitI4 4
  loc_651E10: PopTmpLdAdStr var_B0
  loc_651E13: LitI2_Byte &H51
  loc_651E15: PopTmpLdAd2 var_AA
  loc_651E18: ImpAdLdRf MemVar_74C7D0
  loc_651E1B: NewIfNullPr clsMsg
  loc_651E1E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_651E23: ILdRf var_1D8
  loc_651E26: LitStr ":"
  loc_651E29: ConcatStr
  loc_651E2A: FStStrNoPop var_1DC
  loc_651E2D: FLdPrThis
  loc_651E2E: VCallAd Control_ID_Label9
  loc_651E31: FStAdFunc var_88
  loc_651E34: FLdPr var_88
  loc_651E37: Me.Caption = from_stack_1
  loc_651E3C: FFreeStr var_B4 = "": var_1D8 = ""
  loc_651E45: FFree1Ad var_88
  loc_651E48: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_651E5F: FLdRfVar var_1D8
  loc_651E62: LitVar_Missing var_1D4
  loc_651E65: LitVar_Missing var_1B4
  loc_651E68: LitVar_Missing var_194
  loc_651E6B: LitVar_Missing var_174
  loc_651E6E: LitVar_Missing var_154
  loc_651E71: LitVar_Missing var_134
  loc_651E74: LitVar_Missing var_114
  loc_651E77: LitVar_Missing var_F4
  loc_651E7A: LitVar_Missing var_D4
  loc_651E7D: LitVar_Missing var_A8
  loc_651E80: LitStr "&Aplicar"
  loc_651E83: FStStrCopy var_B4
  loc_651E86: FLdRfVar var_B4
  loc_651E89: LitI4 5
  loc_651E8E: PopTmpLdAdStr var_B0
  loc_651E91: LitI2_Byte &H51
  loc_651E93: PopTmpLdAd2 var_AA
  loc_651E96: ImpAdLdRf MemVar_74C7D0
  loc_651E99: NewIfNullPr clsMsg
  loc_651E9C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_651EA1: ILdRf var_1D8
  loc_651EA4: FLdPrThis
  loc_651EA5: VCallAd Control_ID_Command2
  loc_651EA8: FStAdFunc var_88
  loc_651EAB: FLdPr var_88
  loc_651EAE: Me.Caption = from_stack_1
  loc_651EB3: FFreeStr var_B4 = ""
  loc_651EBA: FFree1Ad var_88
  loc_651EBD: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_651ED4: FLdRfVar var_1D8
  loc_651ED7: LitVar_Missing var_1D4
  loc_651EDA: LitVar_Missing var_1B4
  loc_651EDD: LitVar_Missing var_194
  loc_651EE0: LitVar_Missing var_174
  loc_651EE3: LitVar_Missing var_154
  loc_651EE6: LitVar_Missing var_134
  loc_651EE9: LitVar_Missing var_114
  loc_651EEC: LitVar_Missing var_F4
  loc_651EEF: LitVar_Missing var_D4
  loc_651EF2: LitVar_Missing var_A8
  loc_651EF5: LitStr "Ac&eptar"
  loc_651EF8: FStStrCopy var_B4
  loc_651EFB: FLdRfVar var_B4
  loc_651EFE: LitI4 6
  loc_651F03: PopTmpLdAdStr var_B0
  loc_651F06: LitI2_Byte &H51
  loc_651F08: PopTmpLdAd2 var_AA
  loc_651F0B: ImpAdLdRf MemVar_74C7D0
  loc_651F0E: NewIfNullPr clsMsg
  loc_651F11: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_651F16: ILdRf var_1D8
  loc_651F19: FLdPrThis
  loc_651F1A: VCallAd Control_ID_Command1
  loc_651F1D: FStAdFunc var_88
  loc_651F20: FLdPr var_88
  loc_651F23: Me.Caption = from_stack_1
  loc_651F28: FFreeStr var_B4 = ""
  loc_651F2F: FFree1Ad var_88
  loc_651F32: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_651F49: FLdRfVar var_1D8
  loc_651F4C: LitVar_Missing var_1D4
  loc_651F4F: LitVar_Missing var_1B4
  loc_651F52: LitVar_Missing var_194
  loc_651F55: LitVar_Missing var_174
  loc_651F58: LitVar_Missing var_154
  loc_651F5B: LitVar_Missing var_134
  loc_651F5E: LitVar_Missing var_114
  loc_651F61: LitVar_Missing var_F4
  loc_651F64: LitVar_Missing var_D4
  loc_651F67: LitVar_Missing var_A8
  loc_651F6A: LitStr "&Cancelar"
  loc_651F6D: FStStrCopy var_B4
  loc_651F70: FLdRfVar var_B4
  loc_651F73: LitI4 7
  loc_651F78: PopTmpLdAdStr var_B0
  loc_651F7B: LitI2_Byte &H51
  loc_651F7D: PopTmpLdAd2 var_AA
  loc_651F80: ImpAdLdRf MemVar_74C7D0
  loc_651F83: NewIfNullPr clsMsg
  loc_651F86: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_651F8B: ILdRf var_1D8
  loc_651F8E: FLdPrThis
  loc_651F8F: VCallAd Control_ID_Command4
  loc_651F92: FStAdFunc var_88
  loc_651F95: FLdPr var_88
  loc_651F98: Me.Caption = from_stack_1
  loc_651F9D: FFreeStr var_B4 = ""
  loc_651FA4: FFree1Ad var_88
  loc_651FA7: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_651FBE: ExitProcHresult
End Sub

Private Sub Form_Activate() '5C8D90
  'Data Table: 427274
  loc_5C8D88: Call Tabla_UnknownEvent_8()
  loc_5C8D8D: ExitProcHresult
  loc_5C8D8E: Branch loc_5D8988
End Sub

Public Function dbGet() '427A38
  dbGet = db
End Function

Public Sub dbPut(Value) '427A47
  db = Value
End Sub

Public Sub dbSet(Value) '427A56
  db = Value
End Sub

Public Function RowGet() '427A65
  RowGet = Row
End Function

Public Sub RowPut(Value) '427A74
  Row = Value
End Sub

Private Function Proc_76_12_60B868() '60B868
  'Data Table: 427274
  loc_60B774: LitStr vbNullString
  loc_60B777: FStStrCopy var_8C
  loc_60B77A: LitI2_Byte 1
  loc_60B77C: FLdRfVar var_88
  loc_60B77F: FLdPrThis
  loc_60B780: VCallAd Control_ID_Tabla
  loc_60B783: FStAdFunc var_90
  loc_60B786: FLdPr var_90
  loc_60B789: LateIdLdVar var_A0 DispID_4 0
  loc_60B790: CI4Var
  loc_60B792: LitI4 1
  loc_60B797: SubI4
  loc_60B798: CI2I4
  loc_60B799: FFree1Ad var_90
  loc_60B79C: FFree1Var var_A0 = ""
  loc_60B79F: ForI2 var_A4
  loc_60B7A5: ILdRf var_8C
  loc_60B7A8: FLdI2 var_88
  loc_60B7AB: CI4UI1
  loc_60B7AC: CVarI4
  loc_60B7B0: PopAdLdVar
  loc_60B7B1: LitVarI4
  loc_60B7B9: PopAdLdVar
  loc_60B7BA: FLdPrThis
  loc_60B7BB: VCallAd Control_ID_Tabla
  loc_60B7BE: FStAdFunc var_90
  loc_60B7C1: FLdPr var_90
  loc_60B7C4: LateIdCallLdVar
  loc_60B7CE: CStrVarTmp
  loc_60B7CF: FStStrNoPop var_C8
  loc_60B7D2: ConcatStr
  loc_60B7D3: FStStr var_8C
  loc_60B7D6: FFree1Str var_C8
  loc_60B7D9: FFree1Ad var_90
  loc_60B7DC: FFree1Var var_A0 = ""
  loc_60B7DF: FLdRfVar var_88
  loc_60B7E2: NextI2 var_A4, loc_60B7A5
  loc_60B7E7: FLdRfVar var_CA
  loc_60B7EA: FLdRfVar var_8C
  loc_60B7ED: from_stack_2v = Proc_76_17_646A9C(from_stack_1v)
  loc_60B7F2: FLdI2 var_CA
  loc_60B7F5: NotI4
  loc_60B7F6: BranchF loc_60B804
  loc_60B7F9: LitI2_Byte 0
  loc_60B7FB: FStI2 var_86
  loc_60B7FE: ExitProcCbHresult
  loc_60B804: FLdRfVar var_CA
  loc_60B807: FLdRfVar var_8C
  loc_60B80A: FLdRfVar var_90
  loc_60B80D: ImpAdLdRf MemVar_74C760
  loc_60B810: NewIfNullPr Formx
  loc_60B813: from_stack_1v = Formx.global_4589716Get()
  loc_60B818: FLdPr var_90
  loc_60B81B: Call 0.Method_arg_23C ()
  loc_60B820: FLdI2 var_CA
  loc_60B823: NotI4
  loc_60B824: FFree1Ad var_90
  loc_60B827: BranchF loc_60B85B
  loc_60B82A: FLdRfVar var_A0
  loc_60B82D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_60B832: FLdRfVar var_A0
  loc_60B835: CBoolVarNull
  loc_60B837: FFree1Var var_A0 = ""
  loc_60B83A: BranchF loc_60B858
  loc_60B83D: ILdRf Me
  loc_60B840: FStAdNoPop
  loc_60B844: ImpAdLdRf MemVar_7520D4
  loc_60B847: NewIfNullPr Global
  loc_60B84A: Global.Unload from_stack_1
  loc_60B84F: FFree1Ad var_90
  loc_60B852: ExitProcCbHresult
  loc_60B858: Branch loc_60B804
  loc_60B85B: LitI2_Byte &HFF
  loc_60B85D: FStI2 var_86
  loc_60B860: ExitProcCbHresult
  loc_60B866: FStAdFunc var_400
End Function

Private Function Proc_76_13_6B2570() '6B2570
  'Data Table: 427274
  loc_6B1EB0: ZeroRetValVar
  loc_6B1EB2: OnErrorGoto loc_6B2452
  loc_6B1EB5: LitI2_Byte 1
  loc_6B1EB7: FStI2 var_9A
  loc_6B1EBA: FLdRfVar var_E4
  loc_6B1EBD: LitVar_Missing var_E0
  loc_6B1EC0: PopAdLdVar
  loc_6B1EC1: LitVar_Missing var_D0
  loc_6B1EC4: PopAdLdVar
  loc_6B1EC5: LitVar_Missing var_C0
  loc_6B1EC8: PopAdLdVar
  loc_6B1EC9: FLdRfVar var_AC
  loc_6B1ECC: FLdRfVar var_A8
  loc_6B1ECF: ImpAdLdRf MemVar_7520D4
  loc_6B1ED2: NewIfNullPr Global
  loc_6B1ED5:  = Global.App
  loc_6B1EDA: FLdPr var_A8
  loc_6B1EDD:  = App.Path
  loc_6B1EE2: ILdRf var_AC
  loc_6B1EE5: LitStr "\reporte.mdb"
  loc_6B1EE8: ConcatStr
  loc_6B1EE9: FStStrNoPop var_B0
  loc_6B1EEC: ImpAdLdRf MemVar_752164
  loc_6B1EEF: NewIfNullPr Me
  loc_6B1EF2: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6B1EF7: ILdRf var_E4
  loc_6B1EFA: FLdPr Me
  loc_6B1EFD: MemStAd
  loc_6B1F01: FFreeStr var_AC = ""
  loc_6B1F08: FFreeAd var_A8 = ""
  loc_6B1F0F: FLdRfVar var_A8
  loc_6B1F12: LitVar_Missing var_E0
  loc_6B1F15: PopAdLdVar
  loc_6B1F16: LitVar_Missing var_D0
  loc_6B1F19: PopAdLdVar
  loc_6B1F1A: LitVar_Missing var_C0
  loc_6B1F1D: PopAdLdVar
  loc_6B1F1E: LitStr "SELECT pos, descripcion From ModuleData GROUP BY pos, descripcion"
  loc_6B1F21: FLdPr Me
  loc_6B1F24: MemLdPr db
  loc_6B1F27: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6B1F2C: FLdZeroAd var_A8
  loc_6B1F2F: FStAdFunc var_98
  loc_6B1F32: FLdRfVar var_B0
  loc_6B1F35: LitVar_Missing var_1FC
  loc_6B1F38: LitVar_Missing var_1DC
  loc_6B1F3B: LitVar_Missing var_1BC
  loc_6B1F3E: LitVar_Missing var_19C
  loc_6B1F41: LitVar_Missing var_17C
  loc_6B1F44: LitVar_Missing var_15C
  loc_6B1F47: LitVar_Missing var_13C
  loc_6B1F4A: LitVar_Missing var_11C
  loc_6B1F4D: LitVar_Missing var_10C
  loc_6B1F50: LitVar_Missing var_FC
  loc_6B1F53: LitStr "Código"
  loc_6B1F56: FStStrCopy var_AC
  loc_6B1F59: FLdRfVar var_AC
  loc_6B1F5C: LitI4 8
  loc_6B1F61: PopTmpLdAdStr var_EC
  loc_6B1F64: LitI2_Byte &H51
  loc_6B1F66: PopTmpLdAd2 var_E6
  loc_6B1F69: ImpAdLdRf MemVar_74C7D0
  loc_6B1F6C: NewIfNullPr clsMsg
  loc_6B1F6F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B1F74: FLdZeroAd var_B0
  loc_6B1F77: CVarStr var_21C
  loc_6B1F7A: LitI4 9
  loc_6B1F7F: FLdRfVar var_20C
  loc_6B1F82: ImpAdCallFPR4  = Chr()
  loc_6B1F87: FLdRfVar var_20C
  loc_6B1F8A: ConcatVar var_22C
  loc_6B1F8E: FLdRfVar var_37C
  loc_6B1F91: LitVar_Missing var_378
  loc_6B1F94: LitVar_Missing var_358
  loc_6B1F97: LitVar_Missing var_338
  loc_6B1F9A: LitVar_Missing var_318
  loc_6B1F9D: LitVar_Missing var_2F8
  loc_6B1FA0: LitVar_Missing var_2D8
  loc_6B1FA3: LitVar_Missing var_2B8
  loc_6B1FA6: LitVar_Missing var_298
  loc_6B1FA9: LitVar_Missing var_278
  loc_6B1FAC: LitVar_Missing var_258
  loc_6B1FAF: LitStr "Módulo"
  loc_6B1FB2: FStStrCopy var_238
  loc_6B1FB5: FLdRfVar var_238
  loc_6B1FB8: LitI4 9
  loc_6B1FBD: PopTmpLdAdStr var_234
  loc_6B1FC0: LitI2_Byte &H51
  loc_6B1FC2: PopTmpLdAd2 var_22E
  loc_6B1FC5: ImpAdLdRf MemVar_74C7D0
  loc_6B1FC8: NewIfNullPr clsMsg
  loc_6B1FCB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B1FD0: FLdZeroAd var_37C
  loc_6B1FD3: CVarStr var_38C
  loc_6B1FD6: ConcatVar var_39C
  loc_6B1FDA: LitI4 9
  loc_6B1FDF: FLdRfVar var_3AC
  loc_6B1FE2: ImpAdCallFPR4  = Chr()
  loc_6B1FE7: FLdRfVar var_3AC
  loc_6B1FEA: ConcatVar var_3BC
  loc_6B1FEE: FLdRfVar var_50C
  loc_6B1FF1: LitVar_Missing var_508
  loc_6B1FF4: LitVar_Missing var_4E8
  loc_6B1FF7: LitVar_Missing var_4C8
  loc_6B1FFA: LitVar_Missing var_4A8
  loc_6B1FFD: LitVar_Missing var_488
  loc_6B2000: LitVar_Missing var_468
  loc_6B2003: LitVar_Missing var_448
  loc_6B2006: LitVar_Missing var_428
  loc_6B2009: LitVar_Missing var_408
  loc_6B200C: LitVar_Missing var_3E8
  loc_6B200F: LitStr "Valor"
  loc_6B2012: FStStrCopy var_3C8
  loc_6B2015: FLdRfVar var_3C8
  loc_6B2018: LitI4 &HA
  loc_6B201D: PopTmpLdAdStr var_3C4
  loc_6B2020: LitI2_Byte &H51
  loc_6B2022: PopTmpLdAd2 var_3BE
  loc_6B2025: ImpAdLdRf MemVar_74C7D0
  loc_6B2028: NewIfNullPr clsMsg
  loc_6B202B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B2030: FLdZeroAd var_50C
  loc_6B2033: CVarStr var_51C
  loc_6B2036: ConcatVar var_52C
  loc_6B203A: LitI4 9
  loc_6B203F: FLdRfVar var_53C
  loc_6B2042: ImpAdCallFPR4  = Chr()
  loc_6B2047: FLdRfVar var_53C
  loc_6B204A: ConcatVar var_54C
  loc_6B204E: FLdRfVar var_69C
  loc_6B2051: LitVar_Missing var_698
  loc_6B2054: LitVar_Missing var_678
  loc_6B2057: LitVar_Missing var_658
  loc_6B205A: LitVar_Missing var_638
  loc_6B205D: LitVar_Missing var_618
  loc_6B2060: LitVar_Missing var_5F8
  loc_6B2063: LitVar_Missing var_5D8
  loc_6B2066: LitVar_Missing var_5B8
  loc_6B2069: LitVar_Missing var_598
  loc_6B206C: LitVar_Missing var_578
  loc_6B206F: LitStr "Modo"
  loc_6B2072: FStStrCopy var_558
  loc_6B2075: FLdRfVar var_558
  loc_6B2078: LitI4 &HB
  loc_6B207D: PopTmpLdAdStr var_554
  loc_6B2080: LitI2_Byte &H51
  loc_6B2082: PopTmpLdAd2 var_54E
  loc_6B2085: ImpAdLdRf MemVar_74C7D0
  loc_6B2088: NewIfNullPr clsMsg
  loc_6B208B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B2090: FLdZeroAd var_69C
  loc_6B2093: CVarStr var_6AC
  loc_6B2096: ConcatVar var_6BC
  loc_6B209A: CStrVarTmp
  loc_6B209B: CVarStr var_6CC
  loc_6B209E: PopAdLdVar
  loc_6B209F: FLdPrThis
  loc_6B20A0: VCallAd Control_ID_Tabla
  loc_6B20A3: FStAdFunc var_A8
  loc_6B20A6: FLdPr var_A8
  loc_6B20A9: LateIdCall
  loc_6B20B1: FFreeStr var_AC = "": var_238 = "": var_3C8 = ""
  loc_6B20BC: FFree1Ad var_A8
  loc_6B20BF: FFreeVar var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_3BC = "": var_51C = "": var_52C = "": var_53C = "": var_578 = "": var_598 = "": var_5B8 = "": var_5D8 = "": var_5F8 = "": var_618 = "": var_638 = "": var_658 = "": var_678 = "": var_698 = "": var_54C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_20C = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_22C = "": var_38C = "": var_39C = "": var_3AC = "": var_3E8 = "": var_408 = "": var_428 = ""
  loc_6B212E: FLdPr var_98
  loc_6B2131: Me.MoveFirst
  loc_6B2136: FLdRfVar var_E6
  loc_6B2139: FLdPr var_98
  loc_6B213C:  = Me.EOF
  loc_6B2141: FLdI2 var_E6
  loc_6B2144: NotI4
  loc_6B2145: BranchF loc_6B22BD
  loc_6B2148: LitVarI2 var_FC, 1
  loc_6B214D: FLdI2 var_9A
  loc_6B2150: CI4UI1
  loc_6B2151: ImpAdLdRf MemVar_74BEAC
  loc_6B2154: CVarRef
  loc_6B2159: FLdRfVar var_10C
  loc_6B215C: ImpAdCallFPR4  = Mid(, , )
  loc_6B2161: FLdRfVar var_10C
  loc_6B2164: CStrVarTmp
  loc_6B2165: FStStr var_A0
  loc_6B2168: FFreeVar var_FC = ""
  loc_6B216F: FLdRfVar var_FC
  loc_6B2172: FLdRfVar var_E4
  loc_6B2175: LitVarI2 var_C0, 0
  loc_6B217A: PopAdLdVar
  loc_6B217B: FLdRfVar var_A8
  loc_6B217E: FLdPr var_98
  loc_6B2181:  = Me.Fields
  loc_6B2186: FLdPr var_A8
  loc_6B2189: from_stack_2 = Me.Item(from_stack_1)
  loc_6B218E: FLdPr var_E4
  loc_6B2191:  = Me.Value
  loc_6B2196: FLdRfVar var_AC
  loc_6B2199: ILdRf var_A0
  loc_6B219C: CI2Str
  loc_6B219E: PopTmpLdAd2 var_22E
  loc_6B21A1: FLdRfVar var_FC
  loc_6B21A4: FnCIntVar
  loc_6B21A6: PopTmpLdAd2 var_E6
  loc_6B21A9: from_stack_3v = Proc_76_14_60226C(from_stack_1v, from_stack_2v)
  loc_6B21AE: FLdZeroAd var_AC
  loc_6B21B1: FStStr var_A4
  loc_6B21B4: FFreeAd var_A8 = ""
  loc_6B21BB: FFreeVar var_FC = ""
  loc_6B21C2: FLdRfVar var_FC
  loc_6B21C5: FLdRfVar var_E4
  loc_6B21C8: LitVarI2 var_C0, 0
  loc_6B21CD: PopAdLdVar
  loc_6B21CE: FLdRfVar var_A8
  loc_6B21D1: FLdPr var_98
  loc_6B21D4:  = Me.Fields
  loc_6B21D9: FLdPr var_A8
  loc_6B21DC: from_stack_2 = Me.Item(from_stack_1)
  loc_6B21E1: FLdPr var_E4
  loc_6B21E4:  = Me.Value
  loc_6B21E9: FLdRfVar var_FC
  loc_6B21EC: LitI4 9
  loc_6B21F1: FLdRfVar var_10C
  loc_6B21F4: ImpAdCallFPR4  = Chr()
  loc_6B21F9: FLdRfVar var_10C
  loc_6B21FC: ConcatVar var_11C
  loc_6B2200: FLdRfVar var_13C
  loc_6B2203: FLdRfVar var_6D4
  loc_6B2206: LitVarI2 var_D0, 1
  loc_6B220B: PopAdLdVar
  loc_6B220C: FLdRfVar var_6D0
  loc_6B220F: FLdPr var_98
  loc_6B2212:  = Me.Fields
  loc_6B2217: FLdPr var_6D0
  loc_6B221A: from_stack_2 = Me.Item(from_stack_1)
  loc_6B221F: FLdPr var_6D4
  loc_6B2222:  = Me.Value
  loc_6B2227: FLdRfVar var_13C
  loc_6B222A: ConcatVar var_15C
  loc_6B222E: LitI4 9
  loc_6B2233: FLdRfVar var_17C
  loc_6B2236: ImpAdCallFPR4  = Chr()
  loc_6B223B: FLdRfVar var_17C
  loc_6B223E: ConcatVar var_19C
  loc_6B2242: ILdRf var_A0
  loc_6B2245: CVarStr var_E0
  loc_6B2248: ConcatVar var_1BC
  loc_6B224C: LitI4 9
  loc_6B2251: FLdRfVar var_1DC
  loc_6B2254: ImpAdCallFPR4  = Chr()
  loc_6B2259: FLdRfVar var_1DC
  loc_6B225C: ConcatVar var_1FC
  loc_6B2260: ILdRf var_A4
  loc_6B2263: CVarStr var_12C
  loc_6B2266: ConcatVar var_20C
  loc_6B226A: CStrVarTmp
  loc_6B226B: CVarStr var_21C
  loc_6B226E: PopAdLdVar
  loc_6B226F: FLdPrThis
  loc_6B2270: VCallAd Control_ID_Tabla
  loc_6B2273: FStAdFunc var_6D8
  loc_6B2276: FLdPr var_6D8
  loc_6B2279: LateIdCall
  loc_6B2281: FFreeAd var_A8 = "": var_E4 = "": var_6D0 = "": var_6D4 = ""
  loc_6B228E: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_20C = ""
  loc_6B22A9: FLdPr var_98
  loc_6B22AC: Me.MoveNext
  loc_6B22B1: FLdI2 var_9A
  loc_6B22B4: LitI2_Byte 1
  loc_6B22B6: AddI2
  loc_6B22B7: FStI2 var_9A
  loc_6B22BA: Branch loc_6B2136
  loc_6B22BD: LitVarI4
  loc_6B22C5: PopAdLdVar
  loc_6B22C6: LitVarI4
  loc_6B22CE: PopAdLdVar
  loc_6B22CF: FLdPrThis
  loc_6B22D0: VCallAd Control_ID_Tabla
  loc_6B22D3: FStAdFunc var_A8
  loc_6B22D6: FLdPr var_A8
  loc_6B22D9: LateIdCallSt
  loc_6B22E1: FFree1Ad var_A8
  loc_6B22E4: LitVarI4
  loc_6B22EC: PopAdLdVar
  loc_6B22ED: LitVarI4
  loc_6B22F5: PopAdLdVar
  loc_6B22F6: FLdPrThis
  loc_6B22F7: VCallAd Control_ID_Tabla
  loc_6B22FA: FStAdFunc var_A8
  loc_6B22FD: FLdPr var_A8
  loc_6B2300: LateIdCallSt
  loc_6B2308: FFree1Ad var_A8
  loc_6B230B: LitVarI4
  loc_6B2313: PopAdLdVar
  loc_6B2314: LitVarI4
  loc_6B231C: PopAdLdVar
  loc_6B231D: FLdPrThis
  loc_6B231E: VCallAd Control_ID_Tabla
  loc_6B2321: FStAdFunc var_A8
  loc_6B2324: FLdPr var_A8
  loc_6B2327: LateIdCallSt
  loc_6B232F: FFree1Ad var_A8
  loc_6B2332: LitVarI4
  loc_6B233A: PopAdLdVar
  loc_6B233B: LitVarI4
  loc_6B2343: PopAdLdVar
  loc_6B2344: FLdPrThis
  loc_6B2345: VCallAd Control_ID_Tabla
  loc_6B2348: FStAdFunc var_A8
  loc_6B234B: FLdPr var_A8
  loc_6B234E: LateIdCallSt
  loc_6B2356: FFree1Ad var_A8
  loc_6B2359: LitVarI4
  loc_6B2361: PopAdLdVar
  loc_6B2362: FLdPrThis
  loc_6B2363: VCallAd Control_ID_Tabla
  loc_6B2366: FStAdFunc var_A8
  loc_6B2369: FLdPr var_A8
  loc_6B236C: LateIdSt
  loc_6B2371: FFree1Ad var_A8
  loc_6B2374: LitVarI4
  loc_6B237C: PopAdLdVar
  loc_6B237D: LitVarI2 var_D0, 4
  loc_6B2382: PopAdLdVar
  loc_6B2383: FLdPrThis
  loc_6B2384: VCallAd Control_ID_Tabla
  loc_6B2387: FStAdFunc var_A8
  loc_6B238A: FLdPr var_A8
  loc_6B238D: LateIdCallSt
  loc_6B2395: FFree1Ad var_A8
  loc_6B2398: LitVarI4
  loc_6B23A0: PopAdLdVar
  loc_6B23A1: LitVarI2 var_D0, 4
  loc_6B23A6: PopAdLdVar
  loc_6B23A7: FLdPrThis
  loc_6B23A8: VCallAd Control_ID_Tabla
  loc_6B23AB: FStAdFunc var_A8
  loc_6B23AE: FLdPr var_A8
  loc_6B23B1: LateIdCallSt
  loc_6B23B9: FFree1Ad var_A8
  loc_6B23BC: LitVarI4
  loc_6B23C4: PopAdLdVar
  loc_6B23C5: LitVarI2 var_D0, 4
  loc_6B23CA: PopAdLdVar
  loc_6B23CB: FLdPrThis
  loc_6B23CC: VCallAd Control_ID_Tabla
  loc_6B23CF: FStAdFunc var_A8
  loc_6B23D2: FLdPr var_A8
  loc_6B23D5: LateIdCallSt
  loc_6B23DD: FFree1Ad var_A8
  loc_6B23E0: LitVarI4
  loc_6B23E8: PopAdLdVar
  loc_6B23E9: LitVarI2 var_D0, 4
  loc_6B23EE: PopAdLdVar
  loc_6B23EF: FLdPrThis
  loc_6B23F0: VCallAd Control_ID_Tabla
  loc_6B23F3: FStAdFunc var_A8
  loc_6B23F6: FLdPr var_A8
  loc_6B23F9: LateIdCallSt
  loc_6B2401: FFree1Ad var_A8
  loc_6B2404: LitVarI4
  loc_6B240C: PopAdLdVar
  loc_6B240D: LitVarI2 var_D0, 4
  loc_6B2412: PopAdLdVar
  loc_6B2413: FLdPrThis
  loc_6B2414: VCallAd Control_ID_Tabla
  loc_6B2417: FStAdFunc var_A8
  loc_6B241A: FLdPr var_A8
  loc_6B241D: LateIdCallSt
  loc_6B2425: FFree1Ad var_A8
  loc_6B2428: LitVarI4
  loc_6B2430: PopAdLdVar
  loc_6B2431: LitVarI2 var_D0, 4
  loc_6B2436: PopAdLdVar
  loc_6B2437: FLdPrThis
  loc_6B2438: VCallAd Control_ID_Tabla
  loc_6B243B: FStAdFunc var_A8
  loc_6B243E: FLdPr var_A8
  loc_6B2441: LateIdCallSt
  loc_6B2449: FFree1Ad var_A8
  loc_6B244C: ExitProcCbHresult
  loc_6B2452: FLdRfVar var_EC
  loc_6B2455: ImpAdCallI2 Err 'rtcErrObj
  loc_6B245A: FStAdFunc var_A8
  loc_6B245D: FLdPr var_A8
  loc_6B2460:  = Err.Number
  loc_6B2465: ILdRf var_EC
  loc_6B2468: LitI4 &HC06
  loc_6B246D: EqI4
  loc_6B246E: FFree1Ad var_A8
  loc_6B2471: BranchF loc_6B24F4
  loc_6B2474: FLdRfVar var_B0
  loc_6B2477: LitVar_Missing var_1FC
  loc_6B247A: LitVar_Missing var_1DC
  loc_6B247D: LitVar_Missing var_1BC
  loc_6B2480: LitVar_Missing var_19C
  loc_6B2483: LitVar_Missing var_17C
  loc_6B2486: LitVar_Missing var_15C
  loc_6B2489: LitVar_Missing var_13C
  loc_6B248C: LitVar_Missing var_11C
  loc_6B248F: LitVar_Missing var_10C
  loc_6B2492: LitVar_Missing var_FC
  loc_6B2495: LitStr "No se encuentra la tabla ModuleData en la base de datos Reporte.mdb"
  loc_6B2498: FStStrCopy var_AC
  loc_6B249B: FLdRfVar var_AC
  loc_6B249E: LitI4 &HC
  loc_6B24A3: PopTmpLdAdStr var_EC
  loc_6B24A6: LitI2_Byte &H51
  loc_6B24A8: PopTmpLdAd2 var_E6
  loc_6B24AB: ImpAdLdRf MemVar_74C7D0
  loc_6B24AE: NewIfNullPr clsMsg
  loc_6B24B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B24B6: LitVar_Missing var_258
  loc_6B24B9: LitVar_Missing var_22C
  loc_6B24BC: LitVar_Missing var_21C
  loc_6B24BF: LitI4 &H40
  loc_6B24C4: FLdZeroAd var_B0
  loc_6B24C7: CVarStr var_20C
  loc_6B24CA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B24CF: FFree1Str var_AC
  loc_6B24D2: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = ""
  loc_6B24F1: Branch loc_6B256A
  loc_6B24F4: LitVar_Missing var_19C
  loc_6B24F7: LitVar_Missing var_17C
  loc_6B24FA: LitVar_Missing var_15C
  loc_6B24FD: LitI4 0
  loc_6B2502: FLdRfVar var_EC
  loc_6B2505: ImpAdCallI2 Err 'rtcErrObj
  loc_6B250A: FStAdFunc var_A8
  loc_6B250D: FLdPr var_A8
  loc_6B2510:  = Err.Number
  loc_6B2515: ILdRf var_EC
  loc_6B2518: CVarI4
  loc_6B251C: LitI4 &HD
  loc_6B2521: FLdRfVar var_FC
  loc_6B2524: ImpAdCallFPR4  = Chr()
  loc_6B2529: FLdRfVar var_FC
  loc_6B252C: ConcatVar var_10C
  loc_6B2530: FLdRfVar var_AC
  loc_6B2533: ImpAdCallI2 Err 'rtcErrObj
  loc_6B2538: FStAdFunc var_E4
  loc_6B253B: FLdPr var_E4
  loc_6B253E:  = Err.Description
  loc_6B2543: FLdZeroAd var_AC
  loc_6B2546: CVarStr var_11C
  loc_6B2549: ConcatVar var_13C
  loc_6B254D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B2552: FFreeAd var_A8 = ""
  loc_6B2559: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_17C = ""
  loc_6B256A: ExitProcCbHresult
End Function

Private Function Proc_76_14_60226C(arg_C, arg_10) '60226C
  'Data Table: 427274
  loc_6021B4: ZeroRetVal
  loc_6021B6: FLdRfVar var_D8
  loc_6021B9: LitVar_Missing var_D4
  loc_6021BC: PopAdLdVar
  loc_6021BD: LitVar_Missing var_C4
  loc_6021C0: PopAdLdVar
  loc_6021C1: LitVar_Missing var_B4
  loc_6021C4: PopAdLdVar
  loc_6021C5: LitStr "SELECT descvalor From ModuleData where pos = "
  loc_6021C8: ILdI2 arg_C
  loc_6021CB: CStrUI1
  loc_6021CD: FStStrNoPop var_90
  loc_6021D0: ConcatStr
  loc_6021D1: FStStrNoPop var_94
  loc_6021D4: LitStr " and valor = "
  loc_6021D7: ConcatStr
  loc_6021D8: FStStrNoPop var_98
  loc_6021DB: ILdI2 arg_10
  loc_6021DE: CStrUI1
  loc_6021E0: FStStrNoPop var_9C
  loc_6021E3: ConcatStr
  loc_6021E4: FStStrNoPop var_A0
  loc_6021E7: LitStr vbNullString
  loc_6021EA: ConcatStr
  loc_6021EB: FStStrNoPop var_A4
  loc_6021EE: FLdPr Me
  loc_6021F1: MemLdPr db
  loc_6021F4: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6021F9: FLdZeroAd var_D8
  loc_6021FC: FStAdFunc var_8C
  loc_6021FF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_60220E: FLdRfVar var_DC
  loc_602211: FLdPr var_8C
  loc_602214:  = Me.RecordCount
  loc_602219: ILdRf var_DC
  loc_60221C: LitI4 0
  loc_602221: GtI4
  loc_602222: BranchF loc_602260
  loc_602225: FLdRfVar var_F0
  loc_602228: FLdRfVar var_E0
  loc_60222B: LitVarI2 var_B4, 0
  loc_602230: PopAdLdVar
  loc_602231: FLdRfVar var_D8
  loc_602234: FLdPr var_8C
  loc_602237:  = Me.Fields
  loc_60223C: FLdPr var_D8
  loc_60223F: from_stack_2 = Me.Item(from_stack_1)
  loc_602244: FLdPr var_E0
  loc_602247:  = Me.Value
  loc_60224C: FLdRfVar var_F0
  loc_60224F: CStrVarTmp
  loc_602250: FStStr var_88
  loc_602253: FFreeAd var_D8 = ""
  loc_60225A: FFree1Var var_F0 = ""
  loc_60225D: Branch loc_602266
  loc_602260: LitStr " "
  loc_602263: FStStrCopy var_88
  loc_602266: ExitProcCbHresult
End Function

Private Function Proc_76_15_5FACC0(arg_C, arg_10) '5FACC0
  'Data Table: 427274
  loc_5FAC10: FLdRfVar var_D4
  loc_5FAC13: LitVar_Missing var_D0
  loc_5FAC16: PopAdLdVar
  loc_5FAC17: LitVar_Missing var_C0
  loc_5FAC1A: PopAdLdVar
  loc_5FAC1B: LitVar_Missing var_B0
  loc_5FAC1E: PopAdLdVar
  loc_5FAC1F: LitStr "SELECT valor From ModuleData where pos = "
  loc_5FAC22: ILdI2 arg_C
  loc_5FAC25: CStrUI1
  loc_5FAC27: FStStrNoPop var_90
  loc_5FAC2A: ConcatStr
  loc_5FAC2B: FStStrNoPop var_94
  loc_5FAC2E: LitStr " and descvalor = '"
  loc_5FAC31: ConcatStr
  loc_5FAC32: FStStrNoPop var_98
  loc_5FAC35: ILdI4 arg_10
  loc_5FAC38: ConcatStr
  loc_5FAC39: FStStrNoPop var_9C
  loc_5FAC3C: LitStr "'"
  loc_5FAC3F: ConcatStr
  loc_5FAC40: FStStrNoPop var_A0
  loc_5FAC43: FLdPr Me
  loc_5FAC46: MemLdPr db
  loc_5FAC49: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_5FAC4E: FLdZeroAd var_D4
  loc_5FAC51: FStAdFunc var_8C
  loc_5FAC54: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_5FAC61: FLdRfVar var_D8
  loc_5FAC64: FLdPr var_8C
  loc_5FAC67:  = Me.RecordCount
  loc_5FAC6C: ILdRf var_D8
  loc_5FAC6F: LitI4 0
  loc_5FAC74: GtI4
  loc_5FAC75: BranchF loc_5FACB3
  loc_5FAC78: FLdRfVar var_EC
  loc_5FAC7B: FLdRfVar var_DC
  loc_5FAC7E: LitVarI2 var_B0, 0
  loc_5FAC83: PopAdLdVar
  loc_5FAC84: FLdRfVar var_D4
  loc_5FAC87: FLdPr var_8C
  loc_5FAC8A:  = Me.Fields
  loc_5FAC8F: FLdPr var_D4
  loc_5FAC92: from_stack_2 = Me.Item(from_stack_1)
  loc_5FAC97: FLdPr var_DC
  loc_5FAC9A:  = Me.Value
  loc_5FAC9F: FLdRfVar var_EC
  loc_5FACA2: CI2Var
  loc_5FACA3: FStI2 var_86
  loc_5FACA6: FFreeAd var_D4 = ""
  loc_5FACAD: FFree1Var var_EC = ""
  loc_5FACB0: Branch loc_5FACB8
  loc_5FACB3: LitI2_Byte 0
  loc_5FACB5: FStI2 var_86
  loc_5FACB8: ExitProcCbHresult
End Function

Private Function Proc_76_16_6047C0(arg_C) '6047C0
  'Data Table: 427274
  loc_6046F8: ZeroRetVal
  loc_6046FA: FLdRfVar var_CC
  loc_6046FD: LitVar_Missing var_C8
  loc_604700: PopAdLdVar
  loc_604701: LitVar_Missing var_B8
  loc_604704: PopAdLdVar
  loc_604705: LitVar_Missing var_A8
  loc_604708: PopAdLdVar
  loc_604709: LitStr "SELECT valor, descvalor From ModuleData where pos = "
  loc_60470C: ILdI2 arg_C
  loc_60470F: CStrUI1
  loc_604711: FStStrNoPop var_90
  loc_604714: ConcatStr
  loc_604715: FStStrNoPop var_94
  loc_604718: LitStr " order by valor "
  loc_60471B: ConcatStr
  loc_60471C: FStStrNoPop var_98
  loc_60471F: FLdPr Me
  loc_604722: MemLdPr db
  loc_604725: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_60472A: FLdZeroAd var_CC
  loc_60472D: FStAdFunc var_8C
  loc_604730: FFreeStr var_90 = "": var_94 = ""
  loc_604739: FLdPrThis
  loc_60473A: VCallAd Control_ID_Combo1
  loc_60473D: FStAdFunc var_CC
  loc_604740: FLdPr var_CC
  loc_604743: Me.Clear
  loc_604748: FFree1Ad var_CC
  loc_60474B: FLdRfVar var_CE
  loc_60474E: FLdPr var_8C
  loc_604751:  = Me.EOF
  loc_604756: FLdI2 var_CE
  loc_604759: NotI4
  loc_60475A: BranchF loc_6047B8
  loc_60475D: LitVar_Missing var_B8
  loc_604760: PopAdLdVar
  loc_604761: FLdRfVar var_E4
  loc_604764: FLdRfVar var_D4
  loc_604767: LitVarI2 var_A8, 1
  loc_60476C: PopAdLdVar
  loc_60476D: FLdRfVar var_CC
  loc_604770: FLdPr var_8C
  loc_604773:  = Me.Fields
  loc_604778: FLdPr var_CC
  loc_60477B: from_stack_2 = Me.Item(from_stack_1)
  loc_604780: FLdPr var_D4
  loc_604783:  = Me.Value
  loc_604788: FLdRfVar var_E4
  loc_60478B: CStrVarVal var_90
  loc_60478F: FLdPrThis
  loc_604790: VCallAd Control_ID_Combo1
  loc_604793: FStAdFunc var_E8
  loc_604796: FLdPr var_E8
  loc_604799: Me.AddItem from_stack_1, from_stack_2
  loc_60479E: FFree1Str var_90
  loc_6047A1: FFreeAd var_CC = "": var_D4 = ""
  loc_6047AA: FFree1Var var_E4 = ""
  loc_6047AD: FLdPr var_8C
  loc_6047B0: Me.MoveNext
  loc_6047B5: Branch loc_60474B
  loc_6047B8: ExitProcCbHresult
End Function

Private Function Proc_76_17_646A9C(arg_C) '646A9C
  'Data Table: 427274
  loc_6468CC: LitVarI2 var_B8, 1
  loc_6468D1: LitI4 4
  loc_6468D6: ILdRf arg_C
  loc_6468D9: CVarRef
  loc_6468DE: FLdRfVar var_C8
  loc_6468E1: ImpAdCallFPR4  = Mid(, , )
  loc_6468E6: FLdRfVar var_C8
  loc_6468E9: LitVarStr var_D8, "1"
  loc_6468EE: HardType
  loc_6468EF: EqVar var_E8
  loc_6468F3: LitVarI2 var_118, 1
  loc_6468F8: LitI4 &HC
  loc_6468FD: ILdRf arg_C
  loc_646900: CVarRef
  loc_646905: FLdRfVar var_128
  loc_646908: ImpAdCallFPR4  = Mid(, , )
  loc_64690D: FLdRfVar var_128
  loc_646910: LitVarStr var_138, "1"
  loc_646915: HardType
  loc_646916: EqVar var_148
  loc_64691A: AndVar var_158
  loc_64691E: CBoolVarNull
  loc_646920: FFreeVar var_B8 = "": var_C8 = "": var_118 = ""
  loc_64692B: BranchF loc_646A91
  loc_64692E: FLdRfVar var_1D8
  loc_646931: LitVar_Missing var_1D4
  loc_646934: LitVar_Missing var_1B4
  loc_646937: LitVar_Missing var_194
  loc_64693A: LitVar_Missing var_158
  loc_64693D: LitVar_Missing var_148
  loc_646940: LitVar_Missing var_128
  loc_646943: LitVar_Missing var_118
  loc_646946: LitVar_Missing var_E8
  loc_646949: LitVar_Missing var_C8
  loc_64694C: LitVar_Missing var_B8
  loc_64694F: LitStr "No se puede habilitar REDXXI y ESSO Conectividad."
  loc_646952: FStStrCopy var_164
  loc_646955: FLdRfVar var_164
  loc_646958: LitI4 &HD
  loc_64695D: PopTmpLdAdStr var_160
  loc_646960: LitI2_Byte &H51
  loc_646962: PopTmpLdAd2 var_15A
  loc_646965: ImpAdLdRf MemVar_74C7D0
  loc_646968: NewIfNullPr clsMsg
  loc_64696B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_646970: LitI4 &HD
  loc_646975: FLdRfVar var_1E8
  loc_646978: ImpAdCallFPR4  = Chr()
  loc_64697D: FLdRfVar var_358
  loc_646980: LitVar_Missing var_354
  loc_646983: LitVar_Missing var_334
  loc_646986: LitVar_Missing var_314
  loc_646989: LitVar_Missing var_2F4
  loc_64698C: LitVar_Missing var_2D4
  loc_64698F: LitVar_Missing var_2B4
  loc_646992: LitVar_Missing var_294
  loc_646995: LitVar_Missing var_274
  loc_646998: LitVar_Missing var_254
  loc_64699B: LitVar_Missing var_234
  loc_64699E: LitStr "Deshabilite alguna de las dos opciones."
  loc_6469A1: FStStrCopy var_214
  loc_6469A4: FLdRfVar var_214
  loc_6469A7: LitI4 &HE
  loc_6469AC: PopTmpLdAdStr var_210
  loc_6469AF: LitI2_Byte &H51
  loc_6469B1: PopTmpLdAd2 var_20A
  loc_6469B4: ImpAdLdRf MemVar_74C7D0
  loc_6469B7: NewIfNullPr clsMsg
  loc_6469BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6469BF: FLdRfVar var_4C8
  loc_6469C2: LitVar_Missing var_4C4
  loc_6469C5: LitVar_Missing var_4A4
  loc_6469C8: LitVar_Missing var_484
  loc_6469CB: LitVar_Missing var_464
  loc_6469CE: LitVar_Missing var_444
  loc_6469D1: LitVar_Missing var_424
  loc_6469D4: LitVar_Missing var_404
  loc_6469D7: LitVar_Missing var_3E4
  loc_6469DA: LitVar_Missing var_3C4
  loc_6469DD: LitVar_Missing var_3A4
  loc_6469E0: LitStr "Aviso"
  loc_6469E3: FStStrCopy var_384
  loc_6469E6: FLdRfVar var_384
  loc_6469E9: LitI4 &HF
  loc_6469EE: PopTmpLdAdStr var_380
  loc_6469F1: LitI2_Byte &H51
  loc_6469F3: PopTmpLdAd2 var_37A
  loc_6469F6: ImpAdLdRf MemVar_74C7D0
  loc_6469F9: NewIfNullPr clsMsg
  loc_6469FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_646A01: LitVar_Missing var_518
  loc_646A04: LitVar_Missing var_4F8
  loc_646A07: FLdZeroAd var_4C8
  loc_646A0A: CVarStr var_4D8
  loc_646A0D: LitI4 &H40
  loc_646A12: FLdZeroAd var_1D8
  loc_646A15: CVarStr var_1F8
  loc_646A18: FLdRfVar var_1E8
  loc_646A1B: AddVar var_208
  loc_646A1F: FLdZeroAd var_358
  loc_646A22: CVarStr var_368
  loc_646A25: AddVar var_378
  loc_646A29: ImpAdCallFPR4 MsgBox(, , , , )
  loc_646A2E: FFreeStr var_164 = "": var_214 = ""
  loc_646A37: FFreeVar var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_378 = "": var_4D8 = "": var_4F8 = "": var_518 = "": var_B8 = "": var_C8 = "": var_E8 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F8 = "": var_1E8 = "": var_234 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_208 = "": var_368 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_404 = "": var_424 = ""
  loc_646A86: LitI2_Byte 0
  loc_646A88: FStI2 var_86
  loc_646A8B: ExitProcCbHresult
  loc_646A91: LitI2_Byte &HFF
  loc_646A93: FStI2 var_86
  loc_646A96: ExitProcCbHresult
End Function
