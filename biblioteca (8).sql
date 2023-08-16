-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 16-Ago-2023 às 15:31
-- Versão do servidor: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE IF NOT EXISTS `adm` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id`, `nome`, `usuario`, `email`, `codigo`, `senha`) VALUES
(57, 'dsfasdf', 'asdfasdf', 'asdfasdfasd@gmail.com', 0, '4297f44b13955235245b2497399d7a93'),
(56, 'asdasd', 'ziliotto', 'gabrielziliotto7@gmail.com', 123123, '123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE IF NOT EXISTS `avaliacoes` (
`id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avaliacao` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id`, `livro_id`, `user_id`, `avaliacao`) VALUES
(1, 31, 1, 1),
(2, 29, 1, 5),
(3, 27, 1, 4),
(4, 27, 4, 1),
(5, 44, 1, 3),
(6, 42, 1, 3),
(7, 43, 1, 4),
(8, 67, 11, 2),
(9, 83, 11, 2),
(10, 77, 44, 4),
(11, 74, 44, 2),
(12, 67, 44, 3),
(13, 75, 47, 3),
(14, 70, 46, 4),
(15, 83, 44, 5),
(16, 69, 44, 1),
(17, 70, 44, 4),
(18, 76, 44, 1),
(19, 79, 44, 2),
(20, 80, 44, 4),
(21, 91, 44, 1),
(22, 86, 44, 2),
(23, 88, 44, 2),
(24, 85, 44, 5),
(25, 89, 44, 4),
(26, 71, 44, 1),
(27, 76, 47, 4),
(28, 85, 47, 4),
(29, 80, 47, 1),
(30, 75, 44, 5),
(31, 87, 44, 3),
(32, 90, 44, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE IF NOT EXISTS `carrinho` (
`id` int(11) NOT NULL,
  `id_livro` int(10) unsigned NOT NULL,
  `id_pessoa` int(10) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_livro`, `id_pessoa`) VALUES
(19, 27, 1),
(3, 26, 4),
(16, 25, 1),
(6, 31, 4),
(17, 25, 5),
(20, 31, 1),
(21, 28, 1),
(22, 67, 11),
(23, 72, 11),
(24, 72, 38),
(25, 76, 38),
(27, 83, 44),
(32, 72, 44),
(33, 86, 44),
(30, 69, 44),
(43, 87, 44),
(34, 83, 46),
(40, 77, 44),
(37, 77, 48);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clublivro`
--

CREATE TABLE IF NOT EXISTS `clublivro` (
`id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_turma` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Extraindo dados da tabela `clublivro`
--

INSERT INTO `clublivro` (`id`, `id_livro`, `id_turma`) VALUES
(52, 91, 'turma 1'),
(51, 90, 'turma 2'),
(54, 90, 'turma 1'),
(55, 94, 'turma 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE IF NOT EXISTS `livros` (
`id` int(11) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `quantidade` int(200) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `descricao` text,
  `genero` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autor`, `quantidade`, `disponivel`, `descricao`, `genero`, `imagem`) VALUES
(90, ' Alice no PaÃ­s das Maravilhas', 'Lewis Carroll', 2, 2, 'O livro conta a histÃ³ria de Alice, uma menina curiosa que segue um Coelho Branco de colete e relÃ³gio, mergulhando sem pensar na sua toca. A protagonista Ã© projetada para um novo mundo, repleto de animais e objetos antropomÃ³rficos, que falam e se comportam como seres humanos.\r\n', 'Aventura', 'images/AliceNoPasDasMaravilhaspng'),
(91, 'O Homem InvisÃ­vel ', 'H. G. Wells', 1, 1, 'A histÃ³ria se passa na Inglaterra. O ambicioso cientista Griffin, apÃ³s desenvolver uma fÃ³rmula que o torna invisÃ­vel, perambula com o rosto coberto por bandagens, intrigando os habitantes de um vilarejo.\r\n\r\nAs pequenas confusÃµes e os acidentes cÃ´micos causados por sua peculiar condiÃ§Ã£o logo revelariam o terror de um homem que perde a prÃ³pria imagem.\r\n', 'Aventura', 'images/OHomemInvisiveljpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_solicitados`
--

CREATE TABLE IF NOT EXISTS `livros_solicitados` (
`id` int(11) NOT NULL,
  `livro_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_avaliacoes`
--

CREATE TABLE IF NOT EXISTS `media_avaliacoes` (
  `livro_id` int(11) NOT NULL,
  `media` decimal(3,1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `media_avaliacoes`
--

INSERT INTO `media_avaliacoes` (`livro_id`, `media`) VALUES
(69, '1.0'),
(71, '1.0'),
(89, '4.0'),
(85, '4.5'),
(77, '4.0'),
(83, '3.5'),
(88, '2.0'),
(86, '2.0'),
(91, '1.0'),
(80, '2.5'),
(79, '2.0'),
(76, '2.5'),
(70, '4.0'),
(75, '4.0'),
(87, '3.0'),
(90, '5.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE IF NOT EXISTS `pessoas` (
`id` int(11) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `user`, `email`, `senha`) VALUES
(48, 'mateussasdas', 'matesadsadsdasda1212', 'teste2sdasd', 'asd'),
(49, 'mATEUS', 'gdfgdfgdfg', 'asjdnajsn@gmail.com', '123123'),
(47, 'CORINTIAS', 'teste', 'teste', 'teste'),
(44, 'asdasd', 'asdsadasd', 'gabrielziliotto515@gmail.com', '123123'),
(45, 'Leticia', 'le', 'letwessler@gmail.com', '12341234'),
(46, 'gabriel', 'gziliotto', 'gabriel_ziliotto@estudante.sesisenai.org.br', '123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetolivro`
--

CREATE TABLE IF NOT EXISTS `projetolivro` (
`id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `nomelivro` varchar(255) NOT NULL,
  `pagina` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `projetolivro`
--

INSERT INTO `projetolivro` (`id`, `user`, `nomelivro`, `pagina`) VALUES
(21, 44, '91', 0),
(20, 44, '90', 0),
(19, 49, '90', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
`id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `livro` int(11) NOT NULL,
  `dataini` date NOT NULL,
  `datafim` date NOT NULL,
  `multa` int(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `user`, `livro`, `dataini`, `datafim`, `multa`) VALUES
(19, 48, 91, '2023-09-01', '2023-08-10', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE IF NOT EXISTS `turmas` (
`id` int(11) NOT NULL,
  `turma` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id`, `turma`) VALUES
(1, 'turma 1'),
(2, 'turma 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avaliacoes`
--
ALTER TABLE `avaliacoes`
 ADD PRIMARY KEY (`id`), ADD KEY `livro_id` (`livro_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clublivro`
--
ALTER TABLE `clublivro`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livros_solicitados`
--
ALTER TABLE `livros_solicitados`
 ADD PRIMARY KEY (`id`), ADD KEY `livro_id` (`livro_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `media_avaliacoes`
--
ALTER TABLE `media_avaliacoes`
 ADD PRIMARY KEY (`livro_id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projetolivro`
--
ALTER TABLE `projetolivro`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm`
--
ALTER TABLE `adm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `avaliacoes`
--
ALTER TABLE `avaliacoes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `clublivro`
--
ALTER TABLE `clublivro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `livros_solicitados`
--
ALTER TABLE `livros_solicitados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `projetolivro`
--
ALTER TABLE `projetolivro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
