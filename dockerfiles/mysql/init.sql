-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2020 at 12:30 AM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--
CREATE DATABASE IF NOT EXISTS cinema_db;
USE cinema_db;
-- --------------------------------------------------------

--
-- Table structure for table `CIN_CINEMAS`
--

CREATE TABLE `CIN_CINEMAS` (
  `cin_id` varchar(200) NOT NULL,
  `cin_owner` varchar(200) NOT NULL,
  `cin_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CIN_CINEMAS`
--

INSERT INTO `CIN_CINEMAS` (`cin_id`, `cin_owner`, `cin_name`) VALUES
('cin: 33a56c36-1af6-11eb-bb11-4889e746e533', 'owner2', 'Olympia Music Hall'),
('cin: 33cd39d0-1af5-11eb-bb11-4889e746e533', 'owner1', 'Village Cinemas'),
('cin: 69621a3b-1af6-11eb-bb11-4889e746e533', 'owner3', 'Pula Arena'),
('cin: a4012c0b-1af5-11eb-bb11-4889e746e533', 'owner2', 'Cine Thisio'),
('cin: ae92e3c3-1af5-11eb-bb11-4889e746e533', 'owner1', 'Alamo Drafthouse'),
('cin: bc115f83-1af5-11eb-bb11-4889e746e533', 'owner2', 'Rajmandir Theatre'),
('cin: c73e056c-1af5-11eb-bb11-4889e746e533', 'owner1', 'Kino International'),
('cin: d3652731-1af5-11eb-bb11-4889e746e533', 'owner3', 'Hot Tub Cinema');

--
-- Triggers `CIN_CINEMAS`
--
DELIMITER $$
CREATE TRIGGER `BEFORE_INSERT_CINEMA` BEFORE INSERT ON `CIN_CINEMAS` FOR EACH ROW BEGIN
        set new.cin_id = CONCAT('cin: ',UUID());

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `CHECK_OWNER` BEFORE INSERT ON `CIN_CINEMAS` FOR EACH ROW BEGIN
       if new.cin_owner not in (select username from CIN_USERS where user_role = 'CINEMAOWNER') then
           signal sqlstate '45000'
          SET MESSAGE_TEXT = 'NO CINOWNER';
       end if;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `CHECK_OWNER_UPDATE` BEFORE UPDATE ON `CIN_CINEMAS` FOR EACH ROW BEGIN
       if new.cin_owner not in (select username from CIN_USERS where user_role = 'CINEMAOWNER') then
           signal sqlstate '45000'
          SET MESSAGE_TEXT = 'NO CINOWNER';
       end if;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `CIN_FAVORITES`
--

CREATE TABLE `CIN_FAVORITES` (
  `favid` int NOT NULL,
  `movid` int DEFAULT NULL,
  `username` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CIN_FAVORITES`
--

INSERT INTO `CIN_FAVORITES` (`favid`, `movid`, `username`) VALUES
(120, 140, 'user1'),
(133, 143, 'movies_freak'),
(121, 143, 'user1'),
(122, 144, 'user1'),
(134, 147, 'movies_freak'),
(123, 147, 'user1'),
(135, 148, 'movies_freak'),
(124, 149, 'user1'),
(128, 151, 'user1'),
(127, 153, 'user1'),
(126, 154, 'user1'),
(137, 155, 'movies_freak'),
(125, 155, 'user1'),
(136, 156, 'movies_freak'),
(139, 161, 'movies_freak'),
(130, 161, 'user1'),
(129, 162, 'user1'),
(138, 164, 'movies_freak'),
(131, 165, 'user1'),
(140, 168, 'movies_freak'),
(141, 170, 'movies_freak'),
(132, 170, 'user1'),
(142, 173, 'user1'),
(143, 182, 'user1'),
(144, 183, 'user1'),
(145, 184, 'user1'),
(146, 186, 'user1');

--
-- Triggers `CIN_FAVORITES`
--
DELIMITER $$
CREATE TRIGGER `FAV_INS` BEFORE INSERT ON `CIN_FAVORITES` FOR EACH ROW begin
        if new.username not in (select username from CIN_USERS where user_role = 'USER') then
           signal sqlstate '45000'
          SET MESSAGE_TEXT = 'NO USER';
       end if;
    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `FAV_UPD` BEFORE UPDATE ON `CIN_FAVORITES` FOR EACH ROW begin
        if new.username not in (select username from CIN_USERS where user_role = 'USER') then
           signal sqlstate '45000'
          SET MESSAGE_TEXT = 'NO USER';
       end if;
    end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `CIN_MOVIES`
--

CREATE TABLE `CIN_MOVIES` (
  `movid` int NOT NULL,
  `title` varchar(70) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `category` varchar(70) DEFAULT NULL,
  `playing_in_cinema` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CIN_MOVIES`
--

INSERT INTO `CIN_MOVIES` (`movid`, `title`, `start_date`, `end_date`, `category`, `playing_in_cinema`) VALUES
(140, 'The Shawshank Redemption', '2021-07-08', '2021-11-08', 'Drama', 'Village Cinemas'),
(141, 'The Shawshank Redemption', '2021-07-10', '2022-03-29', 'Drama', 'Olympia Music Hall'),
(142, 'The Shawshank Redemption', '2021-05-01', '2022-04-01', 'Drama', 'Kino International'),
(143, 'The Godfather', '2021-11-24', '2022-01-30', 'Crime', 'Village Cinemas'),
(144, 'The Godfather', '2021-10-28', '2022-01-23', 'Crime', 'Olympia Music Hall'),
(145, 'The Godfather', '2021-08-28', '2022-02-01', 'Crime', 'Olympia Music Hall'),
(146, 'The Godfather', '2021-10-23', '2022-03-25', 'Crime', 'Pula Arena'),
(147, 'The Godfather II', '2021-05-17', '2022-02-01', 'Crime', 'Olympia Music Hall'),
(148, 'The Godfather II', '2021-09-08', '2022-01-03', 'Crime', 'Hot Tub Cinema'),
(149, 'The Godfather II', '2021-12-14', '2022-01-18', 'Crime', 'Alamo Drafthouse'),
(150, 'The Dark Knight', '2021-05-24', '2022-01-29', 'Action', 'Cine Thisio'),
(151, 'The Dark Knight', '2021-07-23', '2022-01-13', 'Action', 'Kino International'),
(152, 'The Dark Knight', '2021-09-18', '2022-01-29', 'Action', 'Pula Arena'),
(153, 'The Dark Knight', '2021-09-26', '2022-01-07', 'Action', 'Hot Tub Cinema'),
(154, 'Inception', '2021-10-16', '2022-02-17', 'Action', 'Pula Arena'),
(155, 'Inception', '2021-12-02', '2022-04-08', 'Action', 'Kino International'),
(156, 'Inception', '2021-07-24', '2022-01-16', 'Action', 'Kino International'),
(157, 'The Matrix', '2021-08-24', '2022-03-27', 'Science Fiction', 'Olympia Music Hall'),
(158, 'The Matrix', '2021-04-30', '2022-02-13', 'Science Fiction', 'Cine Thisio'),
(159, 'The Matrix', '2021-09-16', '2022-03-17', 'Science Fiction', 'Hot Tub Cinema'),
(160, 'Life Is Beautiful', '2021-09-05', '2022-01-09', 'Comedy,Drama,Romance', 'Pula Arena'),
(161, 'Life Is Beautiful', '2021-08-13', '2022-04-12', 'Comedy,Drama,Romance', 'Olympia Music Hall'),
(162, 'Life Is Beautiful', '2021-10-03', '2022-02-22', 'Comedy,Drama,Romance', 'Olympia Music Hall'),
(163, 'Life Is Beautiful', '2021-09-06', '2022-01-21', 'Comedy,Drama,Romance', 'Village Cinemas'),
(164, 'The Intouchables', '2021-10-30', '2022-03-29', 'Biography', 'Cine Thisio'),
(165, 'The Intouchables', '2021-07-20', '2022-03-16', 'Biography', 'Hot Tub Cinema'),
(166, 'The Intouchables', '2021-05-06', '2022-01-18', 'Biography', 'Cine Thisio'),
(167, 'The Intouchables', '2021-12-05', '2022-03-26', 'Biography', 'Cine Thisio'),
(168, 'The Intouchables', '2021-11-30', '2022-04-19', 'Biography', 'Village Cinemas'),
(169, 'The Lives of Others', '2021-10-18', '2022-04-14', 'Mystery', 'Village Cinemas'),
(170, 'The Lives of Others', '2021-09-17', '2022-03-29', 'Mystery', 'Kino International'),
(171, 'The Lives of Others', '2021-09-21', '2022-02-11', 'Mystery', 'Alamo Drafthouse'),
(173, 'Dead Poets Society', '2021-08-02', '2022-03-15', 'Drama', 'Cine Thisio'),
(175, 'Dead Poets Society', '2021-08-18', '2022-02-05', 'Drama', 'Cine Thisio'),
(176, 'Dead Poets Society', '2021-11-23', '2022-01-22', 'Drama', 'Olympia Music Hall'),
(177, 'Dead Poets Society', '2021-10-06', '2022-03-20', 'Drama', 'Rajmandir Theatre'),
(182, 'Dead Poets Society', '2021-07-02', '2022-02-23', 'Drama', 'Village Cinemas'),
(183, 'Dead Poets Society', '2021-06-18', '2022-03-15', 'Drama', 'Olympia Music Hall'),
(184, 'Dead Poets Society', '2021-12-29', '2022-01-22', 'Drama', 'Cine Thisio'),
(186, 'Dead Poets Society', '2021-06-13', '2022-03-18', 'Drama', 'Pula Arena'),
(188, 'Dead Poets Society', '2021-08-18', '2022-01-16', 'Drama', 'Cine Thisio'),
(189, 'Dead Poets Society', '2021-05-31', '2022-01-04', 'Drama', 'Rajmandir Theatre'),
(190, 'Dead Poets Society', '2021-11-26', '2022-01-21', 'Drama', 'Cine Thisio'),
(192, 'Dead Poets Society', '2021-09-25', '2021-12-31', 'Drama', 'Cine Thisio'),
(193, 'Dead Poets Society', '2021-12-09', '2022-01-02', 'Drama', 'Kino International'),
(194, 'Dead Poets Society', '2021-12-17', '2022-03-15', 'Drama', 'Rajmandir Theatre'),
(195, 'Dead Poets Society', '2021-09-30', '2022-03-19', 'Drama', 'Alamo Drafthouse'),
(196, 'Dead Poets Society', '2021-12-02', '2022-01-29', 'Drama', 'Hot Tub Cinema'),
(198, 'Dead Poets Society', '2021-12-20', '2022-03-19', 'Drama', 'Cine Thisio'),
(199, 'Dead Poets Society', '2021-10-21', '2022-01-09', 'Drama', 'Village Cinemas'),
(201, 'Dead Poets Society', '2021-12-29', '2022-03-06', 'Drama', 'Pula Arena'),
(202, 'Dead Poets Society', '2021-05-03', '2022-03-23', 'Drama', 'Village Cinemas'),
(203, 'Dead Poets Society', '2021-05-12', '2022-04-22', 'Drama', 'Pula Arena'),
(204, 'Dead Poets Society', '2021-07-26', '2022-01-19', 'Drama', 'Rajmandir Theatre'),
(205, 'Dead Poets Society', '2021-09-08', '2022-04-27', 'Drama', 'Pula Arena'),
(207, 'Dead Poets Society', '2021-08-29', '2022-02-16', 'Drama', 'Olympia Music Hall'),
(208, 'Dead Poets Society', '2021-09-08', '2022-03-08', 'Drama', 'Pula Arena'),
(210, 'Dead Poets Society', '2021-12-19', '2022-03-27', 'Drama', 'Hot Tub Cinema'),
(211, 'Dead Poets Society', '2021-07-14', '2022-01-14', 'Drama', 'Cine Thisio'),
(212, 'Dead Poets Society', '2021-06-09', '2022-01-14', 'Drama', 'Alamo Drafthouse'),
(213, 'Dead Poets Society', '2021-12-07', '2022-02-15', 'Drama', 'Cine Thisio'),
(214, 'Dead Poets Society', '2021-11-23', '2022-03-06', 'Drama', 'Olympia Music Hall'),
(215, 'Dead Poets Society', '2021-08-03', '2022-02-02', 'Drama', 'Alamo Drafthouse'),
(216, 'Dead Poets Society', '2021-06-23', '2022-02-18', 'Drama', 'Pula Arena'),
(217, 'Dead Poets Society', '2021-07-29', '2022-02-12', 'Drama', 'Olympia Music Hall'),
(218, 'Dead Poets Society', '2021-09-26', '2022-02-01', 'Drama', 'Hot Tub Cinema'),
(219, 'Dead Poets Society', '2021-12-13', '2022-04-24', 'Drama', 'Olympia Music Hall'),
(220, 'Dead Poets Society', '2021-10-13', '2022-01-31', 'Drama', 'Hot Tub Cinema');

--
-- Triggers `CIN_MOVIES`
--
DELIMITER $$
CREATE TRIGGER `check_dates_insert` BEFORE INSERT ON `CIN_MOVIES` FOR EACH ROW begin
IF (DATEDIFF(NEW.start_date, NEW.end_date) >=0) then
    SIGNAL SQLSTATE '45000'
     set MESSAGE_TEXT='Error with dates';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `check_dates_update` BEFORE UPDATE ON `CIN_MOVIES` FOR EACH ROW begin
IF (DATEDIFF(NEW.start_date, NEW.end_date) >=0) then
    SIGNAL SQLSTATE '45000'
     set MESSAGE_TEXT='Error with dates';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `CIN_USERS`
--

CREATE TABLE `CIN_USERS` (
  `user_id` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `confirmed` tinyint(1) DEFAULT '0',
  `user_role` enum('USER','CINEMAOWNER','ADMIN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CIN_USERS`
--

INSERT INTO `CIN_USERS` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `confirmed`, `user_role`) VALUES
('user: 0025e7a4-1afc-11eb-bb11-4889e746e533', 'unconfirmed_1', '1234', 'James', 'Nolan', 'james@TDC.com', 0, 'USER'),
('user: 02d2ec61-1afd-11eb-bb11-4889e746e533', 'user1', '1234', 'Daniel', '', 'user1@TDC.com', 1, 'USER'),
('user: 1880b83e-1afd-11eb-bb11-4889e746e533', 'tdc_wait_10', '1234', 'Ross', 'Geller', 'tdc_wait_10@TDC.com', 0, 'USER'),
('user: 191d52e7-1afc-11eb-bb11-4889e746e533', 'unconfirmed_2', '1234', 'Josephine', 'Darakjy', 'unconfirmed_2@TDC.com', 0, 'USER'),
('user: 230a0786-1afd-11eb-bb11-4889e746e533', 'tdc_wait_11', '1234', 'Chandler', 'Bing', 'tdc_wait_11@TDC.com', 0, 'USER'),
('user: 2fdae2bc-1af4-11eb-bb11-4889e746e533', 'owner1', '1234', 'Charlie', '', 'owner1@TDC.com', 1, 'CINEMAOWNER'),
('user: 340da9bd-1af4-11eb-bb11-4889e746e533', 'owner2', '1234', 'Robbie', 'Williams', 'owner2@TDC.com', 1, 'CINEMAOWNER'),
('user: 3a72d17f-1af4-11eb-bb11-4889e746e533', 'owner3', '1234', 'Michael', 'Scofield', 'owner3@TDC.com', 1, 'CINEMAOWNER'),
('user: 3b983192-1afd-11eb-bb11-4889e746e533', 'tdc_wait_12', '1234', 'Phoebe', 'Buffay', 'tdc_wait_12@TDC.com', 0, 'USER'),
('user: 465fe1bd-1afd-11eb-bb11-4889e746e533', 'tdc_wait_13', '1234', 'Monica', 'Geller', 'tdc_wait_13@TDC.com', 0, 'USER'),
('user: 4ab66fff-1af4-11eb-bb11-4889e746e533', 'admin2', '1234', 'Harvey', 'Specter', 'admin2@TDC.com', 1, 'ADMIN'),
('user: 5183af8e-1afc-11eb-bb11-4889e746e533', 'unconfirmed_3', '1234', NULL, NULL, 'unconfirmed_3@TDC.com', 0, 'ADMIN'),
('user: 51e3976b-1afd-11eb-bb11-4889e746e533', 'tdc_wait_14', '1234', 'Rachel', 'Green', 'tdc_wait_14@TDC.com', 0, 'USER'),
('user: 5fcd6d11-1afd-11eb-bb11-4889e746e533', 'tdc_wait_15', '1234', 'Joey', 'Tribbiani', 'tdc_wait_15@TDC.com', 0, 'USER'),
('user: 816d928e-1afc-11eb-bb11-4889e746e533', 'tdc_wait_4', '1234', NULL, NULL, 'tdc_wait_4@TDC.com', 0, 'USER'),
('user: 85c5a857-1afc-11eb-bb11-4889e746e533', 'tdc_wait_5', '1234', NULL, NULL, 'tdc_wait_5@TDC.com', 0, 'CINEMAOWNER'),
('user: af452b6b-1afc-11eb-bb11-4889e746e533', 'tdc_wait_6', '1234', NULL, NULL, 'tdc_wait_6@TDC.com', 0, 'USER'),
('user: c311cdf6-1afc-11eb-bb11-4889e746e533', 'tdc_wait_7', '1234', NULL, NULL, 'tdc_wait_7@TDC.com', 0, 'ADMIN'),
('user: cfcd9ce4-1af3-11eb-bb11-4889e746e533', 'movies_freak', '1234', 'Mike', 'Ross', 'freak@TDC.com', 1, 'USER'),
('user: f44e8275-10c1-11eb-916c-4889e746e533', 'admin1', '1234', 'Monica', '', 'megan@TDC.com', 1, 'ADMIN');

--
-- Triggers `CIN_USERS`
--
DELIMITER $$
CREATE TRIGGER `BEFORE_INSERT_USER` BEFORE INSERT ON `CIN_USERS` FOR EACH ROW BEGIN
        set new.user_id = CONCAT('user: ',UUID());

END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CIN_CINEMAS`
--
ALTER TABLE `CIN_CINEMAS`
  ADD PRIMARY KEY (`cin_id`),
  ADD UNIQUE KEY `cin_name` (`cin_name`),
  ADD KEY `cin_owner_constr` (`cin_owner`);

--
-- Indexes for table `CIN_FAVORITES`
--
ALTER TABLE `CIN_FAVORITES`
  ADD PRIMARY KEY (`favid`),
  ADD UNIQUE KEY `CIN_FAVORITES_pk` (`movid`,`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `CIN_MOVIES`
--
ALTER TABLE `CIN_MOVIES`
  ADD PRIMARY KEY (`movid`),
  ADD UNIQUE KEY `MOVIE_ALREADY_EXISTS_IN_CIN` (`title`,`start_date`,`end_date`,`playing_in_cinema`),
  ADD KEY `cinema_play_ck` (`playing_in_cinema`);

--
-- Indexes for table `CIN_USERS`
--
ALTER TABLE `CIN_USERS`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CIN_FAVORITES`
--
ALTER TABLE `CIN_FAVORITES`
  MODIFY `favid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `CIN_MOVIES`
--
ALTER TABLE `CIN_MOVIES`
  MODIFY `movid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CIN_CINEMAS`
--
ALTER TABLE `CIN_CINEMAS`
  ADD CONSTRAINT `cin_owner_constr` FOREIGN KEY (`cin_owner`) REFERENCES `CIN_USERS` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CIN_FAVORITES`
--
ALTER TABLE `CIN_FAVORITES`
  ADD CONSTRAINT `CIN_FAVORITES_ibfk_1` FOREIGN KEY (`username`) REFERENCES `CIN_USERS` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CIN_FAVORITES_ibfk_2` FOREIGN KEY (`movid`) REFERENCES `CIN_MOVIES` (`movid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CIN_MOVIES`
--
ALTER TABLE `CIN_MOVIES`
  ADD CONSTRAINT `cinema_play_ck` FOREIGN KEY (`playing_in_cinema`) REFERENCES `CIN_CINEMAS` (`cin_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
