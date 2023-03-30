/* ORDER BY -> vai permitir ordenar os resultados de alguma coluna por ordem crescente ou decrescente
  SELECT cooluna
  FROM table
  ORDER BY coluna asc/desc
  */

  SELECT *
  FROM person.person
  ORDER BY EmailPromotion asc, LastName desc;
  /* vai de a-z no Emailpromoption e o metodo de desempate vai ser o lastname decrescente*/

 /* ex01 -> Obter o productId dos 10 produtos mais caros cadastrados no sitema, listando do mais cara para o mais parato */

 SELECT top 10 ProductID
 FROM Production.Product
 ORDER BY ListPrice desc;

 /* ex02 -> obter o nome e o numero do produto dos produso qque tem productID entre POSIÇÕES 1~4 */
 SELECT TOP 4 name, productnumber
 FROM production.product
 ORDER BY productID ASC;