-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2018 às 04:19
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigae1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `enturmado`
--

CREATE TABLE `enturmado` (
  `matricula_estudante` char(8) NOT NULL,
  `cod_turma` char(5) NOT NULL,
  `ano_letivo_enturmado` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enturmado`
--

INSERT INTO `enturmado` (`matricula_estudante`, `cod_turma`, `ano_letivo_enturmado`) VALUES
('18000177', '2504B', '2018');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `INEP` int(8) NOT NULL,
  `nome_unidade` varchar(100) NOT NULL,
  `tipo_ensino` varchar(50) NOT NULL,
  `portaria_funciona` varchar(8) NOT NULL,
  `data_publica_dom` char(10) NOT NULL,
  `telefone_escola` char(12) DEFAULT NULL,
  `emal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`INEP`, `nome_unidade`, `tipo_ensino`, `portaria_funciona`, `data_publica_dom`, `telefone_escola`, `emal`) VALUES
(26126630, 'EM. NOVA VISÃO', 'FUNDAMENTAL ANOS FINAIS', '2947', '12/06/2976', '8133556012', 'escolanovavisao@educacao.jab.pe.gov.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudante`
--

CREATE TABLE `estudante` (
  `matricula_estudante` char(8) NOT NULL,
  `nome_estudante` varchar(10) NOT NULL,
  `sobrenome_estudante` varchar(150) NOT NULL,
  `dta_nasc_estudante` char(10) NOT NULL,
  `mae_estudante` varchar(100) NOT NULL,
  `pai_estudante` varchar(100) DEFAULT NULL,
  `responsavel_estudante` varchar(100) DEFAULT NULL,
  `cor_estudante` varchar(30) NOT NULL,
  `numero_rg` varchar(10) DEFAULT NULL,
  `orgao_rg` varchar(60) DEFAULT NULL,
  `dta_exped_rg` char(10) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `telefone_estudante` varchar(13) NOT NULL,
  `nome_cartorio` varchar(100) NOT NULL,
  `folha_certidao` varchar(5) DEFAULT NULL,
  `termo_certidao` varchar(5) NOT NULL,
  `cidade_certidao` varchar(50) NOT NULL,
  `estado_certidao` char(2) NOT NULL,
  `dta_certidao` char(10) NOT NULL,
  `logradouro_estudante` varchar(80) NOT NULL,
  `numero_estudante` varchar(4) NOT NULL,
  `bairro` char(50) NOT NULL,
  `cep_estudante` char(8) NOT NULL,
  `estado_estudante` char(2) NOT NULL,
  `complemento_estudante` varchar(150) DEFAULT NULL,
  `condicao_ingresso` varchar(50) NOT NULL,
  `dta_matricula` char(10) NOT NULL,
  `modalidade_ensino_pretendida` varchar(32) NOT NULL,
  `ano_fase_matricula` char(2) NOT NULL,
  `turno_pretendido` varchar(8) NOT NULL,
  `INEP_Escola` int(8) NOT NULL,
  `cidade_reside` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estudante`
--

INSERT INTO `estudante` (`matricula_estudante`, `nome_estudante`, `sobrenome_estudante`, `dta_nasc_estudante`, `mae_estudante`, `pai_estudante`, `responsavel_estudante`, `cor_estudante`, `numero_rg`, `orgao_rg`, `dta_exped_rg`, `cpf`, `telefone_estudante`, `nome_cartorio`, `folha_certidao`, `termo_certidao`, `cidade_certidao`, `estado_certidao`, `dta_certidao`, `logradouro_estudante`, `numero_estudante`, `bairro`, `cep_estudante`, `estado_estudante`, `complemento_estudante`, `condicao_ingresso`, `dta_matricula`, `modalidade_ensino_pretendida`, `ano_fase_matricula`, `turno_pretendido`, `INEP_Escola`, `cidade_reside`) VALUES
('18000177', 'AMANDA', 'TAVARES DIAS DE ALMEIDA', '24/05/2003', 'MARIA ANTONIA DA SILVA DIAS', 'MARCELO TAVARES DE ALMEIDA', '', 'BRANCA', '', '', '', '', '8132691161', 'CARTÓRIO DO 13º DISTRO DE CASA AMARELA', '105-A', '14003', 'Recife', 'PE', '02/06/2003', 'TRAVESSA ALMEIDA PRADO', '204', 'BREJO DE BEBERIBE', '54360161', 'PE', '', 'APROVADA(A) OUTRA REDE', '18/05/2018', 'ENSINO FUNDAMENTAL', '6º', 'TARDE', 26126630, 'RECIFE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `ano_fase_matricularse` char(2) NOT NULL,
  `ano_fase_concludi` char(4) NOT NULL,
  `mod_ensino_matricularse` varchar(32) NOT NULL,
  `cod_autentica` char(12) NOT NULL,
  `observacoes` varchar(500) NOT NULL,
  `matricula_estudante` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`ano_fase_matricularse`, `ano_fase_concludi`, `mod_ensino_matricularse`, `cod_autentica`, `observacoes`, `matricula_estudante`) VALUES
('1º', '9º', 'ENSINO MÉDIO', '1B2TG34JU512', '', '18000177');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas_historico`
--

CREATE TABLE `notas_historico` (
  `ano_letivo_estudou` char(4) NOT NULL,
  `dias_letivo` char(3) NOT NULL,
  `unidade_ensino_estudou` varchar(100) NOT NULL,
  `ano_fase_estudou` char(2) NOT NULL,
  `estado_estudou` char(2) NOT NULL,
  `mod_ensino_estudou` varchar(32) NOT NULL,
  `cidade_estudou` varchar(50) NOT NULL,
  `LP_Ch` varchar(3) NOT NULL,
  `Art_Ch` varchar(3) NOT NULL,
  `EdF_Ch` varchar(3) NOT NULL,
  `Ing_Ch` varchar(3) NOT NULL,
  `Mat_Ch` varchar(3) NOT NULL,
  `Cie_Ch` varchar(3) NOT NULL,
  `Geo_Ch` varchar(3) NOT NULL,
  `Hist_Ch` varchar(3) NOT NULL,
  `En_Reg_Ch` varchar(3) NOT NULL,
  `D10_Ch` varchar(3) DEFAULT NULL,
  `D11_Ch` varchar(3) DEFAULT NULL,
  `D12_Ch` varchar(3) DEFAULT NULL,
  `lp_nota` varchar(4) NOT NULL,
  `art_nota` varchar(4) DEFAULT NULL,
  `edf_nota` varchar(4) DEFAULT NULL,
  `ing_nota` varchar(4) NOT NULL,
  `mat_nota` varchar(4) NOT NULL,
  `cie_nota` varchar(4) NOT NULL,
  `geo_nota` varchar(4) NOT NULL,
  `histo_nota` varchar(4) NOT NULL,
  `en_reg_nota` varchar(4) DEFAULT NULL,
  `D10_nota` varchar(4) DEFAULT NULL,
  `D11_nota` varchar(4) DEFAULT NULL,
  `d12_nota` varchar(4) DEFAULT NULL,
  `cod_autentica` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notas_historico`
--

INSERT INTO `notas_historico` (`ano_letivo_estudou`, `dias_letivo`, `unidade_ensino_estudou`, `ano_fase_estudou`, `estado_estudou`, `mod_ensino_estudou`, `cidade_estudou`, `LP_Ch`, `Art_Ch`, `EdF_Ch`, `Ing_Ch`, `Mat_Ch`, `Cie_Ch`, `Geo_Ch`, `Hist_Ch`, `En_Reg_Ch`, `D10_Ch`, `D11_Ch`, `D12_Ch`, `lp_nota`, `art_nota`, `edf_nota`, `ing_nota`, `mat_nota`, `cie_nota`, `geo_nota`, `histo_nota`, `en_reg_nota`, `D10_nota`, `D11_nota`, `d12_nota`, `cod_autentica`) VALUES
('2009', '200', 'EM. VALDEMIRO VIEIRA', '1º', 'PE', 'ENSINO FUNDAMENTAL 1', 'JABOATAO DOS GUARARAPES', '200', '100', '180', '80', '200', '180', '120', '120', '100', '', '', '', '10,0', '9,5', 'DISP', '10,0', '6,5', '8,0', '10,0', '10,0', '10,0', '', '', '', '1B2TG34JU512');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` char(5) NOT NULL,
  `mod_ensino` varchar(32) NOT NULL,
  `ano_fase` char(2) NOT NULL,
  `turma` char(1) NOT NULL,
  `turno` varchar(8) NOT NULL,
  `ano_letivo` char(4) NOT NULL,
  `INEP` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `mod_ensino`, `ano_fase`, `turma`, `turno`, `ano_letivo`, `INEP`) VALUES
('2504B', 'ENSINO FUNDAMENTAL', '5º', 'B', 'MANHÃ', '2018', 26126630);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enturmado`
--
ALTER TABLE `enturmado`
  ADD KEY `cod_turma` (`cod_turma`),
  ADD KEY `matricula_estudante` (`matricula_estudante`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`INEP`);

--
-- Indexes for table `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`matricula_estudante`),
  ADD KEY `INEP_Escola` (`INEP_Escola`);

--
-- Indexes for table `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`cod_autentica`),
  ADD KEY `matricula_estudante` (`matricula_estudante`);

--
-- Indexes for table `notas_historico`
--
ALTER TABLE `notas_historico`
  ADD KEY `cod_autentica` (`cod_autentica`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`),
  ADD KEY `INEP` (`INEP`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `enturmado`
--
ALTER TABLE `enturmado`
  ADD CONSTRAINT `enturmado_ibfk_1` FOREIGN KEY (`cod_turma`) REFERENCES `turma` (`cod_turma`),
  ADD CONSTRAINT `enturmado_ibfk_2` FOREIGN KEY (`matricula_estudante`) REFERENCES `estudante` (`matricula_estudante`);

--
-- Limitadores para a tabela `estudante`
--
ALTER TABLE `estudante`
  ADD CONSTRAINT `estudante_ibfk_1` FOREIGN KEY (`INEP_Escola`) REFERENCES `escola` (`INEP`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`matricula_estudante`) REFERENCES `estudante` (`matricula_estudante`);

--
-- Limitadores para a tabela `notas_historico`
--
ALTER TABLE `notas_historico`
  ADD CONSTRAINT `notas_historico_ibfk_1` FOREIGN KEY (`cod_autentica`) REFERENCES `historico` (`cod_autentica`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`INEP`) REFERENCES `escola` (`INEP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
