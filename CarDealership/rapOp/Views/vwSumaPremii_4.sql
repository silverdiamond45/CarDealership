create view rapOp.vwSumaPremii as
select w.IdPracownik, Imie, Nazwisko, SUM(Kwota) AS PremieLacznie
from Pracownicy as p right join Wyplaty as w on p.IdPracownik=w.IdPracownik
where Typ='premia'
group by w.IdPracownik, Nazwisko, Imie