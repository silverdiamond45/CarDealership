
CREATE view [dbo].[vwTabKlienci] as
select IdKlient, Imie as ImieKlienta,Nazwisko as NazwiskoKlienta, Mail as MailKlienta, Telefon
as TelefonKlienta, NrDowodu as NrDowoduKlienta
from Klienci