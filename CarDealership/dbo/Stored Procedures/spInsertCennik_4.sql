create proc spInsertCennik @IdModelu int, @Cena decimal(10,2), @ObowiazujeOd date, @ObowiazujeDo date as
insert into Cennik values(@IdModelu,@Cena,@ObowiazujeOd,@ObowiazujeDo)