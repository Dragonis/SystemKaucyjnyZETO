unit SzczeegolyProduktuUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Tabs, Vcl.DockTabSet,
  Vcl.ComCtrls;

type
  TProduktForm = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditId: TEdit;
    EditNazwa: TEdit;
    EditIlosc: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    PageControl1: TPageControl;

    tsCena_sprzedazy: TTabSheet;
    tsOpisdodatkowy: TTabSheet;
    tsDRS_Kaucja: TTabSheet;
    tsDRS_Rozliczenie: TTabSheet;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox1Change(Sender: TObject);



  private
    { Private declarations }
  public
    procedure UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);
  end;

var
  ProduktForm: TProduktForm;

implementation

{$R *.dfm}




procedure TProduktForm.ComboBox1Change(Sender: TObject);
begin
  // wszystko ukryte
  tsCena_sprzedazy.TabVisible := False;
  tsOpisdodatkowy.TabVisible := False;
  tsDRS_Kaucja.TabVisible := False;
  tsDRS_Rozliczenie.TabVisible := False;

  PageControl1.Visible := True;

  case ComboBox1.ItemIndex of
    0: // Towar zwyk³y
      begin
        tsCena_sprzedazy.TabVisible := True;
        tsOpisdodatkowy.TabVisible := True;
        PageControl1.ActivePage := tsCena_sprzedazy;
      end;

    1: // Towar DRS
      begin
        tsCena_sprzedazy.TabVisible := True;
        tsDRS_Kaucja.TabVisible := True;
        tsDRS_Rozliczenie.TabVisible := True;
        PageControl1.ActivePage := tsCena_sprzedazy;
      end;
  end;
end;

procedure TProduktForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ComboBox1.ItemIndex = -1 then
  begin
    MessageDlg(
      'Proszê wybraæ opcjê z listy ''Typ towaru'' .',
      mtWarning,
      [mbOK],
      0
    );
    CanClose := False; // BLOKADA zamkniêcia
    ComboBox1.SetFocus;
  end;
end;

procedure TProduktForm.FormCreate(Sender: TObject);
begin
KeyPreview := True;
PageControl1.Visible := False;
end;

procedure TProduktForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;


procedure TProduktForm.UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);
begin
  EditId.Text := IntToStr(AId);
  EditNazwa.Text := ANazwa;
  EditIlosc.Text := IntToStr(AIlosc);
end;

end.

