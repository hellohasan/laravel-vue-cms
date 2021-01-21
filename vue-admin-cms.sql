-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 02:09 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue-admin-cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `est` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_api` text COLLATE utf8mb4_unicode_ci,
  `copy_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `title`, `level`, `est`, `phone`, `email`, `address`, `sms_api`, `copy_text`, `created_at`, `updated_at`) VALUES
(1, 'চাইলেই হয়', 5, '2021', '+8801571118839', 'hellomrhasan@gmail.com', 'Purba Shapkhana, Beparir Hat', 'asdasd', 'Created By Appllys', NULL, '2021-01-18 12:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Jaiden Murphy', 'lcrist@example.com', '1-873-924-1978', 'http://stamm.net/', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(2, 'Lauren Denesik', 'nstokes@example.com', '1-851-932-6105', 'https://www.turner.net/non-dolor-ipsam-praesentium-est-quas', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(3, 'Brandon Greenfelder Sr.', 'koss.buster@example.net', '(869) 790-3247', 'http://www.wyman.biz/fugiat-nesciunt-repellat-dolores-explicabo-facilis-rerum-error', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(4, 'Lucas Bailey PhD', 'vchamplin@example.net', '897.588.4481', 'http://cummings.com/eos-dignissimos-modi-aspernatur-commodi-quasi', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(5, 'Mrs. Treva Upton MD', 'jschmeler@example.com', '630-735-2923 x072', 'http://rippin.net/non-sapiente-unde-nulla-rem-et.html', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(6, 'Mr. Kieran Rutherford DDS', 'kuhn.green@example.org', '+19367219796', 'https://www.lowe.info/minus-laborum-veritatis-quo-nihil', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(7, 'Julie Goyette', 'uriel13@example.com', '758.785.8295', 'http://hirthe.biz/unde-quo-asperiores-sed-officia-vel-veniam', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(8, 'Ines Medhurst', 'lorena25@example.org', '+1-353-337-8827', 'http://murazik.com/molestiae-amet-qui-quis-vel-totam-nobis', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(9, 'Amara Douglas', 'jovanny.wyman@example.net', '+17249162567', 'https://kuphal.info/et-non-enim-totam-quibusdam.html', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(10, 'Mason Friesen', 'xjohns@example.com', '757.962.9402 x50608', 'http://www.spencer.com/est-non-sit-ut-reiciendis', '2020-10-31 15:27:45', '2020-10-31 15:27:45'),
(11, 'Alexa Romaguera II', 'jordon02@example.org', '626-766-0972 x505', 'http://hackett.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(12, 'Lexi Rowe', 'dibbert.brock@example.com', '883.757.5082', 'http://rice.com/dolor-omnis-quis-corrupti-molestias-quibusdam-hic', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(13, 'Prof. Anabelle Leffler', 'hpouros@example.com', '264.200.3075 x359', 'http://hagenes.org/magni-similique-inventore-autem-facilis-fugiat-dicta-nulla', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(14, 'Rozella Johnston', 'carley63@example.com', '378.461.1314 x1399', 'http://roberts.net/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(15, 'Liliana Bogan', 'wmosciski@example.net', '(221) 205-1123', 'http://www.goldner.com/minus-accusantium-vitae-doloribus-repellat-perspiciatis-nisi-velit', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(16, 'Elsie Lubowitz PhD', 'elsie12@example.net', '+1.361.330.2020', 'http://mueller.com/ratione-ad-esse-rerum.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(17, 'Mr. Eliezer Treutel', 'zheaney@example.org', '+1 (715) 468-8694', 'http://mayer.com/cumque-nam-placeat-ea-sit-vel', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(18, 'Penelope Baumbach', 'bartell.brenden@example.com', '+1-783-264-1961', 'http://www.frami.org/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(19, 'Dr. Furman Heidenreich', 'alexanne61@example.org', '932-744-3697 x956', 'http://deckow.net/quia-placeat-quidem-fugiat-natus-nemo-molestiae', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(20, 'Prof. Lillian Torp', 'vconsidine@example.com', '1-664-922-4858', 'http://okon.info/doloremque-est-occaecati-dolorum-ab', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(21, 'Mrs. Candace Murphy Sr.', 'gisselle.hammes@example.com', '1-620-598-8645', 'https://will.com/ratione-consequatur-at-et-rerum-sit-facere.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(22, 'Jody O\'Keefe V', 'amira78@example.org', '1-253-915-8491', 'http://mitchell.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(23, 'Berta Rodriguez', 'lynch.breanne@example.org', '1-595-852-0932 x9996', 'http://brekke.org/explicabo-dicta-quia-sed-magnam-commodi-blanditiis-et-blanditiis.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(24, 'Ceasar Dickens', 'maeve.hudson@example.com', '1-736-232-3516 x5216', 'http://www.bergnaum.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(25, 'Stacy Kreiger', 'mcclure.marta@example.com', '(824) 241-7928 x70534', 'http://www.hettinger.com/officia-et-adipisci-vel-quidem-voluptas', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(26, 'Dr. Carlie Murphy Sr.', 'anibal62@example.org', '281.909.1865 x180', 'https://www.streich.com/ducimus-quia-perspiciatis-labore-sint-consectetur-ut-et-consequatur', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(27, 'Rossie Flatley', 'else.batz@example.org', '+1.425.978.9489', 'http://wisoky.info/ratione-cumque-id-soluta-ratione-molestias', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(28, 'Roscoe Durgan II', 'bschneider@example.org', '730-630-2915 x778', 'http://gottlieb.com/vel-sit-est-esse-voluptatem-eveniet-consectetur', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(29, 'Hiram Gibson', 'eschimmel@example.com', '(956) 458-6782 x49470', 'http://www.beatty.info/molestiae-labore-veritatis-praesentium-alias-et-culpa', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(30, 'Prudence Wiegand Jr.', 'catalina.collier@example.com', '905-433-2338 x50903', 'http://rempel.net/nostrum-similique-aut-nesciunt-dolor.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(31, 'Dr. Courtney Koepp I', 'chickle@example.com', '+1 (954) 642-1640', 'http://durgan.info/corrupti-iure-et-ab-amet.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(32, 'Mr. Tyrique Boyer MD', 'noconner@example.com', '616.861.3206', 'http://rutherford.com/maiores-culpa-impedit-omnis-iure', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(33, 'Prof. Jaydon Gleason PhD', 'vella.ratke@example.net', '858.395.5094', 'http://spencer.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(34, 'Kaelyn Dare', 'xruecker@example.org', '1-989-724-9435', 'http://www.koelpin.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(35, 'Mrs. Margie Adams DVM', 'polson@example.net', '832-810-4817 x04274', 'http://walker.com/molestias-nam-quidem-aut-unde-occaecati-nostrum', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(36, 'Alvah Kreiger', 'ebarton@example.org', '1-596-701-1362', 'http://spencer.com/qui-aut-non-suscipit-dolorum.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(37, 'Mrs. Shaniya Kling', 'paris.oconner@example.net', '1-421-772-1149', 'https://keeling.biz/iure-nemo-laudantium-nihil-vel-voluptas-ex.html', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(38, 'Cleveland Zemlak', 'harber.susanna@example.com', '+16609263648', 'http://www.erdman.info/ut-doloribus-dolor-voluptatem-mollitia-quaerat', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(39, 'Meda Hane', 'aurelia.labadie@example.org', '603-830-2493', 'http://www.schaefer.com/rem-sint-voluptatem-nostrum-iure-natus-quod', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(40, 'Kamron McKenzie', 'fatima42@example.com', '+18095062731', 'http://pagac.com/', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(41, 'Rebeka McLaughlin', 'flehner@example.net', '1-275-285-3439 x01102', 'http://www.kreiger.net/quam-enim-assumenda-quam-deserunt', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(42, 'Quinn Daniel', 'zetta.hill@example.org', '(673) 861-0661 x20102', 'http://labadie.com/enim-ut-quo-animi-ut-possimus-quam-velit', '2020-10-31 15:27:46', '2020-10-31 15:27:46'),
(43, 'Prof. Aliya Dietrich Sr.', 'kaley78@example.org', '+1-558-828-4937', 'https://www.roberts.org/rerum-velit-voluptate-dicta-pariatur', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(44, 'Devante Friesen', 'armstrong.carlie@example.org', '1-868-732-4311', 'http://www.nikolaus.com/hic-sit-modi-quidem-nesciunt-vero-soluta-et.html', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(45, 'Zena Kuhic', 'adam70@example.org', '504-744-2261 x6710', 'http://koch.com/ut-aliquam-et-quo-et-eum-alias', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(46, 'Jacynthe Rutherford', 'keshawn62@example.com', '(974) 661-3121', 'http://dicki.com/', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(47, 'Joesph Ryan DVM', 'gleason.pierce@example.com', '254.928.7450', 'http://www.heidenreich.org/', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(48, 'Blanche Stanton', 'cglover@example.com', '+1.837.313.5264', 'https://nienow.info/deserunt-culpa-quibusdam-eaque-inventore-doloribus-consectetur-quia-eveniet.html', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(49, 'Ebony Frami V', 'eugene.ritchie@example.org', '539.437.7904', 'http://brakus.com/soluta-error-qui-odio-ducimus', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(50, 'Cedrick Kessler', 'vohara@example.com', '952-533-8465 x540', 'http://www.jerde.com/', '2020-10-31 15:27:47', '2020-10-31 15:27:47'),
(51, 'Eaton Hayden', 'vyji@mailinator.com', '+1 (647) 845-4154', 'https://www.buqogazahidor.org', '2020-10-31 16:22:13', '2020-10-31 16:22:13'),
(52, 'Eaton Hayden', 'vyji@mailinator.com', '+1 (647) 845-4154', 'https://www.buqogazahidor.org', '2020-10-31 16:22:22', '2020-10-31 16:22:22'),
(53, 'Xenos Blake', 'cuma@mailinator.com', '+1 (467) 476-8155', 'https://www.tagofukumymezyg.net', '2020-10-31 16:23:06', '2020-10-31 16:23:06'),
(54, 'Oliver Roberson', 'dycopumivo@mailinator.com', '+1 (134) 685-5438', 'https://www.cicehybi.net', '2020-10-31 16:23:43', '2020-10-31 16:23:43'),
(55, 'Audra Conner', 'toziwepig@mailinator.com', '+1 (888) 483-9538', 'https://www.fafywuceqoha.me.uk', '2020-10-31 16:23:50', '2020-10-31 16:23:50'),
(56, 'Roth Edwards', 'gefeka@mailinator.com', '+1 (886) 378-9136', 'https://www.wakyzymuvysale.me', '2020-10-31 16:24:18', '2020-10-31 16:24:18'),
(57, 'Yuli Webb', 'vylifup@mailinator.com', '+1 (951) 604-5853', 'https://www.gyvyloqyq.co.uk', '2020-10-31 16:24:30', '2020-10-31 16:24:30'),
(58, 'Hasan Rahman', 'hellomrhasan@gmail.com', '+8801716199668', 'https://www.kabelyhufynaqu.tv', '2020-10-31 16:48:29', '2020-10-31 16:48:29'),
(59, 'Penelope Jensen', 'puqumuh@mailinator.com', '+1 (472) 523-7549', 'https://www.hafumipo.biz', '2020-10-31 16:56:29', '2020-10-31 16:56:29'),
(60, 'Kuame Deleon', 'qowomyze@mailinator.com', '+1 (832) 126-9835', 'https://www.fizelex.co.uk', '2020-11-02 15:43:03', '2020-11-02 15:43:03'),
(61, 'Hasan Rahman', 'hellomrhasan@gmail.com', '+8801716199668', 'https://www.jyrejepor.us', '2020-11-15 14:32:01', '2020-11-15 14:32:01'),
(62, 'Shad Molina', 'lyhowikory@mailinator.com', '+1 (947) 214-5554', 'https://www.wymubavijipo.com.au', '2020-12-01 06:48:14', '2020-12-01 06:48:14'),
(63, 'Carter Doyle', 'bojafyxyn@mailinator.com', '+1 (338) 236-9564', 'https://www.bemyb.com', '2020-12-04 11:07:02', '2020-12-04 11:07:02'),
(64, 'Ezekiel Kirk', 'sexetaleci@mailinator.com', '+1 (753) 911-1845', 'https://www.rutylezahypuzo.me', '2020-12-04 14:36:56', '2020-12-04 14:36:56'),
(65, 'George Wilson', 'suxum@mailinator.com', '+1 (673) 349-7573', 'https://www.paxo.biz', '2021-01-02 02:40:44', '2021-01-02 02:40:44'),
(66, 'Tanya Gibbs', 'ferysoh@mailinator.com', '+1 (131) 173-3486', 'https://www.xomutevyzibaj.mobi', '2021-01-02 09:07:22', '2021-01-02 09:07:22'),
(67, 'Ryan Flynn', 'zica@mailinator.com', '+1 (986) 953-4109', 'https://www.fonykuq.info', '2021-01-06 10:49:05', '2021-01-06 10:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_driver` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_enc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `sender_name`, `sender_email`, `mail_driver`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_enc`, `email_template`, `created_at`, `updated_at`) VALUES
(1, 'Hasan Rahman', 'hellomrhasan@gmail.com', 'smtp', 'smtp.mailtrap.io', '2525', 'afd1602376014a', '13e931a3b4b504', 'tls', 0x3c64697620636c6173733d227772617070657222207374796c653d226261636b67726f756e642d636f6c6f723a20726762283234322c203234322c20323432293b206865696768743a206175746f3b223e0a3c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b207461626c652d6c61796f75743a2066697865643b20636f6c6f723a20236238623862383b20666f6e742d66616d696c793a205562756e74752c73616e732d73657269663b2220616c69676e3d2263656e746572223e0a3c74626f64793e0a3c74723e0a3c746420636c6173733d227072656865616465725f5f736e697070657422207374796c653d2270616464696e673a203130707820302035707820303b20766572746963616c2d616c69676e3a20746f703b2077696474683a2032383070783b223e266e6273703b3c2f74643e0a3c746420636c6173733d227072656865616465725f5f77656276657273696f6e22207374796c653d22746578742d616c69676e3a2072696768743b2070616464696e673a203130707820302035707820303b20766572746963616c2d616c69676e3a20746f703b2077696474683a2032383070783b223e266e6273703b3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c7461626c6520636c6173733d226c61796f7574206c61796f75742d2d6e6f2d67757474657222207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b207461626c652d6c61796f75743a2066697865643b206d617267696e2d6c6566743a206175746f3b206d617267696e2d72696768743a206175746f3b206f766572666c6f772d777261703a20627265616b2d776f72643b20776f72642d777261703a20627265616b2d776f72643b20776f72642d627265616b3a20627265616b2d776f72643b206261636b67726f756e642d636f6c6f723a20236666666666663b2220616c69676e3d2263656e746572223e0a3c74626f64793e0a3c74723e0a3c746420636c6173733d22636f6c756d6e22207374796c653d2270616464696e673a203070783b20746578742d616c69676e3a206c6566743b20766572746963616c2d616c69676e3a20746f703b20636f6c6f723a207267622839362c203130322c20313039293b206c696e652d6865696768743a20323170783b20666f6e742d66616d696c793a2073616e732d73657269663b2077696474683a2036303070783b223e0a3c646976207374796c653d22666f6e742d73697a653a20313470783b206d617267696e2d6c6566743a20323070783b206d617267696e2d72696768743a20323070783b206d617267696e2d746f703a20323470783b223e0a3c646976207374796c653d226c696e652d6865696768743a20313070783b20666f6e742d73697a653a203170783b223e266e6273703b3c2f6469763e0a3c2f6469763e0a3c646976207374796c653d22666f6e742d73697a653a20313470783b206d617267696e2d6c6566743a20323070783b206d617267696e2d72696768743a20323070783b223e0a3c68323e4869207b7b6e616d657d7d2c3c2f68323e3c703e3c7374726f6e673e7b7b6d6573736167657d7d3c2f7374726f6e673e3c62723e3c2f703e3c2f6469763e0a3c646976207374796c653d226d617267696e2d6c6566743a20323070783b206d617267696e2d72696768743a20323070783b206d617267696e2d626f74746f6d3a20323470783b223e0a3c7020636c6173733d2273697a652d313422207374796c653d226d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a203070783b206c696e652d6865696768743a20323170783b223e3c666f6e742073697a653d2233223e3c623e5468616e6b732c3c2f623e3c2f666f6e743e3c62723e203c7374726f6e67207374796c653d22666f6e742d73697a653a20313470783b223e7b7b736974655f7469746c657d7d3c2f7374726f6e673e3c2f703e0a3c2f6469763e0a3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b207461626c652d6c61796f75743a2066697865643b20636f6c6f723a20236238623862383b20666f6e742d66616d696c793a205562756e74752c73616e732d73657269663b2220616c69676e3d2263656e746572223e0a3c74626f64793e0a3c74723e0a3c746420636c6173733d227072656865616465725f5f736e697070657422207374796c653d2270616464696e673a203130707820302035707820303b20766572746963616c2d616c69676e3a20746f703b2077696474683a2032383070783b223e266e6273703b3c2f74643e0a3c746420636c6173733d227072656865616465725f5f77656276657273696f6e22207374796c653d22746578742d616c69676e3a2072696768743b2070616464696e673a203130707820302035707820303b20766572746963616c2d616c69676e3a20746f703b2077696474683a2032383070783b223e266e6273703b3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c6469762069643d22736964656261722d6f7665726c6179223e3c2f6469763e3c2f6469763e, NULL, '2021-01-14 12:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_31_205428_create_customers_table', 2),
(5, '2020_11_01_200329_create_permission_tables', 3),
(6, '2021_01_09_113532_create_basic_settings_table', 4),
(7, '2021_01_09_144140_create_email_settings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(4, 'App\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'role-list', 'web', '2020-11-02 14:02:36', '2020-11-02 14:02:36'),
(5, 'role-create', 'web', '2020-11-02 14:02:36', '2020-11-02 14:02:36'),
(6, 'role-edit', 'web', '2020-11-02 14:02:36', '2020-11-02 14:02:36'),
(7, 'role-delete', 'web', '2020-11-02 14:02:37', '2020-11-02 14:02:37'),
(8, 'user-list', 'web', '2020-11-02 14:02:37', '2020-11-02 14:02:37'),
(9, 'user-create', 'web', '2020-11-02 14:02:37', '2020-11-02 14:02:37'),
(10, 'user-edit', 'web', '2020-11-02 14:02:37', '2020-11-02 14:02:37'),
(11, 'user-delete', 'web', '2020-11-02 14:02:37', '2020-11-02 14:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2020-11-01 14:28:54', '2020-11-01 14:28:54'),
(2, 'Admin', 'web', '2020-11-01 14:34:30', '2021-01-06 08:25:57'),
(4, 'Register', 'web', '2020-11-01 14:42:32', '2020-11-01 14:42:32'),
(5, 'Accountant', 'web', '2020-11-01 14:42:42', '2020-11-01 14:42:42'),
(6, 'Teacher', 'web', '2020-11-01 14:42:55', '2020-11-01 14:42:55'),
(7, 'Librarian', 'web', '2020-11-01 14:43:16', '2021-01-06 08:26:42'),
(8, 'Staff', 'web', '2020-11-01 14:43:35', '2021-01-06 08:29:39'),
(9, 'Photocopier', 'web', '2021-01-06 08:29:57', '2021-01-06 08:30:18'),
(10, 'Receptionist', 'web', '2021-01-06 08:31:48', '2021-01-06 08:31:48'),
(11, 'Guardian', 'web', '2021-01-06 08:32:16', '2021-01-06 08:32:16'),
(12, 'Student', 'web', '2021-01-06 08:32:29', '2021-01-06 08:32:29');

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
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/profile/profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Hasan Rahman', 'admin@gmail.com', NULL, '$2y$10$IgUW77dvgD7OuNBqDm1Z2.LRrH..mAtaw/ECeEMb4wXZTqoVVZOeO', 'Test bio is here', 'img/profile/1610301835.jpeg', NULL, '2020-10-31 10:06:50', '2021-01-10 12:03:55'),
(5, 'Silas Dejesus', 'bohaty@mailinator.com', NULL, '$2y$10$58ESCSDIEO6Y6uXlnRLYUufasinixxpw5GiWNKmmE.NYH8RobQ6Fq', 'Quo doloremque atque', 'img/profile/profile.png', NULL, '2021-01-19 01:17:21', '2021-01-19 01:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
