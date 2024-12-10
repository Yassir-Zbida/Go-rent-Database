-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: gorent
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(100) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Year` int NOT NULL,
  `Price/Day` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Toyota','Corolla',2022,300.00),(2,'Renault','Duster',2021,300.00),(3,'Peugeot','208',2022,250.00),(4,'Hyundai','Tucson',2020,300.00),(5,'Kia','Sportage',2021,300.00),(6,'Ford','Focus',2022,250.00),(7,'Nissan','Juke',2020,300.00),(8,'Volkswagen','Golf',2021,350.00),(9,'BMW','X1',2022,500.00),(10,'Mercedes','A-Class',2021,500.00),(11,'Dacia','Duster',2021,200.00),(12,'Citroen','C3',2020,300.00);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `First Name` varchar(100) NOT NULL,
  `Last Name` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (2,'Sara','El Amrani','0654321098','sara.elamrani@example.com','45 Rue de la Liberté, Marrakesh'),(3,'Yassir','Zbida','0601234567','yassir.zbida@example.com','12 Avenue Hassan II, Rabat'),(4,'Mouna','Bennani','0678945670','mouna.bennani@example.com','78 Rue Mohammed VI, Fes'),(5,'Omar','El Idrissi','0623456789','omar.elidrissi@example.com','3 Rue Ibn Sina, Tangier'),(6,'Laila','Alami','0656789012','laila.alami@example.com','10 Rue Moulay Ismail, Agadir'),(12,'Abdelmouhaimin','Jassimi','651654186','anazwin@gmail.com','zefpozikdf');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Client_ID` int NOT NULL,
  `Car_ID` int NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_client` (`Client_ID`),
  KEY `fk_car` (`Car_ID`),
  CONSTRAINT `fk_car` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `fk_client` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;!

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (4,3,3,'2024-12-03','2024-12-07',1200.00),(6,5,5,'2024-12-05','2024-12-09',2000.00);
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;


-- delete 
DELETE FROM contracts WHERE ID = 5 ;
-- Add 
INSERT INTO `clients` (`First Name`,`Last Name`,`Phone`,`Email`,`Address`) VALUES ('Yassir','Zbida','0772508881','zbidayassir10@gmail.com','Safi Morocco');
-- edit 
UPDATE clients SET Email = 'zbida1yassir10@@gmail.com',  Phone = '077250882' WHERE ID = 5 ;
