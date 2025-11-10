VERSION 5.00
Begin VB.Form FrmVenTicketPago
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 5115
  ClientTop = 3480
  ClientWidth = 3495
  ClientHeight = 3255
  Moveable = 0   'False
  Begin VB.CommandButton cmdCancelar
    Caption = "CANCELAR"
    Left = 1680
    Top = 2400
    Width = 1335
    Height = 615
    TabIndex = 2
  End
  Begin VB.CommandButton cmdImprimirTicket
    Caption = "TICKET"
    Left = 480
    Top = 1320
    Width = 2535
    Height = 855
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Imprimir / Reimprimir Ticket"
  End
  Begin VB.CommandButton cmdPagarVenta
    Caption = "PAGAR VENTA"
    Left = 480
    Top = 240
    Width = 2535
    Height = 855
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Pagar esta Venta"
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 3255
    Height = 3135
    TabIndex = 3
  End
End

Attribute VB_Name = "FrmVenTicketPago"


Private Sub cmdCancelar_Click() '5D19C8
  'Data Table: 408200
  loc_5D19B0: ILdRf Me
  loc_5D19B3: FStAdNoPop
  loc_5D19B7: ImpAdLdRf MemVar_7520D4
  loc_5D19BA: NewIfNullPr Global
  loc_5D19BD: Global.Unload from_stack_1
  loc_5D19C2: FFree1Ad var_88
  loc_5D19C5: ExitProcHresult
End Sub

Private Sub cmdImprimirTicket_Click() '6435C8
  'Data Table: 408200
  loc_64338C: FLdRfVar var_9E
  loc_64338F: FLdRfVar var_94
  loc_643392: FLdRfVar var_9C
  loc_643395: ImpAdLdRf MemVar_74C760
  loc_643398: NewIfNullPr Formx
  loc_64339B: from_stack_1v = Formx.global_4589716Get()
  loc_6433A0: FLdPr var_9C
  loc_6433A3: Call 0.Method_arg_394 ()
  loc_6433A8: FLdI2 var_9E
  loc_6433AB: NotI4
  loc_6433AC: FFree1Ad var_9C
  loc_6433AF: BranchF loc_6433F0
  loc_6433B2: LitVar_Missing var_120
  loc_6433B5: LitVar_Missing var_100
  loc_6433B8: LitVar_Missing var_E0
  loc_6433BB: LitI4 &H40
  loc_6433C0: LitVarStr var_B0, "No se logro obtene la información del Turno en Curso"
  loc_6433C5: FStVarCopyObj var_C0
  loc_6433C8: FLdRfVar var_C0
  loc_6433CB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6433D0: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_6433DB: ILdRf Me
  loc_6433DE: FStAdNoPop
  loc_6433E2: ImpAdLdRf MemVar_7520D4
  loc_6433E5: NewIfNullPr Global
  loc_6433E8: Global.Unload from_stack_1
  loc_6433ED: FFree1Ad var_9C
  loc_6433F0: ILdRf var_94
  loc_6433F3: ImpAdLdRf MemVar_74D8B0
  loc_6433F6: NewIfNullPr Consola
  loc_6433F9: Call Consola.sID_Turno_CEMPut(from_stack_1v)
  loc_6433FE: LitVarStr var_B0, "0"
  loc_643403: FStVarCopyObj var_C0
  loc_643406: FLdRfVar var_C0
  loc_643409: LitI4 &HA
  loc_64340E: FLdRfVar var_E0
  loc_643411: ImpAdCallFPR4  = String(, )
  loc_643416: FLdRfVar var_E0
  loc_643419: CStrVarTmp
  loc_64341A: FStStr var_8C
  loc_64341D: FFreeVar var_C0 = ""
  loc_643424: FLdRfVar var_124
  loc_643427: ImpAdLdRf MemVar_74D8B0
  loc_64342A: NewIfNullPr Consola
  loc_64342D: from_stack_1v = Consola.sID_Turno_CEMGet()
  loc_643432: ILdRf var_8C
  loc_643435: CVarStr var_D0
  loc_643438: LitVarI2 var_E0, 10
  loc_64343D: LitI4 1
  loc_643442: FLdZeroAd var_124
  loc_643445: CVarStr var_C0
  loc_643448: FLdRfVar var_100
  loc_64344B: ImpAdCallFPR4  = Mid(, , )
  loc_643450: FLdRfVar var_100
  loc_643453: FnIntVar var_120
  loc_643457: FStVar var_134
  loc_64345B: FLdRfVar var_134
  loc_64345E: FLdRfVar var_144
  loc_643461: ImpAdCallFPR4  = Str()
  loc_643466: FLdRfVar var_144
  loc_643469: FLdRfVar var_154
  loc_64346C: ImpAdCallFPR4  = Trim()
  loc_643471: FLdRfVar var_154
  loc_643474: ConcatVar var_164
  loc_643478: CStrVarTmp
  loc_643479: FStStr var_8C
  loc_64347C: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_134 = "": var_144 = "": var_154 = ""
  loc_64348D: LitI4 &HA
  loc_643492: FLdRfVar var_8C
  loc_643495: CVarRef
  loc_64349A: FLdRfVar var_C0
  loc_64349D: ImpAdCallFPR4  = Right(, )
  loc_6434A2: FLdRfVar var_C0
  loc_6434A5: CStrVarTmp
  loc_6434A6: FStStr var_8C
  loc_6434A9: FFree1Var var_C0 = ""
  loc_6434AC: LitVarStr var_B0, "0"
  loc_6434B1: FStVarCopyObj var_C0
  loc_6434B4: FLdRfVar var_C0
  loc_6434B7: LitI4 &HA
  loc_6434BC: FLdRfVar var_E0
  loc_6434BF: ImpAdCallFPR4  = String(, )
  loc_6434C4: FLdRfVar var_E0
  loc_6434C7: CStrVarTmp
  loc_6434C8: FStStr var_90
  loc_6434CB: FFreeVar var_C0 = ""
  loc_6434D2: FLdRfVar var_124
  loc_6434D5: ImpAdLdRf MemVar_74D8B0
  loc_6434D8: NewIfNullPr Consola
  loc_6434DB: from_stack_1v = Consola.sID_Venta_CEMGet()
  loc_6434E0: ILdRf var_90
  loc_6434E3: CVarStr var_D0
  loc_6434E6: LitVarI2 var_E0, 10
  loc_6434EB: LitI4 1
  loc_6434F0: FLdZeroAd var_124
  loc_6434F3: CVarStr var_C0
  loc_6434F6: FLdRfVar var_100
  loc_6434F9: ImpAdCallFPR4  = Mid(, , )
  loc_6434FE: FLdRfVar var_100
  loc_643501: FnIntVar var_120
  loc_643505: FStVar var_134
  loc_643509: FLdRfVar var_134
  loc_64350C: FLdRfVar var_144
  loc_64350F: ImpAdCallFPR4  = Str()
  loc_643514: FLdRfVar var_144
  loc_643517: FLdRfVar var_154
  loc_64351A: ImpAdCallFPR4  = Trim()
  loc_64351F: FLdRfVar var_154
  loc_643522: ConcatVar var_164
  loc_643526: CStrVarTmp
  loc_643527: FStStr var_90
  loc_64352A: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_134 = "": var_144 = "": var_154 = ""
  loc_64353B: LitI4 &HA
  loc_643540: FLdRfVar var_90
  loc_643543: CVarRef
  loc_643548: FLdRfVar var_C0
  loc_64354B: ImpAdCallFPR4  = Right(, )
  loc_643550: FLdRfVar var_C0
  loc_643553: CStrVarTmp
  loc_643554: FStStr var_90
  loc_643557: FFree1Var var_C0 = ""
  loc_64355A: ILdRf var_8C
  loc_64355D: ILdRf var_90
  loc_643560: ConcatStr
  loc_643561: FStStr var_88
  loc_643564: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_643569: FLdRfVar var_9E
  loc_64356C: FLdRfVar var_88
  loc_64356F: CVarRef
  loc_643574: LitStr "ClickButton"
  loc_643577: ImpAdLdPr unk_408215
  loc_64357A: MemLdPr global_0
  loc_64357D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_643582: FLdI2 var_9E
  loc_643585: NotI4
  loc_643586: BranchF loc_6435B2
  loc_643589: LitVar_Missing var_120
  loc_64358C: LitVar_Missing var_100
  loc_64358F: LitVar_Missing var_E0
  loc_643592: LitI4 0
  loc_643597: LitVarStr var_B0, "Esta Funcionalidad no esta habilitada"
  loc_64359C: FStVarCopyObj var_C0
  loc_64359F: FLdRfVar var_C0
  loc_6435A2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6435A7: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_6435B2: ILdRf Me
  loc_6435B5: FStAdNoPop
  loc_6435B9: ImpAdLdRf MemVar_7520D4
  loc_6435BC: NewIfNullPr Global
  loc_6435BF: Global.Unload from_stack_1
  loc_6435C4: FFree1Ad var_9C
  loc_6435C7: ExitProcHresult
End Sub

Private Sub cmdPagarVenta_Click() '5D5F58
  'Data Table: 408200
  loc_5D5F34: LitI2_Byte &HFF
  loc_5D5F36: ImpAdLdRf MemVar_74D8B0
  loc_5D5F39: NewIfNullPr Consola
  loc_5D5F3C: Call Consola.esPagarVentaPut(from_stack_1v)
  loc_5D5F41: ILdRf Me
  loc_5D5F44: FStAdNoPop
  loc_5D5F48: ImpAdLdRf MemVar_7520D4
  loc_5D5F4B: NewIfNullPr Global
  loc_5D5F4E: Global.Unload from_stack_1
  loc_5D5F53: FFree1Ad var_88
  loc_5D5F56: ExitProcHresult
End Sub
