CREATE TABLE [dbo].[Wynagrodzenia] (
    [IdWynagrodzenia] INT            IDENTITY (1, 1) NOT NULL,
    [IdStanowiska]    INT            NOT NULL,
    [Kwota]           DECIMAL (7, 2) NULL,
    PRIMARY KEY CLUSTERED ([IdWynagrodzenia] ASC)
);

