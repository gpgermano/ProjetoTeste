inherited frGrPadrao1: TfrGrPadrao1
  Left = 388
  Top = 230
  Width = 770
  Height = 251
  Caption = 'frGrCliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 0
    Width = 833
    Height = 193
    DataSource = dmDados.dsCadastroCliente
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Width = 50
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
        FieldName = 'bdCpf'
        Title.Caption = 'Cpf'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endereco'
        Width = 200
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
        FieldName = 'bdSexo'
        Title.Caption = 'Sexo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTrabalha'
        Title.Caption = 'Trabalha'
        Visible = True
      end>
  end
end
