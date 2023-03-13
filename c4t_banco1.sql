-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 03-Set-2021 às 17:58
-- Versão do servidor: 5.6.34
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cash4trash`
--
CREATE DATABASE IF NOT EXISTS `cash4trash` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cash4trash`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` char(14) NOT NULL,
  `cep` char(11) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(50),
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` char(32) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`);
COMMIT;


CREATE TABLE `parceiroLG` (
  `cpf` char(14) NOT NULL,
  `cep` char(11) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(50),
  `setor` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `parceiroLG`
  ADD PRIMARY KEY (`cpf`);
COMMIT;



CREATE TABLE `parceiroLC` (
  `cnpj` char(14) NOT NULL,
  `cep` char(11) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(50),
  `setor` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `parceiroLC`
  ADD PRIMARY KEY (`cnpj`);
COMMIT;



CREATE TABLE `parceiroMK` (
  `cnpj` char(14) NOT NULL,
  `cep` char(11) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(50),
  `setor` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `parceiroMK`
  ADD PRIMARY KEY (`cnpj`);
COMMIT;



CREATE TABLE `produto` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(800) NOT NULL,
  `valor_c` float NOT NULL,
  `valor_h` float NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `estoque` int NOT NULL,
  `id_parceiroMK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);
COMMIT;

ALTER TABLE `produto`
  ADD FOREIGN KEY (`id_parceiroMK`) REFERENCES `parceiroMK`(`cnpj`);
COMMIT;




CREATE TABLE `lixo` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(800) NOT NULL,
  `status` varchar(10) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `id_usuario` int NOT NULL
  `id_parceiroMK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `lixo`
  ADD PRIMARY KEY (`id`);
COMMIT;

ALTER TABLE `lixo`
  ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario`(`cpf`);
COMMIT;

ALTER TABLE `lixo`
  ADD FOREIGN KEY (`id_parceiroMK`) REFERENCES `parceiroMK`(`cnpj`);
COMMIT;


CREATE TABLE `lote` (
  `id` int NOT NULL,
  `nomes` varchar(100) NOT NULL,
  `descricao` varchar(2000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `imagens` varchar(50) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `lote`
  ADD PRIMARY KEY (`id`);
COMMIT;

