delimiter //

USE stom_gamestore;
Create procedure Eliminardlc(in dlcID INT)
BEGIN
    DELETE from DLCs WHERE ID_DLC = dlcID;
END //

delimiter ;
