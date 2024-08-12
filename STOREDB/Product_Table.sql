CREATE TABLE `PRODUCT` (
  `P_ID` int(11) NOT NULL,
  `PNAME` varchar(20) DEFAULT NULL,
  `C_ID` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `PRODUCT` (`P_ID`, `PNAME`, `C_ID`, `PRICE`, `QUANTITY`) VALUES
(2, 'Smartphone', 101, 299, 50),
(4, 'Sofa', 102, 499, 20),
(5, 'Jacket', 103, 119, 40),
(6, 'Novel', 104, 15, 100),
(7, 'Tennis Racket', 105, 89, 25),
(8, 'Car Battery', 106, 120, 15);
