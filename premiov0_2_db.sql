-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2019 at 01:46 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premiov0.2_db`
--

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `nim`, `team_name`, `achievement`, `prize`, `competition`, `place_of_competition`, `date_of_competition`, `certificate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '16090028', 'Hahaha Team', 'winner', 5000000, 'Invofest 2019', 'Politeknik Harapan Bersama Tega', '2019-07-01', 'achievements/Bf4RNI4Nv5CcDLC9WGqbVedCXb5PlAVxqppfT6KB.jpeg', '2019-07-08 20:45:16', '2019-07-08 20:45:16', NULL),
(2, '16090001', 'Hahaha Team', 'winner', 10000000, 'Invofest 2018', 'Politeknik Harapan Bersama Tegal', '2019-06-01', 'achievements/caHubBNmEHhewLbNJmpNcyX1scHfvMykf9RDePft.jpeg', '2019-07-14 18:27:25', '2019-07-14 18:27:25', NULL);

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admins/XBwjSHsXmHVI3f6k2A6qM7juRpsb2j8oCTFklODP.png', '$2y$10$6Tz0T8VGPZwnsl/y8GNNk.HiorFQx87n.4JT6FadrSwTcBSwLOvaa', 'jHMmmhSoFUI9HF7V8dFUNRJNeLxyuYqhMqyuUhlaWppCV3wZewdnzKivXqaU', '2019-05-27 00:04:22', '2019-07-08 20:40:39', NULL);

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1A', '2019-05-27 00:04:22', '2019-05-27 00:04:22', NULL),
(2, '1B', '2019-07-08 19:29:49', '2019-07-08 19:29:49', NULL),
(3, '3A', '2019-07-08 19:30:25', '2019-07-08 19:30:25', NULL);

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `nipy`, `name`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12345671', 'Miss Verna Donnelly I', 'huel.timothy@yahoo.com', 'lecturers/uSM09HOWv41HNtXLD5WEYBApaPpQx6g8pYOtHXM5.png', '$2y$10$cSCt61r5eZOn5.d065qdgucNcfuUUtysySNirA.zkJ4f3aCg9zuHC', 'UEyKWQk3lx54AXwJrtYXhO1EAnvz515IC8RAstYQXEkFHchFC49d5YqfTwzU', '2019-05-27 00:04:22', '2019-07-09 22:13:39', NULL),
(2, '12345672', 'Shaniya Crooks', 'grimes.niko@hotmail.com', 'default.png', '$2y$10$TxCWtGAHN3e5T7tPtWalz.ahSgchocZSDn3IppDPaoMRx/srAZ3/2', NULL, '2019-05-27 00:04:22', '2019-05-27 00:04:22', NULL),
(3, '12345673', 'Ellis Leffler', 'ratke.florian@prohaska.com', 'default.png', '$2y$10$AIXyj556X75m1q1ByinoEOPARtDbaO4ZFJ76dDdZ51IxVAOA3XZyW', NULL, '2019-05-27 00:04:22', '2019-05-27 00:04:22', NULL),
(4, '12345674', 'Parker Beier', 'candida10@funk.com', 'default.png', '$2y$10$VWK/dtcyQQZtMFcLHY76p.siDjGLBgYFFtIfXt9hGlFxn9ExxHup2', NULL, '2019-05-27 00:04:22', '2019-05-27 00:04:22', NULL),
(5, '12345675', 'Maudie Klein', 'alexandra.zieme@hotmail.com', 'default.png', '$2y$10$XiVXsouFprt2UDakMNxiYO9Xv4zABTZ7tIaFLgwk2B7BafCxYg1u.', NULL, '2019-05-27 00:04:22', '2019-05-27 00:04:22', NULL);

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_02_041748_create_admins_table', 1),
(4, '2019_02_02_042126_create_lecturers_table', 1),
(5, '2019_02_05_025147_add_deleted_at_column_to_admins_table', 1),
(6, '2019_02_05_031015_add_deleted_at_column_to_lecturers_table', 1),
(7, '2019_02_05_041447_add_deleted_at_column_to_users_table', 1),
(8, '2019_02_24_105525_create_achievements_table', 1),
(9, '2019_05_07_011737_create_grades_table', 1);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `grade_id`, `name`, `email`, `email_verified_at`, `gender`, `place_of_birth`, `date_of_birth`, `religion`, `blood_type`, `phone`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '16090001', 1, 'Dr. Verner Zboncak', 'gilbert87@hotmail.com', NULL, 'male', 'New Kristoffer', '1997-02-13', 'islam', 'AB', '7958339064', 'users/opMxy8SQuiv4OQjV7Uo4VBYzA2N8D7Q82ygM9Zvv.png', '$2y$10$yrL/MiM9SGZ6BDp7sr5fZOa6wOmKFohqHyuaD44LqwFcj9RVlH/iK', '2ISP3EPnoo2EOhMsw25ItkKOcfsbdt6j3VJSM73visJlUDPM4xR8ZCL7SGqB', '2019-05-27 00:04:23', '2019-07-08 19:32:58', NULL),
(2, '16090002', 1, 'Brianne Gerlach', 'mboyer@hotmail.com', NULL, 'female', 'Andersonberg', '2002-12-24', 'katolik', 'AB', '+1-970-807-0215', 'default.png', '$2y$10$Nz.e3f.Rwl14gkgeExDZGOomK7a.2OuI4dz0CWqR3ESseGBL7FAeG', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(3, '16090003', 1, 'Mr. Kurt Keebler IV', 'augustus73@yahoo.com', NULL, 'female', 'Amiyafort', '2011-03-04', 'buddha', 'B', '+1-942-310-3696', 'default.png', '$2y$10$xDB1JR2ievtNNXCPOkOi/OMdQjMrbswpO4Wps1pvG0kuJ4gD/3RwS', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(4, '16090004', 1, 'Cristina Heathcote', 'lilly.schimmel@hotmail.com', NULL, 'female', 'Gerlachchester', '2007-03-21', 'protestan', 'O', '+1.746.399.2654', 'default.png', '$2y$10$tvLAywfwtDANJSN926h7Z.xoEgEa.qQU7eHpWBIfVHaqcVhYvlJhu', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(5, '16090005', 1, 'Benjamin Hudson', 'jackeline50@gmail.com', NULL, 'female', 'Langchester', '2018-03-10', 'katolik', 'A', '1-342-843-6802 x811', 'default.png', '$2y$10$VEBwV0aXqgm2P73DlQSiAuqZ1rY98VlzdLiB5UbUBO7lb86LDqsSO', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(6, '16090006', 1, 'Randal Harris MD', 'ebert.oleta@gmail.com', NULL, 'male', 'Keeganborough', '1994-09-22', 'islam', 'B', '+1.642.662.0807', 'default.png', '$2y$10$hLzTNiR0ET3RtNsolukZYODtjOpmDSXsn47yhKX4YYyUN1FMmFTEi', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(7, '16090007', 1, 'Dr. Lyric Leuschke III', 'sspencer@yahoo.com', NULL, 'female', 'North Ryanhaven', '2011-09-21', 'katolik', 'O', '+1.991.615.5191', 'default.png', '$2y$10$IeSX71KK83ZH79KHjshkC.XjuVvEN/XSMwEv71UBeHiTRFmsEDmsK', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(8, '16090008', 1, 'Frances Kreiger', 'kamille74@haag.org', NULL, 'male', 'Aminaburgh', '2000-06-23', 'katolik', 'AB', '(606) 543-9181', 'default.png', '$2y$10$VuQ9.7xZ5mdE3bXINtN8lehY.Yq6.j5xWyCjWXjFRAk7Z1mevcKou', NULL, '2019-05-27 00:04:23', '2019-05-27 00:04:23', NULL),
(9, '16090009', 1, 'Dr. Estevan Ritchie IV', 'kenny.heaney@hotmail.com', NULL, 'male', 'Kihnburgh', '1991-03-20', 'hindu', 'A', '+1-293-630-8210', 'default.png', '$2y$10$nKpP.gKgRpGP7sNyAUr/LOoZU/FuVhjaobfQi9jCixC2ZWuv6sY8S', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(10, '16090010', 1, 'Haylee Rosenbaum', 'xdonnelly@rice.com', NULL, 'female', 'Marksfort', '2002-11-15', 'protestan', 'B', '+1-291-873-3991', 'default.png', '$2y$10$Ykm1us6CnXICcw9oS1VTCuEGdyE.5xANUR/2M.F6mqdWJlN9C6jZ2', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(11, '16090011', 1, 'Mittie Denesik', 'katrine.johnston@yahoo.com', NULL, 'male', 'North Berylmouth', '2017-11-25', 'islam', 'A', '334.982.3127 x83857', 'default.png', '$2y$10$Rd/S71lkdDcC2XZt1cVorO5dnB2z3hYFbl.MKRK9xqs24Gp7IuQcK', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(12, '16090012', 1, 'Mr. Emmett Beer V', 'roberta70@dibbert.info', NULL, 'female', 'Emardside', '1989-10-13', 'katolik', 'AB', '(859) 338-8848 x173', 'default.png', '$2y$10$koiaKtsQwWOQdVf0acfNHOXsJU4Ad2zwkI.qQOldzoeV40C.6zsLi', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(13, '16090013', 1, 'Kamron McDermott DDS', 'lysanne01@gmail.com', NULL, 'male', 'Port Laurianne', '2000-10-02', 'katolik', 'A', '1-721-570-1802 x0288', 'default.png', '$2y$10$1JbI0YgaJtHSalIXIJ4Vve7RvoPan1h8GLvd1p0VgLnJrf7jc3qA6', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(14, '16090014', 1, 'Marianna Koch', 'xkoch@yahoo.com', NULL, 'female', 'Lindgrenfurt', '2005-03-31', 'protestan', 'B', '+14488025743', 'default.png', '$2y$10$DdqrPbLSvYTqruSwrR2aveMFOzSsH4bZZVPy63vLZCo7F6oOBrBBu', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(15, '16090015', 1, 'Dr. Ana Leuschke', 'neal85@cruickshank.com', NULL, 'male', 'West Cleoraview', '2000-04-08', 'protestan', 'O', '263.544.8520', 'default.png', '$2y$10$RsxFdLPuQJp9oMLGSyRn7Odl8FABA9Sxa3I/klD55pUdt/.vcuojO', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(16, '16090016', 1, 'Dr. Cristina Cassin', 'astroman@greenholt.com', NULL, 'female', 'East Deondre', '2013-07-09', 'protestan', 'A', '+1-903-337-1147', 'default.png', '$2y$10$UMrQNdbGJkBeGZm/wYETlubf/ddy6KGLj.gaL7bkkZBS4IyOA.aq6', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(17, '16090017', 1, 'Prof. Tressa Nicolas', 'wswaniawski@ullrich.info', NULL, 'male', 'East Nichole', '2007-05-25', 'islam', 'B', '440-332-1361', 'default.png', '$2y$10$V6YPmQa6Ls3iidyU/W7z3OAMhxhRJpAOdNzoUxFZgfuV8ROkJrzp2', NULL, '2019-05-27 00:04:24', '2019-05-27 00:04:24', NULL),
(18, '16090018', 1, 'Andre Becker', 'einar.hoeger@gmail.com', NULL, 'male', 'Annieview', '1995-08-19', 'katolik', 'O', '+19726722113', 'default.png', '$2y$10$baA0i2jlU/7NM4SPINFJmO7R4qkiTy824k1Z73uzYGpLauBNVpYZy', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(19, '16090019', 1, 'Karianne Mueller', 'donato03@hotmail.com', NULL, 'male', 'Marcelinaberg', '2017-02-11', 'buddha', 'B', '550-241-4355', 'default.png', '$2y$10$RYottM8Xu.xF9ER/QSgDU.OpeHlcITS85XXUrhy9tEaFJwVbvOXiO', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(20, '16090020', 1, 'Mitchel Metz', 'mario70@pfannerstill.com', NULL, 'female', 'Harrisville', '2019-02-25', 'islam', 'B', '+1 (923) 438-1544', 'default.png', '$2y$10$S2a4lEHxWw4X1H/4Zeuuvu1f48MxwBr3m0btRTlB.543GZlRhd7MW', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(21, '16090021', 1, 'Wilson O\'Keefe', 'ada.wehner@jerde.com', NULL, 'female', 'East Elenorabury', '2001-06-07', 'buddha', 'AB', '(330) 348-9253 x64760', 'default.png', '$2y$10$CpGkhDK27gI5YUZGIyPsN.s03WCDl4GGPmvVycPJdeEN5aOTujM1K', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(22, '16090022', 1, 'Lilla Prosacco V', 'wweber@gmail.com', NULL, 'female', 'Ullrichburgh', '2003-03-11', 'buddha', 'O', '(857) 756-6226 x6040', 'default.png', '$2y$10$KxPZpvnLJkwKRJlbQ.aIKeqx50pbAjyBzN.nTjr40ETkx9h.09VD2', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(23, '16090023', 1, 'Dr. Emmanuel Prosacco', 'beaulah55@bashirian.com', NULL, 'female', 'New Yazmin', '1989-09-29', 'katolik', 'B', '(347) 784-5834 x8001', 'default.png', '$2y$10$RDMFCfFFkMZbLWNwPx4SL.rs/gZwwXFKz/fyXERYAt/KBwxxZ3fTK', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(24, '16090024', 1, 'Mathew Hane', 'hagenes.carmela@gmail.com', NULL, 'male', 'Lake Paulstad', '2007-03-22', 'protestan', 'B', '646-502-6465 x953', 'default.png', '$2y$10$eJhh1wk6vsnnxCrV62uAdOalgpb3joQ2eWhgesR4QB8NTFMbV82Nu', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(25, '16090025', 1, 'Ora Durgan DVM', 'ksenger@wintheiser.com', NULL, 'female', 'New Dorris', '2005-08-10', 'islam', 'B', '+1 (959) 787-7278', 'default.png', '$2y$10$QVnQAYqutzvl0fQwMbAyE./x0sDuLedXHCWH42ArzwpGEGuWQQ.qW', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(26, '16090026', 1, 'Bartholome Kautzer', 'bruen.darrin@hotmail.com', NULL, 'male', 'Lindsaychester', '2015-01-04', 'islam', 'A', '1-637-871-0767 x0807', 'default.png', '$2y$10$bLfgmxbcBPFC9k/zDZbm7eh3M91UG8jgfVVE41Rm/bYPdP4x.5ofm', NULL, '2019-05-27 00:04:25', '2019-05-27 00:04:25', NULL),
(27, '16090027', 1, 'Prof. Abdullah Daugherty I', 'zulauf.jermey@gmail.com', NULL, 'male', 'Lavinashire', '2017-10-22', NULL, 'AB', '085601722221', 'users/kUIMQ8zp9CTMYk7ChKLAOvGjvBFndZRKosUtjpbG.png', '$2y$10$BdNn7rcH.7O2tanq/VOlR.s8RY8TVWBCxrRIIMTZX7VXqdBkPHbka', NULL, '2019-05-27 00:04:26', '2019-07-09 22:12:25', NULL),
(28, '16090028', 1, 'Michaela Predovic', 'braden92@yahoo.com', NULL, 'male', 'New Otisborough', '2015-05-14', 'islam', 'A', '08999988912', 'users/rShGqRmgVIYx98q4sMrds1wMD6atbAnxla8gixfn.png', '$2y$10$Vl./SP/BkQ8CtIdkafpTTuDw7ONL.oLmIo0Lvtn7KR/RjiDg/0qQW', NULL, '2019-05-27 00:04:26', '2019-07-08 20:44:16', NULL),
(29, '16090029', 1, 'Mozelle Stamm', 'tkling@hotmail.com', NULL, 'male', 'Lake Amparomouth', '2016-08-01', 'protestan', 'B', '08999999999', 'users/SykkQVhXPdEA6YGkQ2HtD6UHPZPKi1wWGu1BddlC.png', '$2y$10$hEdHIQZqKH2TopkVoXXWTu8vcAquyGjxLUN3RPtj3zYrJhhlfwrgu', NULL, '2019-05-27 00:04:26', '2019-07-08 23:19:27', NULL),
(30, '16090030', 1, 'Miss Verla Waters PhD', 'pasquale.bechtelar@yahoo.com', NULL, 'male', 'South Filibertoside', '2013-10-21', 'hindu', 'AB', '389-328-6897 x58289', 'default.png', '$2y$10$8Tz1r8loUtk7kcTJkMf/v.1H6bJC4hwZLQ35uuqtQhWa5H24Y817W', NULL, '2019-05-27 00:04:26', '2019-05-27 00:04:26', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
