delimiter //

USE stom_gamestore;
Create procedure buscarReserva(in reservaID INT)
BEGIN
    select from  Reservas WHERE IDReserva = reservaID;
END //

delimiter ;
