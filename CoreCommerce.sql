-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 03:44 AM
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
-- Database: `pbd`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_product_price` (IN `product_id` INT, IN `new_price` DECIMAL(10,2))   BEGIN
  UPDATE product
  SET p_current_price = new_price
  WHERE p_id = product_id;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_total_price` (`quantity` INT, `unit_price` DECIMAL(10,2)) RETURNS DECIMAL(10,2)  BEGIN
  RETURN quantity * unit_price;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(30, 'Beige'),
(31, 'Dark Blue'),
(32, 'Light Greige'),
(33, 'Light Beige');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_total_payment` decimal(10,2) DEFAULT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_total_payment`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_s_name`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_datetime`, `cust_status`) VALUES
(15, 'Darriel Markerizal', 'darrielmarkerizal@gmail.com', 430.00, '6285155222564', 101, 'Perum GPW Blok BS12B', 'Sleman', 'D.I. Yogyakarta', '55581', 'Darriel Markerizal', '6285155222564', 101, 'Perum GPW Blok BS12B', 'Sleman', 'D.I. Yogyakarta', '55581', 'c02e9e0eca9911d421905d0c21012283', '2023-06-07 17:53:21', 1),
(16, 'Yodhimas Geffananda', 'yodhimasgeffananda@mail.ugm.ac.id', NULL, '62125684894151', 101, 'Pogung', 'Sleman', 'D.I. Yogyakarta', '55581', '', '', 0, '', '', '', '', '40a88ec61181d5af34dd81a7ba738a24', '', 1),
(17, 'Nawal Rizky Kautsar', 'nawalrizkykautsar@mail.ugm.ac.id', NULL, '62125684894151', 101, 'Palagan', 'Sleman', 'D.I. Yogyakarta', '55581', '', '', 0, '', '', '', '', '8d1929c2aaef59982da807e59a16fbbb', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_message`
--

CREATE TABLE `customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `end_category`
--

CREATE TABLE `end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `end_category`
--

INSERT INTO `end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Headwear ', 1),
(2, 'Sunglasses', 1),
(3, 'Watches', 1),
(4, 'Sandals', 2),
(5, 'Boots', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(8, 'Watches', 4),
(9, 'Sunglasses', 4),
(11, 'Sports Shoes', 2),
(12, 'Sandals', 6),
(13, 'Flat Shoes', 6),
(14, 'Hoodies', 7),
(15, 'Coats & Jackets', 7),
(16, 'Pants', 8),
(17, 'Jeans', 8),
(18, 'Joggers', 8),
(19, 'Shorts', 8),
(20, 'T-shirts', 9),
(21, 'Casual Shirts', 9),
(22, 'Formal Shirts', 9),
(24, 'Vests', 9),
(25, 'Casual Shoes', 2),
(26, 'Boys', 10),
(27, 'Girls', 10),
(28, 'Boys', 11),
(29, 'Girls', 11),
(30, 'Boys', 12),
(31, 'Girls', 12),
(32, 'Dresses', 7),
(33, 'Tops', 7),
(34, 'T-Shirts & Vests', 7),
(35, 'Pants & Leggings', 7),
(36, 'Sportswear', 7),
(37, 'Plus Size Clothing', 7),
(38, 'Socks & Hosiery', 7),
(39, 'Fragrance', 3),
(40, 'Skincare', 3),
(41, 'Hair Care', 3),
(42, 'Jewellery', 4),
(43, 'Eyes Care', 3),
(44, 'Lips', 3),
(45, 'Face Care', 3),
(46, 'Gift Sets', 3),
(47, 'Scarves & Headwear', 4),
(48, 'Multipacks', 4),
(49, 'Other Accessories', 4),
(50, 'Pumps', 6),
(51, 'Sneakers', 6),
(52, 'Sports Shoes', 6),
(53, 'Boots', 6),
(54, 'Comfort Shoes', 6),
(55, 'Slippers & Casual Shoes', 6),
(56, 'Formal Shoes', 2),
(57, 'Belts', 1),
(59, 'Other Accessories', 1),
(60, 'Bags', 4),
(61, 'Cell Phone and Accessories', 14),
(62, 'Headphones', 14),
(63, 'Security and Surveillance', 14),
(64, 'Television and Video', 14),
(65, 'GPS and Navigation', 14),
(66, 'Home Audio', 14),
(67, 'Computer Components', 15),
(68, 'Computers and Tablets', 15),
(69, 'Laptop Accessories', 15),
(70, 'Printer and Monitors', 15),
(71, 'External Components', 15),
(72, 'Networking Products', 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `end_category_products`
-- (See below for the actual view)
--
CREATE TABLE `end_category_products` (
`ecat_name` varchar(255)
,`total_products` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'IDR'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Hi,', 'Hi,'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'eWallet', 'eWallet'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Shipping Info', 'Update Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Never miss out! Sign up for our newsletter to receive exclusive updates and special offers', 'Never miss out! Sign up for our newsletter to receive exclusive updates and special offers'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link has been sent to your email address. You will receive the password reset information there.\r\n\r\n\r\n\r\n\r\n', 'A confirmation link has been sent to your email address. You will receive the password reset information there.\r\n\r\n\r\n\r\n\r\n'),
(146, 'Great news! Your password has been reset successfully. You can now proceed to log in and enjoy our services.', 'Great news! Your password has been reset successfully. You can now proceed to log in and enjoy our services.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Apologies! Your account is currently inactive. Please contact the administrator for further assistance.', 'Apologies! Your account is currently inactive. Please contact the administrator for further assistance.'),
(149, 'Change Password', 'Change Password'),
(150, 'Email Confirmation for Registration on Your Website', 'Email Confirmation for Registration on Your Website'),
(151, 'Thank you for registering! Your account has been successfully created. To activate your account, please click on the link below:', 'Thank you for registering! Your account has been successfully created. To activate your account, please click on the link below:'),
(152, 'Congratulations! Your account has been successfully registered. Please proceed to login and start exploring our services. Click <a href=\'login.php\'>here</a> to login\r\n', 'Congratulations! Your account has been successfully registered. Please proceed to login and start exploring our services. Click <a href=\'login.php\'>here</a> to login\r\n'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add the item to your cart', 'Add the item to your cart'),
(155, 'Discover the related products below.', 'Discover the related products below.'),
(156, 'Please explore all the related products listed below.', 'Please explore all the related products listed below.'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'To proceed with the checkout process, kindly log in as a customer', 'To proceed with the checkout process, kindly log in as a customer'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Thank you for submitting your rating! Your feedback has been received and is greatly appreciated.', 'Thank you for submitting your rating! Your feedback has been received and is greatly appreciated.'),
(164, 'Credit Card', 'Credit Card'),
(165, 'Minimarket', 'Minimarket'),
(166, 'Cash On Delivery', 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `mid_category`
--

CREATE TABLE `mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mid_category`
--

INSERT INTO `mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Men Accessories', 1),
(2, 'Men\'s Shoes', 1),
(3, 'Beauty Products', 2),
(4, 'Accessories', 2),
(6, 'Shoes', 2),
(7, 'Clothing', 2),
(8, 'Bottoms', 1),
(9, 'T-shirts & Shirts', 1),
(10, 'Clothing', 3),
(11, 'Shoes', 3),
(12, 'Accessories', 3),
(14, 'Electronic Items', 4),
(15, 'Computers', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(15, 5, 'Cozy Cabled Knit Hat', 'One Size for All', '', '1', '85.000', '1687223924'),
(16, 15, 'SunGlide ProVision Sports Sunglasses', 'One Size for All', 'Black', '1', '429.900', '1687223995');

--
-- Triggers `order_table`
--
DELIMITER $$
CREATE TRIGGER `update_total_view` AFTER INSERT ON `order_table` FOR EACH ROW BEGIN
  UPDATE product
  SET p_total_view = p_total_view + 1
  WHERE p_id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `about_title`, `about_content`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to CoreCommerce!</p>\r\n<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">At CoreCommerce, we are dedicated to providing you with a wide range of the latest products. With our extensive experience, we know exactly how to offer high-quality products at budget-friendly prices. Our commitment to excellent customer service and friendly support sets us apart.</span></p>\r\n<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We stay updated with the latest trends and prioritize our customers\' needs. This has resulted in satisfied customers from all over the world, making us proud to be part of the industry.</span></p>\r\n<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">Customer satisfaction is our top priority. We hope you enjoy our products as much as we enjoy making them available to you.</span></p>\r\n<p>We guarantee the best quality outfits with a hassle-free returns and exchanges policy. What you see is what you get!</p>\r\n<ul>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Our commitment: Ensuring the best price for you</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Always here to assist you: Round-the-clock customer support available</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Multiple ways to connect: Email, text, or call us</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">We\'re here for you 24/7, ready to assist online or over the phone</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Find your perfect fit: Explore sizing options and vibrant color choices</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Delivering worldwide: We ship to locations across the globe</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Coming soon: We have exciting plans to expand our business internationally</span></font></li>\r\n    <li style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Hassle-free returns: Enjoy a seamless and straightforward return process</span></font></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><font face=\"Plus Jakarta Sans, sans-serif\"><span style=\"font-size: 14px;\">Changed your mind about your outfit? No worries! Our hassle-free return policy gives you 3 days to initiate the return process. For more details, please reach out to us at support@corecommerce.com</span></font></p>\r\n\r\n', 'CoreCommerce - About Us', 'about, about us, about fashion, about company', 'Our mission is to unleash your true potential by offering an extensive selection of breathtaking dresses for every occasion, be it a party, wedding, or any event that calls for a show-stopping outfit.', 'FAQ', '', '', '', 'Blog', 'CoreCommerce- Blog', '', '', 'Contact Us', '', '', '', 'Photo Gallery', 'CoreCommerce - Photo Gallery', '', '', 'Video Gallery', 'CoreCommerce- Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `cust_total_payment` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `paid_amount`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`, `cust_total_payment`) VALUES
(77, 15, 'Darriel Markerizal', 'darrielmarkerizal@gmail.com', '2023-06-20 08:19:55', 430, 'Cash On Delivery', 'Completed', 'Pending', '1687223995', NULL);

--
-- Triggers `payment`
--
DELIMITER $$
CREATE TRIGGER `calculate_total_payment` AFTER INSERT ON `payment` FOR EACH ROW BEGIN
  DECLARE customer_total_payment DECIMAL(10,2);
  
  SELECT SUM(paid_amount) INTO customer_total_payment
  FROM payment
  WHERE customer_id = NEW.customer_id;
  
  UPDATE customer
  SET cust_total_payment = customer_total_payment
  WHERE cust_id = NEW.customer_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 'Easy Breezy Pocket Tee: Unwind in Style', '150.000', '125.000', 100, 'product-featured-1.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n  <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n  Indulge in effortless comfort and casual coolness with our Relaxed Fit Pocket-detail T-shirt. Crafted with relaxation in mind, this versatile tee is the epitome of laid-back style. \r\n  The relaxed fit allows for easy movement, while the pocket detail adds a touch of understated charm. Whether you\'re lounging at home, running errands, or meeting up with friends, \r\n  this T-shirt is your go-to choice for an effortlessly stylish look. Made with high-quality fabric, it offers superior softness and durability. Embrace comfort without compromising on style with our Relaxed Fit Pocket-detail T-shirt, \r\n  the perfect addition to your wardrobe.\r\n  </span>\r\n</p>', '<p>\r\n  <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n    Experience the ultimate blend of comfort and style with our Relaxed Fit Pocket-detail T-shirt, perfect for any casual occasion.\r\n  </span>\r\n  <br>\r\n</p>', '<ul>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Relaxed Fit: Designed for optimal comfort and unrestricted movement.\r\n    </span>\r\n  </li>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n      Pocket Detail : Adds a subtle yet stylish touch to the classic tee.\r\n    </span>\r\n  </li>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n    Versatile Style: Perfect for various casual occasions, from lounging to socializing.\r\n    </span>\r\n  </li>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n    High-Quality Fabric: Made with premium materials for superior softness and durability.\r\n    </span>\r\n  </li>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n    Easy Care: Machine washable and easy to maintain.\r\n    </span>\r\n  </li>\r\n  <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n    Wide Range of Sizes: Available in a range of sizes to ensure the perfect fit for everyone.\r\n    </span>\r\n  </li>\r\n</ul>', '<p>Our Relaxed Fit Pocket-detail T-shirt is brand new and in excellent condition. Each shirt undergoes meticulous quality checks to ensure it meets our high standards. It is made with precision and attention to detail, using top-notch materials that are both comfortable and durable. You can trust that the stitching is secure and the fabric is free from any defects. We take pride in delivering products that are in pristine condition, ready to be worn and enjoyed. Rest assured that when you receive our Relaxed Fit Pocket-detail T-shirt, it will be in perfect condition, allowing you to experience the utmost satisfaction and enjoyment from your purchase.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 6, 1, 1, 20),
(2, 'Ultimate Comfort Bundle: Long Fit T-Shirt Duo', '', '150.000', 75, 'product-featured-2.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing our Ultimate Comfort Bundle: Long Fit T-Shirt Duo! Upgrade your wardrobe essentials with this stylish and versatile set of two long-fit t-shirts. Crafted from premium quality materials, these shirts offer a perfect balance of comfort and style.\r\n\r\n        Designed with a longer length, these t-shirts provide a sleek and modern look that effortlessly pairs with any outfit. Whether you\'re going for a casual day out or a laid-back evening, these shirts offer endless possibilities for creating trendy and comfortable ensembles.\r\n        \r\n        The soft and breathable fabric ensures a pleasant wearing experience throughout the day, keeping you cool and at ease. The tailored fit enhances your silhouette while allowing freedom of movement. Whether you wear them as standalone pieces or layer them under a jacket or sweater, these t-shirts guarantee both style and comfort.\r\n        \r\n        The Ultimate Comfort Bundle: Long Fit T-Shirt Duo is a must-have addition to your wardrobe, providing you with timeless style and unmatched comfort. Upgrade your collection today and experience the perfect blend of fashion and functionality.\r\n    </span>\r\n  </p>', '  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Upgrade your wardrobe essentials with our Ultimate Comfort Bundle: Long Fit T-Shirt Duo, offering a stylish and versatile set of two long-fit t-shirts that combine timeless style with unmatched comfort.\r\n    </span>\r\n    <br>\r\n  </p>', ' <ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Premium Quality: Crafted from high-quality materials for durability and long-lasting comfort.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Long Fit Design: Provides a modern and sleek look with an extended length.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Style: Perfect for creating various stylish outfits, suitable for casual or layered looks.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Soft and Breathable Fabric: Ensures all-day comfort and keeps you cool.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Convenient Two-Pack: Get double the value with two stylish long-fit t-shirts in one bundle.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Timeless Wardrobe Essential: A must-have addition that combines fashion and functionality.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>Our Ultimate Comfort Bundle: Long Fit T-Shirt Duo is in brand new condition. Each t-shirt is carefully packaged and delivered to you in pristine condition. You can expect unworn, unused, and unopened items that are free from any defects or damage. We take pride in ensuring that our products meet the highest quality standards, so you can confidently enjoy your new t-shirts straight out of the package.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 2, 0, 1, 20),
(3, 'Sleek Slim Fit Stretch Shirt for Men', '699.000', '499.000', 50, 'product-featured-3.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Upgrade your wardrobe with our Modern Comfort Men\'s Stretch Shirt in Slim Fit. This shirt combines contemporary style with ultimate comfort, making it a must-have for the fashion-forward gentleman. The slim fit silhouette offers a sleek and streamlined look, while the stretch fabric allows for freedom of movement and a comfortable fit all day long. Whether you\'re dressing up for a formal event or going for a smart-casual look, this shirt effortlessly elevates your style. With its modern twist on a classic design, this shirt is a versatile and timeless addition to any man\'s collection. Experience the perfect blend of style and comfort with our Slim Fit Stretch Shirt for men.</span>\r\n  </p>\r\n\r\n', ' <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your style and comfort with our Modern Comfort Men\'s Stretch Shirt in Slim Fit, a versatile and timeless addition to your wardrobe.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Slim Fit: The shirt is designed with a slim fit silhouette, offering a sleek and modern look.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stretch Fabric: Made with stretchy fabric, this shirt provides flexibility and freedom of movement for ultimate comfort.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Contemporary Style: It features a modern twist on a classic design, perfect for those who want to stay stylish and on-trend.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile: This shirt can be dressed up for formal occasions or dressed down for a smart-casual look, making it suitable for various occasions.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Quality Construction: Crafted with attention to detail and high-quality materials, this shirt is made to last.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Timeless Addition: With its versatile design and enduring style, this shirt is a timeless piece that can be worn season after season.\r\n      </span>\r\n    </li>\r\n  </ul>', '  <p>The Modern Comfort Men\'s Stretch Shirt in Slim Fit is in brand new condition, directly from the manufacturer. It has never been worn or used, and it arrives in its original packaging. The shirt is meticulously crafted with high-quality materials, ensuring its pristine condition. Rest assured, you will receive a fresh and flawless shirt that is ready to be worn and enjoyed.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 9, 1, 1, 22),
(4, 'Relaxed Fit Short-Sleeved Shirt for Unmatched Style and Comfort', '', '379.900', 50, 'product-featured-4.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing our Relaxed Fit Short-Sleeved Shirt, where style meets comfort effortlessly. Crafted with meticulous attention to detail, this shirt is designed to elevate your casual look to new heights. The relaxed fit provides a laid-back yet sophisticated vibe, perfect for any occasion. Made from high-quality materials, it offers a soft and breathable feel against your skin, keeping you cool and comfortable throughout the day. The short sleeves add a touch of versatility, allowing you to easily layer or wear it on its own. Whether you\'re heading out for a weekend adventure or meeting friends for a casual outing, this shirt is a must-have addition to your wardrobe. Embrace a look that combines relaxed elegance and contemporary style with our Relaxed Fit Short-Sleeved Shirt.</span>\r\n  </p>\r\n', '<p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your casual style with our Relaxed Fit Short-Sleeved Shirt, designed for comfort and effortless sophistication.</span>\r\n    <br>\r\n  </p>', '  <ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Relaxed Fit: Designed with a loose and comfortable fit for a laid-back yet stylish look.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Short Sleeves: Allows for easy layering and provides a versatile option for warmer weather.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        High-Quality Materials: Made from premium fabrics to ensure durability, comfort, and a soft feel against the skin.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Breathable: Provides excellent airflow, keeping you cool and comfortable throughout the day.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Meticulous Craftsmanship: Designed with attention to detail, ensuring a polished and refined look.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Easy Care: Low-maintenance garment that is machine washable and retains its shape and color after multiple washes.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>Our Relaxed Fit Short-Sleeved Shirt is in brand new condition and comes with original tags attached. It has never been worn or used, ensuring that you receive a fresh and pristine product. We take great care in handling and packaging our items to maintain their impeccable condition during transit, so you can enjoy your new shirt in perfect form upon arrival.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 55, 1, 1, 21),
(5, 'Cozy Cabled Knit Hat', '', '85.000', 25, 'product-featured-5.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Keep cozy and stylish during the chilly seasons with our Rib Knit Hat. Crafted with care, this hat features a soft and warm ribbed knit design that provides both comfort and a trendy look. Its versatile and timeless design makes it perfect for pairing with any outfit, while the stretchy fabric ensures a snug and comfortable fit for all head sizes. Whether you\'re braving the winter winds or simply adding a fashionable touch to your ensemble, our Rib Knit Hat is the perfect accessory to keep you both warm and stylish.</span>\r\n  </p>', '<p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Stay cozy and fashionable with our Rib Knit Hat, featuring a soft and warm ribbed knit design for all-day comfort.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Soft and Warm: Crafted with a high-quality ribbed knit fabric, our hat offers a cozy and comfortable feel to keep you warm during cold weather.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Design: The timeless rib knit design makes it easy to pair with various outfits, from casual to dressy, adding a touch of style to your ensemble.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stretchy and Flexible: The hat is designed with a stretchy fabric that ensures a perfect fit and accommodates different head sizes for maximum comfort.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Durable Construction: Made with attention to detail, our hat is built to last, providing long-lasting wear and retaining its shape even after repeated use.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Easy Care: Our hat is low maintenance and easy to care for, allowing you to enjoy its benefits without any hassle.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Unisex Appeal: Suitable for both men and women, our Rib Knit Hat offers a versatile and gender-neutral option for anyone looking to stay warm and fashionable.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>Our Rib Knit Hat is in brand new condition, ensuring that you receive a product that is untouched and in pristine condition. It is free from any defects or signs of wear, providing you with a fresh and flawless hat ready to be worn or gifted. We take great care in packaging and handling our products to maintain their original quality, so you can trust that your Rib Knit Hat will arrive in perfect condition, ready to keep you stylish and warm.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 66, 1, 1, 1),
(6, 'Chic Comfort Joggers', '', '499.900', 100, 'product-featured-6.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing our Chic Comfort Joggers: Effortlessly Stylish Regular Fit Dress Pants! Elevate your wardrobe with these versatile joggers that seamlessly blend comfort and fashion. Crafted with meticulous attention to detail, these regular-fit dressy joggers offer a perfect balance of style and ease.\r\n\r\nMade from premium quality fabric, these joggers provide a comfortable and relaxed fit while exuding an air of sophistication. The elastic waistband ensures a secure yet flexible fit, while the tapered leg design adds a touch of modernity to your ensemble. Whether you\'re attending a social gathering or enjoying a casual day out, these joggers effortlessly transition from day to night.\r\n\r\nWith their tailored silhouette, these joggers offer a polished and refined look. They feature functional pockets that add convenience without compromising on style. The versatility of these joggers allows you to pair them with a variety of tops, from casual tees to elegant blouses, creating endless outfit possibilities.\r\n\r\nExperience the perfect fusion of comfort and style with our Chic Comfort Joggers. Embrace fashion-forward elegance without sacrificing your comfort. Shop now and upgrade your wardrobe with these effortlessly stylish regular fit dress pants.</span>\r\n  </p>\r\n', '<p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your style with our Chic Comfort Joggers: effortlessly stylish regular fit dress pants that offer the perfect fusion of comfort and fashion.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Effortless Style: These joggers combine the ease of casual wear with a stylish, dressy look, allowing you to effortlessly elevate your outfit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Regular Fit: Designed for a comfortable and relaxed fit, these joggers provide freedom of movement without compromising on style.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Premium Quality Fabric: Crafted from high-quality materials, these joggers offer durability, softness, and a luxurious feel.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Elastic Waistband: The elastic waistband ensures a secure and adjustable fit, accommodating various body shapes and sizes.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Tapered Leg Design: With a modern tapered leg design, these joggers offer a sleek and contemporary silhouette.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Functional Pockets: Featuring practical pockets, these joggers offer convenient storage for small essentials while maintaining a clean, streamlined appearance.\r\n      </span>\r\n    </li>\r\n  </ul>\r\n', '<p>The Chic Comfort Joggers are brand new and in excellent condition, carefully inspected to ensure they meet our high standards of quality and craftsmanship. Each pair is free from defects, tears, or any signs of wear. Rest assured, you will receive a pristine and impeccable product, ready to enhance your style and provide the utmost comfort.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 4, 0, 1, 18),
(7, 'CoolFit Cropped Cotton Chinos', '', '459.900', 190, 'product-featured-7.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Upgrade your wardrobe with our CoolFit Cropped Cotton Chinos. These slim-fit bottoms are crafted from high-quality cotton, ensuring superior comfort and breathability. With their modern cropped length, they effortlessly blend style and versatility. Whether you\'re heading to the office or going out with friends, these chinos are perfect for any occasion. The sleek design and impeccable tailoring make them a must-have addition to your fashion collection. Complete your ensemble with a crisp shirt or a casual tee, and step out with confidence in these stylish and trendy chinos.</span>\r\n  </p>', ' <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your style with our CoolFit Cropped Cotton Chinos, featuring a slim-fit design and modern cropped length for a fashionable and versatile look.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Slim Fit: Designed to provide a modern and streamlined silhouette.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Cropped Length: Fashionably shorter length that adds a contemporary touch to your outfit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        High-Quality Cotton: Made from premium cotton fabric for superior comfort and breathability.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Style: Perfect for both casual and semi-formal occasions, allowing you to dress up or down effortlessly.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Impeccable Tailoring: Expertly crafted with attention to detail, ensuring a refined and polished look.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Easy to Pair: Versatile chinos that can be effortlessly matched with shirts, tees, and jackets for endless outfit combinations.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>The CoolFit Cropped Cotton Chinos are in impeccable condition, as they are sourced directly from the manufacturer as brand new items. Crafted with utmost precision and attention to detail, these chinos boast excellent quality. You can trust that they are genuine products, obtained from trusted suppliers. When they arrive at your doorstep, they will be intact in their original packaging, ensuring their protection during transit. These chinos have never been worn or touched, guaranteeing their pristine condition. They are clean and odor-free, free from any signs of dirt, stains, or imperfections. Prior to dispatch, each pair of chinos undergoes a rigorous quality check to ensure they meet our highest standards of excellence. In the unlikely event that the product does not meet your expectations or if there are any issues with the condition, our hassle-free return policy is in place to ensure your satisfaction. You can confidently expect the CoolFit Cropped Cotton Chinos to arrive in perfect condition and ready to elevate your style.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 19, 0, 1, 16),
(8, 'SleekFit Denim', '', '499.900', 60, 'product-featured-8.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing SleekFit Denim: The Ultimate Skinny Jeans. These jeans offer a flawless fit that accentuates your curves and embraces your unique shape. Made from high-quality, stretchy fabric, they provide both style and comfort. The innovative design ensures a second skin feel, allowing you to move with ease while maintaining a streamlined silhouette. Elevate your fashion game and feel confident in SleekFit Denim.\r\n\r\nDiscover TrendSetter Skinny Jeans, the go-to choice for fashion-forward individuals. With their chic and contemporary look, these jeans redefine your style. Whether it\'s a casual outing or a night on the town, they effortlessly elevate your fashion game. The versatility of TrendSetter Skinny Jeans makes them the perfect choice for any occasion. Step out in style and make a fashion statement with TrendSetter Skinny Jeans.\r\n\r\nExperience the perfect blend of style and comfort with our CurveContour Jeans. These second skin skinny jeans are meticulously crafted to provide a flattering fit that celebrates your unique shape. Made with high-quality, stretchable fabric, they offer exceptional flexibility and comfort. Embrace your individuality and elevate your denim game with CurveContour Jeans.</span>\r\n  </p>', '\r\n  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Introducing SleekFit Denim: The Ultimate Skinny Jeans that provide a flawless fit, accentuating your curves and embracing your unique shape.</span>\r\n    <br>\r\n  </p>\r\n', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Flawless Fit: These skinny jeans are meticulously designed to provide a perfect fit that accentuates your curves and embraces your unique shape.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stretchy Fabric: Made from high-quality, stretchable material, SleekFit Denim offers exceptional flexibility and comfort, allowing for ease of movement.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Style: SleekFit Denim is versatile and can be dressed up or down for various occasions, making it a go-to choice for any outfit.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Premium Quality: Crafted with attention to detail, these jeans showcase impeccable craftsmanship and durability.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Confidence Booster: With SleekFit Denim, you can feel confident and stylish, knowing that you\'re wearing jeans that flatter your figure and enhance your fashion game.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Easy to Pair: SleekFit Denim effortlessly complements a wide range of tops and footwear, making it easy to create stylish outfits.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>SleekFit Denim is available in brand new and excellent condition. Each pair of jeans goes through rigorous quality control measures to ensure they meet the highest standards of craftsmanship. They are free from defects, such as rips, tears, or stains, and are ready to be worn and enjoyed. The fabric retains its original color and texture, maintaining the vibrant and sleek appearance that makes SleekFit Denim stand out. We take pride in delivering products that are in pristine condition, allowing our customers to experience the utmost satisfaction when they receive their SleekFit Denim jeans. Rest assured, you will receive your order in impeccable condition, ready to enhance your style and provide the utmost comfort.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 3, 1, 1, 17);
INSERT INTO `product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(9, 'ComfyCool Relaxation Shorts', '', '599.900', 70, 'product-featured-9.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing our \"Easy Breeze Relaxed Shorts\" - the perfect blend of comfort and style for your casual wardrobe. These shorts are designed to provide a laid-back and effortless look while keeping you cool and comfortable throughout the day. Made with high-quality materials, they offer a relaxed fit that allows for ease of movement. Whether you\'re lounging at home or running errands, these shorts are your go-to choice. With their versatile design, they can be easily paired with a variety of tops and shoes, making them a versatile addition to your collection. Embrace relaxation and style with our Easy Breeze Relaxed Shorts.</span>\r\n  </p>\r\n', '<p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Experience ultimate comfort and style with our Easy Breeze Relaxed Shorts, perfect for lounging or running errands.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Fit: Designed with a relaxed fit, these shorts offer unrestricted movement and all-day comfort.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        High-Quality Material: Made from premium fabrics, ensuring durability and a soft touch against your skin.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Breathable Design: The shorts are crafted with breathable materials, keeping you cool and comfortable in warm weather.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Elastic Waistband: Equipped with an elastic waistband, these shorts provide a secure and adjustable fit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Multiple Pockets: Featuring convenient pockets, these shorts provide ample storage space for your essentials.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stylish Details: The shorts showcase stylish accents such as a drawstring waist or decorative stitching, adding a touch of flair to your outfit.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>Our Easy Breeze Relaxed Shorts are brand new and in excellent condition. They are carefully crafted with attention to detail to ensure top-notch quality. Each pair of shorts undergoes thorough quality control checks to meet our high standards. They are free from any defects, tears, or imperfections. The materials used are of the finest quality, ensuring durability and longevity. Rest assured, when you receive your order, you will find the Easy Breeze Relaxed Shorts in pristine condition, ready to provide you with the utmost comfort and style.</p>', '<p>\r\n  <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n\r\nWe want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\nTo initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n\r\nPlease note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n\r\nOnce we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n\r\nIn the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n\r\nWe strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n  </span></p>', 29, 0, 1, 19),
(10, 'StealthGrip Pro-X Boots', '', '879.900', 120, 'product-featured-10.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing the StealthGrip Pro-X Boots, the ultimate companion for your outdoor adventures. These boots are designed to provide unparalleled performance and durability in any terrain. With their advanced grip technology, you can confidently conquer rocky terrains, slippery surfaces, and challenging trails. The StealthGrip Pro-X Boots offer a seamless blend of comfort and protection, featuring a cushioned insole and reinforced construction. Whether you\'re hiking, trekking, or exploring the wilderness, these boots will keep your feet secure and comfortable throughout the journey. Take on nature\'s challenges with confidence in the StealthGrip Pro-X Boots.</span>\r\n  </p>', '<p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Conquer any terrain with confidence in the StealthGrip Pro-X Boots, the ultimate blend of performance, durability, and comfort.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Advanced Grip Technology: Experience superior traction and stability on various surfaces, ensuring confidence and safety during outdoor activities.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Durable Construction: The boots are built to withstand rugged conditions, with reinforced materials that provide long-lasting durability.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Cushioned Insole: Enjoy all-day comfort with a cushioned insole that provides support and reduces fatigue during extended wear.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Breathable Design: Stay cool and dry with a breathable design that helps to regulate foot temperature and prevent moisture buildup.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stylish and Modern: With a sleek and modern design, these boots not only deliver performance but also add a touch of style to your outdoor ensemble.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        All-Weather Protection: The boots are designed to withstand different weather conditions, keeping your feet protected from rain, snow, and mud.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>\r\nThe condition of the StealthGrip Pro-X Boots is designed to meet the demands of outdoor enthusiasts and adventurers. These boots are brand new and in excellent condition, ready to provide optimal performance and durability. They have not been used or worn before, ensuring that you receive a product in pristine condition. The materials are free from defects and offer the highest level of quality and craftsmanship. Each component of the boots, from the outsole to the insole, has been carefully inspected to ensure that they meet the highest standards. You can trust that the StealthGrip Pro-X Boots are in perfect condition, ready to accompany you on your outdoor adventures and provide the comfort, protection, and performance you need.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 118, 0, 1, 5),
(11, 'ElegaStride', '', '699.000', 200, 'product-featured-11.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        The \"ElegaStride\" Derby Shoes are the epitome of timeless sophistication. Crafted with meticulous attention to detail, these shoes exude elegance and refinement. The sleek and polished design features genuine leather uppers, providing durability and a luxurious feel. With their classic lace-up closure and sturdy construction, these derby shoes offer both style and comfort. Whether you\'re attending a formal event or simply want to elevate your everyday look, the \"ElegaStride\" Derby Shoes are the perfect choice for the modern gentleman who values quality and style.</span>\r\n  </p>', '\r\n\r\n  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Step into timeless sophistication with the \"ElegaStride\" Derby Shoes - a perfect blend of elegance, comfort, and craftsmanship.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Premium Material: Crafted with genuine leather uppers, ensuring durability, comfort, and a luxurious feel.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Lace-up Closure: Features a traditional lace-up closure for a secure and adjustable fit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Sturdy Construction: Built with meticulous attention to detail, these shoes are constructed to withstand daily wear and provide long-lasting performance.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Fit: Designed with the wearer\'s comfort in mind, the \"ElegaStride\" Derby Shoes offer a comfortable fit, allowing you to stay on your feet all day.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Style: Perfect for both formal occasions and elevating your everyday attire, these shoes add a touch of elegance to any outfit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Attention to Detail: The craftsmanship of these derby shoes is evident in the fine stitching, subtle detailing, and impeccable finishing touches.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>The \"ElegaStride\" Derby Shoes are brand new and in excellent condition. They have never been worn or used before, ensuring that you receive a product that is pristine and ready to be enjoyed. Each pair is carefully inspected to meet the highest quality standards, guaranteeing that you receive a product of exceptional craftsmanship. The shoes are free from any defects, scratches, or imperfections, and come in their original packaging. With their flawless condition, you can confidently step into style and elegance, knowing that you are getting a pair of derby shoes that are in perfect condition.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 103, 1, 1, 56),
(12, 'SoleScape Espadrilles', '', '379.900', 26, 'product-featured-12.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        The SoleScape Espadrilles are the perfect blend of style and comfort for your feet. Crafted with care, these espadrilles feature a classic design with a modern twist. The soft and breathable fabric upper ensures a cozy fit, while the jute-wrapped sole adds a touch of natural charm. Whether you\'re strolling along the beach or exploring the city streets, these espadrilles will keep your feet feeling cool and comfortable all day long. With their versatile appeal, they effortlessly complement any casual outfit, making them a must-have addition to your footwear collection. Step into the world of comfort and style with the SoleScape Espadrilles.    \r\n    </span>\r\n  </p>\r\n\r\n\r\n', '\r\n  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Step into ultimate comfort and style with the SoleScape Espadrilles, the perfect blend of classic design and modern charm for all-day wear.</span>\r\n    <br>\r\n  </p>', '  <ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Fit: The soft and breathable fabric upper provides a cozy and snug fit for maximum comfort.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stylish Design: Combining classic elegance with modern charm, these espadrilles feature a timeless design that effortlessly elevates any casual outfit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Breathable Construction: The materials used in the construction of these espadrilles allow for optimal breathability, keeping your feet cool and fresh.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Jute-Wrapped Sole: The jute-wrapped sole not only adds a touch of natural charm but also provides durability and flexibility for everyday wear.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Appeal: Suitable for various occasions, the SoleScape Espadrilles are versatile enough to be paired with jeans, skirts, or dresses, making them a versatile addition to your footwear collection.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        All-Day Comfort: With their comfortable fit and cushioned insole, these espadrilles are designed to keep your feet comfortable and supported throughout the day.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>The SoleScape Espadrilles are brand new and in excellent condition. They have undergone meticulous quality control to ensure that every pair meets the highest standards. The fabric upper is intact, without any tears or frays, while the jute-wrapped sole is securely attached. The insole is clean and free from any defects. The stitching is precise and durable, guaranteeing long-lasting wear. The slip-on design functions smoothly, allowing for easy on and off. The outsole is in pristine condition, providing reliable traction and showing minimal signs of wear. Whether you\'re purchasing these espadrilles online or in-store, you can expect to receive them in impeccable condition, ready to provide you with the utmost comfort and style.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 13, 0, 1, 25),
(13, 'Tropical Print Pool Sliders', '', '429.900', 26, 'product-featured-13.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing our Printed Pool Sliders, the ultimate summer footwear for those seeking both style and comfort. These sliders are designed to elevate your poolside or beach look with their vibrant tropical prints. Slip them on effortlessly and feel the softness of the cushioned sole as you stroll along the shore or lounge by the pool. The durable construction ensures long-lasting wear, while the non-slip sole provides stability on wet surfaces. Whether you\'re soaking up the sun or exploring resort destinations, our Printed Pool Sliders are the perfect companion for your summer adventures. Embrace the spirit of summer and make a stylish statement with these trendy and eye-catching sliders.\r\n    </span>\r\n  </p>\r\n', '\r\n\r\n  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your summer style with our vibrant Printed Pool Sliders, offering comfort and trendiness for all your beach and poolside adventures.</span>\r\n    <br>\r\n  </p>\r\n', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Vibrant Tropical Prints: Stand out in style with our eye-catching and vibrant tropical print designs.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Cushioned Sole: Enjoy all-day comfort with the cushioned sole that provides a soft and supportive feel.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Slip-On Design: Effortlessly slide into these pool sliders for quick and convenient wear.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Non-Slip Sole: Stay steady on wet surfaces with the non-slip sole, providing traction and stability.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Easy to Clean: Simply wipe or rinse off any dirt or sand to keep your pool sliders looking fresh and ready to go.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Stylish and Trendy: Make a fashion statement with these on-trend pool sliders that add a pop of personality to your summer wardrobe.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>Our Printed Pool Sliders are in excellent condition, ensuring that you receive a product that is free from defects and ready to be worn. Each pair of sliders undergoes a thorough quality control process to meet our high standards. We carefully inspect the materials, stitching, and overall construction to ensure durability and longevity. Rest assured that your pool sliders will arrive in pristine condition, ready to provide comfort and style for your summer adventures. In the unlikely event that you encounter any issues with the condition of your purchase, our dedicated customer service team is available to assist you and resolve any concerns promptly. Your satisfaction is our top priority, and we strive to deliver products in the best condition possible.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 5, 1, 1, 4),
(14, 'GlideFit™ FlexTrainers', '', '499.000', 90, 'product-featured-14.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing GlideFit™ FlexTrainers, the perfect companion for your fitness journey. These trainers are designed to provide unmatched comfort, support, and flexibility to enhance your workout experience. With their innovative technology and sleek design, GlideFit™ FlexTrainers offer a smooth gliding motion that helps optimize your movements, whether you\'re hitting the gym, going for a run, or participating in your favorite fitness class. The breathable materials and cushioned soles ensure maximum comfort, while the durable construction guarantees long-lasting performance. Step into a new level of fitness with GlideFit™ FlexTrainers and experience the perfect blend of style and functionality.\r\n    </span>\r\n  </p>', '  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Experience the ultimate in comfort, support, and flexibility with GlideFit™ FlexTrainers, designed to enhance your fitness journey with their innovative gliding technology and stylish design.</span>\r\n    <br>\r\n  </p>', '  <ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Innovative Gliding Technology: Enjoy a smooth and fluid motion during your workouts, optimizing your movements and minimizing strain.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Superior Comfort: Designed with breathable materials and cushioned soles for all-day comfort, allowing you to focus on your fitness goals without any discomfort.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Enhanced Support: Provides excellent support to your feet and ankles, reducing the risk of injuries and promoting stability during high-intensity workouts.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Multi-Sport Compatibility: Suitable for a variety of sports and fitness activities, including running, cross-training, aerobics, and more.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Adjustable Fit: Featuring customizable fit options such as laces or adjustable straps, ensuring a secure and personalized fit for every individual.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Durable Construction: Built to last, GlideFit™ FlexTrainers are made with high-quality materials that withstand rigorous workouts and maintain their performance over time.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>GlideFit™ FlexTrainers are brand new and in excellent condition. They have undergone stringent quality control measures to ensure that they meet the highest standards of performance and durability. Each pair is carefully inspected to guarantee that there are no manufacturing defects or flaws. The trainers are packaged securely to protect them during transportation and delivery, ensuring they arrive in pristine condition. GlideFit™ FlexTrainers are designed to provide long-lasting comfort and support, maintaining their condition even with regular use. However, it is important to follow the care instructions provided to keep them in optimal condition. With proper care and maintenance, you can expect the trainers to remain in excellent condition and provide you with a superior fitness experience for an extended period.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 61, 0, 1, 11),
(15, 'SunGlide ProVision Sports Sunglasses', '', '429.900', 51, 'product-featured-15.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing SunGlide ProVision Sports Sunglasses, the ultimate companion for athletes and outdoor enthusiasts. These sunglasses are designed to provide unrivaled protection and enhance your visual experience during sports activities. With their sleek and stylish design, SunGlide ProVision Sports Sunglasses offer a perfect blend of functionality and fashion.\r\n\r\nFeaturing advanced UV protection, these sunglasses shield your eyes from harmful sun rays, ensuring maximum eye safety. The polarized lenses reduce glare and enhance clarity, allowing you to see with exceptional precision even in bright conditions. Whether you\'re running, cycling, or participating in any outdoor sport, SunGlide ProVision Sports Sunglasses provide the optimal vision you need for peak performance.\r\n\r\nCrafted with high-quality materials, these sunglasses are built to withstand rigorous activities and offer long-lasting durability. The lightweight frame ensures a comfortable fit, allowing you to focus on your performance without any distractions. The adjustable nose pads and temple tips provide a secure grip, ensuring the sunglasses stay in place during intense movements.\r\n\r\nSunGlide ProVision Sports Sunglasses not only prioritize functionality but also exude style. The sleek design and dynamic colors make them a fashionable accessory that complements your sporty look. Whether you\'re on the field, hitting the slopes, or enjoying a sunny day at the beach, these sunglasses elevate your style while protecting your eyes.\r\n\r\nExperience the perfect combination of protection, performance, and style with SunGlide ProVision Sports Sunglasses. Gear up and conquer every outdoor adventure with confidence and clarity.\r\n    </span>\r\n  </p>\r\n', '  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Elevate your performance and style with SunGlide ProVision Sports Sunglasses, offering ultimate protection and enhanced vision for athletes and outdoor enthusiasts.</span>\r\n    <br>\r\n  </p>\r\n', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Advanced UV Protection: Shields your eyes from harmful sun rays during outdoor activities.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Polarized Lenses: Reduces glare and enhances clarity for optimal vision.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Lightweight and Durable Frame: Provides a comfortable fit and withstands rigorous sports activities.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Adjustable Nose Pads and Temple Tips: Ensures a secure grip and prevents slippage during intense movements.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Enhanced Visual Experience: Allows for exceptional precision and clarity in various lighting conditions.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile for Multiple Sports: Suitable for running, cycling, and other outdoor activities.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>SunGlide ProVision Sports Sunglasses are brand new and in excellent condition. They are carefully manufactured with high-quality materials to ensure durability and performance. Each pair of sunglasses undergoes rigorous quality control measures to meet the highest standards. They are free from any defects or damage, and all components, including the frame, lenses, and adjustable features, are in perfect working order. The sunglasses come in their original packaging, which includes a protective case to keep them safe when not in use. Rest assured that when you receive your SunGlide ProVision Sports Sunglasses, they will be in pristine condition, ready to provide you with exceptional eye protection and visual enhancement during your sports activities.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>\r\n  ', 65, 0, 1, 2),
(16, 'Ethereal Harmony Beaded Necklace', '', '149.900', 20, 'product-featured-16.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Introducing the Ethereal Harmony Beaded Necklace, a stunning piece that embodies elegance and grace. This exquisite necklace showcases a mesmerizing combination of carefully selected beads, meticulously crafted to create a harmonious blend of colors and textures.\r\n\r\nEach bead is intricately designed, reflecting the artistry and attention to detail put into its creation. The necklace features a captivating interplay of soft pastel hues, shimmering crystals, and polished stones, giving it a delicate and ethereal aura.\r\n\r\nThe Ethereal Harmony Beaded Necklace is not only a fashion accessory but also a symbol of sophistication and individuality. Its adjustable length allows for versatility in styling, making it suitable for both casual and formal occasions. Whether worn with a chic evening dress or a simple blouse, this necklace effortlessly adds a touch of refinement to any ensemble.\r\n\r\nIndulge in the beauty of this timeless piece and let it enhance your personal style. With its impeccable craftsmanship and captivating design, the Ethereal Harmony Beaded Necklace is sure to become a cherished addition to your jewelry collection, a true expression of your unique and exquisite taste.\r\n    </span>\r\n  </p>\r\n', '  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Experience the enchanting allure of the Ethereal Harmony Beaded Necklace, a captivating blend of colors and textures that exudes elegance and sophistication.</span>\r\n    <br>\r\n  </p>\r\n', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Exquisite Design: Intricately crafted with a captivating blend of beads, crystals, and stones for a visually stunning aesthetic.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Harmonious Color Palette: Soft pastel hues and shimmering accents create a harmonious and elegant color scheme.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        High-Quality Craftsmanship: Meticulously designed and crafted with attention to detail, ensuring durability and longevity.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Unique and Individual: Each necklace is crafted with care, making it a one-of-a-kind accessory that reflects your personal style.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Styling: Perfect for both casual and formal occasions, effortlessly elevating your overall look.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Attention-Grabbing Statement: The Ethereal Harmony Beaded Necklace is a statement piece that effortlessly draws attention and compliments.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>The Ethereal Harmony Beaded Necklace is crafted with utmost care and attention to detail, ensuring its excellent condition. Each bead, crystal, and stone is meticulously inspected and selected to meet high-quality standards. The necklace is made using durable materials and is designed to withstand regular wear without losing its charm.\r\n\r\nTo maintain the necklace\'s pristine condition, it is recommended to handle it with care, avoiding excessive pulling or tugging that could potentially damage the delicate components. Additionally, it is advisable to store the necklace in a jewelry box or a soft pouch when not in use, protecting it from scratches or other potential sources of damage.\r\n\r\nWhile the necklace is designed to be durable, it is important to note that exposure to harsh chemicals, such as perfumes, lotions, or household cleaners, may affect its appearance and longevity. Therefore, it is advisable to remove the necklace before engaging in activities that involve direct contact with such substances.\r\n\r\nRegular cleaning can help preserve the necklace\'s brilliance. Gently wipe it with a soft cloth to remove any dirt or residue that may accumulate over time. Avoid using abrasive cleaners or harsh solvents, as they may harm the delicate beads and crystals.\r\n\r\nBy following these simple care instructions and treating the Ethereal Harmony Beaded Necklace with the respect it deserves, you can ensure that it remains in excellent condition, allowing you to enjoy its beauty and elegance for years to come.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>', 22, 0, 1, 59);
INSERT INTO `product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(17, 'Enchanting Elegance 5-Pack Rings', '', '199.900', 50, 'product-featured-17.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n    <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">\r\n        Enchanting Elegance 5-Pack Rings\" offers a delightful collection of rings that effortlessly elevate your style. Crafted with precision and adorned with exquisite details, each ring in this pack exudes an enchanting allure. Whether you prefer a minimalist design or a touch of glamour, these rings cater to diverse tastes and occasions. Made from high-quality materials, they are built to withstand the test of time while adding a touch of elegance to your every ensemble. With their versatility and undeniable charm, these rings are the perfect accessory to accentuate your personal style and leave a lasting impression. Indulge in the enchantment and elevate your look with the Enchanting Elegance 5-Pack Rings.\r\n    </span>\r\n  </p>', '  <p>\r\n    <span style=\"color: rgb(15, 17, 17); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 14px;\">\r\n        Enhance your style with the Enchanting Elegance 5-Pack Rings, a collection of exquisite and versatile rings designed to add a touch of enchantment to any ensemble.</span>\r\n    <br>\r\n  </p>', '<ul>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Exquisite Design: Each ring is meticulously crafted with intricate details, showcasing exceptional craftsmanship.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Versatile Collection: The pack offers a variety of ring styles, allowing you to mix and match to suit your individual preferences and different occasions.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Comfortable Fit: Designed with comfort in mind, these rings are smooth and lightweight, making them a joy to wear all day.\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Enhances Any Ensemble: Whether worn individually or stacked together, these rings effortlessly elevate your style and add a touch of elegance to any outfit.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Suitable for Various Occasions: From casual outings to formal events, these rings are suitable for everyday wear as well as special occasions, providing endless styling possibilities.\r\n      </span>\r\n    </li>\r\n    <li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\">\r\n      <span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block; font-family: \'Plus Jakarta Sans\', sans-serif;\">\r\n        Adjustable Sizing: Some rings in the pack feature adjustable sizing, providing flexibility and convenience to achieve the perfect fit.\r\n      </span>\r\n    </li>\r\n  </ul>', '<p>The Enchanting Elegance 5-Pack Rings are brand new and in excellent condition. Each ring is carefully inspected to ensure that it meets the highest standards of quality and craftsmanship. They are free from any defects, scratches, or imperfections. The rings are packaged securely to protect them during transportation and delivery, ensuring they arrive in pristine condition. Should you encounter any issues with the product upon receipt, our dedicated customer service team is available to assist you promptly and provide a satisfactory resolution. We strive to deliver a seamless and satisfying shopping experience, ensuring that you receive the Enchanting Elegance 5-Pack Rings in perfect condition to enhance your style and leave you delighted with your purchase.</p>', '  <p>\r\n    <span style=\"color: rgb(32, 33, 36); font-family: \'Plus Jakarta Sans\', sans-serif; font-size: 16px;\">\r\n  \r\n        We want you to be completely satisfied with your purchase. If for any reason you are not entirely happy with your order, we offer a hassle-free return policy for all products.\r\n\r\n        To initiate a return, please ensure that the item is unworn, in its original condition, and with all tags attached. Contact our customer service within 30 days of receiving your order, and we will guide you through the return process.\r\n        \r\n        Please note that personalized or customized items are not eligible for return, unless there is a manufacturing defect. Additionally, for hygiene reasons, we cannot accept returns on undergarments or swimwear.\r\n        \r\n        Once we receive and inspect the returned item, we will process a refund to your original form of payment within a reasonable timeframe. Please allow for some processing time for the refund to reflect in your account.\r\n        \r\n        In the rare event that you receive a damaged or defective product, please contact our customer service immediately, and we will arrange a replacement or refund.\r\n        \r\n        We strive to make your shopping experience as seamless as possible, and our dedicated customer service team is here to assist you throughout the return process.\r\n    </span>\r\n    <br>\r\n  </p>', 17, 0, 1, 59);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `color_id`, `p_id`) VALUES
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 2, 10),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(251, 2, 95),
(252, 6, 95),
(253, 5, 96),
(254, 24, 96),
(256, 2, 94),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97),
(262, 5, 98),
(263, 6, 99),
(264, 14, 100),
(266, 6, 101),
(267, 2, 102),
(268, 2, 6),
(269, 3, 6),
(270, 6, 6),
(271, 30, 6),
(272, 2, 7),
(273, 30, 7),
(274, 31, 7),
(275, 31, 7),
(276, 17, 7),
(277, 2, 8),
(278, 30, 9),
(279, 33, 9),
(280, 2, 9),
(281, 8, 11),
(282, 2, 11),
(283, 2, 12),
(284, 17, 12),
(286, 2, 13),
(287, 6, 14),
(288, 17, 15),
(289, 2, 15),
(290, 6, 16),
(291, 16, 17);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_details`
-- (See below for the actual view)
--
CREATE TABLE `product_details` (
`p_id` int(11)
,`p_name` varchar(255)
,`p_old_price` varchar(10)
,`p_current_price` varchar(10)
,`p_qty` int(10)
,`p_featured_photo` varchar(255)
,`p_description` text
,`p_short_description` text
,`p_feature` text
,`p_condition` text
,`p_return_policy` text
,`p_total_view` int(11)
,`p_is_featured` int(1)
,`p_is_active` int(1)
,`ecat_id` int(11)
,`color_name` varchar(255)
,`size_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_photo`
--

CREATE TABLE `product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_photo`
--

INSERT INTO `product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(131, '131.jpg', 100),
(132, '132.jpg', 102),
(133, '1.jpg', 1),
(134, '2.jpg', 1),
(135, '3.jpg', 1),
(136, '4.jpg', 1),
(137, '5.jpg', 2),
(138, '6.jpg', 2),
(139, '7.jpg', 2),
(140, '8.jpg', 3),
(141, '9.jpg', 3),
(142, '10.jpg', 3),
(143, '11.jpg', 4),
(144, '12.jpg', 4),
(145, '13.jpg', 5),
(146, '14.jpg', 6),
(147, '15.jpg', 6),
(148, '16.jpg', 6),
(149, '17.jpg', 6),
(150, '18.jpg', 7),
(151, '19.jpg', 7),
(152, '20.jpg', 7),
(153, '21.jpg', 8),
(154, '22.jpg', 9),
(155, '23.jpg', 9),
(156, '24.jpg', 9),
(157, '25.jpg', 10),
(158, '26.jpg', 11),
(159, '27.jpg', 11),
(160, '28.jpg', 12),
(161, '29.jpg', 12),
(162, '30.jpg', 12),
(164, '31.jpg', 13),
(165, '32.jpg', 14),
(166, '33.jpg', 15),
(167, '34.jpg', 15),
(168, '35.jpg', 16),
(169, '36.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `size_id`, `p_id`) VALUES
(5, 7, 0),
(44, 1, 6),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(448, 1, 1),
(449, 2, 1),
(450, 3, 1),
(451, 4, 1),
(452, 5, 1),
(453, 6, 1),
(454, 1, 2),
(455, 2, 2),
(456, 3, 2),
(457, 4, 2),
(458, 5, 2),
(459, 6, 2),
(460, 1, 3),
(461, 2, 3),
(462, 3, 3),
(463, 4, 3),
(464, 5, 3),
(465, 6, 3),
(466, 2, 4),
(467, 3, 4),
(468, 5, 4),
(469, 6, 4),
(470, 7, 4),
(471, 4, 4),
(472, 27, 5),
(473, 2, 6),
(474, 3, 6),
(475, 4, 6),
(476, 5, 6),
(477, 6, 6),
(480, 2, 7),
(481, 3, 7),
(482, 4, 7),
(483, 6, 7),
(485, 5, 7),
(486, 3, 8),
(487, 3, 8),
(488, 4, 8),
(489, 5, 8),
(490, 6, 8),
(491, 7, 8),
(492, 2, 9),
(493, 5, 9),
(494, 6, 9),
(495, 17, 10),
(496, 18, 10),
(497, 19, 10),
(498, 20, 10),
(499, 21, 10),
(500, 22, 10),
(501, 16, 11),
(502, 17, 11),
(503, 18, 11),
(504, 19, 11),
(505, 20, 11),
(506, 21, 11),
(507, 17, 12),
(508, 18, 12),
(509, 19, 12),
(510, 20, 12),
(511, 21, 12),
(512, 22, 12),
(513, 17, 13),
(514, 18, 13),
(515, 19, 13),
(516, 20, 13),
(517, 21, 13),
(518, 22, 13),
(519, 23, 13),
(520, 17, 14),
(521, 18, 14),
(522, 19, 14),
(523, 20, 14),
(524, 21, 14),
(525, 22, 14),
(526, 23, 14),
(527, 27, 15),
(528, 27, 16),
(529, 27, 17);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Project Akhir PBD & PPW Darriel Markerizal', '70C, Jalan Inspeksi\r\nMenteng, Special Capital Region of Jakarta', 'support@corecommerce.com', '+62 21 73880820', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.545290631071!2d106.8441505!3d-6.1915426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f440b59fc3c7%3A0x2a47ae2bd9b60ac4!2sJl.%20Inspeksi%2C%20Cikini%2C%20Kec.%20Menteng%2C%20Kota%20Jakarta%20Pusat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2010330!5e0!3m2!1sid!2sid!4v1685765078593!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'support@corecommerce.com', '', 'Thank you for reaching out to us. We appreciate your email and will be in touch with you very soon.', 'Great news! Your password has been reset successfully. You can now proceed to log in and enjoy our services.', 4, 4, 5, 5, 5, 6, 8, 'CoreCommerce', 'online store, ecommerce', 'CoreCommerce', 'Welcome to CoreCommerce, where your e-commerce journey begins!', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', '', 'Discover Our Highlighted Products', 'Explore Our Handpicked Selection of Top Featured Products', 'Explore Our Newest Arrivals', 'Discover Our Freshly Added Products', 'Explore Our Bestselling Items', 'Discover the Hottest Products of the Season', 'Testimonials', 'Explore Customer Testimonials', 'testimonial.jpg', 'Latest Blog', 'Discover Our Latest Articles and News', 'Stay Updated with Exclusive Promotions and Discounts - Sign Up for Our Newsletter', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_cost`
--

CREATE TABLE `shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shipping_cost`
--

INSERT INTO `shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_cost_all`
--

CREATE TABLE `shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shipping_cost_all`
--

INSERT INTO `shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Discover Your Style: Unleash Your Inner Fashionista!', 'Elevate Your Wardrobe with Exquisite Women\'s Fashion - Unleash Your Inner Fashionista!', 'Shop Now', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', 'Elevate Your Tech : Explore the Future of Gadgets!', 'Explore cutting-edge technology and elevate your electronic experience with our premium gadget collection', 'Shop Now', '#', 'Center'),
(3, 'slider-3.jpg', 'Upgrade Your Style: Discover Men\'s Fashion Trends!', 'Step into a world of unparalleled style and sophistication. Explore our exclusive range of men\'s fashion, curated to enhance your individuality and make a lasting impression', 'Shop Now', '#', 'Center');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '2022-03-20', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '2022-03-20', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '2022-03-20', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '2022-03-20', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '2022-03-20', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1);

-- --------------------------------------------------------

--
-- Table structure for table `top_category`
--

CREATE TABLE `top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `top_category`
--

INSERT INTO `top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Men', 1),
(2, 'Women', 1),
(3, 'Kids', 1),
(4, 'Electronics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Structure for view `end_category_products`
--
DROP TABLE IF EXISTS `end_category_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `end_category_products`  AS SELECT `ec`.`ecat_name` AS `ecat_name`, count(`p`.`p_id`) AS `total_products` FROM (`end_category` `ec` left join `product` `p` on(`ec`.`ecat_id` = `p`.`ecat_id`)) GROUP BY `ec`.`ecat_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_details`
--
DROP TABLE IF EXISTS `product_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_details`  AS SELECT `p`.`p_id` AS `p_id`, `p`.`p_name` AS `p_name`, `p`.`p_old_price` AS `p_old_price`, `p`.`p_current_price` AS `p_current_price`, `p`.`p_qty` AS `p_qty`, `p`.`p_featured_photo` AS `p_featured_photo`, `p`.`p_description` AS `p_description`, `p`.`p_short_description` AS `p_short_description`, `p`.`p_feature` AS `p_feature`, `p`.`p_condition` AS `p_condition`, `p`.`p_return_policy` AS `p_return_policy`, `p`.`p_total_view` AS `p_total_view`, `p`.`p_is_featured` AS `p_is_featured`, `p`.`p_is_active` AS `p_is_active`, `p`.`ecat_id` AS `ecat_id`, `c`.`color_name` AS `color_name`, `s`.`size_name` AS `size_name` FROM ((((`product` `p` join `product_color` `pc` on(`p`.`p_id` = `pc`.`p_id`)) join `color` `c` on(`pc`.`color_id` = `c`.`color_id`)) join `product_size` `ps` on(`p`.`p_id` = `ps`.`p_id`)) join `size` `s` on(`ps`.`size_id` = `s`.`size_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_message`
--
ALTER TABLE `customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `end_category`
--
ALTER TABLE `end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `mid_category`
--
ALTER TABLE `mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photo`
--
ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_cost`
--
ALTER TABLE `shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `shipping_cost_all`
--
ALTER TABLE `shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `top_category`
--
ALTER TABLE `top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_message`
--
ALTER TABLE `customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `end_category`
--
ALTER TABLE `end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `mid_category`
--
ALTER TABLE `mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `product_photo`
--
ALTER TABLE `product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_cost`
--
ALTER TABLE `shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_cost_all`
--
ALTER TABLE `shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `top_category`
--
ALTER TABLE `top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
