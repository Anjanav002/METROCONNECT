-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 10:13 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metro`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

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
(25, 'Can add customer_reg', 7, 'add_customer_reg'),
(26, 'Can change customer_reg', 7, 'change_customer_reg'),
(27, 'Can delete customer_reg', 7, 'delete_customer_reg'),
(28, 'Can view customer_reg', 7, 'view_customer_reg'),
(29, 'Can add staff_reg', 8, 'add_staff_reg'),
(30, 'Can change staff_reg', 8, 'change_staff_reg'),
(31, 'Can delete staff_reg', 8, 'delete_staff_reg'),
(32, 'Can view staff_reg', 8, 'view_staff_reg'),
(33, 'Can add stations', 9, 'add_stations'),
(34, 'Can change stations', 9, 'change_stations'),
(35, 'Can delete stations', 9, 'delete_stations'),
(36, 'Can view stations', 9, 'view_stations'),
(37, 'Can add complaints', 10, 'add_complaints'),
(38, 'Can change complaints', 10, 'change_complaints'),
(39, 'Can delete complaints', 10, 'delete_complaints'),
(40, 'Can view complaints', 10, 'view_complaints'),
(41, 'Can add offers', 11, 'add_offers'),
(42, 'Can change offers', 11, 'change_offers'),
(43, 'Can delete offers', 11, 'delete_offers'),
(44, 'Can view offers', 11, 'view_offers'),
(45, 'Can add parkings', 12, 'add_parkings'),
(46, 'Can change parkings', 12, 'change_parkings'),
(47, 'Can delete parkings', 12, 'delete_parkings'),
(48, 'Can view parkings', 12, 'view_parkings'),
(49, 'Can add routes', 13, 'add_routes'),
(50, 'Can change routes', 13, 'change_routes'),
(51, 'Can delete routes', 13, 'delete_routes'),
(52, 'Can view routes', 13, 'view_routes'),
(53, 'Can add ticket', 14, 'add_ticket'),
(54, 'Can change ticket', 14, 'change_ticket'),
(55, 'Can delete ticket', 14, 'delete_ticket'),
(56, 'Can view ticket', 14, 'view_ticket'),
(57, 'Can add trains', 15, 'add_trains'),
(58, 'Can change trains', 15, 'change_trains'),
(59, 'Can delete trains', 15, 'delete_trains'),
(60, 'Can view trains', 15, 'view_trains'),
(61, 'Can add userpayment', 16, 'add_userpayment'),
(62, 'Can change userpayment', 16, 'change_userpayment'),
(63, 'Can delete userpayment', 16, 'delete_userpayment'),
(64, 'Can view userpayment', 16, 'view_userpayment'),
(65, 'Can add userrequest', 17, 'add_userrequest'),
(66, 'Can change userrequest', 17, 'change_userrequest'),
(67, 'Can delete userrequest', 17, 'delete_userrequest'),
(68, 'Can view userrequest', 17, 'view_userrequest'),
(69, 'Can add userslotpayment', 18, 'add_userslotpayment'),
(70, 'Can change userslotpayment', 18, 'change_userslotpayment'),
(71, 'Can delete userslotpayment', 18, 'delete_userslotpayment'),
(72, 'Can view userslotpayment', 18, 'view_userslotpayment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'metroconnect', 'complaints'),
(7, 'metroconnect', 'customer_reg'),
(11, 'metroconnect', 'offers'),
(12, 'metroconnect', 'parkings'),
(13, 'metroconnect', 'routes'),
(8, 'metroconnect', 'staff_reg'),
(9, 'metroconnect', 'stations'),
(14, 'metroconnect', 'ticket'),
(15, 'metroconnect', 'trains'),
(16, 'metroconnect', 'userpayment'),
(17, 'metroconnect', 'userrequest'),
(18, 'metroconnect', 'userslotpayment'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-31 05:00:39.370538'),
(2, 'auth', '0001_initial', '2022-08-31 05:00:40.905425'),
(3, 'admin', '0001_initial', '2022-08-31 05:00:41.391441'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-31 05:00:41.410302'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-31 05:00:41.429600'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-31 05:00:41.632466'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-31 05:00:41.755424'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-31 05:00:41.885795'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-31 05:00:41.901432'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-31 05:00:42.006203'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-31 05:00:42.015434'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-31 05:00:42.030454'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-31 05:00:42.291493'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-31 05:00:42.438810'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-31 05:00:42.576517'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-31 05:00:42.592107'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-31 05:00:42.716491'),
(18, 'metroconnect', '0001_initial', '2022-08-31 05:00:42.918994'),
(19, 'metroconnect', '0002_complaints_offers_parkings_routes_ticket_trains_userpayment_userrequest_userslotpayment', '2022-08-31 05:00:43.590460'),
(20, 'sessions', '0001_initial', '2022-08-31 05:00:43.718394');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('148khazaqxvwpsbhrgtyufv3zgck2nj8', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNJACTAF5GWmKFmZA-m8xNxUoHBBUWJeYhlIIjUXYgJEBMWIYpAmEyAN1VRclJoKEoZpAfENjYxR9ZQkpqWB5MB0LQAyiTa8:1oyTou:m017gDJCm07BGDdYzNR1PGVsnJJMzbmz-uLWPAFDVrs', '2022-12-09 08:12:24.564951'),
('lplp7p59ozxjnp38r6uolaiateuxjslr', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCaVaAJQEEGM:1pH9Yd:uPxONjLVxkEM7DB6nwyD7DDswsTV52Jil86naZrroj8', '2023-01-29 20:24:47.688974'),
('rlaxsias822y25pv1n403ltw8nd875ky', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCaVaAJQEEGM:1pTyg0:Pe1MwgAOp86hFfYYSVc9TZuOLyHwzd5TorKZdp5qRuU', '2023-03-06 05:25:24.451208'),
('s9o78yoxtcu6rmmvew6lkpi5clmnkdjt', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCRA3M0XJyhxI5yXmpgLFC4oS8xLLQBKpuRAjICIoZhSDNJkAaaim4qLUVJAwTAuIb2hkjKqnJDEtDSQHpmsBZWU3Bg:1oiqik:3HffB9BNjg_P6XXPct5jXUuLNLTO4_vapzIhRNJGZKA', '2022-10-27 05:25:26.322674'),
('ti1yrsunulhkl6e50xw3yrw10koo8j0v', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCRA3M0XJyghI5yXmpgLFixIrE8HiqbkQE8ACKCYUg7QYAmmoFp_U1LxEkDhMSw5IAFVLSWJaGlAGQtcCALHlNho:1oTcdK:lh0ZHx-aCJDcjoRmafPE09ZTAv4Llnggm7KwuXjFf9I', '2022-09-15 05:20:54.149163'),
('u2k73dwwm1nemj3fgrepzc2cn36cjzx3', '.eJyrVirNTFGyMtZRKs1LzE1VslLKSCzKVAJyU3MTM3OgfGMjh3QQVy85PxckV5xaBJRJTMnNzINyU1JLIMrBgkiqawEPFSBV:1oYmwF:a8d93BdVf_3TRbubOQ23EuTgylvjHBApdim170-m82U', '2022-09-29 11:21:47.425350'),
('va65qa8cd8l1bcdckbkdxwybomqx2hhl', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCaVaAJQEEGM:1pTwUm:FIeZ7HqAwlWuKLt6izZ7cVMVCvYmheOSDG1lOaWhUUY', '2023-03-06 03:05:40.234448'),
('vwr6p5te76rpgjab2ybmprdj3ykl6tak', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCRA3M0XJyhxI5yXmpgLFC4oS8xLLQBKpuRAjICIoZhSDNJkAaaim4qLUVJAwTAuIb2hkjKqnJDEtDSQHpmsBZWU3Bg:1onCX4:9etuvvQ1Xvh-sfKHs1oab5S6Vf09-L-gmIqTzxvAfh4', '2022-11-08 05:31:22.128308'),
('xvtvvt476hf68wnk8y8p3zzuhllzqig2', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCaVaAJQEEGM:1ohmTm:SZTnEudLgQRZsYSbHV_yHukUDISe1GYemfm4itcT-zo', '2022-10-24 06:41:34.479859');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_complaints`
--

CREATE TABLE IF NOT EXISTS `metroconnect_complaints` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(150) NOT NULL,
  `complainsubject` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `metroconnect_complaints`
--

INSERT INTO `metroconnect_complaints` (`id`, `customerid`, `complainsubject`, `description`) VALUES
(1, 'Pranav', 'unavailable parking slot', 'parking slot is not available in all the time '),
(2, 'Sreeram', 'Ticket issue', 'Didn''t get the ticket');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_customer_reg`
--

CREATE TABLE IF NOT EXISTS `metroconnect_customer_reg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phonenumber` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `metroconnect_customer_reg`
--

INSERT INTO `metroconnect_customer_reg` (`id`, `name`, `address`, `email`, `phonenumber`, `gender`, `password`) VALUES
(1, 'Sree lakshmi', 'Gandhi nagar,palarivattom p.o ,kochi', 'sree@gmail.com', '9566323432', 'Female', 'sree@123'),
(2, 'rayan', 'sm street calicut', 'rayan@gmail.com', '7454768900', 'Male', 'rayan'),
(3, 'hari', 'sk street \r\nkaloor\r\nkochi', 'hari32@gmail.com', '8765473414', 'Male', 'hari'),
(4, 'sreeram', 'sree nilayam', 'sreeram@gmail.com', '90786543235', 'Male', 'sreeram'),
(5, 'Aswathi', 'andhur kunnath house\r\nkaloor', 'Aswathi@gmail.com', '8590003664', 'Female', 'aswathi'),
(6, 'rinu', 'rk house palarivattom', 'rinu3@gmail.com', '6754228866', 'Female', 'rinu'),
(7, 'pranav', 'sree nilayam house kaloor', 'pranav@gmail.com', '9076453378', 'Female', 'pranav');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_offers`
--

CREATE TABLE IF NOT EXISTS `metroconnect_offers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(150) NOT NULL,
  `offer` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `metroconnect_offers`
--

INSERT INTO `metroconnect_offers` (`id`, `eventname`, `offer`) VALUES
(2, 'Onam ', '60%'),
(4, 'Christmas', '10%');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_parkings`
--

CREATE TABLE IF NOT EXISTS `metroconnect_parkings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stationname` varchar(150) NOT NULL,
  `slot` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `metroconnect_parkings`
--

INSERT INTO `metroconnect_parkings` (`id`, `stationname`, `slot`, `rate`) VALUES
(2, 'kaloor', '2', '60'),
(3, 'vytla', '1', '20'),
(4, 'Palarivattom', '3', '20'),
(5, 'kaloor', '1', '20'),
(6, 'vytla', '1', '20'),
(7, 'kaloor', '1', '15'),
(8, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_routes`
--

CREATE TABLE IF NOT EXISTS `metroconnect_routes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trainname` varchar(150) NOT NULL,
  `startstation` varchar(150) NOT NULL,
  `endstation` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `metroconnect_routes`
--

INSERT INTO `metroconnect_routes` (`id`, `trainname`, `startstation`, `endstation`, `distance`, `rate`) VALUES
(7, 'm11-001', 'JLN stadium', 'Aluva ', '40', '20'),
(8, 'm12-002', 'kaloor', 'Petta', '35', '25'),
(9, 'm14-004', 'kaloor', 'edappally', '5', '20'),
(10, 'm13-003', 'Edappally', 'Aluva ', '15', '60'),
(11, 'm15-005', 'North Enamkulam', 'South Ernamkulam', '25 ', '45');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_staff_reg`
--

CREATE TABLE IF NOT EXISTS `metroconnect_staff_reg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phonenumber` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `metroconnect_staff_reg`
--

INSERT INTO `metroconnect_staff_reg` (`id`, `name`, `address`, `email`, `phonenumber`, `gender`, `designation`, `password`, `image`) VALUES
(1, 'Leena', 'Edathodi house paloor', 'leena@gmail.com', '9046773414', 'Female', 'HR', 'leenasunil', 'enthusiastic-joyful-surprised-woman-introduce-incredible-offer-pointing-finger-left-copy-space-smiling-joyfully-impressed-look-camera-touc_Zriszqb.jpg'),
(2, 'preetha', 'pk house ', 'preetha@gmail.com', '9043226511', 'Female', 'Aluva', 'preetha', 'img5_wP5oNdx.jpg'),
(3, 'Athira', 'ak house', 'athira@gmail.com', '8765473414', 'Female', 'HR', 'admin', 'img5_kUsmBiA.jpg'),
(4, 'sree', 'pk house ', 'sree123@gmail.com', '9078657744', 'Female', 'HR executive', 'sree123', 'img5_yWTnJ3E.jpg'),
(5, 'sreya', 'sreya nivas', 'sreya@gmail.com', '7166323432', 'Female', 'HR executive', 'sreya', '22aa75ef-f529-477e-adf0-ac56d307cfc4_hu7TgBm.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_stations`
--

CREATE TABLE IF NOT EXISTS `metroconnect_stations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stationname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `metroconnect_stations`
--

INSERT INTO `metroconnect_stations` (`id`, `stationname`) VALUES
(1, 'palarivattom'),
(2, 'kaloor'),
(4, 'vytla'),
(5, 'kakkanad'),
(6, 'kaloor'),
(7, 'palarivattom'),
(8, 'aluva'),
(9, 'JLN stadium'),
(10, 'kaloor'),
(11, 'palarivattom'),
(12, 'Edappally'),
(13, 'Aluva'),
(14, 'Petta');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_ticket`
--

CREATE TABLE IF NOT EXISTS `metroconnect_ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(150) NOT NULL,
  `startstation` varchar(150) NOT NULL,
  `endstation` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  `trainno` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `metroconnect_ticket`
--

INSERT INTO `metroconnect_ticket` (`id`, `customerid`, `startstation`, `endstation`, `date`, `distance`, `rate`, `trainno`, `sid`, `status`) VALUES
(1, 'Sree lakshmi', 'palarivattom', 'kaloor', '2022-09-01', '2km', '20', '1654', 'Leena', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_trains`
--

CREATE TABLE IF NOT EXISTS `metroconnect_trains` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trainno` varchar(150) NOT NULL,
  `trainname` varchar(150) NOT NULL,
  `traintime` varchar(150) NOT NULL,
  `stationname` varchar(150) NOT NULL,
  `trainimage` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `metroconnect_trains`
--

INSERT INTO `metroconnect_trains` (`id`, `trainno`, `trainname`, `traintime`, `stationname`, `trainimage`) VALUES
(6, 'M11', 'm11-001', '2022-10-10T16:53', 'JLN stadium', 'kochi-metro_BwQ6i8n.jpg'),
(7, 'M12', 'm12-002', '2022-10-11T17:55', 'kaloor', 'img6_LV9NhBx.webp'),
(8, 'M13', 'm13-003', '2022-10-13T09:54', 'JLN stadium', 'metroo_cyBlqec.jpg'),
(9, 'M14', 'm14-004', '2022-10-14T00:58', 'kaloor', 'kochi-metro_pYDCoXG.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_userpayment`
--

CREATE TABLE IF NOT EXISTS `metroconnect_userpayment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(150) NOT NULL,
  `startstation` varchar(150) NOT NULL,
  `endstation` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  `trainno` varchar(150) NOT NULL,
  `cardname` varchar(150) NOT NULL,
  `cardnumber` varchar(150) NOT NULL,
  `cardtype` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `metroconnect_userpayment`
--

INSERT INTO `metroconnect_userpayment` (`id`, `customerid`, `startstation`, `endstation`, `date`, `rate`, `trainno`, `cardname`, `cardnumber`, `cardtype`, `sid`) VALUES
(1, 'pranav', 'kaloor', 'Petta', '2022-10-10', '25', 'm12-002', 'Pranav k', '985643561243', 'Credit', ''),
(2, 'pranav', 'JLN stadium', 'Aluva ', '2022-10-13', '20', 'm11-001', 'Pranav k', '8976554346777', 'Credit', ''),
(3, 'pranav', 'JLN stadium', 'Aluva ', '2022-10-14', '20', 'm11-001', 'Pranav k', '12354367890', 'Credit', ''),
(4, 'pranav', 'JLN stadium', 'Aluva ', '2022-10-08', '20', 'm11-001', 'Pranav k', '234', 'Debit', ''),
(5, 'pranav', 'JLN stadium', 'Aluva ', '2022-11-10', '20', 'm11-001', 'Pranav k', '2344567777777', 'Credit', ''),
(6, 'pranav', 'JLN stadium', 'Aluva ', '2022-11-25', '20', 'm11-001', 'Pranav k', '3234546788', 'Credit', '');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_userrequest`
--

CREATE TABLE IF NOT EXISTS `metroconnect_userrequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(150) NOT NULL,
  `startstation` varchar(150) NOT NULL,
  `endstation` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `metroconnect_userrequest`
--

INSERT INTO `metroconnect_userrequest` (`id`, `customerid`, `startstation`, `endstation`, `date`) VALUES
(1, 'Sree lakshmi', 'palarivattom', 'kaloor', '2022-09-01'),
(2, 'pranav', 'palarivattom', 'palarivattom', '2022-10-11'),
(3, 'pranav', 'palarivattom', 'palarivattom', '2022-10-16'),
(4, 'pranav', 'kaloor', 'palarivattom', '2022-10-18'),
(5, 'pranav', 'palarivattom', 'aluva', '2022-10-10'),
(6, 'pranav', 'palarivattom', 'palarivattom', ''),
(7, 'pranav', 'palarivattom', 'palarivattom', '2022-10-10'),
(8, 'pranav', 'palarivattom', 'palarivattom', '');

-- --------------------------------------------------------

--
-- Table structure for table `metroconnect_userslotpayment`
--

CREATE TABLE IF NOT EXISTS `metroconnect_userslotpayment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(150) NOT NULL,
  `startstation` varchar(150) NOT NULL,
  `endstation` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  `cardname` varchar(150) NOT NULL,
  `cardnumber` varchar(150) NOT NULL,
  `cardtype` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `metroconnect_userslotpayment`
--

INSERT INTO `metroconnect_userslotpayment` (`id`, `customerid`, `startstation`, `endstation`, `date`, `rate`, `cardname`, `cardnumber`, `cardtype`) VALUES
(1, 'sreeram', 'Palarivattom', '1', '2022-09-16', '20', 'sreeram', '90786755125444', 'Debit'),
(2, 'pranav', 'Palarivattom', '-1', '2022-10-10', '20', 'Pranav k', '23556777888', 'Credit'),
(3, 'sreeram', 'Palarivattom', '2', '2022-10-13', '20', 'sreeram', '76453212907654', 'Debit'),
(4, 'pranav', 'Palarivattom', '2', '2022-11-25', '20', 'Pranav k', '3454321678', 'Credit');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
