object frPrincipal: TfrPrincipal
  Left = 263
  Top = 210
  Width = 412
  Height = 134
  Caption = 'Cadastro Conta Bancaria'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCadastroCliente: TButton
    Left = 16
    Top = 8
    Width = 145
    Height = 73
    Caption = 'Cadastro Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btCadastroClienteClick
  end
  object btCadastroBanco: TButton
    Left = 240
    Top = 8
    Width = 137
    Height = 73
    Caption = 'Cadastro Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btCadastroBancoClick
  end
end
