-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tourism
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `города`
--

DROP TABLE IF EXISTS `города`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `города` (
  `id_Города` int NOT NULL AUTO_INCREMENT,
  `Название_города` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Города`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `города`
--

LOCK TABLES `города` WRITE;
/*!40000 ALTER TABLE `города` DISABLE KEYS */;
INSERT INTO `города` VALUES (1,'Санкт-Петербург'),(2,'Москва'),(3,'Псков'),(4,'Новгород');
/*!40000 ALTER TABLE `города` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `доп_услуги`
--

DROP TABLE IF EXISTS `доп_услуги`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `доп_услуги` (
  `id_Доп_услуги` int NOT NULL AUTO_INCREMENT,
  `Название` varchar(45) NOT NULL,
  `Описание` varchar(200) NOT NULL,
  PRIMARY KEY (`id_Доп_услуги`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `доп_услуги`
--

LOCK TABLES `доп_услуги` WRITE;
/*!40000 ALTER TABLE `доп_услуги` DISABLE KEYS */;
INSERT INTO `доп_услуги` VALUES (1,'Обед','Обед группой в ресторане или кафе'),(2,'1_ребенок','Дополнительное бесплатное место для одного ребенка'),(3,'Доп_экскурсия','Дополнительная экскурсия'),(4,'Гид','Услуги гида');
/*!40000 ALTER TABLE `доп_услуги` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `отель`
--

DROP TABLE IF EXISTS `отель`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `отель` (
  `id_Отель` int NOT NULL AUTO_INCREMENT,
  `Название` varchar(45) NOT NULL,
  `город` int NOT NULL,
  PRIMARY KEY (`id_Отель`),
  KEY `FK_город_idx` (`город`),
  CONSTRAINT `FK_город` FOREIGN KEY (`город`) REFERENCES `города` (`id_Города`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `отель`
--

LOCK TABLES `отель` WRITE;
/*!40000 ALTER TABLE `отель` DISABLE KEYS */;
INSERT INTO `отель` VALUES (1,'ДельЛуна',2),(2,'Бертрам',2),(3,'Астория',1),(4,'У погибшего альпиниста',1),(5,'Гостевой дом \"У бабы Вали\"',3),(6,'Кемпинг \"Сосновый бор\"',4),(7,'Гостиница \"Тихий дворик\"',4);
/*!40000 ALTER TABLE `отель` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `транспорт`
--

DROP TABLE IF EXISTS `транспорт`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `транспорт` (
  `id_Транспорт` int NOT NULL AUTO_INCREMENT,
  `Вид_транспорта` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Транспорт`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `транспорт`
--

LOCK TABLES `транспорт` WRITE;
/*!40000 ALTER TABLE `транспорт` DISABLE KEYS */;
INSERT INTO `транспорт` VALUES (1,'Автобус 30 мест'),(2,'Теплоход'),(3,'Автобус 50 мест');
/*!40000 ALTER TABLE `транспорт` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `экскурсии`
--

DROP TABLE IF EXISTS `экскурсии`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `экскурсии` (
  `id_Экскурсии` int NOT NULL AUTO_INCREMENT,
  `Название` varchar(45) NOT NULL,
  `Город` int NOT NULL,
  `Транспорт` int NOT NULL,
  `Количество_дней` int NOT NULL,
  `Отель` int DEFAULT NULL,
  `Доп_услуги` int DEFAULT NULL,
  `Цена` int NOT NULL,
  `Дата_отправления` date NOT NULL,
  PRIMARY KEY (`id_Экскурсии`),
  KEY `FK_город_поездки_idx` (`Город`),
  KEY `FK_транспорт_idx` (`Транспорт`),
  KEY `FK_отель_idx` (`Отель`),
  KEY `FK_доп_услуги_idx` (`Доп_услуги`),
  CONSTRAINT `FK_город_поездки` FOREIGN KEY (`Город`) REFERENCES `города` (`id_Города`),
  CONSTRAINT `FK_доп_услуги` FOREIGN KEY (`Доп_услуги`) REFERENCES `доп_услуги` (`id_Доп_услуги`),
  CONSTRAINT `FK_отель` FOREIGN KEY (`Отель`) REFERENCES `отель` (`id_Отель`),
  CONSTRAINT `FK_транспорт` FOREIGN KEY (`Транспорт`) REFERENCES `транспорт` (`id_Транспорт`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `экскурсии`
--

LOCK TABLES `экскурсии` WRITE;
/*!40000 ALTER TABLE `экскурсии` DISABLE KEYS */;
INSERT INTO `экскурсии` VALUES (1,'Город над Невой',1,1,2,3,1,20000,'2024-01-07'),(2,'Водный мир',1,2,1,NULL,2,10000,'2024-01-08'),(3,'По следам Садко',4,2,3,6,2,15000,'2024-05-07'),(4,'Столица',2,3,3,1,1,50000,'2024-05-08'),(5,'Древние стены',3,3,2,5,4,50000,'2024-07-07');
/*!40000 ALTER TABLE `экскурсии` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 22:36:13
