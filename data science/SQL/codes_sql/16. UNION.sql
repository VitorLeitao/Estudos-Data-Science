/* UNION -> combina	dois ou mais resultados de um select em apenas um resultado e --removendo as repetidas-- 
vai juntar uma coluna com a outra, de dois SELECTS diferentes, desde que os tipos primitivos sejam iguais
*/


/* tabelas iguais */
SELECT TOP 10 firstname, middlename
FROM Person.Person
WHERE FirstName LIKE '%al%'
UNION
SELECT TOP 10 firstname, MiddleName
FROM person.person
WHERE MiddleName LIKE 'A%'


/* tabelas diferentes */
SELECT TOP 10 BusinessEntityID
FROM Person.Person
UNION
SELECT TOP 10 ProductID
FROM Production.Product
