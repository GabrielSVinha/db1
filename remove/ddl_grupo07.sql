USE [hotel]

ALTER TABLE [dbo].[produtos] DROP CONSTRAINT [servicoId]
ALTER TABLE [dbo].[produtos] DROP CONSTRAINT [quartoProd]
ALTER TABLE [dbo].[dependentes] DROP CONSTRAINT [dependenteId]
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [quartoUser]

DROP TABLE IF EXISTS servicos
DROP TABLE IF EXISTS quartos
DROP TABLE IF EXISTS produtos
DROP TABLE IF EXISTS dependentes
DROP TABLE IF EXISTS clientes
