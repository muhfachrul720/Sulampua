-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2020 at 03:52 PM
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
(6, 'PRDB Negara China', '', 'https://www.youtube.com/watch?v=6mtZTMPghNg', 1, 2);

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
(311, 'Cth: Prov Papua', 23.4, 24.4, 25.2, 25.6, 25.6, 25.6, 55),
(312, 'Cth: Prov Papua', 23.4, 24.4, 25.2, 25.6, 25.6, 25.6, 54),
(313, 'Cth: Prov Papua', 23.4, 24.4, 25.2, 25.6, 25.6, 25.6, 53),
(314, 'Cth: Prov Papua', 23.4, 24.4, 25.2, 25.6, 25.6, 25.6, 52);

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
(1, 'Angka Kenaikan Penduduk', 2.4, 0, 23, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-04 09:39:53'),
(2, 'Rasio Gini', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-04 09:39:54'),
(3, 'Mari Ganti Judunya', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-02-04 09:39:54');

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
(10, 'Aqua Edelweiss_ KontriN1', '<p>Tehbotol Sosro Original</p>\r\n', 'Aqua_Edelweiss__KontriN1.jpg', 31, 2, '2020-01-31 08:31:52'),
(11, 'Deli An Weiss', '<p>Kilang Minyak Duo Ramah</p>\r\n', 'Deli_An_Weiss.jpg', 32, 2, '2020-01-31 08:34:29'),
(12, 'Rasio Gini September', '<p>Miturut hukum Islam, sawijining muslim ditindakake supaya ora nglara utawa mateni kucing, miturut hadits sahih sing dicritakake dening Imam Muslim saka critane Abdullah bin Umar lan Abu Hurairah. Hukum sing larang lan tuku kucing uga diadili miturut hadits Nabi Muhammad lan aturan saka hukum (al-qawa&#39;id al-kulliyah). Hadits saka Muhammad, ditulis saka kanca Jabir bin Abdillah yen Nabi ngalangi mangan kucing lan nglarang mangan saka ngedol rega kucing.</p>\r\n', 'Rasio_Gini_September.jpg', 1, 2, '2020-02-04 09:44:25');

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
(49, 'Kalimantan Membara', 'Kalimantan Ditengah Panas Terik Matahari', 61, NULL, '2020-01-31 08:39:55', 33, 3, NULL, 'notfound.png'),
(50, 'Sultra Kebanjiran', 'Ini Postingan Milik Sultra', 59, NULL, '2020-01-31 08:40:35', 30, 2, NULL, 'notfound.png'),
(51, 'saddsa', 'sadsa', 59, NULL, '2020-02-03 01:20:39', 1, 2, NULL, 'notfound.png'),
(52, 'dsadsadasdas', 'sadsadsaa', 59, 1, '2020-02-03 01:20:53', 1, 2, 'db52.xls', 'notfound.png'),
(53, 'sdsadas', 'sadasdasdsa', 59, 1, '2020-02-03 01:20:59', 1, 2, 'db53.xls', 'notfound.png'),
(54, 'sadsadasd', 'sdasdsad', 59, 1, '2020-02-03 01:21:08', 1, 2, 'db54.xls', 'notfound.png'),
(55, 'sadasdas', 'sadasdasdas', 59, 1, '2020-02-03 01:21:14', 1, 2, 'db55.xls', 'notfound.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_categories`
--
ALTER TABLE `table_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `table_file`
--
ALTER TABLE `table_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_post`
--
ALTER TABLE `table_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
