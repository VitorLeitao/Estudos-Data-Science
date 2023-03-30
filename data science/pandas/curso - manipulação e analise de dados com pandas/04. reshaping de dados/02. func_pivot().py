import pandas
import numpy


# vamos montar um dataframe de pessoas que compraram em uma detrminada loja em um periodo de 10 dias
dias = pandas.date_range(start='20190101', periods = 10)

pessoas = ['vitor', 'suane', 'italo']

nomes = []
gasto = []
for i in range(10):
    nomes.append(numpy.random.choice(pessoas))
    gasto.append(int(numpy.random.rand() * 100))

dataframe = pandas.DataFrame({
    'Dia':dias,
    'clientes': nomes,
    'valor': gasto,
})
print(dataframe)
print('\n')


# agora, usando a função, queremos reagurpar para ficar um data frame na forma de:
# A função pivot serve pra reagruparmos as colunas, podendo converter uma certa coluna pra index, columns e values
dataframe = dataframe.pivot(index='Dia', columns='clientes', values='valor')
print(dataframe)