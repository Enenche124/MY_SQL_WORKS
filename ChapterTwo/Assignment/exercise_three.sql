SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState
FROM cape_codd.INVENTORY i
JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID
WHERE w.WarehouseCity != 'Atlanta'
  AND w.WarehouseCity != 'Bangor'
  AND w.WarehouseCity != 'Chicago';
