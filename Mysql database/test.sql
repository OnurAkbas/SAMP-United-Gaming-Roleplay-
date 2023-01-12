-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2014 at 10:38 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `admin` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `time` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bizz`
--

CREATE TABLE IF NOT EXISTS `bizz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bOwned` int(11) NOT NULL DEFAULT '0',
  `bType` int(11) NOT NULL DEFAULT '0',
  `bOwner` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bMessage` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bName` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bLocation` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bEntranceX` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bEntranceY` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bEntranceZ` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bExitX` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bExitY` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bExitZ` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bInt` int(11) NOT NULL,
  `bVW` int(11) NOT NULL,
  `bLocked` int(11) NOT NULL,
  `bBuyPrice` int(11) NOT NULL,
  `bEntranceCost` int(11) NOT NULL,
  `bVault` int(11) NOT NULL,
  `bProducts` int(11) NOT NULL,
  `bSupplyStatus` int(11) NOT NULL,
  `Time` int(6) NOT NULL DEFAULT '10080',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bizz`
--

INSERT INTO `bizz` (`id`, `bOwned`, `bType`, `bOwner`, `bMessage`, `bName`, `bLocation`, `bEntranceX`, `bEntranceY`, `bEntranceZ`, `bExitX`, `bExitY`, `bExitZ`, `bInt`, `bVW`, `bLocked`, `bBuyPrice`, `bEntranceCost`, `bVault`, `bProducts`, `bSupplyStatus`, `Time`) VALUES
(1, 0, 3, 'The State', 'Welcome , Enjoy shopping ! (( /buy ))', 'Get your mudafucka chinese clothes here', 'Ganton', '2244.307128', '-1665.250366', '15.476552', '207.736953', '-110.872970', '1005.132812', 15, 1, 1, 0, 0, 0, 1334, 0, 20019),
(2, 0, 0, 'The State', 'Welcome to the hidden store.', 'The hidden Store', 'Market', '1104.627807', '-1370.477294', '13.984375', '-27.440895', '-31.761404', '1003.557250', 4, 2, 1, 0, 0, 0, 0, 0, 20080),
(3, 0, 0, 'The State', 'Welcome ! (( /buy ))', '24/7', 'Idlewood', '2130.240966', '-1761.959716', '13.562500', '-31.056299', '-92.003074', '1003.546875', 18, 3, 1, 0, 0, 0, 549, 0, 8110),
(4, 0, 0, 'The State', '', 'Piachi General Store', 'Verdant Bluffs', '1398.605590', '-1881.752197', '13.546875', '-27.266893', '-58.260326', '1003.546875', 6, 4, 1, 0, 0, 0, 1178, 0, 20080),
(5, 0, 0, 'The State', 'Welcome! (( /buy ))', 'Hollers 24/7', 'Mulholland', '1315.519287', '-897.687622', '39.578125', '-30.823677', '-91.765464', '1003.546875', 18, 5, 1, 0, 0, 0, 1065, 0, 16286),
(6, 0, 1, 'The State', 'Welcome ', 'Lock & Load', 'Willowfield', '2400.783203', '-1981.878662', '13.546875', '296.813110', '-111.899131', '1001.515625', 6, 6, 1, 0, 0, 0, 0, 0, 20023),
(7, 0, 0, 'The State', 'welcome ~ (/buy)', 'Indomaret', 'Ganton', '2423.763427', '-1743.089843', '13.540184', '-25.884004', '-188.253036', '1003.546875', 17, 7, 1, 0, 0, 0, 171, 0, 20080),
(8, 0, 5, 'The State', 'Amazing Food From Worldwide! (/buy)', 'Enburgs Donut Shop', 'Market', '1038.128662', '-1340.732177', '13.745100', '362.993652', '-75.025665', '1001.507812', 10, 8, 1, 0, 0, 0, 1105, 0, 16039),
(9, 0, 4, 'The State', 'We are a club, come party!', 'ClubHart', 'Idlewood', '1836.829589', '-1682.671264', '13.331583', '493.194183', '-24.651596', '1000.679687', 17, 9, 1, 0, 0, 0, 303, 0, 10818),
(10, 0, 5, 'The State', 'Welcome to the Ancelotti Restaurant , No Ancelotti Restaurant', 'Ancelotti Restaurant', 'Verdant Bluffs', '1567.716186', '-1897.725097', '13.560811', '677.281066', '-463.324829', '-25.617187', 1, 10, 1, 0, 0, 0, 1511, 0, 20022),
(11, 0, 4, 'The State', 'Welcome To Kodama Pig Pen', 'Kodama Pig Pen', 'Idlewood', '1877.946044', '-1737.053466', '13.329153', '2233.940429', '1714.439697', '1012.382812', 1, 11, 1, 0, 0, 0, 192, 0, 20022),
(12, 0, 5, 'The State', 'Welcome! to the Casino! Have fun!', 'Casino! Open!', 'Temple', '1199.282714', '-918.140380', '43.123054', '460.554565', '-88.621040', '999.554687', 4, 12, 1, 0, 0, 0, 1109, 0, 20080),
(13, 0, 5, 'The State', 'Welcome to eat and do come again!', '', 'Idlewood', '2104.938720', '-1806.501464', '13.554677', '377.092407', '-192.718261', '1000.640136', 17, 13, 1, 0, 0, 0, 849, 0, 19872),
(14, 0, 0, 'The State', '', '', 'Whetstone', '-2290.583740', '-1644.721557', '483.498443', '-100.235130', '-24.784786', '1000.718750', 3, 14, 1, 0, 0, 0, 0, 0, 20079),
(15, 0, 2, 'The State', '', '', 'Mulholland', '1087.736328', '-923.008056', '43.390625', '-100.528694', '-25.031463', '1000.718750', 3, 15, 1, 0, 0, 0, 0, 0, 20080),
(16, 0, 0, 'The State', '', '', 'Whetstone', '-2288.751708', '-1643.523559', '483.500061', '-204.664520', '-27.339324', '1002.273437', 16, 16, 1, 0, 0, 0, 0, 0, 20079),
(17, 0, 3, 'The State', '', 'Gun Shop ^^', 'Downtown', '1456.536743', '-1137.760498', '23.956548', '285.823181', '-86.221023', '1001.522888', 4, 17, 1, 0, 0, 0, 0, 0, 19887),
(18, 0, 0, 'The State', '', '', 'Idlewood', '1833.067016', '-1842.611938', '13.578125', '-25.885513', '-187.935089', '1003.546875', 17, 18, 1, 0, 0, 0, 8912, 0, 20023),
(19, 0, 0, 'The State', '• Welcome to the 27/4! • (/buy)', '', 'Idlewood', '1928.940917', '-1776.360839', '13.546875', '-25.980936', '-187.780227', '1003.546875', 17, 19, 1, 0, 0, 0, 398, 0, 20022),
(20, 0, 1, 'The State', 'Welcome! get a weapon license then ...::L...::Lock N Load::...', '...::Lock N Load::...', 'Market', '1368.938720', '-1279.660522', '13.546875', '285.609222', '-41.206573', '1001.515625', 1, 20, 1, 0, 0, 0, 17938, 0, 20000),
(21, 0, 1, 'The State', 'Welcome to WAZZA [/buy]', 'WAZZZZZA', 'Idlewood', '2114.311279', '-1742.474975', '13.554714', '285.907623', '-86.781929', '1001.522888', 4, 21, 1, 0, 0, 0, 241, 0, 20022),
(22, 0, 2, 'The State', 'Enjoy your stay, Eat all you want! Need EPizza Palace', 'Pizza Palace', 'El Corona', '1940.007202', '-2115.755615', '13.695302', '372.435913', '-133.317855', '1001.492187', 5, 22, 1, 0, 0, 0, 6899, 0, 20080),
(23, 0, 4, 'The State', 'Welcome to Arrol (( /buy ))', 'Club Ancelotti', 'Ganton', '2309.927490', '-1643.376342', '14.827047', '964.583129', '-53.289638', '1001.117187', 3, 23, 1, 0, 0, 0, 4988, 0, 20022),
(24, 0, 4, 'The State', 'Welcome To The Casino', 'The Legal Casino', 'Whetstone', '-2290.291992', '-1632.474609', '483.710418', '2019.012451', '1017.518920', '996.875000', 10, 24, 1, 0, 0, 0, 229, 0, 0),
(25, 0, 0, 'The State', 'Every Little helps.. ((/buy))', 'Tesco', 'Mulholland', '1000.269104', '-920.275085', '42.328125', '-27.264247', '-58.264007', '1003.546875', 6, 25, 1, 0, 0, 0, 986, 0, 20075),
(26, 0, 3, 'The State', 'Welcome Buy best guns from here.', '', 'Rodeo', '499.416015', '-1360.591064', '16.369148', '316.432312', '-170.280410', '999.593750', 6, 26, 1, 0, 0, 0, 343, 0, 20079),
(27, 0, 0, 'The State', 'Welcome to the Daily Deluxe! Come again!', 'Daily Deluxe Market', 'Commerce', '1352.757080', '-1759.028442', '13.507802', '-27.495622', '-58.274894', '1003.546875', 6, 27, 1, 0, 0, 0, 7462, 0, 17703),
(28, 0, 4, 'The State', 'Club', 'Alhambra ', 'Whetstone', '-2291.386230', '-1627.492797', '483.756408', '493.540344', '-24.960498', '1000.671875', 17, 28, 1, 0, 0, 0, 999, 0, 0),
(29, 0, 4, 'The State', 'Welcome to the FOOD4U', 'Food4U', 'East Los Santos', '2348.388427', '-1372.848754', '24.398437', '-27.088752', '-57.933513', '1003.546875', 6, 29, 1, 0, 0, 0, 4829, 0, 20080),
(30, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 10080),
(31, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 10080),
(32, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 10080),
(33, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 10080);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarModel` int(11) NOT NULL,
  `CarX` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarY` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarZ` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarAngle` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarColor1` int(11) NOT NULL,
  `CarColor2` int(11) NOT NULL,
  `CarLock` int(11) NOT NULL,
  `CarLicense` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `CarCost` int(11) NOT NULL DEFAULT '0',
  `Component0` int(11) NOT NULL DEFAULT '0',
  `Component1` int(11) NOT NULL DEFAULT '0',
  `Component2` int(11) NOT NULL DEFAULT '0',
  `Component3` int(11) NOT NULL DEFAULT '0',
  `Component4` int(11) NOT NULL DEFAULT '0',
  `Component5` int(11) NOT NULL DEFAULT '0',
  `Component6` int(11) NOT NULL DEFAULT '0',
  `Component7` int(11) NOT NULL DEFAULT '0',
  `Component8` int(11) NOT NULL DEFAULT '0',
  `Component9` int(11) NOT NULL DEFAULT '0',
  `Component10` int(11) NOT NULL DEFAULT '0',
  `Component11` int(11) NOT NULL DEFAULT '0',
  `Component12` int(11) NOT NULL DEFAULT '0',
  `Component13` int(11) NOT NULL DEFAULT '0',
  `CarGun` int(11) NOT NULL DEFAULT '0',
  `CarGun1` int(11) NOT NULL DEFAULT '0',
  `CarGun2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE IF NOT EXISTS `families` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FamilyTaken` int(11) NOT NULL,
  `FamilyName` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyMOTD` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyLeader` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyBank` int(11) NOT NULL,
  `FamilyCash` int(11) NOT NULL,
  `FamilySafe` int(11) NOT NULL,
  `FamilySafePos` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilySafePos1` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilySafePos2` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyPot` int(11) NOT NULL,
  `FamilyCrack` int(11) NOT NULL,
  `FamilyMats` int(11) NOT NULL,
  `FamilyRank` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyRank1` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyRank2` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyRank3` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyRank4` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyRank5` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FamilyMembers` int(11) NOT NULL,
  `FamilySkins` int(11) NOT NULL,
  `FamilySkin1` int(11) NOT NULL,
  `FamilySkin2` int(11) NOT NULL,
  `FamilySkin3` int(11) NOT NULL,
  `FamilySkin4` int(11) NOT NULL,
  `FamilySkin5` int(11) NOT NULL,
  `FamilySkin6` int(11) NOT NULL,
  `FamilySkin7` int(11) NOT NULL,
  `FamilySkin8` int(11) NOT NULL,
  `FStrikes` int(11) NOT NULL,
  `FEntrancex` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FEntrancey` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FEntrancez` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FExitx` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FExity` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FExitz` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FInt` int(11) NOT NULL,
  `FVW` int(11) NOT NULL,
  `FLock` int(11) NOT NULL,
  `FamilyColor` int(11) NOT NULL DEFAULT '0',
  `FCar` int(11) NOT NULL,
  `FCarx` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCary` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCarz` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCara` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCarcol` int(11) NOT NULL,
  `FCarco2` int(11) NOT NULL,
  `FCar2` int(11) NOT NULL,
  `FCar2x` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar2y` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar2z` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar2a` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar2col` int(11) NOT NULL,
  `FCar2co2` int(11) NOT NULL,
  `FCar3` int(11) NOT NULL,
  `FCar3x` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar3y` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar3z` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar3a` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FCar3col` int(11) NOT NULL,
  `FCar3co2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `FamilyTaken`, `FamilyName`, `FamilyMOTD`, `FamilyLeader`, `FamilyBank`, `FamilyCash`, `FamilySafe`, `FamilySafePos`, `FamilySafePos1`, `FamilySafePos2`, `FamilyPot`, `FamilyCrack`, `FamilyMats`, `FamilyRank`, `FamilyRank1`, `FamilyRank2`, `FamilyRank3`, `FamilyRank4`, `FamilyRank5`, `FamilyMembers`, `FamilySkins`, `FamilySkin1`, `FamilySkin2`, `FamilySkin3`, `FamilySkin4`, `FamilySkin5`, `FamilySkin6`, `FamilySkin7`, `FamilySkin8`, `FStrikes`, `FEntrancex`, `FEntrancey`, `FEntrancez`, `FExitx`, `FExity`, `FExitz`, `FInt`, `FVW`, `FLock`, `FamilyColor`, `FCar`, `FCarx`, `FCary`, `FCarz`, `FCara`, `FCarcol`, `FCarco2`, `FCar2`, `FCar2x`, `FCar2y`, `FCar2z`, `FCar2a`, `FCar2col`, `FCar2co2`, `FCar3`, `FCar3x`, `FCar3y`, `FCar3z`, `FCar3a`, `FCar3col`, `FCar3co2`) VALUES
(7, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 1, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0),
(3, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 5, 124, 120, 186, 59, 60, 93, 293, 0, 0, '1318.426879', '-1182.525146', '23.602565', '-2634.282714', '1409.672363', '906.464660', 3, 2, 1, 0, 560, '1328.882446', '-1166.181274', '23.828125', '87.989883', 0, 0, 560, '1328.089233', '-1171.631591', '23.777683', '94.979156', 0, 0, 487, '1327.867797', '-1188.055053', '23.578125', '359.820861', 0, 0),
(4, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 0, 111, 112, 113, 120, 169, 12, 0, 0, 0, '-1005.310241', '657.789184', '-40.103179', '1298.900024', '-796.996582', '1084.007812', 5, 3, 1, 0, 579, '1255.150268', '-804.145629', '84.140625', '1.646036', 0, 0, 560, '1249.292724', '-804.221313', '84.140625', '354.377136', 0, 0, 521, '1242.630371', '-803.197875', '84.140625', '358.965789', 0, 0),
(2, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 8, 124, 98, 119, 125, 258, 126, 127, 165, 0, '952.513000', '-909.112060', '45.765625', '1260.654785', '-785.460571', '1091.906250', 5, 1, 1, 0, 507, '973.425781', '-914.080322', '45.765625', '97.478897', 0, 0, 426, '959.325500', '-900.468261', '45.765625', '184.922836', 0, 0, 409, '953.194702', '-935.642150', '42.765625', '11.650732', 0, 0),
(1, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 4, 107, 105, 106, 107, 146, 273, 0, 0, 0, '2495.416015', '-1690.924438', '14.765625', '2495.926757', '-1692.984863', '1014.742187', 3, 0, 1, 0, 492, '2491.312744', '-1682.386230', '13.336931', '90.600608', 16, 16, 492, '2505.397460', '-1676.739868', '13.375972', '139.551239', 16, 16, 492, '2508.152343', '-1666.364257', '13.398895', '194.361724', 16, 16),
(6, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 1, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0),
(5, 0, 'None', 'None', 'None', 0, 0, 0, '0.000000', '0.000000', '0.000000', 0, 0, 0, 'Outsider', 'Associate', 'Soldier', 'Capo', 'Underboss', 'Godfather', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 1, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0, 0, '0.000000', '0.000000', '0.000000', '0.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hOwned` int(11) NOT NULL,
  `hOwner` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hEntrancex` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hEntrancey` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hEntrancez` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hExitx` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hExity` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hExitz` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hLocation` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hValue` int(11) NOT NULL,
  `hInt` int(11) NOT NULL,
  `hLock` int(11) NOT NULL,
  `hRooms` int(11) NOT NULL,
  `hRent` int(11) NOT NULL,
  `hRentabil` int(11) NOT NULL,
  `hTakings` int(11) NOT NULL,
  `hDate` int(11) NOT NULL,
  `hLevel` int(11) NOT NULL,
  `hCash` int(11) NOT NULL,
  `hMaterials` int(11) NOT NULL,
  `hPot` int(11) NOT NULL,
  `hCrack` int(11) NOT NULL,
  `hSlot1` int(11) NOT NULL,
  `hSlot2` int(11) NOT NULL,
  `hSlot3` int(11) NOT NULL,
  `hSlot4` int(11) NOT NULL,
  `hSlot5` int(11) NOT NULL,
  `hGun1` int(11) NOT NULL,
  `hGun2` int(11) NOT NULL,
  `hGun3` int(11) NOT NULL,
  `hGun4` int(11) NOT NULL,
  `hGun5` int(11) NOT NULL,
  `hVW` int(11) NOT NULL,
  `hDay` int(11) NOT NULL,
  `hMonth` int(11) NOT NULL,
  `hAlarm` int(11) NOT NULL,
  `hTime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `hOwned`, `hOwner`, `hEntrancex`, `hEntrancey`, `hEntrancez`, `hExitx`, `hExity`, `hExitz`, `hLocation`, `hValue`, `hInt`, `hLock`, `hRooms`, `hRent`, `hRentabil`, `hTakings`, `hDate`, `hLevel`, `hCash`, `hMaterials`, `hPot`, `hCrack`, `hSlot1`, `hSlot2`, `hSlot3`, `hSlot4`, `hSlot5`, `hGun1`, `hGun2`, `hGun3`, `hGun4`, `hGun5`, `hVW`, `hDay`, `hMonth`, `hAlarm`, `hTime`) VALUES
(1, 0, 'The State', '2067.059082', '-1731.788452', '14.206624', '2324.435302', '-1147.116577', '1050.710083', 'Idlewood', 380000, 12, 1, 0, 500, 0, 26500, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 24, 4, 1, 20074),
(2, 0, 'The State', '2514.125976', '-1691.192138', '14.046030', '2324.435302', '-1147.116577', '1050.710083', 'Ganton', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 2, 60, 20080),
(3, 0, 'The State', '921.733886', '-1287.541992', '14.406250', '244.500000', '305.000000', '999.148376', 'Vinewood', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 4, 1, 0),
(4, 0, 'The State', '254.465164', '-1367.245727', '53.109375', '249.878295', '1034.862670', '1084.726562', 'Richman', 350000, 7, 1, 0, 10, 0, 39600, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 26, 4, 1, 19872),
(5, 0, 'The State', '2513.729248', '-1650.269287', '14.355666', '235.341003', '1189.246826', '1080.257812', 'Ganton', 55000, 3, 1, 0, 1000, 1, 3000, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 25, 4, 1, 18963),
(6, 0, 'The State', '2523.273193', '-1679.366088', '15.496994', '447.046905', '1399.625488', '1084.304687', 'Ganton', 200000, 2, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 4, 60, 7753),
(7, 0, 'The State', '-407.219451', '-1426.560424', '26.318075', '235.341003', '1189.246826', '1080.257812', 'Flint Range Flint County', 0, 3, 1, 0, 500, 1, 29500, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 1, 1, 0),
(8, 0, 'The State', '2469.286132', '-1646.504882', '13.780097', '386.118988', '1471.797485', '1080.187500', 'Ganton', 100000, 15, 1, 0, 1000, 1, 28000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 12, 2, 60, 0),
(9, 0, 'The State', '2459.292968', '-1691.659667', '13.548212', '1226.575805', '-812.207214', '1084.007812', 'Ganton', 125000, 5, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 4, 60, 9008),
(10, 0, 'The State', '-217.659484', '-1956.225097', '3.554687', '2324.435302', '-1147.116577', '1050.710083', 'Flint County', 380000, 12, 1, 0, 1000, 1, 1000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 30, 10, 700, 10008),
(11, 0, 'The State', '2409.156494', '-1673.965576', '13.603240', '244.500000', '305.000000', '999.148376', 'Ganton', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 3, 11, 60, 10080),
(12, 0, 'The State', '2384.626220', '-1675.835815', '15.245691', '244.500000', '305.000000', '999.148376', 'Ganton', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 5, 11, 60, 10080),
(13, 0, 'The State', '2413.787597', '-1647.047851', '14.011916', '447.046905', '1399.625488', '1084.304687', 'Ganton', 200000, 2, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 16, 9, 60, 60),
(14, 0, 'The State', '2368.273193', '-1675.339721', '14.168166', '244.500000', '305.000000', '999.148376', 'Ganton', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 19, 2, 60, 0),
(15, 0, 'The State', '2327.275146', '-1681.819458', '14.929677', '235.341003', '1189.246826', '1080.257812', 'Ganton', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 28, 4, 1, 20020),
(16, 0, 'The State', '2362.850585', '-1643.234985', '14.351552', '244.500000', '305.000000', '999.148376', 'Ganton', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 12, 4, 60, 8991),
(17, 0, 'The State', '2402.596923', '-1715.394287', '14.132802', '385.012084', '1471.798339', '1080.187500', 'Ganton', 170000, 15, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 30, 9, 60, 60),
(18, 0, 'The State', '2282.277587', '-1641.447265', '15.889780', '2324.435302', '-1147.116577', '1050.710083', 'Ganton', 380000, 12, 1, 0, 1000, 0, 14000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 26, 3, 60, 20078),
(19, 0, 'The State', '2847.141601', '-1309.888916', '14.679483', '2261.958984', '-1135.900024', '1050.632812', 'East Beach', 60000, 10, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 5, 11, 700, 10079),
(20, 0, 'The State', '1111.360839', '-976.443481', '42.765625', '301.299987', '306.299987', '1003.539123', 'Temple', 70000, 4, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 4, 4, 1, 1408),
(21, 0, 'The State', '2244.280517', '-1637.941284', '15.907402', '235.341003', '1189.246826', '1080.257812', 'Ganton', 55000, 3, 1, 0, 1, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 5, 1, 60, 0),
(22, 0, 'The State', '2472.296630', '-962.040283', '80.525466', '244.500000', '305.000000', '999.148376', 'Las Colinas', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 8, 10, 0, 60),
(23, 0, 'The State', '2250.491943', '-1280.170166', '25.476562', '244.500000', '305.000000', '999.148376', 'Jefferson', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 17, 9, 60, 60),
(24, 0, 'The State', '2065.101318', '-1703.468017', '14.148427', '301.299987', '306.299987', '1003.539123', 'Idlewood', 70000, 4, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 28, 4, 1, 20078),
(25, 0, 'The State', '2308.846679', '-1714.649047', '14.649595', '447.046905', '1399.625488', '1084.304687', 'Ganton', 200000, 2, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 6, 11, 60, 0),
(26, 0, 'The State', '2155.519287', '-1699.031127', '15.085927', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 50, 1, 200, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 28, 11, 60, 0),
(27, 0, 'The State', '-175.844268', '-1944.419433', '3.554687', '244.500000', '305.000000', '999.148376', 'Flint County', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 1, 4, 60, 10094),
(28, 0, 'The State', '2247.123535', '-1796.038574', '13.546875', '235.341003', '1189.246826', '1080.257812', 'Ganton', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 11, 60, 0),
(29, 0, 'The State', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 10, 0, 10080),
(30, 0, 'The State', '2066.566894', '-1716.816406', '13.805846', '2324.435302', '-1147.116577', '1050.710083', 'Idlewood', 380000, 12, 1, 0, 1, 0, 85, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 12, 2, 700, 0),
(31, 0, 'The State', '980.370178', '-677.161254', '121.976257', '2324.435302', '-1147.116577', '1050.710083', 'Mulholland', 380000, 12, 1, 0, 500, 0, 27000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 28, 4, 0, 20020),
(32, 0, 'The State', '2307.215087', '-1785.681030', '13.557271', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(33, 0, 'The State', '-401.505645', '-1419.804077', '26.328125', '447.046905', '1399.625488', '1084.304687', 'Flint Range Flint County', 0, 2, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 5, 4, 700, 2982),
(34, 0, 'The State', '2066.855468', '-1656.365234', '14.132802', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 1000, 0, 8000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 14, 2, 60, 20079),
(35, 0, 'The State', '2067.562255', '-1643.850097', '14.136316', '22.859100', '1404.907470', '1084.429687', 'Idlewood', 125000, 5, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 30, 3, 700, 20021),
(36, 0, 'The State', '2067.698242', '-1629.091186', '14.206624', '22.859100', '1404.907470', '1084.429687', 'Idlewood', 125000, 5, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 17, 11, 1, 0),
(37, 0, 'The State', '2345.230712', '-1785.615600', '13.546875', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(38, 0, 'The State', '2126.713134', '-1320.722778', '26.624111', '140.307174', '1366.132324', '1083.859375', 'Jefferson', 50000, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 11, 4, 0, 8074),
(39, 0, 'The State', '2148.612548', '-1319.746093', '25.743345', '-260.732177', '1456.625366', '1084.367187', 'Jefferson', 50000, 4, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 22, 9, 60, 60),
(40, 0, 'The State', '2016.544677', '-1641.531494', '14.112874', '2324.435302', '-1147.116577', '1050.710083', 'Idlewood', 380000, 12, 1, 0, 50, 1, 56150, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 26, 4, 1, 20041),
(41, 0, 'The State', '315.875946', '-1769.430053', '4.622579', '249.878295', '1034.862670', '1084.726562', 'Santa Maria Beach', 350000, 7, 1, 0, 50, 1, 350, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 28, 4, 1, 20020),
(42, 0, 'The State', '712.067443', '-498.912628', '16.335937', '235.341003', '1189.246826', '1080.257812', 'Dillimore Red County', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 12, 4, 60, 20076),
(43, 0, 'The State', '2016.199218', '-1716.940795', '14.125000', '235.341003', '1189.246826', '1080.257812', 'Idlewood', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 3, 4, 60, 20080),
(44, 0, 'The State', '2015.348632', '-1732.567382', '14.234375', '235.341003', '1189.246826', '1080.257812', 'Idlewood', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 27, 4, 1, 20021),
(45, 0, 'The State', '690.660339', '-1275.506713', '13.560066', '235.341003', '1189.246826', '1080.257812', 'Vinewood', 55000, 3, 1, 0, 1000, 1, 2000, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 5, 4, 1, 2725),
(46, 0, 'The State', '2144.204589', '-1663.322143', '15.085927', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 27, 4, 60, 20020),
(47, 0, 'The State', '2150.917236', '-1671.892700', '15.085927', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 21, 12, 60, 20060),
(48, 0, 'The State', '2163.477783', '-1660.746459', '15.085927', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 22, 4, 60, 16559),
(49, 0, 'The State', '2142.781738', '-1605.276611', '14.351552', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 12, 4, 60, 20076),
(50, 0, 'The State', '2750.223144', '-1238.652343', '61.524539', '234.231765', '1063.968261', '1084.211914', 'East Beach', 50000, 6, 1, 0, 500, 0, 9000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 9, 4, 700, 7794),
(51, 0, 'The State', '-539.969299', '-506.275421', '25.523437', '1226.575805', '-812.207214', '1084.007812', 'Fallen Tree Red County', 125000, 5, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 1, 11, 1, 0),
(52, 0, 'The State', '2750.224853', '-1205.529052', '67.484375', '2324.435302', '-1147.116577', '1050.710083', 'East Beach', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 8, 11, 1, 0),
(53, 0, 'The State', '2750.206787', '-1222.218750', '64.601562', '295.261810', '1474.687133', '1080.257812', 'East Beach', 255000, 15, 1, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 5, 11, 60, 10076),
(54, 0, 'The State', '2775.996337', '-1245.389526', '49.568813', '267.100006', '305.000000', '999.148376', 'East Beach', 55000, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 7, 4, 1, 5049),
(55, 0, 'The State', '2169.062011', '-1815.223999', '13.546875', '744.444091', '1437.619750', '1102.703125', 'Idlewood', 385000, 6, 1, 0, 100, 1, 400, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 12, 2, 1, 20079),
(56, 0, 'The State', '691.162658', '-506.316802', '16.335937', '1226.575805', '-812.207214', '1084.007812', 'Dillimore Red County', 125000, 5, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 27, 4, 1, 20019),
(57, 0, 'The State', '836.167785', '-894.706176', '68.768898', '249.878295', '1034.862670', '1084.726562', 'Mulholland', 350000, 7, 1, 0, 1000, 1, 6000, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 3, 3, 1, 0),
(58, 0, 'The State', '695.014282', '-500.126770', '16.335937', '244.500000', '305.000000', '999.148376', 'Dillimore Red County', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 12, 11, 60, 10049),
(59, 0, 'The State', '2151.286621', '-1598.516723', '14.345761', '235.341003', '1189.246826', '1080.257812', 'Idlewood', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 27, 4, 60, 20019),
(60, 0, 'The State', '-401.304473', '-1433.155517', '26.064861', '235.341003', '1189.246826', '1080.257812', 'Flint Range Flint County', 0, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 14, 4, 60, 20056),
(61, 0, 'The State', '2191.324951', '-1455.400146', '25.953979', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(62, 0, 'The State', '2194.350585', '-1442.662231', '26.073816', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(63, 0, 'The State', '2196.328125', '-1404.183837', '25.948816', '244.500000', '305.000000', '999.148376', 'Jefferson', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 16, 2, 60, 0),
(64, 0, 'The State', '1332.074218', '-633.358642', '109.134902', '2324.435302', '-1147.116577', '1050.710083', 'Mulholland', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 16, 2, 60, 0),
(65, 0, 'The State', '2184.820800', '-1364.043334', '25.829282', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(66, 0, 'The State', '2258.046386', '168.338836', '28.153551', '385.012084', '1471.798339', '1080.187500', 'Palomino Creek Red Count', 170000, 15, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 22, 4, 1, 16035),
(67, 0, 'The State', '2149.856445', '-1433.771850', '26.070312', '244.500000', '305.000000', '999.148376', 'Jefferson', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 12, 2, 60, 20079),
(68, 0, 'The State', '2147.292724', '-1366.380249', '25.641782', '267.100006', '305.000000', '999.148376', 'Jefferson', 55000, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 21, 4, 60, 15220),
(69, 0, 'The State', '2100.946289', '-1321.739257', '25.953125', '2365.235839', '-1135.003051', '1050.875000', 'Jefferson', 50000, 8, 1, 0, 1000, 1, 7000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 8, 4, 0, 20077),
(70, 0, 'The State', '2132.381347', '-1280.175292', '25.890625', '376.299987', '1417.199951', '1081.328125', 'Jefferson', 250000, 15, 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 13, 9, 60, 60),
(71, 0, 'The State', '2110.922607', '-1244.214355', '25.851562', '24.005048', '1340.320068', '1084.375000', 'Jefferson', 50000, 10, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 3, 4, 60, 0),
(72, 0, 'The State', '2091.058349', '-1278.345458', '26.179687', '2317.870117', '-1026.591796', '1050.217773', 'Jefferson', 50000, 9, 1, 0, 500, 0, 16000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 6, 1, 60, 20052),
(73, 0, 'The State', '2091.326660', '-1184.862792', '27.057060', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(74, 0, 'The State', '2092.239990', '-1166.124267', '26.585937', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(75, 0, 'The State', '-206.810470', '-1906.851318', '5.007812', '244.500000', '305.000000', '999.148376', 'Flint County', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 60, 60),
(76, 0, 'The State', '2094.512939', '-1123.125732', '27.689872', '244.500000', '305.000000', '999.148376', 'Las Colinas', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 20, 11, 60, 10078),
(77, 0, 'The State', '2022.819946', '-1120.269409', '26.421045', '244.500000', '305.000000', '999.148376', 'Glen Park', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 4, 1, 60, 0),
(78, 0, 'The State', '1939.154541', '-1114.796142', '27.452295', '385.012084', '1471.798339', '1080.187500', 'Glen Park', 170000, 15, 1, 0, 1, 0, 30, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 9, 4, 60, 7819),
(79, 0, 'The State', '1955.123046', '-1114.726196', '27.830497', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(80, 0, 'The State', '1321.780761', '352.463592', '19.554687', '2196.625000', '-1204.178955', '1049.023437', 'Montgomery Red County', 50000, 6, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 9, 11, 60, 10072),
(81, 0, 'The State', '1886.451049', '-1113.943481', '26.275810', '2324.435302', '-1147.116577', '1050.710083', 'Glen Park', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 14, 10, 700, 60),
(82, 0, 'The State', '2061.163574', '-1075.421630', '25.669067', '244.500000', '305.000000', '999.148376', 'Las Colinas', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 9, 9, 60, 60),
(83, 0, 'The State', '2075.172607', '-1081.846923', '25.680185', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(84, 0, 'The State', '2469.501220', '-1955.153564', '13.617893', '239.300506', '1082.379150', '1084.187500', 'Willowfield', 300000, 6, 1, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 27, 4, 60, 20080),
(85, 0, 'The State', '2140.437011', '-1082.434936', '25.034687', '244.500000', '305.000000', '999.148376', 'Las Colinas', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 3, 4, 700, 20030),
(86, 0, 'The State', '2249.786132', '-1238.915283', '25.898437', '376.299987', '1417.199951', '1081.328125', 'Jefferson', 250000, 15, 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 4, 10, 60, 60),
(87, 0, 'The State', '-198.733291', '-1904.565795', '5.007812', '244.500000', '305.000000', '999.148376', 'Flint County', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 8, 4, 0, 19149),
(88, 0, 'The State', '2229.414062', '-1241.602416', '25.656250', '244.500000', '305.000000', '999.148376', 'Jefferson', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 4, 10, 60, 60),
(89, 0, 'The State', '1094.920532', '-647.606323', '113.648437', '2324.435302', '-1147.116577', '1050.710083', 'Mulholland', 380000, 12, 1, 0, 100, 1, 9670, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 28, 4, 1, 20018),
(90, 0, 'The State', '1442.630859', '-628.843261', '95.718566', '295.261810', '1474.687133', '1080.257812', 'Mulholland', 255000, 15, 1, 0, 1000, 0, 32500, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 25, 2, 700, 20075),
(91, 0, 'The State', '1497.008544', '-688.619018', '95.339073', '2324.435302', '-1147.116577', '1050.710083', 'Mulholland', 380000, 12, 1, 0, 100, 1, 5100, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 6, 4, 700, 3892),
(92, 0, 'The State', '2155.825927', '-1814.647460', '13.546875', '244.500000', '305.000000', '999.148376', 'Idlewood', 50000, 1, 1, 0, 500, 0, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 3, 10, 0, 60),
(93, 0, 'The State', '239.369110', '-1202.832763', '76.140319', '225.792419', '1022.012451', '1084.016113', 'Richman', 350000, 7, 1, 0, 1000, 0, 55750, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 15, 2, 700, 0),
(94, 0, 'The State', '1378.896606', '-1753.189453', '14.140625', '235.341003', '1189.246826', '1080.257812', 'Commerce', 55000, 3, 1, 0, 1000, 1, 9000, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 28, 4, 0, 20017),
(95, 0, 'The State', '921.640869', '-1299.202148', '14.093750', '297.739257', '-1336.912597', '53.441551', 'Vinewood', 380000, 0, 1, 0, 100, 0, 19200, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 15, 2, 1, 0),
(96, 0, 'The State', '1981.300903', '-1682.823364', '17.053714', '235.287399', '1186.679687', '1080.257812', 'Idlewood', 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 26, 4, 1, 20017),
(97, 0, 'The State', '2111.156982', '-1279.360473', '25.687500', '2324.435302', '-1147.116577', '1050.710083', 'Jefferson', 380000, 12, 1, 0, 500, 1, 1500, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 12, 2, 1, 20003),
(98, 0, 'The State', '300.366027', '-1154.575683', '81.390373', '234.064788', '1063.719482', '1084.212280', 'Richman', 380000, 6, 1, 0, 500, 0, 50180, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 28, 4, 1, 19993),
(99, 0, 'The State', '2090.887451', '-1235.178588', '26.019128', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(100, 0, 'The State', '1325.954833', '-1067.497192', '31.554687', '235.341003', '1189.246826', '1080.257812', 'Temple', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 15, 4, 60, 20071),
(101, 0, 'The State', '739.168395', '-1428.780883', '13.898427', '-260.485656', '1456.741088', '1084.367187', 'Marina', 350000, 4, 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 9, 10, 699, 60),
(102, 0, 'The State', '1326.261352', '-1090.837280', '27.976562', '1226.575805', '-812.207214', '1084.007812', 'Temple', 125000, 5, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 21, 9, 60, 60),
(103, 0, 'The State', '1285.265136', '-1089.801513', '28.257812', '2324.435302', '-1147.116577', '1050.710083', 'Temple', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 13, 2, 60, 20076),
(104, 0, 'The State', '1285.253173', '-1067.346679', '31.678918', '244.500000', '305.000000', '999.148376', 'Temple', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 8, 11, 60, 10080),
(105, 0, 'The State', '1241.950195', '-1075.473632', '31.554687', '2324.435302', '-1147.116577', '1050.710083', 'Temple', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 13, 2, 60, 20078),
(106, 0, 'The State', '1242.269042', '-1099.486572', '27.976562', '386.118988', '1471.797485', '1080.187500', 'Temple', 100000, 15, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 5, 11, 0, 10080),
(107, 0, 'The State', '211.471664', '-1238.950683', '78.349983', '2324.435302', '-1147.116577', '1050.710083', 'Richman', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 28, 4, 0, 20017),
(108, 0, 'The State', '1183.458862', '-1076.260375', '31.678918', '249.878295', '1034.862670', '1084.726562', 'Temple', 350000, 7, 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 3, 9, 60, 60),
(109, 0, 'The State', '1905.866455', '-1113.062500', '26.664062', '249.878295', '1034.862670', '1084.726562', 'Glen Park', 350000, 7, 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 30, 9, 60, 60),
(110, 0, 'The State', '2297.674072', '-1053.055297', '49.933994', '235.341003', '1189.246826', '1080.257812', 'Las Colinas', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 7, 10, 700, 60),
(111, 0, 'The State', '1103.406738', '-1093.057861', '28.468750', '2261.958984', '-1135.900024', '1050.632812', 'Temple', 60000, 10, 1, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 18, 4, 60, 15217),
(112, 0, 'The State', '1103.399902', '-1069.759155', '31.889856', '385.012084', '1471.798339', '1080.187500', 'Temple', 170000, 15, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 28, 4, 60, 20017),
(113, 0, 'The State', '228.541915', '-1405.354614', '51.609375', '235.341003', '1189.246826', '1080.257812', 'Rodeo', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 26, 4, 1, 20017),
(114, 0, 'The State', '1128.254150', '-1021.234313', '34.992187', '235.341003', '1189.246826', '1080.257812', 'Temple', 55000, 3, 1, 0, 40, 0, 860, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 16, 10, 0, 10080),
(115, 0, 'The State', '994.081787', '-1058.848266', '33.699501', '235.341003', '1189.246826', '1080.257812', 'Temple', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 12, 4, 0, 20080),
(116, 0, 'The State', '738.621276', '-1418.511352', '13.523427', '239.300506', '1082.379150', '1084.187500', 'Marina', 300000, 6, 1, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 8, 10, 696, 60),
(117, 0, 'The State', '718.654907', '-1476.210205', '5.468750', '235.341003', '1189.246826', '1080.257812', 'Marina', 55000, 3, 1, 0, 1000, 0, 34122, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, 22, 4, 700, 16280),
(118, 0, 'The State', '732.341430', '-1476.211059', '5.468750', '235.341003', '1189.246826', '1080.257812', 'Marina', 55000, 3, 1, 0, 1000, 1, 89000, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 19, 4, 698, 15195),
(119, 0, 'The State', '693.247558', '-1602.774902', '15.046875', '244.500000', '305.000000', '999.148376', 'Marina', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 17, 11, 60, 10079),
(120, 0, 'The State', '766.916381', '-1606.114501', '13.803853', '244.500000', '305.000000', '999.148376', 'Marina', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 18, 11, 60, 10025),
(121, 0, 'The State', '768.079895', '-1655.910034', '5.609375', '235.341003', '1189.246826', '1080.257812', 'Marina', 55000, 3, 1, 0, 1000, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 22, 4, 1, 15992),
(122, 0, 'The State', '769.218139', '-1696.543090', '5.155416', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(123, 0, 'The State', '769.219421', '-1745.785644', '13.077295', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(124, 0, 'The State', '693.548522', '-1705.999023', '3.819482', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(125, 0, 'The State', '694.190979', '-1690.728271', '4.346117', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(126, 0, 'The State', '693.757934', '-1645.573974', '4.093750', '2324.435302', '-1147.116577', '1050.710083', 'Marina', 380000, 12, 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 25, 4, 1, 18917),
(127, 0, 'The State', '697.281005', '-1627.035522', '3.749170', '2324.435302', '-1147.116577', '1050.710083', 'Marina', 380000, 12, 1, 0, 100, 1, 1200, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 26, 4, 60, 20016),
(128, 0, 'The State', '653.115905', '-1619.870727', '15.000000', '244.500000', '305.000000', '999.148376', '', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60),
(129, 0, 'The State', '657.225585', '-1652.770751', '15.406250', '244.500000', '305.000000', '999.148376', 'Marina', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 4, 9, 60, 60),
(130, 0, 'The State', '653.583618', '-1714.170898', '14.764795', '244.500000', '305.000000', '999.148376', 'Marina', 50000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 3, 11, 700, 10080),
(131, 0, 'The State', '2635.856689', '-2012.780517', '13.813858', '2196.721679', '-1204.311401', '1049.023437', 'Willowfield', 50000, 6, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 26, 10, 60, 0),
(132, 0, 'The State', '2652.773925', '-1989.652343', '13.998847', '2317.611328', '-1026.651123', '1050.217773', 'Willowfield', 50000, 9, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 6, 9, 60, 60),
(133, 0, 'The State', '2499.382080', '-946.994140', '82.470779', '239.300506', '1082.379150', '1084.187500', 'Las Colinas', 300000, 6, 1, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 8, 10, 0, 60),
(134, 0, 'The State', '189.638397', '-1308.238037', '70.249320', '235.341003', '1189.246826', '1080.257812', 'Richman', 55000, 3, 1, 0, 1000, 1, 31130, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134, 7, 4, 1, 5534),
(135, 0, 'The State', '253.525588', '-1269.520751', '74.336143', '2324.435302', '-1147.116577', '1050.710083', 'Richman', 380000, 12, 1, 0, 500, 0, 10000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 21, 4, 0, 15203),
(136, 0, 'The State', '251.609878', '-1220.089233', '76.102371', '235.341003', '1189.246826', '1080.257812', 'Richman', 55000, 3, 1, 0, 200, 0, 25200, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 28, 4, 1, 20016),
(137, 0, 'The State', '2842.136962', '-1334.789672', '14.742115', '1226.575805', '-812.207214', '1084.007812', 'East Beach', 125000, 5, 1, 0, 1, 0, 5, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 137, 26, 10, 1, 10070),
(138, 0, 'The State', '167.273483', '-1758.868774', '6.796875', '447.177429', '1397.196777', '1084.304687', 'Santa Maria Beach', 50000, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 24, 4, 60, 20061),
(139, 0, 'The State', '1410.964477', '-920.846252', '38.421875', '249.878295', '1034.862670', '1084.726562', 'Mulholland', 350000, 7, 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 139, 24, 4, 60, 18695),
(140, 0, 'The State', '1440.479125', '-926.113342', '39.647666', '235.341003', '1189.246826', '1080.257812', 'Mulholland', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 26, 2, 60, 20079),
(141, 0, 'The State', '1421.579956', '-886.232360', '50.686222', '22.859100', '1404.907470', '1084.429687', 'Mulholland', 125000, 5, 1, 0, 1000, 0, 7, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 4, 11, 60, 0),
(142, 0, 'The State', '1468.417846', '-906.158020', '54.835937', '235.341003', '1189.246826', '1080.257812', 'Mulholland Section', 55000, 3, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 7, 1, 1, 0),
(143, 0, 'The State', '725.632080', '-1451.045532', '17.695312', '1226.575805', '-812.207214', '1084.007812', 'Marina', 125000, 5, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 11, 4, 0, 7988),
(144, 0, 'The State', '1535.032348', '-800.186218', '72.849456', '1226.575805', '-812.207214', '1084.007812', 'Mulholland Section', 185000, 5, 1, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 12, 2, 699, 20079),
(145, 0, 'The State', '2673.485595', '-2020.102294', '14.168166', '226.402877', '1114.124511', '1080.993530', 'Willowfield', 50000, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145, 6, 9, 60, 60),
(146, 0, 'The State', '1093.926879', '-807.136596', '107.419364', '744.444091', '1437.619750', '1102.703125', 'Mulholland', 385000, 6, 1, 0, 1000, 1, 45000, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, 12, 4, 1, 9004),
(147, 0, 'The State', '1122.708374', '-2036.924682', '69.894248', '140.381515', '1365.922241', '1083.859375', 'Verdant Bluffs', 55000, 5, 1, 0, 100, 0, 2250, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 23, 4, 700, 17697),
(148, 0, 'The State', '2672.764892', '-1989.706176', '13.993547', '235.297805', '1186.797607', '1080.257812', 'Willowfield', 50000, 3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148, 5, 9, 60, 60),
(149, 0, 'The State', '2637.135498', '-1991.865600', '14.324020', '260.783020', '1237.442993', '1084.257812', 'Willowfield', 50000, 9, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 4, 9, 60, 60),
(150, 0, 'None', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Email` varchar(162) COLLATE latin1_general_ci NOT NULL,
  `PlayerLevel` int(11) NOT NULL DEFAULT '1',
  `AdminLevel` int(11) NOT NULL DEFAULT '0',
  `Banned` int(11) NOT NULL DEFAULT '0',
  `Pbanned` int(11) NOT NULL DEFAULT '0',
  `Warnings` int(11) NOT NULL DEFAULT '0',
  `Vip` int(11) NOT NULL DEFAULT '0',
  `VipTime` int(16) NOT NULL DEFAULT '0',
  `DonateRank` int(11) NOT NULL DEFAULT '0',
  `UpgradePoints` int(11) NOT NULL DEFAULT '0',
  `ConnectedTime` int(11) NOT NULL DEFAULT '0',
  `ContractTime` int(11) NOT NULL DEFAULT '0',
  `Tutorial` int(11) NOT NULL DEFAULT '0',
  `Registered` int(11) NOT NULL DEFAULT '0',
  `Sex` int(11) NOT NULL DEFAULT '1',
  `Age` int(11) NOT NULL DEFAULT '0',
  `Origin` int(11) NOT NULL DEFAULT '255',
  `Muted` int(11) NOT NULL DEFAULT '0',
  `Respect` int(11) NOT NULL DEFAULT '0',
  `Money` bigint(20) NOT NULL DEFAULT '0',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `Crimes` int(11) NOT NULL DEFAULT '0',
  `Kills` int(11) NOT NULL DEFAULT '0',
  `Deaths` int(11) NOT NULL DEFAULT '0',
  `Arrested` int(11) NOT NULL DEFAULT '0',
  `WantedDeaths` int(11) NOT NULL DEFAULT '0',
  `Phonebook` int(11) NOT NULL DEFAULT '0',
  `LottoNr` int(11) NOT NULL DEFAULT '0',
  `Fishes` int(11) NOT NULL DEFAULT '0',
  `BiggestFish` int(11) NOT NULL DEFAULT '0',
  `Job` int(11) NOT NULL DEFAULT '0',
  `Paycheck` int(11) NOT NULL DEFAULT '0',
  `HeadValue` int(11) NOT NULL DEFAULT '0',
  `Jailed` int(11) NOT NULL DEFAULT '0',
  `JailTime` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Leader` int(11) NOT NULL DEFAULT '0',
  `Member` int(11) NOT NULL DEFAULT '0',
  `FMember` int(11) NOT NULL DEFAULT '255',
  `SFMember` int(11) NOT NULL DEFAULT '0',
  `SFLeader` int(11) NOT NULL DEFAULT '0',
  `Rank` int(11) NOT NULL DEFAULT '0',
  `DetSkill` int(11) NOT NULL DEFAULT '0',
  `SexSkill` int(11) NOT NULL DEFAULT '0',
  `BoxSkill` int(11) NOT NULL DEFAULT '0',
  `LawSkill` int(11) NOT NULL DEFAULT '0',
  `MechSkill` int(11) NOT NULL DEFAULT '0',
  `JackSkill` int(11) NOT NULL DEFAULT '0',
  `CarSkill` int(11) NOT NULL DEFAULT '0',
  `NewsSkill` int(11) NOT NULL DEFAULT '0',
  `DrugsSkill` int(11) NOT NULL DEFAULT '0',
  `CookSkill` int(11) NOT NULL DEFAULT '0',
  `FishSkill` int(11) NOT NULL DEFAULT '0',
  `ArmsSkill` int(11) NOT NULL DEFAULT '0',
  `SmugglerSkill` int(11) NOT NULL DEFAULT '0',
  `TruckerSkill` int(11) NOT NULL DEFAULT '0',
  `pSHealth` int(11) NOT NULL DEFAULT '0',
  `pHealth` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '50.0',
  `Armor` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '0.000000',
  `Local` int(11) NOT NULL DEFAULT '255',
  `Model` int(11) NOT NULL DEFAULT '299',
  `PhoneNr` int(11) NOT NULL DEFAULT '0',
  `House` int(11) NOT NULL DEFAULT '0',
  `Bizz` int(11) NOT NULL DEFAULT '0',
  `CarLic` int(11) NOT NULL DEFAULT '0',
  `FlyLic` int(11) NOT NULL DEFAULT '0',
  `BoatLic` int(11) NOT NULL DEFAULT '0',
  `FishLic` int(11) NOT NULL DEFAULT '0',
  `GunLic` int(11) NOT NULL DEFAULT '0',
  `Gun0` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0',
  `Gun10` int(11) NOT NULL DEFAULT '0',
  `Gun11` int(11) NOT NULL DEFAULT '0',
  `CarTime` int(11) NOT NULL DEFAULT '0',
  `PayDay` int(11) NOT NULL DEFAULT '0',
  `PayDayHad` int(11) NOT NULL DEFAULT '0',
  `CDPlayer` int(11) NOT NULL DEFAULT '0',
  `Wins` int(11) NOT NULL DEFAULT '0',
  `Loses` int(11) NOT NULL DEFAULT '0',
  `BanAppealer` int(11) NOT NULL,
  `GangMod` int(11) NOT NULL,
  `Hospital` int(11) NOT NULL,
  `NewbieMuted` int(11) NOT NULL,
  `ReportMuted` int(11) NOT NULL,
  `HelperLevel` int(11) NOT NULL,
  `Mask` int(11) NOT NULL,
  `SafeSpawn` int(11) NOT NULL,
  `Pos_x` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `Pos_y` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `Pos_z` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `Pos_r` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `VirtualWorld` int(11) NOT NULL DEFAULT '0',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `Adjustable` int(11) NOT NULL DEFAULT '0',
  `Married` int(11) NOT NULL DEFAULT '0',
  `MarriedTo` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'No-one',
  `ContractBy` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `ip` varchar(16) CHARACTER SET latin1 NOT NULL,
  `PhoneCredit` int(11) NOT NULL DEFAULT '0',
  `Spraycan` int(11) NOT NULL DEFAULT '0',
  `Screw` int(11) NOT NULL DEFAULT '0',
  `Rope` int(11) NOT NULL DEFAULT '0',
  `Cigars` int(11) NOT NULL DEFAULT '0',
  `Sprunk` int(11) NOT NULL DEFAULT '0',
  `Cookies` int(11) NOT NULL DEFAULT '0',
  `WT` int(11) NOT NULL DEFAULT '0',
  `WTc` int(11) NOT NULL DEFAULT '0',
  `Bombs` int(11) NOT NULL DEFAULT '0',
  `Scope` int(11) NOT NULL DEFAULT '0',
  `Bandana` int(11) NOT NULL DEFAULT '0',
  `Glasses` int(11) NOT NULL DEFAULT '0',
  `Hair` int(11) NOT NULL DEFAULT '0',
  `Hat` int(11) NOT NULL DEFAULT '0',
  `Laser` int(11) NOT NULL DEFAULT '0',
  `Speedo` int(11) NOT NULL DEFAULT '0',
  `Seeds` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Accent` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `FHits` int(11) NOT NULL DEFAULT '0',
  `CHits` int(11) NOT NULL DEFAULT '0',
  `FightingStyle` int(11) NOT NULL DEFAULT '0',
  `Blindfolds` int(11) NOT NULL DEFAULT '0',
  `WantedLevel` int(11) NOT NULL DEFAULT '0',
  `Date` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `Time` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `PlayerCarModel` int(11) NOT NULL DEFAULT '0',
  `PlayerCarModel2` int(11) NOT NULL DEFAULT '0',
  `PlayerCarModel3` int(11) NOT NULL DEFAULT '0',
  `Stamina` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `Name`, `Password`, `Email`, `PlayerLevel`, `AdminLevel`, `Banned`, `Pbanned`, `Warnings`, `Vip`, `VipTime`, `DonateRank`, `UpgradePoints`, `ConnectedTime`, `ContractTime`, `Tutorial`, `Registered`, `Sex`, `Age`, `Origin`, `Muted`, `Respect`, `Money`, `Bank`, `Crimes`, `Kills`, `Deaths`, `Arrested`, `WantedDeaths`, `Phonebook`, `LottoNr`, `Fishes`, `BiggestFish`, `Job`, `Paycheck`, `HeadValue`, `Jailed`, `JailTime`, `Materials`, `Leader`, `Member`, `FMember`, `SFMember`, `SFLeader`, `Rank`, `DetSkill`, `SexSkill`, `BoxSkill`, `LawSkill`, `MechSkill`, `JackSkill`, `CarSkill`, `NewsSkill`, `DrugsSkill`, `CookSkill`, `FishSkill`, `ArmsSkill`, `SmugglerSkill`, `TruckerSkill`, `pSHealth`, `pHealth`, `Armor`, `Local`, `Model`, `PhoneNr`, `House`, `Bizz`, `CarLic`, `FlyLic`, `BoatLic`, `FishLic`, `GunLic`, `Gun0`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `CarTime`, `PayDay`, `PayDayHad`, `CDPlayer`, `Wins`, `Loses`, `BanAppealer`, `GangMod`, `Hospital`, `NewbieMuted`, `ReportMuted`, `HelperLevel`, `Mask`, `SafeSpawn`, `Pos_x`, `Pos_y`, `Pos_z`, `Pos_r`, `VirtualWorld`, `Interior`, `Adjustable`, `Married`, `MarriedTo`, `ContractBy`, `ip`, `PhoneCredit`, `Spraycan`, `Screw`, `Rope`, `Cigars`, `Sprunk`, `Cookies`, `WT`, `WTc`, `Bombs`, `Scope`, `Bandana`, `Glasses`, `Hair`, `Hat`, `Laser`, `Speedo`, `Seeds`, `Pot`, `Crack`, `Accent`, `FHits`, `CHits`, `FightingStyle`, `Blindfolds`, `WantedLevel`, `Date`, `Time`, `PlayerCarModel`, `PlayerCarModel2`, `PlayerCarModel3`, `Stamina`) VALUES
(1, 'Cole', 'memzo', 'mehmet1998@hotmail.co.uk', 1, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 21, 1, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1633, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '159.000000', '159.000000', 255, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '2481.179443', '-1668.007934', '13.337585', '101.428657', 0, 0, 1, 0, 'No-one', '', '109.153.111.108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '30/3/2014', '20:17:27', 0, 0, 0, 86),
(2, 'slosky', '213546879+++', 'Sloskyinator@gmail.com', 1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 17, 1, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3023, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.000000', '0.000000', 255, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '774.158325', '-1352.339599', '22.376190', '26.880123', 0, 0, 0, 0, 'No-one', '', '127.0.0.1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '30/3/2014', '21:17:10', 0, 0, 0, 76),
(3, 'MuratMate', 'murat', 'muratakbas12@gmail.com', 1337, 1337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 21, 1, 0, 0, 9999999, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 7303, 0, 0, 0, 0, 1, 1, 255, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '159.000000', '159.000000', 999, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, '1114.253540', '-1389.536254', '13.636060', '161.295669', 0, 0, 1, 0, 'No-one', '', '109.153.111.108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '30/3/2014', '21:30:1', 0, 0, 0, 72),
(4, 'W33die', 'eeeeee', 'Wolffanggang@outlook.com', 1, 99999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 20, 1, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '53.000000', '100.000000', 255, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '774.154174', '-1350.331298', '13.536031', '26.880123', 0, 0, 0, 0, 'No-one', '', '188.252.213.245', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '30/3/2014', '21:17:10', 0, 0, 0, 99);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
