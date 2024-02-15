-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2024 at 04:09 PM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfcgymnp_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Variable Frequency Drive(VFD)', '2023-08-11 22:43:51', '2023-08-11 22:43:51'),
(2, 'Thermostat', '2023-08-10 05:34:00', '2023-08-10 05:34:00'),
(3, 'Controller', '2023-08-10 05:36:14', '2023-08-10 05:36:14'),
(4, 'Sensor', '2023-08-10 05:36:23', '2023-08-10 05:36:23'),
(5, 'Valve & Actuator', '2023-08-10 05:36:38', '2023-08-10 05:36:38'),
(6, 'Differential Pressure Switch', '2023-08-10 05:37:04', '2023-08-10 05:37:04'),
(7, 'Flow Switch', '2023-08-10 05:37:20', '2023-08-10 05:37:20'),
(8, 'FCU', '2023-08-10 05:37:27', '2023-08-10 05:37:27'),
(9, 'Multi Product', '2023-08-10 05:37:41', '2023-08-10 05:37:41'),
(10, 'Cable', '2023-08-14 00:57:22', '2023-08-14 00:57:22'),
(11, 'Differential Pressure Transmitter', '2023-08-14 03:49:48', '2023-08-14 03:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `challan_cancels`
--

CREATE TABLE `challan_cancels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `previous_bundle_id` varchar(255) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challan_cancels`
--

INSERT INTO `challan_cancels` (`id`, `date`, `previous_bundle_id`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, '2023-09-26', 'challan-7073873', 'challanCancel-30566892', '2023-09-26 05:07:02', '2023-09-26 05:07:02'),
(2, '2023-09-26', 'challan-7073873', 'challanCancel-13226985', '2023-09-26 05:08:45', '2023-09-26 05:08:45'),
(3, '2023-09-26', 'challan-7073873', 'challanCancel-9416895', '2023-09-26 05:09:35', '2023-09-26 05:09:35'),
(4, '2023-09-26', 'challan-7073873', 'challanCancel-9416895', '2023-09-26 05:09:35', '2023-09-26 05:09:35'),
(5, '2023-10-05', 'challan-24373305', 'challanCancel-97136266', '2023-10-04 23:13:17', '2023-10-04 23:13:17'),
(6, '2023-11-04', 'challan-81119017', 'challanCancel-16757704', '2023-11-04 02:00:55', '2023-11-04 02:00:55'),
(7, '2023-11-23', 'challan-46684532', 'challanCancel-90145915', '2023-11-23 02:32:09', '2023-11-23 02:32:09'),
(8, '2023-12-19', 'challan-88176082', 'challanCancel-98280656', '2023-12-18 22:59:10', '2023-12-18 22:59:10'),
(9, '2023-12-19', 'challan-88176082', 'challanCancel-78643160', '2023-12-18 22:59:37', '2023-12-18 22:59:37'),
(10, '2023-12-19', 'challan-71759224', 'challanCancel-68319516', '2023-12-19 00:14:39', '2023-12-19 00:14:39'),
(11, '2023-12-19', 'challan-71759224', 'challanCancel-68319516', '2023-12-19 00:14:39', '2023-12-19 00:14:39'),
(12, '2023-12-19', 'challan-75579078', 'challanCancel-51885045', '2023-12-19 00:16:42', '2023-12-19 00:16:42'),
(13, '2023-12-27', 'challan-56330291', 'challanCancel-65441433', '2023-12-27 01:17:23', '2023-12-27 01:17:23'),
(14, '2023-12-31', 'challan-18955539', 'challanCancel-60007331', '2023-12-30 22:05:49', '2023-12-30 22:05:49'),
(15, '2024-01-10', 'challan-19585886', 'challanCancel-59703490', '2024-01-09 22:38:40', '2024-01-09 22:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `challan_cancel_products`
--

CREATE TABLE `challan_cancel_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `previous_bundle_id` varchar(100) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challan_cancel_products`
--

INSERT INTO `challan_cancel_products` (`id`, `product_id`, `quantity`, `previous_bundle_id`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, 114, 3, 'challan-7073873', 'challanCancel-30566892', '2023-09-26 05:07:02', '2023-09-26 05:07:02'),
(2, 115, 3, 'challan-7073873', 'challanCancel-13226985', '2023-09-26 05:08:46', '2023-09-26 05:08:46'),
(3, 114, 2, 'challan-7073873', 'challanCancel-9416895', '2023-09-26 05:09:35', '2023-09-26 05:09:35'),
(4, 115, 2, 'challan-7073873', 'challanCancel-9416895', '2023-09-26 05:09:35', '2023-09-26 05:09:35'),
(5, 105, 1, 'challan-24373305', 'challanCancel-97136266', '2023-10-04 23:13:17', '2023-10-04 23:13:17'),
(6, 96, 5, 'challan-81119017', 'challanCancel-16757704', '2023-11-04 02:00:55', '2023-11-04 02:00:55'),
(7, 104, 4, 'challan-46684532', 'challanCancel-90145915', '2023-11-23 02:32:09', '2023-11-23 02:32:09'),
(8, 16, 0, 'challan-88176082', 'challanCancel-98280656', '2023-12-18 22:59:10', '2023-12-18 22:59:10'),
(9, 16, 1, 'challan-88176082', 'challanCancel-78643160', '2023-12-18 22:59:37', '2023-12-18 22:59:37'),
(10, 117, 12, 'challan-71759224', 'challanCancel-68319516', '2023-12-19 00:14:39', '2023-12-19 00:14:39'),
(11, 99, 12, 'challan-71759224', 'challanCancel-68319516', '2023-12-19 00:14:39', '2023-12-19 00:14:39'),
(12, 92, 3, 'challan-75579078', 'challanCancel-51885045', '2023-12-19 00:16:42', '2023-12-19 00:16:42'),
(13, 104, 1, 'challan-56330291', 'challanCancel-65441433', '2023-12-27 01:17:23', '2023-12-27 01:17:23'),
(14, 88, 1, 'challan-18955539', 'challanCancel-60007331', '2023-12-30 22:05:49', '2023-12-30 22:05:49'),
(15, 26, 2, 'challan-19585886', 'challanCancel-59703490', '2024-01-09 22:38:40', '2024-01-09 22:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `challan_infos`
--

CREATE TABLE `challan_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_by` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `challan_no` varchar(255) DEFAULT NULL,
  `delivery_location` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `work_order_no` varchar(255) DEFAULT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `returnable` varchar(50) NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challan_infos`
--

INSERT INTO `challan_infos` (`id`, `date`, `status`, `created_by`, `customer_name`, `challan_no`, `delivery_location`, `contact_person`, `contact_number`, `work_order_no`, `bundle_id`, `returnable`, `created_at`, `updated_at`) VALUES
(1, '2023-07-13', 'Pending', 3, 'Square Hospital Ltd', 'IEL-2086', '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka-1205', NULL, NULL, 'SHL/PO/2207000116/23-2117', 'challan-18280815', 'Yes', '2023-11-06 22:11:19', '2023-11-06 22:11:19'),
(2, '2023-07-30', 'Pending', 3, 'Square Hospital Ltd', 'IEL-2701', '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka-1205', NULL, NULL, 'SHL/PO/2207000116/23-2117', 'challan-35827667', 'Yes', '2023-11-06 22:11:34', '2023-11-06 22:11:34'),
(3, '2023-08-06', 'Pending', 3, 'Square Hospital Ltd', 'IEL-2707', '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka-1205', NULL, NULL, 'SHL/PO/2207000116/23-2117', 'challan-29673733', 'Yes', '2023-11-06 22:11:43', '2023-11-06 22:11:43'),
(4, '2023-08-21', 'Complete', 3, 'Akij Food & Beverage Ltd', 'IEL-2722', 'Akij House, 198 Bir Uttam Mir Shawkat Sarak,Tejgaon,Dhaka-1208', NULL, '0', '1349827', 'challan-17459858', 'No', '2023-08-21 03:42:18', '2023-10-04 23:10:00'),
(5, '2023-08-21', 'Complete', 3, 'Akij Textile Mills Ltd', 'IEL-2730', 'Akij House, 198 Bir Uttam Mir Shawkat Sarak,Tejgaon,Dhaka-1208', NULL, NULL, '1351964', 'challan-84990057', 'No', '2023-08-21 04:10:37', '2023-10-04 23:09:57'),
(6, '2023-08-21', 'Complete', 3, 'Md.Milon Uddin', 'IEL-2731', NULL, NULL, NULL, 'N/A', 'challan-98091960', 'No', '2023-08-21 04:13:19', '2023-10-04 23:09:54'),
(7, '2023-08-23', 'Complete', 3, 'Renata Limited', 'IEL-2733', 'Sylhet', NULL, NULL, 'IXONY-KT-2308112-R0', 'challan-93374973', 'No', '2023-08-26 22:23:11', '2023-10-04 23:09:50'),
(8, '2023-08-26', 'Complete', 3, 'Akij Group', 'IEL-2734', 'Akij House, 198 Bir Uttam Mir Shawkat Sarak,Tejgaon,Dhaka-1208', 'Bishwojit', '01719063017', 'IXONY-KT-230798_R0', 'challan-91320379', 'No', '2023-08-26 22:34:16', '2023-10-04 23:09:45'),
(9, '2023-09-02', 'Complete', 3, 'Akij Ceramics Ltd', 'IEL-2735', 'Mokkhopr,Trishal,Mymensingh-2220,Bangladesh(ACRL Central)', NULL, NULL, '1392245', 'challan-40968221', 'No', '2023-09-02 00:27:56', '2023-10-04 23:09:42'),
(10, '2023-09-03', 'Complete', 3, 'Akij Ceramics Ltd', 'IEL-2737', 'Mokkhopr,Trishal,Mymensingh-2220,Bangladesh(ACRL Central)', NULL, NULL, 'N/A', 'challan-63001452', 'No', '2023-09-06 22:53:00', '2023-10-04 23:09:38'),
(11, '2023-09-14', 'Complete', 3, 'Biswash Engineering', 'IEL-2742', 'Jahanara Villa,House-KA,40/2,1st floor,Flat-A1,Shahjadpur,Gulshan,Dhaka-1212', 'Mr.Siddique', '0', 'N/A', 'challan-60220814', 'No', '2023-09-14 02:41:47', '2023-10-04 23:09:32'),
(12, '2023-09-14', 'Complete', 3, 'Nuvista Pharma Limited', 'IEL-2743', '48,Tongi,Industrial Area,Block-C,Tongi,Gazipur', NULL, NULL, 'IXONY-KT-2309125-R1', 'challan-48186381', 'No', '2023-09-14 02:44:28', '2023-10-04 23:10:08'),
(13, '2023-09-16', 'Pending', 3, 'MIA Engineering Bangladesh Limited', 'IEL-2744', 'New Zealand Dairy', NULL, NULL, 'N/A', 'challan-24373305', 'No', '2023-09-18 23:56:19', '2023-09-18 23:56:19'),
(14, '2023-09-19', 'Pending', 3, 'Master Control & Automation', 'IEL-2745', 'House-04,Block-A,Ward-01,Kaliakoir,Gazipur', 'Mr.Khorshed', '01754300136', 'N/A', 'challan-53895092', 'No', '2023-09-19 22:28:39', '2023-09-19 22:28:39'),
(15, '2023-09-24', 'Complete', 3, 'Evercare Hospital Dhaka', 'IEL-2746', 'Plot-81,Block-E,Bashundhara,R/A,Dhaka-1229,Bangladesh', NULL, NULL, '23-24/1269', 'challan-46684532', 'No', '2023-09-24 05:28:36', '2023-10-04 23:09:13'),
(16, '2023-09-26', 'Pending', 3, 'naim', '123', 'dhaka', 'naim', NULL, '123', 'challan-7073873', 'No', '2023-09-26 05:05:55', '2023-09-26 05:05:55'),
(17, '2023-09-25', 'Pending', 3, 'MIA Engineering Bangladesh Limited(New Zealand Dairy)', 'IEL-2747', 'Plot-52,Eastern Ponno Kendro Ground Floor,Road-07,Block-B,Banasree,Rampura', NULL, NULL, 'N/A', 'challan-95145618', 'No', '2023-09-26 23:51:39', '2023-09-26 23:51:39'),
(18, '2023-10-05', 'Pending', 3, 'Nuvista Pharma Limited', 'IEL-2748', '48,Tongi Industrial Area, Block-C, Tongi Gazipur-1710', NULL, NULL, 'IXONY-KT-230668-R3', 'challan-6018912', 'No', '2023-10-04 23:08:34', '2023-10-04 23:08:34'),
(19, '2023-10-10', 'Complete', 3, 'i3 Mechatronics Technology', 'IEL-2750', NULL, NULL, NULL, 'N/A', 'challan-93703640', 'No', '2023-10-10 03:52:23', '2023-10-11 05:23:25'),
(20, '2023-10-11', 'Complete', 3, 'Air Care', 'IEL-2754', NULL, NULL, NULL, NULL, 'challan-33338557', 'No', '2023-10-11 04:33:03', '2023-10-11 05:23:22'),
(21, '2023-10-11', 'Complete', 3, 'CTL Service Center', 'IEL-2753', 'National Parliament House', 'Mr.Bimol', '01796626293', 'CTL-IEL/2023/55', 'challan-71227680', 'No', '2023-10-11 05:22:25', '2023-10-28 22:10:39'),
(22, '2023-10-10', 'Complete', 3, 'Air Care', 'IEL-1871', NULL, NULL, NULL, 'N/A', 'challan-18065472', 'No', '2023-10-11 05:36:57', '2023-10-11 05:37:26'),
(23, '2023-10-14', 'Complete', 3, 'Biswash Engineering', 'IEL-2756', NULL, NULL, NULL, 'N/A', 'challan-26823475', 'No', '2023-10-14 01:21:31', '2023-10-14 01:21:36'),
(24, '2023-10-14', 'Complete', 3, 'Engr.Rakibul Islam', 'IEL-2757', NULL, 'Md.Imran', NULL, 'N/A', 'challan-47713710', 'No', '2023-10-14 01:25:01', '2023-10-14 01:25:19'),
(25, '2023-08-01', 'Complete', 3, 'Bay Engineering', 'IEL-2704', NULL, NULL, NULL, 'Ixony-KT-230677-R0', 'challan-59289317', 'No', '2023-10-14 01:54:27', '2023-10-14 03:00:13'),
(26, '2023-10-19', 'Complete', 3, 'Akij Food & Beverage Ltd', 'IEL-2758', 'Akij House,198 Bir Uttam Mir Shawkat Sarak,Tejgaon,Dhaka-1208', NULL, NULL, '1358824', 'challan-64076861', 'No', '2023-10-22 00:38:39', '2023-10-22 00:39:17'),
(27, '2023-10-21', 'Complete', 3, 'Md.Milon Uddin', 'IEL-2760', NULL, NULL, NULL, 'N/A', 'challan-69854953', 'No', '2023-10-22 00:46:20', '2023-10-22 00:48:46'),
(28, '2023-10-25', 'Complete', 3, 'Square Hospitals Ltd', 'IEL-2762', '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka-1205', NULL, NULL, 'SHL/PO/2305000093/23-3335', 'challan-93237882', 'No', '2023-10-24 22:30:30', '2023-10-27 22:19:54'),
(29, '2023-10-25', 'Complete', 3, 'Square Hospitals Ltd', 'IEL-2763', '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka-1205', NULL, NULL, NULL, 'challan-81119017', 'No', '2023-11-04 02:00:45', '2023-11-04 02:00:45'),
(30, '2023-10-26', 'Complete', 3, 'United Engineering', 'IEL-2764', NULL, NULL, NULL, NULL, 'challan-70903879', 'No', '2023-10-25 22:23:14', '2023-10-27 22:15:30'),
(31, '2023-10-28', 'Complete', 3, 'United Engineering', 'IEL-2767', 'House-10, Block-B, Main Road, Banasree, Rampura, Dhaka-1219', NULL, NULL, 'N/A', 'challan-21397964', 'No', '2023-10-27 22:13:38', '2023-10-27 22:15:34'),
(32, '2023-10-28', 'Pending', 3, 'Islam Refrigeration', 'IEL-2765', NULL, NULL, NULL, 'N/A', 'challan-99823285', 'No', '2023-10-27 23:30:15', '2023-10-27 23:30:15'),
(33, '2023-10-28', 'Complete', 3, 'Md.Milon Uddin', 'IEL-2768', NULL, NULL, NULL, 'N/A', 'challan-38056276', 'No', '2023-10-27 23:55:10', '2023-10-28 22:10:20'),
(34, '2023-10-31', 'Complete', 3, 'Bay Engineering & Equipment', 'IEL-2771', 'Badda Gulshan, Dhaka', NULL, NULL, 'N/A', 'challan-43531836', 'No', '2023-10-31 01:17:45', '2023-10-31 01:18:52'),
(35, '2023-10-31', 'Complete', 3, 'United Engineering', 'IEL-2772', NULL, NULL, NULL, 'N/A', 'challan-22959675', 'No', '2023-10-31 03:24:37', '2023-10-31 03:24:57'),
(36, '2023-11-01', 'Complete', 3, 'CTL Service Center', 'IEL-2773', NULL, NULL, NULL, 'N/A', 'challan-39205812', 'No', '2023-10-31 22:49:49', '2023-10-31 22:50:16'),
(37, '2023-11-01', 'Complete', 3, 'United Engineering', 'IEL-2769', NULL, NULL, NULL, 'N/A', 'challan-7588855', 'No', '2023-11-01 01:18:20', '2023-11-01 01:19:11'),
(38, '2023-10-25', 'Complete', 3, 'Square Hospitals Ltd', 'IEL-2763', NULL, NULL, NULL, 'SHL/PO/2210000185/23-3801', 'challan-87219845', 'No', '2023-11-04 02:03:43', '2023-11-04 02:04:08'),
(39, '2023-10-31', 'Pending', 3, 'Bay Engineering', 'IEL-2771', NULL, NULL, NULL, 'cancelled', 'challan-65194214', 'No', '2023-11-04 22:13:43', '2023-11-04 22:13:43'),
(40, '2023-11-02', 'Complete', 3, 'Healthcare Pharmaceuticals Ltd', 'IEL-2774', 'Gazariapara, Rajendrapur, P.O Mirzapur Bazar, Gazipur-1703, Bangladesh', NULL, NULL, '4130003430', 'challan-85757240', 'No', '2023-11-04 22:15:44', '2023-11-06 22:22:47'),
(41, '2023-11-05', 'Complete', 3, 'Akij Textile Mills Ltd', 'IEL-2780', NULL, NULL, NULL, '1351964', 'challan-60867909', 'No', '2023-11-05 00:15:51', '2023-11-05 00:22:01'),
(42, '2023-11-05', 'Complete', 3, 'Akij Food & Beverage Ltd', 'IEL-2779', NULL, NULL, NULL, '1349827', 'challan-3508943', 'No', '2023-11-05 00:20:20', '2023-11-05 00:22:07'),
(43, '2023-11-07', 'Complete', 3, 'Square Hospitals Ltd', 'IEL-2781', NULL, NULL, NULL, 'SHL/PO/2207000116123-217', 'challan-38651338', 'Yes', '2023-11-06 22:14:12', '2023-11-13 23:28:32'),
(44, '2023-11-07', 'Complete', 3, 'United Engineering', 'IEL-2782', 'House-10, Block-B, Main Road, Banasree, Rampura, Dhaka-1219', NULL, NULL, 'N/A', 'challan-50204673', 'No', '2023-11-07 03:46:02', '2023-11-13 23:28:24'),
(45, '2023-11-23', 'Pending', 3, 'Islam Refrigeration', 'IEL-2784', 'Rangpur', NULL, NULL, 'IXONY-KT230785-R0', 'challan-56330291', 'No', '2023-11-23 04:08:25', '2023-11-23 04:08:25'),
(46, '2023-11-23', 'Pending', 3, 'Evercare Hospital Dhaka', 'IEL-2785', 'Plot-81,Block-E,Bashundhara,R/A,Dhaka-1229,Bangladesh', NULL, NULL, NULL, 'challan-5179058', 'Yes', '2023-11-23 05:19:40', '2023-11-23 05:19:40'),
(47, '2023-11-27', 'Complete', 3, 'Mr.Abdullah', 'IEL-2786', NULL, NULL, NULL, 'N/A', 'challan-94673665', 'No', '2023-11-26 22:44:20', '2023-11-26 22:44:52'),
(48, '2023-12-03', 'Pending', 3, 'Master Control & Automation', 'IEL-2787,2789', 'House-04, Block-A, Road-01, Kaliakoir, Gazipur', 'Mr.Khorshed Alom', '01754300136', 'N/A', 'challan-57414799', 'No', '2023-12-02 23:37:09', '2023-12-02 23:37:09'),
(49, '2023-12-06', 'Complete', 3, 'Evercare Hospital Chattogram', 'IEL-2794', NULL, NULL, NULL, '23-24/1151', 'challan-703060', 'No', '2023-12-06 22:53:21', '2023-12-12 00:27:12'),
(50, '2023-12-09', 'Complete', 3, 'Md.Milon Uddin', 'IEL-2795', NULL, 'Md.Milon Uddin', '01684152019', 'N/A', 'challan-51276636', 'No', '2023-12-09 00:23:54', '2023-12-12 00:27:25'),
(51, '2023-12-12', 'Complete', 3, 'CTL Service Center', 'IEL-2797', NULL, NULL, NULL, 'N/A', 'challan-71759224', 'No', '2023-12-12 22:09:53', '2023-12-17 04:54:29'),
(52, '2023-12-17', 'Complete', 3, 'Reedisha Knitex Limited', 'IEL-2092', '36,shahid Tajuddin ahmed Sarani,Tejgaon I/A, Dhaka-1208, Bangladesh', 'Johirul Islam', '01313083702', 'RKL-PO-122023-00058', 'challan-91412413', 'No', '2023-12-17 04:57:13', '2023-12-17 06:06:51'),
(53, '2023-12-14', 'Complete', 3, 'The ACME Laboratories Ltd', 'IEL-2798', 'Dhulivita, Dhamrai, Dhaka, Bangladesh', NULL, NULL, '127318', 'challan-44723210', 'No', '2023-12-17 06:00:38', '2023-12-17 06:06:48'),
(54, '2023-12-14', 'Complete', 3, 'CTL Service Center', 'IEL-2799', 'TA-39/2,Boishakhi Sharani,Badda,Link Road,Dhaka', NULL, NULL, 'N/A', 'challan-80633225', 'No', '2023-12-17 06:05:22', '2023-12-17 06:06:45'),
(55, '2023-12-17', 'Pending', 3, 'Akij Group', 'IEL-2800', NULL, NULL, NULL, 'N/A', 'challan-58982151', 'No', '2023-12-17 06:07:43', '2023-12-17 06:07:43'),
(56, '2023-12-18', 'Pending', 3, 'Luna Polymer Industry', 'IEL-2802', 'Paragaon,Bhulta,Bhulta Hwy,Dhaka-1462', 'Mr.Shobuj', '01754604800', 'N/A', 'challan-88176082', 'No', '2023-12-17 23:42:44', '2023-12-17 23:42:44'),
(57, '2023-12-18', 'Pending', 3, 'CTL Service Center', 'IEL-2803', NULL, NULL, NULL, 'N/A', 'challan-75579078', 'No', '2023-12-18 02:52:31', '2023-12-18 02:52:31'),
(58, '2023-12-19', 'Complete', 3, 'United Engineering', 'IEL-2807', 'Banasree,Rampura,Dhaka', NULL, NULL, 'N/A', 'challan-44493139', 'No', '2023-12-19 23:16:13', '2023-12-19 23:16:59'),
(59, '2023-12-26', 'Pending', 3, 'Zenith Safety Solution', 'IEL-2810', 'House-42(1st Floor)Road-07,Senpara Parbata, Beside BRTA, Mirpur-10,dhaka-1216', NULL, NULL, 'N/A', 'challan-54684508', 'No', '2023-12-26 02:32:48', '2023-12-26 02:32:48'),
(60, '2023-12-29', 'Pending', 3, 'Akij House', NULL, NULL, NULL, NULL, NULL, 'challan-18955539', 'No', '2023-12-30 22:04:25', '2023-12-30 22:04:25'),
(61, '2023-11-29', 'Pending', 3, 'MIA Engineering Bangladesh Limited', 'IEL-2789', NULL, NULL, NULL, NULL, 'challan-4811683', 'No', '2023-12-31 23:51:24', '2023-12-31 23:51:24'),
(62, '2024-01-02', 'Pending', 3, 'Dream Engineering(Milon Uddin)', 'IEL-2813', NULL, 'Mr.Milon Uddin', '01756418791', 'N/A', 'challan-32350045', 'No', '2024-01-02 01:22:34', '2024-01-02 01:22:34'),
(63, '2023-12-28', 'Pending', 3, 'CTL Service Center', 'IEL-2811', 'TA-39/2,Boishakhi Sharani,Badda,Link Road,Dhaka', 'Mr.Polash', NULL, 'N/A', 'challan-18862101', 'No', '2024-01-03 04:43:02', '2024-01-03 04:43:02'),
(64, '2024-01-09', 'Pending', 3, 'United Engineering', 'IEL-2817', 'House-10, Block-B, Main Road, Banasree, Rampura, Dhaka-1219', NULL, NULL, 'N/A', 'challan-63644820', 'No', '2024-01-09 00:43:59', '2024-01-09 00:43:59'),
(65, '2024-01-09', 'Pending', 3, 'MIA Engineering Bangladesh Limited', 'IEL-2817', 'Plot-52,Eastern Ponno Kendro Ground Floor,Road-07,Block-B,Banasree,Rampura', NULL, NULL, 'IXONY-KT-2301-228', 'challan-19585886', 'No', '2024-01-09 01:17:18', '2024-01-09 01:17:18'),
(66, '2024-01-10', 'Pending', 3, 'MIA Engineering Bangladesh Limited', 'IEL-2818', 'Plot-52,Eastern Ponno Kendro Ground Floor,Road-07,Block-B,Banasree,Rampura', NULL, NULL, 'N/A', 'challan-93171795', 'No', '2024-01-09 22:39:37', '2024-01-09 22:39:37'),
(67, '2024-01-11', 'Pending', 3, 'Bay Engineering & Equipment', 'IEL-2820', 'Badda Gulshan, Dhaka', NULL, NULL, 'N/A', 'challan-88324179', 'No', '2024-01-11 05:32:33', '2024-01-11 05:32:33'),
(68, '2024-01-14', 'Pending', 3, 'Reedisha Knitex Limited', 'IEL-2822', '36,shahid Tajuddin ahmed Sarani,Tejgaon I/A, Dhaka-1208, Bangladesh', NULL, NULL, 'RKL-PO-12201300021', 'challan-74824754', 'No', '2024-01-14 23:52:27', '2024-01-14 23:52:27'),
(69, '2024-01-16', 'Pending', 3, 'Nuvista Pharma Limited', 'IEL-2823', '48,Tongi Industrial Area, Block-C, Tongi Gazipur-1710', NULL, NULL, 'N/A', 'challan-35891095', 'No', '2024-01-15 22:42:05', '2024-01-15 22:42:05'),
(70, '2024-01-18', 'Pending', 3, 'BRB Hospital', 'IEL-2826', NULL, NULL, NULL, '842/24', 'challan-47637713', 'No', '2024-01-19 23:47:36', '2024-01-19 23:47:36'),
(71, '2024-01-24', 'Pending', 3, 'Bay Engineering & Equipment', 'IEL-2828', 'Badda Gulshan, Dhaka', NULL, NULL, 'N/A', 'challan-17234070', 'No', '2024-01-24 01:17:31', '2024-01-24 01:17:31'),
(72, '2024-01-27', 'Pending', 3, 'Master Control & Automation', 'IEL-2832', NULL, NULL, NULL, 'N/A', 'challan-3086748', 'No', '2024-01-27 22:37:37', '2024-01-27 22:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `challan_products`
--

CREATE TABLE `challan_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challan_products`
--

INSERT INTO `challan_products` (`id`, `product_id`, `quantity`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, 78, 2, 'challan-18280815', '2023-08-19 01:52:57', '2023-08-19 01:52:57'),
(2, 78, 2, 'challan-35827667', '2023-08-19 01:57:28', '2023-08-19 01:57:28'),
(3, 78, 2, 'challan-29673733', '2023-08-19 01:59:04', '2023-08-19 01:59:04'),
(4, 100, 8, 'challan-17459858', '2023-08-21 03:51:14', '2023-08-21 03:51:14'),
(5, 100, 5, 'challan-84990057', '2023-08-21 04:09:34', '2023-08-21 04:09:34'),
(6, 88, 6, 'challan-84990057', '2023-08-21 04:09:48', '2023-08-21 04:09:48'),
(7, 74, 2, 'challan-98091960', '2023-08-21 04:13:32', '2023-08-21 04:13:32'),
(8, 101, 1, 'challan-93374973', '2023-08-26 22:23:27', '2023-08-26 22:23:27'),
(9, 49, 1, 'challan-91320379', '2023-08-26 22:35:22', '2023-08-26 22:35:22'),
(10, 102, 100, 'challan-91320379', '2023-08-26 22:35:42', '2023-08-26 22:35:42'),
(11, 51, 8, 'challan-40968221', '2023-09-02 00:28:09', '2023-09-02 00:28:09'),
(12, 20, 1, 'challan-63001452', '2023-09-06 22:54:06', '2023-09-06 22:54:06'),
(13, 103, 1, 'challan-60220814', '2023-09-14 02:42:03', '2023-09-14 02:42:03'),
(14, 106, 4, 'challan-60220814', '2023-09-14 02:42:17', '2023-09-14 02:42:17'),
(15, 78, 1, 'challan-48186381', '2023-09-14 02:44:44', '2023-09-14 02:44:44'),
(16, 105, 0, 'challan-24373305', '2023-09-18 23:56:35', '2023-10-04 23:13:17'),
(17, 29, 1, 'challan-53895092', '2023-09-19 22:28:54', '2023-09-19 22:28:54'),
(18, 104, 2, 'challan-46684532', '2023-09-24 05:28:55', '2023-11-23 02:33:21'),
(19, 114, 0, 'challan-7073873', '2023-09-26 05:06:45', '2023-09-26 05:09:35'),
(20, 115, 0, 'challan-7073873', '2023-09-26 05:08:10', '2023-09-26 05:09:35'),
(21, 113, 2, 'challan-95145618', '2023-09-26 23:51:54', '2023-09-26 23:51:54'),
(22, 66, 8, 'challan-6018912', '2023-10-04 23:08:53', '2023-10-04 23:08:53'),
(23, 3, 2, 'challan-93703640', '2023-10-10 03:52:37', '2023-10-10 23:55:13'),
(24, 46, 4, 'challan-33338557', '2023-10-11 04:33:21', '2023-10-11 04:33:21'),
(25, 19, 1, 'challan-71227680', '2023-10-11 05:22:45', '2023-10-11 05:22:45'),
(26, 46, 6, 'challan-18065472', '2023-10-11 05:37:16', '2023-10-11 05:37:16'),
(27, 49, 1, 'challan-26823475', '2023-10-14 01:23:34', '2023-10-14 01:23:34'),
(28, 24, 3, 'challan-47713710', '2023-10-14 01:25:13', '2023-10-14 01:25:13'),
(29, 14, 1, 'challan-59289317', '2023-10-14 01:54:43', '2023-10-14 01:54:43'),
(30, 88, 6, 'challan-64076861', '2023-10-22 00:38:57', '2023-10-22 00:38:57'),
(31, 88, 5, 'challan-69854953', '2023-10-22 00:46:33', '2023-10-22 00:46:33'),
(32, 116, 5, 'challan-93237882', '2023-10-24 22:31:35', '2023-10-24 22:31:35'),
(33, 96, 0, 'challan-81119017', '2023-10-24 23:49:08', '2023-11-04 02:00:55'),
(34, 88, 2, 'challan-70903879', '2023-10-25 22:23:32', '2023-10-25 22:23:32'),
(35, 51, 2, 'challan-21397964', '2023-10-27 22:13:51', '2023-10-27 22:13:51'),
(36, 87, 5, 'challan-99823285', '2023-10-27 23:30:36', '2023-10-27 23:30:36'),
(37, 111, 3, 'challan-99823285', '2023-10-27 23:31:06', '2023-10-27 23:31:06'),
(38, 108, 1, 'challan-38056276', '2023-10-27 23:55:37', '2023-10-27 23:55:37'),
(39, 117, 20, 'challan-43531836', '2023-10-31 01:18:46', '2023-10-31 01:18:46'),
(40, 51, 1, 'challan-22959675', '2023-10-31 03:24:51', '2023-10-31 03:24:51'),
(41, 117, 10, 'challan-39205812', '2023-10-31 22:50:09', '2023-10-31 22:50:09'),
(42, 92, 3, 'challan-7588855', '2023-11-01 01:18:48', '2023-11-01 01:18:48'),
(43, 96, 1, 'challan-87219845', '2023-11-04 02:04:00', '2023-11-04 02:04:00'),
(44, 119, 15, 'challan-85757240', '2023-11-04 22:16:04', '2023-11-04 22:16:04'),
(45, 123, 2, 'challan-85757240', '2023-11-04 22:16:34', '2023-11-04 22:16:34'),
(46, 120, 10, 'challan-85757240', '2023-11-04 22:18:10', '2023-11-04 22:18:10'),
(47, 121, 4, 'challan-85757240', '2023-11-04 22:23:38', '2023-11-04 22:23:38'),
(48, 122, 2, 'challan-85757240', '2023-11-04 22:25:12', '2023-11-04 22:25:12'),
(49, 125, 6, 'challan-60867909', '2023-11-05 00:17:19', '2023-11-05 00:17:19'),
(50, 94, 4, 'challan-3508943', '2023-11-05 00:21:15', '2023-11-05 00:21:15'),
(51, 125, 4, 'challan-3508943', '2023-11-05 00:21:52', '2023-11-05 00:21:52'),
(52, 78, 1, 'challan-38651338', '2023-11-06 22:14:29', '2023-11-06 22:14:29'),
(53, 92, 1, 'challan-50204673', '2023-11-07 03:46:17', '2023-11-07 03:46:17'),
(54, 104, 0, 'challan-56330291', '2023-11-23 04:08:43', '2023-12-27 01:17:23'),
(55, 106, 2, 'challan-56330291', '2023-11-23 04:09:00', '2023-11-23 04:09:00'),
(56, 113, 1, 'challan-56330291', '2023-11-23 04:09:30', '2023-11-23 04:09:30'),
(57, 50, 1, 'challan-5179058', '2023-11-23 05:19:55', '2023-11-23 05:19:55'),
(58, 46, 5, 'challan-94673665', '2023-11-26 22:44:43', '2023-11-26 22:44:43'),
(59, 1, 1, 'challan-57414799', '2023-12-02 23:37:32', '2023-12-02 23:37:32'),
(60, 3, 3, 'challan-57414799', '2023-12-02 23:37:51', '2023-12-02 23:37:51'),
(61, 4, 4, 'challan-57414799', '2023-12-02 23:38:04', '2023-12-02 23:38:04'),
(62, 128, 5, 'challan-57414799', '2023-12-02 23:38:20', '2023-12-02 23:38:20'),
(63, 129, 4, 'challan-57414799', '2023-12-02 23:39:02', '2023-12-02 23:39:02'),
(64, 6, 1, 'challan-57414799', '2023-12-02 23:39:16', '2023-12-02 23:39:16'),
(65, 130, 2, 'challan-57414799', '2023-12-02 23:39:35', '2023-12-02 23:39:35'),
(66, 8, 1, 'challan-57414799', '2023-12-02 23:39:51', '2023-12-02 23:39:51'),
(67, 25, 1, 'challan-57414799', '2023-12-02 23:40:05', '2023-12-02 23:40:05'),
(68, 117, 1, 'challan-703060', '2023-12-06 22:53:39', '2023-12-06 22:53:39'),
(69, 38, 11, 'challan-51276636', '2023-12-09 00:25:26', '2023-12-09 00:25:26'),
(70, 117, 0, 'challan-71759224', '2023-12-12 22:10:09', '2023-12-19 00:14:39'),
(71, 99, 0, 'challan-71759224', '2023-12-12 22:10:30', '2023-12-19 00:14:39'),
(72, 26, 1, 'challan-91412413', '2023-12-17 04:57:26', '2023-12-17 04:57:26'),
(73, 12, 4, 'challan-44723210', '2023-12-17 06:01:00', '2023-12-17 06:01:00'),
(74, 26, 2, 'challan-44723210', '2023-12-17 06:01:18', '2023-12-17 06:01:18'),
(75, 92, 5, 'challan-80633225', '2023-12-17 06:05:59', '2023-12-19 00:17:11'),
(76, 49, 1, 'challan-58982151', '2023-12-17 06:07:56', '2023-12-17 06:07:56'),
(77, 16, 0, 'challan-88176082', '2023-12-17 23:43:05', '2023-12-18 22:59:37'),
(78, 92, 0, 'challan-75579078', '2023-12-18 02:52:44', '2023-12-19 00:16:42'),
(79, 99, 7, 'challan-80633225', '2023-12-19 00:17:26', '2023-12-19 00:17:26'),
(80, 117, 12, 'challan-80633225', '2023-12-19 00:17:48', '2023-12-19 00:17:48'),
(81, 51, 3, 'challan-44493139', '2023-12-19 23:16:32', '2023-12-19 23:16:32'),
(82, 106, 4, 'challan-54684508', '2023-12-26 02:33:13', '2023-12-26 02:33:13'),
(83, 73, 6, 'challan-54684508', '2023-12-26 02:33:23', '2023-12-26 02:33:23'),
(84, 103, 1, 'challan-56330291', '2023-12-27 01:17:40', '2023-12-27 01:17:40'),
(85, 51, 1, 'challan-18955539', '2023-12-30 22:05:16', '2023-12-30 22:05:16'),
(86, 88, 0, 'challan-18955539', '2023-12-30 22:05:40', '2023-12-30 22:05:49'),
(87, 89, 1, 'challan-18955539', '2023-12-30 22:06:03', '2023-12-30 22:06:03'),
(88, 127, 1, 'challan-4811683', '2023-12-31 23:51:47', '2023-12-31 23:51:47'),
(89, 66, 2, 'challan-32350045', '2024-01-02 01:22:55', '2024-01-02 01:22:55'),
(90, 137, 2, 'challan-18862101', '2024-01-03 04:43:44', '2024-01-03 04:43:44'),
(91, 51, 1, 'challan-63644820', '2024-01-09 00:44:12', '2024-01-09 00:44:12'),
(92, 26, 0, 'challan-19585886', '2024-01-09 01:18:47', '2024-01-09 22:38:40'),
(93, 128, 2, 'challan-93171795', '2024-01-09 22:40:35', '2024-01-09 22:40:35'),
(94, 118, 6, 'challan-88324179', '2024-01-11 05:32:48', '2024-01-11 05:32:48'),
(95, 26, 1, 'challan-74824754', '2024-01-14 23:52:41', '2024-01-14 23:52:41'),
(96, 133, 1, 'challan-35891095', '2024-01-15 22:42:26', '2024-01-15 22:42:26'),
(97, 104, 1, 'challan-47637713', '2024-01-19 23:56:23', '2024-01-19 23:56:23'),
(98, 69, 1, 'challan-47637713', '2024-01-19 23:56:33', '2024-01-19 23:56:33'),
(99, 138, 1, 'challan-47637713', '2024-01-19 23:56:47', '2024-01-19 23:56:47'),
(100, 118, 2, 'challan-17234070', '2024-01-24 01:17:46', '2024-01-24 01:17:46'),
(101, 23, 1, 'challan-3086748', '2024-01-27 22:37:54', '2024-01-27 22:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `challan_return_infos`
--

CREATE TABLE `challan_return_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `challan_no` varchar(255) DEFAULT NULL,
  `delivery_location` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `work_order_no` varchar(255) DEFAULT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `challan_return_products`
--

CREATE TABLE `challan_return_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `demos`
--

CREATE TABLE `demos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `demos`
--

INSERT INTO `demos` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(10, 'product_manage', 'web', '2023-08-21 00:55:45', '2023-08-21 00:55:45'),
(11, 'category', 'web', '2023-08-21 00:55:57', '2023-08-21 00:55:57'),
(12, 'add_category', 'web', '2023-08-21 00:56:17', '2023-08-21 00:56:17'),
(13, 'show_category', 'web', '2023-08-21 00:56:23', '2023-08-21 00:56:23'),
(14, 'edit_category', 'web', '2023-08-21 00:56:37', '2023-08-21 00:56:37'),
(15, 'delete_category', 'web', '2023-08-21 00:56:43', '2023-08-21 00:56:43'),
(16, 'category_product', 'web', '2023-08-21 00:56:49', '2023-08-21 00:56:49'),
(17, 'product', 'web', '2023-08-21 00:57:30', '2023-08-21 00:57:30'),
(18, 'edit_product', 'web', '2023-08-21 00:57:40', '2023-08-21 00:57:40'),
(19, 'view_product', 'web', '2023-08-21 00:57:49', '2023-08-21 00:57:49'),
(20, 'add_product', 'web', '2023-08-21 00:58:25', '2023-08-21 00:58:25'),
(21, 'download_product', 'web', '2023-08-21 00:58:33', '2023-08-21 00:58:33'),
(22, 'purchase', 'web', '2023-08-21 00:59:10', '2023-08-21 00:59:10'),
(23, 'add_purchase', 'web', '2023-08-21 00:59:16', '2023-08-21 00:59:16'),
(24, 'edit_purchase', 'web', '2023-08-21 01:00:25', '2023-08-21 01:00:25'),
(25, 'purchase_product', 'web', '2023-08-21 01:00:33', '2023-08-21 01:01:46'),
(26, 'add_purchase_product', 'web', '2023-08-21 01:01:59', '2023-08-21 01:01:59'),
(27, 'show_purchase_product', 'web', '2023-08-21 01:02:08', '2023-08-21 01:02:08'),
(28, 'manage_challan', 'web', '2023-08-21 01:02:58', '2023-08-21 01:02:58'),
(29, 'challan', 'web', '2023-08-21 01:03:04', '2023-08-21 01:03:04'),
(30, 'add_challan', 'web', '2023-08-21 01:03:30', '2023-08-21 01:03:30'),
(31, 'edit_challan', 'web', '2023-08-21 01:03:35', '2023-08-21 01:03:35'),
(32, 'view_challan', 'web', '2023-08-21 01:03:39', '2023-08-21 01:03:39'),
(33, 'add_challan_product', 'web', '2023-08-21 01:04:20', '2023-08-21 01:04:20'),
(34, 'show_challan_product', 'web', '2023-08-21 01:04:43', '2023-08-21 01:04:43'),
(35, 'return_challan', 'web', '2023-08-21 01:05:07', '2023-08-21 01:05:07'),
(36, 'return_challan_complete', 'web', '2023-08-21 01:05:50', '2023-08-21 01:05:50'),
(37, 'report_generate', 'web', '2023-08-21 01:06:02', '2023-08-21 01:06:02'),
(38, 'report', 'web', '2023-08-21 01:06:13', '2023-08-21 01:06:13'),
(39, 'report_submit', 'web', '2023-08-21 01:06:36', '2023-08-21 01:06:36'),
(40, 'manage_employee', 'web', '2023-08-21 01:07:33', '2023-08-21 01:07:33'),
(41, 'employee', 'web', '2023-08-21 01:07:46', '2023-08-21 01:07:46'),
(42, 'add_employee', 'web', '2023-08-21 01:08:15', '2023-08-21 01:08:15'),
(43, 'edit_employee', 'web', '2023-08-21 01:09:00', '2023-08-21 01:09:00'),
(44, 'view_employee', 'web', '2023-08-21 01:09:05', '2023-08-21 01:09:05'),
(45, 'employee_status', 'web', '2023-08-21 01:09:25', '2023-08-21 01:09:25'),
(46, 'employee_resigned_list', 'web', '2023-08-21 01:10:07', '2023-08-21 01:10:07'),
(47, 'employee_resigned_view', 'web', '2023-08-21 01:10:19', '2023-08-21 01:10:19'),
(48, 'holiday_attendance', 'web', '2023-08-21 01:11:37', '2023-08-21 01:11:37'),
(49, 'employee_leave_request', 'web', '2023-08-21 01:11:49', '2023-08-21 01:11:49'),
(50, 'employee_add_leave_request', 'web', '2023-08-21 01:12:18', '2023-08-21 01:12:18'),
(51, 'employee_edit_leave_request', 'web', '2023-08-21 01:14:08', '2023-08-21 01:14:08'),
(52, 'employee_holiday', 'web', '2023-08-21 01:15:11', '2023-08-21 01:15:11'),
(53, 'employee_add_holiday', 'web', '2023-08-21 01:16:32', '2023-08-21 01:16:32'),
(54, 'employee_edit_holiday', 'web', '2023-08-21 01:17:28', '2023-08-21 01:17:28'),
(55, 'manage_leave', 'web', '2023-08-21 01:17:40', '2023-08-21 01:17:40'),
(56, 'role_permission', 'web', '2023-08-21 01:18:22', '2023-08-21 01:18:22'),
(57, 'role_manage', 'web', '2023-08-21 01:18:33', '2023-08-21 01:18:33'),
(58, 'add_role', 'web', '2023-08-21 01:18:46', '2023-08-21 01:18:46'),
(59, 'edit_role', 'web', '2023-08-21 01:20:17', '2023-08-21 01:20:17'),
(60, 'delete_role', 'web', '2023-08-21 01:20:23', '2023-08-21 01:20:23'),
(61, 'permission_manage', 'web', '2023-08-21 01:21:19', '2023-08-21 01:21:19'),
(62, 'add_permission', 'web', '2023-08-21 01:21:42', '2023-08-21 01:21:42'),
(63, 'edit_permission', 'web', '2023-08-21 01:21:53', '2023-08-21 01:21:53'),
(64, 'delete_permission', 'web', '2023-08-21 01:22:01', '2023-08-21 01:22:01'),
(65, 'manage_roles', 'web', '2023-08-21 01:22:36', '2023-08-21 01:22:36'),
(66, 'permission_under_role', 'web', '2023-08-21 01:24:24', '2023-08-21 01:24:24'),
(67, 'edit_permission_under_role', 'web', '2023-08-21 01:25:59', '2023-08-21 01:25:59'),
(68, 'delete_permission_under_role', 'web', '2023-08-21 01:26:11', '2023-08-21 01:26:11'),
(69, 'assign_role', 'web', '2023-08-21 01:27:59', '2023-08-21 01:27:59'),
(70, 'user_role_assign', 'web', '2023-08-21 01:28:24', '2023-08-21 01:28:24'),
(71, 'user_role_delete', 'web', '2023-08-21 01:29:06', '2023-08-21 01:29:06'),
(72, 'edit_profile', 'web', '2023-08-21 01:30:12', '2023-08-21 01:30:12'),
(73, 'profile_password_update', 'web', '2023-08-21 01:30:20', '2023-08-21 01:31:09'),
(74, 'profile_image_update', 'web', '2023-08-21 01:30:24', '2023-08-21 01:31:25'),
(75, 'profile_info', 'web', '2023-08-21 01:30:30', '2023-08-21 01:30:30'),
(76, 'profile_info_update', 'web', '2023-08-21 01:30:52', '2023-08-21 01:30:52'),
(77, 'challan_product', 'web', '2023-08-21 05:12:54', '2023-08-21 05:12:54'),
(78, 'challan_status', 'web', '2023-08-21 05:30:00', '2023-08-21 05:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `personal_contract_number` varchar(255) DEFAULT NULL,
  `office_contract_number` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nid_number` varchar(255) DEFAULT NULL,
  `nid_photo` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `resigned_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `permanent_address`, `current_address`, `personal_contract_number`, `office_contract_number`, `whatsapp_number`, `email`, `nid_number`, `nid_photo`, `photo`, `joining_date`, `resigned_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Golam Sarwar', 'Asst. Manager Admin & Inventory', '34/1/B-2,Hatkhola Road Dhaka', 'House-67,Block-B,Main Road,South Banasree,Dhaka', '01715613152', '02224405658', '01715613152', 'sarwar.ixony@gmail.com', '1531431707', NULL, NULL, '2015-09-01', NULL, 1, '2023-08-14 01:10:36', '2023-08-14 01:10:36'),
(5, 'Mishkatul Mohsinin', 'Assistant Manager', NULL, NULL, NULL, NULL, NULL, 'mishkatul.ixony@gmail.com', NULL, NULL, NULL, '2023-01-01', NULL, 1, '2023-09-07 03:51:50', '2023-09-07 03:51:50'),
(6, 'Md.Galib Hassan', 'Assistant Manager (Sales & Project)', NULL, NULL, NULL, NULL, NULL, 'galib.ixony@gmail.com', NULL, NULL, NULL, '2021-08-07', NULL, 1, '2023-09-07 03:53:40', '2023-09-07 03:53:40'),
(7, 'Khadiza Talukder', 'Design & Sales', NULL, NULL, NULL, NULL, NULL, 'khadiza.ixony@gmail.com', NULL, NULL, NULL, '2023-03-18', NULL, 1, '2023-09-07 03:54:54', '2023-09-19 01:35:42'),
(8, 'Md.Ashif Hasnain', 'Engineer(Project & Sales)', NULL, NULL, NULL, NULL, NULL, 'ashif.ixony@gmail.com', NULL, NULL, NULL, '2022-01-01', NULL, 1, '2023-09-07 03:57:33', '2023-09-19 01:36:50'),
(9, 'Mr Testing', 'Test', 'Dhaka', 'Dhaka', '01794556889', '01794556889', '01794556889', 'test@gmail.com', NULL, NULL, NULL, '2023-09-19', '2023-09-19', 0, '2023-09-19 01:40:18', '2023-09-19 01:45:22'),
(10, 'Md.Mosfequr Rahman', 'Director', NULL, NULL, '01713632703', NULL, NULL, 'mosfequr.sagar@live.com', NULL, NULL, NULL, '2023-10-03', NULL, 1, '2023-10-02 22:16:56', '2023-10-02 22:16:56'),
(11, 'Developer', 'Developer', 'Innova Infosys', 'Innova Infosys', '01571005859', '01571005859', '01571005859', 'bhudipta@gmail.com', NULL, NULL, 'developer-9141420375.jpg', '2023-11-22', NULL, 1, '2023-11-22 00:50:33', '2024-01-11 04:07:37'),
(12, 'Md.Mokhlesur Rahman', 'Chairman', 'Paikpara, Berilabari, Lalpur, Natore', 'House-10, Block-C, Main Road, Banasree, Rampura, Dhaka, Bangladesh', '16134016661', '02224405658', '16134016661', 'mokhles.rahman@gmail.com', '5558235924', NULL, NULL, '2023-11-22', NULL, 1, '2023-11-22 01:01:27', '2023-11-22 01:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `employee_holidays`
--

CREATE TABLE `employee_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `details` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_01_101648_create_permission_tables', 2),
(6, '2023_08_01_115326_create_categories_table', 3),
(27, '2023_08_02_060319_create_products_table', 4),
(28, '2023_08_02_095621_create_transaction_bundles_table', 4),
(29, '2023_08_02_095636_create_purchases_table', 4),
(30, '2023_08_03_070616_create_challans_table', 4),
(31, '2023_08_03_121015_create_purchase_products_table', 5),
(32, '2023_08_06_075447_create_challan_returns_table', 5),
(47, '2023_05_20_091836_create_employees_table', 6),
(48, '2023_07_22_080817_create_employee_leaves_table', 6),
(49, '2023_07_22_104934_create_employee_holidays_table', 6),
(50, '2023_07_23_063331_create_attendences_table', 6),
(51, '2023_08_10_115119_create_purchase_products_table', 6),
(52, '2023_08_10_115139_create_purchase_infos_table', 6),
(53, '2023_08_10_115152_create_challan_products_table', 6),
(54, '2023_08_10_115206_create_challan_infos_table', 6),
(55, '2023_08_10_121403_create_challan_return_products_table', 6),
(56, '2023_08_10_121419_create_challan_return_infos_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 10),
(9, 'App\\Models\\User', 2),
(9, 'App\\Models\\User', 9),
(10, 'App\\Models\\User', 11),
(10, 'App\\Models\\User', 14),
(10, 'App\\Models\\User', 16),
(11, 'App\\Models\\User', 17),
(12, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('base@admin.com', '$2y$10$QN.FGDks4xh2LJiM4CEdfOow7WdqYBIXegox8DtMey7jC6Ma81YsW', '2023-08-13 06:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(10, 'product_manage', 'web', '2023-08-21 00:55:45', '2023-08-21 00:55:45'),
(11, 'category', 'web', '2023-08-21 00:55:57', '2023-08-21 00:55:57'),
(12, 'add_category', 'web', '2023-08-21 00:56:17', '2023-08-21 00:56:17'),
(13, 'show_category', 'web', '2023-08-21 00:56:23', '2023-08-21 00:56:23'),
(14, 'edit_category', 'web', '2023-08-21 00:56:37', '2023-08-21 00:56:37'),
(15, 'delete_category', 'web', '2023-08-21 00:56:43', '2023-08-21 00:56:43'),
(16, 'category_product', 'web', '2023-08-21 00:56:49', '2023-08-21 00:56:49'),
(17, 'product', 'web', '2023-08-21 00:57:30', '2023-08-21 00:57:30'),
(18, 'edit_product', 'web', '2023-08-21 00:57:40', '2023-08-21 00:57:40'),
(19, 'view_product', 'web', '2023-08-21 00:57:49', '2023-08-21 00:57:49'),
(20, 'add_product', 'web', '2023-08-21 00:58:25', '2023-08-21 00:58:25'),
(21, 'download_product', 'web', '2023-08-21 00:58:33', '2023-08-21 00:58:33'),
(22, 'purchase', 'web', '2023-08-21 00:59:10', '2023-08-21 00:59:10'),
(23, 'add_purchase', 'web', '2023-08-21 00:59:16', '2023-08-21 00:59:16'),
(24, 'edit_purchase', 'web', '2023-08-21 01:00:25', '2023-08-21 01:00:25'),
(25, 'purchase_product', 'web', '2023-08-21 01:00:33', '2023-08-21 01:01:46'),
(26, 'add_purchase_product', 'web', '2023-08-21 01:01:59', '2023-08-21 01:01:59'),
(27, 'show_purchase_product', 'web', '2023-08-21 01:02:08', '2023-08-21 01:02:08'),
(28, 'manage_challan', 'web', '2023-08-21 01:02:58', '2023-08-21 01:02:58'),
(29, 'challan', 'web', '2023-08-21 01:03:04', '2023-08-21 01:03:04'),
(30, 'add_challan', 'web', '2023-08-21 01:03:30', '2023-08-21 01:03:30'),
(31, 'edit_challan', 'web', '2023-08-21 01:03:35', '2023-08-21 01:03:35'),
(32, 'view_challan', 'web', '2023-08-21 01:03:39', '2023-08-21 01:03:39'),
(33, 'add_challan_product', 'web', '2023-08-21 01:04:20', '2023-08-21 01:04:20'),
(34, 'show_challan_product', 'web', '2023-08-21 01:04:43', '2023-08-21 01:04:43'),
(35, 'return_challan', 'web', '2023-08-21 01:05:07', '2023-08-21 01:05:07'),
(36, 'return_challan_complete', 'web', '2023-08-21 01:05:50', '2023-08-21 01:05:50'),
(37, 'report_generate', 'web', '2023-08-21 01:06:02', '2023-08-21 01:06:02'),
(38, 'report', 'web', '2023-08-21 01:06:13', '2023-08-21 01:06:13'),
(39, 'report_submit', 'web', '2023-08-21 01:06:36', '2023-08-21 01:06:36'),
(40, 'manage_employee', 'web', '2023-08-21 01:07:33', '2023-08-21 01:07:33'),
(41, 'employee', 'web', '2023-08-21 01:07:46', '2023-08-21 01:07:46'),
(42, 'add_employee', 'web', '2023-08-21 01:08:15', '2023-08-21 01:08:15'),
(43, 'edit_employee', 'web', '2023-08-21 01:09:00', '2023-08-21 01:09:00'),
(44, 'view_employee', 'web', '2023-08-21 01:09:05', '2023-08-21 01:09:05'),
(45, 'employee_status', 'web', '2023-08-21 01:09:25', '2023-08-21 01:09:25'),
(46, 'employee_resigned_list', 'web', '2023-08-21 01:10:07', '2023-08-21 01:10:07'),
(47, 'employee_resigned_view', 'web', '2023-08-21 01:10:19', '2023-08-21 01:10:19'),
(48, 'holiday_attendance', 'web', '2023-08-21 01:11:37', '2023-08-21 01:11:37'),
(49, 'employee_leave_request', 'web', '2023-08-21 01:11:49', '2023-08-21 01:11:49'),
(50, 'employee_add_leave_request', 'web', '2023-08-21 01:12:18', '2023-08-21 01:12:18'),
(51, 'employee_edit_leave_request', 'web', '2023-08-21 01:14:08', '2023-08-21 01:14:08'),
(52, 'employee_holiday', 'web', '2023-08-21 01:15:11', '2023-08-21 01:15:11'),
(53, 'employee_add_holiday', 'web', '2023-08-21 01:16:32', '2023-08-21 01:16:32'),
(54, 'employee_edit_holiday', 'web', '2023-08-21 01:17:28', '2023-08-21 01:17:28'),
(55, 'manage_leave', 'web', '2023-08-21 01:17:40', '2023-08-21 01:17:40'),
(56, 'role_permission', 'web', '2023-08-21 01:18:22', '2023-08-21 01:18:22'),
(57, 'role_manage', 'web', '2023-08-21 01:18:33', '2023-08-21 01:18:33'),
(58, 'add_role', 'web', '2023-08-21 01:18:46', '2023-08-21 01:18:46'),
(59, 'edit_role', 'web', '2023-08-21 01:20:17', '2023-08-21 01:20:17'),
(60, 'delete_role', 'web', '2023-08-21 01:20:23', '2023-08-21 01:20:23'),
(61, 'permission_manage', 'web', '2023-08-21 01:21:19', '2023-08-21 01:21:19'),
(62, 'add_permission', 'web', '2023-08-21 01:21:42', '2023-08-21 01:21:42'),
(63, 'edit_permission', 'web', '2023-08-21 01:21:53', '2023-08-21 01:21:53'),
(64, 'delete_permission', 'web', '2023-08-21 01:22:01', '2023-08-21 01:22:01'),
(65, 'manage_roles', 'web', '2023-08-21 01:22:36', '2023-08-21 01:22:36'),
(66, 'permission_under_role', 'web', '2023-08-21 01:24:24', '2023-08-21 01:24:24'),
(67, 'edit_permission_under_role', 'web', '2023-08-21 01:25:59', '2023-08-21 01:25:59'),
(68, 'delete_permission_under_role', 'web', '2023-08-21 01:26:11', '2023-08-21 01:26:11'),
(69, 'assign_role', 'web', '2023-08-21 01:27:59', '2023-08-21 01:27:59'),
(70, 'user_role_assign', 'web', '2023-08-21 01:28:24', '2023-08-21 01:28:24'),
(71, 'user_role_delete', 'web', '2023-08-21 01:29:06', '2023-08-21 01:29:06'),
(72, 'edit_profile', 'web', '2023-08-21 01:30:12', '2023-08-21 01:30:12'),
(73, 'profile_password_update', 'web', '2023-08-21 01:30:20', '2023-08-21 01:31:09'),
(74, 'profile_image_update', 'web', '2023-08-21 01:30:24', '2023-08-21 01:31:25'),
(75, 'profile_info', 'web', '2023-08-21 01:30:30', '2023-08-21 01:30:30'),
(76, 'profile_info_update', 'web', '2023-08-21 01:30:52', '2023-08-21 01:30:52'),
(77, 'challan_product', 'web', '2023-08-21 05:12:54', '2023-08-21 05:12:54'),
(78, 'challan_status', 'web', '2023-08-21 05:30:00', '2023-08-21 05:30:00'),
(79, 'Design & Sales', 'web', '2023-09-10 22:21:33', '2023-09-10 22:21:33'),
(80, 'challan_cancel', 'web', '2023-08-21 05:30:00', '2023-08-21 05:30:00'),
(81, 'cancel_challan_product', 'web', '2023-08-21 05:30:00', '2023-08-21 05:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `series` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `country_of_manufacturing` varchar(255) DEFAULT NULL,
  `base_unit` bigint(20) UNSIGNED DEFAULT NULL,
  `current_price` varchar(255) DEFAULT NULL,
  `current_stock` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_limit` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `series`, `title`, `details`, `model`, `brand`, `origin`, `country_of_manufacturing`, `base_unit`, `current_price`, `current_stock`, `stock_limit`, `created_by`, `created_at`, `updated_at`, `category`) VALUES
(1, 'A1000 Series', 'Capacity: 1.5 kw/Amp: 4.1', NULL, 'CIMR-AT4A0004FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 01:27:02', '2023-12-02 23:37:32', 'Variable Frequency Drive(VFD)'),
(2, 'A1000 Series', 'Capacity: 3.7kw/Amp: 9', 'Capacity: 3.7kw, Amp: 8.8,', 'CIMR-AT4A0009FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 01:29:35', '2023-08-21 04:19:43', 'Variable Frequency Drive(VFD)'),
(3, 'A1000 Series', 'Capacity: 5.5kw/Amp: 11.1', NULL, 'CIMR-AT4A0011FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 01:31:37', '2023-12-02 23:37:51', 'Variable Frequency Drive(VFD)'),
(4, 'A1000 Series', 'Capacity: 7.5kw/Amp: 18', NULL, 'CIMR-AT4A0018FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 01:35:58', '2023-12-02 23:38:04', 'Variable Frequency Drive(VFD)'),
(5, 'A1000 Series', 'Capacity: 11kw/7.5kw/Amp: 33A/40A', NULL, 'CIMR-AT2A0040FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 2, 3, 1, '2023-07-26 01:38:37', '2024-01-18 05:03:29', 'Variable Frequency Drive(VFD)'),
(6, 'A1000 Series', 'Capacity: 22kw/Amp: 44', NULL, 'CIMR-AT4A0044FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 01:40:39', '2023-12-02 23:39:16', 'Variable Frequency Drive(VFD)'),
(7, 'A1000 Series', 'Capacity: 37kw/Amp: 72', NULL, 'CIMR-AT4A0072AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 01:49:48', '2023-08-21 04:21:44', 'Variable Frequency Drive(VFD)'),
(8, 'A1000 Series', 'Capacity: 55kw/Amp: 103 Remarks: Phase 2', NULL, 'CIMR-AT4A0103AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:13:34', '2023-12-02 23:39:51', 'Variable Frequency Drive(VFD)'),
(9, 'A1000 Series', 'Capacity: 75kw/Amp: 139', NULL, 'CIMR-AT4A0139AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:19:07', '2023-08-21 04:22:27', 'Variable Frequency Drive(VFD)'),
(10, 'A1000 Series', 'Capacity: 90kw/Amp: 165 Remarks: Phase 2', NULL, 'CIMR-AT4A0165AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:23:20', '2023-08-21 04:22:57', 'Variable Frequency Drive(VFD)'),
(11, 'E1000 Series', 'Capacity: 3.7kw/Amp: 8.8', NULL, 'CIMR-ET4A0009FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 5, 3, 1, '2023-07-26 03:26:04', '2023-08-21 04:23:14', 'Variable Frequency Drive(VFD)'),
(12, 'E1000 Series', 'Capacity: 5.5kw/Amp: 11.1 Remarks: 01 nos Old', NULL, 'CIMR-ET4A0011FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:29:35', '2023-12-17 06:01:00', 'Variable Frequency Drive(VFD)'),
(14, 'E1000 Series', 'Capacity: 7.5kw/Amp: 18 Remarks: Phase 2', NULL, 'CIMR-ET4A0018FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:31:34', '2023-10-14 01:54:43', 'Variable Frequency Drive(VFD)'),
(15, 'E1000 Series', 'Capacity: 11kw/Amp: 23', NULL, 'CIMR-ET4A0023FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:34:14', '2023-08-21 04:24:24', 'Variable Frequency Drive(VFD)'),
(16, 'E1000 Series', 'Capacity: 15kw/Amp: 31', NULL, 'CIMR-ET4A0031FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 4, 3, 1, '2023-07-26 03:35:37', '2023-12-18 22:59:37', 'Variable Frequency Drive(VFD)'),
(17, 'E1000 Series', 'Capacity: 18.5kw/Amp: 38', NULL, 'CIMR-ET4A0038FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 4, 3, 1, '2023-07-26 03:37:04', '2023-08-21 04:25:35', 'Variable Frequency Drive(VFD)'),
(18, 'E1000 Series', 'Capacity: 22kw/Amp: 44', NULL, 'CIMR-ET4A0044FAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:39:10', '2023-08-21 04:25:12', 'Variable Frequency Drive(VFD)'),
(19, 'E1000 Series', 'Capacity: 37kw/Amp: 72 Remarks: Phase 2', NULL, 'CIMR-ET4A0072AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:41:22', '2023-10-11 05:22:45', 'Variable Frequency Drive(VFD)'),
(20, 'FCU', 'Capacity:4 Ton', NULL, 'FP-272K', 'Aike', 'China', 'China', NULL, NULL, 15, 3, 1, '2023-07-26 03:42:06', '2023-09-06 22:54:06', 'FCU'),
(21, 'E1000 Series', 'Capacity: 55kw/Amp: 103 Remarks: Phase 2', NULL, 'CIMR-ET4A0103AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:42:34', '2023-08-21 04:26:29', 'Variable Frequency Drive(VFD)'),
(22, 'E1000 Series', 'Capacity: 75kw/Amp: 139', NULL, 'CIMR-ET4A0139AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:43:49', '2023-08-21 04:26:47', 'Variable Frequency Drive(VFD)'),
(23, 'E1000 Series', 'Capacity: 90kw/Amp: 165 Remarks: Phase 2', NULL, 'CIMR-ET4A0165AAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:45:07', '2024-01-27 22:37:54', 'Variable Frequency Drive(VFD)'),
(24, 'FCU', 'Capacity: 1.5 Ton', NULL, 'Daikin', 'Daikin', NULL, NULL, NULL, NULL, 0, 3, 1, '2023-07-26 03:46:17', '2023-10-14 01:25:13', 'FCU'),
(25, 'G700 Series', 'Capacity: 3.7kw/9Amp', NULL, 'G7A43P7', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:46:27', '2023-12-02 23:40:05', 'Variable Frequency Drive(VFD)'),
(26, 'GA500 Series', 'Capacity: 7.5kw, Remarks: Phase 2', NULL, 'GA50T4018ABAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:47:23', '2024-01-14 23:52:41', 'Variable Frequency Drive(VFD)'),
(27, 'FCU', 'Capacity: 2.9 Ton', NULL, 'Model: 40HK32+40HKAL(01nos circuit not available)', 'Carrier', 'China', NULL, NULL, NULL, 2, 3, 1, '2023-07-26 03:47:41', '2023-11-26 22:21:37', 'FCU'),
(28, 'GA700', 'Capacity: 22/18.5 kw', NULL, 'GA70T2082ABA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 1, 3, 1, '2023-07-26 03:48:44', '2023-08-14 03:03:32', 'Variable Frequency Drive(VFD)'),
(29, 'GA700', 'Capacity: 15/18.5kw', NULL, 'GA70T2070ABA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 0, 3, 1, '2023-07-26 03:50:03', '2023-09-19 22:28:54', 'Variable Frequency Drive(VFD)'),
(30, 'J1000 Series', 'Capacity: 1.5/0.75 kw/Amp: 4.1', NULL, 'CIMR-JT4A0004BAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 3, 3, 1, '2023-07-26 03:51:13', '2023-08-21 04:28:25', 'Variable Frequency Drive(VFD)'),
(31, 'J1000', 'Capacity: 2.2/1.5 kw/Amp: 5', NULL, 'CIMR-JT4A0005BAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 5, 3, 1, '2023-07-26 03:52:52', '2023-08-21 04:28:46', 'Variable Frequency Drive(VFD)'),
(32, 'Multi Product', 'Walkie Talkie(Rack-1)', NULL, 'T460', 'Motorolla', NULL, NULL, NULL, NULL, 6, 3, 1, '2023-07-26 03:54:40', '2024-01-16 23:47:04', 'Multi Product'),
(33, 'V1000', 'Capacity: 1.5/0.75 kw/Amp: 4, Remarks: 2 nos from Phase 2', NULL, 'CIMR-VT4A0004BAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 6, 3, 1, '2023-07-26 03:55:47', '2023-08-21 04:27:52', NULL),
(34, 'Multi Product', 'RMZ791(Rack-2)', NULL, 'RMZ791', 'Siemens', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 03:56:35', '2024-01-16 23:47:30', 'Multi Product'),
(35, 'V1000', 'Capacity: 2.2/1.5kw/Amp:5 Remarks: Phase 2', NULL, 'CIMR-VT4A0005BAA', 'Yaskawa', 'Japan', 'Japan', NULL, NULL, 10, 3, 1, '2023-07-26 03:56:54', '2023-08-21 04:29:34', 'Variable Frequency Drive(VFD)'),
(36, 'V1000', 'PG Option card(Rack-3)', NULL, 'PG-X3', NULL, NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 03:57:54', '2024-01-16 23:49:03', 'Variable Frequency Drive(VFD)'),
(37, 'Multi Product', 'Guard Tour(Rack-4)', NULL, 'WM5000V4S', NULL, NULL, NULL, NULL, NULL, 5, 3, 1, '2023-07-26 03:59:10', '2024-01-20 23:30:34', 'Multi Product'),
(38, 'Thermostat', 'Specification: On/Off(Digital)(Rack-2)', NULL, 'RDF300.02', 'Siemens', NULL, NULL, NULL, NULL, 39, 3, 1, '2023-07-26 04:00:20', '2024-01-20 23:31:01', NULL),
(39, 'Thermostat', 'Thermostat(Rack-2)', NULL, 'RDG110', 'Siemens', NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:01:11', '2024-01-18 00:45:37', 'Thermostat'),
(40, 'Multi Product', 'Pressure Transmitter(Rack-3)', NULL, '628-10-GH-P9-EI-S5-AT', 'Dwyer', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:01:12', '2024-01-18 00:46:14', 'Multi Product'),
(41, 'Thermostat', 'Thermostat-On/Off(Digital)(Rack-2)', NULL, 'RDF510', 'Siemens', NULL, NULL, NULL, NULL, 17, 3, 1, '2023-07-26 04:02:01', '2024-01-18 00:47:03', 'Thermostat'),
(42, 'DPT', 'Differential Pressure Transmitter(Rack-3)', NULL, 'CP213BOR', 'KIMO', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:02:15', '2024-01-18 00:47:20', 'Differential Pressure Transmitter'),
(43, 'Thermostat', 'Thermostat-On/Off(Digital)(Rack-3)', NULL, 'RCF230D', 'Regin', NULL, NULL, NULL, NULL, 5, 3, 1, '2023-07-26 04:02:50', '2024-01-18 00:47:37', 'Thermostat'),
(44, 'Sensor', 'Duct-mount temp. and humidity transmitter/sensor(Rack-1)', NULL, 'RHP2D22', NULL, NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:03:12', '2024-01-18 00:48:06', 'Sensor'),
(45, 'Thermostat', 'Thermostat-On/Off(Digital), Remarks: Replaced by TF228WN/U(Rack-3)', NULL, 'WM428WN/U-Modbus', 'Honeywell', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:04:39', '2024-01-18 00:48:33', 'Thermostat'),
(46, 'Thermostat', 'Thermostat-On/Off(Analog)(Rack-4)', NULL, 'T2000EAC-0C0', 'Johnson control', NULL, NULL, NULL, NULL, 45, 3, 1, '2023-07-26 04:05:53', '2024-01-18 00:48:54', 'Thermostat'),
(47, 'Thermostat', 'Thermostat-On/Off(Analog)(Rack-4)', NULL, 'TEC2616-4', 'Johnson control', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:06:56', '2024-01-18 00:49:12', 'Thermostat'),
(48, 'Sensor', 'Sensor(Rack-1)', NULL, 'HTE200B12E2', NULL, NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:07:05', '2024-01-18 00:49:35', 'Sensor'),
(49, 'Thermostat', 'Thermostat-On/Off(Digital)', NULL, 'T6800H2WN', 'Honeywell', NULL, NULL, NULL, NULL, 0, 3, 1, '2023-07-26 04:07:46', '2023-12-17 06:07:56', 'Thermostat'),
(50, 'Multi Product', 'Thyristor Power Regulator(80Amp)-Current Valve(Rack-2)', NULL, 'W5-TP4V-080-24J', 'Sipin', NULL, NULL, NULL, NULL, 0, 3, 1, '2023-07-26 04:08:31', '2024-01-18 00:50:19', 'Multi Product'),
(51, 'Thermostat', 'Thermostat-On/Off(Digital)(Rack-4)', NULL, 'CFU-D222', 'Belimo', NULL, NULL, NULL, NULL, 57, 3, 1, '2023-07-26 04:08:34', '2024-01-18 00:50:44', 'Thermostat'),
(52, 'I/O Module', '6 Relay output module(Rack-2)', NULL, 'TXM1.6R', 'Siemens', NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:09:40', '2024-01-18 00:51:04', 'Multi Product'),
(53, 'Heater', 'Heater-3KW', NULL, '3KW', 'Foreign', 'NTT', NULL, NULL, NULL, 16, 3, 1, '2023-07-26 04:10:16', '2023-08-14 04:58:16', 'Multi Product'),
(54, 'Thermostat', 'Safety Thermostat(Rack-2)', NULL, 'TS-120S', 'Rainbow', NULL, NULL, NULL, NULL, 27, 3, 1, '2023-07-26 04:12:05', '2024-01-21 00:36:37', 'Thermostat'),
(55, 'Multi Product', 'Network Switch-5 port(Rack-2)', NULL, 'Network Switch', 'TP Link', NULL, NULL, NULL, NULL, 17, 3, 1, '2023-07-26 04:12:39', '2024-01-21 00:40:44', 'Multi Product'),
(56, 'Thermostat', 'Thermostat-On/Off(Digital)(Rack-3)', 'Specificatior:', 'WME428WNM/U-Modbus', 'Honeywell', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:12:54', '2024-01-18 01:18:23', 'Thermostat'),
(57, 'Thermostat', 'Thermostat-On/Off(Digital)(Rack-3)', NULL, 'WS3E2WB/U', 'Honeywell', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:13:26', '2024-01-18 01:19:40', 'Thermostat'),
(58, 'Multi Product', 'Socket with MK Box-6 pin', NULL, 'Socket with MK Box', 'Circle', NULL, NULL, NULL, NULL, 21, 3, 1, '2023-07-26 04:13:45', '2023-08-19 03:31:13', 'Multi Product'),
(59, 'Multi Product', 'Cat 6 Cable Connector', NULL, NULL, 'D Link', NULL, NULL, NULL, NULL, 100, 3, 1, '2023-07-26 04:14:55', '2023-08-19 01:13:38', 'Multi Product'),
(60, 'Thermostat', 'Thermostat(Rack-3)', 'Specification: Digital, Remarks: 2nos Returnable to Akij', 'T24-MP', 'Honeywell', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:15:25', '2024-01-18 01:20:37', 'Thermostat'),
(61, 'Sensor', 'Duct Humidity Temp.Sensor / 4 to 20mA(Rack-2)', NULL, 'QFM2171', 'Siemens', NULL, NULL, NULL, NULL, 4, 3, 1, '2023-07-26 04:17:20', '2024-01-18 01:21:38', 'Sensor'),
(62, 'Multi Product', 'PVC Tape', NULL, 'PVC Tape', 'Yellow', NULL, NULL, NULL, NULL, 21, 3, 1, '2023-07-26 04:17:36', '2023-08-14 03:44:30', 'Multi Product'),
(63, 'Sensor', 'Duct Humidity Temp.Sensor-0 to 10V(Rack-2)', NULL, 'QFM2160', 'Siemens', NULL, NULL, NULL, NULL, 11, 3, 1, '2023-07-26 04:18:46', '2024-01-18 01:22:40', 'Sensor'),
(64, 'Multi Product', 'PVC Tape', NULL, 'PVC Tape', 'Red', NULL, NULL, NULL, NULL, 21, 3, 1, '2023-07-26 04:18:54', '2023-08-14 03:45:49', 'Multi Product'),
(65, 'Multi Product', 'PVC Tape', NULL, 'PVC Tape', 'Black', NULL, NULL, NULL, NULL, 21, 3, 1, '2023-07-26 04:19:47', '2023-08-14 03:46:16', 'Multi Product'),
(66, 'Sensor', 'Room Humi/Temp. Sensor-0 to 10V LCD', NULL, 'QFA3160D', 'Siemens', NULL, NULL, NULL, NULL, 0, 3, 1, '2023-07-26 04:20:08', '2024-01-02 01:22:55', 'Sensor'),
(67, 'Flow Switch', 'Flow switch for Water', NULL, '24-013', 'UEC', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:20:42', '2023-08-14 03:47:39', 'Flow Switch'),
(68, 'Sensor', 'Room Humi/Temp. Sensor-0 to 10V LCD', NULL, 'QFA2060D', 'Siemens', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:21:04', '2024-01-20 23:32:39', 'Sensor'),
(69, 'DPT for Water', 'Differential Pressure Transmitter for Water(Rack-3)', NULL, 'TTKN16', 'Regin', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:21:54', '2024-01-19 23:56:33', 'Differential Pressure Transmitter'),
(70, 'Sensor', 'Duct temperature sensor(rack-2)', NULL, 'QAM2120.040', 'Siemens', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:21:56', '2024-01-18 01:26:12', 'Sensor'),
(71, 'DPT for Air', 'Differential pressure transmitter(Rack-3)', NULL, 'DMD', 'Regin', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:22:25', '2024-01-18 01:27:52', 'Differential Pressure Transmitter'),
(72, 'DP Switch', 'Differential Pressure Switch for Air(50-500)pa(Rack-2)', NULL, 'QBM81-5', 'Siemens', NULL, NULL, NULL, NULL, 6, 3, 1, '2023-07-26 04:22:48', '2024-01-18 01:29:07', 'Differential Pressure Switch'),
(73, 'DPS Switch', 'Differential Pressure Switch for Water(Rack-3)', NULL, 'DXW-11-152-2', 'Dwyer', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:23:40', '2024-01-18 01:30:02', 'Differential Pressure Switch'),
(74, 'Sensor', 'Temperature Sensor(Rack-2)', NULL, 'TF43NTC10K', 'Regeltechnik', NULL, NULL, NULL, NULL, 4, 3, 1, '2023-07-26 04:24:00', '2024-01-18 01:30:50', 'Sensor'),
(75, 'Controller', 'Controller(Rack-4)', NULL, 'UB433SEN', 'Honeywell', NULL, NULL, NULL, NULL, 17, 3, 1, '2023-07-26 04:24:59', '2024-01-18 01:31:44', 'Controller'),
(76, 'Valve Actuator', '2 way Control valve without Actuator(2 way 20mm)(Rack-4)', NULL, 'BTV20-3,9', 'Regin', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:32:01', '2024-01-20 04:01:50', 'Valve & Actuator'),
(77, 'Valve Actuator', '2 way Control valve(2 way 25mm)(Rack-4)', NULL, 'BTV25-10', 'Regin', NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:34:21', '2024-01-18 01:33:59', 'Valve & Actuator'),
(78, 'CP-IPC', 'Controller(Rack-3)', NULL, 'CP-IPC', 'Honeywell', NULL, NULL, NULL, NULL, 9, 3, 1, '2023-07-26 04:35:21', '2024-01-18 01:35:09', 'Controller'),
(79, 'Controller', 'Controller', NULL, 'C282T-3', 'Regin', NULL, NULL, NULL, NULL, 0, 3, 1, '2023-07-26 04:36:08', '2023-08-19 03:21:15', 'Controller'),
(80, 'Controller', 'Controller(Rack-4)', NULL, 'CPO-RL5', 'Honeywell', NULL, NULL, NULL, NULL, 5, 3, 1, '2023-07-26 04:36:53', '2024-01-18 01:36:28', 'Controller'),
(82, 'Valve Actuator', '2 way control valve without Actuator(2 way 32mm)(Rack-4)', NULL, 'BTV-32-16', 'Regin', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:43:27', '2024-01-20 04:01:13', 'Valve & Actuator'),
(83, 'Valve Actuator', '3 way control valve with actuator(3 way 80mm)Actuator 1600N(Rack-2)', NULL, 'VXF47.80+SBV61', 'Siemens', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:44:26', '2024-01-18 01:40:10', 'Valve & Actuator'),
(84, 'Valve Actuator', 'Butterfly valve with actuator(100mm)', NULL, 'D6100NL/PRCA-BAC-S2-T', 'Belimo', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:45:25', '2023-08-14 05:09:00', 'Valve & Actuator'),
(85, 'Valve Actuator', 'Butterfly valve without actuator(150mm)', NULL, 'V4BFQ16-150U', 'Honeywell', NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:46:22', '2023-08-14 05:09:34', 'Valve & Actuator'),
(86, 'Valve Actuator', 'PICV valve with Actuator(25mm)(Rack-4)', NULL, 'PCMTV-25+RTAM125-24A', 'Regin', NULL, NULL, NULL, NULL, 2, 3, 1, '2023-07-26 04:47:11', '2024-01-18 01:40:56', 'Valve & Actuator'),
(87, 'Valve Actuator', '3 way solenoid valve with Actuator-25mm(without actuator)', NULL, 'VC6013MP6000T', 'Honeywell', NULL, NULL, NULL, NULL, 3, 3, 1, '2023-07-26 04:48:04', '2023-10-31 01:12:27', 'Valve & Actuator'),
(88, 'Valve Actuator', '2 way solenoid valve with Actuator-20mm(Rack-4)', NULL, 'Z220S-230', 'Belimo', NULL, NULL, NULL, NULL, 110, 3, 1, '2023-07-26 04:49:26', '2024-01-20 04:50:07', 'Valve & Actuator'),
(89, 'Valve Actuator', '2 way solenoid valve with Actuator-25mm(Rack-4)', NULL, 'Z225S-230', 'Belimo', NULL, NULL, NULL, NULL, 100, 3, 1, '2023-07-26 04:50:10', '2024-01-20 04:51:51', 'Valve & Actuator'),
(91, 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2023-07-26 04:51:51', '2023-09-04 23:48:17', 'Valve & Actuator'),
(92, 'ZFCM', '2 way solenoid valve with Actuator-25mm(2nos without actuator)(Rack-3)', NULL, 'ZFCM225X+RVAFC2302', 'Regin', NULL, NULL, NULL, NULL, 8, 3, 1, '2023-07-26 04:52:34', '2024-01-21 00:22:34', 'Valve & Actuator'),
(93, 'Valve Actuator', '2 way solenoid valve with Actuator-25mm-Outside Thread(Rack-3)', NULL, 'ZTV25-7,0+RVAZ4-24A', 'Regin', NULL, NULL, NULL, NULL, 4, 3, 1, '2023-07-26 04:53:53', '2024-01-18 01:44:51', 'Valve & Actuator'),
(94, 'ZFCM', '3 way solenoid valve with Actuator-20mm(Rack-3)', NULL, 'ZFCM320X+RVAFC2303', 'Regin', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:55:00', '2024-01-21 00:22:59', 'Valve & Actuator'),
(95, 'Valve Actuator', '2 way solenoid valve with Actuator-20mm-Outside Thread(Rack-3)', NULL, 'ZTV20-6,0+RVAZ4-24A', 'Regin', NULL, NULL, NULL, NULL, 4, 3, 1, '2023-07-26 04:55:43', '2024-01-18 01:46:36', 'Valve & Actuator'),
(96, 'Valve Actuator', '2 way Ball valve with actuator-32mm(Rack-3)', NULL, 'BV232+RVAB5-230', 'Regin', NULL, NULL, NULL, NULL, 10, 3, 1, '2023-07-26 04:56:48', '2024-01-18 01:47:22', 'Valve & Actuator'),
(97, 'Valve Actuator', 'Actuator for 2 way Ball valve(Rack-3)', NULL, 'RVAB4-24A', 'Regin', NULL, NULL, NULL, NULL, 6, 3, 1, '2023-07-26 04:57:54', '2024-01-18 01:48:02', 'Valve & Actuator'),
(98, 'Valve Actuator', '2 way Control valve without Actuator-100mm', NULL, 'NTVS100', 'Regin', NULL, NULL, NULL, NULL, 1, 3, 1, '2023-07-26 04:58:57', '2023-09-05 03:44:45', 'Valve & Actuator'),
(99, 'ZFCM', '2 way solenoid valve with Actuator-20mm(Rack-3)', NULL, 'ZFCM220X+RVAFC2302', 'Regin', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2023-08-20 03:40:17', '2024-01-21 00:23:28', 'Valve & Actuator'),
(100, 'N/A', 'N/A', NULL, 'N/A', 'N/A', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-21 02:48:51', '2023-09-05 03:47:18', 'Valve & Actuator'),
(101, 'Lithium Battery', 'Lithium Battery 3.7V', NULL, 'WM-5000V4S Battery', 'JWM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-26 22:20:46', '2023-08-26 22:23:27', 'Multi Product'),
(102, 'Cable', 'Cable 2x0.65 Rm', NULL, '2x0.65 Rm', 'BRB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-26 22:25:27', '2023-08-26 22:36:58', 'Cable'),
(103, 'XCA', 'Controller-28 I/O(Rack-3)', NULL, 'XCA282DW-4', 'Regin', 'Sweden', NULL, NULL, NULL, 3, 2, NULL, '2023-09-04 22:17:55', '2024-01-18 01:50:27', 'Controller'),
(104, 'XCA', 'Controller-15 I/O(Rack-3)', NULL, 'XCA153DW-4', 'Regin', 'Sweden', NULL, NULL, NULL, 2, 2, NULL, '2023-09-04 22:21:26', '2024-01-19 23:56:23', 'Controller'),
(105, 'Temperature Measurement in Air', 'Duct Temperature Sensor(Rack-3)', NULL, 'TG-KH3/PT1000', 'Regin', 'China', NULL, NULL, NULL, 10, 3, NULL, '2023-09-04 22:34:34', '2024-01-18 01:52:27', 'Sensor'),
(106, 'Temperature Measurement in Heating or Cooling', 'Immersion Temperature Sensor', NULL, 'TG-DHW3/PT1000', 'Regin', 'China', NULL, NULL, NULL, 0, NULL, NULL, '2023-09-04 22:51:19', '2023-12-26 02:33:13', 'Sensor'),
(107, 'Wall Mounted', 'Humidity and Temperature Transmitters(Rack-3)', NULL, 'HTRT10A-D', 'Regin', 'Italy', NULL, NULL, NULL, 2, 1, NULL, '2023-09-04 23:25:51', '2024-01-18 01:53:54', 'Sensor'),
(108, 'AD', 'Thermostat(Rack-3)', NULL, 'RCF-230AD', 'Regin', 'Philippines', NULL, NULL, NULL, 4, 2, NULL, '2023-09-04 23:28:57', '2024-01-18 01:55:54', 'Thermostat'),
(109, 'DTV', 'Differential Pressure Switch for Air(50-500Pa)(Rack-3)', NULL, 'DTV500X', 'Regin', 'Germany', NULL, NULL, NULL, 10, 3, NULL, '2023-09-04 23:44:48', '2024-01-18 01:57:15', 'Differential Pressure Switch'),
(110, 'DTV', 'Differential Pressure Switch for Air(200-1000Pa)(Rack-3)', NULL, 'DTV1000X', 'Regin', 'Germany', NULL, NULL, NULL, 10, 3, NULL, '2023-09-04 23:46:12', '2024-01-18 01:58:26', 'Differential Pressure Switch'),
(111, 'ZFCM', '3 way solenoid valve with Actuator-25mm(Rack-3)', NULL, 'ZFCM325X+RVAFC2303', 'Regin', 'China', NULL, NULL, NULL, 8, 2, NULL, '2023-09-05 03:22:06', '2024-01-18 01:59:10', 'Valve & Actuator'),
(112, 'CP', 'Transformer-100VA-220V/24V(Rack-2)', NULL, 'CPR-A222-0100', 'CP', 'Singapore', NULL, NULL, NULL, 4, NULL, NULL, '2023-09-05 03:26:22', '2024-01-18 02:00:10', 'Multi Product'),
(113, 'QFA', 'Room Humidity/Temp. Sensor-0 to 10V(Rack-2)', NULL, 'QFA3160', 'Siemens', 'China', NULL, NULL, NULL, 2, NULL, NULL, '2023-09-24 22:19:11', '2024-01-18 02:00:52', 'Sensor'),
(114, 'Mouse', 'Mouse', 'Mouse', 'Mouse', 'Mouse', 'Mouse', 'Mouse', 10, '100', 10, NULL, NULL, '2023-09-26 05:05:04', '2023-09-26 05:09:35', 'Variable Frequency Drive(VFD)'),
(115, 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', 1, '100', 10, NULL, NULL, '2023-09-26 05:07:51', '2023-09-26 05:09:35', 'Variable Frequency Drive(VFD)'),
(116, 'VXG', '3 way Modulating valve with Actuator', NULL, 'VXG44.40-25+SAS61.03', 'Siemens', 'Switzerland', NULL, NULL, NULL, 0, NULL, NULL, '2023-10-24 22:27:19', '2023-10-24 22:31:35', 'Valve & Actuator'),
(117, 'SW-1E', 'Flow Switch(Rack-2)', NULL, 'SW-1E', 'Regeltechnik', 'Germany', NULL, NULL, NULL, 57, 10, NULL, '2023-10-31 01:14:38', '2024-01-18 02:01:44', 'Flow Switch'),
(118, 'KFTF', 'Duct Temperature & RH Sensor(Combined Sensor)(Rack-2)', NULL, 'KFTF-U', 'Regeltechnik', 'Germany', NULL, NULL, NULL, 7, 5, NULL, '2023-10-31 01:15:53', '2024-01-24 01:17:46', 'Sensor'),
(119, 'PT1000', 'Duct Temperature Sensor', NULL, 'TG-K3/PT1000', 'Regin', 'Sweden', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-01 01:25:43', '2023-11-04 22:16:04', 'Sensor'),
(120, 'DTV300', 'Differential Pressure Switch for Air(20-300Pa)', NULL, 'DTV300X', 'Regin', 'Sweden', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-01 01:27:26', '2023-11-04 22:18:10', 'Differential Pressure Switch'),
(121, 'BV', '2 way Ball valve with actuator-50mm', NULL, 'BV250+RVAB5-24A', 'Regin', 'Sweden', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-02 05:51:34', '2023-11-04 22:23:38', 'Valve & Actuator'),
(122, 'BF', '3 way control valve with actuator(3 way 40mm)(Rack-4)', NULL, 'BF340-25+RVAN5-24A', 'Regin', 'Sweden', NULL, NULL, NULL, 1, NULL, NULL, '2023-11-02 05:55:55', '2024-01-18 02:03:49', 'Valve & Actuator'),
(123, 'DTTH', 'Temperature/Humidity duct transmitter(0 to 10V)(Rack-3)', NULL, 'DTTH', 'Regin', 'Sweden', NULL, NULL, NULL, 3, NULL, NULL, '2023-11-02 05:57:44', '2024-01-18 02:05:12', 'Sensor'),
(124, 'SDD', 'Smoke Detector(Rack-3)', NULL, 'SDD-OE65-RAC', 'Regin', 'Sweden', NULL, NULL, NULL, 2, NULL, NULL, '2023-11-02 05:59:05', '2024-01-18 02:06:06', 'Multi Product'),
(125, 'ZFCM', '3 way Solenoid Valve without Actuator(20mm)only valve', NULL, 'ZFCM-320X', 'Regin', 'Sweden', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-04 03:32:41', '2023-11-05 00:21:52', 'Valve & Actuator'),
(126, NULL, 'Actuator for 3 way ZFCM(Rack-2)', NULL, 'RVAFC2303', 'Regin', 'Sweden', NULL, NULL, NULL, 19, NULL, NULL, '2023-11-04 03:39:32', '2024-01-18 02:07:10', NULL),
(127, 'E1000', 'Capacity: 45kw', NULL, 'CIMR-ET4A0088AAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-30 00:28:47', '2023-12-31 23:51:47', 'Variable Frequency Drive(VFD)'),
(128, 'A1000', 'Capacity: 11kw', NULL, 'CIMR-AT4A0023FAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 6, NULL, NULL, '2023-11-30 01:28:28', '2024-01-09 22:40:35', 'Variable Frequency Drive(VFD)'),
(129, 'A1000', 'Capacity: 15kw', NULL, 'CIMR-AT4A0031FAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-30 01:29:54', '2023-12-02 23:39:02', 'Variable Frequency Drive(VFD)'),
(130, 'A1000', 'Capacity: 30kw', NULL, 'CIMR-AT4A0058AAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 0, NULL, NULL, '2023-11-30 01:31:17', '2023-12-02 23:39:35', 'Variable Frequency Drive(VFD)'),
(131, 'A1000', 'Capacity: 45kw', NULL, 'CIMR-AT4A0088AAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 1, NULL, NULL, '2023-11-30 01:47:04', '2023-11-30 01:50:32', 'Variable Frequency Drive(VFD)'),
(132, 'QBM', 'Differential Pressure Switch for Air(100-1000)pa(Rack-2)', NULL, 'QBM81-10', 'Siemens', NULL, NULL, NULL, NULL, 2, 1, NULL, '2023-12-11 23:38:32', '2024-01-18 02:08:04', 'Differential Pressure Switch'),
(133, 'QBM', 'Differential Pressure Transmitter(Air)(Rack-2)', NULL, 'QBM3020-1D', 'Siemens', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2023-12-11 23:40:47', '2024-01-18 02:08:51', 'Sensor'),
(134, 'QVE', 'Flow Switch(Rack-2)', NULL, 'QVE1901', 'Siemens', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2023-12-11 23:42:49', '2024-01-18 02:09:51', 'Flow Switch'),
(135, 'SAV', 'Valve Actuator(Rack-2)', NULL, 'SAV61.00', 'Siemens', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-11 23:44:00', '2024-01-18 02:10:49', 'Valve & Actuator'),
(136, 'GAP', 'Damper Actuator-Modulating Type-0..10V(Rack-2)', NULL, 'GAP191.1E', 'Siemens', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2023-12-11 23:46:07', '2024-01-18 02:11:55', 'Valve & Actuator'),
(137, 'VN', '2 way solenoid valve with Actuator-25mm', NULL, 'VN6013APC1000T', 'Honeywell', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-01-03 04:38:41', '2024-01-03 04:43:44', 'Valve & Actuator'),
(138, NULL, 'Capacity-5.5kw', NULL, 'CIMR-VT4A0011FAA', 'Yaskawa', 'Japan', NULL, NULL, NULL, 0, NULL, NULL, '2024-01-19 23:51:41', '2024-01-19 23:56:47', 'Variable Frequency Drive(VFD)'),
(139, '2000', 'Series 2000 Magnehelic Differential Pressure Gage', NULL, '2000-60Pa', 'Dwyer', 'USA', NULL, NULL, NULL, 12, NULL, NULL, '2024-01-20 23:58:37', '2024-01-20 23:58:37', 'Multi Product');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_infos`
--

CREATE TABLE `purchase_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `purchase_from` varchar(255) DEFAULT NULL,
  `supplier_challan_no` varchar(255) DEFAULT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_infos`
--

INSERT INTO `purchase_infos` (`id`, `date`, `created_by`, `details`, `purchase_from`, `supplier_challan_no`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, '2023-08-20', 3, NULL, 'Zenith Safety Solution', '944', 'purchase-6010352', '2023-08-21 03:38:09', '2023-08-21 03:38:09'),
(2, '2023-08-24', 3, '23/76 BRB Cable 100 RMT', 'S.B Electric', '74', 'purchase-666444', '2023-08-26 22:31:05', '2023-08-26 22:31:05'),
(3, '2023-09-04', 3, NULL, 'Regin', 'PI-23-0093', 'purchase-2043769', '2023-09-05 03:28:02', '2023-09-05 03:28:02'),
(4, '2023-09-10', 3, NULL, 'Belimo', 'N/A', 'purchase-1866024', '2023-09-10 00:08:29', '2023-09-10 00:08:29'),
(5, '2023-09-25', 3, NULL, 'Jashim Uddin', NULL, 'purchase-4596393', '2023-09-24 22:16:36', '2023-09-24 22:16:36'),
(6, '2023-10-11', 3, NULL, 'Master Control Automation', '3123', 'purchase-6224260', '2023-10-10 23:42:06', '2023-10-10 23:42:06'),
(7, '2023-10-23', 3, NULL, 'Kazi', NULL, 'purchase-8534520', '2023-10-24 22:06:23', '2023-10-24 22:06:23'),
(8, '2023-10-31', 3, NULL, 'Foreign', 'Shipment 3', 'purchase-5342009', '2023-10-31 01:16:29', '2023-10-31 01:16:29'),
(9, '2023-11-30', 3, NULL, 'Yaskaw', '803029447,802899847,802899848', 'purchase-837950', '2023-11-30 01:24:26', '2023-11-30 01:24:26'),
(10, '2023-12-11', 3, NULL, 'Kazi Traders(Siemens+Belimo)', '914', 'purchase-6679237', '2023-12-11 23:16:55', '2023-12-11 23:16:55'),
(11, '2023-12-12', 3, NULL, 'TT Enterprise(ashif)', NULL, 'purchase-4499154', '2023-12-11 23:55:41', '2023-12-11 23:55:41'),
(12, '2023-12-28', 3, NULL, 'Zenith Safety Solution', '1833', 'purchase-7296951', '2024-01-03 04:41:09', '2024-01-03 04:41:09'),
(13, '2024-01-17', 3, NULL, 'Master Control Automation', '3322', 'purchase-6259593', '2024-01-19 23:49:18', '2024-01-19 23:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `product_id`, `quantity`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, 100, 13, 'purchase-6010352', '2023-08-21 03:38:49', '2023-08-21 03:38:49'),
(2, 102, 100, 'purchase-666444', '2023-08-26 22:36:58', '2023-08-26 22:36:58'),
(3, 103, 5, 'purchase-2043769', '2023-09-05 03:28:38', '2023-09-05 03:28:38'),
(4, 104, 5, 'purchase-2043769', '2023-09-05 03:28:53', '2023-09-05 03:28:53'),
(5, 105, 10, 'purchase-2043769', '2023-09-05 03:30:53', '2023-09-05 03:30:53'),
(6, 106, 10, 'purchase-2043769', '2023-09-05 03:31:06', '2023-09-05 03:31:06'),
(7, 107, 2, 'purchase-2043769', '2023-09-05 03:31:22', '2023-09-05 03:31:22'),
(8, 108, 5, 'purchase-2043769', '2023-09-05 03:31:35', '2023-09-05 03:31:35'),
(9, 109, 10, 'purchase-2043769', '2023-09-05 03:32:14', '2023-09-05 03:32:14'),
(10, 110, 10, 'purchase-2043769', '2023-09-05 03:32:25', '2023-09-05 03:32:25'),
(11, 99, 10, 'purchase-2043769', '2023-09-05 03:32:45', '2023-09-05 03:32:45'),
(12, 92, 10, 'purchase-2043769', '2023-09-05 03:33:40', '2023-09-05 03:33:40'),
(13, 94, 5, 'purchase-2043769', '2023-09-05 03:34:03', '2023-09-05 03:34:03'),
(14, 111, 5, 'purchase-2043769', '2023-09-05 03:34:15', '2023-09-05 03:34:15'),
(15, 96, 10, 'purchase-2043769', '2023-09-05 03:34:37', '2023-09-05 03:34:37'),
(16, 112, 4, 'purchase-2043769', '2023-09-05 03:35:00', '2023-09-05 03:35:00'),
(17, 88, 7, 'purchase-1866024', '2023-09-10 00:09:18', '2023-09-10 00:09:18'),
(18, 113, 5, 'purchase-4596393', '2023-09-24 22:20:01', '2023-09-24 22:20:01'),
(19, 3, 1, 'purchase-6224260', '2023-10-10 23:54:33', '2023-10-10 23:54:33'),
(20, 116, 5, 'purchase-8534520', '2023-10-24 22:28:31', '2023-10-24 22:28:31'),
(21, 117, 100, 'purchase-5342009', '2023-10-31 01:16:41', '2023-10-31 01:16:41'),
(22, 118, 15, 'purchase-5342009', '2023-10-31 01:16:50', '2023-10-31 01:16:50'),
(23, 125, 10, 'purchase-5342009', '2023-11-04 03:33:27', '2023-11-04 03:33:27'),
(24, 111, 6, 'purchase-5342009', '2023-11-04 03:37:45', '2023-11-04 03:37:45'),
(25, 126, 16, 'purchase-5342009', '2023-11-04 03:50:44', '2023-11-04 03:50:44'),
(26, 3, 3, 'purchase-837950', '2023-11-30 01:24:57', '2023-11-30 01:24:57'),
(27, 4, 2, 'purchase-837950', '2023-11-30 01:25:37', '2023-11-30 01:25:37'),
(28, 127, 1, 'purchase-837950', '2023-11-30 01:26:39', '2023-11-30 01:26:39'),
(29, 128, 13, 'purchase-837950', '2023-11-30 01:28:59', '2023-11-30 01:28:59'),
(30, 129, 4, 'purchase-837950', '2023-11-30 01:30:16', '2023-11-30 01:30:16'),
(31, 130, 2, 'purchase-837950', '2023-11-30 01:31:40', '2023-11-30 01:31:40'),
(32, 131, 1, 'purchase-837950', '2023-11-30 01:47:23', '2023-11-30 01:47:23'),
(33, 63, 10, 'purchase-6679237', '2023-12-11 23:55:59', '2023-12-11 23:55:59'),
(34, 133, 10, 'purchase-6679237', '2023-12-11 23:56:14', '2023-12-11 23:56:14'),
(35, 134, 5, 'purchase-6679237', '2023-12-11 23:56:25', '2023-12-11 23:56:25'),
(36, 135, 1, 'purchase-6679237', '2023-12-11 23:56:38', '2023-12-11 23:56:38'),
(37, 136, 4, 'purchase-6679237', '2023-12-11 23:56:51', '2023-12-11 23:56:51'),
(38, 88, 100, 'purchase-6679237', '2023-12-11 23:57:09', '2023-12-11 23:57:09'),
(39, 89, 100, 'purchase-6679237', '2023-12-11 23:57:25', '2023-12-11 23:57:25'),
(40, 132, 2, 'purchase-4499154', '2023-12-11 23:57:43', '2023-12-11 23:57:43'),
(41, 63, 1, 'purchase-4499154', '2023-12-11 23:57:54', '2023-12-11 23:57:54'),
(42, 137, 2, 'purchase-7296951', '2024-01-03 04:41:31', '2024-01-03 04:41:31'),
(43, 138, 1, 'purchase-6259593', '2024-01-19 23:55:40', '2024-01-19 23:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-09-05 00:27:53', '2023-09-05 00:27:53'),
(2, 'Employee', 'web', '2023-09-05 00:43:30', '2023-09-05 00:43:30'),
(4, 'Assistant Manager (Project & Sales)', 'web', '2023-09-07 04:05:31', '2023-09-07 04:12:28'),
(9, 'Assistant Manager', 'web', '2023-09-10 22:27:24', '2023-09-10 22:27:24'),
(10, 'Design & Sales', 'web', '2023-09-19 00:03:22', '2023-09-19 00:03:22'),
(11, 'Director', 'web', '2023-10-02 22:18:09', '2023-10-02 22:18:09'),
(12, 'Engineer(Poject & Sales)', 'web', '2023-10-02 22:48:24', '2023-10-02 22:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(10, 1),
(10, 2),
(10, 4),
(10, 12),
(11, 1),
(11, 2),
(11, 4),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(12, 1),
(13, 1),
(13, 2),
(13, 4),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(16, 4),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(17, 1),
(17, 2),
(17, 4),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(18, 1),
(19, 1),
(19, 9),
(20, 1),
(21, 1),
(21, 9),
(22, 1),
(22, 9),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 9),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 9),
(38, 1),
(38, 9),
(39, 1),
(39, 9),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(44, 9),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(48, 9),
(49, 1),
(49, 9),
(50, 1),
(51, 1),
(52, 1),
(52, 9),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_bundles`
--

CREATE TABLE `transaction_bundles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `bundle_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_bundles`
--

INSERT INTO `transaction_bundles` (`id`, `type`, `date`, `bundle_id`, `created_at`, `updated_at`) VALUES
(1, 'Challan', '2023-08-19', 'challan-18280815', '2023-08-19 01:21:51', '2023-08-19 01:21:51'),
(2, 'Challan', '2023-08-19', 'challan-35827667', '2023-08-19 01:57:03', '2023-08-19 01:57:03'),
(3, 'Challan', '2023-08-19', 'challan-29673733', '2023-08-19 01:58:51', '2023-08-19 01:58:51'),
(4, 'Purchase', '2023-08-20', 'purchase-6010352', '2023-08-21 03:38:09', '2023-08-21 03:38:09'),
(5, 'Challan', '2023-08-21', 'challan-17459858', '2023-08-21 03:42:18', '2023-08-21 03:42:18'),
(6, 'Challan', '2023-08-21', 'challan-84990057', '2023-08-21 04:09:14', '2023-08-21 04:09:14'),
(7, 'Challan', '2023-08-21', 'challan-98091960', '2023-08-21 04:13:00', '2023-08-21 04:13:00'),
(8, 'Challan', '2023-08-27', 'challan-93374973', '2023-08-26 22:23:11', '2023-08-26 22:23:11'),
(9, 'Purchase', '2023-08-24', 'purchase-666444', '2023-08-26 22:31:05', '2023-08-26 22:31:05'),
(10, 'Challan', '2023-08-27', 'challan-91320379', '2023-08-26 22:34:16', '2023-08-26 22:34:16'),
(11, 'Challan', '2023-09-02', 'challan-40968221', '2023-09-02 00:27:56', '2023-09-02 00:27:56'),
(12, 'Purchase', '2023-09-04', 'purchase-2043769', '2023-09-05 03:28:02', '2023-09-05 03:28:02'),
(13, 'Challan', '2023-09-07', 'challan-63001452', '2023-09-06 22:53:00', '2023-09-06 22:53:00'),
(14, 'Purchase', '2023-09-10', 'purchase-1866024', '2023-09-10 00:08:29', '2023-09-10 00:08:29'),
(15, 'Challan', '2023-09-14', 'challan-60220814', '2023-09-14 02:41:47', '2023-09-14 02:41:47'),
(16, 'Challan', '2023-09-14', 'challan-48186381', '2023-09-14 02:44:28', '2023-09-14 02:44:28'),
(17, 'Challan', '2023-09-19', 'challan-24373305', '2023-09-18 23:56:19', '2023-09-18 23:56:19'),
(18, 'Challan', '2023-09-20', 'challan-53895092', '2023-09-19 22:28:39', '2023-09-19 22:28:39'),
(19, 'Challan', '2023-09-24', 'challan-46684532', '2023-09-24 05:28:36', '2023-09-24 05:28:36'),
(20, 'Purchase', '2023-09-25', 'purchase-4596393', '2023-09-24 22:16:36', '2023-09-24 22:16:36'),
(21, 'Challan', '2023-09-26', 'challan-7073873', '2023-09-26 05:05:55', '2023-09-26 05:05:55'),
(22, 'Challan Cancel', '2023-09-26', 'challanCancel-30566892', '2023-09-26 05:07:02', '2023-09-26 05:07:02'),
(23, 'Challan Cancel', '2023-09-26', 'challanCancel-13226985', '2023-09-26 05:08:46', '2023-09-26 05:08:46'),
(24, 'Challan Cancel', '2023-09-26', 'challanCancel-9416895', '2023-09-26 05:09:35', '2023-09-26 05:09:35'),
(25, 'Challan', '2023-09-27', 'challan-95145618', '2023-09-26 23:51:39', '2023-09-26 23:51:39'),
(26, 'Challan', '2023-10-05', 'challan-6018912', '2023-10-04 23:08:34', '2023-10-04 23:08:34'),
(27, 'Challan Cancel', '2023-10-05', 'challanCancel-97136266', '2023-10-04 23:13:17', '2023-10-04 23:13:17'),
(28, 'Challan', '2023-10-10', 'challan-93703640', '2023-10-10 03:51:26', '2023-10-10 03:51:26'),
(29, 'Purchase', '2023-10-11', 'purchase-6224260', '2023-10-10 23:42:06', '2023-10-10 23:42:06'),
(30, 'Challan', '2023-10-11', 'challan-33338557', '2023-10-11 04:33:03', '2023-10-11 04:33:03'),
(31, 'Challan', '2023-10-11', 'challan-71227680', '2023-10-11 05:22:25', '2023-10-11 05:22:25'),
(32, 'Challan', '2023-10-11', 'challan-18065472', '2023-10-11 05:36:57', '2023-10-11 05:36:57'),
(33, 'Challan', '2023-10-14', 'challan-26823475', '2023-10-14 01:21:31', '2023-10-14 01:21:31'),
(34, 'Challan', '2023-10-14', 'challan-47713710', '2023-10-14 01:25:01', '2023-10-14 01:25:01'),
(35, 'Challan', '2023-10-14', 'challan-59289317', '2023-10-14 01:54:27', '2023-10-14 01:54:27'),
(36, 'Challan', '2023-10-22', 'challan-64076861', '2023-10-22 00:38:40', '2023-10-22 00:38:40'),
(37, 'Challan', '2023-10-22', 'challan-69854953', '2023-10-22 00:46:20', '2023-10-22 00:46:20'),
(38, 'Purchase', '2023-10-23', 'purchase-8534520', '2023-10-24 22:06:23', '2023-10-24 22:06:23'),
(39, 'Challan', '2023-10-25', 'challan-93237882', '2023-10-24 22:30:30', '2023-10-24 22:30:30'),
(40, 'Challan', '2023-10-25', 'challan-81119017', '2023-10-24 23:48:50', '2023-10-24 23:48:50'),
(41, 'Challan', '2023-10-26', 'challan-70903879', '2023-10-25 22:22:26', '2023-10-25 22:22:26'),
(42, 'Challan', '2023-10-28', 'challan-21397964', '2023-10-27 22:13:38', '2023-10-27 22:13:38'),
(43, 'Challan', '2023-10-28', 'challan-99823285', '2023-10-27 23:30:15', '2023-10-27 23:30:15'),
(44, 'Challan', '2023-10-28', 'challan-38056276', '2023-10-27 23:55:10', '2023-10-27 23:55:10'),
(45, 'Purchase', '2023-10-31', 'purchase-5342009', '2023-10-31 01:16:29', '2023-10-31 01:16:29'),
(46, 'Challan', '2023-10-31', 'challan-43531836', '2023-10-31 01:17:45', '2023-10-31 01:17:45'),
(47, 'Challan', '2023-10-31', 'challan-22959675', '2023-10-31 03:24:37', '2023-10-31 03:24:37'),
(48, 'Challan', '2023-11-01', 'challan-39205812', '2023-10-31 22:49:49', '2023-10-31 22:49:49'),
(49, 'Challan', '2023-11-01', 'challan-7588855', '2023-11-01 01:18:20', '2023-11-01 01:18:20'),
(50, 'Challan Cancel', '2023-11-04', 'challanCancel-16757704', '2023-11-04 02:00:55', '2023-11-04 02:00:55'),
(51, 'Challan', '2023-11-04', 'challan-87219845', '2023-11-04 02:03:43', '2023-11-04 02:03:43'),
(52, 'Challan', '2023-11-05', 'challan-65194214', '2023-11-04 22:11:11', '2023-11-04 22:11:11'),
(53, 'Challan', '2023-11-05', 'challan-85757240', '2023-11-04 22:15:44', '2023-11-04 22:15:44'),
(54, 'Challan', '2023-11-05', 'challan-60867909', '2023-11-05 00:15:51', '2023-11-05 00:15:51'),
(55, 'Challan', '2023-11-05', 'challan-3508943', '2023-11-05 00:20:20', '2023-11-05 00:20:20'),
(56, 'Challan', '2023-11-07', 'challan-38651338', '2023-11-06 22:14:12', '2023-11-06 22:14:12'),
(57, 'Challan', '2023-11-07', 'challan-50204673', '2023-11-07 03:46:02', '2023-11-07 03:46:02'),
(58, 'Challan Cancel', '2023-11-23', 'challanCancel-90145915', '2023-11-23 02:32:09', '2023-11-23 02:32:09'),
(59, 'Challan', '2023-11-23', 'challan-56330291', '2023-11-23 04:08:25', '2023-11-23 04:08:25'),
(60, 'Challan', '2023-11-23', 'challan-5179058', '2023-11-23 05:19:40', '2023-11-23 05:19:40'),
(61, 'Challan', '2023-11-27', 'challan-94673665', '2023-11-26 22:44:20', '2023-11-26 22:44:20'),
(62, 'Purchase', '2023-11-30', 'purchase-837950', '2023-11-30 01:24:26', '2023-11-30 01:24:26'),
(63, 'Challan', '2023-12-03', 'challan-57414799', '2023-12-02 23:37:09', '2023-12-02 23:37:09'),
(64, 'Challan', '2023-12-07', 'challan-703060', '2023-12-06 22:53:21', '2023-12-06 22:53:21'),
(65, 'Challan', '2023-12-09', 'challan-51276636', '2023-12-09 00:23:54', '2023-12-09 00:23:54'),
(66, 'Purchase', '2023-12-11', 'purchase-6679237', '2023-12-11 23:16:55', '2023-12-11 23:16:55'),
(67, 'Purchase', '2023-12-12', 'purchase-4499154', '2023-12-11 23:55:41', '2023-12-11 23:55:41'),
(68, 'Challan', '2023-12-13', 'challan-71759224', '2023-12-12 22:09:53', '2023-12-12 22:09:53'),
(69, 'Challan', '2023-12-17', 'challan-91412413', '2023-12-17 04:57:13', '2023-12-17 04:57:13'),
(70, 'Challan', '2023-12-17', 'challan-44723210', '2023-12-17 06:00:38', '2023-12-17 06:00:38'),
(71, 'Challan', '2023-12-17', 'challan-80633225', '2023-12-17 06:05:22', '2023-12-17 06:05:22'),
(72, 'Challan', '2023-12-17', 'challan-58982151', '2023-12-17 06:07:43', '2023-12-17 06:07:43'),
(73, 'Challan', '2023-12-18', 'challan-88176082', '2023-12-17 23:42:44', '2023-12-17 23:42:44'),
(74, 'Challan', '2023-12-18', 'challan-75579078', '2023-12-18 02:52:31', '2023-12-18 02:52:31'),
(75, 'Challan Cancel', '2023-12-19', 'challanCancel-98280656', '2023-12-18 22:59:10', '2023-12-18 22:59:10'),
(76, 'Challan Cancel', '2023-12-19', 'challanCancel-78643160', '2023-12-18 22:59:37', '2023-12-18 22:59:37'),
(77, 'Challan Cancel', '2023-12-19', 'challanCancel-68319516', '2023-12-19 00:14:39', '2023-12-19 00:14:39'),
(78, 'Challan Cancel', '2023-12-19', 'challanCancel-51885045', '2023-12-19 00:16:42', '2023-12-19 00:16:42'),
(79, 'Challan', '2023-12-20', 'challan-44493139', '2023-12-19 23:16:13', '2023-12-19 23:16:13'),
(80, 'Challan', '2023-12-26', 'challan-54684508', '2023-12-26 02:32:48', '2023-12-26 02:32:48'),
(81, 'Challan Cancel', '2023-12-27', 'challanCancel-65441433', '2023-12-27 01:17:23', '2023-12-27 01:17:23'),
(82, 'Challan', '2023-12-31', 'challan-18955539', '2023-12-30 22:04:10', '2023-12-30 22:04:10'),
(83, 'Challan Cancel', '2023-12-31', 'challanCancel-60007331', '2023-12-30 22:05:49', '2023-12-30 22:05:49'),
(84, 'Challan', '2024-01-01', 'challan-4811683', '2023-12-31 23:51:24', '2023-12-31 23:51:24'),
(85, 'Challan', '2024-01-02', 'challan-32350045', '2024-01-02 01:22:34', '2024-01-02 01:22:34'),
(86, 'Purchase', '2023-12-28', 'purchase-7296951', '2024-01-03 04:41:09', '2024-01-03 04:41:09'),
(87, 'Challan', '2024-01-03', 'challan-18862101', '2024-01-03 04:43:02', '2024-01-03 04:43:02'),
(88, 'Challan', '2024-01-09', 'challan-63644820', '2024-01-09 00:43:59', '2024-01-09 00:43:59'),
(89, 'Challan', '2024-01-09', 'challan-19585886', '2024-01-09 01:17:18', '2024-01-09 01:17:18'),
(90, 'Challan Cancel', '2024-01-10', 'challanCancel-59703490', '2024-01-09 22:38:40', '2024-01-09 22:38:40'),
(91, 'Challan', '2024-01-10', 'challan-93171795', '2024-01-09 22:39:37', '2024-01-09 22:39:37'),
(92, 'Challan', '2024-01-11', 'challan-88324179', '2024-01-11 05:32:33', '2024-01-11 05:32:33'),
(93, 'Challan', '2024-01-15', 'challan-74824754', '2024-01-14 23:52:27', '2024-01-14 23:52:27'),
(94, 'Challan', '2024-01-16', 'challan-35891095', '2024-01-15 22:42:05', '2024-01-15 22:42:05'),
(95, 'Challan', '2024-01-20', 'challan-47637713', '2024-01-19 23:47:36', '2024-01-19 23:47:36'),
(96, 'Purchase', '2024-01-17', 'purchase-6259593', '2024-01-19 23:49:18', '2024-01-19 23:49:18'),
(97, 'Challan', '2024-01-24', 'challan-17234070', '2024-01-24 01:17:31', '2024-01-24 01:17:31'),
(98, 'Challan', '2024-01-28', 'challan-3086748', '2024-01-27 22:37:37', '2024-01-27 22:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `employee_id` int(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `role_id`, `employee_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Base Admin', 'base@admin.com', '$2y$10$GZDP.SXUqwS9.HjgIllmvO/v1yPi101ZqHi2/8sHfLUjfl.ce5.CO', NULL, 1, NULL, NULL, NULL, '2023-08-08 07:04:55'),
(3, 'Muhammad Golam Sarwar', 'sarwar.ixony@gmail.com', '$2y$10$GZDP.SXUqwS9.HjgIllmvO/v1yPi101ZqHi2/8sHfLUjfl.ce5.CO', NULL, 1, 1, NULL, NULL, '2023-09-05 01:52:21'),
(4, 'Mr Chairman', 'chairman@ixony.com', '$2y$10$GZDP.SXUqwS9.HjgIllmvO/v1yPi101ZqHi2/8sHfLUjfl.ce5.CO', NULL, 1, NULL, 'Dsmef0wC4F8shuUviL35elj8yjh2QGSckpiSstdWNfy6WGEmxAbtJjN1e1oO', NULL, NULL),
(9, 'Mishkatul Mohsinin', 'mishkatul.ixony@gmail.com', '$2y$10$IxAupkDj3m9bky2tNB5T6.Dil10JLslpsdFSDb/iP0sqGP1T.Uvx2', NULL, NULL, 5, NULL, '2023-09-07 03:51:50', '2023-09-07 03:51:50'),
(10, 'Md.Galib Hassan', 'galib.ixony@gmail.com', '$2y$10$lBbjHAWQCJfnfkOIw7T4kORR.Ei9DmyhYvs1qwv9slPpTo4Kvr9bq', NULL, NULL, 6, NULL, '2023-09-07 03:53:40', '2023-09-07 03:53:40'),
(12, 'Md.Ashif Hasnain', 'ashif.ixony@gmail.com', '$2y$10$/fegxIr2F73gqG8FAU1dKeGwEi6an54Mga7QX1HFzOblc6EwVamoe', NULL, NULL, 8, NULL, '2023-09-07 03:57:33', '2023-09-19 01:36:50'),
(14, 'Khadiza Talukder', 'khadiza.ixony@gmail.com', '$2y$10$PPLOzooaTbv93V51QkivR.K8w1rPa4VJrGxqo5FL6pASzykwki4mG', NULL, NULL, 7, NULL, '2023-09-19 00:37:47', '2023-09-19 01:35:43'),
(17, 'Md.Mosfequr Rahman', 'mosfequr.sagar@live.com', '$2y$10$Jqkd5jUMEDZGjudgZv1lY.GvGRBuPQsomiA2/2bMk0.LDr0EdrZWu', 'md.mosfequr-rahman.jpeg', NULL, 10, NULL, '2023-10-02 22:16:57', '2023-10-03 18:41:30'),
(18, 'Developer', 'bhudipta@gmail.com', '$2y$10$/Mx5nDY5466MqQcQ1Iu/JeE1pLFpZoJUFd9C07yzseOlZkE6i6o1.', NULL, NULL, 11, NULL, '2023-11-22 00:50:33', '2024-01-11 04:07:37'),
(19, 'Md.Mokhlesur Rahman', 'mokhles.rahman@gmail.com', '$2y$10$1f18rjxkuzMmmQSdeKks0ufmnqTkFjeZctHYIDMFsGQbVDv3GP17G', NULL, NULL, 12, NULL, '2023-11-22 01:01:27', '2023-11-22 01:01:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_cancels`
--
ALTER TABLE `challan_cancels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_cancel_products`
--
ALTER TABLE `challan_cancel_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_infos`
--
ALTER TABLE `challan_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_products`
--
ALTER TABLE `challan_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_return_infos`
--
ALTER TABLE `challan_return_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challan_return_products`
--
ALTER TABLE `challan_return_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demos`
--
ALTER TABLE `demos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_infos`
--
ALTER TABLE `purchase_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `transaction_bundles`
--
ALTER TABLE `transaction_bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `challan_cancels`
--
ALTER TABLE `challan_cancels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `challan_cancel_products`
--
ALTER TABLE `challan_cancel_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `challan_infos`
--
ALTER TABLE `challan_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `challan_products`
--
ALTER TABLE `challan_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `challan_return_infos`
--
ALTER TABLE `challan_return_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `challan_return_products`
--
ALTER TABLE `challan_return_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demos`
--
ALTER TABLE `demos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `purchase_infos`
--
ALTER TABLE `purchase_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction_bundles`
--
ALTER TABLE `transaction_bundles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
