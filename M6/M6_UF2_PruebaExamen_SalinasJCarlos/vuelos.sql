-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2020 a las 00:46:49
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vuelos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarVuelos` ()  NO SQL
SELECT * FROM vuelo WHERE FECHA_VUELO < '2020-02-17'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasaje`
--

CREATE TABLE `pasaje` (
  `PASAJERO_COD` smallint(6) NOT NULL,
  `IDENTIFICADOR` varchar(10) NOT NULL,
  `NUMASIENTO` smallint(6) DEFAULT NULL,
  `CLASE` varchar(10) DEFAULT NULL,
  `PVP` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasaje`
--

INSERT INTO `pasaje` (`PASAJERO_COD`, `IDENTIFICADOR`, `NUMASIENTO`, `CLASE`, `PVP`) VALUES
(1, 'BRU-1234', 20, 'TURISTA', 180),
(1, 'IBE-762', 10, 'PRIMERA', 200),
(1, 'KLM-332', 20, 'PRIMERA', 180),
(2, 'BRU-1234', 21, 'PRIMERA', 190),
(2, 'IBE-762', 11, 'PRIMERA', 200),
(2, 'KLM-332', 30, 'TURISTA', 170),
(3, 'BRU-1234', 23, 'PRIMERA', 220),
(3, 'IBE-762', 13, 'PRIMERA', 220),
(3, 'KLM-332', 33, 'PRIMERA', 180),
(4, 'BRU-1234', 24, 'TURISTA', 230),
(4, 'IBE-762', 14, 'TURISTA', 230),
(5, 'BRU-1234', 16, 'TURISTA', 250),
(5, 'IBE-762', 16, 'TURISTA', 250),
(6, 'BRU-1234', 25, 'TURISTA', 260),
(6, 'IBE-762', 25, 'TURISTA', 260),
(7, 'IBE-762', 27, 'BUSINESS', 280),
(8, 'KLM-2343', 12, 'TURISTA', 180),
(9, 'KLM-2343', 13, 'PRIMERA', 190),
(10, 'KLM-2343', 14, 'PRIMERA', 220),
(10, 'KLM-332', 34, 'PRIMERA', 220),
(11, 'KLM-2343', 15, 'TURISTA', 230),
(11, 'KLM-332', 35, 'TURISTA', 160),
(12, 'KLM-2343', 36, 'TURISTA', 250),
(12, 'KLM-332', 36, 'TURISTA', 150),
(13, 'KLM-2343', 37, 'TURISTA', 260),
(14, 'KLM-2343', 38, 'BUSINESS', 250),
(15, 'AVI-ASD', 30, 'TURISTA', 170),
(15, 'KLM-2343', 39, 'BUSINESS', 260),
(16, 'AVI-ASD', 33, 'PRIMERA', 180),
(16, 'KLM-2343', 40, 'BUSINESS', 270),
(17, 'AVI-ASD', 34, 'PRIMERA', 220),
(17, 'KLM-2343', 41, 'BUSINESS', 260),
(18, 'AVI-ASD', 35, 'TURISTA', 160),
(18, 'IBE-789', 10, 'TURISTA', 170),
(19, 'AVI-ASD', 36, 'TURISTA', 150),
(19, 'IBE-789', 13, 'PRIMERA', 180),
(20, 'AVI-ASD', 37, 'TURISTA', 180),
(20, 'IBE-789', 14, 'PRIMERA', 220),
(20, 'KLM-332', 37, 'TURISTA', 180),
(20, 'QAT-900', 10, 'TURISTA', 100),
(21, 'AVI-ASD', 58, 'BUSINESS', 170),
(21, 'IBE-789', 15, 'TURISTA', 240),
(21, 'KLM-332', 58, 'BUSINESS', 170),
(21, 'QAT-900', 20, 'BUSINESS', 170),
(22, 'AVI-ASD', 59, 'BUSINESS', 170),
(22, 'IBE-789', 46, 'TURISTA', 230),
(22, 'KLM-332', 59, 'BUSINESS', 170),
(22, 'QAT-900', 25, 'BUSINESS', 170),
(23, 'AVI-ASD', 40, 'TURISTA', 120),
(23, 'IBE-789', 47, 'TURISTA', 270),
(23, 'KLM-332', 40, 'TURISTA', 120),
(23, 'QAT-900', 40, 'TURISTA', 100),
(24, 'AVI-ASD', 68, 'BUSINESS', 220),
(24, 'IBE-789', 48, 'BUSINESS', 220),
(24, 'KLM-332', 68, 'BUSINESS', 220),
(24, 'QAT-900', 30, 'BUSINESS', 220),
(25, 'AVI-ASD', 69, 'BUSINESS', 230),
(25, 'IBE-789', 49, 'BUSINESS', 230),
(25, 'KLM-332', 69, 'BUSINESS', 230),
(25, 'QAT-900', 35, 'BUSINESS', 230),
(26, 'AVI-ASD', 41, 'TURISTA', 120),
(26, 'IBE-789', 50, 'TURISTA', 220),
(26, 'KLM-332', 41, 'TURISTA', 120),
(26, 'QAT-900', 41, 'PRIMERA', 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `COD` smallint(6) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `TLF` varchar(10) DEFAULT NULL,
  `DIRECCION` varchar(40) DEFAULT NULL,
  `PAIS` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`COD`, `NOMBRE`, `TLF`, `DIRECCION`, `PAIS`) VALUES
(1, 'ATONIO MART?NEZ', '123456', 'AVDA MADRID 2, 2?A, TALAVERA', 'ESPA?A'),
(2, 'MARIA DUE?AS', '444456', 'AVDA ALFARES 4, 8?A, MADRID', 'ESPA?A'),
(3, 'CARLOS GIL', '568956', 'C/ALAMEDA 20, MADRID', 'ESPA?A'),
(4, 'MARIA JIMENEZ', '990456', 'C/LA MONTERA 50, TALAVERA', 'ESPA?A'),
(5, 'ROSARIO FORES', '123888', 'C/LA RIADA 3, ALCORC?N', 'ESPA?A'),
(6, 'ALICIA RAMOS', '66688', 'C/LOS PINTORES 10, TALAVERA', 'ESPA?A'),
(7, 'ANA FUENTES', '8903456', 'C/LA REINA 34, MADRID', 'FRANCIA'),
(8, 'PETRA ALONSO', '222456', 'AVDA MADRID 32, 2?A, TALAVERA', 'FRANCIA'),
(9, 'ANGEL GIL', '444026', 'AVDA ALFARES 14, 8?A, MADRID', 'FRANCIA'),
(10, 'MARTIN PESACADOR', '238956', 'C/ALAMEDA 21, MADRID', 'FRANCIA'),
(11, 'LUIS CABRERO', '130456', 'C/LA CAPA 50, TALAVERA', 'FRANCIA'),
(12, 'JES?S GINER FORES', '23888', 'C/LA REJA 4, ALCORC?N', 'FRANCIA'),
(13, 'CARMEN RAMI', '6668809', 'C/LOS SAUCES 10, TALAVERA', 'PORTUGAL'),
(14, 'FELIME PRIMERO', '89803456', 'C/LA ROSA 3, MADRID', 'PORTUGAL'),
(15, 'JUANJO P?REZ', '92522245', 'AVDA CACERES 32, 2?A, TALAVERA', 'PORTUGAL'),
(16, 'PEDRO AL?A', '949944026', 'AVDA DANZANTES 14, 8?A, MADRID', 'PORTUGAL'),
(17, 'SERGIO GRAC?A', '912238956', 'C/GINER DE LOS RIOS 21, LEGAN?S', 'PORTUGAL'),
(18, 'MR?A CABRERO', '925130456', 'C/LA HERRADURA 30, TORRIJOS', 'PORTUGAL'),
(19, 'OSCAR ALONSO', '918823888', 'C/LOS MOLINOS 3, ALCAL? DE HENARES', 'ALEMANIA'),
(20, 'PILAR MART?N', '925666880', 'C/ALVARADO 30, TOLEDO', 'ESPA?A'),
(21, 'ANG?LICA SEGUNDO', '918980345', 'C/LA ROSA 3, ALCAL? DE HENARES', 'ESPA?A'),
(22, 'MIRIAM CAMACHO', '92544245', 'AVDA MADRID 32, 2?A, TALAVERA', 'ESPA?A'),
(23, 'ROSA AL?A', '949870026', 'AVDA SANZ VAZQUEZ 2, 8?A, MADRID', 'ESPA?A'),
(24, 'ALICIA GARC?A', '916738956', 'C/LIBREROS 23, LEGAN?S', 'ESPA?A'),
(25, 'MARY CASTUERA', '925220400', 'C/LA MINA 5, TORRIJOS', 'ALEMANIA'),
(26, 'SERGIO ALONSO', '91673888', 'C/LOS ALCORES 41, ALCAL? DE HENARES', 'ALEMANIA'),
(27, 'RAQUEL RINC?N', '925316882', 'C/?VILA 13, TOLEDO', 'ALEMANIA'),
(28, 'TITO VALVERDE', '916675544', 'C/LA FRUTA 33, ALCAL? DE HENARES', 'ALEMANIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `CODIGO` smallint(6) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `CATEGORIA` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`CODIGO`, `NOMBRE`, `CATEGORIA`) VALUES
(1, 'Alicia Jimenez', 'PILOTO'),
(2, 'Ana Garc?a', 'AZAFATA'),
(3, 'Pedro Soles', 'AUXILIAR'),
(4, 'Antonio Garc?a', 'AUXILIAR'),
(5, 'Juanjo Gil', 'PILOTO'),
(6, 'Mar?a Pe?a', 'AZAFATA'),
(7, 'Manuela Salgado', 'AZAFATA'),
(8, 'Candela Mu?oz', 'AZAFATA'),
(9, 'Ariel Mecano', 'CONTROLADOR'),
(10, 'Eloisa del Pozo', 'AZAFATA'),
(11, 'Angel del Rey', 'CONTROLADOR'),
(12, 'Manuela Caba?as', 'AUXILIAR'),
(13, 'Alberto Heras', 'PILOTO'),
(14, 'Lauro Mauro', 'COMISARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tripulacion`
--

CREATE TABLE `tripulacion` (
  `VUELO_IDENTIFICADOR` varchar(10) NOT NULL,
  `PERSONAL_CODIGO` smallint(6) NOT NULL,
  `PUESTO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tripulacion`
--

INSERT INTO `tripulacion` (`VUELO_IDENTIFICADOR`, `PERSONAL_CODIGO`, `PUESTO`) VALUES
('AVI-ASD', 1, 'COMANDANTE'),
('AVI-ASD', 2, 'AUXILIAR'),
('AVI-ASD', 3, 'AUXILIAR'),
('AVI-ASD', 5, 'COPILOTO'),
('AVI-ASD', 8, 'AUXILIAR'),
('AVI-ASD', 9, 'CONTROL'),
('AVI-ASD', 10, 'AUXILIAR'),
('BRU-1234', 1, 'COMANDANTE'),
('BRU-1234', 2, 'AUXILIAR'),
('BRU-1234', 3, 'AUXILIAR'),
('BRU-1234', 4, 'SOBRECARGO'),
('BRU-1234', 9, 'CONTROL'),
('BRU-1234', 13, 'COPILOTO'),
('BRU-2222', 5, 'COMANDANTE'),
('BRU-2222', 6, 'AUXILIAR'),
('BRU-2222', 7, 'AUXILIAR'),
('BRU-2222', 8, 'SOBRECARGO'),
('BRU-2222', 9, 'CONTROL'),
('BRU-2222', 13, 'COPILOTO'),
('IBE-762', 1, 'COPILOTO'),
('IBE-762', 2, 'AUXILIAR'),
('IBE-762', 5, 'COMANDANTE'),
('IBE-762', 6, 'AUXILIAR'),
('IBE-762', 11, 'CONTROL'),
('IBE-789', 1, 'COMANDANTE'),
('IBE-789', 5, 'COPILOTO'),
('IBE-789', 8, 'AUXILIAR'),
('IBE-789', 9, 'CONTROL'),
('IBE-789', 10, 'AUXILIAR'),
('IBE-789', 12, 'AUXILIAR'),
('KLM-2343', 2, 'AUXILIAR'),
('KLM-2343', 5, 'COMANDANTE'),
('KLM-2343', 6, 'AUXILIAR'),
('KLM-2343', 11, 'CONTROL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `IDENTIFICADOR` varchar(10) NOT NULL,
  `AEROPUERTO_ORIGEN` varchar(10) DEFAULT NULL,
  `AEROPUERTO_DESTINO` varchar(10) DEFAULT NULL,
  `TIPO_VUELO` varchar(15) DEFAULT NULL,
  `FECHA_VUELO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`IDENTIFICADOR`, `AEROPUERTO_ORIGEN`, `AEROPUERTO_DESTINO`, `TIPO_VUELO`, `FECHA_VUELO`) VALUES
('123', 'ABDUS', 'MADRID', 'COMERCIAL', '2020-01-12'),
('AVI-345', 'MAD LEMD', 'BRU EBBR', 'LARGO RECORRIDO', '2020-01-23'),
('AVI-ASD', 'MAD LEMD', 'OSL ENGM', 'LARGO RECORRIDO', '2020-02-08'),
('BRU-1234', 'BRU EBBR', 'CPH EKCH', 'CHARTER', '2020-02-07'),
('BRU-2222', 'BRU EBBR', 'MAD LEMD', 'DIRECTO', '2020-01-14'),
('DEL-34', 'CPH EKCH', 'BRU EBBR', 'DOM?STICO', '2020-03-28'),
('DEL-456', 'MAD LEMD', 'PRG LKPR', 'LARGO RECORRIDO', '2020-03-18'),
('IBE-212', 'CPH EKCH', 'RL  EBCI', 'CHARTER', '2020-02-09'),
('IBE-234', 'PMI LEPA', 'HEL EFHK', 'DOM?STICO', '2020-02-17'),
('IBE-762', 'MAD LEMD', 'HEL EFHK', 'DOM?STICO', '2020-02-07'),
('IBE-789', 'MAD LEMD', 'GWY EICM', 'DIRECTO', '2020-03-11'),
('KLM-2343', 'BRU EBBR', 'PMI LEPA', 'DIRECTO', '2020-01-13'),
('KLM-332', 'CPH EKCH', 'HEL EFHK', 'DIRECTO', '2020-03-25'),
('KLM-78', 'CPH EKCH', 'MAD LEMD', 'DOM?STICO', '2020-03-14'),
('QAT-224', 'CPH EKCH', 'PRG LKPR', 'CHARTER', '2020-01-28'),
('QAT-900', 'PMI LEPA', 'MAD LEMD', 'REGULAR', '2020-03-15'),
('RYA-22', 'PMI LEPA', 'GWY EICM', 'CHARTER', '2020-01-16'),
('RYA-230', 'PMI LEPA', 'OSL ENGM', 'CHARTER', '2020-02-02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD PRIMARY KEY (`PASAJERO_COD`,`IDENTIFICADOR`),
  ADD KEY `FKPASAJEVUELO` (`IDENTIFICADOR`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`COD`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `tripulacion`
--
ALTER TABLE `tripulacion`
  ADD PRIMARY KEY (`VUELO_IDENTIFICADOR`,`PERSONAL_CODIGO`),
  ADD KEY `FKTRIPULACIONPERSONAL` (`PERSONAL_CODIGO`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`IDENTIFICADOR`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD CONSTRAINT `FKPASAJEPASAJERO` FOREIGN KEY (`PASAJERO_COD`) REFERENCES `pasajero` (`COD`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FKPASAJEVUELO` FOREIGN KEY (`IDENTIFICADOR`) REFERENCES `vuelo` (`IDENTIFICADOR`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tripulacion`
--
ALTER TABLE `tripulacion`
  ADD CONSTRAINT `FKTRIPULACIONPERSONAL` FOREIGN KEY (`PERSONAL_CODIGO`) REFERENCES `personal` (`CODIGO`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FKTRIPULACIONVUELO` FOREIGN KEY (`VUELO_IDENTIFICADOR`) REFERENCES `vuelo` (`IDENTIFICADOR`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
