CREATE TABLE IF NOT EXISTS Produkty (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Nazwa TEXT,
  Ilosc NUMERIC,
  Marza_Proc NUMERIC,
  Cena_Ew NUMERIC,
  Cena_Det NUMERIC
);

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Makaron Krakowski', 0.000, 33.09, 1.36, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty);

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Tymbark jabłko 0.33', 1.000, 32.65, 0.49, 0.70
WHERE NOT EXISTS (
  SELECT 1 FROM Produkty WHERE Nazwa = 'Tymbark jabłko 0.33'
);
