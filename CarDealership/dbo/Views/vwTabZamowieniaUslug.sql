create view vwTabZamowieniaUslug as
select z.IdZamowienieU, z.IdUsluga, z.Kwota, z.DataZamowienia, z.IdKlient,
h.IdPracownik, p.Nazwisko as NazwiskoPracownika, sz.JakiStatus, h.DataZmiany
from ZamowieniaUslug as z left join HistoriaZamowienU as h on z.IdZamowienieU=h.IdZamowienie
full outer join StatusZamowienia as sz on sz.IdStatus=h.IdStatus left join Pracownicy p 
on p.IdPracownik=h.IdPracownik