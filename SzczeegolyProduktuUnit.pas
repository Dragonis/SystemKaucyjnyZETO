unit SzczeegolyProduktuUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, OpakowanieZwrotneTowaru, FrakcjeDRS, ZapisanieTowaru;

type
  TProduktForm = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EditId: TEdit;
    EditNazwa: TEdit;
    EditIlosc: TEdit;
    ComboBox1: TComboBox; // Typ towaru
    ComboBox2: TComboBox; // Stawka VAT
    PageControl1: TPageControl;
    tsCena_sprzedazy: TTabSheet;
    tsOpisdodatkowy: TTabSheet;
    tsDRS_Kaucja: TTabSheet;
    tsDRS_Rozliczenie: TTabSheet;
    Label3: TLabel;
    Button1: TButton;
    EditFrakcjeOpakowan: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Label7: TLabel;
    EditOpakZwrotne: TEdit;
    ButtonOpakZwrotne: TButton;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonOpakZwrotneClick(Sender: TObject);
  public
    procedure UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);

  end;

var
  ProduktForm: TProduktForm;

implementation

{$R *.dfm}

procedure TProduktForm.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
  PageControl1.Visible := False;
end;

procedure TProduktForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close; // przechodzi przez FormCloseQuery
end;

procedure TProduktForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Msg: string;
begin
  CanClose := True;
  Msg := '';

  if ComboBox1.ItemIndex = -1 then
    Msg := Msg + '- Proszę wybrać opcję z listy "Typ towaru".' + sLineBreak;

  if ComboBox2.ItemIndex = -1 then
    Msg := Msg + '- Proszę wybrać opcję z listy "Stawka VAT".';

  if Msg <> '' then
  begin
    MessageDlg('Nie można zamknąć formularza:' + sLineBreak + Msg, mtWarning, [mbOK], 0);

    CanClose := False;

    // ustawia fokus na pierwsze niewypełnione pole
    if ComboBox1.ItemIndex = -1 then
      ComboBox1.SetFocus
    else
      ComboBox2.SetFocus;
  end;
end;


procedure TProduktForm.Button1Click(Sender: TObject);
begin
FrakcjeDRSForm.Show;
end;

procedure TProduktForm.ComboBox1Change(Sender: TObject);
begin
  // Hide all tabs initially
  tsCena_sprzedazy.TabVisible := False;
  tsOpisdodatkowy.TabVisible := False;
  tsDRS_Kaucja.TabVisible := False;
  tsDRS_Rozliczenie.TabVisible := False;

  PageControl1.Visible := True;

  case ComboBox1.ItemIndex of
    0: // towar - zwykły
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    1: // kaucja DRS
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsDRS_Kaucja.TabVisible := True;
      tsDRS_Rozliczenie.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    3: // towar - karton
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    4: // towar - winieta
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    5: // towar - zestaw
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    6: // towar - receptura
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    7: // opak. zwrotne
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    8: // usługa
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    9: // PrePaid
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    10: // op. jednorazowe
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;

    11: // opłata za op. jedn.
    begin
      tsCena_sprzedazy.TabVisible := True;
      tsOpisdodatkowy.TabVisible := True;
      PageControl1.ActivePage := tsCena_sprzedazy;
    end;
  else
    PageControl1.Visible := False;
  end;
end;

procedure TProduktForm.UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);
begin
  EditId.Text := IntToStr(AId);
  EditNazwa.Text := ANazwa;
  EditIlosc.Text := IntToStr(AIlosc);
end;

procedure TProduktForm.Button2Click(Sender: TObject);
begin
  ZapisanieTowaruForm.Show;
end;

procedure TProduktForm.ButtonOpakZwrotneClick(Sender: TObject);
begin
  if OpakowanieZwrotneTowaruForm.ShowModal = mrOk then
  begin
    EditOpakZwrotne.Text := OpakowanieZwrotneTowaruForm.publicznaNazwa;
  end;
end;

end.