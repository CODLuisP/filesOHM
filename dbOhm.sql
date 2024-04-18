CREATE DATABASE  IF NOT EXISTS `ohm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ohm`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ohm
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `administrativenetwork`
--

DROP TABLE IF EXISTS `administrativenetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrativenetwork` (
  `idAdministrative` varchar(10) NOT NULL,
  `codeAN` varchar(25) DEFAULT NULL,
  `facility` varchar(150) DEFAULT NULL,
  `coverage` varchar(150) DEFAULT NULL,
  `idLocal` varchar(25) DEFAULT NULL,
  `idVisualConecction` varchar(25) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idAdministrative`),
  KEY `R_4` (`idLocal`),
  KEY `R_5` (`idVisualConecction`),
  KEY `R_6` (`idStatus`),
  CONSTRAINT `administrativenetwork_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `localrecording` (`idLocal`),
  CONSTRAINT `administrativenetwork_ibfk_2` FOREIGN KEY (`idVisualConecction`) REFERENCES `visualconecctionscc` (`idVisualConecction`),
  CONSTRAINT `administrativenetwork_ibfk_3` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativenetwork`
--

LOCK TABLES `administrativenetwork` WRITE;
/*!40000 ALTER TABLE `administrativenetwork` DISABLE KEYS */;
INSERT INTO `administrativenetwork` VALUES ('AN-001','YN-G-CFE 01','YANACOCHA NORTE GAS STATION','Gas station \"Gassol\"','LR1','V1','E1',1),('AN-002','YN-G-CFE 02','YANACOCHA NORTE GAS STATION','Petrol station ','LR1','V1','E1',1),('AN-003','YN-G-CFE 03','YANACOCHA NORTE GAS STATION','Gas station - fuel tanker','LR1','V1','E1',1),('AN-004','C-G-CMSE-01 (1)','CARACHUGO GAS STATION','Gas station - Island 1','LR1','V1','E1',1),('AN-005','C-G-CMSE-01 (2)','CARACHUGO GAS STATION','Gas station - Island 1','LR1','V1','E1',1),('AN-006','C-G-CMSE-01 (3)','CARACHUGO GAS STATION','Gas station - Island 1','LR1','V1','E1',1),('AN-007','C-G-CMSE-02 (1)','CARACHUGO GAS STATION','Gas station - Island 2','LR1','V1','E1',1),('AN-008','C-G-CMSE-02 (2)','CARACHUGO GAS STATION','Gas station - Island 2','LR1','V1','E1',1),('AN-009','C-G-CMSE-02 (3)','CARACHUGO GAS STATION','Gas station - Island 2','LR1','V1','E1',1),('AN-010','CHL-P-CPTZE-01','CHINA LINDA PLANT','Next to entrance to sentry box','LR1','V1','E1',1),('AN-011','CHL-P-CDPTZE-01','CHINA LINDA PLANT','Metereological tower','LR1','V1','E1',1),('AN-012','CHL-P-CDPTZE-02','CHINA LINDA PLANT','Garbage collection','LR1','V1','E1',1),('AN-013','CHL-P-B003-CPTZE-01','CHINA LINDA PLANT','Sewage Treatment Plant (STP)','LR1','V1','E1',1),('AN-014','YN-PPB-CDPTZE-01','PLANT PLATFORM B','Mesh post','LR1','V1','E1',1),('AN-015','YN-PPB-CPTZE-01','PLANT PLATFORM B','Tower','LR1','V1','E1',1),('AN-016','LQ-PCAJ-CDPTZE-01','WATER MANAGEMENT','Cajamarquina pool','LR1','V1','E1',1),('AN-017','LQ-ADEW-CPTZE-01','WATER MANAGEMENT','La Quinua - Dewatering warehouse','LR1','V1','E1',1),('AN-018','RR-D-CDPTZE-01','WATER MANAGEMENT','Rejo Dam -  reservoir','LR1','V1','E1',1),('AN-019','RR-D-CPTZE-01','WATER MANAGEMENT','Rejo Dam - entrance','LR1','V1','E1',1),('AN-020','RR-D-CPTZE-02','WATER MANAGEMENT','Rejo Dam -  overflow ','LR1','V1','E1',1),('AN-021','RR-D-D-CPTZE-03','WATER MANAGEMENT','Rejo Dam -  download','LR1','V1','E1',1),('AN-022','SJ-PCH-CPTZE-01','WATER MANAGEMENT','Chugurana pool','LR1','V1','E1',1),('AN-023','CH-T-CC-CDPTZE-01','WATER MANAGEMENT','Chaquicocha -  El Condor viewpoint','LR1','V1','E1',1),('AN-024','LQ-T-CC-CPTZE-01','WATER MANAGEMENT','MA-Collotan ','LR1','V1','E1',1),('AN-025','CG-CH-T-CPTZE-01','WATER MANAGEMENT','Chailhuagon tower - Perol Pool','LR1','V1','E1',1),('AN-026','CG-CH-T-CPTZE-02','WATER MANAGEMENT','Chailhuagon tower - Chailhuagon reservoir','LR1','V1','E1',1),('AN-027','MQMQ-P-CDPTZE-01 ','WATER MANAGEMENT','Maqui Maqui pool','LR1','V1','E1',1),('AN-028','C-POCH-CPTZE-02','WATER MANAGEMENT','Maqui Maqui - Ocuchumachay pool','LR1','V1','E1',1),('AN-029','SJ-R-CDPTZE-01','WATER MANAGEMENT','San Jose reservoir','LR1','V1','E1',1),('AN-030','SJ-M-CPTZE-01','WATER MANAGEMENT','San Jose Mirador','LR1','V1','E1',1),('AN-031','LQ-PQ-CPTZE-01','WATER MANAGEMENT','Quishuar pool','LR1','V1','E1',1),('AN-032','MQMQ-PA-CPTZE-01','WATER MANAGEMENT','Arnacocha Pool','LR1','V1','E1',1),('AN-033','YN-T-T2-CMSI-01(1)','MINE OPERATIONS','Workshop T2','LR1','V1','E1',1),('AN-034','YN-T-T2-CMSI-01(2)','MINE OPERATIONS','Workshop T2','LR1','V1','E1',1),('AN-035','YN-T-T2-CMSI-01(3)','MINE OPERATIONS','Workshop T2','LR1','V1','E1',1),('AN-036','YN-T-T2-CMSI-01(4)','MINE OPERATIONS','Workshop T2','LR1','V1','E1',1),('AN-037','YN-T-P-CPTZE-01','MINE OPERATIONS','Auxiliary equipment ','LR1','V1','E1',1),('AN-038','YN-T-P-CPTZE-02','MINE OPERATIONS','Auxiliary equipment 2','LR1','V1','E1',1),('AN-039','YN-T-T1-CPTZE-01','MINE OPERATIONS','Exterior parking.','LR1','V1','E1',1),('AN-040','YN-T-PM-CDPTZE-01','MINE OPERATIONS','Workshop PM Exterior','LR1','V1','E1',1),('AN-041','YN-T-T1-CDPTZE-01','MINE OPERATIONS','Oval','LR1','V1','E1',1),('AN-042','CH-T-CE-CPTZE-01','MINE OPERATIONS','Escalon telecommunications tower- Chaquicocha','LR1','V1','E1',1),('AN-043','C-CN-CPTZE-01','MINE OPERATIONS','Nitrate field','LR1','V1','E1',1),('AN-044','C-MPAD-WAP101-CDPTZE-01','MINE OPERATIONS','Wap 101 - Carachugo','LR1','V1','E1',1),('AN-045','C-MPAD-WAP102-CDPTZE-01','MINE OPERATIONS','Wap 102 - Carachugo','LR1','V1','E1',1),('AN-046','C-QM-WAP103-CDPTZE-01','MINE OPERATIONS','Wap 103 - Carachugo','LR1','V1','E1',1),('AN-047','LQ-NP-WAP104-CPTZE-01','MINE OPERATIONS','Wap 104 - La Quinua','LR1','V1','E1',1),('AN-048','YN-P-TM-CFI-01','PLANT YANACOCHA NORTE-MAINTENANCE SHOPS','Offices','LR1','V1','E1',1),('AN-049','YN-P-TM-CFI-02','PLANT YANACOCHA NORTE-MAINTENANCE SHOPS','Workshop','LR1','V1','E1',1),('AN-050','YN-P-TM-CFI-03','PLANT YANACOCHA NORTE-MAINTENANCE SHOPS','Warehouse','LR1','V1','E1',1),('AN-051','YN-P-TM-CFI-04','PLANT YANACOCHA NORTE-MAINTENANCE SHOPS','Confip','LR1','V1','E1',1),('AN-052','YN-T-T2-O-CFI-01','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd floor block A (Center 1)','LR1','V1','E1',1),('AN-053','YN-T-T2-O-CFI-02','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd floor plotter','LR1','V1','E1',1),('AN-054','YN-T-T2-O-CFI-03','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offcices 3rd floor entrance','LR1','V1','E1',1),('AN-055','YN-T-T2-O-CFI-04','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Hallway to offices 1st floor','LR1','V1','E1',1),('AN-056','YN-T-T2-O-CFI-05','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd floor block B (Right side)','LR1','V1','E1',1),('AN-057','YN-T-T2-O-CFI-06','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Entrance to Offices 3rd floor ','LR1','V1','E1',1),('AN-058','YN-T-T2-O-CFI-07','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd Floor block B (Center 1)','LR1','V1','E1',1),('AN-059','YN-T-T2-O-CFI-08','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd floor block B (Right side)','LR1','V1','E1',1),('AN-060','YN-T-T2-O-CFI-09','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices 3rd floor block A (Left side)','LR1','V1','E1',1),('AN-061','YN-T-T2-O-CFI-10','YANACOCHA NORTE MAINTENANCE SHOPS OFFICES (T2)','Offices  3rd  floor block A (Center 2)','LR1','V1','E1',1),('AN-062','RG-DGR-AXIS 233D','GRANDE RIVER ','Grande River entrance','LR1','V1','E1',1),('AN-063','YN-P-G-CMSI-01(01)',' YANACOCHA NORTE PLANT ','Checking Room','LR1','V1','E1',1),('AN-064','YN-P-G-CMSI-01(02)',' YANACOCHA NORTE PLANT ','Checking Room','LR1','V1','E1',1),('AN-065','YN-P-G-CMSI-01(03)',' YANACOCHA NORTE PLANT ','Checking Room','LR1','V1','E1',1),('AN-066','YN-P-G-CMSI-02(01)',' YANACOCHA NORTE PLANT ','BodyScan and X Rays Room','LR1','V1','E1',1),('AN-067','YN-P-G-CMSI-02(02)',' YANACOCHA NORTE PLANT ','BodyScan and X Rays Room','LR1','V1','E1',1),('AN-068','YN-P-G-CMSI-02(03)',' YANACOCHA NORTE PLANT ','BodyScan and X Rays Room','LR1','V1','E1',1),('AN-069','YN-P-G-CDFI-01',' YANACOCHA NORTE PLANT ','Entrance control hallway','LR1','V1','E1',1),('AN-070','YN-P-G-CDFI-02',' YANACOCHA NORTE PLANT ','Exit from the X-ray room','LR1','V1','E1',1),('AN-071','YN-P-G-CDFI-03',' YANACOCHA NORTE PLANT ','Entrance to the X-ray room','LR1','V1','E1',1),('AN-072','YN-P-G-CDFI-04',' YANACOCHA NORTE PLANT ','Waiting area 1','LR1','V1','E1',1),('AN-073','YN-P-G-CDFI-05',' YANACOCHA NORTE PLANT ','Waiting area 1','LR1','V1','E1',1),('AN-074','YN-P-G-CDFI-06',' YANACOCHA NORTE PLANT ','Inspection area','LR1','V1','E1',1),('AN-075','YN-P-G-CDFE-01',' YANACOCHA NORTE PLANT ','Entrance to the gatehouse','LR1','V1','E1',1),('AN-076','LIM-O-CDFI-01','NPL LIMA OFFICES ','Exterior Walkway 02','LR1','V1','E1',1),('AN-077','LIM-O-CDFI-02','NPL LIMA OFFICES ','Exterior Walkway 01','LR1','V1','E1',1),('AN-078','LIM-O-CDFI-03','NPL LIMA OFFICES ','Reception 01','LR1','V1','E1',1),('AN-079','LIM-O-CDFI-04','NPL LIMA OFFICES ','Reception 02','LR1','V1','E1',1),('AN-080','LIM-O-CDFI-05','NPL LIMA OFFICES ','Security Control','LR1','V1','E1',1),('AN-081','LIM-O-CDFI-06','NPL LIMA OFFICES ','Hallway','LR1','V1','E1',1),('AN-082','LIM-O-CDFI-07','NPL LIMA OFFICES ','Dining room Walkway','LR1','V1','E1',1),('AN-083','LIM-O-CDFI-08','NPL LIMA OFFICES ','Warehouse','LR1','V1','E1',1),('AN-084','LIM-O-CDFI-09','NPL LIMA OFFICES ','Geology Walkway','LR1','V1','E1',1),('AN-085','LIM-O-CDFI-10','NPL LIMA OFFICES ','Logistics','LR1','V1','E1',1),('AN-086','LIM-O-CDFI-11','NPL LIMA OFFICES ','Walkway 02','LR1','V1','E1',1),('AN-087','LIM-O-CDFI-12','NPL LIMA OFFICES ','Walkway 01','LR1','V1','E1',1),('AN-088','LIM-O-CDFI-13','NPL LIMA OFFICES ','Auditorium Walkway','LR1','V1','E1',1),('AN-089','LIM-O-CDFI-14','NPL LIMA OFFICES ','Electric Room Walkway','LR1','V1','E1',1),('AN-090','LIM-O-CDFI-15','NPL LIMA OFFICES ','Data Center Walkway','LR1','V1','E1',1),('AN-091','YN-P-MC-CFE-01','YANACOCHA NORTE - MERRILL CROWE (DISCREET CAMERAS)','Zinc Cone','LR1','V1','E1',1),('AN-092','YN-P-MC-CFE-02','YANACOCHA NORTE - MERRILL CROWE (DISCREET CAMERAS)','Samplers','LR1','V1','E1',1),('AN-093','YN-P-V-CFI-01','YANACOCHA NORTE - DRESSING ROOMS (DISCREET CAMERAS)','Dressing Room 1','LR1','V1','E1',1),('AN-094','YN-P-V-CFI-02','YANACOCHA NORTE - DRESSING ROOMS (DISCREET CAMERAS)','Dressing Room 2','LR1','V1','E1',1),('AN-095','YN-T-T2-V-CDFI-01','MAINTENANCE SHOPS- T2 - DRESSING ROOMS ','Dressing Room 1','LR1','V1','E1',1),('AN-096','YN-T-T2-V-CDFI-02','MAINTENANCE SHOPS- T2 - DRESSING ROOMS ','Dressing Room 2','LR1','V1','E1',1),('AN-097','YN-T-T2-V-CDFI-03','MAINTENANCE SHOPS- T2 - DRESSING ROOMS ','Dressing Room 3','LR1','V1','E1',1),('AN-098','YN-T-T2-V-CDFI-04','MAINTENANCE SHOPS - T2 - DRESSING ROOMS ','Dressing Room 4','LR1','V1','E1',1),('AN-099','YN-T-T2-V-CDFI-05','MAINTENANCE SHOPS - T2 - DRESSING ROOMS ','Dressing Room - The ladder to toilet facilities','LR1','V1','E1',1),('AN-100','CHQ-T-CC-CFE-01','SULFIDES PROJECT','Chaquicocha Tower -  El Condor ','LR1','V1','E1',1),('AN-101','Codigo123','FacilityName','Cobertura','LR1','V1','E1',1),('AN-102','Codigo123','FacilityName','Cobertura','LR1','V1','E1',1),('AN-103','OWEN','Wily','Puero','LR1','V1','E1',1),('AN-104','Prueba02','Pruhyeba','UPDATE EXITOSO','LR1','V1','E1',1),('AN-105','OWEN','Wily','Puero','LR1','V1','E1',1),('AN-106','OWEN','Wily','Puero','LR1','V1','E1',1),('AN-107','post','dde','de','LR1','V1','E1',0);
/*!40000 ALTER TABLE `administrativenetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarmsystem`
--

DROP TABLE IF EXISTS `alarmsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alarmsystem` (
  `idAlarm` varchar(10) NOT NULL,
  `facility` varchar(150) DEFAULT NULL,
  `coverage` varchar(250) DEFAULT NULL,
  `statusVisible` varchar(6) DEFAULT NULL,
  `stattusAudible` varchar(6) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `idVisualConecction` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idAlarm`),
  KEY `R_10` (`idStatus`),
  KEY `R_12` (`idVisualConecction`),
  CONSTRAINT `alarmsystem_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`),
  CONSTRAINT `alarmsystem_ibfk_2` FOREIGN KEY (`idVisualConecction`) REFERENCES `visualconecctionscc` (`idVisualConecction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarmsystem`
--

LOCK TABLES `alarmsystem` WRITE;
/*!40000 ALTER TABLE `alarmsystem` DISABLE KEYS */;
INSERT INTO `alarmsystem` VALUES ('AS-001','MINE OPERATIONS','Km. 45 Warehouse','Not','Yes','E1','V1',1),('AS-002','MINE OPERATIONS','Km. 39 Waste storage ','Yes','Yes','E1','V1',1),('AS-003','MINE OPERATIONS','Shugares Maqui Maqui hill telecommunications tower','Yes','Yes','E1','V1',1),('AS-004','MINE OPERATIONS','Reutech MSR 400 (126) Radar Station ','Yes','Yes','E1','V1',1),('AS-005','MINE OPERATIONS','Reutech MSR 300 (065) Radar station','Yes','Yes','E1','V1',1),('AS-006','MINE OPERATIONS','Yanacocha Norte Filters/Retorts','Yes','Yes','E1','V1',1),('AS-007','MINE OPERATIONS','China Linda Sentry Box ','Not','Yes','E1','V1',1),('AS-008','MINE OPERATIONS','Km. 38.5 Main road- Hydra 1826','Not','Yes','E1','V1',1),('AS-009','MINE OPERATIONS','Km. 37 Auditorium and TV rooms','Yes','Yes','E1','V1',1),('AS-010','MINE OPERATIONS','Km.37 Main casino','N.A','Yes','E1','V1',1),('AS-011','MINE OPERATIONS','Km. 37 Containers','Yes','Yes','E1','V1',1),('AS-012','MINE OPERATIONS','Km. 37 Gym and aerobics room','Yes','Yes','E1','V1',1),('AS-013','MINE OPERATIONS','Km. 37 Internet Room','Yes','Yes','E1','V1',1),('AS-014','MINE OPERATIONS','Km. 37 Lactario','Yes','Yes','E1','V1',1),('AS-015','MINE OPERATIONS','Hualkana offices','Yes','Yes','E1','V1',1),('AS-016','MINE OPERATIONS','Complex La Quinua offices','Yes','Yes','E1','V1',1),('AS-017','MINE OPERATIONS','Yanacocha Lima offices','Yes','Yes','E1','V1',1),('AS-018','MINE OPERATIONS','China Linda plant','Yes','Yes','E1','V1',1),('AS-019','MINE OPERATIONS','Platform B plant','Yes','Yes','E1','V1',1),('AS-020','MINE OPERATIONS','Km. 37 STP plant','Yes','Yes','E1','V1',1),('AS-021','MINE OPERATIONS','Rio Grande Dam','Not','Yes','E1','V1',1),('AS-022','MINE OPERATIONS','Rejo River','Yes','Yes','E1','V1',1),('AS-023','MINE OPERATIONS','La Pajuela substation','Yes','Yes','E1','V1',1),('AS-024','MINE OPERATIONS','El Condor Chaquicocha hill telecommunications tower','Yes','Yes','E1','V1',1),('AS-025','MINE OPERATIONS','Collotan hill telecommunications tower','Yes','Yes','E1','V1',1),('AS-026','MINE OPERATIONS','San Jose hill tower','Yes','Yes','E1','V1',1),('AS-027','MINE OPERATIONS','Mirador hill telecommunications tower','Yes','Yes','E1','V1',1),('AS-028','MINE OPERATIONS','Yanacocha Norte Foundry','Yes','Yes','E1','V1',1),('AS-029','MINE OPERATIONS','Pampa Larga Coal Plant (4020)','Yes','Yes','E1','V1',1),('AS-030','MINE OPERATIONS','Escalon hill telecommunications tower (4020)','Yes','Yes','E1','V1',1),('AS-031','MINE OPERATIONS','Cerro Negro telecommunications tower (4020)','Yes','Yes','E1','V1',1),('AS-032','MINE OPERATIONS','La Quinua Central Warehouse','Yes','Yes','E1','V1',1),('AS-033','MINE OPERATIONS','Analytical Chemical Laboratory','Yes','Yes','E1','V1',1),('AS-034','MINE OPERATIONS','Km. 52 Drinking Water Plant','Yes','Yes','E1','V1',1),('AS-035','MINE OPERATIONS','Km. 52 STP Plant','Yes','Yes','E1','V1',1),('AS-036','MINE OPERATIONS','Cerro Negro Mayor pool / Pump Mesh','Yes','Yes','E1','V1',1),('AS-037','MINE OPERATIONS','WOX La Quinua Operations Pool','Not','Yes','E1','V1',1),('AS-038','MINE OPERATIONS','WOX La Quinua Sub drains Pool','Yes','Yes','E1','V1',1),('AS-039','MINE OPERATIONS','Carachugo 14 Poza Sub drains Pool','Yes','Yes','E1','V1',1),('AS-040','MINE OPERATIONS','Carachugo 14 Operations Pool','Yes','Yes','E1','V1',1),('AS-041','MINE OPERATIONS','Carachugo 14 Recloser 13035 PR 24001','N.A','Yes','E1','V1',1),('AS-042','MINE OPERATIONS','MSR-065 Reutech Radar','Yes','Yes','E1','V1',1),('AS-043','MINE OPERATIONS','MSR-126 Reutech Radar','Yes','Yes','E1','V1',1),('AS-044','MINE OPERATIONS','MSR-261 Reutech Radar','Not','Yes','E1','V1',1),('AS-045','MINE OPERATIONS','MSR-259 Reutech Radar','Not','Yes','E1','V1',1),('AS-046','MINE OPERATIONS','ARCSAR1 Ibis Radar','Not','Yes','E1','V1',1),('AS-047','MINE OPERATIONS','ARCSAR2 Ibis Radar','Yes','Yes','E1','V1',1),('AS-048','MINE OPERATIONS','ARCSAR3 Ibis Radar','Yes','Yes','E1','V1',1),('AS-049','MINE OPERATIONS','IBIS M Radar (Huaynapicchu Plataform)','Yes','Yes','E1','V1',1),('AS-050','MINE OPERATIONS','Ground Probe Radar ','Not','Yes','E1','V1',1),('AS-051','MINE OPERATIONS','Sahara II Monitoring Station ','Not','Yes','E1','V1',1),('AS-052','MINE OPERATIONS','Bicentenary Monitoring Station ','Not','Yes','E1','V1',1),('AS-053','CAJAMARCA','Eucaliptos offices','Yes','Yes','E1','V1',1),('AS-054','CAJAMARCA','ALAC offices','N.A','Yes','E1','V1',1),('AS-055','CAJAMARCA','Guesthouse','Not','Yes','E1','V1',1),('AS-056','CAJAMARCA','House 01 - Dylan Robert','Not','Yes','E1','V1',1),('AS-057','CAJAMARCA','House 09 - Security Control Center','Yes','Yes','E1','V1',1),('AS-058','CAJAMARCA','House  - Carlos Scerpella','Not','Yes','E1','V1',1),('AS-059','CAJAMARCA','House 39 - Alexander Broli','Not','Yes','E1','V1',1),('AS-060','MINE OPERATIONS','WOX La Quinua operations pool - valve zone','N.A','Yes','E1','V1',1),('AS-061','MINE OPERATIONS','WAP 3','Not','Yes','E1','V1',1),('AS-062','MINE OPERATIONS','WAP 4','Not','Yes','E1','V1',1),('AS-063','MINE OPERATIONS','WAP 6','Not','Yes','E1','V1',1),('AS-064','MINE OPERATIONS','WAP 9','Not','Yes','E1','V1',1),('AS-065','MINE OPERATIONS','WAP 10','Not','Yes','E1','V1',1),('AS-066','MINE OPERATIONS','WAP 13','Not','Yes','E1','V1',1),('AS-067','MINE OPERATIONS','WAP 14','Not','Yes','E1','V1',1),('AS-068','MINE OPERATIONS','WAP 32','Yes','Yes','E1','V1',1),('AS-069','MINE OPERATIONS','WAP 101','Yes','Yes','E1','V1',1),('AS-070','MINE OPERATIONS','WAP 102','Not','Yes','E1','V1',1),('AS-071','MINE OPERATIONS','WAP 104','Yes','Yes','E1','V1',1),('AS-072','MINE OPERATIONS','Mobile Radio Repeater','Yes','Yes','E1','V1',1),('AS-073','Prueba02','Pruhyeba','Yes','Yes','E1','V1',1);
/*!40000 ALTER TABLE `alarmsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antifatiguesystem`
--

DROP TABLE IF EXISTS `antifatiguesystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antifatiguesystem` (
  `idAntifatigue` varchar(10) NOT NULL,
  `licensePlate` varchar(25) DEFAULT NULL,
  `vehicleType` varchar(250) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `systemA` varchar(150) DEFAULT NULL,
  `idVisualConecction` varchar(25) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idAntifatigue`),
  KEY `R_13` (`idVisualConecction`),
  KEY `R_14` (`idStatus`),
  CONSTRAINT `antifatiguesystem_ibfk_1` FOREIGN KEY (`idVisualConecction`) REFERENCES `visualconecctionscc` (`idVisualConecction`),
  CONSTRAINT `antifatiguesystem_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antifatiguesystem`
--

LOCK TABLES `antifatiguesystem` WRITE;
/*!40000 ALTER TABLE `antifatiguesystem` DISABLE KEYS */;
INSERT INTO `antifatiguesystem` VALUES ('AFS-001','BTI-727','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-002','BTI-737','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-003','BTI-749','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-004','BTI-770','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-005','BTI-789','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-006','BTI-838','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-007','BTI-841','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-008','BTI-863','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-009','BTI-906','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-010','BTI-911','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-011','BTI-918','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-012','BTJ-706','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-013','BTJ-735','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-014','BTJ-751','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-015','BTK-755','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-016','BTK-806','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-017','BTK-828','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-018','BTL-764','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-019','M1R-945','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-020','M3A-849','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-021','M3A883','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-022','M3Q-899','Toyota Hilux Pickup Truck','Environment','DSS FEREYROS/ CAT','V1','E1',1),('AFS-023','M3C-917','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-024','M3D-921','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-025','M3W-829','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-026','M3X-936','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-027','M3Y835','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-028','M3Y-836','Toyota Hilux Pickup Truck','Security','DSS FEREYROS/ CAT','V1','E1',1),('AFS-029','M7S-703','Toyota Hilux Pickup Truck','Security','ASSAC','V1','E1',1),('AFS-030','Prueba02','Pruhyeba','Yes','Yes','V1','E1',1);
/*!40000 ALTER TABLE `antifatiguesystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electricalstorm`
--

DROP TABLE IF EXISTS `electricalstorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electricalstorm` (
  `idElectrical` varchar(10) NOT NULL,
  `zone` varchar(150) DEFAULT NULL,
  `sensors` varchar(100) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idElectrical`),
  KEY `R_23` (`idStatus`),
  CONSTRAINT `electricalstorm_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricalstorm`
--

LOCK TABLES `electricalstorm` WRITE;
/*!40000 ALTER TABLE `electricalstorm` DISABLE KEYS */;
INSERT INTO `electricalstorm` VALUES ('ESS-001','LA QUINUA - CERRO NEGRO','Sensor 01','Cerro Negro','E1',1),('ESS-002','LA QUINUA - CERRO NEGRO','Sensor 02','Km. 37 Camp ','E1',1),('ESS-003','LA QUINUA - CERRO NEGRO','Sensor 03','Complex','E1',1),('ESS-004','GRANDE RIVER','Sensor 01','Rio Grande','E1',1),('ESS-005','YANACOCHA - KM. 52','Sensor 01','Mirador Hill','E1',1),('ESS-006','YANACOCHA - KM. 52','Sensor 02','El Condor Mirador','E1',1),('ESS-007','YANACOCHA - KM. 52','Sensor 03','Km. 52 Camp ','E1',1),('ESS-008','CONGA','Sensor 01','Huairamachay','E1',1),('ESS-009','CONGA','Sensor 02','Chailhuagon','E1',1),('ESS-010','CHINA LINDA','Sensor 01','China Linda','E1',1),('ESS-011','OWEN','Wily','Yes','E2',1);
/*!40000 ALTER TABLE `electricalstorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electromeshfence`
--

DROP TABLE IF EXISTS `electromeshfence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electromeshfence` (
  `idElectromesh` varchar(10) NOT NULL,
  `zone` varchar(200) DEFAULT NULL,
  `sensors` varchar(50) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idElectromesh`),
  KEY `R_27` (`idStatus`),
  CONSTRAINT `electromeshfence_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electromeshfence`
--

LOCK TABLES `electromeshfence` WRITE;
/*!40000 ALTER TABLE `electromeshfence` DISABLE KEYS */;
INSERT INTO `electromeshfence` VALUES ('EM-001','Zone 1 - 4 Exterior (Mountain zone)','Zone 1','Gas Station','E1',1),('EM-002','Zone 1 - 4 Exterior (Mountain zone)','Zone 2','Yanacocha Norte - Filters and Retorts ','E1',1),('EM-003','Zone 1 - 4 Exterior (Mountain zone)','Zone 3','Cyanide Warehouse - Contractor workshop','E1',1),('EM-004','Zone 1 - 4 Exterior (Mountain zone)','Zone 4','Gate N? 7','E1',1),('EM-005','Zone 1 - 4 Inner (Mountain zone)','Zone 1','Gas Station','E1',1),('EM-006','Zone 1 - 4 Inner (Mountain zone)','Zone 2','Yanacocha Norte - Filters and Retorts ','E1',1),('EM-007','Zone 1 - 4 Inner (Mountain zone)','Zone 3','Cyanide Warehouse - Contractor workshop','E1',1),('EM-008','Zone 1 - 4 Inner (Mountain zone)','Zone 4','Gate N7','E1',1),('EM-009','Zone 5 - 8 Exterior (Hualkana Office)','Zone 5','','E1',1),('EM-010','Zone 5 - 8 Exterior (Hualkana Office)','Zone 6','','E1',1),('EM-011','Zone 5 - 8 Exterior (Hualkana Office)','Zone 7','','E1',1),('EM-012','Zone 5 - 8 Exterior (Hualkana Office)','Zone 8','','E1',1),('EM-013','Zone 5 - 8 Inner (Hualkana Office)','Zone 5','','E1',1),('EM-014','Zone 5 - 8 Inner (Hualkana Office)','Zone 6','','E1',1),('EM-015','Zone 5 - 8 Inner (Hualkana Office)','Zone 7','','E1',1),('EM-016','Zone 5 - 8 Inner (Hualkana Office)','Zone 8','','E1',1),('EM-017','OWEN','pmjo','Yes','E1',1);
/*!40000 ALTER TABLE `electromeshfence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firealarm`
--

DROP TABLE IF EXISTS `firealarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firealarm` (
  `idFire` varchar(10) NOT NULL,
  `panel` varchar(50) DEFAULT NULL,
  `zone` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idFire`),
  KEY `R_24` (`idStatus`),
  CONSTRAINT `firealarm_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firealarm`
--

LOCK TABLES `firealarm` WRITE;
/*!40000 ALTER TABLE `firealarm` DISABLE KEYS */;
INSERT INTO `firealarm` VALUES ('FAS-001','MXL','Electric Substation 22.9 KV','Pampa Larga Plant','E1',1),('FAS-002','MXL','MCC 480V','Pampa Larga Plant','E1',1),('FAS-003','MXL','Electric Room 480V','Pond Carachugo','E1',1),('FAS-004','MXL','Sectionalizing','Pond Carachugo','E1',1),('FAS-005','MXL','Buffer Pond MCC','Buffer Pond Carachugo','E1',1),('FAS-006','XLS','Yanacocha Norte Electric Substation','Yanacocha Norte Plant','E1',1),('FAS-007','MXL','MCC DAM ','Pad La Quinua','E1',1),('FAS-008','MXL','Control Room','La Quinua Crushing ','E1',1),('FAS-009','MXL','MCC AWTP ','Platform B','E1',1),('FAS-010','MXL-IQ','Electric Subestation ','La Quinua Aglomerattion ','E1',1),('FAS-011','XLS','Electric Substacion ','La Quinua Plant Site','E1',1),('FAS-012','MXL','MCC AWTP ','La Quinua','E1',1),('FAS-013','MLX','Electric Substation ','La Pajuela','E1',1),('FAS-014','MLX','Electric Substation ','Maqui Maqui','E1',1),('FAS-015','MLX-IQ','Electric Substation ','China Linda','E1',1),('FAS-016','MXL','Workshop T1','Yanacocha Norte Maintenance Workshop ','E1',1),('FAS-017','MXL','Thermal Center ','La Pajuela','E1',1),('FAS-018','MXL','MCC Coal Colums Plant','Pampa Larga Plant','E1',1),('FAS-019','MXL','MCC EWTP3 ','Yanacocha Norte Plant','E1',1),('FAS-020','MXL-IQ','MCC Lime Slaker ','AWTP La Quinua ','E1',1),('FAS-021','MXL','MCC EWTP1 ','Pampa Larga Plant','E1',1),('FAS-022','MXL','Electric Substation ','Yanacocha Norte Maintenance Workshop ','E1',1),('FAS-023','MXL','Carachugo 10 Plant','Carachugo ','E1',1),('FAS-024','MXL-IQ','MCC New Furnace','China Linda Plant','E1',1),('FAS-025','MXL','MCC RO-500','Pampa Larga Plant','E1',1),('FAS-026','MXL-IQ','Environmental Laboratory ','Yanacocha Norte','E1',1),('FAS-027','XLS','EWTP','La Quinua','E1',1),('FAS-028','MXL-IQ','Km 37 Operators Camp ','Km 37 Camp ','E1',1),('FAS-029','MXL-IQ','Gold Mill Warehouse','La Quinua Aglomerattion ','E1',1),('FAS-030','MXL','Workshop T2','Yanacocha Norte Maintenance Workshop ','E1',1),('FAS-031','MXL-IQ','Ferreyros Warehouse ','Yanacocha Norte Maintenance Workshop ','E1',1),('FAS-032','XLS','Barraca Securitas','Yanacocha Norte','E1',1),('FAS-033','MXL-IQ','Second Warehouse ','Yanacocha Norte Maintenance Workshop ','E1',1),('FAS-034','MXL-IQ','Retort ','Yanacocha Norte Plant ','E1',1),('FAS-035','XLS','Belt 1100','Gold Mill','E1',1),('FAS-036','XLS','Belt 1300','Gold Mill ','E1',1),('FAS-037','MXL','MCC 2000- EER-001','Gold Mill ','E1',1),('FAS-038','MXL','MCC 3000- EER-01','Gold Mill ','E1',1),('FAS-039','MXL','MCC 3000- EER-02','Gold Mill ','E1',1),('FAS-040','MXL','Electric Substation 6110 EER-02-220KV','Gold Mill ','E1',1),('FAS-041','MXL','Electric Substation 6110 EER-01-22.9KV','Gold Mill ','E1',1),('FAS-042','MXL','Control Room','Gold Mill Plant','E1',1),('FAS-043','MXL','Electric Substation 6140- EER -01- electrogen group','Gold Mill ','E1',1),('FAS-044','MXL','UMY','Pampa Larga Plant','E1',1),('FAS-045','MXL-IQ','Process offices ','Pampa Larga Plant','E1',1),('FAS-046','MXL','Barraca Securitas','Pampa Larga Plant ','E1',1),('FAS-047','MXL','MCC 15001 AWTP Plant ','Pampa Larga Plant','E1',1),('FAS-048','MXL','MCC 15002 Llacanora ','Pampa Larga Plant ','E1',1),('FAS-049','MXL','MCC Wox 8 ','La Quinua Plant Wox 8','E1',1),('FAS-050','MXL','MCC RO-500 II ','Pampa Larga Plant','E1',1),('FAS-051','MXL','Metallurgical Chemical Laboratory ','La Quinua Aglomerattion ','E1',1),('FAS-052','MXL','3127-ER-18001 Wox 8','La Quinua Plant Wox 8','E1',1),('FAS-053','SERVIDOR','Computer NCC','Bahða- Yanacocha Norte ','E1',1),('FAS-054','XLS','Carachugo 14 ','Carachugo 14','E1',1),('FAS-055','OWEN','WilyIDS','Yes','E2',1);
/*!40000 ALTER TABLE `firealarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localrecording`
--

DROP TABLE IF EXISTS `localrecording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localrecording` (
  `idLocal` varchar(25) NOT NULL,
  `description` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idLocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localrecording`
--

LOCK TABLES `localrecording` WRITE;
/*!40000 ALTER TABLE `localrecording` DISABLE KEYS */;
INSERT INTO `localrecording` VALUES ('LR1','Recording'),('LR2','Not'),('LR3','Recording Interrupted');
/*!40000 ALTER TABLE `localrecording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` varchar(25) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitynetwork`
--

DROP TABLE IF EXISTS `securitynetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitynetwork` (
  `idSecurityNetwork` varchar(10) NOT NULL,
  `codeSN` varchar(25) DEFAULT NULL,
  `facility` varchar(150) DEFAULT NULL,
  `coverage` varchar(150) DEFAULT NULL,
  `idLocal` varchar(25) DEFAULT NULL,
  `idVisualConecction` varchar(25) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idSecurityNetwork`),
  KEY `R_1` (`idLocal`),
  KEY `R_2` (`idVisualConecction`),
  KEY `R_3` (`idStatus`),
  CONSTRAINT `securitynetwork_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `localrecording` (`idLocal`),
  CONSTRAINT `securitynetwork_ibfk_2` FOREIGN KEY (`idVisualConecction`) REFERENCES `visualconecctionscc` (`idVisualConecction`),
  CONSTRAINT `securitynetwork_ibfk_3` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitynetwork`
--

LOCK TABLES `securitynetwork` WRITE;
/*!40000 ALTER TABLE `securitynetwork` DISABLE KEYS */;
INSERT INTO `securitynetwork` VALUES ('SN-001','YN-P-F-CDFI-01','YANACOCHA NORTE FOUNDRY','Dressing room 1','LR1','V1','E1',1),('SN-002','YN-P-F-CFI-01','YANACOCHA NORTE FOUNDRY','Walk-Through Metal Detector','LR1','V1','E1',1),('SN-003','YN-P-F-CFI-02','YANACOCHA NORTE FOUNDRY','Neptuno Security Checkpoint','LR1','V1','E1',1),('SN-004','YN-P-F-CFI-03','YANACOCHA NORTE FOUNDRY','Door 4 of Walkway','LR1','V1','E1',1),('SN-005','YN-P-F-CFI-04','YANACOCHA NORTE FOUNDRY','Sample Weighing Office','LR1','V1','E1',1),('SN-006','YN-P-F-CFI-05','YANACOCHA NORTE FOUNDRY','Vault and weighed of dore ','LR1','V1','E1',1),('SN-007','YN-P-F-CFI-06','YANACOCHA NORTE FOUNDRY','Dore Cleaning Table','LR1','V1','E1',1),('SN-008','YN-P-F-CFI-07','YANACOCHA NORTE FOUNDRY','Left Side of Vault (Dust Collector)','LR1','V1','E1',1),('SN-009','YN-P-F-CFI-08','YANACOCHA NORTE FOUNDRY','Slag bag','LR1','V1','E1',1),('SN-010','YN-P-F-CFI-09','YANACOCHA NORTE FOUNDRY','Vehicle Entry','LR1','V1','E1',1),('SN-011','YN-P-F-CDPTZI-01','YANACOCHA NORTE FOUNDRY','Dressing Rooms 2 and Toilet Facilities','LR1','V1','E1',1),('SN-012','YN-P-F-CDPTZI-02','YANACOCHA NORTE FOUNDRY','Furnace (Pan-tilt)','LR1','V1','E1',1),('SN-013','YN-P-F-CFE-01','YANACOCHA NORTE FOUNDRY','Entry Doors 1 and 2','LR1','V1','E1',1),('SN-014','YN-P-F-CFE-02','YANACOCHA NORTE FOUNDRY','Left front corner','LR1','V1','E1',1),('SN-015','YN-P-F-CFE-03','YANACOCHA NORTE FOUNDRY','Left side','LR1','V1','E1',1),('SN-016','YN-P-F-CFE-04','YANACOCHA NORTE FOUNDRY','Yard No. 22','LR1','V1','E1',1),('SN-017','YN-P-F-CDPTZE-01','YANACOCHA NORTE FOUNDRY','Gate 14','LR1','V1','E1',1),('SN-018','YN-P-F-CDPTZE-02','YANACOCHA NORTE FOUNDRY','On the Roof','LR1','V1','E1',1),('SN-019','YN-P-F-COPI-01','YANACOCHA NORTE FOUNDRY','Vault interior','LR1','V1','E1',1),('SN-020','YN-P-FR-CFE-01','YANACOCHA NORTE FILTERS/RETORTS','Main entrance','LR1','V1','E1',1),('SN-021','YN-P-FR-CFI-01','YANACOCHA NORTE FILTERS/RETORTS','Man-trap','LR1','V1','E1',1),('SN-022','YN-P-FR-CFI-02','YANACOCHA NORTE FILTERS/RETORTS','Zepita Security Checkpoint','LR1','V1','E1',1),('SN-023','YN-P-FR-CFI-03','YANACOCHA NORTE FILTERS/RETORTS','Upper Corner of Filters','LR1','V1','E1',1),('SN-024','YN-P-FR-CFI-04','YANACOCHA NORTE FILTERS/RETORTS','Right Corner of Filters','LR1','V1','E1',1),('SN-025','YN-P-FR-CFI-05','YANACOCHA NORTE FILTERS/RETORTS','Side of Rolling Gate ? Shipping ','LR1','V1','E1',1),('SN-026','YN-P-FR-CFI-06','YANACOCHA NORTE FILTERS/RETORTS','HG tank ','LR1','V1','E1',1),('SN-027','YN-P-FR-CFI-07','YANACOCHA NORTE FILTERS/RETORTS','Retort  5 ','LR1','V1','E1',1),('SN-028','YN-P-FR-CFI-08','YANACOCHA NORTE FILTERS/RETORTS','Back side of retort furnaces','LR1','V1','E1',1),('SN-029','YN-P-FR-CDPTZI-01','YANACOCHA NORTE FILTERS/RETORTS','Press filters','LR1','V1','E1',1),('SN-030','YN-P-FR-CDPTZI-02','YANACOCHA NORTE FILTERS/RETORTS','Corner of Scale','LR1','V1','E1',1),('SN-031','YN-P-FR-CDPTZI-03','YANACOCHA NORTE FILTERS/RETORTS','Retorts 1 and 3 ','LR1','V1','E1',1),('SN-032','YN-P-FR-CPTZE-01','YANACOCHA NORTE FILTERS/RETORTS','Exterior Yard','LR1','V1','E1',1),('SN-033','YN-KM45-A-CDPTZE-01','WAREHOUSE KM.45 ','Interior and perimeter A','LR1','V1','E3',1),('SN-034','YN-KM45-A-CDPTZE-02',' WAREHOUSE KM.45','Interior and perimeter B','LR1','V1','E3',1),('SN-035','YN-KM45-A-CPTZE-01','WAREHOUSE KM.45 ','Interior and perimeter C','LR1','V1','E3',1),('SN-036','LQ-LQM-CDFI-01','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Entrance door.','LR1','V1','E1',1),('SN-037','LQ-LQM-CDFI-02','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Samples warehouse.','LR1','V1','E1',1),('SN-038','LQ-LQM-CDFI-03','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Samples reception gate.','LR1','V1','E1',1),('SN-039','LQ-LQM-CDFI-04','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Lateral left  door.','LR1','V1','E1',1),('SN-040','LQ-LQM-CDFI-05','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Back door.','LR1','V1','E1',1),('SN-041','LQ-LQM-CDFI-06','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Entrance to micro scale room','LR1','V1','E1',1),('SN-042','LQ-LQM-CDFI-07','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Bullion Entrance.','LR1','V1','E1',1),('SN-043','LQ-LQM-CDFI-08','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Bullion room','LR1','V1','E1',1),('SN-044','LQ-LQM-CDFI-09','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Weighing Room of Bullion 2','LR1','V1','E1',1),('SN-045','LQ-LQM-CDFI-10','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Weighing Room of Bullion 1','LR1','V1','E1',1),('SN-046','LQ-LQM-CDPTZE-01','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Entrance Control','LR1','V1','E1',1),('SN-047','LQ-LQM-CDPTZE-02','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Rear Exterior.','LR1','V1','E1',1),('SN-048','LQ-LQM- CFE-01','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Front entrance door.','LR1','V1','E1',1),('SN-049','LQ-LQM- CFE-02','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','Lateral right parking.','LR1','V1','E1',1),('SN-050','LQ-LQM- CFE-03','LA QUINUA METALLURGICAL CHEMICAL LABORATORY ','External Bullion door.','LR1','V1','E1',1),('SN-051','LQ-LP-SEE-CFE-01','LA PAJUELA ELECTRIC SUBSTATION','Main entrance to SS.EE 1 (electric power substation)','LR1','V1','E1',1),('SN-052','LQ-LP-SEE-CFE-02','LA PAJUELA ELECTRIC SUBSTATION','Left side electrical subestation 1 (electric power substation)','LR1','V1','E1',1),('SN-053','LQ-LP-SEE-CFE-03','LA PAJUELA ELECTRIC SUBSTATION','Right side electrical subestation 1 (electric power substation)','LR1','V1','E1',1),('SN-054','LQ-LP-SEE-CFE-04','LA PAJUELA ELECTRIC SUBSTATION','Right side electrical subestation 2 (electric power substation)','LR1','V1','E1',1),('SN-055','LQ-LP-SEE-CFE-05','LA PAJUELA ELECTRIC SUBSTATION','Back reusable warehouse','LR1','V1','E1',1),('SN-056','LQ-LP-SEE-CFE-06','LA PAJUELA ELECTRIC SUBSTATION','Left side Reusable warehouse','LR1','V1','E1',1),('SN-057','LQ-LP-SEE-CFE-07','LA PAJUELA ELECTRIC SUBSTATION','Reusable warehouse main entrance','LR1','V1','E1',1),('SN-058','LQ-LP-SEE-CFE-08','LA PAJUELA ELECTRIC SUBSTATION','Front reusable warehouse','LR1','V1','E1',1),('SN-059','LQ-LP-SEE-CFE-09','LA PAJUELA ELECTRIC SUBSTATION','Front EE.SS','LR1','V1','E1',1),('SN-060','LQ-LP-SEE-CPTZE-01','LA PAJUELA ELECTRIC SUBSTATION','Thermal station tanks','LR1','V1','E1',1),('SN-061','LQ-PC-CFI-01','LA QUINUA CARBON PLANT (Columns - Gaff Filters)','External side of filters','LR1','V1','E1',1),('SN-062','LQ-PC-CFI-02','LA QUINUA CARBON PLANT (Columns - Gaff Filters)','Gaff filters 3rd floor','LR1','V1','E1',1),('SN-063','LQ-PC-CFI-03','LA QUINUA CARBON PLANT (Columns - Gaff Filters)','Gaff filters 2nd floor','LR1','V1','E1',1),('SN-064','LQ-PC-CFI-04','LA QUINUA CARBON PLANT (Columns - Gaff Filters)','Pool platform with rich solution','LR1','V1','E1',1),('SN-065','LQ-PC-CFI-05','LA QUINUA CARBONPLANT (Columns - Gaff Filters)','Gaff filters 1st floor','LR1','V1','E1',1),('SN-066','LQ-PC-CPTZE-01','LA QUINUA CARBON PLANT ','Hump ','LR1','V1','E1',1),('SN-067','LQ-PC-CPTZE-02','LA QUINUA CARBON PLANT','Bump','LR1','V1','E1',1),('SN-068','LQ-PC-CPTZE-03','LA QUINUA CARBON PLANT ','Pad the Quinua (SUMP 1 and 2)','LR1','V1','E1',1),('SN-069','LQ-CH-CFE-01','HUANDOY CONTROL','Pedestrian exit control','LR1','V1','E1',1),('SN-070','LQ-CH-CDPTZE-01','HUANDOY CONTROL','Vehicle entry control','LR1','V1','E1',1),('SN-071','LQ-CH-CDPTZE-02','HUANDOY CONTROL','Vehicle exit','LR1','V1','E1',1),('SN-072','LQ-KM37-C-P-CMSE-01(1)',' KM 37 CAMP','KM 37 Camp - Bus Parking 2','LR1','V1','E1',1),('SN-073','LQ-KM37-C-P-CMSE-01(2)',' KM 37 CAMP','KM 37 Camp - Truck Parking 1','LR1','V1','E1',1),('SN-074','LQ-KM37-C-P-CMSE-01(3)',' KM 37 CAMP','KM 37 Camp - Truck Parking 2','LR1','V1','E1',1),('SN-075','LQ-KM37-C-P-CMSE-01(4)',' KM 37 CAMP','KM 37 Camp - Bus Parking 1','LR1','V1','E1',1),('SN-076','LQ-KM37-C-L-CMSE-02(1)',' KM 37 CAMP','KM 37 Camp - Lactarian containers','LR1','V1','E1',1),('SN-077','LQ-KM37-C-L-CMSE-02(2)',' KM 37 CAMP','KM 37 Camp - External lactarian rooms','LR1','V1','E1',1),('SN-078','LQ-KM37-C-L-CMSE-02(3)',' KM 37 CAMP','KM 37 Camp - Lactarian back door entrance ','LR1','V1','E1',1),('SN-079','BANSHEE 001 - CPTZE-01 ',' KM 37 CAMP','Outside Campamento Km. 37.','LR1','V1','E1',1),('SN-080','BI-C09-CDFI-01','SECURITY CONTROL CENTER','CCTV Room second floor','LR1','V1','E1',1),('SN-081','BI-C09-CDFI-02','SECURITY CONTROL CENTER','CCTV Room first floor','LR1','V1','E1',1),('SN-082','BI-C09-CFE-01','SECURITY CONTROL CENTER','Main entrance','LR1','V1','E1',1),('SN-083','BI-C09-CFI-01','SECURITY CONTROL CENTER','Data Center ','LR1','V1','E1',1),('SN-084','BI-C09-CFI-02','SECURITY CONTROL CENTER','CCTV Room first floor','LR1','V1','E1',1),('SN-085','PL-P-CC-CFE-01','PAMPA LARGA CARBON COLUMNS PLANT','Activated carbon bags','LR1','V1','E1',1),('SN-086','PL-P-CC-CFE-02','PAMPA LARGA CARBON COLUMNS PLANT','Rich solution tank','LR1','V1','E1',1),('SN-087','PL-P-CC-CPTZE-01','PAMPA LARGA CARBON COLUMNS PLANT','Whole plant','LR1','V1','E1',1),('SN-088','KM52-PAP-CDPTZE-01','KM 52 DRINKING WATER PLANT','Back side','LR1','V1','E1',1),('SN-089','KM52-PAP-CDPTZE-02','KM 52 DRINKING WATER PLANT','Main entrance','LR1','V1','E1',1),('SN-090','KM52-STP-CDPTZE-01','KM 52 STP PLANT ','Main entrance','LR1','V1','E1',1),('SN-091','KM52-STP-CDPTZE-02','KM 52 STP PLANT','Back side entrance','LR1','V1','E1',1),('SN-092','KM52-C-OA-CDFI-01',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-093','KM52-C-OA-CDFI-02',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-094','KM52-C-OA-CDFI-03',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-095','KM52-C-OA-CDFI-04',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-096','KM52-C-OA-CDFI-05',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-097','KM52-C-OA-CDFI-06',' KM 52 CAMP','Administrative offices','LR1','V1','E1',1),('SN-098','LQ-C-O-CFI-01','LA QUNUA COMPLEX OFFICES','Main entrance A','LR1','V1','E1',1),('SN-099','LQ-C-O-CFI-02','LA QUNUA COMPLEX OFFICES','Hallway B-4','LR1','V1','E1',1),('SN-100','LQ-C-O-CFI-03','LA QUNUA COMPLEX OFFICES','Hallway A-1','LR1','V1','E1',1),('SN-101','LQ-C-O-CFI-04','LA QUNUA COMPLEX OFFICES','Hallway B-2','LR1','V1','E1',1),('SN-102','LQ-C-O-CFI-05','LA QUNUA COMPLEX OFFICES','Escape Door 2','LR1','V1','E1',1),('SN-103','LQ-C-O-CFI-06','LA QUNUA COMPLEX OFFICES','Hallway A-3','LR1','V1','E1',1),('SN-104','LQ-C-O-CFI-07','LA QUNUA COMPLEX OFFICES','Main entrance B','LR1','V1','E1',1),('SN-105','LQ-C-O-CFI-08','LA QUNUA COMPLEX OFFICES','Escape Door 3','LR1','V1','E1',1),('SN-106','LQ-C-O-CFI-09','LA QUNUA COMPLEX OFFICES','Hallway B-1','LR1','V1','E1',1),('SN-107','LQ-C-O-CFI-10','LA QUNUA COMPLEX OFFICES','Hallway B-3','LR1','V1','E1',1),('SN-108','LQ-C-O-CFI-11','LA QUNUA COMPLEX OFFICES','Hallway C-3','LR1','V1','E1',1),('SN-109','LQ-C-O-CFI-12','LA QUNUA COMPLEX OFFICES','Main entrance C','LR1','V1','E1',1),('SN-110','LQ-C-O-CFI-13','LA QUNUA COMPLEX OFFICES','Hallway C-1','LR1','V1','E1',1),('SN-111','LQ-C-O-CFI-14','LA QUNUA COMPLEX OFFICES','Hallway D-4','LR1','V1','E1',1),('SN-112','LQ-C-O-CFI-15','LA QUNUA COMPLEX OFFICES','Hallway C-2','LR1','V1','E1',1),('SN-113','LQ-C-O-CFI-16','LA QUNUA COMPLEX OFFICES','Hallway D-2','LR1','V1','E1',1),('SN-114','LQ-C-O-CFI-17','LA QUNUA COMPLEX OFFICES','Escape Door 4','LR1','V1','E1',1),('SN-115','LQ-C-O-CFI-18','LA QUNUA COMPLEX OFFICES','Hallway C-4','LR1','V1','E1',1),('SN-116','LQ-C-O-CFI-19','LA QUNUA COMPLEX OFFICES','Main Entrance D','LR1','V1','E1',1),('SN-117','LQ-C-O-CFI-20','LA QUNUA COMPLEX OFFICES','Escape Door 1','LR1','V1','E1',1),('SN-118','LQ-C-O-CFI-21','LA QUNUA COMPLEX OFFICES','Hallway D-1','LR1','V1','E1',1),('SN-119','LQ-C-O-CFI-22','LA QUNUA COMPLEX OFFICES','Hallway A-2','LR1','V1','E1',1),('SN-120','LQ-C-O-CFI-23','LA QUNUA COMPLEX OFFICES','Hallway D-3','LR1','V1','E1',1),('SN-121','LQ-C-O-CFI-24','LA QUNUA COMPLEX OFFICES','Hallway A-4','LR1','V1','E1',1),('SN-122','LQ-C-CD-CDFI-01','LA QUNUA COMPLEX OFFICES','Data Center','LR1','V1','E1',1),('SN-123','LQ-C-P-CMSE-01(1) ','LQ COMPLEX PARKING LOT','Door A - left side','LR1','V1','E1',1),('SN-124','LQ-C-P-CMSE-01(2) ','LQ COMPLEX PARKING LOT','Door D - rigth side','LR1','V1','E1',1),('SN-125','LQ-C-P-CMSE-01(3) ','LQ COMPLEX PARKING LOT','Entry of buses','LR1','V1','E1',1),('SN-126','LQ-C-P-CMSE-02(1)','LQ COMPLEX PARKING LOT','Main entrance','LR1','V1','E1',1),('SN-127','LQ-C-P-CMSE-02(2)','LQ COMPLEX PARKING LOT','Main entrance','LR1','V1','E1',1),('SN-128','LQ-C-P-CMSE-02(3)','LQ COMPLEX PARKING LOT','Door B - left side','LR1','V1','E1',1),('SN-129','LQ-C-P-CMSE-03(1)','LQ COMPLEX PARKING LOT','Containers','LR1','V1','E1',1),('SN-130','LQ-C-P-CMSE-03(2) ','LQ COMPLEX PARKING LOT','Containers','LR1','V1','E1',1),('SN-131','LQ-C-P-CMSE-03(3) ','LQ COMPLEX PARKING LOT','Door C - left side','LR1','V1','E1',1),('SN-132','LQ-C-P-CMSE-04(1) ','LQ COMPLEX PARKING LOT','Fire water tank','LR1','V1','E1',1),('SN-133','LQ-C-P-CMSE-04(2) ','LQ COMPLEX PARKING LOT','Door C - rigth side','LR1','V1','E1',1),('SN-134','LQ-C-P-CMSE-04(3) ','LQ COMPLEX PARKING LOT','Fire Safety Water Tank','LR1','V1','E1',1),('SN-135','PL-P-F-CFI-01','PAMPA LARGA FOUNDRY','Main entrance','LR1','V1','E1',1),('SN-136','PL-P-F-CFI-02','PAMPA LARGA FOUNDRY','Checking room','LR1','V1','E1',1),('SN-137','PL-P-F-CFI-03','PAMPA LARGA FOUNDRY','Columbia Control ','LR1','V1','E1',1),('SN-138','PL-P-F-CFI-04','PAMPA LARGA FOUNDRY','Dressing room and toilets','LR1','V1','E1',1),('SN-139','PL-P-F-CFI-05','PAMPA LARGA FOUNDRY','Lockers area','LR1','V1','E1',1),('SN-140','PL-P-F-CFI-06','PAMPA LARGA FOUNDRY','Press filters 1,2,3','LR1','V1','E1',1),('SN-141','PL-P-F-CFI-07','PAMPA LARGA FOUNDRY','Retortas Furnaces','LR1','V1','E1',1),('SN-142','PL-P-F-CFI-08','PAMPA LARGA FOUNDRY','Oven A','LR1','V1','E1',1),('SN-143','PL-P-F-CFI-09','PAMPA LARGA FOUNDRY','Gravity table','LR1','V1','E1',1),('SN-144','PL-P-F-CFI-10','PAMPA LARGA FOUNDRY','Vault','LR1','V1','E1',1),('SN-145','PL-P-F-CFI-11','PAMPA LARGA FOUNDRY','Operators table','LR1','V1','E1',1),('SN-146','PL-P-F-CFI-12','PAMPA LARGA FOUNDRY','Oven B','LR1','V1','E1',1),('SN-147','PL-P-F-CFI-13','PAMPA LARGA FOUNDRY','Press filter 4','LR1','V1','E1',1),('SN-148','PL-P-F-CFI-14','PAMPA LARGA FOUNDRY','Ball mill','LR1','V1','E1',1),('SN-149','PL-P-F-CFE-01','PAMPA LARGA FOUNDRY','Patio earthenware exterior side','LR1','V1','E1',1),('SN-150','YN-OH-CDFI-01','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-01','LR1','V1','E1',1),('SN-151','YN-OH-CDFI-02','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-02','LR1','V1','E1',1),('SN-152','YN-OH-CDFI-03','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-03','LR1','V1','E1',1),('SN-153','YN-OH-CDFI-05','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-05','LR1','V1','E1',1),('SN-154','YN-OH-CDFI-06','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-06','LR1','V1','E1',1),('SN-155','YN-OH-CDFI-07','HUALKANA OFFICES (INDIGO)','YN-OH-CDFI-07','LR1','V1','E1',1),('SN-156','YN-OH-CFE-01','HUALKANA OFFICES','Main entrance gate','LR1','V1','E1',1),('SN-157','YN-OH-CMSI-01(1)','HUALKANA OFFICES','Office interior','LR1','V1','E1',1),('SN-158','YN-OH-CMSI-01(2)','HUALKANA OFFICES','Office interior','LR1','V1','E1',1),('SN-159','YN-OH-CMSI-01(3)','HUALKANA OFFICES','Office interior','LR1','V1','E1',1),('SN-160','YN-OH-CMSI-01(4)','HUALKANA OFFICES','Office interior','LR1','V1','E1',1),('SN-161','LQ-WOX-PO-CPTZE-01','WOX LA QUINUA 8','Operations pool -Door 1 - Main entrance','LR1','V1','E1',1),('SN-162','LQ-WOX-PO-CPTZE-02','WOX LA QUINUA 8','Operations pool -Door 2 - Exit to pad','LR1','V1','E1',1),('SN-163','LQ-WOX-PO-CPTZE-03','WOX LA QUINUA 8','Operations pool -Door 4 - Exit to subdrains pool','LR1','V1','E1',1),('SN-164','LQ-WOX-PSD-CDPTZE-01','WOX LA QUINUA 8','Subdrains pool A','LR1','V1','E1',1),('SN-165','LQ-WOX-PSD-CDPTZE-02','WOX LA QUINUA 8','Subdrains pool B','LR1','V1','E1',1),('SN-166','LQ-WOX-PO-CTFE-01','WOX LA QUINUA 8','Operations pool - valve zone','LR1','V1','E1',1),('SN-167','CN-PMA-CPTZE-01','MAIN POOL CERRO NEGRO ','Pool / Mesh shed','LR1','V1','E1',1),('SN-168','CN-PDS-CPTZE-01','STORE POOL (SPRING) CERRO NEGRO ','Main entrance','LR1','V1','E1',1),('SN-169','CN-PDS-CPTZE-02','STORE POOL (SPRING) CERRO NEGRO ','Whole pool','LR1','V1','E1',1),('SN-170','CAJ-OE-CDFI-01','EUCALIPTOS OFFICES ','Entrance to Offices','LR1','V1','E1',1),('SN-171','CAJ-OE-CDFI-02','EUCALIPTOS OFFICES ','Office interior/ Passageway B','LR1','V1','E1',1),('SN-172','CAJ-OE-CDFI-03','EUCALIPTOS OFFICES ','Office interior/ Passageway A y D','LR1','V1','E1',1),('SN-173','CAJ-OE-CDFI-04','EUCALIPTOS OFFICES ','Office interior/ Passageway C y D','LR1','V1','E1',1),('SN-174','CAJ-OE-CDFI-05','EUCALIPTOS OFFICES ','Office interior/ Passageway C y B','LR1','V1','E1',1),('SN-175','CAJ-OE-CDFI-06','EUCALIPTOS OFFICES ','Meeting Room Passageway','LR1','V1','E1',1),('SN-176','CAJ-OE-CFE-01','EUCALIPTOS OFFICES ','Door to Parking ','LR1','V1','E1',1),('SN-177','CAJ-OE-CFE-02','EUCALIPTOS OFFICES ','Self-supporting Tower','LR1','V1','E1',1),('SN-178','CAJ-OE-CFE-03','EUCALIPTOS OFFICES ','Exterior OPA','LR1','V1','E1',1),('SN-179','CAJ-OE-CFE-04','EUCALIPTOS OFFICES ','Right side','LR1','V1','E1',1),('SN-180','CAJ-OE-CFE-05','EUCALIPTOS OFFICES ','Back side 1','LR1','V1','E1',1),('SN-181','CAJ-OE-CFE-06','EUCALIPTOS OFFICES ','Back side 2','LR1','V1','E1',1),('SN-182','CAJ-OE-CFE-07','EUCALIPTOS OFFICES ','Left side','LR1','V1','E1',1),('SN-183','CAJ-OE-CDFE-01','EUCALIPTOS OFFICES ','Vehicle Entry','LR1','V1','E1',1),('SN-184','CAJ-OE-CDFE-02','EUCALIPTOS OFFICES ','Vehicular Exit','LR1','V1','E1',1),('SN-185','CAJ-OE-CDFE-03','EUCALIPTOS OFFICES ','Checkpoint','LR1','V1','E1',1),('SN-186','CAJ-OE-CMSE-01 (1)','EUCALIPTOS OFFICES ','Front right side','LR1','V1','E1',1),('SN-187','CAJ-OE-CMSE-01 (2)','EUCALIPTOS OFFICES ','Front right side','LR1','V1','E1',1),('SN-188','CAJ-OE-CMSE-01 (3)','EUCALIPTOS OFFICES ','Front right side','LR1','V1','E1',1),('SN-189','CAJ-OE-CMSE-01 (4)','EUCALIPTOS OFFICES ','Front right side','LR1','V1','E1',1),('SN-190','CAJ-OE-CMSE-02 (1)','EUCALIPTOS OFFICES ','Front left side','LR1','V1','E1',1),('SN-191','CAJ-OE-CMSE-02 (2)','EUCALIPTOS OFFICES ','Front left side','LR1','V1','E1',1),('SN-192','CAJ-OE-CMSE-02 (3)','EUCALIPTOS OFFICES ','Front left side','LR1','V1','E1',1),('SN-193','CAJ-OE-CDFI-04','EUCALIPTOS OFFICES ','Office 3','LR1','V1','E1',1),('SN-194','CAJ-OE-CDFI-07','EUCALIPTOS OFFICES ','Reception','LR1','V1','E1',1),('SN-195','CAJ-OE-CDFI-08 ','EUCALIPTOS OFFICES ','OPA Interior','LR1','V1','E1',1),('SN-196','CAJ-OE-CMSI-01 (1)','EUCALIPTOS OFFICES ','Office interior/ Passageway E1','LR1','V1','E1',1),('SN-197','CAJ-OE-CMSI-01 (2)','EUCALIPTOS OFFICES ','Office interior/ Passageway  E1','LR1','V1','E1',1),('SN-198','CAJ-OE-CMSI-01 (3)','EUCALIPTOS OFFICES ','Office interior/ Passageway E1','LR1','V1','E1',1),('SN-199','CAJ-OE-CMSI-01 (4)','EUCALIPTOS OFFICES ','Office interior/ Passageway  E1','LR1','V1','E1',1),('SN-200','CAJ-OE-CMSI-02 (1)','EUCALIPTOS OFFICES ','Office interior/ Passageway  E2','LR1','V1','E1',1),('SN-201','CAJ-OE-CMSI-02 (2)','EUCALIPTOS OFFICES ','Office interior/ Passageway  E2','LR1','V1','E1',1),('SN-202','CAJ-OE-CMSI-02 (3)','EUCALIPTOS OFFICES ','Office interior/ Passageway  E2','LR1','V1','E1',1),('SN-203','CAJ-OE-CMSI-02 (4)','EUCALIPTOS OFFICES ','Office interior/ Passageway E2','LR1','V1','E1',1),('SN-204','YN-P-CC-CFE-01','YANACOCHA NORTE (DISCREET CAMERAS)','Inner tank valve 1','LR1','V1','E1',1),('SN-205','YN-P-CC-CFE-02','YANACOCHA NORTE (DISCREET CAMERAS)','Sink','LR1','V1','E1',1),('SN-206','YN-P-CC-CFE-03','YANACOCHA NORTE (DISCREET CAMERAS)','New coal storage','LR1','V1','E1',1),('SN-207','YN-P-CC-CFE-04','YANACOCHA NORTE (DISCREET CAMERAS)','Exchanger washing tank 1','LR1','V1','E1',1),('SN-208','YN-P-CC-CFE-05','YANACOCHA NORTE (DISCREET CAMERAS)','Exchanger washing tank 2','LR1','V1','E1',1),('SN-209','YN-P-CC-CFE-06','YANACOCHA NORTE (DISCREET CAMERAS)','Coal loading and unloading','LR1','V1','E1',1),('SN-210','YN-P-CC-CFE-07','YANACOCHA NORTE (DISCREET CAMERAS)','Access to control Run 3rd floor','LR1','V1','E1',1),('SN-211','YN-P-CC-CFE-08','YANACOCHA NORTE (DISCREET CAMERAS)','Inner tank valve 2','LR1','V1','E1',1),('SN-212','YN-P-CC-CFE-09','YANACOCHA NORTE (DISCREET CAMERAS)','Striping inner tank ','LR1','V1','E1',1),('SN-213','YN-P-CC-CFE-10','YANACOCHA NORTE (DISCREET CAMERAS)','Super rich solution tank 1','LR1','V1','E1',1),('SN-214','YN-P-CC-CFE-11','YANACOCHA NORTE (DISCREET CAMERAS)','Super rich solution tank ','LR1','V1','E1',1),('SN-215','YN-P-CC-CMSE-01(1)','YANACOCHA NORTE (DISCREET CAMERAS)','Rich and super rich solution ','LR1','V1','E1',1),('SN-216','YN-P-CC-CMSE-01(2)','YANACOCHA NORTE (DISCREET CAMERAS)','Rich and super rich tank solution ','LR1','V1','E1',1),('SN-217','YN-P-CC-CMSE-01(3)','YANACOCHA NORTE (DISCREET CAMERAS)','Rich and super rich tank solution ','LR1','V1','E1',1),('SN-218','YN-P-CC-CMSE-01(4)','YANACOCHA NORTE (DISCREET CAMERAS)','Rich and super rich tank solution ','LR1','V1','E1',1),('SN-219','YN-P-CC-CMSE-02(1)','YANACOCHA NORTE (DISCREET CAMERAS)','Activated coal discharge','LR1','V1','E1',1),('SN-220','YN-P-CC-CMSE-02(2)','YANACOCHA NORTE (DISCREET CAMERAS)','Activated coal discharge','LR1','V1','E1',1),('SN-221','YN-P-CC-CMSE-02(3)','YANACOCHA NORTE (DISCREET CAMERAS)','Activated coal discharge','LR1','V1','E1',1),('SN-222','YN-P-CC-CMSE-02(4)','YANACOCHA NORTE (DISCREET CAMERAS)','Activated coal discharge','LR1','V1','E1',1),('SN-223','YN-P-CC-CDFI-01','YANACOCHA NORTE (DISCREET CAMERAS)','Zinc warehouse','LR1','V1','E1',1),('SN-224','YN-P-MC-CMSI-01(1)','YANACOCHA NORTE (DISCREET CAMERAS)','Precoa','LR1','V1','E1',1),('SN-225','YN-P-MC-CMSI-01(2)','YANACOCHA NORTE (DISCREET CAMERAS)','Precoa','LR1','V1','E1',1),('SN-226','YN-P-MC-CMSI-01(3)','YANACOCHA NORTE (DISCREET CAMERAS)','Precoa','LR1','V1','E1',1),('SN-227','YN-P-MC-CMSI-01(4)','YANACOCHA NORTE (DISCREET CAMERAS)','Inner tank valve 2','LR1','V1','E1',1),('SN-228','YN-P-F-CDFE-01','YANACOCHA NORTE (DISCREET CAMERAS)','Garbage collection','LR1','V1','E1',1),('SN-229','LQ-AC-CDPTZE-01','LQ CENTRAL WAREHOUSE ','Side of the SS.EE (electric power substation)','LR1','V1','E1',1),('SN-230','LQ-AC-CDPTZE-02','LQ CENTRAL WAREHOUSE ','AWTP Corner','LR1','V1','E1',1),('SN-231','LQ-AC-CFE-01','LQ CENTRAL WAREHOUSE ','Main Entrance','LR1','V1','E1',1),('SN-232','LQ-AC-CFI-01','LQ CENTRAL WAREHOUSE ','Interior zone A','LR1','V1','E1',1),('SN-233','LQ-AC-CFI-02','LQ CENTRAL WAREHOUSE ','Dispatch Area','LR1','V1','E1',1),('SN-234','LQ-AC-CFI-03','LQ CENTRAL WAREHOUSE ','Stairs to the 2nd Floor','LR1','V1','E1',1),('SN-235','LQ-AC-CDPTZI-01','LQ CENTRAL WAREHOUSE ','Dispatch office','LR1','V1','E1',1),('SN-236','LQ-AC-CPTZI-01','LQ CENTRAL WAREHOUSE ','Interior zone B','LR1','V1','E1',1),('SN-237','LQ-AC-CPTZI-02','LQ CENTRAL WAREHOUSE ','Interior zone C','LR1','V1','E1',1),('SN-238','LQ-AC-CPTZI-03','LQ CENTRAL WAREHOUSE ','Interior zone D','LR1','V1','E1',1),('SN-239','LQ-AC-CPTZI-04','LQ CENTRAL WAREHOUSE ','Interior zone E','LR1','V1','E1',1),('SN-240','C-PO-CPTZE-01',' CARACHUGO 14','Right side','LR1','V1','E1',1),('SN-241','C-PO-CPTZE-02',' CARACHUGO 14','Main entrance 2','LR1','V1','E1',1),('SN-242','C-PO-CPTZE-03',' CARACHUGO 14','Back side','LR1','V1','E1',1),('SN-243','C-PO-CPTZE-04','CARACHUGO 14','Left side','LR1','V1','E1',1),('SN-244','C-PO-CPTZE-05',' CARACHUGO 14','Main entrance 3','LR1','V1','E1',1),('SN-245','YN-T-CM-CPTZE-01','YANACOCHA NORTE','Mirador Hill Tower','LR1','V1','E1',1),('SN-246','C-PSD-CPTZE-01','CARACHUGO 14','Main entrance','LR1','V1','E1',1),('SN-247','Prueba02','Pruhyeba','UPDATE EXITOSO','LR1','V1','E1',0),('SN-248','Prueba','Fideo','Shania','LR1','V2','E2',0),('SN-249','dede','deed','ed','LR1','V1','E2',0),('SN-250','YNP','Prueba','Gym','LR1','V1','E3',0),('SN-251','YNP','Prueba','Gym','LR1','V1','E3',0),('SN-252','YNP','Re','Gym','LR2','V2','E2',1),('SN-253','YNP','Redireccionar','Gym','LR2','V2','E2',1);
/*!40000 ALTER TABLE `securitynetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securityradio`
--

DROP TABLE IF EXISTS `securityradio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securityradio` (
  `idSecurityRadios` varchar(10) NOT NULL,
  `radioId` varchar(15) DEFAULT NULL,
  `newSerie` varchar(50) DEFAULT NULL,
  `activeNew` varchar(50) DEFAULT NULL,
  `assignmentDate` date DEFAULT NULL,
  `renewalPuchase` varchar(50) DEFAULT NULL,
  `radioAlias` varchar(100) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `radioType` varchar(30) DEFAULT NULL,
  `radioUser` varchar(250) DEFAULT NULL,
  `distribution` varchar(50) DEFAULT NULL,
  `specificLocation` varchar(300) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idSecurityRadios`),
  KEY `R_26` (`idStatus`),
  CONSTRAINT `securityradio_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securityradio`
--

LOCK TABLES `securityradio` WRITE;
/*!40000 ALTER TABLE `securityradio` DISABLE KEYS */;
INSERT INTO `securityradio` VALUES ('SRI-001','810136','203TUX0319','SAPER0420','2020-07-30','Renewal','Alfa Ampato','DGM 8500e','BASE','Jos? Pereyra Briones','CPA','Yanacocha North access control','E1',1),('SRI-002','810331','203TUX0320','SAPER0442','2021-07-30','Renewal','Alfa Ballesta','DGM 8500e','BASE','Jos? Pereyra Briones','CPA','Pampa Larga Plant access control ','E1',1),('SRI-003','805001','126TVD1184','SAPER0192','2020-02-27','Renewal','Alfa Cepeda','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Quinua Complex Office','E1',1),('SRI-004','805003','126TVD1383','SAPER0194','2020-02-27','Renewal','Alfa Esparta','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Km 31 pole Santa Marta hill','E1',1),('SRI-005','810332','203TUZ0002','SAPER0443','2021-07-31','Renewal','Alfa Ubinas','DGM 8500e','BASE','Jos? Pereyra Briones','CPA','La Quinua Coal Plant access control','E1',1),('SRI-006','805085','203TUZ0008','SAPER0504','2020-02-27','Renewal','Apache 01-M6I923','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-007','805072','203TUX0186','SAPER0500','2020-02-27','Renewal','Apache 03-M6I918','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-008','805008','126TVD1174','SAPER0199','2020-02-27','Renewal','Apache 04','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-009','805039','126TVD1240','SAPER0237','2020-02-27','Renewal','Apache 05','DGP 8550e','HANDY','Guillermo Moscol','CPA','Critical Production Area patrol','E1',1),('SRI-010','805067','203TUX0298','SAPER0499','2020-02-27','Renewal','Apache 05-M6I940','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','Critical Production Area patrol','E1',1),('SRI-011','805069','126TVD1220','SAPER0254','2020-02-27','Renewal','Apache 08','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol ','E1',1),('SRI-012','805011','126TVD1145','SAPER0202','2020-02-27','Renewal','Apache 09','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol ','E1',1),('SRI-013','805002','126TVD1212','SAPER0193','2020-02-27','Renewal','Apache 1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Cerro Negro','E1',1),('SRI-014','805132','126TVD1399','SAPER0308','2020-02-27','Renewal','Apache 10','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol ','E1',1),('SRI-015','805109','126TVD1402','SAPER0285','2020-02-27','Renewal','Apache 11','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol','E1',1),('SRI-016','805028','126TVD1228','SAPER0218','2020-02-27','Renewal','Apache 12','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol','E1',1),('SRI-017','805009','126TVD1157','SAPER0200','2020-02-27','Renewal','Apache 14','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol ','E1',1),('SRI-018','805010','126TVD0745','SAPER0201','2020-02-27','Renewal','Apache 15','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone patrol ','E1',1),('SRI-019','805042','203TUX0303','SAPER0487','2020-02-27','Renewal','Apache-M1Y945','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','Conga Project Service','E1',1),('SRI-020','805100','126TVD0879','SAPER0276','2020-02-27','Renewal','Apache 19','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui zone  patrol','E1',1),('SRI-021','805012','126TVD1210','SAPER0203','2020-02-27','Renewal','Apache 21','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Antonio zone patrol','E1',1),('SRI-022','805140','203TUZ0005','SAPER0509','2020-02-27','Renewal','Apache 4-M6I944','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-023','805014','126TVD1214','SAPER0205','2020-02-27','Renewal','Apache 6','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-024','805007','126TVD1202','SAPER0198','2020-02-27','Renewal','Apache 7','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','km 43 - Pampa Larga Viewpoint ','E1',1),('SRI-025','805015','126TVD0864','SAPER0206','2020-02-27','Renewal','Apache 7','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-026','805016','126TVD1169','SAPER0207','2020-02-27','Renewal','Apache 9','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-027','805063','203TUX0199','SAPER0498','2020-02-27','Renewal','Apache12','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','Camp km 52','E1',1),('SRI-028','805087','203TUX0350','SAPER0505','2020-02-27','Renewal','Apache 16','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','Camp km 52','E1',1),('SRI-029','805074','203TUX0196','SAPER0501','2020-02-27','Renewal','Apache 2-M6I925','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','La Quinua zone patrol ','E1',1),('SRI-030','820078','126TVD0578','SAPER0738','2021-09-28','Renewal','Atalaya','DGP 8550e','HANDY','Guillermo Moscol','CPA','Control Certer - Critical Production Area Yanacocha North / inoperative radio','E1',1),('SRI-031','805170','126TWF1569','SAPER0804','2021-11-19','Renewal','Audi','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','CCA PERU contractor','E1',1),('SRI-032','805023','126TVD1205','SAPER0213','2020-02-27','Renewal','Bahia 1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Securitas Bahia Monitoring Center','E1',1),('SRI-033','805038','203TUX0300','SAPER0486','2020-02-27','Renewal','Bahia 2','DGM 8500e','BASE','Viterman Bustamante Bautista','BahÑa','Securitas Bahia Monitoring Center','E1',1),('SRI-034','805045','203TUX0333','SAPER0488','2020-02-27','Renewal','Bahia 3','DGM 8500e','BASE','Viterman Bustamante Bautista','Services','Securitas Bahia Monitoring Center','E1',1),('SRI-035','805024','126TVD1014','SAPER0214','2020-02-27','Renewal','Ballesta ','DGP 8550e','HANDY','Guillermo Moscol','CPA','Pampa Larga Plant checkpoint','E1',1),('SRI-036','805025','126TVD0796','SAPER0215','2020-02-27','Renewal','C-1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Shelter Antenna  - Conga','E1',1),('SRI-037','805032','126TVD1301','SAPER0232','2020-02-27','Renewal','C-5','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','km 6.5 Conga access control','E1',1),('SRI-038','805037','126TVD1225','SAPER0236','2020-02-27','Renewal','Camana','DGP 8550e','HANDY','Guillermo Moscol','CPA','Pampa Larga Carbon plant','E1',1),('SRI-039','805167','126TUK3864','SAPER0783','2021-11-19','Renewal','Camaro 01','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Knight Piesold contractor - La Quinua Pad','E1',1),('SRI-040','805160','203TUX0233','SAPER0571','2020-02-27','Renewal','CC9','DGM 8500e','BASE','Jos? Pereyra Briones','Services','','E1',1),('SRI-041','805035','126TVD1242','SAPER0235','2020-02-27','Renewal','CCA Peru','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Securitas manager','E1',1),('SRI-042','805133','126TVD1329','SAPER0309','2020-02-27','Renewal','CCA Peru','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','CCA PERU Contractor','E1',1),('SRI-043','805055','203TUX0206','SAPER0492','2020-02-27','Renewal','CCS 01','DGM 8500e','BASE','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Supervision','E1',1),('SRI-044','805056','203TUX0228','SAPER0493','2020-02-27','Renewal','CCS 02','DGM 8500e','BASE','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Hydra Operator ','E1',1),('SRI-045','805059','203TUX0188','SAPER0494','2020-02-28','Renewal','CCS 05','DGM 8500e','BASE','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Operator 3','E1',1),('SRI-046','805061','203TUX0241','SAPER0496','2020-02-28','Renewal','CCS 07','DGM 8500e','BASE','Jos? Pereyra Briones','Security Control Center ','Security Control Center / General Manager','E1',1),('SRI-047','805062','203TUX0246','SAPER0497','2020-02-28','Renewal','CCS 08','DGM 8500e','BASE','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Operator 2','E1',1),('SRI-048','805057','126TVD1249','SAPER0248','2020-02-28','Renewal','CCS cont 1','DGP 8550e','HANDY','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Portable 1 Contingency','E1',1),('SRI-049','805058','126TVD0561','SAPER0249','2020-02-28','Renewal','CCS cont 2','DGP 8550e','HANDY','Jos? Pereyra Briones','Security Control Center ','Security Control Center / Portable 2 Contingency','E1',1),('SRI-050','805043','126TVD1385','SAPER0240','2020-02-27','Renewal','Cepeda','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua Complex Offices','E1',1),('SRI-051','805156','126TVV1919','SAPER0720','2020-02-27','Renewal','Cerro Dorado','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Cerro Dorado Contractor','E1',1),('SRI-052','805021','126TVD1138','SAPER0211','2020-02-27','Renewal','CH-13','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Conga Carachugo warehouse','E1',1),('SRI-053','805044','126TVD0453','SAPER0241','2020-02-27','Renewal','Chachani','DGP 8550e','HANDY','Guillermo Moscol','RRT','Gold Mill Plant (Inner round)','E1',1),('SRI-054','805095','126TVD1241','SAPER0272','2020-02-27','Renewal','Charlie','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 52 Camp main access control','E1',1),('SRI-055','805026','126TVD1126','SAPER0216','2020-02-27','Renewal','Charlie 11','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Conga km 24.5 warehouse','E1',1),('SRI-056','805101','126TVD1221','SAPER0277','2020-02-27','Renewal','Chepen ','DGP 8550e','HANDY','Jos? Pereyra Briones','CPA','Yanacocha North Plant external perimeter','E1',1),('SRI-057','805020','126TVD0868','SAPER0210','2020-02-27','Renewal','Chimu','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Carachugo 14 Operations wells platform','E1',1),('SRI-058','805048','126TVD1386','SAPER0244','2020-02-27','Renewal','Chincha','DGP 8550e','HANDY','Guillermo Moscol','CPA','China Linda lime plant','E1',1),('SRI-059','805049','126TVD0676','SAPER0245','2020-02-27','Renewal','Chiquitoy','DGP 8550e','HANDY','Guillermo Moscol','CPA','WOX  LQ 8 plant','E1',1),('SRI-060','805053','126TVD0984','SAPER0246','2020-02-27','Renewal','Chof Admon Conga','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Conga ','E1',1),('SRI-061','805054','126TVD1375','SAPER0247','2020-02-27','Renewal','Chof Admon Contr','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 52 zone, relieve','E1',1),('SRI-062','805064','126TVD1067','SAPER0250','2020-02-27','Renewal','Chof Admon KM52','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 52 zone, relieve','E1',1),('SRI-063','805065','126TVD1118','SAPER0251','2020-02-27','Renewal','Chof Admon LQ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 37  Camp, relieve','E1',1),('SRI-064','805066','126TVD0930','SAPER0252','2020-02-27','Renewal','Chof Admon RRT','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Km 37  Camp, relieve','E1',1),('SRI-065','805147','126TVD1405','SAPER0322','2020-02-27','Renewal','Collotan 02','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Collotan contractor','E1',1),('SRI-066','805127','126TVD0566','SAPER0303','2020-02-27','Renewal','Collotan 03','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Collotan Contractor','E1',1),('SRI-067','805091','126TUV1159','SAPER0269','2020-02-27','Renewal','Coloma','DGP 8550e','HANDY','Guillermo Moscol','CPA','China Linda Plant','E1',1),('SRI-068','805013','126TVD1302','SAPER0204','2020-02-27','Renewal','Con Collotan 01','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Collotan Services','E1',1),('SRI-069','805111','126TVD1283','SAPER0287','2020-02-27','Renewal','ConLQ 01','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Consorcio La Quinua Contractor','E1',1),('SRI-070','805040','126TVD1307','SAPER0238','2020-02-27','Renewal','Cons Chaqui 03','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Consorcio Chaquicocha Contractor','E1',1),('SRI-071','805099','126TVD0705','SAPER0275','2020-02-27','Renewal','ConsChaquiLift9','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Consorcio Chaquicocha Contractor','E1',1),('SRI-072','805154','126TVV1913','SAPER0718','2020-02-27','Renewal','ConsLQ PadYan1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Consorcio La Quinua Contractor','E1',1),('SRI-073','805077','126TVD1003','SAPER0260','2020-02-27','Renewal','Consorcio LQ 02','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Consorcio La Quinua Contractor','E1',1),('SRI-074','805090','126TUV3252','SAPER0268','2020-02-27','Renewal','Ctrl Huandoy','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Main access control to Mine','E1',1),('SRI-075','805031','126TVD1317','SAPER0231','2020-02-27','Renewal','Danubio ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 37 Camp  access control','E1',1),('SRI-076','805163','126TVV1873','SAPER0801','2021-09-27','Renewal','El Aliso 02','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Yanacocha North Pad - upper part of Doly water heron ','E1',1),('SRI-077','805110','126TVD1393','SAPER0286','2020-02-27','Renewal','Eros','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua pad expansion - Canta perimeter channel','E1',1),('SRI-078','805076','126TVD1196','SAPER0259','2020-02-27','Renewal','Fariseo','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Fariseo Security Post was desactivated on 10-01-2022, the radio was delivered to Mr. Edu Camacho Silva.','E1',1),('SRI-079','805162','126TVV2041','SAPER0800','2021-11-19','Renewal','Ferrari','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','SG Quishuar- Hooper - La Quinua','E1',1),('SRI-080','805071','126TVD1040','SAPER0256','2020-02-27','Renewal','Fobos','DGP 8550e','HANDY','Guillermo Moscol','CPA','Critical Production Area Security post','E1',1),('SRI-081','805078','126TUV2077','SAPER0261','2020-02-28','Renewal','G-2','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','San Nicolas - Conga access control','E1',1),('SRI-082','805080','126TUV1964','SAPER0262','2022-09-19','Renewal','Paijan','DGP 8550e','HANDY','Viterman Bustamante Bautista','CPA','Agua Blanca - Conga access control','E1',1),('SRI-083','805081','126TUV3795','SAPER0263','2020-02-27','Renewal','G-4','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Santa Rosa - Conga access control','E1',1),('SRI-084','805082','126TUV3585','SAPER0264','2020-02-27','Renewal','G-5','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Namococha - Conga access control','E1',1),('SRI-085','805086','126TUV4337','SAPER0266','2020-02-27','Renewal','Gato 01','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Substation TR-04 5 Maqui Maqui lagoons.','E1',1),('SRI-086','805089','126TUV4206','SAPER0267','2020-02-27','Renewal','Gato 02','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','La Quinua South Gravas Viewpoint - La Quinua Tigresa Ramp','E1',1),('SRI-087','805134','126TVD1036','SAPER0310','2020-02-27','Renewal','Gato 03','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Upper part of La Quinua intersection ','E1',1),('SRI-088','805137','126TVD0529','SAPER0313','2020-02-27','Renewal','Gato 04','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Upper part of La Pajuela subestation, Orion intersection.','E1',1),('SRI-089','805161','126TUV4493','SAPER0270','2020-02-27','Renewal','Gato 06','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Camp km 37','E1',1),('SRI-090','805168','126TUV2209','SAPER0780','2021-11-19','Renewal','Jaguar01','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Consorcio La Quinua contractor','E1',1),('SRI-091','805070','126TVD1135','SAPER0255','2020-02-27','Renewal','Gato 4','DGP 8550e','HANDY','Guillermo Moscol','Services','Yancocha Norte ','E1',1),('SRI-092','805136','126TVD0918','SAPER0312','2020-02-27','Renewal','Joweers','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Vanesa La Quinua dump','E1',1),('SRI-093','805171','126TWF1611','SAPER0802','2021-11-19','Renewal','Lexus','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Consorcio Combayo  La Quinua contractor','E1',1),('SRI-094','805094','126TVD1374','SAPER0271','2020-02-27','Renewal','Liebre','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Verification of pipes from Buffer Pond to Francesa pool ','E1',1),('SRI-095','805158','126TVV1845','SAPER0722','2020-02-27','Renewal','M-05','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Pampa Larga Plant entrance control ','E1',1),('SRI-096','805097','126TVD1403','SAPER0273','2020-02-27','Renewal','Maserati 01','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 45 Warehouse - Deyfor Contractor - Sulfides Project ','E1',1),('SRI-097','805041','126TVD1271','SAPER0239','2020-02-27','Renewal','Maserati 02','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Km 45 Warehouse - Deyfor Contractor - Sulfides Project ','E1',1),('SRI-098','805102','126TVD0989','SAPER0278','2020-02-27','Renewal','M?ximo 1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Yanacocha North warehouse access control','E1',1),('SRI-099','805103','126TVD1133','SAPER0279','2020-02-27','Renewal','M?ximo 2','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Yanacocha North warehouse access control','E1',1),('SRI-100','805104','126TVD1363','SAPER0280','2020-02-27','Renewal','Mayoral Conga 1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Halcon - Quengo Rio','E1',1),('SRI-101','805105','126TVD0603','SAPER0281','2020-02-27','Renewal','Mayoral Conga 2','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Tigre - San Nicolas','E1',1),('SRI-102','805106','126TVD0677','SAPER0282','2020-02-27','Renewal','Mayoral Conga 3','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Van Dan - Misacocha','E1',1),('SRI-103','805107','126TVD0921','SAPER0283','2020-02-27','Renewal','Mayoral Conga 4','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Toro - Laguna Perol','E1',1),('SRI-104','805108','126TVD1332','SAPER0284','2020-02-27','Renewal','Mayoral Conga 5','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Oso - Santa Rosa','E1',1),('SRI-105','805112','126TVD1349','SAPER0288','2020-02-27','Renewal','Mayoral Yan 1','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Mono - Maqui Maqui','E1',1),('SRI-106','805113','126TVD1254','SAPER0289','2020-02-27','Renewal','Mayoral Yan 10','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Oso - Km 49','E1',1),('SRI-107','805114','126TVD1337','SAPER0290','2020-02-27','Renewal','Mayoral Yan 11','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Tigre - Km 45','E1',1),('SRI-108','805115','126TVD0805','SAPER0291','2020-02-27','Renewal','Mayoral Yan 12','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Puma - Km 39','E1',1),('SRI-109','805116','126TVD0750','SAPER0292','2020-02-27','Renewal','Mayoral Yan 2','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Zorzal - Km 42','E1',1),('SRI-110','805117','126TVD0947','SAPER0293','2020-02-27','Renewal','Mayoral Yan 3','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Canario - Cerro Negro','E1',1),('SRI-111','805118','126TVD0652','SAPER0294','2020-02-27','Renewal','Mayoral Yan 4','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Loro - Quilish','E1',1),('SRI-112','805119','126TVD0508','SAPER0295','2020-02-27','Renewal','Mayoral Yan 5','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Tuco - Dique Rio Grande','E1',1),('SRI-113','805121','126TVD1143','SAPER0297','2020-02-27','Renewal','Mayoral Yan 7','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Huanchaco - Dique El Azufre','E1',1),('SRI-114','805122','126TVD1099','SAPER0298','2020-02-27','Renewal','Mayoral Yan 8','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Halcon - San Jose','E1',1),('SRI-115','805123','126TVD1083','SAPER0299','2020-02-27','Renewal','Mayoral Yan 9','DGP 8550e','HANDY','Viterman Bustamante Bautista','Mayorales','Gavilan - China Linda','E1',1),('SRI-116','805152','126TVV1848','SAPER0716','2020-02-27','Renewal','Mazamari','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services',' La Quinua Dam','E1',1),('SRI-117','805166','126TWF1663','SAPER0793','2021-11-19','Renewal','Mazda 01','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','VyC Quishuar Contractor - Noemi Dump - Cerro Negro','E1',1),('SRI-118','805126','126TVD1257','SAPER0302','2020-02-27','Renewal','Mazda02','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','VyC Quishuar contractor - PLS La Quinua Top Soil ','E1',1),('SRI-119','805098','126TVD0958','SAPER0274','2020-02-27','Renewal','Mike 14','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui Security post - San Jose Reservoir','E1',1),('SRI-120','805243','203TUX0316','SAPER0419','2020-02-27','Renewal','Misti','DGM 8500e','BASE','Jos? Pereyra Briones','Services','Gold Mill Plant access control','E1',1),('SRI-121','805124','126TVD1103','SAPER0300','2020-02-27','Renewal','Misti ','DGP 8550e','HANDY','Guillermo Moscol','CPA','Gold Mill Plant main access control','E1',1),('SRI-122','805159','126TVV1886','SAPER0721','2020-02-27','Renewal','Nina 02','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Yanacocha North Polvorines','E1',1),('SRI-123','805017','126TVD1075','SAPER0208','2020-02-27','Renewal','Nina 1 ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Polvorines main access','E1',1),('SRI-124','805135','126TVD0925','SAPER0311','2020-02-27','Renewal','Oscar 01 ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 24.5 access control','E1',1),('SRI-125','805005','126TVD1409','SAPER0196','2020-02-27','Renewal','Oscar 07','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Buffer Pond - Carachugo','E1',1),('SRI-126','805129','126TVD0669','SAPER0305','2020-02-27','Renewal','Oscar 09','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Sahara II La Quinua subestation','E1',1),('SRI-127','805084','126TUV3402','SAPER0265','2020-02-27','Renewal','PCtrl Orion','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Isotanks Pad La Quinua observer access control','E1',1),('SRI-128','805075','126TVD1147','SAPER0258','2020-02-27','Renewal','Pluton','DGP 8550e','HANDY','Guillermo Moscol','ACP','Pampa Larga','E1',1),('SRI-129','805030','126TVD0851','SAPER0220','2020-02-27','Renewal','Pongo ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Conga, China Linda access control','E1',1),('SRI-130','805138','126TVD1029','SAPER0314','2020-02-27','Renewal','Pucara','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','La Quinua Central Warehouse','E1',1),('SRI-131','805139','126TVD1065','SAPER0315','2020-02-27','Renewal','Puma ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Securitas Bahia Monitoring Center','E1',1),('SRI-132','805141','126TVD0865','SAPER0316','2020-02-27','Renewal','Quilca','DGP 8550e','HANDY','Guillermo Moscol','CPA','La Quinua Coal Plant','E1',1),('SRI-133','805142','126TVD1102','SAPER0317','2020-02-27','Renewal','Santa ','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Upper part of Km-39 road - Km-39.5 pipe ','E1',1),('SRI-134','805143','126TVD0443','SAPER0318','2020-02-27','Renewal','Satipo','DGP 8550e','HANDY','Guillermo Moscol','CPA','La Quinua Metalurgic Laboratory','E1',1),('SRI-135','805173','126TUV1961','SAPER0781','2021-11-19','Renewal','Subaru','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Tecnosanpf contractor','E1',1),('SRI-136','805000','126TVD1342','SAPER0191','2020-02-27','Renewal','Sup Acp Este','DGP 8550e','HANDY','Guillermo Moscol','CPA','Pampa Larga supervisor','E1',1),('SRI-137','805146','126TVD1272','SAPER0321','2020-02-27','Renewal','Sup ACP Oeste','DGP 8550e','HANDY','Guillermo Moscol','CPA','Yanacocha North Plant Supervisor','E1',1),('SRI-138','805151','126TVV1892','SAPER0715','2020-02-27','Renewal','Sup General','DGP 8550e','HANDY','Guillermo Moscol','CPA','All Operation','E1',1),('SRI-139','805128','126TVD0715','SAPER0304','2020-02-27','Renewal','Sup Op Acp','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Operations supervisor','E1',1),('SRI-140','805148','126TVD0727','SAPER0323','2020-02-27','Renewal','Sup SE Conga','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Conga project ','E1',1),('SRI-141','805149','126TVD1356','SAPER0324','2020-02-27','Renewal','Sup SE KM52','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Maqui Maqui Supervision - km 52','E1',1),('SRI-142','802030','126TVV1930','SAPER0697','2020-02-27','Renewal','Sup SE LQ','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Camp km 37','E1',1),('SRI-143','805165','126TWF1731','SAPER0790','2021-11-19','Renewal','Sup Sulfuros','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Sulfides Projects Supervision ','E1',1),('SRI-144','805169','126TWF1655','SAPER0803','2021-11-19','Renewal','Tesla','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','JSJ Quishuar contractor','E1',1),('SRI-145','805033','126TVD1218','SAPER0233','2020-02-27','Renewal','Titan ','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Interior of km 37 camp','E1',1),('SRI-146','805153','126TVV1931','SAPER0717','2020-02-27','Renewal','Ubinas','DGP 8550e','HANDY','Guillermo Moscol','CPA','La Quinua Carbon Plant access','E1',1),('SRI-147','805027','126TVD1178','SAPER0217','2020-02-27','Renewal','Vilcanota','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Katia road - Carachugo','E1',1),('SRI-148','805068','126TVD0640','SAPER0253','2020-02-27','Renewal','Viru','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Km 52 Camp relieve','E1',1),('SRI-149','805157','126TVV1996','SAPER0723','2020-02-27','Renewal','Yankee 10','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Rejo River Dam','E1',1),('SRI-150','805029','126TVD1117','SAPER0219','2020-02-27','Renewal','Yopla Marcel Con','DGP 8550e','HANDY','Jos? Pereyra Briones','Services','Marcel Yopla contractor','E1',1),('SRI-151','805004','126TVD1170','SAPER0195','2020-02-27','Renewal','Zeus','DGP 8550e','HANDY','Viterman Bustamante Bautista','RRT','Platform B Plant ','E1',1),('SRI-152','805034','126TVD1171','SAPER0234','2020-02-27','Renewal','C-6','DGP 8550e','HANDY','Viterman Bustamante Bautista','Services','Huairamachay meteorological antenna','E1',1),('SRI-153','805006','126TVD0974','SAPER0197','2020-02-27','Renewal','Ampato','DGP 8550e','Handy','Guillermo Moscol','Services','Eucaliptos  Office','E1',1),('SRI-154','805046','126TVD1294','SAPER0242','2020-02-27','Renewal','ChavÑn ','DGP 8550e','Handy','Viterman Bustamante Bautista','Services','Eucaliptos  Office','E1',1),('SRI-155','805120','126TVD1097','SAPER0296','2020-02-27','Renewal','Mayoral Yan 6','DGP 8550e','Handy','Viterman Bustamante Bautista','Mayorales','Conejo - Reservorio San Jose ','E1',1),('SRI-156','805131','126TVD1206','SAPER0307','2020-02-27','Renewal','Paijan','DGP 8550e','Handy','Guillermo Moscol','Services','Eucaliptos  Office','E1',1),('SRI-157','805172','126TUV2120','SAPER0782','2020-02-27','Renewal','Securitas 08','DGP 8550e','Handy','Jos? Pereyra Briones','Services','Eucaliptos  Office','E1',1),('SRI-158','805047','126TVD1315','SAPER0243','2020-02-27','Renewal','Chepen ','DGP 8550e','Handy','Guillermo Moscol','Services','Eucaliptos  Office','E1',1),('SRI-159','OWEN','pmjo','Yes','2024-02-27','OWEN','Wily','Yes','E1','OWEN','Wily','Yes','E1',1),('SRI-160','gtt','strgting','strgting','2024-04-18','gt','string','string','string','string','string','string','E1',1);
/*!40000 ALTER TABLE `securityradio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smartpadlocks`
--

DROP TABLE IF EXISTS `smartpadlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smartpadlocks` (
  `idSmart` varchar(10) NOT NULL,
  `codeSE` varchar(18) DEFAULT NULL,
  `smartLockModel` varchar(100) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `department` varchar(150) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `sponsorName` varchar(200) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `idVisualConecction` varchar(25) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idSmart`),
  KEY `R_18` (`idVisualConecction`),
  KEY `R_19` (`idStatus`),
  CONSTRAINT `smartpadlocks_ibfk_1` FOREIGN KEY (`idVisualConecction`) REFERENCES `visualconecctionscc` (`idVisualConecction`),
  CONSTRAINT `smartpadlocks_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartpadlocks`
--

LOCK TABLES `smartpadlocks` WRITE;
/*!40000 ALTER TABLE `smartpadlocks` DISABLE KEYS */;
INSERT INTO `smartpadlocks` VALUES ('SEP-001','4063605728','G-400','RICSAM','Processes','Ex Trinchera baja parking -sky blue container welding equipment storage.','Manuel Marcapura Vargas ','976222592','V1','E1',1),('SEP-002','74054506876','G-420N','AYS CONTRATISTAS','Power and Energy','A&S contractor company platform - container 03 storages.','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-003','26040067214','G-400','NEWMONT YANACOCHA','Blasting ','Nitrate court - materials storage container.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-004','88056140207','G-420N','EL ALISO','Leaching Processes ','Ex Trinchera baja parking - green Container  Extruders Equipment Warehouse.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-005','88056101449','G-420N','EXSA','Blasting ','Nitrate court Exsa offices - Container operations office.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-006','26040091594','G-400','NEWMONT YANACOCHA','Mine Operations','La Quinua roads warehouse - Plotting room office container.','Victor Morales Vizcarra','942267247','V1','E1',1),('SEP-007','88055485660','G-420N','SAEG PERU','Maintenance Processes','Los Espejos La Quinua  - office container.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-008','74054536865','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking  -  extruders blue container 03 storage.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-009','4063528748','G-400','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-010','65055335433','G-420N','NEWMONT YANACOCHA','Processes ','Analitycal Laboratory - Materials container 01 / MYSRL Chemical Processes','Julio Vasquez Chanduvi','991955334','V1','E1',1),('SEP-011','57054305588','G-420N','NEWMONT YANACOCHA','Leaching Processes','La Quinua Leaching Warehouse - welding warehouse.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-012','57054013760','G-420N','BIDDLE INC','Water Operations ','La Quinua Watering warehouse - Container  Mine Warehouse 03.','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-013','88056139407','G-420N','NEWMONT YANACOCHA','Leaching Processes','La Quinua Leaching warehouse - Personal protective equipment (PPE) warehouse container  (interior of cage).','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-014','26040092063','G-400','NEWMONT YANACOCHA','Drilling ','Coring rods field - coring drill rods main gate.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-015','26040055698','G-400','EL ALISO','Leaching Processes','Ex Trinchera baja parking  - yellow Container - Hydraulic pump warehouse.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-016','26040093418','G-400','JOWEERS','Project Sustainable Capital ','Vanessa Parking  - warehouse 08 Fuel and lubricant container.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-017','4063426976','G-420N','RICSAM','Processes','Ex Trinchera baja parking - blue steel container - electrical panels warehouse.','Manuel Marcapura Vargas ','976222592','V1','E1',1),('SEP-018','4063481781','G-400','MAXLIM','General Services','Km 52 Camp - blue container - hotel warehouse  01 COD MULT 2393.','Jessica Barrueto Salas','976222066','V1','E1',1),('SEP-019','26040053511','G-400','NEWMONT YANACOCHA','Power and Energy','LA PAJUELA Thermal Station- container COD MULT 2871.','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-020','88055895785','G-420N','EL ALISO','Leaching Processes','Ex Trinchera baja parking- red container - thermofusion equipment warehouse .','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-021','88056098496','G-420N','BECHTEL','Sulfides Project','Km 52 Camp - MULT2091 Container.','Mario Adrianzen Feijoo ','976223735','V1','E1',1),('SEP-022','30045867323','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone - Powder magazine 03 container door 2 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-023','57054010634','G-420N','DEYFOR','General Services','Km 37 Camp   - Blue container warehouse 02 door 02.','Jose Pastor Cardenas','976228002','V1','E1',1),('SEP-024','30045747087','G-420N','NEWMONT YANACOCHA','Leaching Processes','LQ Leaching warehouse -  C15 Container.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-025','4063497753','G-400','COLLOTAN SA','Sulfides Project','Serpentin La Quinua  - tools wrehouse container.','Mario Adrianzen Feijoo ','976223735','V1','E1',1),('SEP-026','4063512791','G-400','DIVINO SALVADOR','Water Planning and Mine Closure','Seeds warehouse (KM 39) -  warehouse container 05 ','Augusto Urteaga Becerra','976228426','V1','E1',1),('SEP-027','4063482193','G-420N','BECHTEL','Sulfides Project','Km 52 Camp - red container.','Mario Adrianzen Feijoo','976223735','V1','E1',1),('SEP-028','74054518111','G-420N','NEWMONT YANACOCHA','Information Technology','Eucaliptos Office Yanacocha Mine - Container 05 IT','Jacob Tejada Salazar','976222238','V1','E1',1),('SEP-029','26040095504','G-400','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine area - Polvorin 02 container door 2','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-030','4063579212','G-400','SEGEPSAJ','Water Operations','Phase 4 Platform / Yanacocha Norte - Thermofusion Warehouse Container','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-031','44040901815','G-420N','RANSA','Materials and Contracts','Phase 05 Repairable Warehouse -  tires 02 warehouse container ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-032','65055163108','G-420N','INTELSI','Security','Hualkana Offices - TERUX473451 container','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-033','30045871465','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Ex Agglomeration Crushing - vulcanized storage.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-034','30045746329','G-420N','RANSA','Materials and Contracts','Conga Project Carachugo warehouse - TTNU 938876-5 (Z-15) Container ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-035','74054537095','G-420N','CONFIPETROL','Maintenance Processes','China Linda plant - tool warehouse.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-036','74054510167','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking storage 10 container moto pumps and material various','Mario Aguilar Diaz','976118453','V1','E1',1),('SEP-037','74054558802','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking - Blue container - main warehouse.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-038','74054582547','G-420N','EL ALISO','Leaching Processes','Ex Trinchera baja parking - green container - equipment warehouse.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-039','88055449997','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Coal Plant La Quinua- intrumentation laboratory container.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-040','26040092584','G-420N','RESCUE TECH','Health and Safety','Km 52 Camp - Emergency Response warehouse 04.','Juan Salazar Aliaga','976222406','V1','E1',1),('SEP-041','88055328076','G-400','RANSA','Materials and Contracts','Km 24.5 warehouse - Conga Project / REGU 498605 - V13 container','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-042','65055335342','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-043','26040096270','G-400','RANSA','Materials and Contracts','Lift 04-05 Yanacocha Pad -  NEXU 153385-7  (A-48) container ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-044','26040031194','G-400','IGC','Environment','Km 39 warehouses- chemical material storage container.','Jorge Santamaria Sanchez','976221992','V1','E1',1),('SEP-045','95055243726','G-420N','NEWMONT YANACOCHA','Processes','Yanacocha Norte Plant - Green Conatiner','Benito Quinones Kong','976228370','V1','E1',1),('SEP-046','65055153034','G-420N','RANSA','Materials and Contracts','Warehouse Carachugo Conga Project -Container HJCU 104298-1 (Z-17)','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-047','54054011046','G-420N','DIVINO SALVADOR','Water Operations','Yanacocha Norte Platform Phase 4- container (Yellow) warehouse Materials.','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-048','74054509854','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking  - Geosynthetic equipment warehouse 09.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-049','30045863678','G-420N','SECURITAS SAC','Security','Km 37 La Quinua Camp - Rapid Response Team (RRT) warehouse container.','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-050','4063422694','G-400','NEWMONT YANACOCHA','Human Resources ','Eucaliptos  Office Yanacocha Mine - R08 Human Resources container ','Patricia Cardenas Manrique','976223705','V1','E1',1),('SEP-051','65055336928','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking  -  Blue container - warehouse 07.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-052','65055336787','G-420N','IGC','Environment','Km 39  warehouse - Materials warehouse office container ','Jorge Santamaria Sanchez','976221992','V1','E1',1),('SEP-053','88055492617','G-420N','DEYFOR','General Services','Km 37 Camp  - Blue container warehouse 02 door 01.','Jose Pastor Cardenas','976228002','V1','E1',1),('SEP-054','88055332078','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center. ','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-055','65055163124','G-420N','NEWMONT YANACOCHA','Security','Hualkana Offices - social materials container','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-056','4063529134','G-420N','COLLOTAN SA','Sulfides Project','La Quinua platform Project WTP2- tools warehouse 01 container.','Mario Adrianzen Feijoo ','976223735','V1','E1',1),('SEP-057','88055485447','G-420N','AYS CONTRATISTAS','Power and Energy','A&S Contratistas Platform warehouse container 02.','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-058','65055163090','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-059','88055331781','G-420N','SECURITAS SAC','Security','Km. 37 Camp- Container logistics warehouse 2.','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-060','4063601644','G-420N','NEWMONT YANACOCHA ','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-061','26040040492','G-400','NEWMONT YANACOCHA','Processes','El Mirador Lime Plant- maintenance workshop door 02','Benito Quinones Kong','976228370','V1','E1',1),('SEP-062','28031716936','G-400','CONSORCIO CERRO DORADO','Mine Operations','4 Phase platform - North Yanacocha  - Electrical equipment container','Alejandro Huamanchumo Pinedo','976222592','V1','E1',1),('SEP-063','65055044910','G-400','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-064','65055163553','G-420N','BIDDLE INC','Water Operations ','La Quinua Watering warehouse - Main warehouse container.','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-065','44040898276','G-420N','A&S Contratistas','Power and Energy','A&S Platform container warehouse 04.','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-066','65055335631','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - yellow container Y-01 main door ','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-067','88055331344','G-420N','NEWMONT YANACOCHA','Geology','Eucaliptos Cajamarca Office  - Geology 2.0 Container.','Vanessa Tantalean Salazar','976361899','V1','E1',1),('SEP-068','57054024155','G-420N','INTELSI','Information Technology','Km. 52 Camp - MULT2092 Container.','Marco Chanway Del Portal','976222077','V1','E1',1),('SEP-069','65055163199','G-420N','NEWMONT YANACOCHA','Leaching Processes','La Quinua Leaching Warehouse - Leaching Processes HDPE.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-070','88056100482','G-420N','SECURITAS SAC','Security','Km. 37 Camp - Warehouse Container Logistics 3.','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-071','88056100821','G-420N','INTELSI','Information Technology','Km 39  Intelsi offices warehouse - office conatiner and informatic equipments','Marco Chanway Del Portal','976222077','V1','E1',1),('SEP-072','44040901302','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - blue container C40-002 main door','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-073','88056100219','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-074','88054388022','G-420N','NEWMONT YANACOCHA','Leaching Processes','La Quinua Leaching Warehouse -  main office.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-075','74054558737','G-420N','NEWMONT YANACOCHA','Water Operations','Rio Rejo Dam - Main Gate/ Water Newmont Yanacocha.','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-076','74054583180','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center. ','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-077','88055328688','G-420N','NEWMONT YANACOCHA','Social Responsability','Cajamarca Eucaliptos Office - Social Responsability 2.04 container.','Rocio Chuquimango Valencia','976222567','V1','E1',1),('SEP-078','44040898573','G-420N','INTELSI','Information Technology','Access gate - El Mirador antenna','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-079','65055153273','G-420N','SAEG PERU','Maintenance Processes','Mirrors La Quinua  - material warehouse container','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-080','4063496151','G-420N','NUMAY','Materials and Contracts','Carachugo petrol station - equipment warehouse.','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-081','65055268634','G-420N','CHB SAN MARTIN','Water Operations','Yanacocha North Phase 4 Plataform  - Container (Orange) - Tools warehouse','Yuri Serrano Chavez','976222917','V1','E1',1),('SEP-082','65055163231','G-420N','NUMAY','Materials and Contracts','Phase 04 Platform - Yanacocha Norte - warehouse 2 RAC.','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-083','4063481880','G-400','EXSA','Blasting ','Nitrate Court - Exsa Offices - Security Office container. ','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-084','65055045867','G-420N','RESCUE TECH','Health and Safety','Km 52 camp - Emergency Response warehouse 03.','Juan Salazar Aliaga ','976222406','V1','E1',1),('SEP-085','4063512718','G-400','INTELSI','Information Technology ','Shugares Antenna - communication equipment container','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-086','74054580350','G-420N','RANSA','Materials and Contracts ','La Quinua Main Warehouse - Container K02','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-087','44040900122','G-420N','NEWMONT YANACOCHA','Processes','Pond Carachugo - office container 2nd floor ','Benito Quinones Kong','976228370','V1','E1',1),('SEP-088','57054037330','G-420N','NEWMONT YANACOCHA','Power and Energy','La Pajuela Thermal Station - C04 Electrical equipment warehouse.','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-089','28031727875','G-400','BECHTEL','Sulfides Project','La Quinua Dump Lift 12 - container M22-15.','Mario Adrianzen Feijoo ','976223735','V1','E1',1),('SEP-090','65055163256','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone- Polvorin 06 container door 2  ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-091','44040906624','G-420N','SECURITAS','Security','Km 37 Camp- Personal Protection Equipment (PPE) warehouse container.','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-092','32045253511','G-420N','INTELSI','Security','Main Road KM 38 HYDRA RADAR-  Panels door','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-093','26040144591','G-400','EXSA','Blasting ','Nitrate court Exsa Offices - Maintenance Office container.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-094','44040900361','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - white container health and safety ','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-095','57054011210','G-400','DEYFOR','General Services','Km 37 -Camp  Yellow container warehouse 01 door.','Jose Pastor Cardenas','976228002','V1','E1',1),('SEP-096','57054010741','G-420N','JOWEERS','Project Sustainable Capital ',' Vanessa Parking - maroon container - harness storage.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-097','4063601628','G-400','CONFIPETROL','Maintenance Processes','Los Espejos La Quinua - storage container.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-098','4063482284','G-400','NEWMONT YANACOCHA','Processes','El Mirador Lime Plant- maintenance workshop door 01','Benito Quinones Kong','976228370','V1','E1',1),('SEP-099','4063601669','G-400','NEWMONT YANACOCHA','Processes','Analytical Laboratory - Coolant storage container 1/MYSRL Metallurgical Processes.','Fabio Loyola Moreno','976228530','V1','E1',1),('SEP-100','88055450011','G-400','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone - power magazine 04 door container.','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-101','30045879815','G-420N','NEWMONT YANACOCHA','Human Resources ','Eucaliptos  Office Yanacocha Mine- R01 Human Resources container ','Patricia Cardenas Manrique','976223705','V1','E1',1),('SEP-102','65055336902','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center. ','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-103','95055242074','G-420N','NEWMONT YANACOCHA','Geology','Eucaliptos Cajamarca Office - Geol2.11 Container.','Vanessa Tantalean Salazar','976361899','V1','E1',1),('SEP-104','4063598931','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit-  yellow container Y-01 main door ','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-105','44040366749','G-420N','INTELSI','Information Technology','Intelsi Offices (KM 39) -  warehouse red side door 2 (Meshed Exterior)','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-106','57054011277','G-400','NEWMONT YANACOCHA','Security','Yanacocha Norte Plant - rear door  Buffalo truck.','Jorge Lopez Alvarado','932693968','V1','E1',1),('SEP-107','4063511124','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - Y-05 yellow container.','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-108','57054010766','G-420N','NEWMONT YANACOCHA','Processes','El Mirador Cal Plant - Maintenance Workshop Server room','Benito Quinones Kong','976228370','V1','E1',1),('SEP-109','4063512551','G-420N','NEWMONT YANACOCHA','Drilling ','Coring rods field - coring drill rods accessories container.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-110','57054024601','G-400','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center - Installation stock.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-111','32045252208','G-420N','RESCUE TECH','Health and Safety','Km 52 camp - Emergency Response warehouse 05.','Juan Salazar Aliaga','976222406','V1','E1',1),('SEP-112','95055251547','G-420N','KUNTURWASI','General Services','Km. 37 Camp- disposable storage container.','Ana Boyd Castro','991153261','V1','E1',1),('SEP-113','30045875995','G-420N','NEWMONT YANACOCHA','Processes','Analytical Laboratory - main warehouse container / Newmont Yanacocha - Metallurgical Processes ','Christopher Nakahodo Nakama','987476280','V1','E1',1),('SEP-114','74054536972','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Coal Plant La Quinua- Maintenance workshop main door.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-115','4063555014','G-420N','CONSORCIO CHAQUICOCHA','Sustainable Capital Project','6 Eyes Parking - 06 blue warehouse container','Marcos Cabellos Ruiz','976228803','V1','E1',1),('SEP-116','74054517865','G-420N','DIVINO SALVADOR','Water Planning and Mine Closure','Seeds warehouse (KM 39)  - warehouse container 03 ','Augusto Urteaga Becerra','976228426','V1','E1',1),('SEP-117','74055408460','G-420N','DEYFOR','General Services','Km 37 Camp  - Yellow container warehouse 01 door 02','Jose Pastor Cardenas','976228002','V1','E1',1),('SEP-118','44040905881','G-420N','NEWMONT YANACOCHA','Processes','Pampa Larga Coal Plant -Rich Solution TanK (Super Rich Sampler)','Benito Quinones Kong','976228370','V1','E1',1),('SEP-119','88055505657','G-420N','HUACATAZ','Water Operations ','Phase 4 Platform-  warehouse blue sky conatainer ','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-120','65055160716','G-420N','RANSA','Materials and Contracts','La Quinua Main Warehouse - Container K05 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-121','28031722041','G-400','NEWMONT YANACOCHA','Maintenance Processes','Ex Agglomeration Crushing - Electrical spare parts','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-122','26040032408','G-400','COSACH','Water Operations','Phase 4 Yanacocha Norte - warehouse yellow container.','Yuri Serrano Chavez','976222917','V1','E1',1),('SEP-123','88056134382','G-420N','NEWMONT YANACOCHA','Leaching Processes ','La Quinua Leaching Warehouse- grey container C 06.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-124','28031717629','G-400','RANSA','Materials and Contracts','Pad Yanacocha Lift 04-05 - MSCU 414570-8 (D-50) Container','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-125','65055196819','G-420N','NEWMONT YANACOCHA','Water Operations','La Quinua 2 coils - tool warehouse container.','Yuri Serrano Chavez','976222917','V1','E1',1),('SEP-126','4063482185','G-420N','ORICA','Blasting ','Nitrate Court - Changing of the Guard container.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-127','74054550031','G-420N','INTELSI','Information Technology','Km 39 Intelsi offices - internal warehouse container 1.','Marco Chanway Del Portal','976222077','V1','E1',1),('SEP-128','88056117536','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking- located in the container called \"Warehouse 04 Mantto Container\"\"\"','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-129','4063556095','G-420N','INTELSI','Information Technology','La Quinua Ex Trainning - batteries warehouse container','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-130','4063604812','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone - Powder magazine 06 container door 1 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-131','28031727982','G-400','RANSA','Materials and Contracts','Yanacocha Lift 04-05 Pad - containers NEXU-153596-8 (D-52) ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-132','65055336985','G-420N','NEWMONT YANACOCHA','Project Sustainable Capital ','Pad Yanacocha Lift 04-05 - ECMU 105500-5 (D-55) container','Jose Diaz Silva','976228039','V1','E1',1),('SEP-133','88056139621','G-420N','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center. ','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-134','88055330114','G-400','SECURITAS SAC','Security','Km. 37 Camp - RRT Warehouse Container Logistics 1.','Viterman Bustamante Bautista','976228010','V1','E1',1),('SEP-135','65055336753','G-400',' ADEMINSAC','Maintenance Processes','Los Espejos La Quinua  - blue container office.','Ruben Zarate Takano','953733809','V1','E1',1),('SEP-136','4063481328','G-420N','INTELSI','Information Technology','Ex Training LQ - Warehouse Container 01','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-137','44040908661','G-420N','NEWMONT YANACOCHA','Maintenance Processes','AWTP La Quinua Plant - Maintenance warehouse container.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-138','57054037082','G-420N',' ADEMINSAC','Maintenance Processes','Los Espejos La Quinua - green warehouse container.','Ruben Zarate Takano','953733809','V1','E1',1),('SEP-139','28031717058','G-400','RANSA','Materials and Contracts','Conga Project Warehouse 24.5 -  GSTU 9344655-6V10 container (V10)','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-140','88055494993','G-420N','INTELSI','Information Technology','Collotan Antenna - communication equipment container ','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-141','26040028497','G-400','BIDDLE INC','Water Operations','La Quinua Dewatering warehouse - Container  Mine Warehouse','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-142','88056090139','G-420N','BIDDLE INC','Water Operations','Phase 4 Platform- maintenence warehouse','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-143','65055336944','G-420N','RESCUE TECH','Health and Safety','Km 52 Camp - Emergency Response warehouse 06.','Juan Salazar Aliaga','976222406','V1','E1',1),('SEP-144','44040906962','G-420N','GEO-LOGIC','Injection leaching','La Quinua 8 Pad Wox - Tools warehouse 2','Edwin Briceno Torres','976222968','V1','E1',1),('SEP-145','95055165804','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone-  02 Polvorin 1 container?s door ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-146','4063610421','G-420N','NEWMONT YANACOCHA',' Processes','Yanacocha Norte Plant - Zinc Warehouse (Reagent Zone).','Benito Quinones Kong','976228370','V1','E1',1),('SEP-147','4063482474','G-400','GEO-LOGIC','Injection Leaching ','Carachugo 8 pad  Lift 14 -  Hazmat tools warehouse','Edwin Briceno Torres','976222968','V1','E1',1),('SEP-148','26040040930','G-400','RANSA','Materials and Contracts','Conga Project Warehouse Carachugo - TOLU 45701-9 (Z-13) container','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-149','4063498199','G-420N','La Pajuela','Water Operations ','Phase 4 - North Yanacocha - Green container / La Pajuela','Marco Chanway Del Portal','976222077','V1','E1',1),('SEP-150','57054011319','G-420N','RICSAM','Processes ','Ex Trinchera baja parking- red  container bottles  Acetylene warehouse.','Manuel Marcapura Vargas ','976222592','V1','E1',1),('SEP-151','88055334660','G-420N','ADISA PERU','General Services','Km 37 camp - main warehouse container.','Jessica Barrueto Salas','976222066','V1','E1',1),('SEP-152','65055163439','G-420N','NEWMONT YANACOCHA','Maintenance Processes','China Linda plant - Maintenance workshop tool warehouse','Benito Quinones Kong','976228370','V1','E1',1),('SEP-153','44040909420','G-420N','NEWMONT YANACOCHA','Processes','China Linda plant - Warehouse 02','Benito Quinones Kong','976228370','V1','E1',1),('SEP-154','30045876217','G-420N','RANSA','Materials and Contracts','Pad Yanacocha Lift 04-05 - Container PCIU801053-5 (D-51)','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-155','57054010824','G-420N','SEGEPSAJ','Water Operations ','Phase 4 Platform - Extruders warehouse container ','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-156','88056090063','G-420N','DIVINO SALVADOR','Water Planning and Mine Closure','Seeds warehouse (KM 39)  - warehouse container 03  ','Augusto Urteaga Becerra','976228426','V1','E1',1),('SEP-157','4063514706','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - Y-03 yellow container.','Ivan Salinas Meza','973004836','V1','E1',1),('SEP-158','65055045768','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Ex Agglomeration Crushing  - Keys warehouse','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-159','4063610165','G-420N','NEWMONT YANACOCHA','Blasting ','Nitrate court  - Container PPE warehouse.','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-160','65055153398','G-400','RANSA',' Materials and Contracts ','La Quinua Main Warehouse - container K06 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-161','88055526182','G-420N','INTELSI','Security','Main road Km 38 - RADAR HYDRA - Battery door.','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-162','26040030477','G-400','NEWMONT YANACOCHA','Security','Bahia Securitas Monitoring Center. ','Jose Pereyra Briones','976220703','V1','E1',1),('SEP-163','88056090279','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - Y-04 yellow container  side door.','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-164','88056100383','G-420N','CONSORCIO MARCEL','Water Operations','Phase 4 Platform - North Yanacocha - Grey container','Franklin Quispe Sangay ','986936995','V1','E1',1),('SEP-165','30045746386','G-420N','BIDDLE INC','Water Operations ','Dewatering warehouse LQ - Electrical maintenance workshop','Franklin Quispe Sangay','986936995','V1','E1',1),('SEP-166','65055153356','G-420N','MAXLIM','General Services','Km 52 Camp - yellow container hotel warehouse 02 MSCU8843353.','Jessica Barrueto Salas','976222066','V1','E1',1),('SEP-167','44040898250','G-420N','STI','Maintenance Processes','China Linda Plant - Warehouse office  ','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-168','57054034949','G-420N','EL ALISO','Leaching Processes ','Ex Trinchera baja parking - green container ? 5, Reusable materials warehouse.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-169','4063529381','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine area - power magazine 05 door container ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-170','4063534365','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa Parking ? Warehouse 02 jaws and accessories.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-171','74055354722','G-420N','NEWMONT YANACOCHA','Lands','Office Eucaliptos Cajamarca - Container 2.08 Lands','Gilberto Bazan Hernandez','976228487','V1','E1',1),('SEP-172','57054019312','G-420N','NEWMONT YANACOCHA','Materials and Contracts','Powder magazine zone - Powder magazine 03 - door container 1 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-173','44040906103','G-420N','NEWMONT YANACOCHA','Processes','Analytical Laboratory - Materials Container 02/ MYSRL Chemical Processes','Julio Vasquez Chanduvi','991955334','V1','E1',1),('SEP-174','4063521750','G-420N','NEWMONT YANACOCHA','Social Responsability','Cajamarca Eucaliptos Office - container 2.03 Social Responsability.','Rocio Chuquimango Valencia','976222567','V1','E1',1),('SEP-175','30045879632','G-420N','JOWEERS','Project Sustainable Capital ','Vanessa parking -  Warehouse 01 - generators container.','Mario Aguilar Diaz','976228453','V1','E1',1),('SEP-176','65055236185','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Coal Plant La Quinua - tool warehouse container.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-177','65055337017','G-420N','NEWMONT YANACOCHA','Geology','Eucaliptos Cajamarca Office  - Geologic Container 00','Vanessa Tantalean Salazar','976361899','V1','E1',1),('SEP-178','88055334777','G-420N','EL ALISO','Leaching Processes ','Ex Trinchera baja parking- blue ontainer - generators Warehouse ','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-179','88055331849','G-420N','DEYFOR','General Services','Km 52 camp - hardware store container (General Services).','Jose Pastor Cardenas','976228002','V1','E1',1),('SEP-180','57054018868','G-420N','RANSA','Materials and Contracts ','Phase 5 reparables warehouse  - maintenance 01 warehouse container ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-181','4063513146','G-420N','NEWMONT YANACOCHA','Processes','Yanacocha Norte Plant - red container BDOU 223953-1 ','Benito Quinones Kong','976228370','V1','E1',1),('SEP-182','88055492799','G-420N','NEWMONT YANACOCHA','Human Resources ','Eucaliptos  Office Yanacocha Mine - R02 Human Resources container.','Patricia Cardenas Manrique','976223705','V1','E1',1),('SEP-183','30045880136','G-420N','NEWMONT YANACOCHA','Processes','China Linda Plant - Laboratory Warehouse ','Benito Quinones Kong','976228370','V1','E1',1),('SEP-184','26040258417','G-400','EXSA','Blasting ','Nitrate Court - Exsa Offices - Security Office container','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-185','44040906442','G-420N','EL ALISO','Leaching Processes ','Ex Trinchera baja parking - sky blue container storage 04.','Manuel Marcapura Vargas','976222592','V1','E1',1),('SEP-186','74054558687','G-420N','NEWMONT YANACOCHA','Maintenance Processes','Coal Plant La Quinua - Lubrication storage.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-187','28031726786','G-420N','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - Y -02 yellow container .','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-188','44040897625','G-420N','RICSAM','Processes ','Ex Trinchera Baja Parking - Oxygen cylinder warehouse green container.','Manuel Marcapura Vargas ','976222592','V1','E1',1),('SEP-189','4063494875','G-420N','MAXLIM','General Services','Km 37 camp - storage container hospitality 01.','Jessica Barrueto Salas','976222066','V1','E1',1),('SEP-190','4063509656','G-420N','CONFIPETROL','Maintenance Processes','Los Espejos La Quinua - container Lifting Warehouse.','Jorge Malaga Chavez','976228149','V1','E1',1),('SEP-191','65055243769','G-420N','GEO-LOGIC','Injection Leaching','La Quinua 8 Pad Wox - Tools warehouse 1','Edwin Briceno Torres','976222968','V1','E1',1),('SEP-192','88056100276','G-420N','DIVINO SALVADOR','Water Planning and Mine Closure','Seeds warehouse (KM 39)  - warehouse container 01 ','Augusto Urteaga Becerra','976228426','V1','E1',1),('SEP-193','28031716803','G-400','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - Y-04 yellow container main door.','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-194','65055268865','G-420N','RESCUE TECH','Health and Safety','Km 52 camp - Emergency Response warehouse 07.','Juan Salazar Aliaga','976222406','V1','E1',1),('SEP-195','30045746584','G-420N','NEWMONT YANACOCHA','Social Responsability','Cajamarca Eucaliptos Office - Container 2.02 RRSS','Rocio Chuquimango Valencia','976222567','V1','E1',1),('SEP-196','44040909362','G-420N','NEWMONT YANACOCHA','Blasting ','Nitrate Court - Main office container','Roberto Quispe Perez','976222764','V1','E1',1),('SEP-197','57054011269','G-420N','NEWMONT YANACOCHA','Project Sustainable Capital ','Pad Yanacocha Lift 04-05 - Container SUDU462685-6 (D-46)','Percy Barboza Bazan','976226416','V1','E1',1),('SEP-198','88056139472','G-400','NEWMONT YANACOCHA','Integral Project','Chaquicocha Underground Open Pit - blue container C40-001 main door.','Ivan Salinas Meza ','973004836','V1','E1',1),('SEP-199','74054537087','G-420N','INTELSI','Information Technology','Intelsi Offices (KM 39) -  warehouse red container 1 side door (Meshed Exterior)','Jorge Gutierrez Machuca','976222280','V1','E1',1),('SEP-200','95055165671','G-420N','NEWMONT YANACOCHA','Mine Services','Roads warehouse - warehouse 4.','Victor Morales Vizcarra','942267247','V1','E1',1),('SEP-201','4063610140','G-420N','NEWMONT YANACOCHA','Processes','Pond Carachugo - Minor events Pool 03.','Benito Quinones Kong','976228370','V1','E1',1),('SEP-202','88056104211','G-420N','RANSA',' Materials and Contracts ','La Quinua Main Warehouse - container K03 ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-203','65055255961','G-420N','AYS CONTRATISTAS','Power and Energy','A&S Contratistas Platform (in front of the LA PAJUELA Thermal Station) - container CSVU-204697-6 tool warehouse 01','Miguel Casos Garcia','976222670','V1','E1',1),('SEP-204','88055334603','G-420N','KUNTURWASI','General Services','Camp km 37 Rifer storage container (ZGRU 194007-1).','Ana Boyd Castro','991153261','V1','E1',1),('SEP-205','65055153307','G-420N','NUMAY','Materials and Contracts','Phase 4 Yanacocha North Platform - Tire warehouse ','Christopher Calderon Aguilar','951732185','V1','E1',1),('SEP-206','OWEN','Wily','Yes','Yes','Yes','yes','yes','V1','E1',1),('SEP-207','OWEN','Wily','Yes','Yes','Yes','yes','yes','V1','E1',1);
/*!40000 ALTER TABLE `smartpadlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `idStatus` varchar(25) NOT NULL,
  `description` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('E1','Operative'),('E2','Inoperative'),('E3','Partially Operative'),('E4','Out of service'),('E5','In maintenance');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thermalmonitoring`
--

DROP TABLE IF EXISTS `thermalmonitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thermalmonitoring` (
  `idThermal` varchar(10) NOT NULL,
  `codeTM` varchar(25) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `coverage` varchar(200) DEFAULT NULL,
  `ptzLR` varchar(100) DEFAULT NULL,
  `thermalRadarLR` varchar(100) DEFAULT NULL,
  `ptzV` varchar(100) DEFAULT NULL,
  `thermalRadarV` varchar(100) DEFAULT NULL,
  `idStatus` varchar(25) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idThermal`),
  KEY `R_15` (`idStatus`),
  CONSTRAINT `thermalmonitoring_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thermalmonitoring`
--

LOCK TABLES `thermalmonitoring` WRITE;
/*!40000 ALTER TABLE `thermalmonitoring` DISABLE KEYS */;
INSERT INTO `thermalmonitoring` VALUES ('TME-001','HYDRA-CPTZE-1823','HYDRA ','OTIR 1823 - Yanacocha Norte Plant (Entrance Door 7)','Recording','Recording','Yes','Yes','E1',1),('TME-002','HYDRA-CPTZE-1826','HYDRA ','OTIR 1826 - Km. 38.5 - Services road','Recording','Recording','Yes','Yes','E1',1),('TME-003','HYDRA-CPTZE-1827','HYDRA ','OTIR 1827 - Km 39.5 - Services road','Recording','Recording','Yes','Yes','E1',1),('TME-004','HYDRA-CPTZE-1828','HYDRA ','OTIR 1828 - La Quinua junction','Recording','Recording','Yes','Yes','E1',1),('TME-005','HYDRA-CPTZE-1829','HYDRA ','OTIR 1829 - Km. 39 - Services road','Recording','Recording','Yes','Yes','E1',1),('TME-006','HYDRA-CPTZE-1830','HYDRA ','OTIR 1830 - Km. 40 - Services road','Recording','Recording','Yes','Yes','E1',1),('TME-007','HYDRA-CPTZE-1831','HYDRA ','OTIR 1831 - Km. 40 - Services road','Recording','Recording','Yes','Yes','E1',1),('TME-008','HYDRA-CPTZE-1832','HYDRA ','OTIR 1832 - Camino Real','Recording','Recording','Yes','Yes','E1',1),('TME-010','OWEN','Wily','Yes','Yes','Yes','yes','yes','E1',1),('TME-011','OWEN','Wily','Yes','Yes','Yes','yes','yes','E1',1),('TME-012','OWEN','Wily','Yes','Yes','Yes','yes','yes','E1',1),('TME-013','RedHat','Wily','Yes','Yes','Yes','yes','yes','E1',1);
/*!40000 ALTER TABLE `thermalmonitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `idTicket` varchar(25) NOT NULL,
  `observations` varchar(350) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `idTable` varchar(100) DEFAULT NULL,
  `statusTicket` varchar(150) DEFAULT NULL,
  `tableName` varchar(200) DEFAULT NULL,
  `isContinue` tinyint DEFAULT '1',
  PRIMARY KEY (`idTicket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUsuario` varchar(25) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `idRol` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `R_21` (`idRol`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualconecctionscc`
--

DROP TABLE IF EXISTS `visualconecctionscc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualconecctionscc` (
  `idVisualConecction` varchar(25) NOT NULL,
  `description` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idVisualConecction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualconecctionscc`
--

LOCK TABLES `visualconecctionscc` WRITE;
/*!40000 ALTER TABLE `visualconecctionscc` DISABLE KEYS */;
INSERT INTO `visualconecctionscc` VALUES ('V1','Yes'),('V2','Not'),('V3','Problems');
/*!40000 ALTER TABLE `visualconecctionscc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ohm'
--

--
-- Dumping routines for database 'ohm'
--
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAdministrativeNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteAdministrativeNetwork`(
in _idAdministrative varchar(10)
)
begin
update administrativenetwork 
set isContinue = 0
where idAdministrative=_idAdministrative;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAlarmSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteAlarmSystem`(
in _idAlarm varchar(10)
)
begin
update alarmsystem 
set isContinue = 0
where idAlarm=_idAlarm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAntifatigueSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteAntifatigueSystem`(
in _idAntifatigue varchar(10)
)
begin
update antifatiguesystem 
set isContinue = 0
where idAntifatigue=_idAntifatigue;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteElectricalStorm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteElectricalStorm`(
in _idElectrical varchar(10)
)
begin
update electricalstorm 
set isContinue = 0
where  idElectrical=_idElectrical;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteElectromeshFence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteElectromeshFence`(
in _idElectromesh varchar(10)
)
begin
update electromeshfence 
set isContinue = 0
where idElectromesh = _idElectromesh;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteFireAlarm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteFireAlarm`(
in _idFire varchar(10)
)
begin
update firealarm 
set isContinue = 0
where idFire = _idFire;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSecurityNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSecurityNetwork`(
in _idSecurityNetwork varchar(10)
)
begin
update  securitynetwork
set isContinue = 0
where idSecurityNetwork=_idSecurityNetwork;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSecurityRadio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSecurityRadio`(
in _idSecurityRadios varchar(10)
)
begin
update securityradio 
set isContinue = 0
where idSecurityRadios = _idSecurityRadios;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSmartPadlocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSmartPadlocks`(
in _idSmart varchar(10)
)
begin
update smartpadlocks 
set isContinue = 0
where idSmart=_idSmart;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteThermalMonitoring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteThermalMonitoring`(
in _idThermal varchar(10)
)
begin
update thermalmonitoring 
set isContinue = 0
where idThermal=_idThermal;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertAdministrativeNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAdministrativeNetwork`(
in _codeAN varchar(25),
in _facility varchar(150),
in _coverage varchar(150),
in _idLocal varchar(25),
in _idVisualConecction varchar(25),
in _idStatus varchar(25)
)
begin
declare _idAN varchar(10);

declare _CR int;
select (count(*)+1) into _CR from administrativenetwork;

    IF _CR <= 9 THEN 
        SET _idAN = CONCAT('AN-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idAN = CONCAT('AN-0', _CR);
    ELSE
        SET _idAN = CONCAT('AN-', _CR);
    END IF;

insert into administrativenetwork
(idAdministrative, codeAN, facility, coverage, idLocal, idVisualConecction, idStatus)
values
(_idAN, _codeAN, _facility, _coverage, _idLocal, _idVisualConecction, _idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertAlarmSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAlarmSystem`(
in _facility varchar(150),
in _coverage varchar(250),
in _statusVisible varchar(6),
in _stattusAudible varchar(6),
in _idStatus varchar(25),
in _idVisualConecction varchar(25)
)
begin
declare _idAS varchar(10);

declare _CR int;
select (count(*)+1) into _CR from alarmsystem;

    IF _CR <= 9 THEN 
        SET _idAS = CONCAT('AS-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idAS = CONCAT('AS-0', _CR);
    ELSE
        SET _idAS = CONCAT('AS-', _CR);
    END IF;

insert into alarmsystem
(idAlarm,facility , coverage,statusVisible , stattusAudible,idStatus , idVisualConecction)
values
(_idAS,_facility , _coverage, _statusVisible,_stattusAudible ,_idStatus ,_idVisualConecction );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertAntifatigueSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAntifatigueSystem`(
in _licensePlate varchar(25),
in _vehicleType varchar(250),
in _area varchar(100),
in _systemA varchar(150),
in _idVisualConecction varchar(25),
in _idStatus varchar(25)
)
begin
declare _idAFS varchar(10);

declare _CR int;
select (count(*)+1) into _CR from antifatiguesystem;

    IF _CR <= 9 THEN 
        SET _idAFS = CONCAT('AFS-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idAFS = CONCAT('AFS-0', _CR);
    ELSE
        SET _idAFS = CONCAT('AFS-', _CR);
    END IF;

insert into antifatiguesystem
(idAntifatigue, licensePlate, vehicleType, area,systemA , idVisualConecction,idStatus)
values
(_idAFS,_licensePlate ,_vehicleType ,_area ,_systemA  ,_idVisualConecction,_idStatus );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertElectricalStorm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertElectricalStorm`(
	in _zone varchar(150),
	in _sensors varchar(100),
	in _location varchar(150),
	in _idStatus varchar(25)
)
begin
declare _idESS varchar(10);

declare _CR int;
select (count(*)+1) into _CR from electricalstorm;

    IF _CR <= 9 THEN 
        SET _idESS = CONCAT('ESS-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idESS = CONCAT('ESS-0', _CR);
    ELSE
        SET _idESS = CONCAT('ESS-', _CR);
    END IF;

insert into electricalstorm
(idElectrical,zone , sensors,location, idStatus)
values
(_idESS,_zone ,_sensors ,_location ,_idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertElectromeshFence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertElectromeshFence`(
	in _zone varchar(200),
	in _sensors varchar(50),
	in _location varchar(250),
	in _idStatus varchar(25)
)
begin
declare _idEM varchar(10);

declare _CR int;
select (count(*)+1) into _CR from electromeshfence;

    IF _CR <= 9 THEN 
        SET _idEM = CONCAT('EM-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idEM = CONCAT('EM-0', _CR);
    ELSE
        SET _idEM = CONCAT('EM-', _CR);
    END IF;

insert into electromeshfence 
(idElectromesh,zone ,sensors ,location,idStatus)
values
(_idEM,_zone ,_sensors ,_location,_idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertFireAlarm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertFireAlarm`(
	in _panel varchar(50),
	in _zone varchar(200),
	in _location varchar(200),
	in _idStatus varchar(25)
)
begin
declare _idFAS varchar(10);

declare _CR int;
select (count(*)+1) into _CR from firealarm;

    IF _CR <= 9 THEN 
        SET _idFAS = CONCAT('FAS-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idFAS = CONCAT('FAS-0', _CR);
    ELSE
        SET _idFAS = CONCAT('FAS-', _CR);
    END IF;

insert into firealarm
(idFire,panel ,zone ,location, idStatus)
values
(_idFAS,_panel ,_zone ,_location ,_idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSecurityNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSecurityNetwork`(
in _codeSN varchar(25),
in _facility varchar(150),
in _coverage varchar(150),
in _idLocal varchar(25),
in _idVisualConecction varchar(25),
in _idStatus varchar(25)
)
begin
declare _idSN varchar(10);

declare _cr int;
select (count(*)+1) into _cr from securitynetwork;
if (_cr <= 9) then set _idSN = concat('SN-00',_cr);
elseif (_cr <= 99) then set _idSN= concat('SN-0',_cr);
else set _idSN = concat('SN-',_cr);
end if;
insert into securitynetwork
(idSecurityNetwork, codeSN, facility, coverage, idLocal, idVisualConecction, idStatus)
values
(_idSN, _codeSN, _facility, _coverage, _idLocal, _idVisualConecction, _idStatus);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSecurityRadio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSecurityRadio`(
	in _radioId varchar(15),
	in _newSerie varchar(50),
	in _activeNew varchar(50),
	in _assignmentDate date,
    in _renewalPuchase varchar(50),
    in _radioAlias varchar(100),
    in _model varchar(30),
    in _radioType varchar(30),
	in _radioUser varchar(250),
    in _distribution varchar(50),
    in _specificLocation varchar(300),
    in _idStatus varchar(25)
)
begin
declare _idSRI varchar(10);

declare _CR int;
select (count(*)+1) into _CR from securityradio;

    IF _CR <= 9 THEN 
        SET _idSRI = CONCAT('SRI-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idSRI = CONCAT('SRI-0', _CR);
    ELSE
        SET _idSRI = CONCAT('SRI-', _CR);
    END IF;

insert into securityradio
(idSecurityRadios,radioId ,newSerie ,activeNew, assignmentDate, renewalPuchase,radioAlias ,model ,radioType ,radioUser ,distribution , specificLocation, idStatus)
values
(_idSRI,_radioId ,_newSerie ,_activeNew, _assignmentDate, _renewalPuchase, _radioAlias , _model , _radioType , _radioUser , _distribution , _specificLocation, _idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSmartPadlocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSmartPadlocks`(
in _codeSE varchar(18),
in _smartLockModel varchar(100),
in _company varchar(150),
in _department varchar(150),
in _location varchar(300),
in _sponsorName varchar(200),
in _phone varchar(9),
in _idVisualConecction varchar(25),
in _idStatus varchar(25)

)
begin
declare _idSEP varchar(10);

declare _CR int;
select (count(*)+1) into _CR from smartpadlocks;

    IF _CR <= 9 THEN 
        SET _idSEP = CONCAT('SEP-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idSEP = CONCAT('SEP-0', _CR);
    ELSE
        SET _idSEP = CONCAT('SEP-', _CR);
    END IF;

insert into smartpadlocks
(idSmart, codeSE, smartLockModel,company, department, location, sponsorName,phone,idVisualConecction,idStatus)
values
(_idSEP,_codeSE ,_smartLockModel ,_company ,_department,_location, _sponsorName, _phone, _idVisualConecction,_idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertThermalMonitoring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertThermalMonitoring`(
in _codeTM varchar(25),
in _type varchar(100),
in _coverage varchar(200),
in _ptzLR varchar(100),
in _thermalRadarLR varchar(100),
in _ptzV varchar(100),
in _thermalRadarV varchar(100),
in _idStatus varchar(25)

)
begin
declare _idTME varchar(10);

declare _CR int;
select (count(*)+1) into _CR from thermalmonitoring;

    IF _CR <= 9 THEN 
        SET _idTME = CONCAT('TME-00', _CR);
    ELSEIF _CR <= 99 THEN 
        SET _idTME = CONCAT('TME-0', _CR);
    ELSE
        SET _idTME = CONCAT('TME-', _CR);
    END IF;

insert into thermalmonitoring
(idThermal,codeTM , type,coverage ,ptzLR ,thermalRadarLR ,ptzV ,thermalRadarV,idStatus)
values
(_idTME,_codeTM ,_type ,_coverage ,_ptzLR  ,_thermalRadarLR, _ptzV, _thermalRadarV, _idStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateAdministrativeNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateAdministrativeNetwork`(
    in _idAdministrative varchar(10),
    in _codeAN varchar(25),
	in _facility varchar(150),
	in _coverage varchar(150),
	in _idLocal varchar(25),
	in _idVisualConecction varchar(25),
	in _idStatus varchar(25)
    )
begin
    UPDATE administrativenetwork 
    SET  codeAN=_codeAN, facility=_facility, coverage=_coverage,
    idLocal=_idLocal,idVisualConecction=_idVisualConecction, 
    idStatus=_idStatus WHERE idAdministrative = _idAdministrative;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateAlarmSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateAlarmSystem`(
	in _idAlarm varchar(10),
	in _facility varchar(150),
	in _coverage varchar(250),
	in _statusVisible varchar(6),
	in _stattusAudible varchar(6),
	in _idStatus varchar(25),
	in _idVisualConecction varchar(25)
    )
begin
    UPDATE alarmsystem 
    SET facility=_facility, coverage=_coverage,
    statusVisible=_statusVisible,stattusAudible=_stattusAudible,idStatus=_idStatus,idVisualConecction=_idVisualConecction, 
    idStatus=_idStatus WHERE  idAlarm= _idAlarm;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateAntifatigueSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateAntifatigueSystem`(
	in _idAntifatigue varchar(10),
	in _licensePlate varchar(25),
	in _vehicleType varchar(250),
	in _area varchar(100),
	in _systemA varchar(150),
	in _idVisualConecction varchar(25),
	in _idStatus varchar(25)
    )
begin
    UPDATE antifatiguesystem 
    SET licensePlate=_licensePlate, vehicleType=_vehicleType,
    area=_area,systemA=_systemA,idVisualConecction=_idVisualConecction,idStatus=_idStatus 
     WHERE  idAntifatigue= _idAntifatigue;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateElectricalStorm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateElectricalStorm`(
	in _idElectrical varchar(10),
	in _zone varchar(150),
	in _sensors varchar(100),
	in _location varchar(150),
	in _idStatus varchar(25)
    )
begin
    UPDATE  electricalstorm
    SET zone=_zone,sensors=_sensors,location=_location,idStatus=_idStatus
     WHERE idElectrical= _idElectrical;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateElectromeshFence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateElectromeshFence`(
	in _idElectromesh varchar(10),
	in _zone varchar(200),
	in _sensors varchar(50),
	in _location varchar(250),
	in _idStatus varchar(25)
    )
begin
    UPDATE electromeshfence 
    SET idElectromesh=_idElectromesh,zone=_zone,sensors=_sensors,location=_location,idStatus=_idStatus
	WHERE idElectromesh=_idElectromesh;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateFireAlarm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateFireAlarm`(
	in _idFire varchar(10),
	in _panel varchar(50),
	in _zone varchar(200),
	in _location varchar(200),
	in _idStatus varchar(25)
    )
begin
    UPDATE firealarm
    SET panel=_panel,zone=_zone,location=_location,idStatus=_idStatus
     WHERE idFire= _idFire;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSecurityNetwork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSecurityNetwork`(
    in _idSecurityNetworkM varchar(10),
    in _codeSN varchar(25),
	in _facility varchar(150),
	in _coverage varchar(150),
	in _idLocal varchar(25),
	in _idVisualConecction varchar(25),
	in _idStatus varchar(25)
    )
begin
    UPDATE securitynetwork 
    SET codeSN =_codeSN, facility=_facility, coverage=_coverage,
    idLocal=_idLocal,idVisualConecction=_idVisualConecction, 
    idStatus=_idStatus WHERE idSecurityNetwork = _idSecurityNetworkM;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSecurityRadio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSecurityRadio`(
	in _idSecurityRadios varchar(10),
	in _radioId varchar(15),
	in _newSerie varchar(50),
	in _activeNew varchar(50),
	in _assignmentDate date,
    in _renewalPuchase varchar(50),
    in _radioAlias varchar(100),
    in _model varchar(30),
    in _radioType varchar(30),
	in _radioUser varchar(250),
    in _distribution varchar(50),
    in _specificLocation varchar(300),
    in _idStatus varchar(25)
    )
begin
    UPDATE securityradio 
    SET radioId=_radioId,newSerie=_newSerie,activeNew=_activeNew,assignmentDate=_assignmentDate,renewalPuchase=_renewalPuchase,
    radioAlias=_radioAlias,model=_model,radioType=_radioType,radioUser=_radioUser,distribution=_distribution,specificLocation=_specificLocation,idStatus=_idStatus
	WHERE idSecurityRadios= _idSecurityRadios;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSmartPadlocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSmartPadlocks`(
	in _idSmart varchar(10),
	in _codeSE varchar(18),
	in _smartLockModel varchar(100),
	in _company varchar(150),
	in _department varchar(150),
	in _location varchar(300),
	in _sponsorName varchar(200),
	in _phone varchar(9),
	in _idVisualConecction varchar(25),
	in _idStatus varchar(25)
    )
begin
    UPDATE smartpadlocks 
    SET codeSE=_codeSE,smartLockModel=_smartLockModel,company=_company,department =_department, location=_location, sponsorName=_sponsorName,phone=_sponsorName,
    idVisualConecction=_idVisualConecction,idStatus=_idStatus
     WHERE  idSmart= _idSmart;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateThermalMonitoring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateThermalMonitoring`(
	in _idThermal varchar(10),
	in _codeTM varchar(25),
	in _type varchar(100),
	in _coverage varchar(200),
	in _ptzLR varchar(100),
	in _thermalRadarLR varchar(100),
	in _ptzV varchar(100),
	in _thermalRadarV varchar(100),
	in _idStatus varchar(25)
    )
begin
    UPDATE thermalmonitoring 
    SET codeTM=_codeTM,type=_type,coverage=_coverage,ptzLR=_ptzLR, thermalRadarLR=_thermalRadarLR, ptzV=_ptzV, thermalRadarV=_thermalRadarV,idStatus=_idStatus
     WHERE  idThermal= _idThermal;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 15:03:40
