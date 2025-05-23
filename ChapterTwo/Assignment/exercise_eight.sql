SELECT i.SKU, i.SKU_Description, w.WarehouseID
FROM cape_codd.INVENTORY i
JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID
WHERE manager = 'Lucille Smith';