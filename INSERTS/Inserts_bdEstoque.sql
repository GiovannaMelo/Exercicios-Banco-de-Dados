use bdEstoque

insert into tbCliente(nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNacsimentoCliente)
values ('Amando Jos� Santana',	'12345678900'	,'amandojsantana@outlook.com','m',1905-04-23),
       ('Shela Carvalho Leal', '45678909823','scarvalho@g.com.br','f',1978-09-13),
	   ('Carlos Henrique Souza', '76598278299','chenrique@ig.com.br','m',1981-09-08),
	   ('Maria Aparecida Souza', '87365309899','mapdasouza@outlook.com','f',1962-07-07),
	   ('Adriana Nogueira Silva', '76354309388','drica1977@ig.com.br','f',1977-04-09),
	   ('Paulo Henrique Silva', '87390123111','phsilva80@hotmail.com','m',1987-02-02)


insert into tbFabricante(nomeFabricante)
values('Unilever'),('P&G'),('Bunge')


insert into tbFornecedor(nomeFornecedor, contatoFornecedor)
values('Atacad�o','Carlos'),('Assai', 'Maria Stella'),('Rold�o', 'Paulo C�sar')


insert into tbProduto(descricaoProduto, valorProduto, quantidadeProduto,codFabricante, codFornecedor)
values ('Amaciante Downy', 5.76, 1500, 2, 1),
       ('Amaciante Comfort', 5.45, 2300, 1, 1),
	   ('Sab�o em p� OMO', 5.99, 1280, 1, 2),
	   ('Salsicha Hot Dog Sadia', 6.78, 2900, 3, 2),
	   ('Hamburger Sadia', 9.89, 1600, 3, 1),
	   ('Fralda Pampers', 36.00, 340, 2, 3),
	   ('Xampu Seda', 5.89, 800, 1, 2),
	   ('Condicionador Seda', 4.76, 2500, 3, 1)


insert into tbVenda(dataVenda,valorTotalVenda, codCliente)
values('01/02/2014', 4500.00, 1),
	  ('03/02/2014', 3400.00, 1),
	  ('10/02/2014', 2100.00, 2),
	  ('15/02/2014', 2700.00, 3),
	  ('17/03/2014', 560.00, 5),
	  ('09/04/2014', 1200.00, 4),
	  ('07/05/2014', 3500.00, 1),
	  ('07/05/2014', 3400.00, 1),
	  ('05/05/2014', 4000.00, 2)


insert into tbItensVenda(codVenda, codProduto,quantidadeItensVenda, subTotalItensVenda)
values(1,1,200,1500.00),
	  (1,2,300,3000.00),
	  (2,4,120,1400.00),
	  (2,2,200,1000.00),
	  (2,3,130,1000.00),
	  (3,5,200,2100.00),
	  (4,4,120,1000.00),
	  (4,5,450,700.00),
	  (5,5,200,560.00),
	  (6,7,200,600.00),
	  (6,6,300,600.00),
	  (7,1,300,2500.00),
	  (8,6,200,1700.00),
	  (8,5,200,1700.00),
	  (9,4,1000,4000.00)



select * from tbItensVenda

/* ex1 */
select descricaoProduto, nomeFabricante
 from tbProduto as p
inner join tbFabricante as f
on p.codFabricante = f.codFabricante

/* ex2 */
select descricaoProduto, nomeFornecedor 
from tbProduto as p
inner join tbFornecedor f
on p.codFornecedor = f.codFornecedor

/* ex3 */
select valorProduto, nomeFabricante 
from tbProduto as p
inner join tbFabricante as f
on f.codFabricante = p.codFabricante

/* ex4 */
select nomeCliente, codVenda 
from tbVenda as v
inner join tbCliente as c
on c.codCliente = v.codCliente;

/* ex5 */
/* 
S� n�o entendi direito quais eram 
os campos a se buscar

descricaoproduto no lugar do quantidadeItensVenda
*/
select nomeCliente, tbVenda.codVenda, quantidadeItensVenda
from tbItensVenda
inner join tbVenda 
on tbItensVenda.codVenda = tbVenda.codVenda
inner join tbCliente
on tbCliente.codCliente = tbVenda.codCliente

