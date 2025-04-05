-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: moviesdb
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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Millie Bobby Brown','2004-02-19'),(2,'Chris Pratt','1979-06-21'),(3,'Robert Pattinson','1986-05-13'),(4,'Mark Ruffalo','1967-11-22'),(5,'Zoe Saldana','1978-06-19'),(6,'Jared Leto','1971-12-26'),(7,'Pedro Pascal','1975-04-02'),(8,'Bella Ramsey','2003-09-30'),(9,'Rebecca Ferguson','1983-10-19'),(10,'Annabelle Wallis','1984-09-05'),(11,'Anya Taylor-Joy','1996-04-16'),(12,'Chris Hemsworth','1983-08-11'),(13,'Michael Fassbender','1977-04-02'),(14,'Cate Blanchett','1969-05-14'),(15,'Ryan Gosling','1980-11-12'),(16,'Emily Blunt','1983-02-23'),(17,'Timothée Chalamet','1995-12-27'),(18,'Zendaya','1996-09-01'),(19,'Florence Pugh','1996-01-03'),(20,'Cillian Murphy','1976-05-25');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Anthony Russo','1970-02-03'),(2,'Joe Russo','1971-07-18'),(3,'Bong Joon Ho','1969-09-14'),(4,'James Cameron','1954-08-16'),(5,'Joachim Rønning','1972-05-30'),(6,'Craig Mazin','1971-10-08'),(7,'J.D. Payne','1980-06-06'),(8,'Patrick McKay','1979-11-03'),(9,'Lisa Joy','1977-05-23'),(10,'Jonathan Nolan','1976-06-06'),(11,'George Miller','1945-03-03'),(12,'Steven Soderbergh','1963-01-14'),(13,'David Leitch','1975-11-16'),(14,'Zack Snyder','1966-03-01'),(15,'Ridley Scott','1937-11-30'),(16,'Ari Aster','1986-07-15'),(17,'Jordan Peele','1979-02-21'),(18,'James Wan','1977-02-26'),(19,'Christopher Nolan','1970-07-30'),(20,'Denis Villeneuve','1967-10-03');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Sci-Fi'),(2,'Action'),(3,'Drama'),(4,'Horror');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actors`
--

DROP TABLE IF EXISTS `movie_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actors` (
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movie_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  CONSTRAINT `movie_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actors`
--

LOCK TABLES `movie_actors` WRITE;
/*!40000 ALTER TABLE `movie_actors` DISABLE KEYS */;
INSERT INTO `movie_actors` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(4,6);
/*!40000 ALTER TABLE `movie_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_directors` (
  `movie_id` int NOT NULL,
  `director_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`director_id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `movie_directors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  CONSTRAINT `movie_directors_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `movie_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `release_date` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `description` text,
  `imdb_rating` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Electric State','2025-03-14',140,'An orphaned teenager traverses the American West with a sweet but mysterious robot and an eccentric drifter in search of her younger brother.',NULL),(2,'Mickey 17','2025-04-18',139,'Mickey 17, known as an \"expendable,\" goes on a dangerous journey to colonize an ice planet.',NULL),(3,'Avatar: Fire and Ash','2025-12-19',NULL,'Sequel of Avatar: The Way of Water (2022). The plot is unknown.',NULL),(4,'Tron: Ares','2025-10-10',NULL,'A highly sophisticated Program, Ares, is sent from the digital world into the real world on a dangerous mission.',NULL),(5,'The Electric State','2025-03-14',140,'An orphaned teenager traverses the American West with a sweet but mysterious robot and an eccentric drifter in search of her younger brother.',NULL),(6,'Mickey 17','2025-04-18',139,'Mickey 17, known as an \"expendable,\" goes on a dangerous journey to colonize an ice planet.',NULL),(7,'Avatar: Fire and Ash','2025-12-19',NULL,'Sequel of Avatar: The Way of Water (2022). The plot is unknown.',NULL),(8,'Tron: Ares','2025-10-10',NULL,'A highly sophisticated Program, Ares, is sent from the digital world into the real world on a dangerous mission.',NULL),(9,'The Electric State','2025-03-14',140,'An orphaned teenager traverses the American West with a sweet but mysterious robot and an eccentric drifter in search of her younger brother.',NULL),(10,'Mickey 17','2025-04-18',139,'Mickey 17, known as an \"expendable,\" goes on a dangerous journey to colonize an ice planet.',NULL),(11,'Avatar: Fire and Ash','2025-12-19',NULL,'Sequel of Avatar: The Way of Water (2022). The plot is unknown.',NULL),(12,'Tron: Ares','2025-10-10',NULL,'A highly sophisticated Program, Ares, is sent from the digital world into the real world on a dangerous mission.',NULL),(13,'The Electric State','2025-03-14',140,'An orphaned teenager traverses the American West with a sweet but mysterious robot and an eccentric drifter in search of her younger brother.',NULL),(14,'Mickey 17','2025-04-18',139,'Mickey 17, known as an \"expendable,\" goes on a dangerous journey to colonize an ice planet.',NULL),(15,'Avatar: Fire and Ash','2025-12-19',NULL,'Sequel of Avatar: The Way of Water (2022). The plot is unknown.',NULL),(16,'Tron: Ares','2025-10-10',NULL,'A highly sophisticated Program, Ares, is sent from the digital world into the real world on a dangerous mission.',NULL),(17,'Furiosa','2024-05-24',148,'The origin story of renegade warrior Furiosa before her encounter and team-up with Mad Max.',8.5),(18,'Black Bag','2025-03-15',132,'A spy thriller following a burned operative on a mission to uncover a global conspiracy.',7.9),(19,'The Fall Guy','2024-10-12',115,'A stuntman drawn back into his former life when a star actor goes missing.',7.3),(20,'Rebel Ridge','2024-06-22',110,'An ex-marine uncovers corruption and brutality in his hometown.',7.6),(21,'Gladiator II','2025-11-08',155,'The sequel to the epic historical drama, following the next generation in Rome.',8.1),(22,'The Monkey','2025-04-04',98,'A chilling tale based on Stephen King’s short story about a cymbal-banging monkey toy.',7.4),(23,'Nosferatu','2024-12-25',120,'A gothic horror tale reimagining the classic vampire story.',8.0),(24,'Smile 2','2024-10-31',105,'The sequel to the psychological horror hit, delving deeper into the sinister curse.',6.9),(25,'Oppenheimer','2023-07-21',180,'A biographical drama about J. Robert Oppenheimer and the creation of the atomic bomb.',8.8),(26,'Dune: Part Two','2023-11-17',165,'The continuation of the epic saga of Paul Atreides on the desert planet Arrakis.',8.6);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_actors`
--

DROP TABLE IF EXISTS `movies_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_actors` (
  `series_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`series_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`),
  CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_actors`
--

LOCK TABLES `movies_actors` WRITE;
/*!40000 ALTER TABLE `movies_actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int DEFAULT NULL,
  `reviewer_name` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review_text` text,
  `review_date` date DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `series_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `release_date` date DEFAULT NULL,
  `seasons` int DEFAULT NULL,
  `description` text,
  `imdb_rating` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'The Last of Us','2023-01-15',2,'After a global pandemic destroys civilization, a hardened survivor takes charge of a 14-year-old girl who may be humanity\'s last hope.',9.2),(2,'Fallout','2024-05-23',1,'A post-apocalyptic series based on the Fallout video game franchise.',NULL),(3,'Silo','2023-05-05',1,'In a ruined and toxic future, thousands live in a giant silo deep underground.',8.1),(4,'Severance','2022-02-18',2,'Mark leads a team of office workers whose memories have been surgically divided between their work and personal lives.',8.7),(5,'Black Mirror','2023-06-15',6,'An anthology series exploring a twisted, high-tech multiverse where humanity\'s greatest innovations and darkest instincts collide.',8.8),(6,'Dark Matter','2024-09-10',1,'A physicist is abducted into an alternate version of his life.',NULL);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_actors`
--

DROP TABLE IF EXISTS `series_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_actors` (
  `series_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`series_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `series_actors_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`),
  CONSTRAINT `series_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_actors`
--

LOCK TABLES `series_actors` WRITE;
/*!40000 ALTER TABLE `series_actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_actors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 16:09:15
