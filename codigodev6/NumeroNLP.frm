VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.OCX"
Begin VB.Form NumeroNLP
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
  ClientLeft = 990
  ClientTop = 1815
  ClientWidth = 4695
  ClientHeight = 3195
  ShowInTaskbar = 0   'False
  Begin MSMask.MaskEdBox txtNumeroNLP
    Left = 840
    Top = 1440
    Width = 2895
    Height = 495
    TabIndex = 0
    OleObjectBlob = "NumeroNLP.frx":0000
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "&Cancelar"
    Left = 270
    Top = 2400
    Width = 1695
    Height = 615
    TabIndex = 3
    Cancel = -1  'True
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
  Begin VB.CommandButton cmdAcepatar
    Caption = "&Aceptar"
    Left = 2760
    Top = 2400
    Width = 1695
    Height = 615
    TabIndex = 2
    Default = -1  'True
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
  Begin VB.Label lblTitula
    Caption = "Ingrese número de la Nota Líquido Producto"
    Left = 120
    Top = 240
    Width = 4455
    Height = 975
    TabIndex = 1
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
End

Attribute VB_Name = "NumeroNLP"


Private Sub cmdCancelar_Click() '5D5AE0
  'Data Table: 4085E0
  loc_5D5ABC: LitStr "0"
  loc_5D5ABF: ImpAdLdRf MemVar_74C9A0
  loc_5D5AC2: NewIfNullPr NotaLiqComb
  loc_5D5AC5: Call NotaLiqComb.NroPreImpresoPut(from_stack_1v)
  loc_5D5ACA: ILdRf Me
  loc_5D5ACD: FStAdNoPop
  loc_5D5AD1: ImpAdLdRf MemVar_7520D4
  loc_5D5AD4: NewIfNullPr Global
  loc_5D5AD7: Global.Unload from_stack_1
  loc_5D5ADC: FFree1Ad var_88
  loc_5D5ADF: ExitProcHresult
End Sub

Private Sub Form_Load() '5D2854
  'Data Table: 4085E0
  loc_5D283C: ILdRf Me
  loc_5D283F: CastAd
  loc_5D2842: FStAdFunc var_88
  loc_5D2845: FLdRfVar var_88
  loc_5D2848: ImpAdCallFPR4  = Proc_15_0_5E85C4()
  loc_5D284D: FFree1Ad var_88
  loc_5D2850: ExitProcHresult
End Sub

Private Sub Form_Activate() '5D28EC
  'Data Table: 4085E0
  loc_5D28D4: FLdPrThis
  loc_5D28D5: VCallAd Control_ID_txtNumeroNLP
  loc_5D28D8: FStAdFunc var_88
  loc_5D28DB: FLdPr var_88
  loc_5D28DE: LateIdCall
  loc_5D28E6: FFree1Ad var_88
  loc_5D28E9: ExitProcHresult
End Sub

Private Sub cmdAcepatar_Click() '60E5C8
  'Data Table: 4085E0
  loc_60E4D4: FLdPrThis
  loc_60E4D5: VCallAd Control_ID_txtNumeroNLP
  loc_60E4D8: FStAdFunc var_88
  loc_60E4DB: FLdPr var_88
  loc_60E4DE: LateIdLdVar var_98 DispID_22 0
  loc_60E4E5: CStrVarTmp
  loc_60E4E6: FStStrNoPop var_9C
  loc_60E4E9: FnLenStr
  loc_60E4EA: LitI4 &HC
  loc_60E4EF: NeI4
  loc_60E4F0: FFree1Str var_9C
  loc_60E4F3: FFree1Ad var_88
  loc_60E4F6: FFree1Var var_98 = ""
  loc_60E4F9: BranchF loc_60E526
  loc_60E4FC: LitVar_Missing var_10C
  loc_60E4FF: LitVar_Missing var_EC
  loc_60E502: LitVar_Missing var_CC
  loc_60E505: LitI4 0
  loc_60E50A: LitVarStr var_AC, "Debe ingresar un numero de Nota Liquido Producto"
  loc_60E50F: FStVarCopyObj var_98
  loc_60E512: FLdRfVar var_98
  loc_60E515: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60E51A: FFreeVar var_98 = "": var_CC = "": var_EC = ""
  loc_60E525: ExitProcHresult
  loc_60E526: LitStr "0"
  loc_60E529: FLdPrThis
  loc_60E52A: VCallAd Control_ID_txtNumeroNLP
  loc_60E52D: FStAdFunc var_88
  loc_60E530: FLdPr var_88
  loc_60E533: LateIdLdVar var_98 DispID_22 0
  loc_60E53A: CStrVarTmp
  loc_60E53B: FStStrNoPop var_9C
  loc_60E53E: ConcatStr
  loc_60E53F: FStStrNoPop var_110
  loc_60E542: ImpAdCallFPR4 push Val()
  loc_60E547: CR8R8
  loc_60E548: LitI2_Byte 0
  loc_60E54A: CR8I2
  loc_60E54B: EqR4
  loc_60E54C: FFreeStr var_9C = ""
  loc_60E553: FFree1Ad var_88
  loc_60E556: FFree1Var var_98 = ""
  loc_60E559: BranchF loc_60E586
  loc_60E55C: LitVar_Missing var_10C
  loc_60E55F: LitVar_Missing var_EC
  loc_60E562: LitVar_Missing var_CC
  loc_60E565: LitI4 0
  loc_60E56A: LitVarStr var_AC, "Debe ingresar un numero de Nota Liquido Producto distinto de 0"
  loc_60E56F: FStVarCopyObj var_98
  loc_60E572: FLdRfVar var_98
  loc_60E575: ImpAdCallFPR4 MsgBox(, , , , )
  loc_60E57A: FFreeVar var_98 = "": var_CC = "": var_EC = ""
  loc_60E585: ExitProcHresult
  loc_60E586: FLdPrThis
  loc_60E587: VCallAd Control_ID_txtNumeroNLP
  loc_60E58A: FStAdFunc var_88
  loc_60E58D: FLdPr var_88
  loc_60E590: LateIdLdVar var_98 DispID_22 0
  loc_60E597: CStrVarTmp
  loc_60E598: FStStrNoPop var_9C
  loc_60E59B: ImpAdLdRf MemVar_74C9A0
  loc_60E59E: NewIfNullPr NotaLiqComb
  loc_60E5A1: Call NotaLiqComb.NroPreImpresoPut(from_stack_1v)
  loc_60E5A6: FFree1Str var_9C
  loc_60E5A9: FFree1Ad var_88
  loc_60E5AC: FFree1Var var_98 = ""
  loc_60E5AF: ILdRf Me
  loc_60E5B2: FStAdNoPop
  loc_60E5B6: ImpAdLdRf MemVar_7520D4
  loc_60E5B9: NewIfNullPr Global
  loc_60E5BC: Global.Unload from_stack_1
  loc_60E5C1: FFree1Ad var_88
  loc_60E5C4: ExitProcHresult
  loc_60E5C5: FnLenStr
  loc_60E5C6: CRec2Ansi arg_6800
End Sub
