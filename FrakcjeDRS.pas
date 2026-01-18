unit FrakcjeDRS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFrakcjeDRSForm = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  public

  end;

var
  FrakcjeDRSForm: TFrakcjeDRSForm;

implementation

uses
  SzczeegolyProduktuUnit;

{$R *.dfm}

procedure TFrakcjeDRSForm.FormCreate(Sender: TObject);
var
  Cnt: Integer;
begin
  KeyPreview := True;

  FDConnection1.Connected := True;

  // tabela
  FDConnection1.ExecSQL(
    'CREATE TABLE IF NOT EXISTS drs (' +
    'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
    'nazwa VARCHAR(20), ' +
    'kod VARCHAR(5), ' +
    'cena VARCHAR(10)' +
    ')'
  );

  // czy s� dane
  Cnt := FDConnection1.ExecSQLScalar('SELECT COUNT(*) FROM drs');

  if Cnt = 0 then
  begin
    FDConnection1.ExecSQL(
      'INSERT INTO drs (nazwa, kod, cena) VALUES ' +
      '("Butelki plastikowe", "PET", ""), ' +
      '("Butelki szklane", "SZK", ""), ' +
      '("Butelki metalowe", "MET", "")'
    );
  end;

  // zapytanie
  FDQuery1.Connection := FDConnection1;
  FDQuery1.SQL.Text := 'SELECT * FROM drs';
  FDQuery1.Open;

  DataSource1.DataSet := FDQuery1;
  DBGrid1.DataSource := DataSource1;

  DBGrid1.Options := DBGrid1.Options + [dgRowSelect] - [dgEditing];
end;

procedure TFrakcjeDRSForm.DBGrid1DblClick(Sender: TObject);
var
  nazwa: string;
  i: Integer;
  ProduktFormInstance: TProduktForm;
begin
  if not DataSource1.DataSet.IsEmpty then
  begin
    nazwa := DataSource1.DataSet.FieldByName('nazwa').AsString;
    
    // Znajdź aktywny formularz ProduktForm
    ProduktFormInstance := nil;
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i] is TProduktForm then
      begin
        ProduktFormInstance := TProduktForm(Screen.Forms[i]);
        Break;
      end;
    end;
    
    // Wstaw wartość do Edit w formularzu ProduktForm
    if Assigned(ProduktFormInstance) and ProduktFormInstance.Visible then
    begin
      ProduktFormInstance.EditFrakcjeOpakowan.Text := nazwa;
    end;
    
    Close;
  end;
end;

procedure TFrakcjeDRSForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

end.

