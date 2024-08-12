CREATE TABLE `CATEGORY` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(20) DEFAULT NULL,
  `CSTATUS` varchar(20) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `SUB` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `CATEGORY` (`C_ID`, `C_NAME`, `CSTATUS`, `DP`, `SUB`) VALUES
(102, 'Home Goods', 'Active', 25, 'Furniture'),
(103, 'Clothing', 'Inactive', 30, 'Apparel'),
(104, 'Books', 'Active', 10, 'Literature'),
(105, 'Sports', 'Active', 20, 'Equipment'),
(106, 'Automotive', 'Active', 40, 'Accessories');
