CREATE view [dbo].[vwTabZamowienia] as 
select z.IdZamowienie, z.IdKlient, z.IdModel, z.DataZamowienia, z.DataOdbioru, z.Zrealizowane, z.Cena as Kwota, c.Cena as CenaKatalogowa,
((c.Cena-z.Cena)/c.Cena) as Rabat
from Zamowienia as z left join Cennik as c on z.IdModel=c.IdModel