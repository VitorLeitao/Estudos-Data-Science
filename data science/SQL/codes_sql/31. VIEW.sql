/* VIEWS -> Basicamente vai pegar como base uma tabela, e a partir dela vai criar outra com apenas algumas colunas, simplificando a tabela inicial*/

CREATE VIEW nomes AS
SELECT Firstname, middlename, lastname
FROM person.person
WHERE Title = 'Ms.'

SELECT * FROM nomes