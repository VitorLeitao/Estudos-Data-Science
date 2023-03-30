import pandas as pd

df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")

# Filtros booleanos -> df[codição] 
# or -> &, and -> |, not -> ~
players = df[(df.Name == 'Stephen Curry')  | ( df.Name == 'LeBron James')]


oders = df[df.Age >= 35]
print(players)

