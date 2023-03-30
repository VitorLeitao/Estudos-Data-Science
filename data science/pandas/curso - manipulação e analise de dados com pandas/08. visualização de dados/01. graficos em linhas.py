import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# estilos de plotagem https://matplotlib.org/stable/plot_types/index
df = pd.read_csv('titanic_train.csv')

# Temos que definir um tamanho inicial para nosso grafico
plt.rcParams['figure.figsize'] = (10, 4) # (largura, altura)

# Vamos plotar a idade dos passageiros dos titanic
plt.plot(df.PassengerId, df.Age, '.-g') # a idade vai ser o eixo Y, e o index o eixo X
plt.title('Idade passageiros titanic')
plt.xlabel('index do passageiro,', size=15)
plt.ylabel('idade', size = 15)
plt.show()

