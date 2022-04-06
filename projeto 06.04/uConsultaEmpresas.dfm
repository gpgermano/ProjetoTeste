object frConsultaEmpresas: TfrConsultaEmpresas
  Left = 176
  Top = 162
  Width = 1197
  Height = 480
  Caption = 'Consulta de empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbSoletrado: TLabel
    Left = 167
    Top = 5
    Width = 4
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grConsulta: TDBGrid
    Left = 0
    Top = 32
    Width = 1181
    Height = 409
    DataSource = dmTabelas.dsEmpresas
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = grConsultaKeyPress
    OnKeyUp = grConsultaKeyUp
    OnTitleClick = grConsultaTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCnpj'
        Title.Caption = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdRazaoSocial'
        Title.Caption = 'Raz'#227'o social'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNomeFantasia'
        Title.Caption = 'Nome fantasia'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCep'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNumero'
        Title.Caption = 'N'#186
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdBairro'
        Title.Caption = 'Bairro'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdComplemento'
        Title.Caption = 'Complemento'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEstado'
        Title.Caption = 'Estado'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCidade'
        Title.Caption = 'Cidade'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdInsEstadual'
        Title.Caption = 'Inscri'#231#227'o estadual'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCnae'
        Title.Caption = 'CNAE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdInicioAtivi'
        Title.Caption = 'Inicio atividades'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTributacao'
        Title.Caption = 'Tributa'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEmail'
        Title.Caption = 'Email'
        Width = 300
        Visible = True
      end>
  end
  object btExcluir: TButton
    Left = 0
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btExcluirClick
  end
  object btSalvar: TButton
    Left = 80
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btSalvarClick
  end
end
