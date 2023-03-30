import pandas as pd
import numpy
# Importando dataframes

# .csv
df1 = pd.read_csv('italy-covid-daywise.csv')

# .data
df2 = pd.read_csv('iris.data')

# exel: pd.read_exel('nome.xlsx'), podemos convertyer dados tambem



# Como exportar dados
df = pd.DataFrame({
    'nome': ['vitor', 'suane', 'marcelo'],
    'sobrenome': ['modesto', 'coelho', 'andrade'],
    'idade': [19, 18, 21],
    'faculdade': ['ufpe', 'unicap', 'upe']
})

df.to_csv('person.csv') 
df.to_excel('person.xlsx')