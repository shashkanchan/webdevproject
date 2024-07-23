-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 04:14 PM
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
-- Database: `negotiation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `PERSONID` varchar(10) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`PERSONID`, `NAME`, `PASSWORD`) VALUES
('220900', 'Samanvi', '$2y$10$N6aDDyxdffiaaM5KDwvQP.86hZPiD2z7p4dmIuUjvme5sWHGCs6MW'),
('220902', 'Veeksha', '$2y$10$LTxkdhoQpDRepLJTq8WrZuuvvNdbBD9AfCqh8LdZVmDpJk7.7zo12');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `HOUSEID` varchar(10) DEFAULT NULL,
  `USERID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`HOUSEID`, `USERID`) VALUES
('cottage', '111111'),
('sierra', '222222'),
('campion', '333333'),
('elmsgate', '777777'),
('welcombe', '282828'),
('blossom', '323232'),
('woodlands', '292929'),
('russett', '151515'),
('quince', '131313'),
('barsart', '444444'),
('stonehurst', '555555'),
('laurel', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `confirm`
--

CREATE TABLE `confirm` (
  `HOUSEID` varchar(10) DEFAULT NULL,
  `USERID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirm`
--

INSERT INTO `confirm` (`HOUSEID`, `USERID`) VALUES
('cottage', '111111'),
('sierra', '222222'),
('campion', '333333'),
('barsart', '444444'),
('stonehurst', '555555'),
('laurel', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `residence`
--

CREATE TABLE `residence` (
  `HOUSEID` varchar(10) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CONTINENT` varchar(255) DEFAULT NULL,
  `PRICE` bigint(10) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`HOUSEID`, `NAME`, `CONTINENT`, `PRICE`, `LOCATION`, `DESCRIPTION`) VALUES
('ardoran', 'Taw Court', 'South America', 79890000, 'Via  Costeiria, Natal, Rio Grande do Norte, Brazil', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('baggins', 'Dream Villa', 'Asia', 123456000, 'Sampige Road,Malleswaram, Bengaluru, Karnataka, India', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('barsart', 'Jasmine Cottage', 'Australia', 29087000, 'Newcastle, New South Wales, Australia', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('birchwood', 'The Croft', 'Australia', 76545000, 'Avenue of Honor,Ballarat, Victoria, Australia', 'Living suface (m²) 240. Rooms 4. Garden 1.5 ares. Bathrooms 2. Garage. Comfort: Bathroom. Kitchen: Equipped kitchen, Dishwasher. Inside: Dining room, Living room. Various: To renovate. Outside: Garage, Parking, Garden. Location: Nearby town center, Nearby public transport, Nearby highways, Nearby shops.'),
('blossom', 'Queen Oak Courts', 'South America', 76345000, 'Avenida Jose Larco,Lima,Peru', 'Living suface (m²) 240. Rooms 4. Garden 1.5 ares. Bathrooms 2. Garage. Comfort: Bathroom. Kitchen: Equipped kitchen, Dishwasher. Inside: Dining room, Living room. Various: To renovate. Outside: Garage, Parking, Garden. Location: Nearby town center, Nearby public transport, Nearby highways, Nearby shops.'),
('bridgeland', 'Brookvale', 'Europe', 19087000, 'Bow wow,South Ceney, Gloucestershire,England', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('brookside', 'Bell Cottage', 'Australia', 87856000, 'Bourke Street,Melbourne, Victoria, Australia', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('burrow', 'The cockoos nest', 'Europe', 34567000, 'Letsby Avenue,Sheffield, England', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('campion', 'Crystal Cottage', 'Europe', 45567000, 'The Champs-Elysees,Paris,France', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('cottage', 'The Warren', 'Europe', 67856000, 'Bow wow,South Ceney, Gloucestershire, London', 'Living suface (m²) 160. Comfort: Jacuzzi. Security: Parlophone. Inside: Double glazing. Heating: Gaz heating. Various: Exclusiveness.'),
('crofties', 'Tyth Barn', 'Africa', 34567000, 'Chefchaouen, Morocco', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('crumpsbank', 'Old Post House', 'Africa', 20145000, 'Bo-Kaap, Cape Town, South Africa', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('elmsgate', 'Jackdaws', 'Europe', 78976000, 'Letsby Avenue,Sheffield,England', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('elmtree', 'Court Lodga', 'Europe', 56689000, 'Maria Theresien Street,Innsbruck,Austria', 'Living suface (m²) 160. Comfort: Jacuzzi. Security: Parlophone. Inside: Double glazing. Heating: Gaz heating. Various: Exclusiveness.'),
('greenlea', 'Royal Chain', 'Asia', 197865000, 'DadaBai Naroji Road,Mumbai, Maharashtra, India', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('heatherbel', 'Robins Hedge', 'North America', 103550000, 'Sunset park, Brooklyn', 'Living suface (m²) 240. Rooms 4. Garden 1.5 ares. Bathrooms 2. Garage. Comfort: Bathroom. Kitchen: Equipped kitchen, Dishwasher. Inside: Dining room, Living room. Various: To renovate. Outside: Garage, Parking, Garden. Location: Nearby town center, Nearby public transport, Nearby highways, Nearby shops.'),
('kingfisher', 'Turret House', 'Africa', 16755000, 'Tape Road,Johannesburg, South Africa', 'Living suface (m²) 240. Rooms 4. Garden 1.5 ares. Bathrooms 2. Garage. Comfort: Bathroom. Kitchen: Equipped kitchen, Dishwasher. Inside: Dining room, Living room. Various: To renovate. Outside: Garage, Parking, Garden. Location: Nearby town center, Nearby public transport, Nearby highways, Nearby shops.'),
('kuredu', 'The Cherries', 'South America', 45634000, 'Jiron de la Union, Lima,Peru', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('laurel', 'Long View', 'Asia', 101045000, 'South Bridge Road,Chinatown, Singapore, Singapore', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('lealand', 'Newland Cottage', 'North America', 239078000, 'Main street,Mt.pleasent,Vancouver', 'Living suface (m²) 145. Rooms 4. Surface of the ground (ares) 1.47. Garden. Balcony. Bathroom. Garage. Comfort: Separate WC, Bathroom. Kitchen: Equipped kitchen, Separate Kitchen. Inside: Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Balcony, Outdoor parking, Garage, Garden.'),
('magnolia', 'Old Rectory', 'Asia', 51289000, 'Dotonbori,Chūō-ku, Osaka, Kansai, Japan', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('nabdean', 'Little Corpse', 'North America', 56878000, 'Jackson Square, San Francisco ', 'Living suface (m²) 290. Rooms 10. Surface of the ground (ares) 3. Garden. Terrace. Balcony. Bathrooms 4. Garage. Comfort: Shower, Separate WC, Bathroom. Kitchen: Equipped kitchen, Separate Kitchen. Inside: Double glazing, Living room, Basement. Heating: Gaz heating. Various: Renovated, New.'),
('overdale', 'Wren House', 'Asia', 86756000, 'Mosque Street,Chinatown, Singapore, Singapore', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('pembroke', 'Willow Barn', 'Africa', 59023000, 'Pretoria, South Africa', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('quince', 'Poppy House', 'Asia', 18956000, 'Nanjing Road,The Bund, Shanghai, China', 'Living suface (m²) 240. Rooms 4. Garden 1.5 ares. Bathrooms 2. Garage. Comfort: Bathroom. Kitchen: Equipped kitchen, Dishwasher. Inside: Dining room, Living room. Various: To renovate. Outside: Garage, Parking, Garden. Location: Nearby town center, Nearby public transport, Nearby highways, Nearby shops.'),
('qwerty', 'qwerty', 'Asia', 122345678, 'hgjkiyt', 'sgvsvvsvs'),
('riverside', 'Old Personage', 'Australia', 35678000, ' Gold Coast, Queensland, Australia', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('russett', 'Paddock House', 'Asia', 78998000, ' Want to go Save Me Kotelnicheskaya Embankment Kotelnicheskaya Embankment,Moscow,Russia', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('seacrest', 'Barton Villa', 'South America', 89056000, 'R Gen carneiro,Sao Paulo, Brazil', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('sierra', 'Rose Cottage', 'North America', 89990000, 'East Village,Brussels,San Diego', 'Living suface (m²) 290. Rooms 10. Surface of the ground (ares) 3. Garden. Terrace. Balcony. Bathrooms 4. Garage. Comfort: Shower, Separate WC, Bathroom. Kitchen: Equipped kitchen, Separate Kitchen. Inside: Double glazing, Living room, Basement. Heating: Gaz heating. Various: Renovated, New. Outside: Balcony, Outdoor parking, Garage, Garden, Terrace.'),
('stables', 'Walnut House', 'Asia', 10989000, 'Braga Street,Bandung, West Java, Indonesia', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('stonehurst', 'white Goose', 'South America', 67856000, 'Avenue Bernard O Higins, Chile', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('thornesbro', 'Lazyduck', 'Asia', 75623000, 'Marine Drive,Kochi, Kerala, India', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.'),
('trevean', 'The Hundred ', 'Asia', 54632000, 'Rajpath,Delhi,India', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('welcombe', 'Rosemary Villa', 'North America ', 89976000, 'Logan Square, Chicago', 'Living suface (m²) 160. Garden. Terrace. Balcony. Bathroom. Garage. Comfort: Furnished, Shower, Separate WC, Bathroom. Kitchen: Equipped kitchen. Inside: Dining room, Double glazing, Living room, Laundry. Various: Renovated. Outside: Balcony, Garage, Garden, Terrace. Location: Nearby town center, Nearby pedestrian area, Nearby public transport, Nearby highways, Nearby shops, Quiet and pleasant conditions.'),
('westbury', 'Sunny Fields', 'Australia', 98787000, 'Jaffrey Streets,Sydney, New South Wales, Australia', 'Living suface : (m²) 160.9. Rooms: 3. Surface of the ground (ares): 1.65. Garden: 0.1 ares. Terrace. Bathrooms: 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement.'),
('westerhill', 'Fox Corner', 'Australia', 56734000, 'George Street,Sydney, New South Wales, Australia', 'Living suface (m²) 160.9. Rooms 3. Surface of the ground (ares) 1.65. Garden 0.1 ares. Terrace. Bathrooms 3. Comfort: Jacuzzi, Shower, Separate WC, Bathroom. Kitchen: Open kitchen, Equipped kitchen. Inside: Dining room, Living room, Laundry, Basement. Various: New. Outside: Garden, Terrace. Location: Nearby town center, Quiet and pleasant conditions.'),
('woodlands', 'The Glade', 'Asia', 78656000, 'Little India,George Town, Penang, Malaysia', 'Living suface (m²) 158. Rooms 4. Surface of the ground (ares) 1.61. Garden. Terrace. Energy pass I. Thermal protection class I. Comfort: Shower, Separate WC. Inside: Double glazing, Living room, Laundry, Basement. Heating: Gaz heating. Various: New. Outside: Garden, Terrace.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERID` varchar(10) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERID`, `NAME`, `EMAIL`, `PASSWORD`, `PHONE`) VALUES
('111111', 'Sujith', 'sujith@gmail.com', '$2y$10$LLuHyU8Za14Dc30KTEd0TOoskCKRI7Y8nKzcuSBrlztPMwubF6lCq', 1111111111),
('121212', 'Deeksha', 'deeksha@gmail.com', '$2y$10$IrAlWSvPCtXk15vkpwk3cebNYRRqAmX/vbZoJwVME5e0sKF02CSRa', 1212121212),
('131313', 'Pavithra', 'pavithra@gmail.com', '$2y$10$v/VT6r0tgSaLt.NdebNUZ.TSk/hRtMwmanOBIS5aFAizxp72hLC1e', 1313131313),
('141414', 'Keerthi', 'keerthi@gmail.com', '$2y$10$5Vmk4oAJtptKGSSMkhc1Cuf.sQTMu/ePCCSidaUiGpzXh2HxpVkcy', 1414141414),
('151515', 'Rohith', 'rohith@gmail.com', '$2y$10$D5UJFP7BNWwiIYwE33mUW.sHhf1mFKYK8B7uXNexNiz89IFbS1qv.', 1515151515),
('161616', 'Quinton', 'quinton@gmail.com', '$2y$10$yqiPN/wPoZRkR/kzJl/FZuU3M591USzvvkxE4q5WCx6lLssBwU9Cu', 1616161616),
('171717', 'Suryakumar', 'suryakumar@gmail.com', '$2y$10$.VF4FnqyjMLTMiiUAbqmWu2tkjFGQ.380P2nmvRJhzlJ5a8DwVvOC', 1717171717),
('181818', 'Ishankishan', 'ishankishan@gmail.com', '$2y$10$vrpcgpNzbTviNn24oAUhmOGYcujvzLmhr9LaXqb2yHzK3uXzDieDq', 1818181818),
('191919', 'Chrislynn', 'chrislynn@gmail.com', '$2y$10$bjc6l45UWlfLP/cRMgWPiuExA3WL1fhqyUMI2FxkEgOm4C3z2dtOe', 1919191919),
('212121', 'Hardik', 'hardik@gmail.com', '$2y$10$1TiJ6htDhH.dE1zSBDBF7u7dsZ9OM1ftPOpaiYsNlX7g31XtEhZI6', 2121212121),
('222222', 'Sanath', 'sanath@gmail.com', '$2y$10$O4bmxpQx3FnNCBLCMWYkvuXs4llHOQftOp8buCFOqkGXMsPPVprb.', 2222222222),
('232323', 'Krunal', 'krunal@gmail.com', '$2y$10$E4EekvaVDgfv8iQ4nDewp.uK0GDO6ZPqZNNt6Xxm7SUTMbolPYM5m', 2323232323),
('242424', 'Pollard', 'pollard@gmail.com', '$2y$10$7xu/elKwKEbBx6jLXwiza.19VOIaT/S/Id2JQpjI4YfG0jIeR1ca.', 2424242424),
('252525', 'Rahul C', 'rahulc@gmail.com', '$2y$10$6tqKi5f.2ZXIkrpPCJYLB.M9monPBoSKKvtqaZF5PhzYgjeAJcYmC', 2525252525),
('262626', 'Neesham', 'neesham@gmail.com', '$2y$10$SMcrZJRI1EVXf35XTHIXHudgnMWZBIpqUNiJ2YgQ0C1RQ2kjjmV2q', 2626262626),
('272727', 'Jansen', 'jansen@gmail.com', '$2y$10$10koAFDwx4ESQC92q0tha.SywbEV1a7iniIvvQ5DMz/l2R/ClTwem', 2727272727),
('282828', 'Trent Boult', 'trentboult@gmail.com', '$2y$10$/3hMzObS24YLDCQcVRRPuuCQ9Hp7EBDKsPwHMvS/tAMbUAoNpyTW.', 2828282828),
('292929', 'Jasprit', 'jasprit@gmail.com', '$2y$10$lefe5t8Sr6GkTj/zl2MDRO37dE0vJHrJYXlU6zdz63a0ad2CmfPjy', 2929292929),
('313131', 'Shikhar', 'shikhar@gmail.com', '$2y$10$zJTSTQTX9jj1FgleUXOuK.cwiz93PRV6k9KJ0C//UwyDJpH5jpUqm', 3131313131),
('323232', 'K L Rahul', 'klrahul@gmail.com', '$2y$10$Wp9FsX.7dTzxkKfR9WEWgOfnxgv1mjQE53bUlf47HGDD8UgVxCjAe', 3232323232),
('333333', 'Shahid', 'shahid@gmail.com', '$2y$10$1pMvj9qZFVtheUoCRfNENesWX3TNZUIQhPlw3ETC65qqJkt01/Bky', 3333333333),
('343434', 'Shreyas', 'shreyas@gmail.com', '$2y$10$L8Fb1iPSLoQ1eVB8Zq3xVeBE2sBPpc9XF4xqrijWBO0jHr6ngmQtG', 3434343434),
('353535', 'Virat K', 'viratk@gmail.com', '$2y$10$jet6Fx0rN2quOuBd5way3.XtnJNuCwnUFsJT88ZwBMVk1nd3nIeyG', 3535353535),
('363636', 'Rishab', 'rishab@gmail.com', '$2y$10$uDo82wjrlZfeIP49ksnNIOJMtRPrjXobXNBIeAaGZvJA/QAPo4zJG', 3636363636),
('373737', 'Jadeja', 'jadeja@gmail.com', '$2y$10$VIM1iR/9dF44d3/8xOtAs.K9odnla6gMCSHGaUmmPf2kMa/sjgbcK', 3737373737),
('383838', 'Ashwin', 'ashwin@gmail.com', '$2y$10$ks9COhUKPwZ61Cmu4p3ipO.SelKfzFQH9QtgSxR6NNluYfT4XfO4S', 3838383838),
('444444', 'Koushik', 'koushik@gmail.com', '$2y$10$bycf18/GxUe0eMV1CP5feufMzNyJupEyKGManoqML5.5SmnnLksyC', 4444444444),
('555555', 'Pratham', 'pratham@gamil.com', '$2y$10$ygrnF0Sbd7X4l/0iE8GU7.LUF0NSsJDRmHMejqE7m6m2Ar85Nzd.q', 5555555555),
('666666', 'Yogith', 'yogith@gmail.com', '$2y$10$0xwXhhl2CTcIwae34pJ4neOOI96E1K957djgPejHU.HvfJWs8UCjG', 6666666666),
('777777', 'Nachikethan', 'Nachikethan@gmail.com', '$2y$10$KqXzOj0hvDERS20WDfS5QufxIyir5LvjUGDxJ4zBxAK5uMOJtnAX6', 7777777777),
('888888', 'Shrinidhi', 'shrinidhi@gmail.com', '$2y$10$/ou2Wrb0asqOgp6mkOt7y.jqpzGKaD7Z0Cie.eX51BgTrdWAu8lEW', 8888888888),
('999999', 'Sathish', 'sathish@gmail.com', '$2y$10$jlIb9R0MYdIQJ0xnsl9pY.fFj7Y63Ps6WUUsiV1GoySQe8khpQ6eS', 9999999999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`PERSONID`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD KEY `HOUSEID` (`HOUSEID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `confirm`
--
ALTER TABLE `confirm`
  ADD KEY `HOUSEID` (`HOUSEID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `residence`
--
ALTER TABLE `residence`
  ADD PRIMARY KEY (`HOUSEID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyers`
--
ALTER TABLE `buyers`
  ADD CONSTRAINT `buyers_ibfk_1` FOREIGN KEY (`HOUSEID`) REFERENCES `residence` (`HOUSEID`),
  ADD CONSTRAINT `buyers_ibfk_2` FOREIGN KEY (`USERID`) REFERENCES `users` (`USERID`);

--
-- Constraints for table `confirm`
--
ALTER TABLE `confirm`
  ADD CONSTRAINT `confirm_ibfk_1` FOREIGN KEY (`HOUSEID`) REFERENCES `residence` (`HOUSEID`),
  ADD CONSTRAINT `confirm_ibfk_2` FOREIGN KEY (`USERID`) REFERENCES `users` (`USERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
