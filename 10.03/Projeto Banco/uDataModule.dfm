object dmDados: TdmDados
  OldCreateOrder = False
  Left = 283
  Top = 128
  Height = 163
  Width = 368
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
    object tbCadastroClientebdTelefone: TCurrencyField
      FieldName = 'bdTelefone'
    end
    object tbCadastroClientebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
  end
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
    object tbCadastroBancobdTelefone: TCurrencyField
      FieldName = 'bdTelefone'
    end
    object tbCadastroBancobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
  end
  object dsCadastroCliente: TDataSource
    DataSet = tbCadastroCliente
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
    object cdsCadastroClientebdTelefone: TCurrencyField
      FieldName = 'bdTelefone'
    end
    object cdsCadastroClientebdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object cdsCadastroClientebdTrabalhaAtl: TBooleanField
      FieldName = 'bdTrabalhaAtl'
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
    object cdsCadastroBancobdTelefone: TCurrencyField
      FieldName = 'bdTelefone'
    end
    object cdsCadastroBancobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
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
end
