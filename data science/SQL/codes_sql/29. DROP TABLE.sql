/* DROP TABLE -> como excluir uma tabela do banco de dados
DROP TABLE NomeTabela

não podemos dropar tabelas que sao referenciadas por outras tabela
*/



CREATE TABLE teste2(
id int primary key,
nome varchar(150) not null unique,
categoria varchar(200) not null,
dataCriacao datetime not null
);

SElECT * 
FROM teste2;

DROP TABLE teste2;

/* Como remover apenas os valores de uma tabela */
TRUNCATE TABLE teste2;