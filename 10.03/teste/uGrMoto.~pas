unit uGrMoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPadrao, StdCtrls, Grids, DBGrids, uClasses, uDataModule;

type
  TfrGridMoto = class(TfrGridPadrao)
    procedure btOrdenarCodigoClick(Sender: TObject);
    procedure btOrdenarNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGridMoto: TfrGridMoto;

implementation

{$R *.dfm}

procedure TfrGridMoto.btOrdenarCodigoClick(Sender: TObject);
begin
  inherited;
  dtCadastros.tbCadastroMoto.FieldByName('bdCodigo');
end;

procedure TfrGridMoto.btOrdenarNomeClick(Sender: TObject);
begin
  inherited;
  dtCadastros.tbCadastroMoto.FieldByName('bdNome');
end;

end.
