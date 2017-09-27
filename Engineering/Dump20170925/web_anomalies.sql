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
-- Table structure for table `anomalies`
--

DROP TABLE IF EXISTS `anomalies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anomalies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(12000) DEFAULT NULL,
  `solution` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  CONSTRAINT `anomalies_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `anomalies_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anomalies`
--

LOCK TABLES `anomalies` WRITE;
/*!40000 ALTER TABLE `anomalies` DISABLE KEYS */;
INSERT INTO `anomalies` VALUES (1,1,63,'Unsp opn wnd unsp external genital organs, male, sequela',85),(2,2,80,'Superficial thrombophlebitis in pregnancy, unsp trimester',12),(3,3,6,'Other fracture of upper and lower end of left fibula',59),(4,4,75,'Nondisp fx of distal phalanx of left little finger, sequela',23),(5,5,95,'Labor and delivery complicated by short cord, unsp',55),(6,6,31,'Idiopathic aseptic necrosis of right carpus',30),(7,7,64,'Kidney transplant status',51),(8,8,59,'Other secondary chronic gout, unsp hand, without tophus',78),(9,9,81,'Nondisp fx of medial phalanx of right ring finger, sequela',17),(10,10,10,'Inj flexor musc/fasc/tend and unsp finger at wrs/hnd lv',3),(11,11,59,'Open bite of right index finger w/o damage to nail, subs',80),(12,12,62,'Poisoning by butyrophen/thiothixen neuroleptc, acc, sequela',16),(13,13,45,'Pressure ulcer of left buttock',100),(14,14,93,'Deformity of reconstructed breast',65),(15,15,75,'Unsp physl fx upper end r fibula, subs for fx w delay heal',49),(16,16,61,'Corros second deg of head, face, and neck, unsp site, init',60),(17,17,97,'Other specified diabetes mellitus with skin complications',96),(18,18,88,'St Louis encephalitis',67),(19,19,85,'Unspecified acquired deformity of unspecified limb',34),(20,20,90,'Food in trachea causing asphyxiation, subsequent encounter',88),(21,21,93,'Crushing injury of left knee',64),(22,22,74,'Displ transverse fx r patella, 7thH',82),(23,23,41,'Immersion hand, left hand, initial encounter',50),(24,24,6,'Displ commnt fx shaft of rad, unsp arm, 7thM',19),(25,25,75,'Oth fx upper end of left ulna, init for opn fx type 3A/B/C',71),(26,26,14,'Displaced avulsion fracture of unspecified ilium',2),(27,27,78,'Person outsd hv veh inj in clsn w pedl cyc in traf, sequela',22),(28,28,79,'Pnctr w/o fb of left thumb w/o damage to nail, subs',9),(29,29,42,'Collapsed vert, NEC, lumbar region, subs for fx w delay heal',58),(30,30,71,'Nondisp transverse fx shaft of l ulna, 7thG',95);
/*!40000 ALTER TABLE `anomalies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25 23:36:34
