create view rapOp.vwMarkiZamowienia as
select m.Nazwa, COUNT(IdZamowienie) as IleZamowienMarki, SUM(Cena) as KwotaZamowien
from Marki as m left join Modele as mo on m.IdMarka=mo.IdMarka
left join Zamowienia as z on mo.IdModel=z.IdModel
group by m.Nazwa