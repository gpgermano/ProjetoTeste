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
    wTeleFone: String;
    wSexoCliente : Integer;
    wTrabalhoAtl : Boolean;
    wEmprestimo : Currency;
  end;

type
  TBanco = class(TCadastro)
  public
    wCnpj: String;
    wEndereco: String;
    wTeleFone: String;
    wEstrangeiro : Boolean;
  end;



implementation

end.
 