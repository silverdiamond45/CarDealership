CREATE TABLE [dbo].[HistoriaZamowienU] (
    [IdZmianaStatusu] INT  IDENTITY (1, 1) NOT NULL,
    [IdStatus]        INT  NOT NULL,
    [IdPracownik]     INT  NULL,
    [IdZamowienie]    INT  NOT NULL,
    [DataZmiany]      DATE DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdZmianaStatusu] ASC)
);

