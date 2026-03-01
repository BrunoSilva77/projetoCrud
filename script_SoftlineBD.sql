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
CREATE TABLE [Clientes] (
    [Codigo] int NOT NULL,
    [Nome] nvarchar(60) NOT NULL,
    [Fantasia] nvarchar(100) NOT NULL,
    [Documento] nvarchar(max) NOT NULL,
    [Endereco] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Clientes] PRIMARY KEY ([Codigo])
);

CREATE TABLE [Produtos] (
    [Codigo] int NOT NULL,
    [Descricao] nvarchar(60) NOT NULL,
    [CodigoBarras] nvarchar(14) NOT NULL,
    [ValorVenda] decimal(18,2) NOT NULL,
    [PesoBruto] decimal(18,2) NOT NULL,
    [PesoLiquido] decimal(18,2) NOT NULL,
    CONSTRAINT [PK_Produtos] PRIMARY KEY ([Codigo])
);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20260301040939_CriacaoSemIdentity', N'10.0.3');

INSERT INTO Usuarios (Login, Senha) VALUES ('admin', '1234');
GO

COMMIT;
GO

