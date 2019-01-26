CREATE TABLE [dbo].[Wyplaty] (
    [IdWyplata]   INT            IDENTITY (1, 1) NOT NULL,
    [IdPracownik] INT            CONSTRAINT [DF_Wyplaty_IdPracownik] DEFAULT ((0)) NOT NULL,
    [Typ]         VARCHAR (20)   NULL,
    [Kwota]       DECIMAL (7, 2) NULL,
    [DataWyplaty] DATE           NULL,
    [ZaOkresOd]   DATE           NULL,
    [ZaOkresDo]   DATE           NULL,
    PRIMARY KEY CLUSTERED ([IdWyplata] ASC),
    CHECK ([Typ]='premia' OR [Typ]='pensja'),
    CONSTRAINT [FK_Wyplaty_Pracownicy] FOREIGN KEY ([IdPracownik]) REFERENCES [dbo].[Pracownicy] ([IdPracownik]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

