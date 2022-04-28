object dmCompraVenda: TdmCompraVenda
  OldCreateOrder = False
  Left = 182
  Top = 124
  Height = 180
  Width = 196
  object dsCompra: TDataSource
    DataSet = tbCompra
    Left = 104
    Top = 8
  end
  object dsVenda: TDataSource
    DataSet = tbVenda
    Left = 104
    Top = 64
  end
  object tbCompra: TTable
    Left = 16
    Top = 8
    object tbComprabdcod: TIntegerField
      FieldName = 'bdcod'
    end
    object tbComprabdDescricao: TStringField
      FieldName = 'bdDescricao'
      Size = 150
    end
    object tbComprabdData: TStringField
      FieldName = 'bdData'
      Size = 50
    end
    object tbComprabdTamanho: TStringField
      FieldName = 'bdTamanho'
      Size = 5
    end
    object tbComprabdGenero: TIntegerField
      FieldName = 'bdGenero'
    end
    object tbComprabdAliquota: TIntegerField
      FieldName = 'bdAliquota'
    end
    object tbComprabdValorUnitario: TCurrencyField
      FieldName = 'bdValorUnitario'
    end
    object tbComprabdQuantidade: TIntegerField
      FieldName = 'bdQuantidade'
    end
  end
  object tbVenda: TTable
    Left = 16
    Top = 64
    object tbVendabdCod: TIntegerField
      FieldName = 'bdCod'
    end
    object tbVendabdDescricao: TStringField
      FieldName = 'bdDescricao'
      Size = 150
    end
    object tbVendabdData: TStringField
      FieldName = 'bdData'
      Size = 150
    end
    object tbVendabdTamanho: TStringField
      FieldName = 'bdTamanho'
      Size = 5
    end
    object tbVendabdgenero: TIntegerField
      FieldName = 'bdgenero'
    end
    object tbVendabdValorTotal: TCurrencyField
      FieldName = 'bdValorTotal'
    end
    object tbVendabdValorUnitario: TIntegerField
      FieldName = 'bdValorUnitario'
    end
    object tbVendabdAliquota: TIntegerField
      FieldName = 'bdAliquota'
    end
    object tbVendabdQuantidade: TIntegerField
      FieldName = 'bdQuantidade'
    end
  end
end
