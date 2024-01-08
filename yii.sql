-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/01/2024 às 15:29
-- Versão do servidor: 8.0.35-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `yii`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`) VALUES
(5, 'A'),
(6, 'B'),
(8, 'D'),
(9, 'A'),
(10, 'B'),
(12, 'D'),
(13, 'A'),
(14, 'B'),
(15, 'C'),
(16, 'D'),
(17, 'A'),
(18, 'B'),
(19, 'C'),
(20, 'D');

-- --------------------------------------------------------

--
-- Estrutura para tabela `employee`
--

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_salary` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `employee`
--

INSERT INTO `employee` (`id`, `emp_name`, `emp_email`, `emp_salary`) VALUES
(1, 'teste paulo2', 'paulo.gonzaga@acoesgarantem.com.br', 1000),
(2, 'Teste', 'paulo@agfsdfdsfdsf', 500),
(3, 'Teste 3', 'teste@agf3.com.br', 60),
(4, 'zxczxc', 'zxczxc', 444444);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1693592810),
('m130524_201442_init', 1693592871),
('m190124_110200_add_verification_token_column_to_user_table', 1693592871),
('m240108_142511_create_clientes', 1704724613);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `id` int NOT NULL,
  `codigo` char(2) NOT NULL,
  `nome` char(52) NOT NULL,
  `populacao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`id`, `codigo`, `nome`, `populacao`) VALUES
(4, 'CN', 'China', 1375210000),
(5, 'DE', 'Alemanha', 81459000),
(6, 'FR', 'França', 64513242),
(7, 'GB', 'Reino Unido', 65097000),
(8, 'IN', 'Índia', 1285400000),
(9, 'RU', 'Rússia', 146519759),
(10, 'US', 'Estados Unidos', 322976000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(11, 'paulo', '9MaK2KzBDZP8X94Qrf9nhfBBHE07zF2K', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 'paulohpgonzaga@gmail.com', 10, 1693941586, 1693941586, 'GxeEO5gYqO7KrB5mf3n03j3wesesdK31_1693941586'),
(12, 'teste', '6xsqGDZHwTcsESisU_Un3T61hCt23KXM', '$2y$13$hK6SdK3ug21L3qOhNrwgZOdjA8jgv49NSd9IKwjkfJdi9Jfcf8xZu', NULL, 'teste@teste.com.br', 10, 1693941744, 1693941744, 'KzXEeSnhoDzx3Z5Hua4BfVFqPQ5qRRBb_1693941744'),
(13, 'TESTEDDDD', 'yiJaO3twpC_5nzL-rhzXrwjYK_0FoS8e', '$2y$13$hDHpR7151J0m6sdbO3qDluAvelzHU9vzFHu66s7o3pxKLZmZqro86', NULL, 'TESTEDDD@TESTE.COM.BR', 10, 1693958179, 1693958179, '1EoefjPBkQR7m6lGOpfzvjf-MGFilnZu_1693958179'),
(14, 'teste 1000', 'I_0rVBJbhw0W0y4qaGnga4_RyiEBiyHV', 'a1b975bee9571d9d2171179d99380a039a02dc1b', 'sdfsdfsd', 'teste@rewasdsa.com.br', 10, 1, 1, '2'),
(15, 'paulo1', '123456', '123456', '123456', 'paulo@teste.com.br', 10, 1, 1, '12347897');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_refresh_tokens`
--

CREATE TABLE `user_refresh_tokens` (
  `user_refresh_tokenID` int UNSIGNED NOT NULL,
  `urf_userID` int UNSIGNED NOT NULL,
  `urf_token` varchar(1000) NOT NULL,
  `urf_ip` varchar(50) NOT NULL,
  `urf_user_agent` varchar(1000) NOT NULL,
  `urf_created` datetime NOT NULL COMMENT 'UTC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='For JWT authentication process';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Índices de tabela `user_refresh_tokens`
--
ALTER TABLE `user_refresh_tokens`
  ADD PRIMARY KEY (`user_refresh_tokenID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `user_refresh_tokens`
--
ALTER TABLE `user_refresh_tokens`
  MODIFY `user_refresh_tokenID` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
