/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `license_plate_number` varchar(20) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `daily_cost` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cars` (`id`, `license_plate_number`, `brand`, `model`, `daily_cost`, `created_at`, `updated_at`) VALUES
(1, 'IOA-699', 'Ford', 'Chile', 24000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(2, 'ABY-945', 'Ford', 'CX727', 24000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(3, 'NTJ-242', 'Ford', 'Evos', 20000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(4, 'OKG-375', 'Ford', 'Fiesta', 22000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(5, 'UCS-211', 'Ford', 'Focus', 27000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(6, 'NEK-649', 'Ford', 'Galaxy', 20000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(7, 'LXK-572', 'Ford', 'Kuga', 21000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(8, 'HOL-474', 'Ford', 'Mondeo', 18000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(9, 'TTJ-745', 'Ford', 'Explorer', 22000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(10, 'AUO-561', 'Peugeot', '208gt', 19000, '2022-04-19 04:09:18', '2022-04-19 04:09:18'),
(11, 'VRK-253', 'Renault', 'Clio', 21000, '2022-04-19 04:09:18', '2022-04-19 04:09:18');
