create proc spInsertKlienci @Imie nvarchar(80), @Nazwisko nvarchar(150), @Mail nvarchar(100), @Telefon char(9), 
@NrDowodu char(9), @NIP char(10) as
insert into Klienci values(@Imie,@Nazwisko,@Mail,@Telefon,@NrDowodu,@NIP)