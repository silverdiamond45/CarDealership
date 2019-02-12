CREATE TABLE [dbo].[Marki] (
    [IdMarka] CHAR (4)       NOT NULL,
    [Nazwa]   NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdMarka] ASC),
    UNIQUE NONCLUSTERED ([Nazwa] ASC)
);

