unit uClasses;

interface
type
  TCadastro = class
  public
    wCodigo : String;
    wNome : String;
  end;

type
  TCliente = class (TCadastro)
  public
    wSexoCliente : Integer;
    wEstrangeiro : Boolean;
  end;

type
  TMoto = class (TCadastro)
  public
    wMarcaMoto : String;
    wAnoMoto : String;
  end;


implementation

end.
 