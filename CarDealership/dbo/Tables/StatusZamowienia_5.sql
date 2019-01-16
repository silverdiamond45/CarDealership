CREATE TABLE [dbo].[StatusZamowienia] (
    [IdStatus]   INT            IDENTITY (1, 1) NOT NULL,
    [JakiStatus] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([IdStatus] ASC),
    CONSTRAINT [CK__StatusZam__JakiS__534D60F1] CHECK ([JakiStatus]='zamknięte' OR [JakiStatus]='w realizacji' OR [JakiStatus]='odebrane' OR [JakiStatus]='złożone'),
    UNIQUE NONCLUSTERED ([JakiStatus] ASC)
);

