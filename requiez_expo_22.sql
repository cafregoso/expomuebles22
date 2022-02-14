-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-02-2022 a las 04:46:12
-- Versión del servidor: 8.0.28
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `requiez_expo_22`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

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
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add banner', 11, 'add_banner'),
(42, 'Can change banner', 11, 'change_banner'),
(43, 'Can delete banner', 11, 'delete_banner'),
(44, 'Can view banner', 11, 'view_banner'),
(45, 'Can add webinar', 12, 'add_webinar'),
(46, 'Can change webinar', 12, 'change_webinar'),
(47, 'Can delete webinar', 12, 'delete_webinar'),
(48, 'Can view webinar', 12, 'view_webinar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$NwbW9c0XfUo285pmCGLxDf$6jKKCefMBV3ym09PVP/fKnTicohihtvZS91+lJjk23c=', '2022-02-05 21:07:46.390605', 1, 'cafregoso', '', '', 'cafregoso@outlook.com', 1, 1, '2022-01-18 16:50:05.682602');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-20 23:02:43.927767', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-01-21 16:06:00.956719', '2', 'Coworking', 1, '[{\"added\": {}}]', 9, 1),
(3, '2022-01-21 16:10:48.598453', '3', 'GP Values', 1, '[{\"added\": {}}]', 9, 1),
(4, '2022-01-21 16:10:53.364711', '2', 'CoWorking', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(5, '2022-01-21 16:11:39.672521', '4', 'Learning', 1, '[{\"added\": {}}]', 9, 1),
(6, '2022-01-21 16:12:07.258342', '1', 'CATAS', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-01-21 16:12:14.279963', '2', 'COSMOB', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-01-21 16:12:24.842222', '3', 'BIFMA', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-01-21 16:12:40.185373', '4', 'GREENGUARD', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-01-21 16:52:27.462782', '1', 'Amithan Sofa', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-01-21 16:59:40.875138', '2', 'Amitha con brazo', 1, '[{\"added\": {}}]', 7, 1),
(12, '2022-01-21 17:00:46.902436', '3', 'Amitha sin brazo', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-01-21 17:01:21.229845', '4', 'Amitha banco', 1, '[{\"added\": {}}]', 7, 1),
(14, '2022-01-21 17:02:16.162743', '5', 'Nuta banco', 1, '[{\"added\": {}}]', 7, 1),
(15, '2022-01-21 17:02:47.952365', '6', 'Nuta silla', 1, '[{\"added\": {}}]', 7, 1),
(16, '2022-01-21 17:03:36.783711', '7', 'Abuela silla', 1, '[{\"added\": {}}]', 7, 1),
(17, '2022-01-21 17:04:24.515904', '8', 'Base Cross', 1, '[{\"added\": {}}]', 7, 1),
(18, '2022-01-21 17:05:57.967995', '9', 'Base Rhino', 1, '[{\"added\": {}}]', 7, 1),
(19, '2022-01-21 17:15:37.213863', '10', 'LadyB GoGreen', 1, '[{\"added\": {}}]', 7, 1),
(20, '2022-01-21 17:16:36.754435', '11', 'Lisa Wood', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-01-21 17:22:49.945965', '12', 'Bob Pouf', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-01-21 17:23:31.319385', '13', 'Big Bob Pouf', 1, '[{\"added\": {}}]', 7, 1),
(23, '2022-01-21 17:27:54.599752', '14', 'Base Tripe Doble', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-01-21 17:28:53.775127', '15', 'Freya', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-01-21 17:29:53.178674', '16', 'Loop Mono', 1, '[{\"added\": {}}]', 7, 1),
(26, '2022-01-21 17:31:44.823412', '17', 'KD Stool', 1, '[{\"added\": {}}]', 7, 1),
(27, '2022-01-21 17:32:59.783621', '18', 'Peb Wooden Legs', 1, '[{\"added\": {}}]', 7, 1),
(28, '2022-01-21 17:36:19.501870', '19', 'Bench X5', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-01-21 17:36:58.175035', '20', 'Cynara', 1, '[{\"added\": {}}]', 7, 1),
(30, '2022-01-21 17:37:33.836833', '21', 'Finora', 1, '[{\"added\": {}}]', 7, 1),
(31, '2022-01-21 18:24:30.648633', '22', 'Ada close', 1, '[{\"added\": {}}]', 7, 1),
(32, '2022-01-21 18:25:11.257807', '23', 'Quadra 1320', 1, '[{\"added\": {}}]', 7, 1),
(33, '2022-01-21 18:28:06.405727', '24', 'Outline pad', 1, '[{\"added\": {}}]', 7, 1),
(34, '2022-01-21 18:28:55.513142', '25', 'Holes', 1, '[{\"added\": {}}]', 7, 1),
(35, '2022-01-21 18:30:07.263933', '26', 'Redonda', 1, '[{\"added\": {}}]', 7, 1),
(36, '2022-01-21 20:43:28.025557', '27', 'Banco Redonda Ellie', 1, '[{\"added\": {}}]', 7, 1),
(37, '2022-01-21 20:44:09.694310', '28', 'RE-1600', 1, '[{\"added\": {}}]', 7, 1),
(38, '2022-01-21 20:44:56.149129', '29', 'RE-2020', 1, '[{\"added\": {}}]', 7, 1),
(39, '2022-01-21 20:46:12.779764', '30', 'RE-7001', 1, '[{\"added\": {}}]', 7, 1),
(40, '2022-01-21 20:46:55.407384', '31', 'Esencia', 1, '[{\"added\": {}}]', 7, 1),
(41, '2022-01-21 22:14:30.715365', '4', 'Learning', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(42, '2022-01-21 22:14:43.155221', '3', 'GP Values', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(43, '2022-01-21 22:14:50.939854', '2', 'CoWorking', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(44, '2022-01-21 22:14:58.293686', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(45, '2022-01-21 22:19:02.944843', '4', 'GREENGUARD', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(46, '2022-01-21 22:19:09.452657', '3', 'BIFMA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(47, '2022-01-21 22:19:15.553185', '2', 'COSMOB', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(48, '2022-01-21 22:19:21.098252', '1', 'CATAS', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(49, '2022-01-21 22:23:41.952643', '15', 'Freya', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(50, '2022-01-21 22:24:01.395976', '17', 'KD Stool', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(51, '2022-01-21 22:24:22.613782', '16', 'Loop Mono', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(52, '2022-01-21 22:24:41.565054', '18', 'Peb Wooden Legs', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(53, '2022-01-21 22:25:03.526479', '7', 'Abuela silla', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(54, '2022-01-21 22:25:21.178642', '4', 'Amitha banco', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(55, '2022-01-21 22:25:46.187567', '2', 'Amitha con brazo', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(56, '2022-01-21 22:26:05.263994', '3', 'Amitha sin brazo', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(57, '2022-01-21 22:26:24.357128', '1', 'Amithan Sofa', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(58, '2022-01-21 22:26:42.118213', '8', 'Base Cross', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(59, '2022-01-21 22:26:59.998246', '9', 'Base Rhino', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(60, '2022-01-21 22:27:30.519715', '14', 'Base Tripe Doble', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(61, '2022-01-21 22:27:56.751903', '13', 'Big Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(62, '2022-01-21 22:28:24.010997', '12', 'Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(63, '2022-01-21 22:28:40.644424', '10', 'LadyB GoGreen', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(64, '2022-01-21 22:29:02.180718', '11', 'Lisa Wood', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(65, '2022-01-21 22:29:19.609340', '5', 'Nuta banco', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(66, '2022-01-21 22:29:42.723430', '6', 'Nuta silla', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(67, '2022-01-21 22:30:13.884535', '20', 'Cynara', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(68, '2022-01-21 22:30:39.049540', '21', 'Finora', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(69, '2022-01-21 22:31:03.315850', '19', 'Bench X5', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(70, '2022-01-21 22:31:33.533176', '22', 'Ada close', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(71, '2022-01-21 22:31:52.201205', '27', 'Banco Redonda Ellie', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(72, '2022-01-21 22:32:14.154599', '31', 'Esencia', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(73, '2022-01-21 22:32:45.635493', '25', 'Holes', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(74, '2022-01-21 22:33:11.467635', '24', 'Outline pad', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(75, '2022-01-21 22:33:30.554702', '23', 'Quadra 1320', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(76, '2022-01-21 22:33:56.809127', '28', 'RE-1600', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(77, '2022-01-21 22:34:22.227885', '29', 'RE-2020', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(78, '2022-01-21 22:34:42.021122', '30', 'RE-7001', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(79, '2022-01-21 22:35:10.812041', '26', 'Redonda', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(80, '2022-01-21 22:36:09.322879', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(81, '2022-01-31 22:13:46.191775', '4', 'Learning', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(82, '2022-01-31 22:13:53.893222', '3', 'GP Values', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(83, '2022-01-31 22:14:01.673806', '2', 'CoWorking', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(84, '2022-01-31 22:14:07.384424', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(85, '2022-02-01 15:22:25.902077', '4', 'Learning', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(86, '2022-02-01 15:22:32.829894', '3', 'GP Values', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(87, '2022-02-01 15:22:39.970363', '2', 'CoWorking', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(88, '2022-02-01 15:22:49.903911', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(89, '2022-02-01 15:24:16.438144', '7', 'Abuela silla', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(90, '2022-02-01 15:24:33.523521', '4', 'Amitha banco', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(91, '2022-02-01 15:24:47.185208', '2', 'Amitha con brazo', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(92, '2022-02-01 15:24:58.643744', '3', 'Amitha sin brazo', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(93, '2022-02-01 15:25:15.226353', '1', 'Amitha Sofa', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(94, '2022-02-01 15:25:49.694588', '5', 'Nuta banco', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(95, '2022-02-01 15:26:26.746265', '13', 'Big Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(96, '2022-02-01 15:26:38.697151', '12', 'Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(97, '2022-02-01 15:27:15.086347', '18', 'Peb Wooden Legs', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(98, '2022-02-01 15:27:33.911664', '6', 'Nuta silla', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(99, '2022-02-07 15:54:25.855143', '1', 'TANIA QUIRARTE', 1, '[{\"added\": {}}]', 12, 1),
(100, '2022-02-07 15:56:37.238070', '1', 'TANIA QUIRARTE', 2, '[]', 12, 1),
(101, '2022-02-07 15:57:54.329779', '2', 'ELISA ALVES', 1, '[{\"added\": {}}]', 12, 1),
(102, '2022-02-07 15:58:51.445569', '3', 'GABRIELA CHÁVEZ', 1, '[{\"added\": {}}]', 12, 1),
(103, '2022-02-07 15:59:41.632440', '4', 'MARCO CECCATO', 1, '[{\"added\": {}}]', 12, 1),
(104, '2022-02-07 16:00:34.067450', '5', 'WENDY CASTRO', 1, '[{\"added\": {}}]', 12, 1),
(105, '2022-02-07 16:00:51.506960', '4', 'MARCO CECCATO', 2, '[{\"changed\": {\"fields\": [\"Tema\"]}}]', 12, 1),
(106, '2022-02-07 17:34:35.180434', '6', 'TERE ZAZUETA', 1, '[{\"added\": {}}]', 12, 1),
(107, '2022-02-07 17:35:09.923803', '7', 'PATRICIA BARROSO', 1, '[{\"added\": {}}]', 12, 1),
(108, '2022-02-07 17:36:48.637501', '1', 'Learning', 1, '[{\"added\": {}}]', 11, 1),
(109, '2022-02-07 17:37:22.035107', '2', 'Co-working', 1, '[{\"added\": {}}]', 11, 1),
(110, '2022-02-07 17:37:46.324059', '3', 'Living', 1, '[{\"added\": {}}]', 11, 1),
(111, '2022-02-07 17:38:08.949091', '4', 'GP Values', 1, '[{\"added\": {}}]', 11, 1),
(112, '2022-02-07 17:38:32.862844', '2', 'Co Working', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 11, 1),
(113, '2022-02-07 18:50:37.337246', '3', 'GP Values', 2, '[{\"changed\": {\"fields\": [\"Informacion de categoria\"]}}]', 9, 1),
(114, '2022-02-07 18:50:57.223352', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\"Informacion de categoria\"]}}]', 9, 1),
(115, '2022-02-07 18:51:17.123094', '2', 'Co Working', 2, '[{\"changed\": {\"fields\": [\"Categoria\", \"Informacion de categoria\"]}}]', 9, 1),
(116, '2022-02-07 18:51:32.164812', '4', 'Learning', 2, '[{\"changed\": {\"fields\": [\"Informacion de categoria\"]}}]', 9, 1),
(117, '2022-02-07 19:04:01.938329', '4', 'Learning', 2, '[{\"changed\": {\"fields\": [\" Color\"]}}]', 9, 1),
(118, '2022-02-07 19:04:32.000571', '3', 'GP Values', 2, '[{\"changed\": {\"fields\": [\" Color\"]}}]', 9, 1),
(119, '2022-02-07 19:04:51.469363', '2', 'Co Working', 2, '[{\"changed\": {\"fields\": [\" Color\"]}}]', 9, 1),
(120, '2022-02-07 19:05:13.116642', '1', 'Living', 2, '[{\"changed\": {\"fields\": [\" Color\"]}}]', 9, 1),
(121, '2022-02-08 01:01:31.373735', '7', 'PATRICIA BARROSO', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(122, '2022-02-08 21:15:40.389566', '3', 'GP-Values', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(123, '2022-02-08 21:15:47.275059', '2', 'Co-Working', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(124, '2022-02-08 21:35:41.953856', '4', 'learning', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(125, '2022-02-08 21:35:51.730854', '3', 'gp-values', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(126, '2022-02-08 21:36:02.847900', '2', 'coworking', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(127, '2022-02-08 21:36:11.809800', '1', 'living', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 9, 1),
(128, '2022-02-08 23:52:33.511221', '1', 'living', 2, '[{\"changed\": {\"fields\": [\"Image 2\"]}}]', 9, 1),
(129, '2022-02-08 23:53:28.721328', '4', 'learning', 2, '[{\"changed\": {\"fields\": [\"Image 2\"]}}]', 9, 1),
(130, '2022-02-09 04:11:08.294284', '8', 'Base Cross', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(131, '2022-02-09 04:11:59.857877', '9', 'Base Rhino', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(132, '2022-02-09 04:13:04.161477', '15', 'Freya', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(133, '2022-02-09 04:13:58.569045', '16', 'Loop Mono', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(134, '2022-02-09 15:53:13.758965', '22', 'Ada close', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(135, '2022-02-09 15:53:45.787199', '21', 'Finora', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(136, '2022-02-09 15:54:46.415501', '10', 'LadyB GoGreen', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(137, '2022-02-09 15:55:20.809657', '11', 'Lisa Wood', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(138, '2022-02-09 15:57:04.416093', '14', 'Base Tripe Doble', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(139, '2022-02-09 15:57:35.556197', '19', 'Bench X5', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(140, '2022-02-09 15:59:10.519414', '20', 'Cynara', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(141, '2022-02-09 15:59:35.783366', '25', 'Holes', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(142, '2022-02-09 16:00:13.033718', '24', 'Outline pad', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(143, '2022-02-09 16:00:58.614089', '26', 'Redonda', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(144, '2022-02-09 16:02:35.367697', '7', 'Abuela silla', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(145, '2022-02-09 16:04:44.210345', '4', 'Amitha banco', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(146, '2022-02-09 16:04:56.251698', '2', 'Amitha con brazo', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(147, '2022-02-09 16:05:06.241369', '3', 'Amitha sin brazo', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(148, '2022-02-09 16:05:17.590884', '1', 'Amitha Sofa', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(149, '2022-02-09 16:06:19.844080', '5', 'Nuta banco', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(150, '2022-02-09 16:06:29.664119', '6', 'Nuta silla', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(151, '2022-02-09 16:07:05.955588', '13', 'Big Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(152, '2022-02-09 16:07:17.970681', '12', 'Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Home Space Image\"]}}]', 7, 1),
(153, '2022-02-09 16:08:04.130675', '31', 'Esencia', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(154, '2022-02-09 16:08:19.305187', '18', 'Peb Wooden Legs', 2, '[{\"changed\": {\"fields\": [\"Detail Image\"]}}]', 7, 1),
(155, '2022-02-10 15:24:14.987588', '1', 'TANIA QUIRARTE', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(156, '2022-02-10 15:24:33.803329', '3', 'GABRIELA CHÁVEZ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 12, 1),
(157, '2022-02-10 15:25:37.652161', '1', 'TANIA QUIRARTE', 2, '[{\"changed\": {\"fields\": [\"Tema\", \"Fecha del evento\"]}}]', 12, 1),
(158, '2022-02-10 15:25:47.352750', '2', 'ELISA ALVES', 2, '[]', 12, 1),
(159, '2022-02-10 15:25:54.053562', '3', 'GABRIELA CHÁVEZ', 2, '[]', 12, 1),
(160, '2022-02-10 23:37:24.626356', '32', 'Mesa Arket H.50', 1, '[{\"added\": {}}]', 7, 1),
(161, '2022-02-10 23:38:35.900116', '33', 'Mesa Argo', 1, '[{\"added\": {}}]', 7, 1),
(162, '2022-02-10 23:40:32.843466', '5', 'Nuta banco', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(163, '2022-02-10 23:43:42.302162', '34', 'Mesa Arket H.110', 1, '[{\"added\": {}}]', 7, 1),
(164, '2022-02-10 23:44:05.853021', '8', 'Base Cross', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(165, '2022-02-10 23:44:16.327226', '9', 'Base Rhino', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(166, '2022-02-10 23:44:27.068113', '10', 'LadyB GoGreen', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(167, '2022-02-10 23:45:01.532545', '11', 'Lisa Wood', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(168, '2022-02-10 23:45:51.031399', '12', 'Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(169, '2022-02-10 23:46:24.737283', '13', 'Big Bob Pouf', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(170, '2022-02-10 23:48:43.807693', '15', 'Freya', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(171, '2022-02-10 23:49:18.949817', '16', 'Loop Mono', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(172, '2022-02-10 23:51:40.767629', '17', 'KD Stool', 2, '[{\"changed\": {\"fields\": [\"Materiales\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(173, '2022-02-10 23:53:15.108498', '18', 'Peb Wooden Legs', 2, '[{\"changed\": {\"fields\": [\"Detail Image\", \"Home Space Image\"]}}]', 7, 1),
(174, '2022-02-10 23:54:58.646958', '35', 'Sicla Base mecedora', 1, '[{\"added\": {}}]', 7, 1),
(175, '2022-02-10 23:56:02.147875', '36', 'Ruelle', 1, '[{\"added\": {}}]', 7, 1),
(176, '2022-02-10 23:58:04.708967', '19', 'Bench X5', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(177, '2022-02-11 00:01:01.788302', '20', 'Cynara', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(178, '2022-02-11 00:01:23.826004', '21', 'Finora', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(179, '2022-02-11 00:03:06.077700', '22', 'Ada close', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(180, '2022-02-11 00:04:42.822767', '23', 'Quadra 1350', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Materiales\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(181, '2022-02-11 00:05:43.365485', '24', 'Outline pad', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(182, '2022-02-11 00:07:24.692671', '25', 'Holes', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(183, '2022-02-11 00:07:56.322281', '26', 'Redonda', 2, '[{\"changed\": {\"fields\": [\"Materiales\"]}}]', 7, 1),
(184, '2022-02-11 00:13:49.121663', '37', 'Ellie RS-400', 1, '[{\"added\": {}}]', 7, 1),
(185, '2022-02-11 00:15:24.529253', '38', 'Re-1650/NG', 1, '[{\"added\": {}}]', 7, 1),
(186, '2022-02-11 00:24:06.573934', '28', 'RE-1600', 2, '[{\"changed\": {\"fields\": [\"Materiales\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(187, '2022-02-11 00:25:01.612264', '29', 'RE-2020', 2, '[{\"changed\": {\"fields\": [\"Materiales\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(188, '2022-02-11 00:26:35.949196', '30', 'RE-7051', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Url\", \"Descripcion\", \"Materiales\", \"Detail Image\", \"Home Space Image\", \"Home Image\"]}}]', 7, 1),
(189, '2022-02-11 00:28:18.654721', '39', 'Zoe Kids', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'products', 'banner'),
(9, 'products', 'category'),
(8, 'products', 'certification'),
(10, 'products', 'contact'),
(7, 'products', 'product'),
(12, 'products', 'webinar'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

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
(22, 'products', '0004_delete_contact', '2022-01-26 03:15:51.241930'),
(23, 'products', '0005_banner_webinar', '2022-02-07 15:33:00.740646'),
(24, 'products', '0006_auto_20220207_1555', '2022-02-07 15:55:26.717819'),
(25, 'products', '0007_auto_20220207_1833', '2022-02-07 18:33:08.382341'),
(26, 'products', '0008_category_color', '2022-02-07 19:03:19.013445'),
(27, 'products', '0009_category_image2', '2022-02-08 23:45:52.797205');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2obhpsqcrltdx5392aujkylg84c17p4d', '.eJxVjEEOwiAQRe_C2hCgDIJL956BDMMgVUOT0q6MdzckXej2v_f-W0Tctxr3zmucs7gILU6_W0J6chsgP7DdF0lL29Y5yaHIg3Z5WzK_rof7d1Cx11FTUKmAZmOVNgZVZjtpQkZDYBwUe6YStKfifDKTd5A9KIUpgC8QWHy-50U3zg:1nGSHa:9tN0Mp-M9j_JXf1572LgwCYADlkjdHFK88kiVoqt61Q', '2022-02-19 21:07:46.412669'),
('be6w6k0udhejwd8c3wri7yqwfs5gove8', '.eJxVjEEOwiAQRe_C2hCgDIJL956BDMMgVUOT0q6MdzckXej2v_f-W0Tctxr3zmucs7gILU6_W0J6chsgP7DdF0lL29Y5yaHIg3Z5WzK_rof7d1Cx11FTUKmAZmOVNgZVZjtpQkZDYBwUe6YStKfifDKTd5A9KIUpgC8QWHy-50U3zg:1nAgP8:o_oNUSrWv7eryIFtAGRyCkUtf5pCE8PIhaJlIRqQgyk', '2022-02-03 22:59:42.078543'),
('kc7fu3hwp8z8s7eqtm41a8rgxjpnqoaa', '.eJxVjEEOwiAQRe_C2hCgDIJL956BDMMgVUOT0q6MdzckXej2v_f-W0Tctxr3zmucs7gILU6_W0J6chsgP7DdF0lL29Y5yaHIg3Z5WzK_rof7d1Cx11FTUKmAZmOVNgZVZjtpQkZDYBwUe6YStKfifDKTd5A9KIUpgC8QWHy-50U3zg:1nEevK:z7djsJbFliOY38BNbbPoXCpXm1pzFJoVQMok92LRyJQ', '2022-02-14 22:13:22.524803');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_category`
--

CREATE TABLE `products_category` (
  `id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` date NOT NULL,
  `info` longtext,
  `color` varchar(20) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_category`
--

INSERT INTO `products_category` (`id`, `name`, `image`, `created`, `updated`, `info`, `color`, `image2`) VALUES
(1, 'living', 'categories/Living.webp', '2022-01-20 23:02:43.926226', '2022-02-08', 'Tiene como propósito primario, mostrar cómo una colección de mobiliario exterior, puede interactuar con una zona de relajación y donde ambas son “básicos” al diseñar un layout de un espacio de oficina.\r\nLa barra principal también se convierte en un “must be” en los espacios de oficina, son zonas de interacción donde los colaboradores pueden reforzar lazos de pertenencia con compañeros y la empresa en general.', '#3c6756', 'categories/BANNER_LIVING.webp'),
(2, 'coworking', 'categories/Co-working.webp', '2022-01-21 16:06:00.943369', '2022-02-08', 'Este espacio muestra cómo nuestro mobiliario se adapta a los nuevos entornos de trabajo, que van mas allá de un espacio de oficina, es claro, que ahora un restaurante, una café o una habitación de hotel, son espacio de trabajo que seguirán evolucionado.\r\nTambién, integramos el concepto de “Agile Work”, donde exponemos sillas con un visión moderna y actual, que se adaptan a cualquier estilo y diseño interior.', '#997065', NULL),
(3, 'gp-values', 'categories/GP-VALUES.webp', '2022-01-21 16:10:48.597180', '2022-02-08', 'La muestra de innovación, tendencias y fortalezas de Grupo Requiez.\r\nDe una forma simplificada, a través de 5 piezas de mobiliario, mostrando sus materiales y procesos sustentables, que son representativos de nuestras marcas.', '#e1c28e', NULL),
(4, 'learning', 'categories/Learning.webp', '2022-01-21 16:11:39.669127', '2022-02-08', 'Este espacio fue creado con 2 intenciones claras: transmitir lo aprendido durante 2021 sobre el diseño de espacios de trabajo PostCovid. Es una zona de reunión, capacitación y webinars presenciales, con expertos en diferentes temas que complementan las nuevas formas de trabajo.\r\nUna espacio versátil, desde la selección de mobiliario, hasta la integración de una gran sala para impartir un platica con alguno de nuestros expertos de negocio.', '#3A4553', 'categories/learning_LHnHMME.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_certification`
--

CREATE TABLE `products_certification` (
  `id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_certification`
--

INSERT INTO `products_certification` (`id`, `name`, `image`) VALUES
(1, 'CATAS', 'certifications/Catas.webp'),
(2, 'COSMOB', 'certifications/cosmob.webp'),
(3, 'BIFMA', 'certifications/bifma.webp'),
(4, 'GREENGUARD', 'certifications/greenguard_logo.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint NOT NULL,
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
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `url`, `brand`, `description`, `materials`, `colors`, `image`, `image1`, `image2`, `created`, `updated`) VALUES
(1, 'Amitha Sofa', 'amitha_sofa', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Gris mineral', '', 'products/Amitha_sofa204129.webp', 'products/AMITHA_SOFA.webp', '', '2022-01-21 16:52:27.446416', '2022-02-09'),
(2, 'Amitha con brazo', 'amihta_brazo', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Antracita', '', 'products/Amitha_c_brazos.webp', 'products/AMITHA_C_BRAZOS_1.webp', '', '2022-01-21 16:59:40.865124', '2022-02-09'),
(3, 'Amitha sin brazo', 'amitha', 'Labenze', 'Amitha, diseñada por Forsix, es una familia de sillas metálicas para exteriores con líneas clásicamente elegantes. Esta silla apilable de tubos de acero con curvas generosamente acogedoras es extremadamente cómoda. Su diseño atemporal lo hace adecuado para su uso en las instalaciones contract y hoteleras más refinadas. El marco está tratado para uso en exteriores y tiene un acabado de laca mate. Las combinaciones de colores disponibles se han seleccionado para combinar con algunas de las colecciones de mesas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Gris mineral', '', 'products/Amitha_s_brazos.webp', 'products/AMITHA_S_BRAZOS_twfstNx.webp', '', '2022-01-21 17:00:46.892941', '2022-02-09'),
(4, 'Amitha banco', 'amitha_banco', 'Labenze', 'colección diseñada por Forsix y se adaptan perfectamente a los entornos de hostelería, tanto en interiores como en exteriores. Este taburete de bar apilable de tubo de acero está tratado para uso en exteriores y tiene un acabado mate. Las combinaciones de colores disponibles se han seleccionado para que coincidan con algunas de las colecciones de mesas altas para exteriores más populares de Gaber, lo que garantiza la coordinación de entornos interiores y exteriores.', 'Bordeaux', '', 'products/Amitha_banco.webp', 'products/AMITHA_BANCO_1.webp', '', '2022-01-21 17:01:21.222502', '2022-02-09'),
(5, 'Nuta banco', 'nuta_banco', 'Labenze', 'Nuta taburete disponible en dos alturas; bar y cocina. El material utilizado es tecnopolímero que le da un concepto de tacto suave a este taburete, que vuelve a proponer un diseño de antaño pero con materiales modernos, para un complemento adecuado para ambientes contract y comunitarios.', '- Verde\r\n- Bordeaux', '', 'products/Banco_Nuta.webp', 'products/BANCO_NUTA_pIXLOej.webp', '', '2022-01-21 17:02:16.153699', '2022-02-10'),
(6, 'Nuta silla', 'nuta_silla', 'Labenze', 'Nuta es una silla con asiento en tecnopolímero, de estilo refinado y atemporal, apta para instalaciones de prestigio tanto en interior como en exterior. Estas líneas exquisitamente definidas de Nuta, armoniosamente conectadas por Studio Favaretto, dan un resultado que despierta asombro a primera vista.\r\nLas dimensiones generosas y la comodidad ergonómica superior distinguen a Nuta en uso, incluso durante períodos prolongados.\r\nUn fino asiento acolchado, como accesorio de bienvenida, completa la posibilidad de combinar los modernos colores de polímeros con las colecciones más populares de tejidos y pieles sintéticas.', 'Verde', '', 'products/Silla_Nuta.webp', 'products/SILLA_NUTA_3k7pSan.webp', '', '2022-01-21 17:02:47.945213', '2022-02-09'),
(7, 'Abuela silla', 'abuela_silla', 'Labenze', 'Silla funcional y versátil con un diseño suave y elegante. Los exclusivos detalles de haya maciza en un limpio diseño envolvente crean una combinación ganadora para todos sus entornos comerciales y de hostelería.\r\nEn la versión para exteriores de la colección Abuela, los detalles de tecnopolímero inyectado delicadamente suaves reflejan las juntas de madera maciza de la versión para interiores. Las atractivas formas limpias del respaldo, los cómodos reposabrazos y las opciones de cojines acolchados y tapizados hacen que Abuela sea perfecta y original para innumerables aplicaciones.', 'Azul', '', 'products/Abuela.webp', 'products/ABUELA_1.webp', '', '2022-01-21 17:03:36.777055', '2022-02-09'),
(8, 'Base Cross', 'base_cross', 'Labenze', 'Cross están disponibles en marcos de metal cromado de cuatro patas. El asiento acolchado y tapizado se realza con costuras características, hechas en piel sintética. Su forma lúdica y su excelente comodidad son las características más apreciadas de este original objeto.', '- Dove gray', '', 'products/Base_Cross.webp', 'products/Base_cross_e9t41CR.webp', '', '2022-01-21 17:04:24.509870', '2022-02-10'),
(9, 'Base Rhino', 'base_rhino', 'Labenze', 'Mesa con diseño minimalista y refinado, la mesa Rhino presenta un aspecto que permite aplicaciones contract versátiles. Combinable con encimeras de diferentes medidas y acabados, destaca por una base cuadrada en hierro fundido pintado, con las características esquinas redondeadas. Disponible en dos alturas, es especialmente estable gracias a la forma de la propia base y a los pies regulables.', '- Dove gray', '', 'products/Base_rinho.webp', 'products/Bas_rinho.webp', '', '2022-01-21 17:05:57.958153', '2022-02-10'),
(10, 'LadyB GoGreen', 'ladyb', 'Labenze', 'S • CAB apoya la ecología y limita el desperdicio proponiendo una producción de accesorios fabricados en un 60% de plástico reciclado certificado, obtenido gracias al uso de energía generada a partir de fuentes renovables, y a su vez 100% reciclable una y otra vez en un proceso virtuoso dirigido a no introducir plástico nuevo en el medio ambiente. Productos completamente eco-sostenibles, sin renunciar nunca a altos estándares técnicos. S • CAB diseña el futuro y lo colorea de verde, protegiendo el planeta.', '- Verde', '', 'products/LadyB.webp', 'products/LADY_B_11zon.webp', '', '2022-01-21 17:15:37.204764', '2022-02-10'),
(11, 'Lisa Wood', 'lisa', 'Labenze', 'Silla Lisa es inspirada en las elegantes atmósferas de los interiores de los años 50 y 60. El delgado marco tubular rodea y sostiene el respaldo de sillones y sillas, con asientos acolchados o de madera. Gracias a los finos acabados y materiales, Lisa se siente cómoda tanto en entornos contract como domésticos.', '- Nogal\r\n- Antracita', '', 'products/Lisa_wood.webp', 'products/LISA_WOOD_11zon.webp', '', '2022-01-21 17:16:36.745073', '2022-02-10'),
(12, 'Bob Pouf', 'bob', 'Labenze', 'Puf  tiene estructura interna metálica, totalmente moldeada en poliuretano espumado en frío; tira de madera debajo del puf para grapar la tela. Puf completo de 4 pies.', '- Artell Chanel Norflok Azul\r\n- Artell Chanel Saxony Acero', '', 'products/Bob_pouf.webp', 'products/BOB.webp', '', '2022-01-21 17:22:49.936791', '2022-02-10'),
(13, 'Big Bob Pouf', 'big_bob', 'Labenze', 'Puf  tiene estructura interna metálica, totalmente moldeada en poliuretano espumado en frío; tira de madera debajo del puf para grapar la tela. Puf completo de 4 pies.', '- Artell Chanel Samur Gris\r\n- Artell Malibu Coral\r\n- Chanel Samur Acero', '', 'products/Big_Bob_pouf.webp', 'products/BIG_BOB.webp', '', '2022-01-21 17:23:31.311189', '2022-02-10'),
(14, 'Base Tripe Doble', 'base_tripe', 'Labenze', 'Tripé es la nueva mesa extraordinaria de tres radios, porque ofrece un proyecto orgánico en el que funcionalidad, minimalismo y reconocibilidad encuentran la síntesis adecuada. La base de acero con unión de aluminio fundido a presión no es en realidad un monobloque tradicional, está formada por varios elementos que pueden diversificarse y sustituirse según las necesidades. Un proyecto industrial atento al componente económico, es un sistema verdaderamente flexible y multifacético que da vida a una línea de mesas y complementos de diversas formas y tamaños, ideal para el hogar y áreas públicas.', 'Negro', '', 'products/Base_triple_doble.webp', 'products/Base_triple_doble_uj4vYhw.webp', '', '2022-01-21 17:27:54.591467', '2022-02-09'),
(15, 'Freya', 'freya', 'Infiniti', 'Freya es la máxima expresión de un diseño puro y lineal, en el que forma y funcionalidad siempre han ido de la mano. La innovación se expresa plenamente a través del diseño y el concepto de la silla: por primera vez, se presenta una silla monobloque en plástico reciclado con una carcasa interna tapizada.     La suave curvatura del marco moldeado por inyección abraza y acomoda un panel frontal tapizado suave, creando continuidad entre los diversos elementos del asiento y brindando una comodidad extrema.', '- Kvadrat', '', 'products/Freya.webp', 'products/Freya_fuu2dq1.webp', '', '2022-01-21 17:28:53.767106', '2022-02-10'),
(16, 'Loop Mono', 'loop_mono', 'Infiniti', 'Nació hace diez años y de inmediato se ha convertido en uno de los best sellers de Infiniti, LOOP es un icono capaz de hacer elegante cualquier ambiente.    La carcasa de policarbonato da paso ahora a una versión de polipropileno reciclado, aún más delgada y liviana que antes. Los reposabrazos ergonómicos tienen un nuevo tamaño, pero manteniendo la curvatura típica, que ha hecho que esta silla sea única en su género. Loop Mono en polipropileno, que se suma a la versión clásica de madera, adquiere una connotación pop, fresca y moderna.', '- West Tabaco Artell', '', 'products/Loop_mono.webp', 'products/Loop__mono.webp', '', '2022-01-21 17:29:53.167215', '2022-02-10'),
(17, 'KD Stool', 'kd_stool', 'Infiniti', 'Es un banco de líneas sencillas pero rigurosas, capaz de\r\nadaptarse a las diferentes situaciones de decoración en las que se propone. Perfecto para Ho.Re.Ca. mundo.\r\nSoporte para áreas de reuniones de oficinas modernas. Su nombre contiene\r\nel corazón del proyecto, que es crear un banco que sea fácil\r\npara montar, ocupando poco espacio durante el transporte, en su totalidad\r\nderribar la lógica. La estructura de tubo rectangular pintado puede\r\nacomodar un asiento curvo en madera contrachapada de roble.', '- Roble\r\n- Negro', '', '', '', '', '2022-01-21 17:31:44.816148', '2022-02-10'),
(18, 'Peb Wooden Legs', 'peb_wooden', 'Infiniti', 'Sillón de líneas suaves y confortables, Peb muestra una personalidad importante y esencial, jugando con las dos alturas de respaldo disponibles. Ahora, se presenta en la versión patas de madera. Está completamente tapizado y es perfecto para las áreas de salón de la vida contemporánea.', 'Por definir', '', 'products/PEB_ehBqQii.webp', 'products/PEB1.webp', '', '2022-01-21 17:32:59.775244', '2022-02-10'),
(19, 'Bench X5', 'x5', 'Quadrifoglio', 'La gama X5 ha sido diseñada para ofrecer flexibilidad y múltiples posibilidades de configuración, líneas limpias y agradables que se adaptan y se integran perfectamente entre el entorno de trabajo y todos los usuarios.', '- Cubierta GR gris\r\n- Base Gris Grafito', '', 'products/Bench_X5.webp', 'products/Bench_x5_iEQvVXJ.webp', '', '2022-01-21 17:36:19.491997', '2022-02-10'),
(20, 'Cynara', 'cynara', 'Okamura', 'Experimente la máxima ligereza y la comodidad de Cynara, una silla operativa que integra una funcionalidad intuitiva y receptiva con una estética refinada y limpia para completar cualquier entorno de trabajo.', '- Gris oscuro\r\n- Verde oscuro', '', 'products/Cynara.webp', 'products/Cynara_N2ujWyB.webp', '', '2022-01-21 17:36:58.166232', '2022-02-11'),
(21, 'Finora', 'finora', 'Okamura', 'Finora fue diseñado para encapsular la belleza con una delgadez y ligereza aerodinámicas. Al aplicar la filosofía de diseño que es distintiva de la industria automotriz, Finora brinda al trabajador moderno un alto nivel de funcionalidad para el máximo nivel de comodidad en una silla de oficina sin sacrificar el diseño estético.', '- Gris\r\n- Negro', '', 'products/Finora.webp', 'products/FINORA_11zon.webp', '', '2022-01-21 17:37:33.829521', '2022-02-11'),
(22, 'Ada close', 'ada_close', 'Requiez', 'Sillón de nombre Poltrona Ada Closed, cuentan con estructura interna de acero y esquineros en madera. \r\nSu asiento y respaldo fabricados en poliuretano inyectado de alta densidad con retardante de flama, elemento de guarda lateral para dispositivo móvil o revistero.', '- Duvaltex Harmony', '', 'products/ADA_CLOSED.webp', 'products/ADA_CLOSED_11zon.webp', '', '2022-01-21 18:24:30.619012', '2022-02-11'),
(23, 'Quadra 1350', 'quadra', 'Requiez', 'pendiente', '- Mesh Gris\r\n- Duvaltex Harmony', '', 'products/Quadra_RE-1350.webp', 'products/QUADRA_BASIC_11zon.webp', '', '2022-01-21 18:25:11.243079', '2022-02-11'),
(24, 'Outline pad', 'outline', 'Requiez', 'Color, sencillez, comodidad: esta silla tiene muchas virtudes, debido a su estructura amplia y limpia, disponible en blanco, negro, azul oscuro, tabaco y marsala, también con panel de asiento tapizado. El marco apilable está disponible en blanco, negro y cromo. La familia comprende versiones con patín, patín con reposabrazos y 4 patas.', '- Marsala\r\n- Tabaco\r\n- Duvaltex Harmony', '', 'products/Pad_Outline.webp', 'products/Pad_outline_WUQ3ODg.webp', '', '2022-01-21 18:28:06.386522', '2022-02-11'),
(25, 'Holes', 'holes', 'Requiez', 'Asiento de polipropileno y respaldo de polipropileno reforzado con fibra de vidrio, con cubierta exterior del asiento de polipropileno.\r\nSu asiento, respaldo pueden adquirirse en versión antiincendios. Apoyabrazos de polipropileno.\r\nLos ganchos de conexión del asiento se suministran directamente en los pies con ganchos de alambre de 6 mm de diámetro soldados a la base.\r\nPosibilidad de pies sin ganchos; ambas versiones de pies pueden llevar almohadillas de fieltro antirayaduras.', '- Dove gray\r\n- Sccocaa\r\n- Military Green', '', 'products/Holes.webp', 'products/Holes_LuPUv5S.webp', '', '2022-01-21 18:28:55.498960', '2022-02-11'),
(26, 'Redonda', 'redonda', 'Requiez', 'Silla con asiento en polipropileno y respaldo en polipropileno con fibra de vidrio.\r\nVersión con estructura sin reposabrazos en alambre de 11 mm doblado y soldado nivelado. \r\nMáxima apilabilidad: 45 sillas con carro especial con ruedas de goma para alta carga. Acabado del marco: pintado en color dove gray.\r\nBarras de unión entre filas disponibles en el catálogo.', '- Dove gray\r\n- Sccocaa\r\n- Military Green', '', 'products/Redonda.webp', 'products/Redonda_HE7esL7.webp', '', '2022-01-21 18:30:07.248960', '2022-02-11'),
(27, 'Banco Redonda Ellie', 'banco_redonda', 'Requiez', 'Banco con asiento en polipropileno y respaldo en polipropileno con fibra de vidrio.\r\nVersión con estructura sin reposabrazos en alambre de 11 mm doblado y soldado nivelado. \r\nMáxima apilabilidad: 45 sillas con carro especial con ruedas de goma para alta carga. Acabado del marco: pintado en color dove gray.\r\nBarras de unión entre filas disponibles en el catálogo.', 'Mesh gris', '', 'products/RE2021_A.webp', 'products/RE2021_B.webp', 'products/RE2021_C.webp', '2022-01-21 20:43:28.000971', '2022-01-21'),
(28, 'RE-1600', 're-1600', 'Requiez', 'Sillón ejecutivo en mesh/tela con cabecera, cuenta con 3 ángulos de reclinamiento a través de un maneral para regular la tensión y sistema antishock, soporte lumbar ajustable, profundidad de asiento slider, cabecera ajustable, descansa brazos ajustables 3D, asiento ergonómico con acojina-miento de poliuretano inyectado de alta densidad con retardante al fuego. Rodamientos duales de naylon recubiertas de poliuretano suave para piso duros.', '- Blanco\r\n- Mesh Gris\r\n- Duvaltex Harmony', '', '', '', '', '2022-01-21 20:44:09.684900', '2022-02-11'),
(29, 'RE-2020', 're-2020', 'Requiez', 'Sillón ejecutivo con cabecera ajustable, además cuenta con acojinamiento de poliuretano inyectado de alta densidad y un sistema de reclinamiento sincrónico con 4 diferentes ángulos y bloqueo.\r\nSu asiento con ajuste de profundidad slider, descansa brazos 3D (giratorios, altura y profundidad).\r\nRodamientos duales de naylon recubiertas de poliuretano suave para piso duros.', '- Piel Negro', '', 'products/RE-2020P.webp', 'products/RE_2020.webp', '', '2022-01-21 20:44:56.136545', '2022-02-11'),
(30, 'RE-7051', 're-7051', 'Requiez', 'Sillón ejecutivo sin cabecera.\r\nCuenta con un sistema reclinamiento sincrónico con 4 posiciones con maneral para regular la tensión y antishock, además de ajuste de profundidad de asiento. \r\nSus descansa brazos tienen ajuste de altura y codera suave al tacto, soporte lumbar independiente, base y marco estructural de aluminio pulido, cabecera ajustable.\r\n\"', '- Piel Indiana Gris', '', 'products/RE-7051.webp', 'products/RE-7051_h49odA4.webp', '', '2022-01-21 20:46:12.769582', '2022-02-11'),
(31, 'Esencia', 'esencia', 'Requiez', 'Esencia es un sistema de soft seating modular, sutil, elegante, creativo, flexible y dinámico con la capacidad de adaptarse a los espacios y necesidades como salas de espera o espacios colaborativos amigable con el medio ambiente con acojinamiento en poliuretano flexible de alta resiliencia, patas tubulares terminadas en pintura electrostática.\r\nGran variedad de configuraciones y plazas con y sin respaldo, descansabrazos y accesorios opcionales como mesas laterales centrales y circular de apoyo.', 'Por definir', '', 'products/ESENCIA.webp', 'products/ESENCIA_9qzSJxw.webp', '', '2022-01-21 20:46:55.400095', '2022-02-09'),
(32, 'Mesa Arket H.50', 'mesa-arket', 'Labenze', 'Mesa altura H.50, con base de aluminio de 3 puntas y cubierta de acero circular D.60, pintada al mismo tono color azul, con regatón ajustable. Para interior y exterior.', 'Azul', '', 'products/Mesa_arket_H50.webp', 'products/ARKET_H_50.webp', '', '2022-02-10 23:37:24.620366', '2022-02-10'),
(33, 'Mesa Argo', 'argo', 'Labenze', 'Mesa 0.60x0.60 mts h.40 elaborada en tecnopolímero color antracita. Para interior y exterior. Apilable.', 'Antracita', '', 'products/Argo.webp', 'products/ARGO_dtDPivm.webp', '', '2022-02-10 23:38:35.894593', '2022-02-10'),
(34, 'Mesa Arket H.110', 'mesa-arket-h100', 'Labenze', 'Mesa con cubierta elaborada en acero cuadrada, con base y columna h. 110 de aluminio de  3 puntos, con regaton ajustable. Cubierta y base pintadas color gris.', '- Gris', '', 'products/Mesa_arket_H110.webp', 'products/ARKET_H_110.webp', '', '2022-02-10 23:43:42.297738', '2022-02-10'),
(35, 'Sicla Base mecedora', 'sicla', 'Infiniti', 'Silla con asiento compuesto por un monocasco ligero y confortable aelaborado en polipropileno con fibra de vidrio. Base de en forma de mecedora pintada en color negro.', '- Negro\r\n- Verde Militar', '', 'products/Sicla.webp', 'products/Sicla_7.webp', '', '2022-02-10 23:54:58.642783', '2022-02-10'),
(36, 'Ruelle', 'ruele', 'Infiniti', 'Silla con asiento compuesto por un monocasco ligero y confortable aelaborado en polipropileno con fibra de vidrio. Base de en forma de mecedora pintada en color negro.', '- Gris claro\r\n- Roble antracita', '', 'products/Ruelle.webp', 'products/Ruelle_10.webp', '', '2022-02-10 23:56:02.143811', '2022-02-10'),
(37, 'Ellie RS-400', 'ellie', 'Requiez', 'Silla con diseño estilizado, adaptable para diversos espacios de trabajo por su sistema de reclinamiento fácil de operar, brazos y soporte lumbar ajustables. Su estructura color blanco, mesh gris y tapiz biodegradable.', '- Blanco\r\n- Mesh Gris\r\n- Duvaltex Harmony', '', 'products/Ellie-RS-400.webp', 'products/Ellie.webp', '', '2022-02-11 00:13:49.117284', '2022-02-11'),
(38, 'Re-1650/NG', 're1650', 'Requiez', 'Sillón ejecutivo en mesh/tela con cabecera, cuenta con 3 ángulos de reclinamiento a través de un maneral para regular la tensión y sistema antishock, soporte lumbar ajustable, profundidad de asiento slider, cabecera ajustable, descansa brazos ajustables 3D, asiento ergonómico con acojina-miento de poliuretano inyectado de alta densidad con retardante al fuego. Rodamientos duales de naylon recubiertas de poliuretano suave para piso duros.', '- Negro\r\n- Mesh Negro\r\n- Duvaltex Harmony', '', 'products/RE-1650NG.webp', 'products/RE_1650.webp', '', '2022-02-11 00:15:24.524487', '2022-02-11'),
(39, 'Zoe Kids', 'zoe', 'Requiez', 'Silla diseñada especialmente para niñas y niños, pensada tanto para uso en aulas educativas, como para el home schooling. Es adaptable a diferentes complexiones físicas por sus características ergonómicas y múltiples ajustes. Su asiento y respaldo están tapizado con pads de tapicería y fundas re movibles. Cuenta con ajuste de profundidad en el asiento y también ajuste de altura y profundidad de respaldo. Brazos fijos.', '- Menta', '', 'products/Zoe_Kids.webp', 'products/ZOE_KIDS_11zon.webp', '', '2022-02-11 00:28:18.650476', '2022-02-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_product_category`
--

CREATE TABLE `products_product_category` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_product_category`
--

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
(33, 31, 1),
(34, 32, 1),
(35, 33, 1),
(36, 34, 1),
(37, 35, 2),
(38, 36, 2),
(39, 37, 2),
(40, 38, 2),
(41, 39, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_product_certifications`
--

CREATE TABLE `products_product_certifications` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `certification_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_product_certifications`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_webinar`
--

CREATE TABLE `products_webinar` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products_webinar`
--

INSERT INTO `products_webinar` (`id`, `name`, `theme`, `date`, `image`) VALUES
(1, 'TANIA QUIRARTE', 'Otras formas de abordar el espacio de trabajo', '16 FEBRERO - 6:00 PM', 'webinars/Tania_Quirarte.webp'),
(2, 'ELISA ALVES', 'Mindfullness', '17 FEBRERO - 11:30 AM', 'webinars/Elisa_Alves.webp'),
(3, 'GABRIELA CHÁVEZ', 'Diseñar para disfrutar, disfrutar para trabajar', '17 FEBRERO - 4:00 PM', 'webinars/Gabriela_Chavez_Jhq44XM.webp'),
(4, 'MARCO CECCATO', 'Productos OMP', '18 FEBRERO - 10:30 AM', 'webinars/Marco_Ceccato_.webp'),
(5, 'WENDY CASTRO', 'Mascotas en pandemia', '18 FEBRERO - 12:00 PM', 'webinars/Wendy_Castro_.webp'),
(6, 'TERE ZAZUETA', 'Organización y productividad en el home office', '18 FEBRERO - 5:00 PM', 'webinars/Tere_Zazueta_.webp'),
(7, 'PATRICIA BARROSO', 'Sustentabilidad: tu nueva norma en la oficina', '19 FEBRERO - 11:00 AM', 'webinars/Patricia_Barroso.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_certification`
--
ALTER TABLE `products_certification`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_product_category`
--
ALTER TABLE `products_product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_category_product_id_category_id_99b99489_uniq` (`product_id`,`category_id`),
  ADD KEY `products_product_cat_category_id_6bd7b606_fk_products_` (`category_id`);

--
-- Indices de la tabla `products_product_certifications`
--
ALTER TABLE `products_product_certifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_certifi_product_id_certification_e6f47217_uniq` (`product_id`,`certification_id`),
  ADD KEY `products_product_cer_certification_id_b260e165_fk_products_` (`certification_id`);

--
-- Indices de la tabla `products_webinar`
--
ALTER TABLE `products_webinar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products_certification`
--
ALTER TABLE `products_certification`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `products_product_category`
--
ALTER TABLE `products_product_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `products_product_certifications`
--
ALTER TABLE `products_product_certifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `products_webinar`
--
ALTER TABLE `products_webinar`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `products_product_category`
--
ALTER TABLE `products_product_category`
  ADD CONSTRAINT `products_product_cat_category_id_6bd7b606_fk_products_` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`),
  ADD CONSTRAINT `products_product_cat_product_id_08fb2842_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Filtros para la tabla `products_product_certifications`
--
ALTER TABLE `products_product_certifications`
  ADD CONSTRAINT `products_product_cer_certification_id_b260e165_fk_products_` FOREIGN KEY (`certification_id`) REFERENCES `products_certification` (`id`),
  ADD CONSTRAINT `products_product_cer_product_id_c0f01d57_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
