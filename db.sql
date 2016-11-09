CREATE DATABASE MyList;

Use MyList;

CREATE TABLE [dbo].[Entries] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [UserID]      INT           NOT NULL,
    [Title]       VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (MAX) NULL,
    [DueDate]     DATETIME      NOT NULL,
    [Priority]    VARCHAR (50)  DEFAULT ('Normal') NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([Id])
);

CREATE TABLE [dbo].[Users] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50)  NOT NULL,
    [Email]    VARCHAR (50)  NOT NULL,
    [Password] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);
