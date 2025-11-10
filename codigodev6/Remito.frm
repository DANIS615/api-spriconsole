VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWow64\MSFLXGRD.OCX"
Begin VB.Form Remito
  Caption = "Remito"
  BackColor = &H8000000A&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4605
  ClientHeight = 5550
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton Command4
    Caption = "Fecha y Hora"
    Left = 120
    Top = 960
    Width = 1455
    Height = 375
    TabIndex = 6
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
  Begin VB.TextBox NroRemito
    Left = 1680
    Top = 1440
    Width = 2415
    Height = 375
    TabIndex = 4
    MaxLength = 12
  End
  Begin VB.CommandButton Command3
    Caption = "&Aceptar"
    Left = 1560
    Top = 4800
    Width = 1455
    Height = 495
    TabIndex = 3
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
  Begin MSFlexGridLib.MSFlexGrid TablaProd
    Left = 240
    Top = 2160
    Width = 4095
    Height = 2300
    TabIndex = 2
    OleObjectBlob = "Remito.frx":0000
  End
  Begin VB.CommandButton Command1
    Caption = "Command1"
    Left = 120
    Top = 2040
    Width = 4335
    Height = 2535
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label fecha
    BackColor = &H80000005&
    Left = 1680
    Top = 960
    Width = 2415
    Height = 375
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
  End
  Begin VB.Label Label5
    Caption = "Nro. Remito"
    Left = 240
    Top = 1560
    Width = 1215
    Height = 255
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
  Begin VB.Label Label4
    Caption = "Datos del Remito"
    Left = 120
    Top = 120
    Width = 4335
    Height = 495
    TabIndex = 1
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "Remito"

Public Flag As Boolean


Private Sub Form_Load() '643340
  'Data Table: 418758
  loc_6430EC: LitVarI2 var_A8, 12
  loc_6430F1: PopAdLdVar
  loc_6430F2: FLdPrThis
  loc_6430F3: VCallAd Control_ID_TablaProd
  loc_6430F6: FStAdFunc var_88
  loc_6430F9: FLdPr var_88
  loc_6430FC: LateIdLdVar var_98 DispID_-512 -1
  loc_643103: CastAdVar Me
  loc_643107: FStAdFunc var_AC
  loc_64310A: FLdPr var_AC
  loc_64310D: LateIdSt
  loc_643112: FFreeAd var_88 = ""
  loc_643119: FFree1Var var_98 = ""
  loc_64311C: LitVarI4
  loc_643124: PopAdLdVar
  loc_643125: FLdPrThis
  loc_643126: VCallAd Control_ID_TablaProd
  loc_643129: FStAdFunc var_88
  loc_64312C: FLdPr var_88
  loc_64312F: LateIdSt
  loc_643134: FFree1Ad var_88
  loc_643137: LitVarI4
  loc_64313F: PopAdLdVar
  loc_643140: LitVarI2 var_BC, 4
  loc_643145: PopAdLdVar
  loc_643146: FLdPrThis
  loc_643147: VCallAd Control_ID_TablaProd
  loc_64314A: FStAdFunc var_88
  loc_64314D: FLdPr var_88
  loc_643150: LateIdCallSt
  loc_643158: FFree1Ad var_88
  loc_64315B: LitVarI4
  loc_643163: PopAdLdVar
  loc_643164: LitVarI2 var_BC, 4
  loc_643169: PopAdLdVar
  loc_64316A: FLdPrThis
  loc_64316B: VCallAd Control_ID_TablaProd
  loc_64316E: FStAdFunc var_88
  loc_643171: FLdPr var_88
  loc_643174: LateIdCallSt
  loc_64317C: FFree1Ad var_88
  loc_64317F: LitVarI4
  loc_643187: PopAdLdVar
  loc_643188: LitVarI4
  loc_643190: PopAdLdVar
  loc_643191: FLdPrThis
  loc_643192: VCallAd Control_ID_TablaProd
  loc_643195: FStAdFunc var_88
  loc_643198: FLdPr var_88
  loc_64319B: LateIdCallSt
  loc_6431A3: FFree1Ad var_88
  loc_6431A6: LitVarI4
  loc_6431AE: PopAdLdVar
  loc_6431AF: LitVarI4
  loc_6431B7: PopAdLdVar
  loc_6431B8: FLdPrThis
  loc_6431B9: VCallAd Control_ID_TablaProd
  loc_6431BC: FStAdFunc var_88
  loc_6431BF: FLdPr var_88
  loc_6431C2: LateIdCallSt
  loc_6431CA: FFree1Ad var_88
  loc_6431CD: LitVarI4
  loc_6431D5: PopAdLdVar
  loc_6431D6: LitVarI4
  loc_6431DE: PopAdLdVar
  loc_6431DF: LitVarStr var_CC, "Producto"
  loc_6431E4: PopAdLdVar
  loc_6431E5: FLdPrThis
  loc_6431E6: VCallAd Control_ID_TablaProd
  loc_6431E9: FStAdFunc var_88
  loc_6431EC: FLdPr var_88
  loc_6431EF: LateIdCallSt
  loc_6431F7: FFree1Ad var_88
  loc_6431FA: LitVarI4
  loc_643202: PopAdLdVar
  loc_643203: LitVarI4
  loc_64320B: PopAdLdVar
  loc_64320C: LitVarStr var_CC, "Volumen"
  loc_643211: PopAdLdVar
  loc_643212: FLdPrThis
  loc_643213: VCallAd Control_ID_TablaProd
  loc_643216: FStAdFunc var_88
  loc_643219: FLdPr var_88
  loc_64321C: LateIdCallSt
  loc_643224: FFree1Ad var_88
  loc_643227: LitVarI4
  loc_64322F: PopAdLdVar
  loc_643230: FLdPrThis
  loc_643231: VCallAd Control_ID_TablaProd
  loc_643234: FStAdFunc var_88
  loc_643237: FLdPr var_88
  loc_64323A: LateIdSt
  loc_64323F: FFree1Ad var_88
  loc_643242: LitVarI4
  loc_64324A: PopAdLdVar
  loc_64324B: FLdPrThis
  loc_64324C: VCallAd Control_ID_TablaProd
  loc_64324F: FStAdFunc var_88
  loc_643252: FLdPr var_88
  loc_643255: LateIdSt
  loc_64325A: FFree1Ad var_88
  loc_64325D: LitVar_FALSE
  loc_643261: PopAdLdVar
  loc_643262: FLdPrThis
  loc_643263: VCallAd Control_ID_TablaProd
  loc_643266: FStAdFunc var_88
  loc_643269: FLdPr var_88
  loc_64326C: LateIdLdVar var_98 DispID_-512 -1
  loc_643273: CastAdVar Me
  loc_643277: FStAdFunc var_AC
  loc_64327A: FLdPr var_AC
  loc_64327D: LateIdSt
  loc_643282: FFreeAd var_88 = ""
  loc_643289: FFree1Var var_98 = ""
  loc_64328C: LitVarI2 var_CC, 1
  loc_643291: FLdRfVar var_DC
  loc_643294: FLdRfVar var_DE
  loc_643297: ImpAdLdRf MemVar_74A220
  loc_64329A: NewIfNullPr clsProducts
  loc_64329D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6432A2: FLdI2 var_DE
  loc_6432A5: CVarI2 var_BC
  loc_6432A8: ForVar var_100
  loc_6432AE: FLdRfVar var_104
  loc_6432B1: FLdRfVar var_DC
  loc_6432B4: CI2Var
  loc_6432B5: ImpAdLdRf MemVar_74A220
  loc_6432B8: NewIfNullPr clsProducts
  loc_6432C0: FLdZeroAd var_104
  loc_6432C3: CVarStr var_98
  loc_6432C6: PopAdLdVar
  loc_6432C7: FLdPrThis
  loc_6432C8: VCallAd Control_ID_TablaProd
  loc_6432CB: FStAdFunc var_88
  loc_6432CE: FLdPr var_88
  loc_6432D1: LateIdCall
  loc_6432D9: FFree1Ad var_88
  loc_6432DC: FFree1Var var_98 = ""
  loc_6432DF: FLdRfVar var_DC
  loc_6432E2: CI4Var
  loc_6432E4: CVarI4
  loc_6432E8: PopAdLdVar
  loc_6432E9: LitVarI4
  loc_6432F1: PopAdLdVar
  loc_6432F2: LitVarStr var_CC, "000000"
  loc_6432F7: PopAdLdVar
  loc_6432F8: FLdPrThis
  loc_6432F9: VCallAd Control_ID_TablaProd
  loc_6432FC: FStAdFunc var_88
  loc_6432FF: FLdPr var_88
  loc_643302: LateIdCallSt
  loc_64330A: FFree1Ad var_88
  loc_64330D: FLdRfVar var_DC
  loc_643310: NextStepVar var_100
  loc_643316: LitStr "000000000000"
  loc_643319: FLdPrThis
  loc_64331A: VCallAd Control_ID_NroRemito
  loc_64331D: FStAdFunc var_88
  loc_643320: FLdPr var_88
  loc_643323: Me.Text = from_stack_1
  loc_643328: FFree1Ad var_88
  loc_64332B: ILdRf Me
  loc_64332E: CastAd
  loc_643331: FStAdFunc var_88
  loc_643334: FLdRfVar var_88
  loc_643337: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_64333C: FFree1Ad var_88
  loc_64333F: ExitProcHresult
End Sub

Private Sub Form_Activate() '612600
  'Data Table: 418758
  loc_6124F4: LitVarI2 var_A0, 10
  loc_6124F9: PopAdLdVar
  loc_6124FA: FLdRfVar var_90
  loc_6124FD: FLdPrThis
  loc_6124FE: VCallAd Control_ID_Command4
  loc_612501: FStAdFunc var_8C
  loc_612504: FLdPr var_8C
  loc_612507:  = Me.Font
  loc_61250C: FLdPr var_90
  loc_61250F: LateIdSt
  loc_612514: FFreeAd var_8C = ""
  loc_61251B: LitI2_Byte &HFF
  loc_61251D: FLdPrThis
  loc_61251E: VCallAd Control_ID_Command4
  loc_612521: FStAdFunc var_8C
  loc_612524: FLdPr var_8C
  loc_612527: Me.Enabled = from_stack_1b
  loc_61252C: FFree1Ad var_8C
  loc_61252F: LitI2_Byte &HFF
  loc_612531: FLdPrThis
  loc_612532: VCallAd Control_ID_fecha
  loc_612535: FStAdFunc var_8C
  loc_612538: FLdPr var_8C
  loc_61253B: Me.Enabled = from_stack_1b
  loc_612540: FFree1Ad var_8C
  loc_612543: LitI2_Byte &HFF
  loc_612545: FLdPrThis
  loc_612546: VCallAd Control_ID_NroRemito
  loc_612549: FStAdFunc var_8C
  loc_61254C: FLdPr var_8C
  loc_61254F: Me.Enabled = from_stack_1b
  loc_612554: FFree1Ad var_8C
  loc_612557: FLdPr Me
  loc_61255A: MemLdI2 Flag
  loc_61255D: NotI4
  loc_61255E: BranchF loc_6125FD
  loc_612561: FLdRfVar var_A2
  loc_612564: FLdRfVar var_88
  loc_612567: FLdRfVar var_8C
  loc_61256A: ImpAdLdRf MemVar_74C760
  loc_61256D: NewIfNullPr Formx
  loc_612570: from_stack_1v = Formx.global_4589716Get()
  loc_612575: FLdPr var_8C
  loc_612578: Call 0.Method_arg_338 ()
  loc_61257D: FLdI2 var_A2
  loc_612580: NotI4
  loc_612581: FFree1Ad var_8C
  loc_612584: BranchF loc_6125B3
  loc_612587: FLdRfVar var_B4
  loc_61258A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_61258F: FLdRfVar var_B4
  loc_612592: CBoolVarNull
  loc_612594: FFree1Var var_B4 = ""
  loc_612597: BranchF loc_6125B0
  loc_61259A: ILdRf Me
  loc_61259D: FStAdNoPop
  loc_6125A1: ImpAdLdRf MemVar_7520D4
  loc_6125A4: NewIfNullPr Global
  loc_6125A7: Global.Unload from_stack_1
  loc_6125AC: FFree1Ad var_8C
  loc_6125AF: ExitProcHresult
  loc_6125B0: Branch loc_612561
  loc_6125B3: FLdRfVar var_B8
  loc_6125B6: FLdRfVar var_88
  loc_6125B9: from_stack_2v = Proc_108_10_65C3E0(from_stack_1v)
  loc_6125BE: FFree1Str var_B8
  loc_6125C1: LitI2_Byte 0
  loc_6125C3: FLdPrThis
  loc_6125C4: VCallAd Control_ID_Command4
  loc_6125C7: FStAdFunc var_8C
  loc_6125CA: FLdPr var_8C
  loc_6125CD: Me.Enabled = from_stack_1b
  loc_6125D2: FFree1Ad var_8C
  loc_6125D5: LitI2_Byte 0
  loc_6125D7: FLdPrThis
  loc_6125D8: VCallAd Control_ID_fecha
  loc_6125DB: FStAdFunc var_8C
  loc_6125DE: FLdPr var_8C
  loc_6125E1: Me.Enabled = from_stack_1b
  loc_6125E6: FFree1Ad var_8C
  loc_6125E9: LitI2_Byte 0
  loc_6125EB: FLdPrThis
  loc_6125EC: VCallAd Control_ID_NroRemito
  loc_6125EF: FStAdFunc var_8C
  loc_6125F2: FLdPr var_8C
  loc_6125F5: Me.Enabled = from_stack_1b
  loc_6125FA: FFree1Ad var_8C
  loc_6125FD: ExitProcHresult
End Sub

Private Sub Command3_Click() '6606F8
  'Data Table: 418758
  loc_6603F0: LitStr vbNullString
  loc_6603F3: FStStrCopy var_98
  loc_6603F6: FLdRfVar var_A0
  loc_6603F9: FLdPrThis
  loc_6603FA: VCallAd Control_ID_fecha
  loc_6603FD: FStAdFunc var_9C
  loc_660400: FLdPr var_9C
  loc_660403:  = Me.Caption
  loc_660408: ILdRf var_A0
  loc_66040B: FnLenStr
  loc_66040C: LitI4 0
  loc_660411: EqI4
  loc_660412: FFree1Str var_A0
  loc_660415: FFree1Ad var_9C
  loc_660418: BranchF loc_66044D
  loc_66041B: LitVar_Missing var_120
  loc_66041E: LitVar_Missing var_100
  loc_660421: LitVarStr var_D0, "Remito"
  loc_660426: FStVarCopyObj var_E0
  loc_660429: FLdRfVar var_E0
  loc_66042C: LitI4 &H40
  loc_660431: LitVarStr var_B0, "La fecha del remito esta ausente."
  loc_660436: FStVarCopyObj var_C0
  loc_660439: FLdRfVar var_C0
  loc_66043C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_660441: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_66044C: ExitProcHresult
  loc_66044D: FLdRfVar var_A0
  loc_660450: FLdPrThis
  loc_660451: VCallAd Control_ID_NroRemito
  loc_660454: FStAdFunc var_9C
  loc_660457: FLdPr var_9C
  loc_66045A:  = Me.Text
  loc_66045F: ILdRf var_A0
  loc_660462: ImpAdCallFPR4 push Val()
  loc_660467: CR8R8
  loc_660468: LitI2_Byte 0
  loc_66046A: CR8I2
  loc_66046B: EqR4
  loc_66046C: FFree1Str var_A0
  loc_66046F: FFree1Ad var_9C
  loc_660472: BranchF loc_6604A7
  loc_660475: LitVar_Missing var_120
  loc_660478: LitVar_Missing var_100
  loc_66047B: LitVarStr var_D0, "Remito"
  loc_660480: FStVarCopyObj var_E0
  loc_660483: FLdRfVar var_E0
  loc_660486: LitI4 &H40
  loc_66048B: LitVarStr var_B0, "El numero del remito esta ausente."
  loc_660490: FStVarCopyObj var_C0
  loc_660493: FLdRfVar var_C0
  loc_660496: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66049B: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_6604A6: ExitProcHresult
  loc_6604A7: FLdRfVar var_A0
  loc_6604AA: FLdPrThis
  loc_6604AB: VCallAd Control_ID_fecha
  loc_6604AE: FStAdFunc var_9C
  loc_6604B1: FLdPr var_9C
  loc_6604B4:  = Me.Caption
  loc_6604B9: FLdRfVar var_128
  loc_6604BC: FLdPrThis
  loc_6604BD: VCallAd Control_ID_fecha
  loc_6604C0: FStAdFunc var_124
  loc_6604C3: FLdPr var_124
  loc_6604C6:  = Me.Caption
  loc_6604CB: FLdPrThis
  loc_6604CC: VCallAd Control_ID_fecha
  loc_6604CF: FStAdFunc var_19C
  loc_6604D2: LitVarI2 var_E0, 4
  loc_6604D7: LitI4 7
  loc_6604DC: FLdZeroAd var_A0
  loc_6604DF: CVarStr var_C0
  loc_6604E2: FLdRfVar var_100
  loc_6604E5: ImpAdCallFPR4  = Mid(, , )
  loc_6604EA: FLdRfVar var_100
  loc_6604ED: LitVarI2 var_138, 2
  loc_6604F2: LitI4 4
  loc_6604F7: FLdZeroAd var_128
  loc_6604FA: CVarStr var_120
  loc_6604FD: FLdRfVar var_148
  loc_660500: ImpAdCallFPR4  = Mid(, , )
  loc_660505: FLdRfVar var_148
  loc_660508: ConcatVar var_158
  loc_66050C: LitVarI2 var_178, 2
  loc_660511: LitI4 1
  loc_660516: FLdZeroAd var_19C
  loc_660519: CVarAd
  loc_66051D: FLdRfVar var_188
  loc_660520: ImpAdCallFPR4  = Mid(, , )
  loc_660525: FLdRfVar var_188
  loc_660528: ConcatVar var_198
  loc_66052C: CStrVarTmp
  loc_66052D: FStStr var_8C
  loc_660530: FFreeAd var_9C = "": var_124 = ""
  loc_660539: FFreeVar var_C0 = "": var_E0 = "": var_120 = "": var_138 = "": var_100 = "": var_148 = "": var_168 = "": var_178 = "": var_158 = "": var_188 = ""
  loc_660552: FLdRfVar var_A0
  loc_660555: FLdPrThis
  loc_660556: VCallAd Control_ID_fecha
  loc_660559: FStAdFunc var_9C
  loc_66055C: FLdPr var_9C
  loc_66055F:  = Me.Caption
  loc_660564: FLdRfVar var_128
  loc_660567: FLdPrThis
  loc_660568: VCallAd Control_ID_fecha
  loc_66056B: FStAdFunc var_124
  loc_66056E: FLdPr var_124
  loc_660571:  = Me.Caption
  loc_660576: LitVarI2 var_E0, 2
  loc_66057B: LitI4 &HC
  loc_660580: FLdZeroAd var_A0
  loc_660583: CVarStr var_C0
  loc_660586: FLdRfVar var_100
  loc_660589: ImpAdCallFPR4  = Mid(, , )
  loc_66058E: FLdRfVar var_100
  loc_660591: LitVarI2 var_138, 2
  loc_660596: LitI4 &HF
  loc_66059B: FLdZeroAd var_128
  loc_66059E: CVarStr var_120
  loc_6605A1: FLdRfVar var_148
  loc_6605A4: ImpAdCallFPR4  = Mid(, , )
  loc_6605A9: FLdRfVar var_148
  loc_6605AC: ConcatVar var_158
  loc_6605B0: CStrVarTmp
  loc_6605B1: FStStr var_90
  loc_6605B4: FFreeAd var_9C = ""
  loc_6605BB: FFreeVar var_C0 = "": var_E0 = "": var_120 = "": var_138 = "": var_100 = "": var_148 = ""
  loc_6605CC: FLdRfVar var_A0
  loc_6605CF: FLdPrThis
  loc_6605D0: VCallAd Control_ID_NroRemito
  loc_6605D3: FStAdFunc var_9C
  loc_6605D6: FLdPr var_9C
  loc_6605D9:  = Me.Text
  loc_6605DE: FLdZeroAd var_A0
  loc_6605E1: FStStr var_94
  loc_6605E4: FFree1Ad var_9C
  loc_6605E7: LitVarI2 var_F0, 1
  loc_6605EC: FLdRfVar var_1AC
  loc_6605EF: FLdRfVar var_1AE
  loc_6605F2: ImpAdLdRf MemVar_74A220
  loc_6605F5: NewIfNullPr clsProducts
  loc_6605F8: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6605FD: FLdI2 var_1AE
  loc_660600: CVarI2 var_D0
  loc_660603: ForVar var_1D0
  loc_660609: ILdRf var_98
  loc_66060C: FLdRfVar var_1AC
  loc_66060F: CI4Var
  loc_660611: CVarI4
  loc_660615: PopAdLdVar
  loc_660616: LitVarI4
  loc_66061E: PopAdLdVar
  loc_66061F: FLdPrThis
  loc_660620: VCallAd Control_ID_TablaProd
  loc_660623: FStAdFunc var_9C
  loc_660626: FLdPr var_9C
  loc_660629: LateIdCallLdVar
  loc_660633: CStrVarTmp
  loc_660634: FStStrNoPop var_A0
  loc_660637: ConcatStr
  loc_660638: FStStr var_98
  loc_66063B: FFree1Str var_A0
  loc_66063E: FFree1Ad var_9C
  loc_660641: FFree1Var var_C0 = ""
  loc_660644: FLdRfVar var_1AC
  loc_660647: NextStepVar var_1D0
  loc_66064D: FLdPr Me
  loc_660650: MemLdI2 Flag
  loc_660653: NotI4
  loc_660654: BranchF loc_660660
  loc_660657: LitStr "1"
  loc_66065A: FStStrCopy var_88
  loc_66065D: Branch loc_660666
  loc_660660: LitStr "0"
  loc_660663: FStStrCopy var_88
  loc_660666: ILdRf var_88
  loc_660669: ILdRf var_8C
  loc_66066C: ConcatStr
  loc_66066D: FStStrNoPop var_A0
  loc_660670: ILdRf var_90
  loc_660673: ConcatStr
  loc_660674: FStStrNoPop var_128
  loc_660677: ILdRf var_94
  loc_66067A: ConcatStr
  loc_66067B: FStStrNoPop var_1D4
  loc_66067E: ILdRf var_98
  loc_660681: ConcatStr
  loc_660682: FStStr var_88
  loc_660685: FFreeStr var_A0 = "": var_128 = ""
  loc_66068E: FLdRfVar var_1AE
  loc_660691: FLdRfVar var_88
  loc_660694: FLdRfVar var_9C
  loc_660697: ImpAdLdRf MemVar_74C760
  loc_66069A: NewIfNullPr Formx
  loc_66069D: from_stack_1v = Formx.global_4589716Get()
  loc_6606A2: FLdPr var_9C
  loc_6606A5: Call 0.Method_arg_334 ()
  loc_6606AA: FLdI2 var_1AE
  loc_6606AD: NotI4
  loc_6606AE: FFree1Ad var_9C
  loc_6606B1: BranchF loc_6606E0
  loc_6606B4: FLdRfVar var_C0
  loc_6606B7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6606BC: FLdRfVar var_C0
  loc_6606BF: CBoolVarNull
  loc_6606C1: FFree1Var var_C0 = ""
  loc_6606C4: BranchF loc_6606DD
  loc_6606C7: ILdRf Me
  loc_6606CA: FStAdNoPop
  loc_6606CE: ImpAdLdRf MemVar_7520D4
  loc_6606D1: NewIfNullPr Global
  loc_6606D4: Global.Unload from_stack_1
  loc_6606D9: FFree1Ad var_9C
  loc_6606DC: ExitProcHresult
  loc_6606DD: Branch loc_66068E
  loc_6606E0: ILdRf Me
  loc_6606E3: FStAdNoPop
  loc_6606E7: ImpAdLdRf MemVar_7520D4
  loc_6606EA: NewIfNullPr Global
  loc_6606ED: Global.Unload from_stack_1
  loc_6606F2: FFree1Ad var_9C
  loc_6606F5: ExitProcHresult
End Sub

Private Sub Command4_Click() '5D7968
  'Data Table: 418758
  loc_5D7934: LitI2_Byte &HFF
  loc_5D7936: ImpAdLdRf MemVar_74DE30
  loc_5D7939: NewIfNullPr PreciosTemporizado
  loc_5D793C: Call PreciosTemporizado.IsRemitoPut(from_stack_1v)
  loc_5D7941: LitVar_Missing var_A4
  loc_5D7944: PopAdLdVar
  loc_5D7945: LitVarI4
  loc_5D794D: PopAdLdVar
  loc_5D794E: ImpAdLdRf MemVar_74DE30
  loc_5D7951: NewIfNullPr PreciosTemporizado
  loc_5D7954: PreciosTemporizado.Show from_stack_1, from_stack_2
  loc_5D7959: LitI2_Byte 0
  loc_5D795B: ImpAdLdRf MemVar_74DE30
  loc_5D795E: NewIfNullPr PreciosTemporizado
  loc_5D7961: Call PreciosTemporizado.IsRemitoPut(from_stack_1v)
  loc_5D7966: ExitProcHresult
End Sub

Private Sub NroRemito_KeyPress(KeyAscii As Integer) '611CC8
  'Data Table: 418758
  loc_611BC4: FLdRfVar var_90
  loc_611BC7: FLdPrThis
  loc_611BC8: VCallAd Control_ID_NroRemito
  loc_611BCB: FStAdFunc var_8C
  loc_611BCE: FLdPr var_8C
  loc_611BD1:  = Me.Text
  loc_611BD6: FLdZeroAd var_90
  loc_611BD9: FStStr var_88
  loc_611BDC: FFree1Ad var_8C
  loc_611BDF: ILdI2 KeyAscii
  loc_611BE2: LitI2_Byte 8
  loc_611BE4: EqI2
  loc_611BE5: BranchF loc_611C3C
  loc_611BE8: LitVarStr var_E0, "0"
  loc_611BED: ILdRf var_88
  loc_611BF0: FnLenStr
  loc_611BF1: LitI4 1
  loc_611BF6: SubI4
  loc_611BF7: CVarI4
  loc_611BFB: LitI4 1
  loc_611C00: FLdRfVar var_88
  loc_611C03: CVarRef
  loc_611C08: FLdRfVar var_D0
  loc_611C0B: ImpAdCallFPR4  = Mid(, , )
  loc_611C10: FLdRfVar var_D0
  loc_611C13: ConcatVar var_F0
  loc_611C17: CStrVarVal var_90
  loc_611C1B: FLdPrThis
  loc_611C1C: VCallAd Control_ID_NroRemito
  loc_611C1F: FStAdFunc var_8C
  loc_611C22: FLdPr var_8C
  loc_611C25: Me.Text = from_stack_1
  loc_611C2A: FFree1Str var_90
  loc_611C2D: FFree1Ad var_8C
  loc_611C30: FFreeVar var_C0 = "": var_D0 = ""
  loc_611C39: Branch loc_611CC2
  loc_611C3C: LitStr "0"
  loc_611C3F: ImpAdCallI2 Asc()
  loc_611C44: ILdI2 KeyAscii
  loc_611C47: LeI2
  loc_611C48: ILdI2 KeyAscii
  loc_611C4B: LitStr "9"
  loc_611C4E: ImpAdCallI2 Asc()
  loc_611C53: LeI2
  loc_611C54: AndI4
  loc_611C55: ILdRf var_88
  loc_611C58: ImpAdCallFPR4 push Val()
  loc_611C5D: CStrR8
  loc_611C5F: FStStrNoPop var_90
  loc_611C62: FnLenStr
  loc_611C63: LitI4 &HC
  loc_611C68: LtI4
  loc_611C69: AndI4
  loc_611C6A: FFree1Str var_90
  loc_611C6D: BranchF loc_611CC2
  loc_611C70: LitVar_Missing var_C0
  loc_611C73: LitI4 2
  loc_611C78: FLdRfVar var_88
  loc_611C7B: CVarRef
  loc_611C80: FLdRfVar var_D0
  loc_611C83: ImpAdCallFPR4  = Mid(, , )
  loc_611C88: FLdRfVar var_D0
  loc_611C8B: ILdI2 KeyAscii
  loc_611C8E: CI4UI1
  loc_611C8F: FLdRfVar var_F0
  loc_611C92: ImpAdCallFPR4  = Chr()
  loc_611C97: FLdRfVar var_F0
  loc_611C9A: ConcatVar var_100
  loc_611C9E: CStrVarVal var_90
  loc_611CA2: FLdPrThis
  loc_611CA3: VCallAd Control_ID_NroRemito
  loc_611CA6: FStAdFunc var_8C
  loc_611CA9: FLdPr var_8C
  loc_611CAC: Me.Text = from_stack_1
  loc_611CB1: FFree1Str var_90
  loc_611CB4: FFree1Ad var_8C
  loc_611CB7: FFreeVar var_C0 = "": var_D0 = "": var_F0 = ""
  loc_611CC2: LitI2_Byte 0
  loc_611CC4: IStI2 KeyAscii
  loc_611CC7: ExitProcHresult
End Sub

Private Sub NroRemito_KeyUp(KeyCode As Integer, Shift As Integer) '5D42F0
  'Data Table: 418758
  loc_5D42D0: ILdI2 KeyCode
  loc_5D42D3: LitI2_Byte &H2E
  loc_5D42D5: EqI2
  loc_5D42D6: BranchF loc_5D42EE
  loc_5D42D9: LitStr "000000000000"
  loc_5D42DC: FLdPrThis
  loc_5D42DD: VCallAd Control_ID_NroRemito
  loc_5D42E0: FStAdFunc var_88
  loc_5D42E3: FLdPr var_88
  loc_5D42E6: Me.Text = from_stack_1
  loc_5D42EB: FFree1Ad var_88
  loc_5D42EE: ExitProcHresult
End Sub

Private Sub TablaProd_DblClick(arg_C) '63AE60
  'Data Table: 418758
  loc_63AC5C: FLdPrThis
  loc_63AC5D: VCallAd Control_ID_TablaProd
  loc_63AC60: FStAdFunc var_8C
  loc_63AC63: FLdPr var_8C
  loc_63AC66: LateIdLdVar var_9C DispID_10 0
  loc_63AC6D: CI4Var
  loc_63AC6F: CVarI4
  loc_63AC73: PopAdLdVar
  loc_63AC74: FLdPrThis
  loc_63AC75: VCallAd Control_ID_TablaProd
  loc_63AC78: FStAdFunc var_A0
  loc_63AC7B: FLdPr var_A0
  loc_63AC7E: LateIdLdVar var_B0 DispID_11 0
  loc_63AC85: CI4Var
  loc_63AC87: CVarI4
  loc_63AC8B: PopAdLdVar
  loc_63AC8C: FLdPrThis
  loc_63AC8D: VCallAd Control_ID_TablaProd
  loc_63AC90: FStAdFunc var_D4
  loc_63AC93: FLdPr var_D4
  loc_63AC96: LateIdCallLdVar
  loc_63ACA0: CStrVarTmp
  loc_63ACA1: FStStr var_88
  loc_63ACA4: FFreeAd var_8C = "": var_A0 = ""
  loc_63ACAD: FFreeVar var_9C = "": var_B0 = ""
  loc_63ACB6: FLdPrThis
  loc_63ACB7: VCallAd Control_ID_TablaProd
  loc_63ACBA: FStAdFunc var_8C
  loc_63ACBD: FLdPr var_8C
  loc_63ACC0: LateIdLdVar var_9C DispID_11 0
  loc_63ACC7: CI4Var
  loc_63ACC9: LitI4 0
  loc_63ACCE: NeI4
  loc_63ACCF: FLdPrThis
  loc_63ACD0: VCallAd Control_ID_TablaProd
  loc_63ACD3: FStAdFunc var_A0
  loc_63ACD6: FLdPr var_A0
  loc_63ACD9: LateIdLdVar var_B0 DispID_10 0
  loc_63ACE0: CI4Var
  loc_63ACE2: LitI4 0
  loc_63ACE7: NeI4
  loc_63ACE8: AndI4
  loc_63ACE9: FFreeAd var_8C = ""
  loc_63ACF0: FFreeVar var_9C = ""
  loc_63ACF7: BranchF loc_63AE57
  loc_63ACFA: ILdI2 arg_C
  loc_63ACFD: LitI2_Byte 8
  loc_63ACFF: EqI2
  loc_63AD00: BranchF loc_63AD94
  loc_63AD03: FLdPrThis
  loc_63AD04: VCallAd Control_ID_TablaProd
  loc_63AD07: FStAdFunc var_8C
  loc_63AD0A: FLdPr var_8C
  loc_63AD0D: LateIdLdVar var_104 DispID_10 0
  loc_63AD14: CI4Var
  loc_63AD16: CVarI4
  loc_63AD1A: PopAdLdVar
  loc_63AD1B: FLdPrThis
  loc_63AD1C: VCallAd Control_ID_TablaProd
  loc_63AD1F: FStAdFunc var_A0
  loc_63AD22: FLdPr var_A0
  loc_63AD25: LateIdLdVar var_114 DispID_11 0
  loc_63AD2C: CI4Var
  loc_63AD2E: CVarI4
  loc_63AD32: PopAdLdVar
  loc_63AD33: LitVarStr var_F4, "0"
  loc_63AD38: ILdRf var_88
  loc_63AD3B: FnLenStr
  loc_63AD3C: LitI4 1
  loc_63AD41: SubI4
  loc_63AD42: CVarI4
  loc_63AD46: LitI4 1
  loc_63AD4B: FLdRfVar var_88
  loc_63AD4E: CVarRef
  loc_63AD53: FLdRfVar var_B0
  loc_63AD56: ImpAdCallFPR4  = Mid(, , )
  loc_63AD5B: FLdRfVar var_B0
  loc_63AD5E: ConcatVar var_E4
  loc_63AD62: CStrVarTmp
  loc_63AD63: CVarStr var_144
  loc_63AD66: PopAdLdVar
  loc_63AD67: FLdPrThis
  loc_63AD68: VCallAd Control_ID_TablaProd
  loc_63AD6B: FStAdFunc var_D4
  loc_63AD6E: FLdPr var_D4
  loc_63AD71: LateIdCallSt
  loc_63AD79: FFreeAd var_8C = "": var_A0 = ""
  loc_63AD82: FFreeVar var_9C = "": var_B0 = "": var_104 = "": var_114 = "": var_E4 = ""
  loc_63AD91: Branch loc_63AE57
  loc_63AD94: LitStr "0"
  loc_63AD97: ImpAdCallI2 Asc()
  loc_63AD9C: ILdI2 arg_C
  loc_63AD9F: LeI2
  loc_63ADA0: ILdI2 arg_C
  loc_63ADA3: LitStr "9"
  loc_63ADA6: ImpAdCallI2 Asc()
  loc_63ADAB: LeI2
  loc_63ADAC: AndI4
  loc_63ADAD: ILdRf var_88
  loc_63ADB0: ImpAdCallFPR4 push Val()
  loc_63ADB5: CStrR8
  loc_63ADB7: FStStrNoPop var_148
  loc_63ADBA: FnLenStr
  loc_63ADBB: LitI4 6
  loc_63ADC0: LtI4
  loc_63ADC1: AndI4
  loc_63ADC2: FFree1Str var_148
  loc_63ADC5: BranchF loc_63AE57
  loc_63ADC8: FLdPrThis
  loc_63ADC9: VCallAd Control_ID_TablaProd
  loc_63ADCC: FStAdFunc var_8C
  loc_63ADCF: FLdPr var_8C
  loc_63ADD2: LateIdLdVar var_114 DispID_10 0
  loc_63ADD9: CI4Var
  loc_63ADDB: CVarI4
  loc_63ADDF: PopAdLdVar
  loc_63ADE0: FLdPrThis
  loc_63ADE1: VCallAd Control_ID_TablaProd
  loc_63ADE4: FStAdFunc var_A0
  loc_63ADE7: FLdPr var_A0
  loc_63ADEA: LateIdLdVar var_144 DispID_11 0
  loc_63ADF1: CI4Var
  loc_63ADF3: CVarI4
  loc_63ADF7: PopAdLdVar
  loc_63ADF8: LitVar_Missing var_9C
  loc_63ADFB: LitI4 2
  loc_63AE00: FLdRfVar var_88
  loc_63AE03: CVarRef
  loc_63AE08: FLdRfVar var_B0
  loc_63AE0B: ImpAdCallFPR4  = Mid(, , )
  loc_63AE10: FLdRfVar var_B0
  loc_63AE13: ILdI2 arg_C
  loc_63AE16: CI4UI1
  loc_63AE17: FLdRfVar var_E4
  loc_63AE1A: ImpAdCallFPR4  = Chr()
  loc_63AE1F: FLdRfVar var_E4
  loc_63AE22: ConcatVar var_104
  loc_63AE26: CStrVarTmp
  loc_63AE27: CVarStr var_158
  loc_63AE2A: PopAdLdVar
  loc_63AE2B: FLdPrThis
  loc_63AE2C: VCallAd Control_ID_TablaProd
  loc_63AE2F: FStAdFunc var_D4
  loc_63AE32: FLdPr var_D4
  loc_63AE35: LateIdCallSt
  loc_63AE3D: FFreeAd var_8C = "": var_A0 = ""
  loc_63AE46: FFreeVar var_9C = "": var_B0 = "": var_E4 = "": var_114 = "": var_144 = "": var_104 = ""
  loc_63AE57: LitI2_Byte 0
  loc_63AE59: IStI2 arg_C
  loc_63AE5C: ExitProcHresult
End Sub

Private Sub TablaProd_KeyPress(KeyAscii As Integer) '5F4898
  'Data Table: 418758
  loc_5F47F0: FLdPrThis
  loc_5F47F1: VCallAd Control_ID_TablaProd
  loc_5F47F4: FStAdFunc var_88
  loc_5F47F7: FLdPr var_88
  loc_5F47FA: LateIdLdVar var_98 DispID_11 0
  loc_5F4801: CI4Var
  loc_5F4803: LitI4 0
  loc_5F4808: NeI4
  loc_5F4809: FLdPrThis
  loc_5F480A: VCallAd Control_ID_TablaProd
  loc_5F480D: FStAdFunc var_9C
  loc_5F4810: FLdPr var_9C
  loc_5F4813: LateIdLdVar var_AC DispID_10 0
  loc_5F481A: CI4Var
  loc_5F481C: LitI4 0
  loc_5F4821: NeI4
  loc_5F4822: AndI4
  loc_5F4823: FFreeAd var_88 = ""
  loc_5F482A: FFreeVar var_98 = ""
  loc_5F4831: BranchF loc_5F4895
  loc_5F4834: ILdI2 KeyAscii
  loc_5F4837: LitI2_Byte &H2E
  loc_5F4839: EqI2
  loc_5F483A: BranchF loc_5F4895
  loc_5F483D: FLdPrThis
  loc_5F483E: VCallAd Control_ID_TablaProd
  loc_5F4841: FStAdFunc var_88
  loc_5F4844: FLdPr var_88
  loc_5F4847: LateIdLdVar var_98 DispID_10 0
  loc_5F484E: CI4Var
  loc_5F4850: CVarI4
  loc_5F4854: PopAdLdVar
  loc_5F4855: FLdPrThis
  loc_5F4856: VCallAd Control_ID_TablaProd
  loc_5F4859: FStAdFunc var_9C
  loc_5F485C: FLdPr var_9C
  loc_5F485F: LateIdLdVar var_AC DispID_11 0
  loc_5F4866: CI4Var
  loc_5F4868: CVarI4
  loc_5F486C: PopAdLdVar
  loc_5F486D: LitVarStr var_DC, "000000"
  loc_5F4872: PopAdLdVar
  loc_5F4873: FLdPrThis
  loc_5F4874: VCallAd Control_ID_TablaProd
  loc_5F4877: FStAdFunc var_E0
  loc_5F487A: FLdPr var_E0
  loc_5F487D: LateIdCallSt
  loc_5F4885: FFreeAd var_88 = "": var_9C = ""
  loc_5F488E: FFreeVar var_98 = ""
  loc_5F4895: ExitProcHresult
End Sub

Public Function FlagGet() '418D64
  FlagGet = Flag
End Function

Public Sub FlagPut(Value) '418D73
  Flag = Value
End Sub

Private Function Proc_108_10_65C3E0(arg_C) '65C3E0
  'Data Table: 418758
  loc_65C0E8: ZeroRetVal
  loc_65C0EA: ILdI4 arg_C
  loc_65C0ED: FnLenStr
  loc_65C0EE: LitI4 1
  loc_65C0F3: LeI4
  loc_65C0F4: BranchF loc_65C143
  loc_65C0F7: LitVar_Missing var_110
  loc_65C0FA: LitVar_Missing var_F0
  loc_65C0FD: LitVarStr var_C0, "Datos Del Remito"
  loc_65C102: FStVarCopyObj var_D0
  loc_65C105: FLdRfVar var_D0
  loc_65C108: LitI4 &H40
  loc_65C10D: LitVarStr var_A0, "No se pudo recuperar los valores del remito"
  loc_65C112: FStVarCopyObj var_B0
  loc_65C115: FLdRfVar var_B0
  loc_65C118: ImpAdCallFPR4 MsgBox(, , , , )
  loc_65C11D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_65C128: ILdRf Me
  loc_65C12B: FStAdNoPop
  loc_65C12F: ImpAdLdRf MemVar_7520D4
  loc_65C132: NewIfNullPr Global
  loc_65C135: Global.Unload from_stack_1
  loc_65C13A: FFree1Ad var_114
  loc_65C13D: ExitProcCbHresult
  loc_65C143: LitI2_Byte &H19
  loc_65C145: FStI2 var_8C
  loc_65C148: LitI2_Byte 1
  loc_65C14A: FStI2 var_8A
  loc_65C14D: LitI2_Byte 1
  loc_65C14F: FStI2 var_8E
  loc_65C152: LitVarI2 var_B0, 2
  loc_65C157: LitI4 7
  loc_65C15C: ILdRf arg_C
  loc_65C15F: CVarRef
  loc_65C164: FLdRfVar var_D0
  loc_65C167: ImpAdCallFPR4  = Mid(, , )
  loc_65C16C: FLdRfVar var_D0
  loc_65C16F: LitVarStr var_E0, "/"
  loc_65C174: ConcatVar var_F0
  loc_65C178: LitVarI2 var_110, 2
  loc_65C17D: LitI4 5
  loc_65C182: ILdRf arg_C
  loc_65C185: CVarRef
  loc_65C18A: FLdRfVar var_134
  loc_65C18D: ImpAdCallFPR4  = Mid(, , )
  loc_65C192: FLdRfVar var_134
  loc_65C195: ConcatVar var_144
  loc_65C199: LitVarStr var_154, "/"
  loc_65C19E: ConcatVar var_164
  loc_65C1A2: LitVarI2 var_194, 4
  loc_65C1A7: LitI4 1
  loc_65C1AC: ILdRf arg_C
  loc_65C1AF: CVarRef
  loc_65C1B4: FLdRfVar var_1A4
  loc_65C1B7: ImpAdCallFPR4  = Mid(, , )
  loc_65C1BC: FLdRfVar var_1A4
  loc_65C1BF: ConcatVar var_1B4
  loc_65C1C3: LitVarStr var_1C4, " "
  loc_65C1C8: ConcatVar var_1D4
  loc_65C1CC: LitVarI2 var_204, 2
  loc_65C1D1: LitI4 9
  loc_65C1D6: ILdRf arg_C
  loc_65C1D9: CVarRef
  loc_65C1DE: FLdRfVar var_214
  loc_65C1E1: ImpAdCallFPR4  = Mid(, , )
  loc_65C1E6: FLdRfVar var_214
  loc_65C1E9: ConcatVar var_224
  loc_65C1ED: LitVarStr var_234, ":"
  loc_65C1F2: ConcatVar var_244
  loc_65C1F6: LitVarI2 var_274, 2
  loc_65C1FB: LitI4 &HB
  loc_65C200: ILdRf arg_C
  loc_65C203: CVarRef
  loc_65C208: FLdRfVar var_284
  loc_65C20B: ImpAdCallFPR4  = Mid(, , )
  loc_65C210: FLdRfVar var_284
  loc_65C213: ConcatVar var_294
  loc_65C217: CStrVarVal var_298
  loc_65C21B: FLdPrThis
  loc_65C21C: VCallAd Control_ID_fecha
  loc_65C21F: FStAdFunc var_114
  loc_65C222: FLdPr var_114
  loc_65C225: Me.Caption = from_stack_1
  loc_65C22A: FFree1Str var_298
  loc_65C22D: FFree1Ad var_114
  loc_65C230: FFreeVar var_B0 = "": var_D0 = "": var_110 = "": var_F0 = "": var_134 = "": var_144 = "": var_194 = "": var_164 = "": var_1A4 = "": var_1B4 = "": var_204 = "": var_1D4 = "": var_214 = "": var_224 = "": var_274 = "": var_244 = "": var_284 = ""
  loc_65C257: LitVarI2 var_B0, 12
  loc_65C25C: LitI4 &HD
  loc_65C261: ILdRf arg_C
  loc_65C264: CVarRef
  loc_65C269: FLdRfVar var_D0
  loc_65C26C: ImpAdCallFPR4  = Mid(, , )
  loc_65C271: FLdRfVar var_D0
  loc_65C274: CStrVarVal var_298
  loc_65C278: FLdPrThis
  loc_65C279: VCallAd Control_ID_NroRemito
  loc_65C27C: FStAdFunc var_114
  loc_65C27F: FLdPr var_114
  loc_65C282: Me.Text = from_stack_1
  loc_65C287: FFree1Str var_298
  loc_65C28A: FFree1Ad var_114
  loc_65C28D: FFreeVar var_B0 = ""
  loc_65C294: LitI2_Byte 1
  loc_65C296: FLdRfVar var_8A
  loc_65C299: FLdRfVar var_29A
  loc_65C29C: ImpAdLdRf MemVar_74A220
  loc_65C29F: NewIfNullPr clsProducts
  loc_65C2A2: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65C2A7: FLdI2 var_29A
  loc_65C2AA: ForI2 var_29E
  loc_65C2B0: FLdI2 var_8A
  loc_65C2B3: CI4UI1
  loc_65C2B4: CVarI4
  loc_65C2B8: PopAdLdVar
  loc_65C2B9: LitVarI4
  loc_65C2C1: PopAdLdVar
  loc_65C2C2: LitVarI2 var_B0, 6
  loc_65C2C7: FLdI2 var_8C
  loc_65C2CA: CI4UI1
  loc_65C2CB: ILdRf arg_C
  loc_65C2CE: CVarRef
  loc_65C2D3: FLdRfVar var_D0
  loc_65C2D6: ImpAdCallFPR4  = Mid(, , )
  loc_65C2DB: FLdRfVar var_D0
  loc_65C2DE: CStrVarTmp
  loc_65C2DF: CVarStr var_F0
  loc_65C2E2: PopAdLdVar
  loc_65C2E3: FLdPrThis
  loc_65C2E4: VCallAd Control_ID_TablaProd
  loc_65C2E7: FStAdFunc var_114
  loc_65C2EA: FLdPr var_114
  loc_65C2ED: LateIdCallSt
  loc_65C2F5: FFree1Ad var_114
  loc_65C2F8: FFreeVar var_B0 = "": var_D0 = ""
  loc_65C301: FLdI2 var_8C
  loc_65C304: LitI2_Byte 6
  loc_65C306: AddI2
  loc_65C307: FStI2 var_8C
  loc_65C30A: FLdRfVar var_8A
  loc_65C30D: NextI2 var_29E, loc_65C2B0
  loc_65C312: LitVarI4
  loc_65C31A: PopAdLdVar
  loc_65C31B: FLdPrThis
  loc_65C31C: VCallAd Control_ID_TablaProd
  loc_65C31F: FStAdFunc var_114
  loc_65C322: FLdPr var_114
  loc_65C325: LateIdSt
  loc_65C32A: FFree1Ad var_114
  loc_65C32D: LitVarI4
  loc_65C335: PopAdLdVar
  loc_65C336: FLdPrThis
  loc_65C337: VCallAd Control_ID_TablaProd
  loc_65C33A: FStAdFunc var_114
  loc_65C33D: FLdPr var_114
  loc_65C340: LateIdSt
  loc_65C345: FFree1Ad var_114
  loc_65C348: LitI2_Byte 1
  loc_65C34A: FLdRfVar var_8A
  loc_65C34D: FLdRfVar var_29A
  loc_65C350: ImpAdLdRf MemVar_74A220
  loc_65C353: NewIfNullPr clsProducts
  loc_65C356: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_65C35B: FLdI2 var_29A
  loc_65C35E: ForI2 var_2A2
  loc_65C364: FLdI2 var_8A
  loc_65C367: CI4UI1
  loc_65C368: CVarI4
  loc_65C36C: PopAdLdVar
  loc_65C36D: FLdPrThis
  loc_65C36E: VCallAd Control_ID_TablaProd
  loc_65C371: FStAdFunc var_114
  loc_65C374: FLdPr var_114
  loc_65C377: LateIdSt
  loc_65C37C: FFree1Ad var_114
  loc_65C37F: LitVarI2 var_B0, 1
  loc_65C384: FLdI2 var_8C
  loc_65C387: CI4UI1
  loc_65C388: ILdRf arg_C
  loc_65C38B: CVarRef
  loc_65C390: FLdRfVar var_D0
  loc_65C393: ImpAdCallFPR4  = Mid(, , )
  loc_65C398: FLdRfVar var_D0
  loc_65C39B: LitVarStr var_E0, "1"
  loc_65C3A0: HardType
  loc_65C3A1: EqVarBool
  loc_65C3A3: FFreeVar var_B0 = ""
  loc_65C3AA: BranchF loc_65C3C8
  loc_65C3AD: LitVarI4
  loc_65C3B5: PopAdLdVar
  loc_65C3B6: FLdPrThis
  loc_65C3B7: VCallAd Control_ID_TablaProd
  loc_65C3BA: FStAdFunc var_114
  loc_65C3BD: FLdPr var_114
  loc_65C3C0: LateIdSt
  loc_65C3C5: FFree1Ad var_114
  loc_65C3C8: FLdI2 var_8C
  loc_65C3CB: LitI2_Byte 1
  loc_65C3CD: AddI2
  loc_65C3CE: FStI2 var_8C
  loc_65C3D1: FLdRfVar var_8A
  loc_65C3D4: NextI2 var_2A2, loc_65C364
  loc_65C3D9: ExitProcCbHresult
End Function
