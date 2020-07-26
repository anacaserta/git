-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: testedb
-- ------------------------------------------------------
-- Server version	5.6.48-log

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
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `cep` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Bambina Pizzaria','(14) 3223-1919','Rua Alfredo Fontão, Nº 6-80','Bauru','São Paulo','Pizzaria oferece pizzas clássicas e especiais em amplo salão ou em ambiente externo com muito verde tropical.','a:1:{i:0;s:15:\"Food and Dining\";}','17017-130'),(2,'Donatello Pizzarias','(14) 3203-1261','Rua Ismael Marinho Falcão','Bauru','São Paulo','Pizzaria oferece pizzas de diversos sabores.','a:1:{i:0;s:15:\"Food and Dining\";}','17063-000'),(3,'Augusta\'s Pizzaria','(14) 3234-5817','Av. Getúlio Vargas, 1740','Bauru','São Paulo','Restaurante informal e descontraído serve cardápio diversificado de pizzas seletas, massas, filés e chope.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17017-383'),(4,'Pizzaria Mamma Mia','(14) 3223-5022','R. Rubens Pagani, 1','Bauru','São Paulo','À la carte e rodízio de pizzas salgadas e doces, carta de vinhos, em ambiente familiar com delivery.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17014-530'),(5,'Pizzaria e Restaurante Ninu\'s','(14) 3227-0037','Av. Nações Unidas, 29-52 - Vila Nova Cidade Univertaria','Bauru','São Paulo','Forneria de ambiente despojado tem menu variado de pizzas salgadas e doces com opções de pratos tradicionais.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17012-202'),(6,'Capannori Pizzaria','(14) 3243-3606','Treze de Maio, 21-30','Bauru','São Paulo','A delicia em pizza Premium por um preço justo, nosso delivery para você receber na comodidade de sua casa.','a:1:{i:0;s:15:\"Food and Dining\";}','17014-450'),(7,'Pizzaria Vila Rica','(14) 3222-6220','R. Gustavo Maciel','Bauru','São Paulo','Pizzaria Vila Rica','a:1:{i:0;s:15:\"Food and Dining\";}','17010-180'),(8,'Di Forni Pizzaria','(14) 3234-4556','R. Marcondes Salgado, 17-71','Bauru','São Paulo','Pizzas diversificadas no regime degustação do rodízio em espaço simples com boemia e mesas a céu aberto.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17013-231'),(9,'Pizzaria Passione Bauru','(14) 3222-3193','Ismael Marinho Falcão, 1-09','Bauru','São Paulo','Pizzaria oferece diversos sabores de pizza e bebidas pelo sistema de entregas exclusivamente.','a:1:{i:0;s:15:\"Food and Dining\";}','17063-000'),(10,'Capadocia Pizzaria Bauru','(14) 3243-3606','Treze de Maio, 21-30 - Vila Noemy','Bauru','São Paulo','Delivery de Pizza','a:1:{i:0;s:15:\"Food and Dining\";}','17017-331'),(11,'Bauru Shopping','(14) 3366-5000','R. Henrique Savi, 15 - Loja 55 - Vila Nova Cidade Universitaria','Bauru','São Paulo','Shopping center em Bauru, São Paulo','a:1:{i:0;s:13:\"Entertainment\";}','17011-900'),(12,'Boulevard Shopping','14 3233 7000','R. Marcondes Salgado, 11-39 - Chácara das Flores','Bauru','São Paulo','Shopping center em Bauru, São Paulo','a:1:{i:0;s:13:\"Entertainment\";}','17013-113'),(13,'Dona Maria','(14) 3204-1234','Av. Getúlio Vargas, 10-130 - Jardim America','Bauru','São Paulo','Noites animadas em boteco rústico e descontraído, com tira-gostos, bebidas alcoólicas e transmissão dos jogos.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17017-339'),(14,'Seo Bigode Bar','(14) 99902-2286','Av. Getúlio Vargas, 22-86 - Parque Jardim Europa','Bauru','São Paulo','Prazer, sou o Sêo Bigode! Sua casa fora de casa, seu copo de chopp gelado, sua porção muito bem servida, seu aconchego após aquele dia de trabalho, seu boteco para reunir os amigos e brindar os bons momentos.','a:2:{i:0;s:13:\"Entertainment\";i:1;s:15:\"Food and Dining\";}','17017-383'),(15,'Sampa','(14) 3313-6131','R. Antônio Alves, 27-28 - Vila Universitaria','Bauru','São Paulo','Balada electro-rock tem 5 ambientes e espaço animado por shows e mixagem, além de bar com coquetéis estilosos.','a:1:{i:0;s:13:\"Entertainment\";}','17012-120'),(16,'Smart Fit Bauru','(14) 3234-9999','Jardim Europa','Bauru','São Paulo','Academia em Bauru, São Paulo','a:3:{i:0;s:18:\"Beauty and Fitness\";i:1;s:6:\"Health\";i:2;s:6:\"Sports\";}','17018-530'),(17,'Academia Saúde e Cia','(14) 3234-3534','R. Caetano Sampieri, 4-80 - Vila Nova Cidade Universitaria,','Bauru','São Paulo','Academia em Bauru, São Paulo','a:3:{i:0;s:18:\"Beauty and Fitness\";i:1;s:6:\"Health\";i:2;s:6:\"Sports\";}','17011-133'),(18,'ElevenFit','(14) 3010-7400','Av. Nações Unidas, 26-56 - Vila Nova Cidade Universitaria','Bauru','São Paulo','Academia em Bauru, São Paulo','a:2:{i:0;s:18:\"Beauty and Fitness\";i:1;s:6:\"Health\";}','17012-202'),(19,'Bongo Cocina','(14) 3204-2378','Alameda Dr. Octávio Pinheiro Brisolla, 15-07 - Vila Nova Cidade Universitaria','Bauru','São Paulo','Nachos e guacamole, além de hambúrgueres, chopes e tequilas, em espaço colorido e informal ao estilo mexicano.','a:1:{i:0;s:15:\"Food and Dining\";}','17012-191');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26  1:09:26
