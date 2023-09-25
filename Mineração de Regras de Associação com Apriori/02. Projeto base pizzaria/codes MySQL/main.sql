select * from pedidos;
select max(data_pedido), min(data_pedido) from pedidos;

# ============================== SELECIONANDO ATRIBUTOS ==================================================
alter table pedidos drop column numero; # é so o numero
alter table pedidos drop column cliente; # nao tem o nome do cliente
alter table pedidos drop column endereco; # Nao é o real
alter table pedidos drop column telefone;  # Nao é o real
alter table pedidos drop column valor_pizza; # Deixaremos so o valor total
alter table pedidos drop column valor_entrega; # ja tem um atributo que informa se foi ou nao entrega
# Deixaremos valor_borda e valor_refigerante para depois substituir por variaveis booleanas
alter table pedidos drop column hora_entrega; # pode ser calculado por dois outros atributos

# =============================== TRANSFORMAÇÕES DOS DADOS =============================================
delete from pedidos 
where year(data_pedido) >= 2015; # não era pra ter depois de 2015, se tiver foi erro

# subistituindo as datas pelos dias da semana
# Usndo a função 
SELECT data_pedido, GetDiaSemana(data_pedido) from pedidos;

# Transformando a hora do pedido -> dividindo em periodo fraco, forte e de fechamento
# 17 - 20
# 20 - 22
# > 22
SELECT hora_pedido, GetPeriodo(hora_pedido) FROM pedidos;

# Transformação da borda e do refrigerante em variaveis booleanar(ou compra ou nao)
SELECT valor_borda, valor_refrigerante FROM pedidos;

SELECT valor_borda, GetBorda(valor_borda), valor_refrigerante, GetRefri(valor_refrigerante) FROM pedidos;

# PRecisamos achar uma maneira de diferenciar melhor o valor_total, uma vez que precisa ser mais generalizado para melhor funcionamento da mineração de regras
# Podemos agrupar os valores em INTERVALOS DE FREQUENCIA
SELECT valor_total FROM pedidos; # Vamos exportar para fazer o distribuição em python
SELECT count(valor_total), GetFaixaValor(valor_total) FROM pedidos GROUP BY GetFaixaValor(valor_total);

# Agora vamos transformar o campo tempo
SELECT MAX(tempo), MIN(tempo) FROM pedidos;
SELECT MINUTE(tempo) FROM pedidos; # Vamos exportasr esses dados para fazer outra distribuição de frequencia para o tempo
SELECT tempo, GetFaixaTempo(minute(tempo)) FROM pedidos;


# Visualizar os dados
# dias da semana
SELECT COUNT(*), GetDiaSemana(data_pedido) FROM pedidos GROUP BY GetDiaSemana(data_pedido);

SELECT hora_pedido, GetPeriodo(hora_pedido) FROM pedidos WHERE hour(hora_pedido) >= 22;
# Periodo do dia
SELECT COUNT(*), GetPeriodo(hora_pedido) FROM pedidos GROUP BY GetPeriodo(hora_pedido);
# Tipo da entrega
SELECT COUNT(*), tipo_entrega FROM pedidos GROUP BY tipo_entrega;
# Borda
SELECT COUNT(*), GetBorda(valor_borda) FROM pedidos GROUP BY GetBorda(valor_borda);
# Refrigerante
SELECT COUNT(*), GetRefri(valor_refrigerante) FROM pedidos GROUP BY GetRefri(valor_refrigerante);
# Valor total
SELECT COUNT(*), GetFaixaValor(valor_total) FROM pedidos GROUP BY GetFaixaValor(valor_total);
# Tempo pedido
SELECT COUNT(*), GetFaixaTempo(minute(Tempo)) FROM pedidos GROUP BY  GetFaixaTempo(minute(Tempo));


# ======================= SELECIONANDO OS ATRIBUTOS PARA COLOCAR NO .CSV ================================
SELECT 
	GetDiaSemana(data_pedido) as dia, 
    GetPeriodo(hora_pedido) as periodo, 
    tipo_entrega, 
	GetBorda(valor_borda) as borda,
    GetRefri(valor_refrigerante) as refrigerante,
    GetFaixaValor(valor_total) as valor_total,
    GetFaixaTempo(minute(Tempo)) as tempo
FROM 
	pedidos;

# Agora é so exportar os dados e usar em python

