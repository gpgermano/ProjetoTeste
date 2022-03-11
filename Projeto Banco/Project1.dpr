program Project1;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uClasses in 'uClasses.pas',
  uCadastroPadrao in 'uCadastroPadrao.pas' {frCadastroPadrao},
  uGrPadrao in 'uGrPadrao.pas' {frGrPadrao},
  uDataModule in 'uDataModule.pas' {dmDados: TDataModule},
  uCadastroCliente in 'uCadastroCliente.pas' {frCadastroCliente},
  uCadastroBanco in 'uCadastroBanco.pas' {frCadastroBanco},
  uGrBanco in 'uGrBanco.pas' {frGrCadastroBanco},
  uGrCliente in 'uGrCliente.pas' {frGrCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
