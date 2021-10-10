-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2011 at 01:13 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(2) NOT NULL,
  `nome_est` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uf_UNIQUE` (`uf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estado`
--

INSERT INTO `estado` VALUES(1, 'ACRE', 'AC','NORTE');
INSERT INTO `estado` VALUES(2, 'ALAGOAS', 'AL','NORDESTE');
INSERT INTO `estado` VALUES(3, 'AMAZONAS', 'AM','NORTE');
INSERT INTO `estado` VALUES(4, 'AMAPÁ', 'AP','NORTE');
INSERT INTO `estado` VALUES(5, 'BAHIA', 'BA','NORDESTE');
INSERT INTO `estado` VALUES(6, 'CEARÁ', 'CE','NORDESTE');
INSERT INTO `estado` VALUES(7, 'DISTRITO FEDERAL', 'DF','CENTRO-OESTE');
INSERT INTO `estado` VALUES(8, 'ESPÍRITO SANTO', 'ES','SUDESTE');
INSERT INTO `estado` VALUES(9, 'GOIÁS', 'GO','CENTRO-OESTE');
INSERT INTO `estado` VALUES(10, 'MARANHÃO', 'MA','NORDESTE');
INSERT INTO `estado` VALUES(11, 'MINAS GERAIS', 'MG','SUDESTE');
INSERT INTO `estado` VALUES(12, 'MATO GROSSO DO SUL', 'MS','CENTRO-OESTE');
INSERT INTO `estado` VALUES(13, 'MATO GROSSO', 'MT','CENTRO-OESTE');
INSERT INTO `estado` VALUES(14, 'PARÁ', 'PA','NORTE');
INSERT INTO `estado` VALUES(15, 'PARAÍBA', 'PB','NORDESTE');
INSERT INTO `estado` VALUES(16, 'PERNAMBUCO', 'PE','NORDESTE');
INSERT INTO `estado` VALUES(17, 'PIAUÍ', 'PI','NORDESTE');
INSERT INTO `estado` VALUES(18, 'PARANÁ', 'PR','SUL');
INSERT INTO `estado` VALUES(19, 'RIO DE JANEIRO', 'RJ','SUDESTE');
INSERT INTO `estado` VALUES(20, 'RIO GRANDE DO NORTE', 'RN','NORDESTE');
INSERT INTO `estado` VALUES(21, 'RONDÔNIA', 'RO','NORTE');
INSERT INTO `estado` VALUES(22, 'RORAIMA', 'RR','NORTE');
INSERT INTO `estado` VALUES(23, 'RIO GRANDE DO SUL', 'RS','SUL');
INSERT INTO `estado` VALUES(24, 'SANTA CATARINA', 'SC','SUL');
INSERT INTO `estado` VALUES(25, 'SERGIPE', 'SE','NORDESTE');
INSERT INTO `estado` VALUES(26, 'SÃO PAULO', 'SP','SUDESTE');
INSERT INTO `estado` VALUES(27, 'TOCANTINS', 'TO','NORTE');
