/* Vamos aprender a criar as proprias tablas em SQL, para isso, precisamos antes saber algumas limitações que podem ser aplicadas as tabelas, sendo essas: 
not null -> nao pode valores null
unique -> força que todos os valores sejam diferentees
primary key -> not null + unique
foreing key -> identifica unicamente uma linha em outra tabela
check -> força uma condição especifica em uma coluna
defaut -> força um valor padrao quando nenhum valor é passado
*/


/* criando uma tabela que vai dar as caracteristicas de um canal do YouTube */

CREATE TABLE canal(
	CanalID int Primary Key,
	Nome VARCHAR(150) NOT NULL,
	NumInscritos INT DEFAULT 0,
	DataInicial DATETIME NOT NULL,
)

SELECT * 
FROM canal;

/* criando uma tabela que vai dar as caracteristicas dos videos de um canal do YouTube */

CREATE TABLE video(
	VideoID INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Vizualicacao INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	CanalID INT FOREIGN KEY REFERENCES canal(CanalID)
);

SELECT * 
FROM video;

/* ex01 -> encontre duas coisas na sua casa que podem tornar tabelas e crie 2 tabelas que tem no minimo 1 relacionamento com a outra */


/* tables clientes cadastrados smart fit */
CREATE TABLE cadastros(
	CPF VARCHAR(15) PRIMARY KEY,
	Nome VARCHAR(200) NOT NULL,
	Idade INT NOT NULL,
	Sexo CHAR NOT NULL,
	MesesMatriculado INT DEFAULT 0
);


/* table matruculas smart fit */
CREATE TABLE InfosMatricula(
	NumeroMatricula VARCHAR(15) PRIMARY KEY,
	DataMatricula DATETIME NOT NULL,
	Mensalidade INT DEFAULT 120,
	Unidade VARCHAR(100) NOT NULL,
	TipoPlano VARCHAR(10) DEFAULT 'padrao', 
	CPF VARCHAR(15) FOREIGN KEY REFERENCES cadastros(CPF)
);

SELECT *
FROM cadastros;

SELECT * 
FROM InfosMatricula;