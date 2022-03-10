inherited frCadastroMoto: TfrCadastroMoto
  Height = 229
  Caption = 'frCadastroMoto'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbMarca: TLabel [2]
    Left = 48
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object lbAno: TLabel [3]
    Left = 56
    Top = 96
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  inherited edCodigo: TEdit
    OnExit = edCodigoExit
  end
  inherited btSalvar: TButton
    Top = 128
    TabOrder = 4
    OnClick = btSalvarClick
  end
  inherited btConsultar: TButton
    Left = 144
    Top = 128
    TabOrder = 5
    OnClick = btConsultarClick
  end
  object edMarca: TEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edAno: TEdit
    Left = 88
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
