import pandas as pd

df = pd.read_csv("https://cdncontribute.geeksforgeeks.org/wp-content/uploads/nba.csv")
print(df.head(10))

# FUNÇÃO STACK() - para cada indice, as colunas viram subindices com seus proprios valores
# antes tinhamos linhas X, Y, Z, e colunas  A B C
# agora para X, teremos subindices A B C, ..., para Z teremos os subindices A B C

df_stack = df.stack()
print(df_stack)

# FUNÇÃO UNSTACK() -> volta ao normal

df_stack = df_stack.unstack()
