-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gameplus
CREATE DATABASE IF NOT EXISTS `gameplus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gameplus`;

-- Dumping structure for table gameplus.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tema` varchar(100) NOT NULL,
  `Comentario` varchar(1500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.comentarios: ~0 rows (approximately)
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;

-- Dumping structure for procedure gameplus.DeleteProducto
DELIMITER //
CREATE PROCEDURE `DeleteProducto`(
	IN `pid` INT
)
BEGIN
	DELETE FROM producto
	WHERE producto.id = pid;
END//
DELIMITER ;

-- Dumping structure for procedure gameplus.InsertarComentario
DELIMITER //
CREATE PROCEDURE `InsertarComentario`(
	IN `Comentario` VARCHAR(1500),
	IN `Tema` VARCHAR(150)
)
BEGIN
INSERT INTO comentarios(Comentario,Tema)
	VALUES (Comentario,Tema);
END//
DELIMITER ;

-- Dumping structure for procedure gameplus.InsertarProducto
DELIMITER //
CREATE PROCEDURE `InsertarProducto`(
	IN `n` VARCHAR(50),
	IN `img` VARCHAR(150),
	IN `pr` DOUBLE,
	IN `dev` VARCHAR(150),
	IN `ds` VARCHAR(3000),
	IN `plat` VARCHAR(150),
	IN `pub` VARCHAR(150)
)
BEGIN
	INSERT INTO producto (nombre,imagen,precio,desarollador,descripcion,plataforma,publicador)
	VALUES (n,img,pr,dev,ds,plat,pub);
END//
DELIMITER ;

-- Dumping structure for procedure gameplus.ObtenerProductos
DELIMITER //
CREATE PROCEDURE `ObtenerProductos`()
BEGIN
	SELECT * FROM producto;
END//
DELIMITER ;

-- Dumping structure for table gameplus.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `cel` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  PRIMARY KEY (`id`,`correo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.persona: ~4 rows (approximately)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `correo`, `ciudad`, `cel`, `fechaNac`) VALUES
	(20, 'roger', 'rodriguex', 'roregerr@gmail.com', 'Brazil', '6325520', '1999-06-17'),
	(21, 'raul', 'm', 'Ra16Mp@gmail.com', 'Panama', '65555555', '1998-09-16'),
	(22, 'raul', 'm', 'Ra916Mp@gmail.com', 'Panama', '655555555', '1998-09-16'),
	(23, 'louis', 'brad', 'lousi88@gmail.com', 'Ecuador', '6744444', '2000-04-17');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Dumping structure for table gameplus.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.producto: ~6 rows (approximately)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id`, `nombre`, `imagen`, `precio`) VALUES
	(1, 'Minecraft\r\n', 'https://image.api.playstation.com/vulcan/img/cfn/11307uYG0CXzRuA9aryByTHYrQLFz-HVQ3VVl7aAysxK15HMpqjkAIcC_R5vdfZt52hAXQNHoYhSuoSq_46_MT_tDBcLu49I.png', 2.99),
	(2, 'AmongUS', 'https://cdn2.unrealengine.com/egs-amongusallinonepack-innersloth-editions-g1a-00-1920x1080-e896d5a6f18c.jpg\r\n', 1.99),
	(3, 'Days Gone\r\n', 'https://s3.gaming-cdn.com/images/products/6791/orig/days-gone-cover.jpg\r\n', 0.25),
	(4, 'Fortnite\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202106/0806/7KJILbdp9AEmmrELwJCMJqc2.png\r\n', 0),
	(5, 'Call of duty\r\n', 'https://image.api.playstation.com/cdn/UP0002/CUSA03522_00/t7SHaSjuUXFZ3VHl6U4FuSFrDMtkOIyP.png', 0.05),
	(6, 'Bloodborne\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202010/2614/NVmnBXze9ElHzU6SmykrJLIV.png\r\n', 8.99);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Dumping structure for procedure gameplus.UpdateProducto
DELIMITER //
CREATE PROCEDURE `UpdateProducto`(
	IN `pid` INT,
	IN `n` VARCHAR(50),
	IN `p` DOUBLE,
	IN `ft` VARCHAR(150),
	IN `ds` VARCHAR(3000),
	IN `pub` VARCHAR(150),
	IN `dev` VARCHAR(150),
	IN `plat` VARCHAR(150)
)
BEGIN
	UPDATE producto p SET 
	p.nombre = n,
	p.precio = p,
	p.imagen= ft,
	p.descripcion = ds,
	p.publicador = pub,
	p.desarollador = dev,
	p.plataforma = plat
	WHERE p.id = pid;
END//
DELIMITER ;

-- Dumping structure for table gameplus.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `id_persona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_persona` (`id_persona`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.usuario: ~4 rows (approximately)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `password`, `id_persona`) VALUES
	(1, 'roregerr', '51516556', 20),
	(2, 'ramp16', '252525', 21),
	(3, 'ramp16', '161616', 22),
	(4, 'louis88', '1234567', 23);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Dumping structure for procedure gameplus.ValidarUser
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
		persona.ciudad,
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
