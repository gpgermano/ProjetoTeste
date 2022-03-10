unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCadastroCliente, uCadastroMoto;

type
  TfrPrincipal = class(TForm)
    btCadastroCliente: TButton;
    btCadastroMoto: TButton;
    procedure btCadastroClienteClick(Sender: TObject);
    procedure btCadastroMotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroClienteClick(Sender: TObject);
var
  wTela : TfrCadastroCliente;
begin
  wTela := TfrCadastroCliente.Create(self);
  wTela.Show;
end;

procedure TfrPrincipal.btCadastroMotoClick(Sender: TObject);
var
  wTela :  TfrCadastroMoto;
begin
  wTela := TfrCadastroMoto.Create(self);
  wTela.Show;
end;

end.
