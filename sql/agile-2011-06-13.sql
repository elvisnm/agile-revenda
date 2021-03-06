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
-- Definition of table `agiledata`.`agile_consultas_cheques`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_cheques`;
CREATE TABLE  `agiledata`.`agile_consultas_cheques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_cheques_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_cheques`
--

/*!40000 ALTER TABLE `agile_consultas_cheques` DISABLE KEYS */;
LOCK TABLES `agile_consultas_cheques` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_cheques` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_cnpj`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_cnpj`;
CREATE TABLE  `agiledata`.`agile_consultas_cnpj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_cnpj_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_cnpj`
--

/*!40000 ALTER TABLE `agile_consultas_cnpj` DISABLE KEYS */;
LOCK TABLES `agile_consultas_cnpj` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_cnpj` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_cpf`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_cpf`;
CREATE TABLE  `agiledata`.`agile_consultas_cpf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_cpf_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_cpf`
--

/*!40000 ALTER TABLE `agile_consultas_cpf` DISABLE KEYS */;
LOCK TABLES `agile_consultas_cpf` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_cpf` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_creditos`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_creditos`;
CREATE TABLE  `agiledata`.`agile_consultas_creditos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_creditos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_creditos`
--

/*!40000 ALTER TABLE `agile_consultas_creditos` DISABLE KEYS */;
LOCK TABLES `agile_consultas_creditos` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_creditos` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_decodificador_chassi`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_decodificador_chassi`;
CREATE TABLE  `agiledata`.`agile_consultas_decodificador_chassi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_decodificador_chassi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_decodificador_chassi`
--

/*!40000 ALTER TABLE `agile_consultas_decodificador_chassi` DISABLE KEYS */;
LOCK TABLES `agile_consultas_decodificador_chassi` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_decodificador_chassi` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_documento`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_documento`;
CREATE TABLE  `agiledata`.`agile_consultas_documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_documento_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_documento`
--

/*!40000 ALTER TABLE `agile_consultas_documento` DISABLE KEYS */;
LOCK TABLES `agile_consultas_documento` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_documento` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_gravame`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_gravame`;
CREATE TABLE  `agiledata`.`agile_consultas_gravame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_gravame_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_gravame`
--

/*!40000 ALTER TABLE `agile_consultas_gravame` DISABLE KEYS */;
LOCK TABLES `agile_consultas_gravame` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_gravame` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_leilao`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_leilao`;
CREATE TABLE  `agiledata`.`agile_consultas_leilao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_leilao_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_leilao`
--

/*!40000 ALTER TABLE `agile_consultas_leilao` DISABLE KEYS */;
LOCK TABLES `agile_consultas_leilao` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_leilao` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_nacional`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_nacional`;
CREATE TABLE  `agiledata`.`agile_consultas_nacional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_nacional_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_nacional`
--

/*!40000 ALTER TABLE `agile_consultas_nacional` DISABLE KEYS */;
LOCK TABLES `agile_consultas_nacional` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_nacional` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_pendentes`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_pendentes`;
CREATE TABLE  `agiledata`.`agile_consultas_pendentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_pendentes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_pendentes`
--

/*!40000 ALTER TABLE `agile_consultas_pendentes` DISABLE KEYS */;
LOCK TABLES `agile_consultas_pendentes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_pendentes` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_pericia`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_pericia`;
CREATE TABLE  `agiledata`.`agile_consultas_pericia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_pericia_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_pericia`
--

/*!40000 ALTER TABLE `agile_consultas_pericia` DISABLE KEYS */;
LOCK TABLES `agile_consultas_pericia` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_pericia` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_roubo_furto`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_roubo_furto`;
CREATE TABLE  `agiledata`.`agile_consultas_roubo_furto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_roubo_furto_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_roubo_furto`
--

/*!40000 ALTER TABLE `agile_consultas_roubo_furto` DISABLE KEYS */;
LOCK TABLES `agile_consultas_roubo_furto` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_roubo_furto` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_sinistro`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_sinistro`;
CREATE TABLE  `agiledata`.`agile_consultas_sinistro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_sinistro_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_sinistro`
--

/*!40000 ALTER TABLE `agile_consultas_sinistro` DISABLE KEYS */;
LOCK TABLES `agile_consultas_sinistro` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_sinistro` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_telefone`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_telefone`;
CREATE TABLE  `agiledata`.`agile_consultas_telefone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_telefone_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_telefone`
--

/*!40000 ALTER TABLE `agile_consultas_telefone` DISABLE KEYS */;
LOCK TABLES `agile_consultas_telefone` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_telefone` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_consultas_total`
--

DROP TABLE IF EXISTS `agiledata`.`agile_consultas_total`;
CREATE TABLE  `agiledata`.`agile_consultas_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agile_consultas_total_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `agile_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agiledata`.`agile_consultas_total`
--

/*!40000 ALTER TABLE `agile_consultas_total` DISABLE KEYS */;
LOCK TABLES `agile_consultas_total` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agile_consultas_total` ENABLE KEYS */;


--
-- Definition of table `agiledata`.`agile_pages`
--

DROP TABLE IF EXISTS `agiledata`.`agile_pages`;
CREATE TABLE  `agiledata`.`agile_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(120) NOT NULL,
  `action` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
 (16,'/telefone/[A-Z 0-9]{10}/[0-9]{3}/[0-9]{8}','ActionTelefone'),
 (17,'/leilao/[A-Z 0-9]{10}/[A-Z]{3}[0-9]{4}','ActionLeilao');
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
