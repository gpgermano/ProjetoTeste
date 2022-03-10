unit uCadastroMoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uGrMoto, uClasses, uDataModule;

type
  TfrCadastroMoto = class(TfrCadastroPadrao)
    lbMarca: TLabel;
    lbAno: TLabel;
    edMarca: TEdit;
    edAno: TEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroMoto: TfrCadastroMoto;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastroMoto.btSalvarClick(Sender: TObject);
  var
    wCadastroMoto : TMoto;
begin
  inherited;
   wCadastroMoto := TMoto.Create;

  wCadastroMoto.wCodigo := edCodigo.Text;
  wCadastroMoto.wNome := edNome.Text;
  wCadastroMoto.wMarcaMoto := edMarca.Text;
  wCadastroMoto.wAnoMoto := edAno.Text;

  dtCadastros.pCriartbMoto;

  dtCadastros.tbCadastroMoto.Insert;
  dtCadastros.tbCadastroMotobdCodigo.AsString := edCodigo.Text;
  dtCadastros.tbCadastroMotobdNome.AsString := edNome.Text;
  dtCadastros.tbCadastroMotobdMarca.AsString := edMarca.Text;
  dtCadastros.tbCadastroMotobdAno.AsString := edAno.Text;
  dtCadastros.tbCadastroMoto.Post;

  edNome.Text := '';
  edMarca.Text := '';
  edAno.Text := '';
  edCodigo.SetFocus;
end;

procedure TfrCadastroMoto.btConsultarClick(Sender: TObject);
var
  wTela : TfrGridMoto;
begin
  inherited;
  wTela := TfrGridMoto.Create(self);
  wTela.Show;
end;

procedure TfrCadastroMoto.FormCreate(Sender: TObject);
begin
  inherited;
   dtCadastros.pCriartbMoto;
end;

procedure TfrCadastroMoto.edCodigoExit(Sender: TObject);
begin
  inherited;
  if dtCadastros.tbCadastroMoto.FindKey([edCodigo.Text]) then
    begin
      edNome.Text := dtCadastros.tbCadastroMotobdNome.AsString;
      edMarca.Text := dtCadastros.tbCadastroMotobdMarca.AsString;
      edAno.Text := dtCadastros.tbCadastroMotobdAno.AsString;
    end
      else
        begin
          edNome.Text := '';
          edMarca.Text := '';
          edAno.Text := '';
        end;
end;

end.
