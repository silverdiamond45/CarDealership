CREATE TABLE [dbo].[HistoriaZamowienU] (
    [IdZmianaStatusu] INT  IDENTITY (1, 1) NOT NULL,
    [IdStatus]        INT  CONSTRAINT [DF_HZU_IdStatus] DEFAULT ((0)) NOT NULL,
    [IdPracownik]     INT  NULL,
    [IdZamowienie]    INT  CONSTRAINT [DF_HZU_IdZamowienie] DEFAULT ((0)) NOT NULL,
    [DataZmiany]      DATE DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdZmianaStatusu] ASC),
    CONSTRAINT [FK_HZU_Pracownicy] FOREIGN KEY ([IdPracownik]) REFERENCES [dbo].[Pracownicy] ([IdPracownik]) ON DELETE SET NULL,
    CONSTRAINT [FK_HZU_StatusZamowienia] FOREIGN KEY ([IdStatus]) REFERENCES [dbo].[StatusZamowienia] ([IdStatus]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_HZU_ZamowieniaU] FOREIGN KEY ([IdZamowienie]) REFERENCES [dbo].[ZamowieniaUslug] ([IdZamowienieU]) ON DELETE SET DEFAULT
);

