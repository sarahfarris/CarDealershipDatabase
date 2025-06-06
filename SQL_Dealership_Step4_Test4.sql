-- 4. Find the dealership where a certain car is located, by VIN
SELECT inventory.dealership_id, dealerships.DealershipName, inventory.VIN 
FROM inventory
JOIN dealerships
ON inventory.dealership_id = dealerships.dealership_id;