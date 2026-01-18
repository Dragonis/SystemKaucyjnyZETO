program TestProject;

uses
  Vcl.Forms,
  SystemKaucyjny in '..\SystemKaucyjny.pas' {SystemKaucyjnyForm},
  SzczeegolyProduktuUnit in '..\SzczeegolyProduktuUnit.pas' {ProduktForm},
  FrakcjeDRS in '..\FrakcjeDRS.pas' {FrakcjeDRSForm},
  UstawieniaProgramu in '..\UstawieniaProgramu.pas' {UstawieniaProgramuForm},
  ZapisanieTowaru in '..\ZapisanieTowaru.pas' {ZapisanieTowaruForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  try
    Application.CreateForm(TSystemKaucyjnyForm, SystemKaucyjnyForm);
    if SystemKaucyjnyForm.FDConnection1.Connected then
    begin
      Writeln('Connection successful');
    end
    else
    begin
      Writeln('Connection failed');
    end;
  except
    on E: Exception do
      Writeln('An exception occurred: ' + E.Message);
  end;
  Application.Run;
end.
