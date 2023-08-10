-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondm
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` datetime NOT NULL,
  `Quantity` int NOT NULL,
  `Cost` decimal(5,2) NOT NULL,
  `MenuID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `DeliveryID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Deliveries_idx` (`DeliveryID`),
  KEY `fk_Orders_Menu1_idx` (`MenuID`),
  KEY `fk_Orders_Customers1_idx` (`CustomerID`),
  CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `fk_Orders_Deliveries` FOREIGN KEY (`DeliveryID`) REFERENCES `deliveries` (`DeliveryID`),
  CONSTRAINT `fk_Orders_Menu1` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`MenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-05-07 00:00:00',3,45.56,3,1,1),(2,'2023-05-07 00:00:00',1,12.45,1,4,2),(3,'2023-05-07 00:00:00',5,100.34,5,2,3),(4,'2023-05-07 00:00:00',2,34.65,6,7,4),(5,'2023-05-07 00:00:00',4,67.87,3,4,5),(6,'2023-05-07 00:00:00',1,15.65,2,4,6),(7,'2023-05-07 00:00:00',1,13.54,4,8,7),(8,'2023-05-08 00:00:00',5,76.87,2,5,8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-10 15:10:16
