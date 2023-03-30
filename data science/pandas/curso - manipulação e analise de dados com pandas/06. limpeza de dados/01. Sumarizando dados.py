import pandas as pd

df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

# como saber os tipos de dados das colunas
tipos = df.dtypes
print(tipos, end = '\n')
# Como ter um resumo das informações de cada uma das colunas(media, soma, minimo, maximo, ...)
descricao = df.describe()
print(descricao)


