/* UPDATE -> 

UPDATE NomeTabela
Set Coluna1 = valor_novo
	Coluna2 = valor_novo
	...
WHERE condição
*/

/* alterando o tempo matriculado de vitor(de 8 para 10) */

UPDATE cadastros
SET mesesmatriculado = 10
WHERE CPF = '11652374400';

SELECT *
FROM cadastros;