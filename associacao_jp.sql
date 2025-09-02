-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2025 às 14:24
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
-- Banco de dados: `associacao_jp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `data_associado` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome_completo`, `email`, `cpf`, `cidade`, `comunidade`, `cep`, `data_associado`, `telefone`, `profissao`) VALUES
(1, 'JOAO', 'mota51261@gmail.com', '15134217602', 'São Francisco', 'Campos Gerais', '39300000', '2025-08-18', '38998436559', 'jogador de basquete'),
(2, 'mariah', 'mariahrodriguesribeiro21@gmail.com', '12445368650', 'São Francisco', 'Campos Gerais', '39300000', '2025-08-18', '38997492053', 'estudante'),
(3, 'guilherme', 'guilhermeibraim08@gmail.com', '15147529309', 'São Francisco', 'Campos Gerais', '39300000', '2025-08-18', '3898765456734', 'estudante'),
(4, 'maria', 'mariacleonice@gmail.com', '89342948502', 'São Francisco', 'Campos Gerais', '39300000', '2025-08-18', '3890876785409', 'aposentada'),
(5, 'matheus', 'matheusmota@gmail.com', '92483942030', 'São Francisco', 'Campos Gerais', '39300000', '2025-08-18', '3892314543786', 'advogado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_referencia` varchar(50) NOT NULL,
  `pedencia` varchar(255) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_associado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuicao`, `data_vencimento`, `valor_pago`, `mes_referencia`, `pedencia`, `data_pagamento`, `status`, `id_associado`) VALUES
(1, '2025-08-04', 1, 'dezembro', 'não há', '2025-08-22', 'pago', 1),
(2, '2025-02-04', 2, 'dezembro', 'não há', '2025-02-22', 'pago', 2),
(3, '2025-03-04', 3, 'dezembro', 'não há', '2025-03-22', 'pago', 3),
(4, '2025-04-04', 4, 'dezembro', 'não há', '2025-04-22', 'pago', 4),
(5, '2025-05-04', 5, 'dezembro', 'não há', '2025-05-22', 'pago', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`),
  ADD KEY `id_associado` (`id_associado`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associado`) REFERENCES `associados` (`id_associado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
