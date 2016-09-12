-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2016 às 17:57
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saovicente`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE IF NOT EXISTS `anexos` (
  `idAnexos` int(11) NOT NULL AUTO_INCREMENT,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  PRIMARY KEY (`idAnexos`),
  KEY `fk_anexos_os1` (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('7d9846432cb495c05ce7857ad295a5ed', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', 1472844085, 'a:5:{s:9:"user_data";s:0:"";s:4:"nome";s:21:"Tales Aparecido Gnani";s:2:"id";s:1:"3";s:9:"permissao";s:1:"3";s:6:"logado";b:1;}'),
('a63927533381cb107a40f637b60381f1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', 1472840895, 'a:5:{s:9:"user_data";s:0:"";s:4:"nome";s:21:"Tales Aparecido Gnani";s:2:"id";s:1:"3";s:9:"permissao";s:1:"3";s:6:"logado";b:1;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Leandro José SIlveira', '318.116.868-85', '(19) 99241-7155', '', '', '2016-07-28', 'Serra Negra', '275', 'Jardim Macucos', '', '', ''),
(2, 'Seu benedito', '', '3813-2224', '9-8102-2851', '', '2016-07-28', '', '', '', '', '', ''),
(3, 'Décio', '', '', '', '', '2016-08-02', '', '', '', '', '', ''),
(4, 'brindart', '53740197/0001-61', '3863-1280', '', '', '2016-08-02', 'virgulino de oliveira', '165', 'jardim ivete', 'Itapira', 'SP', '13973-000'),
(5, 'marquinho (eleoterio)', '', '', '', '', '2016-08-02', '', '', '', '', '', ''),
(6, 'thiago -evoóc', '', '', '', '', '2016-08-02', '.', '', '', '', '', ''),
(7, 'donizete', '', '3863-5329', '9-9422-5241', '', '2016-08-03', '.', '.', '.', '', '', ''),
(8, 'Mathel', '000.000.000.000', '(19) 3843-1000', '', '', '2016-08-11', 'Rua da Penha', '000', 'Vila Pereira', '', '', ''),
(9, 'willian martins', '', '38635045', '', '', '2016-08-11', 'ricardo passarela', '300', 'jardim guaruja', 'itapira', 'sp', ''),
(10, 'joao martins', '', '9-81077850', '9-81077850', '', '2016-08-11', 'chacara panorama', '.', 'tanquinho', 'itapira', '', 'sp'),
(11, 'junior - brindart', '', '', '', '', '2016-08-12', '', '', '', '', '', ''),
(12, 'Chapéu', '', '', '', '', '2016-08-12', '', '', '', '', '', ''),
(13, 'consumidor', '', '', '', '', '2016-08-12', '', '', '', '', '', ''),
(14, 'LUIZ - ELETRONICA SETTE', '', '', '', '', '2016-08-12', '', '', '', '', '', ''),
(15, 'Silvio Mitestainer', '', '', '', '', '2016-08-15', 'da penha', '', '', '', '', ''),
(16, 'Rosembergue', '', '9-8157-0414', '9-8845-8170', '', '2016-08-15', 'Arlindo Pavinato', '', '', '', '', ''),
(17, 'Jose Ronaldo Jolli', '', '3843-1957', '', '', '2016-08-15', 'PESSEGOS', '22', 'condominio bilato', 'ITAPIRA', 'SP', ''),
(18, 'bugija', '', '', '', '', '2016-08-15', 'sao paulo', '', '', '', '', ''),
(19, 'Gusto Grossi', '', '', '', '', '2016-08-16', '', '', '', '', '', ''),
(20, 'Eletronica Sette', '', '', '', '', '2016-08-16', '', '', '', '', '', ''),
(21, 'Sartorelli', '', '9-9615-9441', '', '', '2016-08-17', 'Santa Luzia', '101', 'Prados', 'Itapira', '', ''),
(22, 'marcio jose rodrigues da cruz', '', '', '', '', '2016-08-17', 'jose primo avancini', '212', 'jardim guaruja', 'itapira', 'sp', ''),
(23, 'Celso Taliateli', '', '', '', '', '2016-08-17', '', '', '', '', '', ''),
(24, 'Sorveteria Cabral', '', '', '', '', '2016-08-17', '', '', '', '', '', ''),
(25, 'Antonio Martins Neto', '', '', '', '', '2016-08-18', 'Joaquim Pereira', '45', '', '', '', ''),
(26, 'Alexandre Pretti', '', '', '', '', '2016-08-18', 'Fazenda Sao Geronimo', '', '', '', '', ''),
(27, 'Zélia', '', '', '', '', '2016-08-18', '', '', '', '', '', ''),
(28, 'Karina Martins', '', '38635045', '', '', '2016-08-18', 'ricardo passarela', '300', 'Prados', 'Itapira', '', ''),
(29, 'Danilo Pugina', '', '', '', '', '2016-08-19', '', '', '', '', '', ''),
(30, 'Emerson David Ribeiro', '', '3863-7097', '9-8888-3501', '', '2016-08-19', 'av Brasil', '3038', 'Prados', 'Itapira', '', ''),
(32, 'Francisco Guerra', '', '', '', '', '2016-08-22', '', '', '', '', '', ''),
(33, 'Elite Car', '', '', '', '', '2016-08-22', 'Francisco de Paula Moreira Barbosa', '', 'centro', '', '', ''),
(34, 'Ricardo Caixeta', '', '', '', '', '2016-08-22', '', '', '', '', '', ''),
(35, 'Gra - Evóoc', '', '', '', '', '2016-08-23', '', '', '', '', '', ''),
(36, 'Loriane Martins', '', '9-8107-7854', '', '', '2016-08-23', 'Benedito Amancio De Camargo', '275', 'jardim guaruja', 'itapira', 'SP', '13973-500'),
(37, 'Vitor -Sucaterra', '', '9-9777-1951', '', '', '2016-08-24', '', '', '', '', '', ''),
(38, 'Ernesto -(Pai Valmir)', '', '3813-4550', '', '', '2016-08-25', 'Carlos de Santa Lucia', '121', '', '', '', ''),
(39, 'Rute', '', '', '', '', '2016-08-25', '', '', '', '', '', ''),
(40, 'Ivi', '', '', '', '', '2016-08-26', 'alonso carmona', '', '', '', '', ''),
(41, 'Gutinho Coraca', '', '9-8111-6733', '', '', '2016-08-29', 'Coronel Francisco Vieira', '110', 'Cubatao', '', '', ''),
(42, 'Dimas Sales Rocha', '', '', '', '', '2016-08-29', '', '', '', '', '', ''),
(43, 'Daiana Cabral', '', '', '', '', '2016-08-29', '', '', '', '', '', ''),
(44, 'Rogerio -Garrafa', '', '', '', '', '2016-08-29', '', '', '', '', '', ''),
(45, 'Nene - Mitestainer', '', '', '', '', '2016-08-29', 'Expedicionarios', '', '', '', '', ''),
(46, 'Luiz Otavio', '', '', '', '', '2016-08-30', '', '', '', '', '', ''),
(47, 'Servico Autonomo de Agua e Esgotos de Itapira', '46.378.766/0001-05', '3913-9500', '', 'notafiscal@saaeitapira.com.br', '2016-08-30', 'Rui Barbosa', '918', 'centro', 'itapira', 'SP', '13.974-340'),
(48, 'Alexandre Bruzasco', '', '', '', '', '2016-08-31', '', '', '', '', '', ''),
(49, 'Sandra Scarpioni', '', '3863-0623', '', '', '2016-08-31', '', '', '', '', '', ''),
(50, 'Altair Porfino Garcia', '', '9-9397-9320', '', '', '2016-09-01', 'Jose Alfano', '331', 'Istor Luppi', '', '', ''),
(51, 'Ana - Açoplast', '', '3843-9292', '', '', '2016-09-01', '', '', '', '', '', ''),
(52, 'Alessandra Tavares', '', '', '', '', '2016-09-01', '', '', '', '', '', ''),
(53, 'Alexandre Lopes -Disk Agua', '', '', '', '', '2016-09-02', '', '', '', '', '', ''),
(54, 'Vera Gnani', '', '', '', '', '2016-09-02', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE IF NOT EXISTS `documentos` (
  `idDocumentos` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDocumentos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE IF NOT EXISTS `emitente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`) VALUES
(1, 'Mecânica São Vicente', '25.189.423/0001-22', '374.080.400.112', 'Rua Alonso Carmona', '25', 'São Vicente', 'Itapira', 'SP', '(19) 3863-5021', 'saovicente@saovicente.com.br', 'http://localhost/saovicente/assets/uploads/7454dbf1e3e24be1a22793a45edf1acf.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

CREATE TABLE IF NOT EXISTS `itens_de_vendas` (
  `idItens` int(11) NOT NULL AUTO_INCREMENT,
  `subTotal` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  PRIMARY KEY (`idItens`),
  KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  KEY `fk_itens_de_vendas_produtos1` (`produtos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `itens_de_vendas`
--

INSERT INTO `itens_de_vendas` (`idItens`, `subTotal`, `quantidade`, `vendas_id`, `produtos_id`) VALUES
(5, '4', 2, 5, 15),
(6, '170', 1, 5, 16),
(7, '25', 1, 5, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE IF NOT EXISTS `lancamentos` (
  `idLancamentos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT NULL,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLancamentos`),
  KEY `fk_lancamentos_clientes1` (`clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE IF NOT EXISTS `os` (
  `idOs` int(11) NOT NULL AUTO_INCREMENT,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` varchar(150) DEFAULT NULL,
  `defeito` varchar(150) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` varchar(150) DEFAULT NULL,
  `laudoTecnico` varchar(150) DEFAULT NULL,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idOs`),
  KEY `fk_os_clientes1` (`clientes_id`),
  KEY `fk_os_usuarios1` (`usuarios_id`),
  KEY `fk_os_lancamentos1` (`lancamento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Extraindo dados da tabela `os`
--

INSERT INTO `os` (`idOs`, `dataInicial`, `dataFinal`, `garantia`, `descricaoProduto`, `defeito`, `status`, `observacoes`, `laudoTecnico`, `valorTotal`, `clientes_id`, `usuarios_id`, `lancamento`, `faturado`) VALUES
(4, '2016-08-02', '2016-08-02', '3 meses', '141.854\r\nDHW 3820', 'Barulho na Suspensão', 'Em Andamento', '', '', NULL, 3, 4, NULL, 0),
(6, '2016-08-01', '2016-08-02', '', '187.500 uno\r\ndsd1413', '', 'Finalizado', '', '', NULL, 4, 5, NULL, 0),
(7, '2016-07-27', '2016-08-02', '', '329.000\r\nuno -ETW6624', '', 'Finalizado', '', '', NULL, 6, 4, NULL, 0),
(8, '2016-08-03', '2016-08-03', '', '56.186 -fiesta branco\r\nFMN8214', '', 'Finalizado', '', '', NULL, 7, 5, NULL, 0),
(9, '2016-08-03', '2016-08-03', '', '82.661\r\nFiesta Paganini ETW-5745', '', 'Finalizado', '', '', NULL, 4, 4, NULL, 0),
(10, '2016-08-09', '2016-08-10', '', 'fiorino', '', 'Orçamento', '', '', NULL, 6, 4, NULL, 0),
(11, '2016-07-12', '2016-08-11', '', 'peugeot', '', 'Orçamento', '', '', NULL, 6, 4, NULL, 0),
(12, '2016-07-12', '2016-08-11', '', 'uno', '', 'Orçamento', '', '', NULL, 6, 4, NULL, 0),
(13, '2016-07-25', '2016-08-11', '', 'renaut - van', '', 'Orçamento', '', '', NULL, 6, 4, NULL, 0),
(14, '2016-07-29', '2016-08-11', '', 'peugeot', '', 'Orçamento', '', '', NULL, 6, 4, NULL, 0),
(16, '2016-08-11', '2016-08-11', '', '', '', 'Finalizado', 'Courier', '', NULL, 8, 4, NULL, 0),
(17, '2016-08-11', '2016-08-11', '', '250.847\r\nBNJ-0714', '', 'Orçamento', 'gol quadrado', '', NULL, 9, 5, NULL, 0),
(18, '2016-08-11', '2016-08-11', '', '83.856\r\nFEB-3747', '', 'Orçamento', 'SAVEIRO CROSS', '', NULL, 10, 4, NULL, 0),
(19, '2016-08-12', '2016-08-12', '', '106.525', '', 'Finalizado', 'fiesta', '', NULL, 11, 4, NULL, 0),
(20, '2016-08-11', '2016-08-11', '', '109.200\r\nCQA-8857', '', 'Finalizado', '', '', NULL, 12, 4, NULL, 0),
(21, '2016-08-12', '2016-08-12', '', '164.588\r\nCPM-9299', '', 'Orçamento', '', '', NULL, 14, 5, NULL, 0),
(22, '2016-08-15', '2016-08-15', '', '', '', 'Orçamento', 'scort', '', NULL, 15, 4, NULL, 0),
(23, '2016-08-15', '2016-08-15', '', '', '', 'Orçamento', 'ford ka preto', '', NULL, 16, 5, NULL, 0),
(24, '2016-08-15', '2016-08-15', '', '110.955\r\nDIZ-7789', '', 'Orçamento', '', '', NULL, 17, 5, NULL, 0),
(25, '2016-08-15', '2016-08-15', '', '136.100\r\nCKA-9130', '', 'Orçamento', '', '', NULL, 18, 4, NULL, 0),
(26, '2016-08-15', '2016-08-15', '', '', '', 'Orçamento', 'fusca', '', NULL, 19, 5, NULL, 0),
(27, '2016-08-16', '2016-08-16', '', '332.036\r\nETW -6624', '', 'Orçamento', 'UNO', '', NULL, 6, 5, NULL, 0),
(28, '2016-08-16', '2016-08-16', '', 'EER-3842', '', 'Orçamento', 'FIORINO', '', NULL, 20, 4, NULL, 0),
(29, '2016-08-16', '2016-08-16', '', '', '', 'Orçamento', 'UNO', '', NULL, 21, 5, NULL, 0),
(30, '2016-08-17', '2016-08-17', '', '106.950\r\nEPD-4365', '', 'Finalizado', 'fiesta', '', NULL, 11, 4, NULL, 0),
(31, '2016-08-17', '2016-08-17', '', '117.910\r\nDNY-0523', '', 'Orçamento', 'fiesta sedan', '', NULL, 23, 5, NULL, 0),
(32, '2016-08-17', '2016-08-17', '', '93.924\r\nFKI-5915', '', 'Finalizado', 'gol', '', NULL, 22, 4, NULL, 0),
(33, '2016-08-17', '2016-08-17', '', '136.792', '', 'Orçamento', 'MONTANA PRETA', '', NULL, 24, 5, NULL, 0),
(34, '2016-08-17', '2016-08-17', '', '25.532\r\nCYK-3628', '', 'Orçamento', 'FUSCA', '', NULL, 25, 4, NULL, 0),
(35, '2016-08-18', '2016-08-18', '', '17.125\r\nBPU-5386', '', 'Orçamento', 'FUSCA', '', NULL, 27, 4, NULL, 0),
(36, '2016-08-18', '2016-08-18', '', '110.694\r\nDXE-9935', '', 'Orçamento', 'PALIO', '', NULL, 28, 4, NULL, 0),
(37, '2016-08-19', '2016-08-19', '', '', '', 'Orçamento', 'caminhao -wolksvagem', '', NULL, 5, 4, NULL, 0),
(38, '2016-08-18', '2016-08-19', '', '61.067\r\nFDF-5641', '', 'Orçamento', 'FIAT UNO', '', NULL, 26, 5, NULL, 0),
(39, '2016-08-19', '2016-08-19', '', '156.117\r\nAOQ-7504', '', 'Orçamento', 'CELTA', '', NULL, 29, 4, NULL, 0),
(40, '2016-08-19', '2016-08-19', '', '49.278\r\nFSU-0258', '', 'Orçamento', 'HB 20', '', NULL, 30, 4, NULL, 0),
(41, '2016-08-22', '2016-08-22', '', '70.300\r\nHEF-9736', '', 'Orçamento', 'FIAT -STRADA', '', NULL, 32, 4, NULL, 0),
(42, '2016-08-22', '2016-08-22', '', 'ENC-0141', '', 'Orçamento', 'CAPITIVA', '', NULL, 33, 4, NULL, 0),
(43, '2016-08-22', '2016-08-22', '', '87.000\r\nFJL-3571', '', 'Orçamento', 'SAVEIRO', '', NULL, 34, 4, NULL, 0),
(44, '2016-08-23', '2016-08-23', '', '', '', 'Orçamento', 'PEUGEOT -THIAGO', '', NULL, 6, 4, NULL, 0),
(45, '2016-08-23', '2016-08-23', '', '28.834\r\nFRL-2082', '', 'Orçamento', 'PALIO', '', NULL, 35, 4, NULL, 0),
(46, '2016-08-23', '2016-08-23', '', '120.439\r\nDUQ-4589', '', 'Orçamento', 'FIESTA', '', NULL, 36, 5, NULL, 0),
(47, '2016-08-24', '2016-08-24', '', '109.602\r\nETW-7063', '', 'Orçamento', 'SAVEIRO', '', NULL, 37, 4, NULL, 0),
(48, '2016-08-24', '2016-08-24', '', '111.300\r\nDIZ-7784', '', 'Orçamento', 'FIESTA', '', NULL, 17, 4, NULL, 0),
(49, '2016-08-24', '2016-08-24', '', '336.051\r\nBZI-7380', '', 'Orçamento', 'PICK UP CORSA', '', NULL, 34, 5, NULL, 0),
(50, '2016-08-25', '2016-08-25', '', '139.300\r\nCGU-7962', '', 'Orçamento', 'PALIO', '', NULL, 38, 5, NULL, 0),
(51, '2016-08-25', '2016-08-25', '', '202.554\r\nBZI-6300', '', 'Orçamento', 'F 1.000', '', NULL, 39, 4, NULL, 0),
(52, '2016-08-25', '2016-08-25', '', '', '', 'Orçamento', 'HONDA CIVIC PRATA', '', NULL, 33, 4, NULL, 0),
(53, '2016-08-26', '2016-08-26', '', 'EPD-4839', '', 'Orçamento', 'CELTA', '', NULL, 40, 4, NULL, 0),
(54, '2016-08-26', '2016-08-26', '', '166.270\r\nFMR-8168', '', 'Orçamento', 'FIORINO', '', NULL, 6, 4, NULL, 0),
(55, '2016-08-29', '2016-08-29', '', '93.200', '', 'Orçamento', 'MONTANA', '', NULL, 5, 4, NULL, 0),
(56, '2016-08-29', '2016-08-29', '', '87.540\r\nEYA-7814', '', 'Orçamento', 'SAVEIRO CROSS', '', NULL, 41, 4, NULL, 0),
(57, '2016-08-29', '2016-08-29', '', '45.544\r\nBZI-5788', '', 'Orçamento', 'VERONA', '', NULL, 42, 5, NULL, 0),
(58, '2016-08-29', '2016-08-29', '', '137.300\r\nEER-3209', 'EER-3209', 'Orçamento', 'MONTANA PRETA', '', NULL, 24, 4, NULL, 0),
(59, '2016-08-01', '2016-08-01', '', '', '', 'Orçamento', 'CORSA', '', NULL, 43, 4, NULL, 0),
(60, '2016-08-29', '2016-08-29', '', '', '', 'Orçamento', 'CELTA', '', NULL, 44, 5, NULL, 0),
(61, '2016-08-29', '2016-08-29', '', '153.770\r\nGSG-7804', '', 'Orçamento', 'PICK-UP CORSA', '', NULL, 45, 5, NULL, 0),
(62, '2016-08-30', '2016-08-30', '', '34.673\r\nEYW-4600', '', 'Orçamento', 'AGILE', '', NULL, 46, 4, NULL, 0),
(63, '2016-08-31', '2016-08-31', '', '100.000\r\nFTA-3645', '', 'Orçamento', 'SPIN', '', NULL, 48, 4, NULL, 0),
(64, '2016-08-31', '2016-08-31', '', '72.720\r\nEVK-4157', '', 'Orçamento', 'GOL G5', '', NULL, 49, 4, NULL, 0),
(65, '2016-09-01', '2016-09-01', '', '28.163\r\nETW-6489', '', 'Finalizado', 'FORD KA', '', NULL, 50, 4, NULL, 0),
(66, '2016-09-01', '2016-09-01', '', 'BFW-5012', '', 'Orçamento', 'PARATI', '', NULL, 47, 4, NULL, 0),
(67, '2016-09-01', '2016-09-01', '', '203.750\r\nDGO-4171', '', 'Orçamento', 'CORSA', '', NULL, 51, 4, NULL, 0),
(68, '2016-09-01', '2016-09-01', '', '50,033\r\nFAD-1423', '', 'Orçamento', 'ONIX', '', NULL, 52, 4, NULL, 0),
(69, '2016-09-01', '2016-09-01', '', '335.500\r\nETW-6624', '', 'Orçamento', 'UNO', '', NULL, 6, 5, NULL, 0),
(70, '2016-09-02', '2016-09-02', '', '', '', 'Orçamento', 'CAMINHAO F 350', '', NULL, 53, 3, NULL, 0),
(71, '2016-09-02', '2016-09-02', '', '56.760\r\nBSU-1715', '', 'Orçamento', 'LOGUS', '', NULL, 54, 5, NULL, 0),
(72, '2016-09-02', '2016-09-02', '', '139.374\r\nCGU-7962', '', 'Orçamento', 'FIAT PALIO', '', NULL, 38, 4, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE IF NOT EXISTS `permissoes` (
  `idPermissao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:38:{s:8:"aCliente";s:1:"1";s:8:"eCliente";s:1:"1";s:8:"dCliente";s:1:"1";s:8:"vCliente";s:1:"1";s:8:"aProduto";s:1:"1";s:8:"eProduto";s:1:"1";s:8:"dProduto";s:1:"1";s:8:"vProduto";s:1:"1";s:8:"aServico";s:1:"1";s:8:"eServico";s:1:"1";s:8:"dServico";s:1:"1";s:8:"vServico";s:1:"1";s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aVenda";s:1:"1";s:6:"eVenda";s:1:"1";s:6:"dVenda";s:1:"1";s:6:"vVenda";s:1:"1";s:8:"aArquivo";s:1:"1";s:8:"eArquivo";s:1:"1";s:8:"dArquivo";s:1:"1";s:8:"vArquivo";s:1:"1";s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";s:1:"1";s:9:"cEmitente";s:1:"1";s:10:"cPermissao";s:1:"1";s:7:"cBackup";s:1:"1";s:8:"rCliente";s:1:"1";s:8:"rProduto";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";s:1:"1";s:6:"rVenda";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2014-09-03'),
(2, 'Usuarios', 'a:38:{s:8:"aCliente";s:1:"1";s:8:"eCliente";s:1:"1";s:8:"dCliente";s:1:"1";s:8:"vCliente";s:1:"1";s:8:"aProduto";s:1:"1";s:8:"eProduto";s:1:"1";s:8:"dProduto";s:1:"1";s:8:"vProduto";s:1:"1";s:8:"aServico";s:1:"1";s:8:"eServico";s:1:"1";s:8:"dServico";s:1:"1";s:8:"vServico";s:1:"1";s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aVenda";s:1:"1";s:6:"eVenda";s:1:"1";s:6:"dVenda";s:1:"1";s:6:"vVenda";s:1:"1";s:8:"aArquivo";b:0;s:8:"eArquivo";b:0;s:8:"dArquivo";b:0;s:8:"vArquivo";b:0;s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";b:0;s:9:"cEmitente";b:0;s:10:"cPermissao";b:0;s:7:"cBackup";s:1:"1";s:8:"rCliente";s:1:"1";s:8:"rProduto";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";s:1:"1";s:6:"rVenda";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2016-04-06'),
(3, 'saovicente', 'a:38:{s:8:"aCliente";s:1:"1";s:8:"eCliente";s:1:"1";s:8:"dCliente";s:1:"1";s:8:"vCliente";s:1:"1";s:8:"aProduto";b:0;s:8:"eProduto";b:0;s:8:"dProduto";b:0;s:8:"vProduto";b:0;s:8:"aServico";b:0;s:8:"eServico";b:0;s:8:"dServico";b:0;s:8:"vServico";b:0;s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aVenda";b:0;s:6:"eVenda";b:0;s:6:"dVenda";b:0;s:6:"vVenda";b:0;s:8:"aArquivo";b:0;s:8:"eArquivo";b:0;s:8:"dArquivo";b:0;s:8:"vArquivo";b:0;s:11:"aLancamento";b:0;s:11:"eLancamento";b:0;s:11:"dLancamento";b:0;s:11:"vLancamento";b:0;s:8:"cUsuario";b:0;s:9:"cEmitente";b:0;s:10:"cPermissao";b:0;s:7:"cBackup";s:1:"1";s:8:"rCliente";s:1:"1";s:8:"rProduto";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";s:1:"1";s:6:"rVenda";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2016-08-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `idProdutos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProdutos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProdutos`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`) VALUES
(1, 'Óleo 15/40', 'LT', '10.00', '80.00', 94, 10),
(2, 'PASTILHA DE FREIO', '1', '10.00', '80.00', 1, 0),
(3, 'Coxin Superior do Amortecedor Dianteiro', 'Pc', '0.00', '61.00', 9998, 0),
(4, 'Teste', 'Un', '0.00', '10.00', 81, 0),
(5, 'bucha da barra direcao', 'Un', '0.00', '8.00', 18, 0),
(6, 'mangueira encapar mola', 'mt', '0.00', '14.00', 18, 0),
(7, 'caixa de direcao uno original', 'Un', '0.00', '420.00', 0, 0),
(8, 'oleo 15/40', 'Un', '0.00', '18.00', 91, 0),
(9, 'filtro de oleo', 'Un', '0.00', '18.00', 96, 0),
(10, 'rolamento de roda', 'un', '0.00', '70.00', 0, 0),
(11, 'borracha estabilizador (pneuzinho)', 'Un', '0.00', '15.00', 46, 0),
(12, 'coxim do amortecedor SUPERIOR', 'Un', '0.00', '40.00', 98, 0),
(13, 'kit batente amortecedor dianteiro', 'un', '0.00', '25.00', 48, 0),
(14, 'mangueira encapar mola', 'mt', '0.00', '14.00', 7, 0),
(15, 'abracadeira', 'un', '0.00', '2.00', 8, 0),
(16, 'carcaca da valvula termostatica', 'un', '0.00', '170.00', 0, 0),
(17, 'aditivo', 'un', '0.00', '25.00', 14, 0),
(18, 'amortecedor dianteiro -original', 'Un', '0.00', '175.00', 2, 0),
(19, 'braco do pivo', 'un', '0.00', '80.00', 2, 0),
(20, 'homocinetica lado da roda -original', 'un', '0.00', '160.00', 0, 0),
(21, 'oleo de cambio', 'un', '0.00', '20.00', 7, 0),
(22, 'LAMPADA LANTERNA TRASEIRA', 'Un', '0.00', '2.00', 98, 0),
(23, 'kit amortecedor suspensao', 'Un', '0.00', '40.00', 0, 0),
(24, 'coxim amortecedor superior fiesta -original', 'un', '0.00', '230.00', 0, 0),
(25, 'bieleta', 'un', '0.00', '45.00', 2, 0),
(26, 'pastilha de freio fiesta', 'Un', '0.00', '49.00', 8, 0),
(27, 'amortecedor fiesta -original', 'Un', '0.00', '240.00', 2, 0),
(28, 'disco de freio ventilado -fiesta', 'Un', '0.00', '57.00', 2, 0),
(29, 'TERMINAL DIRECAO DIREITO ORIGINAL - FIESTA', 'Un', '0.00', '68.00', 1, 0),
(30, 'OLEO SINTETICO 5/30', 'Un', '0.00', '30.00', 96, 0),
(31, 'TAMPA RESERVATORIO DE AGUA', 'UN', '0.00', '15.00', 4, 0),
(32, 'alinhamento', 'un', '0.00', '40.00', 4, 0),
(33, 'SENSOR DE ROTACAO DO CAMBIO-ORIGINAL', 'Un', '0.00', '180.00', 4, 0),
(34, 'limpeza de bico', 'un', '0.00', '80.00', 99, 0),
(35, 'anel de bico', 'un', '0.00', '1.50', 92, 0),
(36, 'jogo de vela', 'un', '0.00', '85.00', 99, 0),
(37, 'filtro de gasolina', 'un', '0.00', '24.00', 99, 0),
(38, 'dot 4', 'un', '0.00', '27.00', 99, 0),
(39, 'oleo sintetico original', 'UN', '0.00', '30.00', 97, 0),
(40, 'oleo 15/40 semisintetico', 'un', '0.00', '22.00', 96, 0),
(41, 'filtro de oleo', 'un', '0.00', '30.00', 19, 0),
(42, 'par de palheta', 'un', '0.00', '130.00', 9, 0),
(43, 'lampada de farol', 'un', '0.00', '25.00', 19, 0),
(44, 'solda na tubaje', 'un', '0.00', '30.00', 97, 0),
(45, 'junta de tubaje', 'un', '0.00', '28.00', 14, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE IF NOT EXISTS `produtos_os` (
  `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idProdutos_os`),
  KEY `fk_produtos_os_os1` (`os_id`),
  KEY `fk_produtos_os_produtos1` (`produtos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Extraindo dados da tabela `produtos_os`
--

INSERT INTO `produtos_os` (`idProdutos_os`, `quantidade`, `os_id`, `produtos_id`, `subTotal`) VALUES
(3, 2, 4, 3, '122'),
(6, 2, 4, 5, '16'),
(9, 1, 4, 6, '14'),
(10, 1, 6, 7, '400'),
(11, 3, 6, 8, '54'),
(12, 1, 6, 9, '18'),
(13, 1, 6, 10, '70'),
(14, 4, 6, 11, '60'),
(15, 2, 6, 12, '80'),
(16, 2, 6, 13, '50'),
(17, 1, 6, 14, '20'),
(18, 4, 7, 11, '60'),
(19, 2, 7, 18, '350'),
(20, 2, 7, 13, '50'),
(21, 2, 7, 12, '80'),
(22, 2, 7, 19, '160'),
(23, 3, 7, 8, '54'),
(24, 1, 7, 9, '18'),
(25, 1, 7, 7, '420'),
(26, 1, 7, 20, '160'),
(27, 1, 7, 6, '14'),
(28, 1, 7, 21, '20'),
(29, 2, 7, 22, '4'),
(31, 2, 9, 28, '114'),
(32, 1, 9, 26, '49'),
(33, 2, 9, 27, '480'),
(34, 2, 9, 23, '80'),
(35, 2, 9, 24, '460'),
(36, 2, 9, 25, '90'),
(39, 4, 9, 30, '128'),
(41, 1, 9, 31, '15'),
(43, 1, 9, 9, '18'),
(44, 1, 9, 29, '68'),
(46, 1, 9, 33, '180'),
(47, 1, 8, 26, '49'),
(48, 1, 8, 34, '80'),
(49, 8, 8, 35, '12'),
(50, 1, 8, 38, '27'),
(51, 1, 8, 36, '85'),
(52, 1, 8, 37, '24'),
(54, 1, 10, 9, '18'),
(55, 3, 10, 39, '90'),
(56, 1, 7, 32, '40'),
(57, 4, 11, 40, '88'),
(58, 1, 11, 41, '30'),
(59, 3, 12, 8, '54'),
(60, 1, 12, 9, '18'),
(61, 1, 13, 42, '130'),
(62, 1, 14, 43, '25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os2`
--

CREATE TABLE IF NOT EXISTS `produtos_os2` (
  `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT,
  `os_id` int(11) NOT NULL,
  `descprod` varchar(255) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idProdutos_os`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=190 ;

--
-- Extraindo dados da tabela `produtos_os2`
--

INSERT INTO `produtos_os2` (`idProdutos_os`, `os_id`, `descprod`, `subTotal`) VALUES
(2, 23, '2 Abraçadeira', '4.00'),
(3, 24, '1 carcaca da valvula termostatica com junta', '65.00'),
(4, 24, '4 abracadeira', '8.00'),
(5, 24, '1 cola', '24.00'),
(6, 24, '1 litro de aditivo', '26.00'),
(7, 25, '2 rolamento roda dianteira ', '140.00'),
(8, 25, '1 jogo de cabo de vela', '110.00'),
(9, 25, '2 coxin superior suspensao ', '120.00'),
(10, 26, '1 silindro mestre', '112.00'),
(11, 26, '1 metro de mangueira 7 m m', '14.00'),
(12, 26, '1 dot 3', '16.00'),
(13, 27, '1 Lampada H4', '25.00'),
(14, 28, '1 Kit de bucha da caixa de direcao', '28.00'),
(16, 28, '1 coxim superior do motor', '38.00'),
(18, 29, '2 homocinetica', '190.00'),
(19, 30, '1 jogo de pastilha de freio -original fiesta', '45.00'),
(20, 30, '1 par de disco', '115.00'),
(21, 30, '1 par de amortecedor dianteiro -original', '470.00'),
(22, 30, '2 coxim superior do amortecedor dianteiro', '185.00'),
(23, 30, '2 kit batente amortecedor', '80.00'),
(24, 30, '1 1/2 metro de mangueira de encapar mola', '14.00'),
(25, 30, '1 dot 3 ', '16.00'),
(26, 31, '1 jogo de vela original ford', '70.00'),
(27, 31, '1 jogo de cabo de vela', '102.00'),
(28, 31, '1/2 litro de oleo semi sintetico ', '11.00'),
(29, 32, '3 1/2 de oleo 5/30 sintetico', '105.00'),
(30, 32, '1 filtro de oleo', '18.00'),
(31, 33, '6 abracadeira', '12.00'),
(33, 33, '1 mangueira de agua do motor', '28.00'),
(34, 33, '1 tubo de circulacao de agua do motor - original', '43.00'),
(35, 34, '1 cebolinha de oleo ', '18.00'),
(36, 34, '1 peneira de oleo do carter motor', '15.00'),
(38, 34, '2 1/2 oleo', '35.00'),
(39, 34, '2 junta de tampa de valvula', '15.00'),
(40, 35, '2 junta da tampa de valvula', '15.00'),
(41, 35, '1 cebolinha de oleo do motor original', '28.00'),
(42, 35, '1 reparo do carburador ', '16.00'),
(43, 35, '1 litro de thinner', '12.00'),
(44, 36, '3 litro de oleo 5/30 sintetico', '96.00'),
(45, 36, '1 filtro de oleo', '18.00'),
(46, 36, '1 bateria 60amp free', '290.00'),
(47, 37, '1 filtro de ar', '78.00'),
(48, 37, '1 filtro de oleo', '78.00'),
(49, 37, '10 litro de oleo de motor', '130.00'),
(50, 38, '1 limpeza de bico', '80.00'),
(52, 38, '3 litro de oleo 5/30 sintetico', '96.00'),
(53, 38, '1 filtro de oleo', '18.00'),
(54, 38, '1 dot 4 ', '25.00'),
(55, 38, '1 rolamento de roda dianteiro', '82.00'),
(56, 38, '1 anel da bubina', '12.00'),
(57, 38, '1 correia do alternador', '22.00'),
(58, 38, '1 correia dentada', '49.00'),
(60, 39, '1 sensor de combustivel (boia)', '80.00'),
(61, 40, '3 1/2 de oleo 5/30 sintetico', '112.00'),
(62, 40, '1 filtro de oleo', '18.00'),
(64, 40, '1 filtro de gasolina', '23.00'),
(65, 40, '1 filtro de ar condicionado', '43.00'),
(67, 40, '1 dot 4', '25.00'),
(69, 41, '1 filtro de oleo', '35.00'),
(71, 43, '4 litro de oleo 5/30 sintetico', '128.00'),
(72, 43, 'I filtro de oleo', '18.00'),
(73, 43, 'I par de disco ventilado dianteiro ', '180.00'),
(74, 43, 'I jogo de pastilha de freio', '96.00'),
(75, 43, '1 filtro de ar', '33.00'),
(76, 41, '1 bateria 45 amp free', '265.00'),
(77, 41, '4 1/2 de oleo sintetico 5/30', '144.00'),
(78, 43, '1 jogo de vela', '98.00'),
(79, 43, '1 jogo de cabo de vela', '138.00'),
(80, 44, '1 bateria 60 amp free', '320.00'),
(81, 45, '1 jogo de pastilha de freio', '48.00'),
(82, 45, '1par de palheta', '40.00'),
(83, 45, '1 dot 4', '25.00'),
(84, 46, '1 jogo de cabo de vela', '105.00'),
(85, 46, '1 bobina original -Fiesta', '152.00'),
(86, 46, '2 coxim superior com rolamento original', '460.00'),
(87, 46, '2 kit batente do amortecedor', '80.00'),
(88, 46, '1 jogo de pastilha de freio', '45.00'),
(89, 46, '1 litro de oleo 15/40 semisintetico', '22.00'),
(90, 46, '1 barra axial', '45.00'),
(92, 48, '1 filtro de oleo', '18.00'),
(93, 48, '1 bojao do carter', '19.00'),
(94, 48, '1 jogo de pastilha de freio', '49.00'),
(95, 48, '4 litro de oleo 5/30 sintetico', '100.00'),
(97, 50, '1 bomba de agua', '96.00'),
(98, 50, '1 carcaca da valvula termostatica c/ valvula e juntas', '284.00'),
(99, 50, '1 mangueira', '47.00'),
(100, 50, '1 cebolao do radiador', '55.00'),
(101, 50, '2 barra axial', '104.00'),
(102, 51, '10 litro de oleo 15/40', '130.00'),
(103, 52, '1bateria do Honda Civic', '330.00'),
(104, 53, '1 jogo de pastilha de freio', '48.00'),
(105, 53, '1 dot 4', '25.00'),
(106, 51, '1 bateria 80 amp', '360.00'),
(107, 51, '1 lavagem', '50.00'),
(108, 54, '1 protetor de carter', '180.00'),
(109, 29, '1 rolamento da roda dianteira ', '60.00'),
(110, 55, '1 filtro de oleo', '18.00'),
(111, 55, '3 1/2 de oleo 5/30 sintetico', '112.00'),
(112, 55, '1filtro de gasolina', '18.00'),
(113, 56, '1 filtro de ar', '32.00'),
(114, 56, '1 filtro de gasolina', '18.00'),
(115, 56, '1 filtro de oleo', '18.00'),
(116, 56, '4 litro de oleo 5/30 sintetico', '136.00'),
(117, 57, '3 1/2 oleo 20/50', '49.00'),
(118, 57, '1 filtro de oleo', '18.00'),
(120, 57, '1 pivo lado direito', '40.00'),
(121, 57, '1 barra axial lado direito ', '73.00'),
(122, 57, '1 jogo de pastilha de freio', '59.00'),
(123, 57, '1 cabo do acelerador', '30.00'),
(124, 58, '1 par de disco de freio ventilado', '168.00'),
(125, 58, '1 jogo de pastilha de freio', '48.00'),
(126, 58, '1  escapamento intermediaria', '207.00'),
(127, 58, '1  escapamento traseiro', '186.00'),
(128, 58, '2 abracadeira de escapamento', '10.00'),
(129, 58, '1 dot 4', '25.00'),
(130, 59, '3 1/2 oleo semisintetico', '77.00'),
(131, 59, '1 filtro de oleo', '18.00'),
(132, 60, '1 sensor de rotacao original GM', '160.00'),
(133, 62, '4 litro de oleo 5/30 sintetico', '136.00'),
(134, 62, '1filtro de oleo', '18.00'),
(135, 62, '1filtro de gasolina', '22.00'),
(136, 62, '1filtro de ar', '20.00'),
(137, 62, '1 dot 4', '25.00'),
(138, 62, '1 jogo de pastilha de freio -original agile', '70.00'),
(139, 62, '1 anel do bojao', '6.00'),
(140, 62, '8 anel do bico', '12.00'),
(141, 62, '1 jogo de vela -original', '73.00'),
(142, 62, '1 jogo cabo de vela -original', '85.00'),
(143, 62, '1 litro de aditivo', '25.00'),
(144, 62, '1 litro de oleo ATF', '19.00'),
(145, 63, '3 1/2 de oleo 5/30 sintetico', '105.00'),
(146, 63, '1 filtro de oleo', '18.00'),
(147, 64, '1 jogo de vela', '100.00'),
(148, 64, '1 jogo de cabo vela -original', '138.00'),
(150, 64, '1 bubina - original', '510.00'),
(151, 64, '3 1/2 de oleo 5/30 sintetico', '119.00'),
(152, 64, '1 filtro de oleo', '18.00'),
(153, 65, '1 jogo de pastilha de freio', '48.00'),
(154, 65, '1 dot 4', '25.00'),
(155, 65, '1 correia do alternador ', '35.00'),
(156, 65, '1 rolamento da correia do alternador -original', '65.00'),
(157, 66, '1 jogo de vela', '78.00'),
(158, 66, 'jogo de cabo de vela', '180.00'),
(159, 66, '1 passe no volante', '80.00'),
(160, 67, '2 amortecedor traseiro -original', '248.00'),
(161, 67, '2 kit batente amortecedor', '46.00'),
(162, 68, '3 1/2 de oleo 5/30 sintetico', '119.00'),
(163, 68, '1 filtro de oleo', '18.00'),
(164, 69, '1  correia do alternador', '18.00'),
(165, 69, '1  filtro de ar', '26.00'),
(166, 69, '1 bomba de agua -original', '160.00'),
(167, 69, '1 selo de agua do motor', '9.00'),
(168, 69, '3 litro de oleo 15/40 mineral', '54.00'),
(169, 69, '1 filtro de oleo', '18.00'),
(170, 69, '1 correia dentada', '52.00'),
(171, 69, '1 rolamento correia dentada', '130.00'),
(172, 69, '1 litro de aditivo ', '25.00'),
(173, 70, '1 bateria 150 amp', '520.00'),
(174, 71, '1 tampa do reservatorio', '15.00'),
(175, 71, '1 reservatorio de agua', '68.00'),
(176, 71, '1 bomba de agua de agua', '64.00'),
(177, 71, '1 carcaca da bomba de agua', '52.00'),
(178, 71, '10 parafuso para bomba de agua', '7.00'),
(179, 71, '1 valvula termostatica', '39.00'),
(180, 71, '1 selo de agua', '9.00'),
(181, 71, '1 correia do alternador', '18.00'),
(182, 71, '1 catraca do pedal da embreagem', '25.00'),
(183, 72, '1 atuador ', '90.00'),
(184, 72, '1 mangueira de filtro de ar', '42.00'),
(185, 72, '2 metro de mangueira 7 mm para injecao', '36.00'),
(186, 72, '4 abracadeira', '8.00'),
(189, 72, '1 junta coletor admissao', '14.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE IF NOT EXISTS `servicos` (
  `idServicos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idServicos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`idServicos`, `nome`, `descricao`, `preco`) VALUES
(1, 'Mão de Obra', '', '5.00'),
(2, 'Mão de Obra', '', '10.00'),
(3, 'Mão de Obra', '', '300.00'),
(5, 'TROCAR PASTILHA DE FREIO', '', '0.00'),
(6, 'TROCAR DISCO', '', '0.00'),
(7, 'trocar bucha da barra de direcao 2 lados', '', '0.00'),
(8, 'trocar coxim superior dianteiro 2 lado', '', '0.00'),
(9, 'encapar mola', '', '0.00'),
(10, 'trocar caixa de direcao', '', '0.00'),
(11, 'trocar oleo e filtro de oleo', '', '0.00'),
(12, 'trocar rolamento de rola esquerdo', '', '0.00'),
(13, 'trocar os 4 pneuzinho', '', '0.00'),
(14, 'trocar coxim e kit batente amortecedor', '', '0.00'),
(15, 'trocar batente e gurda po amortecedor 2 lado', '', '0.00'),
(16, 'trocar os 2 amortecedor dianteiro', '', '0.00'),
(17, 'trocar homocinetica', '', '0.00'),
(18, 'completar oleo de cambio', '', '0.00'),
(19, 'trocar braco do pivo', '', '0.00'),
(20, 'TROCAR TERMINAL DIRECAO DIREITO', '', '0.00'),
(21, 'TROCAR BIELETA 2 LADOS', '', '0.00'),
(22, 'TROCAR TAMPA RESERVATORIO DE AGUA', '', '0.00'),
(23, 'TROCAR SENSOR ROTACAO DO CAMBIO', '', '0.00'),
(24, 'trocar anel do bico', '', '0.00'),
(25, 'trocar filtro de gasolina', '', '0.00'),
(26, 'trocar vela', '', '0.00'),
(27, 'limpar bico', '', '0.00'),
(28, 'trocar anel dos bicos', '', '0.00'),
(29, 'sangrar as 4 rodas', '', '0.00'),
(30, 'trocar reservatorio de freio', '', '0.00'),
(31, 'mao de obra', '', '120.00'),
(32, 'diagnostico com aparelho', '', '0.00'),
(33, 'mao de olbra', '', '280.00'),
(34, 'tirar tubagem completa para solda', '', '0.00'),
(35, 'trocar junta de tubaje do escape', '', '0.00'),
(36, 'mao de obra', '', '90.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE IF NOT EXISTS `servicos_os` (
  `idServicos_os` int(11) NOT NULL AUTO_INCREMENT,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idServicos_os`),
  KEY `fk_servicos_os_os1` (`os_id`),
  KEY `fk_servicos_os_servicos1` (`servicos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Extraindo dados da tabela `servicos_os`
--

INSERT INTO `servicos_os` (`idServicos_os`, `os_id`, `servicos_id`, `subTotal`) VALUES
(9, 4, 9, NULL),
(10, 4, 7, NULL),
(13, 4, 8, NULL),
(14, 4, 3, NULL),
(15, 6, 10, NULL),
(16, 6, 11, NULL),
(17, 6, 12, NULL),
(18, 6, 13, NULL),
(19, 6, 14, NULL),
(20, 6, 9, NULL),
(21, 6, 3, NULL),
(22, 7, 11, NULL),
(23, 7, 16, NULL),
(24, 7, 15, NULL),
(25, 7, 8, NULL),
(26, 7, 19, NULL),
(27, 7, 10, NULL),
(28, 7, 17, NULL),
(29, 7, 9, NULL),
(30, 7, 18, NULL),
(31, 7, 13, NULL),
(32, 7, 3, NULL),
(33, 9, 11, NULL),
(34, 9, 6, NULL),
(35, 9, 5, NULL),
(36, 9, 16, NULL),
(38, 9, 14, NULL),
(39, 9, 20, NULL),
(41, 9, 21, NULL),
(42, 9, 22, NULL),
(43, 9, 23, NULL),
(44, 8, 27, NULL),
(45, 8, 26, NULL),
(46, 8, 25, NULL),
(47, 8, 5, NULL),
(48, 8, 28, NULL),
(49, 8, 30, NULL),
(50, 8, 29, NULL),
(51, 8, 31, NULL),
(52, 9, 32, NULL),
(53, 9, 33, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os2`
--

CREATE TABLE IF NOT EXISTS `servicos_os2` (
  `idServicos_os` int(11) NOT NULL AUTO_INCREMENT,
  `os_id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `totalsrv` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idServicos_os`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Extraindo dados da tabela `servicos_os2`
--

INSERT INTO `servicos_os2` (`idServicos_os`, `os_id`, `descricao`, `totalsrv`) VALUES
(2, 16, '8 Anéis de Bico', '12.00'),
(3, 16, '1 Filtro de Gasolina', '22.00'),
(4, 16, '1 Carga Bateria', '15.00'),
(7, 17, 'cabo de vela bosch', '98.00'),
(8, 17, 'jogo de vela ngk', '68.00'),
(9, 17, 'trocar cabo de vela, trocar vela do motor,regular ponto do motor', '80.00'),
(10, 18, 'PASTILHA DE FREIO -ORIGINAL', '120.00'),
(11, 18, 'DOT 4 ', '16.00'),
(12, 18, 'TROCAR PASTILHA DE FREIO', '50.00'),
(13, 19, '4 litro  oleo sintetico 5/30', '128.00'),
(14, 19, 'filtro de oleo', '18.00'),
(15, 16, 'desmontar bico para limpeza,trocar aneis do bico,trocar filtro de gasolina', '80.00'),
(16, 20, '1 pivo da suspensao', '88.00'),
(19, 20, '1 filtro de oleo', '18.00'),
(20, 20, '1 jogo de pastilha de freio meriva -original', '112.00'),
(21, 20, '4 litro  de oleo 15/40 semisintetico', '88.00'),
(23, 20, '250 ml dot 4', '9.00'),
(24, 20, 'trocar pivo da suspensao, trocar pastiha de freio , trocar oleo e filtro de oleo', '100.00'),
(25, 21, '1 dot 3', '16.00'),
(26, 21, '2 cilindro de freio traseiro', '56.00'),
(27, 21, '1 cabo de freio de mao', '59.00'),
(29, 21, 'trocar os 2 cilindro de freio traseiro, trocar o cabo de freio de mao ,regular freio traseiro ,colocar oleo no sistema ,sangrar as 4 rodas', '90.00'),
(30, 22, '1 bateria 60 amp', '160.00'),
(33, 24, 'trocar carcaca da valvula termostatica, trocar juta da valvula termostatica, colocar aditivo no sistema, trocar abracadeiras', '90.00'),
(34, 25, 'trocar cabo de vela ,trocar rolamento roda dianteira 2 lados, trocar coxin superior  2 lados', '60.00'),
(35, 26, 'trocar cilindro mestre ,trocar mangueira do reservatorio ,colocar oleo no sistema ,sangrar as 4 rodas ,regular freio das 4 rodas', '120.00'),
(36, 28, 'Trocar conjunto de bucha da caixa de ditecao, trocar coxim superior do motor', '100.00'),
(39, 30, 'trocar pastilha de freio ,trocar disco de freio ,colocar oleo no sistema de freio ,sangrar freio ,trocar amortecedor ,trocar coxim superior e kit batente do amortecedor ,encapar mola ,regular freio traseiro', '200.00'),
(40, 33, 'trocar tubo de circulacao de agua ,trocar mangueira de agua , trocar abracadeiras', '90.00'),
(41, 34, 'trocar cebolinha de oleo do motor ,trocar peneira e tampa de oleo do motor com bojao ,trocar oleo ,trocar as 2 junta da tampa de valvula ,regular valvula', '80.00'),
(42, 35, 'tirar carburador completo para limpeza ,regular valvula ,trocar cebolinha do oleo ,regular ponto do motor ,trocar junta de tampa de valvula ,arrumar lampada do painel', '140.00'),
(43, 38, 'trocar correia dentada ,trocar rolamento da correia dentada, trocar correia do alternador, trocar oleo e filtro de oleo, trocar homocinetica externa direita, trocar rolamento da roda dianteira esquerda ,limpar bico e trocar anel, trocar velas, regular fre', '300.00'),
(44, 39, 'trocar sensor de combustivel', '60.00'),
(45, 40, 'fazer higienizacao do ar condicionado ,trocar oleo e filtro de oleo,trocar filtro de gasolina,completar oleo do sistema de freio', '60.00'),
(46, 41, 'trocar oleo e filtro de oleo, trocar bateria, passar aparelho para apagar a luz do painel', '80.00'),
(47, 43, 'trocar oleo e filtro de oleo, trocar filtro de ar, trocar disco e pastilha de freio, regular freio traseiro e freio de mao, trocar vela e cabo de vela', '120.00'),
(48, 45, 'trocar pastilha de freio,colocar fluido de freio no sistema, trocar palheta ', '50.00'),
(49, 46, 'trocar bobina e jogo de vela, trocar coxim superior e kit batente do amortecedor, trocar pastilha de freio, completar oleo do motor, trocar barra axial da direcao lado esquerdo', '240.00'),
(50, 48, 'treocar oleo e filtro de oleo ,trocar pastilha de freio', '40.00'),
(52, 50, 'trocar bomba de agua, trocar carcaca da valvula com a valvula, trocar mangueira de agua da carcaca da valvula termostatica, trocar cebolao do radiador, trocar as 2 barra axial da caixa', '240.00'),
(53, 47, 'trocar oleo e filtro de oleo, trocar filtro de gasolina, trocar filtro de ar,regular freio traseiro,trocar reservatorio de agua, fazer limpeza do sistema de agua do radiador', '120.00'),
(54, 53, 'colocar oleo no sistema e trocar pastilha de freio', '40.00'),
(55, 51, 'trocar oleo do motor, trocar bateria', '40.00'),
(56, 49, 'trocar barra axial os 2 lados, trocar terminal da direcao os dois lados, completar oleo de cambio', '140.00'),
(57, 29, 'trocar homocinetica os 2 lados ,trocar rolamento da roda dianteira lado esquardo', '160.00'),
(58, 57, 'trocar oleo e filtro de oleo, trocar pivo lado direito, trocar barra axial da direcao lado direito, trocar pastilha de freio, trocar cabo do acelerador', '120.00'),
(60, 58, 'trocar pastilha e disco de freio,trocar escapamento intermediario,trocar escapamento traseiro,trocar abracadeiras, colocar oleo no sistema de freio', '140.00'),
(61, 60, 'trocar sensor de rotacao ,e diagnostico com aparelho', '80.00'),
(62, 62, 'trocar oleo e filtro de oleo, trocar filtro de gasolina,trocar filtro de gasolina, trocar filtro de ar, colocar oleo no sistema de freio, trocar pastilha de freio,trocar anel do bojao, fazer limpeza de bico e trocar aneis do bico, trocar vela e cabo de ve', '240.00'),
(63, 61, 'trocar kit trambulador do cambio, trocar bucha lateralda carcaca do cambio, trocar bucha do varao da alavanca de cambio,trocar selo de agua do motor,trocar valvula do ar quente', '120.00'),
(64, 64, 'trocar oleo e filtro de oleo, trocar velas e cabo de vela, trocar bubina ,passar diagnostico com o aparelho', '120.00'),
(65, 65, 'regular freio traseiro, trocar pastilha de freio, trocar oleo do sistema de freio, trocar rolamento e correia do alternador', '120.00'),
(66, 66, 'limpar tanque de combustivel, limpar os bicos da  injecao,trocar vela e cabo de vela', '320.00'),
(67, 67, 'trocar kit batente amortecedor traseiro, trocar amortecedor traseiro', '90.00'),
(68, 69, 'trocar oleo e filtro de oleo, trocar selo de agua do motor,trocar correia dentada, trocar rolamento da correia dentada, trocar bomba de agua, trocar filtro de ar,trocar correia do alternador,e colocar aditivo no sistema', '260.00'),
(69, 71, 'trocar reservatorio e tampa do reservatorio, trocar carcaça da bomba de agua e bomba de agua, trocar valvula termostatica, trocar selo de agua do motor, trocar correia do alternador, trocar catraca do pedal da embreagem ', '280.00'),
(71, 72, 'trocar atuador,trocar 2 mangueira de combustivel, trocar junta do coletor de admissao, trocar mangueira do filtro de ar, passar diagnostico com aparelho', '120.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `nivel` int(11) NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `nivel`, `permissoes_id`) VALUES
(1, 'admin', '111', '111', '111', '111', '111', 'Itapira', 'SP', 'leandro.jsilveira@fatec.sp.gov.br', '0808a30d84b8858f1f900401161e0ecf674ac4c0', '0000-0000', '', 1, '2013-11-22', 1, 1),
(3, 'Tales Aparecido Gnani', '43.071.821-4', '340.752.018-21', 'Rua Alonso Carmona', '25', 'Jardim Macucos', 'Itapira', 'SP', 'talesgnani14@gmail.com', 'e378742df8752a209e90da022965c8800b6645ff', '(19) 3863-5021', '', 1, '2016-04-06', 0, 3),
(4, 'Gabriel', '1111111', '309.620.208-77', 'Alonso Carmona', '25', 'São Vicente', 'Itapira', 'SP', 'gabriel@gabriel.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '(19) 3863-5021', '', 1, '2016-08-02', 0, 2),
(5, 'Raul', '111111', '111111', 'Alonso Carmona', '25', 'São Vicente', 'Itapira', 'SP', 'Raul@Raul.com', '210a28f50a8e9a0986df287ac9ae224de95b8978', '(19) 3863-5021', '', 1, '2016-08-02', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE IF NOT EXISTS `vendas` (
  `idVendas` int(11) NOT NULL AUTO_INCREMENT,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVendas`),
  KEY `fk_vendas_clientes1` (`clientes_id`),
  KEY `fk_vendas_usuarios1` (`usuarios_id`),
  KEY `fk_vendas_lancamentos1` (`lancamentos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`idVendas`, `dataVenda`, `valorTotal`, `desconto`, `faturado`, `clientes_id`, `usuarios_id`, `lancamentos_id`) VALUES
(5, '2016-08-02', NULL, NULL, 0, 5, 3, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
