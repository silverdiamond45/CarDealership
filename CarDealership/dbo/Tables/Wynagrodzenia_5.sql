CREATE TABLE [dbo].[Wynagrodzenia] (
    [IdWynagrodzenia] INT            IDENTITY (1, 1) NOT NULL,
    [IdStanowiska]    INT            CONSTRAINT [DF_Wynagrodzenia_IdStanowiska] DEFAULT ((0)) NOT NULL,
    [Kwota]           DECIMAL (7, 2) NULL,
    [ObowiazujeOd]    DATE           NULL,
    [ObowiazujeDo]    DATE           NULL,
    PRIMARY KEY CLUSTERED ([IdWynagrodzenia] ASC),
    CONSTRAINT [FK_Wynagrodzenia_Stanowiska] FOREIGN KEY ([IdStanowiska]) REFERENCES [dbo].[Stanowiska] ([IdStanowisko]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

