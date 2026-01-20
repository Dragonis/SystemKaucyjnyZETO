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
    TitleFont.Charset = EASTEUROPE_CHARSET
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
  object ButtonRaport: TButton
    Left = 326
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Drukuj raport'
    TabOrder = 3
    OnClick = ButtonRaportClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\wojte\Desktop\System kaucyjny\database\produkt' +
        'y.db'
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
  object frxReport2: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46041.846621273150000000
    ReportOptions.LastChange = 46042.660145289350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin end.')
    Left = 296
    Top = 8
    Datasets = <
      item
        DataSet = frxDBItems
        DataSetName = 'Items'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 25.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Title: TfrxMemoView
          Width = 755.000000000000000000
          Height = 25.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lista przedmiot'#243'w')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object HeaderID: TfrxMemoView
          Width = 50.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object HeaderName: TfrxMemoView
          Left = 60.000000000000000000
          Width = 450.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nazwa')
          ParentFont = False
        end
        object HeaderQuantity: TfrxMemoView
          Left = 520.000000000000000000
          Width = 100.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ilo'#347#263)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBItems
        DataSetName = 'Items'
        RowCount = 0
        object MemoID: TfrxMemoView
          Width = 57.559060000000000000
          Height = 20.000000000000000000
          DataField = 'id'
          DataSet = frxDBItems
          DataSetName = 'Items'
          HAlign = haCenter
          Memo.UTF8W = (
            '[Items."id"]')
        end
        object MemoName: TfrxMemoView
          Left = 71.338590000000000000
          Width = 450.000000000000000000
          Height = 20.000000000000000000
          DataField = 'name'
          DataSet = frxDBItems
          DataSetName = 'Items'
          Memo.UTF8W = (
            '[Items."name"]')
        end
        object MemoQuantity: TfrxMemoView
          Left = 520.000000000000000000
          Width = 100.000000000000000000
          Height = 20.000000000000000000
          DataField = 'quantity'
          DataSet = frxDBItems
          DataSetName = 'Items'
          HAlign = haCenter
          Memo.UTF8W = (
            '[Items."quantity"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object PageNumber: TfrxMemoView
          Width = 755.000000000000000000
          Height = 20.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Strona [Page#]')
        end
      end
    end
  end
  object frxDBItems: TfrxDBDataset
    UserName = 'Items'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 360
    Top = 8
  end
end
