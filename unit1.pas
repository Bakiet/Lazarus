unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus, Unit2,
  Unit3, Unit4, sqlite3conn;

type

  { TfrmMenu }

  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    MenuMain: TMenuItem;
    MenuCrearFactura: TMenuItem;
    MenuFacturas_porpagar: TMenuItem;
    MenuFactura_porcobrar: TMenuItem;
    MenuExit: TMenuItem;
    procedure MenuCrearFacturaClick(Sender: TObject);
    procedure MenuFacturas_porpagarClick(Sender: TObject);
    procedure MenuFactura_porcobrarClick(Sender: TObject);
    procedure MenuMainClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.lfm}

{ TfrmMenu }

procedure TfrmMenu.MenuMainClick(Sender: TObject);
begin

end;

procedure TfrmMenu.MenuCrearFacturaClick(Sender: TObject);
begin
  frmCrearFactura.Show;
end;

procedure TfrmMenu.MenuFacturas_porpagarClick(Sender: TObject);
begin
  frmFacturas_por_pagar.Show;
end;

procedure TfrmMenu.MenuFactura_porcobrarClick(Sender: TObject);
begin
  frmFacturas_por_cobrar.Show;
end;

procedure TfrmMenu.MenuExitClick(Sender: TObject);
begin
  Close;
end;

end.

