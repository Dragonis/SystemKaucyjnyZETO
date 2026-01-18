object UstawieniaProgramuForm: TUstawieniaProgramuForm
  Left = 0
  Top = 0
  Caption = 'Ustawienia Programu'
  ClientHeight = 329
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 119
    Top = 32
    Width = 562
    Height = 281
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
      'DriverID=SQLite'
      
        'Database=C:\Users\wojte\Desktop\System kaucyjny\database\ustawie' +
        'nia_programu.db')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 32
    Top = 144
  end
end
