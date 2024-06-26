-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: firelands_world
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `Id` int unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '2',
  `Requirement` int unsigned NOT NULL DEFAULT '0',
  `Greeting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` smallint DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (2,2,0,'Greetings!  Can I teach you how to cut precious gems and craft jewelry?',15595),(3,0,0,'Hello, priest!  Ready for some training?',15595),(6,2,0,'Would you like to learn the intricacies of inscription?',15595),(10,2,0,'I can teach you how to use a fishing pole to catch fish.',15595),(12,0,0,'Welcome!',15595),(15,0,0,'Hello, hunter!  Ready for some training?',15595),(16,0,0,'Hello, warrior!  Ready for some training?',15595),(17,0,0,'Hello, rogue!  Ready for some training?',15595),(27,2,0,'Care to learn how to turn the ore that you find into weapons and metal armor?',15595),(29,2,0,'Greetings!  Can I teach you how to cut precious gems and craft jewelry?',15211),(31,2,0,'I can teach you the finer points of fishing.',15595),(32,0,0,'Hello, warlock!  Ready for some training?',15595),(33,0,0,'Hello, rogue!  Ready for some training?',15595),(34,2,0,'Care to learn how to turn the ore that you find into weapons and metal armor?',15595),(37,2,0,'Care to learn how to turn the ore that you find into weapons and metal armor?',15050),(39,0,0,'Hello, druid!  Ready for some training?',15595),(40,0,0,'Hello, hunter!  Ready for some training?',15595),(42,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15211),(44,0,0,'Hello, mage!  Ready for some training?',15595),(46,0,0,'Hello!  Can I teach you something?',15595),(48,2,0,'Greetings!  Can I teach you how to cut precious gems and craft jewelry?',14545),(49,2,0,'You have not lived until you have dug deep into the earth.',15595),(50,0,0,'Hello, druid!  Ready for some training?',15595),(51,2,0,'Enchanting is the art of improving existing items through magic. ',15211),(55,0,0,'Well met, Death Knight.  Ready for some training?',14545),(56,2,0,'Greetings!  Can I teach you how to turn beast hides into armor?',15595),(58,2,0,'Care to learn how to turn the ore that you find into weapons and metal armor?',15595),(59,2,0,'With alchemy you can turn found herbs into healing and other types of potions.',15595),(62,2,0,'Enchanting is the art of improving existing items through magic. ',15595),(63,2,0,'Would you like to learn the intricacies of inscription?',14545),(67,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15050),(75,2,0,'Can I teach you how to turn the meat you find on beasts into a feast?',15595),(77,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15595),(80,2,0,'Care to learn how to turn the ore that you find into weapons and metal armor?',15595),(82,2,0,'You have not lived until you have dug deep into the earth.',15595),(83,2,0,'It requires a steady hand to remove the leather from a slain beast.',15595),(89,2,0,'Searching for herbs requires both knowledge and instinct.',14545),(90,2,0,'It requires a steady hand to remove the leather from a slain beast.',15595),(91,2,0,'You have not lived until you have dug deep into the earth.',15595),(101,2,0,'Searching for herbs requires both knowledge and instinct.',15595),(102,2,0,'Engineering is very simple once you grasp the basics.',15595),(103,2,0,'Greetings!  Can I teach you how to turn beast hides into armor?',15595),(105,2,0,'With alchemy you can turn found herbs into healing and other types of potions.',15595),(107,2,0,'Here, let me show you how to bind those wounds....',15595),(114,0,0,'Welcome!',15211),(117,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15211),(119,2,0,'Greetings!  Can I teach you how to cut precious gems and craft jewelry?',14545),(122,2,0,'The herbs of Northrend can be brewed into powerful potions.',15595),(123,2,0,'Would you like to learn the intricacies of inscription?',15211),(124,0,0,'Hello, shaman!  Ready for some training?',15211),(127,0,0,'Hello, priest!  Ready for some training?',15211),(129,0,0,'Welcome!',15211),(130,0,0,'Welcome!',15211),(131,2,0,'Enchanting is the art of improving existing items through magic. ',15595),(133,2,0,'Searching for herbs requires both knowledge and instinct.',15595),(134,0,0,'Hello, shaman!  Ready for some training?',15211),(135,0,0,'Hello, mage!  Ready for some training?',15595),(136,2,0,'Can I teach you how to turn the meat you find on beasts into a feast?',15595),(137,2,0,'Hello!  Can I teach you something?',15595),(143,2,0,'Greetings!  Can I teach you how to turn beast hides into armor?',15595),(144,0,0,'Welcome!',14545),(145,0,0,'Hello, warrior!  Ready for some training?',15595),(148,0,0,'Welcome!',15211),(149,0,0,'Welcome!',15211),(150,2,0,'Greetings!  Can I teach you how to cut precious gems and craft jewelry?',15211),(154,0,0,'Hello, warlock!  Ready for some training?',15595),(155,2,0,'It requires a steady hand to remove the leather from a slain beast.',15595),(157,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15595),(158,2,0,'I can teach you how to use a fishing pole to catch fish.',15211),(159,2,0,'Here, let me show you how to bind those wounds....',15211),(160,2,0,'Here, let me show you how to bind those wounds....',15211),(161,2,0,'Can I teach you how to turn the meat you find on beasts into a feast?',15595),(163,2,0,'Greetings!  Can I teach you how to turn found cloth into cloth armor?',15595),(164,0,0,'Hello, paladin!  Ready for some training?',15595),(168,0,0,'Hello, paladin!  Ready for some training?',15595),(373,2,0,'Hi.',15595),(374,2,0,'Unused.',15211),(386,2,0,'Do you wish to learn how to fly?',15595),(387,2,0,'Would you like to learn the intricacies of inscription?',15595),(388,2,0,'Searching for herbs requires both knowledge and instinct.',15595),(389,2,0,'You have not lived until you have dug deep into the earth.',15595),(390,2,0,'It requires a steady hand to remove the leather from a slain beast.',15595),(396,2,0,'Hi.',15595),(405,2,0,'Engineering is very simple once you grasp the basics.',15595),(406,2,0,'Engineering is very simple once you grasp the basics.',15595),(407,2,0,'Engineering is very simple once you grasp the basics.',15595),(425,2,0,'You have not lived until you have dug deep into the earth.',14545),(427,2,0,'I can teach you how to use a fishing pole to catch fish.',15595);
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 10:21:45
