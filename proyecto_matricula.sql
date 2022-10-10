-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-10-2022 a las 17:24:10
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_matricula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Genero` varchar(255) NOT NULL,
  `Grado` varchar(255) NOT NULL,
  `Seccion` varchar(255) NOT NULL,
  `FechaMatricula` date NOT NULL,
  `DNI` varchar(30) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `Nombres`, `Apellidos`, `Telefono`, `FechaNacimiento`, `Genero`, `Grado`, `Seccion`, `FechaMatricula`, `DNI`, `Email`, `Direccion`) VALUES
(1, 'Alexis', 'Zevallos', '12312313', '2022-10-12', 'Masculino', 'Primero', 'A', '2022-10-12', '459354', 'aaaaaaa@gmail.com', 'calle las rosas 123'),
(2, 'Juan', 'Alvarez', '99874552', '2004-10-19', 'Masculino', 'Primero', 'A', '2022-10-13', '123123', 'juanalvarez@gmail.com', 'Calle las bedodinas 123'),
(3, 'Maria', 'Juares', '96358741', '2006-04-18', 'Femenino', 'Segundo', 'D', '2022-10-03', '213123', 'Mariajuares@gmail.com', 'Calle los girasoles 4321'),
(4, 'Alexis Sebastian', 'Zevallos Pacheco', '94814124', '2003-10-16', 'Masculino', 'Tercero', 'C', '2022-10-07', '4587963', 'azp@gmail.com', 'Av. San Juan 123'),
(5, 'Sebastian', 'Zevallos', '96421478', '2022-10-07', 'Masculino', 'Cuarto', 'E', '2022-10-17', '78541120', 'alexis@gmail.com,', 'Calle San Juan 555'),
(6, 'Juan', 'Perez', '13414', '2022-10-18', 'Masculino', 'Primero', 'A', '2022-10-03', '3414', 'Juanperez123@gmail.com', 'Calle Canevaro 431'),
(7, 'Sebastian', 'Zevallos', '987654336', '1999-10-14', 'Masculino', 'Tercero', 'A', '2022-10-09', '5569874', 'SZevallos@gmail.com', 'Jiron Canevaro 235'),
(8, 'Juan', 'Perez', '987456321', '2003-10-14', 'Masculino', 'Tercero', 'C', '2022-10-10', '78659321', 'JPerez@gmail.com', 'Calle las rosas 123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaalumnos`
--

DROP TABLE IF EXISTS `listaalumnos`;
CREATE TABLE IF NOT EXISTS `listaalumnos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Teléfono` varchar(255) NOT NULL,
  `Fecha Nacimiento` date NOT NULL,
  `Género` varchar(255) NOT NULL,
  `Grado Anterior` varchar(255) NOT NULL,
  `Sección Anterior` varchar(255) NOT NULL,
  `DNI` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `listaalumnos`
--

INSERT INTO `listaalumnos` (`id`, `Nombres`, `Apellidos`, `Teléfono`, `Fecha Nacimiento`, `Género`, `Grado Anterior`, `Sección Anterior`, `DNI`, `Email`, `direccion`) VALUES
(1, 'Jael', 'Angulo Polanco', '9752 5561', '2003-03-13', 'Masculino', 'Segundo', 'A', '78443214', 'JaelAnguloPolanco@rhyta.com', 'Del Sauzal 4924\r\n94006 Mendoza Chico'),
(2, 'Abo', 'Castaneda Méndez', '96229257', '1999-01-26', 'Masculino', 'Cuarto', 'A', '87652145', 'AboCastanedaMendez@superrito.com', 'Paso Rivero 5971\r\n90602 Treinta y Tres Orientales'),
(3, 'Ayelén', 'Riojas Lucero', '987654233', '2005-04-23', 'Femenino', 'Segundo', 'B', '36458721', 'AyelenRiojasLucero@gmail.com', 'Colón 2919\r\n27100 Chuy'),
(4, 'Valentine', 'Cantú Meraz', '9442 9967', '2006-04-12', 'Femenino', 'Tercero', 'A', '69325874', 'ValentineCantuMeraz@gmail.com', 'Ombù 9138\r\n70004 Conchillas'),
(5, 'Pura', 'Coronado Perales', '9368 6355', '2004-10-10', 'Femenino', 'Primero', 'C', '78542166', 'PuraCoronadoPerales@gmail.com', 'Parva Domus 5727\r\n45200 San Gregorio de Polanco'),
(6, 'Irma', 'Menchaca Ordóñez', '9419 8130', '2002-06-13', 'Femenino', 'Segundo', 'A', '21546358', 'IrmaMenchacaOrdonez@gmail.com', 'Hugo Reta 9780\r\n75005 Villa de Soriano'),
(7, 'Micael', 'Saenz Lucio', '9926 1655', '2003-10-16', 'Masculino', 'Cuarto', 'D', '36524755', 'MicaelSaenzLucio@gmail.com', 'Del Sauzal 2776\r\n60009 Merinos'),
(8, 'Fabiola', 'Cano Betancourt', '9590 1558', '2005-08-16', 'Femenino', 'Primero', 'C', '25459658', 'FabiolaCanoBetancourt@gmail.com', 'Rincon 9205\r\n97003 Carlos Reyles'),
(9, 'Cenobio', 'Carrero Luján', '9521 1580', '2003-10-08', 'Masculino', 'Segundo', 'A', '65875421', 'CenobioCarreroLujan@gmail.com', 'Joaquin Suarez 1867\r\n70002 Artilleros'),
(10, 'Martina', 'Esquivel Manzanares', '\r\n9972 4359', '2008-07-17', 'Femenino', 'Cuarto', 'B', '25458799', 'MartinaEsquivelManzanares@gmail.com', 'Brisas 7198\r\n30302 María Albina');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id`) REFERENCES `listaalumnos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
