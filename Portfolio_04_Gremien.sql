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

/* 4. Abfrage */

/* 5. Abfrage */

/* 6. Abfrage */

/* 7. Abfrage */

/* 8. Abfrage */

/* 9. Abfrage */
