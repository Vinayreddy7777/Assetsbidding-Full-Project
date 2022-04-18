-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 06:42 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assets`
--
CREATE DATABASE IF NOT EXISTS `assets` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `assets`;

-- --------------------------------------------------------

--
-- Table structure for table `assets_details`
--

CREATE TABLE IF NOT EXISTS `assets_details` (
  `asset_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_category` varchar(100) DEFAULT NULL,
  `asset_sub_category` varchar(100) DEFAULT NULL,
  `asset_name` varchar(100) NOT NULL,
  `asset_image` varchar(100) DEFAULT NULL,
  `asset_bank` varchar(100) NOT NULL,
  `asset_desc` longtext NOT NULL,
  `asset_price` int(11) NOT NULL,
  `posted_date` datetime(6) NOT NULL,
  PRIMARY KEY (`asset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `assets_details`
--

INSERT INTO `assets_details` (`asset_id`, `asset_category`, `asset_sub_category`, `asset_name`, `asset_image`, `asset_bank`, `asset_desc`, `asset_price`, `posted_date`) VALUES
(21, 'Vehicle', '4 Wheeler', 'Alto Lxi', 'images/shop_01_vHS9w0t.jpg', 'Punjab National Bank', 'Alto lxi for sale 2010 model', 250000, '2022-04-03 11:26:11.224858'),
(22, 'Vehicle', '4 Wheeler', 'Ford Car', 'images/shop_06.jpg', 'Union Bank of India', 'Ford Car For Sale with neat Condition.', 440000, '2022-04-03 11:26:11.224858'),
(24, 'Property', 'House', 'Independent House ', 'images/shop_02.jpg', 'Axis Bank', 'Independent House For Bidding, Best Offer for Middle class families.', 5600000, '2022-04-03 11:56:39.658102'),
(25, 'Vehicle', '4 Wheeler', 'Maruti 800', 'images/maxresdefault.jpg', 'ICICI Bank', 'Maruti 800 2004 model with neat condition for bidding, nice offer.', 48000, '2022-04-04 06:02:38.202799'),
(26, 'Vehicle', '4 Wheeler', 'Piaggo', 'images/mini_elephant.jpg', 'HDFC Bank', 'Piaggo vehicle for sale.', 325000, '2022-04-05 05:28:27.407719'),
(27, 'Vehicle', '4 Wheeler', 'lorry(Ashok Leyland)', 'images/th.jfif', 'Bank of Maharastra', 'Lorry in Good Condition & neatly maintained.', 940000, '2022-04-05 05:28:27.407719'),
(28, 'Vehicle', '4 Wheeler', 'Van(Eicher)', 'images/th_1.jfif', 'ICICI Bank', 'Van with loan Available.', 680000, '2022-04-05 05:28:27.407719');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(25, 'Can add assets model', 7, 'add_assetsmodel'),
(26, 'Can change assets model', 7, 'change_assetsmodel'),
(27, 'Can delete assets model', 7, 'delete_assetsmodel'),
(28, 'Can view assets model', 7, 'view_assetsmodel'),
(29, 'Can add user register model', 8, 'add_userregistermodel'),
(30, 'Can change user register model', 8, 'change_userregistermodel'),
(31, 'Can delete user register model', 8, 'delete_userregistermodel'),
(32, 'Can view user register model', 8, 'view_userregistermodel'),
(33, 'Can add bidding', 9, 'add_bidding'),
(34, 'Can change bidding', 9, 'change_bidding'),
(35, 'Can delete bidding', 9, 'delete_bidding'),
(36, 'Can view bidding', 9, 'view_bidding');

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
-- Table structure for table `bid_details`
--

CREATE TABLE IF NOT EXISTS `bid_details` (
  `bid_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bid_price` int(11) NOT NULL,
  `bid_date` date NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`bid_id`),
  KEY `bid_details_user_id_bd1ccdaf_fk_user_details_user_id` (`user_id`),
  KEY `bid_details_asset_id_88423382_fk_assets_details_asset_id` (`asset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `bid_details`
--

INSERT INTO `bid_details` (`bid_id`, `user_id`, `bid_price`, `bid_date`, `status`, `asset_id`) VALUES
(26, 12, 225000, '2022-04-04', 'Accepted', 21),
(27, 11, 240000, '2022-04-04', 'Accepted', 21),
(28, 3, 244000, '2022-04-04', 'Accepted', 21),
(29, 10, 5200000, '2022-04-05', 'pending', 24);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'assetsmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'userapp', 'bidding'),
(8, 'userapp', 'userregistermodel');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'adminapp', '0001_initial', '2022-02-05 08:01:33.265732'),
(2, 'adminapp', '0002_alter_assetsmodel_posted_date', '2022-02-05 08:01:33.282498'),
(3, 'adminapp', '0003_alter_assetsmodel_posted_date', '2022-02-05 08:01:33.288490'),
(4, 'contenttypes', '0001_initial', '2022-02-05 10:48:47.582387'),
(5, 'auth', '0001_initial', '2022-02-05 10:48:48.159380'),
(6, 'admin', '0001_initial', '2022-02-05 10:48:48.285294'),
(7, 'admin', '0002_logentry_remove_auto_add', '2022-02-05 10:48:48.298223'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-05 10:48:48.321991'),
(9, 'adminapp', '0004_alter_assetsmodel_posted_date', '2022-02-05 10:48:48.329284'),
(10, 'contenttypes', '0002_remove_content_type_name', '2022-02-05 10:48:48.446696'),
(11, 'auth', '0002_alter_permission_name_max_length', '2022-02-05 10:48:48.511378'),
(12, 'auth', '0003_alter_user_email_max_length', '2022-02-05 10:48:48.575410'),
(13, 'auth', '0004_alter_user_username_opts', '2022-02-05 10:48:48.586286'),
(14, 'auth', '0005_alter_user_last_login_null', '2022-02-05 10:48:48.649066'),
(15, 'auth', '0006_require_contenttypes_0002', '2022-02-05 10:48:48.660258'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2022-02-05 10:48:48.678309'),
(17, 'auth', '0008_alter_user_username_max_length', '2022-02-05 10:48:48.754331'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2022-02-05 10:48:48.818290'),
(19, 'auth', '0010_alter_group_name_max_length', '2022-02-05 10:48:48.882167'),
(20, 'auth', '0011_update_proxy_permissions', '2022-02-05 10:48:48.895045'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2022-02-05 10:48:48.963387'),
(22, 'sessions', '0001_initial', '2022-02-05 10:48:49.023784'),
(23, 'userapp', '0001_initial', '2022-02-05 11:04:46.891512'),
(24, 'userapp', '0002_bidding', '2022-02-08 13:31:34.906883'),
(25, 'userapp', '0003_bidding_status', '2022-02-09 07:30:30.844324'),
(26, 'userapp', '0004_userregistermodel_status', '2022-02-09 12:33:53.827582'),
(27, 'userapp', '0005_remove_bidding_user_id_bidding_user_register_model', '2022-03-26 06:45:11.281217'),
(28, 'userapp', '0006_alter_bidding_user_register_model', '2022-03-26 07:30:33.890652'),
(29, 'adminapp', '0005_alter_assetsmodel_posted_date', '2022-03-30 07:12:03.825288'),
(30, 'userapp', '0007_remove_bidding_asset_id_bidding_assets_model_and_more', '2022-03-30 07:12:04.080426'),
(31, 'userapp', '0008_alter_userregistermodel_address', '2022-03-30 07:15:25.990654'),
(32, 'userapp', '0009_alter_userregistermodel_mobile', '2022-03-30 07:16:57.376093'),
(33, 'userapp', '0010_userregistermodel_profession_and_more', '2022-03-30 07:55:53.748319'),
(34, 'userapp', '0011_alter_bidding_bid_starting_price', '2022-03-30 10:12:08.801744'),
(35, 'adminapp', '0006_alter_assetsmodel_posted_date', '2022-03-30 10:15:35.541168'),
(36, 'userapp', '0012_alter_bidding_assets_model_and_more', '2022-03-30 10:15:35.549456'),
(37, 'userapp', '0013_rename_assets_model_bidding_asset_and_more', '2022-03-30 11:07:17.414771'),
(38, 'adminapp', '0007_alter_assetsmodel_posted_date', '2022-04-01 14:33:21.621417'),
(39, 'adminapp', '0008_alter_assetsmodel_posted_date', '2022-04-01 14:46:33.850803'),
(40, 'userapp', '0014_remove_userregistermodel_status', '2022-04-03 11:02:56.749910');

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
('47oqaor0rhdz73z3d2hudbjbevzo89i6', 'eyJ1c2VyX2lkIjoxfQ:1nU430:tkPCMEpWqU3Z7Lvim1c8msDuF6FMmS-WGlUDbahsCR4', '2022-03-29 10:04:58.958446'),
('67x0v42a31mi719barh4l6r7b4lete0d', 'eyJ1c2VyX2lkIjoxfQ:1nZWzL:-NfSo2khTqN2EYPuBS1Mg1Tv7GXnrDYiQQAO3zqbQ_Y', '2022-04-13 11:59:47.115438'),
('7qrwaaxue5to8x9xr7lipvna2bstknpt', 'eyJ1c2VyX2lkIjoxMH0:1nbcdA:_HHnw-isk915PKer9YilMTIZeNMWFihzNqkjIuTVPBU', '2022-04-19 06:25:32.575591'),
('ap5vqw0rz7o8pxm74uqrjgwrjpgtkuhs', 'eyJ1c2VyX2lkIjoxfQ:1nOYhe:ZaV_GylQUK6aRMm5Lm0spbdEzMUiYOcRXnVVveXjmss', '2022-03-14 05:36:10.360924'),
('fq5m4jxxlkp15uurmg4ofj7vye1s3b3q', 'eyJ1c2VyX2lkIjoxfQ:1nHkML:Ntc15_IZOznLZMOW2Snznk8vwPUdKlF1VIaM_2rzYeo', '2022-02-23 10:38:01.114323'),
('fu1utupfpm8qnljwvsg3bp73yy9fz48e', 'eyJ1c2VyX2lkIjoxMn0:1nbHev:RV2nrwLTm4uCuSBIDkJ9flo0REPR4i49StTRFMYyuoY', '2022-04-18 08:01:57.417705'),
('ibiylrunxbyjkiispa6foter8n9avyvv', 'eyJ1c2VyX2lkIjoxfQ:1nY4WW:h1No76y4UANzqRBfaGiw-Atrn875CQmh2_cYDc1M62Y', '2022-04-09 11:24:00.692259'),
('v1n0shinq3ija5dlbjbo9f3ov9rev9uv', 'eyJ1c2VyX2lkIjoxfQ:1nL3CH:KDX-dsf2C_xGzSzDUDg1EepZ3iLvq-yS5rg6NDorVhQ', '2022-03-04 13:21:17.285008');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `mobile`, `email`, `profession`, `address`, `password`, `profile_image`) VALUES
(1, 'vinaynath', 4175829635, 'vinayvinnu5132@gmail.com', 'Business', 'hyderabad', 'vinaynath', 'images/about_TyAewh8.jpg'),
(2, 'saddam oddin', 9573941758, 'saddam@gmail.com', 'Investor', 'Hyderabad', 'saddam', 'images/post-2.jpg'),
(3, 'ramesh', 7456321245, 'krg4585@gmail.com', 'Investor', 'LB Nagar', 'ramesh', 'images/about_416gFWG.jpg'),
(8, 'Tarun', 8142536985, 'tarun@gmail.com', 'tarun@gmail.com', 'tarun@gmail.com', 'tarun', 'images/pexels-tarun-reddy-984802.jpg'),
(10, 'sravani', 7142865397, 'sravani@gmail.com', 'Employee', 'Nellore', 'sravani', 'images/pexels-tarun-reddy-984802_U8QnupM.jpg'),
(11, 'srinath', 8275498632, 'karnikasrinath18@gmail.com', 'Business', 'secunderabad', 'srinath', 'images/Screenshot_5.png'),
(12, 'pravalika', 7729851577, 'nannapravalika566@gmail.com', 'Entreprenuer', 'Balapur X Roads', 'pravalika', 'images/banner_img_03.jpg'),
(13, 'Naser Fazal', 8142578692, 'naserfazal@gmail.com', 'Business', 'Malakpet', 'naserfazal', 'images/about_sMokAQh.jpg');

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
-- Constraints for table `bid_details`
--
ALTER TABLE `bid_details`
  ADD CONSTRAINT `bid_details_asset_id_88423382_fk_assets_details_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `assets_details` (`asset_id`),
  ADD CONSTRAINT `bid_details_user_id_bd1ccdaf_fk_user_details_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `entri`
--
CREATE DATABASE IF NOT EXISTS `entri` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `entri`;
--
-- Database: `indiafightscorona`
--
CREATE DATABASE IF NOT EXISTS `indiafightscorona` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `indiafightscorona`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

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
(25, 'Can add hospital registration model', 7, 'add_hospitalregistrationmodel'),
(26, 'Can change hospital registration model', 7, 'change_hospitalregistrationmodel'),
(27, 'Can delete hospital registration model', 7, 'delete_hospitalregistrationmodel'),
(28, 'Can view hospital registration model', 7, 'view_hospitalregistrationmodel'),
(29, 'Can add bed model', 8, 'add_bedmodel'),
(30, 'Can change bed model', 8, 'change_bedmodel'),
(31, 'Can delete bed model', 8, 'delete_bedmodel'),
(32, 'Can view bed model', 8, 'view_bedmodel'),
(33, 'Can add ventilator model', 9, 'add_ventilatormodel'),
(34, 'Can change ventilator model', 9, 'change_ventilatormodel'),
(35, 'Can delete ventilator model', 9, 'delete_ventilatormodel'),
(36, 'Can view ventilator model', 9, 'view_ventilatormodel'),
(37, 'Can add contact model', 10, 'add_contactmodel'),
(38, 'Can change contact model', 10, 'change_contactmodel'),
(39, 'Can delete contact model', 10, 'delete_contactmodel'),
(40, 'Can view contact model', 10, 'view_contactmodel'),
(41, 'Can add o2supplier registration model', 11, 'add_o2supplierregistrationmodel'),
(42, 'Can change o2supplier registration model', 11, 'change_o2supplierregistrationmodel'),
(43, 'Can delete o2supplier registration model', 11, 'delete_o2supplierregistrationmodel'),
(44, 'Can view o2supplier registration model', 11, 'view_o2supplierregistrationmodel'),
(45, 'Can add cylinder model', 12, 'add_cylindermodel'),
(46, 'Can change cylinder model', 12, 'change_cylindermodel'),
(47, 'Can delete cylinder model', 12, 'delete_cylindermodel'),
(48, 'Can view cylinder model', 12, 'view_cylindermodel'),
(49, 'Can add user registration model', 13, 'add_userregistrationmodel'),
(50, 'Can change user registration model', 13, 'change_userregistrationmodel'),
(51, 'Can delete user registration model', 13, 'delete_userregistrationmodel'),
(52, 'Can view user registration model', 13, 'view_userregistrationmodel'),
(53, 'Can add users feedback model', 14, 'add_usersfeedbackmodel'),
(54, 'Can change users feedback model', 14, 'change_usersfeedbackmodel'),
(55, 'Can delete users feedback model', 14, 'delete_usersfeedbackmodel'),
(56, 'Can view users feedback model', 14, 'view_usersfeedbackmodel'),
(57, 'Can add plasma donors model', 15, 'add_plasmadonorsmodel'),
(58, 'Can change plasma donors model', 15, 'change_plasmadonorsmodel'),
(59, 'Can delete plasma donors model', 15, 'delete_plasmadonorsmodel'),
(60, 'Can view plasma donors model', 15, 'view_plasmadonorsmodel'),
(61, 'Can add ration donors model', 16, 'add_rationdonorsmodel'),
(62, 'Can change ration donors model', 16, 'change_rationdonorsmodel'),
(63, 'Can delete ration donors model', 16, 'delete_rationdonorsmodel'),
(64, 'Can view ration donors model', 16, 'view_rationdonorsmodel'),
(65, 'Can add user request model', 17, 'add_userrequestmodel'),
(66, 'Can change user request model', 17, 'change_userrequestmodel'),
(67, 'Can delete user request model', 17, 'delete_userrequestmodel'),
(68, 'Can view user request model', 17, 'view_userrequestmodel');

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
-- Table structure for table `bed_details`
--

CREATE TABLE IF NOT EXISTS `bed_details` (
  `Bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) DEFAULT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `beds_available` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `details` longtext,
  PRIMARY KEY (`Bed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bed_details`
--

INSERT INTO `bed_details` (`Bed_id`, `hospital_id`, `hospital_name`, `location`, `mobile`, `category`, `beds_available`, `cost`, `details`) VALUES
(1, 1, 'Rohini Hospitals', 'Balapur X Roads', 8152436152, 'Three Fuuction Bed', 100, 1800, ''),
(2, 1, 'Radhika Hospitals', 'Mandamallamma', 9152634879, 'Two Cranck Bed(FULL FOWLER BED)', 200, 1900, ''),
(3, 1, 'Kims Hospitals', 'Banjarahills', 8121434546, 'Three Fuuction Bed', 800, 750, 'More beds also Available.'),
(4, 1, 'Kims Hospitals', 'Banjarahills', 8121434546, 'Three Fuuction Bed', 800, 750, 'More beds also Available.'),
(5, 1, 'Kims Hospitals', 'Banjarahills', 8121434546, 'Three Fuuction Bed', 800, 750, 'More beds also Available.'),
(7, 1, 'Image Hospitals', 'Jubliee Hills', 7476529385, 'Two Cranck Bed(FULL FOWLER BED)', 500, 450, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`user_id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Kallem Vinay Reddy', 'vinayvinnu5132@gmail.com', 'Technical Related Issue', 'Your app is not working properly.'),
(2, 'Nanna Pravalika', 'pravalika@gmail.com', 'Make Changes', 'You app has to be updated as fast as possible.'),
(5, 'Tarun Karre', 'tarun@gmail.com', 'Technical Related Issue', 'Your app has crashes.\r\n'),
(7, 'Nagavinay', 'nagavinay@gmail.com', 'Technical Related Issue', 'hvrbkgbrb ggkbg tkjbgg brkjgirgbr gmrdxgfchvjbn');

-- --------------------------------------------------------

--
-- Table structure for table `cylinder_details`
--

CREATE TABLE IF NOT EXISTS `cylinder_details` (
  `cylinder_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) DEFAULT NULL,
  `distributor_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `packages` varchar(100) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `details` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`cylinder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cylinder_details`
--

INSERT INTO `cylinder_details` (`cylinder_id`, `company_name`, `distributor_name`, `location`, `mobile`, `category`, `packages`, `cost`, `details`, `date`) VALUES
(1, 'Bhagawati Oxygen Ltd.', 'Baddam Srinivas Reddy', 'Balapur X Roads', 8121456395, 'Large', '250', 970, 'Availale at anytime.', '2022-03-24 07:51:08.448633'),
(2, 'Surgical Industries', 'Saikiran Reddy', 'Meerpet', 7386768635, 'Small', '1000', 800, 'Available only in corona time.', '2022-03-24 07:51:08.448633');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'hospitalapp', 'bedmodel'),
(7, 'hospitalapp', 'hospitalregistrationmodel'),
(9, 'hospitalapp', 'ventilatormodel'),
(10, 'mainapp', 'contactmodel'),
(12, 'oxygensupplierapp', 'cylindermodel'),
(11, 'oxygensupplierapp', 'o2supplierregistrationmodel'),
(6, 'sessions', 'session'),
(15, 'userapp', 'plasmadonorsmodel'),
(16, 'userapp', 'rationdonorsmodel'),
(13, 'userapp', 'userregistrationmodel'),
(17, 'userapp', 'userrequestmodel'),
(14, 'userapp', 'usersfeedbackmodel');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-24 06:22:35.012203'),
(2, 'auth', '0001_initial', '2022-03-24 06:22:36.478249'),
(3, 'admin', '0001_initial', '2022-03-24 06:22:36.781420'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-24 06:22:36.799428'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-24 06:22:36.817869'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-24 06:22:37.075451'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-24 06:22:37.225430'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-24 06:22:37.352775'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-24 06:22:37.365732'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-24 06:22:37.460182'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-24 06:22:37.478758'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-24 06:22:37.492662'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-24 06:22:37.610248'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-24 06:22:37.727798'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-24 06:22:37.862065'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-24 06:22:37.887019'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-24 06:22:38.007110'),
(18, 'sessions', '0001_initial', '2022-03-24 06:22:38.120158'),
(19, 'mainapp', '0001_initial', '2022-03-24 06:24:50.215992'),
(20, 'hospitalapp', '0001_initial', '2022-03-24 06:25:11.796569'),
(21, 'oxygensupplierapp', '0001_initial', '2022-03-24 06:25:59.659935'),
(22, 'userapp', '0001_initial', '2022-03-24 06:26:26.024617');

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
('ddfm0zh1pzbjhndf8lgw78o39lnpvyvm', 'eyJob3NwaXRhbCI6MX0:1nZRo3:38Phdzzo8mNfdUL_sZvtpO5OcsRp5hxe5HuLVZ5xQFY', '2022-04-13 06:27:47.035559'),
('hrmlw03r5hstp7k7fx4c03klhg8ut83v', 'eyJob3NwaXRhbCI6MSwidXNlcl9pZCI6MX0:1nZauX:x_q6BCHOV-ELqmV0AV-F49y3ozQ2fSMRhZEZOwoKSCQ', '2022-04-13 16:11:05.388100'),
('ixg2x8fo8g6o4c5h1r6liozy4ztq4apt', 'eyJ1c2VyX2lkIjoxLCJzdXBwX2lkIjoxfQ:1nXP1X:V4BUaz9xzB9zsAe3v0EEMc0e4p5fsYKiS07KLbkb17s', '2022-04-07 15:05:15.488915');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_reg_details`
--

CREATE TABLE IF NOT EXISTS `hospital_reg_details` (
  `hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `hospital_address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hospital_reg_details`
--

INSERT INTO `hospital_reg_details` (`hospital_id`, `hospital_name`, `mobile`, `email`, `location`, `hospital_address`, `password`, `status`) VALUES
(1, 'Rohini Hospitals', 8121435691, 'rohinihospitals@gmail.com', 'Balapur X Roads', 'Opposite to Venkateshwara Pharmacy', 'Rohini123', 'Accepted'),
(2, 'sravani hospitals', 8142596387, 'sravani@gmail.com', '', '', '', 'pending'),
(3, 'Prathushya Hospitals', 8142536985, 'prathushyahospitals@gmail.com', 'Nadergul', 'Hyderabad', 'Prathushya123', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `plasma_donors`
--

CREATE TABLE IF NOT EXISTS `plasma_donors` (
  `plasma_donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `plasma_donor_name` varchar(100) DEFAULT NULL,
  `donor_contact_number` bigint(20) DEFAULT NULL,
  `donor_alternate_number` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `blood_group` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`plasma_donor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `plasma_donors`
--

INSERT INTO `plasma_donors` (`plasma_donor_id`, `plasma_donor_name`, `donor_contact_number`, `donor_alternate_number`, `email`, `location`, `blood_group`, `desc`, `date`) VALUES
(1, 'Chiramana Sravani', 9059501800, 9381476206, 'chanuchiramana1800@gmail.com', 'Nellore', 'B+', 'Hello, I would like to donate plasma', '2022-03-24 07:48:39.017032'),
(2, 'Latha Reddy', 9966994875, 9966887421, 'lathareddy@gmail.com', 'Nadergul', 'A+', '', '2022-03-24 11:03:56.403904'),
(3, 'Deepika', 8121754696, 7799668523, 'deepika@gmail.com', 'Mallapur', 'O+', '', '2022-03-24 11:03:56.403904'),
(4, 'Suresh', 8142536987, 7541263895, 'suresh@gmail.com', 'Secunderabad', 'Select Your Blood Group', '', '2022-03-24 11:03:56.403904'),
(5, 'Suresh', 8142536987, 7541263895, 'suresh@gmail.com', 'Secunderabad', 'Select Your Blood Group', '', '2022-03-24 11:03:56.403904'),
(6, 'Veeresh', 8252536415, 7418652348, 'veeresh@gmail.com', 'Attapur', 'AB+', '', '2022-03-24 11:03:56.403904'),
(7, 'Veeresh', 8252536415, 7418652348, 'veeresh@gmail.com', 'Attapur', 'AB+', '', '2022-03-24 11:03:56.403904');

-- --------------------------------------------------------

--
-- Table structure for table `ration_donors`
--

CREATE TABLE IF NOT EXISTS `ration_donors` (
  `ration_donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `ration_donor_name` varchar(100) DEFAULT NULL,
  `donor_contact_number` bigint(20) DEFAULT NULL,
  `donor_alternate_number` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `who_you_are` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`ration_donor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ration_donors`
--

INSERT INTO `ration_donors` (`ration_donor_id`, `ration_donor_name`, `donor_contact_number`, `donor_alternate_number`, `email`, `location`, `who_you_are`, `desc`, `date`) VALUES
(1, 'Tarunkarre', 8121435678, 8124536987, 'tarun@gmail.com', 'Balapur', 'User', 'Hello, iam ready to donate ration.', '2022-03-24 07:51:08.449633'),
(2, 'Mamatha', 8241596387, 7415986354, 'mamatha@gmail.com', 'Malakpet', 'NGO', '', '2022-03-24 11:46:19.658781');

-- --------------------------------------------------------

--
-- Table structure for table `supp_reg_details`
--

CREATE TABLE IF NOT EXISTS `supp_reg_details` (
  `supp_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(100) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `alternate_mobile` bigint(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `supp_reg_details`
--

INSERT INTO `supp_reg_details` (`supp_id`, `supp_name`, `mobile`, `alternate_mobile`, `email`, `password`, `status`) VALUES
(1, 'Baddam Srinivas Reddy', 8121745693, 7142538696, 'baddamsrinivas@gmail.com', 'Baddam123', 'Accepted'),
(2, 'Pravalika', 7582963415, 7985632541, 'pravalika@gmail.com', 'Pravalika123', 'Rejected'),
(3, 'Ramesh', 8526341972, 8241536987, 'ramesh@gmail.com', 'Ramesh123', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg_details`
--

CREATE TABLE IF NOT EXISTS `user_reg_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `pin` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_reg_details`
--

INSERT INTO `user_reg_details` (`user_id`, `username`, `mobile`, `email`, `location`, `pin`, `password`, `profile_image`) VALUES
(1, 'Kallem Vinay Reddy', 7729851577, 'vinayvinnu5132@gmail.com', 'Balapur', 500005, 'Vinay123', 'images/vinayreddykallem.jpg'),
(2, 'Chiramana Sravani', 9059501800, 'chanuchiramana1800@gmail.com', 'Nellore', 524004, 'Sravani123', 'images/reddyvinaykallem_V0ms5BR.pdf'),
(3, 'sravani', 8245632541, 'sravani@gmail.com', 'Nellore', 500024, 'Sravani123', 'images/category_img_01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_feedback`
--

CREATE TABLE IF NOT EXISTS `users_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_number` bigint(20) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `feedback` longtext NOT NULL,
  `user_photo` varchar(200) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users_feedback`
--

INSERT INTO `users_feedback` (`feedback_id`, `category`, `user_name`, `user_number`, `user_email`, `feedback`, `user_photo`, `date`) VALUES
(1, 'Hospital Ventilators', 'Kallem Vinay Reddy', 7729851577, '', 'Hi, This is Vinay From Hyderabad.....Your app is good.', 'images/vinayreddykallem.jpg', '2022-03-24 07:18:27.582295'),
(6, 'Ration', 'Naser Fazal Khan ', 7729851577, 'vinayvinnu5132@gmail.com', 'Will Everyone donates ration?', 'images/vinayreddykallem.jpg', '2022-03-24 13:09:36.662968');

-- --------------------------------------------------------

--
-- Table structure for table `users_request`
--

CREATE TABLE IF NOT EXISTS `users_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `alternate_mobile` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `requesting_for` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users_request`
--

INSERT INTO `users_request` (`request_id`, `name`, `mobile`, `alternate_mobile`, `email`, `location`, `pin`, `requesting_for`, `message`, `date_time`) VALUES
(1, 'Ramesh Kumbham', 9142536874, 8653428963, 'krishnasai@gmail.com', 'LB Nagar', 500079, 'Plasma', 'Need Plasma, it urgent.', '2022-03-24 07:51:08.449633'),
(2, 'Chiramana Sravani', 8253461596, 9425631587, 'chanuchiramana1800@gmail.com', 'Nellore', 524004, 'Ration', 'Hello, i lost my job, need ration in this corona time.', '2022-03-24 07:51:08.449633'),
(7, 'Galib Akther', 7149865237, 8147956324, 'galibakther@gmail.com', 'Cyderabad', 500013, 'Plasma', '', '2022-03-24 12:42:34.840745');

-- --------------------------------------------------------

--
-- Table structure for table `ventilator_details`
--

CREATE TABLE IF NOT EXISTS `ventilator_details` (
  `Ventilator_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(100) NOT NULL,
  `ventilator_company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ventilators_available` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `details` longtext,
  PRIMARY KEY (`Ventilator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ventilator_details`
--

INSERT INTO `ventilator_details` (`Ventilator_id`, `hospital_name`, `ventilator_company`, `location`, `mobile`, `category`, `ventilators_available`, `cost`, `details`) VALUES
(3, 'Krishnasai Hospitals', 'R.K. Surgical Industries', 'Hyderabad', 8142596387, 'Emergency Ventilators', 500, 3500, 'Only available in this corona time.'),
(4, 'Basavataraka Hospitals', 'Alpha Design Technologies Pvt Ltd', 'Banjarahills', 8946735218, 'Manual Resuscitator Ventilators', 1000, 3000, '');

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
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
