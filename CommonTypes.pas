unit CommonTypes;

interface

uses
  System.SysUtils;

type
  // Rekord do przechowywania danych firmy
  TCompanyInfo = record
    Name: string;
    Nip: string;
    StatusVat: string;
  end;

implementation

end.