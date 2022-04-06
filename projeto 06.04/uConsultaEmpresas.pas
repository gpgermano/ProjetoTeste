unit uConsultaEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, uDataModule, StdCtrls;

type
  TfrConsultaEmpresas = class(TForm)
    grConsulta: TDBGrid;
    btExcluir: TButton;
    btSalvar: TButton;
    lbSoletrado: TLabel;
    procedure grConsultaTitleClick(Column: TColumn);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure grConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure grConsultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaEmpresas: TfrConsultaEmpresas;

implementation

{$R *.dfm}

procedure TfrConsultaEmpresas.grConsultaTitleClick(Column: TColumn);
begin
  if Column.Title.Caption = 'Código' then
     dmTabelas.tbEmpresas.IndexFieldNames := 'bdCodigo'
  else
  if Column.Title.Caption = 'Razão social' then
     dmTabelas.tbEmpresas.IndexFieldNames := 'bdRazaoSocial'
  else
  if Column.Title.Caption = 'Nome fantasia' then
      dmTabelas.tbEmpresas.IndexFieldNames := 'bdNomeFantasia';
end;

procedure TfrConsultaEmpresas.btExcluirClick(Sender: TObject);
begin
  dmTabelas.tbEmpresas.IndexFieldNames := 'bdCodigo';
  if dmTabelas.tbEmpresas.FindKey([grConsulta.DataSource.DataSet.FieldByName('bdCodigo').AsString]) then
     dmTabelas.tbEmpresas.Delete;
end;

procedure TfrConsultaEmpresas.btSalvarClick(Sender: TObject);
var
  wSL: TStringList;
begin
  wSL := TStringList.Create;

  grConsulta.DataSource.DataSet.First;
  while not grConsulta.DataSource.DataSet.Eof do
    begin
      wSL.Add('Código: ' + grConsulta.DataSource.DataSet.FieldByName('bdCodigo').AsString + ' | ' +
              'Razão social: ' + grConsulta.DataSource.DataSet.FieldByName('bdRazaoSocial').AsString + ' | ' +
              'NomeFantasia: ' + grConsulta.DataSource.DataSet.FieldByName('bdNomeFantasia').AsString);

      dmTabelas.tbEmpresas.Next;
    end;

  if DirectoryExists(dmTabelas.fDiretorio) then
     wSL.SaveToFile(dmTabelas.fDiretorio + '\EmpresasCadastradas.txt');

  ShowMessage('Arquivo salvo com sucesso!');
end;

procedure TfrConsultaEmpresas.grConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  lbSoletrado.Caption := lbSoletrado.Caption + Key;

  if lbSoletrado.Caption <> '' then
     begin
       grConsulta.DataSource.DataSet.First;
       while not grConsulta.DataSource.DataSet.Eof do
         begin
           if Pos(UpperCase(lbSoletrado.Caption), UpperCase(grConsulta.DataSource.DataSet.FieldByName('bdRazaoSocial').AsString)) > 0 then
              Break;

           grConsulta.DataSource.DataSet.Next;
         end;
     end;
end;

procedure TfrConsultaEmpresas.grConsultaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If (Key = VK_UP) or (Key = VK_DOWN) then
     lbSoletrado.Caption := '';

  IF key = vk_back then
     lbSoletrado.Caption := Copy(lbSoletrado.Caption, 1, Length(lbSoletrado.Caption)-2)
end;
        
end.
