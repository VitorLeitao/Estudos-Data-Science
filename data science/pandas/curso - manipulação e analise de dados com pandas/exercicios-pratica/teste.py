import pandas as pd

df = pd.read_csv('titanic_train.csv')

print(df['Age'].mean())
