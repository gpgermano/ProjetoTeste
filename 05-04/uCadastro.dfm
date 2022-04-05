object frCadastro: TfrCadastro
  Left = 182
  Top = 117
  Width = 340
  Height = 208
  Caption = 'Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbcodigo: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lbNome: TLabel
    Left = 29
    Top = 41
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object lbSexo: TLabel
    Left = 33
    Top = 66
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object edCodigo: TEdit
    Left = 64
    Top = 12
    Width = 49
    Height = 21
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object edNome: TEdit
    Left = 64
    Top = 37
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object cbSexo: TComboBox
    Left = 64
    Top = 62
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Feminino'
    Items.Strings = (
      'Feminino'
      'Masculino')
  end
  object ckEstrangeiro: TCheckBox
    Left = 64
    Top = 86
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 3
  end
  object btAdicionar: TButton
    Left = 8
    Top = 113
    Width = 65
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = btAdicionarClick
  end
  object btSalvar: TButton
    Left = 88
    Top = 113
    Width = 65
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btSalvarClick
  end
  object btConsultar: TButton
    Left = 168
    Top = 113
    Width = 65
    Height = 25
    Caption = 'Consultar'
    TabOrder = 6
    OnClick = btConsultarClick
  end
  object btMensagem: TButton
    Left = 248
    Top = 113
    Width = 65
    Height = 25
    Caption = 'Mensagem'
    TabOrder = 7
    OnClick = btMensagemClick
  end
end
