unit uCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrCadastroPadrao = class(TForm)
    lbCodigo: TLabel;
    lbNome: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    btSalvar: TButton;
    btExcluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroPadrao: TfrCadastroPadrao;

implementation

{$R *.dfm}

end.
