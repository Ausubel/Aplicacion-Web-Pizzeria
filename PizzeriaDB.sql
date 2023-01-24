CREATE DATABASE  IF NOT EXISTS `pizza_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pizza_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pizza_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nameCustomer` varchar(45) NOT NULL,
  `lastNameCustomer` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idUser` int DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `fk_customer_user1_idx` (`idUser`),
  CONSTRAINT `fk_customer_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,30480277,'Maria','Anders','Obere Str. 57','030-0074321',NULL),(2,30480918,'Ana','Trujillo','Avda. de la Constituciï¿½n 2222','(5) 555-4729',NULL),(3,30480412,'Antonio','Moreno','Mataderos  2312','(5) 555-3932',NULL),(4,23143152,'Thomas','Hardy','120 Hanover Sq.','(71) 555-7788',NULL),(5,30488415,'Christina','Berglund','Berguvsvï¿½gen  8','0921-12 34 65',NULL),(6,30480725,'Hanna','Moos','Forsterstr. 57','0621-08460',NULL),(7,30481007,'Felipe','Citeaux','24, place Klsber','88.60.15.31',NULL),(8,30480164,'Martine','Sommer','C/ Araquil, 67','(91) 555 22 82',NULL),(9,30481945,'Laurence','Lebihan','12, rue des Bouchers','91.24.45.40',NULL),(10,30480236,'Elizabeth','Lincoln','23 Tsawassen Blvd.','(604) 555-4729',NULL),(11,95791582,'Victoria','Ashworth','Fauntleroy Circus','(71) 555-1212',NULL),(12,29305845,'Patricio','Simpson','Cerrito 333','(1) 135-5555',1),(13,30417457,'Francisco','Chang','Sierras de Granada 9993','(5) 555-3392',NULL),(14,29681732,'Yang','Wang','Hauptstr. 29','0452-076545',NULL),(15,29556537,'Pedro','Afonso','Av. dos Lusï¿½adas, 23','(11) 555-7647',NULL),(16,29656962,'Elizabeth','Brown','Berkeley Gardens 12  Brewery','(71) 555-2282',NULL),(17,41122453,'Sven','Ottlieb','Walserweg 21','0241-039123',NULL),(18,29625766,'Janine','Labrune','67, rue des Cinquante Otages','40.67.88.88',NULL),(19,29549798,'Ann','Devon','35 King George','(71) 555-0297',NULL),(20,30418396,'Roland','Mendel','Kirchgasse 6','7675-3425',NULL),(21,70418124,'Aria','Cruz','Rua Ors, 92','(11) 555-9857',NULL),(22,45376973,'Diego','Roel','C/ Moralzarzal, 86','(91) 555 94 44',NULL),(23,30480236,'Martine','Rancï¿½','184, chausse de Tournai','20.16.10.16',NULL),(24,92579158,'Maria','Larsson','Skergatan 24','0695-34 67 21',NULL),(25,29305845,'Peter','Franken','Berliner Platz 43','089-0877310',NULL),(26,30417457,'Carine','Schmitt','54, rue Royale','40.32.21.21',NULL),(27,29681732,'Paolo','Accorti','Via Monte Bianco 34','011-4988260',2),(28,29556537,'Lino','Rodriguez','Jardim das rosas n. 32','(1) 354-2534',NULL),(29,29656962,'Eduardo','Saavedra','Rambla de Cataluda, 23','(93) 203 4560',NULL),(30,41122453,'Josï¿½','Pedro Freyre','C/ Romero, 33','(95) 555 82 82',NULL),(31,29625766,'Andrï¿½','Fonseca','Av. Brasil, 442','(11) 555-9482',NULL),(32,29549798,'Howard','Snyder','2732 Baker Blvd.','(503) 555-7555',NULL),(33,30418396,'Manuel','Pereira','5 Ave. Los Palos Grandes','(2) 283-2951',NULL),(34,30488415,'Mario','Pontes','Rua do Pao, 67','(21) 555-0091',NULL),(35,30480725,'Carlos','Hernï¿½ndez','Carrera 22 con Ave. Carlos Soublette #8-35','(5) 555-1340',NULL),(36,30481007,'Yoshi','Latimer','City Center Plaza 516 Main St.','(503) 555-6874',NULL),(37,30480164,'Patricia','McKenna','8 Johnstown Road','2967 542',NULL),(38,30481945,'Helen','Bennett','Garden House Crowther Way','(198) 555-8888',NULL),(39,30480236,'Philip','Cramer','Maubelstr. 90','0555-09876',NULL),(40,95791583,'Daniel','Tonini','67, avenue de l\'Europe','30.59.84.10',NULL),(41,29305845,'Annette','Roulet','1 rue Alsace-Lorraine','61.77.61.10',NULL),(42,30417457,'Yoshi','Tannamuri','1900 Oak St.','(604) 555-3392',NULL),(43,29681732,'John','Steel','12 Orchestra Terrace','(509) 555-7969',NULL),(44,29556537,'Renate','Messner','Magazinweg 7','069-0245984',NULL),(45,29656962,'Jaime','Yorres','87 Polk St.Suite 5','(415) 555-5938',NULL),(46,41122453,'Carlos','Gonzï¿½lez','Carrera 52 con Ave. Bolï¿½var #65-98 Llano Largo','(9) 331-6954',NULL),(47,29625766,'Felipe','Izquierdo','Ave. 5 de Mayo Porlamar','(8) 34-56-12',NULL),(48,29549798,'Fran','Wilson','89 Chiaroscuro Rd.','(503) 555-9573',NULL),(49,30418396,'Giovanni','Rovelli','Via Ludovico il Moro 22','035-640230',NULL),(50,70418124,'Catherine','Dewey','Via Monte Bianco 34','(02) 201 24 67',NULL),(51,12457878,'asd','asd','asdfasdf','5165181',10),(52,15457845,'asd','asd','asdfasdf','5165181',11),(53,12457878,'asd','asd','asdfasdf','5165181',12);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `orderDate` varchar(45) NOT NULL,
  `idCustomer` int NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_order_customer1_idx` (`idCustomer`),
  CONSTRAINT `fk_order_customer1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'1/01/2015',1),(2,'1/01/2015',2),(3,'1/01/2015',3),(4,'1/01/2015',4),(5,'1/01/2015',5),(6,'1/01/2015',6),(7,'1/01/2015',7),(8,'1/01/2015',8),(9,'1/01/2015',9),(10,'1/01/2015',10),(11,'1/01/2015',11),(12,'1/01/2015',12),(13,'1/01/2015',13),(14,'1/01/2015',14),(15,'1/01/2015',15),(16,'1/01/2015',16),(17,'1/01/2015',17),(18,'1/01/2015',18),(19,'1/01/2015',19),(20,'1/01/2015',20),(21,'1/01/2015',21),(22,'1/01/2015',22),(23,'1/01/2015',23),(24,'1/01/2015',24),(25,'1/01/2015',25),(26,'1/01/2015',26),(27,'1/01/2015',27),(28,'1/01/2015',28),(29,'1/01/2015',29),(30,'1/01/2015',30),(31,'1/01/2015',31),(32,'1/01/2015',32),(33,'1/01/2015',33),(34,'1/01/2015',34),(35,'1/01/2015',35),(36,'1/01/2015',36),(37,'1/01/2015',37),(38,'1/01/2015',38),(39,'1/01/2015',39),(40,'1/01/2015',40),(41,'1/01/2015',41),(42,'1/01/2015',42),(43,'1/01/2015',43),(44,'1/01/2015',44),(45,'1/01/2015',45),(46,'1/01/2015',46),(47,'1/01/2015',47),(48,'1/01/2015',48),(49,'1/01/2015',49),(50,'1/01/2015',50);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `idOrderDetail` int NOT NULL,
  `quantity` int NOT NULL,
  `totalPrice` double NOT NULL,
  `idOrder` int NOT NULL,
  `idPizza` int NOT NULL,
  PRIMARY KEY (`idOrderDetail`),
  KEY `fk_orderdetail_order1_idx` (`idOrder`),
  KEY `fk_orderdetail_pizza1_idx` (`idPizza`),
  CONSTRAINT `fk_orderdetail_order1` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`),
  CONSTRAINT `fk_orderdetail_pizza1` FOREIGN KEY (`idPizza`) REFERENCES `pizza` (`idPizza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,1,13.25,1,28),(2,1,16,2,19),(3,1,18.5,2,21),(4,1,20.75,2,33),(5,1,16,2,43),(6,1,20.75,2,81),(7,1,16.5,3,34),(8,1,20.75,3,57),(9,1,16.5,4,34),(10,1,16.5,5,34),(11,1,12.75,6,3),(12,1,12,6,86),(13,1,12.5,7,80),(14,1,12.5,8,80),(15,1,12,9,20),(16,1,12,9,26),(17,1,20.5,9,30),(18,1,20.75,9,33),(19,1,12.5,9,35),(20,1,12,9,44),(21,1,20.75,9,69),(22,1,20.75,9,72),(23,1,12,9,91),(24,1,20.25,10,42),(25,1,20.75,10,66),(26,1,20.75,11,1),(27,1,20.75,11,9),(28,1,16.75,11,10),(29,1,15.25,11,51),(30,1,20.75,12,9),(31,1,12.75,12,11),(32,1,20.75,12,15),(33,1,16.5,12,34),(34,1,20.25,13,42),(35,1,12,14,86),(36,1,12,15,4),(37,1,18.5,15,21),(38,1,20.75,15,63),(39,1,12,15,86),(40,1,17.95,16,22),(41,1,12,16,47),(42,1,20.75,16,81),(43,1,20.75,17,1),(44,1,16.25,17,7),(45,1,18.5,17,21),(46,1,14.75,17,23),(47,1,16.5,17,34),(48,1,12.75,17,38),(49,2,32,17,40),(50,1,20.25,17,42),(51,1,12.5,17,56),(52,1,20.25,17,75),(53,1,20.5,18,45),(54,1,20.5,19,30),(55,1,20.25,19,60),(56,1,12,20,4),(57,1,18.5,20,21),(58,1,20.5,21,30),(59,1,18.5,22,21),(60,1,16,22,31),(61,1,20.75,22,66),(62,1,12.75,23,68),(63,1,16.75,24,2),(64,1,16,24,31),(65,1,12.5,24,52),(66,1,12.5,24,59),(67,1,16.25,25,61),(68,1,20.75,25,81),(69,1,12,26,20),(70,1,20.25,26,89),(71,1,20.75,27,1),(72,1,16,27,19),(73,1,20.25,27,75),(74,1,12.75,28,14),(75,1,12,29,26),(76,1,20.75,30,81),(77,1,16,31,43),(78,1,9.75,31,53),(79,1,12,32,4),(80,1,20.25,32,24),(81,1,20.5,32,30),(82,1,16.5,32,34),(83,1,20.75,33,1),(84,1,12,33,26),(85,1,12,34,86),(86,1,16,35,25),(87,1,17.5,35,48),(88,1,12.5,35,52),(89,1,20.75,35,81),(90,1,16.75,36,2),(91,1,16,36,19),(92,1,20.75,37,33),(93,1,20.25,37,42),(94,1,10.5,38,29),(95,1,20.5,38,30),(96,1,20.75,39,33),(97,1,17.95,40,22),(98,1,12.75,40,68),(99,1,14.75,41,23),(100,1,12,41,26),(101,1,12,42,4),(102,1,18.5,42,21),(103,1,20.25,42,42),(104,1,16.5,42,55),(105,1,16.75,43,13),(106,1,16.5,43,34),(107,1,20.75,43,54),(108,1,12.5,44,74),(109,1,17.95,45,22),(110,1,10.5,45,29),(111,1,16.75,45,82),(112,1,20.75,46,15),(113,1,20.5,46,18),(114,1,16.75,46,82),(115,1,20.75,47,66),(116,1,12,47,91),(117,1,16.75,48,16),(118,1,12,48,26),(119,1,20.75,48,57),(120,1,20.75,48,69),(121,1,20.25,49,60),(122,1,25.5,50,87);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `idPizza` int NOT NULL,
  `namePizza` varchar(100) NOT NULL,
  `photo` longblob,
  `unitPrice` float NOT NULL,
  `idPizzaVariety` varchar(100) NOT NULL,
  `idPizzaSize` varchar(4) NOT NULL,
  PRIMARY KEY (`idPizza`),
  KEY `fk_pizza_pizzavariety_idx` (`idPizzaVariety`),
  KEY `fk_pizza_pizzasize1_idx` (`idPizzaSize`),
  CONSTRAINT `fk_pizza_pizzasize1` FOREIGN KEY (`idPizzaSize`) REFERENCES `pizzasize` (`idPizzaSize`),
  CONSTRAINT `fk_pizza_pizzavariety` FOREIGN KEY (`idPizzaVariety`) REFERENCES `pizzavariety` (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,'Large Barbecue Chicken Pizza','',20.75,'bbq_ckn','L'),(2,'Medium Barbecue Chicken Pizza','',16.75,'bbq_ckn','M'),(3,'Small Barbecue Chicken Pizza','',12.75,'bbq_ckn','S'),(4,'Small Big Meat Pizza','',12,'big_meat','S'),(5,'Small Brie Carre Pizza','',23.65,'brie_carre','S'),(6,'Large Calabrese Pizza','',20.25,'calabrese','L'),(7,'Medium Calabrese Pizza','',16.25,'calabrese','M'),(8,'Small Calabrese Pizza','',12.25,'calabrese','S'),(9,'Large California Chicken Pizza','',20.75,'cali_ckn','L'),(10,'Medium California Chicken Pizza','',16.75,'cali_ckn','M'),(11,'Small California Chicken Pizza','',12.75,'cali_ckn','S'),(12,'Large Chicken Alfredo Pizza','',20.75,'ckn_alfredo','L'),(13,'Medium Chicken Alfredo Pizza','',16.75,'ckn_alfredo','M'),(14,'Small Chicken Alfredo Pizza','',12.75,'ckn_alfredo','S'),(15,'Large Chicken Pesto Pizza','',20.75,'ckn_pesto','L'),(16,'Medium Chicken Pesto Pizza','',16.75,'ckn_pesto','M'),(17,'Small Chicken Pesto Pizza','',12.75,'ckn_pesto','S'),(18,'Large Classic Deluxe Pizza','',20.5,'classic_dlx','L'),(19,'Medium Classic Deluxe Pizza','',16,'classic_dlx','M'),(20,'Small Classic Deluxe Pizza','',12,'classic_dlx','S'),(21,'Large Five Cheese Pizza','',18.5,'five_cheese','L'),(22,'Large Four Cheese Pizza','',17.95,'four_cheese','L'),(23,'Medium Four Cheese Pizza','',14.75,'four_cheese','M'),(24,'Large Green Garden Pizza','',20.25,'green_garden','L'),(25,'Medium Green Garden Pizza','',16,'green_garden','M'),(26,'Small Green Garden Pizza','',12,'green_garden','S'),(27,'Large Hawaiian Pizza','',16.5,'hawaiian','L'),(28,'Medium Hawaiian Pizza','',13.25,'hawaiian','M'),(29,'Small Hawaiian Pizza','',10.5,'hawaiian','S'),(30,'Large Italian Capocollo Pizza','',20.5,'ital_cpcllo','L'),(31,'Medium Italian Capocollo Pizza','',16,'ital_cpcllo','M'),(32,'Small Italian Capocollo Pizza','',12,'ital_cpcllo','S'),(33,'Large Italian Supreme Pizza','',20.75,'ital_supr','L'),(34,'Medium Italian Supreme Pizza','',16.5,'ital_supr','M'),(35,'Small Italian Supreme Pizza','',12.5,'ital_supr','S'),(36,'Large Italian Vegetables Pizza','',21,'ital_veggie','L'),(37,'Medium Italian Vegetables Pizza','',16.75,'ital_veggie','M'),(38,'Small Italian Vegetables Pizza','',12.75,'ital_veggie','S'),(39,'Large Mediterranean Pizza','',20.25,'mediterraneo','L'),(40,'Medium Mediterranean Pizza','',16,'mediterraneo','M'),(41,'Small Mediterranean Pizza','',12,'mediterraneo','S'),(42,'Large Mexicana Pizza','',20.25,'mexicana','L'),(43,'Medium Mexicana Pizza','',16,'mexicana','M'),(44,'Small Mexicana Pizza','',12,'mexicana','S'),(45,'Large Napolitana Pizza','',20.5,'napolitana','L'),(46,'Medium Napolitana Pizza','',16,'napolitana','M'),(47,'Small Napolitana Pizza','',12,'napolitana','S'),(48,'Large Pepperoni, Mushroom, and Peppers Pizza','',17.5,'pep_msh_pep','L'),(49,'Medium Pepperoni, Mushroom, and Peppers Pizza','',14.5,'pep_msh_pep','M'),(50,'Small Pepperoni, Mushroom, and Peppers Pizza','',11,'pep_msh_pep','S'),(51,'Large Pepperoni Pizza','',15.25,'pepperoni','L'),(52,'Medium Pepperoni Pizza','',12.5,'pepperoni','M'),(53,'Small Pepperoni Pizza','',9.75,'pepperoni','S'),(54,'Large Pepper Salami Pizza','',20.75,'peppr_salami','L'),(55,'Medium Pepper Salami Pizza','',16.5,'peppr_salami','M'),(56,'Small Pepper Salami Pizza','',12.5,'peppr_salami','S'),(57,'Large Prosciutto and Arugula Pizza','',20.75,'prsc_argla','L'),(58,'Medium Prosciutto and Arugula Pizza','',16.5,'prsc_argla','M'),(59,'Small Prosciutto and Arugula Pizza','',12.5,'prsc_argla','S'),(60,'Large Sicilian Pizza','',20.25,'sicilian','L'),(61,'Medium Sicilian Pizza','',16.25,'sicilian','M'),(62,'Small Sicilian Pizza','',12.25,'sicilian','S'),(63,'Large Soppressata Pizza','',20.75,'soppressata','L'),(64,'Medium Soppressata Pizza','',16.5,'soppressata','M'),(65,'Small Soppressata Pizza','',12.5,'soppressata','S'),(66,'Large Southwest Chicken Pizza','',20.75,'southw_ckn','L'),(67,'Medium Southwest Chicken Pizza','',16.75,'southw_ckn','M'),(68,'Small Southwest Chicken Pizza','',12.75,'southw_ckn','S'),(69,'Large Spicy Italian Pizza','',20.75,'spicy_ital','L'),(70,'Medium Spicy Italian Pizza','',16.5,'spicy_ital','M'),(71,'Small Spicy Italian Pizza','',12.5,'spicy_ital','S'),(72,'Large Spinach Pesto Pizza','',20.75,'spin_pesto','L'),(73,'Medium Spinach Pesto Pizza','',16.5,'spin_pesto','M'),(74,'Small Spinach Pesto Pizza','',12.5,'spin_pesto','S'),(75,'Large Spinach and Feta Pizza','',20.25,'spinach_fet','L'),(76,'Medium Spinach and Feta Pizza','',16,'spinach_fet','M'),(77,'Small Spinach and Feta Pizza','',12,'spinach_fet','S'),(78,'Large Spinach Supreme Pizza','',20.75,'spinach_supr','L'),(79,'Medium Spinach Supreme Pizza','',16.5,'spinach_supr','M'),(80,'Small Spinach Supreme Pizza','',12.5,'spinach_supr','S'),(81,'Large Thai Chicken Pizza','',20.75,'thai_ckn','L'),(82,'Medium Thai Chicken Pizza','',16.75,'thai_ckn','M'),(83,'Small Thai Chicken Pizza','',12.75,'thai_ckn','S'),(84,'Large Greek Pizza','',20.5,'the_greek','L'),(85,'Medium Greek Pizza','',16,'the_greek','M'),(86,'Small Greek Pizza','',12,'the_greek','S'),(87,'Extra Large Greek Pizza','',25.5,'the_greek','XL'),(88,'Extra Extra Large Greek Pizza','',35.95,'the_greek','XXL'),(89,'Large Vegetables + Vegetables Pizza','',20.25,'veggie_veg','L'),(90,'Medium Vegetables + Vegetables Pizza','',16,'veggie_veg','M'),(91,'Small Vegetables + Vegetables Pizza','',12,'veggie_veg','S');
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzasize`
--

DROP TABLE IF EXISTS `pizzasize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzasize` (
  `idPizzaSize` varchar(4) NOT NULL,
  `pizzaSlices` int NOT NULL,
  PRIMARY KEY (`idPizzaSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzasize`
--

LOCK TABLES `pizzasize` WRITE;
/*!40000 ALTER TABLE `pizzasize` DISABLE KEYS */;
INSERT INTO `pizzasize` VALUES ('L',16),('M',12),('S',8),('XL',20),('XXL',24);
/*!40000 ALTER TABLE `pizzasize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzavariety`
--

DROP TABLE IF EXISTS `pizzavariety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzavariety` (
  `idPizzaVariety` varchar(45) NOT NULL,
  `namePizzaVariety` varchar(100) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  PRIMARY KEY (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzavariety`
--

LOCK TABLES `pizzavariety` WRITE;
/*!40000 ALTER TABLE `pizzavariety` DISABLE KEYS */;
INSERT INTO `pizzavariety` VALUES ('bbq_ckn','The Barbecue Chicken Pizza','Barbecued Chicken, Red Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce'),('big_meat','The Big Meat Pizza','Bacon, Pepperoni, Italian Sausage, Chorizo Sausage'),('brie_carre','The Brie Carre Pizza','Brie Carre Cheese, Prosciutto, Caramelized Onions, Pears, Thyme, Garlic'),('calabrese','The Calabrese Pizza','?duja Salami, Pancetta, Tomatoes, Red Onions, Friggitello Peppers, Garlic'),('cali_ckn','The California Chicken Pizza','Chicken, Artichoke, Spinach, Garlic, Jalapeno Peppers, Fontina Cheese, Gouda Cheese'),('ckn_alfredo','The Chicken Alfredo Pizza','Chicken, Red Onions, Red Peppers, Mushrooms, Asiago Cheese, Alfredo Sauce'),('ckn_pesto','The Chicken Pesto Pizza','Chicken, Tomatoes, Red Peppers, Spinach, Garlic, Pesto Sauce'),('classic_dlx','The Classic Deluxe Pizza','Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon'),('five_cheese','The Five Cheese Pizza','Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic'),('four_cheese','The Four Cheese Pizza','Ricotta Cheese, Gorgonzola Piccante Cheese, Mozzarella Cheese, Parmigiano Reggiano Cheese, Garlic'),('green_garden','The Green Garden Pizza','Spinach, Mushrooms, Tomatoes, Green Olives, Feta Cheese'),('hawaiian','The Hawaiian Pizza','Sliced Ham, Pineapple, Mozzarella Cheese'),('ital_cpcllo','The Italian Capocollo Pizza','Capocollo, Red Peppers, Tomatoes, Goat Cheese, Garlic, Oregano'),('ital_supr','The Italian Supreme Pizza','Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic'),('ital_veggie','The Italian Vegetables Pizza','Eggplant, Artichokes, Tomatoes, Zucchini, Red Peppers, Garlic, Pesto Sauce'),('mediterraneo','The Mediterranean Pizza','Spinach, Artichokes, Kalamata Olives, Sun-dried Tomatoes, Feta Cheese, Plum Tomatoes, Red Onions'),('mexicana','The Mexicana Pizza','Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic'),('napolitana','The Napolitana Pizza','Tomatoes, Anchovies, Green Olives, Red Onions, Garlic'),('pep_msh_pep','The Pepperoni, Mushroom, and Peppers Pizza','Pepperoni, Mushrooms, Green Peppers'),('pepperoni','The Pepperoni Pizza','Mozzarella Cheese, Pepperoni'),('peppr_salami','The Pepper Salami Pizza','Genoa Salami, Capocollo, Pepperoni, Tomatoes, Asiago Cheese, Garlic'),('prsc_argla','The Prosciutto and Arugula Pizza','Prosciutto di San Daniele, Arugula, Mozzarella Cheese'),('sicilian','The Sicilian Pizza','Coarse Sicilian Salami, Tomatoes, Green Olives, Luganega Sausage, Onions, Garlic'),('soppressata','The Soppressata Pizza','Soppressata Salami, Fontina Cheese, Mozzarella Cheese, Mushrooms, Garlic'),('southw_ckn','The Southwest Chicken Pizza','Chicken, Tomatoes, Red Peppers, Red Onions, Jalapeno Peppers, Corn, Cilantro, Chipotle Sauce'),('spicy_ital','The Spicy Italian Pizza','Capocollo, Tomatoes, Goat Cheese, Artichokes, Peperoncini verdi, Garlic'),('spin_pesto','The Spinach Pesto Pizza','Spinach, Artichokes, Tomatoes, Sun-dried Tomatoes, Garlic, Pesto Sauce'),('spinach_fet','The Spinach and Feta Pizza','Spinach, Mushrooms, Red Onions, Feta Cheese, Garlic'),('spinach_supr','The Spinach Supreme Pizza','Spinach, Red Onions, Pepperoni, Tomatoes, Artichokes, Kalamata Olives, Garlic, Asiago Cheese'),('thai_ckn','The Thai Chicken Pizza','Chicken, Pineapple, Tomatoes, Red Peppers, Thai Sweet Chilli Sauce'),('the_greek','The Greek Pizza','Kalamata Olives, Feta Cheese, Tomatoes, Garlic, Beef Chuck Roast, Red Onions'),('veggie_veg','The Vegetables + Vegetables Pizza','Mushrooms, Tomatoes, Red Peppers, Green Peppers, Red Onions, Zucchini, Spinach, Garlic');
/*!40000 ALTER TABLE `pizzavariety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `loginEmail` varchar(100) NOT NULL,
  `loginPassword` varchar(45) NOT NULL,
  `isRoot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `loginEmail_UNIQUE` (`loginEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'master@gmail.com','master',1),(2,'slave@gmail.com','slave',0),(8,'asd@asd.com','asd',0),(10,'asdddddd@asd.com','asdd',0),(11,'asdd@asd.com','asd',0),(12,'ejemplo@asd.com','asd',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pizza_db'
--

--
-- Dumping routines for database 'pizza_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_IsRoot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IsRoot`(in email varchar(100),in pass varchar(45))
select count(1) from user where loginPassword = pass and loginEmail = email and isRoot=1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_IsUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IsUser`(in email varchar(100),in pass varchar(45))
select count(1) from user where loginPassword = pass and loginEmail = email ;;
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

-- Dump completed on 2023-01-24 10:38:06
