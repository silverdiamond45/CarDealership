create view rapOp.vwZamowieniaPracownikow as
select p.IdPracownik, Nazwisko, COUNT(IdZamowienie) as ZamowieniaZrealizowane, SUM(Cena) as LacznaKwotaZamowien 
from Pracownicy as p left join Zamowienia as z on p.IdPracownik=z.IdPracownik
where Zrealizowane=1
group by p.IdPracownik, Nazwisko