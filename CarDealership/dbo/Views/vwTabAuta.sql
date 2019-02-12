create view vwTabAuta as
select mo.IdModel, mo.Nazwa as Model, Typ, Nadwozie, Paliwo, Kolor, ma.Nazwa as Marka
from Modele as mo inner join Marki as ma on mo.IdMarka=ma.IdMarka