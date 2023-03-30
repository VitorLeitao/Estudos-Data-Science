/* LIKE -> quando queremos procurar um nome como vitor com base em uma parte dele "vit" (so um exemplo, nao precisa necessariamente ser um nome) */

SELECT *
FROM person.Person
WHERE FirstName like 'ron%'; /* vai pegar todos os nomes que começam com ro */

SELECT * 
FROM person.person
WHERE FirstName like '%to'; /* vai pegar os nomes cujo final sweja to , caso tenha %to_, so pode ter uma letra apos o to*/

SELECT *
FROM person.person
WHERE firstname like '%al%';