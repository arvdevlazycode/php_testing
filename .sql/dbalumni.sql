-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2019 at 11:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbalumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `r_agama`
--

CREATE TABLE `r_agama` (
  `RAGAMA_KODE` char(1) NOT NULL COMMENT 'Kode Agama',
  `RAGAMA_NAMA` varchar(15) DEFAULT NULL COMMENT 'Nama Agama'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Kode Agama';

--
-- Dumping data for table `r_agama`
--

INSERT INTO `r_agama` (`RAGAMA_KODE`, `RAGAMA_NAMA`) VALUES('1', 'Islam');
INSERT INTO `r_agama` (`RAGAMA_KODE`, `RAGAMA_NAMA`) VALUES('2', 'Kristen');
INSERT INTO `r_agama` (`RAGAMA_KODE`, `RAGAMA_NAMA`) VALUES('3', 'Katolik');
INSERT INTO `r_agama` (`RAGAMA_KODE`, `RAGAMA_NAMA`) VALUES('4', 'Hindu');
INSERT INTO `r_agama` (`RAGAMA_KODE`, `RAGAMA_NAMA`) VALUES('5', 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `r_calon`
--

CREATE TABLE `r_calon` (
  `RCALON_ID` bigint(20) NOT NULL COMMENT 'Id Calon',
  `RSTATKAWIN_KODE` char(2) DEFAULT NULL COMMENT 'Kode Status Perkawinan',
  `RUSERAKUN_NAMA` varchar(15) DEFAULT NULL COMMENT 'Nama akun',
  `RJK_KODE` char(1) DEFAULT NULL COMMENT 'Kode Jenis Kelamin',
  `RKERJA_ID` int(11) DEFAULT NULL COMMENT 'Id Pekerjaan',
  `RGOLDARAH_ID` int(11) DEFAULT NULL COMMENT 'Id Gol darah',
  `RKOTA_ID` int(11) DEFAULT NULL COMMENT 'Id Kota',
  `RWN_KODE` char(3) DEFAULT NULL COMMENT 'Kode Kewargaangaraan',
  `RSTATVER_KODE` char(1) NOT NULL COMMENT 'Kode Status Verifikasi',
  `RAGAMA_KODE` char(1) DEFAULT NULL COMMENT 'Kode Agama',
  `RCALON_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Calon',
  `RCALON_PANGGILAN` varchar(30) DEFAULT NULL COMMENT 'Panggilan',
  `RCALON_TEMPATLAHIR` varchar(30) DEFAULT NULL COMMENT 'Tempat Lahir',
  `RCALON_TGLLAHIR` date DEFAULT NULL COMMENT 'Tanggal Lahir',
  `RCALON_ALAMAT` varchar(100) DEFAULT NULL COMMENT 'Alamat',
  `RCALON_RT` varchar(3) DEFAULT NULL COMMENT 'RT',
  `RCALON_RW` varchar(3) DEFAULT NULL COMMENT 'RW',
  `RCALON_KEL` varchar(50) DEFAULT NULL COMMENT 'Kelurahan',
  `RCALON_KEC` varchar(50) DEFAULT NULL COMMENT 'Kecamatan',
  `RCALON_NOHAPE` varchar(30) DEFAULT NULL COMMENT 'No Hape',
  `RCALON_EMAIL` varchar(50) DEFAULT NULL COMMENT 'Email',
  `RCALON_TGLEXPIRED` date DEFAULT NULL COMMENT 'Tanggal Expired Id/KTP',
  `RCALON_TGLENTRI` date DEFAULT NULL COMMENT 'Tanggal Entri',
  `RCALON_TGLVERVAL` date DEFAULT NULL COMMENT 'Tanggal Verifikasi dan Validasi',
  `RCALON_TGLUPDATE` date DEFAULT NULL COMMENT 'Tanggal Update terakhir'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Data calon anggota';

--
-- Dumping data for table `r_calon`
--

INSERT INTO `r_calon` (`RCALON_ID`, `RSTATKAWIN_KODE`, `RUSERAKUN_NAMA`, `RJK_KODE`, `RKERJA_ID`, `RGOLDARAH_ID`, `RKOTA_ID`, `RWN_KODE`, `RSTATVER_KODE`, `RAGAMA_KODE`, `RCALON_NAMA`, `RCALON_PANGGILAN`, `RCALON_TEMPATLAHIR`, `RCALON_TGLLAHIR`, `RCALON_ALAMAT`, `RCALON_RT`, `RCALON_RW`, `RCALON_KEL`, `RCALON_KEC`, `RCALON_NOHAPE`, `RCALON_EMAIL`, `RCALON_TGLEXPIRED`, `RCALON_TGLENTRI`, `RCALON_TGLVERVAL`, `RCALON_TGLUPDATE`) VALUES(6, '2', NULL, '1', 1, 3, 1, '1', '3', '1', 'Budi', 'Budi', 'Bandung', '1963-01-01', 'Dago ', '01', '02', 'Dago', 'Coblong', '0856777777', 'budi@budijuga.com', NULL, '2019-09-05', '2019-09-09', NULL);
INSERT INTO `r_calon` (`RCALON_ID`, `RSTATKAWIN_KODE`, `RUSERAKUN_NAMA`, `RJK_KODE`, `RKERJA_ID`, `RGOLDARAH_ID`, `RKOTA_ID`, `RWN_KODE`, `RSTATVER_KODE`, `RAGAMA_KODE`, `RCALON_NAMA`, `RCALON_PANGGILAN`, `RCALON_TEMPATLAHIR`, `RCALON_TGLLAHIR`, `RCALON_ALAMAT`, `RCALON_RT`, `RCALON_RW`, `RCALON_KEL`, `RCALON_KEC`, `RCALON_NOHAPE`, `RCALON_EMAIL`, `RCALON_TGLEXPIRED`, `RCALON_TGLENTRI`, `RCALON_TGLVERVAL`, `RCALON_TGLUPDATE`) VALUES(7, '2', NULL, '1', 1, 2, 1, '1', '3', '1', 'Joni', 'Jon', 'Jakarta', '1980-12-28', 'Dipati Ukur', '03', '02', 'Dago', 'Cibeunying', '0856777777', 'joni@jonijuga.id', NULL, '2019-09-05', '2019-09-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_goldarah`
--

CREATE TABLE `r_goldarah` (
  `RGOLDARAH_ID` int(11) NOT NULL COMMENT 'Id Gol darah',
  `RGOLDARAH_KODE` char(2) DEFAULT NULL COMMENT 'Kode Gol darah'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref kode golongan darah';

--
-- Dumping data for table `r_goldarah`
--

INSERT INTO `r_goldarah` (`RGOLDARAH_ID`, `RGOLDARAH_KODE`) VALUES(1, 'A');
INSERT INTO `r_goldarah` (`RGOLDARAH_ID`, `RGOLDARAH_KODE`) VALUES(2, 'B');
INSERT INTO `r_goldarah` (`RGOLDARAH_ID`, `RGOLDARAH_KODE`) VALUES(3, 'O');
INSERT INTO `r_goldarah` (`RGOLDARAH_ID`, `RGOLDARAH_KODE`) VALUES(4, 'AB');

-- --------------------------------------------------------

--
-- Table structure for table `r_image`
--

CREATE TABLE `r_image` (
  `RIMAGE_ID` bigint(20) NOT NULL COMMENT 'Id Image',
  `RTFILE_ID` bigint(20) DEFAULT NULL COMMENT 'Id Tipe file',
  `RIMAGE_CAPTION` text DEFAULT NULL COMMENT 'Caption Image',
  `RIMAGE_DESK` text DEFAULT NULL COMMENT 'Deskripsi Image',
  `RIMAGE_TGLDIBUAT` date DEFAULT NULL COMMENT 'Tanggal Dibuat',
  `RIMAGE_TGLUPLOAD` datetime DEFAULT NULL COMMENT 'Waktu upload',
  `RIMAGE_NMFLE` text DEFAULT NULL COMMENT 'Nama File',
  `RIMAGE_FOLDER` varchar(100) DEFAULT NULL COMMENT 'Folder'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Data image';

-- --------------------------------------------------------

--
-- Table structure for table `r_jk`
--

CREATE TABLE `r_jk` (
  `RJK_KODE` char(1) NOT NULL COMMENT 'Kode Jenis Kelamin',
  `RJK_NAMA` varchar(15) DEFAULT NULL COMMENT 'Jenis Kelamin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Jenis Kelamin';

--
-- Dumping data for table `r_jk`
--

INSERT INTO `r_jk` (`RJK_KODE`, `RJK_NAMA`) VALUES('1', 'Laki-laki');
INSERT INTO `r_jk` (`RJK_KODE`, `RJK_NAMA`) VALUES('2', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `r_jurusan`
--

CREATE TABLE `r_jurusan` (
  `RJURUSAN_KODE` char(2) NOT NULL COMMENT 'Kode Jurusan',
  `RJURUSAN_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Jurusan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Jurusan';

-- --------------------------------------------------------

--
-- Table structure for table `r_kerja`
--

CREATE TABLE `r_kerja` (
  `RKERJA_ID` bigint(20) NOT NULL COMMENT 'Id Pekerjaan',
  `RKERJA_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Pekerjaan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Kode Pekerjaan';

--
-- Dumping data for table `r_kerja`
--

INSERT INTO `r_kerja` (`RKERJA_ID`, `RKERJA_NAMA`) VALUES(1, 'PNS');
INSERT INTO `r_kerja` (`RKERJA_ID`, `RKERJA_NAMA`) VALUES(2, 'Pegawai Swasta');
INSERT INTO `r_kerja` (`RKERJA_ID`, `RKERJA_NAMA`) VALUES(3, 'Pelajar/Mahasiswa');
INSERT INTO `r_kerja` (`RKERJA_ID`, `RKERJA_NAMA`) VALUES(4, 'Petani');
INSERT INTO `r_kerja` (`RKERJA_ID`, `RKERJA_NAMA`) VALUES(5, 'Pedagang');

-- --------------------------------------------------------

--
-- Table structure for table `r_kota`
--

CREATE TABLE `r_kota` (
  `RKOTA_ID` bigint(20) NOT NULL COMMENT 'Id Kota',
  `RKOTA_KODE` char(3) DEFAULT NULL COMMENT 'Kode Kota',
  `RKOTA_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Kota '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Daftar Kota';

--
-- Dumping data for table `r_kota`
--

INSERT INTO `r_kota` (`RKOTA_ID`, `RKOTA_KODE`, `RKOTA_NAMA`) VALUES(1, '022', 'Kota Bandung');
INSERT INTO `r_kota` (`RKOTA_ID`, `RKOTA_KODE`, `RKOTA_NAMA`) VALUES(3, '023', 'Cirebon');
INSERT INTO `r_kota` (`RKOTA_ID`, `RKOTA_KODE`, `RKOTA_NAMA`) VALUES(4, '026', 'Tasikmalaya');
INSERT INTO `r_kota` (`RKOTA_ID`, `RKOTA_KODE`, `RKOTA_NAMA`) VALUES(5, '021', 'Jakarta');
INSERT INTO `r_kota` (`RKOTA_ID`, `RKOTA_KODE`, `RKOTA_NAMA`) VALUES(6, '025', 'Bogor');

-- --------------------------------------------------------

--
-- Table structure for table `r_personal`
--

CREATE TABLE `r_personal` (
  `RPERSONAL_ID` bigint(20) NOT NULL COMMENT 'Id Personal',
  `RGOLDARAH_ID` int(11) DEFAULT NULL COMMENT 'Id Gol darah',
  `RJK_KODE` char(1) DEFAULT NULL COMMENT 'Kode Jenis Kelamin',
  `RSTATKAWIN_KODE` char(2) DEFAULT NULL COMMENT 'Kode Status Perkawinan',
  `RKERJA_ID` int(11) DEFAULT NULL COMMENT 'Id Pekerjaan',
  `RWN_KODE` char(3) DEFAULT NULL COMMENT 'Kode Kewargaangaraan',
  `RKOTA_ID` int(11) DEFAULT NULL COMMENT 'Id Kota',
  `RAGAMA_KODE` char(1) DEFAULT NULL COMMENT 'Kode Agama',
  `RPERSONAL_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama ',
  `RPERSONAL_PANGGILAN` varchar(30) DEFAULT NULL COMMENT 'Panggilan',
  `RPERSONAL_TEMPATLAHIR` varchar(30) DEFAULT NULL COMMENT 'Tempat Lahir',
  `RPERSONAL_TGLLAHIR` date DEFAULT NULL COMMENT 'Tanggal Lahir',
  `RPERSONAL_ALAMAT` varchar(100) DEFAULT NULL COMMENT 'Alamat',
  `RPERSONAL_RT` varchar(3) DEFAULT NULL COMMENT 'RT',
  `RPERSONAL_RW` varchar(3) DEFAULT NULL COMMENT 'RW',
  `RPERSONAL_KEL` varchar(50) DEFAULT NULL COMMENT 'Kelurahan',
  `RPERSONAL_KEC` varchar(50) DEFAULT NULL COMMENT 'Kecamatan',
  `RPERSONAL_NOHAPE` varchar(30) DEFAULT NULL COMMENT 'No Hape',
  `RPERSONAL_EMAIL` varchar(50) DEFAULT NULL COMMENT 'Email',
  `RPERSONAL_TGLEXPIRED` date DEFAULT NULL COMMENT 'Tanggal Expired Id/KTP',
  `RPERSONAL_TGLENTRI` date DEFAULT NULL COMMENT 'Tanggal Entri',
  `RPERSONAL_TGLVERVAL` date DEFAULT NULL COMMENT 'Tanggal Verifikasi dan Validasi',
  `RPERSONAL_TGLUPDATE` date DEFAULT NULL COMMENT 'Tangaal update terakhir'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Data personal';

--
-- Dumping data for table `r_personal`
--

INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(1, 3, '1', '2', 1, '1', 1, '1', 'Budi', 'Budi', 'Bandung', '1963-01-01', 'Dago ', '01', '02', 'Dago', 'Coblong', '0856777777', 'budi@budijuga.com', NULL, '2019-09-05', '2019-09-09', NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(4, 1, '1', '1', 1, '1', 1, '1', 'Abdul', 'Abdul', 'Bandung', '1980-01-01', 'Dago', '01', '05', 'Dago', 'Coblong', '0899000', 'budi@budi.id', NULL, '2019-10-16', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(5, 2, '1', '2', 1, '1', 1, '1', 'Agie Adang', 'Agi', 'Cirebon', '1970-01-01', 'Siliwangi', '01', '05', 'Siliwangi', 'Lebak Gede', '879798', 'Agi@saja.co', NULL, '2019-10-16', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(6, 4, '1', '4', 2, '1', 4, '2', 'Yudi', 'Yud', 'Jogja', '1987-02-02', 'Alun-alun', '89', '87', 'Mbuh', 'Raweruh', '0989898', 'yud@email.id', NULL, '2019-10-16', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(7, 3, '2', '1', 4, '1', 3, '5', 'Yati', 'Yati', 'Bogor', '1975-02-02', 'Wahidin', '09', '02', 'Kesenden', 'Cirebon Utara', '061111111', 'yati@gmal.com', NULL, '2019-10-16', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(8, 3, '2', '1', 5, '1', 6, '5', 'Catwoman', 'Cati', 'Bekasi', '1975-12-12', 'Otten', '04', '05', 'Dagelan', 'Randu', '0877878', 'cati@catwoman.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(9, 2, '1', '2', 3, '1', 4, '2', 'Dani K', 'Dani', 'Jakarta', '1975-03-12', 'Batu', '03', '05', 'Cibeunying', 'Kaler', '0877878767', 'info@danik.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(10, 1, '2', '2', 3, '1', 5, '1', 'Eti S', 'Eti', 'Majalengka', '1980-03-12', 'Pintu Air', '02', '01', 'Playon', 'Kidul', '08980980', 'info@playon.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(11, 1, '1', '4', 2, '1', 1, '1', 'Farid Gaban', 'Gaban', 'Cirebon', '1960-03-05', 'Gaban Street', '02', '01', 'Telo', 'Moyo', '099999', 'info@pensiun.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(12, 1, '1', '1', 3, '1', 3, '1', 'Zaenal Abidin', 'Abidin', 'Cirebon', '1990-03-05', 'Kartini', '02', '01', 'Krucuk', 'Pilang', '0889999', 'info@pelajar.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(13, 3, '2', '2', 1, '1', 4, '1', 'Yuliati', 'Ati', 'Bandung', '1965-09-05', 'Tuparev', '02', '01', 'Plumbon', 'Dadakan', '08887777', 'ati@yuliati.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(14, 2, '1', '2', 2, '1', 1, '1', 'Gunadi Bambang', 'Agun', 'Bandung', '1977-09-05', 'Buah Batu', '02', '01', 'Buah Batu', 'Buah Batu', '0888534534', 'agun@bambang.com', NULL, '2019-10-17', NULL, NULL);
INSERT INTO `r_personal` (`RPERSONAL_ID`, `RGOLDARAH_ID`, `RJK_KODE`, `RSTATKAWIN_KODE`, `RKERJA_ID`, `RWN_KODE`, `RKOTA_ID`, `RAGAMA_KODE`, `RPERSONAL_NAMA`, `RPERSONAL_PANGGILAN`, `RPERSONAL_TEMPATLAHIR`, `RPERSONAL_TGLLAHIR`, `RPERSONAL_ALAMAT`, `RPERSONAL_RT`, `RPERSONAL_RW`, `RPERSONAL_KEL`, `RPERSONAL_KEC`, `RPERSONAL_NOHAPE`, `RPERSONAL_EMAIL`, `RPERSONAL_TGLEXPIRED`, `RPERSONAL_TGLENTRI`, `RPERSONAL_TGLVERVAL`, `RPERSONAL_TGLUPDATE`) VALUES(15, 1, '1', '2', 1, '1', 1, '1', 'Hardi Setiawan', 'Hardi', 'Solo', '1985-02-05', 'Uber', '02', '01', 'Ujung Berung', 'Cibiru', '0889898', 'hardi@boy.net', NULL, '2019-10-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_role`
--

CREATE TABLE `r_role` (
  `RROLE_KODE` char(1) NOT NULL COMMENT 'Kode Role',
  `RROLE_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Role',
  `RROLE_DESK` text DEFAULT NULL COMMENT 'Desk Role'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Role';

-- --------------------------------------------------------

--
-- Table structure for table `r_statakun`
--

CREATE TABLE `r_statakun` (
  `RSTATAKUN_KODE` char(1) NOT NULL COMMENT 'Kode Status Akun',
  `RSTATAKUN_NAMA` varchar(35) DEFAULT NULL COMMENT 'Nama Status Akun'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Status Akun';

-- --------------------------------------------------------

--
-- Table structure for table `r_statberita`
--

CREATE TABLE `r_statberita` (
  `RSTATBERITA_KODE` char(12) NOT NULL COMMENT 'Kode Status berita',
  `RSTATBERITA_NAMA` varchar(50) DEFAULT NULL COMMENT 'Nama Status Berita'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Status berita - draft - publish - hold';

-- --------------------------------------------------------

--
-- Table structure for table `r_statimage`
--

CREATE TABLE `r_statimage` (
  `RSTATIMAGE_KODE` char(2) NOT NULL COMMENT 'Kode Status Image',
  `RSTATIMAGE_DESK` varchar(35) DEFAULT NULL COMMENT 'Uraian Status Image'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Kode Status Image';

-- --------------------------------------------------------

--
-- Table structure for table `r_statkawin`
--

CREATE TABLE `r_statkawin` (
  `RSTATKAWIN_KODE` char(2) NOT NULL COMMENT 'Kode Status Perkawinan',
  `RSTATKAWIN_NAMA` varchar(25) DEFAULT NULL COMMENT 'Nama Status Perkawinan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Status Verifikasi';

--
-- Dumping data for table `r_statkawin`
--

INSERT INTO `r_statkawin` (`RSTATKAWIN_KODE`, `RSTATKAWIN_NAMA`) VALUES('1', 'Lajang');
INSERT INTO `r_statkawin` (`RSTATKAWIN_KODE`, `RSTATKAWIN_NAMA`) VALUES('2', 'Menikah');
INSERT INTO `r_statkawin` (`RSTATKAWIN_KODE`, `RSTATKAWIN_NAMA`) VALUES('3', 'Janda');
INSERT INTO `r_statkawin` (`RSTATKAWIN_KODE`, `RSTATKAWIN_NAMA`) VALUES('4', 'Duda');

-- --------------------------------------------------------

--
-- Table structure for table `r_statver`
--

CREATE TABLE `r_statver` (
  `RSTATVER_KODE` char(2) NOT NULL COMMENT 'Kode Status Verifikasi',
  `RSTATVER_NAMA` varchar(25) DEFAULT NULL COMMENT 'Nama Status Verifikasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_statver`
--

INSERT INTO `r_statver` (`RSTATVER_KODE`, `RSTATVER_NAMA`) VALUES('1', 'Baru');
INSERT INTO `r_statver` (`RSTATVER_KODE`, `RSTATVER_NAMA`) VALUES('2', 'Verified');
INSERT INTO `r_statver` (`RSTATVER_KODE`, `RSTATVER_NAMA`) VALUES('3', 'Disetujui');
INSERT INTO `r_statver` (`RSTATVER_KODE`, `RSTATVER_NAMA`) VALUES('4', 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `r_tfile`
--

CREATE TABLE `r_tfile` (
  `RTFILE_ID` bigint(20) NOT NULL COMMENT 'Id Tipe file',
  `RTFILE_EXT` varchar(4) DEFAULT NULL COMMENT 'Ekstensi file',
  `RTFILE_DESK` varchar(255) DEFAULT NULL COMMENT 'Desk tipe file'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tipe file';

-- --------------------------------------------------------

--
-- Table structure for table `r_userakun`
--

CREATE TABLE `r_userakun` (
  `RUSERAKUN_NAMA` varchar(15) NOT NULL COMMENT 'Nama akun',
  `RSTATAKUN_KODE` char(1) DEFAULT NULL COMMENT 'Kode Status Akun',
  `RPERSONAL_ID` bigint(20) NOT NULL COMMENT 'Id Personal',
  `RROLE_KODE` char(1) DEFAULT NULL COMMENT 'Kode Role',
  `RUSERAKUN_PASSW` text DEFAULT NULL COMMENT 'Password',
  `RUSERAKUN_TGLCREATE` date DEFAULT NULL COMMENT 'Tanggal dibuat',
  `RUSERAKUN_TGLVER` datetime DEFAULT NULL COMMENT 'Tanggal verifikasi',
  `RUSERAKUN_TGLEXPIRED` date DEFAULT NULL COMMENT 'Tanggal expired'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Akun pengguna';

-- --------------------------------------------------------

--
-- Table structure for table `r_userdata`
--

CREATE TABLE `r_userdata` (
  `RUSERAKUN_NAMA` varchar(15) NOT NULL COMMENT 'Nama akun',
  `RUSERDATA_TAHUN` int(11) NOT NULL COMMENT 'Tahun masuk',
  `RSTATAKUN_KODE` char(1) DEFAULT NULL COMMENT 'Kode Status Akun',
  `RUSERDATA_TGLMULAI` date DEFAULT NULL COMMENT 'Tanggal mulai'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Penanggung jawab data';

-- --------------------------------------------------------

--
-- Table structure for table `r_wn`
--

CREATE TABLE `r_wn` (
  `RWN_KODE` char(3) NOT NULL COMMENT 'Kode Kewargaangaraan',
  `RWN_NAMA` varchar(25) DEFAULT NULL COMMENT 'Deskripsi Warga Kewarganegaraan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ref Kode Warga Negara';

--
-- Dumping data for table `r_wn`
--

INSERT INTO `r_wn` (`RWN_KODE`, `RWN_NAMA`) VALUES('1', 'WNI');
INSERT INTO `r_wn` (`RWN_KODE`, `RWN_NAMA`) VALUES('2', 'WNA');

-- --------------------------------------------------------

--
-- Table structure for table `t_berita`
--

CREATE TABLE `t_berita` (
  `TBERITA_ID` bigint(20) NOT NULL COMMENT 'Id berita',
  `RSTATBERITA_KODE` char(12) DEFAULT NULL COMMENT 'Kode Status berita',
  `RUSERAKUN_NAMA` varchar(15) DEFAULT NULL COMMENT 'Nama akun',
  `TBERITA_TGL` date DEFAULT NULL COMMENT 'Tanggal Berita',
  `TBERITA_JUDUL` varchar(255) DEFAULT NULL COMMENT 'Judul Berita',
  `TBERITA_DESK` text DEFAULT NULL COMMENT 'Deskripsi',
  `TBERITA_URL` varchar(100) DEFAULT NULL COMMENT 'URL Berita luar',
  `TBERITA_TGLENTRI` date DEFAULT NULL COMMENT 'Tanggal Entri '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Data berita - informasi untuk anggota';

-- --------------------------------------------------------

--
-- Table structure for table `t_calonimage`
--

CREATE TABLE `t_calonimage` (
  `RIMAGE_ID` bigint(20) NOT NULL COMMENT 'Id Image',
  `RCALON_ID` bigint(20) NOT NULL COMMENT 'Id Calon',
  `TCALONIMAGE_TGLMAP` date DEFAULT NULL COMMENT 'Tanggal pemetaan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Image/foto calon';

-- --------------------------------------------------------

--
-- Table structure for table `t_kelasmember`
--

CREATE TABLE `t_kelasmember` (
  `RJURUSAN_KODE` char(2) NOT NULL COMMENT 'Kode Jurusan',
  `RPERSONAL_ID` bigint(20) NOT NULL COMMENT 'Id Personal',
  `TKLSMEMBER_NO` varchar(15) DEFAULT NULL COMMENT 'No kelas',
  `TKLSMEMBER_THN` int(11) DEFAULT NULL COMMENT 'Tahun'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_persimage`
--

CREATE TABLE `t_persimage` (
  `RIMAGE_ID` bigint(20) NOT NULL COMMENT 'Id Image',
  `RPERSONAL_ID` bigint(20) DEFAULT NULL COMMENT 'Id Personal',
  `RSTATIMAGE_KODE` char(2) DEFAULT NULL COMMENT 'Kode Status Image',
  `TPERSIMAGE_TGLMAP` datetime DEFAULT NULL COMMENT 'Tanggal mapping'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Personal Image';

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_anggota`
-- (See below for the actual view)
--
CREATE TABLE `v_anggota` (
`rpersonal_id` bigint(20)
,`rpersonal_nama` varchar(50)
,`rpersonal_panggilan` varchar(30)
,`rjk_kode` char(1)
,`rjk_nama` varchar(15)
,`rpersonal_alamat` varchar(100)
,`rkota_id` int(11)
,`rkota_nama` varchar(50)
,`rkerja_id` int(11)
,`rkerja_nama` varchar(50)
,`rpersonal_tglentri` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_calon`
-- (See below for the actual view)
--
CREATE TABLE `v_calon` (
`rcalon_id` bigint(20)
,`rcalon_nama` varchar(50)
,`rjk_kode` char(1)
,`rjk_nama` varchar(15)
,`rcalon_alamat` varchar(100)
,`rkota_id` int(11)
,`rkota_nama` varchar(50)
,`rcalon_tglentri` date
,`rstatver_kode` char(1)
);

-- --------------------------------------------------------

--
-- Structure for view `v_anggota`
--
DROP TABLE IF EXISTS `v_anggota`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_anggota`  AS  select `a`.`RPERSONAL_ID` AS `rpersonal_id`,`a`.`RPERSONAL_NAMA` AS `rpersonal_nama`,`a`.`RPERSONAL_PANGGILAN` AS `rpersonal_panggilan`,`a`.`RJK_KODE` AS `rjk_kode`,`b`.`RJK_NAMA` AS `rjk_nama`,`a`.`RPERSONAL_ALAMAT` AS `rpersonal_alamat`,`a`.`RKOTA_ID` AS `rkota_id`,`c`.`RKOTA_NAMA` AS `rkota_nama`,`a`.`RKERJA_ID` AS `rkerja_id`,`d`.`RKERJA_NAMA` AS `rkerja_nama`,`a`.`RPERSONAL_TGLENTRI` AS `rpersonal_tglentri` from (((`r_personal` `a` join `r_jk` `b` on(`a`.`RJK_KODE` = `b`.`RJK_KODE`)) join `r_kota` `c` on(`a`.`RKOTA_ID` = `c`.`RKOTA_ID`)) join `r_kerja` `d` on(`a`.`RKERJA_ID` = `d`.`RKERJA_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_calon`
--
DROP TABLE IF EXISTS `v_calon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_calon`  AS  select `a`.`RCALON_ID` AS `rcalon_id`,`a`.`RCALON_NAMA` AS `rcalon_nama`,`a`.`RJK_KODE` AS `rjk_kode`,`b`.`RJK_NAMA` AS `rjk_nama`,`a`.`RCALON_ALAMAT` AS `rcalon_alamat`,`a`.`RKOTA_ID` AS `rkota_id`,`c`.`RKOTA_NAMA` AS `rkota_nama`,`a`.`RCALON_TGLENTRI` AS `rcalon_tglentri`,`a`.`RSTATVER_KODE` AS `rstatver_kode` from ((`r_calon` `a` join `r_jk` `b` on(`a`.`RJK_KODE` = `b`.`RJK_KODE`)) join `r_kota` `c` on(`a`.`RKOTA_ID` = `c`.`RKOTA_ID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `r_agama`
--
ALTER TABLE `r_agama`
  ADD PRIMARY KEY (`RAGAMA_KODE`);

--
-- Indexes for table `r_calon`
--
ALTER TABLE `r_calon`
  ADD PRIMARY KEY (`RCALON_ID`),
  ADD KEY `FK_RELATIONSHIP_21` (`RUSERAKUN_NAMA`),
  ADD KEY `FK_RELATIONSHIP_22` (`RAGAMA_KODE`),
  ADD KEY `FK_RELATIONSHIP_23` (`RGOLDARAH_ID`),
  ADD KEY `FK_RELATIONSHIP_24` (`RJK_KODE`),
  ADD KEY `FK_RELATIONSHIP_25` (`RKERJA_ID`),
  ADD KEY `FK_RELATIONSHIP_26` (`RWN_KODE`),
  ADD KEY `FK_RELATIONSHIP_27` (`RSTATKAWIN_KODE`),
  ADD KEY `FK_RELATIONSHIP_28` (`RKOTA_ID`),
  ADD KEY `FK_RELATIONSHIP_VER` (`RSTATVER_KODE`);

--
-- Indexes for table `r_goldarah`
--
ALTER TABLE `r_goldarah`
  ADD PRIMARY KEY (`RGOLDARAH_ID`);

--
-- Indexes for table `r_image`
--
ALTER TABLE `r_image`
  ADD PRIMARY KEY (`RIMAGE_ID`),
  ADD KEY `FK_RELATIONSHIP_13` (`RTFILE_ID`);

--
-- Indexes for table `r_jk`
--
ALTER TABLE `r_jk`
  ADD PRIMARY KEY (`RJK_KODE`);

--
-- Indexes for table `r_jurusan`
--
ALTER TABLE `r_jurusan`
  ADD PRIMARY KEY (`RJURUSAN_KODE`);

--
-- Indexes for table `r_kerja`
--
ALTER TABLE `r_kerja`
  ADD PRIMARY KEY (`RKERJA_ID`);

--
-- Indexes for table `r_kota`
--
ALTER TABLE `r_kota`
  ADD PRIMARY KEY (`RKOTA_ID`);

--
-- Indexes for table `r_personal`
--
ALTER TABLE `r_personal`
  ADD PRIMARY KEY (`RPERSONAL_ID`),
  ADD KEY `FK_RELATIONSHIP_3` (`RJK_KODE`),
  ADD KEY `FK_RELATIONSHIP_4` (`RGOLDARAH_ID`),
  ADD KEY `FK_RELATIONSHIP_5` (`RKOTA_ID`),
  ADD KEY `FK_RELATIONSHIP_6` (`RAGAMA_KODE`),
  ADD KEY `FK_RELATIONSHIP_7` (`RSTATKAWIN_KODE`),
  ADD KEY `FK_RELATIONSHIP_8` (`RKERJA_ID`),
  ADD KEY `FK_RELATIONSHIP_9` (`RWN_KODE`);

--
-- Indexes for table `r_role`
--
ALTER TABLE `r_role`
  ADD PRIMARY KEY (`RROLE_KODE`);

--
-- Indexes for table `r_statakun`
--
ALTER TABLE `r_statakun`
  ADD PRIMARY KEY (`RSTATAKUN_KODE`);

--
-- Indexes for table `r_statberita`
--
ALTER TABLE `r_statberita`
  ADD PRIMARY KEY (`RSTATBERITA_KODE`);

--
-- Indexes for table `r_statimage`
--
ALTER TABLE `r_statimage`
  ADD PRIMARY KEY (`RSTATIMAGE_KODE`);

--
-- Indexes for table `r_statkawin`
--
ALTER TABLE `r_statkawin`
  ADD PRIMARY KEY (`RSTATKAWIN_KODE`);

--
-- Indexes for table `r_statver`
--
ALTER TABLE `r_statver`
  ADD PRIMARY KEY (`RSTATVER_KODE`);

--
-- Indexes for table `r_tfile`
--
ALTER TABLE `r_tfile`
  ADD PRIMARY KEY (`RTFILE_ID`);

--
-- Indexes for table `r_userakun`
--
ALTER TABLE `r_userakun`
  ADD PRIMARY KEY (`RUSERAKUN_NAMA`),
  ADD KEY `FK_RELATIONSHIP_15` (`RPERSONAL_ID`),
  ADD KEY `FK_RELATIONSHIP_16` (`RROLE_KODE`),
  ADD KEY `FK_RELATIONSHIP_17` (`RSTATAKUN_KODE`);

--
-- Indexes for table `r_userdata`
--
ALTER TABLE `r_userdata`
  ADD PRIMARY KEY (`RUSERAKUN_NAMA`,`RUSERDATA_TAHUN`),
  ADD KEY `FK_RELATIONSHIP_20` (`RSTATAKUN_KODE`);

--
-- Indexes for table `r_wn`
--
ALTER TABLE `r_wn`
  ADD PRIMARY KEY (`RWN_KODE`);

--
-- Indexes for table `t_berita`
--
ALTER TABLE `t_berita`
  ADD PRIMARY KEY (`TBERITA_ID`),
  ADD KEY `FK_RELATIONSHIP_18` (`RUSERAKUN_NAMA`),
  ADD KEY `FK_RELATIONSHIP_19` (`RSTATBERITA_KODE`);

--
-- Indexes for table `t_calonimage`
--
ALTER TABLE `t_calonimage`
  ADD PRIMARY KEY (`RIMAGE_ID`,`RCALON_ID`),
  ADD KEY `FK_RELATIONSHIP_30` (`RCALON_ID`);

--
-- Indexes for table `t_kelasmember`
--
ALTER TABLE `t_kelasmember`
  ADD PRIMARY KEY (`RJURUSAN_KODE`,`RPERSONAL_ID`),
  ADD KEY `FK_RELATIONSHIP_10` (`RPERSONAL_ID`);

--
-- Indexes for table `t_persimage`
--
ALTER TABLE `t_persimage`
  ADD PRIMARY KEY (`RIMAGE_ID`),
  ADD KEY `FK_RELATIONSHIP_11` (`RPERSONAL_ID`),
  ADD KEY `FK_RELATIONSHIP_32` (`RSTATIMAGE_KODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `r_calon`
--
ALTER TABLE `r_calon`
  MODIFY `RCALON_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Calon', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `r_image`
--
ALTER TABLE `r_image`
  MODIFY `RIMAGE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Image';

--
-- AUTO_INCREMENT for table `r_kerja`
--
ALTER TABLE `r_kerja`
  MODIFY `RKERJA_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Pekerjaan', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `r_kota`
--
ALTER TABLE `r_kota`
  MODIFY `RKOTA_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Kota', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `r_personal`
--
ALTER TABLE `r_personal`
  MODIFY `RPERSONAL_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Personal', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_berita`
--
ALTER TABLE `t_berita`
  MODIFY `TBERITA_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id berita';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r_calon`
--
ALTER TABLE `r_calon`
  ADD CONSTRAINT `FK_RELATIONSHIP_21` FOREIGN KEY (`RUSERAKUN_NAMA`) REFERENCES `r_userakun` (`RUSERAKUN_NAMA`),
  ADD CONSTRAINT `FK_RELATIONSHIP_22` FOREIGN KEY (`RAGAMA_KODE`) REFERENCES `r_agama` (`RAGAMA_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_23` FOREIGN KEY (`RGOLDARAH_ID`) REFERENCES `r_goldarah` (`RGOLDARAH_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_24` FOREIGN KEY (`RJK_KODE`) REFERENCES `r_jk` (`RJK_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_26` FOREIGN KEY (`RWN_KODE`) REFERENCES `r_wn` (`RWN_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_27` FOREIGN KEY (`RSTATKAWIN_KODE`) REFERENCES `r_statkawin` (`RSTATKAWIN_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_VER` FOREIGN KEY (`RSTATVER_KODE`) REFERENCES `r_statver` (`RSTATVER_KODE`);

--
-- Constraints for table `r_image`
--
ALTER TABLE `r_image`
  ADD CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`RTFILE_ID`) REFERENCES `r_tfile` (`RTFILE_ID`);

--
-- Constraints for table `r_personal`
--
ALTER TABLE `r_personal`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`RJK_KODE`) REFERENCES `r_jk` (`RJK_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`RGOLDARAH_ID`) REFERENCES `r_goldarah` (`RGOLDARAH_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`RAGAMA_KODE`) REFERENCES `r_agama` (`RAGAMA_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`RSTATKAWIN_KODE`) REFERENCES `r_statkawin` (`RSTATKAWIN_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`RWN_KODE`) REFERENCES `r_wn` (`RWN_KODE`);

--
-- Constraints for table `r_userakun`
--
ALTER TABLE `r_userakun`
  ADD CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`RROLE_KODE`) REFERENCES `r_role` (`RROLE_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`RSTATAKUN_KODE`) REFERENCES `r_statakun` (`RSTATAKUN_KODE`);

--
-- Constraints for table `r_userdata`
--
ALTER TABLE `r_userdata`
  ADD CONSTRAINT `FK_RELATIONSHIP_20` FOREIGN KEY (`RSTATAKUN_KODE`) REFERENCES `r_statakun` (`RSTATAKUN_KODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_31` FOREIGN KEY (`RUSERAKUN_NAMA`) REFERENCES `r_userakun` (`RUSERAKUN_NAMA`);

--
-- Constraints for table `t_berita`
--
ALTER TABLE `t_berita`
  ADD CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`RUSERAKUN_NAMA`) REFERENCES `r_userakun` (`RUSERAKUN_NAMA`),
  ADD CONSTRAINT `FK_RELATIONSHIP_19` FOREIGN KEY (`RSTATBERITA_KODE`) REFERENCES `r_statberita` (`RSTATBERITA_KODE`);

--
-- Constraints for table `t_kelasmember`
--
ALTER TABLE `t_kelasmember`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`RJURUSAN_KODE`) REFERENCES `r_jurusan` (`RJURUSAN_KODE`);

--
-- Constraints for table `t_persimage`
--
ALTER TABLE `t_persimage`
  ADD CONSTRAINT `FK_RELATIONSHIP_32` FOREIGN KEY (`RSTATIMAGE_KODE`) REFERENCES `r_statimage` (`RSTATIMAGE_KODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
