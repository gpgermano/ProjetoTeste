unit uCadastroBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrBanco;

type
  TfrCadastroBanco = class(TfrCadastroPadrao)
    lbCnpjj: TLabel;
    lbEndereco: TLabel;
    lbTelefone: TLabel;
    edCnpj: TEdit;
    edEndereco: TEdit;
    edTelefone: TEdit;
    ckEstrangeiro: TCheckBox;
    btConsultar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroBanco: TfrCadastroBanco;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastroBanco.FormCreate(Sender: TObject);
begin
  inherited;
   dmDados.pCriarTabelaBanco;
   dmDados.pCriarCdsBanco;
end;

procedure TfrCadastroBanco.btSalvarClick(Sender: TObject);
var
  wCadastroBanco :  TBanco;
begin
  inherited;
  wCadastroBanco := TBanco.Create;

  wCadastroBanco.wCodigo := edCodigo.Text;
  wCadastroBanco.wNome := edNome.Text;
  wCadastroBanco.wCnpj := edCnpj.Text;
  wCadastroBanco.wEndereco := edEndereco.Text;
  wCadastroBanco.wTeleFone := StrToCurr(edTelefone.Text);
  wCadastroBanco.wEstrangeiro := ckEstrangeiro.Checked;

  dmDados.tbCadastroBanco.Insert;
  dmDados.tbCadastroBancobdCodigo.AsString := edCodigo.Text;
  dmDados.tbCadastroBancobdNome.AsString := edNome.Text;
  dmDados.tbCadastroBancobdCnpj.AsString := edCnpj.Text;
  dmDados.tbCadastroBancobdEndereco.AsString := edEndereco.Text;
  dmDados.tbCadastroBancobdTelefone.AsCurrency := StrToCurr(edTelefone.Text);
  dmDados.tbCadastroBancobdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dmDados.tbCadastroBanco.Post;

  dmDados.tbCadastroBanco.IndexFieldNames := 'bdCodigo';
  edCodigo.SetFocus;

  dmDados.cdsCadastroBanco.FieldByName('bdCodigo');
  if dmDados.cdsCadastroBanco.FindKey([edCodigo.Text]) then
     dmDados.cdsCadastroBanco.Edit;


  dmDados.cdsCadastroBanco.Insert;
  dmDados.cdsCadastroBancobdCodigo.AsString := edCodigo.Text;
  dmDados.cdsCadastroBancobdNome.AsString := edNome.Text;
  dmDados.cdsCadastroBancobdCnpj.AsString := edCnpj.Text;
  dmDados.cdsCadastroBancobdEndereco.AsString := edEndereco.Text;
  dmDados.cdsCadastroBancobdTelefone.AsCurrency := StrToCurr(edTelefone.Text);
  dmDados.cdsCadastroBancobdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dmDados.cdsCadastroBanco.Post;


end;

procedure TfrCadastroBanco.edCodigoExit(Sender: TObject);
begin
  inherited;
  if dmDados.tbCadastroBanco.FindKey([edCodigo]) then
    begin
      edNome.Text := dmDados.tbCadastroBancobdNome.AsString;
      edCnpj.Text := dmDados.tbCadastroBancobdCnpj.AsString;
      edEndereco.Text := dmDados.tbCadastroBancobdEndereco.AsString;
      StrToCurr(edTelefone.Text) := dmDados.tbCadastroBancobdTelefone.AsCurrency;
      ckEstrangeiro.Checked := dmDados.tbCadastroBancobdEstrangeiro.AsBoolean;
    end
      else
        begin
          edNome.Text := '';
          edCnpj.Text := '';
          edEndereco.Text := '';
          StrToCurr(edTelefone.Text) := '';
          ckEstrangeiro.Checked := False;
        end;
end;

procedure TfrCadastroBanco.btConsultarClick(Sender: TObject);
var
  wTela : TfrGrCadastroBanco
begin
  inherited;
  wTela := TfrGrCadastroBanco.Create(self);
  wTela.Show;
end;

end.
