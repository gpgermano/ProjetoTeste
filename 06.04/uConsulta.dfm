object frConsultaEmp: TfrConsultaEmp
  Left = 297
  Top = 159
  Width = 738
  Height = 307
  Caption = 'Consulta Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbConsultaEmp: TDBGrid
    Left = 24
    Top = 8
    Width = 657
    Height = 120
    DataSource = dmCadastroEmp.dsCadastroEmp
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEmpresa'
        Title.Caption = 'Empresa'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endereco'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstrangeiro'
        Title.Caption = 'Estrangeiro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCnpj'
        Title.Caption = 'Cnpj'
        Width = 100
        Visible = True
      end>
  end
  object btOrdenarCodigo: TButton
    Left = 16
    Top = 152
    Width = 81
    Height = 25
    Caption = 'Ordenar Codigo'
    TabOrder = 1
    OnClick = btOrdenarCodigoClick
  end
  object btOrdenarNome: TButton
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Ordenar Nome'
    TabOrder = 2
    OnClick = btOrdenarNomeClick
  end
end
