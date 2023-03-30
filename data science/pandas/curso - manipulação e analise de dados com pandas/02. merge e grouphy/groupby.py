import pandas
import numpy

# \Vai agrupar os valores, ou seja, dentro de uma coluna especificada, ele vai unir os valores que sao iguais, por exemplo, em A ele vai agrupar os verdadestos e falses
df = pandas.DataFrame({'a': ['true', 'false', 'false', 'true'],
                        'b': ['um', 'dois', 'tres', 'quatro'],
                        'c': numpy.random.randn(4)})

print(df)
print(df.groupby(['a']).sum())
print(df.groupby(['b']).sum())
print(df.groupby(['a']).mean()) # MEDIA

# agrupando duas colunas
print(df.groupby(['a', 'b']).sum())

