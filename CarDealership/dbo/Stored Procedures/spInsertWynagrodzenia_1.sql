create proc spInsertWynagrodzenia @IdStanowiska int, @Kwota decimal(7,2), @ObowiazujeOd date, @ObowiazujeDo date as
insert into Wynagrodzenia values(@IdStanowiska,@Kwota,@ObowiazujeOd,@ObowiazujeDo)