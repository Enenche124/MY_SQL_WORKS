SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity,w.WarehouseState
FROM cape_codd.INVENTORY i, WAREHOUSE w
WHERE i.WarehouseId = w.WarehouseID 
AND(WarehouseCity = 'Atlanta' OR WarehouseCity = 'Bangor' OR WarehouseCity = 'Chicago');
