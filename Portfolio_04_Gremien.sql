/* 1. Abrage */
select * from Personen
inner join Namen on Namen.ID = Personen.ID
inner join Adresse on Adresse.ID = Personen.ID;

/* 2. Abfrage */
select
    g.Name,
    g.Offiziell,
    g.Inoffiziell,
    g.Beginn,
    g.Ende,
    s.Beginn as S_Beginn,
    s.Ende as S_Ende,
    s.Einladung_am,
    s.oeffentlich,
    s.Ort
from hat
inner join Gremien g on g.ID = hat.ID_Gremien
inner join Sitzungen s on s.ID = hat.ID_Sitzungen;

/* 3. Abfrage */
select distinct Vorname, Nachname, Geschlecht, Geburtsdatum, Adresse.Strasse, Adresse.Hausnummer, Adresse.PLZ, Adresse.Ort, S.Beginn, S.Ende, S.oeffentlich, S.Einladung_am, S.Ort, T.Titel, T.Kurzbeschreibung, T.Protokolltext
from nimmt_teil
inner join Personen Pers on Pers.ID = nimmt_teil.ID_Personen
left join Professoren on Professoren.ID = Pers.ID
left join Student on Student.ID = Pers.ID
left join Mitarbeiter on Mitarbeiter.ID = Pers.ID
left join Sonstige_Personen on Sonstige_Personen.ID = Pers.ID
left join Lehrbeauftragte on Lehrbeauftragte.ID = Pers.ID
inner join Namen on Namen.ID = Pers.ID
inner join Adresse on Adresse.ID = Pers.ID
inner join Sitzungen S on S.ID = nimmt_teil.ID_Sitzungen
inner join top on top.ID_Sitzung = S.ID
inner join Tagesordnung T on T.ID = top.ID_Tagesordnung;

/* 4. Abfrage */
select *
from top
inner join Tagesordnung T on T.ID = top.ID_Tagesordnung
inner join Sitzungen S on S.ID = top.ID_Sitzung
order by T.Titel, S.oeffentlich;

/* 5. Abfrage */
select Vorname, Nachname, Geschlecht, Geburtsdatum
from Personen Pers
left join Professoren on Professoren.ID = Pers.ID
left join Student on Student.ID = Pers.ID
left join Mitarbeiter on Mitarbeiter.ID = Pers.ID
left join Sonstige_Personen on Sonstige_Personen.ID = Pers.ID
left join Lehrbeauftragte on Lehrbeauftragte.ID = Pers.ID
inner join Namen on Namen.ID = Pers.ID
where Namen.Nachname like '%oo%'

/* 6. Abfrage */
update Adresse set Hausnummer = 52 where Hausnummer IN (55, 50);

/* 7. Abfrage */
select MIN(Hausnummer), MAX(Hausnummer), SUM(Hausnummer)
from Adresse
group by SUM(Hausnummer);

/* 8. Abfrage */

/* 9. Abfrage */
