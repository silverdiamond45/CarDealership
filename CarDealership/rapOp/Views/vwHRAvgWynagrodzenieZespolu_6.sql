create view rapOp.vwHRAvgWynagrodzenieZespolu as
select z.IdZespol, z.Nazwa as NazwaZespolu, sum(Kwota)/COUNT(IdStanowiska) as SrednieWynagrodzenieWZespole from
Wynagrodzenia as w inner join Stanowiska as s
on w.IdStanowiska=s.IdStanowisko inner join Zespoly as z
on z.IdZespol=s.IdZespol
group by z.IdZespol, z.Nazwa