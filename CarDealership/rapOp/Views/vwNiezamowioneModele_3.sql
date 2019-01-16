create view rapOp.vwNiezamowioneModele as
select m.IdModel, Nazwa from Modele as m left join Zamowienia as z
on m.IdModel=z.IdModel
where z.IdModel IS NULL