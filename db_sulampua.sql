-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2020 at 07:52 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sulampua`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_books`
--

CREATE TABLE `table_books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` tinytext NOT NULL,
  `user_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_books`
--

INSERT INTO `table_books` (`id`, `name`, `description`, `link`, `user_id`, `province_id`) VALUES
(7, 'Buku Pertama', '', 'https://www.google.com/', 1, 2),
(8, 'Buku Kedua', '', 'https://www.google.com/', 1, 2),
(9, 'Buku Ketiga', '', 'https://www.google.com/', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `table_categories`
--

CREATE TABLE `table_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_categories`
--

INSERT INTO `table_categories` (`id`, `name`) VALUES
(59, 'Sosial Dan Kesehatan'),
(60, 'Ekonomi Dan Perbankan'),
(61, 'Pertanian Dan Industri'),
(63, 'Perencanaan'),
(64, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `table_file`
--

CREATE TABLE `table_file` (
  `id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `tahun_2014` float NOT NULL,
  `tahun_2015` float NOT NULL,
  `tahun_2016` float NOT NULL,
  `tahun_2017` float NOT NULL,
  `tahun_2018` float NOT NULL,
  `tahun_2019` float NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_file`
--

INSERT INTO `table_file` (`id`, `province`, `tahun_2014`, `tahun_2015`, `tahun_2016`, `tahun_2017`, `tahun_2018`, `tahun_2019`, `post_id`) VALUES
(81, 'Sulawesi Utara', 0.44, 0.3, 0, 0.39, 0.39, 0.39, 0),
(82, 'Sulawesi Tengah', 0.35, 0.37, 0.35, 0.35, 0.35, 0.35, 0),
(83, 'Sulawesi Selatan', 0.45, 0.4, 0.4, 0.43, 0.43, 0.43, 0),
(84, 'Sulawesi Tenggara', 0.4, 0.38, 0.39, 0.4, 0.4, 0.4, 0),
(85, 'Gorontalo', 0.45, 0.4, 0.41, 0.41, 0.41, 0.41, 0),
(86, 'Sulawesi Barat', 0, 0.36, 0.37, 0.34, 0.34, 0.34, 0),
(87, 'Maluku', 0.33, 0.34, 0.34, 0.32, 0.32, 0.32, 0),
(88, 'Maluku Utara', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 0),
(89, 'Papua Barat', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 0),
(90, 'Papua', 0.46, 0.39, 0.4, 0.4, 0.4, 0.4, 0),
(151, 'Sulawesi Utara', 0.44, 0.3, 0, 0.39, 0.39, 0.39, 15),
(152, 'Sulawesi Tengah', 0.35, 0.37, 0.35, 0.35, 0.35, 0.35, 15),
(153, 'Sulawesi Selatan', 0.45, 0.4, 0.4, 0.43, 0.43, 0.43, 15),
(154, 'Sulawesi Tenggara', 0.4, 0.38, 0.39, 0.4, 0.4, 0.4, 15),
(155, 'Gorontalo', 0.45, 0.4, 0.41, 0.41, 0.41, 0.41, 15),
(156, 'Sulawesi Barat', 0, 0.36, 0.37, 0.34, 0.34, 0.34, 15),
(157, 'Maluku', 0.33, 0.34, 0.34, 0.32, 0.32, 0.32, 15),
(158, 'Maluku Utara', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 15),
(159, 'Papua Barat', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 15),
(160, 'Papua', 0.46, 0.39, 0.4, 0.4, 0.4, 0.4, 15),
(161, 'Sulawesi Utara', 0.44, 0.3, 0, 0.39, 0.39, 0.39, 16),
(162, 'Sulawesi Tengah', 0.35, 0.37, 0.35, 0.35, 0.35, 0.35, 16),
(163, 'Sulawesi Selatan', 0.45, 0.4, 0.4, 0.43, 0.43, 0.43, 16),
(164, 'Sulawesi Tenggara', 0.4, 0.38, 0.39, 0.4, 0.4, 0.4, 16),
(165, 'Gorontalo', 0.45, 0.4, 0.41, 0.41, 0.41, 0.41, 16),
(166, 'Sulawesi Barat', 0, 0.36, 0.37, 0.34, 0.34, 0.34, 16),
(167, 'Maluku', 0.33, 0.34, 0.34, 0.32, 0.32, 0.32, 16),
(168, 'Maluku Utara', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 16),
(169, 'Papua Barat', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 16),
(170, 'Papua', 0.46, 0.39, 0.4, 0.4, 0.4, 0.4, 16),
(171, 'Sulawesi Utara', 0.44, 0.3, 0, 0.39, 0.39, 0.39, 17),
(172, 'Sulawesi Tengah', 0.35, 0.37, 0.35, 0.35, 0.35, 0.35, 17),
(173, 'Sulawesi Selatan', 0.45, 0.4, 0.4, 0.43, 0.43, 0.43, 17),
(174, 'Sulawesi Tenggara', 0.4, 0.38, 0.39, 0.4, 0.4, 0.4, 17),
(175, 'Gorontalo', 0.45, 0.4, 0.41, 0.41, 0.41, 0.41, 17),
(176, 'Sulawesi Barat', 0, 0.36, 0.37, 0.34, 0.34, 0.34, 17),
(177, 'Maluku', 0.33, 0.34, 0.34, 0.32, 0.32, 0.32, 17),
(178, 'Maluku Utara', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 17),
(179, 'Papua Barat', 0.32, 0.29, 0.31, 0.33, 0.33, 0.33, 17),
(180, 'Papua', 0.46, 0.39, 0.4, 0.4, 0.4, 0.4, 17),
(315, 'Kalimantan Barat', 5.03, 4.88, 5.2, 5.17, 5.17, 5.17, 57),
(316, 'Kalimantan Tengah', 6.21, 7.01, 6.35, 6.72, 6.72, 6.72, 57),
(317, 'Kalimantan Selatan', 4.84, 3.82, 4.4, 5.28, 5.28, 5.28, 57),
(318, 'Kalimantan Timur', 1.17, -1.2, -0.38, 3.13, 3.13, 3.13, 57),
(319, 'Kalimantan Utara', 8.18, 3.4, 3.75, 6.59, 6.59, 6.59, 57),
(320, 'Sulawesi Utara', 6.31, 6.12, 6.16, 6.31, 6.31, 6.31, 57),
(321, 'Sulawesi Tengah', 5.11, 15.56, 9.98, 7.14, 7.14, 7.14, 57),
(322, 'Sulawesi Selatan', 7.54, 7.19, 7.42, 7.21, 7.21, 7.21, 57),
(323, 'Sulawesi Tenggara', 6.26, 6.88, 6.51, 6.76, 6.76, 6.76, 57),
(324, 'Gorontalo', 7.27, 6.22, 6.52, 6.73, 6.73, 6.73, 57),
(325, 'Sulawesi Barat', 8.86, 7.31, 6.01, 6.62, 6.62, 6.62, 57),
(326, 'Maluku', 6.64, 5.48, 5.73, 5.82, 5.82, 5.82, 57),
(327, 'Maluku Utara', 5.49, 6.1, 5.77, 7.67, 7.67, 7.67, 57),
(328, 'Papua Barat', 5.49, 6.1, 5.77, 7.67, 7.67, 7.67, 57),
(329, 'Papua', 3.65, 7.35, 9.14, 4.64, 4.64, 4.64, 57),
(330, 'Kalimantan Barat', 0, 0, 0, 0, 0, 0, 58),
(331, 'Kalimantan Tengah', 0, 0, 0, 0, 0, 0, 58),
(332, 'Kalimantan Selatan', 0, 0, 0, 0, 0, 0, 58),
(333, 'Kalimantan Timur', 0, 0, 0, 0, 0, 0, 58),
(334, 'Kalimantan Utara', 0, 0, 0, 0, 0, 0, 58),
(335, 'Sulawesi Utara', 24042800, 26395800, 320499000, 20700600, 20700600, 20700600, 58),
(336, 'Sulawesi Tengah', 17523000, 20972400, 22632300, 26107000, 26107000, 26107000, 58),
(337, 'Sulawesi Selatan', 58165200, 70874700, 78727500, 86751000, 86751000, 86751000, 58),
(338, 'Sulawesi Tenggara', 0, 0, 0, 0, 0, 0, 58),
(339, 'Gorontalo', 0, 0, 0, 0, 0, 0, 58),
(340, 'Sulawesi Barat', 0, 4836100, 5852630, 6849930, 6849930, 6849930, 58),
(341, 'Maluku', 0, 10807500, 11603000, 13023100, 13023100, 13023100, 58),
(342, 'Maluku Utara', 6043560, 6904360, 7263750, 8524670, 8524670, 8524670, 58),
(343, 'Papua Barat', 6043560, 6904360, 7263750, 8524670, 8524670, 8524670, 58),
(344, 'Papua', 34105900, 36913900, 40144500, 41802100, 41802100, 41802100, 58),
(345, 'Kalimantan Barat', 0, 0, 0, 0, 0, 0, 59),
(346, 'Kalimantan Tengah', 0, 0, 0, 0, 0, 0, 59),
(347, 'Kalimantan Selatan', 0, 0, 0, 0, 0, 0, 59),
(348, 'Kalimantan Timur', 0, 0, 0, 0, 0, 0, 59),
(349, 'Kalimantan Utara', 0, 0, 0, 0, 0, 0, 59),
(350, 'Sulawesi Utara', 9463560, 9795720, 166122000, 22259200, 22259200, 22259200, 59),
(351, 'Sulawesi Tengah', 3828170, 4242790, 4381960, 4824970, 4824970, 4824970, 59),
(352, 'Sulawesi Selatan', 42462400, 46161400, 46922500, 46998300, 46998300, 46998300, 59),
(353, 'Sulawesi Tenggara', 0, 0, 0, 0, 0, 0, 59),
(354, 'Gorontalo', 0, 0, 0, 0, 0, 0, 59),
(355, 'Sulawesi Barat', 0, 299356, 269869, 325070, 325070, 325070, 59),
(356, 'Maluku', 0, 3822360, 3758040, 3945900, 3945900, 3945900, 59),
(357, 'Maluku Utara', 1104010, 1215740, 1197310, 1350140, 1350140, 1350140, 59),
(358, 'Papua Barat', 1104010, 1215740, 1197310, 1350140, 1350140, 1350140, 59),
(359, 'Papua', 7823780, 7919160, 7640860, 8327350, 8327350, 8327350, 59),
(360, 'Kalimantan Barat', 8.54, 8.03, 7.87, 7.88, 7.88, 7.88, 60),
(361, 'Kalimantan Tengah', 6.03, 5.94, 5.66, 5.37, 5.37, 5.37, 60),
(362, 'Kalimantan Selatan', 4.68, 4.99, 4.85, 4.73, 4.73, 4.73, 60),
(363, 'Kalimantan Timur', 6.42, 6.23, 6.11, 6.19, 6.19, 6.19, 60),
(364, 'Kalimantan Utara', 0, 6.24, 6.23, 7.22, 7.22, 7.22, 60),
(365, 'Sulawesi Utara', 8.75, 8.65, 8.34, 8.1, 8.1, 8.1, 60),
(366, 'Sulawesi Tengah', 13.93, 14.66, 14.45, 14.14, 14.14, 14.14, 60),
(367, 'Sulawesi Selatan', 10.28, 9.39, 9.4, 9.38, 9.38, 9.38, 60),
(368, 'Sulawesi Tenggara', 14.05, 12.9, 12.88, 12.81, 12.81, 12.81, 60),
(369, 'Gorontalo', 17.44, 18.32, 17.72, 17.65, 17.65, 17.65, 60),
(370, 'Sulawesi Barat', 12.27, 12.4, 11.74, 11.3, 11.3, 11.3, 60),
(371, 'Maluku', 19.13, 19.51, 19.18, 18.45, 18.45, 18.45, 60),
(372, 'Maluku Utara', 7.3, 6.84, 6.33, 6.35, 6.35, 6.35, 60),
(373, 'Papua Barat', 7.3, 6.84, 6.33, 6.35, 6.35, 6.35, 60),
(374, 'Papua', 30.05, 28.17, 28.54, 27.62, 27.62, 27.62, 60),
(375, 'Kalimantan Barat', 8.07, 8.44, 8, 7.86, 7.86, 7.86, 61),
(376, 'Kalimantan Tengah', 6.07, 5.91, 5.36, 5.26, 5.26, 5.26, 61),
(377, 'Kalimantan Selatan', 4.81, 4.72, 4.52, 4.7, 4.7, 4.7, 61),
(378, 'Kalimantan Timur', 6.31, 6.1, 6, 6.08, 6.08, 6.08, 61),
(379, 'Kalimantan Utara', 0, 6.32, 6.99, 6.96, 6.96, 6.96, 61),
(380, 'Sulawesi Utara', 8.26, 8.98, 8.2, 7.9, 7.9, 7.9, 61),
(381, 'Sulawesi Tengah', 13.61, 14.07, 14.09, 14.22, 14.22, 14.22, 61),
(382, 'Sulawesi Selatan', 9.54, 10.12, 9.24, 9.48, 9.48, 9.48, 61),
(383, 'Sulawesi Tenggara', 12.77, 13.74, 12.77, 15.29, 15.29, 15.29, 61),
(384, 'Gorontalo', 17.41, 18.16, 17.63, 17.14, 17.14, 17.14, 61),
(385, 'Sulawesi Barat', 12.05, 11.9, 11.19, 11.18, 11.18, 11.18, 61),
(386, 'Maluku', 18.44, 19.36, 19.26, 18.29, 18.29, 18.29, 61),
(387, 'Maluku Utara', 7.41, 6.22, 6.41, 6.44, 6.44, 6.44, 61),
(388, 'Papua Barat', 7.41, 6.22, 6.41, 6.44, 6.44, 6.44, 61),
(389, 'Papua', 27.8, 28.4, 28.4, 27.76, 27.76, 27.76, 61),
(390, 'Kalimantan Barat', 3719770, 4571000, 4494430, 5389200, 5389200, 5389200, 62),
(391, 'Kalimantan Tengah', 3129700, 3463600, 3548500, 4100960, 4100960, 4100960, 62),
(392, 'Kalimantan Selatan', 4793160, 4893870, 5218110, 5604990, 5604990, 5604990, 62),
(393, 'Kalimantan Timur', 11285800, 8536210, 7985730, 8154750, 8154750, 8154750, 62),
(394, 'Kalimantan Utara', 1513350, 1565050, 2332990, 2223750, 2223750, 2223750, 62),
(395, 'Sulawesi Utara', 2320810, 2557560, 2885190, 3731900, 3731900, 3731900, 62),
(396, 'Sulawesi Tengah', 2440230, 2768260, 3175690, 3638340, 3638340, 3638340, 62),
(397, 'Sulawesi Selatan', 5503160, 6170180, 7162590, 9055280, 9055280, 9055280, 62),
(398, 'Sulawesi Tenggara', 2189560, 2263040, 2809720, 3534580, 3534580, 3534580, 62),
(399, 'Gorontalo', 1209050, 1419850, 1584310, 1773050, 1773050, 1773050, 62),
(400, 'Sulawesi Barat', 1240240, 1438120, 1688610, 1831990, 1831990, 1831990, 62),
(401, 'Maluku', 1823030, 2297210, 2744940, 2817040, 2817040, 2817040, 62),
(402, 'Maluku Utara', 1508580, 1827930, 2022260, 2275580, 2275580, 2275580, 62),
(403, 'Papua Barat', 5762350, 6100540, 6740390, 7055400, 7055400, 7055400, 62),
(404, 'Papua', 10709800, 11987600, 12567800, 13006800, 13006800, 13006800, 62),
(405, '', 0, 0, 0, 0, 0, 0, 62),
(406, 'Sumber : Statistik indonesia', 0, 0, 0, 0, 0, 0, 62),
(407, 'Kalimantan Barat', 3652910, 4576000, 4320620, 5259790, 5259790, 5259790, 63),
(408, 'Kalimantan Tengah', 3235800, 3652060, 3174710, 3686890, 3686890, 3686890, 63),
(409, 'Kalimantan Selatan', 4917830, 5428870, 5178720, 5865580, 5865580, 5865580, 63),
(410, 'Kalimantan Timur', 11274600, 9336210, 7601240, 8239050, 8239050, 8239050, 63),
(411, 'Kalimantan Utara', 642365, 2364620, 2556530, 2449160, 2449160, 2449160, 63),
(412, 'Sulawesi Utara', 2229480, 2641790, 2801140, 3580570, 3580570, 3580570, 63),
(413, 'Sulawesi Tengah', 2445660, 2837560, 3178110, 3445780, 3445780, 3445780, 63),
(414, 'Sulawesi Selatan', 5600390, 6167110, 6930980, 8892160, 8892160, 8892160, 63),
(415, 'Sulawesi Tenggara', 2088600, 2321890, 2663870, 3554110, 3554110, 3554110, 63),
(416, 'Gorontalo', 1204490, 1468730, 1595900, 1738200, 1738200, 1738200, 63),
(417, 'Sulawesi Barat', 1227420, 1504430, 1765980, 1927380, 1927380, 1927380, 63),
(418, 'Maluku', 1726130, 2355710, 2798920, 2834170, 2834170, 2834170, 63),
(419, 'Maluku Utara', 1481560, 1824430, 2023860, 2258810, 2258810, 2258810, 63),
(420, 'Papua Barat', 5428850, 6766730, 6464610, 7019060, 7019060, 7019060, 63),
(421, 'Papua', 10303800, 13268500, 11968500, 13303300, 13303300, 13303300, 63),
(422, '', 0, 0, 0, 0, 0, 0, 63),
(423, 'Sumber : Statistik Indonesia', 0, 0, 0, 0, 0, 0, 63),
(424, 'Kalimantan Barat', 1380000, 1560000, 0, 1882900, 1882900, 1882900, 64),
(425, 'Kalimantan Tengah', 1723970, 1896370, 2057550, 2222990, 2222990, 2222990, 64),
(426, 'Kalimantan Selatan', 1620000, 1870000, 2.085, 2258000, 2258000, 2258000, 64),
(427, 'Kalimantan Timur', 1886320, 2026130, 2161250, 2, 2, 2, 64),
(428, 'Kalimantan Utara', 0, 0, 0, 2358800, 2358800, 2358800, 64),
(429, 'Sulawesi Utara', 1900000, 2150000, 2400000, 2598000, 2598000, 2598000, 64),
(430, 'Sulawesi Tengah', 1250000, 1500000, 1670000, 1807780, 1807780, 1807780, 64),
(431, 'Sulawesi Selatan', 1800000, 2000000, 2250000, 2500000, 2500000, 2500000, 64),
(432, 'Sulawesi Tenggara', 1400000, 1652000, 1854000, 2002620, 2002620, 2002620, 64),
(433, 'Gorontalo', 1325000, 1600000, 1875000, 2030000, 2030000, 2030000, 64),
(434, 'Sulawesi Barat', 1400000, 1655500, 1864000, 2017780, 2017780, 2017780, 64),
(435, 'Maluku', 1415000, 1650000, 1775000, 1925000, 1925000, 1925000, 64),
(436, 'Maluku Utara', 1440750, 1577620, 1681270, 1975150, 1975150, 1975150, 64),
(437, 'Papua Barat', 1440750, 1577620, 1681270, 1975150, 1975150, 1975150, 64),
(438, 'Papua', 1900000, 2193000, 2435000, 2663650, 2663650, 2663650, 64),
(439, 'Kalimantan Barat', 80.58, 76.4, 75.28, 79.13, 79.13, 79.13, 65),
(440, 'Kalimantan Tengah', 79, 73.46, 74.77, 76.12, 76.12, 76.12, 65),
(441, 'Kalimantan Selatan', 70.84, 74.76, 73.43, 76.25, 76.25, 76.25, 65),
(442, 'Kalimantan Timur', 77.77, 81.24, 73.64, 72.86, 72.86, 72.86, 65),
(443, 'Kalimantan Utara', 0, 80.16, 76.98, 81.06, 81.06, 81.06, 65),
(444, 'Sulawesi Utara', 83.94, 79.4, 76.34, 75.57, 75.57, 75.57, 65),
(445, 'Sulawesi Tengah', 74.36, 76.67, 72.2, 69.79, 69.79, 69.79, 65),
(446, 'Sulawesi Selatan', 75.3, 67.9, 68.53, 70.79, 70.79, 70.79, 65),
(447, 'Sulawesi Tenggara', 70.13, 69.44, 71.13, 68.51, 68.51, 68.51, 65),
(448, 'Gorontalo', 73.82, 76.77, 77.48, 73.92, 73.92, 73.92, 65),
(449, 'Sulawesi Barat', 76.69, 68.25, 72.37, 67.74, 67.74, 67.74, 65),
(450, 'Maluku', 72.72, 65.9, 78.2, 77.45, 77.45, 77.45, 65),
(451, 'Maluku Utara', 67.9, 61.52, 73.27, 70.73, 70.73, 70.73, 65),
(452, 'Papua Barat', 67.9, 61.52, 73.27, 70.73, 70.73, 70.73, 65),
(453, 'Papua', 62.15, 57.55, 61.02, 61.34, 61.34, 61.34, 65),
(454, 'Kalimantan Barat', 64.89, 65.59, 65.88, 66.26, 66.26, 66.26, 66),
(455, 'Kalimantan Tengah', 67.77, 68.53, 69.13, 69.79, 69.79, 69.79, 66),
(456, 'Kalimantan Selatan', 67.63, 68.38, 69.05, 69.65, 69.65, 69.65, 66),
(457, 'Kalimantan Timur', 73.82, 74.17, 74.59, 75.12, 75.12, 75.12, 66),
(458, 'Kalimantan Utara', 68.64, 68.76, 69.2, 69.84, 69.84, 69.84, 66),
(459, 'Sulawesi Utara', 69.96, 70.39, 71.05, 71.66, 71.66, 71.66, 66),
(460, 'Sulawesi Tengah', 66.43, 66.76, 67.47, 68.11, 68.11, 68.11, 66),
(461, 'Sulawesi Selatan', 68.49, 69.15, 69.76, 70.34, 70.34, 70.34, 66),
(462, 'Sulawesi Tenggara', 68.07, 68.75, 69.31, 69.86, 69.86, 69.86, 66),
(463, 'Gorontalo', 65.17, 65.86, 66.29, 67.01, 67.01, 67.01, 66),
(464, 'Sulawesi Barat', 62.24, 62.96, 63.6, 64.3, 64.3, 64.3, 66),
(465, 'Maluku', 66.74, 67.05, 67.6, 68.19, 68.19, 68.19, 66),
(466, 'Maluku Utara', 65.18, 65.91, 66.63, 67.2, 67.2, 67.2, 66),
(467, 'Papua Barat', 61.28, 61.73, 62.21, 62.99, 62.99, 62.99, 66),
(468, 'Papua', 56.75, 57.25, 58.05, 59.09, 59.09, 59.09, 66),
(469, 'Kalimantan Barat', 28, 30, 33, 35, 35, 35, 67),
(470, 'Kalimantan Tengah', 36, 40, 43, 48, 48, 48, 67),
(471, 'Kalimantan Selatan', 32, 34, 36, 38, 38, 38, 67),
(472, 'Kalimantan Timur', 157, 147, 145, 165, 165, 165, 67),
(473, 'Kalimantan Utara', 95, 96, 99, 111, 111, 111, 67),
(474, 'Sulawesi Utara', 33800, 37825, 41326, 44879, 44879, 44879, 67),
(475, 'Sulawesi Tengah', 31870, 37390, 41110, 45240, 45240, 45240, 67),
(476, 'Sulawesi Selatan', 35344.9, 39948, 43857, 47927.9, 47927.9, 47927.9, 67),
(477, 'Sulawesi Tenggara', 32.11, 34.04, 38.02, 41.28, 41.28, 41.28, 67),
(478, 'Gorontalo', 22582.5, 25143.4, 27544.8, 29565.4, 29565.4, 29565.4, 67),
(479, 'Sulawesi Barat', 23415.1, 25727.7, 27512.6, 29740.1, 29740.1, 29740.1, 67),
(480, 'Maluku', 19.1, 20.37, 21.6, 22.86, 22.86, 22.86, 67),
(481, 'Maluku Utara', 21.11, 22.92, 24.58, 26.69, 26.69, 26.69, 67),
(482, 'Papua Barat', 21.11, 22.92, 24.58, 26.69, 26.69, 26.69, 67),
(483, 'Papua', 43134.2, 47726.1, 54002.1, 57866.3, 57866.3, 57866.3, 67),
(484, 'Kalimantan Barat', 132, 146, 161, 177, 177, 177, 68),
(485, 'Kalimantan Tengah', 89, 100, 111, 125, 125, 125, 68),
(486, 'Kalimantan Selatan', 127, 137, 146, 159, 159, 159, 68),
(487, 'Kalimantan Timur', 527, 505, 508, 592, 592, 592, 68),
(488, 'Kalimantan Utara', 59, 61, 66, 76, 76, 76, 68),
(489, 'Sulawesi Utara', 80, 91, 100, 110, 110, 110, 68),
(490, 'Sulawesi Tengah', 90, 107, 120, 133, 133, 133, 68),
(491, 'Sulawesi Selatan', 298, 340, 377, 415, 415, 415, 68),
(492, 'Sulawesi Tenggara', 78, 87, 96, 107, 107, 107, 68),
(493, 'Gorontalo', 25, 28, 31, 34, 34, 34, 68),
(494, 'Sulawesi Barat', 29, 32, 35, 39, 39, 39, 68),
(495, 'Maluku', 31, 34, 37, 39, 39, 39, 68),
(496, 'Maluku Utara', 24, 26, 29, 32, 32, 32, 68),
(497, 'Papua Barat', 58, 62, 66, 71, 71, 71, 68),
(498, 'Papua', 133, 150, 173, 188, 188, 188, 68),
(499, 'Kalimantan Barat', 527850, 527637, 530578, 529762, 529762, 529762, 69),
(500, 'Kalimantan Tengah', 0, 396085, 394593, 373746, 373746, 373746, 69),
(501, 'Kalimantan Selatan', 439394, 551702, 556210, 549988, 549988, 549988, 69),
(502, 'Kalimantan Timur', 55485, 57087, 62062, 94410, 94410, 94410, 69),
(503, 'Kalimantan Utara', 0, 0, 30269, 30445.5, 30445.5, 30445.5, 69),
(504, 'Sulawesi Utara', 0, 57171.4, 0, 0, 0, 0, 69),
(505, 'Sulawesi Tengah', 80196.9, 148759, 148442, 151582, 151582, 151582, 69),
(506, 'Sulawesi Selatan', 623139, 628148, 0, 0, 0, 0, 69),
(507, 'Sulawesi Tenggara', 121545, 120355, 126723, 128685, 128685, 128685, 69),
(508, 'Gorontalo', 33114, 34999, 35685, 34764, 34764, 34764, 69),
(509, 'Sulawesi Barat', 63715, 62046, 64063, 64232, 64232, 64232, 69),
(510, 'Maluku', 25, 18492, 19176.3, 20862, 20862, 20862, 69),
(511, 'Maluku Utara', 12596, 15324.2, 0, 0, 0, 0, 69),
(512, 'Papua Barat', 0, 19661, 0, 18121, 18121, 18121, 69),
(513, 'Papua', 50490, 50490, 50490, 0, 0, 0, 69),
(514, 'Kalimantan Barat', 0, 0, 0, 0, 0, 0, 70),
(515, 'Kalimantan Tengah', 0, 0, 0, 0, 0, 0, 70),
(516, 'Kalimantan Selatan', 447297, 0, 0, 0, 0, 0, 70),
(517, 'Kalimantan Timur', 0, 0, 0, 0, 0, 0, 70),
(518, 'Kalimantan Utara', 0, 0, 16903, 14030.3, 14030.3, 14030.3, 70),
(519, 'Sulawesi Utara', 110925, 0, 0, 0, 0, 0, 70),
(520, 'Sulawesi Tengah', 213649, 209057, 221498, 237002, 237002, 237002, 70),
(521, 'Sulawesi Selatan', 1040020, 1044030, 0, 0, 0, 0, 70),
(522, 'Sulawesi Tenggara', 140408, 140375, 173118, 171398, 171398, 171398, 70),
(523, 'Gorontalo', 57991, 57223, 0, 0, 0, 0, 70),
(524, 'Sulawesi Barat', 94351, 93470, 121420, 140841, 140841, 140841, 70),
(525, 'Maluku', 24399, 21623, 21141, 25736, 25736, 25736, 70),
(526, 'Maluku Utara', 21192, 21438, 0, 0, 0, 0, 70),
(527, 'Papua Barat', 6288, 0, 0, 0, 0, 0, 70),
(528, 'Papua', 41881, 41354, 0, 0, 0, 0, 70),
(529, 'Kalimantan Barat', 0.402, 0.33, 0.331, 0.329, 0.329, 0.329, 71),
(530, 'Kalimantan Tengah', 0.365, 0.3, 0.347, 0.327, 0.327, 0.327, 71),
(531, 'Kalimantan Selatan', 0.326, 0.33, 0.351, 0.347, 0.347, 0.347, 71),
(532, 'Kalimantan Timur', 0.361, 0.32, 0.328, 0.333, 0.333, 0.333, 71),
(533, 'Kalimantan Utara', 0, 0.31, 0.305, 0.313, 0.313, 0.313, 71),
(534, 'Sulawesi Utara', 0.436, 0.37, 0.379, 0.394, 0.394, 0.394, 71),
(535, 'Sulawesi Tengah', 0.352, 0.37, 0.347, 0.345, 0.345, 0.345, 71),
(536, 'Sulawesi Selatan', 0.448, 0.4, 0.4, 0.429, 0.429, 0.429, 71),
(537, 'Sulawesi Tenggara', 0.399, 0.38, 0.388, 0.404, 0.404, 0.404, 71),
(538, 'Gorontalo', 0.453, 0.4, 0.41, 0.405, 0.405, 0.405, 71),
(539, 'Sulawesi Barat', 0.378, 0.36, 0.371, 0.339, 0.339, 0.339, 71),
(540, 'Maluku', 0.33, 0.34, 0.344, 0.321, 0.321, 0.321, 71),
(541, 'Maluku Utara', 0.322, 0.29, 0.309, 0.33, 0.33, 0.33, 71),
(542, 'Papua Barat', 0.405, 0.43, 0.401, 0.387, 0.387, 0.387, 71),
(543, 'Papua', 0.459, 0.39, 0.399, 0.398, 0.398, 0.398, 71),
(544, '', 0, 0, 0, 0, 0, 0, 71),
(545, '', 0, 0, 0, 0, 0, 0, 71),
(546, 'Ket : 2014 menggunakan data tabel dinamis, 2015 - 2019 menggunakan data BRS', 0, 0, 0, 0, 0, 0, 71),
(547, 'Kalimantan Barat', 0.423, 0.33, 0.341, 0.327, 0.327, 0.327, 72),
(548, 'Kalimantan Tengah', 0.419, 0.33, 0.33, 0.343, 0.343, 0.343, 72),
(549, 'Kalimantan Selatan', 0.388, 0.35, 0.332, 0.347, 0.347, 0.347, 72),
(550, 'Kalimantan Timur', 0.336, 0.32, 0.315, 0.33, 0.33, 0.33, 72),
(551, 'Kalimantan Utara', 0, 0.29, 0.3, 0.308, 0.308, 0.308, 72),
(552, 'Sulawesi Utara', 0.464, 0.37, 0.386, 0.396, 0.396, 0.396, 72),
(553, 'Sulawesi Tengah', 0.406, 0.37, 0.362, 0.355, 0.355, 0.355, 72),
(554, 'Sulawesi Selatan', 0.436, 0.42, 0.426, 0.407, 0.407, 0.407, 72),
(555, 'Sulawesi Tenggara', 0.454, 0.4, 0.402, 0.394, 0.394, 0.394, 72),
(556, 'Gorontalo', 0.409, 0.42, 0.419, 0.43, 0.43, 0.43, 72),
(557, 'Sulawesi Barat', 0.329, 0.36, 0.364, 0.354, 0.354, 0.354, 72),
(558, 'Maluku', 0.338, 0.34, 0.348, 0.343, 0.343, 0.343, 72),
(559, 'Maluku Utara', 0.335, 0.28, 0.286, 0.317, 0.317, 0.317, 72),
(560, 'Papua Barat', 0.437, 0.44, 0.373, 0.39, 0.39, 0.39, 72),
(561, 'Papua', 0.35, 0.42, 0.39, 0.397, 0.397, 0.397, 72),
(562, '', 0, 0, 0, 0, 0, 0, 72),
(563, '', 0, 0, 0, 0, 0, 0, 72),
(564, 'Ket : 2014 menggunakan data tabel dinamis, 2015 - 2019 menggunakan data BRS', 0, 0, 0, 0, 0, 0, 72),
(565, 'Kalimantan Barat', 4716090, 4789570, 4861740, 4932500, 4932500, 4932500, 73),
(566, 'Kalimantan Tengah', 2439860, 2495040, 2550190, 2605270, 2605270, 2605270, 73),
(567, 'Kalimantan Selatan', 3922790, 3989790, 4055480, 4119790, 4119790, 4119790, 73),
(568, 'Kalimantan Timur', 3351430, 3426640, 3501230, 3575450, 3575450, 3575450, 73),
(569, 'Kalimantan Utara', 618208, 641936, 666333, 691058, 691058, 691058, 73),
(570, 'Sulawesi Utara', 2386600, 2412120, 2346920, 2461030, 2461030, 2461030, 73),
(571, 'Sulawesi Tengah', 2831280, 2876690, 2921720, 2966320, 2966320, 2966320, 73),
(572, 'Sulawesi Selatan', 8432160, 8520300, 8606380, 8690290, 8690290, 8690290, 73),
(573, 'Sulawesi Tenggara', 2448080, 2499540, 2551010, 2602390, 2602390, 2602390, 73),
(574, 'Gorontalo', 1155630, 1133240, 1150760, 1168190, 1168190, 1168190, 73),
(575, 'Sulawesi Barat', 1258090, 1282180, 1306480, 1330960, 1330960, 1330960, 73),
(576, 'Maluku', 1657410, 1686470, 1715550, 1744650, 1744650, 1744650, 73),
(577, 'Maluku Utara', 1138670, 1162340, 1185910, 1209340, 1209340, 1209340, 73),
(578, 'Papua Barat', 849809, 871510, 893362, 915961, 915961, 915961, 73),
(579, 'Papua', 3091050, 3149380, 3207440, 3265200, 3265200, 3265200, 73),
(580, 'Kalimantan Barat', 32, 33, 33, 33, 33, 33, 74),
(581, 'Kalimantan Tengah', 16, 16, 17, 17, 17, 17, 74),
(582, 'Kalimantan Selatan', 101, 103, 105, 109.77, 109.77, 109.77, 74),
(583, 'Kalimantan Timur', 26, 27, 27.49, 28.08, 28.08, 28.08, 74),
(584, 'Kalimantan Utara', 8, 9, 9, 9.16, 9.16, 9.16, 74),
(585, 'Sulawesi Utara', 172, 174, 176, 178, 178, 178, 74),
(586, 'Sulawesi Tengah', 46, 47, 47, 47.97, 47.97, 47.97, 74),
(587, 'Sulawesi Selatan', 180, 182, 184, 190, 190, 190, 74),
(588, 'Sulawesi Tenggara', 64, 66, 67, 68.36, 68.36, 68.36, 74),
(589, 'Gorontalo', 99, 101, 102, 94, 94, 94, 74),
(590, 'Sulawesi Barat', 75, 76, 78, 79, 79, 79, 74),
(591, 'Maluku', 35, 36, 37, 32, 32, 32, 74),
(592, 'Maluku Utara', 36, 36, 37, 37.05, 37.05, 37.05, 74),
(593, 'Papua Barat', 9, 9, 9, 8.68, 8.68, 8.68, 74),
(594, 'Papua', 10, 10, 10, 10.1, 10.1, 10.1, 74),
(595, '', 0, 0, 0, 0, 0, 0, 74),
(596, '', 0, 0, 0, 0, 0, 0, 74),
(597, '2014 - 2016 berdasarkan bps.go.id, 2017 - 2019 berdasarkan website provinsi masing-masing', 0, 0, 0, 0, 0, 0, 74),
(598, 'Kalimantan Barat', 103.92, 103.84, 103.75, 103.67, 103.67, 103.67, 75),
(599, 'Kalimantan Tengah', 109.15, 0, 0, 0, 0, 0, 75),
(600, 'Kalimantan Selatan', 102.66, 102.75, 102.83, 102.91, 102.91, 102.91, 75),
(601, 'Kalimantan Timur', 0, 109.8, 109.44, 109.08, 109.08, 109.08, 75),
(602, 'Kalimantan Utara', 0, 0, 0, 0, 0, 0, 75),
(603, 'Sulawesi Utara', 104.18, 104.3, 104.2, 104.1, 104.1, 104.1, 75),
(604, 'Sulawesi Tengah', 104.51, 104.45, 104.37, 104.31, 104.31, 104.31, 75),
(605, 'Sulawesi Selatan', 95.4, 95.48, 95.54, 95.6, 95.6, 95.6, 75),
(606, 'Sulawesi Tenggara', 100.9, 101.01, 101.08, 101.54, 101.54, 101.54, 75),
(607, 'Gorontalo', 100.38, 100.38, 100.38, 100.38, 100.38, 100.38, 75),
(608, 'Sulawesi Barat', 100.59, 100.64, 100.68, 100.72, 100.72, 100.72, 75),
(609, 'Maluku', 101.8, 101.77, 101.74, 101.71, 101.71, 101.71, 75),
(610, 'Maluku Utara', 104.28, 104.23, 104.2, 104, 104, 104, 75),
(611, 'Papua Barat', 0, 0, 0, 0, 0, 0, 75),
(612, 'Papua', 111.89, 111.63, 111.37, 111.11, 111.11, 111.11, 75),
(613, 'Kalimantan Barat', 69.93, 69.68, 69.32, 68.63, 68.63, 68.63, 76),
(614, 'Kalimantan Tengah', 68.56, 71.11, 71.3, 67.74, 67.74, 67.74, 76),
(615, 'Kalimantan Selatan', 69.46, 69.73, 71.57, 70.06, 70.06, 70.06, 76),
(616, 'Kalimantan Timur', 64.1, 62.39, 67.79, 63.75, 63.75, 63.75, 76),
(617, 'Kalimantan Utara', 0, 63.45, 62.4, 68.24, 68.24, 68.24, 76),
(618, 'Sulawesi Utara', 59.99, 61.28, 65.11, 60.85, 60.85, 60.85, 76),
(619, 'Sulawesi Tengah', 66.76, 67.51, 72.28, 67.14, 67.14, 67.14, 76),
(620, 'Sulawesi Selatan', 62, 60.94, 62.92, 60.98, 60.98, 60.98, 76),
(621, 'Sulawesi Tenggara', 66.87, 68.35, 73.47, 68.7, 68.7, 68.7, 76),
(622, 'Gorontalo', 62.84, 63.65, 67.89, 64.78, 64.78, 64.78, 76),
(623, 'Sulawesi Barat', 71.06, 70.27, 71.9, 66.96, 66.96, 66.96, 76),
(624, 'Maluku', 60.92, 64.47, 64.51, 60.18, 60.18, 60.18, 76),
(625, 'Maluku Utara', 63.88, 66.43, 66.19, 63.65, 63.65, 63.65, 76),
(626, 'Papua Barat', 71.05, 68.68, 70.05, 54.66, 54.66, 54.66, 76),
(627, 'Papua', 78.67, 79.57, 76.7, 76.94, 76.94, 76.94, 76),
(628, '', 0, 0, 0, 0, 0, 0, 76),
(629, '', 0, 0, 0, 0, 0, 0, 76),
(630, '', 0, 0, 0, 0, 0, 0, 76),
(631, '', 0, 0, 0, 0, 0, 0, 76),
(632, '', 0, 0, 0, 0, 0, 0, 76),
(633, 'Kalimantan Barat', 72.21, 70.73, 70.75, 72.03, 72.03, 72.03, 77),
(634, 'Kalimantan Tengah', 72.93, 73.05, 70.97, 73.64, 73.64, 73.64, 77),
(635, 'Kalimantan Selatan', 72.95, 73.21, 71.3, 73.41, 73.41, 73.41, 77),
(636, 'Kalimantan Timur', 69.23, 67.81, 66.06, 65.45, 65.45, 65.45, 77),
(637, 'Kalimantan Utara', 0, 65.7, 62.96, 68.33, 68.33, 68.33, 77),
(638, 'Sulawesi Utara', 66.14, 66.24, 65.55, 68.78, 68.78, 68.78, 77),
(639, 'Sulawesi Tengah', 71.79, 70.21, 72.2, 73.87, 73.87, 73.87, 77),
(640, 'Sulawesi Selatan', 62, 62.2, 61.64, 64.28, 64.28, 64.28, 77),
(641, 'Sulawesi Tenggara', 71.05, 71.04, 71.92, 73.05, 73.05, 73.05, 77),
(642, 'Gorontalo', 66.25, 66.37, 68.6, 70.44, 70.44, 70.44, 77),
(643, 'Sulawesi Barat', 70.04, 74.74, 72.3, 70.68, 70.68, 70.68, 77),
(644, 'Maluku', 66.8, 63.71, 64.33, 66.08, 66.08, 66.08, 77),
(645, 'Maluku Utara', 66.43, 67.99, 67.83, 69.48, 69.48, 69.48, 77),
(646, 'Papua Barat', 71.05, 68.81, 71.5, 70.2, 70.2, 70.2, 77),
(647, 'Papua', 80.54, 79.26, 78.77, 77.3, 77.3, 77.3, 77),
(648, 'Kalimantan Barat', 4.04, 5.15, 4.23, 4.36, 4.36, 4.36, 78),
(649, 'Kalimantan Tengah', 3.24, 4.54, 4.82, 4.23, 4.23, 4.23, 78),
(650, 'Kalimantan Selatan', 3.8, 4.92, 5.45, 4.77, 4.77, 4.77, 78),
(651, 'Kalimantan Timur', 7.38, 7.5, 7.95, 6.91, 6.91, 6.91, 78),
(652, 'Kalimantan Utara', 0, 5.68, 5.23, 5.54, 5.54, 5.54, 78),
(653, 'Sulawesi Utara', 7.54, 9.03, 6.18, 7.18, 7.18, 7.18, 78),
(654, 'Sulawesi Tengah', 3.68, 4.1, 3.29, 3.81, 3.81, 3.81, 78),
(655, 'Sulawesi Selatan', 5.08, 5.95, 4.8, 5.61, 5.61, 5.61, 78),
(656, 'Sulawesi Tenggara', 4.43, 5.55, 2.72, 3.3, 3.3, 3.3, 78),
(657, 'Gorontalo', 4.18, 4.65, 2.76, 4.28, 4.28, 4.28, 78),
(658, 'Sulawesi Barat', 2.08, 3.35, 3.33, 3.21, 3.21, 3.21, 78),
(659, 'Maluku', 10.51, 9.93, 7.05, 9.29, 9.29, 9.29, 78),
(660, 'Maluku Utara', 5.29, 6.05, 4.01, 5.33, 5.33, 5.33, 78),
(661, 'Papua Barat', 5.02, 8.08, 7.46, 6.4, 6.4, 6.4, 78),
(662, 'Papua', 3.44, 3.99, 3.35, 3.62, 3.62, 3.62, 78),
(663, 'Kalimantan Barat', 2.53, 4.78, 4.58, 4.22, 4.22, 4.22, 79),
(664, 'Kalimantan Tengah', 2.71, 3.14, 3.67, 3.13, 3.13, 3.13, 79),
(665, 'Kalimantan Selatan', 4.03, 4.83, 3.63, 3.53, 3.53, 3.53, 79),
(666, 'Kalimantan Timur', 8.89, 7.17, 8.86, 8.55, 8.55, 8.55, 79),
(667, 'Kalimantan Utara', 0, 5.79, 3.92, 5.17, 5.17, 5.17, 79),
(668, 'Sulawesi Utara', 7.27, 8.69, 7.82, 6.12, 6.12, 6.12, 79),
(669, 'Sulawesi Tengah', 2.92, 2.99, 3.46, 2.97, 2.97, 2.97, 79),
(670, 'Sulawesi Selatan', 5.78, 5.81, 5.11, 4.77, 4.77, 4.77, 79),
(671, 'Sulawesi Tenggara', 2.13, 3.62, 3.78, 3.14, 3.14, 3.14, 79),
(672, 'Gorontalo', 2.44, 3.06, 3.88, 3.65, 3.65, 3.65, 79),
(673, 'Sulawesi Barat', 1.6, 1.81, 2.72, 2.98, 2.98, 2.98, 79),
(674, 'Maluku', 6.59, 6.72, 6.98, 7.77, 7.77, 7.77, 79),
(675, 'Maluku Utara', 5.65, 5.56, 3.43, 4.82, 4.82, 4.82, 79),
(676, 'Papua Barat', 3.7, 4.67, 5.73, 7.52, 7.52, 7.52, 79),
(677, 'Papua', 3.48, 3.72, 2.97, 3.96, 3.96, 3.96, 79);

-- --------------------------------------------------------

--
-- Table structure for table `table_graph`
--

CREATE TABLE `table_graph` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `prov_kalsel` float NOT NULL DEFAULT 0,
  `prov_kalteng` float NOT NULL DEFAULT 0,
  `prov_kaltim` float NOT NULL DEFAULT 0,
  `prov_kalbar` float NOT NULL DEFAULT 0,
  `prov_kalut` float NOT NULL DEFAULT 0,
  `prov_sulut` float NOT NULL DEFAULT 0,
  `prov_sulteng` float NOT NULL DEFAULT 0,
  `prov_sulsel` float NOT NULL DEFAULT 0,
  `prov_sultra` float NOT NULL DEFAULT 0,
  `prov_gorontalo` float NOT NULL DEFAULT 0,
  `prov_sulbar` float NOT NULL DEFAULT 0,
  `prov_maluku` float NOT NULL DEFAULT 0,
  `prov_papua` float NOT NULL DEFAULT 0,
  `prov_papua_barat` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_graph`
--

INSERT INTO `table_graph` (`id`, `name`, `prov_kalsel`, `prov_kalteng`, `prov_kaltim`, `prov_kalbar`, `prov_kalut`, `prov_sulut`, `prov_sulteng`, `prov_sulsel`, `prov_sultra`, `prov_gorontalo`, `prov_sulbar`, `prov_maluku`, `prov_papua`, `prov_papua_barat`, `date`) VALUES
(1, 'Angka Kenaikan Penduduk', 2.4, 0, 23, 2.5, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-06 04:03:26'),
(2, 'Rasio Gini', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-06 04:03:27'),
(3, 'Mari Ganti Judunya', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-06 04:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `table_indikator`
--

CREATE TABLE `table_indikator` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_indikator`
--

INSERT INTO `table_indikator` (`id`, `name`, `description`, `cat_id`) VALUES
(26, 'IPM', 'Indeks Pembangunan Manusia (IPM) adalah ukuran ringkas rata-rata capaian/ keberhasilan dimensi utama pembangunan manusia, yaitu: umur panjang dan hidup sehat, mempunyai pengetahuan, dan memiliki standar hidup yang layak.', 59),
(27, 'Rasio Gini', 'Merupakan suatu ukuran kemerataan yang dihitung dengan membandingkan luas antara diagonal dan kurva lorenz (daerah A) dibagi dengan luas segitiga di bawah diagonal. Kegunaan: Untuk mengukur derajat ketidakmerataan distribusi penduduk. Keterangan : Rasio Gini bernilai antara 0 dan 1. Nilai 1 menunjukkan complete inequality atau perfectly inequal, di mana seluruh penduduk menempati satu lokasi di suatu negara dan tidak ada penduduk di lokasi lainnya. Nilai 0 menunjukkan perfectly equal, yaitu penduduk terdistribusikan sempurna di seluruh wilayah suatu negara. Jadi, semakin besar nilai rasio konsentrasi Gini, semakin besar ketidakmerataan antara distribusi penduduk dan jumlah lokasi.', 59),
(28, 'Penduduk Miskin', 'Penduduk miskin adalah penduduk yang memiliki rata-rata pengeluaran per kapita per bulan di bawah Garis Kemiskinan.', 59),
(29, 'Inflasi', 'Inflasi merupakan kenaikan harga sejumlah barang dan jasa yang secara umum dikonsumsi rumah tangga . Ada barang yang harganya naik dan ada yang tetap. Namun, tidak jarang ada barang/jasa yang harganya justru turun. Hitungan perubahan harga tersebut tercakup dalam suatu indeks harga yang dikenal dengan Indeks Harga Konsumen (IHK) atau Consumer Price Index (CPI). Persentase kenaikan IHK dikenal dengan inflasi, sedangkan penurunannya disebut deflasi.', 60),
(30, 'Data Statistik Perbankan', 'Data statistik perbankan bersumber dari Bank Indonesia dan Otoritas Jasa Keuangan.', 60),
(31, 'PDRB', 'Produk Domestik Bruto pada tingkat nasional serta Produk Domestik Regional Bruto (PDRB) pada tingkat regional (provinsi) menggambarkan kemampuan suatu wilayah untuk menciptakan nilai tambah pada suatu waktu tertentu. Untuk menyusun PDB maupun PDRB digunakan 2 pendekatan, yaitu lapangan usaha dan pengeluaran. Keduanya menyajikan komposisi data nilai tambah dirinci menurut sumber kegiatan ekonomi (lapangan usaha) dan menurut komponen penggunaannya. PDB maupun PDRB dari sisi lapangan usaha merupakan penjumlahan seluruh komponen nilai tambah bruto yang mampu diciptakan oleh sektor-sektor ekonomi atas berbagai aktivitas produksinya. sedangkan dari sisi pengeluaran menjelaskan tentang penggunaan dari nilai tambah tersebut.', 60),
(32, 'Produk Nasional Bruto', 'Produk Nasional Bruto (PNB) adalah produk Domestik Bruto ditambah dengan pendapatan faktor neto dari luar negeri. Pendapatan faktor neto merupakan pendapatan faktor produksi yang diterima dikurangi dengan pendapatan yang dibayarkan dari/ke luar negeri oleh resoden dengan nonresiden. Pendapatan faktor produksi meliputi upah dan gaji, deviden, bunga modal, royalti, maupun pendapatan atas faktor kepemilikan lainnya.', 60),
(33, 'Produk Nasional Neto', 'Produk Nasional Neto adalah Produk Nasional Bruto dikurangi dengan penyusutan atas ausnya nilai barang modal tetap yang digunakan dalam proses produksi selama satu tahun. Disebut juga sebagai Produk Nasional Neto atas dasar harga pasar.', 60),
(34, 'Industri Manufaktur', 'Industri manufaktur adalah suatu kegiatan ekonomi yang melakukan kegiatan mengubah suatu barang dasar secara mekanis, kimia, atau dengan tangan sehingga menjadi barang jadi/setengah jadi, dan atau barang yang kurang nilainya menjadi barang yang lebih tinggi nilainya, dan sifatnya lebih dekat kepada pemakai akhir. Termasuk dalam kegiatan ini adalah jasa industri dan pekerja perakitan.', 61),
(35, 'Jasa Industri', 'Jasa industri adalah kegiatan industri yang melayani keperluan pihak lain. Pada kegiatan ini bahan baku disediakan oleh pihak lain sedangkan pihak pengolah hanya melakukan pengolahannya dengan mendapat imbalan sebagai balas jasaa (upah maklon).', 61),
(39, 'Indeks Demokrasi Indonesia (IDI)', 'Indeks Demokrasi Indonesia (IDI) adalah angka-angka yang menunjukkan tingkat perkembangan demokrasi di seluruh provinsi di Indonesia berdasarkan beberapa aspek tertentu dari demokrasi. Aspek yang diukur dalam IDI ini adalah Kebebasan Sipil, Hak-Hak Politik, dan Lembaga-Lembaga Demokrasi. Ketiga aspek demokrasi ini kemudian dijabarkan menjadi 11 variabel dan 28 indikator.', 63),
(40, 'Indeks Pembangunan Manusia (IPM)', 'Indeks Pembangunan Manusia (IPM) adalah ukuran ringkas rata-rata capaian/keberhasilan dimensi utama pembangunan manusia, yaitu: umur panjang dan hidup sehat, mempunyai pengetahuan, dan memiliki standar hidup yang layak.\r\n', 63),
(41, '', '', 64);

-- --------------------------------------------------------

--
-- Table structure for table `table_news`
--

CREATE TABLE `table_news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `section` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_news`
--

INSERT INTO `table_news` (`id`, `name`, `section`, `image`, `user_id`, `province_id`, `date`) VALUES
(13, 'Berita Pertama', '<p>Sebelum terciptanya kota-kota modern dan sebelum lahirnya berbagai teknologi, manusia hidup dengan segala keterbatasannya dari alam. Kita hidup berdampingan dengan pepohonan, rerumputan, dan berbagai tanaman. Memanfaatkan apa yang kita perlukan dari mereka secukupnya. Namun manusia saat ini seperti sudah bercerai dengan alam. Kita memilih untuk memisahkan diri darinya, tinggal di kota-kota besar, dan lupa bahwa manusia sesungguhnya diberikan peran yang sangat penting di bumi yakni sebagai penjaga keseimbangan alam.</p>\r\n\r\n<p>Bukannya mengingat peran ini, manusia justru melupakan dan yang dilakukan hanyalah mengeksploitasinya, mengeruk habis-habisan isinya, tanpa menyadari bahwa apa yang diambil dari alam tidak akan muncul kembali hanya dalam waktu sekejap. Jika terus begini, bukan tak mungkin yang akan kita lihat sebentar lagi adalah bumi yang kering karena alamnya semakin terkuras.</p>\r\n\r\n<p>Manusia dahulu selalu melihat bintang di langit untuk mengetahui pergerakan bumi &ndash; yang kemudian melahirkan ilmu astronomi. Lewat cara itu kita kemudian dapat menyadari betapa kecilnya manusia di dalam alam semesta. Namun seiring dengan tumbuhnya peradaban sampai ke kehidupan modern seperti sekarang, kita semakin jauh dengan hal-hal semacam itu. Kita saat ini seakan menutup jendela untuk menyadari betapa tidak signifikannya manusia dibanding jagat raya yang luas. Kita hanyalah butiran debu. Namun arogannya keterlaluan.</p>\r\n', 'Berita_Pertama.jpg', 1, 2, '2020-02-07 07:46:26'),
(15, 'Berita Kedua', '<p>Apakah kita menyadari bagaimana cara kita memperlakukan bumi yang selama jutaan tahun telah menjadi rumah bagi manusia saat ini? Mungkin tidak. Mengutip ucapan Thich Nhat Hanh, seorang biksu dari Vietnam, &ldquo;We have to walk in a way that we only print peace and serenity on earth. Walk as if you are kissing the earth with your feet.&rdquo; Sesungguhnya semua yang kita lakukan kepada bumi dan isinya benar-benar harus dilakukan dengan halus dan penuh kasih sayang, persis seperti kecupan lembut. Namun yang kita lakukan sekarang seakan-akan menghentak-hentak penuh emosi.</p>\r\n\r\n<p>Manusia mungkin tidak secara intensional ingin menjadi makhluk yang arogan dan merasa superior dibandingkan alam. Semua terjadi secara evolutif sejak manusia mampu menciptakan mesin-mesin dan senjata. Lambat laun, kesadaran dan perilaku manusia mulai berubah karena mulai berpikir bahwa tanpa taring atau cakar layaknya binatang buas, manusia mampu berburu dan menghancurkan apa yang menghalanginya. Pemahaman ini lah yang kemudian membawa manusia merasa sebagai makhluk yang berada di posisi teratas dari rantai makanan.</p>\r\n', 'Berita_Kedua.jpg', 1, 2, '2020-02-07 07:48:30'),
(16, 'Berita Ketiga', '<p>Tak sulit sebenarnya untuk bisa kembali terhubung dengan alam. Yang termudah hanyalah meluangkan waktu di alam bebas seperti taman atau hutan. Mungkin bagi kebanyakan manusia modern ini akan menjadi suatu hal yang sulit karena hari-harinya telah tersita oleh berbagai kesibukan. Namun setidaknya cobalah untuk sedikit saja menyisihkan waktu untuk kembali memijak rerumputan atau menyentuh pepohonan. Coba luangkan waktu sejenak untuk melihat alam di sekeliling &ndash; daun, reremputan, pohon, dan langit. Lihat dan ingat bahwa ada kehidupan lain di bumi ini selain manusia.</p>\r\n\r\n<p>Bagi saya pribadi, cara untuk bisa kembali terhubung dengan alam mungkin terdengar sedikit aneh. Dengan memeluk pohon! Ya, banyak yang menganggapnya gila. Kita sering memanfaatkan kayu untuk berbagai keperluan namun lupa asalnya dari mana: pohon. Dan pohon juga merupakan makhluk hidup yang memiliki energi. Jadi itulah bentuk terimakasih saya kepada alam dan Sang Pencipta yang telah memberi limpahan berkah melalui sebatang pohon.</p>\r\n', 'Berita_Ketiga.jpg', 1, 2, '2020-02-07 07:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `table_post`
--

CREATE TABLE `table_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_img` varchar(255) NOT NULL DEFAULT 'notfound.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_post`
--

INSERT INTO `table_post` (`id`, `name`, `description`, `categories_id`, `status`, `date`, `user_id`, `province_id`, `file_name`, `file_img`) VALUES
(57, 'Laju Pertumbuhan Ekonomi', '', 60, 1, '2020-02-07 07:19:53', 1, 2, 'db57.xlsx', 'notfound.png'),
(58, 'Nilai Aktiva Bank Pemerintah', '', 60, 1, '2020-02-07 07:24:41', 1, 2, 'db58.xlsx', 'notfound.png'),
(59, 'Nilai Aktiva Bank Swasta', '', 60, 1, '2020-02-07 07:25:43', 1, 2, 'db59.xlsx', 'notfound.png'),
(60, 'Persentase Penduduk Miskin Maret', '', 60, 1, '2020-02-07 07:26:14', 1, 2, 'db60.xlsx', 'notfound.png'),
(61, 'Persentase Penduduk Miskin September', '', 60, 1, '2020-02-07 07:27:37', 1, 2, 'db61.xlsx', 'notfound.png'),
(62, 'Realisasi Penerimaan Pendapatan Prov', '', 60, 1, '2020-02-07 07:28:12', 1, 2, 'db62.xlsx', 'notfound.png'),
(63, 'Realisasi Pengeluaran Belanja Provinsi', '', 60, 1, '2020-02-07 07:28:54', 1, 2, 'db63.xlsx', 'notfound.png'),
(64, 'UMP Per Bulan', '', 60, 1, '2020-02-07 07:29:29', 1, 2, 'db64.xlsx', 'notfound.png'),
(65, 'IDI', '', 63, 1, '2020-02-07 07:30:00', 1, 2, 'db65.xlsx', 'notfound.png'),
(66, 'IPM', '', 63, 1, '2020-02-07 07:30:47', 1, 2, 'db66.xlsx', 'notfound.png'),
(67, 'PDRB Per Kapita', '', 63, 1, '2020-02-07 07:31:26', 1, 2, 'db67.xlsx', 'notfound.png'),
(68, 'PDRB', '', 63, 1, '2020-02-07 07:31:57', 1, 2, 'db68.xlsx', 'notfound.png'),
(69, 'Luas Lahan Sawah', '', 61, 1, '2020-02-07 07:32:29', 1, 2, 'db69.xlsx', 'notfound.png'),
(70, 'Luas Panen Padi', '', 61, 1, '2020-02-07 07:33:17', 1, 2, 'db70.xlsx', 'notfound.png'),
(71, 'Gini Ratio September', '', 59, 1, '2020-02-07 07:34:20', 1, 2, 'db71.xlsx', 'notfound.png'),
(72, 'Gini Ratio Maret', '', 59, 1, '2020-02-07 07:35:21', 1, 2, 'db72.xlsx', 'notfound.png'),
(73, 'Jumlah Penduduk', '', 59, 1, '2020-02-07 07:36:00', 1, 2, 'db73.xlsx', 'notfound.png'),
(74, 'Kepadatan Penduduk', '', 59, 1, '2020-02-07 07:36:33', 1, 2, 'db74.xlsx', 'notfound.png'),
(75, 'Rasio Jenis Kelamin', '', 59, 1, '2020-02-07 07:37:06', 1, 2, 'db75.xlsx', 'notfound.png'),
(76, 'TPAK Agustus', '', 59, 1, '2020-02-07 07:38:05', 1, 2, 'db76.xlsx', 'notfound.png'),
(77, 'TPAK Februari', '', 59, 1, '2020-02-07 07:38:45', 1, 2, 'db77.xlsx', 'notfound.png'),
(78, 'TPT Agustus', '', 59, 1, '2020-02-07 07:39:18', 1, 2, 'db78.xlsx', 'notfound.png'),
(79, 'TPT Februari', '', 59, 1, '2020-02-07 07:39:47', 1, 2, 'db79.xlsx', 'notfound.png');

-- --------------------------------------------------------

--
-- Table structure for table `table_province`
--

CREATE TABLE `table_province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_province`
--

INSERT INTO `table_province` (`id`, `name`) VALUES
(2, 'Sulawesi Tenggara'),
(3, 'Kalimantan tengah');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id`, `username`, `password`, `status`, `province_id`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 1, 2),
(30, 'Admin_Sultra', '8be5c9aed3269627313674ca6cb1fd31', 2, 2),
(31, 'Kontributor_sultra1', '09ff0f4ebab7fb6a075b65c2ad6d8ba4', 3, 2),
(32, 'Kontributor_sultra2', '6527a9c9d7cd110cb8216b576079506c', 3, 2),
(33, 'admin_kalimantan', '98d1007ee8f5a55356a06c1767603321', 2, 3),
(35, 'admin2', '3fc0a7acf087f549ac2b266baf94b8b1', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_categories`
--
ALTER TABLE `table_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_file`
--
ALTER TABLE `table_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_graph`
--
ALTER TABLE `table_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_indikator`
--
ALTER TABLE `table_indikator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_news`
--
ALTER TABLE `table_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_post`
--
ALTER TABLE `table_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `table_province`
--
ALTER TABLE `table_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_categories`
--
ALTER TABLE `table_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `table_file`
--
ALTER TABLE `table_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `table_graph`
--
ALTER TABLE `table_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_indikator`
--
ALTER TABLE `table_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `table_news`
--
ALTER TABLE `table_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `table_post`
--
ALTER TABLE `table_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `table_province`
--
ALTER TABLE `table_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_post`
--
ALTER TABLE `table_post`
  ADD CONSTRAINT `table_post_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `table_categories` (`id`),
  ADD CONSTRAINT `table_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `table_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
