unit uVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTelaPadrao, StdCtrls, Mask, uClasses, uDataModule, uGrVenda;

type
  TfrVenda = class(TfrPadrao)
    lbValorUnitario: TLabel;
    edValorUnitario: TEdit;
    edValorTotal: TEdit;
    lbValorTotal: TLabel;
    lbQuantidade: TLabel;
    edQtd: TEdit;
    edAliquota: TEdit;
    lbAliquota: TLabel;
    cbCodCompra: TComboBox;
    lbCodigoCompra: TLabel;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);                    
    procedure edCodEnter(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edCodClick(Sender: TObject);
    procedure cbCodCompraExit(Sender: TObject);
    procedure edQtdExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frVenda: TfrVenda;

implementation

uses DB;

{$R *.dfm}

procedure TfrVenda.btSalvarClick(Sender: TObject);
begin
  inherited;
  dmCompraVenda.tbVenda.IndexFieldNames := 'bdCod';
  if dmCompraVenda.tbVenda.FindKey([edCod.Text]) then
     dmCompraVenda.tbVenda.Edit
  else
    dmCompraVenda.tbVenda.Insert;

    dmCompraVenda.tbVendabdCod.AsString        :=  edCod.Text;
    dmCompraVenda.tbVendabdDescricao.AsString  :=  edDescricao.Text;
    dmCompraVenda.tbVendabdData.AsString       :=  edData.Text;
    dmCompraVenda.tbVendabdTamanho.AsString    := edTamanho.Text;
    dmCompraVenda.tbVendabdgenero.AsInteger   := cbGenero.ItemIndex;
    dmCompraVenda.tbVendabdValorUnitario.AsCurrency := StrToCurr(edValorUnitario.Text);
    dmCompraVenda.tbVendabdValorTotal.AsCurrency := StrToCurr(edValorTotal.Text);
    dmCompraVenda.tbVendabdAliquota.AsCurrency  := StrToCurr(edAliquota.Text);
    dmCompraVenda.tbVendabdQuantidade.AsInteger := StrToInt(edQtd.Text);
    dmCompraVenda.tbVenda.Post;

  edQtd.Text := '';
  pMesagemLimpaCampos(True, True, 'Salvo');
end;

procedure TfrVenda.btConsultarClick(Sender: TObject);
var
  wTelas : TfrGrVEnda;
begin
  inherited;
  wTelas := TfrGrVEnda.Create(self);
  wTelas.Show;
end;

procedure TfrVenda.FormShow(Sender: TObject);
begin
  inherited;
  dmCompraVenda.pCriarTbCVemda;
  dmCompraVenda.pCriarTbCompra;

  dmCompraVenda.tbCompra.First;
  while not dmCompraVenda.tbCompra.Eof do
    begin
      cbCodCompra.Items.Add(dmCompraVenda.tbComprabdcod.AsString + ' - '+ dmCompraVenda.tbComprabdDescricao.AsString);
      dmCompraVenda.tbCompra.Next;
    end;
end;

procedure TfrVenda.edCodExit(Sender: TObject);
begin
  inherited;
  if (edCod.Text = '')  then
  begin
  ShowMessage('Não existe um codigo');
  edCod.SetFocus;
  abort;
  end;
   if dmCompraVenda.tbCompra.FindKey([edCod.Text]) then
      begin
        {edDescricao.Text    := dmCompraVenda.tbComprabdDescricao.AsString;
        edData.Text         := copy(dmCompraVenda.tbComprabdData.AsString, 7, 2) + '/'
                              + copy(dmCompraVenda.tbComprabdData.AsString, 5, 2)
                        +  '/' + copy(dmCompraVenda.tbComprabdData.AsString, 1, 4);
        edTamanho.Text      := dmCompraVenda.tbComprabdTamanho.AsString;
        cbGenero.ItemIndex  := dmCompraVenda.tbComprabdgenero.AsInteger;
        edValorUnitario.Text := dmCompraVenda.tbComprabdValorUnitario.AsString;
        edAliquota.Text      := dmCompraVenda.tbComprabdAliquota.AsString;}
       end

   else
    begin
      pMesagemLimpaCampos(False, False);
    end;
    edValorTotal.Text    := '';
    edValorUnitario.Enabled := False;
    edAliquota.Enabled := False;
end;

procedure TfrVenda.btExcluirClick(Sender: TObject);
begin
  inherited;
  dmCompraVenda.tbVenda.IndexFieldNames := 'bdCod';
   if dmCompraVenda.tbVenda.FindKey([edCod.Text]) then
      dmCompraVenda.tbVenda.Delete

   else
    begin
    edValorTotal.Text    := '';
    edQtd.Text := '';
    pMesagemLimpaCampos(True, True, 'Excluido');
    end;
end;

procedure TfrVenda.edCodEnter(Sender: TObject);
begin
  inherited;
  btExcluir.Enabled := False;
end;

procedure TfrVenda.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not (key in ['0'..'9',#8,#9,#13,#27,#127]) then
    begin
      ShowMessage('o Codigo inserido não é um numero inteiro válido');
      Key := #0;
    end;
end;

procedure TfrVenda.edCodClick(Sender: TObject);
begin
  inherited;
  if (edCod.Text = '')  then
  begin
  ShowMessage('Não existe um codigo');
  edCod.SetFocus;
  abort;
  end;
end;



procedure TfrVenda.cbCodCompraExit(Sender: TObject);
var
  wCompraCod : String;
begin
  inherited;
  wCompraCod := Copy(cbCodCompra.Text, 1,1);
  dmCompraVenda.tbCompra.IndexFieldNames := 'bdCod';

  if dmCompraVenda.tbCompra.FindKey([wCompraCod]) then
    begin
     edDescricao.Text := dmCompraVenda.tbComprabdDescricao.AsString;
     edTamanho.Text  := dmCompraVenda.tbComprabdTamanho.AsString;
     edData.Text     := copy(dmCompraVenda.tbComprabdData.AsString, 7, 2) + '/'
                              + copy(dmCompraVenda.tbComprabdData.AsString, 5, 2)
                        +  '/' + copy(dmCompraVenda.tbComprabdData.AsString, 1, 4);
     cbGenero.ItemIndex := dmCompraVenda.tbComprabdGenero.AsInteger;
     edValorUnitario.Text := dmCompraVenda.tbComprabdValorUnitario.AsString;
     edAliquota.Text       := dmCompraVenda.tbComprabdAliquota.AsString;
     edQtd.Text           := dmCompraVenda.tbComprabdQuantidade.AsString;
    end
end;

procedure TfrVenda.edQtdExit(Sender: TObject);
begin
  inherited;
    if edValorUnitario.Text = '' then
    begin
       edValorUnitario.Text := '1';
    end;

    edValorTotal.Text := CurrToStr(StrToCurr(edValorUnitario.Text) * StrToInt(edQtd.Text));
    edAliquota.Text := CurrToStr((dmCompraVenda.tbComprabdAliquota.AsCurrency/100) * StrToCurr(edValorTotal.Text));
end;
end.


