SELECT WarehouseID, AVG(QuantityOnHand) AS Avg
FROM cape_codd.INVENTORY
WHERE warehouseID = (
SELECT WarehouseID
FROM cape_codd.WAREHOUSE
WHERE manager = 'Lucille Smith'
)
GROUP BY warehouseID;