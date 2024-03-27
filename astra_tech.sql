-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 11:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astra_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `full_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Tristin Roob IV', 'phills@example.com', '(219) 421-3748', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(2, 'Mr. Dedric Lesch IV', 'bartell.otilia@example.com', '1-814-554-8840', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(3, 'Maureen Becker', 'medhurst.romaine@example.com', '+16014701389', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(4, 'Prof. Rebekah Koepp', 'bruen.alexane@example.org', '917-969-7865', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(5, 'Mafalda VonRueden', 'stark.cordell@example.com', '1-417-784-8130', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(6, 'Adah Franecki', 'kreiger.kevon@example.org', '805-999-4441', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(7, 'Ronny Hudson', 'awalsh@example.com', '315-371-1323', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(8, 'Daisy Bode', 'hills.margaret@example.net', '931.699.4915', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(9, 'Ruthe Hyatt', 'geo.carter@example.net', '563-962-3632', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(10, 'Elza Wehner', 'marielle76@example.net', '562-696-7842', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(11, 'Ms. Maxie Reinger I', 'richie07@example.org', '318-918-3917', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(12, 'Sonia Nikolaus', 'fschowalter@example.net', '+1-680-590-1900', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(13, 'Archibald Cummerata', 'medhurst.bridget@example.org', '+1-804-690-8881', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(14, 'Drew Wilderman I', 'kenna.harber@example.com', '606-254-3346', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(15, 'Esperanza Schaden Sr.', 'raul76@example.org', '+1-605-756-3345', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(16, 'Zakary Steuber', 'kory.schaefer@example.org', '+1 (707) 376-5724', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(17, 'Jared Schinner', 'silas.dickinson@example.net', '832.307.8586', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(18, 'Mr. Tillman Koelpin I', 'tjenkins@example.net', '+1-480-816-1765', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(19, 'Jake Jaskolski Jr.', 'hector42@example.net', '+1.469.940.7764', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(20, 'Camren Smith', 'bahringer.camylle@example.org', '(737) 742-7532', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(21, 'Abdul Hudson', 'lavinia62@example.net', '(415) 821-7500', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(22, 'Chyna Monahan', 'lubowitz.mellie@example.net', '+12236259338', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(23, 'Hertha Hoeger', 'dayne.deckow@example.org', '+1-540-969-1083', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(24, 'Marjorie Stehr', 'nankunding@example.net', '820.664.8185', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(25, 'Elvis Purdy V', 'daniel.cloyd@example.net', '+17265620123', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(26, 'Dolores Dibbert', 'kerluke.flavio@example.net', '+1 (332) 483-9187', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(27, 'Ernestina Powlowski I', 'keebler.arlo@example.org', '+1-979-527-5943', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(28, 'Cathryn Kautzer', 'abode@example.net', '1-303-302-6049', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(29, 'Prof. Justine Frami', 'hagenes.jay@example.com', '+1.570.830.9234', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(30, 'Kayden Bechtelar', 'santino12@example.org', '+1 (315) 507-0928', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(31, 'Julia Ebert', 'sylvia.ritchie@example.org', '+18106534853', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(32, 'Ottis Rath', 'swaniawski.coy@example.net', '1-914-838-2287', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(33, 'Terrance Yundt', 'angelica23@example.com', '539-268-5030', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(34, 'Mertie Rolfson', 'rickie50@example.net', '1-765-658-6951', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(35, 'Miss Winona Deckow Jr.', 'myah.feest@example.org', '+14846201109', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(36, 'Mr. Floy Armstrong', 'owintheiser@example.org', '+12282975502', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(37, 'Minerva Kuhic', 'hudson91@example.com', '1-248-440-9514', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(38, 'Flo Conn', 'verla29@example.org', '+17406797833', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(39, 'Janae Koss', 'verdie.cremin@example.net', '512.360.8988', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(40, 'Krystel Green', 'vandervort.andreanne@example.org', '+1-364-573-8817', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(41, 'Adriana Blick', 'mohamed.kris@example.com', '858-448-3803', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(42, 'Wayne Orn I', 'jeffrey.heidenreich@example.com', '872.796.7490', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(43, 'Bianka Luettgen', 'ernesto43@example.com', '+1-651-825-7516', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(44, 'Shawna Huels', 'ismael14@example.net', '(480) 734-4842', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(45, 'Camila Gislason', 'rhett68@example.net', '(424) 762-6848', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(46, 'Prof. Saige Runte', 'huel.ladarius@example.net', '620-728-2799', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(47, 'Broderick Hermann II', 'hruecker@example.org', '1-947-379-9063', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(48, 'Donna Quitzon', 'elza58@example.org', '+1-717-414-1483', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(49, 'Mr. Jameson Fay', 'upton.mazie@example.net', '386-594-5850', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(50, 'Prof. Jameson Hauck Jr.', 'wisoky.jefferey@example.org', '+1.520.556.0109', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(51, 'Judy Lueilwitz', 'kunze.jerrod@example.com', '(225) 373-4541', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(52, 'Jeff McLaughlin', 'xtillman@example.net', '+1-724-461-8049', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(53, 'Brooks Gutkowski', 'meta97@example.com', '+1.854.412.6971', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(54, 'Gerald Luettgen', 'lenore06@example.net', '1-785-931-4027', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(55, 'Mr. Joany Von', 'stiedemann.rosalyn@example.com', '509-349-5494', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(56, 'Mrs. Mathilde Christiansen Jr.', 'schuppe.eveline@example.org', '415-463-6933', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(57, 'Jane Donnelly', 'ghackett@example.com', '+1-320-972-0236', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(58, 'Lizzie Erdman', 'lockman.kaylie@example.com', '+1 (682) 891-0244', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(59, 'Alexie Mann', 'braun.richie@example.net', '(872) 434-1269', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(60, 'Destin Shields', 'russell98@example.com', '+18387199009', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(61, 'Mr. Clifford Paucek', 'tromp.marietta@example.net', '770-782-4165', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(62, 'Jarrett Williamson', 'monserrate07@example.net', '650-459-8061', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(63, 'Lacey Fadel', 'fwilliamson@example.net', '585-330-9417', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(64, 'Dr. Kailyn Miller', 'carlos25@example.com', '364.472.8715', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(65, 'Mr. Melvina Howe', 'libby.frami@example.org', '1-443-233-3388', '2024-03-27 08:07:31', '2024-03-27 08:07:31'),
(66, 'Gennaro Bernier', 'stowne@example.com', '380.416.5106', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(67, 'Mona Ondricka', 'arlo.gerlach@example.org', '+1 (458) 599-4495', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(68, 'Justus Rodriguez', 'xarmstrong@example.org', '(985) 917-5743', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(69, 'Daryl Konopelski', 'hunter54@example.org', '+1-917-558-4465', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(70, 'Kaylee Stracke V', 'grunolfsdottir@example.com', '240.652.8248', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(71, 'Rozella Shanahan', 'mose45@example.net', '(479) 822-4134', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(72, 'Adella Marvin', 'jermey.bednar@example.net', '1-432-668-6296', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(73, 'Malachi Bode DDS', 'omurazik@example.org', '661.808.6938', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(74, 'Cara Hill', 'hcarroll@example.net', '1-219-908-2143', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(75, 'Leann Murazik', 'wolff.bryce@example.com', '+1-726-610-5865', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(76, 'Dr. Raven Huels', 'shane.rohan@example.org', '405.700.6115', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(77, 'Sven Champlin', 'hroberts@example.com', '714-753-3120', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(78, 'Jerrold Gleason MD', 'swift.annamae@example.com', '+1-351-536-0616', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(79, 'Prof. Mara Kozey', 'misty63@example.com', '+1-551-726-3332', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(80, 'Mr. Cristopher Nolan I', 'cathryn90@example.org', '+1-484-899-6782', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(81, 'Stefanie Howell', 'barton.bettye@example.net', '938-414-4035', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(82, 'Prof. Rozella Legros IV', 'hlebsack@example.net', '+1-219-690-8511', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(83, 'Kristian Hettinger', 'wprosacco@example.org', '+1.754.532.3080', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(84, 'Prof. Myriam Hyatt V', 'jodie05@example.com', '562.257.8630', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(85, 'Kobe Lang', 'ullrich.allene@example.net', '1-845-878-1485', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(86, 'Kirstin Hirthe MD', 'karmstrong@example.org', '+1.445.888.4223', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(87, 'Carmella Runolfsdottir', 'mblock@example.org', '+1.682.539.6518', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(88, 'America Beer', 'koepp.marlon@example.org', '+1-424-951-6033', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(89, 'Parker Murazik', 'beth.boyle@example.net', '(930) 698-0801', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(90, 'Kevin Fritsch', 'stracke.oswald@example.com', '(646) 208-0931', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(91, 'Prof. Lilla Bednar DDS', 'monica88@example.org', '959-493-8412', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(92, 'Chet Brakus', 'aleen62@example.net', '330.579.5220', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(93, 'Gertrude Carroll', 'beier.jess@example.com', '+15407415033', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(94, 'Dr. Raegan Okuneva III', 'kelly91@example.net', '(802) 874-9014', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(95, 'Dr. Novella Stiedemann MD', 'kane47@example.com', '985.533.4986', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(96, 'Prof. Rowena Predovic Jr.', 'sauer.alvis@example.net', '1-409-460-0343', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(97, 'Kaleb Reinger', 'udamore@example.org', '+1-480-857-3209', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(98, 'Alden Bartell', 'icremin@example.org', '+1-469-916-4720', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(99, 'Prof. Clementina Harber IV', 'wlang@example.org', '301-552-7325', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(100, 'Berry Robel', 'acrist@example.org', '+1-929-308-9644', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(101, 'Yoshiko Howell', 'candice.ritchie@example.net', '+13853636551', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(102, 'Ms. Chasity Nienow MD', 'kailey35@example.com', '1-661-427-8332', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(103, 'Dejon Spencer Sr.', 'hand.ludie@example.org', '+1-806-580-1467', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(104, 'Mr. Richmond Wyman', 'augustus46@example.org', '240-480-6604', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(105, 'Lorine Stoltenberg', 'kaden92@example.net', '260-924-5697', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(106, 'Zoey Block', 'buck70@example.net', '+1-570-280-0934', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(107, 'Ora Reichert', 'roberts.stevie@example.net', '+14254415731', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(108, 'Emiliano Fay', 'fdavis@example.com', '206.640.7838', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(109, 'Vernie Smith MD', 'buddy52@example.org', '+14804498287', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(110, 'Dr. Sophia Dach III', 'margarita76@example.com', '+1-662-685-8559', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(111, 'Jackson Wyman', 'harris.olga@example.com', '678-852-1291', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(112, 'Reggie DuBuque', 'cierra41@example.com', '352.898.7414', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(113, 'Esteban Effertz', 'goodwin.aliyah@example.org', '+1.352.361.2849', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(114, 'Scotty Willms', 'chelsie.weimann@example.com', '779.871.5525', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(115, 'Rocio Predovic', 'xkreiger@example.org', '253-994-4703', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(116, 'Leland Roberts', 'lueilwitz.ally@example.org', '+1.941.473.0920', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(117, 'Prof. Corrine Keebler', 'viva82@example.net', '(743) 731-1156', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(118, 'Kenyon Rodriguez DVM', 'kathryne72@example.com', '+1-934-241-4298', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(119, 'Prof. Nola Jones', 'cleo52@example.org', '1-786-329-5432', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(120, 'Dr. Gust DuBuque III', 'wemmerich@example.net', '(479) 794-4230', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(121, 'Tina Sporer', 'pparker@example.org', '1-718-880-6066', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(122, 'Ms. Aubrey Nader', 'hjacobi@example.org', '+1 (405) 776-1235', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(123, 'Jed Dare', 'mccullough.julien@example.org', '+1-442-785-6282', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(124, 'Boris Towne IV', 'uabshire@example.com', '+1-440-998-0876', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(125, 'Jason Schulist', 'shyann93@example.org', '(540) 204-5879', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(126, 'Darren Smith IV', 'javier34@example.com', '+13309865766', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(127, 'Miguel Harvey', 'connelly.titus@example.com', '+1.986.523.4233', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(128, 'Eveline Kshlerin I', 'corwin.stacey@example.org', '(717) 710-0559', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(129, 'Freddy Pacocha Sr.', 'dewitt.jenkins@example.com', '(240) 249-7918', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(130, 'Genevieve Nitzsche', 'lula77@example.com', '1-585-587-4666', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(131, 'Imogene Hodkiewicz', 'smith.brent@example.com', '458-721-5052', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(132, 'Prof. Vivienne Zboncak', 'jordon69@example.org', '+1-629-957-9863', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(133, 'Darien Braun', 'herman.raina@example.org', '1-854-403-3196', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(134, 'Ms. Neha Wintheiser', 'frederik.mitchell@example.com', '+17016764861', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(135, 'Robyn Hansen V', 'carter.chauncey@example.com', '539-657-7347', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(136, 'Ms. Deja Schiller', 'lamar72@example.org', '937-705-6164', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(137, 'Prof. Marco Olson Sr.', 'mohammad.larson@example.com', '+1.505.461.3559', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(138, 'Tanner Price', 'jovani88@example.org', '1-267-953-8098', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(139, 'Emilio Price', 'lea21@example.com', '727-625-7975', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(140, 'Dr. Timmothy Murazik DVM', 'nola12@example.com', '737-673-6250', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(141, 'Tanner Stiedemann', 'loraine73@example.net', '+1.346.979.5283', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(142, 'Nicolette Hartmann PhD', 'mattie23@example.org', '1-619-267-8634', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(143, 'Jodie Paucek', 'carol91@example.com', '262-836-3278', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(144, 'Dr. Clinton Shanahan Sr.', 'derrick.mitchell@example.org', '+12725925934', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(145, 'Loyce Romaguera I', 'gutkowski.christelle@example.org', '534-334-6797', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(146, 'Elijah Yundt', 'skiles.stone@example.org', '325-537-8955', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(147, 'Mrs. Mariam Krajcik III', 'nakia.jacobson@example.net', '248.426.3734', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(148, 'Buster Toy', 'nicolas.nichole@example.com', '+17579236282', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(149, 'Prof. Marlin Gerlach', 'kris.orlo@example.org', '(267) 883-9364', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(150, 'Jacey Price', 'tsmith@example.org', '279-995-9296', '2024-03-27 08:07:32', '2024-03-27 08:07:32'),
(151, 'Test User', 'test@example.com', '1160097635', '2024-03-27 08:07:32', '2024-03-27 08:07:32');

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
(1, '2024_03_25_065728_create_data_table', 1),
(4, '0001_01_01_000001_create_cache_table', 2),
(5, '2024_03_25_082809_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_email_unique` (`email`),
  ADD UNIQUE KEY `data_phone_number_unique` (`phone_number`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
