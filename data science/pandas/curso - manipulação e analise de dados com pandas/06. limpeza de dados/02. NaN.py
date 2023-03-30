# Usaremos a função df.fillna(condição)

import pandas as pd
import numpy as np

datas = pd.date_range('20230202', periods=60, freq='D')
df = pd.DataFrame(np.random.randn(60,5), index = datas, columns=list("ABCDE"))

df['F'] = df.A[df.A > 0] # vai ficar com algumas valores NaN, pois nem todas as linhas de A sao > 0

# criando copias para exemplo
df2 = df.copy()
df3 = df.copy()
df4 =  df.copy()
# removendo linhas NaN
df2.dropna() 

# preechendo valores NaN com valores( mean, max, min, sum, value, ..)
df3 = df3.fillna(np.mean(df3.F)) # podemos especificar qual coluna iremos substituir df3 = df3.F.fillna(np.mean(df3.F))


# substituindo por numero
df4 = df4.fillna(value = 4)
print(df4)