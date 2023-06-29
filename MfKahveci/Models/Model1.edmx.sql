
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/03/2023 13:15:28
-- Generated from EDMX file: C:\Users\Melisa\Desktop\uygulamalar\MfKahveci\MfKahveci\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kahveci];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Kahvecis'
CREATE TABLE [dbo].[Kahvecis] (
    [UrunNo] int IDENTITY(1,1) NOT NULL,
    [UrunAdi] nvarchar(max)  NOT NULL,
    [Ozellik] nvarchar(max)  NOT NULL,
    [Fiyat] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UrunNo] in table 'Kahvecis'
ALTER TABLE [dbo].[Kahvecis]
ADD CONSTRAINT [PK_Kahvecis]
    PRIMARY KEY CLUSTERED ([UrunNo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------