-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2014 at 05:18 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiendaOnline`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`id` int(255) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apellido` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pais` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `usuario`, `contrasena`, `email`, `direccion`, `ciudad`, `pais`) VALUES
(1, 'viviana', 'benavides', 'viviben', 'viviben', '', '', '', ''),
(2, 'Cristian', 'Gonzales', 'crisgon', 'crisgon', 'nenitavbp@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `imagenesproductos`
--

CREATE TABLE IF NOT EXISTS `imagenesproductos` (
`id` int(100) NOT NULL,
  `idproducto` int(100) NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `imagenesproductos`
--

INSERT INTO `imagenesproductos` (`id`, `idproducto`, `imagen`, `titulo`, `descripcion`) VALUES
(1, 1, 'BlueTshirtMan.png', 'Titulo 1', 'Descripcion 1'),
(2, 2, 'BlackTshirtMan.png', 'Titulo 2', 'Descripcion 2'),
(3, 3, 'BlueTshirtWoman.png', 'Titulo 3', 'Descripcion 3'),
(4, 4, 'LightBlueTshirtWoman.png', 'Titulo 4', 'Descripcion 4'),
(5, 5, 'PinkTshirtWoman.png', 'Titulo 5', 'Descripcion 5'),
(6, 6, 'YellowTshirtMan.png', 'Titulo 6', 'Descripcion 6'),
(7, 5, 'PinkTshirtWomanBehind.png', 'Titulo 5.1', 'Descripcion 5.1'),
(8, 5, 'PinkTshirtWomanLeft.png', 'Titulo 5.2', 'Descripcion 5.2'),
(9, 5, 'PinkTshirtWomanRight.png', 'Titulo 5.3', 'Descripcion 5.3'),
(10, 2, 'BlackTshirtManBehind.png', 'Titulo 2.1', 'Descripcion 2.1'),
(11, 2, 'BlackTshirtManLeft.png', 'Titulo 2.2', 'Descripcion 2.2'),
(12, 2, 'BlackTshirtManRight.png', 'Titulo 2.3', 'Descripcion 2.3'),
(13, 1, 'BlueTshirtManBehind.png', 'Titulo 1.1', 'Descripcion 1.1'),
(14, 1, 'BlueTshirtManLeft.png', 'Titulo 1.2', 'Descripcion 1.2'),
(15, 1, 'BlueTshirtManRight.png', 'Titulo 1.3', 'Descripcion 1.3'),
(16, 3, 'BlueTshirtWomanBehind.png', 'Titulo 3.1', 'Descripcion 3.1'),
(17, 3, 'BlueTshirtWomanLeft.png', 'Titulo 3.2', 'Descripcion 3.2'),
(18, 3, 'BlueTshirtWomanRight.png', 'Titulo 3.3 ', 'Descripcion 3.3'),
(19, 4, 'LightBlueTshirtWomanBehind.png', 'Titulo 4.1', 'Descripcion 4.1'),
(20, 4, 'LightBlueTshirtWomanLeft.png', 'Titulo 4.2', 'Descripcion 4.2'),
(21, 4, 'LightBlueTshirtWomanRight.png', 'Titulo 4.3', 'Descripcion 4.3'),
(22, 6, 'YellowTshirtManBehind.png', 'Titulo 6.1', 'Descripcion 6.1'),
(23, 6, 'YellowTshirtManLeft.png', 'Titulo 6.2', 'Descripcion 6.2'),
(24, 6, 'YellowTshirtManRight.png', 'Titulo 6.3', 'Descripcion 6.3');

-- --------------------------------------------------------

--
-- Table structure for table `lineaspedido`
--

CREATE TABLE IF NOT EXISTS `lineaspedido` (
`id` int(255) NOT NULL,
  `idpedido` int(255) NOT NULL,
  `idproducto` int(255) NOT NULL,
  `unidades` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lineaspedido`
--

INSERT INTO `lineaspedido` (`id`, `idpedido`, `idproducto`, `unidades`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
`id` int(255) NOT NULL,
  `idcliente` int(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `idcliente`, `fecha`, `estado`) VALUES
(1, 1, '0000-00-00', '0'),
(2, 2, '0000-00-00', '0'),
(3, 1, '0000-00-00', '0'),
(4, 1, '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` int(100) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `precio` decimal(30,2) NOT NULL,
  `existencias` int(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `existencias`) VALUES
(1, 'Camisa Hombre', 'Camisa para hombre, color azul, talla L', '25.00', 5),
(2, 'Camisa Hombre', 'Camisa negra para hombre, talla M', '25.00', 5),
(3, 'Camisa Dama', 'Camisa dama, color azul, talla S', '25.00', 5),
(4, 'Camisa Dama', 'Camisa para mujer, azul claro, talla S', '30.00', 5),
(5, 'Camisa Dama', 'Camisa para mujer, color rosada, talla M', '40.00', 5),
(6, 'Camisa Hombre', 'Camisa para hombre, color amarilla, talla L', '50.00', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lineaspedido`
--
ALTER TABLE `lineaspedido`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
 ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lineaspedido`
--
ALTER TABLE `lineaspedido`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
