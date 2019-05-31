-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2019 pada 05.12
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inpos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_barang`
--

CREATE TABLE `pos_barang` (
  `kd_barang` char(7) NOT NULL,
  `kd_kategori` char(3) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_barangmasuk`
--

CREATE TABLE `pos_barangmasuk` (
  `no_trans` int(11) NOT NULL,
  `tgl_trans` date NOT NULL,
  `no_faktursup` char(15) NOT NULL,
  `id_suplier` char(7) NOT NULL,
  `total` int(11) NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_barangmasukdetail`
--

CREATE TABLE `pos_barangmasukdetail` (
  `no_trans` int(11) NOT NULL,
  `no_batch` varchar(12) NOT NULL,
  `kd_barang` char(7) NOT NULL,
  `harga_beli` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_kategoribarang`
--

CREATE TABLE `pos_kategoribarang` (
  `kd_kategori` char(3) NOT NULL,
  `kategori_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_member`
--

CREATE TABLE `pos_member` (
  `id_member` char(10) NOT NULL,
  `tgl_member` date NOT NULL,
  `nama_member` varchar(45) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_penjualan`
--

CREATE TABLE `pos_penjualan` (
  `no_trans` int(11) NOT NULL,
  `tgl_trans` date NOT NULL,
  `id_member` char(10) NOT NULL,
  `total` float NOT NULL,
  `potongan` float NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_penjualandetail`
--

CREATE TABLE `pos_penjualandetail` (
  `no_trans` int(11) NOT NULL,
  `kd_barang` char(7) NOT NULL,
  `harga_jual` float NOT NULL,
  `qty` int(11) NOT NULL,
  `disc_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_suplier`
--

CREATE TABLE `pos_suplier` (
  `id_suplier` varchar(7) NOT NULL,
  `nama_suplier` varchar(45) NOT NULL,
  `owner` varchar(45) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `sale` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos_user`
--

CREATE TABLE `pos_user` (
  `id_user` char(10) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `lev_user` varchar(20) NOT NULL,
  `sta_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pos_user`
--

INSERT INTO `pos_user` (`id_user`, `nama_user`, `email`, `pass`, `lev_user`, `sta_aktif`) VALUES
('181530029', 'Tulus Subekti', 'tulus0776@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pos_barang`
--
ALTER TABLE `pos_barang`
  ADD PRIMARY KEY (`kd_barang`,`kd_kategori`);

--
-- Indeks untuk tabel `pos_barangmasuk`
--
ALTER TABLE `pos_barangmasuk`
  ADD PRIMARY KEY (`no_trans`,`id_user`,`id_suplier`);

--
-- Indeks untuk tabel `pos_barangmasukdetail`
--
ALTER TABLE `pos_barangmasukdetail`
  ADD PRIMARY KEY (`no_trans`,`kd_barang`);

--
-- Indeks untuk tabel `pos_kategoribarang`
--
ALTER TABLE `pos_kategoribarang`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indeks untuk tabel `pos_member`
--
ALTER TABLE `pos_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `pos_penjualan`
--
ALTER TABLE `pos_penjualan`
  ADD PRIMARY KEY (`no_trans`,`id_member`,`id_user`);

--
-- Indeks untuk tabel `pos_penjualandetail`
--
ALTER TABLE `pos_penjualandetail`
  ADD PRIMARY KEY (`no_trans`,`kd_barang`);

--
-- Indeks untuk tabel `pos_suplier`
--
ALTER TABLE `pos_suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indeks untuk tabel `pos_user`
--
ALTER TABLE `pos_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
