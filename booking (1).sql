-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 01:00 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(7) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL,
  `user` text NOT NULL,
  `img` text NOT NULL,
  `qty` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `title`, `details`, `price`, `category`, `user`, `img`, `qty`) VALUES
(1, '', '', '', '', 'ankitaambekar', '', 1),
(2, '', '', '', '', 'ankitaambekar', '', 1),
(3, '', '', '', '', 'ankitaambekar', '', 1),
(4, '', '', '', '', 'ankitaambekar', '', 1),
(5, '', '', '', '', 'ankitaambekar', '', 1),
(12, 'Mocha Frappuccino', 'Roast coffee blended with mocha sauce, coconut syrup, milk, and ice, and then topped with whipped cream, chocolate drizzle and toasted coconut flakes.', '330', '', 'ankitaambekar', '', 1),
(13, 'Mocha Frappuccino', 'Roast coffee blended with mocha sauce, coconut syrup, milk, and ice, and then topped with whipped cream, chocolate drizzle and toasted coconut flakes.', '330', '', 'ankitaambekar', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(7) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `title`, `details`, `price`, `category`, `img`) VALUES
(1, 'Mocha Frappuccino', 'Roast coffee blended with mocha sauce, coconut syrup, milk, and ice, and then topped with whipped cream, chocolate drizzle and toasted coconut flakes.', '330', 'coffee', ''),
(2, 'Dark Caramel Latte', 'A combination of creamy dark caramel sauce with steamed milk with signature espresso then finished off with whipped cream and a custardy, caramel drizzle.', '300', 'coffee', ''),
(3, 'Espresso Con Panna', 'The delicate dollop of whipped cream softens the rich and caramelly espresso flavours so exquisitely, you may choose to forego adding sugar altogether.', '120', 'coffee', ''),
(4, 'Tiramisu Latte', 'Tiramisu Latte is made with the signature espresso, freshly-steamed milk, creamy mascarpone flavor, and a dusting of rich cocoa espresso powder.', '170', 'coffee', ''),
(5, 'Americano', 'Often served in cappuccino cup.The espresso is added into hot water rather than all the water being flowed through coffee that would lead to over extraction.', '110', 'coffee', ''),
(6, 'French Coffee', 'Made by mixing dark roasted filter coffee (often prepared with French Press) and warm milk. Served in a bowl or a large coffee cup.', '160', 'coffee', ''),
(7, 'Vanilla Cream Cold Brew', 'A slow-steeped, super smooth icy-cold cup of coffee with naturally sweet undertones of refreshing citrus and soft chocolaty flavours.', '230', 'coffee', ''),
(8, 'Vegan Shake', 'It is creamy and chocolatey and totally delicious with over 20 grams of protein per serve! This vegan protein shake is so good you’ll barely believe it’s healthy too.', '120', 'coffee', ''),
(9, 'Chocolate Croissants', 'Croissants can contain similar amounts of saturated fat to a greasy fry-up complete with egg, bacon, sausage, bread and beans.', '150', 'food', ''),
(10, 'Blueberry Muffins', 'These easy, one-bowl, no-mixer Blueberry Muffins are moist, delicious, loaded with juicy blueberries and they rise up high, with beautiful domed tops!', '50', 'food', ''),
(11, 'Chilli Cheese Toast', 'Cheesy with this crispy toast topped with onions, tomatoes and capsicum, loaded with cheese and sprinkled with chilli flakes.', '90', 'food', ''),
(12, 'Crispy Veggie Wrap', 'An inviting mixture of cage-free scrambled eggs, black beans, and sous vide potatoes combined with the delicious flavors of Cotija cheese', '140', 'food', ''),
(13, 'Peppy Chicken Roll', 'Peppery chicken with crunchy juliennes of capsicum and red onion in a delicious Malabar egg paratha. Yes, that\'s how we roll.', '130', 'food', ''),
(14, 'Smoked Chick Sandwich', 'Succulent smoked chicken topped with the crunchy veggies and it served in a white bread which is topped with chipotle.', '130', 'food', ''),
(15, 'Munch-On Nachos', 'The crispiest of the corn chips are pampered with the salsa from the land of Tex-Mex. Munch hunger away!', '65', 'food', ''),
(16, 'Garlic Bread', 'Garlic and butter are the main ingredients of all garlic bread recipes. But this stuffed garlic bread recipe is unique for its tasty stuffing like corn and mozzarella cheese.', '70', 'food', ''),
(17, 'Blueberry Delight Cake', 'Blueberry Delight is a modern convenience dessert which has a graham-cracker-crust base and is filled with a blend of cream cheese or the vanilla pudding', '450', 'dessert', ''),
(18, 'Fudgy Brownie Pie', 'Fudge brownie pie is a phenomenal chocolate indulgence with all the flavor, texture, and decadence of a hot fudge brownie that’s so low-fuss that absolutely anyone can make it!', '200', 'dessert', ''),
(19, 'Mississippi Mud Pie', 'Mississippi mud pie is a chocolate-based dessert pie that a gooey chocolate sauce on the top of a crumbly chocolate crust. The pie is usually served with the ice cream.', '110', 'dessert', ''),
(20, 'Dutch Truffle Pastry', 'A chocolate truffle is a type of chocolate confectionery, traditionally made with a chocolate ganache centre coated in chocolate, cocoa powder, coconut, or chopped toasted nuts.', '60', 'dessert', ''),
(21, 'Cherry Bakewell Pudding', 'Bakewell pudding is an English dessert consisting of a flaky pastry base with a layer of sieved jam and topped with a filling made of egg and almond paste.', '200', 'dessert', ''),
(22, 'Red Velvet Cake', 'Red velvet cake is traditionally a red, red-brown, crimson or scarlet-colored chocolate layer cake, layered with ermine icing.', '550', 'dessert', ''),
(23, 'Manchestera Tart', 'Manchester tart is a traditional baked tart consisting of a shortcrust pastry shell, spread with raspberry jam, covered with a custard filling with coconut and a cherry.', '400', 'dessert', ''),
(24, 'Tiramisu', 'Tiramisu is a coffee-flavoured dessert which made of ladyfingers dipped in coffee, layered with a whipped mixture of eggs, sugar, cheese, flavoured with cocoa.', '90', 'dessert', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `indx` int(7) NOT NULL,
  `id` text NOT NULL,
  `user` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `dish` text NOT NULL,
  `price` text NOT NULL,
  `qty` int(5) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`indx`, `id`, `user`, `name`, `phone`, `address`, `date`, `time`, `dish`, `price`, `qty`, `order_time`) VALUES
(1, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Mocha Frappuccino', '330', 1, '2020-11-23 07:29:57'),
(2, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Mocha Frappuccino', '330', 1, '2020-11-23 07:29:57'),
(3, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Mocha Frappuccino', '330', 1, '2020-11-23 07:29:57'),
(4, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Mocha Frappuccino', '330', 1, '2020-11-23 07:29:57'),
(5, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Mocha Frappuccino', '330', 3, '2020-11-23 07:29:57'),
(6, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Vegan Shake', '120', 4, '2020-11-23 07:29:57'),
(7, '470933005', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '1998-08-06', 'dinner', 'Vanilla Cream Cold Brew', '230', 2, '2020-11-23 07:29:57'),
(8, '1286258334', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Garlic Bread', '70', 3, '2020-11-23 09:21:26'),
(9, '1286258334', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Garlic Bread', '70', 3, '2020-11-23 09:21:26'),
(10, '1286258334', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Mississippi Mud Pie', '110', 2, '2020-11-23 09:21:26'),
(11, '1286258334', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'French Coffee', '160', 1, '2020-11-23 09:21:26'),
(12, '1286258334', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Tiramisu Latte', '170', 1, '2020-11-23 09:21:26'),
(13, '263041217', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Manchestera Tart', '400', 4, '2020-11-23 14:04:09'),
(14, '263041217', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Manchestera Tart', '400', 2, '2020-11-23 14:04:09'),
(15, '263041217', 'umesh', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Tiramisu Latte', '170', 2, '2020-11-23 14:04:09'),
(16, '1658932203', 'abcd', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Tiramisu Latte', '170', 3, '2020-11-23 14:28:45'),
(17, '1658932203', 'abcd', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Blueberry Muffins', '50', 1, '2020-11-23 14:28:45'),
(18, '1658932203', 'abcd', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-23', 'lunch', 'Cherry Bakewell Pudding', '200', 2, '2020-11-23 14:28:45'),
(19, '5234211', 'abcd', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-25', 'lunch', 'Dark Caramel Latte', '300', 1, '2020-11-29 07:54:14'),
(20, '5234211', 'abcd', 'Ankita Ambekar', '09769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-11-25', 'lunch', 'Espresso Con Panna', '120', 2, '2020-11-29 07:54:14'),
(21, '1498912242', 'abcd', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Dark Caramel Latte', '300', 1, '2020-11-29 08:07:27'),
(22, '1498912242', 'abcd', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Dark Caramel Latte', '300', 2, '2020-11-29 08:07:27'),
(23, '1498912242', 'abcd', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Dark Caramel Latte', '300', 2, '2020-11-29 08:07:27'),
(24, '1498912242', 'abcd', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Tiramisu Latte', '170', 1, '2020-11-29 08:07:27'),
(25, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(26, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(27, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(28, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(29, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(30, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Mocha Frappuccino', '400', 1, '2020-11-29 08:08:26'),
(31, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Espresso Con Panna', '120', 1, '2020-11-29 08:08:26'),
(32, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Espresso Con Panna', '120', 1, '2020-11-29 08:08:26'),
(33, '1155859775', '', 'Ankita Ambekar', '+919769509751', '605/3, Kokan Samrat, Kokan Nagar, Jogeshwari East, Mumbai, 400060', '2020-12-01', '', 'Dark Caramel Latte', '300', 1, '2020-11-29 08:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `people` int(11) NOT NULL,
  `booking_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `name`, `email`, `date`, `time`, `people`, `booking_time`) VALUES
(1, 'Ankita Ambekar', 'aa@gmail.com', '2020-11-09', '2020-11-29 07:38:40', 1, '15:08'),
(2, 'Ankita Ambekar2', 'aa@gmail.com', '2020-11-09', '2020-11-29 07:40:16', 1, '15:08'),
(3, 'Ankita Ambekar2', 'aa@gmail.com', '2020-11-09', '2020-11-29 07:41:52', 1, '15:08'),
(4, 'abc', 'aa@gmail.com', '2020-11-09', '2020-11-29 07:43:18', 1, '15:08'),
(5, 'Ankita Ambekar', 'aa@gmail.com', '2020-12-02', '2020-11-29 08:04:22', 2, '13:38'),
(6, 'Ankita Ambekar', 'aa@gmail.com', '2020-12-10', '2020-11-29 08:06:26', 4, '13:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(7) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'ankitaambekar', 'ankitaambekar06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'umesh', 'umesh@gmail.com', '0ea11d2b39a5ebe46e1d5c126d5fb8ba'),
(3, 'abcd', 'abcd@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`indx`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `indx` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
