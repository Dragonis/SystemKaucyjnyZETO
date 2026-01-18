program SystemKaucyjnyProject;

uses
  Vcl.Forms,
  SystemKaucyjny in 'SystemKaucyjny.pas' {SystemKaucyjnyForm},
  SzczeegolyProduktuUnit in 'SzczeegolyProduktuUnit.pas' {ProduktForm},
  FrakcjeDRS in 'FrakcjeDRS.pas' {FrakcjeDRSForm},
  UstawieniaProgramu in 'UstawieniaProgramu.pas' {UstawieniaProgramuForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSystemKaucyjnyForm, SystemKaucyjnyForm);
  Application.CreateForm(TProduktForm, ProduktForm);
  Application.CreateForm(TFrakcjeDRSForm, FrakcjeDRSForm);
  Application.CreateForm(TUstawieniaProgramuForm, UstawieniaProgramuForm);
  Application.Run;
end.
