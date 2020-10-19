CREATE DATABASE  IF NOT EXISTS `sgc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sgc`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: sgc
-- ------------------------------------------------------
-- Server version	5.5.30

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
-- Table structure for table `asociacion_usuario_funcionalidad`
--

DROP TABLE IF EXISTS `asociacion_usuario_funcionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asociacion_usuario_funcionalidad` (
  `OID_Asociacion` int(11) DEFAULT NULL,
  `OID_Usuario` int(11) DEFAULT NULL,
  `OID_Funcionalidad` int(11) DEFAULT NULL,
  `Alta` char(1) DEFAULT NULL,
  `Baja` char(1) DEFAULT NULL,
  `Modificacion` char(1) DEFAULT NULL,
  `Consulta` char(1) DEFAULT NULL,
  `Busqueda` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociacion_usuario_funcionalidad`
--

LOCK TABLES `asociacion_usuario_funcionalidad` WRITE;
/*!40000 ALTER TABLE `asociacion_usuario_funcionalidad` DISABLE KEYS */;
INSERT INTO `asociacion_usuario_funcionalidad` VALUES (3,2,1000,'1','1','1','1','1'),(4,2,1001,'1','1','1','1','1'),(5,2,1002,'1','1','1','1','0'),(6,2,1003,'1','1','1','1','0'),(7,2,1004,'1','1','1','1','0'),(8,2,1005,'1','1','1','1','0'),(9,2,1006,'0','0','0','1','0'),(10,2,1007,'1','1','1','1','0'),(11,2,1008,'1','1','1','1','0'),(12,2,1009,'1','1','1','1','0'),(13,2,1011,'1','0','0','0','0'),(14,2,1012,'0','0','0','1','0'),(15,2,1013,'1','0','0','0','0'),(16,2,1014,'0','0','0','1','0'),(17,2,1015,'0','0','0','1','0'),(56,2,1010,'1','0','0','0','0');
/*!40000 ALTER TABLE `asociacion_usuario_funcionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclos`
--

DROP TABLE IF EXISTS `ciclos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclos` (
  `OID_Ciclo` int(11) NOT NULL,
  `Desde` int(11) NOT NULL,
  `Hasta` int(11) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `OID_Cultivo` int(11) NOT NULL,
  `Costo_Total` double DEFAULT NULL,
  PRIMARY KEY (`OID_Ciclo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclos`
--

LOCK TABLES `ciclos` WRITE;
/*!40000 ALTER TABLE `ciclos` DISABLE KEYS */;
INSERT INTO `ciclos` VALUES (57,2011,2012,'Finalizado',18,0),(60,2013,2014,'Activo',19,0),(63,2012,2013,'Activo',20,0),(97,2013,2014,'Activo',18,0);
/*!40000 ALTER TABLE `ciclos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosechas`
--

DROP TABLE IF EXISTS `cosechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cosechas` (
  `OID_Cosecha` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `OID_Ciclo` int(11) DEFAULT NULL,
  `OID_MarcoPlantacion` int(11) DEFAULT NULL,
  `rendimientoCosecha` double DEFAULT NULL,
  `unidad` varchar(45) DEFAULT NULL,
  `rendimientoEsperado` double DEFAULT NULL,
  `variacion` double DEFAULT NULL,
  `rendimientoVendido` double DEFAULT NULL,
  `rendimientoSinVender` double DEFAULT NULL,
  PRIMARY KEY (`OID_Cosecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosechas`
--

LOCK TABLES `cosechas` WRITE;
/*!40000 ALTER TABLE `cosechas` DISABLE KEYS */;
INSERT INTO `cosechas` VALUES (93,'2013-10-24',57,58,7500,'Kilos',7000,500,7500,0),(94,'2013-10-24',57,59,5000,'Kilos',4700,300,5000,0);
/*!40000 ALTER TABLE `cosechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costos`
--

DROP TABLE IF EXISTS `costos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costos` (
  `OID_Costo` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `OID_Marco_Plantacion` int(11) NOT NULL,
  `OID_Insumo` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Cantidad_Consumida` double DEFAULT NULL,
  `Unidad` varchar(45) DEFAULT NULL,
  `Importe_Pesos` double DEFAULT NULL,
  `Importe_Dolares` double DEFAULT NULL,
  `OID_Socio` int(11) DEFAULT NULL,
  `Cotizacion` double DEFAULT NULL,
  `Tipo_Costo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_Costo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costos`
--

LOCK TABLES `costos` WRITE;
/*!40000 ALTER TABLE `costos` DISABLE KEYS */;
INSERT INTO `costos` VALUES (65,'2013-10-24',58,37,'',0,'No Aplica',4128.44,196.59,31,21,'Indirecto'),(66,'2013-10-24',59,37,'',0,'No Aplica',8256.88,393.19,31,21,'Indirecto'),(67,'2013-10-24',61,37,'',0,'No Aplica',16513.76,786.37,31,21,'Indirecto'),(68,'2013-10-24',62,37,'',0,'No Aplica',3715.6,176.93,31,21,'Indirecto'),(69,'2013-10-24',64,37,'',0,'No Aplica',12385.32,589.78,31,21,'Indirecto'),(70,'2013-10-24',58,39,'',7.67,'Litros',268.33,12.78,31,21,'Directo'),(71,'2013-10-24',59,39,'',15.33,'Litros',536.67,25.55,31,21,'Directo'),(72,'2013-10-10',58,36,'',229.36,'Litros',4743.12,225.86,32,21,'Indirecto'),(73,'2013-10-10',59,36,'',458.72,'Litros',9486.24,451.72,32,21,'Indirecto'),(74,'2013-10-10',61,36,'',917.43,'Litros',18972.48,903.45,32,21,'Indirecto'),(75,'2013-10-10',62,36,'',206.42,'Litros',4268.81,203.28,32,21,'Indirecto'),(76,'2013-10-10',64,36,'',688.07,'Litros',14229.36,677.59,32,21,'Indirecto'),(77,'2013-10-02',58,37,'',0,'No Aplica',2935.78,143.91,31,20.4,'Indirecto'),(78,'2013-10-02',59,37,'',0,'No Aplica',5871.56,287.82,31,20.4,'Indirecto'),(79,'2013-10-02',61,37,'',0,'No Aplica',11743.12,575.64,31,20.4,'Indirecto'),(80,'2013-10-02',62,37,'',0,'No Aplica',2642.2,129.52,31,20.4,'Indirecto'),(81,'2013-10-02',64,37,'',0,'No Aplica',8807.34,431.73,31,20.4,'Indirecto'),(82,'2013-10-24',58,38,'',27.52,'Litros',85.6,4.08,31,21,'Indirecto'),(83,'2013-10-24',59,38,'',55.05,'Litros',171.19,8.15,31,21,'Indirecto'),(84,'2013-10-24',61,38,'',110.09,'Litros',342.39,16.3,31,21,'Indirecto'),(85,'2013-10-24',62,38,'',24.77,'Litros',77.04,3.67,31,21,'Indirecto'),(86,'2013-10-24',64,38,'',82.57,'Litros',256.79,12.23,31,21,'Indirecto'),(88,'2013-08-09',58,34,'',311.93,'Litros',3119.27,168.61,31,18.5,'Indirecto'),(89,'2013-08-09',59,34,'',623.85,'Litros',6238.53,337.22,31,18.5,'Indirecto'),(90,'2013-08-09',61,34,'',1247.71,'Litros',12477.06,674.44,31,18.5,'Indirecto'),(91,'2013-08-09',62,34,'',280.73,'Litros',2807.34,151.75,31,18.5,'Indirecto'),(92,'2013-08-09',64,34,'',935.78,'Litros',9357.8,505.83,31,18.5,'Indirecto'),(100,'2013-10-02',98,35,'',91.06,'Horas',7967.48,390.56,31,20.4,'Indirecto'),(101,'2013-10-02',99,35,'',195.12,'Horas',17073.17,836.92,31,20.4,'Indirecto'),(102,'2013-10-02',61,35,'',260.16,'Horas',22764.23,1115.89,31,20.4,'Indirecto'),(103,'2013-10-02',62,35,'',58.54,'Horas',5121.95,251.08,31,20.4,'Indirecto'),(104,'2013-10-02',64,35,'',195.12,'Horas',17073.17,836.92,31,20.4,'Indirecto');
/*!40000 ALTER TABLE `costos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizaciones`
--

DROP TABLE IF EXISTS `cotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizaciones` (
  `OID_Cotizacion` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cotizacion` double DEFAULT NULL,
  PRIMARY KEY (`OID_Cotizacion`,`Fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones`
--

LOCK TABLES `cotizaciones` WRITE;
/*!40000 ALTER TABLE `cotizaciones` DISABLE KEYS */;
INSERT INTO `cotizaciones` VALUES (40,'2013-10-01',19.4),(41,'2013-10-02',20.4),(50,'2013-10-16',21),(52,'2013-10-03',19.4),(54,'2013-10-24',21),(87,'2013-08-09',18.5);
/*!40000 ALTER TABLE `cotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuadros`
--

DROP TABLE IF EXISTS `cuadros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadros` (
  `OID_Cuadro` int(11) NOT NULL,
  `Identificacion` varchar(45) NOT NULL,
  `SuperficieTotal` int(11) DEFAULT NULL,
  `SuperficieDisponible` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID_Cuadro`,`Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuadros`
--

LOCK TABLES `cuadros` WRITE;
/*!40000 ALTER TABLE `cuadros` DISABLE KEYS */;
INSERT INTO `cuadros` VALUES (21,'001',100,100),(22,'002',200,200),(23,'003',300,0),(24,'004',400,0),(25,'005',500,500),(26,'006',600,300),(27,'007',700,700),(28,'008',800,800),(29,'009',900,810),(30,'010',1000,860);
/*!40000 ALTER TABLE `cuadros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cultivos`
--

DROP TABLE IF EXISTS `cultivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cultivos` (
  `OID_cultivo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `OID_CicloActivo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_cultivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivos`
--

LOCK TABLES `cultivos` WRITE;
/*!40000 ALTER TABLE `cultivos` DISABLE KEYS */;
INSERT INTO `cultivos` VALUES (18,'Peras','Activo','Anual','97'),(19,'Duraznos','Activo','Permanente','60'),(20,'Papas','Activo','Permanente','63');
/*!40000 ALTER TABLE `cultivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionalidades`
--

DROP TABLE IF EXISTS `funcionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades` (
  `OID_Funcionalidad` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Alta` char(1) DEFAULT NULL,
  `Baja` char(1) DEFAULT NULL,
  `Modificacion` char(1) DEFAULT NULL,
  `Consulta` char(1) DEFAULT NULL,
  `Busqueda` char(1) DEFAULT NULL,
  PRIMARY KEY (`OID_Funcionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidades`
--

LOCK TABLES `funcionalidades` WRITE;
/*!40000 ALTER TABLE `funcionalidades` DISABLE KEYS */;
INSERT INTO `funcionalidades` VALUES (1000,'Gestión de Usuarios','1','1','1','1','1'),(1001,'Gestión de Asociación Usuario-Funcionalidades','1','1','1','1','1'),(1002,'Mantenimiento de Cuadros','1','1','1','1','0'),(1003,'Mantenimiento de Cultivos','1','1','1','1','0'),(1004,'Mantenimiento de Socios','1','1','1','1','0'),(1005,'Mantenimiento de Insumos / Gastos','1','1','1','1','0'),(1006,'Consulta de Lluvias','0','0','0','1','0'),(1007,'Mantenimiento de Lluvias','1','1','1','1','0'),(1008,'Mantenimiento de Cotizaciones','1','1','1','1','0'),(1009,'Compra y Mantenimiento de Stock','1','1','1','1','0'),(1010,'Trabajar con Cultivos','1','0','0','0','0'),(1011,'Registro de Costos','1','0','0','0','0'),(1012,'Consulta de Costos','0','0','0','1','0'),(1013,'Ingresos por Ventas','1','0','0','0','0'),(1014,'Resultados Económicos','0','0','0','1','0'),(1015,'Consulta de Cuadros','0','0','0','1','0');
/*!40000 ALTER TABLE `funcionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresosporventa`
--

DROP TABLE IF EXISTS `ingresosporventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresosporventa` (
  `OID_IngresoPorVenta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `OID_marcoPlantacion` int(11) DEFAULT NULL,
  `OID_cosecha` int(11) DEFAULT NULL,
  `cantidadVendida` double DEFAULT NULL,
  `precioUnidadEnPesos` double DEFAULT NULL,
  `ingresoPesos` double DEFAULT NULL,
  `cotizacion` double DEFAULT NULL,
  `ingresoDolares` double DEFAULT NULL,
  `destinoVenta` varchar(50) DEFAULT NULL,
  `TipoIngreso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_IngresoPorVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresosporventa`
--

LOCK TABLES `ingresosporventa` WRITE;
/*!40000 ALTER TABLE `ingresosporventa` DISABLE KEYS */;
INSERT INTO `ingresosporventa` VALUES (95,'2013-10-24',58,93,7500,0.21,36000,21,1714.28,'Brasil','Exportación'),(96,'2013-10-24',59,94,5000,0.21,24000,21,1142.86,'Brasil','Exportación');
/*!40000 ALTER TABLE `ingresosporventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos`
--

DROP TABLE IF EXISTS `insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumos` (
  `OID_Insumo` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Insumo_Gasto` varchar(45) DEFAULT NULL,
  `Unidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_Insumo`,`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` VALUES (33,'Fertilizante - AX','Fertilizante -  AX','Insumo','Litros'),(34,'Funguicida','Funguicida - bc','Insumo','Litros'),(35,'Mano de Obra','Mano de Obra','Gasto','Horas'),(36,'Agua','Agua','Gasto','Litros'),(37,'Electricidad','Electricidad','Gasto','No Aplica'),(38,'Fertilizante - AR','Fertilizante -  AR','Insumo','Litros'),(39,'Combustible','Combustible','Insumo','Litros');
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lluvias`
--

DROP TABLE IF EXISTS `lluvias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lluvias` (
  `OID_Lluvia` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Milimetros` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID_Lluvia`,`Fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lluvias`
--

LOCK TABLES `lluvias` WRITE;
/*!40000 ALTER TABLE `lluvias` DISABLE KEYS */;
INSERT INTO `lluvias` VALUES (42,'2013-10-01',240),(43,'2013-10-02',233),(44,'2013-09-02',213),(45,'2013-10-16',123),(46,'2013-10-11',213),(47,'2013-08-06',2332),(48,'2013-08-14',23);
/*!40000 ALTER TABLE `lluvias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marco_plantacion`
--

DROP TABLE IF EXISTS `marco_plantacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marco_plantacion` (
  `OID_Marco_Plantacion` int(11) NOT NULL,
  `Modo_Plantacion` varchar(45) NOT NULL,
  `Superficie` int(11) DEFAULT NULL,
  `nroPlantes` int(11) DEFAULT NULL,
  `OID_Cuadro` varchar(45) NOT NULL,
  `OID_Ciclo` int(11) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_Marco_Plantacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marco_plantacion`
--

LOCK TABLES `marco_plantacion` WRITE;
/*!40000 ALTER TABLE `marco_plantacion` DISABLE KEYS */;
INSERT INTO `marco_plantacion` VALUES (58,'Áreas',100,200,'21',57,'Finalizado'),(59,'Áreas',200,230,'22',57,'Finalizado'),(61,'Áreas',400,232,'24',60,'Activo'),(62,'Canteros',90,23,'29',60,'Activo'),(64,'Áreas',300,23,'23',63,'Activo'),(98,'Áreas',140,260,'30',97,'Activo'),(99,'Canteros',300,450,'26',97,'Activo');
/*!40000 ALTER TABLE `marco_plantacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oid_manager`
--

DROP TABLE IF EXISTS `oid_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oid_manager` (
  `OID_Manager` int(11) NOT NULL,
  PRIMARY KEY (`OID_Manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oid_manager`
--

LOCK TABLES `oid_manager` WRITE;
/*!40000 ALTER TABLE `oid_manager` DISABLE KEYS */;
INSERT INTO `oid_manager` VALUES (104);
/*!40000 ALTER TABLE `oid_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socios` (
  `OID_Socio` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Identificacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_Socio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (31,'Juan Perez','12345678'),(32,'María Lopez','31676543');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks_insumos`
--

DROP TABLE IF EXISTS `stocks_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks_insumos` (
  `oid_Stock` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `oid_socio` int(11) DEFAULT NULL,
  `oid_insumo` int(11) DEFAULT NULL,
  `cantidadDisponible` double DEFAULT NULL,
  `unidad` varchar(45) DEFAULT NULL,
  `costoTotalPesos` double DEFAULT NULL,
  `costoUnitarioPesos` double DEFAULT NULL,
  `cotizacion` double DEFAULT NULL,
  `costoTotalDolares` double DEFAULT NULL,
  `costoUnitarioDolares` double DEFAULT NULL,
  PRIMARY KEY (`oid_Stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks_insumos`
--

LOCK TABLES `stocks_insumos` WRITE;
/*!40000 ALTER TABLE `stocks_insumos` DISABLE KEYS */;
INSERT INTO `stocks_insumos` VALUES (49,'2013-10-01',31,39,477,'Litros',17500,35,19.4,902.06,1.8),(51,'2013-10-16',31,38,4200,'Kilos',14000,3.11,21,666.67,0.15),(53,'2013-10-03',32,34,1100,'Kilos',45000,10,19.4,2319.59,0.52),(55,'2013-10-24',32,39,2500,'Litros',100000,40,21,4761.9,1.9);
/*!40000 ALTER TABLE `stocks_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `OID_Usuario` int(11) NOT NULL,
  `Nick` varchar(45) NOT NULL,
  `Clave` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Identificacion` varchar(45) DEFAULT NULL,
  `Mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OID_Usuario`,`Nick`,`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'juan','48f42a08b4115f26c2a9b4ad70a2c6ce','Juan','Perez','mail@gmail.com','12345678'),(191,'Administrador','77e2edcc9b40441200e31dc57dbb8829','Admin','Admin','Admin','sgc.sist@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-24 17:57:39
