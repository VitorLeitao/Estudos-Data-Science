/* HAVING - é muito usado com GRUP BY pra filtrar os dados agrupados pelo GROUP BY (WHERE para dados agrupados)
having x where:
having é aplicado depois que os dados foram agrupados, enquanto o where é aplicado antes
*/


/* vai agrupar as pessoas com mesmo nome, com a condição que sejam ao menos 16 pessoas na contagem */
SELECT	firstname, COUNT(firstname) as "quantidade"
FROM person.Person
GROUP BY firstname
HAVING COUNT(firstname) > 15;

/* queremos saber quais produtos tem a venda total entre 160k e 400k */

SELECT productid,SUM(LINETOTAL) as "total"
FROM sales.SalesOrderDetail
GRoUP BY productid
HAVING SUM(linetotal) BETWEEN 160000 AND 400000;


/* WHERE AND HAVING no mesmo projeto */
/* queremos saber quais nomes tem ocorrencia >= 10 e que o title eh mr */
SELECT FirstName, COUNT(firstname) as "quantidade"	
FROM person.person
WHERE title = 'Mr.'
GROUP BY firstname
HAVING COUNT(firstname) >= 10;


/* ex01 -> estamos querendo identificar as provincias(stateproviceid) com o maior numero de cadastros no nosso sistema, então é preciso
encontrar quais provincias(stateprovinceid) estao registrados no banco de dados mais que 100 vezes */

SELECT StateProvinceID, COUNT(StateProvinceID) as "quantidade"
FROM person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 100;

/* ex02 -> sendo que se trata de uma multinacional os gerentes queres saber quais produtos(productid) não estão trazendo em media no minimo 1 milhao
 em total de vendas(linetotal)
 */

 SELECT ProductID, AVG(linetotal)
 FROM sales.SalesOrderDetail
 GROUP BY ProductID
 HAVING AVG(linetotal) > 1000000;





