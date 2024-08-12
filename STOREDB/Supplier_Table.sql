CREATE TABLE `SUPPLIER` (
  `S_ID` int(11) NOT NULL,
  `SNAME` varchar(20) DEFAULT NULL,
  `C_PERSON` varchar(20) DEFAULT NULL,
  `S_PHONE` varchar(20) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`S_ID`),
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `SUPPLIER_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `PRODUCT` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `SUPPLIER` (`S_ID`, `SNAME`, `C_PERSON`, `S_PHONE`, `P_ID`) VALUES
(1, 'APPLE', 'VARUN', '123456', 2),
(2, 'BestBuy', 'Alice', '234567', 4),
(3, 'Fashion Hub', 'Bob', '345678', 5),
(4, 'Book World', 'Charlie', '456789', 6),
(5, 'Sports Gear', 'Diana', '567890', 7);
