unit NIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Towary;

type
  TNIPForm = class(TForm)
    Label1: TLabel;
    NIPEdit: TEdit;
    OKButton: TButton;
    AnulujButton: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure AnulujButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NIPForm: TNIPForm;

implementation

{$R *.dfm}

procedure TNIPForm.FormCreate(Sender: TObject);
begin
  Self.KeyPreview := True;
end;

procedure TNIPForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
  begin
    OKButton.Click;
  end;
end;

procedure TNIPForm.AnulujButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TNIPForm.OKButtonClick(Sender: TObject);
begin
  TowaryForm.Show;
end;

end.
