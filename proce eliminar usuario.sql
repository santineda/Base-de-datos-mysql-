delimiter //

USE stom_gamestore;
Create procedure EliminarUser(in userID INT)
BEGIN
    DELETE from Usuarios WHERE IDUser = userID;
END //

delimiter ;
