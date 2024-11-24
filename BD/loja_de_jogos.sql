-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/10/2024 às 20:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_de_jogos`
--
CREATE DATABASE `loja_de_jogos`;
USE DATABASE `loja_de_jogos`;
-- --------------------------------------------------------

--
-- Estrutura para tabela `adm`
--

CREATE TABLE `adm` (
  `CodFuncionario` int(11) NOT NULL,
  `Senha` varchar(15) NOT NULL,
  `EmailFunc` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `adm`
--

INSERT INTO `adm` (`CodFuncionario`, `Senha`, `EmailFunc`) VALUES
(1, 'Zeromeia', 'henrique.macedo@gmail'),
(2, 'Tiquinho', 'gustavo.abreu16@etec.sp.gov.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `CodCategoria` int(11) NOT NULL,
  `CategoriaTipo` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`CodCategoria`, `CategoriaTipo`) VALUES
(1, 'Competitivo Online'),
(2, 'Cooperativo'),
(3, 'MMO'),
(4, 'Multijogador'),
(5, 'Multijogador local'),
(6, 'Rede Local(LAN)'),
(7, 'Um jogador');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoriajogo`
--

CREATE TABLE `categoriajogo` (
  `CodJogo` int(11) NOT NULL,
  `CodCategoria` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categoriajogo`
--

INSERT INTO `categoriajogo` (`CodJogo`, `CodCategoria`) VALUES
(1, 7),
(2, 2),
(2, 4),
(2, 5),
(3, 7),
(4, 2),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 7),
(6, 1),
(6, 2),
(6, 4),
(6, 5),
(6, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `classificacaoindicativa`
--

CREATE TABLE `classificacaoindicativa` (
  `CodFaixaEtaria` int(11) NOT NULL,
  `ClassificacaoIndicativa` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `classificacaoindicativa`
--

INSERT INTO `classificacaoindicativa` (`CodFaixaEtaria`, `ClassificacaoIndicativa`) VALUES
(1, 'Livre'),
(2, '10 anos'),
(3, '12 anos'),
(4, '14 anos'),
(5, '16 anos'),
(6, '18 anos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `CodCliente` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Nickname` varchar(50) NOT NULL,
  `DataNasc` date NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Senha` varchar(30) NOT NULL,
  `Email` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`CodCliente`, `Nome`, `Nickname`, `DataNasc`, `CPF`, `Senha`, `Email`) VALUES
(1, 'Gustavo de Souza\r\n', 'Ioo', '2004-10-03', '553.885.121-00', 'ramonas', 'gustavo.adsa12@gmail.com'),
(2, 'Pedro Eduardo', 'PedroLoLo23', '2004-10-21', '026.279.840-98', 'Hgsywe/27436', 'Pedrinhokawai@gmail.com'),
(3, 'Matheus Jorge Santana', 'Math002', '2007-12-03', '619.706.610-62', 'hcuG12498.12', 'MatheusBonitinhoMB@gmail.com'),
(4, 'Enzo Souto Cavalcante', 'EnzinhoLegal1', '2007-11-14', '010.547.580-77', 'BSYHWGff!4', 'EnzinhoDaMassa@outlook.com'),
(5, 'Henrique da Silva Macedo', 'Henrique1lugar', '2007-12-15', '767.545.980-69', 'G.YeHUIWJ1ee', 'henrique1lugar@gmail.com'),
(6, 'Raul Souza Sá', 'NinjaLobo00', '2005-01-25', '331.569.000-60', 'aJBN21632376..', 'NINJALOBO0000@gmail.com'),
(7, 'Martha de Souza', 'Mattyyy06', '2011-10-10', '713.154.070-60', 'sjdgfg!!HAHAHA', 'zeromeiaseubisonho@etec.sp.gov.br'),
(8, 'Luan Gosling de Vasconcelo', 'LuanzinhoManeiro171', '2006-05-17', '911.739.650-68', 'shgAsy##3311', 'LuanZinhoManeiringo@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `desenvolvedora`
--

CREATE TABLE `desenvolvedora` (
  `CodDesenvolvedora` int(11) NOT NULL,
  `NomeDesenvolvedora` varchar(50) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `Email_Contato` varchar(80) NOT NULL,
  `SiteOficial` varchar(2085) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `desenvolvedora`
--

INSERT INTO `desenvolvedora` (`CodDesenvolvedora`, `NomeDesenvolvedora`, `CNPJ`, `Email_Contato`, `SiteOficial`) VALUES
(1, 'Team Cherry', '69907994000120', 'teamCherry@gmail.com', 'https://www.teamcherry.com.au/'),
(2, ' Studio MDHR Entertainment Inc', '04013024000136', 'press@studiomdhr.com\r\n', 'http://studiomdhr.com/'),
(3, ' Sabotage Studio', '08242237000190', 'philip@sabotagestudio.com', 'https://sabotagestudio.com/'),
(4, ' ConcernedApe', '98025037000179', 'support@stardewvalley.net', 'https://www.stardewvalley.net/author/concernedape/'),
(5, ' Bedtime Digital Games', '06142151000160', 'contact@bedtime.io', '\r\nBedtime Digital Games'),
(6, ' Unfinished Pixel', '64188722000102', 'contact@unfinishedpixel.com', 'https://www.unfinishedpixel.com/');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `CodGenero` int(11) NOT NULL,
  `GeneroDescr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`CodGenero`, `GeneroDescr`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'RPG'),
(4, 'Simulação'),
(5, 'Estratégia'),
(6, 'Esporte e Corrida');

-- --------------------------------------------------------

--
-- Estrutura para tabela `generojogo`
--

CREATE TABLE `generojogo` (
  `CodJogo` int(11) NOT NULL,
  `CodGenero` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `generojogo`
--

INSERT INTO `generojogo` (`CodJogo`, `CodGenero`) VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(3, 2),
(1, 1),
(4, 3),
(4, 4),
(5, 2),
(5, 5),
(7, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `CodJogo` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `DtLancamento` date NOT NULL,
  `Avaliacao` float NOT NULL,
  `CodFaixaEtaria` int(11) NOT NULL,
  `ReqMinId` int(11) NOT NULL,
  `Preco` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`CodJogo`, `Nome`, `DtLancamento`, `Avaliacao`, `CodFaixaEtaria`, `ReqMinId`, `Preco`) VALUES
(1, 'Hollow Knight', '2018-02-24', 5, 1, 2, 45),
(2, 'Cuphead', '2017-09-29', 5, 2, 2, 35),
(3, 'Sea of Stars', '2023-09-29', 4.5, 2, 2, 90),
(4, 'Stardew Valley', '2016-02-26', 5, 3, 1, 25),
(5, 'Back to Bed', '2014-08-06', 3.5, 1, 1, 10),
(6, 'Super Sports Blast', '2021-01-29', 4, 1, 2, 45);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogodesenvolvedora`
--

CREATE TABLE `jogodesenvolvedora` (
  `CodDesenvolvedora` int(11) NOT NULL,
  `CodJogo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `jogodesenvolvedora`
--

INSERT INTO `jogodesenvolvedora` (`CodDesenvolvedora`, `CodJogo`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `meiopagamento`
--

CREATE TABLE `meiopagamento` (
  `CodMeioPagamento` int(11) NOT NULL,
  `OpcoesPagamento` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `meiopagamento`
--

INSERT INTO `meiopagamento` (`CodMeioPagamento`, `OpcoesPagamento`) VALUES
(1, 'Débito'),
(2, 'Crédito'),
(3, 'PicPay'),
(4, 'Pix'),
(5, 'Boleto'),
(6, 'PayPal');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notafiscal`
--

CREATE TABLE `notafiscal` (
  `CodNotaFiscal` int(11) NOT NULL,
  `CodCliente` int(11) DEFAULT NULL,
  `MeioPagamento` int(11) NOT NULL,
  `DataCompra` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `notafiscal`
--

INSERT INTO `notafiscal` (`CodNotaFiscal`, `CodCliente`, `MeioPagamento`, `DataCompra`) VALUES
(1, 1, 1, '2024-10-02 11:22:27'),
(2, 2, 2, '2024-10-10 15:52:27'),
(3, 3, 3, '2024-09-07 01:42:37'),
(4, 4, 4, '2024-08-19 14:13:37'),
(5, 5, 5, '2024-10-23 19:58:01'),
(6, 6, 6, '2024-10-24 08:02:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notafiscaljogo`
--

CREATE TABLE `notafiscaljogo` (
  `CodNotaFiscal` int(11) DEFAULT NULL,
  `CodJogo` int(11) NOT NULL,
  `QtdVend` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `notafiscaljogo`
--

INSERT INTO `notafiscaljogo` (`CodNotaFiscal`, `CodJogo`, `QtdVend`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 6, 4),
(4, 3, 1),
(5, 5, 1),
(5, 1, 1),
(6, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reqminimos`
--

CREATE TABLE `reqminimos` (
  `ReqMinId` int(11) NOT NULL,
  `SOMin` varchar(50) NOT NULL,
  `GPUMin` varchar(50) NOT NULL,
  `CPUMin` varchar(50) NOT NULL,
  `DirectXMin` varchar(50) NOT NULL,
  `Armazenamento` varchar(30) NOT NULL,
  `RAMmin` varchar(20) NOT NULL,
  `OBS` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `reqminimos`
--

INSERT INTO `reqminimos` (`ReqMinId`, `SOMin`, `GPUMin`, `CPUMin`, `DirectXMin`, `Armazenamento`, `RAMmin`, `OBS`) VALUES
(1, 'Windows 7', 'Integrada (ex: Intel HD Graphics 3000)', 'Dual-Core (ex: Intel Core 2 Duo, AMD Athlon 64 X2)', ' DirectX 9', '2 GB', '2 GB', 'PC de nível baixo'),
(2, 'Windows 8.1', ' Integrada (ex: Intel HD Graphics 4000, AMD Radeon', 'Dual-Core (ex: Intel Core i3 4ª geração, AMD Ryzen', ' DirectX 10', '5 GB', ' 4 GB', 'PC de potência moderadamente baixa'),
(3, 'Windows 10', 'Dedicada de entrada (ex: NVIDIA GTX 750 Ti, AMD R7', 'Quad-Core (ex: Intel Core i5 4ª geração, AMD Ryzen', ' DirectX 11', '10 GB', '6 GB', 'PC de potência média'),
(4, 'Windows 10', 'Dedicada intermediária (ex: NVIDIA GTX 1050 Ti, AM', 'Quad-Core (ex: Intel Core i5 8ª geração, AMD Ryzen', 'DirectX 11', '20 GB', '8 GB', 'PC de potência moderadamente alta'),
(5, 'Windows 10', 'Dedicada de nível médio (ex: NVIDIA GTX 1660, AMD ', 'Hexa-Core (ex: Intel Core i5 10ª geração, AMD Ryze', 'DirectX 12', '30 GB', '12 GB', 'PC de potência alta');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`CodFuncionario`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodCategoria`);

--
-- Índices de tabela `classificacaoindicativa`
--
ALTER TABLE `classificacaoindicativa`
  ADD PRIMARY KEY (`CodFaixaEtaria`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CodCliente`),
  ADD UNIQUE KEY `CodCliente` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CodCliente_2` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CodCliente_3` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CodCliente_4` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CodCliente_5` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CodCliente_6` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `Email` (`CodCliente`,`Email`,`Nickname`),
  ADD UNIQUE KEY `CPF` (`CPF`) USING BTREE;

--
-- Índices de tabela `desenvolvedora`
--
ALTER TABLE `desenvolvedora`
  ADD PRIMARY KEY (`CodDesenvolvedora`),
  ADD UNIQUE KEY `Email_Contato` (`Email_Contato`),
  ADD UNIQUE KEY `CNPJ` (`CNPJ`),
  ADD UNIQUE KEY `SiteOficial` (`SiteOficial`) USING HASH;

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`CodGenero`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`CodJogo`);

--
-- Índices de tabela `meiopagamento`
--
ALTER TABLE `meiopagamento`
  ADD PRIMARY KEY (`CodMeioPagamento`);

--
-- Índices de tabela `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD PRIMARY KEY (`CodNotaFiscal`);

--
-- Índices de tabela `reqminimos`
--
ALTER TABLE `reqminimos`
  ADD PRIMARY KEY (`ReqMinId`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm`
--
ALTER TABLE `adm`
  MODIFY `CodFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CodCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `classificacaoindicativa`
--
ALTER TABLE `classificacaoindicativa`
  MODIFY `CodFaixaEtaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `CodCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `desenvolvedora`
--
ALTER TABLE `desenvolvedora`
  MODIFY `CodDesenvolvedora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `CodGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `CodJogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `meiopagamento`
--
ALTER TABLE `meiopagamento`
  MODIFY `CodMeioPagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `notafiscal`
--
ALTER TABLE `notafiscal`
  MODIFY `CodNotaFiscal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `reqminimos`
--
ALTER TABLE `reqminimos`
  MODIFY `ReqMinId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
