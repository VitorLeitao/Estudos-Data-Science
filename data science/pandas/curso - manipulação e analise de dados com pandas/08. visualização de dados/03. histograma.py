import pandas as pd
import matplotlib.pyplot as plt

# Histograma é um grafico usado para medir a frequencia de um banco de dados
df = pd.read_csv('titanic_train.csv')
plt.rcParams['figure.figsize'] = (10, 4)


plt.hist(df.Age, color='green')
plt.xlabel('idade')
plt.ylabel('Frequencia')
plt.show()
