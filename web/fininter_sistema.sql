-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24/05/2017 às 08:40
-- Versão do servidor: 5.6.35-log
-- Versão do PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fininter_sistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `apps`
--

CREATE TABLE `apps` (
  `id_app` int(22) NOT NULL,
  `nome` varchar(222) NOT NULL,
  `nome_sistema` varchar(222) NOT NULL,
  `prefixo_tb` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `apps`
--

INSERT INTO `apps` (`id_app`, `nome`, `nome_sistema`, `prefixo_tb`) VALUES
(1, 'Lavoisier', 'lavoisier', 'empresa_'),
(2, 'Bno', 'bno', 'bno_'),
(3, 'Bruna', 'bruna', 'bruna_'),
(4, 'Condor', 'condor', 'condor_');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bno_alunos`
--

CREATE TABLE `bno_alunos` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bno_alunos`
--

INSERT INTO `bno_alunos` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rodrigo', 'r@r.com', '123', 1),
(2, 'c', 'c@c.com', '123', 1),
(3, 'Rui', 'rui', '250393', 1),
(4, 'Pedro Paulo', 'pedro', '26082013', 1),
(5, 'Sandra', 'sandra', '1526', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bno_despesa`
--

CREATE TABLE `bno_despesa` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `id_nivel` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bno_despesa`
--

INSERT INTO `bno_despesa` (`id`, `valor`, `data`, `id_nivel`, `descricao`, `id_user`) VALUES
(1, 143, '2017-01-02', 73, 'MENSALIDADE', 0),
(2, 443, '2017-01-02', 69, 'FORD K', 0),
(3, 932.74, '2017-01-02', 62, 'COELBA', 0),
(4, 1817.25, '2017-01-02', 43, 'SALARIO PAULA', 0),
(5, 2478.33, '2017-01-02', 28, 'JUROS REFERENTE AO MES DE DEZEMBRO', 0),
(6, 5000, '2017-01-02', 117, 'TRANSFERENCIA', 0),
(7, 112.56, '2017-01-06', 116, 'BRUNA', 0),
(8, 49.76, '2017-01-09', 60, 'DAJ PARA PROCURAÇÃO BRADESCO / BANCO NORDESTE', 0),
(9, 66.1, '2017-01-09', 56, 'OI BRUNA ', 0),
(10, 885, '2017-01-09', 65, 'RABISCO', 0),
(11, 362.8, '2017-01-12', 71, 'ACESAJ', 0),
(12, 688.71, '2017-01-16', 118, 'BNDES', 0),
(13, 98.8, '2017-01-17', 58, 'NEWS TELLECOM', 0),
(14, 74.7, '2017-01-20', 63, 'EMBASA', 0),
(15, 221.86, '2017-01-20', 44, 'BRUNA', 0),
(16, 107.92, '2017-01-24', 118, 'MATECOL', 0),
(17, 3000, '2017-01-26', 117, '', 0),
(18, 3000, '2017-01-26', 117, '', 0),
(19, 443.66, '2017-01-30', 69, 'NANDO CAR', 0),
(20, 613.27, '2017-01-30', 62, 'COELBA', 0),
(21, 1500, '2017-01-30', 61, '', 0),
(22, 2900, '2017-01-30', 28, 'JUROS REFERENTE AO MÊS DE JANEIRO', 0),
(23, 1000, '2017-01-31', 84, 'MILENA MAIA  - REFERENTE AO AUXILIO NO MARKETING DA BNO', 0),
(24, 3499.99, '2017-01-31', 47, 'RESCISÃO PAULA RAUTA', 0),
(25, 34.4, '2017-01-09', 60, 'AUTENTICAÇÃO PROCURAÇÃO  - BRADESCO E BANCO NORDESTE', 0),
(26, 50, '2017-01-09', 107, 'ROBERTO MOTO BOY - 10 CORRIDAS', 0),
(27, 50, '2017-01-11', 50, 'EXAME DE ARLETE', 0),
(28, 150, '2017-01-16', 117, 'DIN PARA ILHA', 0),
(29, 200, '2017-01-17', 117, 'RESCISÃO DE TATY EMPREGADA', 0),
(30, 294, '2017-01-19', 117, 'VERENA EMPREGADA', 0),
(31, 33, '2017-01-25', 117, 'CREME DE LUANA', 0),
(32, 50, '2017-01-25', 117, 'LILIANE', 0),
(33, 100, '2017-01-26', 117, 'DIN ILHA', 0),
(34, 200, '2017-01-30', 117, 'PISCINA DA ILHA', 0),
(35, 600, '2017-01-30', 117, 'TRANSF FEITA DA POUPANÇA PARA FESTA NA ILHA REVEILLON', 0),
(36, 60, '2017-01-01', 64, 'CARTUCHO', 0),
(37, 14.8, '2017-01-20', 66, 'PAPEL HIGIENICO', 0),
(38, 15, '2017-01-24', 66, 'BICARBONATO DE SODIO', 0),
(39, 160, '2017-01-25', 66, 'FAXINA DE TATY (4)', 0),
(40, 18, '2017-01-27', 65, 'EMBALAGENS PARA AS AGENDAS', 0),
(41, 70, '2017-01-27', 79, 'AR DO SERVIDOR', 0),
(42, 1000, '2017-01-31', 43, 'SALARIO SIRLI', 0),
(43, 1300, '2017-01-31', 43, 'SALARIO MILENA', 0),
(44, 83.84, '2017-01-02', 56, 'OI DA CONDOR', 0),
(45, 450.33, '2017-01-05', 117, 'CHEQUE DE MARINA', 0),
(46, 219.66, '2017-01-06', 116, 'FGTS CONDOR', 0),
(47, 49.76, '2017-01-09', 60, 'DAJ PROCURAÇÃO BRADESCO / BANCO NORDESTE', 0),
(48, 1116.53, '2017-01-09', 65, 'AYMORÉ EMBALAGENS - BACH JOIAS', 0),
(49, 1858.82, '2017-01-01', 132, 'EMPRESTIMO BACH FUENTES ', 0),
(50, 2.16, '2017-01-10', 62, 'CONTA ANTIGA DO SHOPPING VILA INGLESA', 0),
(51, 3000, '2017-01-10', 43, 'SALARIO PEDRO', 0),
(52, 56, '2017-01-10', 71, 'CDL VALENÇA', 0),
(53, 1243.2, '2017-01-11', 84, 'AGENCIA MUITO MAIS', 0),
(54, 34.43, '2017-01-17', 62, 'SHOPPING VILA INGLESA', 0),
(55, 38.33, '2017-01-18', 68, 'ALMOÇO CONTAGEM DE ESTOQUE', 0),
(56, 256.05, '2017-01-20', 44, 'INSS CONDOR', 0),
(57, 1500, '2017-01-30', 131, '', 0),
(58, 4000, '2017-01-02', 28, 'EMPRESTIMO DE PEU', 0),
(59, 22.77, '2017-01-02', 64, 'ANTI VIRUS', 0),
(60, 84.34, '2017-01-02', 64, 'CAFETEIRA', 0),
(62, 96.67, '2017-01-02', 135, 'AZUL LINHAS AEREAS - RS E SP', 0),
(63, 59.85, '2017-01-02', 117, 'CAMICADO', 0),
(64, 32.99, '2017-01-02', 64, 'PAPEL E CIA', 0),
(65, 33.06, '2017-01-02', 64, 'COMERCIAL SAO LUIS', 0),
(66, 99.71, '2017-01-02', 64, 'COMERCIAL SAO LUIS', 0),
(67, 149.8, '2017-01-02', 136, 'PATENTE BNO', 0),
(68, 42.8, '2017-01-02', 64, 'LE BISCUIT', 0),
(69, 77.98, '2017-01-02', 64, 'CELULAR RICARDO ELETRO', 0),
(70, 22.5, '2017-01-02', 68, 'LANCHE - MEGA PALESTRA', 0),
(71, 93.49, '2017-01-02', 65, 'DICO PLASTICO', 0),
(72, 50, '2017-01-02', 70, 'POSTO CENTRAL - GASOLINA', 0),
(73, 213.1, '2017-01-02', 55, 'CONFRATERNIZAÇÃO - FINAL DE ANO', 0),
(74, 120, '2017-02-01', 66, 'ATACADAO', 0),
(75, 70, '2017-02-06', 117, 'VESTIBULAR LUANA', 0),
(76, 70, '2017-02-06', 117, 'VESTIBULAR RAIANE', 0),
(77, 885, '2017-02-08', 65, 'RABISCO EMBALAGENS', 0),
(78, 66.1, '2017-02-10', 56, 'OI TELEFONE BRUNA', 0),
(79, 276.89, '2017-02-10', 118, 'CHEQUE 000482 - MATERCOL - PRATELEIRAS', 0),
(80, 334.9, '2017-02-10', 120, 'NOT BOOK', 0),
(81, 99.8, '2017-02-13', 71, 'CDL SAJ', 0),
(82, 670, '2017-02-13', 137, 'CH 000467 - GRAFICA REALIZA - TALÕES', 0),
(83, 688.71, '2017-02-15', 118, 'BNDES', 0),
(84, 3000, '2017-02-16', 117, 'SANDRA - TRANSFERENCIA', 0),
(85, 520, '2017-02-17', 84, 'MILENA MAIA - OUT DOOR - CHEQUE 000485', 0),
(86, 73.2, '2017-02-20', 63, 'EMBASA', 0),
(87, 98.8, '2017-02-20', 58, 'NEWS TELLECOM', 0),
(88, 103.07, '2017-02-20', 44, 'INSS BRUNA', 0),
(89, 895.56, '2017-02-24', 62, 'COELBA', 0),
(90, 141.95, '2017-02-01', 68, 'ATACADAO', 0),
(91, 402.8, '2017-02-12', 72, 'DOAÇÃO A RAYANE', 0),
(92, 22.77, '2017-02-01', 64, 'CARTÃO DE CREDITO - ANTI VIRUS', 0),
(93, 84.34, '2017-02-01', 64, 'CARTÃO DE CRÉDITO - CAFETEIRA', 0),
(94, 32.99, '2017-02-01', 64, 'CARTÃO DE CRÉDITO - PAPEL E CIA  - LEITOR OPTICO', 0),
(95, 97.71, '2017-02-01', 64, 'CARTÃO DE CRÉDITO - SÃO LUÍS', 0),
(96, 77.98, '2017-02-01', 64, 'CARTÃO DE CRÉDITO - RICARDO ELETRO - CELULARES', 0),
(97, 130, '2017-02-01', 117, 'CARTÃO DE CRÉDITO - GASOLINA', 0),
(98, 180.73, '2017-02-01', 55, 'CARTÃO DE CRÉDITO - ALMOÇO GILDETE ACESAJ - CONTRATAÇÕES', 0),
(99, 96.67, '2017-02-01', 135, 'CARTÃO DE CRÉDITO - VIAGEM AO SUL E SP', 0),
(100, 149.8, '2017-02-01', 136, 'CARTÃO DE CRÉDITO - PATENTE DA MARCA BNO', 0),
(101, 100, '2017-02-03', 117, 'ILHA', 0),
(102, 66, '2017-02-08', 66, 'CHEIRINHO PARA A LOJA', 0),
(103, 148.25, '2017-02-10', 73, '', 0),
(104, 50, '2017-02-11', 117, 'NAYARA', 0),
(105, 200, '2017-02-13', 72, 'DONA ANTONIA', 0),
(106, 40, '2017-02-14', 55, 'BOLO DE JAMILE', 0),
(107, 20, '2017-02-16', 64, 'CARIMBO DE SIRLI E JAMILE', 0),
(108, 25, '2017-02-16', 117, 'BERMUDA JUAN', 0),
(109, 30, '2017-02-16', 117, 'CARTEIRA ALEJANDRO', 0),
(110, 180, '2017-02-16', 117, 'OCULOS', 0),
(111, 100, '2017-02-17', 117, 'LAVADEIRA', 0),
(112, 50, '2017-02-17', 117, 'EMPREGADA VALE', 0),
(113, 100, '2017-02-18', 117, 'FEIRA', 0),
(114, 160, '2017-02-18', 66, 'FAXINA BNO', 0),
(115, 300, '2017-02-18', 117, 'RESCISAO TATY', 0),
(116, 12, '2017-02-21', 57, 'CHIP MODEM VIAGEM', 0),
(117, 150, '2017-02-22', 117, 'LAVADEIRA', 0),
(118, 12, '2017-02-23', 66, 'VULCAO NEGRO - DESENTUPIR O VASO', 0),
(119, 1000, '2017-02-24', 117, 'ILHA', 0),
(120, 92.57, '2017-02-06', 56, 'OI CONDOR', 0),
(121, 159.25, '2017-02-07', 116, 'FGTS CONDOR', 0),
(122, 1283.2, '2017-02-07', 84, 'AGENCIA MUITO MAIS', 0),
(123, 1858.82, '2017-02-07', 132, 'EMPRESTIMO', 0),
(124, 1140.09, '2017-02-08', 65, 'AYMORÉ EMBALAGENS', 0),
(125, 56, '2017-02-10', 71, 'CDL VALENÇA', 0),
(126, 3000, '2017-02-17', 43, 'PEDRO', 0),
(127, 262.32, '2017-02-20', 44, 'INSS CONDOR', 0),
(178, 36.58, '2017-03-20', 84, 'DAV 12961 - EVENTO ISABELA EM JEQUIE', 4),
(179, 34.2, '2017-03-03', 84, 'DAV 5622 - PREMIO FAMA ILHA\n', 4),
(180, 22.77, '2017-03-01', 64, 'CC - ROTEADOR', 4),
(181, 32.99, '2017-03-01', 64, 'CC - PAPEL E CIA', 4),
(182, 97.71, '2017-03-01', 64, 'CC - SAO LUIS', 4),
(183, 77.98, '2017-03-01', 64, 'CC - RICARDO ELETRO', 4),
(184, 22.8, '2017-03-01', 64, 'CC - SAO LUIS', 4),
(185, 43.94, '2017-03-01', 65, 'CC - DICO PLASTICOS', 4),
(186, 117.01, '2017-03-01', 117, 'CC - POSTO JOEIRANA', 4),
(187, 83.01, '2017-03-01', 64, 'CC - SÃO LUIS', 4),
(188, 48, '2017-03-08', 53, 'NECESSAIRE - DIA DA MULHER', 4),
(189, 95.34, '2017-03-01', 56, 'OI MOVEL', 4),
(190, 1500, '2017-03-01', 131, 'EMPRESTIMO BANCO NORDESTE', 4),
(191, 1913.2, '2017-03-03', 84, 'MUITO MAIS', 4),
(192, 159.25, '2017-03-07', 116, 'FGTS CONDOR', 4),
(193, 1858.82, '2017-03-07', 132, 'EMPRESTIMO BRADESCO', 4),
(194, 56, '2017-03-10', 71, 'CDL VALENÇA', 4),
(195, 3000, '2017-03-14', 117, 'TRANSFERENCIA', 4),
(196, 262.32, '2017-03-20', 44, 'INSS CONDOR', 4),
(197, 143, '2017-03-01', 73, '', 4),
(198, 443.66, '2017-03-01', 69, 'CH 000471', 4),
(199, 450, '2017-03-03', 84, 'CH 000487 - PREMIO FAMA JEQUIE', 4),
(200, 95, '2017-03-06', 58, 'NEWS TELLECOM', 4),
(201, 885, '2017-03-08', 65, 'RABISCO - BOLETO 2285', 4),
(202, 4000, '2017-03-10', 43, 'SALARIO PEDRO FEV', 4),
(203, 6000, '2017-03-10', 117, 'TRANS ', 4),
(204, 103.8, '2017-03-13', 71, 'CDL SAJ', 4),
(205, 276.89, '2017-03-13', 118, 'CH 000483 - ESCADA DO ESTOQUE', 4),
(206, 688.71, '2017-03-15', 118, 'BNDES', 4),
(207, 1040, '2017-03-15', 84, 'CH 000486 - OUTDOOR', 4),
(208, 68.29, '2017-03-20', 56, 'OI BRUNA', 4),
(209, 74.76, '2017-03-20', 63, 'EMBASA', 4),
(211, 334.9, '2017-03-24', 120, 'NOT BOOK PEU', 4),
(212, 103.07, '2017-03-27', 44, 'INSS CONDOR', 4),
(213, 878.11, '2017-03-31', 62, 'DOC 2359', 4),
(214, 3000, '2017-03-31', 61, 'ALUGUEL FEV  / MAR', 4),
(215, 3000, '2017-03-31', 43, 'SALARIO PEDRO MAR', 4),
(216, 3278, '2017-03-31', 28, 'JUROS EMPRESTIMO SANDRA FEV', 4),
(217, 3815.83, '2017-03-31', 28, 'JUROS SANDRA MARÇO', 4),
(218, 5000, '2017-03-31', 117, 'TRANSF', 4),
(219, 12, '2017-03-01', 107, 'FRETE MOSTRUARIO QUE TAVA EM AMARGOSA', 4),
(220, 100, '2017-03-01', 117, 'DONA LOURDES', 4),
(221, 10, '2017-03-08', 117, 'ACARAJE', 4),
(222, 455, '2017-03-10', 117, 'CHEQUE DEVOLVIDO CRIS', 4),
(223, 40, '2017-03-02', 55, 'BOLO ANIVER DE SIRLI', 4),
(224, 120, '2017-03-06', 64, 'CARTUCHO', 4),
(225, 590, '2017-03-06', 43, 'DIFERENÇA SALARIAL MILENA', 4),
(226, 938, '2017-03-06', 43, 'SALARIO VIVIANE', 4),
(227, 1200, '2017-03-06', 43, 'SALARIO SIRLI', 4),
(228, 1278, '2017-03-06', 43, 'SALARIO MILENA', 4),
(229, 1500, '2017-03-06', 43, 'SALARIO JAMILE', 4),
(230, 100, '2017-03-06', 43, 'PEDRO', 4),
(231, 260, '2017-03-10', 43, 'PEDRO', 4),
(232, 50, '2017-03-07', 55, 'ALMOÇO EM SANDRA', 4),
(233, 45.85, '2017-03-10', 59, 'SEDEX ETIQUETAS', 4),
(234, 60.45, '2017-03-10', 59, 'SEDEX TOMASETTO', 4),
(235, 132, '2017-03-10', 43, 'SALARIO RAIANE', 4),
(236, 880, '2017-03-10', 43, 'SALARIO RAIANE', 4),
(237, 24.15, '2017-03-13', 59, 'SEDEX FRANCINEIA', 4),
(238, 229, '2017-03-14', 70, 'POSTO CENTRAL', 4),
(239, 288, '2017-03-14', 117, 'RESCISAO TATY', 4),
(240, 40, '2017-03-15', 50, 'EXAME ADMISSIONAL VIVIANE', 4),
(241, 60, '2017-03-15', 118, 'GERSON PINTURA', 4),
(242, 9, '2017-03-16', 55, 'BOLO IRACEMA E EDMUNDO', 4),
(243, 10, '2017-03-21', 66, 'FAXINA TATY', 4),
(244, 20, '2017-03-21', 55, 'PAOZINHO REUNIAO CIDA', 4),
(245, 150, '2017-03-21', 117, 'DAI EMPREGADA', 4),
(246, 160, '2017-03-21', 66, 'FAXINA TATY', 4),
(247, 19.25, '2017-03-22', 68, 'ALMOÇO VIVIANE', 4),
(248, 50, '2017-03-31', 43, 'SALARIO LUANA', 4),
(249, 885, '2017-03-31', 43, 'SALARIO VIVIANE', 4),
(250, 1200, '2017-03-31', 43, 'SALARIO SIRLI', 4),
(251, 1500, '2017-03-31', 43, 'SALARIO JAMILE', 4),
(252, 590, '2017-03-31', 43, 'DIFERENÇA SALARIAL MILENA', 4),
(253, 1278, '2017-03-31', 43, 'SALARIO MILENA', 4),
(254, 415.8, '2017-03-20', 84, 'PREMIO FAMA ILHA', 3),
(255, 96.67, '2017-04-01', 135, 'CC - AZUL LINHAS AEREAS', 4),
(256, 32.99, '2017-04-01', 64, 'CC - PAPEL E CIA', 4),
(257, 97.71, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(258, 77.98, '2017-04-01', 64, 'CC - RICARDO ELETRO - CELULARES', 4),
(259, 83.01, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(260, 54.19, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(261, 77.8, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(262, 55.5, '2017-04-01', 69, 'CC - VEIBA - REVISAO', 4),
(263, 59.85, '2017-04-01', 64, 'CC - ANTI VIRUS', 4),
(264, 54, '2017-04-01', 55, 'CC - REUNIAO POUSADA PARATI - GIL/SANDRA/JAMILE', 4),
(265, 24, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(266, 37, '2017-04-01', 65, 'CC - EMBALAGENS', 4),
(267, 89.55, '2017-04-01', 64, 'CC - SAO LUIS', 4),
(268, 73.09, '2017-04-03', 58, 'INTERNET MOVEL - VIVO', 4),
(269, 92.57, '2017-04-03', 56, 'OI - BACH FUENTES', 4),
(270, 143, '2017-04-03', 73, 'SEGMAX - CP 562', 4),
(271, 1698.2, '2017-04-03', 84, 'MUITO MAIS - CP 544', 4),
(272, 95, '2017-04-05', 58, 'NEWS TELLECOM', 4),
(273, 1500, '2017-04-05', 131, 'EMPRÉSTIMO BANCO', 4),
(274, 169.44, '2017-04-07', 116, 'FGTS - BACH FUENTES', 4),
(275, 1858.82, '2017-04-07', 132, 'EMPRÉSTIMO ', 4),
(276, 424.6, '2017-04-11', 80, 'CP 567 - SITE ', 4),
(277, 1532.38, '2017-04-17', 65, 'CP 559 - ESTOJOS BALDI', 4),
(278, 272.51, '2017-04-20', 44, 'CP 548 - INSS', 4),
(279, 955, '2017-04-25', 84, 'CP 576 - AGENCIA MUITO MAIS', 4),
(281, 79.84, '2017-04-07', 116, 'FGTS BRUNA', 4),
(282, 66.1, '2017-04-10', 56, 'OI TELEFONIA', 4),
(284, 200, '2017-04-10', 117, 'SAQUE CONTA CORRENTE 1339-0', 4),
(285, 885, '2017-04-10', 65, 'RABISCO EMBALAGENS', 4),
(286, 103.8, '2017-04-12', 71, 'ACESAJ ', 4),
(287, 1985, '2017-04-12', 57, 'CONTA VIVO JAN / FEV / MAR / ABR', 4),
(288, 3000, '2017-04-12', 28, 'EMPRÉSTIMO PEU', 4),
(289, 3000, '2017-04-13', 117, 'TRANSFERENCIA', 4),
(290, 688.71, '2017-04-17', 118, 'BNDES', 4),
(291, 74.8, '2017-04-18', 63, 'EMBASA', 4),
(292, 90, '2017-04-19', 137, 'TALOES FISCAIS BRUNA', 4),
(293, 182.91, '2017-04-20', 44, 'INSS BRUNA', 4),
(294, 3000, '2017-04-28', 43, 'SALARIO PEDRO', 4),
(295, 1.8, '2017-04-01', 68, 'CHÁ', 4),
(296, 67, '2017-04-05', 57, 'CONTA PAGA VIVO JAN / FEV / MAR / ABR - DIN REPASSADO A NEIA CENTRAL', 4),
(297, 76, '2017-04-06', 118, 'MATERIAL DEGRAU DA ESCADA', 4),
(298, 82.65, '2017-04-06', 117, 'POSTO CENTRAL', 4),
(299, 100, '2017-04-06', 117, 'FICOU COM O DIN DE JEQUIE', 4),
(300, 10, '2017-04-10', 55, 'BOLO IRACEMA', 4),
(301, 22, '2017-04-12', 84, 'ALMOÇO ENSAIO FOTOGRAFICO COM JOSEFA FONSECA', 4),
(302, 28.8, '2017-04-12', 84, 'TAXI ENSAIO FOTOGRAFICO JOSEFA COIMBRA', 4),
(303, 54.5, '2017-04-12', 84, 'ALMOÇO ENSAIO FOTOGRÁFICO JOSEFA COIMBRA', 4),
(304, 160, '2017-04-12', 66, 'FAXINA TATY (4 X POR MES)', 4),
(305, 19, '2017-04-03', 83, 'DAV 13033 - EVENTO DIX', 4),
(306, 32.3, '2017-04-05', 83, 'DAV 13078 - EVENTO FAMA JEQUIE', 4),
(307, 19, '2017-04-26', 83, 'DAV 13159 - EVENTO DA PASTORA', 4),
(308, 40.85, '2017-04-13', 84, 'DAV 5990 - BLOGUEIRA', 4),
(309, 76, '2017-04-17', 84, 'DAV 5989 - BLOGUEIRA', 4),
(310, 599.45, '2017-04-17', 84, 'DAV 5991 - BLOGUEIRA', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bno_despesa_niveis`
--

CREATE TABLE `bno_despesa_niveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bno_despesa_niveis`
--

INSERT INTO `bno_despesa_niveis` (`id`, `nome`, `pai`, `ordem`) VALUES
(4, 'Impostos/ taxas', 0, 4),
(5, 'Retiradas', 0, 5),
(6, 'Despesas Operacionais', 0, 6),
(19, 'Encargos Terceiros', 4, 2),
(28, 'Empréstimos', 19, 1),
(37, 'Pró-labore', 5, 1),
(38, 'Pessoal', 6, 1),
(39, 'Administração', 6, 2),
(40, 'Fixos', 6, 3),
(41, 'Variáveis', 6, 4),
(42, 'Marketing', 6, 5),
(43, 'Folha Pagamento', 38, 1),
(44, 'INSS', 38, 2),
(45, 'Bonificações extras', 38, 3),
(46, 'Horas Extras', 38, 4),
(47, 'Rescisões trabalhistas', 38, 5),
(48, 'Férias (1/3)', 38, 6),
(49, 'Fardamento', 38, 7),
(50, 'Exames admissionais e demissionais', 38, 8),
(51, 'Exames periódicos (PPRA e PCMSO)', 38, 9),
(52, 'Cursos / Capacitações', 38, 10),
(53, 'Brindes para funcionários', 38, 11),
(54, 'Bonificação para funcionários', 38, 12),
(55, 'Confraternizações e reuniões', 38, 13),
(56, 'Telefonia fixa', 39, 1),
(57, 'Telefonia móvel', 39, 2),
(58, 'Internet', 39, 3),
(59, 'Correios', 39, 4),
(60, 'Cartórios', 39, 5),
(61, 'Aluguéis', 39, 6),
(62, 'Energia', 39, 7),
(63, 'Água', 39, 8),
(64, 'Materiais expediente/informática', 39, 9),
(65, 'Embalagens', 39, 10),
(66, 'Higiene/limpeza', 39, 11),
(67, 'Consertos e manutenção (imóveis)', 39, 12),
(68, 'Consumíveis internos ( água, lanches)', 39, 13),
(69, 'Manutenção (veículos)', 39, 14),
(70, 'Consumíveis (veículos)', 39, 15),
(71, 'Associações, CDLs e Sindicatos', 39, 16),
(72, 'Doações', 39, 17),
(73, 'Segmax', 40, 1),
(74, 'Consultoria', 40, 2),
(79, 'Conserto diversos (Ar Condicionado)', 41, 1),
(80, 'Site', 41, 2),
(81, 'Conserto de equipamentos', 41, 3),
(82, 'Patrocínios', 42, 1),
(83, 'Eventos', 42, 2),
(84, 'Marketing e Publicidade', 42, 3),
(85, 'Investimentos', 0, 3),
(100, 'Aquisição', 85, 1),
(105, '13º Salário', 38, 5),
(107, 'Transportes', 39, 4),
(116, 'FGTS', 38, 2),
(117, 'Sandra Bach', 37, 1),
(118, 'Aquisição e reformas de Imóveis', 100, 1),
(119, 'Aquisição móveis (veículos)', 100, 2),
(120, 'Aquisição Administração', 100, 3),
(129, 'Brindes (Clientes)', 42, 4),
(130, 'Bancos', 4, 1),
(131, 'Nordeste', 130, 1),
(132, 'Bradesco', 130, 2),
(133, 'Impostos', 4, 3),
(134, 'IPVA, emplacamento e taxas de veículos', 133, 1),
(135, 'Viagens', 39, 18),
(136, 'SEBRAE', 41, 4),
(137, 'Gráfica', 41, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bno_receita`
--

CREATE TABLE `bno_receita` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `origem` int(22) NOT NULL,
  `vendido_recebido` int(22) NOT NULL,
  `debito_credito` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bno_receita_origem`
--

CREATE TABLE `bno_receita_origem` (
  `id` int(11) NOT NULL,
  `nome_origem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `bno_receita_origem`
--

INSERT INTO `bno_receita_origem` (`id`, `nome_origem`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão'),
(3, 'Cheque'),
(4, 'Promissória');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bruna_alunos`
--

CREATE TABLE `bruna_alunos` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bruna_alunos`
--

INSERT INTO `bruna_alunos` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rodrigo', 'r@r.com', '123', 1),
(2, 'c', 'c@c.com', '123', 1),
(3, 'Rui', 'rui', '250393', 1),
(4, 'Pedro Paulo', 'pedro', '26082013', 1),
(6, 'Sandra', 'sandra', '1526', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bruna_despesa`
--

CREATE TABLE `bruna_despesa` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `id_nivel` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bruna_despesa`
--

INSERT INTO `bruna_despesa` (`id`, `valor`, `data`, `id_nivel`, `descricao`, `id_user`) VALUES
(11, 1197.35, '2017-01-02', 108, 'CHEQUE 000465', 0),
(12, 1837.5, '2017-01-02', 109, 'MOSTRUARIOS', 0),
(13, 24.6, '2017-01-02', 22, 'TARIFA POR FAR CHEQUE VALOR SUPERIOR', 0),
(14, 8.95, '2017-01-02', 22, 'DOC TRANSFERENCIA', 0),
(16, 6377.39, '2017-01-02', 108, 'CHEQUE 000474', 0),
(87, 94.56, '2017-01-04', 22, 'MORA CONTA GARANTIDA', 0),
(88, 224.28, '2017-01-04', 22, 'ENCARGO CONTA GARANTIDA', 0),
(89, 15.18, '2017-01-06', 22, 'MORA CONTA GARANTIDA', 0),
(90, 632.06, '2017-01-06', 22, 'MORA CONTA GARANTIDA', 0),
(91, 835, '2017-01-09', 109, '', 0),
(92, 8.95, '2017-01-13', 22, 'TED', 0),
(93, 65.8, '2017-01-13', 22, 'TAXA DE MANUTENÇÃO BANCARIA', 0),
(94, 712, '2017-01-17', 110, 'ANEL DE FORMATURA VANUSA\n\n', 0),
(95, 440, '2017-01-20', 153, 'SWL -', 0),
(96, 220, '2017-01-20', 153, 'SWL - VENDEDORAS', 0),
(97, 2043.18, '2017-01-20', 154, '', 0),
(98, 464, '2017-01-23', 109, '', 0),
(99, 880, '2017-01-23', 152, 'DEZEMBRO / BALANÇO ANUAL', 0),
(100, 82.42, '2017-01-25', 140, '', 0),
(101, 430, '2017-01-25', 22, 'TAXA POR TER O LIMITE NO VALOR DE R$ 40.000,00 - ESSA TAXA É COBRADA EM 3 E 3 MESES', 0),
(102, 1837.5, '2017-01-30', 109, '', 0),
(103, 593.48, '2017-01-25', 139, '', 0),
(104, 23.15, '2017-01-09', 149, '', 0),
(105, 23.15, '2017-01-20', 149, '', 0),
(106, 38.71, '2017-01-02', 124, 'POSTO CENTRAL - JEQUIÉ', 0),
(107, 28.77, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(108, 33.84, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(109, 25.02, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(110, 91, '2017-01-02', 124, 'HOTEL JEQUIE', 0),
(111, 54.63, '2017-01-02', 124, 'POSTO CENTRAL SSA', 0),
(112, 27.12, '2017-01-02', 124, 'ALIMENTAÇÃO CODICAL', 0),
(113, 11.23, '2017-01-02', 124, 'ALIEMENTAÇÃO BARATAO', 0),
(114, 64.2, '2017-01-02', 124, 'ALMOÇO SSA', 0),
(115, 3, '2017-01-02', 124, 'ESTACIONAMENTO', 0),
(116, 72.62, '2017-01-02', 124, 'ALMOÇO SSA', 0),
(117, 75, '2017-01-02', 132, 'BOI PRETO - EVENTO SANDRA', 0),
(118, 2781.51, '2017-01-05', 145, 'MAQUINAS DE CARTAO -  20 MAQUINAS', 0),
(119, 2166.18, '2017-01-06', 146, 'JUROS POR TER FEITO ANTECIPAÇÃO', 0),
(120, 247.54, '2017-01-06', 146, 'IOF POR TER FEITO ANTECIPAÇÃO', 0),
(122, 1712.85, '2017-01-21', 122, 'DARTH - VITORIA DA CONQUISTA', 0),
(123, 538.65, '2017-01-31', 136, 'DAV 12721 - VANICEA - CLIENTE DA ROUPA NOVA', 0),
(124, 75.29, '2017-02-02', 22, 'IOF USO DO LIMITE', 0),
(125, 196.14, '2017-02-02', 22, 'USO DO LIMITE', 0),
(126, 0.72, '2017-02-03', 22, 'ENCARGOS CONTA CORRENTE\n\n', 0),
(127, 4.82, '2017-02-03', 22, 'ENCARGO SALDO VINCULADO', 0),
(128, 62, '2017-02-03', 22, 'TARIFA DEPOSITANTE', 0),
(129, 58.5, '2017-02-06', 124, 'GASOLINA PRESTAÇÃO SSA / ALA', 0),
(130, 835, '2017-02-06', 109, 'BOLETO TOMASETTO ', 0),
(131, 6377.39, '2017-02-06', 108, 'CHEQUE 000475', 0),
(132, 2.2, '2017-02-08', 22, 'SAQUE EM TERMINAL 24H', 0),
(133, 65.8, '2017-02-15', 22, 'TAXA DE MANUTENÇÃO BANCÁRIA', 0),
(134, 219.84, '2017-02-20', 154, 'SIMPLES', 0),
(135, 440, '2017-02-20', 153, 'SWL ', 0),
(136, 220, '2017-02-20', 153, 'SWL VENDEDORAS', 0),
(137, 464, '2017-02-20', 109, 'TOMASETTO', 0),
(138, 3850.26, '2017-02-20', 108, 'CHEQUE 000480', 0),
(139, 389.59, '2017-02-01', 122, 'COMISSÃO JOSETE - 13/12/16 A 01/02/2017', 0),
(140, 63.27, '2017-02-05', 122, 'COMISSÃO VANUZA SSA - 7/12/16  05/2/17', 0),
(141, 316.73, '2017-02-06', 122, 'COMISSÃO MARY ALAGOINHAS - 09/11/16 A 06/2/17', 0),
(142, 316.35, '2017-02-08', 122, 'COMISSÃO JÉSSICA - 01/12/16 A 08/2/17', 0),
(143, 862.98, '2017-02-09', 122, 'COMISSÃO DARLENE - 13/12/16 A 09/02/2017', 0),
(144, 2121.54, '2017-02-09', 122, 'COMISSÃO LUCELIA - 12/12/16 A 09/02/2017', 0),
(145, 377.53, '2017-02-11', 122, 'COMISSÃO VANESSA AMARGOSA - 20/12/16 A 11/02/2017', 0),
(146, 2153.17, '2017-02-13', 122, 'COMISSÃO ISABELA JEQUIÉ - 22/11/16 A 13/02/17 ', 0),
(147, 2759.65, '2017-02-16', 122, 'COMISSÃO VANESSA AIMEE - 25/10/16 A 05/02/2017', 0),
(148, 237.5, '2017-02-22', 124, 'PAGTO  A JAMILE EM PEÇAS - VIAGEM SALVADOR E JEQUIE', 0),
(149, 236.55, '2017-02-24', 124, 'PAGTO A MILENA EM PEÇAS - VIAGEM SALVADOR E JEQUIE', 0),
(150, 219.93, '2017-02-05', 134, 'AJUDA A VANESSA AIMEE EM DOIS EVENTOS DAS GATOSAS', 0),
(151, 125, '2017-02-06', 124, 'HOTEL SSA ', 0),
(152, 3.75, '2017-02-07', 124, 'PEDAGIOS', 0),
(153, 10, '2017-02-08', 124, 'CARNE PARA JANTA SSA', 0),
(154, 23.75, '2017-02-10', 149, 'SEDEX BRUNA', 0),
(155, 2, '2017-02-14', 124, 'AGUA VIAGEM JEQUIE', 0),
(157, 10, '2017-02-16', 132, 'ENVIO DE CATALOGOS PARA NOVA VENDEDORA EM ITABUNA', 0),
(158, 3, '2017-02-16', 132, 'ESTACIONAMENTO EM FEIRA', 0),
(159, 4, '2017-02-16', 132, 'CAFE DA MANHA EM FEIRA DE SANTANA', 0),
(160, 2, '2017-02-20', 132, 'PEGAGIO - ENTREGA DE MOSTRUARIO A VENDEDORA M LAURO DE FREITAS', 0),
(161, 2.25, '2017-02-20', 132, 'CAFE EM LAURO DE FREITAS', 0),
(162, 4.7, '2017-02-20', 132, 'ESTACIONAMENTO EM SSA', 0),
(163, 5, '2017-02-20', 132, 'PEDAGIOS', 0),
(164, 27, '2017-02-21', 149, 'ENVIO DE PEÇAS PARA JEQUIÉ', 0),
(165, 131.85, '2017-02-22', 149, 'ENVIO DO MOSTRUARIO AU 10 FABRICA', 0),
(166, 622.85, '2017-02-10', 146, 'JUROS POR ANTECIPAÇÃO', 0),
(167, 80.43, '2017-02-10', 146, 'IOF POR ANTECIPAÇÃO', 0),
(168, 2781.51, '2017-02-05', 145, '', 0),
(189, 957.86, '2017-03-06', 28, 'TROCA DE CHEQUE COM CLEUSA', 4),
(190, 101.18, '2017-03-22', 132, 'DAV 12971 - VIVIANE - VIAGEM PREMIO FAMA ILHA ', 4),
(191, 508.25, '2017-03-02', 136, 'DAV 12877 - MALU ITABUNA', 4),
(192, 42.76, '2017-03-01', 124, 'CC - MERCADÃO DE CARNES', 4),
(193, 75.16, '2017-03-01', 124, 'CC - ALMOÇO SSA', 4),
(194, 72.5, '2017-03-01', 124, 'CC - HOTEL ALAGOINHAS', 4),
(195, 29.13, '2017-03-01', 124, 'CC - ALMOÇO EM ALAGOINHAS', 4),
(196, 6, '2017-03-01', 124, 'CC - CAFE EM JEQUIE', 4),
(197, 48.1, '2017-03-01', 124, 'CC - ALMOÇO EM JEQUIE', 4),
(198, 27.54, '2017-03-01', 124, 'CC - JANTA', 4),
(199, 115.5, '2017-03-01', 124, 'CC - HOTEL EM JEQUIE', 4),
(200, 377.91, '2017-03-14', 122, 'COMISSÃO VANESSA', 4),
(201, 1675.51, '2017-03-21', 122, 'COMISSÃO SOLANGE', 4),
(202, 1963.41, '2017-03-21', 122, 'COMISSÃO ISABELA', 4),
(203, 115.14, '2017-03-21', 122, 'COMISSÃO DARTH', 4),
(204, 65.17, '2017-03-22', 122, 'COMISSÃO DARLENE', 4),
(205, 279.3, '2017-03-23', 122, 'COMISSÃO JESSICA', 4),
(206, 40.47, '2017-03-22', 122, 'COMISSAO EDILA', 4),
(207, 487.92, '2017-03-28', 122, 'COMISSAO BINHA AMARGOSA\n', 4),
(208, 106.2, '2017-03-29', 146, 'IOF ANTECIPAÇÃO DE CARTAO', 4),
(209, 856.63, '2017-03-29', 146, 'JUROS POR ANTECIPAÇÃO DE CARTÃO', 4),
(210, 5.14, '2017-03-01', 140, 'ICMS POB', 4),
(211, 36.98, '2017-03-01', 139, 'ICMS ANT', 4),
(212, 1809.96, '2017-03-02', 22, 'USO DO CHEQUE ESPECIAL', 4),
(213, 3850.26, '2017-03-02', 108, 'CH 000481', 4),
(214, 14.7, '2017-03-03', 22, 'ENCARGO SALDO VINCULADO', 4),
(215, 1763, '2017-03-06', 109, 'BOLETO 2315', 4),
(216, 8.95, '2017-03-10', 22, 'TED', 4),
(217, 65.8, '2017-03-15', 22, 'TARIFA DE MANUTENÇAO BANCARIA', 4),
(218, 468.5, '2017-03-20', 153, 'SWL 1º SISTEMA', 4),
(219, 234.25, '2017-03-20', 153, 'SWL 2º SISTEMA', 4),
(220, 597.7, '2017-03-20', 154, '', 4),
(221, 430, '2017-03-21', 22, 'TARIFA DO LIMITE', 4),
(222, 255, '2017-03-24', 156, 'certificado digital nf', 4),
(223, 620.58, '2017-03-28', 139, 'ICMS', 4),
(224, 476.52, '2017-03-31', 108, 'DOC 2363', 4),
(225, 51.15, '2017-03-10', 149, 'SEDEX BRUNA -- RODIUM', 4),
(226, 75.75, '2017-03-17', 149, 'SEDEX BRUNA', 4),
(227, 76.35, '2017-03-24', 149, 'SEDEX BRUNA', 4),
(228, 1.95, '2017-03-27', 124, 'AGUA MINERAL', 4),
(229, 3.75, '2017-03-27', 124, 'PEDAGIOS', 4),
(230, 12.5, '2017-03-27', 124, 'LANCHE REIS DA PAMONHA', 4),
(231, 57.5, '2017-03-27', 124, 'GASOLINA', 4),
(232, 70, '2017-03-27', 124, 'HOTEL SSA', 4),
(233, 76.35, '2017-03-31', 149, 'SEDEX CONDOR', 4),
(234, 2075.51, '2017-03-31', 145, 'Manutenção das máquinas', 3),
(235, 2075.51, '2017-03-31', 145, 'Manutenção das máquinas', 3),
(236, 1150.58, '2017-03-31', 144, 'Desconto da Cielo', 3),
(237, 1150.58, '2017-03-31', 144, 'Desconto da Cielo', 3),
(238, 92.81, '2017-04-06', 28, 'TROCA DE CHEQUE COM CLEUSA', 4),
(239, 35.09, '2017-04-01', 132, 'CC - RESTAURANTE EM FEIRA DE SANTANA', 4),
(240, 3, '2017-04-01', 132, 'CC - ESTACIONAMENTO', 4),
(241, 44.08, '2017-04-01', 132, 'CC - ALMOÇO', 4),
(242, 61.76, '2017-04-01', 132, 'CC - GASOLINA', 4),
(243, 31.08, '2017-04-01', 132, 'CC - ALIMENTAÇÃO PREMIO FAMA ILHA', 4),
(244, 56.48, '2017-04-01', 132, 'CC - GASOLINA PREMIO FAMA', 4),
(245, 21.99, '2017-04-01', 124, 'CC - ALIMENTAÇÃO - JEQUIÉ', 4),
(246, 6.5, '2017-04-01', 124, 'CC - ALIMENTAÇÃO - JEQUIÉ', 4),
(247, 78.04, '2017-04-01', 124, 'CC - GASOLINA - JEQUIÉ', 4),
(248, 88, '2017-04-01', 124, 'CC- HOSPEDAGEM - JEQUIÉ', 4),
(250, 1763, '2017-04-03', 109, 'CP 563 - MOSTRUARIOS', 4),
(252, 2449.81, '2017-04-03', 145, 'TAXA MENSAL', 4),
(253, 148.42, '2017-04-04', 22, 'IOF USO DO LIMITE', 4),
(254, 1984.07, '2017-04-04', 22, 'USO DO LIMITE', 4),
(255, 127.17, '2017-04-05', 22, 'ENCARGO SALDO VINCULADO', 4),
(256, 8.95, '2017-04-12', 22, 'TED', 4),
(257, 65.8, '2017-04-13', 22, 'TARIFA DE MANUTENÇÃO BANCÁRIA', 4),
(258, 174.82, '2017-04-17', 110, 'ALIANÇA AU 10 BINHA', 4),
(259, 218.25, '2017-04-18', 33, 'ALVARA 2017', 4),
(260, 468.5, '2017-04-20', 153, 'SWL 1º SISTEMA', 4),
(261, 234.25, '2017-04-20', 153, '2º SWL SISTEMA DAS VENDEDORAS', 4),
(262, 1087.79, '2017-04-20', 154, 'SIMPLES', 4),
(263, 143.94, '2017-04-25', 139, '', 4),
(264, 19.99, '2017-04-25', 140, '', 4),
(265, 2.5, '2017-04-04', 124, 'LANCHE NO POSTO', 4),
(266, 5, '2017-04-04', 124, 'PEDAGIOS ', 4),
(267, 3.85, '2017-04-18', 132, 'CAFÉ THAIS COM SUPOSTA VENDEDORA', 4),
(268, 9, '2017-04-19', 132, 'EVENTO GATOSAS', 4),
(269, 10.4, '2017-04-19', 132, 'PEDAGIOS EVENTO GATOSAS', 4),
(270, 5.2, '2017-04-25', 132, 'CAFE THAIS COM SUPOSTA VENDEDORA', 4),
(271, 80.85, '2017-04-28', 149, 'SEDEX BRUNA', 4),
(273, 214.7, '2017-04-12', 136, 'DAV 13106 - AJUDA DE CUSTO FRANCINEIA', 4),
(274, 9.5, '2017-04-13', 136, 'DAV 13107 - PARA MIMO', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bruna_despesa_niveis`
--

CREATE TABLE `bruna_despesa_niveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bruna_despesa_niveis`
--

INSERT INTO `bruna_despesa_niveis` (`id`, `nome`, `pai`, `ordem`) VALUES
(1, 'Compras', 0, 1),
(2, 'Comercial', 0, 2),
(4, 'Impostos/ taxas', 0, 4),
(7, 'Comercial', 2, 1),
(18, 'Banco', 4, 1),
(19, 'Encargos Terceiros', 4, 2),
(21, 'Imposto Municipal e Estadual', 4, 4),
(22, 'Manutenções de contas', 18, 1),
(28, 'Custódia de Cheques', 19, 1),
(33, 'Alvarás e licenças', 21, 1),
(35, 'IPTU', 21, 3),
(86, 'Compras', 1, 1),
(108, 'Bruna', 86, 1),
(109, 'Tomasetto', 86, 2),
(110, 'JR Metais', 86, 3),
(122, 'Comissão (consignado)', 7, 1),
(123, 'Despesas com viagens (vendedoras)', 7, 2),
(124, 'Despesas com viagens (prest. contas)', 7, 3),
(131, 'xxx', 86, 5),
(132, 'Despesas com prospecção', 7, 5),
(133, 'Despesas com alimentação / lanches', 7, 6),
(134, 'Bonificação / Ajuda de custo', 7, 7),
(135, 'Brinde / Mimo', 7, 8),
(136, 'Perdas e Prejuízo', 7, 9),
(137, 'Cheques Devolvidos', 19, 2),
(138, 'Normal', 4, 3),
(139, 'ICMS - antecipação', 138, 1),
(140, 'ICMS - Pobreza', 138, 2),
(142, 'Cartão Cielo', 4, 5),
(144, 'Taxa de desconto cre/deb/par', 142, 2),
(145, 'Taxa de Manutenção', 142, 3),
(146, 'Taxa por Antecipação', 142, 4),
(147, 'Despesas Operacionais', 0, 5),
(148, 'Aministração', 147, 1),
(149, 'Correios', 148, 1),
(151, 'Fixos', 147, 2),
(152, 'Contabilidade', 151, 1),
(153, 'Sistema de Informatica', 151, 2),
(154, 'Simples Nacional', 138, 3),
(155, 'Variáveis', 147, 3),
(156, 'Certificados', 155, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bruna_receita`
--

CREATE TABLE `bruna_receita` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `origem` int(22) NOT NULL,
  `vendido_recebido` int(22) NOT NULL,
  `debito_credito` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `bruna_receita`
--

INSERT INTO `bruna_receita` (`id`, `valor`, `data`, `origem`, `vendido_recebido`, `debito_credito`, `descricao`, `id_user`) VALUES
(1, 600, '2017-01-18', 2, 2, 2, '', 0),
(5, 711.15, '2017-01-02', 3, 1, 1, 'CHEQUE 852112 -', 0),
(20, 1693, '2017-01-10', 3, 1, 1, 'CHEQUE 851904-B', 0),
(21, 12000, '2017-01-10', 3, 1, 1, 'EMPRESTIMO SANDRA', 0),
(41, 540, '2017-01-25', 3, 1, 1, '', 0),
(42, 2246.98, '2017-01-25', 3, 1, 2, '', 0),
(55, 792.3, '2017-01-30', 1, 1, 1, 'DOC 734', 0),
(56, 25.95, '2017-01-31', 1, 1, 1, 'CR 12636/01 - PAULA - ABATIDO NA RESCISÃO', 0),
(57, 24.6, '2017-01-31', 1, 1, 1, 'CR 12636/02 - PAULA - ABATIDO NA RESCISÃO', 0),
(58, 24.6, '2017-01-31', 1, 1, 1, 'CR 12636/03 - PAULA - ABATIDO NA RESCISÃO', 0),
(59, 24.6, '2017-01-31', 1, 1, 1, 'CR 12636/04 - PAULA - ABATIDO NA RESCISÃO', 0),
(60, 302.1, '2017-01-05', 2, 2, 2, '', 0),
(61, 453.15, '2017-01-07', 2, 2, 2, '', 0),
(62, 22.02, '2017-01-10', 2, 2, 2, '', 0),
(63, 149.15, '2017-01-10', 2, 2, 2, '', 0),
(64, 295, '2017-01-10', 2, 2, 2, '', 0),
(65, 443.9, '2017-01-11', 2, 2, 2, '', 0),
(66, 169.8, '2017-01-13', 2, 2, 2, '', 0),
(67, 182, '2017-01-16', 2, 2, 2, '', 0),
(68, 208, '2017-01-17', 2, 2, 2, '', 0),
(69, 231.8, '2017-01-17', 2, 2, 2, '', 0),
(70, 700, '2017-01-17', 2, 2, 2, '', 0),
(71, 2568, '2017-01-18', 2, 2, 2, '', 0),
(72, 388, '2017-01-19', 2, 2, 2, '', 0),
(73, 528, '2017-01-20', 2, 2, 2, '', 0),
(74, 202.35, '2017-01-24', 2, 2, 2, '', 0),
(75, 305.12, '2017-02-06', 2, 1, 1, '', 0),
(76, 553.78, '2017-02-08', 2, 1, 1, '', 0),
(77, 196.22, '2017-02-09', 2, 1, 1, '', 0),
(78, 222.3, '2017-02-10', 2, 1, 1, '', 0),
(79, 39.24, '2017-02-13', 2, 1, 1, '', 0),
(80, 363.01, '2017-02-17', 2, 1, 1, '', 0),
(81, 161.88, '2017-02-20', 2, 1, 1, '', 0),
(82, 220.89, '2017-02-21', 2, 1, 1, '', 0),
(83, 12444.4, '2017-02-10', 2, 1, 2, 'ANTECIPAÇÃO DE CARTÃO', 0),
(84, 417, '2017-02-16', 1, 1, 1, 'DEPOSITO DE VANESSA AIMEE PARA PAGAR PRESTAÇÃO DE CONTAS', 0),
(85, 350, '2017-02-20', 3, 1, 1, 'CH 000214 - CARMEM LUCIA', 0),
(86, 200, '2017-02-20', 3, 1, 1, 'CH 900397 - FRANCINEIA', 0),
(87, 1602.27, '2017-02-06', 3, 2, 2, '', 0),
(88, 10158.7, '2017-02-09', 3, 2, 2, '', 0),
(89, 1617.45, '2017-02-11', 3, 2, 2, '', 0),
(90, 1005.72, '2017-02-13', 3, 2, 2, '', 0),
(91, 363, '2017-02-22', 3, 2, 2, '', 0),
(92, 222, '2017-02-09', 4, 1, 1, 'PROMISSORIA DE LUCELIA QUE PAGOU COM CHEQUE NA PRESTAÇÃO', 0),
(94, 653.6, '2017-02-13', 1, 1, 1, 'DOC 738', 0),
(95, 112.3, '2017-02-13', 4, 1, 2, 'DOC 736', 0),
(96, 363.25, '2017-02-22', 1, 1, 1, 'DOC 744', 0),
(97, 331.97, '2017-02-02', 2, 1, 2, 'CARTÃO CRÉDITO', 0),
(98, 253.85, '2017-02-06', 2, 1, 2, 'CARTÃO CRÉDITO', 0),
(99, 31.2, '2017-02-10', 2, 1, 2, 'CARTÃO CRÉDITO', 0),
(100, 246.18, '2017-02-20', 2, 1, 2, 'CARTÃO CRÉDITO', 0),
(101, 269.8, '2017-02-22', 2, 1, 2, 'CARTÃO CRÉDITO', 0),
(104, 1196.65, '2017-01-02', 2, 1, 2, '', 0),
(105, 318.84, '2017-01-04', 2, 1, 2, '', 0),
(106, 35235.9, '2017-01-06', 2, 1, 2, 'antecipação de cartão', 0),
(107, 49.87, '2017-01-24', 2, 1, 2, 'antecipação de cartão', 0),
(108, 900, '2017-02-24', 1, 1, 1, 'DOC 396 NAILANE', 0),
(110, 75, '2017-02-06', 2, 2, 2, '', 0),
(111, 942, '2017-02-06', 2, 2, 2, '', 0),
(112, 455, '2017-02-07', 2, 2, 2, '', 0),
(113, 500, '2017-02-07', 2, 2, 2, '', 0),
(114, 285, '2017-02-09', 2, 2, 2, '', 0),
(115, 214.6, '2017-02-09', 2, 2, 2, '', 0),
(116, 225.15, '2017-02-09', 2, 2, 2, '', 0),
(117, 170, '2017-02-09', 2, 2, 2, '', 0),
(118, 350, '2017-02-10', 2, 2, 2, '', 0),
(119, 898.7, '2017-02-10', 2, 2, 2, '', 0),
(120, 643.54, '2017-02-10', 2, 2, 2, '', 0),
(121, 85.4, '2017-02-11', 2, 2, 2, '', 0),
(122, 115, '2017-02-14', 2, 2, 2, '', 0),
(123, 352, '2017-02-15', 2, 2, 2, '', 0),
(124, 115, '2017-02-16', 2, 2, 2, '', 0),
(125, 336.3, '2017-02-19', 2, 2, 2, '', 0),
(126, 132, '2017-02-20', 2, 2, 2, '', 0),
(127, 500, '2017-02-21', 2, 2, 2, '', 0),
(128, 675, '2017-02-21', 2, 2, 2, '', 0),
(129, 140.6, '2017-02-25', 2, 2, 2, '', 0),
(130, 140.6, '2017-02-25', 2, 2, 2, '', 0),
(131, 140.6, '2017-02-25', 2, 2, 2, '', 0),
(132, 140.6, '2017-02-25', 2, 2, 2, '', 0),
(133, 174.8, '2017-03-22', 2, 2, 2, 'CARTAO PASSADO NA CONDOR', 4),
(134, 550, '2017-03-03', 2, 2, 2, '', 4),
(135, 120, '2017-03-06', 2, 2, 2, '', 4),
(136, 475, '2017-03-06', 2, 2, 2, '', 4),
(137, 111, '2017-03-06', 2, 2, 2, '', 4),
(138, 600, '2017-03-08', 2, 2, 2, '', 4),
(139, 632, '2017-03-08', 2, 2, 2, '', 4),
(140, 696, '2017-03-08', 2, 2, 2, '', 4),
(141, 937.65, '2017-03-10', 2, 2, 2, '', 4),
(142, 250, '2017-03-10', 2, 2, 2, '', 4),
(143, 114, '2017-03-15', 2, 2, 2, 'CARTAO PASSADO NA BRUNA', 4),
(144, 117, '2017-03-17', 2, 2, 2, '', 4),
(145, 325.85, '2017-03-17', 2, 2, 2, '', 4),
(146, 1140, '2017-03-20', 2, 2, 2, '', 4),
(147, 206.15, '2017-03-20', 2, 2, 2, '', 4),
(148, 186, '2017-03-20', 2, 2, 2, '', 4),
(149, 457, '2017-03-21', 2, 2, 2, '', 4),
(150, 1278, '2017-03-21', 2, 2, 2, '', 4),
(151, 712.5, '2017-03-21', 2, 2, 2, '', 4),
(152, 1818.3, '2017-03-22', 2, 2, 2, '', 4),
(153, 1088.7, '2017-03-23', 2, 2, 2, '', 4),
(154, 218.5, '2017-03-23', 2, 2, 2, 'CARTAO 449,00 / SO QUE 230,50 FOI DA CONDOR', 4),
(155, 248.9, '2017-03-27', 2, 2, 2, '', 4),
(156, 400, '2017-03-28', 2, 2, 2, '', 4),
(157, 211.85, '2017-03-29', 2, 2, 2, '', 4),
(158, 143.45, '2017-03-29', 2, 2, 2, '', 4),
(159, 223, '2017-03-29', 2, 2, 2, '', 4),
(160, 265.05, '2017-03-29', 2, 2, 2, '', 4),
(161, 110, '2017-03-29', 2, 1, 1, '', 4),
(162, 532, '2017-03-30', 2, 2, 2, '', 4),
(163, 268.15, '2017-03-30', 2, 2, 2, '', 4),
(164, 162.45, '2017-03-30', 2, 2, 2, '', 4),
(165, 681.15, '2017-03-30', 2, 2, 2, '', 4),
(166, 378.1, '2017-03-30', 2, 2, 2, '', 4),
(167, 124.45, '2017-03-30', 2, 2, 2, '', 4),
(168, 157.7, '2017-03-30', 2, 2, 2, '', 4),
(169, 270.75, '2017-03-31', 2, 2, 2, '', 4),
(170, 911.05, '2017-03-31', 2, 2, 2, '', 4),
(171, 1349, '2017-03-31', 2, 2, 2, '', 4),
(172, 130.15, '2017-03-31', 2, 2, 2, '', 4),
(173, 224.2, '2017-03-31', 2, 2, 2, '', 4),
(174, 161.88, '2017-03-22', 4, 2, 2, 'DOC 750 - EDILA', 4),
(175, 1511.64, '2017-03-14', 3, 2, 2, '', 4),
(176, 837.9, '2017-03-21', 3, 2, 2, '', 4),
(177, 1951.68, '2017-03-27', 3, 2, 2, '', 4),
(178, 55.67, '2017-03-22', 4, 1, 2, '', 4),
(179, 275.97, '2017-03-10', 4, 2, 2, '', 4),
(180, 156.28, '2017-03-11', 4, 2, 2, '', 4),
(181, 156.28, '2017-03-12', 4, 2, 2, '', 4),
(182, 161.88, '2017-03-22', 4, 2, 2, '', 4),
(183, 36, '2017-03-27', 4, 2, 2, '', 4),
(184, 16350.1, '2017-03-29', 2, 1, 2, 'ANTECIPAÇÃO DE CARTAO', 4),
(185, 132.89, '2017-03-13', 2, 1, 2, '', 4),
(186, 299.24, '2017-03-15', 2, 1, 2, '', 4),
(187, 37, '2017-03-16', 2, 1, 2, '', 4),
(188, 84.92, '2017-03-17', 2, 1, 2, '', 4),
(189, 18.53, '2017-03-20', 2, 1, 2, '', 4),
(190, 108.18, '2017-03-21', 2, 1, 2, '', 4),
(191, 42.46, '2017-03-22', 2, 1, 2, '', 4),
(192, 188.99, '2017-03-23', 2, 1, 2, '', 4),
(193, 70.88, '2017-03-27', 2, 1, 2, '', 4),
(194, 350, '2017-03-01', 3, 1, 2, 'CH 000215 - CARMEM VANUSA', 4),
(195, 255, '2017-03-01', 3, 1, 2, '', 4),
(196, 1693, '2017-03-01', 3, 1, 2, 'CH 851903 - ', 4),
(197, 534.09, '2017-03-06', 3, 1, 2, 'CH 850026-B', 4),
(198, 34144, '2017-03-06', 3, 1, 2, 'CHEQUES TROCADO COM CLEUSA - VALOR INTEGRAL - FOI LANÇADO O JUROS', 4),
(199, 835, '2017-03-15', 3, 1, 2, 'CH 002157', 4),
(200, 4625.54, '2017-03-20', 3, 1, 2, 'CH 003220', 4),
(201, 335.25, '2017-03-20', 3, 1, 2, 'CH 000112', 4),
(202, 363, '2017-03-31', 3, 1, 2, 'CH 900208', 4),
(203, 539.15, '2017-03-31', 3, 1, 2, 'CH 900274', 4),
(204, 350, '2017-03-31', 3, 1, 2, 'CH 000216', 4),
(205, 255, '2017-03-31', 3, 1, 2, 'CH 993968', 4),
(206, 16800, '2017-03-31', 1, 1, 1, 'EMPRÉSTIMO DE SANDRA', 4),
(207, 15, '2017-03-06', 1, 1, 1, 'TROCA DE CHEQUE CLEUSA', 4),
(208, 10.45, '2017-03-06', 4, 1, 2, 'DOC 743 - JAMILE', 4),
(209, 803.66, '2017-03-14', 3, 1, 2, 'CH 900322 - DARLENE', 4),
(210, 536, '2017-03-22', 1, 1, 1, 'DOC 754 - DARTH', 4),
(211, 52.28, '2017-03-31', 1, 1, 1, 'DOC 12915 - JAMILE', 4),
(212, 2349.54, '2017-04-06', 1, 1, 1, 'TROCA DE CHEQUE COM CLEUSA', 4),
(214, 29924, '2017-04-17', 2, 2, 2, '', 4),
(215, 193, '2017-04-27', 2, 2, 2, '', 4),
(216, 16138.9, '2017-04-27', 2, 1, 2, 'ANTECIPAÇÃO DE CARTÃO', 4),
(217, 524.31, '2017-04-26', 1, 1, 1, 'DOC 763 - CELESTE', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bruna_receita_origem`
--

CREATE TABLE `bruna_receita_origem` (
  `id` int(11) NOT NULL,
  `nome_origem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `bruna_receita_origem`
--

INSERT INTO `bruna_receita_origem` (`id`, `nome_origem`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão'),
(3, 'Cheque'),
(4, 'Promissória');

-- --------------------------------------------------------

--
-- Estrutura para tabela `condor_alunos`
--

CREATE TABLE `condor_alunos` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `condor_alunos`
--

INSERT INTO `condor_alunos` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rodrigo', 'r@r.com', '123', 1),
(2, 'c', 'c@c.com', '123', 1),
(3, 'Rui', 'rui', '250393', 1),
(4, 'Pedro Paulo', 'pedro', '26082013', 1),
(5, 'Sandra', 'sandra', '1526', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `condor_despesa`
--

CREATE TABLE `condor_despesa` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `id_nivel` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `condor_despesa`
--

INSERT INTO `condor_despesa` (`id`, `valor`, `data`, `id_nivel`, `descricao`, `id_user`) VALUES
(1, 220, '2017-01-20', 146, 'SWL VENDEDORAS', 0),
(2, 82.95, '2017-01-20', 143, 'SEDEX', 0),
(65, 227.17, '2017-01-02', 108, 'BOLETO 479', 0),
(66, 249.71, '2017-01-02', 108, 'BOLETO 434', 0),
(67, 363.81, '2017-01-02', 109, 'PULSEIRA DE BINHA / MANDALA DARLENE / PINGENTE VANESSA', 0),
(68, 634.05, '2017-01-02', 22, 'USO DO LIMITE', 0),
(69, 85.9, '2017-01-02', 22, 'IOF USO DO LIMITE', 0),
(70, 5.15, '2017-01-02', 22, 'ENCARGO SALDO VINCULADO', 0),
(71, 19.98, '2017-01-06', 108, 'BOLETO 484', 0),
(72, 2042.27, '2017-01-06', 108, 'BOLETO 487', 0),
(73, 8.95, '2017-01-10', 22, 'TED', 0),
(74, 440, '2017-01-10', 145, 'ATIVA CONTABILIDADE', 0),
(75, 112.98, '2017-01-11', 108, 'BOLETO 490', 0),
(76, 305.79, '2017-01-11', 108, 'BOLETO 493', 0),
(77, 68.4, '2017-01-13', 22, 'TAXA DE MANUTENÇÃO BANCARIA', 0),
(78, 440, '2017-01-20', 146, 'SWL', 0),
(79, 445.14, '2017-01-20', 140, '', 0),
(80, 2340.83, '2017-01-23', 108, 'BOLETO 500', 0),
(81, 207.58, '2017-01-24', 108, 'BOLETO 474', 0),
(82, 859.35, '2017-01-24', 108, 'BOLETO 477', 0),
(83, 1507.77, '2017-01-25', 139, '', 0),
(84, 1804.99, '2017-01-27', 108, 'CHEQUE 000216', 0),
(85, 227.17, '2017-01-30', 108, 'BOLETO 480', 0),
(86, 15250.4, '2017-01-30', 110, 'COMPRA DA BACH JOIAS', 0),
(87, 8.95, '2017-01-30', 22, 'TED', 0),
(88, 38.71, '2017-01-02', 124, 'GASOLINA POSTO CENTRAL', 0),
(89, 28.77, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(90, 33.84, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(91, 25.02, '2017-01-02', 124, 'ALIMENTAÇÃO', 0),
(92, 91, '2017-01-02', 124, 'HOTEL', 0),
(93, 54.63, '2017-01-02', 124, 'POSTO CENTRA VIAGEM SSA', 0),
(94, 27.12, '2017-01-02', 124, 'ALIMENTAÇÃO CODICAL', 0),
(95, 11.23, '2017-01-02', 124, 'BARATAO DAS CARNES-  VIAGEM SSA', 0),
(96, 64.2, '2017-01-02', 124, 'ALMOÇO SSA', 0),
(97, 3, '2017-01-02', 124, 'ESTACIONAMENTO', 0),
(98, 72.62, '2017-01-02', 124, 'ALMOÇO SSA', 0),
(99, 75, '2017-01-02', 132, 'BOI PRETO - EVENTO DE SANDRA', 0),
(100, 180.54, '2017-01-02', 132, 'GASOLINA AMARGOSA - PROSPECÇÃO E VENDAS BACH JOIAS', 0),
(101, 3212.06, '2017-01-05', 151, 'MAQUINAS DE CARTAO - 23 MAQUINAS', 0),
(102, 619.1, '2017-01-06', 152, 'JUROS POR TER FEITO ANTECIPAÇÃO', 0),
(103, 84.86, '2017-01-06', 152, 'IOF POR TER FEITO ANTECIPAÇÃO', 0),
(105, 2316.29, '2017-01-30', 108, 'ch 000221 - dif entre a bach joias e condor', 0),
(106, 58.5, '2017-02-06', 124, 'GASOLINA PRESTAÇÃO SSA / ALA', 0),
(107, 220, '2017-02-20', 146, 'SWL VENDEDORAS', 0),
(108, 2713.59, '2017-02-01', 122, 'COMISSÃO TÁLITA VALENÇA - 16/12/16 A 01/02/2017', 0),
(110, 476.14, '2017-02-02', 122, 'COMISSÃO CARINE - 16/12/16 A 02/2/17', 0),
(111, 685.89, '2017-02-01', 122, 'COMISSÃO JAILMA - 20/12/16 A 31/01/17', 0),
(112, 3635.64, '2017-02-03', 122, 'COMISSÃO GILES - 26/11/16 A 03/02/2017', 0),
(113, 554.03, '2017-02-03', 122, 'COMISSÃO VANUSA - 10/12/16 A 03/02/2017', 0),
(114, 379.05, '2017-02-04', 122, 'COMISSÃO ANA CLAUDIA DO SALÃO - 30/11/16 A 04/02/2017', 0),
(115, 630.42, '2017-02-05', 122, 'COMISSÃO JENIFER - 08/12/2016 A 05/02/2017', 0),
(116, 701.29, '2017-02-05', 122, 'COMISSÃO ANA MARIA - 07/12/2016 A 05/02/2017', 0),
(117, 978.69, '2017-02-05', 122, 'COMISSÃO MANUELA CARREIRO - 07/12/16 A 05/02/17', 0),
(118, 1849.01, '2017-02-05', 122, 'COMISSÃO ANA CLAUDIA - 07/12/2016 A 05/02/2017', 0),
(119, 598.69, '2017-02-06', 122, 'COMISSÃO KLEYJANE - 22/12/16 A 06/02/17', 0),
(120, 251.75, '2017-02-08', 122, 'COMISSÃO JESSICA - 01/12/16 A 08/02/2017', 0),
(121, 2632.96, '2017-02-09', 122, 'COMISSAO LUCELIA (BACH JOIAS) - 19/12/16 A 09/02/17', 0),
(123, 658.35, '2017-02-10', 122, 'COMISSÃO PAMELA - 03/12/16 A 10/02/17', 0),
(124, 960.26, '2017-02-11', 122, 'COMISSÃO BINHA AMARGOSA - 19/12/16 A 12/02/17', 0),
(125, 1736.09, '2017-02-12', 122, 'COMISSÃO BINHA AMARGOSA (BACH JOIAS) - 19/12/16 A 12/02/17', 0),
(126, 3301.44, '2017-02-11', 122, 'COMISSÃO EDILA - 08/12/16 A 12/02/17', 0),
(127, 165.58, '2017-02-13', 122, 'COMISSÃO FÁBIA JEQUIÉ - 22/11/16 A 13/02/17', 0),
(128, 2122.11, '2017-02-16', 122, 'COMISSÃO VANESSA AIMEE - 04/10/16 A 05/02/107', 0),
(129, 1171.5, '2017-02-22', 122, 'COMISSÃO SANDRA (BACH JOIAS) - 22/12/16 A 31/01/17 - FOI FINALIZADO E DADO BAIXA NO DIA 22/02/2017', 0),
(130, 237.5, '2017-02-22', 124, 'PAGTO  A JAMILE EM PEÇAS - VIAGEM SALVADOR E JEQUIE', 0),
(131, 236.55, '2017-02-24', 124, 'PAGTO A MILENA EM PEÇAS - VIAGEM SALVADOR E JEQUIE', 0),
(132, 219.93, '2017-02-05', 134, 'AJUDA A VANESSA AIMEE EM DOIS EVENTOS DAS GATOSAS', 0),
(133, 95, '2017-02-02', 134, 'AJUDA DE CUSTO TÁLITA', 0),
(134, 12.63, '2017-02-02', 136, 'FOI DEVOLVIDO ESSE VALOR POIS A VENDEDORA TÁLITA, PAGOU ESSA PEÇA NA PRESTAÇÃO ANTERIOR', 0),
(135, 182.4, '2017-02-02', 136, 'DAV 5308 - JAILMA', 0),
(136, 260.3, '2017-02-02', 136, 'DAV 5320 - CARINE', 0),
(137, 83.6, '2017-02-06', 136, 'DAV 5351 - GILES', 0),
(138, 190, '2017-02-06', 134, 'DAV 5364 - GILES', 0),
(139, 70.3, '2017-02-08', 135, 'DAV 5366 - ANIVERSÁRIO DE JENIFER', 0),
(140, 479.75, '2017-02-17', 136, 'DAV 5523 - CONÇA AMARGOSA', 0),
(141, 2, '2017-02-20', 135, 'DAV 5574 - NUBIA', 0),
(142, 20, '2017-02-22', 135, 'DAV 5585 - ', 0),
(143, 124.45, '2017-02-08', 135, 'DAV 5365 - ANIVERSÁRIO DE ANA CLAUDIA', 0),
(144, 188.1, '2017-02-07', 134, 'DAV 5424 - KLEYJANE - AJUDA POR TER VINDO EM DEZEMBRO PRESTAR CONTA NA EMPRESA', 0),
(145, 292.3, '2017-02-13', 136, 'DAV 5465 - JENIFFER', 0),
(146, 125, '2017-02-06', 124, 'HOTEL SSA ', 0),
(147, 3.75, '2017-02-07', 124, 'PEDÁGIOS', 0),
(148, 10, '2017-02-08', 124, 'CARNE PARA JANTA SSA', 0),
(149, 2, '2017-02-14', 124, 'AGUA VIAGEM JEQUIE', 0),
(150, 10, '2017-02-15', 132, 'ENVIO DE CATALOGOS PARA NOVA VENDEDORA EM ITABUNA', 0),
(151, 3, '2017-02-16', 132, 'ESTACIONAMENTO EM FEIRA', 0),
(152, 4, '2017-02-16', 132, 'CAFE DA MANHA EM FEIRA DE SANTANA', 0),
(153, 2, '2017-02-20', 132, 'PEDAGIOS - ENTREGA DE MOSTRUARIO A VENDEDORA M LAURO DE FREITAS', 0),
(154, 2.25, '2017-02-20', 132, 'CAFE EM LAURO DE FREITAS', 0),
(155, 4.7, '2017-02-20', 132, 'ESTACIONAMENTO EM SSA', 0),
(156, 5, '2017-02-20', 132, 'PEDAGIOS', 0),
(157, 551.72, '2017-02-01', 22, 'USO DO LIMITE', 0),
(158, 68.9, '2017-02-02', 22, 'IOF USO DO LIMITE', 0),
(159, 24.6, '2017-02-02', 22, 'TARIFA POR TER DADO CHEQUE COM VALOR SUPERIOR', 0),
(160, 19.99, '2017-02-06', 108, 'CP 485', 0),
(161, 2042.26, '2017-02-06', 108, 'CP 488', 0),
(162, 112.99, '2017-02-10', 108, 'CP 491', 0),
(163, 305.79, '2017-02-10', 108, 'CP 494', 0),
(164, 468.5, '2017-02-10', 145, 'ATIVA CONTABILIDADE', 0),
(165, 68.4, '2017-02-15', 22, 'TAXA DE MANUTENÇÃO BANCÁRIA', 0),
(166, 8.95, '2017-02-17', 22, 'TED', 0),
(167, 250.53, '2017-02-20', 140, 'SIMPLES', 0),
(168, 440, '2017-02-20', 146, 'SWL', 0),
(169, 2340.83, '2017-02-21', 108, 'CP 501', 0),
(170, 207.58, '2017-02-23', 108, 'CP 475', 0),
(171, 859.35, '2017-02-23', 108, 'CP 478', 0),
(172, 606.61, '2017-02-10', 152, 'JUROS DE ANTECIPAÇÃO', 0),
(173, 74.72, '2017-02-10', 152, 'IOF DE ANTECIPAÇÃO', 0),
(174, 3212.06, '2017-02-05', 151, '', 0),
(218, 947.34, '2017-03-17', 122, 'COMISSÃO JAILMA - ', 4),
(219, 396.65, '2017-03-20', 122, 'COMISSÃO CLAUDIA SALÃO SAJ', 4),
(220, 412.39, '2017-03-21', 122, 'COMISSÃO FÁBIA JEQUIÉ', 4),
(221, 273.22, '2017-03-22', 122, 'COMISSÃO EDILA', 4),
(222, 4621.57, '2017-03-22', 122, 'COMISSÃO NAILLANE', 4),
(223, 165.01, '2017-03-24', 122, 'COMISSÃO ERICA VALENÇA', 4),
(224, 671.7, '2017-03-06', 28, 'TROCA DE CHEQUE COM CLEUSA', 4),
(225, 33.82, '2017-03-01', 122, 'COMISSÃO MILENA - DAV 5632', 4),
(226, 182.4, '2017-03-03', 136, 'DAV 5308 - JAILMA', 4),
(227, 137.75, '2017-03-23', 136, 'DAV 5755 - ANA CLAUDIA SSA', 4),
(228, 292.6, '2017-03-12', 136, 'DAV 5465 - JENIFFER SSA', 4),
(229, 260.3, '2017-03-23', 136, 'DAV 5746 - CARINE ', 4),
(230, 242.25, '2017-03-23', 136, 'DAV 5845 - CARINE', 4),
(231, 42.76, '2017-03-01', 124, 'CC - MERCADÃO DE CARNES', 4),
(232, 75.16, '2017-03-01', 124, 'CC - ALMOÇO SSA', 4),
(234, 72.5, '2017-03-01', 124, 'CC - HOTEL ALAGOINHAS', 4),
(235, 29.13, '2017-03-01', 124, 'CC - ALMOÇO EM ALAGOINHAS', 4),
(236, 101.18, '2017-03-01', 132, 'DAV 12971 - VIVIANE - VIAGEM PREMIO FAMA ILHA ', 4),
(237, 6, '2017-03-01', 124, 'CC - CAFE EM JEQUIE', 4),
(238, 48.1, '2017-03-01', 124, 'CC - ALMOÇO EM JEQUIÉ', 4),
(239, 27.54, '2017-03-01', 124, 'CC - JANTA', 4),
(240, 115.5, '2017-03-01', 124, 'CC - HOTEL EM JEQUIE', 4),
(241, 362.8, '2017-03-27', 122, 'COMISSÃO NUBIA', 4),
(242, 1419.58, '2017-03-27', 122, 'COMISSÃO JENIFFER', 4),
(243, 213.75, '2017-03-27', 122, 'COMISSÃO ANA MARIA', 4),
(244, 903.16, '2017-03-27', 122, 'COMISSÃO MANUELA', 4),
(245, 1070.08, '2017-03-27', 122, 'COMISSÃO ANA CLAUDIA', 4),
(246, 500.66, '2017-03-27', 122, 'COMISSÃO BINHA AMARGOSA', 4),
(247, 376.3, '2017-03-27', 122, 'BINHA AMARGOSA - BACH JOIAS', 4),
(248, 205, '2017-03-28', 122, 'COMISSÃO KLEYJANE', 4),
(249, 53.01, '2017-03-29', 122, 'COMISSÃO JESSICA', 4),
(250, 66.5, '2017-03-30', 136, 'DAV 5839 - VIVIANE', 4),
(251, 117.99, '2017-03-22', 122, 'COMISSÃO JOSETE', 4),
(252, 300.58, '2017-03-24', 122, 'COMISSÃO CARINE', 4),
(253, 1096.39, '2017-03-24', 122, 'COMISSÃO GILES', 4),
(254, 78.83, '2017-03-29', 152, 'IOF ANTECIPAÇÃO', 4),
(255, 549.95, '2017-03-29', 152, 'JUROS DE ANTENCIPAÇÃO', 4),
(256, 8.95, '2017-03-01', 22, 'TED', 4),
(257, 227.17, '2017-03-01', 108, 'BOLETO 481', 4),
(258, 1222.54, '2017-03-01', 22, 'USO DO LIMITE ', 4),
(259, 46.45, '2017-03-02', 22, 'IOF USO DO LIMITE', 4),
(260, 3.86, '2017-03-03', 22, 'ENCARGO SALDO VINCULADO', 4),
(261, 2306.26, '2017-03-06', 108, 'CH 000222 -', 4),
(262, 15250.4, '2017-03-06', 110, 'CH 000222', 4),
(263, 19.99, '2017-03-07', 108, 'BOLETO 486', 4),
(264, 24.6, '2017-03-09', 22, 'TARIFA DE CHEQUE SUPERIOR', 4),
(265, 2042.26, '2017-03-09', 108, 'BOLETO 489', 4),
(266, 65.45, '2017-03-10', 110, 'BOLETO 521', 4),
(267, 468.5, '2017-03-10', 145, 'ATIVA CONTABILIDADE', 4),
(268, 112.99, '2017-03-13', 108, 'BOLETO 492', 4),
(269, 305.79, '2017-03-13', 108, 'BOLETO 495', 4),
(270, 68.4, '2017-03-15', 22, 'TARIFA DE MANUTENÇÃO BANCARIA', 4),
(271, 62, '2017-03-20', 140, 'SIMPLES', 4),
(272, 302.89, '2017-03-20', 140, 'SIMPLES', 4),
(273, 234.25, '2017-03-20', 145, 'SWL 2º SISTEMA', 4),
(274, 29.45, '2017-03-27', 139, 'ICMS', 4),
(275, 26.55, '2017-03-01', 143, 'MAQUINA DE ANA SSA', 4),
(276, 0.4, '2017-03-10', 143, 'CARTA REGISTRADA', 4),
(277, 85.95, '2017-03-10', 143, 'SEDEX', 4),
(278, 105.35, '2017-03-10', 143, '', 4),
(279, 92.85, '2017-03-17', 143, '', 4),
(280, 27, '2017-03-23', 143, 'ENVIO DE PEÇAS PARA JEQUIÉ', 4),
(281, 924, '2017-03-23', 122, 'COMISSAO FRANCINEIA AU10', 4),
(282, 88.05, '2017-03-24', 143, 'SEDEX CONDOR', 4),
(283, 88.05, '2017-03-31', 143, 'SEDEX CONDOR', 4),
(284, 1.95, '2017-03-27', 124, 'AGUA MINERAL', 4),
(285, 3.75, '2017-03-27', 124, 'PEDAGIOS', 4),
(286, 12.5, '2017-03-27', 124, 'LANCHE REIS DA PAMONHA', 4),
(287, 57.5, '2017-03-27', 124, 'GASOLINA', 4),
(288, 70, '2017-03-27', 124, 'HOTEL SSA', 4),
(289, 3212.06, '2017-03-31', 151, 'Taxa de manutenção das máquinas', 3),
(290, 642.11, '2017-03-31', 150, '', 3),
(291, 225.15, '2017-04-06', 136, 'DAV 5078 - MIRELA', 4),
(292, 276.66, '2017-04-06', 28, 'TROCA DE CHEQUE COM CLEUSA', 4),
(293, 35.09, '2017-04-01', 132, 'CC - RESTAURANTE EM FEIRA DE SANTANA', 4),
(294, 3, '2017-04-01', 132, 'CC - ESTACIONAMENTO', 4),
(295, 44.08, '2017-04-01', 132, 'CC - ALMOÇO', 4),
(296, 61.76, '2017-04-01', 132, 'CC - GASOLINA', 4),
(297, 31.08, '2017-04-01', 132, 'CC - ALIMENTAÇÃO PREMIO FAMA ILHA', 4),
(298, 56.48, '2017-04-01', 132, 'CC - GASOLINA PREMIO FAMA ILHA', 4),
(299, 21.99, '2017-04-01', 124, 'CC - ALIMENTAÇÃO - JEQUIÉ', 4),
(300, 6.5, '2017-04-01', 124, 'CC - ALIMENTAÇÃO - JEQUIÉ', 4),
(301, 78.04, '2017-04-01', 124, 'CC - GASOLINA - JEQUIÉ', 4),
(302, 88, '2017-04-01', 124, 'CC- HOSPEDAGEM - JEQUIÉ', 4),
(303, 1436.65, '2017-04-03', 22, 'USO DO LIMITE', 4),
(304, 101.39, '2017-04-04', 22, 'IOF USO DO LIMITE', 4),
(305, 15315.8, '2017-04-04', 110, 'CHEQUE 000223 - BACH JOIAS AU10', 4),
(306, 2250.81, '2017-04-04', 108, 'CH 000223 - CONDOR', 4),
(307, 18.77, '2017-04-05', 22, 'ENCARGO SALDO VINCULADO', 4),
(308, 24.6, '2017-04-07', 22, 'TARIFA POR EMITIR CHEQUE COM VALOR ALTO', 4),
(309, 65.46, '2017-04-10', 110, 'CP 522 - BOLETO', 4),
(310, 468.5, '2017-04-10', 145, 'CP 546 - ATIVA CONTABILIDADE', 4),
(311, 607.77, '2017-04-10', 109, 'CHEQUE 000231 - ICARO', 4),
(312, 68.4, '2017-04-13', 22, 'TARIFA DE MANUTENÇÃO BANCÁRIA', 4),
(313, 218.25, '2017-04-18', 33, 'ALVARÁ 2017', 4),
(314, 243.43, '2017-04-18', 108, 'CHEQUE 000229 - CONDOR', 4),
(315, 339.31, '2017-04-20', 140, 'SIMPLES ', 4),
(316, 468.5, '2017-04-20', 146, 'SWL PROGRAMA CONDOR', 4),
(317, 234.25, '2017-04-20', 146, 'PROGRAMA CONDOR PARA VENDEDORAS', 4),
(318, 2900.96, '2017-04-25', 139, 'ICMS', 4),
(319, 4540.19, '2017-04-28', 108, 'CP 556 - CONDOR', 4),
(320, 2519.91, '2017-04-01', 151, 'VALOR DESCONTADO ', 4),
(321, 248.72, '2017-04-28', 108, 'BOLETO CONDOR PAGO PELA BRUNA', 4),
(322, 2.5, '2017-04-04', 124, 'LANCHE NO POSTO', 4),
(323, 5, '2017-04-04', 124, 'PEDAGIOS ', 4),
(324, 70, '2017-04-04', 124, 'HOSPEDAGEM', 4),
(325, 30, '2017-04-05', 143, 'ENVIO DE MOSTRUARIO PARA KLEYJANE', 4),
(326, 87.45, '2017-04-10', 143, 'SEDEX CONDOR', 4),
(327, 3.85, '2017-04-18', 132, 'CAFÉ THAIS COM SUPOSTA VENDEDORA', 4),
(328, 9, '2017-04-19', 132, 'EVENTO GATOSAS', 4),
(329, 10.4, '2017-04-19', 132, 'PEDAGIOS EVENTO GATOSAS', 4),
(330, 5.2, '2017-04-25', 132, 'CAFE THAIS COM SUPOSTA VENDEDORA', 4),
(331, 0.1, '2017-04-28', 143, 'CARTA REGISTRADA CONDOR', 4),
(332, 7.7, '2017-04-13', 135, 'DAV 5980', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `condor_despesa_niveis`
--

CREATE TABLE `condor_despesa_niveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `condor_despesa_niveis`
--

INSERT INTO `condor_despesa_niveis` (`id`, `nome`, `pai`, `ordem`) VALUES
(1, 'Compras', 0, 1),
(2, 'Comercial', 0, 2),
(4, 'Impostos/ taxas', 0, 4),
(7, 'Comercial', 2, 1),
(18, 'Banco', 4, 1),
(19, 'Encargos Terceiros', 4, 2),
(21, 'Imposto Municipal e Estadual', 4, 4),
(22, 'Manutenções de contas', 18, 1),
(28, 'Custódia de Cheques', 19, 1),
(33, 'Alvarás e licenças', 21, 1),
(35, 'IPTU', 21, 3),
(86, 'Compras', 1, 1),
(108, 'Condor', 86, 1),
(109, 'Icaro', 86, 2),
(110, 'Bach Joias', 86, 3),
(122, 'Comissão (consignado)', 7, 1),
(123, 'Despesas com viagens (vendedoras)', 7, 2),
(124, 'Despesas com viagens (prest. contas)', 7, 3),
(132, 'Despesas com prospecção', 7, 5),
(133, 'Despesas com alimentação / lanches', 7, 6),
(134, 'Bonificação / Ajuda de Custo', 7, 7),
(135, 'Brinde / Mimos', 7, 8),
(136, 'Perdas e Prejuízo', 7, 9),
(137, 'Cheques Devolvidos', 19, 2),
(138, 'Normal', 4, 3),
(139, 'ICMS - antecipação', 138, 1),
(140, 'Simples', 138, 2),
(141, 'Despesas Operacionais', 0, 5),
(142, 'Aministração', 141, 1),
(143, 'Correios', 142, 1),
(144, 'Fixos', 141, 2),
(145, 'Contabilidade', 144, 1),
(146, 'Sistema de Informatica', 144, 2),
(147, 'Cartão Cielo', 4, 5),
(150, 'Taxa de desconto cre/deb/parc', 147, 2),
(151, 'Taxa de Manutenção', 147, 3),
(152, 'Taxa por Antecipação', 147, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `condor_receita`
--

CREATE TABLE `condor_receita` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `origem` int(22) NOT NULL,
  `vendido_recebido` int(22) NOT NULL,
  `debito_credito` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `condor_receita`
--

INSERT INTO `condor_receita` (`id`, `valor`, `data`, `origem`, `vendido_recebido`, `debito_credito`, `descricao`, `id_user`) VALUES
(1, 600, '2017-01-19', 1, 1, 1, 'DOC 356 - BACH JOIAS - SANDRA - DIN DEPOSITADO NA POUPANÇA BRASIL', 0),
(2, 600, '2017-01-30', 1, 1, 1, 'DOC 358 - BACH JOIAS - SANDRA - DIN DEPOSITADO NA POUPANÇA BRASIL', 0),
(3, 600, '2017-01-30', 1, 1, 1, 'DOC 359 - BACH JOIAS - SANDRA - DIN DEPOSITADO NA POUPANÇA BRASIL', 0),
(4, 80, '2017-01-30', 1, 1, 1, 'DOC 361 - BACH JOIAS - SANDRA - DIN DEPOSITADO NA POUPANÇA BRASIL', 0),
(5, 50.57, '2017-01-31', 4, 1, 1, 'DOC 5106/01 - PAULA', 0),
(6, 23, '2017-01-31', 4, 1, 1, 'DOC 4764/02 - PAULA', 0),
(7, 48.93, '2017-01-31', 4, 1, 1, 'DOC 5204/01 - PAULA', 0),
(8, 30.33, '2017-01-31', 4, 1, 1, 'DOC 5241/01 - PAULA', 0),
(9, 23, '2017-01-31', 4, 1, 1, 'DOC 4764/01 - PAULA', 0),
(10, 47.5, '2017-01-31', 4, 1, 1, 'DOC 5204/01 - PAULA', 0),
(11, 30, '2017-01-31', 4, 1, 1, 'DOC 5241/02 - PAULA', 0),
(12, 50, '2017-01-31', 4, 1, 1, 'DOC 5106/03 - PAULA', 0),
(13, 47.5, '2017-01-31', 4, 1, 1, 'DOC 5204/03 - PAULA', 0),
(14, 50, '2017-01-31', 4, 1, 1, 'DOC 5106/02 - PAULA', 0),
(18, 1624.02, '2017-01-02', 3, 1, 1, 'RESTANTE DO VALOR TROCADO COM SANDRA', 0),
(23, 542, '2017-01-03', 4, 1, 1, '', 0),
(35, 1090, '2017-01-11', 4, 1, 1, '', 0),
(64, 12000, '2017-01-30', 1, 1, 1, 'EMPRÉSTIMO DE SANDRA', 0),
(65, 323, '2017-01-30', 4, 1, 1, '', 0),
(72, 266.95, '2017-01-01', 2, 2, 2, '', 0),
(73, 54.62, '2017-01-04', 2, 2, 2, '', 0),
(74, 377, '2017-01-04', 2, 2, 2, '', 0),
(75, 136.9, '2017-01-04', 2, 2, 2, '', 0),
(76, 197.6, '2017-01-09', 2, 2, 2, '', 0),
(77, 650, '2017-01-10', 2, 2, 2, '', 0),
(78, 128, '2017-01-11', 2, 2, 2, '', 0),
(79, 171.95, '2017-01-12', 2, 2, 2, '', 0),
(80, 273.6, '2017-01-13', 2, 2, 2, '', 0),
(81, 157.7, '2017-01-14', 2, 2, 2, '', 0),
(82, 83, '2017-01-15', 2, 2, 2, '', 0),
(83, 80, '2017-01-15', 2, 2, 2, '', 0),
(84, 279, '2017-01-16', 2, 2, 2, '', 0),
(85, 451.85, '2017-01-17', 2, 2, 2, '', 0),
(86, 323.5, '2017-01-18', 2, 2, 2, '', 0),
(87, 783, '2017-01-18', 2, 2, 2, '', 0),
(88, 224.7, '2017-01-20', 2, 2, 2, '', 0),
(89, 249.85, '2017-01-21', 2, 2, 2, '', 0),
(90, 2000, '2017-01-21', 2, 2, 2, '', 0),
(91, 300, '2017-01-21', 2, 2, 2, '', 0),
(92, 281.2, '2017-01-21', 2, 2, 2, '', 0),
(93, 236.55, '2017-01-23', 2, 2, 2, '', 0),
(94, 339.15, '2017-01-24', 2, 2, 2, '', 0),
(95, 219.45, '2017-01-25', 2, 2, 2, '', 0),
(96, 415.15, '2017-01-27', 2, 2, 2, '', 0),
(97, 154.85, '2017-01-27', 2, 2, 2, '', 0),
(98, 277.4, '2017-01-30', 2, 2, 2, '', 0),
(99, 101.65, '2017-01-17', 4, 2, 2, 'SIRLI FUNCIONARIA - DAV 5266', 0),
(100, 25.18, '2017-01-27', 4, 2, 2, 'DAV 5298 - SIRLI FUNCIONARIA', 0),
(101, 600, '2017-02-01', 3, 2, 2, '', 0),
(102, 6587.86, '2017-02-03', 3, 2, 2, '', 0),
(103, 6847.36, '2017-02-05', 3, 2, 2, '', 0),
(104, 10531.8, '2017-02-09', 3, 2, 2, '', 0),
(105, 9793.34, '2017-02-11', 3, 2, 2, '', 0),
(106, 1630.74, '2017-02-05', 4, 2, 2, '', 0),
(107, 56.15, '2017-02-08', 4, 2, 2, '', 0),
(108, 4845.3, '2017-02-11', 4, 2, 2, '', 0),
(109, 192.85, '2017-02-23', 4, 2, 2, '', 0),
(110, 19.1, '2017-02-24', 4, 2, 2, '', 0),
(111, 3, '2017-02-01', 4, 1, 2, '', 0),
(112, 16.6, '2017-02-02', 4, 1, 2, '', 0),
(113, 51.65, '2017-02-02', 4, 1, 2, '', 0),
(114, 207.2, '2017-02-02', 1, 1, 1, 'DOC 364', 0),
(115, 138.22, '2017-02-02', 1, 1, 1, 'DOC 367', 0),
(116, 1.45, '2017-02-06', 1, 1, 1, 'DOC 385', 0),
(117, 150, '2017-02-06', 1, 1, 1, 'DOC 379', 0),
(118, 11.16, '2017-02-08', 4, 1, 2, 'DOC 328', 0),
(119, 150, '2017-02-08', 1, 1, 1, 'DOC 5430', 0),
(120, 688.84, '2017-02-13', 4, 1, 2, 'DOC P237', 0),
(121, 858, '2017-02-13', 1, 1, 1, 'DOC 370', 0),
(122, 126, '2017-02-14', 1, 1, 1, 'DOC 5509', 0),
(123, 33.93, '2017-02-18', 4, 1, 2, 'DOC 5107/01', 0),
(124, 26.07, '2017-02-18', 4, 1, 2, 'DOC 5107/02', 0),
(125, 81.65, '2017-02-01', 2, 1, 1, '', 0),
(126, 33.53, '2017-02-03', 2, 1, 1, '', 0),
(127, 231.12, '2017-02-07', 2, 1, 1, '', 0),
(128, 111.18, '2017-02-09', 2, 1, 1, '', 0),
(129, 145.67, '2017-02-13', 2, 1, 1, '', 0),
(130, 117.61, '2017-02-13', 2, 1, 1, '', 0),
(131, 243, '2017-02-16', 2, 1, 1, '', 0),
(132, 680.4, '2017-02-17', 2, 1, 1, '', 0),
(133, 18.47, '2017-02-20', 2, 1, 1, '', 0),
(134, 296.46, '2017-02-23', 2, 1, 1, '', 0),
(135, 300, '2017-02-03', 4, 1, 1, 'DOC 346', 0),
(136, 540, '2017-02-06', 4, 1, 1, 'DOC 319', 0),
(137, 372, '2017-02-07', 1, 1, 1, 'DOC 374', 0),
(138, 797, '2017-02-07', 1, 1, 1, 'DOC 375', 0),
(139, 479.7, '2017-02-09', 4, 1, 1, 'DOC 375', 0),
(140, 10996.3, '2017-02-10', 2, 1, 1, 'ANTECIPAÇÃO', 0),
(141, 112.3, '2017-02-20', 3, 1, 2, 'CH 850231 - EDILA', 0),
(142, 227, '2017-02-20', 3, 1, 2, 'CH 000264-B - GILES', 0),
(143, 5800, '2017-02-22', 1, 1, 1, 'DOC 394', 0),
(144, 502.9, '2017-02-20', 1, 1, 2, 'CARTÃO DE CRÉDITO', 0),
(145, 26.25, '2017-02-22', 1, 1, 2, 'CARTÃO DE CRÉDITO', 0),
(146, 141.66, '2017-02-24', 1, 1, 2, 'CARTÃO DE CRÉDITO', 0),
(147, 810.84, '2017-02-03', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(148, 540, '2017-02-03', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(149, 185.25, '2017-02-04', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(150, 109.79, '2017-02-06', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(151, 79.9, '2017-02-06', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(152, 316.35, '2017-02-06', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(153, 163, '2017-02-07', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(154, 267.9, '2017-02-07', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(156, 118.75, '2017-02-07', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(157, 146.3, '2017-02-08', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(158, 315, '2017-02-09', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(159, 358, '2017-02-09', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(160, 1188.85, '2017-02-09', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(161, 393.3, '2017-02-11', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(162, 200.45, '2017-02-11', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(163, 171, '2017-02-11', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(164, 70.3, '2017-02-11', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(165, 139.65, '2017-02-11', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(166, 111.15, '2017-02-14', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(167, 60, '2017-02-15', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(168, 101.08, '2017-02-16', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(169, 198.15, '2017-02-17', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(170, 201, '2017-02-17', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(171, 200, '2017-02-17', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(172, 231.8, '2017-02-20', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(173, 0.5, '2017-02-23', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(174, 298.3, '2017-02-23', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(175, 140, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(176, 571, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(177, 144.35, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(178, 259, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(179, 138, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(180, 191.85, '2017-02-24', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(181, 92, '2017-02-27', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(182, 211, '2017-02-27', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(183, 188, '2017-02-28', 2, 2, 2, 'CARTÃO DE CRÉDITO', 0),
(189, 357.93, '2017-01-02', 2, 1, 2, '', 0),
(190, 96.04, '2017-01-03', 2, 1, 2, '', 0),
(191, 277.38, '2017-01-06', 2, 1, 2, '', 0),
(192, 157.62, '2017-01-20', 2, 1, 2, '', 0),
(193, 145.37, '2017-01-23', 2, 1, 2, '', 0),
(194, 85.24, '2017-01-26', 2, 1, 2, '', 0),
(195, 364.06, '2017-01-30', 2, 1, 2, '', 0),
(196, 86.1, '2017-01-31', 2, 1, 2, '', 0),
(197, 13376.4, '2017-01-06', 2, 1, 2, 'ANTECIPAÇÃO DE CARTÃO', 0),
(198, 2900, '2017-02-06', 1, 1, 1, 'EMPRÉSTIMO DE SANDRA', 0),
(199, 617, '2017-02-06', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(200, 521, '2017-02-02', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(201, 10, '2017-02-02', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(202, 358.15, '2017-02-07', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(205, 135.85, '2017-02-09', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(206, 150, '2017-02-24', 2, 2, 2, 'CARTÃO PASSADO NA BRUNA', 0),
(217, 911.69, '2017-03-17', 3, 2, 2, 'CHEQUES DE JAILMA', 4),
(218, 324, '2017-03-27', 3, 2, 2, 'CHEQUES DE NUBIA SSA', 4),
(219, 1312.26, '2017-03-27', 3, 2, 2, 'CHEQUES DE JENIFER', 4),
(220, 4395.27, '2017-03-27', 3, 2, 2, 'CHEQUES DE ANA CLAUDIA SSA', 4),
(221, 2082.88, '2017-03-27', 3, 2, 2, 'CHEQUES DE BINHA CONDOR', 4),
(222, 1505.2, '2017-03-27', 3, 2, 2, 'CHEQUES DE BINHA BACH JOIAS', 4),
(223, 766.23, '2017-03-27', 4, 1, 2, 'PROMISSORIAS DE ANA MARIA SSA', 4),
(224, 28.02, '2017-03-01', 4, 2, 2, 'DOC 5614 - SIRLI', 4),
(225, 105.5, '2017-03-03', 4, 2, 2, 'DOC 5620 - VIVIANE', 4),
(226, 228.7, '2017-03-04', 4, 2, 2, 'DOC 5628 - MILENA', 4),
(227, 667.4, '2017-03-10', 4, 2, 2, 'DOC 5643 - PEDRO IRMAO DE SANDRA', 4),
(228, 583.3, '2017-03-15', 4, 2, 2, 'PEDRO', 4),
(229, 133, '2017-03-21', 4, 2, 2, 'DOC 5689 - JAMILE', 4),
(230, 256.51, '2017-03-22', 4, 2, 2, 'EDILA', 4),
(231, 148.5, '2017-03-23', 4, 2, 2, 'JOSETE', 4),
(232, 84, '2017-03-01', 2, 2, 1, '', 4),
(233, 437, '2017-03-03', 2, 2, 2, '', 4),
(234, 74.1, '2017-03-03', 2, 2, 2, '', 4),
(235, 322, '2017-03-03', 2, 2, 2, '', 4),
(236, 125, '2017-03-03', 2, 2, 2, '', 4),
(237, 170, '2017-03-03', 2, 2, 2, '', 4),
(238, 171, '2017-03-04', 2, 2, 2, '', 4),
(239, 102, '2017-03-05', 2, 2, 2, '', 4),
(240, 424, '2017-03-05', 2, 2, 1, '', 4),
(241, 364, '2017-03-06', 2, 2, 2, '', 4),
(242, 165, '2017-03-07', 2, 2, 2, '', 4),
(243, 114, '2017-03-09', 2, 2, 2, '', 4),
(244, 237, '2017-03-09', 2, 2, 2, '', 4),
(245, 83.6, '2017-03-09', 2, 2, 2, '', 4),
(246, 5, '2017-03-09', 2, 2, 2, '', 4),
(247, 235, '2017-03-11', 2, 2, 2, '', 4),
(248, 377, '2017-03-13', 2, 2, 2, '', 4),
(250, 241.3, '2017-03-14', 2, 2, 2, '', 4),
(251, 354, '2017-03-14', 2, 2, 2, '', 4),
(252, 94, '2017-03-15', 2, 2, 2, '', 4),
(253, 114, '2017-03-15', 2, 2, 2, '', 4),
(254, 75, '2017-03-17', 2, 2, 2, '', 4),
(255, 600, '2017-03-17', 2, 2, 2, '', 4),
(256, 218, '2017-03-17', 2, 2, 2, '', 4),
(257, 183, '2017-03-19', 2, 2, 2, '', 4),
(258, 149, '2017-03-19', 2, 2, 2, '', 4),
(259, 240, '2017-03-20', 2, 2, 2, '', 4),
(260, 170, '2017-03-20', 2, 2, 1, '', 4),
(261, 90.25, '2017-03-21', 2, 2, 2, '', 4),
(262, 169, '2017-03-21', 2, 2, 1, '', 4),
(263, 76.95, '2017-03-21', 2, 2, 2, '', 4),
(264, 153, '2017-03-21', 2, 2, 1, '', 4),
(265, 79.8, '2017-03-22', 2, 2, 2, '', 4),
(267, 1900, '2017-03-23', 2, 2, 2, '', 4),
(268, 362.11, '2017-03-23', 2, 2, 2, '', 4),
(269, 200, '2017-03-24', 2, 2, 1, '', 4),
(270, 336, '2017-03-24', 2, 2, 2, '', 4),
(271, 545, '2017-03-25', 2, 2, 2, '', 4),
(272, 420, '2017-03-25', 2, 2, 2, '', 4),
(273, 508.5, '2017-03-25', 2, 2, 2, '', 4),
(274, 108.9, '2017-03-25', 2, 2, 2, '', 4),
(275, 508.25, '2017-03-25', 2, 2, 1, '', 4),
(276, 232.75, '2017-03-27', 2, 2, 2, '', 4),
(277, 237.5, '2017-03-30', 2, 2, 2, '', 4),
(278, 214.8, '2017-03-31', 2, 2, 2, '', 4),
(279, 266, '2017-03-06', 2, 2, 2, 'CARTAO PASSADO NA BRUNA', 4),
(280, 90, '2017-03-06', 2, 2, 2, 'CARTAO PASSADO NA BRUNA', 4),
(281, 171, '2017-03-23', 2, 2, 2, '', 4),
(282, 304, '2017-03-28', 2, 2, 2, '', 4),
(283, 230.5, '2017-03-23', 2, 2, 2, 'CARTAO PASSADO NA BRUNA - JESSICA', 4),
(284, 374.08, '2017-03-01', 2, 1, 2, '', 4),
(285, 284.69, '2017-03-03', 2, 1, 2, '', 4),
(286, 89.42, '2017-03-14', 2, 1, 2, '', 4),
(287, 30.85, '2017-03-15', 2, 1, 2, '', 4),
(288, 142.12, '2017-03-23', 2, 1, 2, '', 4),
(289, 373, '2017-03-27', 2, 1, 2, '', 4),
(290, 182.12, '2017-03-28', 2, 1, 2, '', 4),
(291, 19.61, '2017-03-29', 2, 1, 2, '', 4),
(292, 40.12, '2017-03-30', 2, 1, 2, '', 4),
(293, 300, '2017-03-01', 3, 1, 2, 'CH 850001 - JAILMA SOUZA', 4),
(294, 5000, '2017-03-01', 1, 1, 1, '', 4),
(295, 738.7, '2017-03-06', 3, 1, 2, 'CH 000217 - CARMEM', 4),
(296, 237.78, '2017-03-06', 2, 1, 2, 'CH 000017 - JENIFER', 4),
(297, 1381.58, '2017-03-06', 3, 1, 2, 'CH 000129 - GILES', 4),
(298, 300, '2017-03-06', 4, 1, 2, 'PROMISSÓRIA 347 - CONÇA', 4),
(299, 2000, '2017-03-06', 1, 1, 1, 'EMPRÉSTIMO DE SANDRA', 4),
(300, 1180, '2017-03-08', 1, 1, 1, 'DOC 399 - NAILANE', 4),
(301, 2123.94, '2017-03-10', 3, 1, 2, 'CH 000043 - ANA CLAUDIA', 4),
(302, 542, '2017-03-17', 4, 1, 2, 'DOC 320 - CONÇA', 4),
(303, 1155, '2017-03-20', 1, 1, 1, 'DOC 403 - NAILANE', 4),
(304, 3265, '2017-03-24', 3, 1, 2, 'CH 000849 - ANA BARBARA', 4),
(305, 13118, '2017-03-29', 2, 1, 2, 'ANTECIPAÇÃO DE CARTAO', 4),
(306, 1345, '2017-03-04', 1, 1, 1, 'DOC 397', 4),
(307, 100, '2017-03-04', 1, 1, 1, 'DOC 398 - MILENA', 4),
(308, 25.18, '2017-03-06', 4, 1, 2, 'DOC 5298/01 - SIRLI', 4),
(309, 50, '2017-03-06', 4, 1, 2, 'DOC 5266/02 - SIRLI', 4),
(310, 26.6, '2017-03-06', 4, 1, 2, 'DOC 5253/02 - MILENA', 4),
(311, 13.78, '2017-03-06', 4, 1, 2, 'DOC 5316/01 - MILENA', 4),
(312, 25.74, '2017-03-10', 4, 1, 2, 'DOC 387 - EDILA', 4),
(313, 1174.26, '2017-03-10', 4, 1, 2, 'DOC P328 - EDILA', 4),
(314, 8, '2017-03-15', 4, 1, 2, 'DOC 5188 - LUANA', 4),
(315, 1000, '2017-03-20', 1, 1, 1, 'DOC 402 - JAILMA', 4),
(316, 900, '2017-03-25', 1, 1, 1, 'DOC 408 - NAILANE', 4),
(317, 1375, '2017-03-25', 1, 1, 1, 'DOC 404 - ANA CLAUDIA SALAO', 4),
(318, 50, '2017-03-27', 1, 1, 1, 'DOC 422 - ANA MARIA SSA', 4),
(319, 701, '2017-03-27', 1, 1, 1, 'DOC 424 - JENIFER', 4),
(320, 708, '2017-03-27', 1, 1, 1, 'DOC 420 - MANUELA CARRERO', 4),
(321, 355.25, '2017-03-30', 1, 1, 1, 'DOC 426 - GILES', 4),
(322, 200, '2017-03-31', 4, 1, 2, 'DOC 4202/01 - JESSICA', 4),
(323, 53, '2017-03-31', 4, 1, 2, 'DOC 5620/01 - VIVIANE', 4),
(324, 28.02, '2017-03-31', 4, 1, 2, 'DOC 5614/01  - SIRLI', 4),
(325, 15.2, '2017-03-31', 4, 1, 2, 'DOC 5598/01 - SIRLI', 4),
(326, 26.6, '2017-03-31', 4, 1, 2, 'DOC 5253/03 - MILENA', 4),
(327, 59.65, '2017-03-31', 4, 1, 2, 'DOC 5597/01 - MILENA', 4),
(328, 76.7, '2017-03-31', 4, 1, 2, 'DOC P5628/01 - MILENA', 4),
(329, 54.16, '2017-03-29', 4, 1, 2, 'DOC P427 - JESSICA - ABATEU COM SALDO DA COMISSÃO 08/02/2017 A 29/03/2017', 4),
(330, 316.33, '2017-04-03', 2, 1, 2, '', 4),
(331, 119.97, '2017-04-24', 2, 1, 2, '', 4),
(332, 238.1, '2017-04-26', 2, 1, 2, '', 4),
(333, 75, '2017-04-27', 2, 1, 2, '', 4),
(334, 182.12, '2017-04-28', 2, 1, 2, '', 4),
(335, 6943.23, '2017-04-06', 1, 1, 1, 'TROCA DE CHEQUE COM CLEUSA', 4),
(336, 300, '2017-04-12', 4, 1, 2, 'DOC 348 - CONÇA AMARGOSA', 4),
(337, 1690, '2017-04-25', 3, 1, 2, 'CHEQUE 000850 - BINHA AMARGOSA (PAGAMENTO PARCIAL)', 4),
(338, 950, '2017-04-27', 3, 1, 2, 'CHEQUE 000850 - BINHA AMARGOSA (PAGAMENTO PARCIAL)', 4),
(339, 7409.03, '2017-04-27', 2, 1, 2, 'ANTECIPAÇÃO DE CARTÃO ', 4),
(340, 1328.89, '2017-04-27', 2, 1, 2, 'ANTECIPAÇÃO DE CARTAO', 4),
(341, 189, '2017-04-06', 1, 1, 1, 'DOC 434 - JERUSA', 4),
(342, 533.9, '2017-04-10', 1, 1, 1, 'DOC 435 - BRUNA NERY', 4),
(343, 216.13, '2017-04-26', 1, 1, 1, 'DOC 446 - CELESTE ', 4),
(344, 2, '2017-04-07', 1, 1, 1, 'DAV 5944 - JAMILE', 4),
(345, 2, '2017-04-12', 1, 1, 1, 'DAV 5975 - JAMILE', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `condor_receita_origem`
--

CREATE TABLE `condor_receita_origem` (
  `id` int(11) NOT NULL,
  `nome_origem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `condor_receita_origem`
--

INSERT INTO `condor_receita_origem` (`id`, `nome_origem`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão'),
(3, 'Cheque'),
(4, 'Promissória');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cristina_alunos`
--

CREATE TABLE `cristina_alunos` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cristina_alunos`
--

INSERT INTO `cristina_alunos` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rodrigo', 'r@r.com', '123', 1),
(2, 'usuário', 'usuario', '123', 2),
(3, 'Rui', 'rui', '250393', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cristina_despesa`
--

CREATE TABLE `cristina_despesa` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `id_nivel` int(22) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cristina_despesa_niveis`
--

CREATE TABLE `cristina_despesa_niveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cristina_despesa_niveis`
--

INSERT INTO `cristina_despesa_niveis` (`id`, `nome`, `pai`, `ordem`) VALUES
(1, 'Compras', 0, 1),
(2, 'Comercial', 0, 2),
(4, 'Impostos/ taxas', 0, 4),
(5, 'Retiradas', 0, 5),
(6, 'Despesas Operacionais', 0, 6),
(7, 'Despesas', 2, 1),
(18, 'Banco', 4, 1),
(19, 'Encargos Terceiros', 4, 2),
(20, 'Normal', 4, 3),
(21, 'Imposto Municipal e Estadual', 4, 4),
(22, 'Manutenções de contas', 18, 1),
(23, 'Multas/juros (boletos)', 18, 2),
(24, 'Cartão', 18, 3),
(25, 'Custódia (cheques)', 18, 4),
(26, 'Empréstimo 1', 18, 5),
(27, 'Antecipação de cartão', 18, 7),
(28, 'Juros / capital de terceiros', 19, 1),
(29, 'DARF (Trimestral)', 20, 1),
(30, 'DAE', 20, 2),
(31, 'DARF', 20, 3),
(32, 'DAS', 20, 4),
(33, 'Alvarás e licenças', 21, 1),
(34, 'ISS', 21, 2),
(35, 'IPTU', 21, 3),
(36, 'IPVA, emplacamento e taxas de veículos', 21, 4),
(37, 'Pró-labore', 5, 1),
(38, 'Pessoal', 6, 1),
(39, 'Administração', 6, 2),
(40, 'Fixos', 6, 3),
(41, 'Variáveis', 6, 4),
(42, 'Marketing', 6, 5),
(43, 'Folha Pagamento', 38, 1),
(44, 'INSS', 38, 2),
(45, 'Bonificações extras', 38, 3),
(46, 'Horas Extras', 38, 4),
(47, 'Rescisões trabalhistas', 38, 5),
(48, 'Férias (1/3)', 38, 6),
(49, 'Fardamento', 38, 7),
(50, 'Exames admissionais e demissionais', 38, 8),
(51, 'Exames periódicos (PPRA e PCMSO)', 38, 9),
(52, 'Cursos / Capacitações', 38, 10),
(53, 'Brindes para funcionários', 38, 11),
(54, 'Bonificação para funcionários', 38, 12),
(55, 'Confraternizações e reuniões', 38, 13),
(56, 'Telefonia fixa', 39, 1),
(57, 'Telefonia móvel', 39, 2),
(58, 'Internet', 39, 3),
(59, 'Correios', 39, 4),
(60, 'Cartórios', 39, 5),
(61, 'Aluguéis', 39, 6),
(62, 'Energia', 39, 7),
(63, 'Água', 39, 8),
(64, 'Materiais expediente/informática', 39, 9),
(65, 'Embalagens', 39, 10),
(66, 'Higiene/limpeza', 39, 11),
(67, 'Consertos e manutenção (imóveis)', 39, 12),
(68, 'Consumíveis internos ( água, lanches)', 39, 13),
(69, 'Manutenção (veículos)', 39, 14),
(70, 'Consumíveis internos ( água, lanches)', 39, 15),
(72, 'Doações', 39, 17),
(73, 'Contabilidade', 40, 1),
(74, 'Sistema (mensalidade)', 40, 2),
(75, 'Agência de Publicidade', 40, 3),
(76, 'Assistência Informática', 40, 4),
(77, 'Segurança Eletrônica', 40, 5),
(78, 'Consultoria', 40, 6),
(79, 'Conserto diversos (Ar Condicionado)', 41, 1),
(80, 'Despesa c/ advogado', 41, 2),
(81, 'Conserto de equipamentos', 41, 3),
(82, 'Patrocínios', 42, 1),
(83, 'Eventos', 42, 2),
(84, 'Marketing e Publicidade', 42, 3),
(85, 'Investimentos', 0, 3),
(86, 'Fornecedor', 1, 1),
(100, 'Aquisição', 85, 1),
(105, '13º Salário', 38, 5),
(106, 'Empréstimo 2', 18, 6),
(107, 'Assinatura Jornal', 39, 4),
(108, 'PROFARMA', 86, 1),
(109, 'PANFARMA', 86, 2),
(110, 'SANTA CRUZ', 86, 3),
(116, 'FGTS', 38, 2),
(117, 'Cristina', 37, 1),
(118, 'Aquisição de imóveis', 100, 1),
(119, 'Reforma de imóveis', 100, 2),
(120, 'Aquisição de veículos', 100, 3),
(121, 'Aquisição mobiliário, equipamentos e ferramentas', 100, 4),
(122, 'Comissões de Vendedores', 7, 1),
(123, 'Comissão de Supervisores', 7, 2),
(124, 'Premiações', 7, 3),
(129, 'Brindes (Clientes)', 42, 4),
(130, 'NAZARIA', 86, 4),
(131, 'BAIANA', 86, 6),
(132, 'GOFARMA', 86, 5),
(133, 'ACRIPEL', 86, 7),
(134, 'Outros', 86, 8),
(135, 'Fretes (entrega)', 7, 4),
(136, 'Chapas (carregadores)', 7, 5),
(137, 'Manutenção (frota)', 7, 6),
(138, 'Consumíveis (frota)', 7, 7),
(139, 'Manoel', 37, 2),
(140, 'Seguro de Veículos', 39, 13),
(141, 'Seguro Predial (BB)', 39, 14),
(142, 'Associações, CDLs e Sindicatos', 39, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cristina_receita`
--

CREATE TABLE `cristina_receita` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `origem` int(22) NOT NULL,
  `vendido_recebido` int(22) NOT NULL,
  `debito_credito` int(22) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cristina_receita_origem`
--

CREATE TABLE `cristina_receita_origem` (
  `id` int(11) NOT NULL,
  `nome_origem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cristina_receita_origem`
--

INSERT INTO `cristina_receita_origem` (`id`, `nome_origem`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão'),
(3, 'Cheque'),
(4, 'Promissória');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_alunos`
--

CREATE TABLE `empresa_alunos` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `empresa_alunos`
--

INSERT INTO `empresa_alunos` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'rodrigo2', 'r@r.com', '123', 1),
(2, 'c', 'c@c.com', '123', 1),
(3, 'Rui', 'rui', '250393', 1),
(4, 'Rosilene Olinda', 'rosi', 'rosi2017', 1),
(5, 'Laina', 'kali', 'lima105036', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_despesa`
--

CREATE TABLE `empresa_despesa` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `id_nivel` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `empresa_despesa`
--

INSERT INTO `empresa_despesa` (`id`, `valor`, `data`, `id_nivel`, `descricao`, `id_user`) VALUES
(1, 60, '2017-03-06', 122, 'TRANSPORTE DE GUSTAVO FERNANDES', 0),
(2, 400, '2017-03-06', 67, 'GILMARIO - MANUTENÇÃO', 0),
(3, 300, '2017-03-20', 117, 'VIAGEM ', 0),
(4, 780, '2017-01-30', 123, '', 0),
(5, 377.62, '2017-01-30', 22, '', 0),
(6, 2369.95, '2017-01-30', 23, '', 0),
(7, 2574.3, '2017-01-30', 106, '', 0),
(8, 3360.99, '2017-01-30', 44, '', 0),
(9, 47.34, '2017-01-30', 31, '', 0),
(10, 683.42, '2017-01-30', 32, '', 0),
(11, 45246.6, '2017-01-30', 117, '', 0),
(12, 12437.2, '2017-01-30', 43, '', 0),
(13, 1870.4, '2017-01-30', 47, '', 0),
(14, 188.29, '2017-01-30', 130, '', 0),
(15, 125.46, '2017-01-30', 56, '', 0),
(16, 36.47, '2017-01-30', 57, '', 0),
(17, 59.9, '2017-01-30', 58, '', 0),
(18, 3486.19, '2017-01-30', 62, '', 0),
(19, 129.54, '2017-01-30', 63, '', 0),
(20, 285, '2017-01-30', 64, '', 0),
(21, 68, '2017-01-30', 65, '', 0),
(22, 177.59, '2017-01-30', 66, '', 0),
(23, 395, '2017-01-30', 67, '', 0),
(24, 558.74, '2017-01-30', 131, '', 0),
(25, 251.3, '2017-01-30', 68, '', 0),
(26, 61.34, '2017-01-30', 71, '', 0),
(27, 5950, '2017-01-30', 78, '', 0),
(28, 68, '2017-01-30', 84, '', 0),
(29, 57214.1, '2017-02-28', 108, '', 0),
(30, 930.5, '2017-02-28', 122, '', 0),
(31, 2280, '2017-02-28', 123, '', 0),
(32, 35, '2017-02-28', 121, '', 0),
(34, 2133.57, '2017-02-28', 22, '', 0),
(35, 2533.09, '2017-02-28', 106, '', 0),
(36, 2342.26, '2017-02-28', 44, '', 0),
(37, 690, '2017-02-28', 132, '', 0),
(38, 76.01, '2017-02-28', 31, '', 0),
(39, 22445.3, '2017-02-28', 117, '', 0),
(40, 62713.3, '2017-02-28', 43, '', 0),
(41, 4538.78, '2017-02-28', 116, '', 0),
(42, 6595.65, '2017-02-28', 47, '', 0),
(43, 586.66, '2017-02-28', 105, '', 0),
(44, 2000, '2017-02-28', 49, '', 0),
(45, 275.45, '2017-02-28', 55, '', 0),
(46, 342.13, '2017-02-28', 56, '', 0),
(47, 35.77, '2017-02-28', 57, '', 0),
(48, 1229.61, '2017-02-28', 62, '', 0),
(49, 245.78, '2017-02-28', 63, '', 0),
(50, 1662.09, '2017-02-28', 64, '', 0),
(51, 173.6, '2017-02-28', 65, '', 0),
(52, 340.57, '2017-02-28', 66, '', 0),
(53, 1776.73, '2017-03-01', 22, 'BB GIRO RÁPIDO', 0),
(54, 1762.05, '2017-02-28', 67, '', 0),
(55, 19.9, '2017-03-01', 22, 'DÉBITO DE BOLETOS', 0),
(56, 439.59, '2017-02-28', 68, '', 0),
(57, 28.92, '2017-03-01', 22, 'SEG.CRÉD.PROTEG.EMPRESA', 0),
(58, 97, '2017-02-28', 71, '', 0),
(59, 3635, '2017-02-28', 73, '', 0),
(60, 5490, '2017-02-28', 78, '', 0),
(61, 2632.5, '2017-02-28', 129, '', 0),
(62, 175, '2017-02-28', 83, '', 0),
(63, 5118, '2017-02-28', 84, '', 0),
(64, 3397.02, '2017-03-01', 44, 'GPS /2017', 0),
(65, 97.82, '2017-03-01', 22, 'COBRANÇA DE IOF.', 0),
(66, 12.4, '2017-03-01', 22, 'BB GIRO RAPIDO', 0),
(67, 8.1, '2017-03-02', 22, 'COBRANÇA BOLETO', 0),
(68, 27.3, '2017-03-03', 22, 'COBRANÇA BOLETO', 0),
(69, 34.5, '2017-03-06', 22, 'COBRANÇA DE BOLETO', 0),
(70, 182, '2017-03-06', 22, 'PACOTE DE SERVIÇOS BB', 0),
(71, 2045.25, '2017-03-07', 47, '2ª PARCELA DA RESCISÃO PROF. VANDERLEI', 0),
(72, 2680.77, '2017-03-07', 47, 'ÚLTIMA PARCELA DA RESCISÃO PROFA.GIRLENE DE JESUS', 0),
(73, 5490, '2017-03-07', 78, 'INTERATIVA ', 0),
(74, 980, '2017-03-07', 43, 'JUSCELIA PINTO_ LIMPEZA', 0),
(75, 1200, '2017-03-07', 43, 'LAINA KALIANE', 0),
(76, 45.96, '2017-02-28', 133, '', 0),
(77, 980, '2017-03-07', 43, 'MARIA SOUZA_ LIMPEZA', 0),
(79, 500, '2017-03-07', 43, 'NADJANE CONCEIÇÃO_ LIMPEZA', 0),
(80, 700, '2017-03-07', 43, 'SILVIA_SECRETARIA ACADEMICA', 0),
(81, 1467.21, '2017-03-07', 116, '', 0),
(82, 33.8, '2017-03-07', 22, 'COBRANÇA BOLETO', 0),
(83, 8.8, '2017-03-07', 22, 'TARIFA DE DOC/TED', 0),
(84, 1000, '2017-03-08', 43, 'PROF. ALDA M.FONSECA', 0),
(85, 640, '2017-03-08', 43, 'GEISA DA SILVA_ RECEPÇÃO', 0),
(86, 937, '2017-03-08', 43, 'PROF.ELIANE DE SOUZA/INGLÊS KIDS', 0),
(87, 1800, '2017-03-08', 43, 'PROF. JOSIMEIRE DOS SANTOS_ 4º ANO', 0),
(88, 1500, '2017-03-08', 43, 'PROF. MARLI DOS SANTOS_5º ANO', 0),
(89, 2305.66, '2017-03-08', 116, '', 0),
(90, 100.8, '2017-03-08', 22, 'COBRANÇA BOLETO', 0),
(91, 26.4, '2017-03-08', 22, 'TARIFA DOC/TED', 0),
(92, 1500, '2017-03-09', 43, 'PROF. BRUNA_MATEMÁTICA', 0),
(93, 27.2, '2017-03-09', 22, 'COBRANÇA DE BOLETOS', 0),
(94, 5123.5, '2017-03-10', 43, 'PROF. ENDRIGO_FISICA', 0),
(95, 4695, '2017-03-10', 43, 'PROF. JAQUELINE C.SI_REDAÇÃO', 0),
(96, 700, '2017-03-10', 43, 'JUNIOR_PORTARIA', 0),
(97, 900, '2017-03-10', 43, 'KENIA_ASSISTENTE PEDAG', 0),
(98, 1200, '2017-03-10', 43, 'ROSLIENE OLINDA-ASSIS ADM', 0),
(99, 4725, '2017-03-10', 43, 'PROF. ANDRÉ RICARDO_MATEMÁTICA', 0),
(100, 2106.51, '2017-03-10', 62, 'COELBA', 0),
(102, 27.4, '2017-03-10', 22, 'COBRANÇA DE BOLETOS', 0),
(103, 17.6, '2017-03-10', 22, 'TARIFA TED/DOC', 0),
(104, 1078.23, '2017-03-13', 121, 'COMPUTADORES', 0),
(105, 43.2, '2017-03-13', 22, 'COBRANÇA BOLETO', 0),
(106, 0.35, '2017-03-13', 22, 'TAXA BACEN DEVOLUÇÃO DOCUMENTO', 0),
(107, 11, '2017-03-13', 22, 'TARIFA DE DEVOLUÇÃO DE CHEQUE', 0),
(108, 45.96, '2017-03-13', 22, 'SEG. CRED.PROT.BB', 0),
(109, 397, '2017-03-01', 43, 'PROF.ROSENILDA', 0),
(110, 748, '2017-03-14', 43, 'PROF. CRISTIANE ARAGÃO', 0),
(111, 748, '2017-03-14', 43, 'PROF. ALOISIA', 0),
(112, 1740, '2017-03-14', 43, 'PROF.CARLA PEREIRA', 0),
(113, 885.75, '2017-03-14', 43, 'PROF. LORENA PASSOS', 0),
(114, 1515.39, '2017-03-14', 43, 'PROF. DAVID MARCELO', 0),
(115, 80.5, '2017-03-14', 22, 'COBRANÇA DE BOLETOS', 0),
(116, 26.4, '2017-03-14', 22, 'TARIFA DE TED/DOC', 0),
(117, 1773, '2017-03-15', 43, 'PROF. ROGÉRIO LEMOS', 0),
(118, 1129.87, '2017-03-15', 43, 'PROF.ADRIANO BATISTA', 0),
(119, 828, '2017-03-15', 43, 'PROF. AKLA REBOUÇAS', 0),
(120, 397, '2017-03-15', 43, 'PROF. GILVERSON FRANCA', 0),
(121, 651, '2017-03-15', 43, 'PROF. HEBERT', 0),
(122, 420, '2017-03-15', 43, 'PROF. PAULO SERGIO_GIL', 0),
(123, 840, '2017-03-15', 43, 'PROF.ROQUE SERGIO', 0),
(124, 1047.37, '2017-03-15', 43, 'PROF. RICARDO GUSTAVO_GUGA', 0),
(125, 949, '2017-03-15', 43, 'PROF. CARLOS ALBERTO_INGLÊS', 0),
(126, 4000, '2017-03-15', 117, 'RETIRADA', 0),
(127, 1266.67, '2017-03-15', 121, 'DATA SHOW_BRANCO', 0),
(128, 1631.25, '2017-03-15', 43, 'PROF. TIAGO DOREA', 0),
(129, 800, '2017-03-15', 43, 'PROF. FLAVIA LETICIA', 0),
(130, 26.6, '2017-03-15', 22, 'COBRANÇA DE BOLETOS', 0),
(131, 414.49, '2017-03-16', 117, 'SKY', 0),
(132, 1084.82, '2017-03-16', 134, 'RESCISÃO_ANA DAMIANA DOS SANTOS\n1/3', 0),
(133, 2443.77, '2017-03-07', 134, 'RESCISÃO_ RENILÚCIA BOAVENTURA', 0),
(134, 82.48, '2017-03-16', 134, 'DIFERENÇA DA RESCISÃO_RENILUCIA BOAVENTURA', 0),
(135, 154.61, '2017-03-16', 117, 'SKY', 0),
(136, 3962.12, '2017-03-16', 24, 'CARTÃO  DE CRÉDITO', 0),
(137, 18.4, '2017-03-16', 22, 'COBRANÇA BOLETOS', 0),
(138, 5.5, '2017-03-16', 22, 'TARIFA ADIC.CHEQUE COMPE.', 0),
(139, 8.8, '2017-03-16', 22, 'TARIFA DE TED/DOC', 0),
(140, 8.8, '2017-03-16', 22, 'TARIFA TED/DOC', 0),
(141, 54.3, '2017-03-17', 22, 'COBRANCA DE BOLETOS ', 0),
(142, 28.67, '2017-03-20', 31, 'PROF. ENDRIGO_FISICA', 0),
(143, 695.26, '2017-03-20', 32, 'DAS SIMPLES NACIONAL', 0),
(144, 6.9, '2017-03-20', 22, 'COBRANÇA DE BOLETOS', 0),
(145, 29.8, '2017-03-21', 22, 'COBRANÇA DE BOLETOS', 0),
(146, 5220.53, '2017-03-22', 117, 'PLANO DE SAÚDE', 0),
(147, 5000, '2017-03-22', 108, 'ACORDO SAS', 0),
(150, 4500, '2017-03-23', 108, 'ACORDO SAS', 0),
(151, 3.8, '2017-03-23', 22, 'COBRANÇA DE BOLETOS', 0),
(152, 8.8, '2017-03-23', 22, 'TARIFA DE TED/DOC', 0),
(153, 5.7, '2017-03-24', 22, 'COBRANÇA DE BOLETO', 0),
(154, 28.92, '2017-03-27', 22, 'SEG.CRED.PROTEG. EMPRESA', 0),
(155, 3500, '2017-03-01', 117, 'BB', 0),
(156, 20.8, '2017-03-28', 22, 'COBRANÇA DE BOLETOS', 0),
(157, 8.8, '2017-03-28', 22, 'TARIFA DE TED/DOC', 0),
(158, 408.02, '2017-03-30', 22, 'SEGURO BB', 0),
(159, 185.72, '2017-03-30', 22, 'SEGURO BB', 0),
(160, 7.3, '2017-03-29', 22, 'COBRANCA DE  BOLETO', 0),
(161, 15.7, '2017-03-30', 22, 'COBRANÇA DE BOLETOS', 0),
(162, 543.56, '2017-03-30', 22, 'Encargos capital de giro.', 0),
(163, 2067.53, '2017-03-30', 44, 'Parcelamento INSS 2014,2015', 0),
(164, 1358.24, '2017-03-30', 44, 'Parcelamento INSS 2016', 0),
(165, 25.6, '2017-03-22', 22, 'COBRANÇA DE BOLETOS', 0),
(166, 88, '2017-03-22', 22, 'TARIFA DE TED/DOC', 0),
(170, 400, '2017-03-06', 119, 'reforma da bica ', 5),
(171, 450, '2017-03-06', 67, 'CONSERTO DA BICA E MANUTENÇÃO DOS CABIAMENTO PARA INTERNET', 5),
(172, 60, '2017-03-06', 122, 'TRANSPORTE DE GUGA', 5),
(173, 90, '2017-03-07', 122, 'TRANSPORTE CARLOS ', 5),
(174, 67.08, '2017-03-07', 129, 'BRINDE DIA DA MULHER', 5),
(175, 250, '2017-03-07', 117, 'PESSOAL', 5),
(177, 82.8, '2017-03-07', 67, 'djuntor,interuptor e reator para manutenção', 5),
(178, 80, '2017-03-07', 67, 'manutençao de eletricista', 5),
(179, 2.9, '2017-03-07', 129, 'complemento dos brindes ', 5),
(180, 1500, '2017-03-07', 64, 'compra de material de escritório e organização escolar', 5),
(181, 59.9, '2017-03-07', 58, 'mma ', 5),
(182, 485.44, '2017-03-07', 117, 'GRIMALDO ALUGUEL\nMMA\nVIVO\nEMBASA', 5),
(183, 133.62, '2017-03-07', 56, 'OI 5231', 5),
(184, 75.13, '2017-03-07', 117, 'EMBASA', 5),
(185, 57.82, '2017-03-07', 63, 'EMBASA 830', 5),
(186, 59.24, '2017-03-07', 64, 'CABEAMENTO EXTERNO MMA ', 5),
(187, 91.56, '2017-03-07', 64, 'COELBA PRO', 5),
(188, 186.31, '2017-03-07', 62, 'COELBA 830', 5),
(189, 100, '2017-03-07', 68, 'ÁGUA MINERAL', 5),
(190, 38.67, '2017-03-07', 57, 'CLARO CONTROLE', 5),
(191, 14, '2017-03-09', 65, 'COPOS DESCARTAVEIS', 5),
(192, 100, '2017-03-09', 117, 'PESSOAL', 5),
(193, 50, '2017-03-09', 134, 'EXAME DEMISSIONAL RENILUCIA\n', 5),
(194, 1719, '2017-03-09', 117, 'PESSOAL', 5),
(195, 50, '2017-03-10', 117, 'PESSOAL', 5),
(196, 100, '2017-03-13', 43, 'VALE NERIANE', 5),
(197, 200, '2017-03-13', 117, 'CAIXA PESSOAL JANA', 5),
(198, 600, '2017-03-13', 67, 'MANUTENÇÃO DA SALA DO 3º ANO', 5),
(199, 12.3, '2017-03-13', 64, 'ENVELOPES ', 5),
(200, 500, '2017-03-14', 43, 'VALE NERIANE', 5),
(201, 60, '2017-03-14', 122, 'TRANSPORTE CARLOS ', 5),
(202, 100, '2017-03-14', 84, 'BANNER COM LOGOMARCA PARA SHOW', 5),
(203, 170, '2017-03-14', 117, 'CONSERTO PESSOAL', 5),
(204, 900, '2017-03-16', 43, 'MATCHALL', 5),
(205, 5, '2017-03-16', 47, 'MOTO TAXI P/ RESCISAO', 5),
(206, 150, '2017-03-17', 117, 'VALE ', 5),
(207, 32.7, '2017-03-17', 129, 'BRINDE DIA DA AGUA', 5),
(208, 33.5, '2017-03-17', 66, 'RODOS, PRATOS E COPOS DESCARTAVEIS', 5),
(209, 72.46, '2017-03-17', 64, 'PISTOLAS DE COLA QUENTE', 5),
(210, 150, '2017-03-17', 122, 'TRANSPORTE DE CARLOS E GUGA 5 DIAS', 5),
(211, 82.95, '2017-03-17', 123, 'CHANTLLY PARA TORTA NA CARA', 5),
(212, 291.26, '2017-03-17', 62, 'COELBA 830', 5),
(213, 34.04, '2017-03-17', 62, 'COELBA CASA FUNDO ', 5),
(214, 140.96, '2017-03-17', 117, 'COELBA PESSOAL', 5),
(215, 59.9, '2017-03-17', 58, 'MMA', 5),
(216, 43.74, '2017-03-17', 63, 'EMBASA\n', 5),
(217, 150.02, '2017-03-17', 56, 'TELEFONIA FIXA 3647', 5),
(218, 250, '2017-03-20', 67, 'MANUTENÇÃO DAS PORTAS DE VIDRO', 5),
(219, 146.9, '2017-03-20', 66, 'MATERIAL DE LIMPEZA E RODO', 5),
(220, 225, '2017-03-22', 122, 'TRANSPORTE FABIANO CERBATTO', 5),
(221, 1.4, '2017-03-20', 64, 'BATERIAS P MICROFONE', 5),
(222, 300, '2017-03-22', 43, 'VALE ROSE', 5),
(223, 150, '2017-03-22', 43, 'VALE JUNIOR', 5),
(224, 300, '2017-03-22', 43, 'VALE LAINA KALIANE ', 5),
(225, 200, '2017-03-22', 117, 'CAIXA PESSOAL JANA', 5),
(226, 5.4, '2017-03-22', 66, 'ALCOOL', 5),
(227, 1985.73, '2017-03-01', 23, 'LIS/JUROS', 5),
(228, 120.1, '2017-03-01', 23, 'RECEBIVEIS / JUROS\n\n', 5),
(229, 195.77, '2017-03-01', 23, 'IOF', 5),
(230, 118, '2017-03-02', 23, 'LIS\n', 5),
(231, 152.8, '2017-03-02', 22, 'TAR CONTA CERTA', 5),
(232, 200, '2017-03-06', 117, 'SAQUE PESSOAL', 5),
(233, 1600, '2017-03-06', 117, 'PESSOAL CLAUDIA', 5),
(234, 21556.7, '2017-03-06', 108, 'SAS', 5),
(235, 5000, '2017-03-10', 117, 'PESSOAL  CLAUDIA', 5),
(236, 996.47, '2017-03-10', 117, 'PESSOAL CARRO', 5),
(237, 10457.3, '2017-03-17', 134, 'POSITIVO', 5),
(238, 855.49, '2017-03-20', 117, 'PESSOAL CARRO', 5),
(239, 300, '2017-03-23', 117, 'claudia', 5),
(240, 1000, '2017-03-24', 117, 'PESSOAL', 5),
(241, 2531.56, '2017-03-27', 23, 'LIS', 5),
(242, 743.04, '2017-03-27', 23, 'JUROS', 5),
(244, 118, '2017-03-28', 23, 'LIS', 5),
(245, 11556.7, '2017-03-21', 108, 'SAS', 5),
(246, 5000, '2017-03-22', 108, 'SAS', 5),
(247, 5500, '2017-03-23', 108, 'SAS', 5),
(248, 1598.99, '2017-03-22', 117, 'PESSOAL PAN', 5),
(249, 15.65, '2017-04-03', 23, 'LIS/JUROS', 3),
(250, 237.44, '2017-04-03', 22, 'IOF', 3),
(251, 1600, '2017-04-04', 117, 'ALUGUEL SALVADOR', 3),
(252, 152.8, '2017-04-04', 22, 'TARIFA 03/17', 3),
(253, 300, '2017-04-10', 117, 'SAQUE', 3),
(254, 200, '2017-04-11', 117, 'SAQUE', 3),
(255, 150, '2017-04-17', 117, 'SAQUE', 3),
(256, 1000, '2017-04-17', 117, 'CLAUDIA', 3),
(257, 160, '2017-04-18', 117, 'SAQUE', 3),
(258, 50, '2017-04-19', 117, 'SAQUE', 3),
(259, 12, '2017-04-03', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(260, 26.7, '2017-04-04', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(261, 74, '2017-04-05', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(262, 186.37, '2017-04-06', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(263, 35.1, '2017-04-07', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(264, 158.76, '2017-04-10', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(265, 33, '2017-04-11', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(266, 107.3, '2017-04-12', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(267, 8.6, '2017-04-13', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(268, 11.6, '2017-04-17', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(269, 10.5, '2017-04-18', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(270, 16.2, '2017-04-19', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(271, 17.2, '2017-04-20', 22, 'DÉBITO SERVIÇO DE COBRANÇA', 3),
(272, 99.48, '2017-04-03', 22, 'IOF BB', 3),
(273, 11.16, '2017-04-04', 22, 'BB GIRO RAPIDO', 3),
(275, 19.6, '2017-04-12', 22, 'TED/COBRANÇA DE BOLETOS', 3),
(277, 22.98, '2017-04-13', 22, 'SEG CRED PROTEG EMPRESA', 3),
(278, 2215, '2017-04-19', 26, '', 3),
(279, 2215, '2017-04-19', 26, '', 3),
(280, 3380.97, '2017-04-17', 26, '', 3),
(281, 2450.94, '2017-04-10', 26, '', 3),
(282, 2410.84, '2017-03-10', 26, '', 3),
(283, 44, '2017-04-20', 22, 'TARIFA DOC/TED', 3),
(284, 1100, '2017-04-06', 43, 'SILVIA R MARQUES - SECRETARIA ACADEMICA', 3),
(285, 980, '2017-04-06', 43, 'JUSCELIA PINTO - LIMPEZA', 3),
(286, 980, '2017-04-06', 43, 'MARIA SOUZA - LIMPEZA', 3),
(287, 960.09, '2017-04-06', 43, 'LAINA KALIANE', 3),
(288, 937, '2017-04-06', 43, 'PROF.ELIANE DE SOUZA/INGLÊS KIDS', 3),
(289, 1000, '2017-04-05', 43, 'PROF. FABINESIA FERNANDES DOS SANTOS', 3),
(290, 1000, '2017-04-05', 43, 'PROF. ROSIANE CARVALHO', 3),
(291, 1500, '2017-04-05', 43, 'PROF. MARLI DOS SANTOS_5º ANO', 3),
(292, 1500, '2017-04-05', 43, 'PROF. JOSIMEIRE DOS SANTOS_ 4º ANO', 3),
(293, 1000, '2017-04-06', 43, 'PROF. ALDA M FONSECA', 3),
(294, 4700, '2017-04-12', 43, 'PROF. ENDRIGO SAMPAIO - FISICA', 3),
(295, 4695, '2017-04-12', 43, 'PROF. JAQUELINE C SI - REDAÇÃO', 3),
(296, 2389.66, '2017-04-12', 43, 'PROF. ANDRE RICARDO - MATEMATICA', 3),
(297, 17.6, '2017-04-05', 22, 'TARIFA DOC/TED', 3),
(298, 182, '2017-04-05', 22, 'TARIFA PACOTE DE SERVIÇOS', 3),
(299, 44, '2017-04-06', 22, 'TARIFA DOC/TED', 3),
(300, 17.6, '2017-04-11', 22, 'TARIFA DOC/TED', 3),
(301, 17.6, '2017-04-12', 22, 'TARIFA DOC/TED', 3),
(303, 220, '2017-04-03', 122, 'TRANSPORTE CARLA PEREIRA', 5),
(304, 120, '2017-04-03', 122, 'TRANSPORTE GUSTAVO FERNANDEZ\n\n', 5),
(305, 100, '2017-04-03', 82, 'ANIVERSARIO DE VALERIA \n', 5),
(306, 250, '2017-04-04', 83, 'PALESTRANTE FABIO\nENCONTRO EGP', 5),
(307, 150, '2017-04-04', 122, 'TRANSPORTE DE CARLOS \n', 5),
(308, 125, '2017-04-04', 65, 'EMBALAGENS\n', 5),
(309, 200, '2017-04-05', 117, 'SR GRIMALDO - ALUGUEL ', 5),
(310, 200, '2017-04-05', 117, 'CAIXA PESSOAL JOSIMAR', 5),
(311, 6.5, '2017-04-05', 117, 'LD GAS E AGUA CASA', 5),
(312, 19.5, '2017-04-05', 134, 'LD GAS E AGUA\n', 5),
(317, 54, '2017-04-07', 66, 'material de limpeza', 1),
(318, 40, '2017-04-07', 61, 'ALUGUEL DE MESAS PARA  PLANTÃO PEDAGÓGICO', 5),
(319, 143.5, '2017-04-05', 135, 'LD GAS E AGUA', 5),
(320, 620, '2017-04-10', 67, 'PAGAMENTO DE SR. GILMARIO', 5),
(321, 879.7, '2017-04-10', 117, 'IMPOSTO PESSOAL', 5),
(322, 95.4, '2017-04-10', 64, 'PLASTICOS PARA PASTAS E MATERIAL P/ ECRITORIO\n', 5),
(323, 550, '2017-05-17', 135, 'IMPOSTO DAS ', 5),
(325, 440, '2017-05-17', 117, 'RETIRADA', 5),
(326, 387.9, '2017-04-18', 64, 'TINTAS PARA RECARGA DE PILOTOS.', 5),
(327, 60, '2017-04-18', 122, 'TRANSPORTE DE GUGA\n', 5),
(328, 90, '2017-04-18', 122, 'TRANSPORTE DE CARLOS', 5),
(329, 300, '2017-04-18', 117, 'RETIRADA DE JOSIMAR', 5),
(330, 270, '2017-04-18', 43, 'ADRIAN BALBO - ESPANHOL', 5),
(331, 200, '2017-04-18', 117, 'RETIRADA JOSIMAR', 5),
(332, 4.75, '2017-04-18', 64, 'TALÕES DE RECIBO E NOTA PROMISSÓRIA\n', 5),
(333, 20, '2017-04-18', 43, 'CARLA - ALMOÇO', 5),
(334, 701.6, '2017-04-24', 32, 'DAS', 5),
(335, 59.9, '2017-05-24', 58, 'MMA', 5),
(336, 44.9, '2017-04-24', 117, 'MMA PESSOAL', 5),
(337, 90, '2017-04-25', 122, 'TRANSPORTE DE CARLOS\n', 5),
(338, 60, '2017-04-25', 122, 'TRANSPORTE DE GUGA', 5),
(339, 18, '2017-04-25', 64, '', 5),
(340, 34.98, '2017-04-24', 83, 'ARRANJO E COPOS PARA REUNIAO\n', 5),
(341, 118, '2017-04-27', 22, 'LIS PJ REN', 5),
(342, 1202.98, '2017-04-26', 23, 'JUROS', 5),
(343, 1000, '2017-04-24', 117, 'CLAUDIA', 5),
(344, 17620.1, '2017-04-04', 108, 'SAS', 5),
(345, 74, '2017-04-05', 23, 'COBRANÇA', 5),
(347, 2045.25, '2017-04-06', 47, 'VANDERLEY 3º/4 PARCELA', 5),
(348, 8.6, '2017-04-28', 23, '', 5),
(349, 2088.39, '2017-04-28', 44, 'INSS', 5),
(350, 1372.09, '2017-04-28', 44, 'INSS', 5),
(351, 8.6, '2017-03-28', 23, 'BOLETOS', 5),
(352, 308.41, '2017-04-28', 28, 'JUROS', 5),
(353, 1, '2017-04-07', 23, 'cobrança', 5),
(354, 33.6, '2017-04-07', 23, 'COBRANÇA', 5),
(355, 0.5, '2017-04-07', 23, 'COBRANÇA', 5),
(356, 5950, '2017-04-07', 78, 'INTERATIVA', 5),
(357, 2542.21, '2017-04-07', 44, 'INSS', 5),
(358, 2263.84, '2017-04-07', 116, 'FGTS', 5),
(359, 717.9, '2017-04-07', 43, 'BRADESCO SAÚDE CARLOS', 5),
(360, 1124.23, '2017-04-07', 43, 'BRADESCO SAÚDE NERIANE ', 5),
(361, 3353.35, '2017-04-07', 117, 'JOSIMAR BRADESCO SAÚDE', 5),
(362, 940, '2017-04-11', 43, 'GEISA ', 5),
(363, 500, '2017-04-11', 43, 'NADJANE', 5),
(364, 2740, '2017-04-12', 43, 'JOSE RICARDO ', 5),
(365, 4725, '2017-04-12', 43, 'ANDRE RICARDO', 5),
(366, 194, '2017-04-12', 71, 'CDL', 5),
(367, 37.89, '2017-04-12', 57, 'CLARO', 5),
(368, 4850, '2017-04-17', 84, 'MEGA ', 5),
(369, 855.49, '2017-04-18', 117, 'CARRO PESSOAL', 5),
(370, 1500, '2017-04-19', 43, 'BRUNA LAGO', 5),
(371, 721.49, '2017-04-19', 134, 'RESCISÃO lAIS', 5),
(372, 1200, '2017-04-19', 134, 'ROSILENE C OLINDA', 5),
(373, 1631.25, '2017-04-19', 43, 'TIAGO DOREA', 5),
(374, 1200, '2017-04-19', 43, 'KENIA BERTINO', 5),
(375, 1000, '2017-04-19', 134, 'RESCISÃO DE ANA DAMIANA', 5),
(376, 700, '2017-04-19', 43, 'FABINESIA', 5),
(377, 1740, '2017-04-19', 43, 'CARLA PEREIRA', 5),
(378, 100, '2017-04-20', 117, 'SAQUE JOSIMAR', 5),
(379, 1129.87, '2017-04-20', 43, 'ADRIANO BATISTA P LAGO', 5),
(380, 397.5, '2017-04-20', 43, 'GILVERSON', 5),
(381, 850, '2017-04-20', 43, 'RAIMUNDO JUNIOR', 5),
(382, 949, '2017-04-20', 43, 'CARLOS ALBERTO', 5),
(383, 634.76, '2017-04-20', 43, 'FLAVIA LETICIA / ESPAGUETE', 5),
(384, 2015.39, '2017-04-20', 43, 'DAVID MARCELO ', 5),
(385, 28.67, '2017-04-20', 31, 'DARF', 5),
(387, 770, '2017-04-24', 43, 'MATCHALL', 5),
(388, 1165.5, '2017-04-24', 43, 'AKLA', 5),
(389, 1773, '2017-04-24', 43, 'ROGERIO LEMOS', 5),
(390, 700, '2017-04-24', 67, 'GILMARIO CONE', 5),
(391, 651, '2017-04-24', 43, 'HEBERTH', 5),
(392, 420, '2017-04-24', 43, 'PAULO SERGIO\nGIL DE CAPRIO', 5),
(393, 1047.37, '2017-04-24', 43, 'GUSTAVO FERNANDEZ', 5),
(394, 885.75, '2017-04-24', 43, 'LORENA ', 5),
(395, 11.4, '2017-04-24', 23, 'DEBITO SERVIÇO DE COBRANCA', 5),
(396, 2, '2017-04-24', 23, 'DEBITO SERVIÇO DE COBRANÇA', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_despesa_niveis`
--

CREATE TABLE `empresa_despesa_niveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `empresa_despesa_niveis`
--

INSERT INTO `empresa_despesa_niveis` (`id`, `nome`, `pai`, `ordem`) VALUES
(1, 'Compras', 0, 1),
(2, 'Pedagógico', 0, 2),
(4, 'Impostos/ taxas', 0, 4),
(5, 'Retiradas', 0, 5),
(6, 'Despesas Operacionais', 0, 6),
(7, 'Despesas', 2, 1),
(18, 'Banco', 4, 1),
(19, 'Encargos Terceiros', 4, 2),
(20, 'Normal', 4, 3),
(21, 'Imposto Municipal e Estadual', 4, 4),
(22, 'Manutenções de contas', 18, 1),
(23, 'Multas/juros (boletos)', 18, 2),
(24, 'Cartão', 18, 3),
(25, 'Custódia (cheques)', 18, 4),
(26, 'BB GIRO FLEX', 18, 5),
(27, 'Antecipação de cartão', 18, 7),
(28, 'Juros / capital de terceiros', 19, 1),
(29, 'DARF (Trimestral)', 20, 1),
(30, 'DAE', 20, 2),
(31, 'DARF', 20, 3),
(32, 'DAS', 20, 4),
(33, 'Alvarás e licenças', 21, 1),
(34, 'ISS', 21, 2),
(35, 'IPTU', 21, 3),
(36, 'IPVA, emplacamento e taxas de veículos', 21, 4),
(37, 'Pró-labore', 5, 1),
(38, 'Pessoal', 6, 1),
(39, 'Administração', 6, 2),
(40, 'Fixos', 6, 3),
(41, 'Variáveis', 6, 4),
(42, 'Marketing', 6, 5),
(43, 'Folha Pagamento', 38, 1),
(44, 'INSS', 38, 2),
(45, 'Bonificações extras', 38, 3),
(46, 'Horas Extras', 38, 4),
(47, 'Rescisões trabalhistas', 38, 5),
(48, 'Férias (1/3)', 38, 6),
(49, 'Fardamento', 38, 7),
(50, 'Exames admissionais e demissionais', 38, 8),
(51, 'Exames periódicos (PPRA e PCMSO)', 38, 9),
(52, 'Cursos / Capacitações', 38, 10),
(53, 'Brindes para funcionários', 38, 11),
(54, 'Bonificação para funcionários', 38, 12),
(55, 'Confraternizações e reuniões', 38, 13),
(56, 'Telefonia fixa', 39, 1),
(57, 'Telefonia móvel', 39, 2),
(58, 'Internet', 39, 3),
(59, 'Correios', 39, 4),
(60, 'Cartórios', 39, 5),
(61, 'Aluguéis', 39, 6),
(62, 'Energia', 39, 7),
(63, 'Água', 39, 8),
(64, 'Materiais expediente/informática', 39, 9),
(65, 'Embalagens', 39, 10),
(66, 'Higiene/limpeza', 39, 11),
(67, 'Consertos e manutenção (imóveis)', 39, 12),
(68, 'Consumíveis internos ( água, lanches)', 39, 13),
(69, 'Manutenção (veículos)', 39, 14),
(70, 'Consumíveis (veículos)', 39, 15),
(71, 'Associações, CDLs e Sindicatos', 39, 16),
(72, 'Doações', 39, 17),
(73, 'Contabilidade', 40, 1),
(74, 'Sistema (mensalidade)', 40, 2),
(75, 'Agência de Publicidade', 40, 3),
(76, 'Assistência Informática', 40, 4),
(77, 'Segurança Eletrônica', 40, 5),
(78, 'Consultoria', 40, 6),
(79, 'Conserto diversos (Ar Condicionado)', 41, 1),
(80, 'Despesa c/ advogado', 41, 2),
(81, 'Conserto de equipamentos', 41, 3),
(82, 'Patrocínios', 42, 1),
(83, 'Eventos', 42, 2),
(84, 'Marketing e Publicidade', 42, 3),
(85, 'Investimentos', 0, 3),
(86, 'Fornecedor', 1, 1),
(100, 'Aquisição', 85, 1),
(105, '13º Salário', 38, 5),
(106, 'Empréstimo 2', 18, 6),
(107, 'Assinatura Jornal', 39, 4),
(108, 'Ari de Sá', 86, 1),
(116, 'FGTS', 38, 2),
(117, 'Josimar', 37, 1),
(118, 'Aquisição de imóveis', 100, 1),
(119, 'Reforma de imóveis', 100, 2),
(120, 'Aquisição de veículos', 100, 3),
(121, 'Aquisição mobiliário, equipamentos e ferramentas', 100, 4),
(122, 'Com professores', 7, 1),
(123, 'Com alunos', 7, 2),
(129, 'Brindes (Clientes)', 42, 4),
(130, 'Alimentação / Lanches', 38, 14),
(131, 'Seguro', 39, 18),
(132, 'Simples Nacional', 20, 5),
(133, 'Seguro predial (bb)', 39, 19),
(134, 'Lavoisier Kids', 37, 2),
(135, 'Lavoisier Baby', 37, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_receita`
--

CREATE TABLE `empresa_receita` (
  `id` int(22) NOT NULL,
  `valor` float NOT NULL,
  `data` date NOT NULL,
  `origem` int(22) NOT NULL,
  `vendido_recebido` int(22) NOT NULL,
  `debito_credito` int(22) NOT NULL,
  `descricao` text NOT NULL,
  `id_user` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `empresa_receita`
--

INSERT INTO `empresa_receita` (`id`, `valor`, `data`, `origem`, `vendido_recebido`, `debito_credito`, `descricao`, `id_user`) VALUES
(1, 3000, '2017-03-06', 2, 2, 2, 'LEVI DE JESUS SANTANA \n', 0),
(2, 240, '2017-03-06', 1, 1, 1, 'RAFAEL S SANTOS \n\n', 0),
(3, 1320, '2017-03-20', 2, 2, 2, 'BRENO MAGALHAES CARVALHO \nMODULOS EM 6X', 0),
(9, 440, '2017-03-21', 2, 2, 2, 'GABRIEL BARRETO 9º\nMARCO  256,00 DOS LIVROS\nABRIL 360,00 MENSALIDADE + 256,00 + 256,00 LIVROS ABRIL\nMAIO 360,00 MENSALIDADE DE MAIO + 256,00 LIVROS MAIO\n\nGUSTAVO BARRETO INF IV\nMARCO 230,00 + 82,00 (3/6)\nABRIL 230,00 + 82,00 (4/6)\nMAIO 230,00 + 82,00 (5/6)', 0),
(10, 60, '2017-03-21', 2, 2, 2, 'GUILHERME MARTINS \n6º 1 FARDA', 0),
(11, 900, '2017-01-06', 4, 1, 1, 'CAMILA PAULA 2º ANO \nMENSAL.FEV/MAR/ABRIL/17\nRESP.FINANC. 2017 RONI PAULA DA SILVA\nVALOR MENSAL R$ 300,00', 0),
(12, 445.2, '2017-01-06', 4, 1, 1, 'MARIA LUISA NUNES TRINDADE- 7º ANO\nMENSAL+MÓDULOS \nR$ 300,00+145,20 (1/10)\nRESP. 2017.2 ANTONIA NILDA N. TRINDADE', 0),
(13, 600, '2017-01-06', 4, 1, 1, 'WILLIAM CAVALCANTE 7º ANO \nMENSAL.FEV/MAR/2017\nMENSAL R$ 300,00\nRESP. VANESSA CAVALCANTE DE CASTRO\n', 0),
(15, 184056, '2017-01-30', 1, 1, 1, 'Lançamento único.', 0),
(16, 271850, '2017-02-27', 1, 1, 1, 'Lançamento único.', 0),
(20, 2047.89, '2017-03-01', 2, 1, 2, '', 0),
(33, 10468.8, '2017-03-06', 1, 1, 1, 'MENSALIDADES\n\nDEPOSITADO NO DIA 07/03 : 9.957,80\n', 0),
(34, 450, '2017-03-06', 3, 2, 2, 'ANA CAROLINA C DIAS\n', 0),
(35, 9893, '2017-03-06', 2, 2, 2, 'VENDAS NO CARTAO', 0),
(36, 4560, '2017-03-07', 1, 1, 1, 'mensalidades', 0),
(37, 3680, '2017-03-07', 3, 2, 2, 'MENSALIDADES', 0),
(38, 1042, '2017-03-07', 3, 2, 2, 'MENSALIDADES EM CARTAO', 0),
(39, 1035, '2017-03-08', 1, 1, 1, 'MENSALIDADES', 0),
(40, 858, '2017-03-08', 3, 2, 2, 'MENSALIDADES', 0),
(41, 3545, '2017-03-08', 3, 2, 2, 'MENSALIDADES', 0),
(42, 2378, '2017-03-09', 1, 1, 1, 'MENSALIDADES', 0),
(43, 1320, '2017-03-09', 2, 2, 2, 'MENSALIDADES ', 0),
(44, 1060, '2017-03-10', 1, 1, 1, 'MENSALIDADES\n\nDEPOSITADO 13/03: 1.010,00', 0),
(45, 1118.46, '2017-03-10', 2, 2, 2, 'MENSALIDADES\nDAVI DIAS SANTANA', 0),
(46, 2282, '2017-03-13', 1, 1, 1, 'MENSALIDADES', 0),
(47, 1093.8, '2017-03-13', 2, 2, 2, 'MENSALIDADES \nENZO CALDAS\nLARA', 0),
(48, 2564, '2017-03-14', 1, 1, 1, 'MENSALIDADES\n\nDEPOSITADO 15/03 : 1734,00', 0),
(49, 2480, '2017-03-14', 2, 2, 2, 'MENSALIDADES', 0),
(50, 1556.23, '2017-03-15', 2, 2, 2, 'MENSALIDADES', 0),
(51, 930, '2017-03-16', 1, 1, 1, 'MENSALIDADES', 0),
(52, 1224, '2017-03-17', 1, 1, 1, 'MENSALIDADES', 0),
(53, 1980, '2017-03-17', 2, 2, 2, 'MENSALIDADES', 0),
(54, 2610, '2017-03-20', 1, 1, 1, 'MENSALIDADES', 0),
(55, 1420, '2017-03-20', 2, 2, 2, 'MENSALIDADES', 0),
(56, 2000, '2017-03-21', 3, 2, 2, 'MENSALIDADES', 0),
(57, 500, '2017-03-21', 2, 2, 2, 'MENSALIDADES', 0),
(59, 240, '2017-03-22', 2, 2, 2, 'MENSALIDADES', 0),
(60, 530, '2017-03-22', 1, 1, 1, 'MENSALIDADES', 0),
(61, 2700, '2017-03-23', 1, 1, 1, 'MENSALIDADES', 0),
(62, 988, '2017-03-23', 3, 2, 2, 'MENSALIDADES', 0),
(63, 143, '2017-03-24', 2, 2, 2, 'MENSALIDADES', 0),
(64, 900, '2017-03-28', 2, 2, 2, 'MENSALIDADES', 0),
(67, 152.19, '2017-03-01', 2, 1, 2, 'cielo mc', 5),
(68, 581.4, '2017-03-01', 2, 1, 1, 'MCDBTO', 5),
(69, 784.85, '2017-03-01', 2, 1, 2, 'MC', 5),
(70, 265.6, '2017-03-02', 2, 1, 2, 'MC', 5),
(71, 735.14, '2017-03-03', 2, 1, 2, 'MC', 5),
(72, 381.13, '2017-03-03', 2, 1, 2, 'MC', 5),
(73, 863.12, '2017-03-06', 2, 1, 2, 'MC', 5),
(74, 478.43, '2017-03-06', 2, 1, 2, 'MC', 5),
(76, 494.19, '2017-03-07', 2, 1, 2, 'MCDBTO', 5),
(77, 245.05, '2017-03-07', 2, 1, 2, 'MCDBTO', 5),
(78, 651.51, '2017-03-08', 2, 1, 2, 'MC', 5),
(79, 283.64, '2017-03-09', 2, 1, 2, 'MC', 5),
(80, 219.19, '2017-03-10', 2, 1, 2, 'MC', 5),
(81, 271.04, '2017-03-10', 2, 1, 2, 'MC', 5),
(83, 844, '2017-03-13', 1, 1, 1, 'DEPOSITO', 5),
(84, 320.17, '2017-03-13', 2, 1, 2, 'MC', 5),
(85, 1096.31, '2017-03-13', 2, 1, 2, 'MCDBTO', 5),
(86, 858.02, '2017-03-13', 2, 1, 2, 'MC', 5),
(87, 1374, '2017-03-14', 1, 1, 1, 'deposito', 5),
(88, 145.35, '2017-03-14', 2, 1, 2, 'mcdbto', 5),
(90, 190.6, '2017-03-15', 2, 1, 2, 'MC', 5),
(91, 484.5, '2017-03-15', 2, 1, 2, 'MCDBTO', 5),
(92, 1201.33, '2017-03-16', 2, 1, 2, 'MCDBTO', 5),
(93, 528.3, '2017-03-16', 2, 1, 2, 'MCDBTO', 5),
(94, 465.12, '2017-03-17', 2, 1, 2, 'MCDBTO', 5),
(95, 413.01, '2017-03-17', 2, 1, 2, 'MC', 5),
(96, 314.6, '2017-03-20', 2, 1, 2, 'MC', 5),
(97, 3000, '2017-03-21', 1, 1, 1, 'DEPOSITO EM DINHEIRO', 5),
(98, 6000, '2017-03-22', 1, 1, 1, 'DEPOSITO EM DINHEIRO', 5),
(99, 269.75, '2017-03-22', 2, 1, 2, 'REDE DN', 5),
(100, 2868, '2017-03-23', 2, 1, 2, 'DEPOSITO EM DINHEIRO', 5),
(101, 284.4, '2017-03-24', 2, 1, 2, 'MC', 5),
(102, 1073.82, '2017-03-27', 2, 1, 2, 'MC', 5),
(103, 307.26, '2017-03-27', 2, 1, 2, 'MC', 5),
(104, 152.16, '2017-03-28', 2, 1, 2, 'MC', 5),
(105, 31712.8, '2017-03-28', 2, 1, 2, 'ATECIPACAO DE CARTAO ', 5),
(106, 1361, '2017-03-01', 2, 1, 2, 'VC', 5),
(107, 330.2, '2017-03-01', 2, 1, 2, 'VC', 5),
(108, 2855.04, '2017-03-01', 4, 1, 2, 'BOLETOS', 5),
(109, 605.28, '2017-03-02', 2, 1, 2, 'CREDITO', 5),
(110, 1700.33, '2017-03-02', 4, 1, 2, 'BOLETOS', 5),
(111, 413.07, '2017-03-03', 2, 1, 2, 'CARTAO', 5),
(112, 4012, '2017-03-03', 4, 1, 2, 'BOLETOS', 5),
(113, 1043.05, '2017-03-06', 2, 1, 2, 'CARTAO', 5),
(114, 235.05, '2017-03-06', 2, 1, 2, 'CARTAO', 5),
(115, 3901.99, '2017-03-06', 2, 1, 2, 'CARTAO', 5),
(116, 3280, '2017-03-06', 2, 1, 2, 'CARTAO', 5),
(117, 211.46, '2017-03-07', 2, 1, 2, 'CARTAO', 5),
(118, 1521.33, '2017-03-07', 2, 1, 2, 'CARTAO', 5),
(119, 5710.46, '2017-03-07', 2, 1, 2, 'BOLETOS', 5),
(120, 1118.44, '2017-04-03', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(121, 904.15, '2017-04-04', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(122, 1058.86, '2017-04-05', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(123, 92.52, '2017-04-06', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(124, 694.94, '2017-04-07', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(125, 1018.22, '2017-04-10', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(126, 771.18, '2017-04-11', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(127, 413.39, '2017-04-13', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(128, 507.01, '2017-04-17', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(129, 269.75, '2017-04-17', 2, 1, 2, 'LIQ ANTECIP CARTAO MASTER', 3),
(130, 2700, '2017-04-05', 1, 1, 1, 'DEPOSITO', 3),
(131, 3000, '2017-04-07', 1, 1, 1, 'DEPOSITO', 3),
(132, 1474, '2017-04-10', 1, 1, 1, 'DEPOSITO', 3),
(133, 1074, '2017-04-10', 1, 1, 1, 'DEPOSITO', 3),
(134, 48.45, '2017-04-12', 2, 1, 1, '', 3),
(135, 1895.24, '2017-03-08', 2, 1, 2, 'CARTAO', 5),
(136, 12761.2, '2017-03-08', 4, 1, 2, 'BOLETOS\n', 5),
(138, 2323.42, '2017-03-09', 2, 1, 2, 'CARTAO', 5),
(139, 1510.68, '2017-03-10', 2, 1, 2, 'CARTAO', 5),
(140, 2127.28, '2017-03-10', 2, 1, 2, 'BOLETOS', 5),
(141, 3604.6, '2017-03-09', 4, 1, 2, 'BOLETOS', 5),
(142, 450, '2017-03-13', 1, 1, 1, 'TRANSFERENCIA ONLINE ', 5),
(143, 3019.59, '2017-03-13', 2, 1, 2, 'CARTAO', 5),
(144, 2749.36, '2017-03-13', 4, 1, 2, 'BOLETO', 5),
(145, 14262.9, '2017-03-14', 4, 1, 2, 'BOLETO', 5),
(146, 3914.54, '2017-03-15', 2, 1, 2, 'CARTAO', 5),
(147, 1374.56, '2017-03-15', 4, 1, 2, 'BOLETOS', 5),
(148, 514.85, '2017-03-16', 2, 1, 2, 'CARTAO', 5),
(149, 3099.9, '2017-03-16', 4, 1, 2, 'BOLETOS', 5),
(150, 141.04, '2017-03-17', 2, 1, 2, 'CARTAO', 5),
(151, 3639.08, '2017-03-17', 4, 1, 2, 'BOLETOS', 5),
(152, 2368.34, '2017-03-20', 2, 1, 2, 'CARTAO', 5),
(153, 300.76, '2017-03-20', 4, 1, 2, 'BOLETOS', 5),
(154, 396.79, '2017-03-21', 2, 1, 2, 'CARTAO', 5),
(155, 1295.33, '2017-03-21', 4, 1, 2, 'BOLETOS', 5),
(156, 1879.68, '2017-03-22', 2, 1, 2, 'CARTAO', 5),
(157, 4351.08, '2017-03-22', 4, 1, 2, 'BOLETOS', 5),
(158, 1126.76, '2017-03-23', 4, 1, 2, 'BOLETO', 5),
(159, 804.93, '2017-03-24', 2, 1, 2, '', 5),
(160, 1244.52, '2017-03-24', 4, 1, 2, 'BOLETOS', 5),
(161, 1265.22, '2017-03-27', 2, 1, 2, 'cartao', 5),
(162, 1164.03, '2017-03-28', 2, 1, 2, 'CARTAO', 5),
(163, 3992.92, '2017-03-28', 4, 1, 2, 'BOLETO', 5),
(164, 227.11, '2017-03-29', 2, 1, 2, 'CARTAO', 5),
(165, 1084.32, '2017-03-29', 4, 1, 2, 'BOLETOS', 5),
(166, 1246.2, '2017-03-30', 2, 1, 2, 'CARTAO', 5),
(167, 1096.08, '2017-03-30', 4, 1, 2, 'BOLETOS', 5),
(168, 737.77, '2017-03-31', 4, 1, 2, 'BOLETOS', 5),
(169, 350, '2017-04-03', 1, 1, 1, '7º IAN PEDRO SOUZA\n', 5),
(170, 350, '2017-04-03', 1, 1, 1, '6ºJOÃO PEDRO S DA SILVA\n', 5),
(171, 400, '2017-04-03', 2, 2, 2, '9º	DANIEL DE SOUZA JESUS \n', 5),
(172, 343.8, '2017-04-03', 2, 2, 2, '6º 	HENRY DO AMPARO \n', 5),
(173, 330, '2017-04-04', 1, 1, 1, '9º 	CAIO OLIVEIRA\n', 5),
(174, 250, '2017-04-04', 1, 1, 1, '4º	BRUNO BOAVENTURA\n', 5),
(175, 418, '2017-04-04', 1, 1, 1, '5º	GUILHERME S OLIVEIRA\n', 5),
(176, 480, '2017-04-04', 1, 1, 1, '2º	MARTHA CERQUEIRA SILVA\n', 5),
(177, 280, '2017-04-04', 1, 1, 1, '4º 	ARLEI PEREIRA MASCARENHAS \n', 5),
(178, 344.8, '2017-04-04', 1, 1, 1, '5º 	NINA AZEVEDO\n', 5),
(179, 250, '2017-04-04', 1, 1, 1, '4º 	MATHEUS PASSOS COSTA\n', 5),
(180, 552, '2017-04-05', 1, 1, 1, '5º 	YASMIN VITORIANO\n marco+abril\n', 5),
(181, 300, '2017-04-05', 1, 1, 1, '4º 	IAN SILVA\nabril', 5),
(182, 300, '2017-04-05', 1, 1, 1, '4º 	ERIC S SANTOS \n', 5),
(183, 330, '2017-04-05', 1, 1, 1, '4º 	GUSTAVO COSTA FIAIS \n', 5),
(184, 200, '2017-04-05', 1, 1, 1, '8º	MARIA CLARA VELAME \nLIVROS \n', 5),
(185, 260, '2017-04-05', 1, 1, 1, '4º 	RAFAEL S SANTOS \nMARÇO+FARDA', 5),
(186, 432, '2017-04-05', 1, 1, 1, '7º	SARA FIGUEIREDO FIUZA \n', 5),
(187, 610, '2017-04-06', 1, 1, 1, '1º	RIVALDO O CALDAS \nMensalidade de Março\nR$ 370,00 + Módulos\nR$ 240,00', 5),
(188, 474, '2017-04-06', 1, 1, 1, '6º 	ANA VITÓRIA RIBEIRO \nR$ 330,00\nREF.MARÇO/17\n+R$ 144,00\nMÓDULOS', 5),
(189, 250, '2017-04-06', 1, 1, 1, '4º	MARIA CECÍLIA MACHADO \n', 5),
(190, 250, '2017-04-06', 1, 1, 1, '4º 	MATHEUS PASSOS COSTA\n', 5),
(191, 200, '2017-04-06', 1, 1, 1, '7º	LARA ELLEN \n', 5),
(192, 300, '2017-04-06', 1, 1, 1, '5º	IVAN HENRIQUE A DOS SANTOS \nMARÇO', 5),
(193, 493, '2017-04-07', 2, 2, 2, '4º 	YERICK DE SOUZA VILAS\n350,00 MENSALIDADE / DÉBITO\n143,00 MÓDULO / CRÉDITO\n\n', 5),
(194, 280, '2017-04-07', 1, 1, 1, '4º 	AQUILES DE JESUS DE OLIVEIRA \n', 5),
(195, 446, '2017-04-07', 1, 1, 1, '4º 	CAIQUE PESTANA \n', 5),
(196, 468, '2017-04-07', 1, 1, 1, '9º	ALANA SIMÕES COSTA\n', 5),
(197, 320, '2017-04-07', 1, 1, 1, '8º	SAMUEL VITOR S BRITO\n', 5),
(198, 290, '2017-04-10', 1, 1, 1, '4º 	RUAN MARQUES \n', 5),
(199, 332, '2017-04-10', 1, 1, 1, '4º 	THEYLOR SANTOS OLIVEIRA\n', 5),
(200, 629, '2017-04-10', 2, 2, 2, '1º	BEATRIZ DE JESUS PAIVA\n', 5),
(201, 250, '2017-04-11', 1, 1, 1, '5º	GUSTAVO DE SOUZA FIGUEIREDO\nABRIL', 5),
(202, 400, '2017-04-11', 1, 1, 1, '5º	RAICA OLIVEIRA DE SOUZA\nTX.LIVRO.JAN.FEV.MAR.ABR\n', 5),
(203, 1273.52, '2017-04-11', 2, 2, 2, '5º	RAICA OLIVEIRA DE SOUZA\nTX.LIVRO.JAN.FEV.MAR.ABR\n', 5),
(204, 200, '2017-04-11', 2, 2, 2, '8º	FELIPE E LORENA SALES\n', 5),
(205, 240, '2017-04-11', 1, 1, 1, '5º	MARIA VITORIA R SANTOS\nMARCO', 5),
(206, 50, '2017-04-11', 2, 2, 2, '5º	MARIA VITORIA R SANTOS\nMARCO', 5),
(207, 435, '2017-04-11', 1, 1, 1, '5º	CAREN REBECA\nMARCO+MODULOS\n', 5),
(208, 7600, '2017-04-17', 3, 2, 2, '7º	GUILHERME E GUSTAVO OLIVEIRA\nMARCO A DEZEMDRO 2017', 5),
(209, 340, '2017-04-17', 1, 1, 1, '6º	MARCOS GUEDES\n', 5),
(210, 500, '2017-04-17', 1, 1, 1, '4º	NALA E MARALI\nABRIL', 5),
(211, 142, '2017-04-17', 1, 1, 1, 'JACKSON TELES \nLIVROS', 5),
(212, 460, '2017-04-17', 1, 1, 1, 'MARIANA ALMEIDA VELAME\nABRIL', 5),
(213, 3142, '2017-04-18', 1, 1, 1, '3º	GIULIA MORAES ALVES\nMAR+ABR+TAXA+LIVROS\n', 5),
(214, 1358, '2017-04-18', 1, 1, 1, '3º	LARISSA MORAES ALVES\nMAR+ABR+TAXA+LIVROS\n', 5),
(215, 619, '2017-04-18', 1, 1, 1, '2º	ESTER ALMEIDA CARVALHO\nABRIL', 5),
(216, 493, '2017-04-18', 2, 2, 2, '5º	KESIA MELAINE GARDELLA \n', 5),
(217, 620, '2017-04-18', 2, 2, 2, '8º	ESDRAS ADRIEL GARDELLA\n', 5),
(218, 802, '2017-04-18', 1, 1, 1, 'MARCOS VINICIUS BATISTA BARBOSA\nBOLETO BANCÁRIO - DADO BAIXA \n', 5),
(219, 150, '2017-04-19', 1, 1, 1, '1º	BIANCA DA C DE A SANTOS\n', 5),
(220, 330, '2017-04-19', 1, 1, 1, 'NILSON RUAN \nMARCO', 5),
(221, 295, '2017-04-20', 1, 1, 1, '4º	JORGE HENRIQUE VIEIRA DA SILVA\nABRIL + 2 PARCELA DO LIVRO\n', 5),
(222, 1900, '2017-04-20', 2, 2, 2, 'MURILO PINHEIRO PASSOS\nLIVROS ', 5),
(223, 300, '2017-04-24', 1, 1, 1, '8º	LAZYA ALMEIDA\nABRIL\n', 5),
(224, 360, '2017-04-24', 1, 1, 1, '1º	LARISSA ALMEIDA\nABRIL', 5),
(225, 250, '2017-04-24', 1, 1, 1, 'LUIS FELIPE ALMEIDA\nABRIL', 5),
(226, 300, '2017-04-24', 1, 1, 1, 'LAZYA + LARISSA ALMEIDA\nLIVROS', 5),
(227, 90, '2017-04-24', 1, 1, 1, 'LUIS FELIPE ALMEIDA\nLIVROS', 5),
(228, 280, '2017-04-25', 1, 1, 1, 'AMANDA VITORIA\nMARCO', 5),
(229, 1118.44, '2017-04-03', 2, 1, 1, 'ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(230, 904.15, '2017-04-04', 2, 1, 1, 'LIQ ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(231, 2700, '2017-04-05', 1, 1, 1, 'DEPOSITO EM ESPECIE ', 5),
(232, 1058.86, '2017-04-05', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(233, 92.52, '2017-04-06', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(234, 3000, '2017-04-07', 1, 1, 1, 'DEPOSITO EM DINHEIRO', 5),
(235, 694.94, '2017-04-07', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(236, 1474, '2017-04-10', 1, 1, 1, 'DEPOSITO EM DINHEIRO', 5),
(237, 1074, '2017-04-10', 1, 1, 1, 'DEPOSITO EM DINHEIRO', 5),
(238, 1018.22, '2017-04-10', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(239, 771.18, '2017-04-11', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(240, 48.45, '2017-04-12', 2, 1, 1, 'CIELO MCDBTO', 5),
(241, 413.39, '2017-04-13', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(242, 507.01, '2017-04-17', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(243, 269.75, '2017-04-24', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(244, 1956.4, '2017-04-27', 1, 1, 1, 'DEPOSITO EM ESPECIE', 5),
(245, 106.65, '2017-04-27', 2, 1, 1, 'LIQ. ANTECIPAÇÃO DE CARTÃO MASTER', 5),
(246, 214.5, '2017-04-03', 1, 1, 1, 'DOC ', 5),
(247, 5212.42, '2017-04-03', 2, 1, 1, 'VISA/HIPER/CIELO ', 5),
(248, 2021.52, '2017-04-03', 4, 1, 1, 'BOLETOS', 5),
(249, 2500, '2017-04-04', 1, 1, 1, 'DEPOSITO BANCÁRIO ', 5),
(250, 1818.25, '2017-04-04', 1, 1, 1, 'DEPOSITO ONLINE', 5),
(251, 3500, '2017-04-04', 1, 1, 1, 'TRANSFERENCIA ONLINE', 5),
(252, 3120.51, '2017-04-04', 1, 1, 1, 'PRODUTOS BRASILCAP', 5),
(253, 262.88, '2017-04-04', 2, 1, 2, 'VISA CREDITO', 5),
(254, 720.74, '2017-04-04', 2, 1, 1, 'CIELO DEBITO', 5),
(255, 365, '2017-04-05', 1, 1, 1, 'DEPOSITO', 5),
(256, 499.67, '2017-04-05', 2, 1, 2, 'VISA', 5),
(257, 538.93, '2017-04-05', 2, 1, 2, '', 5),
(258, 8431.2, '2017-04-05', 4, 1, 1, 'BOLETOS', 5),
(259, 1671.22, '2017-04-06', 2, 1, 2, '', 5),
(260, 7185.83, '2017-04-06', 4, 1, 1, '', 5),
(261, 1300, '2017-04-07', 1, 1, 1, 'TRANSFERENCIA ON LINE', 5),
(262, 461.14, '2017-04-07', 2, 1, 2, '', 5),
(263, 6742.67, '2017-04-07', 4, 1, 1, '', 5),
(264, 1320.04, '2017-04-28', 4, 1, 1, 'BOLETOS', 5),
(265, 442.13, '2017-04-28', 2, 1, 2, 'VISA', 5),
(266, 2350.98, '2017-04-10', 2, 1, 2, 'VISA\nHIPER\nCIELO', 5),
(267, 339.15, '2017-04-10', 2, 1, 1, 'CIELO', 5),
(268, 4692.51, '2017-04-10', 4, 1, 1, 'BOLETOS', 5),
(269, 750, '2017-04-11', 1, 1, 1, '', 5),
(270, 3937, '2017-04-11', 1, 1, 1, 'TRANSFERENCIA ONLINE', 5),
(271, 771.24, '2017-04-11', 2, 1, 2, 'VISA\nHIPERCARD', 5),
(272, 609.5, '2017-04-11', 2, 1, 1, 'CIELO', 5),
(273, 4384.48, '2017-04-11', 4, 1, 1, 'BOLETOS', 5),
(274, 1405, '2017-04-12', 1, 1, 1, 'DEPOSITO', 5),
(275, 1131.52, '2017-04-12', 2, 1, 2, 'HIPERCARD\nCIELO\nVISA', 5),
(276, 17638.8, '2017-04-12', 4, 1, 1, 'BOLETOS', 5),
(277, 762.36, '2017-04-12', 2, 1, 2, 'VISA\nHIPERCARD', 5),
(278, 96.9, '2017-04-12', 2, 1, 1, '', 5),
(279, 1432.76, '2017-04-12', 4, 1, 1, 'BOLETOS', 5),
(280, 2691.61, '2017-04-17', 2, 1, 2, 'HIPERCARD\nCIELO', 5),
(281, 1576.48, '2017-04-17', 2, 1, 2, 'BOLETOS', 5),
(282, 380, '2017-04-17', 1, 1, 1, 'DEPOSITO', 5),
(283, 1400, '2017-04-18', 1, 1, 1, 'DEPOSITO ONLINE', 5),
(284, 896.46, '2017-04-18', 2, 1, 2, 'VISE\nCIELO\n', 5),
(285, 3485.44, '2017-04-18', 2, 1, 2, 'BOLETOS ', 5),
(286, 7600, '2017-04-18', 3, 1, 2, '7º GUILHERME OLIVEIRA\n7º GUSTAVO OLIVEIRA\nANUIDADE ESCOLAR', 5),
(287, 4500, '2017-04-19', 1, 1, 1, 'DEPOSITO', 5),
(288, 494.01, '2017-04-19', 2, 1, 2, 'VISA\nHIPERCARD\nCIELO', 5),
(289, 3953.52, '2017-04-19', 4, 1, 1, 'BOLETOS\n', 5),
(290, 2117.73, '2017-04-24', 2, 1, 2, 'HIPERCARD\nCIELO', 5),
(291, 2562.72, '2017-04-24', 4, 1, 1, 'BOLETOS', 5),
(292, 721.9, '2017-04-25', 2, 1, 2, 'CIELO', 5),
(293, 5284.93, '2017-04-25', 4, 1, 1, 'BOLETOS', 5),
(294, 227.11, '2017-04-26', 2, 1, 2, 'CIELO', 5),
(295, 990, '2017-04-26', 4, 1, 1, 'BOLETOS', 5),
(296, 1000, '2017-04-27', 1, 1, 1, 'DEPOSITO', 5),
(297, 1515.34, '2017-04-27', 4, 1, 1, 'BOLETOS', 5),
(298, 0.03, '2017-04-27', 1, 1, 1, 'MOVIMENTO DO DIA', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_receita_origem`
--

CREATE TABLE `empresa_receita_origem` (
  `id` int(11) NOT NULL,
  `nome_origem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `empresa_receita_origem`
--

INSERT INTO `empresa_receita_origem` (`id`, `nome_origem`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão'),
(3, 'Cheque'),
(4, 'Boleto');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id_app`);

--
-- Índices de tabela `bno_alunos`
--
ALTER TABLE `bno_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bno_despesa`
--
ALTER TABLE `bno_despesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Índices de tabela `bno_despesa_niveis`
--
ALTER TABLE `bno_despesa_niveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bno_receita`
--
ALTER TABLE `bno_receita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `origem` (`origem`);

--
-- Índices de tabela `bno_receita_origem`
--
ALTER TABLE `bno_receita_origem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `bruna_alunos`
--
ALTER TABLE `bruna_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bruna_despesa`
--
ALTER TABLE `bruna_despesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Índices de tabela `bruna_despesa_niveis`
--
ALTER TABLE `bruna_despesa_niveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bruna_receita`
--
ALTER TABLE `bruna_receita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `origem` (`origem`);

--
-- Índices de tabela `bruna_receita_origem`
--
ALTER TABLE `bruna_receita_origem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `condor_alunos`
--
ALTER TABLE `condor_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `condor_despesa`
--
ALTER TABLE `condor_despesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Índices de tabela `condor_despesa_niveis`
--
ALTER TABLE `condor_despesa_niveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `condor_receita`
--
ALTER TABLE `condor_receita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `origem` (`origem`);

--
-- Índices de tabela `condor_receita_origem`
--
ALTER TABLE `condor_receita_origem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `cristina_alunos`
--
ALTER TABLE `cristina_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cristina_despesa`
--
ALTER TABLE `cristina_despesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Índices de tabela `cristina_despesa_niveis`
--
ALTER TABLE `cristina_despesa_niveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cristina_receita`
--
ALTER TABLE `cristina_receita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `origem` (`origem`);

--
-- Índices de tabela `cristina_receita_origem`
--
ALTER TABLE `cristina_receita_origem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `empresa_alunos`
--
ALTER TABLE `empresa_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa_despesa`
--
ALTER TABLE `empresa_despesa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa_despesa_niveis`
--
ALTER TABLE `empresa_despesa_niveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa_receita`
--
ALTER TABLE `empresa_receita`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa_receita_origem`
--
ALTER TABLE `empresa_receita_origem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `apps`
--
ALTER TABLE `apps`
  MODIFY `id_app` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `bno_alunos`
--
ALTER TABLE `bno_alunos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `bno_despesa`
--
ALTER TABLE `bno_despesa`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT de tabela `bno_despesa_niveis`
--
ALTER TABLE `bno_despesa_niveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT de tabela `bno_receita`
--
ALTER TABLE `bno_receita`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `bno_receita_origem`
--
ALTER TABLE `bno_receita_origem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `bruna_alunos`
--
ALTER TABLE `bruna_alunos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `bruna_despesa`
--
ALTER TABLE `bruna_despesa`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT de tabela `bruna_despesa_niveis`
--
ALTER TABLE `bruna_despesa_niveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT de tabela `bruna_receita`
--
ALTER TABLE `bruna_receita`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT de tabela `bruna_receita_origem`
--
ALTER TABLE `bruna_receita_origem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `condor_alunos`
--
ALTER TABLE `condor_alunos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `condor_despesa`
--
ALTER TABLE `condor_despesa`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT de tabela `condor_despesa_niveis`
--
ALTER TABLE `condor_despesa_niveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT de tabela `condor_receita`
--
ALTER TABLE `condor_receita`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT de tabela `condor_receita_origem`
--
ALTER TABLE `condor_receita_origem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `cristina_alunos`
--
ALTER TABLE `cristina_alunos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `cristina_despesa`
--
ALTER TABLE `cristina_despesa`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cristina_despesa_niveis`
--
ALTER TABLE `cristina_despesa_niveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT de tabela `cristina_receita`
--
ALTER TABLE `cristina_receita`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cristina_receita_origem`
--
ALTER TABLE `cristina_receita_origem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `empresa_alunos`
--
ALTER TABLE `empresa_alunos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `empresa_despesa`
--
ALTER TABLE `empresa_despesa`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT de tabela `empresa_despesa_niveis`
--
ALTER TABLE `empresa_despesa_niveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT de tabela `empresa_receita`
--
ALTER TABLE `empresa_receita`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT de tabela `empresa_receita_origem`
--
ALTER TABLE `empresa_receita_origem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `bno_despesa`
--
ALTER TABLE `bno_despesa`
  ADD CONSTRAINT `bno_k` FOREIGN KEY (`id_nivel`) REFERENCES `bno_despesa_niveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `bno_receita`
--
ALTER TABLE `bno_receita`
  ADD CONSTRAINT `bno_fk_origem` FOREIGN KEY (`origem`) REFERENCES `bno_receita_origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `bruna_despesa`
--
ALTER TABLE `bruna_despesa`
  ADD CONSTRAINT `bruna_k` FOREIGN KEY (`id_nivel`) REFERENCES `bruna_despesa_niveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `bruna_receita`
--
ALTER TABLE `bruna_receita`
  ADD CONSTRAINT `bruna_fk_origem` FOREIGN KEY (`origem`) REFERENCES `bruna_receita_origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `condor_despesa`
--
ALTER TABLE `condor_despesa`
  ADD CONSTRAINT `condor_k` FOREIGN KEY (`id_nivel`) REFERENCES `condor_despesa_niveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `condor_receita`
--
ALTER TABLE `condor_receita`
  ADD CONSTRAINT `condor_fk_origem` FOREIGN KEY (`origem`) REFERENCES `condor_receita_origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `cristina_despesa`
--
ALTER TABLE `cristina_despesa`
  ADD CONSTRAINT `cristina_k` FOREIGN KEY (`id_nivel`) REFERENCES `cristina_despesa_niveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `cristina_receita`
--
ALTER TABLE `cristina_receita`
  ADD CONSTRAINT `cristina_fk_origem` FOREIGN KEY (`origem`) REFERENCES `cristina_receita_origem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
