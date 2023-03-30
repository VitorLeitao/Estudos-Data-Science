import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('titanic_train.csv')
plt.rcParams['figure.figsize'] = (10, 4)


# plt.scatter(df.X, df.Y, color='red') -> estilo de grafico que mostra a distruição por um marker, sem a ultilização de linhas

plt.scatter(df.PassengerId, df.Age, color='green', marker='.')
plt.show()