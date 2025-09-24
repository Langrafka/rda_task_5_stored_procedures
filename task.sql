USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT p.Name AS ProductName, pi.WarehouseAmount AS Amount
    FROM Products p
    JOIN ProductInventory pi ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = WarehouseID;
END //

-- Зміна роздільника назад
DELIMITER ;
