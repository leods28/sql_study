-- Databricks notebook source
SELECT * -- SELECIONE TODAS AS COLUNAS (*) DA TABELA
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT descItem,
      vlPreco,
      21 + 21 as vl42
FROM silver.pizza_query.produto
