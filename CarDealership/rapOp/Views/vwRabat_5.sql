create view rapOp.vwRabat as
select IdZamowienie, IdKlient, z.IdModel as ZamowionyModel, IdPracownik, z.Cena as KosztZamowienia, DataZamowienia, DataOdbioru,Zrealizowane,Oplacone,
((c.Cena-z.Cena)/c.Cena) as Rabat from Zamowienia as z inner join Cennik as c
on z.IdModel=c.IdModel