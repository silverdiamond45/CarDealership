create view rapOp.vwSerwisKtoOdebral as
select k.IdKlient, k.Nazwisko as NazwiskoZamawiajacego, p.IdPracownik, p.Nazwisko as NazwiskoOdbierajacego,
zu.IdZamowienieU as IdZamowienia from
HistoriaZamowienU as hz inner join ZamowieniaUslug as zu on hz.IdZamowienie=zu.IdZamowienieU inner join
Klienci as k on k.IdKlient=zu.IdKlient inner join Pracownicy as p on hz.IdPracownik=p.IdPracownik
inner join StatusZamowienia as sz on sz.IdStatus=hz.IdStatus
where JakiStatus='odebrane'