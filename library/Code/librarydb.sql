-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 08:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_database`
--

CREATE TABLE `admin_database` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_database`
--

INSERT INTO `admin_database` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
('admin', 'admin', 'admin@gmail.com', 'admin'),
('admin02', 'admin02', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `book_database`
--

CREATE TABLE `book_database` (
  `book_id` varchar(50) NOT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `aut_name` varchar(50) DEFAULT NULL,
  `pub` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_database`
--

INSERT INTO `book_database` (`book_id`, `book_name`, `aut_name`, `pub`, `qty`) VALUES
('001', 'Java', 'SunMS', 'McGraw Hill', 2),
('002', 'J2EE', 'Charles', 'Pearson', 5),
('003', 'C++', 'Richie', 'Random House', 5),
('004', 'Python', 'Eric Matthes', 'Grupo Planeta', 5),
('005', 'C#', 'John Skeet', 'McGraw Hill', 5),
('0070', 'maths', 'aritra', 'ray', 1);

-- --------------------------------------------------------

--
-- Table structure for table `issue_database`
--

CREATE TABLE `issue_database` (
  `usn` varchar(50) DEFAULT NULL,
  `book_id` varchar(50) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_database`
--

INSERT INTO `issue_database` (`usn`, `book_id`, `date`) VALUES
('120', '120', '2021-01-23'),
('150', '001', '2021-01-31'),
('120', '001', '2021-01-30'),
('120', '001', '2021-01-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_database`
--
ALTER TABLE `admin_database`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `book_database`
--
ALTER TABLE `book_database`
  ADD PRIMARY KEY (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
