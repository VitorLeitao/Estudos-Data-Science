/* max -> retorna o maximo 
   min -> retorna o minimo
   sum -> soma todas as linhas e retorna um resultado 
   avg -> retorna a media
*/
SELECT TOP 10 max(linetotal) as "Maximo"
FROM sales.SalesOrderDetail;


SELECT TOP 10 min(linetotal) as "Minimo"
FROM sales.SalesOrderDetail;


SELECT TOP 10 sum(linetotal) as "Soma"/* retorna a soma dos top 10 elementos do linetotal */
FROM sales.SalesOrderDetail

SELECT TOP 10 AVG(linetotal) as "Media"
FROM sales.SalesOrderDetail

