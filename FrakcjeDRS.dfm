object FrakcjeDRSForm: TFrakcjeDRSForm
  Left = 0
  Top = 0
  Caption = 'Frakcje DRS'
  ClientHeight = 249
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDblClick = DBGrid1DblClick
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 392
    Height = 13
    Caption = 
      'Frakcje DRS czyli rodzaj materia'#322#243'w z kt'#243'rych wykonane s'#261' opakow' +
      'ania kaucyjne '
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 48
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\wojte\Desktop\System kaucyjny\database\frakcje' +
        '_drs.db')
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 32
    Top = 160
  end
end
