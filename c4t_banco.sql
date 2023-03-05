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
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` char(32) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `nome`, `email`, `senha`, `data_nascimento`) VALUES
('182.383.530-92', 'Rafaela Carvalho', 'rafa_carvalho@gmail.com', 'a1456#', '1979-05-10'),
('188.280.940-87', 'Maria Laura', 'marialaura@gmail.com', '1881', '1994-02-23'),
('323.979.858-10', 'Dênis Zaniro', 'deniszaniro@gmail.com', '123', '1984-04-18'),
('431.926.240-94', 'João Carvalho', 'jcarvalho@gmail.com', '456', '1990-07-14'),
('737.831.340-80', 'Ricardo Fausto', 'ricardofausto@yahoo.com.br', 't%&1,562', '1992-06-11'),
('901.584.850-50', 'Veridiana Moreto', 'moreto@gmail.com', '12345', '1991-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
