CREATE TABLE [dbo].[Pracownicy] (
    [IdPracownik]      INT            IDENTITY (1, 1) NOT NULL,
    [Imie]             NVARCHAR (80)  NOT NULL,
    [Nazwisko]         NVARCHAR (150) NOT NULL,
    [PESEL]            CHAR (11)      NULL,
    [Adres]            NVARCHAR (300) NULL,
    [Mail]             NVARCHAR (100) NULL,
    [Telefon]          CHAR (9)       NULL,
    [DataZatrudnienia] DATE           NULL,
    PRIMARY KEY CLUSTERED ([IdPracownik] ASC),
    CHECK ([DataZatrudnienia]<=getdate()),
    UNIQUE NONCLUSTERED ([PESEL] ASC)
);

