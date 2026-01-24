program SystemKaucyjnyProject;

uses
  Vcl.Forms,
  Datasnap.DBClient,
  SystemKaucyjny in 'SystemKaucyjny.pas' {SystemKaucyjnyForm},
  SzczeegolyProduktuUnit in 'SzczeegolyProduktuUnit.pas' {ProduktForm},
  FrakcjeDRS in 'FrakcjeDRS.pas' {FrakcjeDRSForm},
  UstawieniaProgramu in 'UstawieniaProgramu.pas' {UstawieniaProgramuForm},
  ZapisanieTowaru in 'ZapisanieTowaru.pas' {ZapisanieTowaruForm},
  OpakowanieZwrotneTowaru in 'OpakowanieZwrotneTowaru.pas' {OpakowanieZwrotneTowaruForm},
  NIP in 'NIP.pas' {NIPForm},
  Towary in 'Towary.pas' {TowaryForm},
  CompanyInfo in 'CompanyInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSystemKaucyjnyForm, SystemKaucyjnyForm);
  Application.CreateForm(TProduktForm, ProduktForm);
  Application.CreateForm(TFrakcjeDRSForm, FrakcjeDRSForm);
  Application.CreateForm(TUstawieniaProgramuForm, UstawieniaProgramuForm);
  Application.CreateForm(TZapisanieTowaruForm, ZapisanieTowaruForm);
  Application.CreateForm(TOpakowanieZwrotneTowaruForm, OpakowanieZwrotneTowaruForm);
  Application.CreateForm(TNIPForm, NIPForm);
  Application.CreateForm(TTowaryForm, TowaryForm);
  Application.Run;
end.
