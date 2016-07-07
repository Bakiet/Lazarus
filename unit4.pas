unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TfrmFacturas_por_cobrar }

  TfrmFacturas_por_cobrar = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmFacturas_por_cobrar: TfrmFacturas_por_cobrar;

implementation

{$R *.lfm}

{ TfrmFacturas_por_cobrar }

procedure TfrmFacturas_por_cobrar.FormCreate(Sender: TObject);
begin

end;

end.

