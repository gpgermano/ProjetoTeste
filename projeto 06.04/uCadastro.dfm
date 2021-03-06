object frCadastro: TfrCadastro
  Left = 265
  Top = 209
  Width = 770
  Height = 284
  Caption = 'Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 58
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lbCNPJ: TLabel
    Left = 152
    Top = 16
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object lbRazaoSocial: TLabel
    Left = 30
    Top = 41
    Width = 61
    Height = 13
    Caption = 'Raz'#227'o social'
  end
  object lbNomeFantasia: TLabel
    Left = 20
    Top = 66
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  object lbCEP: TLabel
    Left = 70
    Top = 91
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object lbEndereco: TLabel
    Left = 168
    Top = 91
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object lbNumero: TLabel
    Left = 424
    Top = 91
    Width = 12
    Height = 13
    Caption = 'N'#186
  end
  object lbBairro: TLabel
    Left = 504
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object lbComplemento: TLabel
    Left = 27
    Top = 117
    Width = 64
    Height = 13
    Caption = 'Complemento'
  end
  object lbCidade: TLabel
    Left = 424
    Top = 117
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object lbInscricaoEstadual: TLabel
    Left = 5
    Top = 142
    Width = 86
    Height = 13
    Caption = 'Inscri'#231#227'o estadual'
  end
  object lbCNAE: TLabel
    Left = 232
    Top = 142
    Width = 29
    Height = 13
    Caption = 'CNAE'
  end
  object lbTributacao: TLabel
    Left = 40
    Top = 168
    Width = 51
    Height = 13
    Caption = 'Tributa'#231#227'o'
  end
  object lbEmail: TLabel
    Left = 234
    Top = 168
    Width = 25
    Height = 13
    Caption = 'Email'
  end
  object lbTelefone: TLabel
    Left = 609
    Top = 66
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbInicioAti: TLabel
    Left = 592
    Top = 142
    Width = 76
    Height = 13
    Caption = 'Inicio atividades'
  end
  object edCodigo: TEdit
    Left = 96
    Top = 12
    Width = 49
    Height = 21
    TabOrder = 0
    OnEnter = edCodigoEnter
    OnExit = edCodigoExit
  end
  object edRazaoSocial: TEdit
    Left = 96
    Top = 37
    Width = 649
    Height = 21
    TabOrder = 1
  end
  object edNomeFantasia: TEdit
    Left = 96
    Top = 62
    Width = 473
    Height = 21
    TabOrder = 2
  end
  object edCEP: TEdit
    Left = 96
    Top = 87
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object edEndereco: TEdit
    Left = 220
    Top = 87
    Width = 197
    Height = 21
    TabOrder = 4
  end
  object edNumero: TEdit
    Left = 440
    Top = 87
    Width = 57
    Height = 21
    TabOrder = 5
  end
  object edBairro: TEdit
    Left = 536
    Top = 87
    Width = 209
    Height = 21
    TabOrder = 6
  end
  object edComplemento: TEdit
    Left = 96
    Top = 113
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object edCidade: TEdit
    Left = 536
    Top = 113
    Width = 209
    Height = 21
    TabOrder = 9
  end
  object edInscricaoEstadual: TEdit
    Left = 96
    Top = 138
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object edEmail: TEdit
    Left = 264
    Top = 164
    Width = 481
    Height = 21
    TabOrder = 14
  end
  object cbEstado: TComboBox
    Left = 464
    Top = 113
    Width = 57
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = 'AC'
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object cbCNAE: TComboBox
    Left = 264
    Top = 138
    Width = 321
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 11
    Text = '6911-7/01: servi'#231'os advocat'#237'cios'
    Items.Strings = (
      '6911-7/01: servi'#231'os advocat'#237'cios'
      '7111-1/00: servi'#231'os de arquitetura'
      '7112-0/00: Servi'#231'os de engenharia'
      '7319-0/04: Consultoria em publicidade'
      '6204-0/00: Consultoria em tecnologia da informa'#231#227'o'
      '7319-0/03: Marketing direto'
      '6201-5/02: Web design'
      '7420-0/04: Filmagem de festas e eventos')
  end
  object cbTributacao: TComboBox
    Left = 96
    Top = 164
    Width = 121
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 13
    Text = 'Simples Nacional'
    Items.Strings = (
      'Simples Nacional'
      'Lucro Presumido'
      'Lucro Real')
  end
  object edInicioAtivi: TEdit
    Left = 672
    Top = 138
    Width = 73
    Height = 21
    TabOrder = 12
  end
  object btSalvar: TButton
    Left = 232
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 15
    OnClick = btSalvarClick
  end
  object btConsultar: TButton
    Left = 328
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 16
    OnClick = btConsultarClick
  end
  object btExcluir: TButton
    Left = 424
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 17
    OnClick = btExcluirClick
  end
  object edTelefone: TMaskEdit
    Left = 655
    Top = 62
    Width = 84
    Height = 21
    EditMask = '(99) 00000-0000;1;_'
    MaxLength = 15
    TabOrder = 18
    Text = '(  )      -    '
  end
  object edcnpj: TMaskEdit
    Left = 184
    Top = 12
    Width = 120
    Height = 21
    EditMask = '99.999.999/9999-00;1;_'
    MaxLength = 18
    TabOrder = 19
    Text = '  .   .   /    -  '
  end
end
