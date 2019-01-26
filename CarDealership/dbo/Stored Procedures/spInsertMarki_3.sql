create proc spInsertMarki @IdMarki char(4), @NazwaMarki nvarchar(200) as
insert into Marki values(@IdMarki, @NazwaMarki)