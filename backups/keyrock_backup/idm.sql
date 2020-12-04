-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Dec 03, 2020 at 05:30 PM
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
('0364cdc3-cc39-4b9d-9a20-a924705b4995', '2020-12-02 14:34:05', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('0c41aca2-5d93-4fe8-89aa-678376202ce4', '2020-12-03 18:24:30', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('0c9b75f3-2511-4375-a1a2-978affbe592a', '2020-12-02 17:13:41', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('11254613-bd4e-4fc4-95ee-f1078d7e7d90', '2020-12-02 13:09:49', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('159c3c39-a246-4930-a65d-3444d31ad668', '2020-12-02 13:44:03', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('1a44553e-b4b6-49e6-bc5d-aaca1cb2e326', '2020-12-02 17:06:33', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('219878df-d0f1-4da6-b03f-796c0d561a37', '2020-12-02 13:09:49', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('21df95d2-2d6e-47e8-9f5a-22f45f889054', '2020-12-03 10:59:59', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('22d3baee-3b96-4b9b-a625-3e10e84b156a', '2020-11-09 13:34:55', 1, 'admin', NULL),
('23274b89-35f1-4b9d-a637-8d1efb252d08', '2020-12-02 14:17:57', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('29496ee6-bcbb-4f38-95e1-d8e574cb80b1', '2020-12-03 10:33:23', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('2fb6858c-a7a0-491b-bae7-8032cd9bc936', '2020-12-03 13:25:56', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('2ff069f7-f368-478e-b217-b1837accb1b3', '2020-12-03 15:40:23', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('5052a3bc-1aed-4975-9081-5d9193129b5b', '2020-12-03 15:31:36', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('52447a65-038a-412d-a95c-d55c3ff8debf', '2020-11-09 13:34:44', 1, 'admin', NULL),
('54f80ff6-3506-41f7-996d-020912029c1c', '2020-11-09 14:17:42', 1, 'admin', NULL),
('5fe1223d-640d-4739-85e0-1610eb4295b2', '2020-11-30 22:57:29', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('68d50193-1e9c-4bd0-9083-7139fb199beb', '2020-12-03 11:45:57', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('6b0377e5-c3cd-457a-a615-c30aca2492c7', '2020-12-02 13:47:20', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('6c0806f7-8f14-4b51-9f28-0a17d727e46c', '2020-11-09 13:34:02', 1, 'admin', NULL),
('6f6c3428-7851-4507-a55a-7806eef00476', '2020-12-02 17:06:33', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('745a4559-2c2e-47c3-a638-098efd0c8608', '2020-12-03 14:37:11', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('759383a1-a962-49b1-bda0-78706659a37f', '2020-12-02 13:09:22', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('75f3a9fa-16da-4ad1-b1d5-bfc6237079e9', '2020-11-09 13:35:21', 1, 'admin', NULL),
('89a7b874-b1ed-41e1-b081-9d7411672504', '2020-12-02 14:54:31', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('89c25229-0dff-4933-a016-5f07d96f999a', '2020-12-02 20:39:26', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('8c5232ff-6fb2-4ada-bb7b-71b055a1e571', '2020-12-02 13:44:03', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('8fb97bd3-a656-4395-ba65-55d9234462b0', '2020-12-03 18:24:30', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('9545a31b-eb26-4c5b-af6a-6f54eb79f830', '2020-12-02 13:47:20', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('9654bac2-438b-461f-af6c-46d72f615b69', '2020-11-09 13:56:59', 1, 'admin', NULL),
('9d6d6ff3-1e0f-4cc4-a4fc-70445fc43421', '2020-12-03 15:31:36', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('aac3f8ff-fbb4-4cbe-994e-93c5e17612b0', '2020-11-30 22:40:29', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('b4251aaa-51ea-44bc-8e54-00625180906e', '2020-12-03 10:33:23', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('b7d4aadf-bf0f-4ad0-983a-615eb77b8c82', '2020-12-02 14:54:31', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('c4743b9a-71dc-4884-9b90-1fc07251c098', '2020-11-09 15:29:17', 1, 'admin', NULL),
('c4935361-9b3c-4b1f-a85f-59c8bd9a0da1', '2020-12-03 11:45:57', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('c80f5b65-e85f-4f39-a8cb-85125b36527c', '2020-12-03 14:37:11', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('d2f4d317-544e-4489-b8d2-f939415926ba', '2020-12-02 14:34:05', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('d91c2252-37f4-4b24-92cc-1e38777d9c83', '2020-12-03 13:25:56', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('de8e6a3e-2fa0-4c11-b84b-a2d8a9163aff', '2020-12-02 21:45:33', 1, 'admin', NULL),
('dfc0c51c-b48d-443e-9ff1-c6eb3984438c', '2020-12-02 14:17:57', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('e6df3afe-68dd-4516-b3a4-edf777a56d4a', '2020-11-30 22:44:28', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('eb283742-6cc2-448c-9798-de92679f9bea', '2020-12-02 17:13:41', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('ee9c0562-85c8-462b-a175-891560bb35e2', '2020-12-02 13:09:22', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('f8fa5cd7-9aab-4f36-8348-4796b1700a2e', '2020-12-03 15:40:23', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('fc10d92c-6469-443a-a6ef-ca65cb7500b6', '2020-12-03 10:59:59', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('fcdb4669-bb88-432d-b439-83d3f7f3056e', '2020-12-02 20:39:26', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514'),
('fce4e74c-70c7-4ee1-b186-927490e86970', '2020-11-30 22:43:49', 1, NULL, 'pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514');

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
('01138f08718a3f4af150fbded834a7edd046cf34', '2020-11-28 12:32:59', 'bearer', '6276253ee20303f9ab30f8c2dcbe715bb9eb7fbf', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0217dbad1f61bcdd6c91d8a92e94a8e4449541f2', '2020-11-30 10:27:31', 'bearer', 'b9193756279ddfc851bac917d75d37ee56c8163f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('021e9da007d9d097fce5608869a274d272414a87', '2020-11-20 12:49:39', 'bearer', 'ed24d672ff7495acbd8f0c179ea27c9dbd2312af', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0289a54c74f878ec28081e5d2747f5495fc91d0b', '2020-12-02 22:43:15', 'p', '73f31a70164869f7254c2f2dc6fd367ae5c1d621', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('02cf926d53ef0fbaa96344c67b8261c7add152e3', '2020-11-30 16:20:43', 'bearer', 'e9477ee6257356d836824d6794bee346a90fea2e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('04b36cce0f175721a34031ccef0c21f2a5f09206', '2020-11-20 12:05:29', 'bearer', 'e07910939db434f429bc782b66aa9073eeebe2a7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('04c54ede716b7a8c5a7c98fbe8b4e857ddc99d20', '2020-11-10 14:46:06', 'bearer', 'ea5a66edbe0edf935f388f93309a269ae94193d7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '42958076603801d30c90b1c4dd50a33c81f69a6c'),
('04f6de3d101438e7582417af4612a70744c865fc', '2020-11-28 12:37:40', 'bearer', 'a2b2437769fdb44e9b2ef15b5324eb4a1192d5a2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('052c7576422eeb53e1714e5d15d8e25e7d23e436', '2020-11-10 16:35:31', 'bearer', 'd45202630ebe70d0a27710bb211bbb41c734d57c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '56ca15be5832935079e6011cb328a22958340b3e'),
('0546073fbaf179a30e1f091a3a4fe8aa006231f2', '2020-11-28 19:34:24', 'bearer', '890813509b68bf7859dfeb564c762346b0895369', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('05977054afbe65644db34f0a31f7f86ceb5444da', '2020-11-30 17:58:17', 'bearer', '6cbc4e7660ca7b85ab789cb467f5c0ef9e21f9e8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('065f92ed7934cba4d2d292d3a7c1a76320bb8497', '2020-11-11 19:56:11', 'bearer', '332fa4cc6fe994930292504665676dbdb52aa03b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0813389015b717180e81c901497d6d7e5b223155', '2020-11-20 15:20:38', 'bearer', '6600b145ab3f1e0df93e46b9038e96fedc340c02', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('091de5abe02efd1abcac3a856694477cc33aa81d', '2020-11-10 14:11:28', 'bearer', '48bfacdd0317a1b0d58e3c40e5e4f84a92808e58', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a891756ced78ca5f25f723fa07fff33f0751686a'),
('0a1b8ec0e98ff60e1e73d1a45ba03089b73af4b4', '2020-11-20 16:12:52', 'bearer', '4b5e3d6ffb40481b625edd00b57c69d50d5512d2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('0a2252c77e4add96b4ec8701019a72c0d26c231e', '2020-11-10 14:36:15', 'bearer', '38a9c1d6d50f72459b087343b2f0d56b7a4defaa', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '194526eef49716ed6eeaa4000ec9c84a169b6650'),
('0b0dbf1da76c234f5da882a48e2f8d8d2e89fd99', '2020-11-20 15:50:02', 'bearer', '87d6fa01b6a869c0d010a521e3da2176f87d478d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('0bbb53ab4233d49a7b4afbeee1638c39b974bfec', '2020-11-20 11:39:33', 'bearer', '8a38cd991bdcf1df2c1a23cdee8705d50de9d3f4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0bef9b8e835513eaf6e005beb46f88c4d7fd55b6', '2020-11-20 15:07:40', 'bearer', 'ffb8da0a29667fa85052d4bb613445b130602fe1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('0c8fde5e20db8693b212fc1da956d1a170e6cb0b', '2020-11-28 15:28:24', 'bearer', '2de7a9ab48043f21f8b16ffd771f5a537e24f0a5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0d6e7554a3655f53ee2f2f0425c41ce7554c4909', '2020-11-20 12:19:51', 'bearer', 'b49b998289d253e4f87b5d302f49fbaff978a212', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0da25829500dd6906640cb914367549124423e58', '2020-11-20 12:34:51', 'bearer', 'd175bb15645679c0db5d4acbd2ae563ac572bb5e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0fb04e377c8692e5ace6b719e119bceb296d26cb', '2020-11-10 15:11:12', 'bearer', 'f2e68ebfab5f08f5a161516430c88e28f71452e2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7a9dc63af86d898289aa9cd1d103d68009ce9fdd'),
('0fb4b20eaedd80aa472d52822f6147f9bd59b6ac', '2020-11-30 11:41:25', 'bearer', '10692851c68db469606eee2c6e01128c0cb253ba', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('0ff7d5fc9c4ce21a951aca9c75780199c0a35611', '2020-11-30 12:05:30', 'bearer', 'a007d7cd1bd1db263827304a15c5e4b8360330ac', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('1199a3d0774772ae749c927bbaf1988ec690b886', '2020-11-28 10:15:12', 'bearer', '9e33f4e63ceb4fbd05c0921e9d9d64640bccff7e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('11c1c435047aea2495a73dc86c0402f95a7ad8d5', '2020-11-10 16:22:14', 'bearer', '9593a815b1e5de224c9a4ffbdf9a9927e68d42ee', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7633f885be32ac4c556f9e05a0a33c8c2ce6311a'),
('131ff93b699d2369f150dc87e9a0e4cb99c58798', '2020-11-20 16:17:07', 'bearer', '972f056b402a1aca0f871c903bce2e95cb042ef5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('14952d893135bf7c6aa16db72c131fbbb003f0ea', '2020-11-10 12:10:50', 'bearer', '1ce057359f3083b830e0a9245b9c74fae39d29af', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6c7a4fa334186ffb9c7142cfcea100e44b935a45'),
('150bad173823b655160ac0e350479f5c1659be17', '2020-11-28 13:17:48', 'bearer', '389293e8d73c3fb3be5c7e5cd7a9ea731b349f7f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('154e9096549ee2c234a8d190f1de9e6489f100ce', '2020-11-20 11:02:55', 'bearer', '9a9de55820c5db073580f20fa32b91d7e89feaa7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('15d2e9c5e7aac58d91534677f58a53c1c85184ae', '2020-11-10 15:39:55', 'bearer', '00318129edc9882f53bd740d7c410d5dd21d9420', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a2247dd6ac28ddb7ae05cb1a3ba2c2a0cd74f355'),
('16870d4795cdb05027fa4d84939e0dd5737ea3f4', '2020-11-28 13:10:18', 'bearer', '17d2eb146f36026485e8f7f80c7ab1e77f100b84', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('16d2bb8429f55fba5b1a6c3d50dbe41b4b1f777d', '2020-11-10 14:54:09', 'bearer', 'e3c83ce436211ba1700abd9b2db9831ba0b09336', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7b36c255e30ec358058fdd0eca3218957b36b8ec'),
('16f792b94db3bd805c00edf5626b1fedce1263c1', '2020-11-28 22:17:18', 'bearer', 'c8bd9448b3e264eb097848960fea3a4acd7423f6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('170d5091b940b00e8a2e0e5844ce4b6ae5de2952', '2020-11-10 14:15:12', 'bearer', '1b2f23deda0ce1511f0eb3cc643346703bd48f1a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4cdb88cb5a6b8b6cb427027fd7c3eadc7676c559'),
('179cfceb2dc625fc4ab2213fc189aece306feb46', '2020-11-20 14:42:46', 'bearer', 'f286d4635bcb3ab9de44f83c425b10b15bc18251', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('1857852d001b29e209714acb6d6d501e2b58e68e', '2020-11-10 14:48:00', 'bearer', '1d3de44498f928de3e7eebdb6d59fb67db51525f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7aa46f570656bd5e0a4c207fc11c618139abf9ed'),
('189a86be467afa728606b000e614901df5b47f74', '2020-12-03 13:01:05', 'p', 'f8441a241cdbaea752512cbd3437525e4ae58451', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('1a6ef6382f0ad987cb5a5d7a528ccb616350b810', '2020-11-30 11:22:24', 'bearer', '64cde0b8d52d84776c1ae1255218b12901d4c0d9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('1aa0f9370c03331d87f6e5b84c4fe1b9ed95af77', '2020-11-28 12:24:51', 'bearer', 'a98d542b3a91b7da92aa938dea97437d4d109c11', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('1b2c8ff04d28979b4b5b8491aaea3132ed3cadb3', '2020-11-20 12:23:07', 'bearer', '821e226279b59ec9bdbd7f1423fa7e8014db3dc9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('1bc482ddd5d5c7163b2bcf0ac3e128df93b3c841', '2020-11-20 14:09:34', 'bearer', 'b9d4d77d9dc8662bc34cebdc4a0e2401481a447a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('1bfb13b39894458c89dd82ad949d705f473076b9', '2020-11-20 15:18:28', 'bearer', 'e6a1d10f33c529a04823e4d25eb8c90fe367f187', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('1c293fb3066fb7dcee897278b24ad75de6bd79a3', '2020-11-27 22:24:02', 'bearer', 'cc72099a1b1c4c083e5d64a1805f8724fdbcc849', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('1ce2615a0329f9f5fa2872d95f3bbe06a3eabb58', '2020-11-27 19:38:22', 'bearer', 'd89a211c961cdd463170d27f332da0b4049a7841', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('1e9335bbd09195ee4168837b15bc32a49a9cf62d', '2020-12-03 11:46:02', 'p', 'be1c83eb00d0cc3f1478b42372dde0b6e10c5ff7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, NULL),
('203bca529ded648f5e52ef7db8d1faf8ad8ed08b', '2020-12-02 14:26:47', 'p', '73278cdba09fef1513cd4f89f8ae4c0ad0f51c7d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('2065040e7e566cf6f93e49fd5033c0a1fe860c35', '2020-12-03 13:28:11', 'p', '73fb0deb782921d83b7a908575bda10f5397066d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL),
('21623d4ba6b8e15d147d019866c9ef1e922596c3', '2020-11-20 12:44:00', 'bearer', '033471e516469b82988007f6b0be560e4f77a094', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('21979be7f355e0d4f4972012db7f4b0e2947e42c', '2020-11-10 15:05:20', 'bearer', '33add80f21816ef25dc3c3e7bac48c727619a955', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'e40fcc94abe01b0855bc73401da5eaff4e80df11'),
('22f5edd29446698104dd6402d0c32a35a9bd74c0', '2020-11-20 12:01:26', 'bearer', 'e330b6e7f2c220397876ccccaf5cbb5282d0a96e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('23448c8a2ec0c3f82024240aef97802fc103aba3', '2020-11-10 15:39:55', 'bearer', '788ca14c0a761405c74d0726b7d5b3ec1d74581a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd6bec5bf9784c6c9dc9d3ead5631ce1b442cff17'),
('23482cd47fda0248059a37181a217adc5fbac75a', '2020-11-27 22:20:25', 'bearer', '51a582c8b4719b9b438f7a3b7a5d41513a1ca743', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('234d8bb02b39aac42bd08258793fccd3e830963a', '2020-11-10 12:25:26', 'bearer', 'f18fe5ed14f7198cddaee0ff5a2b4efac758ff7a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'c50c454db7a090c640e46f32561ca898c789d01d'),
('23bdbe18ef3dcea05a9e5c4c9af99e08b895b80d', '2020-11-27 22:00:24', 'bearer', 'c3df0e61b2e9d6ad325be539de0636578eca7dc9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('23e8d62c7579b0a4fbd4cab14344baa645af8c9f', '2020-11-28 11:19:39', 'bearer', '118bebaf2ed80b6f00e53c681fbb83f0efa26ecb', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('24582f38915262b2bc5b533507089d37c8b5119a', '2020-11-20 14:08:33', 'bearer', '1307635ef0c87d5860c46ff83deb8daa6d440011', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('25f8f4a86fd6e70580a08aada7828acc1cd473f2', '2020-11-10 14:35:07', 'bearer', 'a1bf5d433b8c2774ad740a3b78ebe9cdb6ecfcd5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c756e6242dacb3272dfd0a9b00e98443d48a27f'),
('278b7e2b508b745ceb976afeb6a7e831423c2ee7', '2020-11-30 17:59:09', 'bearer', '7407c93440a7fde1b3ec0126ad0c1a368f4f0ef6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('284fd4e60879cf40a6001ec0b93fe22bd0eef92d', '2020-11-20 10:59:31', 'bearer', '1c6fcac5c461e11aa1b07329fa822a33f63984e4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('286aceaa10baf47f2843df6360a7960d205c6307', '2020-12-02 14:54:36', 'p', '720b5d2cc3759cf9e68dabe6388d0f09f1b489cf', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('28f566172ea30f25723b6a8b0d16f1d804aaf64e', '2020-11-30 12:37:56', 'bearer', '47c908a22c4c558c76b2fc394bd4987f7ec26e94', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('29462b99ed449ea650e4c0624f8c107444eceab9', '2020-11-20 16:03:32', 'bearer', '33964941223d6f1e1d4dcdf5e9e98817cad7dd64', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('2a8f696d5d534f6c979506cb5d78148496bea1e8', '2020-12-02 21:45:42', 'p', 'f093424f7be0ce0c0bf58312f78fd60a297ba894', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL),
('2c440c67d90b461dacc4afeb5fd6f9221c4db272', '2020-11-10 14:38:07', 'bearer', '952d745d48eca44ff6fb44286a6fdc172a195fa8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a708a5e267f28d18ec273a5668114e37bd60fdb7'),
('2c95e1ad6aa06cfa9921b6c6747ff7d0d306a3a1', '2020-11-28 10:45:56', 'bearer', '9e25e57ec84797c5662d85b2da4d285f49343b2c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('2d4061a69b2369ceb3babdb1a07fcb9dfb69b3e1', '2020-11-20 12:58:48', 'bearer', '42c936c5e09a2148020deef5f0ab38227a1f481a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('2d7f2f323a850cb58f0d5d892d12ba923d60a606', '2020-11-27 23:28:35', 'bearer', '7cab6df91634ba69a5eaf21741364ac445763973', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('2e7bd84e24ec569467cb9ff1c4d9ec13dd1eda6d', '2020-11-28 12:18:37', 'bearer', '745b4bf956f932e0812e516618908cf58dafe8cd', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('30f83125f6c6d62e33281eb8d30661e4b8efc9c8', '2020-11-10 14:42:21', 'bearer', '93633585eedf0170e112d8a2e4086d247eb67c4e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'abaf465118485f6e0417b3764491aa7d323b91fc'),
('3185a056628aabad901a768ce162d80167a4ec09', '2020-11-10 14:48:24', 'bearer', 'c061a05d276088b135d27b3c069bbe35ad15f1be', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c28d7f77279407396da5c48b15351ebee85e6ba'),
('322932f8e18af84ab92b9f52ecb0e5785a79ea51', '2020-11-20 11:29:55', 'bearer', '7435aea22a93bc1af33202610920618b734ea305', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('326ad565ad516c66a9ccf5b714617fda85865097', '2020-11-10 14:40:21', 'bearer', '44bc8164acd43295ee8b2bb6cc79fd82bb2d0b5d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b86c61cbffc170ac081a03fe6ba89733ec194e78'),
('329a8f34b33ee4e86db34253f5f4885e87e05c03', '2020-11-20 12:19:12', 'bearer', 'e03353e9737591403c83217be2260421c554b980', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('3352b2e3fbc9f9dc2489e04fae48745b5ea84563', '2020-11-20 13:11:01', 'bearer', '170387b333232d9d03c2e4bdfb342b9a84f9bf41', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('34592e6e6f4104b43b8e57a5e6a40d0c4cc37771', '2020-11-28 20:39:59', 'bearer', '981c82f76a3b6201487355f28ab3bb8a2952a6d1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('35ee80a1b91329102784e79bbecd8929aafd4905', '2020-11-20 11:16:16', 'bearer', '1212d1142b3dcc4249ca9856aad8d89a2a451e19', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('386c57009a557de8eab3eba59fceed0c3f1053c1', '2020-11-10 16:36:19', 'bearer', '173894d018986679a594af1913d63afcac89d683', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4df459580f0c7f30080e2bdd59005962587a654a'),
('38dff3ee8bb88536d67b743ffc0bb7f9d5d4e7fe', '2020-11-20 12:48:29', 'bearer', 'f7a55572e8035b26a99e28ff527de71ab09a19b1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('39d168064495506ef039cabe49158b65a7cbe455', '2020-11-30 15:38:04', 'bearer', 'f1715c90aa251a07138be915125a17ff4a43ac12', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('3a1cd9991c7a2f9e5a7d175d00e95b665054cf5e', '2020-11-10 14:59:59', 'bearer', 'b2870dc75cedc33e3b51b4aed044b880921d8be5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1ec7bf76a56a2ee678abf6ecbe09892b3b65f66'),
('3d5169205460befe80abed08bfec1667542b83b8', '2020-11-20 15:32:09', 'bearer', '338254770c84dc416560b53e0739ec4b64b1a4fe', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('3da9654f17e29e6ed0f23df0b4217dc43625a067', '2020-11-10 14:30:36', 'bearer', '887af4f1c6272be0a5fb33e4d0bbf557b949be3d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '46310754840a3272da6a5b6ab299237f3f1cb65c'),
('3eac6c75ef121d67f2022604da484906ff90e7fd', '2020-11-20 10:56:08', 'bearer', 'c142fc9a0e63f1fc02040b03a42fd2e566dcee37', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('3eb15c5430b2808a9fbe96b15d9c909629600a58', '2020-11-28 13:01:52', 'bearer', '0aaf8629537a9945f86e4b7664fea38f1bfb7213', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('3ec09da15dcebebae34aa127f256328fddfe46de', '2020-11-19 12:43:26', 'bearer', 'b7f67cee4e207d5cae049a36684ed6024bd50656', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('3ed3fd46b96c7f1acc1137ab56fa751b8ae42a9a', '2020-11-20 11:28:54', 'bearer', 'a80ba04d09b6d349491edd1db26a0388d8c5d52f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('3f3ac92083e20c8e0a37a880e7ca3951cdea1093', '2020-11-28 22:16:06', 'bearer', '52aa25957aff5627447f1be4cde636a3435948cd', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('3f967f22b975c512aca8252243c667f70d5544d3', '2020-11-30 10:20:28', 'bearer', 'a53c9744ac70fc172a81c01e0ab6516bcb99c3a5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('3f9733c7322ebf872ca55a36ef00c8cfd3dc7a28', '2020-11-20 15:11:37', 'bearer', 'df81955446fa218b4b43fb53147118305e419cfe', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('3f9bd33b4244abba5de7f50b28365fbafb7ca0a4', '2020-11-10 14:59:03', 'bearer', '0aa16aec75748cc28f53b0b4477291b9c4f1cfa9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '088f9f835019dce777d75d7e6411d78749a3942e'),
('41ca8c5e7a1d6986012cd018945a72e3c77699e5', '2020-11-10 14:46:06', 'bearer', '7605d26c51637ef326ba1559a0ae7c55acf0caae', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '216403219199483a34cd18813d69fb2fa863d372'),
('433df29e5da5b8669c7f4777b28747c1c78c392d', '2020-11-20 13:16:49', 'bearer', '369af3e679b0fec65a1af17a4d0556ff185fce25', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('43bc51e2216a01360c16b4cb249361320461c0d5', '2020-12-02 14:34:33', 'p', '53afe8679f3fa3ae3a7e95819ca2f8e391ae5ecc', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('43bdb30a577ffb2c508bc41441100cee00897a0d', '2020-11-20 13:20:38', 'bearer', '22fd7fa6b340f052092251803b5fb3db07e24386', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('448d09a69f5290d2609e2b1d46e1b3f3d922c4ea', '2020-11-28 15:34:22', 'bearer', '903f1f58823acddcf517a208780e5ebc30eb8bae', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4546363c4002557ecb5dc85ba265fd9996fe425f', '2020-11-10 14:58:06', 'bearer', '1ba7e52945f84580eee2b32257ebd0698f3dad92', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7552e56fa54ca089c666768fc6f0daba7c581b09'),
('46001a031634cfca053962d50ac1b90452a133f6', '2020-12-03 11:46:22', 'p', '9683d4d5a1a4299ae1f38f2357f6466fad7804a0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('462e160d2f33116c7702836e2e2774795bc8ccaf', '2020-11-28 19:26:01', 'bearer', '2be5f8a1e5189e3e4bc0f41b4b2ad8c827fce5c4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('46e33da18e63366d880e3a76ee9caf7f8e2b4d11', '2020-11-10 16:41:00', 'bearer', '9cb40c813db8ce834e9839e196baf2533c898f45', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '47bcebc74c4e2fd0ea86b5c70a21d3fdbd1aff7e'),
('49972bf9f71b9d6d3d8b06dc3227985534d26234', '2020-11-20 12:52:54', 'bearer', 'd273196a904ea4b20f0c680cb242afbc207be086', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('49dc145d7f698e784a26168cb1c8b1b470b43db9', '2020-11-20 14:14:15', 'bearer', '6b4b3293912e6f89c2abd6c3df7cbe862362c8b0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4a2cd518f0fd3c60e758536895ec6b7805201046', '2020-11-20 16:08:54', 'bearer', '640bcf5cc20ed700ad5aa817611bf045c5c0e612', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('4ab726ba1244f2131eb89c56f0a943d81f9931df', '2020-12-02 18:17:23', 'p', 'c8bc40e49592c5b3a7085f67f81e29bc71318b8e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4b1019ab63de1f45a9c3cb3a30dc714ddd2355e1', '2020-11-11 22:06:39', 'bearer', '98aa4baee807f50a9393262bf1ca75c41e1f2b21', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('4bbdcc524a944f843ca61b380200be6b9a8f2a73', '2020-11-20 13:35:54', 'bearer', '1bb5865e289e6f3b292f24f34a90da32a1cca51c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4d8f60bcae3264e6ecd9b3a0a9ecbb7f167dbf7e', '2020-11-10 14:30:36', 'bearer', '3af7275e6376061946438757481cde362f5f031a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'b0fcd74d21c03b8931d4765754f217fccb877390'),
('4e10a00da35bf83ce0eab98740a6a411f4e0f494', '2020-11-28 11:08:42', 'bearer', '671c7fa24cdc0e57016260f3b58fb519b706f912', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL),
('4e41e3e0639d3622a38be6123cd7891733955285', '2020-11-20 11:47:06', 'bearer', '3d77580ec7505131ede4270478a03e84891ed122', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4e4a65dd239792b541bc7c5f8072fd415c36fcdf', '2020-11-28 23:12:18', 'bearer', 'd94f5ea3073abd028699ab040d377a3c09bd91e4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('4eb9286d30f7aa17a43a2975c1dcc9bf59b078af', '2020-11-28 12:03:07', 'bearer', 'bbcd7022338f41b15474fe4f5207a28ab64f5549', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4f2eba15719cc48c3035dc898bb9bbea12c211f7', '2020-11-20 19:26:17', 'bearer', 'fa8a3716c8e7827df4e5865f13a9f04724d2bc7e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4f41a82892184b69bf450a19a7b7d6ce9150d889', '2020-11-20 12:33:32', 'bearer', '4c88d0d4cfb33baa9c4823a264236b0cc6421dc9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4f494274017f571bcee6b34e9bace6551b29602b', '2020-12-02 13:39:54', 'p', '83b13dc6b24e98d2470ac4e1acc78c4675c26636', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4f95290f38566c7d3bce6f6a3a19080bd6319388', '2020-11-20 14:10:02', 'bearer', '0700e66951560428918fb7a8fcfa83cd9d470a1c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('4f9e74b290aa2b84b0fc4c9b344554835e550670', '2020-11-10 14:55:08', 'bearer', '743836dc276b8de2c3951ad0bdad509443c0f414', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5925890b8e10dfb46e46ed163c84e2130664c441'),
('518664b0577587874f7e9c765a52e39169e7c80b', '2020-11-11 22:06:27', 'bearer', 'd2b54fff6a2964816dbfe5ebc6e8d2bd725b80e2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('51d2c659a2fce9ae4c059b68b2097baddd0d1194', '2020-11-10 16:40:35', 'bearer', 'b31163e022563c34882ad4a264ee1127002f0898', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '9a33d2451ef7674a9d7393bd829ad52da3083bc7'),
('527238b53520c71266aec109f98b4d3b82a9fbbe', '2020-11-20 15:37:08', 'bearer', '90187c428c2f11db95d9126b0963452ab10c25c0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('52c6fe65e8b20bfde03cecca693119742188f0a0', '2020-11-30 12:55:20', 'bearer', '863c4fd1bca1fa6c272b227476395d7aa7dadcc9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('52d68e4c59ca227379ddfba4011a3c05c982a299', '2020-11-28 20:23:24', 'bearer', '3fc716ed7633005de5753e1dc61a99f10d7aac53', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL),
('530674e728ca794069083c775087e1f7f8d3a551', '2020-11-28 23:11:57', 'bearer', '4d116b012b9eaeaf39d6f7071c23305e8720b538', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('545a6d37524b125cbaeda1619646346eb26e123d', '2020-11-20 11:56:48', 'bearer', '53229e94dbafe568be1e0c90783f37cca3a0cc8b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('580d03734bbfb3bb8e16a25e4bbfbb419f128ec4', '2020-11-10 15:04:52', 'bearer', '08e3a84e820a04e7f784395ed6a0972ce22f1f99', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1b251416d3878ddd1d54376080b60cad954239be'),
('58b6cc57dee5e59ca453e50e1dcc1b6ab49dee72', '2020-11-20 12:06:40', 'bearer', 'd3486ae161c9f4a56eda99e11d00dd7456c25799', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('58bf9f016ee93d81d40dc397e501e336a56a74d1', '2020-11-20 15:33:45', 'bearer', '83b3063d5545bdc9eacd6d027d29bd85ee0c5888', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('58d2b8af84b548a58b38ec6db0b4f41b43f3e2d8', '2020-11-20 12:28:00', 'bearer', '35396742ed13aa61b5123f76eaf5eab98cb81cb7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('5a2a39197cae2981d11c9b86e2cee2ce64ca872f', '2020-11-10 14:51:03', 'bearer', '6788cde92fb856e0f1fdea9ed91e4bca66aa1f11', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '13527fb2c03a54ee2d5fc670923460249f068889'),
('5a93b39b65f01d4d7bd33f73787db668bf9e0446', '2020-11-20 14:18:14', 'bearer', 'e22914f4d7bf30ea9e70543bead742b9aab7e42a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('5c05cc0b3bf6afeb742fb8d6bf2b06087fb8195b', '2020-11-30 12:54:43', 'bearer', '624d9bf2ea73fc5b61dddabb7f5a5eedbe180d4e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('5ce9a38116825142a918bcf43185757884d32bb1', '2020-11-10 16:04:38', 'bearer', 'c9c562ada0726dbdea2932308e6d5e8b1e2ed555', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c1d7454df8d51419f1b0d709ddbc3cef2cce6f7'),
('5f24c741f3e20d8c0e555d4089a815fe80861248', '2020-11-30 15:35:53', 'bearer', '967be37bc4ea8ed7eb9a21c43bbdc79fd80700e8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('606d4c8643ce8e3a5e950fb9d8abd934858f17d7', '2020-11-30 11:14:50', 'bearer', '56c808b8a11dae945f89cb19963b110552b00fa5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('60a0d423d036f8853d32633c7c8b4227c4a607ab', '2020-11-20 11:53:10', 'bearer', 'acb9e22ffd2bca39da9c2cbe1e1d3efb73008228', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('61618f0c05a0f3b40af822964a9cabc8c34513bf', '2020-11-30 17:58:57', 'bearer', '1e9611c8bc4bd14c53e1f4aa2c14f81139659e2b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('61bc86747943244d2dcaf9b9d9b3ae8dcaf9628f', '2020-11-20 12:55:11', 'bearer', 'bb6b999e707f05e5421e160688233328db28f2ec', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('628b782c35fc1f3d28070ddb7eb1c7de329023b4', '2020-12-02 13:44:11', 'p', '7998102ee2e3ce35411939678a21edcb20f85645', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('62fc0eb2fd5e3ef737ea0d6b8936170b4cb04aa0', '2020-11-10 14:41:41', 'bearer', '3312e071a792c02e6dc38463ed4032e659c17dd5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c1090317bf5dfba962daaa34befded4964cff245'),
('64fa40a6cbb933f76dbb122012c95b9021100354', '2020-11-10 14:49:34', 'bearer', '1ec51f748ce7ce2108d2ee961fca10373ad4ef7d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c7fcdd0751144e39dd995de2335e93659deb6ac'),
('65323cfd475f35705c2efca24105ff1e6e9e81d9', '2020-11-10 14:38:07', 'bearer', '2455378ba7ef077b4a671ef9f2fd196b4c9c3989', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '40380d14f2af9ca8b7cedb56aa011325ecc1edec'),
('67d85e6b567bea0585e760ae197a4b83dcfebada', '2020-11-20 14:19:01', 'bearer', '1f74df3979e57775a4b1ba27eb8d9993f8ee3293', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('6939e8205bd0d37938ecb869e60f407c885ec062', '2020-11-28 20:22:59', 'bearer', '3eef863c0a67018346ef913b87292952218cc24a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('69bda88b9bcbe8e4b7131521f29a0e363d5a405b', '2020-11-30 17:56:45', 'bearer', '8c1c40ded77b96594024e49012e12834a5a6afaf', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('6a5cec6494f6e5e873115a9cfd7abf000cdf33e4', '2020-11-20 11:11:59', 'bearer', '485e7ae0695568014bf28ba8e76f2f31a7975670', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('6aefb9dd6b054bd2b5de6265cf8b1f17a1f373f8', '2020-11-30 10:20:17', 'bearer', '3cb4a7919425bb0d23714c2927720fcdc34b8486', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('6be5b903e48da408a24172c7eaf73cdbc9db4c82', '2020-11-20 15:51:59', 'bearer', '4962ad7fc9351788fe12d6391a34b14dd697c55b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('6fbb9e7604c0839a2cfe7353f90a1e49e1e17f5f', '2020-11-20 12:17:08', 'bearer', '5c4960ce7e8e0ee76f392f25b3601d26e339f00c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('702bf3745f35fc0dd259026f4da8a7800424f0b8', '2020-11-27 21:47:23', 'bearer', '2b0e48eec5759c47c509ad5621144cbb1f443973', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('703909544bbcedee5b522091b94c1a7b4d18b9cf', '2020-11-20 14:31:41', 'bearer', '9ebdcea6327d549cf53ae9c363c8a3f67a44707b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('70b452b81b90b2158fe2aeec933b7638d7344827', '2020-11-20 11:34:00', 'bearer', '1ccaaf2f170fc1ff58e570415ddbf747730c75b4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('70bc18f406780072d3a8d0224a2198b1db3dffd7', '2020-12-02 21:35:21', 'p', '4774ff9721c219bf2b8b2f9d965601eb827f3c5a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('71a7f54d11f3cac4e02a5bfb46ca1664d53bf72f', '2020-11-20 13:40:03', 'bearer', '6cf78a0e7adbf90fde5f51d1ef8a3f8c845825f5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('7241eb7650439b40269effd2d7479f621cef960b', '2020-11-10 14:56:41', 'bearer', '2e2a53b9ad9d9727926b939513ec2b88a04f0a27', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4ff6536582ba71ffa7fe676482b603b7ec079630'),
('72cfb3a515e9e8ad6e8ff74caf6bfc7ecc64491c', '2020-11-10 14:40:46', 'bearer', 'd4b13fa3e568c1623d95656cde8d776b3abf88d5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'fd36367aaec6ab88f7d66e81c8cac28339c0bafc'),
('757418ab655dd39a78f36c526489e0a79973c4d1', '2020-11-10 15:01:01', 'bearer', '9d5cecb1dc0c85ec35823dffd063c27596c82ca6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5cbe694892f7166d8e1da65028036f171259bb33'),
('7618ba9dcb57da6e52bef6802024c5cb9dfc0d4b', '2020-11-20 12:08:42', 'bearer', '2196d795e0bf030e0994574162084d38e2f28976', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('764b21eeba5746075249a932be206e8e18f7be61', '2020-11-10 15:05:38', 'bearer', 'f7321ded19d4dab9a7366ad332bf84bf9a8c8b39', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c5b849da409f2be478bee18469a014f03176edc5'),
('78b84bfaeae151c1d36b9a9abc3202533dcda008', '2020-11-10 16:44:42', 'bearer', 'ff141b28f35cc9e84e09972220542f0c095e9e0e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2bb35c5efe7dcf97247ee5f40d80ffad931424d0'),
('7ac32a2c55d8df6af7148b0f31200dd8725e5fcb', '2020-11-10 12:05:59', 'bearer', 'fe79f93e05d074b7764f210067bffcbb704e0471', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5eb6d12073950f8a809150fb4c49117344b14a8b'),
('7b6327d4c86a963cdbf036696ac8262f4ae6f4bd', '2020-11-20 14:33:30', 'bearer', '2cde6e42fc8ee4f560082d1421715830e49873af', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('7bdee2256114bc047a824f8f26dda4c0c0165724', '2020-11-20 12:26:17', 'bearer', 'c4914d6229a509a735ccc5e6f1455a5058a52917', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('7c7df55264ba967c404d137c6368b58e2844f70d', '2020-11-20 11:19:23', 'bearer', '8e8f76c9ca719aed0c59597392f8d7e289f70401', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('7ecabbf0663a9313fdf1befe632d101f7653a36a', '2020-11-10 12:38:12', 'bearer', '555aad1aae3f306aaebaf789ec6d0129c6d56d94', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5068461902d9572e267c3cf5b9774486eda4d653'),
('80baf22dd14045134004f35d416488d6ab0ceed7', '2020-11-30 11:01:10', 'bearer', '24726117a59f1be7dc4173e4a218bb6142da2f48', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('8139bee7b024f91ca8989c98b4816c9d8723503b', '2020-11-20 11:58:56', 'bearer', '9f537506347aca89b70970388a3d7542cb1871a1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('814e69020ae85dff2d46fc6a263df595b169f70e', '2020-11-30 22:59:17', 'bearer', 'c19ad1649d5e8409d0ae06844e1d335187dbb53d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('84b5e4e2f8ff3ba95fd779855f95d89df6ef99c6', '2020-12-02 16:40:17', 'p', '4f4c2de4a5fd53fa35786cb9d9248477cd49ac81', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('85560f7b420d5b173f073be53dc661cccbbfb40c', '2020-12-02 20:56:44', 'p', 'c771ac78a925380762844fd0c3eac6740f2ef8de', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('85c52951cc253d048f76625f5b52ce916c9390fa', '2020-11-30 17:58:43', 'bearer', 'f63b31c0998a95c7c8ea58d92abfab9e3da0e023', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('878634a860732edd3f502d7ec8767339da495ced', '2020-11-20 12:51:34', 'bearer', '8d2d2aff89d24f89bbbd405784c4d416af4ac2ad', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('879da907060e7ca0a8d0191960822fb1e9ed8372', '2020-11-20 15:05:22', 'bearer', '8d6c945c1382395bfad947f8df4562be4be72ee4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('8bf232147ceeae743b566c9574fb2db4d53baa6f', '2020-11-28 13:19:10', 'bearer', '59d645d9b365152d4d76fa11b0f18483f90d8c09', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('8c5c8ccb15ffafe0f7a66cb0d6f13ee417dba09c', '2020-11-27 21:51:37', 'bearer', 'ff2ab65e22644af79332b27858a7b17b46ed9394', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('8c7e81fd88eadbaad9ec50460007d08290319760', '2020-11-10 14:47:23', 'bearer', '0d33a69815a8286b4c9bba020fffc52b427ba93a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dac10cb5306515cd3b45859e1b503742a5267934'),
('8d2ff17e5eeab91ea70919078097d0fd38994570', '2020-11-28 13:21:54', 'bearer', '80f69301d6e40ad1fc8843e8ab4358089f0f839c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('8d4d7fd09f8d314a8291ca1090742bca177cca3c', '2020-11-10 14:15:20', 'bearer', 'edc68541a0459cef9300587e8f6dacee212de018', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bf028e47350adba1ec7227e4c241248c75763cb9'),
('8dbd3b4e99e0f27b4637f445a7cbbc5e4879ac6b', '2020-11-30 11:46:09', 'bearer', '7eb2a2e036d679bed0152f34275d5a9218cfa768', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('8ebe694ec85317745e18ddc8d9a0fd7a5f857e17', '2020-12-02 14:20:28', 'p', 'fb2502de7facc51c4c5899aa2a1475ec9697b90b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('8f217c68bf55824dfd08f9dabcc894d0fd9cbe0c', '2020-11-28 15:44:56', 'bearer', '3101f2ca83a924aebe73fb4ec9821cf3af030ccf', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('8fe7914eb61829796cc40ac7ad4d4a638854d1ad', '2020-11-10 15:54:23', 'bearer', 'e83ec552d54eefd5e43b28794713ce6080c20bd4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '03a5be481fb01b17175c7f30715120bbc76eae32'),
('9269a1ea1228bfd65da33ef866838d60697a922a', '2020-11-28 22:18:05', 'bearer', '6720ab953653ea1c1b58d9464e8eea43abc899b5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('94568820bb61411dfb3ce11351c48396c11ea6ba', '2020-11-30 10:50:03', 'bearer', '648f0cbcd9a1832e0797178cf71d58fc1aac7e7d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('96740ca08a309f439c28accee79b9062017fb1e3', '2020-11-20 11:44:47', 'bearer', '63c5ccf16dfb3160cc0086dbad683da4bde18c71', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('96f12181f440de39b8a77947a3d76f26e6a88e51', '2020-11-10 12:55:29', 'bearer', '1850c0b45397bc654a749c52adeae3555283b6e9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1c6df916a98887302e62b3ab71fc9c45105c4cd4'),
('987e0bfb0dc26b7bbb647a11adc802b13a7efdbb', '2020-12-03 13:22:01', 'p', '2ad7e74f81ba88556305f218e0e3def6547e906b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('98a5598ec9fe5fb366c118366cda2ed96580a5e5', '2020-11-28 13:31:21', 'bearer', '224289f52824597fdd4632e49bb8152e188ed45a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('993a85612114c4cee0cc76c374b2e4d651db317e', '2020-11-10 16:20:33', 'bearer', '7a048d4ab7ed4d8807f6fbf64327725ec4755b6d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '12df890e633e5fdd446f99a7381324986273840e'),
('995121cca35725d3b5fa40d10f5868c7a2e5c271', '2020-11-10 14:11:53', 'bearer', '03cbd470227abe73f1f1ec7216a0bbf2981dc02d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'aa17416cca1a5224c9e2f63c329e30328359e12f'),
('9994c6ded5aa0ab0f2e1a3ea108343934aa62309', '2020-11-10 12:08:04', 'bearer', '22c7256161f90d1189e9bcbbb9c97e254cce2bc4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '29a590326a8a2ac8c3a90f8a2bea30fe83f05d62'),
('9a404fcb8cb7239f8a675059bf4434ccc125d701', '2020-11-10 15:54:23', 'bearer', 'a4d179d219fa6f8c9e0ef555f97549d29d10157f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1c307d509e0f5d3ae2d7244f1121478ed427d0e9'),
('9b0fe5c28eff95c2b4647481f163a729d55ab756', '2020-12-02 21:46:41', 'p', 'a0182362e1e984b825d9470acafbaabdc9d77cf5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('9b2ab728308b744a0c4b3d76ec2aedc43e3ebf3f', '2020-11-10 12:42:21', 'bearer', '5054b6d9b16e7553de274730bbd94678a745a4ce', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'db6222c42598e72e26f198f7c4af832765842f23'),
('9b2dbd8fca6fd82cd227b2cc79b08861981a5ec3', '2020-11-10 15:04:30', 'bearer', '3905e68f6c8f64bfbb711614ba740137c0210cbc', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '68c6fc1f2dcd547120aedc6120d185c74398d20c'),
('9b60b832ebf8bda0cb5a1da2a126e788afe6b379', '2020-11-20 15:08:31', 'bearer', 'a2587e151f8904f9f195c99f3e7fd22ec3850cc5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('9b7393eba41b5cefa966667ef8b061a7d95be1a3', '2020-11-20 15:46:06', 'bearer', '1fe9ed254c049a6aa5902d496f87bb9538d6c448', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('9d27ef5dbd1c49f895fbf37a6cf552a18ea73176', '2020-12-02 18:26:07', 'p', '67a8480cd32425c9aa3cc76c1873d394c7067475', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('9d2fd642c80f70bacaa2c2f5815a7a9928960f17', '2020-11-10 12:13:34', 'bearer', '3ba9a6ab0eed90f95789e2ecf5985806eed6f137', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '56dbf2bf0f8c8561677233ef985d05a3b5ca87ff'),
('a0124b1fae4ccfd23bc0beb9e96afa7b292cae4d', '2020-11-19 10:54:10', 'bearer', '608ae4039ce6b676a26563b3714426f30dd9a522', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('a116d064ad6b6b4817f9a7f128c9eb11f3ee9f93', '2020-12-03 13:25:55', 'p', 'f389049d0b72b88103a878c2d5c6a2882571d231', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('a17a6074dafbafabd3a75c1592e82f27d96d6ecf', '2020-12-03 12:00:59', 'p', '4ed9dab00f7629e17f84572b53a28ad9de4ba5c2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('a336902e49508642bfb86c1f117502363749abc3', '2020-12-03 14:37:21', 'p', 'cbb5a1b5589528de49b8674061b138303a2d421c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL),
('a4a8a9c3827b9a63a5af6d5984c94c97d676fddf', '2020-12-02 15:40:37', 'p', 'abd5078e2a73824b9dfd2cd897751454f906f5d1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('a5076eb20cf5b5b176f91c88bc1779a6e3ff4cd1', '2020-11-10 16:44:34', 'bearer', 'fa87c8595f146b283a1d5a3b8a1f69c88b0c1099', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '66064a656a58c79163cfc528ba927019ad8c1dcf'),
('a590f2da9a8551ab110b195a19134f34183b4f7f', '2020-11-20 12:13:58', 'bearer', '15693630c7ae550ac1fcfa32780c55e8262adcbb', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('a61ce5ba031799b0247287df1db0f6b3dd5f9b41', '2020-11-10 14:57:19', 'bearer', 'c16f74ecffe4fe876f2f53fec6c6a44a64476a73', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '39c91325def93a71264739eb2da7b27854b0884f'),
('a6224051814a80bc01b4af4b05171ca12eb4beb4', '2020-11-10 15:12:51', 'bearer', '77f7ed492de8ffebc0d9203df1dd95348bc7d3d6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'edbf6d29e833340d1fc503a7a6259e8d15e40620'),
('a63f4a7519f53fc5227164e8d80bf3f50d99c483', '2020-11-20 12:44:28', 'bearer', '150f19941f49864ee901bdeacaba59e40e17898a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('a7e159d8b64bd5aa313f11b545fe185da1b5e666', '2020-11-10 16:19:19', 'bearer', 'fbb50e5245c46fe8d8f5f51e2c5273ad3553f979', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'f67818e603d905f0d827d3c7fb35a19f23cb1968'),
('a8288ed81ba4c1fdd3ae8a0dd3ae33dc38b693fc', '2020-11-20 15:27:59', 'bearer', '7151c47e485e80f44d228094d563723ac6b2c8cb', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('a836bfa8b9b511ab4c9c266ee506589d9a796319', '2020-12-02 17:06:59', 'p', '050be8a4d602005375a190d816fc9c7f86dd77cf', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('a8a95164a014f528c416f7b70fcba66669085271', '2020-11-10 12:05:11', 'bearer', '793fac2d9fa67d33edf278b0eac721cd6e882404', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1627c5f7612f59970c79a99283f1bc5a8f993def'),
('a977d5ed973e732ede5628380e5356e62ba04a9e', '2020-11-10 16:36:12', 'bearer', '895d43e5b8841275a88b07c58377aa6d5b47eb1e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ed8c5708fb4c225c981fa1891483ecef99137c95'),
('ab04cfc68627c87a145c3d8524934440c84c8007', '2020-11-20 14:40:17', 'bearer', 'b23f26ab74e5a15df03263f1fa6c44ec37e4a769', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('ab27469b6a55b057c706e322a5a57ae25d414310', '2020-11-30 11:22:35', 'bearer', '1c1ba533f8a4ef7895a7a9d992a391995b32fdfe', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('ac3a9d652104788e8ac0889b5fa15f151cbb5852', '2020-11-30 10:50:34', 'bearer', '4c5ac59f51d9e505ed2c2b5b46ee26f74375db07', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL);
INSERT INTO `oauth_access_token` (`access_token`, `expires`, `scope`, `refresh_token`, `valid`, `extra`, `oauth_client_id`, `user_id`, `iot_id`, `authorization_code`) VALUES
('ac429201058ce1be116421ea44415b2b06a0c94b', '2020-11-30 11:01:24', 'bearer', '43f4ba80a4efc3ee7b6233ef5f0fbfa62c909fcb', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('ac4fd45710ab5ebb6b3a7977768c82cbe7bce1df', '2020-11-10 15:02:07', 'bearer', '67bb50ecde5e43337b9dbaa4596ac2a1fd758bfd', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '503fc92dcb9e778e0ec1aeb1f6cd49a8c21afa7e'),
('aeafa82a3058d22e93edf328543cce42d8133390', '2020-11-30 12:51:36', 'bearer', 'c96907d367714277ba2ac873be64104891833e5d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('b0321ae835c87e5b740d0dd73697bfe8c5a98d3b', '2020-11-10 12:06:51', 'bearer', '6eed3048f5cb9f311c0564d9fc59e8e108de90e4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6db2ca8013321e852eb758b62b4d01074c95ee01'),
('b0d3b89e5ca11c041d3767c5696788de82213596', '2020-11-10 14:56:12', 'bearer', '6da386fc1cafdf6d55c0ca336c05769a1ea1b697', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bb3dc14dbc0bfe716059ba0007b22b15358cd5eb'),
('b1863ec9487270c9ee06c134d7bef056b40083db', '2020-11-28 20:24:52', 'bearer', '0b68db90e4c3ee8d5bbc3cfa209deeffdc331cb0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('b2efc73e636ae3f9bfc5efe36c0a70e6c760151b', '2020-11-30 12:59:29', 'bearer', '6f435ba19333c21edd87042a7e1d03c2beb9f015', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('b423237914a59ab5c0a00947c81c5d1f707fd276', '2020-11-28 20:15:01', 'bearer', '76cffc7661727996878e1067be657230bc408d0e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('b45ffe446bd2bf2e667b720e3a007753f9b7af7c', '2020-11-20 12:04:40', 'bearer', '4399642e0284cd9963fe55ec4ec2a3cacd4730a0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('b502e7b12c48745fe42fe3d874d06bb3f75b5c79', '2020-11-20 11:52:39', 'bearer', 'f74411b9affa65f3cfad9f17d28630c2af472dc2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('b5b8131849df0a8af261df4e17031f10a9d4ce29', '2020-11-27 22:31:27', 'bearer', '2b12e763a6f2fe7850878443ab6f2b3f10ff0131', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('b83379cf0c88ff1562c17efbea88ece95d03d262', '2020-11-10 15:11:54', 'bearer', 'f58b9cf71e905b99570c69d0d009a429148659c0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a478845cb3a6b4fe253056970c061fb29a08ff96'),
('b9b1b4d907da47496558d663e733b3558596a037', '2020-11-20 14:39:13', 'bearer', '25fd88312fd85a77c8c8afab5677f6e1ff165ac8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('bb193706855fc586f229811ac0ae8e1a6d378321', '2020-11-30 10:13:42', 'bearer', '79e1e867291d8adc0c17ac45ef005b18d2d041f9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('bbcff618b0514065d1bbdedc1fe8bf050099a2a1', '2020-11-10 15:11:36', 'bearer', '981df93e4f8f30d1e5f80ad9523b7aedd7bdeaf7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ca5f648117ba9e80b01ed95500fcf2d19aebd0a0'),
('bbe3003bbc38483108329af660a0bb5423ab5611', '2020-11-20 13:25:16', 'bearer', 'b5833295857aab546dc5bcf23b0a9ed730bd37ee', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('bc58274dc971713b512c3930530e8f12b592be59', '2020-11-20 12:00:18', 'bearer', '9324fcadb6a6fd9447033028b75bed1f423e9637', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('bcbe810a2a73cd7a29b2cc7a11b934c341c3d522', '2020-12-02 18:34:42', 'p', '241a49fe08eb60da55742afe7a6403019c91c841', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('bcfb896b7c661df7d22366d732da8b3eb17581d4', '2020-11-20 13:29:56', 'bearer', '36ebb1f335905fbe6bba02444cf636394d32cb4d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('be9f477e1fc52120cbd06b7acc7e66f0fcaa2bd9', '2020-11-10 15:06:58', 'bearer', 'bc7972931c63459079b827289783f2c9ca27c6d5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f94619c2024519b7d9706a1e6c1a87f829cbc77a'),
('bf36cd8fcd45f8f46563b3475c324f5b3514bd07', '2020-11-30 16:20:10', 'bearer', '029e37158f2b71a9752a6007621338ddf89c943e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c03d2f7f1d069304c9abddd406c3869bd0b6eaa8', '2020-11-20 10:55:14', 'bearer', 'ba9c4748945256e990f4e43dec32d417ff383280', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c12c76107bf661de0e60f2fdfb33ca414e9ed012', '2020-11-10 15:10:27', 'bearer', 'db6926da25328b9575e097bb664cc48c7348a553', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1965407627549f28ca44b7469bc8dc27d4174c3'),
('c2fe907677d6475ee884d273f6d9cf4f8759bd40', '2020-11-10 16:40:35', 'bearer', 'e4eef57d527106c601ff76ec85e98631a21d084c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '70f543f4cbe41daeeb9156f5233288c8e11e2f03'),
('c30faa0a25948d2dd78654a04eceea46c4a1830a', '2020-11-20 11:40:34', 'bearer', 'f905ae1d9c09b5a15047d881967e59c92c3d3a86', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c3cfd8145d4676c6acaeb2c2a7fa4c25d577bbd9', '2020-11-20 11:24:46', 'bearer', '5ea8bd6857d541c72dde6984a4cb3d15de43e4dc', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c3d52b484ac91d2bfea146c59418b43278372233', '2020-11-27 18:15:28', 'bearer', '63d788ca12c399bde857fe2b2d02956f61a2369a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('c3fa076989f85eed92b3d173e4f7fab13c2add33', '2020-11-20 14:48:21', 'bearer', '8c82a2f253259cbe7d968b64252f2fbe5c183590', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('c42ec1aae86fe9f6dbc2b5607268506dc0f99801', '2020-11-20 13:29:25', 'bearer', '113101c662ec273c1cf3d70ab96dabc46dc7fef0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c6ea769ce3a0cd2619613377d7217badc676ea22', '2020-11-27 22:33:13', 'bearer', '32eaac469bf7881e10a29e14d076f25b50d826c0', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c89c069c6cedfb311b8bb2a5e8819b0edcb60266', '2020-12-02 16:00:44', 'p', '930b124669f3d749dd2686fd6b922e763a9203d6', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('c9e88881758d3b63bf080702d9f7a990b9dfd898', '2020-11-10 15:04:53', 'bearer', 'b0adfdef37e102c7998106917e7daf4da5f0e699', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '513eccb4ad4472d61fe2fcc6eb1ddc19948e757b'),
('ca0ec994bc954ace59b05cdc419343452680325d', '2020-12-02 15:40:56', 'p', '4404cb371465807c40ae6b7bc9569ab31f411c6b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('cb367d0c17fb9d639641816fb2b829afe11f8022', '2020-12-02 17:07:28', 'p', '6095e604a8859d7297a18f772e70448c7a858469', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('cb75df8f097841f3ff5eaf194818f893e3250427', '2020-11-30 12:14:45', 'bearer', '025e5df06b72d864b8072d03b0c8f780a17703ab', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('cc0835da51c5341766eed43a12c3203afdc2cc76', '2020-11-10 15:06:25', 'bearer', 'dcb72cde41864874c0e0bf381c0ef734b2918419', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ce5b5989b437c9446f7dfa10cd2aefec0fca5f1c'),
('cc8261737035ceb3cc78706c6dfe384733e3a16b', '2020-12-02 13:11:43', 'p', '8813bcc552befcaddb04c0a3ebb25c605adafe14', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('ccc8f329f3c823a14e9d3d84b555fa0283693e4e', '2020-11-10 12:44:08', 'bearer', '1e361c872135d886cd0dc4c2a22c696d4ff02d37', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '9e63ebc346315feb86b24cc7a270269821e54c0c'),
('cd4bde1cc97c7afec6f8da81c577c5b459eddd36', '2020-11-20 13:18:02', 'bearer', '8ecfa5d50d46b0fd2727feaff2a3da04b42f4736', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('cda1ee6ff88e493cb00318948fede03c53ea8849', '2020-11-28 11:11:30', 'bearer', '8d81fcbd95d405cb7e5842cecfa436b5a151d6d4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ce33b7ed7a927714e1a46af387c122038a54649e', '2020-11-20 14:24:39', 'bearer', 'fad840760a537bdb83538dc4abefd36c1634c1b2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('ce350cb042fbefcdce2957e107b1bae1dc030fd2', '2020-11-30 13:45:25', 'bearer', '7cae3ddec90019967191b0edf3e362c35f1bc48d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('d0db290e4eefd77f0ac0e756951e07359988d126', '2020-11-20 13:21:28', 'bearer', '4c915e211809bea78b2a8d728f1673242c112a45', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('d18dfc3584f8f6bada6244e2837941cb006630cc', '2020-11-19 10:55:16', 'bearer', '9a14a40fb866148c0f24a58013d2de99dd1672e4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('d220f9a74d8280b5d4119f6df1f46bbbbd412487', '2020-11-10 12:22:29', 'bearer', '78ba2daa0c0e6bfa3db1f2bc7fd1f4df64353c8d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1b22c14d6ab107292c9342fd28d443a0a9d9ce44'),
('d2a4e6e17992fc46f706f075ef6cbfd8289abf85', '2020-12-03 13:27:28', 'p', '8edd3449576759d6039b7494775dc76e9b7506fb', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL),
('d32c375756a916582071f4debca412dca5937a84', '2020-11-28 15:51:37', 'bearer', 'a7bb0d14f1dcbff5af9273d421e1a8571f665b24', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('d3ba77d6ed6954b081cede8ccc3fab3546cf8ea7', '2020-11-28 22:22:26', 'bearer', '6309defa65b55eb26b1ffa83aca50bd6affff5f9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('d45cd53bedeecdde3a6f1bd1453505de33b35a44', '2020-11-28 15:42:01', 'bearer', 'ddc7f030b588079a0aa3d41e5887adba96fcc524', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('d47c96adef90f304c780c8a0ebee14bf964964da', '2020-11-10 12:01:18', 'bearer', '4793444b82a3831d233e60a39ffa5a0bf3bc1f8e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '3809b706660c5f83e0708ed98c4b56d1e4b69a3e'),
('d48e805c1eef661ecf6dae6c45b1df13ccd55d7f', '2020-11-10 15:09:36', 'bearer', '28c873dc18909cc16d47760a8f09a9493d53c71d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2a8afa1446f1e1d15ac3873156eb7aeedb101ac1'),
('d5711e5bbbe5ca2e45a9c8bfec956ea3dacb2c51', '2020-11-19 10:55:52', 'bearer', '00b4928b81f8b5fd723820d83248c3fa3caa5b7d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('d5dd1f246e5160c756177906a182f7af121a1902', '2020-11-28 20:25:03', 'bearer', '50fe2e431eab8e25789df7dba5f8b056cdc96c7b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('d69f8e20602c1139bb80b749a2f6996594448deb', '2020-11-10 12:10:50', 'bearer', '022880dc5a4c8583a394ee1a97dd3b689eab1a12', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f7fa8c248eb6305a5ff8bb4fba15ee69634c0947'),
('d8f8d311a0ce5462d8738936c536e3ce18f2e491', '2020-11-10 14:49:46', 'bearer', '9ee852bfc831793e047eaefbb2e7162a7473495e', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8dbc63dadd8745613709520066642f3e4bdab0a1'),
('daa659e26c27b7d25b2eb1c5cc5aa2fb520e8169', '2020-11-20 12:20:35', 'bearer', '75e94d47ceff1bcd4c668d97dab5853dc9a23f1b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('db6a661d7c2647e3377f4b6e7aee157ac915948f', '2020-11-20 11:38:46', 'bearer', '3258f49bf7884ae750f7be21847cb6a1c020aa25', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('dcd76616e0c1ac22d70251a1392ba4061b9926e7', '2020-11-28 16:11:53', 'bearer', 'd4ab1500ce4f3aef3ffa2cfc63056c6f67af7f5c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ddf4dfbdf396f6e5ea2d685dd7d6968b980c2e41', '2020-11-10 12:02:10', 'bearer', 'f39cd276034ba4c72a0ac3485bbf07254b40cac9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f83a121a99e43f0d7b7c12b2f5980f788b2043e6'),
('e10d288e1b6a80f001adfa1273368eb845b81ca3', '2020-11-20 12:09:47', 'bearer', '659287def7a2c0a488faa99e7c8b59396ddd4e71', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('e29d2666fbc268d155d717417fd28434d2a5a35e', '2020-11-30 17:57:28', 'bearer', '4c096f7da7c859affc46567639af1dd3875617ee', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('e2cc80b5951b6673fd42c1fb3500c8ff2f5f58b0', '2020-11-20 11:41:18', 'bearer', 'a33664a7f141da10302059794851784949355d13', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('e3b4453d09eaf15c505a54b56350c2fd441ac0ef', '2020-11-20 11:42:40', 'bearer', 'e71bccfedace25fbb69092c70e77a941fdc27cc5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('e41e8862ec122e5db02d2725ac940facbf05d41e', '2020-11-20 16:06:10', 'bearer', 'd80f88e7a29c1e5a4f1e6fa629a4e0cba864b8bd', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('e53b3efe18702c1042cd4fff555fb4073dec6295', '2020-11-20 11:57:48', 'bearer', 'c16943ba23ebcd8e7ab7f97c0c59cf56da97eda1', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('e7666c0189d9be24469b261ca5c15b249c7f344c', '2020-11-20 15:25:52', 'bearer', 'a71b9dc85a677a5a208362de268128f5d03c7358', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('e775470efe4d03ce186bfa93325c9083dfb99fee', '2020-11-10 15:54:46', 'bearer', '167750fa609be27416814bb0ce4bee78465d896f', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd3f903799ce0a1891ec3be7705bc638af570f4e4'),
('e87d2449c53adab4a5395ca793d0855803ea17f4', '2020-11-20 13:08:40', 'bearer', '2ffe8fd59aaca9dcb1d36fcc5fbcaf350117450b', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('e8a5244fc366913d3f5f8f0422c9b4c915f202aa', '2020-12-02 18:14:57', 'p', '142c3fd73723d8d7173c88be65b351846ec4d05a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('e8e071d5841d3b76bb1b2dc177e1942f9ac4a38d', '2020-11-10 12:39:42', 'bearer', '5cc5e6950430bd080cc520f6d362ac7baaf07f52', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5c5e071e6b929070520caa400110897fc0c8af45'),
('e9b6c7f9bd78f6aec8a30e610d6da2f9fdd67950', '2020-12-03 12:37:59', 'p', '17bfb793ba617be2c9470c7b6c65f60c1ff189a9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('eac79645f47d3b505691b590dd61889574647d63', '2020-11-20 13:24:05', 'bearer', '60a5b09525e601f9a4070c36ee8364dc031b76e7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('eba8d82ce45c5d33187df1ac0af33b9247801054', '2020-11-30 22:02:03', 'bearer', '69b7a2720d5e3c0826a523b90dd5468e27197a3d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ec514778085025ffc87282eff1baaca1773b3ba0', '2020-11-20 10:46:46', 'bearer', '3ed57466567a2a11a17f3194bfab9f083b9f769c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ed1ca8b24e74c46b3c35d5f0fbdbdb07843ac146', '2020-11-20 13:28:30', 'bearer', '0c0f4d403864983b94a0856011d9438a77467ef9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ed8f6b2335c49d3b56136c820dffe38cc57ea092', '2020-11-20 16:01:06', 'bearer', '22fb75d26a09802a0654b7620256fd7745bcd394', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('ee0f1162eeb527fd739d221f359bd8d56f4b7f41', '2020-11-10 15:56:05', 'bearer', 'af6508137c9d6a53691072267806200c28a837d3', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dcf0f983647b9818fa3072d8b3a1a5842145fa72'),
('ef5c1f659a57b9ace30f64e07a53bcc0af8d1359', '2020-11-10 16:36:23', 'bearer', '5835b488e29c0cd5f5e7ca92ea1cba6ca525e86c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8f5044b72064082a89a6c155db47b8a123d07b7f'),
('ef6da3db8f66914d9a55b6ddd08538e59266a415', '2020-11-10 14:12:37', 'bearer', '31e7ae804c9475c4c8b6596a80bea9b019fa4a80', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f6d27f3d6d61b52f227b50617359d5abeb69f305'),
('ef83bc7a96ff76fe32daa4cfc0f2118cbe9ca8c1', '2020-11-10 12:41:54', 'bearer', '9450d0a8eefe074e5b693b949953664193be2fb4', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '7817b8074d14b80c60e4f487db02432559512fa6'),
('f031b494885648fd2cf3900d729d0b29fc7488c5', '2020-12-03 13:14:20', 'p', '68bf4fb96305631b6f0027752237f015808d79a8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL),
('f03e210f79737bb6d44da6b14f164cf5e37cf5e1', '2020-12-02 20:41:36', 'p', 'd03bafef72ad10e6561392799e19f6f546871fa2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('f04eda6288aebadf8923740329ff4356a9ee7077', '2020-11-20 15:34:09', 'bearer', 'cadfda8dec365d557b4f1aa88694550b5845a570', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('f10dac5d131477c6cf6d031e3d32982934601ea0', '2020-11-20 11:03:34', 'bearer', '143ffa7889a10bd506b3d22897eb8e42e8b5e647', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f1adcbbc4d331c6d84de9340017edc0d44f1b3d4', '2020-11-30 10:37:42', 'bearer', 'fd3d0326e88be68a0a242d89ecc266d482fb23c2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('f21bcebb3047a03b1a1dd2b5de13a2d03d70cf77', '2020-11-20 10:49:21', 'bearer', 'a15c56a11a9c1070a975cf7bd08eba62a9ca13b9', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f2ca4fd68db4eb2669c71964539c47a8b1fe45aa', '2020-11-20 13:43:53', 'bearer', 'e84616804f6dd0db6a133ed372d82cd3acae28c5', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f398318bb3b4698b3610d7cbf6b985d8162111cf', '2020-11-10 15:57:03', 'bearer', '2bc415da580246a54d17c97fc8e7ceb6ab90a3e2', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '703a4b9379f1f0a53a4a5361a4d7a79a9a265e3d'),
('f3d74f2eace4f95d5013b8929fa6457a80b0e5ef', '2020-11-20 10:46:00', 'bearer', 'ca7b68e63e07273ec6073c653adb0dd5cdf1db77', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f4a8817719ac4adfbfb662ebd0e2363d907cfd23', '2020-12-02 13:46:14', 'p', '6ebd372d2f3231b551c0158b9c233a0aacf040c8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f4c63d04529e7af88cf9c9f81847b8862654947c', '2020-11-19 10:58:07', 'bearer', 'a3f94a005e1367af04ef9030d29fed42716225c7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('f5bdf4707bf3675a3894cc1aac2ee71d54c1332f', '2020-11-10 16:35:31', 'bearer', '567bfa5efb46e4ae3a910b0c223f403763600f74', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '919ebd97d42eb31fea889d5ef3d861a2d16b680a'),
('f5c8cd795dc210df361faf8f522837e01242bf4d', '2020-12-02 13:23:16', 'p', 'a1af555df4babc642a293f71ffad7367de52c82c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f683cb4cd8f7143db76c2dec2dd686b964f536d3', '2020-11-18 12:29:53', 'bearer', '0aacdd3d4392aa1b3e4d5b30cb03d1043dd62322', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('f6bb89b99b81abb3eb2ce378c1c8d4a2fcc9c288', '2020-11-20 12:21:59', 'bearer', '4c36b2eacb3822d9d7086e084b918d5bd3ccb10a', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('f91833c6231e00f0582b99946d9915c2649c8da3', '2020-11-28 13:07:02', 'bearer', '61e6e8a2341df3ec2df5b1573175b90d9af53187', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('fa9a1b2c39a1564670c436c49f01d4f424643966', '2020-11-30 13:18:59', 'bearer', '9899daa38fd0e796e44e44fcfe0e8b224e2becd7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('faa63b7f18d80d4b63edc279f652ed435c59c7ad', '2020-11-10 15:10:26', 'bearer', 'cc5580322412a5ef8687441da6a9c3eb80694b78', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '08effdd7841b3a27b923e6b06be653c016a518db'),
('fabd99dc54a8eba8bbdebba93ac0272d2d74c2ef', '2020-11-20 14:45:55', 'bearer', 'ce44d6625fb9975e33fe40e85e55189da67a232c', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('fb7a5418d4637a6f33a79eb42231a876973f16c0', '2020-11-28 12:54:32', 'bearer', '280bb68c869bf1f2bb0e30d59ed7070ce1ef7f6d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('fb7bd681e17f3fe3c8b5f22281ffa85ea5ae12fd', '2020-11-20 11:33:33', 'bearer', '4d57272073a1c69ea16d6207c1031fc8fffbc8b8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('fbcd1e4f85bf746f10f1eb1bdab72ae1850bfffa', '2020-11-10 16:41:05', 'bearer', '04d8f1a4a8fc731ce4eea36348afdc53ed898c46', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b8539eefb0c848581e452e834892ca91d04d238b'),
('fc277d225264b88fa8ecc0f8aae06749f3123c30', '2020-11-30 11:45:57', 'bearer', 'aa9ac2f7a39dda91a5d304d52574c61b75352703', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('fc594c9b2b093e72e79584ac66f707e984a62a55', '2020-11-28 18:05:00', 'bearer', '36d162ffe0bce6eb9b68e52cb34fbae9ff08d51d', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL),
('fd649b3e5bf50ae23715913cf408f2ea6d8dec98', '2020-11-20 13:19:31', 'bearer', '6f8742cf779753bae99b6ebf66652bb37a78eb66', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('fd75c12397cb842542f6d8200d31d55720b9272c', '2020-11-20 16:21:34', 'bearer', '0df8d897643511375a0f10fd2a271135774c0076', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL),
('fe414c9c6820923910dce7f803f9fddf0bcb6189', '2020-11-27 21:38:56', 'bearer', '53aca7ef220f594473b493fab22e2ef917f81ad8', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL),
('ff33ddddbbf2c4e62904a795e16fcd6f92199192', '2020-12-02 14:48:28', 'p', '01b1482a56126bf2f6f12ac5949fad2d00c6aee7', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL);

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
('7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'TD Cinemas', 'The best way to be informed about your favorite movies!!\r\nOr\r\nThe best way to manage your Cinemas!', '1dacab95-4511-49bf-ba39-80119f37b094', 'http://172.18.1.8/app_logic_web_app_api.php', 'http://172.18.1.8/app_logic_web_app_api.php', 'default', 'authorization_code,implicit,password,client_credentials,refresh_token,hybrid', 'code,token', NULL, NULL, NULL, 'permanent,bearer', NULL, ''),
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
('00b4928b81f8b5fd723820d83248c3fa3caa5b7d', '2020-12-03 09:55:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('01b1482a56126bf2f6f12ac5949fad2d00c6aee7', '2020-12-16 13:48:28', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('022880dc5a4c8583a394ee1a97dd3b689eab1a12', '2020-11-24 11:10:50', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f7fa8c248eb6305a5ff8bb4fba15ee69634c0947', 1),
('025e5df06b72d864b8072d03b0c8f780a17703ab', '2020-12-14 11:14:45', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('029e37158f2b71a9752a6007621338ddf89c943e', '2020-12-14 15:20:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('033471e516469b82988007f6b0be560e4f77a094', '2020-12-04 11:44:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('03cbd470227abe73f1f1ec7216a0bbf2981dc02d', '2020-11-24 13:11:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'aa17416cca1a5224c9e2f63c329e30328359e12f', 1),
('04d8f1a4a8fc731ce4eea36348afdc53ed898c46', '2020-11-24 15:41:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b8539eefb0c848581e452e834892ca91d04d238b', 1),
('050be8a4d602005375a190d816fc9c7f86dd77cf', '2020-12-16 16:06:59', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('0700e66951560428918fb7a8fcfa83cd9d470a1c', '2020-12-04 13:10:02', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('08e3a84e820a04e7f784395ed6a0972ce22f1f99', '2020-11-24 14:04:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1b251416d3878ddd1d54376080b60cad954239be', 1),
('0aa16aec75748cc28f53b0b4477291b9c4f1cfa9', '2020-11-24 13:59:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '088f9f835019dce777d75d7e6411d78749a3942e', 1),
('0aacdd3d4392aa1b3e4d5b30cb03d1043dd62322', '2020-12-02 11:29:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('0aaf8629537a9945f86e4b7664fea38f1bfb7213', '2020-12-12 12:01:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('0b68db90e4c3ee8d5bbc3cfa209deeffdc331cb0', '2020-12-12 19:24:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('0c0f4d403864983b94a0856011d9438a77467ef9', '2020-12-04 12:28:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('0d33a69815a8286b4c9bba020fffc52b427ba93a', '2020-11-24 13:47:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dac10cb5306515cd3b45859e1b503742a5267934', 1),
('0df8d897643511375a0f10fd2a271135774c0076', '2020-12-04 15:21:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('10692851c68db469606eee2c6e01128c0cb253ba', '2020-12-14 10:41:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('113101c662ec273c1cf3d70ab96dabc46dc7fef0', '2020-12-04 12:29:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('118bebaf2ed80b6f00e53c681fbb83f0efa26ecb', '2020-12-12 10:19:39', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('1212d1142b3dcc4249ca9856aad8d89a2a451e19', '2020-12-04 10:16:16', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('1307635ef0c87d5860c46ff83deb8daa6d440011', '2020-12-04 13:08:33', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('142c3fd73723d8d7173c88be65b351846ec4d05a', '2020-12-16 17:14:57', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('143ffa7889a10bd506b3d22897eb8e42e8b5e647', '2020-12-04 10:03:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('150f19941f49864ee901bdeacaba59e40e17898a', '2020-12-04 11:44:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('15693630c7ae550ac1fcfa32780c55e8262adcbb', '2020-12-04 11:13:58', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('167750fa609be27416814bb0ce4bee78465d896f', '2020-11-24 14:54:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd3f903799ce0a1891ec3be7705bc638af570f4e4', 1),
('170387b333232d9d03c2e4bdfb342b9a84f9bf41', '2020-12-04 12:11:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('173894d018986679a594af1913d63afcac89d683', '2020-11-24 15:36:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4df459580f0c7f30080e2bdd59005962587a654a', 1),
('17bfb793ba617be2c9470c7b6c65f60c1ff189a9', '2020-12-17 11:37:59', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('17d2eb146f36026485e8f7f80c7ab1e77f100b84', '2020-12-12 12:10:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('1850c0b45397bc654a749c52adeae3555283b6e9', '2020-11-24 11:55:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1c6df916a98887302e62b3ab71fc9c45105c4cd4', 1),
('1b2f23deda0ce1511f0eb3cc643346703bd48f1a', '2020-11-24 13:15:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4cdb88cb5a6b8b6cb427027fd7c3eadc7676c559', 1),
('1ba7e52945f84580eee2b32257ebd0698f3dad92', '2020-11-24 13:58:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7552e56fa54ca089c666768fc6f0daba7c581b09', 1),
('1bb5865e289e6f3b292f24f34a90da32a1cca51c', '2020-12-04 12:35:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('1c1ba533f8a4ef7895a7a9d992a391995b32fdfe', '2020-12-14 10:22:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('1c6fcac5c461e11aa1b07329fa822a33f63984e4', '2020-12-04 09:59:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('1ccaaf2f170fc1ff58e570415ddbf747730c75b4', '2020-12-04 10:34:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('1ce057359f3083b830e0a9245b9c74fae39d29af', '2020-11-24 11:10:50', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6c7a4fa334186ffb9c7142cfcea100e44b935a45', 1),
('1d3de44498f928de3e7eebdb6d59fb67db51525f', '2020-11-24 13:48:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7aa46f570656bd5e0a4c207fc11c618139abf9ed', 1),
('1e361c872135d886cd0dc4c2a22c696d4ff02d37', '2020-11-24 11:44:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '9e63ebc346315feb86b24cc7a270269821e54c0c', 1),
('1e9611c8bc4bd14c53e1f4aa2c14f81139659e2b', '2020-12-14 16:58:57', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('1ec51f748ce7ce2108d2ee961fca10373ad4ef7d', '2020-11-24 13:49:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c7fcdd0751144e39dd995de2335e93659deb6ac', 1),
('1f74df3979e57775a4b1ba27eb8d9993f8ee3293', '2020-12-04 13:19:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('1fe9ed254c049a6aa5902d496f87bb9538d6c448', '2020-12-04 14:46:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('2196d795e0bf030e0994574162084d38e2f28976', '2020-12-04 11:08:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('224289f52824597fdd4632e49bb8152e188ed45a', '2020-12-12 12:31:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('22c7256161f90d1189e9bcbbb9c97e254cce2bc4', '2020-11-24 11:08:04', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '29a590326a8a2ac8c3a90f8a2bea30fe83f05d62', 1),
('22fb75d26a09802a0654b7620256fd7745bcd394', '2020-12-04 15:01:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('22fd7fa6b340f052092251803b5fb3db07e24386', '2020-12-04 12:20:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('241a49fe08eb60da55742afe7a6403019c91c841', '2020-12-16 17:34:42', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('2455378ba7ef077b4a671ef9f2fd196b4c9c3989', '2020-11-24 13:38:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '40380d14f2af9ca8b7cedb56aa011325ecc1edec', 1),
('24726117a59f1be7dc4173e4a218bb6142da2f48', '2020-12-14 10:01:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('25fd88312fd85a77c8c8afab5677f6e1ff165ac8', '2020-12-04 13:39:13', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('280bb68c869bf1f2bb0e30d59ed7070ce1ef7f6d', '2020-12-12 11:54:32', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('28c873dc18909cc16d47760a8f09a9493d53c71d', '2020-11-24 14:09:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2a8afa1446f1e1d15ac3873156eb7aeedb101ac1', 1),
('2ad7e74f81ba88556305f218e0e3def6547e906b', '2020-12-17 12:22:01', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('2b0e48eec5759c47c509ad5621144cbb1f443973', '2020-12-11 20:47:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('2b12e763a6f2fe7850878443ab6f2b3f10ff0131', '2020-12-11 21:31:27', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('2bc415da580246a54d17c97fc8e7ceb6ab90a3e2', '2020-11-24 14:57:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '703a4b9379f1f0a53a4a5361a4d7a79a9a265e3d', 1),
('2be5f8a1e5189e3e4bc0f41b4b2ad8c827fce5c4', '2020-12-12 18:26:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('2cde6e42fc8ee4f560082d1421715830e49873af', '2020-12-04 13:33:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('2de7a9ab48043f21f8b16ffd771f5a537e24f0a5', '2020-12-12 14:28:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('2e2a53b9ad9d9727926b939513ec2b88a04f0a27', '2020-11-24 13:56:41', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '4ff6536582ba71ffa7fe676482b603b7ec079630', 1),
('2ffe8fd59aaca9dcb1d36fcc5fbcaf350117450b', '2020-12-04 12:08:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3101f2ca83a924aebe73fb4ec9821cf3af030ccf', '2020-12-12 14:44:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('31e7ae804c9475c4c8b6596a80bea9b019fa4a80', '2020-11-24 13:12:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f6d27f3d6d61b52f227b50617359d5abeb69f305', 1),
('3258f49bf7884ae750f7be21847cb6a1c020aa25', '2020-12-04 10:38:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('32eaac469bf7881e10a29e14d076f25b50d826c0', '2020-12-11 21:33:13', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3312e071a792c02e6dc38463ed4032e659c17dd5', '2020-11-24 13:41:41', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c1090317bf5dfba962daaa34befded4964cff245', 1),
('332fa4cc6fe994930292504665676dbdb52aa03b', '2020-11-25 18:56:11', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('338254770c84dc416560b53e0739ec4b64b1a4fe', '2020-12-04 14:32:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('33964941223d6f1e1d4dcdf5e9e98817cad7dd64', '2020-12-04 15:03:32', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('33add80f21816ef25dc3c3e7bac48c727619a955', '2020-11-24 14:05:20', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'e40fcc94abe01b0855bc73401da5eaff4e80df11', 1),
('35396742ed13aa61b5123f76eaf5eab98cb81cb7', '2020-12-04 11:28:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('369af3e679b0fec65a1af17a4d0556ff185fce25', '2020-12-04 12:16:49', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('36d162ffe0bce6eb9b68e52cb34fbae9ff08d51d', '2020-12-12 17:05:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('36ebb1f335905fbe6bba02444cf636394d32cb4d', '2020-12-04 12:29:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('389293e8d73c3fb3be5c7e5cd7a9ea731b349f7f', '2020-12-12 12:17:48', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('38a9c1d6d50f72459b087343b2f0d56b7a4defaa', '2020-11-24 13:36:15', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '194526eef49716ed6eeaa4000ec9c84a169b6650', 1),
('3905e68f6c8f64bfbb711614ba740137c0210cbc', '2020-11-24 14:04:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '68c6fc1f2dcd547120aedc6120d185c74398d20c', 1),
('3af7275e6376061946438757481cde362f5f031a', '2020-11-24 13:30:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'b0fcd74d21c03b8931d4765754f217fccb877390', 1),
('3ba9a6ab0eed90f95789e2ecf5985806eed6f137', '2020-11-24 11:13:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '56dbf2bf0f8c8561677233ef985d05a3b5ca87ff', 1),
('3cb4a7919425bb0d23714c2927720fcdc34b8486', '2020-12-14 09:20:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3d77580ec7505131ede4270478a03e84891ed122', '2020-12-04 10:47:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3ed57466567a2a11a17f3194bfab9f083b9f769c', '2020-12-04 09:46:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3eef863c0a67018346ef913b87292952218cc24a', '2020-12-12 19:22:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('3fc716ed7633005de5753e1dc61a99f10d7aac53', '2020-12-12 19:23:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL, 1),
('42c936c5e09a2148020deef5f0ab38227a1f481a', '2020-12-04 11:58:48', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4399642e0284cd9963fe55ec4ec2a3cacd4730a0', '2020-12-04 11:04:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('43f4ba80a4efc3ee7b6233ef5f0fbfa62c909fcb', '2020-12-14 10:01:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('4404cb371465807c40ae6b7bc9569ab31f411c6b', '2020-12-16 14:40:56', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('44bc8164acd43295ee8b2bb6cc79fd82bb2d0b5d', '2020-11-24 13:40:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'b86c61cbffc170ac081a03fe6ba89733ec194e78', 1),
('4774ff9721c219bf2b8b2f9d965601eb827f3c5a', '2020-12-16 20:35:21', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('4793444b82a3831d233e60a39ffa5a0bf3bc1f8e', '2020-11-24 11:01:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '3809b706660c5f83e0708ed98c4b56d1e4b69a3e', 1),
('47c908a22c4c558c76b2fc394bd4987f7ec26e94', '2020-12-14 11:37:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('485e7ae0695568014bf28ba8e76f2f31a7975670', '2020-12-04 10:11:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('48bfacdd0317a1b0d58e3c40e5e4f84a92808e58', '2020-11-24 13:11:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a891756ced78ca5f25f723fa07fff33f0751686a', 1),
('4962ad7fc9351788fe12d6391a34b14dd697c55b', '2020-12-04 14:51:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('4b5e3d6ffb40481b625edd00b57c69d50d5512d2', '2020-12-04 15:12:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('4c096f7da7c859affc46567639af1dd3875617ee', '2020-12-14 16:57:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('4c36b2eacb3822d9d7086e084b918d5bd3ccb10a', '2020-12-04 11:21:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4c5ac59f51d9e505ed2c2b5b46ee26f74375db07', '2020-12-14 09:50:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('4c88d0d4cfb33baa9c4823a264236b0cc6421dc9', '2020-12-04 11:33:32', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4c915e211809bea78b2a8d728f1673242c112a45', '2020-12-04 12:21:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4d116b012b9eaeaf39d6f7071c23305e8720b538', '2020-12-12 22:11:57', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4d57272073a1c69ea16d6207c1031fc8fffbc8b8', '2020-12-04 10:33:33', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('4ed9dab00f7629e17f84572b53a28ad9de4ba5c2', '2020-12-17 11:00:59', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('4f4c2de4a5fd53fa35786cb9d9248477cd49ac81', '2020-12-16 15:40:17', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('5054b6d9b16e7553de274730bbd94678a745a4ce', '2020-11-24 11:42:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'db6222c42598e72e26f198f7c4af832765842f23', 1),
('50fe2e431eab8e25789df7dba5f8b056cdc96c7b', '2020-12-12 19:25:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('51a582c8b4719b9b438f7a3b7a5d41513a1ca743', '2020-12-11 21:20:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('52aa25957aff5627447f1be4cde636a3435948cd', '2020-12-12 21:16:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('53229e94dbafe568be1e0c90783f37cca3a0cc8b', '2020-12-04 10:56:48', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('53aca7ef220f594473b493fab22e2ef917f81ad8', '2020-12-11 20:38:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('53afe8679f3fa3ae3a7e95819ca2f8e391ae5ecc', '2020-12-16 13:34:33', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('555aad1aae3f306aaebaf789ec6d0129c6d56d94', '2020-11-24 11:38:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5068461902d9572e267c3cf5b9774486eda4d653', 1),
('567bfa5efb46e4ae3a910b0c223f403763600f74', '2020-11-24 15:35:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '919ebd97d42eb31fea889d5ef3d861a2d16b680a', 1),
('56c808b8a11dae945f89cb19963b110552b00fa5', '2020-12-14 10:14:50', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('5835b488e29c0cd5f5e7ca92ea1cba6ca525e86c', '2020-11-24 15:36:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8f5044b72064082a89a6c155db47b8a123d07b7f', 1),
('59d645d9b365152d4d76fa11b0f18483f90d8c09', '2020-12-12 12:19:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('5c4960ce7e8e0ee76f392f25b3601d26e339f00c', '2020-12-04 11:17:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('5cc5e6950430bd080cc520f6d362ac7baaf07f52', '2020-11-24 11:39:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5c5e071e6b929070520caa400110897fc0c8af45', 1),
('5ea8bd6857d541c72dde6984a4cb3d15de43e4dc', '2020-12-04 10:24:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('608ae4039ce6b676a26563b3714426f30dd9a522', '2020-12-03 09:54:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('6095e604a8859d7297a18f772e70448c7a858469', '2020-12-16 16:07:28', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('60a5b09525e601f9a4070c36ee8364dc031b76e7', '2020-12-04 12:24:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('61e6e8a2341df3ec2df5b1573175b90d9af53187', '2020-12-12 12:07:02', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('624d9bf2ea73fc5b61dddabb7f5a5eedbe180d4e', '2020-12-14 11:54:43', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6276253ee20303f9ab30f8c2dcbe715bb9eb7fbf', '2020-12-12 11:32:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6309defa65b55eb26b1ffa83aca50bd6affff5f9', '2020-12-12 21:22:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('63c5ccf16dfb3160cc0086dbad683da4bde18c71', '2020-12-04 10:44:47', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('63d788ca12c399bde857fe2b2d02956f61a2369a', '2020-12-11 17:15:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('640bcf5cc20ed700ad5aa817611bf045c5c0e612', '2020-12-04 15:08:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('648f0cbcd9a1832e0797178cf71d58fc1aac7e7d', '2020-12-14 09:50:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('64cde0b8d52d84776c1ae1255218b12901d4c0d9', '2020-12-14 10:22:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('659287def7a2c0a488faa99e7c8b59396ddd4e71', '2020-12-04 11:09:47', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6600b145ab3f1e0df93e46b9038e96fedc340c02', '2020-12-04 14:20:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('671c7fa24cdc0e57016260f3b58fb519b706f912', '2020-12-12 10:08:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL, 1),
('6720ab953653ea1c1b58d9464e8eea43abc899b5', '2020-12-12 21:18:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('6788cde92fb856e0f1fdea9ed91e4bca66aa1f11', '2020-11-24 13:51:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '13527fb2c03a54ee2d5fc670923460249f068889', 1),
('67a8480cd32425c9aa3cc76c1873d394c7067475', '2020-12-16 17:26:07', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('67bb50ecde5e43337b9dbaa4596ac2a1fd758bfd', '2020-11-24 14:02:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '503fc92dcb9e778e0ec1aeb1f6cd49a8c21afa7e', 1),
('68bf4fb96305631b6f0027752237f015808d79a8', '2020-12-17 12:14:20', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('69b7a2720d5e3c0826a523b90dd5468e27197a3d', '2020-12-14 21:02:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6b4b3293912e6f89c2abd6c3df7cbe862362c8b0', '2020-12-04 13:14:15', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6cbc4e7660ca7b85ab789cb467f5c0ef9e21f9e8', '2020-12-14 16:58:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6cf78a0e7adbf90fde5f51d1ef8a3f8c845825f5', '2020-12-04 12:40:03', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6da386fc1cafdf6d55c0ca336c05769a1ea1b697', '2020-11-24 13:56:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bb3dc14dbc0bfe716059ba0007b22b15358cd5eb', 1),
('6ebd372d2f3231b551c0158b9c233a0aacf040c8', '2020-12-16 12:46:14', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('6eed3048f5cb9f311c0564d9fc59e8e108de90e4', '2020-11-24 11:06:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '6db2ca8013321e852eb758b62b4d01074c95ee01', 1),
('6f435ba19333c21edd87042a7e1d03c2beb9f015', '2020-12-14 11:59:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('6f8742cf779753bae99b6ebf66652bb37a78eb66', '2020-12-04 12:19:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('7151c47e485e80f44d228094d563723ac6b2c8cb', '2020-12-04 14:27:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('720b5d2cc3759cf9e68dabe6388d0f09f1b489cf', '2020-12-16 13:54:36', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('73278cdba09fef1513cd4f89f8ae4c0ad0f51c7d', '2020-12-16 13:26:47', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('73f31a70164869f7254c2f2dc6fd367ae5c1d621', '2020-12-16 21:43:15', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('73fb0deb782921d83b7a908575bda10f5397066d', '2020-12-17 12:28:11', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL, 1),
('7407c93440a7fde1b3ec0126ad0c1a368f4f0ef6', '2020-12-14 16:59:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('7435aea22a93bc1af33202610920618b734ea305', '2020-12-04 10:29:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('743836dc276b8de2c3951ad0bdad509443c0f414', '2020-11-24 13:55:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5925890b8e10dfb46e46ed163c84e2130664c441', 1),
('745b4bf956f932e0812e516618908cf58dafe8cd', '2020-12-12 11:18:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('75e94d47ceff1bcd4c668d97dab5853dc9a23f1b', '2020-12-04 11:20:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('7605d26c51637ef326ba1559a0ae7c55acf0caae', '2020-11-24 13:46:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '216403219199483a34cd18813d69fb2fa863d372', 1),
('76cffc7661727996878e1067be657230bc408d0e', '2020-12-12 19:15:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('77f7ed492de8ffebc0d9203df1dd95348bc7d3d6', '2020-11-24 14:12:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'edbf6d29e833340d1fc503a7a6259e8d15e40620', 1),
('788ca14c0a761405c74d0726b7d5b3ec1d74581a', '2020-11-24 14:39:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'd6bec5bf9784c6c9dc9d3ead5631ce1b442cff17', 1),
('78ba2daa0c0e6bfa3db1f2bc7fd1f4df64353c8d', '2020-11-24 11:22:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1b22c14d6ab107292c9342fd28d443a0a9d9ce44', 1),
('793fac2d9fa67d33edf278b0eac721cd6e882404', '2020-11-24 11:05:11', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '1627c5f7612f59970c79a99283f1bc5a8f993def', 1),
('7998102ee2e3ce35411939678a21edcb20f85645', '2020-12-16 12:44:11', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('79e1e867291d8adc0c17ac45ef005b18d2d041f9', '2020-12-14 09:13:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('7a048d4ab7ed4d8807f6fbf64327725ec4755b6d', '2020-11-24 15:20:33', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '12df890e633e5fdd446f99a7381324986273840e', 1),
('7cab6df91634ba69a5eaf21741364ac445763973', '2020-12-11 22:28:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('7cae3ddec90019967191b0edf3e362c35f1bc48d', '2020-12-14 12:45:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('7eb2a2e036d679bed0152f34275d5a9218cfa768', '2020-12-14 10:46:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('80f69301d6e40ad1fc8843e8ab4358089f0f839c', '2020-12-12 12:21:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('821e226279b59ec9bdbd7f1423fa7e8014db3dc9', '2020-12-04 11:23:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('83b13dc6b24e98d2470ac4e1acc78c4675c26636', '2020-12-16 12:39:54', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('83b3063d5545bdc9eacd6d027d29bd85ee0c5888', '2020-12-04 14:33:45', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('863c4fd1bca1fa6c272b227476395d7aa7dadcc9', '2020-12-14 11:55:20', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('87d6fa01b6a869c0d010a521e3da2176f87d478d', '2020-12-04 14:50:02', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('8813bcc552befcaddb04c0a3ebb25c605adafe14', '2020-12-16 12:11:43', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('887af4f1c6272be0a5fb33e4d0bbf557b949be3d', '2020-11-24 13:30:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '46310754840a3272da6a5b6ab299237f3f1cb65c', 1),
('890813509b68bf7859dfeb564c762346b0895369', '2020-12-12 18:34:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('895d43e5b8841275a88b07c58377aa6d5b47eb1e', '2020-11-24 15:36:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ed8c5708fb4c225c981fa1891483ecef99137c95', 1),
('8a38cd991bdcf1df2c1a23cdee8705d50de9d3f4', '2020-12-04 10:39:33', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8c1c40ded77b96594024e49012e12834a5a6afaf', '2020-12-14 16:56:45', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8c82a2f253259cbe7d968b64252f2fbe5c183590', '2020-12-04 13:48:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('8d2d2aff89d24f89bbbd405784c4d416af4ac2ad', '2020-12-04 11:51:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8d6c945c1382395bfad947f8df4562be4be72ee4', '2020-12-04 14:05:22', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('8d81fcbd95d405cb7e5842cecfa436b5a151d6d4', '2020-12-12 10:11:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8e8f76c9ca719aed0c59597392f8d7e289f70401', '2020-12-04 10:19:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8ecfa5d50d46b0fd2727feaff2a3da04b42f4736', '2020-12-04 12:18:02', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('8edd3449576759d6039b7494775dc76e9b7506fb', '2020-12-17 12:27:28', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'ce057e40-c344-4da4-9d4d-8c58c412c827', NULL, NULL, 1),
('90187c428c2f11db95d9126b0963452ab10c25c0', '2020-12-04 14:37:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('903f1f58823acddcf517a208780e5ebc30eb8bae', '2020-12-12 14:34:22', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('930b124669f3d749dd2686fd6b922e763a9203d6', '2020-12-16 15:00:44', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('9324fcadb6a6fd9447033028b75bed1f423e9637', '2020-12-04 11:00:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('93633585eedf0170e112d8a2e4086d247eb67c4e', '2020-11-24 13:42:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'abaf465118485f6e0417b3764491aa7d323b91fc', 1),
('9450d0a8eefe074e5b693b949953664193be2fb4', '2020-11-24 11:41:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '7817b8074d14b80c60e4f487db02432559512fa6', 1),
('952d745d48eca44ff6fb44286a6fdc172a195fa8', '2020-11-24 13:38:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a708a5e267f28d18ec273a5668114e37bd60fdb7', 1),
('9593a815b1e5de224c9a4ffbdf9a9927e68d42ee', '2020-11-24 15:22:14', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7633f885be32ac4c556f9e05a0a33c8c2ce6311a', 1),
('967be37bc4ea8ed7eb9a21c43bbdc79fd80700e8', '2020-12-14 14:35:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('9683d4d5a1a4299ae1f38f2357f6466fad7804a0', '2020-12-17 10:46:22', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('972f056b402a1aca0f871c903bce2e95cb042ef5', '2020-12-04 15:17:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('981c82f76a3b6201487355f28ab3bb8a2952a6d1', '2020-12-12 19:39:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('981df93e4f8f30d1e5f80ad9523b7aedd7bdeaf7', '2020-11-24 14:11:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ca5f648117ba9e80b01ed95500fcf2d19aebd0a0', 1),
('9899daa38fd0e796e44e44fcfe0e8b224e2becd7', '2020-12-14 12:18:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('98aa4baee807f50a9393262bf1ca75c41e1f2b21', '2020-11-25 21:06:39', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('9a14a40fb866148c0f24a58013d2de99dd1672e4', '2020-12-03 09:55:16', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('9a9de55820c5db073580f20fa32b91d7e89feaa7', '2020-12-04 10:02:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('9cb40c813db8ce834e9839e196baf2533c898f45', '2020-11-24 15:41:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '47bcebc74c4e2fd0ea86b5c70a21d3fdbd1aff7e', 1),
('9d5cecb1dc0c85ec35823dffd063c27596c82ca6', '2020-11-24 14:01:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '5cbe694892f7166d8e1da65028036f171259bb33', 1),
('9e25e57ec84797c5662d85b2da4d285f49343b2c', '2020-12-12 09:45:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('9e33f4e63ceb4fbd05c0921e9d9d64640bccff7e', '2020-12-12 09:15:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('9ebdcea6327d549cf53ae9c363c8a3f67a44707b', '2020-12-04 13:31:41', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('9ee852bfc831793e047eaefbb2e7162a7473495e', '2020-11-24 13:49:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '8dbc63dadd8745613709520066642f3e4bdab0a1', 1),
('9f537506347aca89b70970388a3d7542cb1871a1', '2020-12-04 10:58:56', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a007d7cd1bd1db263827304a15c5e4b8360330ac', '2020-12-14 11:05:30', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('a0182362e1e984b825d9470acafbaabdc9d77cf5', '2020-12-16 20:46:41', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a15c56a11a9c1070a975cf7bd08eba62a9ca13b9', '2020-12-04 09:49:21', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a1af555df4babc642a293f71ffad7367de52c82c', '2020-12-16 12:23:16', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a1bf5d433b8c2774ad740a3b78ebe9cdb6ecfcd5', '2020-11-24 13:35:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c756e6242dacb3272dfd0a9b00e98443d48a27f', 1),
('a2587e151f8904f9f195c99f3e7fd22ec3850cc5', '2020-12-04 14:08:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('a2b2437769fdb44e9b2ef15b5324eb4a1192d5a2', '2020-12-12 11:37:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a33664a7f141da10302059794851784949355d13', '2020-12-04 10:41:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a3f94a005e1367af04ef9030d29fed42716225c7', '2020-12-03 09:58:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('a4d179d219fa6f8c9e0ef555f97549d29d10157f', '2020-11-24 14:54:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '1c307d509e0f5d3ae2d7244f1121478ed427d0e9', 1),
('a53c9744ac70fc172a81c01e0ab6516bcb99c3a5', '2020-12-14 09:20:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('a71b9dc85a677a5a208362de268128f5d03c7358', '2020-12-04 14:25:52', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('a7bb0d14f1dcbff5af9273d421e1a8571f665b24', '2020-12-12 14:51:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a80ba04d09b6d349491edd1db26a0388d8c5d52f', '2020-12-04 10:28:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('a98d542b3a91b7da92aa938dea97437d4d109c11', '2020-12-12 11:24:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('aa9ac2f7a39dda91a5d304d52574c61b75352703', '2020-12-14 10:45:57', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('abd5078e2a73824b9dfd2cd897751454f906f5d1', '2020-12-16 14:40:37', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('acb9e22ffd2bca39da9c2cbe1e1d3efb73008228', '2020-12-04 10:53:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('af6508137c9d6a53691072267806200c28a837d3', '2020-11-24 14:56:05', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'dcf0f983647b9818fa3072d8b3a1a5842145fa72', 1),
('b0adfdef37e102c7998106917e7daf4da5f0e699', '2020-11-24 14:04:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '513eccb4ad4472d61fe2fcc6eb1ddc19948e757b', 1),
('b23f26ab74e5a15df03263f1fa6c44ec37e4a769', '2020-12-04 13:40:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('b2870dc75cedc33e3b51b4aed044b880921d8be5', '2020-11-24 13:59:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1ec7bf76a56a2ee678abf6ecbe09892b3b65f66', 1),
('b31163e022563c34882ad4a264ee1127002f0898', '2020-11-24 15:40:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '9a33d2451ef7674a9d7393bd829ad52da3083bc7', 1),
('b49b998289d253e4f87b5d302f49fbaff978a212', '2020-12-04 11:19:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('b5833295857aab546dc5bcf23b0a9ed730bd37ee', '2020-12-04 12:25:16', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('b7f67cee4e207d5cae049a36684ed6024bd50656', '2020-12-03 11:43:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('b9193756279ddfc851bac917d75d37ee56c8163f', '2020-12-14 09:27:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('b9d4d77d9dc8662bc34cebdc4a0e2401481a447a', '2020-12-04 13:09:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('ba9c4748945256e990f4e43dec32d417ff383280', '2020-12-04 09:55:14', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('bb6b999e707f05e5421e160688233328db28f2ec', '2020-12-04 11:55:11', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('bbcd7022338f41b15474fe4f5207a28ab64f5549', '2020-12-12 11:03:07', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('bc7972931c63459079b827289783f2c9ca27c6d5', '2020-11-24 14:06:58', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'f94619c2024519b7d9706a1e6c1a87f829cbc77a', 1),
('be1c83eb00d0cc3f1478b42372dde0b6e10c5ff7', '2020-12-17 10:46:02', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, NULL, 1),
('c061a05d276088b135d27b3c069bbe35ad15f1be', '2020-11-24 13:48:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '6c28d7f77279407396da5c48b15351ebee85e6ba', 1),
('c142fc9a0e63f1fc02040b03a42fd2e566dcee37', '2020-12-04 09:56:08', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c16943ba23ebcd8e7ab7f97c0c59cf56da97eda1', '2020-12-04 10:57:48', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c16f74ecffe4fe876f2f53fec6c6a44a64476a73', '2020-11-24 13:57:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '39c91325def93a71264739eb2da7b27854b0884f', 1),
('c19ad1649d5e8409d0ae06844e1d335187dbb53d', '2020-12-14 21:59:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c3df0e61b2e9d6ad325be539de0636578eca7dc9', '2020-12-11 21:00:24', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c4914d6229a509a735ccc5e6f1455a5058a52917', '2020-12-04 11:26:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c771ac78a925380762844fd0c3eac6740f2ef8de', '2020-12-16 19:56:44', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('c8bc40e49592c5b3a7085f67f81e29bc71318b8e', '2020-12-16 17:17:23', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c8bd9448b3e264eb097848960fea3a4acd7423f6', '2020-12-12 21:17:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('c96907d367714277ba2ac873be64104891833e5d', '2020-12-14 11:51:36', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('c9c562ada0726dbdea2932308e6d5e8b1e2ed555', '2020-11-24 15:04:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, '9c1d7454df8d51419f1b0d709ddbc3cef2cce6f7', 1),
('ca7b68e63e07273ec6073c653adb0dd5cdf1db77', '2020-12-04 09:46:00', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('cadfda8dec365d557b4f1aa88694550b5845a570', '2020-12-04 14:34:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('cbb5a1b5589528de49b8674061b138303a2d421c', '2020-12-17 13:37:21', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL, 1),
('cc5580322412a5ef8687441da6a9c3eb80694b78', '2020-11-24 14:10:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '08effdd7841b3a27b923e6b06be653c016a518db', 1),
('cc72099a1b1c4c083e5d64a1805f8724fdbcc849', '2020-12-11 21:24:02', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('ce44d6625fb9975e33fe40e85e55189da67a232c', '2020-12-04 13:45:55', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('d03bafef72ad10e6561392799e19f6f546871fa2', '2020-12-16 19:41:36', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('d175bb15645679c0db5d4acbd2ae563ac572bb5e', '2020-12-04 11:34:51', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('d273196a904ea4b20f0c680cb242afbc207be086', '2020-12-04 11:52:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('d2b54fff6a2964816dbfe5ebc6e8d2bd725b80e2', '2020-11-25 21:06:27', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('d3486ae161c9f4a56eda99e11d00dd7456c25799', '2020-12-04 11:06:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('d45202630ebe70d0a27710bb211bbb41c734d57c', '2020-11-24 15:35:31', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '56ca15be5832935079e6011cb328a22958340b3e', 1),
('d4ab1500ce4f3aef3ffa2cfc63056c6f67af7f5c', '2020-12-12 15:11:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1);
INSERT INTO `oauth_refresh_token` (`refresh_token`, `expires`, `scope`, `oauth_client_id`, `user_id`, `iot_id`, `authorization_code`, `valid`) VALUES
('d4b13fa3e568c1623d95656cde8d776b3abf88d5', '2020-11-24 13:40:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'fd36367aaec6ab88f7d66e81c8cac28339c0bafc', 1),
('d80f88e7a29c1e5a4f1e6fa629a4e0cba864b8bd', '2020-12-04 15:06:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('d89a211c961cdd463170d27f332da0b4049a7841', '2020-12-11 18:38:22', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('d94f5ea3073abd028699ab040d377a3c09bd91e4', '2020-12-12 22:12:18', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('db6926da25328b9575e097bb664cc48c7348a553', '2020-11-24 14:10:27', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a1965407627549f28ca44b7469bc8dc27d4174c3', 1),
('dcb72cde41864874c0e0bf381c0ef734b2918419', '2020-11-24 14:06:25', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'ce5b5989b437c9446f7dfa10cd2aefec0fca5f1c', 1),
('ddc7f030b588079a0aa3d41e5887adba96fcc524', '2020-12-12 14:42:01', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('df81955446fa218b4b43fb53147118305e419cfe', '2020-12-04 14:11:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('e03353e9737591403c83217be2260421c554b980', '2020-12-04 11:19:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('e07910939db434f429bc782b66aa9073eeebe2a7', '2020-12-04 11:05:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('e22914f4d7bf30ea9e70543bead742b9aab7e42a', '2020-12-04 13:18:14', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('e330b6e7f2c220397876ccccaf5cbb5282d0a96e', '2020-12-04 11:01:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('e3c83ce436211ba1700abd9b2db9831ba0b09336', '2020-11-24 13:54:09', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7b36c255e30ec358058fdd0eca3218957b36b8ec', 1),
('e4eef57d527106c601ff76ec85e98631a21d084c', '2020-11-24 15:40:35', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '70f543f4cbe41daeeb9156f5233288c8e11e2f03', 1),
('e6a1d10f33c529a04823e4d25eb8c90fe367f187', '2020-12-04 14:18:28', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('e71bccfedace25fbb69092c70e77a941fdc27cc5', '2020-12-04 10:42:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('e83ec552d54eefd5e43b28794713ce6080c20bd4', '2020-11-24 14:54:23', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '03a5be481fb01b17175c7f30715120bbc76eae32', 1),
('e84616804f6dd0db6a133ed372d82cd3acae28c5', '2020-12-04 12:43:53', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('e9477ee6257356d836824d6794bee346a90fea2e', '2020-12-14 15:20:43', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('ea5a66edbe0edf935f388f93309a269ae94193d7', '2020-11-24 13:46:06', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '42958076603801d30c90b1c4dd50a33c81f69a6c', 1),
('ed24d672ff7495acbd8f0c179ea27c9dbd2312af', '2020-12-04 11:49:39', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('edc68541a0459cef9300587e8f6dacee212de018', '2020-11-24 13:15:20', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'bf028e47350adba1ec7227e4c241248c75763cb9', 1),
('f093424f7be0ce0c0bf58312f78fd60a297ba894', '2020-12-16 20:45:42', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '31d15af9-0ead-4f50-bf00-17a06a49f0ac', NULL, NULL, 1),
('f1715c90aa251a07138be915125a17ff4a43ac12', '2020-12-14 14:38:04', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('f18fe5ed14f7198cddaee0ff5a2b4efac758ff7a', '2020-11-24 11:25:26', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'c50c454db7a090c640e46f32561ca898c789d01d', 1),
('f286d4635bcb3ab9de44f83c425b10b15bc18251', '2020-12-04 13:42:46', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('f2e68ebfab5f08f5a161516430c88e28f71452e2', '2020-11-24 14:11:12', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '7a9dc63af86d898289aa9cd1d103d68009ce9fdd', 1),
('f389049d0b72b88103a878c2d5c6a2882571d231', '2020-12-17 12:25:55', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('f39cd276034ba4c72a0ac3485bbf07254b40cac9', '2020-11-24 11:02:10', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, 'f83a121a99e43f0d7b7c12b2f5980f788b2043e6', 1),
('f58b9cf71e905b99570c69d0d009a429148659c0', '2020-11-24 14:11:54', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'a478845cb3a6b4fe253056970c061fb29a08ff96', 1),
('f63b31c0998a95c7c8ea58d92abfab9e3da0e023', '2020-12-14 16:58:43', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('f7321ded19d4dab9a7366ad332bf84bf9a8c8b39', '2020-11-24 14:05:38', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, 'c5b849da409f2be478bee18469a014f03176edc5', 1),
('f74411b9affa65f3cfad9f17d28630c2af472dc2', '2020-12-04 10:52:39', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('f7a55572e8035b26a99e28ff527de71ab09a19b1', '2020-12-04 11:48:29', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('f8441a241cdbaea752512cbd3437525e4ae58451', '2020-12-17 12:01:05', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1),
('f905ae1d9c09b5a15047d881967e59c92c3d3a86', '2020-12-04 10:40:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('fa87c8595f146b283a1d5a3b8a1f69c88b0c1099', '2020-11-24 15:44:34', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '66064a656a58c79163cfc528ba927019ad8c1dcf', 1),
('fa8a3716c8e7827df4e5865f13a9f04724d2bc7e', '2020-12-04 18:26:17', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('fad840760a537bdb83538dc4abefd36c1634c1b2', '2020-12-04 13:24:39', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '849dd351-3239-4318-b07d-18347e51cae6', NULL, NULL, 1),
('fb2502de7facc51c4c5899aa2a1475ec9697b90b', '2020-12-16 13:20:28', 'p', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('fbb50e5245c46fe8d8f5f51e2c5273ad3553f979', '2020-11-24 15:19:19', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', NULL, 'f67818e603d905f0d827d3c7fb35a19f23cb1968', 1),
('fd3d0326e88be68a0a242d89ecc266d482fb23c2', '2020-12-14 09:37:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '5565f5dd-02ea-4bd7-ba31-bb76a82657be', NULL, NULL, 1),
('fe79f93e05d074b7764f210067bffcbb704e0471', '2020-11-24 11:05:59', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin', NULL, '5eb6d12073950f8a809150fb4c49117344b14a8b', 1),
('ff141b28f35cc9e84e09972220542f0c095e9e0e', '2020-11-24 15:44:42', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, '2bb35c5efe7dcf97247ee5f40d80ffad931424d0', 1),
('ff2ab65e22644af79332b27858a7b17b46ed9394', '2020-12-11 20:51:37', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '0b10e960-70d4-4318-b6d0-e9132430ab09', NULL, NULL, 1),
('ffb8da0a29667fa85052d4bb613445b130602fe1', '2020-12-04 14:07:40', 'bearer', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', NULL, NULL, 1);

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

--
-- Dumping data for table `pep_proxy`
--

INSERT INTO `pep_proxy` (`id`, `password`, `oauth_client_id`, `salt`) VALUES
('pep_proxy_9c742db6-63d6-455e-ac2b-d6395fc8b514', '3bd1febbd67a77b4863bad9f297a1dc12067c392', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '44babf9263146172');

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
(20, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '592236e2-e2bf-4471-8c11-7f715f5e9d65', NULL, '5565f5dd-02ea-4bd7-ba31-bb76a82657be'),
(21, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'provider', NULL, 'admin'),
(22, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '9cfc0b6f-2bc3-4a6f-af91-9ff79e8c09b4', NULL, '0b10e960-70d4-4318-b6d0-e9132430ab09'),
(23, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '592236e2-e2bf-4471-8c11-7f715f5e9d65', NULL, '849dd351-3239-4318-b07d-18347e51cae6'),
(24, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '592236e2-e2bf-4471-8c11-7f715f5e9d65', NULL, 'b73be024-d4ec-414a-9f49-d386f4f9e2c9'),
(25, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '9cfc0b6f-2bc3-4a6f-af91-9ff79e8c09b4', NULL, 'ce057e40-c344-4da4-9d4d-8c58c412c827'),
(26, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', '9cfc0b6f-2bc3-4a6f-af91-9ff79e8c09b4', NULL, '31d15af9-0ead-4f50-bf00-17a06a49f0ac');

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
('31d15af9-0ead-4f50-bf00-17a06a49f0ac', 'user10', NULL, NULL, 'default', 0, 'user10@test.com', '804cb2def36d751c050f57eaf93b431c016c6488', '2020-12-02 20:45:33', 1, 0, NULL, NULL, 0, NULL, '8ff77bd19ec27eb8'),
('5565f5dd-02ea-4bd7-ba31-bb76a82657be', 'owner1', '', '', 'default', 0, 'owner1@test.com', '49299d32cd9332347a1eb26380fd1de0ae7735f4', '2020-11-10 13:13:39', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, 'a438c35fe6456475'),
('849dd351-3239-4318-b07d-18347e51cae6', 'owner3', NULL, NULL, 'default', 0, 'owner3@test.com', '71d69e5871844ece907b39b5b2b4c93aa2d4a43b', '2020-11-11 20:21:30', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, '3c9da3066f4ac9bd'),
('admin', 'tdel', 'Admin of the system', '', 'default', 0, 'tdel@test.com', '35f05d4c283aef953aded586b7b9efd9209eb67a', '2020-11-09 08:54:37', 1, 1, '{\"visible_attributes\": [\"username\", \"description\"]}', NULL, 0, NULL, '433c709bf9b2b8c5'),
('b73be024-d4ec-414a-9f49-d386f4f9e2c9', 'owner2', NULL, NULL, 'default', 0, 'owner2@test.com', 'a9fe11d23b9ea3b68176e528f9bd101644ef1aaf', '2020-11-11 20:20:24', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, '7322889bc5f9cef7'),
('cd1fa0e4-3df3-4681-86aa-3d8fa3218665', 'movies_freak', NULL, NULL, 'default', 0, 'movies_freak@test.com', 'ee359d119dba83e1e5c444eb7bc4876fbbeaf802', '2020-11-10 13:28:59', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, '94fdbec195f0caf4'),
('ce057e40-c344-4da4-9d4d-8c58c412c827', 'user2', '', '', 'default', 0, 'user2@test.com', '41be35106d1837812c3bc4e77667ac94c6e65ef3', '2020-11-28 10:07:22', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, '1a75f1377a12e7a8');

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
(3, 'cd1fa0e4-3df3-4681-86aa-3d8fa3218665', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email,identity_attributes,image,gravatar,eidas_profile', '2020-11-10 13:30:36'),
(4, '849dd351-3239-4318-b07d-18347e51cae6', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email', '2020-11-11 21:06:39'),
(5, 'b73be024-d4ec-414a-9f49-d386f4f9e2c9', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email', '2020-11-18 11:29:53'),
(6, 'ce057e40-c344-4da4-9d4d-8c58c412c827', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email', '2020-11-28 10:08:42'),
(7, '5565f5dd-02ea-4bd7-ba31-bb76a82657be', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email', '2020-11-28 17:05:00'),
(8, '31d15af9-0ead-4f50-bf00-17a06a49f0ac', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email', '2020-12-02 20:45:42');

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
(1, '0x5dtnka121', '2020-11-11 13:28:59', NULL, NULL, NULL, NULL, 'movies_freak@test.com', NULL, NULL),
(2, 'ysu5nmllms', '2020-11-12 20:20:24', NULL, NULL, NULL, NULL, 'owner2@test.com', NULL, NULL),
(3, '9yi13ztt1ja', '2020-11-12 20:21:30', NULL, NULL, NULL, NULL, 'owner3@test.com', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_organization`
--
ALTER TABLE `user_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registration_profile`
--
ALTER TABLE `user_registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
