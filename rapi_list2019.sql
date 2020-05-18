-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-05-2020 a las 11:31:55
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rapi_list2019`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
`alumnoId` int(11) unsigned zerofill NOT NULL,
  `alumnoFechaIngreso` datetime NOT NULL,
  `alumnoRfid` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `alumnoQr` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `alumno_programa_id` int(11) NOT NULL,
  `persona_idPersona` int(11) NOT NULL,
  `alumnos_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=121327506 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`alumnoId`, `alumnoFechaIngreso`, `alumnoRfid`, `alumnoQr`, `alumno_programa_id`, `persona_idPersona`, `alumnos_status`) VALUES
(00000000036, '2019-11-03 20:25:55', '0004443739', '0004443739', 1, 48, 1),
(00000000037, '2019-11-03 20:37:08', '0004581376', '0004581376', 1, 49, 1),
(00000000038, '2019-11-03 20:43:18', '0004924732', '0004924732', 1, 50, 1),
(00000000039, '2019-11-05 07:34:33', '0001552809', '0001552809', 1, 54, 1),
(00000000040, '2019-11-24 15:28:43', '123455454', '123455454', 9, 55, 1),
(00000000041, '2019-11-27 10:12:50', '0004091191', '0004091191', 1, 264, 1),
(00000000042, '2019-12-02 20:01:31', 'asdasd', 'asdasd', 1, 265, 1),
(00000000043, '2019-12-02 20:02:17', '123', '123', 1, 266, 1),
(00000000044, '2019-12-02 20:02:57', '123ewq', '123ewq', 1, 267, 1),
(00000000045, '2019-12-02 20:03:38', 'okmokm', 'okmokm', 1, 268, 1),
(00000000046, '2019-12-02 20:04:28', 'ffgffd', 'ffgffd', 1, 269, 1),
(00000000047, '2019-12-02 20:05:06', 'asdasdg', 'asdasdg', 1, 270, 1),
(00000000048, '2019-12-02 20:05:50', 'gghgfd', 'gghgfd', 1, 271, 1),
(00000000049, '2019-12-02 20:06:39', 'sdfffsdfs', 'sdfffsdfs', 1, 272, 1),
(00121327505, '2019-12-04 10:52:39', '0004091191', '0004091191', 8, 273, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_curso`
--

CREATE TABLE IF NOT EXISTS `alumno_has_curso` (
  `alumno_alumnoId` int(10) unsigned zerofill NOT NULL,
  `curso_cursoId` int(11) NOT NULL,
  `id_profesor_curso` int(11) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno_has_curso`
--

INSERT INTO `alumno_has_curso` (`alumno_alumnoId`, `curso_cursoId`, `id_profesor_curso`, `estado`) VALUES
(0000000036, 17, 199, 1),
(0000000036, 65, 5, 1),
(0000000036, 70, 207, 1),
(0000000036, 71, 5, 1),
(0000000036, 77, 211, 1),
(0000000037, 17, 199, 1),
(0000000037, 65, 5, 1),
(0000000037, 70, 207, 1),
(0000000037, 71, 5, 1),
(0000000037, 77, 211, 1),
(0000000038, 17, 199, 1),
(0000000038, 65, 5, 1),
(0000000038, 70, 207, 1),
(0000000038, 71, 5, 1),
(0000000038, 77, 211, 1),
(0000000039, 17, 199, 1),
(0000000039, 65, 5, 1),
(0000000039, 70, 207, 1),
(0000000039, 71, 5, 1),
(0000000039, 77, 211, 1),
(0000000040, 17, 199, 1),
(0000000040, 65, 5, 1),
(0000000040, 70, 207, 1),
(0000000040, 71, 5, 1),
(0000000040, 77, 211, 1),
(0000000041, 17, 199, 1),
(0000000041, 65, 5, 1),
(0000000041, 70, 207, 1),
(0000000041, 77, 211, 1),
(0000000042, 65, 5, 1),
(0000000042, 70, 207, 1),
(0000000042, 71, 5, 1),
(0000000043, 65, 5, 1),
(0000000043, 70, 207, 1),
(0000000043, 71, 5, 1),
(0000000044, 65, 5, 1),
(0000000044, 70, 207, 1),
(0000000045, 65, 5, 1),
(0000000045, 70, 207, 1),
(0000000045, 71, 5, 1),
(0000000046, 65, 5, 1),
(0000000046, 70, 207, 1),
(0000000046, 71, 5, 1),
(0000000047, 65, 5, 1),
(0000000047, 70, 207, 1),
(0000000047, 71, 5, 1),
(0000000048, 65, 5, 1),
(0000000048, 70, 207, 1),
(0000000048, 71, 5, 1),
(0000000049, 65, 5, 1),
(0000000049, 70, 207, 1),
(0000000049, 71, 5, 1),
(0121327505, 65, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_lista`
--

CREATE TABLE IF NOT EXISTS `alumno_has_lista` (
  `alumno_alumnoId` int(10) unsigned zerofill NOT NULL,
  `lista_idlista` int(11) NOT NULL,
  `asistencia` int(2) DEFAULT '0',
  `fecha_firma` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno_has_lista`
--

INSERT INTO `alumno_has_lista` (`alumno_alumnoId`, `lista_idlista`, `asistencia`, `fecha_firma`) VALUES
(0000000036, 12, 0, NULL),
(0000000036, 13, 1, '2019-11-27 10:31:21'),
(0000000036, 14, 0, NULL),
(0000000036, 15, 1, '2019-11-27 10:44:13'),
(0000000036, 16, 0, NULL),
(0000000036, 17, 1, '2019-11-27 13:41:27'),
(0000000036, 18, 1, '2019-11-29 23:21:04'),
(0000000036, 19, 0, NULL),
(0000000036, 20, 1, '2019-11-29 23:24:23'),
(0000000036, 21, 1, '2019-11-29 23:24:06'),
(0000000036, 22, 1, '2019-11-29 23:23:56'),
(0000000036, 23, 1, '2019-11-29 23:23:22'),
(0000000036, 24, 0, NULL),
(0000000036, 25, 0, NULL),
(0000000036, 26, 0, NULL),
(0000000036, 27, 0, NULL),
(0000000036, 28, 1, '2019-12-03 21:43:18'),
(0000000036, 29, 1, '2019-12-04 11:43:27'),
(0000000036, 30, 1, '2019-11-29 23:29:10'),
(0000000036, 31, 1, '2019-11-29 23:28:57'),
(0000000036, 32, 1, '2019-11-29 23:28:41'),
(0000000036, 33, 1, '2019-11-29 23:28:01'),
(0000000036, 34, 1, '2019-11-29 23:27:47'),
(0000000036, 35, 1, '2019-11-29 23:27:34'),
(0000000036, 36, 0, NULL),
(0000000036, 37, 1, '2019-11-29 23:27:05'),
(0000000036, 38, 1, '2019-12-02 20:52:56'),
(0000000036, 39, 0, NULL),
(0000000036, 40, 0, NULL),
(0000000036, 48, 0, NULL),
(0000000036, 49, 0, NULL),
(0000000036, 50, 0, NULL),
(0000000036, 51, 0, NULL),
(0000000036, 52, 0, NULL),
(0000000036, 53, 0, NULL),
(0000000036, 56, 0, NULL),
(0000000036, 57, 1, '2019-12-06 17:04:35'),
(0000000036, 58, 1, '2019-12-04 17:12:15'),
(0000000036, 59, 0, NULL),
(0000000037, 12, 0, NULL),
(0000000037, 13, 1, '2019-11-27 10:31:21'),
(0000000037, 14, 1, '2019-11-27 10:43:40'),
(0000000037, 15, 0, NULL),
(0000000037, 16, 0, NULL),
(0000000037, 17, 1, '2019-11-27 13:41:27'),
(0000000037, 18, 0, NULL),
(0000000037, 19, 0, NULL),
(0000000037, 20, 0, NULL),
(0000000037, 21, 0, NULL),
(0000000037, 22, 0, NULL),
(0000000037, 23, 0, NULL),
(0000000037, 24, 0, NULL),
(0000000037, 25, 0, NULL),
(0000000037, 26, 0, NULL),
(0000000037, 27, 0, NULL),
(0000000037, 28, 1, '2019-12-03 21:43:18'),
(0000000037, 29, 0, NULL),
(0000000037, 30, 1, '2019-11-29 23:29:10'),
(0000000037, 31, 0, NULL),
(0000000037, 32, 0, NULL),
(0000000037, 33, 0, NULL),
(0000000037, 34, 0, NULL),
(0000000037, 35, 0, NULL),
(0000000037, 36, 1, '2019-11-29 23:27:17'),
(0000000037, 37, 0, NULL),
(0000000037, 39, 1, '2019-12-02 21:01:38'),
(0000000037, 40, 0, NULL),
(0000000037, 48, 0, NULL),
(0000000037, 49, 0, NULL),
(0000000037, 50, 0, NULL),
(0000000037, 51, 0, NULL),
(0000000037, 52, 0, NULL),
(0000000037, 53, 0, NULL),
(0000000037, 56, 1, '2019-12-03 21:44:32'),
(0000000037, 57, 1, '2019-12-06 17:04:09'),
(0000000037, 58, 1, '2019-12-04 17:13:32'),
(0000000037, 59, 0, NULL),
(0000000038, 12, 1, '2019-11-25 22:54:38'),
(0000000038, 13, 1, '2019-11-27 10:31:21'),
(0000000038, 14, 1, '2019-11-27 10:43:40'),
(0000000038, 15, 0, NULL),
(0000000038, 16, 0, NULL),
(0000000038, 17, 1, '2019-11-27 13:41:27'),
(0000000038, 18, 0, NULL),
(0000000038, 19, 0, NULL),
(0000000038, 20, 0, NULL),
(0000000038, 21, 0, NULL),
(0000000038, 22, 0, NULL),
(0000000038, 23, 0, NULL),
(0000000038, 24, 0, NULL),
(0000000038, 25, 0, NULL),
(0000000038, 26, 0, NULL),
(0000000038, 27, 0, NULL),
(0000000038, 28, 1, '2019-12-03 21:43:18'),
(0000000038, 29, 1, '2019-12-04 11:46:34'),
(0000000038, 30, 0, NULL),
(0000000038, 31, 0, NULL),
(0000000038, 32, 0, NULL),
(0000000038, 33, 0, NULL),
(0000000038, 34, 1, '2019-11-29 23:27:47'),
(0000000038, 35, 1, '2019-11-29 23:27:34'),
(0000000038, 36, 0, NULL),
(0000000038, 37, 0, NULL),
(0000000038, 38, 1, '2019-12-02 20:52:56'),
(0000000038, 39, 1, '2019-12-02 21:01:38'),
(0000000038, 40, 0, NULL),
(0000000038, 48, 0, NULL),
(0000000038, 49, 0, NULL),
(0000000038, 50, 0, NULL),
(0000000038, 51, 0, NULL),
(0000000038, 52, 0, NULL),
(0000000038, 53, 0, NULL),
(0000000038, 56, 0, NULL),
(0000000038, 57, 1, '2019-12-06 17:04:18'),
(0000000038, 58, 0, NULL),
(0000000038, 59, 0, NULL),
(0000000039, 12, 0, NULL),
(0000000039, 13, 0, NULL),
(0000000039, 14, 0, NULL),
(0000000039, 15, 0, NULL),
(0000000039, 16, 0, NULL),
(0000000039, 17, 1, '2019-11-27 13:41:27'),
(0000000039, 18, 0, NULL),
(0000000039, 19, 0, NULL),
(0000000039, 20, 0, NULL),
(0000000039, 21, 0, NULL),
(0000000039, 22, 0, NULL),
(0000000039, 23, 0, NULL),
(0000000039, 24, 0, NULL),
(0000000039, 25, 0, NULL),
(0000000039, 26, 0, NULL),
(0000000039, 27, 0, NULL),
(0000000039, 28, 1, '2019-12-03 21:43:18'),
(0000000039, 29, 1, '2019-12-04 10:40:41'),
(0000000039, 30, 0, NULL),
(0000000039, 31, 0, NULL),
(0000000039, 32, 0, NULL),
(0000000039, 33, 0, NULL),
(0000000039, 34, 0, NULL),
(0000000039, 35, 0, NULL),
(0000000039, 36, 0, NULL),
(0000000039, 37, 0, NULL),
(0000000039, 38, 1, '2019-12-02 20:52:56'),
(0000000039, 39, 0, NULL),
(0000000039, 40, 0, NULL),
(0000000039, 48, 0, NULL),
(0000000039, 49, 0, NULL),
(0000000039, 50, 0, NULL),
(0000000039, 51, 0, NULL),
(0000000039, 52, 0, NULL),
(0000000039, 53, 0, NULL),
(0000000039, 56, 0, NULL),
(0000000039, 57, 1, '2019-12-06 17:04:27'),
(0000000039, 58, 1, '2019-12-04 17:13:32'),
(0000000039, 59, 0, NULL),
(0000000040, 12, 1, '2019-11-25 22:54:38'),
(0000000040, 13, 0, NULL),
(0000000040, 14, 0, NULL),
(0000000040, 15, 1, '2019-11-27 10:44:14'),
(0000000040, 16, 0, NULL),
(0000000040, 17, 0, NULL),
(0000000040, 18, 0, NULL),
(0000000040, 19, 0, NULL),
(0000000040, 20, 0, NULL),
(0000000040, 21, 0, NULL),
(0000000040, 22, 0, NULL),
(0000000040, 23, 0, NULL),
(0000000040, 24, 0, NULL),
(0000000040, 25, 0, NULL),
(0000000040, 26, 0, NULL),
(0000000040, 27, 0, NULL),
(0000000040, 28, 0, NULL),
(0000000040, 29, 0, NULL),
(0000000040, 30, 1, '2019-11-29 23:29:10'),
(0000000040, 31, 1, '2019-11-29 23:28:57'),
(0000000040, 32, 1, '2019-11-29 23:28:41'),
(0000000040, 33, 1, '2019-11-29 23:28:01'),
(0000000040, 34, 0, NULL),
(0000000040, 35, 1, '2019-11-29 23:27:34'),
(0000000040, 36, 0, NULL),
(0000000040, 37, 1, '2019-11-29 23:27:05'),
(0000000040, 39, 0, NULL),
(0000000040, 40, 0, NULL),
(0000000040, 48, 0, NULL),
(0000000040, 49, 0, NULL),
(0000000040, 50, 0, NULL),
(0000000040, 51, 0, NULL),
(0000000040, 52, 0, NULL),
(0000000040, 53, 0, NULL),
(0000000040, 56, 0, NULL),
(0000000040, 57, 1, '2019-12-06 17:04:58'),
(0000000040, 58, 1, '2019-12-04 17:13:32'),
(0000000040, 59, 0, NULL),
(0000000041, 13, 1, '2019-11-27 10:31:22'),
(0000000041, 14, 1, '2019-11-27 10:43:40'),
(0000000041, 15, 1, '2019-11-27 10:44:14'),
(0000000041, 16, 0, NULL),
(0000000041, 17, 1, '2019-11-27 13:41:27'),
(0000000041, 40, 0, NULL),
(0000000041, 48, 0, NULL),
(0000000041, 49, 0, NULL),
(0000000041, 50, 0, NULL),
(0000000041, 51, 0, NULL),
(0000000041, 52, 0, NULL),
(0000000041, 53, 0, NULL),
(0000000041, 57, 1, '2019-12-06 17:05:04'),
(0000000041, 58, 1, '2019-12-04 17:13:32'),
(0000000042, 38, 1, '2019-12-02 20:52:56'),
(0000000042, 39, 0, NULL),
(0000000042, 40, 0, NULL),
(0000000042, 56, 0, NULL),
(0000000042, 57, 0, NULL),
(0000000042, 58, 1, '2019-12-04 17:13:32'),
(0000000042, 59, 0, NULL),
(0000000043, 38, 1, '2019-12-02 20:52:56'),
(0000000043, 39, 0, NULL),
(0000000043, 40, 0, NULL),
(0000000043, 56, 0, NULL),
(0000000043, 57, 0, NULL),
(0000000043, 58, 1, '2019-12-04 17:13:33'),
(0000000043, 59, 0, NULL),
(0000000044, 40, 0, NULL),
(0000000044, 57, 0, NULL),
(0000000044, 58, 1, '2019-12-04 17:13:33'),
(0000000045, 38, 1, '2019-12-02 20:52:56'),
(0000000045, 39, 0, NULL),
(0000000045, 40, 0, NULL),
(0000000045, 56, 0, NULL),
(0000000045, 57, 0, NULL),
(0000000045, 58, 1, '2019-12-04 17:13:33'),
(0000000045, 59, 0, NULL),
(0000000046, 38, 1, '2019-12-02 20:52:56'),
(0000000046, 39, 0, NULL),
(0000000046, 40, 0, NULL),
(0000000046, 56, 0, NULL),
(0000000046, 57, 0, NULL),
(0000000046, 58, 1, '2019-12-04 17:13:33'),
(0000000046, 59, 0, NULL),
(0000000047, 38, 1, '2019-12-02 20:52:56'),
(0000000047, 39, 0, NULL),
(0000000047, 40, 0, NULL),
(0000000047, 56, 0, NULL),
(0000000047, 57, 0, NULL),
(0000000047, 58, 1, '2019-12-04 17:13:33'),
(0000000047, 59, 0, NULL),
(0000000048, 38, 1, '2019-12-02 20:52:56'),
(0000000048, 39, 0, NULL),
(0000000048, 40, 0, NULL),
(0000000048, 56, 0, NULL),
(0000000048, 57, 0, NULL),
(0000000048, 58, 1, '2019-12-04 17:13:33'),
(0000000048, 59, 0, NULL),
(0000000049, 38, 1, '2019-12-02 20:52:56'),
(0000000049, 39, 0, NULL),
(0000000049, 40, 0, NULL),
(0000000049, 56, 0, NULL),
(0000000049, 57, 0, NULL),
(0000000049, 58, 1, '2019-12-04 17:13:33'),
(0000000049, 59, 0, NULL),
(0121327505, 57, 0, NULL),
(0121327505, 58, 1, '2019-12-04 17:13:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_dias`
--

CREATE TABLE IF NOT EXISTS `calendario_dias` (
  `dias_cal_id` int(11) NOT NULL,
  `nombre_dia` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calendario_dias`
--

INSERT INTO `calendario_dias` (`dias_cal_id`, `nombre_dia`) VALUES
(0, 'DOMINGO'),
(1, 'LUNES'),
(2, 'MARTES'),
(3, 'MIERCOLES'),
(4, 'JUEVES'),
(5, 'VIERNES'),
(6, 'SABADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_horario`
--

CREATE TABLE IF NOT EXISTS `calendario_horario` (
`idhorario` int(11) NOT NULL,
  `horario_desde` time NOT NULL,
  `horario_hasta` time NOT NULL,
  `id_cal_dias` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calendario_horario`
--

INSERT INTO `calendario_horario` (`idhorario`, `horario_desde`, `horario_hasta`, `id_cal_dias`) VALUES
(1, '06:00:00', '08:00:00', 0),
(2, '08:00:00', '10:00:00', 0),
(3, '10:00:00', '12:00:00', 0),
(4, '12:00:00', '14:00:00', 0),
(5, '14:00:00', '16:00:00', 0),
(6, '16:00:00', '18:00:00', 0),
(7, '18:00:00', '20:00:00', 0),
(8, '20:00:00', '22:00:00', 0),
(9, '06:00:00', '08:00:00', 1),
(10, '08:00:00', '10:00:00', 1),
(11, '10:00:00', '12:00:00', 1),
(12, '12:00:00', '14:00:00', 1),
(13, '14:00:00', '16:00:00', 1),
(14, '16:00:00', '18:00:00', 1),
(15, '18:00:00', '20:00:00', 1),
(16, '20:00:00', '22:00:00', 1),
(17, '06:00:00', '08:00:00', 2),
(18, '08:00:00', '10:00:00', 2),
(19, '10:00:00', '12:00:00', 2),
(20, '12:00:00', '14:00:00', 2),
(21, '14:00:00', '16:00:00', 2),
(22, '16:00:00', '18:00:00', 2),
(23, '18:00:00', '20:00:00', 2),
(24, '20:00:00', '22:00:00', 2),
(25, '06:00:00', '08:00:00', 3),
(26, '08:00:00', '10:00:00', 3),
(27, '10:00:00', '12:00:00', 3),
(28, '12:00:00', '14:00:00', 3),
(29, '14:00:00', '16:00:00', 3),
(30, '16:00:00', '18:00:00', 3),
(31, '18:00:00', '20:00:00', 3),
(32, '20:00:00', '22:00:00', 3),
(33, '06:00:00', '08:00:00', 4),
(34, '08:00:00', '10:00:00', 4),
(35, '10:00:00', '12:00:00', 4),
(36, '12:00:00', '14:00:00', 4),
(37, '14:00:00', '16:00:00', 4),
(38, '16:00:00', '18:00:00', 4),
(39, '18:00:00', '20:00:00', 4),
(40, '20:00:00', '22:00:00', 4),
(41, '06:00:00', '08:00:00', 5),
(42, '08:00:00', '10:00:00', 5),
(43, '10:00:00', '12:00:00', 5),
(44, '12:00:00', '14:00:00', 5),
(45, '14:00:00', '16:00:00', 5),
(46, '16:00:00', '18:00:00', 5),
(47, '18:00:00', '20:00:00', 5),
(48, '20:00:00', '22:00:00', 5),
(49, '06:00:00', '08:00:00', 6),
(50, '08:00:00', '10:00:00', 6),
(51, '10:00:00', '12:00:00', 6),
(52, '12:00:00', '14:00:00', 6),
(53, '14:00:00', '16:00:00', 6),
(54, '16:00:00', '18:00:00', 6),
(55, '18:00:00', '20:00:00', 6),
(56, '20:00:00', '22:00:00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
`cursoId` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cursoNombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cursoDescripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `semestre` int(11) NOT NULL,
  `curso_programa_id` int(11) NOT NULL,
  `curso_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`cursoId`, `codigo`, `cursoNombre`, `cursoDescripcion`, `semestre`, `curso_programa_id`, `curso_status`) VALUES
(17, '', 'ALGEBRA Y TRIGONOMETRIA A', 'N/A', 1, 1, 1),
(18, '', 'ALGEBRA Y TRIGONOMETRIA B', 'N/A', 1, 1, 1),
(19, '', 'ALGORITMIA Y PROGRAMACION I A', 'N/A', 1, 1, 1),
(20, '', 'ALGORITMIA Y PROGRAMACION I B', 'N/A', 1, 1, 1),
(21, '', 'CATEDRA BOLIVARIANA: CIUDADANIA Y DEMOCRACIA ', 'N/A', 1, 1, 1),
(22, '', 'DESARROLLO PERSONAL I A', 'N/A', 1, 1, 1),
(23, '', 'DESARROLLO PERSONAL I B', 'N/A', 1, 1, 1),
(24, '', 'INTRODUCCION A LA INGENIERIA DE SISTEMAS B', 'N/A', 1, 1, 1),
(25, '', 'PROCESOS COMUNICATIVOS I A', 'N/A', 1, 1, 1),
(26, '', 'PROCESOS COMUNICATIVOS I B', 'N/A', 1, 1, 1),
(27, '', 'INTRODUCCION A LA INGENIERIA DE SISTEMAS 01', 'N/A', 1, 1, 1),
(28, '', 'INTRODUCCION A LA INGENIERIA DE SISTEMAS A', 'N/A', 1, 1, 1),
(29, '', 'ALGEBRA LINEAL T02', 'N/A', 2, 1, 1),
(30, '', 'ALGEBRA LINEAL T03', 'N/A', 2, 1, 1),
(31, '', 'ALGORITMIA Y PROGRAMACION II T01', 'N/A', 2, 1, 1),
(32, '', 'CALCULO DIFERENCIAL T02', 'N/A', 2, 1, 1),
(33, '', 'CALCULO DIFERENCIAL T03', 'N/A', 2, 1, 1),
(34, '', 'DESARROLLO PERSONAL II T01', 'N/A', 2, 1, 1),
(35, '', 'DESARROLLO PERSONAL II T02', 'N/A', 2, 1, 1),
(36, '', 'CALCULO INTEGRAL T01', 'N/A', 3, 1, 1),
(37, '', 'CRECIMIENTO INTRAGRUPAL III T01', 'N/A', 3, 1, 1),
(38, '', 'ESTRUCTURA DE DATOS T01', 'N/A', 3, 1, 1),
(39, '', 'FISICA MECANICA T02', 'N/A', 3, 1, 1),
(40, '', 'LOGICA MATEMATICA T01', 'N/A', 3, 1, 1),
(41, '', 'ANALISIS DE ALGORITMOS T01', 'N/A', 4, 1, 1),
(42, '', 'CALCULO DE VARIAS VARIABLES T01', 'N/A', 4, 1, 1),
(43, '', 'DISENO LOGICO DIGITAL T01', 'N/A', 4, 1, 1),
(44, '', 'ESTADISTICA DESCRIPTIVA Y PROBABILISTICA T02', 'N/A', 4, 1, 1),
(45, '', 'FISICA, ELECTRICIDAD Y MAGNETISMO T01', 'N/A', 4, 1, 1),
(46, '', 'ARQUITECTURA DEL COMPUTADOR T01', 'N/A', 5, 1, 1),
(47, '', 'BASES DE DATOS T01', 'N/A', 5, 1, 1),
(48, '', 'ECUACIONES DIFERENCIALES T01', 'N/A', 5, 1, 1),
(49, '', 'ESTADISTICA E INVESTIGACION T01', 'N/A', 5, 1, 1),
(50, '', 'TEORIA DE SISTEMAS T01', 'N/A', 5, 1, 1),
(51, '', 'FORMACION INVESTIGATIVA I T01', 'N/A', 6, 1, 1),
(52, '', 'INGENIERIA DEL SOFTWARE I T01', 'N/A', 6, 1, 1),
(53, '', 'INVESTIGACION DE OPERACIONES T01', 'N/A', 6, 1, 1),
(54, '', 'MATEMATICA DISCRETA T01', 'N/A', 6, 1, 1),
(55, '', 'REDES T01', 'N/A', 6, 1, 1),
(56, '', 'SISTEMAS OPERATIVOS T01', 'N/A', 6, 1, 1),
(57, '', 'ANALISIS NUMERICO T01', 'N/A', 7, 1, 1),
(58, '', 'FORMACION INVESTIGATIVA II T01', 'N/A', 7, 1, 1),
(59, '', 'INGENIERIA DEL SOFTWARE II T01', 'N/A', 7, 1, 1),
(60, '', 'INTELIGENCIA ARTIFICIAL T01', 'N/A', 7, 1, 1),
(61, '', 'MATEMATICA FINANCIERA T01', 'N/A', 7, 1, 1),
(62, '', 'SOCIO HUMANIDADES T01', 'N/A', 7, 1, 1),
(63, '', 'TEORIA DE COMPILADORES T01', 'N/A', 7, 1, 1),
(64, '', 'DESARROLLO DE APLICACIONES MOVILES T01', 'N/A', 8, 1, 1),
(65, '', 'FORMACION INVESTIGATIVA III T01', 'N/A', 8, 1, 1),
(66, '', 'GESTION DE PROYECTOS INFORMATICOS T01', 'N/A', 8, 1, 1),
(67, '', 'INGENIERIA WEB T01', 'N/A', 8, 1, 1),
(68, '', 'INTERCONECTIVIDAD DE REDES T01', 'N/A', 8, 1, 1),
(69, '', 'CLOUD COMPUTING (COMPUTACION EN LA NUBE) T01', 'N/A', 9, 1, 1),
(70, '', 'ETICA PROFESIONAL T01', 'N/A', 9, 1, 1),
(71, '', 'MARKETING BASADO EN DATOS T01', 'N/A', 9, 1, 1),
(72, '', 'SEGURIDAD DE LA INFORMACION T01', 'N/A', 9, 1, 1),
(73, '', 'SOPORTE DE INGENIERIA T01', 'N/A', 9, 1, 1),
(74, '', 'GESTION DEL CONOCIMIENTO T01', 'N/A', 10, 1, 1),
(75, '', 'PRACTICA PROFESIONAL T01', 'N/A', 10, 1, 1),
(76, '', 'REDES DE ALTA VELOCIDAD T01', 'N/A', 10, 1, 1),
(77, '100', 'CULTURA Y DEPORTE 1 ID', 'Sin Descripción', 1, 4, 1),
(78, '9002', 'ULTIMAS PRUEBAS', 'Sin Descripción', 5, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_x_calendario`
--

CREATE TABLE IF NOT EXISTS `curso_x_calendario` (
  `id_curso` int(11) NOT NULL,
  `id_calendario` int(11) NOT NULL,
  `jornada` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso_x_calendario`
--

INSERT INTO `curso_x_calendario` (`id_curso`, `id_calendario`, `jornada`) VALUES
(17, 15, 'N/A'),
(17, 18, 'N/A'),
(17, 56, 'N/A'),
(52, 9, 'N/A'),
(52, 44, 'N/A'),
(65, 17, ''),
(65, 29, 'N/A'),
(70, 46, 'N/A'),
(71, 15, 'N/A'),
(77, 9, 'N/A'),
(77, 55, 'N/A'),
(78, 17, 'N/A'),
(78, 41, 'N/A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_x_profesor`
--

CREATE TABLE IF NOT EXISTS `curso_x_profesor` (
  `id_curso` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso_x_profesor`
--

INSERT INTO `curso_x_profesor` (`id_curso`, `id_profesor`) VALUES
(17, 199),
(52, 203),
(54, 205),
(56, 203),
(60, 213),
(65, 5),
(70, 207),
(71, 5),
(77, 211),
(78, 203);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
`idDepartamento` int(11) NOT NULL,
  `departamento` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `departamento`) VALUES
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ, D.C.'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTANDER'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SAN'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE IF NOT EXISTS `facultad` (
`facultad_id` int(11) NOT NULL,
  `facultad_nombre` varchar(140) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`facultad_id`, `facultad_nombre`) VALUES
(1, 'Ingenieria'),
(2, 'Ciencias Juridicas y Sociales'),
(3, 'Administración y Negocios'),
(4, 'Ciencias Básicas y Biomédicas'),
(5, 'Otros Programas o Departamentos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

CREATE TABLE IF NOT EXISTS `lista` (
`idlista` int(11) NOT NULL,
  `listaTemaTratado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `listaMetoUtilizado` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `listaRecursos` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `listaObservaciones` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lista_fecha_curso` date NOT NULL,
  `lista_semana` int(11) NOT NULL,
  `curso_cursoId` int(11) NOT NULL,
  `salon_idsalon` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `listaEstado` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lista`
--

INSERT INTO `lista` (`idlista`, `listaTemaTratado`, `listaMetoUtilizado`, `listaRecursos`, `listaObservaciones`, `lista_fecha_curso`, `lista_semana`, `curso_cursoId`, `salon_idsalon`, `id_semestre`, `id_profesor`, `listaEstado`) VALUES
(12, 'Pruebas', 'Pruebas', 'Video beam', 'ninguna', '2019-08-06', 0, 65, 3, 2, 5, 0),
(13, 'Pruebas', 'Pruebas', 'VIDEO BEAM', '', '2019-12-02', 1, 17, 1, 3, 199, 0),
(14, 'Pruebas', 'Pruebas', 'SD', '', '2019-12-03', 1, 17, 1, 3, 199, 0),
(15, 'Pruebas', 'Pruebas', 'SD', '', '2019-12-07', 1, 17, 1, 3, 199, 0),
(16, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-02', 1, 77, 1, 3, 211, 1),
(17, 'Pruebas', 'Pruebas', 'video', 'n', '2019-12-07', 1, 77, 1, 3, 211, 0),
(18, 'Pruebas', 'Pruebas', '', '', '2019-11-19', 13, 65, 1, 3, 5, 0),
(19, 'Pruebas', 'Pruebas', '', '', '2019-11-20', 13, 65, 1, 3, 5, 0),
(20, 'Pruebas', 'Pruebas', '', '', '2019-11-19', 13, 65, 1, 3, 5, 0),
(21, 'Pruebas', 'Pruebas', '', '', '2019-11-20', 13, 65, 1, 3, 5, 0),
(22, 'Pruebas', 'Pruebas', '', '', '2019-11-26', 14, 65, 1, 3, 5, 0),
(23, 'Pruebas', 'Pruebas', '', '', '2019-11-27', 14, 65, 1, 3, 5, 0),
(24, 'Pruebas', 'Pruebas', '', '', '2019-12-03', 15, 65, 1, 3, 5, 0),
(25, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-04', 15, 65, 1, 3, 5, 1),
(26, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-10', 16, 65, 1, 3, 5, 1),
(27, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-11', 16, 65, 1, 3, 5, 1),
(28, 'Pruebas', 'Pruebas', '', '', '2019-11-19', 13, 65, 1, 3, 5, 0),
(29, 'Pruebas', 'Pruebas', NULL, NULL, '2019-11-20', 13, 65, 1, 3, 5, 1),
(30, 'Pruebas', 'Pruebas', '', '', '2019-11-26', 14, 65, 1, 3, 5, 0),
(31, 'Pruebas', 'Pruebas', '', '', '2019-11-27', 14, 65, 1, 3, 5, 0),
(32, 'Pruebas', 'Pruebas', '', '', '2019-12-03', 15, 65, 1, 3, 5, 0),
(33, 'Pruebas', 'Pruebas', '', '', '2019-12-04', 15, 65, 1, 3, 5, 0),
(34, 'Pruebas', 'Pruebas', '', '', '2019-12-03', 15, 65, 1, 3, 5, 0),
(35, 'Pruebas', 'Pruebas', '', '', '2019-12-04', 15, 65, 1, 3, 5, 0),
(36, 'Pruebas', 'Pruebas', '', '', '2019-12-10', 16, 65, 1, 3, 5, 0),
(37, 'Pruebas', 'Pruebas', '', '', '2019-12-11', 16, 65, 1, 3, 5, 0),
(38, 'Pruebas', 'Pruebas', 'video beam', '', '2019-12-09', 16, 71, 3, 3, 5, 0),
(39, 'Pruebas', 'Pruebas', 'video beam', '', '2019-11-25', 14, 71, 1, 3, 5, 0),
(40, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-06', 15, 70, 3, 3, 207, 1),
(48, 'Pruebas', 'Pruebas', NULL, NULL, '2019-11-25', 14, 17, 1, 3, 199, 1),
(49, 'Pruebas', 'Pruebas', NULL, NULL, '2019-11-26', 14, 17, 1, 3, 199, 1),
(50, 'Pruebas', 'Pruebas', NULL, NULL, '2019-11-30', 14, 17, 1, 3, 199, 1),
(51, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-02', 15, 17, 1, 3, 199, 1),
(52, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-03', 15, 17, 1, 3, 199, 1),
(53, 'Pruebas', 'Pruebas', NULL, NULL, '2019-12-07', 15, 17, 1, 3, 199, 1),
(56, 'Pruebas', 'Pruebas', '', '', '2019-12-02', 15, 71, 1, 3, 5, 0),
(57, NULL, NULL, NULL, NULL, '2019-11-26', 14, 65, 3, 3, 5, 1),
(58, 'DISEÑO ', 'Clase Magistral', '', '', '2019-11-27', 14, 65, 3, 3, 5, 0),
(59, NULL, NULL, NULL, NULL, '2019-12-02', 15, 71, 1, 3, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
`idMunicipio` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `departamento_idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idMunicipio`, `municipio`, `departamento_idDepartamento`) VALUES
(1, 'Abriaquí', 5),
(2, 'Acacías', 50),
(3, 'Acandí', 27),
(4, 'Acevedo', 41),
(5, 'Achí', 13),
(6, 'Agrado', 41),
(7, 'Agua de Dios', 25),
(8, 'Aguachica', 20),
(9, 'Aguada', 68),
(10, 'Aguadas', 17),
(11, 'Aguazul', 85),
(12, 'Agustín Codazzi', 20),
(13, 'Aipe', 41),
(14, 'Albania', 18),
(15, 'Albania', 44),
(16, 'Albania', 68),
(17, 'Albán', 25),
(18, 'Albán (San José)', 52),
(19, 'Alcalá', 76),
(20, 'Alejandria', 5),
(21, 'Algarrobo', 47),
(22, 'Algeciras', 41),
(23, 'Almaguer', 19),
(24, 'Almeida', 15),
(25, 'Alpujarra', 73),
(26, 'Altamira', 41),
(27, 'Alto Baudó (Pie de Pato)', 27),
(28, 'Altos del Rosario', 13),
(29, 'Alvarado', 73),
(30, 'Amagá', 5),
(31, 'Amalfi', 5),
(32, 'Ambalema', 73),
(33, 'Anapoima', 25),
(34, 'Ancuya', 52),
(35, 'Andalucía', 76),
(36, 'Andes', 5),
(37, 'Angelópolis', 5),
(38, 'Angostura', 5),
(39, 'Anolaima', 25),
(40, 'Anorí', 5),
(41, 'Anserma', 17),
(42, 'Ansermanuevo', 76),
(43, 'Anzoátegui', 73),
(44, 'Anzá', 5),
(45, 'Apartadó', 5),
(46, 'Apulo', 25),
(47, 'Apía', 66),
(48, 'Aquitania', 15),
(49, 'Aracataca', 47),
(50, 'Aranzazu', 17),
(51, 'Aratoca', 68),
(52, 'Arauca', 81),
(53, 'Arauquita', 81),
(54, 'Arbeláez', 25),
(55, 'Arboleda (Berruecos)', 52),
(56, 'Arboledas', 54),
(57, 'Arboletes', 5),
(58, 'Arcabuco', 15),
(59, 'Arenal', 13),
(60, 'Argelia', 5),
(61, 'Argelia', 19),
(62, 'Argelia', 76),
(63, 'Ariguaní (El Difícil)', 47),
(64, 'Arjona', 13),
(65, 'Armenia', 5),
(66, 'Armenia', 63),
(67, 'Armero (Guayabal)', 73),
(68, 'Arroyohondo', 13),
(69, 'Astrea', 20),
(70, 'Ataco', 73),
(71, 'Atrato (Yuto)', 27),
(72, 'Ayapel', 23),
(73, 'Bagadó', 27),
(74, 'Bahía Solano (Mútis)', 27),
(75, 'Bajo Baudó (Pizarro)', 27),
(76, 'Balboa', 19),
(77, 'Balboa', 66),
(78, 'Baranoa', 8),
(79, 'Baraya', 41),
(80, 'Barbacoas', 52),
(81, 'Barbosa', 5),
(82, 'Barbosa', 68),
(83, 'Barichara', 68),
(84, 'Barranca de Upía', 50),
(85, 'Barrancabermeja', 68),
(86, 'Barrancas', 44),
(87, 'Barranco de Loba', 13),
(88, 'Barranquilla', 8),
(89, 'Becerríl', 20),
(90, 'Belalcázar', 17),
(91, 'Bello', 5),
(92, 'Belmira', 5),
(93, 'Beltrán', 25),
(94, 'Belén', 15),
(95, 'Belén', 52),
(96, 'Belén de Bajirá', 27),
(97, 'Belén de Umbría', 66),
(98, 'Belén de los Andaquíes', 18),
(99, 'Berbeo', 15),
(100, 'Betania', 5),
(101, 'Beteitiva', 15),
(102, 'Betulia', 5),
(103, 'Betulia', 68),
(104, 'Bituima', 25),
(105, 'Boavita', 15),
(106, 'Bochalema', 54),
(107, 'Bogotá D.C.', 11),
(108, 'Bojacá', 25),
(109, 'Bojayá (Bellavista)', 27),
(110, 'Bolívar', 5),
(111, 'Bolívar', 19),
(112, 'Bolívar', 68),
(113, 'Bolívar', 76),
(114, 'Bosconia', 20),
(115, 'Boyacá', 15),
(116, 'Briceño', 5),
(117, 'Briceño', 15),
(118, 'Bucaramanga', 68),
(119, 'Bucarasica', 54),
(120, 'Buenaventura', 76),
(121, 'Buenavista', 15),
(122, 'Buenavista', 23),
(123, 'Buenavista', 63),
(124, 'Buenavista', 70),
(125, 'Buenos Aires', 19),
(126, 'Buesaco', 52),
(127, 'Buga', 76),
(128, 'Bugalagrande', 76),
(129, 'Burítica', 5),
(130, 'Busbanza', 15),
(131, 'Cabrera', 25),
(132, 'Cabrera', 68),
(133, 'Cabuyaro', 50),
(134, 'Cachipay', 25),
(135, 'Caicedo', 5),
(136, 'Caicedonia', 76),
(137, 'Caimito', 70),
(138, 'Cajamarca', 73),
(139, 'Cajibío', 19),
(140, 'Cajicá', 25),
(141, 'Calamar', 13),
(142, 'Calamar', 95),
(143, 'Calarcá', 63),
(144, 'Caldas', 5),
(145, 'Caldas', 15),
(146, 'Caldono', 19),
(147, 'California', 68),
(148, 'Calima (Darién)', 76),
(149, 'Caloto', 19),
(150, 'Calí', 76),
(151, 'Campamento', 5),
(152, 'Campo de la Cruz', 8),
(153, 'Campoalegre', 41),
(154, 'Campohermoso', 15),
(155, 'Canalete', 23),
(156, 'Candelaria', 8),
(157, 'Candelaria', 76),
(158, 'Cantagallo', 13),
(159, 'Cantón de San Pablo', 27),
(160, 'Caparrapí', 25),
(161, 'Capitanejo', 68),
(162, 'Caracolí', 5),
(163, 'Caramanta', 5),
(164, 'Carcasí', 68),
(165, 'Carepa', 5),
(166, 'Carmen de Apicalá', 73),
(167, 'Carmen de Carupa', 25),
(168, 'Carmen de Viboral', 5),
(169, 'Carmen del Darién (CURBARADÓ)', 27),
(170, 'Carolina', 5),
(171, 'Cartagena', 13),
(172, 'Cartagena del Chairá', 18),
(173, 'Cartago', 76),
(174, 'Carurú', 97),
(175, 'Casabianca', 73),
(176, 'Castilla la Nueva', 50),
(177, 'Caucasia', 5),
(178, 'Cañasgordas', 5),
(179, 'Cepita', 68),
(180, 'Cereté', 23),
(181, 'Cerinza', 15),
(182, 'Cerrito', 68),
(183, 'Cerro San Antonio', 47),
(184, 'Chachaguí', 52),
(185, 'Chaguaní', 25),
(186, 'Chalán', 70),
(187, 'Chaparral', 73),
(188, 'Charalá', 68),
(189, 'Charta', 68),
(190, 'Chigorodó', 5),
(191, 'Chima', 68),
(192, 'Chimichagua', 20),
(193, 'Chimá', 23),
(194, 'Chinavita', 15),
(195, 'Chinchiná', 17),
(196, 'Chinácota', 54),
(197, 'Chinú', 23),
(198, 'Chipaque', 25),
(199, 'Chipatá', 68),
(200, 'Chiquinquirá', 15),
(201, 'Chiriguaná', 20),
(202, 'Chiscas', 15),
(203, 'Chita', 15),
(204, 'Chitagá', 54),
(205, 'Chitaraque', 15),
(206, 'Chivatá', 15),
(207, 'Chivolo', 47),
(208, 'Choachí', 25),
(209, 'Chocontá', 25),
(210, 'Chámeza', 85),
(211, 'Chía', 25),
(212, 'Chíquiza', 15),
(213, 'Chívor', 15),
(214, 'Cicuco', 13),
(215, 'Cimitarra', 68),
(216, 'Circasia', 63),
(217, 'Cisneros', 5),
(218, 'Ciénaga', 15),
(219, 'Ciénaga', 47),
(220, 'Ciénaga de Oro', 23),
(221, 'Clemencia', 13),
(222, 'Cocorná', 5),
(223, 'Coello', 73),
(224, 'Cogua', 25),
(225, 'Colombia', 41),
(226, 'Colosó (Ricaurte)', 70),
(227, 'Colón', 86),
(228, 'Colón (Génova)', 52),
(229, 'Concepción', 5),
(230, 'Concepción', 68),
(231, 'Concordia', 5),
(232, 'Concordia', 47),
(233, 'Condoto', 27),
(234, 'Confines', 68),
(235, 'Consaca', 52),
(236, 'Contadero', 52),
(237, 'Contratación', 68),
(238, 'Convención', 54),
(239, 'Copacabana', 5),
(240, 'Coper', 15),
(241, 'Cordobá', 63),
(242, 'Corinto', 19),
(243, 'Coromoro', 68),
(244, 'Corozal', 70),
(245, 'Corrales', 15),
(246, 'Cota', 25),
(247, 'Cotorra', 23),
(248, 'Covarachía', 15),
(249, 'Coveñas', 70),
(250, 'Coyaima', 73),
(251, 'Cravo Norte', 81),
(252, 'Cuaspud (Carlosama)', 52),
(253, 'Cubarral', 50),
(254, 'Cubará', 15),
(255, 'Cucaita', 15),
(256, 'Cucunubá', 25),
(257, 'Cucutilla', 54),
(258, 'Cuitiva', 15),
(259, 'Cumaral', 50),
(260, 'Cumaribo', 99),
(261, 'Cumbal', 52),
(262, 'Cumbitara', 52),
(263, 'Cunday', 73),
(264, 'Curillo', 18),
(265, 'Curití', 68),
(266, 'Curumaní', 20),
(267, 'Cáceres', 5),
(268, 'Cáchira', 54),
(269, 'Cácota', 54),
(270, 'Cáqueza', 25),
(271, 'Cértegui', 27),
(272, 'Cómbita', 15),
(273, 'Córdoba', 13),
(274, 'Córdoba', 52),
(275, 'Cúcuta', 54),
(276, 'Dabeiba', 5),
(277, 'Dagua', 76),
(278, 'Dibulla', 44),
(279, 'Distracción', 44),
(280, 'Dolores', 73),
(281, 'Don Matías', 5),
(282, 'Dos Quebradas', 66),
(283, 'Duitama', 15),
(284, 'Durania', 54),
(285, 'Ebéjico', 5),
(286, 'El Bagre', 5),
(287, 'El Banco', 47),
(288, 'El Cairo', 76),
(289, 'El Calvario', 50),
(290, 'El Carmen', 54),
(291, 'El Carmen', 68),
(292, 'El Carmen de Atrato', 27),
(293, 'El Carmen de Bolívar', 13),
(294, 'El Castillo', 50),
(295, 'El Cerrito', 76),
(296, 'El Charco', 52),
(297, 'El Cocuy', 15),
(298, 'El Colegio', 25),
(299, 'El Copey', 20),
(300, 'El Doncello', 18),
(301, 'El Dorado', 50),
(302, 'El Dovio', 76),
(303, 'El Espino', 15),
(304, 'El Guacamayo', 68),
(305, 'El Guamo', 13),
(306, 'El Molino', 44),
(307, 'El Paso', 20),
(308, 'El Paujil', 18),
(309, 'El Peñol', 52),
(310, 'El Peñon', 13),
(311, 'El Peñon', 68),
(312, 'El Peñón', 25),
(313, 'El Piñon', 47),
(314, 'El Playón', 68),
(315, 'El Retorno', 95),
(316, 'El Retén', 47),
(317, 'El Roble', 70),
(318, 'El Rosal', 25),
(319, 'El Rosario', 52),
(320, 'El Tablón de Gómez', 52),
(321, 'El Tambo', 19),
(322, 'El Tambo', 52),
(323, 'El Tarra', 54),
(324, 'El Zulia', 54),
(325, 'El Águila', 76),
(326, 'Elías', 41),
(327, 'Encino', 68),
(328, 'Enciso', 68),
(329, 'Entrerríos', 5),
(330, 'Envigado', 5),
(331, 'Espinal', 73),
(332, 'Facatativá', 25),
(333, 'Falan', 73),
(334, 'Filadelfia', 17),
(335, 'Filandia', 63),
(336, 'Firavitoba', 15),
(337, 'Flandes', 73),
(338, 'Florencia', 18),
(339, 'Florencia', 19),
(340, 'Floresta', 15),
(341, 'Florida', 76),
(342, 'Floridablanca', 68),
(343, 'Florián', 68),
(344, 'Fonseca', 44),
(345, 'Fortúl', 81),
(346, 'Fosca', 25),
(347, 'Francisco Pizarro', 52),
(348, 'Fredonia', 5),
(349, 'Fresno', 73),
(350, 'Frontino', 5),
(351, 'Fuente de Oro', 50),
(352, 'Fundación', 47),
(353, 'Funes', 52),
(354, 'Funza', 25),
(355, 'Fusagasugá', 25),
(356, 'Fómeque', 25),
(357, 'Fúquene', 25),
(358, 'Gachalá', 25),
(359, 'Gachancipá', 25),
(360, 'Gachantivá', 15),
(361, 'Gachetá', 25),
(362, 'Galapa', 8),
(363, 'Galeras (Nueva Granada)', 70),
(364, 'Galán', 68),
(365, 'Gama', 25),
(366, 'Gamarra', 20),
(367, 'Garagoa', 15),
(368, 'Garzón', 41),
(369, 'Gigante', 41),
(370, 'Ginebra', 76),
(371, 'Giraldo', 5),
(372, 'Girardot', 25),
(373, 'Girardota', 5),
(374, 'Girón', 68),
(375, 'Gonzalez', 20),
(376, 'Gramalote', 54),
(377, 'Granada', 5),
(378, 'Granada', 25),
(379, 'Granada', 50),
(380, 'Guaca', 68),
(381, 'Guacamayas', 15),
(382, 'Guacarí', 76),
(383, 'Guachavés', 52),
(384, 'Guachené', 19),
(385, 'Guachetá', 25),
(386, 'Guachucal', 52),
(387, 'Guadalupe', 5),
(388, 'Guadalupe', 41),
(389, 'Guadalupe', 68),
(390, 'Guaduas', 25),
(391, 'Guaitarilla', 52),
(392, 'Gualmatán', 52),
(393, 'Guamal', 47),
(394, 'Guamal', 50),
(395, 'Guamo', 73),
(396, 'Guapota', 68),
(397, 'Guapí', 19),
(398, 'Guaranda', 70),
(399, 'Guarne', 5),
(400, 'Guasca', 25),
(401, 'Guatapé', 5),
(402, 'Guataquí', 25),
(403, 'Guatavita', 25),
(404, 'Guateque', 15),
(405, 'Guavatá', 68),
(406, 'Guayabal de Siquima', 25),
(407, 'Guayabetal', 25),
(408, 'Guayatá', 15),
(409, 'Guepsa', 68),
(410, 'Guicán', 15),
(411, 'Gutiérrez', 25),
(412, 'Guática', 66),
(413, 'Gámbita', 68),
(414, 'Gámeza', 15),
(415, 'Génova', 63),
(416, 'Gómez Plata', 5),
(417, 'Hacarí', 54),
(418, 'Hatillo de Loba', 13),
(419, 'Hato', 68),
(420, 'Hato Corozal', 85),
(421, 'Hatonuevo', 44),
(422, 'Heliconia', 5),
(423, 'Herrán', 54),
(424, 'Herveo', 73),
(425, 'Hispania', 5),
(426, 'Hobo', 41),
(427, 'Honda', 73),
(428, 'Ibagué', 73),
(429, 'Icononzo', 73),
(430, 'Iles', 52),
(431, 'Imúes', 52),
(432, 'Inzá', 19),
(433, 'Inírida', 94),
(434, 'Ipiales', 52),
(435, 'Isnos', 41),
(436, 'Istmina', 27),
(437, 'Itagüí', 5),
(438, 'Ituango', 5),
(439, 'Izá', 15),
(440, 'Jambaló', 19),
(441, 'Jamundí', 76),
(442, 'Jardín', 5),
(443, 'Jenesano', 15),
(444, 'Jericó', 5),
(445, 'Jericó', 15),
(446, 'Jerusalén', 25),
(447, 'Jesús María', 68),
(448, 'Jordán', 68),
(449, 'Juan de Acosta', 8),
(450, 'Junín', 25),
(451, 'Juradó', 27),
(452, 'La Apartada y La Frontera', 23),
(453, 'La Argentina', 41),
(454, 'La Belleza', 68),
(455, 'La Calera', 25),
(456, 'La Capilla', 15),
(457, 'La Ceja', 5),
(458, 'La Celia', 66),
(459, 'La Cruz', 52),
(460, 'La Cumbre', 76),
(461, 'La Dorada', 17),
(462, 'La Esperanza', 54),
(463, 'La Estrella', 5),
(464, 'La Florida', 52),
(465, 'La Gloria', 20),
(466, 'La Jagua de Ibirico', 20),
(467, 'La Jagua del Pilar', 44),
(468, 'La Llanada', 52),
(469, 'La Macarena', 50),
(470, 'La Merced', 17),
(471, 'La Mesa', 25),
(472, 'La Montañita', 18),
(473, 'La Palma', 25),
(474, 'La Paz', 68),
(475, 'La Paz (Robles)', 20),
(476, 'La Peña', 25),
(477, 'La Pintada', 5),
(478, 'La Plata', 41),
(479, 'La Playa', 54),
(480, 'La Primavera', 99),
(481, 'La Salina', 85),
(482, 'La Sierra', 19),
(483, 'La Tebaida', 63),
(484, 'La Tola', 52),
(485, 'La Unión', 5),
(486, 'La Unión', 52),
(487, 'La Unión', 70),
(488, 'La Unión', 76),
(489, 'La Uvita', 15),
(490, 'La Vega', 19),
(491, 'La Vega', 25),
(492, 'La Victoria', 15),
(493, 'La Victoria', 17),
(494, 'La Victoria', 76),
(495, 'La Virginia', 66),
(496, 'Labateca', 54),
(497, 'Labranzagrande', 15),
(498, 'Landázuri', 68),
(499, 'Lebrija', 68),
(500, 'Leiva', 52),
(501, 'Lejanías', 50),
(502, 'Lenguazaque', 25),
(503, 'Leticia', 91),
(504, 'Liborina', 5),
(505, 'Linares', 52),
(506, 'Lloró', 27),
(507, 'Lorica', 23),
(508, 'Los Córdobas', 23),
(509, 'Los Palmitos', 70),
(510, 'Los Patios', 54),
(511, 'Los Santos', 68),
(512, 'Lourdes', 54),
(513, 'Luruaco', 8),
(514, 'Lérida', 73),
(515, 'Líbano', 73),
(516, 'López (Micay)', 19),
(517, 'Macanal', 15),
(518, 'Macaravita', 68),
(519, 'Maceo', 5),
(520, 'Machetá', 25),
(521, 'Madrid', 25),
(522, 'Magangué', 13),
(523, 'Magüi (Payán)', 52),
(524, 'Mahates', 13),
(525, 'Maicao', 44),
(526, 'Majagual', 70),
(527, 'Malambo', 8),
(528, 'Mallama (Piedrancha)', 52),
(529, 'Manatí', 8),
(530, 'Manaure', 44),
(531, 'Manaure Balcón del Cesar', 20),
(532, 'Manizales', 17),
(533, 'Manta', 25),
(534, 'Manzanares', 17),
(535, 'Maní', 85),
(536, 'Mapiripan', 50),
(537, 'Margarita', 13),
(538, 'Marinilla', 5),
(539, 'Maripí', 15),
(540, 'Mariquita', 73),
(541, 'Marmato', 17),
(542, 'Marquetalia', 17),
(543, 'Marsella', 66),
(544, 'Marulanda', 17),
(545, 'María la Baja', 13),
(546, 'Matanza', 68),
(547, 'Medellín', 5),
(548, 'Medina', 25),
(549, 'Medio Atrato', 27),
(550, 'Medio Baudó', 27),
(551, 'Medio San Juan (ANDAGOYA)', 27),
(552, 'Melgar', 73),
(553, 'Mercaderes', 19),
(554, 'Mesetas', 50),
(555, 'Milán', 18),
(556, 'Miraflores', 15),
(557, 'Miraflores', 95),
(558, 'Miranda', 19),
(559, 'Mistrató', 66),
(560, 'Mitú', 97),
(561, 'Mocoa', 86),
(562, 'Mogotes', 68),
(563, 'Molagavita', 68),
(564, 'Momil', 23),
(565, 'Mompós', 13),
(566, 'Mongua', 15),
(567, 'Monguí', 15),
(568, 'Moniquirá', 15),
(569, 'Montebello', 5),
(570, 'Montecristo', 13),
(571, 'Montelíbano', 23),
(572, 'Montenegro', 63),
(573, 'Monteria', 23),
(574, 'Monterrey', 85),
(575, 'Morales', 13),
(576, 'Morales', 19),
(577, 'Morelia', 18),
(578, 'Morroa', 70),
(579, 'Mosquera', 25),
(580, 'Mosquera', 52),
(581, 'Motavita', 15),
(582, 'Moñitos', 23),
(583, 'Murillo', 73),
(584, 'Murindó', 5),
(585, 'Mutatá', 5),
(586, 'Mutiscua', 54),
(587, 'Muzo', 15),
(588, 'Málaga', 68),
(589, 'Nariño', 5),
(590, 'Nariño', 25),
(591, 'Nariño', 52),
(592, 'Natagaima', 73),
(593, 'Nechí', 5),
(594, 'Necoclí', 5),
(595, 'Neira', 17),
(596, 'Neiva', 41),
(597, 'Nemocón', 25),
(598, 'Nilo', 25),
(599, 'Nimaima', 25),
(600, 'Nobsa', 15),
(601, 'Nocaima', 25),
(602, 'Norcasia', 17),
(603, 'Norosí', 13),
(604, 'Novita', 27),
(605, 'Nueva Granada', 47),
(606, 'Nuevo Colón', 15),
(607, 'Nunchía', 85),
(608, 'Nuquí', 27),
(609, 'Nátaga', 41),
(610, 'Obando', 76),
(611, 'Ocamonte', 68),
(612, 'Ocaña', 54),
(613, 'Oiba', 68),
(614, 'Oicatá', 15),
(615, 'Olaya', 5),
(616, 'Olaya Herrera', 52),
(617, 'Onzaga', 68),
(618, 'Oporapa', 41),
(619, 'Orito', 86),
(620, 'Orocué', 85),
(621, 'Ortega', 73),
(622, 'Ospina', 52),
(623, 'Otanche', 15),
(624, 'Ovejas', 70),
(625, 'Pachavita', 15),
(626, 'Pacho', 25),
(627, 'Padilla', 19),
(628, 'Paicol', 41),
(629, 'Pailitas', 20),
(630, 'Paime', 25),
(631, 'Paipa', 15),
(632, 'Pajarito', 15),
(633, 'Palermo', 41),
(634, 'Palestina', 17),
(635, 'Palestina', 41),
(636, 'Palmar', 68),
(637, 'Palmar de Varela', 8),
(638, 'Palmas del Socorro', 68),
(639, 'Palmira', 76),
(640, 'Palmito', 70),
(641, 'Palocabildo', 73),
(642, 'Pamplona', 54),
(643, 'Pamplonita', 54),
(644, 'Pandi', 25),
(645, 'Panqueba', 15),
(646, 'Paratebueno', 25),
(647, 'Pasca', 25),
(648, 'Patía (El Bordo)', 19),
(649, 'Pauna', 15),
(650, 'Paya', 15),
(651, 'Paz de Ariporo', 85),
(652, 'Paz de Río', 15),
(653, 'Pedraza', 47),
(654, 'Pelaya', 20),
(655, 'Pensilvania', 17),
(656, 'Peque', 5),
(657, 'Pereira', 66),
(658, 'Pesca', 15),
(659, 'Peñol', 5),
(660, 'Piamonte', 19),
(661, 'Pie de Cuesta', 68),
(662, 'Piedras', 73),
(663, 'Piendamó', 19),
(664, 'Pijao', 63),
(665, 'Pijiño', 47),
(666, 'Pinchote', 68),
(667, 'Pinillos', 13),
(668, 'Piojo', 8),
(669, 'Pisva', 15),
(670, 'Pital', 41),
(671, 'Pitalito', 41),
(672, 'Pivijay', 47),
(673, 'Planadas', 73),
(674, 'Planeta Rica', 23),
(675, 'Plato', 47),
(676, 'Policarpa', 52),
(677, 'Polonuevo', 8),
(678, 'Ponedera', 8),
(679, 'Popayán', 19),
(680, 'Pore', 85),
(681, 'Potosí', 52),
(682, 'Pradera', 76),
(683, 'Prado', 73),
(684, 'Providencia', 52),
(685, 'Providencia', 88),
(686, 'Pueblo Bello', 20),
(687, 'Pueblo Nuevo', 23),
(688, 'Pueblo Rico', 66),
(689, 'Pueblorrico', 5),
(690, 'Puebloviejo', 47),
(691, 'Puente Nacional', 68),
(692, 'Puerres', 52),
(693, 'Puerto Asís', 86),
(694, 'Puerto Berrío', 5),
(695, 'Puerto Boyacá', 15),
(696, 'Puerto Caicedo', 86),
(697, 'Puerto Carreño', 99),
(698, 'Puerto Colombia', 8),
(699, 'Puerto Concordia', 50),
(700, 'Puerto Escondido', 23),
(701, 'Puerto Gaitán', 50),
(702, 'Puerto Guzmán', 86),
(703, 'Puerto Leguízamo', 86),
(704, 'Puerto Libertador', 23),
(705, 'Puerto Lleras', 50),
(706, 'Puerto López', 50),
(707, 'Puerto Nare', 5),
(708, 'Puerto Nariño', 91),
(709, 'Puerto Parra', 68),
(710, 'Puerto Rico', 18),
(711, 'Puerto Rico', 50),
(712, 'Puerto Rondón', 81),
(713, 'Puerto Salgar', 25),
(714, 'Puerto Santander', 54),
(715, 'Puerto Tejada', 19),
(716, 'Puerto Triunfo', 5),
(717, 'Puerto Wilches', 68),
(718, 'Pulí', 25),
(719, 'Pupiales', 52),
(720, 'Puracé (Coconuco)', 19),
(721, 'Purificación', 73),
(722, 'Purísima', 23),
(723, 'Pácora', 17),
(724, 'Páez', 15),
(725, 'Páez (Belalcazar)', 19),
(726, 'Páramo', 68),
(727, 'Quebradanegra', 25),
(728, 'Quetame', 25),
(729, 'Quibdó', 27),
(730, 'Quimbaya', 63),
(731, 'Quinchía', 66),
(732, 'Quipama', 15),
(733, 'Quipile', 25),
(734, 'Ragonvalia', 54),
(735, 'Ramiriquí', 15),
(736, 'Recetor', 85),
(737, 'Regidor', 13),
(738, 'Remedios', 5),
(739, 'Remolino', 47),
(740, 'Repelón', 8),
(741, 'Restrepo', 50),
(742, 'Restrepo', 76),
(743, 'Retiro', 5),
(744, 'Ricaurte', 25),
(745, 'Ricaurte', 52),
(746, 'Rio Negro', 68),
(747, 'Rioblanco', 73),
(748, 'Riofrío', 76),
(749, 'Riohacha', 44),
(750, 'Risaralda', 17),
(751, 'Rivera', 41),
(752, 'Roberto Payán (San José)', 52),
(753, 'Roldanillo', 76),
(754, 'Roncesvalles', 73),
(755, 'Rondón', 15),
(756, 'Rosas', 19),
(757, 'Rovira', 73),
(758, 'Ráquira', 15),
(759, 'Río Iró', 27),
(760, 'Río Quito', 27),
(761, 'Río Sucio', 17),
(762, 'Río Viejo', 13),
(763, 'Río de oro', 20),
(764, 'Ríonegro', 5),
(765, 'Ríosucio', 27),
(766, 'Sabana de Torres', 68),
(767, 'Sabanagrande', 8),
(768, 'Sabanalarga', 5),
(769, 'Sabanalarga', 8),
(770, 'Sabanalarga', 85),
(771, 'Sabanas de San Angel (SAN ANGEL)', 47),
(772, 'Sabaneta', 5),
(773, 'Saboyá', 15),
(774, 'Sahagún', 23),
(775, 'Saladoblanco', 41),
(776, 'Salamina', 17),
(777, 'Salamina', 47),
(778, 'Salazar', 54),
(779, 'Saldaña', 73),
(780, 'Salento', 63),
(781, 'Salgar', 5),
(782, 'Samacá', 15),
(783, 'Samaniego', 52),
(784, 'Samaná', 17),
(785, 'Sampués', 70),
(786, 'San Agustín', 41),
(787, 'San Alberto', 20),
(788, 'San Andrés', 68),
(789, 'San Andrés Sotavento', 23),
(790, 'San Andrés de Cuerquía', 5),
(791, 'San Antero', 23),
(792, 'San Antonio', 73),
(793, 'San Antonio de Tequendama', 25),
(794, 'San Benito', 68),
(795, 'San Benito Abad', 70),
(796, 'San Bernardo', 25),
(797, 'San Bernardo', 52),
(798, 'San Bernardo del Viento', 23),
(799, 'San Calixto', 54),
(800, 'San Carlos', 5),
(801, 'San Carlos', 23),
(802, 'San Carlos de Guaroa', 50),
(803, 'San Cayetano', 25),
(804, 'San Cayetano', 54),
(805, 'San Cristobal', 13),
(806, 'San Diego', 20),
(807, 'San Eduardo', 15),
(808, 'San Estanislao', 13),
(809, 'San Fernando', 13),
(810, 'San Francisco', 5),
(811, 'San Francisco', 25),
(812, 'San Francisco', 86),
(813, 'San Gíl', 68),
(814, 'San Jacinto', 13),
(815, 'San Jacinto del Cauca', 13),
(816, 'San Jerónimo', 5),
(817, 'San Joaquín', 68),
(818, 'San José', 17),
(819, 'San José de Miranda', 68),
(820, 'San José de Montaña', 5),
(821, 'San José de Pare', 15),
(822, 'San José de Uré', 23),
(823, 'San José del Fragua', 18),
(824, 'San José del Guaviare', 95),
(825, 'San José del Palmar', 27),
(826, 'San Juan de Arama', 50),
(827, 'San Juan de Betulia', 70),
(828, 'San Juan de Nepomuceno', 13),
(829, 'San Juan de Pasto', 52),
(830, 'San Juan de Río Seco', 25),
(831, 'San Juan de Urabá', 5),
(832, 'San Juan del Cesar', 44),
(833, 'San Juanito', 50),
(834, 'San Lorenzo', 52),
(835, 'San Luis', 73),
(836, 'San Luís', 5),
(837, 'San Luís de Gaceno', 15),
(838, 'San Luís de Palenque', 85),
(839, 'San Marcos', 70),
(840, 'San Martín', 20),
(841, 'San Martín', 50),
(842, 'San Martín de Loba', 13),
(843, 'San Mateo', 15),
(844, 'San Miguel', 68),
(845, 'San Miguel', 86),
(846, 'San Miguel de Sema', 15),
(847, 'San Onofre', 70),
(848, 'San Pablo', 13),
(849, 'San Pablo', 52),
(850, 'San Pablo de Borbur', 15),
(851, 'San Pedro', 5),
(852, 'San Pedro', 70),
(853, 'San Pedro', 76),
(854, 'San Pedro de Cartago', 52),
(855, 'San Pedro de Urabá', 5),
(856, 'San Pelayo', 23),
(857, 'San Rafael', 5),
(858, 'San Roque', 5),
(859, 'San Sebastián', 19),
(860, 'San Sebastián de Buenavista', 47),
(861, 'San Vicente', 5),
(862, 'San Vicente del Caguán', 18),
(863, 'San Vicente del Chucurí', 68),
(864, 'San Zenón', 47),
(865, 'Sandoná', 52),
(866, 'Santa Ana', 47),
(867, 'Santa Bárbara', 5),
(868, 'Santa Bárbara', 68),
(869, 'Santa Bárbara (Iscuandé)', 52),
(870, 'Santa Bárbara de Pinto', 47),
(871, 'Santa Catalina', 13),
(872, 'Santa Fé de Antioquia', 5),
(873, 'Santa Genoveva de Docorodó', 27),
(874, 'Santa Helena del Opón', 68),
(875, 'Santa Isabel', 73),
(876, 'Santa Lucía', 8),
(877, 'Santa Marta', 47),
(878, 'Santa María', 15),
(879, 'Santa María', 41),
(880, 'Santa Rosa', 13),
(881, 'Santa Rosa', 19),
(882, 'Santa Rosa de Cabal', 66),
(883, 'Santa Rosa de Osos', 5),
(884, 'Santa Rosa de Viterbo', 15),
(885, 'Santa Rosa del Sur', 13),
(886, 'Santa Rosalía', 99),
(887, 'Santa Sofía', 15),
(888, 'Santana', 15),
(889, 'Santander de Quilichao', 19),
(890, 'Santiago', 54),
(891, 'Santiago', 86),
(892, 'Santo Domingo', 5),
(893, 'Santo Tomás', 8),
(894, 'Santuario', 5),
(895, 'Santuario', 66),
(896, 'Sapuyes', 52),
(897, 'Saravena', 81),
(898, 'Sardinata', 54),
(899, 'Sasaima', 25),
(900, 'Sativanorte', 15),
(901, 'Sativasur', 15),
(902, 'Segovia', 5),
(903, 'Sesquilé', 25),
(904, 'Sevilla', 76),
(905, 'Siachoque', 15),
(906, 'Sibaté', 25),
(907, 'Sibundoy', 86),
(908, 'Silos', 54),
(909, 'Silvania', 25),
(910, 'Silvia', 19),
(911, 'Simacota', 68),
(912, 'Simijaca', 25),
(913, 'Simití', 13),
(914, 'Sincelejo', 70),
(915, 'Sincé', 70),
(916, 'Sipí', 27),
(917, 'Sitionuevo', 47),
(918, 'Soacha', 25),
(919, 'Soatá', 15),
(920, 'Socha', 15),
(921, 'Socorro', 68),
(922, 'Socotá', 15),
(923, 'Sogamoso', 15),
(924, 'Solano', 18),
(925, 'Soledad', 8),
(926, 'Solita', 18),
(927, 'Somondoco', 15),
(928, 'Sonsón', 5),
(929, 'Sopetrán', 5),
(930, 'Soplaviento', 13),
(931, 'Sopó', 25),
(932, 'Sora', 15),
(933, 'Soracá', 15),
(934, 'Sotaquirá', 15),
(935, 'Sotara (Paispamba)', 19),
(936, 'Sotomayor (Los Andes)', 52),
(937, 'Suaita', 68),
(938, 'Suan', 8),
(939, 'Suaza', 41),
(940, 'Subachoque', 25),
(941, 'Sucre', 19),
(942, 'Sucre', 68),
(943, 'Sucre', 70),
(944, 'Suesca', 25),
(945, 'Supatá', 25),
(946, 'Supía', 17),
(947, 'Suratá', 68),
(948, 'Susa', 25),
(949, 'Susacón', 15),
(950, 'Sutamarchán', 15),
(951, 'Sutatausa', 25),
(952, 'Sutatenza', 15),
(953, 'Suárez', 19),
(954, 'Suárez', 73),
(955, 'Sácama', 85),
(956, 'Sáchica', 15),
(957, 'Tabio', 25),
(958, 'Tadó', 27),
(959, 'Talaigua Nuevo', 13),
(960, 'Tamalameque', 20),
(961, 'Tame', 81),
(962, 'Taminango', 52),
(963, 'Tangua', 52),
(964, 'Taraira', 97),
(965, 'Tarazá', 5),
(966, 'Tarqui', 41),
(967, 'Tarso', 5),
(968, 'Tasco', 15),
(969, 'Tauramena', 85),
(970, 'Tausa', 25),
(971, 'Tello', 41),
(972, 'Tena', 25),
(973, 'Tenerife', 47),
(974, 'Tenjo', 25),
(975, 'Tenza', 15),
(976, 'Teorama', 54),
(977, 'Teruel', 41),
(978, 'Tesalia', 41),
(979, 'Tibacuy', 25),
(980, 'Tibaná', 15),
(981, 'Tibasosa', 15),
(982, 'Tibirita', 25),
(983, 'Tibú', 54),
(984, 'Tierralta', 23),
(985, 'Timaná', 41),
(986, 'Timbiquí', 19),
(987, 'Timbío', 19),
(988, 'Tinjacá', 15),
(989, 'Tipacoque', 15),
(990, 'Tiquisio (Puerto Rico)', 13),
(991, 'Titiribí', 5),
(992, 'Toca', 15),
(993, 'Tocaima', 25),
(994, 'Tocancipá', 25),
(995, 'Toguí', 15),
(996, 'Toledo', 5),
(997, 'Toledo', 54),
(998, 'Tolú', 70),
(999, 'Tolú Viejo', 70),
(1000, 'Tona', 68),
(1001, 'Topagá', 15),
(1002, 'Topaipí', 25),
(1003, 'Toribío', 19),
(1004, 'Toro', 76),
(1005, 'Tota', 15),
(1006, 'Totoró', 19),
(1007, 'Trinidad', 85),
(1008, 'Trujillo', 76),
(1009, 'Tubará', 8),
(1010, 'Tuchín', 23),
(1011, 'Tulúa', 76),
(1012, 'Tumaco', 52),
(1013, 'Tunja', 15),
(1014, 'Tunungua', 15),
(1015, 'Turbaco', 13),
(1016, 'Turbaná', 13),
(1017, 'Turbo', 5),
(1018, 'Turmequé', 15),
(1019, 'Tuta', 15),
(1020, 'Tutasá', 15),
(1021, 'Támara', 85),
(1022, 'Támesis', 5),
(1023, 'Túquerres', 52),
(1024, 'Ubalá', 25),
(1025, 'Ubaque', 25),
(1026, 'Ubaté', 25),
(1027, 'Ulloa', 76),
(1028, 'Une', 25),
(1029, 'Unguía', 27),
(1030, 'Unión Panamericana (ÁNIMAS)', 27),
(1031, 'Uramita', 5),
(1032, 'Uribe', 50),
(1033, 'Uribia', 44),
(1034, 'Urrao', 5),
(1035, 'Urumita', 44),
(1036, 'Usiacuri', 8),
(1037, 'Valdivia', 5),
(1038, 'Valencia', 23),
(1039, 'Valle de San José', 68),
(1040, 'Valle de San Juan', 73),
(1041, 'Valle del Guamuez', 86),
(1042, 'Valledupar', 20),
(1043, 'Valparaiso', 5),
(1044, 'Valparaiso', 18),
(1045, 'Vegachí', 5),
(1046, 'Venadillo', 73),
(1047, 'Venecia', 5),
(1048, 'Venecia (Ospina Pérez)', 25),
(1049, 'Ventaquemada', 15),
(1050, 'Vergara', 25),
(1051, 'Versalles', 76),
(1052, 'Vetas', 68),
(1053, 'Viani', 25),
(1054, 'Vigía del Fuerte', 5),
(1055, 'Vijes', 76),
(1056, 'Villa Caro', 54),
(1057, 'Villa Rica', 19),
(1058, 'Villa de Leiva', 15),
(1059, 'Villa del Rosario', 54),
(1060, 'Villagarzón', 86),
(1061, 'Villagómez', 25),
(1062, 'Villahermosa', 73),
(1063, 'Villamaría', 17),
(1064, 'Villanueva', 13),
(1065, 'Villanueva', 44),
(1066, 'Villanueva', 68),
(1067, 'Villanueva', 85),
(1068, 'Villapinzón', 25),
(1069, 'Villarrica', 73),
(1070, 'Villavicencio', 50),
(1071, 'Villavieja', 41),
(1072, 'Villeta', 25),
(1073, 'Viotá', 25),
(1074, 'Viracachá', 15),
(1075, 'Vista Hermosa', 50),
(1076, 'Viterbo', 17),
(1077, 'Vélez', 68),
(1078, 'Yacopí', 25),
(1079, 'Yacuanquer', 52),
(1080, 'Yaguará', 41),
(1081, 'Yalí', 5),
(1082, 'Yarumal', 5),
(1083, 'Yolombó', 5),
(1084, 'Yondó (Casabe)', 5),
(1085, 'Yopal', 85),
(1086, 'Yotoco', 76),
(1087, 'Yumbo', 76),
(1088, 'Zambrano', 13),
(1089, 'Zapatoca', 68),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', 47),
(1091, 'Zaragoza', 5),
(1092, 'Zarzal', 76),
(1093, 'Zetaquirá', 15),
(1094, 'Zipacón', 25),
(1095, 'Zipaquirá', 25),
(1096, 'Zona Bananera (PRADO - SEVILLA)', 47),
(1097, 'Ábrego', 54),
(1098, 'Íquira', 41),
(1099, 'Úmbita', 15),
(1100, 'Útica', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`idperfil` int(11) NOT NULL,
  `perfilFechaCreacion` datetime NOT NULL,
  `perfilfechaUltimaConexion` datetime NOT NULL,
  `perfilUsuario` varchar(45) NOT NULL,
  `perfilPassword` varchar(45) NOT NULL,
  `perfilAvatar` varchar(255) DEFAULT '/img/avatar',
  `rol_idrol` int(11) NOT NULL,
  `persona_idPersona` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idperfil`, `perfilFechaCreacion`, `perfilfechaUltimaConexion`, `perfilUsuario`, `perfilPassword`, `perfilAvatar`, `rol_idrol`, `persona_idPersona`) VALUES
(1, '2019-09-13 19:57:00', '2019-09-13 19:57:00', 'ggiordano', '61c6e88b675325b299759fea3a5df057', '/img/avatar', 1, 2),
(39, '2019-11-03 20:21:01', '2019-11-03 20:21:01', 'mbernal', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 47),
(40, '2019-11-03 20:25:55', '2019-11-03 20:25:55', 'jfabian', '5a684cc9cacce354fb93076e87e2f558', 'img/avatar', 4, 48),
(41, '2019-11-03 20:37:08', '2019-11-03 20:37:08', 'jmarti', '5a684cc9cacce354fb93076e87e2f558', 'img/avatar', 4, 49),
(42, '2019-11-03 20:43:18', '2019-11-03 20:43:18', 'alopez', '5a684cc9cacce354fb93076e87e2f558', 'img/avatar', 4, 50),
(44, '2019-11-03 23:53:45', '2019-11-03 23:53:45', 'ttoress', 'feebd6ef3a4002fe9758dc3cbd4ca285', 'img/avatar', 3, 52),
(45, '2019-11-04 17:13:07', '2019-11-04 17:13:07', 'aluzardo', '86e59cb9f7146d840bd7d4685ddfaefb', 'img/avatar', 3, 53),
(46, '2019-11-05 07:34:33', '2019-11-05 07:34:33', 'arbey', '6d52edc69c8b436c620c5c00c5517cff', 'img/avatar', 4, 54),
(47, '2019-11-24 15:28:43', '2019-11-24 15:28:43', 'agiordano', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 4, 55),
(48, '2019-11-25 21:38:02', '2019-11-25 21:38:02', 'EGELV', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 56),
(238, '2019-11-25 22:24:18', '2019-11-25 22:24:18', 'JRODR', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 246),
(239, '2019-11-25 22:24:18', '2019-11-25 22:24:18', 'PABLOPRA', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 247),
(240, '2019-11-25 22:24:18', '2019-11-25 22:24:18', 'AGAMB', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 248),
(241, '2019-11-25 22:24:18', '2019-11-25 22:24:18', 'MCORD', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 249),
(242, '2019-11-25 22:24:18', '2019-11-25 22:24:18', 'EMOLI', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 250),
(243, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'OGALL', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 251),
(244, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'MVERA', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 252),
(245, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'MBORR', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 253),
(246, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'OVALB', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 254),
(247, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'FSAEN', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 255),
(248, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'AFLOR', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 256),
(249, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'CHERN', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 257),
(250, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'APUEN', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 258),
(251, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'WANGA', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 259),
(252, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'OENRI', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 260),
(253, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'JCHAC', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 261),
(254, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'MFLOR', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 262),
(255, '2019-11-25 22:24:19', '2019-11-25 22:24:19', 'CPERE', '61c6e88b675325b299759fea3a5df057', 'img/avatar', 3, 263),
(256, '2019-11-27 10:12:50', '2019-11-27 10:12:50', 'kellyjaimes', '08d5dc0f0299389757c86b4aedc3aaed', 'img/avatar', 4, 264),
(257, '2019-12-02 20:01:31', '2019-12-02 20:01:31', 'karla', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 265),
(258, '2019-12-02 20:02:17', '2019-12-02 20:02:17', 'monica', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 266),
(259, '2019-12-02 20:02:57', '2019-12-02 20:02:57', 'miguel', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 267),
(260, '2019-12-02 20:03:38', '2019-12-02 20:03:38', 'angela', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 268),
(261, '2019-12-02 20:04:28', '2019-12-02 20:04:28', 'jessica', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 269),
(262, '2019-12-02 20:05:06', '2019-12-02 20:05:06', 'diego', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 270),
(263, '2019-12-02 20:05:50', '2019-12-02 20:05:50', 'jesus', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 271),
(264, '2019-12-02 20:06:39', '2019-12-02 20:06:39', 'josefermin', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 272),
(265, '2019-12-04 10:52:39', '2019-12-04 10:52:39', 'daniela', 'f8d201c605fbb5d24336b10e5e121e4b', 'img/avatar', 4, 273);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
`idPersona` int(11) NOT NULL,
  `personaNombres` varchar(45) NOT NULL,
  `personaApellidos` varchar(45) NOT NULL,
  `tipoDocumento_idTipoDocumento` int(11) NOT NULL,
  `personaDocumento` varchar(45) NOT NULL,
  `personaDireccion` varchar(255) DEFAULT NULL,
  `municipio_idMunicipio` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `personaEstado` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `personaNombres`, `personaApellidos`, `tipoDocumento_idTipoDocumento`, `personaDocumento`, `personaDireccion`, `municipio_idMunicipio`, `email`, `personaEstado`) VALUES
(2, 'GIANFRANCO', 'GIORDANO PADRON', 2, '490071', 'CLL 17 #3a-89 CASA H2', 1059, 'gianfrancogiordano@gmail.com', 1),
(47, 'MARIA CARLOTA', 'BERNAL JIMENEZ', 1, '1234567890', 'Av. 12 #20-123 Br. La playa', 275, 'm.bernal@unisimonbolivar.edu.co', 1),
(48, 'FABIAN GERARDO', 'JAIMES', 1, '8900123443', 'Av 11 Br. San Martin', 275, 'fabian_14@gmail.com', 1),
(49, 'JAVIER TOMAS', 'MARTI GARCIA-HERREROS', 1, '1234555432', 'CLL 11 #12-12', 275, 'javiermarti@gmail.com', 1),
(50, 'HARWIN ALEXIS', 'REY LOPEZ', 1, '123332321', 'Av. 15 #3a-78 Br. La libertad', 275, 'reylopez@unisimoncucuta.edu.co', 1),
(52, 'INGRID TATIANA', 'TORRES GIL', 1, '1090429639', 'CLL 17 #3A-89 CASA H2', 275, 'arqui_torress@hotmail.com', 1),
(53, 'ALEJANDRO GABRIEL', 'LUZARDO DIAZ', 1, '1527629043', 'calle 0an 1e-107 quinta bosh', 714, 'alejandroluzardo@gmail.com', 1),
(54, 'ARVEY', 'VERGEL', 1, '1090494762', 'cucuta', 275, 'arbey@gmail.com', 1),
(55, 'ADRIANNA', 'GIORDANO', 2, '490088', 'CLL 17 #3A-89 CASA H2', 1059, 'adrianna@gmail.com', 1),
(56, 'ELKIN', 'GELVEZ ALMEIDA', 1, '123456789', 'cucuta', 275, 'profesor@unisimoncucuta.edu.co', 1),
(246, 'JOHEL ENRIQUE', 'RODRIGUEZ FERNANDEZ', 1, '1098882332', 'cucuta', 275, 'profesor2@unisimoncucuta.edu.co', 1),
(247, 'PABLO CESAR', ' PRADA LUNA', 1, '1090229122', 'cucuta', 275, 'profesor3@unisimoncucuta.edu.co', 1),
(248, 'ANDRES SEBASTIAN', 'GAMBOA ALDANA', 1, '1887122212', 'cucuta', 275, 'profesor4@unisimoncucuta.edu.co', 1),
(249, 'MARTHA FERNANDA', 'CORDERO SANCHEZ', 1, '122323332', 'cucuta', 275, 'profesor5@unisimoncucuta.edu.co', 1),
(250, 'ERIKA LORENA', 'MOLINA RINCON', 1, '18875543199', 'cucuta', 275, 'profesor6@unisimoncucuta.edu.co', 1),
(251, 'OSCAR ALBERTO', 'GALLARDO PEREZ', 1, '1988900912', 'cucuta', 275, 'profesor7@unisimoncucuta.edu.co', 1),
(252, 'MIGUEL ANGEL', 'VERA', 1, '1234534890', 'cucuta', 275, 'profesor8@unisimoncucuta.edu.co', 1),
(253, 'MARYURI ASTRID', 'BORRERO RODRIGUEZ', 1, '887122212', 'cucuta', 275, 'profesor9@unisimoncucuta.edu.co', 1),
(254, 'OSCAR', 'VALBUENA PRADA', 1, '898823372', 'cucuta', 275, 'profesor10@unisimoncucuta.edu.co', 1),
(255, 'FRANK HERNANDO', 'SAENZ PENA', 1, '1098722212', 'cucuta', 275, 'profesor11@unisimoncucuta.edu.co', 1),
(256, 'ANDERSON SMITH', 'FLOREZ FUENTES', 1, '1097621221', 'cucuta', 275, 'profesor12@unisimoncucuta.edu.co', 1),
(257, 'CARLOS FERNANDO', 'HERNANDEZ MORANTES', 1, '10998123312', 'cucuta', 275, 'profesor13@unisimoncucuta.edu.co', 1),
(258, 'ANDRES MAURICIO', 'PUENTES VELASQUEZ', 1, '1067122331', 'cucuta', 275, 'profesor14@unisimoncucuta.edu.co', 1),
(259, 'WILMAR', 'ANGARITA BAUTISTA', 1, '1098872212', 'cucuta', 275, 'profesor15@unisimoncucuta.edu.co', 1),
(260, 'OSWALDO', 'ENRIQUE LAGUADO AGUILAR', 1, '187772261', 'cucuta', 275, 'profesor16@unisimoncucuta.edu.co', 1),
(261, 'JOSE GERARDO', 'CHACON RANGEL', 1, '190981222312', 'cucuta', 275, 'profesor17@unisimoncucuta.edu.co', 1),
(262, 'MARCELA LEONOR', 'FLOREZ ROMERO', 1, '109987712312', 'cucuta', 275, 'profesor18@unisimoncucuta.edu.co', 1),
(263, 'CIRO ALFONSO', 'PEREZ', 1, '18988123312', 'cucuta', 275, 'profesor19@unisimoncucuta.edu.co', 1),
(264, 'KELLY NATALIA', 'JAIMES CASTRO', 1, '1090456236', 'calle 5 # 6-38 san martin', 275, 'kelly_jaimes@gmail.com', 1),
(265, 'KARLA', 'CLAVIJO CARRERO', 1, '1090435545', 'cucuta', 257, 'karla#gmail.com', 1),
(266, 'MóNICA', 'TORRADO CONTRERAS', 1, '109123445432', 'cucuta', 184, 'monica@gmail.com', 1),
(267, 'MIGUEL CAMILO', 'BAUTISTA RIVERA', 1, '109022212231', 'cucuta', 257, 'miguel', 1),
(268, 'ANGELA PATRICIA', ' MONSALVE PAEZ', 1, '123338128218', 'cucuta', 257, 'angela@uni.com', 1),
(269, 'JESSICA PAOLA', ' ARANGO PEñARANDA', 1, '10933887765', 'cucuta', 257, 'jessica@uni.com', 1),
(270, 'DIEGO ANDRéS', 'MORA MOLINA', 2, '109711123312', 'cucuta', 257, 'diego@uni.com', 1),
(271, 'JESúS DARíO', ' BOTELLO JAIMES', 1, '10981223312', 'cucutan', 257, 'jesus@uni.com', 1),
(272, 'JOSé FERMíN', 'MENDOZA AGUDELO', 1, '10899988873', 'cucuta', 257, 'josefermin@uni.com', 1),
(273, 'DANIELA', 'OVALLES SALAZAR', 1, '1090476307', 'Av 11 Br. San Martin', 275, 'daniela@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`profesorId` int(11) NOT NULL,
  `profeFechaIngreso` datetime NOT NULL,
  `profeRfid` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `profeQr` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `profeTitulo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona_idPersona` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`profesorId`, `profeFechaIngreso`, `profeRfid`, `profeQr`, `profeTitulo`, `persona_idPersona`) VALUES
(5, '2019-11-03 20:21:01', '0004443642', '0004443642', 'Lic. Computación', 47),
(6, '2019-11-03 23:53:45', '0001234567', '000123456789', 'Arquitecta', 52),
(7, '2019-11-04 17:13:07', '0001234567890', '0001234567890', 'Lic. administración de empresas', 53),
(8, '2019-11-25 21:38:02', '00009887654', '00009887654', 'ingeniero', 56),
(198, '2019-11-25 22:24:18', '2143225873', '597217844', 'ingeniero', 246),
(199, '2019-11-25 22:24:18', '1783490079', '1382770365', 'ingeniero', 247),
(200, '2019-11-25 22:24:18', '117214497', '1604470258', 'ingeniero', 248),
(201, '2019-11-25 22:24:18', '720630181', '873568573', 'ingeniero', 249),
(202, '2019-11-25 22:24:18', '2053848116', '1443031879', 'ingeniero', 250),
(203, '2019-11-25 22:24:19', '306951756', '1130543673', 'ingeniero', 251),
(204, '2019-11-25 22:24:19', '4319644', '2043341117', 'ingeniero', 252),
(205, '2019-11-25 22:24:19', '2126648783', '230314729', 'ingeniero', 253),
(206, '2019-11-25 22:24:19', '1905488795', '1873250008', 'ingeniero', 254),
(207, '2019-11-25 22:24:19', '1886553667', '1037006170', 'ingeniero', 255),
(208, '2019-11-25 22:24:19', '1007505414', '1100045356', 'ingeniero', 256),
(209, '2019-11-25 22:24:19', '695294106', '1206037876', 'ingeniero', 257),
(210, '2019-11-25 22:24:19', '796614069', '1508916284', 'ingeniero', 258),
(211, '2019-11-25 22:24:19', '1854671371', '1152647657', 'ingeniero', 259),
(212, '2019-11-25 22:24:19', '805224052', '2011589476', 'ingeniero', 260),
(213, '2019-11-25 22:24:19', '1462871615', '800966277', 'ingeniero', 261),
(214, '2019-11-25 22:24:19', '461323672', '1098878046', 'ingeniero', 262),
(215, '2019-11-25 22:24:19', '36252995', '578538169', 'ingeniero', 263);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`programa_id` int(11) NOT NULL,
  `programa_nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `programa_facultad_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`programa_id`, `programa_nombre`, `programa_facultad_id`) VALUES
(1, 'Ingenieria de Sistemas', 1),
(2, 'Ingenieria Multimedia', 1),
(3, 'Ingenieria Industrial', 1),
(4, 'Derecho', 2),
(5, 'Psicología', 2),
(6, 'Trabajo Social', 2),
(7, 'Ciencias Básicas', 4),
(8, 'Administración de Empresas', 3),
(9, 'Comercio y Negocios Internacionales', 3),
(10, 'Contaduría Pública', 3),
(11, 'Ciencias Sociales y Humanas', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
`idrol` int(11) NOT NULL,
  `rolDescripcion` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `rolDescripcion`) VALUES
(1, 'SUPERUSER'),
(2, 'ADMINISTRADOR'),
(3, 'PROFESOR'),
(4, 'ALUMNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE IF NOT EXISTS `salon` (
`idsalon` int(11) NOT NULL,
  `salonNum` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `salonDescripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `salonNumeroPcs` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`idsalon`, `salonNum`, `salonDescripcion`, `salonNumeroPcs`, `id_sede`) VALUES
(1, '101', 'Salon Tecnologico', 30, 4),
(2, '102', 'Salon Tecnologico', 30, 4),
(3, '201', 'Salon Conferencia', 0, 3),
(4, '202', 'Salon Conferencia', 0, 3),
(5, '203', 'N/A', 0, 3),
(6, '204', 'N/A', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
`sede_id` int(11) NOT NULL,
  `sede_descripcion` varchar(3) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`sede_id`, `sede_descripcion`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE IF NOT EXISTS `semestre` (
`sem_id` int(11) NOT NULL,
  `sem_fecha_inicio` date NOT NULL,
  `sem_fecha_fin` date NOT NULL,
  `sem_periodo` int(11) NOT NULL,
  `sem_descrip` varchar(45) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`sem_id`, `sem_fecha_inicio`, `sem_fecha_fin`, `sem_periodo`, `sem_descrip`) VALUES
(1, '2019-02-04', '2019-05-24', 1, '2019-1'),
(2, '2019-08-05', '2019-11-22', 2, '2019-2'),
(3, '2019-08-26', '2020-03-06', 1, '2020-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE IF NOT EXISTS `telefono` (
`idTelefono` int(11) NOT NULL,
  `telefonoNumero` varchar(45) NOT NULL,
  `telefonoTipoTelefono` varchar(45) NOT NULL,
  `persona_idPersona` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idTelefono`, `telefonoNumero`, `telefonoTipoTelefono`, `persona_idPersona`) VALUES
(1, '3043814514', 'celular', 2),
(38, '30012345677', 'Casa', 47),
(39, '3103533167', 'Casa', 48),
(40, '30012344453', 'Casa', 49),
(41, '30012344321', 'Casa', 50),
(43, '3002359748', 'Casa', 52),
(44, '3176369425', 'Celular', 53),
(45, '300123123123', 'Casa', 54),
(46, '300455453', 'Casa', 55),
(47, '03715555456', 'casa', 56),
(237, '03715555456', 'casa', 246),
(238, '03715555456', 'casa', 247),
(239, '03715555456', 'casa', 248),
(240, '03715555456', 'casa', 249),
(241, '03715555456', 'casa', 250),
(242, '03715555456', 'casa', 251),
(243, '03715555456', 'casa', 252),
(244, '03715555456', 'casa', 253),
(245, '03715555456', 'casa', 254),
(246, '03715555456', 'casa', 255),
(247, '03715555456', 'casa', 256),
(248, '03715555456', 'casa', 257),
(249, '03715555456', 'casa', 258),
(250, '03715555456', 'casa', 259),
(251, '03715555456', 'casa', 260),
(252, '03715555456', 'casa', 261),
(253, '03715555456', 'casa', 262),
(254, '03715555456', 'casa', 263),
(255, '3125285403', 'Casa', 264),
(256, '4949494', 'Casa', 265),
(257, '0000', 'Casa', 266),
(258, '18918181', 'Casa', 267),
(259, '99999', 'Casa', 268),
(260, '2828282', 'Casa', 269),
(261, '3838383', 'Casa', 270),
(262, '3838338', 'Casa', 271),
(263, '123313231', 'Casa', 272),
(264, '3002342431', 'Casa', 273);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoDocumento`
--

CREATE TABLE IF NOT EXISTS `tipoDocumento` (
`idTipoDocumento` int(11) NOT NULL,
  `tipoDocumentoDescripcion` varchar(45) NOT NULL,
  `tipoDocumentoEstado` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoDocumento`
--

INSERT INTO `tipoDocumento` (`idTipoDocumento`, `tipoDocumentoDescripcion`, `tipoDocumentoEstado`) VALUES
(1, 'C.C', 1),
(2, 'C.E', 1),
(3, 'NIT', 1),
(4, 'OTRO', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
 ADD PRIMARY KEY (`alumnoId`), ADD KEY `fk_alumno_persona_idx` (`persona_idPersona`), ADD KEY `alumno_programa_id` (`alumno_programa_id`);

--
-- Indices de la tabla `alumno_has_curso`
--
ALTER TABLE `alumno_has_curso`
 ADD PRIMARY KEY (`alumno_alumnoId`,`curso_cursoId`), ADD KEY `fk_alumno_has_curso_curso1_idx` (`curso_cursoId`), ADD KEY `fk_alumno_has_curso_alumno1_idx` (`alumno_alumnoId`), ADD KEY `id_profesor_curso` (`id_profesor_curso`);

--
-- Indices de la tabla `alumno_has_lista`
--
ALTER TABLE `alumno_has_lista`
 ADD PRIMARY KEY (`alumno_alumnoId`,`lista_idlista`), ADD KEY `fk_alumno_has_lista_lista1_idx` (`lista_idlista`), ADD KEY `fk_alumno_has_lista_alumno1_idx` (`alumno_alumnoId`);

--
-- Indices de la tabla `calendario_dias`
--
ALTER TABLE `calendario_dias`
 ADD PRIMARY KEY (`dias_cal_id`);

--
-- Indices de la tabla `calendario_horario`
--
ALTER TABLE `calendario_horario`
 ADD PRIMARY KEY (`idhorario`), ADD KEY `id_cal_dias` (`id_cal_dias`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
 ADD PRIMARY KEY (`cursoId`), ADD KEY `curso_programa_id` (`curso_programa_id`);

--
-- Indices de la tabla `curso_x_calendario`
--
ALTER TABLE `curso_x_calendario`
 ADD PRIMARY KEY (`id_curso`,`id_calendario`), ADD KEY `id_curso` (`id_curso`,`id_calendario`), ADD KEY `id_curso_2` (`id_curso`), ADD KEY `id_calendario` (`id_calendario`), ADD KEY `id_curso_3` (`id_curso`), ADD KEY `id_calendario_2` (`id_calendario`);

--
-- Indices de la tabla `curso_x_profesor`
--
ALTER TABLE `curso_x_profesor`
 ADD PRIMARY KEY (`id_curso`,`id_profesor`), ADD KEY `id_curso` (`id_curso`), ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
 ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
 ADD PRIMARY KEY (`facultad_id`);

--
-- Indices de la tabla `lista`
--
ALTER TABLE `lista`
 ADD PRIMARY KEY (`idlista`), ADD KEY `fk_lista_curso_idx` (`curso_cursoId`), ADD KEY `fk_lista_salon1_idx` (`salon_idsalon`), ADD KEY `id_semestre` (`id_semestre`), ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
 ADD PRIMARY KEY (`idMunicipio`,`departamento_idDepartamento`), ADD KEY `fk_municipio_departamento1_idx` (`departamento_idDepartamento`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`idperfil`,`rol_idrol`,`persona_idPersona`), ADD UNIQUE KEY `perfilUsuario` (`perfilUsuario`), ADD KEY `fk_perfil_rol1_idx` (`rol_idrol`), ADD KEY `fk_perfil_persona1_idx` (`persona_idPersona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`idPersona`,`municipio_idMunicipio`), ADD UNIQUE KEY `idpersona_UNIQUE` (`idPersona`), ADD UNIQUE KEY `personaDocumento` (`personaDocumento`), ADD UNIQUE KEY `email` (`email`), ADD KEY `fk_persona_tipoDocumento_idx` (`tipoDocumento_idTipoDocumento`), ADD KEY `fk_persona_municipio1_idx` (`municipio_idMunicipio`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`profesorId`), ADD KEY `fk_profesor_persona1_idx` (`persona_idPersona`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`programa_id`), ADD KEY `programa_facultad_id` (`programa_facultad_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
 ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
 ADD PRIMARY KEY (`idsalon`), ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
 ADD PRIMARY KEY (`sede_id`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
 ADD PRIMARY KEY (`sem_id`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
 ADD PRIMARY KEY (`idTelefono`), ADD UNIQUE KEY `idtelefono_UNIQUE` (`idTelefono`), ADD KEY `fk_telefono_persona1_idx` (`persona_idPersona`);

--
-- Indices de la tabla `tipoDocumento`
--
ALTER TABLE `tipoDocumento`
 ADD PRIMARY KEY (`idTipoDocumento`), ADD UNIQUE KEY `idtipo_documento_UNIQUE` (`idTipoDocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
MODIFY `alumnoId` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121327506;
--
-- AUTO_INCREMENT de la tabla `calendario_horario`
--
ALTER TABLE `calendario_horario`
MODIFY `idhorario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
MODIFY `cursoId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
MODIFY `facultad_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `lista`
--
ALTER TABLE `lista`
MODIFY `idlista` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
MODIFY `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1101;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `profesorId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
MODIFY `programa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
MODIFY `idsalon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
MODIFY `sede_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT de la tabla `tipoDocumento`
--
ALTER TABLE `tipoDocumento`
MODIFY `idTipoDocumento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
ADD CONSTRAINT `fk_alumno_persona` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_alumno_programa_id` FOREIGN KEY (`alumno_programa_id`) REFERENCES `programa` (`programa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_has_curso`
--
ALTER TABLE `alumno_has_curso`
ADD CONSTRAINT `fk_alumno_has_curso_alumno1` FOREIGN KEY (`alumno_alumnoId`) REFERENCES `alumno` (`alumnoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_alumno_has_curso_curso1` FOREIGN KEY (`curso_cursoId`) REFERENCES `curso` (`cursoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_id_profesor_curso` FOREIGN KEY (`id_profesor_curso`) REFERENCES `profesor` (`profesorId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_has_lista`
--
ALTER TABLE `alumno_has_lista`
ADD CONSTRAINT `fk_alumno_has_lista_alumno1` FOREIGN KEY (`alumno_alumnoId`) REFERENCES `alumno` (`alumnoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_alumno_has_lista_lista1` FOREIGN KEY (`lista_idlista`) REFERENCES `lista` (`idlista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calendario_horario`
--
ALTER TABLE `calendario_horario`
ADD CONSTRAINT `fk_calendario_dias_id` FOREIGN KEY (`id_cal_dias`) REFERENCES `calendario_dias` (`dias_cal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
ADD CONSTRAINT `fk_curso_programa_id` FOREIGN KEY (`curso_programa_id`) REFERENCES `programa` (`programa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso_x_calendario`
--
ALTER TABLE `curso_x_calendario`
ADD CONSTRAINT `fk_calendario_id` FOREIGN KEY (`id_calendario`) REFERENCES `calendario_horario` (`idhorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_curso_id` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`cursoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso_x_profesor`
--
ALTER TABLE `curso_x_profesor`
ADD CONSTRAINT `fk_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`cursoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`profesorId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lista`
--
ALTER TABLE `lista`
ADD CONSTRAINT `fk_id_semestre` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`sem_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_lista_curso` FOREIGN KEY (`curso_cursoId`) REFERENCES `curso` (`cursoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_lista_salon1` FOREIGN KEY (`salon_idsalon`) REFERENCES `salon` (`idsalon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_profesor_id` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`profesorId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
ADD CONSTRAINT `fk_municipio_departamento1` FOREIGN KEY (`departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
ADD CONSTRAINT `fk_perfil_persona1` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_perfil_rol1` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
ADD CONSTRAINT `fk_persona_municipio1` FOREIGN KEY (`municipio_idMunicipio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_persona_tipoDocumento` FOREIGN KEY (`tipoDocumento_idTipoDocumento`) REFERENCES `tipoDocumento` (`idTipoDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
ADD CONSTRAINT `fk_profesor_persona1` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
ADD CONSTRAINT `fk_programa_facultad_id` FOREIGN KEY (`programa_facultad_id`) REFERENCES `facultad` (`facultad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `salon`
--
ALTER TABLE `salon`
ADD CONSTRAINT `fk_id_sede` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`sede_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
ADD CONSTRAINT `fk_telefono_persona1` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
