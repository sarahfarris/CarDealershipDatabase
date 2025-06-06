-- 6. Get all sales information for a specific dealer for a specific date range
SELECT dealerships.dealership_id, dealerships.DealershipName, sales_contracts.DateOfSale, sales_contracts.CustomerName, sales_contracts.sale_amount, sales_contracts.VIN
FROM dealerships
JOIN sales_contracts
ON dealerships.dealership_id = sales_contracts.dealership_id
WHERE DateOfSale BETWEEN "01/01/2018" AND "06/06/2025" AND DealershipName = "Northern Lights Cars";
