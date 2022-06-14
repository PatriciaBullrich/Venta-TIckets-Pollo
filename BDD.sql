-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Venta_Tickets
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Eventos`
--

DROP TABLE IF EXISTS `Eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Eventos` (
  `idEvento` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
INSERT INTO `Eventos` VALUES (1,'TINI','2022-12-11 00:00:00'),(2,'LOS REDONDOS','2023-05-20 00:00:00');
/*!40000 ALTER TABLE `Eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Tickets` (
  `idTicket` varchar(500) NOT NULL,
  `idEvento` int NOT NULL,
  `idUsuario` int DEFAULT NULL,
  `fueUsado` tinyint DEFAULT '0',
  PRIMARY KEY (`idTicket`),
  KEY `FK_tickets_eventos_idx` (`idEvento`),
  KEY `FK_tickets_usuarios_idx` (`idUsuario`),
  CONSTRAINT `FK_tickets_eventos` FOREIGN KEY (`idEvento`) REFERENCES `Eventos` (`idEvento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tickets_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES ('b2064068-ea84-11ec-a346-e6d98d366558',1,1,0),('b2067984-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b2069180-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b206afda-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b206d32a-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b206eb94-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2070304-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b207318a-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20768e4-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2079fbc-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b207c69a-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b207e184-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b2081316-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20837b0-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2084ff2-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2086712-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2089688-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b208ad6c-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b208cc7a-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2090b5e-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20925bc-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b2094128-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b2095bb8-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b209744a-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b2099182-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b209aa1e-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b209c238-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b209dbba-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b209fd84-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20a1ce2-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20a3506-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20a61de-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20a91ae-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20aae8c-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20acb42-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20aea5a-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20b572e-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20b8302-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20ba1c0-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20bbc3c-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20bd546-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20bf12a-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20c09a8-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20c31b2-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20c5548-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20c71f4-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20c8b62-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20d12a8-ea84-11ec-a346-e6d98d366558',1,NULL,0),('b20d4b1a-ea84-11ec-a346-e6d98d366558',2,NULL,0),('b20d6d34-ea84-11ec-a346-e6d98d366558',1,NULL,0);
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Edad` int NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Clave` varchar(50) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Maria Florencia','Pollo',50,'fpollo@gmail.com','contra');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Venta_Tickets'
--
/*!50003 DROP PROCEDURE IF EXISTS `AsignarTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AsignarTicket`(IN pIdTicket VARCHAR(500), IN pIdUsuario int)
BEGIN
UPDATE Tickets
SET IdUsuario = pIdUsuario
WHERE IdTicket = pIdTicket;
SELECT pIdUsuario AS id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearTickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearTickets`()
BEGIN
DECLARE X INT;
SET X = 1;

loop_label:  LOOP
	IF X > 50 THEN
		LEAVE loop_label;
	END IF;
    SET X = X + 1;
    INSERT INTO Tickets(IdTicket, IdEvento) VALUES(UUID(), RAND()*(2-1)+1);
END LOOP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eventos_obtenerTodos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eventos_obtenerTodos`()
BEGIN
	SELECT * FROM Eventos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Tickets_TraerLiberados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Tickets_TraerLiberados`(IN pIdEvento INT)
BEGIN
SELECT * FROM Tickets WHERE IdUsuario IS NULL AND IdEvento = pIdEvento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usuarios_insertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuarios_insertar`( 
IN pNombre VARCHAR(50), 
IN pApellido VARCHAR(50),
IN pEmail VARCHAR(60),
IN pClave VARCHAR(50),
IN pEdad INT)
BEGIN
INSERT INTO Usuarios(Nombre, Apellido,Email, Clave,Edad) 
VALUES(pNombre, pApellido,pEmail,pClave,pEdad);
SELECT LAST_INSERT_ID() as id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usuarios_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuarios_login`(IN pEmail VARCHAR(60),
IN pClave VARCHAR(50))
BEGIN
SELECT * FROM Usuarios WHERE pEmail = Email AND pClave = CLAVE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usuarios_obtenerTicketsDeUnUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuarios_obtenerTicketsDeUnUsuario`(IN pId INT)
BEGIN
SELECT * FROM Tickets
 WHERE Tickets.IdUsuario = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 21:33:00
