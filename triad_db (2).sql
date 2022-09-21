-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 05:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triad_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `id` int(255) NOT NULL,
  `check_list_name` varchar(255) NOT NULL,
  `total_weight` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`id`, `check_list_name`, `total_weight`) VALUES
(1, 'Recognition', 10),
(2, 'Preparation', 10),
(3, 'Identifying Focus metrics and Follow Through', 15),
(4, 'Identify Behaviours', 15),
(5, 'Ask the agent(SMART Action)', 20),
(6, 'Set Targets', 15),
(7, 'Summary/Buy-in', 15);

-- --------------------------------------------------------

--
-- Table structure for table `historical_data`
--

CREATE TABLE `historical_data` (
  `id` int(11) NOT NULL,
  `checklistID` int(11) DEFAULT NULL,
  `paramID` int(11) DEFAULT NULL,
  `sessionID` int(11) DEFAULT NULL,
  `weight` varchar(250) DEFAULT NULL,
  `calc_weight_tbd` float NOT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `calc_total_weight_percentage` float NOT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `coachedID` int(11) DEFAULT NULL,
  `coached_departmentID` int(11) DEFAULT NULL,
  `coached_by` int(11) DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(255) NOT NULL,
  `parameter_name` varchar(255) NOT NULL,
  `checklistID` int(255) NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `parameter_name`, `checklistID`, `weight`) VALUES
(1, 'Greeted the agent and established rapport. Set the tone of conversation', 1, 3),
(2, 'Recognized milestones, achievements, positive behaviors', 1, 3),
(3, 'Reviewed performance, metric trends, reports, QA findings ahead and have them ready for the session	', 2, 3),
(4, 'Reviewed previous coaching logs ahead of time, quantified execution of agreed actions and correlated with results', 2, 3),
(5, 'Stated discussion objective, agenda and importance of the session', 1, 0),
(6, 'Ensured coachee full attention before proceeding to the rest of the session', 1, 0),
(7, 'Provided a quick read out of the preparations done', 2, 0),
(8, 'Discussed last week performance results (highlights and lowlights) with the agent', 3, 0),
(9, 'Discussed previous weeks action items (opportunity behavior/s) and reinforced execution opportunities', 3, 0),
(10, 'Presented ample amount of call audits(recorded/live)) to establish quantity and quality of execution on previous agreed actions', 3, 0),
(11, 'Identified Focus Metrics and centered discussion around them', 3, 0),
(12, 'Presented ample amount of call audits(documented) to establish trending behaviors impacting performance	\r\n', 4, 0),
(13, 'Coach shared his/her observation of the things that went well during the call	\r\n', 4, 0),
(14, 'Guided the coachee in identifying behaviors to reinforce strengths 	\r\n', 4, 0),
(15, 'Clearly stated and clarified the problem as well as discussed the impact	\r\n', 4, 0),
(16, 'Mutually identified the performance gaps and behavior/s and agreed on SMART(Specific Measurable Actionable Realistic Timebound) actions', 5, 0),
(17, 'Demonstrated/Outlined the steps the actions employee will take to address behavior and improve performance', 5, 0),
(18, 'Identified and Demonstrated skill transfer for necessary skills for coachee to perform the actions', 5, 0),
(19, 'Identified needed/applicable resource/s and support', 5, 0),
(20, 'Outlined steps on commitment to support the coachee on the actions', 5, 0),
(21, 'Outlined the timelines of improvement expectations (glide path weekly to monthly) and mutually agreed with the coachee', 6, 0),
(22, 'Asked the coachee to summirze commitment and ensured key items were understood and captured', 7, 0),
(23, 'Set up a specific follow up date for next coaching session', 7, 0),
(24, 'Confirmed commitment and buy in', 7, 0),
(25, 'Thanked the coachee and Ensured that session ended on a positive note', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(255) NOT NULL,
  `value` int(255) DEFAULT NULL,
  `stamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `value`, `stamp`) VALUES
(1, 1, '2022-08-30 22:04:22.639080'),
(2, 1, '2022-08-30 22:07:26.183706'),
(3, 1, '2022-08-30 22:09:37.477046'),
(4, 1, '2022-08-30 22:11:10.140653'),
(5, 1, '2022-08-30 22:11:39.467566'),
(6, 1, '2022-08-30 22:12:23.419252'),
(7, 1, '2022-08-30 22:12:52.441708'),
(8, 1, '2022-08-30 22:13:36.659462'),
(9, 1, '2022-08-30 22:13:51.986110'),
(10, 1, '2022-08-30 22:14:34.127644'),
(11, 1, '2022-08-30 22:15:43.656290'),
(12, 1, '2022-08-30 22:16:22.859135'),
(13, 1, '2022-08-30 22:16:43.867318'),
(14, 1, '2022-08-30 22:17:24.962838'),
(15, 1, '2022-08-30 22:18:37.505127'),
(16, 1, '2022-08-30 22:18:56.784669'),
(17, 1, '2022-08-30 22:20:14.976119'),
(18, 1, '2022-08-30 22:27:59.087099'),
(19, 1, '2022-08-30 22:29:23.763220'),
(20, 1, '2022-08-30 22:37:03.946987'),
(21, 1, '2022-08-30 22:39:43.429174'),
(22, 1, '2022-08-30 22:40:10.757149'),
(23, 1, '2022-08-30 22:43:41.257803'),
(24, 1, '2022-08-30 22:43:56.907991'),
(25, 1, '2022-08-30 22:44:48.894153'),
(26, 1, '2022-08-30 22:45:25.848913'),
(27, 1, '2022-08-30 22:46:28.499699'),
(28, 1, '2022-08-30 22:47:18.729305'),
(29, 1, '2022-08-30 22:47:35.709789'),
(30, 1, '2022-08-30 22:49:21.997133'),
(31, 1, '2022-08-30 22:50:02.037317'),
(32, 1, '2022-08-30 22:51:06.410888'),
(33, 1, '2022-08-30 22:52:31.189965'),
(34, 1, '2022-08-30 22:54:56.248840'),
(35, 1, '2022-08-30 22:59:28.200955'),
(36, 1, '2022-08-30 23:01:33.468398'),
(37, 1, '2022-08-30 23:03:27.081094'),
(38, 1, '2022-08-30 23:04:21.105546'),
(39, 1, '2022-08-30 23:04:56.387250'),
(40, 1, '2022-08-30 23:07:49.094870'),
(41, 1, '2022-08-30 23:08:06.889477'),
(42, 1, '2022-08-30 23:08:19.990508'),
(43, 1, '2022-08-30 23:08:55.301650'),
(44, 1, '2022-08-30 23:09:24.721972'),
(45, 1, '2022-08-30 23:09:49.863924'),
(46, 1, '2022-08-30 23:10:41.330729'),
(47, 1, '2022-08-30 23:24:43.951127'),
(48, 1, '2022-08-30 23:36:20.582756'),
(49, 1, '2022-08-31 12:50:20.943924'),
(50, 1, '2022-08-31 12:50:33.686262'),
(51, 1, '2022-08-31 12:50:57.513642'),
(52, 1, '2022-08-31 12:51:15.289835'),
(53, 1, '2022-08-31 12:55:53.889564'),
(54, 1, '2022-08-31 12:56:28.157455'),
(55, 1, '2022-08-31 12:59:25.060780'),
(56, 1, '2022-08-31 13:01:35.926610'),
(57, 1, '2022-08-31 13:13:11.520396'),
(58, 1, '2022-08-31 13:14:27.001950'),
(59, 1, '2022-08-31 13:15:03.375429'),
(60, 1, '2022-08-31 13:16:33.682756'),
(61, 1, '2022-08-31 13:16:51.827664'),
(62, 1, '2022-08-31 13:17:05.177880'),
(63, 1, '2022-08-31 13:17:27.374425'),
(64, 1, '2022-08-31 13:18:01.958810'),
(65, 1, '2022-08-31 13:19:16.398683'),
(66, 1, '2022-08-31 13:34:36.734759'),
(67, 1, '2022-08-31 13:34:48.512235'),
(68, 1, '2022-08-31 13:34:55.251459'),
(69, 1, '2022-08-31 13:35:34.430888'),
(70, 1, '2022-08-31 13:55:56.706333'),
(71, 1, '2022-08-31 14:12:02.568059'),
(72, 1, '2022-08-31 14:39:42.003848'),
(73, 1, '2022-08-31 14:39:52.523767'),
(74, 1, '2022-08-31 14:40:13.481933'),
(75, 1, '2022-08-31 14:40:21.162455'),
(76, 1, '2022-08-31 14:41:18.481435'),
(77, 1, '2022-08-31 14:41:23.106072'),
(78, 1, '2022-08-31 14:41:27.742713'),
(79, 1, '2022-08-31 14:41:33.071139'),
(80, 1, '2022-08-31 14:49:06.307947'),
(81, 1, '2022-08-31 14:49:23.919660'),
(82, 1, '2022-08-31 14:49:42.192789'),
(83, 1, '2022-08-31 14:56:05.871246'),
(84, 1, '2022-08-31 14:57:11.934068'),
(85, 1, '2022-08-31 14:57:43.428877'),
(86, 1, '2022-08-31 15:06:52.174412'),
(87, 1, '2022-08-31 15:07:27.226235'),
(88, 1, '2022-08-31 15:08:43.218400'),
(89, 1, '2022-08-31 15:08:54.849916'),
(90, 1, '2022-08-31 15:09:19.540546'),
(91, 1, '2022-08-31 15:14:18.541880'),
(92, 1, '2022-08-31 15:14:38.651460'),
(93, 1, '2022-08-31 15:15:42.356528'),
(94, 1, '2022-08-31 15:19:08.742460'),
(95, 1, '2022-08-31 15:19:36.709556'),
(96, 1, '2022-08-31 15:24:38.217334'),
(97, 1, '2022-08-31 15:24:58.929777'),
(98, 1, '2022-08-31 15:26:15.643553'),
(99, 1, '2022-08-31 15:28:52.825574'),
(100, 1, '2022-08-31 15:29:38.029509'),
(101, 1, '2022-08-31 15:31:41.646764'),
(102, 1, '2022-08-31 15:34:06.994365'),
(103, 1, '2022-08-31 15:34:10.166331'),
(104, 1, '2022-08-31 15:35:16.071143'),
(105, 1, '2022-08-31 15:36:37.303446'),
(106, 1, '2022-08-31 15:42:47.149009'),
(107, 1, '2022-08-31 15:43:36.906704'),
(108, 1, '2022-08-31 15:44:09.649652'),
(109, 1, '2022-08-31 15:45:39.247053'),
(110, 1, '2022-08-31 15:46:35.891100'),
(111, 1, '2022-08-31 15:48:47.294025'),
(112, 1, '2022-08-31 15:49:32.031525'),
(113, 1, '2022-08-31 15:49:56.435965'),
(114, 1, '2022-08-31 15:50:21.755471'),
(115, 1, '2022-08-31 15:51:08.868419'),
(116, 1, '2022-08-31 15:51:49.381498'),
(117, 1, '2022-08-31 15:52:22.837280'),
(118, 1, '2022-08-31 15:56:34.804846'),
(119, 1, '2022-08-31 16:06:19.085154'),
(120, 1, '2022-08-31 16:08:34.033816'),
(121, 1, '2022-08-31 16:08:50.190287'),
(122, 1, '2022-08-31 16:09:41.273294'),
(123, 1, '2022-08-31 16:09:49.969045'),
(124, 1, '2022-08-31 16:10:19.501809'),
(125, 1, '2022-08-31 16:11:33.673046'),
(126, 1, '2022-08-31 16:13:06.066754'),
(127, 1, '2022-08-31 16:13:43.148987'),
(128, 1, '2022-08-31 16:18:47.843887'),
(129, 1, '2022-08-31 16:19:19.294477'),
(130, 1, '2022-08-31 16:20:46.233666'),
(131, 1, '2022-08-31 16:22:09.053023'),
(132, 1, '2022-08-31 16:24:56.580693'),
(133, 1, '2022-08-31 16:26:17.578204'),
(134, 1, '2022-08-31 16:29:23.213753'),
(135, 1, '2022-08-31 16:33:19.439450'),
(136, 1, '2022-08-31 16:41:33.628015'),
(137, 1, '2022-08-31 16:45:28.752254'),
(138, 1, '2022-08-31 16:47:29.776831'),
(139, 1, '2022-08-31 17:07:49.756854'),
(140, 1, '2022-08-31 17:08:20.455352'),
(141, 1, '2022-08-31 17:08:57.654564'),
(142, 1, '2022-08-31 17:10:59.392875'),
(143, 1, '2022-08-31 17:21:07.236186'),
(144, 1, '2022-08-31 17:21:31.913811'),
(145, 1, '2022-08-31 17:21:46.577455'),
(146, 1, '2022-08-31 17:22:13.492732'),
(147, 1, '2022-08-31 17:22:46.359514'),
(148, 1, '2022-08-31 18:22:28.357468'),
(149, 1, '2022-08-31 20:17:36.060633'),
(150, 1, '2022-08-31 20:35:55.744510'),
(151, 1, '2022-08-31 21:52:24.046348'),
(152, 1, '2022-08-31 21:54:39.342002'),
(153, 1, '2022-08-31 21:57:25.013297'),
(154, 1, '2022-08-31 21:57:41.291755'),
(155, 1, '2022-08-31 22:21:06.182904'),
(156, 1, '2022-08-31 22:36:48.186647'),
(157, 1, '2022-08-31 22:41:47.463873'),
(158, 1, '2022-08-31 22:50:38.980590'),
(159, 1, '2022-08-31 22:51:18.329301'),
(160, 1, '2022-08-31 22:51:43.186214'),
(161, 1, '2022-08-31 22:52:36.586403'),
(162, 1, '2022-08-31 22:55:42.825201'),
(163, 1, '2022-08-31 22:56:08.073735'),
(164, 1, '2022-08-31 22:56:56.193292'),
(165, 1, '2022-08-31 23:29:33.723849'),
(166, 1, '2022-08-31 23:36:27.243555'),
(167, 1, '2022-08-31 23:37:28.352410'),
(168, 1, '2022-08-31 23:41:05.886060'),
(169, 1, '2022-08-31 23:41:24.105911'),
(170, 1, '2022-08-31 23:42:17.117414'),
(171, 1, '2022-08-31 23:44:33.777122'),
(172, 1, '2022-08-31 23:46:12.106420'),
(173, 1, '2022-09-01 00:29:14.494202'),
(174, 1, '2022-09-01 00:48:26.979495'),
(175, 1, '2022-09-01 00:54:26.416437'),
(176, 1, '2022-09-01 12:36:13.653965'),
(177, 1, '2022-09-01 12:37:25.433174'),
(178, 1, '2022-09-01 12:38:08.766838'),
(179, 1, '2022-09-01 12:39:22.415354'),
(180, 1, '2022-09-01 12:41:35.218344'),
(181, 1, '2022-09-01 12:42:52.833632'),
(182, 1, '2022-09-01 12:45:23.002743'),
(183, 1, '2022-09-01 12:49:12.368113'),
(184, 1, '2022-09-01 12:53:43.017895'),
(185, 1, '2022-09-01 12:57:59.620052'),
(186, 1, '2022-09-01 13:25:14.315936'),
(187, 1, '2022-09-01 13:29:22.997979'),
(188, 1, '2022-09-01 13:30:34.980479'),
(189, 1, '2022-09-01 13:32:09.445847'),
(190, 1, '2022-09-01 13:33:20.294597'),
(191, 1, '2022-09-01 13:34:50.631727'),
(192, 1, '2022-09-01 14:34:59.854503'),
(193, 1, '2022-09-01 14:36:06.937951'),
(194, 1, '2022-09-01 14:47:23.284908'),
(195, 1, '2022-09-01 14:48:12.372964'),
(196, 1, '2022-09-01 14:49:38.154698'),
(197, 1, '2022-09-01 14:53:55.912959'),
(198, 1, '2022-09-01 14:54:38.586273'),
(199, 1, '2022-09-01 14:57:50.563450'),
(200, 1, '2022-09-01 14:59:54.476188'),
(201, 1, '2022-09-01 15:31:35.659629');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historical_data`
--
ALTER TABLE `historical_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `historical_data`
--
ALTER TABLE `historical_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
