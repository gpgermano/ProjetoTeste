unit uCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDataModule, uConsultaEmpresas, Mask;

type
  TfrCadastro = class(TForm)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbCNPJ: TLabel;
    lbRazaoSocial: TLabel;
    edRazaoSocial: TEdit;
    lbNomeFantasia: TLabel;
    edNomeFantasia: TEdit;
    lbCEP: TLabel;
    edCEP: TEdit;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    lbNumero: TLabel;
    edNumero: TEdit;
    edBairro: TEdit;
    lbBairro: TLabel;
    lbComplemento: TLabel;
    edComplemento: TEdit;
    lbCidade: TLabel;
    edCidade: TEdit;
    lbInscricaoEstadual: TLabel;
    edInscricaoEstadual: TEdit;
    lbCNAE: TLabel;
    lbTributacao: TLabel;
    lbEmail: TLabel;
    edEmail: TEdit;
    cbEstado: TComboBox;
    cbCNAE: TComboBox;
    cbTributacao: TComboBox;
    lbTelefone: TLabel;
    edInicioAtivi: TEdit;
    lbInicioAti: TLabel;
    btSalvar: TButton;
    btConsultar: TButton;
    btExcluir: TButton;
    edTelefone: TMaskEdit;
    edcnpj: TMaskEdit;
    procedure edCodigoExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
    procedure pMesagemLimpaCampos(prFoco, prApresentar: Boolean; prMensagem: String = '');
  public
    { Public declarations }
  end;

var
  frCadastro: TfrCadastro;

implementation

uses DB;

{$R *.dfm}

procedure TfrCadastro.edCodigoExit(Sender: TObject);
begin
  dmTabelas.tbEmpresas.IndexFieldNames := 'bdCodigo';
  if dmTabelas.tbEmpresas.FindKey([edCodigo.Text]) then
     begin
       edCNPJ.Text              := dmTabelas.tbEmpresasbdCnpj.AsString;
       edRazaoSocial.Text       := dmTabelas.tbEmpresasbdRazaoSocial.AsString;
       edNomeFantasia.Text      := dmTabelas.tbEmpresasbdNomeFantasia.AsString;
       edTelefone.Text          := dmTabelas.tbEmpresasbdTelefone.AsString;
       edCEP.Text               := dmTabelas.tbEmpresasbdCep.AsString;
       edEndereco.Text          := dmTabelas.tbEmpresasbdEndereco.AsString;
       edNumero.Text            := dmTabelas.tbEmpresasbdNumero.AsString;
       edBairro.Text            := dmTabelas.tbEmpresasbdBairro.AsString;
       edComplemento.Text       := dmTabelas.tbEmpresasbdComplemento.AsString;
       cbEstado.ItemIndex       := dmTabelas.tbEmpresasbdEstado.AsInteger;
       edCidade.Text            := dmTabelas.tbEmpresasbdCidade.AsString;
       edInscricaoEstadual.Text := dmTabelas.tbEmpresasbdInsEstadual.AsString;
       cbCNAE.ItemIndex         := dmTabelas.tbEmpresasbdCnae.AsInteger;
       edInicioAtivi.Text       := dmTabelas.tbEmpresasbdInicioAtivi.AsString;
       cbTributacao.ItemIndex   := dmTabelas.tbEmpresasbdTributacao.AsInteger;
       edEmail.Text             := dmTabelas.tbEmpresasbdEmail.AsString;

       btExcluir.Enabled := True;
     end
  else
     begin
       pMesagemLimpaCampos(False, False);
     end
end;

procedure TfrCadastro.btSalvarClick(Sender: TObject);
begin
  dmTabelas.tbEmpresas.IndexFieldNames := 'bdCodigo';
  if dmTabelas.tbEmpresas.FindKey([edCodigo.Text]) then
     dmTabelas.tbEmpresas.Edit
  else
     dmTabelas.tbEmpresas.Insert;

  dmTabelas.tbEmpresasbdCodigo.AsString      := edCodigo.Text;
  dmTabelas.tbEmpresasbdCnpj.AsString        := edCNPJ.Text;
  dmTabelas.tbEmpresasbdRazaoSocial.AsString := edRazaoSocial.Text;
  dmTabelas.tbEmpresasbdNomeFantasia.AsString:= edNomeFantasia.Text;
  dmTabelas.tbEmpresasbdTelefone.AsString    := edTelefone.Text;
  dmTabelas.tbEmpresasbdCep.AsString         := edCEP.Text;
  dmTabelas.tbEmpresasbdEndereco.AsString    := edEndereco.Text;
  dmTabelas.tbEmpresasbdNumero.AsString      := edNumero.Text;
  dmTabelas.tbEmpresasbdBairro.AsString      := edBairro.Text;
  dmTabelas.tbEmpresasbdComplemento.AsString := edComplemento.Text;
  dmTabelas.tbEmpresasbdEstado.AsInteger     := cbEstado.ItemIndex;
  dmTabelas.tbEmpresasbdCidade.AsString      := edCidade.Text;
  dmTabelas.tbEmpresasbdInsEstadual.AsString := edInscricaoEstadual.Text;
  dmTabelas.tbEmpresasbdCnae.AsInteger       := cbCNAE.ItemIndex;
  dmTabelas.tbEmpresasbdInicioAtivi.AsString := edInicioAtivi.Text;
  dmTabelas.tbEmpresasbdTributacao.AsInteger := cbTributacao.ItemIndex;
  dmTabelas.tbEmpresasbdEmail.AsString       := edEmail.Text;
  dmTabelas.tbEmpresas.Post;

  pMesagemLimpaCampos(True, True, 'Salvo');
end;

procedure TfrCadastro.pMesagemLimpaCampos(prFoco, prApresentar: Boolean; prMensagem: String = '');
begin
  if prApresentar then
     ShowMessage(prMensagem + ' com sucesso!');

  edCNPJ.Text              := '';
  edRazaoSocial.Text       := '';
  edNomeFantasia.Text      := '';
  edTelefone.Text          := '';
  edCEP.Text               := '';
  edEndereco.Text          := '';
  edNumero.Text            := '';
  edBairro.Text            := '';
  edComplemento.Text       := '';
  cbEstado.ItemIndex       := 0;
  edCidade.Text            := '';
  edInscricaoEstadual.Text := '';
  cbCNAE.ItemIndex         := 0;
  edInicioAtivi.Text       := '';
  cbTributacao.ItemIndex   := 0;
  edEmail.Text             := '';

  if prFoco then
     edCodigo.SetFocus;
end;

procedure TfrCadastro.btExcluirClick(Sender: TObject);
begin
  dmTabelas.tbEmpresas.IndexFieldNames := 'bdCodigo';
  if dmTabelas.tbEmpresas.FindKey([edCodigo.Text]) then
     dmTabelas.tbEmpresas.Delete;

  pMesagemLimpaCampos(True, True, 'Excluído');
end;

procedure TfrCadastro.edCodigoEnter(Sender: TObject);
begin
  btExcluir.Enabled := False;
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  dmTabelas.pAbreTabelaEmpresas;
end;

procedure TfrCadastro.btConsultarClick(Sender: TObject);
var
  wConsulta: TfrConsultaEmpresas;
begin
  wConsulta := TfrConsultaEmpresas.Create(Self);
  wConsulta.Show;
end;

end.

