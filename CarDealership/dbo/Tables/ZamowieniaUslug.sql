CREATE TABLE [dbo].[ZamowieniaUslug] (
    [IdZamowienieU]  INT             IDENTITY (1, 1) NOT NULL,
    [IdUsluga]       INT             NOT NULL,
    [Kwota]          DECIMAL (10, 2) NOT NULL,
    [DataZamowienia] DATE            DEFAULT (getdate()) NULL,
    [IdKlient]       INT             NOT NULL,
    [IdPracownik]    INT             NULL,
    PRIMARY KEY CLUSTERED ([IdZamowienieU] ASC)
);

