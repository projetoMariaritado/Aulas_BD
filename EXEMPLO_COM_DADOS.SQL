-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 13:58
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `nome_equipe` varchar(255) DEFAULT NULL,
  `cod_equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`nome_equipe`, `cod_equipe`) VALUES
('INFORMÁTICA PARA INTERNET', 1),
('QUÍMICA', 2),
('RECURSOS HUMANOS', 3),
('ARTES', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `nome_jogador` varchar(255) DEFAULT NULL,
  `num_jogador` int(11) NOT NULL,
  `cod_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`nome_jogador`, `num_jogador`, `cod_equipe`) VALUES
('ANDERSON', 1, 1),
('CINTIA', 2, 1),
('JÚLIA', 3, 4),
('TOM HOLLAND', 4, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`cod_equipe`);

--
-- Índices para tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`num_jogador`),
  ADD KEY `cod_equipe` (`cod_equipe`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipes`
--
ALTER TABLE `equipes`
  MODIFY `cod_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `num_jogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`cod_equipe`) REFERENCES `equipes` (`cod_equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;