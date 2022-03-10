unit uGrCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPadrao, StdCtrls, Grids, DBGrids, uDataModule;

type
  TfrGridCliente = class(TfrGridPadrao)
    procedure btOrdenarCodigoClick(Sender: TObject);
    procedure btOrdenarNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGridCliente: TfrGridCliente;

implementation

{$R *.dfm}

procedure TfrGridCliente.btOrdenarCodigoClick(Sender: TObject);
begin
  inherited;
  dtCadastros.tbCadastroCliente.FieldByName('bdCodigo');
end;

procedure TfrGridCliente.btOrdenarNomeClick(Sender: TObject);
begin
  inherited;
  dtCadastros.tbCadastroCliente.FieldByName('bdNome');
end;

end.
