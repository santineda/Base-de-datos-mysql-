delimiter //

USE stom_gamestore;
Create procedure BuscarUser(in userID INT)
BEGIN
    select from Usuarios WHERE IDUser = userID;
END //

delimiter ;
