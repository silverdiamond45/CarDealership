CREATE TABLE [dbo].[Pracownicy] (
    [IdPracownik]      INT            IDENTITY (1, 1) NOT NULL,
    [Imie]             NVARCHAR (80)  NOT NULL,
    [Nazwisko]         NVARCHAR (150) NOT NULL,
    [PESEL]            CHAR (11)      NULL,
    [Adres]            NVARCHAR (300) NULL,
    [Mail]             NVARCHAR (100) NULL,
    [Telefon]          CHAR (9)       NULL,
    [DataZatrudnienia] DATE           NULL,
    [IdZespol]         INT            NULL,
    [IdStanowisko]     INT            NULL,
    [ZatrudnionyDo]    DATE           NULL,
    PRIMARY KEY CLUSTERED ([IdPracownik] ASC),
    CHECK ([DataZatrudnienia]<=getdate()),
    CONSTRAINT [FK_Pracownicy_Stanowiska] FOREIGN KEY ([IdStanowisko]) REFERENCES [dbo].[Stanowiska] ([IdStanowisko]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_Pracownicy_Zespoly] FOREIGN KEY ([IdZespol]) REFERENCES [dbo].[Zespoly] ([IdZespol]) ON DELETE SET NULL ON UPDATE CASCADE,
    UNIQUE NONCLUSTERED ([PESEL] ASC)
);

