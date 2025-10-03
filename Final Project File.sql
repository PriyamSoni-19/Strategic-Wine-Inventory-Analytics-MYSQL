CREATE DATABASE  IF NOT EXISTS `wine complete` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wine complete`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: wine complete
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressID` int NOT NULL,
  `streetNUMBER` varchar(45) DEFAULT NULL,
  `streetName` varchar(45) DEFAULT NULL,
  `suburb` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'211','Golden Acres Dr','Rothbury','NSW','2320'),(2,'78','Vine Street','Cessnock','NSW','2325'),(3,'100','Cedar Valley Rd','Lovedale','NSW','2325'),(4,'450','Redwood Rd','Rothbury','NSW','2320'),(5,'600','Blossom Hill Rd','Pokolbin','NSW','2320'),(6,'34','Bluebell St','Pokolbin','NSW','2320'),(7,'214','Moonlit Rd','Pokolbin','NSW','2320'),(8,'325','Eagles Nest Rd','Broke','NSW','2330'),(9,'305','Hillside View Rd','Cessnock','NSW','2325'),(10,'105','Mountain View Rd','Lovedale','NSW','2325'),(11,'124','Old Creek Rd','Pokolbin','NSW','2320'),(12,'19','Brookstone Rd','Cessnock','NSW','2325'),(13,'400','Hunter Ridge Rd','Cessnock','NSW','2325'),(14,'238','Breezeway Rd','Rothbury','NSW','2320'),(15,'21','Riverside Rd','Rothbury','NSW','2320'),(16,'75','Pinehurst Rd','Pokolbin','NSW','2320'),(17,'432','Riverside Dr','Lovedale','NSW','2325'),(18,'222','Bella Vista Rd','Broke','NSW','2330'),(19,'888','Sunset Blvd','Cessnock','NSW','2325'),(20,'789','Sunset Ln','Cessnock','NSW','2325'),(21,'125','Silverstone Rd','Rothbury','NSW','2320'),(22,'97','Sunrise Way','Rothbury','NSW','2320'),(23,'220','Shady Glen Rd','Rothbury','NSW','2320'),(24,'350','Old Mill Rd','Cessnock','NSW','2325'),(25,'19','Red Hill Rd','Cessnock','NSW','2325'),(26,'450','Mountain Grove Rd','Lovedale','NSW','2325'),(27,'350','Blue Sky Rd','Pokolbin','NSW','2320'),(28,'220','Oak Ridge Rd','Rothbury','NSW','2320'),(29,'123','Hunter Valley Rd','Pokolbin','NSW','2320'),(30,'400','Eagle View Rd','Pokolbin','NSW','2320'),(31,'134','Crystal Creek Rd','Lovedale','NSW','2325'),(32,'380','Creekside Rd','Cessnock','NSW','2325'),(33,'456','Stone Ridge Dr','Broke','NSW','2330'),(34,'27','Riverbend Rd','Pokolbin','NSW','2320'),(35,'120','Fernhill Rd','Broke','NSW','2330'),(36,'175','Orchid Dr','Rothbury','NSW','2320'),(37,'15','Golden Plains Rd','Pokolbin','NSW','2320'),(38,'675','Sunset Ridge Rd','Broke','NSW','2330'),(39,'540','Windswept Dr','Cessnock','NSW','2325'),(40,'500','Vine Valley Rd','Lovedale','NSW','2325'),(41,'85','Morning Light Rd','Rothbury','NSW','2320'),(42,'255','Suncrest Rd','Lovedale','NSW','2325'),(43,'800','Horizon View Rd','Broke','NSW','2330'),(44,'134','Green Hills Rd','Pokolbin','NSW','2320'),(45,'78','Lakeside Dr','Pokolbin','NSW','2320'),(46,'545','Autumn Leaf Rd','Lovedale','NSW','2325'),(47,'265','Silver Creek Rd','Mount Hunter ','NSW','2570'),(48,'510','Green Valley Rd','Lovedale','NSW','2325'),(49,'169','Vineyard Rd','Mount Hunter ','NSW','2570'),(50,'735','Vineyard Rd','Mount Hunter ','NSW','2570'),(51,'176','Vineyard Rd','Mount Hunter ','NSW','2570'),(52,'353','Vineyard Rd','Mount Hunter ','NSW','2570'),(53,'518','Vineyard Rd','Mount Hunter ','NSW','2570'),(54,'755','Vineyard Rd','Mount Hunter ','NSW','2570'),(55,'369','Vineyard Rd','Mount Hunter ','NSW','2570'),(56,'476','Vineyard Rd','Mount Hunter ','NSW','2570'),(57,'951','Vineyard Rd','Mount Hunter ','NSW','2570');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottle`
--

DROP TABLE IF EXISTS `bottle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottle` (
  `bottleID` varchar(10) NOT NULL,
  `supplyitem` varchar(10) NOT NULL,
  `certification` varchar(10) NOT NULL,
  `capacity(ML)` int NOT NULL,
  `shape` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `inventoryCount` int NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`bottleID`,`supplyitem`),
  KEY `supplyIDFK2_idx` (`supplyitem`),
  KEY `certificationIDFK2_idx` (`certification`),
  CONSTRAINT `certificationIDFK2` FOREIGN KEY (`certification`) REFERENCES `sustainabilitycert` (`certificationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supplyIDFK2` FOREIGN KEY (`supplyitem`) REFERENCES `supplyitem` (`supplyItemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES ('B001','SI030','C011',500,'Bordeaux','Metal','Clear',182,0.57),('B002','SI026','C011',375,'Burgundy','Plastic','Blue',177,0.89),('B003','SI009','C020',1500,'Flask','Plastic','Brown',51,2.15),('B004','SI006','C010',750,'Burgundy','Glass','Green',131,1.07),('B005','SI004','C015',750,'Champagne','Glass','Brown',98,0.88),('B006','SI019','C003',1000,'Burgundy','Glass','Blue',178,1.81),('B007','SI029','C009',500,'Bordeaux','Plastic','Brown',69,2.49),('B008','SI027','C012',500,'Champagne','Plastic','Green',72,1.48),('B009','SI010','C006',750,'Champagne','Metal','Clear',89,2.18),('B010','SI024','C002',500,'Burgundy','Glass','Brown',156,2.85),('B011','SI002','C018',1000,'Bordeaux','Glass','Brown',72,2.50),('B012','SI022','C011',375,'Flask','Metal','Clear',53,1.47),('B013','SI005','C015',1500,'Burgundy','Metal','Clear',59,0.95),('B014','SI015','C018',375,'Champagne','Glass','Clear',84,1.12),('B015','SI012','C012',375,'Burgundy','Glass','Clear',160,2.76),('B016','SI018','C020',500,'Champagne','Glass','Clear',88,2.02),('B017','SI013','C016',375,'Champagne','Plastic','Clear',188,2.20),('B018','SI016','C001',1000,'Champagne','Glass','Brown',60,1.34),('B019','SI003','C017',750,'Burgundy','Glass','Clear',138,2.40),('B020','SI025','C018',750,'Flask','Metal','Brown',198,1.86),('B021','SI007','C010',1000,'Bordeaux','Metal','Clear',134,0.52),('B022','SI014','C011',1000,'Bordeaux','Plastic','Blue',108,2.47),('B023','SI008','C015',500,'Champagne','Metal','Green',155,1.88),('B024','SI023','C019',375,'Burgundy','Glass','Brown',50,2.53),('B025','SI020','C003',750,'Bordeaux','Metal','Clear',122,1.57),('B026','SI021','C019',1000,'Bordeaux','Plastic','Amber',86,1.35),('B027','SI011','C004',500,'Bordeaux','Metal','Green',128,1.50),('B028','SI028','C016',750,'Burgundy','Metal','Amber',175,0.92),('B029','SI001','C001',375,'Flask','Metal','Brown',88,2.79),('B030','SI017','C009',500,'Bordeaux','Metal','Brown',148,0.83),('B031','SI018','C007',1500,'Champagne','Plastic','Blue',200,0.80),('B032','SI015','C017',750,'Champagne','Metal','Clear',133,1.33),('B033','SI016','C015',500,'Champagne','Plastic','Green',72,0.53),('B034','SI021','C015',500,'Champagne','Plastic','Green',183,1.07),('B035','SI023','C001',1000,'Flask','Plastic','Blue',132,1.16),('B036','SI003','C011',1500,'Burgundy','Plastic','Blue',140,2.19),('B037','SI015','C006',750,'Bordeaux','Glass','Blue',169,1.15),('B038','SI027','C003',375,'Burgundy','Plastic','Clear',188,1.80),('B039','SI010','C001',1000,'Flask','Plastic','Amber',62,1.10),('B040','SI012','C009',500,'Champagne','Metal','Clear',89,0.85),('B041','SI019','C004',1000,'Bordeaux','Glass','Amber',61,2.42),('B042','SI005','C012',1000,'Champagne','Plastic','Green',119,2.69),('B043','SI001','C003',375,'Champagne','Metal','Brown',96,1.66),('B044','SI022','C002',375,'Champagne','Plastic','Blue',124,0.53),('B045','SI028','C004',375,'Flask','Plastic','Brown',183,2.94),('B046','SI022','C009',500,'Burgundy','Glass','Blue',95,2.11),('B047','SI015','C003',500,'Burgundy','Glass','Clear',154,2.97),('B048','SI011','C009',1000,'Burgundy','Glass','Green',178,2.98),('B049','SI019','C016',375,'Flask','Metal','Green',168,0.76),('B050','SI028','C011',375,'Burgundy','Plastic','Blue',169,1.79);
/*!40000 ALTER TABLE `bottle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `taxFileNumber` char(50) NOT NULL,
  `employmentType` enum('Casual','Permanent') NOT NULL,
  `dateOfBirth` date NOT NULL,
  `employementStartDate` date NOT NULL,
  `employmentEndDate` date DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E001','Adam','Johnson','567-890-1234','Permanent','1987-01-25','2019-01-31',NULL),('E002','Ahmed','Al-Farsi','223-344-5566','Permanent','1988-08-19','2020-07-01',NULL),('E003','Alan','Lee','234-567-8903','Casual','1990-05-11','2019-04-04',NULL),('E004','Amanda','Brown','901-234-5670','Permanent','1976-02-15','2022-08-04',NULL),('E005','Amanda','Brown','223-334-4455','Permanent','1990-06-25','2024-02-22',NULL),('E006','Amina','Hassan','556-677-8899','Casual','1993-12-09','2015-08-16',NULL),('E007','Benjamin','Scott','678-901-2347','Casual','1983-10-01','2017-06-05',NULL),('E008','Brian','Clark','456-789-0124','Casual','1982-10-10','2020-02-01',NULL),('E009','Brian','Morgan','012-345-6780','Casual','1992-07-30','2023-11-12',NULL),('E010','Carlos','Rodriguez','445-566-7788','Permanent','1984-06-25','2023-04-06',NULL),('E011','Charlotte','Adams','890-123-4568','Casual','1994-12-25','2016-11-28',NULL),('E012','Chloe','Green','456-789-0125','Casual','1982-04-25','2015-08-19',NULL),('E013','Daniel','Lee','012-345-6789','Casual','1986-09-15','2015-09-15',NULL),('E014','David','Knight','789-012-3457','Permanent','1985-01-08','2021-11-06',NULL),('E015','David','Johnson','234-567-8901','Permanent','1980-03-21','2019-06-16',NULL),('E016','Dorothy','Young','345-678-9014','Permanent','1988-02-18','2020-07-16',NULL),('E017','Emily','Davis','678-901-2345','Permanent','1992-03-18','2024-05-04',NULL),('E018','Evelyn','Clark','123-456-7892','Permanent','1987-09-15','2021-04-26',NULL),('E019','Felipe','Pereira','778-899-0011','Permanent','1985-11-14','2020-12-23',NULL),('E020','George','Harris','345-678-9012','Permanent','1983-11-02','2018-11-27',NULL),('E021','Henry','Phillips','567-890-1236','Permanent','1978-12-06','2019-03-03',NULL),('E022','Hugo','Oliveira','890-123-4567','Casual','1987-01-12','2021-02-28',NULL),('E023','Imani','Njiru','667-788-9900','Casual','1991-03-22','2019-10-26',NULL),('E024','Isaac','Walker','456-789-0123','Permanent','1991-05-11','2024-03-30',NULL),('E025','Isabella','Carter','901-234-5678','Permanent','1993-11-21','2016-08-13',NULL),('E026','Jack','Harris','901-234-5679','Permanent','1980-09-01','2018-04-15',NULL),('E027','Jason','Harris','012-345-6781','Casual','1989-07-22','2018-10-21',NULL),('E028','Jason','Harris','112-223-3344','Permanent','1988-11-02','2021-12-02',NULL),('E029','John','Smith','123-456-7890','Permanent','1985-06-15','2021-07-27',NULL),('E030','Joseph','Martinez','678-901-2345','Permanent','1984-09-14','2019-11-29',NULL),('E031','Julia','Hall','345-678-9013','Permanent','1995-05-22','2020-11-11',NULL),('E032','Liam','Thompson','890-123-4569','Casual','1981-05-03','2023-11-08',NULL),('E033','Lisa','Brown','234-567-8901','Permanent','1990-04-20','2023-11-02',NULL),('E034','Mark','Taylor','567-890-1235','Permanent','1979-03-30','2022-09-17',NULL),('E035','Maya','Patel','567-890-1234','Permanent','1993-01-23','2024-01-19',NULL),('E036','Mei','Wong','334-455-6677','Permanent','1990-08-12','2015-12-28',NULL),('E037','Monica','Wright','123-456-7891','Permanent','1989-02-28','2023-10-29',NULL),('E038','Nadia','Gomez','901-234-5678','Permanent','1990-06-18','2018-11-26',NULL),('E039','Naomi','Hall','678-901-2346','Casual','1990-06-17','2022-08-19',NULL),('E040','Olivia','Kim','345-678-9012','Permanent','1992-09-07','2022-12-28',NULL),('E041','Peter','Roberts','234-567-8902','Casual','1981-12-16','2015-11-19',NULL),('E042','Priya','Singh','789-012-3456','Permanent','1994-05-30','2018-08-07',NULL),('E043','Rachel','Green','789-012-3456','Casual','1984-10-07','2021-03-03',NULL),('E044','Sarah','Wilson','456-789-0123','Permanent','1988-05-12','2020-08-14',NULL),('E045','Sarah','Thompson','123-567-8910','Permanent','1985-04-15','2017-04-06',NULL),('E046','Sophie','Adams','789-012-3458','Permanent','1990-11-18','2019-03-13',NULL),('E047','Thomas','White','890-123-4567','Permanent','1991-03-08','2016-04-18',NULL),('E048','Zane','Thomas','012-345-6789','Casual','1982-05-11','2020-01-31',NULL),('E049','Victoria','Adams','480-322-6337','Permanent','1984-06-11','2020-12-16',NULL),('E050','James','Stewart','767-891-5998','Permanent','1998-08-16','2018-02-23',NULL),('E051','Rebecca','Wright','313-393-9008','Permanent','1996-06-13','2016-02-08',NULL),('E052','Kyle','Walker','776-648-6325','Permanent','1980-09-29','2019-07-13',NULL),('E053','Kate','Miller','809-948-8122','Permanent','1987-05-24','2018-11-07',NULL),('E054','Greg','Taylor','668-623-4865','Permanent','1998-12-11','2019-01-08',NULL),('E055','Deborah','Scott','556-789-3159','Permanent','1986-05-02','2017-07-25',NULL),('E056','Lisa','Clark','854-452-7236','Permanent','1986-05-08','2023-03-16',NULL),('E057','Jack','White','347-681-3442','Permanent','1998-05-13','2023-06-17',NULL),('E058','Ahmed','Al-Farsi','2233445566','Permanent','1988-08-19','2017-07-20','2021-11-10'),('E059','Alex','Zhang','5676789012','Permanent','1989-05-06','2017-09-10','2021-06-14'),('E060','Amina','Hassan','5566778899','Casual','1993-09-12','2016-08-01','2020-11-05'),('E061','Carlos','Rodriguez','4455667788','Permanent','1984-06-25','2016-05-10','2019-03-12'),('E062','Clare','Smith','2343456789','Casual','1992-04-19','2017-09-10','2021-04-13'),('E063','Eduardo','Silva','7898901234','Permanent','1987-12-28','2016-04-21','2020-11-18'),('E064','Felipe','Pereira','7788990011','Casual','1985-11-14','2015-06-30','2020-12-12'),('E065','Imani','Njiru','6677889900','Permanent','1991-03-22','2016-10-01','2021-03-15'),('E066','Isabella','Marquez','6787890123','Casual','1993-11-17','2017-06-01','2020-12-05'),('E067','Jessica','Brooks','1232345678','Permanent','1990-07-12','2016-11-01','2020-06-30'),('E068','Kiara','Muller','8899001122','Permanent','1994-01-30','2017-05-01','2021-01-17'),('E069','Layla','Hussein','8909012345','Casual','1990-09-10','2017-03-20','2020-08-22'),('E070','Lucas','Pereira','9010123456','Permanent','1989-02-14','2017-11-30','2021-06-15'),('E071','Maria','Gonzalez','1122334455','Casual','1992-05-13','2018-03-01','2020-05-25'),('E072','Mei','Wong','3344556677','Casual','1990-12-08','2016-01-15','2020-08-30'),('E073','Nia','O\'Connor','2343456789','Casual','1987-04-05','2017-01-18','2021-09-25'),('E074','Olga','Petrov','4565678901','Casual','1983-12-02','2016-07-30','2020-10-02'),('E075','Omar','Khalid','1232345678','Permanent','1988-07-23','2017-08-01','2020-05-01'),('E076','Raj','Kumar','9900112233','Casual','1982-10-19','2017-02-22','2020-05-25'),('E077','Simon','Davies','3454567890','Permanent','1991-02-23','2016-03-15','2020-12-10'),('E078','Zainab','Rahman','121234567','Casual','1991-11-11','2017-06-18','2020-09-10');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeaddresshistory`
--

DROP TABLE IF EXISTS `employeeaddresshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeaddresshistory` (
  `employeeID` varchar(10) NOT NULL,
  `addressID` int NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  KEY `addressID4_idx` (`addressID`),
  KEY `employeeFK_idx` (`employeeID`),
  CONSTRAINT `addressID4` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employeeFK` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeaddresshistory`
--

LOCK TABLES `employeeaddresshistory` WRITE;
/*!40000 ALTER TABLE `employeeaddresshistory` DISABLE KEYS */;
INSERT INTO `employeeaddresshistory` VALUES ('E001',1,'2000-01-01',NULL),('E010',10,'2000-01-01',NULL),('E011',11,'2000-01-01',NULL),('E012',12,'2000-01-01',NULL),('E013',13,'2000-01-01',NULL),('E014',14,'2000-01-01',NULL),('E015',15,'2000-01-01',NULL),('E016',16,'2000-01-01',NULL),('E017',17,'2000-01-01',NULL),('E018',18,'2000-01-01',NULL),('E019',19,'2000-01-01',NULL),('E002',2,'2000-01-01',NULL),('E020',20,'2000-01-01',NULL),('E021',21,'2000-01-01',NULL),('E022',22,'2000-01-01',NULL),('E023',23,'2000-01-01',NULL),('E024',24,'2000-01-01',NULL),('E025',25,'2000-01-01',NULL),('E026',26,'2000-01-01',NULL),('E027',27,'2000-01-01',NULL),('E028',28,'2000-01-01',NULL),('E029',29,'2000-01-01',NULL),('E003',3,'2000-01-01',NULL),('E030',30,'2000-01-01',NULL),('E031',31,'2000-01-01',NULL),('E032',32,'2000-01-01',NULL),('E033',33,'2000-01-01',NULL),('E034',34,'2000-01-01',NULL),('E035',35,'2000-01-01',NULL),('E036',36,'2000-01-01',NULL),('E037',37,'2000-01-01',NULL),('E038',38,'2000-01-01',NULL),('E039',39,'2000-01-01',NULL),('E004',4,'2000-01-01',NULL),('E040',40,'2000-01-01',NULL),('E041',41,'2000-01-01',NULL),('E042',42,'2000-01-01',NULL),('E043',43,'2000-01-01',NULL),('E044',44,'2000-01-01',NULL),('E045',45,'2000-01-01',NULL),('E046',46,'2000-01-01',NULL),('E047',47,'2000-01-01',NULL),('E048',48,'2000-01-01',NULL),('E049',49,'2000-01-01',NULL),('E005',5,'2000-01-01',NULL),('E050',50,'2000-01-01',NULL),('E051',51,'2000-01-01',NULL),('E052',52,'2000-01-01',NULL),('E053',53,'2000-01-01',NULL),('E054',54,'2000-01-01',NULL),('E055',55,'2000-01-01',NULL),('E056',56,'2000-01-01',NULL),('E057',57,'2000-01-01',NULL),('E006',6,'2000-01-01',NULL),('E007',7,'2000-01-01',NULL),('E008',8,'2000-01-01',NULL),('E009',9,'2000-01-01',NULL),('E010',10,'1990-01-01','1999-12-30'),('E019',19,'1990-01-01','1999-12-30'),('E002',2,'1990-01-01','1999-12-30'),('E023',23,'1990-01-01','1999-12-30'),('E036',36,'1990-01-01','1999-12-30'),('E006',6,'1990-01-01','1999-12-30');
/*!40000 ALTER TABLE `employeeaddresshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grapeplanting`
--

DROP TABLE IF EXISTS `grapeplanting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grapeplanting` (
  `plantingID` varchar(10) NOT NULL,
  `vineyardID` varchar(10) NOT NULL,
  `varietyID` varchar(10) NOT NULL,
  `vintageYear` int NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`plantingID`),
  KEY `vineyardIDFK2_idx` (`vineyardID`),
  KEY `varietyIDFK_idx` (`varietyID`),
  CONSTRAINT `varietyIDFK` FOREIGN KEY (`varietyID`) REFERENCES `grapevariety` (`varietyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vineyardIDFK2` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grapeplanting`
--

LOCK TABLES `grapeplanting` WRITE;
/*!40000 ALTER TABLE `grapeplanting` DISABLE KEYS */;
INSERT INTO `grapeplanting` VALUES ('P001','V023','G008',2022,'2019-03-17','2021-01-24'),('P002','V024','G006',2021,'2018-05-05','2022-02-19'),('P003','V019','G015',2022,'2015-08-28','2017-08-02'),('P004','V035','G019',2022,'2015-12-06','2019-07-04'),('P005','V032','G008',2023,'2016-05-28','2020-01-22'),('P006','V036','G015',2021,'2017-09-21','2021-08-03'),('P007','V017','G015',2023,'2018-12-24','2021-07-01'),('P008','V019','G001',2023,'2018-11-14','2020-10-07'),('P009','V038','G003',2018,'2015-08-25','2017-06-08'),('P010','V025','G017',2016,'2017-10-20','2021-03-07'),('P011','V037','G019',2020,'2017-08-10','2019-03-05'),('P012','V006','G001',2021,'2016-10-08','2018-10-27'),('P013','V023','G013',2016,'2016-12-01','2020-06-28'),('P014','V026','G017',2016,'2017-03-24','2018-11-12'),('P015','V039','G015',2019,'2018-06-11','2021-09-04'),('P016','V015','G016',2020,'2015-10-03','2018-12-01'),('P017','V004','G010',2023,'2018-07-14','2021-12-12'),('P018','V013','G006',2017,'2017-10-07','2020-10-16'),('P019','V005','G009',2022,'2016-08-14','2017-09-05'),('P020','V030','G020',2019,'2016-01-14','2017-04-16'),('P021','V002','G012',2022,'2020-02-17','2023-08-08'),('P022','V006','G018',2017,'2016-05-28','2020-01-17'),('P023','V019','G013',2015,'2016-09-15','2019-08-07'),('P024','V012','G014',2022,'2015-01-05','2018-06-13'),('P025','V016','G003',2023,'2015-03-10','2017-08-12'),('P026','V029','G018',2017,'2015-07-19','2018-04-18'),('P027','V034','G007',2017,'2016-03-29','2017-11-16'),('P028','V025','G005',2016,'2016-08-04','2018-02-10'),('P029','V011','G008',2017,'2017-08-07','2020-09-28'),('P030','V004','G009',2018,'2019-07-22','2022-04-17'),('P031','V024','G009',2019,'2020-01-29','2023-05-03'),('P032','V026','G011',2019,'2019-12-23','2021-06-09'),('P033','V033','G015',2020,'2019-10-10','2021-12-07'),('P034','V023','G011',2015,'2020-03-23','2023-08-19'),('P035','V033','G013',2019,'2019-10-08','2022-11-27'),('P036','V002','G019',2018,'2019-01-23','2020-12-09'),('P038','V006','G015',2018,'2019-02-20','2020-10-22'),('P039','V034','G016',2017,'2017-02-04','2019-03-16'),('P040','V036','G003',2021,'2015-12-14','2019-12-12'),('P041','V002','G001',2020,'2016-07-01','2019-06-14'),('P042','V036','G003',2021,'2019-01-06','2020-03-20'),('P043','V003','G015',2022,'2016-09-08','2019-04-12'),('P044','V008','G002',2018,'2018-07-05','2019-12-15'),('P045','V007','G008',2022,'2019-04-09','2020-10-07'),('P046','V033','G018',2020,'2019-02-20','2022-04-27'),('P047','V025','G002',2023,'2015-09-03','2018-09-18'),('P048','V021','G004',2020,'2019-11-04','2022-12-26'),('P049','V021','G010',2021,'2015-08-26','2018-01-16'),('P050','V016','G012',2019,'2018-03-19','2022-01-21');
/*!40000 ALTER TABLE `grapeplanting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grapevariety`
--

DROP TABLE IF EXISTS `grapevariety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grapevariety` (
  `varietyID` varchar(10) NOT NULL,
  `vineyardID` varchar(10) NOT NULL,
  `varietyName` varchar(100) NOT NULL,
  `storageContainerType` varchar(50) DEFAULT NULL,
  `juiceConversionRatio` decimal(5,2) DEFAULT NULL,
  `agingDays` int DEFAULT NULL,
  PRIMARY KEY (`varietyID`,`vineyardID`),
  KEY `vineyardIDFK3_idx` (`vineyardID`),
  CONSTRAINT `vineyardIDFK3` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grapevariety`
--

LOCK TABLES `grapevariety` WRITE;
/*!40000 ALTER TABLE `grapevariety` DISABLE KEYS */;
INSERT INTO `grapevariety` VALUES ('G001','V001','Shiraz','Oak Barrel',78.50,365),('G002','V002','Chardonnay','Stainless Steel Tank',85.25,180),('G002','V021','Chardonnay','Stainless Steel Tank',85.25,180),('G003','V003','Cabernet Sauvignon','Oak Barrel',72.30,540),('G003','V022','Cabernet Sauvignon','Oak Barrel',72.30,540),('G004','V004','Semillon','Stainless Steel Tank',82.00,240),('G004','V023','Semillon','Stainless Steel Tank',82.00,240),('G005','V005','Pinot Noir','Oak Barrel',75.60,365),('G005','V024','Pinot Noir','Oak Barrel',75.60,365),('G006','V006','Merlot','Oak Barrel',79.80,450),('G006','V025','Merlot','Oak Barrel',79.80,450),('G007','V007','Sauvignon Blanc','Stainless Steel Tank',88.40,120),('G007','V026','Sauvignon Blanc','Stainless Steel Tank',88.40,120),('G008','V008','Cabernet Franc','Oak Barrel',74.20,540),('G008','V027','Cabernet Franc','Oak Barrel',74.20,540),('G009','V009','Tempranillo','Stainless Steel Tank',70.10,180),('G009','V028','Tempranillo','Stainless Steel Tank',70.10,180),('G010','V010','Grenache','Oak Barrel',76.80,365),('G010','V029','Grenache','Oak Barrel',76.80,365),('G011','V011','Zinfandel','Oak Barrel',79.10,540),('G011','V030','Zinfandel','Oak Barrel',79.10,540),('G012','V012','Pinot Grigio','Stainless Steel Tank',85.75,150),('G012','V031','Pinot Grigio','Stainless Steel Tank',85.75,150),('G013','V013','Riesling','Stainless Steel Tank',83.50,120),('G013','V032','Riesling','Stainless Steel Tank',83.50,120),('G014','V014','Barbera','Oak Barrel',71.20,365),('G014','V033','Barbera','Oak Barrel',71.20,365),('G015','V015','Tempranillo (Experimental)','Oak Barrel',68.00,540),('G015','V034','Tempranillo (Experimental)','Oak Barrel',68.00,540),('G016','V015','Cabernet Sauvignon (Experimental)','Stainless Steel Tank',71.10,300),('G016','V035','Cabernet Sauvignon (Experimental)','Stainless Steel Tank',71.10,300),('G017','V016','Sangiovese','Oak Barrel',78.00,365),('G017','V036','Sangiovese','Oak Barrel',78.00,365),('G018','V017','Viognier','Stainless Steel Tank',84.50,180),('G018','V037','Viognier','Stainless Steel Tank',84.50,180),('G019','V018','Syrah (Experimental)','Oak Barrel',77.00,540),('G019','V038','Syrah (Experimental)','Oak Barrel',77.00,540),('G020','V019','Moscato','Stainless Steel Tank',80.00,120),('G020','V039','Moscato','Stainless Steel Tank',80.00,120);
/*!40000 ALTER TABLE `grapevariety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harvest`
--

DROP TABLE IF EXISTS `harvest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harvest` (
  `harvestID` varchar(20) NOT NULL,
  `varietyID` varchar(10) NOT NULL,
  `vineyardID` varchar(10) NOT NULL,
  `vintageYear` int NOT NULL,
  `weight(KG)` decimal(8,2) NOT NULL,
  `ripenessPercentage` decimal(4,1) NOT NULL,
  PRIMARY KEY (`harvestID`),
  KEY `vineyardIDFK_idx` (`vineyardID`),
  KEY `varietyIDFK2_idx` (`varietyID`),
  CONSTRAINT `varietyIDFK2` FOREIGN KEY (`varietyID`) REFERENCES `grapevariety` (`varietyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vineyardIDFK` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harvest`
--

LOCK TABLES `harvest` WRITE;
/*!40000 ALTER TABLE `harvest` DISABLE KEYS */;
INSERT INTO `harvest` VALUES ('H-V001-G001','G008','V008',2020,4000.00,22.0),('H-V001-G002','G008','V008',2021,4100.00,22.5),('H-V001-G003','G008','V008',2022,4200.00,23.0),('H-V001-G004','G008','V008',2023,4100.00,23.5),('H-V001-G005','G008','V008',2024,4100.00,23.5),('H-V001-G006','G003','V003',2020,5200.00,24.8),('H-V001-G007','G003','V003',2021,5400.00,25.1),('H-V001-G008','G003','V003',2022,5600.00,25.4),('H-V001-G009','G003','V003',2023,5500.00,25.0),('H-V001-G010','G003','V003',2024,5400.00,25.0),('H-V001-G013','G002','V002',2020,4000.00,21.8),('H-V001-G014','G002','V002',2021,4200.00,22.0),('H-V001-G015','G002','V002',2022,4400.00,22.3),('H-V001-G016','G002','V002',2023,4300.00,22.1),('H-V001-G017','G002','V002',2024,4300.00,22.1),('H-V001-G021','G010','V010',2020,4100.00,23.3),('H-V001-G022','G010','V010',2021,4200.00,23.5),('H-V001-G023','G010','V010',2022,4300.00,23.7),('H-V001-G024','G010','V010',2023,4200.00,24.0),('H-V001-G025','G010','V010',2024,4200.00,24.0),('H-V001-G026','G006','V006',2020,4700.00,22.0),('H-V001-G027','G006','V006',2021,4900.00,22.5),('H-V001-G028','G006','V006',2022,5000.00,22.7),('H-V001-G029','G006','V006',2023,4800.00,22.9),('H-V001-G030','G006','V006',2024,4900.00,22.5),('H-V001-G034','G012','V012',2020,3200.00,18.9),('H-V001-G035','G012','V012',2021,3300.00,19.3),('H-V001-G036','G012','V012',2022,3400.00,19.5),('H-V001-G037','G012','V012',2023,3300.00,19.7),('H-V001-G038','G012','V012',2024,3300.00,19.5),('H-V001-G042','G005','V005',2020,4300.00,22.5),('H-V001-G043','G005','V005',2021,4500.00,23.0),('H-V001-G044','G005','V005',2022,4600.00,23.2),('H-V001-G045','G005','V005',2023,4400.00,23.0),('H-V001-G046','G005','V005',2024,4500.00,23.0),('H-V001-G049','G013','V013',2020,3700.00,20.2),('H-V001-G050','G013','V013',2021,3800.00,20.5),('H-V001-G051','G013','V013',2022,3900.00,20.8),('H-V001-G052','G013','V013',2023,3800.00,20.5),('H-V001-G053','G013','V013',2024,3800.00,20.5),('H-V001-G054','G007','V007',2020,3800.00,19.2),('H-V001-G055','G007','V007',2021,3900.00,19.5),('H-V001-G056','G007','V007',2022,4000.00,19.8),('H-V001-G057','G007','V007',2023,3800.00,20.0),('H-V001-G058','G007','V007',2024,3800.00,20.0),('H-V001-G062','G004','V004',2020,3000.00,20.0),('H-V001-G063','G004','V004',2021,3200.00,20.5),('H-V001-G064','G004','V004',2022,3400.00,21.0),('H-V001-G065','G004','V004',2023,3300.00,21.5),('H-V001-G066','G004','V004',2024,3200.00,21.5),('H-V001-G067','G001','V001',2020,4900.00,23.8),('H-V001-G068','G001','V001',2021,5100.00,24.0),('H-V001-G069','G001','V001',2022,5300.00,24.3),('H-V001-G070','G001','V001',2023,5100.00,24.5),('H-V001-G071','G001','V001',2024,5000.00,24.5),('H-V001-G074','G009','V009',2020,3500.00,21.0),('H-V001-G075','G009','V009',2021,3700.00,21.5),('H-V001-G076','G009','V009',2022,3800.00,21.8),('H-V001-G077','G009','V009',2023,3700.00,21.5),('H-V001-G078','G009','V009',2024,3700.00,21.0),('H-V001-G083','G011','V011',2020,4600.00,22.0),('H-V001-G084','G011','V011',2021,4700.00,22.5),('H-V001-G085','G011','V011',2022,4800.00,22.7),('H-V001-G086','G011','V011',2023,4600.00,22.0),('H-V001-G087','G011','V011',2024,4600.00,22.0);
/*!40000 ALTER TABLE `harvest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventoryID` varchar(5) NOT NULL,
  `supplyItemID` varchar(6) NOT NULL,
  `quantityInStock` int NOT NULL,
  `reorderLevel` int NOT NULL,
  `lastUpdate` date NOT NULL,
  PRIMARY KEY (`inventoryID`),
  KEY `item3_idx` (`supplyItemID`),
  CONSTRAINT `item3` FOREIGN KEY (`supplyItemID`) REFERENCES `supplyitem` (`supplyItemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('I01','SI001',428,150,'2025-05-09'),('I02','SI002',190,100,'2025-05-16'),('I03','SI003',169,150,'2025-05-01'),('I04','SI004',407,100,'2025-04-27'),('I05','SI005',459,50,'2025-04-27'),('I06','SI006',188,150,'2025-04-29'),('I07','SI007',470,100,'2025-04-20'),('I08','SI008',347,100,'2025-05-03'),('I09','SI009',145,150,'2025-05-05'),('I10','SI010',81,150,'2025-05-11'),('I11','SI011',394,100,'2025-04-28'),('I12','SI012',487,150,'2025-05-08'),('I13','SI013',453,50,'2025-04-25'),('I14','SI014',297,50,'2025-04-25'),('I15','SI015',443,50,'2025-05-15'),('I16','SI016',472,150,'2025-05-02'),('I17','SI017',387,50,'2025-05-07'),('I18','SI018',100,150,'2025-05-09'),('I19','SI019',338,150,'2025-05-12'),('I20','SI020',107,150,'2025-05-12'),('I21','SI021',102,100,'2025-05-15'),('I22','SI022',378,50,'2025-05-06'),('I23','SI023',160,100,'2025-05-15'),('I24','SI024',97,150,'2025-05-01'),('I25','SI025',249,150,'2025-05-01'),('I26','SI026',164,50,'2025-04-28'),('I27','SI027',150,100,'2025-05-04'),('I28','SI028',431,150,'2025-04-26'),('I29','SI029',250,50,'2025-05-06'),('I30','SI030',477,100,'2025-05-01');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `mobilePhone` varchar(50) NOT NULL,
  `employeeID` varchar(10) NOT NULL,
  `homePhone` varchar(50) DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`mobilePhone`),
  KEY `employeeIDFKKK_idx` (`employeeID`),
  CONSTRAINT `employeeIDFK2` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES ('0411 242 365','E057','02 4674 4923','2017-12-26',NULL),('0411242365','E057','0246744923','2017-12-26',NULL),('0413 123 456','E033','02 4956 7834','2020-12-18',NULL),('0413123456','E033','0249567834','2020-12-18',NULL),('0414 234 567','E020','02 4923 5455','2018-06-17',NULL),('0414 571 892','E027','','2017-08-04',NULL),('0414234567','E020','0249235455','2018-06-17',NULL),('0414571892','E027','','2017-08-04',NULL),('0415 345 678','E044','02 6574 8901','2019-11-29',NULL),('0415345678','E044','0265748901','2019-11-29',NULL),('0416 456 789','E001','02 4957 8123','2023-05-16',NULL),('0416-456-789','E001','0249-578-123','2023-05-16',NULL),('0416456789','E001','0249578123','2023-05-16',NULL),('0417 123 456','E006','02 4964 4321','2020-12-04',NULL),('0417 567 890','E017','02 4958 2345','2016-02-27',NULL),('0417123456','E006','0249644321','2020-12-04',NULL),('0417567890','E017','0249582345','2016-02-27',NULL),('0418 678 901','E043','02 4959 4567','2020-03-15',NULL),('0418678901','E043','0249594567','2020-03-15',NULL),('0419 789 012','E047','02 4960 5678','2019-08-07',NULL),('0419 987 654','E019','02 4965 2134','2023-10-23',NULL),('0419789012','E047','0249605678','2019-08-07',NULL),('0419987654','E019','0249652134','2023-10-23',NULL),('0420 890 123','E025','02 4961 6789','2017-11-23',NULL),('0420890123','E025','0249616789','2017-11-23',NULL),('0421 234 567','E002','02 4951 2345','2018-04-24',NULL),('0421 901 234','E013','02 4962 7890','2017-11-15',NULL),('0421234567','E002','0249512345','2018-04-24',NULL),('0421901234','E013','0249627890','2017-11-15',NULL),('0422 012 345','E037','02 4963 8901','2023-07-13',NULL),('0422 345 678','E036','02 4960 2345','2023-12-30',NULL),('0422012345','E037','0249638901','2023-07-13',NULL),('0422345678','E036','0249602345','2023-12-30',NULL),('0423 123 456','E041','','2024-04-07',NULL),('0423 456 789','E045','02 4950 5678','2021-04-01',NULL),('0423123456','E041','','2024-04-07',NULL),('0423456789','E045','0249505678','2021-04-01',NULL),('0424 123 456','E015','','2016-03-24',NULL),('0424 184 846','E054','02 4896 9682','2019-11-12',NULL),('0424 234 567','E031','','2015-07-06',NULL),('0424123456','E015','','2016-03-24',NULL),('0424184846','E054','0248969682','2019-11-12',NULL),('0424234567','E031','','2015-07-06',NULL),('0425 345 678','E008','','2016-12-06',NULL),('0425 678 901','E023','','2015-11-24',NULL),('0425345678','E008','','2016-12-06',NULL),('0425678901','E023','','2015-11-24',NULL),('0426 234 567','E040','02 4961 2345','2021-01-07',NULL),('0426 456 789','E034','02 4967 2345','2019-09-04',NULL),('0426234567','E040','0249612345','2021-01-07',NULL),('0426456789','E034','0249672345','2019-09-04',NULL),('0427 567 890','E039','','2020-08-06',NULL),('0427567890','E039','','2020-08-06',NULL),('0428 234 567','E042','02 4960 1234','2015-07-03',NULL),('0428234567','E042','0249601234','2015-07-03',NULL),('0429 567 890','E035','02 4952 6789','2019-02-20',NULL),('0429567890','E035','0249526789','2019-02-20',NULL),('0430 890 123','E026','','2022-12-25',NULL),('0430890123','E026','','2022-12-25',NULL),('0431 901 234','E009','02 4972 7890','2018-06-25',NULL),('0431901234','E009','0249727890','2018-06-25',NULL),('0432 012 345','E018','','2018-06-24',NULL),('0432 456 789','E028','02 4955 6789','2022-09-28',NULL),('0432012345','E018','','2018-06-24',NULL),('0432456789','E028','0249556789','2022-09-28',NULL),('0433 123 456','E003','','2017-03-02',NULL),('0433 456 789','E010','02 4952 1234','2020-02-02',NULL),('0433 524 746','E053','02 4225 8262','2017-07-13',NULL),('0433 678 901','E030','02 4951 3456','2021-05-05',NULL),('0433123456','E003','','2017-03-02',NULL),('0433456789','E010','0249521234','2020-02-02',NULL),('0433524746','E053','0242258262','2017-07-13',NULL),('0433678901','E030','0249513456','2021-05-05',NULL),('0434 234 567','E016','','2017-11-08',NULL),('0434 539 925','E051','02 4329 5160','2019-03-11',NULL),('0434234567','E016','','2017-11-08',NULL),('0434539925','E051','0243295160','2019-03-11',NULL),('0435 234 567','E048','02 4956 1234','2017-10-15',NULL),('0435 345 678','E012','02 4976 1234','2016-06-30',NULL),('0435234567','E048','0249561234','2017-10-15',NULL),('0435345678','E012','0249761234','2016-06-30',NULL),('0436 456 789','E021','','2018-06-22',NULL),('0436 789 012','E005','','2021-04-11',NULL),('0436456789','E021','','2018-06-22',NULL),('0436789012','E005','','2021-04-11',NULL),('0437 345 678','E024','02 4957 1234','2021-05-28',NULL),('0437 567 890','E007','','2019-02-27',NULL),('0437345678','E024','0249571234','2021-05-28',NULL),('0437567890','E007','','2019-02-27',NULL),('0438 678 901','E046','02 4979 4567','2018-10-24',NULL),('0438 699 724','E050','02 4345 1083','2021-02-07',NULL),('0438678901','E046','0249794567','2018-10-24',NULL),('0438699724','E050','0243451083','2021-02-07',NULL),('0439 400 174','E049','02 4686 3211','2019-03-15',NULL),('0439 789 012','E022','02 4962 2345','2023-11-04',NULL),('0439400174','E049','0246863211','2019-03-15',NULL),('0439789012','E022','0249622345','2023-11-04',NULL),('0440 890 123','E004','','2020-06-04',NULL),('0440890123','E004','','2020-06-04',NULL),('0445 009 187','E052','02 4992 2606','2018-12-08',NULL),('0445009187','E052','0249922606','2018-12-08',NULL),('0446 609 907','E014','','2016-03-09',NULL),('0446609907','E014','','2016-03-09',NULL),('0453 892 978','E056','02 4118 2292','2016-11-11',NULL),('0453892978','E056','0241182292','2016-11-11',NULL),('0458 805 384','E055','02 4197 4402','2023-09-17',NULL),('0458805384','E055','0241974402','2023-09-17',NULL),('0472 993 891','E011','','2023-06-26',NULL),('0472993891','E011','','2023-06-26',NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` varchar(20) NOT NULL,
  `wineID` int DEFAULT NULL,
  `bottleID` varchar(20) DEFAULT NULL,
  `caseQuantity` int DEFAULT NULL,
  `pricePeCase` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P8001',9024,'B001',6,244.08),('P8002',9022,'B002',24,311.92),('P8003',9017,'B003',12,228.51),('P8004',9032,'B004',24,231.79),('P8005',9010,'B005',24,212.47),('P8006',9047,'B006',6,376.49),('P8007',9013,'B007',24,122.47),('P8008',9049,'B008',6,284.72),('P8009',9016,'B009',12,383.39),('P8010',9031,'B010',24,385.56),('P8011',9010,'B011',12,175.61),('P8012',9020,'B012',6,285.80),('P8013',9038,'B013',6,140.14),('P8014',9047,'B014',6,262.50),('P8015',9044,'B015',24,134.01),('P8016',9040,'B016',12,146.35),('P8017',9001,'B017',24,316.00),('P8018',9016,'B018',6,361.99),('P8019',9047,'B019',12,203.26),('P8020',9011,'B020',24,373.59),('P8021',9010,'B021',24,301.78),('P8022',9007,'B022',6,327.43),('P8023',9048,'B023',24,159.42),('P8024',9012,'B024',12,287.40),('P8025',9011,'B025',6,149.03),('P8026',9045,'B026',12,216.27),('P8027',9042,'B027',24,239.73),('P8028',9004,'B028',24,396.19),('P8029',9040,'B029',24,254.89),('P8030',9047,'B030',12,140.54),('P8031',9023,'B031',12,317.82),('P8032',9006,'B032',24,257.14),('P8033',9031,'B033',6,205.80),('P8034',9037,'B034',24,304.29),('P8035',9049,'B035',12,196.98),('P8036',9004,'B036',24,297.75),('P8037',9026,'B037',6,250.40),('P8038',9001,'B038',6,392.28),('P8039',9050,'B039',6,90.76),('P8040',9029,'B040',12,291.76),('P8041',9014,'B041',12,315.04),('P8042',9015,'B042',24,285.61),('P8043',9042,'B043',6,118.97),('P8044',9032,'B044',12,254.66),('P8045',9002,'B045',24,177.12),('P8046',9036,'B046',12,194.01),('P8047',9033,'B047',6,136.99),('P8048',9050,'B048',12,155.17),('P8049',9008,'B049',6,153.97),('P8050',9034,'B050',12,381.07);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleID` varchar(10) NOT NULL,
  `roleName` varchar(100) NOT NULL,
  `roleDescription` varchar(150) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('R001','Vineyard Manager','Oversees vineyard operations, including planting, maintenance, and harvest.'),('R002','Winemaker','Responsible for creating and overseeing the wine production process.'),('R003','Harvest Manager','Manages the grape harvest, ensuring the right timing and methods are used.'),('R004','Cellar Master','Oversees wine fermentation and aging processes in the cellar.'),('R005','Viticulturist','Specializes in grapevine health, soil management, and pest control.'),('R006','Wine Taster','Responsible for evaluating and tasting wines to determine quality.'),('R007','Sales Manager','Manages the sales and distribution of wine to retailers and consumers.'),('R008','Marketing Manager','Develops and implements strategies to promote wines and the vineyard.'),('R009','Logistics Coordinator','Handles the transportation of grapes and wine between locations.'),('R010','Administration','Manages office work, documentation, and legal compliance within the winery.'),('R011','Quality Control Officer','Ensures that wine production meets industry standards and quality benchmarks.'),('R012','Maintenance Technician','Responsible for maintaining vineyard machinery and winery equipment.'),('R013','Winery Tour Guide','Conducts tours of the vineyard and winery, educating visitors on processes.'),('R014','Financial Manager','Oversees budgets, payroll, and financial planning for the vineyard and winery.'),('R015','Event Coordinator','Organizes and manages events, such as wine tastings, festivals, and tours.'),('R016','Picker','Works during the harvest season to hand-pick grapes for wine production.');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolehistory`
--

DROP TABLE IF EXISTS `rolehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolehistory` (
  `roleHistoryID` int NOT NULL,
  `employeeID` varchar(10) NOT NULL,
  `roleID` varchar(10) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `workType` enum('Full-Time','Part-Time') NOT NULL,
  PRIMARY KEY (`roleHistoryID`),
  KEY `roleFK_idx` (`roleID`),
  KEY `employeeIDFK2_idx` (`employeeID`),
  CONSTRAINT `employeeIDFK3` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roleFK` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolehistory`
--

LOCK TABLES `rolehistory` WRITE;
/*!40000 ALTER TABLE `rolehistory` DISABLE KEYS */;
INSERT INTO `rolehistory` VALUES (7001,'E019','R004','2024-02-16','2024-08-28','Part-Time'),(7002,'E011','R002','2022-09-18','2023-06-15','Part-Time'),(7003,'E045','R007','2023-07-16','2024-12-02','Full-Time'),(7004,'E040','R001','2020-07-08',NULL,'Full-Time'),(7005,'E017','R006','2024-03-02','2025-02-12','Full-Time'),(7006,'E011','R008','2021-10-30','2022-09-26','Part-Time'),(7008,'E030','R004','2021-01-31','2021-11-21','Part-Time'),(7009,'E048','R005','2024-05-08',NULL,'Part-Time'),(7010,'E038','R005','2021-07-28','2022-09-11','Full-Time'),(7011,'E035','R005','2023-12-05','2024-06-08','Full-Time'),(7012,'E024','R007','2023-02-05',NULL,'Part-Time'),(7013,'E006','R006','2021-01-19','2022-04-26','Full-Time'),(7014,'E026','R010','2023-07-07',NULL,'Part-Time'),(7015,'E033','R001','2022-09-28',NULL,'Part-Time'),(7016,'E040','R002','2020-12-09',NULL,'Part-Time'),(7017,'E023','R002','2021-02-06','2023-01-09','Full-Time'),(7018,'E023','R007','2021-09-11','2022-09-16','Full-Time'),(7019,'E023','R005','2021-12-30',NULL,'Part-Time'),(7020,'E044','R002','2020-12-25',NULL,'Full-Time'),(7021,'E010','R006','2023-12-14','2025-09-27','Full-Time'),(7022,'E042','R003','2023-04-17',NULL,'Part-Time'),(7023,'E033','R002','2020-05-27','2021-03-14','Full-Time'),(7024,'E045','R001','2020-07-30','2021-01-31','Part-Time'),(7025,'E030','R010','2021-06-18',NULL,'Full-Time'),(7026,'E004','R009','2023-06-10',NULL,'Full-Time'),(7027,'E011','R002','2023-04-26',NULL,'Part-Time'),(7028,'E007','R002','2020-12-27','2022-08-03','Full-Time'),(7029,'E035','R003','2021-04-22',NULL,'Part-Time'),(7030,'E002','R007','2023-10-26','2025-07-15','Full-Time'),(7031,'E042','R002','2022-04-12','2023-11-30','Full-Time'),(7032,'E033','R005','2021-08-06',NULL,'Full-Time'),(7033,'E004','R003','2021-09-16','2022-11-14','Full-Time'),(7034,'E006','R006','2021-03-27',NULL,'Part-Time'),(7035,'E026','R008','2023-02-07','2023-08-23','Part-Time'),(7036,'E030','R004','2023-09-17','2025-06-01','Full-Time'),(7037,'E015','R004','2023-12-20',NULL,'Full-Time'),(7038,'E003','R001','2021-08-18','2022-08-28','Part-Time'),(7039,'E042','R002','2022-03-22',NULL,'Part-Time'),(7040,'E021','R010','2022-07-30',NULL,'Part-Time'),(7041,'E009','R006','2022-11-05',NULL,'Part-Time'),(7042,'E048','R002','2024-03-10',NULL,'Part-Time'),(7043,'E022','R009','2023-02-24','2024-12-01','Part-Time'),(7044,'E005','R009','2022-07-18','2023-04-05','Part-Time'),(7046,'E013','R002','2020-11-30','2021-05-17','Full-Time'),(7047,'E013','R009','2023-01-18','2024-12-02','Part-Time'),(7048,'E031','R003','2020-10-29','2021-04-13','Full-Time'),(7049,'E020','R005','2020-06-05','2021-09-10','Part-Time'),(7050,'E017','R006','2020-07-23','2022-02-16','Full-Time');
/*!40000 ALTER TABLE `rolehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suburb`
--

DROP TABLE IF EXISTS `suburb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suburb` (
  `suburbName` varchar(50) NOT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`suburbName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suburb`
--

LOCK TABLES `suburb` WRITE;
/*!40000 ALTER TABLE `suburb` DISABLE KEYS */;
INSERT INTO `suburb` VALUES ('Broke','NSW'),('Cessnock','NSW'),('Hunter Valley','NSW'),('Lovedale','NSW'),('Pokolbin','NSW'),('Rothbury','NSW');
/*!40000 ALTER TABLE `suburb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervision`
--

DROP TABLE IF EXISTS `supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervision` (
  `supervisionID` int NOT NULL,
  `employeeID` varchar(10) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`supervisionID`),
  KEY `supervisionID_idx` (`employeeID`),
  CONSTRAINT `supervisionID` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervision`
--

LOCK TABLES `supervision` WRITE;
/*!40000 ALTER TABLE `supervision` DISABLE KEYS */;
INSERT INTO `supervision` VALUES (5003,'E038','2021-08-16','2023-07-13'),(5004,'E035','2020-10-15',NULL),(5007,'E032','2020-08-06',NULL),(5008,'E028','2022-07-19','2022-12-03'),(5009,'E001','2021-08-09','2023-05-05'),(5010,'E001','2022-03-25',NULL),(5012,'E014','2023-08-01','2024-12-10'),(5013,'E050','2020-11-08',NULL),(5017,'E030','2021-08-27','2022-02-08'),(5018,'E027','2021-10-05','2022-01-18'),(5019,'E037','2022-12-10',NULL),(5021,'E004','2022-12-19',NULL),(5024,'E029','2022-12-18','2023-04-18'),(5025,'E005','2020-06-23','2022-05-04'),(5027,'E017','2021-08-07','2023-01-09'),(5030,'E035','2021-07-30',NULL),(5031,'E034','2021-10-15','2022-05-19'),(5032,'E026','2022-08-31','2022-12-07'),(5035,'E026','2022-10-15','2023-10-13'),(5036,'E045','2023-08-11',NULL),(5038,'E041','2023-10-03',NULL),(5039,'E009','2020-12-14',NULL),(5040,'E037','2020-10-29','2021-07-04'),(5042,'E034','2020-08-25',NULL),(5043,'E016','2023-06-09',NULL),(5044,'E015','2024-03-13',NULL),(5046,'E022','2022-10-30',NULL),(5049,'E041','2023-03-13','2024-01-15');
/*!40000 ALTER TABLE `supervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` varchar(5) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `contactName` varchar(100) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('S001','Rodriguez, Figueroa and Sanchez','Thomas Ellis','0413 859 381','contact@rodriguezfigueroaandsanchez.com.au'),('S002','Doyle Ltd','David Hoffman','0441 328 242','contact@doyleltd.com.au'),('S003','Mcclain, Miller and Henderson','Kevin Hurst','0423 792 858','contact@mcclainmillerandhenderson.com.au'),('S004','Davis and Sons','Daniel Bright','0479 189 704','contact@davisandsons.com.au'),('S005','Guzman, Hoffman and Baldwin','Ann Williams','0464 132 130','contact@guzmanhoffmanandbaldwin.com.au'),('S006','Gardner, Robinson and Lawrence','Mark Conner','0421 323 338','contact@gardnerrobinsonandlawrence.com.au'),('S007','Blake and Sons','Arthur James','0474 716 127','contact@blakeandsons.com.au'),('S008','Henderson, Ramirez and Lewis','Kendra Maddox DVM','0481 303 833','contact@hendersonramirezandlewis.com.au'),('S009','Garcia-James','Nathan Maldonado','0493 818 658','contact@garcia-james.com.au'),('S010','Abbott-Munoz','Debra Davidson','0463 325 559','contact@abbott-munoz.com.au'),('S011','Blair PLC','Jeffrey Chavez','0485 384 928','contact@blairplc.com.au'),('S012','Dudley Group','Sherri Baker','0410 877 925','contact@dudleygroup.com.au'),('S013','Arnold Ltd','Cassandra Gaines','0430 814 532','contact@arnoldltd.com.au'),('S014','Mcclure, Ward and Lee','Elizabeth Fowler','0453 384 259','contact@mcclurewardandlee.com.au'),('S015','Williams and Sons','Brittany Farmer','0437 881 444','contact@williamsandsons.com.au'),('S016','Galloway-Wyatt','Paula Moreno','0423 194 489','contact@galloway-wyatt.com.au'),('S017','James Group','Fred Smith','0422 467 967','contact@jamesgroup.com.au'),('S018','Flowers, Martin and Kelly','Sherry Decker','0454 718 370','contact@flowersmartinandkelly.com.au'),('S019','Adams, Zuniga and Wong','Anthony Humphrey','0415 847 570','contact@adamszunigaandwong.com.au'),('S020','Reid, Ferguson and Sanchez','Angelica Tucker','0478 227 487','contact@reidfergusonandsanchez.com.au'),('S021','Gray-Mayo','Philip Cannon','0420 665 400','contact@gray-mayo.com.au'),('S022','Watts, Robinson and Nguyen','John Pierce','0490 733 982','contact@wattsrobinsonandnguyen.com.au'),('S023','Perez Inc','Shane Henderson','0456 691 296','contact@perezinc.com.au'),('S024','Morales-Jones','Joshua Blair','0418 146 777','contact@morales-jones.com.au'),('S025','Walter, Edwards and Rios','Eric Carney','0439 891 396','contact@walteredwardsandrios.com.au');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplyitem`
--

DROP TABLE IF EXISTS `supplyitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplyitem` (
  `supplyItemID` varchar(6) NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `itemType` enum('Cork','Screw Top','Label','Others') NOT NULL,
  `description` varchar(100) NOT NULL,
  `certificationID` varchar(5) NOT NULL,
  PRIMARY KEY (`supplyItemID`),
  KEY `certification2_idx` (`certificationID`),
  CONSTRAINT `certification2` FOREIGN KEY (`certificationID`) REFERENCES `sustainabilitycert` (`certificationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplyitem`
--

LOCK TABLES `supplyitem` WRITE;
/*!40000 ALTER TABLE `supplyitem` DISABLE KEYS */;
INSERT INTO `supplyitem` VALUES ('SI001','Natural Cork Stopper','Cork','Natural Cork Stopper made from sustainably sourced or renewable cork materials.','C008'),('SI002','Synthetic Cork Plug','Cork','Synthetic Cork Plug made from sustainably sourced or renewable cork materials.','C004'),('SI003','Twist-Off Aluminum Cap','Screw Top','Twist-Off Aluminum Cap designed for secure sealing with reduced environmental impact.','C014'),('SI004','Recycled Paper Label','Label','Recycled Paper Label produced using eco-friendly inks and recyclable materials.','C014'),('SI005','Biodegradable Label Roll','Label','Biodegradable Label Roll produced using eco-friendly inks and recyclable materials.','C002'),('SI006','Glass Bottle Neck Seal','Others','Glass Bottle Neck Seal manufactured with sustainability-focused practices and materials.','C013'),('SI007','Compostable Label','Label','Compostable Label produced using eco-friendly inks and recyclable materials.','C004'),('SI008','Custom Printed Label','Label','Custom Printed Label produced using eco-friendly inks and recyclable materials.','C007'),('SI009','Organic Cork Stopper','Cork','Organic Cork Stopper made from sustainably sourced or renewable cork materials.','C005'),('SI010','UV-Protected Screw Cap','Screw Top','UV-Protected Screw Cap designed for secure sealing with reduced environmental impact.','C009'),('SI011','Heat Shrink Cap Sleeve','Screw Top','Heat Shrink Cap Sleeve designed for secure sealing with reduced environmental impact.','C003'),('SI012','Recyclable Tin Seal','Others','Recyclable Tin Seal manufactured with sustainability-focused practices and materials.','C004'),('SI013','Varnished Paper Label','Label','Varnished Paper Label produced using eco-friendly inks and recyclable materials.','C018'),('SI014','Adhesive-Free Bottle Tag','Label','Adhesive-Free Bottle Tag produced using eco-friendly inks and recyclable materials.','C003'),('SI015','Natural Fiber Cap','Screw Top','Natural Fiber Cap designed for secure sealing with reduced environmental impact.','C006'),('SI016','Matte Finish Label','Label','Matte Finish Label produced using eco-friendly inks and recyclable materials.','C016'),('SI017','Embossed Label Strip','Label','Embossed Label Strip produced using eco-friendly inks and recyclable materials.','C013'),('SI018','Laser-Etched Label','Label','Laser-Etched Label produced using eco-friendly inks and recyclable materials.','C006'),('SI019','Eco-Twist Bottle Cap','Screw Top','Eco-Twist Bottle Cap designed for secure sealing with reduced environmental impact.','C001'),('SI020','Wooden Wine Stopper','Cork','Wooden Wine Stopper made from sustainably sourced or renewable cork materials.','C010'),('SI021','Plant-Based Cork','Cork','Plant-Based Cork made from sustainably sourced or renewable cork materials.','C016'),('SI022','Stainless Steel Cap','Screw Top','Stainless Steel Cap designed for secure sealing with reduced environmental impact.','C007'),('SI023','Foil Neck Wrap','Label','Foil Neck Wrap produced using eco-friendly inks and recyclable materials.','C002'),('SI024','Vintage Style Label','Label','Vintage Style Label produced using eco-friendly inks and recyclable materials.','C002'),('SI025','Smart QR Label','Label','Smart QR Label produced using eco-friendly inks and recyclable materials.','C002'),('SI026','Resealable Cap','Screw Top','Resealable Cap designed for secure sealing with reduced environmental impact.','C016'),('SI027','Charcoal Printed Label','Label','Charcoal Printed Label produced using eco-friendly inks and recyclable materials.','C002'),('SI028','Minimalist Label','Label','Minimalist Label produced using eco-friendly inks and recyclable materials.','C003'),('SI029','Color-Coded Screw Cap','Screw Top','Color-Coded Screw Cap designed for secure sealing with reduced environmental impact.','C003'),('SI030','Soft Grip Wine Stopper','Cork','Soft Grip Wine Stopper made from sustainably sourced or renewable cork materials.','C019');
/*!40000 ALTER TABLE `supplyitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplyorder`
--

DROP TABLE IF EXISTS `supplyorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplyorder` (
  `supplyOrderID` varchar(6) NOT NULL,
  `supplierID` varchar(5) NOT NULL,
  `supplyItemID` varchar(6) NOT NULL,
  `quantity` int NOT NULL,
  `unitCost` decimal(10,2) NOT NULL,
  `totalCost` decimal(10,2) NOT NULL,
  `orderDate` date NOT NULL,
  `expectedDeliveryDate` date NOT NULL,
  `dateDelivered` date DEFAULT NULL,
  `orderStatus` enum('Ordered','Delivered','Cancelled') NOT NULL,
  PRIMARY KEY (`supplyOrderID`),
  KEY `supplier1_idx` (`supplierID`),
  CONSTRAINT `supplier1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplyorder`
--

LOCK TABLES `supplyorder` WRITE;
/*!40000 ALTER TABLE `supplyorder` DISABLE KEYS */;
INSERT INTO `supplyorder` VALUES ('SO01','S016','SI018',126,0.57,71.82,'2025-03-08','2025-03-13','2025-03-12','Delivered'),('SO02','S023','SI025',177,4.86,860.22,'2025-04-15','2025-04-27','2025-04-24','Delivered'),('SO03','S010','SI018',77,2.02,155.54,'2025-04-24','2025-05-07','2025-05-04','Delivered'),('SO04','S017','SI013',94,4.34,407.96,'2025-03-14','2025-03-24','2025-03-27','Delivered'),('SO05','S023','SI015',170,3.73,634.10,'2025-02-24','2025-03-04','2025-03-05','Delivered'),('SO06','S009','SI030',168,0.81,136.08,'2025-03-02','2025-03-10','2025-03-13','Delivered'),('SO09','S016','SI007',86,4.57,393.02,'2025-03-08','2025-03-15','2025-03-13','Delivered'),('SO10','S008','SI023',24,1.82,43.68,'2025-04-28','2025-05-09','2025-05-06','Delivered'),('SO11','S015','SI008',72,2.89,208.08,'2025-03-17','2025-03-24','2025-03-26','Delivered'),('SO12','S018','SI019',56,1.26,70.56,'2025-02-20','2025-03-08','2025-03-05','Delivered'),('SO13','S005','SI013',107,3.29,352.03,'2025-04-23','2025-05-08','2025-05-05','Delivered'),('SO14','S013','SI008',46,1.54,70.84,'2025-04-03','2025-04-14','2025-04-13','Delivered'),('SO15','S007','SI028',180,0.54,97.20,'2025-04-01','2025-04-10','2025-04-11','Delivered'),('SO17','S017','SI014',86,3.38,290.68,'2025-03-08','2025-03-17','2025-03-16','Delivered'),('SO18','S024','SI002',126,4.30,541.80,'2025-03-10','2025-03-23','2025-03-24','Delivered'),('SO19','S005','SI011',133,0.98,130.34,'2025-04-08','2025-04-20','2025-04-17','Delivered'),('SO21','S009','SI016',178,2.28,405.84,'2025-03-27','2025-04-02','2025-03-30','Delivered'),('SO22','S025','SI023',185,4.00,740.00,'2025-05-02','2025-05-17','2025-05-14','Delivered'),('SO23','S014','SI030',137,4.25,582.25,'2025-04-27','2025-05-11','2025-05-09','Delivered'),('SO24','S011','SI026',68,3.23,219.64,'2025-03-28','2025-04-15','2025-04-12','Delivered'),('SO25','S017','SI013',58,3.29,190.82,'2025-03-19','2025-03-27','2025-03-25','Delivered'),('SO26','S009','SI013',170,3.41,579.70,'2025-04-16','2025-04-26','2025-04-29','Delivered'),('SO27','S001','SI022',18,3.11,55.98,'2025-03-25','2025-04-09','2025-04-09','Delivered'),('SO28','S010','SI026',93,3.86,358.98,'2025-04-17','2025-04-20','2025-04-21','Delivered'),('SO29','S024','SI027',148,4.44,657.12,'2025-04-11','2025-04-15','2025-04-17','Delivered'),('SO30','S010','SI021',79,4.24,334.96,'2025-03-18','2025-03-30','2025-03-29','Delivered'),('SO31','S019','SI005',85,3.86,328.10,'2025-04-01','2025-04-14','2025-04-11','Delivered'),('SO33','S022','SI002',183,3.76,688.08,'2025-04-15','2025-04-28','2025-04-30','Delivered'),('SO34','S016','SI005',103,0.91,93.73,'2025-03-14','2025-03-30','2025-03-29','Delivered'),('SO35','S005','SI017',147,1.06,155.82,'2025-03-14','2025-03-16','2025-03-17','Delivered'),('SO36','S015','SI019',182,1.68,305.76,'2025-03-17','2025-04-01','2025-03-30','Delivered'),('SO37','S018','SI011',37,3.54,130.98,'2025-03-16','2025-03-28','2025-03-29','Delivered'),('SO38','S016','SI028',153,1.98,302.94,'2025-03-04','2025-03-08','2025-03-07','Delivered'),('SO39','S012','SI004',172,4.21,724.12,'2025-04-05','2025-04-15','2025-04-18','Delivered'),('SO40','S011','SI028',39,1.13,44.07,'2025-03-26','2025-04-08','2025-04-08','Delivered');
/*!40000 ALTER TABLE `supplyorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplyusage`
--

DROP TABLE IF EXISTS `supplyusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplyusage` (
  `supplyUsageID` varchar(5) NOT NULL,
  `supplyItemID` varchar(6) NOT NULL,
  `wineID` int NOT NULL,
  `quantityUsed` int NOT NULL,
  `dateUsed` date NOT NULL,
  PRIMARY KEY (`supplyUsageID`),
  KEY `wine4_idx` (`wineID`),
  KEY `item2_idx` (`supplyItemID`),
  CONSTRAINT `item2` FOREIGN KEY (`supplyItemID`) REFERENCES `supplyitem` (`supplyItemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `winefk5` FOREIGN KEY (`wineID`) REFERENCES `wine` (`wineID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplyusage`
--

LOCK TABLES `supplyusage` WRITE;
/*!40000 ALTER TABLE `supplyusage` DISABLE KEYS */;
INSERT INTO `supplyusage` VALUES ('SU01','SI025',9021,25,'2025-02-05'),('SU02','SI027',9045,103,'2024-12-05'),('SU03','SI024',9013,108,'2024-05-26'),('SU04','SI029',9027,187,'2024-12-24'),('SU05','SI018',9008,53,'2024-05-20'),('SU06','SI029',9040,156,'2024-10-30'),('SU07','SI014',9032,71,'2024-06-19'),('SU08','SI021',9050,84,'2025-02-10'),('SU09','SI006',9007,73,'2024-08-09'),('SU10','SI021',9024,159,'2024-10-27'),('SU11','SI027',9035,147,'2024-10-04'),('SU12','SI016',9041,100,'2024-12-18'),('SU13','SI017',9010,68,'2024-08-30'),('SU14','SI030',9036,191,'2024-07-26'),('SU15','SI009',9037,72,'2024-12-14'),('SU16','SI003',9050,128,'2024-05-23'),('SU17','SI001',9010,152,'2024-09-22'),('SU18','SI022',9029,43,'2025-02-15'),('SU19','SI005',9017,95,'2025-01-06'),('SU20','SI008',9012,10,'2024-10-07'),('SU21','SI025',9010,106,'2024-12-24'),('SU22','SI025',9044,157,'2024-11-29'),('SU23','SI009',9022,189,'2025-03-29'),('SU24','SI027',9033,106,'2025-03-31'),('SU25','SI017',9015,147,'2024-06-12'),('SU26','SI023',9004,113,'2024-11-09'),('SU27','SI013',9001,61,'2024-11-26'),('SU28','SI004',9017,51,'2024-09-06'),('SU29','SI025',9024,106,'2024-09-22'),('SU30','SI005',9048,131,'2024-08-22');
/*!40000 ALTER TABLE `supplyusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sustainabilitycert`
--

DROP TABLE IF EXISTS `sustainabilitycert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sustainabilitycert` (
  `certificationID` varchar(5) NOT NULL,
  `certificationName` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `certifiedBy` varchar(100) NOT NULL,
  `validFrom` date NOT NULL,
  `validTo` date NOT NULL,
  PRIMARY KEY (`certificationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sustainabilitycert`
--

LOCK TABLES `sustainabilitycert` WRITE;
/*!40000 ALTER TABLE `sustainabilitycert` DISABLE KEYS */;
INSERT INTO `sustainabilitycert` VALUES ('C001','Eco-Packaging Standard','Certification for packaging that meets eco-friendly material and design standards.','Stanley, Tucker and Lee','2023-04-25','2024-12-08'),('C002','Recyclable Material Compliance','Ensures all packaging materials are recyclable and comply with environmental regulations.','Novak PLC','2025-01-13','2027-07-30'),('C003','Biodegradable Packaging Seal','Verifies that packaging can naturally decompose without harming the environment.','Daniels, Adkins and Brown','2024-06-02','2026-09-02'),('C004','Sustainable Glass Certification','Confirms that the glass used in packaging is sourced sustainably and produced with low emissions.','Woods, Calhoun and Schmidt','2024-09-18','2026-04-15'),('C005','Plastic-Free Packaging Mark','Guarantees that the packaging is free of plastic components, reducing plastic pollution.','Yu Inc','2023-03-18','2027-04-07'),('C006','Carbon Neutral Packaging Label','Awarded to packaging that offsets its carbon footprint through verified methods.','Jones Inc','2024-11-10','2029-03-03'),('C007','Green Print Label','Recognizes packaging printed with environmentally safe inks and processes.','Hensley, Powell and David','2023-12-03','2025-02-05'),('C008','Low Impact Packaging Accreditation','Accredits packaging with minimal environmental impact throughout its lifecycle.','Sanchez, Wheeler and Harvey','2025-01-08','2026-07-18'),('C009','Compostable Materials Standard','Assures the use of compostable materials that safely break down in composting conditions.','Sandoval-Cunningham','2024-06-29','2026-10-18'),('C010','Recycled Paperboard Mark','Validates the use of recycled paperboard in wine packaging products.','Donovan-Harris','2023-09-09','2028-01-23'),('C011','Water-Based Ink Certification','Certifies the use of water-based inks that are safer for the environment.','Edwards, Baker and Anderson','2025-01-11','2029-03-05'),('C012','Renewable Resource Packaging','Applies to packaging produced from renewable plant-based or natural materials.','Evans, Stewart and Walton','2024-07-19','2029-03-10'),('C013','Forest Stewardship Certified','Verifies sourcing of paper and cardboard from responsibly managed forests.','Smith PLC','2023-02-20','2027-03-12'),('C014','BPA-Free Compliance','Compliance mark for packaging free from harmful BPA chemicals.','Ferrell, Jones and Lewis','2023-12-06','2026-03-01'),('C015','Life Cycle Assessment Approved','Award based on comprehensive life cycle assessment of the packaging\'s sustainability.','Anderson-Bailey','2023-11-06','2028-02-24'),('C016','Zero Waste Packaging Compliance','Confirms compliance with zero-waste packaging production and disposal standards.','Suarez LLC','2024-04-29','2025-05-12'),('C017','Eco-Logistics Certification','Assesses environmental responsibility in the supply chain and logistics of packaging.','Moore-Bass','2022-12-23','2024-11-13'),('C018','Energy Efficient Processing Seal','Recognizes packaging made using energy-efficient manufacturing techniques.','Turner, Riggs and Roman','2023-02-24','2026-07-08'),('C019','Closed Loop Packaging Certificate','Supports the reuse and recycling of packaging through closed loop systems.','Smith, Montoya and Evans','2024-02-25','2026-09-16'),('C020','Environmental Impact Reduction Mark','Endorses practices that significantly reduce the environmental impact of packaging.','Garcia, Humphrey and Baker','2024-09-01','2026-11-15');
/*!40000 ALTER TABLE `sustainabilitycert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportlog`
--

DROP TABLE IF EXISTS `transportlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportlog` (
  `transportID` varchar(5) NOT NULL,
  `supplyOrderID` varchar(6) NOT NULL,
  `transportMode` enum('Truck','Ship','Air') NOT NULL,
  `distance(KM)` decimal(10,2) NOT NULL,
  `emission(KG)` decimal(10,2) NOT NULL,
  PRIMARY KEY (`transportID`),
  KEY `supplyorder1_idx` (`supplyOrderID`),
  CONSTRAINT `supplyorder1` FOREIGN KEY (`supplyOrderID`) REFERENCES `supplyorder` (`supplyOrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportlog`
--

LOCK TABLES `transportlog` WRITE;
/*!40000 ALTER TABLE `transportlog` DISABLE KEYS */;
INSERT INTO `transportlog` VALUES ('T01','SO40','Truck',129.98,15.60),('T02','SO10','Ship',604.20,12.08),('T03','SO30','Truck',340.84,40.90),('T04','SO02','Air',899.83,404.92),('T05','SO37','Truck',315.93,37.91),('T06','SO39','Air',220.76,99.34),('T07','SO15','Air',951.72,428.27),('T08','SO17','Air',787.87,354.54),('T09','SO29','Truck',1227.97,147.36),('T10','SO21','Truck',958.81,115.06),('T11','SO09','Ship',520.94,10.42),('T12','SO23','Truck',1268.70,152.24),('T13','SO28','Truck',1481.76,177.81),('T14','SO22','Air',1826.63,821.98),('T15','SO12','Truck',1351.92,162.23),('T16','SO11','Truck',673.10,80.77),('T17','SO18','Air',1322.35,595.06),('T18','SO24','Truck',159.19,19.10),('T19','SO14','Air',1997.31,898.79),('T20','SO05','Truck',1709.87,205.18),('T21','SO13','Truck',909.92,109.19),('T22','SO34','Ship',305.13,6.10),('T23','SO38','Truck',1453.56,174.43),('T24','SO25','Air',942.77,424.25),('T25','SO06','Truck',1808.61,217.03),('T26','SO26','Ship',712.01,14.24),('T27','SO19','Truck',381.83,45.82),('T28','SO04','Truck',339.76,40.77),('T29','SO31','Air',1286.20,578.79),('T30','SO33','Ship',1212.19,24.24),('T31','SO03','Truck',1453.09,174.37);
/*!40000 ALTER TABLE `transportlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_low_stock`
--

DROP TABLE IF EXISTS `view_low_stock`;
/*!50001 DROP VIEW IF EXISTS `view_low_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_low_stock` AS SELECT 
 1 AS `inventoryID`,
 1 AS `itemName`,
 1 AS `quantityInStock`,
 1 AS `reorderLevel`,
 1 AS `needsReorder`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vineyard`
--

DROP TABLE IF EXISTS `vineyard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vineyard` (
  `vineyardID` varchar(10) NOT NULL,
  `vineyardNname` varchar(100) NOT NULL,
  `size(hectares)` decimal(5,2) NOT NULL,
  `streetaddress` varchar(300) DEFAULT NULL,
  `suburb` varchar(45) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`vineyardID`),
  KEY `suburbFK_idx` (`suburb`),
  CONSTRAINT `suburbFK` FOREIGN KEY (`suburb`) REFERENCES `suburb` (`suburbName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vineyard`
--

LOCK TABLES `vineyard` WRITE;
/*!40000 ALTER TABLE `vineyard` DISABLE KEYS */;
INSERT INTO `vineyard` VALUES ('V001','Hunter Valley Vineyards',20.00,'123 Hunter Valley Rd','Pokolbin','NSW',-32.758300,151.377800),('V002','Old Stone Vineyards',15.00,'456 Stone Ridge Dr','Broke','NSW',-32.776500,151.410300),('V003','Sunset Ridge Vineyards',25.00,'789 Sunset Ln','Cessnock','NSW',-32.827400,151.317800),('V004','Green Hills Vineyards',18.00,'134 Green Hills Rd','Pokolbin','NSW',-32.727800,151.359600),('V005','Golden Acres Vineyards',12.00,'211 Golden Acres Dr','Rothbury','NSW',-32.720100,151.365000),('V006','Riverside Estates',30.00,'432 Riverside Dr','Lovedale','NSW',-32.730100,151.350200),('V007','Horizon View Vineyards',22.00,'800 Horizon View Rd','Broke','NSW',-32.770900,151.390300),('V008','Silver Creek Vineyards',35.00,'265 Silver Creek Rd','Hunter Valley','NSW',-32.757500,151.364600),('V009','Red Hill Vineyards',16.00,'19 Red Hill Rd','Cessnock','NSW',-32.843600,151.340700),('V010','Hunter Ridge Vineyards',24.00,'400 Hunter Ridge Rd','Cessnock','NSW',-32.824200,151.298600),('V011','Golden Plains Vineyards',20.00,'15 Golden Plains Rd','Pokolbin','NSW',-32.752300,151.349700),('V012','Morning Light Vineyards',10.00,'85 Morning Light Rd','Rothbury','NSW',-32.730500,151.324600),('V013','Crystal Creek Vineyards',8.00,'134 Crystal Creek Rd','Lovedale','NSW',-32.778500,151.324300),('V014','Eagle’s Nest Vineyards',28.00,'325 Eagles Nest Rd','Broke','NSW',-32.769000,151.332900),('V015','Riverbend Experimental Vineyard',2.00,'27 Riverbend Rd','Pokolbin','NSW',-32.778900,151.340000),('V016','Windswept Vineyards',30.00,'540 Windswept Dr','Cessnock','NSW',-32.820400,151.289700),('V017','Breezeway Vineyards',15.00,'238 Breezeway Rd','Rothbury','NSW',-32.725100,151.377600),('V018','Old Creek Experimental Vineyard',5.00,'124 Old Creek Rd','Pokolbin','NSW',-32.739200,151.380100),('V019','Mountain Grove Vineyards',12.00,'450 Mountain Grove Rd','Lovedale','NSW',-32.768100,151.349000),('V021','Bella Vista Vineyards',20.00,'222 Bella Vista Rd','Broke','NSW',-32.757000,151.366500),('V022','Cedar Valley Vineyards',32.00,'100 Cedar Valley Rd','Lovedale','NSW',-32.739500,151.353300),('V023','Pinehurst Vineyards',14.00,'75 Pinehurst Rd','Pokolbin','NSW',-32.753600,151.317000),('V024','Brookstone Vineyards',18.00,'19 Brookstone Rd','Cessnock','NSW',-32.833100,151.340100),('V025','Silverstone Vineyards',22.00,'125 Silverstone Rd','Rothbury','NSW',-32.745000,151.307000),('V026','Moonlit Vineyards',12.00,'214 Moonlit Rd','Pokolbin','NSW',-32.737800,151.320500),('V027','Autumn Leaf Vineyards',35.00,'545 Autumn Leaf Rd','Lovedale','NSW',-32.747700,151.328000),('V028','Creekside Vineyards',24.00,'380 Creekside Rd','Cessnock','NSW',-32.828600,151.337000),('V029','Redwood Vineyards',42.00,'450 Redwood Rd','Rothbury','NSW',-32.756700,151.380100),('V030','Blue Sky Vineyards',30.00,'350 Blue Sky Rd','Pokolbin','NSW',-32.735400,151.324900),('V031','Riverbend Vineyards',16.00,'170 Riverbend Rd','Lovedale','NSW',-32.740000,151.330400),('V032','Valley Breeze Vineyards',22.00,'225 Valley Breeze Rd','Broke','NSW',-32.760800,151.367000),('V033','Fox Hollow Vineyards',28.00,'312 Fox Hollow Rd','Cessnock','NSW',-32.792200,151.305300),('V034','West Ridge Experimental Vineyard',3.00,'150 West Ridge Rd','Pokolbin','NSW',-32.775600,151.341500),('V035','Riverstone Experimental Vineyard',4.00,'210 Riverstone Rd','Rothbury','NSW',-32.733200,151.329700),('V036','Misty Mountain Vineyards',14.00,'122 Misty Mountain Rd','Cessnock','NSW',-32.807000,151.317500),('V037','Willow Creek Vineyards',20.00,'540 Willow Creek Rd','Lovedale','NSW',-32.755000,151.362300),('V038','Summit View Experimental Vineyard',2.00,'97 Summit View Rd','Rothbury','NSW',-32.724000,151.346200),('V039','Orchard Grove Vineyards',10.00,'560 Orchard Grove Rd','Broke','NSW',-32.774500,151.359000);
/*!40000 ALTER TABLE `vineyard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vineyardemployee`
--

DROP TABLE IF EXISTS `vineyardemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vineyardemployee` (
  `vineyardID` varchar(10) NOT NULL,
  `employeeID` varchar(10) NOT NULL,
  PRIMARY KEY (`vineyardID`,`employeeID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `vineyardemployee_ibfk_1` FOREIGN KEY (`vineyardID`) REFERENCES `vineyard` (`vineyardID`),
  CONSTRAINT `vineyardemployee_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vineyardemployee`
--

LOCK TABLES `vineyardemployee` WRITE;
/*!40000 ALTER TABLE `vineyardemployee` DISABLE KEYS */;
INSERT INTO `vineyardemployee` VALUES ('V001','E001'),('V002','E002'),('V003','E003'),('V004','E004'),('V005','E005'),('V006','E006'),('V008','E007'),('V009','E008'),('V011','E009'),('V013','E010'),('V015','E011'),('V017','E012'),('V019','E013'),('V021','E014'),('V023','E015'),('V025','E016'),('V027','E017'),('V007','E023'),('V010','E024'),('V012','E025'),('V014','E026'),('V016','E027'),('V018','E028'),('V022','E030'),('V024','E031'),('V026','E032'),('V028','E033'),('V030','E038'),('V029','E039'),('V031','E039'),('V032','E040'),('V033','E041'),('V034','E042'),('V035','E043'),('V036','E044'),('V037','E045'),('V038','E046'),('V039','E047');
/*!40000 ALTER TABLE `vineyardemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine`
--

DROP TABLE IF EXISTS `wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine` (
  `wineID` int NOT NULL,
  `varietyID` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vintageYear` year DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `alcoholPercent` decimal(5,2) DEFAULT NULL,
  `winemakerID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wineID`),
  KEY `employeeIDFK34_idx` (`winemakerID`),
  KEY `varietyIDFK3_idx` (`varietyID`),
  CONSTRAINT `varietyIDFK3` FOREIGN KEY (`varietyID`) REFERENCES `grapevariety` (`varietyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `winemakerIDFK34` FOREIGN KEY (`winemakerID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine`
--

LOCK TABLES `wine` WRITE;
/*!40000 ALTER TABLE `wine` DISABLE KEYS */;
INSERT INTO `wine` VALUES (9001,'G006','Merlot',2005,'White',14.40,'E011'),(9002,'G012','Pinot Grigio',2010,'Sparkling',14.20,'E029'),(9003,'G016','Cabernet Sauvignon (Experimental)',2023,'Rosé',14.10,'E008'),(9004,'G004','Semillon',2018,'Sparkling',15.00,'E041'),(9005,'G019','Syrah (Experimental)',2021,'Sparkling',11.80,'E021'),(9006,'G015','Tempranillo (Experimental)',2004,'Dry Red',11.70,'E011'),(9007,'G007','Sauvignon Blanc',2000,'Sparkling',15.10,'E015'),(9008,'G005','Pinot Noir',2010,'Rosé',15.20,'E039'),(9009,'G007','Sauvignon Blanc',2005,'Dessert',12.00,'E020'),(9010,'G008','Cabernet Franc',2019,'Dessert',11.00,'E015'),(9011,'G002','Chardonnay',2008,'White',11.90,'E003'),(9012,'G019','Syrah (Experimental)',2007,'White',14.00,'E032'),(9013,'G017','Sangiovese',2022,'Dessert',12.20,'E028'),(9014,'G010','Grenache',2012,'Rosé',14.90,'E030'),(9015,'G018','Viognier',2010,'Rosé',12.40,'E018'),(9016,'G009','Tempranillo',2012,'Dessert',13.30,'E022'),(9017,'G020','Moscato',2002,'Sparkling',13.50,'E010'),(9018,'G004','Semillon',2018,'White',14.00,'E023'),(9019,'G012','Pinot Grigio',2013,'Dry Red',13.00,'E040'),(9020,'G012','Pinot Grigio',2009,'Sparkling',12.60,'E004'),(9021,'G009','Tempranillo',2011,'Rosé',11.60,'E050'),(9022,'G016','Cabernet Sauvignon (Experimental)',2021,'Rosé',14.10,'E012'),(9023,'G002','Chardonnay',2018,'Dry Red',13.70,'E002'),(9024,'G018','Viognier',2000,'White',12.80,'E026'),(9025,'G016','Cabernet Sauvignon (Experimental)',2020,'White',14.60,'E047'),(9026,'G009','Tempranillo',2019,'Sparkling',12.60,'E005'),(9027,'G005','Pinot Noir',2022,'Sparkling',11.00,'E028'),(9028,'G014','Barbera',2008,'Dessert',11.60,'E005'),(9029,'G001','Shiraz',2015,'White',15.40,'E017'),(9030,'G011','Zinfandel',2019,'White',12.40,'E032'),(9031,'G006','Merlot',2021,'Rosé',13.60,'E036'),(9032,'G003','Cabernet Sauvignon',2011,'Dessert',11.50,'E008'),(9033,'G006','Merlot',2003,'White',15.00,'E033'),(9034,'G015','Tempranillo (Experimental)',2018,'White',13.60,'E020'),(9035,'G017','Sangiovese',2017,'Sparkling',13.30,'E005'),(9036,'G006','Merlot',2009,'Sparkling',12.70,'E014'),(9037,'G010','Grenache',2005,'Dry Red',14.00,'E027'),(9038,'G010','Grenache',2014,'Dessert',11.40,'E018'),(9039,'G001','Shiraz',2023,'Rosé',11.40,'E042'),(9040,'G018','Viognier',2001,'Dry Red',14.00,'E010'),(9041,'G017','Sangiovese',2008,'White',12.80,'E031'),(9042,'G007','Sauvignon Blanc',2017,'Sparkling',13.80,'E016'),(9043,'G018','Viognier',2023,'Dry Red',12.50,'E002'),(9044,'G009','Tempranillo',2016,'White',14.60,'E034'),(9045,'G015','Tempranillo (Experimental)',2012,'White',15.50,'E003'),(9046,'G016','Cabernet Sauvignon (Experimental)',2001,'White',14.10,'E013'),(9047,'G001','Shiraz',2008,'Dry Red',14.50,'E009'),(9048,'G010','Grenache',2013,'Sparkling',14.90,'E017'),(9049,'G003','Cabernet Sauvignon',2023,'Sparkling',12.80,'E002'),(9050,'G007','Sauvignon Blanc',2009,'Dry Red',12.70,'E022');
/*!40000 ALTER TABLE `wine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winecomposition`
--

DROP TABLE IF EXISTS `winecomposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winecomposition` (
  `wineID` int NOT NULL,
  `varietyID` varchar(10) NOT NULL,
  `proportionPCT` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`wineID`,`varietyID`),
  KEY `varietyIDFK34_idx` (`varietyID`),
  CONSTRAINT `varietyIDFK34` FOREIGN KEY (`varietyID`) REFERENCES `grapevariety` (`varietyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wine2` FOREIGN KEY (`wineID`) REFERENCES `wine` (`wineID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winecomposition`
--

LOCK TABLES `winecomposition` WRITE;
/*!40000 ALTER TABLE `winecomposition` DISABLE KEYS */;
INSERT INTO `winecomposition` VALUES (9001,'G010',100.00),(9002,'G003',100.00),(9003,'G014',100.00),(9004,'G005',6.17),(9004,'G016',93.83),(9005,'G010',8.47),(9005,'G017',36.37),(9005,'G019',55.16),(9006,'G001',33.98),(9006,'G012',20.32),(9006,'G019',45.70),(9007,'G011',88.83),(9007,'G019',11.17),(9008,'G014',100.00),(9009,'G007',8.09),(9009,'G008',8.46),(9009,'G014',83.45),(9010,'G001',8.70),(9010,'G006',17.97),(9010,'G012',73.33),(9011,'G017',100.00),(9012,'G005',46.18),(9012,'G007',41.27),(9012,'G015',12.55),(9013,'G001',27.62),(9013,'G010',14.59),(9013,'G019',57.79),(9014,'G005',55.96),(9014,'G020',44.04),(9015,'G008',25.00),(9015,'G013',31.93),(9015,'G019',43.07),(9016,'G007',62.51),(9016,'G009',37.49),(9017,'G017',100.00),(9018,'G003',64.05),(9018,'G018',35.95),(9019,'G001',100.00),(9020,'G008',66.84),(9020,'G018',33.16),(9021,'G009',100.00),(9022,'G015',28.80),(9022,'G016',71.20),(9023,'G004',88.27),(9023,'G014',11.73),(9024,'G008',100.00),(9025,'G007',94.31),(9025,'G011',5.69),(9026,'G009',100.00),(9027,'G017',100.00),(9028,'G014',45.26),(9028,'G017',54.74),(9029,'G010',100.00),(9030,'G016',100.00),(9031,'G007',7.35),(9031,'G017',46.89),(9031,'G019',45.76),(9032,'G007',90.35),(9032,'G012',9.65),(9033,'G001',67.64),(9033,'G006',32.36),(9034,'G017',91.42),(9034,'G018',8.58),(9035,'G008',50.86),(9035,'G016',49.14),(9036,'G009',10.55),(9036,'G015',18.27),(9036,'G020',71.18),(9037,'G001',18.69),(9037,'G004',64.27),(9037,'G008',17.04),(9038,'G002',17.89),(9038,'G006',82.11),(9039,'G005',65.42),(9039,'G008',25.28),(9039,'G019',9.30),(9040,'G008',67.54),(9040,'G009',24.13),(9040,'G018',8.33),(9041,'G014',27.57),(9041,'G017',72.43),(9042,'G016',53.94),(9042,'G020',46.06),(9043,'G008',61.84),(9043,'G016',38.16),(9044,'G008',23.16),(9044,'G015',76.84),(9045,'G019',100.00),(9046,'G002',78.64),(9046,'G007',21.36),(9047,'G018',100.00),(9048,'G010',63.82),(9048,'G014',17.38),(9048,'G018',18.80),(9049,'G001',59.68),(9049,'G010',40.32),(9050,'G018',100.00);
/*!40000 ALTER TABLE `winecomposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winemedal`
--

DROP TABLE IF EXISTS `winemedal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winemedal` (
  `medalID` varchar(20) NOT NULL,
  `wineID` int DEFAULT NULL,
  `medalName` varchar(100) DEFAULT NULL,
  `awardedYear` year DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`medalID`),
  KEY `wine3_idx` (`wineID`),
  CONSTRAINT `wine3` FOREIGN KEY (`wineID`) REFERENCES `wine` (`wineID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winemedal`
--

LOCK TABLES `winemedal` WRITE;
/*!40000 ALTER TABLE `winemedal` DISABLE KEYS */;
INSERT INTO `winemedal` VALUES ('M1001',9008,'Gold',2023,'Global Wine Challenge'),('M1002',9027,'Double Gold',2023,'Hunter Valley Wine Show'),('M1003',9048,'Gold',2021,'Australian Wine Awards'),('M1004',9024,'Silver',2013,'Australian Wine Awards'),('M1005',9014,'Gold',2018,'Global Wine Challenge'),('M1006',9049,'Gold',2019,'Hunter Valley Wine Show'),('M1007',9002,'Gold',2015,'Global Wine Challenge'),('M1008',9012,'Platinum',2019,'Hunter Valley Wine Show'),('M1009',9004,'Bronze',2020,'Hunter Valley Wine Show'),('M1010',9003,'Bronze',2011,'Australian Wine Awards'),('M1011',9006,'Platinum',2017,'Hunter Valley Wine Show'),('M1012',9012,'Bronze',2022,'Australian Wine Awards'),('M1013',9015,'Bronze',2012,'Hunter Valley Wine Show'),('M1014',9035,'Gold',2023,'Hunter Valley Wine Show'),('M1015',9021,'Silver',2011,'Global Wine Challenge'),('M1016',9045,'Platinum',2016,'Global Wine Challenge'),('M1017',9049,'Gold',2017,'Australian Wine Awards'),('M1018',9034,'Bronze',2017,'Global Wine Challenge'),('M1019',9050,'Platinum',2016,'Hunter Valley Wine Show'),('M1020',9003,'Bronze',2012,'Global Wine Challenge'),('M1021',9014,'Bronze',2017,'Australian Wine Awards'),('M1022',9020,'Platinum',2017,'Australian Wine Awards'),('M1023',9043,'Silver',2023,'Hunter Valley Wine Show'),('M1024',9039,'Silver',2023,'Global Wine Challenge'),('M1025',9003,'Platinum',2019,'Australian Wine Awards'),('M1026',9028,'Platinum',2022,'Global Wine Challenge'),('M1027',9009,'Platinum',2016,'Hunter Valley Wine Show'),('M1028',9037,'Gold',2023,'Hunter Valley Wine Show'),('M1029',9002,'Platinum',2023,'Global Wine Challenge'),('M1030',9012,'Platinum',2015,'Global Wine Challenge'),('M1031',9050,'Double Gold',2018,'Hunter Valley Wine Show'),('M1032',9020,'Platinum',2018,'Australian Wine Awards'),('M1033',9024,'Gold',2012,'Australian Wine Awards'),('M1034',9006,'Silver',2010,'Global Wine Challenge'),('M1035',9008,'Silver',2012,'Global Wine Challenge'),('M1036',9025,'Silver',2015,'Global Wine Challenge'),('M1037',9001,'Bronze',2023,'Australian Wine Awards'),('M1038',9041,'Platinum',2020,'Australian Wine Awards'),('M1039',9012,'Silver',2021,'Hunter Valley Wine Show'),('M1040',9020,'Bronze',2012,'Australian Wine Awards'),('M1041',9012,'Bronze',2010,'Australian Wine Awards'),('M1042',9003,'Double Gold',2018,'Australian Wine Awards'),('M1043',9035,'Silver',2013,'Global Wine Challenge'),('M1044',9026,'Double Gold',2023,'Global Wine Challenge'),('M1045',9020,'Silver',2016,'Hunter Valley Wine Show'),('M1046',9009,'Double Gold',2017,'Hunter Valley Wine Show'),('M1047',9001,'Bronze',2015,'Global Wine Challenge'),('M1048',9017,'Bronze',2019,'Hunter Valley Wine Show'),('M1049',9011,'Bronze',2012,'Global Wine Challenge'),('M1050',9027,'Silver',2021,'Hunter Valley Wine Show');
/*!40000 ALTER TABLE `winemedal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `view_low_stock`
--

/*!50001 DROP VIEW IF EXISTS `view_low_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_low_stock` AS select `i`.`inventoryID` AS `inventoryID`,`s`.`itemName` AS `itemName`,`i`.`quantityInStock` AS `quantityInStock`,`i`.`reorderLevel` AS `reorderLevel`,(`i`.`quantityInStock` < `i`.`reorderLevel`) AS `needsReorder` from (`inventory` `i` join `supplyitem` `s` on((`i`.`supplyItemID` = `s`.`supplyItemID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 22:15:01
