
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/03/2019 17:50:36
-- Generated from EDMX file: C:\Users\Yo\Desktop\ProyectoFinal_RecursoHumano\ProyectoFinal_RecursoHumano\Models\Empleado.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Empleado];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Empleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleados];
GO
IF OBJECT_ID(N'[dbo].[Departamentoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departamentoes];
GO
IF OBJECT_ID(N'[dbo].[Cargos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cargos];
GO
IF OBJECT_ID(N'[dbo].[Cal_Nomina]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cal_Nomina];
GO
IF OBJECT_ID(N'[dbo].[Salida_Empleado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Salida_Empleado];
GO
IF OBJECT_ID(N'[dbo].[Vacaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vacaciones];
GO
IF OBJECT_ID(N'[dbo].[Permisos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Permisos];
GO
IF OBJECT_ID(N'[dbo].[Licencias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Licencias];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Empleados'
CREATE TABLE [dbo].[Empleados] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Codigo_Empleado] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Departamento] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [Fecha_Ingreso] datetime  NOT NULL,
    [Salario] float  NOT NULL,
    [Estatus] bit  NOT NULL
);
GO

-- Creating table 'Departamentoes'
CREATE TABLE [dbo].[Departamentoes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Codigo_Depart] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cargos'
CREATE TABLE [dbo].[Cargos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cal_Nomina'
CREATE TABLE [dbo].[Cal_Nomina] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ano] datetime  NOT NULL,
    [Mes] datetime  NOT NULL,
    [Monto_Total] float  NOT NULL
);
GO

-- Creating table 'Salida_Empleado'
CREATE TABLE [dbo].[Salida_Empleado] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Tipo_Salida] nvarchar(max)  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Fecha_Salida] datetime  NOT NULL
);
GO

-- Creating table 'Vacaciones'
CREATE TABLE [dbo].[Vacaciones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Ano_Corres] datetime  NOT NULL,
    [Comentario] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Permisos'
CREATE TABLE [dbo].[Permisos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Comentario] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Licencias'
CREATE TABLE [dbo].[Licencias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [PK_Empleados]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departamentoes'
ALTER TABLE [dbo].[Departamentoes]
ADD CONSTRAINT [PK_Departamentoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cargos'
ALTER TABLE [dbo].[Cargos]
ADD CONSTRAINT [PK_Cargos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cal_Nomina'
ALTER TABLE [dbo].[Cal_Nomina]
ADD CONSTRAINT [PK_Cal_Nomina]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Salida_Empleado'
ALTER TABLE [dbo].[Salida_Empleado]
ADD CONSTRAINT [PK_Salida_Empleado]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vacaciones'
ALTER TABLE [dbo].[Vacaciones]
ADD CONSTRAINT [PK_Vacaciones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Permisos'
ALTER TABLE [dbo].[Permisos]
ADD CONSTRAINT [PK_Permisos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Licencias'
ALTER TABLE [dbo].[Licencias]
ADD CONSTRAINT [PK_Licencias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------