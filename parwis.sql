-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2025 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parwis`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `nama_rental`, `username`, `alamat`, `gender`, `no_telp`, `no_ktp`, `password`, `role_id`) VALUES
(6, 'Admin', '', 'admin', 'admin', 'Laki-laki', '000', '000', '21232f297a57a5a743894a0e4a801fc3', 1),
(7, 'Riando Putra ', 'Parwis Transport', 'riandoputra', 'Jl. Riau, Pekanbaru', 'Laki-laki', '082286789987', '1403301109948876', '1ab64f64dc250c00e3b78f222bdbc01e', 3),
(8, 'Cahyo Purnomo', 'Parwis Transport', 'cahyopurnomo', 'Jl. Soekarno-Hatta, Pekanbaru', 'Laki-laki', '083178664785', '1402030909897765', 'b83e1bc6933e8be68e7a931a203b1555', 3),
(9, 'M. Dani', '', 'mdani', 'Jl. Teuku Umar, Pekanbaru', 'Laki-laki', '081266774667', '1401022104901263', '4aef180c96fd94d684dc8a3d2b4135ca', 2),
(10, 'Musli Khairul', 'Parwis Transport', 'muslikhairul', 'Jl. SM Amin, Pekanbaru', 'Laki-laki', '08115656777', '1402020412858784', 'cf9e356170ec20f1a7fd572c4785c456', 3),
(11, 'Adi Maarif', '', 'adimaarif', 'Jl. Soebrantas, Pekanbaru', 'Laki-laki', '085288544488', '1402010904837655', 'd43d6f5df36c34f256a072701e96cb49', 2),
(12, 'Dewi Utami', '', 'dewiutami', 'Jl. Taman Karya, Jl. Soebrantas, Pekanbaru', 'Perempuan', '081234778655', '1402031205904465', '0a6d6a030c1ace188fbde8450603f62d', 2),
(13, 'Murni Rusmiah', '', 'murnirusmiah', 'Jl. Durian, Pekanbaru', 'Perempuan', '081276548897', '1402030405837655', '2e44fb210acac79046c7ee536fc06874', 2),
(14, 'Latif Akbar', '', 'latifakbar', 'Jl. Nangka, Pekanbaru', 'Laki-laki', '082136774589', '1403020711895674', 'cef19b883a25d09aa2454df9c4bcd0e6', 2),
(15, 'Wira Krisna', 'Parwis Transport', 'wirakrisna', 'Jl. Arifin Achmad, Pekanbaru', 'Laki-laki', '082344557665', '1402021208846755', '39c1a3157ee234c0e972e45e3431a259', 3),
(16, 'Cengkir Mansur', 'Parwis Transport', 'cengkirmansur', 'Jl. Soebrantas', 'Laki-laki', '0822222212312', '423423432423', '960e8d1b6b24cb8de1eac32592de12ca', 3),
(21, 'Yusuf', '', 'yusuf', 'Sendangmulyo, Tembalang, Semarang', 'Laki-laki', '085111222333', '123487676678877', 'dd2eb170076a5dec97cdbbbbff9a4405', 2),
(23, 'Endang', '', 'endang', 'Medan', 'Perempuan', '085777666282', '6865865', '7565a1fb1ffd44d62ba851ce3540b5e4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `kode_type` varchar(120) NOT NULL,
  `merk` varchar(120) NOT NULL,
  `kapasitas` int(20) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `supir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_rental`, `kode_type`, `merk`, `kapasitas`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `supir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(9, 'Putra Riau Travel', 'MPV', 'Suzuki All New Ertiga', 7, 'H 8734 DG', 'Abu-abu', '2022', '1', 325000, 75000, 1, 1, 1, 1, 'ertiga1.png'),
(10, 'Putra Riau Travel', 'MPV', 'Toyota Grand New Avanza', 7, 'H 3478 NB', 'Hitam', '2023', '1', 275000, 50000, 1, 1, 1, 1, 'gn_avanza1.png'),
(11, 'Putra Riau Travel', 'VAN', 'Isuzu Elf Giga NLR', 19, 'H 1928 SM', 'Putih', '2020', '1', 1300000, 300000, 1, 1, 1, 1, 'elf_giga_nlr1.png'),
(12, 'Putra Riau Travel', 'VAN', 'Isuzu Elf Long NKR', 18, 'H 7064 KJ', 'Silver', '2020', '1', 1300000, 300000, 1, 1, 1, 1, 'elf_long_nkr1.png'),
(13, 'Permata Rental', 'VAN', 'Toyota Hiace Commuter', 16, 'H 1287 MW', 'Putih', '2019', '1', 1300000, 300000, 1, 1, 1, 1, 'hiace_commuter1.png'),
(14, 'Permata Rental', 'VAN', 'Toyota Hiace Premio', 12, 'H 4979 FH', 'Putih', '2020', '1', 1000000, 300000, 1, 1, 1, 1, 'hiace_premio1.png'),
(15, 'Permata Rental', 'PUS', 'Suzuki New Carry Pick-Up', 2, 'H 7395 XJ', 'Hitam', '2019', '1', 225000, 50000, 1, 1, 1, 1, 'new_carry_pickup1.png'),
(16, 'Sejahtera Travel', 'PUS', 'Daihatsu Granmax Pick-Up', 2, 'H 2974 DJ', 'Hitam', '2019', '1', 225000, 50000, 1, 1, 1, 1, 'granmax_pickup1.png'),
(17, 'Sejahtera Travel', 'HB', 'Honda Jazz', 5, 'H 7497 KD', 'Hitam', '2020', '1', 300000, 75000, 1, 1, 1, 1, 'jazz1.png'),
(18, 'Sejahtera Travel', 'HB', 'Honda All New Brio', 5, 'H 4689 DG', 'Abu-abu', '2021', '1', 300000, 75000, 1, 1, 1, 1, 'brio1.png'),
(19, 'Sejahtera Travel', 'MPV', 'Honda Mobilio', 7, 'H 8654 FG', 'Hitam', '2021', '1', 275000, 50000, 1, 1, 1, 1, 'mobilio1.png'),
(20, '', 'MPV', 'Toyota Calya', 7, 'H 9087 JK', 'Putih', '2021', '1', 250000, 50000, 1, 1, 1, 1, 'calya1.png'),
(21, '', 'HB', 'Toyota Agya', 5, 'H 3755 CF', 'Silver', '2020', '1', 250000, 50000, 1, 1, 1, 1, 'agya1.png'),
(22, '', 'MPV', 'Toyota All New Avanza', 7, 'H 6767 BB', 'Hitam', '2023', '1', 325000, 75000, 1, 1, 1, 1, 'all_new_avanza1.png'),
(23, '', 'MPV', 'Toyota Innova Reborn', 7, 'H 1234 AS', 'Hitam', '2022', '1', 500000, 125000, 1, 1, 1, 1, 'innova_reborn1.png');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_rekening` varchar(120) NOT NULL,
  `no_rekening` varchar(120) NOT NULL,
  `atas_nama` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_rekening`, `no_rekening`, `atas_nama`) VALUES
(2, 'Bank BRI', '42367482374', 'Akmal Zhorif'),
(8, 'Bank BNI', '2367489773', 'Akmal Zhorif'),
(9, 'BANK Mandiri', '3493439897432', 'Akmal Zhorif'),
(10, 'DANA', '085589787123', 'Parwis Transport'),
(19, 'OVO', '081684642111', 'Parwis Transport');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `total_denda` varchar(120) NOT NULL DEFAULT '0',
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(130) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `nama_rental`, `tanggal_rental`, `tanggal_kembali`, `harga`, `denda`, `total_denda`, `tanggal_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(10, 9, 17, 'Sejahtera Travel', '2020-06-08', '2020-06-12', 800000, 100000, '58604166.666667', '2022-01-19', 'Kembali', 'Selesai', '009.PNG', 1),
(15, 20, 9, 'Putra Riau Travel', '2022-01-09', '2022-01-12', 300000, 45000, '90000', '2022-01-14', 'Kembali', 'Selesai', 'Bukti_Pembayaran_Contoh.jpg', 1),
(16, 21, 10, '', '2024-08-13', '2024-08-14', 275000, 50000, '50000', '2024-08-15', 'Kembali', 'Selesai', 'car-4.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SDN', 'Sedan'),
(2, 'HB', 'Hatchback'),
(3, 'MPV', 'Multi Purpose Vehicle (MPV)'),
(4, 'SUV', 'Sport Utility Vehicle (SUV)'),
(5, 'PUS', 'Pick-Up Single Cabin'),
(6, 'PUD', 'Pick-Up Double Cabin'),
(7, 'VAN', 'Van');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
