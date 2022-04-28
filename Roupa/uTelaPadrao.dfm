object frPadrao: TfrPadrao
  Left = 310
  Top = 160
  Width = 340
  Height = 296
  Caption = 'frPadrao'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbcod: TLabel
    Left = 40
    Top = 32
    Width = 19
    Height = 13
    Caption = 'Cod'
  end
  object lbDescricao: TLabel
    Left = 24
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Descricao'
  end
  object lbData: TLabel
    Left = 48
    Top = 104
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object lbTamanho: TLabel
    Left = 32
    Top = 80
    Width = 45
    Height = 13
    Caption = 'Tamanho'
  end
  object lbGenero: TLabel
    Left = 40
    Top = 136
    Width = 35
    Height = 13
    Caption = 'Genero'
  end
  object edCod: TEdit
    Left = 88
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edDescricao: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edData: TMaskEdit
    Left = 88
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edTamanho: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object cbGenero: TComboBox
    Left = 88
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object btSalvar: TButton
    Left = 24
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
  end
  object btConsultar: TButton
    Left = 200
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 6
  end
  object btExcluir: TButton
    Left = 112
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 7
  end
end
