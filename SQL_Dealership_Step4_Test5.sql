-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT dealerships.dealership_id, dealerships.DealershipName, vehicles.CarMakeModel
FROM vehicles
JOIN dealerships
ON dealerships.dealership_id = vehicles.dealership_id
WHERE vehicles.CarMakeModel LIKE "%tesla%";
