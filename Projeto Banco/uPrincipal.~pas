unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCadastroCliente, uCadastroBanco;

type
  TfrPrincipal = class(TForm)
    btCadastroCliente: TButton;
    btCadastroBanco: TButton;
    procedure btCadastroClienteClick(Sender: TObject);
    procedure btCadastroBancoClick(Sender: TObject);
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

procedure TfrPrincipal.btCadastroBancoClick(Sender: TObject);
var
  wTela : TfrCadastroBanco;
begin
  wTela := TfrCadastroBanco.Create(self);
  wTela.Show;

end;

end.
