unit Towary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.DBGrids;

type
  TTowaryForm = class(TForm)
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDScript1: TFDScript;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TowaryForm: TTowaryForm;

implementation

{$R *.dfm}

procedure TTowaryForm.FormCreate(Sender: TObject);
begin
  Self.KeyPreview := True;
  try
    FDConnection1.Connected := True;
    FDQuery1.SQL.Text := 'SELECT * FROM Produkty';
    FDQuery1.Open;
  except
    on E: Exception do
    begin
      MessageDlg('Błąd połączenia z bazą danych lub odczytu danych: ' + E.Message,
        mtError, [mbOK], 0);
    end;
  end;
end;

procedure TTowaryForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

end.
