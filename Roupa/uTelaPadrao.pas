unit uTelaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrPadrao = class(TForm)
    lbcod: TLabel;
    lbDescricao: TLabel;
    lbData: TLabel;
    lbTamanho: TLabel;
    lbGenero: TLabel;
    edCod: TEdit;
    edDescricao: TEdit;
    edData: TMaskEdit;
    edTamanho: TEdit;
    cbGenero: TComboBox;
    btSalvar: TButton;
    btConsultar: TButton;
    btExcluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pMesagemLimpaCampos(prFoco, prApresentar: Boolean; prMensagem: String = '');
  end;

var
  frPadrao: TfrPadrao;

implementation

{$R *.dfm}

{ TfrPadrao }

procedure TfrPadrao.pMesagemLimpaCampos(prFoco, prApresentar: Boolean;
  prMensagem: String);
begin
   if prApresentar then
     ShowMessage(prMensagem + 'Com Sucesso!');

     edDescricao.Text := '';
     edData.Text := '';
     edTamanho.Text := '';
     cbGenero.ItemIndex := 0;



  if prFoco then
     edCod.SetFocus;
end;

end.
