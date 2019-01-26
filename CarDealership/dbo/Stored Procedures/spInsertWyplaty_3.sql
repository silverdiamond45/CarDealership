
CREATE proc [dbo].[spInsertWyplaty] @IdPracownika int, @Typ varchar(20), @Kwota decimal(7,2), @DataWyplaty date,
@DataOd date, @DataDo date as
insert into Wyplaty values(@IdPracownika,@Typ,@Kwota,@DataWyplaty,@DataOd,@DataDo)