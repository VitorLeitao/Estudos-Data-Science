import pandas
import numpy

#introdução aos conceitos iniciais de dataframe



series = pandas.Series([7, 10, 15, 2, 5]) #colocamos dados em uma ecala começando de 0
 #dados coletados em fforma temporal sao chamados de serie

datas = pandas.date_range('20200626', periods = 3, freq="D") #setamos o começo - quantos periodos vamos ter - quanto tempo dura um perido(D, M, A...)

#criação de data frames
matriz = numpy.random.randn(3, 5)
data_frame = pandas.DataFrame(matriz, index = datas, columns = ['A', 'B', 'C', 'D', 'E']) # parametros = (matriz, linhas, colunas), linhas e colunas sao LISTAS
print(f"{data_frame}\n")


#outro exemplo
matriz2 = [["modesto", "ufpe", "1.78", "19", "CC"], 
           ["coelho", "unicap", "1,68", "18", "direito"]]
data_frame2 = pandas.DataFrame(matriz2, index = ["vitor", "suane"], columns=["sobrenome", "faculdade", "altura", "idade", "curso"])
print(f"{data_frame2}\n")



#outra forma de criar um dataframe
data_frame3 = pandas.DataFrame({"vitor": [1.78, "modesto", "ufpe"], # as keys do dict vao ser as colunas, enquanto o conteudo vai ser a matriz(as linhas vao ser em ordem numerica começando em 0)
                                "suane" : [1.64, "coelho", "unicap"],
                                "marcelo":[ 1.70, "andrade", "upe"],
                                })
print(f"{data_frame3}\n")