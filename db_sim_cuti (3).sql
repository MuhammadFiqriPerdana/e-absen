-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2023 pada 20.12
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sim_cuti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `golongan` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`golongan`, `pangkat`) VALUES
('1a', 'Juru Muda'),
('1b', 'Juru Muda Tingkat 1'),
('1c', 'Juru'),
('1d', 'Juru Tingkat 1'),
('2a', 'Pengatur Muda'),
('2b', 'Pengatur Muda Tingkat 1'),
('2c', 'Pengatur'),
('2d', 'Pengatur Tingkat 1'),
('3a', 'Penata Muda'),
('3b', 'Penata Muda Tingkat 1'),
('3c', 'Penata'),
('3d', 'Penata Tingkat 1'),
('4a', 'Pembina'),
('4b', 'Pembina Tingkat 1'),
('4c', 'Pembina Muda'),
('4d', 'Pembina Madya'),
('4e', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `golongan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gaji` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `golongan`, `alamat`, `no_telp`, `email`, `gaji`) VALUES
('333', 'M. Reonald. S,Kom', '2b', 'Bjb', '02138137821', 'contoh@gmail.com', '2500000'),
('666', 'Cemara Puteri', '3a', 'bjb', '02138137821', 'contoh@gmail.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` varchar(50) NOT NULL,
  `jam_pulang` varchar(50) NOT NULL,
  `tunjangan` varchar(255) NOT NULL,
  `catatan` varchar(50) NOT NULL DEFAULT 'tanpa keterangan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_absensi`
--

INSERT INTO `tb_absensi` (`id`, `nip`, `nama`, `tanggal_absen`, `jam_masuk`, `jam_pulang`, `tunjangan`, `catatan`) VALUES
(251, '333', 'Mohamad Reonald. S,Kom', '2023-06-20', '09:21:02', '17:23:41', '20000', 'terlambat'),
(252, '333', 'Mohamad Reonald. S,Kom', '2023-06-21', '07:18:03', '19:18:44', '40000', 'hadir'),
(254, '333', 'Mohamad Reonald. S,Kom', '2023-06-22', '17:03:30', '-', '0', 'tanpa keterangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cuti`
--

CREATE TABLE `tb_cuti` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_cuti` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `surat_pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_cuti`
--

INSERT INTO `tb_cuti` (`id`, `nip`, `nama`, `tanggal_cuti`, `hari`, `tanggal_kembali`, `status`, `surat_pengajuan`) VALUES
(22, '333', 'Mohamad Reonald. S,Kom', '2023-02-01', '4', '2023-02-05', 'acc', '10601-30705-1-PB.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_uang_ganti`
--

CREATE TABLE `tb_uang_ganti` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `nota` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_uang_ganti`
--

INSERT INTO `tb_uang_ganti` (`id`, `nip`, `nama`, `tanggal_transaksi`, `nominal`, `nota`, `status`) VALUES
(24, '333', 'Mohamad Reonald. S,Kom', '2023-02-01', '1000', 'foto-nota-pembelian-kami.jpg', 'sedang proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hak_akses` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nip`, `nama`, `hak_akses`, `password`) VALUES
('333', 'Mohamad Reonald. S,Kom', 'user', '333'),
('666', 'Cemara Puteri', 'user', '666'),
('admin', 'admin', 'admin', 'admin'),
('humas', 'humas', 'humas', 'humas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`golongan`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `golongan` (`golongan`);

--
-- Indeks untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `tb_uang_ganti`
--
ALTER TABLE `tb_uang_ganti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT untuk tabel `tb_cuti`
--
ALTER TABLE `tb_cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_uang_ganti`
--
ALTER TABLE `tb_uang_ganti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`golongan`) REFERENCES `pangkat` (`golongan`);

--
-- Ketidakleluasaan untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD CONSTRAINT `tb_cuti_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `tb_uang_ganti`
--
ALTER TABLE `tb_uang_ganti`
  ADD CONSTRAINT `tb_uang_ganti_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
