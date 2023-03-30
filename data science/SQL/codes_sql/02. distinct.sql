/* discting -> omitir dados repetidos de um dataframe */

SELECT Firstname
FROM person.person;


/* sem suplicados */
SELECT DISTINCT firstname
FROM person.person;


/* ex02 -> quantos sobrenomes unicos temos em person.person */

SELECT DISTINCT lastname
FROM person.person;