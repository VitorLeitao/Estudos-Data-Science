import pandas as pd

matriz2 = [['vitor', "modesto", "ufpe", "1.78", "19", "CC"], 
           ['suane', "coelho", "unicap", "1,68", "18", "direito"]]
df = pd.DataFrame(matriz2, columns=['nome', "sobrenome", "faculdade", "altura", "idade", "curso"])
print(f"{df}\n")


# FUNÇÃO MELT() -> vai fazer um produto cartesiano entre o id_vars e os valores do value_varscartesiadno, nesse exemplo:
# id_vars <-> sobrenome
# id_vars <-> altura 
print(pd.melt(df, id_vars=['nome'], value_vars=['sobrenome', 'altura']))

# outro exemplo: adicionando valor a id_vars, apenas adicionaremos uma coluna, mas nao mudaria as linhas do produto cartesiano
print(pd.melt(df, id_vars=['nome', 'sobrenome'], value_vars=['idade', 'altura'], var_name='coluna_origem'))


# caso nao coloquemos nada no values_vars, vai fazer o produto cartesiano com todas as colunas
print(pd.melt(df, id_vars=['nome', 'sobrenome'], var_name='coluna_origem'))
