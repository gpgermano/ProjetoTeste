object frRoupa: TfrRoupa
  Left = 364
  Top = 190
  Width = 285
  Height = 195
  Caption = 'Roupa'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCompra: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 57
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btCompraClick
  end
  object btVenda: TButton
    Left = 8
    Top = 72
    Width = 89
    Height = 57
    Caption = 'Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btVendaClick
  end
  object btFiltro: TButton
    Left = 112
    Top = 8
    Width = 137
    Height = 57
    Caption = 'Relatorio Compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btFiltroClick
  end
  object btRelatorioVenda: TButton
    Left = 112
    Top = 72
    Width = 137
    Height = 57
    Caption = 'Relatorio Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btRelatorioVendaClick
  end
end
