-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Nov 10, 2020 at 10:30 AM
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
('0e97cc8a-44bf-470e-80dc-540bdf604014', '2020-11-09 15:28:16', 1, '307f0d28-7ddb-4a68-b57c-1522928a4916', NULL),
('1db91d3d-cd9c-451d-b7ae-32d0025f6eda', '2020-11-09 14:27:40', 1, '307f0d28-7ddb-4a68-b57c-1522928a4916', NULL),
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
('05b79463baf6e4fd5c36045c2dd5dce67023969d', '2020-11-10 09:44:05', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('0cf74abaef9e6dd6a2712f1d95751daa95d49af4', '2020-11-10 09:54:47', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('1a9525823a00227002f60d8fbb82de55031ee302', '2020-11-10 10:15:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('1de1545539cbf7491ebc07a22fccbbfb2120bdda', '2020-11-10 10:04:22', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('290e0ef117236979a2b25734a2092f69f3c2857a', '2020-11-10 10:01:07', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('2d2641dc9c423e4a8d23f720bd45bafb5fbae750', '2020-11-10 10:07:22', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('37d28ae32100b4ad4320a45695b46ec04280cb74', '2020-11-10 10:09:15', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('3f0885c41f6a29dd8a423d844efc59975edbe3fc', '2020-11-10 10:17:35', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('402b0f5097c7da4892a4aebdea1242ca2162699b', '2020-11-10 09:44:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('440088f8c0ad286c09444133fc0e9087914838ef', '2020-11-10 10:31:06', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('44125f8f8eb785d8fccf6c97fbf9768290d29116', '2020-11-10 10:13:18', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('52775fd781c1d2464e145b6b926f6abdae1d59c3', '2020-11-10 09:53:58', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('568b314e8a804d1074880e5a98993309ae688815', '2020-11-10 09:56:16', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('5fae5d278bb48b62de19f32ec584762ea7fea78f', '2020-11-10 09:53:12', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('642ce64bdecc2b6cfadee61a74a4efbf0a80b02f', '2020-11-10 10:07:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('6efc7d83e4f507368f2f7e9e5258a2a22a4c0fa6', '2020-11-10 09:49:25', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('72db062aadafd9c0274841673efcf66d81c47496', '2020-11-10 09:57:46', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('7fe0b2567578dcf455e7662aa77d8bba96d963c2', '2020-11-10 10:03:05', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('856aaac2ac531a4b93a2c4f200435e301b4a4eb5', '2020-11-10 09:58:11', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('8b619386872f9a60cdeb8a7aa75ba972a3ce5815', '2020-11-10 09:58:15', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('9634d1abdb0309a07153e8d96183a27ede72e2a7', '2020-11-10 10:32:02', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a206f8fce16a507aa86d8283c3fc551985f40d0d', '2020-11-10 09:45:03', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('a3098043a1e2b61ac40564f639fa8fe629929278', '2020-11-10 09:55:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('aaa17cf5d8d5d942729e83793782e888cdaa12bd', '2020-11-10 09:26:52', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('aec9d042bf405887b462c85d0ffc0498244f8481', '2020-11-10 09:56:17', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b50cb4a8e5c3328973434a906a7bcdfe51c25882', '2020-11-10 10:00:40', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('b71ac964387707f7755c16136255fcde8bd6e312', '2020-11-10 10:24:09', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('bdaa46c58427a55e109d376f25802901e2bf44e9', '2020-11-10 09:24:43', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c11f7a2c4022280c73bb2bd50258ea6bb383882c', '2020-11-10 10:19:24', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c16592209bc6003ff8bdef312c87180773ed801f', '2020-11-10 09:45:55', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('c65a9d1e93805b47dd7dd8db73414d9df3d3a572', '2020-11-10 10:02:28', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('cac284b46be24ce774c7d9174c2dd0bf8462c3c4', '2020-11-10 09:44:42', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('cce70537725ed0d1bc0c27cb7f72e0d0e81f6b39', '2020-11-10 10:26:24', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('cebe8ce1ed38d45105fac7e4bcf4a2bfb435f340', '2020-11-10 09:39:37', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('d358a249c077a6785f9c3816d7575c31f285ce84', '2020-11-10 09:48:40', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('d8297bf5d71c4494280afbb36118e21c03e70f9e', '2020-11-10 09:49:48', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('e33a9cc720aa6f73f764e1c59c9e25b4d8b1a638', '2020-11-10 10:23:25', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('eb2cfe168abf37d48a0a25430a616ec3008711df', '2020-11-10 10:21:28', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('f35ecb2dfed37ef080a8ddf3e68372c78815ef8f', '2020-11-10 10:33:43', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin'),
('fa5e279dff60a80a3d57e2676bcc63588f8f6396', '2020-11-10 10:00:57', 'http://localhost:4000/welcome.php', 'permanent', 1, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'admin');

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
('7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'Cinema-Paradiso', 'OAuth 2.0 in Cinema Paradiso', '1dacab95-4511-49bf-ba39-80119f37b094', 'http://localhost:4000/login.php', 'http://localhost:4000/welcome.php', 'default', 'authorization_code,implicit,password,client_credentials,refresh_token,hybrid', 'code,token', NULL, NULL, NULL, NULL, NULL, ''),
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
(4, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'purchaser', NULL, '307f0d28-7ddb-4a68-b57c-1522928a4916'),
(5, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'provider', NULL, 'admin'),
(6, NULL, '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'purchaser', NULL, 'e3bf2c08-1424-4e18-87a4-e97e564fcf00');

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
('307f0d28-7ddb-4a68-b57c-1522928a4916', 'movies_freak', '', '', 'default', 0, 'movies_freak@tdc.com', 'be7d4a6d4f969ff81baa17e472d814305aa856cb', '2020-11-09 10:21:45', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, 'ce4af23915a8e8eb'),
('admin', 'tdel', 'Admin of the system', '', 'default', 0, 'tdel@test.com', '35f05d4c283aef953aded586b7b9efd9209eb67a', '2020-11-09 08:54:37', 1, 1, '{\"visible_attributes\": [\"username\", \"description\"]}', NULL, 0, NULL, '433c709bf9b2b8c5'),
('e3bf2c08-1424-4e18-87a4-e97e564fcf00', 'cinephile', 'Love watching movies!', '', 'default', 0, 'cinephile@tdc.com', 'eb9622d4ad9c4c03151ee4a84b36b7c8db6c0005', '2020-11-09 10:30:51', 1, 0, '{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}', NULL, 0, NULL, 'f13b1b9840943b29');

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
(1, 'admin', '7ffbed02-ac0c-4784-8c52-2cf8d77f85fd', 'username,email,identity_attributes,image,gravatar,eidas_profile', '2020-11-10 09:19:43');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_organization`
--
ALTER TABLE `user_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registration_profile`
--
ALTER TABLE `user_registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
