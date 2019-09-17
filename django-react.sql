-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2019 at 07:31 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.1.30-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django-react`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add Token', 13, 'add_token'),
(50, 'Can change Token', 13, 'change_token'),
(51, 'Can delete Token', 13, 'delete_token'),
(52, 'Can view Token', 13, 'view_token'),
(53, 'Can add item', 14, 'add_item'),
(54, 'Can change item', 14, 'change_item'),
(55, 'Can delete item', 14, 'delete_item'),
(56, 'Can view item', 14, 'view_item'),
(57, 'Can add item variation', 15, 'add_itemvariation'),
(58, 'Can change item variation', 15, 'change_itemvariation'),
(59, 'Can delete item variation', 15, 'delete_itemvariation'),
(60, 'Can view item variation', 15, 'view_itemvariation'),
(61, 'Can add variation', 16, 'add_variation'),
(62, 'Can change variation', 16, 'change_variation'),
(63, 'Can delete variation', 16, 'delete_variation'),
(64, 'Can view variation', 16, 'view_variation'),
(65, 'Can add order item', 17, 'add_orderitem'),
(66, 'Can change order item', 17, 'change_orderitem'),
(67, 'Can delete order item', 17, 'delete_orderitem'),
(68, 'Can view order item', 17, 'view_orderitem'),
(69, 'Can add order', 18, 'add_order'),
(70, 'Can change order', 18, 'change_order'),
(71, 'Can delete order', 18, 'delete_order'),
(72, 'Can view order', 18, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$w5EcrFNQwAIp$xN4iZaC+uqfS1EZ3KnQTXXrwjkxcBdQRkGW/4aF6TA4=', '2019-09-16 18:57:22.510594', 1, 'gits', '', '', 'ggitau5622@gmail.com', 1, 1, '2019-09-16 11:56:19.102830');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-09-16 12:11:56.298831', '1', 'Air max 720 blue', 1, '[{\"added\": {}}]', 14, 1),
(2, '2019-09-16 12:18:30.774379', '2', 'Nike Airforce', 1, '[{\"added\": {}}]', 14, 1),
(3, '2019-09-16 12:55:09.658103', '3', 'Nike Glass', 1, '[{\"added\": {}}]', 14, 1),
(4, '2019-09-16 12:56:54.785360', '4', 'Nike Air Zoom Pegasus 35', 1, '[{\"added\": {}}]', 14, 1),
(5, '2019-09-16 12:57:58.589654', '5', 'Nike Air VaporMax Flyknit', 1, '[{\"added\": {}}]', 14, 1),
(6, '2019-09-16 12:58:56.966067', '6', 'Nike Flex Experience RN 7', 1, '[{\"added\": {}}]', 14, 1),
(7, '2019-09-16 16:26:04.096491', '3', 'Nike Glass', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(8, '2019-09-16 17:05:52.216966', '3', 'Nike Glass', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(9, '2019-09-16 17:26:00.887317', '1', '1 of Nike Airforce', 1, '[{\"added\": {}}]', 17, 1),
(10, '2019-09-16 17:26:24.884449', '1', 'gits', 1, '[{\"added\": {}}]', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'authtoken', 'token'),
(5, 'contenttypes', 'contenttype'),
(14, 'products', 'item'),
(15, 'products', 'itemvariation'),
(18, 'products', 'order'),
(17, 'products', 'orderitem'),
(16, 'products', 'variation'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-09-16 11:05:14.882353'),
(2, 'auth', '0001_initial', '2019-09-16 11:05:18.565565'),
(3, 'account', '0001_initial', '2019-09-16 11:05:28.733680'),
(4, 'account', '0002_email_max_length', '2019-09-16 11:05:30.964218'),
(5, 'admin', '0001_initial', '2019-09-16 11:05:31.523019'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-09-16 11:05:33.440279'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-16 11:05:33.534050'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-09-16 11:05:34.931460'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-09-16 11:05:35.065399'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-09-16 11:05:35.232873'),
(11, 'auth', '0004_alter_user_username_opts', '2019-09-16 11:05:35.312605'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-09-16 11:05:36.109864'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-09-16 11:05:36.156059'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-09-16 11:05:36.239154'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-09-16 11:05:36.498946'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-09-16 11:05:36.668982'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-09-16 11:05:36.824979'),
(18, 'auth', '0011_update_proxy_permissions', '2019-09-16 11:05:36.908973'),
(19, 'authtoken', '0001_initial', '2019-09-16 11:05:37.424217'),
(20, 'authtoken', '0002_auto_20160226_1747', '2019-09-16 11:05:39.597717'),
(21, 'sessions', '0001_initial', '2019-09-16 11:05:40.094646'),
(22, 'sites', '0001_initial', '2019-09-16 11:05:40.878368'),
(23, 'sites', '0002_alter_domain_unique', '2019-09-16 11:05:41.236677'),
(24, 'socialaccount', '0001_initial', '2019-09-16 11:05:43.787772'),
(25, 'socialaccount', '0002_token_max_lengths', '2019-09-16 11:05:49.705140'),
(26, 'socialaccount', '0003_extra_data_default_dict', '2019-09-16 11:05:49.781732'),
(27, 'products', '0001_initial', '2019-09-16 11:06:19.582662'),
(28, 'products', '0002_auto_20190916_1713', '2019-09-16 17:14:09.156364');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('65pgx5xjh5ss0ksjarlvtj7rnpw4wck3', 'NmYwOTAwNWI1Njk0MTBkYjkyNDRmMjg5MjI4NmJkNDY2MTg0ZmFjYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZTFkODk4Y2Q3OWZhYTg5MTM1MjA0MTAyYjc5OTkzODcyN2M1YjI0In0=', '2019-09-30 18:57:22.566790'),
('7bt6fx5tkz0ftwu0z8ncp4uhvi6g6jpq', 'NmYwOTAwNWI1Njk0MTBkYjkyNDRmMjg5MjI4NmJkNDY2MTg0ZmFjYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZTFkODk4Y2Q3OWZhYTg5MTM1MjA0MTAyYjc5OTkzODcyN2M1YjI0In0=', '2019-09-30 12:09:46.094314');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `products_item`
--

CREATE TABLE `products_item` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_item`
--

INSERT INTO `products_item` (`id`, `title`, `price`, `discount_price`, `slug`, `description`, `image`) VALUES
(1, 'Air max 720 blue', 1000, NULL, '1', 'Noma', '1.jpeg'),
(2, 'Nike Airforce', 1000, NULL, '2', 'Nike', '2.jpg'),
(3, 'Nike Glass', 500, NULL, '3', 'Nike Air Zoom shoes have thin cushioning', '5.jpg'),
(4, 'Nike Air Zoom Pegasus 35', 800, NULL, '4', 'Several wearers admired the overall design of the shoe; they said it is very comfortable.', '6.jpg'),
(5, 'Nike Air VaporMax Flyknit', 1200, NULL, '5', 'This shoe felt suitably lightweight for daily use, noted a number of runners.', '7.jpg'),
(6, 'Nike Flex Experience RN 7', 1500, NULL, '6', 'The design of the Nike Flex Experience RN 7 looked appealing, according to many of those who have purchased it.', '8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_order`
--

CREATE TABLE `products_order` (
  `id` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_order`
--

INSERT INTO `products_order` (`id`, `start_date`, `ordered_date`, `ordered`, `user_id`) VALUES
(1, '2019-09-16 17:26:24.776306', '2019-09-16 17:26:11.000000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_orderitem`
--

CREATE TABLE `products_orderitem` (
  `id` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_orderitem`
--

INSERT INTO `products_orderitem` (`id`, `ordered`, `quantity`, `item_id`, `user_id`) VALUES
(1, 1, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_order_items`
--

CREATE TABLE `products_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_order_items`
--

INSERT INTO `products_order_items` (`id`, `order_id`, `orderitem_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `products_item`
--
ALTER TABLE `products_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_item_slug_f9228702` (`slug`);

--
-- Indexes for table `products_order`
--
ALTER TABLE `products_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_order_user_id_dfb540d8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `products_orderitem`
--
ALTER TABLE `products_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_orderitem_item_id_ccae7cf7_fk_products_item_id` (`item_id`),
  ADD KEY `products_orderitem_user_id_95e86fc2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `products_order_items`
--
ALTER TABLE `products_order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_order_items_order_id_orderitem_id_e0c44fff_uniq` (`order_id`,`orderitem_id`),
  ADD KEY `products_order_items_orderitem_id_85e108d2_fk_products_` (`orderitem_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products_item`
--
ALTER TABLE `products_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products_order`
--
ALTER TABLE `products_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products_orderitem`
--
ALTER TABLE `products_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products_order_items`
--
ALTER TABLE `products_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_order`
--
ALTER TABLE `products_order`
  ADD CONSTRAINT `products_order_user_id_dfb540d8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_orderitem`
--
ALTER TABLE `products_orderitem`
  ADD CONSTRAINT `products_orderitem_item_id_ccae7cf7_fk_products_item_id` FOREIGN KEY (`item_id`) REFERENCES `products_item` (`id`),
  ADD CONSTRAINT `products_orderitem_user_id_95e86fc2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_order_items`
--
ALTER TABLE `products_order_items`
  ADD CONSTRAINT `products_order_items_order_id_9e8fcfa0_fk_products_order_id` FOREIGN KEY (`order_id`) REFERENCES `products_order` (`id`),
  ADD CONSTRAINT `products_order_items_orderitem_id_85e108d2_fk_products_` FOREIGN KEY (`orderitem_id`) REFERENCES `products_orderitem` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
