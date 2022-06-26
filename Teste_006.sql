USE vendas_sucos;

SELECT * FROM sucos_vendas.tabela_de_produtos;
-- como eu estou selecionando com tabelas de databases diferentes, temos que usar um alias
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);  
-- ALÉM DISSO, NA LISTA ACIMA SÓ TEREMOS A DIFERENÇA ENTRE OS MEUS 2 DATASETS
SELECT * FROM produtos;

-- dessa forma eu posso pegar o meu select e colocar nos produtos 
INSERT INTO produtos()
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,SABOR, TAMANHO,EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);  

SELECT * FROM PRODUTOS;

-- ////////////////////
SELECT * FROM sucos_vendas.tabela_de_clientes;

INSERT INTO clientes()
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO,
		LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes
WHERE CPF NOT IN (SELECT CPF FROM clientes);

SELECT * FROM clientes;
