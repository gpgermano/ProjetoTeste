inherited frCadastroCliente: TfrCadastroCliente
  Left = 677
  Top = 154
  Height = 301
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbCpf: TLabel [2]
    Left = 40
    Top = 56
    Width = 16
    Height = 13
    Caption = 'Cpf'
  end
  object lbEndereco: TLabel [3]
    Left = 24
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object lbTelefone: TLabel [4]
    Left = 24
    Top = 104
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbSexo: TLabel [5]
    Left = 40
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  inherited btSalvar: TButton
    Left = 56
    Top = 176
  end
  inherited btExcluir: TButton
    Left = 136
    Top = 176
  end
  object edCpf: TEdit
    Left = 80
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edEndereco: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edTelefone: TEdit
    Left = 80
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object cbSexo: TComboBox
    Left = 80
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object ckTrabalha: TCheckBox
    Left = 80
    Top = 152
    Width = 129
    Height = 17
    Caption = 'Trabalha Atualmente'
    TabOrder = 8
  end
  object btConsultar: TButton
    Left = 104
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 9
  end
end
