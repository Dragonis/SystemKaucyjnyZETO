unit Towary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, CompanyInfo, Vcl.StdCtrls, SzczeegolyProduktuUnit;

type
  TTowaryForm = class(TForm)
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    LabelNIP: TLabel;
    LabelName: TLabel;
    LabelStatus: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelRegon: TLabel;
    LabelKRS: TLabel;
    LabelAdres: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FCompany: TCompanyInfo;
  public
    procedure SetCompanyInfo(const ACompany: TCompanyInfo);
  end;

var
  TowaryForm: TTowaryForm;

implementation

{$R *.dfm}

procedure TTowaryForm.DBGrid1DblClick(Sender: TObject);
var
  ProduktID, ProduktIlosc: Integer;
  ProduktNazwa: string;
begin
  if DataSource1.DataSet.IsEmpty then Exit;

  ProduktID := DataSource1.DataSet.FieldByName('id').AsInteger;
  ProduktNazwa := DataSource1.DataSet.FieldByName('nazwa').AsString;
  ProduktIlosc := DataSource1.DataSet.FieldByName('ilosc').AsInteger;

  if Assigned(ProduktForm) then
  begin
    ProduktForm.UstawDane(ProduktID, ProduktNazwa, ProduktIlosc);
    ProduktForm.ShowModal;
  end;
end;

procedure TTowaryForm.FormCreate(Sender: TObject);
begin
  Self.KeyPreview := True;
  try
    FDConnection1.Connected := True;
    FDQuery1.SQL.Text := 'SELECT * FROM Produkty';
    FDQuery1.Open;
  except
    on E: Exception do
      MessageDlg('Błąd połączenia z bazą danych lub odczytu danych: ' + E.Message,
        mtError, [mbOK], 0);
  end;
end;

procedure TTowaryForm.SetCompanyInfo(const ACompany: TCompanyInfo);
begin
  FCompany := ACompany;
  LabelName.Caption := FCompany.Name;
  LabelNIP.Caption := FCompany.Nip;
  LabelStatus.Caption := FCompany.StatusVat;
  LabelRegon.Caption := FCompany.Regon;
  LabelKRS.Caption := FCompany.Krs;
  LabelAdres.Caption := FCompany.WorkingAddress;
end;


procedure TTowaryForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.

