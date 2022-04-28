unit UGrCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPadrao, Grids, DBGrids, StdCtrls, uDataModule;

type
  TfrGrCompra = class(TfrGrPadrao)
    btExportar: TButton;
    procedure btExportarClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGrCompra: TfrGrCompra;

implementation

{$R *.dfm}

procedure TfrGrCompra.btExportarClick(Sender: TObject);
var
  wSL: TStringList;
  wContador : Integer;
  wTexto : String;
begin
  inherited;
  wSL := TStringList.Create;


  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do
    begin
      wSL.Add('Codigo:' + DBGrid1.DataSource.DataSet.FieldByName('bdCod').AsString + ' | ' +
              'Descricao: ' + DBGrid1.DataSource.DataSet.FieldByName('bdDescricao').AsString + ' | ' +
              'Valor: ' + DBGrid1.DataSource.DataSet.FieldByName('bdValor').AsString);

      dmCompraVenda.tbCompra.Next
   end;


  if DirectoryExists(dmCompraVenda.FdiretorioCompra) then
      wSL.SaveToFile(dmCompraVenda.FdiretorioCompra + '\CompraCadastrada.txt');

  for wContador := 0 to wSL.Count-1 do
      wTexto := wTexto + #13 + wSL[wContador];

  ShowMessage('Arquivo Salvo em Txt Com Sucesso!');

end;

procedure TfrGrCompra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  lbSoletrando.Caption := lbSoletrando.Caption + key;

  if lbSoletrando.Caption <> '' then
    begin
      DBGrid1.DataSource.DataSet.First;
      while not  DBGrid1.DataSource.DataSet.Eof do
        begin
          if pos(lbSoletrando.Caption, DBGrid1.DataSource.DataSet.FieldByName('bdDescricao').AsString) > 0 then
          break;

           DBGrid1.DataSource.DataSet.Next;
        end;
    end;
end;

procedure TfrGrCompra.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If (Key = VK_UP) or (Key = VK_DOWN) then
     lbSoletrando.Caption := '';

   if Key = vk_back then
     lbSoletrando.Caption := Copy(lbSoletrando.Caption, 1, Length(lbSoletrando.Caption)-2);
end;

procedure TfrGrCompra.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
   if Column.Title.Caption = 'C�digo' then
     dmCompraVenda.tbCompra.IndexFieldNames := 'bdCod'
  else
  if Column.Title.Caption = 'Descricao' then
     dmCompraVenda.tbCompra.IndexFieldNames := 'bdDescricao'

end;

end.
