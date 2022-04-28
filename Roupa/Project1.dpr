program Project1;

uses
  Forms,
  uClasses in 'uClasses.pas',
  uCompra in 'uCompra.pas' {frCompra},
  uDataModule in 'uDataModule.pas' {dmCompraVenda: TDataModule},
  uFiltrar in 'uFiltrar.pas' {frFiltrar},
  uFiltrarVendas in 'uFiltrarVendas.pas' {frFiltroVenda},
  UGrCompra in 'UGrCompra.pas' {frGrCompra},
  uGrPadrao in 'uGrPadrao.pas' {frGrPadrao},
  uGrVenda in 'uGrVenda.pas' {frGrVEnda},
  uPrincipal in 'uPrincipal.pas' {frRoupa},
  uTelaPadrao in 'uTelaPadrao.pas' {frPadrao},
  uVenda in 'uVenda.pas' {frVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrRoupa, frRoupa);
  Application.CreateForm(TfrPadrao, frPadrao);
  Application.CreateForm(TfrVenda, frVenda);
  Application.CreateForm(TfrGrVEnda, frGrVEnda);
  Application.CreateForm(TfrGrPadrao, frGrPadrao);
  Application.CreateForm(TfrGrCompra, frGrCompra);
  Application.CreateForm(TfrFiltroVenda, frFiltroVenda);
  Application.CreateForm(TfrFiltrar, frFiltrar);
  Application.CreateForm(TfrCompra, frCompra);
  Application.CreateForm(TdmCompraVenda, dmCompraVenda);
  Application.Run;
end.
