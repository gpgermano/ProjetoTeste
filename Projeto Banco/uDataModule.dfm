object dmDados: TdmDados
  OldCreateOrder = False
  Left = 368
  Top = 286
  Height = 163
  Width = 368
  object tbCadastroBanco: TTable
    Left = 32
    Top = 48
    object tbCadastroBancobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object tbCadastroBancobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroBancobdCnpj: TStringField
      FieldName = 'bdCnpj'
      Size = 100
    end
    object tbCadastroBancobdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroBancobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
    object tbCadastroBancobdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
  end
  object dsCadastroCliente: TDataSource
    Left = 120
  end
  object dsCadastroBanco: TDataSource
    DataSet = tbCadastroBanco
    Left = 120
    Top = 48
  end
  object cdsCadastroCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    object cdsCadastroClientebdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object cdsCadastroClientebdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object cdsCadastroClientebdCpf: TStringField
      FieldName = 'bdCpf'
      Size = 100
    end
    object cdsCadastroClientebdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object cdsCadastroClientebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object cdsCadastroClientebdTrabalhaAtl: TBooleanField
      FieldName = 'bdTrabalhaAtl'
    end
    object cdsCadastroClientebdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object cdsCadastroClientebdEmprestimo: TCurrencyField
      FieldName = 'bdEmprestimo'
    end
  end
  object cdsCadastroBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 48
    object cdsCadastroBancobdCodigo: TStringField
      FieldName = 'bdCodigo'
      Size = 100
    end
    object cdsCadastroBancobdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object cdsCadastroBancobdCnpj: TStringField
      FieldName = 'bdCnpj'
      Size = 100
    end
    object cdsCadastroBancobdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object cdsCadastroBancobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
    object cdsCadastroBancobdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
  end
  object dsCdsCliente: TDataSource
    DataSet = cdsCadastroCliente
    Left = 304
  end
  object dsCdsBanco: TDataSource
    DataSet = cdsCadastroBanco
    Left = 304
    Top = 48
  end
  object tbCadastroCliente: TTable
    Left = 32
    object tbCadastroClientebdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastroClientebdNome: TStringField
      FieldName = 'bdNome'
      Size = 100
    end
    object tbCadastroClientebdCpf: TStringField
      FieldName = 'bdCpf'
      Size = 100
    end
    object tbCadastroClientebdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 100
    end
    object tbCadastroClientebdTrabalha: TBooleanField
      FieldName = 'bdTrabalha'
    end
    object tbCadastroClientebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object tbCadastroClientebdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 100
    end
    object tbCadastroClientebdEmprestimo: TCurrencyField
      FieldName = 'bdEmprestimo'
    end
  end
end
