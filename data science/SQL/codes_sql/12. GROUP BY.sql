/* group by -> divide o resultado da sua pesquisa em grupos, dividindo em grupos com as mesmas informações, por exemplo
GROUP BY middlename -> vai dividir em grupo de pessoas com o mesmo middle name
como dividimos as pessoas em grupos, podemos contar quantas pessoas tem em um subgrupo, fazer a media, somar, entre outras possibilidades
*/

SELECT *
FROM sales.SalesOrderDetail;

SELECT specialofferid, SUM(unitprice) as "SOMA"
FROM sales.SalesOrderDetail
GROUP BY SpecialOfferID;  /* vai agrupar os que sao iguais e pegar a soma dos que são iguais*/

/* quantos de cada produto foi vendido */
SELECT ProductID as "produto", COUNT(ProductID) as "quantidade"
FROM sales.SalesOrderDetail
GROUP BY ProductID;

/* quantos nomes de cada nome estão cadastrados no nosso sistema */
SELECT firstname as "nome", COUNT(firstname) as "contagem"
FROM person.person
GROUP BY firstname;

/* queremos saber a media de preço para os produtos por cores */
SELECT color, AVG(listprice)
FROM Production.Product
GROUP BY color;

/* exercicios */
/* ex01 -> eu preciso saber quantas pessoas tem o mesmo middle name */
SELECT MiddleName as "nome" , COUNT(middlename) as "quanridade"
FROM person.person
GROUP BY MiddleName;

/* ex02 -> Eu preciso saber em media qual eh a quantidade que cada produto é vendido na loja */
SELECT ProductID as "tipo_produto", AVG(orderqty) as "quantidade"
FROM sales.SalesOrderDetail
GROUP BY ProductID;

/* ex03 ->eu quero saber quais foram os 10 produtos que no total tiveram os maiores valores de venda por produto do maior valor para o menor */

SELECT TOP 10 PRODUCTID as "produto", SUM(linetotal) as "soma_preco"
FROM sales.SalesOrderDetail
GROUP BY productid
ORDER BY SUM(linetotal) desc;

/* ex04 -> eu preciso saber quantos vezes os produtos foram vendidos e qual a quantidade media de produtos temos cadastrados nas nossas ordem de serviço(workorder), agrupados pelo productid */
SELECT ProductID as "produto", COUNT(OrderQty) as "soma", AVG(OrderQty) as "media"
FROM Production.WorkOrder
GROUP BY ProductID;

SELECT *
FROM Production.WorkOrder