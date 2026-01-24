object NIPForm: TNIPForm
  Left = 0
  Top = 0
  Caption = 'Wybierani kontrahenta wg numeru NIP'
  ClientHeight = 70
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 21
    Height = 13
    Caption = 'NIP:'
  end
  object NIPEdit: TEdit
    Left = 43
    Top = 8
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object OKButton: TButton
    Left = 79
    Top = 37
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object AnulujButton: TButton
    Left = 192
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Anuluj'
    Cancel = True
    TabOrder = 2
    OnClick = AnulujButtonClick
  end
end
