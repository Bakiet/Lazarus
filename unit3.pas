unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, odbcconn, mysql55conn, mysql51conn, db,
  FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls;

type

  { TfrmFacturas_por_pagar }

  TfrmFacturas_por_pagar = class(TForm)
    DataSourceFPP: TDataSource;
    dgFacturasPP: TDBGrid;
    Label1: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransactionFPP: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmFacturas_por_pagar: TfrmFacturas_por_pagar;

implementation

{$R *.lfm}

{ TfrmFacturas_por_pagar }


procedure TfrmFacturas_por_pagar.FormCreate(Sender: TObject);
begin

  ODBCConnection1.Driver := 'Microsoft Access Driver (*.mdb, *.accdb)';
  ODBCConnection1.Params.Add('DBQ=E:\Github\Cuentas_por_pagar_cobrar\Database.accdb');      // or specify full path to mdb file
  ODBCConnection1.Params.Add('Locale Identifier=1031');
  ODBCConnection1.Params.Add('ExtendedAnsiSQL=1');
  ODBCConnection1.Params.Add('CHARSET=ansi');
  ODBCConnection1.Connected := True;
  ODBCConnection1.KeepConnection := True;

  //transaction
  SQLTransactionFPP.DataBase := ODBCConnection1;
  SQLTransactionFPP.Action := caCommit;
  SQLTransactionFPP.Active := True;

  SQLQuery1.DataBase := ODBCConnection1;
  SQLQuery1.UsePrimaryKeyAsKey := False;
  SQLQuery1.SQL.Text := 'SELECT * FROM factura WHERE proveedorid IS NOT NULL AND status ="Por pagar"';
  SQLQuery1.Open;


    If ODBCConnection1.Connected then
    begin
          Label1.Caption:='Conectado';
          Label1.Font.Color:=clLime;
    end;
end;

end.

