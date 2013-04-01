-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 02. April 2013 jam 01:57
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prokus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_jenis_kelas` (
  `id_jenis_kelas` int(2) NOT NULL,
  `jenis_kelas` varchar(16) NOT NULL,
  PRIMARY KEY (`id_jenis_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_kelas`
--

INSERT INTO `tb_jenis_kelas` (`id_jenis_kelas`, `jenis_kelas`) VALUES
(1, 'reguler'),
(2, 'private'),
(3, 'studycase');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE IF NOT EXISTS `tb_karyawan` (
  `id_karyawan` int(3) NOT NULL,
  `nama_karyawan` varchar(32) NOT NULL,
  `phone_karyawan` varchar(15) NOT NULL,
  `email` varchar(32) NOT NULL,
  `id_person` int(2) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `nama_karyawan`, `phone_karyawan`, `email`, `id_person`) VALUES
(0, '', '', '', 0),
(1, 'joko', '2147483647', 'joko@yahoo.com', 0),
(2, 'joko', '957376', 'indheee@yahoo.co.id', 7),
(123, 'susanto', '089786765654', 'indheee@yahoo.co.id', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`) VALUES
('adminfo', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_person`
--

CREATE TABLE IF NOT EXISTS `tb_person` (
  `id_person` int(2) NOT NULL,
  `jenis_person` varchar(16) NOT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_person`
--

INSERT INTO `tb_person` (`id_person`, `jenis_person`) VALUES
(1, 'calon siswa'),
(2, 'siswa'),
(3, 'trainer'),
(4, 'FO'),
(5, 'keuangan'),
(6, 'manager'),
(7, 'karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_program`
--

CREATE TABLE IF NOT EXISTS `tb_program` (
  `id_program` int(3) NOT NULL,
  `nama_program` varchar(64) NOT NULL,
  `jumlah_sesi` int(2) NOT NULL,
  `id_jenis_kelas` int(2) NOT NULL,
  PRIMARY KEY (`id_program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_program`
--

INSERT INTO `tb_program` (`id_program`, `nama_program`, `jumlah_sesi`, `id_jenis_kelas`) VALUES
(1, 'Android Academy', 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` int(3) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(32) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `kampus` varchar(16) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_person` int(2) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama_siswa`, `phone`, `kampus`, `tgl_daftar`, `id_person`) VALUES
(3, 'jdjad', '99999', 'ds', '2013-03-22', 1),
(4, 'aku', '908888', 'uii', '2013-03-22', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
