delimiter //

USE stom_gamestore;
Create procedure publisher(in publisherID INT)
BEGIN
    select from Publisher WHERE IDPublisher = publisherID;
END //

delimiter ;
