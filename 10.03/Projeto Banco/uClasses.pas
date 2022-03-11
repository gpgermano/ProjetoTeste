unit uClasses;

interface
type
  TCadastro = class
  public
    wCodigo : String;
    wNome : String;
  end;

type
  TCliente = class(TCadastro)
  public
    wCpfCliente : String;
    wEenderecoCliente : String;
    wTeleFone: Currency;
    wSexoCliente : Integer;
    wTrabalhoAtl : Boolean;
  end;

type
  TBanco = class(TCadastro)
  public
    wCnpj: String;
    wEndereco: String;
    wTeleFone: Currency;
    wEstrangeiro : Boolean;
  end;



implementation

end.
 