-- Find all vehicles for a specific dealership
SELECT dealerships.dealership_id, vehicles.CarMakeModel, dealerships.DealershipName
FROM vehicles
JOIN dealerships
ON vehicles.dealership_id = dealerships.dealership_id;
