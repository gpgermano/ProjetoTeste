unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmTabelas = class(TDataModule)
    dsCadastro: TDataSource;
    tbCadastro: TTable;
    tbCadastrobdCODIGO: TIntegerField;
    tbCadastrobdNOME: TStringField;
    tbCadastrobdSEXO: TIntegerField;
    tbCadastrobdESTRANGEIRO: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriaTabelaCadastro;
    function fDiretorio: String;
  end;

var
  dmTabelas: TdmTabelas;

implementation

{$R *.dfm}

{ TdmTabelas }

function TdmTabelas.fDiretorio: String;
begin
  Result := 'C:\Users\progvisual14\Desktop\curso\05-04\Tabelas';
end;

procedure TdmTabelas.pCriaTabelaCadastro;
begin
  if not DirectoryExists(fDiretorio) then
     ForceDirectories(fDiretorio);

  tbCadastro.Active := False;
  tbCadastro.DatabaseName := fDiretorio;
  tbCadastro.TableName    := 'TPessoa.db';
  tbCadastro.TableType    := ttParadox;

  tbCadastro.IndexDefs.Add('iCodigo', 'bdCODIGO', [ixPrimary, ixUnique]);

  if not FileExists(tbCadastro.DatabaseName + '\' + tbCadastro.TableName) then
     tbCadastro.CreateTable;

  tbCadastro.Active := True;
  tbCadastro.Open;
end;

end.
