/* ALTER TABLE -> como alterar a estrutura de uma tabela
ALTER TABLE NomeTabela
AÇÃO

ações: ADD, remover, or alterar uma coluna
	setar valores padroes para uma coluna
	add ou remover restrições pra uma coluna
	renomear uma tabela
*/

CREATE TABLE youtube_infos_canais(
id int primary key,
nome varchar(150) not null unique,
categoria varchar(200) not null,
dataCriacao datetime not null
)

SELECT *
FROM youtube_infos_canais


/* adicionar colunas */
ALTER TABLE youtube_infos_canais
ADD inscritos int

/*alterar algum limite da coluna */
ALTER TABLE youtube_infos_canais
ALTER COLUMN nome varchar(200) NOT NULL

/* MUDAR NOME DA COLUNA */
EXEC sp_RENAME 'youtube_infos_canais.id', 'ID', 'COLUMN' /* para alterar a tabela é so tirar o 'column' */

