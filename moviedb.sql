-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 12:10 PM
-- Server version: 8.0.21
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int NOT NULL,
  `cid` varchar(50) NOT NULL,
  `mid` int NOT NULL,
  `tid` int NOT NULL,
  `sid` int NOT NULL,
  `bdate` date NOT NULL,
  `seat` int NOT NULL,
  `seatnums` varchar(50) NOT NULL,
  `amount` int NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` varchar(15) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `mid` int NOT NULL,
  `mname` varchar(100) NOT NULL,
  `reldate` date NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `actress` varchar(100) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `banner` varchar(100) NOT NULL
);

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mid`, `mname`, `reldate`, `director`, `actor`, `actress`, `trailer`, `poster`, `descr`, `banner`) VALUES
(101, 'Jurassic World 2', '2019-10-16', 'New Director', 'Anand Singh', 'New Actress', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/vn9mMeWcgoM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/101.jpg', 'Amazing movie of dinosours real looking dinosource and adventurous', 'banners/101.jpg'),
(102, 'Stuart Little 2', '2020-09-04', 'Rob Minkof', 'A Rat', 'A Sparrow', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/IDbsJeOgItw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/102.jpg', 'Funny and full of comedy of a rat named Stuart adopted by a family and a sparrow.', 'banners/102.jpg'),
(103, 'Iron Man 3', '2020-03-09', 'Shane Black', 'Robert Downey Jr.,  Don Cheadle', 'Gwyneth Paltrow', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/oYSD2VQagc4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/103.jpg', 'Very nice movie of Iron Man', 'banners/103.jpg'),
(104, 'Terminator Dark fate', '2015-05-14', 'Alen Tailer', 'Arnold Schwarzenegger, ', ' Linda Hamilton', '<iframe width=\"861\" height=\"538\" src=\"https://www.youtube.com/embed/k64P4l2Wmeg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/104.jpg', 'Thriller and action movie based on Machines. Very good performance of Arnold', 'banners/104.jpg'),
(105, 'X Men', '2020-09-21', 'Bryan Singer', 'Hugh Jackman, Patrick Stewart', 'Ian Mckellen', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/VNxwlx6etXI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/105.jpg', 'Mutant movie with special power people', 'banners/105.jpg'),
(106, 'Jumanji The next level', '2020-06-12', 'Jake Kasdan', 'Serdarius Blain, Alex Wolff, Karen Gillan', 'Serdarius Blain', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/rBxcF-r9Ibs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/106.jpg', 'Best comedy movie', 'banners/106.jpg'),
(107, 'Bahubali the beginning', '2019-10-16', 'SS Rajamouli', 'Prabhas, Rana Daggubati,', 'Anushka Shetty', '<iframe width=\"861\" height=\"538\" src=\"https://www.youtube.com/embed/sOEg_YZQsTI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/107.jpg', 'Best Mahesmati and Amrendra Bahulbali movie', 'banners/107.jpg'),
(108, 'Good News', '2020-09-10', 'Raj Mehta', 'Akshay Kumar,', 'Kareena Kapoor Khan', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/r9VJpqoAr84\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/108.jpg', 'Good News by Akshay kumar full of comedy', 'banners/108.jpg'),
(110, 'Super man - Man of Steel', '2019-11-29', 'Jake Kasdan', 'Henry Cavill, Amy Adams, Michael Shannon', 'Not Know', '<iframe width=\"871\" height=\"490\" src=\"https://www.youtube.com/embed/T6DJcgm3wNY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/110.jpg', 'Very nice action movie of Super man', 'banners/110.jpg'),
(111, 'Ghost Rider', '2020-09-18', 'Mark Steven Johnson', 'Nicolas Cage', 'Eva Mendes', '<iframe width=\"1045\" height=\"496\" src=\"https://www.youtube.com/embed/tp12CD2A4NA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/111.jpg', 'Ghost Rider.\" Long ago, superstar motorcycle stunt rider Johnny Blaze made a deal with the devil to protect the ones he loved most: his father and his childhood sweetheart, Roxanne (Eva Mendes). Now, the devil has come for his due. By day, Johnny is a die', 'banners/111.jpg'),
(112, 'FAST AND FURIOUS 9 ', '2021-10-10', 'Warner Chappell', 'John Cena, Vin Deisel', 'Katrina Kaif', '<iframe width=\"962\" height=\"541\" src=\"https://www.youtube.com/embed/e6wKl22ph4A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'posters/112.jpg', 'This is nothing but test movie', 'banners/112.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int NOT NULL,
  `showname` varchar(50) NOT NULL,
  `showtime` varchar(10) NOT NULL,
  `endtime` varchar(10) NOT NULL,
  `amount` int NOT NULL
);

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `showname`, `showtime`, `endtime`, `amount`) VALUES
(1, 'First Show', '09:00', '11:00', 100),
(2, 'Matinee Show', '12:00', '1:00', 120),
(4, 'Noon Show', '14:00', '16:00', 50),
(5, 'Night Show', '21:00', '23:00', 120),
(6, 'My Show', '10:00', '12:00', 60);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `tid` int NOT NULL,
  `tname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `seats` int NOT NULL
);

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`tid`, `tname`, `location`, `seats`) VALUES
(1, 'Crown Plaza', 'Noida', 150),
(2, 'Gold Cinema', 'New Delhi', 200),
(4, 'Maharaja Cinema', 'Noida', 60),
(5, 'Raj Villa', 'Noida', 100),
(6, 'Test Theatre', 'New Delhi', 120);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(30) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `role` varchar(15) NOT NULL
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `uname`, `pwd`, `role`) VALUES
('admin', 'Administrator', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `tid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
