unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroCliente: TfrCadastroCliente;

implementation

{$R *.dfm}

procedure TfrCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dmDados.pCriarTabelaCliente;
  dmDados.pCriarCdsCliente;
end;

end.
