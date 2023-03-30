/* COUNT -> numeros de linhas da coluna X */

SELECT COUNT(FirstName)
FROM person.person;

/* count de nomes diferentes */

SELECT COUNT(DISTINCT FirstName)
FROM person.person;

/* ex01 -> eu quero saber quandos produtos temos cadastrados em nossa tabelada de produtos(production.product) */
SELECT COUNT(*)
FROM production.product;

/* ex02 -> eu quero saber quantos tamanhos de produtos temos cadastrados em nossa tabela */
SELECT COUNT(Size)
FROM production.Product;

/* ex03 -> eu quero saber quantos tamanhos diferntes de prpdutos eu tenho cadastrado em nossa tabela */
SELECT COUNT(DISTINCT size)
FROM production.Product;
