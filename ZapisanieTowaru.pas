unit ZapisanieTowaru;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TZapisanieTowaruForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ButtonYES: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure ButtonYESClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZapisanieTowaruForm: TZapisanieTowaruForm;

implementation

uses
  SzczeegolyProduktuUnit;

{$R *.dfm}

procedure TZapisanieTowaruForm.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TZapisanieTowaruForm.ButtonYESClick(Sender: TObject);
var
  i: Integer;
  ProduktFormInstance: TProduktForm;
begin
  // Znajdź i zamknij formularz ProduktForm
  ProduktFormInstance := nil;
  for i := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[i] is TProduktForm then
    begin
      ProduktFormInstance := TProduktForm(Screen.Forms[i]);
      Break;
    end;
  end;
  
  // Zamknij ProduktForm jeśli istnieje
  if Assigned(ProduktFormInstance) then
    ProduktFormInstance.Close;
  
  // Zamknij aktualny formularz
  Close;
end;

end.
