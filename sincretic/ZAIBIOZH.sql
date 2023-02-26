call insert_pacient('Igor123', 'banzai4ever', '7000123498701', 'Igor', 'Taranu', '2000-12-13', 'Str. Salcamilor 24, Salcuta', '068236789');
call insert_pacient('Vasile-999', 'toyota2006', '7000123937629', 'Vasilita', 'Morarescu', '2004-02-27', 'Str. Plopilor 5, Zaim', '068009789');
call insert_pacient('CapriC0rn', 'cicalata1212', '7000802398704', 'Cristina', 'Daranuta', '1989-12-05', 'Str. Foietajului 8, Salcuta', '068288889');
call insert_pacient('Horas234', 'LoveBMW', '7000213007629', 'Dorin', 'Pop', '1999-06-21', 'Str. Mierii 15, Opaci', '068009119');
call insert_pacient('Stalp444', 'CarlasDreams', '7000213008965', 'Catalina', 'Buterschi', '2003-06-12', 'Str. Stefan cel Mare 15, Chisinau', '068113216');

call insert_fisa(1,'2022-10-23');
call insert_fisa(2, '2022-11-12');
call insert_fisa(3, '2022-11-05');
call insert_fisa(4, '2022-11-07');
call insert_fisa(5, '2022-09-23');

call insert_medic('Ubuntu-23', '123suka', '7000230505038', 'Valodea', 'Sambure', '1993-05-09', 'M', '2017-07-18', 4500.00);
call insert_medic('Iulicika-<3', 'valodeaLove', '6000890505038', 'Iulia', 'Piersic', '1997-10-03', 'F', '2019-09-01', 4200.00);
call insert_medic('Mercedes_gl', 'lenuta123', '7000230501224', 'Vernonica', 'Chiron', '1987-08-26', 'F', '2011-09-15', 5000.00);

call insert_interventie('Obturație compozit fotopolimerizabil mica', 200, 100);
call insert_interventie('Obturație compozit fotopolimerizabil medie', 220, 130);
call insert_interventie('Dinte cu distrucțiemasivă cu baza CIS', 250, 150);
call insert_interventie('Obturație estetică în zona frontala', 220, 180);
call insert_interventie('Fațetare completa dinți frontali, compozit în cabinet', 170, 230);
call insert_interventie('Extracție dinte temporar + anestezie fara ac pt copii', 100, 150);
call insert_interventie('Drenaj dinte temporar', 10, 40);
call insert_interventie('Fluorizare în cabinet, o arcadă', 50, 100);
call insert_interventie('Obturație compozit mica', 70, 80);
call insert_interventie('Obturație compozit mare', 90, 130);
call insert_interventie('Pulpectomie vitală+ obturație', 100, 150);

call insert_consultatie(1, 1, '2022-11-05 09:20', '-');
call insert_consultatie(2, 1, '2022-11-07 13:40', '-');
call insert_consultatie(2, 1, '2022-11-08 11:00', '-');
call insert_consultatie(3, 2, '2022-11-12 08:15', '-');
call insert_consultatie(4, 2, '2022-10-23 10:30', '-');
call insert_consultatie(3, 1, '2022-10-23 14:00', '-');
call insert_consultatie(2, 3, '2022-11-27 11:15', '-');
call insert_consultatie(1, 3, '2022-11-14 10:45', '-');
call insert_consultatie(3, 3, '2022-12-03 13:00', '-');
call insert_consultatie(5, 3, '2022-11-14 10:45', '-');

CALL insert_consultatie_interventie(1, 1);
CALL insert_consultatie_interventie(1, 1);
CALL insert_consultatie_interventie(1, 2);
CALL insert_consultatie_interventie(2, 7);
CALL insert_consultatie_interventie(2, 5);
CALL insert_consultatie_interventie(2, 9);
CALL insert_consultatie_interventie(3, 5);
CALL insert_consultatie_interventie(4, 10);
CALL insert_consultatie_interventie(4, 9);
CALL insert_consultatie_interventie(5, 4);
CALL insert_consultatie_interventie(6, 1);
CALL insert_consultatie_interventie(6, 9);
CALL insert_consultatie_interventie(6, 3);
CALL insert_consultatie_interventie(7, 1);
CALL insert_consultatie_interventie(7, 3);
CALL insert_consultatie_interventie(8, 10);
CALL insert_consultatie_interventie(9, 3);
CALL insert_consultatie_interventie(9, 4);
CALL insert_consultatie_interventie(9, 5);
CALL insert_consultatie_interventie(9, 1);
CALL insert_consultatie_interventie(9, 1);
CALL insert_consultatie_interventie(10, 4);
CALL insert_consultatie_interventie(10, 6);
CALL insert_consultatie_interventie(10, 8);

CALL calcul_cost_total(1);
CALL calcul_cost_total(2);
CALL calcul_cost_total(3);
CALL calcul_cost_total(4);
CALL calcul_cost_total(5);
CALL calcul_cost_total(6);
CALL calcul_cost_total(7);
CALL calcul_cost_total(8);
CALL calcul_cost_total(9);
CALL calcul_cost_total(10);

CALL appointments_per_day('2022-11-07');
CALL appointments_per_day('2022-10-23');

CALL appointments_per_week('2022-11-08');
CALL appointments_per_week('2022-11-05');

CALL incasari_zilnice('2022-11-14');
CALL incasari_lunare('2022-10-14');

CALL cautare_interventie('Obturație');
CALL cautare_interventie('DRENAJ');

CALL programare_pacient('2022-11-05', '2022-11-05 09:20:00', 'Valodea', 'Sambure');
CALL cautare_consultatie('2022-11-12 08:15:00');

CALL pacienti_neachitati();
CALL genereaza_fluturas_salariu(1);

