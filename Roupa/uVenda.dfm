inherited frVenda: TfrVenda
  Left = 924
  Top = 156
  Width = 346
  Height = 399
  Caption = 'Venda'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbcod: TLabel
    Left = 48
    Top = 72
    Width = 33
    Caption = 'Codigo'
  end
  inherited lbDescricao: TLabel
    Left = 32
    Top = 96
  end
  inherited lbData: TLabel
    Left = 56
    Top = 144
  end
  inherited lbTamanho: TLabel
    Left = 40
    Top = 120
  end
  inherited lbGenero: TLabel
    Left = 48
    Top = 168
  end
  object lbValorUnitario: TLabel [5]
    Left = 24
    Top = 264
    Width = 63
    Height = 13
    Caption = 'Valor Unitario'
  end
  object lbValorTotal: TLabel [6]
    Left = 40
    Top = 288
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object lbQuantidade: TLabel [7]
    Left = 32
    Top = 208
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object lbAliquota: TLabel [8]
    Left = 224
    Top = 264
    Width = 38
    Height = 13
    Caption = 'Aliquota'
  end
  object lbCodigoCompra: TLabel [9]
    Left = 8
    Top = 24
    Width = 73
    Height = 13
    Caption = 'Codigo Produto'
  end
  inherited edCod: TEdit
    Left = 96
    Top = 64
    OnClick = edCodClick
    OnEnter = edCodEnter
    OnExit = edCodExit
    OnKeyPress = edCodKeyPress
  end
  inherited edDescricao: TEdit
    Left = 96
    Top = 88
  end
  inherited edData: TMaskEdit
    Left = 96
    Top = 136
    Width = 118
    EditMask = '!99/99/0000;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  inherited edTamanho: TEdit
    Left = 96
    Top = 112
    TabOrder = 2
  end
  inherited cbGenero: TComboBox
    Left = 96
    Top = 160
  end
  inherited btSalvar: TButton
    Left = 128
    Top = 312
    TabOrder = 9
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 208
    Top = 312
    TabOrder = 11
    OnClick = btConsultarClick
  end
  inherited btExcluir: TButton
    Left = 48
    Top = 312
    TabOrder = 10
    OnClick = btExcluirClick
  end
  object edValorUnitario: TEdit
    Left = 96
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edValorTotal: TEdit
    Left = 96
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edQtd: TEdit
    Left = 96
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
    OnExit = edQtdExit
  end
  object edAliquota: TEdit
    Left = 272
    Top = 256
    Width = 41
    Height = 21
    TabOrder = 8
  end
  object cbCodCompra: TComboBox
    Left = 88
    Top = 24
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    OnExit = cbCodCompraExit
  end
end
