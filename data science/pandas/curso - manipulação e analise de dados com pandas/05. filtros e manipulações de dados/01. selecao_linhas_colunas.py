import pandas as pd


df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

# Como pegar apenas colunas 
ages = df['Age'] # or df.Age

# Como pegar linhas especificas
df_simplificado = df[100:103]

# Fazendo os dois ao mesmo tempo : df.loc[linha_inicio: linha_finak, ['colunax', 'colunay']]
df_loc = df.loc[100:130, ['Name', 'Age']]

# como fazer a mesma coisa porem com intervalos ao inves de nomes nas colunas df.iloc[linha_inicio: linha_finak, coluna_inicio: coluna_finak]
df_iloc = df.iloc[3:10, 0:2]

# fazendo a mesma coisa porem sem ser em intervalos, ou seja, especificando
df_iloc2 = df.iloc[[1,2,3,4], [0, 1, 2]]






