SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity,w.WarehouseState
FROM cape_codd.INVENTORY i
JOIN WAREHOUSE w ON i.WarehouseId = w.WarehouseID 
WHERE w.WarehouseCity IN('Atlanta', 'Bangor', 'Chicago');
