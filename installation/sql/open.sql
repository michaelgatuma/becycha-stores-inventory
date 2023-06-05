-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `Drink_energy`
--

DROP TABLE IF EXISTS `Drink_energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Drink_energy` (
                                `del_no` int NOT NULL AUTO_INCREMENT,
                                `vehicle` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                                `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                                `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                                `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                                `date` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                                PRIMARY KEY (`del_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16790 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drink_energy`
--

LOCK TABLES `Drink_energy` WRITE;
/*!40000 ALTER TABLE `Drink_energy` DISABLE KEYS */;
/*!40000 ALTER TABLE `Drink_energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pet`
--

DROP TABLE IF EXISTS `Pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pet` (
                       `pet_id` int NOT NULL AUTO_INCREMENT,
                       `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                       `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                       `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                       `date` date NOT NULL,
                       PRIMARY KEY (`pet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pet`
--

LOCK TABLES `Pet` WRITE;
/*!40000 ALTER TABLE `Pet` DISABLE KEYS */;
INSERT INTO `Pet` VALUES (9,'Fanta Orange','1','1Litre','2023-06-04');
/*!40000 ALTER TABLE `Pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RGB`
--

DROP TABLE IF EXISTS `RGB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RGB` (
                       `sales_id` int NOT NULL AUTO_INCREMENT,
                       `flavour` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                       `quantity` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                       `size` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                       `date` date NOT NULL,
                       PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RGB`
--

LOCK TABLES `RGB` WRITE;
/*!40000 ALTER TABLE `RGB` DISABLE KEYS */;
/*!40000 ALTER TABLE `RGB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
                         `admin_id` int NOT NULL AUTO_INCREMENT,
                         `name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         `email` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         `phone` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         `password` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         `level` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         `login_status` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                         PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Administrator','admin@localhost','07133445656','7c4a8d09ca3762af61e59520943dc26494f8941b','1','0'),(2,'Administrator','john@gmail.com','0721339393','3a0f118b574168c5c0359a60c70465cff91b36c8','1','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role` (
                              `admin_role_id` int NOT NULL AUTO_INCREMENT,
                              `admin_id` int NOT NULL,
                              `dashboard` int NOT NULL,
                              `manage_academics` int NOT NULL,
                              `manage_employee` int NOT NULL,
                              `manage_student` int NOT NULL,
                              `manage_attendance` int NOT NULL,
                              `download_page` int NOT NULL,
                              `manage_parent` int NOT NULL,
                              `manage_alumni` int NOT NULL,
                              PRIMARY KEY (`admin_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` VALUES (4,1,1,1,1,1,1,1,1,1),(7,9,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
                              `assignment_id` int NOT NULL AUTO_INCREMENT,
                              `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              `subject_id` int NOT NULL,
                              `class_id` int NOT NULL,
                              `teacher_id` int NOT NULL,
                              `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,'Assignment for Nursery One',4,2,1,'DESC','invoice.docx','pdf','2018-08-19');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
                              `attendance_id` int NOT NULL AUTO_INCREMENT,
                              `status` int NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
                              `student_id` int NOT NULL,
                              `date` date NOT NULL,
                              `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (39,1,45,'2019-12-20',''),(40,1,45,'2019-12-22',''),(41,1,45,'2021-12-02',''),(42,2,45,'2021-12-03','');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
                        `bank_id` int NOT NULL AUTO_INCREMENT,
                        `account_holder_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `account_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `bank_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `branch` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (2,'Udemy Instructor','1234567','Payoneer or paypal','USA'),(3,'Udemy Instructor','1234567','Payoneer or paypal','USA'),(4,'Udemy Instructor','1234567','Payoneer or paypal','USA');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `becyhastores`
--

DROP TABLE IF EXISTS `becyhastores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `becyhastores` (
                                `store_id` int NOT NULL AUTO_INCREMENT,
                                `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                                `store_category_id` int NOT NULL,
                                `capacity` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                                `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                                `description` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                                PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `becyhastores`
--

LOCK TABLES `becyhastores` WRITE;
/*!40000 ALTER TABLE `becyhastores` DISABLE KEYS */;
/*!40000 ALTER TABLE `becyhastores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
                        `book_id` int NOT NULL AUTO_INCREMENT,
                        `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `author_id` int NOT NULL,
                        `publisher_id` int NOT NULL,
                        `book_category_id` int NOT NULL,
                        `isbn` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `edition` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `subject_id` int NOT NULL,
                        `quantity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `timestamp` int NOT NULL,
                        `class_id` int NOT NULL,
                        `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Advance Java.','This is the newly released book by Sheg',2,1,2,'DS34FD','1st',0,'1',1576951200,2,'1','200'),(2,'Python','Python',2,1,2,'DS34FD','1st',4,'2',1574186400,2,'2','500');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_category` (
                                 `book_category_id` int NOT NULL AUTO_INCREMENT,
                                 `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 PRIMARY KEY (`book_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (2,'Non fictional.','This is another non-fictional book');
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_products`
--

DROP TABLE IF EXISTS `bs_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bs_products` (
                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                               `product_name` varchar(255) NOT NULL,
                               `product_type` varchar(45) NOT NULL,
                               `flavour` varchar(45) NOT NULL,
                               `volume_size` varchar(45) NOT NULL,
                               `stock_qty` int NOT NULL,
                               `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_products`
--

LOCK TABLES `bs_products` WRITE;
/*!40000 ALTER TABLE `bs_products` DISABLE KEYS */;
INSERT INTO `bs_products` VALUES (1,'Coke Zero','pet','Coke Zero','300ml',24,'2023-06-04 11:35:52','2023-06-05 11:47:17'),(2,'Fanta','pet','Fanta Orange','300ml',24,'2023-06-04 12:04:17','2023-06-04 12:04:17'),(3,'Minute Maid','minutemaid','Apple','250ml',36,'2023-06-04 12:16:58','2023-06-05 10:30:50');
/*!40000 ALTER TABLE `bs_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_stock_transactions`
--

DROP TABLE IF EXISTS `bs_stock_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bs_stock_transactions` (
                                         `id` int unsigned NOT NULL AUTO_INCREMENT,
                                         `product_id` int unsigned NOT NULL,
                                         `transaction_type` varchar(50) NOT NULL,
                                         `transaction_ref` varchar(50) NOT NULL,
                                         `vehicle_no` varchar(50) NOT NULL,
                                         `quantity` int NOT NULL,
                                         `transaction_date` date NOT NULL,
                                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                         `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                         PRIMARY KEY (`id`),
                                         KEY `product_id` (`product_id`),
                                         CONSTRAINT `bs_stock_transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `bs_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_stock_transactions`
--

LOCK TABLES `bs_stock_transactions` WRITE;
/*!40000 ALTER TABLE `bs_stock_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_stock_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
                             `store_category_id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                             `description` int NOT NULL,
                             PRIMARY KEY (`store_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
                               `id` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
                               `ip_address` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
                               `timestamp` int unsigned NOT NULL DEFAULT '0',
                               `data` blob NOT NULL,
                               PRIMARY KEY (`id`),
                               KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('0443mndd7vl81548ivtabh64i1ds7m5m','127.0.0.1',1685968959,_binary '__ci_last_regenerate|i:1685968959;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('0j6lvatfd6f65d2g1sh3meo4g7k94epc','127.0.0.1',1685878888,_binary '__ci_last_regenerate|i:1685878888;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('0st608hfkk4tqbuoiuupsnrmc30pol09','127.0.0.1',1685966917,_binary '__ci_last_regenerate|i:1685966917;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('12hl4sp2t7dtha4cm1oq2q3mpnup22s4','127.0.0.1',1685878478,_binary '__ci_last_regenerate|i:1685878478;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('1jg32ekh1c30qs145vn9shqqea49dvep','127.0.0.1',1685790867,_binary '__ci_last_regenerate|i:1685790867;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('29pl1762lhclf83sgbfdmspf07vrplh2','127.0.0.1',1685875346,_binary '__ci_last_regenerate|i:1685875346;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('2f6mne543qg5l7nl8r8on97qgd8b3dga','127.0.0.1',1685965124,_binary '__ci_last_regenerate|i:1685965124;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('4af1c8lpm9blutunc7smt6qcu4og44kd','127.0.0.1',1685964244,_binary '__ci_last_regenerate|i:1685964244;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('52htahj9njiiuanu21298ppnha8obahg','127.0.0.1',1685962315,_binary '__ci_last_regenerate|i:1685962315;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('59vq5bb1mnqc04btbtv7f5e3paq1jdbg','127.0.0.1',1685712360,_binary '__ci_last_regenerate|i:1685712360;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('5uo8jhqrkd598b2dh1r3pbpl2mcbeilb','127.0.0.1',1684885469,_binary '__ci_last_regenerate|i:1684885469;'),('6bs5k6n0fhfu6b61kubqobfqtbfuhev0','127.0.0.1',1685711478,_binary '__ci_last_regenerate|i:1685711478;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('73phkps9k8ma5utvs3k6eeg490b7lgth','127.0.0.1',1685968959,_binary '__ci_last_regenerate|i:1685968959;'),('78e2r8da0lclm6ctrcvijplm100nhpkg','127.0.0.1',1684887585,_binary '__ci_last_regenerate|i:1684887334;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('7ra3pol4a9hdsud9mnbm7622h03v6mv1','127.0.0.1',1684886908,_binary '__ci_last_regenerate|i:1684886908;'),('89mdfrse2ubfs0cde33fif6us55eun2u','127.0.0.1',1685878080,_binary '__ci_last_regenerate|i:1685878080;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('8p45qf6321a75mgdpt6v5unb904mbsr4','127.0.0.1',1685879765,_binary '__ci_last_regenerate|i:1685879765;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('913f4qu2clg92qj1jd3l8vad1c312ji6','127.0.0.1',1685916828,_binary '__ci_last_regenerate|i:1685916828;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('9ttvts02ocgsa94anjedi1c9ld8pehc7','127.0.0.1',1685880144,_binary '__ci_last_regenerate|i:1685880144;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('9vo4c4q9a0h3jv873imnibvs9aqb2ecp','127.0.0.1',1684766606,_binary '__ci_last_regenerate|i:1684766594;'),('cormiiprf9fj5t7dt5nkivh0nfmj5d5j','127.0.0.1',1685710691,_binary '__ci_last_regenerate|i:1685710691;error_message|s:23:\"Wrong Email Or Password\";__ci_vars|a:1:{s:13:\"error_message\";s:3:\"old\";}'),('cqv1n5gig6b8fi2bgif407vebuf638eo','127.0.0.1',1685712360,_binary '__ci_last_regenerate|i:1685712360;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('d1j03u1mbu3o07di5os5a883leennvg5','127.0.0.1',1685956853,_binary '__ci_last_regenerate|i:1685956853;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('ddvv8glgirkhr4jd9f8ar8it32qn0h3h','127.0.0.1',1685881083,_binary '__ci_last_regenerate|i:1685880872;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('faq46h6gp8vnil19n76ltf3nrkd20ncm','127.0.0.1',1685864939,_binary '__ci_last_regenerate|i:1685864939;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('fglgjm1chk7fe0hac6ms2g2f9gvupain','127.0.0.1',1685873179,_binary '__ci_last_regenerate|i:1685873179;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('g5u9kmn17tcvgslf2b6fict6db6ln0fr','127.0.0.1',1685963497,_binary '__ci_last_regenerate|i:1685963497;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";flash_message|s:30:\"Delivery Recorded Successfully\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}'),('ghn0n8vhm87pa9gq64d0fvjr4t7ddfo8','127.0.0.1',1638531506,_binary '__ci_last_regenerate|i:1638531506;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('hr8c623a38u7octsve0f471mmrianglp','127.0.0.1',1685862630,_binary '__ci_last_regenerate|i:1685862630;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";flash_message|s:18:\"Successfully Login\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}'),('i1g0f3dvv3c9ifpeu8q6n08bkj2vvq8i','127.0.0.1',1638529350,_binary '__ci_last_regenerate|i:1638529350;login_type|s:7:\"teacher\";teacher_login|s:1:\"1\";teacher_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Udemy Teacher\";'),('i4517oj1psqvdg9ropuiqkhfak1998ab','127.0.0.1',1685790542,_binary '__ci_last_regenerate|i:1685790542;'),('ibamrvl2f5lig0tasa5lq0r84nkt1lth','127.0.0.1',1638530120,_binary '__ci_last_regenerate|i:1638530120;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('ijnsmlt7ha93dv68u7ek3dpkvtohhcv8','127.0.0.1',1685966595,_binary '__ci_last_regenerate|i:1685966595;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('ioighfvj3hp42r0vd5q65625otrs41s2','127.0.0.1',1685960834,_binary '__ci_last_regenerate|i:1685960834;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('j1j2l6s180837gd6g14mvv8ctprmqq8t','127.0.0.1',1685791375,_binary '__ci_last_regenerate|i:1685791375;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('j2v6u4lrkk8e7l4q2d5uvbjfaluemrjo','127.0.0.1',1685866451,_binary '__ci_last_regenerate|i:1685866451;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('jbsme13m6fk9jpmks9an3va3joahhrdp','127.0.0.1',1676410717,_binary '__ci_last_regenerate|i:1676410702;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";flash_message|s:18:\"Successfully Login\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}'),('jifl1en5tutgvb6vev1pfmvirhrg7cfk','127.0.0.1',1638531180,_binary '__ci_last_regenerate|i:1638531180;'),('k801thtsoas11093604osuoi45ea9ufb','127.0.0.1',1685960438,_binary '__ci_last_regenerate|i:1685960438;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('km80bdrfo5hnr640n3o6s24hcjjumodf','127.0.0.1',1684886251,_binary '__ci_last_regenerate|i:1684886205;'),('kqb64199sdlkfad52kujfe9qtn845hd3','127.0.0.1',1638529796,_binary '__ci_last_regenerate|i:1638529796;login_type|s:7:\"teacher\";teacher_login|s:1:\"1\";teacher_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Udemy Teacher\";'),('ku7d6kh4isvslton50737213ettssegr','127.0.0.1',1685963846,_binary '__ci_last_regenerate|i:1685963846;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('l4p2faemjchcju82u6livoon1dpmabun','127.0.0.1',1685880872,_binary '__ci_last_regenerate|i:1685880872;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('lfgotut2u841oq4j9b7r06pq0hmtuu73','127.0.0.1',1685863510,_binary '__ci_last_regenerate|i:1685863510;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('ltp0cec0lbvu14pkj9olnlvqhedvngcg','127.0.0.1',1685877051,_binary '__ci_last_regenerate|i:1685877051;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('maaan6njn22o95n9813le5k9v5e4uflh','127.0.0.1',1685876342,_binary '__ci_last_regenerate|i:1685876342;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('miv4lncjd7vf6is0ikipuhrcvb6hr5qc','127.0.0.1',1685877400,_binary '__ci_last_regenerate|i:1685877400;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('mnkpirl36t4l1kddsch758q7tr5drqq0','127.0.0.1',1685967892,_binary '__ci_last_regenerate|i:1685967892;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('mtrqhkc7dr7nho212tf20bo63jlhe9ah','127.0.0.1',1685963083,_binary '__ci_last_regenerate|i:1685963083;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('n5ora4fvvpo1ipmi9bbama3j4063uujf','127.0.0.1',1685710322,_binary '__ci_last_regenerate|i:1685710322;'),('nefas0epl9co61uomhs5mhb38dl0ggdb','127.0.0.1',1684887317,_binary '__ci_last_regenerate|i:1684887317;login_type|s:7:\"student\";student_login|s:1:\"1\";student_id|s:2:\"45\";login_user_id|s:2:\"45\";name|s:15:\"Testing Student\";'),('o2pfvngln6feg9dda1a2d3t659qu6m6f','127.0.0.1',1685965829,_binary '__ci_last_regenerate|i:1685965829;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('of201ihl0535e7f8a0une1i15ojjupkr','127.0.0.1',1685879219,_binary '__ci_last_regenerate|i:1685879219;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('pkcej47kof14lrm7o4upuqcibs0n36cf','127.0.0.1',1685791375,_binary '__ci_last_regenerate|i:1685791375;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('pvjqtrg922pn9sc903pu9l0jgarrhsaj','127.0.0.1',1684886908,_binary '__ci_last_regenerate|i:1684886908;'),('q12vtkoaqcabd46pkmufb244rsmkr0o7','127.0.0.1',1684886205,_binary '__ci_last_regenerate|i:1684886205;'),('qa61buh82i27oltuud5jtoqti169ptq0','127.0.0.1',1685916842,_binary '__ci_last_regenerate|i:1685916828;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('r2q6vsjij6f6iikmk1hcq8q37p21cmu7','127.0.0.1',1638528711,_binary '__ci_last_regenerate|i:1638528711;'),('r7mi1ici60ulas30i4q60hp8d37ktek0','127.0.0.1',1685877710,_binary '__ci_last_regenerate|i:1685877710;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('sh28eb5mebek2b5fpuecgnvaaqm4coes','127.0.0.1',1685876727,_binary '__ci_last_regenerate|i:1685876727;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('sm768cb9i1ldhrfjgm6nleon64pevjhh','127.0.0.1',1685873959,_binary '__ci_last_regenerate|i:1685873959;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('smp76ur0338466dqss976vdkgngcfb3q','127.0.0.1',1685873567,_binary '__ci_last_regenerate|i:1685873567;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('t2rovhe0ufpq9vlbkika5l08crthiimu','127.0.0.1',1685957289,_binary '__ci_last_regenerate|i:1685957289;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('tj0pctqq074ttctkak9kpthqjc6vvfno','127.0.0.1',1685874332,_binary '__ci_last_regenerate|i:1685874332;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('tn5s00sirfcdn13fm9k9aellrj5f9g10','127.0.0.1',1685965478,_binary '__ci_last_regenerate|i:1685965478;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";error_message|N;'),('u1hf1tc3renhpjv1itpkh7h8b1beo9gn','127.0.0.1',1685964577,_binary '__ci_last_regenerate|i:1685964577;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('udlrij2a6risgi97a1gsgpt90jme4dkc','127.0.0.1',1685874768,_binary '__ci_last_regenerate|i:1685874768;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('vjqgk8212empkmn0eovbluu5b7qb4kor','127.0.0.1',1685862943,_binary '__ci_last_regenerate|i:1685862943;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('vm7hrdje99inke228tcbviu5i4s1ru1o','127.0.0.1',1685916511,_binary '__ci_last_regenerate|i:1685916511;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";'),('vnb4rcegrq9tl2slbk336r93t11uo7qa','127.0.0.1',1638531814,_binary '__ci_last_regenerate|i:1638531814;'),('vu4o7ktullrmk1rckctfod7lpaifgo2f','127.0.0.1',1684887317,_binary '__ci_last_regenerate|i:1684887317;login_type|s:7:\"student\";student_login|s:1:\"1\";student_id|s:2:\"45\";login_user_id|s:2:\"45\";name|s:15:\"Testing Student\";'),('vv053f9682t5nhjkk66hcajel554l0oh','127.0.0.1',1685916209,_binary '__ci_last_regenerate|i:1685916209;login_type|s:5:\"admin\";admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:13:\"Administrator\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circular`
--

DROP TABLE IF EXISTS `circular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circular` (
                            `circular_id` int NOT NULL AUTO_INCREMENT,
                            `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `reference` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            PRIMARY KEY (`circular_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circular`
--

LOCK TABLES `circular` WRITE;
/*!40000 ALTER TABLE `circular` DISABLE KEYS */;
INSERT INTO `circular` VALUES (2,'Meeting for all the members of the school','DF46SFGH','This is for all the teaching staff. Ensure you are all present.','2018-08-24');
/*!40000 ALTER TABLE `circular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
                         `class_id` int NOT NULL AUTO_INCREMENT,
                         `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `name_numeric` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `teacher_id` int NOT NULL,
                         PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (2,'Nursery One','Nursery 1',1);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
                        `club_id` varchar(200) NOT NULL,
                        `club_name` varchar(200) NOT NULL,
                        `desc` varchar(200) NOT NULL,
                        `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES ('','','','2019-08-25'),('','JohnBosco','Favorite','2023-01-16'),('','djddk','kdkdk','2023-01-11');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
                              `department_id` int NOT NULL AUTO_INCREMENT,
                              `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              `department_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                              PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
                               `designation_id` int NOT NULL AUTO_INCREMENT,
                               `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `department_id` int NOT NULL,
                               PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dormitory` (
                             `dormitory_id` int NOT NULL AUTO_INCREMENT,
                             `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             `hostel_room_id` int NOT NULL,
                             `hostel_category_id` int NOT NULL,
                             `capacity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormitory`
--

LOCK TABLES `dormitory` WRITE;
/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
INSERT INTO `dormitory` VALUES (3,'Bechya store',2,6,'400000','2079','Hello');
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
                            `employee_id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                            `role` int NOT NULL,
                            `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                            `phone` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                            `password` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                            `level` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
                            `login_status` int NOT NULL,
                            PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'employee',1,'employee@employee','0704907555','Levis5405','11',0),(2,'Joan',1,'joan@employee.com','0721339392','$2y$10$KhqWde.KuIDMaBPH8yKrYesCfoKAb.X0likCUlGggpe11XEPkTmme','1',0),(3,'Levis chisira',2,'levischisira0@gmail.com','0704907555','1234','1',0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energy_drink`
--

DROP TABLE IF EXISTS `energy_drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `energy_drink` (
                                `sales_id` int NOT NULL AUTO_INCREMENT,
                                `flavour` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                                `quantity` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                                `size` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                                `date` date NOT NULL,
                                PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energy_drink`
--

LOCK TABLES `energy_drink` WRITE;
/*!40000 ALTER TABLE `energy_drink` DISABLE KEYS */;
/*!40000 ALTER TABLE `energy_drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
                           `enquiry_id` int NOT NULL AUTO_INCREMENT,
                           `category` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `mobile` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `whom_to_meet` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                           PRIMARY KEY (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_category`
--

DROP TABLE IF EXISTS `enquiry_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry_category` (
                                    `enquiry_category_id` int NOT NULL AUTO_INCREMENT,
                                    `category` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    `purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    `whom` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    PRIMARY KEY (`enquiry_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_category`
--

LOCK TABLES `enquiry_category` WRITE;
/*!40000 ALTER TABLE `enquiry_category` DISABLE KEYS */;
INSERT INTO `enquiry_category` VALUES (3,'This is for ID 3 information.','Payment','Tutorial'),(4,'This is Udemy Information','School fees information','Just edited now');
/*!40000 ALTER TABLE `enquiry_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
                        `exam_id` int NOT NULL AUTO_INCREMENT,
                        `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                        PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'First Term Examination','First Term','2019-10-30');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_question` (
                                 `exam_question_id` int NOT NULL AUTO_INCREMENT,
                                 `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `teacher_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `subject_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `class_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                 PRIMARY KEY (`exam_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_category` (
                                    `expense_category_id` int NOT NULL AUTO_INCREMENT,
                                    `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    PRIMARY KEY (`expense_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
INSERT INTO `expense_category` VALUES (9,'New Sales'),(8,'New Deliveries'),(11,'Lunch');
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_category`
--

DROP TABLE IF EXISTS `hostel_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_category` (
                                   `hostel_category_id` int NOT NULL AUTO_INCREMENT,
                                   `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   PRIMARY KEY (`hostel_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_category`
--

LOCK TABLES `hostel_category` WRITE;
/*!40000 ALTER TABLE `hostel_category` DISABLE KEYS */;
INSERT INTO `hostel_category` VALUES (6,'Maillnne ','Too Big ');
/*!40000 ALTER TABLE `hostel_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_room`
--

DROP TABLE IF EXISTS `hostel_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_room` (
                               `hostel_room_id` int NOT NULL AUTO_INCREMENT,
                               `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `room_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `num_bed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `cost_bed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               PRIMARY KEY (`hostel_room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_room`
--

LOCK TABLES `hostel_room` WRITE;
/*!40000 ALTER TABLE `hostel_room` DISABLE KEYS */;
INSERT INTO `hostel_room` VALUES (2,'Room One','Single','2','5000','This is for the big guys among us.');
/*!40000 ALTER TABLE `hostel_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house` (
                         `house_id` int NOT NULL AUTO_INCREMENT,
                         `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         PRIMARY KEY (`house_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (1,'Purple House','This is for students in purple house');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
                           `invoice_id` int NOT NULL AUTO_INCREMENT,
                           `invoice_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `student_id` int NOT NULL,
                           `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `amount` int NOT NULL,
                           `discount` int NOT NULL,
                           `amount_paid` int NOT NULL,
                           `due` int NOT NULL,
                           `creation_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `payment_method` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `status` int NOT NULL,
                           `year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (2,'742593INV2019',45,'Another Part payment for eLibrary','Another Part payment for eLibrary.',7000,0,6200,800,'2019-11-12','1',2,'2019-2020'),(4,'256767',45,'Transprt','Great',20000,0,20000,0,'2023-01-31','2',1,'2019-2020'),(5,'158371',45,'School Fees','Remainig 5000',10000,0,5000,5000,'2023-02-08','2',1,'2019-2020'),(6,'931767',45,'School Fees','Thanks',30000,0,20000,10000,'2023-02-09','2',1,'2019-2020');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juice`
--

DROP TABLE IF EXISTS `juice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juice` (
                         `sales_id` int NOT NULL AUTO_INCREMENT,
                         `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                         `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                         `size` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
                         `date` date NOT NULL,
                         PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juice`
--

LOCK TABLES `juice` WRITE;
/*!40000 ALTER TABLE `juice` DISABLE KEYS */;
/*!40000 ALTER TABLE `juice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
                            `phrase_id` int NOT NULL AUTO_INCREMENT,
                            `phrase` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                            `english` longtext COLLATE utf8mb3_unicode_ci,
                            `arabic` longtext COLLATE utf8mb3_unicode_ci,
                            `french` longtext COLLATE utf8mb3_unicode_ci,
                            `korea` longtext COLLATE utf8mb3_unicode_ci,
                            PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40558 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Manage Language','Manage Language','إدارة اللغة',NULL,NULL),(2,'active language','Active Language','اللغة النشطة',NULL,NULL),(40557,'add',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_list`
--

DROP TABLE IF EXISTS `language_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_list` (
                                 `language_list_id` int NOT NULL AUTO_INCREMENT,
                                 `name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
                                 `db_field` varchar(300) DEFAULT NULL,
                                 `status` varchar(20) DEFAULT NULL,
                                 PRIMARY KEY (`language_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_list`
--

LOCK TABLES `language_list` WRITE;
/*!40000 ALTER TABLE `language_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave` (
                         `leave_id` int NOT NULL AUTO_INCREMENT,
                         `leave_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `teacher_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `start_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `end_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `reason` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                         PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave`
--

LOCK TABLES `leave` WRITE;
/*!40000 ALTER TABLE `leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maji`
--

DROP TABLE IF EXISTS `maji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maji` (
                        `del_no` int NOT NULL AUTO_INCREMENT,
                        `vehicle` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                        `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                        `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                        `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                        `date` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                        PRIMARY KEY (`del_no`)
) ENGINE=InnoDB AUTO_INCREMENT=645465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maji`
--

LOCK TABLES `maji` WRITE;
/*!40000 ALTER TABLE `maji` DISABLE KEYS */;
/*!40000 ALTER TABLE `maji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mark` (
                        `mark_id` int NOT NULL AUTO_INCREMENT,
                        `student_id` int NOT NULL,
                        `subject_id` int NOT NULL,
                        `exam_id` int NOT NULL,
                        `class_id` int NOT NULL,
                        `class_score1` int NOT NULL,
                        `class_score2` int NOT NULL,
                        `class_score3` int NOT NULL,
                        `exam_score` int NOT NULL,
                        `comment` longtext NOT NULL,
                        PRIMARY KEY (`mark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (1,45,5,1,2,10,9,8,70,'Good performance.'),(2,45,4,1,2,10,7,9,69,'Excellent performance.'),(3,45,6,1,2,0,0,0,0,''),(4,0,5,1,2,0,0,0,0,''),(5,0,4,1,2,0,0,0,0,''),(6,0,6,1,2,0,0,0,0,'');
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
                            `material_id` int NOT NULL AUTO_INCREMENT,
                            `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `class_id` int NOT NULL,
                            `subject_id` int NOT NULL,
                            `teacher_id` int NOT NULL,
                            `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            PRIMARY KEY (`material_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Study material for Nursery One',2,5,1,'This is for class only.','profile.png','docx','2018-08-19');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minute`
--

DROP TABLE IF EXISTS `minute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minute` (
                          `del_no` int NOT NULL AUTO_INCREMENT,
                          `vehicle` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                          `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                          `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                          `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                          `date` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                          PRIMARY KEY (`del_no`)
) ENGINE=InnoDB AUTO_INCREMENT=545465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minute`
--

LOCK TABLES `minute` WRITE;
/*!40000 ALTER TABLE `minute` DISABLE KEYS */;
/*!40000 ALTER TABLE `minute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticeboard` (
                               `noticeboard_id` int NOT NULL AUTO_INCREMENT,
                               `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `location` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               `timestamp` int NOT NULL,
                               `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                               PRIMARY KEY (`noticeboard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticeboard`
--

LOCK TABLES `noticeboard` WRITE;
/*!40000 ALTER TABLE `noticeboard` DISABLE KEYS */;
INSERT INTO `noticeboard` VALUES (3,'Second meeting coming up soon','Udemy Forum',1575136800,'The meeting is coming up soon. Ensure you are fully prepared.'),(4,'Parent Teacher Association Meeting.','Ontario Location',1575050400,'This is the new updated information as regards the meeting.'),(5,'kdkdk','ldldld',1674756000,'kddldl');
/*!40000 ALTER TABLE `noticeboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
                          `parent_id` int NOT NULL AUTO_INCREMENT,
                          `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `profession` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                          PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (4,'Mr. Parent','parent@parent.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','+912345667','Udemy Address','Learners','0'),(5,'Joseph Chisira','josephchisira@gmail.com','36f02547a5926c052c63e162474ee4cb5f5a8904','0721339392','2279','Capenter','');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
                           `payment_id` int NOT NULL AUTO_INCREMENT,
                           `expense_category_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `payment_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `invoice_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `student_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `method` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `amount` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `discount` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `timestamp` int NOT NULL,
                           `year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_del`
--

DROP TABLE IF EXISTS `pet_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_del` (
                           `del_no` int NOT NULL AUTO_INCREMENT,
                           `vehicles` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                           `flavour` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                           `quantity` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                           `size` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
                           `date` date NOT NULL,
                           PRIMARY KEY (`del_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_del`
--

LOCK TABLES `pet_del` WRITE;
/*!40000 ALTER TABLE `pet_del` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_del` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rgb_del`
--

DROP TABLE IF EXISTS `rgb_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rgb_del` (
                           `del_no` int NOT NULL AUTO_INCREMENT,
                           `vehicle` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
                           `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                           `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                           `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                           `date` date NOT NULL,
                           PRIMARY KEY (`del_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rgb_del`
--

LOCK TABLES `rgb_del` WRITE;
/*!40000 ALTER TABLE `rgb_del` DISABLE KEYS */;
/*!40000 ALTER TABLE `rgb_del` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
                           `section_id` int NOT NULL AUTO_INCREMENT,
                           `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `nick_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `class_id` int NOT NULL,
                           `teacher_id` int NOT NULL,
                           PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (3,'First Term','Term 1',2,1),(4,'Second Term','2nd',2,1);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
                            `settings_id` int NOT NULL AUTO_INCREMENT,
                            `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'system_name','Becyha Stores Management System'),(2,'system_title','Becyha Stores '),(3,'address','Nairobi ,Kenya'),(4,'phone','0704907555'),(6,'currency','Ksh.'),(7,'system_email','bennavisoftsolution@gmail.com'),(11,'language','english'),(12,'text_align','left-to-right'),(16,'skin_colour','green'),(21,'session','2023-2024'),(22,'footer','Powered By Bennavi Softsolution'),(116,'paypal_email','info@'),(119,'stripe_setting','[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),(122,'paypal_setting','[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_settings` (
                                `sms_setting_id` int NOT NULL AUTO_INCREMENT,
                                `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                `info` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                PRIMARY KEY (`sms_setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (12,'msg91_sender_id','sender id'),(11,'msg91_authentication_key','msg91 auth key'),(10,'clickatell_apikey','clickattel api'),(9,'clickatell_password','clickattel paasword'),(8,'clickatell_username','clickattel username'),(13,'msg91_route','route'),(14,'msg91_country_code','country code'),(15,'active_sms_gateway','msg91');
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_category`
--

DROP TABLE IF EXISTS `social_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_category` (
                                   `social_category_id` int NOT NULL AUTO_INCREMENT,
                                   `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   `colour` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   `icon` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   PRIMARY KEY (`social_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_category`
--

LOCK TABLES `social_category` WRITE;
/*!40000 ALTER TABLE `social_category` DISABLE KEYS */;
INSERT INTO `social_category` VALUES (2,'Romance','danger','fa-male','This is for romance chat room'),(3,'Event','primary','fa-book','This is for event chat room');
/*!40000 ALTER TABLE `social_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
                           `student_id` int NOT NULL AUTO_INCREMENT,
                           `name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `birthday` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `age` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `place_birth` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `sex` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `m_tongue` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `religion` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `blood_group` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `address` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `city` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `state` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `nationality` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `phone` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `email` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `ps_attended` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `ps_address` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `ps_purpose` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `class_study` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `date_of_leaving` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `am_date` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `tran_cert` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `dob_cert` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `mark_join` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `physical_h` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `password` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `father_name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `mother_name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `class_id` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `section_id` int NOT NULL,
                           `parent_id` int NOT NULL,
                           `roll` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `transport_id` int NOT NULL,
                           `dormitory_id` int NOT NULL,
                           `house_id` int NOT NULL,
                           `student_category_id` int NOT NULL,
                           `club_id` int NOT NULL,
                           `session` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `card_number` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `issue_date` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `expire_date` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `dormitory_room_number` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `more_entries` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `login_status` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (45,'Testing Student','09/30/2003','16','Lagos','female','Mother Tongue','Muslim','B+','Address','City','Lagos','Canadian','+912345667','student@student.com','Previous school attended','Previous school address','Purpose Of Leaving','Class In Which Was Studying','2011-08-10','2011-08-19','Yes','Yes','Yes','No','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','','','2',0,4,'5bf8161',0,2,1,2,1,'2019-2020','','','','','','1');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_category`
--

DROP TABLE IF EXISTS `student_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_category` (
                                    `student_category_id` int NOT NULL AUTO_INCREMENT,
                                    `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                    PRIMARY KEY (`student_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_category`
--

LOCK TABLES `student_category` WRITE;
/*!40000 ALTER TABLE `student_category` DISABLE KEYS */;
INSERT INTO `student_category` VALUES (2,'Boarding Student','This is for the boarding student.');
/*!40000 ALTER TABLE `student_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
                           `subject_id` int NOT NULL AUTO_INCREMENT,
                           `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `class_id` int NOT NULL,
                           `teacher_id` int NOT NULL,
                           PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (5,'Economics',2,1),(4,'Mathematics',2,1),(6,'English',2,1);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
                           `teacher_id` int NOT NULL AUTO_INCREMENT,
                           `name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `role` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `teacher_number` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `birthday` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `sex` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `religion` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `blood_group` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `address` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `phone` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `email` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `facebook` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `twitter` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `googleplus` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `linkedin` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `qualification` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `marital_status` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `file_name` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `password` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `department_id` int NOT NULL,
                           `designation_id` int NOT NULL,
                           `date_of_joining` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `joining_salary` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `status` int NOT NULL,
                           `date_of_leaving` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           `bank_id` int NOT NULL,
                           `login_status` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
                           PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Employee One ','1','f82e5cc','2018-08-19','male','Christianity','B+','546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.','+912345667','employee@employee.com','facebook','twitter','googleplus','linkedin','PhD','Married','profile.png','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',2,4,'2019-09-15','5000',1,'2019-09-18',3,'0'),(2,'Employee 2','1','1033945','10/7/1998','male','christian','B+','2279','0704907555','employee2@employee.com','yes','yes','yes','yes','phd','Married','teacher','1234',2,453635,'11/2/2023','399999',1,'2/3/2030',1033945,'0');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
                             `transport_id` int NOT NULL AUTO_INCREMENT,
                             `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             `transport_route_id` int NOT NULL,
                             `vehicle_id` int NOT NULL,
                             `route_fare` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                             PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_route` (
                                   `transport_route_id` int NOT NULL AUTO_INCREMENT,
                                   `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                                   PRIMARY KEY (`transport_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_route`
--

LOCK TABLES `transport_route` WRITE;
/*!40000 ALTER TABLE `transport_route` DISABLE KEYS */;
INSERT INTO `transport_route` VALUES (2,'Toronto to Usa','This is vehicle is going from Canada to Usa'),(3,'Lagos to Canada','This is going to Canada');
/*!40000 ALTER TABLE `transport_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
                           `vehicle_id` int NOT NULL AUTO_INCREMENT,
                           `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `vehicle_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `vehicle_model` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `vehicle_quantity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `year_made` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `driver_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `driver_license` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `driver_contact` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (5,'Toyota','KAT 345Z','New model','1','2000','Levis Chisira','yes','0704907555','mdkdkd','available');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water`
--

DROP TABLE IF EXISTS `water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water` (
                         `sales_id` int NOT NULL AUTO_INCREMENT,
                         `flavour` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                         `quantity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                         `size` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
                         `date` date NOT NULL,
                         PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water`
--

LOCK TABLES `water` WRITE;
/*!40000 ALTER TABLE `water` DISABLE KEYS */;
/*!40000 ALTER TABLE `water` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 16:05:37
