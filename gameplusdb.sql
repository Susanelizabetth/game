-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.3-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para gameplus
CREATE DATABASE IF NOT EXISTS `gameplus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gameplus`;

-- Volcando estructura para procedimiento gameplus.ObtenerProductos
DELIMITER //
CREATE PROCEDURE `ObtenerProductos`()
BEGIN
	SELECT * FROM producto;
END//
DELIMITER ;

-- Volcando estructura para tabla gameplus.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `cel` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  PRIMARY KEY (`id`,`correo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.persona: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `correo`, `ciudad`, `cel`, `fechaNac`) VALUES
	(20, 'roger', 'rodriguex', 'roregerr@gmail.com', 'Brazil', '6325520', '1999-06-17');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla gameplus.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.producto: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id`, `nombre`, `imagen`, `precio`) VALUES
	(1, 'Minecraft\r\n', 'https://image.api.playstation.com/vulcan/img/cfn/11307uYG0CXzRuA9aryByTHYrQLFz-HVQ3VVl7aAysxK15HMpqjkAIcC_R5vdfZt52hAXQNHoYhSuoSq_46_MT_tDBcLu49I.png', 2.99),
	(2, 'AmongUS', 'https://cdn2.unrealengine.com/egs-amongusallinonepack-innersloth-editions-g1a-00-1920x1080-e896d5a6f18c.jpg\r\n', 1.99),
	(3, 'Days Gone\r\n', 'https://s3.gaming-cdn.com/images/products/6791/orig/days-gone-cover.jpg\r\n', 0.25),
	(4, 'Fortnite\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202106/0806/7KJILbdp9AEmmrELwJCMJqc2.png\r\n', 0),
	(5, 'Call of duty\r\n', 'https://image.api.playstation.com/cdn/UP0002/CUSA03522_00/t7SHaSjuUXFZ3VHl6U4FuSFrDMtkOIyP.png', 0.05),
	(6, 'Bloodborne\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202010/2614/NVmnBXze9ElHzU6SmykrJLIV.png\r\n', 8.99);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla gameplus.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `id_persona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_persona` (`id_persona`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `password`, `id_persona`) VALUES
	(1, 'roregerr', '51516556', 20);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento gameplus.ValidarUser
DELIMITER //
CREATE PROCEDURE `ValidarUser`(
	IN `u` VARCHAR(50),
	IN `p` VARCHAR(50)
)
BEGIN
SELECT 
		persona.id,
		persona.nombre,
		persona.apellido,
		persona.correo,
		usuario.usuario
	FROM persona
	INNER JOIN usuario ON usuario.id_persona = persona.id
	WHERE usuario.usuario = u AND usuario.password = p;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
