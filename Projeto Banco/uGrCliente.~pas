unit uGrCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPadrao, Grids, DBGrids, uDataModule, StdCtrls;

type
  TfrGrCliente = class(TfrGrPadrao)
    procedure btOrdenaCodigoClick(Sender: TObject);
    procedure btOrdenaNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGrCliente: TfrGrCliente;

implementation

{$R *.dfm}

procedure TfrGrCliente.btOrdenaCodigoClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroCliente.FieldByName('bdCodigo');
end;

procedure TfrGrCliente.btOrdenaNomeClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroCliente.FieldByName('bdNome');
end;

end.
