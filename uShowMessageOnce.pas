unit uShowMessageOnce;

interface

procedure ShowMessageOnce(const MsgID, MsgText: string);

implementation

uses
  System.SysUtils,
  System.IniFiles,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.Controls;

procedure ShowMessageOnce(const MsgID, MsgText: string);
var
  Ini: TIniFile;
  frm: TForm;
  lbl: TLabel;
  chk: TCheckBox;
  btn: TButton;
  ShowAgain: Boolean;
  IniFileName: string;
begin
  IniFileName := ExtractFilePath(ParamStr(0)) + 'settings.ini';
  Ini := TIniFile.Create(IniFileName);
  try
    ShowAgain := Ini.ReadBool('Messages', MsgID, True);
    if not ShowAgain then
      Exit;

    frm := TForm.Create(nil);
    try
      frm.Width := 450;
      frm.Height := 170;
      frm.Position := poScreenCenter;
      frm.Caption := 'Informacja';
      frm.BorderStyle := bsDialog;

      lbl := TLabel.Create(frm);
      lbl.Parent := frm;
      lbl.Caption := MsgText;
      lbl.Left := 20;
      lbl.Top := 20;
      lbl.Width := frm.ClientWidth - 40;
      lbl.WordWrap := True;

      chk := TCheckBox.Create(frm);
      chk.Parent := frm;
      chk.Caption := 'Nie pokazuj wiêcej';
      chk.Left := 20;
      chk.Top := lbl.Top + lbl.Height + 10;

      btn := TButton.Create(frm);
      btn.Parent := frm;
      btn.Caption := 'OK';
      btn.ModalResult := mrOk;
      btn.Left := frm.ClientWidth - btn.Width - 20;
      btn.Top := frm.ClientHeight - btn.Height - 20;

      if frm.ShowModal = mrOk then
        Ini.WriteBool('Messages', MsgID, not chk.Checked);
    finally
      frm.Free;
    end;
  finally
    Ini.Free;
  end;
end;

end.

