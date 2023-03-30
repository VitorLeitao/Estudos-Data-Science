/* INSERT INTO -> é a forma de inserir novos valores nas colunas de uma tabela 

INSERT INTO tabela(coluna 1, coluna2, ..)
VALUES
(value1, value2, ...),
(value1, value2, ...),
...
(value1, value2, ...),

Como pegar colunas de outras tabelas e botar na atural
INSERT INTO tabela_exportadora(coluna1)
SELECT coluna2
FROM tabela_importadora 


Como criar uma tabela clone de outra
SELECT * INTO  tabelaNova FROM TabelaAnterior
*/


INSERT INTO cadastros(cpf, nome, idade, sexo, mesesmatriculado)
VALUES
('11652374400', 'vitor modesto leitao', 19, 'm', 8),
('13763505482', 'Suane Coelho Santos' , 18, 'f', 6)


SELECT * 
FROM cadastros

/* copiando a tabela -> tabela backup*/
SELECT * INTO CadastrosBackup FROM cadastros;

SELECT *
FROM CadastrosBackup


/* Adicionando mais uma informação ao cadastro */
INSERT INTO cadastros(cpf, nome, idade, sexo, mesesmatriculado)
VALUES
('61670111415', 'Rildo Teixeira Leitao junior', 58, 'm', 25)


