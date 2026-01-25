object DostawcyForm: TDostawcyForm
  Left = 0
  Top = 0
  Caption = 'Wybierz dostawc'#281
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 24
    Top = 16
    Width = 409
    Height = 120
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      
        'Database=C:\Users\wojte\Desktop\System kaucyjny\database\dostawc' +
        'y.db')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 152
  end
  object FDScript1: TFDScript
    SQLScriptFileName = 'C:\Users\wojte\Desktop\System kaucyjny\sql\dostawcy.sql'
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 96
    Top = 152
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from dostawcy;')
    Left = 152
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 152
  end
end
