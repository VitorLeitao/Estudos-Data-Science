import pandas as pd


df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

# numero de valores unicos das colunas: 
unicos = df.nunique()

# numero de valores unicos das linhas: 
unicos = df.nunique(axis = 1)

# removendo linhas que são exatamente igual a outras
df2 = df.drop_duplicates()

# Mas podemos analisar em relação a uma coluna especifica
df3 = df.drop_duplicates(subset="Age") # df.drop_duplicates(subset="Age", keep='last') vai fazer com que a duplicada que fique no df seja a ultima encontrada, keep=False remove todas as duplicadas
