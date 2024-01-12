-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 05:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addressLine1` varchar(100) DEFAULT NULL,
  `addressLine2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(1, 'Daniel', 'Ongkowijoyo', 'Daniel', '0812345678', 'Jl. Baru', NULL, 'Jember', 'Jatim', '101', 'Indonesia', 3, 50000000.00),
(2, 'Dion Darrel', 'Darrel', 'Dion', '0846469359', 'Jl. Bandung', NULL, 'Bandung', 'Jabar', '102', 'Indonesia', 4, 80000000.00),
(3, 'Budi Susilo', 'Susilo', 'Budi', '08125554433', 'Jl. Kartini No. 12', NULL, 'Surabaya', 'Jatim', '60231', 'Indonesia', 3, 125000000.00),
(4, 'Sinta Agustina', 'Agustina', 'Sinta', '085699887766', 'Jl. Mawar Indah No. 45', NULL, 'Yogyakarta', 'DIY', '55281', 'Indonesia', 4, 75000000.00),
(5, 'Bambang Putra', 'Putra', 'Bambang', '08775556644', 'Jl. Pemuda Blok A No. 10', NULL, 'Bandung', 'Jabar', '40162', 'Indonesia', 6, 200000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1, 'Juan', 'Pablo', 'January', 'juanpablo@gmail.com', '44w44', NULL, 'Manager'),
(2, 'Maria', 'Garcia', 'February', 'mariagarcia@gmail.com', '22y22', NULL, 'Sales Head'),
(3, 'Richie', 'Martin', 'January', 'richie@gmail.com', '44w44', 1, 'Sales'),
(4, 'Antoni', 'Garcia', 'February', 'anotin@gmail.com', '22y22', 2, 'Sales'),
(5, 'David', 'Lopez', 'March', 'davidlopez@gmail.com', '33z33', NULL, 'Manager'),
(6, 'Lina', 'Go', 'March', 'go@gmail.com', '22y22', 2, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addressLine1` varchar(100) DEFAULT NULL,
  `addressLine2` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `territory` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
('11a11', 'Jakarta', '081234567890', 'Jl. Sudirman', 'Gedung Jaya', 'DKI Jakarta', 'Indonesia', '10210', 'Tanah Abang'),
('22y22', 'Bandung', '089567891234', 'Jl. Merdeka', 'Komp. Mawar Indah', 'Jawa Barat', 'Indonesia', '40115', 'Sukajadi'),
('33z33', 'Surabaya', '031-56781234', 'Jl. Pahlawan', 'Gedung ABC Lantai 5', 'Jawa Timur', 'Indonesia', '60111', 'Gubeng'),
('44w44', 'Medan', '061-12345678', 'Jl. Sudirman', NULL, 'Sumatera Utara', 'Indonesia', '20154', 'Medan Kota'),
('55z55', 'Surabaya', '087654321098', 'Jl. Pemuda', 'Ruko Melati', 'Jawa Timur', 'Indonesia', '60241', 'Genteng'),
('66w66', 'Medan', '085321987654', 'Jl. Gatot Subroto', 'Komplek Anggrek', 'Sumatera Utara', 'Indonesia', '20154', 'Medan Petisah');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderLineNumber` int(11) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderLineNumber`, `orderNumber`, `productCode`, `quantityOrdered`, `priceEach`) VALUES
(1, 10105, 'C17_4321', 1, 525000000.00),
(2, 10101, 'C24_5698', 1, 3250000000.00),
(3, 10102, 'C38_0123', 1, 1875000000.00),
(4, 10103, 'C24_5698', 1, 3250000000.00),
(5, 10104, 'C52_9012', 1, 475000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `comments` text DEFAULT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(10101, '2024-01-11', '2024-01-18', '2024-01-15', 'Shipped', NULL, 1),
(10102, '2024-01-12', '2024-01-19', '2024-01-16', 'Pending', NULL, 2),
(10103, '2024-01-13', '2024-01-20', '2024-01-17', 'Shipped', 'Requested', 3),
(10104, '2024-01-14', '2024-01-21', '2024-01-18', 'Pending', 'Expedited shipping', 4),
(10105, '2024-01-15', '2024-01-22', '2024-01-19', 'Shipped', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`customerNumber`, `checkNumber`, `paymentDate`, `amount`) VALUES
(5, 'P001', '2024-01-15', 525000000.00),
(1, 'P002', '2024-01-11', 3250000000.00),
(2, 'P003', '2024-01-12', 1875000000.00),
(3, 'P004', '2024-01-13', 3250000000.00),
(4, 'P005', '2024-01-14', 475000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLine` varchar(50) NOT NULL,
  `textDescription` text DEFAULT NULL,
  `htmlDescription` text DEFAULT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
('Electric Vehicles', 'Eco cars', 'www.web3.com', NULL),
('Luxury Cars', 'Expensive cars', 'www.web1.com', NULL),
('Pickup Trucks', 'For delivery', 'www.web4.com', NULL),
('Sport Motorcycles', 'Sport motor', 'www.web2.com', NULL),
('Vintage', 'Old but good', 'www.web5.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(50) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(20) DEFAULT NULL,
  `productVendor` varchar(50) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `quantityInStock` int(11) DEFAULT NULL,
  `buyPrice` decimal(15,2) DEFAULT NULL,
  `MSRP` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES
('C17_4321', 'Volkswagen Golf GTI', 'Luxury Cars', '1:1', 'Volkswagen', 'Sporty hatchback with powerful turbocharged engine, agile handling, and iconic GTI badge.', 16, 525000000.00, 600000000.00),
('C24_5698', 'Mercedes-Benz S-Class S 580', 'Luxury Cars', '1:1', 'Mercedes-Benz', 'Sophisticated luxury sedan with twin-turbo V8 engine, advanced driver assistance systems, and opulent interior.', 1, 3250000000.00, 3500000000.00),
('C38_0123', 'Tesla Model X Long Range', 'Electric Vehicles', '1:1', 'Tesla', 'High-performance electric SUV with spacious interior, falcon-wing doors, and autopilot features.', 8, 1875000000.00, 2125000000.00),
('C52_9012', 'Subaru Outback Touring', 'Luxury Cars', '1:1', 'Subaru', 'Versatile wagon with all-wheel drive, spacious interior, and advanced safety features.', 14, 475000000.00, 525000000.00),
('C61_3456', 'Ford F-150 Lariat', 'Pickup Trucks', '1:1', 'Ford', 'Powerful pickup truck with impressive towing capacity, rugged capabilities, and comfortable cabin.', 9, 975000000.00, 1125000000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `fk_salesRep` (`salesRepEmployeeNumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `fk_office` (`officeCode`),
  ADD KEY `fk_reportsTo` (`reportsTo`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderLineNumber`),
  ADD KEY `fk_order` (`orderNumber`),
  ADD KEY `fk_product` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `fk_customer_order` (`customerNumber`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`checkNumber`),
  ADD UNIQUE KEY `customerNumber` (`customerNumber`) USING BTREE;

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLine`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`) USING BTREE,
  ADD KEY `fk_productLine` (`productLine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderLineNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_salesRep` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_office` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reportsTo` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_customer_order` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_productLine` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
