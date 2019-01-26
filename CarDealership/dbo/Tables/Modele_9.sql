CREATE TABLE [dbo].[Modele] (
    [IdModel]     INT            IDENTITY (1, 1) NOT NULL,
    [Nazwa]       NVARCHAR (200) NOT NULL,
    [Typ]         NVARCHAR (50)  NULL,
    [Nadwozie]    NVARCHAR (50)  NULL,
    [Paliwo]      NVARCHAR (20)  NULL,
    [VIN]         CHAR (17)      NULL,
    [Wyposazenie] NVARCHAR (MAX) NULL,
    [Kolor]       NVARCHAR (50)  NULL,
    [Dostepny]    BIT            NOT NULL,
    [IdMarka]     CHAR (4)       CONSTRAINT [DF__Modele__IdMarka__3B75D760] DEFAULT ('????') NOT NULL,
    CONSTRAINT [PK__Modele__C2F000998CA00DC3] PRIMARY KEY CLUSTERED ([IdModel] ASC),
    CONSTRAINT [FK__Modele__IdMarka__3C69FB99] FOREIGN KEY ([IdMarka]) REFERENCES [dbo].[Marki] ([IdMarka]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

