/* SUBUERY -> Vai nos ajudar a pegar informações de uma tabela e usar em outra tabela
usamos um select dentro de outro select

um exemplo comum é pegar os ids que vao ser usados na primeira tabela na segunda tabela
*/


/* mesma tabela */
/* queremos todos os produtos que tenham um preço maior que a media da mesma tabela */

SELECT *
FROM production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

/* tabelas diferentes */
/* queremos o nome de todos os funcionarios(person.person) que tem o cargo de 'Design engineer'(humanresources.employee) */

SELECT firstname
FROM person.Person
WHERE BusinessEntityID IN(
	SELECT BusinessEntityID
	FROM HumanResources.Employee
	WHERE JobTitle = 'Design engineer'
)

/* podemos fazer a mesma ação com INNER JOIN */ 
SELECT t1.FirstName
FROM person.person as t1
INNER JOIN HumanResources.Employee as t2 ON t1.BusinessEntityID = t2.BusinessEntityID
WHERE t2.JobTitle = 'Design engineer'

/* DESAFIO 
-- Encontre para mim todos os endereços que estão no estado de 'alberta', PODE TRAZER todas as infos usando as tabelas person.address e 
person.stateprovince
*/

SELECT addressline1
FROM person.Address
WHERE StateProvinceID IN(
	SELECT StateProvinceID
	FROM person.StateProvince
	WHERE name = 'alberta'
	)