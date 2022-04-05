program Project1;

uses
  Forms,
  uCadastro in 'uCadastro.pas' {frCadastro},
  uDataModule in 'uDataModule.pas' {dmTabelas: TDataModule},
  uConsultaCadastro in 'uConsultaCadastro.pas' {frConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrConsulta, frConsulta);
  Application.Run;
end.
