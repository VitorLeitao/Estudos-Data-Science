/* DATEPART -> extrair informações de uma coluna (como pegar um mes de uma data completa)
https://learn.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver16
*/


SELECT SalesOrderID, DATEPART(MONTH, orderdate) as month
FROM sales.SalesOrderHeader;

/* queremos agrupar por ano e extrair a media de cada ano */
SELECT AVG(TOtaldue) as media, DATEPART(YEAR, orderdate) as year
FROM sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, orderdate);

/* ex01 -> queremos extrair da tabela sales.salesorderheader os meses, anos e dias de cada produto */
SELECT salesorderid,  DATePART(YEAR, orderdate) as year, DATePART(MONTH, orderdate) as month, DATePART(DAY, orderdate) as day
FROM sales.SalesOrderHeader;