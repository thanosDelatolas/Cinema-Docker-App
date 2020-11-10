-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Nov 10, 2020 at 05:10 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idm`
--

-- --------------------------------------------------------

--
-- Table structure for table `authzforce`
--

CREATE TABLE `authzforce` (
  `az_domain` varchar(255) NOT NULL,
  `policy` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token`
--

CREATE TABLE `auth_token` (
  `access_token` varchar(255) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `pep_proxy_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_token`
--

INSERT INTO `auth_token` (`access_token`, `expires`, `valid`, `user_id`, `pep_proxy_id`) VALUES
('22d3baee-3b96-4b9b-a625-3e10e84b156a', '2020-11-09 13:34:55', 1, 'admin', NULL),
('52447a65-038a-412d-a95c-d55c3ff8debf', '2020-11-09 13:34:44', 1, 'admin', NULL),
('54f80ff6-3506-41f7-996d-020912029c1c', '2020-11-09 14:17:42', 1, 'admin', NULL),
('6c0806f7-8f14-4b51-9f28-0a17d727e46c', '2020-11-09 13:34:02', 1, 'admin', NULL),
('75f3a9fa-16da-4ad1-b1d5-bfc6237079e9', '2020-11-09 13:35:21', 1, 'admin', NULL),
('9654bac2-438b-461f-af6c-46d72f615b69', '2020-11-09 13:56:59', 1, 'admin', NULL),
('c4743b9a-71dc-4884-9b90-1fc07251c098', '2020-11-09 15:29:17', 1, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eidas_credentials`
--

CREATE TABLE `eidas_credentials` (
  `id` varchar(36) NOT NULL,
  `support_contact_person_name` varchar(255) DEFAULT NULL,
  `support_contact_person_surname` varchar(255) DEFAULT NULL,
  `support_contact_person_email` varchar(255) DEFAULT NULL,
  `support_contact_person_telephone_number` varchar(255) DEFAULT NULL,
  `support_contact_person_company` varchar(255) DEFAULT NULL,
  `technical_contact_person_name` varchar(255) DEFAULT NULL,
  `technical_contact_person_surname` varchar(255) DEFAULT NULL,
  `technical_contact_person_email` varchar(255) DEFAULT NULL,
  `technical_contact_person_telephone_number` varchar(255) DEFAULT NULL,
  `technical_contact_person_company` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `organization_url` varchar(255) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `organization_nif` varchar(255) DEFAULT NULL,
  `sp_type` varchar(255) DEFAULT 'private',
  `attributes_list` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iot`
--

CREATE TABLE `iot` (
  `id` varchar(255) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token`
--

CREATE TABLE `oauth_access_token` (
  `access_token` varchar(255) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `iot_id` varchar(255) DEFAULT NULL,
  `authorization_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_access_token`
--

INSERT INTO `oauth_access_token` (`access_token`, `expires`, `scope`, `refresh_token`, `valid`, `extra`, `oauth_client_id`, `user_id`, `iot_id`, `authorization_code`) VALUES
('04c54ede716b7a8c5a7c98fbe8b4e857ddc99d20', '2020-11-10 14:46:06', 'bearer', 'ea5a66edbe0edf935f388f93309a269ae94193d7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '42958076603801d30c90b1c4dd50a33c81f69a6c'),
('052c7576422eeb53e1714e5d15d8e25e7d23e436', '2020-11-10 16:35:31', 'bearer', 'd45202630ebe70d0a27710bb211bbb41c734d57c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '56ca15be5832935079e6011cb328a22958340b3e'),
('091de5abe02efd1abcac3a856694477cc33aa81d', '2020-11-10 14:11:28', 'bearer', '48bfacdd0317a1b0d58e3c40e5e4f84a92808e58', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a891756ced78ca5f25f723fa07fff33f0751686a'),
('0a2252c77e4add96b4ec8701019a72c0d26c231e', '2020-11-10 14:36:15', 'bearer', '38a9c1d6d50f72459b087343b2f0d56b7a4defaa', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '194526eef49716ed6eeaa4000ec9c84a169b6650'),
('0fb04e377c8692e5ace6b719e119bceb296d26cb', '2020-11-10 15:11:12', 'bearer', 'f2e68ebfab5f08f5a161516430c88e28f71452e2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7a9dc63af86d898289aa9cd1d103d68009ce9fdd'),
('11c1c435047aea2495a73dc86c0402f95a7ad8d5', '2020-11-10 16:22:14', 'bearer', '9593a815b1e5de224c9a4ffbdf9a9927e68d42ee', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7633f885be32ac4c556f9e05a0a33c8c2ce6311a'),
('14952d893135bf7c6aa16db72c131fbbb003f0ea', '2020-11-10 12:10:50', 'bearer', '1ce057359f3083b830e0a9245b9c74fae39d29af', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6c7a4fa334186ffb9c7142cfcea100e44b935a45'),
('15d2e9c5e7aac58d91534677f58a53c1c85184ae', '2020-11-10 15:39:55', 'bearer', '00318129edc9882f53bd740d7c410d5dd21d9420', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a2247dd6ac28ddb7ae05cb1a3ba2c2a0cd74f355'),
('16d2bb8429f55fba5b1a6c3d50dbe41b4b1f777d', '2020-11-10 14:54:09', 'bearer', 'e3c83ce436211ba1700abd9b2db9831ba0b09336', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7b36c255e30ec358058fdd0eca3218957b36b8ec'),
('170d5091b940b00e8a2e0e5844ce4b6ae5de2952', '2020-11-10 14:15:12', 'bearer', '1b2f23deda0ce1511f0eb3cc643346703bd48f1a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4cdb88cb5a6b8b6cb427027fd7c3eadc7676c559'),
('1857852d001b29e209714acb6d6d501e2b58e68e', '2020-11-10 14:48:00', 'bearer', '1d3de44498f928de3e7eebdb6d59fb67db51525f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7aa46f570656bd5e0a4c207fc11c618139abf9ed'),
('21979be7f355e0d4f4972012db7f4b0e2947e42c', '2020-11-10 15:05:20', 'bearer', '33add80f21816ef25dc3c3e7bac48c727619a955', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'e40fcc94abe01b0855bc73401da5eaff4e80df11'),
('23448c8a2ec0c3f82024240aef97802fc103aba3', '2020-11-10 15:39:55', 'bearer', '788ca14c0a761405c74d0726b7d5b3ec1d74581a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd6bec5bf9784c6c9dc9d3ead5631ce1b442cff17'),
('234d8bb02b39aac42bd08258793fccd3e830963a', '2020-11-10 12:25:26', 'bearer', 'f18fe5ed14f7198cddaee0ff5a2b4efac758ff7a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'c50c454db7a090c640e46f32561ca898c789d01d'),
('25f8f4a86fd6e70580a08aada7828acc1cd473f2', '2020-11-10 14:35:07', 'bearer', 'a1bf5d433b8c2774ad740a3b78ebe9cdb6ecfcd5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c756e6242dacb3272dfd0a9b00e98443d48a27f'),
('2c440c67d90b461dacc4afeb5fd6f9221c4db272', '2020-11-10 14:38:07', 'bearer', '952d745d48eca44ff6fb44286a6fdc172a195fa8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a708a5e267f28d18ec273a5668114e37bd60fdb7'),
('30f83125f6c6d62e33281eb8d30661e4b8efc9c8', '2020-11-10 14:42:21', 'bearer', '93633585eedf0170e112d8a2e4086d247eb67c4e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'abaf465118485f6e0417b3764491aa7d323b91fc'),
('3185a056628aabad901a768ce162d80167a4ec09', '2020-11-10 14:48:24', 'bearer', 'c061a05d276088b135d27b3c069bbe35ad15f1be', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c28d7f77279407396da5c48b15351ebee85e6ba'),
('326ad565ad516c66a9ccf5b714617fda85865097', '2020-11-10 14:40:21', 'bearer', '44bc8164acd43295ee8b2bb6cc79fd82bb2d0b5d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b86c61cbffc170ac081a03fe6ba89733ec194e78'),
('386c57009a557de8eab3eba59fceed0c3f1053c1', '2020-11-10 16:36:19', 'bearer', '173894d018986679a594af1913d63afcac89d683', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4df459580f0c7f30080e2bdd59005962587a654a'),
('3a1cd9991c7a2f9e5a7d175d00e95b665054cf5e', '2020-11-10 14:59:59', 'bearer', 'b2870dc75cedc33e3b51b4aed044b880921d8be5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1ec7bf76a56a2ee678abf6ecbe09892b3b65f66'),
('3da9654f17e29e6ed0f23df0b4217dc43625a067', '2020-11-10 14:30:36', 'bearer', '887af4f1c6272be0a5fb33e4d0bbf557b949be3d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '46310754840a3272da6a5b6ab299237f3f1cb65c'),
('3f9bd33b4244abba5de7f50b28365fbafb7ca0a4', '2020-11-10 14:59:03', 'bearer', '0aa16aec75748cc28f53b0b4477291b9c4f1cfa9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '088f9f835019dce777d75d7e6411d78749a3942e'),
('41ca8c5e7a1d6986012cd018945a72e3c77699e5', '2020-11-10 14:46:06', 'bearer', '7605d26c51637ef326ba1559a0ae7c55acf0caae', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '216403219199483a34cd18813d69fb2fa863d372'),
('4546363c4002557ecb5dc85ba265fd9996fe425f', '2020-11-10 14:58:06', 'bearer', '1ba7e52945f84580eee2b32257ebd0698f3dad92', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7552e56fa54ca089c666768fc6f0daba7c581b09'),
('46e33da18e63366d880e3a76ee9caf7f8e2b4d11', '2020-11-10 16:41:00', 'bearer', '9cb40c813db8ce834e9839e196baf2533c898f45', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '47bcebc74c4e2fd0ea86b5c70a21d3fdbd1aff7e'),
('4d8f60bcae3264e6ecd9b3a0a9ecbb7f167dbf7e', '2020-11-10 14:30:36', 'bearer', '3af7275e6376061946438757481cde362f5f031a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'b0fcd74d21c03b8931d4765754f217fccb877390'),
('4f9e74b290aa2b84b0fc4c9b344554835e550670', '2020-11-10 14:55:08', 'bearer', '743836dc276b8de2c3951ad0bdad509443c0f414', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5925890b8e10dfb46e46ed163c84e2130664c441'),
('51d2c659a2fce9ae4c059b68b2097baddd0d1194', '2020-11-10 16:40:35', 'bearer', 'b31163e022563c34882ad4a264ee1127002f0898', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '9a33d2451ef7674a9d7393bd829ad52da3083bc7'),
('580d03734bbfb3bb8e16a25e4bbfbb419f128ec4', '2020-11-10 15:04:52', 'bearer', '08e3a84e820a04e7f784395ed6a0972ce22f1f99', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1b251416d3878ddd1d54376080b60cad954239be'),
('5a2a39197cae2981d11c9b86e2cee2ce64ca872f', '2020-11-10 14:51:03', 'bearer', '6788cde92fb856e0f1fdea9ed91e4bca66aa1f11', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '13527fb2c03a54ee2d5fc670923460249f068889'),
('5ce9a38116825142a918bcf43185757884d32bb1', '2020-11-10 16:04:38', 'bearer', 'c9c562ada0726dbdea2932308e6d5e8b1e2ed555', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c1d7454df8d51419f1b0d709ddbc3cef2cce6f7'),
('62fc0eb2fd5e3ef737ea0d6b8936170b4cb04aa0', '2020-11-10 14:41:41', 'bearer', '3312e071a792c02e6dc38463ed4032e659c17dd5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c1090317bf5dfba962daaa34befded4964cff245'),
('64fa40a6cbb933f76dbb122012c95b9021100354', '2020-11-10 14:49:34', 'bearer', '1ec51f748ce7ce2108d2ee961fca10373ad4ef7d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c7fcdd0751144e39dd995de2335e93659deb6ac'),
('65323cfd475f35705c2efca24105ff1e6e9e81d9', '2020-11-10 14:38:07', 'bearer', '2455378ba7ef077b4a671ef9f2fd196b4c9c3989', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '40380d14f2af9ca8b7cedb56aa011325ecc1edec'),
('7241eb7650439b40269effd2d7479f621cef960b', '2020-11-10 14:56:41', 'bearer', '2e2a53b9ad9d9727926b939513ec2b88a04f0a27', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4ff6536582ba71ffa7fe676482b603b7ec079630'),
('72cfb3a515e9e8ad6e8ff74caf6bfc7ecc64491c', '2020-11-10 14:40:46', 'bearer', 'd4b13fa3e568c1623d95656cde8d776b3abf88d5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'fd36367aaec6ab88f7d66e81c8cac28339c0bafc'),
('757418ab655dd39a78f36c526489e0a79973c4d1', '2020-11-10 15:01:01', 'bearer', '9d5cecb1dc0c85ec35823dffd063c27596c82ca6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5cbe694892f7166d8e1da65028036f171259bb33'),
('764b21eeba5746075249a932be206e8e18f7be61', '2020-11-10 15:05:38', 'bearer', 'f7321ded19d4dab9a7366ad332bf84bf9a8c8b39', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c5b849da409f2be478bee18469a014f03176edc5'),
('78b84bfaeae151c1d36b9a9abc3202533dcda008', '2020-11-10 16:44:42', 'bearer', 'ff141b28f35cc9e84e09972220542f0c095e9e0e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2bb35c5efe7dcf97247ee5f40d80ffad931424d0'),
('7ac32a2c55d8df6af7148b0f31200dd8725e5fcb', '2020-11-10 12:05:59', 'bearer', 'fe79f93e05d074b7764f210067bffcbb704e0471', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5eb6d12073950f8a809150fb4c49117344b14a8b'),
('7ecabbf0663a9313fdf1befe632d101f7653a36a', '2020-11-10 12:38:12', 'bearer', '555aad1aae3f306aaebaf789ec6d0129c6d56d94', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5068461902d9572e267c3cf5b9774486eda4d653'),
('8c7e81fd88eadbaad9ec50460007d08290319760', '2020-11-10 14:47:23', 'bearer', '0d33a69815a8286b4c9bba020fffc52b427ba93a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dac10cb5306515cd3b45859e1b503742a5267934'),
('8d4d7fd09f8d314a8291ca1090742bca177cca3c', '2020-11-10 14:15:20', 'bearer', 'edc68541a0459cef9300587e8f6dacee212de018', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bf028e47350adba1ec7227e4c241248c75763cb9'),
('8fe7914eb61829796cc40ac7ad4d4a638854d1ad', '2020-11-10 15:54:23', 'bearer', 'e83ec552d54eefd5e43b28794713ce6080c20bd4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '03a5be481fb01b17175c7f30715120bbc76eae32'),
('96f12181f440de39b8a77947a3d76f26e6a88e51', '2020-11-10 12:55:29', 'bearer', '1850c0b45397bc654a749c52adeae3555283b6e9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1c6df916a98887302e62b3ab71fc9c45105c4cd4'),
('993a85612114c4cee0cc76c374b2e4d651db317e', '2020-11-10 16:20:33', 'bearer', '7a048d4ab7ed4d8807f6fbf64327725ec4755b6d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '12df890e633e5fdd446f99a7381324986273840e'),
('995121cca35725d3b5fa40d10f5868c7a2e5c271', '2020-11-10 14:11:53', 'bearer', '03cbd470227abe73f1f1ec7216a0bbf2981dc02d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'aa17416cca1a5224c9e2f63c329e30328359e12f'),
('9994c6ded5aa0ab0f2e1a3ea108343934aa62309', '2020-11-10 12:08:04', 'bearer', '22c7256161f90d1189e9bcbbb9c97e254cce2bc4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '29a590326a8a2ac8c3a90f8a2bea30fe83f05d62'),
('9a404fcb8cb7239f8a675059bf4434ccc125d701', '2020-11-10 15:54:23', 'bearer', 'a4d179d219fa6f8c9e0ef555f97549d29d10157f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1c307d509e0f5d3ae2d7244f1121478ed427d0e9'),
('9b2ab728308b744a0c4b3d76ec2aedc43e3ebf3f', '2020-11-10 12:42:21', 'bearer', '5054b6d9b16e7553de274730bbd94678a745a4ce', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'db6222c42598e72e26f198f7c4af832765842f23'),
('9b2dbd8fca6fd82cd227b2cc79b08861981a5ec3', '2020-11-10 15:04:30', 'bearer', '3905e68f6c8f64bfbb711614ba740137c0210cbc', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '68c6fc1f2dcd547120aedc6120d185c74398d20c'),
('9d2fd642c80f70bacaa2c2f5815a7a9928960f17', '2020-11-10 12:13:34', 'bearer', '3ba9a6ab0eed90f95789e2ecf5985806eed6f137', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '56dbf2bf0f8c8561677233ef985d05a3b5ca87ff'),
('a5076eb20cf5b5b176f91c88bc1779a6e3ff4cd1', '2020-11-10 16:44:34', 'bearer', 'fa87c8595f146b283a1d5a3b8a1f69c88b0c1099', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '66064a656a58c79163cfc528ba927019ad8c1dcf'),
('a61ce5ba031799b0247287df1db0f6b3dd5f9b41', '2020-11-10 14:57:19', 'bearer', 'c16f74ecffe4fe876f2f53fec6c6a44a64476a73', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '39c91325def93a71264739eb2da7b27854b0884f'),
('a6224051814a80bc01b4af4b05171ca12eb4beb4', '2020-11-10 15:12:51', 'bearer', '77f7ed492de8ffebc0d9203df1dd95348bc7d3d6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'edbf6d29e833340d1fc503a7a6259e8d15e40620'),
('a7e159d8b64bd5aa313f11b545fe185da1b5e666', '2020-11-10 16:19:19', 'bearer', 'fbb50e5245c46fe8d8f5f51e2c5273ad3553f979', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'f67818e603d905f0d827d3c7fb35a19f23cb1968'),
('a8a95164a014f528c416f7b70fcba66669085271', '2020-11-10 12:05:11', 'bearer', '793fac2d9fa67d33edf278b0eac721cd6e882404', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1627c5f7612f59970c79a99283f1bc5a8f993def'),
('a977d5ed973e732ede5628380e5356e62ba04a9e', '2020-11-10 16:36:12', 'bearer', '895d43e5b8841275a88b07c58377aa6d5b47eb1e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ed8c5708fb4c225c981fa1891483ecef99137c95'),
('ac4fd45710ab5ebb6b3a7977768c82cbe7bce1df', '2020-11-10 15:02:07', 'bearer', '67bb50ecde5e43337b9dbaa4596ac2a1fd758bfd', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '503fc92dcb9e778e0ec1aeb1f6cd49a8c21afa7e'),
('b0321ae835c87e5b740d0dd73697bfe8c5a98d3b', '2020-11-10 12:06:51', 'bearer', '6eed3048f5cb9f311c0564d9fc59e8e108de90e4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6db2ca8013321e852eb758b62b4d01074c95ee01'),
('b0d3b89e5ca11c041d3767c5696788de82213596', '2020-11-10 14:56:12', 'bearer', '6da386fc1cafdf6d55c0ca336c05769a1ea1b697', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bb3dc14dbc0bfe716059ba0007b22b15358cd5eb'),
('b83379cf0c88ff1562c17efbea88ece95d03d262', '2020-11-10 15:11:54', 'bearer', 'f58b9cf71e905b99570c69d0d009a429148659c0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a478845cb3a6b4fe253056970c061fb29a08ff96'),
('bbcff618b0514065d1bbdedc1fe8bf050099a2a1', '2020-11-10 15:11:36', 'bearer', '981df93e4f8f30d1e5f80ad9523b7aedd7bdeaf7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ca5f648117ba9e80b01ed95500fcf2d19aebd0a0'),
('be9f477e1fc52120cbd06b7acc7e66f0fcaa2bd9', '2020-11-10 15:06:58', 'bearer', 'bc7972931c63459079b827289783f2c9ca27c6d5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f94619c2024519b7d9706a1e6c1a87f829cbc77a'),
('c12c76107bf661de0e60f2fdfb33ca414e9ed012', '2020-11-10 15:10:27', 'bearer', 'db6926da25328b9575e097bb664cc48c7348a553', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1965407627549f28ca44b7469bc8dc27d4174c3'),
('c2fe907677d6475ee884d273f6d9cf4f8759bd40', '2020-11-10 16:40:35', 'bearer', 'e4eef57d527106c601ff76ec85e98631a21d084c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '70f543f4cbe41daeeb9156f5233288c8e11e2f03'),
('c9e88881758d3b63bf080702d9f7a990b9dfd898', '2020-11-10 15:04:53', 'bearer', 'b0adfdef37e102c7998106917e7daf4da5f0e699', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '513eccb4ad4472d61fe2fcc6eb1ddc19948e757b'),
('cc0835da51c5341766eed43a12c3203afdc2cc76', '2020-11-10 15:06:25', 'bearer', 'dcb72cde41864874c0e0bf381c0ef734b2918419', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ce5b5989b437c9446f7dfa10cd2aefec0fca5f1c'),
('ccc8f329f3c823a14e9d3d84b555fa0283693e4e', '2020-11-10 12:44:08', 'bearer', '1e361c872135d886cd0dc4c2a22c696d4ff02d37', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '9e63ebc346315feb86b24cc7a270269821e54c0c'),
('d220f9a74d8280b5d4119f6df1f46bbbbd412487', '2020-11-10 12:22:29', 'bearer', '78ba2daa0c0e6bfa3db1f2bc7fd1f4df64353c8d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1b22c14d6ab107292c9342fd28d443a0a9d9ce44'),
('d47c96adef90f304c780c8a0ebee14bf964964da', '2020-11-10 12:01:18', 'bearer', '4793444b82a3831d233e60a39ffa5a0bf3bc1f8e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '3809b706660c5f83e0708ed98c4b56d1e4b69a3e'),
('d48e805c1eef661ecf6dae6c45b1df13ccd55d7f', '2020-11-10 15:09:36', 'bearer', '28c873dc18909cc16d47760a8f09a9493d53c71d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2a8afa1446f1e1d15ac3873156eb7aeedb101ac1'),
('d69f8e20602c1139bb80b749a2f6996594448deb', '2020-11-10 12:10:50', 'bearer', '022880dc5a4c8583a394ee1a97dd3b689eab1a12', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f7fa8c248eb6305a5ff8bb4fba15ee69634c0947'),
('d8f8d311a0ce5462d8738936c536e3ce18f2e491', '2020-11-10 14:49:46', 'bearer', '9ee852bfc831793e047eaefbb2e7162a7473495e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8dbc63dadd8745613709520066642f3e4bdab0a1'),
('ddf4dfbdf396f6e5ea2d685dd7d6968b980c2e41', '2020-11-10 12:02:10', 'bearer', 'f39cd276034ba4c72a0ac3485bbf07254b40cac9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f83a121a99e43f0d7b7c12b2f5980f788b2043e6'),
('e775470efe4d03ce186bfa93325c9083dfb99fee', '2020-11-10 15:54:46', 'bearer', '167750fa609be27416814bb0ce4bee78465d896f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd3f903799ce0a1891ec3be7705bc638af570f4e4'),
('e8e071d5841d3b76bb1b2dc177e1942f9ac4a38d', '2020-11-10 12:39:42', 'bearer', '5cc5e6950430bd080cc520f6d362ac7baaf07f52', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5c5e071e6b929070520caa400110897fc0c8af45'),
('ee0f1162eeb527fd739d221f359bd8d56f4b7f41', '2020-11-10 15:56:05', 'bearer', 'af6508137c9d6a53691072267806200c28a837d3', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dcf0f983647b9818fa3072d8b3a1a5842145fa72'),
('ef5c1f659a57b9ace30f64e07a53bcc0af8d1359', '2020-11-10 16:36:23', 'bearer', '5835b488e29c0cd5f5e7ca92ea1cba6ca525e86c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8f5044b72064082a89a6c155db47b8a123d07b7f'),
('ef6da3db8f66914d9a55b6ddd08538e59266a415', '2020-11-10 14:12:37', 'bearer', '31e7ae804c9475c4c8b6596a80bea9b019fa4a80', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f6d27f3d6d61b52f227b50617359d5abeb69f305'),
('ef83bc7a96ff76fe32daa4cfc0f2118cbe9ca8c1', '2020-11-10 12:41:54', 'bearer', '9450d0a8eefe074e5b693b949953664193be2fb4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '7817b8074d14b80c60e4f487db02432559512fa6'),
('f398318bb3b4698b3610d7cbf6b985d8162111cf', '2020-11-10 15:57:03', 'bearer', '2bc415da580246a54d17c97fc8e7ceb6ab90a3e2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '703a4b9379f1f0a53a4a5361a4d7a79a9a265e3d'),
('f5bdf4707bf3675a3894cc1aac2ee71d54c1332f', '2020-11-10 16:35:31', 'bearer', '567bfa5efb46e4ae3a910b0c223f403763600f74', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '919ebd97d42eb31fea889d5ef3d861a2d16b680a'),
('faa63b7f18d80d4b63edc279f652ed435c59c7ad', '2020-11-10 15:10:26', 'bearer', 'cc5580322412a5ef8687441da6a9c3eb80694b78', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '08effdd7841b3a27b923e6b06be653c016a518db'),
('fbcd1e4f85bf746f10f1eb1bdab72ae1850bfffa', '2020-11-10 16:41:05', 'bearer', '04d8f1a4a8fc731ce4eea36348afdc53ed898c46', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b8539eefb0c848581e452e834892ca91d04d238b');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_code`
--

CREATE TABLE `oauth_authorization_code` (
  `authorization_code` varchar(256) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_authorization_code`
--

INSERT INTO `oauth_authorization_code` (`authorization_code`, `expires`, `redirect_uri`, `scope`, `valid`, `extra`, `oauth_client_id`, `user_id`) VALUES
('03a5be481fb01b17175c7f30715120bbc76eae32', '2020-11-10 14:59:23', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('05b79463baf6e4fd5c36045c2dd5dce67023969d', '2020-11-10 09:44:05', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('088f9f835019dce777d75d7e6411d78749a3942e', '2020-11-10 14:04:03', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('08effdd7841b3a27b923e6b06be653c016a518db', '2020-11-10 14:15:26', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('0cf74abaef9e6dd6a2712f1d95751daa95d49af4', '2020-11-10 09:54:47', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('12df890e633e5fdd446f99a7381324986273840e', '2020-11-10 15:25:33', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('13527fb2c03a54ee2d5fc670923460249f068889', '2020-11-10 13:56:03', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('1627c5f7612f59970c79a99283f1bc5a8f993def', '2020-11-10 11:10:11', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('17d8860fd546bd963ff2af05f2e9538b389b83dc', '2020-11-10 11:42:06', 'http://localhost:4000/welcome.php', NULL, 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('194526eef49716ed6eeaa4000ec9c84a169b6650', '2020-11-10 13:41:15', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('1a9525823a00227002f60d8fbb82de55031ee302', '2020-11-10 10:15:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('1b22c14d6ab107292c9342fd28d443a0a9d9ce44', '2020-11-10 11:27:29', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('1b251416d3878ddd1d54376080b60cad954239be', '2020-11-10 14:09:52', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('1c307d509e0f5d3ae2d7244f1121478ed427d0e9', '2020-11-10 14:59:23', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('1c6df916a98887302e62b3ab71fc9c45105c4cd4', '2020-11-10 12:00:29', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('1de1545539cbf7491ebc07a22fccbbfb2120bdda', '2020-11-10 10:04:22', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('216403219199483a34cd18813d69fb2fa863d372', '2020-11-10 13:51:06', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('290e0ef117236979a2b25734a2092f69f3c2857a', '2020-11-10 10:01:07', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('29a590326a8a2ac8c3a90f8a2bea30fe83f05d62', '2020-11-10 11:13:04', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('2a8afa1446f1e1d15ac3873156eb7aeedb101ac1', '2020-11-10 14:14:36', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('2bb35c5efe7dcf97247ee5f40d80ffad931424d0', '2020-11-10 15:49:42', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('2d2641dc9c423e4a8d23f720bd45bafb5fbae750', '2020-11-10 10:07:22', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('2e7213638a440ca5e121b73be0fdd2deac79888c', '2020-11-10 10:42:44', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('37d28ae32100b4ad4320a45695b46ec04280cb74', '2020-11-10 10:09:15', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('3809b706660c5f83e0708ed98c4b56d1e4b69a3e', '2020-11-10 11:06:18', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('39c91325def93a71264739eb2da7b27854b0884f', '2020-11-10 14:02:19', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('3a565044238e67b93624ca60408bfe6021bc0032', '2020-11-10 11:04:25', 'http://localhost:4000/welcome.php', 'permanent', 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('3f0885c41f6a29dd8a423d844efc59975edbe3fc', '2020-11-10 10:17:35', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('402b0f5097c7da4892a4aebdea1242ca2162699b', '2020-11-10 09:44:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('40380d14f2af9ca8b7cedb56aa011325ecc1edec', '2020-11-10 13:43:07', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('42958076603801d30c90b1c4dd50a33c81f69a6c', '2020-11-10 13:51:06', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('440088f8c0ad286c09444133fc0e9087914838ef', '2020-11-10 10:31:06', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('44125f8f8eb785d8fccf6c97fbf9768290d29116', '2020-11-10 10:13:18', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('46310754840a3272da6a5b6ab299237f3f1cb65c', '2020-11-10 13:35:36', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665'),
('47bcebc74c4e2fd0ea86b5c70a21d3fdbd1aff7e', '2020-11-10 15:46:00', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('4cdb88cb5a6b8b6cb427027fd7c3eadc7676c559', '2020-11-10 13:20:12', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('4df459580f0c7f30080e2bdd59005962587a654a', '2020-11-10 15:41:19', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('4fb1f7c8a3b5f3db65d24349fc2a553a5b90cd41', '2020-11-10 10:58:41', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('4ff6536582ba71ffa7fe676482b603b7ec079630', '2020-11-10 14:01:40', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('503fc92dcb9e778e0ec1aeb1f6cd49a8c21afa7e', '2020-11-10 14:07:07', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('5068461902d9572e267c3cf5b9774486eda4d653', '2020-11-10 11:43:12', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('5103208c51c41537bb16b8f19718bfe4b684572c', '2020-11-10 11:42:47', 'http://localhost:4000/welcome.php', NULL, 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('513eccb4ad4472d61fe2fcc6eb1ddc19948e757b', '2020-11-10 14:09:52', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('52775fd781c1d2464e145b6b926f6abdae1d59c3', '2020-11-10 09:53:58', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('568b314e8a804d1074880e5a98993309ae688815', '2020-11-10 09:56:16', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('56ca15be5832935079e6011cb328a22958340b3e', '2020-11-10 15:40:31', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('56dbf2bf0f8c8561677233ef985d05a3b5ca87ff', '2020-11-10 11:18:34', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('58653c4c46667707de7b812f68e9722d8c8c99cb', '2020-11-10 10:50:18', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('5925890b8e10dfb46e46ed163c84e2130664c441', '2020-11-10 14:00:08', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('5c5e071e6b929070520caa400110897fc0c8af45', '2020-11-10 11:44:41', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('5cbe694892f7166d8e1da65028036f171259bb33', '2020-11-10 14:06:01', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('5eb6d12073950f8a809150fb4c49117344b14a8b', '2020-11-10 11:10:59', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('5fae5d278bb48b62de19f32ec584762ea7fea78f', '2020-11-10 09:53:12', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('63aba5fb1545877dee87538a67f9e6b31b3743d6', '2020-11-10 10:39:55', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('642ce64bdecc2b6cfadee61a74a4efbf0a80b02f', '2020-11-10 10:07:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('66064a656a58c79163cfc528ba927019ad8c1dcf', '2020-11-10 15:49:34', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('6768ed9a92d24cb1bad8d10dc9af1d552ffa284f', '2020-11-10 11:18:03', 'http://localhost:4000/welcome.php', NULL, 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('68c6fc1f2dcd547120aedc6120d185c74398d20c', '2020-11-10 14:09:30', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('6bc24883d9e0e4844cb95a196588c263e9162d37', '2020-11-10 10:50:19', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('6c28d7f77279407396da5c48b15351ebee85e6ba', '2020-11-10 13:53:24', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('6c7a4fa334186ffb9c7142cfcea100e44b935a45', '2020-11-10 11:15:50', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('6c7fcdd0751144e39dd995de2335e93659deb6ac', '2020-11-10 13:54:34', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('6db2ca8013321e852eb758b62b4d01074c95ee01', '2020-11-10 11:11:51', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('6efc7d83e4f507368f2f7e9e5258a2a22a4c0fa6', '2020-11-10 09:49:25', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('703a4b9379f1f0a53a4a5361a4d7a79a9a265e3d', '2020-11-10 15:02:03', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('70f543f4cbe41daeeb9156f5233288c8e11e2f03', '2020-11-10 15:45:35', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('72db062aadafd9c0274841673efcf66d81c47496', '2020-11-10 09:57:46', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('7552e56fa54ca089c666768fc6f0daba7c581b09', '2020-11-10 14:03:06', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('7633f885be32ac4c556f9e05a0a33c8c2ce6311a', '2020-11-10 15:27:14', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('7817b8074d14b80c60e4f487db02432559512fa6', '2020-11-10 11:46:53', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('7a9dc63af86d898289aa9cd1d103d68009ce9fdd', '2020-11-10 14:16:12', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('7aa46f570656bd5e0a4c207fc11c618139abf9ed', '2020-11-10 13:52:59', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('7b36c255e30ec358058fdd0eca3218957b36b8ec', '2020-11-10 13:59:09', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('7fe0b2567578dcf455e7662aa77d8bba96d963c2', '2020-11-10 10:03:05', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('856aaac2ac531a4b93a2c4f200435e301b4a4eb5', '2020-11-10 09:58:11', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('8b619386872f9a60cdeb8a7aa75ba972a3ce5815', '2020-11-10 09:58:15', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('8dbc63dadd8745613709520066642f3e4bdab0a1', '2020-11-10 13:54:46', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('8f5044b72064082a89a6c155db47b8a123d07b7f', '2020-11-10 15:41:23', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('919ebd97d42eb31fea889d5ef3d861a2d16b680a', '2020-11-10 15:40:31', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('95ddfcfcf3721b32509c525a7e93cedf02c877ba', '2020-11-10 10:46:19', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('9634d1abdb0309a07153e8d96183a27ede72e2a7', '2020-11-10 10:32:02', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('9a33d2451ef7674a9d7393bd829ad52da3083bc7', '2020-11-10 15:45:35', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('9c1d7454df8d51419f1b0d709ddbc3cef2cce6f7', '2020-11-10 15:09:38', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665'),
('9c756e6242dacb3272dfd0a9b00e98443d48a27f', '2020-11-10 13:40:07', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665'),
('9e63ebc346315feb86b24cc7a270269821e54c0c', '2020-11-10 11:49:08', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a1965407627549f28ca44b7469bc8dc27d4174c3', '2020-11-10 14:15:27', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('a1ec7bf76a56a2ee678abf6ecbe09892b3b65f66', '2020-11-10 14:04:59', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('a206f8fce16a507aa86d8283c3fc551985f40d0d', '2020-11-10 09:45:03', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a2247dd6ac28ddb7ae05cb1a3ba2c2a0cd74f355', '2020-11-10 14:44:55', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('a3098043a1e2b61ac40564f639fa8fe629929278', '2020-11-10 09:55:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a3b23d772af9014f99de192d37f0de11775e0f9e', '2020-11-10 11:00:51', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a478845cb3a6b4fe253056970c061fb29a08ff96', '2020-11-10 14:16:54', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('a708a5e267f28d18ec273a5668114e37bd60fdb7', '2020-11-10 13:43:07', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('a891756ced78ca5f25f723fa07fff33f0751686a', '2020-11-10 13:16:28', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('aa17416cca1a5224c9e2f63c329e30328359e12f', '2020-11-10 13:16:53', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('aaa17cf5d8d5d942729e83793782e888cdaa12bd', '2020-11-10 09:26:52', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('abaf465118485f6e0417b3764491aa7d323b91fc', '2020-11-10 13:47:21', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('aec9d042bf405887b462c85d0ffc0498244f8481', '2020-11-10 09:56:17', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b0fcd74d21c03b8931d4765754f217fccb877390', '2020-11-10 13:35:36', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665'),
('b42def39c12678bf2fa4d7cc26944a43395bdc36', '2020-11-10 11:25:53', 'http://localhost:4000/welcome.php', NULL, 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b50cb4a8e5c3328973434a906a7bcdfe51c25882', '2020-11-10 10:00:40', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b71ac964387707f7755c16136255fcde8bd6e312', '2020-11-10 10:24:09', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b8539eefb0c848581e452e834892ca91d04d238b', '2020-11-10 15:46:05', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('b86c61cbffc170ac081a03fe6ba89733ec194e78', '2020-11-10 13:45:21', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('bae0efad9b7f3bd74ae4386e730e0cdbc427bb60', '2020-11-10 10:47:28', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('bb3dc14dbc0bfe716059ba0007b22b15358cd5eb', '2020-11-10 14:01:12', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('bdaa46c58427a55e109d376f25802901e2bf44e9', '2020-11-10 09:24:43', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('bf028e47350adba1ec7227e4c241248c75763cb9', '2020-11-10 13:20:20', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('c1090317bf5dfba962daaa34befded4964cff245', '2020-11-10 13:46:41', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('c11f7a2c4022280c73bb2bd50258ea6bb383882c', '2020-11-10 10:19:24', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c16592209bc6003ff8bdef312c87180773ed801f', '2020-11-10 09:45:55', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c50c454db7a090c640e46f32561ca898c789d01d', '2020-11-10 11:30:25', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c5b849da409f2be478bee18469a014f03176edc5', '2020-11-10 14:10:38', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('c65a9d1e93805b47dd7dd8db73414d9df3d3a572', '2020-11-10 10:02:28', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('ca5f648117ba9e80b01ed95500fcf2d19aebd0a0', '2020-11-10 14:16:36', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('cac284b46be24ce774c7d9174c2dd0bf8462c3c4', '2020-11-10 09:44:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('cce70537725ed0d1bc0c27cb7f72e0d0e81f6b39', '2020-11-10 10:26:24', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('ce5b5989b437c9446f7dfa10cd2aefec0fca5f1c', '2020-11-10 14:11:25', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('cebe8ce1ed38d45105fac7e4bcf4a2bfb435f340', '2020-11-10 09:39:37', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('d358a249c077a6785f9c3816d7575c31f285ce84', '2020-11-10 09:48:40', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('d3f903799ce0a1891ec3be7705bc638af570f4e4', '2020-11-10 14:59:46', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('d4fde105207aa1b81ebeafb5235ac2a59e546562', '2020-11-10 10:39:31', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('d6bec5bf9784c6c9dc9d3ead5631ce1b442cff17', '2020-11-10 14:44:55', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('d8297bf5d71c4494280afbb36118e21c03e70f9e', '2020-11-10 09:49:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('dac10cb5306515cd3b45859e1b503742a5267934', '2020-11-10 13:52:23', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('db6222c42598e72e26f198f7c4af832765842f23', '2020-11-10 11:47:21', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('dcf0f983647b9818fa3072d8b3a1a5842145fa72', '2020-11-10 15:01:05', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('de6506614d4c1af862c8fb49520c930590f16829', '2020-11-10 11:02:32', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('e33a9cc720aa6f73f764e1c59c9e25b4d8b1a638', '2020-11-10 10:23:25', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('e40fcc94abe01b0855bc73401da5eaff4e80df11', '2020-11-10 14:10:20', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('eb2cfe168abf37d48a0a25430a616ec3008711df', '2020-11-10 10:21:28', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('ed8c5708fb4c225c981fa1891483ecef99137c95', '2020-11-10 15:41:12', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('edbf6d29e833340d1fc503a7a6259e8d15e40620', '2020-11-10 14:17:51', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('f35ecb2dfed37ef080a8ddf3e68372c78815ef8f', '2020-11-10 10:33:43', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('f67818e603d905f0d827d3c7fb35a19f23cb1968', '2020-11-10 15:24:19', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665'),
('f6d27f3d6d61b52f227b50617359d5abeb69f305', '2020-11-10 13:17:37', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('f7fa8c248eb6305a5ff8bb4fba15ee69634c0947', '2020-11-10 11:15:50', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('f83a121a99e43f0d7b7c12b2f5980f788b2043e6', '2020-11-10 11:07:10', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('f94619c2024519b7d9706a1e6c1a87f829cbc77a', '2020-11-10 14:11:58', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09'),
('fa5e279dff60a80a3d57e2676bcc63588f8f6396', '2020-11-10 10:00:57', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('fd36367aaec6ab88f7d66e81c8cac28339c0bafc', '2020-11-10 13:45:46', 'http://localhost:4000/welcome.php', NULL, 0, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client`
--

CREATE TABLE `oauth_client` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `secret` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default',
  `grant_type` varchar(255) DEFAULT NULL,
  `response_type` varchar(255) DEFAULT NULL,
  `client_type` varchar(15) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `token_types` varchar(2000) DEFAULT NULL,
  `jwt_secret` varchar(255) DEFAULT NULL,
  `redirect_sign_out_uri` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_client`
--

INSERT INTO `oauth_client` (`id`, `name`, `description`, `secret`, `url`, `redirect_uri`, `image`, `grant_type`, `response_type`, `client_type`, `scope`, `extra`, `token_types`, `jwt_secret`, `redirect_sign_out_uri`) VALUES
('7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'TD Cinemas', 'The best way to be informed about your favorite movies!!\r\nOr\r\nThe best way to manage your Cinemas!', '1dacab95-4511-49bf-ba39-80119f37b094', 'http://localhost:4000/login.php', 'http://localhost:4000/welcome.php', 'default', 'authorization_code,implicit,password,client_credentials,refresh_token,hybrid', 'code,token', NULL, NULL, NULL, NULL, NULL, 'http://localhost:4000/logout.php'),
('idm_admin_app', 'idm', 'idm', NULL, '', '', 'default', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_token`
--

CREATE TABLE `oauth_refresh_token` (
  `refresh_token` varchar(256) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `iot_id` varchar(255) DEFAULT NULL,
  `authorization_code` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_refresh_token`
--

INSERT INTO `oauth_refresh_token` (`refresh_token`, `expires`, `scope`, `oauth_client_id`, `user_id`, `iot_id`, `authorization_code`, `valid`) VALUES
('00318129edc9882f53bd740d7c410d5dd21d9420', '2020-11-24 14:39:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a2247dd6ac28ddb7ae05cb1a3ba2c2a0cd74f355', 1),
('022880dc5a4c8583a394ee1a97dd3b689eab1a12', '2020-11-24 11:10:50', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f7fa8c248eb6305a5ff8bb4fba15ee69634c0947', 1),
('03cbd470227abe73f1f1ec7216a0bbf2981dc02d', '2020-11-24 13:11:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'aa17416cca1a5224c9e2f63c329e30328359e12f', 1),
('04d8f1a4a8fc731ce4eea36348afdc53ed898c46', '2020-11-24 15:41:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b8539eefb0c848581e452e834892ca91d04d238b', 1),
('08e3a84e820a04e7f784395ed6a0972ce22f1f99', '2020-11-24 14:04:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1b251416d3878ddd1d54376080b60cad954239be', 1),
('0aa16aec75748cc28f53b0b4477291b9c4f1cfa9', '2020-11-24 13:59:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '088f9f835019dce777d75d7e6411d78749a3942e', 1),
('0d33a69815a8286b4c9bba020fffc52b427ba93a', '2020-11-24 13:47:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dac10cb5306515cd3b45859e1b503742a5267934', 1),
('167750fa609be27416814bb0ce4bee78465d896f', '2020-11-24 14:54:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd3f903799ce0a1891ec3be7705bc638af570f4e4', 1),
('173894d018986679a594af1913d63afcac89d683', '2020-11-24 15:36:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4df459580f0c7f30080e2bdd59005962587a654a', 1),
('1850c0b45397bc654a749c52adeae3555283b6e9', '2020-11-24 11:55:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1c6df916a98887302e62b3ab71fc9c45105c4cd4', 1),
('1b2f23deda0ce1511f0eb3cc643346703bd48f1a', '2020-11-24 13:15:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4cdb88cb5a6b8b6cb427027fd7c3eadc7676c559', 1),
('1ba7e52945f84580eee2b32257ebd0698f3dad92', '2020-11-24 13:58:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7552e56fa54ca089c666768fc6f0daba7c581b09', 1),
('1ce057359f3083b830e0a9245b9c74fae39d29af', '2020-11-24 11:10:50', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6c7a4fa334186ffb9c7142cfcea100e44b935a45', 1),
('1d3de44498f928de3e7eebdb6d59fb67db51525f', '2020-11-24 13:48:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7aa46f570656bd5e0a4c207fc11c618139abf9ed', 1),
('1e361c872135d886cd0dc4c2a22c696d4ff02d37', '2020-11-24 11:44:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '9e63ebc346315feb86b24cc7a270269821e54c0c', 1),
('1ec51f748ce7ce2108d2ee961fca10373ad4ef7d', '2020-11-24 13:49:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c7fcdd0751144e39dd995de2335e93659deb6ac', 1),
('22c7256161f90d1189e9bcbbb9c97e254cce2bc4', '2020-11-24 11:08:04', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '29a590326a8a2ac8c3a90f8a2bea30fe83f05d62', 1),
('2455378ba7ef077b4a671ef9f2fd196b4c9c3989', '2020-11-24 13:38:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '40380d14f2af9ca8b7cedb56aa011325ecc1edec', 1),
('28c873dc18909cc16d47760a8f09a9493d53c71d', '2020-11-24 14:09:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2a8afa1446f1e1d15ac3873156eb7aeedb101ac1', 1),
('2bc415da580246a54d17c97fc8e7ceb6ab90a3e2', '2020-11-24 14:57:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '703a4b9379f1f0a53a4a5361a4d7a79a9a265e3d', 1),
('2e2a53b9ad9d9727926b939513ec2b88a04f0a27', '2020-11-24 13:56:41', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4ff6536582ba71ffa7fe676482b603b7ec079630', 1),
('31e7ae804c9475c4c8b6596a80bea9b019fa4a80', '2020-11-24 13:12:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f6d27f3d6d61b52f227b50617359d5abeb69f305', 1),
('3312e071a792c02e6dc38463ed4032e659c17dd5', '2020-11-24 13:41:41', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c1090317bf5dfba962daaa34befded4964cff245', 1),
('33add80f21816ef25dc3c3e7bac48c727619a955', '2020-11-24 14:05:20', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'e40fcc94abe01b0855bc73401da5eaff4e80df11', 1),
('38a9c1d6d50f72459b087343b2f0d56b7a4defaa', '2020-11-24 13:36:15', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '194526eef49716ed6eeaa4000ec9c84a169b6650', 1),
('3905e68f6c8f64bfbb711614ba740137c0210cbc', '2020-11-24 14:04:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '68c6fc1f2dcd547120aedc6120d185c74398d20c', 1),
('3af7275e6376061946438757481cde362f5f031a', '2020-11-24 13:30:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'b0fcd74d21c03b8931d4765754f217fccb877390', 1),
('3ba9a6ab0eed90f95789e2ecf5985806eed6f137', '2020-11-24 11:13:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '56dbf2bf0f8c8561677233ef985d05a3b5ca87ff', 1),
('44bc8164acd43295ee8b2bb6cc79fd82bb2d0b5d', '2020-11-24 13:40:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b86c61cbffc170ac081a03fe6ba89733ec194e78', 1),
('4793444b82a3831d233e60a39ffa5a0bf3bc1f8e', '2020-11-24 11:01:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '3809b706660c5f83e0708ed98c4b56d1e4b69a3e', 1),
('48bfacdd0317a1b0d58e3c40e5e4f84a92808e58', '2020-11-24 13:11:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a891756ced78ca5f25f723fa07fff33f0751686a', 1),
('5054b6d9b16e7553de274730bbd94678a745a4ce', '2020-11-24 11:42:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'db6222c42598e72e26f198f7c4af832765842f23', 1),
('555aad1aae3f306aaebaf789ec6d0129c6d56d94', '2020-11-24 11:38:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5068461902d9572e267c3cf5b9774486eda4d653', 1),
('567bfa5efb46e4ae3a910b0c223f403763600f74', '2020-11-24 15:35:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '919ebd97d42eb31fea889d5ef3d861a2d16b680a', 1),
('5835b488e29c0cd5f5e7ca92ea1cba6ca525e86c', '2020-11-24 15:36:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8f5044b72064082a89a6c155db47b8a123d07b7f', 1),
('5cc5e6950430bd080cc520f6d362ac7baaf07f52', '2020-11-24 11:39:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5c5e071e6b929070520caa400110897fc0c8af45', 1),
('6788cde92fb856e0f1fdea9ed91e4bca66aa1f11', '2020-11-24 13:51:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '13527fb2c03a54ee2d5fc670923460249f068889', 1),
('67bb50ecde5e43337b9dbaa4596ac2a1fd758bfd', '2020-11-24 14:02:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '503fc92dcb9e778e0ec1aeb1f6cd49a8c21afa7e', 1),
('6da386fc1cafdf6d55c0ca336c05769a1ea1b697', '2020-11-24 13:56:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bb3dc14dbc0bfe716059ba0007b22b15358cd5eb', 1),
('6eed3048f5cb9f311c0564d9fc59e8e108de90e4', '2020-11-24 11:06:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6db2ca8013321e852eb758b62b4d01074c95ee01', 1),
('743836dc276b8de2c3951ad0bdad509443c0f414', '2020-11-24 13:55:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5925890b8e10dfb46e46ed163c84e2130664c441', 1),
('7605d26c51637ef326ba1559a0ae7c55acf0caae', '2020-11-24 13:46:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '216403219199483a34cd18813d69fb2fa863d372', 1),
('77f7ed492de8ffebc0d9203df1dd95348bc7d3d6', '2020-11-24 14:12:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'edbf6d29e833340d1fc503a7a6259e8d15e40620', 1),
('788ca14c0a761405c74d0726b7d5b3ec1d74581a', '2020-11-24 14:39:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd6bec5bf9784c6c9dc9d3ead5631ce1b442cff17', 1),
('78ba2daa0c0e6bfa3db1f2bc7fd1f4df64353c8d', '2020-11-24 11:22:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1b22c14d6ab107292c9342fd28d443a0a9d9ce44', 1),
('793fac2d9fa67d33edf278b0eac721cd6e882404', '2020-11-24 11:05:11', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1627c5f7612f59970c79a99283f1bc5a8f993def', 1),
('7a048d4ab7ed4d8807f6fbf64327725ec4755b6d', '2020-11-24 15:20:33', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '12df890e633e5fdd446f99a7381324986273840e', 1),
('887af4f1c6272be0a5fb33e4d0bbf557b949be3d', '2020-11-24 13:30:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '46310754840a3272da6a5b6ab299237f3f1cb65c', 1),
('895d43e5b8841275a88b07c58377aa6d5b47eb1e', '2020-11-24 15:36:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ed8c5708fb4c225c981fa1891483ecef99137c95', 1),
('93633585eedf0170e112d8a2e4086d247eb67c4e', '2020-11-24 13:42:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'abaf465118485f6e0417b3764491aa7d323b91fc', 1),
('9450d0a8eefe074e5b693b949953664193be2fb4', '2020-11-24 11:41:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '7817b8074d14b80c60e4f487db02432559512fa6', 1),
('952d745d48eca44ff6fb44286a6fdc172a195fa8', '2020-11-24 13:38:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a708a5e267f28d18ec273a5668114e37bd60fdb7', 1),
('9593a815b1e5de224c9a4ffbdf9a9927e68d42ee', '2020-11-24 15:22:14', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7633f885be32ac4c556f9e05a0a33c8c2ce6311a', 1),
('981df93e4f8f30d1e5f80ad9523b7aedd7bdeaf7', '2020-11-24 14:11:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ca5f648117ba9e80b01ed95500fcf2d19aebd0a0', 1),
('9cb40c813db8ce834e9839e196baf2533c898f45', '2020-11-24 15:41:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '47bcebc74c4e2fd0ea86b5c70a21d3fdbd1aff7e', 1),
('9d5cecb1dc0c85ec35823dffd063c27596c82ca6', '2020-11-24 14:01:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5cbe694892f7166d8e1da65028036f171259bb33', 1),
('9ee852bfc831793e047eaefbb2e7162a7473495e', '2020-11-24 13:49:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8dbc63dadd8745613709520066642f3e4bdab0a1', 1),
('a1bf5d433b8c2774ad740a3b78ebe9cdb6ecfcd5', '2020-11-24 13:35:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c756e6242dacb3272dfd0a9b00e98443d48a27f', 1),
('a4d179d219fa6f8c9e0ef555f97549d29d10157f', '2020-11-24 14:54:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1c307d509e0f5d3ae2d7244f1121478ed427d0e9', 1),
('af6508137c9d6a53691072267806200c28a837d3', '2020-11-24 14:56:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dcf0f983647b9818fa3072d8b3a1a5842145fa72', 1),
('b0adfdef37e102c7998106917e7daf4da5f0e699', '2020-11-24 14:04:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '513eccb4ad4472d61fe2fcc6eb1ddc19948e757b', 1),
('b2870dc75cedc33e3b51b4aed044b880921d8be5', '2020-11-24 13:59:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1ec7bf76a56a2ee678abf6ecbe09892b3b65f66', 1),
('b31163e022563c34882ad4a264ee1127002f0898', '2020-11-24 15:40:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '9a33d2451ef7674a9d7393bd829ad52da3083bc7', 1),
('bc7972931c63459079b827289783f2c9ca27c6d5', '2020-11-24 14:06:58', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f94619c2024519b7d9706a1e6c1a87f829cbc77a', 1),
('c061a05d276088b135d27b3c069bbe35ad15f1be', '2020-11-24 13:48:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c28d7f77279407396da5c48b15351ebee85e6ba', 1),
('c16f74ecffe4fe876f2f53fec6c6a44a64476a73', '2020-11-24 13:57:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '39c91325def93a71264739eb2da7b27854b0884f', 1),
('c9c562ada0726dbdea2932308e6d5e8b1e2ed555', '2020-11-24 15:04:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c1d7454df8d51419f1b0d709ddbc3cef2cce6f7', 1),
('cc5580322412a5ef8687441da6a9c3eb80694b78', '2020-11-24 14:10:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '08effdd7841b3a27b923e6b06be653c016a518db', 1),
('d45202630ebe70d0a27710bb211bbb41c734d57c', '2020-11-24 15:35:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '56ca15be5832935079e6011cb328a22958340b3e', 1),
('d4b13fa3e568c1623d95656cde8d776b3abf88d5', '2020-11-24 13:40:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'fd36367aaec6ab88f7d66e81c8cac28339c0bafc', 1),
('db6926da25328b9575e097bb664cc48c7348a553', '2020-11-24 14:10:27', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1965407627549f28ca44b7469bc8dc27d4174c3', 1),
('dcb72cde41864874c0e0bf381c0ef734b2918419', '2020-11-24 14:06:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ce5b5989b437c9446f7dfa10cd2aefec0fca5f1c', 1),
('e3c83ce436211ba1700abd9b2db9831ba0b09336', '2020-11-24 13:54:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7b36c255e30ec358058fdd0eca3218957b36b8ec', 1),
('e4eef57d527106c601ff76ec85e98631a21d084c', '2020-11-24 15:40:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '70f543f4cbe41daeeb9156f5233288c8e11e2f03', 1),
('e83ec552d54eefd5e43b28794713ce6080c20bd4', '2020-11-24 14:54:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '03a5be481fb01b17175c7f30715120bbc76eae32', 1),
('ea5a66edbe0edf935f388f93309a269ae94193d7', '2020-11-24 13:46:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '42958076603801d30c90b1c4dd50a33c81f69a6c', 1),
('edc68541a0459cef9300587e8f6dacee212de018', '2020-11-24 13:15:20', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bf028e47350adba1ec7227e4c241248c75763cb9', 1),
('f18fe5ed14f7198cddaee0ff5a2b4efac758ff7a', '2020-11-24 11:25:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'c50c454db7a090c640e46f32561ca898c789d01d', 1),
('f2e68ebfab5f08f5a161516430c88e28f71452e2', '2020-11-24 14:11:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7a9dc63af86d898289aa9cd1d103d68009ce9fdd', 1),
('f39cd276034ba4c72a0ac3485bbf07254b40cac9', '2020-11-24 11:02:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f83a121a99e43f0d7b7c12b2f5980f788b2043e6', 1),
('f58b9cf71e905b99570c69d0d009a429148659c0', '2020-11-24 14:11:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a478845cb3a6b4fe253056970c061fb29a08ff96', 1),
('f7321ded19d4dab9a7366ad332bf84bf9a8c8b39', '2020-11-24 14:05:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c5b849da409f2be478bee18469a014f03176edc5', 1),
('fa87c8595f146b283a1d5a3b8a1f69c88b0c1099', '2020-11-24 15:44:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '66064a656a58c79163cfc528ba927019ad8c1dcf', 1),
('fbb50e5245c46fe8d8f5f51e2c5273ad3553f979', '2020-11-24 15:19:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'f67818e603d905f0d827d3c7fb35a19f23cb1968', 1),
('fe79f93e05d074b7764f210067bffcbb704e0471', '2020-11-24 11:05:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5eb6d12073950f8a809150fb4c49117344b14a8b', 1),
('ff141b28f35cc9e84e09972220542f0c095e9e0e', '2020-11-24 15:44:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2bb35c5efe7dcf97247ee5f40d80ffad931424d0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scope`
--

CREATE TABLE `oauth_scope` (
  `id` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` varchar(36) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text,
  `website` varchar(2000) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pep_proxy`
--

CREATE TABLE `pep_proxy` (
  `id` varchar(255) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `is_internal` tinyint(1) DEFAULT '0',
  `action` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `xml` text,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `is_regex` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`, `description`, `is_internal`, `action`, `resource`, `xml`, `oauth_client_id`, `is_regex`) VALUES
('1', 'Get and assign all internal application roles', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0),
('2', 'Manage the application', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0),
('3', 'Manage roles', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0),
('4', 'Manage authorizations', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0),
('5', 'Get and assign all public application roles', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0),
('5559cba9-c6f1-426b-91dc-32de0660fee3', 'Client', 'Users and Owners', 0, 'GET', '/v2/ent', NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 0),
('6', 'Get and assign only public owned roles', NULL, 1, NULL, NULL, NULL, 'idm_admin_app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ptp`
--

CREATE TABLE `ptp` (
  `id` int(11) NOT NULL,
  `previous_job_id` varchar(255) NOT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT '0',
  `oauth_client_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `is_internal`, `oauth_client_id`) VALUES
('592236e2-e2bf-4471-8c11-7f715f5e9d65', 'CINEMAOWNER', 0, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd'),
('9cfc0b6f-2bc3-4a6f-af91-9ff79e8c09b4', 'USER', 0, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd'),
('provider', 'Provider', 1, 'idm_admin_app'),
('purchaser', 'Purchaser', 1, 'idm_admin_app');

-- --------------------------------------------------------

--
-- Table structure for table `role_assignment`
--

CREATE TABLE `role_assignment` (
  `id` int(11) NOT NULL,
  `role_organization` varchar(255) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `organization_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_assignment`
--

INSERT INTO `role_assignment` (`id`, `role_organization`, `oauth_client_id`, `role_id`, `organization_id`, `user_id`) VALUES
(12, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '592236e2-e2bf-4471-8c11-7f715f5e9d65', NULL, '5565f5dd-02ea-4bd7-ba31-bb76a82657be'),
(13, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'provider', NULL, 'admin'),
(14, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '9cfc0b6f-2bc3-4a6f-af91-9ff79e8c09b4', NULL, '0b10e960-70d4-4318-b6d0-e9132430ab09');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `permission_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(1, 'provider', '1'),
(2, 'provider', '2'),
(3, 'provider', '3'),
(4, 'provider', '4'),
(5, 'provider', '5'),
(6, 'provider', '6'),
(7, 'purchaser', '5');

-- --------------------------------------------------------

--
-- Table structure for table `role_usage_policy`
--

CREATE TABLE `role_usage_policy` (
  `id` int(11) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `usage_policy_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('201802190000-CreateUserTable.js'),
('201802190003-CreateUserRegistrationProfileTable.js'),
('201802190005-CreateOrganizationTable.js'),
('201802190008-CreateOAuthClientTable.js'),
('201802190009-CreateUserAuthorizedApplicationTable.js'),
('201802190010-CreateRoleTable.js'),
('201802190015-CreatePermissionTable.js'),
('201802190020-CreateRoleAssignmentTable.js'),
('201802190025-CreateRolePermissionTable.js'),
('201802190030-CreateUserOrganizationTable.js'),
('201802190035-CreateIotTable.js'),
('201802190040-CreatePepProxyTable.js'),
('201802190045-CreateAuthZForceTable.js'),
('201802190050-CreateAuthTokenTable.js'),
('201802190060-CreateOAuthAuthorizationCodeTable.js'),
('201802190065-CreateOAuthAccessTokenTable.js'),
('201802190070-CreateOAuthRefreshTokenTable.js'),
('201802190075-CreateOAuthScopeTable.js'),
('20180405125424-CreateUserTourAttribute.js'),
('20180612134640-CreateEidasTable.js'),
('20180727101745-CreateUserEidasIdAttribute.js'),
('20180730094347-CreateTrustedApplicationsTable.js'),
('20180828133454-CreatePasswordSalt.js'),
('20180921104653-CreateEidasNifColumn.js'),
('20180922140934-CreateOauthTokenType.js'),
('20181022103002-CreateEidasTypeAndAttributes.js'),
('20181108144720-RevokeToken.js'),
('20181113121450-FixExtraAndScopeAttribute.js'),
('20181203120316-FixTokenTypesLength.js'),
('20190116101526-CreateSignOutUrl.js'),
('20190316203230-CreatePermissionIsRegex.js'),
('20190429164755-CreateUsagePolicyTable.js'),
('20190507112246-CreateRoleUsagePolicyTable.js'),
('20190507112259-CreatePtpTable.js'),
('20191019153205-UpdateUserAuthorizedApplicationTable.js'),
('20200928134556-AddDisable2faKey.js');

-- --------------------------------------------------------

--
-- Table structure for table `trusted_application`
--

CREATE TABLE `trusted_application` (
  `id` int(11) NOT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `trusted_oauth_client_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usage_policy`
--

CREATE TABLE `usage_policy` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` enum('COUNT_POLICY','AGGREGATION_POLICY','CUSTOM_POLICY') DEFAULT NULL,
  `parameters` json DEFAULT NULL,
  `punishment` enum('KILL_JOB','UNSUBSCRIBE','MONETIZE') DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `odrl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oauth_client_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `description` text,
  `website` varchar(2000) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default',
  `gravatar` tinyint(1) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `date_password` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `admin` tinyint(1) DEFAULT '0',
  `extra` json DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `starters_tour_ended` tinyint(1) DEFAULT '0',
  `eidas_id` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `description`, `website`, `image`, `gravatar`, `email`, `password`, `date_password`, `enabled`, `admin`, `extra`, `scope`, `starters_tour_ended`, `eidas_id`, `salt`) VALUES
('0b10e960-70d4-4318-b6d0-e9132430ab09', 'user1', '', '', 'default', 0, 'user1@test.com', '883cf9ce23673b23f12c1341d599b7f9813cb68e', '2020-11-10 13:04:03', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, 'c4d8df0ea9bb152f'),
('5565f5dd-02ea-4bd7-ba31-bb76a82657be', 'owner1', '', '', 'default', 0, 'owner1@test.com', '49299d32cd9332347a1eb26380fd1de0ae7735f4', '2020-11-10 13:13:39', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, 'a438c35fe6456475'),
('admin', 'tdel', 'Admin of the system', '', 'default', 0, 'tdel@test.com', '35f05d4c283aef953aded586b7b9efd9209eb67a', '2020-11-09 08:54:37', 1, 1, '{\"visible_attributes\": [\"username\", \"description\"]}', NULL, 0, NULL, '433c709bf9b2b8c5'),
('cd1fa0e4-3df3-4681-86aa-3d8fa3218665', 'movies_freak', NULL, NULL, 'default', 0, 'movies_freak@test.com', 'ee359d119dba83e1e5c444eb7bc4876fbbeaf802', '2020-11-10 13:28:59', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, '94fdbec195f0caf4');

-- --------------------------------------------------------

--
-- Table structure for table `user_authorized_application`
--

CREATE TABLE `user_authorized_application` (
  `id` int(11) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `oauth_client_id` varchar(36) DEFAULT NULL,
  `shared_attributes` varchar(255) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_authorized_application`
--

INSERT INTO `user_authorized_application` (`id`, `user_id`, `oauth_client_id`, `shared_attributes`, `login_date`) VALUES
(1, 'admin', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email,identity_attributes,image,gravatar,eidas_profile', '2020-11-10 09:19:43'),
(2, '0b10e960-70d4-4318-b6d0-e9132430ab09', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email,identity_attributes,image,gravatar,eidas_profile', '2020-11-10 13:11:28'),
(3, 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email,identity_attributes,image,gravatar,eidas_profile', '2020-11-10 13:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_organization`
--

CREATE TABLE `user_organization` (
  `id` int(11) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `organization_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration_profile`
--

CREATE TABLE `user_registration_profile` (
  `id` int(11) NOT NULL,
  `activation_key` varchar(255) DEFAULT NULL,
  `activation_expires` datetime DEFAULT NULL,
  `reset_key` varchar(255) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `verification_key` varchar(255) DEFAULT NULL,
  `verification_expires` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `disable_2fa_key` varchar(255) DEFAULT NULL,
  `disable_2fa_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration_profile`
--

INSERT INTO `user_registration_profile` (`id`, `activation_key`, `activation_expires`, `reset_key`, `reset_expires`, `verification_key`, `verification_expires`, `user_email`, `disable_2fa_key`, `disable_2fa_expires`) VALUES
(1, '0x5dtnka121', '2020-11-11 13:28:59', NULL, NULL, NULL, NULL, 'movies_freak@test.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authzforce`
--
ALTER TABLE `authzforce`
  ADD PRIMARY KEY (`az_domain`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`access_token`),
  ADD UNIQUE KEY `access_token` (`access_token`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pep_proxy_id` (`pep_proxy_id`);

--
-- Indexes for table `eidas_credentials`
--
ALTER TABLE `eidas_credentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `iot`
--
ALTER TABLE `iot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `oauth_access_token`
--
ALTER TABLE `oauth_access_token`
  ADD PRIMARY KEY (`access_token`),
  ADD UNIQUE KEY `access_token` (`access_token`),
  ADD KEY `oauth_client_id` (`oauth_client_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `iot_id` (`iot_id`),
  ADD KEY `refresh_token` (`refresh_token`),
  ADD KEY `authorization_code_at` (`authorization_code`);

--
-- Indexes for table `oauth_authorization_code`
--
ALTER TABLE `oauth_authorization_code`
  ADD PRIMARY KEY (`authorization_code`),
  ADD UNIQUE KEY `authorization_code` (`authorization_code`),
  ADD KEY `oauth_client_id` (`oauth_client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `oauth_client`
--
ALTER TABLE `oauth_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `oauth_refresh_token`
--
ALTER TABLE `oauth_refresh_token`
  ADD PRIMARY KEY (`refresh_token`),
  ADD UNIQUE KEY `refresh_token` (`refresh_token`),
  ADD KEY `oauth_client_id` (`oauth_client_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `iot_id` (`iot_id`),
  ADD KEY `authorization_code_rt` (`authorization_code`);

--
-- Indexes for table `oauth_scope`
--
ALTER TABLE `oauth_scope`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pep_proxy`
--
ALTER TABLE `pep_proxy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `ptp`
--
ALTER TABLE `ptp`
  ADD PRIMARY KEY (`id`,`previous_job_id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `role_assignment`
--
ALTER TABLE `role_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `organization_id` (`organization_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `role_usage_policy`
--
ALTER TABLE `role_usage_policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `usage_policy_id` (`usage_policy_id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `trusted_application`
--
ALTER TABLE `trusted_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`),
  ADD KEY `trusted_oauth_client_id` (`trusted_oauth_client_id`);

--
-- Indexes for table `usage_policy`
--
ALTER TABLE `usage_policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_authorized_application`
--
ALTER TABLE `user_authorized_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `oauth_client_id` (`oauth_client_id`);

--
-- Indexes for table `user_organization`
--
ALTER TABLE `user_organization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `organization_id` (`organization_id`);

--
-- Indexes for table `user_registration_profile`
--
ALTER TABLE `user_registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oauth_scope`
--
ALTER TABLE `oauth_scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptp`
--
ALTER TABLE `ptp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_assignment`
--
ALTER TABLE `role_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_usage_policy`
--
ALTER TABLE `role_usage_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trusted_application`
--
ALTER TABLE `trusted_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_authorized_application`
--
ALTER TABLE `user_authorized_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_organization`
--
ALTER TABLE `user_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registration_profile`
--
ALTER TABLE `user_registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authzforce`
--
ALTER TABLE `authzforce`
  ADD CONSTRAINT `authzforce_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD CONSTRAINT `auth_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_token_ibfk_2` FOREIGN KEY (`pep_proxy_id`) REFERENCES `pep_proxy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `eidas_credentials`
--
ALTER TABLE `eidas_credentials`
  ADD CONSTRAINT `eidas_credentials_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iot`
--
ALTER TABLE `iot`
  ADD CONSTRAINT `iot_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_access_token`
--
ALTER TABLE `oauth_access_token`
  ADD CONSTRAINT `authorization_code_at` FOREIGN KEY (`authorization_code`) REFERENCES `oauth_authorization_code` (`authorization_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_ibfk_3` FOREIGN KEY (`iot_id`) REFERENCES `iot` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refresh_token` FOREIGN KEY (`refresh_token`) REFERENCES `oauth_refresh_token` (`refresh_token`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_authorization_code`
--
ALTER TABLE `oauth_authorization_code`
  ADD CONSTRAINT `oauth_authorization_code_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_authorization_code_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_refresh_token`
--
ALTER TABLE `oauth_refresh_token`
  ADD CONSTRAINT `authorization_code_rt` FOREIGN KEY (`authorization_code`) REFERENCES `oauth_authorization_code` (`authorization_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_refresh_token_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_refresh_token_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_refresh_token_ibfk_3` FOREIGN KEY (`iot_id`) REFERENCES `iot` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pep_proxy`
--
ALTER TABLE `pep_proxy`
  ADD CONSTRAINT `pep_proxy_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ptp`
--
ALTER TABLE `ptp`
  ADD CONSTRAINT `ptp_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_assignment`
--
ALTER TABLE `role_assignment`
  ADD CONSTRAINT `role_assignment_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_assignment_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_assignment_ibfk_3` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_assignment_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_usage_policy`
--
ALTER TABLE `role_usage_policy`
  ADD CONSTRAINT `role_usage_policy_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_usage_policy_ibfk_2` FOREIGN KEY (`usage_policy_id`) REFERENCES `usage_policy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trusted_application`
--
ALTER TABLE `trusted_application`
  ADD CONSTRAINT `trusted_application_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trusted_application_ibfk_2` FOREIGN KEY (`trusted_oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usage_policy`
--
ALTER TABLE `usage_policy`
  ADD CONSTRAINT `usage_policy_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_authorized_application`
--
ALTER TABLE `user_authorized_application`
  ADD CONSTRAINT `user_authorized_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_authorized_application_ibfk_2` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_organization`
--
ALTER TABLE `user_organization`
  ADD CONSTRAINT `user_organization_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_organization_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_registration_profile`
--
ALTER TABLE `user_registration_profile`
  ADD CONSTRAINT `user_registration_profile_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
