-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 05:46 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion_villa`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `contact_no`, `email_id`, `package`, `created_at`, `updated_at`) VALUES
(1, 'uhiuhuh', '9875454877', 'uihi@jhj.com', 'uiuiouio', NULL, NULL),
(2, 'gurmet singh', '465464646', 'manjit@gmail.com', 'mkajkhk', NULL, NULL),
(3, 'sarbjit singh', '9023360286', 'jimmy90233@gmail.com', NULL, NULL, NULL),
(4, 'Test', '7894561230', 'test@gmail.com', 'Test', NULL, NULL),
(5, 'harshdeep singh', '9646504845', 'none', NULL, NULL, NULL),
(6, 'balraj singh', '6280357828', 'none', 'hair cut', NULL, NULL),
(7, 'sukhchain sandhu', '7837888985', 'none', 'na', NULL, NULL),
(8, 'simran', '7814830975', 'none', NULL, NULL, NULL),
(9, 'rohit singla', '9530581620', 'na', NULL, NULL, NULL),
(10, 'rohit singla', '9530581620', 'na', NULL, NULL, NULL),
(11, 'rohit singla', '9530581620', 'none', 'na', NULL, NULL),
(12, 'harpreet singh', '8146084927', 'na', NULL, NULL, NULL),
(13, 'heera doraha', '7889051980', 'none', 'na', NULL, NULL),
(14, 'mirjan', '6280100592', 'na', 'na', NULL, NULL),
(15, 'mirjan', '6280100592', 'na', 'na', NULL, NULL),
(16, 'prince', '7973318107', 'none', 'na', NULL, NULL),
(17, 'harshdeep singh', '9464000174', 'none', 'na', NULL, NULL),
(18, 'forgien', '0000000', 'na', 'na', NULL, NULL),
(19, 'karan', '9988697955', 'na', 'na', NULL, NULL),
(20, 'jony', '7696701461', 'none', 'na', NULL, NULL),
(21, 'shivam bali', '7355120152', 'na', 'na', NULL, NULL),
(22, 'rahul jandali', '8968889531', 'na', 'na', NULL, NULL),
(23, 'shivang', '9780441742', 'na', 'na', NULL, NULL),
(24, 'varinder singh', '9914558608', 'na', 'na', NULL, NULL),
(25, 'sukhchain singh', '7719519718', 'na', 'na', NULL, NULL),
(26, 'noni libra', '8146346010', 'na', 'na', NULL, NULL),
(27, 'dimpi', '9023142419', 'none', 'na', NULL, NULL),
(28, 'anmol', '7528082038', 'na', NULL, NULL, NULL),
(29, 'gurpreet singh', '9878927680', 'na', 'na', NULL, NULL),
(30, 'gurpreet 2', '9878927680', 'none', 'na', NULL, NULL),
(31, 'dilpreet kaur', '9663121833', 'na', 'na', NULL, NULL),
(32, 'cheema', '9673200019', 'na', 'na', NULL, NULL),
(33, 'aman jasar', '9041502686', 'na', 'na', NULL, NULL),
(34, 'hardeep singh', '9630000047', 'na', 'na', NULL, NULL),
(35, 'karan', '9592200003', 'na', 'na', NULL, NULL),
(36, 'abhi singh', '9988161410', 'na', 'na', NULL, NULL),
(37, 'gajni', '9780210159', 'na', 'na', NULL, NULL),
(38, 'cid officer facial', '0000000', 'none', 'na', NULL, NULL),
(39, 'chintu', '9988226006', 'na', 'na', NULL, NULL),
(40, 'gurjot singh', '9855156309', 'na', 'na', NULL, NULL),
(41, 'ap', '9219292928', 'na', 'na', NULL, NULL),
(42, 'ap brother', '92192', 'na', 'na', NULL, NULL),
(43, 'ap', '0000000', 'na', 'na', NULL, NULL),
(44, 'ashu', '8054235020', 'none', 'na', NULL, NULL),
(45, 'vikram ldh', '8196000158', 'none', 'na', NULL, NULL),
(46, 'baljeet gill', '9815332505', 'none', 'na', NULL, NULL),
(47, 'robin', '9501121004', 'na', 'na', NULL, NULL),
(48, 'Himanshu', '9988787878', 'none', 'na', NULL, NULL),
(49, 'bhawla sarpanch', '9814940042', 'none', 'na', NULL, NULL),
(50, 'bhawla sarpanch', '9814940042', 'na', 'na', NULL, NULL),
(51, 'sahil seat', '9988424372', 'none', 'na', NULL, NULL),
(52, 'gurwinder singh', '9592829066', 'none', 'na', NULL, NULL),
(53, 'prabhjot kaur', '9815845944', 'na', 'na', NULL, NULL),
(54, 'varun', '9855904000', 'none', 'na', NULL, NULL),
(55, 'harpreet kaur', '8437333184', 'none', 'na', NULL, NULL),
(56, 'kulbeer', '6239373951', 'none', 'na', NULL, NULL),
(57, 'vikas', '7071300300', 'none', 'na', NULL, NULL),
(58, 'anchit', '8837771281', 'na', 'na', NULL, NULL),
(59, 'laddi', '0000000', 'none', 'na', NULL, NULL),
(60, 'kulwinder', '9915419054', 'none', 'na', NULL, NULL),
(61, 'auitej singh', '9915066454', 'none', 'na', NULL, NULL),
(62, 'gagan deep', '7769085023', 'none', 'na', NULL, NULL),
(63, 'harsh mankoo', '9417800031', 'none', NULL, NULL, NULL),
(64, 'gurpreet singh', '9855974014', 'none', 'na', NULL, NULL),
(65, 'unknwn', '0000000', 'none', 'na', NULL, NULL),
(66, 'ashveer', '8288901142', 'na', 'na', NULL, NULL),
(67, 'ekam', '8360052102', 'na', NULL, NULL, NULL),
(68, 'laddi mann', '8847585273', 'na', 'na', NULL, NULL),
(69, 'prince', '9780609313', 'na', 'na', NULL, NULL),
(70, 'amandeep kaur', '9492100084', 'none', 'na', NULL, NULL),
(71, 'gagan deep', '7769085023', 'na', 'na', NULL, NULL),
(72, 'harmanpreet singh', '7009877428', 'none', 'na', NULL, NULL),
(73, 'dhanpreet', '9878994128', 'na', 'na', NULL, NULL),
(74, 'love', '9780211080', 'none', 'na', NULL, NULL),
(75, 'sukhraj', '8437323223', 'na', 'na', NULL, NULL),
(76, 'rishab', '8686666605', 'na', 'na', NULL, NULL),
(77, 'manveer', '7009820491', 'na', 'na', NULL, NULL),
(78, 'butta', '0000000', 'none', 'na', NULL, NULL),
(79, 'param dhilon', '9814640789', 'na', 'na', NULL, NULL),
(80, 'jagveer singh', '9814398638', 'na', 'na', NULL, NULL),
(81, 'ajay', '8054024028', 'na', 'na', NULL, NULL),
(82, 'preet', '8146094787', 'na', 'na', NULL, NULL),
(83, 'pamm', '0000000', 'na', 'na', NULL, NULL),
(84, 'amit mobile', '7696149000', 'none', 'na', NULL, NULL),
(85, 'vicky', '9877811973', 'na', 'na', NULL, NULL),
(86, 'simer', '9872507900', 'none', 'na', NULL, NULL),
(87, 'Mani', '6284522911', 'Na', 'Na', NULL, NULL),
(88, 'Ravi singh', '8012280004', 'Na na', 'Na na', NULL, NULL),
(89, 'Sammy', '9915866425', 'Na', 'Na', NULL, NULL),
(90, 'Sammy', '9915866425', 'Na', 'Na', NULL, NULL),
(91, 'Gagan', '9877769695', 'No', 'Mo', NULL, NULL),
(92, 'shavan', '8196071605', 'none', 'na', NULL, NULL),
(93, 'himanshu', '9877582966', 'none', 'na', NULL, NULL),
(94, 'navneet singh', '7740061893', 'none', 'na', NULL, NULL),
(95, 'Divanshu', '9115681801', 'No', 'No', NULL, NULL),
(96, 'Divanshu', '9115681801', 'No', 'No', NULL, NULL),
(97, 'Divyanshu', '9837670077', 'No', 'No', NULL, NULL),
(98, 'sahil', '9877939260', 'none', 'na', NULL, NULL),
(99, 'sandeep', '9803319702', 'none', 'na', NULL, NULL),
(100, 'rahul', '8054628627', 'na', 'na', NULL, NULL),
(101, 'channi veera', '9779800004', 'na', NULL, NULL, NULL),
(102, 'bhawla sarpanch', '0000000', 'none', 'na', NULL, NULL),
(103, 'mani salana', '9780914306', 'na', 'na', NULL, NULL),
(104, 'sonu', '9803475111', 'na', NULL, NULL, NULL),
(105, 'parwinder singh', '7009123363', 'na', 'na', NULL, NULL),
(106, 'gurwinder singh', '9878347189', 'na', 'na', NULL, NULL),
(107, 'ramanpreet kaur', '9855161872', 'na', 'na', NULL, NULL),
(108, 'manjit', '7814855733', 'na', 'na', NULL, NULL),
(109, 'arun yogi', '9914330444', 'none', 'na', NULL, NULL),
(110, 'tattoo', '0000000', 'none', 'na', NULL, NULL),
(111, 'sanchit', '8847652552', 'none', 'na', NULL, NULL),
(112, 'sanchit', '8847652552', 'none', 'na', NULL, NULL),
(113, 'jassi', '7625946955', 'none', 'na', NULL, NULL),
(114, 'aryan', '7707875869', 'none', 'na', NULL, NULL),
(115, 'harry', '9417875475', 'none', 'na', NULL, NULL),
(116, 'rajnish', '8872511711', 'none', 'na', NULL, NULL),
(117, 'shubham', '6283389340', 'none', 'na', NULL, NULL),
(118, 'gulzar', '0000000', 'none', 'na', NULL, NULL),
(119, 'gulzar', '0000000', 'none', 'na', NULL, NULL),
(120, 'gurwinder', '9988101467', 'none', 'na', NULL, NULL),
(121, 'rajvir', '6280505133', 'none', 'na', NULL, NULL),
(122, 'ajay', '9988508478', 'none', 'na', NULL, NULL),
(123, 'gagan bhullar', '8199990008', 'none', 'na', NULL, NULL),
(124, 'jagraj', '9592200602', 'none', 'na', NULL, NULL),
(125, 'aman preet', '9814740063', 'none', 'na', NULL, NULL),
(126, 'kamal sidhu', '9646426820', 'none', NULL, NULL, NULL),
(127, 'hardeep singh', '9520606081', 'none', 'na', NULL, NULL),
(128, 'amritpal singh', '7301000808', 'none', 'na', NULL, NULL),
(129, 'Parteek', '8847627188', 'No', 'No', NULL, NULL),
(130, 'rajdeep singh chomo', '9501415921', 'none', 'na', NULL, NULL),
(131, 'rajdeep singh chomo', '9501415921', 'none', 'na', NULL, NULL),
(132, 'dharampreet singh', '7087675635', 'none', 'na', NULL, NULL),
(133, 'jasvir', '7837251257', 'none', 'na', NULL, NULL),
(134, 'gurwinder', '9877348271', 'none', 'na', NULL, NULL),
(135, 'sony', '8528576079', 'none', 'na', NULL, NULL),
(136, 'lovepreet', '8437195899', 'na', 'na', NULL, NULL),
(137, 'lovepreet', '8437195899', 'none', 'na', NULL, NULL),
(138, 'sarpanch', '9876764068', 'none', 'na', NULL, NULL),
(139, 'salana', '9878159100', 'na', NULL, NULL, NULL),
(140, 'salana', '0000000', 'none', 'na', NULL, NULL),
(141, 'harsh', '8146751391', 'na', 'na', NULL, NULL),
(142, 'priya sharma', '7973664303', 'na', 'na', NULL, NULL),
(143, 'traunam', '8566955600', 'na', 'na', NULL, NULL),
(144, 'kiran', '9781940927', 'na', 'na', NULL, NULL),
(145, 'yash', '8728975541', 'na', 'na', NULL, NULL),
(146, 'navdeep singh', '7009929411', 'none', 'na', NULL, NULL),
(147, 'karan virk', '7589147017', 'none', 'na', NULL, NULL),
(148, 'karan', '7009571347', 'none', 'na', NULL, NULL),
(149, 'prince', '9888445573', 'none', 'na', NULL, NULL),
(150, 'arsh', '9517423305', 'none', 'na', NULL, NULL),
(151, 'bhavit', '9041306000', 'none', 'na', NULL, NULL),
(152, 'Gupta', '0000000', 'None', 'No', NULL, NULL),
(153, 'Gupta 2', '00000', 'No', 'No', NULL, NULL),
(154, 'Gaurav', '9780210788', 'No', 'No', NULL, NULL),
(155, 'Akash', '9302820009', 'No', NULL, NULL, NULL),
(156, 'Gurpreet', '000000', 'No', 'No', NULL, NULL),
(157, 'Jashanpreet', '9501986291', 'No', 'No', NULL, NULL),
(158, 'Sachdev', '9855485949', 'Na', 'Na', NULL, NULL),
(159, 'jagga', '7355636691', 'none', 'na', NULL, NULL),
(160, 'Piyush', '9988332080', 'No', 'No', NULL, NULL),
(161, 'No', 'No', 'No', NULL, NULL, NULL),
(162, 'No', '00000', 'No', 'No', NULL, NULL),
(163, 'bhavit', '9041306000', 'none', 'na', NULL, NULL),
(164, 'sumit', '9780630209', 'none', 'na', NULL, NULL),
(165, 'sumit', '9780630209', 'none', 'na', NULL, NULL),
(166, 'sumit', '9780630209', 'none', 'na', NULL, NULL),
(167, 'aman', '8847762188', 'none', 'na', NULL, NULL),
(168, 'arsh', '9872458610', 'none', 'na', NULL, NULL),
(169, 'gursewak', '8264723997', 'na', 'na', NULL, NULL),
(170, 'yogesh', '6239427359', 'na', 'na', NULL, NULL),
(171, 'sukhchain sandhu', '7837888985', 'none', 'na', NULL, NULL),
(172, 'bajwa', '0000000', 'none', NULL, NULL, NULL),
(173, 'money', '7901930819', 'na', NULL, NULL, NULL),
(174, 'test', '0000000', 'none', NULL, NULL, NULL),
(175, 'arshpreet singh', '8968689887', 'na', 'na', NULL, NULL),
(176, 'amandeep singh', '7087916606', 'na', 'na', NULL, NULL),
(177, 'chandan', '8847561747', 'none', 'na', NULL, NULL),
(178, 'deepak', '8847561747', 'none', 'na', NULL, NULL),
(179, 'inderdeep', '9700011013', 'na', 'na', NULL, NULL),
(180, 'sonu', '9815149971', 'na', 'na', NULL, NULL),
(181, 'pardeep sekhon', '9592511931', 'none', 'na', NULL, NULL),
(182, 'raman', '97779117914', 'na', 'na', NULL, NULL),
(183, 'babbu', '6283232019', 'na', 'na', NULL, NULL),
(184, 'sehajdeep singh', '9878222274', 'none', 'na', NULL, NULL),
(185, 'huny', '8751000044', 'na', 'na', NULL, NULL),
(186, 'tilak', '0000000', 'none', 'na', NULL, NULL),
(187, 'rahul', '8285380006', 'none', 'na', NULL, NULL),
(188, 'aman', '8528166146', 'none', 'na', NULL, NULL),
(189, 'prince', '9915582442', 'none', 'na', NULL, NULL),
(190, 'unkwn', '0000000', 'none', 'na', NULL, NULL),
(191, 'Rahul', '8437490911', 'No', 'No', NULL, NULL),
(192, 'Sanveer', '8146497197', 'No', 'No', NULL, NULL),
(193, 'Raninder', '9988342283', 'No', 'No', NULL, NULL),
(194, 'Aniket', '9915950633', 'No', 'No', NULL, NULL),
(195, 'Unknwn', '00000', 'No', 'No', NULL, NULL),
(196, 'Pushi', '000000', 'No', 'No', NULL, NULL),
(197, 'Navjot', '9877579573', 'No', 'No', NULL, NULL),
(198, 'Mehak', '9878186327', 'No', 'No', NULL, NULL),
(199, 'Priyanka', '6284953277', 'No', 'No', NULL, NULL),
(200, 'raj', '8968584220', 'none', 'na', NULL, NULL),
(201, 'mani', '8837828037', 'na', 'na', NULL, NULL),
(202, 'saru', '0000000', 'none', 'na', NULL, NULL),
(203, 'sam', '0000000', 'none', 'na', NULL, NULL),
(204, 'harsimran', '8566070006', 'none', 'na', NULL, NULL),
(205, 'harsimran', '8566070006', 'none', 'na', NULL, NULL),
(206, 'deep shergill', '6280229529', 'none', 'na', NULL, NULL),
(207, 'rishab', '9910513252', 'none', 'na', NULL, NULL),
(208, 'cheema', '9673200019', 'none', 'na', NULL, NULL),
(209, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(210, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(211, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(212, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(213, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(214, 'anmol', '9877686044', 'none', 'na', NULL, NULL),
(215, 'pushi', '9090000015', 'none', 'na', NULL, NULL),
(216, 'manveer singh', '8306060002', 'none', 'na', NULL, NULL),
(217, 'sahil', '9870632448', 'none', 'na', NULL, NULL),
(218, 'test', '8437874844', 'na', 'na', NULL, NULL),
(219, 'xyz', '0000', 'gggg', 'gg', NULL, NULL),
(220, 'kulwinder Singh', '7837587909', 'none', 'na', NULL, NULL),
(221, 'kulwinder Singh', '7837587909', 'none', 'na', NULL, NULL),
(222, 'kulwinder Singh', '7837587907', 'none', 'na', NULL, NULL),
(223, 'kulwinder Singh', '7837587907', 'none', NULL, NULL, NULL),
(224, 'Lovepreet Singh', '8427811732', 'none', 'na', NULL, NULL),
(225, 'Suraj Patel', '9877887355', 'none', 'na', NULL, NULL),
(226, 'Raman Brother', '9855905265', 'none', 'na', NULL, NULL),
(227, 'Raman', '9855905265', 'none', 'na', NULL, NULL),
(228, 'manik', '8360776610', 'none', 'na', NULL, NULL),
(229, 'Gurpal Kaur', '9464371881', 'none', 'na', NULL, NULL),
(230, 'Sukhman Singh', '9877707717', 'none', 'na', NULL, NULL),
(231, 'Sukhman Singh', '9877707717', 'none', 'na', NULL, NULL),
(232, 'Sukhman Singh', '9877707717', 'none', NULL, NULL, NULL),
(233, 'Vikas', '9682384240', 'none', 'na', NULL, NULL),
(234, 'Shivam Bedi', '7677600009', 'none', 'na', NULL, NULL),
(235, 'deep', '9988807676', 'none', 'na', NULL, NULL),
(236, 'lalli veera', '9878700027', 'none', 'na', NULL, NULL),
(237, 'test', '0000000', 'na', 'na', NULL, NULL),
(238, 'kamaljeet', '0000000', 'na', 'na', NULL, NULL),
(239, 'shivam bali', '7355120152', 'na', 'na', NULL, NULL),
(240, 'bhawla sarpanch', '0000000', 'none', NULL, NULL, NULL),
(241, 'ssss', '0000000', 'none', NULL, NULL, NULL),
(242, 'mirjaan', '6280100592', 'none', 'na', NULL, NULL),
(243, 'Gurjit Singh', '7889066976', 'none', 'none', NULL, NULL),
(244, 'Kulwinder Singh', '9780001415', 'none', 'none', NULL, NULL),
(245, 'Vicky', '9988104810', 'none', 'none', NULL, NULL),
(246, 'Harjit Kaur', '7837684770', 'none', 'none', NULL, NULL),
(247, 'shubham', '9780000172', 'none', NULL, NULL, NULL),
(248, 'aditya', '798053270', 'none', 'na', NULL, NULL),
(249, 'naveen', '9780600571', 'none', 'na', NULL, NULL),
(250, 'Sahil', '9914605407', 'No', 'No', NULL, NULL),
(251, 'Dhruv', '9877933785', 'No', 'No', NULL, NULL),
(252, 'Test', '000', 'No', 'No', NULL, NULL),
(253, 'No', '0000', 'No', 'No', NULL, NULL),
(254, 'Varun', '7888457583', 'No', 'No', NULL, NULL),
(255, 'Dhruv', '9877933785', 'No', 'No', NULL, NULL),
(256, 'Hitash', '72220000592', 'No', 'No', NULL, NULL),
(257, 'Aman', '9041502688', 'No', 'No', NULL, NULL),
(258, 'Gurdeep', '9814541819', 'No', 'No', NULL, NULL),
(259, 'Bhangu', '9501298776', 'No', 'No', NULL, NULL),
(260, 'Bharti global', '9988800451', 'No', 'No', NULL, NULL),
(261, 'Raman', '9815400348', 'No', 'No', NULL, NULL),
(262, 'Paras', '8360637132', 'No', 'No', NULL, NULL),
(263, 'Pampi', 'Boprai', 'No', 'No', NULL, NULL),
(264, 'aheema', '8978942231', 'none', 'na', NULL, NULL),
(265, 'aheema', '8978942231', 'none', 'na', NULL, NULL),
(266, 'RUBAL', '9872554841', 'none', 'na', NULL, NULL),
(267, 'shanu', '9988621144', 'none', 'na', NULL, NULL),
(268, 'Charanpreet', '8427083838', 'No', 'No', NULL, NULL),
(269, 'Gurtej Singh', '9877373659', 'No', 'No', NULL, NULL),
(270, 'Sahil', '0000', 'No', 'No', NULL, NULL),
(271, 'Sahil kumar', '000000', 'No', 'No', NULL, NULL),
(272, 'Jatin', '8837609765', 'No', 'No', NULL, NULL),
(273, 'Robin verma', '+91 98783 68300', 'No', 'No', NULL, NULL),
(274, 'Jatin friend', '000000', '200', 'No', NULL, NULL),
(275, 'Ankur', '9501234164', 'No', 'No', NULL, NULL),
(276, 'Harveer singh', '9915425500', 'No', 'No', NULL, NULL),
(277, 'Pargat Singh', '9417962457', 'No', 'No', NULL, NULL),
(278, 'Ammy Mann', '8264537371', 'No', 'No', NULL, NULL),
(279, 'Pawan', '9781755096', 'No', 'No', NULL, NULL),
(280, 'Demo', '0000', 'No', 'No', NULL, NULL),
(281, 'Arshdeep Singh', '9517423305', 'No', 'No', NULL, NULL),
(282, 'Navneet Singh', '7740061893', 'No', 'No', NULL, NULL),
(283, 'Jagga', '7837648654', 'No', 'No', NULL, NULL),
(284, 'Arshdeep Singh', '9517423305', 'No', 'No', NULL, NULL),
(285, 'Nittu', '000000', 'No', 'No', NULL, NULL),
(286, 'Kulbir Gill', '7719743332', 'No', 'No', NULL, NULL),
(287, 'Jasman Singh', '8739000200', 'No', 'No', NULL, NULL),
(288, 'Guri', '000', 'No', 'No', NULL, NULL),
(289, 'Amrit', '0000', 'No', 'No', NULL, NULL),
(290, 'amritpal singh', '0000000', 'none', 'na', NULL, NULL),
(291, 'test', '0000000', 'na', 'na', NULL, NULL),
(292, 'tattoo', '0000000', 'none', 'na', NULL, NULL),
(293, 'Harsh', '000', 'No', 'No', NULL, NULL),
(294, 'Hitesh', '7220000592', 'No', 'No', NULL, NULL),
(295, 'Jas Han Singh', '9463838989', 'No', 'No', NULL, NULL),
(296, 'Harpreet kaur', '9877598275', 'No', 'No', NULL, NULL),
(297, 'Ramandeep Singh', '6239178651', 'No', 'No', NULL, NULL),
(298, 'Ranjodh singh', '98149000834', 'No', 'No', NULL, NULL),
(299, 'Ashish', '7814871970', 'No', 'No', NULL, NULL),
(300, 'Manjot Singh', '6239383228', 'No', 'No', NULL, NULL),
(301, 'Manjot’s friend', '0000', 'No', 'No', NULL, NULL),
(302, 'Amrit', '9877441090', 'No', 'No', NULL, NULL),
(303, 'Test', '0000', 'No', 'No', NULL, NULL),
(304, 'Test', '0000', 'No', 'No', NULL, NULL),
(305, 'Manjot Singh', '8427440895', 'No', 'No', NULL, NULL),
(306, 'Dilpreet Singh', '7814489140', 'No', 'No', NULL, NULL),
(307, 'Harsh Singh', '0000', 'No', 'No', NULL, NULL),
(308, 'Tajveer Singh', '7009833962', 'No', 'No', NULL, NULL),
(309, 'Raman', '0000', 'No', 'No', NULL, NULL),
(310, 'Amrinder', '8968602200', 'No', 'No', NULL, NULL),
(311, 'Ricky', '9988320811', 'No', 'No', NULL, NULL),
(312, 'Gagan', '7889138371', 'No', 'No', NULL, NULL),
(313, 'Jassu', '9914348511', 'No', 'No', NULL, NULL),
(314, 'Amrinder Singh', '0000', 'No', 'No', NULL, NULL),
(315, 'mahinder singh', '68764544545', 'jhj@jhhj.com', 'uhhku', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `contact_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `birth_date`, `contact_no`, `photo`, `designation`, `salary_type`, `salary`, `created_at`, `updated_at`) VALUES
(4, 'shiv kumar', '1999-02-14', '9653540234', NULL, 'hair stylist', 'commission', 25.00, '2020-02-24 06:44:37', '2020-02-24 06:44:37'),
(5, 'vikas mattu', '1999-01-01', '7009145691', NULL, 'hair stylist', 'commission', 20.00, '2020-02-24 06:46:25', '2020-02-24 06:46:25'),
(6, 'manjot singh', '2000-10-04', '9915805009', NULL, 'helper', 'salary', 3000.00, '2020-02-24 07:10:03', '2020-02-24 07:10:03'),
(7, 'sandeep kumar', '1985-11-15', '9888999350', NULL, 'owner', 'salary', 50000.00, '2020-02-24 07:19:45', '2020-02-24 07:19:45'),
(8, 'aslam mohammad', '1995-09-12', '6280794484', NULL, 'hair stylist', 'commission', 20.00, '2020-02-24 07:36:37', '2020-02-24 07:36:37'),
(9, 'kuldeep singh', '1993-05-27', '8872838751', NULL, 'hair stylist', 'commission', 30.00, '2020-02-24 07:43:14', '2020-02-24 07:43:14'),
(10, 'Vijay khanna', '1998-06-26', '9914923119', NULL, 'Gents Hairdresser', 'commission', 30.00, '2020-02-24 08:27:11', '2020-02-24 08:27:11'),
(11, 'kamal sharma', '1994-10-18', '9888986870', NULL, 'ladies hair dresser', 'salary', 8000.00, '2020-02-24 08:29:09', '2020-02-24 08:29:09'),
(12, 'gurpreet tattoo artist', '1985-10-16', '8437935229', NULL, 'tattoo artist', 'salary', 10000.00, '2020-02-24 08:38:12', '2020-02-24 08:38:12'),
(13, 'Bharty', '1995-12-24', '9988938970', NULL, 'makeup artist ,hair stylist n beautician', 'salary', 7000.00, '2020-02-24 11:41:56', '2020-02-24 11:41:56'),
(14, 'lally hair expert', '1998-09-18', '9915274652', NULL, 'hair stylist', 'salary', 5000.00, '2020-02-24 11:47:03', '2020-02-24 11:47:53'),
(15, 'amarjeet singh', '2000-10-03', '8054990805', NULL, 'helper', 'salary', 2000.00, '2020-02-25 06:48:36', '2020-02-25 06:48:36'),
(16, 'akash kumar', '1997-03-20', '7889061567', NULL, 'hair stylist', 'salary', 3000.00, '2020-03-04 05:03:10', '2020-03-04 05:03:10'),
(17, 'suman', '1997-09-09', '8437954683', NULL, 'skin expert', 'salary', 5000.00, '2020-03-04 05:07:25', '2020-03-04 05:07:25');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_description`, `item_enable`, `created_at`, `updated_at`) VALUES
(2, 'Manicure Kit', 1050.00, 'uh ieuhr ekj', 1, '2020-02-04 07:55:09', '2020-02-04 07:55:09'),
(3, 'test', 123.00, 'flemwg', 1, '2020-02-22 10:24:09', '2020-02-22 10:24:09'),
(4, 'Hair Spa Cream', 50.00, '', 1, '2020-02-22 11:24:27', '2020-02-22 11:24:27'),
(5, 'Donut  big', 150.00, '12', 1, '2020-02-24 09:16:43', '2020-02-24 09:16:43'),
(6, 'Donut  small', 150.00, '12', 1, '2020-02-24 09:17:35', '2020-02-24 09:17:35'),
(7, 'wax oil', 150.00, '1', 1, '2020-02-24 09:18:05', '2020-02-24 09:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `material_details`
--

CREATE TABLE `material_details` (
  `material_detail_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity_used` double(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_details`
--

INSERT INTO `material_details` (`material_detail_id`, `transaction_id`, `item_id`, `quantity_used`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 2.00, NULL, NULL),
(3, 1, 2, 2.00, NULL, NULL),
(4, 1, 2, 10.00, NULL, NULL),
(13, 3, 2, 0.00, NULL, NULL),
(14, 4, 3, 10.00, NULL, NULL),
(15, 5, 3, 0.00, NULL, NULL),
(16, 6, 2, 0.00, NULL, NULL),
(17, 7, 2, 0.00, NULL, NULL),
(18, 8, 3, 0.00, NULL, NULL),
(21, 11, 2, 0.00, NULL, NULL),
(22, 12, 2, 0.00, NULL, NULL),
(23, 13, 3, 0.00, NULL, NULL),
(24, 14, 2, 0.00, NULL, NULL),
(26, 16, 2, 0.00, NULL, NULL),
(27, 17, 2, 0.00, NULL, NULL),
(28, 18, 2, 0.00, NULL, NULL),
(29, 19, 2, 0.00, NULL, NULL),
(30, 20, 2, 0.00, NULL, NULL),
(31, 21, 2, 0.00, NULL, NULL),
(32, 22, 2, 0.00, NULL, NULL),
(33, 23, 2, 0.00, NULL, NULL),
(34, 24, 2, 0.00, NULL, NULL),
(35, 25, 2, 0.00, NULL, NULL),
(36, 26, 2, 0.00, NULL, NULL),
(37, 27, 2, 0.00, NULL, NULL),
(39, 29, 2, 0.00, NULL, NULL),
(40, 30, 2, 0.00, NULL, NULL),
(41, 31, 2, 0.00, NULL, NULL),
(42, 32, 2, 0.00, NULL, NULL),
(43, 33, 2, 0.00, NULL, NULL),
(44, 34, 2, 0.00, NULL, NULL),
(45, 35, 2, 0.00, NULL, NULL),
(46, 36, 2, 0.00, NULL, NULL),
(47, 37, 2, 0.00, NULL, NULL),
(48, 38, 2, 0.00, NULL, NULL),
(49, 39, 2, 0.00, NULL, NULL),
(50, 40, 2, 0.00, NULL, NULL),
(51, 41, 2, 0.00, NULL, NULL),
(52, 42, 2, 0.00, NULL, NULL),
(53, 43, 2, 0.00, NULL, NULL),
(54, 44, 2, 0.00, NULL, NULL),
(55, 45, 2, 0.00, NULL, NULL),
(56, 46, 2, 0.00, NULL, NULL),
(57, 47, 2, 0.00, NULL, NULL),
(58, 48, 2, 0.00, NULL, NULL),
(59, 49, 2, 0.00, NULL, NULL),
(60, 50, 2, 0.00, NULL, NULL),
(61, 51, 2, 0.00, NULL, NULL),
(62, 52, 2, 0.00, NULL, NULL),
(63, 53, 2, 0.00, NULL, NULL),
(64, 54, 2, 0.00, NULL, NULL),
(65, 55, 2, 0.00, NULL, NULL),
(66, 56, 2, 0.00, NULL, NULL),
(67, 57, 2, 0.00, NULL, NULL),
(68, 58, 2, 0.00, NULL, NULL),
(69, 59, 2, 0.00, NULL, NULL),
(70, 60, 2, 0.00, NULL, NULL),
(71, 61, 2, 0.00, NULL, NULL),
(73, 62, 2, 0.00, NULL, NULL),
(74, 63, 2, 0.00, NULL, NULL),
(75, 64, 2, 0.00, NULL, NULL),
(76, 65, 2, 0.00, NULL, NULL),
(77, 66, 2, 0.00, NULL, NULL),
(78, 67, 2, 0.00, NULL, NULL),
(79, 68, 2, 0.00, NULL, NULL),
(80, 69, 2, 0.00, NULL, NULL),
(81, 70, 2, 0.00, NULL, NULL),
(82, 71, 2, 0.00, NULL, NULL),
(83, 72, 2, 0.00, NULL, NULL),
(84, 73, 2, 0.00, NULL, NULL),
(85, 74, 2, 0.00, NULL, NULL),
(86, 75, 2, 0.00, NULL, NULL),
(87, 76, 2, 0.00, NULL, NULL),
(88, 77, 2, 0.00, NULL, NULL),
(89, 78, 2, 0.00, NULL, NULL),
(90, 79, 2, 0.00, NULL, NULL),
(91, 80, 2, 0.00, NULL, NULL),
(92, 81, 2, 0.00, NULL, NULL),
(93, 82, 2, 0.00, NULL, NULL),
(94, 83, 2, 0.00, NULL, NULL),
(95, 84, 2, 0.00, NULL, NULL),
(96, 85, 2, 0.00, NULL, NULL),
(97, 86, 2, 0.00, NULL, NULL),
(98, 87, 2, 0.00, NULL, NULL),
(99, 88, 2, 0.00, NULL, NULL),
(100, 89, 2, 0.00, NULL, NULL),
(101, 90, 2, 0.00, NULL, NULL),
(102, 91, 2, 0.00, NULL, NULL),
(103, 92, 2, 0.00, NULL, NULL),
(104, 93, 2, 0.00, NULL, NULL),
(105, 94, 2, 0.00, NULL, NULL),
(107, 96, 2, 0.00, NULL, NULL),
(108, 97, 2, 0.00, NULL, NULL),
(109, 98, 2, 0.00, NULL, NULL),
(110, 99, 2, 0.00, NULL, NULL),
(111, 100, 3, 0.00, NULL, NULL),
(112, 101, 2, 0.00, NULL, NULL),
(113, 102, 2, 0.00, NULL, NULL),
(114, 103, 2, 0.00, NULL, NULL),
(115, 104, 2, 0.00, NULL, NULL),
(116, 105, 2, 0.00, NULL, NULL),
(117, 106, 2, 0.00, NULL, NULL),
(118, 107, 2, 0.00, NULL, NULL),
(119, 108, 2, 0.00, NULL, NULL),
(120, 109, 2, 0.00, NULL, NULL),
(121, 110, 2, 0.00, NULL, NULL),
(122, 111, 3, 0.00, NULL, NULL),
(123, 112, 2, 0.00, NULL, NULL),
(124, 113, 3, 0.00, NULL, NULL),
(125, 114, 2, 0.00, NULL, NULL),
(126, 115, 2, 0.00, NULL, NULL),
(127, 116, 2, 0.00, NULL, NULL),
(128, 117, 2, 0.00, NULL, NULL),
(129, 118, 2, 0.00, NULL, NULL),
(130, 119, 2, 0.00, NULL, NULL),
(131, 120, 2, 0.00, NULL, NULL),
(132, 121, 2, 0.00, NULL, NULL),
(133, 122, 2, 0.00, NULL, NULL),
(134, 123, 2, 0.00, NULL, NULL),
(135, 124, 2, 0.00, NULL, NULL),
(137, 126, 2, 0.00, NULL, NULL),
(138, 125, 2, 0.00, NULL, NULL),
(139, 127, 2, 0.00, NULL, NULL),
(140, 128, 2, 0.00, NULL, NULL),
(141, 129, 2, 0.00, NULL, NULL),
(142, 130, 2, 0.00, NULL, NULL),
(143, 131, 2, 0.00, NULL, NULL),
(144, 132, 2, 0.00, NULL, NULL),
(145, 133, 2, 0.00, NULL, NULL),
(146, 134, 2, 0.00, NULL, NULL),
(147, 135, 2, 0.00, NULL, NULL),
(148, 136, 2, 0.00, NULL, NULL),
(149, 137, 2, 0.00, NULL, NULL),
(150, 138, 2, 0.00, NULL, NULL),
(151, 139, 2, 0.00, NULL, NULL),
(152, 140, 2, 0.00, NULL, NULL),
(153, 141, 2, 0.00, NULL, NULL),
(154, 142, 2, 0.00, NULL, NULL),
(155, 143, 2, 0.00, NULL, NULL),
(156, 144, 2, 0.00, NULL, NULL),
(157, 145, 2, 0.00, NULL, NULL),
(158, 146, 2, 0.00, NULL, NULL),
(159, 147, 2, 0.00, NULL, NULL),
(160, 148, 2, 0.00, NULL, NULL),
(161, 149, 2, 0.00, NULL, NULL),
(162, 150, 2, 0.00, NULL, NULL),
(163, 151, 2, 0.00, NULL, NULL),
(164, 152, 2, 0.00, NULL, NULL),
(165, 153, 2, 0.00, NULL, NULL),
(167, 154, 2, 0.00, NULL, NULL),
(168, 155, 2, 0.00, NULL, NULL),
(169, 156, 2, 0.00, NULL, NULL),
(170, 157, 2, 0.00, NULL, NULL),
(171, 158, 2, 0.00, NULL, NULL),
(172, 159, 2, 0.00, NULL, NULL),
(173, 160, 2, 0.00, NULL, NULL),
(174, 161, 2, 0.00, NULL, NULL),
(175, 162, 2, 0.00, NULL, NULL),
(176, 163, 2, 0.00, NULL, NULL),
(178, 165, 2, 0.00, NULL, NULL),
(179, 166, 2, 0.00, NULL, NULL),
(180, 167, 2, 0.00, NULL, NULL),
(181, 168, 2, 0.00, NULL, NULL),
(182, 169, 2, 0.00, NULL, NULL),
(183, 170, 2, 0.00, NULL, NULL),
(185, 171, 2, 0.00, NULL, NULL),
(186, 172, 2, 0.00, NULL, NULL),
(187, 173, 2, 0.00, NULL, NULL),
(188, 174, 2, 0.00, NULL, NULL),
(189, 175, 2, 0.00, NULL, NULL),
(190, 176, 2, 0.00, NULL, NULL),
(191, 177, 2, 0.00, NULL, NULL),
(192, 178, 2, 0.00, NULL, NULL),
(193, 179, 2, 0.00, NULL, NULL),
(194, 180, 2, 0.00, NULL, NULL),
(195, 181, 2, 0.00, NULL, NULL),
(196, 182, 2, 0.00, NULL, NULL),
(197, 183, 2, 0.00, NULL, NULL),
(198, 184, 2, 0.00, NULL, NULL),
(199, 185, 2, 0.00, NULL, NULL),
(200, 186, 2, 0.00, NULL, NULL),
(201, 187, 2, 0.00, NULL, NULL),
(202, 188, 2, 0.00, NULL, NULL),
(203, 189, 2, 0.00, NULL, NULL),
(204, 190, 2, 0.00, NULL, NULL),
(205, 191, 2, 0.00, NULL, NULL),
(206, 192, 2, 0.00, NULL, NULL),
(207, 193, 2, 0.00, NULL, NULL),
(208, 194, 2, 0.00, NULL, NULL),
(209, 195, 2, 0.00, NULL, NULL),
(210, 196, 2, 0.00, NULL, NULL),
(211, 197, 2, 0.00, NULL, NULL),
(212, 198, 2, 0.00, NULL, NULL),
(213, 199, 2, 0.00, NULL, NULL),
(214, 200, 2, 0.00, NULL, NULL),
(215, 201, 2, 0.00, NULL, NULL),
(216, 202, 2, 0.00, NULL, NULL),
(217, 203, 2, 0.00, NULL, NULL),
(218, 204, 2, 0.00, NULL, NULL),
(219, 205, 2, 0.00, NULL, NULL),
(220, 206, 2, 0.00, NULL, NULL),
(221, 207, 2, 0.00, NULL, NULL),
(222, 208, 2, 0.00, NULL, NULL),
(223, 209, 2, 0.00, NULL, NULL),
(224, 210, 2, 0.00, NULL, NULL),
(225, 211, 2, 0.00, NULL, NULL),
(226, 212, 2, 0.00, NULL, NULL),
(228, 28, 2, 0.00, NULL, NULL),
(229, 214, 2, 0.00, NULL, NULL),
(230, 215, 2, 0.00, NULL, NULL),
(231, 216, 2, 0.00, NULL, NULL),
(232, 217, 2, 0.00, NULL, NULL),
(233, 218, 2, 0.00, NULL, NULL),
(234, 219, 2, 0.00, NULL, NULL),
(235, 220, 2, 0.00, NULL, NULL),
(236, 221, 2, 0.00, NULL, NULL),
(237, 222, 2, 0.00, NULL, NULL),
(238, 223, 2, 0.00, NULL, NULL),
(239, 224, 2, 0.00, NULL, NULL),
(240, 225, 2, 0.00, NULL, NULL),
(241, 226, 2, 0.00, NULL, NULL),
(242, 227, 2, 0.00, NULL, NULL),
(243, 228, 2, 0.00, NULL, NULL),
(244, 229, 2, 0.00, NULL, NULL),
(245, 230, 2, 0.00, NULL, NULL),
(247, 232, 2, 0.00, NULL, NULL),
(248, 233, 2, 0.00, NULL, NULL),
(249, 234, 2, 0.00, NULL, NULL),
(250, 235, 2, 0.00, NULL, NULL),
(251, 236, 2, 0.00, NULL, NULL),
(252, 237, 2, 0.00, NULL, NULL),
(254, 238, 2, 0.00, NULL, NULL),
(255, 231, 2, 0.00, NULL, NULL),
(256, 239, 2, 0.00, NULL, NULL),
(257, 240, 2, 0.00, NULL, NULL),
(258, 241, 2, 0.00, NULL, NULL),
(259, 242, 2, 0.00, NULL, NULL),
(260, 243, 2, 0.00, NULL, NULL),
(261, 244, 2, 0.00, NULL, NULL),
(262, 245, 2, 0.00, NULL, NULL),
(263, 246, 2, 0.00, NULL, NULL),
(264, 247, 2, 0.00, NULL, NULL),
(265, 248, 2, 0.00, NULL, NULL),
(266, 249, 2, 0.00, NULL, NULL),
(267, 250, 2, 0.00, NULL, NULL),
(268, 251, 2, 0.00, NULL, NULL),
(270, 252, 2, 0.00, NULL, NULL),
(271, 253, 2, 0.00, NULL, NULL),
(272, 254, 2, 0.00, NULL, NULL),
(273, 255, 2, 0.00, NULL, NULL),
(274, 256, 2, 0.00, NULL, NULL),
(275, 257, 2, 0.00, NULL, NULL),
(276, 258, 2, 0.00, NULL, NULL),
(277, 259, 2, 0.00, NULL, NULL),
(278, 260, 2, 0.00, NULL, NULL),
(279, 261, 2, 0.00, NULL, NULL),
(280, 262, 2, 0.00, NULL, NULL),
(281, 263, 2, 0.00, NULL, NULL),
(282, 264, 2, 0.00, NULL, NULL),
(283, 265, 2, 0.00, NULL, NULL),
(284, 266, 2, 0.00, NULL, NULL),
(285, 267, 2, 0.00, NULL, NULL),
(286, 268, 2, 0.00, NULL, NULL),
(287, 269, 2, 0.00, NULL, NULL),
(288, 270, 2, 0.00, NULL, NULL),
(289, 271, 2, 0.00, NULL, NULL),
(290, 272, 2, 0.00, NULL, NULL),
(291, 273, 2, 0.00, NULL, NULL),
(292, 274, 2, 0.00, NULL, NULL),
(294, 276, 2, 0.00, NULL, NULL),
(295, 277, 2, 0.00, NULL, NULL),
(296, 278, 2, 0.00, NULL, NULL),
(297, 279, 2, 0.00, NULL, NULL),
(298, 280, 2, 0.00, NULL, NULL),
(299, 281, 2, 0.00, NULL, NULL),
(300, 282, 2, 0.00, NULL, NULL),
(301, 283, 2, 0.00, NULL, NULL),
(302, 284, 2, 0.00, NULL, NULL),
(303, 285, 2, 0.00, NULL, NULL),
(304, 286, 2, 0.00, NULL, NULL),
(305, 287, 2, 0.00, NULL, NULL),
(306, 288, 2, 0.00, NULL, NULL),
(307, 289, 2, 0.00, NULL, NULL),
(308, 290, 2, 0.00, NULL, NULL),
(309, 291, 2, 0.00, NULL, NULL),
(310, 292, 2, 0.00, NULL, NULL),
(311, 293, 2, 0.00, NULL, NULL),
(312, 294, 2, 0.00, NULL, NULL),
(313, 295, 2, 0.00, NULL, NULL),
(314, 296, 2, 0.00, NULL, NULL),
(315, 297, 2, 0.00, NULL, NULL),
(316, 298, 2, 0.00, NULL, NULL),
(317, 299, 2, 0.00, NULL, NULL),
(318, 300, 2, 0.00, NULL, NULL),
(319, 301, 2, 0.00, NULL, NULL),
(320, 302, 2, 0.00, NULL, NULL),
(321, 303, 2, 0.00, NULL, NULL),
(322, 304, 2, 0.00, NULL, NULL),
(324, 306, 6, 15.00, NULL, NULL),
(325, 307, 7, 15.00, NULL, NULL);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2020_01_31_154246_create_service_table', 3),
(5, '2020_02_02_125505_create_service_categories_table', 4),
(6, '2020_02_03_113711_create_services_table', 5),
(7, '2020_02_03_164518_create_services_table', 6),
(8, '2020_02_04_125129_create_items_table', 7),
(9, '2020_02_04_133613_create_employees_table', 8),
(10, '2020_02_13_120901_create_customers_table', 9),
(11, '2020_02_13_121001_create_transactions_table', 9),
(12, '2020_02_13_161928_create_material_details_table', 10),
(13, '2020_02_13_162448_create_service_details_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `charges` double NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `service_enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_description`, `charges`, `category_id`, `service_enable`, `created_at`, `updated_at`) VALUES
(1, 'spa', 'hair spa ladies', 1000, 4, 1, '2020-02-03 11:22:20', '2020-02-24 08:44:00'),
(2, 'gents spa', 'hair spa gents', 500, 4, 1, '2020-02-04 06:24:48', '2020-02-24 08:47:29'),
(3, 'hair texture', 'acc to lenght (4000-7000)', 4000, 4, 1, '2020-02-04 06:31:26', '2020-02-24 08:48:58'),
(4, 'hair cut', 'hair cut gents', 100, 4, 1, '2020-02-04 06:32:28', '2020-02-24 08:45:16'),
(5, 'hair cut ladies', 'hair cut ladies', 400, 4, 1, '2020-02-04 06:32:41', '2020-02-24 08:46:20'),
(8, 'party makeup', 'party makeup,bridal', 2000, 1, 1, '2020-02-24 08:19:47', '2020-02-24 10:04:57'),
(9, 'd tan', 'face d tan', 100, 7, 1, '2020-02-24 09:18:40', '2020-02-24 09:18:40'),
(10, 'pasting', 'mustache', 200, 4, 1, '2020-02-24 09:19:49', '2020-02-24 09:19:49'),
(11, 'ABCDEF', 'nononj', 200, 6, 1, '2020-02-24 11:03:22', '2020-02-24 11:03:22'),
(12, 'Threading', '', 50, 8, 1, '2020-02-24 12:26:51', '2020-02-24 12:26:51'),
(13, 'Beard Cutting', '', 200, 10, 0, '2020-02-29 06:42:45', '2020-03-06 11:43:39'),
(14, 'Facial', '', 500, 11, 1, '2020-02-29 06:43:02', '2020-02-29 06:43:02'),
(15, 'Blow Dry', 'Blow Dry', 500, 12, 1, '2020-03-06 11:44:05', '2020-03-06 11:44:05'),
(16, 'Head Wash', 'Head Wash', 500, 13, 1, '2020-03-06 11:44:19', '2020-03-06 11:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`category_id`, `category_name`, `category_description`, `category_enable`, `created_at`, `updated_at`) VALUES
(1, 'makup', 'Eyes makup bridal makeup', 1, '2020-02-02 07:36:43', '2020-02-02 07:53:34'),
(3, 'Nails', 'Manicure,pedicure,', 1, '2020-02-02 08:28:46', '2020-02-24 09:17:54'),
(4, 'Hair', 'Smoothening, rebounding, spa', 1, '2020-02-02 08:29:06', '2020-02-02 08:29:06'),
(6, 'tattoo', 'all kinds of tattoo', 1, '2020-02-24 08:23:03', '2020-02-24 09:17:11'),
(7, 'skin', 'all skin types', 1, '2020-02-24 09:16:45', '2020-02-24 09:16:45'),
(8, 'Ladies', 'All kinds of services', 1, '2020-02-24 12:26:02', '2020-02-24 12:26:02'),
(9, 'Gents', 'All kinds of gents services', 1, '2020-02-24 12:26:19', '2020-02-24 12:26:19'),
(10, 'Beard', 'Beard', 1, '2020-02-29 06:36:45', '2020-02-29 06:36:45'),
(11, 'Facial', 'Facial', 1, '2020-02-29 06:37:11', '2020-02-29 06:37:11'),
(12, 'Blow Dry', 'Blow Dry', 1, '2020-03-06 11:43:15', '2020-03-06 11:43:15'),
(13, 'Head Wash', 'Head Wash', 1, '2020-03-06 11:43:25', '2020-03-06 11:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `service_detail_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_charges` double(8,2) NOT NULL,
  `service_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`service_detail_id`, `transaction_id`, `service_id`, `service_charges`, `service_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 45.00, 2, NULL, NULL),
(2, 1, 4, 145.00, 2, NULL, NULL),
(12, 3, 1, 51.00, 2, NULL, NULL),
(13, 4, 4, 215.00, 2, NULL, NULL),
(14, 5, 4, 150.00, 4, NULL, NULL),
(15, 6, 4, 100.00, 8, NULL, NULL),
(16, 7, 4, 200.00, 9, NULL, NULL),
(17, 8, 4, 200.00, 11, NULL, NULL),
(20, 11, 3, 1200.00, 5, NULL, NULL),
(21, 12, 4, 100.00, 8, NULL, NULL),
(22, 13, 3, 50.00, 4, NULL, NULL),
(23, 14, 3, 700.00, 9, NULL, NULL),
(25, 16, 4, 200.00, 5, NULL, NULL),
(26, 17, 4, 150.00, 8, NULL, NULL),
(27, 18, 4, 100.00, 4, NULL, NULL),
(28, 19, 4, 150.00, 4, NULL, NULL),
(29, 20, 4, 250.00, 5, NULL, NULL),
(30, 21, 4, 100.00, 8, NULL, NULL),
(31, 22, 4, 100.00, 9, NULL, NULL),
(32, 23, 4, 100.00, 14, NULL, NULL),
(33, 24, 4, 50.00, 9, NULL, NULL),
(34, 25, 4, 50.00, 9, NULL, NULL),
(35, 26, 4, 150.00, 8, NULL, NULL),
(36, 26, 3, 50.00, 8, NULL, NULL),
(37, 27, 4, 100.00, 8, NULL, NULL),
(39, 29, 4, 150.00, 8, NULL, NULL),
(40, 30, 4, 200.00, 9, NULL, NULL),
(41, 31, 3, 4000.00, 7, NULL, NULL),
(42, 32, 4, 100.00, 8, NULL, NULL),
(43, 33, 4, 100.00, 9, NULL, NULL),
(44, 33, 9, 100.00, 9, NULL, NULL),
(45, 34, 4, 100.00, 5, NULL, NULL),
(46, 34, 9, 100.00, 5, NULL, NULL),
(47, 35, 3, 50.00, 8, NULL, NULL),
(48, 36, 4, 100.00, 4, NULL, NULL),
(49, 37, 3, 50.00, 4, NULL, NULL),
(50, 38, 9, 1000.00, 9, NULL, NULL),
(51, 39, 4, 150.00, 5, NULL, NULL),
(52, 40, 3, 50.00, 5, NULL, NULL),
(53, 41, 4, 100.00, 4, NULL, NULL),
(54, 42, 4, 200.00, 9, NULL, NULL),
(55, 43, 4, 100.00, 8, NULL, NULL),
(56, 44, 4, 150.00, 5, NULL, NULL),
(57, 45, 4, 100.00, 4, NULL, NULL),
(58, 46, 3, 4000.00, 14, NULL, NULL),
(59, 47, 4, 200.00, 9, NULL, NULL),
(60, 48, 4, 200.00, 12, NULL, NULL),
(61, 49, 4, 250.00, 5, NULL, NULL),
(62, 50, 3, 470.00, 5, NULL, NULL),
(63, 51, 4, 150.00, 4, NULL, NULL),
(64, 52, 3, 4000.00, 14, NULL, NULL),
(65, 53, 4, 100.00, 4, NULL, NULL),
(66, 54, 3, 4500.00, 7, NULL, NULL),
(67, 55, 4, 100.00, 9, NULL, NULL),
(68, 56, 4, 150.00, 5, NULL, NULL),
(69, 57, 2, 800.00, 4, NULL, NULL),
(70, 58, 4, 200.00, 5, NULL, NULL),
(71, 59, 4, 150.00, 5, NULL, NULL),
(72, 60, 4, 250.00, 5, NULL, NULL),
(73, 61, 9, 1500.00, 4, NULL, NULL),
(75, 62, 4, 100.00, 8, NULL, NULL),
(76, 63, 4, 200.00, 5, NULL, NULL),
(77, 64, 4, 100.00, 5, NULL, NULL),
(78, 65, 4, 100.00, 4, NULL, NULL),
(79, 66, 9, 250.00, 5, NULL, NULL),
(80, 67, 4, 200.00, 4, NULL, NULL),
(81, 68, 8, 100.00, 5, NULL, NULL),
(82, 69, 3, 6000.00, 14, NULL, NULL),
(83, 70, 9, 1500.00, 4, NULL, NULL),
(84, 71, 3, 2000.00, 5, NULL, NULL),
(85, 72, 4, 100.00, 8, NULL, NULL),
(86, 73, 3, 50.00, 8, NULL, NULL),
(87, 74, 4, 100.00, 5, NULL, NULL),
(88, 75, 3, 50.00, 5, NULL, NULL),
(89, 76, 3, 50.00, 15, NULL, NULL),
(90, 77, 4, 100.00, 5, NULL, NULL),
(91, 78, 3, 1600.00, 4, NULL, NULL),
(92, 79, 3, 300.00, 8, NULL, NULL),
(93, 80, 4, 50.00, 8, NULL, NULL),
(94, 81, 4, 100.00, 6, NULL, NULL),
(95, 82, 4, 100.00, 8, NULL, NULL),
(96, 83, 4, 150.00, 4, NULL, NULL),
(97, 84, 4, 100.00, 4, NULL, NULL),
(98, 85, 4, 250.00, 4, NULL, NULL),
(99, 86, 3, 600.00, 10, NULL, NULL),
(100, 87, 4, 100.00, 10, NULL, NULL),
(101, 88, 4, 150.00, 5, NULL, NULL),
(102, 89, 3, 800.00, 11, NULL, NULL),
(103, 90, 4, 200.00, 12, NULL, NULL),
(104, 91, 4, 100.00, 4, NULL, NULL),
(105, 92, 9, 100.00, 4, NULL, NULL),
(106, 93, 4, 150.00, 8, NULL, NULL),
(107, 94, 4, 100.00, 10, NULL, NULL),
(109, 96, 4, 200.00, 10, NULL, NULL),
(110, 97, 4, 300.00, 5, NULL, NULL),
(111, 98, 4, 150.00, 9, NULL, NULL),
(112, 99, 3, 50.00, 6, NULL, NULL),
(113, 100, 2, 700.00, 5, NULL, NULL),
(114, 101, 4, 200.00, 5, NULL, NULL),
(115, 102, 4, 200.00, 9, NULL, NULL),
(116, 103, 4, 150.00, 5, NULL, NULL),
(117, 104, 4, 100.00, 9, NULL, NULL),
(118, 104, 13, 200.00, 9, NULL, NULL),
(119, 105, 4, 100.00, 9, NULL, NULL),
(120, 106, 3, 2500.00, 14, NULL, NULL),
(121, 107, 4, 100.00, 8, NULL, NULL),
(122, 107, 9, 200.00, 8, NULL, NULL),
(123, 108, 13, 200.00, 4, NULL, NULL),
(124, 109, 11, 5000.00, 12, NULL, NULL),
(125, 110, 3, 800.00, 4, NULL, NULL),
(126, 111, 3, 800.00, 9, NULL, NULL),
(127, 112, 4, 100.00, 8, NULL, NULL),
(128, 112, 13, 150.00, 8, NULL, NULL),
(129, 113, 4, 150.00, 5, NULL, NULL),
(130, 114, 4, 200.00, 9, NULL, NULL),
(131, 114, 13, 200.00, 9, NULL, NULL),
(132, 115, 4, 150.00, 8, NULL, NULL),
(133, 116, 4, 150.00, 9, NULL, NULL),
(134, 117, 3, 400.00, 4, NULL, NULL),
(135, 118, 3, 400.00, 5, NULL, NULL),
(136, 119, 4, 50.00, 5, NULL, NULL),
(137, 120, 4, 650.00, 5, NULL, NULL),
(138, 121, 4, 150.00, 5, NULL, NULL),
(139, 122, 4, 700.00, 8, NULL, NULL),
(140, 123, 9, 1300.00, 4, NULL, NULL),
(141, 124, 4, 100.00, 4, NULL, NULL),
(143, 126, 4, 100.00, 5, NULL, NULL),
(144, 125, 4, 150.00, 4, NULL, NULL),
(145, 127, 4, 250.00, 5, NULL, NULL),
(146, 128, 4, 100.00, 5, NULL, NULL),
(147, 128, 13, 50.00, 5, NULL, NULL),
(148, 129, 14, 800.00, 9, NULL, NULL),
(149, 130, 13, 100.00, 8, NULL, NULL),
(150, 131, 4, 150.00, 8, NULL, NULL),
(151, 132, 4, 100.00, 5, NULL, NULL),
(152, 132, 13, 50.00, 5, NULL, NULL),
(153, 133, 4, 100.00, 9, NULL, NULL),
(154, 133, 13, 100.00, 9, NULL, NULL),
(155, 134, 4, 100.00, 4, NULL, NULL),
(156, 134, 13, 50.00, 4, NULL, NULL),
(157, 135, 4, 150.00, 5, NULL, NULL),
(158, 136, 8, 150.00, 8, NULL, NULL),
(159, 137, 4, 100.00, 9, NULL, NULL),
(160, 137, 13, 100.00, 9, NULL, NULL),
(161, 138, 4, 150.00, 9, NULL, NULL),
(162, 139, 4, 200.00, 8, NULL, NULL),
(163, 140, 4, 130.00, 4, NULL, NULL),
(164, 141, 1, 500.00, 14, NULL, NULL),
(165, 142, 1, 1000.00, 14, NULL, NULL),
(166, 143, 3, 4500.00, 14, NULL, NULL),
(167, 144, 4, 100.00, 9, NULL, NULL),
(168, 144, 13, 100.00, 9, NULL, NULL),
(169, 145, 4, 150.00, 4, NULL, NULL),
(170, 146, 3, 50.00, 5, NULL, NULL),
(171, 147, 4, 150.00, 4, NULL, NULL),
(172, 148, 13, 100.00, 8, NULL, NULL),
(173, 149, 4, 100.00, 4, NULL, NULL),
(174, 150, 5, 100.00, 9, NULL, NULL),
(175, 150, 13, 150.00, 9, NULL, NULL),
(176, 151, 4, 150.00, 10, NULL, NULL),
(177, 152, 4, 100.00, 10, NULL, NULL),
(178, 152, 13, 100.00, 10, NULL, NULL),
(179, 153, 14, 1000.00, 10, NULL, NULL),
(181, 154, 4, 150.00, 4, NULL, NULL),
(182, 155, 4, 300.00, 12, NULL, NULL),
(183, 156, 13, 50.00, 10, NULL, NULL),
(184, 157, 4, 150.00, 10, NULL, NULL),
(185, 158, 4, 100.00, 9, NULL, NULL),
(186, 159, 4, 300.00, 10, NULL, NULL),
(187, 162, 13, 50.00, 5, NULL, NULL),
(188, 163, 14, 2000.00, 4, NULL, NULL),
(190, 165, 4, 100.00, 5, NULL, NULL),
(191, 165, 13, 50.00, 5, NULL, NULL),
(192, 166, 3, 50.00, 8, NULL, NULL),
(193, 167, 3, 50.00, 9, NULL, NULL),
(194, 168, 4, 100.00, 14, NULL, NULL),
(195, 169, 4, 300.00, 9, NULL, NULL),
(196, 170, 4, 100.00, 9, NULL, NULL),
(199, 171, 4, 100.00, 4, NULL, NULL),
(200, 172, 3, 50.00, 8, NULL, NULL),
(201, 173, 4, 250.00, 9, NULL, NULL),
(202, 174, 3, 50.00, 8, NULL, NULL),
(203, 175, 4, 100.00, 4, NULL, NULL),
(204, 175, 13, 50.00, 4, NULL, NULL),
(205, 176, 4, 100.00, 9, NULL, NULL),
(206, 177, 4, 100.00, 9, NULL, NULL),
(207, 178, 4, 100.00, 5, NULL, NULL),
(208, 179, 8, 200.00, 5, NULL, NULL),
(209, 180, 4, 400.00, 14, NULL, NULL),
(210, 181, 2, 800.00, 9, NULL, NULL),
(211, 181, 4, 200.00, 4, NULL, NULL),
(212, 182, 10, 200.00, 12, NULL, NULL),
(213, 183, 4, 100.00, 9, NULL, NULL),
(214, 183, 13, 50.00, 9, NULL, NULL),
(215, 184, 4, 100.00, 8, NULL, NULL),
(216, 185, 13, 150.00, 5, NULL, NULL),
(217, 186, 13, 100.00, 4, NULL, NULL),
(218, 186, 4, 100.00, 4, NULL, NULL),
(219, 187, 4, 200.00, 5, NULL, NULL),
(220, 188, 11, 4500.00, 12, NULL, NULL),
(221, 189, 4, 100.00, 10, NULL, NULL),
(222, 190, 3, 1300.00, 10, NULL, NULL),
(223, 191, 4, 100.00, 10, NULL, NULL),
(224, 192, 4, 150.00, 10, NULL, NULL),
(225, 193, 8, 500.00, 10, NULL, NULL),
(226, 194, 3, 2000.00, 10, NULL, NULL),
(227, 195, 3, 1000.00, 11, NULL, NULL),
(228, 196, 3, 500.00, 11, NULL, NULL),
(229, 197, 4, 300.00, 11, NULL, NULL),
(230, 198, 4, 150.00, 4, NULL, NULL),
(231, 199, 4, 100.00, 4, NULL, NULL),
(232, 200, 4, 250.00, 5, NULL, NULL),
(233, 201, 3, 400.00, 10, NULL, NULL),
(234, 202, 3, 50.00, 15, NULL, NULL),
(235, 203, 3, 50.00, 15, NULL, NULL),
(236, 204, 4, 100.00, 9, NULL, NULL),
(237, 205, 4, 100.00, 9, NULL, NULL),
(238, 206, 4, 100.00, 9, NULL, NULL),
(239, 207, 4, 250.00, 5, NULL, NULL),
(240, 208, 4, 250.00, 5, NULL, NULL),
(241, 209, 4, 350.00, 9, NULL, NULL),
(242, 210, 4, 200.00, 9, NULL, NULL),
(243, 211, 4, 150.00, 9, NULL, NULL),
(244, 212, 4, 100.00, 16, NULL, NULL),
(246, 28, 4, 150.00, 4, NULL, NULL),
(247, 214, 4, 200.00, 5, NULL, NULL),
(248, 215, 3, 500.00, 9, NULL, NULL),
(249, 216, 4, 50.00, 8, NULL, NULL),
(250, 217, 4, 150.00, 4, NULL, NULL),
(251, 218, 4, 100.00, 5, NULL, NULL),
(252, 218, 13, 100.00, 5, NULL, NULL),
(253, 219, 3, 900.00, 9, NULL, NULL),
(254, 220, 4, 200.00, 5, NULL, NULL),
(255, 221, 4, 400.00, 14, NULL, NULL),
(256, 222, 4, 150.00, 5, NULL, NULL),
(257, 223, 4, 150.00, 5, NULL, NULL),
(258, 224, 3, 50.00, 8, NULL, NULL),
(259, 225, 3, 1600.00, 9, NULL, NULL),
(260, 226, 2, 800.00, 5, NULL, NULL),
(261, 227, 4, 150.00, 5, NULL, NULL),
(262, 228, 13, 50.00, 8, NULL, NULL),
(263, 229, 3, 650.00, 4, NULL, NULL),
(264, 230, 13, 50.00, 9, NULL, NULL),
(266, 232, 4, 200.00, 5, NULL, NULL),
(267, 233, 4, 100.00, 5, NULL, NULL),
(268, 234, 4, 100.00, 16, NULL, NULL),
(269, 234, 13, 150.00, 16, NULL, NULL),
(270, 235, 13, 100.00, 8, NULL, NULL),
(271, 236, 13, 100.00, 16, NULL, NULL),
(272, 237, 3, 100.00, 11, NULL, NULL),
(274, 238, 4, 150.00, 4, NULL, NULL),
(275, 231, 4, 150.00, 4, NULL, NULL),
(276, 239, 4, 100.00, 4, NULL, NULL),
(277, 240, 13, 100.00, 5, NULL, NULL),
(278, 241, 4, 150.00, 9, NULL, NULL),
(279, 242, 4, 150.00, 9, NULL, NULL),
(280, 243, 4, 50.00, 4, NULL, NULL),
(281, 244, 3, 50.00, 9, NULL, NULL),
(282, 245, 4, 100.00, 8, NULL, NULL),
(283, 246, 4, 150.00, 9, NULL, NULL),
(284, 247, 3, 50.00, 5, NULL, NULL),
(285, 248, 4, 100.00, 5, NULL, NULL),
(286, 249, 3, 50.00, 8, NULL, NULL),
(287, 250, 4, 50.00, 4, NULL, NULL),
(288, 251, 3, 3500.00, 11, NULL, NULL),
(290, 252, 9, 400.00, 10, NULL, NULL),
(291, 253, 2, 500.00, 10, NULL, NULL),
(292, 254, 3, 650.00, 10, NULL, NULL),
(293, 255, 4, 150.00, 4, NULL, NULL),
(294, 256, 8, 100.00, 5, NULL, NULL),
(295, 257, 9, 100.00, 8, NULL, NULL),
(296, 257, 4, 200.00, 8, NULL, NULL),
(297, 258, 4, 100.00, 5, NULL, NULL),
(298, 259, 3, 50.00, 6, NULL, NULL),
(299, 260, 4, 150.00, 8, NULL, NULL),
(300, 261, 3, 1050.00, 9, NULL, NULL),
(301, 262, 11, 3500.00, 12, NULL, NULL),
(302, 263, 1, 500.00, 9, NULL, NULL),
(303, 264, 4, 150.00, 9, NULL, NULL),
(304, 265, 4, 200.00, 4, NULL, NULL),
(305, 266, 4, 150.00, 8, NULL, NULL),
(306, 267, 4, 100.00, 9, NULL, NULL),
(307, 268, 4, 100.00, 4, NULL, NULL),
(308, 269, 4, 100.00, 8, NULL, NULL),
(309, 270, 3, 50.00, 15, NULL, NULL),
(310, 271, 4, 50.00, 4, NULL, NULL),
(311, 272, 4, 150.00, 4, NULL, NULL),
(312, 273, 4, 150.00, 9, NULL, NULL),
(313, 274, 3, 600.00, 8, NULL, NULL),
(315, 276, 2, 500.00, 9, NULL, NULL),
(316, 277, 3, 700.00, 14, NULL, NULL),
(317, 278, 4, 150.00, 9, NULL, NULL),
(318, 279, 4, 100.00, 9, NULL, NULL),
(319, 280, 4, 200.00, 8, NULL, NULL),
(320, 281, 4, 200.00, 8, NULL, NULL),
(321, 282, 3, 50.00, 6, NULL, NULL),
(322, 283, 11, 2500.00, 12, NULL, NULL),
(323, 284, 15, 50.00, 10, NULL, NULL),
(324, 285, 15, 50.00, 16, NULL, NULL),
(325, 286, 4, 200.00, 10, NULL, NULL),
(326, 287, 1, 700.00, 11, NULL, NULL),
(327, 288, 1, 600.00, 4, NULL, NULL),
(328, 289, 3, 2000.00, 4, NULL, NULL),
(329, 290, 4, 200.00, 8, NULL, NULL),
(330, 291, 4, 100.00, 5, NULL, NULL),
(331, 292, 13, 70.00, 8, NULL, NULL),
(332, 293, 4, 100.00, 4, NULL, NULL),
(333, 294, 4, 150.00, 5, NULL, NULL),
(334, 295, 4, 100.00, 8, NULL, NULL),
(335, 296, 4, 150.00, 8, NULL, NULL),
(336, 297, 4, 170.00, 5, NULL, NULL),
(337, 298, 4, 150.00, 8, NULL, NULL),
(338, 299, 4, 100.00, 5, NULL, NULL),
(339, 300, 4, 100.00, 4, NULL, NULL),
(340, 301, 4, 100.00, 10, NULL, NULL),
(341, 302, 4, 200.00, 10, NULL, NULL),
(342, 303, 4, 150.00, 10, NULL, NULL),
(343, 304, 4, 200.00, 10, NULL, NULL),
(345, 306, 12, 20.00, 4, NULL, NULL),
(346, 307, 5, 300.00, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_amount` double(10,2) NOT NULL,
  `paid` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `entered_by` bigint(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_date`, `customer_id`, `employee_id`, `total_amount`, `paid`, `balance`, `entered_by`, `created_at`, `updated_at`) VALUES
(1, '2020-02-17', 1, NULL, 190.00, 190.00, 0.00, 0, NULL, NULL),
(3, '2020-02-18', 3, NULL, 51.00, 51.00, 0.00, 0, NULL, NULL),
(4, '2020-02-22', 4, NULL, 215.00, 215.00, 0.00, 0, NULL, NULL),
(5, '2020-02-24', 5, 4, 150.00, 150.00, 0.00, 0, NULL, NULL),
(6, '2020-02-24', 6, 8, 100.00, 100.00, 0.00, 0, NULL, NULL),
(7, '2020-02-24', 7, 9, 200.00, 200.00, 0.00, 0, NULL, NULL),
(8, '2020-02-24', 8, 11, 200.00, 200.00, 0.00, 0, NULL, NULL),
(11, '2020-02-24', 11, 5, 1200.00, 1200.00, 0.00, 0, NULL, NULL),
(12, '2020-02-24', 12, 8, 100.00, 100.00, 0.00, 0, NULL, NULL),
(13, '2020-02-24', 13, 4, 50.00, 50.00, 0.00, 0, NULL, NULL),
(14, '2020-02-24', 14, 9, 700.00, 700.00, 0.00, 0, NULL, NULL),
(16, '2020-02-24', 16, 5, 200.00, 200.00, 0.00, 0, NULL, NULL),
(17, '2020-02-24', 17, 8, 150.00, 150.00, 0.00, 0, '2020-02-24 11:58:47', NULL),
(18, '2020-02-24', 18, 4, 100.00, 100.00, 0.00, 0, '2020-02-24 12:02:41', NULL),
(19, '2020-02-24', 19, 4, 150.00, 150.00, 0.00, 0, '2020-02-24 13:00:56', NULL),
(20, '2020-02-24', 20, 5, 250.00, 250.00, 0.00, 0, '2020-02-24 13:32:56', NULL),
(21, '2020-02-25', 21, 8, 100.00, 100.00, 0.00, 0, '2020-02-25 06:46:14', NULL),
(22, '2020-02-25', 22, 9, 100.00, 100.00, 0.00, 0, '2020-02-25 07:02:00', NULL),
(23, '2020-02-25', 23, 14, 100.00, 100.00, 0.00, 0, '2020-02-25 07:16:08', NULL),
(24, '2020-02-25', 24, 9, 50.00, 50.00, 0.00, 0, '2020-02-25 08:17:03', NULL),
(25, '2020-02-25', 25, 9, 50.00, 50.00, 0.00, 0, '2020-02-25 08:22:01', NULL),
(26, '2020-02-25', 26, 8, 200.00, 200.00, 0.00, 0, '2020-02-25 09:06:41', NULL),
(27, '2020-02-25', 27, 8, 100.00, 100.00, 0.00, 0, '2020-02-25 10:02:22', NULL),
(28, '2020-02-25', 28, 9, 150.00, 150.00, 0.00, 0, '2020-02-25 10:27:11', NULL),
(29, '2020-02-25', 29, 8, 150.00, 150.00, 0.00, 0, '2020-02-25 10:40:53', NULL),
(30, '2020-02-25', 30, 9, 200.00, 200.00, 0.00, 0, '2020-02-25 10:41:58', NULL),
(31, '2020-02-25', 31, 7, 4000.00, 4000.00, 0.00, 0, '2020-02-25 10:44:06', NULL),
(32, '2020-02-25', 32, 8, 100.00, 100.00, 0.00, 0, '2020-02-25 11:00:51', NULL),
(33, '2020-02-26', 33, 9, 200.00, 200.00, 0.00, 0, '2020-02-26 05:10:23', NULL),
(34, '2020-02-26', 34, 5, 200.00, 200.00, 0.00, 0, '2020-02-26 05:12:59', NULL),
(35, '2020-02-26', 35, 8, 50.00, 50.00, 0.00, 0, '2020-02-26 05:18:01', NULL),
(36, '2020-02-26', 36, 4, 100.00, 100.00, 0.00, 0, '2020-02-26 05:49:50', NULL),
(37, '2020-02-26', 37, 4, 50.00, 50.00, 0.00, 0, '2020-02-26 05:55:44', NULL),
(38, '2020-02-26', 38, 9, 1000.00, 1000.00, 0.00, 0, '2020-02-26 06:51:07', NULL),
(39, '2020-02-26', 39, 5, 150.00, 150.00, 0.00, 0, '2020-02-26 07:00:01', NULL),
(40, '2020-02-26', 40, 5, 50.00, 50.00, 0.00, 0, '2020-02-26 07:16:39', NULL),
(41, '2020-02-26', 41, 4, 100.00, 100.00, 0.00, 0, '2020-02-26 07:19:15', NULL),
(42, '2020-02-26', 42, 9, 200.00, 200.00, 0.00, 0, '2020-02-26 07:20:24', NULL),
(43, '2020-02-26', 43, 8, 100.00, 100.00, 0.00, 0, '2020-02-26 07:21:48', NULL),
(44, '2020-02-26', 44, 5, 150.00, 150.00, 0.00, 0, '2020-02-26 09:11:49', NULL),
(45, '2020-02-26', 45, 4, 100.00, 100.00, 0.00, 0, '2020-02-26 09:28:34', NULL),
(46, '2020-02-26', 46, 14, 4000.00, 4000.00, 0.00, 0, '2020-02-26 09:30:55', NULL),
(47, '2020-02-26', 47, 9, 200.00, 200.00, 0.00, 0, '2020-02-26 09:35:41', NULL),
(48, '2020-02-26', 48, 12, 200.00, 200.00, 0.00, 0, '2020-02-26 09:44:14', NULL),
(49, '2020-02-26', 50, 5, 250.00, 250.00, 0.00, 0, '2020-02-26 10:03:42', NULL),
(50, '2020-02-26', 51, 5, 470.00, 470.00, 0.00, 0, '2020-02-26 10:20:02', NULL),
(51, '2020-02-26', 52, 4, 150.00, 150.00, 0.00, 0, '2020-02-26 10:49:22', NULL),
(52, '2020-02-26', 53, 14, 4000.00, 4000.00, 0.00, 0, '2020-02-26 10:50:14', NULL),
(53, '2020-02-26', 54, 4, 100.00, 100.00, 0.00, 0, '2020-02-26 10:57:45', NULL),
(54, '2020-02-26', 55, 7, 4500.00, 4500.00, 0.00, 0, '2020-02-26 11:13:49', NULL),
(55, '2020-02-26', 56, 9, 100.00, 100.00, 0.00, 0, '2020-02-26 11:53:27', NULL),
(56, '2020-02-26', 57, 5, 150.00, 150.00, 0.00, 0, '2020-02-26 11:57:49', NULL),
(57, '2020-02-26', 58, 4, 800.00, 800.00, 0.00, 0, '2020-02-26 12:06:46', NULL),
(58, '2020-02-26', 59, 5, 200.00, 200.00, 0.00, 0, '2020-02-26 12:27:11', NULL),
(59, '2020-02-26', 60, 5, 150.00, 150.00, 0.00, 0, '2020-02-26 16:07:15', NULL),
(60, '2020-02-26', 61, 5, 250.00, 250.00, 0.00, 0, '2020-02-26 16:09:39', NULL),
(61, '2020-02-26', 62, 4, 1500.00, 1500.00, 0.00, 0, '2020-02-26 16:12:33', NULL),
(62, '2020-02-26', 63, 5, 100.00, 100.00, 0.00, 0, '2020-02-26 16:14:09', NULL),
(63, '2020-02-26', 64, 5, 200.00, 200.00, 0.00, 0, '2020-02-26 16:16:03', NULL),
(64, '2020-02-27', 65, 5, 100.00, 100.00, 0.00, 0, '2020-02-27 06:20:58', NULL),
(65, '2020-02-27', 66, 4, 100.00, 100.00, 0.00, 0, '2020-02-27 07:51:49', NULL),
(66, '2020-02-27', 67, 5, 250.00, 250.00, 0.00, 0, '2020-02-27 07:52:52', NULL),
(67, '2020-02-27', 68, 4, 200.00, 200.00, 0.00, 0, '2020-02-27 10:39:00', NULL),
(68, '2020-02-27', 69, 5, 100.00, 100.00, 0.00, 0, '2020-02-27 10:41:30', NULL),
(69, '2020-02-27', 70, 14, 6000.00, 6000.00, 0.00, 0, '2020-02-27 10:49:08', NULL),
(70, '2020-02-28', 71, 4, 1500.00, 1500.00, 0.00, 0, '2020-02-28 06:37:11', NULL),
(71, '2020-02-28', 72, 5, 2000.00, 1500.00, 500.00, 0, '2020-02-28 07:02:08', NULL),
(72, '2020-02-28', 73, 8, 100.00, 100.00, 0.00, 0, '2020-02-28 07:34:04', NULL),
(73, '2020-02-28', 74, 8, 50.00, 50.00, 0.00, 0, '2020-02-28 07:48:59', NULL),
(74, '2020-02-28', 75, 5, 100.00, 100.00, 0.00, 0, '2020-02-28 07:50:06', NULL),
(75, '2020-02-28', 76, 5, 50.00, 50.00, 0.00, 0, '2020-02-28 08:16:49', NULL),
(76, '2020-02-28', 77, 15, 50.00, 50.00, 0.00, 0, '2020-02-28 08:18:29', NULL),
(77, '2020-02-28', 78, 5, 100.00, 100.00, 0.00, 0, '2020-02-28 08:51:12', NULL),
(78, '2020-02-28', 79, 4, 1600.00, 1600.00, 0.00, 0, '2020-02-28 08:53:49', NULL),
(79, '2020-02-28', 80, 8, 300.00, 300.00, 0.00, 0, '2020-02-28 09:12:30', NULL),
(80, '2020-02-28', 81, 8, 50.00, 50.00, 0.00, 0, '2020-02-28 09:59:46', NULL),
(81, '2020-02-28', 82, 6, 100.00, 100.00, 0.00, 0, '2020-02-28 10:08:02', NULL),
(82, '2020-02-28', 83, 8, 100.00, 100.00, 0.00, 0, '2020-02-28 11:19:02', NULL),
(83, '2020-02-28', 84, 4, 150.00, 150.00, 0.00, 0, '2020-02-28 11:23:31', NULL),
(84, '2020-02-28', 85, 4, 100.00, 100.00, 0.00, 0, '2020-02-28 11:27:46', NULL),
(85, '2020-02-28', 86, 4, 250.00, 250.00, 0.00, 0, '2020-02-28 12:14:14', NULL),
(86, '2020-02-28', 87, 10, 600.00, 600.00, 0.00, 0, '2020-02-28 12:21:13', NULL),
(87, '2020-02-28', 88, 10, 100.00, 100.00, 0.00, 0, '2020-02-28 12:30:30', NULL),
(88, '2020-02-28', 89, 5, 150.00, 150.00, 0.00, 0, '2020-02-28 12:56:13', NULL),
(89, '2020-02-28', 90, 11, 800.00, 800.00, 0.00, 0, '2020-02-28 13:06:51', NULL),
(90, '2020-02-28', 91, 12, 200.00, 200.00, 0.00, 0, '2020-02-28 13:28:23', NULL),
(91, '2020-02-28', 92, 4, 100.00, 100.00, 0.00, 0, '2020-02-28 13:35:05', NULL),
(92, '2020-02-28', 93, 4, 100.00, 100.00, 0.00, 0, '2020-02-28 13:36:43', NULL),
(93, '2020-02-28', 94, 8, 150.00, 150.00, 0.00, 0, '2020-02-28 13:39:08', NULL),
(94, '2020-02-28', 95, 10, 100.00, 100.00, 0.00, 0, '2020-02-28 14:35:48', NULL),
(96, '2020-02-28', 97, 10, 200.00, 200.00, 0.00, 0, '2020-02-28 14:58:57', NULL),
(97, '2020-02-28', 98, 5, 300.00, 300.00, 0.00, 0, '2020-02-28 15:13:12', NULL),
(98, '2020-02-29', 99, 9, 150.00, 150.00, 0.00, 0, '2020-02-29 05:37:50', NULL),
(99, '2020-02-29', 100, 6, 50.00, 50.00, 0.00, 0, '2020-02-29 05:39:23', NULL),
(100, '2020-02-29', 101, 5, 700.00, 700.00, 0.00, 0, '2020-02-29 06:04:04', NULL),
(101, '2020-02-29', 102, 5, 200.00, 200.00, 0.00, 0, '2020-02-29 06:06:32', NULL),
(102, '2020-02-29', 103, 9, 200.00, 200.00, 0.00, 0, '2020-02-29 06:08:47', NULL),
(103, '2020-02-29', 104, 5, 150.00, 150.00, 0.00, 0, '2020-02-29 06:55:49', NULL),
(104, '2020-02-29', 105, 9, 300.00, 300.00, 0.00, 0, '2020-02-29 07:05:39', NULL),
(105, '2020-02-29', 106, 9, 100.00, 100.00, 0.00, 0, '2020-02-29 07:18:59', NULL),
(106, '2020-02-29', 107, 14, 2500.00, 2500.00, 0.00, 0, '2020-02-29 07:34:22', NULL),
(107, '2020-02-29', 108, 8, 300.00, 300.00, 0.00, 0, '2020-02-29 07:38:07', NULL),
(108, '2020-02-29', 109, 4, 200.00, 200.00, 0.00, 0, '2020-02-29 07:44:38', NULL),
(109, '2020-02-29', 110, 12, 5000.00, 5000.00, 0.00, 0, '2020-02-29 09:12:00', NULL),
(110, '2020-02-29', 111, 4, 800.00, 800.00, 0.00, 0, '2020-02-29 09:18:06', NULL),
(111, '2020-02-29', 112, 9, 800.00, 800.00, 0.00, 0, '2020-02-29 09:20:36', NULL),
(112, '2020-02-29', 113, 8, 250.00, 250.00, 0.00, 0, '2020-02-29 09:58:39', NULL),
(113, '2020-02-29', 114, 5, 150.00, 150.00, 0.00, 0, '2020-02-29 10:09:13', NULL),
(114, '2020-02-29', 115, 9, 400.00, 400.00, 0.00, 0, '2020-02-29 10:21:47', NULL),
(115, '2020-02-29', 116, 8, 150.00, 150.00, 0.00, 0, '2020-02-29 10:34:30', NULL),
(116, '2020-02-29', 117, 9, 150.00, 150.00, 0.00, 0, '2020-02-29 10:58:21', NULL),
(117, '2020-02-29', 118, 4, 400.00, 400.00, 0.00, 0, '2020-02-29 11:18:09', NULL),
(118, '2020-02-29', 119, 5, 400.00, 400.00, 0.00, 0, '2020-02-29 11:18:53', NULL),
(119, '2020-02-29', 120, 5, 50.00, 50.00, 0.00, 0, '2020-02-29 13:45:20', NULL),
(120, '2020-02-29', 121, 5, 650.00, 650.00, 0.00, 0, '2020-02-29 13:47:19', NULL),
(121, '2020-02-29', 122, 5, 150.00, 150.00, 0.00, 0, '2020-02-29 13:49:35', NULL),
(122, '2020-02-29', 123, 8, 700.00, 700.00, 0.00, 0, '2020-02-29 13:51:36', NULL),
(123, '2020-02-29', 124, 4, 1300.00, 1300.00, 0.00, 0, '2020-02-29 13:52:45', NULL),
(124, '2020-02-29', 125, 4, 100.00, 100.00, 0.00, 0, '2020-02-29 14:34:03', NULL),
(125, '2020-02-29', 126, 4, 150.00, 150.00, 0.00, 0, '2020-02-29 15:31:28', NULL),
(126, '2020-02-29', 127, 5, 100.00, 100.00, 0.00, 0, '2020-02-29 15:33:35', NULL),
(127, '2020-02-29', 128, 5, 250.00, 200.00, 50.00, 0, '2020-02-29 15:37:16', NULL),
(128, '2020-03-01', 129, 5, 150.00, 150.00, 0.00, 0, '2020-03-01 05:14:38', NULL),
(129, '2020-03-01', 130, 9, 800.00, 800.00, 0.00, 0, '2020-03-01 05:24:07', NULL),
(130, '2020-03-01', 131, 8, 100.00, 100.00, 0.00, 0, '2020-03-01 05:24:53', NULL),
(131, '2020-03-01', 132, 8, 150.00, 150.00, 0.00, 0, '2020-03-01 05:32:06', NULL),
(132, '2020-03-01', 133, 5, 150.00, 150.00, 0.00, 0, '2020-03-01 05:44:18', NULL),
(133, '2020-03-01', 134, 9, 200.00, 200.00, 0.00, 0, '2020-03-01 05:59:09', NULL),
(134, '2020-03-01', 135, 4, 150.00, 150.00, 0.00, 0, '2020-03-01 06:25:36', NULL),
(135, '2020-03-01', 136, 5, 150.00, 150.00, 0.00, 0, '2020-03-01 06:56:16', NULL),
(136, '2020-03-01', 137, 8, 150.00, 150.00, 0.00, 0, '2020-03-01 06:56:56', NULL),
(137, '2020-03-01', 138, 9, 200.00, 200.00, 0.00, 0, '2020-03-01 07:49:48', NULL),
(138, '2020-03-01', 139, 9, 150.00, 150.00, 0.00, 0, '2020-03-01 08:19:47', NULL),
(139, '2020-03-01', 140, 8, 200.00, 200.00, 0.00, 0, '2020-03-01 08:20:25', NULL),
(140, '2020-03-01', 141, 4, 130.00, 130.00, 0.00, 0, '2020-03-01 09:02:13', NULL),
(141, '2020-03-01', 142, 14, 500.00, 500.00, 0.00, 0, '2020-03-01 09:17:11', NULL),
(142, '2020-03-01', 143, 14, 1000.00, 1000.00, 0.00, 0, '2020-03-01 09:18:04', NULL),
(143, '2020-03-01', 144, 4, 4500.00, 4500.00, 0.00, 0, '2020-03-01 09:19:15', NULL),
(144, '2020-03-01', 145, 9, 200.00, 200.00, 0.00, 0, '2020-03-01 09:50:07', NULL),
(145, '2020-03-01', 146, 4, 150.00, 150.00, 0.00, 0, '2020-03-01 09:51:14', NULL),
(146, '2020-03-01', 147, 5, 50.00, 50.00, 0.00, 0, '2020-03-01 09:53:49', NULL),
(147, '2020-03-01', 148, 4, 150.00, 150.00, 0.00, 0, '2020-03-01 11:40:18', NULL),
(148, '2020-03-01', 149, 8, 100.00, 100.00, 0.00, 0, '2020-03-01 11:55:59', NULL),
(149, '2020-03-01', 150, 4, 100.00, 100.00, 0.00, 0, '2020-03-01 12:04:12', NULL),
(150, '2020-03-01', 151, 9, 250.00, 250.00, 0.00, 0, '2020-03-01 12:09:44', NULL),
(151, '2020-03-01', 152, 10, 150.00, 150.00, 0.00, 0, '2020-03-01 12:44:04', NULL),
(152, '2020-03-01', 153, 10, 200.00, 200.00, 0.00, 0, '2020-03-01 12:45:18', NULL),
(153, '2020-03-01', 154, 10, 1000.00, 1000.00, 0.00, 0, '2020-03-01 12:46:15', NULL),
(154, '2020-03-01', 155, 4, 150.00, 150.00, 0.00, 0, '2020-03-01 12:47:31', NULL),
(155, '2020-03-01', 156, 12, 300.00, 300.00, 0.00, 0, '2020-03-01 12:49:33', NULL),
(156, '2020-03-01', 157, 10, 50.00, 50.00, 0.00, 0, '2020-03-01 12:56:16', NULL),
(157, '2020-03-01', 158, 10, 150.00, 150.00, 0.00, 0, '2020-03-01 14:17:00', NULL),
(158, '2020-03-01', 159, 9, 100.00, 100.00, 0.00, 0, '2020-03-01 14:35:26', NULL),
(159, '2020-03-01', 160, 10, 300.00, 300.00, 0.00, 0, '2020-03-01 14:50:21', NULL),
(160, '2020-03-01', 161, 12, 50.00, 50.00, 0.00, 0, '2020-03-01 14:51:02', NULL),
(161, '2020-03-01', 162, 12, 50.00, 50.00, 0.00, 0, '2020-03-01 14:51:24', NULL),
(162, '2020-03-01', 163, 5, 50.00, 50.00, 0.00, 0, '2020-03-01 15:00:08', NULL),
(163, '2020-03-01', 164, 4, 2000.00, 2000.00, 0.00, 0, '2020-03-01 15:01:52', NULL),
(165, '2020-03-01', 167, 5, 150.00, 150.00, 0.00, 0, '2020-03-01 15:07:52', NULL),
(166, '2020-03-02', 168, 8, 50.00, 50.00, 0.00, 0, '2020-03-02 05:06:14', NULL),
(167, '2020-03-02', 169, 9, 50.00, 50.00, 0.00, 0, '2020-03-02 05:07:24', NULL),
(168, '2020-03-02', 170, 15, 100.00, 100.00, 0.00, 0, '2020-03-02 06:22:32', NULL),
(169, '2020-03-02', 171, 9, 300.00, 300.00, 0.00, 0, '2020-03-02 07:00:44', NULL),
(170, '2020-03-02', 172, 5, 100.00, 100.00, 0.00, 0, '2020-03-02 07:05:49', NULL),
(171, '2020-03-02', 173, 4, 100.00, 100.00, 0.00, 0, '2020-03-02 07:11:30', NULL),
(172, '2020-03-02', 174, 8, 50.00, 50.00, 0.00, 0, '2020-03-02 07:13:19', NULL),
(173, '2020-03-02', 175, 9, 250.00, 250.00, 0.00, 0, '2020-03-02 07:53:46', NULL),
(174, '2020-03-02', 176, 8, 50.00, 50.00, 0.00, 0, '2020-03-02 08:01:03', NULL),
(175, '2020-03-02', 177, 4, 150.00, 150.00, 0.00, 0, '2020-03-02 08:30:13', NULL),
(176, '2020-03-02', 178, 9, 100.00, 100.00, 0.00, 0, '2020-03-02 08:31:45', NULL),
(177, '2020-03-02', 179, 9, 100.00, 100.00, 0.00, 0, '2020-03-02 10:09:16', NULL),
(178, '2020-03-02', 180, 5, 100.00, 100.00, 0.00, 0, '2020-03-02 10:10:04', NULL),
(179, '2020-03-02', 181, 5, 200.00, 200.00, 0.00, 0, '2020-03-02 10:17:35', NULL),
(180, '2020-03-02', 182, 14, 400.00, 400.00, 0.00, 0, '2020-03-02 10:36:07', NULL),
(181, '2020-03-02', 183, 9, 1000.00, 800.00, 200.00, 0, '2020-03-02 10:55:58', NULL),
(182, '2020-03-02', 184, 12, 200.00, 200.00, 0.00, 0, '2020-03-02 11:09:30', NULL),
(183, '2020-03-02', 185, 9, 150.00, 150.00, 0.00, 0, '2020-03-02 11:25:18', NULL),
(184, '2020-03-02', 186, 8, 100.00, 100.00, 0.00, 0, '2020-03-02 11:46:13', NULL),
(185, '2020-03-02', 187, 5, 150.00, 150.00, 0.00, 0, '2020-03-02 12:09:28', NULL),
(186, '2020-03-02', 188, 4, 200.00, 200.00, 0.00, 0, '2020-03-02 12:36:59', NULL),
(187, '2020-03-02', 189, 5, 200.00, 200.00, 0.00, 0, '2020-03-02 12:40:43', NULL),
(188, '2020-03-02', 190, 12, 4500.00, 4500.00, 0.00, 0, '2020-03-02 12:41:27', NULL),
(189, '2020-03-02', 191, 10, 100.00, 100.00, 0.00, 0, '2020-03-02 13:48:45', NULL),
(190, '2020-03-02', 192, 10, 1300.00, 1300.00, 0.00, 0, '2020-03-02 13:52:00', NULL),
(191, '2020-03-02', 193, 10, 100.00, 100.00, 0.00, 0, '2020-03-02 13:52:53', NULL),
(192, '2020-03-02', 194, 10, 150.00, 150.00, 0.00, 0, '2020-03-02 13:53:54', NULL),
(193, '2020-03-02', 195, 10, 500.00, 500.00, 0.00, 0, '2020-03-02 13:55:53', NULL),
(194, '2020-03-02', 196, 10, 2000.00, 2000.00, 0.00, 0, '2020-03-02 13:56:40', NULL),
(195, '2020-03-02', 197, 11, 1000.00, 1000.00, 0.00, 0, '2020-03-02 13:57:56', NULL),
(196, '2020-03-02', 198, 11, 500.00, 500.00, 0.00, 0, '2020-03-02 13:58:56', NULL),
(197, '2020-03-02', 199, 11, 300.00, 300.00, 0.00, 0, '2020-03-02 14:00:04', NULL),
(198, '2020-03-02', 200, 4, 150.00, 150.00, 0.00, 0, '2020-03-02 15:14:44', NULL),
(199, '2020-03-02', 201, 4, 100.00, 100.00, 0.00, 0, '2020-03-02 15:15:31', NULL),
(200, '2020-03-02', 202, 5, 250.00, 250.00, 0.00, 0, '2020-03-02 15:16:11', NULL),
(201, '2020-03-02', 203, 10, 400.00, 400.00, 0.00, 0, '2020-03-02 15:16:50', NULL),
(202, '2020-03-03', 204, 15, 50.00, 50.00, 0.00, 0, '2020-03-03 12:25:52', NULL),
(203, '2020-03-03', 205, 15, 50.00, 50.00, 0.00, 0, '2020-03-03 12:28:12', NULL),
(204, '2020-03-03', 206, 9, 100.00, 100.00, 0.00, 0, '2020-03-03 12:31:29', NULL),
(205, '2020-03-03', 207, 9, 100.00, 100.00, 0.00, 0, '2020-03-03 12:32:19', NULL),
(206, '2020-03-03', 208, 9, 100.00, 100.00, 0.00, 0, '2020-03-03 12:33:27', NULL),
(207, '2020-03-03', 209, 5, 250.00, 250.00, 0.00, 0, '2020-03-03 12:34:25', NULL),
(208, '2020-03-03', 214, 5, 250.00, 250.00, 0.00, 0, '2020-03-03 12:39:26', NULL),
(209, '2020-03-03', 215, 9, 350.00, 350.00, 0.00, 0, '2020-03-03 12:40:17', NULL),
(210, '2020-03-03', 216, 9, 200.00, 200.00, 0.00, 0, '2020-03-03 12:41:16', NULL),
(211, '2020-03-04', 217, 9, 150.00, 150.00, 0.00, 0, '2020-03-04 04:58:15', NULL),
(212, '2020-03-04', 218, 16, 100.00, 100.00, 0.00, 0, '2020-03-04 05:10:59', NULL),
(214, '2020-03-04', 222, 5, 200.00, 200.00, 0.00, 0, '2020-03-04 06:08:42', NULL),
(215, '2020-03-04', 223, 9, 500.00, 500.00, 0.00, 0, '2020-03-04 06:09:47', NULL),
(216, '2020-03-04', 224, 8, 50.00, 50.00, 0.00, 0, '2020-03-04 06:13:16', NULL),
(217, '2020-03-04', 225, 4, 150.00, 150.00, 0.00, 0, '2020-03-04 06:21:32', NULL),
(218, '2020-03-04', 226, 5, 200.00, 200.00, 0.00, 0, '2020-03-04 06:42:55', NULL),
(219, '2020-03-04', 227, 9, 900.00, 900.00, 0.00, 0, '2020-03-04 06:43:53', NULL),
(220, '2020-03-04', 228, 5, 200.00, 200.00, 0.00, 0, '2020-03-04 07:22:22', NULL),
(221, '2020-03-04', 229, 14, 400.00, 400.00, 0.00, 0, '2020-03-04 07:26:47', NULL),
(222, '2020-03-04', 230, 5, 150.00, 150.00, 0.00, 0, '2020-03-04 08:23:03', NULL),
(223, '2020-03-04', 232, 5, 150.00, 150.00, 0.00, 0, '2020-03-04 08:24:37', NULL),
(224, '2020-03-04', 233, 8, 50.00, 50.00, 0.00, 0, '2020-03-04 08:25:45', NULL),
(225, '2020-03-04', 234, 9, 1600.00, 1600.00, 0.00, 0, '2020-03-04 08:33:02', NULL),
(226, '2020-03-04', 235, 5, 800.00, 800.00, 0.00, 0, '2020-03-04 08:47:56', NULL),
(227, '2020-03-04', 236, 5, 150.00, 150.00, 0.00, 0, '2020-03-04 09:54:09', NULL),
(228, '2020-03-04', 237, 8, 50.00, 50.00, 0.00, 0, '2020-03-04 11:02:41', NULL),
(229, '2020-03-04', 238, 4, 650.00, 650.00, 0.00, 0, '2020-03-04 11:05:07', NULL),
(230, '2020-03-04', 239, 9, 50.00, 50.00, 0.00, 0, '2020-03-04 11:06:27', NULL),
(231, '2020-03-04', 240, 4, 150.00, 150.00, 0.00, 0, '2020-03-04 11:57:17', NULL),
(232, '2020-03-04', 241, 5, 200.00, 200.00, 0.00, 0, '2020-03-04 11:58:02', NULL),
(233, '2020-03-04', 242, 5, 100.00, 100.00, 0.00, 0, '2020-03-04 12:27:00', NULL),
(234, '2020-03-04', 243, 16, 250.00, 250.00, 0.00, 0, '2020-03-04 12:42:43', NULL),
(235, '2020-03-04', 244, 8, 100.00, 100.00, 0.00, 0, '2020-03-04 12:45:03', NULL),
(236, '2020-03-04', 245, 16, 100.00, 100.00, 0.00, 0, '2020-03-04 12:46:29', NULL),
(237, '2020-03-04', 246, 11, 100.00, 100.00, 0.00, 0, '2020-03-04 12:48:12', NULL),
(238, '2020-03-04', 247, 4, 150.00, 150.00, 0.00, 0, '2020-03-04 12:50:31', NULL),
(239, '2020-03-04', 248, 4, 100.00, 100.00, 0.00, 0, '2020-03-04 15:03:41', NULL),
(240, '2020-03-04', 249, 5, 100.00, 100.00, 0.00, 0, '2020-03-04 15:05:22', NULL),
(241, '2020-03-05', 250, 9, 150.00, 150.00, 0.00, 0, '2020-03-05 06:09:11', NULL),
(242, '2020-03-05', 251, 9, 150.00, 150.00, 0.00, 0, '2020-03-05 06:10:10', NULL),
(243, '2020-03-05', 252, 4, 50.00, 50.00, 0.00, 0, '2020-03-05 06:10:39', NULL),
(244, '2020-03-05', 253, 9, 50.00, 50.00, 0.00, 0, '2020-03-05 06:11:22', NULL),
(245, '2020-03-05', 254, 8, 100.00, 100.00, 0.00, 0, '2020-03-05 06:35:37', NULL),
(246, '2020-03-05', 255, 9, 150.00, 150.00, 0.00, 0, '2020-03-05 10:01:22', NULL),
(247, '2020-03-05', 256, 5, 50.00, 50.00, 0.00, 0, '2020-03-05 10:02:49', NULL),
(248, '2020-03-05', 257, 5, 100.00, 100.00, 0.00, 0, '2020-03-05 10:03:49', NULL),
(249, '2020-03-05', 258, 8, 50.00, 50.00, 0.00, 0, '2020-03-05 10:04:30', NULL),
(250, '2020-03-05', 259, 4, 50.00, 50.00, 0.00, 0, '2020-03-05 10:19:08', NULL),
(251, '2020-03-05', 260, 11, 3500.00, 3500.00, 0.00, 0, '2020-03-05 11:45:20', NULL),
(252, '2020-03-05', 261, 10, 400.00, 400.00, 0.00, 0, '2020-03-05 12:07:03', NULL),
(253, '2020-03-05', 262, 10, 500.00, 500.00, 0.00, 0, '2020-03-05 12:09:59', NULL),
(254, '2020-03-05', 263, 10, 650.00, 650.00, 0.00, 0, '2020-03-05 13:27:03', NULL),
(255, '2020-03-05', 264, 4, 150.00, 150.00, 0.00, 0, '2020-03-05 14:32:01', NULL),
(256, '2020-03-05', 265, 5, 100.00, 100.00, 0.00, 0, '2020-03-05 14:33:22', NULL),
(257, '2020-03-05', 266, 8, 300.00, 300.00, 0.00, 0, '2020-03-05 14:37:12', NULL),
(258, '2020-03-05', 267, 5, 100.00, 100.00, 0.00, 0, '2020-03-05 14:40:49', NULL),
(259, '2020-03-06', 268, 6, 50.00, 50.00, 0.00, 0, '2020-03-06 05:31:45', NULL),
(260, '2020-03-06', 269, 8, 150.00, 150.00, 0.00, 0, '2020-03-06 05:32:54', NULL),
(261, '2020-03-06', 270, 9, 1050.00, 1050.00, 0.00, 0, '2020-03-06 05:34:11', NULL),
(262, '2020-03-06', 271, 12, 3500.00, 3500.00, 0.00, 0, '2020-03-06 05:35:19', NULL),
(263, '2020-03-06', 272, 9, 500.00, 500.00, 0.00, 0, '2020-03-06 06:14:43', NULL),
(264, '2020-03-06', 273, 9, 150.00, 150.00, 0.00, 0, '2020-03-06 06:15:36', NULL),
(265, '2020-03-06', 274, 4, 200.00, 200.00, 0.00, 0, '2020-03-06 06:26:42', NULL),
(266, '2020-03-06', 275, 8, 150.00, 150.00, 0.00, 0, '2020-03-06 06:33:08', NULL),
(267, '2020-03-06', 276, 9, 100.00, 100.00, 0.00, 0, '2020-03-06 08:05:05', NULL),
(268, '2020-03-06', 277, 4, 100.00, 100.00, 0.00, 0, '2020-03-06 08:06:08', NULL),
(269, '2020-03-06', 278, 8, 100.00, 100.00, 0.00, 0, '2020-03-06 08:07:27', NULL),
(270, '2020-03-06', 279, 15, 50.00, 0.00, 50.00, 0, '2020-03-06 08:08:56', NULL),
(271, '2020-03-06', 280, 4, 50.00, 50.00, 0.00, 0, '2020-03-06 08:09:33', NULL),
(272, '2020-03-06', 281, 4, 150.00, 150.00, 0.00, 0, '2020-03-06 09:13:59', NULL),
(273, '2020-03-06', 282, 9, 150.00, 150.00, 0.00, 0, '2020-03-06 09:15:01', NULL),
(274, '2020-03-06', 283, 8, 600.00, 600.00, 0.00, 0, '2020-03-06 09:38:19', NULL),
(276, '2020-03-06', 285, 9, 500.00, 500.00, 0.00, 0, '2020-03-06 09:46:26', NULL),
(277, '2020-03-06', 286, 14, 700.00, 700.00, 0.00, 0, '2020-03-06 09:53:22', NULL),
(278, '2020-03-06', 287, 9, 150.00, 150.00, 0.00, 0, '2020-03-06 10:23:00', NULL),
(279, '2020-03-06', 288, 9, 100.00, 100.00, 0.00, 0, '2020-03-06 10:48:04', NULL),
(280, '2020-03-06', 289, 8, 200.00, 150.00, 50.00, 0, '2020-03-06 10:50:49', NULL),
(281, '2020-03-06', 290, 8, 200.00, 150.00, 50.00, 0, '2020-03-06 11:01:48', NULL),
(282, '2020-03-06', 291, 6, 50.00, 50.00, 0.00, 0, '2020-03-06 11:02:40', NULL),
(283, '2020-03-06', 292, 12, 2500.00, 2500.00, 0.00, 0, '2020-03-06 12:03:02', NULL),
(284, '2020-03-06', 293, 10, 50.00, 50.00, 0.00, 0, '2020-03-06 12:16:26', NULL),
(285, '2020-03-06', 294, 16, 50.00, 50.00, 0.00, 0, '2020-03-06 12:17:13', NULL),
(286, '2020-03-06', 295, 10, 200.00, 200.00, 0.00, 0, '2020-03-06 12:18:30', NULL),
(287, '2020-03-06', 296, 11, 700.00, 700.00, 0.00, 0, '2020-03-06 12:24:17', NULL),
(288, '2020-03-07', 297, 4, 600.00, 600.00, 0.00, 0, '2020-03-07 05:33:10', NULL),
(289, '2020-03-07', 298, 4, 2000.00, 2000.00, 0.00, 0, '2020-03-07 05:34:05', NULL),
(290, '2020-03-07', 299, 8, 200.00, 200.00, 0.00, 0, '2020-03-07 06:44:12', NULL),
(291, '2020-03-07', 300, 5, 100.00, 100.00, 0.00, 0, '2020-03-07 06:48:00', NULL),
(292, '2020-03-07', 301, 8, 70.00, 70.00, 0.00, 0, '2020-03-07 07:45:08', NULL),
(293, '2020-03-07', 302, 4, 100.00, 100.00, 0.00, 0, '2020-03-07 08:05:58', NULL),
(294, '2020-03-07', 303, 5, 150.00, 150.00, 0.00, 0, '2020-03-07 08:17:33', NULL),
(295, '2020-03-07', 304, 8, 100.00, 100.00, 0.00, 0, '2020-03-07 08:18:18', NULL),
(296, '2020-03-07', 305, 8, 150.00, 150.00, 0.00, 0, '2020-03-07 08:55:51', NULL),
(297, '2020-03-07', 306, 5, 170.00, 170.00, 0.00, 0, '2020-03-07 10:45:45', NULL),
(298, '2020-03-07', 307, 8, 150.00, 150.00, 0.00, 0, '2020-03-07 11:04:33', NULL),
(299, '2020-03-07', 308, 5, 100.00, 100.00, 0.00, 0, '2020-03-07 11:19:15', NULL),
(300, '2020-03-07', 309, 4, 100.00, 100.00, 0.00, 0, '2020-03-07 11:24:07', NULL),
(301, '2020-03-07', 310, 10, 100.00, 100.00, 0.00, 0, '2020-03-07 11:36:30', NULL),
(302, '2020-03-07', 311, 10, 200.00, 200.00, 0.00, 0, '2020-03-07 11:37:20', NULL),
(303, '2020-03-07', 312, 10, 150.00, 150.00, 0.00, 0, '2020-03-07 11:38:12', NULL),
(304, '2020-03-07', 313, 10, 200.00, 200.00, 0.00, 0, '2020-03-07 11:39:12', NULL),
(306, '2020-03-21', 13, 4, 20.00, 20.00, 0.00, 0, '2020-03-21 10:47:41', NULL),
(307, '2020-03-21', 315, 4, 300.00, 300.00, 0.00, 1, '2020-03-21 11:47:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'anuinfotech2009@gmail.com', NULL, '$2y$10$qBIudxdq1vIE6oLCY8JXKuqjTJR4z7OI6hgd706TFcmlyNXC58L1i', 'MAr1jNt72LgI0ZzxHsMrsm1snlK2MzMVPO37TIWr5IbcZjOoVldgZShLc60j', '2020-01-27 10:06:41', '2020-01-27 10:06:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `material_details`
--
ALTER TABLE `material_details`
  ADD PRIMARY KEY (`material_detail_id`),
  ADD KEY `material_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `material_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `services_category_id_foreign` (`category_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`service_detail_id`),
  ADD KEY `service_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `service_details_service_id_foreign` (`service_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `material_details`
--
ALTER TABLE `material_details`
  MODIFY `material_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `service_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `material_details`
--
ALTER TABLE `material_details`
  ADD CONSTRAINT `material_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `material_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `service_details`
--
ALTER TABLE `service_details`
  ADD CONSTRAINT `service_details_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `service_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
