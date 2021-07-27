-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.3-MariaDB - mariadb.org binary distribution
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.persona: ~0 rows (approximately)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `correo`, `ciudad`, `cel`, `fechaNac`) VALUES
	(20, 'roger', 'rodriguex', 'roregerr@gmail.com', 'Brazil', '6325520', '1999-06-17');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Dumping structure for table gameplus.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(1500) DEFAULT NULL,
  `publicador` varchar(75) DEFAULT NULL,
  `desarollador` varchar(75) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.producto: ~5 rows (approximately)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id`, `nombre`, `imagen`, `precio`, `descripcion`, `publicador`, `desarollador`, `plataforma`) VALUES
	(2, 'AmongUS', 'https://www.cnet.com/a/img/bjDrQODueOs6eImEgobi_773lZM=/940x0/2020/10/21/9f706d3a-dc30-4937-8195-47aa345288e5/promofinal.jpg', 1.99, '                                   Es un videojuego de género party y multijugador en línea desarrollado por la compañía estadounidense InnerSloth y distribuido entre junio y noviembre de 2018 para las plataformas Android, iOS y PC. El 15 de diciembre de 2020 se anunció su disponibilidad en Nintendo Switch, mientras que su adaptación a las consolas Xbox One y Xbox Series X|S se confirmó para 2021. Posteriormente se anunció su lanzamiento para PlayStation 4 y PlayStation 5 con unos skins exclusivos. La trama del juego trata sobre un grupo de tripulantes a bordo de una nave espacial que deben supervisar el adecuado funcionamiento del vehículo, al mismo tiempo que investigan a los «impostores» que intentan sabotear la nave y asesinarlos durante cada partida.\r\n                                ', 'InnerSloth', 'InnerSloth', 'PC (fisico)'),
	(3, 'Days Gone\r\n', 'https://s3.gaming-cdn.com/images/products/6791/orig/days-gone-cover.jpg\r\n', 0.25, 'Days Gone es un juego de aventura, acción y mundo abierto que transcurre en tierras salvajes y hostiles dos años después de una devastadora pandemia mundial. Conviértete en Deacon St. John, un cazarrecompensas que recorre los caminos destrozados y lucha brutalmente para sobrevivir y encontrar la razón de su existencia.', 'SIE Sony Interactive Entretainment', 'Bend Studio', 'PS5'),
	(4, 'Fortnite\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202106/0806/7KJILbdp9AEmmrELwJCMJqc2.png\r\n', 0, 'Fortnite es el juego multijugador completamente gratuito en el que tus amigos y tú colaboraréis para crear un mundo de ensueño o lucharéis para ser los últimos en pie. Juega a Battle Royale y al modo Creativo GRATIS. Descárgalo ya y lánzate a la acción.', 'Epic Games', 'Epic Games', 'PC (digital)'),
	(5, 'Call of Duty: Modern Warefare\r\n\r\n', 'https://image.api.playstation.com/cdn/UP0002/CUSA03522_00/t7SHaSjuUXFZ3VHl6U4FuSFrDMtkOIyP.png', 0.05, 'Call of Duty  es una serie de videojuegos de disparos en primera persona, de estilo bélico, desarrollada principal e inicialmente por Infinity Ward, Treyarch, Sledgehammer Games y en menor proporción Raven Software y distribuida por Activision. La franquicia comenzó para computadora personal y posteriormente fue expandiéndose hacia videoconsolas de sexta y séptima generación, tanto de sobremesa como portátiles, llegando así, a lanzar varios juegos derivados de forma paulatina con la serie principal.', 'Activision', 'RavenSoft', 'PS5'),
	(6, 'Bloodborne\r\n', 'https://image.api.playstation.com/vulcan/img/rnd/202010/2614/NVmnBXze9ElHzU6SmykrJLIV.png\r\n', 8.99, 'Bloodborne es un videojuego de rol de acción dirigido por Hidetaka Miyazaki, desarrollado por From Software y JapanStudio distribuido por Sony Computer Entertainment para la plataforma de PlayStation 4 El videojuego sigue las acciones del personaje del jugador, el Cazador, a traves de Yharnam, una ciudad ficticia de estilo victoriano, cuyos habitantes han sido afectados con una enfermedad de transmision sanguinea anormal. ', 'Sony Computer Entretainment', 'From Software', 'PS4');
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
  `type_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_persona` (`id_persona`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table gameplus.usuario: ~0 rows (approximately)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `password`, `id_persona`, `type_user`) VALUES
	(1, 'roregerr', '51516556', 20, 1);
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
		usuario.usuario,
		usuario.type_user
	FROM persona
	INNER JOIN usuario ON usuario.id_persona = persona.id
	WHERE usuario.usuario = u AND usuario.password = p;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
