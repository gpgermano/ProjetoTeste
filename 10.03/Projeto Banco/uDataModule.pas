unit uDataModule;

interface

uses
  SysUtils, Classes, DBClient, DB, DBTables;

type
  TdmDados = class(TDataModule)
    tbCadastroCliente: TTable;
    tbCadastroBanco: TTable;
    dsCadastroCliente: TDataSource;
    dsCadastroBanco: TDataSource;
    tbCadastroClientebdCodigo: TIntegerField;
    tbCadastroClientebdNome: TStringField;
    tbCadastroClientebdCpf: TStringField;
    tbCadastroClientebdEndereco: TStringField;
    tbCadastroClientebdTelefone: TCurrencyField;
    tbCadastroClientebdSexo: TIntegerField;
    tbCadastroClientebdTrabalha: TBooleanField;
    tbCadastroBancobdCodigo: TStringField;
    tbCadastroBancobdNome: TStringField;
    tbCadastroBancobdCnpj: TStringField;
    tbCadastroBancobdEndereco: TStringField;
    tbCadastroBancobdTelefone: TCurrencyField;
    tbCadastroBancobdEstrangeiro: TBooleanField;
    cdsCadastroCliente: TClientDataSet;
    cdsCadastroBanco: TClientDataSet;
    cdsCadastroClientebdCodigo: TStringField;
    cdsCadastroClientebdNome: TStringField;
    cdsCadastroClientebdCpf: TStringField;
    cdsCadastroClientebdEndereco: TStringField;
    cdsCadastroClientebdTelefone: TCurrencyField;
    cdsCadastroClientebdSexo: TIntegerField;
    cdsCadastroClientebdTrabalhaAtl: TBooleanField;
    cdsCadastroBancobdCodigo: TStringField;
    cdsCadastroBancobdNome: TStringField;
    cdsCadastroBancobdCnpj: TStringField;
    cdsCadastroBancobdEndereco: TStringField;
    cdsCadastroBancobdTelefone: TCurrencyField;
    cdsCadastroBancobdEstrangeiro: TBooleanField;
    dsCdsCliente: TDataSource;
    dsCdsBanco: TDataSource;
  private
    { Private declarations }
    function fDiretotioCliente : String;
    function fDiretorioBanco : String;
  public
    { Public declarations }
    procedure pCriarTabelaCliente;
    procedure pCriarTabelaBanco;
    procedure pCriarCdsCliente;
    procedure pCriarCdsBanco;
  end;

var
  dmDados: TdmDados;

implementation

{$R *.dfm}

{ TdmDados }

function TdmDados.fDiretorioBanco: String;
begin
 result := 'C:\Users\Gui\Desktop\curso Sci\Projetos Aleatorios\treinando\10.03\Projeto Banco\tabelaBanco';
end;

function TdmDados.fDiretotioCliente: String;
begin
 result := 'C:\Users\Gui\Desktop\curso Sci\Projetos Aleatorios\treinando\10.03\Projeto Banco\tabelaCliente';
end;

procedure TdmDados.pCriarCdsBanco;
begin
  cdsCadastroBanco.CreateDataSet;
  cdsCadastroBanco.Open;
end;

procedure TdmDados.pCriarCdsCliente;
begin
  cdsCadastroCliente.CreateDataSet;
  cdsCadastroCliente.Open;
end;

procedure TdmDados.pCriarTabelaBanco;
begin
  if not FileExists(fDiretorioBanco) then
         ForceDirectories(fDiretorioBanco);

  tbCadastroBanco.Active := False;
  tbCadastroBanco.DatabaseName := fDiretorioBanco;
  tbCadastroBanco.TableName := 'tbCadastroBanco.db';
  tbCadastroBanco.TableType := ttParadox;

  if not FileExists(tbCadastroBanco.DatabaseName + '\' + tbCadastroBanco.TableName) then
    begin
      tbCadastroBanco.IndexDefs.Add('iCodigo', 'bdCodigo' , [ixPrimary, ixUnique]);
      tbCadastroBanco.CreateTable;
    end;

  tbCadastroBanco.Active := True;
  tbCadastroBanco.Open;
end;

procedure TdmDados.pCriarTabelaCliente;
begin
  if not DirectoryExists(fDiretotioCliente) then
         ForceDirectories(fDiretotioCliente);

  tbCadastroCliente.Active := False;
  tbCadastroCliente.DatabaseName := fDiretotioCliente;
  tbCadastroCliente.TableName := 'tbCadastroCLiente.db';
  tbCadastroCliente.TableType := ttParadox;

  if not FileExists(tbCadastroCliente.DatabaseName + '\' + tbCadastroCliente.TableName) then
    begin
      tbCadastroCliente.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
    end;
                       
  tbCadastroCliente.Active := True;
  tbCadastroCliente.Open;
end;

end.
