unit uFiltrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBTables, frxDesgn, frxClass, frxDBSet, DB,
  Grids, DBGrids, ExtCtrls, frxChart;

type
  TfrFiltrar = class(TForm)
    lbDataInicial: TLabel;
    GBTamanho: TGroupBox;
    ckP: TCheckBox;
    ckGG: TCheckBox;
    ckM: TCheckBox;
    ckG: TCheckBox;
    btFiltrar: TButton;
    btRelatorio: TButton;
    btEditar: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxDesigner1: TfrxDesigner;
    edDataInicial: TMaskEdit;
    DBGridFiltrar: TDBGrid;
    DsFiltrar: TDataSource;
    RdColunas: TRadioGroup;
    Label1: TLabel;
    edDataSaida: TMaskEdit;
    RGs: TRadioGroup;
    frxChartObject1: TfrxChartObject;
    frxDBDatasetGrafico: TfrxDBDataset;
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
    fQueryGrafico : TQuery;
    function getOr (PrSqls: String): String;
    Function getWhere (PrSql: String): String;
    procedure pFiltro;
  public
    { Public declarations }
  end;

var
  frFiltrar: TfrFiltrar;

implementation

{$R *.dfm}

procedure TfrFiltrar.FormCreate(Sender: TObject);
begin
  FQuery := Tquery.Create(Self);

  fQueryGrafico := TQuery.Create(self);
end;

procedure TfrFiltrar.FormDestroy(Sender: TObject);
begin
  if Assigned(FQuery) then   //Assigned: verificar a variavel
    FreeAndNil(FQuery);      //FreeAndNil: dretuir a variavel

  if Assigned (fQueryGrafico) then
     FreeAndNil(fQueryGrafico);
end;

function TfrFiltrar.getWhere(PrSql: String): String;
begin
  if pos('WHERE', UpperCase(PrSql)) > 0 then
    Result := 'AND'
  else
    Result := ' where ';
end;

procedure TfrFiltrar.pFiltro;
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
  wSQL := '';
  if ckP.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('P');
  if ckGG.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('GG');
   if ckG.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('G');
   if ckM.Checked then
      wTamanho := wTamanho + getOr(wTamanho) + ' bdTamanho = ' + QuotedStr('M');

  if wTamanho <> '' then
     wWhere := wWhere + getWhere(wWhere) + '(' + wTamanho + ')';

  if (edDataInicial.Text <> '  /  /    ') and (edDataSaida.Text <> '  /  /    ') then
  begin
    wDataInicial := copy(edDataInicial.Text, 7, 4) + copy(edDataInicial.Text, 4, 2) + copy(edDataInicial.Text, 1, 2);
    wDataSaida := copy(edDataSaida.Text, 7, 4) + copy(edDataSaida.Text, 4, 2) + copy(edDataSaida.Text, 1, 2);
    wWhere := wWhere + getWhere(wWhere) + ' bdData >= ' + QuotedStr (wDataInicial);
    wWhere := wWhere + getWhere(wWhere) + ' bdData <= ' + QuotedStr (wDataSaida);
  end;


   case RdColunas.ItemIndex of
   0: wOrder := ' order by bdcod ';
   1: wOrder := ' order by bdDescricao ';
   2: wOrder := ' order by bdAliquota ';
   3: wOrder := ' order by bdGenero ';
   4: wOrder := ' order by bdData ';
   5: wOrder := ' order by bdValorUnitario ';
   6: wOrder := ' order by bdQuantidade ';
   end;

  wSQL := 'select bdcod,bdDescricao, bdValorUnitario, bdAliquota,bdGenero, bdData, bdTamanho from tbCompras';
  wSQL := wSQL + wWhere + wOrder;

  DsFiltrar.DataSet := FQuery;
  FQuery.DatabaseName := 'C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\';
  FQuery.SQL.Clear;
  FQuery.SQL.Add(wSQL);
  FQuery.Open;

  wSQL := 'select bdData, count(bdData) from tbCompras';
  wSQL := wSQL + wWhere;
  wSQL := wSQL + ' group by bdData ';

  frxDBDatasetGrafico.DataSet := fQueryGrafico;
  fQueryGrafico.DatabaseName := 'C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\';
  fQueryGrafico.SQL.Clear;
  fQueryGrafico.SQL.Add(wSQL);
  fQueryGrafico.Open;

end;

procedure TfrFiltrar.btFiltrarClick(Sender: TObject);
begin
 pFiltro;
end;

function TfrFiltrar.getOr(PrSqls: String): String;
begin
  Result := '';
  if (PrSqls <> '') then
      result := ' or ';
end;

procedure TfrFiltrar.btRelatorioClick(Sender: TObject);
begin
  pFiltro;
  frxDBDataset1.DataSet := FQuery;
  frxReport1.AddFunction('function getModelo: integer', 'SCI', 'Retorna o modelo do relatório');
  frxReport1.LoadFromFile('C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\Compra.fr3');
  frxReport1.ShowReport;
end;

procedure TfrFiltrar.btEditarClick(Sender: TObject);
begin
  pFiltro;
  frxDBDataset1.DataSet := FQuery;
  frxReport1.AddFunction('function getModelo: integer', 'SCI', 'Retorna o modelo do relatório');
  frxReport1.LoadFromFile('C:\Users\prog10\Desktop\estagio\DELPHI7\Roupa\Compra\Compra.fr3');
  frxReport1.DesignReport;
end;

procedure TfrFiltrar.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'Modelo' then
     Value := RGs.ItemIndex;
end;

function TfrFiltrar.frxReport1UserFunction(const MethodName: String;
  var Params: Variant): Variant;
begin
   if UpperCase(MethodName) = 'GETMODELO' then
      Result := RGs.ItemIndex;
end;

end.
