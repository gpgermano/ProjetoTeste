unit uCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDataModule, uConsultaCadastro;

type
  TfrCadastro = class(TForm)
    lbcodigo: TLabel;
    edCodigo: TEdit;
    lbNome: TLabel;
    edNome: TEdit;
    cbSexo: TComboBox;
    ckEstrangeiro: TCheckBox;
    lbSexo: TLabel;
    btAdicionar: TButton;
    btSalvar: TButton;
    btConsultar: TButton;
    btMensagem: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btMensagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
    wSLCadastro: TStringList;

    function fSexo(prCodigo: Integer): String;
    function fEstrangeiro(prEstrangeiro: Boolean): String;
    procedure pAdicionaSL;
  public
    { Public declarations }
  end;                                     

var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

procedure TfrCadastro.FormCreate(Sender: TObject);
begin
  wSLCadastro := TStringList.Create;
end;

procedure TfrCadastro.btAdicionarClick(Sender: TObject);
begin
  dmTabelas.tbCadastro.IndexFieldNames := 'bdCODIGO';
  if not dmTabelas.tbCadastro.FindKey([edCodigo.Text]) then
     dmTabelas.tbCadastro.Insert
  else
     dmTabelas.tbCadastro.Edit;

  dmTabelas.tbCadastrobdCODIGO.AsInteger := StrToInt(edCodigo.Text);
  dmTabelas.tbCadastrobdNOME.AsString    := edNome.Text;
  dmTabelas.tbCadastrobdSEXO.AsInteger   := cbSexo.ItemIndex;
  dmTabelas.tbCadastrobdESTRANGEIRO.AsBoolean := ckEstrangeiro.Checked;
  dmTabelas.tbCadastro.Post;

  edCodigo.SetFocus;
end;

function TfrCadastro.fEstrangeiro(prEstrangeiro: Boolean): String;
begin
  Result := '';
  if prEstrangeiro then
     Result := 'Sim'
  else
     Result := 'N?o';
end;

function TfrCadastro.fSexo(prCodigo: Integer): String;
begin
  Result := '';
  if prCodigo = 0 then
     Result := 'Feminino'
  else
     Result := 'Masculino';
end;

procedure TfrCadastro.btSalvarClick(Sender: TObject);
begin
  pAdicionaSL;

  wSLCadastro.SaveToFile(dmTabelas.fDiretorio + '\CadastroPessoa.txt');

  ShowMessage('Arquivo salvo!');
  edCodigo.SetFocus;
end;

procedure TfrCadastro.btMensagemClick(Sender: TObject);
var
  wCount: Integer;
  wTexto: String;
begin
  pAdicionaSL;
  wTexto := '';

  for wCount := 0 to wSLCadastro.Count -1 do
    wTexto := wTexto + wSLCadastro[wCount];

  ShowMessage(wTexto);
  edCodigo.SetFocus;
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  dmTabelas.pCriaTabelaCadastro;
end;

procedure TfrCadastro.btConsultarClick(Sender: TObject);
var
  wConsulta: TfrConsulta;
begin
  wConsulta := TfrConsulta.Create(Self);
  wConsulta.Show;
end;

procedure TfrCadastro.edCodigoExit(Sender: TObject);
begin
  dmTabelas.tbCadastro.IndexFieldNames := 'bdCODIGO';
  if dmTabelas.tbCadastro.FindKey([edCodigo.Text]) then
     begin
       edNome.Text           := dmTabelas.tbCadastrobdNOME.AsString;
       cbSexo.ItemIndex      := dmTabelas.tbCadastrobdSEXO.AsInteger;
       ckEstrangeiro.Checked := dmTabelas.tbCadastrobdESTRANGEIRO.AsBoolean;
     end
  else
     begin
       edNome.Text           := '';
       cbSexo.ItemIndex      := 0;
       ckEstrangeiro.Checked := False;
     end;
end;

procedure TfrCadastro.pAdicionaSL;
begin
  wSLCadastro.Clear;

  dmTabelas.tbCadastro.First;
  while not dmTabelas.tbCadastro.Eof do
    begin
      wSLCadastro.Add('C?digo: ' + dmTabelas.tbCadastrobdCODIGO.AsString + ' | Nome: ' + dmTabelas.tbCadastrobdNOME.AsString + ' | Sexo: ' +
                      fSexo(dmTabelas.tbCadastrobdSEXO.AsInteger) + ' | Estrangeiro: ' + fEstrangeiro(dmTabelas.tbCadastrobdESTRANGEIRO.AsBoolean) + #13);

      dmTabelas.tbCadastro.Next;
    end;
end;

end.
