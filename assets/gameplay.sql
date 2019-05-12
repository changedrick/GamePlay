-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2019 at 06:17 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameplay`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID_cust` int(11) NOT NULL,
  `ID_product` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID_cust`, `ID_product`, `productName`, `qty`) VALUES
(0, 2, 'Project Diva Future Tone DX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `ID` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`ID`, `genre`) VALUES
(1, 'action'),
(2, 'adventure'),
(3, 'music');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `developer` varchar(255) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `genreID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `productName`, `price`, `stock`, `picture`, `developer`, `description`, `genreID`) VALUES
(1, 'God of War', 600000, 13, 'god_of_war2.jpg', 'Santa Monica Studio', 'While the first seven games were loosely based on Greek mythology, this instalment takes the series to Norse mythology. Six of the nine realms of Norse mythology can be explored. Predating the Vikings, the majority of the game takes place in ancient Norway in the realm of Midgard, inhabited by humans and other creatures and is the same realm that the Greek world had existed in.', '1;2'),
(2, 'Project Diva Future Tone DX', 500000, 5, 'Project_Diva_Future_Tone_DX1.jpg', 'Sega', 'This version includes all previous songs (including DLC) alongside new content, including DECO*27\'s hit song ', '3'),
(3, 'Kingdom Hearts III', 500000, 12, 'kingdom_hearts_31.jpg', 'Square Enix', 'KINGDOM HEARTS III tells the story of the power of friendship as Sora and his friends embark on a perilous adventure. Set in a vast array of Disney worlds, KINGDOM HEARTS follows the journey of Sora, a young boy and unknowing heir to a spectacular power.', '1;2'),
(4, 'Marvel\'s Spiderman', 700000, 12, 'spiderman1.jpg', 'Insomniac Games, Inc.', 'After eight years behind the mask, Peter Parker is a crime-fighting master. Feel the full power of a more experienced Spider-Man with improvisational combat, dynamic acrobatics, fluid urban traversal, and environmental interactions. A rookie no longer, this is the most masterful Spider-Man you\'ve ever played.', '1;2'),
(5, 'Devil May Cry 5', 700000, 10, 'dmc1.jpg', 'CAPCOM', 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for. A brand new entry in the legendary action series, Devil May Cry 5 brings together its signature blend of high-octane action and otherworldly original characters with the latest Capcom gaming technology to deliver a graphically groundbreaking action-adventure masterpiece.', '1;2'),
(6, 'Tekken 7', 500000, 4, 'tekken71.jpg', 'BANDAI NAMCO Entertainment Inc.', 'Powered by Unreal Engine 4, TEKKEN 7 features stunning story-driven cinematic battles and intense duels that can be enjoyed with friends and rivals alike through innovative fight mechanics. ... Expand your fighter\'s journey by purchasing the TEKKEN 7 Season Pass separately and gain access to stunning additional content.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `ID_trans` int(11) NOT NULL,
  `ID_cust` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `jenis_kirim` varchar(100) NOT NULL,
  `biaya_kirim` int(11) NOT NULL,
  `jenis_pembayaran` varchar(100) NOT NULL,
  `grand_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`ID_trans`, `ID_cust`, `total`, `jenis_kirim`, `biaya_kirim`, `jenis_pembayaran`, `grand_total`) VALUES
(1, 0, 0, '0', 0, '0', 0),
(2, 2, 1600000, 'Reguler', 10000, 'BCA', 1610000),
(3, 1, 500000, 'Reguler', 10000, 'BCA', 510000),
(4, 1, 1224, 'Reguler', 10000, 'BCA', 11224),
(5, 1, 700000, 'Reguler', 10000, 'BCA', 710000),
(6, 4, 1000000, 'Express', 20000, 'BCA', 1020000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `ID_trans` int(11) NOT NULL,
  `ID_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`ID_trans`, `ID_product`, `qty`, `harga`) VALUES
(1, 0, 0, 0),
(2, 1, 1, 600000),
(2, 2, 2, 500000),
(3, 2, 1, 500000),
(4, 6, 1, 1224),
(5, 4, 1, 700000),
(6, 3, 1, 500000),
(6, 6, 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(7) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_handphone` varchar(15) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `nomor_handphone`, `picture`, `alamat`) VALUES
(1, 'jasonkristanto', 'JKristant0', 'Jason Kristanto', 'jasonkristanto@jasonkristanto.com', '085612345678', 'ArimaKousei.jpg', 'Ruko Pascal Timur No. 5, Tangerang, Banten'),
(2, 'andi', 'andi', 'andi', 'andi@andi.com', '085798765432', 'SoraKeybladePose.jpg', 'Ruko Newton'),
(3, 'susi', 'susi', 'susi', 'susi@susi.com', '081209127654', 'Kaori_Miyazono2.png', 'Ruko Dalton'),
(4, 'terra', 'terra', 'Terra', 'terra@terra', '081245671234', 'Terra.png', 'Ruko Newton Timur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID_product`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`ID_trans`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `ID_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
