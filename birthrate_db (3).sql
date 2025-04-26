-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `birthrate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--
-- Creation: Apr 26, 2025 at 06:49 AM
-- Last update: Apr 26, 2025 at 07:05 AM
--

CREATE TABLE `address` (
  `sitio` int(5) NOT NULL,
  `purok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `address`:
--

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`sitio`, `purok`) VALUES
(1, 'LABANDERA'),
(2, 'PROPER'),
(3, 'LITTLE BAG'),
(4, 'CAVINITAN'),
(5, 'SUNDUAN');

-- --------------------------------------------------------

--
-- Table structure for table `birthplace`
--
-- Creation: Apr 26, 2025 at 06:39 AM
-- Last update: Apr 26, 2025 at 06:39 AM
--

CREATE TABLE `birthplace` (
  `bp_id` int(5) NOT NULL,
  `birthplace` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `birthplace`:
--

--
-- Dumping data for table `birthplace`
--

INSERT INTO `birthplace` (`bp_id`, `birthplace`) VALUES
(1, 'HOSPITAL');

-- --------------------------------------------------------

--
-- Table structure for table `birthrate_db`
--
-- Creation: Apr 26, 2025 at 05:46 AM
-- Last update: Apr 26, 2025 at 07:08 AM
--

CREATE TABLE `birthrate_db` (
  `person_id` int(2) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(3) DEFAULT NULL,
  `Full Name of Child` varchar(27) DEFAULT NULL,
  `Age in months` varchar(3) DEFAULT NULL,
  `birthdate` varchar(11) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `Grade Level` varchar(8) DEFAULT NULL,
  `Mother's Name or Caregiver` varchar(26) DEFAULT NULL,
  `Belong to IP group?` varchar(2) DEFAULT NULL,
  `4ps recepient?` varchar(3) DEFAULT NULL,
  `Purok` varchar(2) DEFAULT NULL,
  `Sitio` varchar(13) DEFAULT NULL,
  `Birthplace` varchar(10) DEFAULT NULL,
  `Height (cm)` decimal(11,0) DEFAULT NULL,
  `Weight (kg)` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `birthrate_db`:
--   `Birthplace`
--       `birthplace` -> `bp_id`
--   `Grade Level`
--       `gradelvl` -> `glevel_id`
--   `Purok`
--       `address` -> `sitio`
--   `Sitio`
--       `address` -> `sitio`
--

--
-- Dumping data for table `birthrate_db`
--

INSERT INTO `birthrate_db` (`person_id`, `Year`, `Month`, `Full Name of Child`, `Age in months`, `birthdate`, `gender`, `Grade Level`, `Mother's Name or Caregiver`, `Belong to IP group?`, `4ps recepient?`, `Purok`, `Sitio`, `Birthplace`, `Height (cm)`, `Weight (kg)`) VALUES
(1, 2020, 'Dec', 'DAVE, JOHN JERICO', '45', 'Dec-21-2020', 'M', 'DAY CARE', 'TANO JENNY', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '86', '10'),
(2, 2022, 'May', 'TEANO, PAUL JOHN', '28', 'May-29-2022', 'M', 'N/A', 'TEANO, JOHN PAUL', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '84', '10'),
(3, 2021, 'Aug', 'TAPAS, NATHANIEL', '37', 'Aug-21-2021', 'M', 'N/A', 'TAPAS ARLENE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '84', '12'),
(4, 2019, 'Jul', 'DELA CRUZ, JOSEPH JR.', 'N/A', 'Jul-14-2019', 'M', 'DAY CARE', 'DELA CRUZ, JOSEPH', 'NO', 'YES', '2', 'PULANG-LUPA', 'HOSPITAL', '0', '0'),
(5, 2020, 'Jul', 'DELA CRUZ, JEONJAE', '50', 'Jul-27-2020', 'M', 'DAY CARE', 'DELA CRUZ, SALVE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '91', '13'),
(6, 2022, 'Mar', 'BOCAYA, MAYIENNE', '31', 'Mar-07-2022', 'F', 'N/A', 'BOCAYA, MAYLEN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '92', '13'),
(7, 2022, 'Sep', 'RODRIGUEZ, SAMARAH', '24', 'Sep-22-2022', 'F', 'N/A', 'RODRIGUEZ, DINA', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '83', '11'),
(8, 2020, 'Aug', 'VALENZUELA, JEFF MIGUEL', '49', 'Aug-18-2020', 'M', 'DAY CARE', 'VALENZUELA, JEFFREY', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '92', '13'),
(9, 2021, 'Jul', 'DELOS SANTOS, PETER RUSCO', '38', 'Jul-19-2021', 'M', 'N/A', 'AQUINO, MICHELLE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '87', '11'),
(10, 2022, 'Feb', 'CATALAN, BRIANA ELISE', '31', 'Feb-13-2022', 'F', 'N/A', 'SALVADOR, BENNY ROSE', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '92', '13'),
(11, 2023, 'Sep', 'CATALAN, KIEFER', '12', 'Sep-23-2023', 'M', 'N/A', 'SALVADOR, BENNY ROSE', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '76', '8'),
(12, 2023, 'Apr', 'DELOS SANTOS, GIO', '18', 'Apr-04-2023', 'M', 'N/A', 'DELOS SANTOS, ELAINE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '78', '11'),
(13, 2021, 'Apr', 'LORENZO, ANGEL', 'N/A', 'Apr-01-2021', 'F', 'N/A', 'QUINTAL, GEMMA', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '0', '0'),
(14, 2022, 'Jun', 'QUINTAL, ZALDY', '27', 'Jun-19-2022', 'M', 'N/A', 'QUINTAL. GEMMA', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '81', '11'),
(15, 2023, 'Jun', 'FERNANDEZ, ANGELO', '15', 'Jun-19-2023', 'F', 'N/A', 'GEROMO, ANGELICA', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '73', '9'),
(16, 2021, 'Sep', 'ABICHUELA, DWEN FELIX', '36', 'Sep-11-2021', 'M', 'N/A', 'ABICHUELA, CHERYL', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '91', '11'),
(17, 2023, 'Jul', 'ABICHUELA, FRANCELINE FAYE', '14', 'Jul-11-2023', 'F', 'N/A', 'ABICHUELA, CHERYL', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '75', '8'),
(18, 2022, 'Nov', 'BERNAL, XIAMELLE', '22', 'Nov-13-2022', 'F', 'N/A', 'BERNAL, ANNABELLE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '80', '10'),
(19, 2022, 'Nov', 'ARROYO, AKHIRA LENZY', '22', 'Nov-19-2022', 'F', 'N/A', 'PERTEZ, MARICEL', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '86', '11'),
(20, 2020, 'May', 'PASTOR, MARCO', '52', 'May-16-2020', 'M', 'DAY CARE', 'PASTOR. JHOMEL', 'NO', 'YES', '5', 'SUNDUAN', 'HOSPITAL', '94', '14'),
(21, 2023, 'Nov', 'SORIAO, MICO', '11', 'Nov-02-2023', 'M', 'N/A', 'DUMANAS, MERIAM', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '71', '8'),
(22, 2022, 'Nov', 'LABAY, ZANDRO', '23', 'Nov-09-2022', 'M', 'N/A', 'LABAY, LHODELYN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '80', '9'),
(23, 2023, 'Jul', 'TEVAR, JAYD TYLER', '14', 'Jul-20-2023', 'M', 'N/A', 'TEJERESAS, ANGELICA JEAN', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '85', '11'),
(24, 2022, 'Oct', 'OTANO, DANAYA KATELYN', '23', 'Oct-31-2022', 'F', 'N/A', 'TEVAR, JOY', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '84', '10'),
(25, 2022, 'Sep', 'TAOC, JAMES JAVIER', '25', 'Sep-09-2022', 'M', 'N/A', 'TAOC, JAMES JR.', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '82', '10'),
(26, 2020, 'Jun', 'SAMONTE, MARVIN', '51', 'Jun-19-2020', 'M', 'DAY CARE', 'SAMONTE, MYLENE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '121', '22'),
(27, 2022, 'Nov', 'TEJERESAS, ZOEY', '22', 'Nov-13-2022', 'F', 'N/A', 'TEJERESAS, JANINE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '78', '10'),
(28, 2022, 'Mar', 'SORIAO, AHMAYA REIGLEN', '30', 'Mar-22-2022', 'F', 'N/A', 'SORIAO, MARY ANN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '87', '12'),
(29, 2023, 'Oct', 'DELOS SANTOS, GABRIEL', '11', 'Oct-20-2023', 'M', 'N/A', 'DELOS SANTOS, ANGELINE', 'NO', 'YES', '3', 'LITTLE BAGUIO', 'HOSPITAL', '74', '10'),
(30, 2021, 'Nov', 'ZULTAN, AMAHYA', '34', 'Nov-27-2021', 'F', 'N/A', 'TAVERA, ANGELYN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '95', '13'),
(31, 2021, 'Sep', 'BOLIMA, VICTORY', '36', 'Sep-19-2021', 'M', 'N/A', 'ANSAY, JANICE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '93', '13'),
(32, 2021, 'Feb', 'DE MESA, SHANE LORENZ', '44', 'Feb-06-2021', 'M', 'N/A', 'DE MESA, FLORENCE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '87', '12'),
(33, 2023, 'Oct', 'SORIAO, HERLENE', '12', 'Oct-06-2023', 'M', 'N/A', 'SORIAO, JESSA', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '65', '8'),
(34, 2020, 'Feb', 'TRESVALLES, LANCE DYLAN', '56', 'Feb-06-2020', 'M', 'DAY CARE', 'BERAQUIT, LIEZEL', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '0', '0'),
(35, 2023, 'Nov', 'DACLAN, REYNIEL', '10', 'Nov-22-2023', 'M', 'N/A', 'TAVERA, GLENDA', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '62', '11'),
(36, 2023, 'May', 'SORIAO, JAMES', '16', 'May-18-2023', 'M', 'N/A', 'SORIAO, JACKYLYN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '75', '8'),
(37, 2020, 'Aug', 'DELOS SANTOS, JIO', '49', 'Aug-20-2020', 'M', 'DAY CARE', 'FAUSTINO, AIZA', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '110', '26'),
(38, 2023, 'Jul', 'MAGTANGOB, JEONNA AISLINN', '14', 'Jul-21-2023', 'M', 'N/A', 'MAGTANGOB, REANALYN', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '79', '11'),
(39, 2021, 'Mar', 'TINDUGAN, KYRON', '43', 'Mar-02-2021', 'M', 'N/A', 'TINDUGAN, JOSEPHINE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '91', '14'),
(40, 2023, 'Sep', 'TEJERESAS, ZABDRIAH BRIELLE', '13', 'Sep-25-2023', 'M', 'N/A', 'TEJERESAS, MELANIE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '75', '9'),
(41, 2020, 'Sep', 'GIANAN, MAX CYMON', '48', 'Sep-17-2020', 'M', 'DAY CARE', 'GIANAN, MA. LUIZA', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '110', '29'),
(42, 2023, 'Mar', 'PANTALLA, CLYDE', '19', 'Mar-06-2023', 'M', 'N/A', 'PANTILLA, LICEL', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '86', '12'),
(43, 2019, 'Sep', 'LOPEZ, JUNICE', '60', 'Sep-10-2019', 'M', 'DAY CARE', 'BOLIMA JOY', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '0', '0'),
(44, 2020, 'Nov', 'TAULE, MARIMAR', '46', 'Nov-25-2020', 'M', 'DAY CARE', 'TAULE, MICHELLE', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '98', '13'),
(45, 2023, 'Apr', 'TRESVALLES, PIA ELISE', '17', 'Apr-20-2023', 'M', 'N/A', 'BERAQUIT, LIEZEL', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '76', '9'),
(46, 2020, 'Oct', 'OTANO, SHANAIA JOY DENNISE', '35', 'Oct-21-2020', 'F', 'DAY CARE', 'TEVAR, JOY', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '85', '12'),
(47, 2020, 'Jan', 'OTANO, DENNISE JR.', '57', 'Jan-08-2020', 'M', 'N/A', 'TEVAR, JOY', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '110', '16'),
(48, 2021, 'Aug', 'TARNATE, JAKE GAVEN', '37', 'Aug-26-2021', 'M', 'N/A', 'TARNATE, GRETCHEN', 'NO', 'NO', '5', 'SUNDUAN', 'HOSPITAL', '90', '14'),
(49, 2019, 'Dec', 'TIMAJO, AMIRA KATE', '57', 'Dec-20-2019', 'F', 'DAY CARE', 'TIMAJO, SARAH', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '100', '12'),
(50, 2019, 'Jun', 'CATALAN, KEIN LEONARD', 'N/A', 'Jun-24-2019', 'M', 'DAY CARE', 'CATALAN, RONNEL', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '0', '0'),
(51, 2019, 'Oct', 'TAPANAN, JHEN ZOEY', '59', 'Oct-30-2019', 'F', 'N/A', 'DELA CRUZ, LANIE', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '114', '22'),
(52, 2021, 'Jun', 'TEJERESAS, ALLISON', '39', 'Jun-14-2021', 'M', 'N/A', 'TEJERESAS, JANINE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '94', '14'),
(53, 2023, 'Jun', 'BERNAL, ZANE VARGAS', '14', 'Jun-11-2023', 'M', 'N/A', 'BERNAL, MONICE', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '80', '9'),
(54, 2020, 'Nov', 'PEREZ, JAYBRIELLE', '46', 'Nov-19-2020', 'M', 'DAY CARE', 'PEREZ, ABEGAIL', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '103', '17'),
(55, 2023, 'Dec', 'FERNANDEZ, ALFRED', '9', 'Dec-28-2023', 'M', 'N/A', 'PERTEZ, MYLENE', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '62', '7'),
(56, 2023, 'Dec', 'DELA CRUZ, JOUS', '9', 'Dec-15-2023', 'M', 'N/A', 'DELA CRUZ, ARNOLD', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '0', '0'),
(57, 2023, 'Dec', 'TEVES, AZILEA KEISHA', '9', 'Dec-30-2023', 'F', 'N/A', 'LASCOSTA, REINEGEL', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '68', '7'),
(58, 2019, 'Nov', 'HORIN, NATHAN', '58', 'Nov-23-2019', 'M', 'DAY CARE', 'OTANO, ANALYN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '0', '0'),
(59, 2024, 'Jan', 'TRESVALLES, FARRAH AMAREIGH', '8', 'Jan-28-2024', 'F', 'N/A', 'TRESVALLES, NANETTE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '65', '8'),
(60, 2023, 'Dec', 'VILLANUEVA, HANNAH FAYE', '19', 'Dec-03-2023', 'F', 'N/A', 'GIANAN, ANGELICA', 'NO', 'NO', '5', 'SUNDUAN', 'HOSPITAL', '69', '8'),
(61, 2024, 'Mar', 'LOPEZ, LHIANNA JANE', '6', 'Mar-20-2024', 'F', 'N/A', 'BOLIMA, JOY', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '70', '8'),
(62, 2023, 'Feb', 'VALENZUELA, KYLA GHAIL', '19', 'Feb-23-2023', 'F', 'N/A', 'VALENZUELA, GERALD', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '78', '8'),
(63, 2024, 'Mar', 'BERNAL, CLINT CASTIEL', '7', 'Mar-08-2024', 'M', 'N/A', 'BERNAL, MARICRIS', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '70', '9'),
(64, 2022, 'Aug', 'TRESVALLES, KYAN NERO', '26', 'Aug-04-2022', 'M', 'N/A', 'BERAQUIT, LIEZEL', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '105', '12'),
(65, 2020, 'Jul', 'TINDUGAN, SYDNEY', '51', 'Jul-08-2020', 'M', 'DAY CARE', 'TINDUGAN, SHERYL TAVERA', 'NO', 'YES', '1B', 'PROPER', 'HOSPITAL', '98', '14'),
(66, 2023, 'Nov', 'SORIAO, MIKKO ZACH', '11', 'Nov-02-2023', 'M', 'N/A', 'DOMANAIS, MARIAN GEROMO', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '71', '8'),
(67, 2024, 'Apr', 'ARROYO, ALHEA MAE', '5', 'Apr-10-2024', 'F', 'N/A', 'ARROYO, ADAN', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '61', '6'),
(68, 2024, 'May', 'TEVAR, MAXENE', '5', 'May-04-2024', 'F', 'N/A', 'SORIAO, LYN SARMIENTO', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '63', '6'),
(69, 2022, 'Dec', 'TEVAR, NATHAN', '21', 'Dec-13-2022', 'M', 'N/A', 'SORIAO, LYN SARMIENTO', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '85', '11'),
(70, 2024, 'May', 'ANSAY, MHEA', '5', 'May-07-2024', 'F', 'N/A', 'ANSAY, JANICE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '63', '7'),
(71, 2024, 'May', 'TINDUGAN, EZRA AMIRA', '4', 'May-19-2024', 'F', 'N/A', 'TINDUGAN, ARLENE AGUILAR', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '61', '5'),
(72, 2019, 'Jul', 'TEANO, PRINCESS ANN', 'N/A', 'Jul-26-2019', 'F', 'DAY CARE', 'TEANO, JAYSON MACARIO', 'NO', 'NO', '3', 'LITTLE BAGUIO', 'HOSPITAL', '0', '0'),
(73, 2020, 'Aug', 'TRESVALLES , NIKO KIAN', '50', 'Aug-07-2020', 'M', 'DAY CARE', 'TESORERO, KAREN BALINGBING', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '0', '0'),
(74, 2024, 'Jun', 'DELOS SANTOS, ZIA', '3', 'Jun-19-2024', 'M', 'N/A', 'FAUSTINO, AIZA', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '59', '6'),
(75, 2024, 'Apr', 'BERNAL, DIONNE MAE', '5', 'Apr-24-2024', 'F', 'N/A', 'SORIAO, MARY ANN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '65', '7'),
(76, 2024, 'Jul', 'GEROMO, ANIANA JANE', '3', 'Jul-10-2024', 'F', 'N/A', 'GEROMO, JEAN', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '57', '8'),
(77, 2024, 'Apr', 'DELA CRUZN HADES LIGHT', '6', 'Apr-02-2024', 'M', 'N/A', 'DELA CRUZ, ROSELLE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '66', '8'),
(78, NULL, NULL, 'VILLARMENTE, AMARAH EUNICE', 'N/A', NULL, 'F', 'N/A', 'ARCILLA, EMILYN', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '64', '7'),
(79, 2022, 'Jun', 'VILLARMENTE,ELAIJAH ALEXA', '27', 'Jun-13-2022', 'F', 'N/A', 'ARCILLA, EMILYN', 'NO', 'NO', '1A', 'LABANDERA', 'HOSPITAL', '87', '11'),
(80, 2024, 'Jul', 'SAMONTE, KRIS', '3', 'Jul-24-2024', 'M', 'N/A', 'SAMONTE, MYLENE', 'NO', 'YES', '1B', 'PROPER', 'HOSPITAL', '62', '5'),
(81, 2024, 'Oct', 'TEVAR, LUNA MAXINE', '2', 'Oct-20-2024', 'F', 'N/A', 'TEVAR, MARVIE', 'NO', 'NO', '1B', 'PROPER', 'HOSPITAL', '47', '3'),
(82, 2023, 'Aug', 'MATIENZO, CLARK JHAMILLE', '14', 'Aug-08-2023', 'M', 'N/A', 'BERNAL, ANABELLE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '78', '9'),
(83, 2024, 'NOv', 'PASTOR, JONAS', '0', 'Nov-19-2024', 'M', 'N/A', 'PASTOR, GEMALYN', 'NO', 'NO', '5', 'SUNDUAN', 'HOSPITAL', '52', '3'),
(84, 2023, 'Dec', 'OTANO, DAX ADLER', '10', 'Dec-19-2023', 'M', 'N/A', 'OTANO, AMIE', 'NO', 'NO', '4', 'CAVINITAN', 'HOSPITAL', '69', '8'),
(85, 2024, 'Nov', 'DOMAGSANG, JERIC', '0', 'Nov-02-2024', 'M', 'N/A', 'DOMAGSANG, EMMIE ROSE', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '57', '5'),
(86, 2024, 'Oct', 'BERNAL, JOENALYN', '0', 'Oct-16-2024', 'F', 'N/A', 'BERNAL, AMADEO I', 'NO', 'NO', '2', 'PULANG-LUPA', 'HOSPITAL', '58', '4');

-- --------------------------------------------------------

--
-- Table structure for table `gradelvl`
--
-- Creation: Apr 26, 2025 at 06:44 AM
-- Last update: Apr 26, 2025 at 06:44 AM
--

CREATE TABLE `gradelvl` (
  `glevel_id` int(5) NOT NULL,
  `grade Level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `gradelvl`:
--

--
-- Dumping data for table `gradelvl`
--

INSERT INTO `gradelvl` (`glevel_id`, `grade Level`) VALUES
(1, 'Day-Care'),
(2, 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`sitio`);

--
-- Indexes for table `birthplace`
--
ALTER TABLE `birthplace`
  ADD PRIMARY KEY (`bp_id`);

--
-- Indexes for table `birthrate_db`
--
ALTER TABLE `birthrate_db`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `gradelvl`
--
ALTER TABLE `gradelvl`
  ADD PRIMARY KEY (`glevel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `sitio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
