/* exercicios fundamentos sql*/

/* ex01 -> quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares (product.production) */
SELECT COUNT (*)
FROM Production.Product
WHERE ListPrice > 1500;

/* ex02 -> quantas pessoas temos cujo sobrenome que inicia com a letra P? (person.person)*/
SELECT COUNT (*)
FROM PERSON.PERSON
WHERE lastname like 'p%';

/* ex03 -> em quantas cidades unicas estão cadastrados nossos clientes? (person.address)*/
SELECT COUNT (DISTINCT city)
FROM person.address;

/* ex04 -> Quais são as cidades unicas que temos cadastradas em nossos sistema? */
SELECT DISTINCT city
FROM person.Address;

/* ex05 -> quantos produtos vermelhos tem preço entre 500 a 1000 dolares? */
SELECT COUNT(*)
FROM Production.product
WHERE color = 'red' and ListPrice BETWEEN 500 and 1000;

/* ex06 -> quantos produtos cadastrados tem a palavra 'road' no nome deles? */
SELECT COUNT (*)
FROM Production.product
WHERE name like '%road%';