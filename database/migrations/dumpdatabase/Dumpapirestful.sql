-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: apirestfulmaylonzanardi
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2015_01_15_105324_create_roles_table',2),(3,'2015_01_15_114412_create_role_user_table',2),(4,'2015_01_26_115212_create_permissions_table',2),(5,'2015_01_26_115523_create_permission_role_table',2),(6,'2015_02_09_132439_create_permission_user_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('0263dcf55e5d5a27ff5fab4f1f3a618d8e44e1ef0963abb2615889940c29b229ac326b1940aaeced',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:12:46','2018-03-29 04:12:46','2019-03-29 01:12:46'),('026c0bb175895d9d7a6910e2a2886dfa9aeaeb3e4d6999e457b5df46f3ba274d6ee1e4e0475c51ec',2,2,NULL,'[\"*\"]',0,'2018-03-29 02:16:02','2018-03-29 02:16:02','2019-03-28 23:16:02'),('08132e2b289020f8599da06f7c4bf32fb3c04ba306ecdf5910933b5b0ba7578c2193bb623551af35',2,2,NULL,'[\"*\"]',0,'2018-03-28 22:32:02','2018-03-28 22:32:02','2019-03-28 19:32:02'),('19a1ca69a5a3cf7be98daf136448887a2ecb940dc8c65dc9503cc19c4d9b6db384ac16e73a78e060',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:10:37','2018-03-29 04:10:37','2019-03-29 01:10:37'),('1a025f0c5d61ed218aa83537bff17fb18d380c7bda95e6642e2ac327c015f5bd4c63e1af3d63f1cd',4,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-29 15:40:21','2018-03-29 15:40:21','2019-03-29 12:40:21'),('1c362073a691d41b50ae05ad56d6359f3b8ea5db97e9c1a89ab667f54fa04e8a7e9326cdcdf1e19e',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-30 01:30:18','2018-03-30 01:30:18','2019-03-29 22:30:18'),('1fc8b583559c5acb7f5421ed825785256d51039efbf0df8b2b76085f45f46f58022defbd98c2804d',2,2,NULL,'[]',0,'2018-03-29 03:17:07','2018-03-29 03:17:07','2019-03-29 00:17:07'),('2617dd53e172eb4710d3344573de57425d0c2d611f5f4f3af8f1be78bee96dc0bf8c4efa2d00536e',1,2,NULL,'[\"*\"]',0,'2018-03-29 02:18:34','2018-03-29 02:18:34','2019-03-28 23:18:34'),('283aa644717e0c9f6d9ecda0721ead598b9897aaef0d24ecdb4ef54cc66244a8fd7775382db7b568',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:17:45','2018-03-29 04:17:45','2019-03-29 01:17:45'),('28e4df2fd53862f25d808cb1d32de79a807064b4ffd4f8f208d5c2791b3ea3b7878fa2485f586b89',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:49:57','2018-03-29 05:49:57','2019-03-29 02:49:57'),('2c853d684aa5a2c5980bd9675f8dd499be605b2061595ff958902bcc393a095e817d6a47a4dff169',1,2,NULL,'[\"*\"]',0,'2018-03-28 22:17:20','2018-03-28 22:17:20','2019-03-28 19:17:20'),('36f8d527aeb3035494f99a5be70cb2018708e3f52e5049704ccb40524406644e444d3fa2f570e2d3',2,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-30 01:42:57','2018-03-30 01:42:57','2019-03-29 22:42:57'),('37c9b323d58bd19af0d1c667cf4bb00a70916e62990e20f9095d6a18d0e0d14bbecd02572fcb9c21',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:36:10','2018-03-29 04:36:10','2019-03-29 01:36:10'),('4656067d782192e150c2fa8023f2fa0678bc31d6ee710625aa969949012e1186635a6ba57443bbed',1,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-30 01:37:15','2018-03-30 01:37:15','2019-03-29 22:37:15'),('4c5213b60c97e6339cfc2235c2dc5c10afc5589bf05ebbc88bbf8e5c94765a7ab0984606a1310180',4,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-29 15:40:11','2018-03-29 15:40:11','2019-03-29 12:40:11'),('55c9214c1876924b7ad1eefc7ab9e112f850ad60fba23a2a232b8e6d5bd01c548f93d1ab768badbe',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:24:50','2018-03-29 05:24:50','2019-03-29 02:24:50'),('58319d5ff04d14ca7bba1d7393e8a11249486f6bab76b44ab2f268fd877f47da1dd6b08aeb2ef3ab',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:51:38','2018-03-29 04:51:38','2019-03-29 01:51:38'),('58b50e735ba1b0cb722cf339adfbdee7be65296e673d2d6e15141e005d7c73aa4491c2e5ee24f618',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:10:22','2018-03-29 04:10:22','2019-03-29 01:10:22'),('5a2021d5426ae8e0566acd8ee5c194eb8069a75f008bc69c8a2126a3a45fb2a490df737b271a5d26',2,2,NULL,'[\"get-users\"]',0,'2018-03-29 03:04:43','2018-03-29 03:04:43','2019-03-29 00:04:43'),('5f343db0164592b2c123f5b5ddc4fce08a73e0ce0bf3f449a85978ccd6665a057831b8018c3335e4',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:08:42','2018-03-29 04:08:42','2019-03-29 01:08:42'),('5fbeaad6c4e2a3b1c8d3aff15f038f343ef0294b80ce5fe6050adfad6a71a828f0e255bce5f7d642',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:04:17','2018-03-29 05:04:17','2019-03-29 02:04:17'),('605e35ab1e896f311881ad517918d05f090b1d3f7e6b5d7a7eb53168bb7d5e827c5d4faab5e5fc42',2,2,NULL,'[\"*\"]',0,'2018-03-29 02:22:52','2018-03-29 02:22:52','2019-03-28 23:22:52'),('65d3cc6812548d9581fd3d26b19feb77294765cea95ba571f1341e894cd00e1f535efc8bffe58fc3',4,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-29 05:03:46','2018-03-29 05:03:46','2019-03-29 02:03:46'),('6830e79c45dc6882c6e4b5ff90005ecdb17b1191e9d60441b9f69b5b901e0f37bd5a719534427f06',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 03:57:44','2018-03-29 03:57:44','2019-03-29 00:57:44'),('6ca07fb1c218384d84406dd21f7e5bf2add8e32646bdff603f3cd2c8ea20368b1da7c42eb6931b3c',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:35:47','2018-03-29 04:35:47','2019-03-29 01:35:47'),('6ee3a536626154c715b2a5c113388b0721c4afee4c05ef72de92487cf5022761fca34209e5296175',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-30 00:00:06','2018-03-30 00:00:06','2019-03-29 21:00:06'),('7717652b0e908508046f2c54931d65817ccdf6909a04edb05872341c1c8325ced1ef447965c7e435',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-29 06:58:48','2018-03-29 06:58:48','2019-03-29 03:58:48'),('77cee939217ff7d21514c4de1193938b10f26f1eea4a238b1b6b8abe9d2def0c4f5851e7e86eabd8',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:35:35','2018-03-29 04:35:35','2019-03-29 01:35:35'),('782d1d82baadec9265bb55f2c657b87c3107b88a762364e5b66bc1ed23337238c18ec5bebf772cce',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:56:58','2018-03-29 05:56:58','2019-03-29 02:56:58'),('7e295cafd92beb4d85cb20d4a9d0784aa1d1802a4dd535428bb75553b890b0f65b05d0200eb8c69b',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:13:37','2018-03-29 04:13:37','2019-03-29 01:13:37'),('829abd03591bda86c90bef5e3cddbfbedba97204fc1b6c9dc1f922b1f35dd2b81dcf70b869f9977a',4,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-29 05:54:14','2018-03-29 05:54:14','2019-03-29 02:54:14'),('84c4eb1218d9af2c2cb6e0e470420c9eb3e19529ac47175c2870466fafeaf3ad6b16cc1699c043fa',2,2,NULL,'[\"*\"]',0,'2018-03-29 02:03:01','2018-03-29 02:03:01','2019-03-28 23:03:01'),('87c31ddfcae3f2ad3d9aea22df9246397357927cc636388000cd0cc53416c4736a00668d06030013',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:49:25','2018-03-29 04:49:25','2019-03-29 01:49:25'),('8bd6aff9306a070ad08eda72e23e14f54f30d21aa38b58a4238fabd8de5c1be503405244580471f7',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 03:59:03','2018-03-29 03:59:03','2019-03-29 00:59:03'),('8d3ddb2cbe3554ee931fe786a41ddadd0b696dc584f02726b7e77f9e0f1130c55d7391a550edfbc4',2,2,NULL,'[\"*\"]',0,'2018-03-29 01:18:00','2018-03-29 01:18:00','2019-03-28 22:18:00'),('90385620b102de7878e33d5f3a273be9bf27e313a64f26a1591792c749d8eeb77eb5067d177e5e5a',2,2,NULL,'[\"get-users\",\"edit-users\"]',0,'2018-03-29 03:20:33','2018-03-29 03:20:33','2019-03-29 00:20:33'),('904d40a86d83e626bed73c7dba03ab7eded2c921c9e38260afa335d4387659ad27394b725a511199',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:01:15','2018-03-29 05:01:15','2019-03-29 02:01:15'),('9a129c7c42d7613b68a092c376588d5504e22f605a1b24fbfc34ff443c7451234ad0b6c837a8175c',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:05:54','2018-03-29 04:05:54','2019-03-29 01:05:54'),('a14d674f186cd53156bbe42f7980ad59ead9439dae2eab329aed8ad96710300da117af663d13a5cd',1,2,NULL,'[\"*\"]',0,'2018-03-28 22:22:14','2018-03-28 22:22:14','2019-03-28 19:22:14'),('aa6b90c797841c3957ab12413d12fa0130a773f760be07fe9be35495215b666fecc55f22ace434bf',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:11:48','2018-03-29 04:11:48','2019-03-29 01:11:48'),('b3800c42eaa131886d93a08463116460ee9d322e5cc459ab869882060587e8dae5cade51e5ee5c3b',2,2,NULL,'[\"*\"]',0,'2018-03-29 02:17:11','2018-03-29 02:17:11','2019-03-28 23:17:11'),('b581eb165f02dc5dcf4314601ee9699b4e4c0afa173e22c54b8d269a519e8be448922dc0ea49b114',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:03:36','2018-03-29 04:03:36','2019-03-29 01:03:36'),('b634e1e8ef5a67f161a3935cbb6f8757d570d2448910623aa2791a974dced4953e5c65d1b8a813c1',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:01:48','2018-03-29 05:01:48','2019-03-29 02:01:48'),('b908bf3caff9d1601f2f6bdaf2a93b9cf82eae36ac0b6b1d26810ab664da45db6a5873671c31aa8a',2,2,NULL,'[\"*\"]',0,'2018-03-29 01:41:52','2018-03-29 01:41:52','2019-03-28 22:41:52'),('bb135e2c558cd812ca15b4ac30e4ca97d1b573c6a25a65d25390bf735edbd30513a4fd3b5aabd3b2',1,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-30 01:46:32','2018-03-30 01:46:32','2019-03-29 22:46:32'),('bd41362b86a1cc3ffc8a40603050f2e807d1059c5789d2dd1b7119884292e548f0bd279bf796f487',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:24:06','2018-03-29 04:24:06','2019-03-29 01:24:06'),('bd5a2615375ca683a40bc44c4f61ec99d7de4d26c0faaf4cf6f6aecdc203be85597d0c9331e72474',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:52:07','2018-03-29 04:52:07','2019-03-29 01:52:07'),('be88ab42906f6a4590b9c7fe2f2b0876f4bd942fb75184de43d8ca17234140f9229fa70761855df9',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-29 07:43:59','2018-03-29 07:43:59','2019-03-29 04:43:59'),('cf34028c65e3a059ff3ca8961080418cf20d50a26c4a092fc60c9633b6168c81a4f7c8a702c69364',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-29 15:41:16','2018-03-29 15:41:16','2019-03-29 12:41:16'),('d31928c8f3380e8b4d30f69fb6853093a9dada189f7140b9b6f815334d0c30d35ae7af46c1092bd0',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:52:32','2018-03-29 04:52:32','2019-03-29 01:52:32'),('d773faf9d330f602166a0f3d221c04ef4eca7df2492c29491bb429e754fd9a592b2fe2296e2c3cfd',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:34:59','2018-03-29 04:34:59','2019-03-29 01:34:59'),('d94aa966444f8f9d3251d13338668abbcd294be3a70e2aad19ed003019e64ac40d36fb13fb4a750e',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 03:58:26','2018-03-29 03:58:26','2019-03-29 00:58:26'),('d9f6b00597ee131701395bfd01748879e0cb7accd6a2a475d195305ec608414ca4dcf6f952b1ac52',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 05:01:29','2018-03-29 05:01:29','2019-03-29 02:01:29'),('e1ee240c0e91c18157780c17448720a6b112e76581a817d0a90f2d5d4cbfbeb2a7a51a4b4d844e60',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 03:58:12','2018-03-29 03:58:12','2019-03-29 00:58:12'),('e8290db39140aeb1ce71468ee5cd09c3608cb1d0d102072c56d4c3224782012da2b267f8b7108e83',4,2,NULL,'[\"get-user\",\"edit-user\",\"delete-user\"]',0,'2018-03-29 05:04:19','2018-03-29 05:04:19','2019-03-29 02:04:19'),('eb7a768ca7333457277cc6450fd4d0aa77efb96def8b6e48f3f2654046d0630ac7ce90585eb98715',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 04:26:08','2018-03-29 04:26:08','2019-03-29 01:26:08'),('f2773c76a472aa0a27a92582b40a7057bd1a705b7a608ac27b51d34eb7e157152a7e47306b48d871',1,2,NULL,'[\"*\"]',0,'2018-03-28 22:28:20','2018-03-28 22:28:20','2019-03-28 19:28:20'),('f4726218a1fd775a30551e267a65ebd7628a3a29e0fdef8ca2b2b188c75b0e8890e37a32de163032',2,2,NULL,'[\"get-users\",\"edit-users\",\"delete-users\"]',0,'2018-03-29 03:56:57','2018-03-29 03:56:57','2019-03-29 00:56:57'),('faebf5cfe394cf310a9bbbafd03f7bbc58cfc2e43bbd4da2596a0e2944d90f521f3755acf0e01bc1',2,2,NULL,'[\"get-user-admin\",\"edit-user-admin\",\"delete-user-admin\"]',0,'2018-03-30 00:34:03','2018-03-30 00:34:03','2019-03-29 21:34:03');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','RXpcS6kjIWxSbx65AvAaF70mzPjqa4I96FC0ASTY','http://localhost',1,0,0,'2018-03-28 21:47:47','2018-03-28 21:47:47'),(2,NULL,'Laravel Password Grant Client','EH7X2Zl9SSYU7SX1Ch9nDqW7i6tXxhetSt5Kk6lM','http://localhost',0,1,0,'2018-03-28 21:47:47','2018-03-28 21:47:47');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-03-28 20:26:18','2018-03-28 20:26:18'),(2,3,'2018-03-28 21:42:05','2018-03-28 21:42:05'),(3,1,'2018-03-28 21:47:47','2018-03-28 21:47:47');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('0283baebbfd0a00ba86f60fcf2c6c6f8ec531d1ec743e5ec7d3164e2a2a34614292c6bd573888d04','f2773c76a472aa0a27a92582b40a7057bd1a705b7a608ac27b51d34eb7e157152a7e47306b48d871',0,'2019-03-28 19:28:20'),('073cf443ccfe56482a355aa0865dc691fc31d1fe474f91586b1f3da1e0f6414c1939a41e8a46bc87','e1ee240c0e91c18157780c17448720a6b112e76581a817d0a90f2d5d4cbfbeb2a7a51a4b4d844e60',0,'2019-03-29 00:58:12'),('077ad6591aef3f11472032d75118af1d37acdbc776cff9f531d881f2bd48ccc7ba2455f277c8c6c6','b908bf3caff9d1601f2f6bdaf2a93b9cf82eae36ac0b6b1d26810ab664da45db6a5873671c31aa8a',0,'2019-03-28 22:41:52'),('0bb7356981b245fc2b02cc7eb068e4af6e932db174fb4f653abfa854df13cf78741fa4cf5e52c621','58319d5ff04d14ca7bba1d7393e8a11249486f6bab76b44ab2f268fd877f47da1dd6b08aeb2ef3ab',0,'2019-03-29 01:51:38'),('1063de83652db8c69624e29f79240d8ac066233e4b0f51b1163f847657a662f8f25b76183f92fd3c','bd5a2615375ca683a40bc44c4f61ec99d7de4d26c0faaf4cf6f6aecdc203be85597d0c9331e72474',0,'2019-03-29 01:52:07'),('130fb4ad83632d50d000be3158cb3b81271c98a72ef72ecb46ad2982ab5a98182168493ebcfb4143','bb135e2c558cd812ca15b4ac30e4ca97d1b573c6a25a65d25390bf735edbd30513a4fd3b5aabd3b2',0,'2019-03-29 22:46:32'),('1d269ed41f861383383383d0b1e503181ae0a089efc5351c70467164ad6042ceccbfe76c4746f129','829abd03591bda86c90bef5e3cddbfbedba97204fc1b6c9dc1f922b1f35dd2b81dcf70b869f9977a',0,'2019-03-29 02:54:14'),('1d9e746146f17c129d3244aeb6337131644f0b6f9b0bee4d7af3bb5ffa8d84f0a5bebb988708d18f','1a025f0c5d61ed218aa83537bff17fb18d380c7bda95e6642e2ac327c015f5bd4c63e1af3d63f1cd',0,'2019-03-29 12:40:21'),('1ff2a4835245fea5081624ae42cc5c1ad0fa5e4cd32c390cc468785acae2d23bf7b0fa73267a4843','026c0bb175895d9d7a6910e2a2886dfa9aeaeb3e4d6999e457b5df46f3ba274d6ee1e4e0475c51ec',0,'2019-03-28 23:16:02'),('21f66cfdcbb251b78d8902c776c30bd3d526f7a9854ab77a2ab5687dbe359ff483a4b5ac9aaa37c5','d9f6b00597ee131701395bfd01748879e0cb7accd6a2a475d195305ec608414ca4dcf6f952b1ac52',0,'2019-03-29 02:01:29'),('23ef161ca246037bf9e0027d35f8fe780fa89d69de68605bb8c0b4ec346ede7eafd80ea7d75d8ef5','faebf5cfe394cf310a9bbbafd03f7bbc58cfc2e43bbd4da2596a0e2944d90f521f3755acf0e01bc1',0,'2019-03-29 21:34:04'),('254aabee045c346b560284a0ed29f5ec564caa39ca45dbc44ea66162e3741a33c13817bc86313ba5','90385620b102de7878e33d5f3a273be9bf27e313a64f26a1591792c749d8eeb77eb5067d177e5e5a',0,'2019-03-29 00:20:33'),('2df52a98a67583215c1d043b9120b9395ebbb953afc600d093796bd141e64cb9b5fa3ab1efee33bf','a14d674f186cd53156bbe42f7980ad59ead9439dae2eab329aed8ad96710300da117af663d13a5cd',0,'2019-03-28 19:22:14'),('33a035b5826e31ea93d40471866ead06fb89b275312426d7517763b378338a219586c62b8dcfe853','5a2021d5426ae8e0566acd8ee5c194eb8069a75f008bc69c8a2126a3a45fb2a490df737b271a5d26',0,'2019-03-29 00:04:43'),('3a26f0f4e108f4bdce7f33aac669d831219dfea4f46c08b4ab69b4954a72197b92bcda6432be9e22','f4726218a1fd775a30551e267a65ebd7628a3a29e0fdef8ca2b2b188c75b0e8890e37a32de163032',0,'2019-03-29 00:56:57'),('3c5a7d54abc527dd2288a03b16b1943ef554fd5e1ed93b44af6b6b1d6655b6948c17550b72b3263f','eb7a768ca7333457277cc6450fd4d0aa77efb96def8b6e48f3f2654046d0630ac7ce90585eb98715',0,'2019-03-29 01:26:08'),('3e6efbccee1aa14018e8c5b44cb357a466a4935314c06ed6a0c512e51da1c4adc7c3faed09e65be6','5fbeaad6c4e2a3b1c8d3aff15f038f343ef0294b80ce5fe6050adfad6a71a828f0e255bce5f7d642',0,'2019-03-29 02:04:17'),('4036aa8d7cea61f1d5c518138a2aae4e82047ee3fa393204dfc6a8d6343c8a39fdb2f0a3e1d97fc5','65d3cc6812548d9581fd3d26b19feb77294765cea95ba571f1341e894cd00e1f535efc8bffe58fc3',0,'2019-03-29 02:03:46'),('414f78b8877c32379f6e4c316f3101d0abeb49a8bf1fe51beecd5a6f8b1882738e6fd372c0e88766','77cee939217ff7d21514c4de1193938b10f26f1eea4a238b1b6b8abe9d2def0c4f5851e7e86eabd8',0,'2019-03-29 01:35:35'),('45d600e5dbe12a1f6ba02385d71de7d9a922380521759534f9cf76e1f52169824e9f362cb9330d14','28e4df2fd53862f25d808cb1d32de79a807064b4ffd4f8f208d5c2791b3ea3b7878fa2485f586b89',0,'2019-03-29 02:49:57'),('45de1215c1f23ddd8c79758906e5c78fa89e44349f5665372ad9afdaf0156d9ff6c15e4c4d4af341','cf34028c65e3a059ff3ca8961080418cf20d50a26c4a092fc60c9633b6168c81a4f7c8a702c69364',0,'2019-03-29 12:41:16'),('4824f054fbc476142b57ae424f2dc02def6dececacba3f7cc79ce10a167c50ba0a6ab34d34b5ddf2','7717652b0e908508046f2c54931d65817ccdf6909a04edb05872341c1c8325ced1ef447965c7e435',0,'2019-03-29 03:58:48'),('49275b3cea645ce81f9899130f8d91dce19ffa6ecaa2a27f14877223815aab04fbb952a60808f324','4656067d782192e150c2fa8023f2fa0678bc31d6ee710625aa969949012e1186635a6ba57443bbed',0,'2019-03-29 22:37:15'),('5607570d78026bd36ac3053cd3ba71f4a4eb7a8b40d2567ccdea6bd206e4d803a5b4ebe053799b4b','1c362073a691d41b50ae05ad56d6359f3b8ea5db97e9c1a89ab667f54fa04e8a7e9326cdcdf1e19e',0,'2019-03-29 22:30:18'),('625536d79ccb85afa38e40ca14e5961a011cb595c51550649eda99fdc0eabcd7d94b13b077200992','904d40a86d83e626bed73c7dba03ab7eded2c921c9e38260afa335d4387659ad27394b725a511199',0,'2019-03-29 02:01:15'),('67b35cf3b1c8a9b176eb0bed8e6ac828c15259560f4cae9b60c0321bb99e3c1bf1ffbfa1f505e19e','36f8d527aeb3035494f99a5be70cb2018708e3f52e5049704ccb40524406644e444d3fa2f570e2d3',0,'2019-03-29 22:42:57'),('6a72b8684c690e9650adc40bd4173579f36f865cb971e30e350985e3b0747d3656f3a00d17e3c349','b3800c42eaa131886d93a08463116460ee9d322e5cc459ab869882060587e8dae5cade51e5ee5c3b',0,'2019-03-28 23:17:11'),('70c68830ee23c0e1f6a8b9580ab47ed57f5050a54d7f2589a4f897f7d5a31897a5f00aad3210878c','7e295cafd92beb4d85cb20d4a9d0784aa1d1802a4dd535428bb75553b890b0f65b05d0200eb8c69b',0,'2019-03-29 01:13:37'),('73c897037f7bd3a64eb72b65a9cb50e6b6ee752234f5488e95d31593cd352d94d091384138fa0fa0','e8290db39140aeb1ce71468ee5cd09c3608cb1d0d102072c56d4c3224782012da2b267f8b7108e83',0,'2019-03-29 02:04:19'),('790c0c7e0d3af2c62da9b55d652b7b554820dc920bd1354bfaa8a2deb9ce7c5b7c647c7a83bc3572','2617dd53e172eb4710d3344573de57425d0c2d611f5f4f3af8f1be78bee96dc0bf8c4efa2d00536e',0,'2019-03-28 23:18:34'),('80c0dd8f576ef23b5013936394c9516f6330f17bdde67bd106e6d5b019c41ae17e06b82a5ba5ef00','8d3ddb2cbe3554ee931fe786a41ddadd0b696dc584f02726b7e77f9e0f1130c55d7391a550edfbc4',0,'2019-03-28 22:18:00'),('81b158ce8dbef8d2b3b7b7722408b80b35e1b557691df94225e39bb7c0e120eafa6ddac1bb3a1b6a','605e35ab1e896f311881ad517918d05f090b1d3f7e6b5d7a7eb53168bb7d5e827c5d4faab5e5fc42',0,'2019-03-28 23:22:52'),('8a9756ddcd4a779ef7d620d3de6f0f00c7347c1324c6ec8ecd90970292eee18db8da7de5d639beaa','6ca07fb1c218384d84406dd21f7e5bf2add8e32646bdff603f3cd2c8ea20368b1da7c42eb6931b3c',0,'2019-03-29 01:35:47'),('8ab1986aa5785f190366f1df12adf95a28272c69037c0940f8be41eb314a2fa0166639716a8cf486','d94aa966444f8f9d3251d13338668abbcd294be3a70e2aad19ed003019e64ac40d36fb13fb4a750e',0,'2019-03-29 00:58:26'),('8b401505bc7bc07f170f14136d7263de8123a3422ecfbe98bea64819a8f37705608fbb874260977e','d773faf9d330f602166a0f3d221c04ef4eca7df2492c29491bb429e754fd9a592b2fe2296e2c3cfd',0,'2019-03-29 01:34:59'),('8daa9826547781ee2c414220950e2d3c955f7c6c474a8a3ed76363a865f5dd30849d44c277010246','b581eb165f02dc5dcf4314601ee9699b4e4c0afa173e22c54b8d269a519e8be448922dc0ea49b114',0,'2019-03-29 01:03:36'),('8f409e5648fb6c9e3f29ec6340c3f58e6ffde8b0cc5f51ff8dae0044871cb81552352838f626841b','283aa644717e0c9f6d9ecda0721ead598b9897aaef0d24ecdb4ef54cc66244a8fd7775382db7b568',0,'2019-03-29 01:17:45'),('90a9c94c9fbdaa313c62920ff28c63ac979ea13d6e9835c6e7631c364fa16db86f49d58a22c508a4','782d1d82baadec9265bb55f2c657b87c3107b88a762364e5b66bc1ed23337238c18ec5bebf772cce',0,'2019-03-29 02:56:58'),('964d023d0ed3284a05b33b41afcf300952ab007afe817ee0f2e884cf73ad158930b623cd3f0a0c1e','8bd6aff9306a070ad08eda72e23e14f54f30d21aa38b58a4238fabd8de5c1be503405244580471f7',0,'2019-03-29 00:59:03'),('a6d7567d20bea7eb2d8f0e27712cc3fe2b4234baec11b36a58e9423f14b53583a0b3b40c537a72f1','6ee3a536626154c715b2a5c113388b0721c4afee4c05ef72de92487cf5022761fca34209e5296175',0,'2019-03-29 21:00:06'),('b0dd8e953ca040ded9dd20840f53b0d5cb8cd4fbf6502c21f70d6714d57d932c3ce5992b97555861','19a1ca69a5a3cf7be98daf136448887a2ecb940dc8c65dc9503cc19c4d9b6db384ac16e73a78e060',0,'2019-03-29 01:10:37'),('b6becb2d0f2d145a89d7fe52263e32bc8debb3569c78887ae23c7b60a3090264608b42c4014a1b89','1fc8b583559c5acb7f5421ed825785256d51039efbf0df8b2b76085f45f46f58022defbd98c2804d',0,'2019-03-29 00:17:07'),('ba23024e4870c69cd95cea8d4c2e6b71d9a1bb079e62d90f435a9ecce68f2fa83c255f5e563a8751','bd41362b86a1cc3ffc8a40603050f2e807d1059c5789d2dd1b7119884292e548f0bd279bf796f487',0,'2019-03-29 01:24:06'),('bb721046f929177e4b49639fd349b776dc33c65ecfdd60d19f3f31b7fc526925fa1158aa21284194','b634e1e8ef5a67f161a3935cbb6f8757d570d2448910623aa2791a974dced4953e5c65d1b8a813c1',0,'2019-03-29 02:01:48'),('bcddd6bc0cbde6893c2049f8fc5cccd774de7e467f0a686fcb35703407d91db2dcbb4f4efa79f16c','87c31ddfcae3f2ad3d9aea22df9246397357927cc636388000cd0cc53416c4736a00668d06030013',0,'2019-03-29 01:49:25'),('be0abf186fd0d155c0f379c7f6407a6805743632ff06674108ef759214f702c0d05cd5b8ecaff6b4','55c9214c1876924b7ad1eefc7ab9e112f850ad60fba23a2a232b8e6d5bd01c548f93d1ab768badbe',0,'2019-03-29 02:24:50'),('c855767c6c28c40c8e2d4fb6880dfeb11b20e23b59f2c3c90dfd5cf38d3eb64eb66c040565f725e8','08132e2b289020f8599da06f7c4bf32fb3c04ba306ecdf5910933b5b0ba7578c2193bb623551af35',0,'2019-03-28 19:32:02'),('c916ea5576812632a7c895cf67195fb160f16a10361d8094c725b049c256121c871134c62889cbbc','d31928c8f3380e8b4d30f69fb6853093a9dada189f7140b9b6f815334d0c30d35ae7af46c1092bd0',0,'2019-03-29 01:52:32'),('c9b28c894a65ca8b516524ee74063edd3077d2baff6552439a7fac539c751b54acf4f9fed3665f6a','58b50e735ba1b0cb722cf339adfbdee7be65296e673d2d6e15141e005d7c73aa4491c2e5ee24f618',0,'2019-03-29 01:10:22'),('cb2e816d62ac70e4afd96819d55321fa044dd3252f372e1bea4a6d0bad0e1cb12a8185b0a820fb5a','be88ab42906f6a4590b9c7fe2f2b0876f4bd942fb75184de43d8ca17234140f9229fa70761855df9',0,'2019-03-29 04:43:59'),('d09ea8e4a6cb8322ce13071e15cc48ef5a3dbd4490415fd508b8c7cd6cdac2b8ae4a47022191d5bc','84c4eb1218d9af2c2cb6e0e470420c9eb3e19529ac47175c2870466fafeaf3ad6b16cc1699c043fa',0,'2019-03-28 23:03:01'),('d47eb985e58427c8a181fb06ec9e11c5f636b8619611609d0ac97185fad8977892afb868c07576e9','9a129c7c42d7613b68a092c376588d5504e22f605a1b24fbfc34ff443c7451234ad0b6c837a8175c',0,'2019-03-29 01:05:54'),('d6b979173e78bc9d2e9186f7ac2db0eb6012648c32e265d3d821745fc3d73718a24b6662b38f454e','4c5213b60c97e6339cfc2235c2dc5c10afc5589bf05ebbc88bbf8e5c94765a7ab0984606a1310180',0,'2019-03-29 12:40:11'),('d7be8be9977241c3f82cf6cc25a9e7c7643bbabed698edffda031b166274f1a830cdfb2499c74484','0263dcf55e5d5a27ff5fab4f1f3a618d8e44e1ef0963abb2615889940c29b229ac326b1940aaeced',0,'2019-03-29 01:12:46'),('e61e4de0b2ea5bf5956312f05876decdf4df997313c88e54bb7b59cfbb883e1849f9ea77e3d896ea','2c853d684aa5a2c5980bd9675f8dd499be605b2061595ff958902bcc393a095e817d6a47a4dff169',0,'2019-03-28 19:17:20'),('f4d72f46d95c817b724ce7ddb2faeefbb17338730140c7e81fdf546288ee946756394f9962e2c6c7','37c9b323d58bd19af0d1c667cf4bb00a70916e62990e20f9095d6a18d0e0d14bbecd02572fcb9c21',0,'2019-03-29 01:36:10'),('f5d45e6b0bf15fdcff33d2f21412f34435bc65223a43e32dddc3274f12fa8e9039d274c58d5d3781','aa6b90c797841c3957ab12413d12fa0130a773f760be07fe9be35495215b666fecc55f22ace434bf',0,'2019-03-29 01:11:48'),('fa73c99b803c0d154c07d71ec1aed8e97fc3254cb2a3fac015db861ad2cbdcf11ba006094f8703ac','6830e79c45dc6882c6e4b5ff90005ecdb17b1191e9d60441b9f69b5b901e0f37bd5a719534427f06',0,'2019-03-29 00:57:44'),('ff98910dd963c4218b151a5daf79739d54f137a995a0eb886f0ed2a8abcc1b0566697873a4c2b404','5f343db0164592b2c123f5b5ddc4fce08a73e0ce0bf3f449a85978ccd6665a057831b8018c3335e4',0,'2019-03-29 01:08:43');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_user_permission_id_index` (`permission_id`),
  KEY `permission_user_user_id_index` (`user_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maylonzanardi@hotmail.com','maylonzanardi','$2y$10$f4RSRtMmShGHGaNKJbwDK.b4DBETrPwXzV8h19Kp3LM6LqrjPCuCG','Maylon',NULL,'2018-03-28 22:31:28','2018-03-28 22:31:28'),(2,'joao@hotmail.com','joao','$2y$10$xgCo0vIkaiorNu8TzGNkBebFjWsL3YZr3PgOc8Rvhe.pdifoFodGO','Joao',NULL,'2018-03-30 01:40:59','2018-03-30 01:42:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-29 19:49:59
