CREATE TABLE vehicles (
VIN varchar(20) PRIMARY KEY,
CarMakeModel varchar(25),
year int,
Mileage double,
SOLD boolean);


CREATE TABLE sales_contracts (
contract_id int auto_increment UNIQUE,
CustomerName varchar(50) PRIMARY KEY,
sale_amount double, -- I could add dealership ID
VIN varchar(20) NOT NULL, -- Foreign Key

-- Following template as above
UNIQUE (VIN),
-- Using same template as inventory table
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);


CREATE TABLE dealerships (
dealership_id int auto_increment PRIMARY KEY,
DealershipName varchar(50) NOT NULL, -- Creates error code when made Primary Key so I removed and made a foreign key -- UPDATED CustomerName to DealershipName, may create error
address varchar(50),
phone varchar(12)
);


CREATE TABLE inventory (
dealership_id int NOT NULL, -- Foreign Key
VIN varchar(20) NOT NULL, -- Foreign Key
-- Google recommended to define unique constraint to ensure VIN is only once per dealership's inventory (?)
UNIQUE (dealership_id, VIN),
-- Defining foreign key constraints (?)
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);






