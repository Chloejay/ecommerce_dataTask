-- Create tables
-- Split into multiple relational tables

CREATE OR REPLACE TABLE `orders` (
    `Order ID` VARCHAR(20) NOT NULL,
    `Order Date` DATETIME, 
    `Ship Date` DATETIME,
    `Ship Mode` VARCHAR(20),
    `Sate` Text
); 

CREATE OR REPLACE TABLE `customers` (
    `Customer Name` varchar(30) NOT NULL,
    `Order ID` VARCHAR(20),
    `City` varchar(30),
    `Country` varchar(25), 
    `Region` varchar(20),
    `Segment` varchar(20)
);

CREATE OR REPLACE TABLE `products` (
    `Order ID` varchar(20) NOT NULL,
    `Product Name` text, 
    `Discount` decimal(10, 0),
    `Sales` numeric, 
    `Profit` numeric, 
    `Quantity` Integer, 
    `Category` varchar(20),
    `Sub-Category` varchar(30)
);

-- Get Sales target and actual Sales table

-- most purchased product => best selling product 

-- most purchased by country 

--most purchased by city 

-- RMF model