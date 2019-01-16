create proc spInsertWyplaty @IdPracownika int, @Typ varchar(20), @Kwota decimal(7,2), @DataWyplaty date as
insert into Wyplaty values(@IdPracownika,@Typ,@Kwota,@DataWyplaty)