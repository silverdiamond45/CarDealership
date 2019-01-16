CREATE TABLE [dbo].[Klienci] (
    [IdKlient] INT            IDENTITY (1, 1) NOT NULL,
    [Imie]     NVARCHAR (80)  NOT NULL,
    [Nazwisko] NVARCHAR (150) NOT NULL,
    [Mail]     NVARCHAR (100) NULL,
    [Telefon]  CHAR (9)       NOT NULL,
    [NrDowodu] CHAR (9)       NULL,
    [NIP]      CHAR (10)      NULL,
    PRIMARY KEY CLUSTERED ([IdKlient] ASC),
    UNIQUE NONCLUSTERED ([NIP] ASC),
    UNIQUE NONCLUSTERED ([NrDowodu] ASC)
);

