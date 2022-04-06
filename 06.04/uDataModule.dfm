object dmCadastroEmp: TdmCadastroEmp
  OldCreateOrder = False
  Left = 195
  Top = 124
  Height = 150
  Width = 215
  object dsCadastroEmp: TDataSource
    DataSet = tbCadastro
    Left = 112
    Top = 8
  end
  object tbCadastro: TTable
    Left = 32
    Top = 8
    object tbCadastrobdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object tbCadastrobdEmpresa: TStringField
      FieldName = 'bdEmpresa'
      Size = 100
    end
    object tbCadastrobdCnpj: TStringField
      FieldName = 'bdCnpj'
      Size = 100
    end
    object tbCadastrobdEstrangeiro: TBooleanField
      FieldName = 'bdEstrangeiro'
    end
    object tbCadastrobdEndereco: TStringField
      FieldName = 'bdEndereco'
      Size = 180
    end
  end
end
