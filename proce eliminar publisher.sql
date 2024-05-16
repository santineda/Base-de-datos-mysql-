delimiter //

USE stom_gamestore;
Create procedure EliminarPublisher(in publisherID INT)
BEGIN
    DELETE from Publisher WHERE IDPublisher = publisherID;
END //

delimiter ;
