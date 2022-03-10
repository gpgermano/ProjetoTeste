unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrCliente;

type
  TfrCadastroCliente = class(TfrCadastroPadrao)
    lbSexo: TLabel;
    cbSexo: TComboBox;
    ckEstrangeiro: TCheckBox;
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
  frCadastroCliente: TfrCadastroCliente;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastroCliente.btSalvarClick(Sender: TObject);
var
  wClienteCadastro : TCliente;
begin
  inherited;
  wClienteCadastro := TCliente.Create;

  wClienteCadastro.wCodigo := edCodigo.Text;
  wClienteCadastro.wNome := edNome.Text;
  wClienteCadastro.wSexoCliente := cbSexo.ItemIndex;
  wClienteCadastro.wEstrangeiro := ckEstrangeiro.Checked;

  dtCadastros.tbCadastroCliente.Insert;
  dtCadastros.tbCadastroClientebdCodigo.AsString := edCodigo.Text;
  dtCadastros.tbCadastroClientebdNome.AsString := edNome.Text;
  dtCadastros.tbCadastroClientebdSexo.AsInteger := cbSexo.ItemIndex;
  dtCadastros.tbCadastroClientebdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dtCadastros.tbCadastroCliente.Post;

  edNome.Text := '';
  cbSexo.ItemIndex := -1;
  ckEstrangeiro.Checked := False;
  edCodigo.SetFocus;
end;

procedure TfrCadastroCliente.btConsultarClick(Sender: TObject);
var
  wTela : TfrGridCliente;
begin
  inherited;
  wTela := TfrGridCliente.Create(self);
  wTela.Show;

end;

procedure TfrCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
   dtCadastros.pCriarTbCliente;
end;

procedure TfrCadastroCliente.edCodigoExit(Sender: TObject);
begin
  inherited;
     if dtCadastros.tbCadastroCliente.FindKey([edCodigo.Text]) then
    begin
      edNome.Text := dtCadastros.tbCadastroClientebdNome.AsString;
      cbSexo.ItemIndex := dtCadastros.tbCadastroClientebdSexo.AsInteger;
      ckEstrangeiro.Checked  := dtCadastros.tbCadastroClientebdEstrangeiro.AsBoolean;
    end
    else
      begin
        edNome.Text := '';
        cbSexo.ItemIndex := -1;
        ckEstrangeiro.Checked := False;
      end;
end;

end.
