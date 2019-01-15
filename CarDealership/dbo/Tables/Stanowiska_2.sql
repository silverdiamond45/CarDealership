CREATE TABLE [dbo].[Stanowiska] (
    [IdStanowisko] INT            IDENTITY (1, 1) NOT NULL,
    [Nazwa]        NVARCHAR (400) NULL,
    PRIMARY KEY CLUSTERED ([IdStanowisko] ASC),
    UNIQUE NONCLUSTERED ([Nazwa] ASC)
);

