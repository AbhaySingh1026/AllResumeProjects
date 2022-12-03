IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220825031641_initial')
BEGIN
    CREATE TABLE [Airlines] (
        [Id] int NOT NULL IDENTITY,
        [Name] Varchar(50) NOT NULL,
        [FromCity] Varchar(30) NOT NULL,
        [ToCity] Varchar(30) NOT NULL,
        [Fare] int NOT NULL,
        CONSTRAINT [PK_Airlines] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220825031641_initial')
BEGIN
    CREATE UNIQUE INDEX [IX_Airlines_Name] ON [Airlines] ([Name]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220825031641_initial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20220825031641_initial', N'6.0.8');
END;
GO

COMMIT;
GO

