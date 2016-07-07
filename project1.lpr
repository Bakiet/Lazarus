program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit3, Unit4
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmCrearFactura, frmCrearFactura);
  Application.CreateForm(TfrmFacturas_por_pagar, frmFacturas_por_pagar);
  Application.CreateForm(TfrmFacturas_por_cobrar, frmFacturas_por_cobrar);
  Application.Run;
end.

