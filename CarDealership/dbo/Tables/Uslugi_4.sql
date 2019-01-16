CREATE TABLE [dbo].[Uslugi] (
    [IdUsluga] INT            IDENTITY (1, 1) NOT NULL,
    [Usluga]   NVARCHAR (800) NULL,
    PRIMARY KEY CLUSTERED ([IdUsluga] ASC),
    UNIQUE NONCLUSTERED ([Usluga] ASC)
);

