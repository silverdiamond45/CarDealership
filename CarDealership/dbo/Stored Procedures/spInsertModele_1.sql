create proc spInsertModele @NazwaModelu nvarchar(200),@Typ nvarchar(50), @Nadwozie nvarchar(50), @Paliwo nvarchar(20),
@VIN char(17), @Wyposazenie nvarchar(max), @Kolor nvarchar(50), @Dostepny bit, @IdMarki char(4)
as
insert into Modele values(@NazwaModelu,@Typ,@Nadwozie,@Paliwo,@VIN,@Wyposazenie,@Kolor,@Dostepny,@IdMarki)