unit uGrBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDataModule, uGrPadrao, Grids, DBGrids, StdCtrls;

type
  TfrGrCadastroBanco = class(TfrGrPadrao)
    procedure btOrdenaCodigoClick(Sender: TObject);
    procedure btOrdenaNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGrCadastroBanco: TfrGrCadastroBanco;

implementation

{$R *.dfm}

procedure TfrGrCadastroBanco.btOrdenaCodigoClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroBanco.FieldByName('bdCodigo');
end;

procedure TfrGrCadastroBanco.btOrdenaNomeClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroBanco.FieldByName('bdCodigo');
end;

end.
