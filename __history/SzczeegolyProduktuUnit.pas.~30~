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
  private
    { Private declarations }
  public
    procedure UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);
  end;

var
  ProduktForm: TProduktForm;

implementation

{$R *.dfm}

procedure TProduktForm.UstawDane(AId: Integer; ANazwa: string; AIlosc: Integer);
begin
  EditId.Text := IntToStr(AId);
  EditNazwa.Text := ANazwa;
  EditIlosc.Text := IntToStr(AIlosc);
end;

end.

