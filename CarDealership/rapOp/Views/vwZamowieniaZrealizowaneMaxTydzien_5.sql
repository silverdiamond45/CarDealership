
CREATE view [rapOp].[vwZamowieniaZrealizowaneMaxTydzien] AS
select CONVERT(INT, CONVERT(DATETIME,DataZamknieciaZamowienia))-(CONVERT(INT, CONVERT(DATETIME,DataZlozeniaZamowienia))) AS CzasRealizacji, tabZamkniete.IdZamowienie
from
	((select DataZmiany AS DataZlozeniaZamowienia, IdZamowienie FROM
		(select DataZmiany, IdZamowienie, IdStatus from HistoriaZamowienU
		group by IdZamowienie, IdStatus, DataZmiany
		having count(IdStatus)=4) AS tab1
		WHERE IdStatus=2) AS tabZlozone
		inner join
		(select DataZmiany AS DataZamknieciaZamowienia, IdZamowienie FROM
			(select DataZmiany, IdZamowienie, IdStatus from HistoriaZamowienU
			group by IdZamowienie, IdStatus, DataZmiany
			having count(IdStatus)=4) AS tab1 
			where IdStatus=4) AS tabZamkniete
		on tabZlozone.IdZamowienie=tabZamkniete.IdZamowienie
		) 
where CONVERT(INT, CONVERT(DATETIME,DataZamknieciaZamowienia)) <= CONVERT(INT, CONVERT(DATETIME,DataZlozeniaZamowienia)) + 7