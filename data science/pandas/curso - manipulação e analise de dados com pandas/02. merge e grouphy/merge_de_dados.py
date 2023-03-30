# Merge de dados - dentro de uma determinada coluna, vai pegar os valores que sao iguais em outra coluna e asssim junta-los ou adicionalos, dependendo do comando

import pandas

cadastro_a = {
    'id': ['AA3435', 'BB3949', 'CC4325'],
    'nome': ['vitor', 'suane', 'marcelo'],
    'idade' : [19, 18, 20],
}

cadastro_a = pandas.DataFrame(cadastro_a)


cadastro_b = {
    'id': ['DD9483', 'EE3349', 'AA3435'],
    'nome': ['daniel', 'fred', 'vitor'],
    'idade' : [20, 18, 19],
}

cadastro_b = pandas.DataFrame(cadastro_b)


registro_compras = {
    'id': ['DD9483', 'BB3949', 'BB3949', 'AA3435'],
    'data': ['2022-01-01', '2022-11-17', '2022-10-30', '2022-05-03'],
    'valor': [100, 200, 500, 120],
}

registro_compras = pandas.DataFrame(registro_compras)
print(registro_compras)

# Merge -- INNER JOIN
# vai pegar a interseção com relação ao id dos dois cadastros e juntar todas as infos
print("INNER JOIN\n")
inter = pandas.merge(cadastro_a, registro_compras, on=['id'], how='inner', indicator=True)
print(f'{inter}\n')

# tambem podemos filtrar quais colunas queremos e escolher como os nomes vao aparecer
inter = pandas.merge(cadastro_a, cadastro_b[['id', 'idade']], on=['id'], how='inner', suffixes=('_1', '_2'), indicator=True)
print(f'{inter}\n')


# Merge -- FULL JOIN
# vamos concatenar as informações das duas tabelas e tirar a interseção
print('\nFULL JOIN\n')
inter = pandas.concat([cadastro_a, cadastro_b], ignore_index = True)
inter = inter.drop_duplicates(subset='id')
print(f'{inter}\n')


#merge -- LEFT JOIN
# O comando vai pegar todos os ids do dataframe da esquerda e adicionar as informação que esses mesmos ids tem no dataframe da direita
print('\nLEFT JOIN\n')
inter = pandas.merge(cadastro_a, registro_compras, on=['id'], how='left', indicator=True)
print(f'{inter}\n')


#merge -- RIGHT JOIN
# O comando vai pegar todos os ids do dataframe da direita e adicionar as informação que esses mesmos ids tem no dataframe da esquerda
print('\nRIGHT JOIN\n')
inter = pandas.merge(cadastro_b, registro_compras, on=['id'], how='right', indicator=True)
print(f'{inter}\n')

#merge -- outer
# ele simplesmente junta todos os ids, unindo as informação de ids que estão na interseção
print('\nOUTER JOIN\n')
inter = pandas.merge(cadastro_b, registro_compras, on=['id'], how='outer', indicator=True)
print(f'{inter}\n')

