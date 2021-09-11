-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_reto5(final)
CREATE DATABASE IF NOT EXISTS `db_reto5(final)` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_reto5(final)`;

-- Volcando estructura para tabla db_reto5(final).accesos
CREATE TABLE IF NOT EXISTS `accesos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `hora_ingreso` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).accesos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).contenidos
CREATE TABLE IF NOT EXISTS `contenidos` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `curso_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_contenidos_cursos` (`curso_id`) USING BTREE,
  CONSTRAINT `FK_contenidos_cursos` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).contenidos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).coordinadores
CREATE TABLE IF NOT EXISTS `coordinadores` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `identificacion` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuarios_ID` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_coordinadores_usuarios` (`usuarios_ID`),
  CONSTRAINT `FK_coordinadores_usuarios` FOREIGN KEY (`usuarios_ID`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).coordinadores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `coordinadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordinadores` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `fecha_inicio` varchar(50) NOT NULL DEFAULT '',
  `fecha_fin` varchar(50) NOT NULL DEFAULT '',
  `profesores_id` int(3) unsigned DEFAULT NULL,
  `Horario_id` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cursos_profesores` (`profesores_id`),
  KEY `FK_cursos_horario` (`Horario_id`),
  CONSTRAINT `FK_cursos_horario` FOREIGN KEY (`Horario_id`) REFERENCES `horario` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cursos_profesores` FOREIGN KEY (`profesores_id`) REFERENCES `profesores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).estudiantes
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `identificacion` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) NOT NULL,
  `usuarios_ID` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_estudiantes_usuarios` (`usuarios_ID`),
  CONSTRAINT `FK_estudiantes_usuarios` FOREIGN KEY (`usuarios_ID`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).estudiantes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).estudiantesxcurso
CREATE TABLE IF NOT EXISTS `estudiantesxcurso` (
  `ID` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `ESTUDIANTES_ID` int(3) unsigned NOT NULL,
  `CURSOS_ID` int(3) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_estudiantesxcurso_estudiantes` (`ESTUDIANTES_ID`),
  KEY `FK_estudiantesxcurso_cursos` (`CURSOS_ID`),
  CONSTRAINT `FK_estudiantesxcurso_cursos` FOREIGN KEY (`CURSOS_ID`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estudiantesxcurso_estudiantes` FOREIGN KEY (`ESTUDIANTES_ID`) REFERENCES `estudiantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).estudiantesxcurso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estudiantesxcurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantesxcurso` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).horario
CREATE TABLE IF NOT EXISTS `horario` (
  `ID` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `Lunes` varchar(30) DEFAULT '--',
  `Martes` varchar(30) DEFAULT '--',
  `Miercoles` varchar(30) DEFAULT '--',
  `Jueves` varchar(30) DEFAULT '--',
  `Viernes` varchar(30) DEFAULT '--',
  `Sabado` varchar(30) DEFAULT '--',
  `Domingo` varchar(30) DEFAULT '--',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).horario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).profesores
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `identificacion` int(3) unsigned NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `anios_exp` int(11) NOT NULL,
  `usuarios_id` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_profesores_usuarios` (`usuarios_id`),
  CONSTRAINT `FK_profesores_usuarios` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).profesores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;

-- Volcando estructura para tabla db_reto5(final).usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_reto5(final).usuarios: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `user`, `contrasena`, `tipo`) VALUES
	(1, 'admin', '123456', 'Coordinador');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
