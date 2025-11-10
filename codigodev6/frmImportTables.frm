VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWow64\COMCTL32.OCX"
Begin VB.Form frmImportTables
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
  ClientWidth = 6975
  ClientHeight = 4020
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin ComctlLib.StatusBar stbBarra
    Left = 0
    Top = 3645
    Width = 6975
    Height = 375
    TabIndex = 19
    OleObjectBlob = "frmImportTables.frx":0000
  End
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 1"
    Index = 0
    Left = 480
    Top = 1080
    Width = 1335
    Height = 255
    TabIndex = 0
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 2"
    Index = 1
    Left = 480
    Top = 1440
    Width = 1335
    Height = 255
    TabIndex = 1
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 3"
    Index = 2
    Left = 480
    Top = 1800
    Width = 1335
    Height = 255
    TabIndex = 2
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 4"
    Index = 3
    Left = 480
    Top = 2160
    Width = 1335
    Height = 255
    TabIndex = 3
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 5"
    Index = 4
    Left = 2040
    Top = 1080
    Width = 1335
    Height = 255
    TabIndex = 4
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 6"
    Index = 5
    Left = 2040
    Top = 1440
    Width = 1335
    Height = 255
    TabIndex = 5
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 7"
    Index = 6
    Left = 2040
    Top = 1800
    Width = 1335
    Height = 255
    TabIndex = 6
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 8"
    Index = 7
    Left = 2040
    Top = 2160
    Width = 1335
    Height = 255
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 9"
    Index = 8
    Left = 3600
    Top = 1080
    Width = 1335
    Height = 255
    TabIndex = 8
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 10"
    Index = 9
    Left = 3600
    Top = 1440
    Width = 1335
    Height = 255
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 11"
    Index = 10
    Left = 3600
    Top = 1800
    Width = 1335
    Height = 255
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 12"
    Index = 11
    Left = 3600
    Top = 2160
    Width = 1335
    Height = 255
    TabIndex = 11
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 13"
    Index = 12
    Left = 5160
    Top = 1080
    Width = 1335
    Height = 255
    TabIndex = 12
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 14"
    Index = 13
    Left = 5160
    Top = 1440
    Width = 1335
    Height = 255
    TabIndex = 13
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 15"
    Index = 14
    Left = 5160
    Top = 1800
    Width = 1335
    Height = 255
    TabIndex = 14
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
  Begin VB.CheckBox chkTanque
    Caption = "Tanque: 16"
    Index = 15
    Left = 5160
    Top = 2160
    Width = 1335
    Height = 255
    TabIndex = 15
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
  Begin VB.CommandButton cmdTaquesOK
    Caption = "&Aceptar"
    Left = 5160
    Top = 2880
    Width = 1575
    Height = 615
    TabIndex = 17
    Default = -1  'True
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
  Begin VB.CommandButton cmdTanquesCancelar
    Caption = "&Cancelar"
    Left = 3240
    Top = 2880
    Width = 1695
    Height = 615
    TabIndex = 16
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
  Begin VB.Label lblTitulo
    Caption = "Importar Tablas"
    Left = 1560
    Top = 240
    Width = 3855
    Height = 495
    TabIndex = 18
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 20.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmImportTables"

Public strCargaTablas As String


Private Sub Form_Load() '66C410
  'Data Table: 40DC88
  loc_66C050: FLdRfVar var_94
  loc_66C053: FLdPr Me
  loc_66C056:  = Me.Width
  loc_66C05B: FLdRfVar var_90
  loc_66C05E: FLdRfVar var_8C
  loc_66C061: ImpAdLdRf MemVar_7520D4
  loc_66C064: NewIfNullPr Global
  loc_66C067:  = Global.Screen
  loc_66C06C: FLdPr var_8C
  loc_66C06F:  = Screen.Width
  loc_66C074: FLdFPR4 var_90
  loc_66C077: FLdFPR4 var_94
  loc_66C07A: SubR4
  loc_66C07B: CI4R8
  loc_66C07C: LitI4 2
  loc_66C081: IDvI4
  loc_66C082: CR8I4
  loc_66C083: PopFPR4
  loc_66C084: FLdPr Me
  loc_66C087: Me.Left = from_stack_1s
  loc_66C08C: FFree1Ad var_8C
  loc_66C08F: FLdRfVar var_94
  loc_66C092: FLdPr Me
  loc_66C095:  = Me.Height
  loc_66C09A: FLdRfVar var_90
  loc_66C09D: FLdRfVar var_8C
  loc_66C0A0: ImpAdLdRf MemVar_7520D4
  loc_66C0A3: NewIfNullPr Global
  loc_66C0A6:  = Global.Screen
  loc_66C0AB: FLdPr var_8C
  loc_66C0AE:  = Screen.Height
  loc_66C0B3: FLdFPR4 var_90
  loc_66C0B6: FLdFPR4 var_94
  loc_66C0B9: SubR4
  loc_66C0BA: CI4R8
  loc_66C0BB: LitI4 2
  loc_66C0C0: IDvI4
  loc_66C0C1: CR8I4
  loc_66C0C2: PopFPR4
  loc_66C0C3: FLdPr Me
  loc_66C0C6: Me.Top = from_stack_1s
  loc_66C0CB: FFree1Ad var_8C
  loc_66C0CE: FLdRfVar var_1E0
  loc_66C0D1: LitVar_Missing var_1DC
  loc_66C0D4: LitVar_Missing var_1BC
  loc_66C0D7: LitVar_Missing var_19C
  loc_66C0DA: LitVar_Missing var_17C
  loc_66C0DD: LitVar_Missing var_15C
  loc_66C0E0: LitVar_Missing var_13C
  loc_66C0E3: LitVar_Missing var_11C
  loc_66C0E6: LitVar_Missing var_FC
  loc_66C0E9: LitVar_Missing var_DC
  loc_66C0EC: LitVar_Missing var_BC
  loc_66C0EF: LitStr "Cargar Tablas"
  loc_66C0F2: FStStrCopy var_9C
  loc_66C0F5: FLdRfVar var_9C
  loc_66C0F8: LitI4 2
  loc_66C0FD: PopTmpLdAdStr var_90
  loc_66C100: LitI2_Byte &H1E
  loc_66C102: PopTmpLdAd2 var_96
  loc_66C105: ImpAdLdRf MemVar_74C7D0
  loc_66C108: NewIfNullPr clsMsg
  loc_66C10B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66C110: ILdRf var_1E0
  loc_66C113: FLdPr Me
  loc_66C116: MemStStrCopy
  loc_66C11A: FFreeStr var_9C = ""
  loc_66C121: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_66C138: FLdRfVar var_1E0
  loc_66C13B: LitVar_Missing var_1DC
  loc_66C13E: LitVar_Missing var_1BC
  loc_66C141: LitVar_Missing var_19C
  loc_66C144: LitVar_Missing var_17C
  loc_66C147: LitVar_Missing var_15C
  loc_66C14A: LitVar_Missing var_13C
  loc_66C14D: LitVar_Missing var_11C
  loc_66C150: LitVar_Missing var_FC
  loc_66C153: LitVar_Missing var_DC
  loc_66C156: LitVar_Missing var_BC
  loc_66C159: LitStr "Elija las tablas de los tanques a importar."
  loc_66C15C: FStStrCopy var_9C
  loc_66C15F: FLdRfVar var_9C
  loc_66C162: LitI4 3
  loc_66C167: PopTmpLdAdStr var_90
  loc_66C16A: LitI2_Byte &H1E
  loc_66C16C: PopTmpLdAd2 var_96
  loc_66C16F: ImpAdLdRf MemVar_74C7D0
  loc_66C172: NewIfNullPr clsMsg
  loc_66C175: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66C17A: FLdZeroAd var_1E0
  loc_66C17D: CVarStr var_1F0
  loc_66C180: PopAdLdVar
  loc_66C181: FLdPrThis
  loc_66C182: VCallAd Control_ID_stbBarra
  loc_66C185: FStAdFunc var_8C
  loc_66C188: FLdPr var_8C
  loc_66C18B: LateIdSt
  loc_66C190: FFree1Str var_9C
  loc_66C193: FFree1Ad var_8C
  loc_66C196: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = ""
  loc_66C1AF: FLdRfVar var_1E0
  loc_66C1B2: LitVar_Missing var_1DC
  loc_66C1B5: LitVar_Missing var_1BC
  loc_66C1B8: LitVar_Missing var_19C
  loc_66C1BB: LitVar_Missing var_17C
  loc_66C1BE: LitVar_Missing var_15C
  loc_66C1C1: LitVar_Missing var_13C
  loc_66C1C4: LitVar_Missing var_11C
  loc_66C1C7: LitVar_Missing var_FC
  loc_66C1CA: LitVar_Missing var_DC
  loc_66C1CD: LitVar_Missing var_BC
  loc_66C1D0: LitStr "Importar Tablas"
  loc_66C1D3: FStStrCopy var_9C
  loc_66C1D6: FLdRfVar var_9C
  loc_66C1D9: LitI4 9
  loc_66C1DE: PopTmpLdAdStr var_90
  loc_66C1E1: LitI2_Byte &H1E
  loc_66C1E3: PopTmpLdAd2 var_96
  loc_66C1E6: ImpAdLdRf MemVar_74C7D0
  loc_66C1E9: NewIfNullPr clsMsg
  loc_66C1EC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66C1F1: ILdRf var_1E0
  loc_66C1F4: FLdPrThis
  loc_66C1F5: VCallAd Control_ID_lblTitulo
  loc_66C1F8: FStAdFunc var_8C
  loc_66C1FB: FLdPr var_8C
  loc_66C1FE: Me.Caption = from_stack_1
  loc_66C203: FFreeStr var_9C = ""
  loc_66C20A: FFree1Ad var_8C
  loc_66C20D: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_66C224: FLdRfVar var_1E0
  loc_66C227: LitVar_Missing var_1DC
  loc_66C22A: LitVar_Missing var_1BC
  loc_66C22D: LitVar_Missing var_19C
  loc_66C230: LitVar_Missing var_17C
  loc_66C233: LitVar_Missing var_15C
  loc_66C236: LitVar_Missing var_13C
  loc_66C239: LitVar_Missing var_11C
  loc_66C23C: LitVar_Missing var_FC
  loc_66C23F: LitVar_Missing var_DC
  loc_66C242: LitVar_Missing var_BC
  loc_66C245: LitStr "&OK"
  loc_66C248: FStStrCopy var_9C
  loc_66C24B: FLdRfVar var_9C
  loc_66C24E: LitI4 &HA
  loc_66C253: PopTmpLdAdStr var_90
  loc_66C256: LitI2_Byte &H1E
  loc_66C258: PopTmpLdAd2 var_96
  loc_66C25B: ImpAdLdRf MemVar_74C7D0
  loc_66C25E: NewIfNullPr clsMsg
  loc_66C261: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66C266: ILdRf var_1E0
  loc_66C269: FLdPrThis
  loc_66C26A: VCallAd Control_ID_cmdTaquesOK
  loc_66C26D: FStAdFunc var_8C
  loc_66C270: FLdPr var_8C
  loc_66C273: Me.Caption = from_stack_1
  loc_66C278: FFreeStr var_9C = ""
  loc_66C27F: FFree1Ad var_8C
  loc_66C282: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_66C299: FLdRfVar var_1E0
  loc_66C29C: LitVar_Missing var_1DC
  loc_66C29F: LitVar_Missing var_1BC
  loc_66C2A2: LitVar_Missing var_19C
  loc_66C2A5: LitVar_Missing var_17C
  loc_66C2A8: LitVar_Missing var_15C
  loc_66C2AB: LitVar_Missing var_13C
  loc_66C2AE: LitVar_Missing var_11C
  loc_66C2B1: LitVar_Missing var_FC
  loc_66C2B4: LitVar_Missing var_DC
  loc_66C2B7: LitVar_Missing var_BC
  loc_66C2BA: LitStr "&Cancelar"
  loc_66C2BD: FStStrCopy var_9C
  loc_66C2C0: FLdRfVar var_9C
  loc_66C2C3: LitI4 &HB
  loc_66C2C8: PopTmpLdAdStr var_90
  loc_66C2CB: LitI2_Byte &H1E
  loc_66C2CD: PopTmpLdAd2 var_96
  loc_66C2D0: ImpAdLdRf MemVar_74C7D0
  loc_66C2D3: NewIfNullPr clsMsg
  loc_66C2D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66C2DB: ILdRf var_1E0
  loc_66C2DE: FLdPrThis
  loc_66C2DF: VCallAd Control_ID_cmdTanquesCancelar
  loc_66C2E2: FStAdFunc var_8C
  loc_66C2E5: FLdPr var_8C
  loc_66C2E8: Me.Caption = from_stack_1
  loc_66C2ED: FFreeStr var_9C = ""
  loc_66C2F4: FFree1Ad var_8C
  loc_66C2F7: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = ""
  loc_66C30E: LitI2_Byte 1
  loc_66C310: FLdRfVar var_86
  loc_66C313: LitI2_Byte &H10
  loc_66C315: ForI2 var_1F4
  loc_66C31B: ImpAdLdUI1
  loc_66C31F: CI2UI1
  loc_66C321: LitI2_Byte 4
  loc_66C323: EqI2
  loc_66C324: ImpAdLdUI1
  loc_66C328: CI2UI1
  loc_66C32A: LitI2_Byte 5
  loc_66C32C: EqI2
  loc_66C32D: OrI4
  loc_66C32E: BranchF loc_66C3DA
  loc_66C331: FLdRfVar var_96
  loc_66C334: FLdI2 var_86
  loc_66C337: CI4UI1
  loc_66C338: ImpAdLdRf MemVar_74C1D8
  loc_66C33B: Ary1LdUI1
  loc_66C33D: CI2UI1
  loc_66C33F: ImpAdLdRf MemVar_74A220
  loc_66C342: NewIfNullPr clsProducts
  loc_66C345:  = clsProducts.hWnd
  loc_66C34A: FLdI2 var_96
  loc_66C34D: NotI4
  loc_66C34E: BranchF loc_66C381
  loc_66C351: LitI4 1
  loc_66C356: CI2I4
  loc_66C357: FLdRfVar var_1F8
  loc_66C35A: FLdI2 var_86
  loc_66C35D: LitI2_Byte 1
  loc_66C35F: SubI2
  loc_66C360: FLdPrThis
  loc_66C361: VCallAd Control_ID_chkTanque
  loc_66C364: FStAdFunc var_8C
  loc_66C367: FLdPr var_8C
  loc_66C36A: Set from_stack_2 = Me(from_stack_1)
  loc_66C36F: FLdPr var_1F8
  loc_66C372: Me.Value = from_stack_1
  loc_66C377: FFreeAd var_8C = ""
  loc_66C37E: Branch loc_66C3D7
  loc_66C381: LitI4 0
  loc_66C386: CI2I4
  loc_66C387: FLdRfVar var_1F8
  loc_66C38A: FLdI2 var_86
  loc_66C38D: LitI2_Byte 1
  loc_66C38F: SubI2
  loc_66C390: FLdPrThis
  loc_66C391: VCallAd Control_ID_chkTanque
  loc_66C394: FStAdFunc var_8C
  loc_66C397: FLdPr var_8C
  loc_66C39A: Set from_stack_2 = Me(from_stack_1)
  loc_66C39F: FLdPr var_1F8
  loc_66C3A2: Me.Value = from_stack_1
  loc_66C3A7: FFreeAd var_8C = ""
  loc_66C3AE: LitI2_Byte 0
  loc_66C3B0: FLdRfVar var_1F8
  loc_66C3B3: FLdI2 var_86
  loc_66C3B6: LitI2_Byte 1
  loc_66C3B8: SubI2
  loc_66C3B9: FLdPrThis
  loc_66C3BA: VCallAd Control_ID_chkTanque
  loc_66C3BD: FStAdFunc var_8C
  loc_66C3C0: FLdPr var_8C
  loc_66C3C3: Set from_stack_2 = Me(from_stack_1)
  loc_66C3C8: FLdPr var_1F8
  loc_66C3CB: Me.Enabled = from_stack_1b
  loc_66C3D0: FFreeAd var_8C = ""
  loc_66C3D7: Branch loc_66C407
  loc_66C3DA: LitI4 1
  loc_66C3DF: CI2I4
  loc_66C3E0: FLdRfVar var_1F8
  loc_66C3E3: FLdI2 var_86
  loc_66C3E6: LitI2_Byte 1
  loc_66C3E8: SubI2
  loc_66C3E9: FLdPrThis
  loc_66C3EA: VCallAd Control_ID_chkTanque
  loc_66C3ED: FStAdFunc var_8C
  loc_66C3F0: FLdPr var_8C
  loc_66C3F3: Set from_stack_2 = Me(from_stack_1)
  loc_66C3F8: FLdPr var_1F8
  loc_66C3FB: Me.Value = from_stack_1
  loc_66C400: FFreeAd var_8C = ""
  loc_66C407: FLdRfVar var_86
  loc_66C40A: NextI2 var_1F4, loc_66C31B
  loc_66C40F: ExitProcHresult
End Sub

Private Sub cmdTanquesCancelar_Click() '5D1D0C
  'Data Table: 40DC88
  loc_5D1CF4: ILdRf Me
  loc_5D1CF7: FStAdNoPop
  loc_5D1CFB: ImpAdLdRf MemVar_7520D4
  loc_5D1CFE: NewIfNullPr Global
  loc_5D1D01: Global.Unload from_stack_1
  loc_5D1D06: FFree1Ad var_88
  loc_5D1D09: ExitProcHresult
End Sub

Private Sub cmdTaquesOK_Click() '6B0D78
  'Data Table: 40DC88
  loc_6B06AC: LitI2_Byte &HFF
  loc_6B06AE: FStI2 var_88
  loc_6B06B3: LitI2_Byte &HFF
  loc_6B06B5: FStI2 var_8A
  loc_6B06BA: OnErrorGoto loc_6B0AC4
  loc_6B06BF: LitI4 0
  loc_6B06C4: LitVarStr var_9C, "A:\INCH.TNK"
  loc_6B06C9: FStVarCopyObj var_AC
  loc_6B06CC: FLdRfVar var_AC
  loc_6B06CF: ImpAdCallI2 push Dir(, )
  loc_6B06D4: FStStrNoPop var_B0
  loc_6B06D7: LitStr vbNullString
  loc_6B06DA: NeStr
  loc_6B06DC: FFree1Str var_B0
  loc_6B06DF: FFree1Var var_AC = ""
  loc_6B06E2: BranchF loc_6B0703
  loc_6B06E7: LitVar_Missing var_AC
  loc_6B06EA: ImpAdCallI2 FreeFile()
  loc_6B06EF: FStI2 var_88
  loc_6B06F2: FFree1Var var_AC = ""
  loc_6B06F7: LitStr "A:\INCH.TNK"
  loc_6B06FA: FLdI2 var_88
  loc_6B06FD: LitI2_Byte &HFF
  loc_6B06FF: OpenFile
  loc_6B0707: LitI4 0
  loc_6B070C: LitVarStr var_9C, "A:\TABLES.TNK"
  loc_6B0711: FStVarCopyObj var_AC
  loc_6B0714: FLdRfVar var_AC
  loc_6B0717: ImpAdCallI2 push Dir(, )
  loc_6B071C: FStStrNoPop var_B0
  loc_6B071F: LitStr vbNullString
  loc_6B0722: NeStr
  loc_6B0724: FFree1Str var_B0
  loc_6B0727: FFree1Var var_AC = ""
  loc_6B072A: BranchF loc_6B074B
  loc_6B072F: LitVar_Missing var_AC
  loc_6B0732: ImpAdCallI2 FreeFile()
  loc_6B0737: FStI2 var_8A
  loc_6B073A: FFree1Var var_AC = ""
  loc_6B073F: LitStr "A:\TABLES.TNK"
  loc_6B0742: FLdI2 var_8A
  loc_6B0745: LitI2_Byte &HFF
  loc_6B0747: OpenFile
  loc_6B074F: FLdI2 var_8A
  loc_6B0752: LitI2_Byte &HFF
  loc_6B0754: EqI2
  loc_6B0755: FLdI2 var_88
  loc_6B0758: LitI2_Byte &HFF
  loc_6B075A: EqI2
  loc_6B075B: AndI4
  loc_6B075C: BranchF loc_6B08D6
  loc_6B0761: FLdRfVar var_1DC
  loc_6B0764: LitVar_Missing var_1D8
  loc_6B0767: LitVar_Missing var_1B8
  loc_6B076A: LitVar_Missing var_198
  loc_6B076D: LitVar_Missing var_178
  loc_6B0770: LitVar_Missing var_158
  loc_6B0773: LitVar_Missing var_138
  loc_6B0776: LitVar_Missing var_118
  loc_6B0779: LitVar_Missing var_F8
  loc_6B077C: LitVar_Missing var_D8
  loc_6B077F: LitVar_Missing var_AC
  loc_6B0782: LitStr "Inserte un diskette que contenga las tablas, y repita la acción."
  loc_6B0785: FStStrCopy var_B0
  loc_6B0788: FLdRfVar var_B0
  loc_6B078B: LitI4 1
  loc_6B0790: PopTmpLdAdStr var_B8
  loc_6B0793: LitI2_Byte &H1E
  loc_6B0795: PopTmpLdAd2 var_B2
  loc_6B0798: ImpAdLdRf MemVar_74C7D0
  loc_6B079B: NewIfNullPr clsMsg
  loc_6B079E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B07A3: LitVar_Missing var_23C
  loc_6B07A6: LitVar_Missing var_21C
  loc_6B07A9: FLdPr Me
  loc_6B07AC: MemLdRfVar from_stack_1.strCargaTablas
  loc_6B07AF: CVarRef
  loc_6B07B4: LitI4 &H45
  loc_6B07B9: FLdZeroAd var_1DC
  loc_6B07BC: CVarStr var_1EC
  loc_6B07BF: ImpAdCallI2 MsgBox(, , , , )
  loc_6B07C4: LitI4 4
  loc_6B07C9: EqI4
  loc_6B07CA: FFree1Str var_B0
  loc_6B07CD: FFreeVar var_AC = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_21C = ""
  loc_6B07EA: BranchF loc_6B0880
  loc_6B07EF: LitI4 0
  loc_6B07F4: LitVarStr var_9C, "A:\INCH.TNK"
  loc_6B07F9: FStVarCopyObj var_AC
  loc_6B07FC: FLdRfVar var_AC
  loc_6B07FF: ImpAdCallI2 push Dir(, )
  loc_6B0804: FStStrNoPop var_B0
  loc_6B0807: LitStr vbNullString
  loc_6B080A: NeStr
  loc_6B080C: FFree1Str var_B0
  loc_6B080F: FFree1Var var_AC = ""
  loc_6B0812: BranchF loc_6B0833
  loc_6B0817: LitVar_Missing var_AC
  loc_6B081A: ImpAdCallI2 FreeFile()
  loc_6B081F: FStI2 var_88
  loc_6B0822: FFree1Var var_AC = ""
  loc_6B0827: LitStr "A:\INCH.TNK"
  loc_6B082A: FLdI2 var_88
  loc_6B082D: LitI2_Byte &HFF
  loc_6B082F: OpenFile
  loc_6B0837: LitI4 0
  loc_6B083C: LitVarStr var_9C, "A:\TABLES.TNK"
  loc_6B0841: FStVarCopyObj var_AC
  loc_6B0844: FLdRfVar var_AC
  loc_6B0847: ImpAdCallI2 push Dir(, )
  loc_6B084C: FStStrNoPop var_B0
  loc_6B084F: LitStr vbNullString
  loc_6B0852: NeStr
  loc_6B0854: FFree1Str var_B0
  loc_6B0857: FFree1Var var_AC = ""
  loc_6B085A: BranchF loc_6B087B
  loc_6B085F: LitVar_Missing var_AC
  loc_6B0862: ImpAdCallI2 FreeFile()
  loc_6B0867: FStI2 var_8A
  loc_6B086A: FFree1Var var_AC = ""
  loc_6B086F: LitStr "A:\TABLES.TNK"
  loc_6B0872: FLdI2 var_8A
  loc_6B0875: LitI2_Byte &HFF
  loc_6B0877: OpenFile
  loc_6B087D: Branch loc_6B08CF
  loc_6B0884: LitI2_Byte &HFF
  loc_6B0886: FLdPrThis
  loc_6B0887: VCallAd Control_ID_cmdTanquesCancelar
  loc_6B088A: FStAdFunc var_240
  loc_6B088D: FLdPr var_240
  loc_6B0890: Me.Enabled = from_stack_1b
  loc_6B0895: FFree1Ad var_240
  loc_6B089A: LitI2_Byte &HFF
  loc_6B089C: FLdPrThis
  loc_6B089D: VCallAd Control_ID_cmdTaquesOK
  loc_6B08A0: FStAdFunc var_240
  loc_6B08A3: FLdPr var_240
  loc_6B08A6: Me.Enabled = from_stack_1b
  loc_6B08AB: FFree1Ad var_240
  loc_6B08B0: ImpAdCallFPR4 DoEvents()
  loc_6B08B7: ILdRf Me
  loc_6B08BA: FStAdNoPop
  loc_6B08BE: ImpAdLdRf MemVar_7520D4
  loc_6B08C1: NewIfNullPr Global
  loc_6B08C4: Global.Unload from_stack_1
  loc_6B08C9: FFree1Ad var_240
  loc_6B08CE: ExitProcHresult
  loc_6B08D3: Branch loc_6B074D
  loc_6B08D8: LitI2_Byte 0
  loc_6B08DA: FLdPrThis
  loc_6B08DB: VCallAd Control_ID_cmdTanquesCancelar
  loc_6B08DE: FStAdFunc var_240
  loc_6B08E1: FLdPr var_240
  loc_6B08E4: Me.Enabled = from_stack_1b
  loc_6B08E9: FFree1Ad var_240
  loc_6B08EE: LitI2_Byte 0
  loc_6B08F0: FLdPrThis
  loc_6B08F1: VCallAd Control_ID_cmdTaquesOK
  loc_6B08F4: FStAdFunc var_240
  loc_6B08F7: FLdPr var_240
  loc_6B08FA: Me.Enabled = from_stack_1b
  loc_6B08FF: FFree1Ad var_240
  loc_6B0904: LitI2_Byte 1
  loc_6B0906: FLdRfVar var_86
  loc_6B0909: LitI2_Byte &H10
  loc_6B090B: ForI2 var_244
  loc_6B0913: FLdRfVar var_B2
  loc_6B0916: FLdRfVar var_248
  loc_6B0919: FLdI2 var_86
  loc_6B091C: LitI2_Byte 1
  loc_6B091E: SubI2
  loc_6B091F: FLdPrThis
  loc_6B0920: VCallAd Control_ID_chkTanque
  loc_6B0923: FStAdFunc var_240
  loc_6B0926: FLdPr var_240
  loc_6B0929: Set from_stack_2 = Me(from_stack_1)
  loc_6B092E: FLdPr var_248
  loc_6B0931:  = Me.Value
  loc_6B0936: FLdI2 var_B2
  loc_6B0939: CI4UI1
  loc_6B093A: LitI4 1
  loc_6B093F: EqI4
  loc_6B0940: FFreeAd var_240 = ""
  loc_6B0947: BranchF loc_6B0A4E
  loc_6B094C: FLdRfVar var_1DC
  loc_6B094F: LitVar_Missing var_1D8
  loc_6B0952: LitVar_Missing var_1B8
  loc_6B0955: LitVar_Missing var_198
  loc_6B0958: LitVar_Missing var_178
  loc_6B095B: LitVar_Missing var_158
  loc_6B095E: LitVar_Missing var_138
  loc_6B0961: LitVar_Missing var_118
  loc_6B0964: LitVar_Missing var_F8
  loc_6B0967: LitVar_Missing var_D8
  loc_6B096A: LitVar_Missing var_AC
  loc_6B096D: LitStr "Importando tabla del tanque"
  loc_6B0970: FStStrCopy var_B0
  loc_6B0973: FLdRfVar var_B0
  loc_6B0976: LitI4 4
  loc_6B097B: PopTmpLdAdStr var_B8
  loc_6B097E: LitI2_Byte &H1E
  loc_6B0980: PopTmpLdAd2 var_B2
  loc_6B0983: ImpAdLdRf MemVar_74C7D0
  loc_6B0986: NewIfNullPr clsMsg
  loc_6B0989: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B098E: ILdRf var_1DC
  loc_6B0991: LitStr " "
  loc_6B0994: ConcatStr
  loc_6B0995: FStStrNoPop var_24C
  loc_6B0998: FLdI2 var_86
  loc_6B099B: CStrUI1
  loc_6B099D: FStStrNoPop var_250
  loc_6B09A0: ConcatStr
  loc_6B09A1: FStStrNoPop var_344
  loc_6B09A4: FLdRfVar var_340
  loc_6B09A7: LitVar_Missing var_33C
  loc_6B09AA: LitVar_Missing var_31C
  loc_6B09AD: LitVar_Missing var_2FC
  loc_6B09B0: LitVar_Missing var_2DC
  loc_6B09B3: LitVar_Missing var_2BC
  loc_6B09B6: LitVar_Missing var_29C
  loc_6B09B9: LitVar_Missing var_27C
  loc_6B09BC: LitVar_Missing var_23C
  loc_6B09BF: LitVar_Missing var_21C
  loc_6B09C2: LitVar_Missing var_1EC
  loc_6B09C5: LitStr ", espere un momento por favor..."
  loc_6B09C8: FStStrCopy var_25C
  loc_6B09CB: FLdRfVar var_25C
  loc_6B09CE: LitI4 5
  loc_6B09D3: PopTmpLdAdStr var_258
  loc_6B09D6: LitI2_Byte &H1E
  loc_6B09D8: PopTmpLdAd2 var_252
  loc_6B09DB: ImpAdLdRf MemVar_74C7D0
  loc_6B09DE: NewIfNullPr clsMsg
  loc_6B09E1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B09E6: ILdRf var_340
  loc_6B09E9: ConcatStr
  loc_6B09EA: CVarStr var_354
  loc_6B09ED: PopAdLdVar
  loc_6B09EE: FLdPrThis
  loc_6B09EF: VCallAd Control_ID_stbBarra
  loc_6B09F2: FStAdFunc var_240
  loc_6B09F5: FLdPr var_240
  loc_6B09F8: LateIdSt
  loc_6B09FD: FFreeStr var_B0 = "": var_1DC = "": var_24C = "": var_250 = "": var_25C = "": var_344 = ""
  loc_6B0A0E: FFree1Ad var_240
  loc_6B0A11: FFreeVar var_AC = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_21C = "": var_23C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_6B0A40: FLdI2 var_86
  loc_6B0A43: FLdRfVar var_8A
  loc_6B0A46: FLdRfVar var_88
  loc_6B0A49: from_stack_4v = Proc_44_5_5E24DC(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_6B0A52: FLdRfVar var_86
  loc_6B0A55: NextI2 var_244, loc_6B0911
  loc_6B0A5C: FLdI2 var_8A
  loc_6B0A5F: LitI2_Byte &HFF
  loc_6B0A61: NeI2
  loc_6B0A62: BranchF loc_6B0A6C
  loc_6B0A67: FLdI2 var_8A
  loc_6B0A6A: Close
  loc_6B0A6E: FLdI2 var_88
  loc_6B0A71: LitI2_Byte &HFF
  loc_6B0A73: NeI2
  loc_6B0A74: BranchF loc_6B0A7E
  loc_6B0A79: FLdI2 var_88
  loc_6B0A7C: Close
  loc_6B0A80: LitI2_Byte &HFF
  loc_6B0A82: FLdPrThis
  loc_6B0A83: VCallAd Control_ID_cmdTanquesCancelar
  loc_6B0A86: FStAdFunc var_240
  loc_6B0A89: FLdPr var_240
  loc_6B0A8C: Me.Enabled = from_stack_1b
  loc_6B0A91: FFree1Ad var_240
  loc_6B0A96: LitI2_Byte &HFF
  loc_6B0A98: FLdPrThis
  loc_6B0A99: VCallAd Control_ID_cmdTaquesOK
  loc_6B0A9C: FStAdFunc var_240
  loc_6B0A9F: FLdPr var_240
  loc_6B0AA2: Me.Enabled = from_stack_1b
  loc_6B0AA7: FFree1Ad var_240
  loc_6B0AAC: ILdRf Me
  loc_6B0AAF: FStAdNoPop
  loc_6B0AB3: ImpAdLdRf MemVar_7520D4
  loc_6B0AB6: NewIfNullPr Global
  loc_6B0AB9: Global.Unload from_stack_1
  loc_6B0ABE: FFree1Ad var_240
  loc_6B0AC3: ExitProcHresult
  loc_6B0AC6: FLdRfVar var_1DC
  loc_6B0AC9: LitVar_Missing var_1D8
  loc_6B0ACC: LitVar_Missing var_1B8
  loc_6B0ACF: LitVar_Missing var_198
  loc_6B0AD2: LitVar_Missing var_178
  loc_6B0AD5: LitVar_Missing var_158
  loc_6B0AD8: LitVar_Missing var_138
  loc_6B0ADB: LitVar_Missing var_118
  loc_6B0ADE: LitVar_Missing var_F8
  loc_6B0AE1: LitVar_Missing var_D8
  loc_6B0AE4: LitVar_Missing var_AC
  loc_6B0AE7: LitStr "Inserte el diskette con las tablas en la diskettera."
  loc_6B0AEA: FStStrCopy var_B0
  loc_6B0AED: FLdRfVar var_B0
  loc_6B0AF0: LitI4 6
  loc_6B0AF5: PopTmpLdAdStr var_B8
  loc_6B0AF8: LitI2_Byte &H1E
  loc_6B0AFA: PopTmpLdAd2 var_B2
  loc_6B0AFD: ImpAdLdRf MemVar_74C7D0
  loc_6B0B00: NewIfNullPr clsMsg
  loc_6B0B03: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B0B08: LitI4 &HD
  loc_6B0B0D: ImpAdCallI2 Chr$()
  loc_6B0B12: FStStr var_540
  loc_6B0B15: LitI4 &HA
  loc_6B0B1A: ImpAdCallI2 Chr$()
  loc_6B0B1F: FStStr var_544
  loc_6B0B22: FLdRfVar var_344
  loc_6B0B25: LitVar_Missing var_33C
  loc_6B0B28: LitVar_Missing var_31C
  loc_6B0B2B: LitVar_Missing var_2FC
  loc_6B0B2E: LitVar_Missing var_2DC
  loc_6B0B31: LitVar_Missing var_2BC
  loc_6B0B34: LitVar_Missing var_29C
  loc_6B0B37: LitVar_Missing var_27C
  loc_6B0B3A: LitVar_Missing var_23C
  loc_6B0B3D: LitVar_Missing var_21C
  loc_6B0B40: LitVar_Missing var_1EC
  loc_6B0B43: LitStr "Error Número:"
  loc_6B0B46: FStStrCopy var_340
  loc_6B0B49: FLdRfVar var_340
  loc_6B0B4C: LitI4 7
  loc_6B0B51: PopTmpLdAdStr var_258
  loc_6B0B54: LitI2_Byte &H1E
  loc_6B0B56: PopTmpLdAd2 var_252
  loc_6B0B59: ImpAdLdRf MemVar_74C7D0
  loc_6B0B5C: NewIfNullPr clsMsg
  loc_6B0B5F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B0B64: FLdRfVar var_360
  loc_6B0B67: ImpAdCallI2 Err 'rtcErrObj
  loc_6B0B6C: FStAdFunc var_240
  loc_6B0B6F: FLdPr var_240
  loc_6B0B72:  = Err.Number
  loc_6B0B77: LitI4 &HD
  loc_6B0B7C: ImpAdCallI2 Chr$()
  loc_6B0B81: FStStr var_548
  loc_6B0B84: LitI4 &HA
  loc_6B0B89: ImpAdCallI2 Chr$()
  loc_6B0B8E: FStStr var_54C
  loc_6B0B91: FLdRfVar var_4B8
  loc_6B0B94: LitVar_Missing var_4B4
  loc_6B0B97: LitVar_Missing var_494
  loc_6B0B9A: LitVar_Missing var_474
  loc_6B0B9D: LitVar_Missing var_454
  loc_6B0BA0: LitVar_Missing var_434
  loc_6B0BA3: LitVar_Missing var_414
  loc_6B0BA6: LitVar_Missing var_3F4
  loc_6B0BA9: LitVar_Missing var_3D4
  loc_6B0BAC: LitVar_Missing var_3B4
  loc_6B0BAF: LitVar_Missing var_354
  loc_6B0BB2: LitStr "Descripcion:"
  loc_6B0BB5: FStStrCopy var_384
  loc_6B0BB8: FLdRfVar var_384
  loc_6B0BBB: LitI4 8
  loc_6B0BC0: PopTmpLdAdStr var_380
  loc_6B0BC3: LitI2_Byte &H1E
  loc_6B0BC5: PopTmpLdAd2 var_37A
  loc_6B0BC8: ImpAdLdRf MemVar_74C7D0
  loc_6B0BCB: NewIfNullPr clsMsg
  loc_6B0BCE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B0BD3: FLdRfVar var_4C4
  loc_6B0BD6: ImpAdCallI2 Err 'rtcErrObj
  loc_6B0BDB: FStAdFunc var_248
  loc_6B0BDE: FLdPr var_248
  loc_6B0BE1:  = Err.Number
  loc_6B0BE6: LitVar_Missing var_53C
  loc_6B0BE9: LitVar_Missing var_51C
  loc_6B0BEC: LitVarStr var_4EC, "Cargar Tablas"
  loc_6B0BF1: FStVarCopyObj var_4FC
  loc_6B0BF4: FLdRfVar var_4FC
  loc_6B0BF7: LitI4 &H25
  loc_6B0BFC: ILdRf var_1DC
  loc_6B0BFF: FLdZeroAd var_540
  loc_6B0C02: FStStrNoPop var_24C
  loc_6B0C05: ConcatStr
  loc_6B0C06: FStStrNoPop var_250
  loc_6B0C09: FLdZeroAd var_544
  loc_6B0C0C: FStStrNoPop var_25C
  loc_6B0C0F: ConcatStr
  loc_6B0C10: FStStrNoPop var_358
  loc_6B0C13: ILdRf var_344
  loc_6B0C16: ConcatStr
  loc_6B0C17: FStStrNoPop var_35C
  loc_6B0C1A: LitStr " "
  loc_6B0C1D: ConcatStr
  loc_6B0C1E: FStStrNoPop var_364
  loc_6B0C21: ILdRf var_360
  loc_6B0C24: CStrI4
  loc_6B0C26: FStStrNoPop var_368
  loc_6B0C29: ConcatStr
  loc_6B0C2A: FStStrNoPop var_36C
  loc_6B0C2D: FLdZeroAd var_548
  loc_6B0C30: FStStrNoPop var_370
  loc_6B0C33: ConcatStr
  loc_6B0C34: FStStrNoPop var_374
  loc_6B0C37: FLdZeroAd var_54C
  loc_6B0C3A: FStStrNoPop var_378
  loc_6B0C3D: ConcatStr
  loc_6B0C3E: FStStrNoPop var_4BC
  loc_6B0C41: ILdRf var_4B8
  loc_6B0C44: ConcatStr
  loc_6B0C45: FStStrNoPop var_4C0
  loc_6B0C48: LitStr " "
  loc_6B0C4B: ConcatStr
  loc_6B0C4C: FStStrNoPop var_4C8
  loc_6B0C4F: ILdRf var_4C4
  loc_6B0C52: CStrI4
  loc_6B0C54: FStStrNoPop var_4CC
  loc_6B0C57: ConcatStr
  loc_6B0C58: CVarStr var_4DC
  loc_6B0C5B: ImpAdCallI2 MsgBox(, , , , )
  loc_6B0C60: LitI4 4
  loc_6B0C65: EqI4
  loc_6B0C66: FFreeStr var_B0 = "": var_1DC = "": var_24C = "": var_250 = "": var_25C = "": var_340 = "": var_358 = "": var_344 = "": var_35C = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_384 = "": var_4BC = "": var_4B8 = "": var_4C0 = "": var_4C8 = "": var_4CC = "": var_540 = "": var_544 = "": var_548 = ""
  loc_6B0C9B: FFreeAd var_240 = ""
  loc_6B0CA2: FFreeVar var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_AC = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1EC = "": var_21C = "": var_23C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_354 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_414 = "": var_434 = "": var_454 = "": var_474 = "": var_494 = ""
  loc_6B0CE9: BranchF loc_6B0CF5
  loc_6B0CEE: Resume
  loc_6B0CF2: Branch loc_6B0D72
  loc_6B0CF9: On Error Resume Next
  loc_6B0CFE: FLdI2 var_8A
  loc_6B0D01: LitI2_Byte &HFF
  loc_6B0D03: NeI2
  loc_6B0D04: BranchF loc_6B0D0E
  loc_6B0D09: FLdI2 var_8A
  loc_6B0D0C: Close
  loc_6B0D10: FLdI2 var_88
  loc_6B0D13: LitI2_Byte &HFF
  loc_6B0D15: NeI2
  loc_6B0D16: BranchF loc_6B0D20
  loc_6B0D1B: FLdI2 var_88
  loc_6B0D1E: Close
  loc_6B0D22: On Error GoTo 0
  loc_6B0D27: LitI2_Byte &HFF
  loc_6B0D29: FLdPrThis
  loc_6B0D2A: VCallAd Control_ID_cmdTanquesCancelar
  loc_6B0D2D: FStAdFunc var_240
  loc_6B0D30: FLdPr var_240
  loc_6B0D33: Me.Enabled = from_stack_1b
  loc_6B0D38: FFree1Ad var_240
  loc_6B0D3D: LitI2_Byte &HFF
  loc_6B0D3F: FLdPrThis
  loc_6B0D40: VCallAd Control_ID_cmdTaquesOK
  loc_6B0D43: FStAdFunc var_240
  loc_6B0D46: FLdPr var_240
  loc_6B0D49: Me.Enabled = from_stack_1b
  loc_6B0D4E: FFree1Ad var_240
  loc_6B0D53: ImpAdCallFPR4 DoEvents()
  loc_6B0D5A: ILdRf Me
  loc_6B0D5D: FStAdNoPop
  loc_6B0D61: ImpAdLdRf MemVar_7520D4
  loc_6B0D64: NewIfNullPr Global
  loc_6B0D67: Global.Unload from_stack_1
  loc_6B0D6C: FFree1Ad var_240
  loc_6B0D71: ExitProcHresult
  loc_6B0D76: ExitProcHresult
End Sub

Public Function strCargaTablasGet() '40E0EC
  strCargaTablasGet = strCargaTablas
End Function

Public Sub strCargaTablasPut(Value) '40E0FB
  strCargaTablas = Value
End Sub

Private Function Proc_44_5_5E24DC(arg_C, arg_10, arg_14) '5E24DC
  'Data Table: 40DC88
  loc_5E2478: LitI4 &H2670
  loc_5E247D: FLdI2 arg_14
  loc_5E2480: LitI2_Byte 1
  loc_5E2482: SubI2
  loc_5E2483: CI4UI1
  loc_5E2484: MulI4
  loc_5E2485: LitI4 1
  loc_5E248A: AddI4
  loc_5E248B: FStR4 var_88
  loc_5E248E: ILdI2 arg_C
  loc_5E2491: LitI2_Byte &HFF
  loc_5E2493: NeI2
  loc_5E2494: BranchF loc_5E24D9
  loc_5E2497: ILdI2 arg_C
  loc_5E249A: ILdRf var_88
  loc_5E249D: SeekFile
  loc_5E249F: FLdRfVar var_8A
  loc_5E24A2: LitStr "0"
  loc_5E24A5: FLdI2 arg_14
  loc_5E24A8: ILdRf arg_C
  loc_5E24AB: from_stack_4v = Proc_44_6_63C3E8(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5E24B0: FLdI2 var_8A
  loc_5E24B3: NotI4
  loc_5E24B4: BranchF loc_5E24D9
  loc_5E24B7: ILdI2 arg_C
  loc_5E24BA: LitI2_Byte &HFF
  loc_5E24BC: NeI2
  loc_5E24BD: BranchF loc_5E24D9
  loc_5E24C0: ILdI2 arg_10
  loc_5E24C3: ILdRf var_88
  loc_5E24C6: SeekFile
  loc_5E24C8: FLdRfVar var_8A
  loc_5E24CB: LitStr "1"
  loc_5E24CE: FLdI2 arg_14
  loc_5E24D1: ILdRf arg_10
  loc_5E24D4: from_stack_4v = Proc_44_6_63C3E8(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_5E24D9: ExitProcHresult
End Function

Private Function Proc_44_6_63C3E8(arg_C, arg_10, arg_14) '63C3E8
  'Data Table: 40DC88
  loc_63C1E4: ILdRf arg_14
  loc_63C1E7: FStStrCopy var_8C
  loc_63C1EA: LitI2_Byte 0
  loc_63C1EC: FStI2 var_86
  loc_63C1EF: LitStr vbNullString
  loc_63C1F2: FStStrCopy var_90
  loc_63C1F5: LitI2_Byte 0
  loc_63C1F7: FStI2 var_96
  loc_63C1FA: ILdI2 arg_C
  loc_63C1FD: ImpAdCallI2 push EOF()
  loc_63C202: NotI4
  loc_63C203: BranchF loc_63C3DD
  loc_63C206: FLdI2 var_96
  loc_63C209: LitI2 410
  loc_63C20C: ModI2
  loc_63C20D: LitI2_Byte 0
  loc_63C20F: EqI2
  loc_63C210: ILdRf var_90
  loc_63C213: LitStr vbNullString
  loc_63C216: NeStr
  loc_63C218: AndI4
  loc_63C219: BranchF loc_63C34D
  loc_63C21C: LitI4 &H32
  loc_63C221: ILdRf var_90
  loc_63C224: ImpAdCallI2 Left$(, )
  loc_63C229: FStStrNoPop var_C0
  loc_63C22C: LitVarStr var_AC, "0"
  loc_63C231: FStVarCopyObj var_BC
  loc_63C234: FLdRfVar var_BC
  loc_63C237: LitI4 &H32
  loc_63C23C: ImpAdCallI2 String$(, )
  loc_63C241: FStStrNoPop var_C4
  loc_63C244: EqStr
  loc_63C246: FLdI2 var_98
  loc_63C249: LitI2_Byte 0
  loc_63C24B: EqI2
  loc_63C24C: AndI4
  loc_63C24D: FFreeStr var_C0 = ""
  loc_63C254: FFree1Var var_BC = ""
  loc_63C257: BranchF loc_63C260
  loc_63C25A: ExitProcCbHresult
  loc_63C260: LitI4 1
  loc_63C265: LitI4 1
  loc_63C26A: LitVarStr var_D4, "00000000"
  loc_63C26F: FStVarCopyObj var_BC
  loc_63C272: FLdRfVar var_BC
  loc_63C275: FLdRfVar var_98
  loc_63C278: CVarRef
  loc_63C27D: ImpAdCallI2 Format$(, )
  loc_63C282: FStStrNoPop var_C0
  loc_63C285: LitStr "00000410"
  loc_63C288: ConcatStr
  loc_63C289: CVarStr var_144
  loc_63C28C: LitVarStr var_114, "0"
  loc_63C291: FStVarCopyObj var_124
  loc_63C294: FLdRfVar var_124
  loc_63C297: LitVarStr var_F4, "1"
  loc_63C29C: FStVarCopyObj var_104
  loc_63C29F: FLdRfVar var_104
  loc_63C2A2: FLdI2 var_96
  loc_63C2A5: LitI2 1640
  loc_63C2A8: EqI2
  loc_63C2A9: CVarBoolI2 var_E4
  loc_63C2AD: FLdRfVar var_134
  loc_63C2B0: ImpAdCallFPR4  = IIf(, , )
  loc_63C2B5: FLdRfVar var_134
  loc_63C2B8: ConcatVar var_154
  loc_63C2BC: ILdRf var_90
  loc_63C2BF: CVarStr var_164
  loc_63C2C2: ConcatVar var_174
  loc_63C2C6: CStrVarTmp
  loc_63C2C7: FStStr var_90
  loc_63C2CA: FFree1Str var_C0
  loc_63C2CD: FFreeVar var_BC = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_134 = "": var_154 = ""
  loc_63C2E0: FLdRfVar var_BC
  loc_63C2E3: FLdRfVar var_90
  loc_63C2E6: FLdRfVar var_8C
  loc_63C2E9: FLdRfVar arg_10
  loc_63C2EC: FLdRfVar var_178
  loc_63C2EF: ImpAdLdRf MemVar_74C760
  loc_63C2F2: NewIfNullPr Formx
  loc_63C2F5: from_stack_1v = Formx.global_4589716Get()
  loc_63C2FA: FLdPr var_178
  loc_63C2FD: Call 0.Method_arg_17C ()
  loc_63C302: FLdRfVar var_BC
  loc_63C305: NotVar var_104
  loc_63C309: CBoolVarNull
  loc_63C30B: FFree1Ad var_178
  loc_63C30E: FFree1Var var_BC = ""
  loc_63C311: BranchF loc_63C330
  loc_63C314: FLdRfVar var_BC
  loc_63C317: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63C31C: FLdRfVar var_BC
  loc_63C31F: CBoolVarNull
  loc_63C321: FFree1Var var_BC = ""
  loc_63C324: BranchF loc_63C32D
  loc_63C327: ExitProcCbHresult
  loc_63C32D: Branch loc_63C2E0
  loc_63C330: LitStr vbNullString
  loc_63C333: FStStrCopy var_90
  loc_63C336: FLdI2 var_98
  loc_63C339: LitI2 410
  loc_63C33C: AddI2
  loc_63C33D: FStI2 var_98
  loc_63C340: FLdI2 var_96
  loc_63C343: LitI2 1640
  loc_63C346: EqI2
  loc_63C347: BranchF loc_63C34D
  loc_63C34A: Branch loc_63C3DD
  loc_63C34D: ILdI2 arg_C
  loc_63C350: FLdRfVar var_9A
  loc_63C353: LitI4 2
  loc_63C358: GetRec3
  loc_63C35A: ILdI2 arg_C
  loc_63C35D: FLdRfVar var_94
  loc_63C360: LitI4 4
  loc_63C365: GetRec3
  loc_63C367: FLdI2 var_96
  loc_63C36A: LitI2_Byte 1
  loc_63C36C: AddI2
  loc_63C36D: FStI2 var_96
  loc_63C370: ILdRf var_90
  loc_63C373: LitI4 1
  loc_63C378: LitI4 1
  loc_63C37D: LitVarStr var_D4, "00000000"
  loc_63C382: FStVarCopyObj var_BC
  loc_63C385: FLdRfVar var_BC
  loc_63C388: FLdRfVar var_9A
  loc_63C38B: CVarRef
  loc_63C390: ImpAdCallI2 Format$(, )
  loc_63C395: FStStrNoPop var_C0
  loc_63C398: ConcatStr
  loc_63C399: FStStrNoPop var_C4
  loc_63C39C: LitI4 1
  loc_63C3A1: LitI4 1
  loc_63C3A6: LitVarStr var_F4, "00000000"
  loc_63C3AB: FStVarCopyObj var_104
  loc_63C3AE: FLdRfVar var_104
  loc_63C3B1: FLdRfVar var_94
  loc_63C3B4: CVarRef
  loc_63C3B9: ImpAdCallI2 Format$(, )
  loc_63C3BE: FStStrNoPop var_17C
  loc_63C3C1: ConcatStr
  loc_63C3C2: FStStr var_90
  loc_63C3C5: FFreeStr var_C0 = "": var_C4 = ""
  loc_63C3CE: FFreeVar var_BC = ""
  loc_63C3D5: ImpAdCallFPR4 DoEvents()
  loc_63C3DA: Branch loc_63C1FA
  loc_63C3DD: LitI2_Byte &HFF
  loc_63C3DF: FStI2 var_86
  loc_63C3E2: ExitProcCbHresult
End Function
