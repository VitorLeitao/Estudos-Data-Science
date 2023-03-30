# esse exercicio consiste em a partir de um banco de dados de clientes cadastrados e das compras realizadas, fazer um merge a partir do ID, juntando assim as informações de cadastro com as compras realizadas

import pandas

# primeiramente vamos criar um dataframe de clientes cadastrados
dict_cadastro = {
    'id': [],
    'nome': [],
    'idade': [],
    'faculdade': [],
}
c = 1
while True:
    # lendo as infos
    print(f'cliente {c}')
    id = input('digite o id: ')
    if(id == '-1'):
        break
    
    nome = input('Digite o nome: ')
    idade = int(input('digite a idade: '))
    faculdade = input('digite a faculdade: ')
    # adicionando ao dicionario
    dict_cadastro['id'].append(id)
    dict_cadastro['nome'].append(nome)
    dict_cadastro['idade'].append(idade)
    dict_cadastro['faculdade'].append(faculdade)
    c+=1

data_frame_clientes = pandas.DataFrame(dict_cadastro)


# agora vamos criar o dataframe de compras realizadas
dict_compras = {
    'id' : [],
    'valor' : [],
    'data' : [],
    'categoria': [],
}
c = 1
while True:
    # lendo as infos
    print(f'compra {c}')
    id = input('digite o id: ')
    if(id == '-1'):
        break
    
    valor = int(input('Digite o valor da compra: '))
    data = input('digite a data ano-mes-dia: ')
    categoria = input('digite a categoria da compra: ')
    # adicionando ao dicionario
    dict_compras['id'].append(id)
    dict_compras['valor'].append(valor)
    dict_compras['data'].append(data)
    dict_compras['categoria'].append(categoria)
    c+=1

data_frame_compras = pandas.DataFrame(dict_compras)

# Fazendo um merge dos dois dataframes
merge = pandas.merge(data_frame_compras, data_frame_clientes, on=['id'], how='right', indicator=True)
print(merge)
