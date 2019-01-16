create proc spInsertZespoly @NazwaZespolu nvarchar(400) as
insert into Zespoly values(@NazwaZespolu)