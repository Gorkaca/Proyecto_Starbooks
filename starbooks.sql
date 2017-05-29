-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2017 a las 09:13:57
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `starbooks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `num_pag` int(11) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `titulo`, `autor`, `num_pag`, `editorial`, `cantidad`) VALUES
(1, 'Nostradamus', 'Ryan Reynols', 896, 'Iber Books', 5),
(2, 'El Baul Roto', 'Pepe Ibañez', 321, 'Gensera Inc.', 8),
(3, 'Tirano', 'Christian Cameron', 963, 'Worl Wilde Inc.', 3),
(4, 'El Viento', 'Maria Aberdi', 150, 'Gensera Inc.', 10),
(5, 'Reliquas de la Muerte', 'J.K. Rowling', 941, 'Books Trap', 3),
(6, 'Escrito En El Agua', 'Christian Cameron', 560, 'Planeta', 6),
(7, 'El Extraño Verano de Tom Harley', 'Paula Hawkins', 504, 'Planeta', 5),
(8, 'Los Ritos del Agua', 'Ryan Reynols', 302, 'S.A. Ediciones B', 4),
(9, 'No Soy Un Mostruo', 'Pepe Ibañez', 336, 'Iber Books', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_libro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_libro`, `id_usuario`) VALUES
(1, 1),
(1, 3),
(2, 1),
(4, 1),
(7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `contrasena` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(50) NOT NULL,
  `perfil` varchar(32) NOT NULL,
  `poblacion` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `contrasena`, `nombre`, `apellido`, `dni`, `perfil`, `poblacion`, `direccion`, `provincia`) VALUES
(1, '12345678', 'Iker', 'Larrea', '45753955D', 'cliente', 'Galdakao', 'Labeaga, 31', 'Bizkaia'),
(2, '87654321', 'Gorka', 'Cañón', '15478694J', 'administrador', 'Bermeo', 'Errezubi, 21', 'Bizkaia'),
(3, '12345678', 'Juan', 'Garcia', '12365844F', 'cliente', 'Amorebieta', 'Oletxe, 32', 'Bizkaia'),
(4, '12345678', 'Mateu', 'Lahoz', '48965322I', 'cliente', 'Madrid', 'Av. Paraiso, 22', 'Madrid');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_libro`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
