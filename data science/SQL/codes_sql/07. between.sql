/* between -> é usados opara encontrar valores entre um valor minimo e maximo */

SELECT * 
FROM Production.Product
WHERE ListPrice BETWEEN 400 and 600;

/* not between */

SELECT * 
FROM Production.Product
WHERE ListPrice NOT BETWEEN 400 and 600;

/* between entre datas ano/mes/dia */


SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01';