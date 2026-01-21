-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2026 pada 14.15
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genexmart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cashiers`
--

CREATE TABLE `cashiers` (
  `USER_ID` char(8) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PLACE_OF_BIRTH` varchar(25) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `CONTACT_NUMBER` varchar(14) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `GENDER_ID` char(1) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `UPDATED_AT` date NOT NULL,
  `PASSWORD` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cashiers`
--

INSERT INTO `cashiers` (`USER_ID`, `USERNAME`, `ADDRESS`, `PLACE_OF_BIRTH`, `DATE_OF_BIRTH`, `CONTACT_NUMBER`, `EMAIL`, `GENDER_ID`, `CREATED_AT`, `UPDATED_AT`, `PASSWORD`) VALUES
('12345678', 'papa', 'Jl. Kaligangsa Asri Timur VII No. 33 RT 3 RW 7 Kaligangsa Margadana Tegal 52147', 'Tegal', '1983-08-03', '085742288110', 'n3k4ther.otr@gmail.com', 'L', '2025-11-16', '2025-11-16', 'Indonesia'),
('24090038', 'kasir_3a', 'Jalan Hanoman, Slerok, Kota Tegal, Jawa Tengah', 'Tegal', '2004-11-18', '089605997177', 'syafitraarda@gmail.com', 'L', '2025-11-16', '2025-11-16', 'Indonesia'),
('24090056', 'kasir_3b', 'Gang Seroja 9 , Desa Ujungrusi RT6/1 , Kec Adiwerna Kabupaten Tegal', 'Tegal', '2006-03-29', '082328275457', 'hammamghazi54@gmail.com', 'L', '2025-11-16', '2025-11-16', 'Indonesia'),
('24090131', 'kasir_3d', 'Kajen - Talang - Kab.Tegal', 'Tegal', '2006-04-22', '081542235634', 'muhammad.irhas108@gmail.com', 'L', '2025-11-16', '2025-11-16', 'Indonesia'),
('24090138', 'kasir_3c', 'Jl. Mliwis Gg. Walet No.9', 'Tegal', '2003-08-05', '085962891782', 'dawgsyogs@gmail.com', 'L', '2025-11-16', '2025-11-16', 'Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `CUST_ID` char(8) NOT NULL,
  `CUST_NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PLACE_OF_BIRTH` varchar(25) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `CONTACT_NUMBER` varchar(14) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `GENDER_ID` char(1) NOT NULL,
  `CREATED_AT` date DEFAULT NULL,
  `CREATED_BY` varchar(35) DEFAULT NULL,
  `UPDATED_AT` date DEFAULT NULL,
  `UPDATED_BY` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`CUST_ID`, `CUST_NAME`, `ADDRESS`, `PLACE_OF_BIRTH`, `DATE_OF_BIRTH`, `CONTACT_NUMBER`, `EMAIL`, `GENDER_ID`, `CREATED_AT`, `CREATED_BY`, `UPDATED_AT`, `UPDATED_BY`) VALUES
('-NoName-', '-Nama Tidak Terdaftar-', '-NoName-', '-NoName-', '1945-08-17', '-NoName-', 'papa', 'L', '2025-11-16', 'papa', '2025-11-16', 'TAMU'),
('12345678', 'Taufiq Abidin', 'J. Kaligangsa Asri Timur VIII No 33 RT 3 RW 7 Kel. Kaligangsa Kec. Margadana Kota Tegal 52147', 'Tegal', '1983-08-03', '085742288110', 'taufiq.abidin@poltektegal.ac.id', 'L', '2025-11-16', 'taufiq.abidin@poltektegal.ac.id', '2025-11-16', 'TAMU'),
('23090100', 'SUFI AHMAD TIARA FIGAR', 'DESA SIGAMBIR KEC BREBES KAB BREBES RTO1 RW01', 'BREBES', '2205-05-11', '091990343964', 'SUFIAKHMAD3964@GMAIL.COM', 'L', '2025-11-16', '', '2025-11-16', ''),
('23090128', 'Toriq Azizurrochman', 'jln kh abdurrohman, rt 11/rw 06, desa sidoharjo, kecamatan suradadi, kabupaten tegal, 52182', 'Tegal', '2004-11-10', '089504094094', 'toriqsmpll31@gmail.com', 'L', '2025-11-16', 'toriqsmpll31@gmail.com', '2025-11-16', 'TAMU'),
('24090001', 'Zahra Meidinah Tahsya', 'Jln.sunan kudus, kaligangsa kulon, brebes', 'Brebes', '2006-05-24', '089673169299', 'zahrameidinah05@gmail.com', 'P', '2025-11-16', 'zahrameidinah05@gmail.com', '2025-11-16', 'TAMU'),
('24090002', 'Mohammad Fatih Mubarok', 'JL. Samratulangi Pasar Batang Brebes no 50', 'Brebes', '2006-08-31', '088227682867', 'mubarokfatih562@gmail.com', 'L', '2025-11-16', 'mubarokfatih562@gmail.com', '2025-11-16', 'TAMU'),
('24090003', 'ANDRA SETYA RAMADHANI', 'Jl.kapten sudibyo no 137B', 'Tegal', '2005-10-16', '088220007296', 'andrasetya856@gmail.com', 'L', '2025-11-16', 'andrasetya856@gmail.com', '2025-11-16', 'TAMU'),
('24090004', 'Adi Salam Ramdani', 'Jl Raya Tembok Lor, Desa Tembok Lor RT 03/RW 13, Kec. Adiwerna, Kab. Tegal', 'Tegal', '2005-10-05', '089666861497', 'adisalamramdani05@gmail.com', 'L', '2025-11-16', 'adisalamramdani05@gmail.com', '2025-11-16', 'TAMU'),
('24090006', 'Akhmad Ridwan Ariyanto', 'Perum Kaladawa', 'Pemalang', '2025-06-25', '085802874829', 'akhmadridwan357@gmail.com', 'L', '2025-11-16', 'akhmadridwan357@gmail.com', '2025-11-16', 'TAMU'),
('24090008', 'Andira Finna Nareswari', 'Jl Dr Wahidin, Saditan Brebes', 'Brebes', '2005-12-15', '08816776347', 'andirafinnanareswari@gmail.com', 'P', '2025-11-16', 'andirafinnanareswari@gmail.com', '2025-11-16', 'TAMU'),
('24090009', 'EKA DZAKWAN VENARINDRA', 'Jl. Teuku Cik Ditiro', 'Brebes', '2005-09-10', '081215262823', 'ekadzakwan59@gmail.com', 'L', '2025-11-16', 'ekadzakwan59@gmail.com', '2025-11-16', 'TAMU'),
('24090010', 'inays imaratu eliza', 'Korea', 'Seoul', '2005-08-02', '085143219133', 'inaysssimaratu@gmail.com', 'P', '2025-11-16', 'inaysssimaratu@gmail.com', '2025-11-16', 'TAMU'),
('24090011', 'Noval Oktamuza', 'Jl. Semanggi Raya No. 120, Mejasem Barat, Kramat, Kab.Tegal', 'Tegal', '1999-10-14', '082124928879', 'oktamuzanoval@gmail.com', 'L', '2025-11-16', 'oktamuzanoval@gmail.com', '2025-11-16', 'oktamuzanoval@gmail.com'),
('24090012', 'Raditya Wildan Assyaif', 'Kecamatan Adiwerna, Kabupaten Tegal', 'Tegal', '2006-08-08', '085225384588', 'radityawildan33@gmail.com', 'L', '2025-11-16', 'radityawildan33@gmail.com', '2025-11-16', 'TAMU'),
('24090013', 'MUHAMAD FATHUL HUDA', 'JL.WERKUDORO NO 41', 'TEGAL', '2006-05-23', '089619118295', 'muhfathulhuda24090013@gmail.com', 'L', '2025-11-16', 'muhfathulhuda24090013@gmail.com', '2025-11-16', 'TAMU'),
('24090014', 'Vina Maulidah', 'Jl.Kuncung RT04 RW06 Wanatawang Yamansari Kec. Lebaksiu Kab. Tegal', 'Tegal', '2006-03-27', '085866233452', 'vinamaulidah27@gmail.com', 'P', '2025-11-16', 'vinamaulidah27@gmail.com', '2025-11-16', 'TAMU'),
('24090015', 'Naelanisa Aprilia Khumaedi', 'Tegal', 'Tegal', '2006-04-26', '087835288533', 'naelanisa45@gmail.com', 'P', '2025-11-16', 'naelanisa45@gmail.com', '2025-11-16', 'TAMU'),
('24090016', 'Dimas Sahputra', 'Ds. Bongkok Kec. Kramat Kab. Tegal', 'Tegal', '2006-08-26', '087834370388', 'sahputradimas268@gmail.com', 'L', '2025-11-16', 'sahputradimas268@gmail.com', '2025-11-16', 'TAMU'),
('24090017', 'Nayla zalfa zahiyah', 'Jl. Anggrek Ds. Banjaranyar', 'TEGAL', '2005-12-23', '085292802447', 'naylazalfa03@gmail.com', 'P', '2025-11-16', 'naylazalfa03@gmail.com', '2025-11-16', 'TAMU'),
('24090018', 'Nissa Intan Nurani', 'Tegal', 'Tegal', '2005-05-21', '083820931296', 'intanissaa21@gmail.com', 'P', '2025-11-16', 'intanissaa21@gmail.com', '2025-11-16', 'TAMU'),
('24090020', 'm faizal faiz', 'kalkul, margadana, rt04rw05', 'tegal', '2010-10-07', '085870004152', 'faizalfaiz645@gmail.com', 'L', '2025-11-16', 'faizalfaiz645@gmail.com', '2025-11-16', 'TAMU'),
('24090022', 'Muchammad Machyanut Tuko', 'Jl.Mejabung', 'Tegal', '2010-04-06', '085641066079', 'muchammadmachyanuttuko@gmail.com', 'L', '2025-11-16', 'muchammadmachyanuttuko@gmail.com', '2025-11-16', 'TAMU'),
('24090023', 'Tanwirul Khasanah', 'Jl. Kedung SIlami RT 23 RW 06 Kel. Pagiyanten Kec. Adiwerna Kab. Tegal 52194', 'Tegal', '2004-09-11', '0895385900007', 'tanwirulkhasanah@gmail.com', 'P', '2025-11-16', 'tanwirulkhasanah@gmail.com', '2025-11-16', 'TAMU'),
('24090024', 'Indah Fitriyani', 'Jl. Jawa', 'Tegal', '2025-10-29', '089604072496', 'indhftryni23@gmail.com', 'P', '2025-11-16', 'indhftryni23@gmail.com', '2025-11-16', 'TAMU'),
('24090025', 'Riski Ramadhan', 'Jl.Kleben Desa Gembong Kulon Rt01/Rw01', 'Tegal', '2005-10-30', '0895379178780', 'rizkiramadhanrizki36484@gmail.com', 'L', '2025-11-16', 'rizkiramadhanrizki36484@gmail.com', '2025-11-16', 'TAMU'),
('24090026', 'Devita Anggraeni', 'Desa Purwahamba, Kecamatan Suradadi, Kabupaten Tegal', 'Tegal', '2006-06-23', '085225302710', 'devitanggra23@gmail.com', 'P', '2025-11-16', 'devitanggra23@gmail.com', '2025-11-16', 'TAMU'),
('24090027', 'Pranada Al Fath Refandra', 'Jln Karimunjawa', 'Kota Tegal', '2006-07-12', '085225756709', 'pranadaalfath@gmail.com', 'L', '2025-11-16', 'pranadaalfath@gmail.com', '2025-11-16', 'TAMU'),
('24090028', 'Dwi Riski Ariyanto', 'pekauman kulon rt3/3', 'tegal', '2010-09-23', '0895606401740', 'dwiriski2209@gmail.com', 'L', '2025-11-16', 'dwiriski2209@gmail.com', '2025-11-16', 'TAMU'),
('24090029', 'Lazuardi Augian Pratama', 'Griya Satria Dampyak Blok I No.19, Dampyak Lor, Dampyak, Tegal', 'Pekalongan', '2005-08-09', '087740297720', 'notzuardboah@gmail.com', 'L', '2025-11-16', 'notzuardboah@gmail.com', '2025-11-16', 'TAMU'),
('24090030', 'Hanif Azhar', 'Brebes, Desa Pesantunan, Jl. Teuku Cik Ditiro', 'Brebes', '2005-06-01', '087711865157', 'hanifazharre@gmail.com', 'L', '2025-11-16', 'hanifazharre@gmail.com', '2025-11-16', 'TAMU'),
('24090032', 'Nagata Darmawan', 'Jln.Gatotkaca Rt10/04,Gumayun,Dukuhwaru Kab.Teagl', 'Tegal', '2004-11-09', '0895384246249', 'nagata.2140@gmail.com', 'L', '2025-11-16', 'nagata.2140@gmail.com', '2025-11-16', 'TAMU'),
('24090033', 'Rafi Faiz Amalta', 'Slawi kulon Kecamatan Slawi Kabupaten Tegal', 'Tegal', '2006-03-21', '0895378169023', 'rafifaiz381@gmail.com', 'L', '2025-11-16', 'rafifaiz381@gmail.com', '2025-11-16', 'TAMU'),
('24090034', 'Angga dwi resky maulana', 'babakan', 'tegal', '2010-11-11', '089619636307', 'dwi789682@gmail.com', 'L', '2025-11-16', 'dwi789682@gmail.com', '2025-11-16', 'dwi789682@gmail.com'),
('24090035', 'Fatimatuz Zahro', 'Desa Pengabean, Kec. Dukuhturi, Kab. Tegal', 'Tegal', '2005-08-29', '085712362447', 'f56446473@gmail.com', 'P', '2025-11-16', 'f56446473@gmail.com', '2025-11-16', 'TAMU'),
('24090037', 'Ain Jelita Ikhwati', 'Jalan Slamet Riyadi, Gang Nangka, Cabawan, Margadana, Kota Tegal, Jawa Tengah, 52147', 'Bogor', '2006-03-02', '087872274726', 'ainjelitaikh@gmail.com', 'P', '2025-11-16', 'ainjelitaikh@gmail.com', '2025-11-16', 'TAMU'),
('24090038', 'Muhammad Arda Syafitra', 'Jalan Hanoman, Slerok, Kota Tegal, Jawa Tengah', 'Tegal', '2004-11-18', '089605997177', 'syafitraarda@gmail.com', 'L', '2025-11-16', 'syafitraarda@gmail.com', '2025-11-16', 'TAMU'),
('24090039', 'Intan Tri Hartati', 'Jl H Abdul Ghoni, RT/RW 004/003, Kel. Pesurungan Kidul', 'Tegal', '2007-01-27', '082211199390', 'intantri2006@gmail.com', 'P', '2025-11-16', 'intantri2006@gmail.com', '2025-11-16', 'TAMU'),
('24090040', 'Mukhamad Adam Mulabib', 'kec.Talang, kab.Tegal', 'Tegal', '2006-02-08', '081325321609', 'adammulabib03@gmail.com', 'L', '2025-11-16', 'adammulabib03@gmail.com', '2025-11-16', 'TAMU'),
('24090042', 'Bagus satrio mahardika', 'kecamatan Taman Kabupaten Pemalang Provinsi Jawa Tengah', 'Pemalang', '2005-08-14', '085640244383', 'bagussatriomahardika78@gmail.com', 'L', '2025-11-16', 'bagussatriomahardika78@gmail.com', '2025-11-16', 'TAMU'),
('24090043', 'Salsabilla Ayu Rizkia', 'Jalan masjid, Belakang toko nani,Tarub,Kab.Tegal,Jawa Tengah', 'TEGAL', '2007-01-14', '082123796275', 'salsabillaayu147@gmail.com', 'P', '2025-11-16', 'salsabillaayu147@gmail.com', '2025-11-16', 'TAMU'),
('24090045', 'Muhamad Ilyas', 'Desa Gumalar RT 05 RW 01 Kec.Adiwerna Kab.Tegal', 'Tegal', '2006-04-28', '089524358844', 'ilyasgumalar@gmail.com', 'L', '2025-11-16', 'ilyasgumalar@gmail.com', '2025-11-16', 'TAMU'),
('24090050', 'Muhamad Safrudin', 'Jalan Sangir No.2', 'Tegal', '2005-02-14', '082313089094', 'mhmdsfrdn1521@gmail.com', 'L', '2025-11-16', 'mhmdsfrdn1521@gmail.com', '2025-11-16', 'TAMU'),
('24090052', 'Maula adiba mufadol', 'jl kyai maja No 03', 'tegal', '2006-05-11', '089638829911', 'adibamufadhol@gmail.com', 'L', '2025-11-16', 'adibamufadhol@gmail.com', '2025-11-16', 'TAMU'),
('24090055', 'Giska Aura Muhamad Prasetyo', 'JL ABDUL SYUKUR PERUMAHAN JAYA KUSUMA BLOK F NO 6', 'Tegal', '2006-01-15', '087822630621', 'ruokrawl@gmail.com', 'L', '2025-11-16', 'ruokrawl@gmail.com', '2025-11-16', 'TAMU'),
('24090056', 'Muhammad Hammam Ghazi', 'Gang Seroja 9 , Desa Ujungrusi RT6/1 , Kec Adiwerna Kabupaten Tegal', 'Tegal', '2006-03-29', '082328275457', 'hammamghazi54@gmail.com', 'L', '2025-11-16', 'hammamghazi54@gmail.com', '2025-11-16', 'TAMU'),
('24090057', 'Pasya Pratama Widianto', 'Jl. Lele', 'Tegal', '2010-10-21', '082226362081', 'pasyapratama209@gmail.com', 'L', '2025-11-16', 'pasyapratama209@gmail.com', '2025-11-16', 'TAMU'),
('24090058', 'Nur Ivan Endrarafif', 'Desa Pegirikan', 'Tegal', '2005-12-01', '085712245528', 'nurivan2005@gmail.com', 'L', '2025-11-16', 'nurivan2005@gmail.com', '2025-11-16', 'TAMU'),
('24090060', 'AKBAR RIZQI AINUL YAQIN', 'Jl.Dewi Sartika', 'Brebes', '2006-03-06', '082313054691', 'akbar.rizqi.ay@gmail.com', 'L', '2025-11-16', 'akbar.rizqi.ay@gmail.com', '2025-11-16', 'TAMU'),
('24090061', 'Muhammad Azfa Rizanta', 'Jl. Pala barat 1 blok B No. 12 RT02 RW09 Kel. Mejasem Barat Kec. kramat Kab.Tegal', 'Tegal', '2010-01-25', '087865168055', 'muhammadazfa119@gmail.com', 'L', '2025-11-16', 'muhammadazfa119@gmail.com', '2025-11-16', 'TAMU'),
('24090062', 'BINAR MAULLAZAQI', 'JL.Sultan Agung no.88A', 'Brebes', '2006-04-29', '085280945349', 'binarzzzzz@gmail.com', 'L', '2025-11-16', 'binarzzzzz@gmail.com', '2025-11-16', 'TAMU'),
('24090063', 'Yafi\' Abhinaya', 'Perumahan Griya Santika Blok H.10', 'Tegal', '2005-12-06', '082132932733', 'yafiabny110@gmail.com', 'L', '2025-11-16', 'yafiabny110@gmail.com', '2025-11-16', 'TAMU'),
('24090064', 'Muhammad Zaim El Yafi', 'Jl. Ma\'ad 57-33, Balapulang Wetan, Kec. Balapulang, Kabupaten Tegal, Jawa Tengah 52464', 'Tegal', '2007-02-24', '081546161160', 'zaimelyafi24@gmail.com', 'L', '2025-11-16', 'zaimelyafi24@gmail.com', '2025-11-16', 'TAMU'),
('24090065', 'Desta Putra Habibie', 'Desa tonggara kecamatan kedungbanteng kabupaten tegal', 'Bekasi', '2005-12-10', '082220987443', 'destahabibi244@gmail.com', 'L', '2025-11-16', 'destahabibi244@gmail.com', '2025-11-16', 'TAMU'),
('24090066', 'Gusti Rizqi Putra Hanif', 'Brebes,Bulakamba,Jalan Kauman Kluwut', 'Brebes', '2006-09-28', '082326261094', 'zekeygemers@gmail.com', 'L', '2025-11-16', 'zekeygemers@gmail.com', '2025-11-16', 'TAMU'),
('24090067', 'YUSUF', 'Durensawit rt 01 rw 03 kec.lebaksiu', 'Tegal', '2005-12-28', '0895321639531', 'yusuf281225@gmail.com', 'L', '2025-11-16', 'yusuf281225@gmail.com', '2025-11-16', 'TAMU'),
('24090068', 'Bagus Prasetyo', 'Jl.Cemara No 48 Griya Praja Pasar Batang Brebes', 'Brebes', '2005-06-10', '085225905320', '10bagusprasetyo@gmail.com', 'L', '2025-11-16', '10bagusprasetyo@gmail.com', '2025-11-16', 'TAMU'),
('24090069', 'Mohamad Naufal Arizal', 'Perum MUTIARA SALBI JL Klampis Barat Blok A 21, Karang Sembung Lor, Karangsembung, Kec. Songgom, Kab', 'Bekasi', '2006-10-18', '089697408401', 'naufalarizal257@gmail.com', 'L', '2025-11-16', 'naufalarizal257@gmail.com', '2025-11-16', 'TAMU'),
('24090070', 'Ramdani Ardhin Pasha', 'Perumahan Mutiara Vantavin 1, Desa Pacul, Kec.Talang, Kab.Tegal', 'Tegal', '2006-10-11', '087719028463', 'ardhinpasha@gmail.com', 'L', '2025-11-16', 'ardhinpasha@gmail.com', '2025-11-16', 'TAMU'),
('24090071', 'Adies Ardiansyah', 'Desa KUTA RT03/RW04 KEC.BANTARBOLANG KAB. PEMALANG', 'SURABAYA', '2006-05-29', '081217627226', 'adiesadiansah6@gmail.com', 'L', '2025-11-16', 'adiesadiansah6@gmail.com', '2025-11-16', 'TAMU'),
('24090072', 'Alief Satrio', 'Kab. Pemalang, Kec. Moga, Desa Moga Jalan Cempaka Rt001/Rw006', 'Pemalang', '2005-06-28', '085712015809', 'alifsatrio757@gmail.com', 'L', '2025-11-16', 'alifsatrio757@gmail.com', '2025-11-16', 'TAMU'),
('24090073', 'Naiya Resda Novalia', 'Desa Dukuhjati Wetan RT09/RW05, Kec.Kedungbanteng, Kab.Tegal', 'Tegal', '2005-11-26', '085802764729', 'naiyaresda@gmail.com', 'P', '2025-11-16', 'naiyaresda@gmail.com', '2025-11-16', 'TAMU'),
('24090074', 'Faizal Isman', 'Jl Abimanyu Gg 5 Slerok, Tegal Timur, Kota Tegal', 'Tegal', '2006-02-08', '082324913246', 'isman.faizal2006@gmail.com', 'L', '2025-11-16', 'isman.faizal2006@gmail.com', '2025-11-16', 'TAMU'),
('24090075', 'Ferdi Saputra', 'Desa Bulakwaru RT 07/RW 03', 'TEGAL', '2005-12-20', '085328901825', 'sptraferdi413@gmail.com', 'L', '2025-11-16', 'sptraferdi413@gmail.com', '2025-11-16', 'TAMU'),
('24090076', 'Ezra Tito Saleh', 'jln.mawar Ds.Mindaka rt06/01, Kec.Tarub, Kab. Tegal', 'Jakarta', '2006-02-08', '085640405943', 'ezratitosaleh8@gmail.com', 'L', '2025-11-16', 'ezratitosaleh8@gmail.com', '2025-11-16', 'TAMU'),
('24090077', 'Arya Ahmad Zakaria', 'harjosarilor,adiwerna', 'kuningan', '2005-04-04', '0805320990090', 'aryazakaria445@gmail.com', 'L', '2025-11-16', 'aryazakaria445@gmail.com', '2025-11-16', 'TAMU'),
('24090078', 'Daffa Amri Hizbullah', 'Jl.candi moncol rt02/02. Kec.dukuhturi kab.tegal', 'Tegal', '2005-09-03', '085326654926', 'chuloappa@gmail.com', 'L', '2025-11-16', 'chuloappa@gmail.com', '2025-11-16', 'TAMU'),
('24090081', 'Galuh Gunawan', 'Desa Pucangluwuk RT 04 RW 01 Kec.Bojong Kab.Tegal', 'Tegal', '2006-05-18', '088232405191', 'galuhgunawan914@gmail.com', 'L', '2025-11-16', 'galuhgunawan914@gmail.com', '2025-11-16', 'TAMU'),
('24090082', 'Najwa Giar Eka Azzahra', 'Pgerbarang Rt 01 Rw 02', 'TEGAL', '2005-07-07', '081917215136', 'najwagiar@gmail.com', 'P', '2025-11-16', 'najwagiar@gmail.com', '2025-11-16', 'TAMU'),
('24090083', 'Syifa Khaerunisa Nabila', 'Jl.Jendral Sudirman Rt 02 Rw 06 Slawi Kulon', 'Tegal', '2006-10-11', '087761047814', 'syifanabila183@gmail.com', 'P', '2025-11-16', 'syifanabila183@gmail.com', '2025-11-16', 'TAMU'),
('24090084', 'Imam Arif Fauzan', 'Desa Maribaya, Kecamatan Kramat Kabupaten Tegal', 'Tegal', '2007-01-26', '089652848630', 'fauzanimam955@gmail.com', 'L', '2025-11-16', 'fauzanimam955@gmail.com', '2025-11-16', 'TAMU'),
('24090085', 'mahmudah amalia putri', 'JL.TEUKU CIKDITIRO, PESANTUNAN RT 04/02-KAB .BREBES', 'Brebes', '2005-12-25', '085894091994', 'idahmahmudah504@gmail.com', 'P', '2025-11-16', 'idahmahmudah504@gmail.com', '2025-11-16', 'TAMU'),
('24090086', 'Khurrotul Aeny', 'Desa Mangunsaren Kec.Tarub Kab.Tegal', 'Tegal', '2005-12-30', '085702245923', 'qurrotulaeni281@gmail.com', 'P', '2025-11-16', 'qurrotulaeni281@gmail.com', '2025-11-16', 'TAMU'),
('24090087', 'Yusuf Maulana Syifa', 'Jl Ababil Rt 07 Rw 01 Randugunting, Tegal Selatan Kota Tegal', 'Brebes', '2004-10-25', '085710872795', 'yusufmaulanasyifa25@gmail.com', 'L', '2025-11-16', 'yusufmaulanasyifa25@gmail.com', '2025-11-16', 'TAMU'),
('24090088', 'Fitria Ramadhani', 'Ds.Kebonagung rt.09/rw.02, kec. Jatibarang , kab. Brebes, Prov. Jawa Tengah, Indonesia', 'Wosu', '2005-11-01', '0882006057034', 'dindafitria283@gmail.com', 'P', '2025-11-16', 'dindafitria283@gmail.com', '2025-11-16', 'TAMU'),
('24090092', 'Almas Jaufilael Syarofina', 'Jl.Raya Timur Pagerbarang Kec. Pagerbarang, Kab.Tegal', 'Tegal', '2005-10-25', '082137289076', 'almassyarfina@gmail.com', 'P', '2025-11-16', 'almassyarfina@gmail.com', '2025-11-16', 'TAMU'),
('24090093', 'Fajar Abdul Aziz', 'Dinuk, RT 02/02, Kecamatan Kramat, Kabupaten Tegal', 'Tegal', '2006-08-07', '083899216097', 'fajarabdulaziz259@gmail.com', 'L', '2025-11-16', 'fajarabdulaziz259@gmail.com', '2025-11-16', 'TAMU'),
('24090094', 'Alif Avicena Alfitrah', 'Desa Tembokluwung, Kec. Adiwerna, Kab. Tegal', 'Tegal', '2007-07-29', '085290447862', 'alifilhamicena@gmail.com', 'L', '2025-11-16', 'alifilhamicena@gmail.com', '2025-11-16', 'TAMU'),
('24090095', 'Rafa Intinanzah Wibisono', 'Desa Bulakamba, Kec.Bulakamba, Kab.Brebes', 'Brebes', '2006-05-31', '085279233725', 'rafaintinanzah31@gmail.com', 'L', '2025-11-16', 'rafaintinanzah31@gmail.com', '2025-11-16', 'TAMU'),
('24090096', 'Muhammad Afin Aditya', 'Ds. Tembok Lor 09/02, Kec. Adiwerna, Kab. Tegal', 'Tegal', '2004-06-16', '62882007730579', 'akungameku1606@gmail.com', 'L', '2025-11-16', 'akungameku1606@gmail.com', '2025-11-16', 'TAMU'),
('24090097', 'Nur Laela Suci Safitri', 'Desa Demangharjo rt/rw 02/01 Kecamatan Warureja Kabupaten Tegal', 'Tegal', '2006-10-23', '0882008254161', 'nurlaelasucisafitri@gmail.com', 'P', '2025-11-16', 'nurlaelasucisafitri@gmail.com', '2025-11-16', 'TAMU'),
('24090098', 'Siti Triyanah', 'Tarub', 'Tegal', '2006-09-06', '08818658120', 'triyanah066@gmail.com', 'P', '2025-11-16', 'triyanah066@gmail.com', '2025-11-16', 'TAMU'),
('24090099', 'Rhegard Putra Davinto', 'Perumahan Griya Tiara Arum blok S12 rt2/rw5,kagok,slawi,Kab Tegal', 'Magetan', '2006-03-27', '085747598070', 'rhegaraa5x@gmail.com', 'L', '2025-11-16', 'rhegaraa5x@gmail.com', '2025-11-16', 'TAMU'),
('24090100', 'Vaena Miftakhur Risko', 'Suradadi', 'Tegal', '2006-09-02', '081233606302', 'vaenamiftakhurrisko@gmail.com', 'P', '2025-11-16', 'vaenamiftakhurrisko@gmail.com', '2025-11-16', 'TAMU'),
('24090101', 'Amirul Madjid Ibrahim', 'JL Temanggung. Gg Bawal 4 RT.02/RW.04 NO 74. Kelurahan Margadana', 'Purbalingga', '2005-10-06', '085725362878', 'mantapkaliboos@gmail.com', 'L', '2025-11-16', 'mantapkaliboos@gmail.com', '2025-11-16', 'TAMU'),
('24090102', 'Mustofa Achmad', 'Tegal Selatan,Debong kidul', 'Tegal', '2004-09-17', '081977723991', 'mustofaahmad200319@gmail.com', 'L', '2025-11-16', 'mustofaahmad200319@gmail.com', '2025-11-16', 'TAMU'),
('24090103', 'Happy Citra Lestari', 'Randugunting', 'Tegal', '2006-07-06', '085640254423', 'happycitralestari0@gmail.com', 'P', '2025-11-16', 'happycitralestari0@gmail.com', '2025-11-16', 'TAMU'),
('24090104', 'Muhammad Abdan Annur', 'Jl. Kenanga Selatan No. 24', 'Tegal', '2005-10-26', '085229110565', 'abdan.annur123@gmail.com', 'L', '2025-11-16', 'abdan.annur123@gmail.com', '2025-11-16', 'TAMU'),
('24090105', 'Yusuf Yudha Ramadhani', 'Jalan Werkudoro Gg.Kalimasada No.7 RT 04.RW.05 Kel Slerok Kec.Tegal Timur Kota Tegal', 'Tegal', '2012-10-10', '087711126798', 'siktinhero@gmail.com', 'L', '2025-11-16', 'siktinhero@gmail.com', '2025-11-16', 'TAMU'),
('24090106', 'Ade Anang Kurniawan', 'Ds.Getaskerep kec. Talang Kab. Tegal', 'Tegal', '2006-06-11', '08819725510', 'adeanangkurniawan@gmail.com', 'L', '2025-11-16', 'adeanangkurniawan@gmail.com', '2025-11-16', 'TAMU'),
('24090107', 'Irfan Maulana Saputra', 'Ds.Kemuning Dk.Bulu rt.03 rw.04', 'Serang', '2003-08-09', '081945354196', 'irfanmaulanasaputra19@gmail.com', 'L', '2025-11-16', 'irfanmaulanasaputra19@gmail.com', '2025-11-16', 'TAMU'),
('24090108', 'Muhammad Satria Prayoga', 'Desa Pedagangan Rt 01/01 Kecamatan Dukuhwaru', 'Tegal', '2006-05-05', '085943410458', 'strprayoga8@gmail.com', 'L', '2025-11-16', 'strprayoga8@gmail.com', '2025-11-16', 'TAMU'),
('24090109', 'Akhmad Faiq Mursyidi', 'jl. jalak janegara jatibarang brebes', 'Brebes', '2010-05-17', '082323816404', 'akhmadfaiqm@gmail.com', 'L', '2025-11-16', 'akhmadfaiqm@gmail.com', '2025-11-16', 'TAMU'),
('24090110', 'Muhammad Lutfi Syauqi Annafal', 'desa kalimati, kec adiwerna, kab.tegal', 'Tegal', '2006-06-28', '085879504442', 'nafallutfi123@gmail.com', 'L', '2025-11-16', 'nafallutfi123@gmail.com', '2025-11-16', 'TAMU'),
('24090111', 'Denta Adi Ramadhani', 'Jl. Teuku Cik Ditiro No. 3', 'brebes', '2003-11-04', '089658059970', 'fantasyjr6@gmail.com', 'L', '2025-11-16', 'fantasyjr6@gmail.com', '2025-11-16', 'TAMU'),
('24090112', 'dwiki raditya mubarok', 'Ujungrusi, Jln kemuning 2, no 15 Rt10/01, Adiwerna, Kab.Tegal, Jawa Tengah', 'Tegal', '2006-11-04', '0882-3867-5733', 'dwikiraditya207@gmail.com', 'L', '2025-11-16', 'dwikiraditya207@gmail.com', '2025-11-16', 'TAMU'),
('24090113', 'Dhiyaulhaq Fakhri Mohammad', 'RT 11 RW 03 Jalan bedug Desa Pegirikan Kecamatan Talang Kabupaten Tegal', 'Tegal', '2006-08-11', '085640724421', 'dhiyaulhaqfakhrimohammad@gmail.com', 'L', '2025-11-16', 'dhiyaulhaqfakhrimohammad@gmail.com', '2025-11-16', 'TAMU'),
('24090114', 'Farih Amrullah \'Aly', 'Jl. Anggrek 1 RT.04 RW 03 Kel.Karangasem Kec.Margasari Kab.Tegal', 'Tegal', '2006-12-27', '0895376070070', 'farihaly11@gmail.com', 'L', '2025-11-16', 'farihaly11@gmail.com', '2025-11-16', 'TAMU'),
('24090115', 'Moh Kahfi Kurniawan', 'Jl Srigunting No 15 A, RT 07, RW 08, Kelurahan Randugunting, Kecamatan Tegal Selatan', 'Tegal', '2006-03-25', '082226072504', 'kahfikurniawan06@gmail.com', 'L', '2025-11-16', 'kahfikurniawan06@gmail.com', '2025-11-16', 'TAMU'),
('24090116', 'Ayu Seftiani', 'Desa Lebeteng Kecamatan Tarub', 'Tegal', '2005-04-09', '081901094818', 'ayu32194@gmail.com', 'P', '2025-11-16', 'ayu32194@gmail.com', '2025-11-16', 'TAMU'),
('24090117', 'SYAMSUL HIDAYATULLOH', 'Sikancil, Slatri, Kec. Larangan, Kabupaten Brebes, Jawa Tengah', 'BREBES', '2005-05-23', '085786947364', 'samsulhidayah384@gmail.com', 'L', '2025-11-16', 'samsulhidayah384@gmail.com', '2025-11-16', 'TAMU'),
('24090118', 'Halim Wiko Abiyunna', 'Jalan gelatik Rt2 Rw2, Desa Pakulaut, Kec Margasari, Tegal, Jateng', 'Tegal', '2005-12-05', '085876401764', 'halimabiyuna@gmail.com', 'L', '2025-11-16', 'halimabiyuna@gmail.com', '2025-11-16', 'TAMU'),
('24090119', 'Veby Rokhmatul Ambiya', 'Jawa tengah,Tegal,Bumijawa', 'Tegal', '2004-02-09', '085643315371', 'vebyambiya@gmail.com', 'L', '2025-11-16', 'vebyambiya@gmail.com', '2025-11-16', 'TAMU'),
('24090120', 'Tesa dian saputri', 'desa penarukan rt 18rw04 kec adiwerna kab tegal', 'TEGAL', '2006-02-28', '0895704328732', 'tesadiansaputri@gmail.com', 'P', '2025-11-16', 'tesadiansaputri@gmail.com', '2025-11-16', 'TAMU'),
('24090122', 'Aurelio Deca Setyawan', 'Desa. Kesadikan, Kec. Tarub, Kab. Tegal', 'Tegal', '2004-05-19', '085801027103', 'aureliodeca1955@gmail.com', 'L', '2025-11-16', 'aureliodeca1955@gmail.com', '2025-11-16', 'TAMU'),
('24090123', 'bagus prasojo', 'Desa Pagongan kec dukuhturi kab.Tegal', 'Tegal', '2006-10-04', '087725345162', 'bagusprasojo666@gmail.com', 'L', '2025-11-16', 'bagusprasojo666@gmail.com', '2025-11-16', 'TAMU'),
('24090124', 'Febryan Valentyo', 'Brebes', 'Brebes', '2004-02-14', '082313585851', 'febryanvalentyo234@gmail.com', 'L', '2025-11-16', '', '2025-11-16', ''),
('24090126', 'Maulidya Aulia', 'Jl.Dukuhwungu', 'Tegal', '2006-04-06', '0895384224195', 'maulidyaaulia64@gmail.com', 'P', '2025-11-16', 'maulidyaaulia64@gmail.com', '2025-11-16', 'TAMU'),
('24090129', 'Sarah Nur Amalia', 'Adiwerna Kab.Tegal Jawa Tengah', 'Tegal', '2006-06-03', '082313530647', 'sarahnuramaliaa@gmail.com', 'P', '2025-11-16', 'sarahnuramaliaa@gmail.com', '2025-11-16', 'TAMU'),
('24090130', 'Lisza Indana Zulfa', 'Ds. Warureja Kec. Warureja Kab. Tegal', 'Tegal', '2005-10-31', '0895378146118', 'liszaindana11@gmail.com', 'P', '2025-11-16', 'n3k4ther.otr@gmail.com', '2025-11-16', 'TAMU'),
('24090131', 'Muhammad Irhash syahid', 'Kajen - Talang - Kab.Tegal', 'Tegal', '2006-04-22', '081542235634', 'muhammad.irhas108@gmail.com', 'L', '2025-11-16', 'muhammad.irhas108@gmail.com', '2025-11-16', 'TAMU'),
('24090132', 'Muzaqi Nur Arifin', 'Jl. Taman Siswa, Gg. Saditan Indah 4, No.10', 'Kabupaten Brebes', '2005-04-02', '087845770609', 'muzaqi.nurar4@gmail.com', 'L', '2025-11-16', 'muzaqi.nurar4@gmail.com', '2025-11-16', 'TAMU'),
('24090133', 'Muhammad fajar Ramadhan', 'Desa karang Mulya rt05 rw01 kec Suradadi kab Tegal', 'Tegal', '2006-10-15', '081567677073', 'fajartegal355@gmail.com', 'L', '2025-11-16', 'fajartegal355@gmail.com', '2025-11-16', 'TAMU'),
('24090134', 'Moh Fauzi Hasan Bix', 'JL.kh ahmad dahlan RT 05 RW 12 Desa. Pasar Batang Kec. Brebes', 'BREBES', '2003-05-21', '085293738960', 'fauzihasanbix174@gmail.com', 'L', '2025-11-16', 'fauzihasanbix174@gmail.com', '2025-11-16', 'TAMU'),
('24090135', 'Alfian farros alfarisi', 'Jl.anoa, rt 02 rw 04, desa trayeman, kecamatan Slawi, kabupaten tegal', 'Slawi', '2005-11-04', '082137284883', 'alfarisibrata@gmail.com', 'L', '2025-11-16', 'alfarisibrata@gmail.com', '2025-11-16', 'TAMU'),
('24090136', 'julian tri arfandi', 'pagedangan,adiwerna,kab.tegal', 'tegal', '2005-07-28', '088985024204', 'arfand628@gmail.com', 'L', '2025-11-16', 'arfand628@gmail.com', '2025-11-16', 'TAMU'),
('24090137', 'Muhammad Huzaifah Annazif', 'Jl. Perintis kemerdekaan kel slerok kec Tegal Timur', 'Tegal', '2002-10-28', '087846008915', 'hudzaifah2903@gmail.com', 'L', '2025-11-16', 'hudzaifah2903@gmail.com', '2025-11-16', 'TAMU'),
('24090138', 'Rakha Arya Bagaskara', 'Jl. Mliwis Gg. Walet No.9', 'Tegal', '2003-08-05', '085962891782', 'dawgsyogs@gmail.com', 'L', '2025-11-16', 'dawgsyogs@gmail.com', '2025-11-16', 'TAMU'),
('24090139', 'FAUZY ADYTYAMAKI MADHERA', 'JL.Mangga DS.Grobogkulon,Kec.Pangkah,Kab.Tegal Jawa Tengah', 'Ngawi', '2006-07-07', '085931244939', 'fauzyaditya414@gmail.com', 'L', '2025-11-16', 'fauzyaditya414@gmail.com', '2025-11-16', 'TAMU'),
('24090141', 'Sofyan Yudha Akmalullah', 'Perumahan Grand Emerald Pengabean, Pengabean, Kec. Dukuhturi, Kab. Tegal, Jawa Tengah', 'Grobogan', '2006-11-05', '085713363903', 'sofyanyudha1@gmail.com', 'L', '2025-11-16', 'sofyanyudha1@gmail.com', '2025-11-16', 'TAMU'),
('25092001', 'Sulthan Khansa', 'Jl. Brawijaya no. 64 Muarareja', 'Tegal', '2002-04-11', '087840321058', 'sulthankhansa11@gmail.com', 'L', '2025-11-16', 'sulthankhansa11@gmail.com', '2025-11-16', 'TAMU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genders`
--

CREATE TABLE `genders` (
  `GENDER_ID` char(1) NOT NULL,
  `GENDER` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `genders`
--

INSERT INTO `genders` (`GENDER_ID`, `GENDER`) VALUES
('L', 'Laki-laki'),
('P', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `ORDER_ID` int(11) NOT NULL,
  `ORDER_DATE` datetime NOT NULL,
  `CUST_ID` char(8) DEFAULT '-NoName-',
  `USER_ID` char(8) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `METHOD_ID` char(1) DEFAULT '1',
  `BANK_TRANS` varchar(25) DEFAULT NULL,
  `RECEIPT_NUMBER` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`ORDER_ID`, `ORDER_DATE`, `CUST_ID`, `USER_ID`, `TOTAL`, `METHOD_ID`, `BANK_TRANS`, `RECEIPT_NUMBER`) VALUES
(81, '2025-08-31 00:00:00', '24090130', '12345678', 124000, '1', '', '12345678202508311200'),
(104, '2025-10-17 00:00:00', '24090130', '12345678', 100000, '1', '', '12345678202510171200'),
(181, '2025-10-23 00:00:00', '24090130', '12345678', 375000, '1', '', '12345678202510231200'),
(202, '2025-11-03 00:00:00', '24090096', '24090138', 65000, '3', '', '24090138202511031200'),
(206, '2025-10-17 00:00:00', '24090104', '24090138', 465000, '3', '', '24090138202510171200'),
(224, '2025-11-01 00:00:00', '24090081', '24090138', 2215500, '1', '', '24090138202511011200'),
(230, '2025-10-29 00:00:00', '24090092', '24090138', 1434712, '1', '', '24090138202510291200'),
(232, '2025-11-02 00:00:00', '24090093', '24090138', 193000, '3', '', '24090138202511021200'),
(234, '2025-09-30 00:00:00', '24090086', '24090138', 474000, '1', '', '24090138202509301200'),
(251, '2025-10-10 00:00:00', '24090093', '24090138', 224500, '2', '', '24090138202510101200'),
(252, '2025-10-23 00:00:00', '24090101', '24090138', 450000, '3', '', '24090138202510231200'),
(254, '2025-10-14 00:00:00', '24090076', '24090138', 1477000, '3', '', '24090138202510141200'),
(258, '2025-10-27 00:00:00', '24090075', '24090138', 1855300, '3', '', '24090138202510271200'),
(261, '2025-10-03 00:00:00', '24090094', '24090138', 1650000, '2', '', '24090138202510031200'),
(262, '2025-06-07 00:00:00', '24090070', '24090138', 289700, '1', '', '24090138202506071200'),
(263, '2025-01-03 00:00:00', '24090102', '24090138', 914500, '2', '', '24090138202509031200'),
(277, '2025-09-12 00:00:00', '24090078', '24090138', 1069000, '3', '', '24090138202509121200'),
(278, '2025-02-02 00:00:00', '24090071', '24090138', 500000, '3', '', '24090138202502021200'),
(279, '2025-10-25 00:00:00', '24090083', '24090138', 125000, '1', '', '24090138202510251200'),
(280, '2025-10-08 00:00:00', '24090084', '24090138', 142500, '1', '', '24090138202510081200'),
(282, '2025-10-20 00:00:00', '24090082', '24090138', 398212, '1', '', '24090138202510201200'),
(285, '2025-09-10 00:00:00', '24090077', '24090138', 545000, '1', '', '24090138202509101200'),
(287, '2025-10-01 00:00:00', '24090096', '24090138', 723000, '1', '', '24090138202510011200'),
(289, '2025-06-03 00:00:00', '24090081', '24090138', 45000, '2', '', '24090138202506031200'),
(293, '2025-08-09 00:00:00', '24090093', '24090138', 1110000, '3', '', '24090138202508091200'),
(297, '2025-07-08 00:00:00', '24090084', '24090138', 620000, '2', '', '24090138202507081200'),
(300, '2025-01-01 00:00:00', '24090099', '24090138', 300000, '1', '', '24090138202501011200'),
(304, '2025-09-01 00:00:00', '24090093', '24090138', 627500, '2', '', '24090138202509011200'),
(310, '2025-07-22 00:00:00', '24090070', '24090138', 318000, '3', '', '24090138202507221200'),
(311, '2025-03-01 00:00:00', '24090071', '24090138', 100000, '3', '', '24090138202503011200'),
(317, '2025-09-04 00:00:00', '24090096', '24090138', 172000, '3', '', '24090138202512011200'),
(319, '2025-07-13 00:00:00', '24090093', '24090138', 825000, '3', '', '24090138202507131200'),
(320, '2025-03-06 00:00:00', '24090104', '24090138', 600000, '1', '', '24090138202503061200'),
(322, '2025-08-10 00:00:00', '24090086', '24090138', 263000, '3', '', '24090138202508101200'),
(324, '2025-10-31 00:00:00', '24090083', '24090138', 241000, '1', '', '24090138202510311200'),
(325, '2025-04-10 00:00:00', '24090071', '24090138', 357300, '3', '', '24090138202504101200'),
(327, '2025-08-05 00:00:00', '24090096', '24090138', 1550000, '3', '', '24090138202508051200'),
(328, '2025-06-11 00:00:00', '24090093', '24090138', 380000, '2', '', '24090138202506111200'),
(333, '2025-08-17 00:00:00', '24090070', '24090138', 260000, '1', '', '24090138202508171200'),
(334, '2025-10-28 00:00:00', '24090083', '24090138', 195000, '3', '', '24090138202510281200'),
(336, '2025-08-14 00:00:00', '24090077', '24090138', 1601000, '2', '', '24090138202508141200'),
(337, '2025-07-06 00:00:00', '24090096', '24090138', 875000, '1', '', '24090138202507061200'),
(338, '2025-06-26 00:00:00', '24090104', '24090138', 176800, '3', '', '24090138202506261200'),
(341, '2025-08-19 00:00:00', '24090084', '24090138', 949000, '1', '', '24090138202508191200'),
(343, '2025-09-04 00:00:00', '24090092', '24090138', 838000, '3', '', '24090138202509041200'),
(344, '2025-06-04 00:00:00', '24090101', '24090138', 347500, '1', '', '24090138202506041200'),
(345, '2025-05-17 00:00:00', '24090071', '24090138', 547400, '3', '', '24090138202505171200'),
(346, '2005-12-25 00:00:00', '24090085', '24090138', 15000, '2', '', '24090138200512251200'),
(352, '2025-08-16 00:00:00', '24090101', '24090138', 217500, '3', '', '24090138202508161200'),
(353, '2025-06-12 00:00:00', '24090071', '24090138', 0, '3', '', '24090138202506121200'),
(355, '2025-07-07 00:00:00', '24090096', '24090138', 590000, '2', '', '24090138202507071200'),
(357, '2025-09-09 00:00:00', '24090070', '24090138', 470000, '3', '', '24090138202509091200'),
(358, '2025-02-01 00:00:00', '24090099', '24090138', 35000, '3', '', '24090138202502011200'),
(364, '2025-03-02 00:00:00', '24090099', '24090138', 125000, '1', '', '24090138202503021200'),
(377, '2025-01-15 00:00:00', '24090104', '24090138', 350500, '2', '', '24090138202501151200'),
(379, '2025-01-31 00:00:00', '24090096', '24090138', 1250000, '1', '', '24090138202501311200'),
(380, '2025-09-06 00:00:00', '24090101', '24090138', 127000, '1', '', '24090138202509061200'),
(381, '2025-07-09 00:00:00', '24090071', '24090138', 907000, '3', '', '24090138202507091200'),
(382, '2025-06-08 00:00:00', '24090096', '24090138', 225000, '2', '', '24090138202506081200'),
(385, '2025-10-11 00:00:00', '24090070', '24090138', 510000, '3', '', '24090138202510111200'),
(387, '2025-09-24 00:00:00', '24090106', '24090138', 235000, '3', '', '24090138202509241200'),
(389, '2025-09-28 00:00:00', '24090082', '24090138', 1065000, '2', '', '24090138202509281200'),
(393, '2025-09-17 00:00:00', '24090106', '24090138', 349000, '2', '', '24090138202509171200'),
(395, '2025-04-01 00:00:00', '24090099', '24090138', 251000, '2', '', '24090138202504011200'),
(397, '2025-06-01 00:00:00', '24090084', '24090138', 358500, '1', '', '24090138202506011200'),
(398, '2025-08-21 00:00:00', '24090092', '24090138', 284000, '3', '', '24090138202508211200'),
(421, '2025-05-01 00:00:00', '24090099', '24090138', 1250000, '2', '', '24090138202505011200'),
(515, '2025-09-05 00:00:00', '24090084', '24090138', 865000, '1', '', '24090138202509051200'),
(528, '2025-08-13 00:00:00', '24090106', '24090138', 105500, '2', '', '24090138202508131200'),
(535, '2025-09-16 00:00:00', '24090094', '24090138', 190000, '2', '', '24090138202509161200'),
(540, '2025-10-18 00:00:00', '24090106', '24090138', 60000, '1', '', '24090138202510181200'),
(541, '2025-02-28 00:00:00', '24090096', '24090138', 750000, '1', '', '24090138202502281200'),
(561, '2025-11-03 00:00:00', '24090097', '24090138', 221000, '2', '', '24090138202511281200'),
(562, '2025-03-31 00:00:00', '24090096', '24090138', 105000, '1', '', '24090138202503311200'),
(563, '2025-06-27 00:00:00', '24090099', '24090138', 318000, '3', '', '24090138202506271200'),
(566, '2025-05-09 00:00:00', '24090104', '24090138', 172000, '1', '', '24090138202505091200'),
(570, '2025-02-25 00:00:00', '24090102', '24090138', 100000, '3', '', '24090138202502251200'),
(572, '2025-07-10 00:00:00', '24090106', '24090138', 235000, '2', '', '24090138202507101200'),
(576, '2025-04-30 00:00:00', '24090096', '24090138', 485000, '3', '', '24090138202504301200'),
(579, '2025-08-03 00:00:00', '24090094', '24090138', 262500, '2', '', '24090138202508031200'),
(581, '2025-03-30 00:00:00', '24090096', '24090138', 445000, '3', '', '24090138202503301200'),
(584, '2025-05-06 00:00:00', '24090070', '24090138', 516000, '1', '', '24090138202505061200'),
(585, '2025-03-25 00:00:00', '24090102', '24090138', 207500, '3', '', '24090138202503251200'),
(586, '2025-01-21 00:00:00', '24090081', '24090138', 310000, '2', '', '24090138202501211200'),
(592, '2025-10-24 00:00:00', '24090072', '24090138', 8000, '2', '', '24090138202510241200'),
(593, '2025-06-10 00:00:00', '24090086', '24090138', 1352000, '1', '', '24090138202506101200'),
(595, '2025-09-29 00:00:00', '24090072', '24090138', 60000, '3', '', '24090138202509291200'),
(596, '2025-07-25 00:00:00', '24090106', '24090138', 112000, '2', '', '24090138202507251200'),
(597, '2025-04-25 00:00:00', '24090102', '24090138', 32500, '2', '', '24090138202504251200'),
(598, '2025-05-31 00:00:00', '24090096', '24090138', 330000, '3', '', '24090138202505311200'),
(603, '2025-10-22 00:00:00', '24090101', '24090138', 330000, '2', '', '24090138202510221200'),
(604, '2025-07-15 00:00:00', '24090106', '24090138', 69000, '2', '', '24090138202507151200'),
(605, '2025-07-03 00:00:00', '24090094', '24090138', 375000, '2', '', '24090138202507031200'),
(608, '2025-09-18 00:00:00', '24090081', '24090138', 73500, '1', '', '24090138202509181200'),
(620, '2025-06-30 00:00:00', '24090096', '24090138', 200000, '2', '', '24090138202506301200'),
(621, '2025-08-31 00:00:00', '24090072', '24090138', 10000, '3', '', '24090138202508311200'),
(622, '2025-06-09 00:00:00', '24090094', '24090138', 172500, '2', '', '24090138202506091200'),
(624, '2025-07-29 00:00:00', '24090072', '24090138', 15000, '3', '', '24090138202507291200'),
(625, '2025-05-20 00:00:00', '24090086', '24090138', 138000, '2', '', '24090138202505201200'),
(629, '2025-04-03 00:00:00', '24090094', '24090138', 70000, '2', '', '24090138202504031200'),
(641, '2025-06-13 00:00:00', '24090104', '24090138', 626000, '3', '', '24090138202506131200'),
(642, '2025-05-03 00:00:00', '24090094', '24090138', 450000, '2', '', '24090138202505031200'),
(643, '2025-06-25 00:00:00', '24090102', '24090138', 10000, '3', '', '24090138202506251200'),
(644, '2025-06-28 00:00:00', '24090072', '24090138', 450000, '3', '', '24090138202506281200'),
(675, '2025-08-12 00:00:00', '24090081', '24090138', 252500, '3', '', '24090138202508121200'),
(676, '2025-08-07 00:00:00', '24090106', '24090138', 299500, '1', '', '24090138202508071200'),
(679, '2025-02-12 00:00:00', '24090104', '24090138', 189500, '1', '', '24090138202502121200'),
(691, '2025-05-29 00:00:00', '24090072', '24090138', 70000, '3', '', '24090138202505291200'),
(698, '2025-03-03 00:00:00', '24090094', '24090138', 80000, '2', '', '24090138202503031200'),
(699, '2024-03-13 00:00:00', '24090072', '24090138', 98000, '3', '', '24090138202504161200'),
(701, '2025-10-21 00:00:00', '24090070', '24090138', 25000, '3', '', '24090138202510211200'),
(704, '2025-10-26 00:00:00', '24090070', '24090138', 8000, '3', '', '24090138202510261200'),
(715, '2025-09-15 00:00:00', '24090070', '24090138', 47500, '1', '', '24090138202509151200'),
(721, '2025-02-03 00:00:00', '24090094', '24090138', 147500, '2', '', '24090138202502031200'),
(727, '2025-10-05 00:00:00', '24090081', '24090138', 40000, '2', '', '24090138202510051200'),
(776, '2025-11-03 00:00:00', '24090097', '24090138', 240000, '3', '', '24090138202611021200'),
(777, '2025-09-13 00:00:00', '24090101', '24090138', 55000, '1', '', '24090138202509131200'),
(779, '2025-04-12 00:00:00', '24090104', '24090138', 15000, '3', '', '24090138202504121200'),
(787, '2025-08-20 00:00:00', '24090070', '24090138', 194000, '1', '', '24090138202508201200'),
(790, '2025-10-06 00:00:00', '24090072', '24090138', 31899, '1', '', '24090138202510061200'),
(795, '2025-01-23 00:00:00', '24090099', '24090138', 6000, '3', '', '24090138202501231200'),
(797, '2025-10-07 00:00:00', '24090092', '24090138', 50000, '2', '', '24090138202510071200'),
(798, '2025-07-18 00:00:00', '24090104', '24090138', 480000, '1', '', '24090138202507181200'),
(803, '2025-09-26 00:00:00', '24090084', '24090138', 100000, '1', '', '24090138202509261200'),
(806, '2025-07-17 00:00:00', '24090101', '24090138', 325000, '2', '', '24090138202507171200'),
(807, '2025-09-27 00:00:00', '24090084', '24090138', 12500, '1', '', '24090138202509271200'),
(808, '2025-02-23 00:00:00', '24090099', '24090138', 125000, '2', '', '24090138202502231200'),
(811, '2025-05-27 00:00:00', '24090071', '24090138', 54000, '3', '', '24090138202505271200'),
(817, '2025-08-18 00:00:00', '24090092', '24090138', 40000, '1', '', '24090138202508181200'),
(818, '2025-04-19 00:00:00', '24090099', '24090138', 40000, '3', '', '24090138202504191200'),
(819, '2025-05-04 00:00:00', '24090071', '24090138', 49500, '3', '', '24090138202505041200'),
(821, '2025-07-27 00:00:00', '24090081', '24090138', 10000, '1', '', '24090138202507271200'),
(827, '2025-05-25 00:00:00', '24090071', '24090138', 16000, '3', '', '24090138202505251200'),
(828, '2025-08-08 00:00:00', '24090084', '24090138', 150000, '2', '', '24090138202508081200'),
(829, '2025-03-09 00:00:00', '24090104', '24090138', 1000000, '3', '', '24090138202503091200'),
(833, '2025-05-30 00:00:00', '24090071', '24090138', 268000, '3', '', '24090138202505301200'),
(838, '2025-07-30 00:00:00', '24090092', '24090138', 0, '1', '', '24090138202507301200'),
(849, '2025-06-03 00:00:00', '24090129', '24090131', 737900, '3', '', '24090131202506031200'),
(850, '2025-09-10 00:00:00', '24090120', '24090131', 1127000, '3', '', '24090131202509101200'),
(853, '2025-11-02 00:00:00', '24090136', '24090131', 355000, '3', '', '24090131202511021200'),
(854, '2025-11-03 00:00:00', '24090098', '24090131', 675000, '3', '', '24090131202511041200'),
(857, '2025-11-03 00:00:00', '24090100', '24090131', 2360000, '3', '', '24090131202511071200'),
(859, '2025-11-03 00:00:00', '24090108', '24090131', 445000, '3', '', '24090131202511261200'),
(862, '2025-11-03 00:00:00', '24090137', '24090131', 542500, '1', '', '24090131202511031200'),
(863, '2025-10-31 00:00:00', '24090130', '24090131', 353500, '1', '', '24090131202510311200'),
(864, '2025-06-06 00:00:00', '24090116', '24090131', 494000, '1', '', '24090131202506061200'),
(867, '2025-11-01 00:00:00', '24090118', '24090131', 45000, '1', '', '24090131202511011200'),
(876, '2025-11-03 00:00:00', '24090103', '24090131', 940000, '3', '', '24090131202511051200'),
(877, '2025-11-03 00:00:00', '24090126', '24090131', 750000, '3', '', '24090131202511061200'),
(878, '2025-11-03 00:00:00', '24090117', '24090131', 789300, '3', '', '24090131202511231200'),
(887, '2025-05-01 00:00:00', '24090123', '24090131', 630000, '1', '', '24090131202505011200'),
(890, '2025-07-10 00:00:00', '24090116', '24090131', 452000, '1', '', '24090131202507101200'),
(896, '2025-08-09 00:00:00', '24090109', '24090131', 0, '1', '', '24090131202508091200'),
(897, '2025-07-17 00:00:00', '24090130', '24090131', 811580, '2', '', '24090131202507171200'),
(905, '2025-09-07 00:00:00', '24090130', '24090131', 1061000, '3', '', '24090131202509071200'),
(917, '2025-08-13 00:00:00', '24090129', '24090131', 560500, '1', '', '24090131202508131200'),
(928, '2025-08-20 00:00:00', '24090116', '24090131', 25000, '1', '', '24090131202506051200'),
(929, '2010-11-03 00:00:00', '24090136', '24090131', 475000, '2', '', '24090131201011031200'),
(930, '2025-06-01 00:00:00', '24090111', '24090131', 1805000, '3', '', '24090131202506011200'),
(931, '2025-08-15 00:00:00', '24090103', '24090131', 530000, '3', '', '24090131202508151200'),
(932, '2025-05-23 00:00:00', '24090113', '24090131', 1100000, '2', '', '24090131202505231200'),
(934, '2025-09-18 00:00:00', '24090116', '24090131', 233400, '1', '', '24090131202509181200'),
(935, '2025-08-30 00:00:00', '24090107', '24090131', 20000, '3', '', '24090131202508301200'),
(948, '2025-10-28 00:00:00', '24090120', '24090131', 235000, '1', '', '24090131202510281200'),
(950, '2025-06-04 00:00:00', '24090136', '24090131', 0, '3', '', '24090131202506041200'),
(956, '2025-10-06 00:00:00', '24090130', '24090131', 433500, '1', '', '24090131202510061200'),
(958, '2025-09-01 00:00:00', '24090117', '24090131', 423000, '3', '', '24090131202504101200'),
(959, '2025-10-01 00:00:00', '24090109', '24090131', 2807200, '3', '', '24090131202510011200'),
(963, '2025-05-31 00:00:00', '24090123', '24090131', 114000, '1', '', '24090131202505311200'),
(965, '2025-08-14 00:00:00', '24090116', '24090131', 221500, '1', '', '24090131202508141200'),
(966, '2025-10-15 00:00:00', '24090132', '24090131', 23000, '2', '', '24090131202511291200'),
(968, '2025-06-08 00:00:00', '24090111', '24090131', 405000, '1', '', '24090131202506081200'),
(970, '2025-06-01 00:00:00', '24090123', '24090131', 240000, '3', '', '24090131202508011200'),
(972, '2025-04-02 00:00:00', '24090132', '24090131', 729800, '1', '', '24090131202512091200'),
(974, '2025-10-23 00:00:00', '24090116', '24090131', 336000, '1', '', '24090131202510231200'),
(975, '2025-07-27 00:00:00', '24090111', '24090131', 1034000, '3', '', '24090131202507271200'),
(977, '2025-10-15 00:00:00', '24090120', '24090131', 245000, '1', '', '24090131202510151200'),
(978, '2025-10-27 00:00:00', '24090116', '24090131', 349000, '1', '', '24090131202510271200'),
(979, '2025-06-30 00:00:00', '24090123', '24090131', 35000, '2', '', '24090131202506301200'),
(983, '2025-10-16 00:00:00', '24090116', '24090131', 156000, '1', '', '24090131202510161200'),
(984, '2025-09-26 00:00:00', '24090130', '24090131', 285000, '2', '', '24090131202509261200'),
(985, '2025-10-10 00:00:00', '24090135', '24090131', 70000, '3', '', '24090131202510101200'),
(986, '2025-10-22 00:00:00', '24090115', '24090131', 100000, '2', '', '24090131202510221200'),
(987, '2025-08-27 00:00:00', '24090130', '24090131', 75000, '3', '', '24090131202508271200'),
(989, '2025-08-31 00:00:00', '24090129', '24090131', 746500, '3', '', '24090131202508311200'),
(990, '2025-08-17 00:00:00', '24090130', '24090131', 3000, '3', '', '24090131202508171200'),
(991, '2025-10-30 00:00:00', '24090120', '24090131', 146500, '2', '', '24090131202510301200'),
(995, '2025-06-02 00:00:00', '24090113', '24090131', 1460000, '2', '', '24090131202506021200'),
(997, '2025-09-11 00:00:00', '24090135', '24090131', 360000, '3', '', '24090131202509111200'),
(998, '2025-09-17 00:00:00', '24090107', '24090131', 960000, '1', '', '24090131202509171200'),
(999, '2025-10-13 00:00:00', '24090118', '24090131', 142000, '1', '', '24090131202510131200'),
(1001, '2025-08-20 00:00:00', '24090135', '24090131', 490000, '3', '', '24090131202508201200'),
(1002, '2025-10-08 00:00:00', '24090120', '24090131', 75000, '1', '', '24090131202510081200'),
(1004, '2025-09-25 00:00:00', '24090116', '24090131', 46000, '1', '', '24090131202509251200'),
(1005, '2025-11-02 00:00:00', '24090107', '24090131', 820000, '1', '', '24090131202507231200'),
(1006, '2025-09-20 00:00:00', '24090129', '24090131', 56000, '3', '', '24090131202509201200'),
(1013, '2025-11-01 00:00:00', '24090132', '24090131', 436000, '3', '', '24090131202601161200'),
(1021, '2025-10-09 00:00:00', '24090137', '24090131', 762000, '1', '', '24090131202510091200'),
(1022, '2025-08-28 00:00:00', '24090111', '24090131', 975000, '2', '', '24090131202508281200'),
(1023, '2025-08-21 00:00:00', '24090116', '24090131', 300000, '1', '', '24090131202508211200'),
(1024, '2025-10-25 00:00:00', '24090129', '24090131', 35500, '3', '', '24090131202510251200'),
(1027, '2025-07-01 00:00:00', '24090123', '24090131', 309404, '2', '', '24090131202507011200'),
(1040, '2025-10-11 00:00:00', '24090129', '24090131', 70900, '1', '', '24090131202510111200'),
(1042, '2025-10-02 00:00:00', '24090108', '24090131', 50000, '1', '', '24090131202510021200'),
(1043, '2025-09-22 00:00:00', '24090120', '24090131', 85000, '1', '', '24090131202509221200'),
(1044, '2025-06-25 00:00:00', '24090132', '24090131', 243000, '2', '', '24090131202602191200'),
(1053, '2025-09-15 00:00:00', '24090120', '24090131', 92500, '3', '', '24090131202509151200'),
(1054, '2025-10-07 00:00:00', '24090118', '24090131', 332000, '1', '', '24090131202510071200'),
(1056, '2025-07-31 00:00:00', '24090123', '24090131', 180000, '1', '', '24090131202507311200'),
(1057, '2025-10-21 00:00:00', '24090107', '24090131', 477000, '2', '', '24090131202510211200'),
(1062, '2025-07-22 00:00:00', '24090132', '24090131', 20000, '1', '', '24090131202603121200'),
(1067, '2025-08-12 00:00:00', '24090135', '24090131', 200000, '3', '', '24090131202508121200'),
(1074, '2025-08-26 00:00:00', '24090112', '24090131', 50000, '1', '', '24090131202508261200'),
(1078, '2025-10-19 00:00:00', '24090120', '24090131', 150000, '3', '', '24090131202510191200'),
(1081, '2025-10-20 00:00:00', '24090108', '24090131', 145000, '2', '', '24090131202510201200'),
(1084, '2025-05-15 00:00:00', '24090132', '24090131', 143600, '3', '', '24090131202505151200'),
(1090, '2025-07-15 00:00:00', '24090129', '24090131', 103500, '2', '', '24090131202507151200'),
(1094, '2025-08-10 00:00:00', '24090123', '24090131', 525000, '3', '', '24090131202508101200'),
(1095, '2025-09-03 00:00:00', '24090117', '24090131', 172000, '1', '', '24090131202509031200'),
(1096, '2025-08-06 00:00:00', '24090103', '24090131', 427500, '3', '', '24090131202508061200'),
(1103, '2025-09-12 00:00:00', '24090108', '24090131', 30000, '3', '', '24090131202509121200'),
(1104, '2025-07-16 00:00:00', '24090107', '24090131', 255000, '3', '', '24090131202507161200'),
(1105, '2025-09-30 00:00:00', '24090108', '24090131', 9000, '1', '', '24090131202509301200'),
(1107, '2025-10-17 00:00:00', '24090120', '24090131', 130000, '3', '', '24090131202510171200'),
(1111, '2025-06-11 00:00:00', '24090113', '24090131', 158000, '2', '', '24090131202506111200'),
(1124, '2025-09-09 00:00:00', '24090107', '24090131', 417200, '1', '', '24090131202509091200'),
(1130, '2025-08-11 00:00:00', '24090123', '24090131', 172500, '3', '', '24090131202508111200'),
(1135, '2025-06-20 00:00:00', '24090129', '24090131', 160000, '3', '', '24090131202506201200'),
(1142, '2025-09-28 00:00:00', '24090137', '24090131', 1315000, '2', '', '24090131202509281200'),
(1153, '2025-09-21 00:00:00', '24090118', '24090131', 65000, '1', '', '24090131202509211200'),
(1154, '2025-09-13 00:00:00', '24090112', '24090131', 0, '1', '', '24090131202509131200'),
(1156, '2025-03-30 00:00:00', '24090107', '24090131', 180000, '1', '', '24090131202503301200'),
(1160, '2025-09-23 00:00:00', '24090129', '24090131', 55500, '1', '', '24090131202509231200'),
(1163, '2025-09-29 00:00:00', '24090120', '24090131', 30000, '3', '', '24090131202509291200'),
(1164, '2025-07-22 00:00:00', '24090135', '24090131', 120000, '2', '', '24090131202507221200'),
(1168, '2025-09-01 00:00:00', '24090123', '24090131', 310000, '3', '', '24090131202509011200'),
(1172, '2025-07-31 00:00:00', '24090092', '24090138', 39000, '1', '', '24090138202507311200'),
(1173, '2025-06-24 00:00:00', '24090092', '24090138', 36000, '1', '', '24090138202506241200'),
(1178, '2025-02-08 00:00:00', '24090086', '24090138', 79000, '3', '', '24090138202502081200'),
(1179, '2025-09-22 00:00:00', '24090092', '24090138', 151200, '2', '', '24090138202509221200'),
(1182, '2025-07-24 00:00:00', '24090107', '24090131', 312200, '1', '', '24090131202507241200'),
(1184, '2025-10-03 00:00:00', '24090129', '24090131', 92500, '1', '', '24090131202510031200'),
(1194, '2025-01-14 00:00:00', '24090086', '24090138', 63000, '1', '', '24090138202501141200'),
(1195, '2025-07-03 00:00:00', '24090103', '24090131', 0, '3', '', '24090131202507031200'),
(1199, '2025-07-14 00:00:00', '24090086', '24090138', 114000, '2', '', '24090138202507141200'),
(1200, '2025-07-06 00:00:00', '24090103', '24090131', 270000, '3', '', '24090131202507061200'),
(1201, '2025-03-08 00:00:00', '24090086', '24090138', 88000, '1', '', '24090138202503081200'),
(1202, '2025-04-22 00:00:00', '24090086', '24090138', 220500, '2', '', '24090138202504221200'),
(1243, '2025-11-03 00:00:00', '24090056', '24090056', 30000, '1', '', '24090056202511121200'),
(1244, '2025-11-02 00:00:00', '24090023', '24090056', 486800, '1', '', '24090056202511021200'),
(1245, '2025-11-04 00:00:00', '24090035', '24090056', 0, '1', '', '24090056202511041200'),
(1248, '2025-11-03 00:00:00', '24090067', '24090056', 962000, '2', '', '24090056202511031200'),
(1249, '2025-10-09 00:00:00', '24090069', '24090056', 0, '2', '', '24090056202510091200'),
(1251, '2025-10-03 00:00:00', '24090062', '24090056', 0, '1', '', '24090056202510031200'),
(1252, '2025-04-23 00:00:00', '24090026', '24090056', 676000, '1', '', '24090056202504231200'),
(1263, '2025-11-01 00:00:00', '24090061', '24090056', 0, '3', '', '24090056202511011200'),
(1266, '2025-11-05 00:00:00', '24090042', '24090056', 0, '1', '', '24090056202511051200'),
(1270, '2025-06-10 00:00:00', '24090068', '24090056', 500000, '1', '', '24090056202506101200'),
(1274, '2025-09-10 00:00:00', '24090066', '24090056', 0, '3', '', '24090056202509101200'),
(1279, '2025-10-01 00:00:00', '24090058', '24090056', 25000, '3', '', '24090056202512011200'),
(1300, '2025-10-22 00:00:00', '24090039', '24090056', 3814000, '1', '', '24090056202510221200'),
(1314, '2025-07-10 00:00:00', '24090006', '24090038', 231000, '1', '', '24090038202511031200'),
(1316, '2025-11-01 00:00:00', '24090034', '24090038', 373000, '3', '', '24090038202511041200'),
(1317, '2025-10-27 00:00:00', '24090014', '24090038', 230500, '1', '', '24090038202510171200'),
(1325, '2025-10-16 00:00:00', '24090032', '24090038', 255000, '1', '', '24090038202511011200'),
(1327, '2025-11-02 00:00:00', '24090030', '24090038', 663000, '1', '', '24090038202511021200'),
(1330, '2025-10-28 00:00:00', '24090015', '24090038', 128000, '3', '', '24090038202510281200'),
(1333, '2025-10-06 00:00:00', '24090022', '24090038', 4258000, '3', '', '24090038202510061200'),
(1336, '2025-10-09 00:00:00', '24090016', '24090038', 73000, '3', '', '24090038202510311200'),
(1338, '2025-10-30 00:00:00', '24090001', '24090038', 251000, '2', '', '24090038202510021200'),
(1341, '2025-11-02 00:00:00', '24090017', '24090038', 97500, '1', '', '24090038202511061200'),
(1344, '2025-11-04 00:00:00', '24090010', '24090038', 447000, '3', '', '24090038202511081200'),
(1345, '2025-08-22 00:00:00', '24090008', '24090038', 76300, '2', '', '24090038202510091200'),
(1349, '2025-10-25 00:00:00', '24090018', '24090038', 70000, '3', '', '24090038202510251200'),
(1360, '2025-02-04 00:00:00', '24090027', '24090038', 612000, '3', '', '24090038202502041200'),
(1362, '2025-06-27 00:00:00', '24090132', '24090131', 815000, '3', '', '24090131202506271200'),
(1363, '2025-10-15 00:00:00', '24090004', '24090038', 78500, '3', '', '24090038202412311200'),
(1364, '2025-05-24 00:00:00', '24090020', '24090038', 976800, '3', '', '24090038202508071200'),
(1365, '2025-06-01 00:00:00', '24090002', '24090038', 1070000, '3', '', '24090038202505311200'),
(1366, '2025-09-16 00:00:00', '24090141', '24090038', 375000, '3', '', '24090038202509161200'),
(1372, '2025-04-26 00:00:00', '24090132', '24090131', 190000, '3', '', '24090131202504261200'),
(1373, '2025-07-12 00:00:00', '24090027', '24090038', 4000, '1', '', '24090038202512191200'),
(1374, '2025-03-14 00:00:00', '-NoName-', '24090131', 546500, '1', '', '24090131202503141200'),
(1375, '2025-09-10 00:00:00', '24090014', '24090038', 140000, '3', '', '24090038202509101200'),
(1376, '2025-10-04 00:00:00', '24090033', '24090038', 100000, '1', '', '24090038202507051200'),
(1377, '2025-08-17 00:00:00', '24090027', '24090038', 7000, '2', '', '24090038202508171200'),
(1378, '2025-09-24 00:00:00', '24090040', '24090038', 1859000, '1', '', '24090038202509241200'),
(1379, '2025-05-08 00:00:00', '24090009', '24090038', 530000, '3', '', '24090038202505081200'),
(1380, '2025-08-30 00:00:00', '24090001', '24090038', 0, '2', '', '24090038202508301200'),
(1381, '2025-05-04 00:00:00', '24090009', '24090038', 280000, '2', '', '24090038202505041200'),
(1385, '2025-10-24 00:00:00', '24090028', '24090038', 149000, '1', '', '24090038202511201200'),
(1386, '2006-08-08 00:00:00', '24090012', '24090038', 1760000, '3', '', '24090038200608081200'),
(1387, '2025-10-04 00:00:00', '24090029', '24090038', 4178520, '1', '', '24090038202510041200'),
(1389, '2025-09-09 00:00:00', '24090033', '24090038', 479000, '3', '', '24090038202509091200'),
(1390, '2025-09-11 00:00:00', '24090040', '24090038', 505000, '1', '', '24090038202509111200'),
(1392, '2025-05-09 00:00:00', '24090037', '24090056', 0, '1', '', '24090056202505091200'),
(1393, '2025-09-24 00:00:00', '24090132', '24090131', 467500, '1', '', '24090131202509241200'),
(1394, '2025-10-22 00:00:00', '24090141', '24090038', 1775000, '1', '', '24090038202510221200'),
(1395, '2025-05-02 00:00:00', '24090043', '24090056', 0, '1', '', '24090056202505021200'),
(1396, '2025-06-02 00:00:00', '24090013', '24090038', 1241000, '2', '', '24090038202506021200'),
(1397, '2025-09-30 00:00:00', '24090001', '24090038', 846000, '1', '', '24090038202509011200'),
(1398, '2025-10-19 00:00:00', '24090033', '24090038', 300880, '2', '', '24090038202511151200'),
(1399, '2025-08-12 00:00:00', '24090014', '24090038', 210000, '2', '', '24090038202508121200'),
(1400, '2025-07-18 00:00:00', '24090132', '24090131', 373500, '2', '', '24090131202507181200'),
(1401, '2025-10-26 00:00:00', '24090033', '24090038', 532000, '3', '', '24090038202512281200'),
(1402, '2025-07-31 00:00:00', '24090014', '24090038', 20300, '1', '', '24090038202507311200'),
(1407, '2025-05-15 00:00:00', '24090025', '24090038', 1245145, '3', '', '24090038202505151200'),
(1408, '2025-05-15 00:00:00', '25092001', '24090038', 570000, '1', '', '24090038202505071200'),
(1409, '2025-10-29 00:00:00', '24090001', '24090038', 163000, '3', '', '24090038202510291200'),
(1410, '2025-03-07 00:00:00', '24090027', '24090038', 1272616, '2', '', '24090038202503071200'),
(1411, '2025-06-30 00:00:00', '24090011', '24090038', 1251500, '1', '', '24090038202506301200'),
(1415, '2025-03-06 00:00:00', '24090006', '24090038', 221000, '1', '', '24090038202510111200'),
(1416, '2025-10-30 00:00:00', '24090141', '24090038', 801000, '2', '', '24090038202510301200'),
(1418, '2025-08-10 00:00:00', '24090008', '24090038', 840000, '1', '', '24090038202508101200'),
(1421, '2025-05-02 00:00:00', '24090003', '24090038', 28000, '1', '', '24090038202505021200'),
(1422, '2025-06-01 00:00:00', '24090011', '24090038', 250000, '3', '', '24090038202506011200'),
(1427, '2025-10-21 00:00:00', '24090141', '24090038', 1229500, '2', '', '24090038202510211200'),
(1428, '2025-07-19 00:00:00', '24090018', '24090038', 105000, '1', '', '24090038202507191200'),
(1430, '2025-08-14 00:00:00', '24090010', '24090038', 259900, '3', '', '24090038202508141200'),
(1432, '2025-08-01 00:00:00', '24090027', '24090038', 179700, '3', '', '24090038202508011200'),
(1433, '2025-05-03 00:00:00', '24090003', '24090038', 200000, '1', '', '24090038202505031200'),
(1434, '2025-08-22 00:00:00', '24090015', '24090038', 226000, '2', '', '24090038202508221200'),
(1435, '2025-07-10 00:00:00', '24090018', '24090038', 1802500, '2', '', '24090038202507101200'),
(1437, '2025-10-12 00:00:00', '24090027', '24090038', 167200, '1', '', '24090038202510121200'),
(1439, '2025-10-07 00:00:00', '24090027', '24090038', 596000, '3', '', '24090038202510071200'),
(1440, '2025-10-24 00:00:00', '24090040', '24090038', 845500, '2', '', '24090038202510241200'),
(1443, '2025-10-01 00:00:00', '24090141', '24090038', 659000, '3', '', '24090038202510011200'),
(1444, '2025-09-03 00:00:00', '24090008', '24090038', 313500, '2', '', '24090038202509031200'),
(1451, '2025-09-23 00:00:00', '24090033', '24090038', 468000, '3', '', '24090038202509231200'),
(1453, '2025-09-27 00:00:00', '24090018', '24090038', 240000, '3', '', '24090038202509271200'),
(1454, '2025-07-08 00:00:00', '24090002', '24090038', 750000, '2', '', '24090038202511141200'),
(1455, '2025-05-06 00:00:00', '25092001', '24090038', 120000, '1', '', '24090038202505061200'),
(1457, '2025-04-02 00:00:00', '24090003', '24090038', 15000, '1', '', '24090038202504021200'),
(1458, '2025-10-03 00:00:00', '24090040', '24090038', 1864500, '1', '', '24090038202510031200'),
(1460, '2025-06-19 00:00:00', '24090025', '24090038', 230000, '2', '', '24090038202506191200'),
(1466, '2025-06-29 00:00:00', '24090002', '24090038', 592000, '1', '', '24090038202511051200'),
(1467, '2025-09-15 00:00:00', '24090018', '24090038', 1050000, '3', '', '24090038202509151200'),
(1470, '2025-05-01 00:00:00', '24090003', '24090038', 540000, '1', '', '24090038202505011200'),
(1471, '2025-09-28 00:00:00', '24090141', '24090038', 93400, '2', '', '24090038202509281200'),
(1474, '2025-07-17 00:00:00', '24090015', '24090038', 1064000, '3', '', '24090038202507171200'),
(1475, '2025-08-15 00:00:00', '24090025', '24090038', 380000, '1', '', '24090038202508151200'),
(1476, '2025-07-11 00:00:00', '24090018', '24090038', 6000, '2', '', '24090038202507111200'),
(1479, '2025-04-12 00:00:00', '24090006', '24090038', 272500, '1', '', '24090038202504121200'),
(1481, '2025-08-11 00:00:00', '24090033', '24090038', 315000, '2', '', '24090038202508111200'),
(1482, '2025-04-01 00:00:00', '24090003', '24090038', 15000, '1', '', '24090038202504011200'),
(1484, '2025-08-23 00:00:00', '24090141', '24090038', 177000, '3', '', '24090038202508231200'),
(1485, '2025-08-21 00:00:00', '24090033', '24090038', 643000, '2', '', '24090038202508211200'),
(1486, '2025-09-04 00:00:00', '24090008', '24090038', 449500, '1', '', '24090038202509041200'),
(1488, '2025-06-20 00:00:00', '25092001', '24090038', 593000, '2', '', '24090038202506201200'),
(1489, '2025-10-13 00:00:00', '24090141', '24090038', 198000, '2', '', '24090038202510131200'),
(1490, '2025-05-09 00:00:00', '24090003', '24090038', 130000, '1', '', '24090038202505091200'),
(1492, '2025-11-17 00:00:00', '24090002', '24090038', 251000, '3', '', '24090038202511171200'),
(1493, '2025-08-27 00:00:00', '24090033', '24090038', 480000, '2', '', '24090038202508271200'),
(1494, '2025-02-13 00:00:00', '24090003', '24090038', 482000, '1', '', '24090038202502131200'),
(1495, '2025-05-12 00:00:00', '24090009', '24090038', 87000, '1', '', '24090038202505121200'),
(1496, '2025-04-18 00:00:00', '24090003', '24090038', 210000, '1', '', '24090038202504181200'),
(1501, '2025-05-23 00:00:00', '24090009', '24090038', 1000000, '1', '', '24090038202505231200'),
(1503, '2025-08-13 00:00:00', '24090018', '24090038', 35000, '3', '', '24090038202508131200'),
(1505, '2025-06-06 00:00:00', '24090015', '24090038', 201500, '1', '', '24090038202506061200'),
(1513, '2025-06-01 00:00:00', '24090064', '24090056', 550000, '1', '', '24090056202506011200'),
(1514, '2025-11-09 00:00:00', '24090008', '24090038', 188000, '2', '', '24090038202511091200'),
(1515, '2025-06-27 00:00:00', '25092001', '24090038', 1050000, '3', '', '24090038202506271200'),
(1516, '2025-10-15 00:00:00', '24090018', '24090038', 223212, '2', '', '24090038202510151200'),
(1520, '2025-10-05 00:00:00', '24090141', '24090038', 42500, '2', '', '24090038202510051200'),
(1524, '2025-04-11 00:00:00', '24090009', '24090038', 50000, '2', '', '24090038202504111200'),
(1525, '2025-07-29 00:00:00', '24090033', '24090038', 115000, '3', '', '24090038202507291200'),
(1526, '2025-01-18 00:00:00', '24090003', '24090038', 289000, '1', '', '24090038202501181200'),
(1530, '2025-08-06 00:00:00', '25092001', '24090038', 665000, '3', '', '24090038202508061200'),
(1535, '2025-04-08 00:00:00', '24090009', '24090038', 1170000, '1', '', '24090038202504081200'),
(1536, '2025-08-08 00:00:00', '24090018', '24090038', 56000, '3', '', '24090038202508081200'),
(1537, '2025-08-02 00:00:00', '24090033', '24090038', 267000, '3', '', '24090038202508021200'),
(1538, '2025-07-20 00:00:00', '24090002', '24090038', 48000, '3', '', '24090038202507201200'),
(1539, '2025-05-26 00:00:00', '24090015', '24090038', 206000, '3', '', '24090038202505261200'),
(1544, '2025-07-15 00:00:00', '25092001', '24090038', 79000, '3', '', '24090038202507151200'),
(1550, '2025-05-10 00:00:00', '24090006', '24090038', 308000, '1', '', '24090038202505101200'),
(1558, '2025-09-12 00:00:00', '25092001', '24090038', 245000, '3', '', '24090038202509121200'),
(1562, '2025-04-26 00:00:00', '24090003', '24090038', 420000, '1', '', '24090038202504261200'),
(1563, '2025-09-17 00:00:00', '24090141', '24090038', 550000, '3', '', '24090038202509171200'),
(1565, '2025-08-28 00:00:00', '24090018', '24090038', 41000, '3', '', '24090038202508281200'),
(1567, '2025-08-31 00:00:00', '24090002', '24090038', 27500, '3', '', '24090038202508311200'),
(1568, '2025-07-13 00:00:00', '24090016', '24090038', 180000, '3', '', '24090038202507131200'),
(1571, '2025-11-23 00:00:00', '24090015', '24090038', 131000, '2', '', '24090038202511231200'),
(1572, '2025-01-10 00:00:00', '24090003', '24090038', 115000, '1', '', '24090038202501101200'),
(1574, '2025-02-02 00:00:00', '24090009', '24090038', 125000, '2', '', '24090038202502021200'),
(1578, '2025-04-16 00:00:00', '24090009', '24090038', 0, '1', '', '24090038202504161200'),
(1581, '2025-10-27 00:00:00', '24090008', '24090038', 41000, '3', '', '24090038202510271200'),
(1583, '2025-10-18 00:00:00', '25092001', '24090038', 1043500, '2', '', '24090038202510181200'),
(1584, '2025-05-30 00:00:00', '24090003', '24090038', 2054500, '1', '', '24090038202505301200'),
(1586, '2025-06-10 00:00:00', '24090006', '24090038', 462500, '1', '', '24090038202506101200'),
(1587, '2025-07-25 00:00:00', '24090009', '24090038', 215000, '1', '', '24090038202507251200'),
(1588, '2025-10-11 00:00:00', '24090004', '24090038', 319529, '1', '', '24090038202501011200'),
(1597, '2025-02-21 00:00:00', '24090003', '24090038', 294000, '1', '', '24090038202502211200'),
(1598, '2025-10-14 00:00:00', '24090008', '24090038', 75000, '1', '', '24090038202510141200'),
(1601, '2025-09-13 00:00:00', '24090002', '24090038', 50000, '1', '', '24090038202509131200'),
(1603, '2025-09-14 00:00:00', '24090016', '24090038', 112000, '3', '', '24090038202509141200'),
(1607, '2025-12-30 00:00:00', '24090025', '24090038', 265000, '2', '', '24090038202512301200'),
(1609, '2025-08-26 00:00:00', '24090016', '24090038', 150000, '3', '', '24090038202508261200'),
(1610, '2025-07-16 00:00:00', '24090008', '24090038', 676500, '3', '', '24090038202507161200'),
(1611, '2025-04-15 00:00:00', '24090015', '24090038', 268000, '3', '', '24090038202504151200'),
(1612, '2025-06-15 00:00:00', '24090008', '24090038', 1275000, '2', '', '24090038202506151200'),
(1613, '2025-10-23 00:00:00', '24090015', '24090038', 388000, '2', '', '24090038202510231200'),
(1614, '2025-07-14 00:00:00', '24090008', '24090038', 250000, '3', '', '24090038202507141200'),
(1624, '2025-09-06 00:00:00', '24090015', '24090038', 450000, '2', '', '24090038202509061200'),
(1626, '2025-07-04 00:00:00', '24090015', '24090038', 394000, '1', '', '24090038202507041200'),
(1629, '2025-10-01 00:00:00', '24090024', '24090056', 786300, '2', '', '24090056202510011200'),
(1631, '2025-05-23 00:00:00', '24090026', '24090056', 493404, '3', '', '24090056202504241200'),
(1633, '2025-02-09 00:00:00', '24090009', '24090038', 45000, '1', '', '24090038202502091200'),
(1634, '2025-09-21 00:00:00', '24090016', '24090038', 650000, '3', '', '24090038202509211200'),
(1642, '2025-10-19 00:00:00', '24090016', '24090038', 420000, '3', '', '24090038202510191200'),
(1643, '2025-07-23 00:00:00', '24090016', '24090038', 80000, '3', '', '24090038202507231200'),
(1648, '2025-09-30 00:00:00', '24090016', '24090038', 600000, '3', '', '24090038202509301200'),
(1650, '2025-04-19 00:00:00', '24090002', '24090038', 29000, '1', '', '24090038202504191200'),
(1652, '2025-06-09 00:00:00', '24090026', '24090056', 531500, '1', '', '24090056202506091200'),
(1653, '2025-06-12 00:00:00', '24090026', '24090056', 112000, '3', '', '24090056202506121200'),
(1654, '2025-06-27 00:00:00', '24090026', '24090056', 348600, '3', '', '24090056202506271200'),
(1656, '2025-07-07 00:00:00', '24090025', '24090038', 80000, '1', '', '24090038202507071200'),
(1658, '2025-06-08 00:00:00', '24090025', '24090038', 64000, '3', '', '24090038202506081200'),
(1660, '2025-08-23 00:00:00', '24090026', '24090056', 79000, '1', '', '24090056202508231200'),
(1662, '2025-07-01 00:00:00', '24090016', '24090038', 700000, '3', '', '24090038202507011200'),
(1663, '2025-04-27 00:00:00', '24090002', '24090038', 80000, '3', '', '24090038202504271200'),
(1664, '2025-06-02 00:00:00', '24090026', '24090056', 390500, '3', '', '24090056202506021200'),
(1665, '2025-03-08 00:00:00', '24090002', '24090038', 160000, '1', '', '24090038202503081200'),
(1666, '2025-07-27 00:00:00', '24090016', '24090038', 35000, '3', '', '24090038202507271200'),
(1667, '2025-06-20 00:00:00', '24090026', '24090056', 160000, '3', '', '24090056202506201200'),
(1671, '2025-11-12 00:00:00', '24090025', '24090038', 0, '2', '', '24090038202511121200'),
(1672, '2025-07-23 00:00:00', '24090026', '24090056', 102880, '3', '', '24090056202507231200'),
(1673, '2025-10-23 00:00:00', '24090004', '24090038', 316000, '1', '', '24090038202501061200'),
(1674, '2025-07-26 00:00:00', '24090013', '24090038', 1070000, '1', '', '24090038202507261200'),
(1681, '2025-09-23 00:00:00', '24090026', '24090056', 100500, '3', '', '24090056202509231200'),
(1706, '2025-09-05 00:00:00', '24090013', '24090038', 2790500, '1', '', '24090038202509051200'),
(1715, '2025-10-08 00:00:00', '24090013', '24090038', 3719500, '2', '', '24090038202510081200'),
(1716, '2025-06-24 00:00:00', '24090013', '24090038', 412000, '1', '', '24090038202506241200'),
(1720, '2025-07-30 00:00:00', '24090013', '24090038', 1499500, '2', '', '24090038202507301200'),
(1727, '2025-07-21 00:00:00', '24090013', '24090038', 4000, '2', '', '24090038202507211200'),
(1731, '2025-09-02 00:00:00', '24090025', '24090038', 279000, '1', '', '24090038202509021200'),
(1732, '2025-05-12 00:00:00', '24090133', '24090131', 1088000, '1', '', '24090131202505121200'),
(1733, '2025-05-14 00:00:00', '24090133', '24090131', 774000, '1', '', '24090131202505141200'),
(1734, '2025-05-17 00:00:00', '24090133', '24090131', 172000, '2', '', '24090131202505171200'),
(1735, '2025-05-19 00:00:00', '24090133', '24090131', 311000, '3', '', '24090131202505191200'),
(1741, '2025-11-10 00:00:00', '24090013', '24090038', 3262500, '2', '', '24090038202511101200'),
(1742, '2025-11-11 00:00:00', '24090013', '24090038', 2856000, '2', '', '24090038202511111200'),
(1745, '2025-09-22 00:00:00', '24090013', '24090038', 3434000, '2', '', '24090038202509221200'),
(1747, '2025-05-08 00:00:00', '24090133', '24090131', 198000, '3', '', '24090131202505081200'),
(1749, '2025-05-10 00:00:00', '24090133', '24090131', 237000, '3', '', '24090131202505101200'),
(1750, '2025-05-16 00:00:00', '24090133', '24090131', 527000, '3', '', '24090131202505161200'),
(1751, '2025-05-21 00:00:00', '24090133', '24090131', 224200, '3', '', '24090131202505211200'),
(1752, '2025-05-24 00:00:00', '24090133', '24090131', 139000, '2', '', '24090131202505241200'),
(1753, '2025-05-30 00:00:00', '24090133', '24090131', 128000, '3', '', '24090131202505301200'),
(1766, '2025-10-07 00:00:00', '24090004', '24090038', 321000, '1', '', '24090038202501021200'),
(1767, '2025-10-28 00:00:00', '24090004', '24090038', 100000, '1', '', '24090038202501241200'),
(1768, '2025-11-03 00:00:00', '24090004', '24090038', 525500, '2', '', '24090038202501261200'),
(1774, '2024-11-09 00:00:00', '24090032', '24090038', 204000, '2', '', '24090038202411091200'),
(1780, '2025-07-08 00:00:00', '24090032', '24090038', 498000, '3', '', '24090038202507081200'),
(1784, '2025-10-19 00:00:00', '24090004', '24090038', 369500, '3', '', '24090038202501171200'),
(1785, '2025-10-21 00:00:00', '24090004', '24090038', 140800, '3', '', '24090038202501151200'),
(1786, '2025-10-30 00:00:00', '24090004', '24090038', 347500, '3', '', '24090038202501251200'),
(1787, '2025-11-02 00:00:00', '24090004', '24090038', 320500, '2', '', '24090038202501281200'),
(1789, '2025-02-06 00:00:00', '24090032', '24090038', 750000, '1', '', '24090038202502061200'),
(1791, '2025-08-10 00:00:00', '24090032', '24090038', 1050000, '3', '', '24090038202505291200'),
(1794, '2025-01-30 00:00:00', '24090032', '24090038', 417000, '1', '', '24090038202501301200'),
(1796, '2025-05-22 00:00:00', '24090032', '24090038', 432000, '1', '', '24090038202505221200'),
(1800, '2025-06-11 00:00:00', '24090032', '24090038', 290000, '3', '', '24090038202506111200'),
(1801, '2025-04-10 00:00:00', '24090032', '24090038', 380000, '3', '', '24090038202504101200'),
(1802, '2025-03-10 00:00:00', '24090032', '24090038', 350000, '2', '', '24090038202503101200'),
(1822, '2025-08-05 00:00:00', '24090006', '24090038', 732500, '1', '', '24090038202508051200'),
(1827, '2025-06-21 00:00:00', '24090006', '24090038', 123500, '1', '', '24090038202506211200'),
(1833, '2025-08-19 00:00:00', '24090006', '24090038', 292500, '1', '', '24090038202508191200'),
(1835, '2025-09-25 00:00:00', '24090006', '24090038', 178000, '1', '', '24090038202509251200'),
(1854, '2025-10-20 00:00:00', '24090006', '24090038', 104500, '1', '', '24090038202510201200'),
(1855, '2025-10-07 00:00:00', '24090045', '24090056', 3500, '1', '', '24090056202510071200'),
(1861, '2025-07-09 00:00:00', '24090113', '24090131', 64000, '1', '', '24090131202507091200'),
(1865, '2025-07-21 00:00:00', '24090113', '24090131', 90000, '2', '', '24090131202507211200'),
(1883, '2025-08-02 00:00:00', '24090113', '24090131', 100000, '2', '', '24090131202508021200'),
(1884, '2025-08-23 00:00:00', '24090113', '24090131', 70000, '1', '', '24090131202508231200'),
(1887, '2025-09-02 00:00:00', '24090113', '24090131', 48800, '2', '', '24090131202509021200'),
(1891, '2025-09-19 00:00:00', '24090113', '24090131', 93000, '1', '', '24090131202509191200'),
(1929, '2025-10-14 00:00:00', '24090113', '24090131', 58000, '2', '', '24090131202510141200'),
(1948, '2025-09-20 00:00:00', '24090014', '24090038', 500000, '3', '', '24090038202509201200'),
(1951, '2025-05-28 00:00:00', '24090014', '24090038', 1205000, '3', '', '24090038202505281200'),
(1963, '2025-07-22 00:00:00', '24090014', '24090038', 140000, '2', '', '24090038202507221200'),
(1964, '2025-10-16 00:00:00', '24090014', '24090038', 84000, '1', '', '24090038202510161200'),
(1965, '2025-07-24 00:00:00', '24090014', '24090038', 630000, '2', '', '24090038202507241200'),
(1968, '2025-06-30 00:00:00', '24090014', '24090038', 525000, '1', '', '24090038202506031200'),
(1983, '2025-08-22 00:00:00', '24090118', '24090131', 96000, '1', '', '24090131202508221200'),
(1985, '2025-08-24 00:00:00', '24090118', '24090131', 105000, '1', '', '24090131202508241200'),
(2042, '2025-09-04 00:00:00', '24090123', '24090131', 23000, '3', '', '24090131202509041200'),
(2063, '2025-03-24 00:00:00', '24090074', '24090138', 515000, '2', '', '24090138202503241200'),
(2064, '2025-04-24 00:00:00', '24090074', '24090138', 407000, '2', '', '24090138202504241200'),
(2065, '2025-07-28 00:00:00', '24090074', '24090138', 129000, '2', '', '24090138202507281200'),
(2066, '2025-07-26 00:00:00', '24090074', '24090138', 250900, '2', '', '24090138202507261200'),
(2068, '2025-07-12 00:00:00', '24090074', '24090138', 47500, '2', '', '24090138202507121200'),
(2081, '2025-02-20 00:00:00', '24090074', '24090138', 471000, '1', '', '24090138202502201200'),
(2082, '2025-05-28 00:00:00', '24090074', '24090138', 775000, '2', '', '24090138202505281200'),
(2083, '2025-06-29 00:00:00', '24090074', '24090138', 400000, '2', '', '24090138202506291200'),
(2091, '2025-07-01 00:00:00', '24090074', '24090138', 25000, '1', '', '24090138202507011200'),
(2145, '2025-11-07 00:00:00', '24090011', '24090038', 606600, '2', '', '24090038202511071200'),
(2149, '2025-10-10 00:00:00', '24090011', '24090038', 421500, '1', '', '24090038202410101200'),
(2150, '2025-09-19 00:00:00', '24090011', '24090038', 686000, '3', '', '24090038202509191200'),
(2152, '2025-07-27 00:00:00', '24090011', '24090038', 80000, '1', '', '24090038202411081200'),
(2153, '2025-08-15 00:00:00', '24090011', '24090038', 110000, '2', '', '24090038202411231200'),
(2156, '2025-11-01 00:00:00', '24090011', '24090038', 36000, '3', '', '24090038202411221200'),
(2172, '2025-10-14 00:00:00', '24090011', '24090038', 290000, '1', '', '24090038202411151200'),
(2174, '2025-09-22 00:00:00', '24090011', '24090038', 8000, '1', '', '24090038202411161200'),
(2181, '2025-10-04 00:00:00', '24090023', '24090056', 490900, '1', '', '24090056202510041200'),
(2182, '2025-09-06 00:00:00', '24090023', '24090056', 149900, '1', '', '24090056202509061200'),
(2183, '2025-07-05 00:00:00', '24090023', '24090056', 253000, '1', '', '24090056202507051200'),
(2184, '2025-10-11 00:00:00', '24090023', '24090056', 258000, '1', '', '24090056202510111200'),
(2190, '2025-06-10 00:00:00', '24090108', '24090131', 45000, '1', '', '24090131202506101200'),
(2192, '2025-06-23 00:00:00', '24090108', '24090131', 55000, '2', '', '24090131202506231200'),
(2197, '2025-07-12 00:00:00', '24090108', '24090131', 1000000, '2', '', '24090131202507121200'),
(2201, '2025-08-02 00:00:00', '24090023', '24090056', 230000, '1', '', '24090056202508021200'),
(2202, '2025-06-07 00:00:00', '24090023', '24090056', 212904, '1', '', '24090056202506071200'),
(2203, '2025-09-13 00:00:00', '24090023', '24090056', 150375, '1', '', '24090056202509131200'),
(2205, '2025-08-09 00:00:00', '24090023', '24090056', 218100, '1', '', '24090056202508091200'),
(2208, '2025-08-07 00:00:00', '24090023', '24090056', 187000, '1', '', '24090056202508071200'),
(2222, '2025-07-25 00:00:00', '24090108', '24090131', 100000, '3', '', '24090131202507251200'),
(2228, '2025-07-02 00:00:00', '24090108', '24090131', 540000, '3', '', '24090131202507021200'),
(2241, '2025-10-02 00:00:00', '24090039', '24090056', 2875000, '3', '', '24090056202510021200'),
(2262, '2025-09-05 00:00:00', '24090039', '24090056', 2975000, '3', '', '24090056202509051200'),
(2263, '2025-10-06 00:00:00', '24090039', '24090056', 2584020, '2', '', '24090056202510061200'),
(2264, '2025-10-08 00:00:00', '24090039', '24090056', 0, '1', '', '24090056202510081200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `QTY` int(11) NOT NULL DEFAULT 1,
  `PRICE` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`QTY`, `PRICE`, `ORDER_ID`, `PRODUCT_ID`) VALUES
(2, 20000, 230, 2511),
(1, 7000, 232, 2437),
(2, 110000, 234, 2536),
(3, 48000, 234, 2577),
(5, 95000, 254, 2231),
(2, 75000, 258, 2716),
(5, 45000, 261, 2642),
(1, 45000, 285, 2642),
(3, 40000, 320, 2404),
(2, 95000, 322, 2231),
(1, 110000, 328, 2413),
(5, 17000, 336, 2498),
(1, 28000, 343, 2611),
(4, 28000, 343, 2684),
(5, 50000, 389, 2457),
(5, 24300, 393, 2766),
(5, 20000, 398, 2511),
(2, 28000, 398, 2611),
(1, 110000, 561, 2413),
(5, 97000, 576, 2480),
(3, 110000, 598, 2413),
(5, 40000, 620, 2616),
(3, 35000, 625, 2184),
(3, 25000, 698, 2597),
(1, 98000, 699, 2332),
(2, 97000, 787, 2480),
(3, 24300, 849, 2766),
(5, 48000, 853, 2674),
(5, 25000, 854, 2377),
(5, 110000, 854, 2536),
(5, 28000, 876, 2143),
(5, 25000, 876, 2377),
(5, 32000, 876, 2666),
(5, 12000, 877, 2540),
(3, 95000, 890, 2231),
(5, 28000, 905, 2611),
(5, 28000, 917, 2611),
(1, 110000, 931, 2536),
(5, 23000, 948, 2294),
(4, 48000, 956, 2577),
(1, 40000, 965, 2616),
(1, 25000, 965, 2726),
(2, 28000, 974, 2143),
(5, 50000, 974, 2457),
(2, 15000, 974, 2483),
(2, 7000, 983, 2437),
(2, 15000, 983, 2483),
(1, 28000, 983, 2611),
(3, 95000, 989, 2231),
(5, 98000, 1001, 2332),
(1, 98000, 1023, 2332),
(2, 12000, 1023, 2540),
(5, 32000, 1023, 2666),
(1, 29900, 1040, 2568),
(1, 45000, 1084, 2313),
(2, 7000, 1084, 2437),
(5, 81500, 1096, 2520),
(4, 40000, 1104, 2616),
(1, 110000, 1135, 2413),
(1, 50000, 1135, 2457),
(4, 45000, 1182, 2320),
(4, 24300, 1182, 2766),
(1, 28000, 1194, 2611),
(1, 40000, 1199, 2616),
(2, 95000, 1200, 2231),
(2, 40000, 1200, 2404),
(1, 48000, 1201, 2674),
(1, 8000, 1202, 2153),
(2, 97000, 1202, 2480),
(2, 81500, 1244, 2520),
(1, 110000, 1244, 2536),
(4, 40000, 1248, 2179),
(1, 120000, 1252, 2211),
(1, 110000, 1252, 2413),
(5, 110000, 1300, 2413),
(3, 23000, 1314, 2294),
(5, 24300, 1316, 2766),
(1, 70000, 1317, 2355),
(1, 97000, 1317, 2480),
(1, 40000, 1317, 2616),
(1, 70000, 1330, 2355),
(1, 28000, 1344, 2143),
(1, 24300, 1345, 2766),
(3, 5000, 1349, 2398),
(5, 95000, 1365, 2231),
(5, 65000, 1365, 2412),
(3, 40000, 1374, 2616),
(2, 70000, 1375, 2355),
(1, 23000, 1386, 2294),
(5, 25000, 1387, 2726),
(1, 40000, 1397, 2404),
(2, 28000, 1397, 2611),
(3, 22000, 1400, 2168),
(2, 81500, 1409, 2520),
(1, 28000, 1421, 2611),
(3, 28000, 1430, 2611),
(5, 35000, 1440, 2160),
(2, 17000, 1440, 2498),
(4, 28000, 1444, 2611),
(2, 45000, 1444, 2642),
(5, 98000, 1458, 2332),
(5, 50000, 1458, 2457),
(4, 35000, 1486, 2184),
(4, 40000, 1493, 2616),
(3, 40000, 1505, 2404),
(2, 45000, 1514, 2320),
(5, 28000, 1537, 2143),
(2, 28000, 1539, 2611),
(1, 15000, 1544, 2483),
(5, 110000, 1563, 2413),
(5, 40000, 1586, 2179),
(5, 28000, 1607, 2611),
(4, 40000, 1610, 2616),
(5, 40000, 1611, 2616),
(4, 45000, 1626, 2320),
(1, 95000, 1629, 2231),
(1, 98000, 1629, 2332),
(1, 110000, 1629, 2413),
(1, 81500, 1629, 2520),
(1, 95000, 1631, 2231),
(3, 15000, 1633, 2483),
(1, 45000, 1652, 2320),
(1, 70000, 1652, 2355),
(1, 81500, 1652, 2520),
(1, 28000, 1658, 2611),
(2, 40000, 1663, 2404),
(1, 40000, 1672, 2404),
(1, 15000, 1672, 2483),
(4, 28000, 1674, 2611),
(5, 110000, 1715, 2413),
(5, 28000, 1715, 2611),
(3, 97000, 1735, 2480),
(5, 81500, 1741, 2520),
(5, 97000, 1742, 2480),
(5, 98000, 1745, 2332),
(3, 45000, 1752, 2320),
(4, 110000, 1768, 2413),
(3, 45000, 1784, 2320),
(1, 70000, 1786, 2355),
(2, 70000, 1963, 2355),
(3, 28000, 1964, 2611),
(3, 15000, 1985, 2483),
(2, 45000, 2063, 2506),
(2, 18000, 2182, 2554),
(1, 110000, 2183, 2413),
(1, 97000, 2201, 2480),
(1, 70000, 2202, 2355),
(1, 50000, 2202, 2457),
(1, 23000, 2205, 2439),
(1, 65000, 2208, 2412),
(5, 95000, 2263, 2231),
(5, 98000, 2263, 2332);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `METHOD_ID` char(1) NOT NULL,
  `METHOD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`METHOD_ID`, `METHOD`) VALUES
('1', 'Tunai'),
('2', 'Transfer'),
('3', 'QRIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(40) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CATEGORY_ID` char(2) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `CREATED_BY` varchar(40) NOT NULL,
  `UPDATED_AT` date NOT NULL,
  `UPDATED_BY` varchar(40) NOT NULL,
  `STOCK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_NAME`, `PRICE`, `CATEGORY_ID`, `CREATED_AT`, `CREATED_BY`, `UPDATED_AT`, `UPDATED_BY`, `STOCK`) VALUES
(2143, 'Eyelash Curler', 28000, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 87),
(2153, 'Spons Makeup', 8000, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3C', 99),
(2160, 'Masker Sheet Kolagen & Vitamin C', 35000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 95),
(2168, 'Vaseline Lip Therapy Balm Stick 5g', 22000, 'LC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 97),
(2179, 'Kahf 50nl', 40000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 91),
(2184, 'Lip Balm Nivea 5gr', 35000, 'LC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 93),
(2191, 'Sunscreen Wardah Spf 35', 31000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2195, 'Pond\'S Bb Magic Powder 50gr', 40500, 'MK', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2203, 'The Originote Serum', 20000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2211, 'Serum Wajah Glowmist Botanical', 120000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 99),
(2231, 'Facetology Triple Care 30ml', 95000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 73),
(2294, 'Kahf Facewash Oil And Acne Care 50ml', 23000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 91),
(2313, 'Sunscreen Azarine Spf 35+ (30ml)', 45000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 99),
(2320, 'Garnier Micellar Water 125 Ml', 45000, 'MW', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 78),
(2327, 'Sabun Muka Kahf', 45000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2328, 'Handbody Vaseline 200ml', 30000, 'BC', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 100),
(2329, 'Sunscreen Skintific 200ml', 30000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2332, 'Emina Daily Matte Cushion C01 Light', 98000, 'MK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 77),
(2343, 'Kahf Acne Care Face Wash', 20000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2355, 'Eyes Shadow Merk Hanasui', 70000, 'MK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 91),
(2377, 'Maskara Xi Xiu', 25000, 'MK', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 90),
(2398, 'Kapas Wajah', 5000, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 97),
(2404, 'Body Lotion Vaseline', 40000, 'BC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 88),
(2412, 'Sunscreen Wardah 50 Spf', 65000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 94),
(2413, 'Elformula Moisturizer Gel', 110000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 72),
(2437, 'Diri	Rexona Deodorant Roll On 45 Ml', 7000, 'BC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 95),
(2439, 'Toner Npure Acne Face 30ml', 23000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 99),
(2457, 'Focallure Brush Set', 50000, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', -187),
(2480, 'Cushion', 97000, 'MK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 81),
(2483, 'Baby Powder', 15000, 'MK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 88),
(2498, 'Deodoran Roll', 17000, 'BC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 93),
(2506, 'Ms Glow For Men Facial Wash 100ml', 45000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3C', 98),
(2511, 'Micellar Water Travel Size', 20000, 'MW', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3C', 93),
(2520, 'Face Massage Beauty Device 5-In-1', 81500, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 84),
(2536, 'Natur-E Skin Active Beauty White 32pcs', 110000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 91),
(2540, 'Milk Cleanser Viva 200l', 12000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 93),
(2554, 'Wardah Perfect Bright Moisturizer 20ml', 18000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3B', 98),
(2558, 'Shinzui Bar Soap 80gr', 10000, 'BC', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2568, 'Makarizo Hair Energy', 29900, 'HC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 99),
(2577, 'Wardah Eyebrow Pencil Brown 0.31 Gr', 48000, 'AC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3D', 93),
(2597, 'Garnier Men 100ml', 25000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3C', 97),
(2611, 'Acne Patch 24pcs', 28000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 55),
(2616, 'Glad2glow Mugwort Clay 25gram', 40000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 72),
(2623, 'Viva Whitening Cream 15gr', 20000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'papa', 100),
(2642, 'Sunscreen Facetology', 45000, 'SC', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 87),
(2666, 'Lip Balm Wardah', 32000, 'LC', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 90),
(2674, 'Micelar Water Garnier 120ml', 48000, 'MW', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 94),
(2684, 'Wardah Lip Balm', 28000, 'LC', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 96),
(2695, 'Masker Wajah Emina', 10000, 'SK', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 100),
(2716, 'Scarlett Brightening Facial Wash 100ml', 75000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'PAPA', 98),
(2726, 'Wardah Lightening Facial Foam', 25000, 'CL', '2025-10-31', 'papa', '2025-11-16', 'KASIR_3A', 94),
(2766, 'Hanasui Collagen Water Sunscreen', 24300, 'SC', '2025-11-01', 'rafifaiz381@gmail.com', '2025-11-16', 'KASIR_3A', 82);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `CATEGORY_ID` char(2) NOT NULL,
  `CATEGORY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`CATEGORY_ID`, `CATEGORY`) VALUES
('AC', 'Alat Kecantikan'),
('BC', 'Body Care'),
('CL', 'Cleanser'),
('HC', 'Hair Care'),
('LC', 'Lip Care'),
('MK', 'Makeup'),
('MW', 'Micellar Water'),
('SK', 'Skincare'),
('SC', 'Suncreen');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cashiers`
--
ALTER TABLE `cashiers`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `EML_UN` (`EMAIL`),
  ADD UNIQUE KEY `CN_UN` (`CONTACT_NUMBER`),
  ADD KEY `GENDER_FK` (`GENDER_ID`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUST_ID`),
  ADD UNIQUE KEY `CONTACT_NUMBER_UN` (`CONTACT_NUMBER`),
  ADD UNIQUE KEY `EMAIL_UN` (`EMAIL`),
  ADD KEY `GENDER_ID_FK` (`GENDER_ID`);

--
-- Indeks untuk tabel `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`GENDER_ID`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD UNIQUE KEY `RECEIPT_NUMBER_UN` (`RECEIPT_NUMBER`),
  ADD KEY `CUST_ID_FK` (`CUST_ID`),
  ADD KEY `METHOD_ID_FK` (`METHOD_ID`),
  ADD KEY `USER_ID_FK` (`USER_ID`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ORDER_ID`,`PRODUCT_ID`),
  ADD KEY `PRODUCT_ID_FK` (`PRODUCT_ID`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`METHOD_ID`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD UNIQUE KEY `PRODUCT_NAME_UN` (`PRODUCT_NAME`),
  ADD KEY `CATEGORY_ID_FK` (`CATEGORY_ID`);

--
-- Indeks untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`CATEGORY_ID`),
  ADD UNIQUE KEY `CATEGORY_UN` (`CATEGORY`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2265;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2844;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cashiers`
--
ALTER TABLE `cashiers`
  ADD CONSTRAINT `GENDER_FK` FOREIGN KEY (`GENDER_ID`) REFERENCES `genders` (`GENDER_ID`);

--
-- Ketidakleluasaan untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `GENDER_ID_FK` FOREIGN KEY (`GENDER_ID`) REFERENCES `genders` (`GENDER_ID`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `CUST_ID_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customers` (`CUST_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `METHOD_ID_FK` FOREIGN KEY (`METHOD_ID`) REFERENCES `payment_methods` (`METHOD_ID`),
  ADD CONSTRAINT `USER_ID_FK` FOREIGN KEY (`USER_ID`) REFERENCES `cashiers` (`USER_ID`);

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `ORDER_ID_FK` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ID_FK` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `products` (`PRODUCT_ID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `CATEGORY_ID_FK` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `product_categories` (`CATEGORY_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
