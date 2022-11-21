/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductName]
      ,[ProductFinishedGoodsFlag]
      ,[ProducColor]
      ,[ProducSize]
      ,[ProductLine]
  FROM [AWStageDB].[Production].[Product]