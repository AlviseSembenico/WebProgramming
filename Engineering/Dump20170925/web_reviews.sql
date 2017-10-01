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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `global_value` bigint(20) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `description` varchar(12000) DEFAULT NULL,
  `creation_date` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `products_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_id` (`creator_id`),
  KEY `products_id` (`products_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_4` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,617486235,80,100,'Unspecified subluxation of other finger',2,1,1),(2,633432087,89,75,'Displ midcervical fx unsp femr, 7thN',11,2,2),(3,647900437,30,76,'Abdominal testis, unilateral',10,3,3),(4,900251654,34,53,'Fracture of oth parts of pelvis, init for opn fx',6,4,4),(5,261750954,52,56,'Other congenital viral diseases',12,5,5),(6,13742674,13,57,'Staphylococcal polyarthritis',8,6,6),(7,44481105,64,41,'Oth congenital malform of cardiac chambers and connections',12,7,7),(8,221716623,7,50,'Occupant of streetcar injured in oth transport acc, sequela',9,8,8),(9,336107275,100,12,'Asphyx due to being trapped in bed linens, undet, subs',12,9,9),(10,951475131,70,14,'Unsp systemic antibiotic',6,10,10),(11,191441483,37,90,'Athscl type of bypass of right leg w ulcer oth prt low leg',7,11,11),(12,355547133,76,27,'Toxic effect of copper and its compounds, self-harm, sequela',5,12,12),(13,801652078,55,69,'Other cataclysmic storms, subsequent encounter',8,13,13),(14,126984467,65,84,'Other ossification of muscle, left hand',3,14,14),(15,621093537,39,60,'Antiallergic and antiemetic drugs',12,15,15),(16,454070893,87,79,'Unsp injury of unsp musc/fasc/tend at shldr/up arm, unsp arm',7,16,16),(17,782496310,42,35,'Blister (nonthermal), unspecified thigh, sequela',3,17,17),(18,342316343,29,7,'Insect bite (nonvenomous) of unsp parts of thorax, init',2,18,18),(19,531402491,93,17,'Unsp injury of great saphenous at hip and thi lev, left leg',8,19,19),(20,839235658,81,25,'Disorder of ligament, left foot',7,20,20),(21,435072891,25,40,'Type III occipital condyle fracture, left side, sequela',10,21,21),(22,681914772,29,46,'Erosn implnt urtl bulk agnt organ or tissue, subs',7,22,22),(23,175963668,81,85,'Recurrent dislocation, unspecified joint',7,23,23),(24,12254172,17,75,'Pseudocyst of pancreas',2,24,24),(25,231966455,36,23,'Corrosion of second degree of left ankle, initial encounter',12,25,25),(26,797800488,93,96,'Matern care for known or susp placntl insuff, unsp tri, oth',3,26,26),(27,175895652,10,71,'Adverse effect of other bacterial vaccines, init encntr',3,27,27),(28,26745372,91,69,'Injury of radial nrv at upper arm level, right arm, sequela',9,28,28),(29,840765295,17,31,'Malignant neoplasm of overlapping sites of right male breast',5,29,29),(30,898736756,77,55,'Insect bite of unsp external genital organs, female',11,30,30);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
