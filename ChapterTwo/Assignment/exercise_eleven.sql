SELECT w.WarehouseID, AVG(QuantityOnHand) AS Avg  
FROM cape_codd.INVENTORY i
JOIN WAREHOUSE w ON i.warehouseID = w.warehouseID
WHERE Manager = 'Lucille Smith'
group by w.warehouseID;