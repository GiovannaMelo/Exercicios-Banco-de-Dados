use bdLivrariaBrasileira

insert into tbAutor (nomeAutor)
	values ('Chico Buarque')
	, ('Jorge Amado')
	, ('J.K. Rowling')
	, ('William Shakespeare')
	, ('Monteiro Lobato')
	, ('Cora Coralina')
	, ('Clarice Lispector')


insert into tbEditora(nomeEditora)
	values ('Melhoramentos')
	, ('Globo')
	, ('Atica')
	, ('Companhia das Letras')
	, ('Abril')

insert into tbGenero(nomeGenero)
	values ('Ficção')
	, ('Romance')
	, ('Tragédia')
	


insert into tbLivro (nomeLivro, numPaginas, codGenero, codEditora, codAutor)
	values ('Budapeste', 176, 2, 4, 1)
	,('O Bicho-da-Seda', 454, 2, 5, 3)
	,('Gabriela, Cravo e Canela', 214, 1, 2, 2)
	,('Reinações de Narizinho', 143, 2, 2, 5)
	,('Romeu e Julieta', 421, 1,3,4)
	,('O Irmão Alemão', 478, 1, 4, 1)
	,('Terras do Sem-Fim', 125,1, 3, 2)
	,('Animais Fantásticos e Onde Habitam', 267, 2, 4, 3)


	-- EXERCICIO A

	SELECT nomeLivro as 'Livro', COUNT (tbLivro.codLivro) as 'Total de Livros' FROM tbLivro
	WHERE nomeLivro LIKE '%P'
	GROUP BY nomeLivro
	
	-- EXERCICIO B

	SELECT MAX (numPaginas) as 'Páginas' FROM tbLivro 

	-- EXERCICIO C
	
	SELECT MIN (numPaginas) as 'Páginas' FROM tbLivro 

	-- EXERCICIO D

	SELECT  AVG (numPaginas) as 'Número de Páginas' FROM tbLivro
	
	-- EXERCICIO E

	SELECT  SUM (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE codEditora = 1

	-- EXERCICIO F

	SELECT  SUM (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE nomeLivro LIKE '%A'

	-- EXERCICIO G

	SELECT  AVG (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE codAutor = 3

	-- EXERCICIO H

	SELECT COUNT (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE codEditora = 4
	
	-- EXERCICIO I

	SELECT  AVG (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE nomeLivro LIKE '%estrela'

	--EXERCICIO J

	SELECT COUNT (numPaginas) as 'Número de Páginas' FROM tbLivro
	WHERE nomeLivro LIKE '%poema'

	-- EXERCICIO K

	SELECT COUNT (codLivro) as 'Quantidade de Livros', nomeGenero as 'Gênero' FROM tbLivro
	INNER JOIN tbGenero ON tbLivro.codGenero = tbGenero.codGenero
	GROUP BY nomeGenero
	
	-- EXERCICIO L

	SELECT SUM (numPaginas) as 'Número de Páginas', nomeAutor as 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
	GROUP BY nomeAutor 

	-- EXERCICIO M

	SELECT AVG (numPaginas) as 'Número de Páginas', nomeAutor as 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
	GROUP BY nomeAutor 
	ORDER BY nomeAutor ASC

	-- EXERCICIO N

	SELECT COUNT (codLivro) as 'Quantidade de Livros', nomeEditora as 'Editora' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
	GROUP BY nomeEditora 
	ORDER BY nomeEditora DESC

	-- EXERCICIO O

	SELECT SUM (numPaginas) as 'Número de Páginas', nomeAutor as 'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor LIKE 'C%'
	GROUP BY nomeAutor

	-- EXERCICIO P

	SELECT COUNT (codLivro) as 'Quantidade de Livros', nomeAutor as 'Autor' FROM tbLivro
	LEFT JOIN tbAutor ON tbLivro.codAutor = tbLivro.codAutor
	WHERE nomeAutor LIKE '%Machado de Assis%' OR
	nomeAutor LIKE '%Cora Coralina%' OR 
	nomeAutor LIKE '%Graciliano Ramos%' OR
	nomeAutor LIKE '%Clarice Lispector%'
	GROUP BY nomeAutor
	
	-- EXERCICIO Q

	SELECT SUM (numPaginas) as 'Números de Páginas', nomeEditora as 'Editora' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
	WHERE numPaginas BETWEEN 200 AND 500
	GROUP BY nomeEditora

	-- EXERCICIO R

	SELECT nomeLivro as 'Livro', nomeEditora as 'Editora', nomeAutor as 'Autor' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

	-- EXERCICIO S

	SELECT nomeLivro as 'Livro', nomeEditora as 'Editora', nomeAutor as 'Autor' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeEditora LIKE 'Cia das Letras'
	
	-- EXERCICIO T

	SELECT nomeLivro as 'Livro', nomeAutor as 'Autores' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor NOT LIKE 'Érico Veríssimo'

	-- EXERCICIO U

	SELECT nomeAutor as 'Autores', nomeLivro as 'Livros' FROM tbAutor
	LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor

	-- EXERCICIO V

	SELECT nomeAutor as 'Autores', nomeLivro as 'Livros' FROM tbLivro
	LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

	-- EXERCICIO W

	SELECT nomeAutor as 'Autores', nomeLivro as 'Livros' FROM tbLivro
	FULL OUTER JOIN	tbAutor ON tbAutor.codAutor = tbLivro.codAutor

	-- EXERCICIO X

	SELECT nomeLivro as 'Livros', nomeEditora as 'Editora'  FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
	WHERE nomeEditora LIKE 'Ática'

	-- EXERCICIO Y

	SELECT nomeAutor as 'Autores' FROM tbLivro
	RIGHT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
	WHERE nomeLivro IS NULL

	-- EXERCICIO Z

	SELECT nomeGenero as 'Gênero' FROM tbLivro
	RIGHT JOIN tbGenero ON tbGenero.codGenero = tbLivro.codGenero
	WHERE nomeLivro IS NULL