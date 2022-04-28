unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCompra, uVenda, uFiltrar, uFiltrarVendas, Menus;

type
  TfrRoupa = class(TForm)
    btCompra: TButton;
    btVenda: TButton;
    btFiltro: TButton;
    btRelatorioVenda: TButton;
    procedure btCompraClick(Sender: TObject);
    procedure btVendaClick(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btRelatorioVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frRoupa: TfrRoupa;

implementation

{$R *.dfm}

procedure TfrRoupa.btCompraClick(Sender: TObject);
var
  wTelaCompra : TfrCompra;
begin
  wTelaCompra := TfrCompra.Create(self);
  wTelaCompra.Show
end;

procedure TfrRoupa.btVendaClick(Sender: TObject);
var
  wTelaVenda : TfrVenda;
begin
  wTelaVenda := TfrVenda.Create(self);
  wTelaVenda.Show;
end;

procedure TfrRoupa.btFiltroClick(Sender: TObject);
var
  wTelaFiltro : TfrFiltrar;
begin
   wTelaFiltro := TfrFiltrar.Create(self);
   wTelaFiltro.Show;
end;



procedure TfrRoupa.btRelatorioVendaClick(Sender: TObject);
var
  wTelaFiltroVenda : TfrFiltroVenda;
begin
  wTelaFiltroVenda := TfrFiltroVenda.Create(self);
  wTelaFiltroVenda.Show;
end;

end.
