SELECT CONCAT(SKU_Description, 'is located in', WarehouseCity) AS ItemLocation
FROM cape_codd.INVENTORY i 
JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseId;