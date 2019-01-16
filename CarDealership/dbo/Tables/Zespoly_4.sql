CREATE TABLE [dbo].[Zespoly] (
    [IdZespol] INT            IDENTITY (1, 1) NOT NULL,
    [Nazwa]    NVARCHAR (400) NULL,
    PRIMARY KEY CLUSTERED ([IdZespol] ASC),
    UNIQUE NONCLUSTERED ([Nazwa] ASC)
);

