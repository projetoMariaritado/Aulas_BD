CREATE DATABASE revisao;
USE revisao;

CREATE TABLE nome_produto (
codigo int PRIMARY KEY,
preco decimal(6,2),
nome_produto vachar(255),
cor vachar(255)
);

CREATE TABLE clientes (
id_cliente int PRIMARY KEY,
nome_cliente vachar(255),
email vachar(255),
estado vachar(2)
);

CREATE TABLE compras (
nf int PRIMARY KEY,
data_compras date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produtos (codigo)
);



