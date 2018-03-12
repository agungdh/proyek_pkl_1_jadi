-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2018 at 04:01 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_pkl_1_fix(1)`
--

-- --------------------------------------------------------

--
-- Table structure for table `butir`
--

CREATE TABLE `butir` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `substandar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `butir`
--

INSERT INTO `butir` (`id`, `nomor`, `nama`, `substandar_id`) VALUES
(75, '1.1.1', 'Butir 1.1.1', 53),
(76, '5.1.1', 'Butir 5.1.1', 54),
(77, '5.1.2', 'Butir 5.1.2', 54),
(78, '1.1.2', 'Butir 1.1.2', 53),
(79, '1.1.3', 'Butir 1.1.3', 53),
(80, '1.2.1', 'Butir 1.2.1', 56),
(81, '5.2.1', 'Butir 5.2.1', 55),
(82, '1.2.2', 'Butir 1.2.2', 56),
(83, '1.2.3', 'Butir 1.2.3', 56),
(84, '5.2.2', 'Butir 5.2.2', 55),
(85, '2.1.1', 'Butir 2.1.1', 59),
(86, '6.1.1', 'Jelaskan proses pengelolaan dana institusi perguruan tinggi mulai dari perencanaan, penerimaan, pengalokasian, pelaporan, audit, monitoring dan evaluasi, serta pertanggungjawaban kepada pemangku kepentingan.', 57),
(87, '2.1.2', 'Butir 2.1.2', 59),
(88, '6.1.2', 'Jelaskan mekanisme penetapan biaya pendidikan (SPP dan biaya lainnya), serta jelaskan pihak-pihak yang berperan dalam penetapan tersebut', 57),
(89, '2.1.3', 'Butir 2.1.3', 59),
(90, '2.2.1', 'Butir 2.2.1', 60),
(91, '2.2.2', 'Butir 2.2.2', 60),
(92, '6.2.1', 'Jelaskan sistem pengelolaan prasarana dan sarana (kebijakan pengembangan dan pencatatan, penetapan penggunaan, pemeliharaan/perbaikan/kebersihan, keamanan dan keselamatan prasarana dan sarana) yang digunakan dalam penyelenggaraan kegiatan akademik dan non-akademik, untuk mencapai tujuan institusi. ', 58),
(93, '6.2.2', 'Tuliskan lokasi, status, penggunaan dan luas lahan yang digunakan perguruan           tinggi untuk menjamin penyelenggaraan pendidikan yang bermutu, dalam tabel berikut.', 58),
(94, '2.2.3', 'Butir 2.2.3', 60),
(95, '3.1.1', 'Butir 3.1.1', 61),
(97, '3.1.2', 'Butir 3.1.2', 61),
(98, '3.1.3', 'Butir 3.1.3', 61),
(99, '3.2.1', 'Butir 3.2.1', 62),
(100, '3.2.2', 'Butir 3.2.2', 62),
(101, '3.3.3', 'Butir 3.3.3', 62),
(102, '4.1.1', 'Butir 4.1.1', 63),
(103, '4.1.2', 'Butir 4.1.2', 63),
(104, '4.2.1', 'Butir 4.2.1', 64),
(105, '4.2.2', 'Butir 4.2.2', 64),
(106, '4.2.3', 'Butir 4.2.3', 64),
(107, '7.1.1', 'Butir 7.1.1', 65),
(108, '7.1.2', 'Butir 7.1.2', 65),
(109, '7.2.1', 'Butir 7.2.1', 66),
(110, '2.3.2', 'Butir 2.3.2', 68),
(111, '2.3.1', 'Butir 2.3.1', 68),
(112, '2.4.1', 'Butir 2.4.1', 67),
(113, '7.2.2', 'Butir 7.2.2', 66),
(114, '6.1.3', 'Jelaskan kebijakan mengenai pembiayaan mahasiswa yang berpotensi secara akademik dan kurang mampu, jumlah dan persentase mahasiswa yang mendapatkan keringanan atau pembebasan biaya pendidikan terhadap total mahasiswa', 57),
(115, '6.1.4', 'Tuliskan realisasi penerimaan dana (termasuk hibah) dalam juta rupiah,  selama tiga tahun terakhir, pada tabel berikut.', 57),
(116, '6.1.5', 'Tuliskan penggunaan dana yang diterima pada Tabel 6.2.2 selama tiga tahun  terakhir  pada tabel berikut.', 57),
(117, '6.1.6', 'Tuliskan dana untuk kegiatan penelitian dalam tiga tahun terakhir dengan mengikuti format tabel berikut.', 57),
(118, '6.1.7', 'Tuliskan dana yang diperoleh dari/untuk kegiatan pelayanan/pengabdian kepada masyarakat pada tiga tahun terakhir dengan mengikuti format tabel berikut.', 57),
(119, '6.1.8', 'Jelaskan sistem monitoring dan evaluasi pendanaan internal untuk pemanfaatan dana yang lebih efektif, transparan, dan memenuhi aturan keuangan yang berlaku', 57),
(120, '6.1.9', 'Jelaskan tentang lembaga audit eksternal keuangan, pelaksanaan audit, ketersediaan laporan bagi pemangku kepentingan, serta tindak lanjutnya oleh perguruan tinggi.', 57),
(121, '6.2.3', 'Prasarana untuk kegiatan akademik dan non-akademik', 58),
(123, '6.2.4', 'Sebutkan prasarana tambahan yang dikelola dalam tiga tahun terakhir. Uraikan pula  rencana investasi untuk prasarana dalam lima tahun mendatang, dengan mengikuti format tabel berikut.', 58),
(124, '6.2.5', 'Pustaka (buku teks, karya ilmiah, dan jurnal; termasuk juga dalam bentuk elektronik/e-library)', 58),
(125, '6.2.6', 'Jelaskan pula aksesibilitas dan pemanfaatan pustaka di atas. ', 58),
(126, '6.2.7', 'Jelaskan upaya perguruan tinggi menyediakan prasarana dan sarana pembelajaran yang terpusat, serta aksesibilitasnya bagi sivitas akademika.', 58),
(127, '6.3.1', 'Jelaskan sistem informasi dan fasilitas yang digunakan oleh perguruan tinggi untuk kegiatan pembelajaran (hardware, software, e-learning, e-library). ', 69),
(128, '6.3.2', 'Jelaskan sistem informasi dan fasilitas yang digunakan oleh perguruan tinggi untuk kegiatan administrasi (akademik, keuangan, dan personil) serta aksesibilitasnya.', 69),
(129, '6.3.3', 'Jelaskan sistem informasi dan fasilitas yang digunakan oleh institusi perguruan tinggi untuk pengelolaan prasarana dan sarana (hardware, software).', 69),
(130, '6.3.4', 'Jelaskan sistem pendukung pengambilan keputusan.', 69),
(131, '6.3.5', 'Jelaskan sistem informasi (misalnya website institusi, fasilitas internet, jaringan lokal, jaringan nirkabel) yang dimanfaatkan untuk komunikasi internal dan eksternal kampus.  Jelaskan juga akses mahasiswa dan dosen terhadap sumber informasi.', 69),
(132, '6.3.6', 'Jelaskan kapasitas internet yang tersedia dan bandwidth per mahasiswa.', 69),
(133, '6.3.7', 'Aksesibiltas Data', 69),
(134, '6.3.8', 'Blue print sistem informasi.', 69),
(135, '1.1.1', 'satu satu satu', 70),
(136, '8', 'JKHKJH', 75);

-- --------------------------------------------------------

--
-- Table structure for table `butirpenilaian`
--

CREATE TABLE `butirpenilaian` (
  `id` int(11) NOT NULL,
  `nomor_butir` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `bobot` int(11) NOT NULL,
  `butir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `butirpenilaian`
--

INSERT INTO `butirpenilaian` (`id`, `nomor_butir`, `deskripsi`, `bobot`, `butir_id`) VALUES
(1, 1, 'deskripsi no butir 1.1', 25, 90),
(2, 13, 'yaya', 6, 75),
(3, 2, 'hk jk', 24, 79);

-- --------------------------------------------------------

--
-- Table structure for table `detilpenilaian`
--

CREATE TABLE `detilpenilaian` (
  `id` int(11) NOT NULL,
  `penilaian_id` int(11) NOT NULL,
  `butir_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detilpenilaian`
--

INSERT INTO `detilpenilaian` (`id`, `penilaian_id`, `butir_id`, `nilai`) VALUES
(15, 8, 75, 2),
(16, 8, 78, 2),
(17, 8, 79, 90),
(18, 8, 80, 80),
(19, 8, 82, 100),
(20, 8, 83, 4),
(21, 8, 85, 5),
(22, 8, 87, 2),
(23, 8, 89, 100),
(24, 8, 90, 100),
(25, 8, 91, 100),
(26, 8, 94, 100),
(27, 8, 111, 100),
(28, 8, 110, 100),
(29, 8, 112, 100),
(30, 8, 95, 100),
(31, 8, 97, 100),
(32, 8, 98, 100),
(33, 8, 99, 100),
(34, 8, 100, 100),
(35, 8, 101, 100),
(36, 8, 102, 100),
(37, 8, 103, 100),
(38, 8, 104, 100),
(39, 8, 105, 100),
(40, 8, 106, 100),
(41, 8, 76, 100),
(42, 8, 77, 100),
(43, 8, 81, 100),
(44, 8, 84, 100),
(45, 8, 86, 100),
(46, 8, 88, 100),
(47, 8, 114, 100),
(48, 8, 115, 100),
(49, 8, 116, 100),
(50, 8, 117, 100),
(51, 8, 118, 100),
(52, 8, 119, 100),
(53, 8, 120, 100),
(54, 8, 92, 100),
(55, 8, 93, 100),
(56, 8, 121, 100),
(57, 8, 123, 100),
(58, 8, 124, 100),
(59, 8, 125, 100),
(60, 8, 126, 100),
(61, 8, 127, 100),
(62, 8, 128, 100),
(63, 8, 129, 100),
(64, 8, 130, 100),
(65, 8, 131, 100),
(66, 8, 132, 100),
(67, 8, 133, 100),
(68, 8, 134, 100),
(69, 8, 107, 100),
(70, 8, 108, 100),
(71, 8, 109, 100),
(72, 8, 113, 100),
(77, 10, 75, 3),
(78, 10, 78, 8),
(79, 10, 79, 40),
(80, 10, 82, 50),
(81, 10, 86, 20),
(82, 10, 114, 20),
(83, 10, 117, 100),
(84, 10, 119, 30),
(85, 10, 92, 50),
(86, 10, 121, 30),
(87, 10, 126, 40),
(146, 10, 83, 1),
(147, 12, 75, 4),
(148, 12, 78, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `nama_file_asli` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `listdokumen_id` int(11) NOT NULL,
  `pengajuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama_file`, `nama_file_asli`, `mime`, `url`, `listdokumen_id`, `pengajuan_id`) VALUES
(76, '76_agungdhc_proyek_pkl_1_fix (1).sql', 'agungdhc_proyek_pkl_1_fix (1).sql', 'application/octet-stream', 'upload/A/A1/2009/7 Standar/standar_1/substandar_1.1/butir_1.1.1/76_agungdhc_proyek_pkl_1_fix (1).sql', 149, 18),
(77, '77_agungdhc_proyek_pkl_1_fix (3).sql', 'agungdhc_proyek_pkl_1_fix (3).sql', 'application/octet-stream', 'upload/A/A1/2009/7 Standar/standar_5/substandar_5.1/butir_5.1.1/77_agungdhc_proyek_pkl_1_fix (3).sql', 150, 18),
(78, '78_agungdhc_proyek_pkl_1_fix.sql', 'agungdhc_proyek_pkl_1_fix.sql', 'application/octet-stream', 'upload/A/A1/2009/7 Standar/standar_5/substandar_5.1/butir_5.1.2/78_agungdhc_proyek_pkl_1_fix.sql', 156, 18),
(79, '79_agungdhc_proyek_pkl_1_fix (2).sql', 'agungdhc_proyek_pkl_1_fix (2).sql', 'application/octet-stream', 'upload/A/A1/2009/7 Standar/standar_5/substandar_5.2/butir_5.2.1/79_agungdhc_proyek_pkl_1_fix (2).sql', 162, 18),
(80, '80_b3.zip', 'b3.zip', 'application/x-zip-compressed', 'upload/A/A1/2009/7 Standar/standar_1/substandar_1.1/butir_1.1.1/80_b3.zip', 148, 18),
(81, '81_BAGAS31 - Patch IDM.rar', 'BAGAS31 - Patch IDM.rar', 'application/octet-stream', 'upload/A/A1/2009/7 Standar/standar_1/substandar_1.1/butir_1.1.1/81_BAGAS31 - Patch IDM.rar', 151, 18),
(82, '82_BUKU-3A-BORANG-AIPT.docx', 'BUKU-3A-BORANG-AIPT.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'upload/A/A1/2009/7 Standar/standar_1/substandar_1.1/butir_1.1.2/82_BUKU-3A-BORANG-AIPT.docx', 154, 18),
(83, '83_Chain.zip', 'Chain.zip', 'application/x-zip-compressed', 'upload/A/A1/2009/7 Standar/standar_1/substandar_1.1/butir_1.1.2/83_Chain.zip', 155, 18);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `kode`, `nama`) VALUES
(8, 'A', 'Ilmu Komunikasi'),
(9, 'B', 'Teknik'),
(10, 'C', 'Teknologi Informasi'),
(12, 'D', 'Ekonomi dan Bisnis'),
(13, 'E', 'Ilmu Sosial & Ilmu Politik'),
(15, 'A', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `listdokumen`
--

CREATE TABLE `listdokumen` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `butir_id` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listdokumen`
--

INSERT INTO `listdokumen` (`id`, `keterangan`, `butir_id`, `tipe`) VALUES
(148, 'Dokumen Wajib Upload', 75, 1),
(149, 'Dokumen Wajib Visitasi', 75, 3),
(150, 'Dokumen Wajib Upload', 76, 1),
(151, 'Dokumen Pendukung', 75, 1),
(152, 'Dokumen Wajib Visitasi', 76, 1),
(153, 'Dokumen Pendukung', 76, 1),
(154, 'Dokumen Wajib Upload', 78, 1),
(155, 'Dokumen Pendukung', 78, 1),
(156, 'Dokumen Wajib Upload', 77, 1),
(157, 'Dokumen Visitasi', 77, 1),
(158, 'Dokumen Wajib Upload', 79, 1),
(159, 'Dokumen Pendukung', 77, 1),
(160, 'Dokumen Wajib Upload', 80, 1),
(161, 'Dokumen Wajib Visitasi', 80, 1),
(162, 'Dokumen Wajib Upload', 81, 1),
(163, 'Dokumen Wajib Upload', 82, 1),
(164, 'Dokumen Pendukung', 81, 1),
(165, 'Dokumen Wajib Upload', 83, 1),
(166, 'Dokumen Wajib Upload', 84, 1),
(167, 'Dokumen Wajib Visitasi', 83, 1),
(168, 'Dokumen Pendukung', 83, 1),
(169, 'Dokumen Wajib Upload', 85, 1),
(171, 'Dokumen Wajib Visitasi', 85, 1),
(173, 'Dokumen Pendukung', 85, 1),
(175, 'Dokumen Wajib Upload', 87, 1),
(176, 'Dokumen Pendukung', 87, 1),
(180, 'Dokumen Wajib Upload', 89, 1),
(181, 'Dokumen Wajib Upload', 90, 1),
(182, 'Dokumen Pendukung', 90, 1),
(183, 'Dokumen Wajib Visitasi', 91, 1),
(185, 'Dokumen Pendukung', 91, 1),
(186, 'Dokumen Wajib Upload', 94, 1),
(187, 'Dokumen Pendukung', 94, 1),
(188, 'Dokumen Wajib Visitasi', 95, 1),
(189, 'Dokumen Pendukung', 95, 1),
(190, 'Dokumen Wajib Upload', 97, 1),
(192, 'Dokumen Pendukung', 97, 1),
(193, 'Dokumen Wajib Visitasi', 97, 1),
(194, 'Dokumen Wajib Upload', 98, 1),
(195, 'Dokumen Wajib Visitasi', 98, 1),
(196, 'Dokumen Wajib Upload', 99, 1),
(197, 'Dokumen Pendukung', 99, 1),
(198, 'Dokumen Wajib Visitasi', 99, 1),
(199, 'Dokumen Wajib Visitasi', 100, 1),
(201, 'Dokumen Wajib Upload', 101, 1),
(202, 'Dokumen Wajib Visitasi', 101, 1),
(203, 'Dokumen Pendukung', 102, 1),
(204, 'Dokumen Wajib Upload', 103, 1),
(205, 'Dokumen Wajib Upload', 104, 1),
(206, 'Dokumen Pendukung', 104, 1),
(207, 'Dokumen Wajib Upload', 106, 1),
(208, 'Dokumen Wajib Visitasi', 106, 1),
(209, 'Dokumen Pendukung', 106, 1),
(210, 'Dokumen Wajib Visitasi', 105, 1),
(211, 'Dokumen Wajib Upload', 107, 1),
(212, 'Dokumen Pendukung', 107, 1),
(213, 'Dokumen Wajib Upload', 108, 1),
(214, 'Dokumen Visitasi', 108, 1),
(215, 'Dokumen Pendukung', 108, 1),
(216, 'Dokumen Wajib Upload', 109, 1),
(217, 'Dokumen Visitasi', 109, 1),
(218, 'Dokumen Wajib Upload', 111, 1),
(219, 'Dokumen Wajib Visitasi', 110, 1),
(220, 'Dokumen Pendukung', 110, 1),
(221, 'Dokumen Pendukung', 112, 1),
(222, 'Dokumen Pendukung', 109, 1),
(223, 'Dokumen Wajib Upload', 113, 1),
(224, 'Dokumen Visitasi', 113, 1),
(225, 'file tentang anggaran penerimaan', 86, 1),
(226, 'file tentang penetapan mekanisme biaya pendidikan', 88, 2),
(227, 'file mengenai kebijakan pembiayaan mahasiswa kurang mampu', 114, 1),
(228, 'file tentang realisasi penerimaan dana', 115, 3),
(229, 'file tentang penggunaan dana 3 tahun terakhir', 116, 1),
(230, 'file tentang dana kegiatan penelitian', 117, 1),
(232, 'file tentang dana kegiatan pengabdian masyarakat', 118, 1),
(235, 'file tentang sistem monitoring dan evaluasi pendanaan', 119, 3),
(236, 'file tentang audit', 120, 2),
(238, 'file tentang sistem pengelolaan sarana dan prasarana', 92, 2),
(239, 'file tentang lokasi, status, penggunaan dan luas lahan', 93, 3),
(240, 'A. Tuliskan data prasarana(kantor, ruang kelas, ruang laboratorium, studio, ruang perpustakaan, kebun percobaan, ruang dosen) yang digunakan institusi dalam penyelenggaraan program / kegiatan institusi dengan  mengikuti format tabel berikut.', 121, 2),
(241, 'B. Tuliskan data prasarana lain yang mendukung terwujudnya visi(misalnya tempat pembinaan minat dan bakat, kesejahteraan, ruang himpunan mahasiswa, asrama mahasiswa) dengan mengikuti format tabel berikut.', 121, 3),
(242, 'file tentang prasarana tambahan', 123, 1),
(243, 'file tentang pustaka', 124, 1),
(244, 'file tentang aksesibilitas', 125, 1),
(245, 'file tentang sarana prasarana yang terpusat', 126, 1),
(246, 'file tentang kebijakan pengembangan sarpras', 92, 1),
(247, 'file tentang sistem informasi dan fasilitas yang digunakan', 127, 3),
(248, 'file tentang sistem informasi dan fasilitas yang digunakan akademik', 128, 2),
(249, 'file tentang si dan faslilitas untuk pengelolaan sarana prasarana', 129, 1),
(250, 'file tentang pendukung pengambilan keputusan', 130, 3),
(251, 'file tentang sistem informasi untuk keperluan internal', 131, 1),
(252, 'file tentang kepasitas internet', 132, 2),
(253, 'Beri tanda ? pada kolom yang sesuai (hanya satu kolom) dengan aksesibilitas tiap jenis data pada tabel berikut.', 133, 2),
(254, 'Jelaskan blueprint pengembangan, pengelolaan, dan pemanfaatan sistem informasi.', 134, 3),
(255, 'file tentang dana yang diterima tahun ini', 116, 2),
(256, 'lj;', 136, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipeversi_id` int(11) NOT NULL,
  `tahun_borang` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `tanggal`, `user_id`, `tipeversi_id`, `tahun_borang`) VALUES
(18, '2019-02-27', 3, 29, 2019),
(23, '2018-03-07', 4, 29, 2090),
(24, '2018-03-09', 1, 28, 2018),
(25, '2018-03-09', 3, 29, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `pengajuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id`, `tanggal`, `pengajuan_id`) VALUES
(8, '2018-03-01', 18),
(10, '2018-03-01', 18),
(12, '2018-03-05', 18);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `fakultas_id`) VALUES
(7, 'A1', 'Ilmu Komunikasi', 8),
(11, 'B1', 'TEKNIK ELEKTRO', 9),
(12, 'B2', 'TEKNIK ARSITEKTUR', 9),
(13, 'C1', 'TEKNIK INFORMATIKA', 10),
(14, 'C2', 'SISTEM INFORMASI', 10),
(15, 'C3', 'SISTEM KOMPUTER', 10),
(16, 'D1', 'AKUNTANSI', 12),
(17, 'D2', 'MANAJEMEN', 12),
(18, 'E1', 'HUBUNGAN INTERNASIONAL', 13),
(19, 'E2', 'KRIMINOLOGI', 13);

-- --------------------------------------------------------

--
-- Table structure for table `standar`
--

CREATE TABLE `standar` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `tipeversi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standar`
--

INSERT INTO `standar` (`id`, `nomor`, `nama`, `tipeversi_id`) VALUES
(64, '1', ' VISI, MISI, TUJUAN DAN SASARAN, SERTA STRATEGI PENCAPAIAN', 28),
(65, '5', 'Standar 5', 28),
(66, '6', 'PEMBIAYAAN, PRASARANA, SARANA, DAN SISTEM INFORMASI', 28),
(67, '7', 'Standar 7', 28),
(68, '2', 'Standar 2', 28),
(69, '3', 'Standar 3', 28),
(70, '4', 'Standar 4', 28),
(71, '1', 'satu', 29),
(73, '2', 'nama 2', 28),
(76, '2', 'dua', 29),
(77, '100', 'testtt', 28);

-- --------------------------------------------------------

--
-- Table structure for table `substandar`
--

CREATE TABLE `substandar` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `standar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substandar`
--

INSERT INTO `substandar` (`id`, `nomor`, `nama`, `standar_id`) VALUES
(53, '1.1', 'Jelaskan dasar penyusunan dan mekanisme penyusunan visi, misi, tujuan dan sasaran institusi perguruan tinggi, serta pihak-pihak yang dilibatkan dalam penyusunannya.', 64),
(54, '5.1', 'Substandar 5.1', 65),
(55, '5.2', 'Substandar 5.2', 65),
(56, '1.2', 'Substandar 1.2', 64),
(57, '6.1', 'Pembiayaan', 66),
(58, '6.2', 'Prasarana dan Sarana', 66),
(59, '2.1', 'Substandar 2.1', 68),
(60, '2.2', 'Substandar 2.2', 68),
(61, '3.1', 'Substandar 3.1', 69),
(62, '3.2', 'Substandar 3.2', 69),
(63, '4.1', 'Substandar 4.1', 70),
(64, '4.2', 'Substandar 4.2', 70),
(65, '7.1', 'Substandar 7.1', 67),
(66, '7.2', 'Substandar 7.2', 67),
(67, '2.4', 'Substandar 2.4', 68),
(68, '2.3', 'Substandar 2.3', 68),
(69, '6.3', 'Sistem Informasi', 66),
(70, '1.1', 'satu satu', 71),
(71, '2', 'duo oo uh', 71),
(72, '1.2', 'hkhk', 71),
(75, '3', 'kfk mnljf', 76);

-- --------------------------------------------------------

--
-- Table structure for table `tipeversi`
--

CREATE TABLE `tipeversi` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `versi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipeversi`
--

INSERT INTO `tipeversi` (`id`, `tipe`, `versi_id`) VALUES
(28, 'universitas', 28),
(29, 'Program Studi', 29),
(30, 'program studi', 28),
(31, '53', 28);

-- --------------------------------------------------------

--
-- Table structure for table `type_listdokumen`
--

CREATE TABLE `type_listdokumen` (
  `id_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_listdokumen`
--

INSERT INTO `type_listdokumen` (`id_type`, `type`) VALUES
(1, 'Dokumen Wajib'),
(2, 'Dokumen Visitasi'),
(3, 'Dokumen Pendukung');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `prodi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `prodi_id`) VALUES
(1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, NULL),
(3, 'univ', 'c001deeb52dc9ff9e859f65772659245cff32c5607e8932f3efeba343bd829cc497f299789b15cc27c95dc3ec865447679e7bbb52138a3e97f3f4b38c7c17874', 2, NULL),
(4, 'ophumas', '8f18c505ea83c1503b199ca936692912f9e08fda787fbedfc2fc144467bb3d4243ed1df050f001225df6c93dfba15f465eda50e97a10705299f0ff71137b3520', 3, 7),
(14, 'manajemen', 'd2d966dc907af41d781d1a44142d121cd66d209e21768cd9d8dfb2b57b828c8f5e2ac88b6d9944f00e6aa02af582414dfebf4617695ab8af9989e4c3a8b21e24', 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `versi`
--

CREATE TABLE `versi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `versi` text NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `versi`
--

INSERT INTO `versi` (`id`, `nama`, `versi`, `tahun`) VALUES
(28, '7 Standar', '7', 2018),
(29, '9 Standar', '9', 2018);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_butir`
--
CREATE TABLE `v_butir` (
`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_butirbutir`
--
CREATE TABLE `v_butirbutir` (
`id_butirpenilaian` int(11)
,`nomor_butirpenilaian` int(11)
,`deskripsi` text
,`bobot` int(11)
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lisdokumen`
--
CREATE TABLE `v_lisdokumen` (
`id_lisdokumen` int(11)
,`keterangan` text
,`tipe_lisdokumen` int(11)
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengajuan`
--
CREATE TABLE `v_pengajuan` (
`id_pengajuan` int(11)
,`tgl_pengajuan` date
,`tahun_borang` year(4)
,`id_user` int(11)
,`username` varchar(255)
,`level` int(11)
,`id_tipeversi` int(11)
,`tipeversi` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengajuan_dokumen`
--
CREATE TABLE `v_pengajuan_dokumen` (
`id_dokumen` int(11)
,`nama_file` varchar(255)
,`id_pengajuan` int(11)
,`tanggal_pengajuan` date
,`tipe_versi` text
,`versi_id` int(11)
,`nama_versi` varchar(255)
,`tahun_versi` year(4)
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_listdokumen` int(11)
,`keterangan_listdokumen` text
,`tipe_listdokumen` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_penilaian`
--
CREATE TABLE `v_penilaian` (
`id_penilaian` int(11)
,`tanggal_penilaian` date
,`tanggal_pengajuan` date
,`tahun_borang` year(4)
,`tipe` text
,`nama_versi` varchar(255)
,`tahun_versi` year(4)
,`level` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_standar`
--
CREATE TABLE `v_standar` (
`id_standar` int(11)
,`nomor` varchar(255)
,`nama` text
,`tipeversi_id` int(11)
,`tipe` text
,`versi_id` int(11)
,`nama_versi` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_substandar`
--
CREATE TABLE `v_substandar` (
`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipe` int(11)
,`tipe` text
,`id_versi` int(11)
,`nama` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_versitipe`
--
CREATE TABLE `v_versitipe` (
`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`nama` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Structure for view `v_butir`
--
DROP TABLE IF EXISTS `v_butir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_butir`  AS  select `b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from ((((`butir` `b` join `substandar` `sb`) join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`b`.`substandar_id` = `sb`.`id`) and (`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_butirbutir`
--
DROP TABLE IF EXISTS `v_butirbutir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_butirbutir`  AS  select `bp`.`id` AS `id_butirpenilaian`,`bp`.`nomor_butir` AS `nomor_butirpenilaian`,`bp`.`deskripsi` AS `deskripsi`,`bp`.`bobot` AS `bobot`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir` from (`butirpenilaian` `bp` join `butir` `b`) where (`bp`.`butir_id` = `b`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_lisdokumen`
--
DROP TABLE IF EXISTS `v_lisdokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lisdokumen`  AS  select `l`.`id` AS `id_lisdokumen`,`l`.`keterangan` AS `keterangan`,`l`.`tipe` AS `tipe_lisdokumen`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (((((`listdokumen` `l` join `butir` `b`) join `substandar` `sb`) join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`l`.`butir_id` = `b`.`id`) and (`b`.`substandar_id` = `sb`.`id`) and (`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengajuan`
--
DROP TABLE IF EXISTS `v_pengajuan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengajuan`  AS  select `p`.`id` AS `id_pengajuan`,`p`.`tanggal` AS `tgl_pengajuan`,`p`.`tahun_borang` AS `tahun_borang`,`u`.`id` AS `id_user`,`u`.`username` AS `username`,`u`.`level` AS `level`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipeversi` from ((`pengajuan` `p` join `user` `u`) join `tipeversi` `t`) where ((`p`.`user_id` = `u`.`id`) and (`p`.`tipeversi_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengajuan_dokumen`
--
DROP TABLE IF EXISTS `v_pengajuan_dokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengajuan_dokumen`  AS  select `d`.`id` AS `id_dokumen`,`d`.`nama_file` AS `nama_file`,`p`.`id` AS `id_pengajuan`,`p`.`tanggal` AS `tanggal_pengajuan`,`t`.`tipe` AS `tipe_versi`,`v`.`id` AS `versi_id`,`v`.`nama` AS `nama_versi`,`v`.`tahun` AS `tahun_versi`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`ss`.`id` AS `id_substandar`,`ss`.`nomor` AS `nomor_substandar`,`ss`.`nama` AS `nama_substandar`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`ld`.`id` AS `id_listdokumen`,`ld`.`keterangan` AS `keterangan_listdokumen`,`ld`.`tipe` AS `tipe_listdokumen` from ((((((((`dokumen` `d` join `pengajuan` `p`) join `tipeversi` `t`) join `versi` `v`) join `user` `u`) join `standar` `s`) join `substandar` `ss`) join `butir` `b`) join `listdokumen` `ld`) where ((`d`.`pengajuan_id` = `p`.`id`) and (`p`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`) and (`s`.`tipeversi_id` = `v`.`id`) and (`ss`.`standar_id` = `s`.`id`) and (`b`.`substandar_id` = `ss`.`id`) and (`ld`.`butir_id` = `b`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_penilaian`
--
DROP TABLE IF EXISTS `v_penilaian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_penilaian`  AS  select `pn`.`id` AS `id_penilaian`,`pn`.`tanggal` AS `tanggal_penilaian`,`p`.`tanggal` AS `tanggal_pengajuan`,`p`.`tahun_borang` AS `tahun_borang`,`t`.`tipe` AS `tipe`,`v`.`nama` AS `nama_versi`,`v`.`tahun` AS `tahun_versi`,`u`.`level` AS `level` from ((((`penilaian` `pn` join `pengajuan` `p`) join `user` `u`) join `tipeversi` `t`) join `versi` `v`) where ((`pn`.`pengajuan_id` = `p`.`id`) and (`p`.`tipeversi_id` = `t`.`id`) and (`p`.`user_id` = `u`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_standar`
--
DROP TABLE IF EXISTS `v_standar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_standar`  AS  select `s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor`,`s`.`nama` AS `nama`,`s`.`tipeversi_id` AS `tipeversi_id`,`t`.`tipe` AS `tipe`,`t`.`versi_id` AS `versi_id`,`v`.`nama` AS `nama_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from ((`standar` `s` join `versi` `v`) join `tipeversi` `t`) where ((`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_substandar`
--
DROP TABLE IF EXISTS `v_substandar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_substandar`  AS  select `sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipe`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`nama` AS `nama`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (((`substandar` `sb` join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_versitipe`
--
DROP TABLE IF EXISTS `v_versitipe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_versitipe`  AS  select `t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`nama` AS `nama`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (`tipeversi` `t` join `versi` `v`) where (`t`.`versi_id` = `v`.`id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `butir`
--
ALTER TABLE `butir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `substandar_id` (`substandar_id`);

--
-- Indexes for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `butir_id` (`butir_id`);

--
-- Indexes for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_id` (`penilaian_id`),
  ADD KEY `butir_id` (`butir_id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listdokumen_id` (`listdokumen_id`),
  ADD KEY `pengajuan_id` (`pengajuan_id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listdokumen`
--
ALTER TABLE `listdokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `butir_id` (`butir_id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versi_id` (`tipeversi_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_id` (`pengajuan_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- Indexes for table `standar`
--
ALTER TABLE `standar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipeversi_id` (`tipeversi_id`);

--
-- Indexes for table `substandar`
--
ALTER TABLE `substandar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `standar_id` (`standar_id`);

--
-- Indexes for table `tipeversi`
--
ALTER TABLE `tipeversi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versi_id` (`versi_id`);

--
-- Indexes for table `type_listdokumen`
--
ALTER TABLE `type_listdokumen`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- Indexes for table `versi`
--
ALTER TABLE `versi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `butir`
--
ALTER TABLE `butir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `listdokumen`
--
ALTER TABLE `listdokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `standar`
--
ALTER TABLE `standar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `substandar`
--
ALTER TABLE `substandar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `tipeversi`
--
ALTER TABLE `tipeversi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `type_listdokumen`
--
ALTER TABLE `type_listdokumen`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `versi`
--
ALTER TABLE `versi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `butir`
--
ALTER TABLE `butir`
  ADD CONSTRAINT `butir_ibfk_1` FOREIGN KEY (`substandar_id`) REFERENCES `substandar` (`id`);

--
-- Constraints for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  ADD CONSTRAINT `butirpenilaian_ibfk_1` FOREIGN KEY (`butir_id`) REFERENCES `butir` (`id`);

--
-- Constraints for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  ADD CONSTRAINT `detilpenilaian_ibfk_1` FOREIGN KEY (`penilaian_id`) REFERENCES `penilaian` (`id`),
  ADD CONSTRAINT `detilpenilaian_ibfk_2` FOREIGN KEY (`butir_id`) REFERENCES `butir` (`id`);

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`listdokumen_id`) REFERENCES `listdokumen` (`id`),
  ADD CONSTRAINT `dokumen_ibfk_2` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan` (`id`);

--
-- Constraints for table `listdokumen`
--
ALTER TABLE `listdokumen`
  ADD CONSTRAINT `listdokumen_ibfk_1` FOREIGN KEY (`butir_id`) REFERENCES `butir` (`id`);

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`tipeversi_id`) REFERENCES `tipeversi` (`id`),
  ADD CONSTRAINT `pengajuan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan` (`id`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);

--
-- Constraints for table `standar`
--
ALTER TABLE `standar`
  ADD CONSTRAINT `standar_ibfk_1` FOREIGN KEY (`tipeversi_id`) REFERENCES `tipeversi` (`id`);

--
-- Constraints for table `substandar`
--
ALTER TABLE `substandar`
  ADD CONSTRAINT `substandar_ibfk_1` FOREIGN KEY (`standar_id`) REFERENCES `standar` (`id`);

--
-- Constraints for table `tipeversi`
--
ALTER TABLE `tipeversi`
  ADD CONSTRAINT `tipeversi_ibfk_1` FOREIGN KEY (`versi_id`) REFERENCES `versi` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
