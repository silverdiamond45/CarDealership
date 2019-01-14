CREATE TABLE [dbo].[Zamowienia] (
    [IdZamowienie]   INT             IDENTITY (1, 1) NOT NULL,
    [IdKlient]       INT             NOT NULL,
    [IdPracownik]    INT             NULL,
    [IdModel]        INT             NOT NULL,
    [Cena]           DECIMAL (10, 2) NULL,
    [DataZamowienia] DATE            NOT NULL,
    [DataOdbioru]    DATE            NULL,
    [Zrealizowane]   BIT             NULL,
    [Oplacone]       BIT             NULL,
    PRIMARY KEY CLUSTERED ([IdZamowienie] ASC),
    CHECK ([Cena]>(0)),
    CONSTRAINT [fkZam1] FOREIGN KEY ([IdKlient]) REFERENCES [dbo].[Klienci] ([IdKlient]),
    CONSTRAINT [fkZam2] FOREIGN KEY ([IdPracownik]) REFERENCES [dbo].[Pracownicy] ([IdPracownik]),
    CONSTRAINT [fkZam3] FOREIGN KEY ([IdModel]) REFERENCES [dbo].[Modele] ([IdModel])
);

