inherited frCompra: TfrCompra
  Left = 732
  Top = 200
  Width = 300
  Height = 365
  Caption = 'Compra'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbcod: TLabel
    Left = 48
  end
  inherited lbGenero: TLabel
    Top = 128
  end
  object lbValorUnitario: TLabel [5]
    Left = 16
    Top = 152
    Width = 63
    Height = 13
    Caption = 'Valor Unitario'
  end
  object lbImposto: TLabel [6]
    Left = 40
    Top = 200
    Width = 38
    Height = 13
    Caption = 'Aliquota'
  end
  object lbQuantidade: TLabel [7]
    Left = 16
    Top = 176
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  inherited edCod: TEdit
    OnClick = edCodClick
    OnEnter = edCodEnter
    OnExit = edCodExit
    OnKeyPress = edCodKeyPress
  end
  inherited edDescricao: TEdit
    Top = 48
  end
  inherited edData: TMaskEdit
    Top = 96
    Width = 118
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  inherited edTamanho: TEdit
    Top = 72
    TabOrder = 2
  end
  inherited cbGenero: TComboBox
    Top = 120
  end
  inherited btSalvar: TButton
    Left = 96
    Top = 224
    TabOrder = 8
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 176
    Top = 256
    TabOrder = 10
    OnClick = btConsultarClick
  end
  inherited btExcluir: TButton
    Left = 24
    Top = 256
    TabOrder = 9
    OnClick = btExcluirClick
  end
  object edValorUnitario: TEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edAliquota: TEdit
    Left = 88
    Top = 192
    Width = 41
    Height = 21
    TabOrder = 7
  end
  object edQuantidade: TEdit
    Left = 88
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
