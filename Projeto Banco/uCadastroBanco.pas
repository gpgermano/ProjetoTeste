unit uCadastroBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrBanco;

type
  TfrCadastroBanco = class(TfrCadastroPadrao)
    lbCnpj: TLabel;
    lbEndereco: TLabel;
    lbTelefone: TLabel;
    edCnpj: TEdit;
    edEndereco: TEdit;
    edTelefone: TEdit;
    ckEstrangeiro: TCheckBox;
    btConsultar: TButton;
    btVerificar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure btVerificarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
  private
    { Private declarations }
    wStringList : TStringList;
    wCkEstrangeiro : String;
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
   wStringList := TStringList.Create;
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
  wCadastroBanco.wTeleFone := edTelefone.Text;
  wCadastroBanco.wEstrangeiro := ckEstrangeiro.Checked;

  dmDados.tbCadastroBanco.IndexFieldNames := 'bdCodigo';
  if dmDados.tbCadastroBanco.FindKey([edCodigo.Text]) then
     dmDados.tbCadastroBanco.Edit
  else
     dmDados.tbCadastroBanco.Insert;
     
  dmDados.tbCadastroBancobdCodigo.AsString := edCodigo.Text;
  dmDados.tbCadastroBancobdNome.AsString := edNome.Text;
  dmDados.tbCadastroBancobdCnpj.AsString := edCnpj.Text;
  dmDados.tbCadastroBancobdEndereco.AsString := edEndereco.Text;
  dmDados.tbCadastroBancobdTelefone.AsString := edTelefone.Text;
  dmDados.tbCadastroBancobdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dmDados.tbCadastroBanco.Post;

  dmDados.tbCadastroBanco.IndexFieldNames := 'bdCodigo';
  edCodigo.SetFocus;

  dmDados.cdsCadastroBanco.IndexFieldNames := 'bdCodigo';
  if dmDados.cdsCadastroBanco.FindKey([edCodigo.Text]) then
     dmDados.cdsCadastroBanco.Edit
  else
    dmDados.cdsCadastroBanco.Insert;

  dmDados.cdsCadastroBancobdCodigo.AsString := edCodigo.Text;
  dmDados.cdsCadastroBancobdNome.AsString := edNome.Text;
  dmDados.cdsCadastroBancobdCnpj.AsString := edCnpj.Text;
  dmDados.cdsCadastroBancobdEndereco.AsString := edEndereco.Text;
  dmDados.cdsCadastroBancobdTelefone.AsString := edTelefone.Text;
  dmDados.cdsCadastroBancobdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dmDados.cdsCadastroBanco.Post;


end;

procedure TfrCadastroBanco.edCodigoExit(Sender: TObject);
begin
  inherited;
  if dmDados.tbCadastroBanco.FindKey([edCodigo.Text]) then
    begin
      edNome.Text := dmDados.tbCadastroBancobdNome.AsString;
      edCnpj.Text := dmDados.tbCadastroBancobdCnpj.AsString;
      edEndereco.Text := dmDados.tbCadastroBancobdEndereco.AsString;
      edTelefone.Text := dmDados.tbCadastroBancobdTelefone.AsString;
      ckEstrangeiro.Checked := dmDados.tbCadastroBancobdEstrangeiro.AsBoolean;
    end
      else
        begin
          edNome.Text := '';
          edCnpj.Text := '';
          edEndereco.Text := '';
          edTelefone.Text := '';
          ckEstrangeiro.Checked := False;
        end;
end;

procedure TfrCadastroBanco.btConsultarClick(Sender: TObject);
var
  wTela : TfrGrCadastroBanco;
begin
  inherited;
  wTela := TfrGrCadastroBanco.Create(self);
  wTela.Show;
end;

procedure TfrCadastroBanco.btVerificarClick(Sender: TObject);
var
  wContador : Integer;
  wTexto : String;
begin
  inherited;
   if ckEstrangeiro.Checked then
      wCkEstrangeiro := 'Sim'
   else
      wCkEstrangeiro := 'Não';

   wStringList.Add('Codigo: ' + edCodigo.Text + '| Nome: ' + edNome.Text +
                   '| Cnpj: ' + edCnpj.Text + '| Endereço: ' + edEndereco.Text +
                   '| Telefone: ' + edTelefone.Text + '| Estrangeiro: ' + wCkEstrangeiro);

   for wContador := 0 to wStringList.Count-1 do
       wTexto := wTexto + #13 + wStringList[wContador];

   ShowMessage(wTexto)
end;

procedure TfrCadastroBanco.btExcluirClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroBanco.IndexFieldNames := 'bdcodigo';
  if dmDados.tbCadastroBanco.FindKey([edCodigo.Text]) then
     dmDados.tbCadastroBanco.Delete;
end;

procedure TfrCadastroBanco.edCodigoEnter(Sender: TObject);
begin
  inherited;
  btExcluir.Enabled := False;
end;

end.
