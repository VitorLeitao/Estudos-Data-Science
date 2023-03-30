import pandas as pd


df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

# Como ordenar valores, colocamos uma ou varias colunas, as extras sao usadas como criterio de desempate
# Tambem podemos mudar a ordem, podendo ser ascendente ou descendente
df2 = df.sort_values(["Age", "Number"], ascending=False)
print(df2.to_string())