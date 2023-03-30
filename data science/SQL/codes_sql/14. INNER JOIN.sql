/* INNER JOIN -> basicamentefaz a interseção de duas tabelas com base em uma coluna pre-estabelecida */
/*
SELECT t1.c1, t1.c2, t2.c1, t2.c2
FROM tabela 1 as t1
INNER JOIN tabela 2 t2 on t1.c1 = t2.c3 (vai colocar as colunas do select juntando as informações onde a linha de t1.c1 é igual a linha de t2.c3
*/


/* vai pegar o businessentityid, first name e last name da tabela 1, e juntar com o emailaddres da linha com o mesmo businessentityid da tabela 2 */
SELECT t1.businessentityid, t1.firstname, t1.lastname, t2.emailaddress
FROM person.Person as t1
INNER JOIN person.EmailAddress as t2 on t1.BusinessEntityID = t2.BusinessEntityID; 

/* vamos dizer que queremos o listprice, nome do produto, nome da subcategoria (production.product and producition.productsubcategory)*/

SELECT t1.listprice, t1.name, t2.name
FROM Production.Product as t1
INNER JOIN Production.ProductSubcategory as t2 on t1.ProductSubcategoryID = t2.ProductSubcategoryID;




/* produto cartesiano -> simoplesmente juntar duas tabelas */

/* vai pegar as infos de person.emailaddress e jogar no person.person */
SELECT *
FROM person.Person as t1
INNER JOIN person.EmailAddress as t2 on t1.BusinessEntityID = t2.BusinessEntityID; 

/* vai pegar as infos de person.person e jogar no person.emailaddress */
SELECT *
FROM person.EmailAddress as t1
INNER JOIN person.Person as t2 on t1.BusinessEntityID = t2.BusinessEntityID; 


/* desafios */

/* ex01 -> queremos o businessentityid, name, phonenumbertypeid, phonenumber usando as tabelas person.phonenumbertype, person.personphone */

SELECT t1.businessentityid, t2.name, t1.phonenumbertypeid, t1.phonenumber
FROM person.PersonPhone as t1
INNER JOIN person.PhoneNumberType as t2 on t1.PhoneNumberTypeID = t2.PhoneNumberTypeID;

/* ex02 -> queremos o addressid, city, stateprovinceid, nome do estado( usando tabelas person.address e person.stateprovince) */

SELECT TOP 10 t1.addressid, t1.city, t1.stateprovinceid, t2.name
FROM person.Address as t1
INNER JOIN person.StateProvince as t2 on t1.StateProvinceID = t2.StateProvinceID;
