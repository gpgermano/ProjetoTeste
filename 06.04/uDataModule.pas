unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmCadastroEmp = class(TDataModule)
    dsCadastroEmp: TDataSource;
    tbCadastro: TTable;
    tbCadastrobdCodigo: TIntegerField;
    tbCadastrobdEmpresa: TStringField;
    tbCadastrobdCnpj: TStringField;
    tbCadastrobdEstrangeiro: TBooleanField;
    tbCadastrobdEndereco: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriaTabelaCadastro;
    function fDiretorio: String;
  end;

var
  dmCadastroEmp: TdmCadastroEmp;

implementation

{$R *.dfm}

{ TdmCadastroEmp }

function TdmCadastroEmp.fDiretorio: String;
begin
  result := 'C:\Users\prog10\Desktop\estagio\DELPHI7\06.04\tabelaEmp' ;
end;

procedure TdmCadastroEmp.pCriaTabelaCadastro;
begin
    if not DirectoryExists(fDiretorio) then
     ForceDirectories(fDiretorio);

  tbCadastro.Active := False;
  tbCadastro.DatabaseName := fDiretorio;
  tbCadastro.TableName    := 'TPessoa.db';
  tbCadastro.TableType    := ttParadox;

  tbCadastro.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);

  if not FileExists(tbCadastro.DatabaseName + '\' + tbCadastro.TableName) then
     tbCadastro.CreateTable;

  tbCadastro.Active := True;
  tbCadastro.Open;
end;

end.
