CREATE view [rapOp].[vwSerwisNajczestszaUsluga] as
select top(1) Usluga as NajczestszaUsluga, MAX(tab.IleUslug) as IleWykonano from 
(select Usluga, COUNT(zu.IdUsluga) as IleUslug from Uslugi as u
inner join ZamowieniaUslug as zu on u.IdUsluga=zu.IdUsluga
group by Usluga) as tab
group by Usluga
order by IleWykonano desc