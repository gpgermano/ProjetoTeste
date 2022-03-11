inherited frGrCadastroBanco: TfrGrCadastroBanco
  Left = 327
  Top = 233
  Width = 804
  Caption = 'frGrCadastroBanco'
  Color = clTeal
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 8
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
  inherited btOrdenaCodigo: TButton
    Top = 168
    Width = 89
    Height = 57
    Font.Color = clRed
    ParentFont = False
    OnClick = btOrdenaCodigoClick
  end
  inherited btOrdenaNome: TButton
    Left = 136
    Top = 168
    Width = 97
    Height = 57
    OnClick = btOrdenaNomeClick
  end
end
