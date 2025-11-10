VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D5300AA003C9CB6}#1.1#0"; "C:\WINDOWS\SysWow64\Comct232.ocx"
Begin VB.Form frmMensage
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6345
  ClientHeight = 2145
  StartUpPosition = 3 'Windows Default
  Begin ComCtl2.Animation ErrorAni
    Index = 1
    Left = 120
    Top = 240
    Width = 780
    Height = 780
    TabIndex = 1
    OleObjectBlob = "frmMensage.frx":0000
    ToolTipText = "Hacer doble click aqui para ver el mensaje"
  End
  Begin VB.Label lCode
    Caption = "Label1"
    Left = 1200
    Top = 120
    Width = 4935
    Height = 1935
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
End

Attribute VB_Name = "frmMensage"

