-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2019 a las 18:00:54
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petclinic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id` int(4) UNSIGNED NOT NULL,
  `pet_id` int(4) UNSIGNED NOT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dates`
--

CREATE TABLE `dates` (
  `id` int(4) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `mascota` varchar(80) DEFAULT NULL,
  `confirmacion` int(4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `date_specialties`
--

CREATE TABLE `date_specialties` (
  `date_id` int(4) UNSIGNED NOT NULL,
  `specialty_id` int(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicaments`
--

CREATE TABLE `medicaments` (
  `id` int(4) UNSIGNED NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `ingredientes` varchar(80) DEFAULT NULL,
  `presentacion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medicaments`
--

INSERT INTO `medicaments` (`id`, `nombre`, `ingredientes`, `presentacion`) VALUES
(1, 'paracetamol', 'salvado', 'tabletas'),
(2, 'glimepirida', 'hoja de maiz', 'jarabe'),
(3, 'amoxicilina', 'zenteno', 'tabletas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owners`
--

CREATE TABLE `owners` (
  `id` int(4) UNSIGNED NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `owners`
--

INSERT INTO `owners` (`id`, `first_name`, `last_name`, `address`, `city`, `telephone`) VALUES
(1, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023'),
(2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749'),
(3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763'),
(4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198'),
(5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765'),
(6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654'),
(7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387'),
(8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683'),
(9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435'),
(10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `type_id` int(4) UNSIGNED NOT NULL,
  `owner_id` int(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `birth_date`, `type_id`, `owner_id`) VALUES
(1, 'Leo', '2000-09-07', 1, 1),
(2, 'Basil', '2002-08-06', 6, 2),
(3, 'Rosy', '2001-04-17', 2, 3),
(4, 'Jewel', '2000-03-07', 2, 3),
(5, 'Iggy', '2000-11-30', 3, 4),
(6, 'George', '2000-01-20', 4, 5),
(7, 'Samantha', '1995-09-04', 1, 6),
(8, 'Max', '1995-09-04', 1, 6),
(9, 'Lucky', '1999-08-06', 5, 7),
(10, 'Mulligan', '1997-02-24', 2, 8),
(11, 'Freddy', '2000-03-09', 5, 9),
(12, 'Lucky', '2000-06-24', 2, 10),
(13, 'Sly', '2002-06-08', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `nombre` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` double NOT NULL,
  `existencia` int(11) NOT NULL,
  `fotografia` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`nombre`, `descripcion`, `precio`, `existencia`, `fotografia`, `id`, `status`) VALUES
('croquetas2ee', 'comida', 25, 100, 'xddxd', 2, 0),
('Pedigree', 'alimento pa chucho', 100, 2000, 'chucho', 3, 0),
('Whiskas', 'Croquetas para gatos', 99, 100, 'xxdxd', 4, 0),
('Whiskas12', 'Croquetas para gatos', 99, 100, 'xxdxd', 5, 0),
('Whiskas1', 'Croquetas para gatos', 99, 100, 'xxdxd', 6, 0),
('Whiskas2', 'Croquetas para gatos', 99, 100, 'xxdxd', 7, 0),
('Whiskas4', 'Croquetas para gatos', 99, 100, 'xxdxd', 8, 0),
('asdasds', 'dadas', 12, 123, 'sadasd', 10, 0),
('Donaldo', 'Es una persona', 1, 1, 'LordDony', 11, 0),
('collar para gato', 'asdsdsa', 90, 20, 'dasdasd', 12, 0),
('ddddd', 'dddd', 23, 2333, 'aaaa', 13, 0),
('Coca cola 3lts', 'Este producto es nuevo', 38, 10, 'avatar.png', 14, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporteslogin`
--

CREATE TABLE `reporteslogin` (
  `id` int(4) UNSIGNED NOT NULL,
  `intent_date` date DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reporteslogin`
--

INSERT INTO `reporteslogin` (`id`, `intent_date`, `hora`, `username`, `descripcion`) VALUES
(26, '2019-05-30', '2019-05-31 01:07:48', 'admin', 'Inicio de sesión Exitoso'),
(27, '2019-05-30', '2019-05-31 01:10:13', 'Eliezer', 'Inicio de sesión Fallido'),
(28, '2019-05-30', '2019-05-31 01:10:27', 'Eliezer', 'Inicio de sesión Fallido'),
(29, '2019-05-30', '2019-05-31 01:11:14', 'Eliezer', 'Inicio de sesión Exitoso'),
(30, '2019-05-30', '2019-05-31 01:14:17', 'nacho', 'Inicio de sesión Fallido'),
(31, '2019-05-30', '2019-05-31 01:17:51', 'nacho', 'Inicio de sesión Fallido'),
(32, '2019-05-30', '2019-05-31 01:18:11', 'Eliezer', 'Inicio de sesión Exitoso'),
(33, '2019-05-30', '2019-05-31 01:24:30', 'Eliezer', 'Inicio de sesión Exitoso'),
(34, '2019-05-30', '2019-05-31 01:25:29', 'prueba', 'Inicio de sesión Fallido'),
(35, '2019-05-30', '2019-05-31 01:25:36', 'prueba', 'Inicio de sesión Fallido'),
(36, '2019-05-30', '2019-05-31 01:26:29', 'prueba', 'Inicio de sesión Exitoso'),
(37, '2019-05-30', '2019-05-31 01:31:41', 'prueba', 'Inicio de sesión Exitoso'),
(38, '2019-05-30', '2019-05-31 01:35:29', 'prueba', 'Inicio de sesión Exitoso'),
(39, '2019-05-30', '2019-05-31 01:36:05', 'prueba', 'Inicio de sesión Exitoso'),
(40, '2019-05-30', '2019-05-31 03:40:56', 'Eliezer', 'Inicio de sesión Exitoso'),
(41, '2019-05-30', '2019-05-31 03:41:08', 'Eliezer', 'Inicio de sesión Fallido'),
(42, '2019-05-30', '2019-05-31 03:41:14', 'Eliezer', 'Inicio de sesión Exitoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialties`
--

CREATE TABLE `specialties` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `specialties`
--

INSERT INTO `specialties` (`id`, `name`) VALUES
(3, 'dentistry'),
(4, 'none'),
(1, 'radiology'),
(2, 'surgery');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE `types` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(5, 'bird'),
(1, 'cat'),
(2, 'dog'),
(6, 'hamster'),
(3, 'lizard'),
(4, 'snake');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  `cp` int(5) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `activo`, `cp`, `municipio`, `rol`) VALUES
(2, 'Eliezer', '$2y$12$T36O0yauAJe9/m5Co4hkjuB9mS2VurR1ye95IDOx7ipK6KXTJH9fW', 'Eliezer', 1, 29160, 'Chiapa de Corzo', 'ADMIN'),
(3, 'nacho', '$2a$10$H.Xck/ilkHyKU9PflYRz0ON/wHpVcJkgku/MzOg49Rfv.EYoiUkd2', 'Nacho', 1, 29000, 'Tuxtla Gutiérrez', 'ADMIN'),
(6, 'prueba', '$2a$10$4.89OdvcFz48Y9T.2/oOteAuYkxosHp3txuNIh0ZBygzZo2K/Xc/q', 'prueba', 1, 29000, 'Tuxtla Gutiérrez', 'ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vets`
--

CREATE TABLE `vets` (
  `id` int(4) UNSIGNED NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `business_hours` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vets`
--

INSERT INTO `vets` (`id`, `first_name`, `last_name`, `telephone`, `business_hours`) VALUES
(1, 'James', 'Carter', '9612594528', '12:13'),
(2, 'Helen', 'Leary', '9612593548', '12:13'),
(3, 'Linda', 'Douglas', '9612544428', '12:13'),
(4, 'Rafael', 'Ortega', '9612594590', '12:13'),
(5, 'Henry', 'Stevens', '9612594512', '12:13'),
(6, 'Sharon', 'Jenkins', '9612594328', '12:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vet_specialties`
--

CREATE TABLE `vet_specialties` (
  `vet_id` int(4) UNSIGNED NOT NULL,
  `specialty_id` int(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vet_specialties`
--

INSERT INTO `vet_specialties` (`vet_id`, `specialty_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `id` int(4) UNSIGNED NOT NULL,
  `pet_id` int(4) UNSIGNED NOT NULL,
  `visit_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `pet_id`, `visit_date`, `description`) VALUES
(1, 7, '2010-03-04', 'rabies shot'),
(2, 8, '2011-03-04', 'rabies shot'),
(3, 8, '2009-06-04', 'neutered'),
(4, 7, '2008-09-04', 'spayed');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_id` (`pet_id`);

--
-- Indices de la tabla `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `date_specialties`
--
ALTER TABLE `date_specialties`
  ADD UNIQUE KEY `date_id` (`date_id`,`specialty_id`),
  ADD KEY `specialty_id` (`specialty_id`);

--
-- Indices de la tabla `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_name` (`last_name`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporteslogin`
--
ALTER TABLE `reporteslogin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vets`
--
ALTER TABLE `vets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_name` (`last_name`);

--
-- Indices de la tabla `vet_specialties`
--
ALTER TABLE `vet_specialties`
  ADD UNIQUE KEY `vet_id` (`vet_id`,`specialty_id`),
  ADD KEY `specialty_id` (`specialty_id`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_id` (`pet_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reporteslogin`
--
ALTER TABLE `reporteslogin`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `types`
--
ALTER TABLE `types`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vets`
--
ALTER TABLE `vets`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`);

--
-- Filtros para la tabla `date_specialties`
--
ALTER TABLE `date_specialties`
  ADD CONSTRAINT `date_specialties_ibfk_1` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`),
  ADD CONSTRAINT `date_specialties_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `dates` (`id`);

--
-- Filtros para la tabla `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`),
  ADD CONSTRAINT `pets_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Filtros para la tabla `vet_specialties`
--
ALTER TABLE `vet_specialties`
  ADD CONSTRAINT `vet_specialties_ibfk_1` FOREIGN KEY (`vet_id`) REFERENCES `vets` (`id`),
  ADD CONSTRAINT `vet_specialties_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`);

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
