create proc spInsertUslugi @NazwaUslugi nvarchar(800) as
insert into Uslugi values(@NazwaUslugi)