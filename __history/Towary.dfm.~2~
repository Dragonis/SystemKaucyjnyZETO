object TowaryForm: TTowaryForm
  Left = 0
  Top = 0
  Caption = 'Towary'
  ClientHeight = 400
  ClientWidth = 600
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 600
    Height = 400
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\wojte\Desktop\System kaucyjny\database\produkty.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 64
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 192
    Top = 104
  end
end
