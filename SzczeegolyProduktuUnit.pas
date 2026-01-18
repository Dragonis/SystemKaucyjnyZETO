unit SzczeegolyProduktuUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
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

