INSERT INTO vehicles (VIN, CarMakeModel, year, Mileage, SOLD)
VALUES ('VIN001ABC123DEF456', 'Toyota Camry', 2020, 35000.50, FALSE),
    ('VIN002XYZ789UVW012', 'Honda Civic', 2022, 18200.75, FALSE),
    ('VIN003MNO456PQR789', 'Ford F-150', 2018, 72100.20, FALSE),
    ('VIN004JKL012GHI345', 'Tesla Model 3', 2023, 8500.00, FALSE),
    ('VIN005CDE789FGH012', 'BMW X5', 2019, 41000.10, FALSE),
    ('VIN006QRS345TUV678', 'Nissan Rogue', 2021, 29800.40, FALSE),
    ('VIN007ABC987DEF654', 'Jeep Wrangler', 2017, 65400.90, FALSE),
    ('VIN008LMN210PQR321', 'Hyundai Elantra', 2024, 2100.30, FALSE),
    ('VIN009WXY098ZAB765', 'Chevrolet Silverado', 2016, 91500.80, FALSE),
    ('VIN010RST543UVW876', 'Subaru Forester', 2020, 48300.60, FALSE);
    
INSERT INTO sales_contracts (CustomerName, sale_amount, VIN)
VALUES ('Liam Gallagher', 150000.00, 'VIN001ABC123DEF456'),
    ('Olivia Chen', 25750.50, 'VIN002XYZ789UVW012'),
    ('Noah Khan', 75000.00, 'VIN003MNO456PQR789'),
    ('Isabella Rodriguez', 5200.25, 'VIN004JKL012GHI345'),
    ('James O\'Connell', 12300.00, 'VIN005CDE789FGH012');
    
INSERT INTO dealerships (DealershipName, Address, Phone)
VALUES ('Prestige Auto Palace', '123 Luxury Lane, Beverly Hills, CA 90210', '310 555-1234'),
    ('Citywide Motors', '456 Urban Ave, Downtown, NY 10001', '212 555-5678'),
    ('Family Ride Dealership', '789 Suburban St, Pleasantville, IL 60606', '708 555-9012'),
    ('Desert Horizon Auto', '101 Cactus Rd, Phoenix, AZ 85001', '602 555-3456'),
    ('Northern Lights Cars', '500 Aurora Blvd, Anchorage, AK 99501', '907 555-7890');
    
ALTER TABLE dealerships
DROP FOREIGN KEY dealerships_ibfk_1;
    
INSERT INTO inventory (dealership_id, VIN)
VALUES(26, 'VIN001ABC123DEF456'),
(27, 'VIN002XYZ789UVW012'),
(28, 'VIN003MNO456PQR789'),
(29, 'VIN004JKL012GHI345'),
(30, 'VIN005CDE789FGH012'),
(26, 'VIN006QRS345TUV678'),
(27, 'VIN007ABC987DEF654'),
(28, 'VIN008LMN210PQR321'),
(29, 'VIN009WXY098ZAB765'),
(30, 'VIN010RST543UVW876');
