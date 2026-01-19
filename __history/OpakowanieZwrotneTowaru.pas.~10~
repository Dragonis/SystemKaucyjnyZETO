unit OpakowanieZwrotneTowaru;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  FrakcjeDRS;

type
  TOpakowanieZwrotneTowaruForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    EditOpakDRS: TEdit;
    ButtonOpakDRS: TButton;
    Button1: TButton; // User's "Zapisz" button
    procedure ButtonOpakDRSClick(Sender: TObject);
    procedure Button1Click(Sender: TObject); // Handler for Button1 (Zapisz)
    procedure FormCreate(Sender: TObject);
  private
    function GetPublicznaNazwa: string;
    procedure SetPublicznaNazwa(const Value: string);
  public
    property publicznaNazwa: string read GetPublicznaNazwa write SetPublicznaNazwa;
  end;

var
  OpakowanieZwrotneTowaruForm: TOpakowanieZwrotneTowaruForm;

implementation

{$R *.dfm}

procedure TOpakowanieZwrotneTowaruForm.FormCreate(Sender: TObject);
begin
  Button1.OnClick := Button1Click;
end;

function TOpakowanieZwrotneTowaruForm.GetPublicznaNazwa: string;
begin
  Result := EditOpakDRS.Text;
end;

procedure TOpakowanieZwrotneTowaruForm.SetPublicznaNazwa(const Value: string);
begin
  EditOpakDRS.Text := Value;
end;

procedure TOpakowanieZwrotneTowaruForm.ButtonOpakDRSClick(Sender: TObject);
begin
  if FrakcjeDRSForm.ShowModal = mrOk then
  begin
    EditOpakDRS.Text := FrakcjeDRSForm.publicznaNazwa;
  end;
end;

procedure TOpakowanieZwrotneTowaruForm.Button1Click(Sender: TObject); // Renamed handler
begin
     publicznaNazwa := EditOpakDRS.Text;
  ModalResult := mrOk; // Signal that a value has been selected and saved
  Close; // Close the modal form

  EditOpakDRS.Text
end;

end.
