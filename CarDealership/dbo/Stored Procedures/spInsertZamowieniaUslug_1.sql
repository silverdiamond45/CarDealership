CREATE proc [dbo].[spInsertZamowieniaUslug] as
declare @NajnizszaCena decimal(10,2) = 100.00
declare @NajwyzszaCena decimal(10,2) = 2000.00
declare @i int=0
 

while @i < 25
begin
insert into ZamowieniaUslug(IdUsluga,Kwota,DataZamowienia,IdKlient,IdPracownik) 
values(
FLOOR(rand()*(11-1)+1)
,ROUND(((@NajwyzszaCena-@NajnizszaCena)*rand())+@NajnizszaCena,2)
,DATEADD(day, (abs(checksum(newid()))%730) * -1, GETDATE())
,FLOOR(rand()*(9-4)+4)
,FLOOR(rand()*(10-8)+8)
)

set @i=@i+1
end