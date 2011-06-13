-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.12-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema agiledata
--

CREATE DATABASE IF NOT EXISTS agiledata;
USE agiledata;

--
-- Definition of table `agiledata`.`agile_consultas_agregados`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_agregados`;
CREATE TABLE  `agiledata`.`agile_consultas_agregados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_agregados_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_agregados`
--

/*!40000 ALTER TABLE `agile_consultas_agregados` DISABLE KEYS */;
LOCK TABLES `agile_consultas_agregados` WRITE;
INSERT INTO `agiledata`.`agile_consultas_agregados` VALUES  (1,1,'10/06/2011','17:28:32');
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_agregados` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_base_leilao`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_base_leilao`;
CREATE TABLE  `agiledata`.`agile_consultas_base_leilao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_base_leilao_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_base_leilao`
--

/*!40000 ALTER TABLE `agile_consultas_base_leilao` DISABLE KEYS */;
LOCK TABLES `agile_consultas_base_leilao` WRITE;
INSERT INTO `agiledata`.`agile_consultas_base_leilao` VALUES  (1,1,'10/06/2011','17:36:20');
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_base_leilao` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_pages`
--

DROP TABLE IF EXISTS `agiledata`.`agile_pages`;
CREATE TABLE  `agiledata`.`agile_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(120) NOT NULL,
  `action` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_pages`
--

/*!40000 ALTER TABLE `agile_pages` DISABLE KEYS */;
LOCK TABLES `agile_pages` WRITE;
INSERT INTO `agiledata`.`agile_pages` VALUES  (1,'/agregados/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionAgregados'),
 (2,'/base-leilao/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionBaseLeilao'),
 (3,'/roubo-furto/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionRouboFurto'),
 (4,'/decodificador-chassi/[A-Z 0-9]{10}/[A-Z 0-9]{17}','ActionDecodificadorChassi'),
 (5,'/documento/[A-Z 0-9]{10}/[0-9]{11}','ActionDocumento'),
 (6,'/gravame/[A-Z 0-9]{10}/[A-Z 0-9]{17}','ActionGravame'),
 (7,'/nacional/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionNacional'),
 (8,'/pericia/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionPericia'),
 (9,'/sinistro/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionSinistro'),
 (10,'/total/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}/[A-Z 0-9]{17}','ActionTotal'),
 (11,'/cheques/[A-Z 0-9]{10}/[A-Z 0-9]{10}','ActionCheques'),
 (12,'/pendencias/[A-Z 0-9]{10}/[A-Z 0-9]{10}','ActionPendencias'),
 (13,'/credito/[A-Z 0-9]{10}/[A-Z 0-9]{10}','ActionCreditos'),
 (14,'/cpf/[A-Z 0-9]{10}/[0-9]{11}','ActionCpf'),
 (15,'/cnpj/[A-Z 0-9]{10}/[0-9]{14}','ActionCnpj'),
 (16,'/telefone/[A-Z 0-9]{10}/[0-9]{3}/[0-9]{8}','ActionTelefone');
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_pages` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_usuarios`
--

DROP TABLE IF EXISTS `agiledata`.`agile_usuarios`;
CREATE TABLE  `agiledata`.`agile_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(10) NOT NULL,
  `update` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_usuarios`
--

/*!40000 ALTER TABLE `agile_usuarios` DISABLE KEYS */;
LOCK TABLES `agile_usuarios` WRITE;
INSERT INTO `agiledata`.`agile_usuarios` VALUES  (1,'A5T6J8G9X0','09/06/2011 16:02:02',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
