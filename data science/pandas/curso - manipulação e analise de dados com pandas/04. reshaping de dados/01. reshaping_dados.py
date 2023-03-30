import pandas
import numpy
# reshape é quando mudamos a ordem e numero de linhas e colunas, mas prezervando a quantidade de valores
datas = pandas.date_range('20220101', periods=6)

df = pandas.DataFrame(numpy.random.randn(6,4), index=datas, columns=['A', 'B', 'C', 'D'])
print(df)
print('\n')

# Como fazer com que linhas virem colunas
dataframe_2 = df.T



# Como dar um reshape: reshape(num_linhas, num_colunas) 
values = df.values # pega so a matriz
print (values.reshape(2, 12)) # linhas_iniciais * colunas_iniciais = linhas_final * colunas_final


