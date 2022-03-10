unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdtCadastros = class(TDataModule)
    dtCadastroCliente: TDataSource;
    tbCadastroMoto: TTable;
    tbCadastroCliente: TTable;
    dtCadastroMoto: TDataSource;
    tbCadastroClientebdCodigo: TIntegerField;
    tbCadastroClientebdNome: TStringField;
    tbCadastroClientebdSexo: TIntegerField;
    tbCadastroClientebdEstrangeiro: TBooleanField;
    tbCadastroMotobdCodigo: TIntegerField;
    tbCadastroMotobdNome: TStringField;
    tbCadastroMotobdMarca: TStringField;
    tbCadastroMotobdAno: TStringField;
  private
    { Private declarations }
    Function fDiretorioCliente : String;
    Function fDiretorioMoto : String;
  public
    { Public declarations }
    procedure pCriarTbCliente ;
    procedure pCriartbMoto ;

  end;

var
  dtCadastros: TdtCadastros;

implementation

{$R *.dfm}

{ TdtCadastros }

function TdtCadastros.fDiretorioCliente: String;
begin
 result := 'C:\Users\prog10\Desktop\estagio\10.03\teste\TabelaCliente';
end;

function TdtCadastros.fDiretorioMoto: String;
begin
  result := 'C:\Users\prog10\Desktop\estagio\10.03\teste\TabelaMoto';
end;

procedure TdtCadastros.pCriarTbCliente;
begin
  if not DirectoryExists(fDiretorioCliente) then
         ForceDirectories(fDiretorioCliente);

  tbCadastroCliente.Active := False;
  tbCadastroCliente.DatabaseName := fDiretorioCliente;
  tbCadastroCliente.TableName := 'tbCadastroCliente.db';
  tbCadastroCliente.TableType := ttParadox;

  if not FileExists(tbCadastroCliente.DatabaseName + '\' + tbCadastroCliente.TableName) then
    begin
      tbCadastroCliente.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
      tbCadastroCliente.CreateTable;
    end;
    
  tbCadastroCliente.Active := True;
  tbCadastroCliente.Open;
end;

procedure TdtCadastros.pCriartbMoto;
begin
   if not DirectoryExists(fDiretorioMoto) then
         ForceDirectories(fDiretorioMoto);

  tbCadastroMoto.Active := False;
  tbCadastroMoto.DatabaseName := fDiretorioMoto;
  tbCadastroMoto.TableName := 'tbCadastroMoto.db';
  tbCadastroMoto.TableType := ttParadox;

  if not FileExists(tbCadastroMoto.DatabaseName + '\' + tbCadastroMoto.TableName) then
      begin
        tbCadastroMoto.IndexDefs.Add('iCodigo1', 'bdCodigo', [ixPrimary, ixUnique]);
        tbCadastroMoto.CreateTable;
      end;

  tbCadastroMoto.Active := True;
  tbCadastroMoto.Open;
end;

end.
