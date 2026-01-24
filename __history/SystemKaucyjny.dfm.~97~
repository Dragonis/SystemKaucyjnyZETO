object SystemKaucyjnyForm: TSystemKaucyjnyForm
  Left = 0
  Top = 0
  Caption = 'System kaucyjny'
  ClientHeight = 650
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 116
    Top = 79
    Width = 74
    Height = 13
    Caption = 'Stan magazynu'
  end
  object Label2: TLabel
    Left = 607
    Top = 238
    Width = 51
    Height = 13
    Caption = 'Sprzedano'
  end
  object Paragon: TLabel
    Left = 124
    Top = 235
    Width = 40
    Height = 13
    Caption = 'Paragon'
  end
  object Label3: TLabel
    Left = 696
    Top = 79
    Width = 71
    Height = 13
    Caption = 'Do zam'#243'wienia'
  end
  object Label4: TLabel
    Left = 124
    Top = 386
    Width = 104
    Height = 13
    Caption = 'Sprzedaz na wykresie'
  end
  object DBGrid1: TDBGrid
    Left = 116
    Top = 98
    Width = 485
    Height = 134
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
    Left = 16
    Top = 160
    Width = 94
    Height = 25
    Caption = 'Ustaw Frakcje DRS'
    TabOrder = 1
    OnClick = ButtonFrakcjeDRSClick
  end
  object Button1: TButton
    Left = 16
    Top = 207
    Width = 94
    Height = 25
    Caption = 'Ustawienia Programu'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ButtonRaport: TButton
    Left = 16
    Top = 120
    Width = 94
    Height = 25
    Caption = 'Drukuj raport'
    TabOrder = 3
    OnClick = ButtonRaportClick
  end
  object Memo1: TMemo
    Left = 116
    Top = 254
    Width = 485
    Height = 126
    TabOrder = 4
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 102
    Height = 61
    Caption = 'Losuj Produkty'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 607
    Top = 254
    Width = 320
    Height = 126
    TabOrder = 6
    TitleFont.Charset = EASTEUROPE_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 607
    Top = 98
    Width = 320
    Height = 134
    DataSource = DSCDSSumaWszystkichParagonow
    TabOrder = 7
    TitleFont.Charset = EASTEUROPE_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Chart1: TChart
    Left = 115
    Top = 393
    Width = 761
    Height = 243
    Legend.Visible = False
    Title.Text.Strings = (
      'Sumy paragon'#243'w')
    TabOrder = 8
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      34
      15
      34)
    ColorPaletteIndex = 13
  end
  object DostawaButton: TButton
    Left = 116
    Top = 8
    Width = 74
    Height = 61
    Caption = 'Dostawa'
    TabOrder = 9
    OnClick = DostawaButtonClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\wojte\Desktop\System kaucyjny\database\produkt' +
        'y.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 152
    Top = 103
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 103
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 320
    Top = 103
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
    ReportOptions.LastChange = 46042.773922858800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin end.')
    Left = 64
    Top = 88
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
            'Lista produkt'#243'w na stanie magazynowym')
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
    Left = 32
    Top = 96
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 264
    Top = 103
  end
  object DSLosoweProdukty: TDataSource
    DataSet = FDQuery1
    Left = 720
    Top = 271
  end
  object CDSLosoweProdukty: TClientDataSet
    Aggregates = <>
    MasterSource = DSLosoweProdukty
    PacketRecords = 0
    Params = <>
    Left = 656
    Top = 271
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 616
    Top = 271
  end
  object DSCDSSumaWszystkichParagonow: TDataSource
    Left = 792
    Top = 119
  end
  object CDSSumaWszystkichParagonow: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 119
  end
end
