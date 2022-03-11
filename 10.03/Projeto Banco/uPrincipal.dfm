object frPrincipal: TfrPrincipal
  Left = 274
  Top = 153
  Width = 294
  Height = 124
  Caption = 'Cadastro Conta Bancaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCadastroCliente: TButton
    Left = 48
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Cadastro Cliente'
    TabOrder = 0
    OnClick = btCadastroClienteClick
  end
  object btCadastroBanco: TButton
    Left = 160
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Cadastro Banco'
    TabOrder = 1
    OnClick = btCadastroBancoClick
  end
end
