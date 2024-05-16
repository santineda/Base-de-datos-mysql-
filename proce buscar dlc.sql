delimiter //

USE stom_gamestore;
Create procedure buscarDlc(in dlcID INT)
BEGIN
    select from  DLCs WHERE ID_DLC = dlcID;
END //

delimiter ;
