import pandas

# multiindex por array de array -> vai criar uma lista de tuplas que combinam duas ou mais arrays

arrays = [[1,2,2], ['vitor', 'suane', 'suane']]
"""
levels = [[1,2], [suane, vitor]]  -> agrupamos o array de arrays em niveis, cada um com os valores que se repetem
codes = [[0, 1, 1], [1, 0, 0]] -> codes sao o index no levels
"""
vitvit = pandas.MultiIndex.from_arrays(arrays, names=('number', 'names')) # vai apenas juntas cada qual com cada qual(mesmos index)
print(vitvit)


# multiindex por produto cartesiano

arrays = [[1,2], ['vitor', 'suane', 'dani']] # cada um dos numeros da array 1 vai se ligar a cada um da array 2
xuxu = pandas.MultiIndex.from_product(arrays, names=('number', 'names'))
print(xuxu)
