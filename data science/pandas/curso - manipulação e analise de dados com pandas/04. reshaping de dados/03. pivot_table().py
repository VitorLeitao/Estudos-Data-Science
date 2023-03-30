import pandas
import numpy

# basicamente a mesma cois que pivot, com a diferença que: 
# a diferença para pivot eh que em pivottable podemos colocar index de mesmo valor

carros_vendidos = [4, 6, 7, 9]
dias = ['20220101', '20220101', '20220101', '20220101']
nomes = ['vitor', 'suane', 'dodo', 'vitor']

dataframe = pandas.DataFrame(
    {
        'dias': dias,
        'nomes': nomes,
        'vendas': carros_vendidos,
    }
)

print(dataframe)
print('\n')

dataframe = pandas.pivot_table(dataframe, index = 'dias', columns='nomes', values='vendas', aggfunc='sum') # precisamos escolher qual agrupamento faremos, pois quando tivermos duas colunas iguais na mesma linha, teriamos mais de um valor, entao temos que informar o que faremos com tais valores

print(dataframe)
print('\n')