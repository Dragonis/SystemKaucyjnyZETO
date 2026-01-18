unit ZapisanieTowaru;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TZapisanieTowaruForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ButtonYES: TButton;
    Button2: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure ButtonYESClick(Sender: TObject);
  private
    function PobierzDaneZTabeli: string;
  public
    { Public declarations }
  end;

var
  ZapisanieTowaruForm: TZapisanieTowaruForm;

implementation

uses
  SzczeegolyProduktuUnit;

{$R *.dfm}

// Deklaracja metody w sekcji implementation, aby uniknąć cyklicznej zależności
procedure ZapiszOpakowanieDRS(ProduktForm: TProduktForm; AForm: TZapisanieTowaruForm); forward;

procedure TZapisanieTowaruForm.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TZapisanieTowaruForm.ButtonYESClick(Sender: TObject);
var
  i: Integer;
  ProduktFormInstance: TProduktForm;
  MessageText: string;
begin
  // Znajdź formularz ProduktForm
  ProduktFormInstance := nil;
  for i := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[i] is TProduktForm then
    begin
      ProduktFormInstance := TProduktForm(Screen.Forms[i]);
      Break;
    end;
  end;
  
  // Zapisz opakowanie DRS z danymi z ProduktForm
  if Assigned(ProduktFormInstance) then
  begin
    ZapiszOpakowanieDRS(ProduktFormInstance, Self);
    // Wyświetl dane z tabeli
    MessageText := PobierzDaneZTabeli;
    if MessageText <> '' then
      MessageDlg('Zapisane dane:' + sLineBreak + sLineBreak + MessageText, mtInformation, [mbOK], 0);
  end;
  
  // Zamknij ProduktForm jeśli istnieje
  if Assigned(ProduktFormInstance) then
    ProduktFormInstance.Close;
  
  // Zamknij aktualny formularz
  Close;
end;

procedure ZapiszOpakowanieDRS(ProduktForm: TProduktForm; AForm: TZapisanieTowaruForm);
var
  Nazwa, Vat, TowarWlasny: string;
  SQL: string;
  Query: TFDQuery;
  HasFrakcjeOpakowan: Boolean;
begin
  try
    if not AForm.FDConnection1.Connected then
      AForm.FDConnection1.Connected := True;
  except
    on E: Exception do
    begin
      MessageDlg('Błąd połączenia z bazą danych: ' + E.Message, mtError, [mbOK], 0);
      Exit;
    end;
  end;

  // Utwórz tabelę jeśli nie istnieje
  AForm.FDConnection1.ExecSQL(
    'CREATE TABLE IF NOT EXISTS opakowanie (' +
    'id INTEGER PRIMARY KEY AUTOINCREMENT,' +
    'nazwa VARCHAR(100),' +
    'vat VARCHAR(30),' +
    'frakcje_opakowan VARCHAR(100),' +
    'towar_wlasny VARCHAR(3))'
  );

  // Sprawdź i dodaj brakujące kolumny do istniejącej tabeli (migracja)
  try
    // Sprawdź czy kolumna frakcje_opakowan istnieje
    Query := AForm.FDQuery1;
    Query.Connection := AForm.FDConnection1;
    Query.SQL.Text := 'PRAGMA table_info(opakowanie)';
    Query.Open;
    
    HasFrakcjeOpakowan := False;
    while not Query.Eof do
    begin
      if Query.FieldByName('name').AsString = 'frakcje_opakowan' then
      begin
        HasFrakcjeOpakowan := True;
        Break;
      end;
      Query.Next;
    end;
    Query.Close;
    
    // Dodaj brakującą kolumnę jeśli nie istnieje
    if not HasFrakcjeOpakowan then
    begin
      AForm.FDConnection1.ExecSQL('ALTER TABLE opakowanie ADD COLUMN frakcje_opakowan VARCHAR(100)');
    end;
  except
    // Ignoruj błędy podczas sprawdzania struktury tabeli
  end;

  // Pobierz dane z formularza ProduktForm
  // ComboBox1 - typ towaru jako nazwa
  if ProduktForm.ComboBox1.ItemIndex >= 0 then
    Nazwa := ProduktForm.ComboBox1.Text
  else
    Nazwa := '';

  // ComboBox2 - stawka VAT
  if ProduktForm.ComboBox2.ItemIndex >= 0 then
    Vat := ProduktForm.ComboBox2.Text
  else
    Vat := '';

  // CheckBox1 - towar własny
  if ProduktForm.CheckBox1.Checked then
    TowarWlasny := 'tak'
  else
    TowarWlasny := 'nie';

  // Zapisz dane do bazy
  if (Nazwa <> '') or (Vat <> '') then
  begin
    SQL := 'INSERT INTO opakowanie (nazwa, vat, frakcje_opakowan, towar_wlasny) VALUES (' +
           QuotedStr(Nazwa) + ', ' +
           QuotedStr(Vat) + ', ' +
           QuotedStr(Trim(ProduktForm.EditFrakcjeOpakowan.Text)) + ', ' +
           QuotedStr(TowarWlasny) + ')';
    
    AForm.FDConnection1.ExecSQL(SQL);
  end;
end;

function TZapisanieTowaruForm.PobierzDaneZTabeli: string;
var
  Msg: string;
begin
  Result := '';
  
  try
    FDQuery1.Connection := FDConnection1;
    FDQuery1.SQL.Text := 'SELECT * FROM opakowanie ORDER BY id DESC';
    FDQuery1.Open;
    
    if not FDQuery1.IsEmpty then
    begin
      FDQuery1.First;
      Msg := '';
      while not FDQuery1.Eof do
      begin
        Msg := Msg + 'ID: ' + FDQuery1.FieldByName('id').AsString + sLineBreak;
        Msg := Msg + 'Nazwa: ' + FDQuery1.FieldByName('nazwa').AsString + sLineBreak;
        Msg := Msg + 'VAT: ' + FDQuery1.FieldByName('vat').AsString + sLineBreak;
        Msg := Msg + 'Frakcje opakowań: ' + FDQuery1.FieldByName('frakcje_opakowan').AsString + sLineBreak;
        Msg := Msg + 'Towar własny: ' + FDQuery1.FieldByName('towar_wlasny').AsString + sLineBreak;
        Msg := Msg + '---' + sLineBreak;
        FDQuery1.Next;
      end;
      Result := Msg;
    end
    else
      Result := 'Brak danych w tabeli.';
      
    FDQuery1.Close;
  except
    on E: Exception do
      Result := 'Błąd podczas pobierania danych: ' + E.Message;
  end;
end;


end.
