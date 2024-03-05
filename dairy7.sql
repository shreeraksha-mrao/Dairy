-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2016 at 08:16 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `r_f_no` varchar(50) NOT NULL,
  `r_kg` float NOT NULL,
  `r_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `r_received_by` varchar(50) NOT NULL,
  `r_deliverer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `r_f_no`, `r_kg`, `r_dt`, `r_received_by`, `r_deliverer`) VALUES
(2, '49', 66, '2023-04-07 23:00:00', 'Nithya', 'sandhya'),
(4, '456785', 5, '2022-02-02 22:00:00', 'Nithya', 'Nikhil'),
(5, '66', 7, '2023-04-07 23:30:00', 'Nithya', 'Nikhil'),
(10, '49', 99, '2023-11-01 11:11:45', 'Nithya', 'Nikhil'),
(11, '49', 10, '2023-05-23 18:09:05', 'Nithya', 'Anirudh'),
(12, '456785', 80, '2023-05-01 18:14:58', 'Nithya', 'Sonu'),
(13, '8', 30, '2023-05-23 18:15:19', 'Nithya', 'Sonu'),
(14, '66', 80, '2023-04-05 23:38:00', 'Nithya', 'Ashwin'),
(15, '452', 23, '2023-05-16 18:17:29', 'Nithya', 'Sonu'),
(16, '675', 22, '2023-05-10 18:18:32', 'Nithya', 'Monu'),
(17, '452', 22, '2023-04-03 23:30:00', 'Nithya', 'Monu'),
(18, '452', 22, '2023-05-03 18:19:18', 'Nithya', 'Monu'),
(19, '49', 10, '2023-05-11 18:19:31', 'Nithya', 'Abhishek'),
(20, '23', 30, '2023-05-25 10:43:25', 'Nithya', 'Anirudh'),
(21, '777', 90, '2023-05-01 11:41:41', 'Nithya', 'Niteesh'),
(22, '1', 40, '2022-05-03 17:37:11', 'Nithya', 'Arun'),
(23, '11', 41, '2022-05-04 17:37:52', 'Nithya', 'Neil'),
(24, '11', 40, '2022-05-26 16:08:04', 'Nithya', 'Ashwin'),
(25, '11', 30, '2021-05-07 16:09:41', 'Nithya', 'Alan'),
(26, '86', 45, '2021-05-26 17:06:57', 'Nithya', 'Nikhil'),
(27, '9001', 10, '2021-11-26 15:40:41', 'Nithya', 'Sandhya');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `e_pass` varchar(50) NOT NULL,
  `e_role` varchar(50) DEFAULT NULL,
  `e_payroll_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `e_name`, `e_mail`, `username`, `e_pass`, `e_role`, `e_payroll_no`) VALUES
(7, 'Shubha', 'shubha@gmail.com', '', '1425d5d3160aa6bd140605cc75e63ce0', 'Supervisor', '6'),
(8, 'Kevin', 'kevin@gmail.com', '', 'ad4ac7fa40b0af2bae7374c57173f26c', 'Clerk', '7'),
(9, 'Nithya', 'nithya@gmail.com', '', '0795151defba7a4b5dfa89170de46277', 'Manager', '1');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `f_no` varchar(50) NOT NULL,
  `f_id` text NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_locallity` varchar(50) DEFAULT NULL,
  `f_ac` varchar(50) DEFAULT NULL,
  `last_paid` date DEFAULT NULL,
  `f_phone` varchar(20) DEFAULT NULL,
  `f_photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`f_no`, `f_id`, `f_name`, `f_locallity`, `f_ac`, `last_paid`, `f_phone`, `f_photo`) VALUES
('1', '23456779', 'Muthu', 'Mandya', '9890485987', '2022-05-03', '+919340987563', NULL),
('11', '246890', 'Ramayya', 'Bagalkot', '3456423', '2022-05-26', '+912346758976', NULL),
('23', '234567', 'Somanna', 'kathigiririni', '3456423', '2023-05-25', '+912367450977', NULL),
('234', '22552355', 'Raju ', 'Bagalkot', '12412421', NULL, '+912354675543', NULL),
('452', '345678', 'Suresh', 'Mandya', '5689', '2023-05-03', '+919880354675', NULL),
('456785', '4456754457', 'Rajesh', 'Chikkaballapur', '4213', '2023-05-01', '+919046572212', NULL),
('49', '4456754', 'Vijay', 'Bagalkot', '9890485', '2023-11-01', '+912354698764', NULL),
('66', '670065', 'Mohan', 'Bagalkot', '6790875', '2023-04-30', '+917856436487', ''),
('675', '44567543', 'Prakash', 'Mandya', '6790875', '2023-05-10', '+913589764321', NULL),
('777', '7897389', 'Manoj', 'Chikkaballapur', '2345678', '2023-05-25', '+916756409800', NULL),
('8', '99', 'Deepak', 'Mandya', '879273', '2023-05-23', '+912236400986', NULL),
('86', '34257', 'Radha', 'Bagalkot', '7178110987', '2021-05-26', '+913432671298', NULL),
('900', '454', 'Sitamma', 'Bagalkot', '346743', NULL, '+912674538867', NULL),
('9001', '22908070', 'Sarita', 'Chikkaballapur', '459141241', '2021-11-26', '+912748965735', NULL),
('901', '451', 'Jyoti', 'Mandya', '34624', NULL, '+912354678654', NULL);
-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `p_to` varchar(50) NOT NULL,
  `p_date` date NOT NULL,
  `p_ac` bigint(20) NOT NULL,
  `p_method` varchar(30) NOT NULL,
  `p_transaction_code` int(11) NOT NULL COMMENT 'Bank or Mpesa confirmation or receipt no',
  `p_transacted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `payment` (`id`, `p_to`, `p_date`, `p_ac`, `p_method`, `p_transaction_code`, `p_transacted_by`) VALUES
('1', '49', '2024-02-26', 10000, 'Cash', 123456, 'Nithya'),
('2', '452', '2024-02-26', 15000, 'Bank Transfer', 789012, 'Kevin'),
('3', '23', '2024-02-25', 8000, 'Credit Card', 345678, 'Shubha'),
('4', '900', '2024-02-25', 12000, 'Cheque', 901234, 'Kevin'),
('5', '11', '2024-02-24', 9500, 'Cash', 567890, 'Nithya');

-- --------------------------------------------------------



CREATE TABLE `employee_points` (
  `s.no` int NOT NULL AUTO_INCREMENT,
  `e_id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `points` INT NOT NULL,
  `customer_rating` DECIMAL(5, 2),
  `quality_of_work_score` INT,
  `skill_set_score` INT,
  PRIMARY KEY (`s.no`)
);



INSERT INTO `employee_points` (`e_id`, `e_name`, `points`)
VALUES 
('7', 'Shubha', 0),
('8', 'Kevin', 0),
('9', 'Nithya', 21);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_f_no` (`r_f_no`),
  ADD KEY `r_received_by` (`r_received_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_name` (`e_name`),
  ADD UNIQUE KEY `e_payroll_no_2` (`e_payroll_no`),
  ADD KEY `e_payroll_no` (`e_payroll_no`);


--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`f_no`),
  ADD KEY `f_no` (`f_no`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_to` (`p_to`),
  ADD KEY `p_transacted_by` (`p_transacted_by`);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`r_f_no`) REFERENCES `farmers` (`f_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`p_transacted_by`) REFERENCES `employees` (`e_name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`p_to`) REFERENCES `farmers` (`f_no`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `employee_points`
  ADD CONSTRAINT `fk_employee_points_emp_name` FOREIGN KEY (`e_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_points (e_id, points, e_name) VALUES (NEW.id, 0, NEW.e_name);
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_employee_delete
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    -- Delete the corresponding employee details from employee_points
    DELETE FROM employee_points WHERE e_id = OLD.id;
END;
//

DELIMITER ;


DELIMITER //

CREATE TRIGGER after_delivery_insert
AFTER INSERT ON delivery
FOR EACH ROW
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_points INT;
    
    -- Get the employee ID based on the received_by value
    SELECT id INTO emp_id FROM employees WHERE e_name = NEW.r_received_by;
    
    -- Get the current points for the employee
    SELECT points INTO emp_points FROM employee_points WHERE e_id = emp_id;
    
    -- Increment the points by 1
    SET emp_points = emp_points + 1;
    
    -- Insert the new row into employee_points or update the existing row
    INSERT INTO employee_points (e_id, points, e_name) VALUES (emp_id, emp_points, NEW.r_received_by)
    ON DUPLICATE KEY UPDATE points = emp_points;
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_delivery_delete
BEFORE DELETE ON delivery
FOR EACH ROW
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_points INT;

    -- Get the employee ID based on the received_by value
    SELECT id INTO emp_id FROM employees WHERE e_name = OLD.r_received_by;

    -- Get the current points for the employee
    SELECT points INTO emp_points FROM employee_points WHERE e_id = emp_id;

    -- Decrement the points by 1
    SET emp_points = emp_points - 1;

    -- Update the row in employee_points
    UPDATE employee_points SET points = emp_points WHERE e_id = emp_id;
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER after_delivery_update
AFTER UPDATE ON delivery
FOR EACH ROW
BEGIN
    DECLARE old_emp_id INT;
    DECLARE new_emp_id INT;
    DECLARE old_emp_points INT;
    DECLARE new_emp_points INT;

    -- Get the old employee ID based on the old received_by value
    SELECT id INTO old_emp_id FROM employees WHERE e_name = OLD.r_received_by;

    -- Get the new employee ID based on the new received_by value
    SELECT id INTO new_emp_id FROM employees WHERE e_name = NEW.r_received_by;

    -- Get the current points for the old employee
    SELECT points INTO old_emp_points FROM employee_points WHERE e_id = old_emp_id;

    -- Get the current points for the new employee
    SELECT points INTO new_emp_points FROM employee_points WHERE e_id = new_emp_id;

    -- Decrement the points for the old employee by 1
    SET old_emp_points = old_emp_points - 1;

    -- Increment the points for the new employee by 1
    SET new_emp_points = new_emp_points + 1;

    -- Update the points for the old employee
    UPDATE employee_points SET points = old_emp_points WHERE e_id = old_emp_id;

    -- Update the points for the new employee
    UPDATE employee_points SET points = new_emp_points WHERE e_id = new_emp_id;
END;
//

DELIMITER ;



CREATE OR REPLACE VIEW payment_summary_view AS
SELECT
    p.id AS p_id,
    p.p_method,
    p.p_to,
    f.f_name,
    f.f_locallity AS f_locality,
    f.f_ac
FROM
    payment p
JOIN
    farmers f ON p.p_to = f.f_no;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;