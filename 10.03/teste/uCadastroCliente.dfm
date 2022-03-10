inherited frCadastroCliente: TfrCadastroCliente
  Left = 854
  Top = 124
  Height = 221
  Caption = 'frCadastroCliente'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbSexo: TLabel [2]
    Left = 48
    Top = 64
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  inherited edCodigo: TEdit
    OnExit = edCodigoExit
  end
  inherited btSalvar: TButton
    Left = 64
    Top = 120
    TabOrder = 4
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Top = 120
    TabOrder = 5
    OnClick = btConsultarClick
  end
  object cbSexo: TComboBox
    Left = 88
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object ckEstrangeiro: TCheckBox
    Left = 88
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 3
  end
end
