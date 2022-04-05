object dmTabelas: TdmTabelas
  OldCreateOrder = False
  Left = 384
  Top = 187
  Height = 150
  Width = 215
  object dsCadastro: TDataSource
    DataSet = tbCadastro
    Left = 24
    Top = 16
  end
  object tbCadastro: TTable
    Left = 96
    Top = 16
    object tbCadastrobdCODIGO: TIntegerField
      FieldName = 'bdCODIGO'
    end
    object tbCadastrobdNOME: TStringField
      FieldName = 'bdNOME'
      Size = 100
    end
    object tbCadastrobdSEXO: TIntegerField
      FieldName = 'bdSEXO'
    end
    object tbCadastrobdESTRANGEIRO: TBooleanField
      FieldName = 'bdESTRANGEIRO'
    end
  end
end
