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

-- Volcando estructura para procedimiento gameplus.BusquedaAventura
DELIMITER //
CREATE PROCEDURE `BusquedaAventura`()
BEGIN
	SELECT * FROM producto
	WHERE id_catg = 2;
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.BusquedaDisparos
DELIMITER //
CREATE PROCEDURE `BusquedaDisparos`()
BEGIN
	SELECT * FROM producto
	WHERE id_catg = 1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.BusquedaSimulacion
DELIMITER //
CREATE PROCEDURE `BusquedaSimulacion`()
BEGIN
	SELECT * FROM producto
	WHERE id_catg = 3;
END//
DELIMITER ;

-- Volcando estructura para tabla gameplus.carrito
CREATE TABLE IF NOT EXISTS `carrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(10) unsigned NOT NULL DEFAULT 1,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `persona_carrito_FK` (`persona_id`),
  KEY `producto_carrito_FK` (`producto_id`),
  CONSTRAINT `presona_carrito_FK` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `producto_carrito_FK` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.carrito: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` (`id`, `producto_id`, `cantidad`, `persona_id`) VALUES
	(1, 2, 1, 20),
	(2, 3, 1, 20),
	(3, 2, 1, 20),
	(4, 2, 1, 20),
	(5, 2, 1, 20),
	(6, 2, 1, 20),
	(7, 3, 1, 20),
	(8, 2, 1, 20),
	(9, 2, 1, 20),
	(10, 3, 1, 20),
	(11, 2, 1, 20),
	(12, 2, 1, 20),
	(13, 3, 1, 20),
	(14, 4, 1, 20),
	(15, 2, 1, 20),
	(16, 4, 1, 20);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;

-- Volcando estructura para tabla gameplus.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL,
  `nombre_catg` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.categoria: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id`, `nombre_catg`) VALUES
	(1, 'Disparos'),
	(2, 'Aventura'),
	(3, 'Simuladores');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla gameplus.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tema` varchar(100) NOT NULL,
  `Comentario` varchar(1500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.comentarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` (`id`, `Tema`, `Comentario`, `created_at`) VALUES
	(5, 'MAPA', 'El mapa no es interactivo', '2021-07-26 10:01:25');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;

-- Volcando estructura para procedimiento gameplus.DeleteProducto
DELIMITER //
CREATE PROCEDURE `DeleteProducto`(
	IN `pid` INT
)
BEGIN
	DELETE FROM producto
	WHERE producto.id = pid;
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.InsertarACarrito
DELIMITER //
CREATE PROCEDURE `InsertarACarrito`(
	IN `prid` INT,
	IN `c` INT,
	IN `peid` INT
)
BEGIN
	INSERT INTO carrito(producto_id, cantidad, persona_id) 
	VALUES (prid, c, peid);
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.InsertarComentario
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

-- Volcando estructura para procedimiento gameplus.InsertarProducto
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

-- Volcando estructura para procedimiento gameplus.ObtenerProductos
DELIMITER //
CREATE PROCEDURE `ObtenerProductos`()
BEGIN
	SELECT * FROM producto;
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.ObtenerProductosCarrito
DELIMITER //
CREATE PROCEDURE `ObtenerProductosCarrito`(
	IN `prid` INT
)
BEGIN
	SELECT 
		carrito.id AS carritoId,
		producto.id AS productoId,
		producto.imagen AS foto,
		producto.nombre AS nombreProducto,
		carrito.cantidad,
		producto.precio
	FROM carrito
	INNER JOIN producto ON producto.id=carrito.producto_id
	WHERE persona_id = prid;
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

-- Volcando datos para la tabla gameplus.persona: ~0 rows (aproximadamente)
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
  `descripcion` varchar(1500) DEFAULT NULL,
  `publicador` varchar(75) DEFAULT NULL,
  `desarollador` varchar(75) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.producto: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para procedimiento gameplus.TotalProductosCarrito
DELIMITER //
CREATE PROCEDURE `TotalProductosCarrito`(
	IN `prid` INT
)
BEGIN
	SELECT COUNT(producto_id) AS total FROM carrito
	WHERE persona_id = prid;
END//
DELIMITER ;

-- Volcando estructura para procedimiento gameplus.UpdateProducto
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

-- Volcando estructura para tabla gameplus.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `id_persona` int(11) NOT NULL,
  `type_user` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_persona` (`id_persona`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gameplus.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `password`, `id_persona`, `type_user`) VALUES
	(1, 'roregerr', '51516556', 20, NULL);
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
		persona.ciudad,
		usuario.usuariousuario
	FROM persona
	INNER JOIN usuario ON usuario.id_persona = persona.id
	WHERE usuario.usuario = u AND usuario.password = p;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
