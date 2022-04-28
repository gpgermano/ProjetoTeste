unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTelaPadrao, StdCtrls, Mask, uClasses, uDataModule, UGrCompra;

type
  TfrCompra = class(TfrPadrao)
    lbValorUnitario: TLabel;
    edValorUnitario: TEdit;
    lbImposto: TLabel;
    edAliquota: TEdit;
    edQuantidade: TEdit;
    lbQuantidade: TLabel;
    procedure btConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodEnter(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edCodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    wCbGenero : String;
  end;

var
  frCompra: TfrCompra;

implementation

uses DB;

{$R *.dfm}

procedure TfrCompra.btConsultarClick(Sender: TObject);
var
  wTela : TfrGrCompra;
begin
  inherited;
  wTela := TfrGrCompra.Create(self);
  wTela.Show;
end;

procedure TfrCompra.FormShow(Sender: TObject);
begin
  inherited;
  dmCompraVenda.pCriarTbCompra;
end;

procedure TfrCompra.btSalvarClick(Sender: TObject);
var
  wCompra : TCompra;
begin
  inherited;
  wCompra := TCompra.Create();
  dmCompraVenda.tbCompra.IndexFieldNames := 'bdCod';
  if dmCompraVenda.tbCompra.FindKey([edCod.Text]) then
     dmCompraVenda.tbCompra.Edit
  else
    dmCompraVenda.tbCompra.Insert;

    dmCompraVenda.tbComprabdcod.AsString       :=  edCod.Text;
    dmCompraVenda.tbComprabdDescricao.AsString :=  edDescricao.Text;
    dmCompraVenda.tbComprabdData.AsString      :=  copy(edData.Text, 7, 4) + copy(edData.Text, 4, 2) + copy(edData.Text, 1, 2);
    dmCompraVenda.tbComprabdTamanho.AsString   := edTamanho.Text;
    dmCompraVenda.tbComprabdGenero.AsInteger   := cbGenero.ItemIndex;
    dmCompraVenda.tbComprabdValorUnitario.AsCurrency   := StrToCurr(edValorUnitario.Text);
    dmCompraVenda.tbComprabdAliquota.AsCurrency := StrToCurr(edAliquota.Text);
    dmCompraVenda.tbComprabdQuantidade.AsInteger := StrToInt(edQuantidade.Text);
    dmCompraVenda.tbCompra.Post;


  if cbGenero.ItemIndex = 0 then
      wcbGenero := 'Masculino'
  else
    wCbGenero := 'Feminino';

  edQuantidade.Text := '';
  edValorUnitario.Text := '';
  edAliquota.Text := '';
  pMesagemLimpaCampos(True, True, 'Salvo');
end;

procedure TfrCompra.edCodExit(Sender: TObject);

begin
  inherited;
  if (edCod.Text = '')  then
  begin
  ShowMessage('Não existe um codigo');
  edCod.SetFocus;
  end;
   dmCompraVenda.tbCompra.IndexFieldNames := 'bdCod';
   if dmCompraVenda.tbCompra.FindKey([edCod.Text]) then
      begin
        edDescricao.Text      := dmCompraVenda.tbComprabdDescricao.AsString;
        edData.Text           := copy(dmCompraVenda.tbComprabdData.AsString, 7, 2) + '/' + copy(dmCompraVenda.tbComprabdData.AsString, 5, 2) +  '/' + copy(dmCompraVenda.tbComprabdData.AsString, 1, 4);
        edTamanho.Text        := dmCompraVenda.tbComprabdTamanho.AsString;
        edValorUnitario.Text  := dmCompraVenda.tbComprabdValorUnitario.AsString;
        cbGenero.ItemIndex    := dmCompraVenda.tbComprabdGenero.AsInteger;
        edAliquota.Text       := dmCompraVenda.tbComprabdAliquota.AsString;
        edQuantidade.Text     := dmCompraVenda.tbComprabdQuantidade.AsString;

        btExcluir.Enabled := True;
      end
   else
    begin
      edQuantidade.Text := '';
      edValorUnitario.Text := '';
      edAliquota.Text := '';
      pMesagemLimpaCampos(False, False);
    end;

end;

procedure TfrCompra.btExcluirClick(Sender: TObject);
begin
  inherited;
  dmCompraVenda.tbCompra.IndexFieldNames := 'bdCod';
   if dmCompraVenda.tbCompra.FindKey([edCod.Text]) then
      dmCompraVenda.tbCompra.Delete
   else
    begin
     edQuantidade.Text := '';
     edValorUnitario.Text := '';
     edAliquota.Text := '';

    pMesagemLimpaCampos(True, True, 'Excluido');
    end;
end;

procedure TfrCompra.edCodEnter(Sender: TObject);
begin
  inherited;
  btExcluir.Enabled := False;

end;

procedure TfrCompra.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8,#9,#13,#27,#127]) then
    begin
      ShowMessage('o Codigo inserido não é um numero inteiro válido');
      Key := #0;
    end;
end;
procedure TfrCompra.edCodClick(Sender: TObject);
begin
  inherited;
  if (edCod.Text = '')  then
  begin
  ShowMessage('Não existe um codigo');
  abort;
  end;
end;

end.
