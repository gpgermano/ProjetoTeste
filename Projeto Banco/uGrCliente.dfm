inherited frGrCliente: TfrGrCliente
  Left = 322
  Top = 148
  Width = 876
  Height = 346
  Caption = 'frGrCliente'
  Color = clGreen
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grPadrao: TDBGrid
    Left = 0
    Width = 849
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
      end
      item
        Expanded = False
        FieldName = 'bdEmprestimo'
        Title.Caption = 'Emprestimo'
        Width = 80
        Visible = True
      end>
  end
  inherited btOrdenaCodigo: TButton
    Top = 216
    Width = 129
    Height = 57
    Font.Height = -13
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btOrdenaCodigoClick
  end
  inherited btOrdenaNome: TButton
    Left = 208
    Top = 216
    Width = 121
    Height = 57
    Font.Height = -13
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btOrdenaNomeClick
  end
end
