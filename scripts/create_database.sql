CREATE DATABASE ecommerceTask;

-- relational tables as fact table
DROP TABLE IF EXISTS `listoforders`;
CREATE TABLE `listoforders` (
    `Order ID` varchar(20) NOT NULL PRIMARY KEY, 
    `Order Date` TIMESTAMP,
    `Customer Name` varchar(30),
    `City` varchar(30), 
    `Country` varchar(25), 
    `Region` varchar(20),
    `Segment` varchar(20), 
    `Ship Date` TIMESTAMP, 
    `Ship Mode` varchar(20), 
    `State` text
)ENGINE=InnoDB DEFAULT CHARSET=latin1


-- Product table 
DROP TABLE IF EXISTS `orderbreakdown`;
CREATE TABLE `orderbreakdown`(
    `Order ID` varchar(20),
    `Product Name` text, 
    `Discount` float,
    `Sales` numeric, 
    `Profit` numeric, 
    `Quantity` Integer, 
    `Category` varchar(20),
    `Sub-Category` varchar(30)
)ENGINE=InnoDB DEFAULT CHARSET=latin1

-- target sales 
DROP TABLE IF EXISTS `salestargets`;
CREATE TABLE `SalesTargets`(
    `Month of Order Date` date NOT NULL,
    `Category` varchar(20),
    `Target` integer
)ENGINE=InnoDB DEFAULT CHARSET=latin1
