-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2021 at 07:04 PM
-- Server version: 5.7.34
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codesta1_codestarshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(254) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Computing'),
(4, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `order_number` varchar(254) NOT NULL,
  `customer` varchar(254) NOT NULL,
  `amount` varchar(254) NOT NULL,
  `county` varchar(254) NOT NULL,
  `constituency` varchar(254) NOT NULL,
  `areacode` varchar(254) NOT NULL,
  `phone` varchar(254) NOT NULL,
  `status` varchar(254) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `order_number`, `customer`, `amount`, `county`, `constituency`, `areacode`, `phone`, `status`, `date`) VALUES
(1, 'Ericobanks-20210424085005', 'Ericobanks', '10700', 'Kiambu', ' Thika', 'Thika', '254700711233', 'Unpaid', '2021-04-24 08:50:05'),
(2, 'Faith-20210425121425', 'Faith', '10000', ' Murang\'a', ' Kiharu', 'kahuro', '254700711233', 'Unpaid', '2021-04-25 12:14:25'),
(3, 'Elijah-20210426013316', 'Elijah', '38400', ' Kisumu', ' Muhoroni', 'Hapo kwetu', '254700711233', 'Unpaid', '2021-04-26 01:33:16'),
(4, 'Waluke-20210426043419', 'Waluke', '6000', ' Kitui', ' Kitui Central', 'mingwani', '254700711233', 'Unpaid', '2021-04-26 04:34:19'),
(5, 'Kuria-20210426050048', 'Kuria', '5800', ' Kwale', ' Msambweni', 'Mwembeni', '254700000000', 'Unpaid', '2021-04-26 05:00:48'),
(6, 'Ericobanks-20210426071137', 'Ericobanks', '5100', ' Machakos', ' Machakos Town', 'Muumandu Kola', '254700711233', 'Unpaid', '2021-04-26 07:11:37'),
(7, 'Eric Kyalo-20210426170349', 'Eric Kyalo', '1300', ' Kilifi', ' Malindi', 'malindi town', '254700711233', 'Unpaid', '2021-04-26 17:03:49'),
(8, 'Waya-20210426221346', 'Waya', '1500', ' Kitui', ' Kitui Rural', 'Kitui nzini', '254700711233', 'Unpaid', '2021-04-26 22:13:46'),
(9, 'Eric Kyalo-20210426221535', 'Eric Kyalo', '3000', ' Kitui', ' Kitui Rural', 'Kitui nzini', '254700711233', 'Unpaid', '2021-04-26 22:15:35'),
(10, 'Eric-20210426234449', 'Eric', '3400', ' Embu', ' Runyenjes', 'Runyejes', '254700711233', 'Unpaid', '2021-04-26 23:44:49'),
(11, 'Were-20210426235837', 'Were', '1300', ' Kirinyaga', ' Ndia', 'ndia', '254700711233', 'Unpaid', '2021-04-26 23:58:37'),
(12, 'Were-20210427000955', 'Were', '2300', ' Kiambu', ' Thika Town', 'makongeni', '254700711233', 'Unpaid', '2021-04-27 00:09:55'),
(13, 'Waya-20210427001321', 'Waya', '2300', ' Kericho', ' Ainamoi', 'ainamoi', '254700711233', 'Unpaid', '2021-04-27 00:13:21'),
(14, 'wambilianga-20210427001527', 'wambilianga', '2300', ' Kajiado', ' Kajiado South', 'emali', '254700711233', 'Unpaid', '2021-04-27 00:15:27'),
(15, 'wambilianga-20210427002931', 'wambilianga', '2300', ' Kakamega', ' Navakholo', 'shinyalu', '254700711233', 'Unpaid', '2021-04-27 00:29:31'),
(16, 'Waya-20210427003136', 'Waya', '2300', ' Machakos', ' Kangundo', 'Tala', '254700711233', 'Unpaid', '2021-04-27 00:31:36'),
(17, 'Eric Kyalo-20210430031042', 'Eric Kyalo', '2400', ' Meru', ' North Imenti', 'imenti', '254700711233', 'Unpaid', '2021-04-30 03:10:42'),
(18, 'Eric-20210430163246', 'Eric', '2400', ' Machakos', ' Machakos Town', 'Kalama', '254700711233', 'Unpaid', '2021-04-30 16:32:46'),
(19, 'Makel-20210504123439', 'Makel', '3600', ' Kisii', ' Bobasi', 'Bobasi', '254700711233', 'Unpaid', '2021-05-04 12:34:39'),
(20, 'Eric Kyalo-20210507142242', 'Eric Kyalo', '3600', ' Mombasa', ' Changamwe', 'mwembeni', '254700711233', 'Paid', '2021-05-07 14:22:42'),
(21, 'Eric Codestar-20210507145506', 'Eric Codestar', '4100', ' Machakos', ' Machakos Town', 'kalama', '254700711233', 'Paid', '2021-05-07 14:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `county` varchar(254) NOT NULL,
  `constituency` varchar(254) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `county`, `constituency`) VALUES
(4, 'Mombasa', 'Changamwe'),
(5, 'Mombasa', 'Jomvu'),
(6, 'Mombasa', 'Kisauni'),
(7, 'Mombasa', 'Nyali'),
(8, 'Mombasa', 'Likoni'),
(9, 'Mombasa', 'Mvita'),
(10, 'Kwale', 'Msambweni'),
(11, 'Kwale', 'Lunga Lunga'),
(12, 'Kwale', 'Matuga'),
(13, 'Kwale', 'Kinango'),
(14, 'Kilifi', 'Kilifi North'),
(15, 'Kilifi', 'Kilifi South'),
(16, 'Kilifi', 'Kaloleni'),
(17, 'Kilifi', 'Rabai'),
(18, 'Kilifi', 'Ganze'),
(19, 'Kilifi', 'Malindi'),
(20, 'Kilifi', 'Magarini'),
(21, 'Tana River', 'Garsen'),
(22, 'Tana River', 'Galole'),
(23, 'Tana River', 'Bura'),
(24, 'Lamu', 'Lamu East'),
(25, 'Lamu', 'Lamu West'),
(26, 'Taita Taveta', 'Taveta'),
(27, 'Taita Taveta', 'Wundanyi'),
(28, 'Taita Taveta', 'Mwatate'),
(29, 'Taita Taveta', 'Voi'),
(30, 'Garissa', 'Garissa Township'),
(31, 'Garissa', 'Balambala'),
(32, 'Garissa', 'Lagdera'),
(33, 'Garissa', 'Dadaab'),
(34, 'Garissa', 'Fafi'),
(35, 'Garissa', 'Ijara'),
(36, 'Wajir', 'Wajir North'),
(37, 'Wajir', 'Wajir East'),
(38, 'Wajir', 'Tarbaj'),
(39, 'Wajir', 'Wajir West'),
(40, 'Wajir', 'Eldas'),
(41, 'Wajir', 'Wajir South'),
(42, 'Mandera', 'Mandera West'),
(43, 'Mandera', 'Banisa'),
(44, 'Mandera', 'Mandera North'),
(45, 'Mandera', 'Mandera South'),
(46, 'Mandera', 'Mandera East'),
(47, 'Mandera', 'Lafey'),
(48, 'Marsabit', 'Moyale'),
(49, 'Marsabit', 'North Horr'),
(50, 'Marsabit', 'Saku'),
(51, 'Marsabit', 'Laisamis'),
(52, 'Isiolo', 'Isiolo North'),
(53, 'Isiolo', 'Isiolo South'),
(54, 'Meru', 'Igembe South'),
(55, 'Meru', 'Igembe Central'),
(56, 'Meru', 'Igembe North'),
(57, 'Meru', 'Tigania West'),
(58, 'Meru', 'Tigania East'),
(59, 'Meru', 'North Imenti'),
(60, 'Meru', 'Buuri'),
(61, 'Meru', 'Central Imenti'),
(62, 'Meru', 'South Imenti'),
(63, 'Tharaka\nNithi', 'Maara'),
(64, 'Tharaka\nNithi', 'Chuka / Igambang’ombe'),
(65, 'Tharaka\nNithi', 'Tharaka'),
(66, 'Embu', 'Manyatta'),
(67, 'Embu', 'Runyenjes'),
(68, 'Embu', 'Mbeere South'),
(69, 'Embu', 'Mbeere North'),
(70, 'Kitui', 'Mwingi North'),
(71, 'Kitui', 'Mwingi West'),
(72, 'Kitui', 'Mwingi Central'),
(73, 'Kitui', 'Kitui West'),
(74, 'Kitui', 'Kitui Rural'),
(75, 'Kitui', 'Kitui Central'),
(76, 'Kitui', 'Kitui East'),
(77, 'Kitui', 'Kitui South'),
(78, 'Machakos', 'Masinga'),
(79, 'Machakos', 'Yatta'),
(80, 'Machakos', 'Kangundo'),
(81, 'Machakos', 'Matungulu'),
(82, 'Machakos', 'Kathiani'),
(83, 'Machakos', 'Mavoko'),
(84, 'Machakos', 'Machakos Town'),
(85, 'Machakos', 'Mwala'),
(86, 'Makueni', 'Mbooni'),
(87, 'Makueni', 'Kilome'),
(88, 'Makueni', 'Kaiti'),
(89, 'Makueni', 'Makueni'),
(90, 'Makueni', 'Kibwezi West'),
(91, 'Makueni', 'Kibwezi East'),
(92, 'Nyandarua', 'Kinangop'),
(93, 'Nyandarua', 'Kipipiri'),
(94, 'Nyandarua', 'Ol Kalou'),
(95, 'Nyandarua', 'Ol Jorok'),
(96, 'Nyandarua', 'Ndaragwa'),
(97, 'Nyeri', 'Tetu'),
(98, 'Nyeri', 'Kieni'),
(99, 'Nyeri', 'Mathira'),
(100, 'Nyeri', 'Othaya'),
(101, 'Nyeri', 'Mukurwe-Ini'),
(102, 'Nyeri', 'Nyeri Town'),
(103, 'Kirinyaga', 'Mwea'),
(104, 'Kirinyaga', 'Gichugu'),
(105, 'Kirinyaga', 'Ndia'),
(106, 'Kirinyaga', 'Kirinyaga Central'),
(107, 'Murang\'a', 'Kangema'),
(108, 'Murang\'a', 'Mathioya'),
(109, 'Murang\'a', 'Kiharu'),
(110, 'Murang\'a', 'Kigumo'),
(111, 'Murang\'a', 'Maragua'),
(112, 'Murang\'a', 'Kandara'),
(113, 'Murang\'a', 'Gatanga'),
(114, 'Kiambu', 'Gatundu South'),
(115, 'Kiambu', 'Gatundu North'),
(116, 'Kiambu', 'Juja'),
(117, 'Kiambu', 'Thika Town'),
(118, 'Kiambu', 'Ruiru'),
(119, 'Kiambu', 'Githunguri'),
(120, 'Kiambu', 'Kiambu'),
(121, 'Kiambu', 'Kiambaa'),
(122, 'Kiambu', 'Kabete'),
(123, 'Kiambu', 'Kikuyu'),
(124, 'Kiambu', 'Limuru'),
(125, 'Kiambu', 'Lari'),
(126, 'Turkana', 'Turkana North'),
(127, 'Turkana', 'Turkana West'),
(128, 'Turkana', 'Turkana Central'),
(129, 'Turkana', 'Loima'),
(130, 'Turkana', 'Turkana South'),
(131, 'Turkana', 'Turkana East'),
(132, 'West Pokot', 'Kapenguria'),
(133, 'West Pokot', 'Sigor'),
(134, 'West Pokot', 'Kacheliba'),
(135, 'West Pokot', 'Pokot South'),
(136, 'Samburu', 'Samburu West'),
(137, 'Samburu', 'Samburu North'),
(138, 'Samburu', 'Samburu East'),
(139, 'Trans Nzioa', 'Kwanza'),
(140, 'Trans Nzioa', 'Endebess'),
(141, 'Trans Nzioa', 'Saboti'),
(142, 'Trans Nzioa', 'Kiminini'),
(143, 'Trans Nzioa', 'Cherangany'),
(144, 'Uasin Gishu', 'Soy'),
(145, 'Uasin Gishu', 'Turbo'),
(146, 'Uasin Gishu', 'Moiben'),
(147, 'Uasin Gishu', 'Ainabkoi'),
(148, 'Uasin Gishu', 'Kapseret'),
(149, 'Uasin Gishu', 'Kesses'),
(150, 'Elgeyo\nMarakwet', 'Marakwet East'),
(151, 'Elgeyo\nMarakwet', 'Marakwet West'),
(152, 'Elgeyo\nMarakwet', 'Keiyo North'),
(153, 'Elgeyo\nMarakwet', 'Keiyo South'),
(154, 'Nandi', 'Tinderet'),
(155, 'Nandi', 'Aldai'),
(156, 'Nandi', 'Nandi Hills'),
(157, 'Nandi', 'Chesumei'),
(158, 'Nandi', 'Emgwen'),
(159, 'Nandi', 'Mosop'),
(160, 'Baringo', 'Tiaty'),
(161, 'Baringo', 'Baringo North'),
(162, 'Baringo', 'Baringo Central'),
(163, 'Baringo', 'Baringo South'),
(164, 'Baringo', 'Mogotio'),
(165, 'Baringo', 'Eldama Ravine'),
(166, 'Laikipia', 'Laikipia West'),
(167, 'Laikipia', 'Laikipia East'),
(168, 'Laikipia', 'Laikipia North'),
(169, 'Nakuru', 'Molo'),
(170, 'Nakuru', 'Njoro'),
(171, 'Nakuru', 'Naivasha'),
(172, 'Nakuru', 'Gilgil'),
(173, 'Nakuru', 'Kuresoi South'),
(174, 'Nakuru', 'Kuresoi North'),
(175, 'Nakuru', 'Subukia'),
(176, 'Nakuru', 'Rongai'),
(177, 'Nakuru', 'Bahati'),
(178, 'Nakuru', 'Nakuru Town West'),
(179, 'Nakuru', 'Nakuru Town East'),
(180, 'Narok', 'Kilgoris'),
(181, 'Narok', 'Emurua Dikirr'),
(182, 'Narok', 'Narok North'),
(183, 'Narok', 'Narok East'),
(184, 'Narok', 'Narok South'),
(185, 'Narok', 'Narok West'),
(186, 'Kajiado', 'Kajiado North'),
(187, 'Kajiado', 'Kajiado Central'),
(188, 'Kajiado', 'Kajiado East'),
(189, 'Kajiado', 'Kajiado West'),
(190, 'Kajiado', 'Kajiado South'),
(191, 'Kericho', 'Kipkelion East'),
(192, 'Kericho', 'Kipkelion West'),
(193, 'Kericho', 'Ainamoi'),
(194, 'Kericho', 'Bureti'),
(195, 'Kericho', 'Belgut'),
(196, 'Kericho', 'Sigowet/Soin'),
(197, 'Bomet', 'Sotik'),
(198, 'Bomet', 'Chepalungu'),
(199, 'Bomet', 'Bomet East'),
(200, 'Bomet', 'Bomet Central'),
(201, 'Bomet', 'Konoin'),
(202, 'Kakamega', 'Lugari'),
(203, 'Kakamega', 'Likuyani'),
(204, 'Kakamega', 'Malava'),
(205, 'Kakamega', 'Lurambi'),
(206, 'Kakamega', 'Navakholo'),
(207, 'Kakamega', 'Mumias West'),
(208, 'Kakamega', 'Mumias  East'),
(209, 'Kakamega', 'Matungu'),
(210, 'Kakamega', 'Butere'),
(211, 'Kakamega', 'Khwisero'),
(212, 'Kakamega', 'Shinyalu'),
(213, 'Kakamega', 'Ikolomani'),
(215, 'Kakamega', 'Sabatia'),
(216, 'Kakamega', 'Hamisi'),
(217, 'Kakamega', 'Luanda'),
(218, 'Kakamega', 'Emuhaya'),
(219, 'Bungoma', 'Mt. Elgon'),
(220, 'Bungoma', 'Sirisia'),
(221, 'Bungoma', 'Kabuchai'),
(222, 'Bungoma', 'Bumula'),
(223, 'Bungoma', 'Kanduyi'),
(224, 'Bungoma', 'Webuye East'),
(225, 'Bungoma', 'Webuye West'),
(226, 'Bungoma', 'Kimilili'),
(227, 'Bungoma', 'Tongaren'),
(228, 'Busia', 'Teso North'),
(229, 'Busia', 'Teso South'),
(230, 'Busia', 'Nambale'),
(231, 'Busia', 'Matayos'),
(232, 'Busia', 'Butula'),
(233, 'Busia', 'Funyula'),
(234, 'Busia', 'Budalangi'),
(235, 'Siaya', 'Ugenya'),
(236, 'Siaya', 'Ugunja'),
(237, 'Siaya', 'Alego Usonga'),
(238, 'Siaya', 'Gem'),
(239, 'Siaya', 'Bondo'),
(240, 'Siaya', 'Rarieda'),
(241, 'Kisumu', 'Kisumu East'),
(242, 'Kisumu', 'Kisumu West'),
(243, 'Kisumu', 'Kisumu Central'),
(244, 'Kisumu', 'Seme'),
(245, 'Kisumu', 'Nyando'),
(246, 'Kisumu', 'Muhoroni'),
(247, 'Kisumu', 'Nyakach'),
(248, 'Homabay', 'Kasipul'),
(249, 'Homabay', 'Kabondo Kasipul'),
(250, 'Homabay', 'Karachuonyo'),
(251, 'Homabay', 'Rangwe'),
(252, 'Homabay', 'Homa Bay Town'),
(253, 'Homabay', 'Ndhiwa'),
(254, 'Homabay', 'Mbita'),
(255, 'Homabay', 'Suba'),
(256, 'Migori', 'Rongo'),
(257, 'Migori', 'Awendo'),
(258, 'Migori', 'Suna East'),
(259, 'Migori', 'Suna West'),
(260, 'Migori', 'Uriri'),
(261, 'Migori', 'Nyatike'),
(262, 'Migori', 'Kuria West'),
(263, 'Migori', 'Kuria East'),
(264, 'Kisii', 'Bonchari'),
(265, 'Kisii', 'South Mugirango'),
(266, 'Kisii', 'Bomachoge Borabu'),
(267, 'Kisii', 'Bobasi'),
(268, 'Kisii', 'Bomachoge Chache'),
(269, 'Kisii', 'Nyaribari Masaba'),
(270, 'Kisii', 'Nyaribari Chache'),
(271, 'Kisii', 'Kitutu Chache North'),
(272, 'Kisii', 'Kitutu Chache South'),
(273, 'Nyamira', 'Fredrick Odenge'),
(274, 'Nyamira', 'Benson Ambuko'),
(275, 'Nyamira', 'Justus Naliakho'),
(276, 'Nyamira', 'Elijah Ngunjiri'),
(277, 'Nairobi City', 'Westlands'),
(278, 'Nairobi City', 'Dagoreti North'),
(279, 'Nairobi City', 'Dagoretti South'),
(280, 'Nairobi City', 'Langata'),
(281, 'Nairobi City', 'Kibra'),
(282, 'Nairobi City', 'Roysambu'),
(283, 'Nairobi City', 'Kasarani'),
(284, 'Nairobi City', 'Ruaraka'),
(285, 'Nairobi City', 'Embakasi South'),
(286, 'Nairobi City', 'Embakasi North'),
(287, 'Nairobi City', 'Embakasi Central'),
(288, 'Nairobi City', 'Embakasi East'),
(289, 'Nairobi City', 'Embakasi West'),
(290, 'Nairobi City', 'Makadara'),
(291, 'Nairobi City', 'Kamukunji'),
(292, 'Nairobi City', 'Starehe'),
(293, 'Nairobi City', 'Mathare');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `item` varchar(254) NOT NULL,
  `item_id` varchar(254) NOT NULL,
  `price` varchar(254) NOT NULL,
  `quantity` varchar(254) NOT NULL,
  `store` varchar(254) NOT NULL,
  `ordernumber` varchar(254) NOT NULL,
  `stage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `item`, `item_id`, `price`, `quantity`, `store`, `ordernumber`, `stage`) VALUES
(52, 'Shoe', '1', '2400', '1', 'Codestar Technologies', 'Ericobanks-20210424085005', 'pending'),
(53, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Ericobanks-20210424085005', 'pending'),
(54, 'Shoe', '3', '4500', '1', 'Codestar Technologies', 'Ericobanks-20210424085005', 'pending'),
(55, 'Shoe', '4', '1500', '1', 'Codestar Technologies', 'Ericobanks-20210424085005', 'pending'),
(56, 'Shoe', '4', '3000', '2', 'Codestar Technologies', 'Faith-20210425121425', 'pending'),
(57, 'Shoe', '2', '4600', '2', 'Codestar Technologies', 'Faith-20210425121425', 'pending'),
(58, 'Shoe', '1', '2400', '1', 'Codestar Technologies', 'Faith-20210425121425', 'pending'),
(59, 'shoe', '1', '38400', '16', 'Codestar Technologies', 'Elijah-20210426013316', 'pending'),
(60, 'Ladies sport shoes', '7', '3000', '2', 'Wasafi Stores', 'Waluke-20210426043419', 'pending'),
(61, 'Dress', '4', '3000', '2', 'Codestar Technologies', 'Waluke-20210426043419', 'pending'),
(62, 'Ladies sport shoes', '6', '1300', '1', 'Wasafi Stores', 'Kuria-20210426050048', 'pending'),
(63, 'Shoe', '3', '4500', '1', 'Codestar Technologies', 'Kuria-20210426050048', 'pending'),
(64, 'Ladies sport shoes', '7', '1500', '1', 'Wasafi Stores', 'Ericobanks-20210426071137', 'pending'),
(65, 'Ladies sport shoes', '5', '3600', '3', 'Wasafi Stores', 'Ericobanks-20210426071137', 'pending'),
(66, 'Ladies sport shoes', '6', '1300', '1', 'Wasafi Stores', 'Eric Kyalo-20210426170349', 'pending'),
(67, 'Ladies sport shoes', '7', '1500', '1', 'Wasafi Stores', 'Waya-20210426221346', 'pending'),
(68, 'Ladies sport shoes', '7', '3000', '2', 'Wasafi Stores', 'Eric Kyalo-20210426221535', 'pending'),
(69, 'Ladies sport shoes', '8', '3400', '2', 'Wasafi Stores', 'Eric-20210426234449', 'pending'),
(70, 'Ladies sport shoes', '6', '1300', '1', 'Wasafi Stores', 'Were-20210426235837', 'pending'),
(71, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Were-20210427000955', 'pending'),
(72, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Waya-20210427001321', 'pending'),
(73, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'wambilianga-20210427001527', 'pending'),
(74, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'wambilianga-20210427002931', 'pending'),
(75, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Waya-20210427003136', 'pending'),
(76, 'shoe', '1', '2400', '1', 'Codestar Technologies', 'Eric Kyalo-20210430031042', 'pending'),
(77, 'shoe', '1', '2400', '1', 'Codestar Technologies', 'Eric-20210430163246', 'pending'),
(78, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Makel-20210504123439', ''),
(79, 'Ladies sport shoes', '6', '1300', '1', 'Wasafi Stores', 'Makel-20210504123439', ''),
(80, 'Shoe', '2', '2300', '1', 'Codestar Technologies', 'Eric Kyalo-20210507142242', 'Unpaid'),
(81, 'Ladies sport shoes', '6', '1300', '1', 'Wasafi Stores', 'Eric Kyalo-20210507142242', 'Unpaid'),
(82, 'Dress', '4', '1500', '1', 'Codestar Technologies', 'Eric Codestar-20210507145506', 'Unpaid'),
(83, 'Ladies sport shoes', '6', '2600', '2', 'Wasafi Stores', 'Eric Codestar-20210507145506', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `stkpush`
--

CREATE TABLE `stkpush` (
  `id` int(11) NOT NULL,
  `merchantRequestID` varchar(254) NOT NULL,
  `checkoutRequestID` varchar(254) NOT NULL,
  `resultCode` varchar(254) NOT NULL,
  `resultDesc` varchar(254) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `mpesaReceiptNumber` varchar(254) NOT NULL,
  `transactionDate` varchar(254) NOT NULL,
  `phoneNumber` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stkpush`
--

INSERT INTO `stkpush` (`id`, `merchantRequestID`, `checkoutRequestID`, `resultCode`, `resultDesc`, `amount`, `mpesaReceiptNumber`, `transactionDate`, `phoneNumber`) VALUES
(33, '73207-5138861-1', 'ws_CO_190420210211223885', '0', 'The service request is processed successfully.', '1', 'PDJ4Z0VD5A', '20210419021147', '254700711233'),
(34, '106626-297109-1', 'ws_CO_190420210213152994', '0', 'The service request is processed successfully.', '1', 'PDJ9Z0VBB1', '20210419021329', '254700711233'),
(35, '3118-27715562-1', 'ws_CO_190420210240121533', '0', 'The service request is processed successfully.', '1', 'PDJ5Z0WQ07', '20210419024025', '254700711233'),
(0, '22250-15592488-1', 'ws_CO_070520211722413639', '0', 'The service request is processed successfully.', '1', 'PE73OJNTHB', '20210507172318', '254700711233'),
(0, '14371-18050755-1', 'ws_CO_070520211755088373', '0', 'The service request is processed successfully.', '1', 'PE72OLRHYE', '20210507175536', '254700711233');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `store` varchar(254) NOT NULL,
  `item` varchar(254) NOT NULL,
  `category` varchar(254) NOT NULL,
  `description` varchar(254) NOT NULL,
  `price` varchar(254) NOT NULL,
  `pic` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `store`, `item`, `category`, `description`, `price`, `pic`) VALUES
(1, 'Codestar Technologies', 'shoe', 'Men Sport', 'The best sport shoe for kenyan athletes', '2400', 'image4.jpg'),
(2, 'Codestar Technologies', 'Shoe', 'Women Sport', 'Best women sport shoes', '2300', 'image5.jpg'),
(3, 'Codestar Technologies', 'Shoe', 'Men sport shoe', 'The best shoe in africa', '4500', 'image6.jpg'),
(4, 'Codestar Technologies', 'Dress', 'women', 'Best dresses in kenya', '1500', 'image15.jpg'),
(5, 'Wasafi Stores', 'Ladies sport shoes', 'Fashion', 'Buy Sports Shoes for Women. ', '1200', 'image12.jpg'),
(6, 'Wasafi Stores', 'Ladies sport shoes', 'Fashion', 'Buy Sports Shoes for Women. ', '1300', 'image13.jpg'),
(7, 'Wasafi Stores', 'Ladies sport shoes', 'Fashion', 'Buy Sports Shoes for Women.', '1500', 'image14.jpg'),
(8, 'Wasafi Stores', 'Ladies sport shoes', 'Fashion', 'Buy Sports Shoes for Women.', '1700', 'image17.jpg'),
(9, '', 'mmm', ';;;', '...', '900', 'CLERE copy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `shopname` varchar(254) NOT NULL,
  `phone` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `county` varchar(254) NOT NULL,
  `constituency` varchar(254) NOT NULL,
  `areacode` varchar(254) NOT NULL,
  `account` varchar(254) NOT NULL,
  `status` varchar(254) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `shopname`, `phone`, `password`, `county`, `constituency`, `areacode`, `account`, `status`, `date`) VALUES
(1, 'Codestar Technologies', '254700000000', '3da5e8169d2f1426f99fbef54575fe96', 'Murang\'a', 'Kiharu', 'Murang\'a town', 'vendor', 'Active', '2021-04-25 22:50:01'),
(2, 'Wasafi Stores', '0700111222', 'b6c8354dd31990f02ea82d8a40236a9c', 'Kilifi', 'Malindi', 'Kwa chocha', 'vendor', 'Active', '2021-04-26 04:11:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
