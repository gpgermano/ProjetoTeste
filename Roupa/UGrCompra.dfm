inherited frGrCompra: TfrGrCompra
  Left = 669
  Top = 182
  Width = 675
  Height = 344
  Caption = 'frGrCompra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbSoletrando: TLabel
    Left = 16
    Width = 3
    Caption = ''
  end
  inherited DBGrid1: TDBGrid
    Left = 16
    Width = 625
    DataSource = dmCompraVenda.dsCompra
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyUp
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdcod'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdGenero'
        Title.Caption = 'Descricao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTamanho'
        Title.Caption = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdGenero'
        Title.Caption = 'Genero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdValor'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdData'
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdAliquota'
        Title.Caption = 'Aliquota'
        Visible = True
      end>
  end
  object btExportar: TButton
    Left = 40
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 1
    OnClick = btExportarClick
  end
end
