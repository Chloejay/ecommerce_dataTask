CREATE DATABASE ecommerceTask;

--relational tables as fact table
CREATE TABLE `ListofOrders` (
    `Order ID` varchar(20), 
    `Order Date` timestamp,
    `Customer Name` varchar(30),
    `City` varchar(30), 
    `Country` varchar(25), 
    `Region` varchar(20),
    `Segement` varchar(20), 
    `Ship Date` timestamp, 
    `Ship Mode` varchar(20), 
    `State` text
)ENGINE=InnoDB DEFAULT CHARSET=latin1


CREATE TABLE `OrderBreakdown` (
    `Order ID` varchar(20),
    `Product Name` text, 
    `Discount` float,
    `Sales` numeric, 
    `Profit` numeric, 
    `Quantity` Integer, 
    `Category` varchar(20),
    `Sub-Category` varchar(30)
)ENGINE=InnoDB DEFAULT CHARSET=latin1


CREATE TABLE `SalesTargets`(
    `Month of Order Date` timestamp,
    `Category` varchar(20),
    `Target` integer
)ENGINE=InnoDB DEFAULT CHARSET=latin1
