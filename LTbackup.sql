-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: LT
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `LT1`
--

DROP TABLE IF EXISTS `LT1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT1_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT1`
--

LOCK TABLES `LT1` WRITE;
/*!40000 ALTER TABLE `LT1` DISABLE KEYS */;
INSERT INTO `LT1` VALUES (1,1,'2020-02-05','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','24','5.2.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211'),(3,1,'2020-06-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','24','18.6.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT10`
--

DROP TABLE IF EXISTS `LT10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT10` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT10_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT10`
--

LOCK TABLES `LT10` WRITE;
/*!40000 ALTER TABLE `LT10` DISABLE KEYS */;
INSERT INTO `LT10` VALUES (1,10,'2020-02-27','OK','delno_urejeno','delno urejeno','urejeno','urejeno','srednje','OK','NOK','24','5.2.2020','urejeno','urejeno','OK','OK','NOK','OK','v prostor iz strehe kaplja voda','ar16211'),(2,10,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','24','/','urejeno','urejeno','OK','OK','NOK','OK','ni lista za kontrola klime ,krilo vhodnih vrat šteka ob poden','ar16211'),(3,10,'2020-05-28','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','23','28.5.2020','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT11`
--

DROP TABLE IF EXISTS `LT11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT11` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT11_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT11`
--

LOCK TABLES `LT11` WRITE;
/*!40000 ALTER TABLE `LT11` DISABLE KEYS */;
INSERT INTO `LT11` VALUES (1,11,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','26','/','urejeno','urejeno','OK','OK','NOK','OK','ni lista za kontrola klime ,krilo vhodnih vrat šteka ob poden','ar16211');
/*!40000 ALTER TABLE `LT11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT12`
--

DROP TABLE IF EXISTS `LT12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT12` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT12_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT12`
--

LOCK TABLES `LT12` WRITE;
/*!40000 ALTER TABLE `LT12` DISABLE KEYS */;
INSERT INTO `LT12` VALUES (1,12,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','24','12.5.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT13`
--

DROP TABLE IF EXISTS `LT13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT13` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT13_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT13`
--

LOCK TABLES `LT13` WRITE;
/*!40000 ALTER TABLE `LT13` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT14`
--

DROP TABLE IF EXISTS `LT14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT14` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT14_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT14`
--

LOCK TABLES `LT14` WRITE;
/*!40000 ALTER TABLE `LT14` DISABLE KEYS */;
INSERT INTO `LT14` VALUES (1,14,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT15`
--

DROP TABLE IF EXISTS `LT15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT15` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT15_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT15`
--

LOCK TABLES `LT15` WRITE;
/*!40000 ALTER TABLE `LT15` DISABLE KEYS */;
INSERT INTO `LT15` VALUES (1,15,'2020-02-20','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT16`
--

DROP TABLE IF EXISTS `LT16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT16` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT16_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT16`
--

LOCK TABLES `LT16` WRITE;
/*!40000 ALTER TABLE `LT16` DISABLE KEYS */;
INSERT INTO `LT16` VALUES (1,16,'2020-02-19','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,16,'2020-06-04','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT17`
--

DROP TABLE IF EXISTS `LT17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT17` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT17_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT17`
--

LOCK TABLES `LT17` WRITE;
/*!40000 ALTER TABLE `LT17` DISABLE KEYS */;
INSERT INTO `LT17` VALUES (1,17,'2020-02-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,17,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT18`
--

DROP TABLE IF EXISTS `LT18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT18` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT18_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT18`
--

LOCK TABLES `LT18` WRITE;
/*!40000 ALTER TABLE `LT18` DISABLE KEYS */;
INSERT INTO `LT18` VALUES (1,18,'2020-02-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,18,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT19`
--

DROP TABLE IF EXISTS `LT19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT19` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT19_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT19`
--

LOCK TABLES `LT19` WRITE;
/*!40000 ALTER TABLE `LT19` DISABLE KEYS */;
INSERT INTO `LT19` VALUES (1,19,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,19,'2020-07-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','26','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar');
/*!40000 ALTER TABLE `LT19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT2`
--

DROP TABLE IF EXISTS `LT2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT2_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT2`
--

LOCK TABLES `LT2` WRITE;
/*!40000 ALTER TABLE `LT2` DISABLE KEYS */;
INSERT INTO `LT2` VALUES (1,2,'2020-02-05','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','20','5.2.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211'),(2,2,'2020-06-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','19','18.6.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT22`
--

DROP TABLE IF EXISTS `LT22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT22` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT22_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT22`
--

LOCK TABLES `LT22` WRITE;
/*!40000 ALTER TABLE `LT22` DISABLE KEYS */;
INSERT INTO `LT22` VALUES (1,22,'2020-06-03','otezen','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT23`
--

DROP TABLE IF EXISTS `LT23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT23` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT23_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT23`
--

LOCK TABLES `LT23` WRITE;
/*!40000 ALTER TABLE `LT23` DISABLE KEYS */;
INSERT INTO `LT23` VALUES (1,23,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT24`
--

DROP TABLE IF EXISTS `LT24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT24` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT24_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT24`
--

LOCK TABLES `LT24` WRITE;
/*!40000 ALTER TABLE `LT24` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT26`
--

DROP TABLE IF EXISTS `LT26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT26` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT26_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT26`
--

LOCK TABLES `LT26` WRITE;
/*!40000 ALTER TABLE `LT26` DISABLE KEYS */;
INSERT INTO `LT26` VALUES (1,26,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','23','12.5.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211'),(2,26,'2020-06-11','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','11.6.2020','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT27`
--

DROP TABLE IF EXISTS `LT27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT27` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT27_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT27`
--

LOCK TABLES `LT27` WRITE;
/*!40000 ALTER TABLE `LT27` DISABLE KEYS */;
INSERT INTO `LT27` VALUES (1,27,'2020-02-20','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,27,'2020-06-11','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','OK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT28`
--

DROP TABLE IF EXISTS `LT28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT28` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT28_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT28`
--

LOCK TABLES `LT28` WRITE;
/*!40000 ALTER TABLE `LT28` DISABLE KEYS */;
INSERT INTO `LT28` VALUES (1,28,'2020-06-11','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT29`
--

DROP TABLE IF EXISTS `LT29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT29` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT29_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT29`
--

LOCK TABLES `LT29` WRITE;
/*!40000 ALTER TABLE `LT29` DISABLE KEYS */;
INSERT INTO `LT29` VALUES (1,29,'2020-06-11','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','ni  podatka','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT3`
--

DROP TABLE IF EXISTS `LT3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT3_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT3`
--

LOCK TABLES `LT3` WRITE;
/*!40000 ALTER TABLE `LT3` DISABLE KEYS */;
INSERT INTO `LT3` VALUES (1,3,'2020-02-05','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','5.2.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211'),(2,3,'2020-06-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','17.6.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT30`
--

DROP TABLE IF EXISTS `LT30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT30` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT30_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT30`
--

LOCK TABLES `LT30` WRITE;
/*!40000 ALTER TABLE `LT30` DISABLE KEYS */;
INSERT INTO `LT30` VALUES (1,30,'2020-06-10','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT31`
--

DROP TABLE IF EXISTS `LT31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT31` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT31`
--

LOCK TABLES `LT31` WRITE;
/*!40000 ALTER TABLE `LT31` DISABLE KEYS */;
INSERT INTO `LT31` VALUES (1,31,'2020-07-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar'),(2,31,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT32`
--

DROP TABLE IF EXISTS `LT32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT32` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT32_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT32`
--

LOCK TABLES `LT32` WRITE;
/*!40000 ALTER TABLE `LT32` DISABLE KEYS */;
INSERT INTO `LT32` VALUES (1,32,'2020-02-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,32,'2021-02-04','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT33`
--

DROP TABLE IF EXISTS `LT33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT33` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT33_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT33`
--

LOCK TABLES `LT33` WRITE;
/*!40000 ALTER TABLE `LT33` DISABLE KEYS */;
INSERT INTO `LT33` VALUES (1,33,'2020-02-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,33,'2021-02-04','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','ni  podatka','urejeno','OK_ni','Ok_ni','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT34`
--

DROP TABLE IF EXISTS `LT34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT34` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT34_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT34`
--

LOCK TABLES `LT34` WRITE;
/*!40000 ALTER TABLE `LT34` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT35`
--

DROP TABLE IF EXISTS `LT35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT35` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT35_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT35`
--

LOCK TABLES `LT35` WRITE;
/*!40000 ALTER TABLE `LT35` DISABLE KEYS */;
INSERT INTO `LT35` VALUES (1,35,'2020-03-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,35,'2020-06-08','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT36`
--

DROP TABLE IF EXISTS `LT36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT36` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT36_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT36`
--

LOCK TABLES `LT36` WRITE;
/*!40000 ALTER TABLE `LT36` DISABLE KEYS */;
INSERT INTO `LT36` VALUES (1,36,'2020-03-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,36,'2020-06-08','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT37`
--

DROP TABLE IF EXISTS `LT37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT37` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT37_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT37`
--

LOCK TABLES `LT37` WRITE;
/*!40000 ALTER TABLE `LT37` DISABLE KEYS */;
INSERT INTO `LT37` VALUES (1,37,'2020-05-29','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','24','ni  podatka','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT38`
--

DROP TABLE IF EXISTS `LT38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT38` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT38_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT38`
--

LOCK TABLES `LT38` WRITE;
/*!40000 ALTER TABLE `LT38` DISABLE KEYS */;
INSERT INTO `LT38` VALUES (1,38,'2020-06-02','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','24','/','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT39`
--

DROP TABLE IF EXISTS `LT39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT39` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT39_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT39`
--

LOCK TABLES `LT39` WRITE;
/*!40000 ALTER TABLE `LT39` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT39` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT4`
--

DROP TABLE IF EXISTS `LT4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT4_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT4`
--

LOCK TABLES `LT4` WRITE;
/*!40000 ALTER TABLE `LT4` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT40`
--

DROP TABLE IF EXISTS `LT40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT40` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT40_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT40`
--

LOCK TABLES `LT40` WRITE;
/*!40000 ALTER TABLE `LT40` DISABLE KEYS */;
INSERT INTO `LT40` VALUES (1,40,'2020-06-10','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT41`
--

DROP TABLE IF EXISTS `LT41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT41` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT41_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT41`
--

LOCK TABLES `LT41` WRITE;
/*!40000 ALTER TABLE `LT41` DISABLE KEYS */;
INSERT INTO `LT41` VALUES (1,41,'2020-03-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,41,'2020-06-10','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT42`
--

DROP TABLE IF EXISTS `LT42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT42` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT42_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT42`
--

LOCK TABLES `LT42` WRITE;
/*!40000 ALTER TABLE `LT42` DISABLE KEYS */;
INSERT INTO `LT42` VALUES (1,42,'2020-07-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar');
/*!40000 ALTER TABLE `LT42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT43`
--

DROP TABLE IF EXISTS `LT43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT43` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT43_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT43`
--

LOCK TABLES `LT43` WRITE;
/*!40000 ALTER TABLE `LT43` DISABLE KEYS */;
INSERT INTO `LT43` VALUES (1,43,'2020-07-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','26','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar');
/*!40000 ALTER TABLE `LT43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT44`
--

DROP TABLE IF EXISTS `LT44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT44` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT44_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT44`
--

LOCK TABLES `LT44` WRITE;
/*!40000 ALTER TABLE `LT44` DISABLE KEYS */;
INSERT INTO `LT44` VALUES (1,44,'2020-07-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','26','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar');
/*!40000 ALTER TABLE `LT44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT45`
--

DROP TABLE IF EXISTS `LT45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT45` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT45_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT45`
--

LOCK TABLES `LT45` WRITE;
/*!40000 ALTER TABLE `LT45` DISABLE KEYS */;
/*!40000 ALTER TABLE `LT45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT46`
--

DROP TABLE IF EXISTS `LT46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT46` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT46_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT46`
--

LOCK TABLES `LT46` WRITE;
/*!40000 ALTER TABLE `LT46` DISABLE KEYS */;
INSERT INTO `LT46` VALUES (1,46,'2020-02-12','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','s','s','urejeno','urejeno','OK','OK','OK','OK','/','test'),(2,46,'2020-02-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','25','sdfg','urejeno','urejeno','OK','OK','OK','OK','s','test'),(3,46,'2020-07-06','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','26','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar');
/*!40000 ALTER TABLE `LT46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT5`
--

DROP TABLE IF EXISTS `LT5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT5` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date DEFAULT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT5_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT5`
--

LOCK TABLES `LT5` WRITE;
/*!40000 ALTER TABLE `LT5` DISABLE KEYS */;
INSERT INTO `LT5` VALUES (1,5,'2020-02-05','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','23','5.2.2020','urejeno','urejeno','OK','OK','OK','NOK','/','ar16211'),(3,5,'2020-06-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','18.6.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT6`
--

DROP TABLE IF EXISTS `LT6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT6` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT6_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT6`
--

LOCK TABLES `LT6` WRITE;
/*!40000 ALTER TABLE `LT6` DISABLE KEYS */;
INSERT INTO `LT6` VALUES (1,6,'2020-02-05','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','NOK','22','5.2.2020','urejeno','urejeno','OK','OK','NOK','OK','nad omaro kupola - možnost vdora vode','ar16211'),(2,6,'2020-06-18','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','18.6.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT7`
--

DROP TABLE IF EXISTS `LT7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT7` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT7_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT7`
--

LOCK TABLES `LT7` WRITE;
/*!40000 ALTER TABLE `LT7` DISABLE KEYS */;
INSERT INTO `LT7` VALUES (1,7,'2020-02-20','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','/','ar16211'),(2,7,'2020-06-04','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','/','/','urejeno','NOK','NOK','OK','NOK','OK','narejen 5S','ar16211');
/*!40000 ALTER TABLE `LT7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT8`
--

DROP TABLE IF EXISTS `LT8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT8_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT8`
--

LOCK TABLES `LT8` WRITE;
/*!40000 ALTER TABLE `LT8` DISABLE KEYS */;
INSERT INTO `LT8` VALUES (1,8,'2020-05-12','OK','urejeno','urejeno','urejeno','urejeno','srednje','OK','OK','21','12.5.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211');
/*!40000 ALTER TABLE `LT8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LT9`
--

DROP TABLE IF EXISTS `LT9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LT9` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int NOT NULL,
  `datum` date NOT NULL,
  `dostop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `tla` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `urejenost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `patch_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `optika` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `prasnost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `voda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `temperatura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `klima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `el_kabli` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `vrata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `kljuc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gas_aparat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `gorlivost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `opombe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `ar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  CONSTRAINT `LT9_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LT9`
--

LOCK TABLES `LT9` WRITE;
/*!40000 ALTER TABLE `LT9` DISABLE KEYS */;
INSERT INTO `LT9` VALUES (1,9,'2020-02-27','otezen','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','21.2.2020','urejeno','urejeno','OK','OK','NOK','OK','/','ar16211'),(2,9,'2020-06-04','otezen','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','22','1.6.2020','urejeno','urejeno','OK','OK','NOK','OK','narejen 5S','ar16211'),(3,9,'2021-02-03','OK','urejeno','urejeno','urejeno','urejeno','OK','OK','OK','24','2.2.2021','urejeno','urejeno','OK','OK','NOK','OK','/','ar');
/*!40000 ALTER TABLE `LT9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `LT` int NOT NULL,
  `prostor` text NOT NULL,
  `hlajenje` text NOT NULL,
  PRIMARY KEY (`LT`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'Soba','Klima'),(2,'Soba','Klima'),(3,'Soba','Klima'),(4,'Soba','Klima'),(5,'Soba','Klima'),(6,'Soba','Klima'),(7,'Omara','Klima'),(8,'Soba','Klima'),(9,'Soba','Klima'),(10,'Soba','Klima'),(11,'Soba','Klima'),(12,'Soba','Klima'),(13,'Omara','Ventilator'),(14,'Omara','Ventilator'),(15,'Omara','Ventilator'),(16,'Omara','Klima'),(17,'Omara','Ventilator'),(18,'Omara','Ventilator'),(19,'Omara','Klima'),(22,'Omara','Ventilator'),(23,'Omara','Ventilator'),(24,'Omara','Ventilator'),(26,'Soba','Klima'),(27,'Omara','Ventilator'),(28,'Omara','Ventilator'),(29,'Soba','Klima'),(30,'Omara','Ventilator'),(32,'Omara','Ventilator'),(33,'Omara','Ventilator'),(34,'Omara','Ventilator'),(35,'Omara','Ventilator'),(36,'Omara','Ventilator'),(37,'Soba','Klima'),(38,'Soba','Klima'),(39,'Soba','Klima'),(40,'Omara','Klima'),(41,'Omara','Klima'),(42,'Omara','Klima'),(43,'Omara','Klima'),(44,'Omara','Klima'),(45,'Omara','Klima'),(46,'Omara','Klima');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novice`
--

DROP TABLE IF EXISTS `novice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LT` int DEFAULT NULL,
  `naslov` varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `besedilo` text NOT NULL,
  `slika` varchar(255) NOT NULL,
  `slika2` varchar(255) DEFAULT NULL,
  `slika3` varchar(255) DEFAULT NULL,
  `avtor` varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `datum` varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `LT` (`LT`),
  KEY `avtor` (`avtor`),
  CONSTRAINT `novice_ibfk_1` FOREIGN KEY (`LT`) REFERENCES `info` (`LT`),
  CONSTRAINT `novice_ibfk_2` FOREIGN KEY (`avtor`) REFERENCES `uporabniki` (`ar`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novice`
--

LOCK TABLES `novice` WRITE;
/*!40000 ALTER TABLE `novice` DISABLE KEYS */;
INSERT INTO `novice` VALUES (53,1,'1','bla bla bla bla bla bla','72667619_411001693161558_3911431737283969024_n.jpg',NULL,NULL,'ar00465','22/05/2020 15:03:37'),(54,1,'1','1','39xISRK.jpg',NULL,NULL,'ar00465','22/05/2020 15:16:43'),(55,1,'1','1','20190912_084254.jpg',NULL,NULL,'ar00465','22/05/2020 15:16:56'),(56,1,'1','1','72667619_411001693161558_3911431737283969024_n.jpg',NULL,NULL,'ar00465','22/05/2020 15:17:02'),(57,1,'1','1','20190912_084254.jpg',NULL,NULL,'ar00465','25/05/2020 13:35:31'),(58,1,'1','1','61914827_1053256768191376_2884988322235547648_n.jpg',NULL,NULL,'ar00465','29/05/2020 11:20:54'),(59,11,'11','tatatata','',NULL,NULL,'ar00465','29/05/2020 11:27:38'),(60,22,'22','222','',NULL,NULL,'ar00465','29/05/2020 11:28:04'),(61,11,'11','11','100478327_951956078584931_5518492737193639936_n.jpg',NULL,NULL,'ar00465','29/05/2020 11:33:11'),(62,11,'11','11','100478327_951956078584931_5518492737193639936_n.jpg',NULL,NULL,'ar00465','01/06/2020 10:17:50'),(63,11,'11','11','100478327_951956078584931_5518492737193639936_n.jpg',NULL,NULL,'ar00465','01/06/2020 10:18:14');
/*!40000 ALTER TABLE `novice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uporabniki`
--

DROP TABLE IF EXISTS `uporabniki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uporabniki` (
  `ar` varchar(10) NOT NULL,
  `mail` text NOT NULL,
  `ime` text NOT NULL,
  `geslo` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`ar`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uporabniki`
--

LOCK TABLES `uporabniki` WRITE;
/*!40000 ALTER TABLE `uporabniki` DISABLE KEYS */;
INSERT INTO `uporabniki` VALUES ('ar00465','blaz.burger@renault.com','Blaz','f8b482a889832cdecbbd9123e79c1090f1a03623d32d748a936dbd658155311d7cf3d4a15e4c90b1890730ccb39387e4bb5d4c7a363aab9c1b5be7fd684d2169','admin'),('ar22094','mihaela.blazevic@renault.com','M. Blazevic','2b78728c9e16dd4ce544add72a35eb083c06770976a88ab951f4b3ed9c26971dc35d1a0f3db8b0c12cd91b1f7247e7f5b34c098d1863e360d4b969f9f9ec2e17','power_user'),('test11','ccd','ccd','2935b5264e202ec21723d211fb90e655ad989a3b655cc4acc7252a573acbbaeb26bdbaf55d36453af4eedc04799490b26f58317090f239f19af0d1fbdc861fb0','admin'),('test2','test','test','f8b482a889832cdecbbd9123e79c1090f1a03623d32d748a936dbd658155311d7cf3d4a15e4c90b1890730ccb39387e4bb5d4c7a363aab9c1b5be7fd684d2169','power_user'),('user','-','user','8d4880cd7f51a3abf3c40f8f25fcb19aeaf54b7edd9d1fc177b37f47314280a43080165eb771d419b0a914161214e29e338b6a3952b90de2ee597e5e0fa26338','user');
/*!40000 ALTER TABLE `uporabniki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogs`
--

DROP TABLE IF EXISTS `userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogs` (
  `ar` varchar(10) NOT NULL,
  `time` varchar(30) NOT NULL,
  `dejavnost` text NOT NULL,
  `ip` varchar(20) NOT NULL,
  KEY `ar` (`ar`),
  CONSTRAINT `userlogs_ibfk_1` FOREIGN KEY (`ar`) REFERENCES `uporabniki` (`ar`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogs`
--

LOCK TABLES `userlogs` WRITE;
/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` VALUES ('ar00465','05-02-2020-13-57-01','Uspesna prijava','0'),('user','05-02-2020-14-26-01','Uspesna prijava','10.189.24.76'),('ar00465','05-02-2020-14-26-07','Uspesna prijava','10.189.24.76'),('ar00465','05-02-2020-14-57-42','Uspesna prijava','10.189.24.76'),('user','05-02-2020-14-59-57','Uspesna prijava','10.189.24.76'),('ar00465','05-02-2020-15-01-11','Neuspesna prijava','10.189.24.76'),('ar00465','05-02-2020-15-06-01','Uspesna prijava','10.189.24.76'),('ar00465','05-02-2020-15-06-20','NEuspesna prijava','10.189.24.76'),('ar00465','06-02-2020-08-04-10','Uspesna prijava','10.189.24.76'),('ar00465','06-02-2020-10-49-54','Uspesna prijava','10.189.24.76'),('user','06-02-2020-11-08-45','Uspesna prijava','10.189.24.76'),('ar00465','06-02-2020-11-09-37','Uspesna prijava','10.189.24.76'),('ar00465','11-02-2020-09-02-13','Uspesna prijava','10.189.24.76'),('user','12-02-2020-15-09-47','Uspesna prijava','10.189.24.76'),('ar00465','13-02-2020-11-06-14','Uspesna prijava','10.189.24.76'),('ar00465','13-02-2020-11-10-13','Neuspesna prijava','::1'),('ar00465','13-02-2020-11-10-17','Uspesna prijava','::1'),('user','13-02-2020-11-39-55','Uspesna prijava','10.189.24.76'),('ar00465','13-02-2020-11-44-47','Uspesna prijava','10.189.24.76'),('ar00465','13-02-2020-14-18-18','Uspesna prijava','10.189.24.76'),('ar00465','17-02-2020-10-16-32','Uspesna prijava','10.189.24.76'),('user','18-02-2020-11-35-30','Uspesna prijava','10.189.24.76'),('user','18-02-2020-11-41-45','Uspesna prijava','10.189.24.76'),('ar00465','18-02-2020-11-42-07','Uspesna prijava','10.189.24.76'),('user','18-02-2020-11-43-44','Uspesna prijava','10.189.24.76'),('ar00465','18-02-2020-14-30-18','Uspesna prijava','10.189.24.76'),('ar00465','27-02-2020-08-11-01','Uspesna prijava','10.189.24.76'),('ar00465','27-02-2020-14-48-46','Uspesna prijava','10.189.24.76'),('ar00465','02-03-2020-08-14-46','Uspesna prijava','10.189.24.76'),('ar00465','11-03-2020-08-58-56','Uspesna prijava','10.237.133.181'),('ar00465','13-03-2020-09-06-29','Uspesna prijava','10.189.24.76'),('ar00465','29-04-2020-09-36-07','Uspesna prijava','10.189.24.199'),('ar00465','04-05-2020-09-33-54','Uspesna prijava','10.189.24.199'),('ar00465','04-05-2020-13-31-58','Uspesna prijava','10.189.24.199'),('ar00465','04-05-2020-14-44-01','Neuspesna prijava','10.189.24.199'),('ar00465','04-05-2020-14-44-09','Uspesna prijava','10.189.24.199'),('ar00465','05-05-2020-13-47-27','Uspesna prijava','10.189.24.199'),('ar00465','11-05-2020-10-55-44','Uspesna prijava','10.189.24.199'),('ar00465','14-05-2020-12-59-17','Uspesna prijava','10.189.24.199'),('user','14-05-2020-12-59-27','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-09-58-57','Uspesna prijava','10.189.24.199'),('user','15-05-2020-14-51-05','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-14-51-18','Neuspesna prijava','10.189.24.199'),('ar00465','15-05-2020-14-51-25','Neuspesna prijava','10.189.24.199'),('test11','15-05-2020-14-51-48','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-00-37','Uspesna prijava','10.189.24.199'),('user','15-05-2020-15-01-50','Uspesna prijava','10.189.24.199'),('user','15-05-2020-15-03-05','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-04-02','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-06-53','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-08-42','Neuspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-08-48','Uspesna prijava','10.189.24.199'),('test2','15-05-2020-15-10-17','Uspesna prijava','10.189.24.199'),('test2','15-05-2020-15-10-23','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-10-28','Neuspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-10-40','Uspesna prijava','10.189.24.199'),('test2','15-05-2020-15-10-54','Uspesna prijava','10.189.24.199'),('user','15-05-2020-15-11-03','Uspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-11-47','Uspesna prijava','10.189.24.199'),('test2','15-05-2020-15-12-07','Neuspesna prijava','10.189.24.199'),('test2','15-05-2020-15-12-12','Neuspesna prijava','10.189.24.199'),('ar00465','15-05-2020-15-15-01','Uspesna prijava','10.189.24.199'),('test2','15-05-2020-15-15-22','Uspesna prijava','10.189.24.199'),('user','18-05-2020-12-48-30','Uspesna prijava','10.189.24.199'),('ar00465','19-05-2020-11-19-44','Uspesna prijava','10.189.24.199'),('user','19-05-2020-15-12-34','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-08-51-41','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-24-19','Uspesna prijava','10.189.24.199'),('test2','20-05-2020-10-36-43','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-37-00','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-40-23','Uspesna prijava','10.189.24.199'),('ar22094','20-05-2020-10-43-41','Neuspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-44-16','Uspesna prijava','10.189.24.199'),('ar22094','20-05-2020-10-44-36','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-45-40','Uspesna prijava','10.189.24.199'),('test2','20-05-2020-10-52-01','Uspesna prijava','10.189.24.199'),('test2','20-05-2020-10-53-46','Neuspesna prijava','10.189.24.199'),('test2','20-05-2020-10-53-51','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-55-02','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-10-55-53','Uspesna prijava','10.189.24.199'),('test2','20-05-2020-11-03-30','Uspesna prijava','10.189.24.199'),('USER','20-05-2020-11-05-27','Neuspesna prijava','10.189.24.199'),('user','20-05-2020-11-05-31','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-11-05-52','Uspesna prijava','10.189.24.199'),('user','20-05-2020-11-09-35','Uspesna prijava','10.189.24.199'),('test2','20-05-2020-11-09-47','Uspesna prijava','10.189.24.199'),('ar00465','20-05-2020-13-39-13','Uspesna prijava','10.189.24.199'),('ar00465','22-05-2020-09-23-25','Uspesna prijava','10.189.24.199'),('ar00465','22-05-2020-13-58-40','Uspesna prijava','10.189.24.199'),('ar00465','25-05-2020-11-52-32','Uspesna prijava','138.21.89.91'),('ar00465','25-05-2020-11-53-35','Uspesna prijava','10.189.24.199'),('ar00465','25-05-2020-14-57-16','Uspesna prijava','10.189.24.199'),('ar00465','28-05-2020-07-23-33','Neuspesna prijava','10.189.24.199'),('ar00465','28-05-2020-07-23-43','Uspesna prijava','10.189.24.199'),('ar00465','28-05-2020-14-13-26','Uspesna prijava','::1'),('ar00465','29-05-2020-09-32-29','Uspesna prijava','10.189.24.199'),('user','29-05-2020-09-39-15','Uspesna prijava','10.189.24.199'),('ar00465','29-05-2020-09-39-22','Uspesna prijava','10.189.24.199'),('ar00465','02-06-2020-11-20-30','Uspesna prijava','10.189.24.199'),('ar00465','05-06-2020-13-40-42','Uspesna prijava','10.189.24.199'),('ar00465','10-06-2020-08-03-07','Neuspesna prijava','10.189.24.199'),('ar00465','10-06-2020-08-03-16','Uspesna prijava','10.189.24.199'),('ar00465','10-06-2020-08-23-53','Uspesna prijava','10.237.133.181'),('ar00465','10-06-2020-09-53-35','Uspesna prijava','10.189.24.199'),('user','11-06-2020-10-41-17','Uspesna prijava','10.237.130.164'),('user','11-06-2020-10-49-18','Uspesna prijava','10.237.134.16'),('ar00465','15-06-2020-07-58-59','Uspesna prijava','10.189.24.199'),('user','16-06-2020-14-18-58','Uspesna prijava','10.237.134.16'),('ar00465','16-06-2020-14-19-19','Neuspesna prijava','10.237.134.16'),('ar00465','16-06-2020-14-19-29','Uspesna prijava','10.237.134.16'),('user','17-06-2020-12-24-20','Uspesna prijava','10.237.130.164'),('user','17-06-2020-12-45-45','Uspesna prijava','::1'),('user','17-06-2020-13-36-16','Uspesna prijava','10.189.24.199'),('ar00465','17-06-2020-13-36-25','Uspesna prijava','10.189.24.199'),('ar00465','17-06-2020-13-45-39','Uspesna prijava','10.237.134.16'),('ar00465','18-06-2020-08-02-05','Uspesna prijava','10.189.24.199'),('ar00465','18-06-2020-11-44-23','Uspesna prijava','10.189.24.199'),('user','24-06-2020-12-12-01','Uspesna prijava','10.237.130.164'),('user','29-06-2020-10-55-41','Uspesna prijava','10.237.130.164'),('ar00465','29-06-2020-14-16-47','Uspesna prijava','10.189.24.199'),('user','29-06-2020-15-09-13','Uspesna prijava','10.237.130.164'),('user','30-06-2020-12-10-27','Uspesna prijava','10.237.130.164'),('ar00465','01-07-2020-09-06-02','Uspesna prijava','10.189.24.199'),('ar00465','02-07-2020-07-53-15','Uspesna prijava','10.189.24.199'),('ar00465','03-07-2020-08-10-31','Neuspesna prijava','10.189.24.199'),('ar00465','03-07-2020-08-10-36','Uspesna prijava','10.189.24.199'),('ar00465','11-01-2021-14-02-18','Uspesna prijava','10.189.24.68'),('ar00465','18-01-2021-09-55-43','Uspesna prijava','10.228.154.81'),('Ar00465','15-02-2021-13-43-30','Neuspesna prijava','10.189.27.147'),('ar00465','15-02-2021-13-43-52','Uspesna prijava','10.189.27.147'),('ar00465','15-02-2021-13-49-08','Neuspesna prijava','10.189.25.230'),('ar00465','15-02-2021-13-49-15','Uspesna prijava','10.189.25.230'),('ar00465','15-02-2021-13-57-13','Uspesna prijava','10.189.27.147'),('User','15-02-2021-14-06-05','Uspesna prijava','10.189.27.147'),('Ar00465','19-02-2021-10-07-12','Neuspesna prijava','10.189.27.147'),('Ar00465','19-02-2021-10-07-36','Uspesna prijava','10.189.27.147'),('ar00465','22-02-2021-14-33-14','Uspesna prijava','10.228.148.127'),('ar00465','22-02-2021-14-35-20','Neuspesna prijava','10.228.148.127'),('ar00465','22-02-2021-14-35-26','Uspesna prijava','10.228.148.127'),('ar00465','25-02-2021-11-20-40','Uspesna prijava','10.189.25.230'),('ar00465','03-03-2021-10-25-49','Uspesna prijava','10.189.25.230'),('User','15-03-2021-10-22-00','Neuspesna prijava','10.189.25.92'),('user','15-03-2021-10-22-05','Uspesna prijava','10.189.25.92');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 12:38:10
