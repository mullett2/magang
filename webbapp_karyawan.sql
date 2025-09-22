-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2025 at 06:15 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbapp_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id` int NOT NULL,
  `karyawan_id` int DEFAULT NULL,
  `nama_anak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tanggal_lahir_anak` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id`, `karyawan_id`, `nama_anak`, `tanggal_lahir_anak`) VALUES
(8, 12, 'Arzio Shaquille Athallah', '2023-09-09'),
(9, 10, 'M. Daffa Shaquille', '2009-05-28'),
(10, 10, 'Aleesya Zahra Indira', '2011-01-23'),
(11, 11, 'Zhafira Nisa', '2015-04-03'),
(12, 9, 'Indah Kartika Sari Kusuma', '1992-10-28'),
(13, 9, 'Saviera Rani Kusuma', '1997-06-02'),
(14, 15, 'M. Elvano Jaya Alamsyah', '2019-11-02'),
(15, 15, 'Hana Nayla Alamsyah', '2021-12-21'),
(16, 20, 'Muhammad Fadhil Raditya', '2005-11-17'),
(17, 20, 'Muhammad Azzam Alfarishy', '2009-11-08'),
(18, 20, 'Muhammad Habibi Al Ghifari', '2016-05-06'),
(19, 20, 'Muhammad Rayyanza Harith Amrullah', '2022-06-05'),
(20, 22, 'Nursyafiyah Duma Siregar', '2020-12-31'),
(21, 22, 'Nuraisyah Malika Siregar', '2024-09-01'),
(22, 27, 'Aileen Irmadel Faustina', '2012-10-07'),
(23, 27, 'Muhammad Dzaki Al Bukhari', '2016-08-01'),
(24, 27, 'Zayn Abdurrahman', '2020-02-14'),
(25, 29, 'Muhammad Elzein Fabrizio', '2022-08-07'),
(26, 33, 'Rafardhan Abimanyu Romadhan', '2020-05-20'),
(27, 33, 'Raneysha Arimbi Romadhan', '2022-03-15'),
(28, 34, 'Naysa Almeehra', '2024-08-04'),
(29, 34, 'Syanaira Ekanta', '2025-08-02'),
(30, 36, 'Mufazzal  Rafindra Ferdiansyah', '2024-08-08'),
(31, 40, 'Muhamad Zaki', '2020-06-24'),
(32, 42, 'Allea Shanum Almahyra', '2024-10-06'),
(33, 43, 'Lia Marwati', '1997-05-22'),
(34, 43, 'Helmi Firmansyah', '2024-06-30'),
(35, 57, 'Altair Surya Respati', '2023-08-17'),
(36, 57, 'Sheza Aqila Nadira', '2021-01-19'),
(37, 58, 'Adifa shafana', '2019-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `id_mmksi` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `no_bpjs_kesehatan` varchar(50) DEFAULT NULL,
  `no_bpjs_ketenagakerjaan` varchar(50) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `alamat` text,
  `no_ktp` varchar(50) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `masa_kerja` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kategori` enum('Trainee','Junior','Senior','OUTSOURCING','LEPAS/ HARIAN') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sejak_tanggal` date DEFAULT NULL,
  `status_karyawan` enum('Tetap','Kontrak','OUTSOURCING','LEPAS/ HARIAN') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kontrak_mulai` date DEFAULT NULL,
  `kontrak_selesai` date DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `no_wa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik`, `id_mmksi`, `email`, `npwp`, `no_bpjs_kesehatan`, `no_bpjs_ketenagakerjaan`, `nama_karyawan`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `no_ktp`, `pendidikan`, `tanggal_masuk`, `masa_kerja`, `jabatan`, `kategori`, `sejak_tanggal`, `status_karyawan`, `kontrak_mulai`, `kontrak_selesai`, `no_hp`, `no_wa`) VALUES
(9, 'LB87040002', 'S-101354', 'budiman@lautanberlian.co.id\r\n', '583512546309000 ', '0001268394759', '88G00069787', 'Budiman\r\n', 'Lahat', '1996-03-31', 'Islam', 'Jl. Soekarno Hatta. Lrg.Kesucian .  No.29. Rt.03.  Rw.01.  Kec. Alang2 Lebar. Palembang \r\n', '1604103103660006', 'SMA', '1987-04-01', '', 'OH', 'Senior', '2025-09-20', 'Tetap', '2025-09-20', '2025-09-20', '082118122226', '082182810505'),
(10, 'LB19100024', 'S-125314', 'dwi.aryanti85@gmail.com', '868496035301000 ', '', '21022532481', 'Dwi Asri Aryanti', 'Palembang', '1985-08-03', 'Islam', 'Komp. Grand Garden Jl. Mallorca Blok L No. 03 Rt 054 Rw.010 Kelurahan Bukit Sangkal Kec. Kalidoni, Kota Palembang 30114\r\n', '1671104308850010', 'S1', '2019-10-01', '5 Tahun', 'Sales Coordinator', 'Trainee', '2019-10-01', 'Kontrak', '2025-09-20', '2025-09-20', '081368122988', ''),
(11, 'LB17090022', ' S-117394', 'andisyahril26@gmail.com', '246149307307000 ', '', '', 'Andi Kusriyanto', 'Muara Kati Baru I', '1981-08-26', 'Islam', 'Jl. Madang Lr. Makmur  No.1641 Rt/Rw. 027/008 Kel. Sekip Jaya Kec. Kemuning, Kota Palembang\r\n', '1671092608810005', 'S1', '2017-09-17', '7 Tahun', 'Sales Coordinator', 'Trainee', '2017-09-17', 'Kontrak', '2025-09-20', '2025-09-20', '08117888268', ''),
(12, 'LB19020015', 'S-125303', 'rullyseptiana06@gmail.com', '908641897312000 ', '', '', 'Rully Septiana', 'Kayuagung', '1993-09-06', 'Islam', 'Jl. Lebung Permai Perum Bukit Rahma REsidence Blok D 25 RT/RW 014/005 Kelurahan Talang Kelapa Kecamatan Alang-Alang Lebar Kota Palembang\r\n', '1602054609930006', 'S2', '2019-02-13', '6 Tahun', 'Sales Counter', 'Trainee', '2025-09-20', 'Kontrak', '2025-09-20', '2025-09-20', '', ''),
(13, 'LB20120001', 'S-127625', 'irawanasep217@gmail.com', '399847359312000', '', '', 'Asep Irawan', 'Ulak Balam', '1994-09-27', 'Islam', 'Jl. Sukabangun II Soak Simpur, Griya Buana Indah II RT/RW 027/003 Kecamatan Sukarami Kelurahan Sukabangun Kota Palembang', '1602022709940002', 'S1', '2020-12-01', '4 Tahun', 'Sales Counter', 'Trainee', '2020-12-01', 'Kontrak', '2025-09-20', '2025-09-20', '081248643727', ''),
(14, 'LB23060020', 'S-131828', 'rezafahlefisahab@gmail.com', '', '', '', 'M Reza Fahlevi Sahab', 'Palembang', '1994-06-22', 'Islam', 'Sukabangun 2 Jl. Kaur Soak No. 004 RT/RW 063/009 Kelurahan Sukabangun, Kecamatan Sukarami, Kota Palembang\r\n', '1671072206940006', 'S1', '2023-06-20', '2 Tahun', 'Sales Consultant', 'Trainee', '2023-06-20', 'Kontrak', '2025-09-20', '2025-09-20', '082175831993', ''),
(15, 'LB23090002', 'S-120474', 'evakomaria930@gmail.com', '', '', '', 'Eva Komaria', 'Pangkal Pinang', '1987-02-02', 'Islam', 'Jl. Pesantren Sultan Mahmud Badarudin II No. 32 RT/RW 015/004 Kelurahan Talang Jambe Kecamatan Sukarami Kota Palembang', '1971034202870001', 'SMA', '2023-09-01', '1 Tahun', 'Sales Counter', 'Trainee', '2023-09-01', 'Kontrak', '2025-09-20', '2025-09-20', '081379136534', ''),
(16, 'LB23120010', 'S-133787', 'riekafiniera@gmail.com', '998062244325000', '', '', 'Rieka Anggita Finiera', 'Tambahrejo', '2001-08-01', 'Islam', 'Talang Jambe, Lrg. Sukun RT/RW 021/006 Kelurahan Talang Jambe Kecmatan Sukarami Kota Palembang\r\n', '1810024108010004', 'SMA', '2023-12-08', ' 1 Tahun', 'Sales Consultant', 'Trainee', '2023-12-08', 'Kontrak', '2025-09-20', '2025-09-20', '081281906245', '081281906245'),
(17, 'LB24080024', 'S-134204', 'arindanawilis@gmail.com', '', '', '', 'Arinda Putri Utami', 'Palembang', '1995-01-11', 'Islam', 'Jl. Purwosari II, Lorong. Simanampang, RT/RW 49/10 Kelurahan Bukit Sangkal Kecamatan Kalidoni, Kota Palembang\r\n', '1671105101950005', 'S1', '2024-08-09', '10 Bulan', 'Sales Consultant', 'Trainee', '2024-08-19', 'Kontrak', '2025-09-20', '2025-09-20', '089620904488', ''),
(18, 'LB24080023', 'S-134193', 'helmiizzati01@gmail.com', '', '', '', 'M. Helmi Izzati Amin', 'OKU Timur', '2001-11-01', 'Islam', 'Jl. Rama 8 KM 10, Kecamatan Alang-Alang Lebar, Kota Palembang', '1608120106010002', 'S1', '2024-09-09', '10 Bulan', 'Sales Counter', 'Trainee', '2024-09-19', 'Kontrak', '2025-09-20', '2025-09-20', '\'082269699985', ''),
(19, 'LB24120017', 'S-135029', 'muhammadridwanullah22@gmail.com', '\'281264739307000', '', '', 'Muhammad Ridwanullah', 'Palembang ', '1998-08-22', 'Islam', '', '\'1671072208980012', 'S1', '2024-12-09', '6 Bulan', 'Sales Counter', 'Trainee', '2024-12-09', 'Kontrak', '2025-09-20', '2025-09-20', '082280916821', ''),
(20, 'LB10020002', '', 'johanwahyudi@lautanberlian.co.id', '164403966301000 ', '0001279550463', '10007984791', 'Johan Wahyudi', 'Palembang', '1979-03-23', 'Islam', 'Jl. Pasundan No. 10 RT/RW 027/006 Kel. Kalidoni Kec. Kalidoni Kota Palembang\r\n', '1671102303790014', 'SMA', '2010-10-02', '15 Tahun', 'SVC SPV', 'Junior', '2025-09-20', 'Tetap', '2025-09-20', '2025-09-20', '081373215051', ''),
(21, 'LB18110035', '', 'ahmadbahrul29.ab@gmail.com', '', '0002672441796', '19021329701', 'Ahmad Bahrul', 'Palembang', '2000-05-29', 'Islam', 'JL Jaya No 1450 RT/RW 026/008 Kel. 16 Ulu Kec. Seberang Ulu II Kota Palembang', '', 'SMK', '2018-09-03', '6 Tahun', 'Mekanik', 'Trainee', '2018-09-03', 'Kontrak', '2023-01-01', '2024-12-31', '082372627774', ''),
(22, 'LB10040001', '', 'syalims@gmail.com', '', '0001137561039', '10016274267', 'Ahmad Syalim H. Siregar', 'Palembang', '1991-05-08', 'Islam', 'Jl. Tunas Harapan Lr Mawar No.636 Rt.44 Rw.06 Kel. Sukamaju Kec. Sako Palembang', '1671080805910008', 'S1', '2010-01-25', '15 Tahun', 'SC', 'Trainee', '2010-01-25', 'Kontrak', '2024-05-01', '2026-04-30', '085377575856', '089504206881'),
(23, 'LB19050040', '', 'aji.ishak2841@gmail.com', '', '0001968953668', '\'20006301186', 'Aji Ishak Arbaban', 'Palembang', '2001-04-28', 'Islam', 'Jl. Tegal Binangun Lr. Talang Petai RT. 015 RW.05 Kel. Plaju Darat Palembang Kec.Plaju \r\n', '1671142804020006', 'SMK', '2019-05-10', '5 Tahun', 'Mekanik', 'Trainee', '2019-05-10', 'Kontrak', '2023-05-29', '2025-05-29', '081367487528', ''),
(24, 'LB19050035', '', 'aldikurniawan674@gmail.com', '', '0000323606878', '20006301194', 'Aldi Kurniawan', 'Puncuwati, Lampung', '2001-04-08', 'Islam', '', '1671030803010002', 'SMK', '2019-04-10', '5 Tahun', 'Mekanik', 'Trainee', '2019-04-10', 'Kontrak', '2023-05-29', '2023-05-29', '08893814201', ''),
(25, 'LB17080009', '', 'andretalem06@gmail.com', '', '0002130957898', '18013468998', 'Andre Afriyansah', 'Palembang', '1999-04-06', 'Islam', 'Jl. Tegal Binangun Lr. Langgar Rt.27 Rw.09 Kel. Plaju Darat Kec. Plaju\r\n', '1671140604990003', 'SMK', '2018-08-14', '7 Tahun', 'Mekanik', 'Trainee', '2018-08-14', 'Kontrak', '2023-12-01', '2025-11-30', '085971196145', ''),
(26, 'LB18080035', '', 'darwansmknsumsel@gmail.com', '393752283301000', '0000992650285', '19021329669', 'Darwan', 'Palembang', '1998-07-28', 'Islam', 'Jl. Sematang Komplek Griya Sejahtera Kelurahan Sako Kecamatan Sako Kota Palembang\r\n', '1671082807980005', 'SMA', '2018-05-02', '7 Tahun', 'Mekanik', 'Trainee', '2018-05-02', 'Kontrak', '2022-09-01', '2025-08-31', '089623303198', ''),
(27, 'LB10120004', '', 'feryslarva88@gmail.com', '', '0001139712917', '11003673727', 'Ferry Sanjaya', 'Palembang', '1988-07-08', 'Islam', 'Jl. Rawasari Rt.48 No.43 Kec. Kalidoni Kel. Bukit Sangkal Palembang\r\n', '1671100807880011', 'SMK', '2010-12-01', '14 Tahun', 'Mekanik Leader', 'Trainee', '2010-12-01', 'Kontrak', '2022-10-16', '2024-10-16', '0895422131833', ''),
(28, 'LB14120012', '', 'hendrykur01@gmail.com', '', '0001875230458', '15025339514', 'Hendry Kurniawan', 'Palembang', '1996-12-01', 'Islam', 'Jl. Sabo Kingking Perum. Griya Harapan Baru Blok D6 Rt.29 Rw.01 Sungai Buah Palembang\r\n', '1671060112960007', 'S1', '2014-11-03', '10 Tahun', 'SC', 'Trainee', '2014-11-03', 'Kontrak', '2022-12-01', '2024-12-01', '089635505995', ''),
(29, 'LB16030007', '', 'bowopratama08@gmail.com', '', '0001505008809', '16027897772', 'M. Bowo Pratama', 'Bogor ', '1998-04-08', 'Islam', 'Jl. Kianwar Mangku Sentosa Plaju Talang Kemang Rt.19 Rw.05 \r\n', '1671030805980001', 'SMK', '2016-04-01', '9 Tahun', 'Mekanik Leader', 'Trainee', '2016-04-01', 'Kontrak', '2023-05-01', '2025-04-30', '0895322690374', ''),
(30, 'LB19050038', '', 'm.hairullah502@gmail.com', '', '0003062863023', '20006301244', 'Muhammad Hairullah', 'Palembang', '2002-06-04', 'Islam', 'Jl. Kapten Roban Kadir Lr. Karang Luhur No.130 Rt.26 Rw.07 Kel. Talang Putri Kec. Plaju Kota Palembang\r\n', '1671140406020005', 'SMK', '2019-05-29', '5 Tahun', 'Mekanik', 'Trainee', '2019-05-29', 'Kontrak', '2023-09-01', '2025-08-31', '082376077107', ''),
(31, 'LB19050045', '', 'renaldieriwismoyo024@gmail.com', '', '0002429252458', '20006301251', 'Renaldi Tri Wismoyo', 'Palembang', '2001-10-21', 'Islam', 'Jl. Tegal Binangun Lr. Nangka Rt.10 Rw.04 Kel.Plaju Darat Palembang Kec. Palju\r\n', '1671142110010006', 'SMK', '2019-05-10', '5 Tahub', 'SC', 'Trainee', '2019-05-10', 'Kontrak', '2023-05-29', '2025-05-29', '0895621534419', ''),
(32, 'LB24100014', '', 'dewisepriaa12@gmail.com', '0002950530074', '', '', 'Dewi Septia Anggraeni', 'Bandung', '2002-10-12', 'Islam', 'Jl. Jaya V No. 1217 RT/RW 022/007 Kelurahan 16 Ulu Kecamatan Seberang Ulu II Kota Palembang\r\n', '1671035209020005', 'S1', '2024-10-21', '8 Bulan', 'Admin Service', 'Trainee', '2024-10-21', 'Kontrak', '2024-10-21', '2025-10-20', '081918940089', ''),
(33, 'LB19090068', '', 'teddy.ramadhan@gmail.com', '922365275306000', '0000322966304', '20006301301', 'Tedi Romadhan', 'Palembang', '1995-02-16', 'Islam', 'Jl. Talang Kelapa Rt.26 Rw.008 Kel. Karya Baru Kec. Alang-Alang Lebar Palembang\r\n', '1671131602950008', 'S1', '2019-09-01', '5 Tahun', 'Toolsman', 'Trainee', '2019-09-01', 'Kontrak', '2023-12-25', '2025-12-25', '089673311557', ''),
(34, 'LB16030005', '', 'ekachanda93@gmail.com', '', '0000324807254', '13024773098', 'Eka Chandra', 'Palembang', '1993-04-21', 'Islam', 'Jl. Pangkalan Betung Km.16. Perum. Handayani. Blok. G. No.3\r\n', '1671052104920007', 'SMA', '2019-09-17', '5 Tahun', 'Spare Part Warehouse', 'Trainee', '2012-09-17', 'Kontrak', '2023-07-01', '2025-07-01', '089677949496', ''),
(35, 'LB19070026', '', 'intenseptiandryani@lautanberlian.co.id', '', '0001801623374', '20006301293', 'Inten Septiandryani', 'Palembang', '1996-09-22', 'Islam', 'Jl. Angkatan 66, Rajawali I No 1970, Rt.025, Rw.006. Kel. Talang Aman.  Kemuning. Kota Palembang\r\n', '1671096209960005', 'S1', '2019-07-08', '5 Tahun', 'Customer Service Office', 'Trainee', '2019-07-08', 'Kontrak', '2022-01-14', '2024-01-14', '083179230317', '087897712795'),
(36, 'LB21070007', '', 'mrizkiferdiansyah58@gmail.com', '', '0002674923851', '22001622012', 'M. Rizki Ferdiansyah', 'Palembang', '1999-02-26', 'Islam', 'Jl. Husin Basri Perum. Naurah 2 Blok C3 Kelurahan Sukamulya Kecamatan Sematang Borang, Kota Palembang\r\n', '1671102602990003', 'SMK', '2021-07-01', '3 Tahun', 'Driver', 'Trainee', '2021-07-01', 'Kontrak', '2023-11-01', '2025-08-31', '089616133838', ''),
(37, 'LB22020008', '', 'yeyensepriyeni@gmail.com', '', '0002673769915', '22067595235', 'Yeyen Sepriyeni', 'Palembang', '1999-09-01', 'Islam', 'Jl. Barokah VI. No.54 RT/RW 045/004 Kel. Talang Kelapa Kec. Alang-Alang Lebar Kota Palembang\r\n', '1671074109990008', 'S1', '2022-01-12', '3 Tahun', 'Admin Serice Sparepart', 'Trainee', '2022-01-12', 'Kontrak', '2024-05-01', '2025-04-30', '083112508904', '088268273414'),
(38, 'LB22070023', '', 'tegarrf14@gmail.com ', '', '0003508368759', '23013560943', 'M. Tegar Rizky Febrian', 'Palembang', '2003-06-14', 'Islam', 'Jl. Rukun No 1007 RT/RW 031/006 Kel. 14 Ulu Kec. Seberang Ulu II Kota Palembang\r\n', '1671031406030003', 'SMK', '2022-08-01', '2 Tahun', 'Mekanik', 'Trainee', '2022-08-01', 'Kontrak', '2022-12-01', '2024-11-30', '088268024263', ''),
(39, 'LB22070022', '', 'agungivan019@gmail.com', '', '0001895578863', '23013560950', 'Ivan Agung', 'Palembang ', '2000-04-28', 'Islam', 'Jl. D.I. Panjaitan LR. Sirah Kampung Gg. Ratu RT 035 RW 010 No. 09, Plaju Ilir, Kota Palembang\r\n', '1671142804000007', 'SMA', '2023-01-02', '2 Tahun', 'Mekanik', 'Trainee', '2023-01-02', 'Kontrak', '2023-05-01', '2025-04-30', '08984976033', ''),
(40, 'LB22070029', '', 'jokocole93@gmail.com', '', '0001506207429', '22144984964', 'Joko Purnomo', 'Palembang', '1993-03-09', 'Islam', 'Jl. DI. Panjaitan Ir Jaya S. No. 1217 RT/RW 022/007 Kel. 16 Ulu Kec. Seberang Ulu II Kota Palembang\r\n', '1671030903930005', 'SMK', '2022-07-29', '2 Tahun ', 'Mekanik', 'Trainee', '2022-07-29', 'Kontrak', '2022-10-01', '2024-09-03', '081366297322', ''),
(41, 'LB23030007', '', 'putrioktavianti@gmail.com', '', '0002672496022', '23125170128', 'Putri Oktavianti', 'Palembang', '2001-10-28', 'Islam', 'Jl. Iswahyudi Lr. Embah Salim RT 018/ RW 004 Kelurahan Kalidoni, Kecamatan Kalidoni\r\n', '1671106710010015', 'SMK', '2023-03-01', '2 Tahun ', 'Customer Service', 'Trainee', '2023-07-01', 'Kontrak', '2023-07-01', '2025-06-30', '085158596944', ''),
(42, 'LB24050010', '', 'muhammadakbar@gmail.com', '', '', '24200525673', 'M. Akbar', 'Palembang', '1996-08-14', 'Islam', 'Jl. Kh. Azhari Lrg. Firma Rt/Rw. 14/02 Kel. Seberang Ulu I Kec. Kertapati\r\n', '', 'SMA', '2024-01-02', '1 Tahun', 'Spare Part Warehouse', 'Trainee', '2024-06-01', 'Kontrak', '2024-06-01', '2026-05-31', '081367074447', ''),
(43, 'LB03010006', '', 'mu6385122@gmail.com', '583626825306000', '0001131083289', '99G00011986', 'M. Umar', 'Tanjung Lubuk ', '1967-06-16', 'Islam', 'Jln. A. Yani Lrg Gumay Gang Bandes No. 813 Rt/Rw. 19/Vi Kec. Seberang Ulu Ii Kel. 14 Ulu 30264 Palembang\r\n', '1671031606677004', 'SMA', '2003-01-06', '22 Tahun', 'Satpam', 'Trainee', '2003-01-06', 'Tetap', '2025-09-20', '2025-09-20', '089650615473', '085768217375'),
(44, 'LB23010057', '', 'fahranfahran37@gmail.com', '856440375438000 ', '0001961723417', '23088480894', 'Fahran Al Fajar', 'Majalengka', '1995-11-14', 'Islam', 'Jl. R. A. Abusamah, Kelurahan Sukabangun, Kecamatan Sukarami, Kota Palembang\r\n', '3210151411950001', 'S1', '2023-01-30', '2 Tahun', 'Admin Umum', 'Trainee', '2023-06-01', 'Kontrak', '2023-06-01', '2025-05-31', '081214146243', ''),
(45, 'LB25010013', '', 'rizqawdynii@gmail.com', '505425819307000', '0001106070085', '', 'Rizqa Widyani', 'Palembang', '2021-05-12', 'Islam', 'Jl. Jogya No 4015 RT/RW 017/004 Kelurahan Sukajaya Kecamatan Sukarami Kota Palembang\r\n', '1671074205010013', 'S1', '2025-01-07', '5 Bulan', 'Kasir', 'Trainee', '2025-01-07', 'Kontrak', '2025-01-07', '2025-09-20', '', ''),
(46, 'OUTSOURCING', '', '', '', '', '', 'Ilhamsyah', 'Tanjung Marbu', '2005-09-28', 'Islam', 'Desa Tanjung Marbu RT/RW 001/001 Desa Tanjung Marbu Kecamatan Rambutan Kabupaten Banyuasin\r\n', '1607062809050004', 'SMA', '2024-11-01', '7 Bulan', 'OB', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '083857347409', ''),
(50, 'OUTSOURCING2', '', 'rahmatdon321@gmail.com', '', '', '', 'Rahmatdon', 'Palembang', '1997-01-24', 'Islam', 'Jl. Kh. Azhari Lr. Binjai Rt.24 Rw. 07 Kel. Seberang Ulu I Kec. Kertapati\r\n', '1671022001970011', 'SMK', '2019-08-15', '4 Tahun', 'OB', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '081274614819', ''),
(51, 'LEPAS/ HARIAN1', '', '', '', '', '', 'Jakpar Umar Siddiq Hasibuan', 'Palembang ', '2002-12-23', 'Islam', 'Komp. Sembaja Indah KM 11, Alang-Alang Lebar, Kota Palembang\r\n', '1671072312020007', 'SMA', '2024-03-27', '1 Bulan', 'Washing Man', 'LEPAS/ HARIAN', '2025-09-20', 'LEPAS/ HARIAN', '2025-09-20', '2025-09-20', '083853707932', ''),
(52, 'LEPAS/ HARIAN2', '', '', '', '', '', 'Muhammad Bahtiar', 'Palembang', '2003-12-30', 'Islam', 'Lr. Garuda II No. 1510 RT/RW 040/011 Kelurahan Tujuh Ulu Kecamatan Seberang Ulu Satu Kota Palembang\r\n', '1671023012030009', 'SMA', '2025-06-23', '0 Bulan', 'Washing Man', 'LEPAS/ HARIAN', '2025-09-20', 'LEPAS/ HARIAN', '2025-09-20', '2025-09-20', '', ''),
(53, 'OUTSOURCING3', '', '', '', '', '', 'Icha Meriana', 'Lampung', '2003-01-18', 'Islam', 'Jl. Tanah Mas Prumdam Azhar Blok AA8 No. 08, Talang Kelapa\r\n', '1607105801030003', 'SMK', '2024-04-01', '1 Bulan', 'Waiters', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '088287057803', ''),
(54, 'OUTSOURCING4', '', '', '', '', '', 'Danda', 'Palembang', '2004-08-24', 'Islam', 'Jln. Tembok Baru Lr.Tanjung, Palembang\r\n', '1671021208040001', 'SMK', '2025-06-01', '0 Bulan', 'Satpam', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '085783655326', ''),
(55, 'OUTSOURCING5', '', '', '', '', '', 'Agunadi', 'Prabumulih', '1998-08-26', 'Islam', 'Jln. Azhari Komp. Yuka II Rawabebek RT/ RW 038/007 No. 05 Kelurahan Kalidoni Kecamatan Kalidoni Kota Palembang\r\n', '1671102608980003', 'SMA', '2020-08-01', '3 Tahun', 'Satpam', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '082182451710', ''),
(56, 'OUTSOURCING6', '', '', '', '', '', 'Alfany', 'Palembang', '2003-07-03', 'Islam', 'Jl. Lettu Karim Kadir RT.019/RW.003 Kota Palembang\r\n', '1671020307030008', 'SMK', '2025-06-01', '0 Bulan', 'Satpam', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '088287508992', ''),
(57, 'OUTSOURCING7', '', '', '', '', '', 'Adji Suryadi', 'Palembang', '1997-04-17', 'Islam', 'Jln AMD Talang Jambe, Kecamatan Sukarami, Kota Palembang\r\n', '1671071704970011', 'SMA', '2019-05-25', '4 Tahun', 'Satpam', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '089602681310', ''),
(58, 'OUTSOURCING8', '', '', '', '', '', 'Firmansyah', 'Palembang', '1994-11-29', 'Islam', 'Jl. Lettu Karim Kadir, Lrg. Khotib, RT. 009 / RW. 002 Gandus, Kota Palembang\r\n', '1607022811941001', 'SMA', '2023-05-13', '1 Tahun', 'Satpam', 'OUTSOURCING', '2025-09-20', 'OUTSOURCING', '2025-09-20', '2025-09-20', '0895605570161', '');

-- --------------------------------------------------------

--
-- Table structure for table `pasangan`
--

CREATE TABLE `pasangan` (
  `id` int NOT NULL,
  `karyawan_id` int DEFAULT NULL,
  `nama_pasangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tanggal_lahir_pasangan` date DEFAULT NULL,
  `pendidikan_pasangan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tanggal_menikah` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasangan`
--

INSERT INTO `pasangan` (`id`, `karyawan_id`, `nama_pasangan`, `tanggal_lahir_pasangan`, `pendidikan_pasangan`, `tanggal_menikah`) VALUES
(6, 12, 'Ardi Wibowo', '1994-06-04', 'S1', '2022-02-11'),
(7, 10, 'M.Iqbal Romi', '1977-09-21', 'S1', '2008-06-28'),
(8, 11, 'Sari Oktahana', '1982-10-09', 'S1', '2009-01-11'),
(9, 9, 'Muntarsia', '1971-08-04', 'SMK', '1991-04-04'),
(10, 14, 'Yunita Rani Puspita Dewi', '1997-06-20', 'S1', '2024-12-01'),
(11, 15, 'Woni Trian Alamsyah', '1989-04-05', 'S1', '2014-12-08'),
(12, 20, 'Sri Fatmawati', '1981-01-25', 'SMA', '2005-02-06'),
(13, 22, 'Hilda Amiza', '1993-12-10', 'S1', '2019-02-02'),
(14, 27, 'Yuliana', '1991-07-06', 'SMA', '2011-09-25'),
(15, 28, 'Siti Kukuh Salsabila, S. TP', '2001-04-13', 'S1', '2024-06-21'),
(16, 29, 'Sutra Ningrum', '1997-11-06', 'S1', '2021-11-07'),
(17, 33, 'Ratna Sari', '1995-06-14', 'S1', '2019-08-23'),
(18, 34, 'Cindi Maulida', '1999-10-06', 'SMA', '2023-10-21'),
(19, 35, 'M. Fauzan Maulana', '1996-11-15', 'D3', '2024-12-15'),
(20, 36, 'Meilita Wulan Anggraini', '1999-05-06', 'SMA', '2023-02-05'),
(21, 40, 'Vera Puspita', '1990-08-01', 'S1', '2019-09-20'),
(22, 42, 'Alviony zulaikha', '1994-02-15', 'SMA', '2024-06-09'),
(23, 43, 'Syarifah Surya ', '1972-10-11', 'SMA', '1996-05-16'),
(24, 50, 'Lidya Karoma Desa', '1997-10-20', 'S1', '2025-01-05'),
(25, 57, 'Sumini', '1998-02-08', 'SMA', '2019-10-25'),
(26, 58, 'Novita Sari', '1995-11-17', 'S1', '2019-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `nama` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `pasangan`
--
ALTER TABLE `pasangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anak`
--
ALTER TABLE `anak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pasangan`
--
ALTER TABLE `pasangan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anak`
--
ALTER TABLE `anak`
  ADD CONSTRAINT `anak_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pasangan`
--
ALTER TABLE `pasangan`
  ADD CONSTRAINT `pasangan_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
