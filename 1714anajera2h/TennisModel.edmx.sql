
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/21/2018 16:44:58
-- Generated from EDMX file: C:\Users\najea\OneDrive\Documents\Visual Studio 2017\Projects\1714anajera\1714anajera2h\TennisModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TennisMatch];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LocationMatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matches] DROP CONSTRAINT [FK_LocationMatch];
GO
IF OBJECT_ID(N'[dbo].[FK_GameMatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matches] DROP CONSTRAINT [FK_GameMatch];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonMatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matches] DROP CONSTRAINT [FK_PersonMatch];
GO
IF OBJECT_ID(N'[dbo].[FK_MatchPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_MatchPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_MatchPerson1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_MatchPerson1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Matches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Matches];
GO
IF OBJECT_ID(N'[dbo].[Games]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Games];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Matches1_Id] int  NOT NULL,
    [Matches2_Id] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Matches'
CREATE TABLE [dbo].[Matches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDateTime] nvarchar(max)  NOT NULL,
    [Location_Id] int  NOT NULL,
    [Game_Id] int  NOT NULL,
    [Referee_Id] int  NOT NULL
);
GO

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Player1Score] nvarchar(max)  NOT NULL,
    [Player2Score] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [PK_Matches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Location_Id] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_LocationMatch]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationMatch'
CREATE INDEX [IX_FK_LocationMatch]
ON [dbo].[Matches]
    ([Location_Id]);
GO

-- Creating foreign key on [Game_Id] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_GameMatch]
    FOREIGN KEY ([Game_Id])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameMatch'
CREATE INDEX [IX_FK_GameMatch]
ON [dbo].[Matches]
    ([Game_Id]);
GO

-- Creating foreign key on [Referee_Id] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [FK_PersonMatch]
    FOREIGN KEY ([Referee_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonMatch'
CREATE INDEX [IX_FK_PersonMatch]
ON [dbo].[Matches]
    ([Referee_Id]);
GO

-- Creating foreign key on [Matches1_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_MatchPerson]
    FOREIGN KEY ([Matches1_Id])
    REFERENCES [dbo].[Matches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MatchPerson'
CREATE INDEX [IX_FK_MatchPerson]
ON [dbo].[People]
    ([Matches1_Id]);
GO

-- Creating foreign key on [Matches2_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_MatchPerson1]
    FOREIGN KEY ([Matches2_Id])
    REFERENCES [dbo].[Matches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MatchPerson1'
CREATE INDEX [IX_FK_MatchPerson1]
ON [dbo].[People]
    ([Matches2_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------