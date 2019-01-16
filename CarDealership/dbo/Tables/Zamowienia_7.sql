CREATE TABLE [dbo].[Zamowienia] (
    [IdZamowienie]   INT             IDENTITY (1, 1) NOT NULL,
    [IdKlient]       INT             CONSTRAINT [DF_Zamowienia_Klient] DEFAULT ((0)) NOT NULL,
    [IdPracownik]    INT             NULL,
    [IdModel]        INT             CONSTRAINT [DF_Zamowienia_Model] DEFAULT ((0)) NOT NULL,
    [Cena]           DECIMAL (10, 2) NULL,
    [DataZamowienia] DATE            NOT NULL,
    [DataOdbioru]    DATE            NULL,
    [Zrealizowane]   BIT             NULL,
    [Oplacone]       BIT             NULL,
    PRIMARY KEY CLUSTERED ([IdZamowienie] ASC),
    CHECK ([Cena]>(0)),
    CONSTRAINT [FK_Zamowienia_Klienci] FOREIGN KEY ([IdKlient]) REFERENCES [dbo].[Klienci] ([IdKlient]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_Zamowienia_Modele] FOREIGN KEY ([IdModel]) REFERENCES [dbo].[Modele] ([IdModel]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_Zamowienia_Pracownicy] FOREIGN KEY ([IdPracownik]) REFERENCES [dbo].[Pracownicy] ([IdPracownik]) ON DELETE SET NULL
);

