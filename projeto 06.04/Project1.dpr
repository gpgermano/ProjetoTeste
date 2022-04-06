program Project1;

uses
  Forms,
  uCadastro in 'uCadastro.pas' {frCadastro},
  uDataModule in 'uDataModule.pas' {dmTabelas: TDataModule},
  uConsultaEmpresas in 'uConsultaEmpresas.pas' {frConsultaEmpresas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrConsultaEmpresas, frConsultaEmpresas);
  Application.Run;
end.
