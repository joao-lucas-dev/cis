-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cis
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `anamnese`
--

DROP TABLE IF EXISTS `anamnese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anamnese` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_one` varchar(255) DEFAULT NULL,
  `question_two` varchar(255) DEFAULT NULL,
  `question_three` varchar(255) DEFAULT NULL,
  `question_four` varchar(255) DEFAULT NULL,
  `question_five` varchar(255) DEFAULT NULL,
  `question_six` varchar(255) DEFAULT NULL,
  `question_seven` varchar(255) DEFAULT NULL,
  `question_eight` varchar(255) DEFAULT NULL,
  `question_nine` varchar(255) DEFAULT NULL,
  `question_ten` varchar(255) DEFAULT NULL,
  `question_eleven` varchar(255) DEFAULT NULL,
  `question_twelve` varchar(255) DEFAULT NULL,
  `question_thirteen` varchar(255) DEFAULT NULL,
  `question_fourteen` varchar(255) DEFAULT NULL,
  `question_fifteen` varchar(255) DEFAULT NULL,
  `question_sixteen` varchar(255) DEFAULT NULL,
  `question_seventeen` varchar(255) DEFAULT NULL,
  `question_eighteen` varchar(255) DEFAULT NULL,
  `question_nineteen` varchar(255) DEFAULT NULL,
  `question_twenty` varchar(255) DEFAULT NULL,
  `question_twenty_one` varchar(255) DEFAULT NULL,
  `question_twenty_two` varchar(255) DEFAULT NULL,
  `question_twenty_three` varchar(255) DEFAULT NULL,
  `question_twenty_four` varchar(255) DEFAULT NULL,
  `question_twenty_five` varchar(255) DEFAULT NULL,
  `question_twenty_six` varchar(255) DEFAULT NULL,
  `question_twenty_seven` varchar(255) DEFAULT NULL,
  `question_twenty_eight` varchar(255) DEFAULT NULL,
  `question_twenty_nine` varchar(255) DEFAULT NULL,
  `question_thirty` varchar(255) DEFAULT NULL,
  `question_thirty_one` varchar(255) DEFAULT NULL,
  `question_thirty_two` varchar(255) DEFAULT NULL,
  `question_thirty_three` varchar(255) DEFAULT NULL,
  `question_thirty_four` varchar(255) DEFAULT NULL,
  `question_thirty_five` varchar(255) DEFAULT NULL,
  `question_thirty_six` varchar(255) DEFAULT NULL,
  `question_thirty_seven` varchar(255) DEFAULT NULL,
  `question_thirty_eight` varchar(255) DEFAULT NULL,
  `question_thirty_nine` varchar(255) DEFAULT NULL,
  `question_forty` varchar(255) DEFAULT NULL,
  `question_forty_one` varchar(255) DEFAULT NULL,
  `question_forty_two` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `degree_urgencys`
--

DROP TABLE IF EXISTS `degree_urgencys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_urgencys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enrolment` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `specialty_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `enrolment` (`enrolment`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_specialty_id` (`specialty_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_specialty_id` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medical_insurances`
--

DROP TABLE IF EXISTS `medical_insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rg` int DEFAULT NULL,
  `cpf` int DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `emergency_phone` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact_emergency` varchar(30) DEFAULT NULL,
  `medical_insurance_id` int DEFAULT NULL,
  `anamnese_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medical_insurance_id` (`medical_insurance_id`),
  KEY `fk_anamnese_id` (`anamnese_id`),
  CONSTRAINT `fk_anamnese_id` FOREIGN KEY (`anamnese_id`) REFERENCES `anamnese` (`id`),
  CONSTRAINT `fk_medical_insurance_id` FOREIGN KEY (`medical_insurance_id`) REFERENCES `medical_insurances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `screenings`
--

DROP TABLE IF EXISTS `screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `degree_urgency_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `date_service` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_degree_urgency_id` (`degree_urgency_id`),
  KEY `fk_employee_id` (`employee_id`),
  KEY `fk_patient_id` (`patient_id`),
  CONSTRAINT `fk_degree_urgency_id` FOREIGN KEY (`degree_urgency_id`) REFERENCES `degree_urgencys` (`id`),
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 22:13:03
