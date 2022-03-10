inherited frGridCliente: TfrGridCliente
  Left = 975
  Top = 168
  Width = 428
  Height = 247
  Caption = 'frGridCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    DataSource = dtCadastros.dtCadastroCliente
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
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
        FieldName = 'bdSexo'
        Title.Caption = 'Sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstrangeiro'
        Title.Caption = 'Estrangeiro'
        Width = 70
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
