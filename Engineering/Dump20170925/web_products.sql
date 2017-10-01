-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: www.xoft.cloud    Database: web
-- ------------------------------------------------------
-- Server version	5.5.57-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(20000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `shops_id` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shops_id` (`shops_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`shops_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`shops_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Wine - Pinot Noir Pond Haddock','Contusion of forearm',46.2,1,'Fix San'),(2,'Chutney Sauce - Mango','Poisoning by unspecified drugs acting on muscles, accidental (unintentional), sequela',47.2,2,'Matsoft'),(3,'Food Colouring - Green','Unspecified trochanteric fracture of left femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with delayed healing',48.2,3,'Redhold'),(4,'Jameson - Irish Whiskey','Ataxic cerebral palsy',49.2,5,'Cardify'),(5,'Tia Maria','Toxic effect of trichloroethylene, undetermined, sequela',50.2,5,'Opela'),(6,'Milk - Buttermilk','Other lymphoid leukemia, in relapse',51.2,6,'Sub-Ex'),(7,'Flour - Chickpea','Salter-Harris Type IV physeal fracture of phalanx of left toe',52.2,7,'Bitchip'),(8,'Lamb - Leg, Boneless','Adverse effect of keratolytics, keratoplastics, and other hair treatment drugs and preparations, subsequent encounter',53.2,8,'Domainer'),(9,'Laundry - Bag Cloth','Strain of intrinsic muscle and tendon at ankle and foot level, left foot',54.2,9,'Stringtough'),(10,'Pasta - Lasagne, Fresh','Other superficial bite of right thumb, sequela',55.2,10,'Bamity'),(11,'Sauce - Hp','Infection and inflammatory reaction due to internal fixation device of right ulna, sequela',56.2,11,'Hatity'),(12,'Pop Shoppe Cream Soda','Maternal care for other known or suspected poor fetal growth, first trimester, fetus 2',57.2,12,'Treeflex'),(13,'Chinese Foods - Chicken','Poisoning by, adverse effect of and underdosing of methadone',58.2,13,'Namfix'),(14,'Rabbit - Legs','Cervical high risk human papillomavirus (HPV) DNA test positive',59.2,14,'It'),(15,'Mushroom - Chanterelle, Dry','Traumatic ischemia of muscle, subsequent encounter',60.2,15,'Regrant'),(16,'Steamers White','Displaced fracture of medial phalanx of unspecified finger, initial encounter for open fracture',61.2,16,'Tresom'),(17,'Soup Campbells Split Pea And Ham','Burn due to unspecified watercraft on fire, subsequent encounter',62.2,17,'Zathin'),(18,'Vermacelli - Sprinkles, Assorted','Mild hypoxic ischemic encephalopathy [HIE]',63.2,18,'Trippledex'),(19,'Ice - Clear, 300 Lb For Carving','Posterior dislocation of left sternoclavicular joint, subsequent encounter',64.2,19,'Zathin'),(20,'Truffle Cups Green','Drowning and submersion due to falling or jumping from burning water-skis',65.2,20,'Holdlamis'),(21,'Pur Value','Toxic effect of contact with venomous marine plant, assault, initial encounter',66.2,21,'Latlux'),(22,'Soup - Campbells Beef Stew','Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication',67.2,22,'Transcof'),(23,'Cheese - Boursin, Garlic / Herbs','Injury of femoral artery',68.2,23,'Zaam-Dox'),(24,'Octopus - Baby, Cleaned','Posterior subluxation and dislocation of proximal end of tibia',69.2,24,'Fixflex'),(25,'Veal - Tenderloin, Untrimmed','Motorcycle driver injured in collision with other motor vehicles in traffic accident',70.2,25,'Mat Lam Tam'),(26,'Vinegar - Rice','Presence of urogenital implants',71.2,26,'Tresom'),(27,'Honey - Liquid','Superficial foreign body of unspecified wrist',72.2,27,'Kanlam'),(28,'Longos - Chicken Curried','Displaced fracture of lesser trochanter of unspecified femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with delayed healing',73.2,28,'Domainer'),(29,'Pasta - Elbows, Macaroni, Dry','Strain of flexor muscle, fascia and tendon of right little finger at forearm level',74.2,29,'Tin'),(30,'Pork - Bacon, Sliced','Injury of other nerves at hip and thigh level, unspecified leg, initial encounter',75.2,30,'Hatity'),(32,'iPhone 8','The last device Aplle',950,1,'Electronic');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25 23:36:33
