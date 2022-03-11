unit uDataModule;

interface

uses
  SysUtils, Classes, DBClient, DB, DBTables;

type
  TdmDados = class(TDataModule)
    tbCadastroBanco: TTable;
    dsCadastroCliente: TDataSource;
    dsCadastroBanco: TDataSource;
    tbCadastroBancobdCodigo: TStringField;
    tbCadastroBancobdNome: TStringField;
    tbCadastroBancobdCnpj: TStringField;
    tbCadastroBancobdEndereco: TStringField;
    tbCadastroBancobdEstrangeiro: TBooleanField;
    cdsCadastroCliente: TClientDataSet;
    cdsCadastroBanco: TClientDataSet;
    cdsCadastroClientebdCodigo: TStringField;
    cdsCadastroClientebdNome: TStringField;
    cdsCadastroClientebdCpf: TStringField;
    cdsCadastroClientebdEndereco: TStringField;
    cdsCadastroClientebdSexo: TIntegerField;
    cdsCadastroClientebdTrabalhaAtl: TBooleanField;
    cdsCadastroBancobdCodigo: TStringField;
    cdsCadastroBancobdNome: TStringField;
    cdsCadastroBancobdCnpj: TStringField;
    cdsCadastroBancobdEndereco: TStringField;
    cdsCadastroBancobdEstrangeiro: TBooleanField;
    dsCdsCliente: TDataSource;
    dsCdsBanco: TDataSource;
    tbCadastroBancobdTelefone: TStringField;
    cdsCadastroClientebdTelefone: TStringField;
    cdsCadastroBancobdTelefone: TStringField;
    cdsCadastroClientebdEmprestimo: TCurrencyField;
    tbCadastroCliente: TTable;
    tbCadastroClientebdCodigo: TIntegerField;
    tbCadastroClientebdNome: TStringField;
    tbCadastroClientebdCpf: TStringField;
    tbCadastroClientebdEndereco: TStringField;
    tbCadastroClientebdTrabalha: TBooleanField;
    tbCadastroClientebdSexo: TIntegerField;
    tbCadastroClientebdTelefone: TStringField;
    tbCadastroClientebdEmprestimo: TCurrencyField;
  private
    { Private declarations }
    function fDiretorioCliente : String;
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
 result := 'C:\Users\prog10\Desktop\estagio\10.03\Projeto Banco\TabelaBanco';
end;

function TdmDados.fDiretorioCliente: String;
begin
 result := 'C:\Users\prog10\Desktop\estagio\10.03\Projeto Banco\TabelaCliente';
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
  tbCadastroBanco.TableName := 'tbCadBanco.db';
  tbCadastroBanco.TableType := ttParadox;

  dmDados.tbCadastroBanco.IndexDefs.Add('iCodigo','bdCodigo', [ixPrimary, ixUnique]);

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
  if not DirectoryExists(fDiretorioCliente) then
         ForceDirectories(fDiretorioCliente);

  tbCadastroCliente.Active := False;
  tbCadastroCliente.DatabaseName := fDiretorioCliente;
  tbCadastroCliente.TableName := 'tbCadCLiente.db';
  tbCadastroCliente.TableType := ttParadox;

  dmDados.tbCadastroCliente.IndexDefs.Add('iCodigo','bdCodigo', [ixPrimary, ixUnique]);

  if not FileExists(tbCadastroCliente.DatabaseName + '\' + tbCadastroCliente.TableName) then
    begin
      tbCadastroCliente.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
      tbCadastroCliente.CreateTable;
    end;
                       
  tbCadastroCliente.Active := True;
  tbCadastroCliente.Open;
end;

end.
