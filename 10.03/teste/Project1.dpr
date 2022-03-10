program Project1;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uClasses in 'uClasses.pas',
  uDataModule in 'uDataModule.pas' {dtCadastros: TDataModule},
  uCadastroPadrao in 'uCadastroPadrao.pas' {frCadastroPadrao},
  uGrPadrao in 'uGrPadrao.pas' {frGridPadrao},
  uCadastroCliente in 'uCadastroCliente.pas' {frCadastroCliente},
  uCadastroMoto in 'uCadastroMoto.pas' {frCadastroMoto},
  uGrMoto in 'uGrMoto.pas' {frGridMoto},
  uGrCliente in 'uGrCliente.pas' {frGridCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(TdtCadastros, dtCadastros);
  Application.Run;
end.
