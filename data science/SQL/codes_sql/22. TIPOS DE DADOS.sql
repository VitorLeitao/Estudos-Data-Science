/* Tipos de dados -> 

1. Boleanos  -> é iniciado como nulo e pode receber 1 ou 0( BIT) 

2. caracteres -> tamanho fixo: sempre ocupa uma quantidade fixa na memoria, independente se vc usa ou nao( CHAR )
			  -> tamanho variavel: ocupa apenas o espaço que ele ocupa na memoria( VARCHAR OR NVARCHAR )

3. numeros -> valores exatos : são valores inteiros( TINYINT, SMALLINT, INT, BIGINT ) essa ordem é crescente, ou seja, cada um vai suportanto um limite maior de tamanho do numero
		   -> valores decimais: fracionados, tendo uma precisao(quantidade de algarismos) e parte fracioonada(depois da virgula) ex: NUMERIC(6, 4) -> 32,6544 ( NUMERIC OR DECIMAL )
		   -> valores reias: tem uma precisão de aproximadamente 15 digitos ( REAL or FLOAT )

4. temporais -> DATE - armazena no formato aaaa/mm/dd
			 -> DATETIME - armazena no formato aaaa/mm/dd:hh:mm:ss (hora, minuto, segundo)
			 -> DATETIME2 - armazena no formato aaaa/mm/dd:hh:mm:sssssss
			 -> SMALLDATETIME - data e hora respeitando o limite de '1900-01-01:00:00:00' ate '2079-06-06:23:59:59'
			 -> TIME - horas, minutos, segundos e milissegundos tespeitando o limite respeitando o limite de '00:00:00.0000000' e '23:59:50.9999999'
			 -> DATETIMEOFFSET - permite armazenar informações de data e horas incluindo o fuso horario