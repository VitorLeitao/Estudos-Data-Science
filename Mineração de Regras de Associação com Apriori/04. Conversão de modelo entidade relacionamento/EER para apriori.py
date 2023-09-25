# Modelo EER - regras de associação
import pymysql
# Estamos fazendo uma conexão entre o python e o mysql
conexao = pymysql.connect(host='localhost', user='root', passwd='Vitor_m26', db='mercado')

# Instanciando
cursor_vendas = conexao.cursor() # Tabela das vendas
cursor_vendas_produtos = conexao.cursor() # Tabela de ligação das vendas
base = ''

cursor_vendas.execute('select * from vendas') # Busca dados dos produtos
for vendas in cursor_vendas:
    print(vendas)
    quantidade = cursor_vendas_produtos.execute(f'SELECT t2.nome FROM venda_produtos as t1 inner join produtos as t2 ON t1.idproduto = t2.idproduto where t1.idvenda = {str(vendas[0])}') # Vai pegar apenas os produtos vendidos na venda X
    i = 1
    for produto in cursor_vendas_produtos:
        print(produto)
        if i == quantidade:
            base += produto[0]
        else:
            base += produto[0] + ',' # Pegamos apenas o nome
        i+=1
    base += '\n'

arquivo = open('base_importada.csv', 'w')
arquivo.write(base)
arquivo.close

cursor_vendas.close()
cursor_vendas_produtos.close()
conexao.close()






