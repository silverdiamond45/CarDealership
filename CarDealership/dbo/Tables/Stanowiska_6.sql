CREATE TABLE [dbo].[Stanowiska] (
    [IdStanowisko] INT            IDENTITY (1, 1) NOT NULL,
    [Nazwa]        NVARCHAR (400) NULL,
    [IdZespol]     INT            NULL,
    PRIMARY KEY CLUSTERED ([IdStanowisko] ASC),
    CONSTRAINT [FK_Stanowiska_Zespoly] FOREIGN KEY ([IdZespol]) REFERENCES [dbo].[Zespoly] ([IdZespol]),
    UNIQUE NONCLUSTERED ([Nazwa] ASC)
);

