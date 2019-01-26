create proc spInsertStatusZamowienia @Status nvarchar(100) as
insert into StatusZamowienia values(@Status)