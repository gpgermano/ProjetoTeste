unit uFiltrarVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxDesgn, frxClass, frxDBSet, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBTables, uDataModule;

type
  TfrFiltroVenda = class(TForm)
    lbDataInicial: TLabel;
    Label1: TLabel;
    GBTamanho: TGroupBox;
    ckP: TCheckBox;
    ckGG: TCheckBox;
    ckM: TCheckBox;
    ckG: TCheckBox;
    btFiltrar: TButton;
    btRelatorio: TButton;
    btEditar: TButton;
    edDataInicial: TMaskEdit;
    DBGridFiltrar: TDBGrid;
    RdColunas: TRadioGroup;
    edDataSaida: TMaskEdit;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxDesigner1: TfrxDesigner;
    DsFiltrar: TDataSource;
    RGs: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btRelatorioClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: String;
      var Value: Variant);
    function frxReport1UserFunction(const MethodName: String;
      var Params: Variant): Variant;
  private
    { Private declarations }
    Ftable : TTable;
    FQuery : TQuery;
    function getOr (PrSqls: String): String;
    Function getWhere (PrSql: String): String;
    procedure pFiltroV;
  public
    { Public declarations }
  end;

var
  frFiltroVenda: TfrFiltroVenda;

implementation

{$R *.dfm}

{ TfrFiltroVenda }

function TfrFiltroVenda.getOr(PrSqls: String): String;
begin
  Result := '';
  if (PrSqls <> '') then
      result := ' or ';
end;

function TfrFiltroVenda.getWhere(PrSql: String): String;
begin
  if pos('WHERE', UpperCase(PrSql)) > 0 then
    Result := 'AND'
  else
    Result := ' where ';
end;

procedure TfrFiltroVenda.pFiltroV;
  var
  wTamanho : String;
  wSQL : string;
  wDataInicial : String;
  wDataSaida : String;
  wWhere : string;
  wOrder : string;
begin
  wWhere := '';
  wOrder := '';
  wTamanho := '';
  wSQL := 'select bdcod,bdDescricao, bdValorUnitario, bdAliquota,bdGenero, bdData, bdValorTotal, bdTamanho, bdQuantidade from tbVendas';
  if ckP.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('P');
  if ckGG.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('GG');
   if ckG.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('G');
   if ckM.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('M');
  if wTamanho <> '' then
     wSQL := wSQL + getWhere(wSQL) + '(' + wTamanho + ')';

  if wTamanho <> '' then
     wWhere := wWhere + getWhere(wWhere) + '(' + wTamanho + ')';

  if (edDataInicial.Text <> '  /  /   ') and (edDataSaida.Text <> '  /  /   ') then
  begin
    wDataInicial := copy(edDataInicial.Text, 7, 4) + copy(edDataInicial.Text, 4, 2) + copy(edDataInicial.Text, 1, 2);
    wDataSaida := copy(edDataSaida.Text, 7, 4) + copy(edDataSaida.Text, 4, 2) + copy(edDataSaida.Text, 1, 2);
    wSQL := wSQL + getWhere(wSQL) + ' bdData >= ' + QuotedStr (wDataInicial);
    wSQL := wSQL + getWhere(wSQL) + ' bdData <= ' + QuotedStr (wDataSaida);
  end;


   case RdColunas.ItemIndex of
   0: wSQL := wSQL + ' order by bdcod ';
   1: wSQL := wSQL + ' order by bdDescricao ';
   2: wSQL := wSQL + ' order by bdValorTotal ';
   3: wSQL := wSQL + ' order by bdGenero ';
   4: wSQL := wSQL + ' order by bdData ';
   5: wSql := wSQL + ' order by bdAliquota ';
   6: wSQL := wSQL + ' order by bdValorUnitario ';
   end;

  wSQL := 'select bdcod,bdDescricao, bdValorUnitario, bdAliquota,bdGenero, bdData, bdValorTotal, bdTamanho, bdQuantidade from tbVendas';
  wSQL := wSQL + wWhere + wOrder;

  DsFiltrar.DataSet := FQuery;
  FQuery.DatabaseName := 'C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\';
  FQuery.SQL.Clear;
  FQuery.SQL.Add(wSQL);
  FQuery.Open;

end;

procedure TfrFiltroVenda.FormCreate(Sender: TObject);
begin
   FQuery := Tquery.Create(Self);
end;

procedure TfrFiltroVenda.FormDestroy(Sender: TObject);
begin
  if Assigned(FQuery) then  
    FreeAndNil(FQuery);
end;

procedure TfrFiltroVenda.btFiltrarClick(Sender: TObject);
begin
  pFiltroV;
end;

procedure TfrFiltroVenda.btRelatorioClick(Sender: TObject);
begin
  pFiltroV;
  frxDBDataset1.DataSet := FQuery;
  frxReport1.AddFunction('function getModelo: integer', 'SCI', 'Retorna o modelo do relatório');
  frxReport1.LoadFromFile('C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\Venda.fr3');
  frxReport1.ShowReport;
end;

procedure TfrFiltroVenda.btEditarClick(Sender: TObject);
begin
  pFiltroV;
  frxDBDataset1.DataSet := FQuery;
  frxReport1.AddFunction('function getModelo: integer', 'SCI', 'Retorna o modelo do relatório');
  frxReport1.LoadFromFile('C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\Venda.fr3');
  frxReport1.DesignReport;
end;

procedure TfrFiltroVenda.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'Modelo' then
     Value := RGs.ItemIndex;
end;

function TfrFiltroVenda.frxReport1UserFunction(const MethodName: String;
  var Params: Variant): Variant;
begin
    if UpperCase(MethodName) = 'GETMODELO' then
       Result := RGs.ItemIndex;
end;

end.
