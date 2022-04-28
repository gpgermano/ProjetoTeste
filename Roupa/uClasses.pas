unit uClasses;

interface
type
  TPrincipal = Class
  Public
  wCod : Integer;
  wDescricao :  string;
  wData : string;
  wTamanho : string;
  wGenero : integer;
  wAliquota : Integer;
  end;

type
  Tvenda = Class(TPrincipal)
  public
  wValorTotal: Currency;
  wValorVenda: Currency;
  wQtd: Integer;
  end;

type
  TCompra = Class(TPrincipal)
  public
  wValorUnitario : Integer;

  end;

implementation

end.
 