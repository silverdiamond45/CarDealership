CREATE proc [dbo].[spInsertZamowienia] as
declare @NajnizszaCena decimal(10,2) = 50000.00
declare @NajwyzszaCena decimal(10,2) = 100000.00
declare @RandomCena decimal(10,2)
declare @RandomData date
declare @RandomBit bit
declare @i int=0
 

while @i < 25
begin
insert into Zamowienia (IdKlient,IdPracownik,IdModel,Cena,DataZamowienia,Oplacone) 
values(
FLOOR(rand()*(9-4)+4)
,FLOOR(rand()*(12-8)+8)
,FLOOR(rand()*(26-3)+3)
,ROUND(((@NajwyzszaCena-@NajnizszaCena)*rand())+@NajnizszaCena,2)
,DATEADD(day, (abs(checksum(newid()))%730) * -1, GETDATE())
,CRYPT_GEN_RANDOM(1)%2
)

set @i=@i+1
end