-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2021 a las 23:53:02
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectodjango`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add Página', 7, 'add_page'),
(26, 'Can change Página', 7, 'change_page'),
(27, 'Can delete Página', 7, 'delete_page'),
(28, 'Can view Página', 7, 'view_page'),
(29, 'Can add Categoría', 8, 'add_category'),
(30, 'Can change Categoría', 8, 'change_category'),
(31, 'Can delete Categoría', 8, 'delete_category'),
(32, 'Can view Categoría', 8, 'view_category'),
(33, 'Can add Artículo', 9, 'add_article'),
(34, 'Can change Artículo', 9, 'change_article'),
(35, 'Can delete Artículo', 9, 'delete_article'),
(36, 'Can view Artículo', 9, 'view_article');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$UdqSydtlv3yS$NYo3NRH3TcO3irm0nxGuNrmQKVSU/dWQJqA4GFgWv3Y=', '2021-12-12 21:58:41.745760', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2021-11-02 22:46:02.279766'),
(4, 'pbkdf2_sha256$180000$LfYokRJFRM8a$WSh/uDz/pV3xZYAWhsyWmJLzQ1eGNu2PC2pKAd0hKHE=', '2021-12-12 21:57:59.944550', 0, 'Pepe', 'Pepe', 'Pepito', 'pepe@pepe.com', 0, 1, '2021-12-12 11:17:54.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_article`
--

CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `content`, `image`, `public`, `created_at`, `update_at`, `user_id`) VALUES
(1, 'Lampara', '<p>Lampara de luz led</p>', 'articles/index.jpg', 1, '2021-12-11 23:08:13.439158', '2021-12-11 23:08:13.440155', 1),
(2, 'Porta espiral', '<p>Base espiral Dr. Strange</p>', 'articles/172824552_260678205782007_4681273576632253983_n.jpg', 1, '2021-12-11 23:14:28.709055', '2021-12-11 23:14:41.151858', 1),
(3, 'Maseta craneo', '<p>Plantera ecologica</p>', 'articles/175954706_265870718596089_1334983118688045481_n_33B0zWr.jpg', 1, '2021-12-11 23:19:48.505502', '2021-12-11 23:39:15.596791', 1),
(4, 'Scorpion porta celular', '<p>Funko sujetador de celular</p>', 'articles/189074650_2382815655196324_6613872856808177210_n.jpg', 1, '2021-12-11 23:41:29.715798', '2021-12-11 23:41:36.646760', 1),
(5, 'Logos PS', '<p>Mate color negro con los logos cuadrado redondo circulo triangulo</p>', 'articles/WhatsApp_Image_2021-06-27_at_11.40.30.jpeg', 1, '2021-12-12 11:35:05.786749', '2021-12-12 11:35:46.266065', 1),
(6, 'Gaspar', '<p>Personaje de The Simpson</p>', 'articles/Gaspar_1.webp', 1, '2021-12-12 21:34:26.052789', '2021-12-12 21:34:26.052789', 1),
(7, 'Garfield', '<p>Gato naranja personaje animado</p>', 'articles/Garfield_Mate1.webp', 1, '2021-12-12 21:38:04.972665', '2021-12-12 21:38:29.220107', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_article_categories`
--

CREATE TABLE `blog_article_categories` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog_article_categories`
--

INSERT INTO `blog_article_categories` (`id`, `article_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Varios', 'Articulos en general', '2021-12-11 23:08:03.124851'),
(2, 'Mates', 'Mates personalido hechos en material PLA y polimero', '2021-12-12 11:16:46.616488');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-11 23:08:03.139840', '1', 'Varios', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-12-11 23:08:13.559077', '1', 'Lampara', 1, '[{\"added\": {}}]', 9, 1),
(3, '2021-12-11 23:14:28.727043', '2', 'Porta espiral', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-12-11 23:14:41.177842', '2', 'Porta espiral', 2, '[{\"changed\": {\"fields\": [\"Publicado\", \"Categor\\u00edas\"]}}]', 9, 1),
(5, '2021-12-11 23:19:48.634032', '3', 'Maseta craneo', 1, '[{\"added\": {}}]', 9, 1),
(6, '2021-12-11 23:39:15.653772', '3', 'Maseta craneo', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 9, 1),
(7, '2021-12-11 23:41:29.886625', '4', 'Scorpion porta celular', 1, '[{\"added\": {}}]', 9, 1),
(8, '2021-12-11 23:41:36.667745', '4', 'Scorpion porta celular', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 9, 1),
(9, '2021-12-12 11:14:26.130822', '2', 'Pedro2', 3, '', 4, 1),
(10, '2021-12-12 11:14:26.244071', '3', 'saul', 3, '', 4, 1),
(11, '2021-12-12 11:16:46.659063', '2', 'Mates', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-12-12 11:17:54.615951', '4', 'Pepe', 1, '[{\"added\": {}}]', 4, 1),
(13, '2021-12-12 11:18:59.300373', '4', 'Pepe', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(14, '2021-12-12 11:35:05.822456', '5', 'Logos PS', 1, '[{\"added\": {}}]', 9, 1),
(15, '2021-12-12 11:35:46.287786', '5', 'Logos PS', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 1),
(16, '2021-12-12 21:34:26.101756', '6', 'Gaspar', 1, '[{\"added\": {}}]', 9, 1),
(17, '2021-12-12 21:38:04.989655', '7', 'Garfield', 1, '[{\"added\": {}}]', 9, 1),
(18, '2021-12-12 21:38:21.656856', '7', 'Garfield', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 9, 1),
(19, '2021-12-12 21:38:29.226733', '7', 'Garfield', 2, '[{\"changed\": {\"fields\": [\"Categor\\u00edas\"]}}]', 9, 1),
(20, '2021-12-12 21:57:42.990914', '4', 'Pepe', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(21, '2021-12-12 22:13:22.940197', '1', 'Contacto', 1, '[{\"added\": {}}]', 7, 1),
(22, '2021-12-12 22:14:12.277427', '1', 'Contacto', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 7, 1),
(23, '2021-12-12 22:17:39.304350', '1', 'Contacto', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 7, 1),
(24, '2021-12-12 22:22:34.644741', '1', 'Contacto', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'blog', 'article'),
(8, 'blog', 'category'),
(5, 'contenttypes', 'contenttype'),
(7, 'pages', 'page'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-02 22:16:26.433435'),
(2, 'auth', '0001_initial', '2021-11-02 22:16:28.247790'),
(3, 'admin', '0001_initial', '2021-11-02 22:16:36.905474'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-02 22:16:39.532625'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-02 22:16:39.619439'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-02 22:16:40.437988'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-02 22:16:41.949164'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-02 22:16:42.078432'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-02 22:16:42.152866'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-02 22:16:43.419977'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-02 22:16:43.486730'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-02 22:16:43.616745'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-02 22:16:44.423971'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-02 22:16:44.654672'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-02 22:16:44.855336'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-02 22:16:44.942895'),
(17, 'blog', '0001_initial', '2021-11-02 22:16:45.819077'),
(18, 'pages', '0001_initial', '2021-11-02 22:16:50.574394'),
(19, 'pages', '0002_auto_20210831_0727', '2021-11-02 22:16:51.300046'),
(20, 'pages', '0003_auto_20210907_2119', '2021-11-02 22:16:51.356097'),
(21, 'sessions', '0001_initial', '2021-11-02 22:16:51.631941');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3wdomrds6u545cfhzk94grxrmy3ve9r5', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-12-22 14:54:57.971762'),
('c7apcclvihjc0mwyd7692ctie971tit2', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-11-16 22:46:38.677512'),
('dwyiysm51ltsz4ugxhuxe6cs1yvjbwi6', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-12-26 11:30:22.850894'),
('gsr8zcro83jots63fkke6l0cgqv1hixw', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-12-25 22:51:20.032230'),
('nk4o31raqbqbj8u0uavri0p9e54vmzop', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-12-11 14:46:47.895314'),
('o5izra9fwa1w1gtr0i6ewcybn9kht9aj', 'MjY5ZDJhMDFlOTAyY2Y1ZTJjOTYyYTcwMmIxZmU1ODk3ODQzYWRkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFjNzhkNzkxMDk0NDRhNjkxZDVmZTk0MzNlYTE2OTA3ZjQ5MTUxIn0=', '2021-12-26 21:58:41.855881');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(150) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `slug`, `visible`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Contacto', '<ul>\r\n	<li>django@django.com</li>\r\n	<li>django@email.com</li>\r\n</ul>', 'contacto', 1, '2021-12-12 22:13:22.936198', '2021-12-12 22:22:34.606159', 3);

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
-- Indices de la tabla `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_article_user_id_5beb0cc1_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `blog_article_categories`
--
ALTER TABLE `blog_article_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_article_categories_article_id_category_id_386f3009_uniq` (`article_id`,`category_id`),
  ADD KEY `blog_article_categories_category_id_1ce80de0_fk_blog_category_id` (`category_id`);

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `blog_article_categories`
--
ALTER TABLE `blog_article_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Filtros para la tabla `blog_article`
--
ALTER TABLE `blog_article`
  ADD CONSTRAINT `blog_article_user_id_5beb0cc1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `blog_article_categories`
--
ALTER TABLE `blog_article_categories`
  ADD CONSTRAINT `blog_article_categories_article_id_a381b6b5_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  ADD CONSTRAINT `blog_article_categories_category_id_1ce80de0_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
