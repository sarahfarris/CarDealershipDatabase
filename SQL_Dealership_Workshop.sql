CREATE TABLE dealerships (
dealership_id int auto_increment PRIMARY KEY,
CustomerName varchar(50),
address varchar(50),
phone varchar(12)
);

CREATE TABLE vehicles (
VIN varchar(20) PRIMARY KEY,
CarMakeModel varchar(25),
year int,
Mileage double,
SOLD boolean);

CREATE TABLE inventory (
dealership_id int NOT NULL,
VIN varchar(20) NOT NULL,
-- Google recommended to define unique constraint to ensure VIN is only once per dealership's inventory (?)
UNIQUE (dealership_id, VIN),
-- Defining foreign key constraints (?)
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);