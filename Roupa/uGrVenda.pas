unit uGrVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPadrao, Grids, DBGrids, StdCtrls, uDataModule;

type
  TfrGrVEnda = class(TfrGrPadrao)
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
  frGrVEnda: TfrGrVEnda;

implementation

{$R *.dfm}

procedure TfrGrVEnda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrGrVEnda.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (Key = VK_UP) or (Key = VK_DOWN) then
     lbSoletrando.Caption := '';

   if Key = vk_back then
     lbSoletrando.Caption := Copy(lbSoletrando.Caption, 1, Length(lbSoletrando.Caption)-2);
end;

procedure TfrGrVEnda.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
   if Column.Title.Caption = 'Código' then
     dmCompraVenda.tbVenda.IndexFieldNames := 'bdCod'
  else
  if Column.Title.Caption = 'Descricao' then
     dmCompraVenda.tbVenda.IndexFieldNames := 'bdDescricao'
end;

end.
