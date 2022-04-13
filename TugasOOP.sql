-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for wilayah
CREATE DATABASE IF NOT EXISTS `wilayah` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wilayah`;

-- Dumping structure for table wilayah.tbl_kabkota
CREATE TABLE IF NOT EXISTS `tbl_kabkota` (
  `id_kabkota` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kabkota` varchar(26) NOT NULL,
  `nama_kabkota` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `kode_provinsi` varchar(26) NOT NULL,
  PRIMARY KEY (`id_kabkota`),
  UNIQUE KEY `kode_kabkota` (`kode_kabkota`),
  KEY `FK_tbl_kabkota_tbl_provinsi` (`kode_provinsi`),
  CONSTRAINT `FK_tbl_kabkota_tbl_provinsi` FOREIGN KEY (`kode_provinsi`) REFERENCES `tbl_provinsi` (`kode_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table wilayah.tbl_kabkota: ~32 rows (approximately)
DELETE FROM `tbl_kabkota`;
/*!40000 ALTER TABLE `tbl_kabkota` DISABLE KEYS */;
INSERT INTO `tbl_kabkota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `updated_at`, `kode_provinsi`) VALUES
	(1, 'KSU', 'kabupaten Adm.kepulauan seribu', '2022-04-13 14:40:12', '2022-04-13 14:43:46', 'ID-JK'),
	(2, 'TNA', 'Kota Adm. Jakarta Pusat', '2022-04-13 14:47:14', '2022-04-13 14:47:14', 'ID-JK'),
	(3, 'TJP', 'Kota Adm. Jakarta Utara', '2022-04-13 14:49:14', '2022-04-13 14:49:14', 'ID-JK'),
	(4, 'GGP', 'Kota Adm. Jakarta Barat', '2022-04-13 14:51:14', '2022-04-13 14:51:14', 'ID-JK'),
	(5, 'KYB', 'Kota Adm. Jakarta Selatan', '2022-04-13 14:53:14', '2022-04-13 14:53:14', 'ID-JK'),
	(6, 'CKG', 'Kota Adm. Jakarta Timur', '2022-04-13 14:54:14', '2022-04-13 14:54:14', 'ID-JK'),
	(7, 'CBI', 'Kabupaten Bogor', '2022-04-13 03:10:13', '2022-04-13 03:10:14', 'ID-JB'),
	(8, 'SBM', 'Kabupaten Sukabumi\r\n               ', '2022-04-13 03:11:13', '2022-04-13 03:11:14', 'ID-JB'),
	(9, 'CJR', 'Kabupaten Cianjur', '2022-04-13 03:12:13', '2022-04-13 03:12:14', 'ID-JB'),
	(10, 'SOR', 'Kabupaten Bandung', '2022-04-13 03:13:13', '2022-04-13 03:13:14', 'ID-JB'),
	(11, 'GRT', 'Kabupaten Garut', '2022-04-13 03:14:13', '2022-04-13 03:14:14', 'ID-JB'),
	(12, 'SPA', 'Kabupaten Tasikmalaya', '2022-04-13 03:15:13', '2022-04-13 03:15:14', 'ID-JB'),
	(13, 'CMS', 'Kabupaten Ciamis', '2022-04-13 03:16:13', '2022-04-13 03:16:14', 'ID-JB'),
	(14, 'KNG', 'Kabupaten Kuningan', '2022-04-13 03:17:13', '2022-04-13 03:17:14', 'ID-JB'),
	(15, 'SBR', 'Kabupaten Cirebon', '2022-04-13 03:18:13', '2022-04-13 03:18:14', 'ID-JB'),
	(16, 'MJL', 'Kabupaten Majalengka', '2022-04-13 03:19:13', '2022-04-13 03:20:14', 'ID-JB'),
	(17, 'SMD', 'Kabupaten Sumedang', '2022-04-13 03:21:13', '2022-04-13 03:21:14', 'ID-JB'),
	(18, 'IDM', 'Kabupaten Indramayu', '2022-04-13 03:22:13', '2022-04-13 03:22:14', 'ID-JB'),
	(19, 'SNG', 'Kabupaten Subang', '2022-04-13 03:23:13', '2022-04-13 03:23:14', 'ID-JB'),
	(20, 'PWK', 'Kabupaten Purwakarta', '2022-04-13 03:24:13', '2022-04-13 03:24:14', 'ID-JB'),
	(21, 'KWG', 'Kabupaten Karawang', '2022-04-13 03:25:14', '2022-04-13 15:42:24', 'ID-JB'),
	(22, 'CKR', 'Kabupaten Bekasi', '2022-04-13 03:26:13', '2022-04-13 03:26:14', 'ID-JB'),
	(23, 'NPH', 'Kabupaten Bandung Barat', '2022-04-13 03:27:13', '2022-04-13 03:27:14', 'ID-JB'),
	(24, 'BGR', 'Kota Bogor', '2022-04-13 03:28:13', '2022-04-13 03:28:14', 'ID-JB'),
	(25, 'SKB', 'Kota Sukabumi', '2022-04-13 03:29:13', '2022-04-13 03:29:14', 'ID-JB'),
	(26, 'BDG', 'Kota Bandung', '2022-04-13 03:30:13', '2022-04-13 03:30:14', 'ID-JB'),
	(27, 'CBN', 'Kota Cirebon', '2022-04-13 03:31:13', '2022-04-13 03:31:14', 'ID-JB'),
	(28, 'BKS', 'Kota Bekasi', '2022-04-13 03:32:13', '2022-04-13 03:32:14', 'ID-JB'),
	(29, 'DPK', 'Kota Depok', '2022-04-13 03:33:13', '2022-04-13 03:33:14', 'ID-JB'),
	(30, 'CMH', 'Kota Cimahi', '2022-04-13 03:34:13', '2022-04-13 03:34:14', 'ID-JB'),
	(31, 'TSM', 'Kota Tasikmalaya', '2022-04-13 03:35:13', '2022-04-13 03:35:14', 'ID-JB'),
	(32, 'BJR', 'Kota Banjar', '2022-04-13 03:36:13', '2022-04-13 03:36:14', 'ID-JB');
/*!40000 ALTER TABLE `tbl_kabkota` ENABLE KEYS */;

-- Dumping structure for table wilayah.tbl_provinsi
CREATE TABLE IF NOT EXISTS `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_provinsi` varchar(26) NOT NULL,
  `nama_provinsi` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_provinsi`),
  UNIQUE KEY `kode_provinsi` (`kode_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table wilayah.tbl_provinsi: ~2 rows (approximately)
DELETE FROM `tbl_provinsi`;
/*!40000 ALTER TABLE `tbl_provinsi` DISABLE KEYS */;
INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
	(1, 'ID-JK', 'DKI-JAKARTA', '2022-04-13 14:24:18', '2022-04-13 14:25:11'),
	(2, 'ID-JB', 'JAWA BARAT', '2022-04-13 02:57:30', '2022-04-13 15:02:01');
/*!40000 ALTER TABLE `tbl_provinsi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
