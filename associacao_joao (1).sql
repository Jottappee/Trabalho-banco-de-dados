-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2025 às 14:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_joao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associados` int(11) NOT NULL,
  `nome_completo` varchar(250) NOT NULL,
  `e_email` varchar(200) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `cidade` varchar(160) NOT NULL,
  `comunidade` varchar(178) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `data_associado` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associados`, `nome_completo`, `e_email`, `cpf`, `cidade`, `comunidade`, `cep`, `data_associado`, `telefone`, `profissao`) VALUES
(1, 'JOÃO', 'joao@gmail.com', 'OOOOOOOOOOO', 'São Francisco', 'Jardim Graziela', '39300000', '2025-08-18', '3899992425', 'capoerista'),
(2, 'BERNADO', 'bernado@gmail.com', '123456789', 'São Francisco', 'sagrada', '39300000', '2025-08-19', '3899999767', 'pedreiro'),
(3, 'LUIS', 'luis@gmail.com', '1234567', 'Luislândia', 'campos gerais', '39336000', '2025-08-25', '389995654', 'servente de pedreiro'),
(4, 'victória', 'vic@gmail.com', '2222222', 'São Francisco', 'sagrada familia', '39300000', '2025-08-27', '3899999999', 'advogada'),
(5, 'giovana', 'giovana@gmail', '12345667', 'São Francisco', 'Eldorado', '39300000', '2025-05-28', '389999333', 'PROFESSORA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimentos` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_ano_referencia` varchar(60) NOT NULL,
  `pendencias` varchar(100) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` varchar(106) NOT NULL,
  `id_associados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuicao`, `data_vencimentos`, `valor_pago`, `mes_ano_referencia`, `pendencias`, `data_pagamento`, `status`, `id_associados`) VALUES
(1, '2025-08-27', 200, 'agosto_de_2025', 'não', '2025-08-25', 'pago', 1),
(2, '2025-08-27', 200, 'agosto_de_2025', 'não', '2025-08-24', 'pago', 2),
(3, '2025-08-27', 200, 'agosto_de_2025', 'não', '2025-08-24', 'pago', 3),
(4, '2025-08-27', 200, 'agosto_de_2025', 'não', '2025-08-24', 'pago', 4),
(5, '2025-08-27', 200, 'agosto_de_2025', 'não', '2025-08-24', 'pago', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associados`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`),
  ADD KEY `id_associados` (`id_associados`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associados`) REFERENCES `associados` (`id_associados`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
