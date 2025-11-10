
Private Function Proc_15_0_5E85C4() '5E85C4
  'Data Table: 402748
  loc_5E8544: FLdRfVar var_90
  loc_5E8547: ILdPr
  loc_5E854A:  = Form.Height
  loc_5E854F: FLdRfVar var_8C
  loc_5E8552: FLdRfVar var_88
  loc_5E8555: ImpAdLdRf MemVar_7520D4
  loc_5E8558: NewIfNullPr Global
  loc_5E855B:  = Global.Screen
  loc_5E8560: FLdPr var_88
  loc_5E8563:  = Screen.Height
  loc_5E8568: FLdFPR4 var_8C
  loc_5E856B: FLdFPR4 var_90
  loc_5E856E: SubR4
  loc_5E856F: CI4R8
  loc_5E8570: LitI4 2
  loc_5E8575: IDvI4
  loc_5E8576: CR8I4
  loc_5E8577: PopFPR4
  loc_5E8578: ILdPr
  loc_5E857B: Form.Top = from_stack_1s
  loc_5E8580: FFree1Ad var_88
  loc_5E8583: FLdRfVar var_90
  loc_5E8586: ILdPr
  loc_5E8589:  = Form.Width
  loc_5E858E: FLdRfVar var_8C
  loc_5E8591: FLdRfVar var_88
  loc_5E8594: ImpAdLdRf MemVar_7520D4
  loc_5E8597: NewIfNullPr Global
  loc_5E859A:  = Global.Screen
  loc_5E859F: FLdPr var_88
  loc_5E85A2:  = Screen.Width
  loc_5E85A7: FLdFPR4 var_8C
  loc_5E85AA: FLdFPR4 var_90
  loc_5E85AD: SubR4
  loc_5E85AE: CI4R8
  loc_5E85AF: LitI4 2
  loc_5E85B4: IDvI4
  loc_5E85B5: CR8I4
  loc_5E85B6: PopFPR4
  loc_5E85B7: ILdPr
  loc_5E85BA: Form.Left = from_stack_1s
  loc_5E85BF: FFree1Ad var_88
  loc_5E85C2: ExitProc
End Function
