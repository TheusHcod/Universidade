-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29-Nov-2019 às 00:30
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universidade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `matricula` varchar(45) DEFAULT NULL,
  `id_turma` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `matricula`, `id_turma`) VALUES
(1, 'Matheus Araújo', '2019020900', 1),
(2, 'Arthur dos Santos', '2019020901', 1),
(3, 'Pedro Henrique Palmeira', '2019020902', 2),
(4, 'Thierry Moreira', '2019020903', 1),
(5, 'Mel Maia', '2019020904', 1),
(6, 'Miguelito Ramirez', '2019020905', 1),
(7, 'Luís Inácio Lula da Silva', '2019020906', 1),
(8, 'Mariana Pereira', '2019020907', 1),
(9, 'Dilma Roussef', '2019020908', 1),
(10, 'Fernando Haddad ', '2019020909', 1),
(11, 'Marina da Silva', '20190209010', 1),
(12, 'Barack Obama', '2019020912', 2),
(13, 'Martin Luther King', '2019020913', 2),
(14, 'Willian Bonner', '2019020914', 2),
(15, 'Marilia Mendonça', '2019020915', 2),
(16, 'Maurilio Girao', '2019020916', 2),
(17, 'Laura Miller', '2019020920', 2),
(18, 'Nilson Januário', '2019020921', 2),
(19, 'Pedro Lula', '2019020922', 2),
(20, 'Maria Rouseff', '2019020925', 2),
(21, 'Katy Perry', '2019020914', 3),
(22, 'Michael Jackson', '2019020915', 3),
(23, 'Clealdo Mendes', '2019020916', 3),
(24, 'Paulo Victor', '2019020920', 2),
(25, 'Patricia Josiane', '2019020921', 3),
(26, 'Anderson Machado Dias', '20191031105', 3),
(27, 'Moacir Pereira', '2019020930', 3),
(28, 'Leila Fernandes', '20190209031', 3),
(29, 'Lucas Fernandes', '2019020932', 3),
(30, 'Amélia Souza', '20190209033', 3),
(31, 'Paola Matos', '2019103134', 3),
(32, 'Mara Machado', '2019020939', 3),
(33, 'André Pinto', '2019020941', 4),
(34, 'Oliksa Rachid', '2019020904', 4),
(35, 'Izaaac Moura', '2019020943', 4),
(36, 'Francisco de Sá', '20190209044', 4),
(37, 'Adauberto Techeira', '20190209045', 4),
(38, 'Domingos Júnior', '20190209046', 4),
(39, 'Mikael Andrade', '20190209047', 4),
(40, 'Sophia Moreira', '20190209048', 4),
(41, 'Lhara Paiva', '20190209049', 4),
(42, 'Beatriz Canteiro', '20190209050', 4),
(43, 'Daphne Queen', '20190209051', 4),
(44, 'Penelopy Queen', '20190209052', 4),
(45, 'Pablo Vittar', '2019020955', 4),
(46, 'Gabriel Teste', '2019666', 1),
(47, 'Media Update', '000', 4),
(48, 'Mauro Junior', '2019002', 5),
(49, 'Alef Araújo Castelo', '20120036', 5),
(50, 'Liana Araújo Castelo', '20160023', 5),
(51, 'João Paulo Ferreira ', '20160023', 5),
(52, 'Pedro Gomes Araújo', '201703369', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome`, `id_professor`) VALUES
(1, 'Desing Gráfico', 3),
(2, 'Biologia Celular', 1),
(3, 'Bioquímica', 2),
(4, 'Fossas Marinhas', 4),
(5, 'Anatomia Comparada', 5),
(6, 'Biologia Celular Química', 6),
(7, 'Calculo 1', 7),
(8, 'Geometria Espacial', 8),
(9, 'Calculo 2', 9),
(10, 'Algebra Linear', 10),
(11, 'Geometria Espacial', 11),
(12, 'Calculo I', 12),
(13, 'Programação I', 14),
(14, 'Programação II', 15),
(15, 'Algebra Linear', 16),
(16, 'Lógica de Programação', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `id_disciplina` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `password`, `id_disciplina`) VALUES
(1, 'Domingos', 'domingos@professor.com', '1234', 1),
(2, 'Afrodísio Mendes', 'mendes@professor.com', '1234', 2),
(3, 'Marcio Renan', 'renanzin@deouro.com', 'lula', 3),
(4, 'Carlos Moreira', 'carlosmoreira00@gmail.ocm', '1234', 4),
(5, 'João Pierri', 'joaopierri741@gmail.com', '1234', 5),
(6, 'Sofia Eduarda', 'sofiaduda@gmail.com', '1234', 6),
(7, 'Maria da Graça', 'mariagraça@gmail.com', '1234', 7),
(8, 'Eduardo Lima', 'dudulima12@gmail.com', '1234', 8),
(9, 'Eduarda Fonseca', 'dudinha12@gmail.com', '1234', 9),
(10, 'Maju Silva', 'mujuxx@gamil.com', '1234', 10),
(11, 'Roberto Cavalcante', 'betincal@gmail.com', '1234', 11),
(12, 'Benaum Trindade', 'banatrin@gmail.com', '1234', 12),
(13, 'Noah Vieira', 'noahvieira@gmail.com', '1234', 13),
(14, 'Rafael Diniz', ' rafadiniz@gmail.com', '1234', 14),
(15, 'Juliana Lopes', 'jujulopes@gmail.com', '1234', 15),
(16, 'Suelem Moreira', 'susu0092@gmail.com', '1234', 16),
(17, 'Jamily Palmeira', 'jamily@gmail.com', '1234', 17),
(18, 'Roberta Silva', 'betinha132@gmail.com', '1234', 18),
(19, 'Yan Pinto', 'pintoyan@gmail.com', '1234', 19),
(20, 'Mikaely Moreira', 'mika@gmail.com', '1234', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(100) NOT NULL,
  `nota1` double(10,2) DEFAULT NULL,
  `nota2` double(10,2) DEFAULT NULL,
  `nota3` double(10,2) DEFAULT NULL,
  `id_aluno` int(11) NOT NULL,
  `media` double(10,2) DEFAULT NULL,
  `media_turma` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`id_nota`, `nota1`, `nota2`, `nota3`, `id_aluno`, `media`, `media_turma`) VALUES
(1, 10.00, 5.50, 3.30, 1, 6.27, NULL),
(2, 10.00, 5.36, 9.50, 2, 8.29, NULL),
(3, 10.00, 10.00, 10.00, 3, 10.00, NULL),
(4, 10.00, 10.00, 10.00, 4, 10.00, NULL),
(5, 10.00, 10.00, 10.00, 5, 10.00, NULL),
(6, 8.00, 8.00, 3.50, 6, 6.50, NULL),
(7, 6.00, 4.00, 8.00, 7, 6.00, NULL),
(8, 9.00, 9.00, 9.00, 8, 9.00, NULL),
(9, 10.00, 6.00, 2.00, 9, 6.00, NULL),
(10, 7.00, 3.00, 6.00, 10, 5.33, NULL),
(11, 9.00, 3.00, 7.00, 11, 6.33, NULL),
(12, 5.50, 6.50, 7.40, 12, 6.47, NULL),
(13, 8.80, 4.90, 6.60, 13, 6.77, NULL),
(14, 8.00, 4.60, 5.30, 14, 5.97, NULL),
(15, 6.00, 6.50, 6.20, 15, 6.23, NULL),
(16, 7.60, 5.50, 5.00, 16, 6.03, NULL),
(17, 6.00, 5.50, 4.90, 17, 5.47, NULL),
(18, 9.50, 8.50, 9.00, 18, 9.00, NULL),
(19, 5.00, 6.00, 5.50, 19, 5.50, NULL),
(20, 2.20, 1.50, 2.00, 20, 1.90, NULL),
(21, 10.00, 5.00, 9.00, 21, 8.00, NULL),
(22, 5.50, 2.20, 9.00, 22, 5.57, NULL),
(23, 5.00, 9.00, 7.00, 23, 7.00, NULL),
(24, 9.00, 7.00, 2.00, 24, 6.00, NULL),
(25, 7.50, 7.60, 7.70, 25, 7.60, NULL),
(26, 8.90, 9.90, 5.50, 26, 8.10, NULL),
(27, 7.00, 8.00, 9.00, 27, 8.00, NULL),
(28, 4.00, 6.00, 8.00, 28, 6.00, NULL),
(29, 6.00, 7.00, 2.00, 29, 5.00, NULL),
(30, 3.00, 10.00, 8.00, 30, 7.00, NULL),
(31, 6.00, 7.00, 7.69, 31, 6.90, NULL),
(32, 0.00, 0.00, 2.00, 32, 0.67, NULL),
(33, 2.00, 3.00, 4.00, 33, 3.00, NULL),
(34, 9.00, 3.00, 2.00, 34, 4.67, NULL),
(35, 7.00, 7.00, 7.00, 35, 7.00, NULL),
(36, 9.00, 8.00, 1.00, 36, 6.00, NULL),
(37, 2.20, 2.20, 2.00, 37, 2.13, NULL),
(38, 6.00, 5.00, 2.00, 38, 4.33, NULL),
(39, 3.00, 3.00, 3.00, 39, 3.00, NULL),
(40, 6.00, 6.00, 6.00, 40, 6.00, NULL),
(41, 1.00, 1.00, 1.00, 41, 1.00, NULL),
(42, 8.00, 8.00, 8.00, 42, 8.00, NULL),
(43, 6.00, 5.00, 2.00, 43, 4.33, NULL),
(44, 10.00, 10.00, 9.90, 44, 9.97, NULL),
(45, 9.90, 8.20, 3.20, 45, 7.10, NULL),
(47, 10.00, 10.00, 3.50, 46, 7.83, NULL),
(48, 3.00, 3.00, 3.00, 47, 3.00, NULL),
(49, 10.00, 3.00, 9.00, 48, 7.33, NULL),
(52, 10.00, 3.00, 0.00, 49, 4.33, NULL),
(53, 10.00, 10.00, 10.00, 50, 10.00, NULL),
(54, 3.00, 5.00, 9.00, 51, 5.67, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `nome_turma` varchar(45) DEFAULT NULL,
  `media_turma` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `nome_turma`, `media_turma`) VALUES
(1, 'Biologia Marinha', 7.41),
(2, 'Matemática', 6.30),
(3, 'Mídias Digitais', 6.34),
(4, 'Ciências da Computação', 4.96),
(5, 'Engenharia de Software', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD KEY `fk_disciplina_login_idx` (`id_professor`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `fk_notas_aluno1_idx` (`id_aluno`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `fk_disciplina_login` FOREIGN KEY (`id_professor`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_notas_aluno1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
