/* CHECK CONSTRAINT -> ajuda a criar restrições de valores que podem ser inseridos em uma coluna 

faremos isso na hora de criar uma tabela, ao final dela

*/

CREATE TABLE carteira_motorista(
	RG INT NOT NULL,
	Nome VARCHAR(200),
	Idade INT CHECK (IDADE >= 18),
);

SELECT *
FROM carteira_motorista;

INSERT INTO carteira_motorista(RG, NOME, IDADE) /* CONMSEGUIMOS INSERIR NORMALMENTE */
VALUES (1234, 'VITOR MODESTO LEITAO', 19)



INSERT INTO carteira_motorista(RG, NOME, IDADE) /* RECEBEMOS UMA MENSAGEM DE ERRO POIS NAO ESTA ATENDENDO AS CONDIÇÕES QUE SETAMOS NO INICIO */
VALUES (12344, 'VITOR MODESTO LEITAO', 12)



/* outras restrições UNIQUE E NOT NULL -> UNIQUE nao permite adicionar valores que ja estão na tabela
										NOT NULL faz com que nao se possa adicionar valores sem colocar o valor da tabela escolhida como NOT NULL
*/

CREATE TABLE matricula_faculdade(
	CPF INT UNIQUE,
	Nome VARCHAR(200) NOT NULL,
	Idade INT CHECK (IDADE >= 18),
);


INSERT INTO matricula_faculdade(CPF, NOME, IDADE) /* RECEBEMOS UMA MENSAGEM DE ERRO POIS NAO ESTAMOS COLOCANDO O VALOR DE NOME, QUE EH NOT NULL */
VALUES (1223, ,12)

