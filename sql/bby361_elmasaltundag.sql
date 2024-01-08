-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Oca 2024, 17:59:55
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bby361_elmasaltundag`
--
CREATE DATABASE IF NOT EXISTS `bby361_elmasaltundag` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bby361_elmasaltundag`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eser`
--

CREATE TABLE `eser` (
  `eserID` int(11) NOT NULL,
  `eserAdi` text DEFAULT NULL,
  `eserSayfasi` text DEFAULT NULL,
  `eserTuru` text DEFAULT NULL,
  `yazarID` int(11) DEFAULT NULL,
  `yayineviID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `eser`
--

INSERT INTO `eser` (`eserID`, `eserAdi`, `eserSayfasi`, `eserTuru`, `yazarID`, `yayineviID`) VALUES
(1, 'İki Şehrin Hikayesi', '150', 'Roman', 1, 1),
(2, 'Aşk ve Gurur', '289', 'Roman', 2, 2),
(3, 'Fareler ve İnsanlar', '278', 'Roman', 3, 3),
(4, 'Kırmızı ve Siyah', '179', 'Roman', 4, 4),
(5, 'Mutlu Prens', '274', 'Roman', 5, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviID` int(11) NOT NULL,
  `yayineviAdi` text DEFAULT NULL,
  `yayineviYeri` text DEFAULT NULL,
  `yayineviEposta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviID`, `yayineviAdi`, `yayineviYeri`, `yayineviEposta`) VALUES
(1, 'Can Yayınları', 'İstanbul', 'yayinevi@canyayinlari.com'),
(2, 'Martı Yayınları', 'İstanbul', 'siparis@martiyayinlari.com'),
(3, 'Sel Yayınları', 'İstanbul', 'destek@selyayincilik.com'),
(4, 'Morpa Yayınları', 'İstanbul', 'info@morpa.com.tr'),
(5, 'Engin Yayınları', 'İstanbul', 'enginyayinevi@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` text DEFAULT NULL,
  `yazarSoyadi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarID`, `yazarAdi`, `yazarSoyadi`) VALUES
(1, 'Charles', 'Dickens'),
(2, 'Jane', 'Austen'),
(3, 'John ', 'Steinbeck'),
(4, 'Marie Henri', 'Stendhal'),
(5, 'Oscar', 'Wilde');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eser`
--
ALTER TABLE `eser`
  ADD PRIMARY KEY (`eserID`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviID`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eser`
--
ALTER TABLE `eser`
  MODIFY `eserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
