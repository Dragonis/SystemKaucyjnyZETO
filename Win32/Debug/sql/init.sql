CREATE TABLE IF NOT EXISTS Produkty (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Nazwa VARCHAR(40),
  Ilosc NUMERIC,
  Marza_Proc NUMERIC,
  Cena_Ew NUMERIC,
  Cena_Det NUMERIC
);

-- Wstawianie danych
INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Zapałki', 6.0, 280.49, 0.41, 1.92
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Zapałki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Koper', 5.0, 83.33, 0.3, 0.55
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Koper');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sałata zielona', 0.0, 78.57, 0.28, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sałata zielona');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Reklamówka Duża', -1.0, 78.26, 0.23, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Reklamówka Duża');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Gumy Kulki Robo', 0.0, 75.0, 0.04, 0.08
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Gumy Kulki Robo');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Gumy Kulki', 10.0, 75.0, 0.04, 0.08
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Gumy Kulki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Groszek Kons Pudliszki 400g', 0.0, 67.74, 0.93, 1.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Groszek Kons Pudliszki 400g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Groszek kons Pudl 400g', 0.0, 67.74, 0.93, 1.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Groszek kons Pudl 400g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Truskawka', 4.0, 66.67, 1.5, 2.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Truskawka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szczypiorek', 0.0, 66.67, 0.3, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szczypiorek');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kalarepa', 0.0, 66.67, 0.6, 1.0
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kalarepa');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bułka Tarta 0.5 kg', 0.0, 62.03, 0.79, 1.38
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bułka Tarta 0.5 kg');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Rzodkiewka', 3.0, 60.0, 0.25, 0.4
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Rzodkiewka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Polędwica Pieczona DEL', -1.0, 58.46, 11.17, 19.12
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Polędwica Pieczona DEL');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sernik Wiedeński', 0.0, 56.96, 8.41, 14.26
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sernik Wiedeński');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Śmietanki do Kawy 10g płyn', 0.0, 55.56, 0.09, 0.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Śmietanki do Kawy 10g płyn');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Śmietanka do kawy Czempion 10g', 0.0, 55.56, 0.09, 0.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Śmietanka do kawy Czempion 10g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lizak Deseń 8g', 0.0, 55.56, 0.09, 0.17
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lizak Deseń 8g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Papryka Słodka Miel 20g', 0.0, 55.0, 0.2, 0.38
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Papryka Słodka Miel 20g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Smalec Kostka 250g.', 0.0, 50.72, 0.69, 1.04
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Smalec Kostka 250g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Truskawki Pakow', 0.0, 50.0, 3.0, 4.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Truskawki Pakow');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kapusta Biała', 0.0, 50.0, 0.6, 0.9
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kapusta Biała');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Guma Gwiezdne wojny', 0.0, 50.0, 0.1, 0.18
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Guma Gwiezdne wojny');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czereśnie', 0.0, 50.0, 2.0, 3.0
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czereśnie');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Musztarda Delikatesowa 190g', 0.0, 48.94, 0.47, 0.86
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Musztarda Delikatesowa 190g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Nus - okno 100g', 0.0, 47.56, 1.64, 2.98
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Nus - okno 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Elitesy 20g.', 0.0, 47.37, 0.19, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Elitesy 20g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ogórki zielone', 0.0, 46.15, 0.65, 0.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ogórki zielone');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'FCCGGOHGPKML<', 0.0, 45.83, 1.2, 1.75
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'FCCGGOHGPKML<');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Guma Bumer jabł', 0.0, 45.45, 0.11, 0.2
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Guma Bumer jabł');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szprot w Oleju Caro 200g', 0.0, 45.22, 1.15, 1.8
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szprot w Oleju Caro 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Gum Orbit Pas 5x', 0.0, 42.86, 0.14, 0.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Gum Orbit Pas 5x');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Goplana 100g', 0.0, 42.59, 1.08, 1.89
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Goplana 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Pomidory', -1.0, 42.5, 2.0, 2.85
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Pomidory');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Mentos Wieloowocowy 37.5g', 0.0, 42.5, 0.8, 1.4
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Mentos Wieloowocowy 37.5g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Musztarda Kremska 200g.', 0.0, 41.03, 0.39, 0.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Musztarda Kremska 200g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ananas w Puszce 565g', 1.222, 40.19, 2.14, 3.24
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ananas w Puszce 565g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka Kujawska 240g.', 0.0, 40.04, 4.92, 8.48
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka Kujawska 240g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Reklamówka Mała bez usz', 0.0, 40.0, 0.2, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Reklamówka Mała bez usz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kalafior', 0.0, 40.0, 1.5, 2.1
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kalafior');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Rosół z Kury Winiary 56g.', 0.0, 38.67, 0.75, 1.12
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Rosół z Kury Winiary 56g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Babka Drożdżowa', 0.778, 38.28, 5.8, 8.66
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Babka Drożdżowa');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ogórki Konserwowe 0.860g', 0.0, 37.67, 2.15, 3.2
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ogórki Konserwowe 0.860g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Musztarda Chrzanowa 200g', 0.0, 37.21, 0.43, 0.73
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Musztarda Chrzanowa 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbata Madras 50g', 0.0, 37.21, 0.43, 0.73
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbata Madras 50g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ciastka Cookies 340g', 0.0, 37.08, 2.67, 4.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ciastka Cookies 340g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle domowe luz', 0.0, 36.73, 5.2, 7.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle domowe luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Brzoskwinia', -2.0, 36.72, 1.28, 1.75
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Brzoskwinia');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Makaron Nitki 500g', -1.0, 36.09, 1.33, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Makaron Nitki 500g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Draże Kokosowe 80g.', 0.0, 35.71, 0.42, 0.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Draże Kokosowe 80g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Winogron', -2.0, 35.65, 5.75, 7.8
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Winogron');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Jonny Napój w proszku brzos', 0.0, 35.29, 0.17, 0.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Jonny Napój w proszku brzos');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kokos Wiórka 60g', 0.0, 35.0, 0.4, 0.66
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kokos Wiórka 60g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Jarzyna', 0.0, 35.0, 0.8, 1.08
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Jarzyna');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Musztarda Sarebska', 0.0, 34.78, 0.46, 0.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Musztarda Sarebska');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Jajka', -1.0, 34.78, 0.23, 0.31
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Jajka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'One Cola cukierki', 0.0, 34.58, 5.9, 9.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'One Cola cukierki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Piwniczanka 1.5L', 0.0, 34.31, 1.02, 1.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Piwniczanka 1.5L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Przecier Ogórkowy 360g', -1.0, 34.18, 0.79, 1.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Przecier Ogórkowy 360g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kapusta kiszona', 0.0, 33.85, 1.3, 1.88
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kapusta kiszona');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kawa Prima 100g', 0.0, 33.61, 1.19, 1.96
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kawa Prima 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Filet Śledziowy w śmietanie C', 0.0, 33.6, 2.5, 3.34
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Filet Śledziowy w śmietanie C');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Biszkopt z Owocami', 0.0, 33.58, 6.73, 9.71
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Biszkopt z Owocami');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Pomar 0.2L D', 0.0, 33.33, 0.69, 0.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Pomar 0.2L D');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Kajtek Bier', 0.0, 33.33, 0.24, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Kajtek Bier');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Guma Mascara tat', 0.0, 33.33, 0.12, 0.2
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Guma Mascara tat');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Makaron Krakowski', 0.0, 33.09, 1.36, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Makaron Krakowski');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Tymbark jabłko 0.33', 1.0, 32.65, 0.49, 0.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Tymbark jabłko 0.33');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbatniki Pieguski z rodz 140g', 0.0, 32.56, 1.29, 2.1
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbatniki Pieguski z rodz 140g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Orzechy w Łupkach 300g.', 0.0, 32.37, 1.73, 2.47
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Orzechy w Łupkach 300g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lizak Karmewak koło', 0.0, 32.26, 0.31, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lizak Karmewak koło');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Papryka słodka', -1.0, 31.73, 5.2, 6.85
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Papryka słodka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Pucharek Lodowy', 0.0, 31.67, 0.6, 0.85
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Pucharek Lodowy');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kawa Pedros 250g', 0.0, 31.61, 3.86, 6.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kawa Pedros 250g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cukier Puder 500g.', 0.0, 31.46, 0.89, 1.26
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cukier Puder 500g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Mini Burger', 0.0, 30.95, 0.42, 0.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Mini Burger');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Frugo Zielone', 0.0, 30.58, 1.21, 1.71
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Frugo Zielone');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafelki Rallye 18g.', 0.0, 30.43, 0.23, 0.37
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafelki Rallye 18g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kinder Czekolada 50g 4x', 0.0, 30.43, 0.23, 0.37
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kinder Czekolada 50g 4x');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kinder Czekolada 100g. 8x', 0.0, 30.43, 0.23, 0.37
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kinder Czekolada 100g. 8x');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Czarna Porz 1L H Slim', 0.0, 30.11, 1.86, 2.61
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Czarna Porz 1L H Slim');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Żelki Dino-Slurps', 0.0, 30.0, 0.3, 0.42
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Żelki Dino-Slurps');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Winogron Czerwony', 0.0, 30.0, 11.0, 14.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Winogron Czerwony');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Śledź po Japońsku', 0.2, 30.0, 2.2, 3.09
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Śledź po Japońsku');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Pieczarka', -1.0, 30.0, 1.5, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Pieczarka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nektarynka', 0.0, 30.0, 1.0, 1.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nektarynka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kryniczanka 0.33l Witold', 0.0, 30.0, 0.2, 0.32
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kryniczanka 0.33l Witold');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Guma Mino 12g', 0.0, 30.0, 0.3, 0.48
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Guma Mino 12g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Fasola bombka 0.5kg', 0.0, 30.0, 1.4, 1.82
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Fasola bombka 0.5kg');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Drops Bomba Wedel 38g', 0.0, 30.0, 0.3, 0.48
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Drops Bomba Wedel 38g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka 120g.', 9.0, 30.0, 5.0, 8.0
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka 120g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Fasola Jaś 0.5kg', 0.0, 29.82, 1.71, 2.22
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Fasola Jaś 0.5kg');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Barszcz Biały 0.5L', 0.0, 29.63, 0.54, 0.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Barszcz Biały 0.5L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Milki Way 26g single', 0.0, 29.55, 0.44, 0.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Milki Way 26g single');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Alpen 100g.', 0.0, 29.52, 1.05, 1.67
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Alpen 100g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada ALP-Gold orz 100g', 0.0, 29.52, 1.05, 1.67
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada ALP-Gold orz 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Fruit Tella 40g trus', 0.0, 29.49, 0.78, 1.24
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Fruit Tella 40g trus');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Fruit Tella 40g pom', 0.0, 29.49, 0.78, 1.24
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Fruit Tella 40g pom');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbatniki Pieg orzech 140g', 0.0, 29.46, 1.29, 2.05
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbatniki Pieg orzech 140g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szprot Winter 150g', 0.0, 29.37, 1.26, 1.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szprot Winter 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Princi Polo 40g.', 0.0, 29.31, 0.58, 0.92
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Princi Polo 40g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbatniki Szkolne 65g', 0.0, 29.27, 0.41, 0.65
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbatniki Szkolne 65g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Golden Wafers 150g', 0.0, 29.27, 1.23, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Golden Wafers 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Wedel 100g', 0.0, 29.27, 1.23, 1.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Wedel 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Rodzynki w Czeko STARS 80g', 0.0, 29.2, 1.13, 1.79
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Rodzynki w Czeko STARS 80g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Orzechy w Czeko STARS 80g', 0.0, 29.13, 2.06, 3.27
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Orzechy w Czeko STARS 80g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Prince Danon 200g', 0.0, 29.09, 1.65, 2.62
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Prince Danon 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nektar Cytrus Magia 1L', 0.0, 29.07, 2.27, 3.16
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nektar Cytrus Magia 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Markizy Hit 150g', 0.0, 29.05, 1.48, 2.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Markizy Hit 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wiśnie w Czekoladzie 322g', -1.0, 29.02, 8.2, 13.01
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wiśnie w Czekoladzie 322g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Paluszki Słone Skawina 100g.', 0.0, 29.03, 0.62, 0.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Paluszki Słone Skawina 100g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kreolka 90g', 0.0, 29.03, 0.62, 0.98
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kreolka 90g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chery Dreams 165g wiśnie', 0.0, 29.02, 5.1, 8.09
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chery Dreams 165g wiśnie');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Kokos 100g', 0.0, 29.0, 1.0, 1.59
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Kokos 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka Bomilla 400g', 0.0, 28.98, 4.52, 7.17
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka Bomilla 400g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka Szampańskie 305g', 0.0, 28.96, 6.63, 10.52
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka Szampańskie 305g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka 305g', 0.0, 28.96, 11.67, 18.51
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka 305g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nektar Egzotik Magia 1L', 0.0, 28.95, 2.28, 3.17
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nektar Egzotik Magia 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Extra 0.5L trus', 0.0, 28.9, 2.18, 3.03
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Extra 0.5L trus');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Deser 1L Bier czek-orz', 0.0, 28.89, 2.7, 3.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Deser 1L Bier czek-orz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody 1000ml Bier wanil-wiś', 0.0, 28.89, 2.7, 3.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody 1000ml Bier wanil-wiś');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cukierki Mięta Faworyt luz', 0.0, 28.9, 6.16, 9.77
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cukierki Mięta Faworyt luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cukierki Kontiki luz', 0.0, 28.89, 7.2, 11.42
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cukierki Kontiki luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka Słodki Prezent 502g', 0.0, 28.89, 8.62, 13.67
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka Słodki Prezent 502g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Elite Ciastka Kokos 150g', 0.0, 28.87, 1.42, 2.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Elite Ciastka Kokos 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bomboniera Bomilla 260g', 0.0, 28.88, 3.29, 5.22
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bomboniera Bomilla 260g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Śliwka w czekoladzie 200g', 0.0, 28.86, 3.5, 5.55
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Śliwka w czekoladzie 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka Upominek 251g', 0.0, 28.86, 4.92, 7.8
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka Upominek 251g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Prince Packet 47g', 0.0, 28.85, 0.52, 0.82
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Prince Packet 47g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chrupki Curly 30g paski', 0.0, 28.85, 0.52, 0.72
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chrupki Curly 30g paski');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chio Papryka 100g', 0.0, 28.84, 2.15, 2.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chio Papryka 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chery Dreams Wiśń.w czek.3/11', 0.0, 28.84, 4.3, 6.82
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chery Dreams Wiśń.w czek.3/11');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chery Dreams 206g.', 0.0, 28.84, 6.9, 10.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chery Dreams 206g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wędzonka Średzka', 0.0, 28.83, 10.96, 15.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wędzonka Średzka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Paluszki Biszkoptowe', 0.0, 28.83, 9.33, 12.98
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Paluszki Biszkoptowe');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bombonierka 360g', 0.0, 28.84, 6.97, 11.05
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bombonierka 360g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Torcik Orzech-Czekol', 0.0, 28.82, 9.16, 12.74
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Torcik Orzech-Czekol');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Metrowiec', 0.0, 28.83, 8.88, 12.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Metrowiec');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Trufle Wielosmakowe', 0.0, 28.82, 7.46, 10.38
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Trufle Wielosmakowe');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Torcik Czeski', 0.0, 28.83, 6.73, 9.36
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Torcik Czeski');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Makowo Kokosowe', 0.0, 28.82, 7.01, 9.75
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Makowo Kokosowe');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Makowiec Wideński', 0.0, 28.82, 7.39, 10.28
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Makowiec Wideński');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ciasto Królewskie', 0.0, 28.82, 7.39, 10.28
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ciasto Królewskie');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Babka Włoska', 0.0, 28.83, 6.73, 9.36
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Babka Włoska');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Banany', 0.6, 28.8, 2.5, 3.96
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Banany');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nektar Banan Magia 1L', 0.0, 28.78, 2.05, 2.85
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nektar Banan Magia 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Groch łuskany 0.5kg', 0.0, 28.79, 1.32, 1.84
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Groch łuskany 0.5kg');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Czekolada Nesquick 100g', 0.0, 28.79, 1.32, 2.09
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Czekolada Nesquick 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nektar Poma-brzo Magia 1L', 0.0, 28.76, 2.26, 3.14
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nektar Poma-brzo Magia 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kokoski na Miodzie', 0.0, 28.76, 6.78, 9.43
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kokoski na Miodzie');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kokosanki z Miodem luz', 0.0, 28.76, 6.78, 9.43
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kokosanki z Miodem luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Arachidowy', 0.0, 28.77, 8.83, 12.28
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Arachidowy');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Rolada Lodowa 1000 ml Bier', 0.0, 28.75, 3.2, 4.45
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Rolada Lodowa 1000 ml Bier');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok March 0.33 but Fort', 0.0, 28.74, 0.87, 1.21
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok March 0.33 but Fort');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok marchwiowy 0.33L Nat 100% F', 0.0, 28.74, 0.87, 1.21
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok marchwiowy 0.33L Nat 100% F');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Babka Serowo Owocowa', 18.0, 28.74, 7.48, 10.4
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Babka Serowo Owocowa');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sernik Na Zimno', 0.0, 28.73, 8.32, 11.57
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sernik Na Zimno');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'M & M orzech 45g', 0.0, 28.72, 0.94, 1.49
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'M & M orzech 45g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Gelato Rolada 1L', 0.0, 28.72, 3.9, 5.42
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Gelato Rolada 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szarlotka', 0.0, 28.7, 5.61, 7.8
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szarlotka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Frugo wieloowoc 0.33l', 0.0, 28.69, 1.22, 1.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Frugo wieloowoc 0.33l');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Frugo czar-porz 0.33l', 0.0, 28.69, 1.22, 1.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Frugo czar-porz 0.33l');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Frugo ananas 0.33l', 0.0, 28.69, 1.22, 1.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Frugo ananas 0.33l');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Familijne 0.5L trójsmak', 0.0, 28.68, 2.72, 3.78
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Familijne 0.5L trójsmak');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Drożdżowe z Budyniem', 0.0, 28.67, 6.07, 8.44
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Drożdżowe z Budyniem');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle Domowe', 0.0, 28.65, 5.2, 7.23
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle Domowe');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle Domowe 350g śmiet', 0.0, 28.64, 2.2, 3.06
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle Domowe 350g śmiet');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle dom paczka kakao', 0.0, 28.64, 2.2, 3.06
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle dom paczka kakao');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ogórki kiszone', 0.0, 28.63, 2.34, 3.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ogórki kiszone');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle Grześki 30g', 0.0, 28.57, 0.42, 0.67
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle Grześki 30g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Tymbark Jabłkp-Pomar 0.33L', 0.0, 28.57, 0.49, 0.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Tymbark Jabłkp-Pomar 0.33L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Syrop Truskawka 0.375g', 0.0, 28.57, 1.4, 1.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Syrop Truskawka 0.375g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Syrop Pomarańcz 0.375g', 0.0, 28.57, 1.4, 1.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Syrop Pomarańcz 0.375g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Syrop Kiwi 0.375L', 0.0, 28.57, 1.4, 1.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Syrop Kiwi 0.375L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Syrop Cytryna 0.375g', 0.0, 28.57, 1.4, 1.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Syrop Cytryna 0.375g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Syrop Brzoskwinia 0.375g', 0.0, 28.57, 1.4, 1.94
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Syrop Brzoskwinia 0.375g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Napój Mango 1L H', 0.0, 28.57, 1.75, 2.43
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Napój Mango 1L H');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Rożek Biernacki', 0.0, 28.57, 0.49, 0.68
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Rożek Biernacki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kubek Lodowy Biernacki', 0.0, 28.57, 0.42, 0.58
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kubek Lodowy Biernacki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Guma Orbit Listki', 0.0, 28.57, 0.14, 0.22
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Guma Orbit Listki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Biszkopt z Owocamim tacki', 0.0, 28.57, 2.8, 3.89
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Biszkopt z Owocamim tacki');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Biszkopt San 180g', 12.0, 28.57, 2.1, 2.92
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Biszkopt San 180g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ciasteczka Karoliny 220g', 0.0, 28.42, 1.83, 2.89
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ciasteczka Karoliny 220g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Wafle Tortowe 110g', 0.0, 28.38, 0.74, 1.17
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Wafle Tortowe 110g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Rolmops Marynowany luz', 0.0, 28.36, 5.5, 7.06
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Rolmops Marynowany luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Markizy Disko 175g kokos', 0.0, 28.35, 1.27, 2.01
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Markizy Disko 175g kokos');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Pucharek 200ml', 0.0, 28.33, 0.6, 0.83
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Pucharek 200ml');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Crun Chips ser-ceb 35g', 0.0, 28.33, 0.6, 0.83
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Crun Chips ser-ceb 35g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Mini Krakers 50g', 0.0, 28.26, 0.46, 0.73
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Mini Krakers 50g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baleron Piecz z indyka', 18.5, 28.16, 10.19, 14.1
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baleron Piecz z indyka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ziele Angielskie 15g', 0.0, 28.13, 0.32, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ziele Angielskie 15g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Wodne Cola', 0.0, 28.13, 0.64, 0.89
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Wodne Cola');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbata Expres 50 szt', 0.0, 28.05, 0.82, 1.29
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbata Expres 50 szt');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Napoj Czekol Oaza orzech 150g', 0.0, 28.0, 0.25, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Napoj Czekol Oaza orzech 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Napoj Czekol Oaza Clasic 150g', 0.0, 28.0, 0.25, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Napoj Czekol Oaza Clasic 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody wodne Mikado pom', 0.0, 28.0, 0.25, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody wodne Mikado pom');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Wodne Mikado 0.48ml', 0.0, 28.0, 0.25, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Wodne Mikado 0.48ml');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Augusto Mikado patyk', 0.0, 28.0, 0.25, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Augusto Mikado patyk');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Tymbark Jabłko-Brzoskw 0.33L', -2.0, 27.78, 0.54, 0.75
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Tymbark Jabłko-Brzoskw 0.33L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szynka Pieczona Vacum', 0.0, 27.77, 11.99, 16.55
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szynka Pieczona Vacum');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chrupki Zwykłe 80g', -2.0, 27.78, 0.36, 0.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chrupki Zwykłe 80g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ptyś Lodowy', 0.0, 27.66, 0.47, 0.65
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ptyś Lodowy');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Szok 3L egzot', 0.0, 27.57, 3.01, 4.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Szok 3L egzot');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Musztarda Krem z Gorczycy 180g.', -1.0, 27.54, 0.69, 1.08
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Musztarda Krem z Gorczycy 180g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Nap Junior Wieloowocowy 0.25L', 0.0, 27.52, 1.09, 1.5
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Nap Junior Wieloowocowy 0.25L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Grapefruit Slim 1L H', 0.0, 27.5, 2.4, 3.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Grapefruit Slim 1L H');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Napój Jabłko - mięta 0.2 H', 0.0, 27.5, 0.4, 0.55
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Napój Jabłko - mięta 0.2 H');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Mieszanka Firmowa', 0.0, 27.47, 2.73, 3.76
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Mieszanka Firmowa');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Papryka Słodka 20g Asari', 0.0, 27.27, 0.22, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Papryka Słodka 20g Asari');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbatniki Petitki 35g', 0.0, 27.27, 0.22, 0.35
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbatniki Petitki 35g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Raylye 18g', 0.0, 27.27, 0.22, 0.34
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Raylye 18g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Multi D 0.20L', 0.0, 27.14, 0.7, 0.96
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Multi D 0.20L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Płat Śledziowy marynowany', 0.0, 27.09, 5.5, 6.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Płat Śledziowy marynowany');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Tuńczyk w Oleju 150g', 0.0, 27.07, 2.29, 3.14
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Tuńczyk w Oleju 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Woda Żywiec 1.5L niegaz', 0.0, 27.03, 1.11, 1.74
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Woda Żywiec 1.5L niegaz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ssaki Mieszko 100g Trus', 0.0, 27.03, 0.74, 1.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ssaki Mieszko 100g Trus');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ssaki Mieszko 100g szery', 0.0, 27.03, 0.74, 1.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ssaki Mieszko 100g szery');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ssaki Mieszko 100g orz', 0.0, 27.03, 0.74, 1.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ssaki Mieszko 100g orz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kasz jęczm w woreczkach 400g', 0.0, 27.0, 1.0, 1.37
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kasz jęczm w woreczkach 400g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bon Pari 100g.', 0.0, 26.98, 0.63, 0.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bon Pari 100g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Picnic 50g', 50.0, 26.98, 0.63, 0.98
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Picnic 50g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ser Biały Półtłusty', 0.0, 26.86, 5.1, 6.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ser Biały Półtłusty');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Lion 45g.', 98.0, 26.87, 0.67, 1.05
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Lion 45g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Bajadera', 0.2, 26.75, 8.0, 10.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Bajadera');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Brzoskwinia w Syropie 820g.', 0.0, 26.72, 2.47, 3.38
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Brzoskwinia w Syropie 820g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Chrupki w Czekoladzie luz', 0.0, 26.68, 8.32, 12.97
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Chrupki w Czekoladzie luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Orzeszki w Otoczce 80g.', 0.0, 26.67, 0.45, 0.7
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Orzeszki w Otoczce 80g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Arbuz', 0.606, 26.67, 1.2, 1.52
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Arbuz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Koncentrat Pomidorowy Pudliszki 02', 0.0, 26.58, 1.58, 2.16
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Koncentrat Pomidorowy Pudliszki 02');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbatniki Pieguski z czek 140g', 0.0, 26.52, 1.32, 2.05
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbatniki Pieguski z czek 140g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Składanka Rokita', 0.0, 26.43, 5.94, 8.11
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Składanka Rokita');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Olimpia Orange 2L', 0.0, 26.4, 1.78, 2.77
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Olimpia Orange 2L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Ptasie Mleczko Zawijane Luz', 0.0, 26.4, 7.88, 12.25
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Ptasie Mleczko Zawijane Luz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Vitamilk Danon 150g', 0.0, 26.35, 1.48, 2.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Vitamilk Danon 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Parówkowa', 0.0, 26.34, 4.86, 6.63
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Parówkowa');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Pieczeń z Indyka', 0.0, 26.31, 9.35, 12.75
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Pieczeń z Indyka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Kwasek Cytrynowy 20g', 0.0, 26.32, 0.19, 0.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Kwasek Cytrynowy 20g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Snikers 60g.', 100.0, 26.32, 0.95, 1.47
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Snikers 60g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Riko 20g trus', 0.0, 26.32, 0.19, 0.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Riko 20g trus');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Baton Riko 20g orz', 0.0, 26.32, 0.19, 0.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Baton Riko 20g orz');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Cappy 1L', 0.0, 26.26, 2.78, 3.79
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Cappy 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Budyń śmietankowy 60g. z cuk Win', 1.0, 26.19, 0.42, 0.57
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Budyń śmietankowy 60g. z cuk Win');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cacao Hol Sypkie 100g', 0.0, 26.14, 0.88, 1.37
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cacao Hol Sypkie 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Olimpia Grapefruit 2L', 0.0, 26.11, 1.8, 2.79
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Olimpia Grapefruit 2L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Jabłka', 0.0, 26.09, 4.6, 5.8
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Jabłka');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Śmietana Cremona 200g', -1.0, 26.03, 1.46, 1.99
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Śmietana Cremona 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sezamki Wedel 30g', 0.0, 26.0, 0.5, 0.77
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sezamki Wedel 30g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cytryna', 0.0, 26.0, 2.5, 3.88
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cytryna');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Egzotik Slim H 1L', 0.0, 25.93, 2.43, 3.3
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Egzotik Slim H 1L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Olej Uniwersalny 0.9L', 0.0, 25.9, 2.78, 3.78
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Olej Uniwersalny 0.9L');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Landrynki Mięta Wedel 150g', 0.0, 25.88, 0.85, 1.32
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Landrynki Mięta Wedel 150g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Truskawka Homo Hortex 150g.', 0.0, 25.71, 0.7, 0.95
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Truskawka Homo Hortex 150g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Pinoccio w Czekoladzie', 0.0, 25.71, 0.35, 0.47
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Pinoccio w Czekoladzie');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Sok Jabłko Slim 1L H', -2.0, 25.64, 1.95, 2.65
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Sok Jabłko Slim 1L H');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Paluszki Bakaliowe 24g', 0.0, 25.58, 0.43, 0.66
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Paluszki Bakaliowe 24g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Draże Orzechowe 80g.', 0.0, 25.58, 0.43, 0.66
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Draże Orzechowe 80g.');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Crun Chips ser-ceb 100g', 0.0, 25.53, 1.88, 2.55
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Crun Chips ser-ceb 100g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Filet z Makreli w pom 200g', 0.0, 25.47, 1.61, 2.18
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Filet z Makreli w pom 200g');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody kubek Paradies Aug', 0.0, 25.45, 0.55, 0.74
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody kubek Paradies Aug');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Lody Koala Augusto', 0.0, 25.45, 0.55, 0.74
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Lody Koala Augusto');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Cwibak', 0.0, 25.4, 6.93, 9.38
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Cwibak');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Piszinger', 0.0, 25.36, 6.31, 8.54
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Piszinger');

INSERT INTO Produkty (Nazwa, Ilosc, Marza_Proc, Cena_Ew, Cena_Det)
SELECT 'Herbata Indyjska Gran 100g Gold', 0.0, 25.33, 0.75, 1.15
WHERE NOT EXISTS (SELECT 1 FROM Produkty WHERE Nazwa = 'Herbata Indyjska Gran 100g Gold');