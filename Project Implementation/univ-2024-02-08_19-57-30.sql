-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: univ
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `assigned`
--

DROP TABLE IF EXISTS `assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `year` int NOT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`year`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `assigned_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `assigned_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned`
--

LOCK TABLES `assigned` WRITE;
/*!40000 ALTER TABLE `assigned` DISABLE KEYS */;
INSERT INTO `assigned` VALUES (1,101,2023,'First Semester',4.00),(1,102,2023,'First Semester',3.75),(1,103,2023,'Second Semester',3.40),(1,104,2023,'Second Semester',3.75),(1,105,2023,'Second Semester',3.60),(1,106,2024,'First Semester',NULL),(1,107,2024,'First Semester',NULL),(1,108,2024,'First Semester',NULL),(1,109,2024,'Second Semester',NULL),(1,110,2024,'Second Semester',NULL),(1,111,2024,'Second Semester',NULL),(1,201,2023,'First Semester',3.40),(1,202,2023,'First Semester',3.75),(2,101,2024,'First Semester',NULL),(2,102,2024,'First Semester',NULL),(2,103,2024,'Second Semester',NULL),(2,104,2024,'Second Semester',NULL),(2,105,2024,'Second Semester',NULL),(2,201,2024,'First Semester',NULL),(3,101,2023,'First Semester',3.75),(3,102,2023,'First Semester',4.00),(3,103,2023,'Second Semester',3.75),(3,104,2023,'Second Semester',4.00),(3,105,2023,'Second Semester',3.10),(3,106,2024,'First Semester',NULL),(3,107,2024,'First Semester',NULL),(3,108,2024,'First Semester',NULL),(3,109,2024,'Second Semester',NULL),(3,110,2024,'Second Semester',NULL),(3,111,2024,'Second Semester',NULL),(3,201,2023,'First Semester',3.40),(4,101,2024,'First Semester',NULL),(4,102,2024,'First Semester',NULL),(4,103,2024,'Second Semester',NULL),(4,104,2024,'Second Semester',NULL),(4,105,2024,'Second Semester',NULL),(4,201,2024,'First Semester',NULL),(5,101,2023,'First Semester',3.10),(5,102,2023,'First Semester',3.75),(5,103,2023,'Second Semester',3.10),(5,104,2023,'Second Semester',3.40),(5,105,2023,'Second Semester',4.00),(5,106,2024,'First Semester',NULL),(5,107,2024,'First Semester',NULL),(5,108,2024,'First Semester',NULL),(5,109,2024,'Second Semester',NULL),(5,110,2024,'Second Semester',NULL),(5,111,2024,'Second Semester',NULL),(5,201,2023,'First Semester',3.75),(6,101,2024,'First Semester',NULL),(6,102,2024,'First Semester',NULL),(6,103,2024,'Second Semester',NULL),(6,104,2024,'Second Semester',NULL),(6,105,2024,'Second Semester',NULL),(6,201,2024,'First Semester',NULL),(7,101,2023,'First Semester',3.10),(7,102,2023,'First Semester',3.75),(7,103,2023,'First Semester',4.00),(7,104,2023,'Second Semester',3.10),(7,105,2023,'Second Semester',3.75),(7,106,2024,'First Semester',NULL),(7,107,2024,'First Semester',NULL),(7,108,2024,'First Semester',NULL),(7,109,2024,'Second Semester',NULL),(7,110,2024,'Second Semester',NULL),(7,111,2024,'Second Semester',NULL),(7,201,2023,'First Semester',3.10),(8,101,2024,'First Semester',NULL),(8,102,2024,'First Semester',NULL),(8,103,2024,'Second Semester',NULL),(8,104,2024,'Second Semester',NULL),(8,105,2024,'Second Semester',NULL),(8,201,2024,'First Semester',NULL),(9,101,2023,'First Semester',4.00),(9,102,2023,'First Semester',4.00),(9,103,2023,'Second Semester',4.00),(9,104,2023,'Second Semester',4.00),(9,105,2023,'Second Semester',4.00),(9,106,2024,'First Semester',NULL),(9,107,2024,'First Semester',NULL),(9,108,2024,'First Semester',NULL),(9,109,2024,'Second Semester',NULL),(9,110,2024,'Second Semester',NULL),(9,111,2024,'Second Semester',NULL),(9,201,2023,'First Semester',4.00),(10,101,2024,'First Semester',NULL),(10,102,2024,'First Semester',NULL),(10,103,2024,'Second Semester',NULL),(10,104,2024,'Second Semester',NULL),(10,105,2024,'Second Semester',NULL),(10,201,2024,'First Semester',NULL),(11,101,2023,'First Semester',3.75),(11,201,2023,'First Semester',3.40),(11,202,2023,'First Semester',3.10),(11,203,2023,'Second Semester',3.10),(11,204,2023,'Second Semester',4.00),(11,205,2023,'Second Semester',3.60),(11,206,2024,'First Semester',NULL),(11,207,2024,'First Semester',NULL),(11,208,2024,'First Semester',NULL),(11,209,2024,'Second Semester',NULL),(11,210,2024,'Second Semester',NULL),(11,211,2024,'Second Semester',NULL),(12,101,2024,'First Semester',NULL),(12,102,2024,'First Semester',NULL),(12,103,2024,'Second Semester',NULL),(12,104,2024,'Second Semester',NULL),(12,105,2024,'Second Semester',NULL),(12,201,2024,'First Semester',NULL),(13,101,2023,'First Semester',3.75),(13,201,2023,'First Semester',4.00),(13,202,2023,'First Semester',3.10),(13,203,2023,'Second Semester',4.00),(13,204,2023,'Second Semester',3.75),(13,205,2023,'Second Semester',4.00),(13,206,2024,'First Semester',NULL),(13,207,2024,'First Semester',NULL),(13,208,2024,'First Semester',NULL),(13,209,2024,'Second Semester',NULL),(13,210,2024,'Second Semester',NULL),(13,211,2024,'Second Semester',NULL),(14,101,2024,'First Semester',NULL),(14,102,2024,'First Semester',NULL),(14,103,2024,'Second Semester',NULL),(14,104,2024,'Second Semester',NULL),(14,105,2024,'Second Semester',NULL),(14,201,2024,'First Semester',NULL),(15,101,2023,'First Semester',3.75),(15,201,2023,'First Semester',3.10),(15,202,2023,'First Semester',4.00),(15,203,2023,'Second Semester',4.00),(15,204,2023,'Second Semester',4.00),(15,205,2023,'Second Semester',3.40),(15,206,2024,'First Semester',NULL),(15,207,2024,'First Semester',NULL),(15,208,2024,'First Semester',NULL),(15,209,2024,'Second Semester',NULL),(15,210,2024,'Second Semester',NULL),(15,211,2024,'Second Semester',NULL),(16,101,2024,'First Semester',NULL),(16,102,2024,'First Semester',NULL),(16,103,2024,'Second Semester',NULL),(16,104,2024,'Second Semester',NULL),(16,105,2024,'Second Semester',NULL),(16,201,2024,'First Semester',NULL),(17,101,2023,'First Semester',3.10),(17,201,2023,'First Semester',4.00),(17,202,2023,'First Semester',4.00),(17,203,2023,'Second Semester',3.10),(17,204,2023,'Second Semester',4.00),(17,205,2023,'Second Semester',3.75),(17,206,2024,'First Semester',NULL),(17,207,2024,'First Semester',NULL),(17,208,2024,'First Semester',NULL),(17,209,2024,'Second Semester',NULL),(17,210,2024,'Second Semester',NULL),(17,211,2024,'Second Semester',NULL),(18,101,2024,'First Semester',NULL),(18,102,2024,'First Semester',NULL),(18,103,2024,'Second Semester',NULL),(18,104,2024,'Second Semester',NULL),(18,105,2024,'Second Semester',NULL),(18,201,2024,'First Semester',NULL),(19,101,2023,'First Semester',3.10),(19,201,2023,'First Semester',4.00),(19,202,2023,'First Semester',3.75),(19,203,2023,'Second Semester',3.10),(19,204,2023,'Second Semester',3.75),(19,205,2023,'Second Semester',3.10),(19,206,2024,'First Semester',NULL),(19,207,2024,'First Semester',NULL),(19,208,2024,'First Semester',NULL),(19,209,2024,'Second Semester',NULL),(19,210,2024,'Second Semester',NULL),(19,211,2024,'Second Semester',NULL),(20,101,2024,'First Semester',NULL),(20,102,2024,'First Semester',NULL),(20,103,2024,'Second Semester',NULL),(20,104,2024,'Second Semester',NULL),(20,105,2024,'Second Semester',NULL),(20,201,2024,'First Semester',NULL),(21,101,2023,'First Semester',3.75),(21,301,2023,'First Semester',3.10),(21,302,2023,'First Semester',3.10),(21,303,2023,'Second Semester',3.10),(21,304,2023,'Second Semester',3.75),(21,305,2023,'Second Semester',3.10),(21,306,2024,'First Semester',NULL),(21,307,2024,'First Semester',NULL),(21,308,2024,'First Semester',NULL),(21,309,2024,'Second Semester',NULL),(21,310,2024,'Second Semester',NULL),(21,311,2024,'Second Semester',NULL),(22,101,2024,'First Semester',NULL),(22,102,2024,'First Semester',NULL),(22,103,2024,'Second Semester',NULL),(22,104,2024,'Second Semester',NULL),(22,105,2024,'Second Semester',NULL),(22,201,2024,'First Semester',NULL),(23,101,2023,'First Semester',3.40),(23,301,2023,'First Semester',3.10),(23,302,2023,'First Semester',4.00),(23,303,2023,'Second Semester',4.00),(23,304,2023,'Second Semester',4.00),(23,305,2023,'Second Semester',4.00),(23,306,2024,'First Semester',NULL),(23,307,2024,'First Semester',NULL),(23,308,2024,'First Semester',NULL),(23,309,2024,'Second Semester',NULL),(23,310,2024,'Second Semester',NULL),(23,311,2024,'Second Semester',NULL),(24,101,2024,'First Semester',NULL),(24,102,2024,'First Semester',NULL),(24,103,2024,'Second Semester',NULL),(24,104,2024,'Second Semester',NULL),(24,105,2024,'Second Semester',NULL),(24,201,2024,'First Semester',NULL),(25,101,2023,'First Semester',4.00),(25,301,2023,'First Semester',3.75),(25,302,2023,'First Semester',3.75),(25,303,2023,'Second Semester',3.10),(25,304,2023,'Second Semester',3.10),(25,305,2023,'Second Semester',4.00),(25,306,2024,'First Semester',NULL),(25,307,2024,'First Semester',NULL),(25,308,2024,'First Semester',NULL),(25,309,2024,'Second Semester',NULL),(25,310,2024,'Second Semester',NULL),(25,311,2024,'Second Semester',NULL),(26,101,2024,'First Semester',NULL),(26,102,2024,'First Semester',NULL),(26,103,2024,'Second Semester',NULL),(26,104,2024,'Second Semester',NULL),(26,105,2024,'Second Semester',NULL),(26,201,2024,'First Semester',NULL),(27,101,2023,'First Semester',3.75),(27,301,2023,'First Semester',4.00),(27,302,2023,'First Semester',3.10),(27,303,2023,'Second Semester',3.10),(27,304,2023,'Second Semester',3.10),(27,305,2023,'Second Semester',3.75),(27,306,2024,'First Semester',NULL),(27,307,2024,'First Semester',NULL),(27,308,2024,'First Semester',NULL),(27,309,2024,'Second Semester',NULL),(27,310,2024,'Second Semester',NULL),(27,311,2024,'Second Semester',NULL),(28,101,2024,'First Semester',NULL),(28,102,2024,'First Semester',NULL),(28,103,2024,'Second Semester',NULL),(28,104,2024,'Second Semester',NULL),(28,105,2024,'Second Semester',NULL),(28,201,2024,'First Semester',NULL),(29,101,2023,'First Semester',3.40),(29,301,2023,'First Semester',3.10),(29,302,2023,'First Semester',3.75),(29,303,2023,'Second Semester',3.75),(29,304,2023,'Second Semester',3.10),(29,305,2023,'Second Semester',3.75),(29,306,2024,'First Semester',NULL),(29,307,2024,'First Semester',NULL),(29,308,2024,'First Semester',NULL),(29,309,2024,'Second Semester',NULL),(29,310,2024,'Second Semester',NULL),(29,311,2024,'Second Semester',NULL),(30,101,2024,'First Semester',NULL),(30,102,2024,'First Semester',NULL),(30,103,2024,'Second Semester',NULL),(30,104,2024,'Second Semester',NULL),(30,105,2024,'Second Semester',NULL),(30,201,2024,'First Semester',NULL);
/*!40000 ALTER TABLE `assigned` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `T_CUM_GPA_INSERT` AFTER INSERT ON `assigned` FOR EACH ROW BEGIN
    DECLARE v_cum_gpa DECIMAL(3,2);

    IF NEW.gpa IS NOT NULL THEN
        SELECT SUM(gpa * credits) / SUM(credits) INTO v_cum_gpa
        FROM assigned a
        INNER JOIN course c ON a.course_id = c.course_id
        WHERE student_id = NEW.student_id AND gpa IS NOT NULL;

        UPDATE student 
        SET cum_gpa = v_cum_gpa
        WHERE student_id = NEW.student_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `T_CUM_GPA_UPDATE` AFTER UPDATE ON `assigned` FOR EACH ROW BEGIN
    DECLARE v_cum_gpa DECIMAL(3,2);

    IF NEW.gpa IS NOT NULL THEN
        SELECT SUM(gpa * credits) / SUM(credits) INTO v_cum_gpa
        FROM assigned a
        INNER JOIN course c ON a.course_id = c.course_id
        WHERE student_id = NEW.student_id AND gpa IS NOT NULL;

        UPDATE student 
        SET cum_gpa = v_cum_gpa
        WHERE student_id = NEW.student_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `T_CUM_GPA_DELETE` AFTER DELETE ON `assigned` FOR EACH ROW BEGIN
    DECLARE v_cum_gpa DECIMAL(3,2);

    
        SELECT SUM(gpa * credits) / SUM(credits) INTO v_cum_gpa
        FROM assigned a
        INNER JOIN course c ON a.course_id = c.course_id
        WHERE student_id = OLD.student_id AND gpa IS NOT NULL;

        UPDATE student 
        SET cum_gpa = v_cum_gpa
        WHERE student_id = OLD.student_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  `description` text,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (101,'Introduction to Programming',3,'Basic programming concepts and techniques',1),(102,'Data Structures and Algorithms',4,'Fundamental data structures and algorithms',1),(103,'Database Management Systems',3,'Introduction to database concepts and management',1),(104,'Software Engineering',4,'Principles of software design and development',1),(105,'Operating Systems',4,'Fundamentals of operating system concepts',1),(106,'Web Development',3,'Basic web development technologies and techniques',1),(107,'Artificial Intelligence',4,'Introduction to AI concepts and algorithms',1),(108,'Computer Networks',4,'Fundamentals of computer networking',1),(109,'Machine Learning',3,'Introduction to machine learning algorithms',1),(110,'Cybersecurity Fundamentals',3,'Introduction to cybersecurity principles',1),(111,'Mobile App Development',3,'Developing applications for mobile platforms',1),(112,'Computer Graphics',4,'Principles of computer graphics and visualization',1),(113,'Data Mining',3,'Techniques for discovering patterns in large datasets',1),(114,'Human-Computer Interaction',4,'Design principles for human-computer interaction',1),(115,'Software Testing and Quality Assurance',3,'Testing methodologies for software quality',1),(116,'Computer Vision',4,'Processing and analyzing visual information using computers',1),(117,'Distributed Systems',4,'Design and implementation of distributed systems',1),(118,'Natural Language Processing',3,'Processing and understanding natural language text',1),(119,'Cloud Computing',4,'Principles and technologies of cloud computing',1),(120,'Advanced Algorithms',4,'Advanced algorithms and data structures',1),(201,'Circuit Design Fundamentals',4,'Introduction to electrical circuit design',2),(202,'Digital Signal Processing',3,'Signal processing techniques using digital systems',2),(203,'Power Systems Analysis',4,'Analysis of electrical power systems',2),(204,'Control Systems Engineering',4,'Principles of control systems and automation',2),(205,'Electromagnetic Fields and Waves',3,'Study of electromagnetic fields and wave propagation',2),(206,'Microelectronics',3,'Introduction to microelectronic circuits and devices',2),(207,'Communication Systems',4,'Principles of communication systems engineering',2),(208,'VLSI Design',3,'Design of Very Large Scale Integration circuits',2),(209,'Renewable Energy Systems',4,'Introduction to renewable energy technologies',2),(210,'Electric Drives and Motors',4,'Design and control of electric drives',2),(211,'Embedded Systems',3,'Design and programming of embedded systems',2),(212,'Digital Control Systems',4,'Digital control techniques in engineering systems',2),(213,'Advanced Power Electronics',3,'Advanced concepts in power electronics',2),(214,'RF Circuit Design',4,'Design of radio frequency circuits and systems',2),(215,'Optoelectronics',3,'Study of optics and electronics in devices',2),(216,'Integrated Circuits Design',4,'Design and fabrication of integrated circuits',2),(217,'Smart Grid Technologies',4,'Technologies for modernizing power grids',2),(218,'Electrical Machines and Drives',3,'Analysis and design of electrical machines',2),(219,'Antenna Theory and Design',4,'Principles of antenna theory and design',2),(220,'Digital Image Processing',4,'Processing of digital images and signals',2),(301,'Linear Algebra',3,'Fundamental concepts in linear algebra',3),(302,'Calculus I',4,'Introduction to differential and integral calculus',3),(303,'Abstract Algebra',3,'Introduction to abstract algebraic structures',3),(304,'Real Analysis',4,'Study of real numbers and real-valued functions',3),(305,'Number Theory',3,'Study of integers and number properties',3),(306,'Topology',4,'Introduction to topological spaces and structures',3),(307,'Probability and Statistics',4,'Study of probability and statistical methods',3),(308,'Differential Equations',3,'Solving ordinary and partial differential equations',3),(309,'Mathematical Logic',3,'Study of formal mathematical reasoning',3),(310,'Graph Theory',4,'Study of mathematical structures of graphs',3),(311,'Complex Analysis',3,'Study of complex numbers and functions',3),(312,'Combinatorics',4,'Study of counting and arrangements',3),(313,'Functional Analysis',4,'Study of infinite-dimensional vector spaces',3),(314,'Numerical Analysis',3,'Numerical methods for solving mathematical problems',3),(315,'Set Theory',4,'Study of sets and their properties',3),(316,'Algebraic Geometry',4,'Study of algebraic varieties and geometric objects',3),(317,'Mathematical Modeling',3,'Application of mathematics to real-world problems',3),(318,'Game Theory',4,'Study of strategic interactions among rational decision-makers',3),(319,'Complex Geometry',3,'Study of complex geometric structures',3),(320,'Partial Differential Equations',4,'Study of partial differential equations',3),(321,'Partial Differential Equations2',3,'Study of partial differential equations2',3),(322,'Complex Geometry2',4,'Study of complex geometric structures',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science'),(2,'Electrical Engineering'),(3,'Mathematics'),(4,'Electrical Engineering'),(5,'Civil Engineering'),(6,'Arabic Literature');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `cum_gpa` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Ahmed','Mohamed','123 ghamra St','Cairo','Cairo','M','ahmed.mohamed@email.com','2005-05-15',1,3.66),(2,'Fatima','Ali','456 Sphinx St','Giza','Giza','F','fatima.ali@email.com','2006-08-22',1,NULL),(3,'Omar','Mahmoud','789 Pyramid St','Luxor','Luxor','M','omar.mahmoud@email.com','2005-03-10',1,3.66),(4,'Aya','Abdelrahman','101 Pharaoh St','Aswan','Aswan','F','aya.abdelrahman@email.com','2006-11-05',1,NULL),(5,'Mohamed','Khalil','202 Nile St','Alexandria','Alexandria','M','mohamed.khalil@email.com','2005-07-18',1,3.55),(6,'Nour','Hassan','303 Sphinx St','Luxor','Luxor','F','nour.hassan@email.com','2006-02-28',1,NULL),(7,'Karim','Ismail','404 Pyramid St','Aswan','Aswan','M','karim.ismail@email.com','2005-09-14',1,3.46),(8,'Sara','Fathi','505 Pharaoh St','Alexandria','Alexandria','F','sara.fathi@email.com','2006-04-07',1,NULL),(9,'Amr','Saeed','606 Nile St','Cairo','Cairo','M','amr.saeed@email.com','2005-12-20',1,4.00),(10,'Yasmine','Abdallah','707 Sphinx St','Giza','Giza','F','yasmine.abdallah@email.com','2006-06-25',1,NULL),(11,'Ahmed','Khaled','123 Nile St','Cairo','Cairo','M','ahmed.khaled@email.com','2005-01-12',2,3.49),(12,'Nada','Mostafa','456 Sphinx St','Giza','Giza','F','nada.mostafa@email.com','2006-10-28',2,NULL),(13,'Khaled','Samir','789 Pyramid St','Luxor','Luxor','M','khaled.samir@email.com','2005-07-03',2,3.79),(14,'Amina','Abdulaziz','101 Pharaoh St','Aswan','Aswan','F','amina.abdulaziz@email.com','2006-04-16',2,NULL),(15,'Mohamed','Tarek','202 Nile St','Alexandria','Alexandria','M','mohamed.tarek@email.com','2005-11-29',2,3.71),(16,'Reem','Hassan','303 Sphinx St','Luxor','Luxor','F','reem.hassan@email.com','2006-06-02',2,NULL),(17,'Omar','Mahmoud','404 Pyramid St','Aswan','Aswan','M','omar.mahmoud@email.com','2005-02-14',2,3.66),(18,'Sara','Fathi','505 Pharaoh St','Alexandria','Alexandria','F','sara.fathi@email.com','2006-09-27',2,NULL),(19,'Hassan','Aly','606 Nile St','Cairo','Cairo','M','hassan.aly@email.com','2005-05-10',2,3.49),(20,'Yasmine','Abdallah','707 Sphinx St','Giza','Giza','F','yasmine.abdallah@email.com','2006-12-23',2,NULL),(21,'Omar','Tawfik','123 Nile St','Cairo','Cairo','M','omar.tawfik@email.com','2005-09-05',3,3.33),(22,'Nour','Ezzat','456 Sphinx St','Giza','Giza','F','nour.ezzat@email.com','2006-04-18',3,NULL),(23,'Ahmed','Hassan','789 Pyramid St','Luxor','Luxor','M','ahmed.hassan@email.com','2005-11-01',3,3.78),(24,'Fatima','Mansour','101 Pharaoh St','Aswan','Aswan','F','fatima.mansour@email.com','2006-06-14',3,NULL),(25,'Khaled','Ali','202 Nile St','Alexandria','Alexandria','M','khaled.ali@email.com','2005-01-27',3,3.60),(26,'Nada','Youssef','303 Sphinx St','Luxor','Luxor','F','nada.youssef@email.com','2006-09-09',3,NULL),(27,'Amr','Mohamed','404 Pyramid St','Aswan','Aswan','M','amr.mohamed@email.com','2005-04-22',3,3.43),(28,'Sara','Ahmed','505 Pharaoh St','Alexandria','Alexandria','F','sara.ahmed@email.com','2006-12-05',3,NULL),(29,'Mahmoud','Yassin','606 Nile St','Cairo','Cairo','M','mahmoud.yassin@email.com','2005-07-18',3,3.47),(30,'Rania','Samir','707 Sphinx St','Giza','Giza','F','rania.samir@email.com','2006-02-01',3,NULL),(31,'Omar2','Ayma','789 Abaza St','Marioutia','Giza','F','omar.ayman2@email.com','1996-11-10',1,NULL),(33,'Omar','Khalaf','789 haram St','Marioutia','Giza','M','omar.khalaf@email.com','1996-07-10',1,NULL),(36,'Yasmine2','Abdallah','707 Sphinx St','Giza','Giza','F','yasmine.abdallah@email.com','2006-12-23',2,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_phone`
--

DROP TABLE IF EXISTS `student_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_phone` (
  `student_id` int NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`student_id`,`phone`),
  CONSTRAINT `student_phone_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_phone`
--

LOCK TABLES `student_phone` WRITE;
/*!40000 ALTER TABLE `student_phone` DISABLE KEYS */;
INSERT INTO `student_phone` VALUES (1,'01001234567'),(2,'01111234567'),(3,'01114195580'),(3,'0506915860'),(4,'01031234567'),(5,'01141234567'),(6,'01251234567'),(7,'01061234567'),(8,'01171234567'),(9,'01281234567'),(10,'01091234567'),(11,'01101234567'),(12,'01211234567'),(13,'01021234567'),(14,'01131234567'),(15,'01241234567'),(16,'01041234567'),(17,'01151234567'),(18,'01261234567'),(19,'01071234567'),(20,'01181234567'),(21,'01291234567'),(22,'01012234567'),(23,'01122234567'),(24,'01232234567'),(25,'01042234567'),(26,'01152234567'),(27,'01262234567'),(28,'01072234567'),(29,'01182234567'),(30,'01292234567'),(31,'01003234567'),(33,'01073234567'),(36,'01183234567');
/*!40000 ALTER TABLE `student_phone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-08 19:57:30
