/* SELF JOIN -> vai agrupar linhas(da mesma tabela ou diferentes) onde alguma caracteristica(de alguma coluna) X é igual

SELECT coluna
FROM tabela1 as t1, tabela2 as t2
WHERE CONDIÇÃO
*/
SELECT *
FROM Customers


/* quero agrupar as pessoas que são da mesma região */
SELECT t1.ContactName, t1.Region, t2.ContactName, t2.Region
FROM Customers as t1, Customers as t2
WHERE t1.Region = t2.Region;

/* quero agrupar as pessoas com o mesmo contact title */
SELECT t1.ContactName, t1.ContactTitle, t2.ContactName, t2.ContactTitle
FROM Customers as t1, Customers as t2
WHERE t1.ContactTitle = t2.ContactTitle;

/* eu quero os funcionarios contratados no mesmoano */

SELECT t1.FirstName, t1.HireDate, t2.FirstName, t2.HireDate
FROM Employees as t1, Employees as t2
WHERE DATEPART(YEAR, t1.HireDate) =  DATEPART(YEAR, t2.hiredate)

/* desafios */

/* ex01 -> eu quero saber na tabela orderdetails quais produtos tem o mesmo percentual de desconto */
SELECT * 
FROM [Order Details];

SELECT t1.ProductID, t1.Discount, t2.ProductID, t2.Discount
FROM [Order Details] as t1, [Order Details] as t2
WHERE t1.Discount = t2.Discount