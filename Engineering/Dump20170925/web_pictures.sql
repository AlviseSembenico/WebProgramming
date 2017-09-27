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
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(12000) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `products_id` int(11) DEFAULT NULL,
  `shops_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`),
  KEY `picture_ibfl_3_idx` (`shops_id`),
  CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pictures_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `picture_ibfl_3` FOREIGN KEY (`shops_id`) REFERENCES `shops` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (1,'Burr Oak','Central retinal vein occlusion, right eye, stable','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',1,NULL),(2,'Ranitidine','Unspecified nondisplaced fracture of sixth cervical vertebra, subsequent encounter for fracture with delayed healing','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',2,NULL),(3,'Allergenic Extracts Alum Precipitated','Unspecified traumatic displaced spondylolisthesis of second cervical vertebra, initial encounter for open fracture','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',3,NULL),(4,'Brompheniramine maleate, Dextromethorphan HBr, Phenylephrine HCl','Other infections with a predominantly sexual mode of transmission complicating pregnancy','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',4,NULL),(5,'CALENDULA OFFICINALIS, ECHINACEA ANGUSTIFOLIA, HYPERICUM PERFORATUM, PHYTOLACCA DECANDRA, CANTHARIS, SULPHUR','Displaced fracture of fifth metatarsal bone, left foot, subsequent encounter for fracture with nonunion','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',5,NULL),(6,'Cefuroxime axetil','Occupant of railway train or railway vehicle injured due to object falling onto train, initial encounter','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',6,NULL),(7,'lidocaine','Malignant neoplasm of adrenal gland','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',7,NULL),(8,'calcium carbonate','Other dislocation of right ulnohumeral joint, sequela','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',8,NULL),(9,'Cilostazol','Laceration without foreign body of left buttock','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',9,NULL),(10,'FAMOTIDINE','Biliary cirrhosis, unspecified','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',10,NULL),(11,'HYPERICUM PERFORATUM','Benign neoplasm of brain, infratentorial','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',11,NULL),(12,'Olibanum, Thuja Occidentalis, Gelsemium Sempervirens, Red Cedar, Allium Cepa, Antimonium Tartaricum, Hepar Sulphuris Calcareum, Juniperus Communis.','Nondisplaced segmental fracture of shaft of unspecified tibia, initial encounter for open fracture type I or II','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',12,NULL),(13,'Paroxetine Hydrochloride','Unspecified noninfective disorders of pinna, left ear','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',13,NULL),(14,'Isopropyl Alcohol','Asphyxiation due to hanging, accidental','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',14,NULL),(15,'GABAPENTIN','Fracture of other part of scapula, unspecified shoulder, subsequent encounter for fracture with malunion','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',15,NULL),(16,'MENTHOL','Neoplasm of uncertain behavior of left renal pelvis','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',16,NULL),(17,'maclura pomifera pollen','Pigmentary glaucoma, right eye, indeterminate stage','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',17,NULL),(18,'Aluminum Sesquichlorohydrate','Nodular sclerosis Hodgkin lymphoma, extranodal and solid organ sites','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',18,NULL),(19,'BENZALKONIUM CHLORIDE','Minor laceration of unspecified kidney, initial encounter','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',19,NULL),(20,'Risperidone','Rheumatoid vasculitis with rheumatoid arthritis of left hip','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',20,NULL),(21,'lisinopril','Furuncle of left upper limb','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',21,NULL),(22,'Alcohol','Other secondary osteonecrosis, unspecified bone','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',22,NULL),(23,'Aspirin','Poisoning by other narcotics, accidental (unintentional), subsequent encounter','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',23,NULL),(24,'Budesonide','Other diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism complicating pregnancy, unspecified trimester','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',24,NULL),(25,'ALLANTOIN','MERRF syndrome','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',25,NULL),(26,'Fluorouracil','Nondisplaced comminuted fracture of shaft of right femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',26,NULL),(27,'Ibuprofen','Body mass index (BMI) 29.0-29.9, adult','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',27,NULL),(28,'Cyclobenzaprine Hydrochloride','Unspecified subluxation of unspecified foot, initial encounter','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',28,NULL),(29,'Erythromycin','Other Creutzfeldt-Jakob disease','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',29,NULL),(30,'Benzalkonium Chloride','Toxic effect of tin and its compounds, intentional self-harm, subsequent encounter','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',30,NULL),(31,'prova','mamma zappo','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',4,5),(33,'Iphon 8-1','prima foto','https://www.focus.it/site_stored/imgs/0005/004/einstein.630x360.jpg',32,1),(34,'Iphon 8-2','seconda foto','https://cdn.pixabay.com/user/2015/01/20/20-56-42-330_250x250.jpg',32,1),(35,'Iphon 8-3','terza foto','http://www.stampafoto.info/wp-content/uploads/FOTO-SOLO_Feature.jpg',32,1),(36,'MediaWorld','Mediaworld','http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg',5,5);
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
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
