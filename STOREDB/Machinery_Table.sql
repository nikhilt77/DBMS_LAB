CREATE TABLE `MACHINERY` (
  `M_NO` int(11) NOT NULL,
  `M_NAME` varchar(20) DEFAULT NULL,
  `PURPOSE` varchar(20) DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  PRIMARY KEY (`M_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `MACHINERY` (`M_NO`, `M_NAME`, `PURPOSE`, `DURATION`, `PRICE`) VALUES
(1, 'Excavator', 'Construction', 120, 50000),
(2, 'Bulldozer', 'Earthmoving', 100, 60000),
(3, 'Crane', 'Lifting', 150, 80000),
(4, 'Concrete Mixer', 'Mixing Concrete', 80, 15000),
(5, 'Backhoe Loader', 'Digging', 90, 45000);
