/* Funções matematicas */

SELECT *
FROM sales.SalesOrderDetail

/* ROUND -> arredondamento de valores ROUND(coluna, NUM casas) as casas que ficarem depois do numero sugerido sao mudadas pra zero */
SELECT ROUND(linetotal, 2) as arredondado
FROM sales.SalesOrderDetail

/* SQRT -> raiz quadrada */
SELECT ROUND(SQRT(linetotal), 2) as raiz_arredondada
FROM sales.SalesOrderDetail

/* (+, -, /,) operações basicas * ... */
SELECT LineTotal * 2 as multiplicação, linetotal + linetotal as soma
FROM sales.SalesOrderDetail

