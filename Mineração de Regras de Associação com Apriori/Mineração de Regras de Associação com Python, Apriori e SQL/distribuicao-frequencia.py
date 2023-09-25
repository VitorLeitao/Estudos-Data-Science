# -*- coding: utf-8 -*-
"""
Created on Mon Aug  7 17:34:05 2017

@author: Jones
"""

import matplotlib.pyplot as plt
from numpy import genfromtxt

dados = genfromtxt('valor_total.csv')
histograma = plt.hist(dados, bins="sturges")
histograma = plt.hist(dados, bins="scott")
histograma = plt.hist(dados, bins="fd")
histograma = plt.hist(dados, bins=5)
histograma = plt.hist(dados)
