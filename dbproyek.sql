-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2022 pada 11.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproyek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jenis_produk` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `detail_produk` varchar(500) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jenis_produk`, `stok`, `harga`, `detail_produk`, `gambar`) VALUES
(110, 'Rita Fashion Selena (Pashmina Plisket)', 'Hijab', 200, 25000, 'Bahan : Plisket \r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nUkuran: 110x110cm\r\nRita Fashion Selena (Pashmina Plisket)\r\nHijab segiempat paling terbestseller di Rita Fashion, hijab ternyaman dengan harga terjangkau dan pastinya dengan kualitas yang kece banget.', 'selena.jpeg'),
(111, 'Rita Fashion Bella Square', 'Hijab', 100, 15000, 'Bahan : Pollycotton \r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nUkuran: 110x110cm\r\nHijab segiempat paling terbestseller di Rita Fashion, hijab ternyaman dengan harga terjangkau dan pastinya dengan kualitas yang kece banget.', 'bellasquare.jpeg'),
(112, 'Rita Fashion Khimar Shakira', 'Hijab', 120, 20000, 'Bahan : Diamond Crepe\r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nNew Collection KHIMAR SHAKIRA !!\r\nHijab daily yang nyaman banget dipakai sehari hari, sekali slup pastinya langsung nyaman dan cantik banget', 'shakira.jpeg'),
(113, 'Rita Fashion Emira Premium Bergo', 'Hijab', 100, 15000, 'Bahan : Jersey Premium\r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nAda yang baru lagi nih dari Rita Fashion, hijab bergo yang nyaman dipakai buat olahraga karena bahannya super nyaman ringan cocok buat dipakai daily', 'emira.jpeg'),
(114, 'Rita Fashion Alana Khimar', 'Hijab', 200, 38000, 'Bahan : Lady Zara\r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nNew Collection KHIMAR ALANA !!\r\nHijab daily yang nyaman banget dipakai sehari hari, sekali slup pastinya langsung nyaman dan cantik banget sist, Apalagi dengan Cutting yang cantik banget buat penampilan kamu semakin keliatan ramping.', 'alana.jpeg'),
(115, 'Rita Fashion Kirana Instan', 'Hijab', 180, 22000, 'Bahan : Diamond Crepe\r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nukuran : 115 x 115\r\nKirana, hijab segiempat instan yang udah dijahit dibawah dagunya dan sisi kanan kiri ujung hijabnya masih bisa kamu bentuk sesuka hati', 'kirana.jpeg'),
(116, 'Rita Fashion Aqila Khimar', 'Hijab', 150, 40000, 'Bahan : Diamond Crepe\r\nMotif : Polos\r\nWarna : Ungu, hijau, kuning, merah muda, cokelat, biru, abu-abu, hitam, merah, putih, nude, pink, oranye\r\nukuran : 80 x 100\r\nYang ditunggu-tunggu !\r\nAqilla Khimar, Khimar yang simple banget tapi nyaman banget karena tidak menggunakan ped buda sama sekali dan memiliki ukuran panjang sehingga nyaman banget dipakai.', 'aqila.jpeg'),
(117, 'Rita Fashion Malika Khimar (2 Layer)', 'Hijab', 100, 34000, 'Bahan : Diamond Crepe\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nKhimar Malika, hijab instan yang terbuat dari diamond crepe yang cantik banget, tekstur bahannya lembut adem dan jatuh banget loh say. Pastinya sekali slup tanpa pentul langsung cantik deh', 'malika.jpeg'),
(118, 'Rita Fashion Manset Leher', 'Aksesoris', 50, 14000, 'Bahan : Kaos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nInner leher dan dada, sangat nyaman dipakai sebagai penutup leher dan dada dengan kualitas kaos yang premium dan super nyaman dipakai', 'manset.jpeg'),
(119, 'Rita Fashion Bandana Basic', 'Aksesoris', 100, 12000, 'Bahan : Kaos Rayon\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nYang baru lagi nih beb dari Rita Fashion ada iner hijab basic, menggunakan bahan Kaos rayon yang nyaman banget pas dipakai', 'bandana.jpeg'),
(120, 'Rita Fashion Scrunchie', 'Aksesoris', 60, 10000, 'Tipe paket : Satuan\r\nBahan : Kain, lainnya\r\nYeay Gemes banget sama Scrunchie dari Rita Fashion !!\r\nJujur deh ini best seller banget di offline store Rita Fashion, karena bahannya super duper enak banget adem gak panas gak licin dan pastinya karetnya super enak banget karena gak bikin pusing dan rontok sama sekali. Kalian wajib banget punya minimal 1 aja deh pasti kalian ketagihan sama scrunchie dari Rita Fashion ini', 'scrunchie.jpeg'),
(121, 'Rita Fashion Ciput Rajut', 'Aksesoris', 120, 12000, 'Bahan : Rajut\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nNyaman dipakai, Anti pusing, Bahan halus dan tebal, pastinya gak mudah melar yah say. Langsung order aja yah say, jangan sampe kehabisan. Kapan lagi dapat ciput kualitas premium harga murah meriah say', 'ciput.jpeg'),
(122, 'Rita Fashion Venitas Top', 'Blouse', 300, 98000, 'Bahan : Ceruty Babydoll\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Venitas Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'venitastop.jpeg'),
(123, 'Rita Fashion Anata Top', 'Blouse', 200, 105000, 'Bahan : Shakila\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Anata Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'anatatop.jpeg'),
(124, 'Rita Fashion Ariza Top', 'Blouse', 120, 80000, 'Bahan : Ceruty\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Ariza Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'arizatop.jpeg'),
(125, 'Rita Fashion Leany Top', 'Blouse', 100, 78000, 'Bahan : Cotton Rayon Crickle\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Leany Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'leanytop.jpeg'),
(126, 'Rita Fashion Bina Top', 'Blouse', 120, 69000, 'Bahan : Ceruty Babydoll\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Bina Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'binatop.jpeg'),
(127, 'Rita Fashion Nisrina Top', 'Blouse', 180, 89000, 'Bahan :Flanel Import Premium\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Nisrina Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'nisrinatop.jpeg'),
(128, 'Rita Fashion Fatin Top', 'Blouse', 180, 70000, 'Bahan : Shakila\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Fatin Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'fatintop.jpeg'),
(129, 'Rita Fashion Efela Top', 'Blouse', 150, 89000, 'Bahan : Ceruty Babydoll\r\nUkuran : S, M, L, XL\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Efela Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'efelatop.jpeg'),
(130, 'Rita Fashion Tifa Dress', 'Dress', 100, 149000, 'Bahan : Katun\r\nUkuran : All size\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'tifadress.jpeg'),
(131, 'Rita Fashion Casia Midi Dress', 'Dress', 200, 119000, 'Bahan : Crepe premium\r\nUkuran : All size\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Crepe premium yang super adem dan nyaman banget', 'casiadress.jpeg'),
(132, 'Rita Fashion Marwa Dress', 'Dress', 80, 160000, 'Bahan : Ceruty\r\nUkuran : All size\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Ceruty yang super adem dan nyaman banget', 'marwadress.jpeg'),
(133, 'Rita Fashion Vashi Set', 'Dress', 150, 169000, 'Bahan : Katun\r\nUkuran : All size\r\nWarna : warna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'vashiset.jpeg'),
(134, 'Rita Fashion Kania Top', 'Blouse', 220, 99000, 'Bahan : Ceruty Babydoll\r\nUkuran : S, M, L, XL\r\nMotif : Polos\r\nNadiraa Hijab Kania Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'kaniatop.jpeg'),
(135, 'Rita Fashion Serya Top', 'Blouse', 110, 86000, 'Bahan : Ceruty Babydoll\r\nUkuran : S, M, L, XL\r\nMotif : Polos\r\nNadiraa Hijab Serya Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'seryatop.jpeg'),
(136, 'Rita Fashion Jesa Top', 'Blouse', 250, 95000, 'Bahan : Hyget Premium\r\nUkuran : S, M, L, XL\r\nMotif : Polos\r\nNadiraa Hijab Jesa Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'jesatop.jpeg'),
(137, 'Rita Fashion Evana Top', 'Blouse', 100, 77000, 'Bahan : Shakila\r\nUkuran : S, M, L, XL\r\nMotif : Polos\r\nNadiraa Hijab Evana Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily', 'evanatop.jpeg'),
(138, 'Rita Fashion Rania Shawl', 'Hijab', 200, 55000, 'Bahan : Diamond crepe\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Rania Shawl\r\nhijab yang terbuat dari diamond crepe yang cantik banget, tekstur bahannya lembut adem dan jatuh banget loh say.', 'rania.jpeg'),
(139, 'Rita Fashion Thalita Shawl', 'Hijab', 120, 33000, 'Bahan : Diamond crepe\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Thalita Shawl\r\nhijab yang terbuat dari diamond crepe yang cantik banget, tekstur bahannya lembut adem dan jatuh banget loh say.', 'thalita.jpeg'),
(140, 'Rita Fashion Azima Shawl', '', 150, 40000, 'Bahan : Diamond crepe\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nNadiraa Hijab Azima Shawl\r\nhijab yang terbuat dari diamond crepe yang cantik banget, tekstur bahannya lembut adem dan jatuh banget loh say, cantik dipakenya.', 'azima.jpeg'),
(141, 'Rita Fashion Khimar Dahlia', 'Hijab', 180, 28000, 'Bahan : Ceruty babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nKhimar Dahlia, hijab instan yang terbuat dari ceruty babydoll yang cantik banget, tekstur bahannya lembut adem dan jatuh banget loh say. Pastinya sekali slup tanpa pentul langsung cantik deh', 'dahlia.jpeg'),
(142, 'Rita Fashion Paola Top', 'Blouse', 90, 105000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Paola Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'paolatop.jpeg'),
(143, 'Rita Fashion Airin Top', 'Blouse', 200, 120000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Airin Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'airintop.jpeg'),
(144, 'Rita Fashion Estie Top', 'Blouse', 135, 100000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Estie Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'estietop.jpeg'),
(145, 'Rita Fashion Ero Top', 'Blouse', 60, 98000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Ero Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'erotop.jpeg'),
(146, 'Rita Fashion Thara Dress', 'Dress', 500, 156000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'tharadress.jpeg'),
(147, 'Rita Fashion Maysara Dress', 'Dress', 170, 188000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'maysaradress.jpeg'),
(148, 'Rita Fashion Monica Dress', 'Dress', 100, 129000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'monicadress.jpeg'),
(149, 'Rita Fashion Anjumi Dress', 'Dress', 220, 145000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'anjumidress.jpeg'),
(150, 'Rita Fashion Damira Dress', 'Dress', 50, 156000, 'Bahan : Diamond Crepe\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'damiradress.jpeg'),
(151, 'Rita Fashion Kamalia Dress', 'Dress', 200, 198000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'kamaliadress.jpeg'),
(152, 'Rita Fashion Tazkia Dress', 'Dress', 150, 167000, 'Bahan : Katun\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'tazkiadress.jpeg'),
(153, 'Rita Fashion Nadra Dress', 'Dress', 135, 180000, 'Bahan : Ceruty Premium\r\nMotif : Polos\r\nUkuran : Allsize\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nDress secantik ini dengan harga murah aja sist, pokoknya jangan sampe kehabisan yah karena ini bener bener bagus , bahannya super juara banget karena menggunakan bahan Katun yang super adem dan nyaman banget', 'nadradress.jpeg'),
(154, 'Rita Fashion Rilla Top', 'Blouse', 200, 99000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Rilla Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'rillatop.jpeg'),
(155, 'Rita Fashion Erika Top', 'Blouse', 60, 68000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Erika Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'erikatop.jpeg'),
(156, 'Rita Fashion Aforta Top', 'Blouse', 300, 150000, 'Bahan : Hyget Premium\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Aforta Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'afortatop.jpeg'),
(157, 'Rita Fashion Bunny Top', 'Blouse', 45, 134000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Bunny Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'bunnytop.jpeg'),
(158, 'Rita Fashion Harma Top', 'Blouse', 120, 80000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Harma Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'harmatop.jpeg'),
(159, 'Rita Fashion Nisaka Top', 'Blouse', 90, 110000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Nisaka Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'nisakatop.jpeg'),
(160, 'Rita Fashion Berly Top', 'Blouse', 70, 90000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Hijab Berly Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'berlytop.jpeg'),
(161, 'Rita Fashion Dreamy Top', 'Blouse', 200, 99000, 'Bahan : Ceruty Babydoll\r\nMotif : Polos\r\nwarna : Cokelat, Hijau, Hitam, Merah muda, Hijau tua, Merah , Biru, Abu-abu, Kuning, Ungu, Putih, Nude, Wardah, Mocca\r\nRita Fashion Dreamy Top\r\nKalian wajib punya blouse ini karena harganya super murah dan bahannya nyaman banget buat dipakai untuk daily.', 'dreamytop.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(7, 'sindyalvinaa', '30042002', 'Sindy Alvina Khoiriyah', 'Perempuan', '2002-03-04', 'Bojonegoro', '082334379581', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
