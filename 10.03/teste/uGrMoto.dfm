inherited frGridMoto: TfrGridMoto
  Left = 422
  Top = 250
  Caption = 'frGridMoto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 40
    DataSource = dtCadastros.dtCadastroMoto
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMarca'
        Title.Caption = 'Marca'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdAno'
        Title.Caption = 'Ano'
        Width = 100
        Visible = True
      end>
  end
  inherited btOrdenarCodigo: TButton
    OnClick = btOrdenarCodigoClick
  end
  inherited btOrdenarNome: TButton
    OnClick = btOrdenarNomeClick
  end
end
