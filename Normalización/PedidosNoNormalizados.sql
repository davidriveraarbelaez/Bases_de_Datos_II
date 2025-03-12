-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 24-02-2025 a las 22:50:16
-- Versión del servidor: 9.2.0
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `NormalizacionEjemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PedidosNoNormalizados`
--

CREATE TABLE `PedidosNoNormalizados` (
  `PedidoID` int NOT NULL,
  `Cliente` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Producto` varchar(100) NOT NULL,
  `Cantidad` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `PedidosNoNormalizados`
--

INSERT INTO `PedidosNoNormalizados` (`PedidoID`, `Cliente`, `Telefono`, `Direccion`, `Producto`, `Cantidad`, `Fecha`) VALUES
(1, 'Juan Velez', '3001234567', 'Calle 123 #45-67', 'Televisor', 1, '2025-02-01'),
(1, 'Juan Velez', '3001234567', 'Calle 123 #45-67', 'Parlante', 2, '2025-02-01'),
(2, 'Mariana Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Computador', 1, '2025-02-03'),
(2, 'Mariana Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Mouse', 1, '2025-02-03'),
(3, 'Carlos Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Teclado', 1, '2025-02-05'),
(3, 'Carlos Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Monitor', 2, '2025-02-05'),
(4, 'Ana Marin', '3156781234', 'Calle Luna 456', 'Impresora', 1, '2025-02-07'),
(4, 'Ana Marin', '3156781234', 'Calle Luna 456', 'Cartuchos', 4, '2025-02-07'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Laptop', 1, '2025-02-09'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Mochila', 1, '2025-02-09'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Tablet', 1, '2025-02-09'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Borradores', 4, '2025-02-09'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Pad mouse', 2, '2025-02-09'),
(5, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Mouse', 1, '2025-02-09'),
(6, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Tablet', 1, '2025-02-11'),
(6, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Estuche', 1, '2025-02-11'),
(7, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Smartphone', 1, '2025-02-13'),
(7, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Auriculares', 2, '2025-02-13'),
(7, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Tablet', 1, '2025-02-13'),
(8, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Camara', 1, '2025-02-15'),
(8, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Tripode', 1, '2025-02-15'),
(8, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Memoria', 1, '2025-02-15'),
(8, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Cargador', 1, '2025-02-15'),
(8, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Pila', 4, '2025-02-15'),
(9, 'Andres Sanchez', '3223456789', 'Avenida Roble 404', 'Monitor', 1, '2025-02-17'),
(9, 'Andres Sanchez', '3223456789', 'Avenida Roble 404', 'Laptop', 1, '2025-02-17'),
(9, 'Andres Sanchez', '3223456789', 'Avenida Roble 404', 'Teclado', 1, '2025-02-17'),
(10, 'Diana Moreno', '3234567890', 'Calle Poblado 505', 'CPU', 1, '2025-02-19'),
(10, 'Diana Moreno', '3234567890', 'Calle Poblado 505', 'Mouse', 1, '2025-02-19'),
(11, 'Juan Perez', '3001234567', 'Calle 123 #45-67', 'Monitor', 1, '2025-02-21'),
(11, 'Juan Perez', '3001234567', 'Calle 123 #45-67', 'Soporte', 1, '2025-02-21'),
(12, 'Paulina Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Impresora', 1, '2025-02-23'),
(12, 'Paulina Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Tinta', 3, '2025-02-23'),
(13, 'Camilo Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Laptop', 1, '2025-02-25'),
(13, 'Camilo Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Mousepad', 1, '2025-02-25'),
(14, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Tablet', 1, '2025-02-27'),
(14, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Teclado', 1, '2025-02-27'),
(14, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Funda', 1, '2025-02-27'),
(15, 'Luisa Ramirez', '3178901234', 'Carrera Sol 789', 'Smartphone', 1, '2025-03-01'),
(15, 'Luisa Ramirez', '3178901234', 'Carrera Sol 789', 'Cargador', 1, '2025-03-01'),
(16, 'Paula Torres', '3198765432', 'Avenida Primavera 101', 'Camara', 1, '2025-03-03'),
(16, 'Paula Torres', '3198765432', 'Avenida Primavera 101', 'Lente', 2, '2025-03-03'),
(17, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Consola', 1, '2025-03-05'),
(18, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Monitor', 1, '2025-03-07'),
(18, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Teclado', 1, '2025-03-07'),
(19, 'Andrea Sanchez', '3223456789', 'Avenida Roble 404', 'Laptop', 1, '2025-03-09'),
(19, 'Andrea Sanchez', '3223456789', 'Avenida Roble 404', 'Mouse', 1, '2025-03-09'),
(19, 'Andrea Sanchez', '3223456789', 'Avenida Roble 404', 'Mochila', 1, '2025-03-09'),
(20, 'Diana Mora', '3234567890', 'Calle Poblado 505', 'Smartphone', 1, '2025-03-11'),
(20, 'Diana Mora', '3234567890', 'Calle Poblado 505', 'Auriculares', 1, '2025-03-11'),
(20, 'Diana Mora', '3234567890', 'Calle Poblado 505', 'Cargador', 1, '2025-03-11'),
(21, 'Juana Perez', '3001234567', 'Calle 123 #45-67', 'Televisor', 1, '2025-03-13'),
(21, 'Juana Perez', '3001234567', 'Calle 123 #45-67', 'Parlante', 2, '2025-03-13'),
(22, 'Ana Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Computador', 1, '2025-03-15'),
(22, 'Ana Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Monitor', 2, '2025-03-15'),
(22, 'Ana Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Mouse', 1, '2025-03-15'),
(23, 'Carlos Hidalgo', '3123456789', 'Avenida Siempre Viva 742', 'Teclado', 1, '2025-03-17'),
(23, 'Carlos Hidalgo', '3123456789', 'Avenida Siempre Viva 742', 'Monitor', 2, '2025-03-17'),
(24, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Impresora', 1, '2025-03-19'),
(24, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Cartuchos', 4, '2025-03-19'),
(25, 'Luis Miguel Ramirez', '3178901234', 'Carrera Sol 789', 'Laptop', 1, '2025-03-21'),
(25, 'Luis Miguel Ramirez', '3178901234', 'Carrera Sol 789', 'Mochila', 1, '2025-03-21'),
(26, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Tablet', 1, '2025-03-23'),
(26, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Estuche', 1, '2025-03-23'),
(27, 'Pedro Antonio Diaz', '3201234567', 'Calle Olmo 202', 'Smartphone', 1, '2025-03-25'),
(27, 'Pedro Antonio Diaz', '3201234567', 'Calle Olmo 202', 'Auriculares', 1, '2025-03-25'),
(28, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Camara', 1, '2025-03-27'),
(28, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Tripode', 1, '2025-03-27'),
(29, 'Andres Felipe Sanchez', '3223456789', 'Avenida Roble 404', 'Monitor', 1, '2025-03-29'),
(29, 'Andres FelipeSanchez', '3223456789', 'Avenida Roble 404', 'Teclado', 1, '2025-03-29'),
(30, 'Diana Roa', '3234567890', 'Calle Poblado 505', 'CPU', 1, '2025-03-31'),
(30, 'Diana Roa', '3234567890', 'Calle Poblado 505', 'Mouse', 1, '2025-03-31'),
(31, 'Ramon Gaviria', '3001234567', 'Calle 123 #45-67', 'Monitor', 1, '2025-04-02'),
(31, 'Ramon Gaviria', '3001234567', 'Calle 123 #45-67', 'Mouse', 1, '2025-04-02'),
(31, 'Ramon Gaviria', '3001234567', 'Calle 123 #45-67', 'Mochila', 1, '2025-04-02'),
(31, 'Ramon Gaviria', '3001234567', 'Calle 123 #45-67', 'Tinta', 4, '2025-04-02'),
(32, 'Maria Paulina Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Impresora', 1, '2025-04-04'),
(32, 'Maria Paulina Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Tinta', 3, '2025-04-04'),
(33, 'Carlos Mario Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Laptop', 1, '2025-04-06'),
(33, 'Carlos Mario Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Mousepad', 1, '2025-04-06'),
(34, 'Ana Maria Largo', '3156781234', 'Calle Luna 456', 'Tablet', 1, '2025-04-08'),
(35, 'Luis Cruz', '3178901234', 'Carrera Sol 789', 'Smartphone', 1, '2025-04-10'),
(35, 'Luis Cruz', '3178901234', 'Carrera Sol 789', 'Cargador', 1, '2025-04-10'),
(36, 'Oswaldo Giraldo', '3198765432', 'Avenida Primavera 101', 'Camara', 1, '2025-04-12'),
(36, 'Oswaldo Giraldo', '3198765432', 'Avenida Primavera 101', 'Lente', 1, '2025-04-12'),
(37, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Consola', 1, '2025-04-14'),
(37, 'Pedro Diaz', '3201234567', 'Calle Olmo 202', 'Control', 2, '2025-04-14'),
(38, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Monitor', 1, '2025-04-16'),
(38, 'Laura Jimenez', '3212345678', 'Carrera Pino 303', 'Teclado', 1, '2025-04-16'),
(39, 'Andres Morales', '3223456789', 'Avenida Roble 404', 'Laptop', 1, '2025-04-18'),
(39, 'Andres Morales', '3223456789', 'Avenida Roble 404', 'Mochila', 1, '2025-04-18'),
(40, 'Diana Moreno', '3234567890', 'Calle Poblado 505', 'Smartphone', 1, '2025-04-20'),
(40, 'Diana Moreno', '3234567890', 'Calle Poblado 505', 'Auriculares', 1, '2025-04-20'),
(41, 'Juan Perez', '3001234567', 'Calle 123 #45-67', 'Televisor', 1, '2025-04-22'),
(41, 'Juan Perez', '3001234567', 'Calle 123 #45-67', 'Parlante', 2, '2025-04-22'),
(42, 'Maria Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Computador', 1, '2025-04-24'),
(42, 'Maria Gonzalez', '3109876543', 'Carrera 89 #12-34', 'Mouse', 1, '2025-04-24'),
(43, 'Carlos Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Teclado', 1, '2025-04-26'),
(43, 'Carlos Lopez', '3123456789', 'Avenida Siempre Viva 742', 'Monitor', 2, '2025-04-26'),
(44, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Impresora', 1, '2025-04-28'),
(44, 'Ana Martinez', '3156781234', 'Calle Luna 456', 'Cartuchos', 4, '2025-04-28'),
(45, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Laptop', 1, '2025-04-30'),
(45, 'Luis Ramirez', '3178901234', 'Carrera Sol 789', 'Mochila', 1, '2025-04-30'),
(46, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Tablet', 1, '2025-05-02'),
(46, 'Sofia Torres', '3198765432', 'Avenida Primavera 101', 'Estuche', 1, '2025-05-02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
