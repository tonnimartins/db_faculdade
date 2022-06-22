-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'pedro','silva','00000000000',1,'M','carlos','efika','p.s@gmail.com','11111111111',4,1,1),(2,'joao','silae','11111111111',1,'M','jose','maria','j.s@gmail.com','22222222222',NULL,2,1),(3,'maria','oliver','22222222222',0,'F','julio','celia','m.o@gmail.com',NULL,5,3,1),(4,'lucia','pereira','33333333333',1,'F','elmo','marcia','l.p@gmail.com','33333333333',6,4,1),(5,'laura','araujo','44444444444',1,'F','celio','joana','l.a@gmail.com','44444444444',NULL,5,1),(6,'luciana','veras','55555555555',1,'F','marcos','julia','l.v@gmail.com','55555555555',7,6,2),(7,'renata','martin','66666666666',1,'F','tom','renne','r.m@gmail.com','66666666666',8,7,2),(8,'deboraht','drummond','77777777777',0,'F','tonni','renata','d.d@gmail.com',NULL,9,8,1),(9,'enne','lima','88888888888',0,'F','silvio','paula','e.l@gmail.com','77777777777',10,1,1),(10,'juliana','souza','99999999999',1,'F','eddu','lais','j.so@gmail.com','88888888888',4,2,1),(11,'ster','gomes','12121212121',1,'F','salmo','karla','s.t@gmail.com',NULL,5,3,1),(12,'antonio','marvin','23232323232',1,'M','raul','sarah','a.m@gmail.com','99999999999',6,4,1),(13,'marcos','callo','34343434343',1,'M','edson','laura','m.c@gmail.com','12121212121',7,5,1),(14,'dante','patto','45454545454',1,'M','plinio','graca','d.p@gmail.com','23232323232',8,6,1),(15,'fluvia','galo','56565656565',1,'F','franco','ella','f.g@gmail.com',NULL,9,7,1),(16,'luiza','raposo','67676767676',1,'F','zeze','ellis','l.r@gmail.com','34343434343',NULL,8,1),(17,'saulo','steir','78787878787',1,'M','trigo','elma','s.s@gmail.com','45454545454',10,1,1),(18,'roberto','calda','89898989898',1,'M','karl','lara','r.c@gmail.com','56565656565',4,2,1),(19,'isabel','crib','90909090909',1,'F','maax','livia','i.c@gmail.com','67676767676',5,3,1),(20,'effi','porto','21212121212',0,'F','boris','claer','e.p@gmail.com','78787878787',6,4,1),(21,'paulo','andre','08495582107',1,'M','jose','maria','paulo.andre@gmail.com','62995442708',10,5,3);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(50) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia de software',5),(2,'Analise de sistemas',5),(3,'Biologia',3),(4,'Historia',1),(5,'Matemáticas',2),(6,'biomedicina',3),(7,'Psicologia',1),(8,'musica',1),(9,'estagio',4),(10,'geografia',1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (1,11),(2,12),(3,13),(4,14),(5,15),(6,16),(7,17),(8,18),(9,19),(10,20);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(30) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Humanas'),(2,'Matematica'),(3,'Biologicas'),(4,'Estagio'),(5,'Tecnologia Informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(50) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio logico',25,'descricao 1',20,2),(2,'Pscicologia cognitiva',25,'descricao 2',20,1),(3,'Eletronica digital',25,'descricao 3',20,2),(4,'Programação em C',25,'descricao 4',20,5),(5,'História do Brasil',25,'descricao 5',20,1),(6,'disciplina 6',25,'descricao 6',20,2),(7,'disciplina 7',25,'descricao 7',20,2),(8,'disciplina 8',25,'descricao 8',20,2),(9,'disciplina 9',25,'descricao 9',20,2),(10,'disciplina 10',25,'descricao 10',20,2),(11,'disciplina 11',25,'descricao 11',20,2),(12,'disciplina 12',25,'descricao 12',20,2),(13,'disciplina 13',25,'descricao 13',20,2),(14,'disciplina 14',25,'descricao 14',20,2),(15,'disciplina 15',25,'descricao 15',20,2),(16,'disciplina 16',25,'descricao 16',20,2),(17,'disciplina 17',25,'descricao 17',20,2),(18,'disciplina 18',25,'descricao 18',20,2),(19,'disciplina 19',25,'descricao 19',20,2),(20,'disciplina 20',25,'descricao 20',20,2),(21,'disciplina 21',25,'descricao 21',20,2),(22,'disciplina 22',25,'descricao 22',20,2),(23,'disciplina 23',25,'descricao 23',20,2),(24,'disciplina 24',25,'descricao 24',20,2),(25,'disciplina 25',25,'descricao 25',20,2),(26,'disciplina 26',25,'descricao 26',20,2),(27,'disciplina 27',25,'descricao 27',20,2),(28,'disciplina 28',25,'descricao 28',20,2),(29,'disciplina 29',25,'descricao 29',20,2),(30,'disciplina 30',25,'descricao 30',20,2);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_historico` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_historico`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
INSERT INTO `disciplina_historico` VALUES (1,1,6.00,22),(2,2,6.00,22),(3,3,6.00,22),(4,4,6.00,22),(5,5,6.00,22),(6,6,6.00,22),(7,7,6.00,22),(8,8,6.00,22),(9,9,6.00,22),(10,10,6.00,22),(11,11,6.00,22),(12,12,6.00,22),(13,13,6.00,22),(14,14,6.00,22),(15,15,6.00,22),(16,16,6.00,22),(17,17,6.00,22),(18,18,6.00,22),(19,19,6.00,22),(20,20,6.00,22);
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'rua direita',5,'setor love','70145296',1),(2,'alunos com mesmo endereco',7,'setor chuva','70145333',3),(3,'rua direita',53,'em frente à padaria','72577249',5);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2022-06-15','2026-06-15',1),(2,'2022-06-15','2026-06-15',2),(3,'2022-06-15','2026-06-15',3),(4,'2022-06-15','2026-06-15',4),(5,'2022-06-15','2026-06-15',5),(6,'2022-06-15','2026-06-15',6),(7,'2022-06-15','2026-06-15',7),(8,'2022-06-15','2026-06-15',8),(9,'2022-06-15','2026-06-15',9),(10,'2022-06-15','2026-06-15',10),(11,'2022-06-15','2026-06-15',11),(12,'2022-06-15','2026-06-15',12),(13,'2022-06-15','2026-06-15',13),(14,'2022-06-15','2026-06-15',14),(15,'2022-06-15','2026-06-15',15),(16,'2022-06-15','2026-06-15',16),(17,'2022-06-15','2026-06-15',17),(18,'2022-06-15','2026-06-15',18),(19,'2022-06-15','2026-06-15',19),(20,'2022-06-15','2026-06-15',20);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'marcos','silva',0,5),(2,'joão','santos',0,5),(3,'jose','souza',0,3),(4,'maria','sousa',1,1),(5,'ana','farias',1,2),(6,'celia','araujo',1,3),(7,'lucas','lopes',1,1),(8,'flavio','alves',1,1),(9,'joana','silva',1,4),(10,'silvia','neto',1,1),(11,'plinio','cairo',1,1);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo` (`fk_cod_tipo`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'22222222222',1),(2,'99999999999',1),(3,'12121212121',1),(4,'23232323232',1),(5,'56565656565',1),(6,'61985760588',1),(7,'61985760588',2),(8,'61985760588',3),(9,'61995602208',1),(10,'61995602208',2),(11,'61995602208',3),(12,'61985764915',1),(13,'61985764915',2),(14,'61985764915',3),(15,'71995560284',1);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,2,1),(2,12,2),(3,13,3),(4,14,4),(5,18,5),(6,1,6),(7,1,7),(8,1,8),(9,5,9),(10,5,10),(11,5,11),(12,9,12),(13,9,13),(14,9,14);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste`
--

DROP TABLE IF EXISTS `teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teste` (
  `nome` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste`
--

LOCK TABLES `teste` WRITE;
/*!40000 ALTER TABLE `teste` DISABLE KEYS */;
/*!40000 ALTER TABLE `teste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'rua'),(2,'quadra'),(3,'bairro'),(4,'avenida'),(5,'condominio'),(6,'chacara');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'celular'),(2,'residencial'),(3,'comercial');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(15) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'matutino',15,'2022-02-15','2022-06-15',4),(2,'vespertino',25,'2022-02-15','2022-06-15',5),(3,'noturno',35,'2022-02-15','2022-06-15',6),(4,'matutino',45,'2022-02-15','2022-06-15',7),(5,'vespertino',55,'2022-06-15','2022-10-15',8),(6,'noturno',15,'2022-06-15','2022-10-15',9),(7,'matutino',25,'2022-06-15','2022-10-15',10),(8,'vespertino',35,'2022-06-15','2022-10-15',8);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_alunocurso`
--

DROP TABLE IF EXISTS `vw_alunocurso`;
/*!50001 DROP VIEW IF EXISTS `vw_alunocurso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunocurso` AS SELECT 
 1 AS `RA`,
 1 AS `nome`,
 1 AS `nome_curso`,
 1 AS `periodo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alunodisciplinanota`
--

DROP TABLE IF EXISTS `vw_alunodisciplinanota`;
/*!50001 DROP VIEW IF EXISTS `vw_alunodisciplinanota`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunodisciplinanota` AS SELECT 
 1 AS `RA`,
 1 AS `nome_disciplina`,
 1 AS `nome`,
 1 AS `nota`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alunoenderecotelefone`
--

DROP TABLE IF EXISTS `vw_alunoenderecotelefone`;
/*!50001 DROP VIEW IF EXISTS `vw_alunoenderecotelefone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunoenderecotelefone` AS SELECT 
 1 AS `RA`,
 1 AS `nome`,
 1 AS `CPF`,
 1 AS `status`,
 1 AS `sexo`,
 1 AS `nome_pai`,
 1 AS `nome_mae`,
 1 AS `email`,
 1 AS `whatsapp`,
 1 AS `nome_rua`,
 1 AS `numero_rua`,
 1 AS `complemento`,
 1 AS `CEP`,
 1 AS `tipo_logradouro`,
 1 AS `num_telefone`,
 1 AS `tipo_telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_disciplinacursoprofessordepartamento`
--

DROP TABLE IF EXISTS `vw_disciplinacursoprofessordepartamento`;
/*!50001 DROP VIEW IF EXISTS `vw_disciplinacursoprofessordepartamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_disciplinacursoprofessordepartamento` AS SELECT 
 1 AS `nome_disciplina`,
 1 AS `nome_departamento`,
 1 AS `nome_curso`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_professordisciplinacargahoraria`
--

DROP TABLE IF EXISTS `vw_professordisciplinacargahoraria`;
/*!50001 DROP VIEW IF EXISTS `vw_professordisciplinacargahoraria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_professordisciplinacargahoraria` AS SELECT 
 1 AS `nome`,
 1 AS `nome_disciplina`,
 1 AS `carga_horaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_faculdade'
--

--
-- Dumping routines for database 'db_faculdade'
--
/*!50003 DROP FUNCTION IF EXISTS `juncao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`antonio`@`localhost` FUNCTION `juncao`(nome1 VARCHAR(50), nome2 VARCHAR(50)) RETURNS varchar(110) CHARSET utf8mb4
    READS SQL DATA
RETURN (SELECT CONCAT(nome1, ' ', nome2)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `MULTIPLICA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`antonio`@`localhost` FUNCTION `MULTIPLICA`(numero1 DECIMAL(4,2), numero2 INT) RETURNS decimal(6,2)
    READS SQL DATA
RETURN numero1 * numero2 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `remove_acento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`antonio`@`localhost` FUNCTION `remove_acento`(texto VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
		SET texto = REPLACE (texto, 'ã', 'a'),
			texto = REPLACE (texto, 'ç', 'c');
		RETURN texto;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_prof` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`antonio`@`localhost` PROCEDURE `pesquisa_prof`(cod_prof INT)
BEGIN
	SELECT nome_professor, sobrenome_professor FROM professor
     WHERE cod_professor = cod_prof;	
     SELECT CONCAT('Seu procedimento funciona!!!');
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_alunocurso`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunocurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`antonio`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunocurso` AS select `a`.`RA` AS `RA`,concat(`a`.`nome_aluno`,' ',`a`.`sobrenome_aluno`) AS `nome`,`c`.`nome_curso` AS `nome_curso`,`t`.`periodo` AS `periodo` from ((`aluno` `a` join `curso` `c` on((`a`.`fk_cod_curso` = `c`.`cod_curso`))) join `turma` `t` on((`a`.`fk_cod_turma` = `t`.`cod_turma`))) order by concat(`a`.`nome_aluno`,' ',`a`.`sobrenome_aluno`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alunodisciplinanota`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunodisciplinanota`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`antonio`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunodisciplinanota` AS select `a`.`RA` AS `RA`,`d`.`nome_disciplina` AS `nome_disciplina`,concat(`a`.`nome_aluno`,' ',`a`.`sobrenome_aluno`) AS `nome`,`dh`.`nota` AS `nota` from (((`disciplina` `d` join `aluno_disciplina` `ad` on((`d`.`cod_disciplina` = `ad`.`fk_cod_disciplina`))) join `aluno` `a` on((`a`.`RA` = `ad`.`fk_RA`))) join `disciplina_historico` `dh` on((`d`.`cod_disciplina` = `dh`.`fk_cod_disciplina`))) order by `dh`.`nota` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alunoenderecotelefone`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunoenderecotelefone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`antonio`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunoenderecotelefone` AS select `a`.`RA` AS `RA`,concat(`a`.`nome_aluno`,' ',`a`.`sobrenome_aluno`) AS `nome`,`a`.`CPF` AS `CPF`,`a`.`status` AS `status`,`a`.`sexo` AS `sexo`,`a`.`nome_pai` AS `nome_pai`,`a`.`nome_mae` AS `nome_mae`,`a`.`email` AS `email`,`a`.`whatsapp` AS `whatsapp`,`e`.`nome_rua` AS `nome_rua`,`e`.`numero_rua` AS `numero_rua`,`e`.`complemento` AS `complemento`,`e`.`CEP` AS `CEP`,`tl`.`tipo_logradouro` AS `tipo_logradouro`,`te`.`num_telefone` AS `num_telefone`,`tt`.`tipo_telefone` AS `tipo_telefone` from (((((`aluno` `a` join `endereco` `e` on((`a`.`fk_cod_endereco` = `e`.`cod_endereco`))) join `tipo_logradouro` `tl` on((`e`.`fk_cod_tipo_logradouro` = `tl`.`cod_tipo_logradouro`))) join `telefone_aluno` `ta` on((`a`.`RA` = `ta`.`fk_RA`))) join `telefone` `te` on((`ta`.`fk_cod_telefone` = `te`.`cod_telefone`))) join `tipo_telefone` `tt` on((`te`.`fk_cod_tipo` = `tt`.`cod_tipo`))) order by `a`.`nome_aluno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_disciplinacursoprofessordepartamento`
--

/*!50001 DROP VIEW IF EXISTS `vw_disciplinacursoprofessordepartamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`antonio`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_disciplinacursoprofessordepartamento` AS select `di`.`nome_disciplina` AS `nome_disciplina`,`de`.`nome_departamento` AS `nome_departamento`,`c`.`nome_curso` AS `nome_curso`,concat(`p`.`nome_professor`,' ',`p`.`sobrenome_professor`) AS `nome` from (((((`disciplina` `di` join `departamento` `de` on((`di`.`fk_cod_departamento` = `de`.`cod_departamento`))) join `curso_disciplina` `cd` on((`di`.`cod_disciplina` = `cd`.`fk_cod_disciplina`))) join `curso` `c` on((`cd`.`fk_cod_curso` = `c`.`cod_curso`))) join `professor_disciplina` `pd` on((`di`.`cod_disciplina` = `pd`.`fk_cod_disciplina`))) join `professor` `p` on((`pd`.`fk_cod_professor` = `p`.`cod_professor`))) order by `di`.`nome_disciplina` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_professordisciplinacargahoraria`
--

/*!50001 DROP VIEW IF EXISTS `vw_professordisciplinacargahoraria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`antonio`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_professordisciplinacargahoraria` AS select concat(`p`.`nome_professor`,' ',`p`.`sobrenome_professor`) AS `nome`,`d`.`nome_disciplina` AS `nome_disciplina`,`d`.`carga_horaria` AS `carga_horaria` from ((`professor` `p` join `professor_disciplina` `pd` on((`p`.`cod_professor` = `pd`.`fk_cod_professor`))) join `disciplina` `d` on((`d`.`cod_disciplina` = `pd`.`fk_cod_disciplina`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 21:17:52
