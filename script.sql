CREATE DATABASE loja;
USE loja;

CREATE TABLE categoria(
cd int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);

CREATE TABLE produto(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(120),
qtd INT(10),
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY(id_categoria) REFERENCES categoria(cd)
);

CREATE TABLE vendedor(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
salario DECIMAL(10,2)
);

CREATE TABLE estado(
cd INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(30),
sigla CHAR(2)
);

CREATE TABLE cidade (
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100), 
id_estado INT,
FOREIGN KEY(id_estado) REFERENCES estado(cd)
);

CREATE TABLE cliente(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
telefone VARCHAR(100),
sexo CHAR(1),
status CHAR(8),
id_cidade INT,
FOREIGN KEY(id_cidade) REFERENCES cidade(cd)
);

CREATE TABLE pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
id_cliente INT,
id_vendedor INT,
dt_pedido DATE,
vl_total DECIMAL(10,2),
FOREIGN KEY(id_vendedor) REFERENCES vendedor(cd)
);

CREATE TABLE item_pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT, 
id_produto INT,
qt_produto INT,
vl_unitario DECIMAL(10,2),
FOREIGN KEY(id_pedido) REFERENCES pedido(cd),
FOREIGN KEY(id_produto) REFERENCES produto(cd)
);

/* INSERÇÕES CATEGORIAS */

INSERT INTO categoria(nome) VALUES ('Elétrica');
INSERT INTO categoria(nome) VALUES ('Hidráulica');
INSERT INTO categoria(nome) VALUES ('Ferragem');
INSERT INTO categoria(nome) VALUES ('Construção');
INSERT INTO categoria(nome) VALUES ('Ferramentas');

/* INSERÇÕES PRODUTOS */

INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_ELETRICA 1', 10, 4.20, 1);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_ELETRICA 2', 5, 10.50, 1);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_ELETRICA 3', 4, 9.99, 1);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_ELETRICA 4', 20, 50.30, 1);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_ELETRICA 5', 10, 4.20, 1);

INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_HIDRAULICA 1', 10, 4.20, 2);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_HIDRAULICA 2', 5, 10.50, 2);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_HIDRAULICA 3', 4, 9.99, 2);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_HIDRAULICA 4', 20, 50.30, 2);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_HIDRAULICA 5', 10, 4.20, 2);

INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAGEM 1', 10, 4.20, 3);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAGEM 2', 5, 10.50, 3);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAGEM 3', 4, 9.99, 3);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAGEM 4', 20, 50.30, 3);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAGEM 5', 10, 4.20, 3);

INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_CONSTRUÇÃO 1', 10, 4.20, 4);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_CONSTRUÇÃO 2', 5, 10.50, 4);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_CONSTRUÇÃO 3', 4, 9.99, 4);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_CONSTRUÇÃO 4', 20, 50.30, 4);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_CONSTRUÇÃO 5', 10, 4.20, 4);

INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAMENTAS 1', 10, 4.20, 5);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAMENTAS 2', 5, 10.50, 5);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAMENTAS 3', 4, 9.99, 5);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAMENTAS 4', 20, 50.30, 5);
INSERT INTO produto(nome, qtd, valor, id_categoria) VALUES('PRODUTO_FERRAMENTAS 5', 10, 4.20, 5);

/* INSERÇÕES VENDEDORES */

INSERT INTO vendedor(nome) VALUES('Luca Poe de Almeida');
INSERT INTO vendedor(nome) VALUES('Gabriel Bernardo Gamon');
INSERT INTO vendedor(nome) VALUES('Pedro Vitor');
INSERT INTO vendedor(nome) VALUES('Eduardo Yasui');

/* INSERÇÕES ESTADOS */

INSERT INTO estado(nome, sigla) VALUES('São Paulo','SP');
INSERT INTO estado(nome, sigla) VALUES('Rio de Janeiro','RJ');
INSERT INTO estado(nome, sigla) VALUES('Minas Gerais','MG');

/* INSERÇÕES CIDADES */

INSERT INTO cidade(nome, id_estado) VALUES('Santos', 1);
INSERT INTO cidade(nome, id_estado) VALUES('São Vicente', 1);
INSERT INTO cidade(nome, id_estado) VALUES('Guarulhos', 1);

INSERT INTO cidade(nome, id_estado) VALUES('Niterói', 2);
INSERT INTO cidade(nome, id_estado) VALUES('Petrópolis', 2);
INSERT INTO cidade(nome, id_estado) VALUES('Rio de Janeiro', 2);

INSERT INTO cidade(nome, id_estado) VALUES('Belo Horizonte', 3);
INSERT INTO cidade(nome, id_estado) VALUES('Uberlândia', 3);
INSERT INTO cidade(nome, id_estado) VALUES('Juiz de Fora', 3);


select * from cliente;

/* INSERÇÕES CLIENTES */

INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_1','TELEFONE_USER_1','M','INATIVO', 1);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_2','TELEFONE_USER_2','M','ATIVO', 2);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_3','TELEFONE_USER_3','M','ATIVO', 3);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_4','TELEFONE_USER_4','M','ATIVO', 5);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_5','TELEFONE_USER_5','M','INATIVO', 6);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_6','TELEFONE_USER_6','M','ATIVO', 7);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_7','TELEFONE_USER_7','M','ATIVO', 8);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_8','TELEFONE_USER_8','M','INATIVO', 9);
INSERT INTO cliente(nome, telefone, sexo, status, id_cidade) VALUES('NOME_USER_9','TELEFONE_USER_9','M','ATIVO', 10);

/* INSERÇÕES PEDIDOS */
