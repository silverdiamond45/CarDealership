create proc spInsertPracownicy @Imie nvarchar(80), @Nazwisko nvarchar(150), @PESEL char(11), @Adres nvarchar(300), 
@Mail nvarchar(100), @Telefon char(9), @DataZatrudnienia date,@IdZespolu int,@IdStanowiska int as
insert into Pracownicy values(@Imie,@Nazwisko,@PESEL,@Adres,@Mail,@Telefon,@DataZatrudnienia,@IdZespolu,@IdStanowiska)