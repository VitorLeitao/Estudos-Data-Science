# -*- coding: utf-8 -*-
"""
Created on Fri Aug 11 15:45:17 2017

@author: Jones
"""
import pymysql
conexao = pymysql.connect(host='localhost', user='root', passwd='123456', db='mercado')
conexao

cursorVendas = conexao.cursor()
cursorVendaProdutos = conexao.cursor()
base = ''

cursorVendas.execute('select * from vendas')
for vendas in cursorVendas:
    print(vendas)
    quantidade = cursorVendaProdutos.execute('select prd.nome from venda_produtos vpr inner join produtos prd on vpr.idproduto = prd.idproduto where vpr.idvenda = ' + str(vendas[0]))
    i = 1
    for produtos in cursorVendaProdutos:
        print(produtos)
        
        if (i == quantidade):
            base = base + produtos[0]
        else:
            base = base + produtos[0] + ','
        i += 1
    
    base = base + '\n'
    
arquivo = open("base_importada.csv", "w")
arquivo.write(base)
arquivo.close()
    
cursorVendas.close()
cursorVendaProdutos.close()
conexao.close()