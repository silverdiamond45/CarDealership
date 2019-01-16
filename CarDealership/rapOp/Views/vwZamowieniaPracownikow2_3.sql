create view rapOp.vwZamowieniaPracownikow2 as
select p.IdPracownik, Nazwisko, COUNT(IdZamowienie) as ZamowieniaZrealizowane, SUM(Cena) as LacznaKwotaZamowien 
from Pracownicy as p left join Zamowienia as z on p.IdPracownik=z.IdPracownik
group by p.IdPracownik, Nazwisko