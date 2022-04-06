unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmTabelas = class(TDataModule)
    tbEmpresas: TTable;
    tbEmpresasbdCodigo: TIntegerField;
    tbEmpresasbdCnpj: TStringField;
    tbEmpresasbdRazaoSocial: TStringField;
    tbEmpresasbdNomeFantasia: TStringField;
    tbEmpresasbdCep: TStringField;
    tbEmpresasbdEndereco: TStringField;
    tbEmpresasbdNumero: TStringField;
    tbEmpresasbdBairro: TStringField;
    tbEmpresasbdComplemento: TStringField;
    tbEmpresasbdEstado: TIntegerField;
    tbEmpresasbdCidade: TStringField;
    tbEmpresasbdInsEstadual: TStringField;
    tbEmpresasbdCnae: TIntegerField;
    tbEmpresasbdTributacao: TIntegerField;
    tbEmpresasbdEmail: TStringField;
    tbEmpresasbdTelefone: TStringField;
    tbEmpresasbdInicioAtivi: TStringField;
    dsEmpresas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pAbreTabelaEmpresas;
    function fDiretorio: String;
  end;

var
  dmTabelas: TdmTabelas;

implementation

{$R *.dfm}

{ TDataModule1 }

function TdmTabelas.fDiretorio: String;
begin
  Result := 'C:\Users\progvisual14\Desktop\curso\06-04\Tabelas';
end;

procedure TdmTabelas.pAbreTabelaEmpresas;
begin
  if not DirectoryExists(fDiretorio) then
     ForceDirectories(fDiretorio);

  tbEmpresas.Active := False;
  tbEmpresas.DatabaseName := fDiretorio;
  tbEmpresas.TableName    := 'tEmpresas.db';
  tbEmpresas.TableType    := ttParadox;

  tbEmpresas.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
  tbEmpresas.IndexDefs.Add('iRazaoSocial', 'bdRazaoSocial', [ixCaseInsensitive]);
  tbEmpresas.IndexDefs.Add('iNomeFantasia', 'bdNomeFantasia', [ixCaseInsensitive]);

  if not FileExists(tbEmpresas.DatabaseName + '\' + tbEmpresas.TableName) then
     tbEmpresas.CreateTable;

  tbEmpresas.Active := True;
  tbEmpresas.Open;
end;

end.
