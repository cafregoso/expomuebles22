-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.27-0ubuntu0.20.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for requiez_expo_22
CREATE DATABASE IF NOT EXISTS `requiez_expo_22` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `requiez_expo_22`;

-- Dumping structure for table requiez_expo_22.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_permission: ~36 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add product', 7, 'add_product'),
	(26, 'Can change product', 7, 'change_product'),
	(27, 'Can delete product', 7, 'delete_product'),
	(28, 'Can view product', 7, 'view_product'),
	(29, 'Can add certification', 8, 'add_certification'),
	(30, 'Can change certification', 8, 'change_certification'),
	(31, 'Can delete certification', 8, 'delete_certification'),
	(32, 'Can view certification', 8, 'view_certification'),
	(33, 'Can add category', 9, 'add_category'),
	(34, 'Can change category', 9, 'change_category'),
	(35, 'Can delete category', 9, 'delete_category'),
	(36, 'Can view category', 9, 'view_category'),
	(37, 'Can add contact', 10, 'add_contact'),
	(38, 'Can change contact', 10, 'change_contact'),
	(39, 'Can delete contact', 10, 'delete_contact'),
	(40, 'Can view contact', 10, 'view_contact');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$NwbW9c0XfUo285pmCGLxDf$6jKKCefMBV3ym09PVP/fKnTicohihtvZS91+lJjk23c=', '2022-01-31 22:13:22.500019', 1, 'cafregoso', '', '', 'cafregoso@outlook.com', 1, 1, '2022-01-18 16:50:05.682602');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.django_admin_log: ~94 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-01-20 23:02:43.927767', '1', 'Category object (1)', 1, '[{"added": {}}]', 9, 1),
	(2, '2022-01-21 16:06:00.956719', '2', 'Coworking', 1, '[{"added": {}}]', 9, 1),
	(3, '2022-01-21 16:10:48.598453', '3', 'GP Values', 1, '[{"added": {}}]', 9, 1),
	(4, '2022-01-21 16:10:53.364711', '2', 'CoWorking', 2, '[{"changed": {"fields": ["Categoria"]}}]', 9, 1),
	(5, '2022-01-21 16:11:39.672521', '4', 'Learning', 1, '[{"added": {}}]', 9, 1),
	(6, '2022-01-21 16:12:07.258342', '1', 'CATAS', 1, '[{"added": {}}]', 8, 1),
	(7, '2022-01-21 16:12:14.279963', '2', 'COSMOB', 1, '[{"added": {}}]', 8, 1),
	(8, '2022-01-21 16:12:24.842222', '3', 'BIFMA', 1, '[{"added": {}}]', 8, 1),
	(9, '2022-01-21 16:12:40.185373', '4', 'GREENGUARD', 1, '[{"added": {}}]', 8, 1),
	(10, '2022-01-21 16:52:27.462782', '1', 'Amithan Sofa', 1, '[{"added": {}}]', 7, 1),
	(11, '2022-01-21 16:59:40.875138', '2', 'Amitha con brazo', 1, '[{"added": {}}]', 7, 1),
	(12, '2022-01-21 17:00:46.902436', '3', 'Amitha sin brazo', 1, '[{"added": {}}]', 7, 1),
	(13, '2022-01-21 17:01:21.229845', '4', 'Amitha banco', 1, '[{"added": {}}]', 7, 1),
	(14, '2022-01-21 17:02:16.162743', '5', 'Nuta banco', 1, '[{"added": {}}]', 7, 1),
	(15, '2022-01-21 17:02:47.952365', '6', 'Nuta silla', 1, '[{"added": {}}]', 7, 1),
	(16, '2022-01-21 17:03:36.783711', '7', 'Abuela silla', 1, '[{"added": {}}]', 7, 1),
	(17, '2022-01-21 17:04:24.515904', '8', 'Base Cross', 1, '[{"added": {}}]', 7, 1),
	(18, '2022-01-21 17:05:57.967995', '9', 'Base Rhino', 1, '[{"added": {}}]', 7, 1),
	(19, '2022-01-21 17:15:37.213863', '10', 'LadyB GoGreen', 1, '[{"added": {}}]', 7, 1),
	(20, '2022-01-21 17:16:36.754435', '11', 'Lisa Wood', 1, '[{"added": {}}]', 7, 1),
	(21, '2022-01-21 17:22:49.945965', '12', 'Bob Pouf', 1, '[{"added": {}}]', 7, 1),
	(22, '2022-01-21 17:23:31.319385', '13', 'Big Bob Pouf', 1, '[{"added": {}}]', 7, 1),
	(23, '2022-01-21 17:27:54.599752', '14', 'Base Tripe Doble', 1, '[{"added": {}}]', 7, 1),
	(24, '2022-01-21 17:28:53.775127', '15', 'Freya', 1, '[{"added": {}}]', 7, 1),
	(25, '2022-01-21 17:29:53.178674', '16', 'Loop Mono', 1, '[{"added": {}}]', 7, 1),
	(26, '2022-01-21 17:31:44.823412', '17', 'KD Stool', 1, '[{"added": {}}]', 7, 1),
	(27, '2022-01-21 17:32:59.783621', '18', 'Peb Wooden Legs', 1, '[{"added": {}}]', 7, 1),
	(28, '2022-01-21 17:36:19.501870', '19', 'Bench X5', 1, '[{"added": {}}]', 7, 1),
	(29, '2022-01-21 17:36:58.175035', '20', 'Cynara', 1, '[{"added": {}}]', 7, 1),
	(30, '2022-01-21 17:37:33.836833', '21', 'Finora', 1, '[{"added": {}}]', 7, 1),
	(31, '2022-01-21 18:24:30.648633', '22', 'Ada close', 1, '[{"added": {}}]', 7, 1),
	(32, '2022-01-21 18:25:11.257807', '23', 'Quadra 1320', 1, '[{"added": {}}]', 7, 1),
	(33, '2022-01-21 18:28:06.405727', '24', 'Outline pad', 1, '[{"added": {}}]', 7, 1),
	(34, '2022-01-21 18:28:55.513142', '25', 'Holes', 1, '[{"added": {}}]', 7, 1),
	(35, '2022-01-21 18:30:07.263933', '26', 'Redonda', 1, '[{"added": {}}]', 7, 1),
	(36, '2022-01-21 20:43:28.025557', '27', 'Banco Redonda Ellie', 1, '[{"added": {}}]', 7, 1),
	(37, '2022-01-21 20:44:09.694310', '28', 'RE-1600', 1, '[{"added": {}}]', 7, 1),
	(38, '2022-01-21 20:44:56.149129', '29', 'RE-2020', 1, '[{"added": {}}]', 7, 1),
	(39, '2022-01-21 20:46:12.779764', '30', 'RE-7001', 1, '[{"added": {}}]', 7, 1),
	(40, '2022-01-21 20:46:55.407384', '31', 'Esencia', 1, '[{"added": {}}]', 7, 1),
	(41, '2022-01-21 22:14:30.715365', '4', 'Learning', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(42, '2022-01-21 22:14:43.155221', '3', 'GP Values', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(43, '2022-01-21 22:14:50.939854', '2', 'CoWorking', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(44, '2022-01-21 22:14:58.293686', '1', 'Living', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(45, '2022-01-21 22:19:02.944843', '4', 'GREENGUARD', 2, '[{"changed": {"fields": ["Image"]}}]', 8, 1),
	(46, '2022-01-21 22:19:09.452657', '3', 'BIFMA', 2, '[{"changed": {"fields": ["Image"]}}]', 8, 1),
	(47, '2022-01-21 22:19:15.553185', '2', 'COSMOB', 2, '[{"changed": {"fields": ["Image"]}}]', 8, 1),
	(48, '2022-01-21 22:19:21.098252', '1', 'CATAS', 2, '[{"changed": {"fields": ["Image"]}}]', 8, 1),
	(49, '2022-01-21 22:23:41.952643', '15', 'Freya', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(50, '2022-01-21 22:24:01.395976', '17', 'KD Stool', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(51, '2022-01-21 22:24:22.613782', '16', 'Loop Mono', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(52, '2022-01-21 22:24:41.565054', '18', 'Peb Wooden Legs', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(53, '2022-01-21 22:25:03.526479', '7', 'Abuela silla', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(54, '2022-01-21 22:25:21.178642', '4', 'Amitha banco', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(55, '2022-01-21 22:25:46.187567', '2', 'Amitha con brazo', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(56, '2022-01-21 22:26:05.263994', '3', 'Amitha sin brazo', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(57, '2022-01-21 22:26:24.357128', '1', 'Amithan Sofa', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(58, '2022-01-21 22:26:42.118213', '8', 'Base Cross', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(59, '2022-01-21 22:26:59.998246', '9', 'Base Rhino', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(60, '2022-01-21 22:27:30.519715', '14', 'Base Tripe Doble', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(61, '2022-01-21 22:27:56.751903', '13', 'Big Bob Pouf', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(62, '2022-01-21 22:28:24.010997', '12', 'Bob Pouf', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(63, '2022-01-21 22:28:40.644424', '10', 'LadyB GoGreen', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(64, '2022-01-21 22:29:02.180718', '11', 'Lisa Wood', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(65, '2022-01-21 22:29:19.609340', '5', 'Nuta banco', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(66, '2022-01-21 22:29:42.723430', '6', 'Nuta silla', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(67, '2022-01-21 22:30:13.884535', '20', 'Cynara', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(68, '2022-01-21 22:30:39.049540', '21', 'Finora', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(69, '2022-01-21 22:31:03.315850', '19', 'Bench X5', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(70, '2022-01-21 22:31:33.533176', '22', 'Ada close', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(71, '2022-01-21 22:31:52.201205', '27', 'Banco Redonda Ellie', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(72, '2022-01-21 22:32:14.154599', '31', 'Esencia', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(73, '2022-01-21 22:32:45.635493', '25', 'Holes', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(74, '2022-01-21 22:33:11.467635', '24', 'Outline pad', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(75, '2022-01-21 22:33:30.554702', '23', 'Quadra 1320', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(76, '2022-01-21 22:33:56.809127', '28', 'RE-1600', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(77, '2022-01-21 22:34:22.227885', '29', 'RE-2020', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(78, '2022-01-21 22:34:42.021122', '30', 'RE-7001', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(79, '2022-01-21 22:35:10.812041', '26', 'Redonda', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(80, '2022-01-21 22:36:09.322879', '1', 'Living', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(81, '2022-01-31 22:13:46.191775', '4', 'Learning', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(82, '2022-01-31 22:13:53.893222', '3', 'GP Values', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(83, '2022-01-31 22:14:01.673806', '2', 'CoWorking', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(84, '2022-01-31 22:14:07.384424', '1', 'Living', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(85, '2022-02-01 15:22:25.902077', '4', 'Learning', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(86, '2022-02-01 15:22:32.829894', '3', 'GP Values', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(87, '2022-02-01 15:22:39.970363', '2', 'CoWorking', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(88, '2022-02-01 15:22:49.903911', '1', 'Living', 2, '[{"changed": {"fields": ["Image"]}}]', 9, 1),
	(89, '2022-02-01 15:24:16.438144', '7', 'Abuela silla', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(90, '2022-02-01 15:24:33.523521', '4', 'Amitha banco', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(91, '2022-02-01 15:24:47.185208', '2', 'Amitha con brazo', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(92, '2022-02-01 15:24:58.643744', '3', 'Amitha sin brazo', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(93, '2022-02-01 15:25:15.226353', '1', 'Amitha Sofa', 2, '[{"changed": {"fields": ["Nombre", "Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(94, '2022-02-01 15:25:49.694588', '5', 'Nuta banco', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(95, '2022-02-01 15:26:26.746265', '13', 'Big Bob Pouf', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(96, '2022-02-01 15:26:38.697151', '12', 'Bob Pouf', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(97, '2022-02-01 15:27:15.086347', '18', 'Peb Wooden Legs', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1),
	(98, '2022-02-01 15:27:33.911664', '6', 'Nuta silla', 2, '[{"changed": {"fields": ["Detail Image", "Home Space Image", "Home Image"]}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.django_content_type: ~9 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'products', 'category'),
	(8, 'products', 'certification'),
	(10, 'products', 'contact'),
	(7, 'products', 'product'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.django_migrations: ~18 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-01-18 16:49:16.827206'),
	(2, 'auth', '0001_initial', '2022-01-18 16:49:19.498104'),
	(3, 'admin', '0001_initial', '2022-01-18 16:49:20.078125'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-18 16:49:20.103203'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-18 16:49:20.136605'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-18 16:49:20.494767'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-18 16:49:20.745840'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-01-18 16:49:20.808252'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-01-18 16:49:20.832737'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-01-18 16:49:21.019389'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-01-18 16:49:21.036637'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-18 16:49:21.061970'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-01-18 16:49:21.287775'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-18 16:49:21.515339'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-01-18 16:49:21.593365'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-01-18 16:49:21.619397'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-18 16:49:21.861913'),
	(18, 'sessions', '0001_initial', '2022-01-18 16:49:22.055997'),
	(19, 'products', '0001_initial', '2022-01-20 22:59:13.898825'),
	(20, 'products', '0002_auto_20220126_0023', '2022-01-26 00:23:26.542602'),
	(21, 'products', '0003_auto_20220126_0309', '2022-01-26 03:09:35.989834'),
	(22, 'products', '0004_delete_contact', '2022-01-26 03:15:51.241930');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.django_session: ~2 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('be6w6k0udhejwd8c3wri7yqwfs5gove8', '.eJxVjEEOwiAQRe_C2hCgDIJL956BDMMgVUOT0q6MdzckXej2v_f-W0Tctxr3zmucs7gILU6_W0J6chsgP7DdF0lL29Y5yaHIg3Z5WzK_rof7d1Cx11FTUKmAZmOVNgZVZjtpQkZDYBwUe6YStKfifDKTd5A9KIUpgC8QWHy-50U3zg:1nAgP8:o_oNUSrWv7eryIFtAGRyCkUtf5pCE8PIhaJlIRqQgyk', '2022-02-03 22:59:42.078543'),
	('kc7fu3hwp8z8s7eqtm41a8rgxjpnqoaa', '.eJxVjEEOwiAQRe_C2hCgDIJL956BDMMgVUOT0q6MdzckXej2v_f-W0Tctxr3zmucs7gILU6_W0J6chsgP7DdF0lL29Y5yaHIg3Z5WzK_rof7d1Cx11FTUKmAZmOVNgZVZjtpQkZDYBwUe6YStKfifDKTd5A9KIUpgC8QWHy-50U3zg:1nEevK:z7djsJbFliOY38BNbbPoXCpXm1pzFJoVQMok92LRyJQ', '2022-02-14 22:13:22.524803');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.products_category
CREATE TABLE IF NOT EXISTS `products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.products_category: ~4 rows (approximately)
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` (`id`, `name`, `image`, `created`, `updated`) VALUES
	(1, 'Living', 'categories/Living.webp', '2022-01-20 23:02:43.926226', '2022-02-01'),
	(2, 'CoWorking', 'categories/Co-working.webp', '2022-01-21 16:06:00.943369', '2022-02-01'),
	(3, 'GP Values', 'categories/GP-VALUES.webp', '2022-01-21 16:10:48.597180', '2022-02-01'),
	(4, 'Learning', 'categories/Learning.webp', '2022-01-21 16:11:39.669127', '2022-02-01');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.products_certification
CREATE TABLE IF NOT EXISTS `products_certification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.products_certification: ~4 rows (approximately)
/*!40000 ALTER TABLE `products_certification` DISABLE KEYS */;
INSERT INTO `products_certification` (`id`, `name`, `image`) VALUES
	(1, 'CATAS', 'certifications/Catas.webp'),
	(2, 'COSMOB', 'certifications/cosmob.webp'),
	(3, 'BIFMA', 'certifications/bifma.webp'),
	(4, 'GREENGUARD', 'certifications/greenguard_logo.webp');
/*!40000 ALTER TABLE `products_certification` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.products_product
CREATE TABLE IF NOT EXISTS `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `materials` longtext NOT NULL,
  `colors` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.products_product: ~29 rows (approximately)
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` (`id`, `name`, `url`, `brand`, `description`, `materials`, `colors`, `image`, `image1`, `image2`, `created`, `updated`) VALUES
	(1, 'Amitha Sofa', 'amitha_sofa', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Gris mineral', '', 'products/Amitha_sofa204129.webp', '', '', '2022-01-21 16:52:27.446416', '2022-02-01'),
	(2, 'Amitha con brazo', 'amihta_brazo', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Antracita', '', 'products/Amitha_c_brazos.webp', '', '', '2022-01-21 16:59:40.865124', '2022-02-01'),
	(3, 'Amitha sin brazo', 'amitha', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Gris mineral', '', 'products/Amitha_s_brazos.webp', '', '', '2022-01-21 17:00:46.892941', '2022-02-01'),
	(4, 'Amitha banco', 'amitha_banco', 'Labenze', 'colección diseñada por Forsix y se adaptan perfectamente a los entornos de hostelería, tanto en interiores como en exteriores. Este taburete de bar apilable de tubo de acero está tratado para uso en exteriores y tiene un acabado mate. Las combinaciones de colores disponibles se han seleccionado para que coincidan con algunas de las colecciones de mesas altas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Bordeaux', '', 'products/Amitha_banco.webp', '', '', '2022-01-21 17:01:21.222502', '2022-02-01'),
	(5, 'Nuta banco', 'nuta_banco', 'Labenze', 'Nuta taburete disponible en dos alturas; bar y cocina. El material utilizado es tecnopolímero que le da un concepto de tacto suave a este taburete, que vuelve a proponer un diseño de antaño pero con materiales modernos, para un complemento adecuado para ambientes contract y comunitarios.', 'Verde', '', 'products/Banco_Nuta.webp', '', '', '2022-01-21 17:02:16.153699', '2022-02-01'),
	(6, 'Nuta silla', 'nuta_silla', 'Labenze', 'Nuta es una silla con asiento en tecnopolímero, de estilo refinado y atemporal, apta para instalaciones de prestigio tanto en interior como en exterior. Estas líneas exquisitamente definidas de Nuta, armoniosamente conectadas por Studio Favaretto, dan un resultado que despierta asombro a primera vista.\r\nLas dimensiones generosas y la comodidad ergonómica superior distinguen a Nuta en uso, incluso durante períodos prolongados.\r\nUn fino asiento acolchado, como accesorio de bienvenida, completa la posibilidad de combinar los modernos colores de polímeros con las colecciones más populares de tejidos y pieles sintéticas.', 'Verde', '', 'products/Silla_Nuta.webp', '', '', '2022-01-21 17:02:47.945213', '2022-02-01'),
	(7, 'Abuela silla', 'abuela_silla', 'Labenze', 'Silla funcional y versátil con un diseño suave y elegante. Los exclusivos detalles de haya maciza en un limpio diseño envolvente crean una combinación ganadora para todos sus entornos comerciales y de hostelería.\r\nEn la versión para exteriores de la colección Abuela, los detalles de tecnopolímero inyectado delicadamente suaves reflejan las juntas de madera maciza de la versión para interiores. Las atractivas formas limpias del respaldo, los cómodos reposabrazos y las opciones de cojines acolchados y tapizados hacen que Abuela sea perfecta y original para innumerables aplicaciones.', 'Azul', '', 'products/Abuela.webp', '', '', '2022-01-21 17:03:36.777055', '2022-02-01'),
	(8, 'Base Cross', 'base_cross', 'Labenze', 'Cross están disponibles en marcos de metal cromado de cuatro patas. El asiento acolchado y tapizado se realza con costuras características, hechas en piel sintética. Su forma lúdica y su excelente comodidad son las características más apreciadas de este original objeto.', 'Dove gray H73', '', 'products/600x850_RE1515_A.webp', 'products/600x850_RE1515_B.webp', 'products/600x850_RE1515_C.webp', '2022-01-21 17:04:24.509870', '2022-01-21'),
	(9, 'Base Rhino', 'base_rhino', 'Labenze', 'Mesa con diseño minimalista y refinado, la mesa Rhino presenta un aspecto que permite aplicaciones contract versátiles. Combinable con encimeras de diferentes medidas y acabados, destaca por una base cuadrada en hierro fundido pintado, con las características esquinas redondeadas. Disponible en dos alturas, es especialmente estable gracias a la forma de la propia base y a los pies regulables.', 'Dove gray H73', '', 'products/600x850_RM9026_A.webp', 'products/600x850_RM9026_B.webp', 'products/600x850_RM9026_C.webp', '2022-01-21 17:05:57.958153', '2022-01-21'),
	(10, 'LadyB GoGreen', 'ladyb', 'Labenze', 'S • CAB apoya la ecología y limita el desperdicio proponiendo una producción de accesorios fabricados en un 60% de plástico reciclado certificado, obtenido gracias al uso de energía generada a partir de fuentes renovables, y a su vez 100% reciclable una y otra vez en un proceso virtuoso dirigido a no introducir plástico nuevo en el medio ambiente. Productos completamente eco-sostenibles, sin renunciar nunca a altos estándares técnicos. S • CAB diseña el futuro y lo colorea de verde, protegiendo el planeta.', 'Verde', '', 'products/RE1390_A.webp', 'products/RE1390_B.webp', 'products/RE1390_C.webp', '2022-01-21 17:15:37.204764', '2022-01-21'),
	(11, 'Lisa Wood', 'lisa', 'Labenze', 'Silla Lisa es inspirada en las elegantes atmósferas de los interiores de los años 50 y 60. El delgado marco tubular rodea y sostiene el respaldo de sillones y sillas, con asientos acolchados o de madera. Gracias a los finos acabados y materiales, Lisa se siente cómoda tanto en entornos contract como domésticos.', 'Nogal / Antracita', '', 'products/RE1500_A.webp', 'products/RE1500_B.webp', 'products/RE1500_C.webp', '2022-01-21 17:16:36.745073', '2022-01-21'),
	(12, 'Bob Pouf', 'bob', 'Labenze', 'Puf  tiene estructura interna metálica, totalmente moldeada en poliuretano espumado en frío; tira de madera debajo del puf para grapar la tela. Puf completo de 4 pies.', 'Por definir', '', 'products/Bob_pouf.webp', '', '', '2022-01-21 17:22:49.936791', '2022-02-01'),
	(13, 'Big Bob Pouf', 'big_bob', 'Labenze', 'Puf  tiene estructura interna metálica, totalmente moldeada en poliuretano espumado en frío; tira de madera debajo del puf para grapar la tela. Puf completo de 4 pies.', 'Por definir', '', 'products/Big_Bob_pouf.webp', '', '', '2022-01-21 17:23:31.311189', '2022-02-01'),
	(14, 'Base Tripe Doble', 'base_tripe', 'Labenze', 'Tripé es la nueva mesa extraordinaria de tres radios, porque ofrece un proyecto orgánico en el que funcionalidad, minimalismo y reconocibilidad encuentran la síntesis adecuada. La base de acero con unión de aluminio fundido a presión no es en realidad un monobloque tradicional, está formada por varios elementos que pueden diversificarse y sustituirse según las necesidades. Un proyecto industrial atento al componente económico, es un sistema verdaderamente flexible y multifacético que da vida a una línea de mesas y complementos de diversas formas y tamaños, ideal para el hogar y áreas públicas.', 'Negro', '', 'products/RE1300_A.webp', 'products/RE1300_B.webp', 'products/RE1300_C.webp', '2022-01-21 17:27:54.591467', '2022-01-21'),
	(15, 'Freya', 'freya', 'Infiniti', 'Freya es la máxima expresión de un diseño puro y lineal, en el que forma y funcionalidad siempre han ido de la mano. La innovación se expresa plenamente a través del diseño y el concepto de la silla: por primera vez, se presenta una silla monobloque en plástico reciclado con una carcasa interna tapizada.     La suave curvatura del marco moldeado por inyección abraza y acomoda un panel frontal tapizado suave, creando continuidad entre los diversos elementos del asiento y brindando una comodidad extrema.', 'Tapices seleccionado telas Infiniti.', '', 'products/600x850_RE320_A.webp', 'products/600x850_RE320_B.webp', 'products/600x850_RE320_C.webp', '2022-01-21 17:28:53.767106', '2022-01-21'),
	(16, 'Loop Mono', 'loop_mono', 'Infiniti', 'Nació hace diez años y de inmediato se ha convertido en uno de los best sellers de Infiniti, LOOP es un icono capaz de hacer elegante cualquier ambiente.    La carcasa de policarbonato da paso ahora a una versión de polipropileno reciclado, aún más delgada y liviana que antes. Los reposabrazos ergonómicos tienen un nuevo tamaño, pero manteniendo la curvatura típica, que ha hecho que esta silla sea única en su género. Loop Mono en polipropileno, que se suma a la versión clásica de madera, adquiere una connotación pop, fresca y moderna.', 'Base madera de importación.', '', 'products/600x850_RE685_A.webp', 'products/600x850_RE685_B.webp', 'products/600x850_RE685_C.webp', '2022-01-21 17:29:53.167215', '2022-01-21'),
	(17, 'KD Stool', 'kd_stool', 'Infiniti', 'Es un banco de líneas sencillas pero rigurosas, capaz de\r\nadaptarse a las diferentes situaciones de decoración en las que se propone. Perfecto para Ho.Re.Ca. mundo.\r\nSoporte para áreas de reuniones de oficinas modernas. Su nombre contiene\r\nel corazón del proyecto, que es crear un banco que sea fácil\r\npara montar, ocupando poco espacio durante el transporte, en su totalidad\r\nderribar la lógica. La estructura de tubo rectangular pintado puede\r\nacomodar un asiento curvo en madera contrachapada de roble.', 'Roble / Negro', '', 'products/600x850_RE675_A.webp', 'products/600x850_RE675_B.webp', 'products/600x850_RE675_C.webp', '2022-01-21 17:31:44.816148', '2022-01-21'),
	(18, 'Peb Wooden Legs', 'peb_wooden', 'Infiniti', 'Sillón de líneas suaves y confortables, Peb muestra una personalidad importante y esencial, jugando con las dos alturas de respaldo disponibles. Ahora, se presenta en la versión patas de madera. Está completamente tapizado y es perfecto para las áreas de salón de la vida contemporánea.', 'Por definir', '', 'products/PEB.webp', '', '', '2022-01-21 17:32:59.775244', '2022-02-01'),
	(19, 'Bench X5', 'x5', 'Quadrifoglio', 'La gama X5 ha sido diseñada para ofrecer flexibilidad y múltiples posibilidades de configuración, líneas limpias y agradables que se adaptan y se integran perfectamente entre el entorno de trabajo y todos los usuarios.', 'Por definir', '', 'products/RE1950_A.webp', 'products/RE1950_B.webp', 'products/RE1950_C.webp', '2022-01-21 17:36:19.491997', '2022-01-21'),
	(20, 'Cynara', 'cynara', 'Okamura', 'Experimente la máxima ligereza y la comodidad de Cynara, una silla operativa que integra una funcionalidad intuitiva y receptiva con una estética refinada y limpia para completar cualquier entorno de trabajo.', 'Por definir', '', 'products/RE1750_A.webp', 'products/RE1750_B.webp', 'products/RE1750_C.webp', '2022-01-21 17:36:58.166232', '2022-01-21'),
	(21, 'Finora', 'finora', 'Okamura', 'Finora fue diseñado para encapsular la belleza con una delgadez y ligereza aerodinámicas. Al aplicar la filosofía de diseño que es distintiva de la industria automotriz, Finora brinda al trabajador moderno un alto nivel de funcionalidad para el máximo nivel de comodidad en una silla de oficina sin sacrificar el diseño estético.', 'Gris', '', 'products/RE1760_A.webp', 'products/RE1760_B.webp', 'products/RE1760_C.webp', '2022-01-21 17:37:33.829521', '2022-01-21'),
	(22, 'Ada close', 'ada_close', 'Requiez', 'Sillón de nombre Poltrona Ada Closed, cuentan con estructura interna de acero y esquineros en madera. \r\nSu asiento y respaldo fabricados en poliuretano inyectado de alta densidad con retardante de flama, elemento de guarda lateral para dispositivo móvil o revistero.', 'Por definir', '', 'products/RE2020_A.webp', 'products/RE2020_B.webp', 'products/RE2020_C.webp', '2022-01-21 18:24:30.619012', '2022-01-21'),
	(23, 'Quadra 1320', 'quadra', 'Requiez', 'pendiente', 'Mesh gris', '', 'products/RM9000_A.webp', 'products/RM9000_B.webp', 'products/RM9000_C.webp', '2022-01-21 18:25:11.243079', '2022-01-21'),
	(24, 'Outline pad', 'outline', 'Requiez', 'Color, sencillez, comodidad: esta silla tiene muchas virtudes, debido a su estructura amplia y limpia, disponible en blanco, negro, azul oscuro, tabaco y marsala, también con panel de asiento tapizado. El marco apilable está disponible en blanco, negro y cromo. La familia comprende versiones con patín, patín con reposabrazos y 4 patas.', 'Por definir', '', 'products/RE8000_A.webp', 'products/RE8000_B.webp', 'products/RE8000_C.webp', '2022-01-21 18:28:06.386522', '2022-01-21'),
	(25, 'Holes', 'holes', 'Requiez', 'Asiento de polipropileno y respaldo de polipropileno reforzado con fibra de vidrio, con cubierta exterior del asiento de polipropileno.\r\nSu asiento, respaldo pueden adquirirse en versión antiincendios. Apoyabrazos de polipropileno.\r\nLos ganchos de conexión del asiento se suministran directamente en los pies con ganchos de alambre de 6 mm de diámetro soldados a la base.\r\nPosibilidad de pies sin ganchos; ambas versiones de pies pueden llevar almohadillas de fieltro antirayaduras.', 'Dove gray', '', 'products/RE7000_A.webp', 'products/RE7000_B.webp', 'products/RE7000_C.webp', '2022-01-21 18:28:55.498960', '2022-01-21'),
	(26, 'Redonda', 'redonda', 'Requiez', 'Silla con asiento en polipropileno y respaldo en polipropileno con fibra de vidrio.\r\nVersión con estructura sin reposabrazos en alambre de 11 mm doblado y soldado nivelado. \r\nMáxima apilabilidad: 45 sillas con carro especial con ruedas de goma para alta carga. Acabado del marco: pintado en color dove gray.\r\nBarras de unión entre filas disponibles en el catálogo.', 'Dove gray', '', 'products/600x850_RS430_A.webp', 'products/600x850_RS430_B.webp', 'products/600x850_RS430_C.webp', '2022-01-21 18:30:07.248960', '2022-01-21'),
	(27, 'Banco Redonda Ellie', 'banco_redonda', 'Requiez', 'Banco con asiento en polipropileno y respaldo en polipropileno con fibra de vidrio.\r\nVersión con estructura sin reposabrazos en alambre de 11 mm doblado y soldado nivelado. \r\nMáxima apilabilidad: 45 sillas con carro especial con ruedas de goma para alta carga. Acabado del marco: pintado en color dove gray.\r\nBarras de unión entre filas disponibles en el catálogo.', 'Mesh gris', '', 'products/RE2021_A.webp', 'products/RE2021_B.webp', 'products/RE2021_C.webp', '2022-01-21 20:43:28.000971', '2022-01-21'),
	(28, 'RE-1600', 're-1600', 'Requiez', 'Sillón ejecutivo en mesh/tela con cabecera, cuenta con 3 ángulos de reclinamiento a través de un maneral para regular la tensión y sistema antishock, soporte lumbar ajustable, profundidad de asiento slider, cabecera ajustable, descansa brazos ajustables 3D, asiento ergonómico con acojina-miento de poliuretano inyectado de alta densidad con retardante al fuego. Rodamientos duales de naylon recubiertas de poliuretano suave para piso duros.', 'Mesh gris', '', 'products/RM9010_A.webp', 'products/RM9010_B.webp', 'products/RM9010_C.webp', '2022-01-21 20:44:09.684900', '2022-01-21'),
	(29, 'RE-2020', 're-2020', 'Requiez', 'Sillón ejecutivo con cabecera ajustable, además cuenta con acojinamiento de poliuretano inyectado de alta densidad y un sistema de reclinamiento sincrónico con 4 diferentes ángulos y bloqueo.\r\nSu asiento con ajuste de profundidad slider, descansa brazos 3D (giratorios, altura y profundidad).\r\nRodamientos duales de naylon recubiertas de poliuretano suave para piso duros.', 'Piel Indiana', '', 'products/RM9014_C.webp', 'products/RM9014_D.webp', 'products/RM9014_B.webp', '2022-01-21 20:44:56.136545', '2022-01-21'),
	(30, 'RE-7001', 're-7001', 'Requiez', 'Sillón ejecutivo sin cabecera.\r\nCuenta con un sistema reclinamiento sincrónico con 4 posiciones con maneral para regular la tensión y antishock, además de ajuste de profundidad de asiento. \r\nSus descansa brazos tienen ajuste de altura y codera suave al tacto, soporte lumbar independiente, base y marco estructural de aluminio pulido, cabecera ajustable.', 'Piel indiana', '', 'products/RM9016_A.webp', 'products/RM9016_B.webp', 'products/RM9016_C.webp', '2022-01-21 20:46:12.769582', '2022-01-21'),
	(31, 'Esencia', 'esencia', 'Requiez', 'Esencia es un sistema de soft seating modular, sutil, elegante, creativo, flexible y dinámico con la capacidad de adaptarse a los espacios y necesidades como salas de espera o espacios colaborativos amigable con el medio ambiente con acojinamiento en poliuretano flexible de alta resiliencia, patas tubulares terminadas en pintura electrostática.\r\nGran variedad de configuraciones y plazas con y sin respaldo, descansabrazos y accesorios opcionales como mesas laterales centrales y circular de apoyo.', 'Por definir', '', 'products/RE3030.webp', 'products/RE3030_B.webp', 'products/RE3030_C.webp', '2022-01-21 20:46:55.400095', '2022-01-21');
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.products_product_category
CREATE TABLE IF NOT EXISTS `products_product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_product_category_product_id_category_id_99b99489_uniq` (`product_id`,`category_id`),
  KEY `products_product_cat_category_id_6bd7b606_fk_products_` (`category_id`),
  CONSTRAINT `products_product_cat_category_id_6bd7b606_fk_products_` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`),
  CONSTRAINT `products_product_cat_product_id_08fb2842_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.products_product_category: ~31 rows (approximately)
/*!40000 ALTER TABLE `products_product_category` DISABLE KEYS */;
INSERT INTO `products_product_category` (`id`, `product_id`, `category_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1),
	(9, 9, 2),
	(10, 10, 3),
	(11, 11, 3),
	(12, 12, 1),
	(13, 12, 4),
	(14, 13, 1),
	(15, 13, 4),
	(16, 14, 4),
	(17, 15, 2),
	(18, 16, 2),
	(19, 17, 2),
	(20, 18, 1),
	(21, 19, 4),
	(22, 20, 4),
	(23, 21, 3),
	(24, 22, 3),
	(25, 23, 3),
	(26, 24, 4),
	(27, 25, 4),
	(28, 26, 4),
	(29, 27, 2),
	(30, 28, 2),
	(31, 29, 2),
	(32, 30, 2),
	(33, 31, 1);
/*!40000 ALTER TABLE `products_product_category` ENABLE KEYS */;

-- Dumping structure for table requiez_expo_22.products_product_certifications
CREATE TABLE IF NOT EXISTS `products_product_certifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `certification_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_product_certifi_product_id_certification_e6f47217_uniq` (`product_id`,`certification_id`),
  KEY `products_product_cer_certification_id_b260e165_fk_products_` (`certification_id`),
  CONSTRAINT `products_product_cer_certification_id_b260e165_fk_products_` FOREIGN KEY (`certification_id`) REFERENCES `products_certification` (`id`),
  CONSTRAINT `products_product_cer_product_id_c0f01d57_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table requiez_expo_22.products_product_certifications: ~22 rows (approximately)
/*!40000 ALTER TABLE `products_product_certifications` DISABLE KEYS */;
INSERT INTO `products_product_certifications` (`id`, `product_id`, `certification_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 5, 1),
	(5, 6, 1),
	(6, 7, 1),
	(7, 10, 1),
	(8, 11, 1),
	(9, 18, 1),
	(10, 19, 1),
	(11, 20, 4),
	(12, 21, 4),
	(13, 24, 1),
	(14, 24, 2),
	(15, 25, 1),
	(16, 25, 2),
	(17, 26, 1),
	(18, 26, 2),
	(19, 27, 1),
	(20, 27, 2),
	(21, 28, 3),
	(22, 29, 3),
	(23, 30, 3),
	(24, 31, 3);
/*!40000 ALTER TABLE `products_product_certifications` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
