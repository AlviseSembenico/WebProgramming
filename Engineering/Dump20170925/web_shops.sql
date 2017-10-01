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
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(12000) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  `global_value` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `shipping_method` int(11) DEFAULT NULL,
  `close_day` varchar(45) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_id` (`creator_id`),
  KEY `shops_ibfk_5` (`owner_id`),
  CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shops_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shops_ibfk_3` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shops_ibfk_4` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shops_ibfk_5` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shops_ibfk_6` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'Skivee','Other fracture of T9-T10 vertebra, sequela','bloglovin.com',22,1,1,42.7729381,-80.9828842,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Skinix','Leakage of balloon (counterpulsation) device, sequela','qq.com',2,2,2,-25.3631459,-49.0801588,2,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mymm','Diffuse large B-cell lymphoma, lymph nodes of axilla and upper limb','irs.gov',90,3,3,53.450694,-6.1479779,3,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Camimbo','Unspecified juvenile rheumatoid arthritis, unspecified elbow','stumbleupon.com',24,4,4,43.6943099,2.0376775,4,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Divape','Displaced fracture of olecranon process with intraarticular extension of right ulna, sequela','yale.edu',71,5,5,43.2038704,44.8434843,5,'Martedì','08:00:00','20:00:00','Italy','Via S.Marco','Mezzocorona'),(6,'LiveZ','Toxic effect of carbon monoxide from other source, assault, sequela','360.cn',65,6,6,15.809627,-90.290544,6,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Eidel','Displaced Maisonneuve\'s fracture of left leg, subsequent encounter for closed fracture with routine healing','squidoo.com',7,7,7,29.937716,110.047948,7,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Skipstorm','Nondisplaced fracture of body of right talus, subsequent encounter for fracture with malunion','tamu.edu',45,8,8,8.3976116,14.1727518,8,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Blogpad','Erythema in diseases classified elsewhere','youtube.com',52,9,9,31.5545599,120.1398158,9,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Skaboo','Anal polyp','ft.com',5,10,10,51.6406279,15.0625181,10,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Zoombeat','Unspecified complication of procedure','flickr.com',14,11,11,-20.3617008,29.5107708,11,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Mynte','Monoplegia of lower limb following other nontraumatic intracranial hemorrhage affecting right dominant side','pen.io',10,12,12,22.6142911,-79.8688837,12,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Oyoloo','Unspecified injury of unspecified tibial artery, unspecified leg, subsequent encounter','nasa.gov',19,13,13,40.378739,-3.7358924,13,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Dabjam','Leprosy, unspecified','yellowbook.com',40,14,14,41.3899483,-8.3685941,14,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Meeveo','Abrasion, unspecified lower leg, initial encounter','odnoklassniki.ru',17,15,15,51.9863725,17.7680934,15,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Reallinks','Hypertrophy of bone, left radius','whitehouse.gov',10,16,16,46.228975,125.341286,16,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Npath','Pingueculitis, right eye','noaa.gov',86,17,17,14.5806413,121.0036417,17,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Dynazzy','Polyp of vocal cord and larynx','tripadvisor.com',25,18,18,41.068909,122.949298,18,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Feedbug','Other fracture of left great toe, initial encounter for closed fracture','vinaora.com',85,19,19,47.747102,122.831186,19,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Gabcube','Unspecified fracture of first thoracic vertebra, subsequent encounter for fracture with routine healing','newsvine.com',55,20,20,35.691878,106.04401,20,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Twitternation','Poisoning by anticoagulants, undetermined, sequela','drupal.org',28,21,21,-8.4164207,115.3459831,21,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Twitternation','Melanoma in situ, unspecified','indiegogo.com',46,22,22,38.8426524,-9.1289108,22,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Feedmix','Synovitis and tenosynovitis, unspecified','csmonitor.com',88,23,23,28.901462,118.511235,23,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Mymm','Atrophy of globe, right eye','github.com',30,24,24,-9.771006,-76.6613239,24,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Dablist','Posterior dislocation of proximal end of tibia, right knee, sequela','buzzfeed.com',5,25,25,16.6921704,120.3391924,25,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Thoughtworks','Passenger in pick-up truck or van injured in collision with fixed or stationary object in traffic accident, subsequent encounter','shareasale.com',68,26,26,-6.8370422,-47.2142417,26,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Geba','Poisoning by barbiturates, intentional self-harm','flavors.me',14,27,27,41.217649,123.1966721,27,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Yakijo','Rheumatoid arthritis of left elbow with involvement of other organs and systems','quantcast.com',41,28,28,60.0828404,30.9877334,28,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Oyoba','2-part nondisplaced fracture of surgical neck of left humerus, subsequent encounter for fracture with routine healing','cnbc.com',19,29,29,47.3591366,2.8002946,29,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Mynte','Unspecified sprain of unspecified finger, subsequent encounter','flavors.me',3,30,30,45.271697,-66.0549467,30,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
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
