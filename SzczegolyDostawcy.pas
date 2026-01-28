unit SzczegolyDostawcy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, KodTowaru, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSzczegolyDostawcyForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    NazwaDostawcyLabel: TLabel;
    SrotDostawcyLabel: TLabel;
    Label5: TLabel;
    NrFakturyEdit: TEdit;
    DBGrid1: TDBGrid;
    ZapiszButton: TButton;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ZapiszButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetDostawcaInfo(const Nazwa, Skrot: string);
  end;

var
  SzczegolyDostawcyForm: TSzczegolyDostawcyForm;

implementation

{$R *.dfm}

procedure TSzczegolyDostawcyForm.FormCreate(Sender: TObject);
begin
  // Konfiguracja ClientDataSet
  ClientDataSet1.Close;
  ClientDataSet1.FieldDefs.Clear;
  ClientDataSet1.FieldDefs.Add('ID', ftInteger);
  ClientDataSet1.FieldDefs.Add('Nazwa', ftString, 100);
  ClientDataSet1.FieldDefs.Add('Ilosc', ftInteger);
  ClientDataSet1.FieldDefs.Add('Cena', ftFloat);
  ClientDataSet1.CreateDataSet;

  // Pod³¹czenie Ÿród³a danych
  DataSource1.DataSet := ClientDataSet1;
  DBGrid1.DataSource := DataSource1;

  // Dodanie wiersza startowego
  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Nazwa').AsString := '<nowa pozycja>';
  ClientDataSet1.Post;
end;

procedure TSzczegolyDostawcyForm.DBGrid1DblClick(Sender: TObject);
begin
  if ClientDataSet1.FieldByName('Nazwa').AsString = '<nowa pozycja>' then
  begin
    // Zak³adamy, ¿e KodTowaruForm zwraca dane do ClientDataSet
    KodTowaru.KodTowaruForm.ShowModal;
  end;
end;

procedure TSzczegolyDostawcyForm.ZapiszButtonClick(Sender: TObject);
begin
  if NrFakturyEdit.Text = '' then
  begin
    ShowMessage('Proszê podaæ numer faktury!');
    Exit;
  end;

  // Rozpoczynamy transakcjê dla bezpieczeñstwa danych
  FDConnection1.StartTransaction;
  try
    FDQuery1.SQL.Text := 'INSERT INTO ElementyFaktury (NrFaktury, NazwaTowaru, Ilosc, Cena) ' +
                         'VALUES (:NrFaktury, :Nazwa, :Ilosc, :Cena)';

    ClientDataSet1.First;
    while not ClientDataSet1.Eof do
    begin
      // Pominiecie wiersza pomocniczego "<nowa pozycja>"
      if ClientDataSet1.FieldByName('Nazwa').AsString <> '<nowa pozycja>' then
      begin
        FDQuery1.Params.ParamByName('NrFaktury').AsString := NrFakturyEdit.Text;
        FDQuery1.Params.ParamByName('Nazwa').AsString := ClientDataSet1.FieldByName('Nazwa').AsString;
        FDQuery1.Params.ParamByName('Ilosc').AsInteger := ClientDataSet1.FieldByName('Ilosc').AsInteger;
        FDQuery1.Params.ParamByName('Cena').AsFloat := ClientDataSet1.FieldByName('Cena').AsFloat;
        FDQuery1.ExecSQL;
      end;
      ClientDataSet1.Next;
    end;

    FDConnection1.Commit;
    ShowMessage('Dane faktury zosta³y zapisane pomyœlnie!');
  except
    on E: Exception do
    begin
      FDConnection1.Rollback;
      ShowMessage('B³¹d zapisu: ' + E.Message);
    end;
  end;
end;

procedure TSzczegolyDostawcyForm.SetDostawcaInfo(const Nazwa, Skrot: string);
begin
  NazwaDostawcyLabel.Caption := Nazwa;
  SrotDostawcyLabel.Caption := Skrot;
end;

procedure TSzczegolyDostawcyForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

end.
