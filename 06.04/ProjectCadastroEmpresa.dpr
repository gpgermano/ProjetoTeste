program ProjectCadastroEmpresa;

uses
  Forms,
  uDataModule in 'uDataModule.pas' {dmCadastroEmp: TDataModule},
  uConsulta in 'uConsulta.pas' {frConsultaEmp},
  uCadastroEmpresa in 'uCadastroEmpresa.pas' {frCadastroEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCadastroEmpresa, frCadastroEmpresa);
  Application.CreateForm(TdmCadastroEmp, dmCadastroEmp);
  Application.Run;
end.
