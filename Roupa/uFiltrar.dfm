object frFiltrar: TfrFiltrar
  Left = 758
  Top = 222
  Width = 651
  Height = 409
  Caption = 'Filtrar Compra'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbDataInicial: TLabel
    Left = 160
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Data Saida:'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object GBTamanho: TGroupBox
    Left = 16
    Top = 104
    Width = 129
    Height = 73
    Caption = 'Filtrar Por Tamanho:'
    TabOrder = 3
    object ckP: TCheckBox
      Left = 8
      Top = 16
      Width = 41
      Height = 17
      Caption = 'P'
      TabOrder = 0
    end
    object ckGG: TCheckBox
      Left = 8
      Top = 40
      Width = 49
      Height = 17
      Caption = 'GG'
      TabOrder = 1
    end
    object ckM: TCheckBox
      Left = 80
      Top = 16
      Width = 33
      Height = 17
      Caption = 'M'
      TabOrder = 2
    end
    object ckG: TCheckBox
      Left = 80
      Top = 40
      Width = 33
      Height = 17
      Caption = 'G'
      TabOrder = 3
    end
  end
  object btFiltrar: TButton
    Left = 16
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 5
    OnClick = btFiltrarClick
  end
  object btRelatorio: TButton
    Left = 104
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Relatorio'
    TabOrder = 6
    OnClick = btRelatorioClick
  end
  object btEditar: TButton
    Left = 192
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 7
    OnClick = btEditarClick
  end
  object edDataInicial: TMaskEdit
    Left = 72
    Top = 8
    Width = 73
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object DBGridFiltrar: TDBGrid
    Left = 304
    Top = 0
    Width = 320
    Height = 297
    DataSource = DsFiltrar
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RdColunas: TRadioGroup
    Left = 15
    Top = 32
    Width = 282
    Height = 65
    Caption = 'Filtrar por:'
    Columns = 4
    Ctl3D = True
    Items.Strings = (
      'Codigo'
      'Descri'#231#227'o'
      'Valor'
      'Genero')
    ParentCtl3D = False
    TabOrder = 2
  end
  object edDataSaida: TMaskEdit
    Left = 224
    Top = 8
    Width = 73
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object RGs: TRadioGroup
    Left = 16
    Top = 184
    Width = 193
    Height = 49
    Caption = 'Escolha:'
    Columns = 2
    Items.Strings = (
      'Simplificado'
      'Detalhado')
    TabOrder = 4
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44663.688119699100000000
    ReportOptions.LastChange = 44665.624174988400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnUserFunction = frxReport1UserFunction
    Left = 144
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxUserDataSet1
        DataSetName = 'Par'#226'metros'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1bdGenero: TfrxMemoView
          Left = 139.842600240000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'bdDescricao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."bdDescricao"]')
          ParentFont = False
        end
        object frxDBDataset1bdTamanho: TfrxMemoView
          Left = 275.905690000000000000
          Top = 52.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'bdTamanho'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."bdTamanho"]')
          ParentFont = False
        end
        object frxDBDataset1bdGenero1: TfrxMemoView
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'bdValor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."bdValor"]')
          ParentFont = False
        end
        object frxDBDataset1bdData: TfrxMemoView
          Left = 532.913730000000000000
          Top = 45.354360000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[copy(<frxDBDataset1."bdData">, 7 , 2)]\[copy(<frxDBDataset1."bd' +
              'Data">, 5 , 2)]\[copy(<frxDBDataset1."bdData">, 1 , 4)]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxDBDataset1bdcod: TfrxMemoView
          Left = 15.118120000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."bdcod"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tamanho')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 404.409710000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 532.913730000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Codigo')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."bdTamanho"'
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 294.803340000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -33
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Relatorio Compra')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart1: TfrxChartView
        Align = baCenter
        Left = 164.409555000000000000
        Top = 3.779530000000000000
        Width = 718.110700000000000000
        Height = 419.527830000000000000
        HighlightColor = clBlack
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E4272757368
          2E436F6C6F720707636C5768697465144261636B57616C6C2E42727573682E53
          74796C6507076273436C656172144261636B57616C6C2E50656E2E5669736962
          6C65080D4672616D652E56697369626C6508165669657733444F7074696F6E73
          2E526F746174696F6E02000A426576656C4F75746572070662764E6F6E650543
          6F6C6F720707636C57686974650000}
        ChartElevation = 345
        SeriesData = <>
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsFiltrar
    BCDToCurrency = False
    Left = 104
    Top = 264
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'Par'#226'metros'
    Fields.Strings = (
      'Modelo')
    OnGetValue = frxUserDataSet1GetValue
    Left = 64
    Top = 264
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 24
    Top = 264
  end
  object DsFiltrar: TDataSource
    Left = 184
    Top = 264
  end
  object frxChartObject1: TfrxChartObject
    Left = 224
    Top = 264
  end
  object frxDBDatasetGrafico: TfrxDBDataset
    UserName = 'Grafico'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 264
    Top = 264
  end
end
