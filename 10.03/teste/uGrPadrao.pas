unit uGrPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrGridPadrao = class(TForm)
    grPadrao: TDBGrid;
    btOrdenarCodigo: TButton;
    btOrdenarNome: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGridPadrao: TfrGridPadrao;

implementation

{$R *.dfm}



end.
