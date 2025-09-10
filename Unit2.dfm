object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 323
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 86
    Height = 15
    Caption = 'Type some stuff:'
  end
  object Button1: TButton
    Left = 24
    Top = 53
    Width = 121
    Height = 25
    Caption = 'Count the words'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 151
    Top = 24
    Width = 450
    Height = 289
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
