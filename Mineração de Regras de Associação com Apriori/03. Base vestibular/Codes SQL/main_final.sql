SELECT * FROM socioeconomica;

SELECT * FROM socioeconomica 
WHERE curso = 'CIÊNCIA DA COMPUTAÇÃO - BACHARELADO';
USE vestibular;
# ========================== SELEÇÃO DOS ATRIBUTOS(KDD) ============================== 
ALTER TABLE socioeconomica DROP COLUMN inscricao;

# =========================== PREPROCESSAMENTO(KDD) ==========================
# Temos varias idades que não sao validas
SELECT * FROM socioeconomica 
WHERE idade < 14 or idade > 80;

# Vamos substituir as idades irregulares pela media das idades
SELECT AVG(idade) FROM socioeconomica WHERE idade > 14 and idade < 80; # 20 anos
SET SQL_SAFE_UPDATES = 0;

UPDATE socioeconomica SET idade = 20
WHERE idade < 14 or idade > 80;

#========================== TRANSFORMAÇÂO DOS DADOS(KDD) =====================================
# Transformando idade em intervalos de frequencia
SELECT idade, GetFaixaIdade(idade) FROM socioeconomica;

# Transformação do total de pontos
SELECT total_pontos, GetClassePontos(total_pontos) FROM socioeconomica;

# Transformação Nome do curso
SELECT curso, GetNomeCurso(curso) FROM socioeconomica;

# Adicionando a coluna - periodo do curso
SELECT curso, GetPeriodoCurso(curso) FROM socioeconomica;

# Transformação no grau do curso
SELECT curso, GetGrauCurso(curso) FROM socioeconomica;

# ====================== Visualização dos dados agrupados ==================
# Fazemos isso para tirar alguns insights

# TOTAl de pontos
SELECT COUNT(*), GetClassePontos(total_pontos) FROM socioeconomica GROUP BY GetClassePontos(total_pontos);

# Curso
SELECT COUNT(*), GetNomeCurso(curso) FROM socioeconomica GROUP BY GetNomeCurso(curso);

# Grau do curso
SELECT COUNT(*), GetGrauCurso(curso) FROM socioeconomica GROUP BY GetGrauCurso(curso);

# Periodo do curso
SELECT COUNT(*), GetPeriodoCurso(curso) FROM socioeconomica GROUP BY GetPeriodoCurso(curso);

# Sexo
SELECT COUNT(*), sexo FROM socioeconomica GROUP BY sexo;

# IDade
SELECT COUNT(*), GetFaixaIdade(idade) FROM socioeconomica GROUP BY GetFaixaIdade(idade);

# Local origem
SELECT COUNT(*), local_origem FROM socioeconomica GROUP BY local_origem;

# tipo_instituicao
SELECT COUNT(*), tipo_instituicao FROM socioeconomica GROUP BY tipo_instituicao;

# renda_familiar
SELECT COUNT(*), renda_familiar FROM socioeconomica GROUP BY renda_familiar;

# tipo_residencia
SELECT COUNT(*), tipo_residencia FROM socioeconomica GROUP BY tipo_residencia;


# grau_escolaridade
SELECT COUNT(*), grau_escolaridade FROM socioeconomica GROUP BY grau_escolaridade;

# motivo
SELECT COUNT(*), motivo FROM socioeconomica GROUP BY motivo;

# transporte
SELECT COUNT(*), transporte FROM socioeconomica GROUP BY transporte;

# instrucao_pai
SELECT COUNT(*), instrucao_pai FROM socioeconomica GROUP BY instrucao_pai;

# instrucao_mae
SELECT COUNT(*), instrucao_mae FROM socioeconomica GROUP BY instrucao_mae;

# automovel
SELECT COUNT(*), automovel FROM socioeconomica GROUP BY automovel;

# internet
SELECT COUNT(*), internet FROM socioeconomica GROUP BY internet;

# livros
SELECT COUNT(*), livros FROM socioeconomica GROUP BY livros;

# leitura
SELECT COUNT(*), leitura FROM socioeconomica GROUP BY leitura;


# Pegando os atributos que precisamos
SELECT 
		GetClassePontos(total_pontos) as pontos,
		GetNomeCurso(curso) as curso,
		GetGrauCurso(curso) as grau,
        GetPeriodoCurso(curso) as periodo,
        sexo,
        GetFaixaIdade(idade) as idade,
        local_origem,
        tipo_instituicao,
        renda_familiar,
        tipo_residencia,
        grau_escolaridade,
        motivo,
        transporte,
        instrucao_pai,
        instrucao_mae,
        automovel,
        livros,
        leitura,
        internet
FROM 
		socioeconomica;

