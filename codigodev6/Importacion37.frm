VERSION 5.00
Object = "{7A080CC8-26E2-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\GAUGE32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Begin VB.Form Importacion37
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 75
  ClientWidth = 5355
  ClientHeight = 1845
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin GaugeLib.Gauge Status
    Left = 450
    Top = 1275
    Width = 4290
    Height = 390
    TabIndex = 0
    OleObjectBlob = "Importacion37.frx":0000
  End
  Begin Threed.SSPanel SSPanel1
    Left = 60
    Top = 60
    Width = 5235
    Height = 1875
    TabIndex = 1
    OleObjectBlob = "Importacion37.frx":0048
    Begin VB.Label Label1
      Caption = "Convirtiendo Clientes"
      Left = 300
      Top = 180
      Width = 4350
      Height = 690
      TabIndex = 2
      Alignment = 2 'Center
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
End

Attribute VB_Name = "Importacion37"

Private Type UDT_1_00472B0C
  bStruc(148) As Byte ' String fields: 6
End Type


Private Sub Form_Activate() '5D3AB0
  'Data Table: 406490
  loc_5D3A94: Call ImportacionClientes()
  loc_5D3A99: ILdRf Me
  loc_5D3A9C: FStAdNoPop
  loc_5D3AA0: ImpAdLdRf MemVar_7520D4
  loc_5D3AA3: NewIfNullPr Global
  loc_5D3AA6: Global.Unload from_stack_1
  loc_5D3AAB: FFree1Ad var_88
  loc_5D3AAE: ExitProcHresult
End Sub

Public Sub ImportacionClientes() '6926F4
  'Data Table: 406490
  loc_692160: OnErrorGoto loc_69262B
  loc_692165: LitI2_Byte 1
  loc_692167: FStI2 var_152
  loc_69216C: LitVar_Missing var_214
  loc_69216F: ImpAdCallI2 FreeFile()
  loc_692174: CUI1I2
  loc_692176: FStUI1 var_86
  loc_69217A: FFree1Var var_214 = ""
  loc_69217F: FLdRfVar var_344
  loc_692182: LitVar_Missing var_340
  loc_692185: LitVar_Missing var_320
  loc_692188: LitVar_Missing var_300
  loc_69218B: LitVar_Missing var_2E0
  loc_69218E: LitVar_Missing var_2C0
  loc_692191: LitVar_Missing var_2A0
  loc_692194: LitVar_Missing var_280
  loc_692197: LitVar_Missing var_260
  loc_69219A: LitVar_Missing var_240
  loc_69219D: LitVar_Missing var_214
  loc_6921A0: LitStr "Convirtiendo Clientes"
  loc_6921A3: FStStrCopy var_220
  loc_6921A6: FLdRfVar var_220
  loc_6921A9: LitI4 1
  loc_6921AE: PopTmpLdAdStr var_21C
  loc_6921B1: LitI2_Byte &H64
  loc_6921B3: PopTmpLdAd2 var_216
  loc_6921B6: ImpAdLdRf MemVar_74C7D0
  loc_6921B9: NewIfNullPr clsMsg
  loc_6921BC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6921C1: ILdRf var_344
  loc_6921C4: FLdPrThis
  loc_6921C5: VCallAd Control_ID_Label1
  loc_6921C8: FStAdFunc var_348
  loc_6921CB: FLdPr var_348
  loc_6921CE: Me.Caption = from_stack_1
  loc_6921D3: FFreeStr var_220 = ""
  loc_6921DA: FFree1Ad var_348
  loc_6921DD: FFreeVar var_214 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = ""
  loc_6921F6: LitStr "a:\customer.dat"
  loc_6921F9: FLdUI1
  loc_6921FD: CI2UI1
  loc_6921FF: LitI2_Byte &HFF
  loc_692201: OpenFile
  loc_692207: OnErrorGoto loc_6926C3
  loc_69220C: LitVarI2 var_204, 5004
  loc_692211: PopAdLdVar
  loc_692212: FLdPrThis
  loc_692213: VCallAd Control_ID_Status
  loc_692216: FStAdFunc var_348
  loc_692219: FLdPr var_348
  loc_69221C: LateIdSt
  loc_692221: FFree1Ad var_348
  loc_692226: FLdUI1
  loc_69222A: CI2UI1
  loc_69222C: ImpAdCallI2 push EOF()
  loc_692231: NotI4
  loc_692232: BranchF loc_6923F5
  loc_692237: ImpAdCallFPR4 DoEvents()
  loc_69223E: FLdI2 var_152
  loc_692241: FStI2 var_150
  loc_692246: FLdUI1
  loc_69224A: CI2UI1
  loc_69224C: LitI4 &H19
  loc_692251: FLdRfVar var_214
  loc_692254: ImpAdCallFPR4  = Input(, )
  loc_692259: FLdRfVar var_214
  loc_69225C: FLdRfVar var_240
  loc_69225F: ImpAdCallFPR4  = Ucase()
  loc_692264: FLdRfVar var_240
  loc_692267: CStrVarTmp
  loc_692268: FStStrNoPop var_220
  loc_69226B: FLdRfVar var_14E
  loc_69226E: StFixedStr
  loc_692271: FFree1Str var_220
  loc_692274: FFreeVar var_214 = ""
  loc_69227D: FLdUI1
  loc_692281: CI2UI1
  loc_692283: LitI4 &H19
  loc_692288: FLdRfVar var_214
  loc_69228B: ImpAdCallFPR4  = Input(, )
  loc_692290: FLdRfVar var_214
  loc_692293: CStrVarTmp
  loc_692294: FStStrNoPop var_220
  loc_692297: FLdRfVar var_11C
  loc_69229A: StFixedStr
  loc_69229D: FFree1Str var_220
  loc_6922A0: FFree1Var var_214 = ""
  loc_6922A5: FLdUI1
  loc_6922A9: CI2UI1
  loc_6922AB: LitI4 &HF
  loc_6922B0: FLdRfVar var_214
  loc_6922B3: ImpAdCallFPR4  = Input(, )
  loc_6922B8: FLdRfVar var_214
  loc_6922BB: CStrVarTmp
  loc_6922BC: FStStrNoPop var_220
  loc_6922BF: FLdRfVar var_AE
  loc_6922C2: StFixedStr
  loc_6922C5: FFree1Str var_220
  loc_6922C8: FFree1Var var_214 = ""
  loc_6922CD: LitI2_Byte 4
  loc_6922CF: CUI1I2
  loc_6922D1: FStUI1 var_90
  loc_6922D7: LitStr vbNullString
  loc_6922DA: FLdRfVar var_CC
  loc_6922DD: StFixedStr
  loc_6922E2: LitI2_Byte 0
  loc_6922E4: FStI2 var_8E
  loc_6922E9: LitI4 0
  loc_6922EE: FStR4 var_8C
  loc_6922F3: FLdI2 var_152
  loc_6922F6: CVarI2 var_204
  loc_6922F9: PopAdLdVar
  loc_6922FA: FLdPrThis
  loc_6922FB: VCallAd Control_ID_Status
  loc_6922FE: FStAdFunc var_348
  loc_692301: FLdPr var_348
  loc_692304: LateIdSt
  loc_692309: FFree1Ad var_348
  loc_69230E: LitI4 1
  loc_692313: FLdRfVar var_14E
  loc_692316: LdFixedStr
  loc_692319: FStStrNoPop var_220
  loc_69231C: ImpAdCallI2 Left$(, )
  loc_692321: FStStr var_344
  loc_692324: ILdRf var_220
  loc_692327: FLdRfVar var_14E
  loc_69232A: StFixedStr
  loc_69232D: ILdRf var_344
  loc_692330: ImpAdCallI2 Asc()
  loc_692335: CUI1I2
  loc_692337: FStUI1 var_1F2
  loc_69233B: FFreeStr var_220 = ""
  loc_692344: FLdRfVar var_14E
  loc_692347: LdFixedStr
  loc_69234A: CVarStr var_240
  loc_69234D: HardType
  loc_69234E: LitI4 &H19
  loc_692353: FLdRfVar var_214
  loc_692356: ImpAdCallFPR4  = Space()
  loc_69235B: FLdRfVar var_214
  loc_69235E: NeVar var_260
  loc_692362: FLdUI1
  loc_692366: CI2UI1
  loc_692368: LitI2_Byte 0
  loc_69236A: NeI2
  loc_69236B: CVarBoolI2 var_204
  loc_69236F: AndVar var_280
  loc_692373: CBoolVarNull
  loc_692375: FFreeVar var_240 = "": var_214 = ""
  loc_69237E: BranchF loc_6923E3
  loc_692383: FLdRfVar var_216
  loc_692386: FLdRfVar var_156
  loc_692389: FLdRfVar var_150
  loc_69238C: FLdRfVar var_348
  loc_69238F: ImpAdLdRf MemVar_74C760
  loc_692392: NewIfNullPr Formx
  loc_692395: from_stack_1v = Formx.global_4589716Get()
  loc_69239A: ILdRf var_348
  loc_69239D: ImpAdCallNonVirt
  loc_6923A3: FLdI2 var_216
  loc_6923A6: NotI4
  loc_6923A7: FFree1Ad var_348
  loc_6923AA: BranchF loc_6923E3
  loc_6923AF: FLdRfVar var_214
  loc_6923B2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6923B7: FLdRfVar var_214
  loc_6923BA: CBoolVarNull
  loc_6923BC: FFree1Var var_214 = ""
  loc_6923BF: BranchF loc_6923DC
  loc_6923C4: ILdRf Me
  loc_6923C7: FStAdNoPop
  loc_6923CB: ImpAdLdRf MemVar_7520D4
  loc_6923CE: NewIfNullPr Global
  loc_6923D1: Global.Unload from_stack_1
  loc_6923D6: FFree1Ad var_348
  loc_6923DB: ExitProcHresult
  loc_6923E0: Branch loc_692381
  loc_6923E7: FLdI2 var_152
  loc_6923EA: LitI2_Byte 1
  loc_6923EC: AddI2
  loc_6923ED: FStI2 var_152
  loc_6923F2: Branch loc_692224
  loc_6923F7: FLdUI1
  loc_6923FB: CI2UI1
  loc_6923FD: Close
  loc_692401: LitStr "Convirtiendo Cuentas Corrientes"
  loc_692404: FLdPrThis
  loc_692405: VCallAd Control_ID_Label1
  loc_692408: FStAdFunc var_348
  loc_69240B: FLdPr var_348
  loc_69240E: Me.Caption = from_stack_1
  loc_692413: FFree1Ad var_348
  loc_692418: LitStr "a:\count.dat"
  loc_69241B: FLdUI1
  loc_69241F: CI2UI1
  loc_692421: LitI2_Byte &H53
  loc_692423: OpenFile
  loc_692429: LitVarI2 var_204, 203
  loc_69242E: PopAdLdVar
  loc_69242F: FLdPrThis
  loc_692430: VCallAd Control_ID_Status
  loc_692433: FStAdFunc var_348
  loc_692436: FLdPr var_348
  loc_692439: LateIdSt
  loc_69243E: FFree1Ad var_348
  loc_692443: LitI2_Byte 1
  loc_692445: FStI2 var_154
  loc_69244A: FLdUI1
  loc_69244E: CI2UI1
  loc_692450: ImpAdCallI2 push EOF()
  loc_692455: NotI4
  loc_692456: BranchF loc_692619
  loc_69245B: ImpAdCallFPR4 DoEvents()
  loc_692462: FLdUI1
  loc_692466: CI2UI1
  loc_692468: FLdRfVar var_1F0
  loc_69246B: DestructRecord
  loc_69246F: GetRecOwn3
  loc_692475: FLdI2 var_154
  loc_692478: CVarI2 var_204
  loc_69247B: PopAdLdVar
  loc_69247C: FLdPrThis
  loc_69247D: VCallAd Control_ID_Status
  loc_692480: FStAdFunc var_348
  loc_692483: FLdPr var_348
  loc_692486: LateIdSt
  loc_69248B: FFree1Ad var_348
  loc_692490: FLdRfVar var_1F0
  loc_692493: LdFixedStr
  loc_692496: CVarStr var_240
  loc_692499: HardType
  loc_69249A: LitI4 &H19
  loc_69249F: FLdRfVar var_214
  loc_6924A2: ImpAdCallFPR4  = Space()
  loc_6924A7: FLdRfVar var_214
  loc_6924AA: NeVar var_260
  loc_6924AE: LitI4 1
  loc_6924B3: FLdRfVar var_1F0
  loc_6924B6: LdFixedStr
  loc_6924B9: FStStrNoPop var_220
  loc_6924BC: ImpAdCallI2 Left$(, )
  loc_6924C1: FStStr var_344
  loc_6924C4: ILdRf var_220
  loc_6924C7: FLdRfVar var_1F0
  loc_6924CA: StFixedStr
  loc_6924CD: ILdRf var_344
  loc_6924D0: ImpAdCallI2 Asc()
  loc_6924D5: LitI2_Byte 0
  loc_6924D7: NeI2
  loc_6924D8: CVarBoolI2 var_204
  loc_6924DC: AndVar var_280
  loc_6924E0: CBoolVarNull
  loc_6924E2: FFreeStr var_220 = ""
  loc_6924E9: FFreeVar var_240 = "": var_214 = ""
  loc_6924F2: BranchF loc_6925FC
  loc_6924F7: LitI2_Byte &HFF
  loc_6924F9: FStI2 var_8E
  loc_6924FE: FLdRfVar var_1F0
  loc_692501: LdFixedStr
  loc_692504: PopTmpLdAdStr
  loc_692508: CVarRef
  loc_69250D: FLdRfVar var_214
  loc_692510: ImpAdCallFPR4  = Ucase()
  loc_692515: ILdRf var_220
  loc_692518: FLdRfVar var_1F0
  loc_69251B: StFixedStr
  loc_69251E: FLdRfVar var_214
  loc_692521: CStrVarTmp
  loc_692522: FStStrNoPop var_344
  loc_692525: FLdRfVar var_14E
  loc_692528: StFixedStr
  loc_69252B: FFreeStr var_220 = ""
  loc_692532: FFree1Var var_214 = ""
  loc_692537: LitI4 &HD
  loc_69253C: FLdRfVar var_18C
  loc_69253F: LdFixedStr
  loc_692542: PopTmpLdAdStr
  loc_692546: CVarRef
  loc_69254B: FLdRfVar var_214
  loc_69254E: ImpAdCallFPR4  = Left(, )
  loc_692553: ILdRf var_220
  loc_692556: FLdRfVar var_18C
  loc_692559: StFixedStr
  loc_69255C: FLdRfVar var_214
  loc_69255F: CStrVarTmp
  loc_692560: FStStrNoPop var_344
  loc_692563: FLdRfVar var_AE
  loc_692566: StFixedStr
  loc_692569: FFreeStr var_220 = ""
  loc_692570: FFree1Var var_214 = ""
  loc_692575: FLdRfVar var_1BE
  loc_692578: LdFixedStr
  loc_69257B: FStStrNoPop var_220
  loc_69257E: FLdRfVar var_11C
  loc_692581: StFixedStr
  loc_692584: FFree1Str var_220
  loc_692589: FLdI2 var_152
  loc_69258C: FStI2 var_150
  loc_692591: FLdI2 var_16E
  loc_692594: CUI1I2
  loc_692596: FStUI1 var_90
  loc_69259C: FLdRfVar var_216
  loc_69259F: FLdRfVar var_156
  loc_6925A2: FLdRfVar var_150
  loc_6925A5: FLdRfVar var_348
  loc_6925A8: ImpAdLdRf MemVar_74C760
  loc_6925AB: NewIfNullPr Formx
  loc_6925AE: from_stack_1v = Formx.global_4589716Get()
  loc_6925B3: ILdRf var_348
  loc_6925B6: ImpAdCallNonVirt
  loc_6925BC: FLdI2 var_216
  loc_6925BF: NotI4
  loc_6925C0: FFree1Ad var_348
  loc_6925C3: BranchF loc_6925FC
  loc_6925C8: FLdRfVar var_214
  loc_6925CB: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6925D0: FLdRfVar var_214
  loc_6925D3: CBoolVarNull
  loc_6925D5: FFree1Var var_214 = ""
  loc_6925D8: BranchF loc_6925F5
  loc_6925DD: ILdRf Me
  loc_6925E0: FStAdNoPop
  loc_6925E4: ImpAdLdRf MemVar_7520D4
  loc_6925E7: NewIfNullPr Global
  loc_6925EA: Global.Unload from_stack_1
  loc_6925EF: FFree1Ad var_348
  loc_6925F4: ExitProcHresult
  loc_6925F9: Branch loc_69259A
  loc_692600: FLdI2 var_154
  loc_692603: LitI2_Byte 1
  loc_692605: AddI2
  loc_692606: FStI2 var_154
  loc_69260B: FLdI2 var_152
  loc_69260E: LitI2_Byte 1
  loc_692610: AddI2
  loc_692611: FStI2 var_152
  loc_692616: Branch loc_692448
  loc_69261B: FLdUI1
  loc_69261F: CI2UI1
  loc_692621: Close
  loc_692625: On Error GoTo 0
  loc_69262A: ExitProcHresult
  loc_69262D: FLdRfVar var_344
  loc_692630: LitVar_Missing var_340
  loc_692633: LitVar_Missing var_320
  loc_692636: LitVar_Missing var_300
  loc_692639: LitVar_Missing var_2E0
  loc_69263C: LitVar_Missing var_2C0
  loc_69263F: LitVar_Missing var_2A0
  loc_692642: LitVar_Missing var_280
  loc_692645: LitVar_Missing var_260
  loc_692648: LitVar_Missing var_240
  loc_69264B: LitVar_Missing var_214
  loc_69264E: LitStr "Inserte el diskette provisto por el CEM 37 en el disk drive"
  loc_692651: FStStrCopy var_220
  loc_692654: FLdRfVar var_220
  loc_692657: LitI4 2
  loc_69265C: PopTmpLdAdStr var_21C
  loc_69265F: LitI2_Byte &H64
  loc_692661: PopTmpLdAd2 var_216
  loc_692664: ImpAdLdRf MemVar_74C7D0
  loc_692667: NewIfNullPr clsMsg
  loc_69266A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69266F: LitVar_Missing var_3B8
  loc_692672: LitVar_Missing var_398
  loc_692675: LitVar_Missing var_378
  loc_692678: LitI4 5
  loc_69267D: FLdZeroAd var_344
  loc_692680: CVarStr var_358
  loc_692683: ImpAdCallI2 MsgBox(, , , , )
  loc_692688: LitI4 4
  loc_69268D: EqI4
  loc_69268E: FFree1Str var_220
  loc_692691: FFreeVar var_214 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_358 = "": var_378 = "": var_398 = ""
  loc_6926B0: BranchF loc_6926BC
  loc_6926B5: Resume
  loc_6926B9: Branch loc_6926C1
  loc_6926C0: ExitProcHresult
  loc_6926C5: LitVar_Missing var_280
  loc_6926C8: LitVar_Missing var_260
  loc_6926CB: LitVar_Missing var_240
  loc_6926CE: LitI4 &H10
  loc_6926D3: LitVarStr var_204, "Error importacion de datos"
  loc_6926D8: FStVarCopyObj var_214
  loc_6926DB: FLdRfVar var_214
  loc_6926DE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6926E3: FFreeVar var_214 = "": var_240 = "": var_260 = ""
  loc_6926F0: ExitProcHresult
  loc_6926F3: ExitProcHresult
End Sub
