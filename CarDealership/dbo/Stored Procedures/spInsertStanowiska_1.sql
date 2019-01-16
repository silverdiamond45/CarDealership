create proc spInsertStanowiska @NazwaStanowiska nvarchar(400), @IdZespolu int as
insert into Stanowiska values(@NazwaStanowiska, @IdZespolu)