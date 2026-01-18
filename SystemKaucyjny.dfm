object SystemKaucyjnyForm: TSystemKaucyjnyForm
  Left = 0
  Top = 0
  Caption = 'System kaucyjny'
  ClientHeight = 302
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
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
    Left = 40
    Top = 72
    Width = 361
    Height = 129
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object ButtonFrakcjeDRS: TButton
    Left = 40
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Ustaw Frakcje DRS'
    TabOrder = 1
    OnClick = ButtonFrakcjeDRSClick
  end
  object Button1: TButton
    Left = 168
    Top = 240
    Width = 121
    Height = 25
    Caption = 'Ustawienia Programu'
    TabOrder = 2
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\wojte\Desktop\System kaucyjny\database\test.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 176
    Top = 8
  end
end
