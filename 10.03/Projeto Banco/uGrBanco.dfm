inherited frGrCadastroBanco: TfrGrCadastroBanco
  Left = 387
  Top = 503
  Width = 796
  Caption = 'frGrCadastroBanco'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Width = 753
    DataSource = dmDados.dsCadastroBanco
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCnpj'
        Title.Caption = 'Cnpj'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endereco'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Title.Caption = 'Telefone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstrangeiro'
        Title.Caption = 'Estrangeiro'
        Width = 60
        Visible = True
      end>
  end
end
