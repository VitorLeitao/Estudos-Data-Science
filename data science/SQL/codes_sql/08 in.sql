/* IN -> color IN (blue, red) vai pegar todos as linhas que as cores sao blue or red*/


SELECT *
FROM person.Person
WHERE BusinessEntityID IN(1, 7, 12, 3); /* valores tem que estar entre a lista de valores pre-estabelecidos */

