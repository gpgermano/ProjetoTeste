unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmCompraVenda = class(TDataModule)
    dsCompra: TDataSource;
    dsVenda: TDataSource;
    tbCompra: TTable;
    tbVenda: TTable;
    tbComprabdcod: TIntegerField;
    tbComprabdDescricao: TStringField;
    tbComprabdData: TStringField;
    tbComprabdTamanho: TStringField;
    tbComprabdGenero: TIntegerField;
    tbVendabdCod: TIntegerField;
    tbVendabdDescricao: TStringField;
    tbVendabdData: TStringField;
    tbVendabdTamanho: TStringField;
    tbVendabdgenero: TIntegerField;
    tbVendabdValorTotal: TCurrencyField;
    tbVendabdValorUnitario: TIntegerField;
    tbComprabdAliquota: TIntegerField;
    tbVendabdAliquota: TIntegerField;
    tbComprabdValorUnitario: TCurrencyField;
    tbVendabdQuantidade: TIntegerField;
    tbComprabdQuantidade: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    Function FdiretorioCompra : string;
    Function FdiretorioVenda : string;
    procedure pCriarTbCompra;
    procedure pCriarTbCVemda;
  end;

var
  dmCompraVenda: TdmCompraVenda;

implementation

{$R *.dfm}

{ TDataModule1 }

function TdmCompraVenda.FdiretorioCompra: string;
begin
 result := 'C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra' ;
end;

function TdmCompraVenda.FdiretorioVenda: string;
begin
 result := 'C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Venda' ;
end;

procedure TdmCompraVenda.pCriarTbCompra;
begin
 if not DirectoryExists(FdiretorioCompra) then
        ForceDirectories(FdiretorioCompra);

 tbCompra.Active := False;
 tbCompra.DatabaseName := FdiretorioCompra;
 tbCompra.TableName := 'tbCompras.db';
 tbCompra.TableType := ttParadox;

 if not FileExists(tbCompra.DatabaseName + '\' + tbCompra.TableName) then
  begin
    tbCompra.IndexDefs.Add('iCodigo', 'bdCod', [ixPrimary, ixUnique]);
    tbCompra.IndexDefs.Add('iDescricao', 'bdDescricao', [ixCaseInsensitive]);
    tbCompra.CreateTable;
  end;

  tbCompra.Active := True;
  tbCompra.Open;
end;

procedure TdmCompraVenda.pCriarTbCVemda;
begin
  if not DirectoryExists(FdiretorioVenda) then
        ForceDirectories(FdiretorioVenda);

 tbVenda.Active := False;
 tbVenda.DatabaseName := FdiretorioCompra;
 tbVenda.TableName := 'tbVendas.db';
 tbVenda.TableType := ttParadox;

 if not FileExists(tbVenda.DatabaseName + '\' + tbVenda.TableName) then
  begin
    tbVenda.IndexDefs.Add('iCodigo', 'bdCod', [ixPrimary, ixUnique]);
    tbVenda.IndexDefs.Add('iDescricao', 'bdDescricao', [ixCaseInsensitive]);
    tbVenda.CreateTable;
  end;

  tbVenda.Active := True;
  tbVenda.Open;
end;

end.
