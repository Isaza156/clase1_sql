-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2019 a las 16:53:34
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `serviteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--
-- CREATE TABLE reserva2 WHERE IF NOT EXIST...

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `mes` int(50) NOT NULL,
  `dia` int(50) NOT NULL,
  `hora` int(50) NOT NULL,
  `tipo_servicio` varchar(50) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `cedula` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `mes`, `dia`, `hora`, `tipo_servicio`, `placa`, `cedula`, `nombre`, `telefono`) VALUES
(1, 10, 25, 13, '1 y 2', 'DDE86C', 1152201379, 'Jonathan Isaza', 3122678810),
(2, 11, 8, 9, '2 y 3', 'VRO66A', 1017243031, 'Jesica Agudelo', 3127848447);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
