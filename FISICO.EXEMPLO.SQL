CREATE DATABASE EXEMPLO;

USE EXEMPLO;


CREATE TABLE jogadores (
nome_jogador varchar(255),
num_jogador int PRIMARY KEY AUTO_INCREMENT,
cod_equipe int
);

CREATE TABLE equipes (
nome_equipe varchar(255),
cod_equipe int PRIMARY KEY AUTO_INCREMENT
);

ALTER TABLE jogadores ADD FOREIGN KEY(cod_equipe) REFERENCES equipes (cod_equipe);