-- Databricks notebook source
SELECT count(*), -- CONTAR LINHAS NÃO NULAS (QUE CONTÉM VALOR)
       count(1), -- MESMO QUE O ANTERIOR /\
       count(idPedido) -- LINHAS NÃO NULAS DA COLUNA idPedido
FROM silver.pizza_query.pedido


-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT NULL -- FILTRAR VALORES NÃO NULOS

-- COMMAND ----------

SELECT descUF,
       count(*) as qtdePedidos -- NOMEAR A COLUNA DE CONTAGEM
FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo' -- DESCONSIDERAR O ESTADO DE SP

GROUP BY descUF -- AGRUPAR POR ESTADO
HAVING qtdePedidos >= 75 -- FILTRAR POR VALOR MINIMO

ORDER BY qtdePedidos DESC -- ORDENAR POR QUANTIDADE DECRESCENTE

LIMIT 5 -- LIMITAR LINHAS


-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE 'suco%' -- SELECIONAR VALOR QUE POSSUE A PALAVRA 'SUCO' E QUE CONTENHA OUTRAS INFORMAÇÕES

-- COMMAND ----------

SELECT descUF,
       flKetchup,
       count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup


