CREATE view [rapOp].[vwHRMaxPremiaWZespole] as
select z.IdZespol, z.Nazwa, Max(Kwota) as NajwyzszaPremia
from Zespoly as z inner join Pracownicy as p on z.IdZespol=p.IdZespol
inner join Wyplaty as w on p.IdPracownik=w.IdPracownik
where Typ='premia'
group by z.IdZespol, z.Nazwa