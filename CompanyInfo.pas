unit CompanyInfo;

interface

type
  // Rekord przechowuj¹cy dane firmy z MF
  TCompanyInfo = record
    Name: string;
    Nip: string;
    StatusVat: string;
    Regon: string;
    Krs: string;
    WorkingAddress: string;
    RegistrationLegalDate: string;
  end;

implementation

end.

