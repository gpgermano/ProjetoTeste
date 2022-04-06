unit uCadastroEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDataModule, uConsulta;

type
  TfrCadastroEmpresa = class(TForm)
    edCodigo: TEdit;
    edEmpresa: TEdit;
    edCnpj: TEdit;
    edEndereco: TEdit;
    lbCodigo: TLabel;
    lbEmpresa: TLabel;
    lbCnpj: TLabel;
    lbEndereco: TLabel;
    ckEstrangeiro: TCheckBox;
    btSalvar: TButton;
    btConsulta: TButton;
    btExcluir: TButton;
    procedure FormShow(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
    wSLCadastro: TStringList;
    procedure pAdicionaSL;
    function fEstrangeiro(prEstrangeiro: Boolean): String;
  public
    { Public declarations }
  end;

var
  frCadastroEmpresa: TfrCadastroEmpresa;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastroEmpresa.FormShow(Sender: TObject);
begin
  dmCadastroEmp.pCriaTabelaCadastro;

  if FileExists(dmCadastroEmp.fDiretorio + '\CadastroPessoa.txt') then
     wSLCadastro.LoadFromFile(dmCadastroEmp.fDiretorio + '\CadastroPessoa.txt');
end;

procedure TfrCadastroEmpresa.btConsultaClick(Sender: TObject);
var
  wConsulta: TfrConsultaEmp;
begin
  wConsulta := TfrConsultaEmp.Create(Self);
  wConsulta.Show;
end;

procedure TfrCadastroEmpresa.pAdicionaSL;
begin
    wSLCadastro.Clear;

  dmCadastroEmp.tbCadastro.First;
  while not dmCadastroEmp.tbCadastro.Eof do
    begin
      wSLCadastro.Add('Código: ' + dmCadastroEmp.tbCadastrobdCodigo.AsString + ' | empresa: ' + dmCadastroEmp.tbCadastrobdEmpresa.AsString
                       + ' | Estrangeiro: ' + fEstrangeiro(dmCadastroEmp.tbCadastrobdEstrangeiro.AsBoolean) + #13);

      dmCadastroEmp.tbCadastro.Next;
    end;
end;

procedure TfrCadastroEmpresa.FormCreate(Sender: TObject);
begin
  wSLCadastro := TStringList.Create;
end;

function TfrCadastroEmpresa.fEstrangeiro(prEstrangeiro: Boolean): String;
begin
  Result := '';
    if prEstrangeiro then
     Result := 'Sim'
    else
     Result := 'Não';
end;

procedure TfrCadastroEmpresa.btSalvarClick(Sender: TObject);
begin

   dmCadastroEmp.tbCadastro.IndexFieldNames := 'bdCodigo';
  if not dmCadastroEmp.tbCadastro.FindKey([edCodigo.Text]) then
     dmCadastroEmp.tbCadastro.Insert
  else
     dmCadastroEmp.tbCadastro.Edit;

  dmCadastroEmp.tbCadastrobdCodigo.AsInteger := StrToInt(edCodigo.Text);
  dmCadastroEmp.tbCadastrobdEmpresa.AsString    := edEmpresa.Text;
  dmCadastroEmp.tbCadastrobdEndereco.AsString := edEndereco.Text;
  dmCadastroEmp.tbCadastrobdCnpj.AsString := edCnpj.Text;
  dmCadastroEmp.tbCadastrobdEstrangeiro.AsBoolean := ckEstrangeiro.Checked;
  dmCadastroEmp.tbCadastro.Post;

  pAdicionaSL;

  wSLCadastro.SaveToFile(dmCadastroEmp.fDiretorio + '\CadastroPessoa.txt');

  ShowMessage('Arquivo salvo!');
  edCodigo.SetFocus;


end;

procedure TfrCadastroEmpresa.edCodigoExit(Sender: TObject);
begin
   dmCadastroEmp.tbCadastro.IndexFieldNames := 'bdCodigo';
  if dmCadastroEmp.tbCadastro.FindKey([edCodigo.Text]) then
     begin
       edEmpresa.Text           := dmCadastroEmp.tbCadastrobdEmpresa.AsString;
       edEndereco.Text       := dmCadastroEmp.tbCadastrobdEndereco.AsString;
       edCnpj.Text           := dmCadastroEmp.tbCadastrobdCnpj.AsString;
       ckEstrangeiro.Checked := dmCadastroEmp.tbCadastrobdEstrangeiro.AsBoolean;
     end
  else
     begin
       edEmpresa.Text           := '';
       edEndereco.Text      := '';
       ckEstrangeiro.Checked := False;
       edCnpj.Text := '';
     end;
end;

procedure TfrCadastroEmpresa.btExcluirClick(Sender: TObject);
begin
  dmCadastroEmp.tbCadastro.IndexFieldNames := 'bdCodigo';
  if dmCadastroEmp.tbCadastro.FindKey([edCodigo.Text]) then
     dmCadastroEmp.tbCadastro.Delete
  else
    begin
       edEmpresa.Text           := '';
       edEndereco.Text      := '';
       ckEstrangeiro.Checked := False;
       edCnpj.Text := '';
     end;
     ShowMessage('Arquivo Deletado!');
     edCodigo.SetFocus;

end;

end.
