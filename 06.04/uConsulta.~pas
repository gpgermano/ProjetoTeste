unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, uDatamodule;

type
  TfrConsultaEmp = class(TForm)
    dbConsultaEmp: TDBGrid;
    btOrdenarCodigo: TButton;
    btOrdenarNome: TButton;
    procedure btOrdenarCodigoClick(Sender: TObject);
    procedure btOrdenarNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaEmp: TfrConsultaEmp;

implementation

{$R *.dfm}

procedure TfrConsultaEmp.btOrdenarCodigoClick(Sender: TObject);
begin
  dmCadastroEmp.tbCadastro.FieldByName('bdCodigo');
end;

procedure TfrConsultaEmp.btOrdenarNomeClick(Sender: TObject);
begin
  dmCadastroEmp.tbCadastro.FieldByName('bdEmpresa');
end;

end.
