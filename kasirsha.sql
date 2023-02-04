SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirsha`


-- Struktur dari tabel `barang`


CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga_barang` varchar(250) NOT NULL,
  `tgl_input` datetime(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Struktur dari tabel `keranjang`

CREATE TABLE `keranjang` (
  `id_cart` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `quantity` text NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `tgl_input` datetime(255) NOT NULL,
  `no_transaksi` varchar(255) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `kembalian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Struktur dari tabel `laporanku`

CREATE TABLE `laporanku` (
  `id_cart` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `quantity` text NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `tgl_input` datetime(255) NOT NULL,
  `no_transaksi` varchar(255) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `kembalian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Struktur dari tabel `login`

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `user` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Indeks untuk tabel `barang`

ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`

ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `laporanku`

ALTER TABLE `laporanku`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `login`

ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);


-- AUTO_INCREMENT untuk tabel yang dibuang



-- AUTO_INCREMENT untuk tabel `barang`

ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;


-- AUTO_INCREMENT untuk tabel `keranjang`

ALTER TABLE `keranjang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;


-- AUTO_INCREMENT untuk tabel `laporanku`

ALTER TABLE `laporanku`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;


-- AUTO_INCREMENT untuk tabel `login`

ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
