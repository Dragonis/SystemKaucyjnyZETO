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
    procedure ButtonOpakDRSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpakowanieZwrotneTowaruForm: TOpakowanieZwrotneTowaruForm;

implementation

{$R *.dfm}

procedure TOpakowanieZwrotneTowaruForm.ButtonOpakDRSClick(Sender: TObject);
begin
FrakcjeDRSForm.Show;
end;

end.
