CREATE TABLE [dbo].[StatusZamowienia] (
    [IdStatus]   INT            IDENTITY (1, 1) NOT NULL,
    [JakiStatus] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([IdStatus] ASC),
    CHECK ([JakiStatus]='zamknięte' OR [JakiStatus]='czeka na odbiór' OR [JakiStatus]='w realizacji' OR [JakiStatus]='odebrane' OR [JakiStatus]='złożone'),
    UNIQUE NONCLUSTERED ([JakiStatus] ASC)
);

