-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 08:50 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `samudramaskal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tmp_order`
--

CREATE TABLE IF NOT EXISTS `tmp_order` (
  `ID` varchar(200) NOT NULL DEFAULT '',
  `AlamatKirim` text NOT NULL,
  `AlamatTagih` text NOT NULL,
  `Pembayaran` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_order`
--

INSERT INTO `tmp_order` (`ID`, `AlamatKirim`, `AlamatTagih`, `Pembayaran`) VALUES
('wa2n_apl@yahoo.com', 'Jl. Kaliurang Kopen Utama 18\r\nKopen\r\nKode Pos : 22122\r\n-------------------------------\r\nasd, sdf\r\nzxczxc\r\n', 'Jl. Kaliurang Kopen Utama 18\r\nKopen\r\nKode Pos : 22122\r\n-------------------------------\r\nasd, sdf\r\nzxczxc\r\n', 'BANK BCA Cabang...<BR>No Rek : 123213123123-231'),
('s@s.s', 'asd sa\r\nsad\r\nKode Pos : sa d\r\n-------------------------------\r\nasd, \r\nUS\r\n', 'asd sa\r\nsad\r\nKode Pos : sa d\r\n-------------------------------\r\nasd, \r\nUS\r\n', 'BANK BCA Cabang...<BR>No Rek : 123213123123-231'),
('a@a.a', 'aaaaaaa\r\naaaaaaa\r\nKode Pos : aaaaaaa\r\n-------------------------------\r\naaaaa, \r\nUS\r\n', 'aaaaaaa\r\naaaaaaa\r\nKode Pos : aaaaaaa\r\n-------------------------------\r\naaaaa, \r\nUS\r\n', 'BANK BCA Cabang...<BR>No Rek : 123213123123-231'),
('kfadlli@yahoo.co.id', 'jl.pedan-Cawas\r\npedan\r\nKode Pos : 57468\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl.pedan-Cawas\r\npedan\r\nKode Pos : 57468\r\n-------------------------------\r\nKlaten, \r\n\r\n', ''),
('mega_ningrum@yahoo.com', 'jl. cawas no 5\r\ncawas\r\nKode Pos : 57464\r\n-------------------------------\r\nklaten, \r\n\r\n', 'jl. cawas no 5\r\ncawas\r\nKode Pos : 57464\r\n-------------------------------\r\nklaten, \r\n\r\n', ''),
('dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'Rekening BCA ;\r\nNo. Rek   : 33.3333.3333.333 ,\r\n\r\natas nama : Dedi Purwanto');

-- --------------------------------------------------------

--
-- Table structure for table `tr_anggota`
--

CREATE TABLE IF NOT EXISTS `tr_anggota` (
  `ID` varchar(200) NOT NULL DEFAULT '',
  `Password` varchar(100) NOT NULL DEFAULT '',
  `JK` char(1) NOT NULL DEFAULT '',
  `FirstName` varchar(100) NOT NULL DEFAULT '',
  `LastName` varchar(100) NOT NULL DEFAULT '',
  `TanggalLahir` date NOT NULL DEFAULT '0000-00-00',
  `Email` varchar(200) NOT NULL DEFAULT '',
  `Jalan` varchar(200) NOT NULL DEFAULT '',
  `Suburb` varchar(200) NOT NULL DEFAULT '',
  `KodePos` varchar(20) NOT NULL DEFAULT '',
  `Kota` varchar(50) NOT NULL DEFAULT '',
  `Zone` varchar(50) NOT NULL DEFAULT '',
  `Negara` varchar(100) NOT NULL DEFAULT '',
  `Telepon` varchar(200) NOT NULL DEFAULT '',
  `Fax` varchar(50) NOT NULL DEFAULT '',
  `NewArrival` char(1) NOT NULL DEFAULT '',
  `Newsletter` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_anggota`
--

INSERT INTO `tr_anggota` (`ID`, `Password`, `JK`, `FirstName`, `LastName`, `TanggalLahir`, `Email`, `Jalan`, `Suburb`, `KodePos`, `Kota`, `Zone`, `Negara`, `Telepon`, `Fax`, `NewArrival`, `Newsletter`) VALUES
('dias.suwunk@gmail.com', 'dyas', '0', 'DIAS', 'SUWUNK', '0000-00-00', 'dias.suwunk@gmail.com', 'jl. jotang n0 74', 'Trucuk', '57467', 'Klaten', '', '', '08562792689', '0272-511800', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_buku`
--

CREATE TABLE IF NOT EXISTS `tr_buku` (
  `IDBuku` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(250) NOT NULL DEFAULT '',
  `IDKategoriSpesifikasi` varchar(10) NOT NULL DEFAULT '',
  `IDPengarang` varchar(10) NOT NULL DEFAULT '',
  `IDKategoriBuku` varchar(10) NOT NULL DEFAULT '',
  `IDPenerbit` varchar(10) NOT NULL DEFAULT '',
  `JumlahHalaman` double NOT NULL DEFAULT '0',
  `Edisi` varchar(100) NOT NULL DEFAULT '',
  `IDKategoriBahasa` varchar(10) NOT NULL DEFAULT '',
  `IDFormat` varchar(10) NOT NULL DEFAULT '',
  `Kondisi` varchar(200) NOT NULL DEFAULT '',
  `TahunTerbit` int(11) NOT NULL DEFAULT '0',
  `Detail` text NOT NULL,
  `HargaBeli` double NOT NULL DEFAULT '0',
  `HargaJual` double NOT NULL DEFAULT '0',
  `PathGambar` varchar(100) NOT NULL DEFAULT '',
  `PathGambar1` varchar(100) NOT NULL DEFAULT '',
  `Publish` char(1) NOT NULL DEFAULT '',
  `New` char(1) NOT NULL DEFAULT '',
  `Cool` char(1) NOT NULL DEFAULT '',
  `StokBuku` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_buku`
--

INSERT INTO `tr_buku` (`IDBuku`, `Judul`, `IDKategoriSpesifikasi`, `IDPengarang`, `IDKategoriBuku`, `IDPenerbit`, `JumlahHalaman`, `Edisi`, `IDKategoriBahasa`, `IDFormat`, `Kondisi`, `TahunTerbit`, `Detail`, `HargaBeli`, `HargaJual`, `PathGambar`, `PathGambar1`, `Publish`, `New`, `Cool`, `StokBuku`) VALUES
('B0007', 'Spray Gun', '02', '092', '01', '001', 250, 'Permendiknas No.22 tahun 2007', '02', '01', 'HVS 70 Gr', 2007, '- Spray Gun Masaka F 75 G (Biru Metalic)\r\n', 0, 45000, 'bookimages/spray gun1.jpg', 'bookimages/spray gun1.jpg', '1', '0', '0', 1000),
('B0006', 'Kran Compresor', '02', '091', '01', '001', 200, '-', '02', '01', 'HVS 70 Gr', 2007, '<br> - Kran Compresor</br>\r\n', 0, 45000, 'bookimages/krankompresor1.jpg', 'bookimages/krankompresor1.jpg', '1', '0', '0', 1000),
('B0005', 'Air Chuck', '02', '034', '01', '001', 200, '-', '02', '01', 'HVS 70 Gr', 2007, '- Air Chuck </br>\r\n\r\n', 0, 47500, 'bookimages/air chuck2.jpg', 'bookimages/air chuck2.jpg', '1', '0', '0', 1000),
('B0004', 'Air Brush', '02', '017', '01', '001', 250, '-', '02', '01', 'HVS 70 Gr', 2007, '- Air Brush Kotak PVC NP Tools', 0, 52500, 'bookimages/air brush1.jpg', 'bookimages/air brush1.jpg', '1', '0', '0', 1000),
('B0008', 'Closed Jongkok', '02', '043', '02', '002', 300, '1', '02', '02', 'HVS 70 Gr', 2008, '<br>- Closed Jongkok Miami \r\n<br>- Closed Jongkok INA \r\n', 0, 50000, 'bookimages/closed jongkok4.jpg', 'bookimages/closed jongkok4.jpg', '1', '1', '0', 500),
('B0009', 'Afur / Sifon', '01', '093', '02', '001', 500, '1', '01', '02', 'HVS 70 Gr', 2008, '</br></br></br></br>\r\n', 70000, 60000, 'bookimages/', 'bookimages/', '1', '1', '0', 500),
('B0010', 'Afur / Sifon Wastafell', '01', '094', '02', '001', 300, '1', '02', '02', 'HVS 70 Gr', 2008, '</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>\r\n', 60000, 55000, 'bookimages/', 'bookimages/', '1', '1', '0', 500),
('B0011', 'Besi Beton', '01', '061', '03', '001', 0, '', '01', '03', '', 0, '<br>- Besi Beton SNI\r\n<br>- Besi Beton Marking\r\n</br>\r\n', 2000, 1000, 'bookimages/besibeton1.jpg', 'bookimages/besibeton1.jpg', '1', '1', '0', 100),
('B0019', 'Selang Pemadam', '01', '069', '06', '001', 0, '', '01', '06', '', 0, '<br>- SELANG PEMADAM\r\n<br>- SLEVE PEMADAM\r\n<br>- COUPLING PEMADAM\r\n<br>- NEPEL GREASE\r\n<br>- NEPEL SELANG\r\n<br>- NEPEL LURUS\r\n\r\n </br>', 1000, 1000, 'bookimages/pemadam1.jpg', 'bookimages/pemadam1.jpg', '1', '1', '0', 100),
('B0021', 'Houseware', '02', '075', '10', '002', 0, '', '02', '10', '', 0, '<br>- Berbagai macam model rantai\r\n<br>- Regulator\r\n<br>- Berbagai macam model isolasi\r\n<br>- Majun\r\n<br>- Segel\r\n<br>- Pembersih Keramik\r\n<br>- Selang LPG\r\n </br>', 1000, 1000, 'bookimages/houseware.jpg', 'bookimages/houseware.jpg', '1', '1', '0', 100),
('B0022', 'Lifting Equipments', '02', '076', '11', '001', 0, '', '01', '11', '', 0, '<br>- Berbagai macam model dongkrak\r\n<br>- Catok\r\n<br>- Kawat Sling\r\n<br>- Katrol\r\n<br>- Segel\r\n<br>- Kuku Badak\r\n<br>- jarum Keras\r\n </br>\r\n\r\n', 1000, 1000, 'bookimages/lifting.jpg', 'bookimages/lifting.jpg', '1', '1', '0', 100),
('B0023', 'Lighting and Electrical', '01', '077', '12', '002', 0, '', '02', '12', '', 0, '<br>- Balak Lampu\r\n<br>- Berbagai macam type Box Kabel\r\n<br>- Berbagai macam type Cam Stater\r\n<br>- Downlight\r\n<br>- Berbagai macam model fitting lampu\r\n<br>- Berbagai macam type Fuse Breker\r\n<br>- Isolasi Listrik\r\n<br>- Kabel NYA,Kabel NYAF,Kabel NYF GBY,Kabel NYM,Kabel NYY,Kabel NYY HY,Kabel NYZ,Kabel   \r\n      TC, dan Kabel Transparan \r\n<br>- Klem Kabel\r\n<br>- Lampu dan Senter Charge\r\n<br>- Berbagai macam type Lampu Clear, dan Lampu Esensial \r\n<br>- MCB dab Box MCB\r\n<br>- Berbagai macam model Saklar\r\n<br>- Stater, Stavolt, dan Steker\r\n<br>- Stop Kontak\r\n<br>- Berbagai macam model Terminal\r\n<br>- Produk Philips </br>\r\n</br>\r\n</br>\r\n</br>\r\n\r\n\r\n', 1000, 1000, 'bookimages/lighting.jpg', 'bookimages/lighting.jpg', '1', '1', '0', 100),
('B0024', 'Paint and Sundries', '01', '078', '13', '001', 0, '', '01', '13', '', 0, '<br>- Berbagai macam model Kuas \r\n<br>- Berbagai macam merk Lem \r\n</br> </br>', 1000, 1000, 'bookimages/paint.jpg', 'bookimages/paint.jpg', '1', '1', '0', 100),
('B0025', 'Pipa dan Alat PVC', '01', '082', '14', '001', 0, '', '02', '14', '', 0, '<br>- Pipa PVC Maspion\r\n<br>- Pipa PVC Wavin\r\n<br>- Pipa PVC AWS\r\n<br>- KLEM PIPA OCP\r\n<br>- KLEM SELANG\r\n<br>- EMBER COR\r\n<br>- DOP PVC\r\n<br>- F. Knee (Knee drat kuningan)\r\n<br>- F. Socket (SDD)\r\n<br>- F. Tee (Tee drat)	\r\n<br>- Flange Sock PVC\r\n<br>- Klem Pipa PVC\r\n<br>- R. Sock PVC\r\n<br>- R. Tee PVC\r\n<br>- Sock PVC\r\n<br>- Tee PVC \r\n </br>\r\n', 1000, 1000, 'bookimages/pipaalatpvc.jpg', 'bookimages/pipaalatpvc.jpg', '1', '1', '0', 100),
('B0026', 'Selang', '01', '083', '14', '002', 0, '', '01', '14', '', 0, '<br>- Selang Dop\r\n<br>- Selang Spiral\r\n<br>- Selang Benang\r\n<br>- Selang Gabang\r\n<br>- Selang Hiprex\r\n\r\n </br>\r\n', 1000, 1000, 'bookimages/selangplumbing.jpg', 'bookimages/selangplumbing.jpg', '1', '1', '0', 100),
('B0027', 'Tandon Air', '01', '084', '14', '002', 0, '', '01', '14', '', 0, '<br>- Dino Tank\r\n<br>- Profil Tank\r\n<br>- Superior Tank\r\n\r\n\r\n </br>\r\n', 1000, 1000, 'bookimages/tandon.jpg', 'bookimages/tandon.jpg', '1', '1', '0', 100),
('B0028', 'Aksesoris Mesin', '01', '085', '15', '001', 0, '', '01', '15', '', 0, '<br>- ARMATURE\r\n<br>- BAUT MATA PLANER\r\n<br>- BODY MESIN\r\n<br>- CARBON BRUSH	\r\n<br>- GEAR BOR\r\n<br>- KEPALA BOR\r\n<br>- MATA JIG SAW\r\n<br>- V-BELT\r\n<br>- OTOMATIS POMPA\r\n<br>- PULLY KETAM/PLANER\r\n<br>- SAKLAR/SWIT\r\n<br>- SEAL POMPA AIR\r\n<br>- JARUM JAHIT KARUNG   \r\n<br>- HOLE SAW </br>', 1000, 1000, 'bookimages/aksesorismesin.jpg', 'bookimages/aksesorismesin.jpg', '1', '1', '0', 100),
('B0012', 'Baut dan Mur', '01', '062', '04', '001', 0, '', '01', '04', '', 0, '<br>- Bolt/Nut JIS\r\n<br>- Bolt/Nut UNC HITAM\r\n<br>- Bolt/Nut ANGKUR\r\n</br>', 2000, 1000, 'bookimages/murbaut1.jpg', 'bookimages/murbaut1.jpg', '1', '1', '0', 100),
('B0013', 'Atap Seng, Genteng Metal dan Talang', '01', '081', '05', '001', 0, '', '01', '05', '', 0, '<br> Sakura Roof\r\n<br> Radja Topdek\r\n<br> Soka Jempol\r\n<br> Gogreen </br>', 1000, 1000, 'bookimages/atapgenteng1.jpg', 'bookimages/atapgenteng1.jpg', '1', '1', '0', 100),
('B0014', 'Building Marerial', '02', '064', '05', '002', 0, '', '01', '05', '', 0, '<br>- KAwat BC KUNINGAN\r\n<br>- KAWAT BENDRAT\r\n<br>- KAWAT BRONJONG\r\n<br>- KAWAT DURI\r\n<br>- KAWAT LOKET HIJAU\r\n<br>- KAWAT LOKET PUTIH\r\n<br>- KAWAT HARMONIKA\r\n<br>- KAWAT BWG\r\n<br>- Kawat Weldedmes\r\n<br>- PINTU ZINCALUM\r\n<br>- Rangka Vibra Matras Bataco\r\n\r\n\r\n </br>', 1000, 1000, 'bookimages/buildingmatrial1.jpg', 'bookimages/buildingmatrial1.jpg', '1', '1', '0', 100),
('B0015', 'Paku - Paku', '01', '065', '05', '001', 0, '', '02', '05', '', 0, '<br>- PAKU ASBES/ULIR\r\n<br>- PAKU BIASA\r\n<br>- PAKU GENTENG METAL\r\n<br>- PAKU GYPSUM\r\n<br>- PAKU KAPAL/ULIN\r\n<br>- PAKU SENG\r\n\r\n </br>', 1000, 1000, 'bookimages/paku2.jpg', 'bookimages/paku2.jpg', '1', '1', '0', 100),
('B0056', 'Triplek', '01', '113', '05', '001', 0, '', '01', '05', '', 0, '<br>- Triplek Melamin Mutiara\r\n<br>- Triplek Melamin Sengon\r\n<br>- Triplek Melamin Swan\r\n<br>- Triplek Seangon\r\n<br>- Triplek Semi Meranti\r\n\r\n\r\n </br>\r\n', 2000, 1000, 'bookimages/triplek1.jpg', 'bookimages/triplek1.jpg', '1', '1', '0', 100),
('B0017', 'Tali - Tali', '01', '067', '05', '001', 0, '', '01', '05', '', 0, '<br>- TALI MANILA\r\n<br>- TALI RAFIA\r\n\r\n </br>\r\n', 1000, 1000, 'bookimages/tali1.jpg', 'bookimages/tali1.jpg', '1', '1', '0', 100),
('B0018', 'Terpal', '01', '068', '05', '003', 0, '', '01', '05', '', 0, '<br>- TERPAL GAJAH SILVER\r\n<br>- TERPAL NAGA\r\n<br>- TERPAL PERAHU LAYAR\r\n<br>- TERPAL TRAVOLINE\r\n<br>- TERPAL LOREK\r\n\r\n </br>\r\n', 1000, 1000, 'bookimages/terpal1.jpg', 'bookimages/terpal1.jpg', '1', '1', '0', 100),
('B0020', 'Hardware', '01', '074', '09', '003', 0, '', '01', '09', '', 0, '<br>- Berbagai macam merk Body Kunci Pintu \r\n<br>- Berbagai macam type Engsel\r\n<br>- Berbagai macam type Gembok\r\n<br>- Berbagai macam model grendel \r\n<br>- Berbagai macam model handle pintu \r\n<br>- Hak Angin\r\n<br>- Over Pal\r\n<br>- Siku Rak \r\n<br>- Silinder Kursi  </br>\r\n</br>\r\n</br>\r\n</br>\r\n', 1000, 1000, 'bookimages/hardware.jpg', 'bookimages/hardware.jpg', '1', '1', '0', 100),
('B0047', 'Pipa Ulir', '01', '104', '03', '001', 0, '', 'pilih-----', 'pilih-----', '', 0, '<br>- Pipa Ulir   3/4x1,2X6M\r\n<br>- Pipa Ulir  1x1,2X6M\r\n<br>- Pipa Ulir 1 1/2x1,2X6M\r\n<br>- Pipa Ulir 1 1/4x1,2X6M </br>\r\n</br>\r\n</br>\r\n</br>\r\n', 2000, 1000, 'bookimages/pipaulir1.jpg', 'bookimages/pipaulir1.jpg', '1', '1', '0', 100),
('B0029', 'Amplas - Amplas', '01', '086', '15', '002', 0, '', '01', '15', '', 0, '<br>- AMPLAS GRINDA BULAT KINIK\r\n<br>- AMPLAS GRINDA FALP DISC\r\n<br>- AMPLAS GRINDA VELCRO\r\n<br>- AMPLAS KAIN ATS	\r\n<br>- AMPLAS KAIN FLYING WHELL\r\n<br>- AMPLAS KERTAS FUJI STAR LIMA BINTANG\r\n<br>- AMPLAS KERTAS FM\r\n<br>- AMPLAS ROLL EURO\r\n<br>- AMPLAS ROLL FUKUDA\r\n<br>- AMPLAS ROLL NORTON\r\n<br>- AMPLAS ROLL TAIYO\r\n<br>- AMPLAS ROLL VIPER\r\n  \r\n </br>\r\n', 1000, 1000, 'bookimages/amplas1.jpg', 'bookimages/amplas1.jpg', '1', '1', '0', 100),
('B0030', 'Batu Gerinda dan Bearing', '02', '087', '15', '002', 0, '', '01', '15', '', 0, '<br>- BATU ASAH\r\n<br>- BATU ASAH MATA KETAM\r\n<br>- BATU GRINDA DIAMOND ASAH\r\n<br>- BATU GRINDA DUDUK\r\n<br>- BATU GRINDA LOMBOK\r\n<br>- BATU GRINDA POTONG\r\n<br>- BATU GRINDA TEBAL\r\n<br>- BATU HIJAU\r\n<br>- BEARING\r\n\r\n  \r\n </br>\r\n', 1000, 1000, 'bookimages/batugerinda1.jpg', 'bookimages/batugerinda1.jpg', '1', '0', '0', 100),
('B0049', 'Baja Ringan', '01', '106', '03', '001', 0, '', '01', '03', '', 0, '<br>- Kanal C Kecil Galvalum Kencana\r\n<br>- Kanal C Kecil Skape \r\n<br>- Reng Kecil Galvalum Kencana\r\n<br>- Reng Kecil Skape  </br></br></br></br>', 2000, 1000, 'bookimages/bajaringan1.jpg', 'bookimages/bajaringan1.jpg', '1', '1', '0', 100),
('B0050', 'Pipa Hollow Galvalum', '01', '105', '03', '001', 0, '', '01', '03', '', 0, '<br>- Pipa Hollow Galvalum 0,5x20x40x4M (0,30x17x37x4)\r\n<br>- Pipa Hollow Galvalum 0,5x20x40x4M (0,25x14x36x4) kepuh\r\n<br>- Pipa Hollow Galvalum 0,5x20x40x5,8M (0,40x17x37x5,8) Zinium \r\n<br>- Pipa Hollow Galvalum 1,0x20x40x4M (0,80x17x37x4)\r\n<br>- Pipa Hollow Galvalum JAVA 0,5x20x40x4M (0,30x17x37x4)\r\n<br>- Pipa Hollow Galvalum JAVA 0,5x40x40x4M (0,30x37x37x4)\r\n<br>- Pipa Hollow Galvalum Tasso 0,3x20x40x4M (0,25x20x35x4)</br>\r\n</br>\r\n</br>\r\n</br>\r\n</br>', 2000, 1000, 'bookimages/', 'bookimages/', '1', '1', '0', 100),
('B0048', 'Ball Valve Kuningan', '01', '107', '03', '001', 0, '', '01', '03', '', 0, '<br>- BALL VALVE KNG KITZ\r\n<br>- BALL VALVE KNG RRT\r\n<br>- BALL VALVE KNG YAMA\r\n<br>- BALL VALVE KNG YUTA   \r\n<br>- Fitting/Doble Neple kuningan \r\n<br>- GATE VALVE\r\n\r\n </br>', 2000, 1000, 'bookimages/BallValvekuningan1.jpg', 'bookimages/BallValvekuningan1.jpg', '1', '1', '0', 100),
('B0046', 'Pipa SCH', '01', '103', '03', '001', 0, '', '01', '03', '', 0, '<br>- Pipa SCH 40 SMLS  1/2 (2,61)\r\n<br>- Pipa SCH 40 SMLS  3/4 (2,71)\r\n<br>- Pipa SCH 40 SMLS 1 (3,19)\r\n<br>- Pipa SCH 40 SMLS 1 1/4 (3,36)\r\n<br>- Pipa SCH 40 SMLS 1 1/2 (3,47)\r\n<br>- Pipa SCH 40 SMLS 2 (3,68)\r\n<br>- Pipa SCH 40 SMLS 2 1/2 (4,86)\r\n<br>- Pipa SCH 40 SMLS 3 (5,15)\r\n<br>- Pipa SCH 40 SMLS 4 (5,66)\r\n<br>- Pipa SCH 40 SMLS 8 (7,69)\r\n<br>- Pipa SCH 40 SMLS 16'''' (ongkos free di atas box full besi)\r\n\r\n<br>- Pipa SCH 80 SMLS 4 (5,66)\r\n </br>\r\n', 2000, 1000, 'bookimages/pipa SCH1.jpg', 'bookimages/pipa SCH1.jpg', '1', '1', '0', 100),
('B0040', 'Ball Valve PVC dan Kuningan', '01', '097', '02', '001', 0, '', '01', '02', '', 0, '<br>- Ball Valve PVC Drat\r\n<br>- Ball Valve PVC Polos\r\n<br>- Ball Valve Kuningan </br></br></br>', 2000, 1000, 'bookimages/ballvalve.jpg', 'bookimages/ballvalve.jpg', '1', '1', '0', 100),
('B0041', 'Besi As', '02', '098', '03', '001', 0, '', '01', '03', '', 0, '<br>- Besi As ST\r\n<br>- Besi As Kotak </br>', 2000, 1000, 'bookimages/Besi As1.jpg', 'bookimages/Besi As1.jpg', '1', '1', '0', 100),
('B0042', 'Besi Kanal', '01', '099', '03', '001', 0, '', '01', '03', '', 0, '<br>- Besi H Beam\r\n<br>- Besi Kanal C\r\n<br>- Besi Kanal WF\r\n<br>- Besi Plat Bordes\r\n<br>- Besi Plat Polos </br>', 2000, 1000, 'bookimages/besikanal1.jpg', 'bookimages/besikanal1.jpg', '1', '1', '0', 100),
('B0043', 'Pipa Besi', '01', '100', '03', '002', 0, '', '01', '03', '', 0, '<br>- Pipa Besi MED A \r\n<br>- Pipa Besi MED B\r\n<br>- Pipa Besi MED C \r\n<br>- Pipa Besi MED Jaya SNI \r\n<br>- Pipa Besi MED A </br>', 2000, 1000, 'bookimages/pipa besi1.jpg', 'bookimages/pipa besi1.jpg', '1', '1', '0', 100),
('B0044', 'Pipa Gas', '01', '101', '03', '001', 0, '', '02', '03', '', 0, '<br>- Pipa Gas SGP  1/2 (1,7-1,8)\r\n<br>-Pipa Gas SGP  3/4 (1,7-1,8)\r\n<br>-Pipa Gas SGP 1 (1,7-1,8)\r\n<br>-Pipa Gas SGP 1 1/4 (1,7-1,8)\r\n<br>-Pipa Gas SGP 1 1/2 (1,7-1,8) od kecil 44\r\n<br>-Pipa Gas SGP 2 (1,7-1,8)\r\n<br>-Pipa Gas SGP 2 (2,2) Pesanan khusus griya\r\n<br>-Pipa Gas SGP 2 1/2 (2,3)\r\n<br>-Pipa Gas SGP 3 (2,3)\r\n<br>-Pipa Gas SGP 4 (2,2)\r\n<br>-Pipa Gas SGP 5 (4)\r\n<br>-Pipa Gas SGP 6 (4,2)   </br>\r\n\r\n', 2000, 1000, 'bookimages/pipa gas1.jpg', 'bookimages/pipa gas1.jpg', '1', '1', '0', 100),
('B0045', 'Pipa Kotak', '01', '102', '03', 'pilih-----', 0, '', '01', '03', '', 0, '<br>- Pipa kotak 20x40x6Mx1,2 (16x36)\r\n<br>- Pipa kotak 20x40x6Mx1,8\r\n<br>- Pipa kotak 30x30x6Mx2,8\r\n<br>- Pipa Kotak 40x40x6Mx1,2 (36x36)\r\n<br>- Pipa Kotak 40x40x6Mx1,4\r\n<br>- Pipa Kotak 40x40x6Mx1,8\r\n<br>- Pipa Kotak 40x60x6Mx1,2\r\n<br>- Pipa Kotak 40x60x6Mx1,7\r\n<br>- Pipa Kotak 40x80x6Mx1.2\r\n<br>- Pipa Kotak 40x80x6Mx1.7\r\n<br>- Pipa Kotak 50x50x6Mx1,8\r\n<br>- Pipa Kotak 50x100x6Mx3\r\n<br>- Pipa Kotak 50x100x6Mx3,8\r\n<br>- Pipa Kotak 75x75x 2mm \r\n\r\n<br>- Pipa Kotak Embos 30x30x6Mx1,4\r\n<br>- Pipa Kotak Embos 40x40x6Mx1,4\r\n<br>- Pipa Kotak Embos 50x50x6Mx1,4 </br>\r\n', 2000, 1000, 'bookimages/pipa kotak1.jpg', 'bookimages/pipa kotak1.jpg', '1', '1', '0', 100),
('B0031', 'Mata Bor dan Routher', '02', '088', '15', '003', 0, '', '01', '15', '', 0, '<br>- Mata Bor Kaca\r\n<br>- MATA CIRCULAR SAW\r\n<br>- MATA ROUTHER\r\n<br>- Mata Bor Kayu Panjang\r\n<br>- Mata Bor Kayu Pendek\r\n<br>- Mata Bor Kones\r\n<br>- Mata Bor Kuning\r\n<br>- Mata Bor Putih\r\n<br>- Mata Bor Penghancur Beton\r\n  \r\n </br>\r\n', 1000, 1000, 'bookimages/matabor1.jpg', 'bookimages/matabor1.jpg', '1', '1', '0', 100),
('B0032', 'Mesin', '01', '089', '15', '003', 0, '', '01', '15', '', 0, '<br>- MESIN AMPLAS\r\n<br>- MESIN BLOWER\r\n<br>- MESIN BOR\r\n<br>- MESIN CIRCULAR SAW\r\n<br>- MESIN COMPRESOR\r\n<br>- MESIN CUT OFF\r\n<br>- MESIN CUTTER\r\n<br>- MESIN GRINDA\r\n<br>- MESIN JAHIT KARUNG\r\n<br>- MESIN JIG SAW	\r\n<br>- MESIN KETAM\r\n<br>- MESIN POMPA AIR\r\n<br>- TRAVO LAS\r\n<br>- TABUNG \r\n<br>- MESIN POMPA AIR\r\n<br>- MESIN POMPA CELUP\r\n </br>\r\n', 1000, 1000, 'bookimages/mesin2.jpg', 'bookimages/mesin2.jpg', '1', '1', '0', 100),
('B0033', 'Sikat Gerinda', '01', '090', '15', '001', 0, '', '02', '15', '', 0, '- Sikat Grinda Mangkok ', 1000, 1000, 'bookimages/sikatgerinda2.jpg', 'bookimages/sikatgerinda2.jpg', '1', '1', '0', 100),
('B0034', 'Safety Equipments', '02', '079', '16', '002', 0, '', '01', '16', '', 0, '<br>- Sarung Tangan\r\n<br>- Sepatu Bot\r\n<br>- Jas Hujan\r\n<br>- Kacamata Safety\r\n<br>- Topeng Las\r\n<br>- Helm Proyek\r\n<br>- Masker\r\n<br>- Rompi\r\n<br>- Pelampung Renang\r\n</br></br></br></br>', 1000, 1000, 'bookimages/safety1.jpg', 'bookimages/safety1.jpg', '1', '1', '0', 100),
('B0035', 'Welding Equipments', '01', '080', '17', '003', 0, '', '02', '17', '', 0, '<br>- Topeng Las\r\n<br>- Kabel Las\r\n<br>- Kawat Las\r\n<br>- Cutting Tip\r\n<br>- Selang Las\r\n<br>- Timah\r\n</br></br></br></br></br>\r\n', 1000, 1000, 'bookimages/welding1.jpg', 'bookimages/welding1.jpg', '1', '1', '0', 100),
('B0036', 'Teknik', '01', '072', '08', '001', 0, '', '01', '08', '', 0, '<br>- Betel Lurus dan Betel Topi\r\n<br>- Berbagai macam Kunci : Kunci Inggris, Kunci L, Kunci Pas, Kunci Ring, Kunci Sock\r\n<br>- Mata Betel dan Mata Obeng\r\n<br>- Berbagai macam Obeng : Obeng Bolak Balik,Obeng Jam,Obeng Ketok,Obeng Set,Obeng Tembus  \r\n<br>- Berbagai macam Tang : Tang Ampere,Tang Buaya,Tang Burung,Tang Kabel Scun,Tang Kombinasi,Tang Kupas Kabel,Tang Pembuka,Tang Plong,Tang Potong,Tang Potong Keramik,Tang Rivet,Tang Snap Ring,\r\n<br>- Tool Box\r\n<br>- Batu Lot\r\n<br>- Begel Besi\r\n<br>- Benang\r\n<br>- Anti Karat dan Arbor\r\n<br>- Casut, Cetok, Cetok Trowel, dan Cutter\r\n<br>- Berbagai macam Gagang : Gagang Bor,Gagang Gergaji,Gagang Hand Tap,dan Gergaji\r\n<br>- Flow Meter\r\n<br>- Berbagai macam gunting : Gunting Avation,Gunting Besi Beton,Gunting Pvc,Gunting Seng\r\n<br>- Isi Cutter, Isi Staples,Kabel Ties,Tekukan Pipa, dan Tembakan Silicon\r\n<br>- Berbagai macam timbangan : Timbangan Buah,Timbangan Digital,Timbangan Duduk,Timbangan Gantung,Timbangan Itik,Timbangan Ver\r\n<br>- Hand Counter dan Hand Taps\r\n<br>- Berbagai macam kikir : Kikir 1/2 Bulat,Kikir Bulat,Kikir Plat,Kikir Segi Empat,Kikir Segi Tiga, dan Kikir Senso\r\n<br>- Kompas\r\n<br>- Linggis\r\n<br>- Literan\r\n<br>- Mata Gergaji\r\n<br>- Gunting Kain\r\n<br>- Meteran, Mata/Pisau dan Pahat/Tata\r\n<br>- Berbagai macam palu : Palu Bodem,Palu Kambing,Palu Karet,Palu Konde,Palu Lancip\r\n<br>- Berbagai macam pemotong : Pemotong Kaca,Pemotong Keramik ,dan Pemotong Pipa\r\n<br>- Waterpass\r\n<br>- dan peralatan tukanng lainnya      </br> </br></br>\r\n\r\n', 1000, 1000, 'bookimages/teknik.jpg', 'bookimages/teknik.jpg', '1', '1', '0', 100),
('B0037', 'Waterpass', '01', '073', '08', '002', 0, '', '01', '08', '', 0, '<br>- Waterpas Alm Freder\r\n<br>- Waterpas Alm Seller\r\n<br>- Waterpas Warna Frede\r\n<br>- Waterpas Warna Max\r\n\r\n </br>', 1000, 1000, 'bookimages/waterpas1.jpg', 'bookimages/waterpas1.jpg', '1', '1', '0', 100),
('B0038', 'Garden Tools', '01', '070', '07', '001', 0, '', '01', '07', '', 0, '<br>- Tong Sampah\r\n<br>- Gerobak dan Spare Part\r\n<br>- Sekop\r\n<br>- Garden Tool\r\n<br>- Kampak\r\n<br>- Mata Kampak\r\n<br>- Semprotan Air\r\n<br>- Watering Pot  </br></br>\r\n</br>\r\n</br>\r\n\r\n', 2000, 1000, 'bookimages/gardentools.jpg', 'bookimages/gardentools.jpg', '1', '1', '0', 100),
('B0052', 'Klem', '01', '109', '04', '001', 0, '', '02', '04', '', 0, '<br>- KLEM KAWAT\r\n<br>- KLEM KNALPOT </br></br>', 2000, 1000, 'bookimages/klem1.jpg', 'bookimages/klem1.jpg', '1', '1', '0', 100),
('B0053', 'Mor', '01', '110', '04', '001', 0, '', '01', '04', '', 0, '<br>-MOR Kuning\r\n<br>-MOR Hitam </br>', 2000, 1000, 'bookimages/mur.jpg', 'bookimages/mur.jpg', '1', '1', '0', 100),
('B0054', 'Ring', '01', '111', '04', '001', 0, '', '01', '04', '', 0, '<br>- RING PER\r\n<br>- RING PLAT\r\n<br>- RING KUNING\r\n<br>- RING HITAM </br></br></br>', 2000, 1000, 'bookimages/ring1.jpg', 'bookimages/ring1.jpg', '1', '1', '0', 100),
('B0055', 'Sekrup', '01', '112', '04', '001', 0, '', '02', '04', '', 0, '<br>- SEKRUP TAPPING FH\r\n<br>- SEKRUP TAPPING PH\r\n<br>- SEKRUP TAPPING PHS\r\n<br>- SEKRUP KUNING  \r\n<br>- SEKRUP PUTIH \r\n<br>- SEKRUP MATA BUKA \r\n<br>- SEKRUP MATA TUTUP\r\n\r\n </br>\r\n', 2000, 1000, 'bookimages/sekrup1.jpg', 'bookimages/sekrup1.jpg', '1', '1', '0', 100),
('B0057', 'Keramik Lantai', '01', '114', '18', '001', 0, '', '01', '18', '', 0, '<br>- SANDIMAS\r\n<br>- PLATINUM\r\n<br>- ASIA TILE\r\n<br>- IKAD\r\n<br>- DK\r\n<br>- ROMAN\r\n<br>- JUPITER\r\n<br>- MULIA </br>', 2000, 1000, '', '', '1', '1', '0', 100),
('B0058', 'Keramik Dinding', '01', '115', '18', '001', 0, '', '01', '18', '', 0, '<br>- ROMAS\r\n<br>- JUPITER </br>', 2000, 1000, '', '', '1', '1', '0', 100),
('B0059', 'Cat Kayu dan Besi', '01', '116', '19', '001', 0, '', '02', '19', '', 0, '<br>- PLATON\r\n<br>- AVIAN\r\n<br>- BRILLO\r\n<br>- VINILEX </br>\r\n', 2000, 1000, 'bookimages/katalogpaints.jpg', 'bookimages/katalogpaints.jpg', '1', '1', '0', 100),
('B0060', 'Cat Tembok', '01', '117', '19', '001', 0, '', '01', '19', '', 0, '<br>- KOMILEX\r\n<br>- BEE BRAND\r\n<br>- DULUX\r\n<br>- FRESH\r\n<br>- AVITEX\r\n<br>- SOLITEX\r\n<br>- JOTUN\r\n<br>- MOWILEX\r\n<br>- OPLOSAN </br>', 2000, 1000, '', '', '1', '1', '0', 100),
('B0061', 'Cat Spray', '01', '118', '19', '001', 0, '', '02', '19', '', 0, '<br>- PYLOX\r\n<br>- SUZUKA </br>', 2000, 1000, '', '', '1', '1', '0', 100),
('B0062', 'Semen', '01', '119', '05', '001', 0, '', '01', '05', '', 0, '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>- Semen Gresik 40 Kg ; Harga : Rp. 45.500/sak<br>\r\n- Semen Conch  40 Kg ; Harga : Rp. 39.500/sak</br>\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n', 0, 45500, 'bookimages/katalogsemen1.jpg', 'bookimages/katalogsemen1.jpg', '1', '0', '1', 100),
('B0063', 'Wiremesh', '01', '120', '03', '002', 0, '', '01', '03', '', 0, '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Wiremesh m6( 2,1 x 54 @292,1 Kg ; Harga : Rp. 2.960.000<br>\r\n- Wiremesh m5( 2,1 x 54 @195,5 Kg ; Harga : Rp. 2.038.500/rol<br>\r\n- Wiremesh m4( 2,1 x 54 @154,5 Kg ; Harga : Rp. 1.836.000/rol<br>\r\n- Wiremesh m8( 2,1 x 54 @54,31 Kg ; Harga : Rp.   563.500/lbr<br>\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n', 0, 0, 'bookimages/katalogwiremesh.jpg', 'bookimages/katalogwiremesh.jpg', '1', '0', '1', 0),
('B0064', 'Besi Beton SNI', '02', '121', '03', '001', 0, '', '01', '03', '', 0, '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Besi Beton  8mm polos Perwira SNI ; Harga : Rp. 38.600/btng<br>\r\n- Besi Beton 12mm polos Perwira SNI ; Harga : Rp. 86.600/btng<br>\r\n- Besi Beton 10mm polos Perwira SNI ; Harga : Rp. 59.900/btng<br><br>\r\n\r\n- Besi Beton 10mm ulir Perwira SNI ; Harga : Rp.  62.600/btng<br>\r\n- Besi Beton 13mm ulir Perwira SNI ; Harga : Rp. 103.000/btng<br>\r\n- Besi Beton 16mm ulir Perwira SNI ; Harga : Rp. 157.100/btng<br>\r\n- Besi Beton 19mm ulir Perwira SNI ; Harga : Rp. 227.900/btng<br>\r\n- Besi Beton 22mm ulir Perwira SNI ; Harga : Rp. 304.400/btng<br>\r\n- Besi Beton 25mm ulir Perwira SNI ; Harga : Rp. 393.100/btng<br>\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n', 0, 0, 'bookimages/katalogperwira.jpg', 'bookimages/katalogperwira.jpg', '1', '0', '1', 0),
('B0065', 'Besi Kanal', '01', '122', '03', '001', 0, '', '01', '03', '', 0, '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Besi Kanal CNP 100 x 50 x 20 x 2 x 6 ; Harga : Rp. 182.000/btng<br>\r\n- Besi Kanal CNP 125 x 50 x 20 x 2 x 6 ; Harga : Rp. 211.000/btng<br>\r\n- Besi Kanal CNP 200 x 75 x 20 x 2 x 6 ; Harga : Rp. 400.000/btng<br><br>\r\n\r\n\r\n- Besi Kanal UNP  50 x 38 x 5   x 6 ; Harga : Rp. 124.000/btng<br>\r\n- Besi Kanal UNP 100 x 50 x 5   x 6 ; Harga : Rp. 302.500/btng<br>\r\n- Besi Kanal UNP 120 x 55 x 6   x 6 ; Harga : Rp. 421.500/btng<br>\r\n- Besi Kanal UNP 125 x 65 x 6   x 6 ; Harga : Rp. 717.500/btng<br>\r\n- Besi Kanal UNP 150 x 75 x 6,5 x 6 ; Harga : Rp. 758.500/btng<br><br>\r\n\r\n\r\n- Besi Kanal WF 150 x  75 x 5   x 7 x 6 ; Harga : Rp.   975.000/btng<br>\r\n- Besi Kanal WF 200 x 100 x 5,5 x 8 x 6 ; Harga : Rp. 1.451.000/btng<br>\r\n- Besi Kanal WF 250 x 125 x 6   x 9 x 6 ; Harga : Rp. 2.012.000/btng<br>\r\n\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n', 0, 0, 'bookimages/katalogkanal.jpg', 'bookimages/katalogkanal.jpg', '1', '0', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_format`
--

CREATE TABLE IF NOT EXISTS `tr_format` (
  `IDFormat` varchar(10) NOT NULL DEFAULT '',
  `Format` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_format`
--

INSERT INTO `tr_format` (`IDFormat`, `Format`) VALUES
('01', 'AIR COMPRESSOR'),
('02', 'BATH AND KITCHEN'),
('03', 'BESI DAN GALVALUM'),
('04', 'BOLT AND NUT'),
('05', 'BUILDING MATERIAL'),
('06', 'FIRE EQUIPMENTS'),
('07', 'GARDEN TOOLS'),
('08', 'HAND TOOLS'),
('09', 'HARDWARE'),
('10', 'HOUSEWARE'),
('11', 'LIFTING EQUIPMENTS'),
('12', 'LIGHTING AND ELECTRICAL'),
('13', 'PAINT AND SUNDRIES'),
('14', 'PLUMBING'),
('15', 'POWER TOOLS AND ACCESSORIES'),
('16', 'SAFETY EQUIPMENTS'),
('17', 'WELDING EQUIPMENTS'),
('18', 'CERAMICS'),
('19', 'PAINTS');

-- --------------------------------------------------------

--
-- Table structure for table `tr_grup_diskon`
--

CREATE TABLE IF NOT EXISTS `tr_grup_diskon` (
  `IDDiscount` varchar(10) NOT NULL DEFAULT '',
  `PromoText` text NOT NULL,
  `IDBuku1` varchar(20) NOT NULL DEFAULT '',
  `IDBuku2` varchar(20) NOT NULL DEFAULT '',
  `Discount` double NOT NULL DEFAULT '0',
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_grup_diskon`
--

INSERT INTO `tr_grup_diskon` (`IDDiscount`, `PromoText`, `IDBuku1`, `IDBuku2`, `Discount`, `Publish`) VALUES
('01', '<FONT color=#000000 size=1><FONT color=#000000 size=1><FONT color=#000000 size=1>\r\n<P><STRONG><FONT color=#a50021 size=3>Best Buy !,</FONT></STRONG><BR><STRONG><FONT color=#cccccc><FONT color=#ffffff>Beli</FONT> </FONT><EM>Bleachers</EM> <FONT color=#ffffff>dan</FONT></STRONG> <BR><STRONG><EM>The Smart Approach to Home Decorating</EM></STRONG><BR><FONT color=#ffffff size=5><STRONG>Hemat 20%</STRONG></FONT><BR><STRONG>sampai dengan</STRONG> <STRONG><FONT color=#a50021>31 Maret 2007</FONT></STRONG></P></FONT></FONT></FONT>', 'B0001', 'B0002', 20, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tr_kas_keluar`
--

CREATE TABLE IF NOT EXISTS `tr_kas_keluar` (
  `ID` varchar(200) NOT NULL,
  `Tanggal` date NOT NULL,
  `DibayarKepada` varchar(200) NOT NULL,
  `JumlahDibayar` varchar(200) NOT NULL,
  `Keterangan` varchar(200) NOT NULL DEFAULT '0',
  `JumlahRp` double NOT NULL DEFAULT '0',
  `Publish` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kas_keluar`
--

INSERT INTO `tr_kas_keluar` (`ID`, `Tanggal`, `DibayarKepada`, `JumlahDibayar`, `Keterangan`, `JumlahRp`, `Publish`) VALUES
('000001', '2008-07-27', 'DYAS', '3', '111', 97000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_kas_masuk`
--

CREATE TABLE IF NOT EXISTS `tr_kas_masuk` (
  `ID` varchar(200) NOT NULL,
  `Tanggal` date NOT NULL,
  `DiterimaDari` varchar(200) NOT NULL,
  `JumlahDiterima` varchar(200) NOT NULL,
  `Keterangan` varchar(200) NOT NULL,
  `JumlahRp` double NOT NULL DEFAULT '0',
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kas_masuk`
--

INSERT INTO `tr_kas_masuk` (`ID`, `Tanggal`, `DiterimaDari`, `JumlahDiterima`, `Keterangan`, `JumlahRp`, `Publish`) VALUES
('000001', '2008-07-27', 'DYAS', '3', '1 buku sd\r\n1 buku smp\r\n1 buku sma', 97000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tr_kategori_bahasa`
--

CREATE TABLE IF NOT EXISTS `tr_kategori_bahasa` (
  `IDKategoriBahasa` varchar(10) NOT NULL DEFAULT '',
  `KategoriBahasa` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kategori_bahasa`
--

INSERT INTO `tr_kategori_bahasa` (`IDKategoriBahasa`, `KategoriBahasa`) VALUES
('01', 'Bahasa Inggris'),
('02', 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tr_kategori_buku`
--

CREATE TABLE IF NOT EXISTS `tr_kategori_buku` (
  `IDKategoriBuku` varchar(10) NOT NULL DEFAULT '',
  `KategoriBuku` varchar(200) NOT NULL DEFAULT '',
  `IDKategoriBahasa` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kategori_buku`
--

INSERT INTO `tr_kategori_buku` (`IDKategoriBuku`, `KategoriBuku`, `IDKategoriBahasa`) VALUES
('01', 'AIR COMPRESSOR', '02'),
('02', 'BATH AND KITCHEN', '02'),
('03', 'BESI DAN GALVALUM', '02'),
('04', 'BOLT AND NUT', '02'),
('05', 'BUILDING MATERIAL', '02'),
('06', 'FIRE EQUIPMENTS', '02'),
('07', 'GARDEN TOOLS', '02'),
('08', 'HAND TOOLS', '01'),
('09', 'HARDWARE', 'pilih-----'),
('10', 'HOUSEWARE', '01'),
('11', 'LIFTING EQUIPMENTS', '01'),
('12', 'LIGHTING AND ELECTRICAL', '01'),
('13', 'PAINT AND SUNDRIES', '01'),
('14', 'PLUMBING', '01'),
('15', 'POWER TOOLS AND ACCESSORIES', '01'),
('16', 'SAFETY EQUIPMENTS', '01'),
('17', 'WELDING EQUIPMENTS', '01'),
('18', 'CERAMICS', '01'),
('19', 'PAINTS', '01');

-- --------------------------------------------------------

--
-- Table structure for table `tr_kategori_spesifikasi`
--

CREATE TABLE IF NOT EXISTS `tr_kategori_spesifikasi` (
  `IDKategoriSpesifikasi` varchar(10) NOT NULL DEFAULT '',
  `KategoriSpesifikasi` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kategori_spesifikasi`
--

INSERT INTO `tr_kategori_spesifikasi` (`IDKategoriSpesifikasi`, `KategoriSpesifikasi`) VALUES
('01', 'Manual'),
('02', 'Otomatis');

-- --------------------------------------------------------

--
-- Table structure for table `tr_keranjang`
--

CREATE TABLE IF NOT EXISTS `tr_keranjang` (
  `ID` varchar(200) NOT NULL DEFAULT '',
  `IDBuku` varchar(20) NOT NULL DEFAULT '',
  `NamaBuku` varchar(50) NOT NULL DEFAULT '',
  `Edisi` varchar(10) NOT NULL DEFAULT '',
  `Harga` double NOT NULL DEFAULT '0',
  `Jumlah` int(11) NOT NULL DEFAULT '0',
  `Status` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_keranjang`
--

INSERT INTO `tr_keranjang` (`ID`, `IDBuku`, `NamaBuku`, `Edisi`, `Harga`, `Jumlah`, `Status`) VALUES
('wa2n_apl@yahoo.com', 'B0001', 'Bleachers', '', 20000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'A Year of Romance', '', 52900, 1, '1'),
('wa2n_apl@yahoo.com', 'B0003', 'The Smart Approach to Home Decorating', '', 52900, 1, '1'),
('wa2n_apl@yahoo.com', 'B0004', 'Celebrations! Quilts for Cherised Family Moments', '', 43900, 1, '1'),
('wa2n_apl@yahoo.com', 'B0006', 'The Little Giant Book of Science Facts', '', 43900, 3, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Bleachers', '', 20000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'A Year of Romance', '', 52900, 1, '1'),
('wa2n_apl@yahoo.com', 'B0007', 'sdasasdas', '', 25000, 4, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 3, '1'),
('w@w.w', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('w@w.w', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('w@w.w', 'B0002', 'sdsadas', '', 34000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 1, '1'),
('w@w.w', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 3, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 3, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 3, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 3, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 3, '1'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 1, '1'),
('buku', 'B0001', 'Tess sa', '', 30000, 1, '0'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 2, '1'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 1, '1'),
('s@s.s', 'B0001', 'Tess sa', '', 30000, 2, '0'),
('s@s.s', 'B0002', 'sdsadas', '', 34000, 3, '0'),
('wa2n_apl@yahoo.com', 'B0001', 'Tess sa', '', 30000, 3, '0'),
('wa2n_apl@yahoo.com', 'B0002', 'sdsadas', '', 34000, 5, '0'),
('a@a.a', 'B0003', 'Testing Judul', '', 30000, 10, '1'),
('a@a.a', 'B0002', 'sdsadas', '', 34000, 20, '1'),
('a@a.a', 'B0001', 'Tess sa', '', 30000, 20, '1'),
('a@a.a', 'B0003', 'Testing Judul', '4', 30000, 4, '1'),
('a@a.a', 'B0002', 'sdsadas', '23123', 34000, 1, '1'),
('a@a.a', 'B0002', 'sdsadas', '23123', 34000, 1, '1'),
('a@a.a', 'B0003', 'Testing Judul', '4', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'Tess sa', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'sdsadas', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'Testing Judul', '4', 30000, 1, '1'),
('', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '0'),
('dias', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '0'),
('kfadlli@yahoo.co.id', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('kfadlli@yahoo.co.id', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('kfadlli@yahoo.co.id', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('suwunk', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('mega_ningrum@yahoo.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1, '1'),
('dias.suwunk@gmail.com', 'B0005', 'FISIKA X', '-', 47500, 1, '1'),
('dias.suwunk@gmail.com', 'B0006', 'INOVA', '-', 45000, 1, '1'),
('dias.suwunk@gmail.com', 'B0005', 'XENIA', '-', 47500, 1, '1'),
('dias.suwunk@gmail.com', 'B0004', 'AVANZA', '-', 52500, 1, '1'),
('dias.suwunk@gmail.com', 'B0004', 'Avanza Hitam', '-', 52500, 1, '1'),
('dias.suwunk@gmail.com', 'B0004', 'Avanza Hitam', '-', 52500, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tr_order`
--

CREATE TABLE IF NOT EXISTS `tr_order` (
  `NoOrder` varchar(10) NOT NULL DEFAULT '',
  `ID` varchar(200) NOT NULL DEFAULT '',
  `Nama` varchar(100) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Alamat` text NOT NULL,
  `TelpFax` varchar(100) NOT NULL DEFAULT '',
  `Status` char(1) NOT NULL DEFAULT '',
  `Total` double NOT NULL DEFAULT '0',
  `Discount` double NOT NULL DEFAULT '0',
  `Bayar` double NOT NULL DEFAULT '0',
  `AlamatKirim` text NOT NULL,
  `AlamatTagih` text NOT NULL,
  `Pembayaran` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_order`
--

INSERT INTO `tr_order` (`NoOrder`, `ID`, `Nama`, `Email`, `Alamat`, `TelpFax`, `Status`, `Total`, `Discount`, `Bayar`, `AlamatKirim`, `AlamatTagih`, `Pembayaran`) VALUES
('080725.002', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '2', 94000, 0, 94000, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', ''),
('080824.001', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '0', 107500, 0, 107500, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. sssssssssssssssss4\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'Bank BCA :<br>\r\nNo.Rek      : 33.1527.11.51</br>'),
('150902.001', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '0', 145000, 0, 145000, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', ''),
('150902.002', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '0', 52500, 0, 52500, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_order_detail`
--

CREATE TABLE IF NOT EXISTS `tr_order_detail` (
  `NoOrder` varchar(200) NOT NULL DEFAULT '',
  `IDBuku` varchar(20) NOT NULL DEFAULT '',
  `NamaBuku` varchar(50) NOT NULL DEFAULT '',
  `Edisi` varchar(10) NOT NULL DEFAULT '',
  `Harga` double NOT NULL DEFAULT '0',
  `Jumlah` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_order_detail`
--

INSERT INTO `tr_order_detail` (`NoOrder`, `IDBuku`, `NamaBuku`, `Edisi`, `Harga`, `Jumlah`) VALUES
('080725.002', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1),
('080725.002', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1),
('080725.002', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1),
('080824.001', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1),
('080824.001', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1),
('080824.001', 'B0005', 'FISIKA X', '-', 47500, 1),
('150902.001', 'B0006', 'INOVA', '-', 45000, 1),
('150902.001', 'B0005', 'XENIA', '-', 47500, 1),
('150902.001', 'B0004', 'AVANZA', '-', 52500, 1),
('150902.002', 'B0004', 'Avanza Hitam', '-', 52500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_penerbit`
--

CREATE TABLE IF NOT EXISTS `tr_penerbit` (
  `IDPenerbit` varchar(10) NOT NULL DEFAULT '',
  `NamaPenerbit` varchar(200) NOT NULL DEFAULT '',
  `Keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_penerbit`
--

INSERT INTO `tr_penerbit` (`IDPenerbit`, `NamaPenerbit`, `Keterangan`) VALUES
('001', 'CV. SAHABAT', 'KLATEN'),
('002', 'CV. MITRA MEDIA PUSTAKA', ''),
('003', 'RIZQI MANDIRI', ''),
('004', 'HAFAMIRA', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_pengarang`
--

CREATE TABLE IF NOT EXISTS `tr_pengarang` (
  `IDPengarang` varchar(10) NOT NULL DEFAULT '',
  `NamaPengarang` varchar(200) NOT NULL DEFAULT '',
  `Keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_pengarang`
--

INSERT INTO `tr_pengarang` (`IDPengarang`, `NamaPengarang`, `Keterangan`) VALUES
('082', 'Pipa dan Alat PVC', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PIPA DAN ALAT PVC </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Plumbing/PIPA DAN ALAT PVC.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('108', 'Baut', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BAUT </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/baut1.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('109', 'Klem', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> KLEM </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/klem.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('017', 'Air Brush', '\r\n<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n- Air Brush Kotak PVC NP Tools\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle">AIR COMPRESSOR</font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/AIR COMPRESSOR(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('064', 'Building Material', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BUILDING MATERIALS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/BUILDING MATERIAL.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('062', 'Baut dan Mur', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BOLT AND NUT </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/bolt and nut.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('034', 'Air Chuck', '<br>- Air Chuck</br>'),
('061', 'Besi Beton', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BESI BETON </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BESI beton.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('081', 'Atap dan Talang', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> ATAP DAN TALANG </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/ATAP DAN TALANG.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('043', 'Closed Jongkok', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n<br>- Closed Jongkok Miami \r\n<br>- Closed Jongkok INA </br>  </br>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BATH AND KITCHEN</font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BATH AND KITCHEN(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('083', 'Selang', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> SELANG </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Plumbing/SELANG.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('099', 'Besi Kanal', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BESI KANAL </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BESI Kanal.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('120', 'Wiremesh', '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Wiremesh m6( 2,1 x 54 @292,1 Kg ; Harga : Rp. 2.960.000<br>\r\n- Wiremesh m5( 2,1 x 54 @195,5 Kg ; Harga : Rp. 2.038.500/rol<br>\r\n- Wiremesh m4( 2,1 x 54 @154,5 Kg ; Harga : Rp. 1.836.000/rol<br>\r\n- Wiremesh m8( 2,1 x 54 @54,31 Kg ; Harga : Rp.   563.500/lbr<br>\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n'),
('065', 'Paku - Paku', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PAKU-PAKU </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/PAKU-PAKU.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('066', 'Seng gelombang dan Semen', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> SENG GELOMBANG & SEMEN </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/SENG GELOMBANG & SEMEN.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('067', 'Tali - Tali', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> TALI-TALI </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/TALI-TALI.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('068', 'Terpal', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> TERPAL </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/TERPAL.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('113', 'Triplek', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> TRIPLEK </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Building Materials/TRIPLEK.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('069', 'Fire Equipments', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> FIRE EQUIPMENTS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/FIRE EQUIPMENTS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('070', 'Garden Tools', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> GARDEN TOOLS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Garden Tools/gardentools.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('114', 'Keramik Lantai', '<br>- SANDIMAS\r\n<br>- PLATINUM\r\n<br>- ASIA TILE\r\n<br>- IKAD\r\n<br>- DK\r\n<br>- ROMAN\r\n<br>- JUPITER\r\n<br>- MULIA </br>\r\n'),
('115', 'Keramik Dinding', '<br>- ROMAS\r\n<br>- JUPITER </br>\r\n'),
('116', 'Cat Kayu dan Besi', '<br>- PLATON\r\n<br>- AVIAN\r\n<br>- BRILLO\r\n<br>- VINILEX </br>\r\n'),
('117', 'Cat Tembok', '<br>- KOMILEX\r\n<br>- BEE BRAND\r\n<br>- DULUX\r\n<br>- FRESH\r\n<br>- AVITEX\r\n<br>- SOLITEX\r\n<br>- JOTUN\r\n<br>- MOWILEX\r\n<br>- OPLOSAN </br>\r\n'),
('118', 'Cat Spray', '<br>- PYLOX\r\n<br>- SUZUKA </br>\r\n'),
('119', 'Semen Gresik dan Conch', '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>- Semen Gresik 40 Kg ; Harga : Rp. 45.500/sak<br>\r\n- Semen Conch  40 Kg ; Harga : Rp. 39.500/sak</br>\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n'),
('072', 'Teknik', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> TEKNIK </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Hand Tools/5.TEKNIK.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('073', 'Waterpass', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> WATERPASS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Hand Tools/WATERPASS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('074', 'Hardware', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> HARDWARE </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/HARDWARE.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('075', 'Houseware', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> HOUSEWARE </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/HOUSEWARE.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('076', 'Lifting Equipments', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> LIFTING EQUIPMENTS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/LIFTING EQUIPMENTS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('077', 'Lighting and Electrical', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> LIGHTING AND ELECTRICAL </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/LIGHTING AND ELECTRICAL.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('078', 'Paint and Sundries', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PAINT AND SUNDRIES </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/PAINT AND SUNDRIES.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('079', 'Safety Equipments', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> SAFETY EQUIPMENTS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/SAFETY EQUIPMENTS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('080', 'Welding Equipments', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> WELDING EQUIPMENTS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/WELDING EQUIPMENTS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('084', 'Tandon Air', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> TANDON AIR </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Plumbing/TANDON AIR.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('085', 'Aksesoris Mesin', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> AKSESORIS MESIN </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/AKSESORIS MESIN.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('086', 'Amplas - Amplas', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> AMPLAS-AMPLAS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/AMPLAS-AMPLAS.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('087', 'Batu Gerinda dan Bearing', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BATU GERINDA DAN BEARING </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/BATU GERINDA DAN BEARING.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('088', 'Mata Bor dan Routher', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> MATA BOR DAN ROUTHER </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/MATA BOR DAN ROUTHER.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('089', 'Mesin', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> MESIN </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/MESIN.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('090', 'Sikat Gerinda', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> SIKAT GERINDA </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Power Tool and Accessories/SIKAT GERINDA.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('091', 'Kran Kompresor', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/AIR COMPRESSOR(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('092', 'Spray Gun', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\nSpray Gun Masaka F 75 G (Biru Metalic) </br>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/AIR COMPRESSOR(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('093', 'Afur / Sifon', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n\r\n</br>\r\n</br>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BATH AND KITCHEN(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('094', 'Afur / Sifon Wastafell', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n\r\n</br></br></br></br></br></br></br> \r\n\r\n<table width="90%" align="center">\r\n	<tr>\r\n		\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BATH AND KITCHEN(1).pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('096', 'Bak Cuci Piring', '<br> - Bak Cuci Piring Royal+meja SB 22(1160x430x135) L2\r\n<br> - Bak Cuci Piring Royal+meja SB 35(  860x430x140) L1 </br></br>'),
('097', 'Ball Valve PVC dan Kuningan', '<br> - Ball Valve PVC Drat\r\n<br> - Ball Valve PVC Polos \r\n<br> - Ball Valve Kuningan  </br></br></br>'),
('098', 'Besi As', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BESI As</font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/BESI As.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('095', 'Bak Fiber Kotak', '<br>- Bak Fiber Kotak \r\n<br>- Bak Fiber Sudut </br></br>'),
('100', 'Pipa Besi', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PIPA BESI </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Pipa besi.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('101', 'pipa Gas', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PIPA GAS </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Pipa gas.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('102', 'Pipa Kotak', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PIPA KOTAK </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Pipa kotak.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('103', 'Pipa SCH', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> PIPA SCH </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Pipa sch.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('104', 'Pipa Ulir', '<br>- Pipa Ulir 3/4x1,2X6M\r\n<br>- Pipa Ulir 1x1,2X6M\r\n<br>- Pipa Ulir 1 1/2x1,2X6M\r\n<br>- Pipa Ulir 1 1/4x1,2X6M   </br>\r\n</br>\r\n</br>\r\n</br>\r\n</br>\r\n'),
('105', 'Pipa Hollow Galvalum', '<br>- Pipa Hollow Galvalum 0,5x20x40x4M (0,30x17x37x4)\r\n<br>- Pipa Hollow Galvalum 0,5x20x40x4M (0,25x14x36x4) kepuh\r\n<br>- Pipa Hollow Galvalum 0,5x20x40x5,8M (0,40x17x37x5,8) Zinium\r\n<br>- Pipa Hollow Galvalum 1,0x20x40x4M (0,80x17x37x4)\r\n<br>- Pipa Hollow Galvalum JAVA 0,5x20x40x4M (0,30x17x37x4)\r\n<br>- Pipa Hollow Galvalum JAVA 0,5x40x40x4M (0,30x37x37x4)\r\n<br>- Pipa Hollow Galvalum Tasso 0,3x20x40x4M (0,25x20x35x4)</br></br></br></br></br></br>'),
('106', 'Baja Ringan', '<br>- Kanal C Kecil Galvalum Kencana\r\n<br>- Kanal C Kecil Galvalum Skape\r\n<br>- Reng Kecil Galvalum Kencana\r\n<br>- Reng Kecil Galvalum Skape </br></br></br></br></br>'),
('107', 'Ball Valve Kuningan', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> BALL VALVE KUNINGAN </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Ball Valve Kuningan.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('110', 'Mor / Hex Nut', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> MOR / HEX NUT </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/morhex.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n');
INSERT INTO `tr_pengarang` (`IDPengarang`, `NamaPengarang`, `Keterangan`) VALUES
('111', 'Ring', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> RING </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/Ring.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('112', 'Sekrup', '<?php\r\nsession_start();\r\ninclude "viewer.php";\r\ninclude "include/connection.php";\r\ninclude "include/manipulation_function.php";\r\ninclude "include/query_function.php";\r\n\r\n$noorder = $_GET[''noorder''];\r\n\r\nprint_header("");\r\n\r\n?>\r\n<br>\r\n<table width="90%" align="center">\r\n	<tr>\r\n		<td class="teksjudul" height="40">\r\n			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> SEKRUP </font>\r\n		</td>\r\n		<td align="right">\r\n		<a href="keranjang.php"  class="tekslink">\r\n		\r\n		\r\n		</td>\r\n	</tr>\r\n\r\n	\r\n\r\n		<tr>\r\n		<td colspan="2" class="teksjudul">\r\n		  <p> </p>\r\n<embed src="http://192.168.0.30/samudramaskalimantan/pdf/Bolt and nut/Sekrup.pdf" align="center" width="900" height="1000"> </embed>\r\n		</tr>\r\n<p> </p>\r\n\r\n<tr>\r\n	<td colspan="2" align="center">\r\n	  <a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>\r\n	</td>\r\n</tr>\r\n</table>\r\n\r\n<?php\r\nprint_footer();\r\n?>\r\n'),
('121', 'Besi Beton SNI', '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Besi Beton  8mm polos Perwira SNI ; Harga : Rp. 38.600/btng<br>\r\n- Besi Beton 12mm polos Perwira SNI ; Harga : Rp. 86.600/btng<br>\r\n- Besi Beton 10mm polos Perwira SNI ; Harga : Rp. 59.900/btng<br><br>\r\n\r\n- Besi Beton 10mm ulir Perwira SNI ; Harga : Rp.  62.600/btng<br>\r\n- Besi Beton 13mm ulir Perwira SNI ; Harga : Rp. 103.000/btng<br>\r\n- Besi Beton 16mm ulir Perwira SNI ; Harga : Rp. 157.100/btng<br>\r\n- Besi Beton 19mm ulir Perwira SNI ; Harga : Rp. 227.900/btng<br>\r\n- Besi Beton 22mm ulir Perwira SNI ; Harga : Rp. 304.400/btng<br>\r\n- Besi Beton 25mm ulir Perwira SNI ; Harga : Rp. 393.100/btng<br>\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n'),
('122', 'Besi KanaL', '<p style=''color:blue; font-size:large;font-weight:enchant_broker_list_dicts(broker)''>\r\n- Besi Kanal CNP 100 x 50 x 20 x 2 x 6 ; Harga : Rp. 182.000/btng<br>\r\n- Besi Kanal CNP 125 x 50 x 20 x 2 x 6 ; Harga : Rp. 211.000/btng<br>\r\n- Besi Kanal CNP 200 x 75 x 20 x 2 x 6 ; Harga : Rp. 400.000/btng<br>\r\n\r\n- Besi Kanal UNP  50 x 38 x 5   x 6 ; Harga : Rp. 124.000/btng<br>\r\n- Besi Kanal UNP 100 x 50 x 5   x 6 ; Harga : Rp. 302.500/btng<br>\r\n- Besi Kanal UNP 120 x 55 x 6   x 6 ; Harga : Rp. 421.500/btng<br>\r\n- Besi Kanal UNP 125 x 65 x 6   x 6 ; Harga : Rp. 717.500/btng<br>\r\n- Besi Kanal UNP 150 x 75 x 6,5 x 6 ; Harga : Rp. 758.500/btng<br>\r\n\r\n- Besi Kanal WF 150 x  75 x 5   x 7 x 6 ; Harga : Rp.   975.000/btng<br>\r\n- Besi Kanal WF 200 x 100 x 5,5 x 8 x 6 ; Harga : Rp. 1.451.000/btng<br>\r\n- Besi Kanal WF 250 x 125 x 6   x 9 x 6 ; Harga : Rp. 2.012.000/btng<br>\r\n\r\n\r\n\r\n  <br> Untuk informasi lebih lanjut hubungi :</br>\r\n <div align ="left" cellspacing=10>\r\n  <marquee class="kecil01a" id="marquee"> <a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>\r\n  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>\r\n  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>\r\n  <a href="http://www.samudramaskalimantan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>\r\n     </div></br>\r\n  </marquee></p> \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tr_penjualan`
--

CREATE TABLE IF NOT EXISTS `tr_penjualan` (
  `NoPenjualan` varchar(10) NOT NULL,
  `ID` varchar(200) NOT NULL DEFAULT '',
  `Nama` varchar(100) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Alamat` text NOT NULL,
  `TelpFax` varchar(100) NOT NULL DEFAULT '',
  `Status` char(1) NOT NULL DEFAULT '',
  `Total` double NOT NULL DEFAULT '0',
  `Discount` double NOT NULL DEFAULT '0',
  `Bayar` double NOT NULL DEFAULT '0',
  `AlamatKirim` text NOT NULL,
  `AlamatTagih` text NOT NULL,
  `Pembayaran` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_penjualan`
--

INSERT INTO `tr_penjualan` (`NoPenjualan`, `ID`, `Nama`, `Email`, `Alamat`, `TelpFax`, `Status`, `Total`, `Discount`, `Bayar`, `AlamatKirim`, `AlamatTagih`, `Pembayaran`) VALUES
('080725.003', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '0', 94000, 0, 94000, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '', ''),
('170629.001', 'dias.suwunk@gmail.com', 'DIAS SUWUNK', 'dias.suwunk@gmail.com', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '08562792689 - 0272-511800', '0', 94000, 0, 94000, 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', 'jl. jotang n0 74\r\nTrucuk\r\nKode Pos : 57467\r\n-------------------------------\r\nKlaten, \r\n\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_penjualan_detail`
--

CREATE TABLE IF NOT EXISTS `tr_penjualan_detail` (
  `NoPenjualan` varchar(200) NOT NULL,
  `IDBuku` varchar(20) NOT NULL DEFAULT '',
  `NamaBuku` varchar(50) NOT NULL DEFAULT '',
  `Edisi` varchar(10) NOT NULL DEFAULT '',
  `Harga` double NOT NULL DEFAULT '0',
  `Jumlah` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_penjualan_detail`
--

INSERT INTO `tr_penjualan_detail` (`NoPenjualan`, `IDBuku`, `NamaBuku`, `Edisi`, `Harga`, `Jumlah`) VALUES
('080725.003', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1),
('080725.003', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1),
('080725.003', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 0),
('170629.001', 'B0003', 'IPS PRATIWI 2C /KS', '205', 30000, 1),
('170629.001', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1),
('170629.001', 'B0001', 'AYO BELAJAR MM BERIRAMA', '23123123-1', 30000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_penjualan_retur`
--

CREATE TABLE IF NOT EXISTS `tr_penjualan_retur` (
  `NoPenjualan` varchar(200) NOT NULL,
  `IDBuku` varchar(20) NOT NULL,
  `NamaBuku` varchar(50) NOT NULL,
  `Edisi` varchar(20) NOT NULL,
  `Harga` double NOT NULL DEFAULT '0',
  `Jumlah` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_penjualan_retur`
--

INSERT INTO `tr_penjualan_retur` (`NoPenjualan`, `IDBuku`, `NamaBuku`, `Edisi`, `Harga`, `Jumlah`) VALUES
('080725.003', 'B0002', 'MATEMATIKA 1A /PR', '23123', 34000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tw_about`
--

CREATE TABLE IF NOT EXISTS `tw_about` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_about`
--

INSERT INTO `tw_about` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('0001', 'Kata Pengantar', '<div align="justify">PT. Samudra Mas Kalimantan adalah  supplier bahan bangun terbesar di Kotawaringin Timur ....<br>\r\n<a href="pengantar.php">[ Baca Selengkapnya ... ]</a></br>\r\n<p><hr size="0.3" color="#FF4500" width="100%"></p>', '1'),
('0002', 'Visi dan Misi', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">PT. Samudra Mas Kalimantan adalah ...<br>\r\n<a href="visi.php">[ Baca Selengkapnya ... ]</a></br>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '1'),
('0004', 'Nilai Tambah Perusahaan', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\n	PT. Samudra Mas Kalimantan ...<br> \r\n	<a href="sejarah.php">[ Baca Selengkapnya ... ]</a></br>\r\n       <p><hr size="0.2" color="#FF4500" width="100%"></p>', '1'),
('0006', 'Rekening', 'Rekening BCA ;\r\nNo. Rek   : 33.3333.3333.333 ,\r\n\r\natas nama : Dedi Purwanto', '0'),
('0007', 'Rekening', 'Rekening BRI ; \r\nNo. rek   : 111.1111.111.1111 , \r\natas nama : Dedi Purwanto', '0'),
('0003', 'Struktur Perusahaan', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nStruktur organisasi PT. Samudra Mas Kalimantan ...<br>\r\n<a href="struktur.php">[ Baca Selengkapnya ... ]</a></br>\r\n<p><hr size="0.2" color="#FF4500" width="100%"></p>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_aboutgallery`
--

CREATE TABLE IF NOT EXISTS `tw_aboutgallery` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_aboutgallery`
--

INSERT INTO `tw_aboutgallery` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('0001', 'Foto - foto Product', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nPT. Samudra Mas Kalimantan memiliki berbagai macam product unggulan yang....<br>\r\n<a href="fotomobil.php">[ Lihat Gambar Selengkapnya ... ]</a></br>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '1'),
('0002', 'Foto - foto Gedung', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nPT. Samudra Mas Kalimantan memiliki gedung yang megah dan mewah ditengah kota Sampit....<br>\r\n<a href="fotosopir.php">[ Lihat Gambar Selengkapnya ... ]</a></br>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_admin`
--

CREATE TABLE IF NOT EXISTS `tw_admin` (
  `ID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL DEFAULT '',
  `Category` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_admin`
--

INSERT INTO `tw_admin` (`ID`, `Password`, `Category`) VALUES
('suwunk', '123', '1'),
('admin', 'admin', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tw_blog`
--

CREATE TABLE IF NOT EXISTS `tw_blog` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_blog`
--

INSERT INTO `tw_blog` (`ID`, `Judul`, `Tanggal`, `Isi`, `Publish`) VALUES
('001', 'sd sdd sads dasdasd a', '0000-00-00 00:00:00', 'sdf fsdfsd fsdfdsfsd ff sdf asdf af asdf dsf af ads faf', '1'),
('002', 'News Today 1', '0000-00-00 00:00:00', 'provides unlimited career development opportunity for many talents in various level and expertise. Over the years, the tremendous growth of the company has created the constant needs for new and fresh talents to be trained and groomed with the latest and most advanced technology, enriched with valuable exposures to various industries and different countries.', '1'),
('021', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1'),
('020', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1'),
('019', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1'),
('011', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1'),
('010', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1'),
('009', 'News Today 3', '2004-08-01 02:20:00', 'Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..Tulis berita disini..', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_contact`
--

CREATE TABLE IF NOT EXISTS `tw_contact` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_contact`
--

INSERT INTO `tw_contact` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('0002', 'Direktur', '<p align=center><img src="http://localhost/samudramaskalimantan/images/logosmk1.gif"/>\r\n<p align=center><a href="biodata.php">[ YULIANA PRAYOGO ]</a>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_distribusi`
--

CREATE TABLE IF NOT EXISTS `tw_distribusi` (
  `ID` varchar(10) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_distribusi`
--

INSERT INTO `tw_distribusi` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('02', 'Perkebunan', '<a href="distrijateng.php">Baca Selengkapnya...>></a></br>\r\n', '1'),
('03', 'Kontraktor', '<a href="distrijatim.php">Baca Selengkapnya...>></a></br>\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_dokumen`
--

CREATE TABLE IF NOT EXISTS `tw_dokumen` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `PathDok` varchar(100) NOT NULL DEFAULT '',
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_dokumen`
--

INSERT INTO `tw_dokumen` (`ID`, `Judul`, `Isi`, `PathDok`, `Publish`) VALUES
('', 'Cat Spray', 'Kami menyediakan berbagai macam cat kayu dan besi antara lain : merk pylox dan suzuka .....', 'cimages/katalogcatspray.jpg ', '1'),
('', 'Cat Kayu dan Besi', 'Kami menyediakan berbagai macam cat kayu dan besi antara lain : merk Platon, Avian Briloo dan Vinilex.....', 'cimages/katalogpaints.jpg ', '1'),
('', 'Cat Tembok', 'Kami menyediakan berbagai macam cat kayu dan besi antara lain : merk Komilex, Bee Brand, Dulux, Fresh, Avitex, Solitex, Jotun, Mowilex, dan cat oplosan .....', 'cimages/katalogcattembok.jpg ', '1'),
('', 'Baja Ringan', 'Kami menyediakan berbagai macam baja ringan antara lain : merk kencana dan skape ..... ', 'cimages/katalogbajaringan.jpg ', '1'),
('', 'Pipa PVC', 'Kami menyediakan berbagai macam pipa PVC antara lain : merk maspion, wavin dan AWS ', 'cimages/katalogpipapvc.jpg ', '1'),
('', 'Atap Genteng', 'Kami menyediakan berbagai macam merk atap dan genteng antara lain : merk Sakura Roof, Radja , Topdek, Soka Jempol dan Gogreen  ..... ', 'cimages/katalogatap.jpg ', '1'),
('', 'Garden Tools', 'Kami menyediakan gerobak artco dan tong sampah artco', 'cimages/kataloggerobakartco.jpg', '1'),
('', 'Alat Teknik', 'Kami menyediakan berbagai macam alat teknik merk tekiro yang berkualitas dengan harga terjangkau ', 'cimages/katalogtekniktekiro.jpg', '1'),
('', 'Welding Equipments', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nPT. Samudra Mas Kalimantan memiliki berbagai macam Welding Equipments diantaranya adalah sebagai berikut : <br>\r\n<a href="kawatcobesteel.php">[ Kawat Las Cobe Steel ... ]</a></br>\r\n<a href="kawatnsn.php">[ Kawat Las NSN ... ]</a></br>\r\n<a href="kawatlincoln.php">[ Kabel Las Lincoln ... ]</a></br>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '', '1'),
('', 'Safety Equipments', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nPT. Samudra Mas Kalimantan memiliki berbagai macam Safety Equipments diantaranya adalah sebagai berikut : <br>\r\n<a href="sepatubotap.php">[ Sepatu Bot AP ... ]</a></br>\r\n<a href="helmproyek.php">[ Helm Proyek MSA ... ]</a></br>\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '', '1'),
('', 'Batu Gerinda', '<text align="justify" width="450" height="700"  multiline="true" fgcolor="blue">\r\nPT. Samudra Mas Kalimantan memiliki berbagai macam batu gerinda diantaranya adalah sebagai berikut : <br>\r\n<a href="batugerinda.php">[ Nipon Resibon ... ]</a></br>\r\n\r\n<p><hr size="1" color="#FF4500" width="100%"></p>', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_faq`
--

CREATE TABLE IF NOT EXISTS `tw_faq` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_faq`
--

INSERT INTO `tw_faq` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('01', 'Sign-Up & Sign-In', '<P align=justify><SPAN style="FONT-SIZE: 8pt; mso-bidi-font-weight: bold">Jika ini adalah kunjungan pertama Anda di situs</SPAN><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-SIZE: 18pt; COLOR: #a50021; FONT-FAMILY: ''Comic Sans MS''; mso-bidi-font-size: 28.0pt; mso-bidi-font-family: Arial"> </SPAN></B><FONT size=3><B style="mso-bidi-font-weight: normal"><SPAN style="COLOR: #a50021; FONT-FAMILY: ''Comic Sans MS''; mso-bidi-font-size: 28.0pt; mso-bidi-font-family: Arial">Buku </SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="COLOR: #ff9966; FONT-FAMILY: ''Times New Roman''">CV. SAHABAT</SPAN></B></FONT><I style="mso-bidi-font-style: normal"><SPAN style="FONT-SIZE: 10pt; COLOR: #ff9966; FONT-FAMILY: Forte; mso-bidi-font-size: 14.0pt; mso-bidi-font-family: Arial"> </SPAN></I><SPAN style="FONT-SIZE: 8pt; mso-bidi-font-weight: bold">, silahkan klik </SPAN><B><U><SPAN style="FONT-SIZE: 8pt; COLOR: maroon">SIGN UP</SPAN></U></B><U><SPAN style="FONT-SIZE: 8.5pt; mso-bidi-font-weight: bold"><SPAN style="mso-spacerun: yes">  </SPAN></SPAN></U><U><SPAN style="FONT-SIZE: 8pt; COLOR: maroon; mso-bidi-font-weight: bold"> New Member</SPAN></U><SPAN style="FONT-SIZE: 8.5pt; mso-bidi-font-weight: bold"> </SPAN><SPAN style="FONT-SIZE: 8pt; mso-bidi-font-weight: bold">di halaman</SPAN><SPAN style="FONT-SIZE: 8.5pt; mso-bidi-font-weight: bold"> </SPAN><B><U><SPAN style="FONT-SIZE: 8pt; COLOR: maroon">Home</SPAN></U></B><B><SPAN style="FONT-SIZE: 8.5pt; COLOR: windowtext">.<SPAN style="mso-spacerun: yes">  </SPAN></SPAN></B><SPAN style="FONT-SIZE: 8pt; COLOR: windowtext; mso-bidi-font-weight: bold">Halaman</SPAN><SPAN style="FONT-SIZE: 8.5pt; COLOR: windowtext; mso-bidi-font-weight: bold"> </SPAN><B><U><SPAN style="FONT-SIZE: 8.5pt; COLOR: maroon">Customer<SPAN style="mso-spacerun: yes">  </SPAN>Account</SPAN></U></B><B><SPAN style="FONT-SIZE: 8.5pt; COLOR: maroon"> </SPAN></B><B><SPAN style="FONT-SIZE: 8.5pt; COLOR: windowtext"><SPAN style="mso-spacerun: yes"> </SPAN></SPAN></B><SPAN style="FONT-SIZE: 8pt; COLOR: windowtext; mso-bidi-font-weight: bold">akan tampil dan Anda diminta untuk mengisi data untuk keperluan pemesanan dan pengiriman.<SPAN style="mso-spacerun: yes">  </SPAN>Harap diisi dengan data yang benar untuk mempermudah kami memproses pesanan Anda dan menjamin pengiriman buku yang Anda pesan tiba ditangan Anda. Dengan mendaftar sebagai member secara GRATIS, Anda berhak untuk mendapatkan fasilitas diskon/promo, menerima newsletter dan informasi mengenai new arrival books serta bebas biaya pengiriman untuk nilai pesanan tertentu.<?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></P>\r\n<P align=justify><SPAN style="FONT-SIZE: 8pt; COLOR: windowtext; mso-bidi-font-weight: bold">Namun jika Anda telah terdaftar sebagai member, silahkan klik <SPAN style="mso-spacerun: yes"> </SPAN></SPAN><B><U><SPAN style="FONT-SIZE: 8pt; COLOR: maroon">SIGN IN</SPAN></U></B><SPAN style="FONT-SIZE: 8pt; COLOR: windowtext; mso-bidi-font-weight: bold"><SPAN style="mso-spacerun: yes">   </SPAN>dan mengisi alamat email dan password Anda.<o:p></o:p></SPAN></P>', '1'),
('02', 'distributor', '<div align="left">\r\n\r\n<style>\r\n<!--table\r\n	{mso-displayed-decimal-separator:"\\.";\r\n	mso-displayed-thousand-separator:"\\,";}\r\n@page\r\n	{margin:0.0in .40in 0.0in .40in;\r\n	mso-header-margin:.1in;\r\n	mso-footer-margin:.1in;}\r\n.font7\r\n	{color:windowtext;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-style:normal;\r\n	text-decoration:none;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;}\r\n\r\nbr\r\n	{mso-data-placement:same-cell;}\r\n.style0\r\n	{mso-number-format:General;\r\n	text-align:general;\r\n	vertical-align:bottom;\r\n	white-space:nowrap;\r\n	mso-rotate:0;\r\n	mso-background-source:auto;\r\n	mso-pattern:auto;\r\n	color:windowtext;\r\n	font-size:10.0pt;\r\n	font-weight:400;\r\n	font-style:normal;\r\n	text-decoration:none;\r\n	font-family:Arial;\r\n	mso-generic-font-family:auto;\r\n	mso-font-charset:0;\r\n	border:none;\r\n	mso-protection:locked visible;\r\n	mso-style-name:Normal;\r\n	mso-style-id:0;}\r\n\r\n.xl24\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	vertical-align:middle;}\r\n.xl25\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;}\r\n.xl26\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;}\r\n.xl27\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:1.0pt solid windowtext;\r\n	border-left:1.0pt solid windowtext;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl28\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:1.0pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl29\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:1.0pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl30\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:1.0pt solid windowtext;\r\n	border-bottom:1.0pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl31\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:none;\r\n	border-left:.5pt solid windowtext;\r\n	background:#CCFFFF;\r\n	mso-pattern:auto none;}\r\n.xl32\r\n	{mso-style-parent:style0;\r\n	color:yellow;\r\n	font-size:9.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:left;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#993366;\r\n	mso-pattern:auto none;}\r\n.xl33\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:left;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFFF;\r\n	mso-pattern:auto none;}\r\n.xl34\r\n	{mso-style-parent:style0;\r\n	color:blue;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl35\r\n	{mso-style-parent:style0;\r\n	color:yellow;\r\n	font-size:9.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#993366;\r\n	mso-pattern:auto none;}\r\n.xl36\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFFF;\r\n	mso-pattern:auto none;}\r\n.xl37\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFFF;\r\n	mso-pattern:auto none;}\r\n.xl38\r\n	{mso-style-parent:style0;\r\n	color:blue;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	border-top:none;\r\n	border-right:.5pt solid windowtext;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl39\r\n	{mso-style-parent:style0;\r\n	color:white;\r\n	font-size:14.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:none;\r\n	border-bottom:1.0pt solid windowtext;\r\n	border-left:none;\r\n	background:red;\r\n	mso-pattern:auto none;}\r\n.xl40\r\n	{mso-style-parent:style0;\r\n	font-size:8.0pt;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:.5pt solid windowtext;\r\n	border-right:none;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;}\r\n.xl41\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:.5pt solid windowtext;\r\n	border-right:none;\r\n	border-bottom:none;\r\n	border-left:.5pt solid windowtext;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl42\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:.5pt solid windowtext;\r\n	border-right:none;\r\n	border-bottom:none;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl43\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:.5pt solid windowtext;\r\n	border-right:.5pt solid black;\r\n	border-bottom:none;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl44\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:none;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:.5pt solid windowtext;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl45\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:none;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n.xl46\r\n	{mso-style-parent:style0;\r\n	color:red;\r\n	font-weight:700;\r\n	font-family:Helvetica, sans-serif;\r\n	mso-font-charset:0;\r\n	text-align:center;\r\n	vertical-align:middle;\r\n	border-top:none;\r\n	border-right:.5pt solid black;\r\n	border-bottom:.5pt solid windowtext;\r\n	border-left:none;\r\n	background:#CCFFCC;\r\n	mso-pattern:auto none;}\r\n-->\r\n</style>\r\n\r\n<table x:str border=0 cellpadding=0 cellspacing=0 width=300 style=''border-collapse:\r\n collapse;table-layout:fixed;width:100pt''>\r\n <col class=xl24 width=10 style=''mso-width-source:userset;mso-width-alt:400;\r\n width:15pt''>\r\n <col class=xl24 width=90 style=''mso-width-source:userset;mso-width-alt:400;\r\n width:80pt''>\r\n\r\n <col class=xl24 width=300 style=''mso-width-source:userset;mso-width-alt:400;\r\n width:260pt''>\r\n <col class=xl25 width=50 style=''mso-width-source:userset;mso-width-alt:400;\r\n width:65pt''>\r\n <tr class=xl26 height=26 style=''mso-height-source:userset;height:19.5pt''>\r\n  <td colspan=4 height=26 class=xl39 width=696 style=''height:19.5pt;width:523pt''>ALAMAT\r\n  PERWAKILAN & DISTRIBUTOR<span style="mso-spacerun: yes">  </span>CV.SAHABAT KLATEN</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n\r\n  <td height=17 class=xl27 style=''height:13.35pt''>NO</td>\r\n  <td class=xl28>WILAYAH</td>\r\n  <td class=xl29>ALAMAT</td>\r\n  <td class=xl30>TELP</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>1</td>\r\n\r\n  <td class=xl32><span style="mso-spacerun: yes"> </span>AMBON</td>\r\n  <td class=xl33><span style="mso-spacerun: yes"> </span>Jl. A. Yani Lorong\r\n  Hotel Anggrek (Depan RS Bakti Rahayu) Batu Gajah, AMBON</td>\r\n  <td class=xl34>(0911) 314742</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>2</td>\r\n\r\n  <td class=xl35 x:str=" B. LAMPUNG "><span style="mso-spacerun:\r\n  yes"> </span>B. LAMPUNG </td>\r\n  <td class=xl36 x:str=" Jl. Ir. Juanda No. 14 Pahoman , BANDAR LAMPUNG "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Ir. Juanda No. 14 Pahoman , BANDAR\r\n  LAMPUNG </td>\r\n  <td class=xl34 x:str=" (0721) 252731 "><span style="mso-spacerun:\r\n  yes"> </span>(0721) 252731 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>3</td>\r\n\r\n  <td class=xl35 x:str=" BALIKPAPAN "><span style="mso-spacerun:\r\n  yes"> </span>BALIKPAPAN </td>\r\n  <td class=xl36\r\n  x:str=" Jl. Letjen  S Parman No. RT 21 RW 07 Kel. Gunung Sari Ulu BALIKPAPAN 76122 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Letjen<span style="mso-spacerun: yes"> \r\n  </span>S Parman No. RT 21 RW 07 Kel. Gunung Sari Ulu BALIKPAPAN 76122 </td>\r\n  <td class=xl34 x:str=" (0542) 24434 "><span style="mso-spacerun:\r\n  yes"> </span>(0542) 24434 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>4</td>\r\n  <td class=xl35 x:str=" BANDUNG "><span style="mso-spacerun:\r\n  yes"> </span>BANDUNG </td>\r\n  <td class=xl36\r\n  x:str=" Jl. Sukamaju 28,30,32 Kel. Pasteur Kec. Sukajadi BANDUNG 40161 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Sukamaju 28,30,32 Kel. Pasteur Kec.\r\n  Sukajadi BANDUNG 40161 </td>\r\n  <td class=xl34 x:str=" (022) 2035440 "><span style="mso-spacerun:\r\n  yes"> </span>(022) 2035440 </td>\r\n </tr>\r\n\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>5</td>\r\n  <td class=xl35 x:str=" BANGKA "><span style="mso-spacerun:\r\n  yes"> </span>BANGKA </td>\r\n  <td class=xl36\r\n  x:str=" Jl. A. Yani Dalam No. 22 Pangkal Pinang, BANGKA 33125  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. A. Yani Dalam No. 22 Pangkal Pinang,\r\n  BANGKA 33125<span style="mso-spacerun: yes">  </span></td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0717) 431007</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>6</td>\r\n  <td class=xl35 x:str=" BANJARMASIN "><span style="mso-spacerun:\r\n  yes"> </span>BANJARMASIN </td>\r\n  <td class=xl36\r\n  x:str=" Jl. A. Yani Km 3,5 Karang Paci No. 20 Rt 05 BANJARMASIN  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. A. Yani Km 3,5 Karang Paci No. 20 Rt 05\r\n  BANJARMASIN<span style="mso-spacerun: yes">  </span></td>\r\n  <td class=xl34 x:str=" (0511) 254467 "><span style="mso-spacerun:\r\n  yes"> </span>(0511) 254467 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>7</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>BANYUWANGI</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Taruma Negara No.\r\n  16 BANYUWANGI</td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0333) 424727</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>8</td>\r\n  <td class=xl35 x:str=" BEKASI "><span style="mso-spacerun:\r\n  yes"> </span>BEKASI </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Serma Marzuki No.\r\n  11 Marga Jaya RT.006/02 BEKASI SELATAN 17141 Kodya Bekasi</td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(021) 8855671</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>9</td>\r\n  <td class=xl35 x:str=" BENGKULU "><span style="mso-spacerun:\r\n  yes"> </span>BENGKULU </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. P. Natadirja No.\r\n  11 Rt.10 Km. 6,5 Kel. Jembatan Kecil BENGKULU</td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0736) 22032</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>10</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>BLITAR</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Kampar No. 6\r\n  BLITAR</td>\r\n  <td class=xl34>(0342) 800097</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>11</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>BOGOR</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Perumahan Taman\r\n  Pagelaran Blok F4 No. 1 BOGOR</td>\r\n  <td class=xl34>(0251) 635988</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>12</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>BOJONEGORO</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. K.H Mansyur No. 90\r\n  BOJONEGORO</td>\r\n  <td class=xl34>(0353) 881006</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>13</td>\r\n  <td class=xl35 x:str=" CILACAP "><span style="mso-spacerun:\r\n  yes"> </span>CILACAP </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Dr. Sutomo No. 70\r\n  C CILACAP 53224</td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0282) 37516</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>14</td>\r\n  <td class=xl35 x:str=" CIREBON "><span style="mso-spacerun:\r\n  yes"> </span>CIREBON </td>\r\n  <td class=xl36 x:str=" Jl. Setra Yasa V Blok B No. 83 CIREBON 45153 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Setra Yasa V Blok B No. 83 CIREBON\r\n  45153 </td>\r\n  <td class=xl34 x:str=" (0231) 230231 "><span style="mso-spacerun:\r\n  yes"> </span>(0231) 230231 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>15</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>DENPASAR</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Diponegoro Gg XIV No. 1 A Dauh Puri Kelod Sanglah DENPASAR 80114 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Diponegoro Gg XIV No. 1 A Dauh Puri\r\n  Kelod Sanglah DENPASAR 80114 </td>\r\n  <td class=xl34 x:str=" (0361) 225540 "><span style="mso-spacerun:\r\n  yes"> </span>(0361) 225540 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>16</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>GORONTALO</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Cokroaminoto No.\r\n  30 Kel. Heledulaa Selatan Kec. Kota Selatan Kodya GORONTALO</td>\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0435) 825097</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>17</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>JAKARTA PUSAT</td>\r\n  <td class=xl37\r\n  x:str=" Jl. Kampung Rawa Selatan V No. 18 Rt. 16/04 Kel Kampung Rawa Kec. Johar Baru "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Kampung Rawa Selatan V No. 18 Rt. 16/04\r\n  Kel Kampung Rawa Kec. Johar Baru </td>\r\n  <td class=xl38>(021) 4260457</td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>18</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>JAKARTA TIMUR</td>\r\n  <td class=xl36\r\n  x:str=" Jl. RS Polri Komplek Depkes No. 36 Kramatjati JAKARTA TIMUR 13510 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. RS Polri Komplek Depkes No. 36\r\n  Kramatjati JAKARTA TIMUR 13510 </td>\r\n  <td class=xl34 x:str=" (021) 8092542 "><span style="mso-spacerun:\r\n  yes"> </span>(021) 8092542 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>19</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>JAMBI</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Cemara II No. 7/31 RT 11 Rw 04 Kel. Selamat Telanaipura JAMBI 36129 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Cemara II No. 7/31 RT 11 Rw 04 Kel.\r\n  Selamat Telanaipura JAMBI 36129 </td>\r\n  <td class=xl34 x:str=" (0741) 65072 "><span style="mso-spacerun:\r\n  yes"> </span>(0741) 65072 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>20</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>JEMBER</td>\r\n  <td class=xl36 x:str=" Jl. S. Parman VIII/10 Sumbersari JEMBER 68122 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. S. Parman VIII/10 Sumbersari JEMBER\r\n  68122 </td>\r\n  <td class=xl34 x:str=" (0331) 331440 "><span style="mso-spacerun:\r\n  yes"> </span>(0331) 331440 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>21</td>\r\n  <td class=xl35 x:str=" KARAWANG "><span style="mso-spacerun:\r\n  yes"> </span>KARAWANG </td>\r\n  <td class=xl36 x:str=" Jl. Galunggung 94 A Perumahan Karang Indah KARAWANG "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Galunggung 94 A Perumahan Karang Indah\r\n  KARAWANG </td>\r\n  <td class=xl34 x:str=" (0267) 402480 "><span style="mso-spacerun:\r\n  yes"> </span>(0267) 402480 </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>22</td>\r\n  <td class=xl35 x:str=" KEBUMEN "><span style="mso-spacerun:\r\n  yes"> </span>KEBUMEN </td>\r\n  <td class=xl36 x:str=" Jl. Mayjend Sutoyo No. 33  KEBUMEN  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Mayjend Sutoyo No. 33<span\r\n  style="mso-spacerun: yes">  </span>KEBUMEN<span style="mso-spacerun: yes"> \r\n  </span></td>\r\n\r\n  <td class=xl34 x:str=" (0287) 81643 "><span style="mso-spacerun:\r\n  yes"> </span>(0287) 81643 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>23</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>KEDIRI</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Tinalan Gang\r\n  III/63 KEDIRI<span style="mso-spacerun: yes">  </span>64132</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0354) 690475</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>24</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>KENDARI</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>BTN II Pembakaran Uang\r\n  Blok A No. 14 KENDARI</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0401) 393420</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>25</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>KLATEN</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Ki Hajar\r\n  Dewantoro, Kotak Pos 111 KLATEN UTARA<span style="mso-spacerun: yes"> \r\n  </span>57411</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0272) 21641</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>26</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>KOTA BUMI</td>\r\n  <td class=xl36 x:str=" Jl. Flamboyan 37/47 KOTABUMI "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Flamboyan 37/47 KOTABUMI </td>\r\n\r\n  <td class=xl34 x:str=" (0724) 21309 "><span style="mso-spacerun:\r\n  yes"> </span>(0724) 21309 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>27</td>\r\n  <td class=xl35 x:str=" KUDUS "><span style="mso-spacerun: yes"> </span>KUDUS </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Panjunan Wetan No.\r\n  352 B <font class=font7>KUDUS</font></td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>( 0291) 439641</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>28</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>KUPANG</td>\r\n  <td class=xl36 x:str=" Jl. Supul 48 Perumnas Kodya KUPANG "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Supul 48 Perumnas Kodya KUPANG </td>\r\n\r\n  <td class=xl34 x:str=" (0380) 824984 "><span style="mso-spacerun:\r\n  yes"> </span>(0380) 824984 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>29</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>LAHAT</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Kolonel Burlian 14 A Talang Kapuk, Pasar Lama LAHAT 31413 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Kolonel Burlian 14 A Talang Kapuk,\r\n  Pasar Lama LAHAT 31413 </td>\r\n\r\n  <td class=xl34 x:str=" (0731) 23405 "><span style="mso-spacerun:\r\n  yes"> </span>(0731) 23405 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>30</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MADIUN</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Pisang 3 Kejuron\r\n  Taman MADIUN 63132</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0351) 497521</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>31</td>\r\n  <td class=xl35 x:str=" MAGELANG "><span style="mso-spacerun:\r\n  yes"> </span>MAGELANG </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Serayu IV No. 418\r\n  Kel. Kebon Sari, MAGELANG</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0293) 311071</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>32</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MAKASSAR</td>\r\n  <td class=xl36 x:str=" Jl. Mallombassang No. 22-24 MAKASSAR 90223 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Mallombassang No. 22-24 MAKASSAR 90223 </td>\r\n\r\n  <td class=xl34 x:str=" (0411) 854549 "><span style="mso-spacerun:\r\n  yes"> </span>(0411) 854549 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>33</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MALANG</td>\r\n  <td class=xl36 x:str=" Jl. Danau Matana F 1/G 10  MALANG  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Danau Matana F 1/G 10<span\r\n  style="mso-spacerun: yes">  </span>MALANG<span style="mso-spacerun: yes"> \r\n  </span></td>\r\n\r\n  <td class=xl34 x:str=" (0341) 713575 "><span style="mso-spacerun:\r\n  yes"> </span>(0341) 713575 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>34</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MANADO</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Arnold Mananutu\r\n  No. 187 Pakowa Lingkungan II MANADO</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0431) 851983</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>35</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MATARAM</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Hos Cokroaminoto Gg Widuri No. 5 Monjok Cemara MATARAM "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Hos Cokroaminoto Gg Widuri No. 5 Monjok\r\n  Cemara MATARAM </td>\r\n\r\n  <td class=xl34 x:str=" (0370) 24076 "><span style="mso-spacerun:\r\n  yes"> </span>(0370) 24076 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>36</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MEDAN</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Nusantara No. 4\r\n  Kel. Kotamatsum III, MEDAN KOTA 20215</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(061) 7369213</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>37</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>METRO</td>\r\n  <td class=xl36 x:str=" Jl. A. Yani  No. 169/15A METRO 34111 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. A. Yani<span style="mso-spacerun:\r\n  yes">  </span>No. 169/15A METRO 34111 </td>\r\n\r\n  <td class=xl34 x:str=" (0724) 42091 "><span style="mso-spacerun:\r\n  yes"> </span>(0724) 42091 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>38</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>MOJOKERTO</td>\r\n  <td class=xl36 x:str=" Jl. Apokat No. 16 Perumnas Magersari MOJOKERTO 61318 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Apokat No. 16 Perumnas Magersari\r\n  MOJOKERTO 61318 </td>\r\n\r\n  <td class=xl34 x:str=" (0321) 324401 "><span style="mso-spacerun:\r\n  yes"> </span>(0321) 324401 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>39</td>\r\n  <td class=xl35 x:str=" PADANG "><span style="mso-spacerun:\r\n  yes"> </span>PADANG </td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Kampung Baru No.\r\n  61 Kel. Simpang Haru Utara, Kec. Padang Timur, PADANG 25127</td>\r\n\r\n  <td class=xl34 x:str=" (0751) 24441 "><span style="mso-spacerun:\r\n  yes"> </span>(0751) 24441 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>40</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PAKAN BARU</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Angsa II No. 3A\r\n  Kp. Melayu, Sukajadi, PAKANBARU</td>\r\n\r\n  <td class=xl34 x:str=" (0761) 21517 "><span style="mso-spacerun:\r\n  yes"> </span>(0761) 21517 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>41</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PALANGKARAYA</td>\r\n  <td class=xl36 x:str=" Jl. Pangrango No. 71 Bukit Hindu PALANGKARAYA 73112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Pangrango No. 71 Bukit Hindu\r\n  PALANGKARAYA 73112 </td>\r\n\r\n  <td class=xl34 x:str=" (0536) 26252 "><span style="mso-spacerun:\r\n  yes"> </span>(0536) 26252 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>42</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PALEMBANG</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Lempuing Blok O\r\n  No. 14 RT.20/5 Kel. Demang Lebar Daun Kec. Ilir Barat I<span\r\n  style="mso-spacerun: yes">  </span>PALEMBANG</td>\r\n\r\n  <td class=xl34 x:str=" (0711) 410934 "><span style="mso-spacerun:\r\n  yes"> </span>(0711) 410934 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>43</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PALOPO</td>\r\n  <td class=xl36 x:str=" Jl. Anggrek Blok D9 PALOPO 91923 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Anggrek Blok D9 PALOPO 91923 </td>\r\n\r\n  <td class=xl34 x:str=" (0471) 91921 "><span style="mso-spacerun:\r\n  yes"> </span>(0471) 91921 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>44</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PALU</td>\r\n  <td class=xl36 x:str=" Jl. Tururuka No. 11 PALU 94111 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Tururuka No. 11 PALU 94111 </td>\r\n\r\n  <td class=xl34 x:str=" (0541) 425608 "><span style="mso-spacerun:\r\n  yes"> </span>(0541) 425608 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>45</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PARE-PARE</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Jendral Sudirman\r\n  No. 148 Kel. Kampung Baru Kec. Bacukiki PARE-PARE</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0421) 22690</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>46</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PASURUAN</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Perum Kebun Jaya No.\r\n  27 PASURUAN</td>\r\n\r\n  <td class=xl34 x:str=" (0343) 423037 "><span style="mso-spacerun:\r\n  yes"> </span>(0343) 423037 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>47</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PATI</td>\r\n  <td class=xl36 x:str=" Jl. Tentara Pelajar No. 30 PATI 59112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Tentara Pelajar No. 30 PATI 59112 </td>\r\n\r\n  <td class=xl34 x:str=" (0295) 81784 "><span style="mso-spacerun:\r\n  yes"> </span>(0295) 81784 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>48</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PEKALONGAN</td>\r\n  <td class=xl36 x:str=" Jl. Sumatera No. 64 PEKALONGAN 51123 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Sumatera No. 64 PEKALONGAN 51123 </td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(0285) 425891</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>49</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PONOROGO</td>\r\n  <td class=xl36 x:str=" Jl. Puspowarno NO. 6 Mangkujayan PONOROGO "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Puspowarno NO. 6 Mangkujayan PONOROGO </td>\r\n\r\n  <td class=xl34 x:str=" (0352) 484007 "><span style="mso-spacerun:\r\n  yes"> </span>(0352) 484007 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>50</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PONTIANAK</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Gusti Hamzah No. 207 Kel. Sei Jawi Dalam PONTIANAK 79112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Gusti Hamzah No. 207 Kel. Sei Jawi\r\n  Dalam PONTIANAK 79112 </td>\r\n\r\n  <td class=xl34 x:str=" (0561) 66301 "><span style="mso-spacerun:\r\n  yes"> </span>(0561) 66301 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>51</td>\r\n  <td class=xl35 x:str=" PROBOLINGGO "><span style="mso-spacerun:\r\n  yes"> </span>PROBOLINGGO </td>\r\n  <td class=xl36\r\n  x:str=" Jl. Serma. Abdul Rahman No. 33 A Mayangan, PROBOLINGGO  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Serma. Abdul Rahman No. 33 A Mayangan,\r\n  PROBOLINGGO<span style="mso-spacerun: yes">  </span></td>\r\n\r\n  <td class=xl34 x:str=" (0335) 423126 "><span style="mso-spacerun:\r\n  yes"> </span>(0335) 423126 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>52</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>PURWOKERTO</td>\r\n  <td class=xl36 x:str=" Jl. Adipati Mersi NO. 8 PURWOKERTO 53112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Adipati Mersi NO. 8 PURWOKERTO 53112 </td>\r\n\r\n  <td class=xl34 x:str=" (0281) 624347 "><span style="mso-spacerun:\r\n  yes"> </span>(0281) 624347 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>53</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SALATIGA</td>\r\n  <td class=xl36 x:str=" Jl. Imam Bonjol No. 108 Sidorejo, SALATIGA 57014 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Imam Bonjol No. 108 Sidorejo, SALATIGA\r\n  57014 </td>\r\n\r\n  <td class=xl34 x:str=" (0298) 25824 "><span style="mso-spacerun:\r\n  yes"> </span>(0298) 25824 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>54</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SAMARINDA</td>\r\n  <td class=xl36 x:str=" Jl. Kartini Gg Mawar No. 9 Rt 09 SAMARINDA  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Kartini Gg Mawar No. 9 Rt 09\r\n  SAMARINDA<span style="mso-spacerun: yes">  </span></td>\r\n\r\n  <td class=xl34 x:str=" (0541) 37229 "><span style="mso-spacerun:\r\n  yes"> </span>(0541) 37229 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>55</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SEMARANG</td>\r\n  <td class=xl36 x:str=" Jl. Cinde Barat V No. 3 Jomblang SEMARANG "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Cinde Barat V No. 3 Jomblang SEMARANG </td>\r\n\r\n  <td class=xl34 x:str=" (024) 8310921 "><span style="mso-spacerun:\r\n  yes"> </span>(024) 8310921 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>56</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SIDOARJO</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Perumahan Pondok Jati\r\n  Blok AA/9 SIDOARJO 61251</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(031) 8964474</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>57</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SINGKAWANG</td>\r\n  <td class=xl36 x:str=" Jl. Alianyang 18 A-B Roban SINGKAWANG 79112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Alianyang 18 A-B Roban SINGKAWANG 79112\r\n  </td>\r\n\r\n  <td class=xl34 x:str=" (0562) 38855 "><span style="mso-spacerun:\r\n  yes"> </span>(0562) 38855 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>58</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SOLO</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Klengkeng No. 9 Rt 02 Rw 08 Kerten Laweyan SOLO 57143 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Klengkeng No. 9 Rt 02 Rw 08 Kerten\r\n  Laweyan SOLO 57143 </td>\r\n\r\n  <td class=xl34 x:str=" (0271) 725158 "><span style="mso-spacerun:\r\n  yes"> </span>(0271) 725158 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>59</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>SURABAYA</td>\r\n  <td class=xl36 x:str=" Jl. Kendangsari VI/42 SURABAYA 60292 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Kendangsari VI/42 SURABAYA 60292 </td>\r\n\r\n  <td class=xl34 x:str=" (031) 8415460 "><span style="mso-spacerun:\r\n  yes"> </span>(031) 8415460 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>60</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TANGERANG</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Komp. Perum Kary. RS\r\n  Harapan Kita Jl. Harapan Raya Blok E.2 , TANGERANG</td>\r\n\r\n  <td class=xl34><span style="mso-spacerun: yes"> </span>(021) 5532371</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>61</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TARAKAN</td>\r\n  <td class=xl36\r\n  x:str=" Jl. KH. Agus Salim Gg. Rambutan No. 24 RT 22 Selumit, TARAKAN TENGAH 77112 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. KH. Agus Salim Gg. Rambutan No. 24 RT\r\n  22 Selumit, TARAKAN TENGAH 77112 </td>\r\n\r\n  <td class=xl34 x:str=" (0551) 21969 "><span style="mso-spacerun:\r\n  yes"> </span>(0551) 21969 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>62</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TASIKMALAYA</td>\r\n  <td class=xl36 x:str=" Jl. Panglayungan 2 No. 18 TASIKMALAYA "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Panglayungan 2 No. 18 TASIKMALAYA </td>\r\n\r\n  <td class=xl34 x:str=" (0265) 334864 "><span style="mso-spacerun:\r\n  yes"> </span>(0265) 334864 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>63</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TEGAL</td>\r\n  <td class=xl36 x:str=" Jl. Pala Raya Barat 2 No. 34, Mejasem, TEGAL  "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Pala Raya Barat 2 No. 34, Mejasem,\r\n  TEGAL<span style="mso-spacerun: yes">  </span></td>\r\n\r\n  <td class=xl34>HP 0822835738</td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>64</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TERNATE</td>\r\n  <td class=xl36\r\n  x:str=" Jl. Ki Hajar Dewantoro 02 Ternate Selatan, TERNATE  97714 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Ki Hajar Dewantoro 02 Ternate Selatan,\r\n  TERNATE<span style="mso-spacerun: yes">  </span>97714 </td>\r\n\r\n  <td class=xl34 x:str=" (0921) 21030 "><span style="mso-spacerun:\r\n  yes"> </span>(0921) 21030 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>65</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>TULUNG AGUNG</td>\r\n  <td class=xl36 x:str=" Jl. Panglima Sudirman VIII/43 TULUNG AGUNG 66219 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Panglima Sudirman VIII/43 TULUNG AGUNG\r\n  66219 </td>\r\n\r\n  <td class=xl34 x:str=" (0355) 322785 "><span style="mso-spacerun:\r\n  yes"> </span>(0355) 322785 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>66</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>WONOSARI</td>\r\n  <td class=xl36><span style="mso-spacerun: yes"> </span>Jl. Siyono Playen Km.\r\n  0,5 Siyono Kidul, Logandeng, WONOSARI</td>\r\n\r\n  <td class=xl34> </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td height=17 class=xl31 style=''height:13.35pt'' x:num>67</td>\r\n  <td class=xl35><span style="mso-spacerun: yes"> </span>YOGYAKARTA</td>\r\n  <td class=xl36 x:str=" Jl. Kapas No. 14 YOGYAKARTA 55166 "><span\r\n  style="mso-spacerun: yes"> </span>Jl. Kapas No. 14 YOGYAKARTA 55166 </td>\r\n\r\n  <td class=xl34 x:str=" (0274) 562760 "><span style="mso-spacerun:\r\n  yes"> </span>(0274) 562760 </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td colspan=4 height=17 class=xl40 style=''height:13.35pt''> </td>\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td colspan=4 height=17 class=xl41 style=''border-right:.5pt solid black;\r\n  height:13.35pt''\r\n  x:str="KANTOR PUSAT  :    Jl. Ki Hajar Dewantoro Kotak Pos 111 KLATEN 57438 Telp. 0272-322441 (hunting) ">KANTOR\r\n  PUSAT<span style="mso-spacerun: yes">  </span>:<span style="mso-spacerun:\r\n  yes">    </span>Jl. Dr. Wahidin Sudirohusodo no.47 KLATEN Telp.\r\n  0272-321056 (hunting) </td>\r\n\r\n </tr>\r\n <tr class=xl26 height=17 style=''mso-height-source:userset;height:13.35pt''>\r\n  <td colspan=4 height=17 class=xl44 style=''border-right:.5pt solid black;\r\n  height:13.35pt''>Fax. 0272-322778<span style="mso-spacerun: yes">       \r\n  </span>E-mail: penerbit_sahabat@yahoo.co.id<!-----------------------------><!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD--><!-----------------------------></td>\r\n </tr>\r\n <![if supportMisalignedColumns]>\r\n <tr height=0 style=''display:none''>\r\n  <td width=26 style=''width:20pt''></td>\r\n\r\n  <td width=112 style=''width:84pt''></td>\r\n  <td width=477 style=''width:358pt''></td>\r\n  <td width=81 style=''width:61pt''></td>\r\n </tr>\r\n <![endif]>\r\n<br>\r\n</table></div>\r\n<br>\r\n<div align="left"><font color="yellow" size="3" face="Monotype Corsiva"><a href="index.php">Back to Home</a></font></div></br>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_gallery`
--

CREATE TABLE IF NOT EXISTS `tw_gallery` (
  `ID` varchar(10) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_gallery`
--

INSERT INTO `tw_gallery` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('0003', 'Foto - foto Mesin Produksi', '<img src="http://localhost/websiteku/bookimages/mesin.jpg"/>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tw_testimonial`
--

CREATE TABLE IF NOT EXISTS `tw_testimonial` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Judul` varchar(50) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tw_testimonial`
--

INSERT INTO `tw_testimonial` (`ID`, `Judul`, `Isi`, `Publish`) VALUES
('0003', 'sadad', 'asdasdasdasda', '1'),
('0002', 'sadasd', 'asdasdasd', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_biodata`
--

CREATE TABLE IF NOT EXISTS `t_biodata` (
  `ID` varchar(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `TTL` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(50) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_biodata`
--

INSERT INTO `t_biodata` (`ID`, `Nama`, `TTL`, `Alamat`, `Telp`, `Publish`) VALUES
('0000', 'Dias Suwardoyo', 'Bandung, 2 Maret 1982', 'Jotang, Trucuk, Klaten', '', '0'),
('0001', 'Dewi Nawangsih', 'Klaten, 10 Januari 1981', 'Mireng, Trucuk, Klaten', '', '0'),
('0004', 'Fajar Prianggoro', 'Klaten, 3 Februari 1984', 'Kauman, Cawas, Klaten', '', '0'),
('0002', 'Siti Haryani', 'Klaten, 5 Juni 1973', 'Tambak Boyo, Pedan, Klaten', '', '0'),
('0005', 'Amanto', 'Klaten, 20 September 1960', 'Tegalrejo, Bayat, Klaten', '', '0'),
('0003', 'Watini', 'Klaten, 9 April 1965', 'Sobayan, Pedan, Klaten', '', '0'),
('0006', 'Kusen Mulyo A', 'Klaten, 27 Mei 1957', 'Bendo Gantungan, Wedi, Klaten', '', '0'),
('0007', 'Dedi Purwanto', 'Klaten, 6 Oktober 1974', 'Jl. Pemuda No 5 Klaten', '', '0'),
('0008', 'Dwi Agustina', 'Klaten, 19 Agustus 1979', 'Jl. Halmahera No.10 Klaten', '', '0'),
('0009', 'Sigit Ari Budiyanto', 'Klaten, 28 Desember 1969', 'Planggu, Bayat, Klaten', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t_contact_user`
--

CREATE TABLE IF NOT EXISTS `t_contact_user` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `Nama` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Alamat` varchar(100) NOT NULL DEFAULT '',
  `TelpFax` varchar(50) NOT NULL DEFAULT '',
  `Pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_contact_user`
--

INSERT INTO `t_contact_user` (`ID`, `Nama`, `Email`, `Alamat`, `TelpFax`, `Pesan`) VALUES
('001', 'wawan', 'a@a.a', 'sdasda dsads', '123123', 'sa nak dsa dkjajd adkj akd ak'),
('002', 'dias', 'dyas_suwunk@yahoo.com', 'trucuk', '08562792689', 'segera dikirm yaw\r\nno validitas transfer saya : 09876'),
('003', 'denny', 'dennyspt84@gmail.com', 'jl. ba amang', '0531 33445', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `t_distributor`
--

CREATE TABLE IF NOT EXISTS `t_distributor` (
  `ID` varchar(50) NOT NULL,
  `Wilayah` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(100) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_distributor`
--

INSERT INTO `t_distributor` (`ID`, `Wilayah`, `Alamat`, `Telp`, `Publish`) VALUES
('000', 'CILACAP ', 'Jl. Dr. Sutomo No. 70 C CILACAP 53224', '', '0'),
('005', 'Triputra Agro Persada', 'Perkebunan Sawit', '', '1'),
('006', 'Minamas ', 'Perkebunan Sawit', '', '1'),
('007', 'Musimmas ', 'Perkebunan Sawit', '', '1'),
('008', 'Asam Jawa Group', 'Perkebunan Sawit', '', '1'),
('009', 'Bumitama Gunajaya Agro ', 'Perkebunan Sawit', '', '1'),
('013', 'Wilmar', 'Perkebunan', '', '1'),
('014', 'Sinar Mas Group', 'Perkebunan', '', '1'),
('010', 'Sinar Citra Cemerlang', 'Perkebunan Sawit ', '', '1'),
('011', 'Nusantara Sawit Persada', 'Perkebunan', '', '1'),
('012', 'Good Hope', 'Perkebunan', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_jabar`
--

CREATE TABLE IF NOT EXISTS `t_jabar` (
  `ID` varchar(50) NOT NULL,
  `Wilayah` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(100) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jabar`
--

INSERT INTO `t_jabar` (`ID`, `Wilayah`, `Alamat`, `Telp`, `Publish`) VALUES
('000', 'BANDUNG ', 'Jl. Sukamaju 28,30,32 Kel. Pasteur Kec. Sukajadi BANDUNG 40161', '', '0'),
('001', 'Nusantara Sawit Persada', 'Perkebunan', '', '1'),
('002', 'Wilmar ', 'Perkebunan', '', '1'),
('004', 'Good Hope', 'Perkebunan', '', '1'),
('003', 'Sinar Mas Group', 'Perkebunan', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_jakarta`
--

CREATE TABLE IF NOT EXISTS `t_jakarta` (
  `ID` varchar(50) NOT NULL,
  `Wilayah` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(100) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jakarta`
--

INSERT INTO `t_jakarta` (`ID`, `Wilayah`, `Alamat`, `Telp`, `Publish`) VALUES
('000', 'JAKARTA BARAT', 'Jl. Jend Suprapto 70 Jakbar', '', '0'),
('001', 'Tata Mulia Nusantara Indah ', 'Pembangunan Hotel Aquarius', '', '1'),
('002', 'Bangun Kubah Sarana', 'Pembangunan Taman Dan Ikon Kota', '', '1'),
('003', 'Sriartama Sukses', 'Pembangunan Borneo City Mall', '', '1'),
('004', 'Heral Eranio Jaya', 'Pembangunan Ruko Ayudia', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_jatim`
--

CREATE TABLE IF NOT EXISTS `t_jatim` (
  `ID` varchar(50) NOT NULL,
  `Wilayah` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(100) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jatim`
--

INSERT INTO `t_jatim` (`ID`, `Wilayah`, `Alamat`, `Telp`, `Publish`) VALUES
('000', 'BANYUWANGI', 'Jl. Taruma Negara No. 16 BANYUWANGI', '', '0'),
('001', 'Sinar Investama Persada', 'Kontraktor', '', '1'),
('002', 'Nipindo Primatama  	 ', 'Kontraktor', '', '1'),
('003', 'Tri Griya Hutama  	 ', 'Kontraktor', '', '1'),
('004', 'Delta Baja Masa  	 ', 'Kontraktor', '', '1'),
('005', 'Palmas Enginerring  	', 'Kontraktor', '', '1'),
('006', 'Han Brother  	 ', 'Kontraktor', '', '1'),
('007', 'Zug Industri  	 ', 'Kontraktor', '', '1'),
('016', 'Heral Eranio Jaya', 'Kontraktor', '', '1'),
('008', 'Wijaya Karya  	 ', 'Kontraktor', '', '1'),
('009', 'Putra Tunggal Sakti  	 ', 'Kontraktor', '', '1'),
('010', 'Pelita Indah  	 ', 'Kontraktor', '', '1'),
('015', 'Sriartama Sukses', 'Kontraktor', '', '1'),
('011', 'Neo Traktor Perkasa  	 ', 'Kontraktor', '', '1'),
('012', 'Harmoni Alam Mentaya  	 ', 'Kontraktor', '', '1'),
('013', 'Tata Mulia Nusantara Indah ', 'Kontraktor', '', '1'),
('014', 'Bangun Kubah Sarana', 'Kontraktor', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_luarjawa`
--

CREATE TABLE IF NOT EXISTS `t_luarjawa` (
  `ID` varchar(50) NOT NULL,
  `Wilayah` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp` varchar(100) NOT NULL,
  `Publish` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_luarjawa`
--

INSERT INTO `t_luarjawa` (`ID`, `Wilayah`, `Alamat`, `Telp`, `Publish`) VALUES
('000', 'AMBON  	 ', 'Jl. A. Yani Lorong Hotel Anggrek Batu Gajah.', '', '1'),
('001', 'B. LAMPUNG  	 ', 'Jl. Ir. Juanda No. 14 Pahoman ,', '', '1'),
('002', 'BALIKPAPAN  	 ', 'Jl. Letjen S Parman No. RT 21/07 Kel. Gunung Sari Ulu,  76122  	 ', '', '1'),
('003', 'BANGKA  	 ', 'Jl. A. Yani Dalam No. 22 Pangkal Pinang,  33125  	 ', '', '1'),
('004', 'BANJARMASIN  	 ', 'Jl. A. Yani Km 3,5 Karang Paci No. 20 Rt 05 ', '', '1'),
('005', 'BENGKULU  	 ', 'Jl. P. Natadirja No. 11 Rt.10 Km. 6,5 Kel. Jembatan Kecil', '', '1'),
('006', 'DENPASAR  	 ', 'Jl. Diponegoro Gg XIV No. 1 A Dauh Puri Kelod Sanglah, ', '', '1'),
('007', 'GORONTALO  	 ', 'Jl. Cokroaminoto No.30 Kel. Heledula Sltn Kec. Kodya ', '', '1'),
('008', 'JAMBI  	 ', 'Jl. Cemara II No. 7/31 RT 11/04 Kel. Selamat Telanaipura, ', '', '1'),
('009', 'KENDARI  	 ', 'BTN II Pembakaran Uang Blok A No. 14 ', '', '1'),
('010', 'KUPANG  	 ', 'Jl. Supul 48 Perumnas Kodya KUPANG  	 ', '', '1'),
('011', 'LAHAT  	', ' Jl. Kolonel Burlian 14 A Talang Kapuk, Pasar Lama, 31413  	 ', '', '1'),
('012', 'MAKASSAR  	 ', 'Jl. Mallombassang No. 22-24 MAKASSAR 90223  	 ', '', '1'),
('013', 'MANADO  	 ', 'Jl. Arnold Mananutu No. 187 Pakowa Lingkungan II ', '', '1'),
('014', 'MATARAM  	 ', 'Jl. Hos Cokroaminoto Gg Widuri No. 5 Monjok Cemara ', '', '1'),
('015', 'MEDAN  	 ', 'Jl. Nusantara No. 4 Kel. Kotamatsum III, 20215  	 ', '', '1'),
('016', 'METRO  	 ', 'Jl. A. Yani No. 169/15A METRO 34111  	 ', '', '1'),
('017', 'PADANG  	 ', 'Jl. Kp.Baru No.61 Kel. Simpang Haru Utara, Kec.Padang, ', '', '1'),
('018', 'PEKAN BARU  	 ', 'Jl. Angsa II No. 3A Kp. Melayu, Sukajadi, PEKAN BARU  	  ', '', '1'),
('019', 'PALANGKARAYA  	 ', 'Jl. Pangrango No. 71 Bukit Hindu, PALANGKARAYA, 73112  	 ', '', '1'),
('020', 'PALEMBANG  	 ', 'Jl. Lempuing Blok O No.14 RT.20/5 Kel. Demang  Kec. Iir ', '', '1'),
('021', 'PALOPO  	 ', 'Jl. Anggrek Blok D9 PALOPO 91923  	', '', '1'),
('022', 'PALU  	 ', 'Jl. Tururuka No. 11 PALU, 94111  	', '', '1'),
('023', 'PARE-PARE  	 ', 'Jl. Jendral Sudirman No.148 Kel. Kp.Baru Kec. Bacukiki ', '', '1'),
('024', 'PONTIANAK  	 ', 'Jl. Gusti Hamzah No. 207 Kel. Sei Jawi Dalam, 79112  	 ', '', '1'),
('025', 'SAMARINDA  	', ' Jl. Kartini Gg Mawar No. 9 Rt 09 ', '', '1'),
('026', 'SINGKAWANG  	 ', 'Jl. Alianyang 18 A-B Roban, SINGKAWANG, 79112  	 ', '', '1'),
('027', 'TARAKAN  	 ', 'Jl. KH. Agus Salim Gg. Rambutan No. 24 RT 22 Selumit.', '', '1'),
('028', 'TERNATE  	 ', 'Jl. Ki Hajar Dewantoro 02 Ternate Sltn, 97714  	 ', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_tematis`
--

CREATE TABLE IF NOT EXISTS `t_tematis` (
  `ID` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL DEFAULT '',
  `Judul_PathGambar` varchar(80) NOT NULL DEFAULT '',
  `PathGambar` varchar(80) NOT NULL DEFAULT '',
  `Isi` text NOT NULL,
  `Publish` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_tematis`
--

INSERT INTO `t_tematis` (`ID`, `Judul`, `Judul_PathGambar`, `PathGambar`, `Isi`, `Publish`) VALUES
(35, 'WELCOME PT. SAMUDRA MAS KALIMANTAN', 'cimages/home.JPG', 'cimages/home.JPG', '<div id="home_center"><marquee class="kecil01a" id="marquee" onmouseover="marquee.stop();" onmouseout="marquee.start();" truespeed="" scrollamount="1" scrolldelay="40" direction="up" width="300" height="360">\r\n<P align=center>PT. Samudra Mas Kalimantan - Kotawaringin Timur</p>\r\n\r\n<P align=justify> PROMO HARI INI.....<br>\r\nAyo segera kunjungi ke Toko Kami.....<br>\r\nKeburu kehabisan lho ???......<br>\r\nStok Terbatas...... </p><br>\r\n\r\n </div>', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tr_anggota`
--
ALTER TABLE `tr_anggota`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tr_buku`
--
ALTER TABLE `tr_buku`
  ADD PRIMARY KEY (`IDBuku`);

--
-- Indexes for table `tr_format`
--
ALTER TABLE `tr_format`
  ADD PRIMARY KEY (`IDFormat`);

--
-- Indexes for table `tr_grup_diskon`
--
ALTER TABLE `tr_grup_diskon`
  ADD PRIMARY KEY (`IDDiscount`);

--
-- Indexes for table `tr_kategori_bahasa`
--
ALTER TABLE `tr_kategori_bahasa`
  ADD PRIMARY KEY (`IDKategoriBahasa`);

--
-- Indexes for table `tr_kategori_buku`
--
ALTER TABLE `tr_kategori_buku`
  ADD PRIMARY KEY (`IDKategoriBuku`);

--
-- Indexes for table `tr_order`
--
ALTER TABLE `tr_order`
  ADD PRIMARY KEY (`NoOrder`);

--
-- Indexes for table `tr_penjualan`
--
ALTER TABLE `tr_penjualan`
  ADD PRIMARY KEY (`NoPenjualan`);

--
-- Indexes for table `tw_blog`
--
ALTER TABLE `tw_blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tw_distribusi`
--
ALTER TABLE `tw_distribusi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_tematis`
--
ALTER TABLE `t_tematis`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_tematis`
--
ALTER TABLE `t_tematis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
