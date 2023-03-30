/* where-> como extrarir apenas algumas informações da nossa tabela

SELECT  coluna1, coluna 2
FROM tabela
WHERE condição

OPERADORES
= igual
> maior que
< menor que
>= maior igual
<= menor igual
<> diferente de
AND e
OR ou

*/

SELECT * 
FROM person.person
WHERE LAstname = 'duffy' and NameStyle = 0; /* pegamos so quem tem ultimo nome duffy e namestyle 0 */


/* selecionando produtos com cores vermelha ou azul */
SELECT *
FROM production.Product
WHERE color = 'red' or color = 'blue';

/* como selecionar uma faixa de preço */

SELECT *
FROM production.Product
WHERE listprice < 1000 and listprice > 300;


/* EX03 -> a quipe de produção de produtos preisa do nome de todas as peças que pesam mais de 500kg mas não pesam mais de 700kg para inspeção */

SELECT Name
FROM Production.Product
WHERE weight > 500 and Weight < 700;

/* EX04 -> foi pedido pelo marketing em relacçao a todos os empregados que são casados e são assalariados */
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

/* EX05 -> um usuario chamado Peter krebs esta devendo um pagamento, consiga o email dele para que possamos enviar a cobrança */

/* primeiramente pegamos o business entity pois é uma chave compartilhada entre a tabela de person.person e person.emailaddress */

SELECT *
FROM person.person
WHERE FirstName = 'peter' and LastName = 'krebs'; /* vimos que o ID dele é 26 */

SELECT EmailADdress
FROM person.EmailAddress
WHERE BusinessEntityID = 26;

