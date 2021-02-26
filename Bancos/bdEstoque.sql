create database bdEstoque

use bdEstoque

create table tbFornecedor(
	codFornecedor int primary key identity(1,1)
	,nomeFornecedor varchar(20) not null
	,contatoFornecedor varchar(30) not null
) 

create table tbCliente(
	codCliente int primary key identity(1,1)
	,nomeCliente varchar(30) not null
	,cpfCliente char(11) not null
	,emailCliente varchar(30) not null
	,sexoCliente char(1) not null
	,dataNacsimentoCliente smalldatetime not null
)

create table tbFabricante(
	codFabricante int primary key identity(1,1)
	,nomeFabricante varchar(30) not null
)

create table tbVenda(
	codVenda int primary key identity(1,1)
	,dataVenda char(10) not null
	,valorTotalVenda int not null
	,codCliente int foreign key references tbCliente(codCliente)
)


create table tbProduto(
	codProduto int primary key identity(1,1)
	,descricaoProduto varchar(60) not null
	,valorProduto smallmoney not null
	,quantidadeProduto smallint not null
	,codFabricante int foreign key references tbFabricante(codFabricante)
	,codFornecedor int foreign key references tbFornecedor(codFornecedor)
)

create table tbItensVenda(
	codItensVenda int primary key identity(1,1)
	,codVenda int foreign key references tbVenda(codVenda)
	,codProduto int foreign key references tbProduto(codProduto)
	,quantidadeItensVenda smallint not null
	,subTotalItensVenda  smallmoney not null
)



