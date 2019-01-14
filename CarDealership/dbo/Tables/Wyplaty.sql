CREATE TABLE [dbo].[Wyplaty] (
    [IdWyplata]   INT            IDENTITY (1, 1) NOT NULL,
    [IdPracownik] INT            NOT NULL,
    [Typ]         VARCHAR (20)   NULL,
    [Kwota]       DECIMAL (7, 2) NULL,
    [DataWyplaty] DATE           NULL,
    PRIMARY KEY CLUSTERED ([IdWyplata] ASC),
    CHECK ([Typ]='premia' OR [Typ]='pensja')
);

