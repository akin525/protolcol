-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 08:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtimecons`
--

CREATE TABLE `airtimecons` (
  `id` int(200) NOT NULL,
  `server` varchar(3000) NOT NULL,
  `status` varchar(3000) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airtimecons`
--

INSERT INTO `airtimecons` (`id`, `server`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MCD', '0', NULL, '2022-06-23 20:09:49.000000'),
(2, 'Honor', '1', NULL, '2022-06-23 20:08:56.000000');

-- --------------------------------------------------------

--
-- Table structure for table `apis`
--

CREATE TABLE `apis` (
  `id` int(200) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bigs`
--

CREATE TABLE `bigs` (
  `id` int(11) NOT NULL,
  `plan_id` varchar(200) NOT NULL,
  `network` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `amount` varchar(200) NOT NULL,
  `tamount` varchar(200) NOT NULL,
  `ramount` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT '1',
  `server` varchar(200) DEFAULT NULL,
  `cat_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bigs`
--

INSERT INTO `bigs` (`id`, `plan_id`, `network`, `plan`, `code`, `amount`, `tamount`, `ramount`, `status`, `server`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, '2', 'MTN', '500MB [SME] 30 Days', NULL, '115.00', '150.00', '140.00', '1', NULL, '2', '2022-06-23 12:42:29.000000', '2022-06-25 18:55:48.000000'),
(2, '3', 'MTN', '1GB [SME] 30 Days', NULL, '225.00', '289.00', '249.00', '1', NULL, '3', '2022-06-23 12:42:30.000000', '2022-06-24 12:16:53.000000'),
(3, '4', 'MTN', '2GB [SME] 30 Days', NULL, '450.00', '578.00', '498.00', '1', NULL, '4', '2022-06-23 12:42:30.000000', '2022-06-24 12:17:43.000000'),
(4, '6', 'MTN', '5GB [SME] 30 Days', NULL, '1125.00', '1445.00', '1245.00', '1', NULL, '6', '2022-06-23 12:42:30.000000', '2022-06-24 12:18:50.000000'),
(5, '7', 'MTN', '40MB [Direct Gifting] 1 Day', NULL, '48.00', '98.00', '78.00', '1', NULL, '7', '2022-06-23 12:42:30.000000', '2022-06-24 12:19:20.000000'),
(6, '8', 'MTN', '100MB [DG] 1 Day', NULL, '96.00', '120.00', '107.00', '1', NULL, '8', '2022-06-23 12:42:30.000000', '2022-06-24 12:19:44.000000'),
(7, '9', 'MTN', '750MB [Direct Gifting] 7 Days', NULL, '480.00', '550.00', '530.00', '1', NULL, '9', '2022-06-23 12:42:30.000000', '2022-06-24 12:20:34.000000'),
(8, '10', 'MTN', '200MB [DG] 3 Days', NULL, '192.00', '250.00', '199.00', '1', NULL, '10', '2022-06-23 12:42:31.000000', '2022-06-24 12:20:55.000000'),
(9, '11', 'MTN', '250MB [Direct Gifting] 2 Days', NULL, '192.00', '240.00', '199.00', '1', NULL, '11', '2022-06-23 12:42:31.000000', '2022-06-24 13:23:36.000000'),
(10, '12', 'MTN', '1GB [Direct Gifting] 1 Day', NULL, '288.00', '350.00', '320.00', '1', NULL, '12', '2022-06-23 12:42:31.000000', '2022-06-24 13:24:37.000000'),
(11, '13', 'MTN', '750MB [Direct Gifting] 3 Days', NULL, '288.00', '350.00', '320.00', '1', NULL, '13', '2022-06-23 12:42:31.000000', '2022-06-24 13:24:12.000000'),
(12, '14', 'MTN', '2.5GB [Direct Gifting] 2 Days', NULL, '480.00', '550.00', '520.00', '1', NULL, '14', '2022-06-23 12:42:31.000000', '2022-06-24 13:26:53.000000'),
(13, '15', 'MTN', '350MB [DG]7 Days', NULL, '288.00', '350.00', '300.00', '1', NULL, '15', '2022-06-23 12:42:31.000000', '2022-06-24 11:15:54.000000'),
(14, '16', 'MTN', '1GB [DG]7 Days', NULL, '480.00', '450.00', '520.00', '1', NULL, '16', '2022-06-23 12:42:31.000000', '2022-06-24 11:18:14.000000'),
(15, '17', 'MTN', '2GB [DG]7 Days', NULL, '960.00', '1050.00', '999.00', '1', NULL, '17', '2022-06-23 12:42:31.000000', '2022-06-24 11:19:13.000000'),
(16, '18', 'MTN', '6GB [DG] 7 Days', NULL, '1440.00', '1640.00', '1540.00', '1', NULL, '18', '2022-06-23 12:42:32.000000', '2022-06-24 12:13:26.000000'),
(17, '19', 'MTN', '1.5GB [DG]30 Days', NULL, '960.00', '1020.00', '999.00', '1', NULL, '19', '2022-06-23 12:42:32.000000', '2022-06-24 12:13:07.000000'),
(18, '20', 'MTN', '2GB [DG] 30 Days', NULL, '1150.00', '1350.00', '1250.00', '1', NULL, '20', '2022-06-23 12:42:32.000000', '2022-06-24 12:11:28.000000'),
(19, '21', 'MTN', '3GB [DG] 30 Days', NULL, '1440.00', '1640.00', '1540.00', '1', NULL, '21', '2022-06-23 12:42:32.000000', '2022-06-24 12:10:41.000000'),
(20, '22', 'MTN', '4.5GB [DG]30 Days', NULL, '1920.00', '2020.00', '1999.00', '1', NULL, '22', '2022-06-23 12:42:32.000000', '2022-06-24 12:09:58.000000'),
(21, '23', 'MTN', '6GB [DG]30 Days', NULL, '2400.00', '2600.00', '2500.00', '1', NULL, '23', '2022-06-23 12:42:32.000000', '2022-06-24 12:00:32.000000'),
(22, '24', 'MTN', '10GB [DG]30 Days', NULL, '2880.00', '2999.00', '2990.00', '1', NULL, '24', '2022-06-23 12:42:32.000000', '2022-06-24 11:48:15.000000'),
(23, '25', 'MTN', '12GB [DG]30 Days', NULL, '3360.00', '3560.00', '3460.00', '1', NULL, '25', '2022-06-23 12:42:32.000000', '2022-06-24 11:49:14.000000'),
(24, '26', 'MTN', '20GB [DG] 30 Days', NULL, '4800.00', '4999.00', '4900.00', '1', NULL, '26', '2022-06-23 12:42:32.000000', '2022-06-24 12:08:55.000000'),
(25, '27', 'MTN', '25GB [DG] 30 Days', NULL, '5760.00', '5960.00', '5660.00', '0', NULL, '27', '2022-06-23 12:42:32.000000', '2022-06-24 13:36:02.000000'),
(26, '28', 'MTN', '40GB [DG]30 Days', NULL, '9600.00', '9999.00', '9900.00', '0', NULL, '28', '2022-06-23 12:42:32.000000', '2022-06-24 13:36:55.000000'),
(27, '29', 'MTN', '75GB [DG]30 Days', NULL, '14400.00', '14400.00', '14400.00', '0', NULL, '29', '2022-06-23 12:42:32.000000', '2022-06-24 11:43:59.000000'),
(28, '30', 'MTN', '120GB [DG]30 Days', NULL, '19200.00', '19200.00', '19200.00', '0', NULL, '30', '2022-06-23 12:42:32.000000', '2022-06-24 11:41:52.000000'),
(29, '31', 'MTN', '200GB [DG]30 Days', NULL, '28800.00', '28800.00', '28800.00', '0', NULL, '31', '2022-06-23 12:42:33.000000', '2022-06-24 11:41:52.000000'),
(30, '32', 'MTN', '100GB [DG]60 Days', NULL, '19200.00', '19200.00', '19200.00', '0', NULL, '32', '2022-06-23 12:42:33.000000', '2022-06-24 11:43:58.000000'),
(31, '33', 'MTN', '160GB [DG]60 Days', NULL, '28800.00', '28800.00', '28800.00', '0', NULL, '33', '2022-06-23 12:42:33.000000', '2022-06-24 11:36:15.000000'),
(32, '34', 'MTN', '400GB [DG]90 Days', NULL, '48000.00', '48000.00', '48000.00', '0', NULL, '34', '2022-06-23 12:42:33.000000', '2022-06-24 11:36:14.000000'),
(33, '35', 'MTN', '600GB [DG]90 Days', NULL, '72000.00', '72000.00', '72000.00', '0', NULL, '35', '2022-06-23 12:42:33.000000', '2022-06-24 11:36:59.000000'),
(34, '36', 'MTN', '800GB [DG]180 Days', NULL, '86400.00', '86900.00', '86700.00', '0', NULL, '36', '2022-06-23 12:42:33.000000', '2022-06-24 11:36:15.000000'),
(35, '37', 'MTN', '1TB [DG]365 Days', NULL, '96000.00', '96000.00', '96000.00', '0', NULL, '37', '2022-06-23 12:42:33.000000', '2022-06-24 11:34:40.000000'),
(36, '38', 'MTN', '2.5TB [DG]365 Days', NULL, '240000.00', '240000.00', '240000.00', '0', NULL, '38', '2022-06-23 12:42:33.000000', '2022-06-24 11:34:39.000000'),
(37, '39', 'MTN', '4.5TB [DG]365 Days', NULL, '432000.00', '432000.00', '432000.00', '0', NULL, '39', '2022-06-23 12:42:33.000000', '2022-06-24 11:35:15.000000'),
(38, '40', 'MTN', '50MB [CG]7 Days', NULL, '500.00', '500.00', '500.00', '0', NULL, '40', '2022-06-23 12:42:33.000000', '2022-06-24 11:35:15.000000'),
(39, '41', 'MTN', '150MB [CG]7 Days', NULL, '500.00', '500.00', '500.00', '0', NULL, '41', '2022-06-23 12:42:33.000000', '2022-06-24 11:35:14.000000'),
(40, '42', 'MTN', '250MB [CG]7 Days', NULL, '500.00', '500.00', '500.00', '0', NULL, '42', '2022-06-23 12:42:33.000000', '2022-06-24 11:35:14.000000'),
(41, '43', 'MTN', '500MB [CG]7 Days', NULL, '500.00', '500.00', '500.00', '0', NULL, '43', '2022-06-23 12:42:33.000000', '2022-06-24 11:29:25.000000'),
(42, '44', 'MTN', '1GB [CG]7 Days', NULL, '500.00', '500.00', '500.00', '0', NULL, '44', '2022-06-23 12:42:33.000000', '2022-06-24 11:29:26.000000'),
(43, '45', 'MTN', '2GB [CG]7 Days', NULL, '700.00', '700.00', '700.00', '0', NULL, '45', '2022-06-23 12:42:34.000000', '2022-06-24 11:29:56.000000'),
(44, '46', 'MTN', '5GB [CG]7 Days', NULL, '1450.00', '1450.00', '1450.00', '0', NULL, '46', '2022-06-23 12:42:34.000000', '2022-06-24 11:29:56.000000'),
(45, '47', 'MTN', '50MB [CG]30 Days', NULL, '400.00', '400.00', '400.00', '0', NULL, '47', '2022-06-23 12:42:34.000000', '2022-06-24 11:29:57.000000'),
(46, '48', 'MTN', '150MB [CG]30 Days', NULL, '400.00', '400.00', '400.00', '0', NULL, '48', '2022-06-23 12:42:34.000000', '2022-06-24 11:30:37.000000'),
(47, '49', 'MTN', '250MB [CG]30 Days', NULL, '400.00', '400.00', '400.00', '0', NULL, '49', '2022-06-23 12:42:34.000000', '2022-06-24 11:30:37.000000'),
(48, '50', 'MTN', '500MB [CG]30 Days', NULL, '400.00', '400.00', '400.00', '0', NULL, '50', '2022-06-23 12:42:34.000000', '2022-06-24 11:30:38.000000'),
(49, '51', 'MTN', '1GB [CG]30 Days', NULL, '400.00', '400.00', '400.00', '0', NULL, '51', '2022-06-23 12:42:34.000000', '2022-06-24 11:30:38.000000'),
(50, '52', 'MTN', '2GB [CG]30 Days', NULL, '700.00', '700.00', '700.00', '0', NULL, '52', '2022-06-23 12:42:34.000000', '2022-06-24 11:30:39.000000'),
(51, '53', 'MTN', '3GB [CG]7 Days', NULL, '900.00', '900.00', '900.00', '0', NULL, '53', '2022-06-23 12:42:34.000000', '2022-06-24 11:21:35.000000'),
(52, '54', 'MTN', '3GB [CG]30 Days', NULL, '900.00', '900.00', '900.00', '0', NULL, '54', '2022-06-23 12:42:34.000000', '2022-06-24 11:22:24.000000'),
(53, '55', 'MTN', '5GB [CG]30 Days', NULL, '1500.00', '1500.00', '1500.00', '0', NULL, '55', '2022-06-23 12:42:34.000000', '2022-06-24 11:22:56.000000'),
(54, '56', 'MTN', '10GB [CG]30 Days', NULL, '4000.00', '4000.00', '4000.00', '0', NULL, '56', '2022-06-23 12:42:34.000000', '2022-06-24 11:23:42.000000'),
(55, '57', 'MTN', '15GB [CG]30 Days', NULL, '3300.00', '3300.00', '3300.00', '0', NULL, '57', '2022-06-23 12:42:34.000000', '2022-06-24 11:24:08.000000'),
(56, '58', 'MTN', '20GB [CG]30 Days', NULL, '7000.00', '7000.00', '7000.00', '0', NULL, '58', '2022-06-23 12:42:34.000000', '2022-06-24 11:24:55.000000'),
(57, '59', 'MTN', '40GB [CG]30 Days', NULL, '10000.00', '10000.00', '10000.00', '0', NULL, '59', '2022-06-23 12:42:34.000000', '2022-06-24 11:26:48.000000'),
(58, '60', 'MTN', '75GB [CG]30 Days', NULL, '16500.00', '16500.00', '16500.00', '0', NULL, '60', '2022-06-23 12:42:34.000000', '2022-06-24 11:27:02.000000'),
(59, '61', 'MTN', '100GB [CG]30 Days', NULL, '22000.00', '22000.00', '22000.00', '0', NULL, '61', '2022-06-23 12:42:34.000000', '2022-06-24 11:27:12.000000'),
(60, '62', 'GLO', '3.9GB 30 Days', NULL, '800.00', '999.00', '900.00', '1', NULL, '62', '2022-06-23 12:42:34.000000', '2022-06-24 12:48:52.000000'),
(61, '63', 'GLO', '29.5GB 30 Days', NULL, '6400.00', '6800.00', '6700.00', '1', NULL, '63', '2022-06-23 12:42:35.000000', '2022-06-24 13:21:29.000000'),
(62, '64', 'GLO', '24GB 30 Days', NULL, '4000.00', '4500.00', '4300.00', '1', NULL, '64', '2022-06-23 12:42:35.000000', '2022-06-24 12:47:22.000000'),
(63, '65', 'GLO', '93GB 30 Days', NULL, '12000.00', '12900.00', '12500.00', '0', NULL, '65', '2022-06-23 12:42:35.000000', '2022-06-24 12:50:10.000000'),
(64, '66', 'GLO', '18GB 30 Days', NULL, '3200.00', '3400.00', '3300.00', '1', NULL, '66', '2022-06-23 12:42:35.000000', '2022-06-24 12:46:38.000000'),
(65, '67', 'GLO', '10.8GB 30 Days', NULL, '2000.00', '2500.00', '2300.00', '1', NULL, '67', '2022-06-23 12:42:35.000000', '2022-06-24 13:21:20.000000'),
(66, '68', 'GLO', '119GB30 Days', NULL, '14400.00', '14400.00', '14400.00', '0', NULL, '68', '2022-06-23 12:42:35.000000', '2022-06-24 13:21:00.000000'),
(67, '70', 'GLO', '14GB 30 Days', NULL, '2400.00', '2600.00', '2500.00', '1', NULL, '70', '2022-06-23 12:42:35.000000', '2022-06-24 12:58:20.000000'),
(68, '71', 'GLO', '9.2GB 30 Days', NULL, '1600.00', '1800.00', '1700.00', '1', NULL, '71', '2022-06-23 12:42:35.000000', '2022-06-24 12:53:30.000000'),
(69, '72', 'GLO', '1.8GB 14 Days', NULL, '400.00', '500.00', '500.00', '1', NULL, '72', '2022-06-23 12:42:35.000000', '2022-06-24 12:53:03.000000'),
(70, '74', 'GLO', '138GB30 Days', NULL, '16000.00', '16000.00', '16000.00', '0', NULL, '74', '2022-06-23 12:42:35.000000', '2022-06-24 12:50:58.000000'),
(71, '75', 'GLO', '7.5GB 30 Days', NULL, '1200.00', '1400.00', '1300.00', '1', NULL, '75', '2022-06-23 12:42:35.000000', '2022-06-24 12:52:47.000000'),
(72, '77', 'GLO', '50GB 30 Days', NULL, '8000.00', '8800.00', '8500.00', '0', NULL, '77', '2022-06-23 12:42:35.000000', '2022-06-24 13:41:41.000000'),
(73, '81', 'GLO', '7GB 7 Days', NULL, '1200.00', '1400.00', '1300.00', '1', NULL, '81', '2022-06-23 12:42:35.000000', '2022-06-24 12:52:09.000000'),
(74, '82', '9MOBILE', '2GB 30 Days', NULL, '1020.00', '1099.00', '1088.00', '1', NULL, '82', '2022-06-23 12:42:35.000000', '2022-06-24 12:34:00.000000'),
(75, '87', '9MOBILE', '7GB 7 Days', NULL, '1275.00', '1320.00', '1299.00', '1', NULL, '87', '2022-06-23 12:42:36.000000', '2022-06-24 11:26:37.000000'),
(76, '88', '9MOBILE', '11GB 30 Days', NULL, '3400.00', '3600.00', '3500.00', '1', NULL, '88', '2022-06-23 12:42:36.000000', '2022-06-24 12:34:23.000000'),
(77, '89', '9MOBILE', '15GB 30 Days', NULL, '4250.00', '4450.00', '4350.00', '1', NULL, '89', '2022-06-23 12:42:36.000000', '2022-06-24 12:34:46.000000'),
(78, '92', '9MOBILE', '1.5GB 30 Days', NULL, '850.00', '999.00', '899.00', '1', NULL, '92', '2022-06-23 12:42:36.000000', '2022-06-24 12:39:20.000000'),
(79, '93', '9MOBILE', '3GB 30 Days', NULL, '1275.00', '1475.00', '1375.00', '1', NULL, '93', '2022-06-23 12:42:36.000000', '2022-06-24 12:37:36.000000'),
(80, '95', '9MOBILE', '4.5GB 30 Days', NULL, '1700.00', '1900.00', '1800.00', '1', NULL, '95', '2022-06-23 12:42:36.000000', '2022-06-24 12:37:16.000000'),
(81, '96', '9MOBILE', '500MB 30 Days', NULL, '425.00', '525.00', '499.00', '1', NULL, '96', '2022-06-23 12:42:36.000000', '2022-06-24 12:37:02.000000'),
(82, '97', '9MOBILE', '40GB 30 Days', NULL, '8500.00', '8700.00', '8600.00', '1', NULL, '97', '2022-06-23 12:42:36.000000', '2022-06-24 12:36:43.000000'),
(83, '98', '9MOBILE', '250MB 7 Days Plan', NULL, '170.00', '220.00', '199.00', '1', NULL, '98', '2022-06-23 12:42:36.000000', '2022-06-24 12:40:03.000000'),
(84, '100', '9MOBILE', '1GB 7 Days', NULL, '425.00', '525.00', '499.00', '1', NULL, '100', '2022-06-23 12:42:36.000000', '2022-06-24 12:31:26.000000'),
(85, '101', '9MOBILE', '75GB30 Days', NULL, '12750.00', '12750.00', '12750.00', '0', NULL, '101', '2022-06-23 12:42:36.000000', '2022-06-24 12:44:50.000000'),
(86, '104', 'AIRTEL', '750MB [Direct Gifting] 14 Days', NULL, '475.00', '525.00', '499.00', '1', NULL, '104', '2022-06-23 12:42:36.000000', '2022-06-24 12:23:50.000000'),
(87, '105', 'AIRTEL_DG', '1.5GB [Direct Gifting] 30 Days', NULL, '950.00', '1050.00', '999.00', '1', NULL, '105', '2022-06-23 12:42:37.000000', '2022-06-24 12:31:52.000000'),
(88, '106', 'AIRTEL_DG', '2GB [DG] 30 Days', NULL, '1140.00', '1340.00', '1240.00', '1', NULL, '106', '2022-06-23 12:42:37.000000', '2022-06-24 12:32:07.000000'),
(89, '107', 'AIRTEL_DG', '3GB [DG ]30 Days', NULL, '1425.00', '1625.00', '1525.00', '1', NULL, '107', '2022-06-23 12:42:37.000000', '2022-06-24 12:44:08.000000'),
(90, '108', 'AIRTEL_DG', '4.5GB [DG] 30 Days', NULL, '1900.00', '2100.00', '1999.00', '1', NULL, '108', '2022-06-23 12:42:37.000000', '2022-06-24 12:43:54.000000'),
(91, '109', 'AIRTEL_DG', '6GB [DG] 30 Days', NULL, '2375.00', '2575.00', '2475.00', '1', NULL, '109', '2022-06-23 12:42:37.000000', '2022-06-24 12:43:23.000000'),
(92, '110', 'AIRTEL_DG', '10GB [DG] 30 Days', NULL, '2850.00', '2999.00', '2950.00', '1', NULL, '110', '2022-06-23 12:42:37.000000', '2022-06-24 12:42:56.000000'),
(93, '111', 'AIRTEL_DG', '11GB [Direct Gifting] 30 Days', NULL, '3800.00', '3999.00', '3900.00', '1', NULL, '111', '2022-06-23 12:42:37.000000', '2022-06-24 12:42:34.000000'),
(94, '112', 'AIRTEL_DG', '20GB [Direct Gifting] 30 Days', NULL, '4750.00', '4950.00', '4850.00', '1', NULL, '112', '2022-06-23 12:42:37.000000', '2022-06-24 12:58:45.000000'),
(95, '113', 'AIRTEL_DG', '40GB [DG] 30 Days', NULL, '9500.00', '9999.00', '9800.00', '1', NULL, '113', '2022-06-23 12:42:37.000000', '2022-06-24 12:59:15.000000'),
(96, '114', 'AIRTEL_DG', '75GB [DG] 30 Days', NULL, '14250.00', '14950.00', '14850.00', '1', NULL, '114', '2022-06-23 12:42:37.000000', '2022-06-24 12:59:54.000000'),
(97, '115', 'AIRTEL_DG', '120GB [DG]30 Days', NULL, '19000.00', '19000.00', '19000.00', '0', NULL, '115', '2022-06-23 12:42:37.000000', '2022-06-24 12:48:53.000000'),
(98, '116', 'AIRTEL_DG', '6GB [Direct Gifting] 7 Days', NULL, '1425.00', '1625.00', '1525.00', '1', NULL, '116', '2022-06-23 12:42:37.000000', '2022-06-24 12:48:03.000000'),
(99, '117', 'MTN', '10GB [SME] 30 Days', NULL, '2250.00', '2890.00', '2490.00', '1', NULL, '117', '2022-06-23 12:42:37.000000', '2022-06-24 12:57:51.000000'),
(100, '123', 'MTN', '3GB [SME] 30 Days', NULL, '675.00', '867.00', '747.00', '1', NULL, '123', '2022-06-23 12:42:38.000000', '2022-06-24 13:00:56.000000'),
(101, '129', 'AIRTEL_DG', '200MB [DG] 3 Days', NULL, '190.00', '230.00', '220.00', '1', NULL, '129', '2022-06-23 12:42:38.000000', '2022-06-24 13:15:58.000000'),
(102, '130', 'AIRTEL_DG', '350MB [DG] 7 Days', NULL, '285.00', '310.00', '305.00', '1', NULL, '130', '2022-06-23 12:42:38.000000', '2022-06-24 13:18:34.000000'),
(103, '131', 'AIRTEL_CG', '100MB [CG ]7 Days', NULL, '30.00', '60.00', '50.00', '1', NULL, '131', '2022-06-23 12:42:38.000000', '2022-06-24 13:18:57.000000'),
(104, '132', 'AIRTEL_CG', '300MB [CG] 30 Days', NULL, '90.00', '140.00', '130.00', '1', NULL, '132', '2022-06-23 12:42:38.000000', '2022-06-24 13:19:17.000000'),
(105, '133', 'AIRTEL_CG', '500MB [CG] 30 Days', NULL, '150.00', '199.00', '170.00', '1', NULL, '133', '2022-06-23 12:42:38.000000', '2022-06-24 13:09:38.000000'),
(106, '134', 'AIRTEL_CG', '1GB [CG] 30 Days', NULL, '300.00', '450.00', '400.00', '1', NULL, '134', '2022-06-23 12:42:38.000000', '2022-06-24 13:09:12.000000'),
(107, '135', 'AIRTEL_CG', '2GB [CG] 30 Days', NULL, '600.00', '800.00', '700.00', '1', NULL, '135', '2022-06-23 12:42:38.000000', '2022-06-24 13:08:36.000000'),
(108, '136', 'AIRTEL_CG', '5GB [CG] 30 Days', NULL, '1500.00', '1800.00', '1700.00', '1', NULL, '136', '2022-06-23 12:42:38.000000', '2022-06-24 13:08:20.000000'),
(109, '137', 'AIRTEL_CG', '10GB [CG] 30 Days', NULL, '3000.00', '3300.00', '3200.00', '1', NULL, '137', '2022-06-23 12:42:38.000000', '2022-06-24 13:08:02.000000'),
(110, '138', 'AIRTEL_CG', '20GB [Corperate Gifting] 30 Days', NULL, '6000.00', '6800.00', '6500.00', '1', NULL, '138', '2022-06-23 12:42:38.000000', '2022-06-24 13:06:42.000000');

-- --------------------------------------------------------

--
-- Table structure for table `bill_payment`
--

CREATE TABLE `bill_payment` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `transactionid` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL,
  `server_response` varchar(900) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discountamount` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_payment`
--

INSERT INTO `bill_payment` (`id`, `username`, `product`, `amount`, `transactionid`, `paymentmethod`, `timestamp`, `status`, `server_response`, `discountamount`, `token`, `number`) VALUES
(1, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1630701207437801107', 'Wallet Payment', '2021-09-03 20:33:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630701207437801107\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(2, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1630701681865921062', 'Wallet Payment', '2021-09-03 20:41:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630701681865921062\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(3, '524417c188449469af9bff10102e765d', 'Glo Data N100 -  150MB - 1 day', 100, 'R163070170777725292', 'Wallet Payment', '2021-09-03 20:41:48', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R163070170777725292\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, NULL),
(4, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16307076531479556931', 'Wallet Payment', '2021-09-03 22:20:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16307076531479556931\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(5, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1630710460129317851', 'Wallet Payment', '2021-09-03 23:07:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630710460129317851\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(6, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1630711006967550647', 'Wallet Payment', '2021-09-03 23:16:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630711006967550647\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(7, '524417c188449469af9bff10102e765d', 'MTN Airtime', 200, 'R1630735771133760714', 'Wallet Payment', '2021-09-04 06:09:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630735771133760714\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(8, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 600, 'R1630747329395877053', 'Wallet Payment', '2021-09-04 09:22:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630747329395877053\",\"debitAmount\":600,\"discountAmount\":18}', '18', NULL, NULL),
(9, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R1630762434220488144', 'Wallet Payment', '2021-09-04 13:33:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630762434220488144\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(10, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1630787310397435433', 'Wallet Payment', '2021-09-04 20:28:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630787310397435433\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(11, '524417c188449469af9bff10102e765d', 'MTN Airtime', 100, 'R16308625871455010234', 'Wallet Payment', '2021-09-05 17:23:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16308625871455010234\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(12, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1630921808378763960', 'Wallet Payment', '2021-09-06 09:50:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1630921808378763960\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(13, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16309218511060315518', 'Wallet Payment', '2021-09-06 09:51:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16309218511060315518\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(14, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R16309555791622193498', 'Wallet Payment', '2021-09-06 19:13:01', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16309555791622193498\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(15, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R16310067621162063192', 'Wallet Payment', '2021-09-07 09:26:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16310067621162063192\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(16, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16310227351648125681', 'Wallet Payment', '2021-09-07 13:52:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16310227351648125681\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(17, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R1631035398249737317', 'Wallet Payment', '2021-09-07 17:23:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631035398249737317\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(18, 'fb0a79856a84e9c61aa65c141e2f74f2', 'AIRTEL Airtime', 100, 'R16310502401498406619', 'Wallet Payment', '2021-09-07 21:30:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16310502401498406619\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(19, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16310873421507040364', 'Wallet Payment', '2021-09-08 07:49:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16310873421507040364\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(20, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R163121392959389837', 'Wallet Payment', '2021-09-09 18:58:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163121392959389837\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(21, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1631217215906405597', 'Wallet Payment', '2021-09-09 19:53:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631217215906405597\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(22, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1631287751250250460', 'Wallet Payment', '2021-09-10 15:29:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631287751250250460\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(23, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1631288353162081188', 'Wallet Payment', '2021-09-10 15:39:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631288353162081188\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(24, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16313047861541748658', 'Wallet Payment', '2021-09-10 20:13:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16313047861541748658\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(25, 'fb0a79856a84e9c61aa65c141e2f74f2', 'MTN 1gb', 260, 'R1631311717279177911', 'Wallet Payment', '2021-09-10 22:08:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631311717279177911\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(26, 'fb0a79856a84e9c61aa65c141e2f74f2', 'AIRTEL Airtime', 100, 'R16313120421554181875', 'Wallet Payment', '2021-09-10 22:14:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16313120421554181875\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(27, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16313500671367778001', 'Wallet Payment', '2021-09-11 08:47:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16313500671367778001\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(28, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1631356055883167249', 'Wallet Payment', '2021-09-11 10:27:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631356055883167249\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(29, 'fb0a79856a84e9c61aa65c141e2f74f2', 'AIRTEL Airtime', 110, 'R16313881021138468175', 'Wallet Payment', '2021-09-11 19:21:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16313881021138468175\",\"debitAmount\":110,\"discountAmount\":3.3}', '3.3', NULL, NULL),
(30, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 250, 'R1631392730449328904', 'Wallet Payment', '2021-09-11 20:38:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631392730449328904\",\"debitAmount\":250,\"discountAmount\":7.5}', '7.5', NULL, NULL),
(31, '257383cce19778b4562b5f5c119f5233', 'MTN N25 20MB - (24 Hours)', 25, 'R16315334131849700982', 'Wallet Payment', '2021-09-13 11:43:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16315334131849700982\",\"debitAmount\":25,\"discountAmount\":0.5}', '0.5', NULL, NULL),
(32, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R163156190598635182', 'Wallet Payment', '2021-09-13 19:38:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163156190598635182\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(33, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16316576331752601988', 'Wallet Payment', '2021-09-14 22:13:54', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16316576331752601988\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(34, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 2gb', 520, 'R16316588641226033954', 'Wallet Payment', '2021-09-14 22:34:25', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16316588641226033954\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(35, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 1000, 'R16316591861916486395', 'Wallet Payment', '2021-09-14 22:39:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16316591861916486395\",\"debitAmount\":1000,\"discountAmount\":30}', '30', NULL, NULL),
(36, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 500, 'R1631661342224248523', 'Wallet Payment', '2021-09-14 23:15:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631661342224248523\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, NULL),
(37, 'fb0a79856a84e9c61aa65c141e2f74f2', 'MTN 1gb', 260, 'R1631733112117412926', 'Wallet Payment', '2021-09-15 19:11:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631733112117412926\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(38, '51ffbecadd7bdebe00ec3c2549108b82', 'AIRTEL Airtime', 200, 'R1631764371327579803', 'Wallet Payment', '2021-09-16 03:52:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631764371327579803\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(39, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 200, 'R163186399434086303', 'Wallet Payment', '2021-09-17 07:33:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163186399434086303\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(40, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1631878445947343279', 'Wallet Payment', '2021-09-17 11:34:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1631878445947343279\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(41, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16319676591376624606', 'Wallet Payment', '2021-09-18 12:21:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16319676591376624606\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(42, '82515e08f367f7237393a2faffa7f1b6', 'MTN 5gb', 1300, 'R1632059758618073708', 'Wallet Payment', '2021-09-19 13:56:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632059758618073708\",\"debitAmount\":1300,\"discountAmount\":26}', '26', NULL, NULL),
(43, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R1632068308128424792', 'Wallet Payment', '2021-09-19 16:18:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632068308128424792\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(44, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R163206844818264553', 'Wallet Payment', '2021-09-19 16:20:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163206844818264553\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(45, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16321563831375695389', 'Wallet Payment', '2021-09-20 16:46:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16321563831375695389\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(46, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16321695462049023382', 'Wallet Payment', '2021-09-20 20:25:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16321695462049023382\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(47, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1632171188967806022', 'Wallet Payment', '2021-09-20 20:53:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632171188967806022\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(48, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1632173943401362833', 'Wallet Payment', '2021-09-20 21:39:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632173943401362833\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(49, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1632210819697198200', 'Wallet Payment', '2021-09-21 07:53:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632210819697198200\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(50, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1632211653961744411', 'Wallet Payment', '2021-09-21 08:07:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632211653961744411\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(51, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R16322216091489845998', 'Wallet Payment', '2021-09-21 10:53:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16322216091489845998\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(52, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1632221662464815767', 'Wallet Payment', '2021-09-21 10:54:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632221662464815767\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(53, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1632228248207149098', 'Wallet Payment', '2021-09-21 12:44:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632228248207149098\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(54, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R1632297201216038539', 'Wallet Payment', '2021-09-22 07:53:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632297201216038539\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(55, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R1632333943181734857', 'Wallet Payment', '2021-09-22 18:05:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632333943181734857\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(56, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R16323409051287863235', 'Wallet Payment', '2021-09-22 20:01:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16323409051287863235\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(57, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16323412521582433304', 'Wallet Payment', '2021-09-22 20:07:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16323412521582433304\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(58, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 2gb', 520, 'R1632352768541376512', 'Wallet Payment', '2021-09-22 23:19:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632352768541376512\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(59, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R1632453084556536126', 'Wallet Payment', '2021-09-24 03:11:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632453084556536126\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(60, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R163250144989725548', 'Wallet Payment', '2021-09-24 16:37:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163250144989725548\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(61, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16325015641617498949', 'Wallet Payment', '2021-09-24 16:39:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16325015641617498949\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(62, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 500, 'R1632515547538511280', 'Wallet Payment', '2021-09-24 20:32:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632515547538511280\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, NULL),
(63, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R163257486929089105', 'Paystack Payment', '2021-09-25 13:07:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163257486929089105\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(64, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16326554611239809480', 'Wallet Payment', '2021-09-26 11:24:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16326554611239809480\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(65, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 150, 'R1632655843698614828', 'Wallet Payment', '2021-09-26 11:30:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632655843698614828\",\"debitAmount\":150,\"discountAmount\":4.5}', '4.5', NULL, NULL),
(66, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16326686141867605073', 'Wallet Payment', '2021-09-26 15:03:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16326686141867605073\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(67, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 100, 'R16326726291258764013', 'Wallet Payment', '2021-09-26 16:10:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16326726291258764013\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(68, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R16327109191992635931', 'Wallet Payment', '2021-09-27 02:48:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16327109191992635931\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(69, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1632757016744634936', 'Wallet Payment', '2021-09-27 15:37:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1632757016744634936\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(70, '51ffbecadd7bdebe00ec3c2549108b82', 'AIRTEL Airtime', 200, 'R16327809631774316222', 'Wallet Payment', '2021-09-27 22:16:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16327809631774316222\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(71, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R16327810551295634068', 'Wallet Payment', '2021-09-27 22:17:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16327810551295634068\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(72, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 100, 'R16327818381338358058', 'Wallet Payment', '2021-09-27 22:30:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16327818381338358058\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(73, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R163285116449760047', 'Wallet Payment', '2021-09-28 17:46:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163285116449760047\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(74, '7402890e1e13e6d14cc5b1a6530a4a6c', 'AIRTEL Airtime', 100, 'R16328513501292571697', 'Wallet Payment', '2021-09-28 17:49:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16328513501292571697\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(75, '4d3ce28d253c0564b9a17ca9e0f89e63', '9mobile Airtime', 200, 'R1632912692328620264', 'Wallet Payment', '2021-09-29 10:51:33', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1632912692328620264\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(76, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16329230311261869508', 'Wallet Payment', '2021-09-29 13:43:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16329230311261869508\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(77, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R16329471601412667171', 'Wallet Payment', '2021-09-29 20:26:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16329471601412667171\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(78, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R163299989195839404', 'Wallet Payment', '2021-09-30 11:04:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163299989195839404\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(79, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16330042411260840610', 'Wallet Payment', '2021-09-30 12:17:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16330042411260840610\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(80, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16330274911585104444', 'Wallet Payment', '2021-09-30 18:45:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16330274911585104444\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(81, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 260, 'R16330298492021646871', 'Wallet Payment', '2021-09-30 19:24:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16330298492021646871\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(82, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1633105451366197145', 'Wallet Payment', '2021-10-01 16:24:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633105451366197145\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(83, '7402890e1e13e6d14cc5b1a6530a4a6c', '9mobile 4.5GB - 2000 Naira - 30 Days', 2000, 'R16331127441610777850', 'Wallet Payment', '2021-10-01 18:25:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16331127441610777850\",\"debitAmount\":2000,\"discountAmount\":40}', '40', NULL, NULL),
(84, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R1633269647990116111', 'Wallet Payment', '2021-10-03 14:00:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633269647990116111\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(85, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16332738791640718075', 'Wallet Payment', '2021-10-03 15:11:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16332738791640718075\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(86, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R16333384931836361243', 'Wallet Payment', '2021-10-04 09:08:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333384931836361243\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(87, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1633340591401619903', 'Wallet Payment', '2021-10-04 09:43:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633340591401619903\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(88, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16333436931709170358', 'Wallet Payment', '2021-10-04 10:34:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333436931709170358\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(89, 'c39b76e177924d72b664a5ff77cc5ee3', 'MTN 5gb', 1300, 'R16333496311371171375', 'Wallet Payment', '2021-10-04 12:13:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333496311371171375\",\"debitAmount\":1300,\"discountAmount\":26}', '26', NULL, NULL),
(90, '7402890e1e13e6d14cc5b1a6530a4a6c', 'GLO Airtime', 100, 'R16333597271894706050', 'Wallet Payment', '2021-10-04 15:02:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333597271894706050\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(91, '7402890e1e13e6d14cc5b1a6530a4a6c', '9mobile 4.5GB - 2000 Naira - 30 Days', 2000, 'R16333737501995701849', 'Wallet Payment', '2021-10-04 18:55:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333737501995701849\",\"debitAmount\":2000,\"discountAmount\":40}', '40', NULL, NULL),
(92, '12f2b2b0940c849166903a5f7ffbe26c', 'Airtel Data - 50 Naira - 40MB  - 1Day', 49, 'R16333755961799354188', 'Wallet Payment', '2021-10-04 19:26:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16333755961799354188\",\"debitAmount\":49,\"discountAmount\":0.009799999999998033}', '0.009799999999998', NULL, NULL),
(93, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1633422070584956145', 'Wallet Payment', '2021-10-05 08:21:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633422070584956145\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(94, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 5gb', 1300, 'R16334621501729970446', 'Wallet Payment', '2021-10-05 19:29:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16334621501729970446\",\"debitAmount\":1300,\"discountAmount\":26}', '26', NULL, NULL),
(95, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R1633509225777970174', 'Wallet Payment', '2021-10-06 08:33:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633509225777970174\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(96, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 300, 'R1633528702194148176', 'Wallet Payment', '2021-10-06 13:58:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633528702194148176\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(97, '51ffbecadd7bdebe00ec3c2549108b82', 'AIRTEL Airtime', 100, 'R16336035501005624524', 'Wallet Payment', '2021-10-07 10:45:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16336035501005624524\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(98, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 100, 'R16336198702101749557', 'Wallet Payment', '2021-10-07 15:17:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16336198702101749557\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(99, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 100, 'R16336200031470076785', 'Wallet Payment', '2021-10-07 15:20:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16336200031470076785\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(100, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16337014621491303756', 'Wallet Payment', '2021-10-08 13:57:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16337014621491303756\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(101, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1633711799285200852', 'Wallet Payment', '2021-10-08 16:50:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633711799285200852\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(102, '0dc345d62afafaad3e5fec8a4e532502', 'MTN 1gb', 260, 'R16337126791051809021', 'Wallet Payment', '2021-10-08 17:04:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16337126791051809021\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(103, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R1633765615608430934', 'Wallet Payment', '2021-10-09 07:46:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633765615608430934\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(104, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R16337661871813958424', 'Wallet Payment', '2021-10-09 07:56:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16337661871813958424\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(105, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16337717292147200794', 'Wallet Payment', '2021-10-09 09:28:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16337717292147200794\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(106, '0dc345d62afafaad3e5fec8a4e532502', 'MTN Airtime', 200, 'R16337995162055946226', 'Wallet Payment', '2021-10-09 17:11:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16337995162055946226\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(107, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16338038281236643760', 'Wallet Payment', '2021-10-09 18:23:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16338038281236643760\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(108, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 200, 'R1633813068251094882', 'Wallet Payment', '2021-10-09 20:57:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633813068251094882\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(109, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R1633813275940219040', 'Wallet Payment', '2021-10-09 21:01:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633813275940219040\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(110, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN N150 160MB - 30 days', 150, 'R16338658211870844695', 'Wallet Payment', '2021-10-10 11:37:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16338658211870844695\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, NULL),
(111, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 500, 'R1633878024206401259', 'Wallet Payment', '2021-10-10 15:00:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633878024206401259\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, NULL),
(112, '0dc345d62afafaad3e5fec8a4e532502', 'MTN 1gb', 260, 'R1633888854814373765', 'Wallet Payment', '2021-10-10 18:00:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1633888854814373765\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(113, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 260, 'R16339372281092699151', 'Wallet Payment', '2021-10-11 07:27:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339372281092699151\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(114, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16339420791170260362', 'Wallet Payment', '2021-10-11 08:48:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339420791170260362\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(115, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R16339473491895638474', 'Wallet Payment', '2021-10-11 10:15:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339473491895638474\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(116, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 5gb', 1300, 'R16339508051580854204', 'Wallet Payment', '2021-10-11 11:13:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339508051580854204\",\"debitAmount\":1300,\"discountAmount\":26}', '26', NULL, NULL),
(117, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16339728501451402716', 'Wallet Payment', '2021-10-11 17:20:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339728501451402716\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(118, '51ffbecadd7bdebe00ec3c2549108b82', 'GLO Airtime', 200, 'R16339891931090475660', 'Wallet Payment', '2021-10-11 21:53:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16339891931090475660\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(119, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN 1gb', 260, 'R16340451981847174495', 'Wallet Payment', '2021-10-12 13:26:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16340451981847174495\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(120, '7402890e1e13e6d14cc5b1a6530a4a6c', 'Airtel Data - 1,000 Naira - 1.5GB - 30 Days', 999, 'R16340633541877880722', 'Wallet Payment', '2021-10-12 18:29:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16340633541877880722\",\"debitAmount\":999,\"discountAmount\":19.98}', '19.98', NULL, NULL),
(121, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16341064872093694844', 'Wallet Payment', '2021-10-13 06:28:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16341064872093694844\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(122, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1634124676553288314', 'Wallet Payment', '2021-10-13 11:31:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634124676553288314\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(123, '51ffbecadd7bdebe00ec3c2549108b82', 'GOtv Jinja N1,640', 1640, 'R1634155771489291386', 'Wallet Payment', '2021-10-13 20:09:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634155771489291386\",\"debitAmount\":1640,\"discountAmount\":16.4}', '16.4', NULL, NULL),
(124, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1634288799467874141', 'Wallet Payment', '2021-10-15 09:06:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634288799467874141\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(125, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16342912901531037033', 'Wallet Payment', '2021-10-15 09:48:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16342912901531037033\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(126, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1634302319229904365', 'Wallet Payment', '2021-10-15 12:52:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634302319229904365\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(127, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R16343901501484763875', 'Wallet Payment', '2021-10-16 13:15:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16343901501484763875\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(128, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R163439122736017137', 'Wallet Payment', '2021-10-16 13:33:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163439122736017137\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(129, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 100, 'R1634409550514740178', 'Wallet Payment', '2021-10-16 18:39:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634409550514740178\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(130, '51ffbecadd7bdebe00ec3c2549108b82', 'MTN Airtime', 300, 'R16344232532095242187', 'Wallet Payment', '2021-10-16 22:27:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16344232532095242187\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(131, '57927fc580495a2e8937c3bf08e777bd1d6e6f56b606819e7734269660b3004d', 'MTN N50 50MB - (24 Hours)', 50, 'R16344992361748083749', 'Wallet Payment', '2021-10-17 22:00:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16344992361748083749\",\"debitAmount\":50,\"discountAmount\":1}', '1', NULL, NULL),
(132, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16345494111086398953', 'Wallet Payment', '2021-10-18 09:30:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16345494111086398953\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(133, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16345881661440978168', 'Wallet Payment', '2021-10-18 20:16:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16345881661440978168\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(134, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R16345907851708462076', 'Wallet Payment', '2021-10-18 20:59:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16345907851708462076\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(135, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R16345908161259271875', 'Wallet Payment', '2021-10-18 21:00:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16345908161259271875\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(136, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1634616843408001265', 'Wallet Payment', '2021-10-19 04:14:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634616843408001265\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(137, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R163462319533464952', 'Wallet Payment', '2021-10-19 05:59:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163462319533464952\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(138, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 120, 'R1634667584505260810', 'Wallet Payment', '2021-10-19 18:19:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634667584505260810\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(139, '974baa98c081756cce58577d2abb86fa', 'MTN 2gb', 520, 'R16347171251609012647', 'Wallet Payment', '2021-10-20 08:05:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347171251609012647\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(140, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 260, 'R1634717259910975481', 'Wallet Payment', '2021-10-20 08:07:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634717259910975481\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(141, '', 'MTN 1gb', 260, 'R1634717260524736814', 'Wallet Payment', '2021-10-20 08:07:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634717260524736814\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(142, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16347179231530604157', 'Wallet Payment', '2021-10-20 08:18:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347179231530604157\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(143, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16347303421251956753', 'Wallet Payment', '2021-10-20 11:45:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347303421251956753\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(144, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16347310021433975463', 'Wallet Payment', '2021-10-20 11:56:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347310021433975463\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(145, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16347345341230378903', 'Wallet Payment', '2021-10-20 12:55:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347345341230378903\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(146, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1634738049363386348', 'Wallet Payment', '2021-10-20 13:54:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634738049363386348\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(147, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16347663981890285782', 'Wallet Payment', '2021-10-20 21:46:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347663981890285782\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(148, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16347666691216884784', 'Wallet Payment', '2021-10-20 21:51:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16347666691216884784\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(149, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1634809582440049592', 'Wallet Payment', '2021-10-21 09:46:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634809582440049592\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(150, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16348185921898288773', 'Wallet Payment', '2021-10-21 12:16:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16348185921898288773\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(151, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 210, 'R16348491191832240178', 'Wallet Payment', '2021-10-21 20:45:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16348491191832240178\",\"debitAmount\":210,\"discountAmount\":6.3}', '6.3', NULL, NULL),
(152, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1634885934713749936', 'Wallet Payment', '2021-10-22 06:58:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634885934713749936\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(153, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16349080121205790976', 'Wallet Payment', '2021-10-22 13:06:56', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16349080121205790976\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(154, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16349115251087588428', 'Wallet Payment', '2021-10-22 14:05:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16349115251087588428\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(155, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1634933347981421057', 'Wallet Payment', '2021-10-22 20:09:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1634933347981421057\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(156, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16349912502053403768', 'Wallet Payment', '2021-10-23 12:14:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16349912502053403768\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(157, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 250, 'R16350177941920364124', 'Wallet Payment', '2021-10-23 19:36:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16350177941920364124\",\"debitAmount\":250,\"discountAmount\":7.5}', '7.5', NULL, NULL),
(158, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16350554021728207638', 'Wallet Payment', '2021-10-24 06:03:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16350554021728207638\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(159, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R16351034431554207067', 'Wallet Payment', '2021-10-24 19:24:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16351034431554207067\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(160, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1635106051742516202', 'Wallet Payment', '2021-10-24 20:07:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635106051742516202\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(161, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R1635232554418474502', 'Wallet Payment', '2021-10-26 07:15:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635232554418474502\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(162, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 500, 'R16352652321936855623', 'Wallet Payment', '2021-10-26 16:20:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16352652321936855623\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, NULL),
(163, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN N150 160MB - 30 days', 150, 'R16352980661237951945', 'Wallet Payment', '2021-10-27 01:27:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16352980661237951945\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, NULL),
(164, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN N50 50MB - (24 Hours)', 50, 'R16352988991483015780', 'Wallet Payment', '2021-10-27 01:41:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16352988991483015780\",\"debitAmount\":50,\"discountAmount\":1}', '1', NULL, NULL),
(165, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R1635314686561624166', 'Wallet Payment', '2021-10-27 06:04:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635314686561624166\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(166, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R16353270751837562088', 'Wallet Payment', '2021-10-27 09:31:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16353270751837562088\",\"debitAmount\":120,\"discountAmount\":3.5999999999999996}', '3.6', NULL, NULL),
(167, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16353321111837339853', 'Wallet Payment', '2021-10-27 10:55:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16353321111837339853\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(168, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635332345823468355', 'Wallet Payment', '2021-10-27 10:59:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635332345823468355\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(169, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635332528331943755', 'Wallet Payment', '2021-10-27 11:02:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635332528331943755\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(170, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R16353506111611464940', 'Wallet Payment', '2021-10-27 16:03:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16353506111611464940\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(171, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16353531541946551850', 'Wallet Payment', '2021-10-27 16:45:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16353531541946551850\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL);
INSERT INTO `bill_payment` (`id`, `username`, `product`, `amount`, `transactionid`, `paymentmethod`, `timestamp`, `status`, `server_response`, `discountamount`, `token`, `number`) VALUES
(172, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635355421643108866', 'Wallet Payment', '2021-10-27 17:23:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635355421643108866\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, NULL),
(173, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R16353641871676762607', 'Wallet Payment', '2021-10-27 19:49:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16353641871676762607\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(174, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R1635366915733467220', 'Wallet Payment', '2021-10-27 20:35:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635366915733467220\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(175, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R1635367029685954232', 'Wallet Payment', '2021-10-27 20:37:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635367029685954232\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(176, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16354061941170094864', 'Wallet Payment', '2021-10-28 07:29:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16354061941170094864\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, NULL),
(177, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 260, 'R16354100891791907354', 'Wallet Payment', '2021-10-28 08:34:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16354100891791907354\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(178, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R16354248041185548844', 'Wallet Payment', '2021-10-28 12:40:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16354248041185548844\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, NULL),
(179, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16354294921617614266', 'Wallet Payment', '2021-10-28 13:58:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16354294921617614266\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, NULL),
(180, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R1635432094412674194', 'Wallet Payment', '2021-10-28 14:41:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635432094412674194\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(181, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R1635432656962873538', 'Wallet Payment', '2021-10-28 14:50:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635432656962873538\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(182, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 260, 'R1635436565630276122', 'Wallet Payment', '2021-10-28 15:56:08', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635436565630276122\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(183, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R1635451901820314859', 'Wallet Payment', '2021-10-28 20:11:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635451901820314859\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(184, '0dc345d62afafaad3e5fec8a4e532502', 'MTN 1gb', 260, 'R1635452932611471849', 'Wallet Payment', '2021-10-28 20:28:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635452932611471849\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, NULL),
(185, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1635463585644166542', 'Wallet Payment', '2021-10-28 23:26:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635463585644166542\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09039052693'),
(186, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1635497458698756568', 'Wallet Payment', '2021-10-29 08:51:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635497458698756568\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '07064257276'),
(187, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 500, 'R16355020181443054961', 'Wallet Payment', '2021-10-29 10:07:03', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16355020181443054961\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, '08033909005'),
(188, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16355117381122804077', 'Wallet Payment', '2021-10-29 12:49:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355117381122804077\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(189, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16355219401700276412', 'Wallet Payment', '2021-10-29 15:39:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355219401700276412\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '08035306324'),
(190, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R16355224981790319597', 'Wallet Payment', '2021-10-29 15:48:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355224981790319597\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, '07039643131'),
(191, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R163552252710213828', 'Wallet Payment', '2021-10-29 15:48:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163552252710213828\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, '08035306324'),
(192, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 2gb', 520, 'R16355257531657713211', 'Wallet Payment', '2021-10-29 16:42:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355257531657713211\",\"debitAmount\":520,\"discountAmount\":10.4}', '10.4', NULL, '08037680906'),
(193, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1635527742488288197', 'Wallet Payment', '2021-10-29 17:15:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635527742488288197\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(194, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 200, 'R16355297221839529756', 'Wallet Payment', '2021-10-29 17:48:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355297221839529756\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09151834791'),
(195, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 200, 'R1635530022494877499', 'Wallet Payment', '2021-10-29 17:53:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635530022494877499\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09151834791'),
(196, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 200, 'R1635530048235227157', 'Wallet Payment', '2021-10-29 17:54:08', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1635530048235227157\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09151834791'),
(197, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 200, 'R1635530063507954914', 'Wallet Payment', '2021-10-29 17:54:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635530063507954914\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09151834791'),
(198, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16355385091570080027', 'Wallet Payment', '2021-10-29 20:15:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355385091570080027\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(199, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16355405761906880702', 'Wallet Payment', '2021-10-29 20:49:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355405761906880702\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(200, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN N200 200MB - 2 days', 200, 'R16355423431108551675', 'Wallet Payment', '2021-10-29 21:19:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16355423431108551675\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07060751831'),
(201, 'ab89b6b12992c5bba69fa20dad9861b4', 'MTN 1gb', 260, 'R163559778883277183', 'Wallet Payment', '2021-10-30 12:43:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163559778883277183\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '07043707060'),
(202, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1635599535905624599', 'Wallet Payment', '2021-10-30 13:12:34', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1635599535905624599\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(203, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1635617021749148621', 'Wallet Payment', '2021-10-30 18:03:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635617021749148621\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07064628688'),
(204, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R16356252121718662414', 'Wallet Payment', '2021-10-30 20:20:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16356252121718662414\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '07061910207'),
(205, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R16356257501863735790', 'Wallet Payment', '2021-10-30 20:29:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16356257501863735790\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '09061554868'),
(206, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 260, 'R16356258141915166678', 'Wallet Payment', '2021-10-30 20:30:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16356258141915166678\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '08104236429'),
(207, '257383cce19778b4562b5f5c119f5233', 'GLO Airtime', 200, 'R1635627937330313008', 'Wallet Payment', '2021-10-30 21:05:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635627937330313008\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09059204868'),
(208, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 250, 'R163569397272707586', 'Wallet Payment', '2021-10-31 15:26:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163569397272707586\",\"debitAmount\":250,\"discountAmount\":5}', '5', NULL, '09039052693'),
(209, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16357099211717440961', 'Wallet Payment', '2021-10-31 19:52:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16357099211717440961\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(210, '7402890e1e13e6d14cc5b1a6530a4a6c', '9mobile 4.5GB - 2000 Naira - 30 Days', 2000, 'R16357107151342517175', 'Wallet Payment', '2021-10-31 20:05:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16357107151342517175\",\"debitAmount\":2000,\"discountAmount\":40}', '40', NULL, '08096988638'),
(211, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 260, 'R16357172631882951976', 'Wallet Payment', '2021-10-31 21:54:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16357172631882951976\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '08035306324'),
(212, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 260, 'R1635718908642291296', 'Wallet Payment', '2021-10-31 22:21:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635718908642291296\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '07036403982'),
(213, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 260, 'R16357496701377748952', 'Wallet Payment', '2021-11-01 06:54:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16357496701377748952\",\"debitAmount\":260,\"discountAmount\":5.2}', '5.2', NULL, '08068617707'),
(214, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1635783959589719625', 'Wallet Payment', '2021-11-01 16:26:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635783959589719625\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07064426569'),
(215, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 250, 'R163583891240881331', 'Wallet Payment', '2021-11-02 07:41:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163583891240881331\",\"debitAmount\":250,\"discountAmount\":0}', '0', NULL, '08035306324'),
(216, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1635839817414315643', 'Wallet Payment', '2021-11-02 07:56:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635839817414315643\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(217, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 250, 'R1635843707275494401', 'Wallet Payment', '2021-11-02 09:01:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635843707275494401\",\"debitAmount\":250,\"discountAmount\":0}', '0', NULL, '09063873340'),
(218, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1635859863374086663', 'Wallet Payment', '2021-11-02 13:31:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635859863374086663\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(219, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1635873806897175556', 'Wallet Payment', '2021-11-02 17:23:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635873806897175556\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09066096556'),
(220, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 100, 'R1635882662525742394', 'Wallet Payment', '2021-11-02 19:51:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635882662525742394\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09151834791'),
(221, '38b3acd691201db112358dfbd1554aac', 'IKEDC', 1000, 'R16358827922093665062', 'Wallet Payment', '2021-11-02 20:37:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16358827922093665062\",\"debitAmount\":1000,\"discountAmount\":5,\"token\":\"Token : 29585668624468542243\"}', '5', 'Token : 29585668624468542243', NULL),
(222, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16358915841900875890', 'Wallet Payment', '2021-11-02 22:19:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16358915841900875890\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08036014815'),
(223, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1635949043567875127', 'Wallet Payment', '2021-11-03 14:17:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635949043567875127\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(224, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 230, 'R163595575320257079', 'Wallet Payment', '2021-11-03 16:09:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163595575320257079\",\"debitAmount\":230,\"discountAmount\":4.6000000000000005}', '4.6', NULL, '09039052693'),
(225, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635955754826390656', 'Wallet Payment', '2021-11-03 16:09:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635955754826390656\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141384209'),
(226, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635955870665505600', 'Wallet Payment', '2021-11-03 16:11:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635955870665505600\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(227, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635956116743358206', 'Wallet Payment', '2021-11-03 16:15:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635956116743358206\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09035234128'),
(228, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1635956937970245154', 'Wallet Payment', '2021-11-03 16:28:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635956937970245154\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141228197'),
(229, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16359579461241043147', 'Wallet Payment', '2021-11-03 16:45:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16359579461241043147\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(230, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1635966411352671277', 'Wallet Payment', '2021-11-03 19:06:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635966411352671277\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08148706934'),
(231, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1635966592859414095', 'Wallet Payment', '2021-11-03 19:09:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635966592859414095\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(232, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1635966676902748898', 'Wallet Payment', '2021-11-03 19:11:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1635966676902748898\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(233, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1636021469605326450', 'Wallet Payment', '2021-11-04 10:24:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636021469605326450\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08106074174'),
(234, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 250, 'R1636026475691657347', 'Wallet Payment', '2021-11-04 11:47:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636026475691657347\",\"debitAmount\":250,\"discountAmount\":5}', '5', NULL, '09039052693'),
(235, '7402890e1e13e6d14cc5b1a6530a4a6c', 'AIRTEL Airtime', 500, 'R16360311781052270838', 'Wallet Payment', '2021-11-04 13:06:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16360311781052270838\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, '08126479510'),
(236, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1636035199473852868', 'Wallet Payment', '2021-11-04 14:13:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636035199473852868\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(237, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16360358252012528309', 'Wallet Payment', '2021-11-04 14:23:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16360358252012528309\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(238, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16360947622050587583', 'Wallet Payment', '2021-11-05 06:46:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16360947622050587583\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09033854028'),
(239, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636105164999487501', 'Wallet Payment', '2021-11-05 09:39:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636105164999487501\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(240, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1636111816527133705', 'Wallet Payment', '2021-11-05 11:30:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636111816527133705\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09130655523'),
(241, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636127841733269534', 'Wallet Payment', '2021-11-05 15:57:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636127841733269534\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(242, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1636138901793210788', 'Wallet Payment', '2021-11-05 19:01:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636138901793210788\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(243, '38b3acd691201db112358dfbd1554aac', 'IKEDC', 500, 'R16361391391088224749', 'Wallet Payment', '2021-11-05 19:06:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361391391088224749\",\"debitAmount\":500,\"discountAmount\":2.5,\"token\":\"\"}', '2.5', '', NULL),
(244, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16361418281924031539', 'Wallet Payment', '2021-11-05 19:50:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361418281924031539\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09066023104'),
(245, '38b3acd691201db112358dfbd1554aac', 'IKEDC', 500, 'R1636144820265134575', 'Wallet Payment', '2021-11-05 20:40:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636144820265134575\",\"debitAmount\":500,\"discountAmount\":2.5,\"token\":\"Token : 43351303539238411053\"}', '2.5', 'Token : 43351303539238411053', NULL),
(246, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636147111999691751', 'Wallet Payment', '2021-11-05 21:18:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636147111999691751\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(247, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636186373637302604', 'Wallet Payment', '2021-11-06 08:12:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636186373637302604\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(248, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16361982031630853605', 'Wallet Payment', '2021-11-06 11:30:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361982031630853605\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(249, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16361982191921508178', 'Wallet Payment', '2021-11-06 11:30:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361982191921508178\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(250, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16361982221077646519', 'Wallet Payment', '2021-11-06 11:30:23', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16361982221077646519\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(251, '', 'MTN Airtime', 200, 'R16361984281015576929', 'Wallet Payment', '2021-11-06 11:33:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361984281015576929\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(252, '', 'MTN Airtime', 200, 'R16361992211151702887', 'Wallet Payment', '2021-11-06 11:47:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16361992211151702887\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(253, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1636205905620997575', 'Wallet Payment', '2021-11-06 13:38:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636205905620997575\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(254, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16362076631789225944', 'Wallet Payment', '2021-11-06 14:07:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16362076631789225944\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(255, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 5gb', 1275, 'R16362332832093630964', 'Wallet Payment', '2021-11-06 21:14:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16362332832093630964\",\"debitAmount\":1275,\"discountAmount\":5}', '5', NULL, '08035306324'),
(256, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 5gb', 1275, 'R163623372229907642', 'Wallet Payment', '2021-11-06 21:22:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163623372229907642\",\"debitAmount\":1275,\"discountAmount\":5}', '5', NULL, '08035306324'),
(257, 'b4e45b037d13dbce472696fc64873397', 'MTN Airtime', 100, 'R163623959942783636', 'Wallet Payment', '2021-11-06 23:00:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163623959942783636\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08038243624'),
(258, 'b4e45b037d13dbce472696fc64873397', 'MTN N200 200MB - 2 days', 200, 'R1636240724532937316', 'Wallet Payment', '2021-11-06 23:18:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636240724532937316\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07066875610'),
(259, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 120, 'R16362692481456603586', 'Wallet Payment', '2021-11-07 07:14:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16362692481456603586\",\"debitAmount\":120,\"discountAmount\":2.4}', '2.4', NULL, '09039052693'),
(260, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 255, 'R16362980401241776890', 'Wallet Payment', '2021-11-07 15:14:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16362980401241776890\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08068617707'),
(261, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16362982941485401891', 'Wallet Payment', '2021-11-07 15:18:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16362982941485401891\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(262, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1636298458322673626', 'Wallet Payment', '2021-11-07 15:21:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636298458322673626\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(263, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16363102191734904226', 'Wallet Payment', '2021-11-07 18:37:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16363102191734904226\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(264, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R16363142852046605280', 'Wallet Payment', '2021-11-07 19:44:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16363142852046605280\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(265, '38b3acd691201db112358dfbd1554aac', 'MTN 1gb', 255, 'R16363232892053903975', 'Wallet Payment', '2021-11-07 22:14:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16363232892053903975\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07035830835'),
(266, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1636386380943648762', 'Wallet Payment', '2021-11-08 15:46:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636386380943648762\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(267, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16363908481168949991', 'Wallet Payment', '2021-11-08 17:00:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16363908481168949991\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07026040733'),
(268, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R1636396222733688778', 'Wallet Payment', '2021-11-08 18:30:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636396222733688778\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07037244403'),
(269, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16363973661226180340', 'Wallet Payment', '2021-11-08 18:49:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16363973661226180340\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(270, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16364129311278694028', 'Wallet Payment', '2021-11-08 23:08:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16364129311278694028\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(271, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1636413740247314123', 'Wallet Payment', '2021-11-08 23:22:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636413740247314123\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(272, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16364438321828485441', 'Wallet Payment', '2021-11-09 07:43:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16364438321828485441\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07038687179'),
(273, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16364649881061885961', 'Wallet Payment', '2021-11-09 13:36:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16364649881061885961\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(274, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16364686491774589539', 'Wallet Payment', '2021-11-09 14:37:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16364686491774589539\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(275, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16365309201567852794', 'Wallet Payment', '2021-11-10 07:55:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16365309201567852794\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(276, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1636541170149791460', 'Wallet Payment', '2021-11-10 10:46:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636541170149791460\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07026040733'),
(277, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1636545752585691729', 'Wallet Payment', '2021-11-10 12:02:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636545752585691729\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(278, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1636561078357967375', 'Wallet Payment', '2021-11-10 16:18:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636561078357967375\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(279, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1636561160646357505', 'Wallet Payment', '2021-11-10 16:19:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636561160646357505\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '08087079160'),
(280, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1636561223963591782', 'Wallet Payment', '2021-11-10 16:20:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636561223963591782\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141384209'),
(281, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16365664111707556537', 'Wallet Payment', '2021-11-10 17:46:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16365664111707556537\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(282, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16365728382049667770', 'Wallet Payment', '2021-11-10 19:34:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16365728382049667770\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(283, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16365736311947408585', 'Wallet Payment', '2021-11-10 19:47:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16365736311947408585\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(284, '38b3acd691201db112358dfbd1554aac', 'IKEDC', 1000, 'R16366090481076443078', 'Wallet Payment', '2021-11-11 05:37:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16366090481076443078\",\"debitAmount\":1000,\"discountAmount\":5,\"token\":\"Token : 64847849105885779547\"}', '5', 'Token : 64847849105885779547', NULL),
(285, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1636625066478648858', 'Wallet Payment', '2021-11-11 10:04:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636625066478648858\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(286, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1636627305528342542', 'Wallet Payment', '2021-11-11 10:41:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636627305528342542\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(287, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R16366327701046232818', 'Wallet Payment', '2021-11-11 12:12:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16366327701046232818\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '07039643131'),
(288, 'fb0a79856a84e9c61aa65c141e2f74f2', 'MTN 2gb', 520, 'R1636674879276182790', 'Wallet Payment', '2021-11-11 23:54:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636674879276182790\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08067472318'),
(289, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1636711334624121269', 'Wallet Payment', '2021-11-12 10:02:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636711334624121269\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08142147083'),
(290, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1636726504634062895', 'Wallet Payment', '2021-11-12 14:15:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636726504634062895\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(291, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16367454401287576480', 'Wallet Payment', '2021-11-12 19:30:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16367454401287576480\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(292, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R16367836441422386732', 'Wallet Payment', '2021-11-13 06:07:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16367836441422386732\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(293, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 2gb', 520, 'R163680893581237523', 'Wallet Payment', '2021-11-13 13:08:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163680893581237523\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08037680906'),
(294, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 120, 'R16368090251972996100', 'Wallet Payment', '2021-11-13 13:10:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16368090251972996100\",\"debitAmount\":120,\"discountAmount\":2.4}', '2.4', NULL, '07039005992'),
(295, '38b3acd691201db112358dfbd1554aac', 'IKEDC', 1000, 'R1636825378260784951', 'Wallet Payment', '2021-11-13 17:43:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636825378260784951\",\"debitAmount\":1000,\"discountAmount\":5,\"token\":\"Token : 04018050779119231744\"}', '5', 'Token : 04018050779119231744', NULL),
(296, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16368318501731136738', 'Wallet Payment', '2021-11-13 19:30:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16368318501731136738\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08149640117'),
(297, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16368320751219259916', 'Wallet Payment', '2021-11-13 19:34:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16368320751219259916\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08149640117'),
(298, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636838986235243806', 'Wallet Payment', '2021-11-13 21:29:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636838986235243806\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08164755948'),
(299, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16368695641340493152', 'Wallet Payment', '2021-11-14 05:59:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16368695641340493152\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(300, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 300, 'R1636891485325221059', 'Wallet Payment', '2021-11-14 12:04:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636891485325221059\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09039052693'),
(301, '', 'MTN Airtime', 100, 'R163689228779791324', 'Wallet Payment', '2021-11-14 12:18:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163689228779791324\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(302, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R163690507022849686', 'Wallet Payment', '2021-11-14 15:51:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163690507022849686\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(303, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1636908512974052408', 'Wallet Payment', '2021-11-14 16:48:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636908512974052408\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(304, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1636908586586510134', 'Wallet Payment', '2021-11-14 16:49:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636908586586510134\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09063873340'),
(305, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16369167951110038720', 'Wallet Payment', '2021-11-14 19:06:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16369167951110038720\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08164755948'),
(306, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1636962279710941259', 'Wallet Payment', '2021-11-15 07:44:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636962279710941259\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(307, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636967243962494537', 'Wallet Payment', '2021-11-15 09:07:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636967243962494537\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07038687179'),
(308, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16369735771805579631', 'Wallet Payment', '2021-11-15 10:53:04', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16369735771805579631\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(309, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636974086127279793', 'Wallet Payment', '2021-11-15 11:01:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636974086127279793\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08135178197'),
(310, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 150, 'R16369761821118939172', 'Wallet Payment', '2021-11-15 11:36:30', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16369761821118939172\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '07039005992'),
(311, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1636976735137246470', 'Wallet Payment', '2021-11-15 11:45:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636976735137246470\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(312, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16369771391695478854', 'Wallet Payment', '2021-11-15 11:52:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16369771391695478854\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(313, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1636994642221574342', 'Wallet Payment', '2021-11-15 16:44:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1636994642221574342\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08106074174'),
(314, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16370019241101897568', 'Wallet Payment', '2021-11-15 18:45:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16370019241101897568\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09036789747'),
(315, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16370548151973380560', 'Wallet Payment', '2021-11-16 09:26:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16370548151973380560\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08106074174'),
(316, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1637059387716158604', 'Wallet Payment', '2021-11-16 10:43:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637059387716158604\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08146328645'),
(317, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16370782271668271118', 'Wallet Payment', '2021-11-16 15:57:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16370782271668271118\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(318, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 100, 'R16370863012066488222', 'Wallet Payment', '2021-11-16 18:11:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16370863012066488222\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07037431753'),
(319, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1637086636411085096', 'Wallet Payment', '2021-11-16 18:17:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637086636411085096\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09061918815'),
(320, 'fb0a79856a84e9c61aa65c141e2f74f2', 'AIRTEL Airtime', 100, 'R1637086954434857706', 'Wallet Payment', '2021-11-16 18:22:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637086954434857706\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09046423233'),
(321, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 100, 'R16370877751263542398', 'Wallet Payment', '2021-11-16 18:36:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16370877751263542398\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07037431753'),
(322, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16371573041167514396', 'Wallet Payment', '2021-11-17 13:55:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16371573041167514396\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(323, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16371573621073472993', 'Wallet Payment', '2021-11-17 13:56:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16371573621073472993\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(324, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16371574091373947770', 'Wallet Payment', '2021-11-17 13:56:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16371574091373947770\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141384209'),
(325, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16371587241947244905', 'Wallet Payment', '2021-11-17 14:18:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16371587241947244905\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09061123233'),
(326, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1637162812331535344', 'Wallet Payment', '2021-11-17 15:26:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637162812331535344\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '08087079160'),
(327, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1637163043578032782', 'Wallet Payment', '2021-11-17 15:30:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637163043578032782\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(328, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1637163545992401095', 'Wallet Payment', '2021-11-17 15:39:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637163545992401095\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09018962291'),
(329, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R163716373994615678', 'Wallet Payment', '2021-11-17 15:42:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163716373994615678\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(330, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16371692822017903746', 'Wallet Payment', '2021-11-17 17:14:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16371692822017903746\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(331, 'fb0a79856a84e9c61aa65c141e2f74f2', 'MTN 2gb', 520, 'R1637182944219126156', 'Wallet Payment', '2021-11-17 21:02:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637182944219126156\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08067472318'),
(332, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16372115581657917808', 'Wallet Payment', '2021-11-18 04:59:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16372115581657917808\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08143285443'),
(333, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16372168031855645732', 'Wallet Payment', '2021-11-18 06:26:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16372168031855645732\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(334, '0dc345d62afafaad3e5fec8a4e532502', 'MTN 2gb', 520, 'R1637227110827206189', 'Wallet Payment', '2021-11-18 09:18:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637227110827206189\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '07036710638'),
(335, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1637267040606875765', 'Wallet Payment', '2021-11-18 20:24:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637267040606875765\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(336, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1637337538111422144', 'Wallet Payment', '2021-11-19 15:59:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637337538111422144\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(337, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R16373467981688465410', 'Wallet Payment', '2021-11-19 18:33:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16373467981688465410\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08135178197'),
(338, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R1637354698538819234', 'Wallet Payment', '2021-11-19 20:45:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637354698538819234\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '07039643131');
INSERT INTO `bill_payment` (`id`, `username`, `product`, `amount`, `transactionid`, `paymentmethod`, `timestamp`, `status`, `server_response`, `discountamount`, `token`, `number`) VALUES
(339, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16373551961467082746', 'Wallet Payment', '2021-11-19 20:53:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16373551961467082746\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09061123233'),
(340, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1637356810758078410', 'Wallet Payment', '2021-11-19 21:20:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637356810758078410\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(341, 'fb0a79856a84e9c61aa65c141e2f74f2', 'AIRTEL Airtime', 178, 'R16373584261956483093', 'Wallet Payment', '2021-11-19 21:47:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16373584261956483093\",\"debitAmount\":178,\"discountAmount\":5.34}', '5.34', NULL, '09046423233'),
(342, '0dc345d62afafaad3e5fec8a4e532502', 'MTN Airtime', 200, 'R16374268661326332696', 'Wallet Payment', '2021-11-20 16:47:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374268661326332696\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07036710638'),
(343, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16374361461669645499', 'Wallet Payment', '2021-11-20 19:22:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374361461669645499\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(344, 'b6d8a7f84307f12d340b1557e7c658db', 'AIRTEL Airtime', 100, 'R16374611781227261882', 'Wallet Payment', '2021-11-21 02:19:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374611781227261882\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09043846060'),
(345, 'b6d8a7f84307f12d340b1557e7c658db', 'MTN Airtime', 4000, 'R16374614132071311659', 'Wallet Payment', '2021-11-21 02:23:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374614132071311659\",\"debitAmount\":4000,\"discountAmount\":80}', '80', NULL, '08133822791'),
(346, 'b6d8a7f84307f12d340b1557e7c658db', 'MTN Airtime', 100, 'R1637462189229396971', 'Wallet Payment', '2021-11-21 02:36:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637462189229396971\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08133822791'),
(347, 'b6d8a7f84307f12d340b1557e7c658db', 'AIRTEL Airtime', 1000, 'R16374623571725906721', 'Wallet Payment', '2021-11-21 02:39:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374623571725906721\",\"debitAmount\":1000,\"discountAmount\":30}', '30', NULL, '09043846060'),
(348, 'b6d8a7f84307f12d340b1557e7c658db', 'MTN Airtime', 1000, 'R16374626492077493128', 'Wallet Payment', '2021-11-21 02:44:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374626492077493128\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '08133822791'),
(349, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16374800031803217943', 'Wallet Payment', '2021-11-21 07:33:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16374800031803217943\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(350, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1637496276755006870', 'Wallet Payment', '2021-11-21 12:04:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637496276755006870\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(351, '0dc345d62afafaad3e5fec8a4e532502', 'GLO Airtime', 210, 'R16375023361412091607', 'Wallet Payment', '2021-11-21 13:45:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375023361412091607\",\"debitAmount\":210,\"discountAmount\":6.3}', '6.3', NULL, '09151834791'),
(352, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16375047371644457036', 'Wallet Payment', '2021-11-21 14:25:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375047371644457036\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(353, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1637506672210302165', 'Wallet Payment', '2021-11-21 14:57:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637506672210302165\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(354, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16375068231931868344', 'Wallet Payment', '2021-11-21 15:00:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375068231931868344\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08065782061'),
(355, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16375199221103473721', 'Wallet Payment', '2021-11-21 18:38:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375199221103473721\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(356, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16375214601766817224', 'Wallet Payment', '2021-11-21 19:04:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375214601766817224\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(357, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1637522912195507582', 'Wallet Payment', '2021-11-21 19:28:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637522912195507582\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(358, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16375230191040651388', 'Wallet Payment', '2021-11-21 19:30:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375230191040651388\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(359, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 150, 'R163759510839420117', 'Wallet Payment', '2021-11-22 15:31:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163759510839420117\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '08146328645'),
(360, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1637595269709822229', 'Wallet Payment', '2021-11-22 15:34:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637595269709822229\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08137784216'),
(361, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1637598465566891716', 'Wallet Payment', '2021-11-22 16:27:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637598465566891716\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(362, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16375991951172459204', 'Wallet Payment', '2021-11-22 16:39:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16375991951172459204\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(363, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16376001751364675274', 'Wallet Payment', '2021-11-22 16:56:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16376001751364675274\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08166105512'),
(364, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1637609373776496459', 'Wallet Payment', '2021-11-22 19:29:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637609373776496459\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(365, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16376591001013586837', 'Wallet Payment', '2021-11-23 09:18:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16376591001013586837\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(366, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16376668521150708001', 'Wallet Payment', '2021-11-23 11:27:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16376668521150708001\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08135178197'),
(367, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1637669702614908124', 'Wallet Payment', '2021-11-23 12:15:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637669702614908124\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08037680906'),
(368, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1637701853839109906', 'Wallet Payment', '2021-11-23 21:11:00', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637701853839109906\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(369, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16377402461838529585', 'Wallet Payment', '2021-11-24 07:50:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377402461838529585\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07062927567'),
(370, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16377575441188012107', 'Wallet Payment', '2021-11-24 12:39:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377575441188012107\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08104340614'),
(371, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16377804781557091107', 'Wallet Payment', '2021-11-24 19:01:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377804781557091107\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(372, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16377805291791277619', 'Wallet Payment', '2021-11-24 19:02:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377805291791277619\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141384209'),
(373, '0e01011b9f27f8b0b425be9cd9e2bbba', 'MTN Airtime', 100, 'R16377814871774797812', 'Wallet Payment', '2021-11-24 19:18:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377814871774797812\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(374, '0e01011b9f27f8b0b425be9cd9e2bbba', 'MTN Airtime', 300, 'R1637782411887629566', 'Wallet Payment', '2021-11-24 19:33:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637782411887629566\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(375, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R1637783768614183599', 'Wallet Payment', '2021-11-24 19:56:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637783768614183599\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08121664487'),
(376, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R16377873741036937877', 'Wallet Payment', '2021-11-24 20:56:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16377873741036937877\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '07026040733'),
(377, '0e01011b9f27f8b0b425be9cd9e2bbba', 'Airtel Data - 300 Naira - 350MB - 7 Days', 299, 'R1637829125597260330', 'Wallet Payment', '2021-11-25 08:32:08', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637829125597260330\",\"debitAmount\":299,\"discountAmount\":5.960400000000018}', '5.9604', NULL, '09028267290'),
(378, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16378320682043073447', 'Wallet Payment', '2021-11-25 09:21:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16378320682043073447\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(379, '0e01011b9f27f8b0b425be9cd9e2bbba', 'MTN Airtime', 300, 'R16378500571448379477', 'Wallet Payment', '2021-11-25 14:20:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16378500571448379477\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(380, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1637851727905642467', 'Wallet Payment', '2021-11-25 14:48:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637851727905642467\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(381, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16378622051705050686', 'Wallet Payment', '2021-11-25 17:43:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16378622051705050686\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08160887803'),
(382, '0e01011b9f27f8b0b425be9cd9e2bbba', 'MTN Airtime', 500, 'R16378655092097279234', 'Wallet Payment', '2021-11-25 18:38:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16378655092097279234\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '09137767955'),
(383, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16379204321015794892', 'Wallet Payment', '2021-11-26 09:53:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16379204321015794892\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(384, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1637938698852460260', 'Wallet Payment', '2021-11-26 14:58:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637938698852460260\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(385, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1637947667376131634', 'Wallet Payment', '2021-11-26 17:27:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637947667376131634\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08024908329'),
(386, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1637948291308939518', 'Wallet Payment', '2021-11-26 17:38:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1637948291308939518\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07038523280'),
(387, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16380273721088129433', 'Wallet Payment', '2021-11-27 15:36:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16380273721088129433\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(388, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1638038382528065808', 'Wallet Payment', '2021-11-27 18:39:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638038382528065808\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(389, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1638052998332955731', 'Wallet Payment', '2021-11-27 22:43:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638052998332955731\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08135178197'),
(390, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1638087948202989818', 'Wallet Payment', '2021-11-28 08:25:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638087948202989818\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(391, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16380885111809936726', 'Wallet Payment', '2021-11-28 08:35:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16380885111809936726\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(392, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16381001051443537967', 'Wallet Payment', '2021-11-28 11:48:26', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16381001051443537967\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(393, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16381226291329557683', 'Wallet Payment', '2021-11-28 18:04:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16381226291329557683\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08164755948'),
(394, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 120, 'R16381236091695690001', 'Wallet Payment', '2021-11-28 18:20:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16381236091695690001\",\"debitAmount\":120,\"discountAmount\":2.4}', '2.4', NULL, '09039052693'),
(395, 'f6c2455a8542311d3331548a6312d1f8', 'GLO Airtime', 200, 'R1638188321790137105', 'Wallet Payment', '2021-11-29 12:18:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638188321790137105\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '07054829077'),
(396, 'f6c2455a8542311d3331548a6312d1f8', 'Glo Data N200 -  350MB - 2 days', 200, 'R1638188752736480864', 'Wallet Payment', '2021-11-29 12:25:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638188752736480864\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07054829077'),
(397, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16381989361920528004', 'Wallet Payment', '2021-11-29 15:15:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16381989361920528004\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(398, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 100, 'R16382015591522154882', 'Wallet Payment', '2021-11-29 15:59:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16382015591522154882\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '07010549472'),
(399, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 520, 'R1638204595438124986', 'Wallet Payment', '2021-11-29 16:49:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638204595438124986\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08135178197'),
(400, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 5gb', 1300, 'R16382212121372866733', 'Wallet Payment', '2021-11-29 21:26:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16382212121372866733\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '08037680906'),
(401, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1638221251269179695', 'Wallet Payment', '2021-11-29 21:27:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638221251269179695\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(402, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1638265739660404139', 'Wallet Payment', '2021-11-30 09:49:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638265739660404139\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(403, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R163827787122827149', 'Wallet Payment', '2021-11-30 13:11:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163827787122827149\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08034686795'),
(404, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16382864851299837621', 'Wallet Payment', '2021-11-30 15:34:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16382864851299837621\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(405, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 3000, 'R1638293301243733943', 'Wallet Payment', '2021-11-30 17:28:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638293301243733943\",\"debitAmount\":3000,\"discountAmount\":60}', '60', NULL, '08035306324'),
(406, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 3000, 'R16382933171464023406', 'Wallet Payment', '2021-11-30 17:28:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16382933171464023406\",\"debitAmount\":3000,\"discountAmount\":60}', '60', NULL, '08035306324'),
(407, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 1000, 'R16382934921087292365', 'Wallet Payment', '2021-11-30 17:31:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16382934921087292365\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '08035306324'),
(408, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 520, 'R1638296451565136522', 'Wallet Payment', '2021-11-30 18:20:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638296451565136522\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '07039643131'),
(409, 'f6c2455a8542311d3331548a6312d1f8', 'Glo Data N500 -  1.35GB - 14 days', 500, 'R16383031182089329103', 'Wallet Payment', '2021-11-30 20:11:59', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16383031182089329103\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '07054829077'),
(410, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R163830575197939196', 'Wallet Payment', '2021-11-30 20:55:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163830575197939196\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(411, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1638379511946202701', 'Wallet Payment', '2021-12-01 17:25:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638379511946202701\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(412, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 1000, 'R16383925331622707106', 'Wallet Payment', '2021-12-01 21:02:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16383925331622707106\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '07037431753'),
(413, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16384532361494418202', 'Wallet Payment', '2021-12-02 13:53:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16384532361494418202\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(414, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1638454560942185651', 'Wallet Payment', '2021-12-02 14:16:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638454560942185651\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(415, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16384546251981224459', 'Wallet Payment', '2021-12-02 14:17:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16384546251981224459\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08141384209'),
(416, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1638454876808502599', 'Wallet Payment', '2021-12-02 14:21:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638454876808502599\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08035306324'),
(417, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16384690501912945109', 'Wallet Payment', '2021-12-02 18:17:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16384690501912945109\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(418, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1638506967823806266', 'Wallet Payment', '2021-12-03 04:49:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638506967823806266\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08131843133'),
(419, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 255, 'R163851546749083640', 'Wallet Payment', '2021-12-03 07:11:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163851546749083640\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09060003027'),
(420, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16385199951172565544', 'Wallet Payment', '2021-12-03 08:26:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16385199951172565544\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08106074174'),
(421, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1638520160165576822', 'Wallet Payment', '2021-12-03 08:29:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638520160165576822\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08164755948'),
(422, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1638520360382652906', 'Wallet Payment', '2021-12-03 08:32:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638520360382652906\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08106074174'),
(423, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16385477041560881898', 'Wallet Payment', '2021-12-03 16:08:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16385477041560881898\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08166105512'),
(424, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16385477812134794189', 'Wallet Payment', '2021-12-03 16:09:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16385477812134794189\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08135178197'),
(425, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 150, 'R1638548198777609202', 'Wallet Payment', '2021-12-03 16:16:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638548198777609202\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '08062374829'),
(426, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16385546261040613381', 'Wallet Payment', '2021-12-03 18:03:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16385546261040613381\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(427, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'Glo Data N500 -  1.35GB - 14 days', 500, 'R16385595001999492835', 'Wallet Payment', '2021-12-03 19:25:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16385595001999492835\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '08157411915'),
(428, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1638562122826186546', 'Wallet Payment', '2021-12-03 20:08:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638562122826186546\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(429, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16385627101395970231', 'Wallet Payment', '2021-12-03 20:18:31', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16385627101395970231\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(430, '38b3acd691201db112358dfbd1554aac', 'MTN 1gb', 255, 'R16386454081359772970', 'Wallet Payment', '2021-12-04 19:16:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16386454081359772970\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07037431753'),
(431, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1638650434959743062', 'Wallet Payment', '2021-12-04 20:40:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638650434959743062\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08135178197'),
(432, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 600, 'R1638707236355403279', 'Wallet Payment', '2021-12-05 12:27:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638707236355403279\",\"debitAmount\":600,\"discountAmount\":12}', '12', NULL, '07037431753'),
(433, '257383cce19778b4562b5f5c119f5233', 'MTN 5gb', 1300, 'R1638707484572677910', 'Wallet Payment', '2021-12-05 12:31:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638707484572677910\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '08037106857'),
(434, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16387076701222241495', 'Wallet Payment', '2021-12-05 12:34:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16387076701222241495\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08146328645'),
(435, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R16387079761219269118', 'Wallet Payment', '2021-12-05 12:39:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16387079761219269118\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08066215840'),
(436, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 150, 'R16387169661638072264', 'Wallet Payment', '2021-12-05 15:09:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16387169661638072264\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '07040237649'),
(437, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16388172912054624135', 'Wallet Payment', '2021-12-06 19:01:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16388172912054624135\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(438, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16388296241387975562', 'Wallet Payment', '2021-12-06 22:27:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16388296241387975562\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08135178197'),
(439, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 120, 'R1638830235299800186', 'Wallet Payment', '2021-12-06 22:37:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638830235299800186\",\"debitAmount\":120,\"discountAmount\":2.4}', '2.4', NULL, '09039052693'),
(440, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 200, 'R16388707831108841496', 'Wallet Payment', '2021-12-07 09:53:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16388707831108841496\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08062374829'),
(441, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1638897251831927382', 'Wallet Payment', '2021-12-07 17:14:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638897251831927382\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07069485920'),
(442, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 200, 'R16389062142044756615', 'Wallet Payment', '2021-12-07 19:43:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389062142044756615\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07037431753'),
(443, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16389089231562478461', 'Wallet Payment', '2021-12-07 20:28:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389089231562478461\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(444, 'a73242e57066f525d36cadd5e7701ce5', 'MTN 2gb', 520, 'R16389490871447258971', 'Wallet Payment', '2021-12-08 07:38:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389490871447258971\",\"debitAmount\":520,\"discountAmount\":15}', '15', NULL, '08034547657'),
(445, 'a73242e57066f525d36cadd5e7701ce5', 'MTN Airtime', 1000, 'R16389491661257018427', 'Wallet Payment', '2021-12-08 07:39:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389491661257018427\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '08034547657'),
(446, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16389621761801257629', 'Wallet Payment', '2021-12-08 11:16:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389621761801257629\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09066023104'),
(447, '12f2b2b0940c849166903a5f7ffbe26c', '9mobile Airtime', 100, 'R16389692911697927138', 'Wallet Payment', '2021-12-08 13:14:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389692911697927138\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09090025875'),
(448, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1638971242305902846', 'Wallet Payment', '2021-12-08 13:47:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638971242305902846\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(449, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1638972592344377229', 'Wallet Payment', '2021-12-08 14:09:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638972592344377229\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08145688605'),
(450, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16389752531023940865', 'Wallet Payment', '2021-12-08 14:54:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389752531023940865\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08035306324'),
(451, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1638975282703548508', 'Wallet Payment', '2021-12-08 14:54:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638975282703548508\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07064882951'),
(452, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1638978327813827394', 'Wallet Payment', '2021-12-08 15:45:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638978327813827394\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(453, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R16389783811068201999', 'Wallet Payment', '2021-12-08 15:46:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389783811068201999\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(454, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1638978698627904388', 'Wallet Payment', '2021-12-08 15:51:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1638978698627904388\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(455, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16389859622086946278', 'Wallet Payment', '2021-12-08 17:52:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389859622086946278\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09033854028'),
(456, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16389860161500981113', 'Wallet Payment', '2021-12-08 17:53:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16389860161500981113\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(457, '38b3acd691201db112358dfbd1554aac', 'MTN Airtime', 100, 'R16390494831048695686', 'Wallet Payment', '2021-12-09 11:31:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16390494831048695686\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07037431753'),
(458, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R16391190971946088657', 'Wallet Payment', '2021-12-10 06:51:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16391190971946088657\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(459, '257383cce19778b4562b5f5c119f5233', 'MTN 5gb', 1300, 'R1639146649112943930', 'Wallet Payment', '2021-12-10 14:30:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639146649112943930\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '08135178197'),
(460, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16391507751566671361', 'Wallet Payment', '2021-12-10 15:39:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16391507751566671361\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08036014815'),
(461, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1639151061218148771', 'Wallet Payment', '2021-12-10 15:44:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639151061218148771\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(462, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16391535951266277539', 'Wallet Payment', '2021-12-10 16:26:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16391535951266277539\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(463, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16392048311252201584', 'Wallet Payment', '2021-12-11 06:40:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16392048311252201584\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(464, '257383cce19778b4562b5f5c119f5233', 'MTN 5gb', 1300, 'R16392089531650263144', 'Wallet Payment', '2021-12-11 07:49:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16392089531650263144\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '08067871308'),
(465, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R163921231492372548', 'Wallet Payment', '2021-12-11 08:45:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R163921231492372548\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(466, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 255, 'R16392289712064981430', 'Wallet Payment', '2021-12-11 13:22:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16392289712064981430\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08068617707'),
(467, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16392560161443071613', 'Wallet Payment', '2021-12-11 20:53:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16392560161443071613\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(468, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 1000, 'R16393287112017822269', 'Wallet Payment', '2021-12-12 17:05:11', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16393287112017822269\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '08166939205'),
(469, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1639342022885607679', 'Wallet Payment', '2021-12-12 20:47:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639342022885607679\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(470, '30f117a3cce984e027d5607927d9e63b', 'MTN 5gb', 1300, 'R16393420881711156600', 'Wallet Payment', '2021-12-12 20:48:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16393420881711156600\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '07069485920'),
(471, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1639342314585279870', 'Wallet Payment', '2021-12-12 20:51:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639342314585279870\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08035306324'),
(472, 'a73242e57066f525d36cadd5e7701ce5', 'GOtv Jolli N2,460', 2460, 'R1639346226952618369', 'Wallet Payment', '2021-12-12 21:57:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639346226952618369\",\"debitAmount\":2460,\"discountAmount\":24.6}', '24.6', NULL, NULL),
(473, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R1639388380413577349', 'Wallet Payment', '2021-12-13 09:39:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639388380413577349\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(474, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 100, 'R16393908962128629367', 'Wallet Payment', '2021-12-13 10:21:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16393908962128629367\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09017099394'),
(475, 'a73242e57066f525d36cadd5e7701ce5', 'MTN Airtime', 900, 'R1639391524714738592', 'Wallet Payment', '2021-12-13 10:32:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639391524714738592\",\"debitAmount\":900,\"discountAmount\":18}', '18', NULL, '08034547657'),
(476, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1639399714577085735', 'Wallet Payment', '2021-12-13 12:48:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639399714577085735\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(477, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1639427832155474660', 'Wallet Payment', '2021-12-13 20:37:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639427832155474660\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07049992170'),
(478, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1639476098741402880', 'Wallet Payment', '2021-12-14 10:01:41', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639476098741402880\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(479, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16394802132141633944', 'Wallet Payment', '2021-12-14 11:10:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16394802132141633944\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(480, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 255, 'R1639490472912854366', 'Wallet Payment', '2021-12-14 14:01:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639490472912854366\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07063716037'),
(481, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 255, 'R1639490486936269239', 'Wallet Payment', '2021-12-14 14:01:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639490486936269239\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07063716037'),
(482, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 500, 'R1639493309724341373', 'Wallet Payment', '2021-12-14 14:48:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639493309724341373\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '08069794353'),
(483, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1639568908109687311', 'Wallet Payment', '2021-12-15 11:48:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639568908109687311\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(484, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1639587088835022166', 'Wallet Payment', '2021-12-15 16:51:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639587088835022166\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(485, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16395871571592889436', 'Wallet Payment', '2021-12-15 16:52:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16395871571592889436\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(486, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1639587251858764877', 'Wallet Payment', '2021-12-15 16:54:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639587251858764877\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(487, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16395876801617509830', 'Wallet Payment', '2021-12-15 17:01:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16395876801617509830\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08131843133'),
(488, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1639633200797052456', 'Wallet Payment', '2021-12-16 05:40:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639633200797052456\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '08080489980'),
(489, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16396340011115705102', 'Wallet Payment', '2021-12-16 05:53:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16396340011115705102\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08035506494'),
(490, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1639666678364960590', 'Wallet Payment', '2021-12-16 14:58:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639666678364960590\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(491, '7402890e1e13e6d14cc5b1a6530a4a6c', '9mobile 4.5GB - 2000 Naira - 30 Days', 2000, 'R1639669317744100914', 'Wallet Payment', '2021-12-16 15:41:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639669317744100914\",\"debitAmount\":2000,\"discountAmount\":40}', '40', NULL, '08096988638'),
(492, '12f2b2b0940c849166903a5f7ffbe26c', 'Airtel Data - 200 Naira - 200MB - 3Days', 199, 'R16396810131387270957', 'Wallet Payment', '2021-12-16 18:56:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16396810131387270957\",\"debitAmount\":199,\"discountAmount\":3.950599999999999}', '3.9506', NULL, '09071311883'),
(493, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1639729571525062906', 'Wallet Payment', '2021-12-17 08:26:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639729571525062906\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08106074174'),
(494, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 255, 'R16397699012037750150', 'Wallet Payment', '2021-12-17 19:38:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16397699012037750150\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08068617707'),
(495, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1639808664346479278', 'Wallet Payment', '2021-12-18 06:24:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1639808664346479278\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '07064628688'),
(496, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1640011297725271075', 'Wallet Payment', '2021-12-20 14:41:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640011297725271075\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(497, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16400297521104136689', 'Wallet Payment', '2021-12-20 19:49:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16400297521104136689\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08164755948'),
(498, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16400712881954566328', 'Wallet Payment', '2021-12-21 07:21:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16400712881954566328\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08106074174'),
(499, '30f117a3cce984e027d5607927d9e63b', 'MTN 5gb', 1300, 'R16400829831386651540', 'Wallet Payment', '2021-12-21 10:36:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16400829831386651540\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '07069485920'),
(500, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16401643841355550670', 'Wallet Payment', '2021-12-22 09:13:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16401643841355550670\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(501, '5a2f305f951e6bbd65f677a7e1db8b34', 'Airtel Data - 300 Naira - 350MB - 7 Days', 299, 'R1640165394734607178', 'Wallet Payment', '2021-12-22 09:29:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640165394734607178\",\"debitAmount\":299,\"discountAmount\":5.960400000000018}', '5.9604', NULL, '09017099394'),
(502, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R164019637039814034', 'Wallet Payment', '2021-12-22 18:06:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164019637039814034\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(503, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R16401965411766855983', 'Wallet Payment', '2021-12-22 18:09:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16401965411766855983\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(504, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16401966021409707940', 'Wallet Payment', '2021-12-22 18:10:04', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16401966021409707940\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955');
INSERT INTO `bill_payment` (`id`, `username`, `product`, `amount`, `transactionid`, `paymentmethod`, `timestamp`, `status`, `server_response`, `discountamount`, `token`, `number`) VALUES
(505, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 255, 'R16402583691409789443', 'Wallet Payment', '2021-12-23 11:19:31', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16402583691409789443\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07036403982'),
(506, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1640262928845480767', 'Wallet Payment', '2021-12-23 12:35:30', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1640262928845480767\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(507, '257383cce19778b4562b5f5c119f5233', 'MTN 5gb', 1300, 'R1640282987933968321', 'Wallet Payment', '2021-12-23 18:09:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640282987933968321\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '08037106857'),
(508, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1640290605676002982', 'Wallet Payment', '2021-12-23 20:16:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640290605676002982\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08035306324'),
(509, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 150, 'R1640302551438694705', 'Wallet Payment', '2021-12-23 23:35:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640302551438694705\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '09039052693'),
(510, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 150, 'R16403034771588290179', 'Wallet Payment', '2021-12-23 23:51:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403034771588290179\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '08146328645'),
(511, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16403238521570180652', 'Wallet Payment', '2021-12-24 05:30:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403238521570180652\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(512, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 255, 'R1640327920329732491', 'Wallet Payment', '2021-12-24 06:38:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640327920329732491\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08035306324'),
(513, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16403372272090111558', 'Wallet Payment', '2021-12-24 09:13:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403372272090111558\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(514, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16403413281715029968', 'Wallet Payment', '2021-12-24 10:22:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403413281715029968\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08069794353'),
(515, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R1640349796542362839', 'Wallet Payment', '2021-12-24 12:43:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640349796542362839\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(516, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 255, 'R16403583831236408222', 'Wallet Payment', '2021-12-24 15:06:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403583831236408222\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07065882951'),
(517, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 255, 'R16403586171863479352', 'Wallet Payment', '2021-12-24 15:10:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403586171863479352\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07064882951'),
(518, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 3600, 'R1640364618120071496', 'Wallet Payment', '2021-12-24 16:50:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640364618120071496\",\"debitAmount\":3600,\"discountAmount\":72}', '72', NULL, '08035306324'),
(519, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16403722181134866940', 'Wallet Payment', '2021-12-24 18:57:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403722181134866940\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(520, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R16403795741082597012', 'Wallet Payment', '2021-12-24 20:59:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16403795741082597012\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09066023104'),
(521, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16404136511494885822', 'Wallet Payment', '2021-12-25 06:27:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16404136511494885822\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(522, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 255, 'R16404445641205041971', 'Wallet Payment', '2021-12-25 15:02:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16404445641205041971\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07064882951'),
(523, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16405165642083104145', 'Wallet Payment', '2021-12-26 11:02:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16405165642083104145\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08166105512'),
(524, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 255, 'R16405167551336094887', 'Wallet Payment', '2021-12-26 11:05:58', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16405167551336094887\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08068617707'),
(525, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 255, 'R16405259781999781799', 'Wallet Payment', '2021-12-26 13:39:40', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16405259781999781799\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09063873340'),
(526, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16405428921168047157', 'Wallet Payment', '2021-12-26 18:21:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16405428921168047157\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(527, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN Airtime', 100, 'R1640548815134907339', 'Wallet Payment', '2021-12-26 20:00:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640548815134907339\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07064426569'),
(528, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R1640564979192997390', 'Wallet Payment', '2021-12-27 00:29:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640564979192997390\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09039052693'),
(529, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16405971751946474750', 'Wallet Payment', '2021-12-27 09:26:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16405971751946474750\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(530, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 255, 'R1640600883917581175', 'Wallet Payment', '2021-12-27 10:28:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640600883917581175\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08067871308'),
(531, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 255, 'R16406060791456253818', 'Wallet Payment', '2021-12-27 11:54:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16406060791456253818\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '07064882951'),
(532, '30f117a3cce984e027d5607927d9e63b', 'MTN 5gb', 1300, 'R16406076341262166114', 'Wallet Payment', '2021-12-27 12:20:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16406076341262166114\",\"debitAmount\":1300,\"discountAmount\":30}', '30', NULL, '07043786859'),
(533, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16406283231884318303', 'Wallet Payment', '2021-12-27 18:05:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16406283231884318303\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(534, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 500, 'R1640628492279903753', 'Wallet Payment', '2021-12-27 18:08:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640628492279903753\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '08163228491'),
(535, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 255, 'R1640631774126891116', 'Wallet Payment', '2021-12-27 19:02:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640631774126891116\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '09035877713'),
(536, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R1640716028671877878', 'Wallet Payment', '2021-12-28 18:27:10', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640716028671877878\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08146328645'),
(537, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16407803441169580638', 'Wallet Payment', '2021-12-29 12:19:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16407803441169580638\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(538, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16408022761577491223', 'Wallet Payment', '2021-12-29 18:24:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408022761577491223\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(539, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1640802279566796810', 'Wallet Payment', '2021-12-29 18:24:39', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1640802279566796810\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(540, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16408026001679519695', 'Wallet Payment', '2021-12-29 18:30:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408026001679519695\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(541, '12f2b2b0940c849166903a5f7ffbe26c', 'AIRTEL Airtime', 300, 'R1640802910642368965', 'Wallet Payment', '2021-12-29 18:35:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640802910642368965\",\"debitAmount\":300,\"discountAmount\":9}', '9', NULL, '09018962291'),
(542, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 255, 'R1640808574808055806', 'Wallet Payment', '2021-12-29 20:09:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640808574808055806\",\"debitAmount\":255,\"discountAmount\":5}', '5', NULL, '08138016968'),
(543, '5a2f305f951e6bbd65f677a7e1db8b34', 'Airtel Data - 200 Naira - 200MB - 3Days', 199, 'R1640809104160024833', 'Wallet Payment', '2021-12-29 20:18:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640809104160024833\",\"debitAmount\":199,\"discountAmount\":3.950599999999999}', '3.9506', NULL, '09017099394'),
(544, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 150, 'R164081430535720035', 'Wallet Payment', '2021-12-29 21:45:07', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164081430535720035\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '08146328645'),
(545, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1640826097212268691', 'Wallet Payment', '2021-12-30 01:01:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640826097212268691\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08143285443'),
(546, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16408356791214387810', 'Wallet Payment', '2021-12-30 03:41:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408356791214387810\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08035306324'),
(547, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R16408481382054833741', 'Wallet Payment', '2021-12-30 07:09:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408481382054833741\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '07063716037'),
(548, '30f117a3cce984e027d5607927d9e63b', 'MTN 5gb', 1225, 'R1640861058680175989', 'Wallet Payment', '2021-12-30 10:44:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640861058680175989\",\"debitAmount\":1225,\"discountAmount\":100}', '100', NULL, '07069485920'),
(549, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1640864653494768686', 'Wallet Payment', '2021-12-30 11:44:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640864653494768686\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08143285443'),
(550, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R16408840222123250769', 'Wallet Payment', '2021-12-30 17:07:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408840222123250769\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '09063873340'),
(551, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1640884438653836582', 'Wallet Payment', '2021-12-30 17:14:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640884438653836582\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08143724555'),
(552, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16408846831151999816', 'Wallet Payment', '2021-12-30 17:18:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408846831151999816\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039005992'),
(553, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1640889839616538543', 'Wallet Payment', '2021-12-30 18:44:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1640889839616538543\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(554, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16408943431026564951', 'Wallet Payment', '2021-12-30 19:59:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16408943431026564951\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(555, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 500, 'R16409686091366147275', 'Wallet Payment', '2021-12-31 16:36:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16409686091366147275\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '07068343230'),
(556, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R16410349801138958489', 'Wallet Payment', '2022-01-01 11:03:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16410349801138958489\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '09033854028'),
(557, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1641034990226965671', 'Wallet Payment', '2022-01-01 11:03:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641034990226965671\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '09033854028'),
(558, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 245, 'R16410608872038797785', 'Wallet Payment', '2022-01-01 18:14:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16410608872038797785\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '07036403982'),
(559, '30f117a3cce984e027d5607927d9e63b', '9mobile Airtime', 265, 'R164110629292894816', 'Wallet Payment', '2022-01-02 06:51:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164110629292894816\",\"debitAmount\":265,\"discountAmount\":7.949999999999999}', '7.95', NULL, '09090025875'),
(560, '3e43e0e9f8d3c742212f39569b25fdcc', 'GLO Airtime', 100, 'R1641118631974931415', 'Wallet Payment', '2022-01-02 10:17:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641118631974931415\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09153244718'),
(561, '3e43e0e9f8d3c742212f39569b25fdcc', 'GLO Airtime', 100, 'R1641120692352792798', 'Wallet Payment', '2022-01-02 10:51:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641120692352792798\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08116502571'),
(562, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1641124213572444226', 'Wallet Payment', '2022-01-02 11:50:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641124213572444226\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '09063873340'),
(563, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R16411245671878448546', 'Wallet Payment', '2022-01-02 11:56:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411245671878448546\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '09063873340'),
(564, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN N1,000 1.5GB  - 30 days', 1000, 'R1641124870168648599', 'Wallet Payment', '2022-01-02 12:01:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641124870168648599\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '08067238113'),
(565, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16411308901230842424', 'Wallet Payment', '2022-01-02 13:41:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411308901230842424\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08138016968'),
(566, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16411454691746817412', 'Wallet Payment', '2022-01-02 17:44:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411454691746817412\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(567, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16411566071105639263', 'Wallet Payment', '2022-01-02 20:50:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411566071105639263\",\"debitAmount\":245,\"discountAmount\":20}', '20', NULL, '08066340215'),
(568, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 100, 'R1641194682878416515', 'Wallet Payment', '2022-01-03 07:24:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641194682878416515\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08131373832'),
(569, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 100, 'R16411966801079029033', 'Wallet Payment', '2022-01-03 07:58:01', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411966801079029033\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039668318'),
(570, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16411977151855361474', 'Wallet Payment', '2022-01-03 08:15:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411977151855361474\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(571, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16411996181598361222', 'Wallet Payment', '2022-01-03 08:47:08', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16411996181598361222\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(572, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16412024592077814610', 'Wallet Payment', '2022-01-03 09:34:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412024592077814610\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07039668318'),
(573, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1641202492882721765', 'Wallet Payment', '2022-01-03 09:34:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641202492882721765\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08131373832'),
(574, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 150, 'R16412291621094310742', 'Wallet Payment', '2022-01-03 16:59:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412291621094310742\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '07034871678'),
(575, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 150, 'R16412291681123960914', 'Wallet Payment', '2022-01-03 16:59:33', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16412291681123960914\",\"debitAmount\":150,\"discountAmount\":3}', '3', NULL, '07034871678'),
(576, '69579f1e77e5cb50ca66065beda961d6', 'AIRTEL Airtime', 100, 'R16412294832023227233', 'Wallet Payment', '2022-01-03 17:04:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412294832023227233\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08029445787'),
(577, '69579f1e77e5cb50ca66065beda961d6', 'AIRTEL Airtime', 100, 'R16412294911690749988', 'Wallet Payment', '2022-01-03 17:04:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412294911690749988\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08029445787'),
(578, '69579f1e77e5cb50ca66065beda961d6', 'AIRTEL Airtime', 100, 'R16412347691777712952', 'Wallet Payment', '2022-01-03 18:32:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412347691777712952\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08026148667'),
(579, '69579f1e77e5cb50ca66065beda961d6', 'AIRTEL Airtime', 100, 'R16412355011125598419', 'Wallet Payment', '2022-01-03 18:45:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412355011125598419\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08026148667'),
(580, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 100, 'R16412457672098548919', 'Wallet Payment', '2022-01-03 21:36:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412457672098548919\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08134147488'),
(581, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R16412466791997222140', 'Wallet Payment', '2022-01-03 21:51:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16412466791997222140\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09153244718'),
(582, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1641286163467536781', 'Wallet Payment', '2022-01-04 08:49:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641286163467536781\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08037680906'),
(583, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16413088931113737358', 'Wallet Payment', '2022-01-04 15:08:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413088931113737358\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08138016968'),
(584, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1641308945852826408', 'Wallet Payment', '2022-01-04 15:09:09', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641308945852826408\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(585, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R1641326967247528482', 'Wallet Payment', '2022-01-04 20:09:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641326967247528482\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09153244718'),
(586, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R164132697262345148', 'Wallet Payment', '2022-01-04 20:09:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164132697262345148\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09153244718'),
(587, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 200, 'R1641330221414717823', 'Wallet Payment', '2022-01-04 21:03:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641330221414717823\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '07052140333'),
(588, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R16413303431169887812', 'Wallet Payment', '2022-01-04 21:05:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413303431169887812\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08111770297'),
(589, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R16413638161999851726', 'Wallet Payment', '2022-01-05 06:23:44', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413638161999851726\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07063716037'),
(590, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1641366618730313835', 'Wallet Payment', '2022-01-05 07:10:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641366618730313835\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08143724555'),
(591, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16413669531824780029', 'Wallet Payment', '2022-01-05 07:15:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413669531824780029\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(592, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R1641373728404466933', 'Wallet Payment', '2022-01-05 09:08:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641373728404466933\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(593, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16413761432002125706', 'Wallet Payment', '2022-01-05 09:49:08', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413761432002125706\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(594, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16413764092147100498', 'Wallet Payment', '2022-01-05 09:53:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413764092147100498\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09035234128'),
(595, '6347bc35301c9cfea53ac139fb557c15', 'MTN 5gb', 1225, 'R16413788851850623597', 'Wallet Payment', '2022-01-05 10:34:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413788851850623597\",\"debitAmount\":1225,\"discountAmount\":150}', '150', NULL, '08068617707'),
(596, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16413790031871504402', 'Wallet Payment', '2022-01-05 10:36:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16413790031871504402\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(597, '12f2b2b0940c849166903a5f7ffbe26c', 'GLO Airtime', 500, 'R1641382530834176312', 'Wallet Payment', '2022-01-05 11:35:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641382530834176312\",\"debitAmount\":500,\"discountAmount\":15}', '15', NULL, '07051496990'),
(598, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1641390152418655798', 'Wallet Payment', '2022-01-05 13:42:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641390152418655798\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(599, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R1641410518867830241', 'Wallet Payment', '2022-01-05 19:22:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641410518867830241\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(600, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R164141092566194504', 'Wallet Payment', '2022-01-05 19:28:47', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164141092566194504\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(601, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R16414136861562298290', 'Wallet Payment', '2022-01-05 20:14:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16414136861562298290\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08111770297'),
(602, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 200, 'R1641466895900964319', 'Wallet Payment', '2022-01-06 11:01:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641466895900964319\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09153244718'),
(603, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 490, 'R1641495687105623756', 'Wallet Payment', '2022-01-06 19:01:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641495687105623756\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '08068027656'),
(604, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16414961481030585484', 'Wallet Payment', '2022-01-06 19:09:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16414961481030585484\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08143724555'),
(605, '69579f1e77e5cb50ca66065beda961d6', 'MTN 1gb', 245, 'R16414980281084636398', 'Wallet Payment', '2022-01-06 19:40:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16414980281084636398\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07063593652'),
(606, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16415373031189546099', 'Wallet Payment', '2022-01-07 06:35:05', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16415373031189546099\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(607, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1641538118988063731', 'Wallet Payment', '2022-01-07 06:48:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641538118988063731\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(608, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R1641541704557828221', 'Wallet Payment', '2022-01-07 07:48:27', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641541704557828221\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(609, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 245, 'R164154268383385762', 'Wallet Payment', '2022-01-07 08:04:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164154268383385762\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07048169520'),
(610, '6347bc35301c9cfea53ac139fb557c15', 'MTN 1gb', 245, 'R16415465502095213910', 'Wallet Payment', '2022-01-07 09:09:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16415465502095213910\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07048169520'),
(611, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16415831141343819251', 'Wallet Payment', '2022-01-07 19:18:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16415831141343819251\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(612, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 245, 'R1641588329677420936', 'Wallet Payment', '2022-01-07 20:45:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641588329677420936\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08167273443'),
(613, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 245, 'R16415890102117354016', 'Wallet Payment', '2022-01-07 20:56:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16415890102117354016\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07048120519'),
(614, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1641589535966435983', 'Wallet Payment', '2022-01-07 21:05:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641589535966435983\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(615, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R164158954494397137', 'Wallet Payment', '2022-01-07 21:05:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164158954494397137\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(616, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1641626426316930728', 'Wallet Payment', '2022-01-08 07:20:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641626426316930728\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(617, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R16416332561778394497', 'Wallet Payment', '2022-01-08 09:14:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16416332561778394497\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07063716037'),
(618, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 500, 'R16416428361951656692', 'Wallet Payment', '2022-01-08 11:54:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16416428361951656692\",\"debitAmount\":500,\"discountAmount\":10}', '10', NULL, '09039052693'),
(619, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16416638121022520298', 'Wallet Payment', '2022-01-08 17:43:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16416638121022520298\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(620, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 245, 'R16416655371241842731', 'Wallet Payment', '2022-01-08 18:12:25', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16416655371241842731\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07036403982'),
(621, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R1641671443646782164', 'Wallet Payment', '2022-01-08 19:50:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641671443646782164\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(622, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 100, 'R16416817021635592258', 'Wallet Payment', '2022-01-08 22:41:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16416817021635592258\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08146328645'),
(623, '69579f1e77e5cb50ca66065beda961d6', 'MTN 1gb', 245, 'R16417375601214297961', 'Wallet Payment', '2022-01-09 14:12:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16417375601214297961\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08142601785'),
(624, '69579f1e77e5cb50ca66065beda961d6', 'MTN 2gb', 490, 'R16417377422071529190', 'Wallet Payment', '2022-01-09 14:15:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16417377422071529190\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '07063593652'),
(625, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 250, 'R1641742845699096792', 'Wallet Payment', '2022-01-09 15:40:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641742845699096792\",\"debitAmount\":250,\"discountAmount\":5}', '5', NULL, '09039052693'),
(626, '257383cce19778b4562b5f5c119f5233', 'MTN Airtime', 200, 'R16417567491826478888', 'Wallet Payment', '2022-01-09 19:32:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16417567491826478888\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '09039052693'),
(627, '257383cce19778b4562b5f5c119f5233', 'MTN 1gb', 245, 'R16417573502105320616', 'Wallet Payment', '2022-01-09 19:42:39', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16417573502105320616\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08167273443'),
(628, '69579f1e77e5cb50ca66065beda961d6', '9mobile 100MB - 100 Naira - 1 day', 100, 'R1641797939373398821', 'Wallet Payment', '2022-01-10 06:59:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641797939373398821\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '09084417368'),
(629, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R1641798021694751967', 'Wallet Payment', '2022-01-10 07:00:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641798021694751967\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(630, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16417981471351418872', 'Wallet Payment', '2022-01-10 07:02:35', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16417981471351418872\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08143724555'),
(631, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 245, 'R16418025481225527742', 'Wallet Payment', '2022-01-10 08:15:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16418025481225527742\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07064882951'),
(632, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R1641804225858717434', 'Wallet Payment', '2022-01-10 08:43:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641804225858717434\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(633, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16418046192036878089', 'Wallet Payment', '2022-01-10 08:50:28', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16418046192036878089\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(634, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R16418057881315839310', 'Wallet Payment', '2022-01-10 09:09:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16418057881315839310\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(635, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R164182498995788285', 'Wallet Payment', '2022-01-10 14:29:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164182498995788285\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08112245361'),
(636, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R16418259481932353961', 'Wallet Payment', '2022-01-10 14:45:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16418259481932353961\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08112245361'),
(637, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 245, 'R1641917785189628771', 'Wallet Payment', '2022-01-11 16:16:34', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641917785189628771\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07064882951'),
(638, '30f5b0051ae748a2183f6049801b6e77', 'MTN Airtime', 100, 'R16419179591466248112', 'Wallet Payment', '2022-01-11 16:19:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419179591466248112\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07064882951'),
(639, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1641929774549809916', 'Wallet Payment', '2022-01-11 19:36:22', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641929774549809916\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08143724555'),
(640, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16419298861233400700', 'Wallet Payment', '2022-01-11 19:38:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419298861233400700\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08102571271'),
(641, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16419613121353655119', 'Wallet Payment', '2022-01-12 04:21:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419613121353655119\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(642, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1641984765763998018', 'Wallet Payment', '2022-01-12 10:52:48', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641984765763998018\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '07069397372'),
(643, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16419915241245980250', 'Wallet Payment', '2022-01-12 12:45:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419915241245980250\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(644, '30f5b0051ae748a2183f6049801b6e77', 'MTN Airtime', 100, 'R1641992486531747355', 'Wallet Payment', '2022-01-12 13:01:29', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1641992486531747355\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '07064882951'),
(645, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16419977191635587125', 'Wallet Payment', '2022-01-12 14:28:42', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419977191635587125\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(646, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16419978172039224440', 'Wallet Payment', '2022-01-12 14:30:19', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16419978172039224440\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09035234128'),
(647, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R164199795543476933', 'Wallet Payment', '2022-01-12 14:32:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164199795543476933\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(648, '30f5b0051ae748a2183f6049801b6e77', 'MTN 1gb', 245, 'R1642005214677729811', 'Wallet Payment', '2022-01-12 16:33:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642005214677729811\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07064882951'),
(649, '257383cce19778b4562b5f5c119f5233', 'MTN 2gb', 490, 'R16420083871353550926', 'Wallet Payment', '2022-01-12 17:26:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16420083871353550926\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '08135178197'),
(650, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R1642022905704141855', 'Wallet Payment', '2022-01-12 21:28:32', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642022905704141855\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07063716037'),
(651, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16420568191457219778', 'Wallet Payment', '2022-01-13 06:53:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16420568191457219778\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(652, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16420746581770998738', 'Wallet Payment', '2022-01-13 11:51:14', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16420746581770998738\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(653, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 200, 'R16421013391642945480', 'Wallet Payment', '2022-01-13 19:15:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421013391642945480\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09153244718'),
(654, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 100, 'R16421014251796112662', 'Wallet Payment', '2022-01-13 19:17:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421014251796112662\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08131373832'),
(655, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 2gb', 490, 'R1642152484248238322', 'Wallet Payment', '2022-01-14 09:28:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642152484248238322\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '08063766663'),
(656, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16421578351668616781', 'Wallet Payment', '2022-01-14 10:57:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421578351668616781\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(657, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1642157917724082899', 'Wallet Payment', '2022-01-14 10:58:45', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642157917724082899\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(658, '12f2b2b0940c849166903a5f7ffbe26c', 'GLO Airtime', 200, 'R16421663382014849058', 'Wallet Payment', '2022-01-14 13:18:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421663382014849058\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '08155886386'),
(659, '30f117a3cce984e027d5607927d9e63b', 'MTN 5gb', 1225, 'R1642171143902921537', 'Wallet Payment', '2022-01-14 14:39:11', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642171143902921537\",\"debitAmount\":1225,\"discountAmount\":150}', '150', NULL, '07069485920'),
(660, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16421733001390608275', 'Wallet Payment', '2022-01-14 15:15:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421733001390608275\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(661, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16421768421574979211', 'Wallet Payment', '2022-01-14 16:14:06', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421768421574979211\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '07066740652'),
(662, '524417c188449469af9bff10102e765d', 'MTN Airtime', 1000, 'R1642182352673805683', 'Wallet Payment', '2022-01-14 17:46:08', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R1642182352673805683\",\"debitAmount\":1000,\"discountAmount\":20}', '20', NULL, '09066096556'),
(663, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16421955151337810832', 'Wallet Payment', '2022-01-14 21:25:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16421955151337810832\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(664, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16422375681980200070', 'Wallet Payment', '2022-01-15 09:06:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16422375681980200070\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08138016968'),
(665, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 490, 'R1642336974754364875', 'Wallet Payment', '2022-01-16 12:43:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642336974754364875\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '08068027656'),
(666, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 100, 'R16423479931688742135', 'Wallet Payment', '2022-01-16 15:46:49', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16423479931688742135\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08035306324'),
(667, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1642349487388526535', 'Wallet Payment', '2022-01-16 16:11:30', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642349487388526535\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(668, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R16424025461176889419', 'Wallet Payment', '2022-01-17 06:55:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16424025461176889419\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09059528128'),
(669, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R16424027091597336171', 'Wallet Payment', '2022-01-17 06:58:31', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16424027091597336171\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(670, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 200, 'R16424043951805611231', 'Wallet Payment', '2022-01-17 07:26:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16424043951805611231\",\"debitAmount\":200,\"discountAmount\":6}', '6', NULL, '09153244718');
INSERT INTO `bill_payment` (`id`, `username`, `product`, `amount`, `transactionid`, `paymentmethod`, `timestamp`, `status`, `server_response`, `discountamount`, `token`, `number`) VALUES
(671, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R16424180351618992787', 'Wallet Payment', '2022-01-17 11:14:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16424180351618992787\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(672, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1642424386771806478', 'Wallet Payment', '2022-01-17 12:59:55', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642424386771806478\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(673, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R1642437821106171890', 'Wallet Payment', '2022-01-17 16:43:50', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642437821106171890\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(674, '69579f1e77e5cb50ca66065beda961d6', 'AIRTEL Airtime', 100, 'R1642493613968443017', 'Wallet Payment', '2022-01-18 08:13:38', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642493613968443017\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '08126606598'),
(675, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R16425171541723736629', 'Wallet Payment', '2022-01-18 14:46:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425171541723736629\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07063716037'),
(676, '69579f1e77e5cb50ca66065beda961d6', 'MTN 1gb', 245, 'R16425190261479471505', 'Wallet Payment', '2022-01-18 15:17:15', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425190261479471505\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08141399744'),
(677, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16425212071599788955', 'Wallet Payment', '2022-01-18 15:53:36', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425212071599788955\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08035306324'),
(678, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16425248671415141690', 'Wallet Payment', '2022-01-18 16:54:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425248671415141690\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '09066656559'),
(679, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16425321811902667926', 'Wallet Payment', '2022-01-18 18:56:46', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425321811902667926\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(680, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R16425322071810465097', 'Wallet Payment', '2022-01-18 18:57:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425322071810465097\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(681, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16425335271844733340', 'Wallet Payment', '2022-01-18 19:18:56', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425335271844733340\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08147736441'),
(682, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 2gb', 490, 'R1642533884893197690', 'Wallet Payment', '2022-01-18 19:24:54', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642533884893197690\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '07042823276'),
(683, '69579f1e77e5cb50ca66065beda961d6', 'Airtel Data - 100 Naira - 100MB - 1Day', 99, 'R16425754421252433126', 'Wallet Payment', '2022-01-19 06:57:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425754421252433126\",\"debitAmount\":99,\"discountAmount\":1.98}', '1.98', NULL, '08126606598'),
(684, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R16425764231865450271', 'Wallet Payment', '2022-01-19 07:13:52', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425764231865450271\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08143724555'),
(685, '69579f1e77e5cb50ca66065beda961d6', 'MTN Airtime', 200, 'R1642580999475562670', 'Wallet Payment', '2022-01-19 08:30:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642580999475562670\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08144811340'),
(686, '69579f1e77e5cb50ca66065beda961d6', 'GLO Airtime', 100, 'R1642587734695220820', 'Wallet Payment', '2022-01-19 10:22:17', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642587734695220820\",\"debitAmount\":100,\"discountAmount\":3}', '3', NULL, '09059528128'),
(687, '491651893f5d842f241ffa7a1a84a9b6', 'MTN 2gb', 490, 'R16425982981954567529', 'Wallet Payment', '2022-01-19 13:18:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16425982981954567529\",\"debitAmount\":490,\"discountAmount\":60}', '60', NULL, '07061716174'),
(688, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R1642622265249086840', 'Wallet Payment', '2022-01-19 19:57:57', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642622265249086840\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '08037680906'),
(689, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN 1gb', 245, 'R16426223291592663067', 'Wallet Payment', '2022-01-19 19:58:59', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16426223291592663067\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '09063873340'),
(690, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R1642625634551761670', 'Wallet Payment', '2022-01-19 20:54:03', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642625634551761670\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07041777977'),
(691, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R164266489219382818', 'Wallet Payment', '2022-01-20 07:48:20', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164266489219382818\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(692, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16426668691282144638', 'Wallet Payment', '2022-01-20 08:21:10', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16426668691282144638\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09137767955'),
(693, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16426669491586776479', 'Wallet Payment', '2022-01-20 08:22:30', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16426669491586776479\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '08149414921'),
(694, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 300, 'R16426670211459109438', 'Wallet Payment', '2022-01-20 08:23:45', 1, '{\"success\":1,\"message\":\"Transaction is pending\",\"ref\":\"R16426670211459109438\",\"debitAmount\":300,\"discountAmount\":6}', '6', NULL, '09035234128'),
(695, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16426740191085697131', 'Wallet Payment', '2022-01-20 10:20:21', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16426740191085697131\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(696, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 245, 'R16426879971880444317', 'Wallet Payment', '2022-01-20 14:13:26', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16426879971880444317\",\"debitAmount\":245,\"discountAmount\":30}', '30', NULL, '07036403982'),
(697, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 2gb', 490, 'R16426938891302875005', 'Wallet Payment', '2022-01-20 15:51:37', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16426938891302875005\",\"debitAmount\":490,\"discountAmount\":70}', '70', NULL, '07043462312'),
(698, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 1gb', 245, 'R1642708201553451141', 'Wallet Payment', '2022-01-20 19:50:12', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642708201553451141\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '08143724555'),
(699, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16427084471102190944', 'Wallet Payment', '2022-01-20 19:54:16', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16427084471102190944\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '09035628468'),
(700, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 490, 'R16427503241263240477', 'Wallet Payment', '2022-01-21 07:32:13', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16427503241263240477\",\"debitAmount\":490,\"discountAmount\":70}', '70', NULL, '08035306324'),
(701, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN Airtime', 200, 'R1642763561430020612', 'Wallet Payment', '2022-01-21 11:12:43', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642763561430020612\",\"debitAmount\":200,\"discountAmount\":4}', '4', NULL, '08035306324'),
(702, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16427644361757028697', 'Wallet Payment', '2022-01-21 11:27:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16427644361757028697\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(703, '7402890e1e13e6d14cc5b1a6530a4a6c', 'MTN Airtime', 100, 'R16427665091026214630', 'Wallet Payment', '2022-01-21 12:01:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16427665091026214630\",\"debitAmount\":100,\"discountAmount\":2}', '2', NULL, '08062374829'),
(704, '30f117a3cce984e027d5607927d9e63b', '9mobile Airtime', 1000, 'R1642767571526385734', 'Wallet Payment', '2022-01-21 12:19:33', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1642767571526385734\",\"debitAmount\":1000,\"discountAmount\":30}', '30', NULL, '09090025875'),
(705, '30f117a3cce984e027d5607927d9e63b', '9mobile Airtime', 1000, 'R16427688211340598737', 'Wallet Payment', '2022-01-21 12:40:23', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16427688211340598737\",\"debitAmount\":1000,\"discountAmount\":30}', '30', NULL, '09090025875'),
(706, '491651893f5d842f241ffa7a1a84a9b6', 'MTN 1gb', 245, 'R164286538223767925', 'Wallet Payment', '2022-01-22 15:29:51', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164286538223767925\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '07061716174'),
(707, '5a2f305f951e6bbd65f677a7e1db8b34', 'MTN 1gb', 245, 'R16428796041286201332', 'Wallet Payment', '2022-01-22 19:26:53', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16428796041286201332\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '07041777977'),
(708, '3e43e0e9f8d3c742212f39569b25fdcc', 'MTN 1gb', 245, 'R16429745501280823608', 'Wallet Payment', '2022-01-23 21:49:18', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16429745501280823608\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '07063716037'),
(709, '12f2b2b0940c849166903a5f7ffbe26c', 'MTN 2gb', 490, 'R16430081481037279140', 'Wallet Payment', '2022-01-24 07:09:24', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16430081481037279140\",\"debitAmount\":490,\"discountAmount\":70}', '70', NULL, '08068027656'),
(710, 'b975fd2c2d39c19ae65c56f4775a4dfa', 'MTN 1gb', 245, 'R16430263661953926925', 'Wallet Payment', '2022-01-24 12:13:02', 1, '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16430263661953926925\",\"debitAmount\":245,\"discountAmount\":35}', '35', NULL, '07037244403');

-- --------------------------------------------------------

--
-- Table structure for table `bos`
--

CREATE TABLE `bos` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `server_res` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `result` varchar(200) DEFAULT NULL,
  `phone` varchar(200) NOT NULL,
  `refid` varchar(200) DEFAULT NULL,
  `discountamoun` varchar(200) DEFAULT NULL,
  `token` varchar(300) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bos`
--

INSERT INTO `bos` (`id`, `username`, `plan`, `amount`, `server_res`, `date`, `result`, `phone`, `refid`, `discountamoun`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Adeolu23', '500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-24 21:28:23', '1', '08146328645', '61386110', NULL, NULL, NULL, NULL),
(2, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-24 21:04:02', '1', '07064257276', '849078394', NULL, NULL, NULL, NULL),
(3, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-24 21:05:46', '1', '07064257276', '849078394', NULL, NULL, NULL, NULL),
(4, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-24 21:30:33', '1', '08146328645', '100780233', NULL, NULL, NULL, NULL),
(5, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-24 21:31:15', '1', '08146328645', '100780233', NULL, NULL, NULL, NULL),
(6, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-25 14:31:02', '1', '08134511368', '577017943', NULL, NULL, NULL, NULL),
(7, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-25 17:12:35', '1', '08146328645', '875463652', NULL, NULL, NULL, NULL),
(8, 'Adeolu23', 'MTN2.00GB - [30 Days Plan]', '400', 'Data top-up request has been received and will be processed shortly! ', '2022-01-26 20:03:28', '1', '08146328645', '153108745', NULL, NULL, NULL, NULL),
(9, 'Adeolu23', 'MTN500MB - [30 Days Plan] ', '100', 'Data top-up request has been received and will be processed shortly! ', '2022-01-26 20:18:47', '1', '08146328645', '539152972', NULL, NULL, NULL, NULL),
(10, 'Adeolu23', 'airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16456975031992276867\",\"debitAmount\":100,\"discountAmount\":2}', '2022-02-24 10:11:42', '1', '08146328645', '768817007', '2', NULL, NULL, NULL),
(11, 'Adeolu23', 'Airtime', '200', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16482166544573871\",\"debitAmount\":200,\"discountAmount\":6}', '2022-03-25 13:57:16', '1', '08146328645', '487781610', '6', NULL, '2022-03-25 12:57:16.000000', '2022-03-25 12:57:16.000000'),
(12, 'Adeolu23', '1.00GB - [30 Days Plan]', '200.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-03-25 14:22:35', '1', '08146328645', '229808644', NULL, NULL, '2022-03-25 13:22:35.000000', '2022-03-25 13:22:35.000000'),
(13, 'akinlabi525', 'Airtime', '300', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1648284538806759774\",\"debitAmount\":300,\"discountAmount\":9}', '2022-03-26 08:48:43', '1', '08146328645', '709886860', '9', NULL, '2022-03-26 07:48:43.000000', '2022-03-26 07:48:43.000000'),
(14, 'akinlabi525', 'Airtime', '200', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16482846481886889322\",\"debitAmount\":200,\"discountAmount\":6}', '2022-03-26 08:50:29', '1', '08146328645', '309750729', '6', NULL, '2022-03-26 07:50:29.000000', '2022-03-26 07:50:29.000000'),
(15, 'akinlabi525', 'Airtime', '700', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16482848832111678615\",\"debitAmount\":700,\"discountAmount\":21}', '2022-03-26 08:54:24', '1', '08146328645', '235916730', '21', NULL, '2022-03-26 07:54:24.000000', '2022-03-26 07:54:24.000000'),
(16, 'akinlabi525', 'Airtime', '300', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R164828509720385228\",\"debitAmount\":300,\"discountAmount\":9}', '2022-03-26 08:57:58', '1', '08146328645', '720894297', '9', NULL, '2022-03-26 07:57:58.000000', '2022-03-26 07:57:58.000000'),
(17, 'akinlabi525', 'Airtime', '300', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16482852431647414026\",\"debitAmount\":300,\"discountAmount\":9}', '2022-03-26 09:00:24', '1', '08034309276', '549431216', '9', NULL, '2022-03-26 08:00:24.000000', '2022-03-26 08:00:24.000000'),
(18, 'akinlabi525', '500MB - [30 Days Plan] ', '100.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-03-26 09:05:45', '1', '08146328645', '260787624', NULL, NULL, '2022-03-26 08:05:45.000000', '2022-03-26 08:05:45.000000'),
(19, 'akinlabi525', '500MB - [30 Days Plan] ', '100.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-03-26 12:36:59', '1', '08146328645', '434449374', NULL, NULL, '2022-03-26 11:36:59.000000', '2022-03-26 11:36:59.000000'),
(20, 'akinlabi525', 'Airtime', '300', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16483899741985185413\",\"debitAmount\":300,\"discountAmount\":9}', '2022-03-27 14:05:58', '1', '08146328645', '247879249', '9', NULL, '2022-03-27 14:05:58.000000', '2022-03-27 14:05:58.000000'),
(21, 'akin8888', 'Airtime', '200', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16491703081191008989\",\"debitAmount\":200,\"discountAmount\":6}', '2022-04-05 14:51:17', '1', '08146328645', '377876760', '6', NULL, '2022-04-05 14:51:17.000000', '2022-04-05 14:51:17.000000'),
(22, 'akin8888', '3.00GB - [30 Days Plan]', '600.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-04-05 15:56:00', '1', '08164755948', '237176073', NULL, NULL, '2022-04-05 15:56:00.000000', '2022-04-05 15:56:00.000000'),
(23, 'adura234', 'Airtime', '200', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16492830642127069547\",\"debitAmount\":200,\"discountAmount\":6}', '2022-04-06 22:10:34', '1', '08146328645', '514851827', '6', NULL, '2022-04-06 22:10:34.000000', '2022-04-06 22:10:34.000000'),
(24, 'adura234', 'Airtime', '300', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16492837681982489860\",\"debitAmount\":300,\"discountAmount\":9}', '2022-04-06 22:22:13', '1', '08146328645', '845852893', '9', NULL, '2022-04-06 22:22:13.000000', '2022-04-06 22:22:13.000000'),
(25, 'akin', '1.00GB - [30 Days Plan]', '200.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-04-06 23:14:20', '1', '08146328645', '610109384', NULL, NULL, '2022-04-06 23:14:20.000000', '2022-04-06 23:14:20.000000'),
(26, 'akin', '1.00GB - [30 Days Plan] ', '240.00', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-06 23:22:37', '1', '08146328645', '70740196', NULL, NULL, '2022-04-06 23:22:37.000000', '2022-04-06 23:22:37.000000'),
(27, 'adura234', 'Airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1649288639665263681\",\"debitAmount\":100,\"discountAmount\":3}', '2022-04-06 23:43:25', '1', '08034309276', '256659728', '3', NULL, '2022-04-06 23:43:25.000000', '2022-04-06 23:43:25.000000'),
(28, 'adura234', 'Airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1649322448420517204\",\"debitAmount\":100,\"discountAmount\":3}', '2022-04-07 09:06:54', '1', '08038004674', '649461522', '3', NULL, '2022-04-07 09:06:54.000000', '2022-04-07 09:06:54.000000'),
(29, 'adura234', '3.00GB - [30 Days Plan]', '720.00', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-07 09:15:26', '1', '08164755948', '641840216', NULL, NULL, '2022-04-07 09:15:26.000000', '2022-04-07 09:15:26.000000'),
(30, 'Olaboye', 'Airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16493275142038680187\",\"debitAmount\":100,\"discountAmount\":3}', '2022-04-07 10:31:19', '1', '08038004674', '192380488', '3', NULL, '2022-04-07 10:31:19.000000', '2022-04-07 10:31:19.000000'),
(31, 'akin', '500MB - [30 Days Plan] ', '100.00', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-04-07 14:10:43', '1', '08146328645', '898540892', NULL, NULL, '2022-04-07 14:10:43.000000', '2022-04-07 14:10:43.000000'),
(32, 'akin', '1.00GB - [30 Days Plan]', '300', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-04-07 14:16:51', '1', '08146328645', '135772800', NULL, NULL, '2022-04-07 14:16:51.000000', '2022-04-07 14:16:51.000000'),
(33, 'akin', '1.00GB - [30 Days Plan]', '300', '{\"msg\":\"Data top-up request has been received and will be processed shortly! \",\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\"}', '2022-04-07 14:18:15', '1', '08146328645', '561424228', NULL, NULL, '2022-04-07 14:18:15.000000', '2022-04-07 14:18:15.000000'),
(34, 'akin', '1.00GB - [30 Days Plan] ', '240.00', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-07 17:34:53', '1', '08146328645', '992825448', NULL, NULL, '2022-04-07 17:34:53.000000', '2022-04-07 17:34:53.000000'),
(35, 'akin', 'airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16497810481398173570\",\"debitAmount\":100,\"discountAmount\":2}', '2022-04-12 16:30:08', '1', '08146328645', '854972823', '2', NULL, '2022-04-12 16:30:08.000000', '2022-04-12 16:30:08.000000'),
(36, 'akin', 'DStv Padi N2,150', '2150.00', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16499729661712254150\",\"debitAmount\":\"1850.00\",\"discountAmount\":18.5}', '2022-04-14 21:48:42', '1', '7036346752', '908945663', '18.5', NULL, '2022-04-14 21:48:42.000000', '2022-04-14 21:48:42.000000'),
(37, 'akin', 'DStv Padi N2,150', '2150.00', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16499734321570387020\",\"debitAmount\":\"1850.00\",\"discountAmount\":18.5}', '2022-04-14 21:56:27', '1', '7036346752', '556095951', '18.5', NULL, '2022-04-14 21:56:27.000000', '2022-04-14 21:56:27.000000'),
(38, 'akin', 'IKEDC', '4000', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16500353221097309590\",\"debitAmount\":\"4000\",\"discountAmount\":20,\"token\":\"Token : 42167939781206619049 Bonus Token : 62881559799402440206\"}', '2022-04-15 15:07:56', '1', '04271939458', '134352008', '20', 'Token : 42167939781206619049 Bonus Token : 62881559799402440206', '2022-04-15 15:07:56.000000', '2022-04-15 15:07:56.000000'),
(39, 'akin', 'airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16502064012016069387\",\"debitAmount\":100,\"discountAmount\":2}', '2022-04-17 14:39:16', '1', '08146328645', '72', '2', NULL, '2022-04-17 14:39:16.000000', '2022-04-17 14:39:16.000000'),
(40, 'akin', '500MB - [30 Days Plan] (SME)', '179', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-17 14:52:23', '1', '08146328645', '485452432', NULL, NULL, '2022-04-17 14:52:23.000000', '2022-04-17 14:52:23.000000'),
(41, 'akin', 'MTN 1gb-(N280- 30days)', '280', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16502338981560523044\",\"debitAmount\":\"290\",\"discountAmount\":5.79999999999999982236431605997495353221893310546875}', '2022-04-17 22:17:28', '1', '08146328645', '799684823', NULL, NULL, '2022-04-17 22:17:28.000000', '2022-04-17 22:17:28.000000'),
(42, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-17 22:21:32', '1', '08146328645', '822193366', NULL, NULL, '2022-04-17 22:21:32.000000', '2022-04-17 22:21:32.000000'),
(43, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-19 11:05:28', '1', '07038687179', '359042519', NULL, NULL, '2022-04-19 11:05:28.000000', '2022-04-19 11:05:28.000000'),
(44, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-04-20 09:33:28', '1', '09061123233', '838380845', NULL, NULL, '2022-04-20 09:33:27.000000', '2022-04-20 09:33:27.000000'),
(45, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-03 16:04:42', '1', '08039602957', '712162379', NULL, NULL, '2022-05-03 16:04:42.000000', '2022-05-03 16:04:42.000000'),
(46, 'akin', '2.00GB - [30 Days Plan] (SME)', '538', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-03 17:42:26', '1', '08146328645', '679140999', NULL, NULL, '2022-05-03 17:42:26.000000', '2022-05-03 17:42:26.000000'),
(47, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-05 10:51:16', '1', '08146328645', '800773465', NULL, NULL, '2022-05-05 10:51:16.000000', '2022-05-05 10:51:16.000000'),
(48, 'akin', 'airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16517484861183489870\",\"debitAmount\":100,\"discountAmount\":2}', '2022-05-05 11:00:18', '1', '08146328645', '941964536', '2', NULL, '2022-05-05 11:00:18.000000', '2022-05-05 11:00:18.000000'),
(49, 'akin', 'airtime', '100', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16517489881118101873\",\"debitAmount\":100,\"discountAmount\":2}', '2022-05-05 11:08:40', '1', '08146328645', '192562539', '2', NULL, '2022-05-05 11:08:40.000000', '2022-05-05 11:08:40.000000'),
(50, 'akin', 'airtime', '200', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16517493241782974914\",\"debitAmount\":200,\"discountAmount\":6}', '2022-05-05 11:14:15', '1', '09028684669', '77265018', '6', NULL, '2022-05-05 11:14:15.000000', '2022-05-05 11:14:15.000000'),
(51, 'akin', '1.00GB - [30 Days Plan] (SME)', '269', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R1651870377530319627\",\"debitAmount\":\"235\",\"discountAmount\":0}', '2022-05-06 20:51:48', '1', '07040237649', '467864716', NULL, NULL, '2022-05-06 20:51:48.000000', '2022-05-06 20:51:48.000000'),
(52, 'akin', '2.00GB - [30 Days Plan] (SME)', '538', '{\"success\":1,\"message\":\"Transaction Successful instantly\",\"ref\":\"R16520842781474190807\",\"debitAmount\":\"470\",\"discountAmount\":0}', '2022-05-09 08:16:44', '1', '09030572053', '172260920', NULL, NULL, '2022-05-09 07:16:44.000000', '2022-05-09 07:16:44.000000'),
(53, 'akin', '2.00GB - [30 Days Plan] (SME)', '538', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-14 14:26:50', '1', '08146328645', '861287698', NULL, NULL, '2022-05-14 13:26:50.000000', '2022-05-14 13:26:50.000000'),
(54, 'akin', '3.00GB - [30 Days Plan] (SME) ', '807', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-15 13:45:17', '1', '08146328645', '401760611', NULL, NULL, '2022-05-15 12:45:17.000000', '2022-05-15 12:45:17.000000'),
(55, 'akin', '2.00GB - [30 Days Plan] (SME)', '538', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-20 16:10:38', '1', '09060649982', '797819683', NULL, NULL, '2022-05-20 15:10:38.000000', '2022-05-20 15:10:38.000000'),
(56, 'adura234', '2.00GB - [30 Days Plan] (SME)', '538', '{\"reset\":true,\"result\":1,\"url\":\"https:\\/\\/honourworld.ng\\/products\\/data-top-up\",\"msg\":\"Data top-up request has been received and will be processed shortly! \"}', '2022-05-26 15:21:29', '1', '07066779276', '596091358', NULL, NULL, '2022-05-26 14:21:29.000000', '2022-05-26 14:21:29.000000'),
(57, 'akin', 'airtime', '100', '{\"code\":200,\"message\":\"SUCCESSFUL\",\"reference\":\"HONOUR|WORLD|20|20220623094225|607752\"}', '2022-06-23 08:40:25', '1', '07025019204', '200279377', '0', NULL, '2022-06-23 07:40:25.000000', '2022-06-23 07:40:25.000000'),
(58, 'akin', 'airtime', '100', '{\"code\":200,\"message\":\"SUCCESSFUL\",\"reference\":\"HONOUR|WORLD|73|20220623095254|726516\"}', '2022-06-23 08:50:54', '1', '07025019204', '687754212', '0', NULL, '2022-06-23 07:50:54.000000', '2022-06-23 07:50:54.000000'),
(59, 'akin', '500MB [SME]30 Days', '115.00', '{\"code\":200,\"message\":\"You have successfully purchased 500MB [SME] for subscriber, 08146328645.\",\"reference\":\"HONOUR|WORLD|19|20220623190943|239164\"}', '2022-06-23 18:07:37', '1', '08146328645', '41645001', NULL, NULL, '2022-06-23 17:07:37.000000', '2022-06-23 17:07:37.000000'),
(60, 'akin', '500MB [SME]30 Days', '300.00', '{\"code\":200,\"message\":\"You have successfully purchased 500MB [SME] for subscriber, 08146328645.\",\"reference\":\"HONOUR|WORLD|93|20220623193358|977841\"}', '2022-06-23 18:31:53', '1', '08146328645', '819891625', NULL, NULL, '2022-06-23 17:31:53.000000', '2022-06-23 17:31:53.000000'),
(61, 'akin', 'airtime', '200', '{\"code\":200,\"message\":\"SUCCESSFUL\",\"reference\":\"HONOUR|WORLD|97|20220627170228|401020\"}', '2022-06-27 16:00:27', '1', '09081954040', '70734095', '0', NULL, '2022-06-27 15:00:27.000000', '2022-06-27 15:00:27.000000'),
(62, 'adura234', 'airtime', '100', '{\"code\":200,\"message\":\"SUCCESSFUL\",\"reference\":\"HONOUR|WORLD|27|20220706161209|587505\"}', '2022-07-06 15:09:54', '1', '07025019204', '360735804', '0', NULL, '2022-07-06 14:09:54.000000', '2022-07-06 14:09:54.000000'),
(63, 'akin', 'airtime', '100', '{\"code\":200,\"message\":\"SUCCESSFUL\",\"reference\":\"HONOUR|WORLD|77|20220712154922|882915\"}', '2022-07-12 14:47:03', '1', '07025019204', '333715381', '0', NULL, '2022-07-12 13:47:03.000000', '2022-07-12 13:47:03.000000');

-- --------------------------------------------------------

--
-- Table structure for table `charps`
--

CREATE TABLE `charps` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `payment_ref` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `iwallet` varchar(200) NOT NULL,
  `fwallet` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charps`
--

INSERT INTO `charps` (`id`, `username`, `payment_ref`, `amount`, `iwallet`, `fwallet`, `status`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'akin', '182593807', '100', '3460', '5360', '1', '2022-04-07 12:42:11', NULL, '2022-04-07 12:42:11.000000', '2022-04-07 12:42:11.000000'),
(2, 'akin', '788072483', '100', '5360', '6260', '1', '2022-04-07 13:01:31', NULL, '2022-04-07 13:01:31.000000', '2022-04-07 13:01:31.000000'),
(3, 'akin', '339030005', '100', '5360', '12260', '1', '2022-04-07 13:05:09', NULL, '2022-04-07 13:05:09.000000', '2022-04-07 13:05:09.000000'),
(4, 'akin', '529282152', '100', '5360', '6160', '1', '2022-04-07 13:06:58', NULL, '2022-04-07 13:06:58.000000', '2022-04-07 13:06:58.000000'),
(5, 'akin', '110967041', '100', '6160', '8060', '1', '2022-04-07 13:21:32', NULL, '2022-04-07 13:21:32.000000', '2022-04-07 13:21:32.000000'),
(6, 'akin', '763630051', '1000', '2133', '1133', '1', '2022-06-06 18:03:33', NULL, '2022-06-06 17:03:33.000000', '2022-06-06 17:03:33.000000'),
(7, 'akin', '763630051', '1000', '1133', '133', '1', '2022-06-06 18:06:57', NULL, '2022-06-06 17:06:57.000000', '2022-06-06 17:06:57.000000'),
(8, 'akin', '763630051', '1000', '133', '-867', '1', '2022-06-06 18:08:08', NULL, '2022-06-06 17:08:08.000000', '2022-06-06 17:08:08.000000'),
(9, 'akin', '731861140', '100', '-867', '-967', '1', '2022-06-06 18:17:09', NULL, '2022-06-06 17:17:09.000000', '2022-06-06 17:17:09.000000');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `plan_id` varchar(200) NOT NULL,
  `network` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `amount` varchar(200) NOT NULL,
  `tamount` varchar(200) NOT NULL,
  `ramount` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT '1',
  `server` varchar(200) DEFAULT NULL,
  `cat_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `plan_id`, `network`, `plan`, `code`, `amount`, `tamount`, `ramount`, `status`, `server`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'MTN500MB', 'mtn-data', 'MTN 500MB SME ', NULL, '120', '120', '120', '1', NULL, 'MTN500MB', '2022-07-02 19:32:59.000000', '2022-07-02 19:32:59.000000'),
(2, 'MTN1GB', 'mtn-data', 'MTN 1gb - SME', NULL, '220', '220', '220', '1', NULL, 'MTN1GB', '2022-07-02 19:32:59.000000', '2022-07-02 19:32:59.000000'),
(3, 'MTN2GB', 'mtn-data', 'MTN 2gb - SME', NULL, '440', '440', '440', '1', NULL, 'MTN2GB', '2022-07-02 19:32:59.000000', '2022-07-02 19:32:59.000000'),
(4, 'MTN3GB', 'mtn-data', 'MTN 3gb - SME', NULL, '660', '660', '660', '1', NULL, 'MTN3GB', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(5, 'MTN5GB', 'mtn-data', 'MTN 5gb - SME', NULL, '1100', '1100', '1100', '1', NULL, 'MTN5GB', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(6, 'MTN10GB', 'mtn-data', 'MTN 10GB SME - Monthly', NULL, '2450', '2450', '2450', '1', NULL, 'MTN10GB', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(7, 'mtn-10mb-100', 'mtn-data', 'MTN N100 100MB - (24 Hours)', NULL, '100', '100', '100', '1', NULL, 'mtn-10mb-100', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(8, 'mtn-20mb-25', 'mtn-data', 'MTN N25 20MB - (24 Hours)', NULL, '25', '25', '25', '1', NULL, 'mtn-20mb-25', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(9, 'mtn-50mb-200', 'mtn-data', 'MTN N200 200MB - 2 days', NULL, '200', '200', '200', '1', NULL, 'mtn-50mb-200', '2022-07-02 19:33:00.000000', '2022-07-02 19:33:00.000000'),
(10, 'mtn-50mb-50', 'mtn-data', 'MTN N50 50MB - (24 Hours)', NULL, '50', '50', '50', '1', NULL, 'mtn-50mb-50', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(11, 'mtn-160mb-150', 'mtn-data', 'MTN N150 160MB - 30 days', NULL, '150', '150', '150', '1', NULL, 'mtn-160mb-150', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(12, 'mtn-750mb-500', 'mtn-data', 'MTN N500 750MB - 14 days', NULL, '500', '500', '500', '1', NULL, 'mtn-750mb-500', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(13, 'mtn-100mb-1000', 'mtn-data', 'MTN N1,000 1.5GB  - 30 days', NULL, '1000', '1000', '1000', '1', NULL, 'mtn-100mb-1000', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(14, 'mtn-500mb-2000', 'mtn-data', 'MTN N2,000 4.5GB  - 30 days', NULL, '2000', '2000', '2000', '1', NULL, 'mtn-500mb-2000', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(15, 'mtn-350mb-300', 'mtn-data', 'MTN N300 350MB - 7 days', NULL, '300', '300', '300', '1', NULL, 'mtn-350mb-300', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(16, 'mtn-20hrs-1500', 'mtn-data', 'MTN N1,500 6GB  - 7 days', NULL, '1500', '1500', '1500', '1', NULL, 'mtn-20hrs-1500', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(17, 'mtn-3gb-2500', 'mtn-data', 'MTN N2,500 6GB  - 30 days', NULL, '2500', '2500', '2500', '1', NULL, 'mtn-3gb-2500', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(18, 'mtn-data-3000', 'mtn-data', 'MTN N3,000 10GB  - 30 days', NULL, '3000', '3000', '3000', '1', NULL, 'mtn-data-3000', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(19, 'mtn-1gb-3500', 'mtn-data', 'MTN N3,500 12GB  - 30 days', NULL, '3500', '3500', '3500', '1', NULL, 'mtn-1gb-3500', '2022-07-02 19:33:01.000000', '2022-07-02 19:33:01.000000'),
(20, 'mtn-100hr-5000', 'mtn-data', 'MTN N5,000 20GB  - 30 days', NULL, '5000', '5000', '5000', '1', NULL, 'mtn-100hr-5000', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(21, 'mtn-3gb-6000', 'mtn-data', 'MTN N6,000 25GB  - 30 days', NULL, '6000', '6000', '6000', '1', NULL, 'mtn-3gb-6000', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(22, 'mtn-40gb-10000', 'mtn-data', 'MTN N10,000 40GB  - 30 days', NULL, '10000', '10000', '10000', '1', NULL, 'mtn-40gb-10000', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(23, 'mtn-75gb-15000', 'mtn-data', 'MTN N15,000 75GB  - 30 days', NULL, '15000', '15000', '15000', '1', NULL, 'mtn-75gb-15000', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(24, 'mtn-110gb-20000', 'mtn-data', 'MTN N20,000 110GB  - 30 days', NULL, '20000', '20000', '20000', '1', NULL, 'mtn-110gb-20000', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(25, 'mtn-3gb-1500', 'mtn-data', 'MTN N1500 3GB  - 30 days', NULL, '1500', '1500', '1500', '1', NULL, 'mtn-3gb-1500', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(26, 'mtn-2gb-1200', 'mtn-data', 'MTN N1,200 2GB  - 30 days', NULL, '1200', '1200', '1200', '1', NULL, 'mtn-2gb-1200', '2022-07-02 19:33:02.000000', '2022-07-02 19:33:02.000000'),
(27, 'mtn-120gb-30000', 'mtn-data', 'MTN N30,000 120GB  - 60days', NULL, '30000', '30000', '30000', '1', NULL, 'mtn-120gb-30000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(28, 'mtn-150gb-50000', 'mtn-data', 'MTN N50,000 150GB  - 90days', NULL, '50000', '50000', '50000', '1', NULL, 'mtn-150gb-50000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(29, 'mtn-250gb-75000', 'mtn-data', 'MTN N75,000 250GB  - 90days', NULL, '75000', '75000', '75000', '1', NULL, 'mtn-250gb-75000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(30, 'mtn-1tb-100000', 'mtn-data', 'MTN N100,000 325GB  - 6 Months', NULL, '100000', '100000', '100000', '1', NULL, 'mtn-1tb-100000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(31, 'mtn-400gb-120000', 'mtn-data', 'MTN N120,000 400GB  - 365 days', NULL, '120000', '120000', '120000', '1', NULL, 'mtn-400gb-120000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(32, 'mtn-1000gb-250000', 'mtn-data', 'MTN N250,000 1000GB  - 365 days', NULL, '250000', '250000', '250000', '1', NULL, 'mtn-1000gb-250000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(33, 'mtn-2000gb-450000', 'mtn-data', 'MTN N450,000 2000GB - 365 days', NULL, '450000', '450000', '450000', '1', NULL, 'mtn-2000gb-450000', '2022-07-02 19:33:03.000000', '2022-07-02 19:33:03.000000'),
(34, 'mtn-1gb-300', 'mtn-data', 'MTN N300 1GB - 1 day', NULL, '300', '300', '300', '1', NULL, 'mtn-1gb-300', '2022-07-02 19:33:04.000000', '2022-07-02 19:33:04.000000'),
(35, 'mtn-xtra-300', 'mtn-data', 'MTN N300 Xtradata', NULL, '300', '300', '300', '1', NULL, 'mtn-xtra-300', '2022-07-02 19:33:04.000000', '2022-07-02 19:33:04.000000'),
(36, 'mtn-1gb-500', 'mtn-data', 'MTN N500 1GB  - 7 days', NULL, '500', '500', '500', '1', NULL, 'mtn-1gb-500', '2022-07-02 19:33:04.000000', '2022-07-02 19:33:04.000000'),
(37, 'mtn-2-5gb-500', 'mtn-data', 'MTN N500 2.5GB  - 2 days', NULL, '500', '500', '500', '1', NULL, 'mtn-2-5gb-500', '2022-07-02 19:33:04.000000', '2022-07-02 19:33:04.000000'),
(38, 'mtn-xtra-500', 'mtn-data', 'MTN N500 Xtradata', NULL, '500', '500', '500', '1', NULL, 'mtn-xtra-500', '2022-07-02 19:33:05.000000', '2022-07-02 19:33:05.000000'),
(39, 'mtn-dealzone-500', 'mtn-data', 'MTN 750MB 50% Deal Zone Offer (500MB+250MB) (14 days)', NULL, '500', '500', '500', '1', NULL, 'mtn-dealzone-500', '2022-07-02 19:33:05.000000', '2022-07-02 19:33:05.000000'),
(40, 'mtn-xtra-1000', 'mtn-data', 'MTN N1,000 Xtradata', NULL, '1000', '1000', '1000', '1', NULL, 'mtn-xtra-1000', '2022-07-02 19:33:05.000000', '2022-07-02 19:33:05.000000'),
(41, 'mtn-xtra-2000', 'mtn-data', 'MTN N2,000 Xtradata', NULL, '2000', '2000', '2000', '1', NULL, 'mtn-xtra-2000', '2022-07-02 19:33:06.000000', '2022-07-02 19:33:06.000000'),
(42, 'mtn-xtra-5000', 'mtn-data', 'MTN N5,000 Xtradata', NULL, '5000', '5000', '5000', '1', NULL, 'mtn-xtra-5000', '2022-07-02 19:33:07.000000', '2022-07-02 19:33:07.000000'),
(43, 'mtn-110gb-20000', 'mtn-data', 'MTN N20,000 110GB  - 30 days', NULL, '20000', '20000', '20000', '1', NULL, 'mtn-110gb-20000', '2022-07-02 19:33:08.000000', '2022-07-02 19:33:08.000000'),
(44, 'mtn-xtra-10000', 'mtn-data', 'MTN N10,000 Xtradata', NULL, '10000', '10000', '10000', '1', NULL, 'mtn-xtra-10000', '2022-07-02 19:33:08.000000', '2022-07-02 19:33:08.000000'),
(45, 'mtn-sme30gb-13500', 'mtn-data', 'SME Data Share N13,500 - 30GB', NULL, '13500', '13500', '13500', '1', NULL, 'mtn-sme30gb-13500', '2022-07-02 19:33:09.000000', '2022-07-02 19:33:09.000000'),
(46, 'mtn-xtra-15000', 'mtn-data', 'MTN N15,000 Xtradata', NULL, '15000', '15000', '15000', '1', NULL, 'mtn-xtra-15000', '2022-07-02 19:33:09.000000', '2022-07-02 19:33:09.000000'),
(47, 'mtn-xtra-20000', 'mtn-data', 'MTN N20,000 Xtradata', NULL, '20000', '20000', '20000', '1', NULL, 'mtn-xtra-20000', '2022-07-02 19:33:10.000000', '2022-07-02 19:33:10.000000'),
(48, 'mtn-90gb-40000', 'mtn-data', 'SME Data Share N40,000 - 90GB ', NULL, '40000', '40000', '40000', '1', NULL, 'mtn-90gb-40000', '2022-07-02 19:33:10.000000', '2022-07-02 19:33:10.000000'),
(49, 'mtn-150gb-50000', 'mtn-data', 'SME Data Share N50,000 150GB', NULL, '50000', '50000', '50000', '1', NULL, 'mtn-150gb-50000', '2022-07-02 19:33:10.000000', '2022-07-02 19:33:10.000000'),
(50, 'glo100', 'glo-data', 'Glo Data N100 -  150MB - 1 day', NULL, '100', '110', NULL, '1', NULL, 'glo100', '2022-07-02 19:34:09.000000', '2022-07-02 20:28:14.000000'),
(51, 'glo200', 'glo-data', 'Glo Data N200 -  350MB - 2 days', NULL, '200', '200', '200', '1', NULL, 'glo200', '2022-07-02 19:34:09.000000', '2022-07-02 19:34:09.000000'),
(52, 'glo500', 'glo-data', 'Glo Data N500 -  1.35GB - 14 days', NULL, '500', '500', '500', '1', NULL, 'glo500', '2022-07-02 19:34:09.000000', '2022-07-02 19:34:09.000000'),
(53, 'glo1000', 'glo-data', 'Glo Data N1000 -  2.9GB - 30 days', NULL, '1000', '1000', '1000', '1', NULL, 'glo1000', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(54, 'glo2000', 'glo-data', 'Glo Data N2000 -  5.8GB - 30 days', NULL, '2000', '2000', '2000', '1', NULL, 'glo2000', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(55, 'glo2500', 'glo-data', 'Glo Data N2500 -  7.7GB - 30 days', NULL, '2500', '2500', '2500', '1', NULL, 'glo2500', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(56, 'glo3000', 'glo-data', 'Glo Data N3000 -  10GB - 30 days', NULL, '3000', '3000', '3000', '1', NULL, 'glo3000', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(57, 'glo4000', 'glo-data', 'Glo Data N4000 -  13.25GB - 30 days', NULL, '4000', '4000', '4000', '1', NULL, 'glo4000', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(58, 'glo5000', 'glo-data', 'Glo Data N5000 -  18.25GB - 30 days', NULL, '5000', '5000', '5000', '1', NULL, 'glo5000', '2022-07-02 19:34:10.000000', '2022-07-02 19:34:10.000000'),
(59, 'glo8000', 'glo-data', 'Glo Data N8000 -  29.5GB - 30 days', NULL, '8000', '8000', '8000', '1', NULL, 'glo8000', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(60, 'glo10000', 'glo-data', 'Glo Data N10000 -  50GB - 30 days', NULL, '10000', '10000', '10000', '1', NULL, 'glo10000', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(61, 'glo15000', 'glo-data', 'Glo Data N15000 -  93GB - 30 days', NULL, '15000', '15000', '15000', '1', NULL, 'glo15000', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(62, 'glo18000', 'glo-data', 'Glo Data N18000 -  119GB - 30 days', NULL, '18000', '18000', '18000', '1', NULL, 'glo18000', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(63, 'glo1500', 'glo-data', 'Glo Data N1500 -  4.1GB - 30 days', NULL, '1500', '1500', '1500', '1', NULL, 'glo1500', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(64, 'glo20000', 'glo-data', 'Glo Data N20000 -  138GB - 30 days', NULL, '20000', '20000', '20000', '1', NULL, 'glo20000', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(65, 'glo50', 'glo-data', 'Glo Data N50 -  500MB - (Night-1 day)', NULL, '50', '50', '50', '1', NULL, 'glo50', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(66, 'glo50x', 'glo-data', 'Glo Data N50 -  50MB - 1 day', NULL, '50', '50', '50', '1', NULL, 'glo50x', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(67, 'glo100x', 'glo-data', 'Glo Data N100 -  1GB - (Night- 5 days)', NULL, '100', '100', '100', '1', NULL, 'glo100x', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(68, 'glo200x', 'glo-data', 'Glo Data N200 - 1.25GB - (Sunday - 1 day)', NULL, '200', '200', '200', '1', NULL, 'glo200x', '2022-07-02 19:34:11.000000', '2022-07-02 19:34:11.000000'),
(69, 'glo1500x', 'glo-data', 'Glo Data N1500 -  7GB - 7 day', NULL, '1500', '1500', '1500', '1', NULL, 'glo1500x', '2022-07-02 19:34:12.000000', '2022-07-02 19:34:12.000000'),
(70, 'a100', 'airtel-data', 'AIRTEL 100MB - Monthly', NULL, '40', '40', '40', '1', NULL, 'a100', '2022-07-02 19:34:23.000000', '2022-07-02 19:34:23.000000'),
(71, 'a300', 'airtel-data', 'AIRTEL 300MB - Monthly', NULL, '120', '120', '120', '1', NULL, 'a300', '2022-07-02 19:34:23.000000', '2022-07-02 19:34:23.000000'),
(72, 'a500', 'airtel-data', 'AIRTEL 500MB - Monthly', NULL, '200', '200', '200', '1', NULL, 'a500', '2022-07-02 19:34:23.000000', '2022-07-02 19:34:23.000000'),
(73, 'a1', 'airtel-data', 'AIRTEL 1GB - Monthly', NULL, '400', '400', '400', '1', NULL, 'a1', '2022-07-02 19:34:23.000000', '2022-07-02 19:34:23.000000'),
(74, 'a2', 'airtel-data', 'AIRTEL 2GB - Monthly', NULL, '800', '800', '800', '1', NULL, 'a2', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(75, 'a5', 'airtel-data', 'AIRTEL 5GB - Monthly', NULL, '2000', '2000', '2000', '1', NULL, 'a5', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(76, 'a10', 'airtel-data', 'AIRTEL 10GB - Monthly', NULL, '3300', '3300', '3300', '1', NULL, 'a10', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(77, 'a15', 'airtel-data', 'AIRTEL 15GB - Monthly', NULL, '4900', '4900', '4900', '1', NULL, 'a15', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(78, 'a20', 'airtel-data', 'AIRTEL 20GB - Monthly', NULL, '6500', '6500', '6500', '1', NULL, 'a20', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(79, 'airt-50', 'airtel-data', 'Airtel Data - 50 Naira - 40MB  - 1Day', NULL, '49.99', '49.99', '49.99', '1', NULL, 'airt-50', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(80, 'airt-100', 'airtel-data', 'Airtel Data - 100 Naira - 100MB - 1Day', NULL, '99', '99', '99', '1', NULL, 'airt-100', '2022-07-02 19:34:24.000000', '2022-07-02 19:34:24.000000'),
(81, 'airt-200', 'airtel-data', 'Airtel Data - 200 Naira - 200MB - 3Days', NULL, '199.03', '199.03', '199.03', '1', NULL, 'airt-200', '2022-07-02 19:34:25.000000', '2022-07-02 19:34:25.000000'),
(82, 'airt-300', 'airtel-data', 'Airtel Data - 300 Naira - 350MB - 7 Days', NULL, '299.02', '299.02', '299.02', '1', NULL, 'airt-300', '2022-07-02 19:34:25.000000', '2022-07-02 19:34:25.000000'),
(83, 'airt-500', 'airtel-data', 'Airtel Data - 500 Naira - 750MB - 14 Days', NULL, '499', '499', '499', '1', NULL, 'airt-500', '2022-07-02 19:34:26.000000', '2022-07-02 19:34:26.000000'),
(84, 'airt-1000', 'airtel-data', 'Airtel Data - 1,000 Naira - 1.5GB - 30 Days', NULL, '999', '999', '999', '1', NULL, 'airt-1000', '2022-07-02 19:34:27.000000', '2022-07-02 19:34:27.000000'),
(85, 'airt-1500', 'airtel-data', 'Airtel Data - 1,500 Naira - 3GB - 30 Days', NULL, '1499.01', '1499.01', '1499.01', '1', NULL, 'airt-1500', '2022-07-02 19:34:27.000000', '2022-07-02 19:34:27.000000'),
(86, 'airt-2000', 'airtel-data', 'Airtel Data - 2,000 Naira - 4.5GB - 30 Days', NULL, '1999', '1999', '1999', '1', NULL, 'airt-2000', '2022-07-02 19:34:28.000000', '2022-07-02 19:34:28.000000'),
(87, 'airt-3000', 'airtel-data', 'Airtel Data - 3,000 Naira - 10GB - 30 Days', NULL, '2999.02', '2999.02', '2999.02', '1', NULL, 'airt-3000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(88, 'airt-4000', 'airtel-data', 'Airtel Data - 4,000 Naira - 11GB - 30 Days', NULL, '3999.01', '3999.01', '3999.01', '1', NULL, 'airt-4000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(89, 'airt-5000', 'airtel-data', 'Airtel Data - 5,000 Naira - 20GB - 30 Days', NULL, '4999', '4999', '4999', '1', NULL, 'airt-5000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(90, 'airt-1500-2', 'airtel-data', 'Airtel Binge - 1,500 Naira (7 Days) - 6GB', NULL, '1499.03', '1499.03', '1499.03', '1', NULL, 'airt-1500-2', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(91, 'airt-10000', 'airtel-data', 'Airtel Data - 10,000 Naira - 40GB - 30 Days', NULL, '9999', '9999', '9999', '1', NULL, 'airt-10000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(92, 'airt-15000', 'airtel-data', 'Airtel Data - 15,000 Naira - 75GB - 30 Days', NULL, '14999', '14999', '14999', '1', NULL, 'airt-15000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(93, 'airt-20000', 'airtel-data', 'Airtel Data - 20,000 Naira - 120GB - 30 Days', NULL, '19999.02', '19999.02', '19999.02', '1', NULL, 'airt-20000', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(94, 'airt-300x', 'airtel-data', 'Airtel Data - 300 Naira - 1GB - 1 day', NULL, '299.03', '299.03', '299.03', '1', NULL, 'airt-300x', '2022-07-02 19:34:29.000000', '2022-07-02 19:34:29.000000'),
(95, 'airt-500x', 'airtel-data', 'Airtel Data - 500 Naira - 2GB - 1 days', NULL, '499.03', '499.03', '499.03', '1', NULL, 'airt-500x', '2022-07-02 19:34:30.000000', '2022-07-02 19:34:30.000000'),
(96, 'airt-1200', 'airtel-data', 'Airtel Data - 1,200 Naira - 2GB - 30 Days', NULL, '1199', '1199', '1199', '1', NULL, 'airt-1200', '2022-07-02 19:34:30.000000', '2022-07-02 19:34:30.000000'),
(97, 'airt-2500', 'airtel-data', 'Airtel Data - 2,500 Naira - 6GB - 30 Days', NULL, '2499.01', '2499.01', '2499.01', '1', NULL, 'airt-2500', '2022-07-02 19:34:30.000000', '2022-07-02 19:34:30.000000'),
(98, 'airt-30000', 'airtel-data', 'Airtel Data - 30,000 Naira - 200GB - 30 Days', NULL, '29999.02', '29999.02', '29999.02', '1', NULL, 'airt-30000', '2022-07-02 19:34:30.000000', '2022-07-02 19:34:30.000000'),
(99, 'eti-100', 'etisalat-data', '9mobile 100MB - 100 Naira - 1 day', NULL, '100', '100', '100', '1', NULL, 'eti-100', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(100, 'eti-200', 'etisalat-data', '9mobile 650MB - 200 Naira - 1 day', NULL, '200', '200', '200', '1', NULL, 'eti-200', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(101, 'eti-500', 'etisalat-data', '9mobile 500MB - 500 Naira - 30 Days', NULL, '500', '500', '500', '1', NULL, 'eti-500', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(102, 'eti-1000', 'etisalat-data', '9mobile 1.5GB - 1,000 Naira - 30 days', NULL, '1000', '1000', '1000', '1', NULL, 'eti-1000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(103, 'eti-4000', 'etisalat-data', '9mobile 11GB - 4,000 Naira - 30 days', NULL, '4000', '4000', '4000', '1', NULL, 'eti-4000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(104, 'eti-2000', 'etisalat-data', '9mobile 4.5GB - 2000 Naira - 30 Days', NULL, '2000', '2000', '2000', '1', NULL, 'eti-2000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(105, 'eti-5000', 'etisalat-data', '9mobile 15GB - 5,000 Naira - 30 Days', NULL, '5000', '5000', '5000', '1', NULL, 'eti-5000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(106, 'eti-10000', 'etisalat-data', '9mobile 40GB - 10,000 Naira - 30 days', NULL, '10000', '10000', '10000', '1', NULL, 'eti-10000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(107, 'eti-15000', 'etisalat-data', '9mobile 75GB - 15,000 Naira - 30 Days', NULL, '15000', '15000', '15000', '1', NULL, 'eti-15000', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(108, 'eti-1200', 'etisalat-data', '9mobile 2GB - 1,200 Naira - 30 Days', NULL, '1200', '1200', '1200', '1', NULL, 'eti-1200', '2022-07-02 19:34:47.000000', '2022-07-02 19:34:47.000000'),
(109, 'eti-50', 'etisalat-data', '9mobile 25MB - 50 Naira - 1 day', NULL, '50', '50', '50', '1', NULL, 'eti-50', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(110, 'eti-84992', 'etisalat-data', '9mobile 100GB - 84,992 Naira - 100 days', NULL, '84992', '84992', '84992', '1', NULL, 'eti-84992', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(111, 'eti-1500', 'etisalat-data', '9mobile 7GB - 1,500 Naira - 7 days', NULL, '1500', '1500', '1500', '1', NULL, 'eti-1500', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(112, 'eti-25000', 'etisalat-data', '9mobile 75GB - 25,000 Naira - 90 days', NULL, '25000', '25000', '25000', '1', NULL, 'eti-25000', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(113, 'eti-50000', 'etisalat-data', '9mobile 165GB - 50,000 Naira - 180 days', NULL, '50000', '50000', '50000', '1', NULL, 'eti-50000', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(114, 'eti-100000', 'etisalat-data', '9mobile 365GB - 100,000 Naira - 365 days', NULL, '100000', '100000', '100000', '1', NULL, 'eti-100000', '2022-07-02 19:34:48.000000', '2022-07-02 19:34:48.000000'),
(115, 'dstv-padi', 'dstv', 'DStv Padi N2,150', 'dstv-padi', '2150.00', '2150.00', '2150.00', '1', NULL, 'dstv-padi', '2022-07-12 13:41:40.000000', '2022-07-12 13:41:40.000000'),
(116, 'dstv-yanga', 'dstv', 'DStv Yanga N2,950', 'dstv-yanga', '2950.00', '2950.00', '2950.00', '1', NULL, 'dstv-yanga', '2022-07-12 13:41:42.000000', '2022-07-12 13:41:42.000000'),
(117, 'dstv-confam', 'dstv', 'Dstv Confam N5,300', 'dstv-confam', '5300.00', '5300.00', '5300.00', '1', NULL, 'dstv-confam', '2022-07-12 13:41:42.000000', '2022-07-12 13:41:42.000000'),
(118, 'dstv79', 'dstv', 'DStv  Compact N9,000', 'dstv79', '9000.00', '9000.00', '9000.00', '1', NULL, 'dstv79', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(119, 'dstv3', 'dstv', 'DStv Premium N21,000', 'dstv3', '21000.00', '21000.00', '21000.00', '1', NULL, 'dstv3', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(120, 'dstv6', 'dstv', 'DStv Asia N7,100', 'dstv6', '7100.00', '7100.00', '7100.00', '1', NULL, 'dstv6', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(121, 'dstv7', 'dstv', 'DStv Compact Plus N14,250', 'dstv7', '14250.00', '14250.00', '14250.00', '1', NULL, 'dstv7', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(122, 'dstv9', 'dstv', 'DStv Premium-French N29,300', 'dstv9', '29300.00', '29300.00', '29300.00', '1', NULL, 'dstv9', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(123, 'dstv10', 'dstv', 'DStv Premium-Asia N23,500', 'dstv10', '23500.00', '23500.00', '23500.00', '1', NULL, 'dstv10', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(124, 'confam-extra', 'dstv', 'DStv Confam + ExtraView N8,200', 'confam-extra', '8200.00', '8200.00', '8200.00', '1', NULL, 'confam-extra', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(125, 'yanga-extra', 'dstv', 'DStv Yanga + ExtraView N5,850', 'yanga-extra', '5850.00', '5850.00', '5850.00', '1', NULL, 'yanga-extra', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(126, 'padi-extra', 'dstv', 'DStv Padi + ExtraView N5,050', 'padi-extra', '5050.00', '5050.00', '5050.00', '1', NULL, 'padi-extra', '2022-07-12 13:41:43.000000', '2022-07-12 13:41:43.000000'),
(127, 'com-asia', 'dstv', 'DStv Compact + Asia N16,100', 'com-asia', '16100.00', '16100.00', '16100.00', '1', NULL, 'com-asia', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(128, 'dstv30', 'dstv', 'DStv Compact + Extra View N11,900', 'dstv30', '11900.00', '11900.00', '11900.00', '1', NULL, 'dstv30', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(129, 'com-frenchtouch', 'dstv', 'DStv Compact + French Touch N11,650', 'com-frenchtouch', '11650.00', '11650.00', '11650.00', '1', NULL, 'com-frenchtouch', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(130, 'dstv33', 'dstv', 'DStv Premium + Extra View N23,900', 'dstv33', '23900.00', '23900.00', '23900.00', '1', NULL, 'dstv33', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(131, 'dstv40', 'dstv', 'DStv Compact Plus + Asia N21,350', 'dstv40', '21350.00', '21350.00', '21350.00', '1', NULL, 'dstv40', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(132, 'com-frenchtouch-extra', 'dstv', 'DStv Compact + French Touch + ExtraView N14,550', 'com-frenchtouch-extra', '14550.00', '14550.00', '14550.00', '1', NULL, 'com-frenchtouch-extra', '2022-07-12 13:41:44.000000', '2022-07-12 13:41:44.000000'),
(133, 'com-asia-extra', 'dstv', 'DStv Compact + Asia + ExtraView N19,000', 'com-asia-extra', '19000.00', '19000.00', '19000.00', '1', NULL, 'com-asia-extra', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(134, 'dstv43', 'dstv', 'DStv Compact Plus + French Plus N23,550', 'dstv43', '23550.00', '23550.00', '23550.00', '1', NULL, 'dstv43', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(135, 'complus-frenchtouch', 'dstv', 'DStv Compact Plus + French Touch N16,900', 'complus-frenchtouch', '16900.00', '16900.00', '16900.00', '1', NULL, 'complus-frenchtouch', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(136, 'dstv45', 'dstv', 'DStv Compact Plus + Extra View N17,150', 'dstv45', '17150.00', '17150.00', '17150.00', '1', NULL, 'dstv45', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(137, 'complus-french-extraview', 'dstv', 'DStv Compact Plus + FrenchPlus + Extra View N26,450', 'complus-french-extraview', '26450.00', '26450.00', '26450.00', '1', NULL, 'complus-french-extraview', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(138, 'dstv47', 'dstv', 'DStv Compact + French Plus N18,300', 'dstv47', '18300.00', '18300.00', '18300.00', '1', NULL, 'dstv47', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(139, 'dstv48', 'dstv', 'DStv Compact Plus + Asia + ExtraView N24,250', 'dstv48', '24250.00', '24250.00', '24250.00', '1', NULL, 'dstv48', '2022-07-12 13:41:45.000000', '2022-07-12 13:41:45.000000'),
(140, 'dstv61', 'dstv', 'DStv Premium + Asia + Extra View N31,000', 'dstv61', '31000.00', '31000.00', '31000.00', '1', NULL, 'dstv61', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(141, 'dstv62', 'dstv', 'DStv Premium + French + Extra View N28,000', 'dstv62', '28000.00', '28000.00', '28000.00', '1', NULL, 'dstv62', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(142, 'dstv-cplus-movie-addon', 'dstv', 'DStv Compact Plus Movie Bundle Add-on E36 - N2,500', 'dstv-cplus-movie-addon', '2500.00', '2500.00', '2500.00', '1', NULL, 'dstv-cplus-movie-addon', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(143, 'frenchplus-addon', 'dstv', 'DStv French Plus Add-on N9,300', 'frenchplus-addon', '9300.00', '9300.00', '9300.00', '1', NULL, 'frenchplus-addon', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(144, 'asia-addon', 'dstv', 'DStv Asian Add-on N7,100', 'asia-addon', '7100.00', '7100.00', '7100.00', '1', NULL, 'asia-addon', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(145, 'dstv-movie-addon', 'dstv', 'DStv Movie Bundle Add-on E36 - N2,500', 'dstv-movie-addon', '2500.00', '2500.00', '2500.00', '1', NULL, 'dstv-movie-addon', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(146, 'frenchtouch-addon', 'dstv', 'DStv French Touch Add-on N2,650', 'frenchtouch-addon', '2650.00', '2650.00', '2650.00', '1', NULL, 'frenchtouch-addon', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(147, 'extraview-access', 'dstv', 'ExtraView Access N2,900', 'extraview-access', '2900.00', '2900.00', '2900.00', '1', NULL, 'extraview-access', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(148, 'french11', 'dstv', 'DStv French 11 N4,100', 'french11', '4100.00', '4100.00', '4100.00', '1', NULL, 'french11', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(149, 'gotv-max', 'gotv', 'GOtv Max N4,150', 'gotv-max', '4150.00', '4150.00', '4150.00', '1', NULL, 'gotv-max', '2022-07-12 13:41:46.000000', '2022-07-12 13:41:46.000000'),
(150, 'gotv-jolli', 'gotv', 'GOtv Jolli N2,800', 'gotv-jolli', '2800.00', '2800.00', '2800.00', '1', NULL, 'gotv-jolli', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(151, 'gotv-jinja', 'gotv', 'GOtv Jinja N1,900', 'gotv-jinja', '1900.00', '1900.00', '1900.00', '1', NULL, 'gotv-jinja', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(152, 'gotv-smallie', 'gotv', 'GOtv Smallie - monthly N900', 'gotv-smallie', '900.00', '900.00', '900.00', '1', NULL, 'gotv-smallie', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(153, 'gotv-smallie-3months', 'gotv', 'GOtv Smallie - quarterly N2,400', 'gotv-smallie-3months', '2400.00', '2400.00', '2400.00', '1', NULL, 'gotv-smallie-3months', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(154, 'gotv-smallie-1year', 'gotv', 'GOtv Smallie - yearly N7,000', 'gotv-smallie-1year', '7000.00', '7000.00', '7000.00', '1', NULL, 'gotv-smallie-1year', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(155, 'gotv-supa', 'gotv', 'GOtv Supa - monthly N5,500', 'gotv-supa', '5500.00', '5500.00', '5500.00', '1', NULL, 'gotv-supa', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(156, 'nova', 'startimes', 'Nova - 900 Naira - 1 Month', 'nova', '900.00', '900.00', '900.00', '1', NULL, 'nova', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(157, 'basic', 'startimes', 'Basic (Antenna) - 1,850 Naira - 1 Month', 'basic', '1850.00', '1850.00', '1850.00', '1', NULL, 'basic', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(158, 'smart', 'startimes', 'Smart (Dish) - 2,600 Naira - 1 Month', 'smart', '2600.00', '2600.00', '2600.00', '1', NULL, 'smart', '2022-07-12 13:41:47.000000', '2022-07-12 13:41:47.000000'),
(159, 'classic', 'startimes', 'Classic (Antenna) - 2,750 Naira - 1 Month', 'classic', '2750.00', '2750.00', '2750.00', '1', NULL, 'classic', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(160, 'super', 'startimes', 'Super (Dish) - 4,900 Naira - 1 Month', 'super', '4900.00', '4900.00', '4900.00', '1', NULL, 'super', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(161, 'nova-weekly', 'startimes', 'Nova - 300 Naira - 1 Week', 'nova-weekly', '300.00', '300.00', '300.00', '1', NULL, 'nova-weekly', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(162, 'basic-weekly', 'startimes', 'Basic (Antenna) - 600 Naira - 1 Week', 'basic-weekly', '600.00', '600.00', '600.00', '1', NULL, 'basic-weekly', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(163, 'smart-weekly', 'startimes', 'Smart (Dish) - 700 Naira - 1 Week', 'smart-weekly', '700.00', '700.00', '700.00', '1', NULL, 'smart-weekly', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(164, 'classic-weekly', 'startimes', 'Classic (Antenna) - 1200 Naira - 1 Week ', 'classic-weekly', '1200.00', '1200.00', '1200.00', '1', NULL, 'classic-weekly', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(165, 'super-weekly', 'startimes', 'Super (Dish) - 1,500 Naira - 1 Week', 'super-weekly', '1500.00', '1500.00', '1500.00', '1', NULL, 'super-weekly', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(166, 'nova-daily', 'startimes', 'Nova - 90 Naira - 1 Day', 'nova-daily', '90.00', '90.00', '90.00', '1', NULL, 'nova-daily', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(167, 'basic-daily', 'startimes', 'Basic (Antenna) - 160 Naira - 1 Day', 'basic-daily', '160.00', '160.00', '160.00', '1', NULL, 'basic-daily', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(168, 'smart-daily', 'startimes', 'Smart (Dish) - 200 Naira - 1 Day', 'smart-daily', '200.00', '200.00', '200.00', '1', NULL, 'smart-daily', '2022-07-12 13:41:48.000000', '2022-07-12 13:41:48.000000'),
(169, 'classic-daily', 'startimes', 'Classic (Antenna) - 320 Naira - 1 Day ', 'classic-daily', '320.00', '320.00', '320.00', '1', NULL, 'classic-daily', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(170, 'super-daily', 'startimes', 'Super (Dish) - 400 Naira - 1 Day', 'super-daily', '400.00', '400.00', '400.00', '1', NULL, 'super-daily', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(171, 'ewallet', 'startimes', 'ewallet Amount', 'ewallet', '0.00', '0.00', '0.00', '1', NULL, 'ewallet', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(172, 'full', 'showmax', 'Full - N2,900', 'full', '2900.00', '2900.00', '2900.00', '1', NULL, 'full', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(173, 'mobile_only', 'showmax', 'Mobile Only - N1,450', 'mobile_only', '1450.00', '1450.00', '1450.00', '1', NULL, 'mobile_only', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(174, 'sports_full', 'showmax', 'Sports Full - N6,300', 'sports_full', '6300.00', '6300.00', '6300.00', '1', NULL, 'sports_full', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000'),
(175, 'sports_mobile_only', 'showmax', 'Sports Mobile Only - N3,200', 'sports_mobile_only', '3200.00', '3200.00', '3200.00', '1', NULL, 'sports_mobile_only', '2022-07-12 13:41:49.000000', '2022-07-12 13:41:49.000000');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT '1',
  `username` varchar(200) NOT NULL,
  `payment_ref` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `iwallet` varchar(200) NOT NULL,
  `fwallet` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `status`, `username`, `payment_ref`, `amount`, `iwallet`, `fwallet`, `date`, `created_at`, `updated_at`) VALUES
(1, '1', '12f2b2b0940c849166903a5f7ffbe26c', '8951804662', '1000', '0', '1000', '2021-09-03 20:14:36', NULL, NULL),
(2, '1', '257383cce19778b4562b5f5c119f5233', '2145635\r\n55', '200', '0', '200', '2021-09-03 20:30:24', NULL, NULL),
(3, '1', '524417c188449469af9bff10102e765d', '7415633441', '200', '0', '200', '2021-09-03 20:34:01', NULL, NULL),
(4, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6734031235', '1000', '900', '1900', '2021-09-03 21:11:00', NULL, NULL),
(5, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20210903220125|010385', '100.00', '100', '200', '2021-09-03 21:14:59', NULL, NULL),
(6, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|45|20210903220231|010434', '1000.00', '1900', '2900', '2021-09-03 21:16:13', NULL, NULL),
(7, '1', '524417c188449469af9bff10102e765d', '3939374118', '200', '100', '300', '2021-09-03 21:24:04', NULL, NULL),
(8, '1', '524417c188449469af9bff10102e765d', 'MNFY|36|20210903212901|009902', '200.00', '300', '500', '2021-09-03 21:24:41', NULL, NULL),
(9, '1', '524417c188449469af9bff10102e765d', 'charge_.9261535091', '200', '500', '300', '2021-09-03 21:28:16', NULL, NULL),
(10, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|45|20210903223523|010707', '100.00', '200', '300', '2021-09-03 21:35:24', NULL, NULL),
(11, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|36|20210903225022|010642', '100.00', '2900', '3000', '2021-09-03 22:00:31', NULL, NULL),
(12, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|20|20210903230501|006020', '100.00', '3000', '3100', '2021-09-03 22:05:03', NULL, NULL),
(13, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210904181940|003624', '30.00', '40', '70', '2021-09-04 18:13:27', NULL, NULL),
(14, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210904181940|0036241', '30.00', '70', '100', '2021-09-04 18:32:06', NULL, NULL),
(15, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210904181940|00362412', '30.00', '100', '130', '2021-09-04 18:33:00', NULL, NULL),
(16, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210905003452|006368', '50.00', '30', '80', '2021-09-04 23:34:54', NULL, NULL),
(17, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|85|20210905003850|006865', '30.00', '80', '110', '2021-09-04 23:38:54', NULL, NULL),
(18, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|52|20210906193548|014591', '600.00', '110', '710', '2021-09-06 19:06:17', NULL, NULL),
(19, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|77|20210907182023|033458', '200.00', '190', '390', '2021-09-07 17:20:26', NULL, NULL),
(20, '1', 'fb0a79856a84e9c61aa65c141e2f74f2', '8891010810', '100', '0', '100', '2021-09-07 21:28:40', NULL, NULL),
(21, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20210908001947|026341', '50.00', '130', '180', '2021-09-07 23:19:51', NULL, NULL),
(22, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|52|20210908003018|028569', '100.00', '1380', '1480', '2021-09-07 23:30:22', NULL, NULL),
(23, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|77|20210908144349|042463', '150', '80', '230', '2021-09-08 13:49:03', NULL, NULL),
(24, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|52|20210908145352|034131', '49', '230', '280', '2021-09-08 13:53:55', NULL, NULL),
(25, '1', '51ffbecadd7bdebe00ec3c2549108b82', '4867096245', '4900', '0', '4900', '2021-09-09 14:00:56', NULL, NULL),
(26, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|52|20210910043918|050974', '98', '79', '179', '2021-09-10 03:39:23', NULL, NULL),
(27, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|48|20210910203123|060273', '98', '77', '177', '2021-09-10 19:31:25', NULL, NULL),
(28, '1', 'fb0a79856a84e9c61aa65c141e2f74f2', '7365688954', '490', '0', '490', '2021-09-10 21:52:51', NULL, NULL),
(29, '1', '257383cce19778b4562b5f5c119f5233', '7380052386', '200', '75', '275', '2021-09-11 19:38:28', NULL, NULL),
(30, '1', '51ffbecadd7bdebe00ec3c2549108b82', '5286662719', '520', '2880', '3400', '2021-09-15 05:39:53', NULL, NULL),
(31, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9829832654', '260', '240', '500', '2021-09-15 05:43:17', NULL, NULL),
(32, '1', 'fb0a79856a84e9c61aa65c141e2f74f2', '1548914189', '298', '20', '318', '2021-09-15 19:06:11', NULL, NULL),
(33, '1', '257383cce19778b4562b5f5c119f5233', '500161176', '300', '0', '300', '2021-09-17 11:29:45', NULL, NULL),
(34, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.9284213731', '6', '200', '194', '2021-09-17 11:44:42', NULL, NULL),
(35, '1', '257383cce19778b4562b5f5c119f5233', '1316062836', '6', '194', '200', '2021-09-18 11:51:29', NULL, NULL),
(36, '1', '4d3ce28d253c0564b9a17ca9e0f89e63', 'MNFY|26|20210918125337|014434', '980', '0', '1000', '2021-09-18 11:53:41', NULL, NULL),
(37, '1', '257383cce19778b4562b5f5c119f5233', '5283353378', '100', '0', '100', '2021-09-18 12:23:12', NULL, NULL),
(38, '1', '82515e08f367f7237393a2faffa7f1b6', '3782158622', '1274', '0', '1274', '2021-09-19 13:47:21', NULL, NULL),
(39, '1', '82515e08f367f7237393a2faffa7f1b6', '4993623913', '26', '1274', '1300', '2021-09-19 13:54:52', NULL, NULL),
(40, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7609599940', '300', '200', '500', '2021-09-20 20:24:18', NULL, NULL),
(41, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1116120144', '100', '240', '340', '2021-09-20 20:52:17', NULL, NULL),
(43, '1', '257383cce19778b4562b5f5c119f5233', '9590628536', '100', '0', '100', '2021-09-21 07:44:06', NULL, NULL),
(45, '1', '257383cce19778b4562b5f5c119f5233', '8728418532', '100', '0', '100', '2021-09-21 08:06:24', NULL, NULL),
(46, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9890474826', '2000', '80', '2080', '2021-09-21 10:47:07', NULL, NULL),
(47, '1', '257383cce19778b4562b5f5c119f5233', '6245270313', '100', '0', '100', '2021-09-21 10:59:46', NULL, NULL),
(48, '1', '257383cce19778b4562b5f5c119f5233', '2184276609', '100', '100', '200', '2021-09-21 11:06:42', NULL, NULL),
(49, '1', '257383cce19778b4562b5f5c119f5233', '6399644613', '100', '200', '300', '2021-09-21 11:11:30', NULL, NULL),
(50, '1', '257383cce19778b4562b5f5c119f5233', '9590338526', '100', '300', '400', '2021-09-21 11:18:18', NULL, NULL),
(51, '1', '257383cce19778b4562b5f5c119f5233', '9405084045', '100', '400', '500', '2021-09-21 11:25:32', NULL, NULL),
(52, '1', '257383cce19778b4562b5f5c119f5233', '1991446903', '100', '500', '600', '2021-09-21 11:27:45', NULL, NULL),
(53, '1', '257383cce19778b4562b5f5c119f5233', '2444777182', '100', '600', '700', '2021-09-21 11:30:16', NULL, NULL),
(54, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.8715914367', '700', '700', '0', '2021-09-21 11:37:46', NULL, NULL),
(55, '1', '257383cce19778b4562b5f5c119f5233', '1507808905', '100', '0', '100', '2021-09-21 11:52:42', NULL, NULL),
(56, '1', '257383cce19778b4562b5f5c119f5233', '8521400594', '200', '100', '300', '2021-09-21 11:55:56', NULL, NULL),
(57, '1', '257383cce19778b4562b5f5c119f5233', '5629923360', '100', '300', '400', '2021-09-21 11:58:20', NULL, NULL),
(58, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.4566278954', '50', '400', '350', '2021-09-21 12:15:09', NULL, NULL),
(59, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.3885083525', '100', '350', '250', '2021-09-21 12:16:35', NULL, NULL),
(60, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.1358654755', '250', '250', '0', '2021-09-21 12:17:57', NULL, NULL),
(61, '1', '257383cce19778b4562b5f5c119f5233', '1790605601', '100', '0', '100', '2021-09-21 12:30:25', NULL, NULL),
(63, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '591375755', '1500', '0', '1500', '2021-09-26 11:17:33', NULL, NULL),
(64, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.2361934354', '30', '1090', '1060', '2021-09-26 14:32:50', NULL, NULL),
(65, '1', '6347bc35301c9cfea53ac139fb557c15', '3789954926', '980', '0', '980', '2021-09-29 09:39:17', NULL, NULL),
(66, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9790286885', '1000', '20', '1020', '2021-09-29 13:40:48', NULL, NULL),
(67, '1', '6347bc35301c9cfea53ac139fb557c15', '7440811474', '490', '460', '950', '2021-09-30 19:44:21', NULL, NULL),
(68, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '508296318', '2000', '360', '2360', '2021-10-01 18:16:48', NULL, NULL),
(69, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '509172750', '1000', '360', '1360', '2021-10-03 12:43:01', NULL, NULL),
(70, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.6887412725', '20', '1360', '1340', '2021-10-03 13:00:30', NULL, NULL),
(71, '1', 'c39b76e177924d72b664a5ff77cc5ee3', '5583980104', '1325', '0', '1325', '2021-10-04 12:00:11', NULL, NULL),
(72, '1', 'c39b76e177924d72b664a5ff77cc5ee3', 'charge_.2556331770', '20', '25', '5', '2021-10-04 12:30:16', NULL, NULL),
(73, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '509875151', '2000', '760', '2760', '2021-10-04 18:52:59', NULL, NULL),
(74, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.7632600677', '50', '760', '710', '2021-10-04 19:12:35', NULL, NULL),
(75, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9129801669', '2000', '0', '2000', '2021-10-04 19:22:49', NULL, NULL),
(76, '1', '51ffbecadd7bdebe00ec3c2549108b82', '1750562584', '4500', '40', '4540', '2021-10-06 08:25:37', NULL, NULL),
(77, '1', '51ffbecadd7bdebe00ec3c2549108b82', '4725332711', '450', '4280', '4730', '2021-10-06 08:39:39', NULL, NULL),
(78, '1', '51ffbecadd7bdebe00ec3c2549108b82', 'charge_.8343905963', '50', '4330', '4280', '2021-10-07 10:54:58', NULL, NULL),
(79, '1', '0dc345d62afafaad3e5fec8a4e532502', '2075768253', '850', '0', '850', '2021-10-08 16:32:15', NULL, NULL),
(80, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '512213186', '1500', '250', '1750', '2021-10-09 18:20:35', NULL, NULL),
(81, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.6450853409', '50', '1490', '1440', '2021-10-09 18:31:13', NULL, NULL),
(82, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9287500443', '2000', '351', '2351', '2021-10-11 11:11:58', NULL, NULL),
(83, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '513558348', '1000', '910', '1910', '2021-10-12 18:26:52', NULL, NULL),
(84, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.6037274466', '50', '911', '861', '2021-10-12 18:31:41', NULL, NULL),
(85, '1', '257383cce19778b4562b5f5c119f5233', '7118277446', '100', '0', '100', '2021-10-15 08:47:02', NULL, NULL),
(86, '1', '257383cce19778b4562b5f5c119f5233', '7250575849', '100', '200', '300', '2021-10-16 13:32:14', NULL, NULL),
(87, '1', '57927fc580495a2e8937c3bf08e777bd1d6e6f56b606819e7734269660b3004d', '9380495477', '430', '0', '430', '2021-10-17 19:19:25', NULL, NULL),
(88, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|42|20211018215728|058887', '1078', '100', '1200', '2021-10-18 20:57:31', NULL, NULL),
(89, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7980208636', '500', '131', '631', '2021-10-19 04:12:17', NULL, NULL),
(90, '1', '974baa98c081756cce58577d2abb86fa', '2023168317', '520', '0', '520', '2021-10-20 08:00:09', NULL, NULL),
(91, '1', '12f2b2b0940c849166903a5f7ffbe26c', '5682450392', '500', '171', '671', '2021-10-20 08:18:35', NULL, NULL),
(92, '1', '12f2b2b0940c849166903a5f7ffbe26c', '5256472751', '2000', '411', '2411', '2021-10-20 11:44:24', NULL, NULL),
(93, '1', '257383cce19778b4562b5f5c119f5233', '6326399404', '500', '18', '518', '2021-10-20 21:34:49', NULL, NULL),
(94, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '517511556', '1000', '241', '1241', '2021-10-20 21:49:54', NULL, NULL),
(95, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.4297786470', '70', '981', '911', '2021-10-20 21:58:04', NULL, NULL),
(96, '1', '257383cce19778b4562b5f5c119f5233', '3728709171', '500', '8', '508', '2021-10-21 22:56:13', NULL, NULL),
(97, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3563250592', '200', '1211', '1411', '2021-10-22 05:58:40', NULL, NULL),
(98, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'charge_.4909843131', '1341', '1341', '0', '2021-10-22 06:05:21', NULL, NULL),
(99, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3104780055', '1500', '0', '1500', '2021-10-22 06:06:03', NULL, NULL),
(100, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|32|20211022091203|099675', '30', '438', '538', '2021-10-22 08:12:08', NULL, NULL),
(101, '1', '0dc345d62afafaad3e5fec8a4e532502', '9352669840', '1000', '130', '1130', '2021-10-26 13:08:56', NULL, NULL),
(102, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '7343565531', '1000', '51', '1051', '2021-10-27 06:03:07', NULL, NULL),
(103, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9915322884', '2000', '90', '2090', '2021-10-27 10:52:46', NULL, NULL),
(104, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', '9619877731', '1900', '0', '1900', '2021-10-27 19:49:27', NULL, NULL),
(105, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|33|20211028133540|177471', '1000', '18', '1088', '2021-10-28 12:35:44', NULL, NULL),
(106, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|42|20211028233103|184508', '1000', '38', '1108', '2021-10-28 22:31:06', NULL, NULL),
(107, '1', '12f2b2b0940c849166903a5f7ffbe26c', '4627333246', '1000', '0', '1000', '2021-10-29 10:05:50', NULL, NULL),
(108, '1', '12f2b2b0940c849166903a5f7ffbe26c', '5307308679', '3000', '170', '3170', '2021-10-29 15:46:57', NULL, NULL),
(109, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '5468869734', '1000', '501', '1501', '2021-10-29 16:33:05', NULL, NULL),
(110, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|15|20211029175916|009034', '930', '911', '1911', '2021-10-29 16:59:20', NULL, NULL),
(111, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.4679513983', '930', '1841', '911', '2021-10-29 17:06:07', NULL, NULL),
(112, '1', 'ab89b6b12992c5bba69fa20dad9861b4', 'MNFY|82|20211030134234|006110', '330', '0', '400', '2021-10-30 12:42:40', NULL, NULL),
(113, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|94|20211030211803|011874', '1000', '38', '1108', '2021-10-30 20:18:08', NULL, NULL),
(114, '1', '6347bc35301c9cfea53ac139fb557c15', 'MNFY|69|20211031175614|019249', '930', '170', '1170', '2021-10-31 16:56:17', NULL, NULL),
(115, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|53|20211031204532|021215', '1930', '911', '2911', '2021-10-31 19:45:36', NULL, NULL),
(116, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9624443687', '100', '240', '340', '2021-11-02 18:49:13', NULL, NULL),
(117, '1', '257383cce19778b4562b5f5c119f5233', '2942419201', '100', '8', '108', '2021-11-02 19:44:11', NULL, NULL),
(118, '1', 'c9a2fea4f6d710975c4e2ca10be8f103', '2993295225', '100', '0', '100', '2021-11-02 19:55:21', NULL, NULL),
(119, '1', '38b3acd691201db112358dfbd1554aac', '7456011349', '70', '1930', '2000', '2021-11-02 20:18:51', NULL, NULL),
(120, '1', '38b3acd691201db112358dfbd1554aac', 'MY5444433255', '2930', '0', '2930', '2021-11-02 20:38:37', NULL, NULL),
(121, '1', 'fda281ac85cbac3a3fa61fee1f9ff09a', 'MNFY|84|20211103112510|014200', '2130', '', '2200', '2021-11-03 10:25:14', NULL, NULL),
(122, '1', '38b3acd691201db112358dfbd1554aac', '9123007311', '2200', '1930', '4130', '2021-11-03 10:31:41', NULL, NULL),
(123, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1319561381', '2000', '170', '2170', '2021-11-03 16:07:11', NULL, NULL),
(124, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|94|20211103200529|062984', '800', '8', '878', '2021-11-03 19:05:34', NULL, NULL),
(125, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|84|20211104135328|030850', '1930', '236', '2236', '2021-11-04 12:53:33', NULL, NULL),
(126, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'charge_.2911473156', '3', '1159', '1156', '2021-11-04 15:37:58', NULL, NULL),
(127, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|26|20211105101626|002836', '800', '3', '873', '2021-11-05 09:16:31', NULL, NULL),
(128, '1', '38b3acd691201db112358dfbd1554aac', 'MNFY|49|20211105200219|011029', '530', '0', '600', '2021-11-05 19:02:21', NULL, NULL),
(129, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|19|20211106082157|001647', '480', '148', '698', '2021-11-06 07:22:01', NULL, NULL),
(130, '1', 'b4e45b037d13dbce472696fc64873397', 'MNFY|65|20211106184203|009909', '1930', '0', '2000', '2021-11-06 17:42:06', NULL, NULL),
(131, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1699713369', '1500', '35', '1535', '2021-11-06 21:13:47', NULL, NULL),
(132, '1', '12f2b2b0940c849166903a5f7ffbe26c', '2640510623', '1500', '190', '1690', '2021-11-06 21:21:50', NULL, NULL),
(133, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'MNFY|12|20211107120906|015769', '930', '0', '1000', '2021-11-07 11:09:09', NULL, NULL),
(134, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6389817694', '500', '45', '545', '2021-11-07 18:36:04', NULL, NULL),
(135, '1', '38b3acd691201db112358dfbd1554aac', '6087405515', '400', '30', '430', '2021-11-07 22:09:51', NULL, NULL),
(136, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|19|20211109001605|037089', '500', '0', '570', '2021-11-08 23:16:09', NULL, NULL),
(137, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|65|20211109003909|040346', '100', '400', '570', '2021-11-08 23:39:12', NULL, NULL),
(138, '1', '257383cce19778b4562b5f5c119f5233', '5923479174', '270', '300', '570', '2021-11-09 09:11:30', NULL, NULL),
(139, '1', '257383cce19778b4562b5f5c119f5233', '6824610978', '70', '500', '570', '2021-11-09 09:34:19', NULL, NULL),
(140, '1', '257383cce19778b4562b5f5c119f5233', '4977726981', '70', '500', '570', '2021-11-09 10:36:41', NULL, NULL),
(141, '1', '38b3acd691201db112358dfbd1554aac', 'MNFY|65|20211109204155|053782', '930', '105', '1105', '2021-11-09 19:41:59', NULL, NULL),
(142, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7792276562', '2000', '75', '2075', '2021-11-10 15:55:03', NULL, NULL),
(143, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7744263874', '1000', '105', '1105', '2021-11-11 12:11:29', NULL, NULL),
(144, '1', 'fb0a79856a84e9c61aa65c141e2f74f2', '4280492866', '1300', '58', '1358', '2021-11-11 18:28:38', NULL, NULL),
(145, '1', '38b3acd691201db112358dfbd1554aac', '5316473270', '8000', '35', '8035', '2021-11-12 07:52:11', NULL, NULL),
(146, '1', '38b3acd691201db112358dfbd1554aac', 'charge_.7770736681', '30', '7965', '7935', '2021-11-12 08:03:36', NULL, NULL),
(147, '1', 'fb0a79856a84e9c61aa65c141e2f74f2', '1507680146', '100', '768', '868', '2021-11-12 08:48:44', NULL, NULL),
(148, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', '8843947462', '600', '20', '620', '2021-11-12 16:31:16', NULL, NULL),
(149, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '6255354765', '2000', '391', '2391', '2021-11-13 12:55:10', NULL, NULL),
(150, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210904181940|003624', '-40', '0', '30', '2021-11-13 15:50:58', NULL, NULL),
(151, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|96|20210904181940|00', '330', '-40', '360', '2021-11-13 15:57:24', NULL, NULL),
(152, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20211113170749|109378', '180', '290', '540', '2021-11-13 16:32:11', NULL, NULL),
(153, '1', '38b3acd691201db112358dfbd1554aac', '1435752664', '1060', '6935', '7995', '2021-11-13 17:43:06', NULL, NULL),
(154, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20211113170749|109378', '180', '470', '720', '2021-11-13 17:59:55', NULL, NULL),
(155, '1', '38b3acd691201db112358dfbd1554aac', 'MNFY|65|20211113184034|112690', '990', '7925', '8985', '2021-11-13 18:11:42', NULL, NULL),
(156, '1', '38b3acd691201db112358dfbd1554aac', 'charge_.5767139473', '990', '8915', '7925', '2021-11-13 18:13:26', NULL, NULL),
(157, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|50|20211113192240|112300', '230', '60', '360', '2021-11-13 19:05:30', NULL, NULL),
(158, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|65|20211113200941|113983', '250', '650', '970', '2021-11-13 19:09:45', NULL, NULL),
(159, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20211113170749|109378', '180', '100', '350', '2021-11-14 14:13:02', NULL, NULL),
(160, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9054199366', '1000', '35', '1035', '2021-11-14 15:48:11', NULL, NULL),
(161, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20211113170749|109378', '180', '280', '530', '2021-11-14 16:27:21', NULL, NULL),
(162, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|50|20211113192240|112300', '230', '710', '1010', '2021-11-14 16:28:57', NULL, NULL),
(163, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|24|20211113170749|109378', '100', '460', '630', '2021-11-14 16:35:31', NULL, NULL),
(164, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|51|20211114172413|001444', '30', '305', '405', '2021-11-14 21:04:28', NULL, NULL),
(165, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|08|20211114173232|001548', '100', '335', '505', '2021-11-14 21:06:09', NULL, NULL),
(166, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|51|20211114223315|004535', '130', '435', '635', '2021-11-14 21:33:20', NULL, NULL),
(167, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|08|20211114173232|001548', '230', '565', '865', '2021-11-14 21:35:53', NULL, NULL),
(168, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|11|20211115194337|015904', '510', '195', '775', '2021-11-15 18:43:40', NULL, NULL),
(169, '1', '12f2b2b0940c849166903a5f7ffbe26c', '8871949182', '1570', '385', '1955', '2021-11-17 13:51:33', NULL, NULL),
(170, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7089842433', '500', '285', '785', '2021-11-17 15:42:07', NULL, NULL),
(171, '1', '12f2b2b0940c849166903a5f7ffbe26c', 'MNFY|08|20211117214608|049300', '2030', '315', '2415', '2021-11-17 20:46:11', NULL, NULL),
(172, '1', '0dc345d62afafaad3e5fec8a4e532502', '4743956087', '1000', '0', '1000', '2021-11-18 05:59:56', NULL, NULL),
(173, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|71|20211119184741|076794', '650', '140', '860', '2021-11-19 17:47:45', NULL, NULL),
(174, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', 'charge_.2102157705', '255', '295', '40', '2021-11-21 14:59:10', NULL, NULL),
(175, '1', '257383cce19778b4562b5f5c119f5233', 'charge_.5640581320', '4000', '4705', '705', '2021-11-21 15:48:19', NULL, NULL),
(176, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|23|20211121193328|100691', '2430', '466', '2966', '2021-11-21 18:33:31', NULL, NULL),
(177, '1', '', '', '', '', '0', '2021-11-23 14:22:38', NULL, NULL),
(178, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|05|20211123120833|122217', '200', '10', '280', '2021-11-23 14:52:02', NULL, NULL),
(179, '1', '601a84f301eda7f489841f7a23acd33f', '4475954853', '5070', '0', '5070', '2021-11-24 14:26:09', NULL, NULL),
(180, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6946604719', '2000', '5', '2005', '2021-11-24 18:59:17', NULL, NULL),
(181, '1', '0e01011b9f27f8b0b425be9cd9e2bbba', '1330067610', '5070', '0', '5070', '2021-11-24 19:10:30', NULL, NULL),
(182, '1', '601a84f301eda7f489841f7a23acd33f', 'charge_.8921590844', '5000', '5000', '0', '2021-11-24 19:14:00', NULL, NULL),
(183, '1', '0e01011b9f27f8b0b425be9cd9e2bbba', 'charge_.9090128516', '3500', '3501', '1', '2021-11-25 19:42:32', NULL, NULL),
(184, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|04|20211126182559|169302', '480', '25', '575', '2021-11-26 17:26:04', NULL, NULL),
(185, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6696509652', '1500', '260', '1760', '2021-11-26 19:24:34', NULL, NULL),
(186, '1', '12f2b2b0940c849166903a5f7ffbe26c', '4775605607', '3500', '1690', '5190', '2021-11-27 16:09:21', NULL, NULL),
(187, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|04|20211128190103|194597', '280', '95', '445', '2021-11-28 18:01:07', NULL, NULL),
(188, '1', 'f6c2455a8542311d3331548a6312d1f8', '3473352086', '1000', '0', '1000', '2021-11-29 12:09:18', NULL, NULL),
(189, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|71|20211129222015|224720', '2430', '31', '2531', '2021-11-29 21:20:21', NULL, NULL),
(190, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3852484172', '4000', '4010', '8010', '2021-11-30 17:27:39', NULL, NULL),
(191, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', '9919653750', '1100', '40', '1140', '2021-11-30 20:29:43', NULL, NULL),
(192, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3179675489', '2000', '420', '2420', '2021-12-02 14:12:38', NULL, NULL),
(193, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|51|20211203092447|259807', '510', '25', '605', '2021-12-03 08:24:49', NULL, NULL),
(194, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|03|20211203210415|287340', '1430', '46', '1546', '2021-12-03 20:04:18', NULL, NULL),
(195, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|03|20211204213815|301750', '180', '225', '475', '2021-12-04 20:38:18', NULL, NULL),
(196, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|38|20211205132908|138095', '1430', '150', '1650', '2021-12-05 12:29:13', NULL, NULL),
(197, '1', '51ffbecadd7bdebe00ec3c2549108b82', 'MNFY|67|20211208082913|023644', '4930', '60', '5060', '2021-12-08 07:29:16', NULL, NULL),
(198, '1', 'a73242e57066f525d36cadd5e7701ce5', '5909928782', '5000', '0', '5000', '2021-12-08 07:32:30', NULL, NULL),
(199, '1', '51ffbecadd7bdebe00ec3c2549108b82', 'charge_.6821863940', '4930', '4990', '60', '2021-12-08 07:56:48', NULL, NULL),
(200, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1774927332', '500', '40', '540', '2021-12-08 13:14:01', NULL, NULL),
(201, '1', '12f2b2b0940c849166903a5f7ffbe26c', '5602038746', '4500', '15', '4515', '2021-12-08 14:53:25', NULL, NULL),
(202, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|67|20211210152733|062742', '1500', '5', '1575', '2021-12-10 14:27:36', NULL, NULL),
(203, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', 'MNFY|85|20211210164243|062256', '930', '56', '1056', '2021-12-10 15:42:46', NULL, NULL),
(204, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|85|20211211084634|070132', '1230', '105', '1405', '2021-12-11 07:46:37', NULL, NULL),
(205, '1', '30f117a3cce984e027d5607927d9e63b', '2927249442', '1400', '0', '1400', '2021-12-12 20:39:06', NULL, NULL),
(206, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|10|20211213213313|110965', '710', '35', '815', '2021-12-13 20:33:16', NULL, NULL),
(207, '1', '3e43e0e9f8d3c742212f39569b25fdcc', '9361303018', '600', '0', '600', '2021-12-14 13:53:40', NULL, NULL),
(208, '1', '3e43e0e9f8d3c742212f39569b25fdcc', 'MNFY|10|20211214142604|120705', '530', '20', '620', '2021-12-14 16:47:36', NULL, NULL),
(209, '1', '3e43e0e9f8d3c742212f39569b25fdcc', 'charge_.2655757591', '530', '550', '20', '2021-12-14 17:08:05', NULL, NULL),
(210, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1573574232', '2100', '1190', '3290', '2021-12-15 16:50:46', NULL, NULL),
(211, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '1139196952', '2950', '21', '2971', '2021-12-16 14:52:06', NULL, NULL),
(212, '1', '6347bc35301c9cfea53ac139fb557c15', 'MNFY|57|20211217093700|029333', '1930', '75', '2075', '2021-12-17 08:37:02', NULL, NULL),
(213, '1', '30f117a3cce984e027d5607927d9e63b', '9066979442', '1500', '30', '1530', '2021-12-19 18:46:04', NULL, NULL),
(214, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|99|20211220204738|212040', '510', '0', '580', '2021-12-20 19:47:42', NULL, NULL),
(215, '1', '12f2b2b0940c849166903a5f7ffbe26c', '8046121386', '2300', '821', '3121', '2021-12-22 16:57:13', NULL, NULL),
(216, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', '9077795657', '580', '60', '640', '2021-12-23 09:47:53', NULL, NULL),
(217, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|05|20211123120833|122217', '0', '55', '125', '2021-12-23 16:52:57', NULL, NULL),
(218, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|05|20211123120833|18990', '1330', '55', '1455', '2021-12-23 18:05:49', NULL, NULL),
(219, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|05|20211123120833|189', '250', '85', '405', '2021-12-23 23:34:14', NULL, NULL),
(220, '1', '257383cce19778b4562b5f5c119f5233', '2222215918', '1000', '35', '1035', '2021-12-24 05:36:52', NULL, NULL),
(221, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7581681737', '3070', '1241', '4311', '2021-12-24 11:04:11', NULL, NULL),
(222, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '5967881356', '1500', '136', '1636', '2021-12-24 13:09:20', NULL, NULL),
(223, '1', '30f5b0051ae748a2183f6049801b6e77', '2142992578', '1500', '0', '1500', '2021-12-24 15:03:13', NULL, NULL),
(224, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'MNFY|22|20211226202800|054479', '1930', '631', '2631', '2021-12-26 19:28:05', NULL, NULL),
(225, '1', '5a2f305f951e6bbd65f677a7e1db8b34', '2483005014', '2000', '2561', '4561', '2021-12-26 19:29:24', NULL, NULL),
(226, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'charge_.7351372825', '2000', '4491', '2491', '2021-12-26 19:31:22', NULL, NULL),
(227, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'charge_.2982920101', '930', '2491', '1561', '2021-12-26 19:33:06', NULL, NULL),
(228, '1', '12f2b2b0940c849166903a5f7ffbe26c', '7335444858', '2070', '141', '2211', '2021-12-26 19:37:44', NULL, NULL),
(229, '1', '257383cce19778b4562b5f5c119f5233', '2800133915', '530', '300', '830', '2021-12-27 09:18:06', NULL, NULL),
(230, '1', '30f117a3cce984e027d5607927d9e63b', '8598504451', '2700', '160', '2860', '2021-12-27 12:03:23', NULL, NULL),
(231, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9024034730', '370', '1241', '1611', '2021-12-29 18:32:25', NULL, NULL),
(232, '1', '257383cce19778b4562b5f5c119f5233', '3671364825', '170', '5', '175', '2021-12-29 22:42:56', NULL, NULL),
(233, '1', '3e43e0e9f8d3c742212f39569b25fdcc', '1381749899', '500', '20', '520', '2021-12-30 07:01:40', NULL, NULL),
(234, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '9097618539', '1500', '66', '1566', '2021-12-30 12:32:13', NULL, NULL),
(235, '1', 'e0dacc286c94a8d9ce0be5958deabd86a85325ce6cd68bde6c1eb4a80f325bf7', '4615667847', '125', '0', '125', '2021-12-30 17:16:49', NULL, NULL),
(236, '1', 'e0dacc286c94a8d9ce0be5958deabd86a85325ce6cd68bde6c1eb4a80f325bf7', 'charge_.8745928696', '55', '55', '0', '2021-12-30 17:21:05', NULL, NULL),
(237, '1', '12f2b2b0940c849166903a5f7ffbe26c', '8726921810', '1470', '152.45000000000005', '1622.45', '2022-01-01 14:59:28', NULL, NULL),
(238, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1348474882', '800', '552.45', '1352.45', '2022-01-02 04:16:58', NULL, NULL),
(239, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '5651041587', '1500', '416', '1916', '2022-01-02 11:55:40', NULL, NULL),
(240, '1', '69579f1e77e5cb50ca66065beda961d6', '3035550725', '2000', '0', '2000', '2022-01-03 07:02:59', NULL, NULL),
(241, '1', '3e43e0e9f8d3c742212f39569b25fdcc', '6466370986', '600', '5', '605', '2022-01-05 05:19:41', NULL, NULL),
(242, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6769221723', '570', '337.45000000000005', '907.45', '2022-01-05 07:09:29', NULL, NULL),
(243, '1', '12f2b2b0940c849166903a5f7ffbe26c', '6036178039', '1700', '492.45000000000005', '2192.45', '2022-01-05 09:06:14', NULL, NULL),
(244, '1', '30f117a3cce984e027d5607927d9e63b', '9101470460', '1400', '0', '1400', '2022-01-06 08:24:12', NULL, NULL),
(245, '1', '69579f1e77e5cb50ca66065beda961d6', '9980697739', '3400', '30', '3430', '2022-01-06 10:58:16', NULL, NULL),
(246, '1', '69579f1e77e5cb50ca66065beda961d6', '4704134927', '102', '3160', '3262', '2022-01-06 11:34:27', NULL, NULL),
(247, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9855541669', '1000', '32.44999999999982', '1032.45', '2022-01-06 19:06:37', NULL, NULL),
(248, '1', '5a2f305f951e6bbd65f677a7e1db8b34', '1701347960', '1700', '27', '1727', '2022-01-07 07:09:50', NULL, NULL),
(249, '1', '6347bc35301c9cfea53ac139fb557c15', '2022981540', '5000', '15', '5015', '2022-01-07 08:01:06', NULL, NULL),
(250, '1', 'b975fd2c2d39c19ae65c56f4775a4dfa', '1409512745', '1000', '70', '1070', '2022-01-07 13:01:01', NULL, NULL),
(251, '1', '257383cce19778b4562b5f5c119f5233', '611875619', '500', '10', '510', '2022-01-07 18:51:43', NULL, NULL),
(252, '1', '257383cce19778b4562b5f5c119f5233', '591277757', '220', '410', '560', '2022-01-07 20:02:50', NULL, NULL),
(253, '1', '257383cce19778b4562b5f5c119f5233', '684799326', '150', '560', '640', '2022-01-07 20:10:47', NULL, NULL),
(254, '1', '12f2b2b0940c849166903a5f7ffbe26c', '884591578', '300', '372.4499999999998', '602.45', '2022-01-07 20:25:02', NULL, NULL),
(255, '1', '', '561648438', '350', '', '280', '2022-01-07 21:14:14', NULL, NULL),
(256, '1', '', '561651579', '150', '', '80', '2022-01-07 21:23:08', NULL, NULL),
(257, '1', '257383cce19778b4562b5f5c119f5233', '561654127', '150', '650', '730', '2022-01-07 21:30:19', NULL, NULL),
(258, '1', '257383cce19778b4562b5f5c119f5233', '561814830', '320', '1030', '1280', '2022-01-08 08:22:03', NULL, NULL),
(259, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3113279189', '2000', '12.449999999999818', '2012.45', '2022-01-08 14:16:46', NULL, NULL),
(260, '1', '30f5b0051ae748a2183f6049801b6e77', '6563114888', '1000', '155', '1155', '2022-01-10 08:11:49', NULL, NULL),
(261, '1', '12f2b2b0940c849166903a5f7ffbe26c', '5310551946', '1570', '507.4499999999998', '2077.45', '2022-01-12 14:24:55', NULL, NULL),
(262, '1', '257383cce19778b4562b5f5c119f5233', 'MNFY|05|20220112182437|136434', '530', '5', '605', '2022-01-12 17:24:42', NULL, NULL),
(263, '1', '3e43e0e9f8d3c742212f39569b25fdcc', 'MNFY|03|20220112202052|138213', '530', '45', '645', '2022-01-12 19:20:57', NULL, NULL),
(264, '1', '3e43e0e9f8d3c742212f39569b25fdcc', '6584465569', '600', '575', '1175', '2022-01-12 19:22:04', NULL, NULL),
(265, '1', '524417c188449469af9bff10102e765d', 'MNFY|68|20220112203120|006476', '1430', '0', '1500', '2022-01-12 19:31:24', NULL, NULL),
(266, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3845052238', '100', '1107.4499999999998', '1207.45', '2022-01-12 19:36:48', NULL, NULL),
(267, '1', '12f2b2b0940c849166903a5f7ffbe26c', '4858828874', '300', '2.449999999999818', '302.45', '2022-01-14 15:14:19', NULL, NULL),
(268, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1703756670', '1000', '32.44999999999982', '1032.45', '2022-01-14 16:02:50', NULL, NULL),
(269, '1', '12f2b2b0940c849166903a5f7ffbe26c', '3359934447', '1000', '662.4499999999998', '1662.45', '2022-01-16 12:42:02', NULL, NULL),
(270, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9167857012', '500', '802.4499999999998', '1302.45', '2022-01-17 06:15:50', NULL, NULL),
(271, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'MNFY|05|20220117173833|189822', '1630', '187', '1887', '2022-01-17 16:38:41', NULL, NULL),
(272, '1', '3e43e0e9f8d3c742212f39569b25fdcc', 'MNFY|42|20220119084612|003300', '530', '85', '685', '2022-01-19 07:46:17', NULL, NULL),
(273, '1', '3e43e0e9f8d3c742212f39569b25fdcc', '1923573037', '600', '615', '1215', '2022-01-19 07:48:43', NULL, NULL),
(274, '1', '491651893f5d842f241ffa7a1a84a9b6', '872543429', '1000', '0', '930', '2022-01-19 13:08:56', NULL, NULL),
(275, '1', '7402890e1e13e6d14cc5b1a6530a4a6c', '925637131', '1000', '356', '1286', '2022-01-19 19:52:55', NULL, NULL),
(276, '1', '12f2b2b0940c849166903a5f7ffbe26c', '1506464580', '1400', '97.44999999999982', '1497.45', '2022-01-20 03:23:02', NULL, NULL),
(277, '1', '5a2f305f951e6bbd65f677a7e1db8b34', 'MNFY|25|20220120164537|021119', '928', '347', '1345', '2022-01-20 15:45:40', NULL, NULL),
(278, '1', '12f2b2b0940c849166903a5f7ffbe26c', '9940928357', '1500', '82.44999999999982', '1582.45', '2022-01-21 07:30:33', NULL, NULL),
(279, '1', '30f117a3cce984e027d5607927d9e63b', '1806926756', '5000', '105', '5105', '2022-01-21 12:13:08', NULL, NULL),
(280, '1', 'b07063758fb9dfed3bf11caa6eea1df1', '7732191156', '500', '0', '500', '2022-01-23 09:39:29', NULL, NULL),
(281, '1', '12f2b2b0940c849166903a5f7ffbe26c', '8820825546', '1500', '822.4499999999998', '2322.45', '2022-01-24 07:07:10', NULL, NULL),
(282, '1', 'd042be9cf75e5c8dbe93705211c947c6', '9363819070', '2000', '0', '2000', '2022-01-24 13:12:00', NULL, NULL),
(283, '1', 'Adeolu23', '408763444', '400', '', '330', '2022-01-24 13:42:57', NULL, NULL),
(284, '1', 'Adeolu23', '789537016', '1000', '', '930', '2022-01-24 16:55:49', NULL, NULL),
(285, '1', 'Adeolu23', '355068833', '1000', '', '930', '2022-01-24 21:26:34', NULL, NULL),
(286, '1', 'Adeolu23', '771777056', '3000', '', '2930', '2022-01-24 21:45:24', NULL, NULL),
(287, '1', 'Adeolu23', '390547465', '6000', '', '5930', '2022-01-25 13:17:54', NULL, NULL),
(288, '1', 'Akin525', '587444770', '700', '', '630', '2022-01-26 21:13:25', NULL, NULL),
(289, '1', 'Adeolu23', '5559375422', '2000', '7820', '9820', '2022-01-27 08:36:29', NULL, NULL),
(290, '1', 'Adeolu23', '9920494969', '2000', '9750', '11750', '2022-01-27 08:40:13', NULL, NULL),
(291, '1', 'Akin525', '2519275281', '3000', '700', '3700', '2022-01-27 08:45:41', NULL, NULL),
(292, '1', 'Adeolu23', '7496208913', '1000', '11680', '12680', '2022-01-27 08:48:31', NULL, NULL),
(293, '1', 'Adeolu23', '166144406', '200', '', '130', '2022-01-27 09:56:11', NULL, NULL),
(294, '1', 'Adeolu23', '120653558', '1000', '', '950', '2022-01-29 19:08:37', NULL, NULL),
(295, '1', 'Adeolu23', '92822075', '1000', '0', '1000', '2022-03-21 17:34:22', '2022-03-21 16:34:22.000000', '2022-03-21 16:34:22.000000'),
(296, '1', 'Adeolu23', '830388008', '2500', '0', '2500', '2022-03-21 18:59:54', '2022-03-21 17:59:54.000000', '2022-03-21 17:59:54.000000'),
(297, '1', 'Adeolu23', '830388008', '2500', '0', '2500', '2022-03-21 19:06:16', '2022-03-21 18:06:16.000000', '2022-03-21 18:06:16.000000'),
(298, '1', 'Adeolu23', '830388008', '2500', '0', '2500', '2022-03-21 19:13:34', '2022-03-21 18:13:34.000000', '2022-03-21 18:13:34.000000'),
(299, '1', 'Adeolu23', '170120787', '2500', '0', '2500', '2022-03-21 19:16:37', '2022-03-21 18:16:37.000000', '2022-03-21 18:16:37.000000'),
(300, '1', 'Adeolu23', '483653662', '1000', '200', '1200', '2022-03-21 20:55:25', '2022-03-21 19:55:25.000000', '2022-03-21 19:55:25.000000'),
(301, '1', 'Adeolu23', '324381902', '1300', '1200', '2500', '2022-03-23 15:11:13', '2022-03-23 14:11:13.000000', '2022-03-23 14:11:13.000000'),
(302, '1', 'akinlabi525', '486338776', '900', '0', '900', '2022-03-25 22:50:24', '2022-03-25 21:50:24.000000', '2022-03-25 21:50:24.000000'),
(303, '1', 'akinlabi525', '932715672', '400', '900', '1300', '2022-03-25 23:04:13', '2022-03-25 22:04:13.000000', '2022-03-25 22:04:13.000000'),
(304, '1', 'akinlabi525', '729076296', '500', '1300', '1800', '2022-03-25 23:06:36', '2022-03-25 22:06:36.000000', '2022-03-25 22:06:36.000000'),
(305, '1', 'akinlabi525', '895475725', '500', '1800', '2300', '2022-03-25 23:07:45', '2022-03-25 22:07:45.000000', '2022-03-25 22:07:45.000000'),
(306, '1', 'olaoluwa15', '637283347', '2000', '0', '2000', '2022-03-25 23:14:16', '2022-03-25 22:14:16.000000', '2022-03-25 22:14:16.000000'),
(307, '1', 'olaoluwa15', '210518684', '1800', '2000', '3800', '2022-03-26 06:46:56', '2022-03-26 05:46:56.000000', '2022-03-26 05:46:56.000000'),
(308, '1', 'akinlabi525', '668702708', '2000', '2300', '4300', '2022-03-26 06:51:47', '2022-03-26 05:51:47.000000', '2022-03-26 05:51:47.000000'),
(309, '1', 'akinlabi525', '889624680', '500', '4300', '4800', '2022-03-26 07:02:34', '2022-03-26 06:02:34.000000', '2022-03-26 06:02:34.000000'),
(310, '1', 'akinlabi525', '148301228', '900', '4800', '5700', '2022-03-26 07:12:23', '2022-03-26 06:12:23.000000', '2022-03-26 06:12:23.000000'),
(311, '1', 'akinlabi525', '785918243', '600', '5700', '6300', '2022-03-26 07:22:35', '2022-03-26 06:22:35.000000', '2022-03-26 06:22:35.000000'),
(312, '1', 'akinlabi525', '760149513', '2000', '6300', '8300', '2022-03-26 07:27:28', '2022-03-26 06:27:28.000000', '2022-03-26 06:27:28.000000'),
(313, '1', 'akin8888', '554994033', '2000', '0', '2000', '2022-04-05 14:16:47', '2022-04-05 14:16:47.000000', '2022-04-05 14:16:47.000000'),
(314, '1', 'akin8888', '533857379', '2000', '2000', '4000', '2022-04-05 14:32:00', '2022-04-05 14:32:00.000000', '2022-04-05 14:32:00.000000'),
(315, '1', 'adura234', '58423456', '1000', '0', '900', '2022-04-06 21:02:10', '2022-04-06 21:02:10.000000', '2022-04-06 21:02:10.000000'),
(316, '1', 'adura234', '635236084', '1000', '0', '900', '2022-04-06 21:57:12', '2022-04-06 21:57:12.000000', '2022-04-06 21:57:12.000000'),
(317, '1', 'adura234', '408037667', '500', '0', '400', '2022-04-06 22:04:05', '2022-04-06 22:04:05.000000', '2022-04-06 22:04:05.000000'),
(318, '1', 'adura234', '445090476', '2000', '0', '1900', '2022-04-06 22:05:32', '2022-04-06 22:05:32.000000', '2022-04-06 22:05:32.000000'),
(319, '1', 'adura234', '447918201', '3000', '100', '3000', '2022-04-06 22:20:21', '2022-04-06 22:20:21.000000', '2022-04-06 22:20:21.000000'),
(320, '1', 'akin', '281299820', '6000', '0', '5900', '2022-04-06 22:34:21', '2022-04-06 22:34:21.000000', '2022-04-06 22:34:21.000000'),
(321, '1', 'adura234', '991484626', '2000', '1300', '3200', '2022-04-06 23:37:25', '2022-04-06 23:37:25.000000', '2022-04-06 23:37:25.000000'),
(322, '1', 'Olaboye', '524918353', '200', '0', '100', '2022-04-07 10:29:28', '2022-04-07 10:29:28.000000', '2022-04-07 10:29:28.000000'),
(323, '1', 'Olaboye', '143468314', '2000', '0', '1900', '2022-04-07 10:44:59', '2022-04-07 10:44:59.000000', '2022-04-07 10:44:59.000000'),
(324, '1', 'akin', '182593807', '2000', '3460', '5360', '2022-04-07 12:42:11', '2022-04-07 12:42:11.000000', '2022-04-07 12:42:11.000000'),
(325, '1', 'akin', '788072483', '1000', '5360', '6260', '2022-04-07 13:01:31', '2022-04-07 13:01:31.000000', '2022-04-07 13:01:31.000000'),
(326, '1', 'akin', '339030005', '7000', '5360', '12260', '2022-04-07 13:05:09', '2022-04-07 13:05:09.000000', '2022-04-07 13:05:09.000000'),
(327, '1', 'akin', '529282152', '900', '5360', '6160', '2022-04-07 13:06:58', '2022-04-07 13:06:58.000000', '2022-04-07 13:06:58.000000'),
(328, '1', 'akin', '110967041', '2000', '6160', '8060', '2022-04-07 13:21:32', '2022-04-07 13:21:32.000000', '2022-04-07 13:21:32.000000'),
(329, '1', 'akin', '839296383', '100', '1933', '2033', '2022-06-06 17:14:17', '2022-06-06 16:14:17.000000', '2022-06-06 16:14:17.000000'),
(330, '1', 'akin', '676610052', '100', '2033', '2133', '2022-06-06 17:21:34', '2022-06-06 16:21:34.000000', '2022-06-06 16:21:34.000000');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(200) NOT NULL,
  `message` varchar(300) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'All Data Network Are Excellent (MTN)', '0', NULL, NULL),
(2, 'Please, transfer your cash to your dedicated WEMA BANK virtual account to fund your PrimeData wallet \"automagically\"! You can scroll down, click the box below to activate it! (ALL NETWORKS ARE AVAILABLE!)', '1', NULL, '2022-06-09 16:09:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_19_131549_create_sessions_table', 1),
(7, '2020_05_21_100000_create_teams_table', 2),
(8, '2020_05_21_200000_create_team_user_table', 2),
(9, '2020_05_21_300000_create_team_invitations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akinlabisamson15@gmail.com', '$2y$10$W.5KWlR2Qap3O0u134KbF.eStdemp3u6QeLJS9GuLirGRB5Flh2H2', '2022-05-24 07:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`id`, `username`, `amount`, `plan`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Adeolu23', '100', 'MTN500MB - [30 Days Plan] ', '2022-01-28 14:17:43', NULL, NULL),
(2, 'Adeolu23', '100', 'MTN500MB - [30 Days Plan] ', '2022-01-28 14:41:50', NULL, NULL),
(3, 'Boluprime', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-28 22:48:23', NULL, NULL),
(4, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-28 23:29:16', NULL, NULL),
(5, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-29 03:58:44', NULL, NULL),
(6, 'Boluprime', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-29 07:58:55', NULL, NULL),
(7, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-29 22:09:51', NULL, NULL),
(8, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-29 23:46:25', NULL, NULL),
(9, 'Adeolu23', '100', 'MTN1.00GB - [30 Days Plan] 300NGN', '2022-01-30 00:23:22', NULL, NULL),
(10, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-30 11:55:04', NULL, NULL),
(11, 'Aderonke', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-01-30 16:18:39', NULL, NULL),
(12, 'Adeolu23', '50', 'MTN1.00GB - [30 Days Plan] 250NGN', '2022-01-31 16:45:44', NULL, NULL),
(13, 'Adeolu23', '50', 'MTN1.00GB - [30 Days Plan] 250NGN', '2022-01-31 18:21:00', NULL, NULL),
(14, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-02-04 15:40:06', NULL, NULL),
(15, 'Boluprime', '50', 'MTN500MB - [30 Days Plan] 150 NGN', '2022-02-04 15:45:27', NULL, NULL),
(16, 'Chibless', '175', 'AIRTEL6.00GB - [7 Days Plan] 1,600', '2022-02-05 08:53:19', NULL, NULL),
(17, '21598939HA', '50', 'MTN1.00GB - [30 Days Plan] 250NGN (Corporate Gifting)', '2022-02-05 21:34:57', NULL, NULL),
(18, 'klausknic', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-06 16:24:58', NULL, NULL),
(19, 'Aderonke', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-06 19:58:04', NULL, NULL),
(20, 'Aderonke', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-06 20:00:36', NULL, NULL),
(21, 'Boluprime', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-08 16:08:27', NULL, NULL),
(22, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-08 16:55:31', NULL, NULL),
(23, 'Adeolu23', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:08:20', NULL, NULL),
(24, 'Aderonke', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:08:37', NULL, NULL),
(25, 'Adeolu23', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:08:48', NULL, NULL),
(26, 'Boluwatife', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:09:49', NULL, NULL),
(27, 'Lonelylove', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:10:18', NULL, NULL),
(28, 'Fellah', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:10:28', NULL, NULL),
(29, 'TaoMedia', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-11 08:32:12', NULL, NULL),
(30, 'Chibless', '25', 'AIRTEL350MB - [7 Days Plan] 310', '2022-02-11 13:42:43', NULL, NULL),
(31, 'Lonelylove', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-11 14:30:03', NULL, NULL),
(32, 'Fellah', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:24:01', NULL, NULL),
(33, 'CREDEBL01', '25', 'AIRTEL350MB - [7 Days Plan] 310', '2022-02-11 19:27:15', NULL, NULL),
(34, 'Adeolu23', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:24:19', NULL, NULL),
(35, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-11 20:08:20', NULL, NULL),
(36, 'Seyifunmi3222', '1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-18 11:25:19', NULL, NULL),
(37, 'Lonelylove', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 08:31:29', NULL, NULL),
(38, 'Berno1', '150', 'MTN3.00GB - [30 Days Plan] 750 NGN (Corporate Gifting)', '2022-02-12 11:19:24', NULL, NULL),
(39, 'Muizdino', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 12:41:54', NULL, NULL),
(40, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 12:59:23', NULL, NULL),
(41, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 13:00:19', NULL, NULL),
(42, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 13:05:21', NULL, NULL),
(43, 'Aderonke', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 18:02:30', NULL, NULL),
(44, 'Adeolu23', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-12 18:18:14', NULL, NULL),
(45, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-13 07:52:10', NULL, NULL),
(46, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-13 08:52:10', NULL, NULL),
(47, 'Timwhite', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-13 08:53:14', NULL, NULL),
(48, 'Muizdino', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-13 09:22:29', NULL, NULL),
(49, 'Timwhite', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-13 10:28:02', NULL, NULL),
(50, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-13 13:49:23', NULL, NULL),
(51, 'Timwhite', '-1', 'MTN1.00GB - [30 Days Plan] N199 (PROMO)', '2022-02-13 13:51:45', NULL, NULL),
(52, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-13 14:47:28', NULL, NULL),
(53, 'Timwhite', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-13 17:06:34', NULL, NULL),
(54, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-13 18:38:50', NULL, NULL),
(55, 'Berno1', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-13 19:55:37', NULL, NULL),
(56, 'TaoMedia', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-13 20:00:50', NULL, NULL),
(57, 'Muizdino', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-13 23:18:47', NULL, NULL),
(58, 'Fellah', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-14 11:43:23', NULL, NULL),
(59, 'Seyifunmi3222', '149', '9MOBILE1.5GB - [30 Days Plan] 999 NGN', '2022-02-14 12:22:23', NULL, NULL),
(60, 'Seyifunmi3222', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-14 12:30:29', NULL, NULL),
(61, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-14 15:38:19', NULL, NULL),
(62, 'Seyifunmi3222', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-14 15:57:36', NULL, NULL),
(63, 'Muizdino', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-14 18:56:50', NULL, NULL),
(64, 'Lonelylove', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-14 19:26:47', NULL, NULL),
(65, 'Akinbinuade', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-14 20:02:01', NULL, NULL),
(66, 'Francis', '50', 'MTN500MB - [30 Days Plan] 150 NGN (Corporate Gifting)', '2022-02-14 20:28:17', NULL, NULL),
(67, 'VICTOR123', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-14 21:27:55', NULL, NULL),
(68, 'VICTOR123', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-14 21:38:38', NULL, NULL),
(69, 'Lonelylove', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-15 09:07:05', NULL, NULL),
(70, 'Seyifunmi3222', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-15 10:16:14', NULL, NULL),
(71, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-15 12:00:27', NULL, NULL),
(72, 'Adeolu23', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-15 12:20:58', NULL, NULL),
(73, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-15 15:15:49', NULL, NULL),
(74, 'Lonelylove', '100', 'MTN2.00GB - [30 Days Plan] 500NGN (Corporate Gifting)', '2022-02-15 15:31:58', NULL, NULL),
(75, 'Boluprime', '49', 'MTN1.00GB - [30 Days Plan] N249', '2022-02-15 15:52:36', NULL, NULL),
(76, 'Javinef', '30', 'AIRTEL200MB - [3 Days Plan] 220', '2022-02-15 17:16:20', NULL, NULL),
(77, 'Seyifunmi3222', '75', 'MTN2.00GB - [30 Days Plan] 555 NGN (SME)', '2022-02-16 09:37:25', NULL, NULL),
(78, 'Seyifunmi3222', '75', 'MTN2.00GB - [30 Days Plan] 555 NGN (SME)', '2022-02-16 09:39:34', NULL, NULL),
(79, 'Pmakjoe', '801', 'MTN10.00GB - [30 Days Plan] 1,599 NGN (SME)', '2022-02-18 11:09:18', NULL, NULL),
(80, '21598939HA', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-16 18:46:06', NULL, NULL),
(81, 'Fellah', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-02-16 19:19:58', NULL, NULL),
(82, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-16 21:46:40', NULL, NULL),
(83, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-16 22:18:49', NULL, NULL),
(84, 'Seyifunmi3222', '75', 'MTN2.00GB - [30 Days Plan] 555 NGN (SME)', '2022-02-17 08:53:11', NULL, NULL),
(85, 'Adeolu23', '75', 'GLO1.05GB - [2 Weeks Plan] 500 NGN', '2022-02-17 09:53:44', NULL, NULL),
(86, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-17 10:32:50', NULL, NULL),
(87, 'VICTOR123', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-17 18:15:28', NULL, NULL),
(88, 'Aderonke', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-17 19:35:56', NULL, NULL),
(89, 'Adeolu23', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-17 19:46:34', NULL, NULL),
(90, 'Berno1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-17 20:10:00', NULL, NULL),
(91, 'CREDEBL01', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-18 09:40:53', NULL, NULL),
(92, 'CREDEBL01', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 13:36:43', NULL, NULL),
(93, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 13:41:54', NULL, NULL),
(94, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 13:46:23', NULL, NULL),
(95, 'VICTOR123', '150', 'MTN3.00GB - [30 Days Plan] N750 (CG)', '2022-02-18 14:45:07', NULL, NULL),
(96, 'Berno1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 14:56:46', NULL, NULL),
(97, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 14:58:17', NULL, NULL),
(98, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 15:02:27', NULL, NULL),
(99, 'Aderonke', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 17:59:15', NULL, NULL),
(100, 'Aderonke', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 18:52:40', NULL, NULL),
(101, 'Aderonke', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 18:55:13', NULL, NULL),
(102, 'Seyifunmi3222', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-18 19:22:19', NULL, NULL),
(103, 'Lonelylove', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 20:24:38', NULL, NULL),
(104, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 21:44:54', NULL, NULL),
(105, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 21:53:57', NULL, NULL),
(106, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 23:43:55', NULL, NULL),
(107, 'Livingscroll1', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-18 23:51:11', NULL, NULL),
(108, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-18 23:56:03', NULL, NULL),
(109, 'Livingscroll1', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-02-19 01:19:06', NULL, NULL),
(110, 'Seyifunmi3222', '150', 'MTN3.00GB - [30 Days Plan] N750 (CG)', '2022-02-19 07:57:09', NULL, NULL),
(111, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-19 07:57:43', NULL, NULL),
(112, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-19 08:29:00', NULL, NULL),
(113, 'Seyifunmi3222', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-19 09:38:42', NULL, NULL),
(114, 'IfeoluwaBlessing', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-19 18:13:56', NULL, NULL),
(115, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-19 19:30:47', NULL, NULL),
(116, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 11:04:46', NULL, NULL),
(117, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 11:08:20', NULL, NULL),
(118, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 11:13:30', NULL, NULL),
(119, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 11:48:26', NULL, NULL),
(120, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 16:14:26', NULL, NULL),
(121, 'Livingscroll1', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-02-20 17:05:56', NULL, NULL),
(122, 'Berno1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 17:38:32', NULL, NULL),
(123, 'Berno1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 17:41:01', NULL, NULL),
(124, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 18:45:15', NULL, NULL),
(125, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 20:28:06', NULL, NULL),
(126, 'Berno1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-20 20:51:20', NULL, NULL),
(127, 'CREDEBL01', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 07:26:05', NULL, NULL),
(128, 'Seyifunmi3222', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-21 08:30:20', NULL, NULL),
(129, 'Lonelylove', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-21 08:41:47', NULL, NULL),
(130, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-21 10:10:20', NULL, NULL),
(131, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 11:34:23', NULL, NULL),
(132, 'Livingscroll1', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-02-21 11:45:35', NULL, NULL),
(133, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 12:08:56', NULL, NULL),
(134, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 13:17:00', NULL, NULL),
(135, 'IfeoluwaBlessing', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 14:20:36', NULL, NULL),
(136, 'VICTOR123', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-21 15:09:08', NULL, NULL),
(137, 'Rexxy1', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-21 15:10:16', NULL, NULL),
(138, 'Livingscroll1', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-02-21 18:58:52', NULL, NULL),
(139, 'Rexxy1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-21 20:19:29', NULL, NULL),
(140, 'Berno1', '100', 'MTN2.00GB - [30 Days Plan] N500 (CG)', '2022-02-21 23:09:04', NULL, NULL),
(141, 'Livingscroll1', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-02-21 23:14:23', NULL, NULL),
(142, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-22 00:18:42', NULL, NULL),
(143, 'CREDEBL01', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-22 12:22:10', NULL, NULL),
(144, 'CREDEBL01', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-22 12:22:52', NULL, NULL),
(145, 'Seyifunmi3222', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-22 14:11:37', NULL, NULL),
(146, 'Rexxy1', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-02-22 14:28:36', NULL, NULL),
(147, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-22 20:41:35', NULL, NULL),
(148, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-22 21:09:41', NULL, NULL),
(149, 'CREDEBL01', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-22 21:53:33', NULL, NULL),
(150, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-22 23:10:10', NULL, NULL),
(151, 'Muizdino', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-23 10:53:04', NULL, NULL),
(152, 'Akinbinuade', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-23 13:48:38', NULL, NULL),
(153, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-23 21:15:36', NULL, NULL),
(154, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-23 21:18:49', NULL, NULL),
(155, 'Ayomipo1', '150', 'MTN3.00GB - [30 Days Plan] N750 (CG)', '2022-02-24 10:03:19', NULL, NULL),
(156, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-24 12:27:48', NULL, NULL),
(157, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-24 17:21:04', NULL, NULL),
(158, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-24 19:48:44', NULL, NULL),
(159, 'Iamhopeedem97', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-24 20:50:07', NULL, NULL),
(160, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-24 21:24:41', NULL, NULL),
(161, 'VICTOR123', '150', 'MTN3.00GB - [30 Days Plan] N750 (CG)', '2022-02-24 21:53:44', NULL, NULL),
(162, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-24 23:17:35', NULL, NULL),
(163, 'Adeolu23', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-25 05:43:48', NULL, NULL),
(164, 'Lonelylove', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-25 10:01:12', NULL, NULL),
(165, 'Rexxy1', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-25 10:28:53', NULL, NULL),
(166, 'Adeolu23', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-25 10:56:20', NULL, NULL),
(167, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-25 18:15:23', NULL, NULL),
(168, 'Adeolu23', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-25 21:08:01', NULL, NULL),
(169, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-25 21:28:13', NULL, NULL),
(170, 'Seyifunmi3222', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-26 08:51:47', NULL, NULL),
(171, 'Livingscroll1', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-26 13:55:16', NULL, NULL),
(172, 'Uthmanny', '49', 'MTN1.00GB - [30 Days Plan] N249 (CG)', '2022-02-26 15:12:56', NULL, NULL),
(173, 'Livingscroll1', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-27 00:03:06', NULL, NULL),
(174, 'Chibless', '150', 'MTN3.00GB - [30 Days Plan] N750 (CG)', '2022-02-27 07:54:40', NULL, NULL),
(175, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-27 12:51:11', NULL, NULL),
(176, 'Seyifunmi3222', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-02-27 13:00:30', NULL, NULL),
(177, 'Berno1', '75', 'MTN2.00GB - [30 Days Plan] 555 NGN (SME)', '2022-02-27 17:52:22', NULL, NULL),
(178, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-27 19:07:58', NULL, NULL),
(179, 'Aderonke', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-27 19:15:55', NULL, NULL),
(180, 'Iamhopeedem97', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-02-27 19:32:44', NULL, NULL),
(181, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-27 22:11:55', NULL, NULL),
(182, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-27 22:57:58', NULL, NULL),
(183, 'Berno1', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-28 09:42:04', NULL, NULL),
(184, 'Uthmanny', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-02-28 09:47:25', NULL, NULL),
(185, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-02-28 13:15:42', NULL, NULL),
(186, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-28 16:01:02', NULL, NULL),
(187, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-28 18:17:18', NULL, NULL),
(188, 'VICTOR123', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-02-28 21:02:41', NULL, NULL),
(189, 'Berno1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-02-28 21:05:27', NULL, NULL),
(190, 'Javinef', '59', '9MOBILE250MB - [7 Days Plan] N229', '2022-02-28 21:17:49', NULL, NULL),
(191, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 08:29:52', NULL, NULL),
(192, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 09:07:21', NULL, NULL),
(193, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 09:19:26', NULL, NULL),
(194, 'Lonelylove', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 13:33:07', NULL, NULL),
(195, 'Berno1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 16:44:07', NULL, NULL),
(196, 'Berno1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 17:01:02', NULL, NULL),
(197, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-01 18:56:36', NULL, NULL),
(198, 'IfeoluwaBlessing', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-01 20:38:00', NULL, NULL),
(199, 'Seyifunmi3222', '699', 'MTN10.00GB - [30 Days Plan] N2,699 (CG)', '2022-03-02 07:12:34', NULL, NULL),
(200, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-02 07:50:10', NULL, NULL),
(201, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-02 08:04:24', NULL, NULL),
(202, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-02 08:07:24', NULL, NULL),
(203, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-02 08:24:37', NULL, NULL),
(204, 'Boluprime', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-02 11:42:28', NULL, NULL),
(205, 'Mightyjohn', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-02 23:04:50', NULL, NULL),
(206, 'Mightyjohn', '84', 'GLO1.00GB - [5 Night Plan] N169', '2022-03-03 00:14:12', NULL, NULL),
(207, 'Akin525', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-03 11:00:17', NULL, NULL),
(208, 'Berno1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-03 15:19:00', NULL, NULL),
(209, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-03 17:31:36', NULL, NULL),
(210, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-03 17:32:56', NULL, NULL),
(211, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-03 18:55:19', NULL, NULL),
(212, 'Hardufeh', '399', 'MTN5.00GB - [30 Days Plan] N1,399 (CG)', '2022-03-03 19:23:16', NULL, NULL),
(213, 'CREDEBL01', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-03 23:45:21', NULL, NULL),
(214, 'Hardufeh', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-03-04 15:27:19', NULL, NULL),
(215, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-04 15:58:38', NULL, NULL),
(216, 'Berno1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-04 18:31:02', NULL, NULL),
(217, 'Aderonke', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-04 18:52:55', NULL, NULL),
(218, 'VICTOR123', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-03-04 20:42:32', NULL, NULL),
(219, 'Rexxy1', '21', 'GLO250MB - [1 Night Plan] N42', '2022-03-04 23:23:18', NULL, NULL),
(220, 'Ayomipo1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-05 11:44:54', NULL, NULL),
(221, 'Seyifunmi3222', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-05 12:16:53', NULL, NULL),
(222, 'Seyifunmi3222', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-03-05 13:21:00', NULL, NULL),
(223, 'Akin525', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-05 21:37:49', NULL, NULL),
(224, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-06 13:40:56', NULL, NULL),
(225, 'Akin525', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-06 19:30:19', NULL, NULL),
(226, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-06 21:36:17', NULL, NULL),
(227, 'Iamhopeedem97', '399', 'MTN5.00GB - [30 Days Plan] N1,399 (CG)', '2022-03-07 06:47:18', NULL, NULL),
(228, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-07 09:08:06', NULL, NULL),
(229, 'Berno1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-07 16:45:13', NULL, NULL),
(230, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-07 16:46:37', NULL, NULL),
(231, 'CREDEBL01', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-07 17:29:03', NULL, NULL),
(232, 'CREDEBL01', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-07 17:31:00', NULL, NULL),
(233, 'Chidinma2', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-07 20:46:53', NULL, NULL),
(234, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-08 14:44:09', NULL, NULL),
(235, 'Chibless', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-08 16:36:17', NULL, NULL),
(236, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-08 16:47:20', NULL, NULL),
(237, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-08 20:55:20', NULL, NULL),
(238, 'VICTOR123', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-09 00:19:31', NULL, NULL),
(239, 'Richiebela', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-09 06:37:35', NULL, NULL),
(240, 'Chibless', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-03-09 11:31:35', NULL, NULL),
(241, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-09 11:42:02', NULL, NULL),
(242, 'CREDEBL01', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-09 11:46:26', NULL, NULL),
(243, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-09 15:45:31', NULL, NULL),
(244, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-09 16:56:43', NULL, NULL),
(245, 'Seyifunmi3222', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-09 18:08:14', NULL, NULL),
(246, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 07:31:29', NULL, NULL),
(247, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 09:28:32', NULL, NULL),
(248, 'Akin525', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-03-10 10:10:10', NULL, NULL),
(249, 'Ayomide2005', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 15:46:05', NULL, NULL),
(250, 'Johnson11', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 20:00:09', NULL, NULL),
(251, 'Chidinma2', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-03-10 20:14:48', NULL, NULL),
(252, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 20:17:46', NULL, NULL),
(253, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 21:42:15', NULL, NULL),
(254, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-10 21:48:43', NULL, NULL),
(255, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 10:16:24', NULL, NULL),
(256, 'Berno1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 10:47:15', NULL, NULL),
(257, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 11:24:58', NULL, NULL),
(258, 'CREDEBL01', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 12:29:00', NULL, NULL),
(259, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 16:31:42', NULL, NULL),
(260, 'Berno1', '249', 'MTN5.00GB - [30 Days Plan] N1,249 (CG) PROMO', '2022-03-11 17:34:00', NULL, NULL),
(261, 'Berno1', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-11 17:35:19', NULL, NULL),
(262, 'Amstickz', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-11 17:52:01', NULL, NULL),
(263, 'VICTOR123', '240', 'MTN3.00GB - [30 Days Plan] N840 (CG)', '2022-03-11 22:30:37', NULL, NULL),
(264, 'Amstickz', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-12 11:40:22', NULL, NULL),
(265, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-12 18:37:10', NULL, NULL),
(266, 'Berno1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-12 21:35:28', NULL, NULL),
(267, 'Mightyjohn', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-12 22:13:08', NULL, NULL),
(268, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-13 13:56:11', NULL, NULL),
(269, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-13 20:21:42', NULL, NULL),
(270, 'Mightyjohn', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-13 20:32:25', NULL, NULL),
(271, 'Ayomide2005', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-13 21:23:26', NULL, NULL),
(272, 'Richiebela', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-14 06:08:06', NULL, NULL),
(273, 'Activeahmad16', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-14 12:50:35', NULL, NULL),
(274, 'Activeahmad16', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-14 12:51:45', NULL, NULL),
(275, 'Activeahmad16', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-14 12:57:50', NULL, NULL),
(276, 'Oluwatoni86', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-14 16:55:27', NULL, NULL),
(277, 'Chibless', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-14 17:57:49', NULL, NULL),
(278, 'Akinbinuade', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-14 22:31:36', NULL, NULL),
(279, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-14 22:39:18', NULL, NULL),
(280, 'Iamhopeedem97', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-15 07:07:03', NULL, NULL),
(281, '12345654321', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-15 07:25:31', NULL, NULL),
(282, 'Johnson11', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-15 09:38:46', NULL, NULL),
(283, 'Oluwatoni86', '199', 'MTN3.00GB - [30 Days Plan] N799 (CG) PROMO', '2022-03-15 11:01:09', NULL, NULL),
(284, 'Johnson11', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-15 19:48:08', NULL, NULL),
(285, 'Gbeminiyi', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-15 21:20:48', NULL, NULL),
(286, 'Activeahmad16', '199', 'MTN3.00GB - [30 Days Plan] N799 (CG) PROMO', '2022-03-16 10:36:54', NULL, NULL),
(287, 'Chibless', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-16 11:41:04', NULL, NULL),
(288, 'CREDEBL01', '249', 'MTN5.00GB - [30 Days Plan] N1,249 (CG) PROMO', '2022-03-16 12:23:02', NULL, NULL),
(289, 'Ezekielfemi3264', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-16 13:15:53', NULL, NULL),
(290, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 00:28:34', NULL, NULL),
(291, 'Mightyjohn', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-17 00:33:11', NULL, NULL),
(292, 'Seyifunmi3222', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-17 08:52:21', NULL, NULL),
(293, 'IfeoluwaBlessing', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 11:05:36', NULL, NULL),
(294, 'Chibless', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-17 12:53:59', NULL, NULL),
(295, 'Aderonke', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 20:23:24', NULL, NULL),
(296, 'Ezekielfemi3264', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 20:32:07', NULL, NULL),
(297, 'Amstickz', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 21:26:21', NULL, NULL),
(298, '12345654321', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-17 22:13:05', NULL, NULL),
(299, 'Mightyjohn', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-18 08:42:57', NULL, NULL),
(300, 'Ezekielfemi3264', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 09:24:35', NULL, NULL),
(301, 'Richiebela', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 10:19:14', NULL, NULL),
(302, 'Richiebela', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 10:20:09', NULL, NULL),
(303, 'VICTOR123', '199', 'MTN3.00GB - [30 Days Plan] N799 (CG) PROMO', '2022-03-18 10:30:17', NULL, NULL),
(304, 'Ezekielfemi3264', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 12:13:09', NULL, NULL),
(305, 'Berno1', '74', '9MOBILE1.00GB -[30 Days Plan] N499', '2022-03-18 13:51:11', NULL, NULL),
(306, 'Oluwatoni86', '249', 'MTN5.00GB - [30 Days Plan] N1,249 (CG) PROMO', '2022-03-18 14:01:57', NULL, NULL),
(307, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 15:38:16', NULL, NULL),
(308, 'Mightyjohn', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 19:40:54', NULL, NULL),
(309, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 20:18:54', NULL, NULL),
(310, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 21:06:59', NULL, NULL),
(311, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 21:25:16', NULL, NULL),
(312, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 21:26:17', NULL, NULL),
(313, 'Ezekielfemi3264', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 22:51:20', NULL, NULL),
(314, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-18 23:02:27', NULL, NULL),
(315, 'Johnson11', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 09:13:36', NULL, NULL),
(316, 'Mackiefrosh', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 09:15:30', NULL, NULL),
(317, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 09:19:01', NULL, NULL),
(318, 'sanzo1234', '149', 'GLO10.00GB - [30 Day Plan] N2,699', '2022-03-19 12:17:43', NULL, NULL),
(319, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 17:56:55', NULL, NULL),
(320, 'Chidinma2', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 18:21:10', NULL, NULL),
(321, 'Mackiefrosh', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 20:26:55', NULL, NULL),
(322, 'CREDEBL01', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 21:18:53', NULL, NULL),
(323, 'Livingscroll1', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-03-19 22:39:47', NULL, NULL),
(324, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-19 22:40:24', NULL, NULL),
(325, 'Chibless', '50', 'MTN500MB - [30 Days Plan] N150 (Corporate Gifting)', '2022-03-20 08:31:05', NULL, NULL),
(326, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-20 13:34:43', NULL, NULL),
(327, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-20 13:41:54', NULL, NULL),
(328, 'Livingscroll1', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-03-20 16:09:00', NULL, NULL),
(329, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-20 21:50:07', NULL, NULL),
(330, 'Chibless', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-20 22:28:35', NULL, NULL),
(331, 'Seyifunmi3222', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 05:34:13', NULL, NULL),
(332, 'Johnson11', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 06:57:31', NULL, NULL),
(333, 'Mackiefrosh', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 11:58:21', NULL, NULL),
(334, 'Ezekielfemi3264', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 14:20:26', NULL, NULL),
(335, 'Iamhopeedem97', '399', 'MTN5.00GB - [30 Days Plan] N1,399 (CG)', '2022-03-21 17:22:38', NULL, NULL),
(336, 'Yemzy78', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 18:24:32', NULL, NULL),
(337, 'Oluwatoni86', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME)', '2022-03-21 18:41:25', NULL, NULL),
(338, 'Yemzy78', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 18:45:30', NULL, NULL),
(339, 'Berno1', '160', 'MTN2.00GB - [30 Days Plan] N560 (CG)', '2022-03-21 19:42:39', NULL, NULL),
(340, 'NUELLA3054', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 21:11:07', NULL, NULL),
(341, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 22:20:20', NULL, NULL),
(342, 'Livingscroll1', '79', 'MTN1.00GB - [30 Days Plan] N279 (CG)', '2022-03-21 23:07:36', NULL, NULL),
(343, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 00:43:53', NULL, NULL),
(344, 'CREDEBL01', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-22 09:11:51', NULL, NULL),
(345, 'Chibless', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-22 10:15:35', NULL, NULL),
(346, 'Chibless', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-22 10:16:15', NULL, NULL),
(347, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 11:44:20', NULL, NULL),
(348, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 16:29:24', NULL, NULL),
(349, 'VICTOR123', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 17:06:32', NULL, NULL),
(350, 'Akin525', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-22 17:08:29', NULL, NULL),
(351, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 18:12:45', NULL, NULL),
(352, 'Oluwatoni86', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-22 19:23:43', NULL, NULL),
(353, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-22 20:28:46', NULL, NULL),
(354, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-22 20:29:44', NULL, NULL),
(355, 'Mackiefrosh', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-22 21:33:55', NULL, NULL),
(356, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 06:07:27', NULL, NULL),
(357, 'Mackiefrosh', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 08:33:51', NULL, NULL),
(358, 'Adeolu23', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-23 10:32:18', NULL, NULL),
(359, 'Mightyjohn', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-23 10:48:16', NULL, NULL),
(360, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 14:23:59', NULL, NULL),
(361, 'Yemzy78', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 16:02:49', NULL, NULL),
(362, 'Amstickz', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-23 18:02:14', NULL, NULL),
(363, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 20:12:44', NULL, NULL),
(364, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-23 20:35:01', NULL, NULL),
(365, 'VICTOR123', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-23 21:09:54', NULL, NULL),
(366, 'CREDEBL01', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-23 22:30:01', NULL, NULL),
(367, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 00:48:07', NULL, NULL),
(368, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 00:49:56', NULL, NULL),
(369, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 00:51:27', NULL, NULL),
(370, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 07:08:30', NULL, NULL),
(371, 'jedet707', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-24 08:50:10', NULL, NULL),
(372, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 09:02:18', NULL, NULL),
(373, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 10:24:08', NULL, NULL),
(374, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-24 10:30:53', NULL, NULL),
(375, 'jedet707', '42', 'GLO32MB - [1 Daily Mini Plan] N84', '2022-03-24 13:46:02', NULL, NULL),
(376, 'Chibless', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-24 14:09:37', NULL, NULL),
(377, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 15:40:55', NULL, NULL),
(378, 'Seyifunmi3222', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-24 15:43:42', NULL, NULL),
(379, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 18:21:41', NULL, NULL),
(380, 'Yemzy78', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-24 19:10:39', NULL, NULL),
(381, 'jedet707', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-24 21:36:53', NULL, NULL),
(382, 'Johnson11', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 21:51:16', NULL, NULL),
(383, 'Johnson11', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 21:52:00', NULL, NULL),
(384, 'Mackiefrosh', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 22:08:57', NULL, NULL),
(385, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-24 22:56:06', NULL, NULL),
(386, 'Oluwatoni86', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-24 23:11:55', NULL, NULL),
(387, 'sanzo1234', '159', 'AIRTEL1.5GB - [30 Days Plan] N1,109', '2022-03-25 04:52:20', NULL, NULL),
(388, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 05:27:42', NULL, NULL),
(389, 'Ezekielfemi3264', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 06:31:31', NULL, NULL),
(390, 'Mackiefrosh', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-25 07:32:45', NULL, NULL),
(391, 'Oluwatoni86', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 08:26:22', NULL, NULL),
(392, 'jedet707', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 08:44:35', NULL, NULL),
(393, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 10:30:55', NULL, NULL),
(394, 'Mightyjohn', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 10:32:06', NULL, NULL),
(395, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 15:53:11', NULL, NULL),
(396, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 17:05:57', NULL, NULL),
(397, 'Johnson11', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 18:31:56', NULL, NULL),
(398, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 19:30:55', NULL, NULL),
(399, 'Berno1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-25 20:10:43', NULL, NULL),
(400, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-25 22:07:38', NULL, NULL),
(401, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 11:20:49', NULL, NULL),
(402, 'CREDEBL01', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-26 11:45:04', NULL, NULL),
(403, 'Oluwatoni86', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-26 12:16:43', NULL, NULL),
(404, 'Mightyjohn', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-26 12:48:37', NULL, NULL),
(405, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 14:00:42', NULL, NULL),
(406, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 16:26:59', NULL, NULL),
(407, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 18:04:38', NULL, NULL),
(408, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 20:25:00', NULL, NULL),
(409, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-26 20:31:26', NULL, NULL),
(410, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-26 21:31:52', NULL, NULL),
(411, 'jedet707', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-27 01:30:25', NULL, NULL),
(412, 'Mightyjohn', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-27 08:04:21', NULL, NULL),
(413, 'VICTOR123', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-27 08:48:18', NULL, NULL),
(414, 'Livingscroll1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-27 13:44:07', NULL, NULL),
(415, 'Livingscroll1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-27 16:49:04', NULL, NULL),
(416, 'Livingscroll1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-27 17:20:18', NULL, NULL),
(417, 'Pmakjoe', '500', 'MTN10.00GB - [30 Days Plan] 2,900 NGN (SME) PROMO', '2022-03-27 18:16:50', NULL, NULL),
(418, 'Ezekielfemi3264', '44', 'AIRTEL750MB - [14 Days Plan] N519', '2022-03-27 18:23:39', NULL, NULL),
(419, 'Ezekielfemi3264', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-27 18:32:28', NULL, NULL),
(420, 'Chidinma2', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-27 20:04:11', NULL, NULL),
(421, 'Chibless', '168', 'MTN3.00GB - [30 Days Plan] 888 NGN (SME) PROMO', '2022-03-28 00:34:22', NULL, NULL),
(422, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-28 04:31:30', NULL, NULL),
(423, 'Yemzy78', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 14:42:12', NULL, NULL),
(424, 'Berno1', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-28 15:16:09', NULL, NULL),
(425, 'Berno1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-28 15:24:13', NULL, NULL),
(426, 'Berno1', '34', 'AIRTEL350MB - [7 Days Plan] N319', '2022-03-28 15:27:07', NULL, NULL),
(427, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 16:16:08', NULL, NULL),
(428, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 17:19:08', NULL, NULL),
(429, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 17:30:23', NULL, NULL),
(430, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 17:36:21', NULL, NULL),
(431, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 18:02:22', NULL, NULL),
(432, 'Berno1', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-28 20:47:54', NULL, NULL),
(433, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-28 21:38:55', NULL, NULL),
(434, 'Iamhopeedem97', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 09:08:22', NULL, NULL),
(435, 'Akin525', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-03-29 09:42:49', NULL, NULL),
(436, 'Akin525', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 09:44:49', NULL, NULL),
(437, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 12:14:26', NULL, NULL),
(438, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 12:34:34', NULL, NULL),
(439, 'Chibless', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-03-29 17:07:04', NULL, NULL),
(440, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 17:13:49', NULL, NULL),
(441, 'Yemzy78', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 18:22:55', NULL, NULL),
(442, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 19:23:13', NULL, NULL),
(443, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 20:17:56', NULL, NULL),
(444, 'Yemzy78', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 21:03:37', NULL, NULL),
(445, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-29 21:06:28', NULL, NULL),
(446, 'Johnson11', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 06:56:24', NULL, NULL),
(447, 'Akin525', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 08:24:48', NULL, NULL),
(448, 'Ezekielfemi3264', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-30 10:48:40', NULL, NULL),
(449, 'VICTOR123', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-03-30 11:12:17', NULL, NULL),
(450, 'VICTOR123', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 11:13:34', NULL, NULL),
(451, 'Shegomoney5', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 16:23:16', NULL, NULL),
(452, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 19:49:28', NULL, NULL),
(453, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-30 20:13:27', NULL, NULL),
(454, 'Akin525', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-31 10:14:20', NULL, NULL),
(455, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 13:13:01', NULL, NULL),
(456, 'NUELLA3054', '74', 'GLO1.05GB - [2 Weeks Plan] N499', '2022-03-31 17:25:20', NULL, NULL),
(457, 'Akin525', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-03-31 18:08:42', NULL, NULL),
(458, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 18:33:53', NULL, NULL),
(459, 'Berno1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-03-31 18:34:35', NULL, NULL),
(460, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 19:57:37', NULL, NULL),
(461, 'Akin525', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-03-31 20:03:19', NULL, NULL),
(462, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 21:44:12', NULL, NULL),
(463, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 21:46:18', NULL, NULL),
(464, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-03-31 21:47:15', NULL, NULL),
(465, 'Chibless', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-01 16:57:30', NULL, NULL),
(466, 'Mightyjohn', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-04-02 14:55:52', NULL, NULL),
(467, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-02 17:51:59', NULL, NULL),
(468, 'Iamhopeedem97', '299', 'MTN5.00GB - [30 Days Plan] 1,499 NGN (SME)', '2022-04-02 18:34:45', NULL, NULL),
(469, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-02 18:39:21', NULL, NULL),
(470, 'Berno1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-02 18:40:12', NULL, NULL),
(471, 'Akin525', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-03 07:12:12', NULL, NULL),
(472, 'Akin525', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-03 11:10:15', NULL, NULL),
(473, 'Chidinma2', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-03 11:21:35', NULL, NULL),
(474, 'Ezekielfemi3264', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 13:57:45', NULL, NULL),
(475, 'Akin525', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-04-03 16:16:04', NULL, NULL),
(476, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 18:39:45', NULL, NULL),
(477, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 19:26:31', NULL, NULL),
(478, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 21:59:47', NULL, NULL),
(479, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 22:18:54', NULL, NULL),
(480, 'Chidinma2', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 23:31:05', NULL, NULL),
(481, 'Yemzy78', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-03 23:55:33', NULL, NULL),
(482, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-04 06:31:44', NULL, NULL),
(483, 'Akin525', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-04-04 07:42:59', NULL, NULL),
(484, 'Chibless', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-04-04 09:01:29', NULL, NULL),
(485, 'Amstickz', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-04-04 10:35:39', NULL, NULL);
INSERT INTO `profits` (`id`, `username`, `amount`, `plan`, `date`, `created_at`, `updated_at`) VALUES
(486, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-04 15:41:03', NULL, NULL),
(487, 'Berno1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-04-04 18:22:38', NULL, NULL),
(488, 'Yemzy78', '84', 'GLO105MB - [1 Daily Mini Plan] N169 ', '2022-04-04 21:17:03', NULL, NULL),
(489, 'Johnson11', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-05 00:23:26', NULL, NULL),
(490, 'NUELLA3054', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-05 10:12:40', NULL, NULL),
(491, 'CREDEBL01', '39', 'AIRTEL200MB - [3 Days Plan] N229', '2022-04-05 11:51:20', NULL, NULL),
(492, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-05 12:38:52', NULL, NULL),
(493, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-05 12:41:41', NULL, NULL),
(494, 'Livingscroll1', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-05 12:44:24', NULL, NULL),
(495, 'Livingscroll1', '79', 'MTN500MB - [30 Days Plan] 199 NGN (SME)', '2022-04-05 12:45:32', NULL, NULL),
(496, 'Akin525', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-06 10:20:34', NULL, NULL),
(497, 'Seyifunmi3222', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-06 15:18:30', NULL, NULL),
(498, 'Akin525', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-06 15:43:19', NULL, NULL),
(499, 'Akin525', '119', 'MTN2.00GB - [30 Days Plan] 599 NGN (SME)', '2022-04-06 17:23:59', NULL, NULL),
(500, 'Onifemi', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-06 18:08:13', NULL, NULL),
(501, 'Aderonke', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-06 21:33:25', NULL, NULL),
(502, 'CREDEBL01', '59', 'MTN1.00GB - [30 Days Plan] 299 NGN (SME)', '2022-04-06 22:22:32', NULL, NULL),
(503, 'Chibless', '179', 'MTN3.00GB - [30 Days Plan] 899 NGN (SME) ', '2022-04-06 22:57:36', NULL, NULL),
(504, 'akin', '0', '500MB - [30 Days Plan] ', '2022-04-07 14:10:44', '2022-04-07 14:10:44.000000', '2022-04-07 14:10:44.000000'),
(505, 'akin', '-100', '1.00GB - [30 Days Plan]', '2022-04-07 14:16:51', '2022-04-07 14:16:51.000000', '2022-04-07 14:16:51.000000'),
(506, 'akin', '100', '1.00GB - [30 Days Plan]', '2022-04-07 14:18:15', '2022-04-07 14:18:15.000000', '2022-04-07 14:18:15.000000'),
(507, 'akin', '0', '1.00GB - [30 Days Plan] ', '2022-04-07 17:34:53', '2022-04-07 17:34:53.000000', '2022-04-07 17:34:53.000000'),
(508, 'akin', '59', '500MB - [30 Days Plan] (SME)', '2022-04-17 14:52:24', '2022-04-17 14:52:24.000000', '2022-04-17 14:52:24.000000'),
(509, 'akin', '0', 'MTN 1gb-(N280- 30days)', '2022-04-17 22:17:28', '2022-04-17 22:17:28.000000', '2022-04-17 22:17:28.000000'),
(510, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-04-17 22:21:32', '2022-04-17 22:21:32.000000', '2022-04-17 22:21:32.000000'),
(511, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-04-19 11:05:28', '2022-04-19 11:05:28.000000', '2022-04-19 11:05:28.000000'),
(512, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-04-20 09:33:29', '2022-04-20 09:33:28.000000', '2022-04-20 09:33:28.000000'),
(513, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-05-03 16:04:42', '2022-05-03 16:04:42.000000', '2022-05-03 16:04:42.000000'),
(514, 'akin', '58', '2.00GB - [30 Days Plan] (SME)', '2022-05-03 17:42:26', '2022-05-03 17:42:26.000000', '2022-05-03 17:42:26.000000'),
(515, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-05-05 10:51:16', '2022-05-05 10:51:16.000000', '2022-05-05 10:51:16.000000'),
(516, 'akin', '29', '1.00GB - [30 Days Plan] (SME)', '2022-05-06 20:51:49', '2022-05-06 20:51:49.000000', '2022-05-06 20:51:49.000000'),
(517, 'akin', '58', '2.00GB - [30 Days Plan] (SME)', '2022-05-09 09:16:46', '2022-05-09 07:16:44.000000', '2022-05-09 07:16:44.000000'),
(518, 'akin', '58', '2.00GB - [30 Days Plan] (SME)', '2022-05-14 15:26:53', '2022-05-14 13:26:51.000000', '2022-05-14 13:26:51.000000'),
(519, 'akin', '87', '3.00GB - [30 Days Plan] (SME) ', '2022-05-15 14:45:18', '2022-05-15 12:45:18.000000', '2022-05-15 12:45:18.000000'),
(520, 'akin', '58', '2.00GB - [30 Days Plan] (SME)', '2022-05-20 17:10:41', '2022-05-20 15:10:38.000000', '2022-05-20 15:10:38.000000'),
(521, 'adura234', '58', '2.00GB - [30 Days Plan] (SME)', '2022-05-26 16:21:30', '2022-05-26 14:21:30.000000', '2022-05-26 14:21:30.000000'),
(522, 'akin', '0', '500MB [SME]30 Days', '2022-06-23 19:07:38', '2022-06-23 17:07:38.000000', '2022-06-23 17:07:38.000000'),
(523, 'akin', '185', '500MB [SME]30 Days', '2022-06-23 19:31:53', '2022-06-23 17:31:53.000000', '2022-06-23 17:31:53.000000');

-- --------------------------------------------------------

--
-- Table structure for table `refers`
--

CREATE TABLE `refers` (
  `id` int(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `newuserid` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL DEFAULT '100',
  `status` varchar(200) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refers`
--

INSERT INTO `refers` (`id`, `username`, `newuserid`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'akin', 'Adedeji12', '0', '1', '2022-04-07 10:14:25.000000', '2022-06-13 09:50:41.000000'),
(2, NULL, 'Seun2333', '100', '1', '2022-04-07 14:51:53.000000', '2022-04-07 14:51:53.000000');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'honorworld', '0', NULL, '2022-06-27 08:39:57.000000'),
(2, 'mcd', '1', NULL, '2022-06-27 08:40:16.000000');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1VfcwnGWfR7mW1KORZhxLaxwmI6kuRHZRPGJHyPU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVhHb1lyejhqQlhVOEw0dENqaW43U0FHTGlFUlRlQ2JQSjRwUUVVQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1657781650),
('ILeEn5SXPaKBLJGhsgOvVz0M0OGG7qnkzZKsxcW6', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVUYwYml5Q2pERXFscWp0OWdaeU5iaUVtVVFLMzhiYTRuWkxnSEdhZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90diI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6MTA6Im9sYW9sdXdhMTUiO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1659025004),
('JIqpSMuzCZ2YkfVLGbuihmvotyu07feQC8eDNA4X', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWlJMendZVjU3Sm9POWRLZjBhVWRRREZXQVdzSjZ0VW81U0loSGpqYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9haXJ0aW1lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czoyNzoiUGFzczYyOGQyZTY1OGFiMzU0LjM0ODgxMDg5IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6Mjc6IlBhc3M2MjhkMmU2NThhYjM1NC4zNDg4MTA4OSI7czo1OiJhbGVydCI7YTowOnt9fQ==', 1657637260),
('qlFUQvVmNXOnUVvb7Ue6gyFcjqdkceFXJlBsCozP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiajdmVDhQUnlaajk4MDJtT2lOSXlPMENPMDZjTkxIOXQ3R1lJc2xjbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NToiYWxlcnQiO2E6MDp7fX0=', 1657791370);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(200) NOT NULL DEFAULT 1,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enter Your E-Mail Address',
  `sno` int(11) NOT NULL,
  `wlink` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'www.yourwebsite.com',
  `coname` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `maintain` int(11) NOT NULL DEFAULT 0,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `len` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pvearning` int(11) NOT NULL,
  `currency` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `activationstatus` int(11) NOT NULL,
  `charges` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `sno`, `wlink`, `coname`, `maintain`, `footer`, `len`, `pvearning`, `currency`, `activationstatus`, `charges`, `address`, `theme`, `updated_at`) VALUES
(1, 'info@renomobilemoney.com', 0, 'localhost/bill', 'Renomobilemoney', 1, 'OgaPay | All Rights Reserved ', '1000', 0, 'NGN', 0, '300', '2, Odfeso Close Abule Egba Akute, Lagos State', 'red-skin', '2022-07-02 21:10:34.000000');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(3, 3, 'Samon\'s Team', 1, '2022-03-19 21:48:38', '2022-03-19 21:48:38'),
(4, 4, 'Olaoluwa\'s Team', 1, '2022-03-19 21:51:13', '2022-03-19 21:51:13'),
(5, 5, 'Samon\'s Team', 1, '2022-03-25 19:00:15', '2022-03-25 19:00:15'),
(6, 6, 'Akinlabi\'s Team', 1, '2022-03-25 19:17:32', '2022-03-25 19:17:32'),
(7, 7, 'Olaoluwa\'s Team', 1, '2022-04-05 11:58:28', '2022-04-05 11:58:28'),
(8, 8, 'oluwatimileyin\'s Team', 1, '2022-04-05 17:02:47', '2022-04-05 17:02:47'),
(9, 9, 'Akinomo\'s Team', 1, '2022-04-06 11:51:57', '2022-04-06 11:51:57'),
(10, 10, 'Adedeji\'s Team', 1, '2022-04-07 10:14:34', '2022-04-07 10:14:34'),
(11, 11, 'Adelakun\'s Team', 1, '2022-04-07 14:52:04', '2022-04-07 14:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apikey` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `apikey`, `phone_no`, `email_verified_at`, `password`, `role`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'Samon Akinlabi', 'akinlabisamson150@gmail.com', 'Adeolu23', '0', '08146328645', NULL, 'pass629fa713631143.38246352', 'user', NULL, NULL, NULL, 3, NULL, '2022-03-19 21:48:38', '2022-06-07 18:29:23'),
(4, 'Olaoluwa Samson', 'user@gmail.com', 'akin8888', '0', '090876654', NULL, '$2y$10$nnZfbKlsU5kIJECfwciJceBRDLdrO7uMq2Qy2tdJlrKPw3V1tHdHu', 'user', NULL, NULL, NULL, 4, NULL, '2022-03-19 21:51:13', '2022-03-21 11:44:18'),
(5, 'Samon Akinlabi  Olaoluwa', 'akinlabisamson1500@gmail.com', 'akinlabi525', '0', '081111111111', NULL, '$2y$10$4xY2j2au6jHak0MtavL5WO4D5QdaTJFSOKBfsTiiQe4RWo11y/di.', 'admin', NULL, NULL, NULL, NULL, NULL, '2022-03-25 19:00:14', '2022-03-25 19:00:14'),
(6, 'Akinlabi Olaoluwa', 'earnfa3p@gmail.com', 'olaoluwa15', '0', '08146328645', NULL, '$2y$10$ZM6WoE7I602W41AvYcwoL.P0/A6NQrUV2c2vVkTxuovlH9SVVIHnS', 'user', NULL, NULL, NULL, NULL, NULL, '2022-03-25 19:17:32', '2022-03-25 19:17:32'),
(7, 'Olaoluwa Samson', 'akinlabisamson15@gmail.com', 'akin', 'PRIME624e21cb8a2285.158977766', '08166939205', NULL, 'Pass628d2e658ab354.34881089', 'admin', NULL, NULL, NULL, NULL, NULL, '2022-04-05 11:58:27', '2022-05-24 18:13:41'),
(8, 'Akinolowo James', 'earnfap@gmail.com', 'adura234', 'PRIME624e21cb8a2285.15870683', '08100580309', NULL, 'olaoluwa15', 'user', NULL, NULL, 'I33yOBHQjhH3vQMx59qWMoYLu4OtsKY7qTkqgEZSX3oFznu3585xn3OZ3wUi', NULL, NULL, '2022-04-05 17:02:46', '2022-04-07 08:53:44'),
(9, 'Akinomo James', 'ade@gmail.com', 'Ademola233', NULL, '08166939205', NULL, '09876543', 'user', NULL, NULL, NULL, NULL, NULL, '2022-04-06 11:51:56', '2022-04-06 11:51:56'),
(10, 'ADEARA MAGO', 'admin@primedata.com.ng', 'Olaboye', NULL, '8057935868', NULL, '09876543', 'user', NULL, NULL, NULL, NULL, NULL, '2022-04-07 10:14:33', '2022-04-07 10:26:17'),
(11, 'Adelakun Doh', 'Awe@gmail.com', 'Seun2333', NULL, '08166939205', NULL, '09876543', 'user', NULL, NULL, NULL, NULL, NULL, '2022-04-07 14:52:04', '2022-04-07 14:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(200) NOT NULL,
  `username` varchar(300) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `account_name` varchar(200) NOT NULL DEFAULT '1',
  `account_number` varchar(200) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `username`, `balance`, `account_name`, `account_number`, `created_at`, `updated_at`) VALUES
(3, 'Adeolu23', '1300', 'STARCOMPANY/EVERDATA ADEOLU23', '7682277658', '2022-03-19 21:48:38.000000', '2022-03-25 15:08:10.000000'),
(4, 'akin', '84700', '1', '1', '2022-03-19 21:51:13.000000', '2022-07-12 13:46:54.000000'),
(8, 'akinlabi525', '6000', '1', '1', '2022-03-25 19:00:02.000000', '2022-03-27 14:05:39.000000'),
(9, 'olaoluwa15', '3800', '1', '1', '2022-03-25 19:17:24.000000', '2022-03-26 05:46:56.000000'),
(11, 'adura234', '1642', 'STARCOMPANY/PRIMEDATA AKIN525', '7696832706', '2022-04-05 17:02:33.000000', '2022-07-06 14:09:46.000000'),
(12, 'Ademola233', '0', '1', '1', '2022-04-06 11:51:37.000000', '2022-04-06 11:51:37.000000'),
(14, 'Olaboye', '0', 'STARCOMPANY/EVERDATA ADEDEJI12', '7682986051', '2022-04-07 10:14:25.000000', '2022-04-07 10:31:16.000000'),
(15, 'Seun2333', '0', 'STARCOMPANY/PRIMEDATA SEUN2333', '7685428657', '2022-04-07 14:51:54.000000', '2022-04-07 16:05:09.000000');

-- --------------------------------------------------------

--
-- Table structure for table `webooks`
--

CREATE TABLE `webooks` (
  `id` int(200) NOT NULL,
  `code` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webooks`
--

INSERT INTO `webooks` (`id`, `code`, `message`, `created_at`, `updated_at`) VALUES
(1, 'POST /api/honor HTTP/1.1\nAccept:          */*\nAccept-Encoding: gzip, deflate, br\nCache-Control:   no-cache\nConnection:      keep-alive\nContent-Length:  320\nContent-Type:    application/json\nHost:            127.0.0.1:8000\nPostman-Token:   ffcfad02-6ebb-4867-b0c8-830838c07e69\nUser-Agent:      PostmanRuntime/7.29.0\n\n{\n    \"code\" : 200,\n     \"message\": \"Dear Customer, You have successfully shared 5000MB Data to 2348168867154. Your SME data balance is 311.33GB expires 02/07/2022. Thankyou\",\n    \"reference\": \"165290850\",\n    \"type\": \"data\", /* possible types(\"data\", \"airtime\", \"electricity\", \"cable\", \"education\", \"bulksms\") */\n}', 'POST /api/honor HTTP/1.1\r\nAccept:          */*\r\nAccept-Encoding: gzip, deflate, br\r\nCache-Control:   no-cache\r\nConnection:      keep-alive\r\nContent-Length:  320\r\nContent-Type:    application/json\r\nHost:            127.0.0.1:8000\r\nPostman-Token:   ffcfad02-6ebb-4867-b0c8-830838c07e69\r\nUser-Agent:      PostmanRuntime/7.29.0\r\n\r\n{\r\n    \"code\" : 200,\r\n     \"message\": \"Dear Customer, You have successfully shared 5000MB Data to 2348168867154. Your SME data balance is 311.33GB expires 02/07/2022. Thankyou\",\r\n    \"reference\": \"165290850\",\r\n    \"type\": \"data\", /* possible types(\"data\", \"airtime\", \"electricity\", \"cable\", \"education\", \"bulksms\") */\r\n}', '2022-06-25 19:06:14.000000', '2022-06-25 19:06:14.000000'),
(2, 'POST /api/honor HTTP/1.1\r\nAccept:          */*\r\nAccept-Encoding: gzip, deflate, br\r\nCache-Control:   no-cache\r\nConnection:      keep-alive\r\nContent-Length:  319\r\nContent-Type:    application/json\r\nHost:            127.0.0.1:8000\r\nPostman-Token:   b0853d3d-ad61-484c-80d5-01e4b4cf59c5\r\nUser-Agent:      PostmanRuntime/7.29.0\r\n\r\n{\r\n    \"code\" : 200,\r\n     \"message\": \"Dear Customer, You have successfully shared 5000MB Data to 2348168867154. Your SME data balance is 311.33GB expires 02/07/2022. Thankyou\",\r\n    \"reference\": \"165290850\",\r\n    \"type\": \"data\" /* possible types(\"data\", \"airtime\", \"electricity\", \"cable\", \"education\", \"bulksms\") */\r\n}', 'POST /api/honor HTTP/1.1\r\nAccept:          */*\r\nAccept-Encoding: gzip, deflate, br\r\nCache-Control:   no-cache\r\nConnection:      keep-alive\r\nContent-Length:  319\r\nContent-Type:    application/json\r\nHost:            127.0.0.1:8000\r\nPostman-Token:   b0853d3d-ad61-484c-80d5-01e4b4cf59c5\r\nUser-Agent:      PostmanRuntime/7.29.0\r\n\r\n{\r\n    \"code\" : 200,\r\n     \"message\": \"Dear Customer, You have successfully shared 5000MB Data to 2348168867154. Your SME data balance is 311.33GB expires 02/07/2022. Thankyou\",\r\n    \"reference\": \"165290850\",\r\n    \"type\": \"data\" /* possible types(\"data\", \"airtime\", \"electricity\", \"cable\", \"education\", \"bulksms\") */\r\n}', '2022-06-25 20:14:59.000000', '2022-06-25 20:14:59.000000'),
(3, '200', 'Dear Customer, You have successfully shared 5000MB Data to 2348168867154. Your SME data balance is 311.33GB expires 02/07/2022. Thankyou', '2022-06-25 20:23:48.000000', '2022-06-25 20:23:48.000000'),
(4, '300', 'You are not sending to valid MTN number.', '2022-06-25 20:24:47.000000', '2022-06-25 20:24:47.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtimecons`
--
ALTER TABLE `airtimecons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apis`
--
ALTER TABLE `apis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bigs`
--
ALTER TABLE `bigs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payment`
--
ALTER TABLE `bill_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bos`
--
ALTER TABLE `bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charps`
--
ALTER TABLE `charps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refers`
--
ALTER TABLE `refers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webooks`
--
ALTER TABLE `webooks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airtimecons`
--
ALTER TABLE `airtimecons`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apis`
--
ALTER TABLE `apis`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bigs`
--
ALTER TABLE `bigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `bill_payment`
--
ALTER TABLE `bill_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT for table `bos`
--
ALTER TABLE `bos`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `charps`
--
ALTER TABLE `charps`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `refers`
--
ALTER TABLE `refers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `webooks`
--
ALTER TABLE `webooks`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
