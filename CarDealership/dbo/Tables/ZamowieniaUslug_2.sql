CREATE TABLE [dbo].[ZamowieniaUslug] (
    [IdZamowienieU]  INT             IDENTITY (1, 1) NOT NULL,
    [IdUsluga]       INT             CONSTRAINT [DF_ZamowieniaU_Usluga] DEFAULT ((0)) NOT NULL,
    [Kwota]          DECIMAL (10, 2) NOT NULL,
    [DataZamowienia] DATE            DEFAULT (getdate()) NULL,
    [IdKlient]       INT             CONSTRAINT [DF_ZamowieniaU_Klient] DEFAULT ((0)) NOT NULL,
    [IdPracownik]    INT             NULL,
    PRIMARY KEY CLUSTERED ([IdZamowienieU] ASC),
    CONSTRAINT [FK_ZamowieniaUslug_Klienci] FOREIGN KEY ([IdKlient]) REFERENCES [dbo].[Klienci] ([IdKlient]) ON DELETE SET DEFAULT ON UPDATE CASCADE,
    CONSTRAINT [FK_ZamowieniaUslug_Pracownicy] FOREIGN KEY ([IdPracownik]) REFERENCES [dbo].[Pracownicy] ([IdPracownik]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_ZamowieniaUslug_Uslugi] FOREIGN KEY ([IdUsluga]) REFERENCES [dbo].[Uslugi] ([IdUsluga]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

