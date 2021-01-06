-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 08:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hayeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `level` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama`, `email`, `level`) VALUES
(3, 'admin', 'admin', 'admin', 'admin@admin.com', 'A'),
(4, 'karina', 'karina', 'Karina  aespa', 'karina@gmail.com', 'V');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_kirim`
--

CREATE TABLE `tbl_biaya_kirim` (
  `id_biaya_kirim` int(10) NOT NULL,
  `kota` int(10) NOT NULL,
  `biaya` int(20) NOT NULL,
  `kurir` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biaya_kirim`
--

INSERT INTO `tbl_biaya_kirim` (`id_biaya_kirim`, `kota`, `biaya`, `kurir`) VALUES
(1, 2, 2700, 2),
(2, 4, 200, 4),
(4, 3, 500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_detail_order` int(11) NOT NULL,
  `id_order` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_detail_order`, `id_order`, `id_produk`, `jumlah`, `harga`) VALUES
(1, 7, 9, 2, 1200),
(2, 0, 9, 2, 1200),
(3, 0, 8, 1, 900),
(4, 0, 9, 2, 1200),
(5, 0, 8, 1, 900),
(6, 0, 9, 2, 1200),
(7, 0, 8, 1, 900),
(8, 0, 9, 2, 1200),
(9, 0, 8, 1, 900),
(10, 0, 9, 2, 1200),
(11, 0, 8, 1, 900),
(12, 0, 8, 1, 900),
(13, 0, 7, 1, 1000),
(14, 0, 9, 1, 1200),
(15, 0, 8, 2, 900),
(16, 0, 7, 1, 1000),
(17, 0, 9, 1, 1200),
(18, 0, 8, 2, 900),
(19, 0, 7, 1, 1000),
(20, 0, 9, 1, 1200),
(21, 0, 1, 1, 1200),
(22, 1, 8, 3, 900),
(23, 1, 7, 1, 1000),
(24, 1, 9, 1, 1200),
(25, 1, 1, 1, 1200),
(26, 2, 8, 3, 900),
(27, 2, 7, 1, 1000),
(28, 2, 9, 1, 1200),
(29, 2, 1, 1, 1200),
(30, 3, 8, 3, 900),
(31, 3, 7, 1, 1000),
(32, 3, 9, 1, 1200),
(33, 3, 1, 1, 1200),
(34, 4, 9, 1, 1200),
(35, 5, 8, 2, 1100),
(36, 6, 18, 1, 2950),
(37, 6, 13, 1, 2100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(3) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Album'),
(2, 'Lightstick'),
(6, 'Photocard'),
(7, 'Season'),
(8, 'beyondlive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` int(3) NOT NULL,
  `nama_kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`) VALUES
(2, 'Magelang'),
(3, 'Semarang'),
(4, 'Yogyakarta'),
(5, 'surabaya'),
(6, 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurir`
--

CREATE TABLE `tbl_kurir` (
  `id_kurir` int(3) NOT NULL,
  `nama_kurir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kurir`
--

INSERT INTO `tbl_kurir` (`id_kurir`, `nama_kurir`) VALUES
(2, 'J&T'),
(3, 'JnE'),
(4, 'SiCepat'),
(5, 'Pos');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `username`, `password`, `nama`, `alamat`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `id_kota`, `email`, `no_hp`, `status`) VALUES
(7, 'lala', 'lala', 'lala', 'mancasan', '0', '', '0', '0', '', 4, 'lala@gmail.com', '0987', 'Y'),
(8, 'nana', 'nana', 'nana lee', 'mancasan', '0', '', '0', '0', '', 2, 'nana@gmail.com', '09874', 'Y'),
(9, 'mark', 'mark', 'mark', 'mancasan', '0', '', '0', '0', '', 2, 'mark@gmail.com', '9876', 'Y'),
(10, 'lucas', 'lucas', 'wong lucas', 'mancasan', '0', '', '0', '0', '', 0, 'lucas@gmail.com', '01918171654', 'Y'),
(11, 'xiaojun', 'xiaojun', 'xiaojun', 'Condong catur', 'Condong Catur', 'Depok', 'Sleman', 'Yogyakarta', '9987', 4, 'xiaojun@gmail.com', '09876', 'Y'),
(16, 'jeno', 'jeno', 'jeno', 'Jalan Kampus', 'Condong Catur', 'Depok', 'Sleman', 'Yogyakarta', '8897', 4, 'jeno@gmail.com', '08578966790', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merek`
--

CREATE TABLE `tbl_merek` (
  `id_merek` int(3) NOT NULL,
  `nama_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merek`
--

INSERT INTO `tbl_merek` (`id_merek`, `nama_merek`) VALUES
(1, 'NCT 127'),
(2, 'NCT Dream'),
(3, 'SEVENTEEN'),
(4, 'WAY V'),
(6, 'GOT7'),
(9, 'aespa'),
(10, 'Girls Generation'),
(11, 'GFRIEND'),
(12, 'TWICE'),
(13, 'IZ*ONE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(5) NOT NULL,
  `status_order` char(1) NOT NULL,
  `id_produk` int(3) DEFAULT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `status_order`, `id_produk`, `jumlah`, `harga`, `id_session`) VALUES
(5, 'P', 9, '4', 1200, 'dt3ksa1jsdu9tim0otcrc3800c'),
(7, 'P', 8, '1', 900, 'dt3ksa1jsdu9tim0otcrc3800c'),
(8, 'P', 1, '1', 1200, 'dt3ksa1jsdu9tim0otcrc3800c'),
(9, 'P', 9, '1', 1200, 'g86gc0lbgnceq19i3ue5tfc9r4'),
(10, 'P', 8, '2', 900, 'g86gc0lbgnceq19i3ue5tfc9r4'),
(11, 'P', 9, '2', 1200, '5lprtu6gtc8a7fvtf3eomv914g'),
(12, 'P', 8, '1', 900, '5lprtu6gtc8a7fvtf3eomv914g'),
(13, 'P', 8, '1', 900, '5oq77bcm5g3s69eeha2oo98sc6'),
(14, 'P', 7, '1', 1000, '5oq77bcm5g3s69eeha2oo98sc6'),
(15, 'P', 9, '1', 1200, '0jh98buq6fiaojnv9pdco43vup'),
(22, 'P', 8, '2', 1100, 'gfrdg8o38sv8b624g7ba28fe0k'),
(23, 'P', 18, '1', 2950, 'd35cn3mi75ro78v7e7pldovmed'),
(24, 'P', 13, '1', 2100, 'd35cn3mi75ro78v7e7pldovmed'),
(27, 'P', 17, '2', 3100, 'pk36l6voq19h937ktj8voc7s4g'),
(29, 'P', 18, '1', 2950, 'pk36l6voq19h937ktj8voc7s4g'),
(30, 'P', 8, '2', 1100, 'iefetddbaiulj7o84e777h8g5g'),
(35, 'P', 24, '2', 200000, '4on7kffnfi39l981t6q4ftck6j'),
(38, 'P', 22, '1', 234000, 'f6eq3118kcsg7rn7fad079jcvb'),
(39, 'P', 20, '1', 296, 'f6eq3118kcsg7rn7fad079jcvb'),
(40, 'P', 20, '1', 296, 'u2s7hsu7hu4kivm6bpo6qadjhl'),
(41, 'P', 22, '1', 234000, 'u2s7hsu7hu4kivm6bpo6qadjhl');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` int(20) NOT NULL,
  `id_member` int(20) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `status_order` varchar(20) NOT NULL,
  `biaya_kirim` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `id_member`, `tanggal_beli`, `status_order`, `biaya_kirim`) VALUES
(1, 9, '2020-07-23', 'S', 1000),
(2, 9, '2020-07-23', 'P', 1000),
(3, 7, '2020-07-23', 'S', 200),
(4, 7, '2020-07-23', 'S', 0),
(5, 9, '2020-07-23', 'K', 1000),
(6, 9, '2020-07-24', 'S', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `id_vendor` varchar(10) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(20) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `slide` char(1) DEFAULT NULL,
  `rekomendasi` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_vendor`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `slide`, `rekomendasi`) VALUES
(20, '1', 0, 'TWICE - EYES WIDE OPEN', 'TWICE - EYES WIDE OPEN', 296, 'album-twice.png', 'Y', 'Y'),
(21, '1', 1, 'SNSD - SEASON GREETING', 'GIRLS GENERATION - SEASON GREETING 2021', 456, 'season-snsd2.jpg', 'Y', 'Y'),
(22, '1', 1, 'IZ*ONE  - One-reeler', '- Out Box : 220 x 160mm  - Cover Postcard : Random 1 out of 12  - Photobook  - CD  - Movie Tickets  - Circle Reel Photo  - Film Photo : Random 1 out of 12  - Photocard : Random 2 out of 24  - AR Photocard : Random 1 out of 12  ? IZ* Movie Series      - IZ Movie Photo : Random 1 out of 12      - IZ Movie Sign Sticker : Random 1 out of 12      - IZ Movie Poster(Folded)  - Poster : 1st Press Only / Random 1 out of 15  - Special Photocard Set(Sign Printing) : Pre Order Only / SET Only  ? Polaroid Photocard is only included in 240EA first-press albums.', 234000, 'album-izone.jpg', 'Y', 'Y'),
(23, '1', 1, 'NCT 2020 -  RESONANCE PT.2', 'NCT 2020 - THE 2ND ALBUM RESONANCE PT.2', 456000, 'album-nct2.jpg', 'Y', 'Y'),
(24, '1', 6, 'JENO PC', 'jeno pc', 200000, 'pc-jeno.jpg', 'Y', 'Y'),
(25, '1', 1, 'Fromis_9 - My Little Society', 'Fromis_9 Mini Album Vol. 3 - My Little Society * CD + Booklet (72 P) + Random Minicard + Random Photocard (2 P)  * Deco Sticker : First press only.  * Order now and get free poster.', 456000, 'album-fromis2.jpg', 'Y', 'Y'),
(26, '2', 8, 'Beyond Live NCT 127', '??? 127 ?????? ???? ???????? (?????? ??? ??????): - BROCHURE - PHOTOCARD', 560000, 'nct27.jpg', 'Y', 'Y'),
(27, '2', 8, 'Beyond LIVE NCT DREAM', 'Beyond LIVE BROCHURE NCT DREAM [Beyond the Dream Show] Size : 225 * 297 (mm)  Material : Paper  -Brochure 1ea (72p)  -Photo Card 1ea (Random)', 675000, 'beyond-nct.jpg', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_vendor` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nama_store` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `norek` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_vendor`, `nama`, `nama_store`, `alamat`, `bank`, `nohp`, `norek`, `email`, `username`, `password`) VALUES
('1', 'karina', 'daehan minguk', 'Semarang', 'Mandiri', '08576543217', '', 'karina@gmail.com', 'karina', 'karina'),
('2', 'jeje', 'jee store', 'Jakarta', 'BRI', '085742876554', '', 'jee@gmail.com', 'jeje', 'jeje');

-- --------------------------------------------------------

--
-- Table structure for table `tb_review`
--

CREATE TABLE `tb_review` (
  `id_review` varchar(10) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `id_merek` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `review` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_review`
--

INSERT INTO `tb_review` (`id_review`, `id_kategori`, `id_merek`, `nama`, `username`, `review`) VALUES
('1', 2, 1, 'mark', 'markeu', 'product bagus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  ADD PRIMARY KEY (`id_biaya_kirim`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_detail_order`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_merek`
--
ALTER TABLE `tbl_merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Indexes for table `tb_review`
--
ALTER TABLE `tb_review`
  ADD PRIMARY KEY (`id_review`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  MODIFY `id_biaya_kirim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id_detail_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  MODIFY `id_kurir` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_merek`
--
ALTER TABLE `tbl_merek`
  MODIFY `id_merek` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id_pembelian` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
