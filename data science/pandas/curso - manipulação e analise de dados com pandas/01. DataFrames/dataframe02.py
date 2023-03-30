# Como adicionar colunas ao dataframe
import pandas
import numpy
datas = pandas.date_range("20200626", periods = 50, freq="D")
matriz = numpy.random.randn(50, 4)
colunas = ["A", "B", "C", "D"]
data_frame = pandas.DataFrame(matriz, index = datas, columns=colunas)
linhas_colunas = data_frame.shape # fornece a quantidade de linhas e colunas no data frame, respectivamente
#data_frame.head(5) # pega as 5 primeiras linhas

# Cmo add
data_frame['F'] = 10 # colocamos uma nova coluna com todas suas linhas possuindo o valor 10
data_frame['G'] = range(50)
data_frame['multiplicacao'] = data_frame['A'] * data_frame['G'] # cada linha X da nova coluna, sera a multiplicação do elemento da coluna A linha X pela coluna G linha X
data_frame['C'] = "vitinho" # tambem podemos alterar colunas ja existentes
print(data_frame)