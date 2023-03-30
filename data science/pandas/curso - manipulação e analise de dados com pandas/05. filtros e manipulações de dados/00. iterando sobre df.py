import pandas as pd

df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

for c in df.itertuples(): # vai retornar uma tupla com todas as caracteristicas daquela linha
    if c.Name == 'Stephen Curry':
        print(c)
        break


