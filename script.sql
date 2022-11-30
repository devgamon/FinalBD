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


