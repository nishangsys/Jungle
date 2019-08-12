-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2019 at 12:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baragent`
--

-- --------------------------------------------------------

--
-- Table structure for table `bar_tables`
--

CREATE TABLE `bar_tables` (
  `id` int(11) NOT NULL,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bar_tables`
--

INSERT INTO `bar_tables` (`id`, `num`, `status`, `sector`) VALUES
(1, '1', 0, '3'),
(2, '2', 0, '3'),
(3, '3', 0, '3'),
(4, '4', 0, '3'),
(5, '5', 0, '3'),
(6, '6', 0, '3'),
(7, '7', 0, '3');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `product` varchar(51) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `category` varchar(60) NOT NULL,
  `day` varchar(6) NOT NULL,
  `total` varchar(20) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `comment` text NOT NULL,
  `agent` varchar(80) NOT NULL,
  `discount` varchar(1) NOT NULL,
  `main_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `product_id`, `type`, `product`, `price`, `qty`, `status`, `ids`, `tab`, `area`, `date`, `printed`, `section`, `opening_stocks`, `closing_stocks`, `profit`, `category`, `day`, `total`, `month`, `year`, `cp`, `time`, `comment`, `agent`, `discount`, `main_category`) VALUES
(1, '1', '', '', '', '4', 0, 'command1', '1', 3, 'NOW()', 0, '', '', '', '', '', '', '0', '', '', '', '', '', '', '', ''),
(3, '6', 'food', '', '', '4', 0, 'command3', '1', 3, 'NOW()', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '7', 'food', '', '', '5', 0, 'command3', '1', 3, 'NOW()', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '8', 'food', 'Rice And Beans', '4000.0', '1', 0, 'Fritz', '5', 3, '2019-06-14 21:54:30', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '6', 'food', '1/4 Chicken', '6000.0', '1', 0, 'Fritz', '5', 3, '2019-06-14 21:54:39', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '2', 'drinks', 'EXPORT', '1500.0', '1', 0, 'Fritz', '5', 3, '2019-06-14 22:09:29', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '3', 'drinks', 'AMSTEL', '1500.0', '2', 0, 'command', '4', 3, '2019-06-14 22:22:20', 0, '', '', '', '', '', '', '3000', '', '', '', '', '', '', '', ''),
(16, '5', 'drinks', 'Heindeken Big', '1000.0', '1', 0, 'command', '4', 3, '2019-06-14 22:22:23', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '7', 'food', '1/2 Chicken', '8000.0', '1', 0, 'command', '4', 3, '2019-06-14 22:22:39', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '8', 'food', 'Rice And Beans', '4000.0', '1', 0, 'gilly', '6', 3, '2019-06-14 23:13:39', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(11, 'Wine'),
(12, 'Wisky'),
(14, 'TOP'),
(15, 'Beer'),
(16, 'Drinks'),
(17, 'Soft'),
(18, 'JUICE');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(60) DEFAULT NULL,
  `as3` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clien_id`, `name`, `address`, `as1`, `as2`, `as3`) VALUES
(2, 'DAJUNGLE GROUP OF COMPANIES<BR>Burjkhalifa Snack', 'Check Point- Buea', 'Tel:(237) 677 848 513/676 423 659', '', 'V-2515');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creditors`
--

CREATE TABLE `creditors` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `owed` varchar(22) NOT NULL,
  `date` varchar(22) NOT NULL,
  `day` int(11) NOT NULL,
  `month` varchar(7) NOT NULL,
  `year` varchar(7) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `tel` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  `date` varchar(17) NOT NULL,
  `rec` varchar(17) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `area` varchar(15) NOT NULL,
  `time` text NOT NULL,
  `reason` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `paidto` varchar(90) NOT NULL,
  `paidtou` varchar(60) NOT NULL,
  `amt` varchar(20) NOT NULL,
  `idds` varchar(11) NOT NULL,
  `staffname` varchar(50) NOT NULL,
  `day` varchar(11) NOT NULL,
  `purpose` varchar(120) NOT NULL,
  `discount` varchar(11) NOT NULL,
  `company` varchar(90) NOT NULL,
  `dib` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`id`, `cust_id`, `room`, `date`, `rec`, `exp`, `month`, `year`, `area`, `time`, `reason`, `qty`, `price`, `total`, `owed`, `paidto`, `paidtou`, `amt`, `idds`, `staffname`, `day`, `purpose`, `discount`, `company`, `dib`) VALUES
(1, '', '', '27-06-2018', '30000', '', '06', '2018', '3', '11:47:32', ' Bill', 1, '30000', '30000', '', 'super@123', '0', '', '0269', '', '', 'Bills', '', '', ''),
(2, '24', '', '27-06-2018', '20000', '', '06', '2018', '3', '11:52:46', ' Bill', 1, '51300', '51300', '31300', 'super@123', '', '31300', '20180270', 'Marga Motanga', '', 'Bills', '0', '', '18'),
(3, '', '', '25-05-2019', '4500', '', '05', '2019', '3', '10:03:51', ' Bill', 1, '4500', '4500', '', 'super@123', '-500', '', '0271', '', '', 'Bills', '', '', ''),
(4, '', '', '25-05-2019', '2000', '', '05', '2019', '3', '10:04:47', ' Bill', 1, '2000', '2000', '', 'super@123', '0', '', '0272', '', '', 'Bills', '', '', ''),
(5, '1', '', '25-05-2019', '3000', '', '05', '2019', '3', '10:05:38', ' Bill', 1, '3000', '3000', '-2000', 'super@123', '2000', '-2000', '20190273', '', '', 'Bills', '', '', ''),
(6, '2', '', '25-05-2019', '5000', '', '05', '2019', '3', '10:56:11', ' Bill', 1, '5000', '5000', '0', 'super@123', '0', '0', '20190274', '', '', 'Bills', '', '', ''),
(7, '3', '', '27-05-2019', '16500', '', '05', '2019', '3', '01:26:11', ' Bill', 1, '16500', '16500', '-3500', 'super@123', '3500', '-3500', '20190275', '', '', 'Bills', '', '', ''),
(8, '2', '', '27-05-2019', '3000', '', '05', '2019', '3', '01:26:29', ' Bill', 1, '3000', '3000', '-2000', 'super@123', '2000', '-2000', '20190276', '', '', 'Bills', '', '', ''),
(9, '1', '', '27-05-2019', '50000', '', '05', '2019', '3', '02:04:04', ' Bill', 1, '50000', '50000', '0', 'super@123', '0', '0', '20190277', '', '', 'Bills', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `exp_id` int(11) NOT NULL,
  `item` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `duedate` varchar(13) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `qty` varchar(13) DEFAULT NULL,
  `cate` varchar(35) NOT NULL,
  `stat` int(2) NOT NULL,
  `agent` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finals`
--

CREATE TABLE `finals` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `area` int(11) NOT NULL COMMENT 'from sectors',
  `image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finals`
--

INSERT INTO `finals` (`id`, `name`, `cost`, `disc`, `branch`, `qty`, `sp`, `barcode`, `sector`, `area`, `image_name`) VALUES
(1, 'TOP C', '445', 'TOP', '', '57', '1000', '', '', 3, '1.jpeg'),
(2, 'EXPORT', '560', 'BEER', '', '54', '1500', '', '', 3, '2.jpeg'),
(3, 'AMSTEL', '455', 'BEER', '', '43', '1500', '', '', 3, '3.jpeg'),
(4, 'GUINESS SM', '590', 'BEER', '', '66', '1500', '', '', 3, '4.jpeg'),
(5, 'Heindeken Big', '700', 'Can', '', '96', '1000', '', '', 3, '5.jpeg'),
(6, 'Heindeken Small', '400', 'Can', '', '97', '800', '', '', 3, '6.jpeg'),
(7, 'Manyang', '455', 'Beer', '', '86', '600', '', '', 3, '7.jpeg'),
(8, 'Top A', '445', 'TOP', '', '93', '1000', '', '', 3, '8.jpeg'),
(9, 'Top P', '445', 'Top', '', '96', '1000', '', '', 3, '9.jpeg'),
(10, 'Mutzig', '500', 'Beer', '', '96', '1000', '', '', 3, '10.jpeg'),
(11, 'Blue Label', '15000', 'Wisky', '', '99', '45000', '', '', 3, '11.jpeg'),
(12, 'Black Label', '17000', 'Wisky', '', '99', '50000', '', '', 3, '12.jpeg'),
(13, 'Blue Heaven', '1500', 'Wine', '', '97', '5000', '', '', 3, '13.jpeg'),
(14, 'Top G', '445', 'Top', '', '100', '1000', '', '', 3, '14.jpeg'),
(15, 'Supermonth 1l', '250', 'Water', '', '20', '1000', '', '', 3, '15.jpeg'),
(16, 'Baron De Roi', '900', 'Wine', '', '98', '2000', '', '', 3, '16.jpeg'),
(17, 'Natural Fruit Juice', '300', 'Juice', '', '97', '1000', '', '', 3, '17.jpeg'),
(18, 'Guiness Smooth', '600', 'Beer', '', '93', '2000', '', '', 3, '18.jpeg'),
(19, 'Top A', '445', 'TOP', '', '46', '1000', '', '', 4, '19.jpeg'),
(20, 'TOP C', '445', 'TOP', '', '49', '1000', '', '', 4, '20.jpeg'),
(21, 'EXPORT', '560', 'BEER', '', '49', '1500', '', '', 4, '21.jpeg'),
(22, 'AMSTEL', '455', 'BEER', '', '36', '1500', '', '', 4, '22.jpeg'),
(23, 'GUINESS SM', '590', 'BEER', '', '49', '1500', '', '', 4, '23.jpeg'),
(24, 'Heindeken Big', '700', 'Can', '', '49', '1000', '', '', 4, '24.jpeg'),
(25, 'Heindeken Small', '400', 'Can', '', '49', '800', '', '', 4, '25.jpeg'),
(26, 'Manyang', '455', 'Beer', '', '49', '600', '', '', 4, '26.jpeg'),
(27, 'Top P', '445', 'Top', '', '40', '1000', '', '', 4, '27.jpeg'),
(28, 'Mutzig', '500', 'Beer', '', '49', '1000', '', '', 4, '28.jpeg'),
(29, 'Blue Label', '15000', 'Wisky', '', '49', '45000', '', '', 4, '29.jpeg'),
(30, 'Black Label', '17000', 'Wisky', '', '48', '50000', '', '', 4, '30.jpeg'),
(31, 'Blue Heaven', '1500', 'Wine', '', '98', '5000', '', '', 4, '31.jpeg'),
(32, 'Top G', '445', 'Top', '', '49', '1000', '', '', 4, '32.jpeg'),
(33, 'Supermonth 1l', '250', 'Water', '', '67', '1000', '', '', 4, '33.jpeg'),
(34, 'Baron De Roi', '900', 'Wine', '', '49', '2000', '', '', 4, '34.jpeg'),
(35, 'Natural Fruit Juice', '300', 'Juice', '', '49', '1000', '', '', 4, '35.jpeg'),
(36, 'Guiness Smooth', '600', 'Beer', '', '55', '2000', '', '', 4, '36.jpeg'),
(37, '33 EXPORT', '455', 'BEER', '', '31', '1000', '', '', 6, '37.jpeg'),
(38, 'AMSTEL', '455', 'BEER', '', '26', '1500', '', '', 6, '38.jpeg'),
(39, 'BIG GUINESS', '455', 'BEER', '', '23', '2000', '', '', 6, '39.jpeg'),
(40, 'TOP A', '400', 'TOP', '', '5', '1000', '', '', 6, '40.jpeg'),
(41, 'TOP P', '400', 'TOP', '', '5', '1000', '', '', 6, '41.jpeg'),
(42, 'TOP G', '400', 'TOPÂ ', '', '8', '1000', '', '', 6, '42.jpeg'),
(43, 'SMALL GUINESS', '455', 'BEER', '', '12', '1500', '', '', 6, '43.jpeg'),
(44, 'MALTA', '340', 'CAN', '', '23', '1000', '', '', 6, '44.jpeg'),
(45, '33 EXPORT', '455', 'BEER', '', '100', '1000', '', '', 2, '45.jpeg'),
(46, 'AMSTEL', '455', 'BEER', '', '100', '1500', '', '', 2, '46.jpeg'),
(47, 'TOP G', '400', 'TOPÂ ', '', '100', '1000', '', '', 2, '47.jpeg'),
(48, '33 EXPORT', '455', 'BEER', '', '20', '1000', '', '', 7, '48.jpeg'),
(49, 'AMSTEL', '455', 'BEER', '', '15', '1500', '', '', 7, '49.jpeg'),
(50, 'BIG GUINESS', '455', 'BEER', '', '16', '2000', '', '', 7, '50.jpeg'),
(51, 'SMALL GUINESS', '455', 'BEER', '', '15', '1500', '', '', 7, '51.jpeg'),
(52, 'TOP A', '400', 'TOP', '', '15', '1000', '', '', 7, '52.jpeg'),
(53, 'TOP P', '400', 'TOP', '', '15', '1000', '', '', 7, '53.jpeg'),
(54, 'SMALL SPRITE', '', 'TOP', '', '10', '1000', '', '', 7, '54.jpeg'),
(55, 'HEINDEKEN S', '400', 'CAN', '', '23', '1000', '', '', 7, '55.jpeg'),
(56, 'HEINDEKEN B', '800', 'CAN', '', '35', '2000', '', '', 7, '56.jpeg'),
(57, 'Oraginal', '', 'JUICE', '', '55', '700', '', '', 0, '57.jpeg'),
(58, 'Sita Toilet Roll', '', '', ' ', '15', '250', '', '', 0, '58.jpeg'),
(59, 'Elena Tomata', '', '', ' ', '8', '100', '', '', 0, '59.jpeg'),
(60, 'ORANGE JUICE', 'JUICE', 'JUICE', '', '1200', '1000', '', '', 6, '60.jpeg'),
(61, 'ORANGE JUICE', 'JUICE', 'JUICE', '', '1222', '1000', '', '', 7, '61.jpeg'),
(62, 'PINEAPPLE JUICE', '100', 'JUICE', '', '50', '1000', '', '', 7, '62.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `pro_id` int(11) NOT NULL,
  `product` varchar(65) NOT NULL,
  `cprice` varchar(11) NOT NULL,
  `price` varchar(21) NOT NULL,
  `quatity` varchar(21) NOT NULL,
  `serial` varchar(90) NOT NULL,
  `area` int(11) NOT NULL,
  `sector` varchar(90) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`pro_id`, `product`, `cprice`, `price`, `quatity`, `serial`, `area`, `sector`, `image_name`, `qty`) VALUES
(2, 'CHIEFS SALAD', '', '3000.00', '', 'STARTER', 15, '15', '1.jpeg', 0),
(6, '1/4 Chicken', '', '6000.00', '', 'Chicken', 2, 'Reception', '2.jpeg', 0),
(7, '1/2 Chicken', '', '8000.00', '', 'Chicken', 2, 'Reception', '3.jpeg', 0),
(8, 'Rice And Beans', '', '4000.00', '', 'Main Course', 10, 'Restaurant', '4.jpeg', 0),
(9, 'Jerof Rice', '', '2000.00', '', 'Mian Course', 10, 'Restaurant', '5.jpeg', 0),
(11, 'Okongobong , Ripe Plantain And Dry Fish', '', '4000', '', 'MAIN COURSE', 0, 'RESTAURANT', '6.jpeg', 0),
(12, 'Okongobong , Ripe Plantain And Meat', '', '5000', '', 'MAIN COURSE', 0, 'RESTAURANT', '8.jpeg', 0),
(13, 'Chicken Plantain Chips', '', '5000', '', 'MAIN COURSE', 0, 'RESTAURANT', '9.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `name`) VALUES
(1, 'MAIN COURSE'),
(2, 'COMPLIMENT'),
(3, 'STARTER'),
(4, 'BREAK FAST'),
(5, 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) DEFAULT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `name`) VALUES
(NULL, 'BAR1'),
(NULL, 'BAR2'),
(NULL, 'VIP'),
(NULL, 'Super Market');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL COMMENT 'supermarket/index.php',
  `area` int(11) NOT NULL,
  `link` varchar(98) NOT NULL COMMENT 'phones/phone/booking.php',
  `does` int(11) NOT NULL,
  `sarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `area`, `link`, `does`, `sarea`) VALUES
(18, 'Boss Office', 20, 'superadmin/index.php', 0, 0),
(19, 'Bars Stock Accountant', 1, 'content/index.php', 0, 0),
(22, 'Bar One', 3, 'sales/casheir/welcome.php?area=3', 2, 0),
(28, 'Bar One Wairtress', 9, 'myphone/phone/booking.php', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `md5_id` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `full_name` tinytext COLLATE latin1_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_level` tinyint(4) NOT NULL DEFAULT '1',
  `pwd` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `address` text COLLATE latin1_general_ci NOT NULL,
  `country` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tel` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fax` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `website` text COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `users_ip` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `approved` int(1) NOT NULL DEFAULT '0',
  `activation_code` int(10) NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `ckey` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ctime` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `md5_id`, `full_name`, `user_name`, `user_email`, `user_level`, `pwd`, `address`, `country`, `tel`, `fax`, `website`, `date`, `users_ip`, `approved`, `activation_code`, `banned`, `ckey`, `ctime`) VALUES
(41, 'Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586', 'Nishang Isaac', 'w@me', 'w@me', 3, '$2y$10$cc5T8cIE6ueEJ.miHcGyhu0I78A2ivYj6zotGaiRxinrp8IeY3hly', '', '', '', '', '', '2017-09-30', '::1', 0, 0, 9, '', '1111111'),
(37, 'Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586', ' Me4455', 'trains@me', 'trains@me', 5, '$2y$10$e7lkujiE8yIuXhD0MARWRuouXjuC6FIkTZd..Mns6fzuxL7xpyohC', '0362017', '', '67913526', '', '', '2017-09-11', '::1', 0, 0, 5, '', '1111111'),
(34, 'Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586', 'Admin', 'admin12', 'admin12', 20, '$2y$10$EuSOsSNVrSPG8LdxOh3bAOJYa9FTYsNqx8R50zJIXdpO0sPIJMqam', '0332017', '', '677788888', '', '', '2017-09-08', '::1', 0, 0, 20, '', '1111111'),
(35, 'Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586', 'Nishang', 'super@123', 'super@123', 20, '$2y$10$svDhwwnz2jBdfcqvZPzBM.P2J3DaJyD76oswb19chDABehlbKDtUi', '0342017', '', '6777888888', '', '', '2017-09-08', '::1', 0, 0, 20, '', '1111111'),
(40, 'Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586', 'Nishang Isaac', 'me@123', 'me@123', 3, '$2y$10$qSvtiIZ1YWn2OiVM61PxFeICBlptBuYbz4j4UrZDziGbYdMYhiWS6', '', '', '', '', '', '2017-09-25', '::1', 0, 0, 3, '', '1111111'),
(43, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'Ni Shang', 'waiter1', 'waiter1', 4, '$2y$10$KDuQqsQkUBGr7Go55dOXcOONXI23fp9zaS4qAGe0M3HW0bv0kF4em', '', '', '', '', '', '2017-12-26', '::1', 0, 0, 9, '', '1111111'),
(44, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'Bar12', 'bar12', 'bar12', 6, '3534e2052ad4b3fb766b2851106d5fa9a6b75c9c1f760093b', '123456', '', '', '', '', '2018-03-11', '::1', 0, 0, 6, '', '1111111'),
(46, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'Superadmin', 'superadmin', 'superadmin', 20, '$2y$10$NQBSUo2oYnPeB30xRKdL8.f8.uOLBQz1xRiQpGXCDYscrMlOrFLGO', '', '', '', '', '', '2018-05-02', '::1', 0, 0, 20, '', '111111'),
(47, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'Nishang M', 'superad', 'superad', 20, '$2y$10$3sR0YO6v6iAqThwGaq/xG.nlX5HuY2I8vexyidG1PlZQY/7JRKLOG', '', '', '', '', '', '2018-06-12', '::1', 0, 0, 20, '', '12345'),
(49, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'Bar Two', 'bartwo', 'bartwo', 4, '27d25778f4636981f788f417020f1252d5121a6eff7f1f78b', '12345', '', '', '', '', '2018-06-16', '::1', 0, 0, 4, '', '111111'),
(50, 'Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586', 'My Vip', 'myvip', 'myvip', 7, '$2y$10$VHsWUGi7KNQIZZE7tZGBGO7.kEBPyfpdDj2X8pOrR2kJCzwKY6VnK', '', '', '', '', '', '2018-06-16', '::1', 0, 0, 7, '', '111111'),
(51, 'Windows NT DESKTOP-TRF82UB 6.2 build 9200 (Windows 8 Business Edition) i586', 'Bar One Person', 'bone', 'bone', 9, '$2y$10$bUP6cjngA6BnBEEgeu/FE.t5P/BeEBq40s.DNO6m.LjjGygiigkRa', '', '', '', '', '', '2019-05-25', '::1', 0, 0, 9, '', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bar_tables`
--
ALTER TABLE `bar_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clien_id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creditors`
--
ALTER TABLE `creditors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expiry`
--
ALTER TABLE `expiry`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `finals`
--
ALTER TABLE `finals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`);
ALTER TABLE `users` ADD FULLTEXT KEY `idx_search` (`full_name`,`address`,`user_email`,`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bar_tables`
--
ALTER TABLE `bar_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditors`
--
ALTER TABLE `creditors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expiry`
--
ALTER TABLE `expiry`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finals`
--
ALTER TABLE `finals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
