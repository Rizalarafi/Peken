-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2022 at 11:04 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peken_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `map` varchar(250) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`id_address`, `id_user`, `alamat`, `map`, `lat`, `lng`, `distance`, `is_deleted`) VALUES
(2, 1, 'Cisitu Lama Gng VII\r\nDago', 'Gg. Cisitu Lama VII No.4, Dago, Kecamatan Coblong, Kota Bandung, Jawa Barat 40135, Indonesia', -6.8799676517571, 107.61227615418, 2867, 0),
(3, 1, 'Jln. Sangkuriang Dalam No. 55 Bandung', 'Jl. Sangkuriang No.60/160A, Dago, Kecamatan Coblong, Kota Bandung, Jawa Barat 40135, Indonesia', -6.8786275970812, 107.60971087885, 3278, 0),
(4, 5, 'Jl. kb bibit utara no. 8, bandung wetan, taman sari', 'Jl. Kb. Bibit Utara No.7, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116, Indonesia', -6.8964186892594, 107.60708909549, 40, 0),
(5, 9, 'Institut Teknologi Bandung', 'Jl. Ganesa No.15c, Lb. Siliwangi, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132, Indonesia', -6.8932019843644, 107.6099334911, 1092, 1),
(6, 9, 'Kalirejo', 'JL. PASAR PONCOWARNO, Sri Dadi, Kalirejo, Kabupaten Lampung Tengah, Lampung 34174, Indonesia', -5.2017012, 104.9739333, 419949, 1),
(7, 1, 'Cisitu Lama Gng VII\r\nDago', 'Jl. Sukagalih No.4, Cipedes, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162, Indonesia', -6.8928121973754, 107.59676561365, 1806, 1),
(8, 1, 'jengkol', 'Jl. Pasir Kaliki Barat No.1, RT.09/RW.15, Sadang Serang, Kecamatan Coblong, Kota Bandung, Jawa Barat 40133, Indonesia', -6.8935954139221, 107.62517500596, 3881, 1),
(9, 10, 'jln kbu 8', 'Jl. Kb. Bibit Utara No.8, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116, Indonesia', -6.8966244431416, 107.60703073895, 7, 0),
(10, 1, 'shelter', 'Jalan Tamasari Lantai 2 Blok H-27, Balubur Town Square, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116, Indonesia', -6.8987519523016, 107.60930253037, 590, 0),
(11, 1, 'dukomsel', 'Butik Dukomsel, Jl. Ir. H. Djuanda (Dago) No. 52, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115, Indonesia', -6.900635, 107.6127002, 925, 0),
(12, 19, 'pancasila', 'Unnamed Road, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116, Indonesia', -6.8988912, 107.6085528, 398, 0),
(13, 1, 'condong', 'Jl. Kiara Condong No.56, Babakan Sari, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40283, Indonesia', -6.9241819, 107.6481682, 7577, 0),
(14, 9, 'Cimahi', 'Jl. Poncol No.24, Baros, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40521, Indonesia', -6.8840816, 107.5413039, 12500, 1),
(15, 1, 'riung', 'Jl. Soekarno-Hatta No.684, Cipamokolan, Kec. Rancasari, Kota Bandung, Jawa Barat 40292, Indonesia', -6.9384134, 107.6762031, 16108, 0),
(16, 9, 'Gade', 'Husein Sastranegara International Airport, Jl. Pajajaran No.156, Husen Sastranegara, Kec. Cicendo, Kota Bandung, Jawa Barat 40174, Indonesia', -6.9037712, 107.5802035, 4542, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Cache_Search_Query`
--

CREATE TABLE `cache_search_query` (
  `id` int(11) NOT NULL,
  `squery` varchar(100) NOT NULL,
  `results` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cache_Search_Query`
--

INSERT INTO `Cache_Search_Query` (`id`, `squery`, `results`, `last_update`) VALUES
(1, 'daun', '(6, 8, 9, 10, 11, 12, 55)', '2020-04-05 09:23:57'),
(2, 'three', '(98)', '2020-04-05 09:24:48'),
(3, 'tiga', '(98)', '2020-04-05 09:25:08'),
(4, 'ayam', '(29, 47, 30, 93, 31, 91, 101, 92, 90, 43)', '2022-08-16 14:06:23'),
(5, 'oyong', '(56)', '2020-04-05 09:29:55'),
(6, 'gambas', '(56)', '2020-04-05 09:30:17'),
(7, 'manisa', '(60)', '2020-04-05 09:30:41'),
(8, 'uyah', '(14)', '2020-04-05 09:35:14'),
(9, 'telor', '(43)', '2020-04-05 09:39:13'),
(10, 'ndug', '(43)', '2020-04-05 09:39:26'),
(11, 'dog', '(43)', '2020-04-05 09:40:03'),
(12, 'dada', '(93)', '2020-04-05 09:40:15'),
(13, 'sus', '(46)', '2020-04-05 09:40:48'),
(14, 'ncis', '(49)', '2020-04-05 09:41:12'),
(15, 'ca', '(51, 52, 53, 54, 50, 6, 65, 66, 67, 68, 70, 22, 63, 27)', '2020-04-05 09:41:22'),
(16, 'a', '(1, 29, 3, 4, 47, 108, 51, 52, 53, 54, 50, 30, 97, 93, 31, 91, 32, 95, 94, 6, 8, 9, 10, 11, 12, 55, 13, 14, 15, 16, 96, 101, 33, 100, 102, 99, 34, 35, 36, 37, 38, 39, 40, 58, 59, 17, 61, 62, 65, 66, 67, 68, 69, 109, 20, 70, 21, 71, 72, 22, 73, 24, 41, 60, 26, 63, 75, 27, 76, 56, 92, 77, 110, 78, 79, 80, 28, 81, 82, 83, 90, 111, 42, 43, 98, 85, 87, 88, 45, 46)', '2020-04-05 09:41:59'),
(17, '', '(1, 29, 3, 4, 47, 48, 49, 108, 51, 52, 53, 54, 50, 30, 5, 97, 93, 31, 91, 32, 95, 94, 6, 8, 9, 10, 11, 12, 55, 13, 14, 57, 15, 16, 96, 101, 33, 100, 102, 99, 34, 35, 36, 37, 38, 39, 40, 58, 59, 17, 61, 62, 64, 18, 19, 65, 66, 67, 68, 69, 109, 20, 70, 21, 71, 72, 22, 23, 73, 24, 74, 41, 25, 60, 26, 63, 75, 27, 76, 56, 92, 77, 110, 78, 79, 80, 28, 81, 82, 83, 90, 111, 42, 43, 44, 107, 98, 84, 85, 86, 87, 88, 45, 46, 89)', '2020-04-05 09:45:07'),
(18, 'br', '(3, 48, 100)', '2020-04-05 09:45:17'),
(19, 'kunci', '(107)', '2020-04-05 09:46:02'),
(20, 'pintu', '(108)', '2020-04-05 09:46:37'),
(21, 'door', '(108)', '2020-04-05 09:47:11'),
(22, 'manis', '(15, 16, 20, 60)', '2020-04-05 09:52:46'),
(23, 'tel', '(43, 89)', '2020-04-05 09:51:47'),
(24, 'yam', '(29, 47, 30, 93, 31, 91, 101, 92, 90, 43)', '2020-04-05 09:51:53'),
(25, 'yu', '(20)', '2020-04-05 09:52:05'),
(26, 'ba', '(3, 4, 47, 51, 52, 53, 54, 50, 6, 33, 34, 70, 72, 24, 75, 56)', '2020-04-05 09:52:11'),
(27, 'nis', '(108, 15, 16, 20, 60)', '2020-04-05 09:52:53'),
(28, 'ja', '(1, 51, 54, 33, 100, 39, 58, 59, 17, 61, 62, 65, 67, 82)', '2020-04-05 09:54:15'),
(29, 'g', '(3, 4, 108, 52, 50, 5, 31, 91, 32, 95, 94, 6, 55, 13, 14, 57, 15, 16, 96, 100, 35, 36, 40, 58, 59, 61, 64, 65, 66, 67, 68, 69, 109, 70, 71, 72, 22, 73, 26, 76, 56, 28, 111, 43, 98, 84, 85, 86, 45)', '2020-04-05 09:56:28'),
(30, 'bro', '(48, 100)', '2020-04-05 09:57:25'),
(31, 'de', '(32)', '2020-04-05 10:01:46'),
(32, 'bi', '(13, 72, 74, 43)', '2020-04-05 10:34:48'),
(33, 'eg', '(43)', '2020-04-05 10:38:03'),
(34, 'bayam', '(47)', '2020-04-05 12:45:08'),
(35, 'sapi', '(32, 95, 94, 96, 41, 46)', '2020-04-05 12:45:49'),
(36, 'cabe', '(51, 52, 53, 54)', '2020-04-05 12:46:33'),
(37, 'bas', '(56)', '2020-04-05 13:03:19'),
(38, 'toge', '(70)', '2020-04-06 08:11:34'),
(39, 're', '(29, 12, 13, 59, 41, 79, 28, 98, 88, 45)', '2020-04-06 08:11:55'),
(40, 'jamb', '(33, 100)', '2020-04-07 09:54:20'),
(41, 'jambal', '(33)', '2020-04-07 09:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_address` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `is_open` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Cart_Item`
--

CREATE TABLE `cart_item` (
  `id_cart_item` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `name_item` varchar(30) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Cart_Status`
--

CREATE TABLE `cart_status` (
  `id_cart_status` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cart_Status`
--

INSERT INTO `Cart_Status` (`id_cart_status`, `description`) VALUES
(1, 'Pesanan diinput'),
(2, 'Menunggu pembayaran'),
(3, 'Menunggu konfirmasi pembayaran'),
(4, 'Pesanan diproses'),
(5, 'Pesanan dikirim'),
(6, 'Pesanan diterima');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id_category`, `name`, `available`, `sort`) VALUES
(1, 'Bumbu', 1, 1),
(2, 'Lauk', 1, 1),
(3, 'Sayur', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_category` int(11) NOT NULL,
  `nilai` float NOT NULL DEFAULT '1',
  `satuan` varchar(20) NOT NULL DEFAULT '',
  `harga` int(11) NOT NULL DEFAULT '0',
  `image_url` text NOT NULL,
  `tag` text,
  `available` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`id_item`, `name`, `id_category`, `nilai`, `satuan`, `harga`, `image_url`, `tag`, `available`) VALUES
(1, 'Asem Jawa', 1, 1, 'sachet', 1000, 'https://cdn.discordapp.com/attachments/695903903040012318/695904873719398460/asam_jawa.jpg', NULL, 1),
(2, 'Bawang Bombay', 1, 100, 'gr', 8700, 'https://cdn.discordapp.com/attachments/695888873548677153/695890752768835644/Bawang_Bombay_edit.jpg', NULL, 0),
(3, 'Bawang Merah', 1, 250, 'gr', 13300, 'https://cdn.discordapp.com/attachments/695888873548677153/695921480931868782/Bawang_Merah_edited_ok.jpg', 'brambang', 1),
(4, 'Bawang Putih', 1, 250, 'gr', 13300, 'https://cdn.discordapp.com/attachments/695888873548677153/695895639028006942/Bawang_Putih_edited.jpg', NULL, 1),
(5, 'Cengkih', 1, 1, 'sachet', 4500, 'https://cdn.discordapp.com/attachments/695888873548677153/695896634910834728/Cengkeh.jpg', 'cengkeh|cingkeh', 1),
(6, 'Daun Bawang', 1, 1, 'ikat', 3000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911590263914496/daun_bawang.jpg', 'loncang', 1),
(7, 'Daun Jahe', 1, 1, 'ikat', 3000, 'https://cdn.discordapp.com/attachments/695888873548677153/695897815846617108/Daun_Jahe_edited.jpg', NULL, 0),
(8, 'Daun Jeruk', 1, 1, 'pack', 3300, 'https://cdn.discordapp.com/attachments/695903903040012318/695914192921690122/daun_jeruk.jpg', NULL, 1),
(9, 'Daun Kunyit', 1, 1, 'ikat', 5600, 'https://cdn.discordapp.com/attachments/695888873548677153/695898393125322812/Daun_Kunyit_edited.jpg', NULL, 1),
(10, 'Daun Salam', 1, 1, 'ikat', 3200, 'https://cdn.discordapp.com/attachments/695903903040012318/696020881134321694/daun_salam.jpg', NULL, 1),
(11, 'Daun Seledri', 1, 1, 'ikat', 3900, 'https://cdn.discordapp.com/attachments/695888873548677153/695912042586177586/Seledri_edited.jpg', 'parsley|sledri', 1),
(12, 'Daun Serai', 1, 1, 'ikat', 4000, 'https://cdn.discordapp.com/attachments/695888873548677153/695912076605915176/Serai_edited.jpg', 'sereh', 1),
(13, 'Ebi', 1, 100, 'gr', 28600, 'https://cdn.discordapp.com/attachments/695903903040012318/696023740680765600/ebi.jpg', 'udang|urang|rebon', 1),
(14, 'Garam', 1, 1, 'pcs', 4000, 'https://cdn.discordapp.com/attachments/695903903040012318/696013910574104686/garam.jpg', 'uyah', 1),
(15, 'Gula Merah', 1, 250, 'gr', 5200, 'https://cdn.discordapp.com/attachments/695888873548677153/695903540849410108/Gula_Jawa_edited.jpg', 'manis', 1),
(16, 'Gula Pasir', 1, 500, 'gr', 10500, 'https://cdn.discordapp.com/attachments/695888873548677153/695904427625938984/Gula_Pasir_edited.jpg', 'manis', 1),
(17, 'Jahe', 1, 100, 'gr', 7000, 'https://cdn.discordapp.com/attachments/695888873548677153/695902831198076948/Jahe_edited.jpg', NULL, 1),
(18, 'Jeruk Nipis', 1, 250, 'gr', 7400, 'https://cdn.discordapp.com/attachments/695888873548677153/695905891349823528/Jeruk_Nipis_edited_ok.jpg', 'lemon', 1),
(19, 'Jinten', 1, 1, 'sachet', 1000, 'https://cdn.discordapp.com/attachments/695888873548677153/695906442259202128/Jinten_edited.jpg', NULL, 1),
(20, 'Kayu Manis', 1, 1, 'sachet', 1600, 'https://cdn.discordapp.com/attachments/695888873548677153/695907385620824124/Kayu_Manis_edited.jpg', NULL, 1),
(21, 'Keluwak', 1, 250, 'gr', 7000, 'https://cdn.discordapp.com/attachments/695888873548677153/695913510185467924/Kluwak_edited.jpg', 'keluak|kluak|kluwak', 1),
(22, 'Kemiri', 1, 100, 'gr', 8600, 'https://cdn.discordapp.com/attachments/695888873548677153/695908163097985024/Kemiri_edited.jpg', 'muncang', 1),
(23, 'Kencur', 1, 100, 'gr', 8300, 'https://cdn.discordapp.com/attachments/695888873548677153/695909416037384202/Kencur_edited.jpg', 'cikur', 1),
(24, 'Ketumbar', 1, 100, 'gr', 5800, 'https://cdn.discordapp.com/attachments/695903903040012318/695911654042632243/ketumbar.jpg', 'tumbar', 1),
(25, 'Kunyit', 1, 100, 'gr', 2500, 'https://cdn.discordapp.com/attachments/695903903040012318/696011612691103824/kunyit.jpg', 'kunir', 1),
(26, 'Lengkuas', 1, 100, 'gr', 3400, 'https://cdn.discordapp.com/attachments/695888873548677153/695910167421911050/Lengkuas_edited.jpg', 'laos', 1),
(27, 'Merica', 1, 100, 'gr', 14700, 'https://cdn.discordapp.com/attachments/695888873548677153/695911223195336744/Merica_edited.jpg', NULL, 1),
(28, 'Rebon', 1, 100, 'gr', 7500, 'https://cdn.discordapp.com/attachments/695888873548677153/695911266383822848/Rebon_edited.jpg', 'udang', 1),
(29, 'Ati Rempela', 2, 1, 'pcs', 2000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900495172206602/ati_rempela_1.jpg', 'ayam|ampela|jeroan', 1),
(30, 'Ceker Ayam', 2, 250, 'gr', 7500, 'https://cdn.discordapp.com/attachments/695900073841786880/695900539350941726/ceker_1.jpg', NULL, 1),
(31, 'Daging Ayam', 2, 1, 'ekor', 60000, 'https://cdn.discordapp.com/attachments/695903903040012318/696014669294338088/daging_ayam.jpg', 'iwak pithik', 1),
(32, 'Daging Sapi', 2, 250, 'gr', 35300, 'https://cdn.discordapp.com/attachments/695903903040012318/696015383248764938/daging_sapi.jpg', 'sirloin|tenderloin', 1),
(33, 'Ikan Asin Jambal Roti', 2, 100, 'gr', 19000, '', NULL, 1),
(34, 'Ikan Bawal', 2, 500, 'gr', 18300, 'https://cdn.discordapp.com/attachments/695903903040012318/696026879836291090/ikan_bawal.jpg', NULL, 1),
(35, 'Ikan Gurame', 2, 500, 'gr', 55000, 'https://cdn.discordapp.com/attachments/695903903040012318/696024337689608272/gurame.jpg', NULL, 1),
(36, 'Ikan Kembung', 2, 500, 'gr', 25000, 'https://cdn.discordapp.com/attachments/695918670055997440/696368544392151050/ikan_kembung.jpg', NULL, 1),
(37, 'Ikan Lele', 2, 500, 'gr', 15300, 'https://cdn.discordapp.com/attachments/695918670055997440/696361791248400455/lele.jpg', NULL, 1),
(38, 'Ikan Mas', 2, 500, 'gr', 22000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900474842415114/ikan_mas_1.jpg', NULL, 1),
(39, 'Ikan Mujair', 2, 500, 'gr', 25000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900477476306944/ikan_mujair_1.jpg', NULL, 1),
(40, 'Ikan Tongkol', 2, 250, 'gr', 14700, '', NULL, 1),
(41, 'Kulit Sapi', 2, 250, 'gr', 12400, '', 'kikil|cecek|krecek', 1),
(42, 'Tahu Putih', 2, 10, 'pcs', 7500, 'https://cdn.discordapp.com/attachments/695900073841786880/695900487958134844/tahu_putih_1.jpg', 'tofu', 1),
(43, 'Telur Ayam', 2, 1, 'kg', 29500, 'https://cdn.discordapp.com/attachments/695918670055997440/695968562623414292/telor.jpg', 'telor|ndug|endog|endug|dog|egg|biji|ayam', 1),
(44, 'Tempe', 2, 1, 'pcs', 8000, 'https://cdn.discordapp.com/attachments/695903903040012318/696017246727700531/tempe.jpg', 'tempeh', 1),
(45, 'Udang', 2, 1, 'kg', 90000, 'https://cdn.discordapp.com/attachments/695903903040012318/695904219890188338/udang.jpg', 'rebon|urang', 1),
(46, 'Usus Sapi', 2, 500, 'gr', 24000, '', NULL, 1),
(47, 'Bayam', 3, 1, 'ikat', 3400, 'https://cdn.discordapp.com/attachments/695911529484386366/695911706760577044/bayam.jpg', NULL, 1),
(48, 'Brokoli', 3, 500, 'gr', 13800, 'https://cdn.discordapp.com/attachments/695911529484386366/695911714692005918/brokoli.jpg', 'brocoli', 1),
(49, 'Buncis', 3, 500, 'gr', 9000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911714474033162/buncis.jpg', NULL, 1),
(50, 'Cabai Rawit Merah', 3, 250, 'gr', 15500, 'https://cdn.discordapp.com/attachments/695918670055997440/695954347883757608/cabe_rawit_merah.jpg', 'cengek', 1),
(51, 'Cabai Hijau Besar', 3, 250, 'gr', 8500, 'https://cdn.discordapp.com/attachments/695918670055997440/695950791831453747/cabe_hijau_besar.jpg', 'cabe', 1),
(52, 'Cabai Keriting Merah', 3, 250, 'gr', 13500, 'https://cdn.discordapp.com/attachments/695903903040012318/696020095750635580/cabe_keriting_merah.jpg', 'cabe', 1),
(53, 'Cabai Merah Besar', 3, 250, 'gr', 18100, 'https://cdn.discordapp.com/attachments/695911529484386366/695911711093555230/cabai_merah_besar.jpg', 'cabe', 1),
(54, 'Cabai Rawit Hijau', 3, 250, 'gr', 13000, 'https://cdn.discordapp.com/attachments/695911529484386366/695912418416525362/cbe-rawit-hijau.jpg', 'cabe', 1),
(55, 'Daun Singkong', 3, 1, 'ikat', 3000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911595674566666/daun_singkongg.jpg', 'daun budin', 1),
(56, 'Oyong', 3, 500, 'gr', 8000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911595292885013/gambas.jpg', 'gambas', 1),
(57, 'Genjer', 3, 1, 'ikat', 3000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911597033390090/genjer.jpg', NULL, 1),
(58, 'Jagung', 3, 1, 'kg', 13000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911600372318248/jagung.jpg', NULL, 1),
(59, 'Jagung Putren', 3, 250, 'gr', 7800, 'https://cdn.discordapp.com/attachments/695911529484386366/695911596157042718/jagung_putren.jpg', NULL, 1),
(60, 'Labu Siam Besar', 3, 1, 'pcs', 3700, 'https://cdn.discordapp.com/attachments/695911529484386366/695911655581679656/labu_siam.jpg', 'manisa', 1),
(61, 'Jamur Kancing', 3, 250, 'gr', 17500, 'https://cdn.discordapp.com/attachments/695911529484386366/695911601186013184/jamur_merang.jpg', 'merang', 1),
(62, 'Jamur Tiram', 3, 500, 'gr', 9600, 'https://cdn.discordapp.com/attachments/695911529484386366/695911603127975936/jamur_tiram.jpg', NULL, 1),
(63, 'Leunca', 3, 250, 'gr', 5400, 'https://cdn.discordapp.com/attachments/695911529484386366/695911661399310366/leunca.jpg', NULL, 1),
(64, 'Jengkol', 3, 250, 'gr', 8700, 'https://cdn.discordapp.com/attachments/695911529484386366/695911603471777832/jengkol.jpg', NULL, 1),
(65, 'Kacang Hijau', 3, 250, 'gr', 9600, 'https://cdn.discordapp.com/attachments/695911529484386366/695911605749415976/kacang_hijau.jpg', 'kacang ijo', 1),
(66, 'Kacang Merah', 3, 250, 'gr', 9200, 'https://cdn.discordapp.com/attachments/695911529484386366/695911990966616144/kacang_merah.jpg', NULL, 1),
(67, 'Kacang Panjang', 3, 500, 'gr', 9300, 'https://cdn.discordapp.com/attachments/695911529484386366/695912006448054272/kacang_panjang.jpg', NULL, 1),
(68, 'Kacang Tanah', 3, 250, 'gr', 9600, 'https://cdn.discordapp.com/attachments/695911529484386366/695912020389920868/kacang_tanah.jpg', NULL, 1),
(69, 'Kangkung', 3, 1, 'ikat', 3500, 'https://cdn.discordapp.com/attachments/695911529484386366/695912035724165160/kangkung.jpg', NULL, 1),
(70, 'Kecambah', 3, 500, 'gr', 7400, 'https://cdn.discordapp.com/attachments/695911529484386366/695912049448058971/kecambah.jpg', 'tauge|toge', 1),
(71, 'Kemangi', 3, 1, 'ikat', 3000, 'https://cdn.discordapp.com/attachments/695911529484386366/695912064572719184/kemangi.jpg', 'surawung|srawung', 1),
(72, 'Kembang Kol', 3, 500, 'gr', 13500, 'https://cdn.discordapp.com/attachments/695911529484386366/695912079286075432/kembang_kol.jpg', 'kubis', 1),
(73, 'Kentang', 3, 1, 'kg', 22000, 'https://cdn.discordapp.com/attachments/695911529484386366/695912093173415936/kentang.jpg', NULL, 1),
(74, 'Kubis', 3, 1, 'kg', 12500, 'https://cdn.discordapp.com/attachments/695911529484386366/695911654164267018/kubis.jpg', 'kol', 1),
(75, 'Lobak', 3, 1, 'kg', 17600, 'https://cdn.discordapp.com/attachments/695911529484386366/695911664066756658/lobak.jpg', 'banyak|mani', 1),
(76, 'Nangka Muda', 3, 500, 'gr', 10800, 'https://cdn.discordapp.com/attachments/695911529484386366/695911668382695475/nangka_muda.jpg', 'gori|tewel', 1),
(77, 'Pakcoy', 3, 500, 'gr', 8500, 'https://cdn.discordapp.com/attachments/695911529484386366/695911665941741608/Pakcoy.jpg', NULL, 1),
(78, 'Paprika', 3, 500, 'gr', 43000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911668999520256/Paprika.jpg', NULL, 1),
(79, 'Pare', 3, 500, 'gr', 7800, 'https://cdn.discordapp.com/attachments/695911529484386366/695911681540489216/pare.jpg', 'paria', 1),
(80, 'Pete', 3, 2, 'papan', 8000, 'https://cdn.discordapp.com/attachments/695911529484386366/695912210781831208/petai.jpg', 'petai', 1),
(81, 'Salada', 3, 250, 'gr', 6000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911696149250048/selada.jpg', 'selada', 1),
(82, 'Sawi Hijau', 3, 500, 'gr', 7200, 'https://cdn.discordapp.com/attachments/695911529484386366/695912240653664308/sawi_hijau.jpg', NULL, 1),
(83, 'Sawi Putih', 3, 1, 'kg', 13500, 'https://cdn.discordapp.com/attachments/695911529484386366/695911681209008179/sawi_putih.jpg', 'sawi cina', 1),
(84, 'Terung', 3, 1, 'kg', 13700, 'https://cdn.discordapp.com/attachments/695911529484386366/695911686032326707/terong.jpg', 'terong', 1),
(85, 'Terung Lalap', 3, 500, 'gr', 7300, 'https://cdn.discordapp.com/attachments/695903903040012318/696031935348342825/terong_lalap.jpg', 'terong', 1),
(86, 'Timun', 3, 500, 'gr', 6200, 'https://cdn.discordapp.com/attachments/695911529484386366/695911708862054462/timun.jpg', 'mentimun|bonteng', 1),
(87, 'Tomat', 3, 500, 'gr', 7000, 'https://cdn.discordapp.com/attachments/695911529484386366/695911706123304970/tomat.jpg', NULL, 1),
(88, 'Tomat Cerri', 3, 500, 'gr', 14600, 'https://cdn.discordapp.com/attachments/695911529484386366/695912304335650816/tomat_ceri.jpg', 'rempai', 1),
(89, 'Wortel', 3, 500, 'gr', 8400, 'https://cdn.discordapp.com/attachments/695911529484386366/695911707985576026/wortel.jpg', NULL, 1),
(90, 'Sayap Ayam', 2, 500, 'gr', 20400, 'https://cdn.discordapp.com/attachments/695900073841786880/695900487009960047/sayap_ayam_1.jpg', NULL, 1),
(91, 'Daging Ayam Fillet', 2, 500, 'gr', 25000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900513153318922/fillet.jpg', NULL, 1),
(92, 'Paha Ayam', 2, 500, 'gr', 20600, 'https://cdn.discordapp.com/attachments/695900073841786880/695900480089358386/paha.jpg', NULL, 1),
(93, 'Dada Ayam', 2, 1, 'kg', 35000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900494316699678/ayam_dada_1.jpg', 'tocil', 1),
(94, 'Daging Sapi Has Luar', 2, 250, 'gr', 40700, 'https://cdn.discordapp.com/attachments/695900073841786880/695900487081263154/Sirloin_1.jpg', 'sherloin', 1),
(95, 'Daging Sapi Has Dalam', 2, 250, 'gr', 40700, 'https://cdn.discordapp.com/attachments/695918670055997440/696371223042588692/has_luar.jpg', NULL, 1),
(96, 'Iga Sapi', 2, 1, 'kg', 105000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900517934694511/iga_sapi_1.jpg', 'rib', 1),
(97, 'Cumi Asin', 2, 100, 'gr', 10000, 'https://cdn.discordapp.com/attachments/695900073841786880/695900518224101416/cumi_asin_1.jpg', NULL, 1),
(98, 'Teri', 2, 100, 'gr', 15000, 'https://cdn.discordapp.com/attachments/695918670055997440/695956753380278322/teri.jpg', 'tiga|tri|three|tree', 1),
(99, 'Ikan Asin Peda', 2, 100, 'gr', 11500, '', NULL, 1),
(100, 'Ikan Asin Jambrong', 2, 1, '', 0, '', NULL, 1),
(101, 'Ikan Asin Bulu Ayam', 2, 100, 'gr', 12000, '', NULL, 1),
(102, 'Ikan Asin Kapasan', 2, 100, 'gr', 13600, 'https://cdn.discordapp.com/attachments/695903903040012318/695904160498843649/ikan_asin_kapasan.jpg', NULL, 1),
(107, 'Temukunci', 1, 100, 'gr', 4000, 'https://cdn.discordapp.com/attachments/695888873548677153/695912471835312153/Temu_Kunci_edited.jpg', 'temu kunci', 1),
(108, 'Bunga Lawang', 1, 1, 'pack', 6000, 'https://cdn.discordapp.com/attachments/695888873548677153/695896027416494150/Bunga_Lawang_edited.jpg', 'star anise|pintu|door', 1),
(109, 'Kapulaga', 1, 1, 'pack', 7700, 'https://cdn.discordapp.com/attachments/695888873548677153/695906976202358835/Kapulaga_edited.jpg', NULL, 1),
(110, 'Pala', 1, 1, 'pack', 6600, 'https://cdn.discordapp.com/attachments/695888873548677153/695914463651692595/Pala_edited.jpg', NULL, 1),
(111, 'Tahu Kuning', 2, 10, 'pcs', 7500, 'https://cdn.discordapp.com/attachments/695903903040012318/696018859932516372/tahu_kuning.jpg', NULL, 1),
(112, 'Ikan Bandeng', 2, 2, 'ekor', 14700, '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Item_Price_Arrow`
--

CREATE TABLE `item_price_arrow` (
  `id_item` int(11) NOT NULL,
  `diff` int(11) DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Rating`
--

CREATE TABLE `item_rating` (
  `id_item` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Status_Pengadaan`
--

CREATE TABLE `status_pengadaan` (
  `id_status_pengadaan` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_cart_status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `token` varchar(20) DEFAULT NULL,
  `reset_token` varchar(50) DEFAULT NULL,
  `reset_request` timestamp NULL DEFAULT NULL,
  `reset_timeout` timestamp NULL DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `Cache_Search_Query`
--
ALTER TABLE `Cache_Search_Query`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `query` (`squery`);

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_address` (`id_address`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `Cart_Item`
--
ALTER TABLE `Cart_Item`
  ADD PRIMARY KEY (`id_cart_item`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `Cart_Status`
--
ALTER TABLE `Cart_Status`
  ADD PRIMARY KEY (`id_cart_status`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `Item_Price_Arrow`
--
ALTER TABLE `Item_Price_Arrow`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `Item_Rating`
--
ALTER TABLE `Item_Rating`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `Status_Pengadaan`
--
ALTER TABLE `Status_Pengadaan`
  ADD PRIMARY KEY (`id_status_pengadaan`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_cart_status` (`id_cart_status`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Cache_Search_Query`
--
ALTER TABLE `Cache_Search_Query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Cart_Item`
--
ALTER TABLE `Cart_Item`
  MODIFY `id_cart_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `Cart_Status`
--
ALTER TABLE `Cart_Status`
  MODIFY `id_cart_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Item`
--
ALTER TABLE `Item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `Status_Pengadaan`
--
ALTER TABLE `Status_Pengadaan`
  MODIFY `id_status_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
