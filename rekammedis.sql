-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2022 at 10:28 AM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekammedis`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_session`
--

CREATE TABLE `ci_session` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ci_session`
--

INSERT INTO `ci_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02b10fb26e55f397ec521c5ddb19be910f8c6099', '119.10.179.229', 1641889832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838393833323b),
('039221b0a12b3d9959c00b1ce026d63d3a44c741', '180.243.5.33', 1641733901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733333930313b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('25c23ab82b3ae0112d02f1cac837ff3ed81ef100', '114.124.141.20', 1643857374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835373337343b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('2dfe33687c35dccfcdff47f5dba2be7fd9b05acb', '114.124.204.165', 1641730935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733303933353b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('2fa715ca0a73b7c85a67891f54540247170a7cd3', '180.253.165.159', 1643726799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333732363739393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('315b43da8983bf695db823eb989d108e8313e713', '182.2.170.156', 1642816623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323831363338393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('34716c0143a62c48a2148b3a199da128b9b1799e', '182.2.72.61', 1642257123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323235373036313b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('375cb139bfd131c8686921a8b8e78369217ec881', '180.253.68.119', 1642259173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323235393137333b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('3ce684a664e647a08669b05ab8a6f53a4d39d5b3', '114.124.173.208', 1641693651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313639333635313b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d706573616e7c733a3234383a220a20202020202020203c73637269707420747970653d27746578742f6a617661736372697074273e0a20202020202020202428646f63756d656e74292e72656164792866756e6374696f6e2829207b0a2020202020202020202020205377616c2e66697265280a2020202020202020202020202020202027426572686173696c21272c0a20202020202020202020202020202020274461746120626572686173696c2064696564697421272c0a202020202020202020202020202020202773756363657373270a202020202020202020202020293b0a20202020202020207d293b0a20202020202020203c2f7363726970743e0a20202020223b5f5f63695f766172737c613a313a7b733a353a22706573616e223b733a333a226f6c64223b7d),
('3fb14f1d6ccc2a78e5788f52a7e20a652d7630de', '114.124.141.20', 1643857376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835373337343b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('41bc212d7c3eda891082175674aa1a1f53cb69d2', '180.243.5.33', 1641735390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733353137393b),
('442470287d51fb932b0fa9a96cb0efc7f9c6bcc2', '114.124.173.208', 1641694064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313639343036343b),
('44b8c58c97972b9268a70f1eb42e1f645b804af2', '182.2.40.219', 1642406708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323430363637373b6d73677c733a35333a223c64697620636c6173733d27616c65727420616c6572742d64616e676572273e50617373776f72642073616c6168213c2f6469763e223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('464c25c1e17796d2fc946637610250e306a86f1f', '36.65.206.205', 1643856571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835363537313b),
('4ec905ed4439274edcf01dc9fa95f78bf8688b1a', '114.124.247.20', 1641731014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733303933353b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('542c680e3362964efb274c4503e3fdd504c43bb1', '114.124.216.99', 1643520066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333532303036363b),
('56040bc45d1425a16afa4899a32ef303a569867e', '114.124.239.34', 1643520322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333532303039313b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('628c1d51905a98b4f046a23e073996df0f3acc66', '140.213.7.58', 1642726899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323732363839393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('693f28d5e5549d8452d67da5bb7c0160a476cbcd', '180.253.160.35', 1643857231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835373130313b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('70bfdabf77aff74c012153a305f9922098c6e7fd', '182.2.36.156', 1643082863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333038323836333b),
('71cf43665767522253a296d29f0ea4ca49c2b384', '180.253.68.119', 1642259424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323235393137333b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('76460750dd0ba5c002e9b100de2852a74a2edb74', '36.90.171.98', 1643858850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835383835303b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('76a6562a1e6992844e9e39f3e34089f9bbf4d841', '180.243.5.33', 1641733496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733333439363b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('821d77a84563c5d56c6081c6f8cba900fbcf5e2a', '180.243.5.33', 1641733154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733333135343b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('83c94672c53d7aea26403027d62b8339581b0c59', '114.124.204.165', 1641731136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733313133363b),
('87d9ddadfb94d7b6b906a4ff0a7adaf1a955cb13', '114.124.193.5', 1643641249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333634313136343b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('8a6f1438ac5004e5cf99e5b4dd74f1e0c4f1c5b5', '114.124.212.50', 1642257034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323235373033343b),
('8aa90823ce3306518f55cc3505653fae1398825c', '114.124.140.123', 1642726078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323732363037383b),
('918165f4a830d88400e9c2ad2111c9a5016a5572', '36.90.171.98', 1643858913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835383835303b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('972ae2c5e37f7deed1227c68571342297e429554', '180.253.165.159', 1643726828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333732363739393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('9832c36b9dc78b92766907cd2d1ffcfbc9919d57', '112.78.44.138', 1643858544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835383534343b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2234223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246b64526f3279754a646d33356839353941383034694f734538554a4b6b4c304d696f483367575a5a4255337267476b543273624553223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b733a31393a22323032322d30312d33302030353a32333a3233223b733a31303a22757064617465645f6174223b733a31393a22323032322d30312d33302030353a32343a3539223b7d),
('9d1ed4bdbb1f8ad4493429757a04c4376dc70996', '114.124.141.20', 1643856243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835363234333b),
('9fc48844f880396e0e29e48b3de14780ace2edb6', '180.243.5.33', 1641734106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733333930313b),
('a46a6ef8cf5e39cd4befdae02c8687bff4fab168', '180.243.5.33', 1641731982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733313938323b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('a8510c64215d7d7f106c95e0588b551cbf8757c3', '180.243.5.33', 1641731666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733313636363b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('b481acdd1b879b5f965225c7d07d2d80bcdb034d', '114.124.141.20', 1643856265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835363236353b),
('b62ef7161236783d7ebcd4076535cb302a2b71cd', '140.213.7.55', 1642726979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323732363839393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('becaa395c13380dfa6d7ebd5d14dd0bef817d172', '36.65.206.205', 1643856427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835363334353b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2231223b733a383a2266756c6c4e616d65223b733a31313a2253757065722041646d696e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36303a22243279243130244b6b6d554448504e3055734f70414e4643544d55734f4f30733873312e7855554a744a684f396c6e4b2e6d634d72435949517a2e71223b733a343a22726f6c65223b733a313a2231223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('c5c944c0ca746159c86671ce8afccfb17e7bff90', '114.124.173.208', 1641693327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313639333332373b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('ce8c3e20606698affec1087351d31e24fce362f5', '114.124.140.123', 1642726077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323732363037373b),
('cea85d04dc72df52ae2757689e4990540f52aac5', '114.124.217.85', 1643591444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333539313434343b),
('d0c6d4a0b5ae84e9bfff72e60d6111a023794c45', '114.124.173.208', 1641694200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313639343036343b),
('edab6dfe55cc042dc2a1d2367874ea8b4fecd039', '114.124.141.20', 1643856267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333835363236373b),
('efa571ad088d6d08bda2e087dbb77bc9d3fb73eb', '180.243.5.33', 1641735179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733353137393b757365727c4f3a383a22737464436c617373223a383a7b733a363a22696455736572223b733a313a2232223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a383a22757365726e616d65223b733a343a2275736572223b733a383a2270617373776f7264223b733a36303a22243279243130246d79393161795a58525a3134775a4254306c7852514f42746a4f4730526651634135634c76564577694644714f496f3750454a5457223b733a343a22726f6c65223b733a313a2232223b733a363a22616374697665223b733a313a2231223b733a31303a22637265617465645f6174223b4e3b733a31303a22757064617465645f6174223b4e3b7d),
('f5a618bdc144c4d86b9272c88c8d8968eb8dc48f', '180.243.5.33', 1641732506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313733323530363b);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `nip` char(18) NOT NULL,
  `namaDokter` varchar(128) NOT NULL,
  `spesialis` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `noTelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `fotoDokter` varchar(255) DEFAULT NULL,
  `biayaDokter` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`nip`, `namaDokter`, `spesialis`, `email`, `noTelp`, `alamat`, `fotoDokter`, `biayaDokter`, `created_at`, `updated_at`) VALUES
('123456781234567899', 'nganu', 'panu', 'mailer@email.com', '123456', 'jalan jalan', NULL, 1000, '2022-02-01 14:45:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `idObat` int(11) NOT NULL,
  `namaObat` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `keterangan` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`idObat`, `namaObat`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'panurex', 2000, 10, '111', '2022-02-01 14:45:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `namaPasien` varchar(128) NOT NULL,
  `NIK` bigint(20) NOT NULL,
  `jenisKelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(128) NOT NULL,
  `noTelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `noBPJS` bigint(20) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idPasien`, `namaPasien`, `NIK`, `jenisKelamin`, `email`, `noTelp`, `alamat`, `noBPJS`, `foto`, `created_at`, `updated_at`) VALUES
(2, 'coba', 18362736273, 'Laki-laki', 'weninggultom@yahoo.co.id', '12333', 'k', 79989, NULL, '2022-01-09 12:34:52', NULL),
(3, 'Pasien Ssakit', 12345678, 'Perempuan', 'email@mail.com', '12345678', 'alamat jalan', 0, NULL, '2022-02-01 14:43:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `idPengaturan` int(11) NOT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `site_background` varchar(255) DEFAULT NULL,
  `nama_rs` varchar(255) DEFAULT NULL,
  `alamat_rs` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`idPengaturan`, `site_title`, `site_background`, `nama_rs`, `alamat_rs`, `updated_at`) VALUES
(1, 'Klinik Pratama Direktorat Jenderal Perhubungan Laut', 'assets/images/medical.jpg', 'Aplikasi Sistem Informasi', 'test', '2022-01-09 02:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `poliklinik`
--

CREATE TABLE `poliklinik` (
  `idPoliklinik` int(11) NOT NULL,
  `namaPoliklinik` varchar(128) NOT NULL,
  `gedung` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `poliklinik`
--

INSERT INTO `poliklinik` (`idPoliklinik`, `namaPoliklinik`, `gedung`, `created_at`, `updated_at`) VALUES
(1, 'Anu klinik', 'Gedung Sate', '2022-02-01 14:45:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `idRekamMedis` char(15) NOT NULL,
  `pasienId` int(11) NOT NULL,
  `dokterNip` char(18) NOT NULL,
  `poliklinikId` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` text NOT NULL,
  `terapi` text DEFAULT NULL,
  `tglPeriksa` date NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `rekam_medis`
--

INSERT INTO `rekam_medis` (`idRekamMedis`, `pasienId`, `dokterNip`, `poliklinikId`, `keluhan`, `diagnosa`, `terapi`, `tglPeriksa`, `userId`, `created_at`, `updated_at`) VALUES
('RM2022020100001', 3, '123456781234567899', 1, 'Panu', 'Kurap', 'Kerok', '2022-02-01', 4, '2022-02-01 14:46:03', NULL),
('RM2022020300001', 2, '123456781234567899', 1, 'diare', 'he', 'cotri loperamid', '2022-02-03', 4, '2022-02-03 03:26:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rm_obat`
--

CREATE TABLE `rm_obat` (
  `idRekamMedis` char(15) NOT NULL,
  `idObat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `rm_obat`
--

INSERT INTO `rm_obat` (`idRekamMedis`, `idObat`, `jumlah`, `created_at`, `updated_at`) VALUES
('RM2022020100001', 1, 0, NULL, NULL),
('RM2022020300001', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `fullName` varchar(128) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `fullName`, `username`, `password`, `role`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '$2y$10$KkmUDHPN0UsOpANFCTMUsOO0s8s1.xUUJtJhO9lnK.mcMrCYIQz.q', 1, 1, NULL, NULL),
(4, 'user', 'user', '$2y$10$kdRo2yuJdm35h959A804iOsE8UJKkL0MioH3gWZZBU3rgGkT2sbES', 2, 1, '2022-01-30 05:23:23', '2022-01-30 05:24:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_session`
--
ALTER TABLE `ci_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`idObat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`idPengaturan`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`idPoliklinik`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`idRekamMedis`),
  ADD KEY `pasienId` (`pasienId`,`dokterNip`,`poliklinikId`),
  ADD KEY `rekam_medis_ibfk_2` (`dokterNip`),
  ADD KEY `rekam_medis_ibfk_3` (`poliklinikId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD KEY `idRekamMedis` (`idRekamMedis`),
  ADD KEY `rm_obat_ibfk_2` (`idObat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `idPengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `idPoliklinik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_1` FOREIGN KEY (`pasienId`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`dokterNip`) REFERENCES `dokter` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_3` FOREIGN KEY (`poliklinikId`) REFERENCES `poliklinik` (`idPoliklinik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD CONSTRAINT `rm_obat_ibfk_1` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekam_medis` (`idRekamMedis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm_obat_ibfk_2` FOREIGN KEY (`idObat`) REFERENCES `obat` (`idObat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;