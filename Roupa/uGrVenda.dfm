inherited frGrVEnda: TfrGrVEnda
  Left = 388
  Top = 216
  Width = 761
  Height = 229
  Caption = 'frGrVEnda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbSoletrando: TLabel
    Left = 16
    Top = 16
    Width = 17
    Caption = ''
  end
  inherited DBGrid1: TDBGrid
    Left = 16
    Top = 40
    Width = 713
    DataSource = dmCompraVenda.dsVenda
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyUp
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCod'
        Title.Caption = 'Cod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdDescricao'
        Title.Caption = 'Descricao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdData'
        Title.Caption = 'Data'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdgenero'
        Title.Caption = 'genero'
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
        FieldName = 'bdQuantidade'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdValorUnitario'
        Title.Caption = 'Valor Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdAliquota'
        Title.Caption = 'Aliquota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdValorTotal'
        Title.Caption = 'Valor Total'
        Visible = True
      end>
  end
end
