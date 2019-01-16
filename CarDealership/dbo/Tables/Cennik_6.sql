CREATE TABLE [dbo].[Cennik] (
    [IdModel]      INT             CONSTRAINT [def1] DEFAULT ((0)) NOT NULL,
    [Cena]         DECIMAL (10, 2) NOT NULL,
    [ObowiazujeOd] DATE            NULL,
    [ObowiazujeDo] DATE            NULL,
    CONSTRAINT [pkCenMod] PRIMARY KEY CLUSTERED ([Cena] ASC, [IdModel] ASC),
    CONSTRAINT [fkModel] FOREIGN KEY ([IdModel]) REFERENCES [dbo].[Modele] ([IdModel]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);

