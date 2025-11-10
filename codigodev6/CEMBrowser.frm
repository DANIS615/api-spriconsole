VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form CEMBrowser
  Caption = "CEM-Browser"
  WindowState = 2
  ScaleMode = 0
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6225
  ClientHeight = 4725
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 11880
  ScaleHeight = 1.752
  StartUpPosition = 3 'Windows Default
  Begin VB.Timer Timer1
    Interval = 100
    Left = 720
    Top = 720
  End
  Begin SHDocVwCtl.WebBrowser brwWebBrowser
    Left = -120
    Top = 0
    Width = 12105
    Height = 8295
    TabIndex = 0
    OleObjectBlob = "CEMBrowser.frx":0000
  End
End

Attribute VB_Name = "CEMBrowser"

Public StartingAddress As String


Private Sub Timer1_Timer() '5DAAAC
  'Data Table: 405288
  loc_5DAA74: FLdPrThis
  loc_5DAA75: VCallAd Control_ID_brwWebBrowser
  loc_5DAA78: FStAdFunc var_88
  loc_5DAA7B: FLdPr var_88
  loc_5DAA7E: LateIdLdVar var_98 DispID_7 -32767
  loc_5DAA85: CBoolVar
  loc_5DAA87: LitI2_Byte 0
  loc_5DAA89: EqI2
  loc_5DAA8A: FFree1Ad var_88
  loc_5DAA8D: FFree1Var var_98 = ""
  loc_5DAA90: BranchF loc_5DAAA8
  loc_5DAA93: ILdRf Me
  loc_5DAA96: FStAdNoPop
  loc_5DAA9A: ImpAdLdRf MemVar_7520D4
  loc_5DAA9D: NewIfNullPr Global
  loc_5DAAA0: Global.Unload from_stack_1
  loc_5DAAA5: FFree1Ad var_88
  loc_5DAAA8: ExitProcHresult
End Sub

Private Sub brwWebBrowser_UnknownEvent_13 '5D22FC
  'Data Table: 405288
  loc_5D22E4: ILdRf Me
  loc_5D22E7: FStAdNoPop
  loc_5D22EB: ImpAdLdRf MemVar_7520D4
  loc_5D22EE: NewIfNullPr Global
  loc_5D22F1: Global.Unload from_stack_1
  loc_5D22F6: FFree1Ad var_88
  loc_5D22F9: ExitProcHresult
End Sub

Private Sub Form_Load() '5DFA14
  'Data Table: 405288
  loc_5DF9C4: On Error Resume Next
  loc_5DF9C9: LitVar_Missing var_A4
  loc_5DF9CC: PopAdLdVar
  loc_5DF9CD: LitVar_Missing var_94
  loc_5DF9D0: PopAdLdVar
  loc_5DF9D1: FLdPr Me
  loc_5DF9D4: Me.Show from_stack_1, from_stack_2
  loc_5DF9DB: FLdPr Me
  loc_5DF9DE: MemLdStr StartingAddress
  loc_5DF9E1: FnLenStr
  loc_5DF9E2: LitI4 0
  loc_5DF9E7: GtI4
  loc_5DF9E8: BranchF loc_5DFA0C
  loc_5DF9ED: FLdPr Me
  loc_5DF9F0: MemLdRfVar from_stack_1.StartingAddress
  loc_5DF9F3: CDargRef
  loc_5DF9F7: FLdPrThis
  loc_5DF9F8: VCallAd Control_ID_brwWebBrowser
  loc_5DF9FB: FStAdFunc var_A8
  loc_5DF9FE: FLdPr var_A8
  loc_5DFA01: LateIdCall
  loc_5DFA09: FFree1Ad var_A8
  loc_5DFA10: ExitProcHresult
  loc_5DFA11: NewIfNullAd
End Sub

Public Function StartingAddressGet() '40545C
  StartingAddressGet = StartingAddress
End Function

Public Sub StartingAddressPut(Value) '40546B
  StartingAddress = Value
End Sub
