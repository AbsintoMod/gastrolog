-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Abr-2019 às 17:48
-- Versão do servidor: 5.7.22
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estoque2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `data_criado` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `usuario`, `senha`, `data_criado`) VALUES
(11, 'Rodrigo', 'teste@teste.com', 'teste', '$2y$10$qFyAycyS3ZNtrpwffH2M2OoWX9lbKIzxSa3OoHOTMrCDXDUAjUoRW', NULL),
(14, 'kkk', 'kkk@kkk.com', 'kkk', '$2y$10$Ube9pqT/JGs47bCN9y6xzOKwP5gWz..dMUdmofrUNVgMWEGApf1.2', NULL),
(13, 'KAKA', 'teste@tefgfg.com', 'kaka', '$2y$10$5Zu.ER/sldXxpm7rqfhieOolB61IC0ZZe/CaP9k9BfCvqAwQq.tzy', NULL),
(15, 'AGORA', 'teste@teste', 'rua', '$2y$10$2/Bn7Ym8uireRZHdsbiwveoqgFtIbDyXqxZKp6RNRfyn/sfi2jl/2', NULL),
(16, 'Bereu', 'alguem@alguem', 'bereu', '$2y$10$BLD5I7jym8GZTTwRrRRvMOSzp1kGnJvv39UuF.wOuFDQLvoIe09c.', '2019-04-11 12:20:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
