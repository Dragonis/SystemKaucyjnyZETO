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
    procedure FormCreate(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  OpakowanieZwrotneTowaruForm: TOpakowanieZwrotneTowaruForm;

implementation

{$R *.dfm}

procedure TOpakowanieZwrotneTowaruForm.ButtonOpakDRSClick(Sender: TObject);
begin
  if FrakcjeDRSForm.ShowModal = mrOk then
  begin
    EditOpakDRS.Text := FrakcjeDRSForm.publicznaNazwa;
  end;
end;

procedure TOpakowanieZwrotneTowaruForm.FormCreate(Sender: TObject);
var
  ButtonOK, ButtonCancel: TButton;
begin
  // Create OK button
  ButtonOK := TButton.Create(Self);
  ButtonOK.Parent := Self;
  ButtonOK.Caption := 'OK';
  ButtonOK.ModalResult := mrOk;
  ButtonOK.Top := Self.Height - 80;
  ButtonOK.Left := Self.Width - 200;
  ButtonOK.OnClick := ButtonOKClick;

  // Create Cancel button
  ButtonCancel := TButton.Create(Self);
  ButtonCancel.Parent := Self;
  ButtonCancel.Caption := 'Anuluj';
  ButtonCancel.ModalResult := mrCancel;
  ButtonCancel.Top := Self.Height - 80;
  ButtonCancel.Left := Self.Width - 110;
  ButtonCancel.OnClick := ButtonCancelClick;
end;

procedure TOpakowanieZwrotneTowaruForm.ButtonOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TOpakowanieZwrotneTowaruForm.ButtonCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
