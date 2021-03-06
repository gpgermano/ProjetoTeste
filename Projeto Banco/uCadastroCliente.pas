unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrCliente;

type
  TfrCadastroCliente = class(TfrCadastroPadrao)
    edCpf: TEdit;
    edEndereco: TEdit;
    edTelefone: TEdit;
    cbSexo: TComboBox;
    ckTrabalha: TCheckBox;
    lbCpf: TLabel;
    lbEndereco: TLabel;
    lbTelefone: TLabel;
    lbSexo: TLabel;
    btConsultar: TButton;
    lbValorDoEmprestimo: TLabel;
    edValorDoEmprestimo: TEdit;
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
    wcbSexo: String;
    wckTrabalha: String;
  public
    { Public declarations }
  end;

var
  frCadastroCliente: TfrCadastroCliente;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dmDados.pCriarTabelaCliente;
  dmDados.pCriarCdsCliente;
  wStringList := TStringList.Create;
  
end;

procedure TfrCadastroCliente.btSalvarClick(Sender: TObject);
var
  wCadastroCliente: TCliente;
begin
  inherited;
  wCadastroCliente := TCliente.Create;

  wCadastroCliente.wCodigo := edCodigo.Text;
  wCadastroCliente.wNome := edNome.Text;
  wCadastroCliente.wCpfCliente := edCpf.Text;
  wCadastroCliente.wEenderecoCliente := edEndereco.Text;
  wCadastroCliente.wSexoCliente := cbSexo.ItemIndex;
  wCadastroCliente.wEmprestimo := StrToCurr(edValorDoEmprestimo.Text);

  dmDados.tbCadastroCliente.IndexFieldNames := 'bdCodigo';
  if dmDados.tbCadastroCliente.FindKey([edCodigo.Text]) then
     dmDados.tbCadastroCliente.Edit
  else
     dmDados.tbCadastroCliente.Insert;

  dmDados.tbCadastroClientebdCodigo.AsString := edCodigo.Text;
  dmDados.tbCadastroClientebdNome.AsString := edNome.Text;
  dmDados.tbCadastroClientebdCpf.AsString := edCpf.Text;
  dmDados.tbCadastroClientebdEndereco.AsString := edEndereco.Text;
  dmDados.tbCadastroClientebdSexo.AsInteger := cbSexo.ItemIndex;
  dmDados.tbCadastroClientebdEmprestimo.AsCurrency := StrToCurr(edValorDoEmprestimo.Text);
  dmDados.tbCadastroClientebdTrabalha.AsBoolean := ckTrabalha.Checked;
  dmDados.tbCadastroCliente.Post;

  dmDados.tbCadastroCliente.IndexFieldNames := 'bdCodigo';
  edCodigo.SetFocus;

  dmDados.cdsCadastroCliente.IndexFieldNames := 'bdCodigo';
  if dmDados.cdsCadastroCliente.FindKey([edCodigo.Text]) then
     dmDados.cdsCadastroCliente.Edit
  else
    dmDados.cdsCadastroCliente.Insert;
    
  dmDados.cdsCadastroClientebdCodigo.AsString := edCodigo.Text;
  dmDados.cdsCadastroClientebdNome.AsString := edNome.Text;
  dmDados.cdsCadastroClientebdCpf.AsString := edCpf.Text;
  dmDados.cdsCadastroClientebdEndereco.AsString := edEndereco.Text;
  dmDados.cdsCadastroClientebdSexo.AsInteger := cbSexo.ItemIndex;
  dmDados.cdsCadastroClientebdTrabalhaAtl.AsBoolean := ckTrabalha.Checked;
  dmDados.cdsCadastroClientebdEmprestimo.AsCurrency := StrToCurr(edValorDoEmprestimo.Text);
  dmDados.cdsCadastroCliente.Post;
end;

procedure TfrCadastroCliente.edCodigoExit(Sender: TObject);
begin
  inherited;
  if dmDados.tbCadastroCliente.FindKey([edCodigo.Text]) then
  begin
    edNome.Text := dmDados.tbCadastroClientebdNome.AsString;
    edCpf.Text := dmDados.tbCadastroClientebdCpf.AsString;
    edEndereco.Text := dmDados.tbCadastroClientebdEndereco.AsString;
    edTelefone.Text := dmDados.tbCadastroClientebdTelefone.AsString;
    cbSexo.ItemIndex := dmDados.tbCadastroClientebdSexo.AsInteger;
    edValorDoEmprestimo.Text := dmDados.tbCadastroClientebdEmprestimo.AsString;
  end
    else
      begin
        edNome.Text := '';
        edCpf.Text := '';
        edEndereco.Text := '';
        edTelefone.Text := '';
        cbSexo.ItemIndex := -1;
        edValorDoEmprestimo.Text := '';
        ckTrabalha.Checked := False;
      end;
end;

procedure TfrCadastroCliente.btConsultarClick(Sender: TObject);
var
  wTela : TfrGrCliente;
begin
  inherited;
  wTela := TfrGrCliente.Create(self);
  wTela.Show;
end;

procedure TfrCadastroCliente.btVerificarClick(Sender: TObject);
var
  wContador : Integer;
  wTexto : String;
begin
  inherited;
  if cbSexo.ItemIndex = 0 then
     wcbSexo := 'Masculino'
  else
     wcbSexo := 'Feminino';

  if ckTrabalha.Checked then
     wckTrabalha := 'Sim'
  else
     wckTrabalha := 'N?o';

  wStringList.Add('| Codigo:' + edCodigo.Text + '| Nome:' + edNome.Text + '| Cpf: ' +
                  edCpf.Text + '| Endere?o: ' + edEndereco.Text + '| Telefone: ' + edTelefone.Text +
                  '| Sexo:' + wcbSexo + '|Emprestimo: ' + edValorDoEmprestimo.Text + '| Trabalha: ' + wckTrabalha);

  for wContador := 0 to wStringList.Count-1 do
      wTexto := wTexto + #13 + wStringList[wContador];

  ShowMessage(wTexto);
end;

procedure TfrCadastroCliente.btExcluirClick(Sender: TObject);
begin
  inherited;
  dmDados.tbCadastroCliente.IndexFieldNames := 'bdCodigo';
  if dmDados.tbCadastroCliente.FindKey([edCodigo.Text]) then
     dmDados.tbCadastroCliente.Delete;
end;

procedure TfrCadastroCliente.edCodigoEnter(Sender: TObject);
begin
  inherited;
  btExcluir.Enabled := False;
end;

end.
